@interface MTLBufferLayoutDescriptorInternal
- (MTLBufferLayoutDescriptorInternal)init;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation MTLBufferLayoutDescriptorInternal

- (MTLBufferLayoutDescriptorInternal)init
{
  v3.receiver = self;
  v3.super_class = MTLBufferLayoutDescriptorInternal;
  result = [(MTLBufferLayoutDescriptorInternal *)&v3 init];
  if (result)
  {
    result->_stride = 0;
    result->_stepFunction = 1;
    result->_instanceStepRate = 1;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(result + 1) = self->_stride;
  *(result + 2) = self->_stepFunction;
  *(result + 3) = self->_instanceStepRate;
  return result;
}

@end