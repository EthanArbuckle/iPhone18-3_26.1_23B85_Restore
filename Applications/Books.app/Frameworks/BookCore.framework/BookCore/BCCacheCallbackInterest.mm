@interface BCCacheCallbackInterest
- (id)description;
- (void)setDescribedImage:(id)image;
@end

@implementation BCCacheCallbackInterest

- (void)setDescribedImage:(id)image
{
  imageCopy = image;
  [(BCCacheCallbackInterest *)self setDescribedImageShown:imageCopy];
  handler = [(BCCacheCallbackInterest *)self handler];
  handler[2](handler, imageCopy, 0);
}

- (id)description
{
  describedImageShown = [(BCCacheCallbackInterest *)self describedImageShown];
  describedImageRequested = [(BCCacheCallbackInterest *)self describedImageRequested];
  v5 = [NSString stringWithFormat:@"shown: %@, requested: %@", describedImageShown, describedImageRequested];

  return v5;
}

@end