@interface NSArrayChange
+ (id)allocWithZone:(_NSZone *)zone;
- (NSArrayChange)initWithType:(unint64_t)type sourceIndex:(unint64_t)index destinationIndex:(unint64_t)destinationIndex value:(id)value;
@end

@implementation NSArrayChange

+ (id)allocWithZone:(_NSZone *)zone
{
  v5 = *MEMORY[0x1E69E9840];
  if (NSArrayChange == self)
  {

    return [(NSArrayChange *)NSConcreteArrayChange allocWithZone:zone];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = &OBJC_METACLASS___NSArrayChange;
    return objc_msgSendSuper2(&v4, sel_allocWithZone_, zone);
  }
}

- (NSArrayChange)initWithType:(unint64_t)type sourceIndex:(unint64_t)index destinationIndex:(unint64_t)destinationIndex value:(id)value
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = NSArrayChange;
  return [(NSArrayChange *)&v7 init:type];
}

@end