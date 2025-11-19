@interface BAAgentSystemProxy
- (BAAgentSystemProxy)init;
- (BOOL)applicationEventPerformedWithDescriptor:(id)a3 error:(id *)a4;
- (BOOL)applicationPrepareWithDescriptor:(id)a3 error:(id *)a4;
- (BOOL)applicationShouldTriggerPeriodicWithIdentifier:(id)a3 bundleURLPath:(id)a4 error:(id *)a5;
- (BOOL)updateAppStoreProgressObservationWithConfiguration:(id)a3 error:(id *)a4;
- (uint64_t)_setupConnection;
- (void)_connectionInvalidated;
- (void)_ensureConnection;
- (void)_resendProgressConfigurationAfterInterruption;
- (void)invalidate;
- (void)receiveAppStoreProgressWithAppBundleIdentifier:(id)a3 progressInfo:(id)a4;
- (void)runDebugCommand:(id)a3;
@end

@implementation BAAgentSystemProxy

- (BAAgentSystemProxy)init
{
  v3.receiver = self;
  v3.super_class = BAAgentSystemProxy;
  result = [(BAAgentSystemProxy *)&v3 init];
  if (result)
  {
    *&result->_connectionLock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (uint64_t)_setupConnection
{
  if (result)
  {
    v1 = result;
    v2 = objc_alloc(MEMORY[0x277CCAE80]);
    v3 = [v2 initWithMachServiceName:kBackgroundAssetsAgentSPIMachServiceName options:0];
    objc_setProperty_atomic(v1, v4, v3, 16);

    result = objc_getProperty(v1, v5, 16, 1);
    if (result)
    {
      objc_initWeak(&location, v1);
      v6 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2849E2C50];
      [v6 setClass:objc_opt_class() forSelector:sel_applicationPrepareWithDescriptor_completionHandler_ argumentIndex:0 ofReply:0];
      [v6 setClass:objc_opt_class() forSelector:sel_applicationEventPerformedWithDescriptor_completionHandler_ argumentIndex:0 ofReply:0];
      v7 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2849DFEB8];
      [v7 setClass:objc_opt_class() forSelector:sel_receiveAppStoreProgressWithAppBundleIdentifier_progressInfo_ argumentIndex:1 ofReply:0];
      v9 = objc_getProperty(v1, v8, 16, 1);
      [v9 setRemoteObjectInterface:v6];

      v11 = objc_getProperty(v1, v10, 16, 1);
      [v11 setExportedInterface:v7];

      v13 = objc_getProperty(v1, v12, 16, 1);
      [v13 setExportedObject:v1];

      v15 = objc_getProperty(v1, v14, 16, 1);
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __38__BAAgentSystemProxy__setupConnection__block_invoke;
      v22[3] = &unk_278A0D040;
      objc_copyWeak(&v23, &location);
      [v15 setInterruptionHandler:v22];

      v17 = objc_getProperty(v1, v16, 16, 1);
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __38__BAAgentSystemProxy__setupConnection__block_invoke_3;
      v20[3] = &unk_278A0D040;
      objc_copyWeak(&v21, &location);
      [v17 setInvalidationHandler:v20];

      v19 = objc_getProperty(v1, v18, 16, 1);
      [v19 resume];

      objc_destroyWeak(&v21);
      objc_destroyWeak(&v23);

      objc_destroyWeak(&location);
      return 1;
    }
  }

  return result;
}

void __38__BAAgentSystemProxy__setupConnection__block_invoke(uint64_t a1)
{
  v2 = qos_class_self();
  v3 = dispatch_get_global_queue(v2, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__BAAgentSystemProxy__setupConnection__block_invoke_2;
  block[3] = &unk_278A0D040;
  objc_copyWeak(&v5, (a1 + 32));
  dispatch_async(v3, block);

  objc_destroyWeak(&v5);
}

void __38__BAAgentSystemProxy__setupConnection__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(BAAgentSystemProxy *)WeakRetained _connectionInvalidated];
}

void __61__BAAgentSystemProxy_applicationPrepareWithDescriptor_error___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v5 = BAClientLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 description];
    v8 = 136446466;
    v9 = "[BAAgentSystemProxy applicationPrepareWithDescriptor:error:]_block_invoke";
    v10 = 2114;
    v11 = v6;
    _os_log_impl(&dword_236E28000, v5, OS_LOG_TYPE_INFO, "Failed to send message %{public}s - Error: %{public}@", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __68__BAAgentSystemProxy_applicationEventPerformedWithDescriptor_error___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v5 = BAClientLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 description];
    v8 = 136446466;
    v9 = "[BAAgentSystemProxy applicationEventPerformedWithDescriptor:error:]_block_invoke";
    v10 = 2114;
    v11 = v6;
    _os_log_impl(&dword_236E28000, v5, OS_LOG_TYPE_INFO, "Failed to send message %{public}s - Error: %{public}@", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __89__BAAgentSystemProxy_applicationShouldTriggerPeriodicWithIdentifier_bundleURLPath_error___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v5 = BAClientLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 description];
    v8 = 136446466;
    v9 = "[BAAgentSystemProxy applicationShouldTriggerPeriodicWithIdentifier:bundleURLPath:error:]_block_invoke";
    v10 = 2114;
    v11 = v6;
    _os_log_impl(&dword_236E28000, v5, OS_LOG_TYPE_INFO, "Failed to send message %{public}s - Error: %{public}@", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __38__BAAgentSystemProxy_runDebugCommand___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = BAClientLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [v2 description];
    v6 = 136446466;
    v7 = "[BAAgentSystemProxy runDebugCommand:]_block_invoke";
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_236E28000, v3, OS_LOG_TYPE_INFO, "Failed to send message %{public}s - Error: %{public}@", &v6, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __79__BAAgentSystemProxy_updateAppStoreProgressObservationWithConfiguration_error___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v5 = BAClientLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 description];
    v8 = 136446466;
    v9 = "[BAAgentSystemProxy updateAppStoreProgressObservationWithConfiguration:error:]_block_invoke";
    v10 = 2114;
    v11 = v6;
    _os_log_impl(&dword_236E28000, v5, OS_LOG_TYPE_INFO, "Failed to send message %{public}s - Error: %{public}@", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __38__BAAgentSystemProxy__setupConnection__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [(BAAgentSystemProxy *)WeakRetained _resendProgressConfigurationAfterInterruption];
    WeakRetained = v2;
  }
}

- (void)_connectionInvalidated
{
  if (a1)
  {
    os_unfair_lock_lock(a1 + 3);
    objc_setProperty_atomic(a1, v2, 0, 16);
    objc_setProperty_atomic(a1, v3, 0, 24);

    os_unfair_lock_unlock(a1 + 3);
  }
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_connectionLock);
  if (self)
  {
    v4 = OUTLINED_FUNCTION_7_0(self, v3);
  }

  else
  {
    v4 = 0;
  }

  [v4 invalidate];

  os_unfair_lock_unlock(&self->_connectionLock);
}

- (void)_ensureConnection
{
  if (a1)
  {
    os_unfair_lock_lock(a1 + 2);
    if (!OUTLINED_FUNCTION_7_0(a1, v2))
    {
      [(BAAgentSystemProxy *)a1 _setupConnection];
    }

    os_unfair_lock_unlock(a1 + 2);
  }
}

- (void)_resendProgressConfigurationAfterInterruption
{
  v21 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    os_unfair_lock_lock(a1 + 3);
    v4 = OUTLINED_FUNCTION_8_0(v2, v3);
    if (v4)
    {
      v6 = OUTLINED_FUNCTION_8_0(v4, v5);
      objc_setProperty_atomic(a1, v7, 0, 24);
      os_unfair_lock_unlock(a1 + 3);
      if (v6)
      {
        v8 = [(BAAppStoreProgressConfiguration *)v6 appBundleIdentifiers];
        v9 = [v8 count];

        if (v9)
        {
          v18 = 0;
          v10 = [(os_unfair_lock_s *)a1 updateAppStoreProgressObservationWithConfiguration:v6 error:&v18];
          v11 = v18;
          if ((v10 & 1) == 0)
          {
            v12 = BAClientLogObject();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
            {
              v13 = [v11 description];
              *buf = 138543362;
              v20 = v13;
              _os_log_impl(&dword_236E28000, v12, OS_LOG_TYPE_INFO, "Error occured updating progress observer after a connection interruption - Error: %{public}@", buf, 0xCu);
            }

            os_unfair_lock_lock(a1 + 3);
            if (!OUTLINED_FUNCTION_8_0(v14, v15))
            {
              objc_setProperty_atomic(a1, v16, v6, 24);
            }

            os_unfair_lock_unlock(a1 + 3);
          }
        }
      }
    }

    else
    {
      os_unfair_lock_unlock(a1 + 3);
      v6 = 0;
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (BOOL)applicationPrepareWithDescriptor:(id)a3 error:(id *)a4
{
  v6 = a3;
  [(BAAgentSystemProxy *)self _ensureConnection];
  v34 = 0;
  v35 = &v34;
  OUTLINED_FUNCTION_2_0(COERCE_DOUBLE(0x3032000000));
  OUTLINED_FUNCTION_9_0();
  if (self)
  {
    v8 = OUTLINED_FUNCTION_7_0(self, v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_10_0();
  v29 = __61__BAAgentSystemProxy_applicationPrepareWithDescriptor_error___block_invoke;
  v30 = &unk_278A0D0B8;
  v31 = &v34;
  v11 = [v10 synchronousRemoteObjectProxyWithErrorHandler:v28];
  OUTLINED_FUNCTION_3_0();
  v24 = __61__BAAgentSystemProxy_applicationPrepareWithDescriptor_error___block_invoke_66;
  v25 = &unk_278A0CFA0;
  v26 = &v32;
  v27 = &v34;
  [v12 applicationPrepareWithDescriptor:v6 completionHandler:v23];

  if (a4)
  {
    v13 = v35[5];
    *a4 = v13;
  }

  OUTLINED_FUNCTION_5_0(v13, v14, v15, v16, v17, v18, v19, v20, v22, v23[0], v23[1], v24, v25, v26, v27, v28[0], v28[1], v29, v30, v31, v32, v33);
  OUTLINED_FUNCTION_11_0();

  return a4;
}

- (BOOL)applicationEventPerformedWithDescriptor:(id)a3 error:(id *)a4
{
  v6 = a3;
  [(BAAgentSystemProxy *)self _ensureConnection];
  v34 = 0;
  v35 = &v34;
  OUTLINED_FUNCTION_2_0(COERCE_DOUBLE(0x3032000000));
  OUTLINED_FUNCTION_9_0();
  if (self)
  {
    v8 = OUTLINED_FUNCTION_7_0(self, v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_10_0();
  v29 = __68__BAAgentSystemProxy_applicationEventPerformedWithDescriptor_error___block_invoke;
  v30 = &unk_278A0D0B8;
  v31 = &v34;
  v11 = [v10 synchronousRemoteObjectProxyWithErrorHandler:v28];
  OUTLINED_FUNCTION_3_0();
  v24 = __68__BAAgentSystemProxy_applicationEventPerformedWithDescriptor_error___block_invoke_68;
  v25 = &unk_278A0CFA0;
  v26 = &v32;
  v27 = &v34;
  [v12 applicationEventPerformedWithDescriptor:v6 completionHandler:v23];

  if (a4)
  {
    v13 = v35[5];
    *a4 = v13;
  }

  OUTLINED_FUNCTION_5_0(v13, v14, v15, v16, v17, v18, v19, v20, v22, v23[0], v23[1], v24, v25, v26, v27, v28[0], v28[1], v29, v30, v31, v32, v33);
  OUTLINED_FUNCTION_11_0();

  return a4;
}

- (BOOL)applicationShouldTriggerPeriodicWithIdentifier:(id)a3 bundleURLPath:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  [(BAAgentSystemProxy *)self _ensureConnection];
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__1;
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_9_0();
  if (self)
  {
    v11 = OUTLINED_FUNCTION_7_0(self, v10);
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_10_0();
  v24 = __89__BAAgentSystemProxy_applicationShouldTriggerPeriodicWithIdentifier_bundleURLPath_error___block_invoke;
  v25 = &unk_278A0D0B8;
  v26 = &v29;
  v14 = [v13 synchronousRemoteObjectProxyWithErrorHandler:v23];
  OUTLINED_FUNCTION_3_0();
  v19 = __89__BAAgentSystemProxy_applicationShouldTriggerPeriodicWithIdentifier_bundleURLPath_error___block_invoke_69;
  v20 = &unk_278A0CFA0;
  v21 = v27;
  v22 = &v29;
  [v15 applicationShouldTriggerPeriodicWithIdentifier:v8 bundleURLPath:v9 completionHandler:v18];

  if (a5)
  {
    *a5 = v30[5];
  }

  v16 = *(v28 + 24);
  _Block_object_dispose(v27, 8);
  OUTLINED_FUNCTION_12_0();

  return v16;
}

- (void)runDebugCommand:(id)a3
{
  v4 = a3;
  [(BAAgentSystemProxy *)self _ensureConnection];
  if (self)
  {
    v6 = OUTLINED_FUNCTION_7_0(self, v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = [v6 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_3];
  [v7 runDebugCommand:v4 reply:&__block_literal_global_72];
}

- (BOOL)updateAppStoreProgressObservationWithConfiguration:(id)a3 error:(id *)a4
{
  v6 = a3;
  [(BAAgentSystemProxy *)self _ensureConnection];
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__1;
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_9_0();
  os_unfair_lock_lock(&self->_progressObserverLock);
  if (self)
  {
    objc_setProperty_atomic(self, v7, v6, 24);
    os_unfair_lock_unlock(&self->_progressObserverLock);
    v9 = OUTLINED_FUNCTION_7_0(self, v8);
  }

  else
  {
    os_unfair_lock_unlock(0xC);
    v9 = 0;
  }

  v10 = v9;
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_10_0();
  v30 = __79__BAAgentSystemProxy_updateAppStoreProgressObservationWithConfiguration_error___block_invoke;
  v31 = &unk_278A0D0B8;
  v32 = &v35;
  v12 = [v11 synchronousRemoteObjectProxyWithErrorHandler:v29];
  OUTLINED_FUNCTION_3_0();
  v25 = __79__BAAgentSystemProxy_updateAppStoreProgressObservationWithConfiguration_error___block_invoke_73;
  v26 = &unk_278A0CFA0;
  v27 = &v33;
  v28 = &v35;
  [v13 updateAppStoreProgressObservationWithConfiguration:v6 completionHandler:v24];

  if (a4)
  {
    v14 = v36[5];
    *a4 = v14;
  }

  OUTLINED_FUNCTION_5_0(v14, v15, v16, v17, v18, v19, v20, v21, v23, v24[0], v24[1], v25, v26, v27, v28, v29[0], v29[1], v30, v31, v32, v33, v34);
  OUTLINED_FUNCTION_12_0();

  return a4;
}

- (void)receiveAppStoreProgressWithAppBundleIdentifier:(id)a3 progressInfo:(id)a4
{
  v6 = a4;
  v10 = a3;
  os_unfair_lock_lock(&self->_progressObserverLock);
  if (self)
  {
    Property = objc_getProperty(self, v7, 24, 1);
  }

  else
  {
    Property = 0;
  }

  v9 = Property;
  os_unfair_lock_unlock(&self->_progressObserverLock);
  [(BAAppStoreProgressConfiguration *)v9 invokeHandlerWithAppBundleIdentifier:v10 progressInfo:v6];
}

@end