@interface MAHandleEndNavigation
- (void)performWithCompletion:(id)a3 serviceHelper:(id)a4;
@end

@implementation MAHandleEndNavigation

- (void)performWithCompletion:(id)a3 serviceHelper:(id)a4
{
  v4 = a3;
  v5 = [SACommandFailed alloc];
  v6 = [v5 initWithErrorCode:SALocalSearchNavigationNotRunningErrorCode];
  v7 = +[MKMapService sharedService];
  [v7 captureUserAction:3002 onTarget:802 placeActionDetails:0 mapItem:0 resultIndex:0xFFFFFFFFLL];

  v8 = _maps_backgroundStateLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "MAPS SIRI: Received end navigation command", buf, 2u);
  }

  v9 = +[MapsSiriIPCInterface sharedInterface];
  [v9 initializeBrokerConnectionIfNeeded];
  if (![v9 canReceiveMessages] || objc_msgSend(v9, "isMapsBackgroundTaskSuspended"))
  {
    v10 = [v6 dictionary];
    v4[2](v4, v10);
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_11FD8;
  v12[3] = &unk_34B30;
  v13 = v4;
  v11 = v4;
  [v9 endNavigationWithCompletion:v12];
}

@end