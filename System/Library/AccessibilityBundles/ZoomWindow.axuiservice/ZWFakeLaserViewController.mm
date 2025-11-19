@interface ZWFakeLaserViewController
- (ZWFakeLaserViewController)initWithZoomRootVC:(id)a3;
- (void)viewDidLoad;
@end

@implementation ZWFakeLaserViewController

- (ZWFakeLaserViewController)initWithZoomRootVC:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ZWFakeLaserViewController;
  v5 = [(ZWFakeLaserViewController *)&v11 init];
  if (v5)
  {
    v6 = objc_alloc_init(AXPIFingerController);
    [(ZWFakeLaserViewController *)v5 setFingerController:v6];

    v7 = [[ZWPointerAppearance alloc] initWithZoomRootVC:v4];
    [(ZWFakeLaserViewController *)v5 setAppearance:v7];

    v8 = [(ZWFakeLaserViewController *)v5 appearance];
    v9 = [(ZWFakeLaserViewController *)v5 fingerController];
    [v9 setAppearanceDelegate:v8];
  }

  return v5;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = ZWFakeLaserViewController;
  [(ZWFakeLaserViewController *)&v7 viewDidLoad];
  v3 = [(ZWFakeLaserViewController *)self view];
  [v3 setUserInteractionEnabled:0];

  v4 = [(ZWFakeLaserViewController *)self view];
  v5 = [(ZWFakeLaserViewController *)self fingerController];
  v6 = [v5 fingerContainerView];
  [v4 addSubview:v6];
}

@end