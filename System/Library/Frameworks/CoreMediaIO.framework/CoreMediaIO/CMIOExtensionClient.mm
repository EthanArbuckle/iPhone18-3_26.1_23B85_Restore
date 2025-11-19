@interface CMIOExtensionClient
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (BOOL)isEqual:(id)a3;
- (CMIOExtensionClient)initWithXPCDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)copyXPCDictionary;
- (id)description;
- (id)redactedDescription;
- (int64_t)authorizationStatusForMediaType:(unsigned int)a3;
- (void)copyXPCDictionary;
- (void)dealloc;
@end

@implementation CMIOExtensionClient

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMIOExtensionClient;
  [(CMIOExtensionClient *)&v3 dealloc];
}

- (id)description
{
  v2 = self->_description;

  return v2;
}

- (id)redactedDescription
{
  v2 = self->_redactedDescription;

  return v2;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  v3 = *&self->var0[6];
  *retstr->var0 = *&self->var0[2];
  *&retstr->var0[4] = v3;
  return self;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v6) = 1;
    return v6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_23;
  }

  if (a3)
  {
    [a3 auditToken];
  }

  clientID = self->_clientID;
  if (clientID == [a3 clientID] || (v6 = -[NSUUID isEqual:](self->_clientID, "isEqual:", objc_msgSend(a3, "clientID"))) != 0)
  {
    signingID = self->_signingID;
    if (signingID == [a3 signingID] || (v6 = -[NSString isEqual:](self->_signingID, "isEqual:", objc_msgSend(a3, "signingID"))) != 0)
    {
      if (*self->_auditToken.val == v15 && *&self->_auditToken.val[2] == 0 && *&self->_auditToken.val[4] == 0 && *&self->_auditToken.val[6] == 0)
      {
        pid = self->_pid;
        if (pid == [a3 pid])
        {
          isToProxy = self->_isToProxy;
          if (isToProxy == [a3 isToProxy])
          {
            isFromProxyExtensionManager = self->_isFromProxyExtensionManager;
            LOBYTE(v6) = isFromProxyExtensionManager == [a3 isFromProxyExtensionManager];
            return v6;
          }
        }
      }

LABEL_23:
      LOBYTE(v6) = 0;
    }
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CMIOExtensionClient allocWithZone:a3];
  pid = self->_pid;
  clientID = self->_clientID;
  stAttribution = self->_stAttribution;
  isToProxy = self->_isToProxy;
  isFromProxyExtensionManager = self->_isFromProxyExtensionManager;
  v10 = *&self->_auditToken.val[4];
  v12[0] = *self->_auditToken.val;
  v12[1] = v10;
  return [(CMIOExtensionClient *)v4 initWithPID:pid clientID:clientID auditToken:v12 stAttribution:stAttribution isToProxy:isToProxy isFromProxyExtensionManager:isFromProxyExtensionManager];
}

- (id)copyXPCDictionary
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v3, "pid", self->_pid);
  if (cmio_XPCMessageSetCFString(v3, "clientID", [(NSUUID *)self->_clientID UUIDString]))
  {
    v4 = CMIOLog();
    if (v4)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        [CMIOExtensionClient copyXPCDictionary];
      }
    }
  }

  signingID = self->_signingID;
  if (signingID)
  {
    if (cmio_XPCMessageSetCFString(v3, "signingID", signingID))
    {
      v6 = CMIOLog();
      if (v6)
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          [CMIOExtensionClient copyXPCDictionary];
        }
      }
    }
  }

  return v3;
}

- (CMIOExtensionClient)initWithXPCDictionary:(id)a3
{
  if (a3)
  {
    uint64 = xpc_dictionary_get_uint64(a3, "pid");
    cf = 0;
    if (cmio_XPCMessageCopyCFString(a3, "clientID", &cf))
    {
      v6 = CMIOLog();
      if (v6)
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          [CMIOExtensionClient initWithXPCDictionary:];
        }
      }
    }

    if (cf)
    {
      v7 = objc_alloc(MEMORY[0x277CCAD78]);
      v8 = [v7 initWithUUIDString:cf];
      CFRelease(cf);
    }

    else
    {
      v8 = objc_alloc_init(MEMORY[0x277CCAD78]);
    }

    memset(v12, 0, sizeof(v12));
    v9 = [(CMIOExtensionClient *)self initWithPID:uint64 clientID:v8 auditToken:v12 stAttribution:0 isToProxy:1 isFromProxyExtensionManager:0];
    if (!v9->_signingID)
    {
      *&v12[0] = 0;
      if (cmio_XPCMessageCopyCFString(a3, "signingID", v12))
      {
        v10 = CMIOLog();
        if (v10)
        {
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            [CMIOExtensionClient initWithXPCDictionary:];
          }
        }
      }

      if (*&v12[0])
      {
        v9->_signingID = *&v12[0];
      }
    }

    [(CMIOExtensionClient *)v9 setMicrophoneAuthorizationStatus:3];
    [(CMIOExtensionClient *)v9 setCameraAuthorizationStatus:3];
  }

  else
  {

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"nil xpc dictionary"];
    return 0;
  }

  return v9;
}

- (int64_t)authorizationStatusForMediaType:(unsigned int)a3
{
  v21 = *MEMORY[0x277D85DE8];
  if (a3 == 1936684398)
  {
    result = self->_microphoneAuthorizationStatus;
    if (result)
    {
      goto LABEL_24;
    }

    v6 = MEMORY[0x277D6C1A8];
  }

  else
  {
    result = self->_cameraAuthorizationStatus;
    if (result)
    {
      goto LABEL_24;
    }

    v6 = MEMORY[0x277D6C120];
  }

  v7 = *v6;
  v8 = *&self->_auditToken.val[4];
  *v18 = *self->_auditToken.val;
  *&v18[16] = v8;
  v9 = TCCAccessPreflightWithAuditToken();
  v10 = CMIOLog();
  if (v10)
  {
    v11 = v10;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProperties.m");
      pid = self->_pid;
      *v18 = 136316163;
      *&v18[4] = v12;
      *&v18[12] = 1024;
      *&v18[14] = 2593;
      *&v18[18] = 2080;
      *&v18[20] = "[CMIOExtensionClient authorizationStatusForMediaType:]";
      *&v18[28] = 1024;
      *&v18[30] = v9;
      v19 = 1025;
      v20 = pid;
      _os_log_impl(&dword_22EA08000, v11, OS_LOG_TYPE_INFO, "%s:%d:%s TCC preflight access returned %d for pid %{private}d", v18, 0x28u);
    }
  }

  if (v9)
  {
    if (v9 == 1)
    {
      if (TCCAccessRestricted())
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }
    }

    else
    {
      v14 = v9 == 2 && TCCAccessRestricted() != 0;
    }

    v15 = *&self->_auditToken.val[4];
    *v18 = *self->_auditToken.val;
    *&v18[16] = v15;
    if (cmio_clientIsRunningInXCTest(v18))
    {
      result = 3;
    }

    else
    {
      result = v14;
    }
  }

  else
  {
    result = 3;
  }

  v16 = 64;
  if (a3 == 1936684398)
  {
    v16 = 56;
  }

  *(&self->super.isa + v16) = result;
LABEL_24:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __76__CMIOExtensionClient_requestAccessForMediaType_performPreFlightTest_reply___block_invoke(uint64_t a1)
{
  keys[1] = *MEMORY[0x277D85DE8];
  keys[0] = *MEMORY[0x277D6C0B8];
  values = *MEMORY[0x277CBED28];
  v2 = CFDictionaryCreate(0, keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v3 = *(a1 + 48);
  v4 = *(a1 + 72);
  *v17 = *(a1 + 56);
  *&v17[16] = v4;
  v5 = TCCAccessCheckAuditToken();
  if (v5)
  {
    v6 = 3;
  }

  else
  {
    v7 = *(a1 + 48);
    if (TCCAccessRestricted())
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }
  }

  v8 = CMIOLog();
  if (v8)
  {
    v9 = v8;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProperties.m");
      v11 = *(a1 + 88);
      *v17 = 136316163;
      if (v5)
      {
        v12 = 89;
      }

      else
      {
        v12 = 78;
      }

      *&v17[4] = v10;
      *&v17[12] = 1024;
      *&v17[14] = 2656;
      *&v17[18] = 2080;
      *&v17[20] = "[CMIOExtensionClient requestAccessForMediaType:performPreFlightTest:reply:]_block_invoke";
      *&v17[28] = 1024;
      *&v17[30] = v12;
      v18 = 1025;
      v19 = v11;
      _os_log_impl(&dword_22EA08000, v9, OS_LOG_TYPE_INFO, "%s:%d:%s TCC access returned %c for pid %{private}d", v17, 0x28u);
    }
  }

  CFRelease(v2);
  v13 = 64;
  if (*(a1 + 92) == 1936684398)
  {
    v13 = 56;
  }

  v14 = 72;
  if (*(a1 + 92) != 1936684398)
  {
    v14 = 73;
  }

  *(*(a1 + 32) + v13) = v6;
  *(*(a1 + 32) + v14) = 0;
  result = (*(*(a1 + 40) + 16))(*(a1 + 40));
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)copyXPCDictionary
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProperties.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithXPCDictionary:.cold.1()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProperties.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithXPCDictionary:.cold.2()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProperties.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

@end