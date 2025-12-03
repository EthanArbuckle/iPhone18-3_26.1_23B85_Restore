@interface VCDatagramChannelIDSEmulated
- (BOOL)writeToEmulatedNetworkWithDatagram:(const void *)datagram datagramSize:(unsigned int)size datagramInfo:(id)info options:(id *)options;
- (VCDatagramChannelIDSEmulated)initWithIDSDatagramChannel:(id)channel mode:(int64_t)mode;
- (int)start;
- (void)dealloc;
- (void)invalidate;
- (void)setupEmulatedNetwork;
- (void)writeDatagram:(const void *)datagram datagramSize:(unsigned int)size datagramInfo:(id)info options:(id *)options completionHandler:(id)handler;
- (void)writeDatagrams:(const void *)datagrams datagramsSize:(unsigned int *)size datagramsInfo:(id *)info datagramsCount:(int)count options:(id *)options completionHandler:(id)handler;
@end

@implementation VCDatagramChannelIDSEmulated

- (VCDatagramChannelIDSEmulated)initWithIDSDatagramChannel:(id)channel mode:(int64_t)mode
{
  v20 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = VCDatagramChannelIDSEmulated;
  v6 = [(VCObject *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_mode = mode;
    v6->_idsChannel = channel;
    v7->super._token = VCDatagramChannelIDS_Token(channel);
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v13 = v8;
        v14 = 2080;
        v15 = "[VCDatagramChannelIDSEmulated initWithIDSDatagramChannel:mode:]";
        v16 = 1024;
        v17 = 31;
        v18 = 2048;
        v19 = v7;
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCDatagramChannelIDSEmulated %p created", buf, 0x26u);
      }
    }
  }

  return v7;
}

- (void)dealloc
{
  v20 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      idsChannel = self->_idsChannel;
      network = self->_network;
      *buf = 136316418;
      v9 = v3;
      v10 = 2080;
      v11 = "[VCDatagramChannelIDSEmulated dealloc]";
      v12 = 1024;
      v13 = 37;
      v14 = 2048;
      selfCopy = self;
      v16 = 2048;
      v17 = idsChannel;
      v18 = 2048;
      v19 = network;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCDatagramChannelIDSEmulated %p dealloc called: _idsChannel %p, _network %p", buf, 0x3Au);
    }
  }

  [(VCDatagramChannelIDSEmulated *)self invalidate];

  self->_network = 0;
  v7.receiver = self;
  v7.super_class = VCDatagramChannelIDSEmulated;
  [(VCDatagramChannelIDS *)&v7 dealloc];
}

- (void)writeDatagram:(const void *)datagram datagramSize:(unsigned int)size datagramInfo:(id)info options:(id *)options completionHandler:(id)handler
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->_isStarted)
  {
    mode = self->_mode;
    if (mode == 1)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCDatagramChannelIDSEmulated writeDatagram:datagramSize:datagramInfo:options:completionHandler:];
        }
      }
    }

    else if (mode)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCDatagramChannelIDSEmulated writeDatagram:datagramSize:datagramInfo:options:completionHandler:];
        }
      }
    }

    else
    {

      [(VCDatagramChannelIDSEmulated *)self writeToEmulatedNetworkWithDatagram:datagram datagramSize:*&size datagramInfo:*&info.var0 options:*&info.var4, options, handler];
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315650;
      v11 = v8;
      v12 = 2080;
      v13 = "[VCDatagramChannelIDSEmulated writeDatagram:datagramSize:datagramInfo:options:completionHandler:]";
      v14 = 1024;
      v15 = 51;
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d The datagramChannel is not started!", &v10, 0x1Cu);
    }
  }
}

- (BOOL)writeToEmulatedNetworkWithDatagram:(const void *)datagram datagramSize:(unsigned int)size datagramInfo:(id)info options:(id *)options
{
  v6 = *&size;
  v23 = *MEMORY[0x1E69E9840];
  if (size < 0x5DD)
  {
    v9 = *&info.var4;
    v10 = *&info.var0;
    ++self->_packetCount;
    v12 = [[VCEmulatedPacket alloc] initWithPacketID:self->_packetCount datagram:datagram datagramSize:*&size];
    if (v12)
    {
      v13 = v12;
      memcpy(__dst, &unk_1DBD487C8, sizeof(__dst));
      [(VCEmulatedPacket *)v13 metadata];
      *__dst = v6;
      *&__dst[4] = v10;
      *&__dst[12] = v9;
      if (options)
      {
        v14 = *&options->var11;
        *&__dst[80] = *&options->var9;
        *&__dst[96] = v14;
        *&__dst[112] = *options->var13;
        *&__dst[128] = *&options->var14;
        v15 = *&options->var2;
        *&__dst[16] = *&options->var0;
        *&__dst[32] = v15;
        v16 = *&options->var8.var0;
        v17 = 1;
        *&__dst[48] = *&options->var5[6];
        *&__dst[64] = v16;
      }

      else
      {
        v17 = 0;
      }

      __dst[136] = v17;
      [(VCEmulatedPacket *)v13 setSize:v6];
      memcpy(v21, __dst, sizeof(v21));
      [(VCEmulatedPacket *)v13 setMetadata:v21];
      [(VCEmulatedPacket *)v13 setArrivalTime:micro()];
      v18 = 3;
      if (WORD1(v10) == 800)
      {
        v18 = 1;
      }

      if (WORD1(v10) == 700)
      {
        v19 = 2;
      }

      else
      {
        v19 = v18;
      }

      [(VCEmulatedPacket *)v13 setType:v19];
      [(VCEmulatedNetwork *)self->_network push:v13];

      LOBYTE(v7) = 1;
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_11;
      }

      VRTraceErrorLogLevelToCSTR();
      v7 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (v7)
      {
        [VCDatagramChannelIDSEmulated writeToEmulatedNetworkWithDatagram:datagramSize:datagramInfo:options:];
        goto LABEL_11;
      }
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
LABEL_11:
      LOBYTE(v7) = 0;
      return v7;
    }

    VRTraceErrorLogLevelToCSTR();
    v7 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (v7)
    {
      [VCDatagramChannelIDSEmulated writeToEmulatedNetworkWithDatagram:datagramSize:datagramInfo:options:];
      goto LABEL_11;
    }
  }

  return v7;
}

- (void)writeDatagrams:(const void *)datagrams datagramsSize:(unsigned int *)size datagramsInfo:(id *)info datagramsCount:(int)count options:(id *)options completionHandler:(id)handler
{
  v30 = *MEMORY[0x1E69E9840];
  if (self->_isStarted)
  {
    v9 = 216;
    mode = self->_mode;
    if (mode == 1)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCDatagramChannelIDSEmulated writeDatagrams:datagramsSize:datagramsInfo:datagramsCount:options:completionHandler:];
        }
      }
    }

    else if (mode)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCDatagramChannelIDSEmulated writeDatagrams:datagramsSize:datagramsInfo:datagramsCount:options:completionHandler:];
        }
      }
    }

    else if (count >= 1)
    {
      countCopy = count;
      p_var4 = &info->var4;
      do
      {
        v17 = *datagrams++;
        v16 = v17;
        LODWORD(v17) = *size++;
        v18 = v17;
        v20 = *options++;
        v19 = v20;
        v21 = *(p_var4 - 1);
        LODWORD(v20) = *p_var4;
        p_var4 += 10;
        v9 = v9 & 0xFFFFFFFFFFFF0000 | v20;
        [(VCDatagramChannelIDSEmulated *)self writeToEmulatedNetworkWithDatagram:v16 datagramSize:v18 datagramInfo:v21 options:v9, v19, handler];
        --countCopy;
      }

      while (countCopy);
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v22 = VRTraceErrorLogLevelToCSTR();
    v23 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v24 = 136315650;
      v25 = v22;
      v26 = 2080;
      v27 = "[VCDatagramChannelIDSEmulated writeDatagrams:datagramsSize:datagramsInfo:datagramsCount:options:completionHandler:]";
      v28 = 1024;
      v29 = 123;
      _os_log_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d The datagramChannel is not started!", &v24, 0x1Cu);
    }
  }
}

- (void)setupEmulatedNetwork
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v2 = 168;
  _os_log_error_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to obtain emulated network", v1, 0x1Cu);
}

void __52__VCDatagramChannelIDSEmulated_setupEmulatedNetwork__block_invoke(uint64_t a1, void *a2)
{
  if (a2 && VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      __52__VCDatagramChannelIDSEmulated_setupEmulatedNetwork__block_invoke_cold_1(v3, a2, v4);
    }
  }
}

uint64_t __52__VCDatagramChannelIDSEmulated_setupEmulatedNetwork__block_invoke_6(uint64_t result, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = result;
    memcpy(v7, &unk_1DBD487C8, sizeof(v7));
    [a2 metadata];
    result = [a2 isLost];
    if ((result & 1) == 0)
    {
      result = [a2 size];
      if (result == v7[0])
      {
        if (LOBYTE(v7[34]))
        {
          v4 = &v7[4];
        }

        else
        {
          v4 = 0;
        }

        v5 = *(*(v3 + 32) + 224);
        v6 = [a2 datagram];
        return [v5 writeDatagram:v6 datagramSize:v7[0] datagramInfo:*&v7[1] options:LOWORD(v7[3]) completionHandler:{v4, *(v3 + 40)}];
      }
    }
  }

  return result;
}

- (int)start
{
  [(VCObject *)self lock];
  if (self->_isStarted)
  {
    [(VCObject *)self unlock];
    return 0;
  }

  else
  {
    [+[VCNetworkSimulator sharedInstance](VCNetworkSimulator start];
    [(VCDatagramChannelIDSEmulated *)self setupEmulatedNetwork];
    self->_isStarted = 1;
    [(VCObject *)self unlock];
    idsChannel = self->_idsChannel;

    return [(VCDatagramChannelIDS *)idsChannel start];
  }
}

- (void)invalidate
{
  [(VCObject *)self lock];
  self->_isStarted = 0;
  [(VCObject *)self unlock];
  [(VCEmulatedNetwork *)self->_network setPopCompletionHandler:0];
  [+[VCNetworkSimulator sharedInstance](VCNetworkSimulator stop];
  [(VCDatagramChannelIDS *)self->_idsChannel invalidate];

  self->_idsChannel = 0;
}

- (void)writeDatagram:datagramSize:datagramInfo:options:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_8_6(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d Not supported yet for mode %d", v2, v3, v4, v5);
}

- (void)writeDatagram:datagramSize:datagramInfo:options:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_8_6(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d unknown mode %d", v2, v3, v4, v5);
}

- (void)writeToEmulatedNetworkWithDatagram:datagramSize:datagramInfo:options:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v2 = 81;
  _os_log_error_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_ERROR, " [%s] %s:%d Cannot create VCEmulatedPacket!", v1, 0x1Cu);
}

- (void)writeToEmulatedNetworkWithDatagram:datagramSize:datagramInfo:options:.cold.2()
{
  OUTLINED_FUNCTION_5();
  *&v4[4] = v0;
  *&v4[6] = "[VCDatagramChannelIDSEmulated writeToEmulatedNetworkWithDatagram:datagramSize:datagramInfo:options:]";
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d datagram size too large %d", v3, *v4, "[VCDatagramChannelIDSEmulated writeToEmulatedNetworkWithDatagram:datagramSize:datagramInfo:options:]" >> 16, 72);
}

- (void)writeDatagrams:datagramsSize:datagramsInfo:datagramsCount:options:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_8_6(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d Not supported yet for mode %d", v2, v3, v4, v5);
}

- (void)writeDatagrams:datagramsSize:datagramsInfo:datagramsCount:options:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_8_6(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d unknown mode %d", v2, v3, v4, v5);
}

void __52__VCDatagramChannelIDSEmulated_setupEmulatedNetwork__block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  [objc_msgSend(a2 "description")];
  v7 = 136315906;
  v8 = a1;
  v9 = 2080;
  OUTLINED_FUNCTION_7();
  v10 = 174;
  v11 = v5;
  v12 = v6;
  _os_log_error_impl(&dword_1DB56E000, a3, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to write to ids datagram channel with error %s", &v7, 0x26u);
}

@end