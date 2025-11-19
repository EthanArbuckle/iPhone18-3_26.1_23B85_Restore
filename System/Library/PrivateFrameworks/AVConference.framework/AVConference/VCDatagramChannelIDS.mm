@interface VCDatagramChannelIDS
- (VCDatagramChannelIDS)initWithDestination:(id)a3 token:(unsigned int)a4 dataPath:(int)a5 error:(id *)a6;
- (VCDatagramChannelIDS)initWithSocketDescriptor:(int)a3 token:(unsigned int)a4 error:(id *)a5;
- (id)VTPConnectionContext;
- (id)datagramChannelOptions;
- (id)datagramChannelWithDestination:(id)a3 error:(id *)a4;
- (id)sharedIDSService;
- (int)setupVTPSocketWithFileDescriptor:(int)a3;
- (int)start;
- (void)dealloc;
- (void)invalidate;
- (void)osChannelInfoLog;
- (void)setEventHandler:(id)a3;
@end

@implementation VCDatagramChannelIDS

- (id)sharedIDSService
{
  if (sharedIDSService_onceToken != -1)
  {
    [VCDatagramChannelIDS sharedIDSService];
  }

  return sharedIDSService_service;
}

uint64_t __40__VCDatagramChannelIDS_sharedIDSService__block_invoke()
{
  result = [objc_alloc(MEMORY[0x1E69A48A8]) initWithService:@"com.apple.private.alloy.avconference.icloud"];
  sharedIDSService_service = result;
  return result;
}

- (VCDatagramChannelIDS)initWithDestination:(id)a3 token:(unsigned int)a4 dataPath:(int)a5 error:(id *)a6
{
  v15 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = VCDatagramChannelIDS;
  v10 = [(VCObject *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v10->_dataPath = a5;
    v12 = [(VCDatagramChannelIDS *)v10 datagramChannelWithDestination:a3 error:a6];
    v11->_idsChannel = v12;
    if (v12)
    {
      v11->_destination = [a3 copy];
      v11->_token = a4;
      v11->_vtpSocket = -1;
    }

    else
    {

      return 0;
    }
  }

  return v11;
}

- (id)VTPConnectionContext
{
  +[VCVTPWrapper targetQueue];

  return +[VCVTPWrapper connectionContext];
}

- (id)datagramChannelOptions
{
  v9[2] = *MEMORY[0x1E69E9840];
  v3 = self->_dataPath == 1;
  v4 = MEMORY[0x1E695DF90];
  v8[0] = *MEMORY[0x1E69A4B40];
  v9[0] = [MEMORY[0x1E696AD98] numberWithInteger:v3];
  v8[1] = *MEMORY[0x1E69A4B48];
  v9[1] = [MEMORY[0x1E696AD98] numberWithInteger:v3];
  v5 = [v4 dictionaryWithDictionary:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v9, v8, 2)}];
  v6 = [(VCDatagramChannelIDS *)self VTPConnectionContext];
  [v5 setObject:v6 forKeyedSubscript:*MEMORY[0x1E69A4B38]];
  return v5;
}

- (id)datagramChannelWithDestination:(id)a3 error:(id *)a4
{
  v18 = *MEMORY[0x1E69E9840];
  if ([a3 hasPrefix:@"loopback:"])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315650;
        v13 = v7;
        v14 = 2080;
        v15 = "[VCDatagramChannelIDS datagramChannelWithDestination:error:]";
        v16 = 1024;
        v17 = 106;
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Unit Test: Using VCMockIDSDatagramChannel instead of IDSDatagramChannel", &v12, 0x1Cu);
      }
    }

    return [+[VCMockIDSDatagramChannelController sharedInstance](VCMockIDSDatagramChannelController datagramChannelWithDestination:"datagramChannelWithDestination:dataPath:" dataPath:a3, self->_dataPath];
  }

  else
  {
    v10 = [(VCDatagramChannelIDS *)self sharedIDSService];
    v11 = [(VCDatagramChannelIDS *)self datagramChannelOptions];

    return [v10 datagramChannelForSessionDestination:a3 options:v11 error:a4];
  }
}

- (VCDatagramChannelIDS)initWithSocketDescriptor:(int)a3 token:(unsigned int)a4 error:(id *)a5
{
  v7 = *&a3;
  v13 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = VCDatagramChannelIDS;
  v8 = [(VCObject *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v10 = [-[VCDatagramChannelIDS sharedIDSService](v8 "sharedIDSService")];
    v9->_idsChannel = v10;
    if (v10)
    {
      v9->_token = a4;
      v9->_vtpSocket = -1;
    }

    else
    {

      return 0;
    }
  }

  return v9;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  eventHandler = self->_eventHandler;
  if (eventHandler)
  {
    _Block_release(eventHandler);
  }

  [(VCDatagramChannelIDS *)self invalidate];

  v4.receiver = self;
  v4.super_class = VCDatagramChannelIDS;
  [(VCObject *)&v4 dealloc];
}

- (void)setEventHandler:(id)a3
{
  eventHandler = self->_eventHandler;
  if (eventHandler)
  {
    _Block_release(eventHandler);
  }

  if (a3)
  {
    v6 = _Block_copy(a3);
  }

  else
  {
    v6 = 0;
  }

  self->_eventHandler = v6;
  idsChannel = self->_idsChannel;

  [(IDSDatagramChannel *)idsChannel setEventHandler:a3];
}

- (void)osChannelInfoLog
{
  [(VCObject *)self lock];
  [(IDSDatagramChannel *)self->_idsChannel osChannelInfoLog];

  [(VCObject *)self unlock];
}

- (void)invalidate
{
  vtpSocket = self->_vtpSocket;
  if (vtpSocket != -1)
  {
    VTP_Close(vtpSocket);
    self->_vtpSocket = -1;
  }

  [(VCObject *)self lock];
  [(IDSDatagramChannel *)self->_idsChannel invalidate];

  self->_idsChannel = 0;

  [(VCObject *)self unlock];
}

- (int)start
{
  v18 = *MEMORY[0x1E69E9840];
  dataPath = self->_dataPath;
  if (dataPath == 1)
  {
    v6 = [(VCDatagramChannelIDS *)self setupVTPSocketWithFileDescriptor:4294967294];
    if (!v6)
    {
      [(IDSDatagramChannel *)self->_idsChannel start];
    }

    return v6;
  }

  if (dataPath)
  {
    v6 = -2144600048;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v9 = self->_dataPath;
        v10 = 136315906;
        v11 = v7;
        v12 = 2080;
        v13 = "[VCDatagramChannelIDS start]";
        v14 = 1024;
        v15 = 239;
        v16 = 1024;
        v17 = v9;
        _os_log_error_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_ERROR, " [%s] %s:%d Can not start VCDatagramChannel due to invalid dataPath value=%d", &v10, 0x22u);
      }
    }

    return v6;
  }

  v4 = [(IDSDatagramChannel *)self->_idsChannel underlyingFileDescriptor];

  return [(VCDatagramChannelIDS *)self setupVTPSocketWithFileDescriptor:v4];
}

- (int)setupVTPSocketWithFileDescriptor:(int)a3
{
  if (self->_vtpSocket != -1)
  {
    return 0;
  }

  v4 = VTP_SocketForIDSWithFileDescriptor(a3, self->_token);
  self->_vtpSocket = v4;
  if (v4 != -1)
  {
    return 0;
  }

  v6 = __error();
  return VCSignalErrorAt(*v6 | 0xC02E0000, "Signalled error at %s: Failed to create VTP socket", v7, v8, v9, v10, v11, v12, "[VCDatagramChannelIDS setupVTPSocketWithFileDescriptor:]");
}

@end