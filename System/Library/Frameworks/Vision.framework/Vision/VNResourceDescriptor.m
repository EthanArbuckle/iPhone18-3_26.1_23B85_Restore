@interface VNResourceDescriptor
- (id)_init;
@end

@implementation VNResourceDescriptor

- (id)_init
{
  v3.receiver = self;
  v3.super_class = VNResourceDescriptor;
  return [(VNResourceDescriptor *)&v3 init];
}

@end