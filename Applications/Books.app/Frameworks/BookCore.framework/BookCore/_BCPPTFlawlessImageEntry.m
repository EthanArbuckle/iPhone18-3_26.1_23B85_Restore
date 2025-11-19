@interface _BCPPTFlawlessImageEntry
+ (id)entryOfSize:(CGSize)a3;
- (CGSize)imageSize;
- (id)entryLocationFromParameters;
@end

@implementation _BCPPTFlawlessImageEntry

+ (id)entryOfSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = objc_alloc_init(objc_opt_class());
  [v5 setImageSize:{width, height}];
  [v5 setLevel:0];
  [v5 setQuality:207];
  [v5 setPotentialPrimary:1];
  v6 = [_BCPPTImageSet imageSetWithEntry:v5];
  [v5 setImageSet:v6];

  return v5;
}

- (id)entryLocationFromParameters
{
  v2 = +[NSUUID UUID];
  v3 = [v2 UUIDString];

  return v3;
}

- (CGSize)imageSize
{
  width = self->imageSize.width;
  height = self->imageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end