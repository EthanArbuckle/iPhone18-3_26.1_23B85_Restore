@interface BKSMutableHIDUISensorCharacteristics
+ (id)new;
- (BKSMutableHIDUISensorCharacteristics)init;
@end

@implementation BKSMutableHIDUISensorCharacteristics

- (BKSMutableHIDUISensorCharacteristics)init
{
  v3.receiver = self;
  v3.super_class = BKSMutableHIDUISensorCharacteristics;
  return [(BKSHIDUISensorCharacteristics *)&v3 _init];
}

+ (id)new
{
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS___BKSMutableHIDUISensorCharacteristics;
  return [objc_msgSendSuper2(&v3 alloc)];
}

@end