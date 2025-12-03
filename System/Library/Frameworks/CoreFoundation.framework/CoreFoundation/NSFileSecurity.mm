@interface NSFileSecurity
+ (NSFileSecurity)allocWithZone:(_NSZone *)zone;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation NSFileSecurity

+ (NSFileSecurity)allocWithZone:(_NSZone *)zone
{
  v7 = *MEMORY[0x1E69E9840];
  if (NSFileSecurity == self)
  {
    v5 = *MEMORY[0x1E69E9840];

    return +[__NSPlaceholderFileSecurity immutablePlaceholder];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___NSFileSecurity;
    result = objc_msgSendSuper2(&v6, sel_allocWithZone_, zone);
    v4 = *MEMORY[0x1E69E9840];
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [objc_opt_class() allocWithZone:zone];

  return [v3 init];
}

@end