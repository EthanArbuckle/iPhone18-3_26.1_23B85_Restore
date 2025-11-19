@interface ServiceCardContainerViewController
- (CardControllerDismissalDelegate)dismissalDelegate;
- (ServiceCardContainerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)dealloc;
- (void)loadView;
- (void)setChildViewController:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation ServiceCardContainerViewController

- (ServiceCardContainerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v5.receiver = self;
  v5.super_class = ServiceCardContainerViewController;
  result = [(ServiceCardContainerViewController *)&v5 initWithNibName:a3 bundle:a4];
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
    v5 = self;
    _os_log_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%{public}@: Start.", buf, 0xCu);
  }

  self->_didDisappear = 0;
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = ServiceCardContainerViewController;
  [(ServiceCardContainerViewController *)&v4 viewDidAppear:a3];
  self->_didDisappear = 0;
}

- (void)viewDidDisappear:(BOOL)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = ServiceCardContainerViewController;
  [(ServiceCardContainerViewController *)&v7 viewDidDisappear:a3];
  self->_didDisappear = 1;
  WeakRetained = objc_loadWeakRetained(&self->_dismissalDelegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v9 = self;
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
  v3 = [MEMORY[0x1E69DC888] clearColor];
  [v4 setBackgroundColor:v3];

  [v4 setAutoresizingMask:40];
  [(ServiceCardContainerViewController *)self setView:v4];
}

- (void)setChildViewController:(id)a3
{
  v12 = a3;
  v5 = [(ServiceCardContainerViewController *)self childViewController];

  v6 = v12;
  if (v5 != v12)
  {
    v7 = [(ServiceCardContainerViewController *)self childViewController];
    objc_storeStrong(&self->_childViewController, a3);
    if (v7)
    {
      [v7 willMoveToParentViewController:0];
      v8 = [v7 view];
      [v8 removeFromSuperview];

      [v7 removeFromParentViewController];
    }

    if (v12)
    {
      [(ServiceCardContainerViewController *)self addChildViewController:v12];
      v9 = [v12 view];
      v10 = [(ServiceCardContainerViewController *)self view];
      [v10 bounds];
      [v9 setFrame:?];

      [v9 setAutoresizingMask:18];
      v11 = [(ServiceCardContainerViewController *)self view];
      [v11 addSubview:v9];

      [v12 didMoveToParentViewController:self];
    }

    v6 = v12;
  }
}

- (void)dealloc
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v5 = self;
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