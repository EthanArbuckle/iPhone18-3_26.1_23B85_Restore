@interface DADeviceDecoratorWithUI
+ (id)decorateWithDevice:(id)device;
- (BOOL)isKindOfClass:(Class)class;
- (DADeviceDecoratorWithUI)initWithDevice:(id)device;
- (DADeviceWithUIDelegate)delegate;
- (DKBrightnessResponder)brightnessResponder;
- (DKStatusBarResponder)statusBarResponder;
- (DKUserAlertResponder)userAlertResponder;
- (DKViewControllerDelegate)viewControllerDelegate;
- (DKVolumeHUDResponder)volumeHUDResponder;
- (id)forwardingTargetForSelector:(SEL)selector;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)_reset;
- (void)_startInterceptingButtonEvents;
- (void)connect;
- (void)end;
- (void)executeTestWithTestAttributes:(id)attributes parameters:(id)parameters completion:(id)completion;
- (void)forwardInvocation:(id)invocation;
- (void)handleButtonEvent:(unint64_t)event;
- (void)idle;
- (void)requestSuiteFinishWithCompletionHandler:(id)handler;
- (void)requestSuiteStart:(id)start completionHandler:(id)handler;
- (void)resumeTests;
- (void)setBrightnessResponder:(id)responder;
- (void)setDelegate:(id)delegate;
- (void)setStatusBarResponder:(id)responder;
- (void)setUserAlertResponder:(id)responder;
- (void)setViewControllerDelegate:(id)delegate;
- (void)setVolumeHUDResponder:(id)responder;
- (void)start;
- (void)startInOperationMode:(int64_t)mode;
- (void)suspendTests;
@end

@implementation DADeviceDecoratorWithUI

+ (id)decorateWithDevice:(id)device
{
  deviceCopy = device;
  v5 = [[self alloc] initWithDevice:deviceCopy];

  return v5;
}

- (DADeviceDecoratorWithUI)initWithDevice:(id)device
{
  objc_storeStrong(&self->_original, device);
  deviceCopy = device;
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
  original = [(DADeviceDecoratorWithUI *)self original];
  delegate = [original delegate];

  return delegate;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  original = [(DADeviceDecoratorWithUI *)self original];
  [original setDelegate:delegateCopy];
}

- (id)forwardingTargetForSelector:(SEL)selector
{
  v5 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(selector);
    original = [(DADeviceDecoratorWithUI *)self original];
    v11 = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = original;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Fast forwarding %@ to %@", &v11, 0x16u);
  }

  original2 = [(DADeviceDecoratorWithUI *)self original];
  if (objc_opt_respondsToSelector())
  {
    self = original2;
  }

  selfCopy = self;

  return self;
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  v5 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector([invocationCopy selector]);
    original = [(DADeviceDecoratorWithUI *)self original];
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = original;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Slow forwarding %@ to %@", &v9, 0x16u);
  }

  original2 = [(DADeviceDecoratorWithUI *)self original];
  [invocationCopy invokeWithTarget:original2];
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v8.receiver = self;
  v8.super_class = DADeviceDecoratorWithUI;
  v5 = [(DADeviceDecoratorWithUI *)&v8 methodSignatureForSelector:?];
  if (!v5)
  {
    original = [(DADeviceDecoratorWithUI *)self original];
    v5 = [original methodSignatureForSelector:selector];
  }

  return v5;
}

- (BOOL)isKindOfClass:(Class)class
{
  if (objc_opt_class() == class)
  {
    isKindOfClass = 1;
  }

  else
  {
    original = [(DADeviceDecoratorWithUI *)self original];
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (void)setViewControllerDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_storeWeak(&self->_viewControllerDelegate, delegateCopy);
  diagnosticsManager = [(DADeviceDecoratorWithUI *)self diagnosticsManager];
  [diagnosticsManager setViewControllerDelegate:delegateCopy];
}

- (void)setVolumeHUDResponder:(id)responder
{
  responderCopy = responder;
  objc_storeWeak(&self->_volumeHUDResponder, responderCopy);
  diagnosticsManager = [(DADeviceDecoratorWithUI *)self diagnosticsManager];
  [diagnosticsManager setVolumeHUDResponder:responderCopy];
}

- (void)setBrightnessResponder:(id)responder
{
  responderCopy = responder;
  objc_storeWeak(&self->_brightnessResponder, responderCopy);
  diagnosticsManager = [(DADeviceDecoratorWithUI *)self diagnosticsManager];
  [diagnosticsManager setBrightnessResponder:responderCopy];
}

- (void)setUserAlertResponder:(id)responder
{
  responderCopy = responder;
  objc_storeWeak(&self->_userAlertResponder, responderCopy);
  diagnosticsManager = [(DADeviceDecoratorWithUI *)self diagnosticsManager];
  [diagnosticsManager setUserAlertResponder:responderCopy];
}

- (void)setStatusBarResponder:(id)responder
{
  responderCopy = responder;
  objc_storeWeak(&self->_statusBarResponder, responderCopy);
  diagnosticsManager = [(DADeviceDecoratorWithUI *)self diagnosticsManager];
  [diagnosticsManager setStatusBarResponder:responderCopy];
}

- (void)connect
{
  original = [(DADeviceDecoratorWithUI *)self original];
  [original connect];
}

- (void)start
{
  BKSDisplayBrightnessGetCurrent();
  [(DADeviceDecoratorWithUI *)self setOriginalScreenBrightness:?];
  buttonEventMonitor = [(DADeviceDecoratorWithUI *)self buttonEventMonitor];

  if (!buttonEventMonitor)
  {
    v4 = objc_alloc_init(DSHardwareButtonEventMonitor);
    [(DADeviceDecoratorWithUI *)self setButtonEventMonitor:v4];
  }

  original = [(DADeviceDecoratorWithUI *)self original];
  [original start];
}

- (void)idle
{
  original = [(DADeviceDecoratorWithUI *)self original];
  [original idle];
}

- (void)suspendTests
{
  original = [(DADeviceDecoratorWithUI *)self original];
  [original suspendTests];
}

- (void)resumeTests
{
  original = [(DADeviceDecoratorWithUI *)self original];
  [original resumeTests];
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

- (void)requestSuiteStart:(id)start completionHandler:(id)handler
{
  startCopy = start;
  handlerCopy = handler;
  original = [(DADeviceDecoratorWithUI *)self original];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    original2 = [(DADeviceDecoratorWithUI *)self original];
    [original2 requestSuiteStart:startCopy completionHandler:handlerCopy];
  }
}

- (void)requestSuiteFinishWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  original = [(DADeviceDecoratorWithUI *)self original];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    original2 = [(DADeviceDecoratorWithUI *)self original];
    [original2 requestSuiteFinishWithCompletionHandler:handlerCopy];
  }
}

- (void)startInOperationMode:(int64_t)mode
{
  original = [(DADeviceDecoratorWithUI *)self original];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    original2 = [(DADeviceDecoratorWithUI *)self original];
    [original2 startInOperationMode:mode];
  }
}

- (void)executeTestWithTestAttributes:(id)attributes parameters:(id)parameters completion:(id)completion
{
  attributesCopy = attributes;
  parametersCopy = parameters;
  completionCopy = completion;
  v11 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v24 = "[DADeviceDecoratorWithUI executeTestWithTestAttributes:parameters:completion:]";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  delegate = [(DADeviceDecoratorWithUI *)self delegate];
  identifier = [attributesCopy identifier];
  isHeadless = [attributesCopy isHeadless];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10002BA78;
  v18[3] = &unk_1001BD628;
  objc_copyWeak(&v22, buf);
  v18[4] = self;
  v15 = attributesCopy;
  v19 = v15;
  v16 = parametersCopy;
  v20 = v16;
  v17 = completionCopy;
  v21 = v17;
  [delegate device:self shouldStartTestWithTestId:identifier fullscreen:isHeadless ^ 1 response:v18];

  objc_destroyWeak(&v22);
  objc_destroyWeak(buf);
}

- (void)handleButtonEvent:(unint64_t)event
{
  if (![(DADeviceDecoratorWithUI *)self ignoreButtonEvents])
  {
    if (event >= 0x8000)
    {
      if (event >= 0x200000)
      {
        if (event > 0x7FFFFFF)
        {
          if (event == 0x20000000)
          {
            goto LABEL_25;
          }

          v5 = 0x8000000;
        }

        else
        {
          if (event == 0x200000)
          {
            goto LABEL_25;
          }

          v5 = 0x2000000;
        }

        if (event != v5)
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

      if (event == 0x8000 || event == 0x20000 || event == 0x80000)
      {
        goto LABEL_25;
      }
    }

    else
    {
      if (event <= 127)
      {
        if (event > 0x20 || ((1 << event) & 0x100000114) == 0)
        {
          return;
        }

        goto LABEL_25;
      }

      if (event > 2047)
      {
        if (event == 2048 || event == 0x2000)
        {
          goto LABEL_25;
        }
      }

      else if (event == 128 || event == 512)
      {
        goto LABEL_25;
      }
    }
  }
}

- (void)_startInterceptingButtonEvents
{
  objc_initWeak(&location, self);
  buttonEventMonitor = [(DADeviceDecoratorWithUI *)self buttonEventMonitor];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002C080;
  v4[3] = &unk_1001BC698;
  objc_copyWeak(&v5, &location);
  [buttonEventMonitor startWithPriority:26 completion:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_reset
{
  buttonEventMonitor = [(DADeviceDecoratorWithUI *)self buttonEventMonitor];

  if (buttonEventMonitor)
  {
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 removeObserver:self name:@"com.apple.Diagnostics.DKViewControllerPresented" object:0];

    buttonEventMonitor2 = [(DADeviceDecoratorWithUI *)self buttonEventMonitor];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10002C230;
    v7[3] = &unk_1001BC580;
    v7[4] = self;
    [buttonEventMonitor2 stopWithCompletion:v7];
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