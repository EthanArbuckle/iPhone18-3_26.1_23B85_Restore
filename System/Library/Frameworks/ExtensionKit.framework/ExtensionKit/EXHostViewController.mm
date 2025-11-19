@interface EXHostViewController
- (EXHostViewController)init;
- (EXHostViewController)initWithConfiguration:(id)a3;
- (UIView)placeholderView;
- (_EXHostViewControllerConfiguration)configuration;
- (_EXHostViewControllerSession)session;
- (_UIRemoteSheet)_remoteSheet;
- (id)delegate;
- (void)dealloc;
- (void)embedPlaceholder;
- (void)embedViewController:(id)a3;
- (void)loadView;
- (void)setConfiguration:(id)a3;
- (void)setSession:(id)a3;
@end

@implementation EXHostViewController

- (EXHostViewController)init
{
  v6.receiver = self;
  v6.super_class = EXHostViewController;
  v2 = [(EXHostViewController *)&v6 init];
  if (v2)
  {
    v3 = [[_EXHostSessionDriver alloc] initWithHostViewController:v2];
    sessionDriver = v2->_sessionDriver;
    v2->_sessionDriver = v3;
  }

  return v2;
}

- (EXHostViewController)initWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(EXHostViewController *)self init];
  v6 = v5;
  if (v5)
  {
    [(EXHostViewController *)v5 setConfiguration:v4];
  }

  return v6;
}

- (void)dealloc
{
  [(_EXHostSessionDriver *)self->_sessionDriver setSession:0];
  v3.receiver = self;
  v3.super_class = EXHostViewController;
  [(EXHostViewController *)&v3 dealloc];
}

- (_EXHostViewControllerConfiguration)configuration
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v3 = [(_EXHostSessionDriver *)self->_sessionDriver session];
  v4 = [v3 configuration];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setConfiguration:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v5 = objc_alloc(MEMORY[0x1E6966CC8]);
  v6 = [v4 extensionIdentity];
  v7 = [v4 instanceIdentifier];
  v8 = [v5 initWithExtensionIdentity:v6 instanceIdentifier:v7];

  [(_EXHostSessionDriver *)self->_sessionDriver startSessionWithProcessConfiguration:v8 configuration:v4];
}

- (_EXHostViewControllerSession)session
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  sessionDriver = self->_sessionDriver;

  return [(_EXHostSessionDriver *)sessionDriver session];
}

- (void)setSession:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (v4 && ([v4 detached] & 1) == 0)
  {
    v5 = _EXDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [EXHostViewController setSession:v5];
    }
  }

  [(_EXHostSessionDriver *)self->_sessionDriver setSession:v4];
}

- (void)loadView
{
  v3 = objc_opt_new();
  [(EXHostViewController *)self setView:v3];

  [(EXHostViewController *)self embedPlaceholder];
}

- (UIView)placeholderView
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  placeholderView = self->_placeholderView;
  if (!placeholderView)
  {
    v4 = objc_opt_new();
    v5 = self->_placeholderView;
    self->_placeholderView = v4;

    placeholderView = self->_placeholderView;
  }

  return placeholderView;
}

- (void)embedViewController:(id)a3
{
  v10 = a3;
  v4 = [(EXHostViewController *)self embededViewController];
  if (v4 != v10)
  {
    if (v4)
    {
      [(EXHostViewController *)self setEmbededViewController:0];
      [v4 removeFromParentViewController];
    }

    if (v10)
    {
      v5 = [v10 view];
      [(EXHostViewController *)self setEmbededViewController:v10];
      v6 = [(_EXHostSessionDriver *)self->_sessionDriver session];
      v7 = [v6 requiresUIKitSceneHosting];

      if (v7)
      {
        [(EXHostViewController *)self addChildViewController:v10];
        v8 = [(EXHostViewController *)self view];
        [v8 embedView:v5];
      }

      else
      {
        v9 = [(EXHostViewController *)self view];
        [v9 embedView:v5];

        [(EXHostViewController *)self addChildViewController:v10];
      }

      [v10 didMoveToParentViewController:self];
    }

    else
    {
      [(EXHostViewController *)self embedPlaceholder];
    }
  }
}

- (_UIRemoteSheet)_remoteSheet
{
  v2 = [(EXHostViewController *)self session];
  v3 = [v2 remoteSheet];

  return v3;
}

- (void)embedPlaceholder
{
  v4 = [(EXHostViewController *)self view];
  v3 = [(EXHostViewController *)self placeholderView];
  [v4 embedView:v3];
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setSession:(os_log_t)log .cold.1(os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = "session == nil || session.detached";
  v4 = 2080;
  v2 = 136315650;
  v5 = "/Library/Caches/com.apple.xbs/Sources/ExtensionKit/ExtensionKit/Source/HostViewController/EXHostViewController.m";
  v6 = 1024;
  v7 = 91;
  _os_log_fault_impl(&dword_1D29CC000, log, OS_LOG_TYPE_FAULT, "%s - %s:%d: Only detached sessions can be set", &v2, 0x1Cu);
  v1 = *MEMORY[0x1E69E9840];
}

@end