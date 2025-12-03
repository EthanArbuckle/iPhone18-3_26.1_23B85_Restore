@interface _CLLocationSmootherProxy
- (_CLLocationSmootherProxy)initWithCLLocationSmoother:(id)smoother;
- (void)createConnection;
- (void)dealloc;
- (void)didSmoothLocations:(id)locations ofType:(id)type;
@end

@implementation _CLLocationSmootherProxy

- (_CLLocationSmootherProxy)initWithCLLocationSmoother:(id)smoother
{
  v7.receiver = self;
  v7.super_class = _CLLocationSmootherProxy;
  v4 = [(_CLLocationSmootherProxy *)&v7 init];
  if (v4)
  {
    v4->_queue = dispatch_queue_create([objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"_CLLocationSmootherProxy, %p", v4), "UTF8String"], 0);
    [(_CLLocationSmootherProxy *)v4 createConnection];
    v4->_locationManagerSmoother = smoother;
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v4, sub_19B8D9AC4, @"com.apple.locationd.smoother", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v4;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  [(_CLLocationSmootherProxy *)self setLocationManagerSmoother:0];
  [(_CLLocationSmootherProxy *)self setDelegate:0];
  [(_CLLocationSmootherProxy *)self setConnection:0];
  queue = self->_queue;
  if (queue)
  {
    dispatch_release(queue);
    self->_queue = 0;
  }

  v5.receiver = self;
  v5.super_class = _CLLocationSmootherProxy;
  [(_CLLocationSmootherProxy *)&v5 dealloc];
}

- (void)didSmoothLocations:(id)locations ofType:(id)type
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B8D9C30;
  block[3] = &unk_1E753D098;
  block[4] = self;
  block[5] = locations;
  block[6] = type;
  dispatch_async(queue, block);
}

- (void)createConnection
{
  connection = self->_connection;
  if (connection)
  {

    self->_connection = 0;
  }

  v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.locationd.smoother" options:4096];
  self->_connection = v4;
  if (v4)
  {
    -[NSXPCConnection setExportedInterface:](self->_connection, "setExportedInterface:", [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0E94208]);
    [(NSXPCConnection *)self->_connection setExportedObject:self];
    exportedInterface = [(NSXPCConnection *)self->_connection exportedInterface];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    -[NSXPCInterface setClasses:forSelector:argumentIndex:ofReply:](exportedInterface, "setClasses:forSelector:argumentIndex:ofReply:", [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}], sel_didSmoothLocations_ofType_, 0, 0);
    -[NSXPCConnection setRemoteObjectInterface:](self->_connection, "setRemoteObjectInterface:", [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0EAC868]);
    remoteObjectInterface = [(NSXPCConnection *)self->_connection remoteObjectInterface];
    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    -[NSXPCInterface setClasses:forSelector:argumentIndex:ofReply:](remoteObjectInterface, "setClasses:forSelector:argumentIndex:ofReply:", [v10 setWithObjects:{v11, objc_opt_class(), 0}], sel_smoothLocations_workoutActivity_shouldReconstructRoute_timeIntervalsThatNeedPopulated_handler_, 0, 0);
    remoteObjectInterface2 = [(NSXPCConnection *)self->_connection remoteObjectInterface];
    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    -[NSXPCInterface setClasses:forSelector:argumentIndex:ofReply:](remoteObjectInterface2, "setClasses:forSelector:argumentIndex:ofReply:", [v13 setWithObjects:{v14, objc_opt_class(), 0}], sel_smoothLocations_workoutActivity_shouldReconstructRoute_timeIntervalsThatNeedPopulated_handler_, 3, 0);
    remoteObjectInterface3 = [(NSXPCConnection *)self->_connection remoteObjectInterface];
    v16 = MEMORY[0x1E695DFD8];
    v17 = objc_opt_class();
    -[NSXPCInterface setClasses:forSelector:argumentIndex:ofReply:](remoteObjectInterface3, "setClasses:forSelector:argumentIndex:ofReply:", [v16 setWithObjects:{v17, objc_opt_class(), 0}], sel_smoothLocations_workoutActivity_shouldReconstructRoute_timeIntervalsThatNeedPopulated_handler_, 0, 1);
    remoteObjectInterface4 = [(NSXPCConnection *)self->_connection remoteObjectInterface];
    v19 = MEMORY[0x1E695DFD8];
    v20 = objc_opt_class();
    -[NSXPCInterface setClasses:forSelector:argumentIndex:ofReply:](remoteObjectInterface4, "setClasses:forSelector:argumentIndex:ofReply:", [v19 setWithObjects:{v20, objc_opt_class(), 0}], sel_configureWithWorkoutActivity_shouldReconstructEntireRoute_timeIntervalsThatNeedPopulating_, 2, 0);
    remoteObjectInterface5 = [(NSXPCConnection *)self->_connection remoteObjectInterface];
    v22 = MEMORY[0x1E695DFD8];
    v23 = objc_opt_class();
    -[NSXPCInterface setClasses:forSelector:argumentIndex:ofReply:](remoteObjectInterface5, "setClasses:forSelector:argumentIndex:ofReply:", [v22 setWithObjects:{v23, objc_opt_class(), 0}], sel_smoothLocations_batchType_handler_, 0, 0);
    remoteObjectInterface6 = [(NSXPCConnection *)self->_connection remoteObjectInterface];
    v25 = MEMORY[0x1E695DFD8];
    v26 = objc_opt_class();
    -[NSXPCInterface setClasses:forSelector:argumentIndex:ofReply:](remoteObjectInterface6, "setClasses:forSelector:argumentIndex:ofReply:", [v25 setWithObjects:{v26, objc_opt_class(), 0}], sel_smoothLocations_batchType_handler_, 0, 1);
    serviceName = [(NSXPCConnection *)self->_connection serviceName];
    v28 = self->_connection;
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = sub_19B8DA088;
    v31[3] = &unk_1E753CC90;
    v31[4] = serviceName;
    [(NSXPCConnection *)v28 setInterruptionHandler:v31];
    v29 = self->_connection;
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = sub_19B8DA0B8;
    v30[3] = &unk_1E753CC90;
    v30[4] = serviceName;
    [(NSXPCConnection *)v29 setInvalidationHandler:v30];
    [(NSXPCConnection *)self->_connection resume];
  }
}

@end