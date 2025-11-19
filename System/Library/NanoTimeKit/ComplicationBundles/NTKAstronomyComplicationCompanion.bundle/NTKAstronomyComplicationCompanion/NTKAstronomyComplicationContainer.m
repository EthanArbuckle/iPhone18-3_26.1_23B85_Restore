@interface NTKAstronomyComplicationContainer
+ (id)complicationBundleDataSources;
@end

@implementation NTKAstronomyComplicationContainer

+ (id)complicationBundleDataSources
{
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v4[2] = objc_opt_class();
  v2 = [NSArray arrayWithObjects:v4 count:3];

  return v2;
}

@end