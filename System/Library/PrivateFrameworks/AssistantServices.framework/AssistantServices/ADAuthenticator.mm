@interface ADAuthenticator
- (ADAuthenticator)initWithTargetQueue:(id)a3 authenticationStrategyVersion:(id)a4;
- (id)_createDeviceAuthenticationSessionForVersion:(unint64_t)a3;
- (id)deviceAuthSession;
- (id)signedDataForData:(id)a3;
- (int)state;
- (void)prepareWithCertificateData:(id)a3 completion:(id)a4;
- (void)reset;
- (void)setSessionInfo:(id)a3 duration:(double)a4;
@end

@implementation ADAuthenticator

- (void)reset
{
  v3 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[ADAuthenticator reset]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", &v5, 0xCu);
  }

  [(ADAuthenticator *)self _setRequestData:0];
  deviceAuthSession = self->_deviceAuthSession;
  self->_deviceAuthSession = 0;

  self->_deviceAuthSessionState = 0;
}

- (id)_createDeviceAuthenticationSessionForVersion:(unint64_t)a3
{
  if (!a3)
  {
    v4 = off_100505A90;
LABEL_5:
    v5 = objc_alloc_init(*v4);

    return v5;
  }

  if (a3 == 1)
  {
    v4 = off_100505A98;
    goto LABEL_5;
  }

  v5 = 0;

  return v5;
}

- (id)signedDataForData:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v14 = "[ADAuthenticator signedDataForData:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  if (self->_deviceAuthSessionState == 2)
  {
    v6 = 0;
  }

  else
  {
    v7 = [(ADAuthenticator *)self deviceAuthSession];
    v12 = 0;
    v8 = [v7 signData:v4 error:&v12];
    v9 = v12;

    if (v9)
    {
      v10 = AFSiriLogContextSession;
      if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v14 = "[ADAuthenticator signedDataForData:]";
        v15 = 2112;
        v16 = v9;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s Error signing data: %@", buf, 0x16u);
      }

      v6 = 0;
    }

    else
    {
      v6 = v8;
    }
  }

  return v6;
}

- (void)setSessionInfo:(id)a3 duration:(double)a4
{
  v6 = a3;
  v7 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v15 = "[ADAuthenticator setSessionInfo:duration:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  if (self->_deviceAuthSessionState != 2)
  {
    if (v6)
    {
      v8 = [(ADAuthenticator *)self deviceAuthSession];
      v13 = 0;
      v9 = [v8 completeWithHandshakeResponse:v6 error:&v13];
      v10 = v13;

      if (v9)
      {
        self->_duration = a4;
      }

      else
      {
        v12 = AFSiriLogContextSession;
        if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v15 = "[ADAuthenticator setSessionInfo:duration:]";
          v16 = 2112;
          v17 = v10;
          _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s completeWithHandshakeResponse failed with %@", buf, 0x16u);
        }
      }
    }

    else
    {
      v11 = AFSiriLogContextSession;
      if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v15 = "[ADAuthenticator setSessionInfo:duration:]";
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s Attempted to init with nil sessionInfo", buf, 0xCu);
      }
    }
  }
}

- (void)prepareWithCertificateData:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v23 = "[ADAuthenticator prepareWithCertificateData:completion:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  if (self->_deviceAuthSessionState != 2)
  {
    v9 = [(ADAuthenticator *)self deviceAuthSession];
    v10 = [v9 sessionState];
    if (!v6 || v10)
    {
      v18 = AFSiriLogContextSession;
      if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v23 = "[ADAuthenticator prepareWithCertificateData:completion:]";
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s Ignoring request to prepare", buf, 0xCu);
      }

      (*(v7 + 2))(v7, 0, 0);
      goto LABEL_23;
    }

    v21 = 0;
    v11 = [v9 handshakeRequestWithCertificateData:v6 error:&v21];
    v12 = v21;
    if (v12 && (v13 = AFSiriLogContextSession, os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_ERROR)))
    {
      v19 = v13;
      v20 = [v12 code];
      *buf = 136315394;
      v23 = "[ADAuthenticator prepareWithCertificateData:completion:]";
      v24 = 1026;
      v25 = v20;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s Error during handshakeRequestWithCertificateData: %{public}d", buf, 0x12u);

      if (v7)
      {
        goto LABEL_10;
      }
    }

    else if (v7)
    {
LABEL_10:
      if (v12)
      {
        v14 = 1;
      }

      else
      {
        v14 = v11 == 0;
      }

      v15 = !v14;
      v16 = [v12 domain];
      v17 = [v16 isEqualToString:@"com.apple.assistant.deviceAuth.session.badCertificateError"];

      if (v15 == 1)
      {
        [(ADAuthenticator *)self _setRequestData:v11];
      }

      (*(v7 + 2))(v7, v15, v17);
    }

LABEL_23:
    goto LABEL_24;
  }

  (*(v7 + 2))(v7, 0, 0);
LABEL_24:
}

- (int)state
{
  v3 = [(ADAuthenticator *)self deviceAuthSession];
  v4 = v3;
  if (self->_deviceAuthSessionState == 2)
  {
    v5 = 4;
  }

  else
  {
    v6 = [v3 sessionState];
    if (v6 == 2)
    {
      v5 = 3;
    }

    else
    {
      v5 = 2 * (v6 == 1);
    }
  }

  return v5;
}

- (id)deviceAuthSession
{
  if (!self->_deviceAuthSessionState)
  {
    v3 = [(ADAuthenticator *)self _createDeviceAuthenticationSessionForVersion:[(ADAuthenticator *)self authenticationStrategyVersion]];
    deviceAuthSession = self->_deviceAuthSession;
    self->_deviceAuthSession = v3;

    if (self->_deviceAuthSession)
    {
      v5 = 1;
    }

    else
    {
      v6 = AFSiriLogContextSession;
      if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_ERROR))
      {
        v9 = 136315138;
        v10 = "[ADAuthenticator deviceAuthSession]";
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s Failed to init device authentication session.", &v9, 0xCu);
      }

      v5 = 2;
    }

    self->_deviceAuthSessionState = v5;
  }

  v7 = self->_deviceAuthSession;

  return v7;
}

- (ADAuthenticator)initWithTargetQueue:(id)a3 authenticationStrategyVersion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ADAuthenticator;
  v9 = [(ADAuthenticator *)&v12 init];
  if (v9)
  {
    if (v8)
    {
      v10 = [v8 unsignedIntegerValue];
    }

    else
    {
      v10 = 1;
    }

    v9->_authStrategyVersion = v10;
    objc_storeStrong(&v9->_queue, a3);
  }

  return v9;
}

@end