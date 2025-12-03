@interface VCMockIDSDatagramChannelController
+ (id)sharedInstance;
- (id)datagramChannelSocketForDestination:(id)destination ipPorts:(id)ports;
- (id)datagramChannelWithDestination:(id)destination dataPath:(int)path;
- (id)getFirstDatagramChannelIDS;
- (void)dealloc;
- (void)setReadyToReadBlockForDatagram:(id)datagram block:(id)block;
- (void)setWriteDatagramBlockForDatagram:(id)datagram block:(id)block;
- (void)setWriteDatagramsBlockForDatagram:(id)datagram block:(id)block;
@end

@implementation VCMockIDSDatagramChannelController

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_13 != -1)
  {
    +[VCMockIDSDatagramChannelController sharedInstance];
  }

  return sharedInstance_sharedDatagramChannelManager_0;
}

VCMockIDSDatagramChannelController *__52__VCMockIDSDatagramChannelController_sharedInstance__block_invoke()
{
  result = objc_alloc_init(VCMockIDSDatagramChannelController);
  sharedInstance_sharedDatagramChannelManager_0 = result;
  return result;
}

- (id)datagramChannelSocketForDestination:(id)destination ipPorts:(id)ports
{
  if (!destination || !ports)
  {
    [VCMockIDSDatagramChannelController datagramChannelSocketForDestination:ipPorts:];
    return v16;
  }

  v6 = [destination hasPrefix:@"loopback:Conference"];
  v7 = [destination componentsSeparatedByString:@":"];
  if (!v7 || (v8 = v7, [v7 count] < 2) || objc_msgSend(objc_msgSend(v8, "objectAtIndexedSubscript:", 1), "intValue") < 1 || (v9 = objc_msgSend(objc_msgSend(v8, "objectAtIndexedSubscript:", 1), "intValue") << 16) == 0)
  {
    [VCMockIDSDatagramChannelController datagramChannelSocketForDestination:ipPorts:];
    return v16;
  }

  if (v9 == 1068498944)
  {
    v10 = @"vcDefaultMockDatagramChannelIPPortsKeyLocalIP";
  }

  else
  {
    v10 = @"vcDefaultMockDatagramChannelIPPortsKeyRemoteIP";
  }

  if (v9 == 1068498944)
  {
    v11 = @"vcDefaultMockDatagramChannelIPPortsKeyRemoteIP";
  }

  else
  {
    v11 = @"vcDefaultMockDatagramChannelIPPortsKeyLocalIP";
  }

  if (v9 == 1068498944)
  {
    v12 = @"vcDefaultMockDatagramChannelIPPortsKeyLocalPort";
  }

  else
  {
    v12 = @"vcDefaultMockDatagramChannelIPPortsKeyRemotePort";
  }

  if (v9 == 1068498944)
  {
    v13 = @"vcDefaultMockDatagramChannelIPPortsKeyRemotePort";
  }

  else
  {
    v13 = @"vcDefaultMockDatagramChannelIPPortsKeyLocalPort";
  }

  v14 = -[VCMockIDSDatagramChannelSocket initRequiresOptions:localIP:localPort:remoteIP:remotePort:]([VCMockIDSDatagramChannelSocket alloc], "initRequiresOptions:localIP:localPort:remoteIP:remotePort:", v6, [ports objectForKeyedSubscript:v10], objc_msgSend(objc_msgSend(ports, "objectForKeyedSubscript:", v12), "shortValue"), objc_msgSend(ports, "objectForKeyedSubscript:", v11), objc_msgSend(objc_msgSend(ports, "objectForKeyedSubscript:", v13), "shortValue"));

  return v14;
}

- (id)datagramChannelWithDestination:(id)destination dataPath:(int)path
{
  v4 = *&path;
  v22 = *MEMORY[0x1E69E9840];
  [(VCObject *)self lock];
  if (destination)
  {
    v7 = [destination hasPrefix:@"loopback:Conference"];
  }

  else
  {
    v7 = 0;
  }

  destinations = [+[VCDatagramChannelManager sharedInstance](VCDatagramChannelManager destinations];
  if (destination)
  {
    v9 = destinations;
    if (destinations)
    {
      v10 = [objc_msgSend(destinations "allKeys")];
      if (VCDefaults_GetBoolValueForKey(@"enableTestNetworkRouter", 0))
      {
        if (![v9 objectForKeyedSubscript:destination])
        {
LABEL_10:
          v11 = VCDefaults_CopyDictionaryValueForKey(@"mockDatagramChannelIPPorts");
          if (v11)
          {
            v12 = v11;
            idsDatagramChannel = [(VCMockIDSDatagramChannelController *)self datagramChannelSocketForDestination:destination ipPorts:v11];

            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v14 = VRTraceErrorLogLevelToCSTR();
              v15 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                *v19 = 136316162;
                *&v19[4] = v14;
                *&v19[12] = 2080;
                *&v19[14] = "[VCMockIDSDatagramChannelController datagramChannelWithDestination:dataPath:]";
                *&v19[22] = 1024;
                LODWORD(v20) = 1215;
                WORD2(v20) = 2048;
                *(&v20 + 6) = idsDatagramChannel;
                HIWORD(v20) = 2112;
                destinationCopy2 = destination;
LABEL_17:
                _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Created datagramChannel=%p for destination=%@", v19, 0x30u);
              }
            }
          }

          else
          {
            idsDatagramChannel = [[VCMockIDSDatagramChannel alloc] initCreateSocketRequiresOptions:v7 dataPath:v4 destination:destination];
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v16 = VRTraceErrorLogLevelToCSTR();
              v15 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                *v19 = 136316162;
                *&v19[4] = v16;
                *&v19[12] = 2080;
                *&v19[14] = "[VCMockIDSDatagramChannelController datagramChannelWithDestination:dataPath:]";
                *&v19[22] = 1024;
                LODWORD(v20) = 1218;
                WORD2(v20) = 2048;
                *(&v20 + 6) = idsDatagramChannel;
                HIWORD(v20) = 2112;
                destinationCopy2 = destination;
                goto LABEL_17;
              }
            }
          }

          if (idsDatagramChannel)
          {
            goto LABEL_22;
          }
        }
      }

      else if (!v10)
      {
        goto LABEL_10;
      }
    }
  }

  v17 = [(VCMockIDSDatagramChannelController *)self getFirstDatagramChannelIDS:*v19];
  if (v17)
  {
    idsDatagramChannel = [v17 idsDatagramChannel];
  }

  else
  {
    idsDatagramChannel = 0;
  }

LABEL_22:
  [idsDatagramChannel setWriteCompletionHandler:{&__block_literal_global_316, *v19, *&v19[8], v20, destinationCopy2}];
  [(VCObject *)self unlock];
  return idsDatagramChannel;
}

uint64_t __78__VCMockIDSDatagramChannelController_datagramChannelWithDestination_dataPath___block_invoke(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (!a2)
  {
    return VTP_IncrementTotalBytesSent(a3);
  }

  return result;
}

- (void)dealloc
{
  v3 = *MEMORY[0x1E69E9840];
  v2.receiver = self;
  v2.super_class = VCMockIDSDatagramChannelController;
  [(VCObject *)&v2 dealloc];
}

- (void)setWriteDatagramsBlockForDatagram:(id)datagram block:(id)block
{
  [(VCObject *)self lock];
  if (datagram)
  {
    datagramCopy = datagram;
  }

  else
  {
    getFirstDatagramChannelIDS = [(VCMockIDSDatagramChannelController *)self getFirstDatagramChannelIDS];
    if (!getFirstDatagramChannelIDS)
    {
      goto LABEL_6;
    }

    datagramCopy = [getFirstDatagramChannelIDS idsDatagramChannel];
  }

  [datagramCopy setWriteDatagramsBlock:block];
LABEL_6:

  [(VCObject *)self unlock];
}

- (void)setWriteDatagramBlockForDatagram:(id)datagram block:(id)block
{
  [(VCObject *)self lock];
  if (datagram)
  {
    datagramCopy = datagram;
  }

  else
  {
    getFirstDatagramChannelIDS = [(VCMockIDSDatagramChannelController *)self getFirstDatagramChannelIDS];
    if (!getFirstDatagramChannelIDS)
    {
      goto LABEL_6;
    }

    datagramCopy = [getFirstDatagramChannelIDS idsDatagramChannel];
  }

  [datagramCopy setWriteDatagramBlock:block];
LABEL_6:

  [(VCObject *)self unlock];
}

- (void)setReadyToReadBlockForDatagram:(id)datagram block:(id)block
{
  [(VCObject *)self lock];
  if (datagram)
  {
    datagramCopy = datagram;
  }

  else
  {
    getFirstDatagramChannelIDS = [(VCMockIDSDatagramChannelController *)self getFirstDatagramChannelIDS];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_6;
    }

    datagramCopy = [getFirstDatagramChannelIDS idsDatagramChannel];
  }

  [datagramCopy setReadyToReadBlock:block];
LABEL_6:

  [(VCObject *)self unlock];
}

- (id)getFirstDatagramChannelIDS
{
  v13 = *MEMORY[0x1E69E9840];
  datagramChannels = [+[VCDatagramChannelManager sharedInstance](VCDatagramChannelManager datagramChannels];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  result = [datagramChannels countByEnumeratingWithState:&v9 objects:v8 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v10;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(datagramChannels);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        [datagramChannels objectForKeyedSubscript:v7];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          return [datagramChannels objectForKeyedSubscript:v7];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      result = [datagramChannels countByEnumeratingWithState:&v9 objects:v8 count:16];
      v4 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

- (void)datagramChannelSocketForDestination:ipPorts:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_20();
}

- (void)datagramChannelSocketForDestination:ipPorts:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_20();
}

@end