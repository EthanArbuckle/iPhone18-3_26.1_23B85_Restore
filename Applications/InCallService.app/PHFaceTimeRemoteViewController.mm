@interface PHFaceTimeRemoteViewController
- (void)viewDidLoad;
@end

@implementation PHFaceTimeRemoteViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = PHFaceTimeRemoteViewController;
  [(PHFaceTimeRemoteViewController *)&v3 viewDidLoad];
  [(PHFaceTimeRemoteViewController *)self setModalTransitionStyle:14];
}

@end