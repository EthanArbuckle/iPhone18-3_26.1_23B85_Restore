@interface COSTinkerHealthSharingOptInController
- (COSTinkerHealthSharingOptInController)init;
- (void)_cancelTaskTimeout;
- (void)_fetchSharingStatus;
- (void)_scheduleTaskTimeout:(double)timeout timeoutHandler:(id)handler;
- (void)applyConfirmedOptin:(BOOL)optin;
- (void)dealloc;
@end

@implementation COSTinkerHealthSharingOptInController

- (COSTinkerHealthSharingOptInController)init
{
  v3 = objc_alloc_init(COSTinkerHealthSharingSetupDelegate);
  v7.receiver = self;
  v7.super_class = COSTinkerHealthSharingOptInController;
  v4 = [(COSTinkerHealthSharingOptInController *)&v7 initWithStyle:1 delegate:v3];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(&v4->_setupDelegate, v3);
    [(COSTinkerHealthSharingSetupDelegate *)v5->_setupDelegate setPresentingController:v5];
    [(COSTinkerHealthSharingOptInController *)v5 _fetchSharingStatus];
  }

  return v5;
}

- (void)dealloc
{
  [(COSTinkerHealthSharingOptInController *)self _cancelTaskTimeout];
  v3.receiver = self;
  v3.super_class = COSTinkerHealthSharingOptInController;
  [(COSTinkerHealthSharingOptInController *)&v3 dealloc];
}

- (void)_fetchSharingStatus
{
  self->_fetchingShareStatus = 1;
  v3 = objc_opt_new();
  v4 = [[HKSecondaryDevicePairingAgent alloc] initWithHealthStore:v3];
  healthSyncAgent = self->_healthSyncAgent;
  self->_healthSyncAgent = v4;

  setupController = [UIApp setupController];
  tinkerMember = [(COSTinkerHealthSharingSetupDelegate *)self->_setupDelegate tinkerMember];
  if (tinkerMember)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10008A7A4;
    v15[3] = &unk_1002682F0;
    v15[4] = self;
    [(COSTinkerHealthSharingOptInController *)self _scheduleTaskTimeout:v15 timeoutHandler:30.0];
    v8 = self->_healthSyncAgent;
    appleID = [tinkerMember appleID];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10008A820;
    v12[3] = &unk_10026A1C0;
    v12[4] = self;
    v13 = tinkerMember;
    v14 = setupController;
    [(HKSecondaryDevicePairingAgent *)v8 fetchSharingStatusForCurrentAppleIDWithOwnerEmailAddress:appleID completion:v12];
  }

  else
  {
    _HKInitializeLogging();
    v10 = HKLogSync;
    if (os_log_type_enabled(HKLogSync, OS_LOG_TYPE_ERROR))
    {
      sub_100188744(self, v10);
    }

    self->_fetchingShareStatus = 0;
    delegate = [(COSTinkerHealthSharingOptInController *)self delegate];
    [delegate buddyControllerReleaseHold:self];
  }
}

- (void)applyConfirmedOptin:(BOOL)optin
{
  optinCopy = optin;
  setupController = [UIApp setupController];
  [setupController companionDidFinishHealthSharingOptIn:optinCopy];
}

- (void)_scheduleTaskTimeout:(double)timeout timeoutHandler:(id)handler
{
  handlerCopy = handler;
  [(COSTinkerHealthSharingOptInController *)self _cancelTaskTimeout];
  v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
  timeoutSource = self->_timeoutSource;
  self->_timeoutSource = v7;

  v9 = self->_timeoutSource;
  v10 = dispatch_time(0, (timeout * 1000000000.0));
  dispatch_source_set_timer(v9, v10, 0xFFFFFFFFFFFFFFFFLL, 0);
  objc_initWeak(&location, self);
  v11 = self->_timeoutSource;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10008ABF8;
  handler[3] = &unk_100268FF0;
  objc_copyWeak(&v15, &location);
  v14 = handlerCopy;
  v12 = handlerCopy;
  dispatch_source_set_event_handler(v11, handler);
  dispatch_resume(self->_timeoutSource);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)_cancelTaskTimeout
{
  self->_taskDidTimeout = 0;
  timeoutSource = self->_timeoutSource;
  if (timeoutSource)
  {
    dispatch_source_cancel(timeoutSource);
    v4 = self->_timeoutSource;
    self->_timeoutSource = 0;
  }
}

@end