@interface SensorKitLongTermStorageHelper
+ (void)initialize;
- (BOOL)handleReplyForRequest:(id)a3 withSamples:(id)a4 timestamp:(double)a5 token:(id)a6 state:(unint64_t)a7 error:(id)a8 reply:(id)a9;
- (BOOL)isAuthorizedForSensor:(id)a3 bundleIdentifier:(id)a4;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (BOOL)motionQueryArgumentsFromRequest:(id)a3 from:(double *)a4 to:(double *)a5 token:(id *)a6 tokenClass:(Class)a7 error:(id *)a8;
- (BOOL)verifyPayloadForCursor:(id)a3;
- (SensorKitLongTermStorageHelper)initWithQueue:(id)a3;
- (SensorKitLongTermStorageHelper)initWithQueue:(id)a3 listener:(id)a4 defaults:(id)a5 tccStore:(id)a6 cmDatastore:(id)a7 debugClient:(id)a8;
- (id)computeHMACForPayload:(id)a3;
- (id)key;
- (void)dealloc;
- (void)fetchCardioSamples:(id)a3 reply:(id)a4;
- (void)fetchDevices:(id)a3 reply:(id)a4;
- (void)fetchMobilitySamples:(id)a3 reply:(id)a4;
- (void)invalidate;
- (void)resume;
@end

@implementation SensorKitLongTermStorageHelper

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    qword_1000169C8 = os_log_create("com.apple.SensorKit", "SRLogLongTermStorageHelper");
  }
}

- (SensorKitLongTermStorageHelper)initWithQueue:(id)a3
{
  v5 = +[NSXPCListener serviceListener];
  v6 = objc_alloc_init(SRTCCStorePassThrough);
  v7 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.sensorkitd"];
  v8 = sub_100000FE4([RDDefaults alloc], v7);

  v9 = objc_alloc_init(CMHistoricalDataStore);
  v10 = objc_alloc_init(SRDebugInfoClient);
  v11 = [(SensorKitLongTermStorageHelper *)self initWithQueue:a3 listener:v5 defaults:v8 tccStore:v6 cmDatastore:v9 debugClient:v10];

  return v11;
}

- (SensorKitLongTermStorageHelper)initWithQueue:(id)a3 listener:(id)a4 defaults:(id)a5 tccStore:(id)a6 cmDatastore:(id)a7 debugClient:(id)a8
{
  v17.receiver = self;
  v17.super_class = SensorKitLongTermStorageHelper;
  v14 = [(SensorKitLongTermStorageHelper *)&v17 init];
  if (v14)
  {
    v14->_q = a3;
    v15 = a4;
    v14->_listener = v15;
    [(NSXPCListener *)v15 _setQueue:v14->_q];
    [(NSXPCListener *)v14->_listener setDelegate:v14];
    v14->_defaults = a5;
    v14->_tccStore = a6;
    v14->_cmDatastore = a7;
    v14->_debugClient = a8;
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

- (BOOL)isAuthorizedForSensor:(id)a3 bundleIdentifier:(id)a4
{
  v6 = [+[SRSensorDescription sensorDescriptionForSensor:](SRSensorDescription sensorDescriptionForSensor:{a3), "authorizationService"}];
  if (v6)
  {
    v7 = [(SRTCCStore *)self->_tccStore bundleIdentifiersForService:v6];

    LOBYTE(v6) = [v7 containsObject:a4];
  }

  return v6;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v7 = qword_1000169C8;
  if (os_log_type_enabled(qword_1000169C8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = [a3 serviceName];
    v12 = 2112;
    v13 = a4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Got a connection attempt on %@ from %@", &v10, 0x16u);
  }

  [a4 _setQueue:self->_q];
  v8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SensorKitLongTermStorageHelperProtocol];
  [(NSXPCInterface *)v8 setClasses:[NSSet setWithObject:?]ofReply:"fetchCardioSamples:reply:", 0, 0];
  [(NSXPCInterface *)v8 setClasses:[NSSet setWithObject:?]ofReply:"fetchCardioSamples:reply:", 2, 1];
  [(NSXPCInterface *)v8 setClasses:[NSSet setWithObject:?]ofReply:"fetchMobilitySamples:reply:", 0, 0];
  [(NSXPCInterface *)v8 setClasses:[NSSet setWithObject:?]ofReply:"fetchMobilitySamples:reply:", 2, 1];
  [(NSXPCInterface *)v8 setClasses:[NSSet setWithObject:?]ofReply:"fetchDevices:reply:", 0, 0];
  [a4 setExportedInterface:v8];
  [a4 setExportedObject:self];
  [a4 setInvalidationHandler:&stru_100010560];
  [a4 resume];
  return 1;
}

- (void)resume
{
  v2 = [(SensorKitLongTermStorageHelper *)self listener];

  [(NSXPCListener *)v2 resume];
}

- (void)invalidate
{
  v2 = [(SensorKitLongTermStorageHelper *)self listener];

  [(NSXPCListener *)v2 invalidate];
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

- (id)computeHMACForPayload:(id)a3
{
  v4 = [(SensorKitLongTermStorageHelper *)self key];
  v5 = [NSMutableData dataWithLength:32];
  CCHmac(2u, [v4 bytes], objc_msgSend(v4, "length"), objc_msgSend(a3, "bytes"), objc_msgSend(a3, "length"), -[NSMutableData mutableBytes](v5, "mutableBytes"));

  return [NSData dataWithData:v5];
}

- (BOOL)verifyPayloadForCursor:(id)a3
{
  if (!a3)
  {
    return 1;
  }

  v4 = [(SensorKitLongTermStorageHelper *)self computeHMACForPayload:*(a3 + 1)];
  return timingsafe_bcmp([*(a3 + 2) bytes], objc_msgSend(v4, "bytes"), objc_msgSend(v4, "length")) == 0;
}

- (BOOL)handleReplyForRequest:(id)a3 withSamples:(id)a4 timestamp:(double)a5 token:(id)a6 state:(unint64_t)a7 error:(id)a8 reply:(id)a9
{
  if (a8)
  {
    v12 = qword_1000169C8;
    if (os_log_type_enabled(qword_1000169C8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543875;
      v30 = [a3 sensor];
      v31 = 2113;
      v32 = a3;
      v33 = 2114;
      v34 = a8;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to fetch samples with request %{private}@ because %{public}@", buf, 0x20u);
    }

    v13 = [SRError sr_errorWithUnderlying:a8];
LABEL_5:
    v14.n128_u64[0] = 0x7FF8000000000000;
    (*(a9 + 2))(a9, 0, 1, 0, v13, v14);
    return 0;
  }

  v28 = 0;
  v20 = [NSKeyedArchiver archivedDataWithRootObject:a6 requiringSecureCoding:1 error:&v28];
  if (v20)
  {
    v21 = sub_10000261C([SRCursor alloc], v20, [(SensorKitLongTermStorageHelper *)self computeHMACForPayload:v20]);
    v22 = [a4 binarySampleRepresentation];
    if (v22)
    {
      (*(a9 + 2))(a9, v22, a7 != 0, v21, 0, a5);

      return 0;
    }

    v25 = qword_1000169C8;
    if (os_log_type_enabled(qword_1000169C8, OS_LOG_TYPE_FAULT))
    {
      v27 = [a3 sensor];
      *buf = 138543362;
      v30 = v27;
      _os_log_fault_impl(&_mh_execute_header, v25, OS_LOG_TYPE_FAULT, "[%{public}@] Failed to serialize samples", buf, 0xCu);
    }

    v13 = [SRError errorWithCode:8194];
    goto LABEL_5;
  }

  v23 = qword_1000169C8;
  if (os_log_type_enabled(qword_1000169C8, OS_LOG_TYPE_ERROR))
  {
    v26 = [a3 sensor];
    *buf = 138543618;
    v30 = v26;
    v31 = 2114;
    v32 = 0;
    _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to serialize token because %{public}@", buf, 0x16u);
  }

  v24.n128_u64[0] = 0x7FF8000000000000;
  (*(a9 + 2))(a9, 0, 1, 0, 0, v24);
  return 0;
}

- (BOOL)motionQueryArgumentsFromRequest:(id)a3 from:(double *)a4 to:(double *)a5 token:(id *)a6 tokenClass:(Class)a7 error:(id *)a8
{
  [a3 to];
  [a3 to];
  v16 = v15;
  v17 = +[NSXPCConnection currentConnection];
  if (!v17 || (v18 = v17, ![a3 bypassHoldingPeriod]) || !-[NSXPCConnection sr_hasHoldingPeriodBypassEntitlement:](v18, "sr_hasHoldingPeriodBypassEntitlement:", self))
  {
    v16 = fmin(v16, v16 - sub_100002024(&self->_defaults->super.isa, [a3 sensor]));
  }

  *a5 = SRAbsoluteTimeToCFAbsoluteTime(v16);
  [a3 from];
  [a3 from];
  *a4 = fmin(SRAbsoluteTimeToCFAbsoluteTime(v19), *a5);
  *a6 = 0;
  v20 = [a3 cursor];
  if (!v20)
  {
    return 1;
  }

  v21 = v20[1];
  if (!v21)
  {
    return 1;
  }

  v25 = 0;
  v22 = [NSKeyedUnarchiver unarchivedObjectOfClass:a7 fromData:v21 error:&v25];
  *a6 = v22;
  if (v22)
  {
    return 1;
  }

  if (a8)
  {
    *a8 = [SRError errorWithCode:3 underlyingError:v25];
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

- (void)fetchCardioSamples:(id)a3 reply:(id)a4
{
  v15 = 0;
  if (sub_100003460(+[NSXPCConnection currentConnection], a3, &self->_defaults->super.isa, self, &v15))
  {
    if (!-[SensorKitLongTermStorageHelper verifyPayloadForCursor:](self, "verifyPayloadForCursor:", [a3 cursor]))
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
    if ([(SensorKitLongTermStorageHelper *)self motionQueryArgumentsFromRequest:a3 from:buf to:&v14 token:&v13 tokenClass:objc_opt_class() error:&v15])
    {
      cmDatastore = self->_cmDatastore;
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1000067C4;
      v12[3] = &unk_100010588;
      v12[5] = a3;
      v12[6] = a4;
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
      v9 = [a3 sensor];
      *buf = 138543618;
      *&buf[4] = v9;
      v17 = 2114;
      v18 = v15;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Connection not valid because %{public}@", buf, 0x16u);
    }
  }

  v10 = v15;
LABEL_11:
  (*(a4 + 2))(a4, 0, 1, 0, v10, NAN);
}

- (void)fetchMobilitySamples:(id)a3 reply:(id)a4
{
  v15 = 0;
  if (sub_100003460(+[NSXPCConnection currentConnection], a3, &self->_defaults->super.isa, self, &v15))
  {
    if (!-[SensorKitLongTermStorageHelper verifyPayloadForCursor:](self, "verifyPayloadForCursor:", [a3 cursor]))
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
    if ([(SensorKitLongTermStorageHelper *)self motionQueryArgumentsFromRequest:a3 from:buf to:&v14 token:&v13 tokenClass:objc_opt_class() error:&v15])
    {
      cmDatastore = self->_cmDatastore;
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100006BD4;
      v12[3] = &unk_1000105B0;
      v12[5] = a3;
      v12[6] = a4;
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
      v9 = [a3 sensor];
      *buf = 138543618;
      *&buf[4] = v9;
      v17 = 2114;
      v18 = v15;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Connection not valid because %{public}@", buf, 0x16u);
    }
  }

  v10 = v15;
LABEL_11:
  (*(a4 + 2))(a4, 0, 1, 0, v10, NAN);
}

- (void)fetchDevices:(id)a3 reply:(id)a4
{
  v7 = 0;
  if (sub_100003460(+[NSXPCConnection currentConnection], a3, &self->_defaults->super.isa, self, &v7))
  {
    [(SRDebugInfoClient *)[(SensorKitLongTermStorageHelper *)self debugClient] fetchDeviceInformationForDeviceIdentifiers:0 reply:a4];
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

    (*(a4 + 2))(a4, &__NSArray0__struct, v7);
  }
}

@end