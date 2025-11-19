@interface MFAlertOverlayController
+ (id)log;
- (BOOL)isPresentingAlert;
- (MFAlertOverlayController)initWithWindowScene:(id)a3;
- (UIAlertController)topmostPresentedAlert;
- (UIWindowScene)scene;
- (id)_bottomPresentedAlert;
- (id)_topmostViewController;
- (void)_handlePresentationDismissalNotification:(id)a3;
- (void)_setupOverlayWindowWithScene:(id)a3;
- (void)_teardownOverlayWindow;
- (void)dealloc;
- (void)presentAlertController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
@end

@implementation MFAlertOverlayController

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__MFAlertOverlayController_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken != -1)
  {
    dispatch_once(&log_onceToken, block);
  }

  v2 = log_log;

  return v2;
}

void __31__MFAlertOverlayController_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.messageui", [v3 UTF8String]);
  v2 = log_log;
  log_log = v1;
}

- (MFAlertOverlayController)initWithWindowScene:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"MFAlertOverlayController.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"windowScene"}];
  }

  v10.receiver = self;
  v10.super_class = MFAlertOverlayController;
  v6 = [(MFAlertOverlayController *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_scene, v5);
  }

  return v7;
}

- (void)dealloc
{
  [(MFAlertOverlayController *)self _teardownOverlayWindow];
  v3.receiver = self;
  v3.super_class = MFAlertOverlayController;
  [(MFAlertOverlayController *)&v3 dealloc];
}

- (void)presentAlertController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v19 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = [(MFAlertOverlayController *)self _topmostViewController];
  if (!v10)
  {
    v11 = [(MFAlertOverlayController *)self scene];
    [(MFAlertOverlayController *)self _setupOverlayWindowWithScene:v11];
    v12 = [(MFAlertOverlayController *)self overlayWindow];
    v10 = [v12 rootViewController];
  }

  v13 = [MEMORY[0x1E696AD88] defaultCenter];
  [v13 addObserver:self selector:sel__handlePresentationDismissalNotification_ name:*MEMORY[0x1E69DE2C8] object:v8];

  v14 = +[MFAlertOverlayController log];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412546;
    v16 = v8;
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&dword_1BE819000, v14, OS_LOG_TYPE_DEFAULT, "Presenting alert %@ from %@", &v15, 0x16u);
  }

  [v10 presentViewController:v8 animated:v6 completion:v9];
}

- (BOOL)isPresentingAlert
{
  v2 = [(MFAlertOverlayController *)self _bottomPresentedAlert];
  v3 = v2 != 0;

  return v3;
}

- (UIAlertController)topmostPresentedAlert
{
  v2 = [(MFAlertOverlayController *)self _topmostViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_topmostViewController
{
  v2 = [(MFAlertOverlayController *)self overlayWindow];
  v3 = [v2 rootViewController];
  do
  {
    v4 = v3;

    v3 = [v4 presentedViewController];
    v2 = v4;
  }

  while (v3);

  return v4;
}

- (id)_bottomPresentedAlert
{
  v2 = [(MFAlertOverlayController *)self overlayWindow];
  v3 = [v2 rootViewController];
  v4 = [v3 presentedViewController];

  return v4;
}

- (void)_setupOverlayWindowWithScene:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[MFAlertOverlayController log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&dword_1BE819000, v5, OS_LOG_TYPE_INFO, "Setting up alert overlay window...", &v11, 2u);
  }

  v6 = [objc_alloc(MEMORY[0x1E69DD2E8]) initWithWindowScene:v4];
  v7 = objc_alloc_init(MEMORY[0x1E69DD258]);
  [v6 setRootViewController:v7];

  v8 = +[MFAlertOverlayController log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v4 session];
    v10 = [v9 persistentIdentifier];
    v11 = 138412546;
    v12 = v10;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_1BE819000, v8, OS_LOG_TYPE_INFO, "Succesfully set up alert overlay window in scene %@: %@", &v11, 0x16u);
  }

  [(MFAlertOverlayController *)self setOverlayWindow:v6];
  [v6 makeKeyAndVisible];
}

- (void)_teardownOverlayWindow
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1BE819000, a2, OS_LOG_TYPE_ERROR, "Found presented alert while tearing down alert overlay window. Dismissing it before continuing with teardown. Presented: %@", &v2, 0xCu);
}

- (void)_handlePresentationDismissalNotification:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MFAlertOverlayController *)self _bottomPresentedAlert];
  v6 = [v4 object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = [v4 object];
    v9 = +[MFAlertOverlayController log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v8;
      _os_log_impl(&dword_1BE819000, v9, OS_LOG_TYPE_DEFAULT, "Alert controller dismissed: %@", &v12, 0xCu);
    }

    if (v8 == v5)
    {
LABEL_10:
      [(MFAlertOverlayController *)self _teardownOverlayWindow];
    }
  }

  else
  {
    v10 = +[MFAlertOverlayController log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [v4 object];
      [(MFAlertOverlayController *)v11 _handlePresentationDismissalNotification:v10];
    }

    if (!v5 || [v5 isBeingDismissed])
    {
      goto LABEL_10;
    }
  }
}

- (UIWindowScene)scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

- (void)_handlePresentationDismissalNotification:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1BE819000, log, OS_LOG_TYPE_ERROR, "Received unexpected dismissal notification for unknown object: %@", buf, 0xCu);
}

@end