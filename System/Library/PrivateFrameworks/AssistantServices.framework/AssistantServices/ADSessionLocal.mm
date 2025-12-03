@interface ADSessionLocal
- (BOOL)_commandRequiresSync:(id)sync;
- (BOOL)sessionRequiresSync;
- (id)initOnQueue:(id)queue withAccount:(id)account config:(id *)config;
- (void)_saCommandFailed:(id)failed;
- (void)_sendServerCommand:(id)command;
- (void)_siriNetworkConnection:(id)connection didEncounterError:(id)error siriNetworkAnalysisInfo:(id)info;
- (void)_siriNetworkConnection:(id)connection didEncounterIntermediateError:(id)error;
- (void)_startSession;
- (void)sendCommand:(id)command opportunistically:(BOOL)opportunistically;
- (void)sendCommands:(id)commands;
- (void)setHasActiveRequest:(BOOL)request;
@end

@implementation ADSessionLocal

- (BOOL)sessionRequiresSync
{
  v2 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315138;
    v5 = "[ADSessionLocal sessionRequiresSync]";
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s ", &v4, 0xCu);
  }

  return 0;
}

- (BOOL)_commandRequiresSync:(id)sync
{
  v3 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315138;
    v6 = "[ADSessionLocal _commandRequiresSync:]";
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s ", &v5, 0xCu);
  }

  return 0;
}

- (void)_siriNetworkConnection:(id)connection didEncounterIntermediateError:(id)error
{
  v4 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315138;
    v6 = "[ADSessionLocal _siriNetworkConnection:didEncounterIntermediateError:]";
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s Local session cannot handle connection errors", &v5, 0xCu);
  }
}

- (void)_saCommandFailed:(id)failed
{
  failedCopy = failed;
  v5 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v8 = "[ADSessionLocal _saCommandFailed:]";
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s Unexpected call - local session cannot handle failed commands", buf, 0xCu);
  }

  v6.receiver = self;
  v6.super_class = ADSessionLocal;
  [(ADSessionLocal *)&v6 _saCommandFailed:failedCopy];
}

- (void)_siriNetworkConnection:(id)connection didEncounterError:(id)error siriNetworkAnalysisInfo:(id)info
{
  v5 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315138;
    v7 = "[ADSessionLocal _siriNetworkConnection:didEncounterError:siriNetworkAnalysisInfo:]";
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s Local session cannot handle connection errors", &v6, 0xCu);
  }
}

- (void)setHasActiveRequest:(BOOL)request
{
  requestCopy = request;
  hasActiveRequest = self->_hasActiveRequest;
  if (hasActiveRequest != request)
  {
    v6 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_DEBUG))
    {
      v11 = 136315650;
      v12 = "[ADSessionLocal setHasActiveRequest:]";
      v13 = 1024;
      *v14 = hasActiveRequest;
      *&v14[4] = 1024;
      *&v14[6] = requestCopy;
      _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%s current {_hasActiveRequest: %d, new _hasActiveRequest: %d}", &v11, 0x18u);
    }

    self->_hasActiveRequest = requestCopy;
    if (requestCopy)
    {
      [(ADSession *)self setDormant:0];
      [(ADSession *)self _setRequestId:0];
    }

    [(ADSession *)self setCanHandleRequest:1];
  }

  if (!requestCopy)
  {
    v7 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_DEBUG))
    {
      v8 = v7;
      _sendBuffer = [(ADSession *)self _sendBuffer];
      v10 = [_sendBuffer count];
      v11 = 136315394;
      v12 = "[ADSessionLocal setHasActiveRequest:]";
      v13 = 2048;
      *v14 = v10;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s Clearing send buffer (size: %lu}", &v11, 0x16u);
    }

    [(ADSession *)self _clearSendBuffer];
  }
}

- (void)_sendServerCommand:(id)command
{
  v3 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315138;
    v5 = "[ADSessionLocal _sendServerCommand:]";
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s Ignoring _sendServerCommand for local session", &v4, 0xCu);
  }
}

- (void)sendCommand:(id)command opportunistically:(BOOL)opportunistically
{
  commandCopy = command;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objc_alloc_init(SACommandSucceeded);
    v6 = +[NSUUID UUID];
    uUIDString = [v6 UUIDString];
    [v5 setAceId:uUIDString];

    aceId = [commandCopy aceId];
    [v5 setRefId:aceId];

    v9 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_DEBUG))
    {
      v12 = 136315394;
      v13 = "[ADSessionLocal sendCommand:opportunistically:]";
      v14 = 2112;
      v15 = v5;
      _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s Sending SACommandSucceeded for local session %@", &v12, 0x16u);
    }

    v10 = +[ADCommandCenter sharedCommandCenter];
    [v10 handleCommand:v5 completion:0];
  }

  else
  {
    v11 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_DEBUG))
    {
      v12 = 136315138;
      v13 = "[ADSessionLocal sendCommand:opportunistically:]";
      _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s Ignoring sendCommand for local session", &v12, 0xCu);
    }
  }
}

- (void)sendCommands:(id)commands
{
  v3 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315138;
    v5 = "[ADSessionLocal sendCommands:]";
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s Ignoring sendCommands for local session", &v4, 0xCu);
  }
}

- (void)_startSession
{
  v3 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315138;
    v6 = "[ADSessionLocal _startSession]";
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s ", &v5, 0xCu);
  }

  delegate = [(ADSession *)self delegate];
  [delegate assistantSessionWillStartConnection:self];
}

- (id)initOnQueue:(id)queue withAccount:(id)account config:(id *)config
{
  queueCopy = queue;
  accountCopy = account;
  v10 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v21 = "[ADSessionLocal initOnQueue:withAccount:config:]";
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
    if (!config)
    {
      goto LABEL_5;
    }
  }

  else if (!config)
  {
LABEL_5:

    goto LABEL_6;
  }

  var0 = config->var0;
  var2 = config->var2;
  var3 = config->var3;
  var4 = config->var4;
  v19.receiver = self;
  v19.super_class = ADSessionLocal;
  v15 = [(ADSession *)&v19 initOnQueue:queueCopy withAccount:accountCopy languageCode:var0 connectionMode:0 sharedUserIdentifier:var2 loggingSharedUserIdentifier:var3 instanceContext:var4];
  config = v15;
  if (v15)
  {
    [($475D18A0C013DEA4C77274343E9ED385 *)v15 setSessionType:2];
    v16 = [NSString alloc];
    self = [NSNumber numberWithUnsignedInt:arc4random()];
    v17 = [v16 initWithFormat:@"%@.%@", &off_100533848, self];
    [($475D18A0C013DEA4C77274343E9ED385 *)config _setSessionId:v17];

    goto LABEL_5;
  }

LABEL_6:

  return config;
}

@end