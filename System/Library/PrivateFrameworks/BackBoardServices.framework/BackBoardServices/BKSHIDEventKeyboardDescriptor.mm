@interface BKSHIDEventKeyboardDescriptor
- (BKSHIDEventKeyboardDescriptor)init;
@end

@implementation BKSHIDEventKeyboardDescriptor

- (BKSHIDEventKeyboardDescriptor)init
{
  v3.receiver = self;
  v3.super_class = BKSHIDEventKeyboardDescriptor;
  return [(BKSHIDEventDescriptor *)&v3 _initWithEventType:3];
}

@end