@interface BSXPCConnectionListenerManager
+ (id)defaultHandlerQueue;
+ (id)sharedInstance;
+ (void)listenForService:(id)a3 onQueue:(id)a4 withHandler:(id)a5;
+ (void)stopListeningForService:(id)a3;
- (BSXPCConnectionListenerManager)init;
- (void)dealloc;
@end

@implementation BSXPCConnectionListenerManager

+ (id)sharedInstance
{
  objc_opt_self();
  if (qword_1ED44FDC0 != -1)
  {
    dispatch_once(&qword_1ED44FDC0, &__block_literal_global_11);
  }

  v0 = _MergedGlobals_11;

  return v0;
}

void __48__BSXPCConnectionListenerManager_sharedInstance__block_invoke()
{
  v0 = [BSXPCConnectionListenerManager alloc];
  if (v0)
  {
    v11.receiver = v0;
    v11.super_class = BSXPCConnectionListenerManager;
    v1 = objc_msgSendSuper2(&v11, sel_init);
    if (v1)
    {
      v2 = BSDispatchQueueCreateWithQualityOfService("com.apple.baseboard.xpc.connectionListening", 0, QOS_CLASS_USER_INTERACTIVE, 0);
      v3 = v1[1];
      v1[1] = v2;

      v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v5 = v1[2];
      v1[2] = v4;

      v6 = objc_alloc_init(MEMORY[0x1E696AD10]);
      v7 = v1[3];
      v1[3] = v6;

      v8 = BSDispatchQueueCreateWithQualityOfService("com.apple.baseboard.xpc.connectionListening", 0, QOS_CLASS_USER_INITIATED, 0);
      v9 = v1[4];
      v1[4] = v8;
    }
  }

  else
  {
    v1 = 0;
  }

  v10 = _MergedGlobals_11;
  _MergedGlobals_11 = v1;
}

- (BSXPCConnectionListenerManager)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"BSXPCConnectionListenerManager.m" lineNumber:114 description:@"init is not allowed"];

  return 0;
}

- (void)dealloc
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_services;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = [(NSMutableDictionary *)self->_services objectForKey:*(*(&v11 + 1) + 8 * v6)];
        v8 = v7;
        if (v7)
        {
          v9 = *(v7 + 8);
          *(v7 + 8) = 0;
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v10.receiver = self;
  v10.super_class = BSXPCConnectionListenerManager;
  [(BSXPCConnectionListenerManager *)&v10 dealloc];
}

void __66__BSXPCConnectionListenerManager__addService_withHandler_onQueue___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  Class = object_getClass(v3);
  if (Class == MEMORY[0x1E69E9E98])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Error on %@: %s", *(a1 + 32), xpc_dictionary_get_string(v3, *MEMORY[0x1E69E9E28])}];
  }

  else if (Class == MEMORY[0x1E69E9E68])
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      Property = objc_getProperty(v7, v6, 32, 1);
      v9 = *(a1 + 32);
    }

    else
    {
      v9 = 0;
      Property = 0;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __66__BSXPCConnectionListenerManager__addService_withHandler_onQueue___block_invoke_2;
    block[3] = &unk_1E72CACC0;
    v11 = v9;
    v12 = v3;
    dispatch_sync(Property, block);
  }

  objc_autoreleasePoolPop(v4);
}

void __66__BSXPCConnectionListenerManager__addService_withHandler_onQueue___block_invoke_2(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 16, 1);
  }

  v8 = Property;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (v5)
  {
    v7 = objc_getProperty(v5, v4, 24, 1);
  }

  else
  {
    v7 = 0;
  }

  [v8 handleIncomingConnection:v6 forService:v7];
}

+ (id)defaultHandlerQueue
{
  v2 = +[BSXPCConnectionListenerManager sharedInstance];
  v3 = v2;
  if (v2)
  {
    v4 = *(v2 + 32);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (void)listenForService:(id)a3 onQueue:(id)a4 withHandler:(id)a5
{
  v7 = a3;
  v34 = a4;
  v33 = a5;
  v8 = +[BSXPCConnectionListenerManager sharedInstance];
  v38 = v7;
  v9 = v33;
  v10 = v34;
  if (v8)
  {
    v11 = objc_autoreleasePoolPush();
    v37 = v10;
    [*(v8 + 24) lock];
    if (!v9)
    {
      v26 = [MEMORY[0x1E696AAA8] currentHandler];
      [v26 handleFailureInMethod:sel__addService_withHandler_onQueue_ object:v8 file:@"BSXPCConnectionListenerManager.m" lineNumber:148 description:{@"cannot add a nil handler -> service = %@", v38}];
    }

    if (!v38)
    {
      v27 = [MEMORY[0x1E696AAA8] currentHandler];
      [v27 handleFailureInMethod:sel__addService_withHandler_onQueue_ object:v8 file:@"BSXPCConnectionListenerManager.m" lineNumber:149 description:{@"cannot add a handler for a nil service -> handler = %@", v9}];

      v28 = [MEMORY[0x1E696AAA8] currentHandler];
      [v28 handleFailureInMethod:sel__addService_withHandler_onQueue_ object:v8 file:@"BSXPCConnectionListenerManager.m" lineNumber:150 description:{@"cannot add a handler without a queue -> service = %@ : handler = %@", 0, v9}];
    }

    v12 = [*(v8 + 16) objectForKey:?];

    if (v12)
    {
      v29 = [MEMORY[0x1E696AAA8] currentHandler];
      [v29 handleFailureInMethod:sel__addService_withHandler_onQueue_ object:v8 file:@"BSXPCConnectionListenerManager.m" lineNumber:151 description:{@"cannot add a service twice -> service = %@ : handler = %@", v38, v9}];
    }

    v35 = a4;
    obj = xpc_connection_create_mach_service([v38 UTF8String], *(v8 + 8), 1uLL);
    v13 = [BSXPCConnectionListener alloc];
    v14 = obj;
    v15 = v38;
    v16 = v9;
    v17 = v10;
    if (!v13)
    {
      v19 = 0;
LABEL_16:

      handler.receiver = MEMORY[0x1E69E9820];
      handler.super_class = 3221225472;
      v40 = __66__BSXPCConnectionListenerManager__addService_withHandler_onQueue___block_invoke;
      v41 = &unk_1E72CB320;
      v22 = v19;
      v42 = v22;
      xpc_connection_set_event_handler(v14, &handler);
      v24 = *(v8 + 16);
      v10 = v37;
      if (v22)
      {
        Property = objc_getProperty(v22, v23, 24, 1);
      }

      else
      {
        Property = 0;
      }

      [v24 setObject:v22 forKey:Property];
      xpc_connection_resume(v14);
      [*(v8 + 24) unlock];

      objc_autoreleasePoolPop(v11);
      goto LABEL_19;
    }

    if (v14)
    {
      if (v9)
      {
LABEL_11:
        if (!v38)
        {
          v32 = [MEMORY[0x1E696AAA8] currentHandler];
          [v32 handleFailureInMethod:sel_initWithConnection_forService_withHandler_onQueue_ object:v13 file:@"BSXPCConnectionListenerManager.m" lineNumber:43 description:@"cannot initialize without a service"];
        }

        handler.receiver = v13;
        handler.super_class = BSXPCConnectionListener;
        v18 = objc_msgSendSuper2(&handler, sel_init);
        v19 = v18;
        if (v18)
        {
          objc_storeStrong(v18 + 1, obj);
          objc_storeStrong(v19 + 2, a5);
          v20 = [v15 copy];
          v21 = v19[3];
          v19[3] = v20;

          if (v17)
          {
            objc_storeStrong(v19 + 4, v35);
          }
        }

        goto LABEL_16;
      }
    }

    else
    {
      v30 = [MEMORY[0x1E696AAA8] currentHandler];
      [v30 handleFailureInMethod:sel_initWithConnection_forService_withHandler_onQueue_ object:v13 file:@"BSXPCConnectionListenerManager.m" lineNumber:41 description:@"cannot initialize with a NULL connection"];

      if (v9)
      {
        goto LABEL_11;
      }
    }

    v31 = [MEMORY[0x1E696AAA8] currentHandler];
    [v31 handleFailureInMethod:sel_initWithConnection_forService_withHandler_onQueue_ object:v13 file:@"BSXPCConnectionListenerManager.m" lineNumber:42 description:@"cannot initialize without a handler"];

    goto LABEL_11;
  }

LABEL_19:
}

+ (void)stopListeningForService:(id)a3
{
  v3 = a3;
  v4 = +[BSXPCConnectionListenerManager sharedInstance];
  v9 = v3;
  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    [v4[3] lock];
    v6 = [v4[2] objectForKey:v9];
    v7 = v6;
    if (v6)
    {
      v8 = *(v6 + 8);
      *(v6 + 8) = 0;
    }

    [v4[2] removeObjectForKey:v9];
    [v4[3] unlock];

    objc_autoreleasePoolPop(v5);
  }
}

@end