@interface ServiceCardContainerViewController
- (CardControllerDismissalDelegate)dismissalDelegate;
- (ServiceCardContainerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)dealloc;
- (void)loadView;
- (void)setChildViewController:(id)controller;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation ServiceCardContainerViewController

- (ServiceCardContainerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v5.receiver = self;
  v5.super_class = ServiceCardContainerViewController;
  result = [(ServiceCardContainerViewController *)&v5 initWithNibName:name bundle:bundle];
  if (result)
  {
    result->_didDisappear = 0;
  }

  return result;
}

- (void)viewDidLoad
{
  v6 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = ServiceCardContainerViewController;
  [(ServiceCardContainerViewController *)&v3 viewDidLoad];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%{public}@: Start.", buf, 0xCu);
  }

  self->_didDisappear = 0;
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = ServiceCardContainerViewController;
  [(ServiceCardContainerViewController *)&v4 viewDidAppear:appear];
  self->_didDisappear = 0;
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v10 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = ServiceCardContainerViewController;
  [(ServiceCardContainerViewController *)&v7 viewDidDisappear:disappear];
  self->_didDisappear = 1;
  WeakRetained = objc_loadWeakRetained(&self->_dismissalDelegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%{public}@: Notifying dismissal.", buf, 0xCu);
    }

    v6 = objc_loadWeakRetained(&self->_dismissalDelegate);
    [v6 cardControllerDidDismiss];
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    [ServiceCardContainerViewController viewDidDisappear:?];
  }
}

- (void)loadView
{
  v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v4 setBackgroundColor:clearColor];

  [v4 setAutoresizingMask:40];
  [(ServiceCardContainerViewController *)self setView:v4];
}

- (void)setChildViewController:(id)controller
{
  controllerCopy = controller;
  childViewController = [(ServiceCardContainerViewController *)self childViewController];

  v6 = controllerCopy;
  if (childViewController != controllerCopy)
  {
    childViewController2 = [(ServiceCardContainerViewController *)self childViewController];
    objc_storeStrong(&self->_childViewController, controller);
    if (childViewController2)
    {
      [childViewController2 willMoveToParentViewController:0];
      view = [childViewController2 view];
      [view removeFromSuperview];

      [childViewController2 removeFromParentViewController];
    }

    if (controllerCopy)
    {
      [(ServiceCardContainerViewController *)self addChildViewController:controllerCopy];
      view2 = [controllerCopy view];
      view3 = [(ServiceCardContainerViewController *)self view];
      [view3 bounds];
      [view2 setFrame:?];

      [view2 setAutoresizingMask:18];
      view4 = [(ServiceCardContainerViewController *)self view];
      [view4 addSubview:view2];

      [controllerCopy didMoveToParentViewController:self];
    }

    v6 = controllerCopy;
  }
}

- (void)dealloc
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%{public}@: Dealloc.", buf, 0xCu);
  }

  v3.receiver = self;
  v3.super_class = ServiceCardContainerViewController;
  [(ServiceCardContainerViewController *)&v3 dealloc];
}

- (CardControllerDismissalDelegate)dismissalDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_dismissalDelegate);

  return WeakRetained;
}

- (void)viewDidDisappear:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 138543362;
  v2 = a1;
  _os_log_debug_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%{public}@: No dismissal delegate.", &v1, 0xCu);
}

@end