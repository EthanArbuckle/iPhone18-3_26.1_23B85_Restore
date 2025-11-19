@interface FakeXPlatformD2DConnection
- (FakeXPlatformD2DConnection)initWithRegistry:(shared_ptr<const Registry>)a3 queue:(queue)a4;
- (id).cxx_construct;
- (id)createError:(id)a3;
- (id)parseSIMTransferItem:(id)a3 error:(id *)a4;
- (id)parseSIMTransferProfileNotification:(id)a3 error:(id *)a4;
- (id)parseSIMTransferProfileRequest:(id)a3 error:(id *)a4;
- (id)parseSIMTransferProfileResponse:(id)a3 error:(id *)a4;
- (id)parseSIMTransferSessionNotification:(id)a3 error:(id *)a4;
- (id)parseSIMTransferSessionRequest:(id)a3 error:(id *)a4;
- (id)parseSIMTransferSessionResponse:(id)a3 error:(id *)a4;
- (id)parseSimTransferStatus:(id)a3 error:(id *)a4;
- (shared_ptr<D2DConnectionDelegate>)delegate;
- (void)_connectEvent:(const void *)a3;
- (void)forwardEvent:(id)a3 payload:(id)a4;
- (void)getDCTCodeWithCompletion:(id)a3;
- (void)onConnectionStateChanged:(int)a3;
- (void)onReceived:(id)a3;
- (void)send:(id)a3 completion:(id)a4;
- (void)setDelegate:(shared_ptr<D2DConnectionDelegate>)a3 forTarget:(BOOL)a4 completion:(id)a5;
- (void)tryConnectWithCode:(id)a3;
- (weak_ptr<D2DConnectionDelegate>)weakDelegate;
@end

@implementation FakeXPlatformD2DConnection

- (FakeXPlatformD2DConnection)initWithRegistry:(shared_ptr<const Registry>)a3 queue:(queue)a4
{
  ptr = a3.__ptr_;
  v18 = *a3.__cntrl_;
  if (v18)
  {
    dispatch_retain(v18);
  }

  ctu::OsLogContext::OsLogContext(v17, kCtLoggingSystemName, "f.d2dconn");
  v16.receiver = self;
  v16.super_class = FakeXPlatformD2DConnection;
  v6 = [(FakeXPlatformD2DConnection *)&v16 initWithQueue:&v18 logContext:v17];
  ctu::OsLogContext::~OsLogContext(v17);
  if (v18)
  {
    dispatch_release(v18);
  }

  if (v6)
  {
    v6[24] = 1;
    *(v6 + 7) = 1;
    sub_10000501C(&__p, "FakeXPlatfromD2DConnection");
    [v6 getQueue];
    ctu::RestModule::RestModule();
    v7 = v15;
    v15 = 0uLL;
    v8 = *(v6 + 2);
    *(v6 + 8) = v7;
    if (v8)
    {
      sub_100004A34(v8);
      if (*(&v15 + 1))
      {
        sub_100004A34(*(&v15 + 1));
      }
    }

    if (v12)
    {
      dispatch_release(v12);
    }

    if (v14 < 0)
    {
      operator delete(__p);
    }

    v9 = objc_alloc_init(CellularPlanCrossPlatformTransportUtility);
    v10 = *(v6 + 4);
    *(v6 + 4) = v9;

    [v6 _connectEvent:ptr];
  }

  return v6;
}

- (void)send:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(CellularPlanCrossPlatformTransferMessageCodec);
  v9 = [(CellularPlanCrossPlatformTransferMessageCodec *)v8 decodeMessage:v6];
  [(FakeXPlatformD2DConnection *)self getLogContext];
  v10 = *&v12[4];
  ctu::OsLogContext::~OsLogContext(&v11);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    *v12 = self;
    *&v12[8] = 2112;
    *&v12[10] = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@ Send CrossPlatformEvent %@", &v11, 0x16u);
  }

  [(CellularPlanCrossPlatformTransportUtility *)self->_transportUtility dumpData:v6 withLabel:@"xfer-send"];
  v7[2](v7, 0);
}

- (void)tryConnectWithCode:(id)a3
{
  v4 = a3;
  [(FakeXPlatformD2DConnection *)self getLogContext];
  v5 = *&v7[4];
  ctu::OsLogContext::~OsLogContext(&v6);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    *v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "try connect with : %@", &v6, 0xCu);
  }

  [(FakeXPlatformD2DConnection *)self onConnectionStateChanged:1];
}

- (void)getDCTCodeWithCompletion:(id)a3
{
  v4 = a3;
  [(FakeXPlatformD2DConnection *)self getLogContext];
  v5 = v7;
  ctu::OsLogContext::~OsLogContext(v6);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "get DCT code", v6, 2u);
  }

  v4[2](v4, @"Sample-DCT-Code");
}

- (void)setDelegate:(shared_ptr<D2DConnectionDelegate>)a3 forTarget:(BOOL)a4 completion:(id)a5
{
  var0 = a3.var0;
  v7 = a4;
  v8 = *var0;
  v11 = v7;
  if (*var0)
  {
    v9 = *(var0 + 1);
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 16), 1uLL, memory_order_relaxed);
    }

    cntrl = self->_weakDelegate.__cntrl_;
    self->_weakDelegate.__ptr_ = v8;
    self->_weakDelegate.__cntrl_ = v9;
    if (cntrl)
    {
      std::__shared_weak_count::__release_weak(cntrl);
      v7 = v11;
    }
  }

  (*(v7 + 2))(v7);
}

- (shared_ptr<D2DConnectionDelegate>)delegate
{
  v3 = v2;
  p_weakDelegate = &self->_weakDelegate;
  *v2 = 0;
  v2[1] = 0;
  cntrl = self->_weakDelegate.__cntrl_;
  if (cntrl)
  {
    cntrl = std::__shared_weak_count::lock(cntrl);
    v3[1] = cntrl;
    if (cntrl)
    {
      *v3 = p_weakDelegate->__ptr_;
    }
  }

  result.var1 = a2;
  result.var0 = cntrl;
  return result;
}

- (void)onConnectionStateChanged:(int)a3
{
  v3 = *&a3;
  [(FakeXPlatformD2DConnection *)self getLogContext];
  v5 = *&v11[4];
  ctu::OsLogContext::~OsLogContext(&v10);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    *v11 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "connection state changed : %ld", &v10, 0xCu);
  }

  p_weakDelegate = &self->_weakDelegate;
  cntrl = self->_weakDelegate.__cntrl_;
  if (cntrl)
  {
    v8 = std::__shared_weak_count::lock(cntrl);
    if (v8)
    {
      v9 = v8;
      if (p_weakDelegate->__ptr_)
      {
        (*(*p_weakDelegate->__ptr_ + 16))(p_weakDelegate->__ptr_, v3);
      }

      sub_100004A34(v9);
    }
  }
}

- (void)onReceived:(id)a3
{
  v4 = a3;
  [(FakeXPlatformD2DConnection *)self getLogContext];
  v5 = *&v13[4];
  ctu::OsLogContext::~OsLogContext(&v12);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 length];
    v12 = 134217984;
    *v13 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "received %lu byptes", &v12, 0xCu);
  }

  p_weakDelegate = &self->_weakDelegate;
  cntrl = self->_weakDelegate.__cntrl_;
  if (cntrl)
  {
    v9 = std::__shared_weak_count::lock(cntrl);
    if (v9)
    {
      v10 = v9;
      ptr = p_weakDelegate->__ptr_;
      if (ptr)
      {
        if (![v4 length])
        {
          __assert_rtn("[FakeXPlatformD2DConnection onReceived:]", "FakeXPlatformD2DConnection.mm", 129, "payload.length > 0");
        }

        (*(*ptr + 24))(ptr, v4);
      }

      sub_100004A34(v10);
    }
  }
}

- (id)createError:(id)a3
{
  v3 = a3;
  v7 = NSLocalizedDescriptionKey;
  v8 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  v5 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:v4];

  return v5;
}

- (id)parseSIMTransferSessionRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_alloc_init(ObjcSimTransferStartSessionRequest);
  v8 = [v6 objectForKeyedSubscript:@"versions"];
  [(ObjcSimTransferStartSessionRequest *)v7 setVersions:v8];
  v9 = [(ObjcSimTransferStartSessionRequest *)v7 versions];
  v10 = [v9 count];

  if (v10)
  {
    v11 = [v6 objectForKeyedSubscript:@"sessionID"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v13 = [v6 objectForKeyedSubscript:@"sessionID"];
      -[ObjcSimTransferStartSessionRequest setSessionID:](v7, "setSessionID:", [v13 longLongValue]);
    }

    v14 = [v6 objectForKeyedSubscript:@"friendlyDeviceName"];
    objc_opt_class();
    v15 = objc_opt_isKindOfClass();

    if (v15)
    {
      v16 = [v6 objectForKeyedSubscript:@"friendlyDeviceName"];
      [(ObjcSimTransferStartSessionRequest *)v7 setFriendlyDeviceName:v16];
    }
  }

  else
  {
    *a4 = [(FakeXPlatformD2DConnection *)self createError:@"No version provided in SIMTransferSessionRequest"];
  }

  return v7;
}

- (id)parseSIMTransferItem:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_alloc_init(ObjcSimTransferItem);
  v8 = [v6 objectForKeyedSubscript:@"iccid"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v42 = [(FakeXPlatformD2DConnection *)self createError:@"No iccid provided in SIMTransferProfileResponse"];
LABEL_24:
    *a4 = v42;
    goto LABEL_25;
  }

  v10 = [v6 objectForKeyedSubscript:@"iccid"];
  [(ObjcSimTransferItem *)v7 setIccid:v10];

  v11 = [v6 objectForKeyedSubscript:@"mcc"];
  objc_opt_class();
  v12 = objc_opt_isKindOfClass();

  if ((v12 & 1) == 0)
  {
    v42 = [(FakeXPlatformD2DConnection *)self createError:@"No mcc provided in SIMTransferProfileResponse"];
    goto LABEL_24;
  }

  v13 = [v6 objectForKeyedSubscript:@"mcc"];
  [(ObjcSimTransferItem *)v7 setMcc:v13];

  v14 = [v6 objectForKeyedSubscript:@"mnc"];
  objc_opt_class();
  v15 = objc_opt_isKindOfClass();

  if ((v15 & 1) == 0)
  {
    v42 = [(FakeXPlatformD2DConnection *)self createError:@"No mnc provided in SIMTransferProfileResponse"];
    goto LABEL_24;
  }

  v16 = [v6 objectForKeyedSubscript:@"mnc"];
  [(ObjcSimTransferItem *)v7 setMnc:v16];

  v17 = [v6 objectForKeyedSubscript:@"gid1"];
  objc_opt_class();
  v18 = objc_opt_isKindOfClass();

  if ((v18 & 1) == 0)
  {
    v42 = [(FakeXPlatformD2DConnection *)self createError:@"No gid1 provided in SIMTransferProfileResponse"];
    goto LABEL_24;
  }

  v19 = [v6 objectForKeyedSubscript:@"gid1"];
  [(ObjcSimTransferItem *)v7 setGid1:v19];

  v20 = [v6 objectForKeyedSubscript:@"gid2"];
  objc_opt_class();
  v21 = objc_opt_isKindOfClass();

  if ((v21 & 1) == 0)
  {
    v42 = [(FakeXPlatformD2DConnection *)self createError:@"No gid2 provided in SIMTransferProfileResponse"];
    goto LABEL_24;
  }

  v22 = [v6 objectForKeyedSubscript:@"gid2"];
  [(ObjcSimTransferItem *)v7 setGid2:v22];

  v23 = [v6 objectForKeyedSubscript:@"carrierName"];
  objc_opt_class();
  v24 = objc_opt_isKindOfClass();

  if ((v24 & 1) == 0)
  {
    v42 = [(FakeXPlatformD2DConnection *)self createError:@"No carrierName provided in SIMTransferProfileResponse"];
    goto LABEL_24;
  }

  v25 = [v6 objectForKeyedSubscript:@"carrierName"];
  [(ObjcSimTransferItem *)v7 setCarrierName:v25];

  v26 = [v6 objectForKeyedSubscript:@"phoneNumber"];
  objc_opt_class();
  v27 = objc_opt_isKindOfClass();

  if (v27)
  {
    v28 = [v6 objectForKeyedSubscript:@"phoneNumber"];
    [(ObjcSimTransferItem *)v7 setPhoneNumber:v28];
  }

  v29 = [v6 objectForKeyedSubscript:@"imsi"];
  objc_opt_class();
  v30 = objc_opt_isKindOfClass();

  if (v30)
  {
    v31 = [v6 objectForKeyedSubscript:@"imsi"];
    [(ObjcSimTransferItem *)v7 setImsi:v31];
  }

  v32 = [v6 objectForKeyedSubscript:@"imei"];
  objc_opt_class();
  v33 = objc_opt_isKindOfClass();

  if (v33)
  {
    v34 = [v6 objectForKeyedSubscript:@"imei"];
    [(ObjcSimTransferItem *)v7 setImei:v34];
  }

  v35 = [v6 objectForKeyedSubscript:@"error"];
  objc_opt_class();
  v36 = objc_opt_isKindOfClass();

  if (v36)
  {
    v37 = [v6 objectForKeyedSubscript:@"error"];
    -[ObjcSimTransferItem setError:](v7, "setError:", [v37 integerValue]);
  }

  v38 = [v6 objectForKeyedSubscript:@"token"];
  if (v38)
  {
    v39 = objc_alloc_init(ObjcSimTransferProfileTokenInfo);
    v40 = [v38 objectForKeyedSubscript:@"token"];
    [(ObjcSimTransferProfileTokenInfo *)v39 setToken:v40];

    v41 = [v38 objectForKeyedSubscript:@"tokenExpiry"];
    [(ObjcSimTransferProfileTokenInfo *)v39 setTokenExpiry:v41];

    [(ObjcSimTransferItem *)v7 setToken:v39];
  }

LABEL_25:

  return v7;
}

- (id)parseSIMTransferSessionResponse:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_alloc_init(ObjcSimTransferStartSessionResponse);
  v8 = [v6 objectForKeyedSubscript:@"error"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v10 = [v6 objectForKeyedSubscript:@"error"];
    -[ObjcSimTransferStartSessionResponse setMsgError:](v7, "setMsgError:", [v10 integerValue]);
  }

  v11 = [v6 objectForKeyedSubscript:@"sessionID"];
  objc_opt_class();
  v12 = objc_opt_isKindOfClass();

  if (v12)
  {
    v13 = [v6 objectForKeyedSubscript:@"sessionID"];
    [(ObjcSimTransferStartSessionResponse *)v7 setSessionID:v13];
  }

  v14 = [v6 objectForKeyedSubscript:@"version"];
  objc_opt_class();
  v15 = objc_opt_isKindOfClass();

  if (v15)
  {
    v16 = [v6 objectForKeyedSubscript:@"version"];
    [(ObjcSimTransferStartSessionResponse *)v7 setVersion:v16];
  }

  v17 = [v6 objectForKeyedSubscript:@"friendlyDeviceName"];
  objc_opt_class();
  v18 = objc_opt_isKindOfClass();

  if (v18)
  {
    v19 = [v6 objectForKeyedSubscript:@"friendlyDeviceName"];
    [(ObjcSimTransferStartSessionResponse *)v7 setFriendlyDeviceName:v19];
  }

  v20 = +[NSMutableArray array];
  [v6 objectForKeyedSubscript:@"items"];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v21 = v32 = 0u;
  v22 = [v21 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v22)
  {
    v23 = *v32;
    while (2)
    {
      for (i = 0; i != v22; i = i + 1)
      {
        if (*v32 != v23)
        {
          objc_enumerationMutation(v21);
        }

        v25 = [(FakeXPlatformD2DConnection *)self parseSIMTransferItem:*(*(&v31 + 1) + 8 * i) error:a4, v31];
        v26 = v25;
        if (*a4)
        {

          goto LABEL_19;
        }

        [v20 addObject:v25];
      }

      v22 = [v21 countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v22)
      {
        continue;
      }

      break;
    }
  }

LABEL_19:

  if (!*a4)
  {
    v27 = [(ObjcSimTransferStartSessionResponse *)v7 items];
    v28 = [v27 count] == 0;

    if (v28)
    {
      *a4 = [(FakeXPlatformD2DConnection *)self createError:@"No SIMTransferItem provided in SIMTransferSessionResponse"];
    }

    else
    {
      v29 = [v20 copy];
      [(ObjcSimTransferStartSessionResponse *)v7 setItems:v29];
    }
  }

  return v7;
}

- (id)parseSimTransferStatus:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = +[NSMutableArray array];
  v21 = a4;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v7)
  {
    v8 = *v24;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        v11 = objc_alloc_init(ObjcSimTransferStatus);
        v12 = [v10 objectForKeyedSubscript:@"iccid"];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          *v21 = [(FakeXPlatformD2DConnection *)self createError:@"No iccid provided in SIMTransferNotification.SIMTransferStatus"];

          goto LABEL_13;
        }

        v14 = [v10 objectForKeyedSubscript:@"iccid"];
        [(ObjcSimTransferStatus *)v11 setIccid:v14];

        v15 = [v10 objectForKeyedSubscript:@"status"];
        objc_opt_class();
        v16 = objc_opt_isKindOfClass();

        if (v16)
        {
          v17 = [v10 objectForKeyedSubscript:@"status"];
          -[ObjcSimTransferStatus setStatus:](v11, "setStatus:", [v17 intValue]);
        }

        [v6 addObject:v11];
      }

      v7 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  if (*v21)
  {
    v18 = 0;
  }

  else if ([v6 count])
  {
    v18 = [v6 copy];
  }

  else
  {
    [(FakeXPlatformD2DConnection *)self createError:@"No SIMTransferStatus provided in SIMTransferNotification"];
    *v21 = v18 = 0;
  }

  return v18;
}

- (id)parseSIMTransferSessionNotification:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_alloc_init(ObjcSimTransferEndSessionRequest);
  v8 = [v6 objectForKeyedSubscript:@"sessionID"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v10 = [v6 objectForKeyedSubscript:@"sessionID"];
    -[ObjcSimTransferEndSessionRequest setSessionID:](v7, "setSessionID:", [v10 longLongValue]);

    v11 = [v6 objectForKeyedSubscript:@"status"];
    v12 = [(FakeXPlatformD2DConnection *)self parseSimTransferStatus:v11 error:a4];

    if (!*a4)
    {
      [(ObjcSimTransferEndSessionRequest *)v7 setStatus:v12];
    }
  }

  else
  {
    *a4 = [(FakeXPlatformD2DConnection *)self createError:@"No sessionID provided in SIMTransferSessionNotification"];
  }

  return v7;
}

- (id)parseSIMTransferProfileRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_alloc_init(ObjcSimTransferProfileRequest);
  v8 = [v6 objectForKeyedSubscript:@"sessionID"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v10 = [v6 objectForKeyedSubscript:@"sessionID"];
    -[ObjcSimTransferProfileRequest setSessionID:](v7, "setSessionID:", [v10 longLongValue]);

    v11 = [v6 objectForKeyedSubscript:@"iccid"];
    objc_opt_class();
    v12 = objc_opt_isKindOfClass();

    if (v12)
    {
      v13 = [v6 objectForKeyedSubscript:@"iccid"];
      [(ObjcSimTransferProfileRequest *)v7 setIccid:v13];

      goto LABEL_7;
    }

    v14 = [(FakeXPlatformD2DConnection *)self createError:@"No iccid provided in SIMTransferProfileRequest"];
  }

  else
  {
    v14 = [(FakeXPlatformD2DConnection *)self createError:@"No sessionID provided in SIMTransferProfileRequest"];
  }

  *a4 = v14;
LABEL_7:

  return v7;
}

- (id)parseSIMTransferProfileResponse:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_alloc_init(ObjcSimTransferProfileResponse);
  v8 = [v6 objectForKeyedSubscript:@"error"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v10 = [v6 objectForKeyedSubscript:@"error"];
    -[ObjcSimTransferProfileResponse setMsgError:](v7, "setMsgError:", [v10 integerValue]);
  }

  v11 = [v6 objectForKeyedSubscript:@"sessionID"];
  objc_opt_class();
  v12 = objc_opt_isKindOfClass();

  if (v12)
  {
    v13 = [v6 objectForKeyedSubscript:@"sessionID"];
    -[ObjcSimTransferProfileResponse setSessionID:](v7, "setSessionID:", [v13 longLongValue]);

    v14 = +[NSMutableArray array];
    [v6 objectForKeyedSubscript:@"items"];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v15 = v23 = 0u;
    v16 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v16)
    {
      v17 = *v23;
      while (2)
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v23 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = [(FakeXPlatformD2DConnection *)self parseSIMTransferItem:*(*(&v22 + 1) + 8 * i) error:a4, v22];
          v20 = v19;
          if (*a4)
          {

            goto LABEL_15;
          }

          [v14 addObject:v19];
          [(ObjcSimTransferProfileResponse *)v7 setItem:v20];
        }

        v16 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:
  }

  else
  {
    *a4 = [(FakeXPlatformD2DConnection *)self createError:@"No sessionID provided in SIMTransferProfileResponse"];
  }

  return v7;
}

- (id)parseSIMTransferProfileNotification:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_alloc_init(ObjcSimTransferProfileNotification);
  v8 = [v6 objectForKeyedSubscript:@"sessionID"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v10 = [v6 objectForKeyedSubscript:@"sessionID"];
    -[ObjcSimTransferProfileNotification setSessionID:](v7, "setSessionID:", [v10 longLongValue]);

    v11 = [v6 objectForKeyedSubscript:@"status"];
    v12 = [(FakeXPlatformD2DConnection *)self parseSimTransferStatus:v11 error:a4];

    if (!*a4)
    {
      [(ObjcSimTransferProfileNotification *)v7 setStatus:v12];
    }
  }

  else
  {
    *a4 = [(FakeXPlatformD2DConnection *)self createError:@"No sessionID provided in SIMTransferProfileNotification"];
  }

  return v7;
}

- (void)forwardEvent:(id)a3 payload:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(FakeXPlatformD2DConnection *)self getLogContext];
  v8 = *&v30[4];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *v30 = v6;
    *&v30[8] = 2112;
    *&v30[10] = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "event %@ payload %@", buf, 0x16u);
  }

  v9 = [v7 dataUsingEncoding:4];
  v28 = 0;
  v10 = [NSJSONSerialization JSONObjectWithData:v9 options:0 error:&v28];
  v11 = v28;

  if (!v11)
  {
    v13 = objc_alloc_init(CellularPlanCrossPlatformTransferMessageCodec);
    if ([v6 caseInsensitiveCompare:@"SIMTransferSessionRequest"])
    {
      if ([v6 caseInsensitiveCompare:@"SIMTransferSessionResponse"])
      {
        if ([v6 caseInsensitiveCompare:@"SIMTransferSessionNotification"])
        {
          if ([v6 caseInsensitiveCompare:@"SIMTransferProfileRequest"])
          {
            if ([v6 caseInsensitiveCompare:@"SIMTransferProfileResponse"])
            {
              if ([v6 caseInsensitiveCompare:@"SIMTransferProfileNotification"])
              {
                v11 = 0;
                v14 = 0;
LABEL_31:

                goto LABEL_32;
              }

              v22 = 0;
              v15 = [(FakeXPlatformD2DConnection *)self parseSIMTransferProfileNotification:v10 error:&v22];
              v11 = v22;
              v16 = [(CellularPlanCrossPlatformTransferMessageCodec *)v13 encodeProfileNotification:v15];
            }

            else
            {
              v23 = 0;
              v15 = [(FakeXPlatformD2DConnection *)self parseSIMTransferProfileResponse:v10 error:&v23];
              v11 = v23;
              v16 = [(CellularPlanCrossPlatformTransferMessageCodec *)v13 encodeProfileResponse:v15];
            }
          }

          else
          {
            v24 = 0;
            v15 = [(FakeXPlatformD2DConnection *)self parseSIMTransferProfileRequest:v10 error:&v24];
            v11 = v24;
            v16 = [(CellularPlanCrossPlatformTransferMessageCodec *)v13 encodeProfileRequest:v15];
          }
        }

        else
        {
          v25 = 0;
          v15 = [(FakeXPlatformD2DConnection *)self parseSIMTransferSessionNotification:v10 error:&v25];
          v11 = v25;
          v16 = [(CellularPlanCrossPlatformTransferMessageCodec *)v13 encodeEndSessionRequest:v15];
        }
      }

      else
      {
        v26 = 0;
        v15 = [(FakeXPlatformD2DConnection *)self parseSIMTransferSessionResponse:v10 error:&v26];
        v11 = v26;
        v16 = [(CellularPlanCrossPlatformTransferMessageCodec *)v13 encodeStartSessionResponse:v15];
      }
    }

    else
    {
      v27 = 0;
      v15 = [(FakeXPlatformD2DConnection *)self parseSIMTransferSessionRequest:v10 error:&v27];
      v11 = v27;
      v16 = [(CellularPlanCrossPlatformTransferMessageCodec *)v13 encodeStartSessionRequest:v15];
    }

    v14 = v16;

    if (v11)
    {
      [(FakeXPlatformD2DConnection *)self getLogContext];
      v17 = *&v30[4];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = [(std::__shared_weak_count *)v11 localizedDescription];
        sub_10177AB0C(v18, buf, v17);
      }

      goto LABEL_31;
    }

    if (v14)
    {
      [(FakeXPlatformD2DConnection *)self getLogContext];
      v19 = *&v30[4];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v30 = v6;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "parse event %@ success", buf, 0xCu);
      }

      [(CellularPlanCrossPlatformTransportUtility *)self->_transportUtility dumpData:v14 withLabel:@"xfer-recv"];
      p_weakDelegate = &self->_weakDelegate;
      cntrl = p_weakDelegate->__cntrl_;
      if (cntrl)
      {
        v11 = std::__shared_weak_count::lock(cntrl);
        if (!v11)
        {
          goto LABEL_31;
        }

        if (p_weakDelegate->__ptr_)
        {
          (*(*p_weakDelegate->__ptr_ + 24))(p_weakDelegate->__ptr_, v14);
        }

        sub_100004A34(v11);
      }
    }

    v11 = 0;
    goto LABEL_31;
  }

  [(FakeXPlatformD2DConnection *)self getLogContext];
  v12 = *&v30[4];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *v30 = v7;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Failed to parse JSON: %@", buf, 0xCu);
  }

LABEL_32:
}

- (void)_connectEvent:(const void *)a3
{
  Registry::createRestModuleOneTimeUseConnection(&v18, *a3);
  ctu::RestModule::connect();
  if (v19)
  {
    sub_100004A34(v19);
  }

  v4 = self;
  sub_10000501C(__p, "/cc/events/fake_xplatform_sim_transfer_protobuf_event");
  v5 = v4;
  v22 = off_101E73BF0;
  v23 = v5;
  v24 = &v22;
  ctu::RestModule::observeEvent();
  sub_1000062D4(&v22);
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  v6 = v5;
  sub_10000501C(__p, "/cc/events/fake_xplatform_sim_transfer_session_request");
  v7 = v6;
  v22 = off_101E73C70;
  v23 = v7;
  v24 = &v22;
  ctu::RestModule::observeEvent();
  sub_1000062D4(&v22);
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = v7;
  sub_10000501C(__p, "/cc/events/fake_xplatform_sim_transfer_profile_request");
  v9 = v8;
  v22 = off_101E73CF0;
  v23 = v9;
  v24 = &v22;
  ctu::RestModule::observeEvent();
  sub_1000062D4(&v22);
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = v9;
  sub_10000501C(__p, "/cc/events/fake_xplatform_sim_transfer_profile_notification");
  v11 = v10;
  v22 = off_101E73D70;
  v23 = v11;
  v24 = &v22;
  ctu::RestModule::observeEvent();
  sub_1000062D4(&v22);
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  v12 = v11;
  sub_10000501C(__p, "/cc/events/fake_xplatform_sim_transfer_session_notification");
  v13 = v12;
  v22 = off_101E73DF0;
  v23 = v13;
  v24 = &v22;
  ctu::RestModule::observeEvent();
  sub_1000062D4(&v22);
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  v14 = v13;
  sub_10000501C(__p, "/cc/events/fake_xplatform_sim_transfer_session_response");
  v15 = v14;
  v22 = off_101E73E70;
  v23 = v15;
  v24 = &v22;
  ctu::RestModule::observeEvent();
  sub_1000062D4(&v22);
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  v16 = v15;
  sub_10000501C(__p, "/cc/events/fake_xplatform_sim_transfer_profile_response");
  v17 = v16;
  v22 = off_101E73EF0;
  v23 = v17;
  v24 = &v22;
  ctu::RestModule::observeEvent();
  sub_1000062D4(&v22);
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }
}

- (weak_ptr<D2DConnectionDelegate>)weakDelegate
{
  objc_copyCppObjectAtomic(v2, &self->_weakDelegate, sub_1006E47C4);
  result.__cntrl_ = v4;
  result.__ptr_ = v3;
  return result;
}

- (id).cxx_construct
{
  ctu::RestModule::RestModule(&self->fRestModule);
  self->_weakDelegate.__ptr_ = 0;
  self->_weakDelegate.__cntrl_ = 0;
  return self;
}

@end