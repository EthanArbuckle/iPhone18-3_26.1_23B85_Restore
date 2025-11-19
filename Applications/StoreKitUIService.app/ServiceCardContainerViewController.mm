@interface ServiceCardContainerViewController
- (CardControllerDismissalDelegate)dismissalDelegate;
- (ServiceCardContainerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)dealloc;
- (void)loadView;
- (void)setChildViewController:(id)a3;
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
  v3.receiver = self;
  v3.super_class = ServiceCardContainerViewController;
  [(ServiceCardContainerViewController *)&v3 viewDidLoad];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v5 = self;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%{public}@: Start.", buf, 0xCu);
  }

  self->_didDisappear = 0;
}

- (void)loadView
{
  v4 = objc_alloc_init(UIView);
  v3 = +[UIColor clearColor];
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
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v5 = self;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%{public}@: Dealloc.", buf, 0xCu);
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

@end