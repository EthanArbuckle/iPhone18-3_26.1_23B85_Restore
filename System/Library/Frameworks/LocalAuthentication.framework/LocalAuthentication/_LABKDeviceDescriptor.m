@interface _LABKDeviceDescriptor
+ (id)deviceDescriptorForType:(int64_t)a3;
@end

@implementation _LABKDeviceDescriptor

+ (id)deviceDescriptorForType:(int64_t)a3
{
  v4 = objc_alloc_init(_LABKDeviceDescriptor);
  v4->_type = a3;

  return v4;
}

@end