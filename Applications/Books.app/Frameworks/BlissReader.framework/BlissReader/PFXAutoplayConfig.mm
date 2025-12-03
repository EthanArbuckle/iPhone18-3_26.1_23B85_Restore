@interface PFXAutoplayConfig
+ (id)autoplayConfigWithState:(id)state;
@end

@implementation PFXAutoplayConfig

+ (id)autoplayConfigWithState:(id)state
{
  currentHtmlStackEntry = [state currentHtmlStackEntry];
  v4 = [currentHtmlStackEntry xmlValueForAttribute:PFXWidgetConstantDataAutoplay[0]];
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