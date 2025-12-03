@interface TTRComplicationAsset
+ (id)_imageNameForFamily:(int64_t)family;
+ (id)imageForFamily:(int64_t)family;
@end

@implementation TTRComplicationAsset

+ (id)imageForFamily:(int64_t)family
{
  v4 = [self _imageNameForFamily:family];
  v5 = [NSBundle bundleForClass:self];
  v6 = [UIImage imageNamed:v4 inBundle:v5 compatibleWithTraitCollection:0];

  return v6;
}

+ (id)_imageNameForFamily:(int64_t)family
{
  if ((family - 1) > 6)
  {
    return @"CircularSmall";
  }

  else
  {
    return off_10568[family - 1];
  }
}

@end