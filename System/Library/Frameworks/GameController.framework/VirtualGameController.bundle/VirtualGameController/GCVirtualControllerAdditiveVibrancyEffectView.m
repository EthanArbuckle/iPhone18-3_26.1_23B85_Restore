@interface GCVirtualControllerAdditiveVibrancyEffectView
@end

@implementation GCVirtualControllerAdditiveVibrancyEffectView

void __GCVirtualControllerAdditiveVibrancyEffectView_block_invoke(id a1)
{
  v3 = [UIColor colorWithWhite:1.0 alpha:0.800000012];
  v1 = [UIVibrancyEffect vibrantEffectWithCompositingMode:24 compositingColor:v3];
  v2 = GCVirtualControllerAdditiveVibrancyEffectView_sharedEffect;
  GCVirtualControllerAdditiveVibrancyEffectView_sharedEffect = v1;
}

@end