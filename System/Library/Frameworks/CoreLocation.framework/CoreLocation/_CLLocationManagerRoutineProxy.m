@interface _CLLocationManagerRoutineProxy
- (_CLLocationManagerRoutineProxy)initWithQueue:(id)a3 locationManagerRoutine:(id)a4;
- (id)getRemoteObjectProxyWithErrorHandler:(id)a3;
- (void)createConnection;
- (void)dealloc;
- (void)didUpdateInertialData:(id)a3;
- (void)didUpdateLocations:(id)a3;
- (void)didUpdateLocations:(id)a3 withReply:(id)a4;
@end

@implementation _CLLocationManagerRoutineProxy

- (_CLLocationManagerRoutineProxy)initWithQueue:(id)a3 locationManagerRoutine:(id)a4
{
  if (!a3)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
    if (a4)
    {
      return 0;
    }

LABEL_7:
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
    return 0;
  }

  if (!a4)
  {
    goto LABEL_7;
  }

  v11.receiver = self;
  v11.super_class = _CLLocationManagerRoutineProxy;
  v8 = [(_CLLocationManagerRoutineProxy *)&v11 init];
  if (v8)
  {
    v8->_queue = a3;
    [(_CLLocationManagerRoutineProxy *)v8 createConnection];
    v8->_locationManagerRoutine = a4;
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v8, sub_19B891FAC, @"com.apple.locationd.routine", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v8;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  [(_CLLocationManagerRoutineProxy *)self setLocationManagerRoutine:0];
  [(_CLLocationManagerRoutineProxy *)self setDelegate:0];
  [(NSXPCConnection *)[(_CLLocationManagerRoutineProxy *)self connection] invalidate];
  [(_CLLocationManagerRoutineProxy *)self setConnection:0];
  queue = self->_queue;
  if (queue)
  {
    dispatch_release(queue);
    self->_queue = 0;
  }

  v5.receiver = self;
  v5.super_class = _CLLocationManagerRoutineProxy;
  [(_CLLocationManagerRoutineProxy *)&v5 dealloc];
}

- (void)didUpdateLocations:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46C0 != -1)
  {
    dispatch_once(&qword_1EAFE46C0, &unk_1F0E6B640);
  }

  v5 = qword_1EAFE46F8;
  if (os_log_type_enabled(qword_1EAFE46F8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v10 = 0;
    v11 = 2082;
    v12 = "";
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#location #routine sendLocations to RT, didUpdateLocations)}", buf, 0x12u);
  }

  queue = self->_queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B8921E8;
  v8[3] = &unk_1E753CF38;
  v8[4] = self;
  v8[5] = a3;
  dispatch_async(queue, v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)didUpdateLocations:(id)a3 withReply:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46C0 != -1)
  {
    dispatch_once(&qword_1EAFE46C0, &unk_1F0E6B640);
  }

  v7 = qword_1EAFE46F8;
  if (os_log_type_enabled(qword_1EAFE46F8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#location #routine sendLocations to RT, didUpdateLocations:withReply}", buf, 0x12u);
  }

  if (a4)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B89248C;
    block[3] = &unk_1E753CF60;
    block[4] = self;
    block[5] = a3;
    block[6] = a4;
    dispatch_async(queue, block);
  }

  else
  {
    [(_CLLocationManagerRoutineProxy *)self didUpdateLocations:a3];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)didUpdateInertialData:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46C0 != -1)
  {
    dispatch_once(&qword_1EAFE46C0, &unk_1F0E6B640);
  }

  v5 = qword_1EAFE46F8;
  if (os_log_type_enabled(qword_1EAFE46F8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v10 = 0;
    v11 = 2082;
    v12 = "";
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#location #routine sendInertial to RT, didUpdateInertialData}", buf, 0x12u);
  }

  queue = self->_queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B89272C;
  v8[3] = &unk_1E753CF38;
  v8[4] = self;
  v8[5] = a3;
  dispatch_async(queue, v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)createConnection
{
  v23 = *MEMORY[0x1E69E9840];
  connection = self->_connection;
  if (connection)
  {
    [(NSXPCConnection *)connection invalidate];

    self->_connection = 0;
  }

  v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.locationd.routine" options:4096];
  self->_connection = v4;
  if (v4)
  {
    if (qword_1EAFE46C0 != -1)
    {
      dispatch_once(&qword_1EAFE46C0, &unk_1F0E6B640);
    }

    v5 = qword_1EAFE46F8;
    if (os_log_type_enabled(qword_1EAFE46F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289026;
      v20 = 0;
      v21 = 2082;
      v22 = "";
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#location #routine createConnection}", buf, 0x12u);
    }

    -[NSXPCConnection setExportedInterface:](self->_connection, "setExportedInterface:", [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0E8DAD8]);
    [(NSXPCConnection *)self->_connection setExportedObject:self];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [v6 setWithObjects:{v7, v8, v9, v10, v11, objc_opt_class(), 0}];
    [(NSXPCInterface *)[(NSXPCConnection *)self->_connection exportedInterface] setClasses:v12 forSelector:sel_didUpdateLocations_ argumentIndex:0 ofReply:0];
    [(NSXPCInterface *)[(NSXPCConnection *)self->_connection exportedInterface] setClasses:v12 forSelector:sel_didUpdateLocations_withReply_ argumentIndex:0 ofReply:0];
    [(NSXPCInterface *)[(NSXPCConnection *)self->_connection exportedInterface] setClasses:v12 forSelector:sel_didUpdateInertialData_ argumentIndex:0 ofReply:0];
    -[NSXPCConnection setRemoteObjectInterface:](self->_connection, "setRemoteObjectInterface:", [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0EAC748]);
    [(NSXPCInterface *)[(NSXPCConnection *)self->_connection remoteObjectInterface] setClasses:v12 forSelector:sel_fetchLocationAtDate_withHandler_ argumentIndex:0 ofReply:1];
    [(NSXPCInterface *)[(NSXPCConnection *)self->_connection remoteObjectInterface] setClasses:v12 forSelector:sel_fetchLocationAtMachContinuousTime_withHandler_ argumentIndex:0 ofReply:1];
    [(NSXPCInterface *)[(NSXPCConnection *)self->_connection remoteObjectInterface] setClasses:v12 forSelector:sel_fetchLocationsInLastSeconds_withHandler_ argumentIndex:0 ofReply:1];
    [(NSXPCInterface *)[(NSXPCConnection *)self->_connection remoteObjectInterface] setClasses:v12 forSelector:sel_fetchRecentLocationsWithOptions_withHandler_ argumentIndex:0 ofReply:1];
    v13 = [(NSXPCConnection *)self->_connection serviceName];
    v14 = self->_connection;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_19B892C28;
    v18[3] = &unk_1E753CC90;
    v18[4] = v13;
    [(NSXPCConnection *)v14 setInterruptionHandler:v18];
    v15 = self->_connection;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_19B892C58;
    v17[3] = &unk_1E753CC90;
    v17[4] = v13;
    [(NSXPCConnection *)v15 setInvalidationHandler:v17];
    [(NSXPCConnection *)self->_connection resume];
  }

  if ([(_CLLocationManagerRoutineProxy *)self updating])
  {
    [-[NSXPCConnection remoteObjectProxy](-[_CLLocationManagerRoutineProxy connection](self "connection")];
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (id)getRemoteObjectProxyWithErrorHandler:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_19B892DE4;
  v9[3] = &unk_1E753CF88;
  v9[4] = a3;
  v4 = [(NSXPCConnection *)[(_CLLocationManagerRoutineProxy *)self connection] remoteObjectProxyWithErrorHandler:v9];
  if (qword_1EAFE46C0 != -1)
  {
    dispatch_once(&qword_1EAFE46C0, &unk_1F0E6B640);
  }

  v5 = qword_1EAFE46F8;
  if (os_log_type_enabled(qword_1EAFE46F8, OS_LOG_TYPE_DEBUG))
  {
    v6 = [(_CLLocationManagerRoutineProxy *)self connection];
    *buf = 68289538;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    v14 = 2114;
    v15 = v4;
    v16 = 2114;
    v17 = v6;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#ADL #location #routine getRemoteObjectProxy, proxy:%{public, location:escape_only}@, connection:%{public, location:escape_only}@}", buf, 0x26u);
  }

  v7 = *MEMORY[0x1E69E9840];
  return v4;
}

@end