@interface LegacyArtworkLoader
- (void)imageRequest:(id)request didFailWithError:(id)error;
- (void)imageRequest:(id)request didLoadImage:(id)image;
@end

@implementation LegacyArtworkLoader

- (void)imageRequest:(id)request didLoadImage:(id)image
{
  requestCopy = request;
  imageCopy = image;

  sub_386820(requestCopy, image, 0);
}

- (void)imageRequest:(id)request didFailWithError:(id)error
{
  requestCopy = request;
  errorCopy = error;

  sub_386820(requestCopy, 0, error);
}

@end