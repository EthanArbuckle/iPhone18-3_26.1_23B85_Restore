@interface NSFileSecurity
+ (NSFileSecurity)allocWithZone:(_NSZone *)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation NSFileSecurity

+ (NSFileSecurity)allocWithZone:(_NSZone *)a3
{
  v7 = *MEMORY[0x1E69E9840];
  if (NSFileSecurity == a1)
  {
    v5 = *MEMORY[0x1E69E9840];

    return +[__NSPlaceholderFileSecurity immutablePlaceholder];
  }

  else
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___NSFileSecurity;
    result = objc_msgSendSuper2(&v6, sel_allocWithZone_, a3);
    v4 = *MEMORY[0x1E69E9840];
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [objc_opt_class() allocWithZone:a3];

  return [v3 init];
}

@end