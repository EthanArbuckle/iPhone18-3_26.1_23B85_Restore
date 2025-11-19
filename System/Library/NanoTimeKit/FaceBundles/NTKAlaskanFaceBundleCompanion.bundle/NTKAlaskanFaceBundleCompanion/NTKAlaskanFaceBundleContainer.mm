@interface NTKAlaskanFaceBundleContainer
+ (id)faceBundleClasses;
@end

@implementation NTKAlaskanFaceBundleContainer

+ (id)faceBundleClasses
{
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v4[2] = objc_opt_class();
  v2 = [NSArray arrayWithObjects:v4 count:3];

  return v2;
}

@end