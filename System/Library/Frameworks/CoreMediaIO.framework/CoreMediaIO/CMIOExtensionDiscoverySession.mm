@interface CMIOExtensionDiscoverySession
+ (id)sharedInstance;
- (CMIOExtensionDiscoverySession)initWithQueue:(id)queue;
- (NSArray)devices;
- (void)_invalidateProvider:(id)provider;
- (void)completeRegistration:(id)registration;
- (void)dealloc;
- (void)provider:(id)provider availableDevicesChanged:(id)changed;
- (void)provider:(id)provider didFailWithError:(id)error;
- (void)provider:(id)provider propertiesChanged:(id)changed;
- (void)providerHasBeenInvalidated:(id)invalidated;
- (void)setUpRegistration;
@end

@implementation CMIOExtensionDiscoverySession

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[CMIOExtensionDiscoverySession sharedInstance];
  }

  return _discoverySession;
}

uint64_t __47__CMIOExtensionDiscoverySession_sharedInstance__block_invoke()
{
  v0 = [CMIOExtensionDiscoverySession alloc];
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  result = [(CMIOExtensionDiscoverySession *)v0 initWithQueue:dispatch_queue_create("com.apple.coremediaio.extension.discoverysession", v1)];
  _discoverySession = result;
  return result;
}

- (void)dealloc
{
  dispatch_release(self->_queue);

  v3.receiver = self;
  v3.super_class = CMIOExtensionDiscoverySession;
  [(CMIOExtensionDiscoverySession *)&v3 dealloc];
}

uint64_t __61__CMIOExtensionDiscoverySession_postDeviceChangeNotification__block_invoke()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];

  return [v0 postNotificationName:@"CMIOExtensionDevicesChangedNotification" object:0];
}

- (NSArray)devices
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__1;
  v11 = __Block_byref_object_dispose__1;
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__CMIOExtensionDiscoverySession_devices__block_invoke;
  v6[3] = &unk_27885C4E8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_async_and_wait(queue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __40__CMIOExtensionDiscoverySession_devices__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [*(*(a1 + 32) + 24) allValues];
  result = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if ([objc_msgSend(v7 "devices")])
        {
          [*(*(*(a1 + 40) + 8) + 40) addObjectsFromArray:{objc_msgSend(v7, "devices")}];
        }

        ++v6;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      v4 = result;
    }

    while (result);
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)provider:(id)provider didFailWithError:(id)error
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = CMIOLog();
  if (v7)
  {
    v8 = v7;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316418;
      v13 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionDiscoverySession.m");
      v14 = 1024;
      v15 = 157;
      v16 = 2080;
      v17 = "[CMIOExtensionDiscoverySession provider:didFailWithError:]";
      v18 = 2080;
      v19 = "[CMIOExtensionDiscoverySession provider:didFailWithError:]";
      v20 = 2112;
      providerCopy = provider;
      v22 = 2112;
      errorCopy = error;
      _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s  %s %@ %@", buf, 0x3Au);
    }
  }

  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __59__CMIOExtensionDiscoverySession_provider_didFailWithError___block_invoke;
  v11[3] = &unk_27885B938;
  v11[4] = self;
  v11[5] = provider;
  dispatch_async(queue, v11);
  v10 = *MEMORY[0x277D85DE8];
}

- (void)providerHasBeenInvalidated:(id)invalidated
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = CMIOLog();
  if (v5)
  {
    v6 = v5;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v11 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionDiscoverySession.m");
      v12 = 1024;
      v13 = 165;
      v14 = 2080;
      v15 = "[CMIOExtensionDiscoverySession providerHasBeenInvalidated:]";
      v16 = 2080;
      v17 = "[CMIOExtensionDiscoverySession providerHasBeenInvalidated:]";
      v18 = 2112;
      invalidatedCopy = invalidated;
      _os_log_impl(&dword_22EA08000, v6, OS_LOG_TYPE_DEFAULT, "%s:%d:%s  %s %@", buf, 0x30u);
    }
  }

  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__CMIOExtensionDiscoverySession_providerHasBeenInvalidated___block_invoke;
  v9[3] = &unk_27885B938;
  v9[4] = self;
  v9[5] = invalidated;
  dispatch_async(queue, v9);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)provider:(id)provider propertiesChanged:(id)changed
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = CMIOLog();
  if (v5)
  {
    v6 = v5;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136316162;
      v9 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionDiscoverySession.m");
      v10 = 1024;
      v11 = 173;
      v12 = 2080;
      v13 = "[CMIOExtensionDiscoverySession provider:propertiesChanged:]";
      v14 = 2080;
      v15 = "[CMIOExtensionDiscoverySession provider:propertiesChanged:]";
      v16 = 2112;
      changedCopy = changed;
      _os_log_impl(&dword_22EA08000, v6, OS_LOG_TYPE_DEFAULT, "%s:%d:%s  %s %@", &v8, 0x30u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)provider:(id)provider availableDevicesChanged:(id)changed
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = CMIOLog();
  if (v6)
  {
    v7 = v6;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136316162;
      v10 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionDiscoverySession.m");
      v11 = 1024;
      v12 = 179;
      v13 = 2080;
      v14 = "[CMIOExtensionDiscoverySession provider:availableDevicesChanged:]";
      v15 = 2080;
      v16 = "[CMIOExtensionDiscoverySession provider:availableDevicesChanged:]";
      v17 = 2112;
      changedCopy = changed;
      _os_log_impl(&dword_22EA08000, v7, OS_LOG_TYPE_DEFAULT, "%s:%d:%s  %s %@", &v9, 0x30u);
    }
  }

  [(CMIOExtensionDiscoverySession *)self postDeviceChangeNotification];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)completeRegistration:(id)registration
{
  v22 = *MEMORY[0x277D85DE8];
  bundleID = [registration bundleID];
  [registration token];
  registrationCopy = registration;
  v7 = bundleID;
  v8 = CMIOLog();
  if (v8)
  {
    v9 = v8;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v15 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionDiscoverySession.m");
      v16 = 1024;
      v17 = 205;
      v18 = 2080;
      v19 = "[CMIOExtensionDiscoverySession completeRegistration:]";
      v20 = 2114;
      v21 = bundleID;
      _os_log_impl(&dword_22EA08000, v9, OS_LOG_TYPE_DEFAULT, "%s:%d:%s Register for bundleID %{public}@", buf, 0x26u);
    }
  }

  v10 = xpc_dictionary_create(0, 0, 0);
  extensionEventPublisher = self->_extensionEventPublisher;
  queue = self->_queue;
  xpc_event_publisher_fire_with_reply();
  xpc_release(v10);
  v13 = *MEMORY[0x277D85DE8];
}

void __54__CMIOExtensionDiscoverySession_completeRegistration___block_invoke(uint64_t a1, xpc_object_t xdict)
{
  v44 = *MEMORY[0x277D85DE8];
  value = xpc_dictionary_get_value(xdict, "endpoint");
  uuid = xpc_dictionary_get_uuid(xdict, "mach-o-uuid");
  v6 = CMIOLog();
  if (v6)
  {
    v7 = v6;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionDiscoverySession.m");
      v9 = *(a1 + 32);
      *buf = 136316418;
      v34 = v8;
      v35 = 1024;
      v36 = 211;
      v37 = 2080;
      v38 = "[CMIOExtensionDiscoverySession completeRegistration:]_block_invoke";
      v39 = 2114;
      *v40 = v9;
      *&v40[8] = 2048;
      v41 = value;
      v42 = 2048;
      v43 = uuid;
      _os_log_impl(&dword_22EA08000, v7, OS_LOG_TYPE_DEFAULT, "%s:%d:%s Receive registration for bundleID %{public}@ endpoint %p uuidBytes %p", buf, 0x3Au);
    }
  }

  if (value && MEMORY[0x2318F1BC0](value) == MEMORY[0x277D86478])
  {
    v23 = xpc_connection_create_from_endpoint(value);
    xpc_connection_set_target_queue(v23, *(*(a1 + 48) + 16));
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __54__CMIOExtensionDiscoverySession_completeRegistration___block_invoke_52;
    handler[3] = &unk_27885C538;
    handler[4] = *(a1 + 32);
    handler[5] = v23;
    v30 = vextq_s8(*(a1 + 40), *(a1 + 40), 8uLL);
    xpc_connection_set_event_handler(v23, handler);
    xpc_connection_resume(v23);
    v24 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v24, "MessageType", 0x19uLL);
    v25 = *(a1 + 48);
    v26 = *(v25 + 16);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __54__CMIOExtensionDiscoverySession_completeRegistration___block_invoke_2;
    v28[3] = &unk_27885C538;
    v28[4] = *(a1 + 32);
    v28[5] = v23;
    v28[6] = value;
    v28[7] = v25;
    xpc_connection_send_message_with_reply(v23, v24, v26, v28);
    xpc_release(v24);
    xpc_release(v23);
  }

  else if ([*(a1 + 40) isRetryAllowed])
  {
    v10 = *(a1 + 40);
    v11 = [v10 numOfRetryAttempts] + 1;
    [v10 setNumOfRetryAttempts:v11];
    v12 = CMIOLog();
    if (v12)
    {
      v13 = v12;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionDiscoverySession.m");
        *buf = 136316162;
        v34 = v14;
        v36 = 215;
        v37 = 2080;
        v35 = 1024;
        v38 = "[CMIOExtensionDiscoverySession completeRegistration:]_block_invoke";
        v39 = 1024;
        *v40 = v11;
        *&v40[4] = 1024;
        *&v40[6] = v11;
        _os_log_impl(&dword_22EA08000, v13, OS_LOG_TYPE_DEFAULT, "%s:%d:%s Valid endpoint not presented... retry attempt %d, will try again in %d seconds", buf, 0x28u);
      }
    }

    v15 = dispatch_time(0, 1000000000 * v11);
    v16 = *(a1 + 48);
    v17 = *(v16 + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__CMIOExtensionDiscoverySession_completeRegistration___block_invoke_51;
    block[3] = &unk_27885C510;
    v32 = v11;
    v18 = *(a1 + 40);
    block[4] = v16;
    block[5] = v18;
    dispatch_after(v15, v17, block);
  }

  else
  {
    v19 = CMIOLog();
    if (v19)
    {
      v20 = v19;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v21 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionDiscoverySession.m");
        v22 = [*(a1 + 40) numOfRetryAttempts];
        *buf = 136315906;
        v34 = v21;
        v35 = 1024;
        v36 = 222;
        v37 = 2080;
        v38 = "[CMIOExtensionDiscoverySession completeRegistration:]_block_invoke";
        v39 = 1024;
        *v40 = v22;
        _os_log_impl(&dword_22EA08000, v20, OS_LOG_TYPE_DEFAULT, "%s:%d:%s Got invalid endpoint and the registration doesn't allow retry, retried attempts: %d", buf, 0x22u);
      }
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

uint64_t __54__CMIOExtensionDiscoverySession_completeRegistration___block_invoke_51(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = CMIOLog();
  if (v2)
  {
    v3 = v2;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionDiscoverySession.m");
      v5 = *(a1 + 48);
      v8 = 136315906;
      v9 = v4;
      v10 = 1024;
      v11 = 217;
      v12 = 2080;
      v13 = "[CMIOExtensionDiscoverySession completeRegistration:]_block_invoke";
      v14 = 1024;
      v15 = v5;
      _os_log_impl(&dword_22EA08000, v3, OS_LOG_TYPE_DEFAULT, "%s:%d:%s retry attempt %d now trying to complete the registration", &v8, 0x22u);
    }
  }

  result = [*(a1 + 32) completeRegistration:*(a1 + 40)];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void __54__CMIOExtensionDiscoverySession_completeRegistration___block_invoke_52(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x2318F1BC0](a2) == MEMORY[0x277D86480])
  {
    v4 = CMIOLog();
    if (v4 && os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __54__CMIOExtensionDiscoverySession_completeRegistration___block_invoke_52_cold_1(a1);
    }

    if (a2 == MEMORY[0x277D863F8])
    {
      xpc_connection_cancel(*(a1 + 40));
      [*(a1 + 48) _invalidateProvider:{objc_msgSend(*(*(a1 + 48) + 24), "objectForKeyedSubscript:", *(a1 + 32))}];
    }

    else if (a2 == MEMORY[0x277D863F0])
    {
      [*(a1 + 48) _invalidateProvider:{objc_msgSend(*(*(a1 + 48) + 24), "objectForKeyedSubscript:", *(a1 + 32))}];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v5 = *(a1 + 48);
      v6 = *(*(a1 + 48) + 16);
      v7[2] = __54__CMIOExtensionDiscoverySession_completeRegistration___block_invoke_53;
      v7[3] = &unk_27885B938;
      v8 = v5;
      dispatch_async(v6, v7);
    }
  }
}

void __54__CMIOExtensionDiscoverySession_completeRegistration___block_invoke_2(void *a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x2318F1BC0](a2);
  if (v3 == MEMORY[0x277D86480])
  {
    v11 = CMIOLog();
    if (v11 && os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __54__CMIOExtensionDiscoverySession_completeRegistration___block_invoke_2_cold_1(a1);
    }
  }

  else if (v3 == MEMORY[0x277D86468])
  {
    v4 = CMIOLog();
    if (v4)
    {
      v5 = v4;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v6 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionDiscoverySession.m");
        v7 = a1[4];
        v8 = a1[5];
        v13 = 136316162;
        v14 = v6;
        v15 = 1024;
        v16 = 259;
        v17 = 2080;
        v18 = "[CMIOExtensionDiscoverySession completeRegistration:]_block_invoke";
        v19 = 2114;
        v20 = v7;
        v21 = 2048;
        v22 = v8;
        _os_log_impl(&dword_22EA08000, v5, OS_LOG_TYPE_DEFAULT, "%s:%d:%s Complete Registration for %{public}@ (%p) ", &v13, 0x30u);
      }
    }

    v9 = [[CMIOExtensionSessionProvider alloc] initWithEndpoint:a1[6] delegate:a1[7]];
    if (v9)
    {
      v10 = v9;
      [(CMIOExtensionSessionProvider *)v9 setBundleID:a1[4]];
      [*(a1[7] + 24) setObject:v10 forKeyedSubscript:a1[4]];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)setUpRegistration
{
  extensionEventPublisher = self->_extensionEventPublisher;
  xpc_event_publisher_set_handler();
  v4 = self->_extensionEventPublisher;
  xpc_event_publisher_set_error_handler();
  v5 = self->_extensionEventPublisher;
  xpc_event_publisher_activate();
}

void __50__CMIOExtensionDiscoverySession_setUpRegistration__block_invoke(uint64_t a1, int a2, uint64_t a3, xpc_object_t xdict)
{
  if (!a2)
  {
    string = xpc_dictionary_get_string(xdict, "CMIOExtensionBundleIdentifier");
    if (string && *string)
    {
      v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:string encoding:4];
      v9 = [[CMIOExtensionDiscoverySessionRegistration alloc] initWithBundleID:v7 token:a3];
      [*(a1 + 32) completeRegistration:v9];
    }

    else
    {
      v8 = CMIOLog();
      if (v8 && os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __50__CMIOExtensionDiscoverySession_setUpRegistration__block_invoke_cold_1();
      }
    }
  }
}

void __50__CMIOExtensionDiscoverySession_setUpRegistration__block_invoke_61()
{
  v0 = CMIOLog();
  if (v0)
  {
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      __50__CMIOExtensionDiscoverySession_setUpRegistration__block_invoke_61_cold_1();
    }
  }
}

- (CMIOExtensionDiscoverySession)initWithQueue:(id)queue
{
  v9.receiver = self;
  v9.super_class = CMIOExtensionDiscoverySession;
  v4 = [(CMIOExtensionDiscoverySession *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_queue = queue;
    v4->_providersByBundleIdentifier = objc_alloc_init(MEMORY[0x277CBEB38]);
    v5->_extensionEventPublisher = xpc_event_publisher_create();
    queue = v5->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__CMIOExtensionDiscoverySession_initWithQueue___block_invoke;
    block[3] = &unk_27885B8E8;
    block[4] = v5;
    dispatch_async(queue, block);
  }

  return v5;
}

- (void)_invalidateProvider:(id)provider
{
  if (provider)
  {
    bundleID = [provider bundleID];
    if (bundleID)
    {
      v5 = bundleID;
      dispatch_assert_queue_V2(self->_queue);
      [(NSMutableDictionary *)self->_providersByBundleIdentifier removeObjectForKey:v5];

      [(CMIOExtensionDiscoverySession *)self postDeviceChangeNotification];
    }
  }
}

void __54__CMIOExtensionDiscoverySession_completeRegistration___block_invoke_52_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionDiscoverySession.m");
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x3Au);
  v9 = *MEMORY[0x277D85DE8];
}

void __54__CMIOExtensionDiscoverySession_completeRegistration___block_invoke_2_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionDiscoverySession.m");
  v2 = *(a1 + 32);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x30u);
  v8 = *MEMORY[0x277D85DE8];
}

void __50__CMIOExtensionDiscoverySession_setUpRegistration__block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionDiscoverySession.m");
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __50__CMIOExtensionDiscoverySession_setUpRegistration__block_invoke_61_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionDiscoverySession.m");
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
  v5 = *MEMORY[0x277D85DE8];
}

@end