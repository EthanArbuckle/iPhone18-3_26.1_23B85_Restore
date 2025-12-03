@interface SubscriberRemoteUILaunchHelperImpl
- (SubscriberRemoteUILaunchHelperImpl)initWithQueue:(const queue *)queue logger:(const void *)logger;
- (id).cxx_construct;
- (void)_releaseRemoteAlertHandle;
- (void)bootstrapWithDelegate:(weak_ptr<SubscriberUserAlertManagerInterface>)delegate;
- (void)dismissSimUnlockView;
- (void)launchSimSetupViewWithOptions:(unsigned __int8)options userInfo:(id)info;
- (void)launchSimUnlockViewForSlot:(int)slot suppressCancellation:(BOOL)cancellation;
- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error;
- (void)remoteAlertHandleDidActivate:(id)activate;
- (void)remoteAlertHandleDidDeactivate:(id)deactivate;
- (void)start;
@end

@implementation SubscriberRemoteUILaunchHelperImpl

- (SubscriberRemoteUILaunchHelperImpl)initWithQueue:(const queue *)queue logger:(const void *)logger
{
  v11.receiver = self;
  v11.super_class = SubscriberRemoteUILaunchHelperImpl;
  v6 = [(SubscriberRemoteUILaunchHelperImpl *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->fQueue.fObj.fObj, queue->fObj.fObj);
    v7->logger = logger;
    fRemoteAlertHandle = v7->fRemoteAlertHandle;
    v7->fRemoteAlertHandle = 0;

    fBuddySIMUnlockStateHandle = v7->fBuddySIMUnlockStateHandle;
    v7->fBuddySIMUnlockStateHandle = 0;
  }

  return v7;
}

- (void)bootstrapWithDelegate:(weak_ptr<SubscriberUserAlertManagerInterface>)delegate
{
  v4 = *delegate.__ptr_;
  *delegate.__ptr_ = 0;
  *(delegate.__ptr_ + 1) = 0;
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
  currentSIMUnlockState = [(BYTelephonyStateNotifier *)self->fBuddySIMUnlockStateHandle currentSIMUnlockState];
  v4 = sub_100032AC8(self->logger);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "BYTelephonySIMUnlockStateUnknown";
    if (currentSIMUnlockState == 1)
    {
      v5 = "BYTelephonySIMUnlockStateAllowed";
    }

    if (currentSIMUnlockState == 2)
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
        (*(*ptr + 32))(ptr, currentSIMUnlockState == 1);
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

- (void)launchSimSetupViewWithOptions:(unsigned __int8)options userInfo:(id)info
{
  optionsCopy = options;
  infoCopy = info;
  v7 = @"TSSIMSetupSupportViewController";
  if (optionsCopy)
  {
    v8 = @"SIM Device Info Flow";
  }

  else
  {
    v7 = @"TSSIMUnlockViewController";
    v8 = @"SIM Unlock Flow";
  }

  if (optionsCopy)
  {
    selfCopy = 0;
  }

  else
  {
    selfCopy = self;
  }

  v10 = v7;
  v11 = v8;
  v12 = selfCopy;
  v13 = [RemoteUILaunchHelper launchRemoteUI:@"com.apple.SIMSetupUIService" viewController:v10 reason:v11 userInfo:infoCopy observer:v12];
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

- (void)launchSimUnlockViewForSlot:(int)slot suppressCancellation:(BOOL)cancellation
{
  cancellationCopy = cancellation;
  v7 = slot == 2;
  v8 = objc_opt_new();
  if (slot == 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2 * v7;
  }

  v10 = [NSNumber numberWithInteger:v9];
  [v8 setObject:v10 forKey:kCTSubscriberUnlockPromptReasonKey];

  v11 = [NSNumber numberWithBool:cancellationCopy];
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

- (void)remoteAlertHandleDidActivate:(id)activate
{
  activateCopy = activate;
  v5 = sub_100032AC8(&self->fQueue.fObj.fObj);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_101424818;
  v7[3] = &unk_101F0F6C0;
  v7[4] = self;
  v8 = activateCopy;
  v6 = activateCopy;
  dispatch_async(v5, v7);
}

- (void)remoteAlertHandleDidDeactivate:(id)deactivate
{
  deactivateCopy = deactivate;
  v5 = sub_100032AC8(&self->fQueue.fObj.fObj);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1014249E8;
  v7[3] = &unk_101F0F6C0;
  v7[4] = self;
  v8 = deactivateCopy;
  v6 = deactivateCopy;
  dispatch_async(v5, v7);
}

- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error
{
  handleCopy = handle;
  errorCopy = error;
  v8 = sub_100032AC8(&self->fQueue.fObj.fObj);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_101424CC8;
  block[3] = &unk_101EA6A98;
  v12 = errorCopy;
  selfCopy = self;
  v14 = handleCopy;
  v9 = handleCopy;
  v10 = errorCopy;
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