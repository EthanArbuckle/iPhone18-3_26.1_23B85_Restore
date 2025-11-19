@interface BKSHIDEventCollectionDescriptor
- (BKSHIDEventCollectionDescriptor)init;
@end

@implementation BKSHIDEventCollectionDescriptor

- (BKSHIDEventCollectionDescriptor)init
{
  v3.receiver = self;
  v3.super_class = BKSHIDEventCollectionDescriptor;
  return [(BKSHIDEventDescriptor *)&v3 _initWithEventType:37];
}

@end