@interface SSSDittoDebugViewController
+ (void)prepareForDebugging;
- (SSSViewControllerManager)viewControllerManager;
- (void)_addScreenshotWithPDF:(id)a3 visibleRect:(CGRect)a4;
- (void)_addScreenshots;
- (void)createDittoRootViewControllerIfNecessary;
- (void)dittoRootViewController:(id)a3 wantsBackground:(BOOL)a4 duration:(double)a5;
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

- (void)dittoRootViewController:(id)a3 wantsBackground:(BOOL)a4 duration:(double)a5
{
  if (a4)
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
  [UIView animateWithDuration:v9 animations:a5];
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
    v5 = [(SSSDittoDebugViewController *)self view];
    v6 = [(SSSDittoRootViewController *)self->_rootViewController view];
    [v5 addSubview:v6];

    [(SSSDittoRootViewController *)self->_rootViewController didMoveToParentViewController:self];
    v7 = [(SSSDittoRootViewController *)self->_rootViewController view];
    v8 = [(SSSDittoDebugViewController *)self view];
    [v8 bounds];
    [v7 setFrame:?];

    v9 = [(SSSDittoRootViewController *)self->_rootViewController view];
    [v9 setHidden:1];
  }
}

- (void)removeDittoRootViewController
{
  [(SSSDittoRootViewController *)self->_rootViewController setDelegate:0];
  [(SSSDittoRootViewController *)self->_rootViewController willMoveToParentViewController:0];
  [(SSSDittoRootViewController *)self->_rootViewController removeFromParentViewController];
  v3 = [(SSSDittoRootViewController *)self->_rootViewController view];
  [v3 removeFromSuperview];

  rootViewController = self->_rootViewController;
  self->_rootViewController = 0;
}

- (void)_addScreenshotWithPDF:(id)a3 visibleRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
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
  if (v9)
  {
    v19 = objc_alloc_init(SSHarvestedApplicationMetadata);
    [v19 setCanGenerateDocument:1];
    v20 = objc_alloc_init(SSHarvestedApplicationDocument);
    [v20 setPDFData:v9];
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

  v25 = [(SSSDittoDebugViewController *)self view];
  v26 = [v25 window];

  v32.width = v13;
  v32.height = v15;
  UIGraphicsBeginImageContextWithOptions(v32, 1, v18);
  [v26 bounds];
  [v26 drawViewHierarchyInRect:1 afterScreenUpdates:?];
  v27 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  [v24 setBackingImage:v27];
  [(SSSDittoRootViewController *)self->_rootViewController screenshotReceived:v24 completion:&stru_1000BA5B0];
  v28 = objc_alloc_init(SSImageIdentifierUpdate);
  [v28 setImageIdentifier:@"test"];
  v29 = [v10 identifier];
  [v28 setEnvironmentDescriptionIdentifier:v29];

  [v28 setSuccess:1];
  [v24 _harvestPDFIfNecessary];
  v30 = +[SSSScreenshotManager sharedScreenshotManager];
  [v30 processImageIdentifierUpdate:v28];
}

- (void)_addScreenshots
{
  [(SSSDittoDebugViewController *)self createDittoRootViewControllerIfNecessary];
  v3 = [(SSSDittoRootViewController *)self->_rootViewController view];
  [v3 setHidden:0];

  v4 = [(SSSDittoDebugViewController *)self debugView];
  v5 = [v4 numberOfScreenshotsToAdd];

  size = CGRectZero.size;
  origin = CGRectZero.origin;
  v16 = size;
  v7 = [(SSSDittoDebugViewController *)self debugView];
  v8 = [v7 shouldIncludePDF];

  if (v8)
  {
    v9 = [(SSSDittoDebugViewController *)self debugView];
    v10 = [v9 generatePDF:&origin];
  }

  else
  {
    v10 = 0;
  }

  [(SSSDittoDebugViewController *)self _addScreenshotWithPDF:v10 visibleRect:origin, v16];
  if (v5 >= 2)
  {
    v11 = [(SSSDittoDebugViewController *)self debugView];
    [v11 advanceScrollOffset];

    v12 = 0;
    do
    {
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100017A04;
      v14[3] = &unk_1000BA5D8;
      v14[4] = self;
      v14[5] = v12;
      v14[6] = v5;
      v13 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v14 block:v12++ + 1.0];
    }

    while (v5 - 1 != v12);
  }
}

- (void)loadView
{
  v3 = objc_opt_new();
  [(SSSDittoDebugViewController *)self setView:v3];

  v4 = [(SSSDittoDebugViewController *)self debugView];
  [v4 setDelegate:self];
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
  v5 = [(SSSDittoDebugViewController *)self view];
  [v5 addSubview:self->_backgroundView];

  v6 = [(SSSDittoDebugViewController *)self debugView];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100017C00;
  v7[3] = &unk_1000BA068;
  v7[4] = self;
  [v6 setBlockToRunForAddScreenshotsButton:v7];
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = SSSDittoDebugViewController;
  [(SSSDittoDebugViewController *)&v5 viewWillLayoutSubviews];
  backgroundView = self->_backgroundView;
  v4 = [(SSSDittoDebugViewController *)self view];
  [v4 bounds];
  [(UIVisualEffectView *)backgroundView setFrame:?];
}

- (SSSViewControllerManager)viewControllerManager
{
  WeakRetained = objc_loadWeakRetained(&self->viewControllerManager);

  return WeakRetained;
}

@end