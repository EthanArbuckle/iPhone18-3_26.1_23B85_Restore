@interface _GCVirtualControllerImpl
+ (void)forceVirtualController;
- (GCController)controller;
- (_GCVirtualControllerImpl)initWithConfiguration:(id)configuration;
- (id)findKeyWindow;
- (void)connectWithReplyHandler:(id)handler;
- (void)dealloc;
- (void)disconnect;
- (void)refreshViewForKeyWindow;
- (void)updateConfigurationForElement:(id)element configuration:(id)configuration;
@end

@implementation _GCVirtualControllerImpl

- (_GCVirtualControllerImpl)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v14.receiver = self;
  v14.super_class = _GCVirtualControllerImpl;
  v6 = [(_GCVirtualControllerImpl *)&v14 init];
  if (!configurationCopy && GCCurrentProcessLinkedOnAfter())
  {
    [_GCVirtualControllerImpl initWithConfiguration:];
  }

  objc_storeStrong(&v6->_configuration, configuration);
  v7 = [[GCTouchController alloc] initWithConfiguration:configurationCopy];
  controller = v6->_controller;
  v6->_controller = v7;

  if (([configurationCopy isHidden] & 1) == 0)
  {
    v9 = [GCControllerView alloc];
    v10 = +[UIScreen mainScreen];
    [v10 bounds];
    v11 = [(GCControllerView *)v9 initWithFrame:configurationCopy configuration:?];
    controllerView = v6->_controllerView;
    v6->_controllerView = v11;

    [(GCControllerView *)v6->_controllerView setController:v6->_controller];
  }

  return v6;
}

- (void)dealloc
{
  [(_GCVirtualControllerImpl *)self disconnect];
  v3.receiver = self;
  v3.super_class = _GCVirtualControllerImpl;
  [(_GCVirtualControllerImpl *)&v3 dealloc];
}

- (void)connectWithReplyHandler:(id)handler
{
  handlerCopy = handler;
  v5 = handlerCopy;
  v6 = 0;
  atomic_compare_exchange_strong(&s_connected, &v6, self);
  if (v6)
  {
    if (handlerCopy)
    {
      v11[0] = NSLocalizedDescriptionKey;
      v11[1] = NSLocalizedFailureReasonErrorKey;
      v12[0] = @"Virtual game controller setup failed.";
      v12[1] = @"Another instance of GCVirtualController is already connected.";
      v7 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
      v8 = [NSError gc_VirtualControllerError:v7 userInfo:?];

      (v5)[2](v5, v8);
    }
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __52___GCVirtualControllerImpl_connectWithReplyHandler___block_invoke;
    block[3] = &unk_106E0;
    block[4] = self;
    v10 = handlerCopy;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)disconnect
{
  selfCopy = self;
  atomic_compare_exchange_strong(&s_connected, &selfCopy, 0);
  if (selfCopy == self)
  {
    v13 = v2;
    v14 = v3;
    v6 = self->_controller;
    v7 = self->_controllerView;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = __38___GCVirtualControllerImpl_disconnect__block_invoke;
    v10[3] = &unk_10708;
    v11 = v6;
    v12 = v7;
    v8 = v7;
    v9 = v6;
    dispatch_async(&_dispatch_main_q, v10);
  }
}

- (GCController)controller
{
  if (atomic_load_explicit(&s_connected, memory_order_acquire) == self)
  {
    v3 = self->_controller;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)updateConfigurationForElement:(id)element configuration:(id)configuration
{
  elementCopy = element;
  configurationCopy = configuration;
  controllerView = self->_controllerView;
  if (!controllerView)
  {
    [_GCVirtualControllerImpl updateConfigurationForElement:configuration:];
  }

  v8 = [(GCControllerView *)controllerView getConfigurationForElement:elementCopy];
  v9 = configurationCopy[2](configurationCopy, v8);

  [(GCControllerView *)self->_controllerView setConfigurationForElement:elementCopy configuration:v9];
}

+ (void)forceVirtualController
{
  if (!forceVirtualController_ForcedVirtualController)
  {
    v10 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.GameController"];
    v2 = [v10 arrayForKey:@"GCVirtualConfiguration"];
    v3 = objc_opt_new();
    if (v2)
    {
      [NSSet setWithArray:v2];
    }

    else
    {
      [NSSet setWithObjects:GCInputButtonA, GCInputButtonB, GCInputButtonX, GCInputButtonY, GCInputLeftThumbstick, GCInputRightThumbstick, GCInputLeftShoulder, GCInputRightShoulder, GCInputLeftTrigger, GCInputRightTrigger, 0];
    }
    v4 = ;
    [v3 setElements:v4];

    v5 = [[_GCVirtualControllerImpl alloc] initWithConfiguration:v3];
    [(_GCVirtualControllerImpl *)v5 connectWithReplyHandler:0];
    v6 = forceVirtualController_ForcedVirtualController;
    forceVirtualController_ForcedVirtualController = v5;
    v7 = v5;

    v8 = +[NSNotificationCenter defaultCenter];

    v9 = [v8 addObserverForName:UIWindowDidBecomeKeyNotification object:0 queue:0 usingBlock:&__block_literal_global_1];
  }
}

- (id)findKeyWindow
{
  if (self)
  {
    v1 = +[UIApplication sharedApplication];
    windows = [v1 windows];

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = windows;
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      while (2)
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v11 + 1) + 8 * i);
          if ([v8 isKeyWindow])
          {
            firstObject = v8;

            goto LABEL_12;
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    firstObject = [v3 firstObject];
LABEL_12:
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (void)refreshViewForKeyWindow
{
  if (self)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __61___GCVirtualControllerImpl_Internal__refreshViewForKeyWindow__block_invoke;
    block[3] = &unk_10730;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)initWithConfiguration:.cold.1()
{
  v0 = [NSException exceptionWithName:NSInvalidArgumentException reason:@"*** 'configuration' must not be nil." userInfo:0];
  objc_exception_throw(v0);
}

- (void)updateConfigurationForElement:configuration:.cold.1()
{
  v0 = [NSException exceptionWithName:NSInvalidArgumentException reason:@"*** -updateConfigurationForElement:configuration: may not be called on a GCVirtualController instance configured with 'hidden' = YES." userInfo:0];
  objc_exception_throw(v0);
}

@end