@interface ServiceAlertController
- (ServiceAlertController)initWithRemoteViewControllerProxy:(id)a3;
- (ServiceAlertDelegate)delegate;
- (void)_disconnectFromAlertView:(id)a3;
- (void)alertView:(id)a3 didDismissWithButtonIndex:(int64_t)a4;
- (void)alertViewCancel:(id)a3;
- (void)dealloc;
- (void)presentAlertForDialog:(id)a3;
@end

@implementation ServiceAlertController

- (ServiceAlertController)initWithRemoteViewControllerProxy:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ServiceAlertController;
  v6 = [(ServiceAlertController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_remoteViewControllerProxy, a3);
  }

  return v7;
}

- (void)dealloc
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_alertViews;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7) setDelegate:0];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8.receiver = self;
  v8.super_class = ServiceAlertController;
  [(ServiceAlertController *)&v8 dealloc];
}

- (void)presentAlertForDialog:(id)a3
{
  v4 = a3;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = self->_alertViews;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v28 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = objc_getAssociatedObject(*(*(&v27 + 1) + 8 * v9), "com.apple.ios.StoreKitUIService.dialog");
      v11 = [v4 isEqual:v10];

      if (v11)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:

    v5 = [UIAlertView _alertViewForSessionWithRemoteViewController:self->_remoteViewControllerProxy];
    objc_setAssociatedObject(v5, "com.apple.ios.StoreKitUIService.dialog", v4, 1);
    [(NSMutableArray *)v5 setDelegate:self];
    v12 = [v4 message];
    [(NSMutableArray *)v5 setMessage:v12];

    v13 = [v4 title];
    [(NSMutableArray *)v5 setTitle:v13];

    v14 = [v4 buttons];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v15 = [v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v24;
      do
      {
        v18 = 0;
        do
        {
          if (*v24 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [*(*(&v23 + 1) + 8 * v18) title];
          [(NSMutableArray *)v5 addButtonWithTitle:v19];

          v18 = v18 + 1;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v16);
    }

    alertViews = self->_alertViews;
    if (!alertViews)
    {
      v21 = objc_alloc_init(NSMutableArray);
      v22 = self->_alertViews;
      self->_alertViews = v21;

      alertViews = self->_alertViews;
    }

    [(NSMutableArray *)alertViews addObject:v5];
    [(NSMutableArray *)v5 show];
  }
}

- (void)alertView:(id)a3 didDismissWithButtonIndex:(int64_t)a4
{
  v6 = a3;
  v11 = objc_getAssociatedObject(v6, "com.apple.ios.StoreKitUIService.dialog");
  [(ServiceAlertController *)self _disconnectFromAlertView:v6];

  v7 = [(ServiceAlertController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v8 = [v11 buttons];
    v9 = v8;
    if ((a4 & 0x8000000000000000) == 0 && [v8 count] > a4)
    {
      v10 = [v9 objectAtIndex:a4];
      [v7 alertController:self alertDidFinishWithButton:v10];
    }
  }
}

- (void)alertViewCancel:(id)a3
{
  [(ServiceAlertController *)self _disconnectFromAlertView:a3];
  v4 = [(ServiceAlertController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 alertController:self alertDidFinishWithButton:0];
  }
}

- (void)_disconnectFromAlertView:(id)a3
{
  v6 = a3;
  if ([objc_opt_class() instancesRespondToSelector:"_target"])
  {
    v4 = [v6 _target];

    v6 = v4;
  }

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:v6 name:@"_UIViewServiceHostedWindowWillDisconnectNotificationName" object:0];
  [v5 removeObserver:v6 name:@"_UIViewServiceRemoteViewControllerWillDisconnectNotificationName" object:0];
  [v6 setDelegate:0];
  [(NSMutableArray *)self->_alertViews removeObjectIdenticalTo:v6];
}

- (ServiceAlertDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end