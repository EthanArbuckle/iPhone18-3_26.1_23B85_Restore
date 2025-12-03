@interface VCWiFiChannelSequenceMonitor
- (VCWiFiChannelSequenceMonitor)init;
- (int)activate;
- (int)copyAWDLChannelSequence:(id *)sequence twoPtFourGHzChannelCount:(int *)count fiveGHzChannelCount:(int *)channelCount dfsChannelCount:(int *)dfsChannelCount inactiveSlotCount:(int *)slotCount;
- (void)activate;
- (void)dealloc;
- (void)invalidate;
- (void)processNewChannelSequence:(id)sequence;
@end

@implementation VCWiFiChannelSequenceMonitor

- (VCWiFiChannelSequenceMonitor)init
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = VCWiFiChannelSequenceMonitor;
  v2 = [(VCWiFiChannelSequenceMonitor *)&v4 init];
  if (v2)
  {
    v2->_awdlStateMonitor = objc_alloc_init(MEMORY[0x1E69E30F8]);
    v2->_stateLock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (int)activate
{
  v8 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_stateLock);
  if ([(VCWiFiChannelSequenceMonitor *)self state])
  {
    [(VCWiFiChannelSequenceMonitor *)self activate];
    v4 = v7;
  }

  else
  {
    v3 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __40__VCWiFiChannelSequenceMonitor_activate__block_invoke;
    v6[3] = &unk_1E85F78F0;
    v6[4] = v3;
    [(WiFiP2PAWDLStateMonitor *)[(VCWiFiChannelSequenceMonitor *)self awdlStateMonitor] setChannelSequenceUpdatedEventHandler:v6];
    [(WiFiP2PAWDLStateMonitor *)[(VCWiFiChannelSequenceMonitor *)self awdlStateMonitor] beginMonitoring];
    v4 = 0;
    self->_state = 1;
  }

  os_unfair_lock_unlock(&self->_stateLock);
  return v4;
}

uint64_t __40__VCWiFiChannelSequenceMonitor_activate__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) strong];

  return [v3 processNewChannelSequence:a2];
}

- (void)invalidate
{
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_5_8();
LABEL_10:
        _os_log_impl(v2, v3, v4, v5, v6, v7);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      [self performSelector:sel_logPrefix];
    }

    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_0_0();
        OUTLINED_FUNCTION_4_6();
        goto LABEL_10;
      }
    }
  }
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  selfCopy = self;
  OUTLINED_FUNCTION_0();
  v4 = 80;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Not invalidated", &v2, 0x1Cu);
}

- (int)copyAWDLChannelSequence:(id *)sequence twoPtFourGHzChannelCount:(int *)count fiveGHzChannelCount:(int *)channelCount dfsChannelCount:(int *)dfsChannelCount inactiveSlotCount:(int *)slotCount
{
  v63 = *MEMORY[0x1E69E9840];
  v47 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v46 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v45 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  os_unfair_lock_lock(&self->_stateLock);
  if (self->_state != 1)
  {
    if (objc_opt_class() == self)
    {
      v22 = -2142175176;
      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        goto LABEL_29;
      }

      v26 = VRTraceErrorLogLevelToCSTR();
      v27 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_29;
      }

      *buf = 136315650;
      v54 = v26;
      v55 = 2080;
      v56 = "[VCWiFiChannelSequenceMonitor copyAWDLChannelSequence:twoPtFourGHzChannelCount:fiveGHzChannelCount:dfsChannelCount:inactiveSlotCount:]";
      v57 = 1024;
      v58 = 104;
      v28 = " [%s] %s:%d Not activated";
      v29 = v27;
      v30 = 28;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v24 = [(VCWiFiChannelSequenceMonitor *)self performSelector:sel_logPrefix];
      }

      else
      {
        v24 = &stru_1F570E008;
      }

      v22 = -2142175176;
      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        goto LABEL_29;
      }

      v36 = VRTraceErrorLogLevelToCSTR();
      v37 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_29;
      }

      *buf = 136316162;
      v54 = v36;
      v55 = 2080;
      v56 = "[VCWiFiChannelSequenceMonitor copyAWDLChannelSequence:twoPtFourGHzChannelCount:fiveGHzChannelCount:dfsChannelCount:inactiveSlotCount:]";
      v57 = 1024;
      v58 = 104;
      v59 = 2112;
      v60 = v24;
      v61 = 2048;
      selfCopy2 = self;
      v28 = " [%s] %s:%d %@(%p) Not activated";
      v29 = v37;
      v30 = 48;
    }

    _os_log_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_DEFAULT, v28, buf, v30);
    v13 = 0;
    v22 = -2142175176;
    goto LABEL_30;
  }

  if (![(VCWiFiChannelSequenceMonitor *)self currentChannelSequence])
  {
    v22 = -2142175215;
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        goto LABEL_29;
      }

      v31 = VRTraceErrorLogLevelToCSTR();
      v32 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_29;
      }

      *buf = 136315650;
      v54 = v31;
      v55 = 2080;
      v56 = "[VCWiFiChannelSequenceMonitor copyAWDLChannelSequence:twoPtFourGHzChannelCount:fiveGHzChannelCount:dfsChannelCount:inactiveSlotCount:]";
      v57 = 1024;
      v58 = 107;
      v33 = " [%s] %s:%d ChannelSequence update not received";
      v34 = v32;
      v35 = 28;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v25 = [(VCWiFiChannelSequenceMonitor *)self performSelector:sel_logPrefix];
      }

      else
      {
        v25 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        goto LABEL_29;
      }

      v38 = VRTraceErrorLogLevelToCSTR();
      v39 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_29;
      }

      *buf = 136316162;
      v54 = v38;
      v55 = 2080;
      v56 = "[VCWiFiChannelSequenceMonitor copyAWDLChannelSequence:twoPtFourGHzChannelCount:fiveGHzChannelCount:dfsChannelCount:inactiveSlotCount:]";
      v57 = 1024;
      v58 = 107;
      v59 = 2112;
      v60 = v25;
      v61 = 2048;
      selfCopy2 = self;
      v33 = " [%s] %s:%d %@(%p) ChannelSequence update not received";
      v34 = v39;
      v35 = 48;
    }

    _os_log_impl(&dword_1DB56E000, v34, OS_LOG_TYPE_DEFAULT, v33, buf, v35);
LABEL_29:
    v13 = 0;
    goto LABEL_30;
  }

  countCopy = count;
  channelCountCopy = channelCount;
  dfsChannelCountCopy = dfsChannelCount;
  sequenceCopy = sequence;
  v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](-[VCWiFiChannelSequenceMonitor currentChannelSequence](self, "currentChannelSequence"), "count")}];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  selfCopy3 = self;
  currentChannelSequence = [(VCWiFiChannelSequenceMonitor *)self currentChannelSequence];
  v15 = [(NSArray *)currentChannelSequence countByEnumeratingWithState:&v49 objects:v48 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = 0;
    v18 = *v50;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v50 != v18)
        {
          objc_enumerationMutation(currentChannelSequence);
        }

        v20 = *(*(&v49 + 1) + 8 * i);
        [v13 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(v20, "channelNumber"))}];
        v21 = v47;
        if (([v20 is2_4GHz] & 1) != 0 || (v21 = v46, objc_msgSend(v20, "is5GHz")))
        {
          [v21 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(v20, "channelNumber"))}];
        }

        if ([v20 isDFS])
        {
          [v45 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(v20, "channelNumber"))}];
        }

        if (![v20 channelNumber])
        {
          ++v17;
        }
      }

      v16 = [(NSArray *)currentChannelSequence countByEnumeratingWithState:&v49 objects:v48 count:16];
    }

    while (v16);
  }

  else
  {
    v17 = 0;
  }

  if (countCopy)
  {
    *countCopy = [v47 count];
  }

  self = selfCopy3;
  if (channelCountCopy)
  {
    *channelCountCopy = [v46 count];
  }

  if (dfsChannelCountCopy)
  {
    *dfsChannelCountCopy = [v45 count];
  }

  if (slotCount)
  {
    *slotCount = v17;
  }

  v22 = 0;
  if (sequenceCopy)
  {
    *sequenceCopy = v13;
    goto LABEL_29;
  }

LABEL_30:
  os_unfair_lock_unlock(&self->_stateLock);

  return v22;
}

- (void)processNewChannelSequence:(id)sequence
{
  v15 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_stateLock);
  if (self->_state == 1)
  {
    [(VCWiFiChannelSequenceMonitor *)self setCurrentChannelSequence:sequence];
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v7 = 136315906;
        v8 = v5;
        v9 = 2080;
        v10 = "[VCWiFiChannelSequenceMonitor processNewChannelSequence:]";
        v11 = 1024;
        v12 = 164;
        v13 = 2112;
        sequenceCopy = sequence;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d New WiFiChannelSequence=%@", &v7, 0x26u);
      }
    }
  }

  else
  {
    [VCWiFiChannelSequenceMonitor processNewChannelSequence:?];
  }

  os_unfair_lock_unlock(&self->_stateLock);
}

- (void)activate
{
  v19 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315650;
        v13 = v5;
        OUTLINED_FUNCTION_0();
        v14 = 48;
        v7 = " [%s] %s:%d Already activated";
        v8 = v6;
        v9 = 28;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, v7, &v12, v9);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = [self performSelector:sel_logPrefix];
    }

    else
    {
      v4 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136316162;
        v13 = v10;
        OUTLINED_FUNCTION_0();
        v14 = 48;
        v15 = 2112;
        v16 = v4;
        v17 = 2048;
        selfCopy = self;
        v7 = " [%s] %s:%d %@(%p) Already activated";
        v8 = v11;
        v9 = 48;
        goto LABEL_11;
      }
    }
  }

  *a2 = -2142175193;
}

- (void)processNewChannelSequence:(void *)a1 .cold.1(void *a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_5_8();
LABEL_10:
        _os_log_impl(v2, v3, v4, v5, v6, v7);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      [a1 performSelector:sel_logPrefix];
    }

    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_0_0();
        OUTLINED_FUNCTION_4_6();
        goto LABEL_10;
      }
    }
  }
}

@end