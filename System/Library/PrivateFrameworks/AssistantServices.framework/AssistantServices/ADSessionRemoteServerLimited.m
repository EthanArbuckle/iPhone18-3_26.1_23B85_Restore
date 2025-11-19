@interface ADSessionRemoteServerLimited
- (BOOL)_sessionRequiresConnection;
- (id)initOnQueue:(id)a3 withAccount:(id)a4 languageCode:(id)a5 connectionMode:(id)a6 sharedUserIdentifier:(id)a7 loggingSharedUserIdentifier:(id)a8 instanceContext:(id)a9;
- (void)_saCommandFailed:(id)a3;
- (void)_siriNetworkConnection:(id)a3 didEncounterError:(id)a4 siriNetworkAnalysisInfo:(id)a5;
- (void)_siriNetworkConnection:(id)a3 didEncounterIntermediateError:(id)a4;
@end

@implementation ADSessionRemoteServerLimited

- (BOOL)_sessionRequiresConnection
{
  v3 = [(ADSession *)self sessionRequiresServerConnection];
  v4 = [(ADSession *)self sessionRequiresSync];
  if ((v3 & 1) == 0 && v4)
  {
    v5 = [(ADSession *)self _requestId];
    v3 = v5 == 0;
  }

  return v3;
}

- (void)_siriNetworkConnection:(id)a3 didEncounterIntermediateError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ADSessionRemoteServerLimited *)self _sessionRequiresConnection];
  v9 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v10 = @"not ";
    *buf = 136315650;
    v14 = "[ADSessionRemoteServerLimited _siriNetworkConnection:didEncounterIntermediateError:]";
    v15 = 2112;
    if (v8)
    {
      v10 = &stru_10051F508;
    }

    v16 = v10;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Server connection %@required for intermediate error %@", buf, 0x20u);
  }

  if (v8)
  {
    v12.receiver = self;
    v12.super_class = ADSessionRemoteServerLimited;
    [(ADSessionRemoteServer *)&v12 _siriNetworkConnection:v6 didEncounterIntermediateError:v7];
  }

  else
  {
    v11 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v14 = "[ADSessionRemoteServerLimited _siriNetworkConnection:didEncounterIntermediateError:]";
      v15 = 2112;
      v16 = v7;
      _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s Ignoring intermediate error %@ from server", buf, 0x16u);
    }
  }
}

- (void)_saCommandFailed:(id)a3
{
  v4 = a3;
  v5 = [(ADSessionRemoteServerLimited *)self _sessionRequiresConnection];
  v6 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v7 = @"not ";
    *buf = 136315650;
    v11 = "[ADSessionRemoteServerLimited _saCommandFailed:]";
    v12 = 2112;
    if (v5)
    {
      v7 = &stru_10051F508;
    }

    v13 = v7;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Server connection %@required for %@", buf, 0x20u);
  }

  if (v5)
  {
    v9.receiver = self;
    v9.super_class = ADSessionRemoteServerLimited;
    [(ADSessionRemoteServer *)&v9 _saCommandFailed:v4];
  }

  else
  {
    v8 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v11 = "[ADSessionRemoteServerLimited _saCommandFailed:]";
      v12 = 2112;
      v13 = v4;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s Ignoring %@ from server", buf, 0x16u);
    }
  }
}

- (void)_siriNetworkConnection:(id)a3 didEncounterError:(id)a4 siriNetworkAnalysisInfo:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(ADSessionRemoteServer *)self siriNetworkConnection];

  if (v11 != v8)
  {
    goto LABEL_12;
  }

  v12 = [v9 domain];
  if (![v12 isEqualToString:SiriNetworkNetworkConnectionErrorDomain])
  {

LABEL_11:
    v17.receiver = self;
    v17.super_class = ADSessionRemoteServerLimited;
    [(ADSessionRemoteServer *)&v17 _siriNetworkConnection:v8 didEncounterError:v9 siriNetworkAnalysisInfo:v10];
    goto LABEL_12;
  }

  v13 = [v9 code];

  if (v13 != 6)
  {
    goto LABEL_11;
  }

  v14 = [(ADSessionRemoteServerLimited *)self _sessionRequiresConnection];
  v15 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v16 = @"not ";
    if (v14)
    {
      v16 = &stru_10051F508;
    }

    *buf = 136315394;
    v19 = "[ADSessionRemoteServerLimited _siriNetworkConnection:didEncounterError:siriNetworkAnalysisInfo:]";
    v20 = 2112;
    v21 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s Server connection %@required for connection open timeout", buf, 0x16u);
  }

  if (v14)
  {
    goto LABEL_11;
  }

LABEL_12:
}

- (id)initOnQueue:(id)a3 withAccount:(id)a4 languageCode:(id)a5 connectionMode:(id)a6 sharedUserIdentifier:(id)a7 loggingSharedUserIdentifier:(id)a8 instanceContext:(id)a9
{
  v15.receiver = self;
  v15.super_class = ADSessionRemoteServerLimited;
  v9 = [(ADSessionRemoteServer *)&v15 initOnQueue:a3 withAccount:a4 languageCode:a5 connectionMode:a6 sharedUserIdentifier:a7 loggingSharedUserIdentifier:a8 instanceContext:a9];
  v10 = v9;
  if (v9)
  {
    [v9 setSessionType:1];
    v11 = [NSString alloc];
    v12 = [NSNumber numberWithUnsignedInt:arc4random()];
    v13 = [v11 initWithFormat:@"%@.%@", &off_100533C68, v12];
    [v10 _setSessionId:v13];
  }

  return v10;
}

@end