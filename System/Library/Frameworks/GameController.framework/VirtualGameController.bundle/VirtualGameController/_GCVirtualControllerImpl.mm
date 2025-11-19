@interface _GCVirtualControllerImpl
+ (void)forceVirtualController;
- (GCController)controller;
- (_GCVirtualControllerImpl)initWithConfiguration:(id)a3;
- (id)findKeyWindow;
- (void)connectWithReplyHandler:(id)a3;
- (void)dealloc;
- (void)disconnect;
- (void)refreshViewForKeyWindow;
- (void)updateConfigurationForElement:(id)a3 configuration:(id)a4;
@end

@implementation _GCVirtualControllerImpl

- (_GCVirtualControllerImpl)initWithConfiguration:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = _GCVirtualControllerImpl;
  v6 = [(_GCVirtualControllerImpl *)&v14 init];
  if (!v5 && GCCurrentProcessLinkedOnAfter())
  {
    [_GCVirtualControllerImpl initWithConfiguration:];
  }

  objc_storeStrong(&v6->_configuration, a3);
  v7 = [[GCTouchController alloc] initWithConfiguration:v5];
  controller = v6->_controller;
  v6->_controller = v7;

  if (([v5 isHidden] & 1) == 0)
  {
    v9 = [GCControllerView alloc];
    v10 = +[UIScreen mainScreen];
    [v10 bounds];
    v11 = [(GCControllerView *)v9 initWithFrame:v5 configuration:?];
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

- (void)connectWithReplyHandler:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = 0;
  atomic_compare_exchange_strong(&s_connected, &v6, self);
  if (v6)
  {
    if (v4)
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
    v10 = v4;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)disconnect
{
  v4 = self;
  atomic_compare_exchange_strong(&s_connected, &v4, 0);
  if (v4 == self)
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

- (void)updateConfigurationForElement:(id)a3 configuration:(id)a4
{
  v10 = a3;
  v6 = a4;
  controllerView = self->_controllerView;
  if (!controllerView)
  {
    [_GCVirtualControllerImpl updateConfigurationForElement:configuration:];
  }

  v8 = [(GCControllerView *)controllerView getConfigurationForElement:v10];
  v9 = v6[2](v6, v8);

  [(GCControllerView *)self->_controllerView setConfigurationForElement:v10 configuration:v9];
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
  if (a1)
  {
    v1 = +[UIApplication sharedApplication];
    v2 = [v1 windows];

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = v2;
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
            v9 = v8;

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

    v9 = [v3 firstObject];
LABEL_12:
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)refreshViewForKeyWindow
{
  if (a1)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __61___GCVirtualControllerImpl_Internal__refreshViewForKeyWindow__block_invoke;
    block[3] = &unk_10730;
    block[4] = a1;
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