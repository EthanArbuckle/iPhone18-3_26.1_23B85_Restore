@interface ADDeviceAuthenticationSessionV1
- (ADDeviceAuthenticationSessionV1)init;
- (BOOL)completeWithHandshakeResponse:(id)a3 error:(id *)a4;
- (id)_exchangeData:(id)a3 error:(id *)a4;
- (id)handshakeRequestWithCertificateData:(id)a3 error:(id *)a4;
- (id)signData:(id)a3 error:(id *)a4;
- (void)dealloc;
- (void)invalidate;
@end

@implementation ADDeviceAuthenticationSessionV1

- (id)signData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    *&buf[4] = "[ADDeviceAuthenticationSessionV1 signData:error:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  if (self->_fairplayContext)
  {
    *buf = 0;
    v15 = 0;
    v8 = objc_alloc_init(NSData);
    sub_10003F910(self->_fairplayContext, [v8 bytes], objc_msgSend(v8, "length"), buf, &v15);
    if (v9)
    {
      v10 = [NSError errorWithDomain:@"com.apple.assistant.deviceAuth.session.GenericError" code:v9 userInfo:&off_1005340E0];
      v11 = v10;
      if (a4)
      {
        v12 = v10;
        v13 = 0;
        *a4 = v11;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = [NSData dataWithBytes:*buf length:v15];
      sub_10003052C(*buf);
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  return v13;
}

- (id)_exchangeData:(id)a3 error:(id *)a4
{
  fairplayContext = self->_fairplayContext;
  if (!fairplayContext)
  {
    v19 = 0;
LABEL_12:
    v21 = 0;
    goto LABEL_18;
  }

  v26 = 0;
  v25 = 0;
  v24 = -1;
  v8 = a3;
  v9 = a3;
  v10 = [v9 bytes];
  v11 = [v9 length];

  sub_100050AC8(200, &self->_hardwareInfo, fairplayContext, v10, v11, &v26, &v25, &v24);
  if (v12)
  {
    v13 = v12;
    v14 = AFSiriLogContextSession;
    v15 = v12;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v28 = "[ADDeviceAuthenticationSessionV1 _exchangeData:error:]";
      v29 = 2050;
      v30 = v13;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s SAP exchange failed: %{public}li", buf, 0x16u);
    }

    [(ADDeviceAuthenticationSessionV1 *)self invalidate];
    if ((vaddvq_s32(vandq_s8(vceqq_s32(vdupq_n_s32(v13), xmmword_1003F02A0), xmmword_1003F02B0)) & 0xF) != 0)
    {
      v16 = @"com.apple.assistant.deviceAuth.session.badCertificateError";
    }

    else
    {
      v16 = @"com.apple.assistant.deviceAuth.session.GenericError";
    }

    v17 = v16;
    v18 = [NSError errorWithDomain:v17 code:v15 userInfo:&off_1005340B8];
    v19 = v18;
    if (a4)
    {
      v20 = v18;
      *a4 = v19;
    }

    goto LABEL_12;
  }

  v22 = v24;
  if (v24 == 1)
  {
    goto LABEL_16;
  }

  if (!v24)
  {
    v22 = 2;
LABEL_16:
    self->_sessionState = v22;
  }

  v21 = [NSData dataWithBytes:v26 length:v25];
  sub_10003052C(v26);
  v19 = 0;
LABEL_18:

  return v21;
}

- (BOOL)completeWithHandshakeResponse:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v11 = 136315138;
    v12 = "[ADDeviceAuthenticationSessionV1 completeWithHandshakeResponse:error:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s ", &v11, 0xCu);
  }

  v8 = [(ADDeviceAuthenticationSessionV1 *)self _exchangeData:v6 error:a4];
  v9 = v8 != 0;

  return v9;
}

- (id)handshakeRequestWithCertificateData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v10 = 136315138;
    v11 = "[ADDeviceAuthenticationSessionV1 handshakeRequestWithCertificateData:error:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s ", &v10, 0xCu);
  }

  v8 = [(ADDeviceAuthenticationSessionV1 *)self _exchangeData:v6 error:a4];

  return v8;
}

- (void)dealloc
{
  [(ADDeviceAuthenticationSessionV1 *)self invalidate];
  v3.receiver = self;
  v3.super_class = ADDeviceAuthenticationSessionV1;
  [(ADDeviceAuthenticationSessionV1 *)&v3 dealloc];
}

- (void)invalidate
{
  v3 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[ADDeviceAuthenticationSessionV1 invalidate]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", &v5, 0xCu);
  }

  self->_sessionState = 0;
  fairplayContext = self->_fairplayContext;
  if (fairplayContext)
  {
    sub_1000206B4(fairplayContext);
    self->_fairplayContext = 0;
  }
}

- (ADDeviceAuthenticationSessionV1)init
{
  v11.receiver = self;
  v11.super_class = ADDeviceAuthenticationSessionV1;
  v2 = [(ADDeviceAuthenticationSessionV1 *)&v11 init];
  v3 = v2;
  if (v2)
  {
    sub_10005D4A0(0, 0, &v2->_hardwareInfo);
    if (v4)
    {
      v5 = v4;
      v6 = AFSiriLogContextSession;
      if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v13 = "[ADDeviceAuthenticationSessionV1 init]";
        v14 = 1026;
        v15 = v5;
        v7 = "%s Could not initialize hardware info: %{public}d";
LABEL_10:
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, v7, buf, 0x12u);
        goto LABEL_7;
      }

      goto LABEL_7;
    }

    sub_10004CD50(&v3->_fairplayContext, &v3->_hardwareInfo);
    if (v8)
    {
      v9 = v8;
      v6 = AFSiriLogContextSession;
      if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v13 = "[ADDeviceAuthenticationSessionV1 init]";
        v14 = 1026;
        v15 = v9;
        v7 = "%s Could not create SAP session: %{public}d";
        goto LABEL_10;
      }

LABEL_7:

      return 0;
    }
  }

  return v3;
}

@end