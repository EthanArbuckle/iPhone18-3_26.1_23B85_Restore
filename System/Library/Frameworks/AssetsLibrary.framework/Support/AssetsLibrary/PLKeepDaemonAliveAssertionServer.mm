@interface PLKeepDaemonAliveAssertionServer
- (PLKeepDaemonAliveAssertionServer)init;
- (void)_deactivateCameraSession;
- (void)_registerNewConnection:(id)connection;
- (void)_startServer;
- (void)dealloc;
@end

@implementation PLKeepDaemonAliveAssertionServer

- (void)_registerNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PLKeepDaemonAliveAssertionServer: activating camera session task constraints", v6, 2u);
  }

  [(PLCameraCaptureTaskConstraintCoordinator *)self->_taskConstraintCoordinator activateCameraSessionTaskConstraints];
  xpc_connection_set_event_handler(connectionCopy, &stru_10002D350);
  xpc_connection_set_target_queue(connectionCopy, self->_connectionQueue);
  xpc_connection_set_context(connectionCopy, qword_100034C10);
  xpc_connection_set_finalizer_f(connectionCopy, sub_10001128C);
  xpc_connection_resume(connectionCopy);
}

- (void)_deactivateCameraSession
{
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PLKeepDaemonAliveAssertionServer: deactivating camera session task constraints", v4, 2u);
  }

  [(PLCameraCaptureTaskConstraintCoordinator *)self->_taskConstraintCoordinator deactivateCameraSessionTaskConstraints];
}

- (void)_startServer
{
  mach_service = xpc_connection_create_mach_service(PLKeepDaemonAliveServiceName, self->_connectionQueue, 1uLL);
  CFRetain(mach_service);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100001930;
  handler[3] = &unk_10002D310;
  handler[4] = self;
  xpc_connection_set_event_handler(mach_service, handler);
  xpc_connection_resume(mach_service);
}

- (void)dealloc
{
  [(PLCameraCaptureTaskConstraintCoordinator *)self->_taskConstraintCoordinator invalidate];
  v3.receiver = self;
  v3.super_class = PLKeepDaemonAliveAssertionServer;
  [(PLKeepDaemonAliveAssertionServer *)&v3 dealloc];
}

- (PLKeepDaemonAliveAssertionServer)init
{
  v9.receiver = self;
  v9.super_class = PLKeepDaemonAliveAssertionServer;
  v2 = [(PLKeepDaemonAliveAssertionServer *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = pl_dispatch_queue_create_with_fallback_qos();
    connectionQueue = v2->_connectionQueue;
    v2->_connectionQueue = v4;

    v6 = [[PLCameraCaptureTaskConstraintCoordinator alloc] initWithTaskContstraintRole:1 name:@"PLKeepDaemonAliveAssertionServer"];
    taskConstraintCoordinator = v2->_taskConstraintCoordinator;
    v2->_taskConstraintCoordinator = v6;

    [(PLKeepDaemonAliveAssertionServer *)v2 _startServer];
  }

  return v2;
}

@end