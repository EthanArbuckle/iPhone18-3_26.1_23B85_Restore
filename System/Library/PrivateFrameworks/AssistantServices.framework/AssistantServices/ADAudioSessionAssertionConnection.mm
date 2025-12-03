@interface ADAudioSessionAssertionConnection
- (ADAudioSessionAssertionConnection)initWithXPCConnection:(id)connection;
- (NSString)description;
- (void)_clearXPCConnection;
- (void)_finalizeWithContext:(id)context error:(id)error;
- (void)_relinquishAssertionWithContext:(id)context error:(id)error options:(unint64_t)options;
- (void)acquireAudioSessionWithContext:(id)context relinquishmentHandler:(id)handler;
- (void)dealloc;
- (void)invalidate;
- (void)relinquishAudioSessionWithContext:(id)context error:(id)error options:(unint64_t)options completion:(id)completion;
@end

@implementation ADAudioSessionAssertionConnection

- (void)_clearXPCConnection
{
  xpcConnection = self->_xpcConnection;
  if (xpcConnection)
  {
    v4 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      processIdentifier = self->_processIdentifier;
      v7 = 136315906;
      v8 = "[ADAudioSessionAssertionConnection _clearXPCConnection]";
      v9 = 2048;
      selfCopy = self;
      v11 = 1024;
      v12 = processIdentifier;
      v13 = 2112;
      v14 = xpcConnection;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s %p (pid = %d) xpcConnection = %@", &v7, 0x26u);
      xpcConnection = self->_xpcConnection;
    }

    [(NSXPCConnection *)xpcConnection setExportedObject:0];
    [(NSXPCConnection *)self->_xpcConnection invalidate];
    v6 = self->_xpcConnection;
    self->_xpcConnection = 0;
  }
}

- (void)_relinquishAssertionWithContext:(id)context error:(id)error options:(unint64_t)options
{
  contextCopy = context;
  errorCopy = error;
  assertion = self->_assertion;
  if (assertion)
  {
    v11 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      processIdentifier = self->_processIdentifier;
      v14 = 136315906;
      v15 = "[ADAudioSessionAssertionConnection _relinquishAssertionWithContext:error:options:]";
      v16 = 2048;
      selfCopy = self;
      v18 = 1024;
      v19 = processIdentifier;
      v20 = 2112;
      v21 = assertion;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s %p (pid = %d) assertion = %@", &v14, 0x26u);
      assertion = self->_assertion;
    }

    if (errorCopy)
    {
      [(AFRelinquishableAssertion *)assertion relinquishWithError:errorCopy options:options];
    }

    else
    {
      [(AFRelinquishableAssertion *)assertion relinquishWithContext:contextCopy options:options];
    }

    v13 = self->_assertion;
    self->_assertion = 0;
  }
}

- (void)_finalizeWithContext:(id)context error:(id)error
{
  contextCopy = context;
  errorCopy = error;
  if ([(AFTwoArgumentSafetyBlock *)self->_relinquishmentHandler invokeWithValue:contextCopy andValue:errorCopy])
  {
    v8 = AFSiriLogContextDaemon;
    if (errorCopy)
    {
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        processIdentifier = self->_processIdentifier;
        v11 = 136315906;
        v12 = "[ADAudioSessionAssertionConnection _finalizeWithContext:error:]";
        v13 = 2048;
        selfCopy2 = self;
        v15 = 1024;
        v16 = processIdentifier;
        v17 = 2112;
        v18 = errorCopy;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s %p (pid = %d) error = %@", &v11, 0x26u);
      }
    }

    else if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v10 = self->_processIdentifier;
      v11 = 136315906;
      v12 = "[ADAudioSessionAssertionConnection _finalizeWithContext:error:]";
      v13 = 2048;
      selfCopy2 = self;
      v15 = 1024;
      v16 = v10;
      v17 = 2112;
      v18 = contextCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s %p (pid = %d) context = %@", &v11, 0x26u);
    }
  }

  [(ADAudioSessionAssertionConnection *)self _clearXPCConnection];
}

- (void)invalidate
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    processIdentifier = self->_processIdentifier;
    *buf = 136315650;
    v8 = "[ADAudioSessionAssertionConnection invalidate]";
    v9 = 2048;
    selfCopy = self;
    v11 = 1024;
    v12 = processIdentifier;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s %p (pid = %d)", buf, 0x1Cu);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100124AF0;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)relinquishAudioSessionWithContext:(id)context error:(id)error options:(unint64_t)options completion:(id)completion
{
  contextCopy = context;
  errorCopy = error;
  completionCopy = completion;
  v13 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    processIdentifier = self->_processIdentifier;
    v15 = v13;
    v16 = AFAssertionRelinquishmentOptionsGetNames();
    *buf = 136316418;
    v27 = "[ADAudioSessionAssertionConnection relinquishAudioSessionWithContext:error:options:completion:]";
    v28 = 2048;
    selfCopy = self;
    v30 = 1024;
    v31 = processIdentifier;
    v32 = 2112;
    v33 = contextCopy;
    v34 = 2112;
    v35 = errorCopy;
    v36 = 2112;
    v37 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s %p (pid = %d) context = %@, error = %@, options = %@", buf, 0x3Au);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100124D7C;
  block[3] = &unk_1005194E0;
  block[4] = self;
  v22 = contextCopy;
  v24 = completionCopy;
  optionsCopy = options;
  v23 = errorCopy;
  v18 = completionCopy;
  v19 = errorCopy;
  v20 = contextCopy;
  dispatch_async(queue, block);
}

- (void)acquireAudioSessionWithContext:(id)context relinquishmentHandler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    processIdentifier = self->_processIdentifier;
    *buf = 136315906;
    v17 = "[ADAudioSessionAssertionConnection acquireAudioSessionWithContext:relinquishmentHandler:]";
    v18 = 2048;
    selfCopy = self;
    v20 = 1024;
    v21 = processIdentifier;
    v22 = 2112;
    v23 = contextCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s %p (pid = %d) context = %@", buf, 0x26u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100124FE0;
  block[3] = &unk_10051E088;
  v14 = contextCopy;
  v15 = handlerCopy;
  block[4] = self;
  v11 = contextCopy;
  v12 = handlerCopy;
  dispatch_async(queue, block);
}

- (void)dealloc
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    processIdentifier = self->_processIdentifier;
    *buf = 136315650;
    v9 = "[ADAudioSessionAssertionConnection dealloc]";
    v10 = 2048;
    selfCopy = self;
    v12 = 1024;
    v13 = processIdentifier;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s %p (pid = %d)", buf, 0x1Cu);
  }

  v5 = [[NSString alloc] initWithFormat:@"%@ Deallocated", self];
  v6 = [AFError errorWithCode:41 description:v5];

  [(ADAudioSessionAssertionConnection *)self _relinquishAssertionWithContext:0 error:v6 options:0];
  [(ADAudioSessionAssertionConnection *)self _finalizeWithContext:0 error:v6];

  v7.receiver = self;
  v7.super_class = ADAudioSessionAssertionConnection;
  [(ADAudioSessionAssertionConnection *)&v7 dealloc];
}

- (NSString)description
{
  v3 = [NSString alloc];
  v7.receiver = self;
  v7.super_class = ADAudioSessionAssertionConnection;
  v4 = [(ADAudioSessionAssertionConnection *)&v7 description];
  v5 = [v3 initWithFormat:@"%@ {pid = %d}", v4, self->_processIdentifier];

  return v5;
}

- (ADAudioSessionAssertionConnection)initWithXPCConnection:(id)connection
{
  connectionCopy = connection;
  v15.receiver = self;
  v15.super_class = ADAudioSessionAssertionConnection;
  v6 = [(ADAudioSessionAssertionConnection *)&v15 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_USER_INITIATED, 0);
    v9 = AFAudioSessionAssertionGetConnectionWorkloop();
    v10 = dispatch_queue_create_with_target_V2("com.apple.assistant.audio-session-assertion.server-connection", v8, v9);
    queue = v6->_queue;
    v6->_queue = v10;

    v6->_processIdentifier = [connectionCopy processIdentifier];
    objc_storeStrong(&v6->_xpcConnection, connection);
    [(NSXPCConnection *)v6->_xpcConnection _setQueue:v6->_queue];
    v12 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      processIdentifier = v6->_processIdentifier;
      *buf = 136315650;
      v17 = "[ADAudioSessionAssertionConnection initWithXPCConnection:]";
      v18 = 2048;
      v19 = v6;
      v20 = 1024;
      v21 = processIdentifier;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s %p (pid = %d)", buf, 0x1Cu);
    }
  }

  return v6;
}

@end