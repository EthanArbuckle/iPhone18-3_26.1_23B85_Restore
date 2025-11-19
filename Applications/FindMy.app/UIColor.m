@interface UIColor
+ (id)fmfOverlayColor;
@end

@implementation UIColor

+ (id)fmfOverlayColor
{
  v2 = +[UIColor systemBlueColor];
  v3 = [v2 colorWithAlphaComponent:0.1];

  return v3;
}

@end