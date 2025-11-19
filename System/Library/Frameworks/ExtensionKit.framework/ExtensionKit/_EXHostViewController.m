@interface _EXHostViewController
- (UIView)placeholderView;
- (_EXHostViewController)init;
- (_EXHostViewController)initWithConfiguration:(id)a3;
- (_EXHostViewControllerConfiguration)configuration;
- (_EXHostViewControllerDelegate)delegate;
- (_EXHostViewControllerSession)session;
- (_UIRemoteSheet)_remoteSheet;
- (void)dealloc;
- (void)embedPlaceholder;
- (void)embedViewController:(id)a3;
- (void)loadView;
- (void)setConfiguration:(id)a3;
- (void)setSession:(id)a3;
@end

@implementation _EXHostViewController

- (_EXHostViewController)init
{
  v6.receiver = self;
  v6.super_class = _EXHostViewController;
  v2 = [(_EXHostViewController *)&v6 init];
  if (v2)
  {
    v3 = [[_EXHostSessionDriver alloc] initWithHostViewController:v2];
    sessionDriver = v2->_sessionDriver;
    v2->_sessionDriver = v3;
  }

  return v2;
}

- (_EXHostViewController)initWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(_EXHostViewController *)self init];
  v6 = v5;
  if (v5)
  {
    [(_EXHostViewController *)v5 setConfiguration:v4];
  }

  return v6;
}

- (void)dealloc
{
  [(_EXHostSessionDriver *)self->_sessionDriver setSession:0];
  v3.receiver = self;
  v3.super_class = _EXHostViewController;
  [(_EXHostViewController *)&v3 dealloc];
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
  v8 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (v8)
  {
    v4 = objc_alloc(MEMORY[0x1E6966CC8]);
    v5 = [v8 extensionIdentity];
    v6 = [v8 instanceIdentifier];
    v7 = [v4 initWithExtensionIdentity:v5 instanceIdentifier:v6];

    [(_EXHostSessionDriver *)self->_sessionDriver startSessionWithProcessConfiguration:v7 configuration:v8];
  }

  else
  {
    [(_EXHostSessionDriver *)self->_sessionDriver startSessionWithProcessConfiguration:0 configuration:0];
  }
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
      [_EXHostViewController setSession:v5];
    }
  }

  [(_EXHostSessionDriver *)self->_sessionDriver setSession:v4];
}

- (void)loadView
{
  v3 = objc_opt_new();
  [(_EXHostViewController *)self setView:v3];

  [(_EXHostViewController *)self embedPlaceholder];
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
  v4 = [(_EXHostViewController *)self embededViewController];
  if (v4 != v10)
  {
    if (v4)
    {
      [(_EXHostViewController *)self setEmbededViewController:0];
      [v4 removeFromParentViewController];
    }

    if (v10)
    {
      v5 = [v10 view];
      [(_EXHostViewController *)self setEmbededViewController:v10];
      v6 = [(_EXHostSessionDriver *)self->_sessionDriver session];
      v7 = [v6 requiresUIKitSceneHosting];

      if (v7)
      {
        [(_EXHostViewController *)self addChildViewController:v10];
        v8 = [(_EXHostViewController *)self view];
        [v8 embedView:v5];
      }

      else
      {
        v9 = [(_EXHostViewController *)self view];
        [v9 embedView:v5];

        [(_EXHostViewController *)self addChildViewController:v10];
      }

      [v10 didMoveToParentViewController:self];
    }

    else
    {
      [(_EXHostViewController *)self embedPlaceholder];
    }
  }
}

- (_UIRemoteSheet)_remoteSheet
{
  v2 = [(_EXHostViewController *)self session];
  v3 = [v2 remoteSheet];

  return v3;
}

- (void)embedPlaceholder
{
  v3 = [(_EXHostViewController *)self placeholderViewController];

  if (v3)
  {
    v6 = [(_EXHostViewController *)self placeholderViewController];
    v4 = [v6 view];
    v5 = [(_EXHostViewController *)self view];
    [v5 embedView:v4];

    [(_EXHostViewController *)self setEmbededViewController:v6];
    [(_EXHostViewController *)self addChildViewController:v6];
  }

  else
  {
    v6 = [(_EXHostViewController *)self view];
    v4 = [(_EXHostViewController *)self placeholderView];
    [v6 embedView:v4];
  }
}

- (_EXHostViewControllerDelegate)delegate
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
  v5 = "/Library/Caches/com.apple.xbs/Sources/ExtensionKit/ExtensionKit/Source/HostViewController/_EXHostViewController.m";
  v6 = 1024;
  v7 = 91;
  _os_log_fault_impl(&dword_1D29CC000, log, OS_LOG_TYPE_FAULT, "%s - %s:%d: Only detached sessions can be set", &v2, 0x1Cu);
  v1 = *MEMORY[0x1E69E9840];
}

@end