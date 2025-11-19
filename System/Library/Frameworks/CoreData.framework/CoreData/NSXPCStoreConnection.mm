@interface NSXPCStoreConnection
- (id)initForStore:(id)a3;
- (id)sendMessage:(void *)a3 store:(void *)a4 error:;
- (void)createConnectionWithOptions:(uint64_t)a1;
- (void)dealloc;
- (void)disconnect;
- (void)performAndWait:(uint64_t)a1;
- (void)reconnect;
- (void)sendMessageWithContext:(void *)a1;
@end

@implementation NSXPCStoreConnection

- (void)reconnect
{
  if (a1)
  {
    v1[0] = MEMORY[0x1E69E9820];
    v1[1] = 3221225472;
    v1[2] = __33__NSXPCStoreConnection_reconnect__block_invoke;
    v1[3] = &unk_1E6EC16F0;
    v1[4] = a1;
    [(NSXPCStoreConnection *)a1 performAndWait:v1];
  }
}

void *__33__NSXPCStoreConnection_reconnect__block_invoke(void *result)
{
  v1 = result[4];
  if (!*(v1 + 24))
  {
    v2 = result;
    result = *(v1 + 16);
    if (result)
    {
      result = -[NSXPCStoreConnection createConnectionWithOptions:](v1, [result options]);
      *(v2[4] + 24) = result;
    }
  }

  return result;
}

- (void)createConnectionWithOptions:(uint64_t)a1
{
  v47[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_48;
  }

  v4 = [a2 valueForKey:@"serviceName"];
  if (!v4)
  {
    v4 = [a2 valueForKey:@"NSXPCStoreServiceName"];
    if (!v4)
    {
      v19 = [a2 valueForKey:@"NSXPCStoreServerEndpointFactory"];
      if (!v19)
      {
        LogStream = _PFLogGetLogStream(17);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          LOWORD(valueCallBacks.version) = 0;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Unable to create NSXPCConnection; no service name or endpoint factory.\n", &valueCallBacks, 2u);
        }

        v23 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
        {
          LOWORD(valueCallBacks.version) = 0;
          v12 = "CoreData: Unable to create NSXPCConnection; no service name or endpoint factory.";
          v17 = v23;
          v18 = 2;
          goto LABEL_20;
        }

        goto LABEL_42;
      }

      v20 = v19;
      v44 = 0;
      if (objc_opt_respondsToSelector())
      {
        v21 = [v20 newEndpointWithError:&v44];
      }

      else
      {
        v21 = [v20 newEndpoint];
      }

      v24 = v21;
      if (v21)
      {
        v25 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:v21];
        if (!v25)
        {
          v27 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            LODWORD(valueCallBacks.version) = 134217984;
            *(&valueCallBacks.version + 4) = v24;
            _os_log_error_impl(&dword_18565F000, v27, OS_LOG_TYPE_ERROR, "CoreData: fault: Unable to create token NSXPCConnection -initWithListenerEndpoint:%p returned nil\n", &valueCallBacks, 0xCu);
          }

          v28 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
          {
            LODWORD(valueCallBacks.version) = 134217984;
            *(&valueCallBacks.version + 4) = v24;
            _os_log_fault_impl(&dword_18565F000, v28, OS_LOG_TYPE_FAULT, "CoreData: Unable to create token NSXPCConnection -initWithListenerEndpoint:%p returned nil", &valueCallBacks, 0xCu);
          }

          goto LABEL_42;
        }

        v13 = v25;

        goto LABEL_14;
      }

      if (!v44)
      {
        v26 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          LODWORD(valueCallBacks.version) = 134217984;
          *(&valueCallBacks.version + 4) = v20;
          _os_log_error_impl(&dword_18565F000, v26, OS_LOG_TYPE_ERROR, "CoreData: fault: Unable to create token NSXPCConnection.  NSXPCStoreServerEndpointFactory %p -newEndpoint returned nil\n", &valueCallBacks, 0xCu);
        }

        v11 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
          LODWORD(valueCallBacks.version) = 134217984;
          *(&valueCallBacks.version + 4) = v20;
          v12 = "CoreData: Unable to create token NSXPCConnection.  NSXPCStoreServerEndpointFactory %p -newEndpoint returned nil";
          goto LABEL_19;
        }

        goto LABEL_42;
      }

      v35 = objc_autoreleasePoolPush();
      if (_NSCoreDataIsOSLogEnabled(1))
      {
        v36 = _pflogging_catastrophic_mode;
        v37 = _PFLogGetLogStream(1);
        v38 = os_log_type_enabled(v37, OS_LOG_TYPE_ERROR);
        if (v36)
        {
          if (!v38)
          {
            goto LABEL_58;
          }
        }

        else if (!v38)
        {
          goto LABEL_58;
        }

        LODWORD(valueCallBacks.version) = 134218242;
        *(&valueCallBacks.version + 4) = v20;
        WORD2(valueCallBacks.retain) = 2112;
        *(&valueCallBacks.retain + 6) = v44;
        _os_log_error_impl(&dword_18565F000, v37, OS_LOG_TYPE_ERROR, "CoreData: error: Unable to create token NSXPCConnection.  NSXPCStoreServerEndpointFactory %p -newEndpointWithError returned error %@\n", &valueCallBacks, 0x16u);
      }

LABEL_58:
      _NSCoreDataLog_console(1, "Unable to create token NSXPCConnection.  NSXPCStoreServerEndpointFactory %p -newEndpointWithError returned error %@", v20, v44);
      objc_autoreleasePoolPop(v35);
      v39 = *MEMORY[0x1E696A4C0];
      v40 = [v44 code];
      v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"NSXPCStoreServerEndpointFactory failed to provide an endpoint"];
      v46 = *MEMORY[0x1E696AA08];
      v47[0] = v44;
      v42 = +[_NSCoreDataException exceptionWithName:code:reason:userInfo:](_NSCoreDataException, v39, v40, v41, [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:&v46 count:1]);
      -[_NSCoreDataException _setDomain:](v42, [v44 domain]);
      objc_exception_throw(v42);
    }
  }

  v5 = v4;
  v6 = [a2 valueForKey:@"agentOrDaemon"];
  if (!v6)
  {
    v6 = [a2 valueForKey:@"NSXPCStoreDaemonize"];
  }

  v7 = [v6 BOOLValue];
  v8 = objc_alloc(MEMORY[0x1E696B0B8]);
  if (v7)
  {
    v9 = [v8 initWithMachServiceName:v5 options:2];
    if (!v9)
    {
      v10 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        LODWORD(valueCallBacks.version) = 138412290;
        *(&valueCallBacks.version + 4) = v5;
        _os_log_error_impl(&dword_18565F000, v10, OS_LOG_TYPE_ERROR, "CoreData: fault: Unable to create mach service NSXPCConnection -initWithMachServiceName:%@ returned nil\n", &valueCallBacks, 0xCu);
      }

      v11 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        LODWORD(valueCallBacks.version) = 138412290;
        *(&valueCallBacks.version + 4) = v5;
        v12 = "CoreData: Unable to create mach service NSXPCConnection -initWithMachServiceName:%@ returned nil";
LABEL_19:
        v17 = v11;
        v18 = 12;
LABEL_20:
        _os_log_fault_impl(&dword_18565F000, v17, OS_LOG_TYPE_FAULT, v12, &valueCallBacks, v18);
        goto LABEL_42;
      }

      goto LABEL_42;
    }
  }

  else
  {
    v9 = [v8 initWithServiceName:v5];
    if (!v9)
    {
      v16 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        LODWORD(valueCallBacks.version) = 138412290;
        *(&valueCallBacks.version + 4) = v5;
        _os_log_error_impl(&dword_18565F000, v16, OS_LOG_TYPE_ERROR, "CoreData: fault: Unable to create service NSXPCConnection -initWithServiceName:%@ returned nil\n", &valueCallBacks, 0xCu);
      }

      v11 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        LODWORD(valueCallBacks.version) = 138412290;
        *(&valueCallBacks.version + 4) = v5;
        v12 = "CoreData: Unable to create service NSXPCConnection -initWithServiceName:%@ returned nil";
        goto LABEL_19;
      }

LABEL_42:
      v29 = objc_autoreleasePoolPush();
      _pflogInitialize(1);
      if (_pflogging_enable_oslog >= 1)
      {
        v30 = _pflogging_catastrophic_mode;
        v31 = _PFLogGetLogStream(1);
        v32 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
        if (v30)
        {
          if (v32)
          {
            LOWORD(valueCallBacks.version) = 0;
LABEL_51:
            _os_log_error_impl(&dword_18565F000, v31, OS_LOG_TYPE_ERROR, "CoreData: error: Failed to create NSXPCConnection\n", &valueCallBacks, 2u);
          }
        }

        else if (v32)
        {
          LOWORD(valueCallBacks.version) = 0;
          goto LABEL_51;
        }
      }

      _NSCoreDataLog_console(1, "Failed to create NSXPCConnection");
      objc_autoreleasePoolPop(v29);
LABEL_48:
      v13 = 0;
      goto LABEL_49;
    }
  }

  v13 = v9;
LABEL_14:
  [v13 setInterruptionHandler:&__block_literal_global_1];
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __52__NSXPCStoreConnection_createConnectionWithOptions___block_invoke_18;
  v43[3] = &unk_1E6EC16F0;
  v43[4] = a1;
  [v13 setInvalidationHandler:v43];
  v14 = [*(a1 + 16) _persistentStoreCoordinator];
  memset(&valueCallBacks, 0, 24);
  *&valueCallBacks.copyDescription = *(MEMORY[0x1E695E9E8] + 24);
  v15 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], &valueCallBacks);
  CFDictionarySetValue(v15, @"PSCKey", v14);
  [*(a1 + 24) setUserInfo:v15];
  CFRelease(v15);
  [v13 setRemoteObjectInterface:{objc_msgSend(MEMORY[0x1E696B0D0], "interfaceWithProtocol:", &unk_1EF440870)}];
  [v13 resume];
LABEL_49:
  v33 = *MEMORY[0x1E69E9840];
  return v13;
}

void __52__NSXPCStoreConnection_createConnectionWithOptions___block_invoke()
{
  if (+[NSXPCStore debugDefault]>= 1)
  {
    v0 = objc_autoreleasePoolPush();
    _pflogInitialize(8);
    if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Connection interrupted.\n", buf, 2u);
        }
      }

      else
      {
        v2 = _PFLogGetLogStream(8);
        if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
        {
          *v4 = 0;
          _os_log_impl(&dword_18565F000, v2, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Connection interrupted.\n", v4, 2u);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v3 = 1;
    }

    else
    {
      v3 = 8;
    }

    _NSCoreDataLog_console(v3, "Connection interrupted.");
    objc_autoreleasePoolPop(v0);
  }
}

void __52__NSXPCStoreConnection_createConnectionWithOptions___block_invoke_18(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  [_NSXPCStoreUtilities logMessage:@"XPC connection was invalidated" forComponent:?];
  if (+[NSXPCStore debugDefault]>= 1)
  {
    v2 = objc_autoreleasePoolPush();
    _pflogInitialize(8);
    if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Connection invalidated.\n", buf, 2u);
        }
      }

      else
      {
        v4 = _PFLogGetLogStream(8);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          *v6 = 0;
          _os_log_impl(&dword_18565F000, v4, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Connection invalidated.\n", v6, 2u);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v5 = 1;
    }

    else
    {
      v5 = 8;
    }

    _NSCoreDataLog_console(v5, "Connection invalidated.");
    objc_autoreleasePoolPop(v2);
  }
}

- (id)initForStore:(id)a3
{
  v14.receiver = self;
  v14.super_class = NSXPCStoreConnection;
  v4 = [(NSXPCStoreConnection *)&v14 init];
  v5 = v4;
  if (v4)
  {
    v4->_store = a3;
    v4->_connection = -[NSXPCStoreConnection createConnectionWithOptions:](v4, [a3 options]);
    if ([objc_msgSend(a3 "URL")] && (v6 = objc_msgSend(objc_msgSend(a3, "URL"), "path")) != 0)
    {
      v7 = [v6 lastPathComponent];
    }

    else
    {
      v7 = @"nil";
    }

    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"NSXPCStoreConnection %p for %@", v5, v7];
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = [a3 _persistentStoreCoordinator];
    if (v10)
    {
      v11 = *(v10 + 24);
      if ((v11 >> 2))
      {
        v9 = dispatch_queue_attr_make_with_qos_class(v9, (v11 >> 2), 0);
      }
    }

    v12 = dispatch_queue_create([v8 UTF8String], v9);
    v5->_queue = v12;
    dispatch_set_context(v12, v5);
    if (v9)
    {
      dispatch_release(v9);
    }
  }

  return v5;
}

- (void)performAndWait:(uint64_t)a1
{
  if (a1)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x3052000000;
    v11 = __Block_byref_object_copy__2;
    v12 = __Block_byref_object_dispose__2;
    v13 = 0;
    dispatch_assert_queue_not_V2(*(a1 + 8));
    v4 = *(a1 + 8);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __39__NSXPCStoreConnection_performAndWait___block_invoke;
    v7[3] = &unk_1E6EC1790;
    v7[4] = a2;
    v7[5] = &v8;
    dispatch_sync(v4, v7);
    v5 = v9[5];
    if (v5)
    {
      v6 = v5;
      objc_exception_throw(v9[5]);
    }

    _Block_object_dispose(&v8, 8);
  }
}

- (void)disconnect
{
  if (a1)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      [v2 setInvalidationHandler:0];
      [*(a1 + 24) setInterruptionHandler:0];
      [*(a1 + 24) setUserInfo:0];
      [*(a1 + 24) invalidate];

      *(a1 + 24) = 0;
    }
  }
}

- (void)dealloc
{
  self->_store = 0;
  if (self->_connection)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __31__NSXPCStoreConnection_dealloc__block_invoke;
    block[3] = &unk_1E6EC16F0;
    block[4] = self;
    current_queue = dispatch_get_current_queue();
    if (dispatch_get_context(current_queue) == self)
    {
      [(NSXPCStoreConnection *)self disconnect];
    }

    else
    {
      dispatch_sync(self->_queue, block);
    }
  }

  queue = self->_queue;
  if (queue)
  {
    dispatch_release(queue);
    self->_queue = 0;
  }

  v5.receiver = self;
  v5.super_class = NSXPCStoreConnection;
  [(NSXPCStoreConnection *)&v5 dealloc];
}

- (id)sendMessage:(void *)a3 store:(void *)a4 error:
{
  v4 = a1;
  v40 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_39;
  }

  if (a1[3])
  {
    v32 = 0;
    v33 = &v32;
    v34 = 0x3052000000;
    v35 = __Block_byref_object_copy__2;
    v36 = __Block_byref_object_dispose__2;
    v37 = 0;
    v26 = 0;
    v27 = &v26;
    v28 = 0x3052000000;
    v29 = __Block_byref_object_copy__2;
    v30 = __Block_byref_object_dispose__2;
    v31 = 0;
    v8 = [a3 URL];
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __48__NSXPCStoreConnection_sendMessage_store_error___block_invoke;
    v21[3] = &unk_1E6EC1768;
    v21[8] = &v32;
    v21[9] = &v26;
    v21[4] = v4;
    v21[5] = v8;
    v21[6] = a2;
    v21[7] = a3;
    v21[10] = &v22;
    [(NSXPCStoreConnection *)v4 performAndWait:v21];
    if (*(v23 + 24) == 1)
    {
      if (+[NSXPCStore debugDefault]< 1)
      {
LABEL_35:

        if (*(v23 + 24) == 1)
        {
          v4 = v33[5];
        }

        else
        {
          v4 = 0;
        }

        _Block_object_dispose(&v22, 8);
        _Block_object_dispose(&v26, 8);
        _Block_object_dispose(&v32, 8);
        goto LABEL_39;
      }

      v9 = objc_autoreleasePoolPush();
      _pflogInitialize(8);
      if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          LogStream = _PFLogGetLogStream(1);
          if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
            v11 = v33[5];
            *buf = 138412290;
            v39 = v11;
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Returning reply dict %@\n", buf, 0xCu);
          }
        }

        else
        {
          v14 = _PFLogGetLogStream(8);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = v33[5];
            *buf = 138412290;
            v39 = v15;
            _os_log_impl(&dword_18565F000, v14, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Returning reply dict %@\n", buf, 0xCu);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v16 = 1;
      }

      else
      {
        v16 = 8;
      }

      _NSCoreDataLog_console(v16, "Returning reply dict %@", v33[5]);
    }

    else
    {
      if (a4)
      {
        v12 = v27[5];
        if (v12)
        {
          *a4 = v12;
          v27[5] = 0;
        }
      }

      if (+[NSXPCStore debugDefault]< 1)
      {
        goto LABEL_35;
      }

      v9 = objc_autoreleasePoolPush();
      _pflogInitialize(8);
      if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v13 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_18565F000, v13, OS_LOG_TYPE_ERROR, "CoreData: error: Failed send (no reply dict).\n", buf, 2u);
          }
        }

        else
        {
          v17 = _PFLogGetLogStream(8);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_18565F000, v17, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Failed send (no reply dict).\n", buf, 2u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v18 = 1;
      }

      else
      {
        v18 = 8;
      }

      _NSCoreDataLog_console(v18, "Failed send (no reply dict).");
    }

    objc_autoreleasePoolPop(v9);
    goto LABEL_35;
  }

  v4 = 0;
  if (a4)
  {
    *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134070 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObject:forKey:", @"Connection is nil", @"Reason"}];
  }

LABEL_39:
  v19 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t __48__NSXPCStoreConnection_sendMessage_store_error___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __48__NSXPCStoreConnection_sendMessage_store_error___block_invoke_2;
  v10[3] = &unk_1E6EC1718;
  v11 = *(a1 + 64);
  v10[4] = *(a1 + 40);
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v10];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48__NSXPCStoreConnection_sendMessage_store_error___block_invoke_91;
  v9[3] = &unk_1E6EC1740;
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 80);
  v9[6] = *(a1 + 64);
  v9[7] = v6;
  v7 = *(a1 + 32);
  v9[4] = v5;
  v9[5] = v7;
  return [v3 handleRequest:v4 reply:v9];
}

void __48__NSXPCStoreConnection_sendMessage_store_error___block_invoke_2(void *a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  *(*(a1[5] + 8) + 40) = 0;
  *(*(a1[6] + 8) + 40) = a2;
  v4 = objc_autoreleasePoolPush();
  _pflogInitialize(1);
  if (_pflogging_enable_oslog >= 1)
  {
    v5 = _pflogging_catastrophic_mode;
    LogStream = _PFLogGetLogStream(1);
    v7 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
    if (v5)
    {
      if (v7)
      {
        goto LABEL_7;
      }
    }

    else if (v7)
    {
LABEL_7:
      v9 = a1[4];
      *buf = 138412546;
      *&buf[4] = v9;
      *&buf[12] = 2112;
      *&buf[14] = a2;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: XPC: synchronousRemoteObjectProxyWithErrorHandler: store '%@' encountered error: %@\n", buf, 0x16u);
    }
  }

  _NSCoreDataLog_console(1, "XPC: synchronousRemoteObjectProxyWithErrorHandler: store '%@' encountered error: %@", a1[4], a2, *buf, *&buf[16], v11);
  objc_autoreleasePoolPop(v4);
  v8 = *MEMORY[0x1E69E9840];
}

void __48__NSXPCStoreConnection_sendMessage_store_error___block_invoke_91(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v17 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v6 = +[_NSXPCStoreUtilities classesForErrorArchive];
    v3 = [_NSXPCStoreUtilities decodeSecureArchivedData:v3 usingDelegate:a1[4] classes:v6];
  }

  v7 = objc_alloc(MEMORY[0x1E695DF20]);
  if (!a2)
  {
    a2 = [MEMORY[0x1E695DFB0] null];
  }

  *(*(a1[6] + 8) + 40) = [v7 initWithObjectsAndKeys:{a2, @"reply", v3, @"error", 0}];
  *(*(a1[7] + 8) + 24) = 1;
  if (+[NSXPCStore debugDefault]>= 1)
  {
    v8 = objc_autoreleasePoolPush();
    _pflogInitialize(8);
    if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          v10 = *(*(a1[6] + 8) + 40);
          *buf = 138412290;
          v16 = v10;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Created reply dict: %@\n", buf, 0xCu);
        }
      }

      else
      {
        v11 = _PFLogGetLogStream(8);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *(*(a1[6] + 8) + 40);
          *buf = 138412290;
          v16 = v12;
          _os_log_impl(&dword_18565F000, v11, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Created reply dict: %@\n", buf, 0xCu);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v13 = 1;
    }

    else
    {
      v13 = 8;
    }

    _NSCoreDataLog_console(v13, "Created reply dict: %@", *(*(a1[6] + 8) + 40));
    objc_autoreleasePoolPop(v8);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)sendMessageWithContext:(void *)a1
{
  if (a1)
  {
    newValue = 0;
    if (a2)
    {
      v3 = [(NSXPCStoreConnection *)a1 sendMessage:*(a2 + 8) store:&newValue error:?];
      objc_setProperty_nonatomic(a2, v4, v3, 24);
      objc_setProperty_nonatomic(a2, v5, newValue, 32);
    }

    else
    {
      [(NSXPCStoreConnection *)a1 sendMessage:0 store:&newValue error:?];
    }
  }
}

@end