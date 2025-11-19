@interface BKSHIDEventVendorDefinedDescriptor
- (BKSHIDEventVendorDefinedDescriptor)init;
@end

@implementation BKSHIDEventVendorDefinedDescriptor

- (BKSHIDEventVendorDefinedDescriptor)init
{
  v3.receiver = self;
  v3.super_class = BKSHIDEventVendorDefinedDescriptor;
  return [(BKSHIDEventDescriptor *)&v3 _initWithEventType:1];
}

@end