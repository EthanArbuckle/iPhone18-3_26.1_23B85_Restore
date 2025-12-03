@interface VCMockRouter
+ (id)sharedInstance;
- (BOOL)routeDatagram:(const void *)datagram datagramSize:(unsigned int)size datagramOptions:(id *)options fromDatagramChannel:(id)channel error:(id *)error;
@end

@implementation VCMockRouter

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_15 != -1)
  {
    +[VCMockRouter sharedInstance];
  }

  return sharedInstance_sharedInstance_1;
}

void __30__VCMockRouter_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_1 = objc_alloc_init(VCMockRouter);
  if (!sharedInstance_sharedInstance_1 && VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v0 = VRTraceErrorLogLevelToCSTR();
    v1 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      __30__VCMockRouter_sharedInstance__block_invoke_cold_1(v0, v1);
    }
  }
}

- (BOOL)routeDatagram:(const void *)datagram datagramSize:(unsigned int)size datagramOptions:(id *)options fromDatagramChannel:(id)channel error:(id *)error
{
  v10 = *&size;
  v48 = *MEMORY[0x1E69E9840];
  datagramChannels = [+[VCDatagramChannelManager sharedInstance](VCDatagramChannelManager datagramChannels];
  if (datagramChannels && (v13 = datagramChannels, [datagramChannels count] > 1))
  {
    errorCopy = error;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    allKeys = [v13 allKeys];
    v16 = [allKeys countByEnumeratingWithState:&v44 objects:v43 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v45;
      while (2)
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v45 != v18)
          {
            objc_enumerationMutation(allKeys);
          }

          v20 = [objc_msgSend(v13 objectForKeyedSubscript:{*(*(&v44 + 1) + 8 * i)), "idsDatagramChannel"}];
          if (v20)
          {
            v21 = v20 == channel;
          }

          else
          {
            v21 = 1;
          }

          if (!v21)
          {
            v25 = v20;
            ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
            if (ErrorLogLevelForModule >= 8)
            {
              v27 = VRTraceErrorLogLevelToCSTR();
              v28 = *MEMORY[0x1E6986650];
              v29 = *MEMORY[0x1E6986650];
              if (*MEMORY[0x1E6986640] == 1)
              {
                if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136316418;
                  v32 = v27;
                  v33 = 2080;
                  v34 = "[VCMockRouter routeDatagram:datagramSize:datagramOptions:fromDatagramChannel:error:]";
                  v35 = 1024;
                  v36 = 53;
                  v37 = 2048;
                  datagramCopy3 = datagram;
                  v39 = 2048;
                  channelCopy3 = channel;
                  v41 = 2048;
                  v42 = v25;
                  _os_log_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Forward datagram[%p] from MockIDSDatagramChannel=%p to MockIDSDatagramChannel=%p", buf, 0x3Au);
                }
              }

              else if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136316418;
                v32 = v27;
                v33 = 2080;
                v34 = "[VCMockRouter routeDatagram:datagramSize:datagramOptions:fromDatagramChannel:error:]";
                v35 = 1024;
                v36 = 53;
                v37 = 2048;
                datagramCopy3 = datagram;
                v39 = 2048;
                channelCopy3 = channel;
                v41 = 2048;
                v42 = v25;
                _os_log_debug_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Forward datagram[%p] from MockIDSDatagramChannel=%p to MockIDSDatagramChannel=%p", buf, 0x3Au);
              }
            }

            return [v25 processDirectIDSPathWithDatagram:datagram datagramSize:v10 datagramOptions:options error:errorCopy];
          }
        }

        v17 = [allKeys countByEnumeratingWithState:&v44 objects:v43 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v22 = VRTraceErrorLogLevelToCSTR();
      v23 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v32 = v22;
        v33 = 2080;
        v34 = "[VCMockRouter routeDatagram:datagramSize:datagramOptions:fromDatagramChannel:error:]";
        v35 = 1024;
        v36 = 57;
        v37 = 2048;
        datagramCopy3 = datagram;
        v39 = 2048;
        channelCopy3 = channel;
        _os_log_error_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to forward datagram=%p from MockIDSDatagramChannel=%p", buf, 0x30u);
      }
    }

    if (errorCopy)
    {
      v24 = [MEMORY[0x1E696ABC0] AVConferenceServiceError:32000 detailCode:0 description:@"Failed to forward datagram"];
      result = 0;
      *errorCopy = v24;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return [channel processDirectIDSPathWithDatagram:datagram datagramSize:v10 datagramOptions:options error:error];
  }

  return result;
}

void __30__VCMockRouter_sharedInstance__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  v4 = 2080;
  v5 = "+[VCMockRouter sharedInstance]_block_invoke";
  v6 = 1024;
  v7 = 34;
  _os_log_error_impl(&dword_1DB56E000, a2, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to instantiate VCMockRouter object", &v2, 0x1Cu);
}

@end