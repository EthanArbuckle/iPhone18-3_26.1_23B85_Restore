@interface UIImage
+ (id)_ma_openTableLogoImage;
@end

@implementation UIImage

+ (id)_ma_openTableLogoImage
{
  v2 = +[NSBundle _ma_bundle];
  v3 = [UIImage imageNamed:@"OpenTable" inBundle:v2];

  return v3;
}

@end