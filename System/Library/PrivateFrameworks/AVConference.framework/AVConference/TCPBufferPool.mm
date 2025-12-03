@interface TCPBufferPool
- (TCPBufferPool)init;
- (char)getBufferFromPool:(int)pool;
- (void)dealloc;
- (void)monitorBufferPool;
- (void)returnBufferToPool:(char *)pool;
@end

@implementation TCPBufferPool

- (TCPBufferPool)init
{
  v11 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = TCPBufferPool;
  v2 = [(TCPBufferPool *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v4 = 0;
    v2->poolSize = 48;
    v2->tail = 0;
    v2->avail = 0;
    v2->head = 0;
    while (1)
    {
      v5 = malloc_type_malloc(0x18uLL, 0x1030040D5FA72FAuLL);
      v3->avail = v5;
      if (!v5)
      {
        break;
      }

      v3->avail->var0 = malloc_type_malloc(0x3E0uLL, 0x100004077774924uLL);
      avail = v3->avail;
      if (!avail->var0)
      {
        break;
      }

      *&avail->var1 = 992;
      head = v3->head;
      avail->var3 = head;
      v8 = v3->avail;
      if (!head)
      {
        v3->tail = v8;
      }

      v3->head = v8;
      if (++v4 >= v3->poolSize)
      {
        v3->poolLock = 0;
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

- (void)dealloc
{
  v6 = *MEMORY[0x1E69E9840];
  p_head = &self->head;
  for (i = self->head; i; i = self->head)
  {
    self->avail = i;
    self->head = i->var3;
    free(i->var0);
    free(self->avail);
  }

  *p_head = 0;
  p_head[1] = 0;
  p_head[2] = 0;
  v5.receiver = self;
  v5.super_class = TCPBufferPool;
  [(TCPBufferPool *)&v5 dealloc];
}

- (char)getBufferFromPool:(int)pool
{
  LODWORD(v3) = pool;
  v31 = *MEMORY[0x1E69E9840];
  _os_nospin_lock_lock();
  avail = self->avail;
  if (avail)
  {
    if (avail->var1 >= v3)
    {
      var0 = avail->var0;
      if (!avail->var0)
      {
        goto LABEL_40;
      }

      goto LABEL_32;
    }

    var0 = malloc_type_malloc(v3, 0x100004077774924uLL);
    if (var0)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        v9 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            var1 = self->avail->var1;
            v21 = 136316162;
            v22 = v7;
            v23 = 2080;
            v24 = "[TCPBufferPool getBufferFromPool:]";
            v25 = 1024;
            v26 = 1424;
            v27 = 1024;
            v28 = var1;
            v29 = 1024;
            v30 = v3;
            _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d TCPTUNNEL: replace %d with %d.", &v21, 0x28u);
          }
        }

        else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v20 = self->avail->var1;
          v21 = 136316162;
          v22 = v7;
          v23 = 2080;
          v24 = "[TCPBufferPool getBufferFromPool:]";
          v25 = 1024;
          v26 = 1424;
          v27 = 1024;
          v28 = v20;
          v29 = 1024;
          v30 = v3;
          _os_log_debug_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEBUG, " [%s] %s:%d TCPTUNNEL: replace %d with %d.", &v21, 0x28u);
        }
      }

      free(self->avail->var0);
      self->avail->var0 = var0;
      avail = self->avail;
      avail->var1 = v3;
LABEL_32:
      ++avail->var2;
      self->avail = avail->var3;
      goto LABEL_40;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [TCPBufferPool getBufferFromPool:];
      }
    }

LABEL_37:
    var0 = 0;
    goto LABEL_40;
  }

  if (self->poolSize == 1024)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v21 = 136315650;
        v22 = v11;
        v23 = 2080;
        v24 = "[TCPBufferPool getBufferFromPool:]";
        v25 = 1024;
        v26 = 1392;
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d TCPTUNNEL: buffer pool limit reached.", &v21, 0x1Cu);
      }
    }

    goto LABEL_37;
  }

  v13 = malloc_type_malloc(0x18uLL, 0x1030040D5FA72FAuLL);
  if (!v13)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [TCPBufferPool getBufferFromPool:];
      }
    }

    goto LABEL_37;
  }

  if (v3 <= 992)
  {
    v3 = 992;
  }

  else
  {
    v3 = v3;
  }

  v14 = malloc_type_malloc(v3, 0x100004077774924uLL);
  var0 = v14;
  if (!v14)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [TCPBufferPool getBufferFromPool:];
      }
    }

    free(v13);
    goto LABEL_37;
  }

  v13->var0 = v14;
  v13->var1 = v3;
  v13->var2 = 1;
  v13->var3 = 0;
  self->tail->var3 = v13;
  self->tail = v13;
  ++self->poolSize;
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x1E6986650];
    v17 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        poolSize = self->poolSize;
        v21 = 136315906;
        v22 = v15;
        v23 = 2080;
        v24 = "[TCPBufferPool getBufferFromPool:]";
        v25 = 1024;
        v26 = 1411;
        v27 = 1024;
        v28 = poolSize;
        _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d TCPTUNNEL: add new buffer to the pool %d", &v21, 0x22u);
      }
    }

    else if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [TCPBufferPool getBufferFromPool:];
    }
  }

LABEL_40:
  _os_nospin_lock_unlock();
  return var0;
}

- (void)returnBufferToPool:(char *)pool
{
  _os_nospin_lock_lock();
  avail = self->avail;
  head = self->head;
  if (head)
  {
    v7 = head == avail;
  }

  else
  {
    v7 = 1;
  }

  if (v7 || head->var0 == pool)
  {
    selfCopy = 0;
  }

  else
  {
    do
    {
      selfCopy = head;
      head = head->var3;
      if (head)
      {
        v9 = head == avail;
      }

      else
      {
        v9 = 1;
      }
    }

    while (!v9 && head->var0 != pool);
  }

  if (avail == head)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [TCPBufferPool returnBufferToPool:];
      }
    }
  }

  else
  {
    tail = self->tail;
    if (head == tail)
    {
      if (!avail)
      {
        self->avail = tail;
      }
    }

    else
    {
      if (!selfCopy)
      {
        selfCopy = self;
      }

      selfCopy->head = head->var3;
      head->var3 = 0;
      self->tail->var3 = head;
      self->tail = head;
      if (!self->avail)
      {
        self->avail = head;
      }
    }
  }

  _os_nospin_lock_unlock();
}

- (void)monitorBufferPool
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)getBufferFromPool:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

- (void)getBufferFromPool:.cold.2()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_2_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)getBufferFromPool:.cold.3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

- (void)getBufferFromPool:.cold.4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_15_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/TCPTunnelClient.m:%d: TCPTUNNEL: malloc error for a new node", v2, v3, v4, v5, v6);
}

- (void)returnBufferToPool:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

@end