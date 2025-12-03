@interface GAXUnmanagedASAMViewController
- (GAXUnmanagedASAMViewController)initWithApplicationDisplayName:(id)name resultHandler:(id)handler;
- (void)loadView;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation GAXUnmanagedASAMViewController

- (GAXUnmanagedASAMViewController)initWithApplicationDisplayName:(id)name resultHandler:(id)handler
{
  nameCopy = name;
  handlerCopy = handler;
  v10.receiver = self;
  v10.super_class = GAXUnmanagedASAMViewController;
  v8 = [(GAXUnmanagedASAMViewController *)&v10 init];
  if (v8)
  {
    if (!handlerCopy)
    {
      _AXAssert();
    }

    [(GAXUnmanagedASAMViewController *)v8 setResultHandler:handlerCopy];
    [(GAXUnmanagedASAMViewController *)v8 setAppDisplayName:nameCopy];
  }

  return v8;
}

- (void)loadView
{
  v3 = objc_alloc_init(UIView);
  [(GAXUnmanagedASAMViewController *)self setView:v3];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  if ((AXDeviceIsUnlocked() & 1) == 0)
  {
    v5 = GAXLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_33D84(v5);
    }
  }

  v6.receiver = self;
  v6.super_class = GAXUnmanagedASAMViewController;
  [(GAXUnmanagedASAMViewController *)&v6 viewWillAppear:appearCopy];
}

- (void)viewDidAppear:(BOOL)appear
{
  v19.receiver = self;
  v19.super_class = GAXUnmanagedASAMViewController;
  [(GAXUnmanagedASAMViewController *)&v19 viewDidAppear:appear];
  v4 = AXDeviceGetLocalizedShortModelName();
  v5 = GAXLocString(@"APP_SELF_LOCK_CONFIRM_MESSAGE");
  appDisplayName = [(GAXUnmanagedASAMViewController *)self appDisplayName];
  v7 = [NSString stringWithFormat:v5, appDisplayName, v4];

  v8 = GAXLocString(@"APP_SELF_LOCK_CONFIRM_TITLE");
  v9 = [UIAlertController alertControllerWithTitle:v8 message:v7 preferredStyle:1];

  v10 = GAXLocString(@"APP_SELF_LOCK_ALLOW_BUTTON_LABEL");
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_2B82C;
  v18[3] = &unk_5E008;
  v18[4] = self;
  v11 = [UIAlertAction actionWithTitle:v10 style:0 handler:v18];
  [v9 addAction:v11];

  v12 = GAXLocString(@"APP_SELF_LOCK_DENY_BUTTON_LABEL");
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_2B888;
  v17[3] = &unk_5E008;
  v17[4] = self;
  v13 = [UIAlertAction actionWithTitle:v12 style:1 handler:v17];
  [v9 addAction:v13];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2B8E4;
  block[3] = &unk_5CED0;
  block[4] = self;
  v16 = v9;
  v14 = v9;
  dispatch_async(&_dispatch_main_q, block);
}

@end