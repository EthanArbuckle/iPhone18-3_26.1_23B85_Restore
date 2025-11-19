@interface AXSBVOTItemChooserRootViewController
- (void)_dismiss;
- (void)_setupRemoteProxy;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4;
- (void)removeFromParentViewController;
- (void)viewDidLoad;
@end

@implementation AXSBVOTItemChooserRootViewController

- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4);
  }
}

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v8 = a4;
  v6 = [a3 userInfo];
  [(AXSBVOTItemChooserRootViewController *)self setItems:v6];

  v7 = v8;
  if (v8)
  {
    (*(v8 + 2))(v8);
    v7 = v8;
  }
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = AXSBVOTItemChooserRootViewController;
  [(AXSBVOTItemChooserRootViewController *)&v10 viewDidLoad];
  v3 = objc_opt_new();
  [v3 setAutoresizingMask:18];
  v4 = +[UIColor blackColor];
  [v3 setBackgroundColor:v4];

  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [(AXSBVOTItemChooserRootViewController *)self view];
  [v5 addSubview:v3];

  v6 = [(AXSBVOTItemChooserRootViewController *)self view];
  v7 = [v3 ax_pinConstraintsInAllDimensionsToView:v6];

  v8 = objc_alloc_init(VOTUIItemChooserController);
  [(AXSBVOTItemChooserRootViewController *)self setItemChooserController:v8];

  v9 = [(AXSBVOTItemChooserRootViewController *)self itemChooserController];
  [v9 setDelegate:self];

  [(AXSBVOTItemChooserRootViewController *)self setItemChooserSelectedIndex:0x7FFFFFFFFFFFFFFFLL];
}

- (void)_dismiss
{
  v3 = [(AXSBVOTItemChooserRootViewController *)self itemChooserSelectedIndex];
  v4 = [(AXSBVOTItemChooserRootViewController *)self itemChooserActivate];
  v5 = [(AXSBVOTItemChooserRootViewController *)self itemChooserController];
  v6 = [v5 lastSearchTerm];
  v7 = v6;
  v8 = &stru_100028F48;
  if (v6)
  {
    v8 = v6;
  }

  v9 = v8;

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100012694;
  v11[3] = &unk_100028EC8;
  v12 = v9;
  v13 = v3;
  v14 = v4;
  v11[4] = self;
  v10 = v9;
  [(AXSBVOTItemChooserRootViewController *)self dismissViewControllerAnimated:0 completion:v11];
}

- (void)_setupRemoteProxy
{
  v2 = [(AXSBVOTItemChooserRootViewController *)self _remoteViewControllerProxy];
  [v2 setOrientationChangedEventsEnabled:0];
  [v2 setAllowsMenuButtonDismissal:1];
  [v2 setWallpaperTunnelActive:1];
  [v2 setWallpaperStyle:4 withDuration:0.3];
  [v2 setStatusBarHidden:1 withDuration:0.3];
}

- (void)removeFromParentViewController
{
  v9[0] = @"row";
  v9[1] = @"activate";
  v10[0] = &off_100029FE0;
  v10[1] = &__kCFBooleanFalse;
  v9[2] = @"searchTerm";
  v3 = [(AXSBVOTItemChooserRootViewController *)self itemChooserController];
  v4 = [v3 lastSearchTerm];
  v5 = v4;
  v6 = &stru_100028F48;
  if (v4)
  {
    v6 = v4;
  }

  v10[2] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:3];
  UIAccessibilityPostNotification(0x7EAu, v7);

  v8.receiver = self;
  v8.super_class = AXSBVOTItemChooserRootViewController;
  [(AXSBVOTItemChooserRootViewController *)&v8 removeFromParentViewController];
}

@end