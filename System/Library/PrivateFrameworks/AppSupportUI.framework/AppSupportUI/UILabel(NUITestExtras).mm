@interface UILabel(NUITestExtras)
+ (id)labelWithString:()NUITestExtras;
+ (id)wrappingLabelWithString:()NUITestExtras;
@end

@implementation UILabel(NUITestExtras)

+ (id)labelWithString:()NUITestExtras
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setText:v3];

  return v4;
}

+ (id)wrappingLabelWithString:()NUITestExtras
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setText:v3];

  [v4 setNumberOfLines:0];

  return v4;
}

@end