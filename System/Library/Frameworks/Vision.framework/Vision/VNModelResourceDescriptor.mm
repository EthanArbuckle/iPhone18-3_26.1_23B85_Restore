@interface VNModelResourceDescriptor
+ (id)descriptorForModelURL:(id)a3;
+ (id)descriptorForVisionCoreInferenceNetworkDescriptor:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation VNModelResourceDescriptor

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(VNModelResourceDescriptor *)self modelURL];
      v7 = [(VNModelResourceDescriptor *)v5 modelURL];

      v8 = [v6 isEqual:v7];
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
  v2 = [(VNModelResourceDescriptor *)self modelURL];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = VNModelResourceDescriptor;
  v3 = [(VNModelResourceDescriptor *)&v8 description];
  v4 = [(VNModelResourceDescriptor *)self modelURL];
  v5 = [v4 lastPathComponent];
  v6 = [v3 stringByAppendingFormat:@" %@", v5];

  return v6;
}

+ (id)descriptorForVisionCoreInferenceNetworkDescriptor:(id)a3
{
  v3 = a3;
  v4 = [[_VNVisionCoreInferenceNetworkResourceDescriptor alloc] initWithDescriptor:v3];

  return v4;
}

+ (id)descriptorForModelURL:(id)a3
{
  v3 = a3;
  v4 = [[_VNModelResourceDescriptor alloc] initWithModelURL:v3];

  return v4;
}

@end