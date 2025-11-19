@interface NTKAstronomyFaceBundle
- (id)defaultFaceForDevice:(id)a3;
@end

@implementation NTKAstronomyFaceBundle

- (id)defaultFaceForDevice:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() identifier];
  v5 = [objc_opt_class() analyticsIdentifier];
  v6 = [NTKAstronomyFace bundledFaceWithIdentifier:v4 analyticsIdentifier:v5 forDevice:v3 initCustomization:0];

  return v6;
}

@end