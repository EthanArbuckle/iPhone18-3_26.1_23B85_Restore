@interface MKVibrantHairlineStyleProvider
- (id)vibrancyEffectForTraitCollection:(id)a3;
@end

@implementation MKVibrantHairlineStyleProvider

- (id)vibrancyEffectForTraitCollection:(id)a3
{
  v3 = [MEMORY[0x1E69DC730] effectWithStyle:1100];
  v4 = [MEMORY[0x1E69DD248] effectForBlurEffect:v3 style:7];

  return v4;
}

@end