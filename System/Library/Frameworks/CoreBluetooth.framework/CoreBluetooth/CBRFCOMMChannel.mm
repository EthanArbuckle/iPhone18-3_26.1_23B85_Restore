@interface CBRFCOMMChannel
- (CBRFCOMMChannel)initWithPeer:(id)a3 info:(id)a4;
- (id)description;
- (void)dealloc;
@end

@implementation CBRFCOMMChannel

- (CBRFCOMMChannel)initWithPeer:(id)a3 info:(id)a4
{
  v7 = a3;
  v8 = a4;
  v26.receiver = self;
  v26.super_class = CBRFCOMMChannel;
  v9 = [(CBRFCOMMChannel *)&v26 init];
  if (!v9)
  {
    goto LABEL_10;
  }

  v10 = [v8 objectForKey:@"kCBMsgArgRFCOMMChannelID"];
  v9->_channelID = [v10 intValue];

  objc_storeStrong(&v9->_peer, a3);
  v9->_socketFD = -1;
  v11 = [v8 objectForKey:@"kCBMsgArgMTU"];
  v9->_mtu = [v11 intValue];

  v12 = [v8 objectForKey:@"kCBMsgArgIsIncoming"];
  v9->_isIncoming = [v12 BOOLValue];

  v13 = [v8 objectForKey:@"kCBMsgArgServiceUUID"];
  if (v13)
  {
    v14 = [CBUUID UUIDWithData:v13];
    serviceUUID = v9->_serviceUUID;
    v9->_serviceUUID = v14;
  }

  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer handlePeerUpdated:];
  }

  v16 = CBLogComponent;
  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEBUG))
  {
    [(CBRFCOMMChannel *)&v9->_channelID initWithPeer:v9 info:v16];
  }

  v17 = [v8 objectForKeyedSubscript:@"kCBMsgArgSocket"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (CBLogInitOnce == -1)
    {
      v22 = CBLogComponent;
      if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
      {
LABEL_13:

        v21 = 0;
        goto LABEL_14;
      }
    }

    else
    {
      [CBClassicPeer handlePeerUpdated:];
      v22 = CBLogComponent;
      if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_13;
      }
    }

    [CBRFCOMMChannel initWithPeer:v22 info:?];
    goto LABEL_13;
  }

  v18 = [v8 objectForKeyedSubscript:@"kCBMsgArgSocket"];
  v9->_socketFD = [v18 intValue];

  v24 = 0;
  readStream = 0;
  CFStreamCreatePairWithSocket(*MEMORY[0x1E695E480], v9->_socketFD, &readStream, &v24);
  inputStream = v9->_inputStream;
  v9->_inputStream = readStream;

  outputStream = v9->_outputStream;
  v9->_outputStream = v24;

LABEL_10:
  v21 = v9;
LABEL_14:

  return v21;
}

- (void)dealloc
{
  socketFD = self->_socketFD;
  if ((socketFD & 0x80000000) == 0)
  {
    close(socketFD);
    self->_socketFD = -1;
  }

  if (self->_channelID)
  {
    [(CBClassicPeer *)self->_peer closeRFCOMMChannel:?];
  }

  v4.receiver = self;
  v4.super_class = CBRFCOMMChannel;
  [(CBRFCOMMChannel *)&v4 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  if (self->_isIncoming)
  {
    v5 = @"incoming";
  }

  else
  {
    v5 = @"outgoing";
  }

  return [v3 stringWithFormat:@"<%@: %p %@, CID: %u, MTU: %d, %@>", v4, self, self->_peer, self->_channelID, self->_mtu, v5];
}

- (void)initWithPeer:(os_log_t)log info:.cold.2(unsigned __int8 *a1, uint64_t a2, os_log_t log)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = *(a2 + 48);
  v6 = 136315650;
  v7 = "[CBRFCOMMChannel initWithPeer:info:]";
  v8 = 1024;
  v9 = v3;
  v10 = 2112;
  v11 = v4;
  _os_log_debug_impl(&dword_1C0AC1000, log, OS_LOG_TYPE_DEBUG, "%s CID: %u %@", &v6, 0x1Cu);
  v5 = *MEMORY[0x1E69E9840];
}

@end