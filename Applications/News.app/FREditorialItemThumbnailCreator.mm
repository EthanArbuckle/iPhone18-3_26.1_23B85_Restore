@interface FREditorialItemThumbnailCreator
- (id)editorialThumbnailImageWith:(id)a3;
@end

@implementation FREditorialItemThumbnailCreator

- (id)editorialThumbnailImageWith:(id)a3
{
  v3 = [UIImage imageWithData:a3];
  v4 = [UIImage alloc];
  v5 = [v3 CGImage];
  v6 = +[UIScreen mainScreen];
  [v6 scale];
  v7 = [v4 initWithCGImage:v5 scale:0 orientation:?];

  v8 = [v7 _imageThatSuppressesAccessibilityHairlineThickening];

  v9 = [v8 fr_scaledImageWithMaximumSize:{40.0, 40.0}];

  return v9;
}

@end