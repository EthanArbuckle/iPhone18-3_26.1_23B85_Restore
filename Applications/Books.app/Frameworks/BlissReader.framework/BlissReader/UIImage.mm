@interface UIImage
+ (id)th_imageNamed:(id)named;
@end

@implementation UIImage

+ (id)th_imageNamed:(id)named
{
  v4 = THBundle();

  return [UIImage imageNamed:named inBundle:v4 compatibleWithTraitCollection:0];
}

@end