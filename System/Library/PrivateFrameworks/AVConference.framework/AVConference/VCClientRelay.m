@interface VCClientRelay
- (BOOL)relayIDSPacket;
- (BOOL)relayVTPPacket;
- (VCClientRelay)initWithIDSSocket:(int)a3;
- (int)setupVTPSocket;
- (int)startRelay;
- (int)stopRelay;
- (void)dealloc;
- (void)relayIDSPacket;
- (void)relayVTPPacket;
- (void)setConnectionResult:(tagCONNRESULT *)a3;
- (void)setupVTPSocket;
- (void)startRelay;
@end

@implementation VCClientRelay

- (VCClientRelay)initWithIDSSocket:(int)a3
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = VCClientRelay;
  result = [(VCClientRelay *)&v5 init];
  if (result)
  {
    result->_vtpSocket = -1;
    result->_vtpReceiveTID = 0;
    if (a3 != -1)
    {
      result->_idsSocket = a3;
      return result;
    }
  }

  else
  {
    close(a3);
  }

  return 0;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  idsSocket = self->_idsSocket;
  if (idsSocket != -1)
  {
    close(idsSocket);
  }

  v4.receiver = self;
  v4.super_class = VCClientRelay;
  [(VCClientRelay *)&v4 dealloc];
}

- (void)setConnectionResult:(tagCONNRESULT *)a3
{
  if (a3)
  {
    memcpy(&self->_connectionResult, a3, sizeof(self->_connectionResult));
    self->_isConnectionResultSet = 1;
  }
}

- (int)setupVTPSocket
{
  v50 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v40 = v4;
        v41 = 2080;
        v42 = "[VCClientRelay setupVTPSocket]";
        v43 = 1024;
        v44 = 69;
        v6 = " [%s] %s:%d ";
        v7 = v5;
        v8 = 28;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(VCClientRelay *)self performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v40 = v9;
        v41 = 2080;
        v42 = "[VCClientRelay setupVTPSocket]";
        v43 = 1024;
        v44 = 69;
        v45 = 2112;
        *v46 = v3;
        *&v46[8] = 2048;
        *&v46[10] = self;
        v6 = " [%s] %s:%d %@(%p) ";
        v7 = v10;
        v8 = 48;
        goto LABEL_11;
      }
    }
  }

  v36 = 0xAAAAAAAAAAAAAAAALL;
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v49[1] = v11;
  v49[2] = v11;
  v49[0] = v11;
  memset(v38, 170, 6);
  if (self->_isConnectionResultSet)
  {
    v12 = (self->_connectionResult.mbLocal.iFlags & 1) == 0;
    memset(&v37.ai_socktype, 0, 32);
    if (v12)
    {
      ai_family = 2;
    }

    else
    {
      ai_family = 30;
    }

    v37.ai_next = 0;
    v37.ai_flags = 1;
    v37.ai_family = ai_family;
    v37.ai_socktype = 2;
    IPToString();
    __sprintf_chk(v38, 0, 6uLL, "%u", self->_connectionResult.mbLocal.wPort);
    v14 = getaddrinfo(v49, v38, &v37, &v36);
    if (v14 || (v15 = v36) == 0)
    {
      v17 = v14 | 0xB0270000;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v20 = VRTraceErrorLogLevelToCSTR();
        v21 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316674;
          v40 = v20;
          v41 = 2080;
          v42 = "[VCClientRelay setupVTPSocket]";
          v43 = 1024;
          v44 = 96;
          v45 = 1024;
          *v46 = 96;
          *&v46[4] = 2080;
          *&v46[6] = v49;
          *&v46[14] = 2080;
          *&v46[16] = v38;
          v47 = 1024;
          v48 = v17;
          v22 = " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCClientRelay.m:%d: getaddrinfo(%s,%s) failed(%08X)";
LABEL_28:
          v23 = v21;
          v24 = 60;
LABEL_29:
          _os_log_error_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_ERROR, v22, buf, v24);
        }
      }
    }

    else
    {
      v16 = v36;
      while (v16->ai_family != ai_family)
      {
        v16 = v16->ai_next;
        if (!v16)
        {
          ai_family = v36->ai_family;
          goto LABEL_31;
        }
      }

      v15 = v16;
LABEL_31:
      v25 = VTP_Socket(ai_family, v15->ai_socktype, v15->ai_protocol);
      self->_vtpSocket = v25;
      if (v25 == -1)
      {
        v17 = *__error() | 0xC0270000;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [VCClientRelay setupVTPSocket];
          }
        }

        freeaddrinfo(v36);
        goto LABEL_48;
      }

      VTP_SetSocketMode(v25, 2);
      v26 = VTP_Bind(self->_vtpSocket, v15->ai_addr, v15->ai_addrlen);
      freeaddrinfo(v36);
      if (v26 != -1)
      {
        iFlags = self->_connectionResult.mbDst.iFlags;
        memset(&v37, 0, sizeof(v37));
        if (iFlags)
        {
          v28 = 30;
        }

        else
        {
          v28 = 2;
        }

        v37.ai_family = v28;
        v37.ai_socktype = 2;
        IPToString();
        __sprintf_chk(v38, 0, 6uLL, "%u", self->_connectionResult.mbDst.wPort);
        v29 = getaddrinfo(v49, v38, &v37, &v36);
        if (v29 != -1)
        {
          v30 = v36;
          if (v36)
          {
            memcpy(&self->_vtpDestination, v36->ai_addr, v36->ai_addrlen);
            self->_vtpDestinationLength = v30->ai_addrlen;
            freeaddrinfo(v30);
            return 0;
          }
        }

        v17 = v29 | 0xB0270000;
        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          goto LABEL_48;
        }

        v33 = VRTraceErrorLogLevelToCSTR();
        v21 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_48;
        }

        *buf = 136316674;
        v40 = v33;
        v41 = 2080;
        v42 = "[VCClientRelay setupVTPSocket]";
        v43 = 1024;
        v44 = 137;
        v45 = 1024;
        *v46 = 137;
        *&v46[4] = 2080;
        *&v46[6] = v49;
        *&v46[14] = 2080;
        *&v46[16] = v38;
        v47 = 1024;
        v48 = v17;
        v22 = " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCClientRelay.m:%d: getaddrinfo(%s,%s) failed(%08X)";
        goto LABEL_28;
      }

      v17 = *__error() | 0xC0270000;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v31 = VRTraceErrorLogLevelToCSTR();
        v32 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316418;
          v40 = v31;
          v41 = 2080;
          v42 = "[VCClientRelay setupVTPSocket]";
          v43 = 1024;
          v44 = 124;
          v45 = 1024;
          *v46 = 124;
          *&v46[4] = 2080;
          *&v46[6] = v38;
          *&v46[14] = 1024;
          *&v46[16] = v17;
          v22 = " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCClientRelay.m:%d: bind on %s failed(%08X)";
          v23 = v32;
          v24 = 50;
          goto LABEL_29;
        }
      }
    }

LABEL_48:
    vtpSocket = self->_vtpSocket;
    if (vtpSocket != -1)
    {
      VTP_Close(vtpSocket);
    }

    return v17;
  }

  v17 = -2144927727;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v18 = VRTraceErrorLogLevelToCSTR();
    v19 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [(VCClientRelay *)v18 setupVTPSocket];
    }
  }

  return v17;
}

- (int)startRelay
{
  v31 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v22 = v4;
        v23 = 2080;
        v24 = "[VCClientRelay startRelay]";
        v25 = 1024;
        v26 = 157;
        v6 = " [%s] %s:%d ";
        v7 = v5;
        v8 = 28;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(VCClientRelay *)self performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v22 = v9;
        v23 = 2080;
        v24 = "[VCClientRelay startRelay]";
        v25 = 1024;
        v26 = 157;
        v27 = 2112;
        v28 = v3;
        v29 = 2048;
        v30 = self;
        v6 = " [%s] %s:%d %@(%p) ";
        v7 = v10;
        v8 = 48;
        goto LABEL_11;
      }
    }
  }

  v11 = [(VCClientRelay *)self setupVTPSocket];
  if (v11 < 0)
  {
    v14 = v11;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCClientRelay startRelay];
      }
    }
  }

  else
  {
    self->_stopVTPReceiveThread = 0;
    values = @"com.apple.videoconference.VCClientRelayVTPReceiveProc";
    v12 = CFDictionaryCreate(0, MEMORY[0x1E69631F0], &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v13 = FigThreadCreate();
    if (v12)
    {
      CFRelease(v12);
    }

    if (v13)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCClientRelay startRelay];
        }
      }

      v14 = v13 | 0xA0270000;
    }

    else
    {
      CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(58);
      v16 = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCClientRelay.idsReadQueue", 0, CustomRootQueue);
      self->_idsReadQueue = v16;
      if (v16)
      {
        v17 = dispatch_source_create(MEMORY[0x1E69E96F8], self->_idsSocket, 0, v16);
        self->_idsReadSource = v17;
        if (v17)
        {
          v19[0] = MEMORY[0x1E69E9820];
          v19[1] = 3221225472;
          v19[2] = __27__VCClientRelay_startRelay__block_invoke;
          v19[3] = &unk_1E85F3778;
          v19[4] = self;
          dispatch_source_set_event_handler(v17, v19);
          dispatch_resume(self->_idsReadSource);
          if (!VTP_SetClientRelayVFD(self->_connectionResult.dwCallID, self->_vtpSocket))
          {
            return 0;
          }

          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              [VCClientRelay startRelay];
            }
          }

          v14 = *__error() | 0xC0270000;
        }

        else
        {
          v14 = -2144927740;
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              [VCClientRelay startRelay];
            }
          }
        }
      }

      else
      {
        v14 = -2144927740;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [VCClientRelay startRelay];
          }
        }
      }
    }
  }

  [(VCClientRelay *)self stopRelay];
  return v14;
}

- (int)stopRelay
{
  v25 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 136315650;
        *&v16[4] = v4;
        v17 = 2080;
        v18 = "[VCClientRelay stopRelay]";
        v19 = 1024;
        v20 = 218;
        v6 = " [%s] %s:%d ";
        v7 = v5;
        v8 = 28;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, v16, v8);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(VCClientRelay *)self performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 136316162;
        *&v16[4] = v9;
        v17 = 2080;
        v18 = "[VCClientRelay stopRelay]";
        v19 = 1024;
        v20 = 218;
        v21 = 2112;
        v22 = v3;
        v23 = 2048;
        v24 = self;
        v6 = " [%s] %s:%d %@(%p) ";
        v7 = v10;
        v8 = 48;
        goto LABEL_11;
      }
    }
  }

  *v16 = 0xAAAAAAAAAAAAAAAALL;
  if (self->_isConnectionResultSet)
  {
    VTP_SetClientRelayVFD(self->_connectionResult.dwCallID, -1);
  }

  vtpSocket = self->_vtpSocket;
  if (vtpSocket != -1)
  {
    VTP_Close(vtpSocket);
    self->_vtpSocket = -1;
  }

  self->_stopVTPReceiveThread = 1;
  if (self->_vtpReceiveTID)
  {
    FigThreadJoin();
    self->_vtpReceiveTID = 0;
  }

  idsReadSource = self->_idsReadSource;
  if (idsReadSource)
  {
    dispatch_source_cancel(idsReadSource);
    v13 = self->_idsReadSource;
    if (v13)
    {
      dispatch_release(v13);
      self->_idsReadSource = 0;
    }
  }

  idsReadQueue = self->_idsReadQueue;
  if (idsReadQueue)
  {
    dispatch_release(idsReadQueue);
    self->_idsReadQueue = 0;
  }

  return 0;
}

- (BOOL)relayIDSPacket
{
  v47 = *MEMORY[0x1E69E9840];
  memset(__b, 170, sizeof(__b));
  v3 = recv(self->_idsSocket, __b, 0x5C0uLL, 0);
  if (v3 == -1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCClientRelay relayIDSPacket];
      }
    }

    return 0;
  }

  else
  {
    memset(v45, 0, sizeof(v45));
    v4 = VTP_Sendto(self->_vtpSocket, __b, v3, 0, &self->_vtpDestination, self->_vtpDestinationLength, v45);
    v5 = v4 == v3;
    if (v4 != v3)
    {
      ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
      if (ErrorLogLevelForModule >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCClientRelay relayIDSPacket];
        }
      }

      return v5;
    }

    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 8)
      {
        return v5;
      }

      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      v10 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          return v5;
        }

        vtpSocket = self->_vtpSocket;
        idsSocket = self->_idsSocket;
        v29 = 136316674;
        v30 = v8;
        v31 = 2080;
        v32 = "[VCClientRelay relayIDSPacket]";
        v33 = 1024;
        v34 = 265;
        v35 = 1024;
        *v36 = idsSocket;
        *&v36[4] = 1024;
        *&v36[6] = v3;
        LOWORD(v37) = 1024;
        *(&v37 + 2) = vtpSocket;
        HIWORD(v37) = 1024;
        *v38 = v3;
        v13 = " [%s] %s:%d recv(%d) = %d, sent(%d) = (%d)";
        v14 = v9;
        v15 = 52;
LABEL_23:
        _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, v13, &v29, v15);
        return v5;
      }

      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        return v5;
      }

      v28 = self->_vtpSocket;
      v27 = self->_idsSocket;
      v29 = 136316674;
      v30 = v8;
      v31 = 2080;
      v32 = "[VCClientRelay relayIDSPacket]";
      v33 = 1024;
      v34 = 265;
      v35 = 1024;
      *v36 = v27;
      *&v36[4] = 1024;
      *&v36[6] = v3;
      LOWORD(v37) = 1024;
      *(&v37 + 2) = v28;
      HIWORD(v37) = 1024;
      *v38 = v3;
      v23 = " [%s] %s:%d recv(%d) = %d, sent(%d) = (%d)";
      v24 = v9;
      v25 = 52;
LABEL_29:
      _os_log_debug_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEBUG, v23, &v29, v25);
      return v5;
    }

    if (objc_opt_respondsToSelector())
    {
      v6 = [(VCClientRelay *)self performSelector:sel_logPrefix];
    }

    else
    {
      v6 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x1E6986650];
      v18 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          return v5;
        }

        v20 = self->_vtpSocket;
        v19 = self->_idsSocket;
        v29 = 136317186;
        v30 = v16;
        v31 = 2080;
        v32 = "[VCClientRelay relayIDSPacket]";
        v33 = 1024;
        v34 = 265;
        v35 = 2112;
        *v36 = v6;
        *&v36[8] = 2048;
        v37 = self;
        *v38 = 1024;
        *&v38[2] = v19;
        v39 = 1024;
        v40 = v3;
        v41 = 1024;
        v42 = v20;
        v43 = 1024;
        v44 = v3;
        v13 = " [%s] %s:%d %@(%p) recv(%d) = %d, sent(%d) = (%d)";
        v14 = v17;
        v15 = 72;
        goto LABEL_23;
      }

      if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        return v5;
      }

      v22 = self->_vtpSocket;
      v21 = self->_idsSocket;
      v29 = 136317186;
      v30 = v16;
      v31 = 2080;
      v32 = "[VCClientRelay relayIDSPacket]";
      v33 = 1024;
      v34 = 265;
      v35 = 2112;
      *v36 = v6;
      *&v36[8] = 2048;
      v37 = self;
      *v38 = 1024;
      *&v38[2] = v21;
      v39 = 1024;
      v40 = v3;
      v41 = 1024;
      v42 = v22;
      v43 = 1024;
      v44 = v3;
      v23 = " [%s] %s:%d %@(%p) recv(%d) = %d, sent(%d) = (%d)";
      v24 = v17;
      v25 = 72;
      goto LABEL_29;
    }
  }

  return v5;
}

- (BOOL)relayVTPPacket
{
  v51 = *MEMORY[0x1E69E9840];
  v33 = 0;
  memset(v50, 0, sizeof(v50));
  vtpSocket = self->_vtpSocket;
  if (__darwin_check_fd_set_overflow(vtpSocket, v50, 0))
  {
    *(v50 + ((vtpSocket >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << vtpSocket;
  }

  v4 = VTP_Select((self->_vtpSocket + 1), v50, 0, 0, 0);
  if (v4 != -1)
  {
    if (VTP_Recvfrom(self->_vtpSocket, &v33))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCClientRelay relayVTPPacket];
        }
      }

      return v4 != -1;
    }

    v5 = send(self->_idsSocket, *(v33 + 67), *(v33 + 66), 0);
    v6 = v5;
    if (v5 != *(v33 + 66) && VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCClientRelay relayVTPPacket];
      }
    }

    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 8)
      {
        goto LABEL_31;
      }

      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      v10 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = *(v33 + 66);
          v12 = self->_vtpSocket;
          idsSocket = self->_idsSocket;
          *buf = 136316674;
          v35 = v8;
          v36 = 2080;
          v37 = "[VCClientRelay relayVTPPacket]";
          v38 = 1024;
          v39 = 297;
          v40 = 1024;
          *v41 = v12;
          *&v41[4] = 1024;
          *&v41[6] = v11;
          LOWORD(v42) = 1024;
          *(&v42 + 2) = idsSocket;
          HIWORD(v42) = 1024;
          *v43 = v6;
          v14 = " [%s] %s:%d recv(%d) = %d, sent(%d) = (%d)";
          v15 = v9;
          v16 = 52;
LABEL_27:
          _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
        }

LABEL_31:
        VTP_ReleasePacket(&v33);
        return v4 != -1;
      }

      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_31;
      }

      v30 = *(v33 + 66);
      v31 = self->_vtpSocket;
      v32 = self->_idsSocket;
      *buf = 136316674;
      v35 = v8;
      v36 = 2080;
      v37 = "[VCClientRelay relayVTPPacket]";
      v38 = 1024;
      v39 = 297;
      v40 = 1024;
      *v41 = v31;
      *&v41[4] = 1024;
      *&v41[6] = v30;
      LOWORD(v42) = 1024;
      *(&v42 + 2) = v32;
      HIWORD(v42) = 1024;
      *v43 = v6;
      v26 = " [%s] %s:%d recv(%d) = %d, sent(%d) = (%d)";
      v27 = v9;
      v28 = 52;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v7 = [(VCClientRelay *)self performSelector:sel_logPrefix];
      }

      else
      {
        v7 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 8)
      {
        goto LABEL_31;
      }

      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      v19 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = *(v33 + 66);
          v21 = self->_vtpSocket;
          v22 = self->_idsSocket;
          *buf = 136317186;
          v35 = v17;
          v36 = 2080;
          v37 = "[VCClientRelay relayVTPPacket]";
          v38 = 1024;
          v39 = 297;
          v40 = 2112;
          *v41 = v7;
          *&v41[8] = 2048;
          v42 = self;
          *v43 = 1024;
          *&v43[2] = v21;
          v44 = 1024;
          v45 = v20;
          v46 = 1024;
          v47 = v22;
          v48 = 1024;
          v49 = v6;
          v14 = " [%s] %s:%d %@(%p) recv(%d) = %d, sent(%d) = (%d)";
          v15 = v18;
          v16 = 72;
          goto LABEL_27;
        }

        goto LABEL_31;
      }

      if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_31;
      }

      v23 = *(v33 + 66);
      v24 = self->_vtpSocket;
      v25 = self->_idsSocket;
      *buf = 136317186;
      v35 = v17;
      v36 = 2080;
      v37 = "[VCClientRelay relayVTPPacket]";
      v38 = 1024;
      v39 = 297;
      v40 = 2112;
      *v41 = v7;
      *&v41[8] = 2048;
      v42 = self;
      *v43 = 1024;
      *&v43[2] = v24;
      v44 = 1024;
      v45 = v23;
      v46 = 1024;
      v47 = v25;
      v48 = 1024;
      v49 = v6;
      v26 = " [%s] %s:%d %@(%p) recv(%d) = %d, sent(%d) = (%d)";
      v27 = v18;
      v28 = 72;
    }

    _os_log_debug_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEBUG, v26, buf, v28);
    goto LABEL_31;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCClientRelay relayVTPPacket];
    }
  }

  return v4 != -1;
}

- (void)setupVTPSocket
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  HIWORD(v7) = v0;
  OUTLINED_FUNCTION_4_20(&dword_1DB56E000, v1, v2, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCClientRelay.m:%d: socket failed(%08X)", v3, v4, v5, v6, v7);
}

- (void)startRelay
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  HIWORD(v7) = v0;
  OUTLINED_FUNCTION_4_20(&dword_1DB56E000, v1, v2, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCClientRelay.m:%d: setupVTPSocket failed(%x)", v3, v4, v5, v6, v7);
}

- (void)relayIDSPacket
{
  __error();
  OUTLINED_FUNCTION_6_39();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

- (void)relayVTPPacket
{
  __error();
  OUTLINED_FUNCTION_27_7();
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Eu);
}

@end