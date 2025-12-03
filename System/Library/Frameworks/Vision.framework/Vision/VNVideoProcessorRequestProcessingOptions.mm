@interface VNVideoProcessorRequestProcessingOptions
- (BOOL)isEqual:(id)equal;
- (id)_createVCPVideoProcessorRequestConfiguration;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation VNVideoProcessorRequestProcessingOptions

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  if (v4)
  {
    cadence = [(VNVideoProcessorRequestProcessingOptions *)self cadence];
    [v4 setCadence:cadence];
  }

  return v4;
}

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
      cadence = [(VNVideoProcessorRequestProcessingOptions *)self cadence];
      cadence2 = [(VNVideoProcessorRequestProcessingOptions *)v5 cadence];

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
  cadence = [(VNVideoProcessorRequestProcessingOptions *)self cadence];
  v3 = [cadence hash];

  return v3;
}

- (id)_createVCPVideoProcessorRequestConfiguration
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  cadence = [(VNVideoProcessorRequestProcessingOptions *)self cadence];
  [cadence populateVCPVideoProcessorRequestConfiguration:v3];

  return v3;
}

@end