@interface ATXHeroAndClipEventSamplers
+ (id)debugSampler:(id)sampler;
+ (id)defaultSampler;
@end

@implementation ATXHeroAndClipEventSamplers

+ (id)defaultSampler
{
  v2 = objc_opt_new();

  return v2;
}

+ (id)debugSampler:(id)sampler
{
  samplerCopy = sampler;
  v4 = [[ATXHeroAndClipDebugSampler alloc] initWithSampleIndices:samplerCopy];

  return v4;
}

@end