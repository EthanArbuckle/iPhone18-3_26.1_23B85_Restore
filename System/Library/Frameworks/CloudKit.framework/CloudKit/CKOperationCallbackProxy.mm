@interface CKOperationCallbackProxy
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (CKOperationCallbackProxy)initWithOperation:(id)a3 callbackProtocol:(id)a4;
- (CKOperationCallbackProxyEndpoint)endpoint;
- (NSXPCListener)listener;
- (void)activate;
- (void)dealloc;
- (void)forwardInvocation:(id)a3;
- (void)invalidate;
@end

@implementation CKOperationCallbackProxy

- (NSXPCListener)listener
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_listener;
  objc_sync_exit(v2);

  return v3;
}

- (void)activate
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_listener)
  {
    v5 = objc_msgSend_anonymousListener(MEMORY[0x1E696B0D8], v3, v4);
    listener = v2->_listener;
    v2->_listener = v5;

    objc_msgSend_setDelegate_(v2->_listener, v7, v2);
  }

  objc_sync_exit(v2);

  v12 = objc_msgSend_listener(v2, v8, v9);
  objc_msgSend_activate(v12, v10, v11);
}

- (CKOperationCallbackProxyEndpoint)endpoint
{
  v4 = objc_msgSend_listener(self, a2, v2);
  if (v4)
  {
    v5 = [CKOperationCallbackProxyEndpoint alloc];
    v8 = objc_msgSend_cls(self, v6, v7);
    v11 = objc_msgSend_callbackProtocol(self, v9, v10);
    v14 = objc_msgSend_endpoint(v4, v12, v13);
    v16 = objc_msgSend_initWithClass_protocol_endpoint_(v5, v15, v8, v11, v14);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)invalidate
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_listener(self, a2, v2);
  objc_msgSend_invalidate(v4, v5, v6);

  v9 = objc_msgSend_connections(self, v7, v8);
  objc_sync_enter(v9);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = objc_msgSend_connections(self, v10, v11, 0);
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v20, v24, 16);
  if (v16)
  {
    v17 = *v21;
    do
    {
      v18 = 0;
      do
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(v12);
        }

        objc_msgSend_invalidate(*(*(&v20 + 1) + 8 * v18++), v14, v15);
      }

      while (v16 != v18);
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v14, &v20, v24, 16);
    }

    while (v16);
  }

  objc_sync_exit(v9);
  v19 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  objc_msgSend_invalidate(self, a2, v2);
  v4.receiver = self;
  v4.super_class = CKOperationCallbackProxy;
  [(CKOperationCallbackProxy *)&v4 dealloc];
}

- (CKOperationCallbackProxy)initWithOperation:(id)a3 callbackProtocol:(id)a4
{
  v6 = a3;
  v15.receiver = self;
  v15.super_class = CKOperationCallbackProxy;
  v7 = [(CKWeakObjectCallbackProxy *)&v15 initWithWeakObject:v6 callbackProtocol:a4];
  if (v7)
  {
    v8 = objc_opt_class();
    cls = v7->_cls;
    v7->_cls = v8;

    v12 = objc_msgSend_weakObjectsHashTable(MEMORY[0x1E696AC70], v10, v11);
    connections = v7->_connections;
    v7->_connections = v12;
  }

  return v7;
}

- (void)forwardInvocation:(id)a3
{
  v4 = a3;
  objc_msgSend_retainArguments(v4, v5, v6);
  v9 = objc_msgSend_callbackProtocol(self, v7, v8);
  v12 = objc_msgSend_selector(v4, v10, v11);
  name = protocol_getMethodDescription(v9, v12, 1, 1).name;

  if (name)
  {
    v16 = objc_msgSend_weakObject(self, v14, v15);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_1885AC530;
    aBlock[3] = &unk_1E70BE820;
    v17 = v16;
    v66 = v17;
    v18 = v4;
    v67 = v18;
    v68 = self;
    v19 = _Block_copy(aBlock);
    v61[0] = MEMORY[0x1E69E9820];
    v61[1] = 3221225472;
    v61[2] = sub_1885AC75C;
    v61[3] = &unk_1E70BC338;
    v20 = v17;
    v62 = v20;
    v21 = v19;
    v64 = v21;
    v22 = v18;
    v63 = v22;
    v25 = _Block_copy(v61);
    if (v20)
    {
      v59 = v21;
      v26 = objc_msgSend_methodSignature(v22, v23, v24);
      if (objc_msgSend_numberOfArguments(v26, v27, v28) >= 3)
      {
        v31 = 2;
        do
        {
          v32 = v26;
          if (*objc_msgSend_getArgumentTypeAtIndex_(v32, v33, v31) == 64)
          {
            v60 = 0;
            objc_msgSend_getArgument_atIndex_(v22, v34, &v60, v31);
            v36 = v60;
            v39 = objc_msgSend_configuration(v20, v37, v38);
            v42 = objc_msgSend_container(v39, v40, v41);
            v45 = objc_msgSend_containerID(v42, v43, v44);
            objc_msgSend_CKAssignToContainerWithID_(v36, v46, v45);
          }

          ++v31;
        }

        while (v31 < objc_msgSend_numberOfArguments(v26, v34, v35));
      }

      if (__sTestOverridesAvailable[0])
      {
        v47 = objc_msgSend_unitTestOverrides(v20, v29, v30);
        v49 = objc_msgSend_objectForKeyedSubscript_(v47, v48, @"CancelOnProgressCallback");
        v52 = objc_msgSend_BOOLValue(v49, v50, v51);

        if (v52)
        {
          objc_msgSend_cancel(v20, v29, v30);
        }
      }

      if (__ROR8__(objc_msgSend_qualityOfService(v20, v29, v30) - 9, 3) >= 4uLL)
      {
        v53 = v20[59];
        v54 = dispatch_block_create_with_voucher();
      }

      else
      {
        v53 = v20[59];
        v54 = dispatch_block_create_with_voucher_and_qos_class();
      }

      v55 = v54;

      v58 = objc_msgSend_callbackQueue(v20, v56, v57);
      ck_call_or_dispatch_async_if_not_key(v58, kCKOperationCallbackQueueName, v55);

      v25 = v55;
      v21 = v59;
    }

    else
    {
      v26 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v23, @"CKInternalErrorDomain", 1000, @"Weak operation went nil before proxy could forward invocation to it");
      (*(v21 + 2))(v21, v26);
    }
  }

  else
  {
    v69.receiver = self;
    v69.super_class = CKOperationCallbackProxy;
    [(CKWeakObjectCallbackProxy *)&v69 forwardInvocation:v4];
  }
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10 = objc_msgSend_endpoint(self, v8, v9);
  v13 = objc_msgSend_interface(v10, v11, v12);
  objc_msgSend_setExportedInterface_(v7, v14, v13);

  objc_msgSend_setExportedObject_(v7, v15, self);
  v18 = objc_msgSend_weakObject(self, v16, v17);
  v21 = v18;
  if (v18)
  {
    v22 = objc_msgSend_callbackQueue(v18, v19, v20);
    objc_msgSend__setQueue_(v7, v23, v22);
  }

  v24 = objc_msgSend_connections(self, v19, v20);
  objc_sync_enter(v24);
  v27 = objc_msgSend_connections(self, v25, v26);
  objc_msgSend_addObject_(v27, v28, v7);

  objc_sync_exit(v24);
  objc_msgSend_resume(v7, v29, v30);

  return 1;
}

@end