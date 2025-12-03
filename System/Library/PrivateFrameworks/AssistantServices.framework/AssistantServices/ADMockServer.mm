@interface ADMockServer
+ (id)sharedServer;
- (BOOL)_establishConnectionIfNeeded;
- (void)replayWithFileURL:(id)l completion:(id)completion;
@end

@implementation ADMockServer

- (void)replayWithFileURL:(id)l completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  v18 = 0;
  v8 = [lCopy checkResourceIsReachableAndReturnError:&v18];
  v9 = v18;
  if (v8)
  {
    if (_AFPreferencesAuthenticationDisabled())
    {
      if ([(ADMockServer *)self _establishConnectionIfNeeded])
      {
        remoteProxy = self->_remoteProxy;
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_1000A0E34;
        v16[3] = &unk_10051D2F0;
        v17 = completionCopy;
        [(AMSMockServerProtocol *)remoteProxy startMockServerWithReplayFile:lCopy withReply:v16];

        goto LABEL_10;
      }

      v25 = NSDebugDescriptionErrorKey;
      v26 = @"mock server connection not available";
      v12 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      v13 = kAFAssistantErrorDomain;
      v14 = 2301;
    }

    else
    {
      v23 = NSDebugDescriptionErrorKey;
      v24 = @"mock server requires mobile default com.apple.assistant 'Authentication Disabled' set to YES";
      v12 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      v13 = kAFAssistantErrorDomain;
      v14 = 2300;
    }

    v15 = [NSError errorWithDomain:v13 code:v14 userInfo:v12];

    v9 = v15;
    goto LABEL_10;
  }

  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v20 = "[ADMockServer replayWithFileURL:completion:]";
    v21 = 2112;
    v22 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s Cannot play MockServer replay file at: %@", buf, 0x16u);
  }

LABEL_10:
  if (completionCopy && v9)
  {
    (*(completionCopy + 2))(completionCopy, v9);
  }
}

- (BOOL)_establishConnectionIfNeeded
{
  if (!self->_connection)
  {
    v3 = [[NSXPCConnection alloc] initWithServiceName:@"com.apple.siri.MockServer"];
    connection = self->_connection;
    self->_connection = v3;

    v5 = self->_connection;
    v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___AMSMockServerProtocol];
    [(NSXPCConnection *)v5 setRemoteObjectInterface:v6];

    [(NSXPCConnection *)self->_connection resume];
    v7 = self->_connection;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000A0F50;
    v11[3] = &unk_10051C498;
    v11[4] = self;
    v8 = [(NSXPCConnection *)v7 remoteObjectProxyWithErrorHandler:v11];
    remoteProxy = self->_remoteProxy;
    self->_remoteProxy = v8;
  }

  return self->_remoteProxy != 0;
}

+ (id)sharedServer
{
  if (qword_10058FF40 != -1)
  {
    dispatch_once(&qword_10058FF40, &stru_100510188);
  }

  v3 = qword_10058FF48;

  return v3;
}

@end