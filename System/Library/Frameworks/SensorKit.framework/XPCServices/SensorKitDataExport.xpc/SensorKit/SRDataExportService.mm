@interface SRDataExportService
+ (void)initialize;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (BOOL)sensorReader:(id)a3 fetchingRequest:(id)a4 didFetchResult:(id)a5;
- (BOOL)streamSample:(id)a3 sensor:(id)a4;
- (BOOL)writeJSON:(id)a3;
- (BOOL)writeSample:(id)a3 device:(id)a4 timestamp:(double)a5 sampleDict:(id)a6 streaming:(BOOL)a7;
- (SRDataExportService)initWithQueue:(id)a3;
- (SRDataExportService)initWithQueue:(id)a3 listener:(id)a4;
- (void)cancelWithReply:(id)a3;
- (void)dealloc;
- (void)endJSON;
- (void)endSensorJSON;
- (void)exportData;
- (void)exportDataForSensors:(id)a3 outputStream:(id)a4 fetchRequest:(id)a5 createReader:(id)a6 reply:(id)a7;
- (void)exportDataForSensors:(id)a3 reply:(id)a4;
- (void)exportDataForSensors:(id)a3 toBaseDirectory:(id)a4 createReader:(id)a5 completionHandler:(id)a6;
- (void)invalidate;
- (void)replyWithError:(id)a3;
- (void)resume;
- (void)sensorReader:(id)a3 didCompleteFetch:(id)a4;
- (void)sensorReader:(id)a3 fetchingRequest:(id)a4 failedWithError:(id)a5;
- (void)startJSON;
- (void)startSensorJSON:(id)a3;
- (void)writeMetadataFragmentWithDevice:(id)a3 timestamp:(double)a4;
@end

@implementation SRDataExportService

+ (void)initialize
{
  if (objc_opt_class() == a1)
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

- (SRDataExportService)initWithQueue:(id)a3
{
  v5 = +[NSXPCListener serviceListener];
  [(NSXPCListener *)v5 _setQueue:a3];

  return [(SRDataExportService *)self initWithQueue:a3 listener:v5];
}

- (SRDataExportService)initWithQueue:(id)a3 listener:(id)a4
{
  v10.receiver = self;
  v10.super_class = SRDataExportService;
  v6 = [(SRDataExportService *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_q = a3;
    dispatch_retain(a3);
    v7->_completionHandler = 0;
    v7->_createReader = 0;
    v8 = a4;
    v7->_listener = v8;
    [(NSXPCListener *)v8 setDelegate:v7];
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
  v2 = [(SRDataExportService *)self listener];

  [(NSXPCListener *)v2 resume];
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

- (void)replyWithError:(id)a3
{
  if (a3)
  {
    v5 = 0;
LABEL_3:
    v6 = 0;
    goto LABEL_4;
  }

  v8 = [(SRDataExportService *)self outputURL];
  v5 = v8;
  if (!v8)
  {
    goto LABEL_3;
  }

  [(NSURL *)v8 fileSystemRepresentation];
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
    v7 = [(SRDataExportService *)self completionHandler];
    (v7)[2](v7, v5, v6, a3);
  }

  [(SRDataExportService *)self invalidate];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v7 = qword_100016920;
  if (os_log_type_enabled(qword_100016920, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v11 = [a3 serviceName];
    v12 = 2112;
    v13 = a4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Got a connection attempt on %@ from %@", buf, 0x16u);
  }

  [a4 _setQueue:self->_q];
  [a4 setExportedInterface:{+[NSXPCInterface interfaceWithProtocol:](NSXPCInterface, "interfaceWithProtocol:", &OBJC_PROTOCOL___SRDataExportProtocol)}];
  [a4 setExportedObject:self];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100001E54;
  v9[3] = &unk_100010348;
  v9[4] = self;
  [a4 setInvalidationHandler:v9];
  self->_connection = a4;
  [a4 resume];
  return 1;
}

- (void)exportDataForSensors:(id)a3 reply:(id)a4
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
    [(SRDataExportService *)self exportDataForSensors:a3 toBaseDirectory:v11 completionHandler:a4];
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
  (*(a4 + 2))(a4, 0, 0, v13);
}

- (void)cancelWithReply:(id)a3
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
  if (a3)
  {
    (*(a3 + 2))(a3);
  }
}

- (void)exportDataForSensors:(id)a3 toBaseDirectory:(id)a4 createReader:(id)a5 completionHandler:(id)a6
{
  dispatch_assert_queue_V2(self->_q);
  v11 = objc_alloc_init(NSDateFormatter);
  [v11 setDateFormat:@"yyyy-MM-dd-HH-mm-ss"];
  v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"SensorAndUsageData-%@.lz4", [v11 stringFromDate:{+[NSDate date](NSDate, "date")}]);

  v13 = [NSURL fileURLWithPath:v12 isDirectory:0 relativeToURL:a4];
  v14 = sub_100004C80([SRCompressedOutputStream alloc], v13, 256);
  if (v14)
  {
    v17 = v14;
    [(SRDataExportService *)self setOutputURL:v13];
    v15 = objc_alloc_init(SRFetchRequest);
    [v15 setFrom:0.0];
    [v15 setTo:INFINITY];
    [(SRDataExportService *)self exportDataForSensors:a3 outputStream:v17 fetchRequest:v15 createReader:a5 reply:a6];
  }

  else
  {
    v16 = qword_100016920;
    if (os_log_type_enabled(qword_100016920, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Error initializing compression stream", buf, 2u);
    }

    (*(a6 + 2))(a6, 0, 0, [SRError errorWithCode:8194]);
  }
}

- (void)exportDataForSensors:(id)a3 outputStream:(id)a4 fetchRequest:(id)a5 createReader:(id)a6 reply:(id)a7
{
  self->_completionHandler = [a7 copy];
  [(SRDataExportService *)self setCancel:0];
  [(SRDataExportService *)self setSensors:[NSMutableSet setWithSet:a3]];
  if ([(NSMutableSet *)self->_sensors count])
  {
    self->_fetchRequest = a5;
    self->_outputStream = a4;
    self->_createReader = [a6 copy];
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
  v4 = [(SRDataExportService *)self sensors];
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v19 objects:v25 count:16];
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
          objc_enumerationMutation(v4);
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
      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v19 objects:v25 count:16];
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

- (void)startSensorJSON:(id)a3
{
  if (self->_firstSensor)
  {
    v4 = &stru_1000106F8;
  }

  else
  {
    v4 = @",";
  }

  v5 = [[NSString dataUsingEncoding:@"%@{%@: [" stringWithFormat:v4, a3], "dataUsingEncoding:", 4];
  self->_firstSensor = 0;
  outputStream = self->_outputStream;
  v7 = [(NSData *)v5 bytes];
  v8 = [(NSData *)v5 length];

  [(NSOutputStream *)outputStream write:v7 maxLength:v8];
}

- (void)endSensorJSON
{
  v3 = [@"]}" dataUsingEncoding:4];
  outputStream = self->_outputStream;
  v5 = [v3 bytes];
  v6 = [v3 length];

  [(NSOutputStream *)outputStream write:v5 maxLength:v6];
}

- (void)exportData
{
  if ([(NSMutableSet *)self->_sensors count])
  {
    v3 = [(NSMutableSet *)self->_sensors anyObject];

    self->_currentReader = (*(self->_createReader + 2))();
    [(SRSensorReader *)[(SRDataExportService *)self currentReader] setDelegate:self];
    [(SRSensorReader *)[(SRDataExportService *)self currentReader] setBypassHoldingPeriod:1];
    [(SRDataExportService *)self startSensorJSON:v3];
    objc_initWeak(&location, self);
    v4 = [(SRDataExportService *)self currentReader];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100002A44;
    v5[3] = &unk_1000103B0;
    objc_copyWeak(&v6, &location);
    v5[4] = self;
    [(SRSensorReader *)v4 fetchDevices:v5];
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }

  else
  {
    [(SRDataExportService *)self endJSON];

    [(SRDataExportService *)self replyWithError:0];
  }
}

- (void)sensorReader:(id)a3 fetchingRequest:(id)a4 failedWithError:(id)a5
{
  objc_sync_enter(self);
  [(SRDataExportService *)self endSensorJSON];
  v8 = qword_100016920;
  if (os_log_type_enabled(qword_100016920, OS_LOG_TYPE_ERROR))
  {
    v9 = 138543618;
    v10 = [a3 sensor];
    v11 = 2114;
    v12 = a5;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Error exporting data for %{public}@. %{public}@", &v9, 0x16u);
  }

  [(SRDataExportService *)self replyWithError:a5];
  objc_sync_exit(self);
}

- (void)sensorReader:(id)a3 didCompleteFetch:(id)a4
{
  objc_sync_enter(self);
  if ([(SRDataExportService *)self multiSampleExporter])
  {
    v6 = [(NSMutableArray *)self->_devices lastObject];
    v7 = [(SRMultiSampleExporting *)[(SRDataExportService *)self multiSampleExporter] sr_endMultiSampleStream];
    if (v7)
    {
      [(SRDataExportService *)self writeSample:0 device:v6 timestamp:v7 sampleDict:0 streaming:self->_latestTimestamp];
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
    -[NSMutableSet removeObject:](-[SRDataExportService sensors](self, "sensors"), "removeObject:", [a3 sensor]);
    v8 = qword_100016920;
    if (os_log_type_enabled(qword_100016920, OS_LOG_TYPE_INFO))
    {
      v9 = 138543618;
      v10 = [a3 sensor];
      v11 = 2114;
      v12 = [(SRDataExportService *)self sensors];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Successfully completed exported %{public}@. %{public}@ to go", &v9, 0x16u);
    }

    [(SRDataExportService *)self exportData];
  }

  objc_sync_exit(self);
}

- (BOOL)writeJSON:(id)a3
{
  if ([(SRDataExportService *)self outputStream])
  {
    v11 = 0;
    [NSJSONSerialization writeJSONObject:a3 toStream:self->_outputStream options:1 error:&v11];
    v5 = [v11 description];
    v6 = v5 == 0;
    if (v5)
    {
      v7 = qword_100016920;
      if (os_log_type_enabled(qword_100016920, OS_LOG_TYPE_FAULT))
      {
        v10 = [(SRSensorReader *)[(SRDataExportService *)self currentReader] sensor];
        *buf = 138543874;
        v13 = a3;
        v14 = 2114;
        v15 = v10;
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

- (void)writeMetadataFragmentWithDevice:(id)a3 timestamp:(double)a4
{
  [(NSOutputStream *)self->_outputStream write:"metadata:" maxLength:11];
  v7[0] = @"device";
  v7[1] = @"timestamp";
  v8[0] = [a3 sr_dictionaryRepresentation];
  v8[1] = [NSNumber numberWithDouble:a4];
  [(SRDataExportService *)self writeJSON:[NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2]];
  [(NSOutputStream *)self->_outputStream write:" maxLength:sample:", 10];
}

- (BOOL)writeSample:(id)a3 device:(id)a4 timestamp:(double)a5 sampleDict:(id)a6 streaming:(BOOL)a7
{
  v7 = a7;
  if (!self->_firstSample)
  {
    [(SRDataExportService *)self writeOne:44];
  }

  self->_firstSample = 0;
  v13 = 0;
  if ([a3 conformsToProtocol:&OBJC_PROTOCOL___SRSampleDirectExporting])
  {
    v13 = [a3 sr_prefersUTF8StringRepresentation];
  }

  if (v7)
  {
    v14 = 0;
  }

  else
  {
    v14 = ([(SRDataExportService *)self multiSampleExporter]== 0) & (v13 ^ 1);
  }

  v15 = [(SRSensorReader *)[(SRDataExportService *)self currentReader] sensor];
  [(SRDataExportService *)self writeOne:123];
  [(SRDataExportService *)self writeMetadataFragmentWithDevice:a4 timestamp:a5];
  if (v7)
  {
    v16 = [(SRDataExportService *)self streamSample:a3 sensor:v15];
LABEL_16:
    v19 = v16;
    goto LABEL_17;
  }

  if (v14)
  {
    v17 = [a3 sr_dictionaryRepresentation];
    v18 = self;
LABEL_15:
    v16 = [(SRDataExportService *)v18 writeJSON:v17];
    goto LABEL_16;
  }

  if (!v13)
  {
    v18 = self;
    v17 = a6;
    goto LABEL_15;
  }

  v19 = [a3 sr_writeUTF8RepresentationToOutputStream:self->_outputStream] != 0;
LABEL_17:
  [(SRDataExportService *)self writeOne:125];
  return v19;
}

- (BOOL)sensorReader:(id)a3 fetchingRequest:(id)a4 didFetchResult:(id)a5
{
  if (![(SRDataExportService *)self cancel])
  {
    context = objc_autoreleasePoolPush();
    v11 = [a5 sample];
    v12 = [a3 exportingSampleClass];
    v13 = v11;
    if (v12)
    {
      if (self->_shouldStartNewMultiSampleExporter)
      {
        v13 = objc_alloc_init(v12);
        [(SRDataExportService *)self setMultiSampleExporter:v13];
        [(SRMultiSampleExporting *)[(SRDataExportService *)self multiSampleExporter] sr_beginMultiSampleStream];
      }

      else
      {
        v13 = [(SRDataExportService *)self multiSampleExporter];
      }
    }

    v14 = [(SRMultiSampleExporting *)v13 conformsToProtocol:&OBJC_PROTOCOL___SRMultiSampleExporting];
    if (objc_opt_respondsToSelector())
    {
      v15 = 1;
    }

    else
    {
      v15 = [(SRMultiSampleExporting *)v13 conformsToProtocol:&OBJC_PROTOCOL___SRSampleDirectExporting];
    }

    v16 = objc_opt_respondsToSelector();
    if (objc_opt_respondsToSelector())
    {
      v16 = [(SRMultiSampleExporting *)v13 performSelector:"sr_prefersUTF8StringRepresentation"]== 0;
    }

    if (((v14 | v15) & 1) == 0 && (v16 & 1) == 0)
    {
      v17 = qword_100016920;
      if (os_log_type_enabled(qword_100016920, OS_LOG_TYPE_FAULT))
      {
        *buf = 138543362;
        v24 = [a3 sensor];
        _os_log_fault_impl(&_mh_execute_header, v17, OS_LOG_TYPE_FAULT, "The sample class for %{public}@ must conform to either SRSampleExporting, SRSampleDirectExporting or SRMultiSampleExporting.", buf, 0xCu);
      }

      v10 = 0;
      goto LABEL_25;
    }

    [a5 timestamp];
    self->_latestTimestamp = v18;
    objc_sync_enter(self);
    if (v14)
    {
      v19 = [(SRMultiSampleExporting *)[(SRDataExportService *)self multiSampleExporter] sr_dictionaryRepresentationWithSample:v11];
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

    v20 = [a4 device];
    [a5 timestamp];
    v10 = [(SRDataExportService *)self writeSample:v11 device:v20 timestamp:v19 sampleDict:v16 & 1 streaming:?];
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

- (BOOL)streamSample:(id)a3 sensor:(id)a4
{
  [(SRDataExportService *)self writeOne:91, a4];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [a3 sr_exportRepresentationEnumerator];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v6);
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

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
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