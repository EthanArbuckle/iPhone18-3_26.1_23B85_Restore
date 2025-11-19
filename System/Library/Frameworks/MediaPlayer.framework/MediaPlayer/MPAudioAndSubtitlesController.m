@interface MPAudioAndSubtitlesController
- (UIViewController)viewControllerForOrientation;
@end

@implementation MPAudioAndSubtitlesController

- (UIViewController)viewControllerForOrientation
{
  WeakRetained = objc_loadWeakRetained(&self->_viewControllerForOrientation);

  return WeakRetained;
}

@end