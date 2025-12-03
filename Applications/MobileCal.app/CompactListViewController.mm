@interface CompactListViewController
- (id)cellFactory;
- (void)showEvent:(id)event animated:(BOOL)animated showMode:(unint64_t)mode context:(id)context;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation CompactListViewController

- (void)viewDidAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = CompactListViewController;
  [(ListViewController *)&v7 viewDidAppear:appear];
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

- (void)showEvent:(id)event animated:(BOOL)animated showMode:(unint64_t)mode context:(id)context
{
  animatedCopy = animated;
  eventCopy = event;
  contextCopy = context;
  if (-[ListViewController destination](self, "destination") != 2 || (-[ListViewController delegate](self, "delegate"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_opt_respondsToSelector(), v12, (v13 & 1) == 0) || (-[ListViewController delegate](self, "delegate"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 listViewControllerShouldShowEvent:eventCopy showMode:mode], v14, v15))
  {
    v16.receiver = self;
    v16.super_class = CompactListViewController;
    [(ListViewController *)&v16 showEvent:eventCopy animated:animatedCopy showMode:mode context:contextCopy];
  }
}

@end