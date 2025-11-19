@interface NSObservation
+ (id)allocWithZone:(_NSZone *)a3;
@end

@implementation NSObservation

+ (id)allocWithZone:(_NSZone *)a3
{
  v5 = *MEMORY[0x1E69E9840];
  if (NSObservation == a1)
  {
    return &___placeholderObservation;
  }

  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___NSObservation;
  return objc_msgSendSuper2(&v4, sel_allocWithZone_, a3);
}

@end