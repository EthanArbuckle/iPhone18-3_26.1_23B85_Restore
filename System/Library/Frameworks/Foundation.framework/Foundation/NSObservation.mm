@interface NSObservation
+ (id)allocWithZone:(_NSZone *)zone;
@end

@implementation NSObservation

+ (id)allocWithZone:(_NSZone *)zone
{
  v5 = *MEMORY[0x1E69E9840];
  if (NSObservation == self)
  {
    return &___placeholderObservation;
  }

  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___NSObservation;
  return objc_msgSendSuper2(&v4, sel_allocWithZone_, zone);
}

@end