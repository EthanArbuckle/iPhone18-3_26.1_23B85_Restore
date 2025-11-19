@interface CMIOExtensionProviderServer
+ (CMIOExtensionProviderServer)sharedServer;
- (CMIOExtensionProviderServer)init;
- (void)addConnection:(id)a3;
- (void)dealloc;
- (void)init;
- (void)start;
- (void)stop;
@end

@implementation CMIOExtensionProviderServer

+ (CMIOExtensionProviderServer)sharedServer
{
  if (sharedServer_onceToken != -1)
  {
    +[CMIOExtensionProviderServer sharedServer];
  }

  return sharedServer_gServer;
}

CMIOExtensionProviderServer *__43__CMIOExtensionProviderServer_sharedServer__block_invoke()
{
  result = objc_alloc_init(CMIOExtensionProviderServer);
  sharedServer_gServer = result;
  return result;
}

- (CMIOExtensionProviderServer)init
{
  v13.receiver = self;
  v13.super_class = CMIOExtensionProviderServer;
  v2 = [(CMIOExtensionProviderServer *)&v13 init];
  if (v2)
  {
    v3 = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
    if (v3 && (v4 = v3, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v4 count])
    {
      v2->_serviceName = [v4 objectForKeyedSubscript:@"CMIOExtensionMachServiceName"];
      v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      global_queue = dispatch_get_global_queue(21, 0);
      v7 = dispatch_queue_create_with_target_V2("com.apple.cmio.CMIOExtensionProviderServer", v5, global_queue);
      v2->_queue = v7;
      v8 = xpc_connection_create(0, v7);
      v2->_listener = v8;
      v2->_endpoint = xpc_endpoint_create(v8);
      listener = v2->_listener;
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __35__CMIOExtensionProviderServer_init__block_invoke;
      handler[3] = &unk_27885C2F0;
      handler[4] = v2;
      xpc_connection_set_event_handler(listener, handler);
      v2->_internalDaemon = 1;
    }

    else
    {
      v10 = CMIOLog();
      if (v10 && os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [CMIOExtensionProviderServer init];
      }

      return 0;
    }
  }

  return v2;
}

uint64_t __35__CMIOExtensionProviderServer_init__block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    result = MEMORY[0x2318F1BC0](a2);
    if (result == MEMORY[0x277D86450])
    {
      v4 = *(v3 + 32);

      return [v4 addConnection:a2];
    }
  }

  return result;
}

- (void)dealloc
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = CMIOLog();
  if (v3)
  {
    v4 = v3;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v14 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderServer.m");
      v15 = 1024;
      v16 = 116;
      v17 = 2080;
      v18 = "[CMIOExtensionProviderServer dealloc]";
      _os_log_impl(&dword_22EA08000, v4, OS_LOG_TYPE_DEFAULT, "%s:%d:%s dealloc starting", buf, 0x1Cu);
    }
  }

  v5 = CMIOLog();
  if (v5)
  {
    v6 = v5;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderServer.m");
      *buf = 136315650;
      v14 = v7;
      v15 = 1024;
      v16 = 123;
      v17 = 2080;
      v18 = "[CMIOExtensionProviderServer dealloc]";
      _os_log_impl(&dword_22EA08000, v6, OS_LOG_TYPE_DEFAULT, "%s:%d:%s calling [super dealloc]", buf, 0x1Cu);
    }
  }

  v12.receiver = self;
  v12.super_class = CMIOExtensionProviderServer;
  [(CMIOExtensionProviderServer *)&v12 dealloc];
  v8 = CMIOLog();
  if (v8)
  {
    v9 = v8;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderServer.m");
      *buf = 136315650;
      v14 = v10;
      v15 = 1024;
      v16 = 126;
      v17 = 2080;
      v18 = "[CMIOExtensionProviderServer dealloc]";
      _os_log_impl(&dword_22EA08000, v9, OS_LOG_TYPE_DEFAULT, "%s:%d:%s dealloc done", buf, 0x1Cu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)start
{
  v8 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderServer.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_2(&dword_22EA08000, v0, v1, "%s:%d:%s Failed to get the current process Mach-O UUID", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __36__CMIOExtensionProviderServer_start__block_invoke(uint64_t a1, xpc_object_t original)
{
  reply = xpc_dictionary_create_reply(original);
  xpc_dictionary_set_uuid(reply, "mach-o-uuid", start_unique_info);
  xpc_dictionary_set_value(reply, "endpoint", *(*(a1 + 32) + 24));
  cmio_XPCMessageSetCFString(reply, "bundle-id", *(a1 + 40));
  cmio_XPCMessageSetCFDictionary(reply, "bundle-info", *(a1 + 48));
  xpc_dictionary_send_reply();

  xpc_release(reply);
}

- (void)stop
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = CMIOLog();
  if (v3)
  {
    v4 = v3;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315906;
      v10 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderServer.m");
      v11 = 1024;
      v12 = 157;
      v13 = 2080;
      v14 = "[CMIOExtensionProviderServer stop]";
      v15 = 2112;
      v16 = self;
      _os_log_impl(&dword_22EA08000, v4, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@: cancelling listener", &v9, 0x26u);
    }
  }

  xpc_connection_cancel(self->_listener);
  v5 = CMIOLog();
  if (v5)
  {
    v6 = v5;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderServer.m");
      v9 = 136315906;
      v10 = v7;
      v11 = 1024;
      v12 = 159;
      v13 = 2080;
      v14 = "[CMIOExtensionProviderServer stop]";
      v15 = 2112;
      v16 = self;
      _os_log_impl(&dword_22EA08000, v6, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@: finished stopping things", &v9, 0x26u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)addConnection:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [[CMIOExtensionProviderContext alloc] initWithConnection:a3];
  if (v3)
  {
    v4 = v3;
    v5 = objc_autoreleasePoolPush();
    v6 = +[CMIOExtensionProvider sharedProvider];
    v7 = CMIOLog();
    if (v7)
    {
      v8 = v7;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136315906;
        v12 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderServer.m");
        v13 = 1024;
        v14 = 171;
        v15 = 2080;
        v16 = "[CMIOExtensionProviderServer addConnection:]";
        v17 = 2112;
        v18 = v6;
        _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s CMIOExtensionProvider.sharedProvider = %@", &v11, 0x26u);
      }
    }

    [v6 beginProviderContextRegistration:v4];
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v9 = CMIOLog();
    if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderServer addConnection:];
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)init
{
  v8 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderServer.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_2(&dword_22EA08000, v0, v1, "%s:%d:%s ServiceName is missing from Info.plist", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)addConnection:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderServer.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_2(&dword_22EA08000, v0, v1, "%s:%d:%s Failed to instantiate CMIOExtensionProviderContext", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end