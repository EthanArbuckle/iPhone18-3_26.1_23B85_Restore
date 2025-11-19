@interface SRReaderLongTermBackend
+ (id)connectionToEndpoint;
+ (void)initialize;
- (NSXPCConnection)connection;
- (SRReaderLongTermBackend)init;
- (SRReaderLongTermBackend)initWithSensor:(id)a3 xpcConnection:(id)a4;
- (void)continueFetchRequest:(id)a3 samples:(id)a4 timestamp:(double)a5 cursor:(id)a6 fetchState:(unint64_t)a7 error:(id)a8 withCallback:(id)a9;
- (void)dealloc;
- (void)fetch:(id)a3 withCallback:(id)a4;
- (void)fetchDevices:(id)a3 reply:(id)a4;
- (void)fetchReaderMetadata:(id)a3 reply:(id)a4;
- (void)setupConnection;
@end

@implementation SRReaderLongTermBackend

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    SRLogLongTermBackend = os_log_create("com.apple.SensorKit", "SRLogLongTermBackend");
  }
}

- (SRReaderLongTermBackend)init
{
  [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];

  return 0;
}

+ (id)connectionToEndpoint
{
  v2 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:@"com.apple.SensorKit.LongTermStorageHelper"];

  return v2;
}

- (void)setupConnection
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = SRLogLongTermBackend;
  if (os_log_type_enabled(SRLogLongTermBackend, OS_LOG_TYPE_INFO))
  {
    sensor = self->_sensor;
    *buf = 138543362;
    v16 = sensor;
    _os_log_impl(&dword_1C914D000, v3, OS_LOG_TYPE_INFO, "[%{public}@] Setting up connection to daemon", buf, 0xCu);
  }

  connection = self->_connection;
  -[NSXPCConnection setRemoteObjectInterface:](connection, "setRemoteObjectInterface:", [objc_opt_class() remoteInterface]);
  [(NSXPCConnection *)connection setExportedObject:self];
  -[NSXPCConnection setExportedInterface:](connection, "setExportedInterface:", [objc_opt_class() clientInterface]);
  objc_initWeak(buf, self);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __42__SRReaderLongTermBackend_setupConnection__block_invoke;
  v13[3] = &unk_1E8330230;
  objc_copyWeak(&v14, buf);
  [(NSXPCConnection *)connection setInterruptionHandler:v13];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __42__SRReaderLongTermBackend_setupConnection__block_invoke_18;
  v11 = &unk_1E8330230;
  objc_copyWeak(&v12, buf);
  [(NSXPCConnection *)connection setInvalidationHandler:&v8];
  Weak = objc_loadWeak(buf);
  if (Weak)
  {
    Weak[8] = 0;
  }

  [(NSXPCConnection *)connection resume:v8];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
  v7 = *MEMORY[0x1E69E9840];
}

void __42__SRReaderLongTermBackend_setupConnection__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  Weak = objc_loadWeak((a1 + 32));
  v2 = SRLogLongTermBackend;
  if (os_log_type_enabled(SRLogLongTermBackend, OS_LOG_TYPE_INFO))
  {
    if (Weak)
    {
      v3 = Weak[2];
    }

    else
    {
      v3 = 0;
    }

    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_1C914D000, v2, OS_LOG_TYPE_INFO, "[%{public}@] Connection to daemon has been interrupted.", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __42__SRReaderLongTermBackend_setupConnection__block_invoke_18(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  Weak = objc_loadWeak((a1 + 32));
  v2 = SRLogLongTermBackend;
  if (os_log_type_enabled(SRLogLongTermBackend, OS_LOG_TYPE_INFO))
  {
    if (Weak)
    {
      v3 = Weak[2];
    }

    else
    {
      v3 = 0;
    }

    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_1C914D000, v2, OS_LOG_TYPE_INFO, "[%{public}@] Connection to daemon has been invalidated.", &v5, 0xCu);
  }

  if (Weak)
  {
    *(Weak + 8) = 1;
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)fetch:(id)a3 withCallback:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  if (![objc_msgSend(a3 "sensor")])
  {
    sensor = self->_sensor;
    v10 = [(SRReaderLongTermBackend *)self connection];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __46__SRReaderLongTermBackend_fetch_withCallback___block_invoke;
    v26[3] = &unk_1E83302F0;
    v26[5] = a3;
    v26[6] = a4;
    v26[4] = sensor;
    v11 = [(NSXPCConnection *)v10 remoteObjectProxyWithErrorHandler:v26];
    if (!-[NSString isEqualToString:](sensor, "isEqualToString:", [a3 sensor]))
    {
      v15 = SRLogLongTermBackend;
      if (os_log_type_enabled(SRLogLongTermBackend, OS_LOG_TYPE_FAULT))
      {
        v19 = [a3 sensor];
        *buf = 138543618;
        v28 = sensor;
        v29 = 2114;
        v30 = v19;
        _os_log_fault_impl(&dword_1C914D000, v15, OS_LOG_TYPE_FAULT, "Backend is for sensor %{public}@ but fetching for sensor %{public}@", buf, 0x16u);
      }

      v16 = [SRError errorWithCode:0];
      [a3 from];
      (*(a4 + 2))(a4, 0, 0, 0, 0, 1, 0, v16);
      goto LABEL_18;
    }

    [a3 from];
    v13 = v12;
    objc_initWeak(&location, self);
    if ([(NSString *)sensor isEqualToString:@"com.apple.SensorKit.cardioMetrics"])
    {
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __46__SRReaderLongTermBackend_fetch_withCallback___block_invoke_21;
      v23[3] = &unk_1E8330568;
      v14 = &v24;
      objc_copyWeak(&v24, &location);
      v23[4] = a3;
      v23[5] = a4;
      [v11 fetchCardioSamples:a3 reply:v23];
    }

    else
    {
      if (![(NSString *)sensor isEqualToString:@"com.apple.SensorKit.mobilityMetrics"])
      {
        v17 = SRLogLongTermBackend;
        if (os_log_type_enabled(SRLogLongTermBackend, OS_LOG_TYPE_FAULT))
        {
          v20 = [a3 sensor];
          *buf = 138543362;
          v28 = v20;
          _os_log_fault_impl(&dword_1C914D000, v17, OS_LOG_TYPE_FAULT, "Trying to fetch long term data for a sensor %{public}@ that doesn't support it", buf, 0xCu);
        }

        (*(a4 + 2))(a4, 0, 0, 0, 0, 1, 0, [SRError errorWithCode:8194], v13);
        goto LABEL_17;
      }

      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __46__SRReaderLongTermBackend_fetch_withCallback___block_invoke_2;
      v21[3] = &unk_1E8330568;
      v14 = &v22;
      objc_copyWeak(&v22, &location);
      v21[4] = a3;
      v21[5] = a4;
      [v11 fetchMobilitySamples:a3 reply:v21];
    }

    objc_destroyWeak(v14);
LABEL_17:
    objc_destroyWeak(&location);
LABEL_18:
    v18 = *MEMORY[0x1E69E9840];
    return;
  }

  [a3 from];
  v7 = *(a4 + 2);
  v8 = *MEMORY[0x1E69E9840];

  v7(a4, 0, 0, 0, 0, 1, 0, 0);
}

uint64_t __46__SRReaderLongTermBackend_fetch_withCallback___block_invoke(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = SRLogLongTermBackend;
  if (os_log_type_enabled(SRLogLongTermBackend, OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 32);
    v9 = 138543618;
    v10 = v8;
    v11 = 2114;
    v12 = a2;
    _os_log_error_impl(&dword_1C914D000, v4, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to get proxy object for fetch because %{public}@", &v9, 0x16u);
  }

  v5 = *(a1 + 48);
  [*(a1 + 40) from];
  result = (*(v5 + 16))(v5, 0, 0, 0, 0, 1, 0, a2);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __46__SRReaderLongTermBackend_fetch_withCallback___block_invoke_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  Weak = objc_loadWeak((a1 + 48));
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);

  return [Weak continueFetchRequest:v13 samples:a2 timestamp:a4 cursor:a3 fetchState:a5 error:v14 withCallback:a6];
}

uint64_t __46__SRReaderLongTermBackend_fetch_withCallback___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  Weak = objc_loadWeak((a1 + 48));
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);

  return [Weak continueFetchRequest:v13 samples:a2 timestamp:a4 cursor:a3 fetchState:a5 error:v14 withCallback:a6];
}

- (void)continueFetchRequest:(id)a3 samples:(id)a4 timestamp:(double)a5 cursor:(id)a6 fetchState:(unint64_t)a7 error:(id)a8 withCallback:(id)a9
{
  v29 = *MEMORY[0x1E69E9840];
  v14 = (*(a9 + 2))(a9, [a4 bytes], objc_msgSend(a4, "length"), 0, 0, a7, a6, a8, a5);
  if (a7 == 1)
  {
    v17 = SRLogLongTermBackend;
    if (!os_log_type_enabled(SRLogLongTermBackend, OS_LOG_TYPE_INFO))
    {
      goto LABEL_12;
    }

    sensor = self->_sensor;
    v25 = 138412290;
    v26 = sensor;
    v19 = "[%@{public}@] Fetch is complete";
    v20 = v17;
    v21 = OS_LOG_TYPE_INFO;
LABEL_11:
    _os_log_impl(&dword_1C914D000, v20, v21, v19, &v25, 0xCu);
    goto LABEL_12;
  }

  if (!a7 && (v14 & 1) == 0)
  {
    v22 = SRLogLongTermBackend;
    if (!os_log_type_enabled(SRLogLongTermBackend, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v23 = self->_sensor;
    v25 = 138543362;
    v26 = v23;
    v19 = "[%{public}@] Ending fetching early due to an error or delegate's intent";
    v20 = v22;
    v21 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_11;
  }

  v15 = SRLogLongTermBackend;
  if (os_log_type_enabled(SRLogLongTermBackend, OS_LOG_TYPE_INFO))
  {
    v16 = self->_sensor;
    v25 = 138543618;
    v26 = v16;
    v27 = 2114;
    v28 = a6;
    _os_log_impl(&dword_1C914D000, v15, OS_LOG_TYPE_INFO, "[%{public}@] Requesting data from new cursor %{public}@", &v25, 0x16u);
  }

  [a3 setFrom:NAN];
  [a3 setCursor:a6];
  [(SRReaderLongTermBackend *)self fetch:a3 withCallback:a9];
LABEL_12:
  v24 = *MEMORY[0x1E69E9840];
}

- (void)fetchDevices:(id)a3 reply:(id)a4
{
  sensor = self->_sensor;
  v7 = [(SRReaderLongTermBackend *)self connection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __46__SRReaderLongTermBackend_fetchDevices_reply___block_invoke;
  v10[3] = &unk_1E83303E0;
  v10[4] = sensor;
  v10[5] = a4;
  v8 = [(NSXPCConnection *)v7 remoteObjectProxyWithErrorHandler:v10];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __46__SRReaderLongTermBackend_fetchDevices_reply___block_invoke_23;
  v9[3] = &unk_1E8330590;
  v9[4] = a4;
  [v8 fetchDevices:a3 reply:v9];
}

uint64_t __46__SRReaderLongTermBackend_fetchDevices_reply___block_invoke(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = SRLogLongTermBackend;
  if (os_log_type_enabled(SRLogLongTermBackend, OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 32);
    v8 = 138543618;
    v9 = v7;
    v10 = 2114;
    v11 = a2;
    _os_log_error_impl(&dword_1C914D000, v4, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to get proxy object for fetchDevices because %{public}@", &v8, 0x16u);
  }

  result = (*(*(a1 + 40) + 16))();
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)fetchReaderMetadata:(id)a3 reply:(id)a4
{
  v5 = SRLogLongTermBackend;
  if (os_log_type_enabled(SRLogLongTermBackend, OS_LOG_TYPE_FAULT))
  {
    *v6 = 0;
    _os_log_fault_impl(&dword_1C914D000, v5, OS_LOG_TYPE_FAULT, "fetchReaderMetadata: is not supported for the long term storage backend", v6, 2u);
  }

  (*(a4 + 2))(a4, MEMORY[0x1E695E0F8]);
}

- (NSXPCConnection)connection
{
  if (self && self->_connectionDidInvalidate)
  {

    self->_connection = [objc_opt_class() connectionToEndpoint];
    [(SRReaderLongTermBackend *)self setupConnection];
  }

  return self->_connection;
}

- (SRReaderLongTermBackend)initWithSensor:(id)a3 xpcConnection:(id)a4
{
  v8.receiver = self;
  v8.super_class = SRReaderLongTermBackend;
  v6 = [(SRReaderLongTermBackend *)&v8 init];
  if (v6)
  {
    v6->_sensor = [a3 copy];
    objc_sync_enter(v6);
    v6->_connection = a4;
    objc_sync_exit(v6);
  }

  return v6;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];

  v3.receiver = self;
  v3.super_class = SRReaderLongTermBackend;
  [(SRReaderLongTermBackend *)&v3 dealloc];
}

@end