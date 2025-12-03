@interface NTKUltraCubeContentEffect
+ (id)contentEffectWithColorEffect:(unint64_t)effect colorPalette:(id)palette;
@end

@implementation NTKUltraCubeContentEffect

+ (id)contentEffectWithColorEffect:(unint64_t)effect colorPalette:(id)palette
{
  paletteCopy = palette;
  v6 = objc_alloc_init(NTKUltraCubeContentEffect);
  [(NTKUltraCubeContentEffect *)v6 setColorEffect:effect];
  [(NTKUltraCubeContentEffect *)v6 setPalette:paletteCopy];

  return v6;
}

@end