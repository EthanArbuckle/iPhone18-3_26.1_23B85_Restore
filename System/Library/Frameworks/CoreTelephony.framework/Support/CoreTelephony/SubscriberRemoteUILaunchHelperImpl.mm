@interface SubscriberRemoteUILaunchHelperImpl
- (SubscriberRemoteUILaunchHelperImpl)initWithQueue:(const queue *)a3 logger:(const void *)a4;
- (id).cxx_construct;
- (void)_releaseRemoteAlertHandle;
- (void)bootstrapWithDelegate:(weak_ptr<SubscriberUserAlertManagerInterface>)a3;
- (void)dismissSimUnlockView;
- (void)launchSimSetupViewWithOptions:(unsigned __int8)a3 userInfo:(id)a4;
- (void)launchSimUnlockViewForSlot:(int)a3 suppressCancellation:(BOOL)a4;
- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4;
- (void)remoteAlertHandleDidActivate:(id)a3;
- (void)remoteAlertHandleDidDeactivate:(id)a3;
- (void)start;
@end

@implementation SubscriberRemoteUILaunchHelperImpl

- (SubscriberRemoteUILaunchHelperImpl)initWithQueue:(const queue *)a3 logger:(const void *)a4
{
  v11.receiver = self;
  v11.super_class = SubscriberRemoteUILaunchHelperImpl;
  v6 = [(SubscriberRemoteUILaunchHelperImpl *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->fQueue.fObj.fObj, a3->fObj.fObj);
    v7->logger = a4;
    fRemoteAlertHandle = v7->fRemoteAlertHandle;
    v7->fRemoteAlertHandle = 0;

    fBuddySIMUnlockStateHandle = v7->fBuddySIMUnlockStateHandle;
    v7->fBuddySIMUnlockStateHandle = 0;
  }

  return v7;
}

- (void)bootstrapWithDelegate:(weak_ptr<SubscriberUserAlertManagerInterface>)a3
{
  v4 = *a3.__ptr_;
  *a3.__ptr_ = 0;
  *(a3.__ptr_ + 1) = 0;
  cntrl = self->fDelegate.__cntrl_;
  self->fDelegate = v4;
  if (cntrl)
  {
    std::__shared_weak_count::__release_weak(cntrl);
  }

  objc_initWeak(&location, self);
  v6 = [BYTelephonyStateNotifier alloc];
  v7 = sub_100032AC8(&self->fQueue.fObj.fObj);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_101423F84;
  v12[3] = &unk_101F3A770;
  objc_copyWeak(&v13, &location);
  v12[4] = self;
  v8 = [v6 initWithNotificationQueue:v7 notificationBlock:v12];
  fBuddySIMUnlockStateHandle = self->fBuddySIMUnlockStateHandle;
  self->fBuddySIMUnlockStateHandle = v8;

  v10 = sub_100032AC8(self->logger);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = self->fBuddySIMUnlockStateHandle;
    *buf = 134217984;
    v16 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I registered for SIM unlock state notification, handle (%p)", buf, 0xCu);
  }

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)start
{
  v3 = [(BYTelephonyStateNotifier *)self->fBuddySIMUnlockStateHandle currentSIMUnlockState];
  v4 = sub_100032AC8(self->logger);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "BYTelephonySIMUnlockStateUnknown";
    if (v3 == 1)
    {
      v5 = "BYTelephonySIMUnlockStateAllowed";
    }

    if (v3 == 2)
    {
      v5 = "BYTelephonySIMUnlockStateDisallowed";
    }

    v10 = 136315138;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I initial SIM unlock state: %s", &v10, 0xCu);
  }

  cntrl = self->fDelegate.__cntrl_;
  if (cntrl)
  {
    v7 = std::__shared_weak_count::lock(cntrl);
    if (v7)
    {
      ptr = self->fDelegate.__ptr_;
      if (ptr)
      {
        (*(*ptr + 32))(ptr, v3 == 1);
LABEL_15:
        sub_100004A34(v7);
        return;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v9 = sub_100032AC8(self->logger);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v10) = 0;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "delegate is invalid", &v10, 2u);
  }

  if (v7)
  {
    goto LABEL_15;
  }
}

- (void)launchSimSetupViewWithOptions:(unsigned __int8)a3 userInfo:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = @"TSSIMSetupSupportViewController";
  if (v4)
  {
    v8 = @"SIM Device Info Flow";
  }

  else
  {
    v7 = @"TSSIMUnlockViewController";
    v8 = @"SIM Unlock Flow";
  }

  if (v4)
  {
    v9 = 0;
  }

  else
  {
    v9 = self;
  }

  v10 = v7;
  v11 = v8;
  v12 = v9;
  v13 = [RemoteUILaunchHelper launchRemoteUI:@"com.apple.SIMSetupUIService" viewController:v10 reason:v11 userInfo:v6 observer:v12];
  fRemoteAlertHandle = self->fRemoteAlertHandle;
  self->fRemoteAlertHandle = v13;

  v15 = sub_100032AC8(self->logger);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = self->fRemoteAlertHandle;
    v17 = 134217984;
    v18 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I remote alert activation requested (%p)", &v17, 0xCu);
  }
}

- (void)launchSimUnlockViewForSlot:(int)a3 suppressCancellation:(BOOL)a4
{
  v4 = a4;
  v7 = a3 == 2;
  v8 = objc_opt_new();
  if (a3 == 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2 * v7;
  }

  v10 = [NSNumber numberWithInteger:v9];
  [v8 setObject:v10 forKey:kCTSubscriberUnlockPromptReasonKey];

  v11 = [NSNumber numberWithBool:v4];
  [v8 setObject:v11 forKey:kCTSubscriberSuppressUnlockCancellationKey];

  v12 = [RemoteUILaunchHelper launchRemoteUI:@"com.apple.SIMSetupUIService" viewController:@"TSSIMUnlockViewController" reason:@"SIM Unlock Flow" userInfo:v8 observer:self];
  fRemoteAlertHandle = self->fRemoteAlertHandle;
  self->fRemoteAlertHandle = v12;

  v14 = sub_100032AC8(self->logger);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = self->fRemoteAlertHandle;
    v16 = 134217984;
    v17 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I remote alert activation requested (%p)", &v16, 0xCu);
  }
}

- (void)dismissSimUnlockView
{
  fRemoteAlertHandle = self->fRemoteAlertHandle;
  if (fRemoteAlertHandle && [(SBSRemoteAlertHandle *)fRemoteAlertHandle isValid])
  {
    [(SBSRemoteAlertHandle *)self->fRemoteAlertHandle invalidate];
    v4 = sub_100032AC8(self->logger);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = self->fRemoteAlertHandle;
      v9 = 134217984;
      v10 = v5;
      v6 = "#I remote alert invalidation requested (%p)";
      v7 = v4;
      v8 = 12;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v6, &v9, v8);
    }
  }

  else
  {
    v4 = sub_100032AC8(self->logger);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      v6 = "#I remote alert is not valid";
      v7 = v4;
      v8 = 2;
      goto LABEL_7;
    }
  }
}

- (void)remoteAlertHandleDidActivate:(id)a3
{
  v4 = a3;
  v5 = sub_100032AC8(&self->fQueue.fObj.fObj);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_101424818;
  v7[3] = &unk_101F0F6C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)remoteAlertHandleDidDeactivate:(id)a3
{
  v4 = a3;
  v5 = sub_100032AC8(&self->fQueue.fObj.fObj);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1014249E8;
  v7[3] = &unk_101F0F6C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100032AC8(&self->fQueue.fObj.fObj);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_101424CC8;
  block[3] = &unk_101EA6A98;
  v12 = v7;
  v13 = self;
  v14 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

- (void)_releaseRemoteAlertHandle
{
  fRemoteAlertHandle = self->fRemoteAlertHandle;
  self->fRemoteAlertHandle = 0;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 3) = 0;
  *(self + 4) = 0;
  return self;
}

@end