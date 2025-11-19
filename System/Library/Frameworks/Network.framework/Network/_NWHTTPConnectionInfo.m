@interface _NWHTTPConnectionInfo
+ (BOOL)isSubclassOfClass:(Class)a3;
- (BOOL)isKindOfClass:(Class)a3;
- (BOOL)isValid;
- (void)sendPingWithReceiveHandler:(id)a3;
@end

@implementation _NWHTTPConnectionInfo

- (BOOL)isValid
{
  if (self)
  {
    self = self->_connectionMetadata;
  }

  return nw_http_connection_metadata_get_is_closed(self) ^ 1;
}

- (void)sendPingWithReceiveHandler:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self)
  {
    connectionMetadata = self->_connectionMetadata;
  }

  else
  {
    connectionMetadata = 0;
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __52___NWHTTPConnectionInfo_sendPingWithReceiveHandler___block_invoke;
  v21[3] = &unk_1E6A33FB0;
  v21[4] = self;
  v22 = v4;
  v6 = v4;
  v7 = connectionMetadata;
  v8 = v21;
  if (!v7)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_connection_metadata_send_ping";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (!__nwlog_fault(v12, &type, &v23))
    {
      goto LABEL_40;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_connection_metadata_send_ping";
        v15 = "%{public}s called with null metadata";
LABEL_38:
        _os_log_impl(&dword_181A37000, v13, v14, v15, buf, 0xCu);
      }
    }

    else if (v23 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v14 = type;
      v18 = os_log_type_enabled(v13, type);
      if (backtrace_string)
      {
        if (v18)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http_connection_metadata_send_ping";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_40:
        if (!v12)
        {
          goto LABEL_10;
        }

LABEL_41:
        free(v12);
        goto LABEL_10;
      }

      if (v18)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_connection_metadata_send_ping";
        v15 = "%{public}s called with null metadata, no backtrace";
        goto LABEL_38;
      }
    }

    else
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_connection_metadata_send_ping";
        v15 = "%{public}s called with null metadata, backtrace limit exceeded";
        goto LABEL_38;
      }
    }

LABEL_39:

    goto LABEL_40;
  }

  if (nw_protocol_copy_http_connection_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_connection_definition_onceToken, &__block_literal_global_106);
  }

  if (nw_protocol_metadata_matches_definition(v7, nw_protocol_copy_http_connection_definition_definition))
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __nw_http_connection_metadata_send_ping_block_invoke;
    v26 = &unk_1E6A3AA50;
    v9 = v7;
    v27 = v9;
    v28 = v8;
    handle = _nw_protocol_metadata_get_handle(v9);
    if (handle)
    {
      (*&buf[16])(buf, handle);
    }

    goto LABEL_10;
  }

  v16 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_http_connection_metadata_send_ping";
  v12 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v23 = 0;
  if (!__nwlog_fault(v12, &type, &v23))
  {
    goto LABEL_40;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v13 = __nwlog_obj();
    v14 = type;
    if (os_log_type_enabled(v13, type))
    {
      *buf = 136446210;
      *&buf[4] = "nw_http_connection_metadata_send_ping";
      v15 = "%{public}s metadata must be http_connection";
      goto LABEL_38;
    }

    goto LABEL_39;
  }

  if (v23 != 1)
  {
    v13 = __nwlog_obj();
    v14 = type;
    if (os_log_type_enabled(v13, type))
    {
      *buf = 136446210;
      *&buf[4] = "nw_http_connection_metadata_send_ping";
      v15 = "%{public}s metadata must be http_connection, backtrace limit exceeded";
      goto LABEL_38;
    }

    goto LABEL_39;
  }

  v19 = __nw_create_backtrace_string();
  v13 = __nwlog_obj();
  v14 = type;
  v20 = os_log_type_enabled(v13, type);
  if (!v19)
  {
    if (v20)
    {
      *buf = 136446210;
      *&buf[4] = "nw_http_connection_metadata_send_ping";
      v15 = "%{public}s metadata must be http_connection, no backtrace";
      goto LABEL_38;
    }

    goto LABEL_39;
  }

  if (v20)
  {
    *buf = 136446466;
    *&buf[4] = "nw_http_connection_metadata_send_ping";
    *&buf[12] = 2082;
    *&buf[14] = v19;
    _os_log_impl(&dword_181A37000, v13, v14, "%{public}s metadata must be http_connection, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v19);
  if (v12)
  {
    goto LABEL_41;
  }

LABEL_10:
}

- (BOOL)isKindOfClass:(Class)a3
{
  v5.receiver = self;
  v5.super_class = _NWHTTPConnectionInfo;
  if ([(_NWHTTPConnectionInfo *)&v5 isKindOfClass:?])
  {
    return 1;
  }

  else
  {
    return [(objc_class *)a3 isEqual:objc_opt_class()];
  }
}

+ (BOOL)isSubclassOfClass:(Class)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS____NWHTTPConnectionInfo;
  if (objc_msgSendSuper2(&v5, sel_isSubclassOfClass_))
  {
    return 1;
  }

  else
  {
    return [(objc_class *)a3 isEqual:objc_opt_class()];
  }
}

@end