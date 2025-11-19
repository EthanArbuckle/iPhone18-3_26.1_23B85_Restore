@interface MacPlacePhotoViewerScene
+ (MacPlacePhotoViewerScene)sharedInstance;
+ (id)requestSceneActivation;
+ (void)teardownCurrentScene;
- (MacPlacePhotoViewerScene)init;
- (MacPlacePhotoViewerSceneDelegate)delegate;
- (NSString)sceneTitle;
- (UIViewController)topmostViewController;
- (void)_destroyCurrentSceneIfNeeded;
- (void)_presentSceneWithRootViewController:(id)a3 delegate:(id)a4;
- (void)openPhotoGalleryWithConfiguration:(id)a3 sceneDelegate:(id)a4 delegate:(id)a5;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidDisconnect:(id)a3;
@end

@implementation MacPlacePhotoViewerScene

- (MacPlacePhotoViewerSceneDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NSString)sceneTitle
{
  v2 = [(MacPlacePhotoViewerRootViewController *)self->_rootViewController configuration];
  v3 = [v2 mapItem];
  v4 = [v3 name];

  return v4;
}

- (UIViewController)topmostViewController
{
  v2 = [(MacPlacePhotoViewerScene *)self rootViewController];
  v3 = [v2 topmostViewController];

  return v3;
}

- (void)sceneDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = sub_100005610();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 description];
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[MacPlacePhotoViewerScene] -sceneDidDisconnect: %@", &v11, 0xCu);
  }

  [(MacPlacePhotoViewerScene *)self setWindow:0];
  v7 = qword_10195D8C8;
  qword_10195D8C8 = 0;

  v8 = [(MacPlacePhotoViewerScene *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(MacPlacePhotoViewerScene *)self delegate];
    [v10 placePhotoViewerSceneWillDisconnect:self];
  }
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_100005610();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = [v8 description];
    v21 = 138412802;
    v22 = v12;
    v23 = 2112;
    v24 = v9;
    v25 = 2112;
    v26 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[MacPlacePhotoViewerScene] -scene:willConnectToSession:withOptions: %@, %@, %@", &v21, 0x20u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v8;
    v14 = [v13 sizeRestrictions];
    [v14 setMinimumSize:{800.0, 600.0}];

    v15 = [v13 sizeRestrictions];
    [v15 setMaximumSize:{800.0, 600.0}];

    v16 = +[MacPlacePhotoViewerScene sharedInstance];
    v17 = [[UIWindow alloc] initWithWindowScene:v13];
    window = self->_window;
    self->_window = v17;

    v19 = [v16 rootViewController];
    [(UIWindow *)self->_window setRootViewController:v19];

    [(UIWindow *)self->_window setHidden:0];
    v20 = [v16 sceneTitle];
    [v13 setTitle:v20];

    objc_storeStrong(&qword_10195D8C8, a4);
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
    v4 = [(MacPlacePhotoViewerScene *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [(MacPlacePhotoViewerScene *)self delegate];
      [v6 placePhotoViewerSceneWillDisconnect:self];
    }

    v7 = +[UIApplication sharedApplication];
    [v7 requestSceneSessionDestruction:qword_10195D8C8 options:0 errorHandler:0];

    v8 = qword_10195D8C8;
    qword_10195D8C8 = 0;
  }
}

- (void)_presentSceneWithRootViewController:(id)a3 delegate:(id)a4
{
  v6 = a4;
  [(MacPlacePhotoViewerScene *)self setRootViewController:a3];
  v7 = [(MacPlacePhotoViewerScene *)self rootViewController];
  [v7 setDelegate:self];

  [(MacPlacePhotoViewerScene *)self setDelegate:v6];
  v10 = [[NSUserActivity alloc] initWithActivityType:@"com.apple.Maps.MacPlacePhotoViewer"];
  [v10 setEligibleForHandoff:0];
  v8 = objc_alloc_init(UISceneActivationRequestOptions);
  v9 = +[UIApplication sharedApplication];
  [v9 requestSceneSessionActivation:0 userActivity:v10 options:v8 errorHandler:0];
}

- (void)openPhotoGalleryWithConfiguration:(id)a3 sceneDelegate:(id)a4 delegate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_100005610();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v13 = 138412802;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[MacPlacePhotoViewerScene] -openPhotoGalleryWithConfiguration:sceneDelegate:delegate: %@, %@, %@", &v13, 0x20u);
  }

  v12 = [[MacPlacePhotoViewerRootViewController alloc] initWithConfiguration:v8 sceneDelegate:v9];
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