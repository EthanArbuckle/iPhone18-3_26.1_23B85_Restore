@interface BLSBacklightSceneUpdateBacklightRampResponse
- (BLSBacklightSceneUpdateBacklightRampResponse)initWithRampDuration:(double)a3;
- (double)rampDuration;
@end

@implementation BLSBacklightSceneUpdateBacklightRampResponse

- (BLSBacklightSceneUpdateBacklightRampResponse)initWithRampDuration:(double)a3
{
  v5 = objc_alloc_init(MEMORY[0x277CF0C80]);
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [v5 setObject:v6 forSetting:0];

  v9.receiver = self;
  v9.super_class = BLSBacklightSceneUpdateBacklightRampResponse;
  v7 = [(BLSBacklightSceneUpdateBacklightRampResponse *)&v9 initWithInfo:v5 error:0];

  return v7;
}

- (double)rampDuration
{
  v2 = [(BLSBacklightSceneUpdateBacklightRampResponse *)self info];
  v3 = [v2 objectForSetting:0];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

@end