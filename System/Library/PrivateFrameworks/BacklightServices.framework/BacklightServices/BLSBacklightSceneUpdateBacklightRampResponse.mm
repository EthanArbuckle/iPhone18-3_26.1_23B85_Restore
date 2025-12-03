@interface BLSBacklightSceneUpdateBacklightRampResponse
- (BLSBacklightSceneUpdateBacklightRampResponse)initWithRampDuration:(double)duration;
- (double)rampDuration;
@end

@implementation BLSBacklightSceneUpdateBacklightRampResponse

- (BLSBacklightSceneUpdateBacklightRampResponse)initWithRampDuration:(double)duration
{
  v5 = objc_alloc_init(MEMORY[0x277CF0C80]);
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:duration];
  [v5 setObject:v6 forSetting:0];

  v9.receiver = self;
  v9.super_class = BLSBacklightSceneUpdateBacklightRampResponse;
  v7 = [(BLSBacklightSceneUpdateBacklightRampResponse *)&v9 initWithInfo:v5 error:0];

  return v7;
}

- (double)rampDuration
{
  info = [(BLSBacklightSceneUpdateBacklightRampResponse *)self info];
  v3 = [info objectForSetting:0];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

@end