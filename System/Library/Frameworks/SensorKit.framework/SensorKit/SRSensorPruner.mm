@interface SRSensorPruner
+ (id)clientInterface;
+ (id)connectionToDaemon;
+ (id)remoteInterface;
+ (void)initialize;
+ (void)removeAllSamplesForAllSensorsWithCompletionHandler:(id)handler;
+ (void)removeAllSamplesForAllSensorsWithConnection:(id)connection completionHandler:(id)handler;
- (SRDatastore)datastore;
- (SRSensorPruner)initWithSensor:(id)sensor device:(id)device;
- (SRSensorPruner)initWithSensor:(id)sensor xpcConnection:(id)connection daemonNotification:(id)notification device:(id)device;
- (void)continuePruneFrom:(double)from to:(double)to withDatastoreFiles:(id)files;
- (void)daemonNotificationDaemonDidStart:(id)start;
- (void)dealloc;
- (void)registerWithDaemonIfNeededWithReply:(id)reply;
- (void)removeAllSamples;
- (void)removeSamplesFrom:(double)from to:(double)to;
- (void)removeSamplesFrom:(double)from to:(double)to inSegment:(id)segment;
- (void)setupConnection;
@end

@implementation SRSensorPruner

+ (void)initialize
{
  v2 = objc_opt_class();
  if (v2 == objc_opt_class())
  {
    SRLogPruner = os_log_create("com.apple.SensorKit", "Pruner");
  }
}

+ (id)clientInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F48CE978];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  [v2 setClasses:objc_msgSend(v3 forSelector:"setWithObjects:" argumentIndex:v4 ofReply:{v5, v6, objc_opt_class(), 0), sel_resetDatastoreFiles_, 0, 0}];
  return v2;
}

+ (id)remoteInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F48D7CA8];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  [v2 setClasses:objc_msgSend(v3 forSelector:"setWithObjects:" argumentIndex:v4 ofReply:{v5, v6, v7, objc_opt_class(), 0), sel_requestFileHandleForPruningSample_reply_, 0, 1}];
  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  [v2 setClasses:objc_msgSend(v8 forSelector:"setWithObjects:" argumentIndex:v9 ofReply:{v10, v11, v12, objc_opt_class(), 0), sel_requestFileHandleForPruningAfterSegment_reply_, 0, 1}];
  return v2;
}

+ (id)connectionToDaemon
{
  v2 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.SensorKit.pruner" options:4096];

  return v2;
}

- (SRSensorPruner)initWithSensor:(id)sensor device:(id)device
{
  connectionToDaemon = [objc_opt_class() connectionToDaemon];
  v8 = [[SRDaemonNotification alloc] initWithSensor:sensor];

  return [(SRSensorPruner *)self initWithSensor:sensor xpcConnection:connectionToDaemon daemonNotification:v8 device:device];
}

- (SRSensorPruner)initWithSensor:(id)sensor xpcConnection:(id)connection daemonNotification:(id)notification device:(id)device
{
  v14.receiver = self;
  v14.super_class = SRSensorPruner;
  v10 = [(SRSensorPruner *)&v14 init];
  if (v10)
  {
    v11 = [sensor length];
    if (device && v11)
    {
      [(SRSensorPruner *)v10 setSensor:sensor];
      v10->_device = device;
      v10->_connection = connection;
      [(SRSensorPruner *)v10 setupConnection];
      notificationCopy = notification;
      v10->_daemonNotification = notificationCopy;
      if (notificationCopy)
      {
        objc_storeWeak(&notificationCopy->_delegate, v10);
      }

      [(SRSensorPruner *)v10 setConnectionDidInterrupt:1];
    }

    else
    {

      return 0;
    }
  }

  return v10;
}

- (void)dealloc
{
  self->_daemonNotification = 0;
  [(NSXPCConnection *)self->_connection invalidate];

  self->_connection = 0;
  self->_sensor = 0;
  [(SRSensorPruner *)self setDevice:0];

  self->_datastore = 0;
  [(SRSensorPruner *)self setNextDatastoreFiles:0];
  v3.receiver = self;
  v3.super_class = SRSensorPruner;
  [(SRSensorPruner *)&v3 dealloc];
}

- (void)daemonNotificationDaemonDidStart:(id)start
{
  v3 = SRLogPruner;
  if (os_log_type_enabled(SRLogPruner, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C914D000, v3, OS_LOG_TYPE_INFO, "Daemon has restarted", v4, 2u);
  }
}

- (void)setupConnection
{
  v3 = SRLogPruner;
  if (os_log_type_enabled(SRLogPruner, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1C914D000, v3, OS_LOG_TYPE_DEFAULT, "Setting up connection to daemon", buf, 2u);
  }

  connection = [(SRSensorPruner *)self connection];
  -[NSXPCConnection setRemoteObjectInterface:](connection, "setRemoteObjectInterface:", [objc_opt_class() remoteInterface]);
  [(NSXPCConnection *)connection setExportedObject:[SRSensorPrunerClient prunerClientWithPruner:self]];
  -[NSXPCConnection setExportedInterface:](connection, "setExportedInterface:", [objc_opt_class() clientInterface]);
  objc_initWeak(buf, self);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __33__SRSensorPruner_setupConnection__block_invoke;
  v10[3] = &unk_1E8330230;
  objc_copyWeak(&v11, buf);
  [(NSXPCConnection *)connection setInterruptionHandler:v10];
  [(SRSensorPruner *)self setConnectionDidInterrupt:0];
  v5 = MEMORY[0x1E69E9820];
  v6 = 3221225472;
  v7 = __33__SRSensorPruner_setupConnection__block_invoke_51;
  v8 = &unk_1E8330230;
  objc_copyWeak(&v9, buf);
  [(NSXPCConnection *)connection setInvalidationHandler:&v5];
  [(SRSensorPruner *)self setConnectionDidInvalidate:0, v5, v6, v7, v8];
  [(NSXPCConnection *)connection resume];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
}

uint64_t __33__SRSensorPruner_setupConnection__block_invoke(uint64_t a1)
{
  v2 = SRLogPruner;
  if (os_log_type_enabled(SRLogPruner, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C914D000, v2, OS_LOG_TYPE_DEFAULT, "Connection to daemon has been interrupted.", v4, 2u);
  }

  return [objc_loadWeak((a1 + 32)) setConnectionDidInterrupt:1];
}

uint64_t __33__SRSensorPruner_setupConnection__block_invoke_51(uint64_t a1)
{
  v2 = SRLogPruner;
  if (os_log_type_enabled(SRLogPruner, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C914D000, v2, OS_LOG_TYPE_DEFAULT, "Connection to daemon has been invalidated.", v4, 2u);
  }

  return [objc_loadWeak((a1 + 32)) setConnectionDidInvalidate:1];
}

- (void)registerWithDaemonIfNeededWithReply:(id)reply
{
  v15 = *MEMORY[0x1E69E9840];
  connectionDidInterrupt = [(SRSensorPruner *)self connectionDidInterrupt];
  if ([(SRSensorPruner *)self connectionDidInvalidate])
  {
    -[SRSensorPruner setConnection:](self, "setConnection:", [objc_opt_class() connectionToDaemon]);
    [(SRSensorPruner *)self setupConnection];
  }

  if (connectionDidInterrupt)
  {
    v6 = SRLogPruner;
    if (os_log_type_enabled(SRLogPruner, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      sensor = [(SRSensorPruner *)self sensor];
      _os_log_impl(&dword_1C914D000, v6, OS_LOG_TYPE_DEFAULT, "Registering for pruning for %{public}@", buf, 0xCu);
    }

    connection = self->_connection;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __54__SRSensorPruner_registerWithDaemonIfNeededWithReply___block_invoke;
    v12[3] = &unk_1E8330408;
    v12[4] = reply;
    v8 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v12];
    [v8 startPruningForSensor:-[SRSensorPruner sensor](self deviceId:{"sensor"), -[SRDevice deviceIdentifier](-[SRSensorPruner device](self, "device"), "deviceIdentifier")}];
    if (v8)
    {
      [(SRSensorPruner *)self setConnectionDidInterrupt:0];
      (*(reply + 2))(reply, 0);
    }

    v9 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v10 = *(reply + 2);
    v11 = *MEMORY[0x1E69E9840];

    v10(reply, 0);
  }
}

uint64_t __54__SRSensorPruner_registerWithDaemonIfNeededWithReply___block_invoke(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = SRLogPruner;
  if (os_log_type_enabled(SRLogPruner, OS_LOG_TYPE_ERROR))
  {
    v7 = 138543362;
    v8 = a2;
    _os_log_error_impl(&dword_1C914D000, v4, OS_LOG_TYPE_ERROR, "Failed to connect to daemon because %{public}@", &v7, 0xCu);
  }

  result = (*(*(a1 + 32) + 16))();
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (SRDatastore)datastore
{
  v21 = *MEMORY[0x1E69E9840];
  nextDatastoreFiles = [(SRSensorPruner *)self nextDatastoreFiles];
  if (!nextDatastoreFiles)
  {
LABEL_8:
    result = self->_datastore;
    goto LABEL_12;
  }

  v4 = nextDatastoreFiles;
  [(SRSensorPruner *)self setNextDatastoreFiles:0];

  self->_datastore = 0;
  v5 = [(NSDictionary *)v4 objectForKeyedSubscript:0x1F48C05C0];
  v6 = [(NSDictionary *)v4 objectForKeyedSubscript:0x1F48C05E0];
  v7 = [(NSDictionary *)v4 objectForKeyedSubscript:0x1F48C0600];
  v8 = [(NSDictionary *)v4 objectForKeyedSubscript:0x1F48C0620];
  v9 = SRLogPruner;
  if (os_log_type_enabled(SRLogPruner, OS_LOG_TYPE_DEBUG))
  {
    v15 = 138543874;
    v16 = v5;
    v17 = 2114;
    v18 = v6;
    v19 = 2114;
    v20 = v8;
    _os_log_debug_impl(&dword_1C914D000, v9, OS_LOG_TYPE_DEBUG, "Creating a new datastore with samples: %{public}@, metadata: %{public}@, defaults: %{public}@", &v15, 0x20u);
  }

  if ([(NSDictionary *)v4 objectForKeyedSubscript:0x1F48C05C0])
  {
    v10 = [[SRDefaults alloc] initWithDictionary:v8];
    v11 = [SRDatastore alloc];
    if (v11)
    {
      v11 = [(SRDatastore *)v11 initWithSampleFile:v5 metadataFile:v6 configurationFile:v7 permission:2 defaults:v10 writingStats:0];
    }

    self->_datastore = v11;

    goto LABEL_8;
  }

  v13 = SRLogPruner;
  if (os_log_type_enabled(SRLogPruner, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v15) = 0;
    _os_log_debug_impl(&dword_1C914D000, v13, OS_LOG_TYPE_DEBUG, "No sample file received so clearing the datastore", &v15, 2u);
  }

  result = 0;
LABEL_12:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)removeSamplesFrom:(double)from to:(double)to
{
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__SRSensorPruner_removeSamplesFrom_to___block_invoke;
  v7[3] = &unk_1E8330710;
  objc_copyWeak(v8, &location);
  v7[4] = self;
  v8[1] = *&from;
  v8[2] = *&to;
  [(SRSensorPruner *)self registerWithDaemonIfNeededWithReply:v7];
  objc_destroyWeak(v8);
  objc_destroyWeak(&location);
}

void __39__SRSensorPruner_removeSamplesFrom_to___block_invoke(uint64_t a1, uint64_t a2)
{
  Weak = objc_loadWeak((a1 + 40));
  if (a2)
  {
    v5 = [Weak delegate];
    if (objc_opt_respondsToSelector())
    {
      v6 = *(a1 + 32);

      [v5 sensorPrunerDidStopPruning:v6];
    }
  }

  else
  {
    v7 = [objc_msgSend(Weak "connection")];
    v8 = *(a1 + 48);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __39__SRSensorPruner_removeSamplesFrom_to___block_invoke_2;
    v9[3] = &unk_1E83306E8;
    objc_copyWeak(&v10, (a1 + 40));
    v11 = *(a1 + 48);
    [v7 requestFileHandleForPruningSample:v9 reply:v8];
    objc_destroyWeak(&v10);
  }
}

uint64_t __39__SRSensorPruner_removeSamplesFrom_to___block_invoke_2(uint64_t a1, uint64_t a2)
{
  Weak = objc_loadWeak((a1 + 32));
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);

  return [Weak continuePruneFrom:a2 to:v5 withDatastoreFiles:v6];
}

- (void)removeSamplesFrom:(double)from to:(double)to inSegment:(id)segment
{
  location[3] = *MEMORY[0x1E69E9840];
  datastore = [(SRSensorPruner *)self datastore];
  [(SRDatastore *)datastore startTimeOfCurrentSegment];
  if (from <= to && v11 <= to)
  {
    v21[0] = 0;
    v21[1] = v21;
    v21[2] = 0x2020000000;
    *&v21[3] = from;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __49__SRSensorPruner_removeSamplesFrom_to_inSegment___block_invoke;
    v20[3] = &unk_1E8330738;
    v20[4] = v21;
    [(SRDatastore *)datastore removeSamplesFrom:v20 to:from callback:to];
    v15 = SRLogPruner;
    if (os_log_type_enabled(SRLogPruner, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(location[0]) = 138543362;
      *(location + 4) = segment;
      _os_log_debug_impl(&dword_1C914D000, v15, OS_LOG_TYPE_DEBUG, "Requesting next segment after %{public}@", location, 0xCu);
    }

    objc_initWeak(location, self);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __49__SRSensorPruner_removeSamplesFrom_to_inSegment___block_invoke_59;
    v18[3] = &unk_1E8330788;
    v18[4] = self;
    objc_copyWeak(v19, location);
    v18[5] = segment;
    v18[6] = v21;
    v19[1] = *&to;
    [(SRSensorPruner *)self registerWithDaemonIfNeededWithReply:v18];
    objc_destroyWeak(v19);
    objc_destroyWeak(location);
    _Block_object_dispose(v21, 8);
    goto LABEL_13;
  }

  delegate = [(SRSensorPruner *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
LABEL_13:
    v17 = *MEMORY[0x1E69E9840];
    return;
  }

  v14 = *MEMORY[0x1E69E9840];

  [(SRSensorPrunerDelegate *)delegate sensorPrunerDidStopPruning:self];
}

void __49__SRSensorPruner_removeSamplesFrom_to_inSegment___block_invoke_59(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) delegate];
    if (objc_opt_respondsToSelector())
    {
      v4 = *(a1 + 32);

      [v3 sensorPrunerDidStopPruning:v4];
    }
  }

  else
  {
    v5 = [objc_msgSend(objc_loadWeak((a1 + 56)) "connection")];
    v6 = *(a1 + 40);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __49__SRSensorPruner_removeSamplesFrom_to_inSegment___block_invoke_2;
    v7[3] = &unk_1E8330760;
    objc_copyWeak(v8, (a1 + 56));
    v7[4] = *(a1 + 48);
    v8[1] = *(a1 + 64);
    [v5 requestFileHandleForPruningAfterSegment:v6 reply:v7];
    objc_destroyWeak(v8);
  }
}

uint64_t __49__SRSensorPruner_removeSamplesFrom_to_inSegment___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = [a2 objectForKeyedSubscript:0x1F48C0660];
  if (v4)
  {
    v5 = v4;
    v6 = SRLogPruner;
    if (os_log_type_enabled(SRLogPruner, OS_LOG_TYPE_ERROR))
    {
      v9 = 138543362;
      v10 = v5;
      _os_log_error_impl(&dword_1C914D000, v6, OS_LOG_TYPE_ERROR, "Error requesting a file handle for pruning. %{public}@", &v9, 0xCu);
    }
  }

  result = [objc_loadWeak((a1 + 40)) continuePruneFrom:a2 to:*(*(*(a1 + 32) + 8) + 24) withDatastoreFiles:*(a1 + 48)];
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)continuePruneFrom:(double)from to:(double)to withDatastoreFiles:(id)files
{
  [(SRSensorPruner *)self resetDatastoreFiles:?];
  delegate = [(SRSensorPruner *)self delegate];
  if ([(SRSensorPruner *)self datastore])
  {
    v10 = [files objectForKeyedSubscript:0x1F48C05C0];
    if (v10 && (v11 = [-[NSFileHandle pathname](v10) lastPathComponent]) != 0)
    {

      [(SRSensorPruner *)self removeSamplesFrom:v11 to:from inSegment:to];
    }

    else
    {
      if (files)
      {
        if ([files objectForKeyedSubscript:0x1F48C05C0])
        {
          v12 = SRLogPruner;
          if (os_log_type_enabled(SRLogPruner, OS_LOG_TYPE_ERROR))
          {
            *v13 = 0;
            _os_log_error_impl(&dword_1C914D000, v12, OS_LOG_TYPE_ERROR, "Failed to get segment name from file handle", v13, 2u);
          }
        }
      }

      if (objc_opt_respondsToSelector())
      {
        [(SRSensorPrunerDelegate *)delegate sensorPrunerDidStopPruning:self];
      }
    }
  }

  else if (objc_opt_respondsToSelector())
  {

    [(SRSensorPrunerDelegate *)delegate sensorPrunerDidStopPruning:self];
  }
}

- (void)removeAllSamples
{
  -[SRSensorPruner resetDatastoreFiles:](self, "resetDatastoreFiles:", [MEMORY[0x1E695DF20] dictionary]);
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __34__SRSensorPruner_removeAllSamples__block_invoke;
  v3[3] = &unk_1E83307B0;
  objc_copyWeak(&v4, &location);
  v3[4] = self;
  [(SRSensorPruner *)self registerWithDaemonIfNeededWithReply:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __34__SRSensorPruner_removeAllSamples__block_invoke(uint64_t a1, uint64_t a2)
{
  Weak = objc_loadWeak((a1 + 40));
  v5 = [Weak delegate];
  if (a2)
  {
    v6 = v5;
    if (objc_opt_respondsToSelector())
    {
      v7 = *(a1 + 32);

      [v6 sensorPrunerDidStopPruningAllData:v7];
    }
  }

  else
  {
    v8 = [Weak connection];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __34__SRSensorPruner_removeAllSamples__block_invoke_2;
    v12[3] = &unk_1E83307B0;
    objc_copyWeak(&v13, (a1 + 40));
    v12[4] = *(a1 + 32);
    v9 = [v8 remoteObjectProxyWithErrorHandler:v12];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __34__SRSensorPruner_removeAllSamples__block_invoke_62;
    v10[3] = &unk_1E83307B0;
    objc_copyWeak(&v11, (a1 + 40));
    v10[4] = *(a1 + 32);
    [v9 removeAllSamplesForCurrentSensorWithReply:v10];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&v13);
  }
}

uint64_t __34__SRSensorPruner_removeAllSamples__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = [objc_loadWeak((a1 + 40)) delegate];
  v5 = SRLogPruner;
  if (os_log_type_enabled(SRLogPruner, OS_LOG_TYPE_ERROR))
  {
    v8 = 138543362;
    v9 = a2;
    _os_log_error_impl(&dword_1C914D000, v5, OS_LOG_TYPE_ERROR, "Failed to connect to daemon because %{public}@", &v8, 0xCu);
  }

  result = objc_opt_respondsToSelector();
  if (result)
  {
    result = [v4 sensorPrunerDidStopPruningAllData:*(a1 + 32)];
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __34__SRSensorPruner_removeAllSamples__block_invoke_62(uint64_t a1)
{
  v2 = [objc_loadWeak((a1 + 40)) delegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = *(a1 + 32);

    return [v2 sensorPrunerDidStopPruningAllData:v4];
  }

  return result;
}

+ (void)removeAllSamplesForAllSensorsWithConnection:(id)connection completionHandler:(id)handler
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __80__SRSensorPruner_removeAllSamplesForAllSensorsWithConnection_completionHandler___block_invoke;
  v7[3] = &unk_1E8330408;
  v7[4] = handler;
  v5 = [connection remoteObjectProxyWithErrorHandler:v7];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __80__SRSensorPruner_removeAllSamplesForAllSensorsWithConnection_completionHandler___block_invoke_63;
  v6[3] = &unk_1E8330408;
  v6[4] = handler;
  [v5 removeAllSamplesForAllSensorsWithReply:v6];
}

uint64_t __80__SRSensorPruner_removeAllSamplesForAllSensorsWithConnection_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = SRLogPruner;
  if (os_log_type_enabled(SRLogPruner, OS_LOG_TYPE_ERROR))
  {
    v7 = 138543362;
    v8 = a2;
    _os_log_error_impl(&dword_1C914D000, v4, OS_LOG_TYPE_ERROR, "Failed to connect to daemon because %{public}@", &v7, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    result = (*(result + 16))(result, a2);
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __80__SRSensorPruner_removeAllSamplesForAllSensorsWithConnection_completionHandler___block_invoke_63(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

+ (void)removeAllSamplesForAllSensorsWithCompletionHandler:(id)handler
{
  connectionToDaemon = [self connectionToDaemon];
  [connectionToDaemon setRemoteObjectInterface:{objc_msgSend(self, "remoteInterface")}];
  [connectionToDaemon resume];

  [self removeAllSamplesForAllSensorsWithConnection:connectionToDaemon completionHandler:handler];
}

@end