@interface _VNVisionCoreInferenceNetworkResourceDescriptor
- (_VNVisionCoreInferenceNetworkResourceDescriptor)initWithDescriptor:(id)a3;
@end

@implementation _VNVisionCoreInferenceNetworkResourceDescriptor

- (_VNVisionCoreInferenceNetworkResourceDescriptor)initWithDescriptor:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _VNVisionCoreInferenceNetworkResourceDescriptor;
  v6 = [(VNResourceDescriptor *)&v9 _init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 1, a3);
  }

  return v7;
}

@end