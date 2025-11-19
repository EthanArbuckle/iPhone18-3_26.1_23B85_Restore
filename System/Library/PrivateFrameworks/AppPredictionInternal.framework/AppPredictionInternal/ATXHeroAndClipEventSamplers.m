@interface ATXHeroAndClipEventSamplers
+ (id)debugSampler:(id)a3;
+ (id)defaultSampler;
@end

@implementation ATXHeroAndClipEventSamplers

+ (id)defaultSampler
{
  v2 = objc_opt_new();

  return v2;
}

+ (id)debugSampler:(id)a3
{
  v3 = a3;
  v4 = [[ATXHeroAndClipDebugSampler alloc] initWithSampleIndices:v3];

  return v4;
}

@end