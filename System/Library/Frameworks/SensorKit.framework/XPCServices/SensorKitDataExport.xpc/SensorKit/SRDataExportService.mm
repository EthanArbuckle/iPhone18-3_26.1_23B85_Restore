@interface SRDataExportService
+ (void)initialize;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)sensorReader:(id)reader fetchingRequest:(id)request didFetchResult:(id)result;
- (BOOL)streamSample:(id)sample sensor:(id)sensor;
- (BOOL)writeJSON:(id)n;
- (BOOL)writeSample:(id)sample device:(id)device timestamp:(double)timestamp sampleDict:(id)dict streaming:(BOOL)streaming;
- (SRDataExportService)initWithQueue:(id)queue;
- (SRDataExportService)initWithQueue:(id)queue listener:(id)listener;
- (void)cancelWithReply:(id)reply;
- (void)dealloc;
- (void)endJSON;
- (void)endSensorJSON;
- (void)exportData;
- (void)exportDataForSensors:(id)sensors outputStream:(id)stream fetchRequest:(id)request createReader:(id)reader reply:(id)reply;
- (void)exportDataForSensors:(id)sensors reply:(id)reply;
- (void)exportDataForSensors:(id)sensors toBaseDirectory:(id)directory createReader:(id)reader completionHandler:(id)handler;
- (void)invalidate;
- (void)replyWithError:(id)error;
- (void)resume;
- (void)sensorReader:(id)reader didCompleteFetch:(id)fetch;
- (void)sensorReader:(id)reader fetchingRequest:(id)request failedWithError:(id)error;
- (void)startJSON;
- (void)startSensorJSON:(id)n;
- (void)writeMetadataFragmentWithDevice:(id)device timestamp:(double)timestamp;
@end

@implementation SRDataExportService

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    qword_100016920 = os_log_create("com.apple.SensorKit", "DataExport");
    if (sub_1000037BC())
    {
      *buf = 0;
      v6 = buf;
      v7 = 0x3052000000;
      v8 = sub_100003900;
      v2 = qword_100016928;
      v9 = sub_100003910;
      v10 = qword_100016928;
      if (!qword_100016928)
      {
        v4[0] = _NSConcreteStackBlock;
        v4[1] = 3221225472;
        v4[2] = sub_10000391C;
        v4[3] = &unk_100010410;
        v4[4] = buf;
        sub_10000391C(v4);
        v2 = *(v6 + 5);
      }

      _Block_object_dispose(buf, 8);
      if (!v2)
      {
        v3 = qword_100016920;
        if (os_log_type_enabled(qword_100016920, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, "Failed to find SRStreamBlockSample when it should be there", buf, 2u);
        }
      }
    }
  }
}

- (SRDataExportService)initWithQueue:(id)queue
{
  v5 = +[NSXPCListener serviceListener];
  [(NSXPCListener *)v5 _setQueue:queue];

  return [(SRDataExportService *)self initWithQueue:queue listener:v5];
}

- (SRDataExportService)initWithQueue:(id)queue listener:(id)listener
{
  v10.receiver = self;
  v10.super_class = SRDataExportService;
  v6 = [(SRDataExportService *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_q = queue;
    dispatch_retain(queue);
    v7->_completionHandler = 0;
    v7->_createReader = 0;
    listenerCopy = listener;
    v7->_listener = listenerCopy;
    [(NSXPCListener *)listenerCopy setDelegate:v7];
  }

  return v7;
}

- (void)dealloc
{
  [(SRDataExportService *)self setOutputStream:0];
  [(SRDataExportService *)self setCurrentReader:0];
  [(SRDataExportService *)self setSensors:0];
  [(SRDataExportService *)self setOutputURL:0];
  [(SRDataExportService *)self setListener:0];
  [(SRDataExportService *)self setDevices:0];
  [(SRDataExportService *)self setCompletionHandler:0];
  [(SRDataExportService *)self setMultiSampleExporter:0];

  dispatch_release(self->_q);
  v3.receiver = self;
  v3.super_class = SRDataExportService;
  [(SRDataExportService *)&v3 dealloc];
}

- (void)resume
{
  listener = [(SRDataExportService *)self listener];

  [(NSXPCListener *)listener resume];
}

- (void)invalidate
{
  [(SRDataExportService *)self setOutputStream:0];
  [(SRDataExportService *)self setSensors:0];
  [(SRDataExportService *)self setOutputURL:0];
  [(NSXPCConnection *)self->_connection invalidate];

  [(SRDataExportService *)self setDevices:0];
  [(SRDataExportService *)self setMultiSampleExporter:0];

  self->_fetchRequest = 0;
  self->_exporting = 0;
}

- (void)replyWithError:(id)error
{
  if (error)
  {
    v5 = 0;
LABEL_3:
    v6 = 0;
    goto LABEL_4;
  }

  outputURL = [(SRDataExportService *)self outputURL];
  v5 = outputURL;
  if (!outputURL)
  {
    goto LABEL_3;
  }

  [(NSURL *)outputURL fileSystemRepresentation];
  v9 = sandbox_extension_issue_file();
  v10 = qword_100016920;
  if (os_log_type_enabled(qword_100016920, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543618;
    v12 = v5;
    v13 = 2082;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Tried to issue sandbox extension for %{public}@. Got %{public}s", &v11, 0x16u);
  }

  if (!v9)
  {
    goto LABEL_3;
  }

  v6 = [NSString stringWithUTF8String:v9];
  free(v9);
LABEL_4:
  if ([(SRDataExportService *)self completionHandler])
  {
    completionHandler = [(SRDataExportService *)self completionHandler];
    (completionHandler)[2](completionHandler, v5, v6, error);
  }

  [(SRDataExportService *)self invalidate];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v7 = qword_100016920;
  if (os_log_type_enabled(qword_100016920, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    serviceName = [listener serviceName];
    v12 = 2112;
    connectionCopy = connection;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Got a connection attempt on %@ from %@", buf, 0x16u);
  }

  [connection _setQueue:self->_q];
  [connection setExportedInterface:{+[NSXPCInterface interfaceWithProtocol:](NSXPCInterface, "interfaceWithProtocol:", &OBJC_PROTOCOL___SRDataExportProtocol)}];
  [connection setExportedObject:self];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100001E54;
  v9[3] = &unk_100010348;
  v9[4] = self;
  [connection setInvalidationHandler:v9];
  self->_connection = connection;
  [connection resume];
  return 1;
}

- (void)exportDataForSensors:(id)sensors reply:(id)reply
{
  if (self->_exporting)
  {
    v5 = qword_100016920;
    if (os_log_type_enabled(qword_100016920, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Already busy exporting. Cancel the previous attempt before requesting another one", buf, 2u);
    }

    v6 = [SRError errorWithCode:8195];
LABEL_13:
    v13 = v6;
    goto LABEL_14;
  }

  v9 = [+[NSXPCConnection currentConnection](NSXPCConnection valueForEntitlement:"valueForEntitlement:", @"com.apple.private.sensorkit.reader.wildcard.allow"];
  if (!v9 || (v10 = v9, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ([v10 BOOLValue] & 1) == 0)
  {
    v12 = qword_100016920;
    if (os_log_type_enabled(qword_100016920, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Connection does not have a valid entitlement", buf, 2u);
    }

    v6 = +[SRError invalidEntitlementError];
    goto LABEL_13;
  }

  self->_exporting = 1;
  v11 = sub_100001750();
  v15 = 0;
  if ([+[NSFileManager createDirectoryAtURL:"createDirectoryAtURL:withIntermediateDirectories:attributes:error:"]
  {
    [(SRDataExportService *)self exportDataForSensors:sensors toBaseDirectory:v11 completionHandler:reply];
    return;
  }

  v14 = qword_100016920;
  if (os_log_type_enabled(qword_100016920, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v17 = v15;
    _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to create output directory because %{public}@", buf, 0xCu);
  }

  v13 = v15;
LABEL_14:
  (*(reply + 2))(reply, 0, 0, v13);
}

- (void)cancelWithReply:(id)reply
{
  v5 = qword_100016920;
  if (os_log_type_enabled(qword_100016920, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Cancelling data export", v6, 2u);
  }

  [(SRDataExportService *)self setSensors:0];
  [(SRDataExportService *)self setDevices:0];
  [(SRDataExportService *)self setCancel:1];
  if (reply)
  {
    (*(reply + 2))(reply);
  }
}

- (void)exportDataForSensors:(id)sensors toBaseDirectory:(id)directory createReader:(id)reader completionHandler:(id)handler
{
  dispatch_assert_queue_V2(self->_q);
  v11 = objc_alloc_init(NSDateFormatter);
  [v11 setDateFormat:@"yyyy-MM-dd-HH-mm-ss"];
  v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"SensorAndUsageData-%@.lz4", [v11 stringFromDate:{+[NSDate date](NSDate, "date")}]);

  v13 = [NSURL fileURLWithPath:v12 isDirectory:0 relativeToURL:directory];
  v14 = sub_100004C80([SRCompressedOutputStream alloc], v13, 256);
  if (v14)
  {
    v17 = v14;
    [(SRDataExportService *)self setOutputURL:v13];
    v15 = objc_alloc_init(SRFetchRequest);
    [v15 setFrom:0.0];
    [v15 setTo:INFINITY];
    [(SRDataExportService *)self exportDataForSensors:sensors outputStream:v17 fetchRequest:v15 createReader:reader reply:handler];
  }

  else
  {
    v16 = qword_100016920;
    if (os_log_type_enabled(qword_100016920, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Error initializing compression stream", buf, 2u);
    }

    (*(handler + 2))(handler, 0, 0, [SRError errorWithCode:8194]);
  }
}

- (void)exportDataForSensors:(id)sensors outputStream:(id)stream fetchRequest:(id)request createReader:(id)reader reply:(id)reply
{
  self->_completionHandler = [reply copy];
  [(SRDataExportService *)self setCancel:0];
  [(SRDataExportService *)self setSensors:[NSMutableSet setWithSet:sensors]];
  if ([(NSMutableSet *)self->_sensors count])
  {
    self->_fetchRequest = request;
    self->_outputStream = stream;
    self->_createReader = [reader copy];
    [(SRDataExportService *)self startJSON];

    [(SRDataExportService *)self exportData];
  }

  else
  {
    v12 = qword_100016920;
    if (os_log_type_enabled(qword_100016920, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "No sensor identifiers found", v13, 2u);
    }

    [(SRDataExportService *)self replyWithError:0];
  }
}

- (void)startJSON
{
  [(NSOutputStream *)self->_outputStream open];
  self->_firstSensor = 1;
  v3 = +[NSMutableDictionary dictionary];
  [v3 setObject:@"Data in this file is not intended for medical purposes" forKeyedSubscript:@"general"];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  sensors = [(SRDataExportService *)self sensors];
  v5 = [(NSMutableSet *)sensors countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      v8 = 0;
      do
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(sensors);
        }

        v9 = *(*(&v19 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        v11 = [+[SRSensorDescription sensorDescriptionForSensor:](SRSensorDescription sensorDescriptionForSensor:{v9), "localizedAdditionalSampleDataNote"}];
        if (v11)
        {
          [v3 setObject:v11 forKeyedSubscript:v9];
        }

        objc_autoreleasePoolPop(v10);
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMutableSet *)sensors countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v6);
  }

  v18 = 0;
  v12 = [NSJSONSerialization dataWithJSONObject:v3 options:1 error:&v18];
  v13 = v18;
  if (v18)
  {
    v14 = qword_100016920;
    if (os_log_type_enabled(qword_100016920, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v24 = v13;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Can't serialize disclaimer strings %@", buf, 0xCu);
    }
  }

  v15 = [[NSString alloc] initWithData:v12 encoding:4];
  v16 = [NSString stringWithFormat:@"{disclaimer: %@, %@: [", v15, @"SensorAndUsageData"];

  v17 = [(NSString *)v16 dataUsingEncoding:4];
  [(NSOutputStream *)self->_outputStream write:[(NSData *)v17 bytes] maxLength:[(NSData *)v17 length]];
}

- (void)endJSON
{
  v3 = [@"]}" dataUsingEncoding:4];
  -[NSOutputStream write:maxLength:](self->_outputStream, "write:maxLength:", [v3 bytes], objc_msgSend(v3, "length"));
  outputStream = self->_outputStream;

  [(NSOutputStream *)outputStream close];
}

- (void)startSensorJSON:(id)n
{
  if (self->_firstSensor)
  {
    v4 = &stru_1000106F8;
  }

  else
  {
    v4 = @",";
  }

  v5 = [[NSString dataUsingEncoding:@"%@{%@: [" stringWithFormat:v4, n], "dataUsingEncoding:", 4];
  self->_firstSensor = 0;
  outputStream = self->_outputStream;
  bytes = [(NSData *)v5 bytes];
  v8 = [(NSData *)v5 length];

  [(NSOutputStream *)outputStream write:bytes maxLength:v8];
}

- (void)endSensorJSON
{
  v3 = [@"]}" dataUsingEncoding:4];
  outputStream = self->_outputStream;
  bytes = [v3 bytes];
  v6 = [v3 length];

  [(NSOutputStream *)outputStream write:bytes maxLength:v6];
}

- (void)exportData
{
  if ([(NSMutableSet *)self->_sensors count])
  {
    anyObject = [(NSMutableSet *)self->_sensors anyObject];

    self->_currentReader = (*(self->_createReader + 2))();
    [(SRSensorReader *)[(SRDataExportService *)self currentReader] setDelegate:self];
    [(SRSensorReader *)[(SRDataExportService *)self currentReader] setBypassHoldingPeriod:1];
    [(SRDataExportService *)self startSensorJSON:anyObject];
    objc_initWeak(&location, self);
    currentReader = [(SRDataExportService *)self currentReader];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100002A44;
    v5[3] = &unk_1000103B0;
    objc_copyWeak(&v6, &location);
    v5[4] = self;
    [(SRSensorReader *)currentReader fetchDevices:v5];
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }

  else
  {
    [(SRDataExportService *)self endJSON];

    [(SRDataExportService *)self replyWithError:0];
  }
}

- (void)sensorReader:(id)reader fetchingRequest:(id)request failedWithError:(id)error
{
  objc_sync_enter(self);
  [(SRDataExportService *)self endSensorJSON];
  v8 = qword_100016920;
  if (os_log_type_enabled(qword_100016920, OS_LOG_TYPE_ERROR))
  {
    v9 = 138543618;
    sensor = [reader sensor];
    v11 = 2114;
    errorCopy = error;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Error exporting data for %{public}@. %{public}@", &v9, 0x16u);
  }

  [(SRDataExportService *)self replyWithError:error];
  objc_sync_exit(self);
}

- (void)sensorReader:(id)reader didCompleteFetch:(id)fetch
{
  objc_sync_enter(self);
  if ([(SRDataExportService *)self multiSampleExporter])
  {
    lastObject = [(NSMutableArray *)self->_devices lastObject];
    sr_endMultiSampleStream = [(SRMultiSampleExporting *)[(SRDataExportService *)self multiSampleExporter] sr_endMultiSampleStream];
    if (sr_endMultiSampleStream)
    {
      [(SRDataExportService *)self writeSample:0 device:lastObject timestamp:sr_endMultiSampleStream sampleDict:0 streaming:self->_latestTimestamp];
    }

    [(SRDataExportService *)self setMultiSampleExporter:0];
  }

  [(NSMutableArray *)self->_devices removeLastObject];
  if ([(NSMutableArray *)self->_devices count])
  {
    [(SRFetchRequest *)self->_fetchRequest setDevice:[(NSMutableArray *)self->_devices lastObject]];
    [(SRSensorReader *)[(SRDataExportService *)self currentReader] fetch:self->_fetchRequest];
  }

  else
  {
    [(SRDataExportService *)self endSensorJSON];
    -[NSMutableSet removeObject:](-[SRDataExportService sensors](self, "sensors"), "removeObject:", [reader sensor]);
    v8 = qword_100016920;
    if (os_log_type_enabled(qword_100016920, OS_LOG_TYPE_INFO))
    {
      v9 = 138543618;
      sensor = [reader sensor];
      v11 = 2114;
      sensors = [(SRDataExportService *)self sensors];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Successfully completed exported %{public}@. %{public}@ to go", &v9, 0x16u);
    }

    [(SRDataExportService *)self exportData];
  }

  objc_sync_exit(self);
}

- (BOOL)writeJSON:(id)n
{
  if ([(SRDataExportService *)self outputStream])
  {
    v11 = 0;
    [NSJSONSerialization writeJSONObject:n toStream:self->_outputStream options:1 error:&v11];
    v5 = [v11 description];
    v6 = v5 == 0;
    if (v5)
    {
      v7 = qword_100016920;
      if (os_log_type_enabled(qword_100016920, OS_LOG_TYPE_FAULT))
      {
        sensor = [(SRSensorReader *)[(SRDataExportService *)self currentReader] sensor];
        *buf = 138543874;
        nCopy = n;
        v14 = 2114;
        v15 = sensor;
        v16 = 2114;
        v17 = v5;
        _os_log_fault_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "Invalid JSON object returned from sample %{public}@ for %{public}@ because %{public}@", buf, 0x20u);
      }

      [NSJSONSerialization writeJSONObject:&__NSDictionary0__struct toStream:self->_outputStream options:1 error:&v11];
    }
  }

  else
  {
    v8 = qword_100016920;
    v6 = 0;
    if (os_log_type_enabled(qword_100016920, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Output stream is no longer valid", buf, 2u);
      return 0;
    }
  }

  return v6;
}

- (void)writeMetadataFragmentWithDevice:(id)device timestamp:(double)timestamp
{
  [(NSOutputStream *)self->_outputStream write:"metadata:" maxLength:11];
  v7[0] = @"device";
  v7[1] = @"timestamp";
  v8[0] = [device sr_dictionaryRepresentation];
  v8[1] = [NSNumber numberWithDouble:timestamp];
  [(SRDataExportService *)self writeJSON:[NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2]];
  [(NSOutputStream *)self->_outputStream write:" maxLength:sample:", 10];
}

- (BOOL)writeSample:(id)sample device:(id)device timestamp:(double)timestamp sampleDict:(id)dict streaming:(BOOL)streaming
{
  streamingCopy = streaming;
  if (!self->_firstSample)
  {
    [(SRDataExportService *)self writeOne:44];
  }

  self->_firstSample = 0;
  sr_prefersUTF8StringRepresentation = 0;
  if ([sample conformsToProtocol:&OBJC_PROTOCOL___SRSampleDirectExporting])
  {
    sr_prefersUTF8StringRepresentation = [sample sr_prefersUTF8StringRepresentation];
  }

  if (streamingCopy)
  {
    v14 = 0;
  }

  else
  {
    v14 = ([(SRDataExportService *)self multiSampleExporter]== 0) & (sr_prefersUTF8StringRepresentation ^ 1);
  }

  sensor = [(SRSensorReader *)[(SRDataExportService *)self currentReader] sensor];
  [(SRDataExportService *)self writeOne:123];
  [(SRDataExportService *)self writeMetadataFragmentWithDevice:device timestamp:timestamp];
  if (streamingCopy)
  {
    v16 = [(SRDataExportService *)self streamSample:sample sensor:sensor];
LABEL_16:
    v19 = v16;
    goto LABEL_17;
  }

  if (v14)
  {
    dictCopy = [sample sr_dictionaryRepresentation];
    selfCopy2 = self;
LABEL_15:
    v16 = [(SRDataExportService *)selfCopy2 writeJSON:dictCopy];
    goto LABEL_16;
  }

  if (!sr_prefersUTF8StringRepresentation)
  {
    selfCopy2 = self;
    dictCopy = dict;
    goto LABEL_15;
  }

  v19 = [sample sr_writeUTF8RepresentationToOutputStream:self->_outputStream] != 0;
LABEL_17:
  [(SRDataExportService *)self writeOne:125];
  return v19;
}

- (BOOL)sensorReader:(id)reader fetchingRequest:(id)request didFetchResult:(id)result
{
  if (![(SRDataExportService *)self cancel])
  {
    context = objc_autoreleasePoolPush();
    sample = [result sample];
    exportingSampleClass = [reader exportingSampleClass];
    multiSampleExporter = sample;
    if (exportingSampleClass)
    {
      if (self->_shouldStartNewMultiSampleExporter)
      {
        multiSampleExporter = objc_alloc_init(exportingSampleClass);
        [(SRDataExportService *)self setMultiSampleExporter:multiSampleExporter];
        [(SRMultiSampleExporting *)[(SRDataExportService *)self multiSampleExporter] sr_beginMultiSampleStream];
      }

      else
      {
        multiSampleExporter = [(SRDataExportService *)self multiSampleExporter];
      }
    }

    v14 = [(SRMultiSampleExporting *)multiSampleExporter conformsToProtocol:&OBJC_PROTOCOL___SRMultiSampleExporting];
    if (objc_opt_respondsToSelector())
    {
      v15 = 1;
    }

    else
    {
      v15 = [(SRMultiSampleExporting *)multiSampleExporter conformsToProtocol:&OBJC_PROTOCOL___SRSampleDirectExporting];
    }

    v16 = objc_opt_respondsToSelector();
    if (objc_opt_respondsToSelector())
    {
      v16 = [(SRMultiSampleExporting *)multiSampleExporter performSelector:"sr_prefersUTF8StringRepresentation"]== 0;
    }

    if (((v14 | v15) & 1) == 0 && (v16 & 1) == 0)
    {
      v17 = qword_100016920;
      if (os_log_type_enabled(qword_100016920, OS_LOG_TYPE_FAULT))
      {
        *buf = 138543362;
        sensor = [reader sensor];
        _os_log_fault_impl(&_mh_execute_header, v17, OS_LOG_TYPE_FAULT, "The sample class for %{public}@ must conform to either SRSampleExporting, SRSampleDirectExporting or SRMultiSampleExporting.", buf, 0xCu);
      }

      v10 = 0;
      goto LABEL_25;
    }

    [result timestamp];
    self->_latestTimestamp = v18;
    objc_sync_enter(self);
    if (v14)
    {
      v19 = [(SRMultiSampleExporting *)[(SRDataExportService *)self multiSampleExporter] sr_dictionaryRepresentationWithSample:sample];
      if (!v19)
      {
        self->_shouldStartNewMultiSampleExporter = 0;
        v10 = 1;
        goto LABEL_24;
      }

      self->_shouldStartNewMultiSampleExporter = 1;
    }

    else
    {
      v19 = 0;
    }

    device = [request device];
    [result timestamp];
    v10 = [(SRDataExportService *)self writeSample:sample device:device timestamp:v19 sampleDict:v16 & 1 streaming:?];
LABEL_24:
    objc_sync_exit(self);
LABEL_25:
    objc_autoreleasePoolPop(context);
    return v10;
  }

  v9 = qword_100016920;
  if (os_log_type_enabled(qword_100016920, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Export is cancelled, stopping fetch early.", buf, 2u);
  }

  return 0;
}

- (BOOL)streamSample:(id)sample sensor:(id)sensor
{
  [(SRDataExportService *)self writeOne:91, sensor];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  sr_exportRepresentationEnumerator = [sample sr_exportRepresentationEnumerator];
  v7 = [sr_exportRepresentationEnumerator countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    v10 = 1;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(sr_exportRepresentationEnumerator);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = objc_autoreleasePoolPush();
        if ((v10 & 1) == 0)
        {
          [(SRDataExportService *)self writeOne:44];
        }

        if (objc_opt_respondsToSelector())
        {
          v12 = [v12 performSelector:"sr_dictionaryRepresentation"];
        }

        v14 = [(SRDataExportService *)self writeJSON:v12];
        objc_autoreleasePoolPop(v13);
        if (!v14)
        {
          v15 = 0;
          goto LABEL_15;
        }

        v10 = 0;
      }

      v8 = [sr_exportRepresentationEnumerator countByEnumeratingWithState:&v17 objects:v21 count:16];
      v10 = 0;
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v15 = 1;
LABEL_15:
  [(SRDataExportService *)self writeOne:93];
  return v15;
}

@end