@interface VCDatagramChannelManager
+ (id)sharedInstance;
- (BOOL)isEmulatedDatagramChannelEnabledViaDefaults;
- (VCDatagramChannelManager)init;
- (id)addDatagramChannelWithDescriptor:(int)a3 eventHandler:(id)a4 writeCompletionHandler:(id)a5 error:(id *)a6;
- (id)addDatagramChannelWithDestination:(id)a3 eventHandler:(id)a4 writeCompletionHandler:(id)a5 dataPath:(int)a6 error:(id *)a7;
- (id)addDatagramChannelWithNWConnections:(id)a3 eventHandler:(id)a4 error:(id *)a5;
- (id)datagramChannelWithChannelToken:(unsigned int)a3;
- (id)setupEmulatedDatagramChannelWithDestination:(id)a3 datagramChannel:(id)a4;
- (unsigned)tokenForDatgramChannel:(id)a3;
- (void)dealloc;
- (void)executeBlockForIDSDestination:(id)a3 blockToExecute:(id)a4;
- (void)removeDatagramChannel:(id)a3;
- (void)removeDatagramChannels;
- (void)removeDestionationIfIDSDatagramChannel:(id)a3;
- (void)setIDSReadHandler:(id)a3;
- (void)setMultiLinkReadHandler:(id)a3;
- (void)setUpDatagramChannel:(id)a3 eventHandler:(id)a4 writeCompletionHandler:(id)a5;
@end

@implementation VCDatagramChannelManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_2 != -1)
  {
    +[VCDatagramChannelManager sharedInstance];
  }

  return sharedInstance_sharedDatagramChannelManager;
}

VCDatagramChannelManager *__42__VCDatagramChannelManager_sharedInstance__block_invoke()
{
  result = objc_alloc_init(VCDatagramChannelManager);
  sharedInstance_sharedDatagramChannelManager = result;
  return result;
}

- (VCDatagramChannelManager)init
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = VCDatagramChannelManager;
  v2 = [(VCDatagramChannelManager *)&v5 init];
  v3 = v2;
  if (v2)
  {
    pthread_mutex_init(&v2->_stateLock, 0);
    ++v3->_nextToken;
    v3->_datagramChannels = objc_alloc_init(MEMORY[0x1E695DF90]);
    v3->_destinations = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  return v3;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  pthread_mutex_destroy(&self->_stateLock);

  v3.receiver = self;
  v3.super_class = VCDatagramChannelManager;
  [(VCDatagramChannelManager *)&v3 dealloc];
}

- (id)addDatagramChannelWithDescriptor:(int)a3 eventHandler:(id)a4 writeCompletionHandler:(id)a5 error:(id *)a6
{
  if (!a4)
  {
    [VCDatagramChannelManager addDatagramChannelWithDescriptor:eventHandler:writeCompletionHandler:error:];
LABEL_7:
    v13 = v15;
    goto LABEL_4;
  }

  v10 = *&a3;
  pthread_mutex_lock(&self->_stateLock);
  nextToken = self->_nextToken;
  self->_nextToken = nextToken + 1;
  pthread_mutex_unlock(&self->_stateLock);
  v12 = [[VCDatagramChannelIDS alloc] initWithSocketDescriptor:v10 token:nextToken error:a6];
  if (!v12)
  {
    [VCDatagramChannelManager addDatagramChannelWithDescriptor:a6 eventHandler:? writeCompletionHandler:? error:?];
    goto LABEL_7;
  }

  v13 = v12;
  pthread_mutex_lock(&self->_stateLock);
  -[NSMutableDictionary setObject:forKeyedSubscript:](self->_datagramChannels, "setObject:forKeyedSubscript:", v13, [MEMORY[0x1E696AD98] numberWithUnsignedInt:nextToken]);
  pthread_mutex_unlock(&self->_stateLock);
  [(VCDatagramChannelManager *)self setUpDatagramChannel:v13 eventHandler:a4 writeCompletionHandler:a5];
LABEL_4:
  [(VCDatagramChannelManager *)self removeDatagramChannel:0];
  return v13;
}

- (id)addDatagramChannelWithDestination:(id)a3 eventHandler:(id)a4 writeCompletionHandler:(id)a5 dataPath:(int)a6 error:(id *)a7
{
  v30 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    [VCDatagramChannelManager addDatagramChannelWithDestination:eventHandler:writeCompletionHandler:dataPath:error:];
    goto LABEL_15;
  }

  if (!a4)
  {
    [VCDatagramChannelManager addDatagramChannelWithDestination:eventHandler:writeCompletionHandler:dataPath:error:];
    goto LABEL_15;
  }

  v10 = *&a6;
  pthread_mutex_lock(&self->_stateLock);
  if (![(NSMutableDictionary *)self->_destinations objectForKeyedSubscript:a3])
  {
    nextToken = self->_nextToken;
    self->_nextToken = nextToken + 1;
    v18 = [[VCDatagramChannelIDS alloc] initWithDestination:a3 token:nextToken dataPath:v10 error:a7];
    if (v18)
    {
      v19 = [(VCDatagramChannelManager *)self setupEmulatedDatagramChannelWithDestination:a3 datagramChannel:v18];
      if (v19)
      {
        v14 = v19;
        -[NSMutableDictionary setObject:forKeyedSubscript:](self->_destinations, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:nextToken], a3);
        -[NSMutableDictionary setObject:forKeyedSubscript:](self->_datagramChannels, "setObject:forKeyedSubscript:", v14, [MEMORY[0x1E696AD98] numberWithUnsignedInt:nextToken]);
        pthread_mutex_unlock(&self->_stateLock);
        [(VCDatagramChannelManager *)self setUpDatagramChannel:v14 eventHandler:a4 writeCompletionHandler:a5];
        goto LABEL_10;
      }

      [VCDatagramChannelManager addDatagramChannelWithDestination:? eventHandler:? writeCompletionHandler:? dataPath:? error:?];
    }

    else
    {
      [VCDatagramChannelManager addDatagramChannelWithDestination:a7 eventHandler:? writeCompletionHandler:? dataPath:? error:?];
    }

LABEL_15:
    v14 = *v21;
    goto LABEL_10;
  }

  v13 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_destinations objectForKeyedSubscript:{a3), "unsignedIntegerValue"}];
  v14 = -[NSMutableDictionary objectForKeyedSubscript:](self->_datagramChannels, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v13]);
  pthread_mutex_unlock(&self->_stateLock);
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 136316162;
      *&v21[4] = v15;
      v22 = 2080;
      v23 = "[VCDatagramChannelManager addDatagramChannelWithDestination:eventHandler:writeCompletionHandler:dataPath:error:]";
      v24 = 1024;
      v25 = 137;
      v26 = 1024;
      v27 = v13;
      v28 = 2080;
      v29 = [objc_msgSend(a3 "description")];
      _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCDatagramChannelManager: found existing datagram channel with token %d for destination %s", v21, 0x2Cu);
    }
  }

LABEL_10:
  [(VCDatagramChannelManager *)self removeDatagramChannel:0];
  return v14;
}

- (id)addDatagramChannelWithNWConnections:(id)a3 eventHandler:(id)a4 error:(id *)a5
{
  pthread_mutex_lock(&self->_stateLock);
  if (![a3 count])
  {
    [VCDatagramChannelManager addDatagramChannelWithNWConnections:eventHandler:error:];
LABEL_7:
    v12 = v14;
    goto LABEL_4;
  }

  nextToken = self->_nextToken;
  self->_nextToken = nextToken + 1;
  v10 = [[VCDatagramChannelMultiLink alloc] initWithNWConnections:a3 token:nextToken options:0 error:a5];
  if (!v10)
  {
    [VCDatagramChannelManager addDatagramChannelWithNWConnections:a5 eventHandler:? error:?];
    goto LABEL_7;
  }

  v11 = v10;
  -[NSMutableDictionary setObject:forKeyedSubscript:](self->_datagramChannels, "setObject:forKeyedSubscript:", v10, [MEMORY[0x1E696AD98] numberWithUnsignedInt:nextToken]);
  [(VCDatagramChannelManager *)self setUpDatagramChannel:v11 eventHandler:a4 writeCompletionHandler:0];
  v12 = v11;
LABEL_4:
  pthread_mutex_unlock(&self->_stateLock);
  [(VCDatagramChannelManager *)self removeDatagramChannel:0];
  return v12;
}

- (id)setupEmulatedDatagramChannelWithDestination:(id)a3 datagramChannel:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  if ([+[VCTestMonitorManager sharedManager](VCTestMonitorManager "sharedManager")])
  {
    v7 = [objc_msgSend(+[VCTestMonitorManager sharedManager](VCTestMonitorManager "sharedManager")];
    if ([a3 hasPrefix:@"loopback:"] && (v7 & 1) == 0)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v13 = 136315906;
          v14 = v8;
          v15 = 2080;
          v16 = "[VCDatagramChannelManager setupEmulatedDatagramChannelWithDestination:datagramChannel:]";
          v17 = 1024;
          v18 = 187;
          v19 = 2112;
          v20 = [+[VCTestMonitorManager sharedManager](VCTestMonitorManager "sharedManager")];
          _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Emulated network enabled, emulatedNetworkConfigPath=%@", &v13, 0x26u);
        }
      }

      return [[VCDatagramChannelIDSEmulated alloc] initWithIDSDatagramChannel:a4 mode:0];
    }
  }

  else
  {
    [a3 hasPrefix:@"loopback:"];
  }

  if ([(VCDatagramChannelManager *)self isEmulatedDatagramChannelEnabledViaDefaults])
  {
    return [[VCDatagramChannelIDSEmulated alloc] initWithIDSDatagramChannel:a4 mode:0];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315650;
      v14 = v10;
      v15 = 2080;
      v16 = "[VCDatagramChannelManager setupEmulatedDatagramChannelWithDestination:datagramChannel:]";
      v17 = 1024;
      v18 = 195;
      _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Do not load emulated network", &v13, 0x1Cu);
    }
  }

  return a4;
}

- (BOOL)isEmulatedDatagramChannelEnabledViaDefaults
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = VCDefaults_CopyStringValueForKey(@"emulatedNetworkConfigPath");
  v3 = VCDefaults_CopyStringValueForKey(@"emulatedNetworkConfigJSONString");
  if (v2 && [v2 length])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136315906;
        v11 = v4;
        v12 = 2080;
        v13 = "[VCDatagramChannelManager isEmulatedDatagramChannelEnabledViaDefaults]";
        v14 = 1024;
        v15 = 206;
        v16 = 2112;
        v17 = v2;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Emulated network enabled via defaults, emulatedNetworkConfigPath=%@", &v10, 0x26u);
      }
    }

    [+[VCTestMonitorManager sharedManager](VCTestMonitorManager "sharedManager")];
    v6 = 1;
    goto LABEL_15;
  }

  if (!v3 || ![v3 length])
  {
    v6 = 0;
    if (!v2)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315906;
      v11 = v7;
      v12 = 2080;
      v13 = "[VCDatagramChannelManager isEmulatedDatagramChannelEnabledViaDefaults]";
      v14 = 1024;
      v15 = 210;
      v16 = 2112;
      v17 = v3;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Emulated network enabled via defaults, emulatedNetworkConfigJSONString=%@", &v10, 0x26u);
    }
  }

  v6 = 1;
  if (v2)
  {
LABEL_15:
    CFRelease(v2);
  }

LABEL_16:
  if (v3)
  {
    CFRelease(v3);
  }

  return v6;
}

- (void)setIDSReadHandler:(id)a3
{
  v3[6] = *MEMORY[0x1E69E9840];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __46__VCDatagramChannelManager_setIDSReadHandler___block_invoke;
  v3[3] = &unk_1E85F5418;
  v3[4] = self;
  v3[5] = a3;
  [a3 setReadHandler:v3];
}

uint64_t __46__VCDatagramChannelManager_setIDSReadHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int16 a5, uint64_t a6, uint64_t a7)
{
  result = *(*(a1 + 32) + 80);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40), a2, a3, a4, a5, a6, a7);
  }

  return result;
}

- (void)setMultiLinkReadHandler:(id)a3
{
  v3[6] = *MEMORY[0x1E69E9840];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __52__VCDatagramChannelManager_setMultiLinkReadHandler___block_invoke;
  v3[3] = &unk_1E85F5440;
  v3[4] = self;
  v3[5] = a3;
  [a3 setReadHandler:v3];
}

uint64_t __52__VCDatagramChannelManager_setMultiLinkReadHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = *(*(a1 + 32) + 80);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40), a2, a3, a4, a5, a6);
  }

  return result;
}

- (void)setUpDatagramChannel:(id)a3 eventHandler:(id)a4 writeCompletionHandler:(id)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v9 = [(VCDatagramChannelManager *)self tokenForDatgramChannel:?];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315906;
      v13 = v10;
      v14 = 2080;
      v15 = "[VCDatagramChannelManager setUpDatagramChannel:eventHandler:writeCompletionHandler:]";
      v16 = 1024;
      v17 = 242;
      v18 = 1024;
      v19 = v9;
      _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCDatagramChannelManager: added datagram channel with token %d", &v12, 0x22u);
    }
  }

  if ([(VCDatagramChannelManager *)self isIDSDatagramChannel:a3])
  {
    [(VCDatagramChannelManager *)self setIDSReadHandler:a3];
    if (!a5)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  [(VCDatagramChannelManager *)self setMultiLinkReadHandler:a3];
  if (a5)
  {
LABEL_8:
    [a3 setWriteCompletionHandler:a5];
  }

LABEL_9:
  [a3 setEventHandler:a4];
}

- (id)datagramChannelWithChannelToken:(unsigned int)a3
{
  v3 = *&a3;
  pthread_mutex_lock(&self->_stateLock);
  v5 = -[NSMutableDictionary objectForKeyedSubscript:](self->_datagramChannels, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3]);
  pthread_mutex_unlock(&self->_stateLock);
  return v5;
}

- (void)executeBlockForIDSDestination:(id)a3 blockToExecute:(id)a4
{
  if (a4)
  {
    pthread_mutex_lock(&self->_stateLock);
    v7 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_destinations objectForKeyedSubscript:{a3), "unsignedIntegerValue"}];
    v8 = -[NSMutableDictionary objectForKeyedSubscript:](self->_datagramChannels, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v7]);
    pthread_mutex_unlock(&self->_stateLock);
    [v8 lock];
    (*(a4 + 2))(a4, v8);
    [v8 unlock];
  }
}

- (unsigned)tokenForDatgramChannel:(id)a3
{
  if ([(VCDatagramChannelManager *)self isMultiLinkDatagramChannel:?])
  {

    return VCDatagramChannelMultiLink_Token(a3);
  }

  else
  {

    return VCDatagramChannelIDS_Token(a3);
  }
}

- (void)removeDestionationIfIDSDatagramChannel:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  if ([(VCDatagramChannelManager *)self isIDSDatagramChannel:?])
  {
    if ([a3 destination])
    {
      if (-[NSMutableDictionary objectForKeyedSubscript:](self->_destinations, "objectForKeyedSubscript:", [a3 destination]))
      {
        -[NSMutableDictionary removeObjectForKey:](self->_destinations, "removeObjectForKey:", [a3 destination]);
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v5 = VRTraceErrorLogLevelToCSTR();
          v6 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            if ([a3 destination])
            {
              v7 = [objc_msgSend(objc_msgSend(a3 "destination")];
            }

            else
            {
              v7 = "<nil>";
            }

            v8 = 136315906;
            v9 = v5;
            v10 = 2080;
            v11 = "[VCDatagramChannelManager removeDestionationIfIDSDatagramChannel:]";
            v12 = 1024;
            v13 = 302;
            v14 = 2080;
            v15 = v7;
            _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCDatagramChannelManager: removed destination=%s", &v8, 0x26u);
          }
        }
      }
    }
  }
}

- (void)removeDatagramChannel:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    pthread_mutex_lock(&self->_stateLock);
    v5 = [(VCDatagramChannelManager *)self tokenForDatgramChannel:a3];
    if (-[NSMutableDictionary objectForKeyedSubscript:](self->_datagramChannels, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v5]))
    {
      v6 = a3;
      -[NSMutableDictionary removeObjectForKey:](self->_datagramChannels, "removeObjectForKey:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v5]);
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v9 = 136315906;
          v10 = v7;
          v11 = 2080;
          v12 = "[VCDatagramChannelManager removeDatagramChannel:]";
          v13 = 1024;
          v14 = 317;
          v15 = 1024;
          v16 = v5;
          _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCDatagramChannelManager: removed datagram channel with token=%d", &v9, 0x22u);
        }
      }

      [(VCDatagramChannelManager *)self removeDestionationIfIDSDatagramChannel:a3];
      pthread_mutex_unlock(&self->_stateLock);
      [a3 invalidate];
    }

    else
    {

      pthread_mutex_unlock(&self->_stateLock);
    }
  }
}

- (void)removeDatagramChannels
{
  v31 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&self->_stateLock);
  datagramChannels = self->_datagramChannels;
  if (datagramChannels)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v4 = [(NSMutableDictionary *)datagramChannels allKeys];
    v5 = [v4 countByEnumeratingWithState:&v27 objects:v26 count:16];
    if (v5)
    {
      v7 = v5;
      v8 = *v28;
      *&v6 = 136315906;
      v23 = v6;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v28 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v27 + 1) + 8 * i);
          v11 = [(NSMutableDictionary *)self->_datagramChannels objectForKeyedSubscript:v10, v23, *buf, *&buf[16], v25];
          if (v11)
          {
            v12 = v11;
            [(VCDatagramChannelManager *)self removeDestionationIfIDSDatagramChannel:v11];
            [v12 invalidate];
            [(NSMutableDictionary *)self->_datagramChannels removeObjectForKey:v10];
            if (VRTraceGetErrorLogLevelForModule() >= 6)
            {
              v13 = VRTraceErrorLogLevelToCSTR();
              v14 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                v15 = [v10 intValue];
                *buf = v23;
                *&buf[4] = v13;
                *&buf[12] = 2080;
                *&buf[14] = "[VCDatagramChannelManager removeDatagramChannels]";
                *&buf[22] = 1024;
                LODWORD(v25) = 346;
                WORD2(v25) = 1024;
                *(&v25 + 6) = v15;
                v16 = v14;
                v17 = " [%s] %s:%d VCDatagramChannelManager: removed datagram channel with token=%d";
                v18 = 34;
LABEL_14:
                _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, v17, buf, v18);
                continue;
              }
            }
          }

          else if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v19 = VRTraceErrorLogLevelToCSTR();
            v20 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              *buf = v23;
              *&buf[4] = v19;
              *&buf[12] = 2080;
              *&buf[14] = "[VCDatagramChannelManager removeDatagramChannels]";
              *&buf[22] = 1024;
              LODWORD(v25) = 340;
              WORD2(v25) = 2112;
              *(&v25 + 6) = v10;
              v16 = v20;
              v17 = " [%s] %s:%d VCDatagramChannelManager: _datagramChannels is nil for token=%@";
              v18 = 38;
              goto LABEL_14;
            }
          }
        }

        v7 = [v4 countByEnumeratingWithState:&v27 objects:v26 count:16];
      }

      while (v7);
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v21 = VRTraceErrorLogLevelToCSTR();
    v22 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = v21;
      *&buf[12] = 2080;
      *&buf[14] = "[VCDatagramChannelManager removeDatagramChannels]";
      *&buf[22] = 1024;
      LODWORD(v25) = 333;
      _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCDatagramChannelManager: _datagramChannels == nil", buf, 0x1Cu);
    }
  }

  pthread_mutex_unlock(&self->_stateLock);
}

- (void)addDatagramChannelWithDescriptor:(id *)a1 eventHandler:writeCompletionHandler:error:.cold.1(id *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      if (a1 && *a1)
      {
        [objc_msgSend(*a1 "description")];
      }

      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_4_8();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
    }
  }

  OUTLINED_FUNCTION_20();
}

- (void)addDatagramChannelWithDescriptor:eventHandler:writeCompletionHandler:error:.cold.2()
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

- (void)addDatagramChannelWithDestination:(pthread_mutex_t *)a1 eventHandler:writeCompletionHandler:dataPath:error:.cold.1(pthread_mutex_t *a1)
{
  pthread_mutex_unlock(a1);
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

- (void)addDatagramChannelWithDestination:(pthread_mutex_t *)a1 eventHandler:(id *)a2 writeCompletionHandler:dataPath:error:.cold.2(pthread_mutex_t *a1, id *a2)
{
  pthread_mutex_unlock(a1);
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      if (a2 && *a2)
      {
        [objc_msgSend(*a2 "description")];
      }

      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_4_8();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v3, v4, v5, v6, v7, 0x26u);
    }
  }

  OUTLINED_FUNCTION_20();
}

- (void)addDatagramChannelWithDestination:eventHandler:writeCompletionHandler:dataPath:error:.cold.3()
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

- (void)addDatagramChannelWithDestination:eventHandler:writeCompletionHandler:dataPath:error:.cold.4()
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

- (void)addDatagramChannelWithNWConnections:(id *)a1 eventHandler:error:.cold.1(id *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      if (a1 && *a1)
      {
        [objc_msgSend(*a1 "description")];
      }

      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_4_8();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
    }
  }

  OUTLINED_FUNCTION_20();
}

- (void)addDatagramChannelWithNWConnections:eventHandler:error:.cold.2()
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