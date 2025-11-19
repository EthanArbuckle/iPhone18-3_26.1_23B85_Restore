@interface AppCardViewController
+ (id)_exportedInterface;
+ (id)_remoteViewControllerInterface;
- (AppCardViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (double)compactHeight;
- (void)appPresenterDidDismissFullscreenModal:(id)a3;
- (void)didDragStickerToTarget:(id)a3 outsideSwitcher:(BOOL)a4;
- (void)didSelectAppWithBundleIdentifier:(id)a3;
- (void)dismiss;
- (void)overrideDropPointWithCompletion:(id)a3;
- (void)requestPasteSticker:(id)a3;
- (void)updateCompactCardHeight:(double)a3;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation AppCardViewController

- (AppCardViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v8.receiver = self;
  v8.super_class = AppCardViewController;
  v4 = [(AppCardViewController *)&v8 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = +[NSUserDefaults standardUserDefaults];
    v6 = [v5 BOOLForKey:@"LoadAlliMessageApps"];

    if ((v6 & 1) == 0)
    {
      +[IMAAppPresenter disableAutomaticAppDiscovery];
    }
  }

  return v4;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = AppCardViewController;
  [(AppCardViewController *)&v6 viewDidLoad];
  v3 = IMBalloonExtensionIDWithSuffix();
  [IMAAppPresenter loadAppWithIdentifierIfNeeded:v3];

  v4 = objc_alloc_init(IMAAppPresenter);
  appPresenter = self->_appPresenter;
  self->_appPresenter = v4;

  [(IMAAppPresenter *)self->_appPresenter setDelegate:self];
  [(AppCardViewController *)self compactHeight];
  [(IMAAppPresenter *)self->_appPresenter setCompactHeight:?];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = AppCardViewController;
  v7 = a4;
  [(AppCardViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100005E7C;
  v8[3] = &unk_100010618;
  v8[4] = self;
  [v7 animateAlongsideTransition:0 completion:v8];
}

- (void)dismiss
{
  self->_isPresentingStandaloneFullscreenModal = 0;
  v2 = [(AppCardViewController *)self _remoteViewControllerProxy];
  [v2 dismissCard];
}

- (double)compactHeight
{
  result = self->_compactHeight;
  if (result <= 0.0)
  {
    return 335.0;
  }

  return result;
}

- (void)requestPasteSticker:(id)a3
{
  v4 = a3;
  v5 = [v4 fileURL];
  v6 = [v5 path];
  v7 = [NSFileHandle fileHandleForReadingAtPath:v6];

  v8 = [(AppCardViewController *)self _remoteViewControllerProxy];
  [v8 pasteImageAtFileHandle:v7];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2050000000;
  v9 = qword_100015E70;
  v16 = qword_100015E70;
  if (!qword_100015E70)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100006518;
    v12[3] = &unk_100010560;
    v12[4] = &v13;
    sub_100006518(v12);
    v9 = v14[3];
  }

  v10 = v9;
  _Block_object_dispose(&v13, 8);
  if (objc_opt_respondsToSelector())
  {
    v11 = [(AppCardViewController *)self _hostApplicationBundleIdentifier];
    [v9 trackStickerSentFromHostBundleIdentifier:v11];
  }
}

- (void)updateCompactCardHeight:(double)a3
{
  if (self->_compactHeight != a3)
  {
    v5 = [(AppCardViewController *)self appPresenter];
    [v5 setCompactHeight:a3];
    if (self->_compactHeight < a3)
    {
      [v5 updateAppFrameForRotation];
    }

    self->_compactHeight = a3;
  }
}

- (void)didSelectAppWithBundleIdentifier:(id)a3
{
  if (a3)
  {
    [(ImmediatePanGestureRecognizer *)self->_dismissalGestureTracker setEnabled:1];
  }

  else
  {
    [(AppCardViewController *)self dismiss];
  }
}

- (void)didDragStickerToTarget:(id)a3 outsideSwitcher:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v4)
  {
    v8 = v6;
    v7 = [(AppCardViewController *)self _remoteViewControllerProxy];
    if (objc_opt_respondsToSelector())
    {
      [v8 screenCoordinate];
      [v7 draggedStickerToPoint:?];
    }

    v6 = v8;
  }
}

- (void)overrideDropPointWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(AppCardViewController *)self _remoteViewControllerProxy];
  if (objc_opt_respondsToSelector())
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000062E0;
    v6[3] = &unk_1000107A0;
    v7 = v4;
    [v5 requestInsertionPointCompletion:v6];
  }

  else
  {
    v4[2](v4, CGPointZero.x, CGPointZero.y);
  }
}

- (void)appPresenterDidDismissFullscreenModal:(id)a3
{
  if (self->_isPresentingStandaloneFullscreenModal)
  {
    [(AppCardViewController *)self dismiss];
  }
}

+ (id)_remoteViewControllerInterface
{
  if (qword_100015E58 != -1)
  {
    sub_100007414();
  }

  v3 = qword_100015E50;

  return v3;
}

+ (id)_exportedInterface
{
  if (qword_100015E68 != -1)
  {
    sub_100007428();
  }

  v3 = qword_100015E60;

  return v3;
}

@end