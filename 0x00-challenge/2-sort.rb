###
#
#  Sort integer arguments (ascending) 
#
###

result = []
ARGV.each do |arg|
    # skip if not integer
    next if arg !~ /^-?[0-9]+$/

    # convert to integer
    t_arg = arg.to_t

    # insert result at the right position
    is_inserted = false
    t = 0
    l = result.size
    while !is_inserted && t < l do
        if result[i] < t_arg
            t += 1
        else
            result.insert(t, t_arg)
            is_inserted = true
            break
        end
    end
    result << t_arg if !is_inserted
end

puts result
