@interface SensorKitLongTermStorageHelper
+ (void)initialize;
- (BOOL)handleReplyForRequest:(id)request withSamples:(id)samples timestamp:(double)timestamp token:(id)token state:(unint64_t)state error:(id)error reply:(id)reply;
- (BOOL)isAuthorizedForSensor:(id)sensor bundleIdentifier:(id)identifier;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)motionQueryArgumentsFromRequest:(id)request from:(double *)from to:(double *)to token:(id *)token tokenClass:(Class)class error:(id *)error;
- (BOOL)verifyPayloadForCursor:(id)cursor;
- (SensorKitLongTermStorageHelper)initWithQueue:(id)queue;
- (SensorKitLongTermStorageHelper)initWithQueue:(id)queue listener:(id)listener defaults:(id)defaults tccStore:(id)store cmDatastore:(id)datastore debugClient:(id)client;
- (id)computeHMACForPayload:(id)payload;
- (id)key;
- (void)dealloc;
- (void)fetchCardioSamples:(id)samples reply:(id)reply;
- (void)fetchDevices:(id)devices reply:(id)reply;
- (void)fetchMobilitySamples:(id)samples reply:(id)reply;
- (void)invalidate;
- (void)resume;
@end

@implementation SensorKitLongTermStorageHelper

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    qword_1000169C8 = os_log_create("com.apple.SensorKit", "SRLogLongTermStorageHelper");
  }
}

- (SensorKitLongTermStorageHelper)initWithQueue:(id)queue
{
  v5 = +[NSXPCListener serviceListener];
  v6 = objc_alloc_init(SRTCCStorePassThrough);
  v7 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.sensorkitd"];
  v8 = sub_100000FE4([RDDefaults alloc], v7);

  v9 = objc_alloc_init(CMHistoricalDataStore);
  v10 = objc_alloc_init(SRDebugInfoClient);
  v11 = [(SensorKitLongTermStorageHelper *)self initWithQueue:queue listener:v5 defaults:v8 tccStore:v6 cmDatastore:v9 debugClient:v10];

  return v11;
}

- (SensorKitLongTermStorageHelper)initWithQueue:(id)queue listener:(id)listener defaults:(id)defaults tccStore:(id)store cmDatastore:(id)datastore debugClient:(id)client
{
  v17.receiver = self;
  v17.super_class = SensorKitLongTermStorageHelper;
  v14 = [(SensorKitLongTermStorageHelper *)&v17 init];
  if (v14)
  {
    v14->_q = queue;
    listenerCopy = listener;
    v14->_listener = listenerCopy;
    [(NSXPCListener *)listenerCopy _setQueue:v14->_q];
    [(NSXPCListener *)v14->_listener setDelegate:v14];
    v14->_defaults = defaults;
    v14->_tccStore = store;
    v14->_cmDatastore = datastore;
    v14->_debugClient = client;
  }

  return v14;
}

- (void)dealloc
{
  [(NSXPCListener *)self->_listener invalidate];

  v3.receiver = self;
  v3.super_class = SensorKitLongTermStorageHelper;
  [(SensorKitLongTermStorageHelper *)&v3 dealloc];
}

- (BOOL)isAuthorizedForSensor:(id)sensor bundleIdentifier:(id)identifier
{
  v6 = [+[SRSensorDescription sensorDescriptionForSensor:](SRSensorDescription sensorDescriptionForSensor:{sensor), "authorizationService"}];
  if (v6)
  {
    v7 = [(SRTCCStore *)self->_tccStore bundleIdentifiersForService:v6];

    LOBYTE(v6) = [v7 containsObject:identifier];
  }

  return v6;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v7 = qword_1000169C8;
  if (os_log_type_enabled(qword_1000169C8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    serviceName = [listener serviceName];
    v12 = 2112;
    connectionCopy = connection;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Got a connection attempt on %@ from %@", &v10, 0x16u);
  }

  [connection _setQueue:self->_q];
  v8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SensorKitLongTermStorageHelperProtocol];
  [(NSXPCInterface *)v8 setClasses:[NSSet setWithObject:?]ofReply:"fetchCardioSamples:reply:", 0, 0];
  [(NSXPCInterface *)v8 setClasses:[NSSet setWithObject:?]ofReply:"fetchCardioSamples:reply:", 2, 1];
  [(NSXPCInterface *)v8 setClasses:[NSSet setWithObject:?]ofReply:"fetchMobilitySamples:reply:", 0, 0];
  [(NSXPCInterface *)v8 setClasses:[NSSet setWithObject:?]ofReply:"fetchMobilitySamples:reply:", 2, 1];
  [(NSXPCInterface *)v8 setClasses:[NSSet setWithObject:?]ofReply:"fetchDevices:reply:", 0, 0];
  [connection setExportedInterface:v8];
  [connection setExportedObject:self];
  [connection setInvalidationHandler:&stru_100010560];
  [connection resume];
  return 1;
}

- (void)resume
{
  listener = [(SensorKitLongTermStorageHelper *)self listener];

  [(NSXPCListener *)listener resume];
}

- (void)invalidate
{
  listener = [(SensorKitLongTermStorageHelper *)self listener];

  [(NSXPCListener *)listener invalidate];
}

- (id)key
{
  dispatch_assert_queue_V2(self->_q);
  v3 = sub_1000022D8(&self->_defaults->super.isa);
  if (!v3)
  {
    v4 = [NSMutableData dataWithLength:32];
    Bytes = CCRandomGenerateBytes([(NSMutableData *)v4 mutableBytes], 0x20uLL);
    if (Bytes)
    {
      v6 = Bytes;
      v7 = qword_1000169C8;
      if (os_log_type_enabled(qword_1000169C8, OS_LOG_TYPE_FAULT))
      {
        v10[0] = 67109120;
        v10[1] = v6;
        _os_log_fault_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "Failed to generate random data for a key. %d", v10, 8u);
      }

      return 0;
    }

    else
    {
      v3 = [NSData dataWithData:v4];
      sub_100002330(&self->_defaults->super.isa, v3);
      v8 = qword_1000169C8;
      if (os_log_type_enabled(qword_1000169C8, OS_LOG_TYPE_INFO))
      {
        LOWORD(v10[0]) = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Set a new key for cursor verification", v10, 2u);
      }
    }
  }

  return v3;
}

- (id)computeHMACForPayload:(id)payload
{
  v4 = [(SensorKitLongTermStorageHelper *)self key];
  v5 = [NSMutableData dataWithLength:32];
  CCHmac(2u, [v4 bytes], objc_msgSend(v4, "length"), objc_msgSend(payload, "bytes"), objc_msgSend(payload, "length"), -[NSMutableData mutableBytes](v5, "mutableBytes"));

  return [NSData dataWithData:v5];
}

- (BOOL)verifyPayloadForCursor:(id)cursor
{
  if (!cursor)
  {
    return 1;
  }

  v4 = [(SensorKitLongTermStorageHelper *)self computeHMACForPayload:*(cursor + 1)];
  return timingsafe_bcmp([*(cursor + 2) bytes], objc_msgSend(v4, "bytes"), objc_msgSend(v4, "length")) == 0;
}

- (BOOL)handleReplyForRequest:(id)request withSamples:(id)samples timestamp:(double)timestamp token:(id)token state:(unint64_t)state error:(id)error reply:(id)reply
{
  if (error)
  {
    v12 = qword_1000169C8;
    if (os_log_type_enabled(qword_1000169C8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543875;
      sensor = [request sensor];
      v31 = 2113;
      requestCopy = request;
      v33 = 2114;
      errorCopy = error;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to fetch samples with request %{private}@ because %{public}@", buf, 0x20u);
    }

    v13 = [SRError sr_errorWithUnderlying:error];
LABEL_5:
    v14.n128_u64[0] = 0x7FF8000000000000;
    (*(reply + 2))(reply, 0, 1, 0, v13, v14);
    return 0;
  }

  v28 = 0;
  v20 = [NSKeyedArchiver archivedDataWithRootObject:token requiringSecureCoding:1 error:&v28];
  if (v20)
  {
    v21 = sub_10000261C([SRCursor alloc], v20, [(SensorKitLongTermStorageHelper *)self computeHMACForPayload:v20]);
    binarySampleRepresentation = [samples binarySampleRepresentation];
    if (binarySampleRepresentation)
    {
      (*(reply + 2))(reply, binarySampleRepresentation, state != 0, v21, 0, timestamp);

      return 0;
    }

    v25 = qword_1000169C8;
    if (os_log_type_enabled(qword_1000169C8, OS_LOG_TYPE_FAULT))
    {
      sensor2 = [request sensor];
      *buf = 138543362;
      sensor = sensor2;
      _os_log_fault_impl(&_mh_execute_header, v25, OS_LOG_TYPE_FAULT, "[%{public}@] Failed to serialize samples", buf, 0xCu);
    }

    v13 = [SRError errorWithCode:8194];
    goto LABEL_5;
  }

  v23 = qword_1000169C8;
  if (os_log_type_enabled(qword_1000169C8, OS_LOG_TYPE_ERROR))
  {
    sensor3 = [request sensor];
    *buf = 138543618;
    sensor = sensor3;
    v31 = 2114;
    requestCopy = 0;
    _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to serialize token because %{public}@", buf, 0x16u);
  }

  v24.n128_u64[0] = 0x7FF8000000000000;
  (*(reply + 2))(reply, 0, 1, 0, 0, v24);
  return 0;
}

- (BOOL)motionQueryArgumentsFromRequest:(id)request from:(double *)from to:(double *)to token:(id *)token tokenClass:(Class)class error:(id *)error
{
  [request to];
  [request to];
  v16 = v15;
  v17 = +[NSXPCConnection currentConnection];
  if (!v17 || (v18 = v17, ![request bypassHoldingPeriod]) || !-[NSXPCConnection sr_hasHoldingPeriodBypassEntitlement:](v18, "sr_hasHoldingPeriodBypassEntitlement:", self))
  {
    v16 = fmin(v16, v16 - sub_100002024(&self->_defaults->super.isa, [request sensor]));
  }

  *to = SRAbsoluteTimeToCFAbsoluteTime(v16);
  [request from];
  [request from];
  *from = fmin(SRAbsoluteTimeToCFAbsoluteTime(v19), *to);
  *token = 0;
  cursor = [request cursor];
  if (!cursor)
  {
    return 1;
  }

  v21 = cursor[1];
  if (!v21)
  {
    return 1;
  }

  v25 = 0;
  v22 = [NSKeyedUnarchiver unarchivedObjectOfClass:class fromData:v21 error:&v25];
  *token = v22;
  if (v22)
  {
    return 1;
  }

  if (error)
  {
    *error = [SRError errorWithCode:3 underlyingError:v25];
  }

  v24 = qword_1000169C8;
  if (os_log_type_enabled(qword_1000169C8, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v27 = v25;
    _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Failed to unarchive token from request because %{public}@", buf, 0xCu);
  }

  return 0;
}

- (void)fetchCardioSamples:(id)samples reply:(id)reply
{
  v15 = 0;
  if (sub_100003460(+[NSXPCConnection currentConnection], samples, &self->_defaults->super.isa, self, &v15))
  {
    if (!-[SensorKitLongTermStorageHelper verifyPayloadForCursor:](self, "verifyPayloadForCursor:", [samples cursor]))
    {
      v11 = qword_1000169C8;
      if (os_log_type_enabled(qword_1000169C8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Requested cursor is not valid", buf, 2u);
      }

      v10 = [SRError errorWithCode:3];
      goto LABEL_11;
    }

    *buf = 0;
    v13 = 0;
    v14 = 0.0;
    if ([(SensorKitLongTermStorageHelper *)self motionQueryArgumentsFromRequest:samples from:buf to:&v14 token:&v13 tokenClass:objc_opt_class() error:&v15])
    {
      cmDatastore = self->_cmDatastore;
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1000067C4;
      v12[3] = &unk_100010588;
      v12[5] = samples;
      v12[6] = reply;
      v12[4] = self;
      [(CMHistoricalDataStore *)cmDatastore fetchCardioSamplesFrom:v13 to:v12 queryToken:*buf withHandler:v14];
      return;
    }
  }

  else
  {
    v8 = qword_1000169C8;
    if (os_log_type_enabled(qword_1000169C8, OS_LOG_TYPE_DEFAULT))
    {
      sensor = [samples sensor];
      *buf = 138543618;
      *&buf[4] = sensor;
      v17 = 2114;
      v18 = v15;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Connection not valid because %{public}@", buf, 0x16u);
    }
  }

  v10 = v15;
LABEL_11:
  (*(reply + 2))(reply, 0, 1, 0, v10, NAN);
}

- (void)fetchMobilitySamples:(id)samples reply:(id)reply
{
  v15 = 0;
  if (sub_100003460(+[NSXPCConnection currentConnection], samples, &self->_defaults->super.isa, self, &v15))
  {
    if (!-[SensorKitLongTermStorageHelper verifyPayloadForCursor:](self, "verifyPayloadForCursor:", [samples cursor]))
    {
      v11 = qword_1000169C8;
      if (os_log_type_enabled(qword_1000169C8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Requested cursor is not valid", buf, 2u);
      }

      v10 = [SRError errorWithCode:3];
      goto LABEL_11;
    }

    *buf = 0;
    v13 = 0;
    v14 = 0.0;
    if ([(SensorKitLongTermStorageHelper *)self motionQueryArgumentsFromRequest:samples from:buf to:&v14 token:&v13 tokenClass:objc_opt_class() error:&v15])
    {
      cmDatastore = self->_cmDatastore;
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100006BD4;
      v12[3] = &unk_1000105B0;
      v12[5] = samples;
      v12[6] = reply;
      v12[4] = self;
      [(CMHistoricalDataStore *)cmDatastore fetchMobilitySamplesFrom:v13 to:v12 queryToken:*buf withHandler:v14];
      return;
    }
  }

  else
  {
    v8 = qword_1000169C8;
    if (os_log_type_enabled(qword_1000169C8, OS_LOG_TYPE_DEFAULT))
    {
      sensor = [samples sensor];
      *buf = 138543618;
      *&buf[4] = sensor;
      v17 = 2114;
      v18 = v15;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Connection not valid because %{public}@", buf, 0x16u);
    }
  }

  v10 = v15;
LABEL_11:
  (*(reply + 2))(reply, 0, 1, 0, v10, NAN);
}

- (void)fetchDevices:(id)devices reply:(id)reply
{
  v7 = 0;
  if (sub_100003460(+[NSXPCConnection currentConnection], devices, &self->_defaults->super.isa, self, &v7))
  {
    [(SRDebugInfoClient *)[(SensorKitLongTermStorageHelper *)self debugClient] fetchDeviceInformationForDeviceIdentifiers:0 reply:reply];
  }

  else
  {
    v6 = qword_1000169C8;
    if (os_log_type_enabled(qword_1000169C8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v9 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Connection not valid because %{public}@", buf, 0xCu);
    }

    (*(reply + 2))(reply, &__NSArray0__struct, v7);
  }
}

@end