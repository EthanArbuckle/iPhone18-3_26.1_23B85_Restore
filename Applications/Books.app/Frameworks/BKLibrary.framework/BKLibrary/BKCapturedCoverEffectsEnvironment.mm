@interface BKCapturedCoverEffectsEnvironment
+ (id)newCapturedEnvironment:(id)environment;
@end

@implementation BKCapturedCoverEffectsEnvironment

+ (id)newCapturedEnvironment:(id)environment
{
  if (!environment)
  {
    return 0;
  }

  environmentCopy = environment;
  v4 = objc_alloc_init(BKCapturedCoverEffectsEnvironment);
  -[BKCapturedCoverEffectsEnvironment setCoverEffectsContent:](v4, "setCoverEffectsContent:", [environmentCopy coverEffectsContent]);
  -[BKCapturedCoverEffectsEnvironment setCoverEffectsNightMode:](v4, "setCoverEffectsNightMode:", [environmentCopy coverEffectsNightMode]);
  coverEffectRTLOverride = [environmentCopy coverEffectRTLOverride];

  [(BKCapturedCoverEffectsEnvironment *)v4 setCoverEffectRTLOverride:coverEffectRTLOverride];
  return v4;
}

@end