@interface NSSetChange
+ (id)allocWithZone:(_NSZone *)zone;
- (NSSetChange)initWithType:(unint64_t)type object:(id)object;
@end

@implementation NSSetChange

+ (id)allocWithZone:(_NSZone *)zone
{
  v5 = *MEMORY[0x1E69E9840];
  if (NSSetChange == self)
  {

    return [(NSSetChange *)NSConcreteSetChange allocWithZone:zone];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = &OBJC_METACLASS___NSSetChange;
    return objc_msgSendSuper2(&v4, sel_allocWithZone_, zone);
  }
}

- (NSSetChange)initWithType:(unint64_t)type object:(id)object
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = NSSetChange;
  return [(NSSetChange *)&v5 init:type];
}

@end