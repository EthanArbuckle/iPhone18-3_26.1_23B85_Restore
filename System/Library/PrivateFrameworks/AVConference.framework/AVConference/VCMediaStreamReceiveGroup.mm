@interface VCMediaStreamReceiveGroup
- (NSNumber)activeStreamID;
- (NSNumber)optedInStreamID;
- (VCMediaStreamReceiveGroup)initWithConfig:(id)a3;
- (id)streamConfigForStreamID:(unsigned __int16)a3;
- (void)dealloc;
- (void)notifyChangeInActiveMediaBitrateTo:(unsigned int)a3 from:(unsigned int)a4;
- (void)setActiveStreamID:(id)a3;
- (void)setActualBitrateForOptedInStreamWithActiveStreamID:(id)a3;
- (void)setupMaxBitrateMap;
- (void)vcMediaStreamDidDecryptionTimeOut:(id)a3;
- (void)vcMediaStreamDidDecryptionTimeOutForMKMRecovery:(id)a3;
- (void)vcMediaStreamDidRTCPTimeOut:(id)a3;
- (void)vcMediaStreamDidRTPTimeOut:(id)a3;
@end

@implementation VCMediaStreamReceiveGroup

- (VCMediaStreamReceiveGroup)initWithConfig:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = VCMediaStreamReceiveGroup;
  v3 = [(VCMediaStreamGroup *)&v6 initWithConfig:a3];
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3->_streamToMaxNetworkBitrate = v4;
  if (!v4)
  {
    [VCMediaStreamReceiveGroup initWithConfig:v3];
LABEL_7:

    return 0;
  }

  v3->_streamToActualNetworkBitrate = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (!v3->_streamToMaxNetworkBitrate)
  {
    [VCMediaStreamReceiveGroup initWithConfig:v3];
    goto LABEL_7;
  }

  [(VCMediaStreamReceiveGroup *)v3 setupMaxBitrateMap];
  return v3;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCMediaStreamReceiveGroup;
  [(VCMediaStreamGroup *)&v3 dealloc];
}

- (NSNumber)optedInStreamID
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__7;
  v10 = __Block_byref_object_dispose__7;
  v11 = 0;
  stateQueue = self->super._stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__VCMediaStreamReceiveGroup_optedInStreamID__block_invoke;
  block[3] = &unk_1E85F40B8;
  block[4] = self;
  block[5] = &v6;
  dispatch_sync(stateQueue, block);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __44__VCMediaStreamReceiveGroup_optedInStreamID__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 440);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (NSNumber)activeStreamID
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__7;
  v10 = __Block_byref_object_dispose__7;
  v11 = 0;
  stateQueue = self->super._stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__VCMediaStreamReceiveGroup_activeStreamID__block_invoke;
  block[3] = &unk_1E85F40B8;
  block[4] = self;
  block[5] = &v6;
  dispatch_sync(stateQueue, block);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __43__VCMediaStreamReceiveGroup_activeStreamID__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 448);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)setActiveStreamID:(id)a3
{
  if (![(NSNumber *)self->_activeStreamID isEqualToNumber:?])
  {
    activeStreamID = self->_activeStreamID;
    if (activeStreamID)
    {
      [(VCMediaStreamReceiveGroup *)self setActualBitrateForOptedInStreamWithActiveStreamID:a3];
      activeStreamID = self->_activeStreamID;
    }

    self->_activeStreamID = a3;
  }
}

- (void)setActualBitrateForOptedInStreamWithActiveStreamID:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_streamToMaxNetworkBitrate objectForKeyedSubscript:{self->_optedInStreamID), "unsignedIntValue"}];
  v6 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_streamToActualNetworkBitrate objectForKeyedSubscript:{self->_optedInStreamID), "unsignedIntValue"}];
  v7 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_streamToMaxNetworkBitrate objectForKeyedSubscript:{a3), "unsignedIntValue"}];
  if (![(NSNumber *)self->_optedInStreamID isEqual:a3])
  {
    if (v7 >= v5)
    {
      goto LABEL_7;
    }

    v5 = v7;
    goto LABEL_6;
  }

  if (v6 != v5)
  {
LABEL_6:
    -[NSMutableDictionary setObject:forKeyedSubscript:](self->_streamToActualNetworkBitrate, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v5], self->_optedInStreamID);
    [(VCMediaStreamReceiveGroup *)self notifyChangeInActiveMediaBitrateTo:v5 from:v6];
  }

LABEL_7:
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        activeStreamID = self->_activeStreamID;
        optedInStreamID = self->_optedInStreamID;
        v20 = 136316418;
        v21 = v9;
        v22 = 2080;
        v23 = "[VCMediaStreamReceiveGroup setActualBitrateForOptedInStreamWithActiveStreamID:]";
        v24 = 1024;
        v25 = 101;
        v26 = 2112;
        v27 = activeStreamID;
        v28 = 2112;
        v29 = a3;
        v30 = 2112;
        v31 = optedInStreamID;
        v13 = " [%s] %s:%d Switching from stream %@ to new stream %@, with opted-in stream %@";
        v14 = v10;
        v15 = 58;
LABEL_17:
        _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, v13, &v20, v15);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v8 = [(VCMediaStreamReceiveGroup *)self performSelector:sel_logPrefix];
    }

    else
    {
      v8 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v18 = self->_activeStreamID;
        v19 = self->_optedInStreamID;
        v20 = 136316930;
        v21 = v16;
        v22 = 2080;
        v23 = "[VCMediaStreamReceiveGroup setActualBitrateForOptedInStreamWithActiveStreamID:]";
        v24 = 1024;
        v25 = 101;
        v26 = 2112;
        v27 = v8;
        v28 = 2048;
        v29 = self;
        v30 = 2112;
        v31 = v18;
        v32 = 2112;
        v33 = a3;
        v34 = 2112;
        v35 = v19;
        v13 = " [%s] %s:%d %@(%p) Switching from stream %@ to new stream %@, with opted-in stream %@";
        v14 = v17;
        v15 = 78;
        goto LABEL_17;
      }
    }
  }
}

- (void)vcMediaStreamDidRTPTimeOut:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCMediaStreamReceiveGroup vcMediaStreamDidRTPTimeOut:];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCMediaStreamReceiveGroup *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v8 = 136316418;
        v9 = v6;
        v10 = 2080;
        v11 = "[VCMediaStreamReceiveGroup vcMediaStreamDidRTPTimeOut:]";
        v12 = 1024;
        v13 = 107;
        v14 = 2112;
        v15 = v5;
        v16 = 2048;
        v17 = self;
        v18 = 2048;
        v19 = a3;
        _os_log_error_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) stream=%p", &v8, 0x3Au);
      }
    }
  }
}

- (void)vcMediaStreamDidRTCPTimeOut:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCMediaStreamReceiveGroup vcMediaStreamDidRTCPTimeOut:];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCMediaStreamReceiveGroup *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v8 = 136316418;
        v9 = v6;
        v10 = 2080;
        v11 = "[VCMediaStreamReceiveGroup vcMediaStreamDidRTCPTimeOut:]";
        v12 = 1024;
        v13 = 111;
        v14 = 2112;
        v15 = v5;
        v16 = 2048;
        v17 = self;
        v18 = 2048;
        v19 = a3;
        _os_log_error_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) stream=%p", &v8, 0x3Au);
      }
    }
  }
}

- (void)vcMediaStreamDidDecryptionTimeOut:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCMediaStreamReceiveGroup vcMediaStreamDidDecryptionTimeOut:];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCMediaStreamReceiveGroup *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v10 = v6;
        v11 = 2080;
        v12 = "[VCMediaStreamReceiveGroup vcMediaStreamDidDecryptionTimeOut:]";
        v13 = 1024;
        v14 = 115;
        v15 = 2112;
        v16 = v5;
        v17 = 2048;
        v18 = self;
        v19 = 2048;
        v20 = a3;
        _os_log_error_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) stream=%p", buf, 0x3Au);
      }
    }
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63__VCMediaStreamReceiveGroup_vcMediaStreamDidDecryptionTimeOut___block_invoke;
  v8[3] = &unk_1E85F41D0;
  v8[4] = self;
  [(VCMediaStreamGroup *)self callDelegateWithBlock:v8];
}

- (void)vcMediaStreamDidDecryptionTimeOutForMKMRecovery:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCMediaStreamReceiveGroup vcMediaStreamDidDecryptionTimeOutForMKMRecovery:];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCMediaStreamReceiveGroup *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v10 = v6;
        v11 = 2080;
        v12 = "[VCMediaStreamReceiveGroup vcMediaStreamDidDecryptionTimeOutForMKMRecovery:]";
        v13 = 1024;
        v14 = 122;
        v15 = 2112;
        v16 = v5;
        v17 = 2048;
        v18 = self;
        v19 = 2048;
        v20 = a3;
        _os_log_error_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) stream:%p", buf, 0x3Au);
      }
    }
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __77__VCMediaStreamReceiveGroup_vcMediaStreamDidDecryptionTimeOutForMKMRecovery___block_invoke;
  v8[3] = &unk_1E85F41D0;
  v8[4] = self;
  [(VCMediaStreamGroup *)self callDelegateWithBlock:v8];
}

- (void)setupMaxBitrateMap
{
  v26 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = self->super._mediaStreamInfoArray;
  v14 = [(NSArray *)obj countByEnumeratingWithState:&v22 objects:v21 count:16];
  if (v14)
  {
    v13 = *v23;
    do
    {
      v3 = 0;
      do
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = v3;
        v4 = *(*(&v22 + 1) + 8 * v3);
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v5 = [v4 streamConfigs];
        v6 = [v5 countByEnumeratingWithState:&v17 objects:v16 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v18;
          do
          {
            for (i = 0; i != v7; ++i)
            {
              if (*v18 != v8)
              {
                objc_enumerationMutation(v5);
              }

              v10 = *(*(&v17 + 1) + 8 * i);
              v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(objc_msgSend(v10, "multiwayConfig"), "maxNetworkBitrate")}];
              -[NSMutableDictionary setObject:forKeyedSubscript:](self->_streamToMaxNetworkBitrate, "setObject:forKeyedSubscript:", v11, [MEMORY[0x1E696AD98] numberWithUnsignedShort:{objc_msgSend(objc_msgSend(v10, "multiwayConfig"), "idsStreamID")}]);
            }

            v7 = [v5 countByEnumeratingWithState:&v17 objects:v16 count:16];
          }

          while (v7);
        }

        v3 = v15 + 1;
      }

      while (v15 + 1 != v14);
      v14 = [(NSArray *)obj countByEnumeratingWithState:&v22 objects:v21 count:16];
    }

    while (v14);
  }
}

- (void)notifyChangeInActiveMediaBitrateTo:(unsigned int)a3 from:(unsigned int)a4
{
  v33 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        optedInStreamID = self->_optedInStreamID;
        *buf = 136316418;
        v19 = v8;
        v20 = 2080;
        v21 = "[VCMediaStreamReceiveGroup notifyChangeInActiveMediaBitrateTo:from:]";
        v22 = 1024;
        v23 = 139;
        v24 = 2112;
        v25 = optedInStreamID;
        v26 = 1024;
        *v27 = a4;
        *&v27[4] = 1024;
        *&v27[6] = a3;
        v11 = " [%s] %s:%d Actual Network Bitrate optedInStreamID=%@ has been updated from %d bps, to %d bps";
        v12 = v9;
        v13 = 50;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = [(VCMediaStreamReceiveGroup *)self performSelector:sel_logPrefix];
    }

    else
    {
      v7 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v16 = self->_optedInStreamID;
        *buf = 136316930;
        v19 = v14;
        v20 = 2080;
        v21 = "[VCMediaStreamReceiveGroup notifyChangeInActiveMediaBitrateTo:from:]";
        v22 = 1024;
        v23 = 139;
        v24 = 2112;
        v25 = v7;
        v26 = 2048;
        *v27 = self;
        *&v27[8] = 2112;
        v28 = v16;
        v29 = 1024;
        v30 = a4;
        v31 = 1024;
        v32 = a3;
        v11 = " [%s] %s:%d %@(%p) Actual Network Bitrate optedInStreamID=%@ has been updated from %d bps, to %d bps";
        v12 = v15;
        v13 = 70;
        goto LABEL_11;
      }
    }
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __69__VCMediaStreamReceiveGroup_notifyChangeInActiveMediaBitrateTo_from___block_invoke;
  v17[3] = &unk_1E85F41D0;
  v17[4] = self;
  [(VCMediaStreamGroup *)self callDelegateWithBlock:v17];
}

- (id)streamConfigForStreamID:(unsigned __int16)a3
{
  v3 = a3;
  v27 = *MEMORY[0x1E69E9840];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  mediaStreamInfoArray = self->super._mediaStreamInfoArray;
  v5 = [(NSArray *)mediaStreamInfoArray countByEnumeratingWithState:&v23 objects:v22 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v24;
  while (2)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v24 != v7)
      {
        objc_enumerationMutation(mediaStreamInfoArray);
      }

      v9 = *(*(&v23 + 1) + 8 * i);
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v10 = [v9 streamConfigs];
      v11 = [v10 countByEnumeratingWithState:&v18 objects:v17 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v19;
LABEL_8:
        v14 = 0;
        while (1)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v18 + 1) + 8 * v14);
          if ([objc_msgSend(v15 "multiwayConfig")] == v3 || objc_msgSend(objc_msgSend(v15, "multiwayConfig"), "hasRepairedStreamID") && objc_msgSend(objc_msgSend(v15, "multiwayConfig"), "repairedStreamID") == v3)
          {
            return v15;
          }

          if (v12 == ++v14)
          {
            v12 = [v10 countByEnumeratingWithState:&v18 objects:v17 count:16];
            if (v12)
            {
              goto LABEL_8;
            }

            break;
          }
        }
      }
    }

    v6 = [(NSArray *)mediaStreamInfoArray countByEnumeratingWithState:&v23 objects:v22 count:16];
    v15 = 0;
    if (v6)
    {
      continue;
    }

    return v15;
  }
}

- (void)initWithConfig:(void *)a1 .cold.1(void *a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
LABEL_11:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    [a1 performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

- (void)initWithConfig:(void *)a1 .cold.2(void *a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
LABEL_11:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    [a1 performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

- (void)vcMediaStreamDidRTPTimeOut:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d stream=%p", v2, v3, v4, v5);
}

- (void)vcMediaStreamDidRTCPTimeOut:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d stream=%p", v2, v3, v4, v5);
}

- (void)vcMediaStreamDidDecryptionTimeOut:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d stream=%p", v2, v3, v4, v5);
}

- (void)vcMediaStreamDidDecryptionTimeOutForMKMRecovery:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d stream:%p", v2, v3, v4, v5);
}

@end