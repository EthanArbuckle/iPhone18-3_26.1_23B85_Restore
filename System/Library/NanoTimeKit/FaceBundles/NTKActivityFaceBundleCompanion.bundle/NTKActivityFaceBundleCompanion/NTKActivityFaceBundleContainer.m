@interface NTKActivityFaceBundleContainer
+ (id)faceBundleClasses;
@end

@implementation NTKActivityFaceBundleContainer

+ (id)faceBundleClasses
{
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v4[2] = objc_opt_class();
  v4[3] = objc_opt_class();
  v2 = [NSArray arrayWithObjects:v4 count:4];

  return v2;
}

@end