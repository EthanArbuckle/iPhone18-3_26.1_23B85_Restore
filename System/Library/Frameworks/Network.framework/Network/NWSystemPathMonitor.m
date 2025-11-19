@interface NWSystemPathMonitor
+ (id)sharedSystemPathMonitor;
- (BOOL)getSymptomsFallback;
- (NWSystemPathMonitor)init;
- (void)dealloc;
- (void)eventFired;
- (void)registerForSymptomsFallbackNotification;
- (void)registerForVPNNotifications;
- (void)startWatchingApplicationStates;
- (void)stateUpdated:(id)a3 forProcess:(id)a4;
- (void)stopWatchingApplicationStates;
- (void)updateFlags;
- (void)updateVPNMonitor;
@end

@implementation NWSystemPathMonitor

- (BOOL)getSymptomsFallback
{
  v25 = *MEMORY[0x1E69E9840];
  if ([(NWSystemPathMonitor *)self symptomsNotifyToken]== -1)
  {
    return 0;
  }

  state64 = 0;
  state = notify_get_state([(NWSystemPathMonitor *)self symptomsNotifyToken], &state64);
  if (!state)
  {
    return state64 != 0;
  }

  v4 = state;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v5 = gLogObj;
  *buf = 136446466;
  v20 = "[NWSystemPathMonitor getSymptomsFallback]";
  v21 = 1024;
  v22 = v4;
  v6 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (__nwlog_fault(v6, &type, &v16))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_20;
      }

      *buf = 136446466;
      v20 = "[NWSystemPathMonitor getSymptomsFallback]";
      v21 = 1024;
      v22 = v4;
      v9 = "%{public}s notify_get_state [%u] failed";
LABEL_18:
      v14 = v7;
      v15 = v8;
      goto LABEL_19;
    }

    if (v16 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_20;
      }

      *buf = 136446466;
      v20 = "[NWSystemPathMonitor getSymptomsFallback]";
      v21 = 1024;
      v22 = v4;
      v9 = "%{public}s notify_get_state [%u] failed, backtrace limit exceeded";
      goto LABEL_18;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    v12 = type;
    v13 = os_log_type_enabled(v7, type);
    if (!backtrace_string)
    {
      if (!v13)
      {
LABEL_20:

        if (!v6)
        {
          return 0;
        }

        goto LABEL_14;
      }

      *buf = 136446466;
      v20 = "[NWSystemPathMonitor getSymptomsFallback]";
      v21 = 1024;
      v22 = v4;
      v9 = "%{public}s notify_get_state [%u] failed, no backtrace";
      v14 = v7;
      v15 = v12;
LABEL_19:
      _os_log_impl(&dword_181A37000, v14, v15, v9, buf, 0x12u);
      goto LABEL_20;
    }

    if (v13)
    {
      *buf = 136446722;
      v20 = "[NWSystemPathMonitor getSymptomsFallback]";
      v21 = 1024;
      v22 = v4;
      v23 = 2082;
      v24 = backtrace_string;
      _os_log_impl(&dword_181A37000, v7, v12, "%{public}s notify_get_state [%u] failed, dumping backtrace:%{public}s", buf, 0x1Cu);
    }

    free(backtrace_string);
  }

  if (v6)
  {
LABEL_14:
    free(v6);
  }

  return 0;
}

- (void)registerForSymptomsFallbackNotification
{
  v27 = *MEMORY[0x1E69E9840];
  if ([(NWSystemPathMonitor *)self symptomsNotifyToken]== -1)
  {
    out_token = -1;
    objc_initWeak(&location, self);
    if (NWCopyInternalQueue_init_once != -1)
    {
      dispatch_once(&NWCopyInternalQueue_init_once, &__block_literal_global_66536);
    }

    v3 = NWCopyInternalQueue_nwQueue;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __62__NWSystemPathMonitor_registerForSymptomsFallbackNotification__block_invoke;
    handler[3] = &unk_1E6A2B198;
    objc_copyWeak(&v16, &location);
    v4 = notify_register_dispatch("com.apple.symptoms.celloutrankeffective", &out_token, v3, handler);

    if (!v4)
    {
      [(NWSystemPathMonitor *)self setSymptomsNotifyToken:out_token];
      goto LABEL_13;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    *buf = 136446722;
    v20 = "[NWSystemPathMonitor registerForSymptomsFallbackNotification]";
    v21 = 2082;
    v22 = "com.apple.symptoms.celloutrankeffective";
    v23 = 1024;
    v24 = v4;
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (__nwlog_fault(v6, &type, &v13))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        v8 = type;
        if (os_log_type_enabled(v7, type))
        {
          *buf = 136446722;
          v20 = "[NWSystemPathMonitor registerForSymptomsFallbackNotification]";
          v21 = 2082;
          v22 = "com.apple.symptoms.celloutrankeffective";
          v23 = 1024;
          v24 = v4;
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s notify_register_dispatch(%{public}s) [status %u] failed", buf, 0x1Cu);
        }
      }

      else if (v13 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        v10 = type;
        v11 = os_log_type_enabled(v7, type);
        if (backtrace_string)
        {
          if (v11)
          {
            *buf = 136446978;
            v20 = "[NWSystemPathMonitor registerForSymptomsFallbackNotification]";
            v21 = 2082;
            v22 = "com.apple.symptoms.celloutrankeffective";
            v23 = 1024;
            v24 = v4;
            v25 = 2082;
            v26 = backtrace_string;
            _os_log_impl(&dword_181A37000, v7, v10, "%{public}s notify_register_dispatch(%{public}s) [status %u] failed, dumping backtrace:%{public}s", buf, 0x26u);
          }

          free(backtrace_string);
          if (!v6)
          {
            goto LABEL_13;
          }

          goto LABEL_11;
        }

        if (v11)
        {
          *buf = 136446722;
          v20 = "[NWSystemPathMonitor registerForSymptomsFallbackNotification]";
          v21 = 2082;
          v22 = "com.apple.symptoms.celloutrankeffective";
          v23 = 1024;
          v24 = v4;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s notify_register_dispatch(%{public}s) [status %u] failed, no backtrace", buf, 0x1Cu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        v12 = type;
        if (os_log_type_enabled(v7, type))
        {
          *buf = 136446722;
          v20 = "[NWSystemPathMonitor registerForSymptomsFallbackNotification]";
          v21 = 2082;
          v22 = "com.apple.symptoms.celloutrankeffective";
          v23 = 1024;
          v24 = v4;
          _os_log_impl(&dword_181A37000, v7, v12, "%{public}s notify_register_dispatch(%{public}s) [status %u] failed, backtrace limit exceeded", buf, 0x1Cu);
        }
      }
    }

    if (!v6)
    {
LABEL_13:
      objc_destroyWeak(&v16);
      objc_destroyWeak(&location);
      return;
    }

LABEL_11:
    free(v6);
    goto LABEL_13;
  }
}

void __62__NWSystemPathMonitor_registerForSymptomsFallbackNotification__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained eventFired];
}

- (void)updateVPNMonitor
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v3 = gLogObj;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136446210;
    v27 = "[NWSystemPathMonitor updateVPNMonitor]";
    _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_INFO, "%{public}s Update VPN monitor due to configuration change", buf, 0xCu);
  }

  v4 = [(NWSystemPathMonitor *)v2 vpnMonitor];

  if (v4)
  {
    v5 = [(NWSystemPathMonitor *)v2 vpnMonitor];
    [v5 removeObserver:v2 forKeyPath:@"status"];

    [(NWSystemPathMonitor *)v2 setVpnMonitor:0];
  }

  v6 = objc_alloc_init(NWParameters);
  v7 = ne_session_always_on_vpn_configs_present();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v8 = gLogObj;
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (v7)
  {
    if (v9)
    {
      *buf = 136446210;
      v27 = "[NWSystemPathMonitor updateVPNMonitor]";
      _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_INFO, "%{public}s Monitoring Always-On VPN", buf, 0xCu);
    }

    v10 = @"AOVPN";
  }

  else
  {
    if (v9)
    {
      *buf = 136446210;
      v27 = "[NWSystemPathMonitor updateVPNMonitor]";
      _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_INFO, "%{public}s Monitoring system VPN", buf, 0xCu);
    }

    v10 = @"VPN";
  }

  [(NWParameters *)v6 requireNetworkAgentWithDomain:@"NetworkExtension" type:v10];
  v11 = objc_alloc_init(NWNetworkDescription);
  v12 = [NWMonitor monitorWithNetworkDescription:v11 endpoint:0 parameters:v6];
  [(NWSystemPathMonitor *)v2 setVpnMonitor:v12];

  v13 = [(NWSystemPathMonitor *)v2 vpnMonitor];
  LODWORD(v11) = v13 == 0;

  if (!v11)
  {
    v14 = [(NWSystemPathMonitor *)v2 vpnMonitor];
    [v14 addObserver:v2 forKeyPath:@"status" options:5 context:0];

    if (ne_session_app_vpn_configs_present())
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v15 = gLogObj;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 136446210;
        v27 = "[NWSystemPathMonitor updateVPNMonitor]";
        _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_INFO, "%{public}s Monitoring Per-App VPN", buf, 0xCu);
      }

      [(NWSystemPathMonitor *)v2 startWatchingApplicationStates];
    }

    else
    {
      [(NWSystemPathMonitor *)v2 stopWatchingApplicationStates];
    }

    goto LABEL_37;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v16 = gLogObj;
  *buf = 136446210;
  v27 = "[NWSystemPathMonitor updateVPNMonitor]";
  v17 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v24 = 0;
  if (!__nwlog_fault(v17, &type, &v24))
  {
    goto LABEL_35;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v18 = gLogObj;
    v19 = type;
    if (os_log_type_enabled(v18, type))
    {
      *buf = 136446210;
      v27 = "[NWSystemPathMonitor updateVPNMonitor]";
      _os_log_impl(&dword_181A37000, v18, v19, "%{public}s monitorWithNetworkDescription:endpoint:parameters: failed", buf, 0xCu);
    }

LABEL_34:

LABEL_35:
    if (!v17)
    {
      goto LABEL_37;
    }

LABEL_36:
    free(v17);
    goto LABEL_37;
  }

  if (v24 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v18 = gLogObj;
    v23 = type;
    if (os_log_type_enabled(v18, type))
    {
      *buf = 136446210;
      v27 = "[NWSystemPathMonitor updateVPNMonitor]";
      _os_log_impl(&dword_181A37000, v18, v23, "%{public}s monitorWithNetworkDescription:endpoint:parameters: failed, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_34;
  }

  backtrace_string = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v18 = gLogObj;
  v21 = type;
  v22 = os_log_type_enabled(v18, type);
  if (!backtrace_string)
  {
    if (v22)
    {
      *buf = 136446210;
      v27 = "[NWSystemPathMonitor updateVPNMonitor]";
      _os_log_impl(&dword_181A37000, v18, v21, "%{public}s monitorWithNetworkDescription:endpoint:parameters: failed, no backtrace", buf, 0xCu);
    }

    goto LABEL_34;
  }

  if (v22)
  {
    *buf = 136446466;
    v27 = "[NWSystemPathMonitor updateVPNMonitor]";
    v28 = 2082;
    v29 = backtrace_string;
    _os_log_impl(&dword_181A37000, v18, v21, "%{public}s monitorWithNetworkDescription:endpoint:parameters: failed, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(backtrace_string);
  if (v17)
  {
    goto LABEL_36;
  }

LABEL_37:

  objc_sync_exit(v2);
}

- (void)registerForVPNNotifications
{
  v27 = *MEMORY[0x1E69E9840];
  if ([(NWSystemPathMonitor *)self vpnNotifyToken]== -1)
  {
    out_token = -1;
    objc_initWeak(&location, self);
    if (NWCopyInternalQueue_init_once != -1)
    {
      dispatch_once(&NWCopyInternalQueue_init_once, &__block_literal_global_66536);
    }

    v3 = NWCopyInternalQueue_nwQueue;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __50__NWSystemPathMonitor_registerForVPNNotifications__block_invoke;
    handler[3] = &unk_1E6A2B198;
    objc_copyWeak(&v16, &location);
    v4 = notify_register_dispatch("com.apple.neconfigurationchanged", &out_token, v3, handler);

    if (!v4)
    {
      [(NWSystemPathMonitor *)self setVpnNotifyToken:out_token];
      goto LABEL_13;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    *buf = 136446722;
    v20 = "[NWSystemPathMonitor registerForVPNNotifications]";
    v21 = 2082;
    v22 = "com.apple.neconfigurationchanged";
    v23 = 1024;
    v24 = v4;
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (__nwlog_fault(v6, &type, &v13))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        v8 = type;
        if (os_log_type_enabled(v7, type))
        {
          *buf = 136446722;
          v20 = "[NWSystemPathMonitor registerForVPNNotifications]";
          v21 = 2082;
          v22 = "com.apple.neconfigurationchanged";
          v23 = 1024;
          v24 = v4;
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s notify_register_dispatch(%{public}s) [status %u] failed", buf, 0x1Cu);
        }
      }

      else if (v13 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        v10 = type;
        v11 = os_log_type_enabled(v7, type);
        if (backtrace_string)
        {
          if (v11)
          {
            *buf = 136446978;
            v20 = "[NWSystemPathMonitor registerForVPNNotifications]";
            v21 = 2082;
            v22 = "com.apple.neconfigurationchanged";
            v23 = 1024;
            v24 = v4;
            v25 = 2082;
            v26 = backtrace_string;
            _os_log_impl(&dword_181A37000, v7, v10, "%{public}s notify_register_dispatch(%{public}s) [status %u] failed, dumping backtrace:%{public}s", buf, 0x26u);
          }

          free(backtrace_string);
          if (!v6)
          {
            goto LABEL_13;
          }

          goto LABEL_11;
        }

        if (v11)
        {
          *buf = 136446722;
          v20 = "[NWSystemPathMonitor registerForVPNNotifications]";
          v21 = 2082;
          v22 = "com.apple.neconfigurationchanged";
          v23 = 1024;
          v24 = v4;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s notify_register_dispatch(%{public}s) [status %u] failed, no backtrace", buf, 0x1Cu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        v12 = type;
        if (os_log_type_enabled(v7, type))
        {
          *buf = 136446722;
          v20 = "[NWSystemPathMonitor registerForVPNNotifications]";
          v21 = 2082;
          v22 = "com.apple.neconfigurationchanged";
          v23 = 1024;
          v24 = v4;
          _os_log_impl(&dword_181A37000, v7, v12, "%{public}s notify_register_dispatch(%{public}s) [status %u] failed, backtrace limit exceeded", buf, 0x1Cu);
        }
      }
    }

    if (!v6)
    {
LABEL_13:
      objc_destroyWeak(&v16);
      objc_destroyWeak(&location);
      return;
    }

LABEL_11:
    free(v6);
    goto LABEL_13;
  }
}

void __50__NWSystemPathMonitor_registerForVPNNotifications__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateVPNMonitor];
}

- (void)stopWatchingApplicationStates
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NWSystemPathMonitor *)v2 processMonitor];

  if (v3)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [(NWSystemPathMonitor *)v2 perAppVPNEvaluators];
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = *v13;
      do
      {
        v7 = 0;
        do
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v12 + 1) + 8 * v7);
          v9 = [(NWSystemPathMonitor *)v2 perAppVPNEvaluators];
          v10 = [v9 objectForKeyedSubscript:v8];

          [v10 removeObserver:v2 forKeyPath:@"path"];
          ++v7;
        }

        while (v5 != v7);
        v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    v11 = [(NWSystemPathMonitor *)v2 processMonitor];
    [v11 invalidate];

    [(NWSystemPathMonitor *)v2 setProcessMonitor:0];
  }

  objc_sync_exit(v2);
}

- (void)startWatchingApplicationStates
{
  v3 = self;
  objc_sync_enter(v3);
  v4 = [(NWSystemPathMonitor *)v3 processMonitor];

  if (!v4)
  {
    gotLoadHelper_x21__OBJC_CLASS___RBSProcessMonitor(v5);
    if (objc_opt_class())
    {
      objc_initWeak(&location, v3);
      v6 = [MEMORY[0x1E695DF90] dictionary];
      [(NWSystemPathMonitor *)v3 setPerAppVPNEvaluators:v6];

      v7 = *(v2 + 1536);
      v9 = MEMORY[0x1E69E9820];
      v10 = 3221225472;
      v11 = __53__NWSystemPathMonitor_startWatchingApplicationStates__block_invoke;
      v12 = &unk_1E6A2B170;
      objc_copyWeak(&v13, &location);
      v8 = [v7 monitorWithConfiguration:&v9];
      [(NWSystemPathMonitor *)v3 setProcessMonitor:v8, v9, v10, v11, v12];

      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);
    }
  }

  objc_sync_exit(v3);
}

void __53__NWSystemPathMonitor_startWatchingApplicationStates__block_invoke(uint64_t a1, void *a2)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  Helper_x8__OBJC_CLASS___RBSProcessPredicate = gotLoadHelper_x8__OBJC_CLASS___RBSProcessPredicate(v4);
  v7 = [*(v6 + 1544) predicateMatchingProcessTypeApplication];
  v15[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  [v3 setPredicates:v8];

  Helper_x8__OBJC_CLASS___RBSProcessStateDescriptor = gotLoadHelper_x8__OBJC_CLASS___RBSProcessStateDescriptor(v9);
  v12 = [*(v11 + 1576) descriptor];
  [v12 setValues:1];
  [v12 setEndowmentNamespaces:&unk_1EF011D08];
  [v3 setStateDescriptor:v12];
  [v3 setEvents:1];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __53__NWSystemPathMonitor_startWatchingApplicationStates__block_invoke_2;
  v13[3] = &unk_1E6A2B148;
  objc_copyWeak(&v14, (a1 + 32));
  [v3 setUpdateHandler:v13];
  objc_destroyWeak(&v14);
}

void __53__NWSystemPathMonitor_startWatchingApplicationStates__block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained stateUpdated:v6 forProcess:v7];
}

- (void)stateUpdated:(id)a3 forProcess:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = [v7 identity];
  v10 = [v9 embeddedApplicationIdentifier];

  if (!v10)
  {
    v11 = [v7 bundle];
    v10 = [v11 identifier];

    if (!v10)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v17 = gLogObj;
      if (os_log_type_enabled(&v17->super, OS_LOG_TYPE_ERROR))
      {
        v31 = 136446722;
        v32 = "[NWSystemPathMonitor stateUpdated:forProcess:]";
        v33 = 2114;
        v34 = v7;
        v35 = 2112;
        v36 = v6;
        _os_log_impl(&dword_181A37000, &v17->super, OS_LOG_TYPE_ERROR, "%{public}s Cannot find bundle ID for process %{public}@ state update %@", &v31, 0x20u);
      }

      v10 = 0;
      goto LABEL_18;
    }
  }

  v12 = [v6 state];
  v13 = [v12 endowmentNamespaces];
  v14 = [v13 containsObject:@"com.apple.frontboard.visibility"];

  if (v14)
  {
    v15 = [(NWSystemPathMonitor *)v8 perAppVPNEvaluators];
    v16 = [v15 objectForKeyedSubscript:v10];

    if (!v16)
    {
      v17 = objc_alloc_init(NWParameters);
      -[NWParameters setPid:](v17, "setPid:", [v7 pid]);
      [(NWParameters *)v17 setSourceApplicationWithBundleID:v10];
      [v10 UTF8String];
      v18 = NEHelperCopyPerAppDomains();
      v19 = v18;
      if (v18 && object_getClass(v18) == MEMORY[0x1E69E9E50] && xpc_array_get_count(v19) && (string = xpc_array_get_string(v19, 0)) != 0)
      {
        v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
        v20 = [NWHostEndpoint endpointWithHostname:v30 port:@"0"];
      }

      else
      {
        v20 = 0;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v21 = gLogObj;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v31 = 136446466;
        v32 = "[NWSystemPathMonitor stateUpdated:forProcess:]";
        v33 = 2114;
        v34 = v10;
        _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_INFO, "%{public}s Start watching path for foreground app %{public}@", &v31, 0x16u);
      }

      v22 = [[NWPathEvaluator alloc] initWithEndpoint:v20 parameters:v17];
      [(NWPathEvaluator *)v22 addObserver:v8 forKeyPath:@"path" options:5 context:0];
      v23 = [(NWSystemPathMonitor *)v8 perAppVPNEvaluators];
      [v23 setObject:v22 forKeyedSubscript:v10];

LABEL_18:
    }
  }

  else
  {
    v24 = [(NWSystemPathMonitor *)v8 perAppVPNEvaluators];
    v25 = [v24 objectForKeyedSubscript:v10];

    if (v25)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v26 = gLogObj;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v31 = 136446466;
        v32 = "[NWSystemPathMonitor stateUpdated:forProcess:]";
        v33 = 2114;
        v34 = v10;
        _os_log_impl(&dword_181A37000, v26, OS_LOG_TYPE_INFO, "%{public}s Stop watching path for background app %{public}@", &v31, 0x16u);
      }

      v27 = [(NWSystemPathMonitor *)v8 perAppVPNEvaluators];
      v17 = [v27 objectForKeyedSubscript:v10];

      [(NWParameters *)v17 removeObserver:v8 forKeyPath:@"path"];
      v28 = [(NWSystemPathMonitor *)v8 perAppVPNEvaluators];
      [v28 setObject:0 forKeyedSubscript:v10];

      [(NWSystemPathMonitor *)v8 eventFired];
      goto LABEL_18;
    }
  }

  objc_sync_exit(v8);
}

- (void)eventFired
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NWSystemPathMonitor *)v2 smoothingTimer];

  if (!v3)
  {
    if (NWCopyInternalQueue_init_once != -1)
    {
      dispatch_once(&NWCopyInternalQueue_init_once, &__block_literal_global_66536);
    }

    v4 = NWCopyInternalQueue_nwQueue;
    v5 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v4);
    [(NWSystemPathMonitor *)v2 setSmoothingTimer:v5];

    v6 = [(NWSystemPathMonitor *)v2 smoothingTimer];
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __33__NWSystemPathMonitor_eventFired__block_invoke;
    handler[3] = &unk_1E6A3D868;
    handler[4] = v2;
    dispatch_source_set_event_handler(v6, handler);

    v7 = [(NWSystemPathMonitor *)v2 smoothingTimer];
    v8 = dispatch_time(0, 200000000);
    dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);

    v9 = [(NWSystemPathMonitor *)v2 smoothingTimer];
    dispatch_resume(v9);
  }

  objc_sync_exit(v2);
}

uint64_t __33__NWSystemPathMonitor_eventFired__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) smoothingTimer];
  dispatch_source_cancel(v2);

  [*(a1 + 32) setSmoothingTimer:0];
  v3 = *(a1 + 32);

  return [v3 updateFlags];
}

- (void)updateFlags
{
  v55 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NWSystemPathMonitor *)v2 vpnMonitor];
  v4 = [v3 status];

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v6 = [(NWSystemPathMonitor *)v2 perAppVPNEvaluators];
    v7 = [v6 countByEnumeratingWithState:&v32 objects:v54 count:16];
    if (v7)
    {
      v8 = 0;
      v5 = 0;
      v9 = *v33;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v33 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v32 + 1) + 8 * i);
          v12 = [(NWSystemPathMonitor *)v2 perAppVPNEvaluators];
          v13 = [v12 objectForKeyedSubscript:v11];
          v14 = [v13 path];

          if ([v14 status] == 1)
          {
            v15 = [v14 genericNetworkAgentsWithDomain:@"NetworkExtension" type:@"AppVPN"];

            v5 |= v15 != 0;
            v8 |= [v14 usesInterfaceType:1];
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v32 objects:v54 count:16];
      }

      while (v7);

      if (v8)
      {
        v16 = 1;
        goto LABEL_16;
      }
    }

    else
    {

      v5 = 0;
    }
  }

  v17 = [(NWSystemPathMonitor *)v2 primaryEvaluator];
  v18 = [v17 path];
  v16 = [v18 usesInterfaceType:1];

LABEL_16:
  v19 = [(NWSystemPathMonitor *)v2 primaryEvaluator];
  v20 = [v19 path];
  v21 = [v20 usesInterfaceType:3];

  v22 = [(NWSystemPathMonitor *)v2 primaryEvaluator];
  v23 = [v22 path];
  v24 = [v23 genericNetworkAgentsWithDomain:@"AVConference" type:@"CellularFallback"];

  if (!v16)
  {
    v26 = 0;
    goto LABEL_20;
  }

  if (tcp_fallback_watcher_fallback_inuse([(NWSystemPathMonitor *)v2 fallbackWatcher]))
  {
    v16 = 0;
    v25 = " (due to cellular fallback)";
    v26 = 1;
    goto LABEL_21;
  }

  v16 = 0;
  if ([(NWSystemPathMonitor *)v2 getSymptomsFallback])
  {
    v25 = " (due to reverse cellular fallback)";
    v26 = 1;
    goto LABEL_21;
  }

  if (sMptcpUsesCell)
  {
    v25 = " (due to MPTCP sending on Cell)";
  }

  else
  {
    v25 = " (due to cellular fallback from AVConference)";
  }

  v26 = 1;
  if ((sMptcpUsesCell & 1) == 0 && !v24)
  {
    if ([(NWSystemPathMonitor *)v2 interfaceInUse])
    {
      v16 = 0;
      v25 = " (due to AirDrop using cellular)";
      goto LABEL_21;
    }

    v26 = 0;
    v16 = 1;
LABEL_20:
    v25 = "";
  }

LABEL_21:
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v27 = gLogObj;
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    if (v26)
    {
      v28 = "fallback: Wi-Fi shown ";
    }

    else
    {
      v28 = "primary: ";
    }

    v29 = [(NWSystemPathMonitor *)v2 isWiFiPrimary];
    v30 = [(NWSystemPathMonitor *)v2 isEthernetPrimary];
    v31 = [(NWSystemPathMonitor *)v2 isVPNActive];
    *buf = 136448258;
    v37 = "[NWSystemPathMonitor updateFlags]";
    v38 = 2082;
    v39 = v28;
    v40 = 1024;
    v41 = v29;
    v42 = 1024;
    v43 = v16;
    v44 = 2082;
    v45 = v25;
    v46 = 1024;
    v47 = v30;
    v48 = 1024;
    v49 = v21;
    v50 = 1024;
    v51 = v31;
    v52 = 1024;
    v53 = v5 & 1;
    _os_log_impl(&dword_181A37000, v27, OS_LOG_TYPE_DEFAULT, "%{public}s Wi-Fi %{public}s%{BOOL}d->%{BOOL}d%{public}s, Ethernet primary: %{BOOL}d->%{BOOL}d, VPN active: %{BOOL}d->%{BOOL}d", buf, 0x44u);
  }

  if (v16 != [(NWSystemPathMonitor *)v2 isWiFiPrimary])
  {
    [(NWSystemPathMonitor *)v2 setWifiPrimary:v16];
  }

  if (v21 != [(NWSystemPathMonitor *)v2 isEthernetPrimary])
  {
    [(NWSystemPathMonitor *)v2 setEthernetPrimary:v21];
  }

  if ((v5 & 1) != [(NWSystemPathMonitor *)v2 isVPNActive])
  {
    [(NWSystemPathMonitor *)v2 setVpnActive:?];
  }

  objc_sync_exit(v2);
}

- (void)dealloc
{
  v2 = self;
  objc_sync_enter(v2);
  if ([(NWSystemPathMonitor *)v2 vpnNotifyToken]!= -1)
  {
    notify_cancel([(NWSystemPathMonitor *)v2 vpnNotifyToken]);
    [(NWSystemPathMonitor *)v2 setVpnNotifyToken:0xFFFFFFFFLL];
  }

  v3 = [(NWSystemPathMonitor *)v2 vpnMonitor];

  if (v3)
  {
    v4 = [(NWSystemPathMonitor *)v2 vpnMonitor];
    [v4 removeObserver:v2 forKeyPath:@"status"];

    [(NWSystemPathMonitor *)v2 setVpnMonitor:0];
  }

  if ([(NWSystemPathMonitor *)v2 symptomsNotifyToken]!= -1)
  {
    notify_cancel([(NWSystemPathMonitor *)v2 symptomsNotifyToken]);
    [(NWSystemPathMonitor *)v2 setSymptomsNotifyToken:0xFFFFFFFFLL];
  }

  v5 = [(NWSystemPathMonitor *)v2 primaryEvaluator];

  if (v5)
  {
    v6 = [(NWSystemPathMonitor *)v2 primaryEvaluator];
    [v6 removeObserver:v2 forKeyPath:@"path"];

    [(NWSystemPathMonitor *)v2 setPrimaryEvaluator:0];
  }

  v7 = [(NWSystemPathMonitor *)v2 smoothingTimer];

  if (v7)
  {
    v8 = [(NWSystemPathMonitor *)v2 smoothingTimer];
    dispatch_source_cancel(v8);

    [(NWSystemPathMonitor *)v2 setSmoothingTimer:0];
  }

  if ([(NWSystemPathMonitor *)v2 fallbackWatcher])
  {
    tcp_connection_fallback_watcher_destroy([(NWSystemPathMonitor *)v2 fallbackWatcher]);
    [(NWSystemPathMonitor *)v2 setFallbackWatcher:0];
  }

  v9 = [(NWSystemPathMonitor *)v2 mptcpWatcher];

  if (v9)
  {
    v10 = [(NWSystemPathMonitor *)v2 mptcpWatcher];
    dispatch_source_cancel(v10);

    [(NWSystemPathMonitor *)v2 setMptcpWatcher:0];
  }

  v11 = [(NWSystemPathMonitor *)v2 interfaceUseObserver];

  if (v11)
  {
    v12 = [(NWSystemPathMonitor *)v2 interfaceUseObserver];
    nw_interface_use_observer_cancel(v12);

    [(NWSystemPathMonitor *)v2 setInterfaceUseObserver:0];
  }

  [(NWSystemPathMonitor *)v2 stopWatchingApplicationStates];
  objc_sync_exit(v2);

  v13.receiver = v2;
  v13.super_class = NWSystemPathMonitor;
  [(NWSystemPathMonitor *)&v13 dealloc];
}

- (NWSystemPathMonitor)init
{
  v49 = *MEMORY[0x1E69E9840];
  v41.receiver = self;
  v41.super_class = NWSystemPathMonitor;
  v2 = [(NWSystemPathMonitor *)&v41 init];
  if (!v2)
  {
    v24 = __nwlog_obj();
    *location = 136446210;
    *&location[4] = "[NWSystemPathMonitor init]";
    v25 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v39 = 0;
    if (__nwlog_fault(v25, &type, &v39))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v26 = __nwlog_obj();
        v27 = type;
        if (os_log_type_enabled(v26, type))
        {
          *location = 136446210;
          *&location[4] = "[NWSystemPathMonitor init]";
          _os_log_impl(&dword_181A37000, v26, v27, "%{public}s [super init] failed", location, 0xCu);
        }
      }

      else if (v39 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v26 = __nwlog_obj();
        v29 = type;
        v30 = os_log_type_enabled(v26, type);
        if (backtrace_string)
        {
          if (v30)
          {
            *location = 136446466;
            *&location[4] = "[NWSystemPathMonitor init]";
            v43 = 2082;
            v44 = backtrace_string;
            _os_log_impl(&dword_181A37000, v26, v29, "%{public}s [super init] failed, dumping backtrace:%{public}s", location, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_50;
        }

        if (v30)
        {
          *location = 136446210;
          *&location[4] = "[NWSystemPathMonitor init]";
          _os_log_impl(&dword_181A37000, v26, v29, "%{public}s [super init] failed, no backtrace", location, 0xCu);
        }
      }

      else
      {
        v26 = __nwlog_obj();
        v31 = type;
        if (os_log_type_enabled(v26, type))
        {
          *location = 136446210;
          *&location[4] = "[NWSystemPathMonitor init]";
          _os_log_impl(&dword_181A37000, v26, v31, "%{public}s [super init] failed, backtrace limit exceeded", location, 0xCu);
        }
      }
    }

LABEL_50:
    if (v25)
    {
      free(v25);
    }

    goto LABEL_20;
  }

  if (init_onceToken != -1)
  {
    dispatch_once(&init_onceToken, &__block_literal_global_73);
  }

  if ((init_hasDelegateEntitlement & 1) == 0)
  {
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v15 = gLogObj;
    *location = 136446722;
    *&location[4] = "[NWSystemPathMonitor init]";
    v43 = 2114;
    v44 = @"com.apple.private.network.socket-delegate";
    v45 = 2114;
    v46 = v14;
    v16 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v39 = 0;
    if (__nwlog_fault(v16, &type, &v39))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v17 = gLogObj;
        v18 = type;
        if (os_log_type_enabled(v17, type))
        {
          *location = 136446722;
          *&location[4] = "[NWSystemPathMonitor init]";
          v43 = 2114;
          v44 = @"com.apple.private.network.socket-delegate";
          v45 = 2114;
          v46 = v14;
          _os_log_impl(&dword_181A37000, v17, v18, "%{public}s This process does not have the %{public}@ entitlement required to use the %{public}@ API", location, 0x20u);
        }
      }

      else if (v39 == 1)
      {
        v20 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v17 = gLogObj;
        v21 = type;
        v22 = os_log_type_enabled(v17, type);
        if (v20)
        {
          if (v22)
          {
            *location = 136446978;
            *&location[4] = "[NWSystemPathMonitor init]";
            v43 = 2114;
            v44 = @"com.apple.private.network.socket-delegate";
            v45 = 2114;
            v46 = v14;
            v47 = 2082;
            v48 = v20;
            _os_log_impl(&dword_181A37000, v17, v21, "%{public}s This process does not have the %{public}@ entitlement required to use the %{public}@ API, dumping backtrace:%{public}s", location, 0x2Au);
          }

          free(v20);
          if (!v16)
          {
            goto LABEL_19;
          }

          goto LABEL_18;
        }

        if (v22)
        {
          *location = 136446722;
          *&location[4] = "[NWSystemPathMonitor init]";
          v43 = 2114;
          v44 = @"com.apple.private.network.socket-delegate";
          v45 = 2114;
          v46 = v14;
          _os_log_impl(&dword_181A37000, v17, v21, "%{public}s This process does not have the %{public}@ entitlement required to use the %{public}@ API, no backtrace", location, 0x20u);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v17 = gLogObj;
        v23 = type;
        if (os_log_type_enabled(v17, type))
        {
          *location = 136446722;
          *&location[4] = "[NWSystemPathMonitor init]";
          v43 = 2114;
          v44 = @"com.apple.private.network.socket-delegate";
          v45 = 2114;
          v46 = v14;
          _os_log_impl(&dword_181A37000, v17, v23, "%{public}s This process does not have the %{public}@ entitlement required to use the %{public}@ API, backtrace limit exceeded", location, 0x20u);
        }
      }
    }

    if (!v16)
    {
LABEL_19:

LABEL_20:
      v12 = 0;
      goto LABEL_21;
    }

LABEL_18:
    free(v16);
    goto LABEL_19;
  }

  [(NWSystemPathMonitor *)v2 setVpnNotifyToken:0xFFFFFFFFLL];
  [(NWSystemPathMonitor *)v2 setSymptomsNotifyToken:0xFFFFFFFFLL];
  v3 = v2;
  objc_sync_enter(v3);
  [(NWSystemPathMonitor *)v3 registerForVPNNotifications];
  [(NWSystemPathMonitor *)v3 registerForSymptomsFallbackNotification];
  [(NWSystemPathMonitor *)v3 updateVPNMonitor];
  v4 = +[NWPathEvaluator sharedDefaultEvaluator];
  [(NWSystemPathMonitor *)v3 setPrimaryEvaluator:v4];

  v5 = [(NWSystemPathMonitor *)v3 primaryEvaluator];
  [v5 addObserver:v3 forKeyPath:@"path" options:5 context:0];

  objc_initWeak(location, v3);
  if (NWCopyInternalQueue_init_once != -1)
  {
    dispatch_once(&NWCopyInternalQueue_init_once, &__block_literal_global_66536);
  }

  v6 = NWCopyInternalQueue_nwQueue;
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __27__NWSystemPathMonitor_init__block_invoke_5;
  v37[3] = &unk_1E6A3A6C8;
  objc_copyWeak(&v38, location);
  [(NWSystemPathMonitor *)v3 setFallbackWatcher:tcp_connection_fallback_watcher_create(0, v6, v37)];

  if (NWCopyInternalQueue_init_once != -1)
  {
    dispatch_once(&NWCopyInternalQueue_init_once, &__block_literal_global_66536);
  }

  v7 = NWCopyInternalQueue_nwQueue;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __27__NWSystemPathMonitor_init__block_invoke_2;
  v34[3] = &unk_1E6A2B120;
  v8 = v3;
  v35 = v8;
  objc_copyWeak(&v36, location);
  v9 = network_config_mptcp_watcher_create(v7, v34);
  [(NWSystemPathMonitor *)v8 setMptcpWatcher:v9];

  if (NWCopyInternalQueue_init_once != -1)
  {
    dispatch_once(&NWCopyInternalQueue_init_once, &__block_literal_global_66536);
  }

  v10 = NWCopyInternalQueue_nwQueue;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __27__NWSystemPathMonitor_init__block_invoke_8;
  v32[3] = &unk_1E6A2D770;
  objc_copyWeak(&v33, location);
  v11 = nw_interface_use_observer_create("com.apple.network.interface_use.airdrop", v10, v32);
  [(NWSystemPathMonitor *)v8 setInterfaceUseObserver:v11];

  [(NWSystemPathMonitor *)v8 updateFlags];
  objc_destroyWeak(&v33);
  objc_destroyWeak(&v36);

  objc_destroyWeak(&v38);
  objc_destroyWeak(location);
  objc_sync_exit(v8);

  v12 = v8;
LABEL_21:

  return v12;
}

void __27__NWSystemPathMonitor_init__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained eventFired];
}

void __27__NWSystemPathMonitor_init__block_invoke_2(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v8 = "[NWSystemPathMonitor init]_block_invoke_2";
      v9 = 1024;
      v10 = a2;
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_ERROR, "%{public}s Error: %d, destroying the MPTCP-watcher", buf, 0x12u);
    }

    v5 = [*(a1 + 32) mptcpWatcher];
    dispatch_source_cancel(v5);

    [*(a1 + 32) setMptcpWatcher:0];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained eventFired];
  }
}

void __27__NWSystemPathMonitor_init__block_invoke_8(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained setInterfaceInUse:a2];
    [v4 eventFired];
    WeakRetained = v4;
  }
}

BOOL __27__NWSystemPathMonitor_init__block_invoke()
{
  result = NWUtilsCurrentProcessHasEntitlement(@"com.apple.private.network.socket-delegate");
  init_hasDelegateEntitlement = result;
  return result;
}

+ (id)sharedSystemPathMonitor
{
  if (sharedSystemPathMonitor_initEvaluator != -1)
  {
    dispatch_once(&sharedSystemPathMonitor_initEvaluator, &__block_literal_global_11);
  }

  v3 = sharedSystemPathMonitor_sharedEvaluator;

  return v3;
}

void __46__NWSystemPathMonitor_sharedSystemPathMonitor__block_invoke()
{
  v0 = objc_alloc_init(NWSystemPathMonitor);
  v1 = sharedSystemPathMonitor_sharedEvaluator;
  sharedSystemPathMonitor_sharedEvaluator = v0;
}

@end