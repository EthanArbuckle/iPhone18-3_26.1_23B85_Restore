@interface VCMockIDSDatagramChannelSocket
- (id)initRequiresOptions:(BOOL)a3 localIP:(id)a4 localPort:(signed __int16)a5 remoteIP:(id)a6 remotePort:(signed __int16)a7;
- (int)readyToRead;
- (void)dealloc;
- (void)readyToRead;
- (void)setAllSubscribedStreamIDsOnOptions:(id *)a3;
- (void)writeDatagram:(const void *)a3 datagramSize:(unsigned int)a4;
- (void)writeDatagram:(const void *)a3 datagramSize:(unsigned int)a4 datagramInfo:(id)a5 options:(id *)a6 completionHandler:(id)a7;
- (void)writeDatagrams:(const void *)a3 datagramsSize:(unsigned int *)a4 datagramsInfo:(id *)a5 datagramsCount:(int)a6 options:(id *)a7 completionHandler:(id)a8;
@end

@implementation VCMockIDSDatagramChannelSocket

- (id)initRequiresOptions:(BOOL)a3 localIP:(id)a4 localPort:(signed __int16)a5 remoteIP:(id)a6 remotePort:(signed __int16)a7
{
  v7 = a7;
  v9 = a5;
  v30 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = VCMockIDSDatagramChannelSocket;
  v11 = [(VCMockIDSDatagramChannel *)&v16 initRequiresOptions:a3];
  if (!v11)
  {
    return v11;
  }

  *(v11 + 3322388) = VCDefaults_GetBoolValueForKey(@"twoWayFaceTimeTestUsingSocketsEnabled", 0);
  if (!a4)
  {
    [VCMockIDSDatagramChannelSocket initRequiresOptions:v11 localIP:? localPort:? remoteIP:? remotePort:?];
    return *buf;
  }

  if (!a6)
  {
    [VCMockIDSDatagramChannelSocket initRequiresOptions:v11 localIP:? localPort:? remoteIP:? remotePort:?];
    return *buf;
  }

  if (!v9)
  {
    [VCMockIDSDatagramChannelSocket initRequiresOptions:v11 localIP:? localPort:? remoteIP:? remotePort:?];
    return *buf;
  }

  if (!v7)
  {
    [VCMockIDSDatagramChannelSocket initRequiresOptions:v11 localIP:? localPort:? remoteIP:? remotePort:?];
    return *buf;
  }

  v12 = [NetworkUtils socketWithIPAddress:a4 srcPort:v9 shouldConnect:0 error:0];
  *(v11 + 8) = v12;
  if (v12 == -1)
  {
    [VCMockIDSDatagramChannelSocket initRequiresOptions:v11 localIP:? localPort:? remoteIP:? remotePort:?];
    return *buf;
  }

  *(v11 + 3322357) = 2;
  *(v11 + 830590) = inet_addr([a6 UTF8String]);
  *(v11 + 1661179) = bswap32(v7) >> 16;
  *(v11 + 3322373) = 2;
  *(v11 + 830594) = inet_addr([a4 UTF8String]);
  *(v11 + 1661187) = bswap32(v9) >> 16;
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316674;
      *&buf[4] = v13;
      v18 = 2080;
      v19 = "[VCMockIDSDatagramChannelSocket initRequiresOptions:localIP:localPort:remoteIP:remotePort:]";
      v20 = 1024;
      v21 = 1327;
      v22 = 2112;
      v23 = a4;
      v24 = 1024;
      v25 = v9;
      v26 = 2112;
      v27 = a6;
      v28 = 1024;
      v29 = v7;
      _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Setup socket %@:%d to %@:%d", buf, 0x3Cu);
    }
  }

  return v11;
}

- (void)dealloc
{
  v3 = *MEMORY[0x1E69E9840];
  v2.receiver = self;
  v2.super_class = VCMockIDSDatagramChannelSocket;
  [(VCMockIDSDatagramChannel *)&v2 dealloc];
}

- (void)writeDatagram:(const void *)a3 datagramSize:(unsigned int)a4 datagramInfo:(id)a5 options:(id *)a6 completionHandler:(id)a7
{
  [(VCMockIDSDatagramChannelSocket *)self writeDatagram:a3 datagramSize:*&a4, *&a5.var0, *&a5.var4, a6];

  [(VCMockIDSDatagramChannel *)self processWriteCompletionCallback:a7 forDatagramWithSize:a4 error:0];
}

- (void)writeDatagrams:(const void *)a3 datagramsSize:(unsigned int *)a4 datagramsInfo:(id *)a5 datagramsCount:(int)a6 options:(id *)a7 completionHandler:(id)a8
{
  if (a6 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = 0;
    v13 = a6;
    do
    {
      v14 = *a3++;
      [(VCMockIDSDatagramChannelSocket *)self writeDatagram:v14 datagramSize:*a4, a5];
      LODWORD(v14) = *a4++;
      v12 += v14;
      --v13;
    }

    while (v13);
  }

  [(VCMockIDSDatagramChannel *)self processWriteCompletionCallback:a8 forDatagramWithSize:v12 error:0];
}

- (void)writeDatagram:(const void *)a3 datagramSize:(unsigned int)a4
{
  v18 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v6 = 3322356;
    v7 = a4;
    if ((self->_localAddress.sin_zero[4] & 1) == 0 && ![(VCMockIDSDatagramChannel *)self isMediaPacket:a3 length:a4])
    {
      v6 = 3322372;
    }

    if ((sendto(self->super._socket, a3, v7, 0, (self + v6), 0x10u) & 0x80000000) != 0 && VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCMockIDSDatagramChannelSocket writeDatagram:datagramSize:];
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315906;
      v11 = v8;
      v12 = 2080;
      v13 = "[VCMockIDSDatagramChannelSocket writeDatagram:datagramSize:]";
      v14 = 1024;
      v15 = 1370;
      v16 = 1024;
      v17 = 0;
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Ignoring datagram with size %d", &v10, 0x22u);
    }
  }
}

- (int)readyToRead
{
  v7 = *MEMORY[0x1E69E9840];
  memset(__b, 170, sizeof(__b));
  v3 = recv(self->super._socket, __b, 0x5C0uLL, 0);
  if ((v3 & 0x80000000) != 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCMockIDSDatagramChannelSocket readyToRead];
      }
    }
  }

  else
  {
    if ([(VCMockIDSDatagramChannel *)self isMediaPacket:__b length:1472, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0])
    {
      [(VCMockIDSDatagramChannelSocket *)self setAllSubscribedStreamIDsOnOptions:&v5];
      [(VCMockIDSDatagramChannelSocket *)self setIsHopByHopEncryptedOnOptions:&v5];
    }

    else
    {
      [(VCMockIDSDatagramChannel *)self setParticipantIDOnOptions:&v5];
    }

    [(VCMockIDSDatagramChannel *)self readDatagram:__b datagramSize:v3 datagramOptions:&v5];
  }

  return 0;
}

- (void)setAllSubscribedStreamIDsOnOptions:(id *)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v4 = [(NSDictionary *)self->super._subscribedStreamsByParticipantID allValues];
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v26 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v27;
    v19 = v4;
    v18 = *v27;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v11 = [v10 countByEnumeratingWithState:&v21 objects:v20 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v22;
          while (2)
          {
            v14 = 0;
            if (v7 <= 11)
            {
              v15 = 11;
            }

            else
            {
              v15 = v7;
            }

            v16 = (v15 - v7);
            v17 = &a3->var5[v7];
            do
            {
              if (*v22 != v13)
              {
                objc_enumerationMutation(v10);
              }

              *v17 = [*(*(&v21 + 1) + 8 * v14) intValue];
              if (v16 == v14)
              {
                LOBYTE(v7) = v7 + 1;
                goto LABEL_22;
              }

              ++v14;
              ++v17;
              ++v7;
            }

            while (v12 != v14);
            v12 = [v10 countByEnumeratingWithState:&v21 objects:v20 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

        v8 = v18;
        v4 = v19;
      }

      v6 = [(NSArray *)v19 countByEnumeratingWithState:&v26 objects:v25 count:16];
    }

    while (v6);
  }

  else
  {
    LOBYTE(v7) = 0;
  }

LABEL_22:
  a3->var4 = v7;
  a3->var0 |= 2u;
}

- (void)initRequiresOptions:(void *)a1 localIP:localPort:remoteIP:remotePort:.cold.1(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      __error();
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_22();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x22u);
    }
  }

  OUTLINED_FUNCTION_20();
}

- (void)initRequiresOptions:(void *)a1 localIP:localPort:remoteIP:remotePort:.cold.2(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_20();
}

- (void)initRequiresOptions:(void *)a1 localIP:localPort:remoteIP:remotePort:.cold.3(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_20();
}

- (void)initRequiresOptions:(void *)a1 localIP:localPort:remoteIP:remotePort:.cold.4(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_20();
}

- (void)initRequiresOptions:(void *)a1 localIP:localPort:remoteIP:remotePort:.cold.5(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_20();
}

- (void)writeDatagram:datagramSize:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)readyToRead
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

@end