@interface MacPlacePhotoViewerScene
+ (MacPlacePhotoViewerScene)sharedInstance;
+ (id)requestSceneActivation;
+ (void)teardownCurrentScene;
- (MacPlacePhotoViewerScene)init;
- (MacPlacePhotoViewerSceneDelegate)delegate;
- (NSString)sceneTitle;
- (UIViewController)topmostViewController;
- (void)_destroyCurrentSceneIfNeeded;
- (void)_presentSceneWithRootViewController:(id)controller delegate:(id)delegate;
- (void)openPhotoGalleryWithConfiguration:(id)configuration sceneDelegate:(id)delegate delegate:(id)a5;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidDisconnect:(id)disconnect;
@end

@implementation MacPlacePhotoViewerScene

- (MacPlacePhotoViewerSceneDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NSString)sceneTitle
{
  configuration = [(MacPlacePhotoViewerRootViewController *)self->_rootViewController configuration];
  mapItem = [configuration mapItem];
  name = [mapItem name];

  return name;
}

- (UIViewController)topmostViewController
{
  rootViewController = [(MacPlacePhotoViewerScene *)self rootViewController];
  topmostViewController = [rootViewController topmostViewController];

  return topmostViewController;
}

- (void)sceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  v5 = sub_100005610();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [disconnectCopy description];
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[MacPlacePhotoViewerScene] -sceneDidDisconnect: %@", &v11, 0xCu);
  }

  [(MacPlacePhotoViewerScene *)self setWindow:0];
  v7 = qword_10195D8C8;
  qword_10195D8C8 = 0;

  delegate = [(MacPlacePhotoViewerScene *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(MacPlacePhotoViewerScene *)self delegate];
    [delegate2 placePhotoViewerSceneWillDisconnect:self];
  }
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  v11 = sub_100005610();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = [sceneCopy description];
    v21 = 138412802;
    v22 = v12;
    v23 = 2112;
    v24 = sessionCopy;
    v25 = 2112;
    v26 = optionsCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[MacPlacePhotoViewerScene] -scene:willConnectToSession:withOptions: %@, %@, %@", &v21, 0x20u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = sceneCopy;
    sizeRestrictions = [v13 sizeRestrictions];
    [sizeRestrictions setMinimumSize:{800.0, 600.0}];

    sizeRestrictions2 = [v13 sizeRestrictions];
    [sizeRestrictions2 setMaximumSize:{800.0, 600.0}];

    v16 = +[MacPlacePhotoViewerScene sharedInstance];
    v17 = [[UIWindow alloc] initWithWindowScene:v13];
    window = self->_window;
    self->_window = v17;

    rootViewController = [v16 rootViewController];
    [(UIWindow *)self->_window setRootViewController:rootViewController];

    [(UIWindow *)self->_window setHidden:0];
    sceneTitle = [v16 sceneTitle];
    [v13 setTitle:sceneTitle];

    objc_storeStrong(&qword_10195D8C8, session);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    LOWORD(v21) = 0;
    _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Assertion failed: [scene isKindOfClass:[UIWindowScene class]]", &v21, 2u);
  }
}

- (void)_destroyCurrentSceneIfNeeded
{
  v3 = sub_100005610();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[MacPlacePhotoViewerScene] -_destroyCurrentSceneIfNeeded", v9, 2u);
  }

  if (qword_10195D8C8)
  {
    delegate = [(MacPlacePhotoViewerScene *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      delegate2 = [(MacPlacePhotoViewerScene *)self delegate];
      [delegate2 placePhotoViewerSceneWillDisconnect:self];
    }

    v7 = +[UIApplication sharedApplication];
    [v7 requestSceneSessionDestruction:qword_10195D8C8 options:0 errorHandler:0];

    v8 = qword_10195D8C8;
    qword_10195D8C8 = 0;
  }
}

- (void)_presentSceneWithRootViewController:(id)controller delegate:(id)delegate
{
  delegateCopy = delegate;
  [(MacPlacePhotoViewerScene *)self setRootViewController:controller];
  rootViewController = [(MacPlacePhotoViewerScene *)self rootViewController];
  [rootViewController setDelegate:self];

  [(MacPlacePhotoViewerScene *)self setDelegate:delegateCopy];
  v10 = [[NSUserActivity alloc] initWithActivityType:@"com.apple.Maps.MacPlacePhotoViewer"];
  [v10 setEligibleForHandoff:0];
  v8 = objc_alloc_init(UISceneActivationRequestOptions);
  v9 = +[UIApplication sharedApplication];
  [v9 requestSceneSessionActivation:0 userActivity:v10 options:v8 errorHandler:0];
}

- (void)openPhotoGalleryWithConfiguration:(id)configuration sceneDelegate:(id)delegate delegate:(id)a5
{
  configurationCopy = configuration;
  delegateCopy = delegate;
  v10 = a5;
  v11 = sub_100005610();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v13 = 138412802;
    v14 = configurationCopy;
    v15 = 2112;
    v16 = delegateCopy;
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[MacPlacePhotoViewerScene] -openPhotoGalleryWithConfiguration:sceneDelegate:delegate: %@, %@, %@", &v13, 0x20u);
  }

  v12 = [[MacPlacePhotoViewerRootViewController alloc] initWithConfiguration:configurationCopy sceneDelegate:delegateCopy];
  [(MacPlacePhotoViewerScene *)self _presentSceneWithRootViewController:v12 delegate:v10];
}

- (MacPlacePhotoViewerScene)init
{
  v6.receiver = self;
  v6.super_class = MacPlacePhotoViewerScene;
  v2 = [(MacPlacePhotoViewerScene *)&v6 init];
  if (v2)
  {
    v3 = [[MacPlacePhotoViewerRootViewController alloc] initWithNibName:0 bundle:0];
    rootViewController = v2->_rootViewController;
    v2->_rootViewController = v3;
  }

  return v2;
}

+ (void)teardownCurrentScene
{
  v2 = +[MacPlacePhotoViewerScene sharedInstance];
  [v2 _destroyCurrentSceneIfNeeded];
}

+ (id)requestSceneActivation
{
  v2 = +[MacPlacePhotoViewerScene sharedInstance];
  [v2 _destroyCurrentSceneIfNeeded];

  return v2;
}

+ (MacPlacePhotoViewerScene)sharedInstance
{
  if (qword_10195D8C0 != -1)
  {
    dispatch_once(&qword_10195D8C0, &stru_10162ABB8);
  }

  v3 = qword_10195D8B8;

  return v3;
}

@end