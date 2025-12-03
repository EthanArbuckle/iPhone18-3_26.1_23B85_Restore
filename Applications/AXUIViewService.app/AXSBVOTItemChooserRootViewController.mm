@interface AXSBVOTItemChooserRootViewController
- (void)_dismiss;
- (void)_setupRemoteProxy;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)prepareForActivationWithContext:(id)context completion:(id)completion;
- (void)removeFromParentViewController;
- (void)viewDidLoad;
@end

@implementation AXSBVOTItemChooserRootViewController

- (void)prepareForActivationWithContext:(id)context completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion);
  }
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  userInfo = [context userInfo];
  [(AXSBVOTItemChooserRootViewController *)self setItems:userInfo];

  v7 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy);
    v7 = completionCopy;
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
  view = [(AXSBVOTItemChooserRootViewController *)self view];
  [view addSubview:v3];

  view2 = [(AXSBVOTItemChooserRootViewController *)self view];
  v7 = [v3 ax_pinConstraintsInAllDimensionsToView:view2];

  v8 = objc_alloc_init(VOTUIItemChooserController);
  [(AXSBVOTItemChooserRootViewController *)self setItemChooserController:v8];

  itemChooserController = [(AXSBVOTItemChooserRootViewController *)self itemChooserController];
  [itemChooserController setDelegate:self];

  [(AXSBVOTItemChooserRootViewController *)self setItemChooserSelectedIndex:0x7FFFFFFFFFFFFFFFLL];
}

- (void)_dismiss
{
  itemChooserSelectedIndex = [(AXSBVOTItemChooserRootViewController *)self itemChooserSelectedIndex];
  itemChooserActivate = [(AXSBVOTItemChooserRootViewController *)self itemChooserActivate];
  itemChooserController = [(AXSBVOTItemChooserRootViewController *)self itemChooserController];
  lastSearchTerm = [itemChooserController lastSearchTerm];
  v7 = lastSearchTerm;
  v8 = &stru_100028F48;
  if (lastSearchTerm)
  {
    v8 = lastSearchTerm;
  }

  v9 = v8;

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100012694;
  v11[3] = &unk_100028EC8;
  v12 = v9;
  v13 = itemChooserSelectedIndex;
  v14 = itemChooserActivate;
  v11[4] = self;
  v10 = v9;
  [(AXSBVOTItemChooserRootViewController *)self dismissViewControllerAnimated:0 completion:v11];
}

- (void)_setupRemoteProxy
{
  _remoteViewControllerProxy = [(AXSBVOTItemChooserRootViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy setOrientationChangedEventsEnabled:0];
  [_remoteViewControllerProxy setAllowsMenuButtonDismissal:1];
  [_remoteViewControllerProxy setWallpaperTunnelActive:1];
  [_remoteViewControllerProxy setWallpaperStyle:4 withDuration:0.3];
  [_remoteViewControllerProxy setStatusBarHidden:1 withDuration:0.3];
}

- (void)removeFromParentViewController
{
  v9[0] = @"row";
  v9[1] = @"activate";
  v10[0] = &off_100029FE0;
  v10[1] = &__kCFBooleanFalse;
  v9[2] = @"searchTerm";
  itemChooserController = [(AXSBVOTItemChooserRootViewController *)self itemChooserController];
  lastSearchTerm = [itemChooserController lastSearchTerm];
  v5 = lastSearchTerm;
  v6 = &stru_100028F48;
  if (lastSearchTerm)
  {
    v6 = lastSearchTerm;
  }

  v10[2] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:3];
  UIAccessibilityPostNotification(0x7EAu, v7);

  v8.receiver = self;
  v8.super_class = AXSBVOTItemChooserRootViewController;
  [(AXSBVOTItemChooserRootViewController *)&v8 removeFromParentViewController];
}

@end