@interface LoopbackSocketTunnel
- (LoopbackSocketTunnel)initWithPort:(unsigned __int16)a3 delegate:(id)a4 error:(id *)a5;
- (int)sendPacketToVTP:(id)a3;
- (int)serverLoopProc;
- (void)setVTPIP:(tagIPPORT *)a3;
@end

@implementation LoopbackSocketTunnel

- (LoopbackSocketTunnel)initWithPort:(unsigned __int16)a3 delegate:(id)a4 error:(id *)a5
{
  v7 = a3;
  keys[2] = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = LoopbackSocketTunnel;
  v8 = [(LoopbackSocketTunnel *)&v18 init];
  v9 = v8;
  if (v8)
  {
    v8->_port = v7;
    v10 = socket(2, 2, 17);
    *&v9->sa.sin_len = 0;
    v9->sockFD = v10;
    v9->foundVTPIP = 0;
    *v9->sa.sin_zero = 0;
    *&v9->sa.sin_len = 528;
    inet_aton("127.0.0.1", &v9->sa.sin_addr);
    if (v7 > 0xFDE7)
    {
      if (v7 != 65000)
      {
        v16 = v9;
        return 0;
      }
    }

    else
    {
      do
      {
        v9->sa.sin_port = bswap32(v7) >> 16;
        if (!bind(v9->sockFD, &v9->sa, 0x10u))
        {
          break;
        }
      }

      while (v7++ < 0xFDE7u);
    }

    v9->_delegate = a4;
    v12 = *MEMORY[0x1E69631F8];
    keys[0] = *MEMORY[0x1E69631F0];
    keys[1] = v12;
    v13 = *MEMORY[0x1E695E4C0];
    values[0] = @"com.apple.AVConference.LoopbackSocketTunnel.ReceiveProc";
    values[1] = v13;
    v14 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v15 = FigThreadCreate();
    if (v14)
    {
      CFRelease(v14);
    }

    if (v15)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 2)
      {
        VRTraceErrorLogLevelToCSTR();
        if (VRTraceIsOSFaultDisabled())
        {
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [LoopbackSocketTunnel initWithPort:delegate:error:];
          }
        }

        else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
        {
          [LoopbackSocketTunnel initWithPort:delegate:error:];
        }
      }

      [GKVoiceChatError getNSError:a5 code:32002 detailedCode:1 returnCode:v15 filePath:0 description:@"LoopbackSocketTunnel init failed" reason:@"FigThreadCreate failed"];
      close(v9->sockFD);

      return 0;
    }
  }

  return v9;
}

- (int)sendPacketToVTP:(id)a3
{
  if (!self->foundVTPIP)
  {
    return -1;
  }

  v3 = sendto(self->sockFD, [a3 bytes], objc_msgSend(a3, "length"), 0, &self->vtpSA, 0x10u);
  kdebug_trace();
  return v3;
}

- (void)setVTPIP:(tagIPPORT *)a3
{
  v13 = *MEMORY[0x1E69E9840];
  *&self->vtpSA.sin_len = 0;
  *self->vtpSA.sin_zero = 0;
  self->foundVTPIP = 1;
  IPPORTToSA();
  IPPORTToStringWithSize();
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v6 = v3;
      v7 = 2080;
      v8 = "[LoopbackSocketTunnel setVTPIP:]";
      v9 = 1024;
      v10 = 117;
      v11 = 2080;
      v12 = &setVTPIP__ip;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d vtpIP = %s", buf, 0x26u);
    }
  }
}

- (int)serverLoopProc
{
  v9[7] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  memset(&v9[4], 170, 24);
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v9 = v4;
  *&v9[2] = v4;
  for (i = malloc_type_malloc(0x5DCuLL, 0x100004077774924uLL); ; -[LoopbackSocketTunnelDelegate loopbackSocketTunnel:receivedData:from:](self->_delegate, "loopbackSocketTunnel:receivedData:from:", self, [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:i length:v6 & 0x7FFFFFFF freeWhenDone:0], v9))
  {
    v8 = 16;
    v6 = recvfrom(self->sockFD, i, 0x5DCuLL, 0, &v9[5], &v8);
    SAToIPPORT();
    kdebug_trace();
    if (v6 < 1)
    {
      break;
    }
  }

  free(i);

  return 0;
}

- (void)initWithPort:delegate:error:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_3();
  _os_log_fault_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_FAULT, " [%s] %s:%d FigThreadCreate(LoopbackTunnelReceiveProc) failed %d", v1, 0x22u);
}

- (void)initWithPort:delegate:error:.cold.2()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_ERROR, " [%s] %s:%d FigThreadCreate(LoopbackTunnelReceiveProc) failed %d", v1, 0x22u);
}

@end