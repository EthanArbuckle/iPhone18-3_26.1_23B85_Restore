@interface RCPlatterSceneDelegate
- (BOOL)isInAndromeda;
- (id)_mainViewController;
- (id)_recorderAppDelegate;
- (id)window;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)setBackgroundTintColorForScene:(id)scene;
- (void)setResolvedMetricsForScene:(id)scene;
@end

@implementation RCPlatterSceneDelegate

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = sceneCopy;
    v8 = objc_alloc_init(RCPlatterViewControllerCoordinator);
    platterViewControllerCoordinator = self->_platterViewControllerCoordinator;
    self->_platterViewControllerCoordinator = v8;

    v10 = +[VMAudioService sharedInstance];
    audioService = self->_audioService;
    self->_audioService = v10;

    recordingController = [(VMAudioService *)self->_audioService recordingController];

    if (!recordingController)
    {
      v15 = OSLogForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        sub_1001B9020(v15);
      }

      goto LABEL_11;
    }

    sBUI_isHostedBySystemAperture = [v7 SBUI_isHostedBySystemAperture];
    v14 = sBUI_isHostedBySystemAperture;
    if (self->_platterViewController)
    {
      if (sBUI_isHostedBySystemAperture)
      {
LABEL_5:
        [v7 setSystemApertureElementViewControllerProvider:self->_platterViewController];
LABEL_11:

        goto LABEL_12;
      }
    }

    else
    {
      _mainViewController = [(RCPlatterSceneDelegate *)self _mainViewController];
      v17 = [_mainViewController platterViewControllerForPresentationStyle:v14 ^ 1];
      platterViewController = self->_platterViewController;
      self->_platterViewController = v17;

      [(RCPlatterViewController *)self->_platterViewController setDelegate:self->_platterViewControllerCoordinator];
      if (v14)
      {
        goto LABEL_5;
      }
    }

    [(RCPlatterSceneDelegate *)self setResolvedMetricsForScene:v7];
    [(RCPlatterSceneDelegate *)self setBackgroundTintColorForScene:v7];
    v19 = [[UIWindow alloc] initWithWindowScene:v7];
    window = self->_window;
    self->_window = v19;

    [(UIWindow *)self->_window setRootViewController:self->_platterViewController];
    [(UIWindow *)self->_window makeKeyAndVisible];
    goto LABEL_11;
  }

LABEL_12:
}

- (id)window
{
  if ([(RCPlatterViewController *)self->_platterViewController presentationStyle])
  {
    window = self->_window;
  }

  else
  {
    viewIfLoaded = [(RCPlatterViewController *)self->_platterViewController viewIfLoaded];
    window = [viewIfLoaded window];
  }

  return window;
}

- (BOOL)isInAndromeda
{
  window = [(RCPlatterSceneDelegate *)self window];
  windowScene = [window windowScene];
  traitCollection = [windowScene traitCollection];
  isInAndromeda = [traitCollection isInAndromeda];

  return isInAndromeda;
}

- (id)_recorderAppDelegate
{
  v2 = +[UIApplication sharedApplication];
  delegate = [v2 delegate];

  return delegate;
}

- (id)_mainViewController
{
  _recorderAppDelegate = [(RCPlatterSceneDelegate *)self _recorderAppDelegate];
  defaultSceneDelegate = [_recorderAppDelegate defaultSceneDelegate];
  mainViewController = [defaultSceneDelegate mainViewController];

  return mainViewController;
}

- (void)setResolvedMetricsForScene:(id)scene
{
  type metadata accessor for ActivityScene();
  if (swift_dynamicCastClass())
  {
    v4 = objc_opt_self();
    sceneCopy = scene;
    sharedStyleProvider = [v4 sharedStyleProvider];
    [sharedStyleProvider bannerSize];
    [sharedStyleProvider bannerCornerRadius];
    v6 = objc_allocWithZone(type metadata accessor for ActivitySceneMetrics());
    ActivitySceneMetrics.init(size:cornerRadius:)();
    dispatch thunk of ActivityScene.resolvedMetrics.setter();
  }
}

- (void)setBackgroundTintColorForScene:(id)scene
{
  type metadata accessor for ActivityScene();
  if (swift_dynamicCastClass())
  {
    v4 = objc_opt_self();
    sceneCopy = scene;
    sharedStyleProvider = [v4 sharedStyleProvider];
    bannerBackgroundColor = [sharedStyleProvider bannerBackgroundColor];
    dispatch thunk of ActivityScene.backgroundTintColor.setter();
  }
}

@end