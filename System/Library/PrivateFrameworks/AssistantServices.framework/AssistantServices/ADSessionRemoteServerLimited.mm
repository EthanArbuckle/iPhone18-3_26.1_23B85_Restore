@interface ADSessionRemoteServerLimited
- (BOOL)_sessionRequiresConnection;
- (id)initOnQueue:(id)queue withAccount:(id)account languageCode:(id)code connectionMode:(id)mode sharedUserIdentifier:(id)identifier loggingSharedUserIdentifier:(id)userIdentifier instanceContext:(id)context;
- (void)_saCommandFailed:(id)failed;
- (void)_siriNetworkConnection:(id)connection didEncounterError:(id)error siriNetworkAnalysisInfo:(id)info;
- (void)_siriNetworkConnection:(id)connection didEncounterIntermediateError:(id)error;
@end

@implementation ADSessionRemoteServerLimited

- (BOOL)_sessionRequiresConnection
{
  sessionRequiresServerConnection = [(ADSession *)self sessionRequiresServerConnection];
  sessionRequiresSync = [(ADSession *)self sessionRequiresSync];
  if ((sessionRequiresServerConnection & 1) == 0 && sessionRequiresSync)
  {
    _requestId = [(ADSession *)self _requestId];
    sessionRequiresServerConnection = _requestId == 0;
  }

  return sessionRequiresServerConnection;
}

- (void)_siriNetworkConnection:(id)connection didEncounterIntermediateError:(id)error
{
  connectionCopy = connection;
  errorCopy = error;
  _sessionRequiresConnection = [(ADSessionRemoteServerLimited *)self _sessionRequiresConnection];
  v9 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v10 = @"not ";
    *buf = 136315650;
    v14 = "[ADSessionRemoteServerLimited _siriNetworkConnection:didEncounterIntermediateError:]";
    v15 = 2112;
    if (_sessionRequiresConnection)
    {
      v10 = &stru_10051F508;
    }

    v16 = v10;
    v17 = 2112;
    v18 = errorCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Server connection %@required for intermediate error %@", buf, 0x20u);
  }

  if (_sessionRequiresConnection)
  {
    v12.receiver = self;
    v12.super_class = ADSessionRemoteServerLimited;
    [(ADSessionRemoteServer *)&v12 _siriNetworkConnection:connectionCopy didEncounterIntermediateError:errorCopy];
  }

  else
  {
    v11 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v14 = "[ADSessionRemoteServerLimited _siriNetworkConnection:didEncounterIntermediateError:]";
      v15 = 2112;
      v16 = errorCopy;
      _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s Ignoring intermediate error %@ from server", buf, 0x16u);
    }
  }
}

- (void)_saCommandFailed:(id)failed
{
  failedCopy = failed;
  _sessionRequiresConnection = [(ADSessionRemoteServerLimited *)self _sessionRequiresConnection];
  v6 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v7 = @"not ";
    *buf = 136315650;
    v11 = "[ADSessionRemoteServerLimited _saCommandFailed:]";
    v12 = 2112;
    if (_sessionRequiresConnection)
    {
      v7 = &stru_10051F508;
    }

    v13 = v7;
    v14 = 2112;
    v15 = failedCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Server connection %@required for %@", buf, 0x20u);
  }

  if (_sessionRequiresConnection)
  {
    v9.receiver = self;
    v9.super_class = ADSessionRemoteServerLimited;
    [(ADSessionRemoteServer *)&v9 _saCommandFailed:failedCopy];
  }

  else
  {
    v8 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v11 = "[ADSessionRemoteServerLimited _saCommandFailed:]";
      v12 = 2112;
      v13 = failedCopy;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s Ignoring %@ from server", buf, 0x16u);
    }
  }
}

- (void)_siriNetworkConnection:(id)connection didEncounterError:(id)error siriNetworkAnalysisInfo:(id)info
{
  connectionCopy = connection;
  errorCopy = error;
  infoCopy = info;
  siriNetworkConnection = [(ADSessionRemoteServer *)self siriNetworkConnection];

  if (siriNetworkConnection != connectionCopy)
  {
    goto LABEL_12;
  }

  domain = [errorCopy domain];
  if (![domain isEqualToString:SiriNetworkNetworkConnectionErrorDomain])
  {

LABEL_11:
    v17.receiver = self;
    v17.super_class = ADSessionRemoteServerLimited;
    [(ADSessionRemoteServer *)&v17 _siriNetworkConnection:connectionCopy didEncounterError:errorCopy siriNetworkAnalysisInfo:infoCopy];
    goto LABEL_12;
  }

  code = [errorCopy code];

  if (code != 6)
  {
    goto LABEL_11;
  }

  _sessionRequiresConnection = [(ADSessionRemoteServerLimited *)self _sessionRequiresConnection];
  v15 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v16 = @"not ";
    if (_sessionRequiresConnection)
    {
      v16 = &stru_10051F508;
    }

    *buf = 136315394;
    v19 = "[ADSessionRemoteServerLimited _siriNetworkConnection:didEncounterError:siriNetworkAnalysisInfo:]";
    v20 = 2112;
    v21 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s Server connection %@required for connection open timeout", buf, 0x16u);
  }

  if (_sessionRequiresConnection)
  {
    goto LABEL_11;
  }

LABEL_12:
}

- (id)initOnQueue:(id)queue withAccount:(id)account languageCode:(id)code connectionMode:(id)mode sharedUserIdentifier:(id)identifier loggingSharedUserIdentifier:(id)userIdentifier instanceContext:(id)context
{
  v15.receiver = self;
  v15.super_class = ADSessionRemoteServerLimited;
  v9 = [(ADSessionRemoteServer *)&v15 initOnQueue:queue withAccount:account languageCode:code connectionMode:mode sharedUserIdentifier:identifier loggingSharedUserIdentifier:userIdentifier instanceContext:context];
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