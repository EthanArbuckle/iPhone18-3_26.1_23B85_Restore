@interface NWConcrete_nw_masque_connection
- (NSString)description;
- (void)dealloc;
@end

@implementation NWConcrete_nw_masque_connection

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  if (gLogDatapath == 1)
  {
    v3 = __nwlog_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v6 = "[NWConcrete_nw_masque_connection dealloc]";
      v7 = 2114;
      v8 = self;
      _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@", buf, 0x16u);
    }
  }

  v4.receiver = self;
  v4.super_class = NWConcrete_nw_masque_connection;
  [(NWConcrete_nw_masque_connection *)&v4 dealloc];
}

- (NSString)description
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = self;
  if (!v2)
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_masque_connection_copy_description";
    v13 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (__nwlog_fault(v13, &type, &v21))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v14 = __nwlog_obj();
        v15 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_masque_connection_copy_description";
          _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null masqueConnection", buf, 0xCu);
        }
      }

      else if (v21 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v14 = __nwlog_obj();
        v17 = type;
        v18 = os_log_type_enabled(v14, type);
        if (backtrace_string)
        {
          if (v18)
          {
            *buf = 136446466;
            *&buf[4] = "nw_masque_connection_copy_description";
            v24 = 2082;
            v25 = backtrace_string;
            _os_log_impl(&dword_181A37000, v14, v17, "%{public}s called with null masqueConnection, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_57;
        }

        if (v18)
        {
          *buf = 136446210;
          *&buf[4] = "nw_masque_connection_copy_description";
          _os_log_impl(&dword_181A37000, v14, v17, "%{public}s called with null masqueConnection, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v14 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_masque_connection_copy_description";
          _os_log_impl(&dword_181A37000, v14, v19, "%{public}s called with null masqueConnection, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_57:
    if (v13)
    {
      free(v13);
    }

    goto LABEL_59;
  }

  v3 = v2;
  *buf = 0;
  v4 = *(v2 + 1);
  v5 = *(v2 + 112);
  if (v5 <= 4)
  {
    if (*(v2 + 112) <= 1u)
    {
      if (*(v2 + 112))
      {
        v6 = "initial";
        v7 = *(v2 + 6);
        if (v7)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v6 = "invalid";
        v7 = *(v2 + 6);
        if (v7)
        {
          goto LABEL_24;
        }
      }

LABEL_22:
      v8 = 0;
      goto LABEL_25;
    }

    switch(v5)
    {
      case 2u:
        v6 = "connected";
        v7 = *(v2 + 6);
        if (!v7)
        {
          goto LABEL_22;
        }

        goto LABEL_24;
      case 3u:
        v6 = "got_vers";
        v7 = *(v2 + 6);
        if (!v7)
        {
          goto LABEL_22;
        }

        goto LABEL_24;
      case 4u:
        v6 = "got_methods";
        v7 = *(v2 + 6);
        if (!v7)
        {
          goto LABEL_22;
        }

        goto LABEL_24;
    }

LABEL_39:
    v6 = "unknown";
    v7 = *(v2 + 6);
    if (!v7)
    {
      goto LABEL_22;
    }

    goto LABEL_24;
  }

  if (*(v2 + 112) > 7u)
  {
    switch(v5)
    {
      case 8u:
        v6 = "out_connected";
        v7 = *(v2 + 6);
        if (!v7)
        {
          goto LABEL_22;
        }

        goto LABEL_24;
      case 0xC8u:
        v6 = "ready";
        v7 = *(v2 + 6);
        if (!v7)
        {
          goto LABEL_22;
        }

        goto LABEL_24;
      case 0xFFu:
        v6 = "cancelled";
        v7 = *(v2 + 6);
        if (!v7)
        {
          goto LABEL_22;
        }

        goto LABEL_24;
    }

    goto LABEL_39;
  }

  if (v5 == 5)
  {
    v6 = "got_address_type";
    v7 = *(v2 + 6);
    if (!v7)
    {
      goto LABEL_22;
    }

    goto LABEL_24;
  }

  if (v5 == 6)
  {
    v6 = "got_address";
    v7 = *(v2 + 6);
    if (!v7)
    {
      goto LABEL_22;
    }

    goto LABEL_24;
  }

  if (v5 != 7)
  {
    goto LABEL_39;
  }

  v6 = "got_request";
  v7 = *(v2 + 6);
  if (!v7)
  {
    goto LABEL_22;
  }

LABEL_24:
  v9 = v7;
  v8 = v9[112];

LABEL_25:
  asprintf(buf, "[MPC%llu %s in[C%llu]]", v4, v6, v8);
  v10 = *buf;

  if (v10)
  {
    v11 = CFStringCreateWithCStringNoCopy(*MEMORY[0x1E695E480], v10, 0x8000100u, *MEMORY[0x1E695E488]);
    goto LABEL_60;
  }

LABEL_59:
  v11 = 0;
LABEL_60:

  return v11;
}

@end