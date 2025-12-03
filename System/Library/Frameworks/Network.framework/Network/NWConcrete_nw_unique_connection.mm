@interface NWConcrete_nw_unique_connection
- (NSString)description;
- (NWConcrete_nw_unique_connection)init;
- (void)dealloc;
@end

@implementation NWConcrete_nw_unique_connection

- (NSString)description
{
  v28 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  if (!selfCopy)
  {
    v16 = __nwlog_obj();
    *out = 136446210;
    *&out[4] = "nw_unique_connection_copy_description";
    v17 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (__nwlog_fault(v17, type, &v26))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v18 = __nwlog_obj();
        v19 = type[0];
        if (os_log_type_enabled(v18, type[0]))
        {
          *out = 136446210;
          *&out[4] = "nw_unique_connection_copy_description";
          _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null uniqueConnection", out, 0xCu);
        }
      }

      else if (v26 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v18 = __nwlog_obj();
        v21 = type[0];
        v22 = os_log_type_enabled(v18, type[0]);
        if (backtrace_string)
        {
          if (v22)
          {
            *out = 136446466;
            *&out[4] = "nw_unique_connection_copy_description";
            *&out[12] = 2082;
            *&out[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v18, v21, "%{public}s called with null uniqueConnection, dumping backtrace:%{public}s", out, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_33;
        }

        if (v22)
        {
          *out = 136446210;
          *&out[4] = "nw_unique_connection_copy_description";
          _os_log_impl(&dword_181A37000, v18, v21, "%{public}s called with null uniqueConnection, no backtrace", out, 0xCu);
        }
      }

      else
      {
        v18 = __nwlog_obj();
        v23 = type[0];
        if (os_log_type_enabled(v18, type[0]))
        {
          *out = 136446210;
          *&out[4] = "nw_unique_connection_copy_description";
          _os_log_impl(&dword_181A37000, v18, v23, "%{public}s called with null uniqueConnection, backtrace limit exceeded", out, 0xCu);
        }
      }
    }

LABEL_33:
    if (v17)
    {
      free(v17);
    }

    goto LABEL_35;
  }

  v3 = selfCopy;
  memset(out, 0, sizeof(out));
  uuid_unparse(selfCopy->uuid, out);
  connection = v3->connection;
  if (connection)
  {
    v5 = nw_service_connector_copy_connection_description(connection);
  }

  else
  {
    v5 = 0;
  }

  *type = 0;
  uniqueID = v3->uniqueID;
  v7 = *(v3 + 500);
  v8 = v3->endpoint;
  v9 = v8;
  if (v8)
  {
    description = _nw_endpoint_get_description(v8);
  }

  else
  {
    description = "<NULL>";
  }

  v11 = "incoming";
  if ((v7 & 1) == 0)
  {
    v11 = "outgoing";
  }

  v12 = " ";
  v13 = "";
  if (v5)
  {
    v13 = v5;
  }

  else
  {
    v12 = "";
  }

  asprintf(type, "[SCU%llu %s %s %s %s recv seq %llu [socket%d]%s%s]", uniqueID, v11, description, v3->service, out, v3->receivedSequenceNumber, v3->dupedSocketFD, v12, v13);
  if (v5)
  {
    free(v5);
  }

  v14 = *type;

  if (v14)
  {
    v15 = CFStringCreateWithCStringNoCopy(*MEMORY[0x1E695E480], v14, 0x8000100u, *MEMORY[0x1E695E488]);
    goto LABEL_36;
  }

LABEL_35:
  v15 = 0;
LABEL_36:

  return v15;
}

- (void)dealloc
{
  v22 = *MEMORY[0x1E69E9840];
  if ((self->dupedSocketFD & 0x80000000) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    *buf = 136446466;
    v17 = "[NWConcrete_nw_unique_connection dealloc]";
    v18 = 2114;
    selfCopy5 = self;
    v12 = 22;
    v11 = buf;
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
        if (os_log_type_enabled(v5, type))
        {
          *buf = 136446466;
          v17 = "[NWConcrete_nw_unique_connection dealloc]";
          v18 = 2114;
          selfCopy5 = self;
          _os_log_impl(&dword_181A37000, v5, v6, "%{public}s nw_unique_connection %{public}@ dealloc with dupedSocketFD", buf, 0x16u);
        }
      }

      else if (v14 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v8 = type;
        v9 = os_log_type_enabled(v5, type);
        if (backtrace_string)
        {
          if (v9)
          {
            *buf = 136446722;
            v17 = "[NWConcrete_nw_unique_connection dealloc]";
            v18 = 2114;
            selfCopy5 = self;
            v20 = 2082;
            v21 = backtrace_string;
            _os_log_impl(&dword_181A37000, v5, v8, "%{public}s nw_unique_connection %{public}@ dealloc with dupedSocketFD, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(backtrace_string);
          if (!v4)
          {
            goto LABEL_9;
          }

          goto LABEL_8;
        }

        if (v9)
        {
          *buf = 136446466;
          v17 = "[NWConcrete_nw_unique_connection dealloc]";
          v18 = 2114;
          selfCopy5 = self;
          _os_log_impl(&dword_181A37000, v5, v8, "%{public}s nw_unique_connection %{public}@ dealloc with dupedSocketFD, no backtrace", buf, 0x16u);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v10 = type;
        if (os_log_type_enabled(v5, type))
        {
          *buf = 136446466;
          v17 = "[NWConcrete_nw_unique_connection dealloc]";
          v18 = 2114;
          selfCopy5 = self;
          _os_log_impl(&dword_181A37000, v5, v10, "%{public}s nw_unique_connection %{public}@ dealloc with dupedSocketFD, backtrace limit exceeded", buf, 0x16u);
        }
      }
    }

    if (!v4)
    {
LABEL_9:
      close(self->dupedSocketFD);
      self->dupedSocketFD = -1;
      goto LABEL_10;
    }

LABEL_8:
    free(v4);
    goto LABEL_9;
  }

LABEL_10:
  v13.receiver = self;
  v13.super_class = NWConcrete_nw_unique_connection;
  [(NWConcrete_nw_unique_connection *)&v13 dealloc:v11];
}

- (NWConcrete_nw_unique_connection)init
{
  v21 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = NWConcrete_nw_unique_connection;
  v2 = [(NWConcrete_nw_unique_connection *)&v16 init];
  v3 = v2;
  if (v2)
  {
    v2->uniqueID = atomic_fetch_add(&[NWConcrete_nw_unique_connection init]::sNWSCUCUniqueID, 1uLL);
    v2->dupedSocketFD = -1;
    v4 = v2;
    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v18 = "[NWConcrete_nw_unique_connection init]";
  v7 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (__nwlog_fault(v7, &type, &v14))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v18 = "[NWConcrete_nw_unique_connection init]";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s [super init] failed", buf, 0xCu);
      }
    }

    else if (v14 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v11 = type;
      v12 = os_log_type_enabled(v8, type);
      if (backtrace_string)
      {
        if (v12)
        {
          *buf = 136446466;
          v18 = "[NWConcrete_nw_unique_connection init]";
          v19 = 2082;
          v20 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v12)
      {
        *buf = 136446210;
        v18 = "[NWConcrete_nw_unique_connection init]";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s [super init] failed, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v18 = "[NWConcrete_nw_unique_connection init]";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s [super init] failed, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v7)
  {
    free(v7);
  }

LABEL_3:

  return v3;
}

@end