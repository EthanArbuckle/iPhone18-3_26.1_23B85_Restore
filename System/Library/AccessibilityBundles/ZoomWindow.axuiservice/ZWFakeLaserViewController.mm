@interface ZWFakeLaserViewController
- (ZWFakeLaserViewController)initWithZoomRootVC:(id)c;
- (void)viewDidLoad;
@end

@implementation ZWFakeLaserViewController

- (ZWFakeLaserViewController)initWithZoomRootVC:(id)c
{
  cCopy = c;
  v11.receiver = self;
  v11.super_class = ZWFakeLaserViewController;
  v5 = [(ZWFakeLaserViewController *)&v11 init];
  if (v5)
  {
    v6 = objc_alloc_init(AXPIFingerController);
    [(ZWFakeLaserViewController *)v5 setFingerController:v6];

    v7 = [[ZWPointerAppearance alloc] initWithZoomRootVC:cCopy];
    [(ZWFakeLaserViewController *)v5 setAppearance:v7];

    appearance = [(ZWFakeLaserViewController *)v5 appearance];
    fingerController = [(ZWFakeLaserViewController *)v5 fingerController];
    [fingerController setAppearanceDelegate:appearance];
  }

  return v5;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = ZWFakeLaserViewController;
  [(ZWFakeLaserViewController *)&v7 viewDidLoad];
  view = [(ZWFakeLaserViewController *)self view];
  [view setUserInteractionEnabled:0];

  view2 = [(ZWFakeLaserViewController *)self view];
  fingerController = [(ZWFakeLaserViewController *)self fingerController];
  fingerContainerView = [fingerController fingerContainerView];
  [view2 addSubview:fingerContainerView];
}

@end