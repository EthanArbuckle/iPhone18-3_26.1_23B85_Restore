@interface VCSandboxedURL
+ (id)deserialize:(id)deserialize;
+ (id)stringFromAccessType:(unsigned __int8)type;
- (BOOL)issueSandboxExtensionForPath:(id)path;
- (VCSandboxedURL)initWithCoder:(id)coder;
- (VCSandboxedURL)initWithURL:(id)l accessType:(unsigned __int8)type;
- (const)extensionClass;
- (id)consumeToken;
- (id)description;
- (id)serialize;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)serialize;
@end

@implementation VCSandboxedURL

- (const)extensionClass
{
  accessType = self->_accessType;
  if (accessType == 2)
  {
    v5 = MEMORY[0x1E69E9BB0];
    return *v5;
  }

  if (accessType == 1)
  {
    v5 = MEMORY[0x1E69E9BA8];
    return *v5;
  }

  if (self->_accessType)
  {
    return 0;
  }

  result = 0;
  self->_tokenConsumed = 1;
  return result;
}

- (BOOL)issueSandboxExtensionForPath:(id)path
{
  v34 = *MEMORY[0x1E69E9840];
  extensionClass = [(VCSandboxedURL *)self extensionClass];
  if (!extensionClass)
  {
    goto LABEL_15;
  }

  [path UTF8String];
  v6 = sandbox_extension_issue_file();
  if (!v6)
  {
    [(VCSandboxedURL *)path issueSandboxExtensionForPath:buf, &v20];
LABEL_19:
    extensionClass = *buf;
    v18 = v20;
    goto LABEL_16;
  }

  extensionClass = v6;
  v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v6];
  self->_urlToken = v7;
  if (!v7)
  {
    [(VCSandboxedURL *)extensionClass issueSandboxExtensionForPath:buf, &v20];
    goto LABEL_19;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 6)
    {
      goto LABEL_15;
    }

    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    urlToken = self->_urlToken;
    *buf = 136316162;
    *&buf[4] = v9;
    v22 = 2080;
    v23 = "[VCSandboxedURL issueSandboxExtensionForPath:]";
    v24 = 1024;
    v25 = 64;
    v26 = 2112;
    v27 = urlToken;
    v28 = 2112;
    selfCopy = path;
    v12 = " [%s] %s:%d Successfully issued token=%@ for path=%@";
    v13 = v10;
    v14 = 48;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v8 = [(VCSandboxedURL *)self performSelector:sel_logPrefix];
    }

    else
    {
      v8 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 6)
    {
      goto LABEL_15;
    }

    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v17 = self->_urlToken;
    *buf = 136316674;
    *&buf[4] = v15;
    v22 = 2080;
    v23 = "[VCSandboxedURL issueSandboxExtensionForPath:]";
    v24 = 1024;
    v25 = 64;
    v26 = 2112;
    v27 = v8;
    v28 = 2048;
    selfCopy = self;
    v30 = 2112;
    v31 = v17;
    v32 = 2112;
    pathCopy2 = path;
    v12 = " [%s] %s:%d %@(%p) Successfully issued token=%@ for path=%@";
    v13 = v16;
    v14 = 68;
  }

  _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
LABEL_15:
  v18 = 1;
LABEL_16:
  free(extensionClass);
  return v18;
}

- (VCSandboxedURL)initWithURL:(id)l accessType:(unsigned __int8)type
{
  v26 = *MEMORY[0x1E69E9840];
  self->_urlTokenHandle = -1;
  if (!l)
  {
    [VCSandboxedURL initWithURL:buf accessType:?];
LABEL_16:
    v8 = *buf;
    goto LABEL_17;
  }

  if (type >= 3u)
  {
    [(VCSandboxedURL *)type initWithURL:buf accessType:?];
    goto LABEL_16;
  }

  path = [l path];
  v16.receiver = self;
  v16.super_class = VCSandboxedURL;
  v7 = [(VCSandboxedURL *)&v16 initFileURLWithPath:path];
  if (!v7)
  {
    [VCSandboxedURL initWithURL:path accessType:buf];
    goto LABEL_16;
  }

  v8 = v7;
  v7->_accessType = type;
  if (![(VCSandboxedURL *)v7 issueSandboxExtensionForPath:path])
  {
LABEL_17:

    return 0;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    __str = 0;
    asprintf(&__str, "Issued token for instance=%s", [-[VCSandboxedURL description](v8 "description")]);
    if (__str)
    {
      __lasts = 0;
      v9 = strtok_r(__str, "\n", &__lasts);
      v10 = MEMORY[0x1E6986650];
      do
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v11 = VRTraceErrorLogLevelToCSTR();
          v12 = *v10;
          if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316162;
            *&buf[4] = v11;
            v18 = 2080;
            v19 = "[VCSandboxedURL initWithURL:accessType:]";
            v20 = 1024;
            v21 = 91;
            v22 = 2080;
            v23 = "";
            v24 = 2080;
            v25 = v9;
            _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s %s", buf, 0x30u);
          }
        }

        v9 = strtok_r(0, "\n", &__lasts);
      }

      while (v9);
      free(__str);
    }
  }

  return v8;
}

+ (id)stringFromAccessType:(unsigned __int8)type
{
  if (type > 2u)
  {
    v5 = "Invalid";
  }

  else
  {
    v5 = off_1E85F6FB0[type];
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%s(%hhu)", v5, type, v3, v4];
}

- (id)description
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v12.receiver = self;
  v12.super_class = VCSandboxedURL;
  v6 = [(VCSandboxedURL *)&v12 description];
  v7 = [VCSandboxedURL stringFromAccessType:self->_accessType];
  v8 = "YES";
  if (self->_urlToken)
  {
    v9 = "YES";
  }

  else
  {
    v9 = "NO";
  }

  if (self->_deserialized)
  {
    v10 = "YES";
  }

  else
  {
    v10 = "NO";
  }

  if (!self->_tokenConsumed)
  {
    v8 = "NO";
  }
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  selfCopy = self;
  OUTLINED_FUNCTION_0();
  v4 = 125;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Bad usage: deserializer never consumed the token.", &v2, 0x1Cu);
}

- (id)serialize
{
  v42 = *MEMORY[0x1E69E9840];
  v27 = 0;
  if (self->_accessType - 3 <= 0xFFFFFFFD)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v22 = VRTraceErrorLogLevelToCSTR();
        v23 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [(VCSandboxedURL *)v22 serialize];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v21 = [(VCSandboxedURL *)self performSelector:sel_logPrefix];
      }

      else
      {
        v21 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v24 = VRTraceErrorLogLevelToCSTR();
        v25 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v26 = [VCSandboxedURL stringFromAccessType:self->_accessType];
          *buf = 136316418;
          v29 = v24;
          v30 = 2080;
          v31 = "[VCSandboxedURL serialize]";
          v32 = 1024;
          v33 = 154;
          v34 = 2112;
          selfCopy5 = v21;
          v36 = 2048;
          selfCopy6 = self;
          v38 = 2112;
          selfCopy7 = v26;
          _os_log_error_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Can't serialize for configured accessType=%@", buf, 0x3Au);
        }
      }
    }

    return 0;
  }

  v3 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v27];
  if (v27)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_12;
      }

      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_12;
      }

      *buf = 136316162;
      v29 = v5;
      v30 = 2080;
      v31 = "[VCSandboxedURL serialize]";
      v32 = 1024;
      v33 = 158;
      v34 = 2112;
      selfCopy5 = self;
      v36 = 2112;
      selfCopy6 = v27;
      v7 = " [%s] %s:%d Failed to serialize instance=%@, error=%@";
      v8 = v6;
      v9 = 48;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v4 = [(VCSandboxedURL *)self performSelector:sel_logPrefix];
      }

      else
      {
        v4 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_12;
      }

      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_12;
      }

      *buf = 136316674;
      v29 = v10;
      v30 = 2080;
      v31 = "[VCSandboxedURL serialize]";
      v32 = 1024;
      v33 = 158;
      v34 = 2112;
      selfCopy5 = v4;
      v36 = 2048;
      selfCopy6 = self;
      v38 = 2112;
      selfCopy7 = self;
      v40 = 2112;
      v41 = v27;
      v7 = " [%s] %s:%d %@(%p) Failed to serialize instance=%@, error=%@";
      v8 = v11;
      v9 = 68;
    }

    _os_log_error_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_ERROR, v7, buf, v9);
  }

LABEL_12:
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v29 = v13;
        v30 = 2080;
        v31 = "[VCSandboxedURL serialize]";
        v32 = 1024;
        v33 = 161;
        v34 = 2112;
        selfCopy5 = self;
        v15 = " [%s] %s:%d Successfully serialized instance=%@";
        v16 = v14;
        v17 = 38;
LABEL_22:
        _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v12 = [(VCSandboxedURL *)self performSelector:sel_logPrefix];
    }

    else
    {
      v12 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316418;
        v29 = v18;
        v30 = 2080;
        v31 = "[VCSandboxedURL serialize]";
        v32 = 1024;
        v33 = 161;
        v34 = 2112;
        selfCopy5 = v12;
        v36 = 2048;
        selfCopy6 = self;
        v38 = 2112;
        selfCopy7 = self;
        v15 = " [%s] %s:%d %@(%p) Successfully serialized instance=%@";
        v16 = v19;
        v17 = 58;
        goto LABEL_22;
      }
    }
  }

  return v3;
}

+ (id)deserialize:(id)deserialize
{
  v39 = *MEMORY[0x1E69E9840];
  v24 = 0;
  v4 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:deserialize error:&v24];
  v5 = v24;
  v6 = objc_opt_class();
  if (v5)
  {
    if (v6 == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        return 0;
      }

      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      *buf = 136316162;
      v26 = v9;
      v27 = 2080;
      v28 = "+[VCSandboxedURL deserialize:]";
      v29 = 1024;
      v30 = 171;
      v31 = 2112;
      v32 = v4;
      v33 = 2112;
      selfCopy2 = v24;
      v11 = " [%s] %s:%d Failed to deserialize instance=%@, error=%@";
      v12 = v10;
      v13 = 48;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v7 = [self performSelector:sel_logPrefix];
      }

      else
      {
        v7 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        return 0;
      }

      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      *buf = 136316674;
      v26 = v14;
      v27 = 2080;
      v28 = "+[VCSandboxedURL deserialize:]";
      v29 = 1024;
      v30 = 171;
      v31 = 2112;
      v32 = v7;
      v33 = 2048;
      selfCopy2 = self;
      v35 = 2112;
      v36 = v4;
      v37 = 2112;
      v38 = v24;
      v11 = " [%s] %s:%d %@(%p) Failed to deserialize instance=%@, error=%@";
      v12 = v15;
      v13 = 68;
    }

    _os_log_error_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_ERROR, v11, buf, v13);
    return 0;
  }

  if (v6 == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v26 = v17;
        v27 = 2080;
        v28 = "+[VCSandboxedURL deserialize:]";
        v29 = 1024;
        v30 = 175;
        v31 = 2112;
        v32 = v4;
        v19 = " [%s] %s:%d Successfully deserialized instance=%@";
        v20 = v18;
        v21 = 38;
LABEL_23:
        _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, v19, buf, v21);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v8 = [self performSelector:sel_logPrefix];
    }

    else
    {
      v8 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v22 = VRTraceErrorLogLevelToCSTR();
      v23 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316418;
        v26 = v22;
        v27 = 2080;
        v28 = "+[VCSandboxedURL deserialize:]";
        v29 = 1024;
        v30 = 175;
        v31 = 2112;
        v32 = v8;
        v33 = 2048;
        selfCopy2 = self;
        v35 = 2112;
        v36 = v4;
        v19 = " [%s] %s:%d %@(%p) Successfully deserialized instance=%@";
        v20 = v23;
        v21 = 58;
        goto LABEL_23;
      }
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v23 = *MEMORY[0x1E69E9840];
  if (self->_tokenConsumed)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v6 = VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSandboxedURL encodeWithCoder:v6];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v4 = [(VCSandboxedURL *)self performSelector:sel_logPrefix];
      }

      else
      {
        v4 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          urlTokenHandle = self->_urlTokenHandle;
          *buf = 136316418;
          v12 = v7;
          v13 = 2080;
          v14 = "[VCSandboxedURL encodeWithCoder:]";
          v15 = 1024;
          v16 = 203;
          v17 = 2112;
          v18 = v4;
          v19 = 2048;
          selfCopy = self;
          v21 = 2048;
          v22 = urlTokenHandle;
          _os_log_error_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Bad usage: attempting to encode with a tokenHandle=%lld, we are within the consuming process.", buf, 0x3Au);
        }
      }
    }
  }

  else
  {
    v10.receiver = self;
    v10.super_class = VCSandboxedURL;
    [(VCSandboxedURL *)&v10 encodeWithCoder:?];
    [coder encodeBytes:&self->_accessType length:1 forKey:@"VCSandboxedURL_AccessType"];
    [coder encodeObject:self->_urlToken forKey:@"VCSandboxedURL_URLToken"];
  }
}

- (VCSandboxedURL)initWithCoder:(id)coder
{
  v31 = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = VCSandboxedURL;
  v4 = [(VCSandboxedURL *)&v18 initWithCoder:?];
  if (!v4)
  {
    [VCSandboxedURL initWithCoder:];
LABEL_25:

    return 0;
  }

  if (([coder containsValueForKey:@"VCSandboxedURL_AccessType"] & 1) == 0)
  {
    [VCSandboxedURL initWithCoder:v4];
    goto LABEL_25;
  }

  if (([coder containsValueForKey:@"VCSandboxedURL_URLToken"] & 1) == 0)
  {
    [VCSandboxedURL initWithCoder:v4];
    goto LABEL_25;
  }

  v17 = 0;
  v5 = [coder decodeBytesForKey:@"VCSandboxedURL_AccessType" returnedLength:&v17];
  if (v17 != 1)
  {
    [VCSandboxedURL initWithCoder:v4];
    goto LABEL_25;
  }

  v6 = *v5;
  v4->_accessType = v6;
  if (!v6)
  {
    v4->_tokenConsumed = 1;
  }

  v7 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"VCSandboxedURL_URLToken"];
  v4->_urlToken = v7;
  if (!v7)
  {
    [VCSandboxedURL initWithCoder:v4];
    goto LABEL_25;
  }

  v4->_deserialized = 1;
  if (objc_opt_class() == v4)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v20 = v9;
        v21 = 2080;
        v22 = "[VCSandboxedURL initWithCoder:]";
        v23 = 1024;
        v24 = 231;
        v25 = 2112;
        v26 = v4;
        v11 = " [%s] %s:%d Successfully deserialized instance=%@";
        v12 = v10;
        v13 = 38;
LABEL_18:
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v8 = [(VCSandboxedURL *)v4 performSelector:sel_logPrefix];
    }

    else
    {
      v8 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316418;
        v20 = v14;
        v21 = 2080;
        v22 = "[VCSandboxedURL initWithCoder:]";
        v23 = 1024;
        v24 = 231;
        v25 = 2112;
        v26 = v8;
        v27 = 2048;
        v28 = v4;
        v29 = 2112;
        v30 = v4;
        v11 = " [%s] %s:%d %@(%p) Successfully deserialized instance=%@";
        v12 = v15;
        v13 = 58;
        goto LABEL_18;
      }
    }
  }

  return v4;
}

- (id)consumeToken
{
  selfCopy = self;
  v56 = *MEMORY[0x1E69E9840];
  if (*(self + 65))
  {
    goto LABEL_16;
  }

  if ((*(self + 64) & 1) == 0)
  {
    if (objc_opt_class() != self)
    {
      if (OUTLINED_FUNCTION_28_0())
      {
        OUTLINED_FUNCTION_6_1();
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_49;
      }

      VRTraceErrorLogLevelToCSTR();
      v37 = *MEMORY[0x1E6986650];
      if (!OUTLINED_FUNCTION_40())
      {
        goto LABEL_49;
      }

      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      v25 = &dword_1DB56E000;
      v26 = " [%s] %s:%d %@(%p) Bad usage: attempting to consume a non-deserialized URL, we are within the issuing process.";
LABEL_42:
      v27 = &v44;
      v28 = v37;
LABEL_43:
      v29 = OS_LOG_TYPE_ERROR;
      v30 = 48;
      goto LABEL_48;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_49;
    }

    VRTraceErrorLogLevelToCSTR();
    v24 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_49;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    v48 = 138;
    v25 = &dword_1DB56E000;
    v26 = " [%s] %s:%d Bad usage: attempting to consume a non-deserialized URL, we are within the issuing process.";
LABEL_32:
    v27 = &v44;
    v28 = v24;
    v29 = OS_LOG_TYPE_ERROR;
    v30 = 28;
LABEL_48:
    _os_log_error_impl(v25, v28, v29, v26, v27, v30);
LABEL_49:
    self = 0;
    goto LABEL_16;
  }

  v3 = *(self + 6);
  if (!v3)
  {
    if (objc_opt_class() != selfCopy)
    {
      if (OUTLINED_FUNCTION_28_0())
      {
        OUTLINED_FUNCTION_6_1();
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_49;
      }

      VRTraceErrorLogLevelToCSTR();
      v37 = *MEMORY[0x1E6986650];
      if (!OUTLINED_FUNCTION_40())
      {
        goto LABEL_49;
      }

      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      v25 = &dword_1DB56E000;
      v26 = " [%s] %s:%d %@(%p) No urlToken on instance";
      goto LABEL_42;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_49;
    }

    VRTraceErrorLogLevelToCSTR();
    v24 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_49;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    v48 = 139;
    v25 = &dword_1DB56E000;
    v26 = " [%s] %s:%d No urlToken on instance";
    goto LABEL_32;
  }

  [v3 UTF8String];
  v4 = sandbox_extension_consume();
  selfCopy[7] = v4;
  v5 = objc_opt_class();
  if (v4 == -1)
  {
    if (v5 != selfCopy)
    {
      if (OUTLINED_FUNCTION_28_0())
      {
        v23 = OUTLINED_FUNCTION_6_1();
      }

      else
      {
        v23 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_49;
      }

      VRTraceErrorLogLevelToCSTR();
      if (!OUTLINED_FUNCTION_40())
      {
        goto LABEL_49;
      }

      v38 = selfCopy[6];
      v39 = __error();
      strerror(*v39);
      OUTLINED_FUNCTION_10();
      v46 = v40;
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_9_9();
      v49 = v23;
      v50 = 2048;
      v51 = selfCopy;
      v52 = v41;
      v53 = v38;
      v54 = v42;
      v55 = v43;
      OUTLINED_FUNCTION_24();
      v30 = 68;
      goto LABEL_48;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_49;
    }

    VRTraceErrorLogLevelToCSTR();
    v31 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_49;
    }

    v32 = selfCopy[6];
    v33 = __error();
    strerror(*v33);
    OUTLINED_FUNCTION_1_0();
    v46 = v34;
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_9_9();
    v49 = v32;
    v50 = v35;
    v51 = v36;
    v25 = &dword_1DB56E000;
    v26 = " [%s] %s:%d Failed to consume token=%@, error=%s";
    v27 = &v44;
    v28 = v31;
    goto LABEL_43;
  }

  if (v5 == selfCopy)
  {
    VRTraceGetErrorLogLevelForModule();
    self = OUTLINED_FUNCTION_17_8();
    if (v7 >= 6)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
      self = OUTLINED_FUNCTION_17_8();
      if (v10)
      {
        v44 = 136316162;
        v45 = v8;
        v46 = 2080;
        v47 = "[VCSandboxedURL consumeToken]";
        OUTLINED_FUNCTION_10_13();
        v49 = v11;
        v50 = 2048;
        v51 = v12;
        v13 = " [%s] %s:%d Successfully consumed token=%@ yielding urlTokenHandle=%lld";
        v14 = v9;
        v15 = 48;
LABEL_15:
        _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, v13, &v44, v15);
        self = selfCopy;
      }
    }
  }

  else
  {
    if (OUTLINED_FUNCTION_28_0())
    {
      v6 = OUTLINED_FUNCTION_6_1();
    }

    else
    {
      v6 = &stru_1F570E008;
    }

    VRTraceGetErrorLogLevelForModule();
    self = OUTLINED_FUNCTION_17_8();
    if (v16 >= 6)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
      self = OUTLINED_FUNCTION_17_8();
      if (v19)
      {
        v44 = 136316674;
        v45 = v17;
        v46 = 2080;
        v47 = "[VCSandboxedURL consumeToken]";
        OUTLINED_FUNCTION_10_13();
        v49 = v6;
        v50 = 2048;
        v51 = selfCopy;
        v52 = v20;
        v53 = v21;
        v54 = 2048;
        v55 = v22;
        v13 = " [%s] %s:%d %@(%p) Successfully consumed token=%@ yielding urlTokenHandle=%lld";
        v14 = v18;
        v15 = 68;
        goto LABEL_15;
      }
    }
  }

LABEL_16:
  *(selfCopy + 65) = 1;
  return self;
}

- (void)issueSandboxExtensionForPath:(_BYTE *)a3 .cold.1(uint64_t a1, void *a2, _BYTE *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_7();
      v9 = 63;
      v10 = v7;
      v11 = a1;
      _os_log_error_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to allocate string for token=%s", v8, 0x26u);
    }
  }

  *a3 = 0;
  *a2 = a1;
}

- (void)issueSandboxExtensionForPath:(_BYTE *)a3 .cold.2(uint64_t a1, void *a2, _BYTE *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v7 = __error();
      strerror(*v7);
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_9_9();
      v11 = a1;
      v12 = v8;
      v13 = v9;
      _os_log_error_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to issue token for path=%@, error=%s", v10, 0x30u);
    }
  }

  *a3 = 0;
  *a2 = 0;
}

- (void)initWithURL:(uint64_t)a1 accessType:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v3, v4, v5, v6, v7, 0x26u);
    }
  }

  *a2 = 0;
}

- (void)initWithURL:(void *)a3 accessType:.cold.2(unsigned __int8 a1, uint64_t a2, void *a3)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      [VCSandboxedURL stringFromAccessType:a1];
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v6, v7, v8, v9, v10, 0x26u);
    }
  }

  *a3 = a2;
}

- (void)initWithURL:(uint64_t)a1 accessType:(void *)a2 .cold.3(uint64_t a1, void *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);
    }
  }

  *a2 = a1;
}

- (void)serialize
{
  v10 = *MEMORY[0x1E69E9840];
  [VCSandboxedURL stringFromAccessType:*a2];
  OUTLINED_FUNCTION_11();
  v7 = v4;
  v8 = "[VCSandboxedURL serialize]";
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_29();
  v9 = v5;
  _os_log_error_impl(&dword_1DB56E000, a3, OS_LOG_TYPE_ERROR, " [%s] %s:%d Can't serialize for configured accessType=%@", v6, 0x26u);
}

- (void)encodeWithCoder:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = 136315906;
  v4 = a1;
  v5 = 2080;
  OUTLINED_FUNCTION_7();
  v6 = 203;
  v7 = 2048;
  v8 = v1;
  _os_log_error_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_ERROR, " [%s] %s:%d Bad usage: attempting to encode with a tokenHandle=%lld, we are within the consuming process.", &v3, 0x26u);
}

- (void)initWithCoder:(uint64_t)a1 .cold.1(uint64_t a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_34())
    {
      return;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (OUTLINED_FUNCTION_28_0())
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_24();
      v6 = 48;
      goto LABEL_11;
    }
  }
}

- (void)initWithCoder:(uint64_t)a1 .cold.2(uint64_t a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_34())
    {
      return;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (OUTLINED_FUNCTION_28_0())
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_24();
      v6 = 48;
      goto LABEL_11;
    }
  }
}

- (void)initWithCoder:(uint64_t)a1 .cold.3(uint64_t a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_34())
    {
      return;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (OUTLINED_FUNCTION_28_0())
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_24();
      v6 = 48;
      goto LABEL_11;
    }
  }
}

- (void)initWithCoder:(uint64_t)a1 .cold.4(uint64_t a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_34())
    {
      return;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (OUTLINED_FUNCTION_28_0())
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_24();
      v6 = 48;
      goto LABEL_11;
    }
  }
}

- (void)initWithCoder:.cold.5()
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