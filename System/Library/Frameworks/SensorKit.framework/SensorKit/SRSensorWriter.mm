@interface SRSensorWriter
+ (id)clientInterface;
+ (id)connectionToDaemon;
+ (id)remoteInterface;
+ (void)initialize;
- (BOOL)_setSensorConfiguration:(id)a3 continuousTimestamp:(unint64_t)a4 error:(id *)a5;
- (BOOL)_setSensorConfiguration:(id)a3 error:(id *)a4;
- (BOOL)provideSample:(id)a3 continuousTimestamp:(unint64_t)a4 error:(id *)a5;
- (BOOL)provideSample:(id)a3 error:(id *)a4;
- (BOOL)provideSample:(id)a3 timestamp:(double)a4 error:(id *)a5;
- (BOOL)provideSampleBytes:(const void *)a3 length:(unint64_t)a4 continuousTimestamp:(unint64_t)a5 error:(id *)a6;
- (BOOL)provideSampleBytes:(const void *)a3 length:(unint64_t)a4 error:(id *)a5;
- (BOOL)provideSampleBytes:(const void *)a3 length:(unint64_t)a4 timestamp:(double)a5 error:(id *)a6;
- (BOOL)provideSampleData:(id)a3 continuousTimestamp:(unint64_t)a4 error:(id *)a5;
- (BOOL)provideSampleData:(id)a3 error:(id *)a4;
- (BOOL)provideSampleData:(id)a3 timestamp:(double)a4 error:(id *)a5;
- (SRDatastore)datastore;
- (SRSensorWriter)init;
- (SRSensorWriter)initWithIdentifier:(id)a3;
- (SRSensorWriter)initWithIdentifier:(id)a3 xpcConnection:(id)a4 daemonNotification:(id)a5 authStore:(id)a6 tccStore:(id)a7;
- (id)chooseAuthStore;
- (void)_requestWriterAuthorizationWithCompletion:(id)a3;
- (void)bundleEligibility:(id)a3 completion:(id)a4;
- (void)checkForMonitoring;
- (void)daemonForcedResetDatastoreFiles:(id)a3;
- (void)daemonNotificationDaemonDidChangeTimeSignificantly:(id)a3;
- (void)daemonNotificationDaemonDidResetDatastore:(id)a3;
- (void)daemonNotificationDaemonDidStart:(id)a3;
- (void)dealloc;
- (void)didReceiveUpdateToConfigurationRequests;
- (void)evaluateAuthorizationState;
- (void)flushDatabase;
- (void)registerWithDaemonForWritingIfNeededWithReply:(id)a3;
- (void)requestNewSegment;
- (void)setDelegate:(id)a3;
- (void)setMetadata:(id)a3;
- (void)setMetadata:(id)a3 continuousTimestamp:(unint64_t)a4;
- (void)setMetadata:(id)a3 continuousTimestamp:(unint64_t)a4 datastore:(id)a5;
- (void)setMonitoring:(BOOL)a3;
- (void)set_requestedConfigurations:(id)a3;
- (void)setupConnection;
- (void)startUpdatingAuthorizations;
- (void)updateWriterAuthorizationStatus;
@end

@implementation SRSensorWriter

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    SRLogWriter = os_log_create("com.apple.SensorKit", "Writer");
  }
}

+ (id)clientInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F48CF828];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  [v2 setClasses:objc_msgSend(v3 forSelector:"setWithObjects:" argumentIndex:v4 ofReply:{v5, v6, objc_opt_class(), 0), sel_resetDatastoreFiles_, 0, 0}];
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  [v2 setClasses:objc_msgSend(v7 forSelector:"setWithObjects:" argumentIndex:v8 ofReply:{v9, v10, objc_opt_class(), 0), sel_setMonitoring_withRequestedConfigurations_, 1, 0}];
  return v2;
}

+ (id)remoteInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F48D7D08];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  [v2 setClasses:objc_msgSend(v3 forSelector:"setWithObjects:" argumentIndex:v4 ofReply:{v5, v6, v7, objc_opt_class(), 0), sel_requestFileHandleForWritingWithReply_, 0, 1}];
  return v2;
}

+ (id)connectionToDaemon
{
  v2 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.SensorKit.writer" options:4096];

  return v2;
}

- (SRSensorWriter)init
{
  [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];

  return 0;
}

- (SRSensorWriter)initWithIdentifier:(id)a3
{
  if ([a3 length])
  {
    v5 = [objc_opt_class() connectionToDaemon];
    v6 = [[SRDaemonNotification alloc] initWithSensor:a3];
    v7 = [(SRSensorWriter *)self initWithIdentifier:a3 xpcConnection:v5 daemonNotification:v6 authStore:0 tccStore:0];
    self = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (SRSensorWriter)initWithIdentifier:(id)a3 xpcConnection:(id)a4 daemonNotification:(id)a5 authStore:(id)a6 tccStore:(id)a7
{
  v25 = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = SRSensorWriter;
  v12 = [(SRSensorWriter *)&v22 init];
  if (v12)
  {
    if ([a3 length])
    {
      [(SRSensorWriter *)v12 setSensorIdentifier:a3];
      v12->_monitoring = 0;
      v12->_connection = a4;
      [(SRSensorWriter *)v12 setupConnection];
      v13 = a5;
      v12->_daemonNotification = v13;
      if (v13)
      {
        objc_storeWeak(v13 + 3, v12);
      }

      v12->_eligibilityCache = objc_alloc_init(MEMORY[0x1E695DEE0]);
      v14 = [SRSensorDescription sensorDescriptionForSensor:v12->_sensorIdentifier];
      if (!v14)
      {
        v15 = SRLogWriter;
        if (os_log_type_enabled(SRLogWriter, OS_LOG_TYPE_FAULT))
        {
          *buf = 138543362;
          v24 = a3;
          _os_log_fault_impl(&dword_1C914D000, v15, OS_LOG_TYPE_FAULT, "Failed to find a sensor description for service: %{public}@", buf, 0xCu);
        }
      }

      [v14 roundingInterval];
      v12->_roundingInterval = v16;
      v12->_writingStats = -[SRWritingStats initWithSensor:]([SRWritingStats alloc], [v14 name]);
      v17 = [v14 writerAuthorizationService];
      v12->_writerAuthorizationService = v17;
      if (v17)
      {
        if (a7)
        {
          v18 = a7;
        }

        else
        {
          v18 = objc_alloc_init(SRTCCStorePassThrough);
        }

        v12->_tccStore = v18;
        v12->_writerAuthorizationUpdateQueue = dispatch_queue_create("com.apple.SensorKit.writerAuthorizationUpdate", 0);
        [(SRSensorWriter *)v12 startUpdatingAuthorizations];
        [+[SRAuthorizationClient sharedInstance](SRAuthorizationClient addListener:"addListener:forBundleId:" forBundleId:v12, @"com.apple.private.SensorKit._compositeBundle"];
      }

      else
      {
        if (a6)
        {
          v19 = a6;
        }

        else
        {
          v19 = [(SRSensorWriter *)v12 chooseAuthStore];
        }

        v12->_authStore = v19;
        [(SRSensorWriter *)v12 set_writerAuthorizationStatus:1];
        [(SRAuthorizationStore *)[(SRSensorWriter *)v12 authStore] addReaderAuthorizationDelegate:v12];
      }
    }

    else
    {

      v12 = 0;
    }
  }

  v20 = *MEMORY[0x1E69E9840];
  return v12;
}

- (void)dealloc
{
  self->_daemonNotification = 0;
  [(NSXPCConnection *)self->_connection invalidate];

  self->_connection = 0;
  self->_authStore = 0;
  [(SRSensorWriter *)self setTccStore:0];

  self->_datastore = 0;
  [(SRSensorWriter *)self setNextDatastoreFiles:0];

  self->_sensorIdentifier = 0;
  self->_defaults = 0;

  self->__requestedConfigurations = 0;
  notify_cancel(self->_notifyToken);
  [(SRSensorWriter *)self setWriterAuthorizationUpdateQueue:0];

  self->_writerAuthorizationService = 0;
  [(SRSensorWriter *)self setLastMetadata:0];
  [(SRSensorWriter *)self setLastConfiguration:0];

  v3.receiver = self;
  v3.super_class = SRSensorWriter;
  [(SRSensorWriter *)&v3 dealloc];
}

- (id)chooseAuthStore
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = [+[SRSensorDescription sensorDescriptionForSensor:](SRSensorDescription sensorDescriptionForSensor:{self->_sensorIdentifier), "authorizationStoreCohort"}];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:{self->_sensorIdentifier, 0}];
    v6 = objc_autoreleasePoolPush();
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v7 = +[SRSensorsCache defaultCache];
    v8 = [(SRSensorsCache *)v7 allSensorDescriptions];
    v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v22;
      do
      {
        v12 = 0;
        do
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v21 + 1) + 8 * v12);
          v14 = objc_autoreleasePoolPush();
          if ([v4 isEqualToString:{objc_msgSend(v13, "authorizationStoreCohort")}])
          {
            [v5 addObject:{objc_msgSend(v13, "name")}];
          }

          objc_autoreleasePoolPop(v14);
          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v10);
    }

    objc_autoreleasePoolPop(v6);
    v15 = [SRAuthorizationStore sharedAuthorizationStoreForSensors:v5];

    v16 = *MEMORY[0x1E69E9840];
    return v15;
  }

  else
  {
    v18 = [SRAuthorizationStore alloc];
    v19 = -[SRAuthorizationStore initWithSensors:withAuthorizationTimes:](v18, "initWithSensors:withAuthorizationTimes:", [MEMORY[0x1E695DFD8] setWithObject:self->_sensorIdentifier], 0);
    v20 = *MEMORY[0x1E69E9840];

    return v19;
  }
}

- (void)daemonNotificationDaemonDidStart:(id)a3
{
  if ([(SRSensorWriter *)self connectionDidInvalidate])
  {
    v4 = SRLogWriter;
    if (os_log_type_enabled(SRLogWriter, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C914D000, v4, OS_LOG_TYPE_DEFAULT, "Daemon has restarted after being invalidated. Re-establishing connection", buf, 2u);
    }

    [(NSXPCConnection *)[(SRSensorWriter *)self connection] invalidate];
    -[SRSensorWriter setConnection:](self, "setConnection:", [objc_opt_class() connectionToDaemon]);
    [(SRSensorWriter *)self setupConnection];
  }

  if ([(SRSensorWriter *)self retryGetMonitoring])
  {
    v5 = SRLogWriter;
    if (os_log_type_enabled(SRLogWriter, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_1C914D000, v5, OS_LOG_TYPE_INFO, "Trying to get monitoring flag after daemon restart", v6, 2u);
    }

    [(SRSensorWriter *)self registerWithDaemonForWritingIfNeededWithReply:&__block_literal_global_5];
  }
}

void __51__SRSensorWriter_daemonNotificationDaemonDidStart___block_invoke(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = SRLogWriter;
    if (os_log_type_enabled(SRLogWriter, OS_LOG_TYPE_ERROR))
    {
      v5 = 138543362;
      v6 = a2;
      _os_log_error_impl(&dword_1C914D000, v3, OS_LOG_TYPE_ERROR, "Failed to connect to daemon because %{public}@", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)daemonNotificationDaemonDidChangeTimeSignificantly:(id)a3
{
  v4 = SRLogWriter;
  if (os_log_type_enabled(SRLogWriter, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C914D000, v4, OS_LOG_TYPE_DEFAULT, "Daemon has synced time. Requesting a new segment and time info", buf, 2u);
  }

  if ([(SRSensorWriter *)self authorized])
  {
    [(SRSensorWriter *)self requestNewSegment];
  }

  else
  {
    v5 = SRLogWriter;
    if (os_log_type_enabled(SRLogWriter, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1C914D000, v5, OS_LOG_TYPE_DEFAULT, "Writer is not authorized so not asking for a new segment", v6, 2u);
    }
  }
}

- (void)daemonNotificationDaemonDidResetDatastore:(id)a3
{
  v4 = SRLogWriter;
  if (os_log_type_enabled(SRLogWriter, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C914D000, v4, OS_LOG_TYPE_DEFAULT, "Daemon has reset our datastore. Requesting a new segment", buf, 2u);
  }

  if ([(SRSensorWriter *)self authorized])
  {
    [(SRSensorWriter *)self requestNewSegment];
  }

  else
  {
    v5 = SRLogWriter;
    if (os_log_type_enabled(SRLogWriter, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1C914D000, v5, OS_LOG_TYPE_DEFAULT, "Writer is not authorized so not asking for a new segment", v6, 2u);
    }
  }
}

- (void)setupConnection
{
  v3 = [(SRSensorWriter *)self connection];
  -[NSXPCConnection setRemoteObjectInterface:](v3, "setRemoteObjectInterface:", [objc_opt_class() remoteInterface]);
  [(NSXPCConnection *)v3 setExportedObject:[SRSensorWriterClient sensorWriterClientWithWriter:self]];
  -[NSXPCConnection setExportedInterface:](v3, "setExportedInterface:", [objc_opt_class() clientInterface]);
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __33__SRSensorWriter_setupConnection__block_invoke;
  v6[3] = &unk_1E8330230;
  objc_copyWeak(&v7, &location);
  [(NSXPCConnection *)v3 setInterruptionHandler:v6];
  [(SRSensorWriter *)self setConnectionDidInterrupt:0];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __33__SRSensorWriter_setupConnection__block_invoke_70;
  v4[3] = &unk_1E8330230;
  objc_copyWeak(&v5, &location);
  [(NSXPCConnection *)v3 setInvalidationHandler:v4];
  [(SRSensorWriter *)self setConnectionDidInvalidate:0];
  [(NSXPCConnection *)self->_connection resume];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

uint64_t __33__SRSensorWriter_setupConnection__block_invoke(uint64_t a1)
{
  v2 = SRLogWriter;
  if (os_log_type_enabled(SRLogWriter, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C914D000, v2, OS_LOG_TYPE_DEFAULT, "Connection to daemon interrupted", v4, 2u);
  }

  return [objc_loadWeak((a1 + 32)) setConnectionDidInterrupt:1];
}

uint64_t __33__SRSensorWriter_setupConnection__block_invoke_70(uint64_t a1)
{
  v2 = SRLogWriter;
  if (os_log_type_enabled(SRLogWriter, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1C914D000, v2, OS_LOG_TYPE_DEFAULT, "Connection to daemon invalidated", v5, 2u);
  }

  Weak = objc_loadWeak((a1 + 32));
  [Weak setConnectionDidInvalidate:1];
  return [Weak setMonitoring:0];
}

- (void)checkForMonitoring
{
  [(SRSensorWriter *)self setRetryGetMonitoring:1];

  [(SRSensorWriter *)self registerWithDaemonForWritingIfNeededWithReply:&__block_literal_global_72];
}

void __36__SRSensorWriter_checkForMonitoring__block_invoke(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = SRLogWriter;
    if (os_log_type_enabled(SRLogWriter, OS_LOG_TYPE_ERROR))
    {
      v5 = 138543362;
      v6 = a2;
      _os_log_error_impl(&dword_1C914D000, v3, OS_LOG_TYPE_ERROR, "Failed to connect to daemon because %{public}@", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)registerWithDaemonForWritingIfNeededWithReply:(id)a3
{
  if ([(SRSensorWriter *)self connectionDidInterrupt]|| [(SRSensorWriter *)self retryGetMonitoring])
  {
    v5 = [(SRSensorWriter *)self connection];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __64__SRSensorWriter_registerWithDaemonForWritingIfNeededWithReply___block_invoke;
    v8[3] = &unk_1E8330408;
    v8[4] = a3;
    v6 = [(NSXPCConnection *)v5 remoteObjectProxyWithErrorHandler:v8];
    [v6 startWritingForSensor:self->_sensorIdentifier];
    if (v6)
    {
      [(SRSensorWriter *)self setConnectionDidInterrupt:0];
      (*(a3 + 2))(a3, 0);
    }
  }

  else
  {
    v7 = *(a3 + 2);

    v7(a3, 0);
  }
}

uint64_t __64__SRSensorWriter_registerWithDaemonForWritingIfNeededWithReply___block_invoke(uint64_t a1)
{
  v2 = SRLogWriter;
  if (os_log_type_enabled(SRLogWriter, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_1C914D000, v2, OS_LOG_TYPE_ERROR, "Failed to connect with daemon", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

- (void)daemonForcedResetDatastoreFiles:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  if (![a3 objectForKeyedSubscript:0x1F48C05C0])
  {
    v6 = SRLogWriter;
    if (os_log_type_enabled(SRLogWriter, OS_LOG_TYPE_DEFAULT))
    {
      sensorIdentifier = self->_sensorIdentifier;
      v9 = 138543362;
      v10 = sensorIdentifier;
      _os_log_impl(&dword_1C914D000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Daemon is resetting the writer datastore, asking for a new segment", &v9, 0xCu);
    }

    [(SRSensorWriter *)self requestNewSegment];
    goto LABEL_10;
  }

  [(SRSensorWriter *)self resetDatastoreFiles:a3];
  if (![a3 count] || !-[NSArray count](-[SRSensorWriter _requestedConfigurations](self, "_requestedConfigurations"), "count"))
  {
LABEL_10:
    v8 = *MEMORY[0x1E69E9840];
    return;
  }

  v5 = *MEMORY[0x1E69E9840];

  [(SRSensorWriter *)self didReceiveUpdateToConfigurationRequests];
}

- (SRDatastore)datastore
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = [(SRSensorWriter *)self nextDatastoreFiles];
  if (!v3)
  {
LABEL_19:
    result = self->_datastore;
    goto LABEL_23;
  }

  v4 = v3;
  [(SRSensorWriter *)self setNextDatastoreFiles:0];
  [(SRSensorWriter *)self flushDatabase];

  self->_datastore = 0;
  v5 = [(NSDictionary *)v4 objectForKeyedSubscript:0x1F48C05C0];
  v6 = [(NSDictionary *)v4 objectForKeyedSubscript:0x1F48C05E0];
  v7 = [(NSDictionary *)v4 objectForKeyedSubscript:0x1F48C0600];
  v8 = [(NSDictionary *)v4 objectForKeyedSubscript:0x1F48C0620];
  v9 = SRLogWriter;
  if (os_log_type_enabled(SRLogWriter, OS_LOG_TYPE_DEFAULT))
  {
    sensorIdentifier = self->_sensorIdentifier;
    *buf = 138544386;
    v23 = sensorIdentifier;
    v24 = 2114;
    v25 = v5;
    v26 = 2114;
    v27 = v6;
    v28 = 2114;
    v29 = v7;
    v30 = 2114;
    v31 = v8;
    _os_log_impl(&dword_1C914D000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Creating a new datastore with samples: %{public}@, metadata: %{public}@, configuration: %{public}@, defaults: %{public}@", buf, 0x34u);
  }

  if ([(NSDictionary *)v4 objectForKeyedSubscript:0x1F48C05C0])
  {

    self->_defaults = [[SRDefaults alloc] initWithDictionary:v8];
    v11 = [SRDatastore alloc];
    if (v11)
    {
      v11 = [(SRDatastore *)v11 initWithSampleFile:v5 metadataFile:v6 configurationFile:v7 permission:1 defaults:self->_defaults writingStats:self->_writingStats];
    }

    self->_datastore = v11;
    if (v6)
    {
      v12 = SRLogWriter;
      if (os_log_type_enabled(SRLogWriter, OS_LOG_TYPE_INFO))
      {
        lastMetadata = self->_lastMetadata;
        *buf = 138412290;
        v23 = lastMetadata;
        _os_log_impl(&dword_1C914D000, v12, OS_LOG_TYPE_INFO, "Carrying over previous metadata: %@", buf, 0xCu);
      }

      [(SRSensorWriter *)self setMetadata:[(SRSensorWriter *)self lastMetadata] continuousTimestamp:[(SRSensorWriter *)self lastMetadataContinuousTime] datastore:self->_datastore];
    }

    if (v7)
    {
      v14 = SRLogWriter;
      if (os_log_type_enabled(SRLogWriter, OS_LOG_TYPE_INFO))
      {
        lastConfiguration = self->_lastConfiguration;
        *buf = 138412290;
        v23 = lastConfiguration;
        _os_log_impl(&dword_1C914D000, v14, OS_LOG_TYPE_INFO, "Carrying over previous configuration: %@", buf, 0xCu);
      }

      v21 = 0;
      if (![(SRSensorWriter *)self _setSensorConfiguration:[(SRSensorWriter *)self lastConfiguration] continuousTimestamp:[(SRSensorWriter *)self lastConfigurationContinuousTime] error:&v21])
      {
        v16 = SRLogWriter;
        if (os_log_type_enabled(SRLogWriter, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v23 = v21;
          _os_log_error_impl(&dword_1C914D000, v16, OS_LOG_TYPE_ERROR, "Error carrying over previous configuration because %{public}@", buf, 0xCu);
        }
      }
    }

    v17 = [(SRSensorWriter *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [(SRSensorWriterDelegate *)v17 sensorWriterDidResetDatastore:self];
    }

    goto LABEL_19;
  }

  v19 = SRLogWriter;
  if (os_log_type_enabled(SRLogWriter, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1C914D000, v19, OS_LOG_TYPE_DEBUG, "No sample file received so clearing the datastore", buf, 2u);
  }

  result = 0;
LABEL_23:
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)provideSample:(id)a3 error:(id *)a4
{
  v7 = mach_continuous_time();
  v8 = SRAbsoluteTimeFromContinuousTime(v7);

  return [(SRSensorWriter *)self provideSample:a3 timestamp:a4 error:v8];
}

- (BOOL)provideSample:(id)a3 continuousTimestamp:(unint64_t)a4 error:(id *)a5
{
  v8 = SRAbsoluteTimeFromContinuousTime(a4);

  return [(SRSensorWriter *)self provideSample:a3 timestamp:a5 error:v8];
}

- (BOOL)provideSample:(id)a3 timestamp:(double)a4 error:(id *)a5
{
  v8 = [a3 binarySampleRepresentation];

  return [(SRSensorWriter *)self provideSampleData:v8 timestamp:a5 error:a4];
}

- (BOOL)provideSampleData:(id)a3 error:(id *)a4
{
  v7 = mach_continuous_time();
  v8 = SRAbsoluteTimeFromContinuousTime(v7);

  return [(SRSensorWriter *)self provideSampleData:a3 timestamp:a4 error:v8];
}

- (BOOL)provideSampleData:(id)a3 continuousTimestamp:(unint64_t)a4 error:(id *)a5
{
  v8 = SRAbsoluteTimeFromContinuousTime(a4);

  return [(SRSensorWriter *)self provideSampleData:a3 timestamp:a5 error:v8];
}

- (BOOL)provideSampleData:(id)a3 timestamp:(double)a4 error:(id *)a5
{
  v9 = [a3 bytes];
  v10 = [a3 length];

  return [(SRSensorWriter *)self provideSampleBytes:v9 length:v10 timestamp:a5 error:a4];
}

- (BOOL)provideSampleBytes:(const void *)a3 length:(unint64_t)a4 error:(id *)a5
{
  v9 = mach_continuous_time();
  v10 = SRAbsoluteTimeFromContinuousTime(v9);

  return [(SRSensorWriter *)self provideSampleBytes:a3 length:a4 timestamp:a5 error:v10];
}

- (BOOL)provideSampleBytes:(const void *)a3 length:(unint64_t)a4 continuousTimestamp:(unint64_t)a5 error:(id *)a6
{
  v10 = SRAbsoluteTimeFromContinuousTime(a5);

  return [(SRSensorWriter *)self provideSampleBytes:a3 length:a4 timestamp:a6 error:v10];
}

- (BOOL)provideSampleBytes:(const void *)a3 length:(unint64_t)a4 timestamp:(double)a5 error:(id *)a6
{
  v35 = 0;
  if (a6)
  {
    v10 = a6;
  }

  else
  {
    v10 = &v35;
  }

  if (![(SRSensorWriter *)self authorized])
  {
    v24 = 12289;
LABEL_24:
    v25 = [SRError errorWithCode:v24];
    LOBYTE(v26) = 0;
    *v10 = v25;
    return v26;
  }

  if (![(SRSensorWriter *)self isMonitoring])
  {
    v24 = 12288;
    goto LABEL_24;
  }

  if ([(SRSensorWriter *)self _writerAuthorizationStatus]!= 1)
  {
    v24 = 12295;
    goto LABEL_24;
  }

  if (!a3)
  {
    *v10 = [SRError errorWithCode:12290];
    v27 = SRLogWriter;
    v26 = os_log_type_enabled(SRLogWriter, OS_LOG_TYPE_DEFAULT);
    if (!v26)
    {
      return v26;
    }

    v34 = 0;
    v28 = "Trying to write null sample";
    v29 = &v34;
    goto LABEL_30;
  }

  if (!a4)
  {
    *v10 = [SRError errorWithCode:12290];
    v27 = SRLogWriter;
    v26 = os_log_type_enabled(SRLogWriter, OS_LOG_TYPE_DEFAULT);
    if (!v26)
    {
      return v26;
    }

    v33 = 0;
    v28 = "Trying to write a sample of 0 bytes";
    v29 = &v33;
LABEL_30:
    _os_log_impl(&dword_1C914D000, v27, OS_LOG_TYPE_DEFAULT, v28, v29, 2u);
LABEL_32:
    LOBYTE(v26) = 0;
    return v26;
  }

  v11 = [(SRSensorWriter *)self datastore];
  v13 = v11;
  if (self->_roundingInterval > 0.0)
  {
    if (!v11)
    {
      if ([(SRDatastore *)0 writeSampleBytes:a3 length:a4 timestamp:v10 error:0.000000999999997])
      {
        goto LABEL_14;
      }

LABEL_42:
      v24 = 12294;
      goto LABEL_24;
    }

    Property = objc_getProperty(v11, v12, 40, 1);
    if (Property)
    {
      v15 = *(Property + 6);
      [*(Property + 5) doubleValue];
      a5 = fmax(v15, v16) + 0.000000999999997;
    }

    else
    {
      a5 = 0.000000999999997;
    }
  }

  if (![(SRDatastore *)v13 writeSampleBytes:a3 length:a4 timestamp:v10 error:a5])
  {
    if (v13)
    {
      goto LABEL_32;
    }

    goto LABEL_42;
  }

LABEL_14:
  writingStats = self->_writingStats;
  if (writingStats)
  {
    v19 = vdupq_n_s64(1uLL);
    v19.i64[0] = a4;
    *&writingStats->_totalBytesWritten = vaddq_s64(*&writingStats->_totalBytesWritten, v19);
  }

  if (v13 && (v20 = objc_getProperty(v13, v17, 40, 1)) != 0)
  {
    v21 = v20[3];
    if (v21 && (v22 = *(v21 + 16)) != 0)
    {
      v23 = *(v22 + 4);
    }

    else
    {
      v30 = v20[2];
      if (v30)
      {
        v23 = *(v30 + 24) - *(v30 + 16) + 56;
      }

      else
      {
        v23 = 56;
      }
    }
  }

  else
  {
    v23 = 0;
  }

  v31 = self->_writingStats;
  if (v31)
  {
    v31 = v31->_rateAdjustedSegmentSize;
  }

  if (v23 > v31)
  {
    [(SRSensorWriter *)self requestNewSegment];
  }

  LOBYTE(v26) = 1;
  return v26;
}

- (void)requestNewSegment
{
  v10 = *MEMORY[0x1E69E9840];
  if ([(SRSensorWriter *)self requestNewSegmentInFlight])
  {
    v3 = SRLogWriter;
    if (os_log_type_enabled(SRLogWriter, OS_LOG_TYPE_INFO))
    {
      sensorIdentifier = self->_sensorIdentifier;
      *buf = 138543362;
      v9 = sensorIdentifier;
      _os_log_impl(&dword_1C914D000, v3, OS_LOG_TYPE_INFO, "[%{public}@] Request for a new segment is already inflight", buf, 0xCu);
    }
  }

  else
  {
    [(SRSensorWriter *)self setRequestNewSegmentInFlight:1];
    objc_initWeak(buf, self);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __35__SRSensorWriter_requestNewSegment__block_invoke;
    v6[3] = &unk_1E83308F8;
    objc_copyWeak(&v7, buf);
    [(SRSensorWriter *)self registerWithDaemonForWritingIfNeededWithReply:v6];
    objc_destroyWeak(&v7);
    objc_destroyWeak(buf);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __35__SRSensorWriter_requestNewSegment__block_invoke(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = SRLogWriter;
    if (os_log_type_enabled(SRLogWriter, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v13 = a2;
      _os_log_error_impl(&dword_1C914D000, v3, OS_LOG_TYPE_ERROR, "Error registering with daemon because %{public}@", buf, 0xCu);
    }
  }

  else
  {
    v5 = [objc_loadWeak((a1 + 32)) connection];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __35__SRSensorWriter_requestNewSegment__block_invoke_78;
    v10[3] = &unk_1E83308F8;
    objc_copyWeak(&v11, (a1 + 32));
    v6 = [v5 remoteObjectProxyWithErrorHandler:v10];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __35__SRSensorWriter_requestNewSegment__block_invoke_79;
    v8[3] = &unk_1E8330920;
    objc_copyWeak(&v9, (a1 + 32));
    [v6 requestFileHandleForWritingWithReply:v8];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&v11);
  }

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t __35__SRSensorWriter_requestNewSegment__block_invoke_78(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = SRLogWriter;
  if (os_log_type_enabled(SRLogWriter, OS_LOG_TYPE_ERROR))
  {
    v7 = 138543362;
    v8 = a2;
    _os_log_error_impl(&dword_1C914D000, v4, OS_LOG_TYPE_ERROR, "Unable to get proxy object to request a new segment because %{public}@", &v7, 0xCu);
  }

  result = [objc_loadWeak((a1 + 32)) setRequestNewSegmentInFlight:0];
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __35__SRSensorWriter_requestNewSegment__block_invoke_79(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  Weak = objc_loadWeak((a1 + 32));
  v4 = [a2 objectForKeyedSubscript:0x1F48C0660];
  if (v4)
  {
    v5 = v4;
    v6 = SRLogWriter;
    if (os_log_type_enabled(SRLogWriter, OS_LOG_TYPE_ERROR))
    {
      v9 = 138543362;
      v10 = v5;
      _os_log_error_impl(&dword_1C914D000, v6, OS_LOG_TYPE_ERROR, "Error requesting new segment %{public}@", &v9, 0xCu);
    }
  }

  [Weak resetDatastoreFiles:a2];
  if ([a2 count] && objc_msgSend(objc_msgSend(Weak, "_requestedConfigurations"), "count"))
  {
    [Weak didReceiveUpdateToConfigurationRequests];
  }

  result = [Weak setRequestNewSegmentInFlight:0];
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)setMetadata:(id)a3
{
  v5 = mach_continuous_time();

  [(SRSensorWriter *)self setMetadata:a3 continuousTimestamp:v5];
}

- (void)setMetadata:(id)a3 continuousTimestamp:(unint64_t)a4
{
  v7 = [(SRSensorWriter *)self datastore];

  [(SRSensorWriter *)self setMetadata:a3 continuousTimestamp:a4 datastore:v7];
}

- (void)setMetadata:(id)a3 continuousTimestamp:(unint64_t)a4 datastore:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v9 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:&v21];
  v10 = v21;
  if (v21)
  {
    v11 = SRLogWriter;
    if (os_log_type_enabled(SRLogWriter, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v23 = a3;
      v24 = 2114;
      v25 = v10;
      v12 = "Error trying to archive metadata %{public}@ %{public}@";
      v13 = v11;
      v14 = 22;
LABEL_9:
      _os_log_error_impl(&dword_1C914D000, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);
    }
  }

  else
  {
    v15 = v9;
    v16 = [v9 bytes];
    v17 = [v15 length];
    v18 = SRAbsoluteTimeFromContinuousTime(a4);
    if (a5 && (writeMetadataBytesForFrameStore(*(a5 + 6), v16, v17, &v21, v18) & 1) != 0)
    {
      [(SRSensorWriter *)self setLastMetadata:a3];
      [(SRSensorWriter *)self setLastMetadataContinuousTime:a4];
    }

    else
    {
      v19 = SRLogWriter;
      if (os_log_type_enabled(SRLogWriter, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v23 = v21;
        v12 = "Failed to write metadata because %{public}@";
        v13 = v19;
        v14 = 12;
        goto LABEL_9;
      }
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (BOOL)_setSensorConfiguration:(id)a3 error:(id *)a4
{
  v7 = mach_continuous_time();

  return [(SRSensorWriter *)self _setSensorConfiguration:a3 continuousTimestamp:v7 error:a4];
}

- (BOOL)_setSensorConfiguration:(id)a3 continuousTimestamp:(unint64_t)a4 error:(id *)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v22 = 0;
  if (a5)
  {
    v8 = a5;
  }

  else
  {
    v8 = &v22;
  }

  if (![(SRSensorWriter *)self authorized])
  {
    v16 = 12289;
LABEL_12:
    v17 = [SRError errorWithCode:v16];
    LOBYTE(v15) = 0;
    *v8 = v17;
    goto LABEL_13;
  }

  if (![(SRSensorWriter *)self isMonitoring])
  {
    v16 = 12288;
    goto LABEL_12;
  }

  v9 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:v8];
  if (!v9)
  {
    v19 = SRLogWriter;
    v15 = os_log_type_enabled(SRLogWriter, OS_LOG_TYPE_ERROR);
    if (!v15)
    {
      goto LABEL_13;
    }

    v20 = *v8;
    *buf = 138543618;
    v24 = a3;
    v25 = 2114;
    v26 = v20;
    _os_log_error_impl(&dword_1C914D000, v19, OS_LOG_TYPE_ERROR, "Error trying to archive metadata %{public}@ %{public}@", buf, 0x16u);
LABEL_16:
    LOBYTE(v15) = 0;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = [(SRSensorWriter *)self datastore];
  v12 = [v10 bytes];
  v13 = [v10 length];
  v14 = SRAbsoluteTimeFromContinuousTime(a4);
  if (!v11)
  {
    goto LABEL_16;
  }

  v15 = writeMetadataBytesForFrameStore(v11->_configuration, v12, v13, v8, v14);
  if (v15)
  {
    [(SRSensorWriter *)self setLastConfiguration:a3];
    [(SRSensorWriter *)self setLastConfigurationContinuousTime:a4];
    LOBYTE(v15) = 1;
  }

LABEL_13:
  v18 = *MEMORY[0x1E69E9840];
  return v15;
}

- (void)didReceiveUpdateToConfigurationRequests
{
  if ([(SRSensorWriterDelegate *)self->_delegate conformsToProtocol:&unk_1F48D7D68])
  {
    delegate = self->_delegate;
    if (objc_opt_respondsToSelector())
    {
      requestedConfigurations = self->__requestedConfigurations;

      [(SRSensorWriterDelegate *)delegate sensorWriter:self didReceiveUpdateToConfigurationRequests:requestedConfigurations];
    }
  }
}

- (void)set_requestedConfigurations:(id)a3
{
  if (!-[NSArray isEqualToArray:](self->__requestedConfigurations, "isEqualToArray:") && ([a3 count] || -[NSArray count](self->__requestedConfigurations, "count")))
  {

    self->__requestedConfigurations = [a3 copy];
    if ([(SRSensorWriter *)self isMonitoring])
    {

      [(SRSensorWriter *)self didReceiveUpdateToConfigurationRequests];
    }
  }
}

- (void)setMonitoring:(BOOL)a3
{
  v3 = a3;
  v25 = *MEMORY[0x1E69E9840];
  [(SRSensorWriter *)self setRetryGetMonitoring:0];
  v5 = [(SRSensorWriter *)self isMonitoring];
  v6 = SRLogWriter;
  if (v5 == v3)
  {
    if (os_log_type_enabled(SRLogWriter, OS_LOG_TYPE_INFO))
    {
      sensorIdentifier = self->_sensorIdentifier;
      *buf = 138412546;
      v20 = sensorIdentifier;
      v21 = 1026;
      LODWORD(v22) = [(SRSensorWriter *)self isMonitoring];
      _os_log_impl(&dword_1C914D000, v6, OS_LOG_TYPE_INFO, "[%@] monitoring is already %{public, BOOL}d. Ignoring update", buf, 0x12u);
    }
  }

  else
  {
    if (os_log_type_enabled(SRLogWriter, OS_LOG_TYPE_DEFAULT))
    {
      v7 = self->_sensorIdentifier;
      *buf = 138412546;
      v20 = v7;
      v21 = 1026;
      LODWORD(v22) = v3;
      _os_log_impl(&dword_1C914D000, v6, OS_LOG_TYPE_DEFAULT, "[%@] monitoring requested to set to %{public, BOOL}d", buf, 0x12u);
    }

    if (v3)
    {
      v8 = [(SRSensorWriter *)self _writerAuthorizationStatus];
      if (v8 == 1)
      {
        objc_initWeak(buf, self);
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __32__SRSensorWriter_setMonitoring___block_invoke;
        v17[3] = &unk_1E83307B0;
        objc_copyWeak(&v18, buf);
        v17[4] = self;
        [(SRSensorWriter *)self registerWithDaemonForWritingIfNeededWithReply:v17];
        objc_destroyWeak(&v18);
        objc_destroyWeak(buf);
      }

      else
      {
        v14 = SRLogWriter;
        if (os_log_type_enabled(SRLogWriter, OS_LOG_TYPE_DEFAULT))
        {
          v15 = self->_sensorIdentifier;
          *buf = 138543874;
          v20 = v15;
          v21 = 2050;
          v22 = v8;
          v23 = 1026;
          v24 = 0;
          _os_log_impl(&dword_1C914D000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] does not have explicit writer authorization (status: %{public}ld). Setting monitoring to %{public, BOOL}d", buf, 0x1Cu);
        }

        [(SRSensorWriter *)self setMonitoring:0];
        [(SRSensorWriter *)self setRetryGetMonitoring:1];
      }
    }

    else
    {
      atomic_store(0, &self->_monitoring);
      v10 = SRLogWriter;
      if (os_log_type_enabled(SRLogWriter, OS_LOG_TYPE_DEFAULT))
      {
        v11 = self->_sensorIdentifier;
        v12 = [(SRSensorWriter *)self isMonitoring];
        *buf = 138412546;
        v20 = v11;
        v21 = 1026;
        LODWORD(v22) = v12;
        _os_log_impl(&dword_1C914D000, v10, OS_LOG_TYPE_DEFAULT, "[%@] monitoring set to %{public, BOOL}d", buf, 0x12u);
      }

      -[SRSensorWriter resetDatastoreFiles:](self, "resetDatastoreFiles:", [MEMORY[0x1E695DF20] dictionary]);
      v13 = [(SRSensorWriter *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        [(SRSensorWriterDelegate *)v13 sensorWriterDidStopMonitoring:self];
      }
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __32__SRSensorWriter_setMonitoring___block_invoke(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  Weak = objc_loadWeak((a1 + 40));
  v5 = Weak;
  if (a2)
  {
    v6 = SRLogWriter;
    if (os_log_type_enabled(SRLogWriter, OS_LOG_TYPE_ERROR))
    {
      v9 = *(*(a1 + 32) + 56);
      *buf = 138412546;
      v13 = v9;
      v14 = 2114;
      v15 = a2;
      _os_log_error_impl(&dword_1C914D000, v6, OS_LOG_TYPE_ERROR, "[%@] Error registering with daemon because %{public}@. Setting monitoring to false", buf, 0x16u);
    }

    [v5 setMonitoring:0];
    [v5 setRetryGetMonitoring:1];
  }

  else
  {
    v7 = [objc_msgSend(Weak "connection")];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __32__SRSensorWriter_setMonitoring___block_invoke_137;
    v10[3] = &unk_1E8330948;
    objc_copyWeak(&v11, (a1 + 40));
    v10[4] = *(a1 + 32);
    [v7 requestFileHandleForWritingWithReply:v10];
    objc_destroyWeak(&v11);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __32__SRSensorWriter_setMonitoring___block_invoke_137(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  Weak = objc_loadWeak((a1 + 40));
  v5 = [a2 objectForKeyedSubscript:0x1F48C0660];
  if (v5)
  {
    v6 = v5;
    v7 = SRLogWriter;
    if (os_log_type_enabled(SRLogWriter, OS_LOG_TYPE_ERROR))
    {
      v12 = *(*(a1 + 32) + 56);
      v13 = 138412546;
      v14 = v12;
      v15 = 2114;
      v16 = v6;
      _os_log_error_impl(&dword_1C914D000, v7, OS_LOG_TYPE_ERROR, "[%@] Error requesting file handle %{public}@. Setting monitoring to false", &v13, 0x16u);
    }

    [Weak resetDatastoreFiles:MEMORY[0x1E695E0F8]];
    [Weak setMonitoring:0];
    [Weak setRetryGetMonitoring:1];
  }

  else
  {
    [Weak resetDatastoreFiles:a2];
    if (Weak)
    {
      atomic_store(1u, Weak + 40);
      v9 = SRLogWriter;
      if (os_log_type_enabled(SRLogWriter, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412546;
        v14 = [Weak sensorIdentifier];
        v15 = 1026;
        LODWORD(v16) = [Weak isMonitoring];
        _os_log_impl(&dword_1C914D000, v9, OS_LOG_TYPE_DEFAULT, "[%@] monitoring set to %{public, BOOL}d", &v13, 0x12u);
      }

      if ([objc_msgSend(Weak "_requestedConfigurations")])
      {
        [Weak didReceiveUpdateToConfigurationRequests];
      }

      v10 = [Weak delegate];
      if (objc_opt_respondsToSelector())
      {
        [v10 sensorWriterWillStartMonitoring:Weak];
      }
    }

    else
    {
      v11 = SRLogWriter;
      if (os_log_type_enabled(SRLogWriter, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v13) = 0;
        _os_log_error_impl(&dword_1C914D000, v11, OS_LOG_TYPE_ERROR, "Writer instance is nil so not setting the monitoring flag", &v13, 2u);
      }
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setDelegate:(id)a3
{
  self->_delegate = a3;
  if (-[SRSensorWriter _writerAuthorizationStatus](self, "_writerAuthorizationStatus") && [a3 conformsToProtocol:&unk_1F48D7DC8] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [a3 sensorWriter:self didChangeWriterAuthorizationStatus:{-[SRSensorWriter _writerAuthorizationStatus](self, "_writerAuthorizationStatus")}];
  }

  if ([(SRSensorWriter *)self isMonitoring]&& (objc_opt_respondsToSelector() & 1) != 0)
  {

    [a3 sensorWriterWillStartMonitoring:self];
  }
}

- (void)_requestWriterAuthorizationWithCompletion:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = [(SRSensorWriter *)self _writerAuthorizationStatus];
  if ((v5 - 1) >= 2)
  {
    if (!v5)
    {
      if ([(SRSensorWriter *)self writerAuthorizationService])
      {
        tccStore = self->_tccStore;
        v10 = [(SRSensorWriter *)self writerAuthorizationService];
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __60__SRSensorWriter__requestWriterAuthorizationWithCompletion___block_invoke;
        v14[3] = &unk_1E8330970;
        v14[4] = a3;
        [(SRTCCStore *)tccStore requestAccessForService:v10 completion:v14];
      }

      else
      {
        v11 = SRLogWriter;
        if (os_log_type_enabled(SRLogWriter, OS_LOG_TYPE_FAULT))
        {
          sensorIdentifier = self->_sensorIdentifier;
          *buf = 138543362;
          v16 = sensorIdentifier;
          _os_log_fault_impl(&dword_1C914D000, v11, OS_LOG_TYPE_FAULT, "Failed to find authorization service for %{public}@. Unable to request authorization", buf, 0xCu);
        }

        (*(a3 + 2))(a3, [SRError errorWithCode:4]);
      }
    }

    v12 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v6 = [SRError errorWithCode:4];
    v7 = *(a3 + 2);
    v8 = *MEMORY[0x1E69E9840];

    v7(a3, v6);
  }
}

uint64_t __60__SRSensorWriter__requestWriterAuthorizationWithCompletion___block_invoke(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = SRLogWriter;
  if (os_log_type_enabled(SRLogWriter, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67240192;
    v7[1] = a2;
    _os_log_impl(&dword_1C914D000, v4, OS_LOG_TYPE_DEFAULT, "TCC has returned from prompt with status: %{public, BOOL}d", v7, 8u);
  }

  result = (*(*(a1 + 32) + 16))();
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)startUpdatingAuthorizations
{
  v14 = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  v3 = [(SRSensorWriter *)self writerAuthorizationUpdateQueue];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __45__SRSensorWriter_startUpdatingAuthorizations__block_invoke;
  handler[3] = &unk_1E83304A8;
  objc_copyWeak(&v10, &location);
  v4 = notify_register_dispatch("com.apple.tcc.access.changed", &self->_notifyToken, v3, handler);
  if (v4)
  {
    v5 = SRLogWriter;
    if (os_log_type_enabled(SRLogWriter, OS_LOG_TYPE_FAULT))
    {
      *buf = 67240192;
      v13 = v4;
      _os_log_fault_impl(&dword_1C914D000, v5, OS_LOG_TYPE_FAULT, "Failed to register for TCC notifications. Got status %{public}d", buf, 8u);
    }
  }

  v6 = [(SRSensorWriter *)self writerAuthorizationUpdateQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__SRSensorWriter_startUpdatingAuthorizations__block_invoke_147;
  block[3] = &unk_1E8330208;
  block[4] = self;
  dispatch_sync(v6, block);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
  v7 = *MEMORY[0x1E69E9840];
}

uint64_t __45__SRSensorWriter_startUpdatingAuthorizations__block_invoke(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 32));

  return [Weak updateWriterAuthorizationStatus];
}

- (void)updateWriterAuthorizationStatus
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = [+[SRAuthorizationClient sharedInstance](SRAuthorizationClient dataCollectionEnabled];
  v4 = [(SRTCCStore *)self->_tccStore preflightAuthorizationStatusForService:[(SRSensorWriter *)self writerAuthorizationService]];
  v5 = v4;
  v6 = 2;
  if (v3)
  {
    v6 = 0;
  }

  if (v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  v8 = [(SRSensorWriter *)self _writerAuthorizationStatus];
  v9 = SRLogWriter;
  if (os_log_type_enabled(SRLogWriter, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544386;
    v18 = [(SRSensorWriter *)self writerAuthorizationService];
    v19 = 2050;
    v20 = v8;
    v21 = 2050;
    v22 = v5;
    v23 = 1026;
    v24 = v3;
    v25 = 2050;
    v26 = v7;
    _os_log_impl(&dword_1C914D000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Got writer authorization status update. Current: %{public}ld, TCC: %{public}ld, Data Collection: %{public, BOOL}d, New: %{public}ld", buf, 0x30u);
  }

  if (v8 != v7)
  {
    [(SRSensorWriter *)self set_writerAuthorizationStatus:v7];
    if (v7)
    {
      v10 = v7 == 2;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      [(SRSensorWriter *)self setMonitoring:0];
      [(SRSensorWriter *)self setRetryGetMonitoring:1];
      [(SRSensorWriter *)self resetDatastoreFiles:MEMORY[0x1E695E0F8]];
    }

    else if (v7 == 1)
    {
      objc_initWeak(buf, self);
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __49__SRSensorWriter_updateWriterAuthorizationStatus__block_invoke;
      v15[3] = &unk_1E83308F8;
      objc_copyWeak(&v16, buf);
      [(SRSensorWriter *)self registerWithDaemonForWritingIfNeededWithReply:v15];
      objc_destroyWeak(&v16);
      objc_destroyWeak(buf);
    }

    v11 = [(SRSensorWriter *)self delegate];
    if (([(SRSensorWriterDelegate *)v11 conformsToProtocol:&unk_1F48D7DC8]& 1) != 0)
    {
      if (objc_opt_respondsToSelector())
      {
        [(SRSensorWriterDelegate *)v11 sensorWriter:self didChangeWriterAuthorizationStatus:v7];
      }
    }

    else
    {
      v12 = SRLogWriter;
      if (os_log_type_enabled(SRLogWriter, OS_LOG_TYPE_ERROR))
      {
        sensorIdentifier = self->_sensorIdentifier;
        *buf = 138412546;
        v18 = sensorIdentifier;
        v19 = 2050;
        v20 = v11;
        _os_log_error_impl(&dword_1C914D000, v12, OS_LOG_TYPE_ERROR, "[%@] Got a writer authorization change notification but the delegate (%{public}p) does not conform to SRSensorWriterAuthorizationDelegate", buf, 0x16u);
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t __49__SRSensorWriter_updateWriterAuthorizationStatus__block_invoke(uint64_t result, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = result;
    v4 = SRLogWriter;
    if (os_log_type_enabled(SRLogWriter, OS_LOG_TYPE_ERROR))
    {
      v6 = 138543362;
      v7 = a2;
      _os_log_error_impl(&dword_1C914D000, v4, OS_LOG_TYPE_ERROR, "Failed to connect with daemon because %{public}@", &v6, 0xCu);
    }

    result = [objc_loadWeak((v3 + 32)) setRetryGetMonitoring:1];
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)evaluateAuthorizationState
{
  v3 = [(SRAuthorizationStore *)[(SRSensorWriter *)self authStore] sensorHasReaderAuthorization:self->_sensorIdentifier];

  [(SRSensorWriter *)self evaluateAuthorizationStateWithNewValue:v3];
}

- (void)flushDatabase
{
  v9 = *MEMORY[0x1E69E9840];
  datastore = self->_datastore;
  if (datastore)
  {
    v4 = SRLogWriter;
    if (os_log_type_enabled(SRLogWriter, OS_LOG_TYPE_DEFAULT))
    {
      sensorIdentifier = self->_sensorIdentifier;
      v7 = 138543362;
      v8 = sensorIdentifier;
      _os_log_impl(&dword_1C914D000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Flushing datastore to disk", &v7, 0xCu);
      datastore = self->_datastore;
    }
  }

  [(SRDatastore *)datastore syncMappedFiles];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)bundleEligibility:(id)a3 completion:(id)a4
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v7 = [(NSCache *)self->_eligibilityCache objectForKey:?];
  if (v7)
  {
    v8 = [v7 integerValue];
    v13[3] = v8;
    (*(a4 + 2))(a4);
  }

  else
  {
    objc_initWeak(&location, self);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __47__SRSensorWriter_bundleEligibility_completion___block_invoke;
    v9[3] = &unk_1E83309C0;
    v9[5] = a4;
    objc_copyWeak(&v10, &location);
    v9[4] = a3;
    v9[6] = &v12;
    [(SRSensorWriter *)self registerWithDaemonForWritingIfNeededWithReply:v9];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  _Block_object_dispose(&v12, 8);
}

void __47__SRSensorWriter_bundleEligibility_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = SRLogWriter;
    if (os_log_type_enabled(SRLogWriter, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v14 = a2;
      _os_log_error_impl(&dword_1C914D000, v4, OS_LOG_TYPE_ERROR, "Error registering with daemon because %{public}@", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v5 = [objc_loadWeak((a1 + 56)) connection];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __47__SRSensorWriter_bundleEligibility_completion___block_invoke_148;
    v12[3] = &unk_1E8330408;
    v12[4] = *(a1 + 40);
    v6 = [v5 remoteObjectProxyWithErrorHandler:v12];
    v7 = *(a1 + 32);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __47__SRSensorWriter_bundleEligibility_completion___block_invoke_149;
    v10[3] = &unk_1E8330998;
    v8 = *(a1 + 48);
    v10[4] = v7;
    v10[6] = v8;
    objc_copyWeak(&v11, (a1 + 56));
    v10[5] = *(a1 + 40);
    [v6 fetchEligibilityStatusForBundleIdentifier:v7 reply:v10];
    objc_destroyWeak(&v11);
  }

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t __47__SRSensorWriter_bundleEligibility_completion___block_invoke_148(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = SRLogWriter;
  if (os_log_type_enabled(SRLogWriter, OS_LOG_TYPE_ERROR))
  {
    v7 = 138543362;
    v8 = a2;
    _os_log_error_impl(&dword_1C914D000, v4, OS_LOG_TYPE_ERROR, "Unable to get proxy object to request eligibility because %{public}@", &v7, 0xCu);
  }

  result = (*(*(a1 + 32) + 16))();
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __47__SRSensorWriter_bundleEligibility_completion___block_invoke_149(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = SRLogWriter;
  if (a3)
  {
    if (os_log_type_enabled(SRLogWriter, OS_LOG_TYPE_ERROR))
    {
      v12 = 138543362;
      v13 = a3;
      _os_log_error_impl(&dword_1C914D000, v6, OS_LOG_TYPE_ERROR, "Error fetching eligibility %{public}@", &v12, 0xCu);
    }
  }

  else if (os_log_type_enabled(SRLogWriter, OS_LOG_TYPE_INFO))
  {
    v7 = @"not eligible";
    v8 = *(a1 + 32);
    if (a2)
    {
      v7 = @"eligible";
    }

    v12 = 138543618;
    v13 = v8;
    v14 = 2114;
    v15 = v7;
    _os_log_impl(&dword_1C914D000, v6, OS_LOG_TYPE_INFO, "Bundle identifier %{public}@ %{public}@ for writing", &v12, 0x16u);
  }

  *(*(*(a1 + 48) + 8) + 24) = a2;
  [objc_msgSend(objc_loadWeak((a1 + 56)) "eligibilityCache")];
  v9 = *(*(*(a1 + 48) + 8) + 24);
  result = (*(*(a1 + 40) + 16))();
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

@end