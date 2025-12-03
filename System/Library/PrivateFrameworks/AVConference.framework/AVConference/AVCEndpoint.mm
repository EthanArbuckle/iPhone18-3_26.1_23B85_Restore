@interface AVCEndpoint
+ (id)newEndpointXPCDictionaryWithAVCEndpoint:(id)endpoint;
- (AVCEndpoint)initWithNWEndpoint:(id)endpoint;
- (id)description;
- (void)dealloc;
@end

@implementation AVCEndpoint

- (AVCEndpoint)initWithNWEndpoint:(id)endpoint
{
  v23 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = AVCEndpoint;
  v4 = [(AVCEndpoint *)&v12 init];
  if (!v4)
  {
    [AVCEndpoint initWithNWEndpoint:];
LABEL_22:

    return 0;
  }

  if (!endpoint)
  {
    if (objc_opt_class() == v4)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 2)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        if (VRTraceIsOSFaultDisabled())
        {
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [AVCEndpoint initWithNWEndpoint:v7];
          }
        }

        else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
        {
          [AVCEndpoint initWithNWEndpoint:v7];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v6 = [(AVCEndpoint *)v4 performSelector:sel_logPrefix];
      }

      else
      {
        v6 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 2)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        IsOSFaultDisabled = VRTraceIsOSFaultDisabled();
        v10 = *MEMORY[0x1E6986650];
        log = *MEMORY[0x1E6986650];
        if (IsOSFaultDisabled)
        {
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            *buf = 136316162;
            v14 = v8;
            v15 = 2080;
            v16 = "[AVCEndpoint initWithNWEndpoint:]";
            v17 = 1024;
            v18 = 31;
            v19 = 2112;
            v20 = v6;
            v21 = 2048;
            v22 = v4;
            _os_log_error_impl(&dword_1DB56E000, log, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) The endpoint provided is invalid", buf, 0x30u);
          }
        }

        else if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
        {
          *buf = 136316162;
          v14 = v8;
          v15 = 2080;
          v16 = "[AVCEndpoint initWithNWEndpoint:]";
          v17 = 1024;
          v18 = 31;
          v19 = 2112;
          v20 = v6;
          v21 = 2048;
          v22 = v4;
          _os_log_fault_impl(&dword_1DB56E000, log, OS_LOG_TYPE_FAULT, " [%s] %s:%d %@(%p) The endpoint provided is invalid", buf, 0x30u);
        }
      }
    }

    goto LABEL_22;
  }

  v4->_endpoint = nw_retain(endpoint);
  v4->_description = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%s", nw_endpoint_get_description()];
  v4->_rtpSSRC = 0;
  return v4;
}

- (id)description
{
  v2 = self->_description;

  return v2;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  nw_release(self->_endpoint);

  v3.receiver = self;
  v3.super_class = AVCEndpoint;
  [(AVCEndpoint *)&v3 dealloc];
}

+ (id)newEndpointXPCDictionaryWithAVCEndpoint:(id)endpoint
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    [endpoint endpoint];
    v5 = nw_endpoint_copy_dictionary();
    if (v5)
    {
      v6 = v5;
      xpc_dictionary_set_value(v4, "vcMediaStreamAVCEndpointNWEndpoint", v5);
      xpc_release(v6);
      valuePtr = [endpoint rtpSSRC];
      v7 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
      if (v7)
      {
        v8 = v7;
        v9 = _CFXPCCreateXPCObjectFromCFObject();
        if (v9)
        {
          v10 = v9;
          xpc_dictionary_set_value(v4, "vcMediaStreamAVCEndpointSSRC", v9);
          xpc_release(v10);
        }

        else
        {
          +[AVCEndpoint newEndpointXPCDictionaryWithAVCEndpoint:];
        }

        CFRelease(v8);
      }

      else
      {
        +[AVCEndpoint newEndpointXPCDictionaryWithAVCEndpoint:];
      }
    }

    else
    {
      +[AVCEndpoint newEndpointXPCDictionaryWithAVCEndpoint:];
    }
  }

  else
  {
    +[AVCEndpoint newEndpointXPCDictionaryWithAVCEndpoint:];
  }

  return v4;
}

- (void)initWithNWEndpoint:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 31;
  _os_log_fault_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_FAULT, " [%s] %s:%d The endpoint provided is invalid", &v2, 0x1Cu);
}

- (void)initWithNWEndpoint:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 31;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d The endpoint provided is invalid", &v2, 0x1Cu);
}

- (void)initWithNWEndpoint:.cold.3()
{
  v17 = *MEMORY[0x1E69E9840];
  if (objc_opt_class())
  {
    if (objc_opt_respondsToSelector())
    {
      [0 performSelector:sel_logPrefix];
    }

    if (VRTraceGetErrorLogLevelForModule() < 2)
    {
      return;
    }

    v8 = VRTraceErrorLogLevelToCSTR();
    IsOSFaultDisabled = VRTraceIsOSFaultDisabled();
    v10 = *MEMORY[0x1E6986650];
    if (IsOSFaultDisabled)
    {
      if (OUTLINED_FUNCTION_34())
      {
        v14 = 136316162;
        v15 = v8;
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_3_27();
        v2 = &dword_1DB56E000;
        v5 = " [%s] %s:%d %@(%p) Failed to initialize the AVCEndpoint";
        v6 = &v14;
        v3 = v10;
        v4 = OS_LOG_TYPE_ERROR;
        v7 = 48;
        goto LABEL_12;
      }

      return;
    }

    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v14 = 136316162;
    v15 = v8;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3_27();
    v11 = " [%s] %s:%d %@(%p) Failed to initialize the AVCEndpoint";
    v12 = v10;
    v13 = 48;
LABEL_18:
    _os_log_fault_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_FAULT, v11, &v14, v13);
    return;
  }

  if (VRTraceGetErrorLogLevelForModule() < 2)
  {
    return;
  }

  VRTraceErrorLogLevelToCSTR();
  v0 = VRTraceIsOSFaultDisabled();
  v1 = *MEMORY[0x1E6986650];
  if (!v0)
  {
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
    {
      return;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    v16 = 30;
    v11 = " [%s] %s:%d Failed to initialize the AVCEndpoint";
    v12 = v1;
    v13 = 28;
    goto LABEL_18;
  }

  if (OUTLINED_FUNCTION_34())
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    v16 = 30;
    OUTLINED_FUNCTION_2_0();
LABEL_12:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

+ (void)newEndpointXPCDictionaryWithAVCEndpoint:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

+ (void)newEndpointXPCDictionaryWithAVCEndpoint:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

+ (void)newEndpointXPCDictionaryWithAVCEndpoint:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

+ (void)newEndpointXPCDictionaryWithAVCEndpoint:.cold.4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

@end