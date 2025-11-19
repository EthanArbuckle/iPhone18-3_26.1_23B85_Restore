@interface BKCapturedCoverEffectsEnvironment
+ (id)newCapturedEnvironment:(id)a3;
@end

@implementation BKCapturedCoverEffectsEnvironment

+ (id)newCapturedEnvironment:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = a3;
  v4 = objc_alloc_init(BKCapturedCoverEffectsEnvironment);
  -[BKCapturedCoverEffectsEnvironment setCoverEffectsContent:](v4, "setCoverEffectsContent:", [v3 coverEffectsContent]);
  -[BKCapturedCoverEffectsEnvironment setCoverEffectsNightMode:](v4, "setCoverEffectsNightMode:", [v3 coverEffectsNightMode]);
  v5 = [v3 coverEffectRTLOverride];

  [(BKCapturedCoverEffectsEnvironment *)v4 setCoverEffectRTLOverride:v5];
  return v4;
}

@end