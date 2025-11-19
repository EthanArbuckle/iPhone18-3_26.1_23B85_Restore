@interface UIColor
+ (id)DKNamedColor:(id)a3;
@end

@implementation UIColor

+ (id)DKNamedColor:(id)a3
{
  v3 = a3;
  v4 = +[NSBundle hw_handwritingPluginBundle];
  v5 = [UIColor colorNamed:v3 inBundle:v4 compatibleWithTraitCollection:0];

  return v5;
}

@end