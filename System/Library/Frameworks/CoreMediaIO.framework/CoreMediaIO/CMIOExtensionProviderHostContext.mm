@interface CMIOExtensionProviderHostContext
- (CMIOExtensionProviderHostContext)initWithConnection:(id)connection delegate:(id)delegate;
- (NSString)description;
- (id)redactedDescription;
- (void)availableDevicePropertiesWithDeviceID:(id)d reply:(id)reply;
- (void)availableDevicesChanged:(id)changed message:(id)message;
- (void)availablePluginProperties:(id)properties;
- (void)availableStreamPropertiesWithStreamID:(id)d reply:(id)reply;
- (void)availableStreamsChanged:(id)changed message:(id)message;
- (void)captureAsyncStillImageWithStreamID:(id)d uniqueID:(int64_t)iD options:(id)options reply:(id)reply;
- (void)completeTransaction;
- (void)dealloc;
- (void)devicePropertiesChanged:(id)changed message:(id)message;
- (void)devicePropertyStatesWithDeviceID:(id)d properties:(id)properties reply:(id)reply;
- (void)deviceStatesWithDeviceID:(id)d reply:(id)reply;
- (void)enqueueReactionEffect:(id)effect reactionType:(id)type reply:(id)reply;
- (void)handleClientMessageWithConnection:(id)connection message:(id)message;
- (void)pluginPropertiesChanged:(id)changed message:(id)message;
- (void)pluginPropertyStatesForProperties:(id)properties reply:(id)reply;
- (void)pluginStates:(id)states;
- (void)pullSample:(id)sample message:(id)message;
- (void)receivedSample:(id)sample message:(id)message;
- (void)refreshExtensionConnection;
- (void)scheduledOutputChanged:(id)changed message:(id)message;
- (void)sendEmptyClientInfo;
- (void)setDevicePropertyValuesWithDeviceID:(id)d propertyValues:(id)values reply:(id)reply;
- (void)setPluginPropertyValues:(id)values reply:(id)reply;
- (void)setStreamPropertyValuesWithStreamID:(id)d propertyValues:(id)values reply:(id)reply;
- (void)startStreamWithStreamID:(id)d reply:(id)reply;
- (void)stopStreamWithStreamID:(id)d reply:(id)reply;
- (void)streamPropertiesChanged:(id)changed message:(id)message;
- (void)streamPropertyStatesWithStreamID:(id)d properties:(id)properties reply:(id)reply;
@end

@implementation CMIOExtensionProviderHostContext

- (CMIOExtensionProviderHostContext)initWithConnection:(id)connection delegate:(id)delegate
{
  v31 = *MEMORY[0x277D85DE8];
  if (connection)
  {
    v22.receiver = self;
    v22.super_class = CMIOExtensionProviderHostContext;
    v6 = [(CMIOExtensionProviderHostContext *)&v22 init];
    v7 = v6;
    if (v6)
    {
      v6->_internalLock._os_unfair_lock_opaque = 0;
      dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v7->_queue = FigDispatchQueueCreateTargetingWorkloopWithPriority();
      v7->_transactionGroup = dispatch_group_create();
      objc_storeWeak(&v7->_delegate, delegate);
      v7->_connection = connection;
      xpc_connection_set_target_queue(connection, v7->_queue);
      objc_initWeak(&location, v7);
      handler = MEMORY[0x277D85DD0];
      v16 = 3221225472;
      v17 = __64__CMIOExtensionProviderHostContext_initWithConnection_delegate___block_invoke;
      v18 = &unk_27885C1C0;
      objc_copyWeak(&v20, &location);
      connectionCopy = connection;
      xpc_connection_set_event_handler(connection, &handler);
      xpc_connection_activate(connection);
      [(CMIOExtensionProviderHostContext *)v7 sendEmptyClientInfo];
      pid = xpc_connection_get_pid(connection);
      v9 = objc_alloc(MEMORY[0x277CCACA8]);
      v7->_description = [v9 initWithFormat:@"<CMIOExtensionProviderHostContext: pid %u>", pid, handler, v16, v17, v18];
      v7->_redactedDescription = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<CMIOExtensionProviderHostContext: pid ->"];
      v10 = CMIOLog();
      v11 = v10;
      if (v10 && os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        *buf = 136315907;
        v24 = v12;
        v25 = 1024;
        v26 = 104;
        v27 = 2080;
        v28 = "[CMIOExtensionProviderHostContext initWithConnection:delegate:]";
        v29 = 2113;
        v30 = v7;
        _os_log_impl(&dword_22EA08000, v11, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{private}@", buf, 0x26u);
      }

      objc_destroyWeak(&v20);
      objc_destroyWeak(&location);
    }
  }

  else
  {

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Invalid argument"];
    v7 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v7;
}

void __64__CMIOExtensionProviderHostContext_initWithConnection_delegate___block_invoke(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = MEMORY[0x2318F1BC0](a2);
  if (v5 == MEMORY[0x277D86480])
  {
    v6 = CMIOLog();
    if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __64__CMIOExtensionProviderHostContext_initWithConnection_delegate___block_invoke_cold_1(a1);
    }

    if (a2 == MEMORY[0x277D863F8])
    {
      xpc_connection_cancel(*(a1 + 32));
    }

    if (a2 == MEMORY[0x277D863F0] && WeakRetained && (WeakRetained[48] & 1) == 0)
    {
      v7 = CMIOLog();
      if (v7)
      {
        v8 = v7;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v10 = 136315907;
          v11 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
          v12 = 1024;
          v13 = 83;
          v14 = 2080;
          v15 = "[CMIOExtensionProviderHostContext initWithConnection:delegate:]_block_invoke";
          v16 = 2113;
          v17 = WeakRetained;
          _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{private}@, connection is invalidated", &v10, 0x26u);
        }
      }

      xpc_connection_cancel([WeakRetained connection]);
      WeakRetained[48] = 1;
      [objc_msgSend(WeakRetained "delegate")];
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
  v15 = *MEMORY[0x277D85DE8];
  if (CMIOModuleLogLevel_once_1 != -1)
  {
    [CMIOExtensionProviderHostContext dealloc];
  }

  if (CMIOModuleLogLevel_cmioLevel_1 >= 1)
  {
    v3 = CMIOLog();
    if (v3)
    {
      v4 = v3;
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315907;
        v8 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        v9 = 1024;
        v10 = 111;
        v11 = 2080;
        v12 = "[CMIOExtensionProviderHostContext dealloc]";
        v13 = 2113;
        selfCopy = self;
        _os_log_impl(&dword_22EA08000, v4, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{private}@", buf, 0x26u);
      }
    }
  }

  dispatch_release(self->_queue);
  dispatch_release(self->_transactionGroup);

  v6.receiver = self;
  v6.super_class = CMIOExtensionProviderHostContext;
  [(CMIOExtensionProviderHostContext *)&v6 dealloc];
  v5 = *MEMORY[0x277D85DE8];
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

- (void)handleClientMessageWithConnection:(id)connection message:(id)message
{
  v22 = *MEMORY[0x277D85DE8];
  uint64 = xpc_dictionary_get_uint64(message, "MessageType");
  if (CMIOModuleLogLevel_once_1 != -1)
  {
    [CMIOExtensionProviderHostContext dealloc];
  }

  if (CMIOModuleLogLevel_cmioLevel_1 >= 1)
  {
    v8 = CMIOLog();
    if (v8)
    {
      v9 = v8;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136316163;
        v13 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        v14 = 1024;
        v15 = 137;
        v16 = 2080;
        v17 = "[CMIOExtensionProviderHostContext handleClientMessageWithConnection:message:]";
        v18 = 2113;
        selfCopy = self;
        v20 = 2048;
        v21 = uint64;
        _os_log_impl(&dword_22EA08000, v9, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{private}@ %lld", &v12, 0x30u);
      }
    }
  }

  if (uint64 > 4)
  {
    if (uint64 > 7)
    {
      if (uint64 == 8)
      {
        [(CMIOExtensionProviderHostContext *)self pullSample:connection message:message];
        goto LABEL_28;
      }

      if (uint64 == 9)
      {
        [(CMIOExtensionProviderHostContext *)self scheduledOutputChanged:connection message:message];
        goto LABEL_28;
      }
    }

    else
    {
      if (uint64 == 5)
      {
        [(CMIOExtensionProviderHostContext *)self streamPropertiesChanged:connection message:message];
        goto LABEL_28;
      }

      if (uint64 == 7)
      {
        [(CMIOExtensionProviderHostContext *)self receivedSample:connection message:message];
        goto LABEL_28;
      }
    }
  }

  else
  {
    if (uint64 > 2)
    {
      if (uint64 == 3)
      {
        [(CMIOExtensionProviderHostContext *)self pluginPropertiesChanged:connection message:message];
      }

      else
      {
        [(CMIOExtensionProviderHostContext *)self devicePropertiesChanged:connection message:message];
      }

      goto LABEL_28;
    }

    if (uint64 == 1)
    {
      [(CMIOExtensionProviderHostContext *)self availableDevicesChanged:connection message:message];
      goto LABEL_28;
    }

    if (uint64 == 2)
    {
      [(CMIOExtensionProviderHostContext *)self availableStreamsChanged:connection message:message];
      goto LABEL_28;
    }
  }

  v10 = CMIOLog();
  if (v10 && os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [CMIOExtensionProviderHostContext handleClientMessageWithConnection:message:];
  }

LABEL_28:
  v11 = *MEMORY[0x277D85DE8];
}

- (void)availableDevicesChanged:(id)changed message:(id)message
{
  v22 = *MEMORY[0x277D85DE8];
  cf = 0;
  if (cmio_XPCMessageCopyCFArray(message, "param1", &cf))
  {
    v5 = CMIOLog();
    if (v5)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [CMIOExtensionProviderHostContext availableDevicesChanged:message:];
      }
    }
  }

  if (cf)
  {
    if (CMIOModuleLogLevel_once_1 != -1)
    {
      [CMIOExtensionProviderHostContext availableDevicesChanged:message:];
    }

    if (CMIOModuleLogLevel_cmioLevel_1 >= 1)
    {
      v6 = CMIOLog();
      if (v6)
      {
        v7 = v6;
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v8 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
          *buf = 136316163;
          v13 = v8;
          v14 = 1024;
          v15 = 177;
          v16 = 2080;
          v17 = "[CMIOExtensionProviderHostContext availableDevicesChanged:message:]";
          v18 = 2113;
          selfCopy = self;
          v20 = 2112;
          v21 = cf;
          _os_log_impl(&dword_22EA08000, v7, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{private}@ - devices %@", buf, 0x30u);
        }
      }
    }

    delegate = [(CMIOExtensionProviderHostContext *)self delegate];
    [(CMIOExtensionProviderHostDelegate *)delegate extension:self availableDevicesChanged:cf];
    CFRelease(cf);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)availableStreamsChanged:(id)changed message:(id)message
{
  v25 = *MEMORY[0x277D85DE8];
  v14 = 0;
  cmio_XPCMessageCopyCFString(message, "param1", &v14);
  if (v14)
  {
    cf = 0;
    if (cmio_XPCMessageCopyCFArray(message, "param2", &cf))
    {
      v6 = CMIOLog();
      if (v6)
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          [CMIOExtensionProviderHostContext availableStreamsChanged:message:];
        }
      }
    }

    if (cf)
    {
      if (CMIOModuleLogLevel_once_1 != -1)
      {
        [CMIOExtensionProviderHostContext availableDevicesChanged:message:];
      }

      if (CMIOModuleLogLevel_cmioLevel_1 >= 1)
      {
        v7 = CMIOLog();
        if (v7)
        {
          v8 = v7;
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            v9 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
            *buf = 136316163;
            v16 = v9;
            v17 = 1024;
            v18 = 195;
            v19 = 2080;
            v20 = "[CMIOExtensionProviderHostContext availableStreamsChanged:message:]";
            v21 = 2113;
            selfCopy = self;
            v23 = 2112;
            v24 = cf;
            _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{private}@ - streams %@", buf, 0x30u);
          }
        }
      }

      delegate = [(CMIOExtensionProviderHostContext *)self delegate];
      [(CMIOExtensionProviderHostDelegate *)delegate extension:self availableStreamsChangedWithDeviceID:v14 streamIDs:cf];
      CFRelease(cf);
    }

    CFRelease(v14);
  }

  else
  {
    v11 = CMIOLog();
    if (v11 && os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderHostContext availableStreamsChanged:message:];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)pluginPropertiesChanged:(id)changed message:(id)message
{
  v23 = *MEMORY[0x277D85DE8];
  value = xpc_dictionary_get_value(message, "param1");
  if (value)
  {
    v6 = [CMIOExtensionPropertyState copyPropertyStatesFromXPCDictionary:value];
    if (v6)
    {
      v7 = v6;
      if (CMIOModuleLogLevel_once_1 != -1)
      {
        [CMIOExtensionProviderHostContext dealloc];
      }

      if (CMIOModuleLogLevel_cmioLevel_1 >= 2)
      {
        v8 = CMIOLog();
        if (v8)
        {
          v9 = v8;
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            v13 = 136316163;
            v14 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
            v15 = 1024;
            v16 = 215;
            v17 = 2080;
            v18 = "[CMIOExtensionProviderHostContext pluginPropertiesChanged:message:]";
            v19 = 2113;
            selfCopy = self;
            v21 = 2112;
            v22 = v7;
            _os_log_impl(&dword_22EA08000, v9, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{private}@ - %@", &v13, 0x30u);
          }
        }
      }

      [(CMIOExtensionProviderHostDelegate *)[(CMIOExtensionProviderHostContext *)self delegate] extension:self pluginPropertiesChanged:v7];
    }

    else
    {
      v11 = CMIOLog();
      if (v11 && os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [CMIOExtensionProviderHostContext pluginPropertiesChanged:message:];
      }
    }
  }

  else
  {
    v10 = CMIOLog();
    if (v10 && os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderHostContext pluginPropertiesChanged:message:];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)devicePropertiesChanged:(id)changed message:(id)message
{
  v30 = *MEMORY[0x277D85DE8];
  cf = 0;
  cmio_XPCMessageCopyCFString(message, "param1", &cf);
  if (cf)
  {
    value = xpc_dictionary_get_value(message, "param2");
    if (value)
    {
      v7 = [CMIOExtensionPropertyState copyPropertyStatesFromXPCDictionary:value];
      if (v7)
      {
        v8 = v7;
        if (CMIOModuleLogLevel_once_1 != -1)
        {
          [CMIOExtensionProviderHostContext availableDevicesChanged:message:];
        }

        if (CMIOModuleLogLevel_cmioLevel_1 >= 2)
        {
          v9 = CMIOLog();
          if (v9)
          {
            v10 = v9;
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
            {
              v11 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
              *buf = 136316419;
              v19 = v11;
              v20 = 1024;
              v21 = 236;
              v22 = 2080;
              v23 = "[CMIOExtensionProviderHostContext devicePropertiesChanged:message:]";
              v24 = 2113;
              selfCopy = self;
              v26 = 2112;
              v27 = cf;
              v28 = 2112;
              v29 = v8;
              _os_log_impl(&dword_22EA08000, v10, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{private}@ - %@ - %@", buf, 0x3Au);
            }
          }
        }

        delegate = [(CMIOExtensionProviderHostContext *)self delegate];
        [(CMIOExtensionProviderHostDelegate *)delegate extension:self devicePropertiesChangedWithDeviceID:cf propertyStates:v8];
      }

      else
      {
        v15 = CMIOLog();
        if (v15 && os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [CMIOExtensionProviderHostContext devicePropertiesChanged:message:];
        }
      }
    }

    else
    {
      v14 = CMIOLog();
      if (v14 && os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [CMIOExtensionProviderHostContext devicePropertiesChanged:message:];
      }
    }

    CFRelease(cf);
  }

  else
  {
    v13 = CMIOLog();
    if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderHostContext devicePropertiesChanged:message:];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)streamPropertiesChanged:(id)changed message:(id)message
{
  v30 = *MEMORY[0x277D85DE8];
  cf = 0;
  cmio_XPCMessageCopyCFString(message, "param1", &cf);
  if (cf)
  {
    value = xpc_dictionary_get_value(message, "param2");
    if (value)
    {
      v7 = [CMIOExtensionPropertyState copyPropertyStatesFromXPCDictionary:value];
      if (v7)
      {
        v8 = v7;
        if (CMIOModuleLogLevel_once_1 != -1)
        {
          [CMIOExtensionProviderHostContext availableDevicesChanged:message:];
        }

        if (CMIOModuleLogLevel_cmioLevel_1 >= 2)
        {
          v9 = CMIOLog();
          if (v9)
          {
            v10 = v9;
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
            {
              v11 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
              *buf = 136316419;
              v19 = v11;
              v20 = 1024;
              v21 = 260;
              v22 = 2080;
              v23 = "[CMIOExtensionProviderHostContext streamPropertiesChanged:message:]";
              v24 = 2113;
              selfCopy = self;
              v26 = 2112;
              v27 = cf;
              v28 = 2112;
              v29 = v8;
              _os_log_impl(&dword_22EA08000, v10, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{private}@ - %@ - %@", buf, 0x3Au);
            }
          }
        }

        delegate = [(CMIOExtensionProviderHostContext *)self delegate];
        [(CMIOExtensionProviderHostDelegate *)delegate extension:self streamPropertiesChangedWithStreamID:cf propertyStates:v8];
      }

      else
      {
        v15 = CMIOLog();
        if (v15 && os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [CMIOExtensionProviderHostContext streamPropertiesChanged:message:];
        }
      }
    }

    else
    {
      v14 = CMIOLog();
      if (v14 && os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [CMIOExtensionProviderHostContext streamPropertiesChanged:message:];
      }
    }

    CFRelease(cf);
  }

  else
  {
    v13 = CMIOLog();
    if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderHostContext streamPropertiesChanged:message:];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)receivedSample:(id)sample message:(id)message
{
  v39 = *MEMORY[0x277D85DE8];
  cf = 0;
  cmio_XPCMessageCopyCFString(message, "param1", &cf);
  if (cf)
  {
    int64 = xpc_dictionary_get_int64(message, "param2");
    value = xpc_dictionary_get_value(message, "param3");
    if (value)
    {
      v8 = [[CMIOExtensionSample alloc] initWithXPCDictionary:value];
      if (v8)
      {
        v9 = v8;
        if (CMIOModuleLogLevel_once_1 != -1)
        {
          [CMIOExtensionProviderHostContext availableDevicesChanged:message:];
        }

        if (CMIOModuleLogLevel_cmioLevel_1 >= 3)
        {
          v10 = CMIOLog();
          if (v10)
          {
            v11 = v10;
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
            {
              v12 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
              *buf = 136317443;
              v20 = v12;
              v22 = 286;
              v23 = 2080;
              v21 = 1024;
              v24 = "[CMIOExtensionProviderHostContext receivedSample:message:]";
              v25 = 2113;
              selfCopy = self;
              v27 = 2112;
              v28 = cf;
              v29 = 1024;
              v30 = HIBYTE(int64);
              v31 = 1024;
              v32 = BYTE2(int64);
              v33 = 1024;
              v34 = BYTE1(int64);
              v35 = 1024;
              v36 = int64;
              v37 = 2112;
              v38 = v9;
              _os_log_impl(&dword_22EA08000, v11, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{private}@ - %@ - %c%c%c%c - %@", buf, 0x52u);
            }
          }
        }

        delegate = [(CMIOExtensionProviderHostContext *)self delegate];
        [(CMIOExtensionProviderHostDelegate *)delegate extension:self receivedSampleWithStreamID:cf sample:v9];
      }

      else
      {
        v16 = CMIOLog();
        if (v16 && os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [CMIOExtensionProviderHostContext receivedSample:message:];
        }
      }
    }

    else
    {
      v15 = CMIOLog();
      if (v15 && os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [CMIOExtensionProviderHostContext receivedSample:message:];
      }
    }

    CFRelease(cf);
  }

  else
  {
    v14 = CMIOLog();
    if (v14 && os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderHostContext receivedSample:message:];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)pullSample:(id)sample message:(id)message
{
  v13 = 0;
  cmio_XPCMessageCopyCFString(message, "param1", &v13);
  if (!v13)
  {
    v10 = CMIOLog();
    v8 = v10;
    if (!v10)
    {
      goto LABEL_11;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderHostContext pullSample:message:];
    }

    goto LABEL_10;
  }

  reply = xpc_dictionary_create_reply(message);
  if (reply)
  {
    v8 = reply;
    xpc_retain(reply);
    delegate = [(CMIOExtensionProviderHostContext *)self delegate];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __55__CMIOExtensionProviderHostContext_pullSample_message___block_invoke;
    v12[3] = &unk_27885C318;
    v12[4] = v8;
    v12[5] = sample;
    [(CMIOExtensionProviderHostDelegate *)delegate extension:self pullSampleWithStreamID:v13 reply:v12];
    goto LABEL_11;
  }

  v11 = CMIOLog();
  v8 = v11;
  if (v11)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderHostContext pullSample:message:];
    }

LABEL_10:
    v8 = 0;
  }

LABEL_11:
  if (v13)
  {
    CFRelease(v13);
  }

  if (v8)
  {
    xpc_release(v8);
  }
}

void __55__CMIOExtensionProviderHostContext_pullSample_message___block_invoke(uint64_t a1, void *a2, BOOL a3, void *a4)
{
  if (a2)
  {
    v7 = [a2 copyXPCDictionary];
    if (v7)
    {
      v8 = v7;
      xpc_dictionary_set_value(*(a1 + 32), "param1", v7);
      xpc_release(v8);
    }

    else
    {
      v9 = CMIOLog();
      if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __55__CMIOExtensionProviderHostContext_pullSample_message___block_invoke_cold_1();
      }

      a4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-5 userInfo:0];
    }

    xpc_dictionary_set_BOOL(*(a1 + 32), "param2", a3);
  }

  if (a4)
  {
    v10 = CMIOLog();
    if (v10 && os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __55__CMIOExtensionProviderHostContext_pullSample_message___block_invoke_cold_2();
    }

    v11 = *(a1 + 32);
    v12 = [a4 code];
    v13 = v11;
  }

  else
  {
    v13 = *(a1 + 32);
    v12 = 0;
  }

  xpc_dictionary_set_int64(v13, "errorReturn", v12);
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  xpc_release(*(a1 + 32));
}

- (void)scheduledOutputChanged:(id)changed message:(id)message
{
  v30 = *MEMORY[0x277D85DE8];
  cf = 0;
  cmio_XPCMessageCopyCFString(message, "param1", &cf);
  if (cf)
  {
    value = xpc_dictionary_get_value(message, "param2");
    if (value)
    {
      v7 = [[CMIOExtensionScheduledOutput alloc] initWithXPCDictionary:value];
      if (v7)
      {
        v8 = v7;
        if (CMIOModuleLogLevel_once_1 != -1)
        {
          [CMIOExtensionProviderHostContext availableDevicesChanged:message:];
        }

        if (CMIOModuleLogLevel_cmioLevel_1 >= 3)
        {
          v9 = CMIOLog();
          if (v9)
          {
            v10 = v9;
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
            {
              v11 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
              *buf = 136316419;
              v19 = v11;
              v20 = 1024;
              v21 = 356;
              v22 = 2080;
              v23 = "[CMIOExtensionProviderHostContext scheduledOutputChanged:message:]";
              v24 = 2113;
              selfCopy = self;
              v26 = 2112;
              v27 = cf;
              v28 = 2112;
              v29 = v8;
              _os_log_impl(&dword_22EA08000, v10, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{private}@ - %@ - %@", buf, 0x3Au);
            }
          }
        }

        delegate = [(CMIOExtensionProviderHostContext *)self delegate];
        [(CMIOExtensionProviderHostDelegate *)delegate extension:self streamScheduledOutputChangedWithStreamID:cf scheduledOutput:v8];
      }

      else
      {
        v15 = CMIOLog();
        if (v15 && os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [CMIOExtensionProviderHostContext scheduledOutputChanged:message:];
        }
      }
    }

    else
    {
      v14 = CMIOLog();
      if (v14 && os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [CMIOExtensionProviderHostContext scheduledOutputChanged:message:];
      }
    }

    CFRelease(cf);
  }

  else
  {
    v13 = CMIOLog();
    if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderHostContext scheduledOutputChanged:message:];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)availablePluginProperties:(id)properties
{
  v20 = *MEMORY[0x277D85DE8];
  if (CMIOModuleLogLevel_once_1 != -1)
  {
    [CMIOExtensionProviderHostContext dealloc];
  }

  if (CMIOModuleLogLevel_cmioLevel_1 >= 1)
  {
    v5 = CMIOLog();
    if (v5)
    {
      v6 = v5;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315907;
        v13 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        v14 = 1024;
        v15 = 371;
        v16 = 2080;
        v17 = "[CMIOExtensionProviderHostContext availablePluginProperties:]";
        v18 = 2113;
        selfCopy = self;
        _os_log_impl(&dword_22EA08000, v6, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{private}@", buf, 0x26u);
      }
    }
  }

  v7 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v7, "MessageType", 2uLL);
  dispatch_group_enter(self->_transactionGroup);
  connection = self->_connection;
  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__CMIOExtensionProviderHostContext_availablePluginProperties___block_invoke;
  v11[3] = &unk_27885C340;
  v11[4] = self;
  v11[5] = properties;
  xpc_connection_send_message_with_reply(connection, v7, queue, v11);
  xpc_release(v7);
  v10 = *MEMORY[0x277D85DE8];
}

void __62__CMIOExtensionProviderHostContext_availablePluginProperties___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x2318F1BC0](a2);
  if (v4 == MEMORY[0x277D86480])
  {
    v6 = CMIOLog();
    if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
      __62__CMIOExtensionProviderHostContext_availablePluginProperties___block_invoke_cold_3();
    }

    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-7 userInfo:0];
    (*(*(a1 + 40) + 16))();
  }

  else if (v4 == MEMORY[0x277D86468])
  {
    int64 = xpc_dictionary_get_int64(a2, "errorReturn");
    if (int64)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:int64 userInfo:0];
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      cf[0] = 0;
      cmio_XPCMessageCopyCFArray(a2, "param1", cf);
      if (cf[0])
      {
        [MEMORY[0x277CBEB98] setWithArray:?];
        CFRelease(cf[0]);
        cf[0] = 0;
      }

      else
      {
        v8 = CMIOLog();
        if (v8 && os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v9 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
          __62__CMIOExtensionProviderHostContext_availablePluginProperties___block_invoke_cold_2(v9, v12);
        }

        [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6 userInfo:0];
      }

      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    v5 = CMIOLog();
    if (v5 && os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
      __62__CMIOExtensionProviderHostContext_availablePluginProperties___block_invoke_cold_1();
    }

    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6 userInfo:0];
    (*(*(a1 + 40) + 16))();
  }

  dispatch_group_leave(*(*(a1 + 32) + 24));
  v10 = *MEMORY[0x277D85DE8];
}

- (void)pluginStates:(id)states
{
  v37 = *MEMORY[0x277D85DE8];
  if (CMIOModuleLogLevel_once_1 != -1)
  {
    [CMIOExtensionProviderHostContext dealloc];
  }

  if (CMIOModuleLogLevel_cmioLevel_1 >= 1)
  {
    v5 = CMIOLog();
    if (v5)
    {
      v6 = v5;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315907;
        v30 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        v31 = 1024;
        v32 = 423;
        v33 = 2080;
        v34 = "[CMIOExtensionProviderHostContext pluginStates:]";
        v35 = 2113;
        selfCopy = self;
        _os_log_impl(&dword_22EA08000, v6, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{private}@", buf, 0x26u);
      }
    }
  }

  v7 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v7, "MessageType", 1uLL);
  v8 = xpc_connection_send_message_with_reply_sync(self->_connection, v7);
  v9 = v8;
  if (v8)
  {
    v10 = MEMORY[0x2318F1BC0](v8);
    if (v10 == MEMORY[0x277D86480])
    {
      v12 = CMIOLog();
      if (v12 && os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        [CMIOExtensionProviderHostContext pluginStates:];
      }

      (*(states + 2))(states, 0, 0, 0, [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-7 userInfo:0]);
      goto LABEL_37;
    }

    if (v10 != MEMORY[0x277D86468])
    {
      v11 = CMIOLog();
      if (v11 && os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        [CMIOExtensionProviderHostContext pluginStates:];
      }

      (*(states + 2))(states, 0, 0, 0, [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6 userInfo:0]);
      goto LABEL_37;
    }

    int64 = xpc_dictionary_get_int64(v9, "errorReturn");
    if (int64)
    {
      (*(states + 2))(states, 0, 0, 0, [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:int64 userInfo:0]);
LABEL_37:
      xpc_release(v9);
      v25 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uint64(v25, "MessageType", 0x19uLL);
      xpc_connection_send_message_with_reply(self->_connection, v25, self->_queue, &__block_literal_global_4);
      xpc_release(v25);
      goto LABEL_38;
    }

    value = xpc_dictionary_get_value(v9, "param1");
    if (value)
    {
      v15 = [CMIOExtensionPropertyState copyPropertyStatesFromXPCDictionary:value];
      if (v15)
      {
        v16 = 0;
LABEL_30:
        v21 = xpc_dictionary_get_value(v9, "param2");
        if (v21)
        {
          v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
          applier[0] = MEMORY[0x277D85DD0];
          applier[1] = 3221225472;
          applier[2] = __49__CMIOExtensionProviderHostContext_pluginStates___block_invoke;
          applier[3] = &unk_27885BFC0;
          applier[4] = v22;
          xpc_array_apply(v21, applier);
        }

        else
        {
          v22 = 0;
        }

        v23 = xpc_dictionary_get_value(v9, "param3");
        if (v23)
        {
          v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
          v27[0] = MEMORY[0x277D85DD0];
          v27[1] = 3221225472;
          v27[2] = __49__CMIOExtensionProviderHostContext_pluginStates___block_invoke_26;
          v27[3] = &unk_27885BFC0;
          v27[4] = v24;
          xpc_array_apply(v23, v27);
        }

        else
        {
          v24 = 0;
        }

        (*(states + 2))(states, v15, v22, v24, v16);
        goto LABEL_37;
      }

      v19 = CMIOLog();
      if (v19 && os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        [(CMIOExtensionProviderHostContext *)v20 pluginStates:buf];
      }
    }

    else
    {
      v17 = CMIOLog();
      if (v17 && os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        [(CMIOExtensionProviderHostContext *)v18 pluginStates:buf];
      }
    }

    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6 userInfo:0];
    v15 = 0;
    goto LABEL_30;
  }

LABEL_38:
  xpc_release(v7);
  v26 = *MEMORY[0x277D85DE8];
}

uint64_t __49__CMIOExtensionProviderHostContext_pluginStates___block_invoke(uint64_t a1)
{
  v2 = [CMIOExtensionPropertyState copyPropertyStatesFromXPCDictionary:?];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 objectForKeyedSubscript:0x284358DB8];
    if ([v4 value])
    {
      [*(a1 + 32) setObject:v3 forKey:{objc_msgSend(v4, "value")}];
    }
  }

  else
  {
    v5 = CMIOLog();
    if (v5 && os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __49__CMIOExtensionProviderHostContext_pluginStates___block_invoke_cold_1();
    }
  }

  return 1;
}

uint64_t __49__CMIOExtensionProviderHostContext_pluginStates___block_invoke_26(uint64_t a1)
{
  v2 = [CMIOExtensionPropertyState copyPropertyStatesFromXPCDictionary:?];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 objectForKeyedSubscript:0x284358E98];
    if ([v4 value])
    {
      [*(a1 + 32) setObject:v3 forKey:{objc_msgSend(v4, "value")}];
    }
  }

  else
  {
    v5 = CMIOLog();
    if (v5 && os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __49__CMIOExtensionProviderHostContext_pluginStates___block_invoke_26_cold_1();
    }
  }

  return 1;
}

void __49__CMIOExtensionProviderHostContext_pluginStates___block_invoke_27(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x2318F1BC0](a2);
  if (v3 == MEMORY[0x277D86480])
  {
    v5 = CMIOLog();
    if (v5 && os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __49__CMIOExtensionProviderHostContext_pluginStates___block_invoke_27_cold_2();
    }
  }

  else if (v3 == MEMORY[0x277D86468])
  {
    xpc_dictionary_get_int64(a2, "errorReturn");
    v4 = CMIOLog();
    if (v4)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        __49__CMIOExtensionProviderHostContext_pluginStates___block_invoke_27_cold_1();
      }
    }
  }
}

- (void)pluginPropertyStatesForProperties:(id)properties reply:(id)reply
{
  v23 = *MEMORY[0x277D85DE8];
  if (CMIOModuleLogLevel_once_1 != -1)
  {
    [CMIOExtensionProviderHostContext dealloc];
  }

  if (CMIOModuleLogLevel_cmioLevel_1 >= 1)
  {
    v7 = CMIOLog();
    if (v7)
    {
      v8 = v7;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315907;
        v16 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        v17 = 1024;
        v18 = 535;
        v19 = 2080;
        v20 = "[CMIOExtensionProviderHostContext pluginPropertyStatesForProperties:reply:]";
        v21 = 2113;
        selfCopy = self;
        _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{private}@", buf, 0x26u);
      }
    }
  }

  v9 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v9, "MessageType", 3uLL);
  if (properties)
  {
    if (cmio_XPCMessageSetCFArray(v9, "param1", [properties allObjects]))
    {
      v10 = CMIOLog();
      if (v10)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [CMIOExtensionProviderHostContext pluginPropertyStatesForProperties:reply:];
        }
      }
    }
  }

  dispatch_group_enter(self->_transactionGroup);
  connection = self->_connection;
  queue = self->_queue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __76__CMIOExtensionProviderHostContext_pluginPropertyStatesForProperties_reply___block_invoke;
  v14[3] = &unk_27885C340;
  v14[4] = self;
  v14[5] = reply;
  xpc_connection_send_message_with_reply(connection, v9, queue, v14);
  xpc_release(v9);
  v13 = *MEMORY[0x277D85DE8];
}

void __76__CMIOExtensionProviderHostContext_pluginPropertyStatesForProperties_reply___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x2318F1BC0](a2);
  if (v4 != MEMORY[0x277D86480])
  {
    if (v4 != MEMORY[0x277D86468])
    {
      v5 = CMIOLog();
      if (v5 && os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        __76__CMIOExtensionProviderHostContext_pluginPropertyStatesForProperties_reply___block_invoke_cold_1();
      }

      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6 userInfo:0];
      (*(*(a1 + 40) + 16))();
      goto LABEL_24;
    }

    int64 = xpc_dictionary_get_int64(a2, "errorReturn");
    if (int64)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:int64 userInfo:0];
      (*(*(a1 + 40) + 16))();
      goto LABEL_24;
    }

    value = xpc_dictionary_get_value(a2, "param1");
    if (value)
    {
      if ([CMIOExtensionPropertyState copyPropertyStatesFromXPCDictionary:value])
      {
        goto LABEL_23;
      }

      v11 = CMIOLog();
      if (v11 && os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        __76__CMIOExtensionProviderHostContext_pluginPropertyStatesForProperties_reply___block_invoke_cold_2(v12, v14);
      }
    }

    else
    {
      v9 = CMIOLog();
      if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        __76__CMIOExtensionProviderHostContext_pluginPropertyStatesForProperties_reply___block_invoke_cold_3(v10, v14);
      }
    }

    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6 userInfo:0];
LABEL_23:
    (*(*(a1 + 40) + 16))();
    goto LABEL_24;
  }

  v6 = CMIOLog();
  if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
    __76__CMIOExtensionProviderHostContext_pluginPropertyStatesForProperties_reply___block_invoke_cold_4();
  }

  [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-7 userInfo:0];
  (*(*(a1 + 40) + 16))();
LABEL_24:
  dispatch_group_leave(*(*(a1 + 32) + 24));
  v13 = *MEMORY[0x277D85DE8];
}

- (void)setPluginPropertyValues:(id)values reply:(id)reply
{
  v26 = *MEMORY[0x277D85DE8];
  if (CMIOModuleLogLevel_once_1 != -1)
  {
    [CMIOExtensionProviderHostContext dealloc];
  }

  if (CMIOModuleLogLevel_cmioLevel_1 >= 1)
  {
    v7 = CMIOLog();
    if (v7)
    {
      v8 = v7;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315907;
        v19 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        v20 = 1024;
        v21 = 596;
        v22 = 2080;
        v23 = "[CMIOExtensionProviderHostContext setPluginPropertyValues:reply:]";
        v24 = 2113;
        selfCopy = self;
        _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{private}@", buf, 0x26u);
      }
    }
  }

  if ([values count])
  {
    v9 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v9, "MessageType", 4uLL);
    v10 = [CMIOExtensionPropertyState copyXPCDictionaryFromPropertyValues:values];
    if (v10)
    {
      v11 = v10;
      xpc_dictionary_set_value(v9, "param1", v10);
      xpc_release(v11);
      dispatch_group_enter(self->_transactionGroup);
      connection = self->_connection;
      queue = self->_queue;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __66__CMIOExtensionProviderHostContext_setPluginPropertyValues_reply___block_invoke;
      v17[3] = &unk_27885C340;
      v17[4] = self;
      v17[5] = reply;
      xpc_connection_send_message_with_reply(connection, v9, queue, v17);
    }

    else
    {
      v15 = CMIOLog();
      if (v15 && os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [CMIOExtensionProviderHostContext setPluginPropertyValues:reply:];
      }

      (*(reply + 2))(reply, [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-5 userInfo:0]);
    }

    xpc_release(v9);
  }

  else
  {
    v14 = CMIOLog();
    if (v14 && os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderHostContext setPluginPropertyValues:reply:];
    }

    (*(reply + 2))(reply, [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-1 userInfo:0]);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __66__CMIOExtensionProviderHostContext_setPluginPropertyValues_reply___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x2318F1BC0](a2);
  if (v4 == MEMORY[0x277D86480])
  {
    v6 = CMIOLog();
    if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
      __66__CMIOExtensionProviderHostContext_setPluginPropertyValues_reply___block_invoke_cold_2();
    }

    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-7 userInfo:0];
    (*(*(a1 + 40) + 16))();
  }

  else if (v4 == MEMORY[0x277D86468])
  {
    int64 = xpc_dictionary_get_int64(a2, "errorReturn");
    if (int64)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:int64 userInfo:0];
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v5 = CMIOLog();
    if (v5 && os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
      __66__CMIOExtensionProviderHostContext_setPluginPropertyValues_reply___block_invoke_cold_1();
    }

    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6 userInfo:0];
    (*(*(a1 + 40) + 16))();
  }

  dispatch_group_leave(*(*(a1 + 32) + 24));
  v8 = *MEMORY[0x277D85DE8];
}

- (void)availableDevicePropertiesWithDeviceID:(id)d reply:(id)reply
{
  v23 = *MEMORY[0x277D85DE8];
  if (CMIOModuleLogLevel_once_1 != -1)
  {
    [CMIOExtensionProviderHostContext dealloc];
  }

  if (CMIOModuleLogLevel_cmioLevel_1 >= 1)
  {
    v7 = CMIOLog();
    if (v7)
    {
      v8 = v7;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315907;
        v16 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        v17 = 1024;
        v18 = 655;
        v19 = 2080;
        v20 = "[CMIOExtensionProviderHostContext availableDevicePropertiesWithDeviceID:reply:]";
        v21 = 2113;
        selfCopy = self;
        _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{private}@", buf, 0x26u);
      }
    }
  }

  v9 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v9, "MessageType", 0xBuLL);
  if (cmio_XPCMessageSetCFString(v9, "param1", d))
  {
    v10 = CMIOLog();
    if (v10 && os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderHostContext availableDevicePropertiesWithDeviceID:reply:];
    }

    (*(reply + 2))(reply, 0, [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-5 userInfo:0]);
  }

  else
  {
    dispatch_group_enter(self->_transactionGroup);
    connection = self->_connection;
    queue = self->_queue;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __80__CMIOExtensionProviderHostContext_availableDevicePropertiesWithDeviceID_reply___block_invoke;
    v14[3] = &unk_27885C340;
    v14[4] = self;
    v14[5] = reply;
    xpc_connection_send_message_with_reply(connection, v9, queue, v14);
  }

  xpc_release(v9);
  v13 = *MEMORY[0x277D85DE8];
}

void __80__CMIOExtensionProviderHostContext_availableDevicePropertiesWithDeviceID_reply___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x2318F1BC0](a2);
  if (v4 == MEMORY[0x277D86480])
  {
    v6 = CMIOLog();
    if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
      __80__CMIOExtensionProviderHostContext_availableDevicePropertiesWithDeviceID_reply___block_invoke_cold_3();
    }

    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-7 userInfo:0];
    (*(*(a1 + 40) + 16))();
  }

  else if (v4 == MEMORY[0x277D86468])
  {
    int64 = xpc_dictionary_get_int64(a2, "errorReturn");
    if (int64)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:int64 userInfo:0];
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      cf[0] = 0;
      cmio_XPCMessageCopyCFArray(a2, "param1", cf);
      if (cf[0])
      {
        [MEMORY[0x277CBEB98] setWithArray:?];
        CFRelease(cf[0]);
        cf[0] = 0;
      }

      else
      {
        v8 = CMIOLog();
        if (v8 && os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v9 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
          __80__CMIOExtensionProviderHostContext_availableDevicePropertiesWithDeviceID_reply___block_invoke_cold_2(v9, v12);
        }

        [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6 userInfo:0];
      }

      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    v5 = CMIOLog();
    if (v5 && os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
      __80__CMIOExtensionProviderHostContext_availableDevicePropertiesWithDeviceID_reply___block_invoke_cold_1();
    }

    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6 userInfo:0];
    (*(*(a1 + 40) + 16))();
  }

  dispatch_group_leave(*(*(a1 + 32) + 24));
  v10 = *MEMORY[0x277D85DE8];
}

- (void)deviceStatesWithDeviceID:(id)d reply:(id)reply
{
  v23 = *MEMORY[0x277D85DE8];
  if (CMIOModuleLogLevel_once_1 != -1)
  {
    [CMIOExtensionProviderHostContext dealloc];
  }

  if (CMIOModuleLogLevel_cmioLevel_1 >= 1)
  {
    v7 = CMIOLog();
    if (v7)
    {
      v8 = v7;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315907;
        v16 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        v17 = 1024;
        v18 = 718;
        v19 = 2080;
        v20 = "[CMIOExtensionProviderHostContext deviceStatesWithDeviceID:reply:]";
        v21 = 2113;
        selfCopy = self;
        _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{private}@", buf, 0x26u);
      }
    }
  }

  v9 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v9, "MessageType", 0xAuLL);
  if (cmio_XPCMessageSetCFString(v9, "param1", d))
  {
    v10 = CMIOLog();
    if (v10 && os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderHostContext deviceStatesWithDeviceID:reply:];
    }

    (*(reply + 2))(reply, 0, 0, [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-5 userInfo:0]);
  }

  else
  {
    dispatch_group_enter(self->_transactionGroup);
    connection = self->_connection;
    queue = self->_queue;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __67__CMIOExtensionProviderHostContext_deviceStatesWithDeviceID_reply___block_invoke;
    v14[3] = &unk_27885C340;
    v14[4] = self;
    v14[5] = reply;
    xpc_connection_send_message_with_reply(connection, v9, queue, v14);
  }

  xpc_release(v9);
  v13 = *MEMORY[0x277D85DE8];
}

void __67__CMIOExtensionProviderHostContext_deviceStatesWithDeviceID_reply___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x2318F1BC0](a2);
  if (v4 != MEMORY[0x277D86480])
  {
    if (v4 != MEMORY[0x277D86468])
    {
      v5 = CMIOLog();
      if (v5 && os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        __67__CMIOExtensionProviderHostContext_deviceStatesWithDeviceID_reply___block_invoke_cold_1();
      }

      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6 userInfo:0];
      (*(*(a1 + 40) + 16))();
      goto LABEL_26;
    }

    int64 = xpc_dictionary_get_int64(a2, "errorReturn");
    if (int64)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:int64 userInfo:0];
      (*(*(a1 + 40) + 16))();
      goto LABEL_26;
    }

    value = xpc_dictionary_get_value(a2, "param1");
    if (value)
    {
      if ([CMIOExtensionPropertyState copyPropertyStatesFromXPCDictionary:value])
      {
        goto LABEL_23;
      }

      v11 = CMIOLog();
      if (v11 && os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        __67__CMIOExtensionProviderHostContext_deviceStatesWithDeviceID_reply___block_invoke_cold_2(v12, v17);
      }
    }

    else
    {
      v9 = CMIOLog();
      if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        __67__CMIOExtensionProviderHostContext_deviceStatesWithDeviceID_reply___block_invoke_cold_3(v10, v17);
      }
    }

    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6 userInfo:0];
LABEL_23:
    v13 = xpc_dictionary_get_value(a2, "param2");
    if (v13)
    {
      v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
      applier[0] = MEMORY[0x277D85DD0];
      applier[1] = 3221225472;
      applier[2] = __67__CMIOExtensionProviderHostContext_deviceStatesWithDeviceID_reply___block_invoke_28;
      applier[3] = &unk_27885BFC0;
      applier[4] = v14;
      xpc_array_apply(v13, applier);
    }

    (*(*(a1 + 40) + 16))();
    goto LABEL_26;
  }

  v6 = CMIOLog();
  if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
    __67__CMIOExtensionProviderHostContext_deviceStatesWithDeviceID_reply___block_invoke_cold_4();
  }

  [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-7 userInfo:0];
  (*(*(a1 + 40) + 16))();
LABEL_26:
  dispatch_group_leave(*(*(a1 + 32) + 24));
  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __67__CMIOExtensionProviderHostContext_deviceStatesWithDeviceID_reply___block_invoke_28(uint64_t a1)
{
  v2 = [CMIOExtensionPropertyState copyPropertyStatesFromXPCDictionary:?];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 objectForKeyedSubscript:0x284358E98];
    if ([v4 value])
    {
      [*(a1 + 32) setObject:v3 forKey:{objc_msgSend(v4, "value")}];
    }
  }

  else
  {
    v5 = CMIOLog();
    if (v5 && os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __67__CMIOExtensionProviderHostContext_deviceStatesWithDeviceID_reply___block_invoke_28_cold_1();
    }
  }

  return 1;
}

- (void)devicePropertyStatesWithDeviceID:(id)d properties:(id)properties reply:(id)reply
{
  v26 = *MEMORY[0x277D85DE8];
  if (CMIOModuleLogLevel_once_1 != -1)
  {
    [CMIOExtensionProviderHostContext dealloc];
  }

  if (CMIOModuleLogLevel_cmioLevel_1 >= 1)
  {
    v9 = CMIOLog();
    if (v9)
    {
      v10 = v9;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315907;
        v19 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        v20 = 1024;
        v21 = 804;
        v22 = 2080;
        v23 = "[CMIOExtensionProviderHostContext devicePropertyStatesWithDeviceID:properties:reply:]";
        v24 = 2113;
        selfCopy = self;
        _os_log_impl(&dword_22EA08000, v10, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{private}@", buf, 0x26u);
      }
    }
  }

  v11 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v11, "MessageType", 0xCuLL);
  if (cmio_XPCMessageSetCFString(v11, "param1", d))
  {
    v12 = CMIOLog();
    if (v12 && os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderHostContext devicePropertyStatesWithDeviceID:properties:reply:];
    }

    (*(reply + 2))(reply, 0, [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-5 userInfo:0]);
  }

  else
  {
    if (properties)
    {
      if (cmio_XPCMessageSetCFArray(v11, "param2", [properties allObjects]))
      {
        v13 = CMIOLog();
        if (v13)
        {
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            [CMIOExtensionProviderHostContext devicePropertyStatesWithDeviceID:properties:reply:];
          }
        }
      }
    }

    dispatch_group_enter(self->_transactionGroup);
    connection = self->_connection;
    queue = self->_queue;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __86__CMIOExtensionProviderHostContext_devicePropertyStatesWithDeviceID_properties_reply___block_invoke;
    v17[3] = &unk_27885C340;
    v17[4] = self;
    v17[5] = reply;
    xpc_connection_send_message_with_reply(connection, v11, queue, v17);
  }

  xpc_release(v11);
  v16 = *MEMORY[0x277D85DE8];
}

void __86__CMIOExtensionProviderHostContext_devicePropertyStatesWithDeviceID_properties_reply___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x2318F1BC0](a2);
  if (v4 != MEMORY[0x277D86480])
  {
    if (v4 != MEMORY[0x277D86468])
    {
      v5 = CMIOLog();
      if (v5 && os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        __86__CMIOExtensionProviderHostContext_devicePropertyStatesWithDeviceID_properties_reply___block_invoke_cold_1();
      }

      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6 userInfo:0];
      (*(*(a1 + 40) + 16))();
      goto LABEL_24;
    }

    int64 = xpc_dictionary_get_int64(a2, "errorReturn");
    if (int64)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:int64 userInfo:0];
      (*(*(a1 + 40) + 16))();
      goto LABEL_24;
    }

    value = xpc_dictionary_get_value(a2, "param1");
    if (value)
    {
      if ([CMIOExtensionPropertyState copyPropertyStatesFromXPCDictionary:value])
      {
        goto LABEL_23;
      }

      v11 = CMIOLog();
      if (v11 && os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        __86__CMIOExtensionProviderHostContext_devicePropertyStatesWithDeviceID_properties_reply___block_invoke_cold_2(v12, v14);
      }
    }

    else
    {
      v9 = CMIOLog();
      if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        __86__CMIOExtensionProviderHostContext_devicePropertyStatesWithDeviceID_properties_reply___block_invoke_cold_3(v10, v14);
      }
    }

    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6 userInfo:0];
LABEL_23:
    (*(*(a1 + 40) + 16))();
    goto LABEL_24;
  }

  v6 = CMIOLog();
  if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
    __86__CMIOExtensionProviderHostContext_devicePropertyStatesWithDeviceID_properties_reply___block_invoke_cold_4();
  }

  [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-7 userInfo:0];
  (*(*(a1 + 40) + 16))();
LABEL_24:
  dispatch_group_leave(*(*(a1 + 32) + 24));
  v13 = *MEMORY[0x277D85DE8];
}

- (void)setDevicePropertyValuesWithDeviceID:(id)d propertyValues:(id)values reply:(id)reply
{
  v29 = *MEMORY[0x277D85DE8];
  if (CMIOModuleLogLevel_once_1 != -1)
  {
    [CMIOExtensionProviderHostContext dealloc];
  }

  if (CMIOModuleLogLevel_cmioLevel_1 >= 1)
  {
    v9 = CMIOLog();
    if (v9)
    {
      v10 = v9;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315907;
        v22 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        v23 = 1024;
        v24 = 876;
        v25 = 2080;
        v26 = "[CMIOExtensionProviderHostContext setDevicePropertyValuesWithDeviceID:propertyValues:reply:]";
        v27 = 2113;
        selfCopy = self;
        _os_log_impl(&dword_22EA08000, v10, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{private}@", buf, 0x26u);
      }
    }
  }

  if ([values count])
  {
    v11 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v11, "MessageType", 0xDuLL);
    if (cmio_XPCMessageSetCFString(v11, "param1", d))
    {
      v12 = CMIOLog();
      if (v12 && os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [CMIOExtensionProviderHostContext setDevicePropertyValuesWithDeviceID:propertyValues:reply:];
      }
    }

    else
    {
      v14 = [CMIOExtensionPropertyState copyXPCDictionaryFromPropertyValues:values];
      if (v14)
      {
        v15 = v14;
        xpc_dictionary_set_value(v11, "param2", v14);
        xpc_release(v15);
        dispatch_group_enter(self->_transactionGroup);
        connection = self->_connection;
        queue = self->_queue;
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __93__CMIOExtensionProviderHostContext_setDevicePropertyValuesWithDeviceID_propertyValues_reply___block_invoke;
        v20[3] = &unk_27885C340;
        v20[4] = self;
        v20[5] = reply;
        xpc_connection_send_message_with_reply(connection, v11, queue, v20);
        goto LABEL_19;
      }

      v19 = CMIOLog();
      if (v19 && os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [CMIOExtensionProviderHostContext setDevicePropertyValuesWithDeviceID:propertyValues:reply:];
      }
    }

    (*(reply + 2))(reply, [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-5 userInfo:0]);
LABEL_19:
    xpc_release(v11);
    goto LABEL_20;
  }

  v13 = CMIOLog();
  if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [CMIOExtensionProviderHostContext setDevicePropertyValuesWithDeviceID:propertyValues:reply:];
  }

  (*(reply + 2))(reply, [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-1 userInfo:0]);
LABEL_20:
  v18 = *MEMORY[0x277D85DE8];
}

void __93__CMIOExtensionProviderHostContext_setDevicePropertyValuesWithDeviceID_propertyValues_reply___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x2318F1BC0](a2);
  if (v4 == MEMORY[0x277D86480])
  {
    v6 = CMIOLog();
    if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
      __93__CMIOExtensionProviderHostContext_setDevicePropertyValuesWithDeviceID_propertyValues_reply___block_invoke_cold_2();
    }

    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-7 userInfo:0];
    (*(*(a1 + 40) + 16))();
  }

  else if (v4 == MEMORY[0x277D86468])
  {
    int64 = xpc_dictionary_get_int64(a2, "errorReturn");
    if (int64)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:int64 userInfo:0];
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v5 = CMIOLog();
    if (v5 && os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
      __93__CMIOExtensionProviderHostContext_setDevicePropertyValuesWithDeviceID_propertyValues_reply___block_invoke_cold_1();
    }

    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6 userInfo:0];
    (*(*(a1 + 40) + 16))();
  }

  dispatch_group_leave(*(*(a1 + 32) + 24));
  v8 = *MEMORY[0x277D85DE8];
}

- (void)availableStreamPropertiesWithStreamID:(id)d reply:(id)reply
{
  v23 = *MEMORY[0x277D85DE8];
  if (CMIOModuleLogLevel_once_1 != -1)
  {
    [CMIOExtensionProviderHostContext dealloc];
  }

  if (CMIOModuleLogLevel_cmioLevel_1 >= 1)
  {
    v7 = CMIOLog();
    if (v7)
    {
      v8 = v7;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315907;
        v16 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        v17 = 1024;
        v18 = 946;
        v19 = 2080;
        v20 = "[CMIOExtensionProviderHostContext availableStreamPropertiesWithStreamID:reply:]";
        v21 = 2113;
        selfCopy = self;
        _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{private}@", buf, 0x26u);
      }
    }
  }

  v9 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v9, "MessageType", 0x14uLL);
  if (cmio_XPCMessageSetCFString(v9, "param1", d))
  {
    v10 = CMIOLog();
    if (v10 && os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderHostContext availableStreamPropertiesWithStreamID:reply:];
    }

    (*(reply + 2))(reply, 0, [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-5 userInfo:0]);
  }

  else
  {
    dispatch_group_enter(self->_transactionGroup);
    connection = self->_connection;
    queue = self->_queue;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __80__CMIOExtensionProviderHostContext_availableStreamPropertiesWithStreamID_reply___block_invoke;
    v14[3] = &unk_27885C340;
    v14[4] = self;
    v14[5] = reply;
    xpc_connection_send_message_with_reply(connection, v9, queue, v14);
  }

  xpc_release(v9);
  v13 = *MEMORY[0x277D85DE8];
}

void __80__CMIOExtensionProviderHostContext_availableStreamPropertiesWithStreamID_reply___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x2318F1BC0](a2);
  if (v4 == MEMORY[0x277D86480])
  {
    v6 = CMIOLog();
    if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
      __80__CMIOExtensionProviderHostContext_availableStreamPropertiesWithStreamID_reply___block_invoke_cold_3();
    }

    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-7 userInfo:0];
    (*(*(a1 + 40) + 16))();
  }

  else if (v4 == MEMORY[0x277D86468])
  {
    int64 = xpc_dictionary_get_int64(a2, "errorReturn");
    if (int64)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:int64 userInfo:0];
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      cf[0] = 0;
      cmio_XPCMessageCopyCFArray(a2, "param1", cf);
      if (cf[0])
      {
        [MEMORY[0x277CBEB98] setWithArray:?];
        CFRelease(cf[0]);
        cf[0] = 0;
      }

      else
      {
        v8 = CMIOLog();
        if (v8 && os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v9 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
          __80__CMIOExtensionProviderHostContext_availableStreamPropertiesWithStreamID_reply___block_invoke_cold_2(v9, v12);
        }

        [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6 userInfo:0];
      }

      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    v5 = CMIOLog();
    if (v5 && os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
      __80__CMIOExtensionProviderHostContext_availableStreamPropertiesWithStreamID_reply___block_invoke_cold_1();
    }

    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6 userInfo:0];
    (*(*(a1 + 40) + 16))();
  }

  dispatch_group_leave(*(*(a1 + 32) + 24));
  v10 = *MEMORY[0x277D85DE8];
}

- (void)streamPropertyStatesWithStreamID:(id)d properties:(id)properties reply:(id)reply
{
  v26 = *MEMORY[0x277D85DE8];
  if (CMIOModuleLogLevel_once_1 != -1)
  {
    [CMIOExtensionProviderHostContext dealloc];
  }

  if (CMIOModuleLogLevel_cmioLevel_1 >= 1)
  {
    v9 = CMIOLog();
    if (v9)
    {
      v10 = v9;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315907;
        v19 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        v20 = 1024;
        v21 = 1009;
        v22 = 2080;
        v23 = "[CMIOExtensionProviderHostContext streamPropertyStatesWithStreamID:properties:reply:]";
        v24 = 2113;
        selfCopy = self;
        _os_log_impl(&dword_22EA08000, v10, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{private}@", buf, 0x26u);
      }
    }
  }

  v11 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v11, "MessageType", 0x15uLL);
  if (cmio_XPCMessageSetCFString(v11, "param1", d))
  {
    v12 = CMIOLog();
    if (v12 && os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderHostContext streamPropertyStatesWithStreamID:properties:reply:];
    }

    (*(reply + 2))(reply, 0, [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-5 userInfo:0]);
  }

  else
  {
    if (properties)
    {
      if (cmio_XPCMessageSetCFArray(v11, "param2", [properties allObjects]))
      {
        v13 = CMIOLog();
        if (v13)
        {
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            [CMIOExtensionProviderHostContext streamPropertyStatesWithStreamID:properties:reply:];
          }
        }
      }
    }

    dispatch_group_enter(self->_transactionGroup);
    connection = self->_connection;
    queue = self->_queue;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __86__CMIOExtensionProviderHostContext_streamPropertyStatesWithStreamID_properties_reply___block_invoke;
    v17[3] = &unk_27885C340;
    v17[4] = self;
    v17[5] = reply;
    xpc_connection_send_message_with_reply(connection, v11, queue, v17);
  }

  xpc_release(v11);
  v16 = *MEMORY[0x277D85DE8];
}

void __86__CMIOExtensionProviderHostContext_streamPropertyStatesWithStreamID_properties_reply___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x2318F1BC0](a2);
  if (v4 != MEMORY[0x277D86480])
  {
    if (v4 != MEMORY[0x277D86468])
    {
      v5 = CMIOLog();
      if (v5 && os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        __86__CMIOExtensionProviderHostContext_streamPropertyStatesWithStreamID_properties_reply___block_invoke_cold_1();
      }

      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6 userInfo:0];
      (*(*(a1 + 40) + 16))();
      goto LABEL_24;
    }

    int64 = xpc_dictionary_get_int64(a2, "errorReturn");
    if (int64)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:int64 userInfo:0];
      (*(*(a1 + 40) + 16))();
      goto LABEL_24;
    }

    value = xpc_dictionary_get_value(a2, "param1");
    if (value)
    {
      if ([CMIOExtensionPropertyState copyPropertyStatesFromXPCDictionary:value])
      {
        goto LABEL_23;
      }

      v11 = CMIOLog();
      if (v11 && os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        __86__CMIOExtensionProviderHostContext_streamPropertyStatesWithStreamID_properties_reply___block_invoke_cold_2(v12, v14);
      }
    }

    else
    {
      v9 = CMIOLog();
      if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        __86__CMIOExtensionProviderHostContext_streamPropertyStatesWithStreamID_properties_reply___block_invoke_cold_3(v10, v14);
      }
    }

    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6 userInfo:0];
LABEL_23:
    (*(*(a1 + 40) + 16))();
    goto LABEL_24;
  }

  v6 = CMIOLog();
  if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
    __86__CMIOExtensionProviderHostContext_streamPropertyStatesWithStreamID_properties_reply___block_invoke_cold_4();
  }

  [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-7 userInfo:0];
  (*(*(a1 + 40) + 16))();
LABEL_24:
  dispatch_group_leave(*(*(a1 + 32) + 24));
  v13 = *MEMORY[0x277D85DE8];
}

- (void)setStreamPropertyValuesWithStreamID:(id)d propertyValues:(id)values reply:(id)reply
{
  v45 = *MEMORY[0x277D85DE8];
  if (CMIOModuleLogLevel_once_1 != -1)
  {
    [CMIOExtensionProviderHostContext dealloc];
  }

  if (CMIOModuleLogLevel_cmioLevel_1 >= 1)
  {
    v9 = CMIOLog();
    if (v9)
    {
      v10 = v9;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315907;
        v38 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        v39 = 1024;
        v40 = 1081;
        v41 = 2080;
        v42 = "[CMIOExtensionProviderHostContext setStreamPropertyValuesWithStreamID:propertyValues:reply:]";
        v43 = 2113;
        valuesCopy = self;
        _os_log_impl(&dword_22EA08000, v10, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{private}@", buf, 0x26u);
      }
    }
  }

  if ([values objectForKeyedSubscript:@"CMIOExtensionPropertyStreamFrameDuration"] || objc_msgSend(values, "objectForKeyedSubscript:", @"CMIOExtensionPropertyStreamMaxFrameDuration"))
  {
    v11 = CMIOLog();
    if (v11)
    {
      v12 = v11;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        *buf = 136315906;
        v38 = v13;
        v39 = 1024;
        v40 = 1085;
        v41 = 2080;
        v42 = "[CMIOExtensionProviderHostContext setStreamPropertyValuesWithStreamID:propertyValues:reply:]";
        v43 = 2112;
        valuesCopy = values;
        _os_log_impl(&dword_22EA08000, v12, OS_LOG_TYPE_DEFAULT, "%s:%d:%s SetProperty - %@", buf, 0x26u);
      }
    }

    theArray = 0;
    v14 = *MEMORY[0x277CBECE8];
    v15 = FigCopyBacktrace();
    if (v15 >= 1 && theArray != 0)
    {
      dCopy = d;
      valuesCopy2 = values;
      selfCopy2 = self;
      replyCopy = reply;
      v17 = 0;
      do
      {
        v18 = CMIOLog();
        if (v18)
        {
          v19 = v18;
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v20 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
            ValueAtIndex = CFArrayGetValueAtIndex(theArray, v17);
            *buf = 136315907;
            v38 = v20;
            v39 = 1024;
            v40 = 1090;
            v41 = 2080;
            v42 = "[CMIOExtensionProviderHostContext setStreamPropertyValuesWithStreamID:propertyValues:reply:]";
            v43 = 2113;
            valuesCopy = ValueAtIndex;
            _os_log_impl(&dword_22EA08000, v19, OS_LOG_TYPE_DEFAULT, "%s:%d:%s backtrace %{private}@", buf, 0x26u);
          }
        }

        ++v17;
      }

      while (v15 != v17);
      self = selfCopy2;
    }
  }

  if ([values count])
  {
    v22 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v22, "MessageType", 0x16uLL);
    if (cmio_XPCMessageSetCFString(v22, "param1", d))
    {
      v23 = CMIOLog();
      if (v23 && os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [CMIOExtensionProviderHostContext setStreamPropertyValuesWithStreamID:propertyValues:reply:];
      }
    }

    else
    {
      v25 = [CMIOExtensionPropertyState copyXPCDictionaryFromPropertyValues:values];
      if (v25)
      {
        v26 = v25;
        xpc_dictionary_set_value(v22, "param2", v25);
        xpc_release(v26);
        dispatch_group_enter(self->_transactionGroup);
        connection = self->_connection;
        queue = self->_queue;
        handler[0] = MEMORY[0x277D85DD0];
        handler[1] = 3221225472;
        handler[2] = __93__CMIOExtensionProviderHostContext_setStreamPropertyValuesWithStreamID_propertyValues_reply___block_invoke;
        handler[3] = &unk_27885C340;
        handler[4] = self;
        handler[5] = reply;
        xpc_connection_send_message_with_reply(connection, v22, queue, handler);
        goto LABEL_34;
      }

      v30 = CMIOLog();
      if (v30 && os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        [CMIOExtensionProviderHostContext setStreamPropertyValuesWithStreamID:propertyValues:reply:];
      }
    }

    (*(reply + 2))(reply, [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-5 userInfo:0]);
LABEL_34:
    xpc_release(v22);
    goto LABEL_35;
  }

  v24 = CMIOLog();
  if (v24 && os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    [CMIOExtensionProviderHostContext setStreamPropertyValuesWithStreamID:propertyValues:reply:];
  }

  (*(reply + 2))(reply, [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-1 userInfo:0]);
LABEL_35:
  v29 = *MEMORY[0x277D85DE8];
}

void __93__CMIOExtensionProviderHostContext_setStreamPropertyValuesWithStreamID_propertyValues_reply___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x2318F1BC0](a2);
  if (v4 == MEMORY[0x277D86480])
  {
    v6 = CMIOLog();
    if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
      __93__CMIOExtensionProviderHostContext_setStreamPropertyValuesWithStreamID_propertyValues_reply___block_invoke_cold_2();
    }

    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-7 userInfo:0];
    (*(*(a1 + 40) + 16))();
  }

  else if (v4 == MEMORY[0x277D86468])
  {
    int64 = xpc_dictionary_get_int64(a2, "errorReturn");
    if (int64)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:int64 userInfo:0];
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v5 = CMIOLog();
    if (v5 && os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
      __93__CMIOExtensionProviderHostContext_setStreamPropertyValuesWithStreamID_propertyValues_reply___block_invoke_cold_1();
    }

    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6 userInfo:0];
    (*(*(a1 + 40) + 16))();
  }

  dispatch_group_leave(*(*(a1 + 32) + 24));
  v8 = *MEMORY[0x277D85DE8];
}

- (void)startStreamWithStreamID:(id)d reply:(id)reply
{
  v23 = *MEMORY[0x277D85DE8];
  if (CMIOModuleLogLevel_once_1 != -1)
  {
    [CMIOExtensionProviderHostContext dealloc];
  }

  if (CMIOModuleLogLevel_cmioLevel_1 >= 1)
  {
    v7 = CMIOLog();
    if (v7)
    {
      v8 = v7;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315907;
        v16 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        v17 = 1024;
        v18 = 1167;
        v19 = 2080;
        v20 = "[CMIOExtensionProviderHostContext startStreamWithStreamID:reply:]";
        v21 = 2113;
        selfCopy = self;
        _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{private}@", buf, 0x26u);
      }
    }
  }

  v9 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v9, "MessageType", 0x17uLL);
  if (cmio_XPCMessageSetCFString(v9, "param1", d))
  {
    v10 = CMIOLog();
    if (v10 && os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderHostContext startStreamWithStreamID:reply:];
    }

    (*(reply + 2))(reply, [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-5 userInfo:0]);
  }

  else
  {
    dispatch_group_enter(self->_transactionGroup);
    connection = self->_connection;
    queue = self->_queue;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __66__CMIOExtensionProviderHostContext_startStreamWithStreamID_reply___block_invoke;
    v14[3] = &unk_27885C340;
    v14[4] = self;
    v14[5] = reply;
    xpc_connection_send_message_with_reply(connection, v9, queue, v14);
  }

  xpc_release(v9);
  v13 = *MEMORY[0x277D85DE8];
}

void __66__CMIOExtensionProviderHostContext_startStreamWithStreamID_reply___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x2318F1BC0](a2);
  if (v4 == MEMORY[0x277D86480])
  {
    v6 = CMIOLog();
    if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
      __66__CMIOExtensionProviderHostContext_startStreamWithStreamID_reply___block_invoke_cold_2();
    }

    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-7 userInfo:0];
    (*(*(a1 + 40) + 16))();
  }

  else if (v4 == MEMORY[0x277D86468])
  {
    int64 = xpc_dictionary_get_int64(a2, "errorReturn");
    if (int64)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:int64 userInfo:0];
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v5 = CMIOLog();
    if (v5 && os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
      __66__CMIOExtensionProviderHostContext_startStreamWithStreamID_reply___block_invoke_cold_1();
    }

    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6 userInfo:0];
    (*(*(a1 + 40) + 16))();
  }

  dispatch_group_leave(*(*(a1 + 32) + 24));
  v8 = *MEMORY[0x277D85DE8];
}

- (void)stopStreamWithStreamID:(id)d reply:(id)reply
{
  v23 = *MEMORY[0x277D85DE8];
  if (CMIOModuleLogLevel_once_1 != -1)
  {
    [CMIOExtensionProviderHostContext dealloc];
  }

  if (CMIOModuleLogLevel_cmioLevel_1 >= 1)
  {
    v7 = CMIOLog();
    if (v7)
    {
      v8 = v7;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315907;
        v16 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        v17 = 1024;
        v18 = 1217;
        v19 = 2080;
        v20 = "[CMIOExtensionProviderHostContext stopStreamWithStreamID:reply:]";
        v21 = 2113;
        selfCopy = self;
        _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{private}@", buf, 0x26u);
      }
    }
  }

  v9 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v9, "MessageType", 0x18uLL);
  if (cmio_XPCMessageSetCFString(v9, "param1", d))
  {
    v10 = CMIOLog();
    if (v10 && os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderHostContext stopStreamWithStreamID:reply:];
    }

    (*(reply + 2))(reply, [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-5 userInfo:0]);
  }

  else
  {
    dispatch_group_enter(self->_transactionGroup);
    connection = self->_connection;
    queue = self->_queue;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __65__CMIOExtensionProviderHostContext_stopStreamWithStreamID_reply___block_invoke;
    v14[3] = &unk_27885C340;
    v14[4] = self;
    v14[5] = reply;
    xpc_connection_send_message_with_reply(connection, v9, queue, v14);
  }

  xpc_release(v9);
  v13 = *MEMORY[0x277D85DE8];
}

void __65__CMIOExtensionProviderHostContext_stopStreamWithStreamID_reply___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x2318F1BC0](a2);
  if (v4 == MEMORY[0x277D86480])
  {
    v6 = CMIOLog();
    if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
      __65__CMIOExtensionProviderHostContext_stopStreamWithStreamID_reply___block_invoke_cold_2();
    }

    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-7 userInfo:0];
    (*(*(a1 + 40) + 16))();
  }

  else if (v4 == MEMORY[0x277D86468])
  {
    int64 = xpc_dictionary_get_int64(a2, "errorReturn");
    if (int64)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:int64 userInfo:0];
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v5 = CMIOLog();
    if (v5 && os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
      __65__CMIOExtensionProviderHostContext_stopStreamWithStreamID_reply___block_invoke_cold_1();
    }

    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6 userInfo:0];
    (*(*(a1 + 40) + 16))();
  }

  dispatch_group_leave(*(*(a1 + 32) + 24));
  v8 = *MEMORY[0x277D85DE8];
}

- (void)refreshExtensionConnection
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = CMIOLog();
  if (v3)
  {
    v4 = v3;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
      pid = xpc_connection_get_pid(self->_connection);
      v8 = 136316163;
      v9 = v5;
      v10 = 1024;
      v11 = 1267;
      v12 = 2080;
      v13 = "[CMIOExtensionProviderHostContext refreshExtensionConnection]";
      v14 = 2082;
      v15 = "[CMIOExtensionProviderHostContext refreshExtensionConnection]";
      v16 = 1025;
      v17 = pid;
      _os_log_impl(&dword_22EA08000, v4, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{public}s for connection(%{private}d)", &v8, 0x2Cu);
    }
  }

  [(CMIOExtensionProviderHostContext *)self sendEmptyClientInfo];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)sendEmptyClientInfo
{
  v15 = *MEMORY[0x277D85DE8];
  if (CMIOModuleLogLevel_once_1 != -1)
  {
    [CMIOExtensionProviderHostContext dealloc];
  }

  if (CMIOModuleLogLevel_cmioLevel_1 >= 1)
  {
    v3 = CMIOLog();
    if (v3)
    {
      v4 = v3;
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 136315907;
        v8 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        v9 = 1024;
        v10 = 1273;
        v11 = 2080;
        v12 = "[CMIOExtensionProviderHostContext sendEmptyClientInfo]";
        v13 = 2113;
        selfCopy = self;
        _os_log_impl(&dword_22EA08000, v4, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{private}@", &v7, 0x26u);
      }
    }
  }

  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v5, "MessageType", 5uLL);
  xpc_connection_send_message_with_reply(self->_connection, v5, self->_queue, &__block_literal_global_30);
  xpc_release(v5);
  v6 = *MEMORY[0x277D85DE8];
}

void __55__CMIOExtensionProviderHostContext_sendEmptyClientInfo__block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = MEMORY[0x2318F1BC0](a2);
    if (v3 == MEMORY[0x277D86480])
    {
      v5 = CMIOLog();
      if (v5 && os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __55__CMIOExtensionProviderHostContext_sendEmptyClientInfo__block_invoke_cold_3();
      }
    }

    else if (v3 == MEMORY[0x277D86468])
    {
      if (xpc_dictionary_get_int64(a2, "errorReturn"))
      {
        v6 = CMIOLog();
        if (v6)
        {
          if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
          {
            __55__CMIOExtensionProviderHostContext_sendEmptyClientInfo__block_invoke_cold_2();
          }
        }
      }
    }

    else
    {
      v4 = CMIOLog();
      if (v4)
      {
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          __55__CMIOExtensionProviderHostContext_sendEmptyClientInfo__block_invoke_cold_1();
        }
      }
    }
  }
}

- (void)captureAsyncStillImageWithStreamID:(id)d uniqueID:(int64_t)iD options:(id)options reply:(id)reply
{
  v29 = *MEMORY[0x277D85DE8];
  if (CMIOModuleLogLevel_once_1 != -1)
  {
    [CMIOExtensionProviderHostContext dealloc];
  }

  if (CMIOModuleLogLevel_cmioLevel_1 >= 1)
  {
    v11 = CMIOLog();
    if (v11)
    {
      v12 = v11;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315907;
        v22 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        v23 = 1024;
        v24 = 1300;
        v25 = 2080;
        v26 = "[CMIOExtensionProviderHostContext captureAsyncStillImageWithStreamID:uniqueID:options:reply:]";
        v27 = 2113;
        selfCopy = self;
        _os_log_impl(&dword_22EA08000, v12, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{private}@", buf, 0x26u);
      }
    }
  }

  v13 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v13, "MessageType", 0x1AuLL);
  if (cmio_XPCMessageSetCFString(v13, "param1", d))
  {
    v14 = CMIOLog();
    if (v14 && os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderHostContext captureAsyncStillImageWithStreamID:uniqueID:options:reply:];
    }
  }

  else if (cmio_XPCMessageSetCFNumber(v13, "param2", [MEMORY[0x277CCABB0] numberWithLongLong:iD]))
  {
    v15 = CMIOLog();
    if (v15 && os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderHostContext captureAsyncStillImageWithStreamID:uniqueID:options:reply:];
    }
  }

  else
  {
    if (!options || !cmio_XPCMessageSetCFDictionary(v13, "param3", options))
    {
      dispatch_group_enter(self->_transactionGroup);
      connection = self->_connection;
      queue = self->_queue;
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __94__CMIOExtensionProviderHostContext_captureAsyncStillImageWithStreamID_uniqueID_options_reply___block_invoke;
      v20[3] = &unk_27885C340;
      v20[4] = self;
      v20[5] = reply;
      xpc_connection_send_message_with_reply(connection, v13, queue, v20);
      goto LABEL_16;
    }

    v17 = CMIOLog();
    if (v17 && os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderHostContext captureAsyncStillImageWithStreamID:uniqueID:options:reply:];
    }
  }

  (*(reply + 2))(reply, 0, [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-5 userInfo:0]);
LABEL_16:
  xpc_release(v13);
  v16 = *MEMORY[0x277D85DE8];
}

void __94__CMIOExtensionProviderHostContext_captureAsyncStillImageWithStreamID_uniqueID_options_reply___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x2318F1BC0](a2);
  if (v4 == MEMORY[0x277D86480])
  {
    v6 = CMIOLog();
    if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
      __94__CMIOExtensionProviderHostContext_captureAsyncStillImageWithStreamID_uniqueID_options_reply___block_invoke_cold_3();
    }

    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-7 userInfo:0];
    (*(*(a1 + 40) + 16))();
  }

  else if (v4 == MEMORY[0x277D86468])
  {
    int64 = xpc_dictionary_get_int64(a2, "errorReturn");
    if (int64)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:int64 userInfo:0];
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v8 = *MEMORY[0x277CBECE8];
      FigXPCMessageCreateBlockBufferData();
      v9 = CMIOLog();
      if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        __94__CMIOExtensionProviderHostContext_captureAsyncStillImageWithStreamID_uniqueID_options_reply___block_invoke_cold_2(v10, v12);
      }

      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6 userInfo:0];
      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    v5 = CMIOLog();
    if (v5 && os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
      __94__CMIOExtensionProviderHostContext_captureAsyncStillImageWithStreamID_uniqueID_options_reply___block_invoke_cold_1();
    }

    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6 userInfo:0];
    (*(*(a1 + 40) + 16))();
  }

  dispatch_group_leave(*(*(a1 + 32) + 24));
  v11 = *MEMORY[0x277D85DE8];
}

- (void)enqueueReactionEffect:(id)effect reactionType:(id)type reply:(id)reply
{
  v26 = *MEMORY[0x277D85DE8];
  if (CMIOModuleLogLevel_once_1 != -1)
  {
    [CMIOExtensionProviderHostContext dealloc];
  }

  if (CMIOModuleLogLevel_cmioLevel_1 >= 1)
  {
    v9 = CMIOLog();
    if (v9)
    {
      v10 = v9;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315907;
        v19 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        v20 = 1024;
        v21 = 1390;
        v22 = 2080;
        v23 = "[CMIOExtensionProviderHostContext enqueueReactionEffect:reactionType:reply:]";
        v24 = 2113;
        selfCopy = self;
        _os_log_impl(&dword_22EA08000, v10, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{private}@", buf, 0x26u);
      }
    }
  }

  v11 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v11, "MessageType", 0x1CuLL);
  if (cmio_XPCMessageSetCFString(v11, "param1", effect))
  {
    v12 = CMIOLog();
    if (v12 && os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderHostContext enqueueReactionEffect:reactionType:reply:];
    }
  }

  else
  {
    if (!cmio_XPCMessageSetCFString(v11, "param2", type))
    {
      dispatch_group_enter(self->_transactionGroup);
      connection = self->_connection;
      queue = self->_queue;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __77__CMIOExtensionProviderHostContext_enqueueReactionEffect_reactionType_reply___block_invoke;
      v17[3] = &unk_27885C340;
      v17[4] = self;
      v17[5] = reply;
      xpc_connection_send_message_with_reply(connection, v11, queue, v17);
      goto LABEL_16;
    }

    v13 = CMIOLog();
    if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderHostContext enqueueReactionEffect:reactionType:reply:];
    }
  }

  (*(reply + 2))(reply, [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-5 userInfo:0]);
LABEL_16:
  xpc_release(v11);
  v14 = *MEMORY[0x277D85DE8];
}

void __77__CMIOExtensionProviderHostContext_enqueueReactionEffect_reactionType_reply___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x2318F1BC0](a2);
  if (v4 == MEMORY[0x277D86480])
  {
    v6 = CMIOLog();
    if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
      __77__CMIOExtensionProviderHostContext_enqueueReactionEffect_reactionType_reply___block_invoke_cold_2();
    }

    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-7 userInfo:0];
    (*(*(a1 + 40) + 16))();
  }

  else if (v4 == MEMORY[0x277D86468])
  {
    int64 = xpc_dictionary_get_int64(a2, "errorReturn");
    if (int64)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:int64 userInfo:0];
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v5 = CMIOLog();
    if (v5 && os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
      __77__CMIOExtensionProviderHostContext_enqueueReactionEffect_reactionType_reply___block_invoke_cold_1();
    }

    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6 userInfo:0];
    (*(*(a1 + 40) + 16))();
  }

  dispatch_group_leave(*(*(a1 + 32) + 24));
  v8 = *MEMORY[0x277D85DE8];
}

- (void)completeTransaction
{
  v17 = *MEMORY[0x277D85DE8];
  if (CMIOModuleLogLevel_once_1 != -1)
  {
    [CMIOExtensionProviderHostContext dealloc];
  }

  if (CMIOModuleLogLevel_cmioLevel_1 >= 1)
  {
    v3 = CMIOLog();
    if (v3)
    {
      v4 = v3;
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136315907;
        v10 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        v11 = 1024;
        v12 = 1451;
        v13 = 2080;
        v14 = "[CMIOExtensionProviderHostContext completeTransaction]";
        v15 = 2113;
        selfCopy2 = self;
        _os_log_impl(&dword_22EA08000, v4, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{private}@ will", &v9, 0x26u);
      }
    }
  }

  dispatch_group_wait(self->_transactionGroup, 0xFFFFFFFFFFFFFFFFLL);
  if (CMIOModuleLogLevel_once_1 != -1)
  {
    [CMIOExtensionProviderHostContext availableDevicesChanged:message:];
  }

  if (CMIOModuleLogLevel_cmioLevel_1 >= 1)
  {
    v5 = CMIOLog();
    if (v5)
    {
      v6 = v5;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        v9 = 136315907;
        v10 = v7;
        v11 = 1024;
        v12 = 1455;
        v13 = 2080;
        v14 = "[CMIOExtensionProviderHostContext completeTransaction]";
        v15 = 2113;
        selfCopy2 = self;
        _os_log_impl(&dword_22EA08000, v6, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{private}@ did", &v9, 0x26u);
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __64__CMIOExtensionProviderHostContext_initWithConnection_delegate___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  xpc_connection_get_pid(*(a1 + 32));
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Cu);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)handleClientMessageWithConnection:message:.cold.2()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)availableDevicesChanged:message:.cold.1()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)availableStreamsChanged:message:.cold.1()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)availableStreamsChanged:message:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)pluginPropertiesChanged:message:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)pluginPropertiesChanged:message:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)devicePropertiesChanged:message:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)devicePropertiesChanged:message:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)devicePropertiesChanged:message:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)streamPropertiesChanged:message:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)streamPropertiesChanged:message:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)streamPropertiesChanged:message:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)receivedSample:message:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)receivedSample:message:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)receivedSample:message:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)pullSample:message:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)pullSample:message:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __55__CMIOExtensionProviderHostContext_pullSample_message___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __55__CMIOExtensionProviderHostContext_pullSample_message___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)scheduledOutputChanged:message:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)scheduledOutputChanged:message:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)scheduledOutputChanged:message:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __62__CMIOExtensionProviderHostContext_availablePluginProperties___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2_1(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s unknown type %{public}@", v9, v10);
}

void __62__CMIOExtensionProviderHostContext_availablePluginProperties___block_invoke_cold_2(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_4(a1, a2, 4.8152e-34);
  OUTLINED_FUNCTION_9_1(v2, 402);
  *(v3 + 20) = "[CMIOExtensionProviderHostContext availablePluginProperties:]_block_invoke";
  OUTLINED_FUNCTION_15_0(&dword_22EA08000, v3, v4, "%s:%d:%s cmio_XPCMessageCopyCFArray failed", v5);
}

void __62__CMIOExtensionProviderHostContext_availablePluginProperties___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2_1(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s received %{public}@", v9, v10);
}

void __62__CMIOExtensionProviderHostContext_availablePluginProperties___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s exception %@", v9, v10);
}

- (void)pluginStates:.cold.2()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2_1(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s unknown type %{public}@", v9, v10);
}

- (void)pluginStates:(uint64_t)a1 .cold.3(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_4(a1, a2, 4.8152e-34);
  OUTLINED_FUNCTION_9_1(v2, 455);
  *(v3 + 20) = "[CMIOExtensionProviderHostContext pluginStates:]";
  OUTLINED_FUNCTION_15_0(&dword_22EA08000, v3, v4, "%s:%d:%s copyPropertyStatesFromXPCDictionary failed", v5);
}

- (void)pluginStates:(uint64_t)a1 .cold.4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_4(a1, a2, 4.8152e-34);
  OUTLINED_FUNCTION_9_1(v2, 451);
  *(v3 + 20) = "[CMIOExtensionProviderHostContext pluginStates:]";
  OUTLINED_FUNCTION_15_0(&dword_22EA08000, v3, v4, "%s:%d:%s xpc_dictionary_get_value for param1 failed", v5);
}

- (void)pluginStates:.cold.5()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2_1(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s received %{public}@", v9, v10);
}

- (void)pluginStates:.cold.6()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s exception %@", v9, v10);
}

void __49__CMIOExtensionProviderHostContext_pluginStates___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
  v5 = *MEMORY[0x277D85DE8];
}

void __49__CMIOExtensionProviderHostContext_pluginStates___block_invoke_26_cold_1()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
  v5 = *MEMORY[0x277D85DE8];
}

void __49__CMIOExtensionProviderHostContext_pluginStates___block_invoke_27_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
  v5 = *MEMORY[0x277D85DE8];
}

void __49__CMIOExtensionProviderHostContext_pluginStates___block_invoke_27_cold_2()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)pluginPropertyStatesForProperties:reply:.cold.2()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

void __76__CMIOExtensionProviderHostContext_pluginPropertyStatesForProperties_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2_1(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s unknown type %{public}@", v9, v10);
}

void __76__CMIOExtensionProviderHostContext_pluginPropertyStatesForProperties_reply___block_invoke_cold_2(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_4(a1, a2, 4.8152e-34);
  OUTLINED_FUNCTION_9_1(v2, 571);
  *(v3 + 20) = "[CMIOExtensionProviderHostContext pluginPropertyStatesForProperties:reply:]_block_invoke";
  OUTLINED_FUNCTION_15_0(&dword_22EA08000, v3, v4, "%s:%d:%s copyPropertyStatesFromXPCDictionary failed", v5);
}

void __76__CMIOExtensionProviderHostContext_pluginPropertyStatesForProperties_reply___block_invoke_cold_3(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_4(a1, a2, 4.8152e-34);
  OUTLINED_FUNCTION_9_1(v2, 567);
  *(v3 + 20) = "[CMIOExtensionProviderHostContext pluginPropertyStatesForProperties:reply:]_block_invoke";
  OUTLINED_FUNCTION_15_0(&dword_22EA08000, v3, v4, "%s:%d:%s xpc_dictionary_get_value for param1 failed", v5);
}

void __76__CMIOExtensionProviderHostContext_pluginPropertyStatesForProperties_reply___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2_1(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s received %{public}@", v9, v10);
}

void __76__CMIOExtensionProviderHostContext_pluginPropertyStatesForProperties_reply___block_invoke_cold_5()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s exception %@", v9, v10);
}

- (void)setPluginPropertyValues:reply:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setPluginPropertyValues:reply:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __66__CMIOExtensionProviderHostContext_setPluginPropertyValues_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2_1(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s unknown type %{public}@", v9, v10);
}

void __66__CMIOExtensionProviderHostContext_setPluginPropertyValues_reply___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2_1(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s received %{public}@", v9, v10);
}

void __66__CMIOExtensionProviderHostContext_setPluginPropertyValues_reply___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s exception %@", v9, v10);
}

- (void)availableDevicePropertiesWithDeviceID:reply:.cold.2()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

void __80__CMIOExtensionProviderHostContext_availableDevicePropertiesWithDeviceID_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2_1(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s unknown type %{public}@", v9, v10);
}

void __80__CMIOExtensionProviderHostContext_availableDevicePropertiesWithDeviceID_reply___block_invoke_cold_2(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_4(a1, a2, 4.8152e-34);
  OUTLINED_FUNCTION_9_1(v2, 697);
  *(v3 + 20) = "[CMIOExtensionProviderHostContext availableDevicePropertiesWithDeviceID:reply:]_block_invoke";
  OUTLINED_FUNCTION_15_0(&dword_22EA08000, v3, v4, "%s:%d:%s cmio_XPCMessageCopyCFArray failed", v5);
}

void __80__CMIOExtensionProviderHostContext_availableDevicePropertiesWithDeviceID_reply___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2_1(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s received %{public}@", v9, v10);
}

void __80__CMIOExtensionProviderHostContext_availableDevicePropertiesWithDeviceID_reply___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s exception %@", v9, v10);
}

- (void)deviceStatesWithDeviceID:reply:.cold.2()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

void __67__CMIOExtensionProviderHostContext_deviceStatesWithDeviceID_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2_1(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s unknown type %{public}@", v9, v10);
}

void __67__CMIOExtensionProviderHostContext_deviceStatesWithDeviceID_reply___block_invoke_cold_2(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_4(a1, a2, 4.8152e-34);
  OUTLINED_FUNCTION_9_1(v2, 759);
  *(v3 + 20) = "[CMIOExtensionProviderHostContext deviceStatesWithDeviceID:reply:]_block_invoke";
  OUTLINED_FUNCTION_15_0(&dword_22EA08000, v3, v4, "%s:%d:%s copyPropertyStatesFromXPCDictionary failed", v5);
}

void __67__CMIOExtensionProviderHostContext_deviceStatesWithDeviceID_reply___block_invoke_cold_3(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_4(a1, a2, 4.8152e-34);
  OUTLINED_FUNCTION_9_1(v2, 755);
  *(v3 + 20) = "[CMIOExtensionProviderHostContext deviceStatesWithDeviceID:reply:]_block_invoke";
  OUTLINED_FUNCTION_15_0(&dword_22EA08000, v3, v4, "%s:%d:%s xpc_dictionary_get_value for param1 failed", v5);
}

void __67__CMIOExtensionProviderHostContext_deviceStatesWithDeviceID_reply___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2_1(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s received %{public}@", v9, v10);
}

void __67__CMIOExtensionProviderHostContext_deviceStatesWithDeviceID_reply___block_invoke_cold_5()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s exception %@", v9, v10);
}

void __67__CMIOExtensionProviderHostContext_deviceStatesWithDeviceID_reply___block_invoke_28_cold_1()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)devicePropertyStatesWithDeviceID:properties:reply:.cold.2()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)devicePropertyStatesWithDeviceID:properties:reply:.cold.3()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

void __86__CMIOExtensionProviderHostContext_devicePropertyStatesWithDeviceID_properties_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2_1(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s unknown type %{public}@", v9, v10);
}

void __86__CMIOExtensionProviderHostContext_devicePropertyStatesWithDeviceID_properties_reply___block_invoke_cold_2(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_4(a1, a2, 4.8152e-34);
  OUTLINED_FUNCTION_9_1(v2, 851);
  *(v3 + 20) = "[CMIOExtensionProviderHostContext devicePropertyStatesWithDeviceID:properties:reply:]_block_invoke";
  OUTLINED_FUNCTION_15_0(&dword_22EA08000, v3, v4, "%s:%d:%s copyPropertyStatesFromXPCDictionary failed", v5);
}

void __86__CMIOExtensionProviderHostContext_devicePropertyStatesWithDeviceID_properties_reply___block_invoke_cold_3(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_4(a1, a2, 4.8152e-34);
  OUTLINED_FUNCTION_9_1(v2, 847);
  *(v3 + 20) = "[CMIOExtensionProviderHostContext devicePropertyStatesWithDeviceID:properties:reply:]_block_invoke";
  OUTLINED_FUNCTION_15_0(&dword_22EA08000, v3, v4, "%s:%d:%s xpc_dictionary_get_value for param1 failed", v5);
}

void __86__CMIOExtensionProviderHostContext_devicePropertyStatesWithDeviceID_properties_reply___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2_1(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s received %{public}@", v9, v10);
}

void __86__CMIOExtensionProviderHostContext_devicePropertyStatesWithDeviceID_properties_reply___block_invoke_cold_5()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s exception %@", v9, v10);
}

- (void)setDevicePropertyValuesWithDeviceID:propertyValues:reply:.cold.2()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setDevicePropertyValuesWithDeviceID:propertyValues:reply:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setDevicePropertyValuesWithDeviceID:propertyValues:reply:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __93__CMIOExtensionProviderHostContext_setDevicePropertyValuesWithDeviceID_propertyValues_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2_1(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s unknown type %{public}@", v9, v10);
}

void __93__CMIOExtensionProviderHostContext_setDevicePropertyValuesWithDeviceID_propertyValues_reply___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2_1(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s received %{public}@", v9, v10);
}

void __93__CMIOExtensionProviderHostContext_setDevicePropertyValuesWithDeviceID_propertyValues_reply___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s exception %@", v9, v10);
}

- (void)availableStreamPropertiesWithStreamID:reply:.cold.2()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

void __80__CMIOExtensionProviderHostContext_availableStreamPropertiesWithStreamID_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2_1(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s unknown type %{public}@", v9, v10);
}

void __80__CMIOExtensionProviderHostContext_availableStreamPropertiesWithStreamID_reply___block_invoke_cold_2(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_4(a1, a2, 4.8152e-34);
  OUTLINED_FUNCTION_9_1(v2, 988);
  *(v3 + 20) = "[CMIOExtensionProviderHostContext availableStreamPropertiesWithStreamID:reply:]_block_invoke";
  OUTLINED_FUNCTION_15_0(&dword_22EA08000, v3, v4, "%s:%d:%s cmio_XPCMessageCopyCFArray failed", v5);
}

void __80__CMIOExtensionProviderHostContext_availableStreamPropertiesWithStreamID_reply___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2_1(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s received %{public}@", v9, v10);
}

void __80__CMIOExtensionProviderHostContext_availableStreamPropertiesWithStreamID_reply___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s exception %@", v9, v10);
}

- (void)streamPropertyStatesWithStreamID:properties:reply:.cold.2()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)streamPropertyStatesWithStreamID:properties:reply:.cold.3()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

void __86__CMIOExtensionProviderHostContext_streamPropertyStatesWithStreamID_properties_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2_1(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s unknown type %{public}@", v9, v10);
}

void __86__CMIOExtensionProviderHostContext_streamPropertyStatesWithStreamID_properties_reply___block_invoke_cold_2(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_4(a1, a2, 4.8152e-34);
  OUTLINED_FUNCTION_9_1(v2, 1056);
  *(v3 + 20) = "[CMIOExtensionProviderHostContext streamPropertyStatesWithStreamID:properties:reply:]_block_invoke";
  OUTLINED_FUNCTION_15_0(&dword_22EA08000, v3, v4, "%s:%d:%s copyPropertyStatesFromXPCDictionary failed", v5);
}

void __86__CMIOExtensionProviderHostContext_streamPropertyStatesWithStreamID_properties_reply___block_invoke_cold_3(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_4(a1, a2, 4.8152e-34);
  OUTLINED_FUNCTION_9_1(v2, 1052);
  *(v3 + 20) = "[CMIOExtensionProviderHostContext streamPropertyStatesWithStreamID:properties:reply:]_block_invoke";
  OUTLINED_FUNCTION_15_0(&dword_22EA08000, v3, v4, "%s:%d:%s xpc_dictionary_get_value for param1 failed", v5);
}

void __86__CMIOExtensionProviderHostContext_streamPropertyStatesWithStreamID_properties_reply___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2_1(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s received %{public}@", v9, v10);
}

void __86__CMIOExtensionProviderHostContext_streamPropertyStatesWithStreamID_properties_reply___block_invoke_cold_5()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s exception %@", v9, v10);
}

- (void)setStreamPropertyValuesWithStreamID:propertyValues:reply:.cold.2()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setStreamPropertyValuesWithStreamID:propertyValues:reply:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setStreamPropertyValuesWithStreamID:propertyValues:reply:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __93__CMIOExtensionProviderHostContext_setStreamPropertyValuesWithStreamID_propertyValues_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2_1(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s unknown type %{public}@", v9, v10);
}

void __93__CMIOExtensionProviderHostContext_setStreamPropertyValuesWithStreamID_propertyValues_reply___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2_1(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s received %{public}@", v9, v10);
}

void __93__CMIOExtensionProviderHostContext_setStreamPropertyValuesWithStreamID_propertyValues_reply___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s exception %@", v9, v10);
}

- (void)startStreamWithStreamID:reply:.cold.2()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

void __66__CMIOExtensionProviderHostContext_startStreamWithStreamID_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2_1(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s unknown type %{public}@", v9, v10);
}

void __66__CMIOExtensionProviderHostContext_startStreamWithStreamID_reply___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2_1(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s received %{public}@", v9, v10);
}

void __66__CMIOExtensionProviderHostContext_startStreamWithStreamID_reply___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s exception %@", v9, v10);
}

- (void)stopStreamWithStreamID:reply:.cold.2()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

void __65__CMIOExtensionProviderHostContext_stopStreamWithStreamID_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2_1(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s unknown type %{public}@", v9, v10);
}

void __65__CMIOExtensionProviderHostContext_stopStreamWithStreamID_reply___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2_1(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s received %{public}@", v9, v10);
}

void __65__CMIOExtensionProviderHostContext_stopStreamWithStreamID_reply___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s exception %@", v9, v10);
}

void __55__CMIOExtensionProviderHostContext_sendEmptyClientInfo__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

void __55__CMIOExtensionProviderHostContext_sendEmptyClientInfo__block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
  v5 = *MEMORY[0x277D85DE8];
}

void __55__CMIOExtensionProviderHostContext_sendEmptyClientInfo__block_invoke_cold_3()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)captureAsyncStillImageWithStreamID:uniqueID:options:reply:.cold.2()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)captureAsyncStillImageWithStreamID:uniqueID:options:reply:.cold.3()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)captureAsyncStillImageWithStreamID:uniqueID:options:reply:.cold.4()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

void __94__CMIOExtensionProviderHostContext_captureAsyncStillImageWithStreamID_uniqueID_options_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2_1(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s unknown type %{public}@", v9, v10);
}

void __94__CMIOExtensionProviderHostContext_captureAsyncStillImageWithStreamID_uniqueID_options_reply___block_invoke_cold_2(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_4(a1, a2, 4.8152e-34);
  OUTLINED_FUNCTION_9_1(v2, 1365);
  *(v3 + 20) = "[CMIOExtensionProviderHostContext captureAsyncStillImageWithStreamID:uniqueID:options:reply:]_block_invoke";
  OUTLINED_FUNCTION_15_0(&dword_22EA08000, v3, v4, "%s:%d:%s Create still sample buffer from serialized block buffer failed", v5);
}

void __94__CMIOExtensionProviderHostContext_captureAsyncStillImageWithStreamID_uniqueID_options_reply___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2_1(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s received %{public}@", v9, v10);
}

void __94__CMIOExtensionProviderHostContext_captureAsyncStillImageWithStreamID_uniqueID_options_reply___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s exception %@", v9, v10);
}

- (void)enqueueReactionEffect:reactionType:reply:.cold.2()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)enqueueReactionEffect:reactionType:reply:.cold.3()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

void __77__CMIOExtensionProviderHostContext_enqueueReactionEffect_reactionType_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2_1(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s unknown type %{public}@", v9, v10);
}

void __77__CMIOExtensionProviderHostContext_enqueueReactionEffect_reactionType_reply___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2_1(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s received %{public}@", v9, v10);
}

void __77__CMIOExtensionProviderHostContext_enqueueReactionEffect_reactionType_reply___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s exception %@", v9, v10);
}

@end