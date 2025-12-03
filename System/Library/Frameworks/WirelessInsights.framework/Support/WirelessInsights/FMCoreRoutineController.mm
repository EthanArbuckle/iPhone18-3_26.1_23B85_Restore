@interface FMCoreRoutineController
- (FMCoreRoutineController)initWithDelegate:(id)delegate;
- (FMCoreRoutineControllerDelegate)delegate;
- (void)dealloc;
@end

@implementation FMCoreRoutineController

- (FMCoreRoutineController)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v17.receiver = self;
  v17.super_class = FMCoreRoutineController;
  v5 = [(FMCoreRoutineController *)&v17 init];
  [(FMCoreRoutineController *)v5 setDelegate:delegateCopy];
  v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  [(FMCoreRoutineController *)v5 setQueue:dispatch_queue_create("com.apple.wirelessinsightsd.FederatedMobility.CoreRoutineController", v6)];
  if ([(FMCoreRoutineController *)v5 queue])
  {
    out_token = -1;
    objc_initWeak(&location, v5);
    uTF8String = [RTLocationsOfInterestDidClearNotification UTF8String];
    queue = [(FMCoreRoutineController *)v5 queue];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000ECB3C;
    handler[3] = &unk_1002AB2D8;
    objc_copyWeak(&v14, &location);
    notify_register_dispatch(uTF8String, &out_token, queue, handler);
    [(FMCoreRoutineController *)v5 setNotificationToken:out_token];
    notificationToken = [(FMCoreRoutineController *)v5 notificationToken];
    v10 = *(qword_1002DBE98 + 136);
    if (notificationToken == -1)
    {
      if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
      {
        sub_100208B94();
      }

      v11 = 0;
    }

    else
    {
      if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
      {
        sub_100208B60();
      }

      v11 = v5;
    }

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)dealloc
{
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_100208C08();
  }

  if ([(FMCoreRoutineController *)self notificationToken]!= -1)
  {
    notify_cancel([(FMCoreRoutineController *)self notificationToken]);
    [(FMCoreRoutineController *)self setNotificationToken:0xFFFFFFFFLL];
  }

  if ([(FMCoreRoutineController *)self queue])
  {
    dispatch_release([(FMCoreRoutineController *)self queue]);
  }

  v3.receiver = self;
  v3.super_class = FMCoreRoutineController;
  [(FMCoreRoutineController *)&v3 dealloc];
}

- (FMCoreRoutineControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end