@interface ADDeviceAuthenticationSessionV0
- (BOOL)completeWithHandshakeResponse:(id)a3 error:(id *)a4;
- (id)handshakeRequestWithCertificateData:(id)a3 error:(id *)a4;
- (id)signData:(id)a3 error:(id *)a4;
- (void)dealloc;
- (void)invalidate;
@end

@implementation ADDeviceAuthenticationSessionV0

- (id)signData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v21 = "[ADDeviceAuthenticationSessionV0 signData:error:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  sessionState = self->_sessionState;
  if (sessionState != 2)
  {
    if (a4)
    {
      v12 = @"com.apple.assistant.deviceAuth.session.StateError";
      v13 = 0;
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v19 = 0;
  sub_10006F82C(self->_nacContext, [v6 bytes], objc_msgSend(v6, "length"), &v19);
  if (v9)
  {
    v10 = v9;
    v11 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v21 = "[ADDeviceAuthenticationSessionV0 signData:error:]";
      v22 = 1026;
      v23 = v10;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s NACSign error %{public}d", buf, 0x12u);
    }

    [(ADDeviceAuthenticationSessionV0 *)self invalidate];
    if (a4)
    {
      sessionState = v10;
      v12 = @"com.apple.assistant.deviceAuth.session.GenericError";
      v13 = &off_100534298;
LABEL_11:
      [NSError errorWithDomain:v12 code:sessionState userInfo:v13];
      *a4 = v14 = 0;
      goto LABEL_16;
    }

LABEL_12:
    v14 = 0;
    goto LABEL_16;
  }

  v14 = [NSData dataWithBytes:v19 length:0];
  v15 = sub_10006F2AC(v19);
  if (v15)
  {
    v16 = v15;
    v17 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v21 = "[ADDeviceAuthenticationSessionV0 signData:error:]";
      v22 = 1026;
      v23 = v16;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s Error disposing validation data %{public}d", buf, 0x12u);
    }
  }

LABEL_16:

  return v14;
}

- (BOOL)completeWithHandshakeResponse:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v16 = 136315138;
    v17 = "[ADDeviceAuthenticationSessionV0 completeWithHandshakeResponse:error:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s ", &v16, 0xCu);
  }

  sessionState = self->_sessionState;
  if (sessionState != 1)
  {
    if (a4)
    {
      v12 = @"com.apple.assistant.deviceAuth.session.StateError";
      v13 = 0;
      goto LABEL_11;
    }

LABEL_12:
    v14 = 0;
    goto LABEL_14;
  }

  sub_10006F4D8(self->_nacContext, [v6 bytes], objc_msgSend(v6, "length"));
  if (!v9)
  {
    self->_sessionState = 2;
    v14 = 1;
    goto LABEL_14;
  }

  v10 = v9;
  v11 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_ERROR))
  {
    v16 = 136315394;
    v17 = "[ADDeviceAuthenticationSessionV0 completeWithHandshakeResponse:error:]";
    v18 = 1024;
    v19 = v10;
    _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s NACKeyEstablishment error %d", &v16, 0x12u);
  }

  [(ADDeviceAuthenticationSessionV0 *)self invalidate];
  if (!a4)
  {
    goto LABEL_12;
  }

  sessionState = v10;
  v12 = @"com.apple.assistant.deviceAuth.session.GenericError";
  v13 = &off_100534270;
LABEL_11:
  [NSError errorWithDomain:v12 code:sessionState userInfo:v13];
  *a4 = v14 = 0;
LABEL_14:

  return v14;
}

- (id)handshakeRequestWithCertificateData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v23 = "[ADDeviceAuthenticationSessionV0 handshakeRequestWithCertificateData:error:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  if (self->_sessionState)
  {
    [(ADDeviceAuthenticationSessionV0 *)self invalidate];
  }

  sub_10006F678([v6 bytes], objc_msgSend(v6, "length"));
  v9 = AFSiriLogContextSession;
  if (v8)
  {
    v10 = v8;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v23 = "[ADDeviceAuthenticationSessionV0 handshakeRequestWithCertificateData:error:]";
      v24 = 1026;
      LODWORD(v25) = v10;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s Error during NACInit %{public}d", buf, 0x12u);
    }

    [(ADDeviceAuthenticationSessionV0 *)self invalidate];
    if (a4)
    {
      v11 = (v10 & 0xFFFFFFEE) == 0xFFFF540A || v10 == -44204;
      v12 = @"com.apple.assistant.deviceAuth.session.GenericError";
      if (v11)
      {
        v12 = @"com.apple.assistant.deviceAuth.session.badCertificateError";
      }

      v13 = v12;
      v14 = [NSError errorWithDomain:v13 code:v10 userInfo:&off_100534248];
      v15 = v14;

      v16 = 0;
      *a4 = v14;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
    {
      nacContext = self->_nacContext;
      *buf = 136315394;
      v23 = "[ADDeviceAuthenticationSessionV0 handshakeRequestWithCertificateData:error:]";
      v24 = 2048;
      v25 = nacContext;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Got context %p from NACInit", buf, 0x16u);
    }

    self->_sessionState = 1;
    v16 = [NSData dataWithBytes:0 length:0];
    v18 = sub_10006F2AC(0);
    if (v18)
    {
      v19 = v18;
      v20 = AFSiriLogContextSession;
      if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v23 = "[ADDeviceAuthenticationSessionV0 handshakeRequestWithCertificateData:error:]";
        v24 = 1026;
        LODWORD(v25) = v19;
        _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s Disposing request data failed %{public}d", buf, 0x12u);
      }
    }
  }

  return v16;
}

- (void)invalidate
{
  nacContext = self->_nacContext;
  if (nacContext)
  {
    v4 = sub_10006F084(nacContext);
    if (v4)
    {
      v5 = v4;
      v6 = AFSiriLogContextSession;
      if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_ERROR))
      {
        v7 = 136315394;
        v8 = "[ADDeviceAuthenticationSessionV0 invalidate]";
        v9 = 1026;
        v10 = v5;
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s Error destroying NACContext %{public}d", &v7, 0x12u);
      }
    }
  }

  self->_sessionState = 0;
}

- (void)dealloc
{
  [(ADDeviceAuthenticationSessionV0 *)self invalidate];
  v3.receiver = self;
  v3.super_class = ADDeviceAuthenticationSessionV0;
  [(ADDeviceAuthenticationSessionV0 *)&v3 dealloc];
}

@end