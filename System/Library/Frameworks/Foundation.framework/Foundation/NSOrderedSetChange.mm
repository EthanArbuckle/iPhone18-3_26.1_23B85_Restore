@interface NSOrderedSetChange
+ (id)allocWithZone:(_NSZone *)a3;
- (NSOrderedSetChange)initWithType:(unint64_t)a3 sourceIndex:(unint64_t)a4 destinationIndex:(unint64_t)a5 value:(id)a6;
@end

@implementation NSOrderedSetChange

+ (id)allocWithZone:(_NSZone *)a3
{
  v5 = *MEMORY[0x1E69E9840];
  if (NSOrderedSetChange == a1)
  {

    return [(NSOrderedSetChange *)NSConcreteOrderedSetChange allocWithZone:a3];
  }

  else
  {
    v4.receiver = a1;
    v4.super_class = &OBJC_METACLASS___NSOrderedSetChange;
    return objc_msgSendSuper2(&v4, sel_allocWithZone_, a3);
  }
}

- (NSOrderedSetChange)initWithType:(unint64_t)a3 sourceIndex:(unint64_t)a4 destinationIndex:(unint64_t)a5 value:(id)a6
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = NSOrderedSetChange;
  return [(NSOrderedSetChange *)&v7 init:a3];
}

@end