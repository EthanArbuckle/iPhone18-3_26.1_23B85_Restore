@interface SRReaderSensorKitBackend
+ (id)clientInterface;
+ (id)connectionToEndpoint;
+ (id)remoteInterface;
+ (void)initialize;
- (NSXPCConnection)connection;
- (SRReaderSensorKitBackend)init;
- (SRReaderSensorKitBackend)initWithSensor:(id)sensor xpcConnection:(id)connection;
- (id)datastore;
- (void)continueFetchRequest:(void *)request from:(uint64_t)from to:(double)to withDatastoreFiles:(double)files callback:;
- (void)dealloc;
- (void)fetch:(id)fetch withCallback:(id)callback;
- (void)fetchDevices:(id)devices reply:(id)reply;
- (void)fetchReaderMetadata:(id)metadata reply:(id)reply;
- (void)fetchSampleBytesFrom:(uint64_t)from to:(void *)to inSegment:(uint64_t)segment fetchRequest:(double)request retryAttempt:(double)attempt sampleCallback:;
- (void)resetDatastoreFiles:(id)files;
- (void)setupConnection;
- (void)startRecording:(id)recording reply:(id)reply;
- (void)stopRecording:(id)recording reply:(id)reply;
@end

@implementation SRReaderSensorKitBackend

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    SRLogSensorKitBackend = os_log_create("com.apple.SensorKit", "SensorKitReaderBackend");
  }
}

- (SRReaderSensorKitBackend)init
{
  [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];

  return 0;
}

+ (id)clientInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F48CC2E8];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  [v2 setClasses:objc_msgSend(v3 forSelector:"setWithObjects:" argumentIndex:v4 ofReply:{v5, v6, objc_opt_class(), 0), sel_resetDatastoreFiles_, 0, 0}];
  return v2;
}

+ (id)remoteInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F48D7B28];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  [v2 setClasses:objc_msgSend(v3 forSelector:"setWithObjects:" argumentIndex:v4 ofReply:{v5, v6, v7, objc_opt_class(), 0), sel_requestFileHandleForReading_reply_, 0, 1}];
  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  [v2 setClasses:objc_msgSend(v8 forSelector:"setWithObjects:" argumentIndex:v9 ofReply:{v10, v11, v12, objc_opt_class(), 0), sel_requestFileHandleForReading_afterSegment_reply_, 0, 1}];
  [v2 setClasses:objc_msgSend(MEMORY[0x1E695DFD8] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_startRecording_reply_, 0, 1}];
  [v2 setClasses:objc_msgSend(MEMORY[0x1E695DFD8] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_stopRecording_reply_, 0, 1}];
  [v2 setClasses:objc_msgSend(MEMORY[0x1E695DFD8] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_fetchAllDevices_reply_, 1, 1}];
  v13 = MEMORY[0x1E695DFD8];
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  [v2 setClasses:objc_msgSend(v13 forSelector:"setWithObjects:" argumentIndex:v14 ofReply:{v15, v16, objc_opt_class(), 0), sel_fetchReaderMetadata_reply_, 0, 1}];
  return v2;
}

+ (id)connectionToEndpoint
{
  v2 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.SensorKit.reader" options:4096];

  return v2;
}

- (void)setupConnection
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = SRLogSensorKitBackend;
  if (os_log_type_enabled(SRLogSensorKitBackend, OS_LOG_TYPE_INFO))
  {
    sensor = self->_sensor;
    LODWORD(buf.receiver) = 138543362;
    *(&buf.receiver + 4) = sensor;
    _os_log_impl(&dword_1C914D000, v3, OS_LOG_TYPE_INFO, "[%{public}@] Setting up connection to daemon", &buf, 0xCu);
  }

  connection = self->_connection;
  -[NSXPCConnection setRemoteObjectInterface:](connection, "setRemoteObjectInterface:", [objc_opt_class() remoteInterface]);
  v6 = objc_alloc(objc_opt_self());
  if (v6)
  {
    buf.receiver = v6;
    buf.super_class = SRSensorReaderClient;
    v7 = [(SRReaderSensorKitBackend *)&buf init];
    v8 = v7;
    if (v7)
    {
      objc_storeWeak(&v7->_datastore, self);
    }
  }

  else
  {
    v8 = 0;
  }

  [(NSXPCConnection *)connection setExportedObject:v8];
  -[NSXPCConnection setExportedInterface:](connection, "setExportedInterface:", [objc_opt_class() clientInterface]);
  objc_initWeak(&buf.receiver, self);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __43__SRReaderSensorKitBackend_setupConnection__block_invoke;
  v16[3] = &unk_1E8330230;
  objc_copyWeak(&v17, &buf.receiver);
  [(NSXPCConnection *)connection setInterruptionHandler:v16];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __43__SRReaderSensorKitBackend_setupConnection__block_invoke_52;
  v14 = &unk_1E8330230;
  objc_copyWeak(&v15, &buf.receiver);
  [(NSXPCConnection *)connection setInvalidationHandler:&v11];
  Weak = objc_loadWeak(&buf.receiver);
  if (Weak)
  {
    Weak[24] = 0;
  }

  [(NSXPCConnection *)connection resume:v11];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&buf.receiver);
  v10 = *MEMORY[0x1E69E9840];
}

void __43__SRReaderSensorKitBackend_setupConnection__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  Weak = objc_loadWeak((a1 + 32));
  v2 = SRLogSensorKitBackend;
  if (os_log_type_enabled(SRLogSensorKitBackend, OS_LOG_TYPE_INFO))
  {
    if (Weak)
    {
      v3 = Weak[4];
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

void __43__SRReaderSensorKitBackend_setupConnection__block_invoke_52(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  Weak = objc_loadWeak((a1 + 32));
  v2 = SRLogSensorKitBackend;
  if (os_log_type_enabled(SRLogSensorKitBackend, OS_LOG_TYPE_INFO))
  {
    if (Weak)
    {
      v3 = Weak[4];
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
    *(Weak + 24) = 1;
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (NSXPCConnection)connection
{
  if (self && self->_connectionDidInvalidate)
  {

    self->_connection = [objc_opt_class() connectionToEndpoint];
    self->_deviceDetails = 0;
    [(SRReaderSensorKitBackend *)self setupConnection];
  }

  return self->_connection;
}

- (SRReaderSensorKitBackend)initWithSensor:(id)sensor xpcConnection:(id)connection
{
  v8.receiver = self;
  v8.super_class = SRReaderSensorKitBackend;
  v6 = [(SRReaderSensorKitBackend *)&v8 init];
  if (v6)
  {
    v6->_sensor = [sensor copy];
    objc_sync_enter(v6);
    v6->_connection = connection;
    objc_sync_exit(v6);
  }

  return v6;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];

  self->_datastore = 0;
  objc_setProperty_atomic(self, v3, 0, 40);

  v4.receiver = self;
  v4.super_class = SRReaderSensorKitBackend;
  [(SRReaderSensorKitBackend *)&v4 dealloc];
}

- (void)fetch:(id)fetch withCallback:(id)callback
{
  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __47__SRReaderSensorKitBackend_fetch_withCallback___block_invoke;
  v13[3] = &unk_1E83302C8;
  v13[4] = self;
  v13[5] = callback;
  sensor = self->_sensor;
  connection = [(SRReaderSensorKitBackend *)self connection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __47__SRReaderSensorKitBackend_fetch_withCallback___block_invoke_58;
  v12[3] = &unk_1E83302F0;
  v12[5] = fetch;
  v12[6] = v13;
  v12[4] = sensor;
  v9 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v12];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __47__SRReaderSensorKitBackend_fetch_withCallback___block_invoke_60;
  v10[3] = &unk_1E8330318;
  objc_copyWeak(&v11, &location);
  v10[4] = fetch;
  v10[5] = v13;
  [v9 requestFileHandleForReading:fetch reply:v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

uint64_t __47__SRReaderSensorKitBackend_fetch_withCallback___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7)
{
  v9 = a7.n128_f64[0];
  v24 = *MEMORY[0x1E69E9840];
  if (a6)
  {
    if (a6 == 1)
    {
      v12 = *(a1 + 40);
      v13 = *(*(a1 + 40) + 16);
      v14 = 1;
      v13(a7);
    }

    else
    {
      v14 = 1;
    }

LABEL_12:
    v20 = *MEMORY[0x1E69E9840];
    return v14;
  }

  if (!a3)
  {
    v19 = SRLogSensorKitBackend;
    if (os_log_type_enabled(SRLogSensorKitBackend, OS_LOG_TYPE_FAULT))
    {
      v21 = *(*(a1 + 32) + 32);
      v22 = 138543362;
      v23 = v21;
      _os_log_fault_impl(&dword_1C914D000, v19, OS_LOG_TYPE_FAULT, "[%{public}@] Received sample with length of 0", &v22, 0xCu);
    }

    (*(*(a1 + 40) + 16))(*(a1 + 40), a2, 0, a4, a5, 1, 0, [SRError errorWithCode:8194], v9);
    v14 = 0;
    goto LABEL_12;
  }

  v15 = *(a1 + 40);
  v16 = *(*(a1 + 40) + 16);
  v17 = *MEMORY[0x1E69E9840];

  return v16();
}

uint64_t __47__SRReaderSensorKitBackend_fetch_withCallback___block_invoke_58(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = SRLogSensorKitBackend;
  if (os_log_type_enabled(SRLogSensorKitBackend, OS_LOG_TYPE_ERROR))
  {
    v9 = *(a1 + 32);
    v10 = 138543618;
    v11 = v9;
    v12 = 2114;
    v13 = a2;
    _os_log_error_impl(&dword_1C914D000, v4, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to proxy to remote because %{public}@", &v10, 0x16u);
  }

  v5 = *(a1 + 48);
  [*(a1 + 40) to];
  result = (*(v5 + 16))(v5, 0, 0, 0, 0, 1, 0, +[SRError connectionNotFoundError], v6);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void __47__SRReaderSensorKitBackend_fetch_withCallback___block_invoke_60(uint64_t a1, void *a2)
{
  Weak = objc_loadWeak((a1 + 48));
  v5 = *(a1 + 32);
  [v5 from];
  v7 = v6;
  [*(a1 + 32) to];
  v9 = *(a1 + 40);

  [(SRReaderSensorKitBackend *)Weak continueFetchRequest:v5 from:a2 to:v9 withDatastoreFiles:v7 callback:v8];
}

- (void)continueFetchRequest:(void *)request from:(uint64_t)from to:(double)to withDatastoreFiles:(double)files callback:
{
  v28 = *MEMORY[0x1E69E9840];
  if (!self)
  {
LABEL_19:
    v24 = *MEMORY[0x1E69E9840];
    return;
  }

  v12 = [request objectForKeyedSubscript:0x1F48C0660];
  if (v12)
  {
    v13 = v12;
    [self resetDatastoreFiles:{objc_msgSend(MEMORY[0x1E695DF20], "dictionary")}];
    v14 = *(from + 16);
    v15 = *MEMORY[0x1E69E9840];
    fromCopy2 = from;
    v17.n128_f64[0] = files;
    v18 = v13;
LABEL_4:

    v14(fromCopy2, 0, 0, 0, 0, 1, 0, v18, v17);
    return;
  }

  [self resetDatastoreFiles:request];
  if (![self datastore])
  {
    v14 = *(from + 16);
    v22 = *MEMORY[0x1E69E9840];
    fromCopy2 = from;
    v17.n128_f64[0] = files;
    v18 = 0;
    goto LABEL_4;
  }

  v19 = [request objectForKeyedSubscript:0x1F48C05C0];
  if (!v19 || (v20 = [-[NSFileHandle pathname](v19) lastPathComponent]) == 0)
  {
    if (request)
    {
      if ([request objectForKeyedSubscript:0x1F48C05C0])
      {
        v23 = SRLogSensorKitBackend;
        if (os_log_type_enabled(SRLogSensorKitBackend, OS_LOG_TYPE_ERROR))
        {
          v25 = self[4];
          v26 = 138543362;
          v27 = v25;
          _os_log_error_impl(&dword_1C914D000, v23, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to get segment name from file handle", &v26, 0xCu);
        }
      }
    }

    (*(from + 16))(from, 0, 0, 0, 0, 1, 0, 0, files);
    goto LABEL_19;
  }

  v21 = *MEMORY[0x1E69E9840];

  [(SRReaderSensorKitBackend *)self fetchSampleBytesFrom:v20 to:a2 inSegment:0 fetchRequest:from retryAttempt:to sampleCallback:files];
}

- (void)fetchSampleBytesFrom:(uint64_t)from to:(void *)to inSegment:(uint64_t)segment fetchRequest:(double)request retryAttempt:(double)attempt sampleCallback:
{
  v42 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v37[0] = 0;
    v37[1] = v37;
    v37[2] = 0x2020000000;
    v37[3] = 0;
    v36[0] = 0;
    v36[1] = v36;
    v36[2] = 0x3052000000;
    v36[3] = __Block_byref_object_copy_;
    v36[4] = __Block_byref_object_dispose_;
    v36[5] = 0;
    v35[0] = 0;
    v35[1] = v35;
    v35[2] = 0x2020000000;
    v35[3] = 0;
    v34[0] = 0;
    v34[1] = v34;
    v34[2] = 0x3052000000;
    v34[3] = __Block_byref_object_copy_;
    v34[4] = __Block_byref_object_dispose_;
    v34[5] = 0;
    datastore = [self datastore];
    [(SRDatastore *)datastore startTimeOfCurrentSegment];
    if (request > attempt || v16 > attempt)
    {
      (*(segment + 16))(segment, 0, 0, 0, 0, 1, 0, 0, attempt);
    }

    else
    {
      v33[0] = 0;
      v33[1] = v33;
      v33[2] = 0x2020000000;
      *&v33[3] = request;
      v29 = 0;
      v30 = &v29;
      v31 = 0x2020000000;
      v32 = 1;
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __103__SRReaderSensorKitBackend_fetchSampleBytesFrom_to_inSegment_fetchRequest_retryAttempt_sampleCallback___block_invoke;
      v28[3] = &unk_1E8330340;
      v28[6] = v37;
      v28[7] = v36;
      v28[8] = v35;
      v28[9] = v34;
      v28[10] = v33;
      v28[11] = &v29;
      v28[4] = self;
      v28[5] = segment;
      [(SRDatastore *)datastore fetchSamplesFrom:v28 to:request callback:attempt];
      v17 = SRLogSensorKitBackend;
      if (v30[3])
      {
        if (os_log_type_enabled(SRLogSensorKitBackend, OS_LOG_TYPE_INFO))
        {
          v18 = self[4];
          *buf = 138543618;
          v39 = v18;
          v40 = 2114;
          v41 = a2;
          _os_log_impl(&dword_1C914D000, v17, OS_LOG_TYPE_INFO, "[%{public}@] Requesting next segment after %{public}@", buf, 0x16u);
        }

        objc_initWeak(buf, self);
        v19 = self[4];
        connection = [self connection];
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __103__SRReaderSensorKitBackend_fetchSampleBytesFrom_to_inSegment_fetchRequest_retryAttempt_sampleCallback___block_invoke_68;
        v26[3] = &unk_1E8330368;
        v27[1] = to;
        v27[2] = *&attempt;
        v26[7] = segment;
        v26[4] = v19;
        objc_copyWeak(v27, buf);
        v27[3] = *&request;
        v26[5] = a2;
        v26[6] = from;
        v21 = [connection remoteObjectProxyWithErrorHandler:v26];
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __103__SRReaderSensorKitBackend_fetchSampleBytesFrom_to_inSegment_fetchRequest_retryAttempt_sampleCallback___block_invoke_69;
        v24[3] = &unk_1E8330390;
        objc_copyWeak(v25, buf);
        v24[5] = segment;
        v24[6] = v33;
        v25[1] = *&attempt;
        v24[4] = from;
        [v21 requestFileHandleForReading:from afterSegment:a2 reply:v24];
        objc_destroyWeak(v25);
        objc_destroyWeak(v27);
        objc_destroyWeak(buf);
      }

      else if (os_log_type_enabled(SRLogSensorKitBackend, OS_LOG_TYPE_DEFAULT))
      {
        v22 = self[4];
        *buf = 138543362;
        v39 = v22;
        _os_log_impl(&dword_1C914D000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] Ending fetching early due to an error or delegate's intent", buf, 0xCu);
      }

      _Block_object_dispose(&v29, 8);
      _Block_object_dispose(v33, 8);
    }

    _Block_object_dispose(v34, 8);
    _Block_object_dispose(v35, 8);
    _Block_object_dispose(v36, 8);
    _Block_object_dispose(v37, 8);
  }

  v23 = *MEMORY[0x1E69E9840];
}

uint64_t __103__SRReaderSensorKitBackend_fetchSampleBytesFrom_to_inSegment_fetchRequest_retryAttempt_sampleCallback___block_invoke(void *a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a7;
  v49 = *MEMORY[0x1E69E9840];
  if (*(*(a1[6] + 8) + 24) != a5)
  {
    if (a6)
    {
      v42 = a8;
      v44 = 0;
      v38 = MEMORY[0x1E695DFD8];
      v39 = MEMORY[0x1E696ACD0];
      v13 = objc_opt_class();
      v14 = objc_opt_class();
      v15 = objc_opt_class();
      v16 = objc_opt_class();
      v17 = objc_opt_class();
      v18 = objc_opt_class();
      *(*(a1[7] + 8) + 40) = [v39 unarchivedObjectOfClasses:objc_msgSend(v38 fromData:"setWithObjects:" error:{v13, v14, v15, v16, v17, v18, objc_opt_class(), 0), objc_msgSend(MEMORY[0x1E695DEF0], "dataWithBytes:length:", a5, a6), &v44}];
      v19 = v44;
      if (v44)
      {
        v20 = SRLogSensorKitBackend;
        if (os_log_type_enabled(SRLogSensorKitBackend, OS_LOG_TYPE_ERROR))
        {
          v35 = *(a1[4] + 32);
          *buf = 138543618;
          v46 = v35;
          v47 = 2114;
          v48 = v19;
          _os_log_error_impl(&dword_1C914D000, v20, OS_LOG_TYPE_ERROR, "[%{public}@] Error trying to unarchive metadata %{public}@", buf, 0x16u);
        }
      }

      v8 = a7;
      a8 = v42;
    }

    else
    {
      *(*(a1[7] + 8) + 40) = 0;
    }

    *(*(a1[6] + 8) + 24) = a5;
  }

  if (*(*(a1[8] + 8) + 24) != v8)
  {
    if (a8)
    {
      v44 = 0;
      v41 = MEMORY[0x1E696ACD0];
      v43 = a8;
      v21 = MEMORY[0x1E695DFD8];
      v22 = objc_opt_class();
      v23 = v8;
      v24 = objc_opt_class();
      v25 = objc_opt_class();
      v26 = objc_opt_class();
      v27 = objc_opt_class();
      v28 = objc_opt_class();
      v37 = v24;
      v8 = v23;
      *(*(a1[9] + 8) + 40) = [v41 unarchivedObjectOfClasses:objc_msgSend(v21 fromData:"setWithObjects:" error:{v22, v37, v25, v26, v27, v28, objc_opt_class(), 0), objc_msgSend(MEMORY[0x1E695DEF0], "dataWithBytes:length:", v23, v43), &v44}];
      v29 = v44;
      if (v44)
      {
        v30 = SRLogSensorKitBackend;
        if (os_log_type_enabled(SRLogSensorKitBackend, OS_LOG_TYPE_ERROR))
        {
          v36 = *(a1[4] + 32);
          *buf = 138543618;
          v46 = v36;
          v47 = 2114;
          v48 = v29;
          _os_log_error_impl(&dword_1C914D000, v30, OS_LOG_TYPE_ERROR, "[%{public}@] Error trying to unarchive configuration %{public}@", buf, 0x16u);
        }
      }
    }

    else
    {
      *(*(a1[9] + 8) + 40) = 0;
    }

    *(*(a1[8] + 8) + 24) = v8;
  }

  *(*(a1[10] + 8) + 24) = a2;
  v31 = *(*(a1[7] + 8) + 40);
  v32 = *(*(a1[9] + 8) + 40);
  *(*(a1[11] + 8) + 24) = (*(a1[5] + 16))(a2);
  result = *(*(a1[11] + 8) + 24);
  v34 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __103__SRReaderSensorKitBackend_fetchSampleBytesFrom_to_inSegment_fetchRequest_retryAttempt_sampleCallback___block_invoke_68(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*(a1 + 72) <= 1 && (v4 = [a2 domain], objc_msgSend(v4, "isEqualToString:", *MEMORY[0x1E696A250])) && objc_msgSend(a2, "code") == 4097)
  {
    v5 = SRLogSensorKitBackend;
    if (os_log_type_enabled(SRLogSensorKitBackend, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v16 = 138543362;
      v17 = v6;
      _os_log_impl(&dword_1C914D000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Connection was interrupted so retrying the fetch request", &v16, 0xCu);
    }

    Weak = objc_loadWeak((a1 + 64));
    result = [(SRReaderSensorKitBackend *)Weak fetchSampleBytesFrom:*(a1 + 48) to:*(a1 + 72) + 1 inSegment:*(a1 + 56) fetchRequest:*(a1 + 88) retryAttempt:*(a1 + 80) sampleCallback:?];
    v9 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v10 = *(a1 + 56);
    v11 = *(a1 + 80);
    v12 = +[SRError connectionNotFoundError];
    v13 = *(v10 + 16);
    v14 = *MEMORY[0x1E69E9840];
    v15.n128_u64[0] = v11;

    return v13(v10, 0, 0, 0, 0, 1, 0, v12, v15);
  }

  return result;
}

uint64_t __103__SRReaderSensorKitBackend_fetchSampleBytesFrom_to_inSegment_fetchRequest_retryAttempt_sampleCallback___block_invoke_69(uint64_t a1, uint64_t a2)
{
  Weak = objc_loadWeak((a1 + 56));
  v5 = *(a1 + 40);
  v6.n128_u64[0] = *(*(*(a1 + 48) + 8) + 24);
  v7.n128_u64[0] = *(a1 + 64);
  v8 = *(a1 + 32);

  return [(SRReaderSensorKitBackend *)Weak continueFetchRequest:v8 from:a2 to:v5 withDatastoreFiles:v6 callback:v7];
}

- (void)fetchReaderMetadata:(id)metadata reply:(id)reply
{
  sensor = self->_sensor;
  connection = [(SRReaderSensorKitBackend *)self connection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__SRReaderSensorKitBackend_fetchReaderMetadata_reply___block_invoke;
  v8[3] = &unk_1E83303B8;
  v8[4] = sensor;
  [-[NSXPCConnection synchronousRemoteObjectProxyWithErrorHandler:](connection synchronousRemoteObjectProxyWithErrorHandler:{v8), "fetchReaderMetadata:reply:", metadata, reply}];
}

void __54__SRReaderSensorKitBackend_fetchReaderMetadata_reply___block_invoke(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = SRLogSensorKitBackend;
  if (os_log_type_enabled(SRLogSensorKitBackend, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = a2;
    _os_log_error_impl(&dword_1C914D000, v4, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to get earliest eligible time because %{public}@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)startRecording:(id)recording reply:(id)reply
{
  sensor = self->_sensor;
  connection = [(SRReaderSensorKitBackend *)self connection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __49__SRReaderSensorKitBackend_startRecording_reply___block_invoke;
  v10[3] = &unk_1E83303E0;
  v10[4] = sensor;
  v10[5] = reply;
  v8 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v10];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49__SRReaderSensorKitBackend_startRecording_reply___block_invoke_70;
  v9[3] = &unk_1E8330408;
  v9[4] = reply;
  [v8 startRecording:recording reply:v9];
}

uint64_t __49__SRReaderSensorKitBackend_startRecording_reply___block_invoke(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = SRLogSensorKitBackend;
  if (os_log_type_enabled(SRLogSensorKitBackend, OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 32);
    v8 = 138543618;
    v9 = v7;
    v10 = 2114;
    v11 = a2;
    _os_log_error_impl(&dword_1C914D000, v4, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to get remote proxy because %{public}@", &v8, 0x16u);
  }

  result = (*(*(a1 + 40) + 16))(*(a1 + 40), +[SRError connectionNotFoundError]);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)stopRecording:(id)recording reply:(id)reply
{
  sensor = self->_sensor;
  connection = [(SRReaderSensorKitBackend *)self connection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__SRReaderSensorKitBackend_stopRecording_reply___block_invoke;
  v8[3] = &unk_1E83303E0;
  v8[4] = sensor;
  v8[5] = reply;
  [-[NSXPCConnection remoteObjectProxyWithErrorHandler:](connection remoteObjectProxyWithErrorHandler:{v8), "stopRecording:reply:", recording, reply}];
}

uint64_t __48__SRReaderSensorKitBackend_stopRecording_reply___block_invoke(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = SRLogSensorKitBackend;
  if (os_log_type_enabled(SRLogSensorKitBackend, OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 32);
    v8 = 138543618;
    v9 = v7;
    v10 = 2114;
    v11 = a2;
    _os_log_error_impl(&dword_1C914D000, v4, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to get remote proxy because %{public}@", &v8, 0x16u);
  }

  result = (*(*(a1 + 40) + 16))(*(a1 + 40), +[SRError connectionNotFoundError]);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)fetchDevices:(id)devices reply:(id)reply
{
  sensor = self->_sensor;
  connection = [(SRReaderSensorKitBackend *)self connection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__SRReaderSensorKitBackend_fetchDevices_reply___block_invoke;
  v8[3] = &unk_1E83303E0;
  v8[4] = sensor;
  v8[5] = reply;
  [-[NSXPCConnection remoteObjectProxyWithErrorHandler:](connection remoteObjectProxyWithErrorHandler:{v8), "fetchAllDevices:reply:", devices, reply}];
}

uint64_t __47__SRReaderSensorKitBackend_fetchDevices_reply___block_invoke(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = SRLogSensorKitBackend;
  if (os_log_type_enabled(SRLogSensorKitBackend, OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 32);
    v8 = 138543618;
    v9 = v7;
    v10 = 2114;
    v11 = a2;
    _os_log_error_impl(&dword_1C914D000, v4, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to get remote proxy because %{public}@", &v8, 0x16u);
  }

  result = (*(*(a1 + 40) + 16))();
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)resetDatastoreFiles:(id)files
{
  if (self)
  {
    objc_setProperty_atomic(self, a2, files, 40);
  }
}

- (id)datastore
{
  v31 = *MEMORY[0x1E69E9840];
  if (!self || (Property = objc_getProperty(self, a2, 40, 1)) == 0)
  {
LABEL_9:
    result = self->_datastore;
    goto LABEL_13;
  }

  v5 = Property;
  objc_setProperty_atomic(self, v4, 0, 40);

  self->_datastore = 0;
  v6 = [v5 objectForKeyedSubscript:0x1F48C05C0];
  v7 = [v5 objectForKeyedSubscript:0x1F48C05E0];
  v8 = [v5 objectForKeyedSubscript:0x1F48C0600];
  v9 = [v5 objectForKeyedSubscript:0x1F48C0620];

  v10 = [v5 objectForKeyedSubscript:0x1F48C0640];
  self->_deviceDetails = v10;
  v11 = SRLogSensorKitBackend;
  if (os_log_type_enabled(SRLogSensorKitBackend, OS_LOG_TYPE_INFO))
  {
    sensor = self->_sensor;
    v19 = 138544643;
    v20 = sensor;
    v21 = 2114;
    v22 = v6;
    v23 = 2114;
    v24 = v7;
    v25 = 2114;
    v26 = v8;
    v27 = 2114;
    v28 = v9;
    v29 = 2113;
    v30 = v10;
    _os_log_impl(&dword_1C914D000, v11, OS_LOG_TYPE_INFO, "[%{public}@] Creating a new datastore with samples: %{public}@, metadata: %{public}@, configuration: %{public}@, defaults: %{public}@, deviceDetails: %{private}@", &v19, 0x3Eu);
  }

  if (v6)
  {
    v13 = [[SRDefaults alloc] initWithDictionary:v9];
    v14 = [SRDatastore alloc];
    if (v14)
    {
      v14 = [(SRDatastore *)v14 initWithSampleFile:v6 metadataFile:v7 configurationFile:v8 permission:0 defaults:v13 writingStats:0];
    }

    self->_datastore = v14;

    goto LABEL_9;
  }

  v16 = SRLogSensorKitBackend;
  if (os_log_type_enabled(SRLogSensorKitBackend, OS_LOG_TYPE_DEBUG))
  {
    v18 = self->_sensor;
    v19 = 138543362;
    v20 = v18;
    _os_log_debug_impl(&dword_1C914D000, v16, OS_LOG_TYPE_DEBUG, "[%{public}@] No sample file received so clearing the datastore", &v19, 0xCu);
  }

  result = 0;
LABEL_13:
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

@end