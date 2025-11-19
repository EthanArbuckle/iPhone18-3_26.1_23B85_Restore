@interface NSProgressRegistrar
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (NSProgressRegistrar)initWithQueue:(id)a3 rootFileAccessNode:(id)a4;
- (void)_getRemoteProcessWithAuditToken:(id *)a3 canReadItemAtURL:(id)a4 completionHandler:(id)a5;
- (void)addPublisher:(id)a3 forID:(id)a4 acknowledgementAppBundleIDs:(id)a5 category:(id)a6 fileURL:(id)a7 initialValues:(id)a8 completionHandler:(id)a9;
- (void)addSubscriber:(id)a3 forID:(id)a4 appBundleID:(id)a5 category:(id)a6 completionHandler:(id)a7;
- (void)addSubscriber:(id)a3 forID:(id)a4 appBundleID:(id)a5 fileURL:(id)a6 completionHandler:(id)a7;
- (void)dealloc;
- (void)observePublisherForID:(id)a3 values:(id)a4 forKeys:(id)a5;
- (void)observePublisherUserInfoForID:(id)a3 value:(id)a4 forKey:(id)a5;
- (void)removePublisherForID:(id)a3;
- (void)removeSubscriberForID:(id)a3;
@end

@implementation NSProgressRegistrar

- (NSProgressRegistrar)initWithQueue:(id)a3 rootFileAccessNode:(id)a4
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = NSProgressRegistrar;
  v6 = [(NSProgressRegistrar *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_queue = a3;
    dispatch_retain(a3);
    v7->_publishersByID = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7->_publisherTransactionsByID = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7->_subscribersByID = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7->_subscriberTransactionsByID = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7->_pendingFileSubscriberIDs = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v7->_rootFileAccessNode = a4;
  }

  return v7;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];

  queue = self->_queue;
  if (queue)
  {
    dispatch_release(queue);
  }

  v4.receiver = self;
  v4.super_class = NSProgressRegistrar;
  [(NSProgressRegistrar *)&v4 dealloc];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v7[6] = *MEMORY[0x1E69E9840];
  [a4 setExportedObject:self];
  [a4 setExportedInterface:{+[NSProgress _registrarInterface](NSProgress, "_registrarInterface")}];
  [a4 _setQueue:self->_queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__NSProgressRegistrar_listener_shouldAcceptNewConnection___block_invoke;
  v7[3] = &unk_1E69F2080;
  v7[4] = self;
  v7[5] = a4;
  [a4 setInvalidationHandler:v7];
  [a4 resume];
  return 1;
}

uint64_t __58__NSProgressRegistrar_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 32);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __58__NSProgressRegistrar_listener_shouldAcceptNewConnection___block_invoke_2;
  v15[3] = &unk_1E69F2030;
  v15[4] = *(a1 + 40);
  v3 = [v2 keysOfEntriesPassingTest:v15];
  v4 = *(*(a1 + 32) + 16);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __58__NSProgressRegistrar_listener_shouldAcceptNewConnection___block_invoke_3;
  v14[3] = &unk_1E69F2058;
  v14[4] = *(a1 + 40);
  v5 = [v4 keysOfEntriesPassingTest:v14];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = [v3 countByEnumeratingWithState:&v22 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      v9 = 0;
      do
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v3);
        }

        [*(a1 + 32) removeSubscriberForID:*(*(&v22 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v3 countByEnumeratingWithState:&v22 objects:v21 count:16];
    }

    while (v7);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  result = [v5 countByEnumeratingWithState:&v17 objects:v16 count:16];
  if (result)
  {
    v11 = result;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v5);
        }

        [*(a1 + 32) removePublisherForID:*(*(&v17 + 1) + 8 * v13++)];
      }

      while (v11 != v13);
      result = [v5 countByEnumeratingWithState:&v17 objects:v16 count:16];
      v11 = result;
    }

    while (result);
  }

  return result;
}

- (void)addPublisher:(id)a3 forID:(id)a4 acknowledgementAppBundleIDs:(id)a5 category:(id)a6 fileURL:(id)a7 initialValues:(id)a8 completionHandler:(id)a9
{
  v35 = *MEMORY[0x1E69E9840];
  v16 = _NSProgressIPCDebugLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = _NSProgressIPCDebugLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218755;
      v28 = self;
      v29 = 2114;
      v30 = a4;
      v31 = 2113;
      v32 = a7;
      v33 = 2114;
      v34 = a6;
      _os_log_debug_impl(&dword_18075C000, v17, OS_LOG_TYPE_DEBUG, "<NSProgressSubscriberProxy %p> Add publisher ID %{public}@ for URL %{private}@ in category %{public}@", buf, 0x2Au);
    }
  }

  v18 = +[NSXPCConnection currentConnection];
  v19 = [(NSMutableDictionary *)self->_publishersByID objectForKey:a4];
  if (!v19)
  {
    v19 = [[NSProgressPublisherProxy alloc] initWithForwarder:a3 onConnection:v18 publisherID:a4 values:a8];
    [(NSMutableDictionary *)self->_publishersByID setObject:v19 forKey:a4];

    [+[NSString stringWithFormat:](NSString UTF8String:@"Pub: %@ (%d cat: %@ URL: %@)"];
    v20 = os_transaction_create();
    [(NSMutableDictionary *)self->_publisherTransactionsByID setObject:v20 forKey:a4];
  }

  v21 = [a5 mutableCopy];
  if (a6)
  {
    subscribersByID = self->_subscribersByID;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __119__NSProgressRegistrar_addPublisher_forID_acknowledgementAppBundleIDs_category_fileURL_initialValues_completionHandler___block_invoke;
    v26[3] = &unk_1E69F20A8;
    v26[4] = a6;
    v26[5] = v19;
    v26[6] = a4;
    v26[7] = a8;
    v26[8] = v21;
    [(NSMutableDictionary *)subscribersByID enumerateKeysAndObjectsUsingBlock:v26];
    [(NSProgressPublisherProxy *)v19 setCategory:a6];
  }

  if (a7)
  {
    v23 = [(NSFileAccessNode *)self->_rootFileAccessNode descendantForFileURL:a7];
    if (v23)
    {
      v24 = v23;
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __119__NSProgressRegistrar_addPublisher_forID_acknowledgementAppBundleIDs_category_fileURL_initialValues_completionHandler___block_invoke_2;
      v25[3] = &unk_1E69F20D0;
      v25[4] = v19;
      v25[5] = a4;
      v25[6] = a8;
      v25[7] = v21;
      [v23 forEachProgressSubscriberOfItemOrContainingItemPerformProcedure:v25];
      [(NSProgressPublisherProxy *)v19 setItemLocation:v24];
    }
  }

  (*(a9 + 2))(a9, v21);
}

uint64_t __119__NSProgressRegistrar_addPublisher_forID_acknowledgementAppBundleIDs_category_fileURL_initialValues_completionHandler___block_invoke(void *a1, uint64_t a2, void *a3)
{
  result = [objc_msgSend(a3 "category")];
  if (result)
  {
    [a3 addPublisher:a1[5] forID:a1[6] withValues:a1[7] isOld:0];
    result = [objc_msgSend(a3 "appBundleID")];
    if (result)
    {
      v6 = result;
      v7 = a1[8];

      return [v7 removeObject:v6];
    }
  }

  return result;
}

uint64_t __119__NSProgressRegistrar_addPublisher_forID_acknowledgementAppBundleIDs_category_fileURL_initialValues_completionHandler___block_invoke_2(void *a1, void *a2)
{
  [a2 addPublisher:a1[4] forID:a1[5] withValues:a1[6] isOld:0];
  result = [objc_msgSend(a2 "appBundleID")];
  if (result)
  {
    v5 = result;
    v6 = a1[7];

    return [v6 removeObject:v5];
  }

  return result;
}

- (void)observePublisherUserInfoForID:(id)a3 value:(id)a4 forKey:(id)a5
{
  v15[8] = *MEMORY[0x1E69E9840];
  v9 = [(NSMutableDictionary *)self->_publishersByID objectForKey:a3];
  if (v9)
  {
    v10 = v9;
    [v9 observeUserInfoValue:a4 forKey:a5];
    v11 = [v10 category];
    if (v11)
    {
      subscribersByID = self->_subscribersByID;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __66__NSProgressRegistrar_observePublisherUserInfoForID_value_forKey___block_invoke;
      v15[3] = &unk_1E69F20F8;
      v15[4] = v11;
      v15[5] = a3;
      v15[6] = a4;
      v15[7] = a5;
      [(NSMutableDictionary *)subscribersByID enumerateKeysAndObjectsUsingBlock:v15];
    }

    v13 = [v10 itemLocation];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __66__NSProgressRegistrar_observePublisherUserInfoForID_value_forKey___block_invoke_2;
    v14[3] = &unk_1E69F2120;
    v14[4] = a3;
    v14[5] = a4;
    v14[6] = a5;
    [v13 forEachProgressSubscriberOfItemOrContainingItemPerformProcedure:v14];
  }
}

uint64_t __66__NSProgressRegistrar_observePublisherUserInfoForID_value_forKey___block_invoke(void *a1, uint64_t a2, void *a3)
{
  result = [objc_msgSend(a3 "category")];
  if (result)
  {
    v6 = a1[5];
    v7 = a1[6];
    v8 = a1[7];

    return [a3 observePublisherUserInfoForID:v6 value:v7 forKey:v8];
  }

  return result;
}

- (void)observePublisherForID:(id)a3 values:(id)a4 forKeys:(id)a5
{
  v15[8] = *MEMORY[0x1E69E9840];
  v9 = [(NSMutableDictionary *)self->_publishersByID objectForKey:a3];
  if (v9)
  {
    v10 = v9;
    [v9 observeValues:a4 forKeys:a5];
    v11 = [v10 category];
    if (v11)
    {
      subscribersByID = self->_subscribersByID;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __60__NSProgressRegistrar_observePublisherForID_values_forKeys___block_invoke;
      v15[3] = &unk_1E69F20F8;
      v15[4] = v11;
      v15[5] = a3;
      v15[6] = a4;
      v15[7] = a5;
      [(NSMutableDictionary *)subscribersByID enumerateKeysAndObjectsUsingBlock:v15];
    }

    v13 = [v10 itemLocation];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __60__NSProgressRegistrar_observePublisherForID_values_forKeys___block_invoke_2;
    v14[3] = &unk_1E69F2120;
    v14[4] = a3;
    v14[5] = a4;
    v14[6] = a5;
    [v13 forEachProgressSubscriberOfItemOrContainingItemPerformProcedure:v14];
  }
}

uint64_t __60__NSProgressRegistrar_observePublisherForID_values_forKeys___block_invoke(void *a1, uint64_t a2, void *a3)
{
  result = [objc_msgSend(a3 "category")];
  if (result)
  {
    v6 = a1[5];
    v7 = a1[6];
    v8 = a1[7];

    return [a3 observePublisherForID:v6 values:v7 forKeys:v8];
  }

  return result;
}

- (void)removePublisherForID:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = _NSProgressIPCDebugLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = _NSProgressIPCDebugLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218242;
      v13 = self;
      v14 = 2114;
      v15 = a3;
      _os_log_debug_impl(&dword_18075C000, v6, OS_LOG_TYPE_DEBUG, "<NSProgressSubscriberProxy %p> Remove publisher ID %{public}@", buf, 0x16u);
    }
  }

  v7 = [(NSMutableDictionary *)self->_publishersByID objectForKey:a3];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 category];
    if (v9)
    {
      subscribersByID = self->_subscribersByID;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __44__NSProgressRegistrar_removePublisherForID___block_invoke;
      v11[3] = &unk_1E69F2148;
      v11[4] = v9;
      v11[5] = a3;
      [(NSMutableDictionary *)subscribersByID enumerateKeysAndObjectsUsingBlock:v11];
    }

    [v8 setItemLocation:0];
    [(NSMutableDictionary *)self->_publishersByID removeObjectForKey:a3];
    [(NSMutableDictionary *)self->_publisherTransactionsByID removeObjectForKey:a3];
  }
}

uint64_t __44__NSProgressRegistrar_removePublisherForID___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  result = [objc_msgSend(a3 "category")];
  if (result)
  {
    v6 = *(a1 + 40);

    return [a3 removePublisherForID:v6];
  }

  return result;
}

- (void)addSubscriber:(id)a3 forID:(id)a4 appBundleID:(id)a5 category:(id)a6 completionHandler:(id)a7
{
  v27 = *MEMORY[0x1E69E9840];
  v13 = _NSProgressIPCDebugLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v15 = _NSProgressIPCDebugLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *v24 = 134218754;
      *&v24[4] = self;
      *&v24[12] = 2048;
      *&v24[14] = a3;
      *&v24[22] = 2114;
      *&v24[24] = a4;
      v25 = 2114;
      v26 = a6;
      _os_log_debug_impl(&dword_18075C000, v15, OS_LOG_TYPE_DEBUG, "<NSProgressRegistrar %p> Add subscriber %p forID: %{public}@ in category %{public}@", v24, 0x2Au);
    }
  }

  v16 = +[NSXPCConnection currentConnection];
  v17 = v16;
  memset(v24, 0, sizeof(v24));
  if (v16)
  {
    [(NSXPCConnection *)v16 auditToken];
  }

  *buf = *v24;
  *&buf[16] = *&v24[16];
  if (sandbox_check_by_audit_token())
  {
    v18 = _NSOSLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      *&buf[4] = a6;
      *&buf[12] = 2112;
      *&buf[14] = a5;
      *&buf[22] = 2112;
      *&buf[24] = a4;
      _os_log_error_impl(&dword_18075C000, v18, OS_LOG_TYPE_ERROR, "sandboxing denied subscription to progress on category %@ (bundle id %@, %@)", buf, 0x20u);
    }
  }

  v19 = [(NSMutableDictionary *)self->_subscribersByID objectForKey:a4];
  if (!v19)
  {
    v19 = [[NSProgressSubscriberProxy alloc] initWithForwarder:a3 onConnection:v17 subscriberID:a4 appBundleID:a5];
    [(NSProgressSubscriberProxy *)v19 setCategory:a6];
    [(NSMutableDictionary *)self->_subscribersByID setObject:v19 forKey:a4];

    [+[NSString stringWithFormat:](NSString UTF8String:@"Sub: %@ (%d bundle: %@ cat: %@)"];
    v20 = os_transaction_create();
    [(NSMutableDictionary *)self->_subscriberTransactionsByID setObject:v20 forKey:a4];
  }

  publishersByID = self->_publishersByID;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __82__NSProgressRegistrar_addSubscriber_forID_appBundleID_category_completionHandler___block_invoke;
  v22[3] = &unk_1E69F2170;
  v22[4] = a6;
  v22[5] = v19;
  [(NSMutableDictionary *)publishersByID enumerateKeysAndObjectsUsingBlock:v22];
  (*(a7 + 2))(a7);
}

uint64_t __82__NSProgressRegistrar_addSubscriber_forID_appBundleID_category_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  result = [objc_msgSend(a3 "category")];
  if (result)
  {
    v6 = *(a1 + 40);
    v7 = [a3 publisherID];
    v8 = [a3 values];

    return [v6 addPublisher:a3 forID:v7 withValues:v8 isOld:1];
  }

  return result;
}

- (void)_getRemoteProcessWithAuditToken:(id *)a3 canReadItemAtURL:(id)a4 completionHandler:(id)a5
{
  v37 = *MEMORY[0x1E69E9840];
  v9 = *MEMORY[0x1E69E9BD0];
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v10 = *&a3->var0[4];
  v35 = *a3->var0;
  v36 = v10;
  v11 = sandbox_check_by_audit_token();
  v12 = [objc_msgSend(a4 "lastPathComponent")];
  if (!((v11 != 0) | v12 & 1))
  {
    *(v25 + 24) = 1;
LABEL_19:
    (*(a5 + 2))(a5, (*(v25 + 24) != 0) | (v12 & 1));
    goto LABEL_20;
  }

  *&v35 = 0;
  *(&v35 + 1) = &v35;
  *&v36 = 0x2020000000;
  *(&v36 + 1) = [a4 fileSystemRepresentation];
  v13 = *(*(&v35 + 1) + 24);
  if (v13)
  {
    v14 = *&a3->var0[4];
    v33 = *a3->var0;
    v34 = v14;
    v23 = v13;
    v15 = sandbox_check_by_audit_token() == 0;
    *(v25 + 24) = v15;
    if (v15)
    {
      goto LABEL_13;
    }
  }

  else if (*(v25 + 24))
  {
    goto LABEL_13;
  }

  for (i = [a4 URLByDeletingLastPathComponent]; i; i = objc_msgSend(i, "URLByDeletingLastPathComponent"))
  {
    if ([i checkResourceIsReachableAndReturnError:0])
    {
      v17 = [i fileSystemRepresentation];
      *(*(&v35 + 1) + 24) = v17;
      if (v17)
      {
        v18 = *&a3->var0[4];
        v33 = *a3->var0;
        v34 = v18;
        v23 = v17;
        *(v25 + 24) = sandbox_check_by_audit_token() == 0;
      }

      break;
    }
  }

LABEL_13:
  if (!((*(v25 + 24) == 0) | v12 & 1))
  {
    _Block_object_dispose(&v35, 8);
    goto LABEL_19;
  }

  v19 = [(NSFileAccessNode *)self->_rootFileAccessNode descendantForFileURL:a4];
  v20 = [v19 itemProvider];
  v21 = v20;
  if (v20)
  {
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v22 = *&a3->var0[4];
    v29 = *a3->var0;
    v28[2] = __90__NSProgressRegistrar__getRemoteProcessWithAuditToken_canReadItemAtURL_completionHandler___block_invoke;
    v28[3] = &unk_1E69F2198;
    v28[5] = &v35;
    v28[6] = &v24;
    v30 = v22;
    v31 = v9;
    v28[4] = a5;
    v32 = v12;
    [v20 providePhysicalURLForURL:a4 completionHandler:v28];
  }

  [v19 removeSelfIfUseless];
  _Block_object_dispose(&v35, 8);
  if (!v21)
  {
    goto LABEL_19;
  }

LABEL_20:
  _Block_object_dispose(&v24, 8);
}

uint64_t __90__NSProgressRegistrar__getRemoteProcessWithAuditToken_canReadItemAtURL_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  *(*(*(a1 + 40) + 8) + 24) = [a2 fileSystemRepresentation];
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    *(*(*(a1 + 48) + 8) + 24) = sandbox_check_by_audit_token() == 0;
  }

  if (*(*(*(a1 + 48) + 8) + 24))
  {
    v3 = 1;
  }

  else
  {
    v3 = *(a1 + 92);
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), v3 & 1);
}

- (void)addSubscriber:(id)a3 forID:(id)a4 appBundleID:(id)a5 fileURL:(id)a6 completionHandler:(id)a7
{
  v23 = *MEMORY[0x1E69E9840];
  v13 = _NSProgressIPCDebugLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v15 = _NSProgressIPCDebugLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218755;
      *&buf[4] = self;
      *&buf[12] = 2048;
      *&buf[14] = a3;
      *&buf[22] = 2114;
      *&buf[24] = a4;
      v21 = 2113;
      v22 = a6;
      _os_log_debug_impl(&dword_18075C000, v15, OS_LOG_TYPE_DEBUG, "<NSProgressRegistrar %p> Add subscriber %p forID: %{public}@ for URL %{private}@", buf, 0x2Au);
    }
  }

  v16 = +[NSXPCConnection currentConnection];
  if (a6)
  {
    v17 = v16;
    [(NSMutableSet *)self->_pendingFileSubscriberIDs addObject:a4];
    [+[NSString stringWithFormat:](NSString UTF8String:@"Sub: %@ (%d bundle: %@ URL: %@)"];
    v18 = os_transaction_create();
    if (v17)
    {
      [(NSXPCConnection *)v17 auditToken];
    }

    else
    {
      memset(buf, 0, sizeof(buf));
    }

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __81__NSProgressRegistrar_addSubscriber_forID_appBundleID_fileURL_completionHandler___block_invoke;
    v19[3] = &unk_1E69F2210;
    v19[4] = self;
    v19[5] = a4;
    v19[6] = v18;
    v19[7] = a6;
    v19[8] = a5;
    v19[9] = a3;
    v19[10] = v17;
    v19[11] = a7;
    [(NSProgressRegistrar *)self _getRemoteProcessWithAuditToken:buf canReadItemAtURL:a6 completionHandler:v19];
  }

  else
  {
    (*(a7 + 2))(a7);
  }
}

uint64_t __81__NSProgressRegistrar_addSubscriber_forID_appBundleID_fileURL_completionHandler___block_invoke(uint64_t a1, int a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if ([*(*(a1 + 32) + 56) containsObject:*(a1 + 40)])
  {
    [*(*(a1 + 32) + 56) removeObject:*(a1 + 40)];
    if (a2)
    {
      v4 = [*(*(a1 + 32) + 32) objectForKey:*(a1 + 40)];
      if (!v4)
      {
        v4 = [[NSProgressSubscriberProxy alloc] initWithForwarder:*(a1 + 72) onConnection:*(a1 + 80) subscriberID:*(a1 + 40) appBundleID:*(a1 + 64)];
        [*(*(a1 + 32) + 32) setObject:v4 forKey:*(a1 + 40)];

        [*(*(a1 + 32) + 40) setObject:*(a1 + 48) forKey:*(a1 + 40)];
      }

      v5 = [*(*(a1 + 32) + 48) descendantForFileURL:*(a1 + 56)];
      if ([v5 itemProvider])
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3052000000;
        v18 = __Block_byref_object_copy_;
        v19 = __Block_byref_object_dispose_;
        v20 = 0;
        v6 = dispatch_semaphore_create(0);
        v7 = [v5 itemProvider];
        v8 = *(a1 + 56);
        v16[5] = MEMORY[0x1E69E9820];
        v16[6] = 3221225472;
        v16[7] = __81__NSProgressRegistrar_addSubscriber_forID_appBundleID_fileURL_completionHandler___block_invoke_146;
        v16[8] = &unk_1E69F21C0;
        v16[10] = v6;
        v16[11] = buf;
        v16[9] = v8;
        [v7 provideLogicalURLForURL:? completionHandler:?];
        dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
        dispatch_release(v6);
        if (*(*&buf[8] + 40))
        {
          v9 = [*(*(a1 + 32) + 48) descendantForFileURL:?];

          if (v9 != v5)
          {
            [v5 removeSelfIfUseless];
          }
        }

        else
        {
          v9 = v5;
        }

        _Block_object_dispose(buf, 8);
        v5 = v9;
      }

      if (v5)
      {
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __81__NSProgressRegistrar_addSubscriber_forID_appBundleID_fileURL_completionHandler___block_invoke_2;
        v16[3] = &unk_1E69F21E8;
        v16[4] = v4;
        [v5 forEachProgressPublisherOfItemOrContainedItemPerformProcedure:v16];
        [(NSProgressSubscriberProxy *)v4 setItemLocation:v5];
      }

      return (*(*(a1 + 88) + 16))();
    }

    else
    {
      v12 = _NSOSLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = *(a1 + 56);
        v14 = *(a1 + 64);
        v15 = *(a1 + 40);
        *buf = 138412802;
        *&buf[4] = v13;
        *&buf[12] = 2112;
        *&buf[14] = v14;
        *&buf[22] = 2112;
        v18 = v15;
        _os_log_error_impl(&dword_18075C000, v12, OS_LOG_TYPE_ERROR, "sandboxing denied subscription to progress on URL %@ (bundle id %@, %@)", buf, 0x20u);
      }

      return (*(*(a1 + 88) + 16))();
    }
  }

  else
  {

    v10 = *(*(a1 + 88) + 16);

    return v10();
  }
}

intptr_t __81__NSProgressRegistrar_addSubscriber_forID_appBundleID_fileURL_completionHandler___block_invoke_146(void *a1, void *a2)
{
  if ([a2 logicalURL] != a1[4])
  {
    *(*(a1[6] + 8) + 40) = [a2 logicalURL];
  }

  v4 = a1[5];

  return dispatch_semaphore_signal(v4);
}

uint64_t __81__NSProgressRegistrar_addSubscriber_forID_appBundleID_fileURL_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 publisherID];
  v5 = [a2 values];

  return [v3 addPublisher:a2 forID:v4 withValues:v5 isOld:1];
}

- (void)removeSubscriberForID:(id)a3
{
  v10[5] = *MEMORY[0x1E69E9840];
  v5 = [(NSMutableDictionary *)self->_subscribersByID objectForKey:a3];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 appBundleID];
    if (v7)
    {
      v8 = v7;
      v9 = [v6 itemLocation];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __45__NSProgressRegistrar_removeSubscriberForID___block_invoke;
      v10[3] = &unk_1E69F21E8;
      v10[4] = v8;
      [v9 forEachProgressPublisherOfItemOrContainedItemPerformProcedure:v10];
    }

    [v6 setItemLocation:0];
    [(NSMutableDictionary *)self->_subscribersByID removeObjectForKey:a3];
    [(NSMutableDictionary *)self->_subscriberTransactionsByID removeObjectForKey:a3];
  }

  [(NSMutableSet *)self->_pendingFileSubscriberIDs removeObject:a3];
}

@end