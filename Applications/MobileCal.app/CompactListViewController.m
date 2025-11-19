@interface CompactListViewController
- (id)cellFactory;
- (void)showEvent:(id)a3 animated:(BOOL)a4 showMode:(unint64_t)a5 context:(id)a6;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation CompactListViewController

- (void)viewDidAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = CompactListViewController;
  [(ListViewController *)&v7 viewDidAppear:a3];
  v3 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
  {
    v4 = v3;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    *buf = 138543362;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[UserStateLog] State -> %{public}@ viewDidAppear", buf, 0xCu);
  }
}

- (id)cellFactory
{
  if ([(ListViewController *)self showScrubber])
  {
    v2 = objc_opt_new();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)showEvent:(id)a3 animated:(BOOL)a4 showMode:(unint64_t)a5 context:(id)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a6;
  if (-[ListViewController destination](self, "destination") != 2 || (-[ListViewController delegate](self, "delegate"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_opt_respondsToSelector(), v12, (v13 & 1) == 0) || (-[ListViewController delegate](self, "delegate"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 listViewControllerShouldShowEvent:v10 showMode:a5], v14, v15))
  {
    v16.receiver = self;
    v16.super_class = CompactListViewController;
    [(ListViewController *)&v16 showEvent:v10 animated:v8 showMode:a5 context:v11];
  }
}

@end