@interface PLPhotoLibraryDaemon
- (PLPhotoLibraryDaemon)init;
- (int)setup;
- (void)run;
@end

@implementation PLPhotoLibraryDaemon

- (void)run
{
  v2 = +[NSRunLoop currentRunLoop];
  [v2 run];
}

- (int)setup
{
  v3 = PLBackendGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = getpid();
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "assetsd starting up [%d]", v5, 8u);
  }

  if (self)
  {
    PLAssertMinimumCoreDataVersion();
    PLDebugEnableCoreDataMultithreadedAsserts();
    +[PLPhotoLibraryPathManager enableMultiLibraryMode];
    sub_100001F60(self);
    GSInitialize();
    sub_1000020C0(self);
    +[PLKeepDaemonAliveAssertionServer start];
    sub_1000021BC(self);
    sub_100002274(self);
    sub_1000022D0(self);
  }

  else
  {
    +[PLPhotoLibraryPathManager enableMultiLibraryMode];
  }

  DCIM_IS_PAD();
  return 0;
}

- (PLPhotoLibraryDaemon)init
{
  v7.receiver = self;
  v7.super_class = PLPhotoLibraryDaemon;
  v2 = [(PLPhotoLibraryDaemon *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(PLDefaultDaemonServices);
    daemonServices = v2->_daemonServices;
    v2->_daemonServices = v3;

    v5 = v2;
  }

  return v2;
}

@end