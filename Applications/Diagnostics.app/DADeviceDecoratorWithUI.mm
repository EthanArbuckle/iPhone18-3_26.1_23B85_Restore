@interface DADeviceDecoratorWithUI
+ (id)decorateWithDevice:(id)a3;
- (BOOL)isKindOfClass:(Class)a3;
- (DADeviceDecoratorWithUI)initWithDevice:(id)a3;
- (DADeviceWithUIDelegate)delegate;
- (DKBrightnessResponder)brightnessResponder;
- (DKStatusBarResponder)statusBarResponder;
- (DKUserAlertResponder)userAlertResponder;
- (DKViewControllerDelegate)viewControllerDelegate;
- (DKVolumeHUDResponder)volumeHUDResponder;
- (id)forwardingTargetForSelector:(SEL)a3;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)_reset;
- (void)_startInterceptingButtonEvents;
- (void)connect;
- (void)end;
- (void)executeTestWithTestAttributes:(id)a3 parameters:(id)a4 completion:(id)a5;
- (void)forwardInvocation:(id)a3;
- (void)handleButtonEvent:(unint64_t)a3;
- (void)idle;
- (void)requestSuiteFinishWithCompletionHandler:(id)a3;
- (void)requestSuiteStart:(id)a3 completionHandler:(id)a4;
- (void)resumeTests;
- (void)setBrightnessResponder:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setStatusBarResponder:(id)a3;
- (void)setUserAlertResponder:(id)a3;
- (void)setViewControllerDelegate:(id)a3;
- (void)setVolumeHUDResponder:(id)a3;
- (void)start;
- (void)startInOperationMode:(int64_t)a3;
- (void)suspendTests;
@end

@implementation DADeviceDecoratorWithUI

+ (id)decorateWithDevice:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithDevice:v4];

  return v5;
}

- (DADeviceDecoratorWithUI)initWithDevice:(id)a3
{
  objc_storeStrong(&self->_original, a3);
  v5 = a3;
  v6 = [DATestQueue testQueueWithDelegate:self];
  [(DADeviceMaterialized *)self->_original setTestQueue:v6];

  v7 = objc_opt_new();
  buttonEventMonitor = self->_buttonEventMonitor;
  self->_buttonEventMonitor = v7;

  self->_ignoreButtonEvents = 0;
  return self;
}

- (DADeviceWithUIDelegate)delegate
{
  v2 = [(DADeviceDecoratorWithUI *)self original];
  v3 = [v2 delegate];

  return v3;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  v5 = [(DADeviceDecoratorWithUI *)self original];
  [v5 setDelegate:v4];
}

- (id)forwardingTargetForSelector:(SEL)a3
{
  v5 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a3);
    v7 = [(DADeviceDecoratorWithUI *)self original];
    v11 = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Fast forwarding %@ to %@", &v11, 0x16u);
  }

  v8 = [(DADeviceDecoratorWithUI *)self original];
  if (objc_opt_respondsToSelector())
  {
    self = v8;
  }

  v9 = self;

  return self;
}

- (void)forwardInvocation:(id)a3
{
  v4 = a3;
  v5 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector([v4 selector]);
    v7 = [(DADeviceDecoratorWithUI *)self original];
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Slow forwarding %@ to %@", &v9, 0x16u);
  }

  v8 = [(DADeviceDecoratorWithUI *)self original];
  [v4 invokeWithTarget:v8];
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v8.receiver = self;
  v8.super_class = DADeviceDecoratorWithUI;
  v5 = [(DADeviceDecoratorWithUI *)&v8 methodSignatureForSelector:?];
  if (!v5)
  {
    v6 = [(DADeviceDecoratorWithUI *)self original];
    v5 = [v6 methodSignatureForSelector:a3];
  }

  return v5;
}

- (BOOL)isKindOfClass:(Class)a3
{
  if (objc_opt_class() == a3)
  {
    isKindOfClass = 1;
  }

  else
  {
    v4 = [(DADeviceDecoratorWithUI *)self original];
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (void)setViewControllerDelegate:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_viewControllerDelegate, v4);
  v5 = [(DADeviceDecoratorWithUI *)self diagnosticsManager];
  [v5 setViewControllerDelegate:v4];
}

- (void)setVolumeHUDResponder:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_volumeHUDResponder, v4);
  v5 = [(DADeviceDecoratorWithUI *)self diagnosticsManager];
  [v5 setVolumeHUDResponder:v4];
}

- (void)setBrightnessResponder:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_brightnessResponder, v4);
  v5 = [(DADeviceDecoratorWithUI *)self diagnosticsManager];
  [v5 setBrightnessResponder:v4];
}

- (void)setUserAlertResponder:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_userAlertResponder, v4);
  v5 = [(DADeviceDecoratorWithUI *)self diagnosticsManager];
  [v5 setUserAlertResponder:v4];
}

- (void)setStatusBarResponder:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_statusBarResponder, v4);
  v5 = [(DADeviceDecoratorWithUI *)self diagnosticsManager];
  [v5 setStatusBarResponder:v4];
}

- (void)connect
{
  v2 = [(DADeviceDecoratorWithUI *)self original];
  [v2 connect];
}

- (void)start
{
  BKSDisplayBrightnessGetCurrent();
  [(DADeviceDecoratorWithUI *)self setOriginalScreenBrightness:?];
  v3 = [(DADeviceDecoratorWithUI *)self buttonEventMonitor];

  if (!v3)
  {
    v4 = objc_alloc_init(DSHardwareButtonEventMonitor);
    [(DADeviceDecoratorWithUI *)self setButtonEventMonitor:v4];
  }

  v5 = [(DADeviceDecoratorWithUI *)self original];
  [v5 start];
}

- (void)idle
{
  v2 = [(DADeviceDecoratorWithUI *)self original];
  [v2 idle];
}

- (void)suspendTests
{
  v2 = [(DADeviceDecoratorWithUI *)self original];
  [v2 suspendTests];
}

- (void)resumeTests
{
  v2 = [(DADeviceDecoratorWithUI *)self original];
  [v2 resumeTests];
}

- (void)end
{
  v3 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002B648;
  block[3] = &unk_1001BC580;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)requestSuiteStart:(id)a3 completionHandler:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(DADeviceDecoratorWithUI *)self original];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(DADeviceDecoratorWithUI *)self original];
    [v9 requestSuiteStart:v10 completionHandler:v6];
  }
}

- (void)requestSuiteFinishWithCompletionHandler:(id)a3
{
  v7 = a3;
  v4 = [(DADeviceDecoratorWithUI *)self original];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(DADeviceDecoratorWithUI *)self original];
    [v6 requestSuiteFinishWithCompletionHandler:v7];
  }
}

- (void)startInOperationMode:(int64_t)a3
{
  v5 = [(DADeviceDecoratorWithUI *)self original];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(DADeviceDecoratorWithUI *)self original];
    [v7 startInOperationMode:a3];
  }
}

- (void)executeTestWithTestAttributes:(id)a3 parameters:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v24 = "[DADeviceDecoratorWithUI executeTestWithTestAttributes:parameters:completion:]";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v12 = [(DADeviceDecoratorWithUI *)self delegate];
  v13 = [v8 identifier];
  v14 = [v8 isHeadless];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10002BA78;
  v18[3] = &unk_1001BD628;
  objc_copyWeak(&v22, buf);
  v18[4] = self;
  v15 = v8;
  v19 = v15;
  v16 = v9;
  v20 = v16;
  v17 = v10;
  v21 = v17;
  [v12 device:self shouldStartTestWithTestId:v13 fullscreen:v14 ^ 1 response:v18];

  objc_destroyWeak(&v22);
  objc_destroyWeak(buf);
}

- (void)handleButtonEvent:(unint64_t)a3
{
  if (![(DADeviceDecoratorWithUI *)self ignoreButtonEvents])
  {
    if (a3 >= 0x8000)
    {
      if (a3 >= 0x200000)
      {
        if (a3 > 0x7FFFFFF)
        {
          if (a3 == 0x20000000)
          {
            goto LABEL_25;
          }

          v5 = 0x8000000;
        }

        else
        {
          if (a3 == 0x200000)
          {
            goto LABEL_25;
          }

          v5 = 0x2000000;
        }

        if (a3 != v5)
        {
          return;
        }

LABEL_25:
        objc_initWeak(&location, self);
        v6 = dispatch_get_global_queue(0, 0);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10002BE5C;
        block[3] = &unk_1001BD650;
        block[4] = self;
        objc_copyWeak(&v8, &location);
        dispatch_async(v6, block);

        objc_destroyWeak(&v8);
        objc_destroyWeak(&location);
        return;
      }

      if (a3 == 0x8000 || a3 == 0x20000 || a3 == 0x80000)
      {
        goto LABEL_25;
      }
    }

    else
    {
      if (a3 <= 127)
      {
        if (a3 > 0x20 || ((1 << a3) & 0x100000114) == 0)
        {
          return;
        }

        goto LABEL_25;
      }

      if (a3 > 2047)
      {
        if (a3 == 2048 || a3 == 0x2000)
        {
          goto LABEL_25;
        }
      }

      else if (a3 == 128 || a3 == 512)
      {
        goto LABEL_25;
      }
    }
  }
}

- (void)_startInterceptingButtonEvents
{
  objc_initWeak(&location, self);
  v3 = [(DADeviceDecoratorWithUI *)self buttonEventMonitor];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002C080;
  v4[3] = &unk_1001BC698;
  objc_copyWeak(&v5, &location);
  [v3 startWithPriority:26 completion:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_reset
{
  v3 = [(DADeviceDecoratorWithUI *)self buttonEventMonitor];

  if (v3)
  {
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 removeObserver:self name:@"com.apple.Diagnostics.DKViewControllerPresented" object:0];

    v5 = [(DADeviceDecoratorWithUI *)self buttonEventMonitor];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10002C230;
    v7[3] = &unk_1001BC580;
    v7[4] = self;
    [v5 stopWithCompletion:v7];
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10002C284;
  v6[3] = &unk_1001BC580;
  v6[4] = self;
  dispatch_async(&_dispatch_main_q, v6);
  +[DAUserInterruptAlertFactory reset];
}

- (DKVolumeHUDResponder)volumeHUDResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_volumeHUDResponder);

  return WeakRetained;
}

- (DKBrightnessResponder)brightnessResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_brightnessResponder);

  return WeakRetained;
}

- (DKUserAlertResponder)userAlertResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_userAlertResponder);

  return WeakRetained;
}

- (DKStatusBarResponder)statusBarResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_statusBarResponder);

  return WeakRetained;
}

- (DKViewControllerDelegate)viewControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_viewControllerDelegate);

  return WeakRetained;
}

@end