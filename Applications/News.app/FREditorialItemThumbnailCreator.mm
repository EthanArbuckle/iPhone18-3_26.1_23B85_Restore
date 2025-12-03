@interface FREditorialItemThumbnailCreator
- (id)editorialThumbnailImageWith:(id)with;
@end

@implementation FREditorialItemThumbnailCreator

- (id)editorialThumbnailImageWith:(id)with
{
  v3 = [UIImage imageWithData:with];
  v4 = [UIImage alloc];
  cGImage = [v3 CGImage];
  v6 = +[UIScreen mainScreen];
  [v6 scale];
  v7 = [v4 initWithCGImage:cGImage scale:0 orientation:?];

  _imageThatSuppressesAccessibilityHairlineThickening = [v7 _imageThatSuppressesAccessibilityHairlineThickening];

  v9 = [_imageThatSuppressesAccessibilityHairlineThickening fr_scaledImageWithMaximumSize:{40.0, 40.0}];

  return v9;
}

@end