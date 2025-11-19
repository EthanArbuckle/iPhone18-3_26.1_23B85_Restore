@interface GCVirtualControllerSaturationVibrancyEffect
@end

@implementation GCVirtualControllerSaturationVibrancyEffect

void __GCVirtualControllerSaturationVibrancyEffect_block_invoke(id a1)
{
  v3[0] = xmmword_A430;
  v3[1] = xmmword_A440;
  v3[2] = xmmword_A450;
  v3[3] = xmmword_A460;
  v3[4] = xmmword_A470;
  v1 = [UIVibrancyEffect _vibrantEffectWithCAColorMatrix:v3 alpha:0.5];
  v2 = GCVirtualControllerSaturationVibrancyEffect_sharedEffect;
  GCVirtualControllerSaturationVibrancyEffect_sharedEffect = v1;
}

@end