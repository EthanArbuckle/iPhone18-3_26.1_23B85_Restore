@interface _LABKDeviceDescriptor
+ (id)deviceDescriptorForType:(int64_t)type;
@end

@implementation _LABKDeviceDescriptor

+ (id)deviceDescriptorForType:(int64_t)type
{
  v4 = objc_alloc_init(_LABKDeviceDescriptor);
  v4->_type = type;

  return v4;
}

@end