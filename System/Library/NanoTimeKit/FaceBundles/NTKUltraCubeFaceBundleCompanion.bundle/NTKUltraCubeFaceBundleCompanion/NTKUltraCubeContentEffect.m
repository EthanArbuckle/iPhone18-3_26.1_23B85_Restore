@interface NTKUltraCubeContentEffect
+ (id)contentEffectWithColorEffect:(unint64_t)a3 colorPalette:(id)a4;
@end

@implementation NTKUltraCubeContentEffect

+ (id)contentEffectWithColorEffect:(unint64_t)a3 colorPalette:(id)a4
{
  v5 = a4;
  v6 = objc_alloc_init(NTKUltraCubeContentEffect);
  [(NTKUltraCubeContentEffect *)v6 setColorEffect:a3];
  [(NTKUltraCubeContentEffect *)v6 setPalette:v5];

  return v6;
}

@end