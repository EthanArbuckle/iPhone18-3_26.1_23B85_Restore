@interface VCDatagramChannelMultiLink
- ($6CEBAC87C3A36A1533CE85C616D8CB68)newListItemWithNWConnection:(id)a3;
- (VCDatagramChannelMultiLink)initWithNWConnections:(id)a3 token:(unsigned int)a4 options:(id)a5 error:(id *)a6;
- (int)addConnection:(id)a3 error:(id *)a4;
- (int)removeConnection:(id)a3 error:(id *)a4;
- (int)removeConnectionProtected:(id)a3 error:(id *)a4;
- (int)start;
- (unint64_t)connectionsCount;
- (void)dealloc;
- (void)destroy;
- (void)invalidate;
- (void)setEventHandler:(id)a3;
- (void)setReadHandler:(id)a3;
- (void)start;
- (void)writeDatagram:(const void *)a3 datagramSize:(unsigned int)a4 datagramInfo:(id)a5 options:(void *)a6 completionHandler:(id)a7;
- (void)writeDatagrams:(const void *)a3 datagramsSize:(unsigned int *)a4 datagramsInfo:(id *)a5 datagramsCount:(int)a6 options:(void *)a7 completionHandler:(id)a8;
@end

@implementation VCDatagramChannelMultiLink

- (VCDatagramChannelMultiLink)initWithNWConnections:(id)a3 token:(unsigned int)a4 options:(id)a5 error:(id *)a6
{
  v14 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = VCDatagramChannelMultiLink;
  v9 = [(VCObject *)&v12 init:a3];
  if (!v9)
  {
    return v9;
  }

  if (![a3 count])
  {
    [VCDatagramChannelMultiLink initWithNWConnections:v9 token:? options:? error:?];
    return v13;
  }

  if ([a3 count] >= 8)
  {
    [VCDatagramChannelMultiLink initWithNWConnections:v9 token:a3 options:? error:?];
    return v13;
  }

  v9->_stateLock._os_unfair_lock_opaque = 0;
  if (!VCSingleLinkedListInitialize(&v9->_connections, _VCDatagramChannelMultilinkList_CompareEntries))
  {
    [VCDatagramChannelMultiLink initWithNWConnections:v9 token:? options:? error:?];
    return v13;
  }

  if ([a3 count])
  {
    v10 = 0;
    while (!-[VCDatagramChannelMultiLink addConnection:error:](v9, "addConnection:error:", [a3 objectAtIndexedSubscript:v10], a6))
    {
      if (++v10 >= [a3 count])
      {
        goto LABEL_9;
      }
    }

    [VCDatagramChannelMultiLink initWithNWConnections:v9 token:? options:? error:?];
    return v13;
  }

LABEL_9:
  v9->_token = a4;
  return v9;
}

- (void)destroy
{
  [(VCDatagramChannelMultiLink *)self invalidate];
}

- (void)dealloc
{
  v6 = *MEMORY[0x1E69E9840];
  eventHandler = self->_eventHandler;
  if (eventHandler)
  {
    _Block_release(eventHandler);
  }

  readHandler = self->_readHandler;
  if (readHandler)
  {
    _Block_release(readHandler);
  }

  [(VCDatagramChannelMultiLink *)self invalidate];
  v5.receiver = self;
  v5.super_class = VCDatagramChannelMultiLink;
  [(VCObject *)&v5 dealloc];
}

- ($6CEBAC87C3A36A1533CE85C616D8CB68)newListItemWithNWConnection:(id)a3
{
  v4 = malloc_type_calloc(1uLL, 0x10uLL, 0xA0040AFF93C70uLL);
  v5 = v4;
  if (v4)
  {
    v4->var1 = a3;
  }

  else
  {
    [VCDatagramChannelMultiLink newListItemWithNWConnection:];
  }

  return v5;
}

- (unint64_t)connectionsCount
{
  os_unfair_lock_lock(&self->_stateLock);
  v3 = [(VCDatagramChannelMultiLink *)self connectionsCountProtected];
  os_unfair_lock_unlock(&self->_stateLock);
  return v3;
}

- (int)addConnection:(id)a3 error:(id *)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  os_unfair_lock_lock(&self->_stateLock);
  if ([(VCDatagramChannelMultiLink *)self connectionsCountProtected]>= 7)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [(VCDatagramChannelMultiLink *)v14 addConnection:buf error:[(VCDatagramChannelMultiLink *)self connectionsCountProtected], v15];
      }
    }

    v12 = -2142371835;
  }

  else
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __50__VCDatagramChannelMultiLink_addConnection_error___block_invoke;
    v16[3] = &unk_1E85F3F50;
    v16[4] = a3;
    v16[5] = &v17;
    VCSingleLinkedListEnumerate(&self->_connections, v16);
    if (*(v18 + 24) == 1)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCDatagramChannelMultiLink addConnection:error:];
        }
      }

      v12 = -2142371799;
    }

    else
    {
      v6 = [(VCDatagramChannelMultiLink *)self newListItemWithNWConnection:a3];
      p_var0 = &v6->var0.var0;
      if (v6)
      {
        v8 = v6->var1;
        if (VCSingleLinkedListPush(&self->_connections, p_var0))
        {
          if (self->_isStarted)
          {
            [(VCDatagramChannelMultiLink *)self scheduleReceiveForConnection:a3];
          }

          if (VRTraceGetErrorLogLevelForModule() >= 6)
          {
            v9 = VRTraceErrorLogLevelToCSTR();
            v10 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v11 = [(VCDatagramChannelMultiLink *)self connectionsCountProtected];
              *buf = 136316418;
              v22 = v9;
              v23 = 2080;
              v24 = "[VCDatagramChannelMultiLink addConnection:error:]";
              v25 = 1024;
              v26 = 147;
              v27 = 2112;
              v28 = a3;
              v29 = 2112;
              v30 = self;
              v31 = 2048;
              v32 = v11;
              _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Added connection=%@ to the VCDatagramChannelMultilink instance=%@. Total number of connection=%lu", buf, 0x3Au);
            }
          }

          v12 = 0;
        }

        else
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              [VCDatagramChannelMultiLink addConnection:error:];
            }
          }

          v12 = -2142371837;
          free(p_var0);
        }
      }

      else
      {
        v12 = -2142371837;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [VCDatagramChannelMultiLink addConnection:error:];
          }
        }
      }
    }
  }

  os_unfair_lock_unlock(&self->_stateLock);
  _Block_object_dispose(&v17, 8);
  return v12;
}

uint64_t __50__VCDatagramChannelMultiLink_addConnection_error___block_invoke(uint64_t result, uint64_t a2, _BYTE *a3)
{
  if (*(a2 + 8) == *(result + 32))
  {
    *(*(*(result + 40) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

- (int)removeConnectionProtected:(id)a3 error:(id *)a4
{
  *&v28[11] = *MEMORY[0x1E69E9840];
  if (![(VCDatagramChannelMultiLink *)self connectionsCountProtected:a3])
  {
    [VCDatagramChannelMultiLink removeConnectionProtected:? error:?];
LABEL_11:
    v12 = v17;
    goto LABEL_13;
  }

  v6 = [(VCDatagramChannelMultiLink *)self newListItemWithNWConnection:a3];
  if (!v6)
  {
    [VCDatagramChannelMultiLink removeConnectionProtected:? error:?];
    goto LABEL_11;
  }

  v7 = v6;
  v8 = VCSingleLinkedListRemove(&self->_connections, v6);
  if (v8)
  {
    v9 = v8;

    free(v9);
    free(v7);
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v17 = 136316418;
        v18 = v10;
        v19 = 2080;
        v20 = "[VCDatagramChannelMultiLink removeConnectionProtected:error:]";
        v21 = 1024;
        v22 = 180;
        v23 = 2112;
        v24 = a3;
        v25 = 2112;
        v26 = self;
        v27 = 2048;
        *v28 = [(VCDatagramChannelMultiLink *)self connectionsCountProtected];
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Removed connection=%@ from VCDatagramChannelMultilink instance=%@. Total number of connection=%lu", &v17, 0x3Au);
      }
    }

    return 0;
  }

  [VCDatagramChannelMultiLink removeConnectionProtected:v7 error:?];
  v12 = -2142371818;
LABEL_13:
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v16 = [(VCDatagramChannelMultiLink *)self connectionsCountProtected];
      v17 = 136316674;
      v18 = v14;
      v19 = 2080;
      v20 = "[VCDatagramChannelMultiLink removeConnectionProtected:error:]";
      v21 = 1024;
      v22 = 182;
      v23 = 2112;
      v24 = a3;
      v25 = 2112;
      v26 = self;
      v27 = 1024;
      *v28 = v12;
      v28[2] = 2048;
      *&v28[3] = v16;
      _os_log_error_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to remove connection=%@ from VCDatagramChannelMultilink list=%@ with error %008x. Total number of connection=%lu", &v17, 0x40u);
    }
  }

  return v12;
}

- (int)removeConnection:(id)a3 error:(id *)a4
{
  os_unfair_lock_lock(&self->_stateLock);
  LODWORD(a4) = [(VCDatagramChannelMultiLink *)self removeConnectionProtected:a3 error:a4];
  os_unfair_lock_unlock(&self->_stateLock);
  return a4;
}

- (void)setReadHandler:(id)a3
{
  os_unfair_lock_lock(&self->_stateLock);
  readHandler = self->_readHandler;
  if (readHandler)
  {
    _Block_release(readHandler);
    self->_readHandler = 0;
  }

  if (a3)
  {
    v6 = _Block_copy(a3);
  }

  else
  {
    v6 = 0;
  }

  self->_readHandler = v6;

  os_unfair_lock_unlock(&self->_stateLock);
}

- (void)setEventHandler:(id)a3
{
  os_unfair_lock_lock(&self->_stateLock);
  eventHandler = self->_eventHandler;
  if (eventHandler)
  {
    _Block_release(eventHandler);
    self->_eventHandler = 0;
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

  os_unfair_lock_unlock(&self->_stateLock);
}

- (void)writeDatagram:(const void *)a3 datagramSize:(unsigned int)a4 datagramInfo:(id)a5 options:(void *)a6 completionHandler:(id)a7
{
  v9[6] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_stateLock);
  if ([(VCDatagramChannelMultiLink *)self connectionsCountProtected])
  {
    if (self->_isStarted)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __96__VCDatagramChannelMultiLink_writeDatagram_datagramSize_datagramInfo_options_completionHandler___block_invoke;
      v9[3] = &unk_1E85F3F78;
      v9[4] = self;
      v9[5] = a7;
      VCSingleLinkedListEnumerate(&self->_connections, v9);
      goto LABEL_4;
    }

    [VCDatagramChannelMultiLink writeDatagram:datagramSize:datagramInfo:options:completionHandler:];
  }

  else
  {
    [VCDatagramChannelMultiLink writeDatagram:datagramSize:datagramInfo:options:completionHandler:];
  }

  if (a7)
  {
    (*(a7 + 2))(a7, 0);
  }

LABEL_4:
  os_unfair_lock_unlock(&self->_stateLock);
}

uint64_t __96__VCDatagramChannelMultiLink_writeDatagram_datagramSize_datagramInfo_options_completionHandler___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (*(a2 + 8))
  {
    result = *(a1 + 40);
    if (result)
    {
      v5 = *(result + 16);

      return v5();
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __96__VCDatagramChannelMultiLink_writeDatagram_datagramSize_datagramInfo_options_completionHandler___block_invoke_cold_1();
      }
    }

    result = [*(a1 + 32) removeConnectionProtected:0 error:0];
    *a3 = 1;
  }

  return result;
}

- (void)writeDatagrams:(const void *)a3 datagramsSize:(unsigned int *)a4 datagramsInfo:(id *)a5 datagramsCount:(int)a6 options:(void *)a7 completionHandler:(id)a8
{
  v17 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315650;
      v12 = v9;
      v13 = 2080;
      v14 = "[VCDatagramChannelMultiLink writeDatagrams:datagramsSize:datagramsInfo:datagramsCount:options:completionHandler:]";
      v15 = 1024;
      v16 = 270;
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d This method should not be invoked!!!", &v11, 0x1Cu);
    }
  }

  if (a8)
  {
    (*(a8 + 2))(a8, 0);
  }
}

- (int)start
{
  v14 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_stateLock);
  if (self->_isStarted)
  {
    [(VCDatagramChannelMultiLink *)buf start];
    v3 = *buf;
  }

  else
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __35__VCDatagramChannelMultiLink_start__block_invoke;
    v7[3] = &unk_1E85F3FA0;
    v7[4] = self;
    VCSingleLinkedListEnumerate(&self->_connections, v7);
    v3 = 0;
    self->_isStarted = 1;
  }

  os_unfair_lock_unlock(&self->_stateLock);
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v9 = v4;
      v10 = 2080;
      v11 = "[VCDatagramChannelMultiLink start]";
      v12 = 1024;
      v13 = 300;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Started VCDatagramChannel_MultiLink", buf, 0x1Cu);
    }
  }

  return v3;
}

uint64_t __35__VCDatagramChannelMultiLink_start__block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v4 = *(a2 + 8);
  if (v4)
  {
    result = [*(a1 + 32) scheduleReceiveForConnection:*(a2 + 8)];
    if ((result & 1) == 0)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          __35__VCDatagramChannelMultiLink_start__block_invoke_cold_1();
        }
      }

      return [*(a1 + 32) removeConnectionProtected:v4 error:0];
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __35__VCDatagramChannelMultiLink_start__block_invoke_cold_2();
      }
    }

    result = [*(a1 + 32) removeConnectionProtected:0 error:0];
    *a3 = 1;
  }

  return result;
}

- (void)invalidate
{
  v15 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_stateLock);
  if (!self->_isStarted && VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315650;
      v10 = v3;
      v11 = 2080;
      v12 = "[VCDatagramChannelMultiLink invalidate]";
      v13 = 1024;
      v14 = 308;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Already stopped", &v9, 0x1Cu);
    }
  }

  self->_isStarted = 0;
  eventHandler = self->_eventHandler;
  if (eventHandler)
  {
    _Block_release(eventHandler);
    self->_eventHandler = 0;
  }

  readHandler = self->_readHandler;
  if (readHandler)
  {
    _Block_release(readHandler);
    self->_readHandler = 0;
  }

  v7 = VCSingleLinkedListPop(&self->_connections);
  if (v7)
  {
    v8 = v7;
    do
    {

      free(v8);
      v8 = VCSingleLinkedListPop(&self->_connections);
    }

    while (v8);
  }

  os_unfair_lock_unlock(&self->_stateLock);
}

- (void)initWithNWConnections:(void *)a1 token:options:error:.cold.1(void *a1)
{
  [a1 destroy];
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

- (void)initWithNWConnections:(void *)a1 token:options:error:.cold.2(void *a1)
{
  [a1 destroy];
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

- (void)initWithNWConnections:(void *)a1 token:(void *)a2 options:error:.cold.3(void *a1, void *a2)
{
  [a1 destroy];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      [a2 count];
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v3, v4, v5, v6, v7, 0x26u);
    }
  }

  OUTLINED_FUNCTION_20();
}

- (void)initWithNWConnections:(void *)a1 token:options:error:.cold.4(void *a1)
{
  [a1 destroy];
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

- (void)newListItemWithNWConnection:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to create new connection item", v2, v3, v4, v5, v6);
    }
  }
}

- (void)addConnection:error:.cold.1()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v3 = 138;
  OUTLINED_FUNCTION_26(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to add new connection item to the list of active connections", v2);
}

- (void)addConnection:error:.cold.2()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v3 = 133;
  OUTLINED_FUNCTION_26(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to create new connection item", v2);
}

- (void)addConnection:error:.cold.3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d Connection=%@ already exists in the active connection list");
}

- (void)addConnection:(uint64_t)a3 error:(os_log_t)log .cold.4(uint64_t a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 136315906;
  *(buf + 4) = a1;
  *(buf + 6) = 2080;
  *(buf + 14) = "[VCDatagramChannelMultiLink addConnection:error:]";
  *(buf + 11) = 1024;
  *(buf + 6) = 119;
  *(buf + 14) = 2048;
  *(buf + 30) = a3;
  _os_log_error_impl(&dword_1DB56E000, log, OS_LOG_TYPE_ERROR, " [%s] %s:%d Already max connection limit=%lu reached", buf, 0x26u);
}

- (void)removeConnectionProtected:(void *)a1 error:.cold.1(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
    }
  }

  free(a1);
}

- (void)removeConnectionProtected:(_DWORD *)a1 error:.cold.2(_DWORD *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
    }
  }

  *a1 = -2142371837;
}

- (void)removeConnectionProtected:(_DWORD *)a1 error:.cold.3(_DWORD *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
    }
  }

  *a1 = -2142371818;
}

- (void)writeDatagram:datagramSize:datagramInfo:options:completionHandler:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d No connections present", v2, v3, v4, v5, v6);
    }
  }
}

- (void)writeDatagram:datagramSize:datagramInfo:options:completionHandler:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d No connections present", v2, v3, v4, v5, v6);
    }
  }
}

void __96__VCDatagramChannelMultiLink_writeDatagram_datagramSize_datagramInfo_options_completionHandler___block_invoke_cold_1()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v3 = 244;
  OUTLINED_FUNCTION_26(&dword_1DB56E000, v0, v1, " [%s] %s:%d nw_connection is NULL!!! Should never happen!!!", v2);
}

- (void)start
{
  v5 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    v2 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      v4 = 280;
      _os_log_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Already started", v3, 0x1Cu);
    }
  }

  *a1 = -2142371791;
}

void __35__VCDatagramChannelMultiLink_start__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to schedule receive on connection=%@");
}

void __35__VCDatagramChannelMultiLink_start__block_invoke_cold_2()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v3 = 285;
  OUTLINED_FUNCTION_26(&dword_1DB56E000, v0, v1, " [%s] %s:%d nw_connection is NULL!!! Should never happen!!!", v2);
}

@end