@interface VCCaptionsManagerStreamTokenClientList
- (VCCaptionsManagerStreamTokenClientList)initWithStreamToken:(int64_t)token captionsSource:(id)source;
- (id)newContext;
- (void)dealloc;
@end

@implementation VCCaptionsManagerStreamTokenClientList

- (VCCaptionsManagerStreamTokenClientList)initWithStreamToken:(int64_t)token captionsSource:(id)source
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = VCCaptionsManagerStreamTokenClientList;
  v6 = [(VCCaptionsManagerStreamTokenClientList *)&v8 init];
  if (v6)
  {
    v6->_clientContextList = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6->_streamToken = token;
    v6->_captionsSource = source;
    *&v6->_sourceLocaleEligibleToBeModified = 1;
  }

  return v6;
}

- (id)newContext
{
  *&v37[3] = *MEMORY[0x1E69E9840];
  v3 = [[VCCaptionsClientContext alloc] initWithStreamToken:self->_streamToken];
  [(NSMutableArray *)self->_clientContextList addObject:v3];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v25 = 136316418;
        v26 = v5;
        v27 = 2080;
        v28 = "[VCCaptionsManagerStreamTokenClientList newContext]";
        v29 = 1024;
        v30 = 156;
        v31 = 2048;
        v32 = v3;
        v33 = 1024;
        *v34 = [(VCCaptionsClientContext *)v3 streamToken];
        *&v34[4] = 1024;
        *&v34[6] = [(VCCaptionsClientContext *)v3 uniqueIdentifier];
        v7 = " [%s] %s:%d New context=%p, streamToken=%d, uniqueIdentifier=%d";
        v8 = v6;
        v9 = 50;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, v7, &v25, v9);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = [(VCCaptionsManagerStreamTokenClientList *)self performSelector:sel_logPrefix];
    }

    else
    {
      v4 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v25 = 136316930;
        v26 = v10;
        v27 = 2080;
        v28 = "[VCCaptionsManagerStreamTokenClientList newContext]";
        v29 = 1024;
        v30 = 156;
        v31 = 2112;
        v32 = v4;
        v33 = 2048;
        *v34 = self;
        *&v34[8] = 2048;
        v35 = v3;
        v36 = 1024;
        v37[0] = [(VCCaptionsClientContext *)v3 streamToken];
        LOWORD(v37[1]) = 1024;
        *(&v37[1] + 2) = [(VCCaptionsClientContext *)v3 uniqueIdentifier];
        v7 = " [%s] %s:%d %@(%p) New context=%p, streamToken=%d, uniqueIdentifier=%d";
        v8 = v11;
        v9 = 70;
        goto LABEL_11;
      }
    }
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        clientContextList = self->_clientContextList;
        v16 = [(NSMutableArray *)clientContextList count];
        v25 = 136316162;
        v26 = v13;
        v27 = 2080;
        v28 = "[VCCaptionsManagerStreamTokenClientList newContext]";
        v29 = 1024;
        v30 = 157;
        v31 = 2112;
        v32 = clientContextList;
        v33 = 2048;
        *v34 = v16;
        v17 = " [%s] %s:%d _clientContextList=%@ (count=%lu)";
        v18 = v14;
        v19 = 48;
LABEL_22:
        _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, v17, &v25, v19);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v12 = [(VCCaptionsManagerStreamTokenClientList *)self performSelector:sel_logPrefix];
    }

    else
    {
      v12 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v20 = VRTraceErrorLogLevelToCSTR();
      v21 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v22 = self->_clientContextList;
        v23 = [(NSMutableArray *)v22 count];
        v25 = 136316674;
        v26 = v20;
        v27 = 2080;
        v28 = "[VCCaptionsManagerStreamTokenClientList newContext]";
        v29 = 1024;
        v30 = 157;
        v31 = 2112;
        v32 = v12;
        v33 = 2048;
        *v34 = self;
        *&v34[8] = 2112;
        v35 = v22;
        v36 = 2048;
        *v37 = v23;
        v17 = " [%s] %s:%d %@(%p) _clientContextList=%@ (count=%lu)";
        v18 = v21;
        v19 = 68;
        goto LABEL_22;
      }
    }
  }

  return v3;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCCaptionsManagerStreamTokenClientList;
  [(VCCaptionsManagerStreamTokenClientList *)&v3 dealloc];
}

@end