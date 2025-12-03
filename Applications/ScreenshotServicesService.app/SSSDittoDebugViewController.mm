@interface SSSDittoDebugViewController
+ (void)prepareForDebugging;
- (SSSViewControllerManager)viewControllerManager;
- (void)_addScreenshotWithPDF:(id)f visibleRect:(CGRect)rect;
- (void)_addScreenshots;
- (void)createDittoRootViewControllerIfNecessary;
- (void)dittoRootViewController:(id)controller wantsBackground:(BOOL)background duration:(double)duration;
- (void)loadView;
- (void)removeDittoRootViewController;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation SSSDittoDebugViewController

+ (void)prepareForDebugging
{
  v3 = +[SSScreenshotAssetManager sharedAssetManager];
  v2 = objc_opt_new();
  [v3 setBackend:v2];
}

- (void)dittoRootViewController:(id)controller wantsBackground:(BOOL)background duration:(double)duration
{
  if (background)
  {
    v7 = [UIBlurEffect effectWithStyle:2];
  }

  else
  {
    v7 = 0;
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100017364;
  v9[3] = &unk_1000BA3E8;
  v9[4] = self;
  v10 = v7;
  v8 = v7;
  [UIView animateWithDuration:v9 animations:duration];
}

- (void)createDittoRootViewControllerIfNecessary
{
  if (!self->_rootViewController)
  {
    v3 = objc_alloc_init(SSSDittoRootViewController);
    rootViewController = self->_rootViewController;
    self->_rootViewController = v3;

    [(SSSDittoRootViewController *)self->_rootViewController setDelegate:self];
    [(SSSDittoDebugViewController *)self addChildViewController:self->_rootViewController];
    view = [(SSSDittoDebugViewController *)self view];
    view2 = [(SSSDittoRootViewController *)self->_rootViewController view];
    [view addSubview:view2];

    [(SSSDittoRootViewController *)self->_rootViewController didMoveToParentViewController:self];
    view3 = [(SSSDittoRootViewController *)self->_rootViewController view];
    view4 = [(SSSDittoDebugViewController *)self view];
    [view4 bounds];
    [view3 setFrame:?];

    view5 = [(SSSDittoRootViewController *)self->_rootViewController view];
    [view5 setHidden:1];
  }
}

- (void)removeDittoRootViewController
{
  [(SSSDittoRootViewController *)self->_rootViewController setDelegate:0];
  [(SSSDittoRootViewController *)self->_rootViewController willMoveToParentViewController:0];
  [(SSSDittoRootViewController *)self->_rootViewController removeFromParentViewController];
  view = [(SSSDittoRootViewController *)self->_rootViewController view];
  [view removeFromSuperview];

  rootViewController = self->_rootViewController;
  self->_rootViewController = 0;
}

- (void)_addScreenshotWithPDF:(id)f visibleRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  fCopy = f;
  v10 = objc_alloc_init(SSEnvironmentDescription);
  [v10 setPresentationMode:1];
  v11 = +[UIScreen mainScreen];
  [v11 bounds];
  v13 = v12;
  v15 = v14;

  v16 = +[UIScreen mainScreen];
  [v16 scale];
  v18 = v17;

  [v10 setImagePixelSize:{v13 * v18, v15 * v18}];
  [v10 setImageScale:v18];
  if (fCopy)
  {
    v19 = objc_alloc_init(SSHarvestedApplicationMetadata);
    [v19 setCanGenerateDocument:1];
    v20 = objc_alloc_init(SSHarvestedApplicationDocument);
    [v20 setPDFData:fCopy];
    [v20 setPDFPage:0];
    [v20 setPDFVisibleRect:{x, y, width, height}];
    v21 = objc_alloc_init(SSDebugEnvironmentElement);
    [(SSDebugEnvironmentElement *)v21 setMetadata:v19];
    [(SSDebugEnvironmentElement *)v21 setDocument:v20];
    v31 = v21;
    v22 = [NSArray arrayWithObjects:&v31 count:1];
    [v10 setDebugElements:v22];
  }

  v23 = +[SSSScreenshotManager sharedScreenshotManager];
  v24 = [v23 createScreenshotWithEnvironmentDescription:v10];

  view = [(SSSDittoDebugViewController *)self view];
  window = [view window];

  v32.width = v13;
  v32.height = v15;
  UIGraphicsBeginImageContextWithOptions(v32, 1, v18);
  [window bounds];
  [window drawViewHierarchyInRect:1 afterScreenUpdates:?];
  v27 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  [v24 setBackingImage:v27];
  [(SSSDittoRootViewController *)self->_rootViewController screenshotReceived:v24 completion:&stru_1000BA5B0];
  v28 = objc_alloc_init(SSImageIdentifierUpdate);
  [v28 setImageIdentifier:@"test"];
  identifier = [v10 identifier];
  [v28 setEnvironmentDescriptionIdentifier:identifier];

  [v28 setSuccess:1];
  [v24 _harvestPDFIfNecessary];
  v30 = +[SSSScreenshotManager sharedScreenshotManager];
  [v30 processImageIdentifierUpdate:v28];
}

- (void)_addScreenshots
{
  [(SSSDittoDebugViewController *)self createDittoRootViewControllerIfNecessary];
  view = [(SSSDittoRootViewController *)self->_rootViewController view];
  [view setHidden:0];

  debugView = [(SSSDittoDebugViewController *)self debugView];
  numberOfScreenshotsToAdd = [debugView numberOfScreenshotsToAdd];

  size = CGRectZero.size;
  origin = CGRectZero.origin;
  v16 = size;
  debugView2 = [(SSSDittoDebugViewController *)self debugView];
  shouldIncludePDF = [debugView2 shouldIncludePDF];

  if (shouldIncludePDF)
  {
    debugView3 = [(SSSDittoDebugViewController *)self debugView];
    v10 = [debugView3 generatePDF:&origin];
  }

  else
  {
    v10 = 0;
  }

  [(SSSDittoDebugViewController *)self _addScreenshotWithPDF:v10 visibleRect:origin, v16];
  if (numberOfScreenshotsToAdd >= 2)
  {
    debugView4 = [(SSSDittoDebugViewController *)self debugView];
    [debugView4 advanceScrollOffset];

    v12 = 0;
    do
    {
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100017A04;
      v14[3] = &unk_1000BA5D8;
      v14[4] = self;
      v14[5] = v12;
      v14[6] = numberOfScreenshotsToAdd;
      v13 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v14 block:v12++ + 1.0];
    }

    while (numberOfScreenshotsToAdd - 1 != v12);
  }
}

- (void)loadView
{
  v3 = objc_opt_new();
  [(SSSDittoDebugViewController *)self setView:v3];

  debugView = [(SSSDittoDebugViewController *)self debugView];
  [debugView setDelegate:self];
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = SSSDittoDebugViewController;
  [(SSSDittoDebugViewController *)&v8 viewDidLoad];
  v3 = objc_alloc_init(UIVisualEffectView);
  backgroundView = self->_backgroundView;
  self->_backgroundView = v3;

  [(UIVisualEffectView *)self->_backgroundView setUserInteractionEnabled:0];
  view = [(SSSDittoDebugViewController *)self view];
  [view addSubview:self->_backgroundView];

  debugView = [(SSSDittoDebugViewController *)self debugView];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100017C00;
  v7[3] = &unk_1000BA068;
  v7[4] = self;
  [debugView setBlockToRunForAddScreenshotsButton:v7];
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = SSSDittoDebugViewController;
  [(SSSDittoDebugViewController *)&v5 viewWillLayoutSubviews];
  backgroundView = self->_backgroundView;
  view = [(SSSDittoDebugViewController *)self view];
  [view bounds];
  [(UIVisualEffectView *)backgroundView setFrame:?];
}

- (SSSViewControllerManager)viewControllerManager
{
  WeakRetained = objc_loadWeakRetained(&self->viewControllerManager);

  return WeakRetained;
}

@end