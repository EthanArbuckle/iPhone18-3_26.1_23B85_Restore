@interface ABPKMLModelConfiguration2DBreakthrough
- (ABPKMLModelConfiguration2DBreakthrough)init;
- (CGSize)inputDimensions;
- (CGSize)inputDimensionsForABPKDeviceOrientation:(int64_t)a3;
- (id)configStringForABPKDeviceOrientation:(int64_t)a3;
- (id)inputTensorNames;
- (id)outputTensorNames;
@end

@implementation ABPKMLModelConfiguration2DBreakthrough

- (ABPKMLModelConfiguration2DBreakthrough)init
{
  v8.receiver = self;
  v8.super_class = ABPKMLModelConfiguration2DBreakthrough;
  v2 = [(ABPKMLModelConfiguration *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:kABPK2DBreakthroughNetworkName];
    v5 = ABPKMLModelPath(v3, v4, 1);
    mlModelPath = v2->_mlModelPath;
    v2->_mlModelPath = v5;
  }

  return v2;
}

- (id)inputTensorNames
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = kABPK2DBreakthroughInputTensorName;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)outputTensorNames
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = kABPK2DBreakthroughOutputHeatmapsTensorName;
  v5[1] = kABPK2DBreakthroughOutputAffinityMapsTensorName;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (CGSize)inputDimensions
{
  [(ABPKMLModelConfiguration2DBreakthrough *)self inputDimensionsForABPKDeviceOrientation:3];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)inputDimensionsForABPKDeviceOrientation:(int64_t)a3
{
  if (ABPKDeviceOrientationIsLandscape(a3))
  {
    v4 = 384.0;
    v5 = 288.0;
  }

  else
  {
    IsPortrait = ABPKDeviceOrientationIsPortrait(a3);
    if (IsPortrait)
    {
      v5 = 384.0;
    }

    else
    {
      v5 = 0.0;
    }

    v4 = 288.0;
    if (!IsPortrait)
    {
      v4 = 0.0;
    }
  }

  result.height = v5;
  result.width = v4;
  return result;
}

- (id)configStringForABPKDeviceOrientation:(int64_t)a3
{
  if (ABPKDeviceOrientationIsLandscape(a3))
  {
    v4 = &kABPK2DBreakthroughLandscapeConfigMode;
LABEL_5:
    v5 = *v4;
    goto LABEL_7;
  }

  if (ABPKDeviceOrientationIsPortrait(a3))
  {
    v4 = kABPK2DBreakthroughPortraitConfigMode;
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

@end