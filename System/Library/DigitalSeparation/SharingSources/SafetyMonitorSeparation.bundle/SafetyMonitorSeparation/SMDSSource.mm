@interface SMDSSource
+ (void)initialize;
- (SMDSSource)init;
- (void)fetchSharedResourcesWithCompletion:(id)completion;
- (void)stopAllSharingWithCompletion:(id)completion;
- (void)stopSharing:(id)sharing withCompletion:(id)completion;
- (void)stopSharingWithParticipant:(id)participant completion:(id)completion;
@end

@implementation SMDSSource

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    qword_8EB0 = os_log_create("com.apple.SafetyMonitorSeparation", "SMDSSource");

    _objc_release_x1();
  }
}

- (SMDSSource)init
{
  v6.receiver = self;
  v6.super_class = SMDSSource;
  v2 = [(SMDSSource *)&v6 init];
  if (v2)
  {
    v3 = +[SMSafetyMonitorManager defaultManager];
    safetyMonitorManager = v2->_safetyMonitorManager;
    v2->_safetyMonitorManager = v3;
  }

  return v2;
}

- (void)fetchSharedResourcesWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = qword_8EB0;
  if (os_log_type_enabled(qword_8EB0, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Fetching shared resources.", buf, 2u);
  }

  safetyMonitorManager = [(SMDSSource *)self safetyMonitorManager];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_E74;
  v8[3] = &unk_4180;
  v9 = completionCopy;
  v7 = completionCopy;
  [safetyMonitorManager fetchCurrentSessionStateWithCompletion:v8];
}

- (void)stopAllSharingWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = qword_8EB0;
  if (os_log_type_enabled(qword_8EB0, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Stopping sharing via stopAllSharingWithCompletion.", buf, 2u);
  }

  safetyMonitorManager = [(SMDSSource *)self safetyMonitorManager];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1714;
  v8[3] = &unk_41D0;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  [safetyMonitorManager fetchCurrentSessionStateWithCompletion:v8];
}

- (void)stopSharing:(id)sharing withCompletion:(id)completion
{
  completionCopy = completion;
  v6 = qword_8EB0;
  if (os_log_type_enabled(qword_8EB0, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "Stopping sharing via stopSharing.", buf, 2u);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1AD4;
  v8[3] = &unk_41A8;
  v9 = completionCopy;
  v7 = completionCopy;
  [(SMDSSource *)self stopAllSharingWithCompletion:v8];
}

- (void)stopSharingWithParticipant:(id)participant completion:(id)completion
{
  completionCopy = completion;
  v6 = qword_8EB0;
  if (os_log_type_enabled(qword_8EB0, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "Stopping sharing via stopSharingWithParticipant.", buf, 2u);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1BC4;
  v8[3] = &unk_41A8;
  v9 = completionCopy;
  v7 = completionCopy;
  [(SMDSSource *)self stopAllSharingWithCompletion:v8];
}

@end