@interface NSOrderedSetChange
+ (id)allocWithZone:(_NSZone *)zone;
- (NSOrderedSetChange)initWithType:(unint64_t)type sourceIndex:(unint64_t)index destinationIndex:(unint64_t)destinationIndex value:(id)value;
@end

@implementation NSOrderedSetChange

+ (id)allocWithZone:(_NSZone *)zone
{
  v5 = *MEMORY[0x1E69E9840];
  if (NSOrderedSetChange == self)
  {

    return [(NSOrderedSetChange *)NSConcreteOrderedSetChange allocWithZone:zone];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = &OBJC_METACLASS___NSOrderedSetChange;
    return objc_msgSendSuper2(&v4, sel_allocWithZone_, zone);
  }
}

- (NSOrderedSetChange)initWithType:(unint64_t)type sourceIndex:(unint64_t)index destinationIndex:(unint64_t)destinationIndex value:(id)value
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = NSOrderedSetChange;
  return [(NSOrderedSetChange *)&v7 init:type];
}

@end