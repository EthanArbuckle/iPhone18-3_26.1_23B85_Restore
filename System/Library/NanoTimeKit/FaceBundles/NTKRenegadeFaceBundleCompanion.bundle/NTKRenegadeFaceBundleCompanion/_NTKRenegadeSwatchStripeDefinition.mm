@interface _NTKRenegadeSwatchStripeDefinition
+ (id)definitionWithColor:(id)a3 height:(double)a4;
@end

@implementation _NTKRenegadeSwatchStripeDefinition

+ (id)definitionWithColor:(id)a3 height:(double)a4
{
  v5 = a3;
  v6 = objc_opt_new();
  v7 = *(v6 + 8);
  *(v6 + 8) = v5;

  *(v6 + 16) = a4;

  return v6;
}

@end