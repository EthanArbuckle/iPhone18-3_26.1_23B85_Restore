@interface AppCardViewController
+ (id)_exportedInterface;
+ (id)_remoteViewControllerInterface;
- (AppCardViewController)initWithNibName:(id)name bundle:(id)bundle;
- (double)compactHeight;
- (void)appPresenterDidDismissFullscreenModal:(id)modal;
- (void)didDragStickerToTarget:(id)target outsideSwitcher:(BOOL)switcher;
- (void)didSelectAppWithBundleIdentifier:(id)identifier;
- (void)dismiss;
- (void)overrideDropPointWithCompletion:(id)completion;
- (void)requestPasteSticker:(id)sticker;
- (void)updateCompactCardHeight:(double)height;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation AppCardViewController

- (AppCardViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v8.receiver = self;
  v8.super_class = AppCardViewController;
  v4 = [(AppCardViewController *)&v8 initWithNibName:name bundle:bundle];
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

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = AppCardViewController;
  coordinatorCopy = coordinator;
  [(AppCardViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100005E7C;
  v8[3] = &unk_100010618;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:0 completion:v8];
}

- (void)dismiss
{
  self->_isPresentingStandaloneFullscreenModal = 0;
  _remoteViewControllerProxy = [(AppCardViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy dismissCard];
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

- (void)requestPasteSticker:(id)sticker
{
  stickerCopy = sticker;
  fileURL = [stickerCopy fileURL];
  path = [fileURL path];
  v7 = [NSFileHandle fileHandleForReadingAtPath:path];

  _remoteViewControllerProxy = [(AppCardViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy pasteImageAtFileHandle:v7];
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
    _hostApplicationBundleIdentifier = [(AppCardViewController *)self _hostApplicationBundleIdentifier];
    [v9 trackStickerSentFromHostBundleIdentifier:_hostApplicationBundleIdentifier];
  }
}

- (void)updateCompactCardHeight:(double)height
{
  if (self->_compactHeight != height)
  {
    appPresenter = [(AppCardViewController *)self appPresenter];
    [appPresenter setCompactHeight:height];
    if (self->_compactHeight < height)
    {
      [appPresenter updateAppFrameForRotation];
    }

    self->_compactHeight = height;
  }
}

- (void)didSelectAppWithBundleIdentifier:(id)identifier
{
  if (identifier)
  {
    [(ImmediatePanGestureRecognizer *)self->_dismissalGestureTracker setEnabled:1];
  }

  else
  {
    [(AppCardViewController *)self dismiss];
  }
}

- (void)didDragStickerToTarget:(id)target outsideSwitcher:(BOOL)switcher
{
  switcherCopy = switcher;
  targetCopy = target;
  if (switcherCopy)
  {
    v8 = targetCopy;
    _remoteViewControllerProxy = [(AppCardViewController *)self _remoteViewControllerProxy];
    if (objc_opt_respondsToSelector())
    {
      [v8 screenCoordinate];
      [_remoteViewControllerProxy draggedStickerToPoint:?];
    }

    targetCopy = v8;
  }
}

- (void)overrideDropPointWithCompletion:(id)completion
{
  completionCopy = completion;
  _remoteViewControllerProxy = [(AppCardViewController *)self _remoteViewControllerProxy];
  if (objc_opt_respondsToSelector())
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000062E0;
    v6[3] = &unk_1000107A0;
    v7 = completionCopy;
    [_remoteViewControllerProxy requestInsertionPointCompletion:v6];
  }

  else
  {
    completionCopy[2](completionCopy, CGPointZero.x, CGPointZero.y);
  }
}

- (void)appPresenterDidDismissFullscreenModal:(id)modal
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