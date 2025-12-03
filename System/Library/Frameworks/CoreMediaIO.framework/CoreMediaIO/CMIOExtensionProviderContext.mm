@interface CMIOExtensionProviderContext
- (CMIOExtensionProviderContext)initWithConnection:(id)connection;
- (NSString)description;
- (id)redactedDescription;
- (void)availableDeviceProperties:(id)properties message:(id)message;
- (void)availableDevicesChanged:(id)changed;
- (void)availablePluginProperties:(id)properties message:(id)message;
- (void)availableStreamProperties:(id)properties message:(id)message;
- (void)availableStreamsChangedWithDeviceID:(id)d streamIDs:(id)ds;
- (void)captureAsyncStillImage:(id)image message:(id)message;
- (void)dealloc;
- (void)devicePropertiesChangedWithDeviceID:(id)d propertyStates:(id)states;
- (void)devicePropertyStates:(id)states message:(id)message;
- (void)deviceStates:(id)states message:(id)message;
- (void)enqueueReactionEffect:(id)effect message:(id)message;
- (void)handleClientMessageWithConnection:(id)connection message:(id)message;
- (void)invalidate;
- (void)pluginPropertiesChanged:(id)changed;
- (void)pluginPropertyStatesForProperties:(id)properties message:(id)message;
- (void)pluginStates:(id)states message:(id)message;
- (void)pullSampleBufferForStreamID:(id)d replyq:(id)replyq reply:(id)reply;
- (void)receivedSampleWithStreamID:(id)d sample:(id)sample;
- (void)setClientInfo:(id)info message:(id)message;
- (void)setDevicePropertyValues:(id)values message:(id)message;
- (void)setPluginPropertyValues:(id)values message:(id)message;
- (void)setStreamPropertyValues:(id)values message:(id)message;
- (void)startStream:(id)stream message:(id)message;
- (void)stopStream:(id)stream message:(id)message;
- (void)streamPropertiesChangedWithStreamID:(id)d propertyStates:(id)states;
- (void)streamPropertyStates:(id)states message:(id)message;
- (void)streamScheduledOutputChangedWithStreamID:(id)d scheduledOutput:(id)output;
- (void)updateNonStreamingProxyFrontedExtensionPIDs:(id)ds message:(id)message;
@end

@implementation CMIOExtensionProviderContext

- (CMIOExtensionProviderContext)initWithConnection:(id)connection
{
  v21 = *MEMORY[0x277D85DE8];
  if (connection)
  {
    v19.receiver = self;
    v19.super_class = CMIOExtensionProviderContext;
    v4 = [(CMIOExtensionProviderContext *)&v19 init];
    if (v4)
    {
      v4->_connection = connection;
      v4->_transaction = os_transaction_create();
      v4->_clientSourcedByNonStreamingProxyFrontedExtension = 0;
      objc_initWeak(&location, v4);
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __51__CMIOExtensionProviderContext_initWithConnection___block_invoke;
      handler[3] = &unk_27885C1C0;
      objc_copyWeak(&v17, &location);
      handler[4] = connection;
      xpc_connection_set_event_handler(connection, handler);
      xpc_connection_activate(connection);
      xpc_connection_get_audit_token();
      pid = xpc_connection_get_pid(connection);
      uUID = [MEMORY[0x277CCAD78] UUID];
      if ([+[CMIOExtensionProviderServer internalDaemon] sharedServer]
      {
        memset(buf, 0, 32);
        v7 = [CMIOExtensionProvider newActivityAttributionWithToken:buf];
        v8 = 0;
      }

      else
      {
        v7 = 0;
        v8 = 3;
      }

      v9 = [CMIOExtensionClient alloc];
      memset(buf, 0, 32);
      v10 = [(CMIOExtensionClient *)v9 initWithPID:pid clientID:uUID auditToken:buf stAttribution:v7 isToProxy:0 isFromProxyExtensionManager:0];
      v4->_clientInfo = v10;
      [(CMIOExtensionClient *)v10 setMicrophoneAuthorizationStatus:v8];
      [(CMIOExtensionClient *)v4->_clientInfo setCameraAuthorizationStatus:v8];
      v4->_description = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<CMIOExtensionProviderContext: %@>", v4->_clientInfo];
      v4->_redactedDescription = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<CMIOExtensionProviderContext: ->"];
      v11 = CMIOLog();
      v12 = v11;
      if (v11 && os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v13 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
        *buf = 136315907;
        *&buf[4] = v13;
        *&buf[12] = 1024;
        *&buf[14] = 125;
        *&buf[18] = 2080;
        *&buf[20] = "[CMIOExtensionProviderContext initWithConnection:]";
        *&buf[28] = 2113;
        *&buf[30] = v4;
        _os_log_impl(&dword_22EA08000, v12, OS_LOG_TYPE_INFO, "%s:%d:%s %{private}@", buf, 0x26u);
      }

      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
    }
  }

  else
  {

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Invalid argument"];
    v4 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v4;
}

void __51__CMIOExtensionProviderContext_initWithConnection___block_invoke(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = MEMORY[0x2318F1BC0](a2);
  if (v5 == MEMORY[0x277D86480])
  {
    v6 = CMIOLog();
    if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __51__CMIOExtensionProviderContext_initWithConnection___block_invoke_cold_1(a1);
    }

    if (a2 == MEMORY[0x277D863F0])
    {
      xpc_connection_cancel(*(a1 + 32));
    }

    else if (a2 == MEMORY[0x277D863F8] && WeakRetained && (WeakRetained[40] & 1) == 0)
    {
      v7 = CMIOLog();
      if (v7)
      {
        v8 = v7;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v10 = 136315907;
          v11 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
          v12 = 1024;
          v13 = 72;
          v14 = 2080;
          v15 = "[CMIOExtensionProviderContext initWithConnection:]_block_invoke";
          v16 = 2113;
          v17 = WeakRetained;
          _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{private}@, connection is invalidated", &v10, 0x26u);
        }
      }

      [+[CMIOExtensionProvider sharedProvider](CMIOExtensionProvider "sharedProvider")];
      [WeakRetained invalidate];
    }
  }

  else if (v5 == MEMORY[0x277D86468])
  {
    [WeakRetained handleClientMessageWithConnection:*(a1 + 32) message:a2];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = CMIOLog();
  if (v3)
  {
    v4 = v3;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315907;
      v9 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
      v10 = 1024;
      v11 = 132;
      v12 = 2080;
      v13 = "[CMIOExtensionProviderContext dealloc]";
      v14 = 2113;
      selfCopy = self;
      _os_log_impl(&dword_22EA08000, v4, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{private}@", buf, 0x26u);
    }
  }

  [+[CMIOExtensionProvider sharedProvider](CMIOExtensionProvider "sharedProvider")];

  voucher = self->_voucher;
  if (voucher)
  {
  }

  v7.receiver = self;
  v7.super_class = CMIOExtensionProviderContext;
  [(CMIOExtensionProviderContext *)&v7 dealloc];
  v6 = *MEMORY[0x277D85DE8];
}

- (NSString)description
{
  v2 = self->_description;

  return v2;
}

- (id)redactedDescription
{
  v2 = self->_redactedDescription;

  return v2;
}

- (void)invalidate
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = CMIOLog();
  if (v3)
  {
    v4 = v3;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v7 = 136315907;
      v8 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
      v9 = 1024;
      v10 = 159;
      v11 = 2080;
      v12 = "[CMIOExtensionProviderContext invalidate]";
      v13 = 2113;
      selfCopy = self;
      _os_log_impl(&dword_22EA08000, v4, OS_LOG_TYPE_INFO, "%s:%d:%s %{private}@", &v7, 0x26u);
    }
  }

  connection = self->_connection;
  if (connection)
  {
    xpc_connection_cancel(connection);
  }

  self->_transaction = 0;
  self->_invalidated = 1;
  v6 = *MEMORY[0x277D85DE8];
}

- (void)handleClientMessageWithConnection:(id)connection message:(id)message
{
  v28 = *MEMORY[0x277D85DE8];
  uint64 = xpc_dictionary_get_uint64(message, "MessageType");
  v8 = CMIOLog();
  if (v8)
  {
    v9 = v8;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
      pid = xpc_connection_get_pid(connection);
      clientID = [(CMIOExtensionClient *)self->_clientInfo clientID];
      v16 = 136316419;
      v17 = v10;
      v18 = 1024;
      v19 = 174;
      v20 = 2080;
      v21 = "[CMIOExtensionProviderContext handleClientMessageWithConnection:message:]";
      v22 = 1025;
      v23 = pid;
      v24 = 2113;
      v25 = clientID;
      v26 = 2048;
      v27 = uint64;
      _os_log_impl(&dword_22EA08000, v9, OS_LOG_TYPE_INFO, "%s:%d:%s [%{private}d] CID %{private}@ %lld", &v16, 0x36u);
    }
  }

  switch(uint64)
  {
    case 1uLL:
      [(CMIOExtensionProviderContext *)self pluginStates:connection message:message];
      break;
    case 2uLL:
      [(CMIOExtensionProviderContext *)self availablePluginProperties:connection message:message];
      break;
    case 3uLL:
      [(CMIOExtensionProviderContext *)self pluginPropertyStatesForProperties:connection message:message];
      break;
    case 4uLL:
      [(CMIOExtensionProviderContext *)self setPluginPropertyValues:connection message:message];
      break;
    case 5uLL:
      [(CMIOExtensionProviderContext *)self setClientInfo:connection message:message];
      break;
    case 0xAuLL:
      [(CMIOExtensionProviderContext *)self deviceStates:connection message:message];
      break;
    case 0xBuLL:
      [(CMIOExtensionProviderContext *)self availableDeviceProperties:connection message:message];
      break;
    case 0xCuLL:
      [(CMIOExtensionProviderContext *)self devicePropertyStates:connection message:message];
      break;
    case 0xDuLL:
      [(CMIOExtensionProviderContext *)self setDevicePropertyValues:connection message:message];
      break;
    case 0x14uLL:
      [(CMIOExtensionProviderContext *)self availableStreamProperties:connection message:message];
      break;
    case 0x15uLL:
      [(CMIOExtensionProviderContext *)self streamPropertyStates:connection message:message];
      break;
    case 0x16uLL:
      [(CMIOExtensionProviderContext *)self setStreamPropertyValues:connection message:message];
      break;
    case 0x17uLL:
      if (!self->_transaction)
      {
        self->_transaction = os_transaction_create();
      }

      [(CMIOExtensionProviderContext *)self startStream:connection message:message];
      break;
    case 0x18uLL:
      [(CMIOExtensionProviderContext *)self stopStream:connection message:message];

      self->_transaction = 0;
      break;
    case 0x19uLL:

      self->_transaction = 0;
      reply = xpc_dictionary_create_reply(message);
      xpc_dictionary_set_int64(reply, "errorReturn", 0);
      xpc_connection_send_message(connection, reply);
      xpc_release(reply);
      break;
    case 0x1AuLL:
      [(CMIOExtensionProviderContext *)self captureAsyncStillImage:connection message:message];
      break;
    case 0x1BuLL:
      [(CMIOExtensionProviderContext *)self updateNonStreamingProxyFrontedExtensionPIDs:connection message:message];
      break;
    case 0x1CuLL:
      [(CMIOExtensionProviderContext *)self enqueueReactionEffect:connection message:message];
      break;
    default:
      v13 = CMIOLog();
      if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [CMIOExtensionProviderContext handleClientMessageWithConnection:message:];
      }

      break;
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)availablePluginProperties:(id)properties message:(id)message
{
  reply = xpc_dictionary_create_reply(message);
  if (reply)
  {
    v7 = reply;
    xpc_retain(reply);
    v8 = +[CMIOExtensionProvider sharedProvider];
    clientID = [(CMIOExtensionClient *)self->_clientInfo clientID];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __66__CMIOExtensionProviderContext_availablePluginProperties_message___block_invoke;
    v11[3] = &unk_27885C3C8;
    v11[4] = v7;
    v11[5] = properties;
    [v8 availablePluginPropertiesForClientID:clientID reply:v11];
    xpc_release(v7);
  }

  else
  {
    v10 = CMIOLog();
    if (v10)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [CMIOExtensionProviderContext availablePluginProperties:message:];
      }
    }
  }
}

void __66__CMIOExtensionProviderContext_availablePluginProperties_message___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = [a2 allObjects];
  if (!a3 && v5)
  {
    if (!cmio_XPCMessageSetCFArray(*(a1 + 32), "param1", v5))
    {
LABEL_13:
      v10 = *(a1 + 32);
      v9 = 0;
      goto LABEL_14;
    }

    v6 = CMIOLog();
    if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __66__CMIOExtensionProviderContext_availablePluginProperties_message___block_invoke_cold_1();
    }

    a3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-5 userInfo:0];
  }

  if (!a3)
  {
    goto LABEL_13;
  }

  v7 = CMIOLog();
  if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __66__CMIOExtensionProviderContext_availablePluginProperties_message___block_invoke_cold_2();
  }

  v8 = *(a1 + 32);
  v9 = [a3 code];
  v10 = v8;
LABEL_14:
  xpc_dictionary_set_int64(v10, "errorReturn", v9);
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  xpc_release(*(a1 + 32));
}

- (void)pluginStates:(id)states message:(id)message
{
  reply = xpc_dictionary_create_reply(message);
  if (reply)
  {
    v7 = reply;
    xpc_retain(reply);
    v8 = +[CMIOExtensionProvider sharedProvider];
    clientID = [(CMIOExtensionClient *)self->_clientInfo clientID];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __53__CMIOExtensionProviderContext_pluginStates_message___block_invoke;
    v11[3] = &unk_27885C3F0;
    v11[4] = v7;
    v11[5] = states;
    [v8 pluginStatesForClientID:clientID reply:v11];
    xpc_release(v7);
  }

  else
  {
    v10 = CMIOLog();
    if (v10)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [CMIOExtensionProviderContext pluginStates:message:];
      }
    }
  }
}

void __53__CMIOExtensionProviderContext_pluginStates_message___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v5 = a5;
  v41 = *MEMORY[0x277D85DE8];
  if (!a2 || a5)
  {
    goto LABEL_9;
  }

  v9 = [CMIOExtensionPropertyState copyXPCDictionaryFromPropertyStates:a2];
  if (!v9)
  {
    v11 = CMIOLog();
    if (v11 && os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __53__CMIOExtensionProviderContext_pluginStates_message___block_invoke_cold_1();
    }

    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-5 userInfo:0];
LABEL_9:
    if (v5)
    {
      goto LABEL_40;
    }

    goto LABEL_10;
  }

  v10 = v9;
  xpc_dictionary_set_value(*(a1 + 32), "param1", v9);
  xpc_release(v10);
LABEL_10:
  if (![a3 count])
  {
    goto LABEL_48;
  }

  v12 = xpc_array_create(0, 0);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v5)
  {
    v13 = *v36;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v36 != v13)
        {
          objc_enumerationMutation(a3);
        }

        v15 = [CMIOExtensionPropertyState copyXPCDictionaryFromPropertyStates:*(*(&v35 + 1) + 8 * i)];
        if (!v15)
        {
          v17 = CMIOLog();
          if (v17 && os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            __53__CMIOExtensionProviderContext_pluginStates_message___block_invoke_cold_2();
          }

          v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-5 userInfo:0];
          goto LABEL_24;
        }

        v16 = v15;
        xpc_array_append_value(v12, v15);
        xpc_release(v16);
      }

      v5 = [a3 countByEnumeratingWithState:&v35 objects:v40 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_24:
  xpc_dictionary_set_value(*(a1 + 32), "param2", v12);
  xpc_release(v12);
  if (!v5)
  {
LABEL_48:
    if (![a4 count])
    {
      goto LABEL_44;
    }

    v18 = xpc_array_create(0, 0);
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v19 = [a4 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v32;
      while (2)
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v32 != v21)
          {
            objc_enumerationMutation(a4);
          }

          v23 = [CMIOExtensionPropertyState copyXPCDictionaryFromPropertyStates:*(*(&v31 + 1) + 8 * j)];
          if (!v23)
          {
            v25 = CMIOLog();
            if (v25 && os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              __53__CMIOExtensionProviderContext_pluginStates_message___block_invoke_cold_3();
            }

            v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-5 userInfo:0];
            goto LABEL_39;
          }

          v24 = v23;
          xpc_array_append_value(v18, v23);
          xpc_release(v24);
        }

        v20 = [a4 countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }
    }

    v5 = 0;
LABEL_39:
    xpc_dictionary_set_value(*(a1 + 32), "param3", v18);
    xpc_release(v18);
    if (!v5)
    {
LABEL_44:
      v29 = *(a1 + 32);
      v28 = 0;
      goto LABEL_45;
    }
  }

LABEL_40:
  v26 = CMIOLog();
  if (v26 && os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    __53__CMIOExtensionProviderContext_pluginStates_message___block_invoke_cold_4();
  }

  v27 = *(a1 + 32);
  v28 = [v5 code];
  v29 = v27;
LABEL_45:
  xpc_dictionary_set_int64(v29, "errorReturn", v28);
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  xpc_release(*(a1 + 32));
  v30 = *MEMORY[0x277D85DE8];
}

- (void)pluginPropertyStatesForProperties:(id)properties message:(id)message
{
  reply = xpc_dictionary_create_reply(message);
  if (reply)
  {
    v8 = reply;
    cf = 0;
    cmio_XPCMessageCopyCFArray(message, "param1", &cf);
    if (cf)
    {
      v9 = [MEMORY[0x277CBEB98] setWithArray:?];
      CFRelease(cf);
    }

    else
    {
      v9 = 0;
    }

    xpc_retain(v8);
    v11 = +[CMIOExtensionProvider sharedProvider];
    clientID = [(CMIOExtensionClient *)self->_clientInfo clientID];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __74__CMIOExtensionProviderContext_pluginPropertyStatesForProperties_message___block_invoke;
    v13[3] = &unk_27885C418;
    v13[4] = v8;
    v13[5] = properties;
    [v11 pluginPropertyStatesForClientID:clientID properties:v9 reply:v13];
    xpc_release(v8);
  }

  else
  {
    v10 = CMIOLog();
    if (v10 && os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderContext pluginPropertyStatesForProperties:message:];
    }
  }
}

void __74__CMIOExtensionProviderContext_pluginPropertyStatesForProperties_message___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (a2 && !a3)
  {
    v5 = [CMIOExtensionPropertyState copyXPCDictionaryFromPropertyStates:a2];
    if (v5)
    {
      v6 = v5;
      xpc_dictionary_set_value(*(a1 + 32), "param1", v5);
      xpc_release(v6);
LABEL_14:
      v11 = *(a1 + 32);
      v10 = 0;
      goto LABEL_15;
    }

    v7 = CMIOLog();
    if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __74__CMIOExtensionProviderContext_pluginPropertyStatesForProperties_message___block_invoke_cold_1();
    }

    v3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-5 userInfo:0];
  }

  if (!v3)
  {
    goto LABEL_14;
  }

  v8 = CMIOLog();
  if (v8 && os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    __74__CMIOExtensionProviderContext_pluginPropertyStatesForProperties_message___block_invoke_cold_2();
  }

  v9 = *(a1 + 32);
  v10 = [v3 code];
  v11 = v9;
LABEL_15:
  xpc_dictionary_set_int64(v11, "errorReturn", v10);
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  xpc_release(*(a1 + 32));
}

- (void)setPluginPropertyValues:(id)values message:(id)message
{
  reply = xpc_dictionary_create_reply(message);
  if (reply)
  {
    v8 = reply;
    value = xpc_dictionary_get_value(message, "param1");
    if (value)
    {
      v10 = [CMIOExtensionPropertyState copyPropertyStatesFromXPCDictionary:value];
      if (v10)
      {
        v11 = v10;
        v12 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v10, "count")}];
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __64__CMIOExtensionProviderContext_setPluginPropertyValues_message___block_invoke;
        v19[3] = &unk_27885BF70;
        v19[4] = v12;
        [v11 enumerateKeysAndObjectsUsingBlock:v19];
        xpc_retain(v8);
        v13 = +[CMIOExtensionProvider sharedProvider];
        clientID = [(CMIOExtensionClient *)self->_clientInfo clientID];
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __64__CMIOExtensionProviderContext_setPluginPropertyValues_message___block_invoke_31;
        v18[3] = &unk_27885C440;
        v18[4] = v8;
        v18[5] = values;
        [v13 setPluginPropertyValuesForClientID:clientID propertyValues:v12 reply:v18];
      }

      else
      {
        xpc_dictionary_set_int64(v8, "errorReturn", -5);
        xpc_connection_send_message(values, v8);
        v17 = CMIOLog();
        if (v17)
        {
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            [CMIOExtensionProviderContext setPluginPropertyValues:message:];
          }
        }
      }
    }

    else
    {
      xpc_dictionary_set_int64(v8, "errorReturn", -1);
      xpc_connection_send_message(values, v8);
      v16 = CMIOLog();
      if (v16 && os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [CMIOExtensionProviderContext setPluginPropertyValues:message:];
      }
    }

    xpc_release(v8);
  }

  else
  {
    v15 = CMIOLog();
    if (v15 && os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderContext setPluginPropertyValues:message:];
    }
  }
}

uint64_t __64__CMIOExtensionProviderContext_setPluginPropertyValues_message___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [a3 value];
  v6 = *(a1 + 32);

  return [v6 setObject:v5 forKeyedSubscript:a2];
}

void __64__CMIOExtensionProviderContext_setPluginPropertyValues_message___block_invoke_31(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = CMIOLog();
    if (v4 && os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __64__CMIOExtensionProviderContext_setPluginPropertyValues_message___block_invoke_31_cold_1();
    }

    v5 = *(a1 + 32);
    v6 = [a2 code];
    v7 = v5;
  }

  else
  {
    v7 = *(a1 + 32);
    v6 = 0;
  }

  xpc_dictionary_set_int64(v7, "errorReturn", v6);
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  xpc_release(*(a1 + 32));
}

- (void)availableDeviceProperties:(id)properties message:(id)message
{
  reply = xpc_dictionary_create_reply(message);
  if (reply)
  {
    v8 = reply;
    cf = 0;
    cmio_XPCMessageCopyCFString(message, "param1", &cf);
    if (cf)
    {
      v9 = objc_alloc(MEMORY[0x277CCAD78]);
      v10 = [v9 initWithUUIDString:cf];
      CFRelease(cf);
      xpc_retain(v8);
      v11 = +[CMIOExtensionProvider sharedProvider];
      clientID = [(CMIOExtensionClient *)self->_clientInfo clientID];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __66__CMIOExtensionProviderContext_availableDeviceProperties_message___block_invoke;
      v15[3] = &unk_27885C3C8;
      v15[4] = v8;
      v15[5] = properties;
      [v11 availableDevicePropertiesForClientID:clientID deviceID:v10 reply:v15];
    }

    else
    {
      v14 = CMIOLog();
      if (v14)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [CMIOExtensionProviderContext availableDeviceProperties:message:];
        }
      }

      v10 = 0;
    }

    xpc_release(v8);
  }

  else
  {
    v13 = CMIOLog();
    if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderContext availableDeviceProperties:message:];
    }
  }
}

void __66__CMIOExtensionProviderContext_availableDeviceProperties_message___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = [a2 allObjects];
  if (!a3 && v5)
  {
    if (!cmio_XPCMessageSetCFArray(*(a1 + 32), "param1", v5))
    {
LABEL_13:
      v10 = *(a1 + 32);
      v9 = 0;
      goto LABEL_14;
    }

    v6 = CMIOLog();
    if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __66__CMIOExtensionProviderContext_availableDeviceProperties_message___block_invoke_cold_1();
    }

    a3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-5 userInfo:0];
  }

  if (!a3)
  {
    goto LABEL_13;
  }

  v7 = CMIOLog();
  if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __66__CMIOExtensionProviderContext_availableDeviceProperties_message___block_invoke_cold_2();
  }

  v8 = *(a1 + 32);
  v9 = [a3 code];
  v10 = v8;
LABEL_14:
  xpc_dictionary_set_int64(v10, "errorReturn", v9);
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  xpc_release(*(a1 + 32));
}

- (void)deviceStates:(id)states message:(id)message
{
  reply = xpc_dictionary_create_reply(message);
  if (reply)
  {
    v8 = reply;
    cf = 0;
    cmio_XPCMessageCopyCFString(message, "param1", &cf);
    if (cf)
    {
      v9 = objc_alloc(MEMORY[0x277CCAD78]);
      v10 = [v9 initWithUUIDString:cf];
      CFRelease(cf);
      xpc_retain(v8);
      v11 = +[CMIOExtensionProvider sharedProvider];
      clientID = [(CMIOExtensionClient *)self->_clientInfo clientID];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __53__CMIOExtensionProviderContext_deviceStates_message___block_invoke;
      v15[3] = &unk_27885C468;
      v15[4] = v8;
      v15[5] = states;
      [v11 deviceStatesForClientID:clientID deviceID:v10 reply:v15];
    }

    else
    {
      v14 = CMIOLog();
      if (v14)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [CMIOExtensionProviderContext deviceStates:message:];
        }
      }

      v10 = 0;
    }

    xpc_release(v8);
  }

  else
  {
    v13 = CMIOLog();
    if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderContext deviceStates:message:];
    }
  }
}

void __53__CMIOExtensionProviderContext_deviceStates_message___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v4 = a4;
  v38 = *MEMORY[0x277D85DE8];
  if (!a2 || a4)
  {
    goto LABEL_9;
  }

  v7 = [CMIOExtensionPropertyState copyXPCDictionaryFromPropertyStates:a2];
  if (!v7)
  {
    v9 = CMIOLog();
    if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __53__CMIOExtensionProviderContext_deviceStates_message___block_invoke_cold_1();
    }

    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-5 userInfo:0];
LABEL_9:
    if (v4)
    {
      goto LABEL_27;
    }

    goto LABEL_10;
  }

  v8 = v7;
  xpc_dictionary_set_value(*(a1 + 32), "param1", v7);
  xpc_release(v8);
LABEL_10:
  if (![a3 count])
  {
    goto LABEL_31;
  }

  v26 = a1;
  v10 = xpc_array_create(0, 0);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v11 = [a3 countByEnumeratingWithState:&v27 objects:v37 count:16];
  if (v11)
  {
    v12 = v11;
    v4 = 0;
    v13 = *v28;
    v14 = *MEMORY[0x277CCA590];
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(a3);
        }

        v16 = [CMIOExtensionPropertyState copyXPCDictionaryFromPropertyStates:*(*(&v27 + 1) + 8 * i)];
        if (v16)
        {
          v17 = v16;
          xpc_array_append_value(v10, v16);
          xpc_release(v17);
        }

        else
        {
          v18 = CMIOLog();
          if (v18)
          {
            v19 = v18;
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              v20 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
              *buf = 136315650;
              v32 = v20;
              v33 = 1024;
              v34 = 533;
              v35 = 2080;
              v36 = "[CMIOExtensionProviderContext deviceStates:message:]_block_invoke";
              _os_log_error_impl(&dword_22EA08000, v19, OS_LOG_TYPE_ERROR, "%s:%d:%s copyXPCDictionaryFromPropertyStates failed", buf, 0x1Cu);
            }
          }

          v4 = [MEMORY[0x277CCA9B8] errorWithDomain:v14 code:-5 userInfo:0];
        }
      }

      v12 = [a3 countByEnumeratingWithState:&v27 objects:v37 count:16];
    }

    while (v12);
  }

  else
  {
    v4 = 0;
  }

  a1 = v26;
  xpc_dictionary_set_value(*(v26 + 32), "param2", v10);
  xpc_release(v10);
  if (!v4)
  {
LABEL_31:
    v24 = *(a1 + 32);
    v23 = 0;
    goto LABEL_32;
  }

LABEL_27:
  v21 = CMIOLog();
  if (v21 && os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    __53__CMIOExtensionProviderContext_deviceStates_message___block_invoke_cold_2();
  }

  v22 = *(a1 + 32);
  v23 = [v4 code];
  v24 = v22;
LABEL_32:
  xpc_dictionary_set_int64(v24, "errorReturn", v23);
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  xpc_release(*(a1 + 32));
  v25 = *MEMORY[0x277D85DE8];
}

- (void)devicePropertyStates:(id)states message:(id)message
{
  reply = xpc_dictionary_create_reply(message);
  if (reply)
  {
    v8 = reply;
    cf = 0;
    cmio_XPCMessageCopyCFString(message, "param1", &cf);
    if (cf)
    {
      v9 = objc_alloc(MEMORY[0x277CCAD78]);
      v10 = [v9 initWithUUIDString:cf];
      CFRelease(cf);
      v17 = 0;
      cmio_XPCMessageCopyCFArray(message, "param2", &v17);
      if (v17)
      {
        v11 = [MEMORY[0x277CBEB98] setWithArray:?];
        CFRelease(v17);
      }

      else
      {
        v11 = 0;
      }

      xpc_retain(v8);
      v14 = +[CMIOExtensionProvider sharedProvider];
      clientID = [(CMIOExtensionClient *)self->_clientInfo clientID];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __61__CMIOExtensionProviderContext_devicePropertyStates_message___block_invoke;
      v16[3] = &unk_27885C418;
      v16[4] = v8;
      v16[5] = states;
      [v14 devicePropertyStatesForClientID:clientID deviceID:v10 properties:v11 reply:v16];
    }

    else
    {
      v13 = CMIOLog();
      if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [CMIOExtensionProviderContext devicePropertyStates:message:];
      }

      v10 = 0;
    }

    xpc_release(v8);
  }

  else
  {
    v12 = CMIOLog();
    if (v12 && os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderContext devicePropertyStates:message:];
    }
  }
}

void __61__CMIOExtensionProviderContext_devicePropertyStates_message___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (a2 && !a3)
  {
    v5 = [CMIOExtensionPropertyState copyXPCDictionaryFromPropertyStates:a2];
    if (v5)
    {
      v6 = v5;
      xpc_dictionary_set_value(*(a1 + 32), "param1", v5);
      xpc_release(v6);
LABEL_14:
      v11 = *(a1 + 32);
      v10 = 0;
      goto LABEL_15;
    }

    v7 = CMIOLog();
    if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __61__CMIOExtensionProviderContext_devicePropertyStates_message___block_invoke_cold_1();
    }

    v3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-5 userInfo:0];
  }

  if (!v3)
  {
    goto LABEL_14;
  }

  v8 = CMIOLog();
  if (v8 && os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    __61__CMIOExtensionProviderContext_devicePropertyStates_message___block_invoke_cold_2();
  }

  v9 = *(a1 + 32);
  v10 = [v3 code];
  v11 = v9;
LABEL_15:
  xpc_dictionary_set_int64(v11, "errorReturn", v10);
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  xpc_release(*(a1 + 32));
}

- (void)setDevicePropertyValues:(id)values message:(id)message
{
  reply = xpc_dictionary_create_reply(message);
  if (reply)
  {
    v8 = reply;
    v23 = 0;
    cmio_XPCMessageCopyCFString(message, "param1", &v23);
    if (v23)
    {
      v9 = objc_alloc(MEMORY[0x277CCAD78]);
      v10 = [v9 initWithUUIDString:v23];
      CFRelease(v23);
      value = xpc_dictionary_get_value(message, "param2");
      if (value)
      {
        v12 = [CMIOExtensionPropertyState copyPropertyStatesFromXPCDictionary:value];
        if (v12)
        {
          v13 = v12;
          v14 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v12, "count")}];
          v22[0] = MEMORY[0x277D85DD0];
          v22[1] = 3221225472;
          v22[2] = __64__CMIOExtensionProviderContext_setDevicePropertyValues_message___block_invoke;
          v22[3] = &unk_27885BF70;
          v22[4] = v14;
          [v13 enumerateKeysAndObjectsUsingBlock:v22];
          xpc_retain(v8);
          v15 = +[CMIOExtensionProvider sharedProvider];
          clientID = [(CMIOExtensionClient *)self->_clientInfo clientID];
          v21[0] = MEMORY[0x277D85DD0];
          v21[1] = 3221225472;
          v21[2] = __64__CMIOExtensionProviderContext_setDevicePropertyValues_message___block_invoke_34;
          v21[3] = &unk_27885C440;
          v21[4] = v8;
          v21[5] = values;
          [v15 setDevicePropertyValuesForClientID:clientID deviceID:v10 propertyValues:v14 reply:v21];
        }

        else
        {
          xpc_dictionary_set_int64(v8, "errorReturn", -1);
          xpc_connection_send_message(values, v8);
          v20 = CMIOLog();
          if (v20)
          {
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              [CMIOExtensionProviderContext setDevicePropertyValues:message:];
            }
          }
        }
      }

      else
      {
        xpc_dictionary_set_int64(v8, "errorReturn", -1);
        xpc_connection_send_message(values, v8);
        v19 = CMIOLog();
        if (v19 && os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          [CMIOExtensionProviderContext setDevicePropertyValues:message:];
        }
      }
    }

    else
    {
      v18 = CMIOLog();
      v10 = v18;
      if (v18)
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [CMIOExtensionProviderContext setDevicePropertyValues:message:];
        }

        v10 = 0;
      }
    }

    xpc_release(v8);
  }

  else
  {
    v17 = CMIOLog();
    if (v17 && os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderContext setDevicePropertyValues:message:];
    }
  }
}

uint64_t __64__CMIOExtensionProviderContext_setDevicePropertyValues_message___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [a3 value];
  v6 = *(a1 + 32);

  return [v6 setObject:v5 forKeyedSubscript:a2];
}

void __64__CMIOExtensionProviderContext_setDevicePropertyValues_message___block_invoke_34(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = CMIOLog();
    if (v4 && os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __64__CMIOExtensionProviderContext_setDevicePropertyValues_message___block_invoke_34_cold_1();
    }

    v5 = *(a1 + 32);
    v6 = [a2 code];
    v7 = v5;
  }

  else
  {
    v7 = *(a1 + 32);
    v6 = 0;
  }

  xpc_dictionary_set_int64(v7, "errorReturn", v6);
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  xpc_release(*(a1 + 32));
}

- (void)availableStreamProperties:(id)properties message:(id)message
{
  reply = xpc_dictionary_create_reply(message);
  if (reply)
  {
    v8 = reply;
    cf = 0;
    cmio_XPCMessageCopyCFString(message, "param1", &cf);
    if (cf)
    {
      v9 = objc_alloc(MEMORY[0x277CCAD78]);
      v10 = [v9 initWithUUIDString:cf];
      CFRelease(cf);
      xpc_retain(v8);
      v11 = +[CMIOExtensionProvider sharedProvider];
      clientID = [(CMIOExtensionClient *)self->_clientInfo clientID];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __66__CMIOExtensionProviderContext_availableStreamProperties_message___block_invoke;
      v15[3] = &unk_27885C3C8;
      v15[4] = v8;
      v15[5] = properties;
      [v11 availableStreamPropertiesForClientID:clientID streamID:v10 reply:v15];
    }

    else
    {
      v14 = CMIOLog();
      if (v14)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [CMIOExtensionProviderContext availableStreamProperties:message:];
        }
      }

      v10 = 0;
    }

    xpc_release(v8);
  }

  else
  {
    v13 = CMIOLog();
    if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderContext availableStreamProperties:message:];
    }
  }
}

void __66__CMIOExtensionProviderContext_availableStreamProperties_message___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = [a2 allObjects];
  if (!a3 && v5)
  {
    if (!cmio_XPCMessageSetCFArray(*(a1 + 32), "param1", v5))
    {
LABEL_13:
      v10 = *(a1 + 32);
      v9 = 0;
      goto LABEL_14;
    }

    v6 = CMIOLog();
    if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __66__CMIOExtensionProviderContext_availableStreamProperties_message___block_invoke_cold_1();
    }

    a3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-5 userInfo:0];
  }

  if (!a3)
  {
    goto LABEL_13;
  }

  v7 = CMIOLog();
  if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __66__CMIOExtensionProviderContext_availableStreamProperties_message___block_invoke_cold_2();
  }

  v8 = *(a1 + 32);
  v9 = [a3 code];
  v10 = v8;
LABEL_14:
  xpc_dictionary_set_int64(v10, "errorReturn", v9);
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  xpc_release(*(a1 + 32));
}

- (void)streamPropertyStates:(id)states message:(id)message
{
  reply = xpc_dictionary_create_reply(message);
  if (reply)
  {
    v8 = reply;
    cf = 0;
    cmio_XPCMessageCopyCFString(message, "param1", &cf);
    if (cf)
    {
      v9 = objc_alloc(MEMORY[0x277CCAD78]);
      v10 = [v9 initWithUUIDString:cf];
      CFRelease(cf);
      v17 = 0;
      cmio_XPCMessageCopyCFArray(message, "param2", &v17);
      if (v17)
      {
        v11 = [MEMORY[0x277CBEB98] setWithArray:?];
        CFRelease(v17);
      }

      else
      {
        v11 = 0;
      }

      xpc_retain(v8);
      v14 = +[CMIOExtensionProvider sharedProvider];
      clientID = [(CMIOExtensionClient *)self->_clientInfo clientID];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __61__CMIOExtensionProviderContext_streamPropertyStates_message___block_invoke;
      v16[3] = &unk_27885C418;
      v16[4] = v8;
      v16[5] = states;
      [v14 streamPropertyStatesForClientID:clientID streamID:v10 properties:v11 reply:v16];
    }

    else
    {
      v13 = CMIOLog();
      if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [CMIOExtensionProviderContext streamPropertyStates:message:];
      }

      v10 = 0;
    }

    xpc_release(v8);
  }

  else
  {
    v12 = CMIOLog();
    if (v12 && os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderContext streamPropertyStates:message:];
    }
  }
}

void __61__CMIOExtensionProviderContext_streamPropertyStates_message___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (a2 && !a3)
  {
    v5 = [CMIOExtensionPropertyState copyXPCDictionaryFromPropertyStates:a2];
    if (v5)
    {
      v6 = v5;
      xpc_dictionary_set_value(*(a1 + 32), "param1", v5);
      xpc_release(v6);
LABEL_14:
      v11 = *(a1 + 32);
      v10 = 0;
      goto LABEL_15;
    }

    v7 = CMIOLog();
    if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __61__CMIOExtensionProviderContext_streamPropertyStates_message___block_invoke_cold_1();
    }

    v3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-5 userInfo:0];
  }

  if (!v3)
  {
    goto LABEL_14;
  }

  v8 = CMIOLog();
  if (v8 && os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    __61__CMIOExtensionProviderContext_streamPropertyStates_message___block_invoke_cold_2();
  }

  v9 = *(a1 + 32);
  v10 = [v3 code];
  v11 = v9;
LABEL_15:
  xpc_dictionary_set_int64(v11, "errorReturn", v10);
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  xpc_release(*(a1 + 32));
}

- (void)setStreamPropertyValues:(id)values message:(id)message
{
  reply = xpc_dictionary_create_reply(message);
  if (reply)
  {
    v8 = reply;
    v23 = 0;
    cmio_XPCMessageCopyCFString(message, "param1", &v23);
    if (v23)
    {
      v9 = objc_alloc(MEMORY[0x277CCAD78]);
      v10 = [v9 initWithUUIDString:v23];
      CFRelease(v23);
      value = xpc_dictionary_get_value(message, "param2");
      if (value)
      {
        v12 = [CMIOExtensionPropertyState copyPropertyStatesFromXPCDictionary:value];
        if (v12)
        {
          v13 = v12;
          v14 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v12, "count")}];
          v22[0] = MEMORY[0x277D85DD0];
          v22[1] = 3221225472;
          v22[2] = __64__CMIOExtensionProviderContext_setStreamPropertyValues_message___block_invoke;
          v22[3] = &unk_27885BF70;
          v22[4] = v14;
          [v13 enumerateKeysAndObjectsUsingBlock:v22];
          xpc_retain(v8);
          v15 = +[CMIOExtensionProvider sharedProvider];
          clientID = [(CMIOExtensionClient *)self->_clientInfo clientID];
          v21[0] = MEMORY[0x277D85DD0];
          v21[1] = 3221225472;
          v21[2] = __64__CMIOExtensionProviderContext_setStreamPropertyValues_message___block_invoke_35;
          v21[3] = &unk_27885C440;
          v21[4] = v8;
          v21[5] = values;
          [v15 setStreamPropertyValuesForClientID:clientID streamID:v10 propertyValues:v14 reply:v21];
        }

        else
        {
          xpc_dictionary_set_int64(v8, "errorReturn", -1);
          xpc_connection_send_message(values, v8);
          v20 = CMIOLog();
          if (v20)
          {
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              [CMIOExtensionProviderContext setStreamPropertyValues:message:];
            }
          }
        }
      }

      else
      {
        xpc_dictionary_set_int64(v8, "errorReturn", -1);
        xpc_connection_send_message(values, v8);
        v19 = CMIOLog();
        if (v19 && os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          [CMIOExtensionProviderContext setStreamPropertyValues:message:];
        }
      }
    }

    else
    {
      v18 = CMIOLog();
      v10 = v18;
      if (v18)
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [CMIOExtensionProviderContext setStreamPropertyValues:message:];
        }

        v10 = 0;
      }
    }

    xpc_release(v8);
  }

  else
  {
    v17 = CMIOLog();
    if (v17 && os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderContext setStreamPropertyValues:message:];
    }
  }
}

uint64_t __64__CMIOExtensionProviderContext_setStreamPropertyValues_message___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [a3 value];
  v6 = *(a1 + 32);

  return [v6 setObject:v5 forKeyedSubscript:a2];
}

void __64__CMIOExtensionProviderContext_setStreamPropertyValues_message___block_invoke_35(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = CMIOLog();
    if (v4 && os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __64__CMIOExtensionProviderContext_setStreamPropertyValues_message___block_invoke_35_cold_1();
    }

    v5 = *(a1 + 32);
    v6 = [a2 code];
    v7 = v5;
  }

  else
  {
    v7 = *(a1 + 32);
    v6 = 0;
  }

  xpc_dictionary_set_int64(v7, "errorReturn", v6);
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  xpc_release(*(a1 + 32));
}

- (void)startStream:(id)stream message:(id)message
{
  v32 = *MEMORY[0x277D85DE8];
  reply = xpc_dictionary_create_reply(message);
  if (reply)
  {
    v8 = reply;
    cf = 0;
    cmio_XPCMessageCopyCFString(message, "param1", &cf);
    if (cf)
    {
      v9 = objc_alloc(MEMORY[0x277CCAD78]);
      v10 = [v9 initWithUUIDString:cf];
      CFRelease(cf);
      p_voucher = &self->_voucher;
      if (self->_voucher)
      {
        v12 = CMIOLog();
        if (v12 && os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [CMIOExtensionProviderContext startStream:message:];
        }

        *p_voucher = 0;
      }

      *p_voucher = voucher_copy();
      v13 = CMIOLog();
      if (v13)
      {
        v14 = v13;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v15 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
          v16 = *p_voucher;
          *buf = 136315906;
          v25 = v15;
          v26 = 1024;
          v27 = 859;
          v28 = 2080;
          v29 = "[CMIOExtensionProviderContext startStream:message:]";
          v30 = 2050;
          v31 = v16;
          _os_log_impl(&dword_22EA08000, v14, OS_LOG_TYPE_DEFAULT, "%s:%d:%s startStream retain priority voucher %{public}p", buf, 0x26u);
        }
      }

      xpc_retain(v8);
      v17 = +[CMIOExtensionProvider sharedProvider];
      clientID = [(CMIOExtensionClient *)self->_clientInfo clientID];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __52__CMIOExtensionProviderContext_startStream_message___block_invoke;
      v22[3] = &unk_27885C440;
      v22[4] = v8;
      v22[5] = stream;
      [v17 startStreamForClientID:clientID streamID:v10 reply:v22];
    }

    else
    {
      v20 = CMIOLog();
      if (v20 && os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [CMIOExtensionProviderContext startStream:message:];
      }

      v10 = 0;
    }

    xpc_release(v8);
  }

  else
  {
    v19 = CMIOLog();
    if (v19 && os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderContext startStream:message:];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __52__CMIOExtensionProviderContext_startStream_message___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = CMIOLog();
    if (v4 && os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __52__CMIOExtensionProviderContext_startStream_message___block_invoke_cold_1();
    }

    v5 = *(a1 + 32);
    v6 = [a2 code];
    v7 = v5;
  }

  else
  {
    v7 = *(a1 + 32);
    v6 = 0;
  }

  xpc_dictionary_set_int64(v7, "errorReturn", v6);
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  xpc_release(*(a1 + 32));
}

- (void)stopStream:(id)stream message:(id)message
{
  v30 = *MEMORY[0x277D85DE8];
  reply = xpc_dictionary_create_reply(message);
  if (reply)
  {
    v8 = reply;
    cf = 0;
    cmio_XPCMessageCopyCFString(message, "param1", &cf);
    if (cf)
    {
      v9 = objc_alloc(MEMORY[0x277CCAD78]);
      v10 = [v9 initWithUUIDString:cf];
      CFRelease(cf);
      xpc_retain(v8);
      v11 = +[CMIOExtensionProvider sharedProvider];
      clientID = [(CMIOExtensionClient *)self->_clientInfo clientID];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __51__CMIOExtensionProviderContext_stopStream_message___block_invoke;
      v20[3] = &unk_27885C440;
      v20[4] = v8;
      v20[5] = stream;
      [v11 stopStreamForClientID:clientID streamID:v10 reply:v20];
      if (self->_voucher)
      {
        v13 = CMIOLog();
        if (v13)
        {
          v14 = v13;
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v15 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
            voucher = self->_voucher;
            *buf = 136315906;
            v23 = v15;
            v24 = 1024;
            v25 = 910;
            v26 = 2080;
            v27 = "[CMIOExtensionProviderContext stopStream:message:]";
            v28 = 2050;
            v29 = voucher;
            _os_log_impl(&dword_22EA08000, v14, OS_LOG_TYPE_DEFAULT, "%s:%d:%s stopStream release priority voucher %{public}p", buf, 0x26u);
          }
        }

        self->_voucher = 0;
      }
    }

    else
    {
      v18 = CMIOLog();
      if (v18 && os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [CMIOExtensionProviderContext stopStream:message:];
      }

      v10 = 0;
    }

    xpc_release(v8);
  }

  else
  {
    v17 = CMIOLog();
    if (v17 && os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderContext stopStream:message:];
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __51__CMIOExtensionProviderContext_stopStream_message___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = CMIOLog();
    if (v4 && os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __51__CMIOExtensionProviderContext_stopStream_message___block_invoke_cold_1();
    }

    v5 = *(a1 + 32);
    v6 = [a2 code];
    v7 = v5;
  }

  else
  {
    v7 = *(a1 + 32);
    v6 = 0;
  }

  xpc_dictionary_set_int64(v7, "errorReturn", v6);
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  xpc_release(*(a1 + 32));
}

- (void)setClientInfo:(id)info message:(id)message
{
  v33 = *MEMORY[0x277D85DE8];
  reply = xpc_dictionary_create_reply(message);
  if (reply)
  {
    v8 = reply;
    value = xpc_dictionary_get_value(message, "param1");
    if (value)
    {
      v10 = value;
      if ([(CMIOExtensionClient *)self->_clientInfo isFromProxyExtensionManager])
      {
        v11 = [[CMIOExtensionClient alloc] initWithXPCDictionary:v10];
        if (v11)
        {
          clientInfo = self->_clientInfo;
          self->_clientInfo = v11;

          goto LABEL_6;
        }

        v19 = CMIOLog();
        if (v19 && os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          [CMIOExtensionProviderContext setClientInfo:message:];
        }
      }

      else
      {
        v14 = CMIOLog();
        if (v14)
        {
          v15 = v14;
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            v16 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
            pid = xpc_connection_get_pid(info);
            v18 = self->_clientInfo;
            v21 = 136316419;
            v22 = v16;
            v23 = 1024;
            v24 = 946;
            v25 = 2080;
            v26 = "[CMIOExtensionProviderContext setClientInfo:message:]";
            v27 = 1025;
            v28 = pid;
            v29 = 2112;
            selfCopy = self;
            v31 = 2112;
            v32 = v18;
            _os_log_error_impl(&dword_22EA08000, v15, OS_LOG_TYPE_ERROR, "%s:%d:%s [%{private}d] invalid connection for this message to %@ / %@", &v21, 0x36u);
          }
        }
      }

      xpc_dictionary_set_int64(v8, "errorReturn", -1);
      xpc_connection_send_message(info, v8);
      [+[CMIOExtensionProvider sharedProvider](CMIOExtensionProvider "sharedProvider")];
      [(CMIOExtensionProviderContext *)self invalidate];
      goto LABEL_17;
    }

LABEL_6:
    xpc_dictionary_set_int64(v8, "errorReturn", 0);
    xpc_connection_send_message(info, v8);
    [+[CMIOExtensionProvider sharedProvider](CMIOExtensionProvider "sharedProvider")];
LABEL_17:
    xpc_release(v8);
    goto LABEL_18;
  }

  v13 = CMIOLog();
  if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [CMIOExtensionProviderContext setClientInfo:message:];
  }

LABEL_18:
  v20 = *MEMORY[0x277D85DE8];
}

- (void)captureAsyncStillImage:(id)image message:(id)message
{
  v20 = 0;
  reply = xpc_dictionary_create_reply(message);
  if (!reply)
  {
    v12 = CMIOLog();
    v9 = v12;
    if (!v12)
    {
      goto LABEL_15;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderContext captureAsyncStillImage:message:];
    }

LABEL_14:
    v9 = 0;
    goto LABEL_15;
  }

  cf = 0;
  cmio_XPCMessageCopyCFString(message, "param1", &cf);
  if (!cf)
  {
    xpc_dictionary_set_int64(reply, "errorReturn", -1);
    xpc_connection_send_message(image, reply);
    v13 = CMIOLog();
    v9 = v13;
    if (!v13)
    {
      goto LABEL_15;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderContext captureAsyncStillImage:message:];
    }

    goto LABEL_14;
  }

  v8 = objc_alloc(MEMORY[0x277CCAD78]);
  v9 = [v8 initWithUUIDString:cf];
  CFRelease(cf);
  v18 = 0;
  cmio_XPCMessageCopyCFNumber(message, "param2", &v18);
  if (v18)
  {
    longLongValue = [v18 longLongValue];
    CFRelease(v18);
    if (cmio_XPCMessageCopyCFDictionary(message, "param3", &v20))
    {
      xpc_dictionary_set_int64(reply, "errorReturn", -1);
      xpc_connection_send_message(image, reply);
      v11 = CMIOLog();
      if (v11 && os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [CMIOExtensionProviderContext captureAsyncStillImage:message:];
      }
    }

    else
    {
      xpc_retain(reply);
      v15 = +[CMIOExtensionProvider sharedProvider];
      clientID = [(CMIOExtensionClient *)self->_clientInfo clientID];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __63__CMIOExtensionProviderContext_captureAsyncStillImage_message___block_invoke;
      v17[3] = &unk_27885C490;
      v17[4] = reply;
      v17[5] = image;
      [v15 captureAsyncStillImageForClientID:clientID streamID:v9 uniqueID:longLongValue options:v20 reply:v17];
    }
  }

  else
  {
    xpc_dictionary_set_int64(reply, "errorReturn", -1);
    xpc_connection_send_message(image, reply);
    v14 = CMIOLog();
    if (v14 && os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderContext captureAsyncStillImage:message:];
    }
  }

LABEL_15:

  if (v20)
  {
    CFRelease(v20);
  }

  if (reply)
  {
    xpc_release(reply);
  }
}

void __63__CMIOExtensionProviderContext_captureAsyncStillImage_message___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v5 = CMIOLog();
    if (v5 && os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __63__CMIOExtensionProviderContext_captureAsyncStillImage_message___block_invoke_cold_1();
    }

    v6 = *(a1 + 32);
    v7 = [a3 code];
    v8 = v6;
  }

  else
  {
    xpc_dictionary_set_int64(*(a1 + 32), "errorReturn", 0);
    v9 = *MEMORY[0x277CBECE8];
    SerializedAtomDataBlockBufferForSampleBuffer = FigRemote_CreateSerializedAtomDataBlockBufferForSampleBuffer();
    v8 = *(a1 + 32);
    v7 = SerializedAtomDataBlockBufferForSampleBuffer;
  }

  xpc_dictionary_set_int64(v8, "errorReturn", v7);
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  xpc_release(*(a1 + 32));
}

- (void)updateNonStreamingProxyFrontedExtensionPIDs:(id)ds message:(id)message
{
  v25 = *MEMORY[0x277D85DE8];
  p_clientInfo = &self->_clientInfo;
  if ([(CMIOExtensionClient *)self->_clientInfo isFromProxyExtensionManager])
  {
    v14 = 0;
    cmio_XPCMessageCopyCFArray(message, "param1", &v14);
    v6 = v14;
    v7 = CMIOLog();
    v8 = v7;
    if (v6)
    {
      if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
        v10 = [(CMIOExtensionClient *)*p_clientInfo pid];
        *buf = 136316163;
        v16 = v9;
        v17 = 1024;
        v18 = 1040;
        v19 = 2080;
        v20 = "[CMIOExtensionProviderContext updateNonStreamingProxyFrontedExtensionPIDs:message:]";
        v21 = 1025;
        v22 = v10;
        v23 = 2113;
        v24 = v14;
        _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s [%{private}d] updating with %{private}@", buf, 0x2Cu);
      }

      v11 = +[CMIOExtensionProvider sharedProvider];
      [v11 updateNonStreamingProxyFrontedExtensionPIDs:v14];
    }

    else if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderContext updateNonStreamingProxyFrontedExtensionPIDs:message:];
    }
  }

  else
  {
    v12 = CMIOLog();
    if (v12 && os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderContext updateNonStreamingProxyFrontedExtensionPIDs:message:];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)enqueueReactionEffect:(id)effect message:(id)message
{
  v18 = 0;
  reply = xpc_dictionary_create_reply(message);
  if (reply)
  {
    v8 = reply;
    cf = 0;
    cmio_XPCMessageCopyCFString(message, "param1", &cf);
    if (cf)
    {
      v9 = objc_alloc(MEMORY[0x277CCAD78]);
      v10 = [v9 initWithUUIDString:cf];
      CFRelease(cf);
      if (cmio_XPCMessageCopyCFString(message, "param2", &v18))
      {
        xpc_dictionary_set_int64(v8, "errorReturn", -1);
        xpc_connection_send_message(effect, v8);
        v11 = CMIOLog();
        if (v11)
        {
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            [CMIOExtensionProviderContext enqueueReactionEffect:message:];
          }
        }
      }

      else
      {
        xpc_retain(v8);
        v14 = +[CMIOExtensionProvider sharedProvider];
        clientID = [(CMIOExtensionClient *)self->_clientInfo clientID];
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __62__CMIOExtensionProviderContext_enqueueReactionEffect_message___block_invoke;
        v16[3] = &unk_27885C440;
        v16[4] = v8;
        v16[5] = effect;
        [v14 enqueueReactionEffectForClientID:clientID streamID:v10 reactionType:v18 reply:v16];
      }
    }

    else
    {
      xpc_dictionary_set_int64(v8, "errorReturn", -1);
      xpc_connection_send_message(effect, v8);
      v13 = CMIOLog();
      v10 = v13;
      if (v13)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [CMIOExtensionProviderContext enqueueReactionEffect:message:];
        }

        v10 = 0;
      }
    }

    xpc_release(v8);
  }

  else
  {
    v12 = CMIOLog();
    if (v12 && os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderContext enqueueReactionEffect:message:];
    }
  }
}

void __62__CMIOExtensionProviderContext_enqueueReactionEffect_message___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = CMIOLog();
    if (v4 && os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __62__CMIOExtensionProviderContext_enqueueReactionEffect_message___block_invoke_cold_1();
    }

    v5 = *(a1 + 32);
    v6 = [a2 code];
    v7 = v5;
  }

  else
  {
    v7 = *(a1 + 32);
    v6 = 0;
  }

  xpc_dictionary_set_int64(v7, "errorReturn", v6);
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  xpc_release(*(a1 + 32));
}

- (void)pluginPropertiesChanged:(id)changed
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = CMIOLogLevel(1);
  if (v5)
  {
    v6 = v5;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
      clientID = [(CMIOExtensionClient *)self->_clientInfo clientID];
      v14 = 136315907;
      v15 = v7;
      v16 = 1024;
      v17 = 1101;
      v18 = 2080;
      v19 = "[CMIOExtensionProviderContext pluginPropertiesChanged:]";
      v20 = 2113;
      v21 = clientID;
      _os_log_impl(&dword_22EA08000, v6, OS_LOG_TYPE_DEFAULT, "%s:%d:%s CID %{private}@", &v14, 0x26u);
    }
  }

  v9 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v9, "MessageType", 3uLL);
  if (!changed)
  {
    goto LABEL_7;
  }

  v10 = [CMIOExtensionPropertyState copyXPCDictionaryFromPropertyStates:changed];
  if (v10)
  {
    v11 = v10;
    xpc_dictionary_set_value(v9, "param1", v10);
    xpc_release(v11);
LABEL_7:
    xpc_connection_send_message(self->_connection, v9);
    goto LABEL_8;
  }

  v13 = CMIOLog();
  if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [CMIOExtensionProviderContext pluginPropertiesChanged:];
  }

LABEL_8:
  xpc_release(v9);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)availableDevicesChanged:(id)changed
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = CMIOLogLevel(1);
  if (v5)
  {
    v6 = v5;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
      clientID = [(CMIOExtensionClient *)self->_clientInfo clientID];
      v12 = 136315907;
      v13 = v7;
      v14 = 1024;
      v15 = 1124;
      v16 = 2080;
      v17 = "[CMIOExtensionProviderContext availableDevicesChanged:]";
      v18 = 2113;
      v19 = clientID;
      _os_log_impl(&dword_22EA08000, v6, OS_LOG_TYPE_DEFAULT, "%s:%d:%s CID %{private}@", &v12, 0x26u);
    }
  }

  v9 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v9, "MessageType", 1uLL);
  if (changed && cmio_XPCMessageSetCFArray(v9, "param1", changed))
  {
    v10 = CMIOLog();
    if (v10 && os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderContext availableDevicesChanged:];
    }
  }

  else
  {
    xpc_connection_send_message(self->_connection, v9);
  }

  xpc_release(v9);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)devicePropertiesChangedWithDeviceID:(id)d propertyStates:(id)states
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = CMIOLogLevel(1);
  if (v7)
  {
    v8 = v7;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
      clientID = [(CMIOExtensionClient *)self->_clientInfo clientID];
      v17 = 136316163;
      v18 = v9;
      v19 = 1024;
      v20 = 1140;
      v21 = 2080;
      v22 = "[CMIOExtensionProviderContext devicePropertiesChangedWithDeviceID:propertyStates:]";
      v23 = 2113;
      v24 = clientID;
      v25 = 2113;
      dCopy = d;
      _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s CID %{private}@ DID %{private}@", &v17, 0x30u);
    }
  }

  v11 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v11, "MessageType", 4uLL);
  if (cmio_XPCMessageSetCFString(v11, "param1", d))
  {
    v12 = CMIOLog();
    if (v12 && os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderContext devicePropertiesChangedWithDeviceID:propertyStates:];
    }

    goto LABEL_12;
  }

  if (!states)
  {
LABEL_11:
    xpc_connection_send_message(self->_connection, v11);
    goto LABEL_12;
  }

  v13 = [CMIOExtensionPropertyState copyXPCDictionaryFromPropertyStates:states];
  if (v13)
  {
    v14 = v13;
    xpc_dictionary_set_value(v11, "param2", v13);
    xpc_release(v14);
    goto LABEL_11;
  }

  v16 = CMIOLog();
  if (v16 && os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [CMIOExtensionProviderContext devicePropertiesChangedWithDeviceID:propertyStates:];
  }

LABEL_12:
  xpc_release(v11);
  v15 = *MEMORY[0x277D85DE8];
}

- (void)availableStreamsChangedWithDeviceID:(id)d streamIDs:(id)ds
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = CMIOLogLevel(1);
  if (v7)
  {
    v8 = v7;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
      clientID = [(CMIOExtensionClient *)self->_clientInfo clientID];
      v15 = 136316163;
      v16 = v9;
      v17 = 1024;
      v18 = 1166;
      v19 = 2080;
      v20 = "[CMIOExtensionProviderContext availableStreamsChangedWithDeviceID:streamIDs:]";
      v21 = 2113;
      v22 = clientID;
      v23 = 2113;
      dCopy = d;
      _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s CID %{private}@ DID %{private}@", &v15, 0x30u);
    }
  }

  v11 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v11, "MessageType", 2uLL);
  if (cmio_XPCMessageSetCFString(v11, "param1", d))
  {
    v12 = CMIOLog();
    if (v12 && os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderContext availableStreamsChangedWithDeviceID:streamIDs:];
    }
  }

  else if (ds && cmio_XPCMessageSetCFArray(v11, "param2", ds))
  {
    v13 = CMIOLog();
    if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderContext availableStreamsChangedWithDeviceID:streamIDs:];
    }
  }

  else
  {
    xpc_connection_send_message(self->_connection, v11);
  }

  xpc_release(v11);
  v14 = *MEMORY[0x277D85DE8];
}

- (void)streamPropertiesChangedWithStreamID:(id)d propertyStates:(id)states
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = CMIOLogLevel(1);
  if (v7)
  {
    v8 = v7;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
      clientID = [(CMIOExtensionClient *)self->_clientInfo clientID];
      v17 = 136316163;
      v18 = v9;
      v19 = 1024;
      v20 = 1185;
      v21 = 2080;
      v22 = "[CMIOExtensionProviderContext streamPropertiesChangedWithStreamID:propertyStates:]";
      v23 = 2113;
      v24 = clientID;
      v25 = 2112;
      dCopy = d;
      _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s CID %{private}@ SID %@", &v17, 0x30u);
    }
  }

  v11 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v11, "MessageType", 5uLL);
  if (cmio_XPCMessageSetCFString(v11, "param1", d))
  {
    v12 = CMIOLog();
    if (v12 && os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderContext streamPropertiesChangedWithStreamID:propertyStates:];
    }

    goto LABEL_12;
  }

  if (!states)
  {
LABEL_11:
    xpc_connection_send_message(self->_connection, v11);
    goto LABEL_12;
  }

  v13 = [CMIOExtensionPropertyState copyXPCDictionaryFromPropertyStates:states];
  if (v13)
  {
    v14 = v13;
    xpc_dictionary_set_value(v11, "param2", v13);
    xpc_release(v14);
    goto LABEL_11;
  }

  v16 = CMIOLog();
  if (v16 && os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [CMIOExtensionProviderContext streamPropertiesChangedWithStreamID:propertyStates:];
  }

LABEL_12:
  xpc_release(v11);
  v15 = *MEMORY[0x277D85DE8];
}

- (void)receivedSampleWithStreamID:(id)d sample:(id)sample
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = CMIOLogLevel(3);
  if (v7)
  {
    v8 = v7;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
      clientID = [(CMIOExtensionClient *)self->_clientInfo clientID];
      v17 = 136316163;
      v18 = v9;
      v19 = 1024;
      v20 = 1211;
      v21 = 2080;
      v22 = "[CMIOExtensionProviderContext receivedSampleWithStreamID:sample:]";
      v23 = 2113;
      v24 = clientID;
      v25 = 2112;
      dCopy = d;
      _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s CID %{private}@ SID %@", &v17, 0x30u);
    }
  }

  v11 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v11, "MessageType", 7uLL);
  if (cmio_XPCMessageSetCFString(v11, "param1", d))
  {
    v12 = CMIOLog();
    if (v12 && os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderContext receivedSampleWithStreamID:sample:];
    }

    goto LABEL_12;
  }

  if (!sample)
  {
LABEL_11:
    xpc_connection_send_message(self->_connection, v11);
    goto LABEL_12;
  }

  xpc_dictionary_set_int64(v11, "param2", [sample mediaType]);
  copyXPCDictionary = [sample copyXPCDictionary];
  if (copyXPCDictionary)
  {
    v14 = copyXPCDictionary;
    xpc_dictionary_set_value(v11, "param3", copyXPCDictionary);
    xpc_release(v14);
    goto LABEL_11;
  }

  v16 = CMIOLog();
  if (v16 && os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [CMIOExtensionProviderContext receivedSampleWithStreamID:sample:];
  }

LABEL_12:
  xpc_release(v11);
  v15 = *MEMORY[0x277D85DE8];
}

- (void)pullSampleBufferForStreamID:(id)d replyq:(id)replyq reply:(id)reply
{
  v28 = *MEMORY[0x277D85DE8];
  v9 = CMIOLogLevel(3);
  if (v9)
  {
    v10 = v9;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
      clientID = [(CMIOExtensionClient *)self->_clientInfo clientID];
      *buf = 136316163;
      v19 = v11;
      v20 = 1024;
      v21 = 1240;
      v22 = 2080;
      v23 = "[CMIOExtensionProviderContext pullSampleBufferForStreamID:replyq:reply:]";
      v24 = 2113;
      v25 = clientID;
      v26 = 2112;
      dCopy = d;
      _os_log_impl(&dword_22EA08000, v10, OS_LOG_TYPE_DEFAULT, "%s:%d:%s CID %{private}@ SID %@", buf, 0x30u);
    }
  }

  v13 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v13, "MessageType", 8uLL);
  if (cmio_XPCMessageSetCFString(v13, "param1", d))
  {
    v14 = CMIOLog();
    if (v14 && os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderContext pullSampleBufferForStreamID:replyq:reply:];
    }

    (*(reply + 2))(reply, 0, 0, [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-5 userInfo:0]);
  }

  else
  {
    connection = self->_connection;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __73__CMIOExtensionProviderContext_pullSampleBufferForStreamID_replyq_reply___block_invoke;
    handler[3] = &unk_27885C4B8;
    handler[4] = reply;
    xpc_connection_send_message_with_reply(connection, v13, replyq, handler);
  }

  xpc_release(v13);
  v16 = *MEMORY[0x277D85DE8];
}

void __73__CMIOExtensionProviderContext_pullSampleBufferForStreamID_replyq_reply___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x2318F1BC0](a2);
  if (v4 == MEMORY[0x277D86480])
  {
    v7 = CMIOLog();
    if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
      __73__CMIOExtensionProviderContext_pullSampleBufferForStreamID_replyq_reply___block_invoke_cold_3(v8, a2, buf);
    }

    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-7 userInfo:0];
    (*(*(a1 + 32) + 16))();
  }

  else if (v4 == MEMORY[0x277D86468])
  {
    int64 = xpc_dictionary_get_int64(a2, "errorReturn");
    if (int64)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:int64 userInfo:0];
      (*(*(a1 + 32) + 16))();
    }

    else
    {
      value = xpc_dictionary_get_value(a2, "param1");
      if (value)
      {
        value = [[CMIOExtensionSample alloc] initWithXPCDictionary:value];
        if (!value)
        {
          v11 = CMIOLog();
          v12 = v11;
          if (v11 && os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            v13 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
            __73__CMIOExtensionProviderContext_pullSampleBufferForStreamID_replyq_reply___block_invoke_cold_2(v13, buf, v12);
          }

          [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6 userInfo:0];
        }

        xpc_dictionary_get_BOOL(a2, "param2");
      }

      (*(*(a1 + 32) + 16))();
    }
  }

  else
  {
    v5 = CMIOLog();
    if (v5 && os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
      __73__CMIOExtensionProviderContext_pullSampleBufferForStreamID_replyq_reply___block_invoke_cold_1(v6, a2, buf);
    }

    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6 userInfo:0];
    (*(*(a1 + 32) + 16))();
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)streamScheduledOutputChangedWithStreamID:(id)d scheduledOutput:(id)output
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = CMIOLogLevel(2);
  if (v7)
  {
    v8 = v7;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
      clientID = [(CMIOExtensionClient *)self->_clientInfo clientID];
      v17 = 136316163;
      v18 = v9;
      v19 = 1024;
      v20 = 1304;
      v21 = 2080;
      v22 = "[CMIOExtensionProviderContext streamScheduledOutputChangedWithStreamID:scheduledOutput:]";
      v23 = 2113;
      v24 = clientID;
      v25 = 2112;
      dCopy = d;
      _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s CID %{private}@ SID %@", &v17, 0x30u);
    }
  }

  v11 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v11, "MessageType", 9uLL);
  if (cmio_XPCMessageSetCFString(v11, "param1", d))
  {
    v12 = CMIOLog();
    if (v12 && os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderContext streamScheduledOutputChangedWithStreamID:scheduledOutput:];
    }

    goto LABEL_12;
  }

  if (!output)
  {
LABEL_11:
    xpc_connection_send_message(self->_connection, v11);
    goto LABEL_12;
  }

  copyXPCDictionary = [output copyXPCDictionary];
  if (copyXPCDictionary)
  {
    v14 = copyXPCDictionary;
    xpc_dictionary_set_value(v11, "param2", copyXPCDictionary);
    xpc_release(v14);
    goto LABEL_11;
  }

  v16 = CMIOLog();
  if (v16 && os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [CMIOExtensionProviderContext streamScheduledOutputChangedWithStreamID:scheduledOutput:];
  }

LABEL_12:
  xpc_release(v11);
  v15 = *MEMORY[0x277D85DE8];
}

void __51__CMIOExtensionProviderContext_initWithConnection___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  xpc_connection_get_pid(*(a1 + 32));
  OUTLINED_FUNCTION_5_5();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Cu);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)handleClientMessageWithConnection:message:.cold.1()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)availablePluginProperties:message:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __66__CMIOExtensionProviderContext_availablePluginProperties_message___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __66__CMIOExtensionProviderContext_availablePluginProperties_message___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)pluginStates:message:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __53__CMIOExtensionProviderContext_pluginStates_message___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __53__CMIOExtensionProviderContext_pluginStates_message___block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __53__CMIOExtensionProviderContext_pluginStates_message___block_invoke_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __53__CMIOExtensionProviderContext_pluginStates_message___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)pluginPropertyStatesForProperties:message:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __74__CMIOExtensionProviderContext_pluginPropertyStatesForProperties_message___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __74__CMIOExtensionProviderContext_pluginPropertyStatesForProperties_message___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setPluginPropertyValues:message:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setPluginPropertyValues:message:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setPluginPropertyValues:message:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __64__CMIOExtensionProviderContext_setPluginPropertyValues_message___block_invoke_31_cold_1()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)availableDeviceProperties:message:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)availableDeviceProperties:message:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __66__CMIOExtensionProviderContext_availableDeviceProperties_message___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

void __66__CMIOExtensionProviderContext_availableDeviceProperties_message___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)deviceStates:message:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)deviceStates:message:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __53__CMIOExtensionProviderContext_deviceStates_message___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __53__CMIOExtensionProviderContext_deviceStates_message___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)devicePropertyStates:message:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)devicePropertyStates:message:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __61__CMIOExtensionProviderContext_devicePropertyStates_message___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __61__CMIOExtensionProviderContext_devicePropertyStates_message___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setDevicePropertyValues:message:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setDevicePropertyValues:message:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setDevicePropertyValues:message:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setDevicePropertyValues:message:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __64__CMIOExtensionProviderContext_setDevicePropertyValues_message___block_invoke_34_cold_1()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)availableStreamProperties:message:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)availableStreamProperties:message:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __66__CMIOExtensionProviderContext_availableStreamProperties_message___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

void __66__CMIOExtensionProviderContext_availableStreamProperties_message___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)streamPropertyStates:message:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)streamPropertyStates:message:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __61__CMIOExtensionProviderContext_streamPropertyStates_message___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __61__CMIOExtensionProviderContext_streamPropertyStates_message___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setStreamPropertyValues:message:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setStreamPropertyValues:message:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setStreamPropertyValues:message:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setStreamPropertyValues:message:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __64__CMIOExtensionProviderContext_setStreamPropertyValues_message___block_invoke_35_cold_1()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)startStream:message:.cold.1()
{
  OUTLINED_FUNCTION_13();
  v8 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  v7 = *v0;
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)startStream:message:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)startStream:message:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __52__CMIOExtensionProviderContext_startStream_message___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)stopStream:message:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)stopStream:message:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __51__CMIOExtensionProviderContext_stopStream_message___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setClientInfo:message:.cold.1()
{
  OUTLINED_FUNCTION_13();
  v7 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  xpc_connection_get_pid(v0);
  OUTLINED_FUNCTION_5_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x22u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setClientInfo:message:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)captureAsyncStillImage:message:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)captureAsyncStillImage:message:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)captureAsyncStillImage:message:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)captureAsyncStillImage:message:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __63__CMIOExtensionProviderContext_captureAsyncStillImage_message___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)updateNonStreamingProxyFrontedExtensionPIDs:message:.cold.1()
{
  OUTLINED_FUNCTION_13();
  v7 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  [*v0 pid];
  OUTLINED_FUNCTION_5_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x22u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)updateNonStreamingProxyFrontedExtensionPIDs:message:.cold.2()
{
  OUTLINED_FUNCTION_13();
  v7 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  [*v0 pid];
  OUTLINED_FUNCTION_5_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x22u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)enqueueReactionEffect:message:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)enqueueReactionEffect:message:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)enqueueReactionEffect:message:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __62__CMIOExtensionProviderContext_enqueueReactionEffect_message___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)pluginPropertiesChanged:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)availableDevicesChanged:.cold.1()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)devicePropertiesChangedWithDeviceID:propertyStates:.cold.1()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)devicePropertiesChangedWithDeviceID:propertyStates:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)availableStreamsChangedWithDeviceID:streamIDs:.cold.1()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)availableStreamsChangedWithDeviceID:streamIDs:.cold.2()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)streamPropertiesChangedWithStreamID:propertyStates:.cold.1()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)streamPropertiesChangedWithStreamID:propertyStates:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)receivedSampleWithStreamID:sample:.cold.1()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)receivedSampleWithStreamID:sample:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)pullSampleBufferForStreamID:replyq:reply:.cold.1()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

void __73__CMIOExtensionProviderContext_pullSampleBufferForStreamID_replyq_reply___block_invoke_cold_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = OUTLINED_FUNCTION_1(a1, 4.8153e-34, a2, a3);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2_1(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s unknown type %{public}@", v9, v10);
}

void __73__CMIOExtensionProviderContext_pullSampleBufferForStreamID_replyq_reply___block_invoke_cold_2(uint64_t a1, uint8_t *buf, os_log_t log)
{
  *buf = 136315650;
  *(buf + 4) = a1;
  *(buf + 6) = 1024;
  *(buf + 14) = 1280;
  *(buf + 9) = 2080;
  *(buf + 20) = "[CMIOExtensionProviderContext pullSampleBufferForStreamID:replyq:reply:]_block_invoke";
  _os_log_error_impl(&dword_22EA08000, log, OS_LOG_TYPE_ERROR, "%s:%d:%s CMIOExtensionSample alloc failed", buf, 0x1Cu);
}

void __73__CMIOExtensionProviderContext_pullSampleBufferForStreamID_replyq_reply___block_invoke_cold_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = OUTLINED_FUNCTION_1(a1, 4.8153e-34, a2, a3);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2_1(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s received %{public}@", v9, v10);
}

void __73__CMIOExtensionProviderContext_pullSampleBufferForStreamID_replyq_reply___block_invoke_cold_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = OUTLINED_FUNCTION_1(a1, 4.8153e-34, a2, a3);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  *(v6 + 20) = "[CMIOExtensionProviderContext pullSampleBufferForStreamID:replyq:reply:]_block_invoke";
  *(v6 + 28) = 2112;
  *(v6 + 30) = v7;
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s exception %@", v8, v9);
}

- (void)streamScheduledOutputChangedWithStreamID:scheduledOutput:.cold.1()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)streamScheduledOutputChangedWithStreamID:scheduledOutput:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

@end