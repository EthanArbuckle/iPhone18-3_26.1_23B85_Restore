@interface CAMCameraViewController
- (void)setUberDelegate:(id)a3;
@end

@implementation CAMCameraViewController

- (void)setUberDelegate:(id)a3
{
  v4 = a3;
  [(CAMCameraViewController *)self setCaptureDelegate:v4];
  [(CAMCameraViewController *)self setCameraSessionDelegate:v4];
  [(CAMCameraViewController *)self setPresentationDelegate:v4];
}

@end