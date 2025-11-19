@interface BKSHIDKeyboardService
+ (id)new;
+ (id)sharedInstance;
- (BKSHIDKeyboardService)init;
- (_BKSHIDKeyboardDeviceClientProxy)_proxyDeviceForConcreteDevice:(uint64_t)a1;
- (id)_addObserver:(uint64_t)a3 forReason:;
- (id)_proxyDevicesForConcreteDevices:(void *)a1;
- (id)addKeyboardObserver:(id)a3;
- (id)allKeyboardDevices;
- (id)keyboardDeviceForSenderID:(unint64_t)a3;
- (void)_evaluateObservationStateAfterReconnect:(uint64_t)a1;
- (void)_updateKeyboards:(uint64_t)a1;
- (void)setConnectedKeyboards:(id)a3 withReply:(id)a4;
@end

@implementation BKSHIDKeyboardService

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, &__block_literal_global_150);
  }

  v3 = sharedInstance_service;

  return v3;
}

- (id)allKeyboardDevices
{
  v3 = [(BKSHIDKeyboardService *)&self->super.isa _addObserver:@"allKeyboardDevices" forReason:?];
  os_unfair_lock_lock(&self->_lock);
  v4 = [(BSOrderedDictionary *)self->_lock_senderIDToDevice allValues];
  v5 = [v4 copy];

  os_unfair_lock_unlock(&self->_lock);
  v6 = [(BKSHIDKeyboardService *)self _proxyDevicesForConcreteDevices:v5];
  [v3 invalidate];

  return v6;
}

void __39__BKSHIDKeyboardService_sharedInstance__block_invoke()
{
  v45 = *MEMORY[0x1E69E9840];
  v0 = +[BKSHIDServiceConnectionFactory sharedInstance];
  v1 = [v0 clientConnectionForServiceWithName:@"BKKeyboardService"];

  v2 = [BKSHIDKeyboardService alloc];
  v25 = v1;
  if (v2)
  {
    v32.receiver = v2;
    v32.super_class = BKSHIDKeyboardService;
    v3 = objc_msgSendSuper2(&v32, sel_init);
    if (v3)
    {
      v4 = v3;
      if (v25)
      {
        v5 = MEMORY[0x1E698E658];
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __45__BKSHIDKeyboardService__initWithConnection___block_invoke;
        v30[3] = &unk_1E6F46D70;
        v6 = v3;
        v31 = v6;
        v7 = [v5 assertionWithIdentifier:@"BKSKeyboardServiceObservers" stateDidChangeHandler:v30];
        v8 = v6[2];
        v6[2] = v7;

        v9 = MEMORY[0x1E698E658];
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __45__BKSHIDKeyboardService__initWithConnection___block_invoke_2;
        v28[3] = &unk_1E6F46D70;
        v10 = v6;
        v29 = v10;
        v11 = [v9 assertionWithIdentifier:@"BKSKeyboardServiceProxies" stateDidChangeHandler:v28];
        v12 = v10[3];
        v10[3] = v11;

        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __45__BKSHIDKeyboardService__initWithConnection___block_invoke_3;
        v26[3] = &unk_1E6F47978;
        v2 = v10;
        v27 = v2;
        [v25 configure:v26];
        v13 = BKLogKeyboard();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          connection = v2->_connection;
          *buf = 138543362;
          v34 = connection;
          _os_log_impl(&dword_186345000, v13, OS_LOG_TYPE_DEFAULT, "Activating connection to server: %{public}@", buf, 0xCu);
        }

        [v25 activate];
        v15 = BKLogKeyboard();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = [v25 remoteTarget];
          *buf = 138543362;
          v34 = v16;
          _os_log_impl(&dword_186345000, v15, OS_LOG_TYPE_DEFAULT, "server remote target %{public}@", buf, 0xCu);
        }

        v17 = [v25 remoteTarget];

        if (!v17)
        {
          v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"we must have a remote target"];
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v22 = NSStringFromSelector(sel__initWithConnection_);
            v23 = objc_opt_class();
            v24 = NSStringFromClass(v23);
            *buf = 138544642;
            v34 = v22;
            v35 = 2114;
            v36 = v24;
            v37 = 2048;
            v38 = v2;
            v39 = 2114;
            v40 = @"BKSHIDKeyboardService.m";
            v41 = 1024;
            v42 = 239;
            v43 = 2114;
            v44 = v21;
            _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
          }

          [v21 UTF8String];
          _bs_set_crash_log_message();
          __break(0);
          JUMPOUT(0x1863521A0);
        }

        objc_storeStrong(&v2->_connection, v1);

        v4 = v31;
      }

      else
      {
        v18 = BKLogKeyboard();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_186345000, v18, OS_LOG_TYPE_ERROR, "cannot get connection for service", buf, 2u);
        }

        v2 = 0;
      }
    }

    else
    {
      v2 = 0;
    }
  }

  v19 = sharedInstance_service;
  sharedInstance_service = v2;

  v20 = *MEMORY[0x1E69E9840];
}

- (void)setConnectedKeyboards:(id)a3 withReply:(id)a4
{
  v7 = a4;
  [(BKSHIDKeyboardService *)self _updateKeyboards:a3];
  v6 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, 0);
    v6 = v7;
  }
}

- (void)_updateKeyboards:(uint64_t)a1
{
  v101 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    os_unfair_lock_lock((a1 + 8));
    v4 = [v3 count];
    v5 = [*(a1 + 40) count];
    v70 = a1;
    if (v4)
    {
      if (v5)
      {
        v67 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v66 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v62 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v63 = *(a1 + 40);
        v6 = objc_alloc_init(MEMORY[0x1E698E6F8]);
        v86 = 0u;
        v87 = 0u;
        v88 = 0u;
        v89 = 0u;
        v64 = v3;
        obj = v3;
        v7 = [obj countByEnumeratingWithState:&v86 objects:v99 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v87;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v87 != v9)
              {
                objc_enumerationMutation(obj);
              }

              v11 = *(*(&v86 + 1) + 8 * i);
              v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v11, "senderID")}];
              v13 = [*(a1 + 40) objectForKey:v12];
              if (v13)
              {
                v14 = v13;
                v15 = [v11 layout];
                v16 = [v14 layout];
                v17 = [v15 isEqual:v16];

                if ((v17 & 1) == 0)
                {
                  [v66 addObject:v14];
                  [v14 _replaceProperties:v11];
                }

                a1 = v70;
              }

              else
              {
                v14 = [[BKSHIDKeyboardDevice alloc] _initWithProperties:v11];
                [v67 addObject:v14];
              }

              [v6 setObject:v14 forKey:v12];
            }

            v8 = [obj countByEnumeratingWithState:&v86 objects:v99 count:16];
          }

          while (v8);
        }

        v83[0] = MEMORY[0x1E69E9820];
        v83[1] = 3221225472;
        v83[2] = __42__BKSHIDKeyboardService__updateKeyboards___block_invoke;
        v83[3] = &unk_1E6F46580;
        v18 = v6;
        v84 = v18;
        v19 = v62;
        v85 = v19;
        [v63 enumerateKeysAndObjectsUsingBlock:v83];
        v20 = *(v70 + 40);
        *(v70 + 40) = v18;
        v21 = v18;
        v22 = v66;
        v23 = v19;
        v24 = v67;

        a1 = v70;
        v3 = v64;
      }

      else
      {
        v26 = objc_alloc_init(MEMORY[0x1E698E6F8]);
        v90 = 0u;
        v91 = 0u;
        v92 = 0u;
        v93 = 0u;
        v27 = v3;
        v28 = [v27 countByEnumeratingWithState:&v90 objects:v100 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = *v91;
          do
          {
            for (j = 0; j != v29; ++j)
            {
              if (*v91 != v30)
              {
                objc_enumerationMutation(v27);
              }

              v32 = *(*(&v90 + 1) + 8 * j);
              v33 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v32, "senderID")}];
              v34 = [[BKSHIDKeyboardDevice alloc] _initWithProperties:v32];
              [v26 setObject:v34 forKey:v33];
            }

            v29 = [v27 countByEnumeratingWithState:&v90 objects:v100 count:16];
          }

          while (v29);
        }

        v24 = [v26 allValues];
        v35 = *(v70 + 40);
        *(v70 + 40) = v26;
        a1 = v70;

        v22 = 0;
        v23 = 0;
      }
    }

    else
    {
      if (v5)
      {
        v23 = [*(a1 + 40) allValues];
        v25 = *(a1 + 40);
        *(a1 + 40) = 0;

        v22 = 0;
      }

      else
      {
        v22 = 0;
        v23 = 0;
      }

      v24 = 0;
    }

    v36 = [*(a1 + 16) orderedContext];
    v37 = [v36 copy];

    os_unfair_lock_unlock((a1 + 8));
    if ([v24 count])
    {
      v38 = BKLogKeyboard();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v98 = v24;
        _os_log_impl(&dword_186345000, v38, OS_LOG_TYPE_DEFAULT, "connected: %{public}@", buf, 0xCu);
      }

      if ([v37 count])
      {
        v39 = [(BKSHIDKeyboardService *)a1 _proxyDevicesForConcreteDevices:v24];
        v79 = 0u;
        v80 = 0u;
        v81 = 0u;
        v82 = 0u;
        v40 = v37;
        v41 = [v40 countByEnumeratingWithState:&v79 objects:v96 count:16];
        if (v41)
        {
          v42 = v41;
          v43 = *v80;
          do
          {
            for (k = 0; k != v42; ++k)
            {
              if (*v80 != v43)
              {
                objc_enumerationMutation(v40);
              }

              [*(*(&v79 + 1) + 8 * k) keyboardDevicesDidConnect:v39];
            }

            v42 = [v40 countByEnumeratingWithState:&v79 objects:v96 count:16];
          }

          while (v42);
        }

        a1 = v70;
      }
    }

    if ([v22 count])
    {
      v45 = BKLogKeyboard();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v98 = v22;
        _os_log_impl(&dword_186345000, v45, OS_LOG_TYPE_DEFAULT, "layouts did change: %{public}@", buf, 0xCu);
      }

      if ([v37 count])
      {
        v68 = v24;
        v65 = v3;
        v46 = [(BKSHIDKeyboardService *)a1 _proxyDevicesForConcreteDevices:v22];
        v75 = 0u;
        v76 = 0u;
        v77 = 0u;
        v78 = 0u;
        v47 = v37;
        v48 = [v47 countByEnumeratingWithState:&v75 objects:v95 count:16];
        if (v48)
        {
          v49 = v48;
          v50 = *v76;
          do
          {
            for (m = 0; m != v49; ++m)
            {
              if (*v76 != v50)
              {
                objc_enumerationMutation(v47);
              }

              v52 = *(*(&v75 + 1) + 8 * m);
              if (objc_opt_respondsToSelector())
              {
                [v52 keyboardDeviceLayoutsDidChange:v46];
              }
            }

            v49 = [v47 countByEnumeratingWithState:&v75 objects:v95 count:16];
          }

          while (v49);
        }

        v3 = v65;
        a1 = v70;
        v24 = v68;
      }
    }

    if ([v23 count])
    {
      v53 = BKLogKeyboard();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v98 = v23;
        _os_log_impl(&dword_186345000, v53, OS_LOG_TYPE_DEFAULT, "disconnected: %{public}@", buf, 0xCu);
      }

      if ([v37 count])
      {
        v54 = v24;
        v55 = [(BKSHIDKeyboardService *)a1 _proxyDevicesForConcreteDevices:v23];
        v71 = 0u;
        v72 = 0u;
        v73 = 0u;
        v74 = 0u;
        v56 = v37;
        v57 = [v56 countByEnumeratingWithState:&v71 objects:v94 count:16];
        if (v57)
        {
          v58 = v57;
          v59 = *v72;
          do
          {
            for (n = 0; n != v58; ++n)
            {
              if (*v72 != v59)
              {
                objc_enumerationMutation(v56);
              }

              [*(*(&v71 + 1) + 8 * n) keyboardDevicesDidDisconnect:v55];
            }

            v58 = [v56 countByEnumeratingWithState:&v71 objects:v94 count:16];
          }

          while (v58);
        }

        v24 = v54;
      }
    }
  }

  v61 = *MEMORY[0x1E69E9840];
}

void __42__BKSHIDKeyboardService__updateKeyboards___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v5 = [*(a1 + 32) objectForKey:a2];

  if (!v5)
  {
    [*(a1 + 40) addObject:v6];
  }
}

- (id)_proxyDevicesForConcreteDevices:(void *)a1
{
  if (a1)
  {
    var28[0] = MEMORY[0x1E69E9820];
    var28[1] = 3221225472;
    var28[2] = __57__BKSHIDKeyboardService__proxyDevicesForConcreteDevices___block_invoke;
    var28[3] = &unk_1E6F465A8;
    var28[4] = a1;
    a1 = [a2 bs_map:var28];
    v2 = var28[6];
  }

  return a1;
}

- (_BKSHIDKeyboardDeviceClientProxy)_proxyDeviceForConcreteDevice:(uint64_t)a1
{
  v2 = 0;
  if (a1 && a2)
  {
    v3 = *(a1 + 24);
    v4 = MEMORY[0x1E696AEC0];
    v5 = a2;
    v6 = [v4 stringWithFormat:@"proxy:%p", v5];
    v7 = [v3 acquireForReason:v6];

    v2 = [[_BKSHIDKeyboardDeviceClientProxy alloc] initWithDevice:v5 lifetimeAssertion:v7];
  }

  return v2;
}

- (id)keyboardDeviceForSenderID:(unint64_t)a3
{
  if (keyboardDeviceForSenderID__onceToken != -1)
  {
    dispatch_once(&keyboardDeviceForSenderID__onceToken, &__block_literal_global_169);
  }

  v5 = [(BKSHIDKeyboardService *)&self->super.isa _addObserver:@"keyboardDeviceWithSenderID:" forReason:?];
  os_unfair_lock_lock(&self->_lock);
  if (a3 && (v6 = keyboardDeviceForSenderID__axSenders, [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3], v7 = objc_claimAutoreleasedReturnValue(), LODWORD(v6) = objc_msgSend(v6, "containsObject:", v7), v7, !v6))
  {
    lock_senderIDToDevice = self->_lock_senderIDToDevice;
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
    v9 = [(BSOrderedDictionary *)lock_senderIDToDevice objectForKey:v8];
  }

  else
  {
    v8 = [(BSOrderedDictionary *)self->_lock_senderIDToDevice allValues];
    v9 = [v8 lastObject];
  }

  v11 = v9;

  os_unfair_lock_unlock(&self->_lock);
  v12 = [(BKSHIDKeyboardService *)self _proxyDeviceForConcreteDevice:v11];
  [v5 invalidate];

  return v12;
}

- (id)_addObserver:(uint64_t)a3 forReason:
{
  if (a1)
  {
    a1 = [a1[2] acquireForReason:a3 withContext:a2];
    v3 = vars8;
  }

  return a1;
}

uint64_t __51__BKSHIDKeyboardService_keyboardDeviceForSenderID___block_invoke()
{
  keyboardDeviceForSenderID__axSenders = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{&unk_1EF56BDC0, &unk_1EF56BDD8, &unk_1EF56BDF0, &unk_1EF56BE08, &unk_1EF56BE20, &unk_1EF56BE38, &unk_1EF56BE50, &unk_1EF56BE68, 0}];

  return MEMORY[0x1EEE66BB8]();
}

- (id)addKeyboardObserver:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [v4 stringWithFormat:@"<%@: %p>", objc_opt_class(), v5];
  v7 = [(BKSHIDKeyboardService *)&self->super.isa _addObserver:v5 forReason:v6];

  return v7;
}

- (BKSHIDKeyboardService)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot -init"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    v14 = self;
    v15 = 2114;
    v16 = @"BKSHIDKeyboardService.m";
    v17 = 1024;
    v18 = 173;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

void __45__BKSHIDKeyboardService__initWithConnection___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E698E710];
  v4 = a2;
  v5 = [v3 protocolForProtocol:&unk_1EF579290];
  v6 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1EF56CC28];
  v7 = [MEMORY[0x1E698F470] interfaceWithIdentifier:@"BKKeyboardService"];
  [v7 setServer:v5];
  [v7 setClient:v6];
  [v4 setInterface:v7];
  [v4 setInterfaceTarget:*(a1 + 32)];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__BKSHIDKeyboardService__initWithConnection___block_invoke_4;
  v8[3] = &unk_1E6F474B0;
  v9 = *(a1 + 32);
  [v4 setInterruptionHandler:v8];
  [v4 setInvalidationHandler:&__block_literal_global];
}

void __45__BKSHIDKeyboardService__initWithConnection___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = BKLogKeyboard();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v3 = 0;
      _os_log_error_impl(&dword_186345000, v2, OS_LOG_TYPE_ERROR, "keyboard service reconnecting", v3, 2u);
    }

    [*(v1 + 48) activate];
    [(BKSHIDKeyboardService *)v1 _evaluateObservationStateAfterReconnect:?];
  }
}

- (void)_evaluateObservationStateAfterReconnect:(uint64_t)a1
{
  v12 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
LABEL_13:
    v10 = *MEMORY[0x1E69E9840];
    return;
  }

  os_unfair_lock_lock((a1 + 8));
  if ([*(a1 + 16) isActive])
  {
    v4 = 1;
  }

  else
  {
    v4 = [*(a1 + 24) isActive];
  }

  if ((v4 & a2 & 1) != 0 || *(a1 + 32) != v4)
  {
    *(a1 + 32) = v4;
    v6 = BKLogKeyboard();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11[0] = 67109120;
      v11[1] = v4;
      _os_log_impl(&dword_186345000, v6, OS_LOG_TYPE_DEFAULT, "currently observing: %{BOOL}u", v11, 8u);
    }

    os_unfair_lock_unlock((a1 + 8));
    v7 = [*(a1 + 48) remoteTarget];
    v8 = [MEMORY[0x1E696AD98] numberWithBool:v4];
    v9 = [v7 setObservingUsableKeyboardConnections:v8];

    [(BKSHIDKeyboardService *)a1 _updateKeyboards:v9];
    goto LABEL_13;
  }

  v5 = *MEMORY[0x1E69E9840];

  os_unfair_lock_unlock((a1 + 8));
}

+ (id)new
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot +new"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    v14 = a1;
    v15 = 2114;
    v16 = @"BKSHIDKeyboardService.m";
    v17 = 1024;
    v18 = 168;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

@end