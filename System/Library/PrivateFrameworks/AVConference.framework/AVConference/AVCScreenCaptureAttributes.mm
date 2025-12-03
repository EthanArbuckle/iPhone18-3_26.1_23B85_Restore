@interface AVCScreenCaptureAttributes
- (AVCScreenCaptureAttributes)initWithConfiguration:(id)configuration;
- (CGRect)contentRect;
- (void)dealloc;
@end

@implementation AVCScreenCaptureAttributes

- (AVCScreenCaptureAttributes)initWithConfiguration:(id)configuration
{
  v26 = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = AVCScreenCaptureAttributes;
  v4 = [(AVCScreenCaptureAttributes *)&v20 init];
  if (!v4)
  {
    goto LABEL_24;
  }

  if (objc_opt_class() == v4)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        *&buf[4] = v6;
        *&buf[12] = 2080;
        *&buf[14] = "[AVCScreenCaptureAttributes initWithConfiguration:]";
        *&buf[22] = 1024;
        *&buf[24] = 22;
        *&buf[28] = 2112;
        *&buf[30] = configuration;
        v8 = " [%s] %s:%d configuration=%@";
        v9 = v7;
        v10 = 38;
LABEL_12:
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [v4 performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316418;
        *&buf[4] = v11;
        *&buf[12] = 2080;
        *&buf[14] = "[AVCScreenCaptureAttributes initWithConfiguration:]";
        *&buf[22] = 1024;
        *&buf[24] = 22;
        *&buf[28] = 2112;
        *&buf[30] = v5;
        v22 = 2048;
        v23 = v4;
        v24 = 2112;
        configurationCopy = configuration;
        v8 = " [%s] %s:%d %@(%p) configuration=%@";
        v9 = v12;
        v10 = 58;
        goto LABEL_12;
      }
    }
  }

  v13 = [configuration objectForKey:@"vcScreenCaptureAttributesStreamType"];
  if (!v13)
  {
    [AVCScreenCaptureAttributes initWithConfiguration:];
LABEL_24:

    return 0;
  }

  *(v4 + 2) = [v13 integerValue];
  v14 = [configuration objectForKey:@"vcScreenCaptureAttributesPixelScale"];
  if (!v14)
  {
    [AVCScreenCaptureAttributes initWithConfiguration:];
    goto LABEL_24;
  }

  [v14 floatValue];
  *(v4 + 2) = v15;
  v16 = [configuration objectForKey:@"vcScreenCaptureAttributesContentsRect"];
  if (!v16)
  {
    [AVCScreenCaptureAttributes initWithConfiguration:];
    goto LABEL_24;
  }

  memset(buf, 0, 32);
  CGRectMakeWithDictionaryRepresentation(v16, buf);
  v17 = *&buf[16];
  *(v4 + 24) = *buf;
  *(v4 + 40) = v17;
  if (!*(v4 + 2))
  {
    [AVCScreenCaptureAttributes initWithConfiguration:];
    return v4;
  }

  v18 = [configuration objectForKey:@"vcScreenCaptureAttributesDisplayID"];
  if (!v18)
  {
    [AVCScreenCaptureAttributes initWithConfiguration:];
    goto LABEL_24;
  }

  *(v4 + 3) = [v18 unsignedIntValue];
  return v4;
}

- (void)dealloc
{
  v22 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v13 = v4;
        v14 = 2080;
        v15 = "[AVCScreenCaptureAttributes dealloc]";
        v16 = 1024;
        v17 = 54;
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
      v3 = [(AVCScreenCaptureAttributes *)self performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v13 = v9;
        v14 = 2080;
        v15 = "[AVCScreenCaptureAttributes dealloc]";
        v16 = 1024;
        v17 = 54;
        v18 = 2112;
        v19 = v3;
        v20 = 2048;
        selfCopy = self;
        v6 = " [%s] %s:%d %@(%p) ";
        v7 = v10;
        v8 = 48;
        goto LABEL_11;
      }
    }
  }

  v11.receiver = self;
  v11.super_class = AVCScreenCaptureAttributes;
  [(AVCScreenCaptureAttributes *)&v11 dealloc];
}

- (CGRect)contentRect
{
  x = self->_contentRect.origin.x;
  y = self->_contentRect.origin.y;
  width = self->_contentRect.size.width;
  height = self->_contentRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)initWithConfiguration:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Display ID is not provided, but content type is display bound", v2, v3, v4, v5, v6);
    }
  }
}

- (void)initWithConfiguration:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    VRTraceErrorLogLevelToCSTR();
    v0 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      v2 = 38;
      _os_log_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d displayID ignored sinced contentType is not display bound", v1, 0x1Cu);
    }
  }
}

- (void)initWithConfiguration:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Contents rect is not provided", v2, v3, v4, v5, v6);
    }
  }
}

- (void)initWithConfiguration:.cold.4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Pixel scale is not provided", v2, v3, v4, v5, v6);
    }
  }
}

- (void)initWithConfiguration:.cold.5()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Content type is not provided", v2, v3, v4, v5, v6);
    }
  }
}

@end