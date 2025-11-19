@interface AVVideoCallPlayerController
- (AVPictureInPictureControllerContentSource)contentSource;
- (CGSize)contentDimensions;
@end

@implementation AVVideoCallPlayerController

- (CGSize)contentDimensions
{
  contentSource = self->_contentSource;
  width = self->_contentDimensions.width;
  result.height = width;
  result.width = *&contentSource;
  return result;
}

- (AVPictureInPictureControllerContentSource)contentSource
{
  WeakRetained = objc_loadWeakRetained(&self->_pictureInPicturePossible);

  return WeakRetained;
}

@end