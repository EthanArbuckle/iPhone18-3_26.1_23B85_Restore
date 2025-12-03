@interface NWUDPListener
- (NWUDPListener)initWithParameters:(id)parameters delegate:(id)delegate;
- (NWUDPListenerDelegate)delegate;
- (void)handleConnection:(id)connection;
- (void)handleError:(id)error;
@end

@implementation NWUDPListener

- (NWUDPListenerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NWUDPListener)initWithParameters:(id)parameters delegate:(id)delegate
{
  v70 = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  delegateCopy = delegate;
  v8 = delegateCopy;
  if (!parametersCopy)
  {
    v34 = __nwlog_obj();
    *buf = 136446210;
    v67 = "[NWUDPListener initWithParameters:delegate:]";
    v35 = _os_log_send_and_compose_impl();

    LOBYTE(location) = 16;
    v65 = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v35, &location, &v65))
    {
      if (location == 17)
      {
        v36 = __nwlog_obj();
        v37 = location;
        if (os_log_type_enabled(v36, location))
        {
          *buf = 136446210;
          v67 = "[NWUDPListener initWithParameters:delegate:]";
          _os_log_impl(&dword_181A37000, v36, v37, "%{public}s called with null parameters", buf, 0xCu);
        }
      }

      else if (v65 == OS_LOG_TYPE_INFO)
      {
        backtrace_string = __nw_create_backtrace_string();
        v36 = __nwlog_obj();
        v47 = location;
        v48 = os_log_type_enabled(v36, location);
        if (backtrace_string)
        {
          if (v48)
          {
            *buf = 136446466;
            v67 = "[NWUDPListener initWithParameters:delegate:]";
            v68 = 2082;
            v69 = backtrace_string;
            _os_log_impl(&dword_181A37000, v36, v47, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_72;
        }

        if (v48)
        {
          *buf = 136446210;
          v67 = "[NWUDPListener initWithParameters:delegate:]";
          _os_log_impl(&dword_181A37000, v36, v47, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v36 = __nwlog_obj();
        v55 = location;
        if (os_log_type_enabled(v36, location))
        {
          *buf = 136446210;
          v67 = "[NWUDPListener initWithParameters:delegate:]";
          _os_log_impl(&dword_181A37000, v36, v55, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_72:
    if (v35)
    {
      free(v35);
    }

    goto LABEL_74;
  }

  if (!delegateCopy)
  {
    v38 = __nwlog_obj();
    *buf = 136446210;
    v67 = "[NWUDPListener initWithParameters:delegate:]";
    v39 = _os_log_send_and_compose_impl();

    LOBYTE(location) = 16;
    v65 = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v39, &location, &v65))
    {
      if (location == 17)
      {
        v40 = __nwlog_obj();
        v41 = location;
        if (os_log_type_enabled(v40, location))
        {
          *buf = 136446210;
          v67 = "[NWUDPListener initWithParameters:delegate:]";
          _os_log_impl(&dword_181A37000, v40, v41, "%{public}s called with null delegate", buf, 0xCu);
        }
      }

      else if (v65 == OS_LOG_TYPE_INFO)
      {
        v49 = __nw_create_backtrace_string();
        v40 = __nwlog_obj();
        v50 = location;
        v51 = os_log_type_enabled(v40, location);
        if (v49)
        {
          if (v51)
          {
            *buf = 136446466;
            v67 = "[NWUDPListener initWithParameters:delegate:]";
            v68 = 2082;
            v69 = v49;
            _os_log_impl(&dword_181A37000, v40, v50, "%{public}s called with null delegate, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v49);
          goto LABEL_78;
        }

        if (v51)
        {
          *buf = 136446210;
          v67 = "[NWUDPListener initWithParameters:delegate:]";
          _os_log_impl(&dword_181A37000, v40, v50, "%{public}s called with null delegate, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v40 = __nwlog_obj();
        v56 = location;
        if (os_log_type_enabled(v40, location))
        {
          *buf = 136446210;
          v67 = "[NWUDPListener initWithParameters:delegate:]";
          _os_log_impl(&dword_181A37000, v40, v56, "%{public}s called with null delegate, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_78:
    if (v39)
    {
      free(v39);
    }

LABEL_74:

LABEL_86:
    v24 = 0;
    goto LABEL_17;
  }

  v64.receiver = self;
  v64.super_class = NWUDPListener;
  v9 = [(NWUDPListener *)&v64 init];
  if (!v9)
  {
    v42 = __nwlog_obj();
    *buf = 136446210;
    v67 = "[NWUDPListener initWithParameters:delegate:]";
    v43 = _os_log_send_and_compose_impl();

    LOBYTE(location) = 16;
    v65 = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v43, &location, &v65))
    {
      if (location == 17)
      {
        v44 = __nwlog_obj();
        v45 = location;
        if (os_log_type_enabled(v44, location))
        {
          *buf = 136446210;
          v67 = "[NWUDPListener initWithParameters:delegate:]";
          _os_log_impl(&dword_181A37000, v44, v45, "%{public}s [super init] failed", buf, 0xCu);
        }
      }

      else if (v65 == OS_LOG_TYPE_INFO)
      {
        v52 = __nw_create_backtrace_string();
        v44 = __nwlog_obj();
        v53 = location;
        v54 = os_log_type_enabled(v44, location);
        if (v52)
        {
          if (v54)
          {
            *buf = 136446466;
            v67 = "[NWUDPListener initWithParameters:delegate:]";
            v68 = 2082;
            v69 = v52;
            _os_log_impl(&dword_181A37000, v44, v53, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v52);
          goto LABEL_84;
        }

        if (v54)
        {
          *buf = 136446210;
          v67 = "[NWUDPListener initWithParameters:delegate:]";
          _os_log_impl(&dword_181A37000, v44, v53, "%{public}s [super init] failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v44 = __nwlog_obj();
        v57 = location;
        if (os_log_type_enabled(v44, location))
        {
          *buf = 136446210;
          v67 = "[NWUDPListener initWithParameters:delegate:]";
          _os_log_impl(&dword_181A37000, v44, v57, "%{public}s [super init] failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_84:
    if (v43)
    {
      free(v43);
    }

    goto LABEL_86;
  }

  objc_initWeak(&location, v9);
  internalParameters = [parametersCopy internalParameters];
  v11 = nw_parameters_copy_default_protocol_stack(internalParameters);

  options = _nw_udp_create_options();
  nw_protocol_stack_set_transport_protocol(v11, options);

  internalParameters2 = [parametersCopy internalParameters];
  nw_parameters_set_data_mode(internalParameters2, 1);

  internalParameters3 = [parametersCopy internalParameters];
  v15 = nw_listener_create(internalParameters3);
  v16 = *(v9 + 3);
  *(v9 + 3) = v15;

  v17 = *(v9 + 3);
  if (v17)
  {
    if (NWCopyInternalQueue_init_once != -1)
    {
      dispatch_once(&NWCopyInternalQueue_init_once, &__block_literal_global_66536);
    }

    v18 = NWCopyInternalQueue_nwQueue;
    nw_listener_set_queue(v17, v18);

    v19 = *(v9 + 3);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __45__NWUDPListener_initWithParameters_delegate___block_invoke;
    handler[3] = &unk_1E6A3D280;
    objc_copyWeak(&v61, &location);
    nw_listener_set_state_changed_handler(v19, handler);
    v20 = *(v9 + 3);
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = __45__NWUDPListener_initWithParameters_delegate___block_invoke_2;
    v58[3] = &unk_1E6A3D258;
    objc_copyWeak(&v59, &location);
    nw_listener_set_new_connection_handler(v20, v58);
    v21 = [parametersCopy copy];
    v22 = *(v9 + 4);
    *(v9 + 4) = v21;

    objc_storeWeak(v9 + 6, v8);
    v23 = *(v9 + 2);
    *(v9 + 2) = 0;

    nw_listener_start(*(v9 + 3));
    v24 = v9;
    objc_destroyWeak(&v59);
    objc_destroyWeak(&v61);
    goto LABEL_16;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v25 = gLogObj;
  *buf = 136446210;
  v67 = "[NWUDPListener initWithParameters:delegate:]";
  v26 = _os_log_send_and_compose_impl();

  v65 = OS_LOG_TYPE_ERROR;
  v62 = 0;
  if (__nwlog_fault(v26, &v65, &v62))
  {
    if (v65 == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v27 = gLogObj;
      v28 = v65;
      if (os_log_type_enabled(v27, v65))
      {
        *buf = 136446210;
        v67 = "[NWUDPListener initWithParameters:delegate:]";
        _os_log_impl(&dword_181A37000, v27, v28, "%{public}s nw_listener_create failed", buf, 0xCu);
      }
    }

    else if (v62 == 1)
    {
      v30 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v27 = gLogObj;
      v31 = v65;
      v32 = os_log_type_enabled(v27, v65);
      if (v30)
      {
        if (v32)
        {
          *buf = 136446466;
          v67 = "[NWUDPListener initWithParameters:delegate:]";
          v68 = 2082;
          v69 = v30;
          _os_log_impl(&dword_181A37000, v27, v31, "%{public}s nw_listener_create failed, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v30);
        if (!v26)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }

      if (v32)
      {
        *buf = 136446210;
        v67 = "[NWUDPListener initWithParameters:delegate:]";
        _os_log_impl(&dword_181A37000, v27, v31, "%{public}s nw_listener_create failed, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v27 = gLogObj;
      v33 = v65;
      if (os_log_type_enabled(v27, v65))
      {
        *buf = 136446210;
        v67 = "[NWUDPListener initWithParameters:delegate:]";
        _os_log_impl(&dword_181A37000, v27, v33, "%{public}s nw_listener_create failed, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

  if (v26)
  {
LABEL_14:
    free(v26);
  }

LABEL_15:
  v24 = 0;
LABEL_16:

  objc_destroyWeak(&location);
LABEL_17:

  return v24;
}

void __45__NWUDPListener_initWithParameters_delegate___block_invoke(uint64_t a1, int a2, void *a3)
{
  v11 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    if (a2 == 2)
    {
      v7 = [WeakRetained internalListener];
      port = nw_listener_get_port(v7);

      if (port)
      {
        v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u", port];
        v10 = [NWAddressEndpoint endpointWithHostname:@"0.0.0.0" port:v9];
        [v6 setLocalEndpoint:v10];
      }
    }

    [v6 handleError:v11];
  }
}

void __45__NWUDPListener_initWithParameters_delegate___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleConnection:v5];
  }
}

- (void)handleError:(id)error
{
  if (error)
  {
    v5 = nw_error_copy_cf_error(error);
    [(NWUDPListener *)self setError:v5];
  }

  else
  {

    [(NWUDPListener *)self setError:?];
  }
}

- (void)handleConnection:(id)connection
{
  v9 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  delegate = [(NWUDPListener *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v6 = [[NWUDPSession alloc] initWithConnection:connectionCopy];
    [delegate handleSession:v6];
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    if (os_log_type_enabled(&v6->super, OS_LOG_TYPE_ERROR))
    {
      v7 = 136446210;
      v8 = "[NWUDPListener handleConnection:]";
      _os_log_impl(&dword_181A37000, &v6->super, OS_LOG_TYPE_ERROR, "%{public}s UDP listener received connection, but delegate is nil", &v7, 0xCu);
    }
  }
}

@end