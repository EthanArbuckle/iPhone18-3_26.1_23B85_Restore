@interface NEPathEventObserver
- (NEPathEventObserver)initWithQueue:(id)a3 eventHandler:(id)a4;
- (void)cancel;
- (void)dealloc;
- (void)handleEvent:(void *)a3 forPID:(void *)a4 UUID:;
@end

@implementation NEPathEventObserver

- (void)dealloc
{
  [(NEPathEventObserver *)self cancel];
  v3.receiver = self;
  v3.super_class = NEPathEventObserver;
  [(NEPathEventObserver *)&v3 dealloc];
}

- (void)cancel
{
  if (self)
  {
    cellBlockedObserver = self->_cellBlockedObserver;
    if (cellBlockedObserver)
    {
      MEMORY[0x1BFAFACD0](cellBlockedObserver, a2);
      self->_cellBlockedObserver = 0;
    }

    cellFailedObserver = self->_cellFailedObserver;
    if (cellFailedObserver)
    {
      MEMORY[0x1BFAFACD0](cellFailedObserver, a2);
      self->_cellFailedObserver = 0;
    }

    wifiBlockedObserver = self->_wifiBlockedObserver;
    if (wifiBlockedObserver)
    {
      MEMORY[0x1BFAFACD0](wifiBlockedObserver, a2);
      self->_wifiBlockedObserver = 0;
    }
  }
}

- (NEPathEventObserver)initWithQueue:(id)a3 eventHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = NEPathEventObserver;
  v8 = [(NEPathEventObserver *)&v16 init];
  v10 = v8;
  if (v8)
  {
    objc_setProperty_atomic_copy(v8, v9, v7, 32);
    objc_initWeak(&location, v10);
    v13[1] = MEMORY[0x1E69E9820];
    v13[2] = 3221225472;
    v13[3] = __50__NEPathEventObserver_initWithQueue_eventHandler___block_invoke;
    v13[4] = &unk_1E7F09888;
    objc_copyWeak(&v14, &location);
    v10->_cellBlockedObserver = network_config_cellular_blocked_observer_create();
    v12[1] = MEMORY[0x1E69E9820];
    v12[2] = 3221225472;
    v12[3] = __50__NEPathEventObserver_initWithQueue_eventHandler___block_invoke_2;
    v12[4] = &unk_1E7F09888;
    objc_copyWeak(v13, &location);
    v10->_cellFailedObserver = network_config_cellular_failed_observer_create();
    objc_copyWeak(v12, &location);
    v10->_wifiBlockedObserver = network_config_wifi_blocked_observer_create();
    objc_destroyWeak(v12);
    objc_destroyWeak(v13);
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return v10;
}

void __50__NEPathEventObserver_initWithQueue_eventHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(NEPathEventObserver *)WeakRetained handleEvent:v6 forPID:v5 UUID:?];
}

void __50__NEPathEventObserver_initWithQueue_eventHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(NEPathEventObserver *)WeakRetained handleEvent:v6 forPID:v5 UUID:?];
}

void __50__NEPathEventObserver_initWithQueue_eventHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(NEPathEventObserver *)WeakRetained handleEvent:v6 forPID:v5 UUID:?];
}

- (void)handleEvent:(void *)a3 forPID:(void *)a4 UUID:
{
  v38 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!a1)
  {
    goto LABEL_27;
  }

  if (v7 && MEMORY[0x1BFAFC5E0](v7) == MEMORY[0x1E69E9F18])
  {
    value = xpc_uint64_get_value(v7);
    if (v8)
    {
      if (MEMORY[0x1BFAFC5E0](v8) == MEMORY[0x1E69E9F20])
      {
        bytes = xpc_uuid_get_bytes(v8);
        v37 = 0;
        memset(out, 0, sizeof(out));
        if (proc_pidinfo(value, 17, 1uLL, out, 56) == 56)
        {
          if (uuid_compare(bytes, out))
          {
            memset(buf, 0, sizeof(buf));
            uuid_unparse(bytes, buf);
            v15 = ne_log_obj();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
            {
              v16 = off_1E7F098A8[a2 - 1];
              v29 = 138412802;
              v30 = v16;
              v31 = 1024;
              v32 = value;
              v33 = 2080;
              v34 = buf;
              _os_log_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_INFO, "NEPathEvent %@ PID %u does not match UUID %s, is delegating traffic", &v29, 0x1Cu);
            }

            goto LABEL_5;
          }
        }
      }
    }

    v17 = NECopySigningIdentifierForPIDwithAuditToken();
    if (v17)
    {
      v18 = v17;
      v19 = ne_log_obj();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = off_1E7F098A8[a2 - 1];
        out[0] = 138412546;
        *&out[1] = v20;
        LOWORD(out[3]) = 2112;
        *(&out[3] + 2) = v18;
        _os_log_impl(&dword_1BA83C000, v19, OS_LOG_TYPE_DEFAULT, "NEPathEvent %@ for %@ by PID", out, 0x16u);
      }

      v21 = [[NEPathEvent alloc] initWithType:a2 bundleID:v18];
      if (v21)
      {
        goto LABEL_26;
      }
    }
  }

  if (!v8)
  {
    goto LABEL_27;
  }

LABEL_5:
  if (MEMORY[0x1BFAFC5E0](v8) != MEMORY[0x1E69E9F20])
  {
    goto LABEL_27;
  }

  v9 = xpc_uuid_get_bytes(v8);
  memset(out, 0, 37);
  uuid_unparse(v9, out);
  v10 = NEHelperCacheCopySigningIdentifierMapping();
  v11 = v10;
  if (!v10 || MEMORY[0x1BFAFC5E0](v10) != MEMORY[0x1E69E9F10])
  {
    v12 = ne_log_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v28 = off_1E7F098A8[a2 - 1];
      *buf = 138412546;
      *&buf[4] = v28;
      *&buf[12] = 2080;
      *&buf[14] = out;
      _os_log_error_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_ERROR, "NEPathEvent %@ failed to find bundle ID for UUID %s", buf, 0x16u);
    }

    goto LABEL_27;
  }

  v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:xpc_string_get_string_ptr(v11)];
  v24 = ne_log_obj();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = off_1E7F098A8[a2 - 1];
    *buf = 138412802;
    *&buf[4] = v25;
    *&buf[12] = 2112;
    *&buf[14] = v23;
    *&buf[22] = 2080;
    *&buf[24] = out;
    _os_log_impl(&dword_1BA83C000, v24, OS_LOG_TYPE_DEFAULT, "NEPathEvent %@ for %@ by UUID %s", buf, 0x20u);
  }

  v21 = [[NEPathEvent alloc] initWithType:a2 bundleID:v23];
  if (v21)
  {
LABEL_26:
    Property = objc_getProperty(a1, v22, 32, 1);
    Property[2](Property, v21);
  }

LABEL_27:

  v27 = *MEMORY[0x1E69E9840];
}

@end