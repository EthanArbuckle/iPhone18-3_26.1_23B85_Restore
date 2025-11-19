@interface NSSetChange
+ (id)allocWithZone:(_NSZone *)a3;
- (NSSetChange)initWithType:(unint64_t)a3 object:(id)a4;
@end

@implementation NSSetChange

+ (id)allocWithZone:(_NSZone *)a3
{
  v5 = *MEMORY[0x1E69E9840];
  if (NSSetChange == a1)
  {

    return [(NSSetChange *)NSConcreteSetChange allocWithZone:a3];
  }

  else
  {
    v4.receiver = a1;
    v4.super_class = &OBJC_METACLASS___NSSetChange;
    return objc_msgSendSuper2(&v4, sel_allocWithZone_, a3);
  }
}

- (NSSetChange)initWithType:(unint64_t)a3 object:(id)a4
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = NSSetChange;
  return [(NSSetChange *)&v5 init:a3];
}

@end