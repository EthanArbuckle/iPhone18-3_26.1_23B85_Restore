@interface PFXAutoplayConfig
+ (id)autoplayConfigWithState:(id)a3;
@end

@implementation PFXAutoplayConfig

+ (id)autoplayConfigWithState:(id)a3
{
  v3 = [a3 currentHtmlStackEntry];
  v4 = [v3 xmlValueForAttribute:PFXWidgetConstantDataAutoplay[0]];
  if (v4)
  {
    v5 = xmlStrEqual(v4, "yes") != 0;
  }

  else
  {
    v5 = 0;
  }

  v6 = [[THWAutoplayConfig alloc] initWithAutoplayEnabled:v5];

  return v6;
}

@end