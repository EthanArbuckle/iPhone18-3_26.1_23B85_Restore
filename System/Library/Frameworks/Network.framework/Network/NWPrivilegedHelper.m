@interface NWPrivilegedHelper
- (BOOL)startXPCListener;
- (NWPrivilegedHelper)initWithQueue:(id)a3;
- (void)handleRequest:(id)a3 onConnection:(id)a4;
- (void)registerHandlerFunction:(void *)a3 type:(int)a4 allowedEntitlementGroup:(id)a5;
- (void)registerHelperFunctions;
- (void)startThrottlePolicyEventListener;
@end

@implementation NWPrivilegedHelper

void __38__NWPrivilegedHelper_startXPCListener__block_invoke_73(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    WeakRetained = gLogObj;
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446210;
      v28 = "[NWPrivilegedHelper startXPCListener]_block_invoke";
      _os_log_impl(&dword_181A37000, WeakRetained, OS_LOG_TYPE_DEBUG, "%{public}s received request on removed connection, ignoring.", buf, 0xCu);
    }

    goto LABEL_45;
  }

  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    if (WeakRetained)
    {
      Class = object_getClass(v4);
      if (Class != MEMORY[0x1E69E9E80])
      {
        if (Class != MEMORY[0x1E69E9E98])
        {
          v7 = MEMORY[0x1865DFA50](v4);
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v8 = gLogObj;
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            v28 = "[NWPrivilegedHelper startXPCListener]_block_invoke";
            v29 = 2082;
            v30 = v7;
            _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_ERROR, "%{public}s received unknown type for request: %{public}s", buf, 0x16u);
          }

          free(v7);
          goto LABEL_45;
        }

        if (v4 == MEMORY[0x1E69E9E18])
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v21 = gLogObj;
          if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_43;
          }

          *buf = 136446210;
          v28 = "[NWPrivilegedHelper startXPCListener]_block_invoke";
          v22 = "%{public}s received XPC_ERROR_CONNECTION_INTERRUPTED, removing connection";
        }

        else
        {
          if (v4 != MEMORY[0x1E69E9E20])
          {
            if (v4 != MEMORY[0x1E69E9E38])
            {
              v19 = MEMORY[0x1865DFA50](v4);
              v20 = __nwlog_obj();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136446466;
                v28 = "[NWPrivilegedHelper startXPCListener]_block_invoke";
                v29 = 2082;
                v30 = v19;
                _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_DEBUG, "%{public}s received unknown XPC error %{public}s, removing connection", buf, 0x16u);
              }

              free(v19);
              goto LABEL_44;
            }

            v21 = __nwlog_obj();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446210;
              v28 = "[NWPrivilegedHelper startXPCListener]_block_invoke";
              v22 = "%{public}s received XPC_ERROR_TERMINATION_IMMINENT, removing connection";
              goto LABEL_42;
            }

LABEL_43:

LABEL_44:
            v23 = *(*(a1 + 32) + 8);
            v24 = *(v23 + 40);
            *(v23 + 40) = 0;

            goto LABEL_45;
          }

          v21 = __nwlog_obj();
          if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_43;
          }

          *buf = 136446210;
          v28 = "[NWPrivilegedHelper startXPCListener]_block_invoke";
          v22 = "%{public}s received XPC_ERROR_CONNECTION_INVALID, removing connection";
        }

LABEL_42:
        _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_DEBUG, v22, buf, 0xCu);
        goto LABEL_43;
      }

      [WeakRetained handleRequest:v4 onConnection:*(*(*(a1 + 32) + 8) + 40)];
    }

LABEL_45:

    goto LABEL_46;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v9 = gLogObj;
  *buf = 136446210;
  v28 = "[NWPrivilegedHelper startXPCListener]_block_invoke";
  v10 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v25 = 0;
  if (__nwlog_fault(v10, &type, &v25))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v28 = "[NWPrivilegedHelper startXPCListener]_block_invoke";
        v13 = "%{public}s called with null request";
LABEL_23:
        v17 = v11;
        v18 = v12;
LABEL_24:
        _os_log_impl(&dword_181A37000, v17, v18, v13, buf, 0xCu);
      }
    }

    else
    {
      if (v25 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        v15 = type;
        v16 = os_log_type_enabled(v11, type);
        if (backtrace_string)
        {
          if (v16)
          {
            *buf = 136446466;
            v28 = "[NWPrivilegedHelper startXPCListener]_block_invoke";
            v29 = 2082;
            v30 = backtrace_string;
            _os_log_impl(&dword_181A37000, v11, v15, "%{public}s called with null request, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_26;
        }

        if (!v16)
        {
          goto LABEL_25;
        }

        *buf = 136446210;
        v28 = "[NWPrivilegedHelper startXPCListener]_block_invoke";
        v13 = "%{public}s called with null request, no backtrace";
        v17 = v11;
        v18 = v15;
        goto LABEL_24;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v28 = "[NWPrivilegedHelper startXPCListener]_block_invoke";
        v13 = "%{public}s called with null request, backtrace limit exceeded";
        goto LABEL_23;
      }
    }

LABEL_25:
  }

LABEL_26:
  if (v10)
  {
    free(v10);
  }

LABEL_46:
}

- (void)handleRequest:(id)a3 onConnection:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [[NWPHContext alloc] initWithRequest:v6 onConnection:v7];
  if (v8)
  {
    uint64 = xpc_dictionary_get_uint64(v6, networkd_privileged_key_type);
    v10 = [(NWPrivilegedHelper *)self handlers];
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:uint64];
    v12 = [v10 objectForKeyedSubscript:v11];

    if (v12)
    {
      v13 = [v12 allowedEntitlementGroup];
      v14 = connectionMatchesEntitlementGroup(v7, v13);

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v15 = gLogObj;
      v16 = v15;
      if (v14)
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          if ((uint64 - 2) > 0x14)
          {
            v17 = "unknown";
          }

          else
          {
            v17 = off_1E6A2B668[(uint64 - 2)];
          }

          v27 = 136446722;
          v28 = "[NWPrivilegedHelper handleRequest:onConnection:]";
          v29 = 2082;
          *v30 = v17;
          *&v30[8] = 1024;
          *v31 = [(NWPHContext *)v8 pid];
          _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_DEFAULT, "%{public}s Handling %{public}s from pid %d", &v27, 0x1Cu);
        }

        v22 = ([v12 handlerFunction])(v8);
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v16 = gLogObj;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          if ((uint64 - 2) > 0x14)
          {
            v23 = "unknown";
          }

          else
          {
            v23 = off_1E6A2B668[(uint64 - 2)];
          }

          v24 = [(NWPHContext *)v8 pid];
          v27 = 136446978;
          v28 = "[NWPrivilegedHelper handleRequest:onConnection:]";
          v29 = 2048;
          *v30 = v22;
          *&v30[8] = 2082;
          *v31 = v23;
          *&v31[8] = 1024;
          v32 = v24;
          _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_DEFAULT, "%{public}s Returning %lld for %{public}s to pid %d", &v27, 0x26u);
        }
      }

      else if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v20 = [(NWPHContext *)v8 pid];
        if ((uint64 - 2) > 0x14)
        {
          v21 = "unknown";
        }

        else
        {
          v21 = off_1E6A2B668[(uint64 - 2)];
        }

        v27 = 136446978;
        v28 = "[NWPrivilegedHelper handleRequest:onConnection:]";
        v29 = 1024;
        *v30 = v20;
        *&v30[4] = 1024;
        *&v30[6] = uint64;
        *v31 = 2082;
        *&v31[2] = v21;
        _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_ERROR, "%{public}s Client pid %d missing entitlements for type [%u] %{public}s", &v27, 0x22u);
        v22 = -1002;
      }

      else
      {
        v22 = -1002;
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v16 = gLogObj;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v18 = [(NWPHContext *)v8 pid];
        if ((uint64 - 2) > 0x14)
        {
          v19 = "unknown";
        }

        else
        {
          v19 = off_1E6A2B668[(uint64 - 2)];
        }

        v27 = 136446978;
        v28 = "[NWPrivilegedHelper handleRequest:onConnection:]";
        v29 = 1024;
        *v30 = v18;
        *&v30[4] = 1024;
        *&v30[6] = uint64;
        *v31 = 2082;
        *&v31[2] = v19;
        _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_ERROR, "%{public}s Client pid %d sent invalid type [%u] %{public}s", &v27, 0x22u);
      }

      v22 = -1003;
    }

    v25 = [(NWPHContext *)v8 reply];
    xpc_dictionary_set_int64(v25, networkd_privileged_key_result, v22);

    v26 = [(NWPHContext *)v8 reply];
    xpc_connection_send_message(v7, v26);
  }
}

- (NWPrivilegedHelper)initWithQueue:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ((gIsHelper & 1) == 0)
  {
    gIsHelper = 1;
    nw_allow_use_of_dispatch_internal();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
  }

  v36.receiver = self;
  v36.super_class = NWPrivilegedHelper;
  v5 = [(NWPrivilegedHelper *)&v36 init];
  v6 = v5;
  if (v5)
  {
    if (v4)
    {
      [(NWPrivilegedHelper *)v5 setQueue:v4];
    }

    else
    {
      v7 = getMainQueue();
      [(NWPrivilegedHelper *)v6 setQueue:v7];
    }

    v8 = [(NWPrivilegedHelper *)v6 queue];
    v9 = +[ManagedNetworkSettings sharedMNS];
    [v9 setQueue:v8];

    v10 = [MEMORY[0x1E695DF90] dictionary];
    [(NWPrivilegedHelper *)v6 setHandlers:v10];

    v11 = [MEMORY[0x1E695DFA8] set];
    [(NWPrivilegedHelper *)v6 setAllKnownEntitlementSet:v11];

    [(NWPrivilegedHelper *)v6 registerHelperFunctions];
    v12 = [MEMORY[0x1E695DF70] array];
    [(NWPrivilegedHelper *)v6 setAllKnownEntitlementGroup:v12];

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v13 = [(NWPrivilegedHelper *)v6 allKnownEntitlementSet];
    v14 = [v13 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v31;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v31 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v30 + 1) + 8 * i);
          v19 = [(NWPrivilegedHelper *)v6 allKnownEntitlementGroup];
          v37 = v18;
          v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
          [v19 addObject:v20];
        }

        v15 = [v13 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v15);
    }

    [(NWPrivilegedHelper *)v6 setAllKnownEntitlementSet:0];
    v21 = 0;
    if ([(NWPrivilegedHelper *)v6 startXPCListener])
    {
      [(NWPrivilegedHelper *)v6 startThrottlePolicyEventListener];
      v21 = v6;
    }

    goto LABEL_16;
  }

  v23 = __nwlog_obj();
  *buf = 136446210;
  v40 = "[NWPrivilegedHelper initWithQueue:]";
  v24 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v34 = 0;
  if (__nwlog_fault(v24, &type, &v34))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v25 = __nwlog_obj();
      v26 = type;
      if (os_log_type_enabled(v25, type))
      {
        *buf = 136446210;
        v40 = "[NWPrivilegedHelper initWithQueue:]";
        v27 = "%{public}s [super init] failed";
LABEL_30:
        _os_log_impl(&dword_181A37000, v25, v26, v27, buf, 0xCu);
      }
    }

    else
    {
      if (v34 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v25 = __nwlog_obj();
        v26 = type;
        v29 = os_log_type_enabled(v25, type);
        if (backtrace_string)
        {
          if (v29)
          {
            *buf = 136446466;
            v40 = "[NWPrivilegedHelper initWithQueue:]";
            v41 = 2082;
            v42 = backtrace_string;
            _os_log_impl(&dword_181A37000, v25, v26, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_32;
        }

        if (!v29)
        {
          goto LABEL_31;
        }

        *buf = 136446210;
        v40 = "[NWPrivilegedHelper initWithQueue:]";
        v27 = "%{public}s [super init] failed, no backtrace";
        goto LABEL_30;
      }

      v25 = __nwlog_obj();
      v26 = type;
      if (os_log_type_enabled(v25, type))
      {
        *buf = 136446210;
        v40 = "[NWPrivilegedHelper initWithQueue:]";
        v27 = "%{public}s [super init] failed, backtrace limit exceeded";
        goto LABEL_30;
      }
    }

LABEL_31:
  }

LABEL_32:
  if (v24)
  {
    free(v24);
  }

  v21 = 0;
LABEL_16:

  return v21;
}

- (void)startThrottlePolicyEventListener
{
  v2 = [(NWPrivilegedHelper *)self queue];
  xpc_set_event_stream_handler("com.apple.notifyd.matching", v2, &__block_literal_global_45674);
}

void __54__NWPrivilegedHelper_startThrottlePolicyEventListener__block_invoke(uint64_t a1, void *a2)
{
  *&v40[13] = *MEMORY[0x1E69E9840];
  v2 = a2;
  v32 = 0;
  v31 = 4;
  if (sysctlbyname("kern.ipc.io_policy.throttled", &v32, &v31, 0, 0))
  {
    v3 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    v5 = v4;
    if (v3 == 2)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v34 = "[NWPrivilegedHelper startThrottlePolicyEventListener]_block_invoke";
        v35 = 2082;
        v36 = "kern.ipc.io_policy.throttled";
        v37 = 1024;
        v38 = 2;
        _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_ERROR, "%{public}s sysctlbyname(%{public}s) read failed %{darwin.errno}d", buf, 0x1Cu);
      }

LABEL_22:
      v32 = -1;
      goto LABEL_23;
    }

    *buf = 136446722;
    v34 = "[NWPrivilegedHelper startThrottlePolicyEventListener]_block_invoke";
    v35 = 2082;
    v36 = "kern.ipc.io_policy.throttled";
    v37 = 1024;
    v38 = v3;
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v29 = 0;
    if (!__nwlog_fault(v6, &type, &v29))
    {
LABEL_20:
      if (v6)
      {
        free(v6);
      }

      goto LABEL_22;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446722;
        v34 = "[NWPrivilegedHelper startThrottlePolicyEventListener]_block_invoke";
        v35 = 2082;
        v36 = "kern.ipc.io_policy.throttled";
        v37 = 1024;
        v38 = v3;
        v9 = "%{public}s sysctlbyname(%{public}s) read failed %{darwin.errno}d";
LABEL_17:
        v13 = v7;
        v14 = v8;
LABEL_18:
        _os_log_impl(&dword_181A37000, v13, v14, v9, buf, 0x1Cu);
      }
    }

    else
    {
      if (v29 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        v11 = type;
        v12 = os_log_type_enabled(v7, type);
        if (backtrace_string)
        {
          if (v12)
          {
            *buf = 136446978;
            v34 = "[NWPrivilegedHelper startThrottlePolicyEventListener]_block_invoke";
            v35 = 2082;
            v36 = "kern.ipc.io_policy.throttled";
            v37 = 1024;
            v38 = v3;
            v39 = 2082;
            *v40 = backtrace_string;
            _os_log_impl(&dword_181A37000, v7, v11, "%{public}s sysctlbyname(%{public}s) read failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x26u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v12)
        {
          goto LABEL_19;
        }

        *buf = 136446722;
        v34 = "[NWPrivilegedHelper startThrottlePolicyEventListener]_block_invoke";
        v35 = 2082;
        v36 = "kern.ipc.io_policy.throttled";
        v37 = 1024;
        v38 = v3;
        v9 = "%{public}s sysctlbyname(%{public}s) read failed %{darwin.errno}d, no backtrace";
        v13 = v7;
        v14 = v11;
        goto LABEL_18;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446722;
        v34 = "[NWPrivilegedHelper startThrottlePolicyEventListener]_block_invoke";
        v35 = 2082;
        v36 = "kern.ipc.io_policy.throttled";
        v37 = 1024;
        v38 = v3;
        v9 = "%{public}s sysctlbyname(%{public}s) read failed %{darwin.errno}d, backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_19:

    goto LABEL_20;
  }

LABEL_23:
  v15 = xpc_dictionary_get_uint64(v2, "_State") & 1;
  if (v15 == v32)
  {
    goto LABEL_48;
  }

  if (sysctlbyname("kern.ipc.io_policy.throttled", 0, 0, &v32, 4uLL))
  {
    v16 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v17 = gLogObj;
    v18 = v17;
    if (v16 == 2)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        v34 = "[NWPrivilegedHelper startThrottlePolicyEventListener]_block_invoke";
        v35 = 2082;
        v36 = "kern.ipc.io_policy.throttled";
        v37 = 1024;
        v38 = v15;
        v39 = 1024;
        *v40 = 2;
        _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_ERROR, "%{public}s sysctlbyname(%{public}s) to %d failed %{darwin.errno}d", buf, 0x22u);
      }

      goto LABEL_48;
    }

    *buf = 136446978;
    v34 = "[NWPrivilegedHelper startThrottlePolicyEventListener]_block_invoke";
    v35 = 2082;
    v36 = "kern.ipc.io_policy.throttled";
    v37 = 1024;
    v38 = v15;
    v39 = 1024;
    *v40 = v16;
    v20 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v29 = 0;
    if (!__nwlog_fault(v20, &type, &v29))
    {
      goto LABEL_46;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v21 = gLogObj;
      v22 = type;
      if (os_log_type_enabled(v21, type))
      {
        *buf = 136446978;
        v34 = "[NWPrivilegedHelper startThrottlePolicyEventListener]_block_invoke";
        v35 = 2082;
        v36 = "kern.ipc.io_policy.throttled";
        v37 = 1024;
        v38 = v15;
        v39 = 1024;
        *v40 = v16;
        v23 = "%{public}s sysctlbyname(%{public}s) to %d failed %{darwin.errno}d";
LABEL_43:
        v27 = v21;
        v28 = v22;
LABEL_44:
        _os_log_impl(&dword_181A37000, v27, v28, v23, buf, 0x22u);
      }
    }

    else if (v29 == 1)
    {
      v24 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v21 = gLogObj;
      v25 = type;
      v26 = os_log_type_enabled(v21, type);
      if (v24)
      {
        if (v26)
        {
          *buf = 136447234;
          v34 = "[NWPrivilegedHelper startThrottlePolicyEventListener]_block_invoke";
          v35 = 2082;
          v36 = "kern.ipc.io_policy.throttled";
          v37 = 1024;
          v38 = v15;
          v39 = 1024;
          *v40 = v16;
          v40[2] = 2082;
          *&v40[3] = v24;
          _os_log_impl(&dword_181A37000, v21, v25, "%{public}s sysctlbyname(%{public}s) to %d failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x2Cu);
        }

        free(v24);
        goto LABEL_46;
      }

      if (v26)
      {
        *buf = 136446978;
        v34 = "[NWPrivilegedHelper startThrottlePolicyEventListener]_block_invoke";
        v35 = 2082;
        v36 = "kern.ipc.io_policy.throttled";
        v37 = 1024;
        v38 = v15;
        v39 = 1024;
        *v40 = v16;
        v23 = "%{public}s sysctlbyname(%{public}s) to %d failed %{darwin.errno}d, no backtrace";
        v27 = v21;
        v28 = v25;
        goto LABEL_44;
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v21 = gLogObj;
      v22 = type;
      if (os_log_type_enabled(v21, type))
      {
        *buf = 136446978;
        v34 = "[NWPrivilegedHelper startThrottlePolicyEventListener]_block_invoke";
        v35 = 2082;
        v36 = "kern.ipc.io_policy.throttled";
        v37 = 1024;
        v38 = v15;
        v39 = 1024;
        *v40 = v16;
        v23 = "%{public}s sysctlbyname(%{public}s) to %d failed %{darwin.errno}d, backtrace limit exceeded";
        goto LABEL_43;
      }
    }

LABEL_46:
    if (v20)
    {
      free(v20);
    }

    goto LABEL_48;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v19 = gLogObj;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446978;
    v34 = "[NWPrivilegedHelper startThrottlePolicyEventListener]_block_invoke";
    v35 = 2082;
    v36 = "kern.ipc.io_policy.throttled";
    v37 = 1024;
    v38 = v15;
    v39 = 1024;
    *v40 = v32;
    _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s=%d (old=%d)", buf, 0x22u);
  }

LABEL_48:
}

- (BOOL)startXPCListener
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = networkd_privileged_service;
  v4 = [(NWPrivilegedHelper *)self queue];
  mach_service = xpc_connection_create_mach_service(v3, v4, 1uLL);
  [(NWPrivilegedHelper *)self setListener:mach_service];

  v6 = [(NWPrivilegedHelper *)self listener];

  if (!v6)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v14 = gLogObj;
    *buf = 136446466;
    v31 = "[NWPrivilegedHelper startXPCListener]";
    v32 = 2082;
    v33 = networkd_privileged_service;
    v11 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v11, &type, &v28))
    {
      goto LABEL_37;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v12 = gLogObj;
      v15 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446466;
        v31 = "[NWPrivilegedHelper startXPCListener]";
        v32 = 2082;
        v33 = networkd_privileged_service;
        _os_log_impl(&dword_181A37000, v12, v15, "%{public}s FATAL: xpc_connection_create_mach_service(%{public}s, LISTENER) failed", buf, 0x16u);
      }

      goto LABEL_36;
    }

    if (v28 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v12 = gLogObj;
      v25 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446466;
        v31 = "[NWPrivilegedHelper startXPCListener]";
        v32 = 2082;
        v33 = networkd_privileged_service;
        _os_log_impl(&dword_181A37000, v12, v25, "%{public}s FATAL: xpc_connection_create_mach_service(%{public}s, LISTENER) failed, backtrace limit exceeded", buf, 0x16u);
      }

      goto LABEL_36;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v12 = gLogObj;
    v22 = type;
    v23 = os_log_type_enabled(v12, type);
    if (!backtrace_string)
    {
      if (v23)
      {
        *buf = 136446466;
        v31 = "[NWPrivilegedHelper startXPCListener]";
        v32 = 2082;
        v33 = networkd_privileged_service;
        _os_log_impl(&dword_181A37000, v12, v22, "%{public}s FATAL: xpc_connection_create_mach_service(%{public}s, LISTENER) failed, no backtrace", buf, 0x16u);
      }

      goto LABEL_36;
    }

    if (v23)
    {
      *buf = 136446722;
      v31 = "[NWPrivilegedHelper startXPCListener]";
      v32 = 2082;
      v33 = networkd_privileged_service;
      v34 = 2082;
      v35 = backtrace_string;
      _os_log_impl(&dword_181A37000, v12, v22, "%{public}s FATAL: xpc_connection_create_mach_service(%{public}s, LISTENER) failed, dumping backtrace:%{public}s", buf, 0x20u);
    }

    goto LABEL_23;
  }

  v7 = [(NWPrivilegedHelper *)self listener];
  Class = object_getClass(v7);
  v9 = MEMORY[0x1E69E9E68];

  if (Class == v9)
  {
    objc_initWeak(buf, self);
    v16 = [(NWPrivilegedHelper *)self listener];
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __38__NWPrivilegedHelper_startXPCListener__block_invoke;
    handler[3] = &unk_1E6A33348;
    objc_copyWeak(&v27, buf);
    handler[4] = self;
    xpc_connection_set_event_handler(v16, handler);

    v17 = [(NWPrivilegedHelper *)self listener];
    xpc_connection_resume(v17);

    objc_destroyWeak(&v27);
    objc_destroyWeak(buf);
    return 1;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v10 = gLogObj;
  *buf = 136446466;
  v31 = "[NWPrivilegedHelper startXPCListener]";
  v32 = 2082;
  v33 = networkd_privileged_service;
  v11 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v28 = 0;
  if (__nwlog_fault(v11, &type, &v28))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v12 = gLogObj;
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446466;
        v31 = "[NWPrivilegedHelper startXPCListener]";
        v32 = 2082;
        v33 = networkd_privileged_service;
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s FATAL: xpc_connection_create_mach_service(%{public}s, LISTENER) - wrong type failed", buf, 0x16u);
      }

LABEL_36:

      goto LABEL_37;
    }

    if (v28 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v12 = gLogObj;
      v24 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446466;
        v31 = "[NWPrivilegedHelper startXPCListener]";
        v32 = 2082;
        v33 = networkd_privileged_service;
        _os_log_impl(&dword_181A37000, v12, v24, "%{public}s FATAL: xpc_connection_create_mach_service(%{public}s, LISTENER) - wrong type failed, backtrace limit exceeded", buf, 0x16u);
      }

      goto LABEL_36;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v12 = gLogObj;
    v20 = type;
    v21 = os_log_type_enabled(v12, type);
    if (!backtrace_string)
    {
      if (v21)
      {
        *buf = 136446466;
        v31 = "[NWPrivilegedHelper startXPCListener]";
        v32 = 2082;
        v33 = networkd_privileged_service;
        _os_log_impl(&dword_181A37000, v12, v20, "%{public}s FATAL: xpc_connection_create_mach_service(%{public}s, LISTENER) - wrong type failed, no backtrace", buf, 0x16u);
      }

      goto LABEL_36;
    }

    if (v21)
    {
      *buf = 136446722;
      v31 = "[NWPrivilegedHelper startXPCListener]";
      v32 = 2082;
      v33 = networkd_privileged_service;
      v34 = 2082;
      v35 = backtrace_string;
      _os_log_impl(&dword_181A37000, v12, v20, "%{public}s FATAL: xpc_connection_create_mach_service(%{public}s, LISTENER) - wrong type failed, dumping backtrace:%{public}s", buf, 0x20u);
    }

LABEL_23:

    free(backtrace_string);
    if (!v11)
    {
      return 0;
    }

    goto LABEL_38;
  }

LABEL_37:
  if (v11)
  {
LABEL_38:
    free(v11);
  }

  return 0;
}

void __38__NWPrivilegedHelper_startXPCListener__block_invoke(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    if (!WeakRetained)
    {
      goto LABEL_50;
    }

    Class = object_getClass(v3);
    if (Class == MEMORY[0x1E69E9E68])
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v38 = __Block_byref_object_copy__45706;
      v39 = __Block_byref_object_dispose__45707;
      v18 = v3;
      v40 = v18;
      v19 = [WeakRetained allKnownEntitlementGroup];
      LOBYTE(v18) = connectionMatchesEntitlementGroup(v18, v19);

      if (v18)
      {
        v20 = *(*&buf[8] + 40);
        v21 = [*(a1 + 32) queue];
        xpc_connection_set_target_queue(v20, v21);

        objc_initWeak(type, WeakRetained);
        v22 = *(*&buf[8] + 40);
        handler[0] = MEMORY[0x1E69E9820];
        handler[1] = 3221225472;
        handler[2] = __38__NWPrivilegedHelper_startXPCListener__block_invoke_73;
        handler[3] = &unk_1E6A33320;
        handler[4] = buf;
        objc_copyWeak(&v31, type);
        xpc_connection_set_event_handler(v22, handler);
        xpc_connection_resume(*(*&buf[8] + 40));
        objc_destroyWeak(&v31);
        objc_destroyWeak(type);
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v24 = gLogObj;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          pid = xpc_connection_get_pid(*(*&buf[8] + 40));
          *type = 136446466;
          v34 = "[NWPrivilegedHelper startXPCListener]_block_invoke";
          v35 = 1024;
          v36 = pid;
          _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_ERROR, "%{public}s client pid %d does not have any known entitlement", type, 0x12u);
        }

        xpc_connection_cancel(*(*&buf[8] + 40));
      }

      _Block_object_dispose(buf, 8);

      goto LABEL_50;
    }

    if (Class != MEMORY[0x1E69E9E98])
    {
LABEL_50:

      goto LABEL_51;
    }

    v6 = MEMORY[0x1865DFA50](v3);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    *buf = 136446466;
    *&buf[4] = "[NWPrivilegedHelper startXPCListener]_block_invoke";
    *&buf[12] = 2082;
    *&buf[14] = v6;
    v8 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (__nwlog_fault(v8, type, &v32))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = type[0];
        if (os_log_type_enabled(v9, type[0]))
        {
          *buf = 136446466;
          *&buf[4] = "[NWPrivilegedHelper startXPCListener]_block_invoke";
          *&buf[12] = 2082;
          *&buf[14] = v6;
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s FATAL: XPC listener received error %{public}s", buf, 0x16u);
        }
      }

      else if (v32 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v27 = type[0];
        v28 = os_log_type_enabled(v9, type[0]);
        if (backtrace_string)
        {
          if (v28)
          {
            *buf = 136446722;
            *&buf[4] = "[NWPrivilegedHelper startXPCListener]_block_invoke";
            *&buf[12] = 2082;
            *&buf[14] = v6;
            *&buf[22] = 2082;
            v38 = backtrace_string;
            _os_log_impl(&dword_181A37000, v9, v27, "%{public}s FATAL: XPC listener received error %{public}s, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(backtrace_string);
          if (!v8)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        }

        if (v28)
        {
          *buf = 136446466;
          *&buf[4] = "[NWPrivilegedHelper startXPCListener]_block_invoke";
          *&buf[12] = 2082;
          *&buf[14] = v6;
          _os_log_impl(&dword_181A37000, v9, v27, "%{public}s FATAL: XPC listener received error %{public}s, no backtrace", buf, 0x16u);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v29 = type[0];
        if (os_log_type_enabled(v9, type[0]))
        {
          *buf = 136446466;
          *&buf[4] = "[NWPrivilegedHelper startXPCListener]_block_invoke";
          *&buf[12] = 2082;
          *&buf[14] = v6;
          _os_log_impl(&dword_181A37000, v9, v29, "%{public}s FATAL: XPC listener received error %{public}s, backtrace limit exceeded", buf, 0x16u);
        }
      }
    }

    if (!v8)
    {
LABEL_49:
      free(v6);
      goto LABEL_50;
    }

LABEL_48:
    free(v8);
    goto LABEL_49;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v11 = gLogObj;
  *buf = 136446210;
  *&buf[4] = "[NWPrivilegedHelper startXPCListener]_block_invoke";
  v12 = _os_log_send_and_compose_impl();

  type[0] = OS_LOG_TYPE_ERROR;
  v32 = 0;
  if (__nwlog_fault(v12, type, &v32))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v14 = type[0];
      if (os_log_type_enabled(v13, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "[NWPrivilegedHelper startXPCListener]_block_invoke";
        _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null msg", buf, 0xCu);
      }
    }

    else if (v32 == 1)
    {
      v15 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v16 = type[0];
      v17 = os_log_type_enabled(v13, type[0]);
      if (v15)
      {
        if (v17)
        {
          *buf = 136446466;
          *&buf[4] = "[NWPrivilegedHelper startXPCListener]_block_invoke";
          *&buf[12] = 2082;
          *&buf[14] = v15;
          _os_log_impl(&dword_181A37000, v13, v16, "%{public}s called with null msg, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v15);
        if (v12)
        {
          goto LABEL_40;
        }

        goto LABEL_51;
      }

      if (v17)
      {
        *buf = 136446210;
        *&buf[4] = "[NWPrivilegedHelper startXPCListener]_block_invoke";
        _os_log_impl(&dword_181A37000, v13, v16, "%{public}s called with null msg, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v23 = type[0];
      if (os_log_type_enabled(v13, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "[NWPrivilegedHelper startXPCListener]_block_invoke";
        _os_log_impl(&dword_181A37000, v13, v23, "%{public}s called with null msg, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

  if (v12)
  {
LABEL_40:
    free(v12);
  }

LABEL_51:
}

- (void)registerHelperFunctions
{
  v90[2] = *MEMORY[0x1E69E9840];
  v89 = @"com.apple.networkd_privileged";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v89 count:1];
  v90[0] = v3;
  v88 = @"com.apple.networkd.disable_opportunistic";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v88 count:1];
  v90[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v90 count:2];
  [(NWPrivilegedHelper *)self registerHandlerFunction:handleOpportunistic type:2 allowedEntitlementGroup:v5];

  v86 = @"com.apple.networkd_privileged";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v86 count:1];
  v87[0] = v6;
  v85 = @"com.apple.networkd.persistent_interface";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v85 count:1];
  v87[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v87 count:2];
  [(NWPrivilegedHelper *)self registerHandlerFunction:handleCreateNetworkAgentKernelSocket type:12 allowedEntitlementGroup:v8];

  v83 = @"com.apple.networkd_privileged";
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v83 count:1];
  v84[0] = v9;
  v82 = @"com.apple.networkd.advisory_socket";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v82 count:1];
  v84[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v84 count:2];
  [(NWPrivilegedHelper *)self registerHandlerFunction:handleCreateNetworkAdvisoryKernelSocket type:13 allowedEntitlementGroup:v11];

  v80 = @"com.apple.networkd_privileged";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v80 count:1];
  v81 = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v81 count:1];
  [(NWPrivilegedHelper *)self registerHandlerFunction:handleSetNetworkAgentOnInterface type:8 allowedEntitlementGroup:v13];

  v78 = @"com.apple.networkd_privileged";
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v78 count:1];
  v79[0] = v14;
  v77 = @"com.apple.networkd.persistent_interface";
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v77 count:1];
  v79[1] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v79 count:2];
  [(NWPrivilegedHelper *)self registerHandlerFunction:handleSetPersistentNetworkAgentOnInterface type:14 allowedEntitlementGroup:v16];

  v75 = @"com.apple.networkd_privileged";
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v75 count:1];
  v76 = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v76 count:1];
  [(NWPrivilegedHelper *)self registerHandlerFunction:handleReloadManagedNetworkSettings type:9 allowedEntitlementGroup:v18];

  v73 = @"com.apple.networkd_privileged";
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v73 count:1];
  v74[0] = v19;
  v72 = @"com.apple.networkd.modify_settings";
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v72 count:1];
  v74[1] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:2];
  [(NWPrivilegedHelper *)self registerHandlerFunction:handleCheckMobileAsset type:11 allowedEntitlementGroup:v21];

  v70 = @"com.apple.networkd_privileged";
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v70 count:1];
  v71[0] = v22;
  v69 = @"com.apple.networkd.modify_settings";
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v69 count:1];
  v71[1] = v23;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:2];
  [(NWPrivilegedHelper *)self registerHandlerFunction:handleSetNetworkdSetting type:10 allowedEntitlementGroup:v24];

  v67 = @"com.apple.networkd_privileged";
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v67 count:1];
  v68[0] = v25;
  v66 = @"com.apple.networkd.modify_settings";
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v66 count:1];
  v68[1] = v26;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:2];
  [(NWPrivilegedHelper *)self registerHandlerFunction:handleConstrained type:15 allowedEntitlementGroup:v27];

  v64 = @"com.apple.networkd_privileged";
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v64 count:1];
  v65[0] = v28;
  v63 = @"com.apple.networkd.modify_settings";
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v63 count:1];
  v65[1] = v29;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:2];
  [(NWPrivilegedHelper *)self registerHandlerFunction:handleUltraConstrained type:22 allowedEntitlementGroup:v30];

  v61 = @"com.apple.networkd_privileged";
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v61 count:1];
  v62[0] = v31;
  v60 = @"com.apple.networkd.modify_settings";
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v60 count:1];
  v62[1] = v32;
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:2];
  [(NWPrivilegedHelper *)self registerHandlerFunction:handleExpensive type:16 allowedEntitlementGroup:v33];

  v58 = @"com.apple.networkd_privileged";
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v58 count:1];
  v59 = v34;
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v59 count:1];
  [(NWPrivilegedHelper *)self registerHandlerFunction:handleSetupFakeEthernetPair type:17 allowedEntitlementGroup:v35];

  v56 = @"com.apple.networkd_privileged";
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v56 count:1];
  v57 = v36;
  v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v57 count:1];
  [(NWPrivilegedHelper *)self registerHandlerFunction:handleTeardownFakeEthernetPair type:18 allowedEntitlementGroup:v37];

  v54 = @"com.apple.networkd_privileged";
  v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v54 count:1];
  v55[0] = v38;
  v53 = @"com.apple.networkd.modify_settings";
  v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v53 count:1];
  v55[1] = v39;
  v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:2];
  [(NWPrivilegedHelper *)self registerHandlerFunction:handleThroughputEstimates type:19 allowedEntitlementGroup:v40];

  v51 = @"com.apple.networkd_privileged";
  v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v51 count:1];
  v52[0] = v41;
  v50 = @"com.apple.networkd.modify_settings";
  v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v50 count:1];
  v52[1] = v42;
  v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:2];
  [(NWPrivilegedHelper *)self registerHandlerFunction:handleRadioType type:20 allowedEntitlementGroup:v43];

  v48 = @"com.apple.networkd_privileged";
  v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1];
  v49[0] = v44;
  v47 = @"com.apple.networkd.modify_settings";
  v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v47 count:1];
  v49[1] = v45;
  v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:2];
  [(NWPrivilegedHelper *)self registerHandlerFunction:handleRunProbes type:21 allowedEntitlementGroup:v46];
}

- (void)registerHandlerFunction:(void *)a3 type:(int)a4 allowedEntitlementGroup:(id)a5
{
  v5 = *&a4;
  v108 = *MEMORY[0x1E69E9840];
  v8 = a5;
  if (!a3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v16 = gLogObj;
    *buf = 136446210;
    v99 = "[NWPrivilegedHelper registerHandlerFunction:type:allowedEntitlementGroup:]";
    v17 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v96 = 0;
    if (__nwlog_fault(v17, &type, &v96))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v19 = type;
        if (!os_log_type_enabled(v18, type))
        {
          goto LABEL_50;
        }

        *buf = 136446210;
        v99 = "[NWPrivilegedHelper registerHandlerFunction:type:allowedEntitlementGroup:]";
        v20 = "%{public}s called with null handlerFunction";
LABEL_48:
        v50 = v18;
        v51 = v19;
        goto LABEL_49;
      }

      if (v96 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v19 = type;
        if (!os_log_type_enabled(v18, type))
        {
          goto LABEL_50;
        }

        *buf = 136446210;
        v99 = "[NWPrivilegedHelper registerHandlerFunction:type:allowedEntitlementGroup:]";
        v20 = "%{public}s called with null handlerFunction, backtrace limit exceeded";
        goto LABEL_48;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v18 = gLogObj;
      v22 = type;
      v23 = os_log_type_enabled(v18, type);
      if (!backtrace_string)
      {
        if (!v23)
        {
LABEL_50:

          if (!v17)
          {
            goto LABEL_132;
          }

LABEL_51:
          free(v17);
          goto LABEL_132;
        }

        *buf = 136446210;
        v99 = "[NWPrivilegedHelper registerHandlerFunction:type:allowedEntitlementGroup:]";
        v20 = "%{public}s called with null handlerFunction, no backtrace";
        v50 = v18;
        v51 = v22;
LABEL_49:
        _os_log_impl(&dword_181A37000, v50, v51, v20, buf, 0xCu);
        goto LABEL_50;
      }

      if (v23)
      {
        *buf = 136446466;
        v99 = "[NWPrivilegedHelper registerHandlerFunction:type:allowedEntitlementGroup:]";
        v100 = 2082;
        *v101 = backtrace_string;
        _os_log_impl(&dword_181A37000, v18, v22, "%{public}s called with null handlerFunction, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v17)
    {
      goto LABEL_132;
    }

    goto LABEL_51;
  }

  v9 = [[NWPHHandler alloc] initWithHandlerFunction:a3 allowedEntitlementGroup:v8];
  if (!v9)
  {
    goto LABEL_131;
  }

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v5];
  v11 = [(NWPrivilegedHelper *)self handlers];
  v12 = [v11 objectForKeyedSubscript:v10];

  v86 = v10;
  v87 = v9;
  if (v12)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v13 = gLogObj;
    v14 = v5 - 2;
    if ((v5 - 2) > 0x14)
    {
      v15 = "unknown";
    }

    else
    {
      v15 = off_1E6A2B668[v14];
    }

    *buf = 136446722;
    v99 = "[NWPrivilegedHelper registerHandlerFunction:type:allowedEntitlementGroup:]";
    v100 = 1024;
    *v101 = v5;
    *&v101[4] = 2082;
    *&v101[6] = v15;
    v40 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v96 = 0;
    if (__nwlog_fault(v40, &type, &v96))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v41 = gLogObj;
        v42 = type;
        if (os_log_type_enabled(v41, type))
        {
          if (v14 > 0x14)
          {
            v43 = "unknown";
          }

          else
          {
            v43 = off_1E6A2B668[v14];
          }

          *buf = 136446722;
          v99 = "[NWPrivilegedHelper registerHandlerFunction:type:allowedEntitlementGroup:]";
          v100 = 1024;
          *v101 = v5;
          *&v101[4] = 2082;
          *&v101[6] = v43;
          v68 = "%{public}s Trying to reregister handler for type [%u] %{public}s";
          goto LABEL_125;
        }

        goto LABEL_126;
      }

      if (v96 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v41 = gLogObj;
        v42 = type;
        if (os_log_type_enabled(v41, type))
        {
          if (v14 > 0x14)
          {
            v55 = "unknown";
          }

          else
          {
            v55 = off_1E6A2B668[v14];
          }

          *buf = 136446722;
          v99 = "[NWPrivilegedHelper registerHandlerFunction:type:allowedEntitlementGroup:]";
          v100 = 1024;
          *v101 = v5;
          *&v101[4] = 2082;
          *&v101[6] = v55;
          v68 = "%{public}s Trying to reregister handler for type [%u] %{public}s, backtrace limit exceeded";
          goto LABEL_125;
        }

        goto LABEL_126;
      }

      v44 = v8;
      v45 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v46 = gLogObj;
      v47 = type;
      v48 = os_log_type_enabled(v46, type);
      if (v45)
      {
        if (v48)
        {
          if (v14 > 0x14)
          {
            v49 = "unknown";
          }

          else
          {
            v49 = off_1E6A2B668[v14];
          }

          *buf = 136446978;
          v99 = "[NWPrivilegedHelper registerHandlerFunction:type:allowedEntitlementGroup:]";
          v100 = 1024;
          *v101 = v5;
          *&v101[4] = 2082;
          *&v101[6] = v49;
          v102 = 2082;
          v103 = v45;
          _os_log_impl(&dword_181A37000, v46, v47, "%{public}s Trying to reregister handler for type [%u] %{public}s, dumping backtrace:%{public}s", buf, 0x26u);
        }

        free(v45);
        v8 = v44;
      }

      else
      {
        v8 = v44;
        if (v48)
        {
          if (v14 > 0x14)
          {
            v76 = "unknown";
          }

          else
          {
            v76 = off_1E6A2B668[v14];
          }

          *buf = 136446722;
          v99 = "[NWPrivilegedHelper registerHandlerFunction:type:allowedEntitlementGroup:]";
          v100 = 1024;
          *v101 = v5;
          *&v101[4] = 2082;
          *&v101[6] = v76;
          _os_log_impl(&dword_181A37000, v46, v47, "%{public}s Trying to reregister handler for type [%u] %{public}s, no backtrace", buf, 0x1Cu);
        }
      }
    }

    goto LABEL_127;
  }

  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v24 = v8;
  v25 = [v24 countByEnumeratingWithState:&v92 objects:v107 count:16];
  if (!v25)
  {

    goto LABEL_58;
  }

  v26 = v25;
  v27 = 0;
  v28 = *v93;
  v84 = v8;
  v85 = v24;
  v82 = *v93;
  do
  {
    v29 = 0;
    v83 = v26;
    do
    {
      if (*v93 != v28)
      {
        objc_enumerationMutation(v24);
      }

      v30 = *(*(&v92 + 1) + 8 * v29);
      v88 = 0u;
      v89 = 0u;
      v90 = 0u;
      v91 = 0u;
      v31 = v30;
      v32 = [v31 countByEnumeratingWithState:&v88 objects:v106 count:16];
      if (!v32)
      {
        goto LABEL_31;
      }

      v33 = v32;
      v34 = *v89;
      while (2)
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v89 != v34)
          {
            objc_enumerationMutation(v31);
          }

          v36 = *(*(&v88 + 1) + 8 * i);
          if (([v36 hasPrefix:@"com.apple."] & 1) == 0)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v52 = gLogObj;
            v53 = v5 - 2;
            if ((v5 - 2) > 0x14)
            {
              v54 = "unknown";
            }

            else
            {
              v54 = off_1E6A2B668[v53];
            }

            *buf = 136446978;
            v99 = "[NWPrivilegedHelper registerHandlerFunction:type:allowedEntitlementGroup:]";
            v100 = 1024;
            *v101 = v5;
            *&v101[4] = 2082;
            *&v101[6] = v54;
            v102 = 2114;
            v103 = v36;
            v59 = _os_log_send_and_compose_impl();

            type = OS_LOG_TYPE_ERROR;
            v96 = 0;
            if (__nwlog_fault(v59, &type, &v96))
            {
              if (type == OS_LOG_TYPE_FAULT)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v60 = gLogObj;
                v61 = type;
                if (os_log_type_enabled(v60, type))
                {
                  if (v53 > 0x14)
                  {
                    v62 = "unknown";
                  }

                  else
                  {
                    v62 = off_1E6A2B668[v53];
                  }

                  *buf = 136446978;
                  v99 = "[NWPrivilegedHelper registerHandlerFunction:type:allowedEntitlementGroup:]";
                  v100 = 1024;
                  *v101 = v5;
                  *&v101[4] = 2082;
                  *&v101[6] = v62;
                  v102 = 2114;
                  v103 = v36;
                  v79 = "%{public}s Refusing to register handler for type [%u] %{public}s with invalid entitlement %{public}@";
                  goto LABEL_112;
                }

                goto LABEL_113;
              }

              if (v96 == 1)
              {
                v63 = __nw_create_backtrace_string();
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v64 = gLogObj;
                v65 = type;
                v66 = os_log_type_enabled(v64, type);
                if (v63)
                {
                  if (v66)
                  {
                    if (v53 > 0x14)
                    {
                      v67 = "unknown";
                    }

                    else
                    {
                      v67 = off_1E6A2B668[v53];
                    }

                    *buf = 136447234;
                    v99 = "[NWPrivilegedHelper registerHandlerFunction:type:allowedEntitlementGroup:]";
                    v100 = 1024;
                    *v101 = v5;
                    *&v101[4] = 2082;
                    *&v101[6] = v67;
                    v102 = 2114;
                    v103 = v36;
                    v104 = 2082;
                    v105 = v63;
                    _os_log_impl(&dword_181A37000, v64, v65, "%{public}s Refusing to register handler for type [%u] %{public}s with invalid entitlement %{public}@, dumping backtrace:%{public}s", buf, 0x30u);
                  }

                  free(v63);
                }

                else
                {
                  if (v66)
                  {
                    if (v53 > 0x14)
                    {
                      v80 = "unknown";
                    }

                    else
                    {
                      v80 = off_1E6A2B668[v53];
                    }

                    *buf = 136446978;
                    v99 = "[NWPrivilegedHelper registerHandlerFunction:type:allowedEntitlementGroup:]";
                    v100 = 1024;
                    *v101 = v5;
                    *&v101[4] = 2082;
                    *&v101[6] = v80;
                    v102 = 2114;
                    v103 = v36;
                    _os_log_impl(&dword_181A37000, v64, v65, "%{public}s Refusing to register handler for type [%u] %{public}s with invalid entitlement %{public}@, no backtrace", buf, 0x26u);
                  }
                }
              }

              else
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v60 = gLogObj;
                v61 = type;
                if (os_log_type_enabled(v60, type))
                {
                  if (v53 > 0x14)
                  {
                    v77 = "unknown";
                  }

                  else
                  {
                    v77 = off_1E6A2B668[v53];
                  }

                  *buf = 136446978;
                  v99 = "[NWPrivilegedHelper registerHandlerFunction:type:allowedEntitlementGroup:]";
                  v100 = 1024;
                  *v101 = v5;
                  *&v101[4] = 2082;
                  *&v101[6] = v77;
                  v102 = 2114;
                  v103 = v36;
                  v79 = "%{public}s Refusing to register handler for type [%u] %{public}s with invalid entitlement %{public}@, backtrace limit exceeded";
LABEL_112:
                  _os_log_impl(&dword_181A37000, v60, v61, v79, buf, 0x26u);
                }

LABEL_113:
              }
            }

            if (v59)
            {
              free(v59);
            }

            v8 = v84;
            goto LABEL_129;
          }

          v37 = [(NWPrivilegedHelper *)self allKnownEntitlementSet];
          [v37 addObject:v36];
        }

        v33 = [v31 countByEnumeratingWithState:&v88 objects:v106 count:16];
        if (v33)
        {
          continue;
        }

        break;
      }

      v27 = 1;
      v8 = v84;
      v28 = v82;
      v26 = v83;
LABEL_31:

      ++v29;
      v24 = v85;
    }

    while (v29 != v26);
    v26 = [v85 countByEnumeratingWithState:&v92 objects:v107 count:16];
  }

  while (v26);

  if (v27)
  {
    v38 = [(NWPrivilegedHelper *)self handlers];
    v39 = v86;
    v9 = v87;
    [v38 setObject:v87 forKeyedSubscript:v86];

    goto LABEL_130;
  }

LABEL_58:
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v56 = gLogObj;
  v57 = v5 - 2;
  if ((v5 - 2) > 0x14)
  {
    v58 = "unknown";
  }

  else
  {
    v58 = off_1E6A2B668[v57];
  }

  *buf = 136446722;
  v99 = "[NWPrivilegedHelper registerHandlerFunction:type:allowedEntitlementGroup:]";
  v100 = 1024;
  *v101 = v5;
  *&v101[4] = 2082;
  *&v101[6] = v58;
  v40 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v96 = 0;
  if (!__nwlog_fault(v40, &type, &v96))
  {
LABEL_127:
    if (v40)
    {
      goto LABEL_128;
    }

    goto LABEL_129;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v41 = gLogObj;
    v42 = type;
    if (os_log_type_enabled(v41, type))
    {
      if (v57 > 0x14)
      {
        v69 = "unknown";
      }

      else
      {
        v69 = off_1E6A2B668[v57];
      }

      *buf = 136446722;
      v99 = "[NWPrivilegedHelper registerHandlerFunction:type:allowedEntitlementGroup:]";
      v100 = 1024;
      *v101 = v5;
      *&v101[4] = 2082;
      *&v101[6] = v69;
      v68 = "%{public}s Refusing to register handler for type [%u] %{public}s without any entitlement";
      goto LABEL_125;
    }

    goto LABEL_126;
  }

  if (v96 != 1)
  {
    v41 = __nwlog_obj();
    v42 = type;
    if (os_log_type_enabled(v41, type))
    {
      if (v57 > 0x14)
      {
        v78 = "unknown";
      }

      else
      {
        v78 = off_1E6A2B668[v57];
      }

      *buf = 136446722;
      v99 = "[NWPrivilegedHelper registerHandlerFunction:type:allowedEntitlementGroup:]";
      v100 = 1024;
      *v101 = v5;
      *&v101[4] = 2082;
      *&v101[6] = v78;
      v68 = "%{public}s Refusing to register handler for type [%u] %{public}s without any entitlement, backtrace limit exceeded";
LABEL_125:
      _os_log_impl(&dword_181A37000, v41, v42, v68, buf, 0x1Cu);
    }

LABEL_126:

    goto LABEL_127;
  }

  v70 = v8;
  v71 = __nw_create_backtrace_string();
  v72 = __nwlog_obj();
  v73 = type;
  v74 = os_log_type_enabled(v72, type);
  if (v71)
  {
    if (v74)
    {
      if (v57 > 0x14)
      {
        v75 = "unknown";
      }

      else
      {
        v75 = off_1E6A2B668[v57];
      }

      *buf = 136446978;
      v99 = "[NWPrivilegedHelper registerHandlerFunction:type:allowedEntitlementGroup:]";
      v100 = 1024;
      *v101 = v5;
      *&v101[4] = 2082;
      *&v101[6] = v75;
      v102 = 2082;
      v103 = v71;
      _os_log_impl(&dword_181A37000, v72, v73, "%{public}s Refusing to register handler for type [%u] %{public}s without any entitlement, dumping backtrace:%{public}s", buf, 0x26u);
    }

    free(v71);
    v8 = v70;
    if (!v40)
    {
      goto LABEL_129;
    }
  }

  else
  {
    v8 = v70;
    if (v74)
    {
      if (v57 > 0x14)
      {
        v81 = "unknown";
      }

      else
      {
        v81 = off_1E6A2B668[v57];
      }

      *buf = 136446722;
      v99 = "[NWPrivilegedHelper registerHandlerFunction:type:allowedEntitlementGroup:]";
      v100 = 1024;
      *v101 = v5;
      *&v101[4] = 2082;
      *&v101[6] = v81;
      _os_log_impl(&dword_181A37000, v72, v73, "%{public}s Refusing to register handler for type [%u] %{public}s without any entitlement, no backtrace", buf, 0x1Cu);
    }

    if (!v40)
    {
      goto LABEL_129;
    }
  }

LABEL_128:
  free(v40);
LABEL_129:
  v39 = v86;
  v9 = v87;
LABEL_130:

LABEL_131:
LABEL_132:
}

@end