@interface MusicUIServiceAppEnvironment
- (MusicUIServiceAppEnvironmentDelegate)delegate;
- (void)_launchTargetApp;
- (void)_launchTargetAppIfNecessary;
- (void)_switchToNowPlaying;
- (void)dealloc;
- (void)scene:(id)scene openURLContexts:(id)contexts;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidBecomeActive:(id)active;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)sceneDidEnterBackground:(id)background;
- (void)sceneWillEnterForeground:(id)foreground;
- (void)sceneWillResignActive:(id)active;
- (void)setScene:(id)scene;
@end

@implementation MusicUIServiceAppEnvironment

- (void)setScene:(id)scene
{
  sceneCopy = scene;
  _FBSScene = [sceneCopy _FBSScene];
  v5 = [UIWindow alloc];
  settings = [_FBSScene settings];
  [settings bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  identifier = [_FBSScene identifier];
  v16 = [v5 _initWithFrame:identifier debugName:sceneCopy windowScene:{v8, v10, v12, v14}];

  window = self->_window;
  self->_window = v16;

  [(UIWindow *)self->_window makeKeyAndVisible];
  settings2 = [_FBSScene settings];
  proxiedApplicationBundleIdentifier = [settings2 proxiedApplicationBundleIdentifier];
  applicationIdentifier = self->_applicationIdentifier;
  self->_applicationIdentifier = proxiedApplicationBundleIdentifier;

  applicationIdentifier = [(MusicUIServiceAppEnvironment *)self applicationIdentifier];
  [(UIWindow *)self->_window setAccessibilityLabel:applicationIdentifier];
}

- (void)dealloc
{
  processAssertion = [(MusicUIServiceAppEnvironment *)self processAssertion];
  [processAssertion invalidate];

  v4.receiver = self;
  v4.super_class = MusicUIServiceAppEnvironment;
  [(MusicUIServiceAppEnvironment *)&v4 dealloc];
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  [(MusicUIServiceAppEnvironment *)self setScene:sceneCopy];
  v7 = objc_alloc_init(MusicUIServiceCarDisplayBrowsableContentViewController);
  [(MusicUIServiceAppEnvironment *)self setContentViewController:v7];

  contentViewController = [(MusicUIServiceAppEnvironment *)self contentViewController];
  window = [(MusicUIServiceAppEnvironment *)self window];
  [window setRootViewController:contentViewController];

  activationState = [sceneCopy activationState];
  [(MusicUIServiceAppEnvironment *)self setAppMustBeRunning:activationState < 2];

  [(MusicUIServiceAppEnvironment *)self _launchTargetApp];
}

- (void)sceneDidDisconnect:(id)disconnect
{
  [(MusicUIServiceAppEnvironment *)self setAppMustBeRunning:0];
  delegate = [(MusicUIServiceAppEnvironment *)self delegate];
  [delegate appEnvironmentWillDisconnect:self];

  processAssertion = [(MusicUIServiceAppEnvironment *)self processAssertion];
  [processAssertion invalidate];

  [(MusicUIServiceAppEnvironment *)self setProcessAssertion:0];
}

- (void)sceneDidBecomeActive:(id)active
{
  v6 = [[MusicUIDisplayNowPlayingStateContext alloc] initWithStateContext:@"current"];
  applicationIdentifier = [(MusicUIServiceAppEnvironment *)self applicationIdentifier];
  [(MusicUIDisplayNowPlayingStateContext *)v6 setAssociatedBundleID:applicationIdentifier];

  contentViewController = [(MusicUIServiceAppEnvironment *)self contentViewController];
  [contentViewController switchToState:v6];
}

- (void)sceneWillResignActive:(id)active
{
  contentViewController = [(MusicUIServiceAppEnvironment *)self contentViewController];
  [contentViewController switchToState:0];
}

- (void)sceneWillEnterForeground:(id)foreground
{
  [(MusicUIServiceAppEnvironment *)self setAppMustBeRunning:1];

  [(MusicUIServiceAppEnvironment *)self _launchTargetApp];
}

- (void)sceneDidEnterBackground:(id)background
{
  [(MusicUIServiceAppEnvironment *)self setAppMustBeRunning:0];
  processAssertion = [(MusicUIServiceAppEnvironment *)self processAssertion];
  [processAssertion invalidate];

  [(MusicUIServiceAppEnvironment *)self setProcessAssertion:0];
}

- (void)scene:(id)scene openURLContexts:(id)contexts
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100003410;
  v4[3] = &unk_10000C3B8;
  v4[4] = self;
  [contexts enumerateObjectsUsingBlock:v4];
}

- (void)_switchToNowPlaying
{
  v5 = +[MusicUIDisplayNowPlayingStateContext stateContextForNowPlaying];
  applicationIdentifier = [(MusicUIServiceAppEnvironment *)self applicationIdentifier];
  [v5 setAssociatedBundleID:applicationIdentifier];

  contentViewController = [(MusicUIServiceAppEnvironment *)self contentViewController];
  [contentViewController switchToState:v5];
}

- (void)_launchTargetApp
{
  if ([(MusicUIServiceAppEnvironment *)self appMustBeRunning])
  {

    [(MusicUIServiceAppEnvironment *)self _launchTargetAppIfNecessary];
  }

  else
  {
    [(MusicUIServiceAppEnvironment *)self setAppMustBeRunning:1];
    [(MusicUIServiceAppEnvironment *)self _launchTargetAppIfNecessary];

    [(MusicUIServiceAppEnvironment *)self setAppMustBeRunning:0];
  }
}

- (void)_launchTargetAppIfNecessary
{
  if ([(MusicUIServiceAppEnvironment *)self appMustBeRunning]&& ![(MusicUIServiceAppEnvironment *)self launchRequested])
  {
    appHandle = [(MusicUIServiceAppEnvironment *)self appHandle];

    if (!appHandle)
    {
      [(MusicUIServiceAppEnvironment *)self setLaunchRequested:1];
      objc_initWeak(&location, self);
      v4 = +[FBSOpenApplicationService serviceWithDefaultShellEndpoint];
      v13 = FBSOpenApplicationOptionKeyActivateSuspended;
      v14 = &__kCFBooleanTrue;
      v5 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
      v6 = [FBSOpenApplicationOptions optionsWithDictionary:v5];

      applicationIdentifier = [(MusicUIServiceAppEnvironment *)self applicationIdentifier];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100003788;
      v9[3] = &unk_10000C3E0;
      v9[4] = self;
      objc_copyWeak(&v11, &location);
      v8 = v4;
      v10 = v8;
      [v8 openApplication:applicationIdentifier withOptions:v6 completion:v9];

      objc_destroyWeak(&v11);
      objc_destroyWeak(&location);
    }
  }
}

- (MusicUIServiceAppEnvironmentDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end