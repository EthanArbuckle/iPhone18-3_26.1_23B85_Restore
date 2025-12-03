@interface TSScreenLockObserver
- (TSScreenLockObserver)initWithDelegate:(id)delegate;
- (TSScreenLockObserverDelegate)delegate;
- (void)registerForLockNotifications;
- (void)unregisterFromLockNotifications;
@end

@implementation TSScreenLockObserver

- (TSScreenLockObserver)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = TSScreenLockObserver;
  v5 = [(TSScreenLockObserver *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(TSScreenLockObserver *)v5 setDelegate:delegateCopy];
    v6->_notifyToken = -1;
  }

  return v6;
}

- (void)registerForLockNotifications
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000036FC;
  v5[3] = &unk_10001C6E8;
  v5[4] = self;
  v3 = objc_retainBlock(v5);
  if (notify_register_dispatch(kSBSLockStateNotifyKey, &self->_notifyToken, &_dispatch_main_q, v3))
  {
    v4 = sub_10000C1BC();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10000ECD8(v4);
    }

    self->_notifyToken = -1;
  }
}

- (void)unregisterFromLockNotifications
{
  notifyToken = self->_notifyToken;
  if (notifyToken != -1)
  {
    notify_cancel(notifyToken);
    self->_notifyToken = -1;
  }
}

- (TSScreenLockObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end