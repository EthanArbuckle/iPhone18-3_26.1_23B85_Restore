@interface _EXHostViewController
- (UIView)placeholderView;
- (_EXHostViewController)init;
- (_EXHostViewController)initWithConfiguration:(id)configuration;
- (_EXHostViewControllerConfiguration)configuration;
- (_EXHostViewControllerDelegate)delegate;
- (_EXHostViewControllerSession)session;
- (_UIRemoteSheet)_remoteSheet;
- (void)dealloc;
- (void)embedPlaceholder;
- (void)embedViewController:(id)controller;
- (void)loadView;
- (void)setConfiguration:(id)configuration;
- (void)setSession:(id)session;
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

- (_EXHostViewController)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = [(_EXHostViewController *)self init];
  v6 = v5;
  if (v5)
  {
    [(_EXHostViewController *)v5 setConfiguration:configurationCopy];
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
  session = [(_EXHostSessionDriver *)self->_sessionDriver session];
  configuration = [session configuration];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = configuration;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setConfiguration:(id)configuration
{
  configurationCopy = configuration;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (configurationCopy)
  {
    v4 = objc_alloc(MEMORY[0x1E6966CC8]);
    extensionIdentity = [configurationCopy extensionIdentity];
    instanceIdentifier = [configurationCopy instanceIdentifier];
    v7 = [v4 initWithExtensionIdentity:extensionIdentity instanceIdentifier:instanceIdentifier];

    [(_EXHostSessionDriver *)self->_sessionDriver startSessionWithProcessConfiguration:v7 configuration:configurationCopy];
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

- (void)setSession:(id)session
{
  sessionCopy = session;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (sessionCopy && ([sessionCopy detached] & 1) == 0)
  {
    v5 = _EXDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [_EXHostViewController setSession:v5];
    }
  }

  [(_EXHostSessionDriver *)self->_sessionDriver setSession:sessionCopy];
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

- (void)embedViewController:(id)controller
{
  controllerCopy = controller;
  embededViewController = [(_EXHostViewController *)self embededViewController];
  if (embededViewController != controllerCopy)
  {
    if (embededViewController)
    {
      [(_EXHostViewController *)self setEmbededViewController:0];
      [embededViewController removeFromParentViewController];
    }

    if (controllerCopy)
    {
      view = [controllerCopy view];
      [(_EXHostViewController *)self setEmbededViewController:controllerCopy];
      session = [(_EXHostSessionDriver *)self->_sessionDriver session];
      requiresUIKitSceneHosting = [session requiresUIKitSceneHosting];

      if (requiresUIKitSceneHosting)
      {
        [(_EXHostViewController *)self addChildViewController:controllerCopy];
        view2 = [(_EXHostViewController *)self view];
        [view2 embedView:view];
      }

      else
      {
        view3 = [(_EXHostViewController *)self view];
        [view3 embedView:view];

        [(_EXHostViewController *)self addChildViewController:controllerCopy];
      }

      [controllerCopy didMoveToParentViewController:self];
    }

    else
    {
      [(_EXHostViewController *)self embedPlaceholder];
    }
  }
}

- (_UIRemoteSheet)_remoteSheet
{
  session = [(_EXHostViewController *)self session];
  remoteSheet = [session remoteSheet];

  return remoteSheet;
}

- (void)embedPlaceholder
{
  placeholderViewController = [(_EXHostViewController *)self placeholderViewController];

  if (placeholderViewController)
  {
    placeholderViewController2 = [(_EXHostViewController *)self placeholderViewController];
    view = [placeholderViewController2 view];
    view2 = [(_EXHostViewController *)self view];
    [view2 embedView:view];

    [(_EXHostViewController *)self setEmbededViewController:placeholderViewController2];
    [(_EXHostViewController *)self addChildViewController:placeholderViewController2];
  }

  else
  {
    placeholderViewController2 = [(_EXHostViewController *)self view];
    view = [(_EXHostViewController *)self placeholderView];
    [placeholderViewController2 embedView:view];
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