@interface CMIOExtensionSession
+ (id)sessionWithDelegate:(id)a3;
- (CMIOExtensionSession)initWithDelegate:(id)a3;
- (NSDictionary)extensions;
- (void)dealloc;
@end

@implementation CMIOExtensionSession

+ (id)sessionWithDelegate:(id)a3
{
  v3 = [objc_alloc(objc_opt_class()) initWithDelegate:a3];

  return v3;
}

- (CMIOExtensionSession)initWithDelegate:(id)a3
{
  v54 = *MEMORY[0x277D85DE8];
  v43.receiver = self;
  v43.super_class = CMIOExtensionSession;
  v4 = [(CMIOExtensionSession *)&v43 init];
  v5 = v4;
  if (v4)
  {
    v4->_lock._os_unfair_lock_opaque = 0;
    v4->_extensions = objc_alloc_init(MEMORY[0x277CBEB38]);
    objc_storeWeak(&v5->_delegate, a3);
    mach_service = xpc_connection_create_mach_service("com.apple.cmio.registerassistantservice.system-extensions", 0, 2uLL);
    v5->_registerExtensionServiceConnection = mach_service;
    if (mach_service)
    {
      objc_initWeak(&location, v5);
      registerExtensionServiceConnection = v5->_registerExtensionServiceConnection;
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __41__CMIOExtensionSession_initWithDelegate___block_invoke;
      handler[3] = &unk_27885C198;
      objc_copyWeak(&v41, &location);
      xpc_connection_set_event_handler(registerExtensionServiceConnection, handler);
      xpc_connection_resume(v5->_registerExtensionServiceConnection);
      v8 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_string(v8, "call", "list");
      v9 = xpc_connection_send_message_with_reply_sync(v5->_registerExtensionServiceConnection, v8);
      xpc_release(v8);
      if (!v9 || MEMORY[0x2318F1BC0](v9) != MEMORY[0x277D86468])
      {
        v10 = CMIOLog();
        if (v10 && os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v11 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
          [(CMIOExtensionSession *)v11 initWithDelegate:v9, buf];
        }

LABEL_8:
        if (!v9)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      array = xpc_dictionary_get_array(v9, "endpoints");
      v15 = array;
      if (!array || MEMORY[0x2318F1BC0](array) != MEMORY[0x277D86440])
      {
        v16 = CMIOLog();
        if (v16 && os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
          [(CMIOExtensionSession *)v17 initWithDelegate:v15, buf];
        }

        goto LABEL_9;
      }

      count = xpc_array_get_count(v15);
      if (!count)
      {
LABEL_9:
        xpc_release(v9);
LABEL_10:
        objc_destroyWeak(&v41);
        objc_destroyWeak(&location);
        goto LABEL_11;
      }

      v19 = 0;
      while (1)
      {
        dictionary = xpc_array_get_dictionary(v15, v19);
        v21 = dictionary;
        if (!dictionary || MEMORY[0x2318F1BC0](dictionary) != MEMORY[0x277D86468])
        {
          break;
        }

        uuid = xpc_dictionary_get_uuid(v21, "mach-o-uuid");
        value = xpc_dictionary_get_value(v21, "endpoint");
        v39 = 0;
        cmio_XPCMessageCopyCFString(v21, "bundle-id", &v39);
        v26 = v39;
        v38 = 0;
        cmio_XPCMessageCopyCFDictionary(v21, "bundle-info", &v38);
        v27 = v38;
        if (!uuid || !value || MEMORY[0x2318F1BC0](value) != MEMORY[0x277D86478])
        {
          v28 = CMIOLog();
          v29 = v28;
          if (!v28 || !os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_23;
          }

          v30 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
          *buf = 136315906;
          v45 = v30;
          v46 = 1024;
          v47 = 1899;
          v48 = 2080;
          v49 = "[CMIOExtensionSession initWithDelegate:]";
          v50 = 2112;
          v51 = value;
          v31 = v29;
          v32 = "%s:%d:%s unexpected reply %@";
          v33 = 38;
LABEL_33:
          _os_log_error_impl(&dword_22EA08000, v31, OS_LOG_TYPE_ERROR, v32, buf, v33);
          goto LABEL_23;
        }

        v34 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:uuid];
        v35 = [CMIOExtensionInfo alloc];
        v36 = [(CMIOExtensionInfo *)v35 initWithEndpoint:value bundleID:v39 bundleInfo:v38];
        os_unfair_lock_lock(&v5->_lock);
        [(NSMutableDictionary *)v5->_extensions setObject:v36 forKey:v34];
        os_unfair_lock_unlock(&v5->_lock);

LABEL_23:
        if (count == ++v19)
        {
          goto LABEL_8;
        }
      }

      v22 = CMIOLog();
      v23 = v22;
      if (!v22 || !os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_23;
      }

      v37 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
      *buf = 136316162;
      v45 = v37;
      v46 = 1024;
      v47 = 1903;
      v48 = 2080;
      v49 = "[CMIOExtensionSession initWithDelegate:]";
      v50 = 2082;
      v51 = "com.apple.cmio.registerassistantservice.system-extensions";
      v52 = 2114;
      v53 = v21;
      v31 = v23;
      v32 = "%s:%d:%s unexpected reply from service %{public}s %{public}@";
      v33 = 48;
      goto LABEL_33;
    }
  }

LABEL_11:
  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

void __41__CMIOExtensionSession_initWithDelegate___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = MEMORY[0x2318F1BC0](a2);
  if (v4 == MEMORY[0x277D86480])
  {
    if (a2 == MEMORY[0x277D863F0])
    {
      v14 = CMIOLog();
      if (v14)
      {
        v15 = v14;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *v21 = 136315906;
          *&v21[4] = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
          v22 = 1024;
          v23 = 1813;
          v24 = 2080;
          v25 = "[CMIOExtensionSession initWithDelegate:]_block_invoke";
          v26 = 2080;
          v27 = "com.apple.cmio.registerassistantservice.system-extensions";
          _os_log_impl(&dword_22EA08000, v15, OS_LOG_TYPE_DEFAULT, "%s:%d:%s interrupted connection to service %s", v21, 0x26u);
        }
      }
    }

    else
    {
      v6 = MEMORY[0x277D863F8];
      v7 = CMIOLog();
      if (a2 == v6)
      {
        if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          __41__CMIOExtensionSession_initWithDelegate___block_invoke_cold_3();
        }
      }

      else if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __41__CMIOExtensionSession_initWithDelegate___block_invoke_cold_2();
      }
    }
  }

  else if (v4 == MEMORY[0x277D86468])
  {
    string = xpc_dictionary_get_string(a2, "call");
    if (string)
    {
      if (!strncmp("extension", string, 9uLL))
      {
        uuid = xpc_dictionary_get_uuid(a2, "mach-o-uuid");
        value = xpc_dictionary_get_value(a2, "endpoint");
        *v21 = 0;
        cmio_XPCMessageCopyCFString(a2, "bundle-id", v21);
        v11 = *v21;
        v20 = 0;
        cmio_XPCMessageCopyCFDictionary(a2, "bundle-info", &v20);
        v12 = v20;
        if (uuid && value && MEMORY[0x2318F1BC0](value) == MEMORY[0x277D86478])
        {
          if (WeakRetained && objc_loadWeak(WeakRetained + 2))
          {
            v16 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:uuid];
            v17 = [CMIOExtensionInfo alloc];
            v18 = [(CMIOExtensionInfo *)v17 initWithEndpoint:value bundleID:*v21 bundleInfo:v20];
            os_unfair_lock_lock(WeakRetained + 2);
            [*(WeakRetained + 3) setObject:v18 forKey:v16];
            v19 = [*(WeakRetained + 3) copy];
            os_unfair_lock_unlock(WeakRetained + 2);

            [objc_loadWeak(WeakRetained + 2) session:WeakRetained availableExtensionsChanged:v19];
          }
        }

        else
        {
          v13 = CMIOLog();
          if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            __41__CMIOExtensionSession_initWithDelegate___block_invoke_cold_1();
          }
        }
      }
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v15 = *MEMORY[0x277D85DE8];
  if (CMIOModuleLogLevel_once != -1)
  {
    [CMIOExtensionSessionStream dealloc];
  }

  if (CMIOModuleLogLevel_cmioLevel >= 1)
  {
    v3 = CMIOLog();
    if (v3)
    {
      v4 = v3;
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v8 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
        v9 = 1024;
        v10 = 1924;
        v11 = 2080;
        v12 = "[CMIOExtensionSession dealloc]";
        v13 = 2112;
        v14 = self;
        _os_log_impl(&dword_22EA08000, v4, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@", buf, 0x26u);
      }
    }
  }

  xpc_release(self->_registerExtensionServiceConnection);
  v6.receiver = self;
  v6.super_class = CMIOExtensionSession;
  [(CMIOExtensionSession *)&v6 dealloc];
  v5 = *MEMORY[0x277D85DE8];
}

- (NSDictionary)extensions
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_extensions copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)initWithDelegate:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = OUTLINED_FUNCTION_1(a1, 4.8154e-34, a2, a3);
  *(v4 + 14) = 1908;
  *(v4 + 18) = 2080;
  *(v4 + 20) = "[CMIOExtensionSession initWithDelegate:]";
  *(v4 + 28) = 2082;
  OUTLINED_FUNCTION_5_1(v3, v5, v4);
  _os_log_error_impl(&dword_22EA08000, v7, OS_LOG_TYPE_ERROR, "%s:%d:%s unexpected reply from service %{public}s %{public}@", v6, 0x30u);
}

- (void)initWithDelegate:(uint64_t)a3 .cold.2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = OUTLINED_FUNCTION_1(a1, 4.8154e-34, a2, a3);
  *(v4 + 14) = 1912;
  *(v4 + 18) = 2080;
  *(v4 + 20) = "[CMIOExtensionSession initWithDelegate:]";
  *(v4 + 28) = 2082;
  OUTLINED_FUNCTION_5_1(v3, v5, v4);
  _os_log_error_impl(&dword_22EA08000, v7, OS_LOG_TYPE_ERROR, "%s:%d:%s unexpected reply from service %{public}s %{public}@", v6, 0x30u);
}

void __41__CMIOExtensionSession_initWithDelegate___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __41__CMIOExtensionSession_initWithDelegate___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_13();
  v7 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
  xpc_dictionary_get_string(v0, *MEMORY[0x277D86400]);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x30u);
  v6 = *MEMORY[0x277D85DE8];
}

void __41__CMIOExtensionSession_initWithDelegate___block_invoke_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

@end