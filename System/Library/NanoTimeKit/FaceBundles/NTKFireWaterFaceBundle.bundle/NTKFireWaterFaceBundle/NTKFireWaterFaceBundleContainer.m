@interface NTKFireWaterFaceBundleContainer
+ (id)faceBundleClasses;
@end

@implementation NTKFireWaterFaceBundleContainer

+ (id)faceBundleClasses
{
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v2 = [NSArray arrayWithObjects:v4 count:2];

  return v2;
}

@end