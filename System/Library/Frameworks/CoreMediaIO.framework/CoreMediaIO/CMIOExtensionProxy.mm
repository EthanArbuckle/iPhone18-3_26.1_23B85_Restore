@interface CMIOExtensionProxy
- (CMIOExtensionProxy)initWithEndpoint:(id)endpoint extensionPID:(int)d delegate:(id)delegate;
- (OS_xpc_object)endpoint;
- (OS_xpc_object)proxyEndpoint;
- (void)addConnection:(id)connection;
- (void)dealloc;
- (void)invalidate;
- (void)proxyContextHasBeenInvalidated:(id)invalidated;
- (void)proxyStreamHasStarted;
- (void)proxyStreamsHaveStopped:(int)stopped;
@end

@implementation CMIOExtensionProxy

- (CMIOExtensionProxy)initWithEndpoint:(id)endpoint extensionPID:(int)d delegate:(id)delegate
{
  v34 = *MEMORY[0x277D85DE8];
  if (endpoint)
  {
    v25.receiver = self;
    v25.super_class = CMIOExtensionProxy;
    v8 = [(CMIOExtensionProxy *)&v25 init];
    if (v8)
    {
      v9 = CMIOLog();
      v10 = v9;
      if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
        v12 = v8[12];
        *buf = 136315907;
        v27 = v11;
        v28 = 1024;
        v29 = 769;
        v30 = 2080;
        v31 = "[CMIOExtensionProxy initWithEndpoint:extensionPID:delegate:]";
        v32 = 1025;
        v33 = v12;
        _os_log_impl(&dword_22EA08000, v10, OS_LOG_TYPE_DEFAULT, "%s:%d:%s creating proxy for pid [%{private}d]", buf, 0x22u);
      }

      objc_initWeak(buf, v8);
      v8[2] = 0;
      *(v8 + 3) = endpoint;
      v13 = xpc_connection_create(0, 0);
      *(v8 + 2) = v13;
      *(v8 + 4) = xpc_endpoint_create(v13);
      *(v8 + 5) = delegate;
      v8[12] = d;
      v8[13] = 0;
      *(v8 + 7) = objc_alloc_init(MEMORY[0x277CBEB18]);
      v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      global_queue = dispatch_get_global_queue(21, 0);
      v16 = dispatch_queue_create_with_target_V2("com.apple.cmio.CMIOExtensionProxyQueue", v14, global_queue);
      *(v8 + 8) = v16;
      v17 = dispatch_source_create(MEMORY[0x277D85D38], 0, 1uLL, v16);
      *(v8 + 9) = v17;
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __61__CMIOExtensionProxy_initWithEndpoint_extensionPID_delegate___block_invoke;
      handler[3] = &unk_27885C2A0;
      objc_copyWeak(&v24, buf);
      handler[4] = v8;
      dispatch_source_set_event_handler(v17, handler);
      dispatch_source_set_timer(*(v8 + 9), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
      dispatch_resume(*(v8 + 9));
      *(v8 + 80) = 0;
      [*(v8 + 5) updateStreamingState:0 forProxyFrontedPID:v8[12]];
      v18 = *(v8 + 2);
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __61__CMIOExtensionProxy_initWithEndpoint_extensionPID_delegate___block_invoke_122;
      v21[3] = &unk_27885C198;
      objc_copyWeak(&v22, buf);
      xpc_connection_set_event_handler(v18, v21);
      xpc_connection_activate(*(v8 + 2));
      objc_destroyWeak(&v22);
      objc_destroyWeak(&v24);
      objc_destroyWeak(buf);
    }
  }

  else
  {

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Invalid argument"];
    v8 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v8;
}

void __61__CMIOExtensionProxy_initWithEndpoint_extensionPID_delegate___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v4 = *(WeakRetained + 80);
    v5 = CMIOLog();
    v6 = v5;
    if (v4 == 1)
    {
      if (v5 && os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315650;
        v9 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
        v10 = 1024;
        v11 = 786;
        v12 = 2080;
        v13 = "[CMIOExtensionProxy initWithEndpoint:extensionPID:delegate:]_block_invoke";
        _os_log_impl(&dword_22EA08000, v6, OS_LOG_TYPE_DEFAULT, "%s:%d:%s update stream state timer fired while active, updating streaming state to NO", &v8, 0x1Cu);
      }

      *(v3 + 80) = 0;
      [*(*(a1 + 32) + 40) updateStreamingState:0 forProxyFrontedPID:*(*(a1 + 32) + 48)];
      dispatch_source_set_timer(v3[9], 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    }

    else if (v5 && os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315650;
      v9 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
      v10 = 1024;
      v11 = 792;
      v12 = 2080;
      v13 = "[CMIOExtensionProxy initWithEndpoint:extensionPID:delegate:]_block_invoke";
      _os_log_impl(&dword_22EA08000, v6, OS_LOG_TYPE_DEFAULT, "%s:%d:%s update stream state timer fired while not active, not updating streaming state", &v8, 0x1Cu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __61__CMIOExtensionProxy_initWithEndpoint_extensionPID_delegate___block_invoke_122(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (a2)
  {
    v5 = WeakRetained;
    v4 = MEMORY[0x2318F1BC0](a2) == MEMORY[0x277D86450];
    WeakRetained = v5;
    if (v4)
    {
      [v5 addConnection:a2];
      WeakRetained = v5;
    }
  }
}

- (void)dealloc
{
  v19 = *MEMORY[0x277D85DE8];
  if (CMIOModuleLogLevel_once_0 != -1)
  {
    [CMIOExtensionProxyContext sendClientInfo];
  }

  if (CMIOModuleLogLevel_cmioLevel_0 >= 1)
  {
    v3 = CMIOLog();
    if (v3)
    {
      v4 = v3;
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315907;
        v12 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
        v13 = 1024;
        v14 = 816;
        v15 = 2080;
        v16 = "[CMIOExtensionProxy dealloc]";
        v17 = 2113;
        selfCopy = self;
        _os_log_impl(&dword_22EA08000, v4, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{private}@", buf, 0x26u);
      }
    }
  }

  v5 = CMIOLog();
  if (v5)
  {
    v6 = v5;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
      extensionPID = self->_extensionPID;
      *buf = 136315907;
      v12 = v7;
      v13 = 1024;
      v14 = 818;
      v15 = 2080;
      v16 = "[CMIOExtensionProxy dealloc]";
      v17 = 1025;
      LODWORD(selfCopy) = extensionPID;
      _os_log_impl(&dword_22EA08000, v6, OS_LOG_TYPE_DEFAULT, "%s:%d:%s [%{private}d] cancelling update stream state timer", buf, 0x22u);
    }
  }

  dispatch_source_cancel(self->_updateStreamStateTimer);

  v10.receiver = self;
  v10.super_class = CMIOExtensionProxy;
  [(CMIOExtensionProxy *)&v10 dealloc];
  v9 = *MEMORY[0x277D85DE8];
}

- (OS_xpc_object)endpoint
{
  v2 = self->_endpoint;

  return v2;
}

- (OS_xpc_object)proxyEndpoint
{
  v2 = self->_proxyEndpoint;

  return v2;
}

- (void)invalidate
{
  v15 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  if (self->_invalidated)
  {
    v3 = *MEMORY[0x277D85DE8];

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    self->_invalidated = 1;
    v4 = [(NSMutableArray *)self->_contexts copy];
    [(NSMutableArray *)self->_contexts removeAllObjects];
    os_unfair_lock_unlock(&self->_lock);
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v10 + 1) + 8 * i) invalidate];
        }

        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }

    xpc_connection_cancel(self->_listener);
    v9 = *MEMORY[0x277D85DE8];
  }
}

- (void)addConnection:(id)connection
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = xpc_connection_create_from_endpoint(self->_endpoint);
  v6 = [[CMIOExtensionProxyContext alloc] initWithConnection:connection serverConnection:v5 queue:0 delegate:self];
  xpc_release(v5);
  if (v6)
  {
    os_unfair_lock_lock(&self->_lock);
    [(NSMutableArray *)self->_contexts addObject:v6];
    os_unfair_lock_unlock(&self->_lock);
    v7 = CMIOLog();
    if (v7)
    {
      v8 = v7;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v11 = 136316163;
        v12 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
        v13 = 1024;
        v14 = 882;
        v15 = 2080;
        v16 = "[CMIOExtensionProxy addConnection:]";
        v17 = 1025;
        pid = xpc_connection_get_pid(connection);
        v19 = 2112;
        v20 = v6;
        _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_INFO, "%s:%d:%s New proxy [%{private}d] %@", &v11, 0x2Cu);
      }
    }
  }

  else
  {
    v9 = CMIOLog();
    if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProxy addConnection:];
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)proxyStreamHasStarted
{
  v21 = *MEMORY[0x277D85DE8];
  updateStreamStateQueue = self->_updateStreamStateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__CMIOExtensionProxy_proxyStreamHasStarted__block_invoke;
  block[3] = &unk_27885B8E8;
  block[4] = self;
  dispatch_sync(updateStreamStateQueue, block);
  v4 = CMIOLog();
  if (v4)
  {
    v5 = v4;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
      extensionPID = self->_extensionPID;
      activeStreams = self->_activeStreams;
      *buf = 136316163;
      v12 = v6;
      v13 = 1024;
      v14 = 897;
      v15 = 2080;
      v16 = "[CMIOExtensionProxy proxyStreamHasStarted]";
      v17 = 1025;
      v18 = extensionPID;
      v19 = 1024;
      v20 = activeStreams;
      _os_log_impl(&dword_22EA08000, v5, OS_LOG_TYPE_DEFAULT, "%s:%d:%s [%{private}d] activeStreams %d", buf, 0x28u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __43__CMIOExtensionProxy_proxyStreamHasStarted__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  ++*(*(a1 + 32) + 52);
  v1 = *(a1 + 32);
  if (*(v1 + 80) == 1)
  {
    v3 = CMIOLog();
    if (v3)
    {
      v4 = v3;
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v5 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
        v6 = *(*(a1 + 32) + 48);
        v9 = 136315907;
        v10 = v5;
        v11 = 1024;
        v12 = 891;
        v13 = 2080;
        v14 = "[CMIOExtensionProxy proxyStreamHasStarted]_block_invoke";
        v15 = 1025;
        v16 = v6;
        _os_log_impl(&dword_22EA08000, v4, OS_LOG_TYPE_DEFAULT, "%s:%d:%s [%{private}d] canceling update stream state timer", &v9, 0x22u);
      }
    }

    *(*(a1 + 32) + 80) = 0;
    dispatch_source_set_timer(*(*(a1 + 32) + 72), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    v1 = *(a1 + 32);
  }

  result = [*(v1 + 40) updateStreamingState:1 forProxyFrontedPID:*(v1 + 48)];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)proxyStreamsHaveStopped:(int)stopped
{
  v26 = *MEMORY[0x277D85DE8];
  if (stopped >= 1)
  {
    v5 = CMIOLog();
    if (v5)
    {
      v6 = v5;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
        extensionPID = self->_extensionPID;
        activeStreams = self->_activeStreams;
        *buf = 136316419;
        v15 = v7;
        v16 = 1024;
        v17 = 906;
        v18 = 2080;
        v19 = "[CMIOExtensionProxy proxyStreamsHaveStopped:]";
        v20 = 1025;
        v21 = extensionPID;
        v22 = 1024;
        v23 = activeStreams;
        v24 = 1024;
        stoppedCopy = stopped;
        _os_log_impl(&dword_22EA08000, v6, OS_LOG_TYPE_DEFAULT, "%s:%d:%s [%{private}d] activeStreams %d will loose %d", buf, 0x2Eu);
      }
    }

    updateStreamStateQueue = self->_updateStreamStateQueue;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __46__CMIOExtensionProxy_proxyStreamsHaveStopped___block_invoke;
    v12[3] = &unk_27885C2C8;
    v12[4] = self;
    stoppedCopy2 = stopped;
    dispatch_sync(updateStreamStateQueue, v12);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __46__CMIOExtensionProxy_proxyStreamsHaveStopped___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(v1 + 52);
  if (v2 >= 1)
  {
    v4 = *(a1 + 40);
    v5 = __OFSUB__(v2, v4);
    v6 = v2 - v4;
    if (v6 < 0 != v5)
    {
      v6 = 0;
    }

    *(v1 + 52) = v6;
    v7 = *(a1 + 32);
    if (!*(v7 + 52) && (*(v7 + 80) & 1) == 0)
    {
      *(v7 + 80) = 1;
      v8 = CMIOLog();
      if (v8)
      {
        v9 = v8;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v10 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
          v11 = *(*(a1 + 32) + 48);
          v15 = 136315907;
          v16 = v10;
          v17 = 1024;
          v18 = 917;
          v19 = 2080;
          v20 = "[CMIOExtensionProxy proxyStreamsHaveStopped:]_block_invoke";
          v21 = 1025;
          v22 = v11;
          _os_log_impl(&dword_22EA08000, v9, OS_LOG_TYPE_DEFAULT, "%s:%d:%s [%{private}d] activating update stream state timer", &v15, 0x22u);
        }
      }

      v12 = *(*(a1 + 32) + 72);
      v13 = dispatch_time(0, 2000000000);
      dispatch_source_set_timer(v12, v13, 0xFFFFFFFFFFFFFFFFLL, 0);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)proxyContextHasBeenInvalidated:(id)invalidated
{
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableArray *)self->_contexts removeObject:invalidated];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)addConnection:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

@end