@interface CMIOExtensionProxyContext
- (CMIOExtensionProxyContext)initWithConnection:(id)connection serverConnection:(id)serverConnection queue:(id)queue delegate:(id)delegate;
- (id)description;
- (id)redactedDescription;
- (void)dealloc;
- (void)handleClientMessageWithConnection:(id)connection message:(id)message;
- (void)handleServerMessageWithConnection:(id)connection message:(id)message;
- (void)invalidate;
- (void)receivedSample:(id)sample message:(id)message;
- (void)sendClientInfo;
@end

@implementation CMIOExtensionProxyContext

- (CMIOExtensionProxyContext)initWithConnection:(id)connection serverConnection:(id)serverConnection queue:(id)queue delegate:(id)delegate
{
  v31 = *MEMORY[0x277D85DE8];
  if (connection && serverConnection)
  {
    v29.receiver = self;
    v29.super_class = CMIOExtensionProxyContext;
    v10 = [(CMIOExtensionProxyContext *)&v29 init];
    v11 = v10;
    if (v10)
    {
      v10->_lock._os_unfair_lock_opaque = 0;
      v10->_transaction = os_transaction_create();
      objc_storeWeak(&v11->_delegate, delegate);
      v11->_connection = connection;
      v11->_serverConnection = serverConnection;
      v11->_deviceIDsByStreamID = objc_alloc_init(MEMORY[0x277CBEB38]);
      v11->_hasCameraAttribution = 0;
      if (queue)
      {
        queueCopy = queue;
      }

      else
      {
        v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
        global_queue = dispatch_get_global_queue(21, 0);
        queueCopy = dispatch_queue_create_with_target_V2("com.apple.cmio.CMIOExtensionProxyContext", v13, global_queue);
      }

      v11->_queue = queueCopy;
      objc_initWeak(&location, v11);
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __80__CMIOExtensionProxyContext_initWithConnection_serverConnection_queue_delegate___block_invoke;
      handler[3] = &unk_27885C1C0;
      objc_copyWeak(&v27, &location);
      handler[4] = serverConnection;
      xpc_connection_set_event_handler(serverConnection, handler);
      xpc_connection_set_target_queue(serverConnection, v11->_queue);
      xpc_connection_activate(serverConnection);
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __80__CMIOExtensionProxyContext_initWithConnection_serverConnection_queue_delegate___block_invoke_22;
      v24[3] = &unk_27885C1C0;
      objc_copyWeak(&v25, &location);
      v24[4] = connection;
      xpc_connection_set_event_handler(connection, v24);
      xpc_connection_set_target_queue(connection, v11->_queue);
      xpc_connection_activate(connection);
      xpc_connection_get_audit_token();
      pid = xpc_connection_get_pid(connection);
      uUID = [MEMORY[0x277CCAD78] UUID];
      memset(buf, 0, 32);
      v17 = [CMIOExtensionProvider newActivityAttributionWithToken:buf];
      v18 = [CMIOExtensionClient alloc];
      memset(buf, 0, 32);
      v11->_clientInfo = [(CMIOExtensionClient *)v18 initWithPID:pid clientID:uUID auditToken:buf stAttribution:v17 isToProxy:1 isFromProxyExtensionManager:0];
      v11->_activeStreams = 0;
      v11->_description = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<CMIOExtensionProxyContext: pid %u, ID %@, delegate %@>", pid, uUID, delegate];
      v11->_redactedDescription = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<CMIOExtensionProxyContext: pid -, ID ->"];
      [(CMIOExtensionProxyContext *)v11 sendClientInfo];
      v19 = CMIOLog();
      v20 = v19;
      if (v19 && os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v21 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
        *buf = 136315907;
        *&buf[4] = v21;
        *&buf[12] = 1024;
        *&buf[14] = 265;
        *&buf[18] = 2080;
        *&buf[20] = "[CMIOExtensionProxyContext initWithConnection:serverConnection:queue:delegate:]";
        *&buf[28] = 2113;
        *&buf[30] = v11;
        _os_log_impl(&dword_22EA08000, v20, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{private}@", buf, 0x26u);
      }

      objc_destroyWeak(&v25);
      objc_destroyWeak(&v27);
      objc_destroyWeak(&location);
    }
  }

  else
  {

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Invalid argument"];
    v11 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v11;
}

void __80__CMIOExtensionProxyContext_initWithConnection_serverConnection_queue_delegate___block_invoke(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = MEMORY[0x2318F1BC0](a2);
  if (v5 == MEMORY[0x277D86480])
  {
    v6 = CMIOLog();
    if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __80__CMIOExtensionProxyContext_initWithConnection_serverConnection_queue_delegate___block_invoke_cold_1(a1);
    }

    if (a2 == MEMORY[0x277D863F0])
    {
      xpc_connection_cancel(*(a1 + 32));
    }

    else if (a2 == MEMORY[0x277D863F8] && WeakRetained && (*(WeakRetained + 49) & 1) == 0)
    {
      v7 = CMIOLog();
      if (v7)
      {
        v8 = v7;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v10 = 136315907;
          v11 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
          v12 = 1024;
          v13 = 210;
          v14 = 2080;
          v15 = "[CMIOExtensionProxyContext initWithConnection:serverConnection:queue:delegate:]_block_invoke";
          v16 = 2113;
          v17 = WeakRetained;
          _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{private}@, serverConnection is invalidated", &v10, 0x26u);
        }
      }

      [WeakRetained invalidate];
      [objc_loadWeak(WeakRetained + 7) proxyContextHasBeenInvalidated:WeakRetained];
    }
  }

  else if (v5 == MEMORY[0x277D86468])
  {
    [WeakRetained handleServerMessageWithConnection:*(a1 + 32) message:a2];
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __80__CMIOExtensionProxyContext_initWithConnection_serverConnection_queue_delegate___block_invoke_22(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = MEMORY[0x2318F1BC0](a2);
  if (v5 == MEMORY[0x277D86480])
  {
    v6 = CMIOLog();
    if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __80__CMIOExtensionProxyContext_initWithConnection_serverConnection_queue_delegate___block_invoke_22_cold_1(a1);
    }

    if (a2 == MEMORY[0x277D863F0])
    {
      xpc_connection_cancel(*(a1 + 32));
    }

    else if (a2 == MEMORY[0x277D863F8] && WeakRetained && (*(WeakRetained + 49) & 1) == 0)
    {
      v7 = CMIOLog();
      if (v7)
      {
        v8 = v7;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v10 = 136315907;
          v11 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
          v12 = 1024;
          v13 = 237;
          v14 = 2080;
          v15 = "[CMIOExtensionProxyContext initWithConnection:serverConnection:queue:delegate:]_block_invoke";
          v16 = 2113;
          v17 = WeakRetained;
          _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{private}@, connection is invalidated", &v10, 0x26u);
        }
      }

      [WeakRetained invalidate];
      [objc_loadWeak(WeakRetained + 7) proxyContextHasBeenInvalidated:WeakRetained];
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
  v25 = *MEMORY[0x277D85DE8];
  v3 = CMIOLog();
  if (v3)
  {
    v4 = v3;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315907;
      v18 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
      v19 = 1024;
      v20 = 272;
      v21 = 2080;
      v22 = "[CMIOExtensionProxyContext dealloc]";
      v23 = 2113;
      selfCopy = self;
      _os_log_impl(&dword_22EA08000, v4, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{private}@", buf, 0x26u);
    }
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [-[CMIOExtensionClient stCameraCaptureAttributionsMap](self->_clientInfo "stCameraCaptureAttributionsMap")];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [+[CMIOExtensionProxyAttribution sharedAttribution](CMIOExtensionProxyAttribution "sharedAttribution")];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [-[CMIOExtensionClient stCameraCaptureAttributionsMap](self->_clientInfo "stCameraCaptureAttributionsMap")];
  if (self->_activeStreams >= 1)
  {
    [objc_loadWeak(&self->_delegate) proxyStreamsHaveStopped:self->_activeStreams];
    self->_activeStreams = 0;
  }

  v11.receiver = self;
  v11.super_class = CMIOExtensionProxyContext;
  [(CMIOExtensionProxyContext *)&v11 dealloc];
  v10 = *MEMORY[0x277D85DE8];
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

- (void)invalidate
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = CMIOLog();
  if (v3)
  {
    v4 = v3;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 136315907;
      v19 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
      v20 = 1024;
      v21 = 310;
      v22 = 2080;
      v23 = "[CMIOExtensionProxyContext invalidate]";
      v24 = 2113;
      selfCopy = self;
      _os_log_impl(&dword_22EA08000, v4, OS_LOG_TYPE_INFO, "%s:%d:%s %{private}@", buf, 0x26u);
    }
  }

  os_unfair_lock_lock(&self->_lock);
  if (self->_invalidated)
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    self->_invalidated = 1;
    os_unfair_lock_unlock(&self->_lock);
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    stCameraCaptureAttributionsMap = [-[CMIOExtensionClient stCameraCaptureAttributionsMap](self->_clientInfo stCameraCaptureAttributionsMap];
    v6 = [stCameraCaptureAttributionsMap countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        v9 = 0;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(stCameraCaptureAttributionsMap);
          }

          [+[CMIOExtensionProxyAttribution sharedAttribution](CMIOExtensionProxyAttribution "sharedAttribution")];
        }

        while (v7 != v9);
        v7 = [stCameraCaptureAttributionsMap countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    [-[CMIOExtensionClient stCameraCaptureAttributionsMap](self->_clientInfo "stCameraCaptureAttributionsMap")];
    self->_hasCameraAttribution = 0;
    if (self->_activeStreams >= 1)
    {
      [objc_loadWeak(&self->_delegate) proxyStreamsHaveStopped:self->_activeStreams];
      self->_activeStreams = 0;
    }

    connection = self->_connection;
    if (connection)
    {
      xpc_connection_cancel(connection);
    }

    serverConnection = self->_serverConnection;
    if (serverConnection)
    {
      xpc_connection_cancel(serverConnection);
    }

    self->_transaction = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)sendClientInfo
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __43__CMIOExtensionProxyContext_sendClientInfo__block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = MEMORY[0x2318F1BC0](a2);
    if (v3 == MEMORY[0x277D86480])
    {
      v5 = CMIOLog();
      if (v5 && os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __43__CMIOExtensionProxyContext_sendClientInfo__block_invoke_cold_3();
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
            __43__CMIOExtensionProxyContext_sendClientInfo__block_invoke_cold_2();
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
          __43__CMIOExtensionProxyContext_sendClientInfo__block_invoke_cold_1();
        }
      }
    }
  }
}

- (void)receivedSample:(id)sample message:(id)message
{
  v31 = *MEMORY[0x277D85DE8];
  cf = 0;
  cmio_XPCMessageCopyCFString(message, "param1", &cf);
  if (cf)
  {
    int64 = xpc_dictionary_get_int64(message, "param2");
    if (!xpc_dictionary_get_value(message, "param3"))
    {
      v10 = CMIOLog();
      if (v10 && os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [CMIOExtensionProxyContext receivedSample:message:];
      }

      goto LABEL_39;
    }

    if (int64 == 1836415096)
    {
      v13 = [(CMIOExtensionClient *)self->_clientInfo microphoneAuthorizationStatus]== 3 && [(CMIOExtensionClient *)self->_clientInfo cameraAuthorizationStatus]== 3;
      v8 = [(CMIOExtensionClient *)self->_clientInfo microphoneAuthorizationStatus]== 0;
      v12 = [(CMIOExtensionClient *)self->_clientInfo cameraAuthorizationStatus]== 0;
      if (!v13)
      {
        goto LABEL_25;
      }
    }

    else
    {
      if (int64 != 1986618469)
      {
        if (int64 == 1936684398)
        {
          microphoneAuthorizationStatus = [(CMIOExtensionClient *)self->_clientInfo microphoneAuthorizationStatus];
          v8 = [(CMIOExtensionClient *)self->_clientInfo microphoneAuthorizationStatus]== 0;
          if (microphoneAuthorizationStatus == 3)
          {
LABEL_24:
            v14 = xpc_dictionary_create(0, 0, 0);
            applier[0] = MEMORY[0x277D85DD0];
            applier[1] = 3221225472;
            applier[2] = __52__CMIOExtensionProxyContext_receivedSample_message___block_invoke;
            applier[3] = &unk_27885BF98;
            applier[4] = v14;
            xpc_dictionary_apply(message, applier);
            xpc_connection_send_message(self->_connection, v14);
            xpc_release(v14);
LABEL_39:
            CFRelease(cf);
            goto LABEL_40;
          }
        }

        else
        {
          v8 = 0;
        }

        v12 = 0;
LABEL_25:
        v15 = CMIOLog();
        if (v15)
        {
          v16 = v15;
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v17 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
            *buf = 136315650;
            v26 = v17;
            v27 = 1024;
            v28 = 423;
            v29 = 2080;
            v30 = "[CMIOExtensionProxyContext receivedSample:message:]";
            _os_log_impl(&dword_22EA08000, v16, OS_LOG_TYPE_DEFAULT, "%s:%d:%s Not authorized", buf, 0x1Cu);
          }
        }

        v18 = objc_autoreleasePoolPush();
        v19 = [MEMORY[0x277CCACA8] stringWithString:cf];
        if (int64 != 1836415096)
        {
          if (int64 == 1986618469)
          {
LABEL_35:
            if (![(CMIOExtensionClient *)self->_clientInfo hasPendingCameraAuthorizationRequest]&& v12)
            {
              clientInfo = self->_clientInfo;
              v22[0] = MEMORY[0x277D85DD0];
              v22[1] = 3221225472;
              v22[2] = __52__CMIOExtensionProxyContext_receivedSample_message___block_invoke_45;
              v22[3] = &unk_27885C228;
              v22[4] = self;
              v22[5] = v19;
              [(CMIOExtensionClient *)clientInfo requestAccessForMediaType:1986618469 reply:v22];
            }

            goto LABEL_38;
          }

          if (int64 != 1936684398)
          {
LABEL_38:
            objc_autoreleasePoolPop(v18);
            goto LABEL_39;
          }
        }

        if (![(CMIOExtensionClient *)self->_clientInfo hasPendingMicrophoneAuthorizationRequest]&& v8)
        {
          [(CMIOExtensionClient *)self->_clientInfo requestAccessForMediaType:1936684398 reply:&__block_literal_global_44];
        }

        if (int64 != 1836415096)
        {
          goto LABEL_38;
        }

        goto LABEL_35;
      }

      cameraAuthorizationStatus = [(CMIOExtensionClient *)self->_clientInfo cameraAuthorizationStatus];
      v12 = [(CMIOExtensionClient *)self->_clientInfo cameraAuthorizationStatus]== 0;
      if (cameraAuthorizationStatus != 3)
      {
        v8 = 0;
        goto LABEL_25;
      }
    }

    if (!self->_hasCameraAttribution)
    {
      [(CMIOExtensionProxyContext *)self _addCameraAttribution:cf];
    }

    goto LABEL_24;
  }

  v9 = CMIOLog();
  if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [CMIOExtensionProxyContext receivedSample:message:];
  }

LABEL_40:
  v21 = *MEMORY[0x277D85DE8];
}

void __52__CMIOExtensionProxyContext_receivedSample_message___block_invoke_41(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = CMIOLog();
  if (v3)
  {
    v4 = v3;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315906;
      v8 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
      if (a2 == 3)
      {
        v5 = 89;
      }

      else
      {
        v5 = 78;
      }

      v9 = 1024;
      v10 = 429;
      v11 = 2080;
      v12 = "[CMIOExtensionProxyContext receivedSample:message:]_block_invoke";
      v13 = 1024;
      v14 = v5;
      _os_log_impl(&dword_22EA08000, v4, OS_LOG_TYPE_DEFAULT, "%s:%d:%s Authorized microphone %c", &v7, 0x22u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __52__CMIOExtensionProxyContext_receivedSample_message___block_invoke_45(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = CMIOLog();
  if (v4)
  {
    v5 = v4;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315906;
      v10 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
      if (a2 == 3)
      {
        v6 = 89;
      }

      else
      {
        v6 = 78;
      }

      v11 = 1024;
      v12 = 437;
      v13 = 2080;
      v14 = "[CMIOExtensionProxyContext receivedSample:message:]_block_invoke";
      v15 = 1024;
      v16 = v6;
      _os_log_impl(&dword_22EA08000, v5, OS_LOG_TYPE_DEFAULT, "%s:%d:%s Authorized camera %c", &v9, 0x22u);
    }
  }

  if (a2 == 3)
  {
    v7 = *(a1 + 32);
    if ((v7[48] & 1) == 0)
    {
      [v7 _addCameraAttribution:*(a1 + 40)];
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)handleClientMessageWithConnection:(id)connection message:(id)message
{
  v42 = *MEMORY[0x277D85DE8];
  uint64 = xpc_dictionary_get_uint64(message, "MessageType");
  if (CMIOModuleLogLevel_once_0 != -1)
  {
    [CMIOExtensionProxyContext sendClientInfo];
  }

  if (CMIOModuleLogLevel_cmioLevel_0 >= 1)
  {
    v8 = CMIOLog();
    if (v8)
    {
      v9 = v8;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316163;
        *&buf[4] = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
        v34 = 1024;
        v35 = 457;
        v36 = 2080;
        v37 = "[CMIOExtensionProxyContext handleClientMessageWithConnection:message:]";
        v38 = 2113;
        selfCopy = self;
        v40 = 2048;
        v41 = uint64;
        _os_log_impl(&dword_22EA08000, v9, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{private}@ %lld", buf, 0x30u);
      }
    }
  }

  if (uint64 <= 19)
  {
    if ((uint64 - 1) >= 4 && (uint64 - 10) >= 4)
    {
      if (uint64 == 5)
      {
        reply = xpc_dictionary_create_reply(message);
        if (reply)
        {
          v11 = reply;
          xpc_dictionary_set_int64(reply, "errorReturn", 0);
          xpc_connection_send_message(connection, v11);
          xpc_release(v11);
        }

        else
        {
          v24 = CMIOLog();
          if (v24 && os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            [CMIOExtensionProxyContext handleClientMessageWithConnection:message:];
          }
        }

        goto LABEL_20;
      }

      goto LABEL_33;
    }

    goto LABEL_14;
  }

  if (uint64 < 23)
  {
LABEL_14:
    v12 = xpc_dictionary_create_reply(message);
    if (v12)
    {
      serverConnection = self->_serverConnection;
      queue = self->_queue;
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __71__CMIOExtensionProxyContext_handleClientMessageWithConnection_message___block_invoke;
      handler[3] = &unk_27885C250;
      handler[4] = v12;
      handler[5] = connection;
      v15 = handler;
LABEL_16:
      xpc_connection_send_message_with_reply(serverConnection, message, queue, v15);
      goto LABEL_20;
    }

    v16 = CMIOLog();
    if (v16 && os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProxyContext handleClientMessageWithConnection:message:];
    }

    goto LABEL_20;
  }

  switch(uint64)
  {
    case 23:
      v22 = xpc_dictionary_create_reply(message);
      if (v22)
      {
        serverConnection = self->_serverConnection;
        queue = self->_queue;
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __71__CMIOExtensionProxyContext_handleClientMessageWithConnection_message___block_invoke_48;
        v31[3] = &unk_27885C278;
        v31[4] = v22;
        v31[5] = self;
        v31[6] = connection;
        v15 = v31;
        goto LABEL_16;
      }

      v27 = CMIOLog();
      if (v27 && os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [CMIOExtensionProxyContext handleClientMessageWithConnection:message:];
      }

      break;
    case 24:
      *buf = 0;
      cmio_XPCMessageCopyCFString(message, "param1", buf);
      if (*buf)
      {
        v19 = [(NSMutableDictionary *)self->_deviceIDsByStreamID objectForKeyedSubscript:?];
        if (v19)
        {
          STCameraCaptureAttributionMapKey = cmio_getSTCameraCaptureAttributionMapKey(v19, *buf);
          [+[CMIOExtensionProxyAttribution sharedAttribution](CMIOExtensionProxyAttribution "sharedAttribution")];
          [-[CMIOExtensionClient stCameraCaptureAttributionsMap](self->_clientInfo "stCameraCaptureAttributionsMap")];
          [(NSMutableDictionary *)self->_deviceIDsByStreamID removeObjectForKey:*buf];
          self->_hasCameraAttribution = 0;
        }

        CFRelease(*buf);
        v21 = xpc_dictionary_create_reply(message);
        if (v21)
        {
          serverConnection = self->_serverConnection;
          queue = self->_queue;
          v30[0] = MEMORY[0x277D85DD0];
          v30[1] = 3221225472;
          v30[2] = __71__CMIOExtensionProxyContext_handleClientMessageWithConnection_message___block_invoke_50;
          v30[3] = &unk_27885C278;
          v30[4] = v21;
          v30[5] = self;
          v30[6] = connection;
          v15 = v30;
          goto LABEL_16;
        }

        v28 = CMIOLog();
        if (v28 && os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          [CMIOExtensionProxyContext handleClientMessageWithConnection:message:];
        }
      }

      else
      {
        v25 = CMIOLog();
        if (v25 && os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          [CMIOExtensionProxyContext handleClientMessageWithConnection:message:];
        }
      }

      break;
    case 25:

      self->_transaction = 0;
      v18 = xpc_dictionary_create_reply(message);
      if (v18)
      {
        serverConnection = self->_serverConnection;
        queue = self->_queue;
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __71__CMIOExtensionProxyContext_handleClientMessageWithConnection_message___block_invoke_52;
        v29[3] = &unk_27885C250;
        v29[4] = v18;
        v29[5] = connection;
        v15 = v29;
        goto LABEL_16;
      }

      v26 = CMIOLog();
      if (v26 && os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [CMIOExtensionProxyContext handleClientMessageWithConnection:message:];
      }

      break;
    default:
LABEL_33:
      v23 = CMIOLog();
      if (v23 && os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [CMIOExtensionProxyContext handleClientMessageWithConnection:message:];
      }

      break;
  }

LABEL_20:
  v17 = *MEMORY[0x277D85DE8];
}

void __71__CMIOExtensionProxyContext_handleClientMessageWithConnection_message___block_invoke(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x2318F1BC0](a2);
  if (v4 == MEMORY[0x277D86480])
  {
    v6 = CMIOLog();
    if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __71__CMIOExtensionProxyContext_handleClientMessageWithConnection_message___block_invoke_cold_2();
    }
  }

  else
  {
    if (v4 == MEMORY[0x277D86468])
    {
      applier[0] = MEMORY[0x277D85DD0];
      applier[1] = 3221225472;
      applier[2] = __71__CMIOExtensionProxyContext_handleClientMessageWithConnection_message___block_invoke_46;
      applier[3] = &unk_27885BF98;
      applier[4] = *(a1 + 32);
      xpc_dictionary_apply(a2, applier);
      goto LABEL_11;
    }

    v5 = CMIOLog();
    if (v5 && os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __71__CMIOExtensionProxyContext_handleClientMessageWithConnection_message___block_invoke_cold_1();
    }
  }

  xpc_dictionary_set_int64(*(a1 + 32), "errorReturn", -7);
LABEL_11:
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  xpc_release(*(a1 + 32));
}

void __71__CMIOExtensionProxyContext_handleClientMessageWithConnection_message___block_invoke_48(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x2318F1BC0](a2);
  if (v4 == MEMORY[0x277D86480])
  {
    v6 = CMIOLog();
    if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __71__CMIOExtensionProxyContext_handleClientMessageWithConnection_message___block_invoke_48_cold_2();
    }
  }

  else
  {
    if (v4 == MEMORY[0x277D86468])
    {
      ++*(*(a1 + 40) + 52);
      [objc_loadWeak((*(a1 + 40) + 56)) proxyStreamHasStarted];
      applier[0] = MEMORY[0x277D85DD0];
      applier[1] = 3221225472;
      applier[2] = __71__CMIOExtensionProxyContext_handleClientMessageWithConnection_message___block_invoke_49;
      applier[3] = &unk_27885BF98;
      applier[4] = *(a1 + 32);
      xpc_dictionary_apply(a2, applier);
      goto LABEL_11;
    }

    v5 = CMIOLog();
    if (v5 && os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __71__CMIOExtensionProxyContext_handleClientMessageWithConnection_message___block_invoke_48_cold_1();
    }
  }

  xpc_dictionary_set_int64(*(a1 + 32), "errorReturn", -7);
LABEL_11:
  xpc_connection_send_message(*(a1 + 48), *(a1 + 32));
  xpc_release(*(a1 + 32));
}

void __71__CMIOExtensionProxyContext_handleClientMessageWithConnection_message___block_invoke_50(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x2318F1BC0](a2);
  if (v4 == MEMORY[0x277D86480])
  {
    v6 = CMIOLog();
    if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __71__CMIOExtensionProxyContext_handleClientMessageWithConnection_message___block_invoke_50_cold_2();
    }

    goto LABEL_9;
  }

  if (v4 != MEMORY[0x277D86468])
  {
    v5 = CMIOLog();
    if (v5 && os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __71__CMIOExtensionProxyContext_handleClientMessageWithConnection_message___block_invoke_50_cold_1();
    }

LABEL_9:
    xpc_dictionary_set_int64(*(a1 + 32), "errorReturn", -7);
    goto LABEL_13;
  }

  v7 = *(a1 + 40);
  if (*(v7 + 52) >= 1)
  {
    [objc_loadWeak((v7 + 56)) proxyStreamsHaveStopped:1];
    --*(*(a1 + 40) + 52);
  }

  applier[0] = MEMORY[0x277D85DD0];
  applier[1] = 3221225472;
  applier[2] = __71__CMIOExtensionProxyContext_handleClientMessageWithConnection_message___block_invoke_51;
  applier[3] = &unk_27885BF98;
  applier[4] = *(a1 + 32);
  xpc_dictionary_apply(a2, applier);
LABEL_13:
  xpc_connection_send_message(*(a1 + 48), *(a1 + 32));
  xpc_release(*(a1 + 32));
}

void __71__CMIOExtensionProxyContext_handleClientMessageWithConnection_message___block_invoke_52(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x2318F1BC0](a2);
  if (v4 == MEMORY[0x277D86480])
  {
    v6 = CMIOLog();
    if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __71__CMIOExtensionProxyContext_handleClientMessageWithConnection_message___block_invoke_52_cold_2();
    }
  }

  else
  {
    if (v4 == MEMORY[0x277D86468])
    {
      applier[0] = MEMORY[0x277D85DD0];
      applier[1] = 3221225472;
      applier[2] = __71__CMIOExtensionProxyContext_handleClientMessageWithConnection_message___block_invoke_53;
      applier[3] = &unk_27885BF98;
      applier[4] = *(a1 + 32);
      xpc_dictionary_apply(a2, applier);
      goto LABEL_11;
    }

    v5 = CMIOLog();
    if (v5 && os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __71__CMIOExtensionProxyContext_handleClientMessageWithConnection_message___block_invoke_52_cold_1();
    }
  }

  xpc_dictionary_set_int64(*(a1 + 32), "errorReturn", -7);
LABEL_11:
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  xpc_release(*(a1 + 32));
}

- (void)handleServerMessageWithConnection:(id)connection message:(id)message
{
  v34 = *MEMORY[0x277D85DE8];
  uint64 = xpc_dictionary_get_uint64(message, "MessageType");
  if (CMIOModuleLogLevel_once_0 != -1)
  {
    [CMIOExtensionProxyContext sendClientInfo];
  }

  if (CMIOModuleLogLevel_cmioLevel_0 >= 1)
  {
    v8 = CMIOLog();
    if (v8)
    {
      v9 = v8;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316163;
        v25 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
        v26 = 1024;
        v27 = 620;
        v28 = 2080;
        v29 = "[CMIOExtensionProxyContext handleServerMessageWithConnection:message:]";
        v30 = 2113;
        selfCopy = self;
        v32 = 2048;
        v33 = uint64;
        _os_log_impl(&dword_22EA08000, v9, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{private}@ %lld", buf, 0x30u);
      }
    }
  }

  v10 = MEMORY[0x277D86468];
  if (uint64 <= 4)
  {
    if ((uint64 - 1) < 4)
    {
      if (MEMORY[0x2318F1BC0](message) == v10)
      {
        dictionary = xpc_dictionary_get_dictionary(message, "param2");
        if (dictionary)
        {
          v12 = [CMIOExtensionPropertyState copyPropertyStatesFromXPCDictionary:dictionary];
          if ([objc_msgSend(v12 "allKeys")] && objc_msgSend(objc_msgSend(v12, "allKeys"), "containsObject:", 0x284358E38) && objc_msgSend(objc_msgSend(v12, "allKeys"), "containsObject:", 0x284358DB8) && objc_msgSend(objc_msgSend(objc_msgSend(v12, "objectForKeyedSubscript:", 0x284358E18), "value"), "intValue"))
          {
            v13 = [v12 objectForKeyedSubscript:0x284358E38];
            v14 = [v12 objectForKeyedSubscript:0x284358DD8];
            if (!v14)
            {
              v14 = [v12 objectForKeyedSubscript:0x284358DB8];
            }

            -[NSMutableDictionary setObject:forKeyedSubscript:](self->_deviceIDsByStreamID, "setObject:forKeyedSubscript:", [v14 value], objc_msgSend(v13, "value"));
          }
        }
      }

      goto LABEL_25;
    }

    goto LABEL_29;
  }

  if (uint64 <= 7)
  {
    if (uint64 != 5)
    {
      if (uint64 == 7)
      {
        [(CMIOExtensionProxyContext *)self receivedSample:connection message:message];
        goto LABEL_35;
      }

      goto LABEL_29;
    }

    goto LABEL_25;
  }

  if (uint64 != 8)
  {
    if (uint64 != 9)
    {
LABEL_29:
      v19 = CMIOLog();
      if (v19 && os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [CMIOExtensionProxyContext handleServerMessageWithConnection:message:];
      }

      goto LABEL_35;
    }

LABEL_25:
    if (MEMORY[0x2318F1BC0](message) == v10)
    {
      v15 = xpc_dictionary_create(0, 0, 0);
      applier[0] = MEMORY[0x277D85DD0];
      applier[1] = 3221225472;
      applier[2] = __71__CMIOExtensionProxyContext_handleServerMessageWithConnection_message___block_invoke;
      applier[3] = &unk_27885BF98;
      applier[4] = v15;
      xpc_dictionary_apply(message, applier);
      xpc_connection_send_message(self->_connection, v15);
      xpc_release(v15);
    }

    goto LABEL_35;
  }

  reply = xpc_dictionary_create_reply(message);
  if (reply)
  {
    connection = self->_connection;
    queue = self->_queue;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __71__CMIOExtensionProxyContext_handleServerMessageWithConnection_message___block_invoke_55;
    handler[3] = &unk_27885C250;
    handler[4] = reply;
    handler[5] = connection;
    xpc_connection_send_message_with_reply(connection, message, queue, handler);
  }

  else
  {
    v20 = CMIOLog();
    if (v20 && os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProxyContext handleServerMessageWithConnection:message:];
    }
  }

LABEL_35:
  v21 = *MEMORY[0x277D85DE8];
}

void __71__CMIOExtensionProxyContext_handleServerMessageWithConnection_message___block_invoke_55(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x2318F1BC0](a2);
  if (v4 == MEMORY[0x277D86480])
  {
    v6 = CMIOLog();
    if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __71__CMIOExtensionProxyContext_handleServerMessageWithConnection_message___block_invoke_55_cold_2();
    }
  }

  else
  {
    if (v4 == MEMORY[0x277D86468])
    {
      applier[0] = MEMORY[0x277D85DD0];
      applier[1] = 3221225472;
      applier[2] = __71__CMIOExtensionProxyContext_handleServerMessageWithConnection_message___block_invoke_56;
      applier[3] = &unk_27885BF98;
      applier[4] = *(a1 + 32);
      xpc_dictionary_apply(a2, applier);
      goto LABEL_11;
    }

    v5 = CMIOLog();
    if (v5 && os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __71__CMIOExtensionProxyContext_handleServerMessageWithConnection_message___block_invoke_55_cold_1();
    }
  }

  xpc_dictionary_set_int64(*(a1 + 32), "errorReturn", -7);
LABEL_11:
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  xpc_release(*(a1 + 32));
}

void __80__CMIOExtensionProxyContext_initWithConnection_serverConnection_queue_delegate___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
  xpc_connection_get_pid(*(a1 + 32));
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Cu);
  v7 = *MEMORY[0x277D85DE8];
}

void __80__CMIOExtensionProxyContext_initWithConnection_serverConnection_queue_delegate___block_invoke_22_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
  xpc_connection_get_pid(*(a1 + 32));
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Cu);
  v7 = *MEMORY[0x277D85DE8];
}

void __43__CMIOExtensionProxyContext_sendClientInfo__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

void __43__CMIOExtensionProxyContext_sendClientInfo__block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
  v5 = *MEMORY[0x277D85DE8];
}

void __43__CMIOExtensionProxyContext_sendClientInfo__block_invoke_cold_3()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)receivedSample:message:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)receivedSample:message:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleClientMessageWithConnection:message:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleClientMessageWithConnection:message:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleClientMessageWithConnection:message:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleClientMessageWithConnection:message:.cold.5()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleClientMessageWithConnection:message:.cold.6()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleClientMessageWithConnection:message:.cold.7()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleClientMessageWithConnection:message:.cold.8()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

void __71__CMIOExtensionProxyContext_handleClientMessageWithConnection_message___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

void __71__CMIOExtensionProxyContext_handleClientMessageWithConnection_message___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

void __71__CMIOExtensionProxyContext_handleClientMessageWithConnection_message___block_invoke_48_cold_1()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

void __71__CMIOExtensionProxyContext_handleClientMessageWithConnection_message___block_invoke_48_cold_2()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

void __71__CMIOExtensionProxyContext_handleClientMessageWithConnection_message___block_invoke_50_cold_1()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

void __71__CMIOExtensionProxyContext_handleClientMessageWithConnection_message___block_invoke_50_cold_2()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

void __71__CMIOExtensionProxyContext_handleClientMessageWithConnection_message___block_invoke_52_cold_1()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

void __71__CMIOExtensionProxyContext_handleClientMessageWithConnection_message___block_invoke_52_cold_2()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleServerMessageWithConnection:message:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleServerMessageWithConnection:message:.cold.3()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

void __71__CMIOExtensionProxyContext_handleServerMessageWithConnection_message___block_invoke_55_cold_1()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

void __71__CMIOExtensionProxyContext_handleServerMessageWithConnection_message___block_invoke_55_cold_2()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

@end