@interface UIColor
+ (id)DKNamedColor:(id)color;
@end

@implementation UIColor

+ (id)DKNamedColor:(id)color
{
  colorCopy = color;
  v4 = +[NSBundle hw_handwritingPluginBundle];
  v5 = [UIColor colorNamed:colorCopy inBundle:v4 compatibleWithTraitCollection:0];

  return v5;
}

@end