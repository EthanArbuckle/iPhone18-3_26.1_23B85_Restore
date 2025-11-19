@interface VNVideoProcessorRequestProcessingOptions
- (BOOL)isEqual:(id)a3;
- (id)_createVCPVideoProcessorRequestConfiguration;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation VNVideoProcessorRequestProcessingOptions

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  if (v4)
  {
    v5 = [(VNVideoProcessorRequestProcessingOptions *)self cadence];
    [v4 setCadence:v5];
  }

  return v4;
}

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
      v6 = [(VNVideoProcessorRequestProcessingOptions *)self cadence];
      v7 = [(VNVideoProcessorRequestProcessingOptions *)v5 cadence];

      v8 = VisionCoreEqualOrNilObjects();
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
  v2 = [(VNVideoProcessorRequestProcessingOptions *)self cadence];
  v3 = [v2 hash];

  return v3;
}

- (id)_createVCPVideoProcessorRequestConfiguration
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(VNVideoProcessorRequestProcessingOptions *)self cadence];
  [v4 populateVCPVideoProcessorRequestConfiguration:v3];

  return v3;
}

@end