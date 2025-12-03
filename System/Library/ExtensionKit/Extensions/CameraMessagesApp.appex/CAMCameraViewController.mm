@interface CAMCameraViewController
- (void)setUberDelegate:(id)delegate;
@end

@implementation CAMCameraViewController

- (void)setUberDelegate:(id)delegate
{
  delegateCopy = delegate;
  [(CAMCameraViewController *)self setCaptureDelegate:delegateCopy];
  [(CAMCameraViewController *)self setCameraSessionDelegate:delegateCopy];
  [(CAMCameraViewController *)self setPresentationDelegate:delegateCopy];
}

@end