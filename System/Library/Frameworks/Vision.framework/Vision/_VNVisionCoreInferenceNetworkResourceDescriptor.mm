@interface _VNVisionCoreInferenceNetworkResourceDescriptor
- (_VNVisionCoreInferenceNetworkResourceDescriptor)initWithDescriptor:(id)descriptor;
@end

@implementation _VNVisionCoreInferenceNetworkResourceDescriptor

- (_VNVisionCoreInferenceNetworkResourceDescriptor)initWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v9.receiver = self;
  v9.super_class = _VNVisionCoreInferenceNetworkResourceDescriptor;
  _init = [(VNResourceDescriptor *)&v9 _init];
  v7 = _init;
  if (_init)
  {
    objc_storeStrong(_init + 1, descriptor);
  }

  return v7;
}

@end