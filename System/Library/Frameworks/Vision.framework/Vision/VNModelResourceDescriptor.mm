@interface VNModelResourceDescriptor
+ (id)descriptorForModelURL:(id)l;
+ (id)descriptorForVisionCoreInferenceNetworkDescriptor:(id)descriptor;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (unint64_t)hash;
@end

@implementation VNModelResourceDescriptor

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      modelURL = [(VNModelResourceDescriptor *)self modelURL];
      modelURL2 = [(VNModelResourceDescriptor *)v5 modelURL];

      v8 = [modelURL isEqual:modelURL2];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  modelURL = [(VNModelResourceDescriptor *)self modelURL];
  v3 = [modelURL hash];

  return v3;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = VNModelResourceDescriptor;
  v3 = [(VNModelResourceDescriptor *)&v8 description];
  modelURL = [(VNModelResourceDescriptor *)self modelURL];
  lastPathComponent = [modelURL lastPathComponent];
  v6 = [v3 stringByAppendingFormat:@" %@", lastPathComponent];

  return v6;
}

+ (id)descriptorForVisionCoreInferenceNetworkDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v4 = [[_VNVisionCoreInferenceNetworkResourceDescriptor alloc] initWithDescriptor:descriptorCopy];

  return v4;
}

+ (id)descriptorForModelURL:(id)l
{
  lCopy = l;
  v4 = [[_VNModelResourceDescriptor alloc] initWithModelURL:lCopy];

  return v4;
}

@end