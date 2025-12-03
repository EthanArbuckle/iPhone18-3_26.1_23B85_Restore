@interface _NTKRenegadeSwatchStripeDefinition
+ (id)definitionWithColor:(id)color height:(double)height;
@end

@implementation _NTKRenegadeSwatchStripeDefinition

+ (id)definitionWithColor:(id)color height:(double)height
{
  colorCopy = color;
  v6 = objc_opt_new();
  v7 = *(v6 + 8);
  *(v6 + 8) = colorCopy;

  *(v6 + 16) = height;

  return v6;
}

@end