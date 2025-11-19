@interface JSAWindowManager
- (CGSize)keyWindowSize;
- (JSAWindowManager)initWithWindowProvider:(id)a3;
- (UIWindow)keyWindow;
- (id)downloadQueue:(id)a3 viewControllerToPresentAuthenticateUIForRequest:(id)a4;
- (id)downloadQueue:(id)a3 viewControllerToPresentDialogUIForRequest:(id)a4;
- (id)downloadQueue:(id)a3 viewControllerToPresentEngagementUIForRequest:(id)a4;
- (id)windowFromOptions:(id)a3;
- (void)_keyWindowDidChange:(uint64_t)a1;
- (void)dealloc;
- (void)updateWindowSizeIfNeeded:(id)a3;
@end

@implementation JSAWindowManager

- (JSAWindowManager)initWithWindowProvider:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = JSAWindowManager;
  v6 = [(JSAWindowManager *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_windowProvider, a3);
    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:v7 selector:"_keyWindowDidChange:" name:UIWindowDidBecomeKeyNotification object:0];

    [JSAWindowManager _keyWindowDidChange:]_0(v7);
  }

  return v7;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = JSAWindowManager;
  [(JSAWindowManager *)&v4 dealloc];
}

- (id)windowFromOptions:(id)a3
{
  v4 = a3;
  v5 = [(JSAWindowManager *)self windowProvider];
  v6 = [v5 windowFromOptions:v4];

  if (!v6)
  {
    v6 = [(JSAWindowManager *)self keyWindow];
  }

  return v6;
}

- (void)updateWindowSizeIfNeeded:(id)a3
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_2858;
  v8[3] = &unk_B2128;
  v4 = a3;
  v9 = v4;
  v10 = self;
  v5 = objc_retainBlock(v8);
  if (v5)
  {
    if (+[NSThread isMainThread])
    {
      (v5[2])(v5);
    }

    else
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_2980;
      block[3] = &unk_B2100;
      v7 = v5;
      dispatch_async(&_dispatch_main_q, block);
    }
  }
}

- (id)downloadQueue:(id)a3 viewControllerToPresentAuthenticateUIForRequest:(id)a4
{
  v4 = [(JSAWindowManager *)self keyWindow:a3];
  v5 = [UIViewController jsa_topMostViewControllerForWindow:v4];

  return v5;
}

- (id)downloadQueue:(id)a3 viewControllerToPresentDialogUIForRequest:(id)a4
{
  v4 = [(JSAWindowManager *)self keyWindow:a3];
  v5 = [UIViewController jsa_topMostViewControllerForWindow:v4];

  return v5;
}

- (id)downloadQueue:(id)a3 viewControllerToPresentEngagementUIForRequest:(id)a4
{
  v4 = [(JSAWindowManager *)self keyWindow:a3];
  v5 = [UIViewController jsa_topMostViewControllerForWindow:v4];

  return v5;
}

- (UIWindow)keyWindow
{
  WeakRetained = objc_loadWeakRetained(&self->_keyWindow);

  return WeakRetained;
}

- (CGSize)keyWindowSize
{
  objc_copyStruct(v4, &self->_keyWindowSize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)_keyWindowDidChange:(uint64_t)a1
{
  if (a1)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_25D4;
    v4[3] = &unk_B20D8;
    v4[4] = a1;
    v1 = objc_retainBlock(v4);
    if (v1)
    {
      if (+[NSThread isMainThread])
      {
        (v1[2])(v1);
      }

      else
      {
        v2[0] = _NSConcreteStackBlock;
        v2[1] = 3221225472;
        v2[2] = sub_2724;
        v2[3] = &unk_B2100;
        v3 = v1;
        dispatch_async(&_dispatch_main_q, v2);
      }
    }
  }
}

@end