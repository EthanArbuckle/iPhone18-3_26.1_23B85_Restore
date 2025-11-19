@interface SRSensorReader
+ (id)createExportDataForServices:(id)a3 withCompletionHandler:(id)a4;
+ (id)createExportDataWithCompletionHandler:(id)a3;
+ (void)_requestAuthorizationMigrationForSensors:(id)a3 completion:(id)a4;
+ (void)authorizationRequestStatusForBundle:(id)a3 sensors:(id)a4 completionHandler:(id)a5;
+ (void)initialize;
+ (void)requestAuthorizationForBundle:(id)a3 sensors:(id)a4 legacyPromptErrorBehavior:(BOOL)a5 withCompletionHandler:(id)a6;
+ (void)requestAuthorizationForSensors:(NSSet *)sensors completion:(void *)completion;
- (BOOL)_updateAuthorizationStatusWithAuthorizedServices:(id)a3 deniedServices:(id)a4 dataCollectionEnabled:(BOOL)a5 onboardingCompleted:(BOOL)a6 lastModifiedTimes:(id)a7 forBundleIdentifier:(id)a8 previousAuthorizationStatus:(int64_t)a9;
- (BOOL)fetchingRequest:(id)a3 didFetchResult:(id)a4;
- (BOOL)isAuthorized;
- (SRAuthorizationStatus)authorizationStatus;
- (SRSensor)sensor;
- (SRSensorReader)init;
- (SRSensorReader)initWithSensor:(SRSensor)sensor;
- (SRSensorReader)initWithSensor:(id)a3 bundle:(id)a4;
- (SRSensorReader)initWithSensor:(id)a3 sensorDescription:(id)a4 datastoreBackend:(id)a5 authorizationClient:(id)a6 bundleId:(id)a7;
- (double)earliestEligibleTime;
- (double)serviceStartTime;
- (id)createExportDataWithCompletionHandler:(id)a3;
- (void)_startRecordingWithSensorConfiguration:(id)a3 completionHandler:(id)a4;
- (void)dealloc;
- (void)didChangeAuthorizationStatus:(int64_t)a3;
- (void)didCompleteFetch:(id)a3;
- (void)didFetchDevices:(id)a3;
- (void)fetch:(SRFetchRequest *)request;
- (void)fetchDevices:(id)a3;
- (void)fetchDevicesDidFailWithError:(id)a3;
- (void)fetchDevicesWithRetryAttempt:(int)a3;
- (void)fetchReaderMetadata;
- (void)fetchingRequest:(id)a3 failedWithError:(id)a4;
- (void)sensorReaderDidStopRecording;
- (void)sensorReaderWillStartRecording;
- (void)setExportingSampleFromDescription:(id)a3;
- (void)setSampleClassFromDescription:(id)a3;
- (void)startRecording;
- (void)startRecordingFailedWithError:(id)a3;
- (void)stopRecording;
- (void)stopRecordingFailedWithError:(id)a3;
- (void)stopRecordingWithCompletionHandler:(id)a3;
@end

@implementation SRSensorReader

+ (id)createExportDataWithCompletionHandler:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DFA8] set];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = +[SRSensorsCache defaultCache];
  v7 = [(SRSensorsCache *)v6 allSensorDescriptions];
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      v11 = 0;
      do
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [v5 addObject:{objc_msgSend(*(*(&v23 + 1) + 8 * v11++), "name")}];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v9);
  }

  v12 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v5, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = [v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      v16 = 0;
      do
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v5);
        }

        [v12 addObject:{objc_msgSend(*(*(&v19 + 1) + 8 * v16++), "sr_sensorForDeletionRecordsFromSensor")}];
      }

      while (v14 != v16);
      v14 = [v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v14);
  }

  [v5 unionSet:v12];
  result = [a1 createExportDataForServices:objc_msgSend(MEMORY[0x1E695DFD8] withCompletionHandler:{"setWithSet:", v5), a3}];
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)createExportDataForServices:(id)a3 withCompletionHandler:(id)a4
{
  v6 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:@"com.apple.SensorKitDataExport"];
  [v6 setRemoteObjectInterface:{objc_msgSend(MEMORY[0x1E696B0D0], "interfaceWithProtocol:", &unk_1F48D7AC8)}];
  [v6 resume];
  objc_initWeak(&location, v6);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __80__SRSensorReader_DataExport__createExportDataForServices_withCompletionHandler___block_invoke;
  v12[3] = &unk_1E8330230;
  objc_copyWeak(&v13, &location);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __80__SRSensorReader_DataExport__createExportDataForServices_withCompletionHandler___block_invoke_2;
  v11[3] = &unk_1E8330258;
  v11[4] = v6;
  v11[5] = a4;
  v7 = [v6 remoteObjectProxyWithErrorHandler:v11];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __80__SRSensorReader_DataExport__createExportDataForServices_withCompletionHandler___block_invoke_12;
  v10[3] = &unk_1E8330280;
  v10[4] = v6;
  v10[5] = a4;
  [v7 exportDataForSensors:a3 reply:v10];
  v8 = [v12 copy];
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
  return v8;
}

uint64_t __80__SRSensorReader_DataExport__createExportDataForServices_withCompletionHandler___block_invoke(uint64_t a1)
{
  if (qword_1EE02AAC0 != -1)
  {
    dispatch_once(&qword_1EE02AAC0, &__block_literal_global);
  }

  v2 = _MergedGlobals_0;
  if (os_log_type_enabled(_MergedGlobals_0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C914D000, v2, OS_LOG_TYPE_DEFAULT, "Cancelling data export", buf, 2u);
  }

  Weak = objc_loadWeak((a1 + 32));
  v4 = [Weak remoteObjectProxy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __80__SRSensorReader_DataExport__createExportDataForServices_withCompletionHandler___block_invoke_9;
  v6[3] = &unk_1E8330208;
  v6[4] = Weak;
  return [v4 cancelWithReply:v6];
}

void __80__SRSensorReader_DataExport__createExportDataForServices_withCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (qword_1EE02AAC0 != -1)
  {
    dispatch_once(&qword_1EE02AAC0, &__block_literal_global);
  }

  v4 = _MergedGlobals_0;
  if (os_log_type_enabled(_MergedGlobals_0, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = a2;
    _os_log_error_impl(&dword_1C914D000, v4, OS_LOG_TYPE_ERROR, "Couldn't connect to data export service because %{public}@", &v6, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) invalidate];

  v5 = *MEMORY[0x1E69E9840];
}

void __80__SRSensorReader_DataExport__createExportDataForServices_withCompletionHandler___block_invoke_12(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) invalidate];
  v2 = *(a1 + 32);
}

- (id)createExportDataWithCompletionHandler:(id)a3
{
  v5 = objc_opt_class();
  v6 = [MEMORY[0x1E695DFD8] setWithObject:{-[SRSensorReader sensor](self, "sensor")}];

  return [v5 createExportDataForServices:v6 withCompletionHandler:a3];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    qword_1EE02ABA8 = os_log_create("com.apple.SensorKit", "Reader");
  }
}

- (SRSensorReader)init
{
  [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];

  return 0;
}

- (SRSensorReader)initWithSensor:(SRSensor)sensor
{
  v5 = [MEMORY[0x1E696AAE8] mainBundle];

  return [(SRSensorReader *)self initWithSensor:sensor bundle:v5];
}

- (SRSensorReader)initWithSensor:(id)a3 bundle:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = +[SRAuthorizationClient sharedInstance];
  v8 = [SRSensorDescription sensorDescriptionForSensor:a3];
  if (!v8)
  {
    v16 = qword_1EE02ABA8;
    if (os_log_type_enabled(qword_1EE02ABA8, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543362;
      v21 = a3;
      _os_log_fault_impl(&dword_1C914D000, v16, OS_LOG_TYPE_FAULT, "Failed to find description for sensor %{public}@", buf, 0xCu);
    }

    v17 = *MEMORY[0x1E695D930];
    v18 = @"RequestedSensor";
    v19 = a3;
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:v17 reason:@"Failed to find description for sensor" userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v19, &v18, 1)}]);
  }

  v9 = v8;
  v10 = [v8 datastoreBackend];
  if (v10 == 1)
  {
    v11 = SRReaderLongTermBackend;
  }

  else
  {
    if (v10)
    {
      v12 = 0;
      goto LABEL_9;
    }

    v11 = SRReaderSensorKitBackend;
  }

  v12 = [v11 alloc];
  if (v12)
  {
    v12 = [v12 initWithSensor:a3 xpcConnection:{objc_msgSend(objc_opt_class(), "connectionToEndpoint")}];
  }

LABEL_9:
  v13 = -[SRSensorReader initWithSensor:sensorDescription:datastoreBackend:authorizationClient:bundleId:](self, "initWithSensor:sensorDescription:datastoreBackend:authorizationClient:bundleId:", a3, v9, v12, v7, [a4 bundleIdentifier]);

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (SRSensorReader)initWithSensor:(id)a3 sensorDescription:(id)a4 datastoreBackend:(id)a5 authorizationClient:(id)a6 bundleId:(id)a7
{
  v24 = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = SRSensorReader;
  v12 = [(SRSensorReader *)&v19 init];
  v13 = v12;
  if (v12)
  {
    [(SRSensorReader *)v12 setAuthorizationStatus:0xFFFFLL];
    if (!a4)
    {
      v17 = qword_1EE02ABA8;
      if (os_log_type_enabled(qword_1EE02ABA8, OS_LOG_TYPE_FAULT))
      {
        *buf = 138543362;
        v23 = a3;
        _os_log_fault_impl(&dword_1C914D000, v17, OS_LOG_TYPE_FAULT, "Failed to find description for sensor %{public}@", buf, 0xCu);
      }

      v18 = *MEMORY[0x1E695D930];
      v20 = @"RequestedSensor";
      v21 = a3;
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:v18 reason:@"Failed to find description for sensor" userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v21, &v20, 1)}]);
    }

    [(SRSensorReader *)v13 setSampleClassFromDescription:a4];
    [(SRSensorReader *)v13 setExportingSampleFromDescription:a4];
    if (([objc_msgSend(a4 "name")] & 1) == 0)
    {
      [(SRSensorReader *)v13 setRequestedSensor:a3];
    }

    -[SRSensorReader setCanonicalSensor:](v13, "setCanonicalSensor:", [a4 name]);
    [(SRSensorReader *)v13 setDatastoreBackend:a5];
    [(SRReaderStorageBackend *)[(SRSensorReader *)v13 datastoreBackend] setupConnection];
    v13->_bundleId = [a7 copy];
    v14 = a6;
    v13->_authorizationClient = v14;
    [(SRAuthorizationClient *)v14 addListener:v13 forBundleId:a7];
  }

  v15 = *MEMORY[0x1E69E9840];
  return v13;
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = qword_1EE02ABA8;
  if (os_log_type_enabled(qword_1EE02ABA8, OS_LOG_TYPE_DEFAULT))
  {
    canonicalSensor = self->_canonicalSensor;
    *buf = 138543362;
    v8 = canonicalSensor;
    _os_log_impl(&dword_1C914D000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] deallocating reader and invalidating XPC connection", buf, 0xCu);
  }

  [(SRSensorReader *)self setDatastoreBackend:0];
  [(SRSensorReader *)self setBundleId:0];

  self->_canonicalSensor = 0;
  [(SRSensorReader *)self setRequestedSensor:0];
  [(SRAuthorizationClient *)[(SRSensorReader *)self authorizationClient] removeListener:self];
  [(SRSensorReader *)self setAuthorizationClient:0];
  v6.receiver = self;
  v6.super_class = SRSensorReader;
  [(SRSensorReader *)&v6 dealloc];
  v5 = *MEMORY[0x1E69E9840];
}

- (SRSensor)sensor
{
  result = [(SRSensorReader *)self requestedSensor];
  if (!result)
  {

    return [(SRSensorReader *)self canonicalSensor];
  }

  return result;
}

- (void)setSampleClassFromDescription:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = [a3 sampleClass];
  if (v4)
  {
    v5 = v4;
    v6 = NSClassFromString(v4);
    v7 = v6;
    if (v6)
    {
      if (([(objc_class *)v6 conformsToProtocol:&unk_1F48CB710]& 1) != 0)
      {
        goto LABEL_9;
      }

      v8 = qword_1EE02ABA8;
      if (!os_log_type_enabled(qword_1EE02ABA8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      canonicalSensor = self->_canonicalSensor;
      v17 = 138543618;
      v18 = canonicalSensor;
      v19 = 2114;
      v20 = NSStringFromClass(v7);
      v10 = "[%{public}@] Sample class %{public}@ does not conform to SRSampling";
      v11 = v8;
    }

    else
    {
      v14 = qword_1EE02ABA8;
      if (!os_log_type_enabled(qword_1EE02ABA8, OS_LOG_TYPE_ERROR))
      {
LABEL_9:
        self->_sampleClass = v7;
        goto LABEL_10;
      }

      v16 = self->_canonicalSensor;
      v17 = 138543618;
      v18 = v16;
      v19 = 2114;
      v20 = v5;
      v10 = "[%{public}@] Sample class %{public}@ can't be found using NSClassFromString(). If this is a binary only stream, this can be ignored.";
      v11 = v14;
    }

    _os_log_error_impl(&dword_1C914D000, v11, OS_LOG_TYPE_ERROR, v10, &v17, 0x16u);
    goto LABEL_9;
  }

  v12 = qword_1EE02ABA8;
  if (os_log_type_enabled(qword_1EE02ABA8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = self->_canonicalSensor;
    v17 = 138543362;
    v18 = v13;
    _os_log_impl(&dword_1C914D000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Sample class is not set. If this is a binary only stream, this can be ignored. Otherwise, please make sure the SampleClass entry is populated in the sensor description plist.", &v17, 0xCu);
  }

LABEL_10:
  v15 = *MEMORY[0x1E69E9840];
}

- (void)setExportingSampleFromDescription:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = NSClassFromString([a3 exportingSampleClass]);
  if (v4 == objc_opt_class())
  {
    v4 = 0;
  }

  if (!v4 || ([(objc_class *)v4 conformsToProtocol:&unk_1F48CC170]& 1) != 0 || ([(objc_class *)v4 conformsToProtocol:&unk_1F48D7FA8]& 1) != 0)
  {
    self->_exportingSampleClass = v4;
  }

  else
  {
    v6 = qword_1EE02ABA8;
    if (os_log_type_enabled(qword_1EE02ABA8, OS_LOG_TYPE_ERROR))
    {
      canonicalSensor = self->_canonicalSensor;
      v8 = 138543362;
      v9 = canonicalSensor;
      _os_log_error_impl(&dword_1C914D000, v6, OS_LOG_TYPE_ERROR, "[%{public}@] Exporting sample class is not properly set. Please make sure writer delegate implements exportingClassNameForSensorIdentifier properly.", &v8, 0xCu);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)fetchReaderMetadata
{
  v3 = objc_alloc_init(SRReaderRequest);
  [(SRReaderRequest *)v3 setBundleIdentifier:self->_bundleId];
  [(SRReaderRequest *)v3 setSensor:self->_canonicalSensor];
  objc_initWeak(&location, self);
  v4 = [(SRSensorReader *)self datastoreBackend];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37__SRSensorReader_fetchReaderMetadata__block_invoke;
  v5[3] = &unk_1E8330920;
  objc_copyWeak(&v6, &location);
  [(SRReaderStorageBackend *)v4 fetchReaderMetadata:v3 reply:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void *__37__SRSensorReader_fetchReaderMetadata__block_invoke(uint64_t a1, void *a2)
{
  result = objc_loadWeak((a1 + 32));
  if (result)
  {
    v4 = result;
    [objc_msgSend(a2 objectForKeyedSubscript:{0x1F48BD720), "doubleValue"}];
    v4[2] = v5;
    result = [objc_msgSend(a2 objectForKeyedSubscript:{0x1F48BD700), "doubleValue"}];
    v4[1] = v6;
  }

  return result;
}

- (double)serviceStartTime
{
  result = self->_serviceStartTime;
  if (result == 0.0)
  {
    [(SRSensorReader *)self fetchReaderMetadata];
    return self->_serviceStartTime;
  }

  return result;
}

- (double)earliestEligibleTime
{
  result = self->_earliestEligibleTime;
  if (result == 0.0)
  {
    [(SRSensorReader *)self fetchReaderMetadata];
    return self->_earliestEligibleTime;
  }

  return result;
}

- (BOOL)fetchingRequest:(id)a3 didFetchResult:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = [(SRSensorReader *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v8 = qword_1EE02ABA8;
    if (os_log_type_enabled(qword_1EE02ABA8, OS_LOG_TYPE_DEBUG))
    {
      canonicalSensor = self->_canonicalSensor;
      v12 = 138543618;
      v13 = canonicalSensor;
      v14 = 2050;
      v15 = v7;
      _os_log_debug_impl(&dword_1C914D000, v8, OS_LOG_TYPE_DEBUG, "[%{public}@] about to call delegate (%{public}p) with sensorReader:fetchingRequest:didFetchResult:", &v12, 0x16u);
    }

    result = [v7 sensorReader:self fetchingRequest:a3 didFetchResult:a4];
  }

  else
  {
    result = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)didCompleteFetch:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = [(SRSensorReader *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = qword_1EE02ABA8;
    if (os_log_type_enabled(qword_1EE02ABA8, OS_LOG_TYPE_DEBUG))
    {
      canonicalSensor = self->_canonicalSensor;
      v9 = 138543618;
      v10 = canonicalSensor;
      v11 = 2050;
      v12 = v5;
      _os_log_debug_impl(&dword_1C914D000, v6, OS_LOG_TYPE_DEBUG, "[%{public}@] about to call delegate (%{public}p) with sensorReader:didCompleteFetch:", &v9, 0x16u);
    }

    [v5 sensorReader:self didCompleteFetch:a3];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)fetchingRequest:(id)a3 failedWithError:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v7 = [(SRSensorReader *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v8 = qword_1EE02ABA8;
    if (os_log_type_enabled(qword_1EE02ABA8, OS_LOG_TYPE_DEBUG))
    {
      canonicalSensor = self->_canonicalSensor;
      v11 = 138543618;
      v12 = canonicalSensor;
      v13 = 2050;
      v14 = v7;
      _os_log_debug_impl(&dword_1C914D000, v8, OS_LOG_TYPE_DEBUG, "[%{public}@] about to call delegate (%{public}p) with sensorReader:fetchingRequest:failedWithError:", &v11, 0x16u);
    }

    [v7 sensorReader:self fetchingRequest:a3 failedWithError:a4];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)didFetchDevices:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = [(SRSensorReader *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = qword_1EE02ABA8;
    if (os_log_type_enabled(qword_1EE02ABA8, OS_LOG_TYPE_DEBUG))
    {
      canonicalSensor = self->_canonicalSensor;
      v9 = 138543618;
      v10 = canonicalSensor;
      v11 = 2050;
      v12 = v5;
      _os_log_debug_impl(&dword_1C914D000, v6, OS_LOG_TYPE_DEBUG, "[%{public}@] about to call delegate (%{public}p) with sensorReader:didFetchDevices:", &v9, 0x16u);
    }

    [v5 sensorReader:self didFetchDevices:a3];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)fetchDevicesDidFailWithError:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = [(SRSensorReader *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = qword_1EE02ABA8;
    if (os_log_type_enabled(qword_1EE02ABA8, OS_LOG_TYPE_DEBUG))
    {
      canonicalSensor = self->_canonicalSensor;
      v9 = 138543618;
      v10 = canonicalSensor;
      v11 = 2050;
      v12 = v5;
      _os_log_debug_impl(&dword_1C914D000, v6, OS_LOG_TYPE_DEBUG, "[%{public}@] about to call delegate (%{public}p) with sensorReader:fetchDevicesDidFailWithError:", &v9, 0x16u);
    }

    [v5 sensorReader:self fetchDevicesDidFailWithError:a3];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)sensorReaderWillStartRecording
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [(SRSensorReader *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = qword_1EE02ABA8;
    if (os_log_type_enabled(qword_1EE02ABA8, OS_LOG_TYPE_DEBUG))
    {
      canonicalSensor = self->_canonicalSensor;
      v7 = 138543618;
      v8 = canonicalSensor;
      v9 = 2050;
      v10 = v3;
      _os_log_debug_impl(&dword_1C914D000, v4, OS_LOG_TYPE_DEBUG, "[%{public}@] about to call delegate (%{public}p) with sensorReaderWillStartRecording:", &v7, 0x16u);
    }

    [v3 sensorReaderWillStartRecording:self];
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)startRecordingFailedWithError:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = [(SRSensorReader *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = qword_1EE02ABA8;
    if (os_log_type_enabled(qword_1EE02ABA8, OS_LOG_TYPE_DEBUG))
    {
      canonicalSensor = self->_canonicalSensor;
      v9 = 138543618;
      v10 = canonicalSensor;
      v11 = 2050;
      v12 = v5;
      _os_log_debug_impl(&dword_1C914D000, v6, OS_LOG_TYPE_DEBUG, "[%{public}@] about to call delegate (%{public}p) with sensorReader:startRecordingFailedWithError:", &v9, 0x16u);
    }

    [v5 sensorReader:self startRecordingFailedWithError:a3];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)sensorReaderDidStopRecording
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [(SRSensorReader *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = qword_1EE02ABA8;
    if (os_log_type_enabled(qword_1EE02ABA8, OS_LOG_TYPE_DEBUG))
    {
      canonicalSensor = self->_canonicalSensor;
      v7 = 138543618;
      v8 = canonicalSensor;
      v9 = 2050;
      v10 = v3;
      _os_log_debug_impl(&dword_1C914D000, v4, OS_LOG_TYPE_DEBUG, "[%{public}@] about to call delegate (%{public}p) with sensorReaderDidStopRecording:", &v7, 0x16u);
    }

    [v3 sensorReaderDidStopRecording:self];
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)stopRecordingFailedWithError:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = [(SRSensorReader *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = qword_1EE02ABA8;
    if (os_log_type_enabled(qword_1EE02ABA8, OS_LOG_TYPE_DEBUG))
    {
      canonicalSensor = self->_canonicalSensor;
      v9 = 138543618;
      v10 = canonicalSensor;
      v11 = 2050;
      v12 = v5;
      _os_log_debug_impl(&dword_1C914D000, v6, OS_LOG_TYPE_DEBUG, "[%{public}@] about to call delegate (%{public}p) with sensorReader:stopRecordingFailedWithError:", &v9, 0x16u);
    }

    [v5 sensorReader:self stopRecordingFailedWithError:a3];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)didChangeAuthorizationStatus:(int64_t)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = [(SRSensorReader *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = qword_1EE02ABA8;
    if (os_log_type_enabled(qword_1EE02ABA8, OS_LOG_TYPE_INFO))
    {
      canonicalSensor = self->_canonicalSensor;
      v9 = 138543618;
      v10 = canonicalSensor;
      v11 = 2050;
      v12 = v5;
      _os_log_impl(&dword_1C914D000, v6, OS_LOG_TYPE_INFO, "[%{public}@] about to call delegate (%{public}p) with sensorReader:didChangeAuthorizationStatus:", &v9, 0x16u);
    }

    [v5 sensorReader:self didChangeAuthorizationStatus:a3];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)fetch:(SRFetchRequest *)request
{
  location[3] = *MEMORY[0x1E69E9840];
  if ([(SRFetchRequest *)request device])
  {
    if ([(SRFetchRequest *)request _cursor]|| ([(SRFetchRequest *)request from], [(SRFetchRequest *)request to], [(SRFetchRequest *)request from], v6 = v5, [(SRFetchRequest *)request to], v6 <= v7))
    {
      objc_initWeak(location, self);
      v15 = MEMORY[0x1E69E9820];
      objc_copyWeak(&v16, location);
      v9 = [(SRSensorReader *)self canonicalSensor:v15];
      v10 = objc_alloc_init(SRReaderFetchRequest);
      [(SRReaderFetchRequest *)v10 setBundleIdentifier:self->_bundleId];
      [(SRReaderFetchRequest *)v10 setDeviceIdentifier:[(SRDevice *)[(SRFetchRequest *)request device] deviceIdentifier]];
      [(SRReaderFetchRequest *)v10 setSensor:v9];
      [(SRFetchRequest *)request from];
      [(SRReaderFetchRequest *)v10 setFrom:?];
      [(SRFetchRequest *)request to];
      [(SRReaderFetchRequest *)v10 setTo:?];
      [(SRReaderFetchRequest *)v10 setBypassHoldingPeriod:self->_bypassHoldingPeriod];
      [(SRReaderFetchRequest *)v10 setCursor:[(SRFetchRequest *)request _cursor]];
      [(SRReaderStorageBackend *)[(SRSensorReader *)self datastoreBackend] fetch:v10 withCallback:&v15];

      objc_destroyWeak(&v16);
      objc_destroyWeak(location);
    }

    else
    {
      v8 = qword_1EE02ABA8;
      if (os_log_type_enabled(qword_1EE02ABA8, OS_LOG_TYPE_ERROR))
      {
        canonicalSensor = self->_canonicalSensor;
        LODWORD(location[0]) = 138543362;
        *(location + 4) = canonicalSensor;
        _os_log_error_impl(&dword_1C914D000, v8, OS_LOG_TYPE_ERROR, "[%{public}@] Fetch request contained a 'from' field that was before the 'to' field", location, 0xCu);
      }

      [(SRSensorReader *)self fetchingRequest:request failedWithError:[SRError errorWithCode:3]];
    }
  }

  else
  {
    v11 = qword_1EE02ABA8;
    if (os_log_type_enabled(qword_1EE02ABA8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = self->_canonicalSensor;
      LODWORD(location[0]) = 138543362;
      *(location + 4) = v12;
      _os_log_impl(&dword_1C914D000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Fetch request specified a nil device, immediately calling -didComplete...", location, 0xCu);
    }

    [(SRSensorReader *)self didCompleteFetch:request];
  }

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t __24__SRSensorReader_fetch___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  Weak = objc_loadWeak((a1 + 40));
  v19 = Weak;
  if (a6)
  {
    if (a6 == 1)
    {
      if (a8)
      {
        [Weak fetchingRequest:*(a1 + 32) failedWithError:a8];
      }

      else
      {
        if (a2)
        {
          if (a3)
          {
            v23 = -[SRFetchResult initWithBytes:length:timestamp:metadata:configuration:cursor:sampleClass:]([SRFetchResult alloc], "initWithBytes:length:timestamp:metadata:configuration:cursor:sampleClass:", a2, a3, a4, a5, a7, [Weak sampleClass], a9);
            [v19 fetchingRequest:*(a1 + 32) didFetchResult:v23];
          }
        }

        [v19 didCompleteFetch:*(a1 + 32)];
      }
    }
  }

  else
  {
    v20 = -[SRFetchResult initWithBytes:length:timestamp:metadata:configuration:cursor:sampleClass:]([SRFetchResult alloc], "initWithBytes:length:timestamp:metadata:configuration:cursor:sampleClass:", a2, a3, a4, a5, a7, [Weak sampleClass], a9);
    v21 = [v19 fetchingRequest:*(a1 + 32) didFetchResult:v20];

    if ((v21 & 1) == 0)
    {
      [v19 didCompleteFetch:*(a1 + 32)];
      return 0;
    }
  }

  return 1;
}

- (void)startRecording
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __32__SRSensorReader_startRecording__block_invoke;
  v3[3] = &unk_1E83308F8;
  objc_copyWeak(&v4, &location);
  [(SRSensorReader *)self startRecordingWithCompletionHandler:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

uint64_t __32__SRSensorReader_startRecording__block_invoke(uint64_t a1, uint64_t a2)
{
  Weak = objc_loadWeak((a1 + 32));
  if (a2)
  {

    return [Weak startRecordingFailedWithError:a2];
  }

  else
  {

    return [Weak sensorReaderWillStartRecording];
  }
}

- (void)_startRecordingWithSensorConfiguration:(id)a3 completionHandler:(id)a4
{
  if (!a4)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v7 = [(SRSensorReader *)self canonicalSensor];
  v8 = objc_alloc_init(SRReaderRecordingRequest);
  [(SRReaderRecordingRequest *)v8 setBundleIdentifier:self->_bundleId];
  [(SRReaderRecordingRequest *)v8 setSensor:v7];
  [(SRReaderRecordingRequest *)v8 setSensorConfiguration:a3];
  [(SRReaderStorageBackend *)[(SRSensorReader *)self datastoreBackend] startRecording:v8 reply:a4];
}

- (void)stopRecording
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __31__SRSensorReader_stopRecording__block_invoke;
  v3[3] = &unk_1E83308F8;
  objc_copyWeak(&v4, &location);
  [(SRSensorReader *)self stopRecordingWithCompletionHandler:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

uint64_t __31__SRSensorReader_stopRecording__block_invoke(uint64_t a1, uint64_t a2)
{
  Weak = objc_loadWeak((a1 + 32));
  if (a2)
  {

    return [Weak stopRecordingFailedWithError:a2];
  }

  else
  {

    return [Weak sensorReaderDidStopRecording];
  }
}

- (void)stopRecordingWithCompletionHandler:(id)a3
{
  if (!a3)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v5 = [(SRSensorReader *)self canonicalSensor];
  v6 = objc_alloc_init(SRReaderRequest);
  [(SRReaderRequest *)v6 setBundleIdentifier:self->_bundleId];
  [(SRReaderRequest *)v6 setSensor:v5];
  [(SRReaderStorageBackend *)[(SRSensorReader *)self datastoreBackend] stopRecording:v6 reply:a3];
}

- (void)fetchDevicesWithRetryAttempt:(int)a3
{
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__SRSensorReader_fetchDevicesWithRetryAttempt___block_invoke;
  v5[3] = &unk_1E8331250;
  objc_copyWeak(&v6, &location);
  v7 = a3;
  v5[4] = self;
  [(SRSensorReader *)self fetchDevices:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

uint64_t __47__SRSensorReader_fetchDevicesWithRetryAttempt___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  Weak = objc_loadWeak((a1 + 40));
  v7 = Weak;
  if (a3)
  {
    if (*(a1 + 48) <= 1 && (v8 = [a3 domain], objc_msgSend(v8, "isEqualToString:", *MEMORY[0x1E696A250])) && objc_msgSend(a3, "code") == 4097)
    {
      v9 = qword_1EE02ABA8;
      if (os_log_type_enabled(qword_1EE02ABA8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(*(a1 + 32) + 40);
        v16 = 138543362;
        v17 = v10;
        _os_log_impl(&dword_1C914D000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Connection was interrupted so retrying the fetchDevices request", &v16, 0xCu);
      }

      result = [v7 fetchDevicesWithRetryAttempt:(*(a1 + 48) + 1)];
      v12 = *MEMORY[0x1E69E9840];
    }

    else
    {
      v13 = +[SRError connectionNotFoundError];
      v14 = *MEMORY[0x1E69E9840];

      return [v7 fetchDevicesDidFailWithError:v13];
    }
  }

  else
  {
    v15 = *MEMORY[0x1E69E9840];

    return [Weak didFetchDevices:a2];
  }

  return result;
}

- (void)fetchDevices:(id)a3
{
  v5 = objc_alloc_init(SRReaderRequest);
  [(SRReaderRequest *)v5 setBundleIdentifier:self->_bundleId];
  [(SRReaderRequest *)v5 setSensor:self->_canonicalSensor];
  v6 = [(SRSensorReader *)self datastoreBackend];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __31__SRSensorReader_fetchDevices___block_invoke;
  v7[3] = &unk_1E8330590;
  v7[4] = a3;
  [(SRReaderStorageBackend *)v6 fetchDevices:v5 reply:v7];
}

uint64_t __31__SRSensorReader_fetchDevices___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(a2, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [a2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(a2);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        if ([objc_msgSend(v8 objectForKeyedSubscript:{0x1F48BF3C0), "BOOLValue"}])
        {
          v9 = +[SRDevice currentDevice];
          -[SRDevice setDeviceIdentifier:](v9, "setDeviceIdentifier:", [v8 objectForKeyedSubscript:0x1F48BF300]);
        }

        else
        {
          v9 = [[SRDevice alloc] initWithDeviceDetails:v8];
        }

        [v3 addObject:v9];
      }

      v5 = [a2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  result = (*(*(a1 + 32) + 16))();
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)isAuthorized
{
  v3 = [(NSString *)self->_canonicalSensor sr_sensorByDeletingDeletionRecord];
  v4 = [(NSDictionary *)[(SRAuthorizationClient *)[(SRSensorReader *)self authorizationClient] authorizedServices] objectForKeyedSubscript:self->_bundleId];

  return [v4 containsObject:v3];
}

- (SRAuthorizationStatus)authorizationStatus
{
  v17 = *MEMORY[0x1E69E9840];
  p_authState = &self->_authState;
  v4 = atomic_load(&self->_authState);
  if (v4 == 0xFFFF)
  {
    v5 = qword_1EE02ABA8;
    if (os_log_type_enabled(qword_1EE02ABA8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v16 = [(SRSensorReader *)self sensor];
      _os_log_impl(&dword_1C914D000, v5, OS_LOG_TYPE_INFO, "[%@] Fetching initial authorization state", buf, 0xCu);
    }

    v6 = [(SRSensorReader *)self authorizationClient];
    v7 = [(SRSensorReader *)self bundleId];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __37__SRSensorReader_authorizationStatus__block_invoke;
    v13[3] = &unk_1E8331278;
    v13[4] = self;
    v14 = 0;
    [(SRAuthorizationClient *)v6 initialAuthorizationStateForBundleId:v7 authorizationState:v13];
  }

  v8 = atomic_load(p_authState);
  if (v8 == 0xFFFF)
  {
    v9 = qword_1EE02ABA8;
    if (os_log_type_enabled(qword_1EE02ABA8, OS_LOG_TYPE_FAULT))
    {
      v12 = [(SRSensorReader *)self sensor];
      *buf = 138412290;
      v16 = v12;
      _os_log_fault_impl(&dword_1C914D000, v9, OS_LOG_TYPE_FAULT, "[%@] returning an unknown authorization state!", buf, 0xCu);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return v8;
}

void __37__SRSensorReader_authorizationStatus__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _updateAuthorizationStatusWithAuthorizedServices:a2 deniedServices:a3 dataCollectionEnabled:a4 onboardingCompleted:a5 lastModifiedTimes:a6 forBundleIdentifier:objc_msgSend(*(a1 + 32) previousAuthorizationStatus:{"bundleId"), *(a1 + 40)}];
  LODWORD(v7) = 0xFFFF;
  atomic_compare_exchange_strong((*(a1 + 32) + 24), &v7, 0);
  v8 = qword_1EE02ABA8;
  if (os_log_type_enabled(qword_1EE02ABA8, OS_LOG_TYPE_INFO))
  {
    if (v7 == 0xFFFF)
    {
      v7 = 0;
    }

    else
    {
      v7 = v7;
    }

    v9 = [*(a1 + 32) sensor];
    *buf = 138543618;
    v12 = v9;
    v13 = 2048;
    v14 = v7;
    _os_log_impl(&dword_1C914D000, v8, OS_LOG_TYPE_INFO, "[%{public}@] Authorization status set to %ld after initial update", buf, 0x16u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

+ (void)requestAuthorizationForSensors:(NSSet *)sensors completion:(void *)completion
{
  v6 = [MEMORY[0x1E696AAE8] mainBundle];

  [SRSensorReader requestAuthorizationForBundle:v6 sensors:sensors legacyPromptErrorBehavior:0 withCompletionHandler:completion];
}

+ (void)requestAuthorizationForBundle:(id)a3 sensors:(id)a4 legacyPromptErrorBehavior:(BOOL)a5 withCompletionHandler:(id)a6
{
  v9 = a3;
  if (!a3)
  {
    v9 = [MEMORY[0x1E696AAE8] mainBundle];
  }

  if ([a4 count])
  {
    v11 = MEMORY[0x1E69E9820];
    LOBYTE(v12) = a5;
    verifyPlist(v9, a4);
    SRRequestAuthorizationForServices([v9 bundleIdentifier], a4, &v11);
  }

  else
  {
    v10 = qword_1EE02ABA8;
    if (os_log_type_enabled(qword_1EE02ABA8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C914D000, v10, OS_LOG_TYPE_DEFAULT, "Asking for auth but not for any sensors", buf, 2u);
    }

    if (a6)
    {
      (*(a6 + 2))(a6, 0);
    }
  }
}

uint64_t __104__SRSensorReader_requestAuthorizationForBundle_sensors_legacyPromptErrorBehavior_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v10 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40) == 1)
  {
    v4 = [a2 domain];
    if ([v4 isEqualToString:SRErrorDomain] && objc_msgSend(v2, "code") == 8201)
    {
      v2 = 0;
    }
  }

  else if (a2)
  {
    v5 = qword_1EE02ABA8;
    if (os_log_type_enabled(qword_1EE02ABA8, OS_LOG_TYPE_ERROR))
    {
      v8 = 138543362;
      v9 = v2;
      _os_log_error_impl(&dword_1C914D000, v5, OS_LOG_TYPE_ERROR, "Error requesting authorization: %{public}@", &v8, 0xCu);
    }

    v2 = [MEMORY[0x1E696ABC0] errorWithUnderlyingErrorFromExistingError:v2];
  }

  result = *(a1 + 32);
  if (result)
  {
    result = (*(result + 16))(result, v2);
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

+ (void)authorizationRequestStatusForBundle:(id)a3 sensors:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  if (!a3)
  {
    v7 = [MEMORY[0x1E696AAE8] mainBundle];
  }

  if ([a4 count])
  {
    v8 = [v7 bundleIdentifier];

    SRAuthorizationStatusForBundleIdentifier(v8, a4, a5);
  }

  else
  {
    v9 = qword_1EE02ABA8;
    if (os_log_type_enabled(qword_1EE02ABA8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1C914D000, v9, OS_LOG_TYPE_DEFAULT, "Asking for auth but not for any sensors", v10, 2u);
    }

    (*(a5 + 2))(a5, 0, 0);
  }
}

- (BOOL)_updateAuthorizationStatusWithAuthorizedServices:(id)a3 deniedServices:(id)a4 dataCollectionEnabled:(BOOL)a5 onboardingCompleted:(BOOL)a6 lastModifiedTimes:(id)a7 forBundleIdentifier:(id)a8 previousAuthorizationStatus:(int64_t)a9
{
  v10 = a6;
  v11 = a5;
  v40 = *MEMORY[0x1E69E9840];
  if (a8)
  {
    bundleId = self->_bundleId;
    if (bundleId)
    {
      if (![(NSString *)bundleId isEqualToString:a8])
      {
        v23 = qword_1EE02ABA8;
        if (os_log_type_enabled(qword_1EE02ABA8, OS_LOG_TYPE_INFO))
        {
          canonicalSensor = self->_canonicalSensor;
          v25 = self->_bundleId;
          v35 = 138543874;
          v36 = canonicalSensor;
          v37 = 2114;
          *v38 = a8;
          *&v38[8] = 2114;
          v39 = v25;
          _os_log_impl(&dword_1C914D000, v23, OS_LOG_TYPE_INFO, "[%{public}@] Ignoring authorization changed update for bundle %{public}@. I'm interested in %{public}@", &v35, 0x20u);
        }

        goto LABEL_23;
      }
    }
  }

  v17 = [(NSString *)self->_canonicalSensor sr_sensorByDeletingDeletionRecord];
  v18 = [a7 objectForKeyedSubscript:v17];
  if (v18)
  {
    v19 = MEMORY[0x1E695DF00];
    [v18 doubleValue];
    v20 = [v19 dateWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v20 = 0;
  }

  [(SRSensorReader *)self set_lastModifiedAuthorizationTime:v20];
  if (!v10 || v11)
  {
    if (!v11 || v10)
    {
      if ([a3 containsObject:v17])
      {
        v21 = 1;
      }

      else if ([a4 containsObject:v17])
      {
        v21 = 2;
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      v22 = qword_1EE02ABA8;
      if (os_log_type_enabled(qword_1EE02ABA8, OS_LOG_TYPE_FAULT))
      {
        v34 = self->_canonicalSensor;
        v35 = 138543874;
        v36 = v34;
        v37 = 1026;
        *v38 = 0;
        *&v38[4] = 1026;
        *&v38[6] = 1;
        _os_log_fault_impl(&dword_1C914D000, v22, OS_LOG_TYPE_FAULT, "[%{public}@] Unexpected authorization state. onboarding: %{public, BOOL}d, collection enabled: %{public, BOOL}d", &v35, 0x18u);
      }

      v21 = 0;
    }
  }

  else
  {
    v21 = 2;
  }

  if (v21 == a9)
  {
LABEL_23:
    v26 = 0;
    goto LABEL_34;
  }

  [(SRSensorReader *)self setAuthorizationStatus:v21];
  v27 = qword_1EE02ABA8;
  if (os_log_type_enabled(qword_1EE02ABA8, OS_LOG_TYPE_INFO))
  {
    v28 = self->_canonicalSensor;
    v29 = self->_bundleId;
    v35 = 138543874;
    v36 = v28;
    v37 = 2114;
    *v38 = v29;
    *&v38[8] = 2048;
    v39 = v21;
    _os_log_impl(&dword_1C914D000, v27, OS_LOG_TYPE_INFO, "Authorization state for sensor %{public}@, bundle %{public}@ now %lu", &v35, 0x20u);
  }

  if (qword_1EE02ABB0 != -1)
  {
    dispatch_once(&qword_1EE02ABB0, &__block_literal_global_13);
  }

  if (_MergedGlobals_11 == 1)
  {
    if ((v21 | 2) == 2)
    {
      v21 = 0;
    }

    v30 = qword_1EE02ABA8;
    v26 = 1;
    if (os_log_type_enabled(qword_1EE02ABA8, OS_LOG_TYPE_INFO))
    {
      v31 = self->_canonicalSensor;
      v35 = 138543618;
      v36 = v31;
      v37 = 1026;
      *v38 = v21 != 0;
      _os_log_impl(&dword_1C914D000, v30, OS_LOG_TYPE_INFO, "[%{public}@] Setting authorization state for legacy reader to %{public, BOOL}d", &v35, 0x12u);
    }
  }

  else
  {
    v26 = 1;
  }

LABEL_34:
  v32 = *MEMORY[0x1E69E9840];
  return v26;
}

+ (void)_requestAuthorizationMigrationForSensors:(id)a3 completion:(id)a4
{
  if ([a3 count])
  {
    v6 = [MEMORY[0x1E696AAE8] mainBundle];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __94__SRSensorReader_AuthorizationMigration___requestAuthorizationMigrationForSensors_completion___block_invoke;
    v8[3] = &unk_1E8330408;
    v8[4] = a4;
    SRRequestAuthorizationMigrationForServices(v6, a3, v8);
  }

  else
  {
    v7 = qword_1EE02ABA8;
    if (os_log_type_enabled(qword_1EE02ABA8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C914D000, v7, OS_LOG_TYPE_DEFAULT, "Asking for auth but not for any sensors", buf, 2u);
    }

    if (a4)
    {
      (*(a4 + 2))(a4, 0);
    }
  }
}

uint64_t __94__SRSensorReader_AuthorizationMigration___requestAuthorizationMigrationForSensors_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = a2;
    v4 = qword_1EE02ABA8;
    if (os_log_type_enabled(qword_1EE02ABA8, OS_LOG_TYPE_ERROR))
    {
      v7 = 138543362;
      v8 = v3;
      _os_log_error_impl(&dword_1C914D000, v4, OS_LOG_TYPE_ERROR, "Error requesting authorization: %{public}@", &v7, 0xCu);
    }

    a2 = [MEMORY[0x1E696ABC0] errorWithUnderlyingErrorFromExistingError:v3];
  }

  result = *(a1 + 32);
  if (result)
  {
    result = (*(result + 16))(result, a2);
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

@end