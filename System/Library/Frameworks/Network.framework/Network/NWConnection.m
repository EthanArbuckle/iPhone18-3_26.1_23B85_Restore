@interface NWConnection
+ (BOOL)automaticallyNotifiesObserversForKey:(id)a3;
+ (id)connectionWithConnectedSocket:(int)a3;
+ (id)connectionWithEndpoint:(id)a3 parameters:(id)a4;
+ (id)connectionWithInternalConnection:(id)a3;
- (BOOL)hasBetterPath;
- (BOOL)isViable;
- (NSError)error;
- (NWConnection)initWithConnectedSocket:(int)a3;
- (NWConnection)initWithEndpoint:(id)a3 parameters:(id)a4;
- (NWConnection)initWithInternalConnection:(id)a3;
- (NWEndpoint)connectedLocalEndpoint;
- (NWEndpoint)connectedRemoteEndpoint;
- (NWEndpoint)endpoint;
- (NWParameters)parameters;
- (NWPath)currentPath;
- (id)copyCurrentPath;
- (id)copyError;
- (id)description;
- (int)getConnectedSocket;
- (int64_t)connectionState;
- (unsigned)tlsConnectionTime;
- (void)cancel;
- (void)cancelCurrentEndpoint;
- (void)forceCancel;
- (void)start;
@end

@implementation NWConnection

+ (id)connectionWithInternalConnection:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = nw_connection_copy_parameters(v3);
  data_mode = nw_parameters_get_data_mode(v4);
  if (data_mode == 1)
  {
    v7 = NWDatagramConnection;
    goto LABEL_5;
  }

  v6 = data_mode;
  if (data_mode == 2)
  {
    v7 = NWStreamConnection;
LABEL_5:
    v8 = [[v7 alloc] initWithInternalConnection:v3];
    goto LABEL_23;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v9 = gLogObj;
  *buf = 136446466;
  v23 = "+[NWConnection connectionWithInternalConnection:]";
  v24 = 1024;
  v25 = v6;
  v10 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v20 = 0;
  if (__nwlog_fault(v10, &type, &v20))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446466;
        v23 = "+[NWConnection connectionWithInternalConnection:]";
        v24 = 1024;
        v25 = v6;
        v13 = "%{public}s Parameters must specify a valid data mode for new connections (received %u)";
LABEL_17:
        v17 = v11;
        v18 = v12;
LABEL_18:
        _os_log_impl(&dword_181A37000, v17, v18, v13, buf, 0x12u);
      }
    }

    else
    {
      if (v20 == 1)
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
            *buf = 136446722;
            v23 = "+[NWConnection connectionWithInternalConnection:]";
            v24 = 1024;
            v25 = v6;
            v26 = 2082;
            v27 = backtrace_string;
            _os_log_impl(&dword_181A37000, v11, v15, "%{public}s Parameters must specify a valid data mode for new connections (received %u), dumping backtrace:%{public}s", buf, 0x1Cu);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v16)
        {
          goto LABEL_19;
        }

        *buf = 136446466;
        v23 = "+[NWConnection connectionWithInternalConnection:]";
        v24 = 1024;
        v25 = v6;
        v13 = "%{public}s Parameters must specify a valid data mode for new connections (received %u), no backtrace";
        v17 = v11;
        v18 = v15;
        goto LABEL_18;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446466;
        v23 = "+[NWConnection connectionWithInternalConnection:]";
        v24 = 1024;
        v25 = v6;
        v13 = "%{public}s Parameters must specify a valid data mode for new connections (received %u), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v10)
  {
    free(v10);
  }

  v8 = 0;
LABEL_23:

  return v8;
}

+ (id)connectionWithConnectedSocket:(int)a3
{
  v20 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v3 = gLogObj;
  *buf = 136446210;
  v17 = "+[NWConnection connectionWithConnectedSocket:]";
  v4 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (__nwlog_fault(v4, &type, &v14))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_17;
      }

      *buf = 136446210;
      v17 = "+[NWConnection connectionWithConnectedSocket:]";
      v7 = "%{public}s Must all connectionWithConnectedSocket on a subclass of NWConnection";
LABEL_15:
      v12 = v5;
      v13 = v6;
      goto LABEL_16;
    }

    if (v14 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_17;
      }

      *buf = 136446210;
      v17 = "+[NWConnection connectionWithConnectedSocket:]";
      v7 = "%{public}s Must all connectionWithConnectedSocket on a subclass of NWConnection, backtrace limit exceeded";
      goto LABEL_15;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    v9 = type;
    v10 = os_log_type_enabled(v5, type);
    if (!backtrace_string)
    {
      if (!v10)
      {
LABEL_17:

        if (!v4)
        {
          return 0;
        }

        goto LABEL_11;
      }

      *buf = 136446210;
      v17 = "+[NWConnection connectionWithConnectedSocket:]";
      v7 = "%{public}s Must all connectionWithConnectedSocket on a subclass of NWConnection, no backtrace";
      v12 = v5;
      v13 = v9;
LABEL_16:
      _os_log_impl(&dword_181A37000, v12, v13, v7, buf, 0xCu);
      goto LABEL_17;
    }

    if (v10)
    {
      *buf = 136446466;
      v17 = "+[NWConnection connectionWithConnectedSocket:]";
      v18 = 2082;
      v19 = backtrace_string;
      _os_log_impl(&dword_181A37000, v5, v9, "%{public}s Must all connectionWithConnectedSocket on a subclass of NWConnection, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
  }

  if (v4)
  {
LABEL_11:
    free(v4);
  }

  return 0;
}

+ (id)connectionWithEndpoint:(id)a3 parameters:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([v6 dataMode] == 2)
  {
    v7 = NWStreamConnection;
LABEL_7:
    v8 = [[v7 alloc] initWithEndpoint:v5 parameters:v6];
    goto LABEL_8;
  }

  if ([v6 dataMode] == 1)
  {
    v7 = NWDatagramConnection;
    goto LABEL_7;
  }

  if ([v6 dataMode] == 3)
  {
    v7 = NWMessageConnection;
    goto LABEL_7;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v10 = gLogObj;
  *buf = 136446466;
  v28 = "+[NWConnection connectionWithEndpoint:parameters:]";
  v29 = 1024;
  v30 = [v6 dataMode];
  LODWORD(v24) = 18;
  v11 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v25 = 0;
  if (__nwlog_fault(v11, &type, &v25))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v12 = gLogObj;
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        v14 = [v6 dataMode];
        *buf = 136446466;
        v28 = "+[NWConnection connectionWithEndpoint:parameters:]";
        v29 = 1024;
        v30 = v14;
        v15 = "%{public}s Parameters must specify a valid data mode for new connections (received %u)";
LABEL_22:
        v21 = v12;
        v22 = v13;
LABEL_23:
        _os_log_impl(&dword_181A37000, v21, v22, v15, buf, 0x12u);
      }
    }

    else
    {
      if (v25 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v12 = gLogObj;
        v17 = type;
        v18 = os_log_type_enabled(v12, type);
        if (backtrace_string)
        {
          if (v18)
          {
            v19 = [v6 dataMode];
            *buf = 136446722;
            v28 = "+[NWConnection connectionWithEndpoint:parameters:]";
            v29 = 1024;
            v30 = v19;
            v31 = 2082;
            v32 = backtrace_string;
            _os_log_impl(&dword_181A37000, v12, v17, "%{public}s Parameters must specify a valid data mode for new connections (received %u), dumping backtrace:%{public}s", buf, 0x1Cu);
          }

          free(backtrace_string);
          goto LABEL_25;
        }

        if (!v18)
        {
          goto LABEL_24;
        }

        v23 = [v6 dataMode];
        *buf = 136446466;
        v28 = "+[NWConnection connectionWithEndpoint:parameters:]";
        v29 = 1024;
        v30 = v23;
        v15 = "%{public}s Parameters must specify a valid data mode for new connections (received %u), no backtrace";
        v21 = v12;
        v22 = v17;
        goto LABEL_23;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v12 = gLogObj;
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        v20 = [v6 dataMode];
        *buf = 136446466;
        v28 = "+[NWConnection connectionWithEndpoint:parameters:]";
        v29 = 1024;
        v30 = v20;
        v15 = "%{public}s Parameters must specify a valid data mode for new connections (received %u), backtrace limit exceeded";
        goto LABEL_22;
      }
    }

LABEL_24:
  }

LABEL_25:
  if (v11)
  {
    free(v11);
  }

  v8 = 0;
LABEL_8:

  return v8;
}

+ (BOOL)automaticallyNotifiesObserversForKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"connectionState"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"viable") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"hasBetterPath") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"error") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"currentPath"))
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___NWConnection;
    v5 = objc_msgSendSuper2(&v7, sel_automaticallyNotifiesObserversForKey_, v4);
  }

  return v5;
}

- (NWParameters)parameters
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [(NWConnection *)self internalConnection];
  v3 = nw_connection_copy_parameters(v2);

  if (v3)
  {
    v4 = [NWParameters parametersWithCParameters:v3];
    goto LABEL_15;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v5 = gLogObj;
  *buf = 136446210;
  v19 = "[NWConnection parameters]";
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
        goto LABEL_22;
      }

      *buf = 136446210;
      v19 = "[NWConnection parameters]";
      v9 = "%{public}s nw_connection_copy_parameters failed";
LABEL_20:
      v14 = v7;
      v15 = v8;
      goto LABEL_21;
    }

    if (v16 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_22;
      }

      *buf = 136446210;
      v19 = "[NWConnection parameters]";
      v9 = "%{public}s nw_connection_copy_parameters failed, backtrace limit exceeded";
      goto LABEL_20;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    v11 = type;
    v12 = os_log_type_enabled(v7, type);
    if (!backtrace_string)
    {
      if (!v12)
      {
LABEL_22:

        if (!v6)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      *buf = 136446210;
      v19 = "[NWConnection parameters]";
      v9 = "%{public}s nw_connection_copy_parameters failed, no backtrace";
      v14 = v7;
      v15 = v11;
LABEL_21:
      _os_log_impl(&dword_181A37000, v14, v15, v9, buf, 0xCu);
      goto LABEL_22;
    }

    if (v12)
    {
      *buf = 136446466;
      v19 = "[NWConnection parameters]";
      v20 = 2082;
      v21 = backtrace_string;
      _os_log_impl(&dword_181A37000, v7, v11, "%{public}s nw_connection_copy_parameters failed, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
  }

  if (v6)
  {
LABEL_13:
    free(v6);
  }

LABEL_14:
  v4 = 0;
LABEL_15:

  return v4;
}

- (NWEndpoint)endpoint
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [(NWConnection *)self internalConnection];
  v3 = nw_connection_copy_endpoint(v2);

  if (v3)
  {
    v4 = [NWEndpoint endpointWithInternalEndpoint:v3];
    goto LABEL_15;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v5 = gLogObj;
  *buf = 136446210;
  v19 = "[NWConnection endpoint]";
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
        goto LABEL_22;
      }

      *buf = 136446210;
      v19 = "[NWConnection endpoint]";
      v9 = "%{public}s nw_connection_copy_endpoint failed";
LABEL_20:
      v14 = v7;
      v15 = v8;
      goto LABEL_21;
    }

    if (v16 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_22;
      }

      *buf = 136446210;
      v19 = "[NWConnection endpoint]";
      v9 = "%{public}s nw_connection_copy_endpoint failed, backtrace limit exceeded";
      goto LABEL_20;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    v11 = type;
    v12 = os_log_type_enabled(v7, type);
    if (!backtrace_string)
    {
      if (!v12)
      {
LABEL_22:

        if (!v6)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      *buf = 136446210;
      v19 = "[NWConnection endpoint]";
      v9 = "%{public}s nw_connection_copy_endpoint failed, no backtrace";
      v14 = v7;
      v15 = v11;
LABEL_21:
      _os_log_impl(&dword_181A37000, v14, v15, v9, buf, 0xCu);
      goto LABEL_22;
    }

    if (v12)
    {
      *buf = 136446466;
      v19 = "[NWConnection endpoint]";
      v20 = 2082;
      v21 = backtrace_string;
      _os_log_impl(&dword_181A37000, v7, v11, "%{public}s nw_connection_copy_endpoint failed, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
  }

  if (v6)
  {
LABEL_13:
    free(v6);
  }

LABEL_14:
  v4 = 0;
LABEL_15:

  return v4;
}

- (NWPath)currentPath
{
  v2 = [(NWConnection *)self copyCurrentPath];

  return v2;
}

- (id)copyCurrentPath
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NWConnection *)v2 internalPath];
  objc_sync_exit(v2);

  return v3;
}

- (NSError)error
{
  v2 = [(NWConnection *)self copyError];

  return v2;
}

- (id)copyError
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NWConnection *)v2 internalError];
  objc_sync_exit(v2);

  return v3;
}

- (BOOL)hasBetterPath
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NWConnection *)v2 internalHasBetterPath];
  objc_sync_exit(v2);

  return v3;
}

- (BOOL)isViable
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NWConnection *)v2 internalIsViable];
  objc_sync_exit(v2);

  return v3;
}

- (NWEndpoint)connectedRemoteEndpoint
{
  v2 = [(NWConnection *)self internalConnection];
  v3 = nw_connection_copy_connected_remote_endpoint(v2);

  if (v3)
  {
    v4 = [NWEndpoint endpointWithInternalEndpoint:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NWEndpoint)connectedLocalEndpoint
{
  v2 = [(NWConnection *)self internalConnection];
  v3 = nw_connection_copy_connected_local_endpoint(v2);

  if (v3)
  {
    v4 = [NWEndpoint endpointWithInternalEndpoint:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)connectionState
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NWConnection *)v2 internalConnectionState];
  objc_sync_exit(v2);

  return v3;
}

- (unsigned)tlsConnectionTime
{
  v5[0] = 0;
  v5[1] = 0;
  v6 = 0;
  v2 = [(NWConnection *)self internalConnection];
  v3 = nw_connection_fillout_tcp_statistics(v2, v5);

  if (v3)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

- (void)cancelCurrentEndpoint
{
  v2 = [(NWConnection *)self internalConnection];
  nw_connection_cancel_current_endpoint(v2);
}

- (void)forceCancel
{
  v2 = [(NWConnection *)self internalConnection];
  nw_connection_force_cancel(v2);
}

- (void)cancel
{
  v2 = [(NWConnection *)self internalConnection];
  nw_connection_cancel(v2);
}

- (int)getConnectedSocket
{
  v2 = [(NWConnection *)self internalConnection];
  connected_socket = nw_connection_get_connected_socket(v2);

  return connected_socket;
}

- (id)description
{
  v2 = [(NWConnection *)self internalConnection];
  v3 = [v2 description];

  return v3;
}

- (NWConnection)initWithInternalConnection:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v18.receiver = self;
  v18.super_class = NWConnection;
  v5 = [(NWConnection *)&v18 init];
  v6 = v5;
  if (v5)
  {
    [(NWConnection *)v5 setInternalConnection:v4];
    [(NWConnection *)v6 setInternalConnectionState:2];
    [(NWConnection *)v6 start];
    v7 = v6;
    goto LABEL_3;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v20 = "[NWConnection initWithInternalConnection:]";
  v10 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (__nwlog_fault(v10, &type, &v16))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v20 = "[NWConnection initWithInternalConnection:]";
        v13 = "%{public}s [super init] failed";
LABEL_17:
        _os_log_impl(&dword_181A37000, v11, v12, v13, buf, 0xCu);
      }
    }

    else
    {
      if (v16 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v11 = __nwlog_obj();
        v12 = type;
        v15 = os_log_type_enabled(v11, type);
        if (backtrace_string)
        {
          if (v15)
          {
            *buf = 136446466;
            v20 = "[NWConnection initWithInternalConnection:]";
            v21 = 2082;
            v22 = backtrace_string;
            _os_log_impl(&dword_181A37000, v11, v12, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v15)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v20 = "[NWConnection initWithInternalConnection:]";
        v13 = "%{public}s [super init] failed, no backtrace";
        goto LABEL_17;
      }

      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v20 = "[NWConnection initWithInternalConnection:]";
        v13 = "%{public}s [super init] failed, backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v10)
  {
    free(v10);
  }

LABEL_3:

  return v6;
}

- (NWConnection)initWithConnectedSocket:(int)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v29.receiver = self;
  v29.super_class = NWConnection;
  v4 = [(NWConnection *)&v29 init];
  if (!v4)
  {
    v21 = __nwlog_obj();
    *buf = 136446210;
    v31 = "[NWConnection initWithConnectedSocket:]";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v10, &type, &v27))
    {
      goto LABEL_19;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v22 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v22, type))
      {
        *buf = 136446210;
        v31 = "[NWConnection initWithConnectedSocket:]";
        v24 = "%{public}s [super init] failed";
LABEL_44:
        _os_log_impl(&dword_181A37000, v22, v23, v24, buf, 0xCu);
      }
    }

    else
    {
      if (v27 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v22 = __nwlog_obj();
        v23 = type;
        v26 = os_log_type_enabled(v22, type);
        if (backtrace_string)
        {
          if (v26)
          {
            *buf = 136446466;
            v31 = "[NWConnection initWithConnectedSocket:]";
            v32 = 2082;
            v33 = backtrace_string;
            _os_log_impl(&dword_181A37000, v22, v23, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          v17 = backtrace_string;
LABEL_18:
          free(v17);
          goto LABEL_19;
        }

        if (!v26)
        {
          goto LABEL_45;
        }

        *buf = 136446210;
        v31 = "[NWConnection initWithConnectedSocket:]";
        v24 = "%{public}s [super init] failed, no backtrace";
        goto LABEL_44;
      }

      v22 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v22, type))
      {
        *buf = 136446210;
        v31 = "[NWConnection initWithConnectedSocket:]";
        v24 = "%{public}s [super init] failed, backtrace limit exceeded";
        goto LABEL_44;
      }
    }

LABEL_45:

LABEL_19:
    if (!v10)
    {
LABEL_21:
      v8 = 0;
      goto LABEL_22;
    }

LABEL_20:
    free(v10);
    goto LABEL_21;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }
  }

  v6 = nw_connection_create_with_connected_socket(a3, v5);
  [(NWConnection *)v4 setInternalConnection:v6];

  v7 = [(NWConnection *)v4 internalConnection];

  if (!v7)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    *buf = 136446210;
    v31 = "[NWConnection initWithConnectedSocket:]";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v10, &type, &v27))
    {
      goto LABEL_19;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      v12 = type;
      if (!os_log_type_enabled(v11, type))
      {
        goto LABEL_27;
      }

      *buf = 136446210;
      v31 = "[NWConnection initWithConnectedSocket:]";
      v13 = "%{public}s nw_connection_create_with_connected_socket failed";
LABEL_25:
      v19 = v11;
      v20 = v12;
      goto LABEL_26;
    }

    if (v27 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      v12 = type;
      if (!os_log_type_enabled(v11, type))
      {
        goto LABEL_27;
      }

      *buf = 136446210;
      v31 = "[NWConnection initWithConnectedSocket:]";
      v13 = "%{public}s nw_connection_create_with_connected_socket failed, backtrace limit exceeded";
      goto LABEL_25;
    }

    v14 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    v15 = type;
    v16 = os_log_type_enabled(v11, type);
    if (!v14)
    {
      if (!v16)
      {
LABEL_27:

        if (!v10)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }

      *buf = 136446210;
      v31 = "[NWConnection initWithConnectedSocket:]";
      v13 = "%{public}s nw_connection_create_with_connected_socket failed, no backtrace";
      v19 = v11;
      v20 = v15;
LABEL_26:
      _os_log_impl(&dword_181A37000, v19, v20, v13, buf, 0xCu);
      goto LABEL_27;
    }

    if (v16)
    {
      *buf = 136446466;
      v31 = "[NWConnection initWithConnectedSocket:]";
      v32 = 2082;
      v33 = v14;
      _os_log_impl(&dword_181A37000, v11, v15, "%{public}s nw_connection_create_with_connected_socket failed, dumping backtrace:%{public}s", buf, 0x16u);
    }

    v17 = v14;
    goto LABEL_18;
  }

  [(NWConnection *)v4 setInternalConnectionState:2];
  [(NWConnection *)v4 start];
  v8 = v4;
LABEL_22:

  return v8;
}

- (NWConnection)initWithEndpoint:(id)a3 parameters:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v25.receiver = self;
  v25.super_class = NWConnection;
  v8 = [(NWConnection *)&v25 init];
  if (v8)
  {
    v9 = [v7 internalParameters];
    indefinite_set = nw_parameters_get_indefinite_set(v9);

    if ((indefinite_set & 1) == 0)
    {
      [v7 setIndefinite:0];
    }

    v11 = [v6 internalEndpoint];
    v12 = [v7 internalParameters];
    v13 = nw_connection_create(v11, v12);
    [(NWConnection *)v8 setInternalConnection:v13];

    v14 = [(NWConnection *)v8 internalConnection];

    if (v14)
    {
      [(NWConnection *)v8 setInternalConnectionState:2];
      [(NWConnection *)v8 start];
      v14 = v8;
    }

    goto LABEL_6;
  }

  v16 = __nwlog_obj();
  *buf = 136446210;
  v27 = "[NWConnection initWithEndpoint:parameters:]";
  v17 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v23 = 0;
  if (__nwlog_fault(v17, &type, &v23))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v18, type))
      {
        *buf = 136446210;
        v27 = "[NWConnection initWithEndpoint:parameters:]";
        v20 = "%{public}s [super init] failed";
LABEL_20:
        _os_log_impl(&dword_181A37000, v18, v19, v20, buf, 0xCu);
      }
    }

    else
    {
      if (v23 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v18 = __nwlog_obj();
        v19 = type;
        v22 = os_log_type_enabled(v18, type);
        if (backtrace_string)
        {
          if (v22)
          {
            *buf = 136446466;
            v27 = "[NWConnection initWithEndpoint:parameters:]";
            v28 = 2082;
            v29 = backtrace_string;
            _os_log_impl(&dword_181A37000, v18, v19, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_22;
        }

        if (!v22)
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v27 = "[NWConnection initWithEndpoint:parameters:]";
        v20 = "%{public}s [super init] failed, no backtrace";
        goto LABEL_20;
      }

      v18 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v18, type))
      {
        *buf = 136446210;
        v27 = "[NWConnection initWithEndpoint:parameters:]";
        v20 = "%{public}s [super init] failed, backtrace limit exceeded";
        goto LABEL_20;
      }
    }

LABEL_21:
  }

LABEL_22:
  if (v17)
  {
    free(v17);
  }

  v14 = 0;
LABEL_6:

  return v14;
}

- (void)start
{
  objc_initWeak(&location, self);
  v3 = [(NWConnection *)self internalConnection];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __21__NWConnection_start__block_invoke;
  handler[3] = &unk_1E6A3D280;
  objc_copyWeak(&v17, &location);
  nw_connection_set_state_changed_handler(v3, handler);

  v4 = [(NWConnection *)self internalConnection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __21__NWConnection_start__block_invoke_15;
  v14[3] = &unk_1E6A2D770;
  objc_copyWeak(&v15, &location);
  nw_connection_set_viability_changed_handler(v4, v14);

  v5 = [(NWConnection *)self internalConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __21__NWConnection_start__block_invoke_19;
  v12[3] = &unk_1E6A2D770;
  objc_copyWeak(&v13, &location);
  nw_connection_set_better_path_available_handler(v5, v12);

  v6 = [(NWConnection *)self internalConnection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __21__NWConnection_start__block_invoke_20;
  v10[3] = &unk_1E6A3D2D8;
  objc_copyWeak(&v11, &location);
  nw_connection_set_path_changed_handler(v6, v10);

  v7 = [(NWConnection *)self internalConnection];
  if (NWCopyInternalQueue_init_once != -1)
  {
    dispatch_once(&NWCopyInternalQueue_init_once, &__block_literal_global_66536);
  }

  v8 = NWCopyInternalQueue_nwQueue;
  nw_connection_set_queue(v7, v8);

  v9 = [(NWConnection *)self internalConnection];
  nw_connection_start(v9);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __21__NWConnection_start__block_invoke(uint64_t a1, unsigned int a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v6 = gLogObj;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v12 = 136446722;
    v13 = "[NWConnection start]_block_invoke";
    v14 = 1024;
    v15 = a2;
    v16 = 2114;
    v17 = v5;
    _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEBUG, "%{public}s Connection got event: state %u %{public}@", &v12, 0x1Cu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained;
    objc_sync_enter(v9);
    v10 = [v9 internalConnectionState];
    if (v10 != a2)
    {
      [v9 willChangeValueForKey:@"connectionState"];
      [v9 setInternalConnectionState:a2];
    }

    if (v5)
    {
      [v9 willChangeValueForKey:@"error"];
      v11 = nw_error_copy_cf_error(v5);
      [v9 setInternalError:v11];
    }

    objc_sync_exit(v9);

    if (v10 != a2)
    {
      [v9 didChangeValueForKey:@"connectionState"];
    }

    if (v5)
    {
      [v9 didChangeValueForKey:@"error"];
    }
  }
}

void __21__NWConnection_start__block_invoke_15(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v4 = gLogObj;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = " not";
    if (a2)
    {
      v5 = "";
    }

    v9 = 136446466;
    v10 = "[NWConnection start]_block_invoke";
    v11 = 2082;
    v12 = v5;
    _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEBUG, "%{public}s Connection got viability event: is%{public}s viable", &v9, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = WeakRetained;
    objc_sync_enter(v8);
    if ([v8 internalIsViable] == a2)
    {
      objc_sync_exit(v8);
    }

    else
    {
      [v8 willChangeValueForKey:@"viable"];
      [v8 setInternalIsViable:a2];
      objc_sync_exit(v8);

      [v8 didChangeValueForKey:@"viable"];
    }
  }
}

void __21__NWConnection_start__block_invoke_19(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v4 = gLogObj;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = " not";
    if (a2)
    {
      v5 = "";
    }

    v9 = 136446466;
    v10 = "[NWConnection start]_block_invoke";
    v11 = 2082;
    v12 = v5;
    _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEBUG, "%{public}s Connection got better path event: better path%{public}s available", &v9, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = WeakRetained;
    objc_sync_enter(v8);
    if ([v8 internalHasBetterPath] == a2)
    {
      objc_sync_exit(v8);
    }

    else
    {
      [v8 willChangeValueForKey:@"hasBetterPath"];
      [v8 setInternalHasBetterPath:a2];
      objc_sync_exit(v8);

      [v8 didChangeValueForKey:@"hasBetterPath"];
    }
  }
}

void __21__NWConnection_start__block_invoke_20(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v4 = gLogObj;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v10 = 136446210;
    v11 = "[NWConnection start]_block_invoke";
    _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEBUG, "%{public}s Connection got updated path event", &v10, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = [[NWPath alloc] initWithPath:v3];
    v7 = WeakRetained;
    objc_sync_enter(v7);
    v8 = [v7 internalPath];
    v9 = v8 == v6;

    if (v9)
    {
      objc_sync_exit(v7);
    }

    else
    {
      [v7 willChangeValueForKey:@"currentPath"];
      [v7 setInternalPath:v6];
      objc_sync_exit(v7);

      [v7 didChangeValueForKey:@"currentPath"];
    }
  }
}

@end