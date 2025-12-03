@interface VCRecommendedNetworkSettings
- (VCRecommendedNetworkSettings)initWithTargetBitrateCap:(unsigned int)cap;
- (void)dealloc;
@end

@implementation VCRecommendedNetworkSettings

- (VCRecommendedNetworkSettings)initWithTargetBitrateCap:(unsigned int)cap
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = VCRecommendedNetworkSettings;
  result = [(VCRecommendedNetworkSettings *)&v5 init];
  if (result)
  {
    result->_targetBitrateCap = cap;
  }

  return result;
}

- (void)dealloc
{
  v3 = *MEMORY[0x1E69E9840];
  v2.receiver = self;
  v2.super_class = VCRecommendedNetworkSettings;
  [(VCRecommendedNetworkSettings *)&v2 dealloc];
}

@end