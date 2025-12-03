@interface NWURLSessionTaskMetrics
- (NSArray)transactionMetrics;
- (NSDateInterval)taskInterval;
- (NWURLSessionTaskMetrics)initWithCoder:(id)coder;
- (unint64_t)redirectCount;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NWURLSessionTaskMetrics

- (unint64_t)redirectCount
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  if (self)
  {
    clientMetadata = self->_clientMetadata;
  }

  else
  {
    clientMetadata = 0;
  }

  v3 = clientMetadata;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__NWURLSessionTaskMetrics_redirectCount__block_invoke;
  v6[3] = &unk_1E6A3AB68;
  v6[4] = &v7;
  nw_http_client_metadata_enumerate_transactions(v3, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __40__NWURLSessionTaskMetrics_redirectCount__block_invoke(uint64_t a1, void *a2)
{
  if (nw_http_transaction_metadata_get_start_reason(a2) == 1)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  return 1;
}

- (NSDateInterval)taskInterval
{
  if (self)
  {
    start_time = nw_http_client_metadata_get_start_time(self->_clientMetadata);
    end_time = nw_http_client_metadata_get_end_time(self->_clientMetadata);
    clientMetadata = self->_clientMetadata;
  }

  else
  {
    start_time = nw_http_client_metadata_get_start_time(0);
    end_time = nw_http_client_metadata_get_end_time(0);
    clientMetadata = 0;
  }

  v6 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:{nw_http_client_metadata_convert_time_to_absolute(clientMetadata, start_time)}];
  if (!end_time)
  {
    v7 = mach_continuous_time();
    if (v7 <= 1)
    {
      end_time = 1;
    }

    else
    {
      end_time = v7;
    }
  }

  v8 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v6 duration:{nw_delta_nanos(start_time, end_time) * 0.000000001}];

  return v8;
}

- (NSArray)transactionMetrics
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (self)
  {
    clientMetadata = self->_clientMetadata;
  }

  else
  {
    clientMetadata = 0;
  }

  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __45__NWURLSessionTaskMetrics_transactionMetrics__block_invoke;
  v11 = &unk_1E6A2FF70;
  selfCopy = self;
  v13 = v3;
  v5 = v3;
  nw_http_client_metadata_enumerate_transactions(clientMetadata, &v8);
  v6 = [v5 copy];

  return v6;
}

uint64_t __45__NWURLSessionTaskMetrics_transactionMetrics__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NWURLSessionTaskTransactionMetrics alloc];
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = *(v5 + 16);
  }

  else
  {
    v6 = 0;
  }

  v7 = [(NWURLSessionTaskTransactionMetrics *)&v4->super.super.isa initWithTransactionMetadata:v3 clientMetadata:v6];

  [*(a1 + 40) addObject:v7];
  return 1;
}

- (NWURLSessionTaskMetrics)initWithCoder:(id)coder
{
  v51 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_85;
  }

  v5 = MEMORY[0x1E69E9E80];
  v6 = [coderCopy decodeXPCObjectOfType:MEMORY[0x1E69E9E80] forKey:@"clientMetadata"];
  v7 = v6;
  if (!v6)
  {
    v20 = __nwlog_obj();
    *buf = 136446210;
    v48 = "nw_http_client_create_from_dictionary";
    v21 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v45 = 0;
    if (!__nwlog_fault(v21, &type, &v45))
    {
      goto LABEL_72;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v22 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v22, type))
      {
        *buf = 136446210;
        v48 = "nw_http_client_create_from_dictionary";
        v24 = "%{public}s called with null dictionary";
LABEL_70:
        _os_log_impl(&dword_181A37000, v22, v23, v24, buf, 0xCu);
      }
    }

    else if (v45 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v22 = __nwlog_obj();
      v23 = type;
      v33 = os_log_type_enabled(v22, type);
      if (backtrace_string)
      {
        if (v33)
        {
          *buf = 136446466;
          v48 = "nw_http_client_create_from_dictionary";
          v49 = 2082;
          v50 = backtrace_string;
          _os_log_impl(&dword_181A37000, v22, v23, "%{public}s called with null dictionary, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_72:
        if (!v21)
        {
LABEL_83:

LABEL_84:
LABEL_85:
          selfCopy = 0;
          goto LABEL_86;
        }

LABEL_73:
        free(v21);
        goto LABEL_83;
      }

      if (v33)
      {
        *buf = 136446210;
        v48 = "nw_http_client_create_from_dictionary";
        v24 = "%{public}s called with null dictionary, no backtrace";
        goto LABEL_70;
      }
    }

    else
    {
      v22 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v22, type))
      {
        *buf = 136446210;
        v48 = "nw_http_client_create_from_dictionary";
        v24 = "%{public}s called with null dictionary, backtrace limit exceeded";
        goto LABEL_70;
      }
    }

LABEL_71:

    goto LABEL_72;
  }

  if (object_getClass(v6) != v5)
  {
    v25 = __nwlog_obj();
    *buf = 136446210;
    v48 = "nw_http_client_create_from_dictionary";
    v21 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v45 = 0;
    if (!__nwlog_fault(v21, &type, &v45))
    {
      goto LABEL_72;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v22 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v22, type))
      {
        *buf = 136446210;
        v48 = "nw_http_client_create_from_dictionary";
        v24 = "%{public}s called with null (xpc_get_type(dictionary) == (&_xpc_type_dictionary))";
        goto LABEL_70;
      }
    }

    else
    {
      if (v45 == 1)
      {
        v34 = __nw_create_backtrace_string();
        v22 = __nwlog_obj();
        v23 = type;
        v35 = os_log_type_enabled(v22, type);
        if (v34)
        {
          if (v35)
          {
            *buf = 136446466;
            v48 = "nw_http_client_create_from_dictionary";
            v49 = 2082;
            v50 = v34;
            _os_log_impl(&dword_181A37000, v22, v23, "%{public}s called with null (xpc_get_type(dictionary) == (&_xpc_type_dictionary)), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v34);
          if (!v21)
          {
            goto LABEL_83;
          }

          goto LABEL_73;
        }

        if (!v35)
        {
          goto LABEL_71;
        }

        *buf = 136446210;
        v48 = "nw_http_client_create_from_dictionary";
        v24 = "%{public}s called with null (xpc_get_type(dictionary) == (&_xpc_type_dictionary)), no backtrace";
        goto LABEL_70;
      }

      v22 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v22, type))
      {
        *buf = 136446210;
        v48 = "nw_http_client_create_from_dictionary";
        v24 = "%{public}s called with null (xpc_get_type(dictionary) == (&_xpc_type_dictionary)), backtrace limit exceeded";
        goto LABEL_70;
      }
    }

    goto LABEL_71;
  }

  if (nw_protocol_copy_http_client_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_client_definition_onceToken, &__block_literal_global_85);
  }

  singleton = _nw_protocol_metadata_create_singleton();
  v9 = singleton;
  if (!singleton)
  {
    v26 = __nwlog_obj();
    *buf = 136446210;
    v48 = "nw_http_client_create_from_dictionary";
    v27 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v45 = 0;
    if (!__nwlog_fault(v27, &type, &v45))
    {
      goto LABEL_80;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v28 = __nwlog_obj();
      v29 = type;
      if (os_log_type_enabled(v28, type))
      {
        *buf = 136446210;
        v48 = "nw_http_client_create_from_dictionary";
        v30 = "%{public}s called with null metadata";
LABEL_78:
        _os_log_impl(&dword_181A37000, v28, v29, v30, buf, 0xCu);
      }
    }

    else if (v45 == 1)
    {
      v36 = __nw_create_backtrace_string();
      v28 = __nwlog_obj();
      v29 = type;
      v37 = os_log_type_enabled(v28, type);
      if (v36)
      {
        if (v37)
        {
          *buf = 136446466;
          v48 = "nw_http_client_create_from_dictionary";
          v49 = 2082;
          v50 = v36;
          _os_log_impl(&dword_181A37000, v28, v29, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v36);
LABEL_80:
        if (!v27)
        {
LABEL_82:

          goto LABEL_83;
        }

LABEL_81:
        free(v27);
        goto LABEL_82;
      }

      if (v37)
      {
        *buf = 136446210;
        v48 = "nw_http_client_create_from_dictionary";
        v30 = "%{public}s called with null metadata, no backtrace";
        goto LABEL_78;
      }
    }

    else
    {
      v28 = __nwlog_obj();
      v29 = type;
      if (os_log_type_enabled(v28, type))
      {
        *buf = 136446210;
        v48 = "nw_http_client_create_from_dictionary";
        v30 = "%{public}s called with null metadata, backtrace limit exceeded";
        goto LABEL_78;
      }
    }

LABEL_79:

    goto LABEL_80;
  }

  v10 = nw_protocol_copy_http_client_definition_onceToken;
  v11 = singleton;
  if (v10 != -1)
  {
    dispatch_once(&nw_protocol_copy_http_client_definition_onceToken, &__block_literal_global_85);
  }

  v12 = nw_protocol_metadata_matches_definition(v11, nw_protocol_copy_http_client_definition_definition);

  if ((v12 & 1) == 0)
  {
    v31 = __nwlog_obj();
    *buf = 136446210;
    v48 = "nw_http_client_create_from_dictionary";
    v27 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v45 = 0;
    if (!__nwlog_fault(v27, &type, &v45))
    {
      goto LABEL_80;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v28 = __nwlog_obj();
      v29 = type;
      if (os_log_type_enabled(v28, type))
      {
        *buf = 136446210;
        v48 = "nw_http_client_create_from_dictionary";
        v30 = "%{public}s metadata must be http_client";
        goto LABEL_78;
      }
    }

    else
    {
      if (v45 == 1)
      {
        v38 = __nw_create_backtrace_string();
        v28 = __nwlog_obj();
        v29 = type;
        v39 = os_log_type_enabled(v28, type);
        if (v38)
        {
          if (v39)
          {
            *buf = 136446466;
            v48 = "nw_http_client_create_from_dictionary";
            v49 = 2082;
            v50 = v38;
            _os_log_impl(&dword_181A37000, v28, v29, "%{public}s metadata must be http_client, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v38);
          if (!v27)
          {
            goto LABEL_82;
          }

          goto LABEL_81;
        }

        if (!v39)
        {
          goto LABEL_79;
        }

        *buf = 136446210;
        v48 = "nw_http_client_create_from_dictionary";
        v30 = "%{public}s metadata must be http_client, no backtrace";
        goto LABEL_78;
      }

      v28 = __nwlog_obj();
      v29 = type;
      if (os_log_type_enabled(v28, type))
      {
        *buf = 136446210;
        v48 = "nw_http_client_create_from_dictionary";
        v30 = "%{public}s metadata must be http_client, backtrace limit exceeded";
        goto LABEL_78;
      }
    }

    goto LABEL_79;
  }

  v41.receiver = MEMORY[0x1E69E9820];
  v41.super_class = 3221225472;
  v42 = __nw_http_client_create_from_dictionary_block_invoke;
  v43 = &unk_1E6A3A950;
  v13 = v7;
  v44 = v13;
  handle = _nw_protocol_metadata_get_handle(v11);
  if (handle)
  {
    if (v42(&v41, handle))
    {
      v15 = v11;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  if (!v16)
  {
    goto LABEL_84;
  }

  v17 = v16;
  if (self)
  {
    v41.receiver = self;
    v41.super_class = NWURLSessionTaskMetrics;
    v18 = [(NWURLSessionTaskMetrics *)&v41 init];
    self = v18;
    if (v18)
    {
      objc_storeStrong(&v18->_clientMetadata, v15);
    }
  }

  self = self;
  selfCopy = self;
LABEL_86:

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  v38 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = self->_clientMetadata;
    v5 = v4;
    if (!v4)
    {
      v10 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_http_client_copy_dictionary";
      v11 = _os_log_send_and_compose_impl();

      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v25[0]) = 0;
      if (!__nwlog_fault(v11, type, v25))
      {
        goto LABEL_46;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v12 = __nwlog_obj();
        v13 = type[0];
        if (os_log_type_enabled(v12, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_client_copy_dictionary";
          _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null metadata", buf, 0xCu);
        }
      }

      else if (LOBYTE(v25[0]) == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v12 = __nwlog_obj();
        v17 = type[0];
        v18 = os_log_type_enabled(v12, type[0]);
        if (backtrace_string)
        {
          if (v18)
          {
            *buf = 136446466;
            *&buf[4] = "nw_http_client_copy_dictionary";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          if (!v11)
          {
            goto LABEL_48;
          }

          goto LABEL_47;
        }

        if (v18)
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_client_copy_dictionary";
          _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null metadata, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v12 = __nwlog_obj();
        v22 = type[0];
        if (os_log_type_enabled(v12, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_client_copy_dictionary";
          _os_log_impl(&dword_181A37000, v12, v22, "%{public}s called with null metadata, backtrace limit exceeded", buf, 0xCu);
        }
      }

      goto LABEL_45;
    }

    v6 = nw_protocol_copy_http_client_definition_onceToken;
    v7 = v4;
    if (v6 != -1)
    {
      dispatch_once(&nw_protocol_copy_http_client_definition_onceToken, &__block_literal_global_85);
    }

    v8 = nw_protocol_metadata_matches_definition(v7, nw_protocol_copy_http_client_definition_definition);

    if (v8)
    {
      *type = 0;
      v28 = type;
      v29 = 0x3032000000;
      v30 = __Block_byref_object_copy__75915;
      v31 = __Block_byref_object_dispose__75916;
      empty = xpc_dictionary_create_empty();
      v25[0] = 0;
      v25[1] = v25;
      v25[2] = 0x3032000000;
      v25[3] = __Block_byref_object_copy__75915;
      v25[4] = __Block_byref_object_dispose__75916;
      v26 = xpc_array_create_empty();
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __nw_http_client_copy_dictionary_block_invoke;
      v34 = &unk_1E6A3AB90;
      v36 = type;
      v35 = v7;
      v37 = v25;
      if (_nw_protocol_metadata_get_handle(v35))
      {
        (*&buf[16])(buf);
      }

      v9 = *(v28 + 5);

      _Block_object_dispose(v25, 8);
      _Block_object_dispose(type, 8);

      goto LABEL_9;
    }

    v14 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_client_copy_dictionary";
    v11 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v25[0]) = 0;
    if (__nwlog_fault(v11, type, v25))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v12 = __nwlog_obj();
        v15 = type[0];
        if (os_log_type_enabled(v12, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_client_copy_dictionary";
          _os_log_impl(&dword_181A37000, v12, v15, "%{public}s metadata must be http_client", buf, 0xCu);
        }

LABEL_45:

        goto LABEL_46;
      }

      if (LOBYTE(v25[0]) != 1)
      {
        v12 = __nwlog_obj();
        v23 = type[0];
        if (os_log_type_enabled(v12, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_client_copy_dictionary";
          _os_log_impl(&dword_181A37000, v12, v23, "%{public}s metadata must be http_client, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_45;
      }

      v19 = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v20 = type[0];
      v21 = os_log_type_enabled(v12, type[0]);
      if (!v19)
      {
        if (v21)
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_client_copy_dictionary";
          _os_log_impl(&dword_181A37000, v12, v20, "%{public}s metadata must be http_client, no backtrace", buf, 0xCu);
        }

        goto LABEL_45;
      }

      if (v21)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_client_copy_dictionary";
        *&buf[12] = 2082;
        *&buf[14] = v19;
        _os_log_impl(&dword_181A37000, v12, v20, "%{public}s metadata must be http_client, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v19);
    }

LABEL_46:
    if (!v11)
    {
LABEL_48:
      v9 = 0;
LABEL_9:

      [coderCopy encodeXPCObject:v9 forKey:@"clientMetadata"];
      goto LABEL_10;
    }

LABEL_47:
    free(v11);
    goto LABEL_48;
  }

LABEL_10:
}

uint64_t __53__NWURLSessionTaskMetrics_reportToSymptoms_activity___block_invoke(uint64_t a1, void *a2)
{
  v92 = *MEMORY[0x1E69E9840];
  v3 = a2;
  start_reason = nw_http_transaction_metadata_get_start_reason(v3);
  if (start_reason == 3)
  {
    v6 = 56;
  }

  else
  {
    if (start_reason != 1)
    {
      goto LABEL_8;
    }

    if (*(*(*(a1 + 40) + 8) + 24))
    {
      v5 = *(a1 + 64) + 80 * (*(*(*(a1 + 40) + 8) + 24) - 1);
      *(v5 + 162) |= 0x2000000u;
    }

    v6 = 48;
  }

  ++*(*(*(a1 + v6) + 8) + 24);
LABEL_8:
  v7 = *(a1 + 64) + 80 * *(*(*(a1 + 40) + 8) + 24) + 88;
  outbound_message_start_time = nw_http_transaction_metadata_get_outbound_message_start_time(v3);
  v9 = dword_1ED4117CC;
  if (!dword_1ED4117CC)
  {
    mach_timebase_info(&time_base);
    v9 = dword_1ED4117CC;
  }

  *(v7 + 16) = outbound_message_start_time * time_base / v9 / 0xF4240;
  outbound_message_end_time = nw_http_transaction_metadata_get_outbound_message_end_time(v3);
  v11 = dword_1ED4117CC;
  if (!dword_1ED4117CC)
  {
    mach_timebase_info(&time_base);
    v11 = dword_1ED4117CC;
  }

  *(v7 + 24) = outbound_message_end_time * time_base / v11 / 0xF4240;
  inbound_message_start_time = nw_http_transaction_metadata_get_inbound_message_start_time(v3);
  v13 = dword_1ED4117CC;
  if (!dword_1ED4117CC)
  {
    mach_timebase_info(&time_base);
    v13 = dword_1ED4117CC;
  }

  *(v7 + 32) = inbound_message_start_time * time_base / v13 / 0xF4240;
  inbound_message_end_time = nw_http_transaction_metadata_get_inbound_message_end_time(v3);
  v15 = dword_1ED4117CC;
  if (!dword_1ED4117CC)
  {
    mach_timebase_info(&time_base);
    v15 = dword_1ED4117CC;
  }

  *(v7 + 40) = inbound_message_end_time * time_base / v15 / 0xF4240;
  outbound_header_size = nw_http_transaction_metadata_get_outbound_header_size(v3);
  *(v7 + 56) = nw_http_transaction_metadata_get_outbound_body_transfer_size(v3) + outbound_header_size;
  inbound_header_size = nw_http_transaction_metadata_get_inbound_header_size(v3);
  *(v7 + 64) = nw_http_transaction_metadata_get_inbound_body_transfer_size(v3) + inbound_header_size;
  connection_metadata = nw_http_transaction_metadata_get_connection_metadata(v3);
  v19 = connection_metadata;
  if (!connection_metadata)
  {
    v20 = (v7 + 74);
    v23 = *(v7 + 74);
LABEL_25:
    v24 = 4096;
LABEL_26:
    v23 = v23 & 0xFFFF0FFF | v24;
    *v20 = v23;
    goto LABEL_27;
  }

  nw_http_connection_metadata_get_uuid(connection_metadata, v7);
  v20 = (v7 + 74);
  if (nw_http_transaction_metadata_is_first_on_connection(v3))
  {
    v21 = 0;
  }

  else
  {
    v21 = 0x1000000;
  }

  *v20 = *(v7 + 74) & 0xFEFFFFFF | v21;
  version = nw_http_connection_metadata_get_version(v19);
  v23 = *v20;
  if (version <= 3)
  {
    if (version)
    {
      if (version != 3)
      {
        goto LABEL_27;
      }

      v24 = 12288;
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  if (version == 4)
  {
    v24 = 0x4000;
    goto LABEL_26;
  }

  if (version == 5)
  {
    v24 = 20480;
    goto LABEL_26;
  }

LABEL_27:
  *(v7 + 74) = v23 & 0xFF00FF0F | 0x120010;
  outbound_message = nw_http_transaction_metadata_get_outbound_message(v3);
  v26 = outbound_message;
  if (outbound_message)
  {
    v27 = nw_http_metadata_copy_request(outbound_message);
    *type = 0;
    v76 = type;
    v77 = 0x2020000000;
    LOBYTE(v78) = 1;
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __httpRequestMethodFromRequest_block_invoke;
    v89 = &unk_1E6A3AA78;
    v90 = type;
    nw_http_request_access_method(v27, buf);
    v28 = *(v76 + 24);
    _Block_object_dispose(type, 8);

    *(v7 + 74) = *(v7 + 74) & 0xFFFFFFF0 | v28 & 0xF;
  }

  inbound_message = nw_http_transaction_metadata_get_inbound_message(v3);
  v30 = inbound_message;
  if (inbound_message)
  {
    v31 = nw_http_metadata_copy_response(inbound_message);
    v32 = v31;
    if (v31)
    {
      v33 = v31;
      have_field_with_name = _nw_http_fields_have_field_with_name(v33, "x-akam-sw-version");

      if (have_field_with_name)
      {
        v35 = 1536;
      }

      else
      {
        v36 = v33;
        v37 = _nw_http_fields_have_field_with_name(v36, "x-fb-debug");

        if (v37)
        {
          v35 = 768;
        }

        else
        {
          v84 = 0;
          v85 = &v84;
          v86 = 0x2020000000;
          v87 = 1;
          v80 = 0;
          v81 = &v80;
          v82 = 0x2020000000;
          v83 = 0;
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = __httpServerTypeFromResponse_block_invoke;
          v89 = &unk_1E6A307F8;
          v90 = &v84;
          v91 = &v80;
          v38 = v36;
          v39 = buf;
          _nw_http_fields_access_value_by_name(v38, "Via", v39);

          v40 = *(v85 + 24);
          if (v40 == 1)
          {
            *type = MEMORY[0x1E69E9820];
            v76 = 3221225472;
            v77 = __httpServerTypeFromResponse_block_invoke_2;
            v78 = &unk_1E6A3AA78;
            v79 = &v84;
            v41 = v38;
            v42 = type;
            _nw_http_fields_access_value_by_name(v41, "x-cdn", v42);

            v40 = *(v85 + 24);
            if (v40 == 1)
            {
              v74[0] = MEMORY[0x1E69E9820];
              v74[1] = 3221225472;
              v74[2] = __httpServerTypeFromResponse_block_invoke_3;
              v74[3] = &unk_1E6A3AA78;
              v74[4] = &v84;
              v43 = v41;
              v44 = v74;
              _nw_http_fields_access_value_by_name(v43, "edge-type", v44);

              v40 = *(v85 + 24);
              if (v40 == 1)
              {
                v73[0] = MEMORY[0x1E69E9820];
                v73[1] = 3221225472;
                v73[2] = __httpServerTypeFromResponse_block_invoke_4;
                v73[3] = &unk_1E6A3AA78;
                v73[4] = &v84;
                nw_http_fields_access_value_by_name(v43, "Server", v73);
                v40 = *(v85 + 24);
                if (v40 == 1)
                {
                  if (*(v81 + 24))
                  {
                    LOBYTE(v40) = 13;
                  }

                  else
                  {
                    LOBYTE(v40) = 1;
                  }
                }
              }
            }
          }

          _Block_object_dispose(&v80, 8);
          _Block_object_dispose(&v84, 8);
          v35 = (v40 & 0xF) << 8;
        }
      }
    }

    else
    {
      v35 = 256;
    }

    *(v7 + 74) = *(v7 + 74) & 0xFFFFF0FF | v35;
    v45 = [*(a1 + 32) response];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v46 = [v45 statusCode];
    }

    else
    {
      v46 = 0;
    }

    *(v7 + 72) = v46;
  }

  *(v7 + 48) = 0;
  *(v7 + 74) &= ~0x10000000u;
  if (nw_settings_get_http_connection_coalescing_enabled())
  {
    v47 = 0x20000000;
  }

  else
  {
    v47 = 0;
  }

  *(v7 + 74) = *(v7 + 74) & 0xDFFFFFFF | v47;
  v48 = *(a1 + 32);
  if (v48)
  {
    v49 = *(v48 + 424);
    v50 = v49;
    if (v49)
    {
      if ([v49[2] enablesEarlyData])
      {
        v51 = 0x40000000;
      }

      else
      {
        if (enablesEarlyData_onceToken != -1)
        {
          dispatch_once(&enablesEarlyData_onceToken, &__block_literal_global_7);
        }

        if (enablesEarlyData_earlyDataEnabled)
        {
          v51 = 0x40000000;
        }

        else
        {
          v51 = 0;
        }
      }
    }

    else
    {
      v51 = 0;
    }
  }

  else
  {
    v50 = 0;
    v51 = 0;
  }

  *(v7 + 74) = *(v7 + 74) & 0xBFFFFFFF | v51;

  v52 = v3;
  v53 = v52;
  if (v52)
  {
    v54 = nw_protocol_copy_http_transaction_definition_onceToken;
    v55 = v52;
    if (v54 != -1)
    {
      dispatch_once(&nw_protocol_copy_http_transaction_definition_onceToken, &__block_literal_global_98);
    }

    v56 = nw_protocol_metadata_matches_definition(v55, nw_protocol_copy_http_transaction_definition_definition);

    if (v56)
    {
      *type = 0;
      v76 = type;
      v77 = 0x2020000000;
      LOBYTE(v78) = 0;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __nw_http_transaction_metadata_get_attempted_early_data_block_invoke;
      v89 = &unk_1E6A3A858;
      v90 = type;
      if (_nw_protocol_metadata_get_handle(v55))
      {
        (*&buf[16])(buf);
      }

      v57 = *(v76 + 24);
      _Block_object_dispose(type, 8);
      if (v57)
      {
        v58 = 0x80000000;
      }

      else
      {
        v58 = 0;
      }

      goto LABEL_73;
    }

    v64 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_transaction_metadata_get_attempted_early_data";
    v61 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v74[0]) = 0;
    if (__nwlog_fault(v61, type, v74))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v62 = __nwlog_obj();
        v65 = type[0];
        if (os_log_type_enabled(v62, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_transaction_metadata_get_attempted_early_data";
          _os_log_impl(&dword_181A37000, v62, v65, "%{public}s metadata must be http_transaction", buf, 0xCu);
        }

LABEL_105:

        goto LABEL_106;
      }

      if (LOBYTE(v74[0]) != 1)
      {
        v62 = __nwlog_obj();
        v70 = type[0];
        if (os_log_type_enabled(v62, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_transaction_metadata_get_attempted_early_data";
          _os_log_impl(&dword_181A37000, v62, v70, "%{public}s metadata must be http_transaction, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_105;
      }

      backtrace_string = __nw_create_backtrace_string();
      v62 = __nwlog_obj();
      v72 = type[0];
      v68 = os_log_type_enabled(v62, type[0]);
      if (!backtrace_string)
      {
        if (v68)
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_transaction_metadata_get_attempted_early_data";
          _os_log_impl(&dword_181A37000, v62, v72, "%{public}s metadata must be http_transaction, no backtrace", buf, 0xCu);
        }

        goto LABEL_105;
      }

      if (v68)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_transaction_metadata_get_attempted_early_data";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v62, v72, "%{public}s metadata must be http_transaction, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_93;
    }
  }

  else
  {
    v60 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_transaction_metadata_get_attempted_early_data";
    v61 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v74[0]) = 0;
    if (__nwlog_fault(v61, type, v74))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v62 = __nwlog_obj();
        v63 = type[0];
        if (os_log_type_enabled(v62, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_transaction_metadata_get_attempted_early_data";
          _os_log_impl(&dword_181A37000, v62, v63, "%{public}s called with null metadata", buf, 0xCu);
        }

        goto LABEL_105;
      }

      if (LOBYTE(v74[0]) != 1)
      {
        v62 = __nwlog_obj();
        v69 = type[0];
        if (os_log_type_enabled(v62, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_transaction_metadata_get_attempted_early_data";
          _os_log_impl(&dword_181A37000, v62, v69, "%{public}s called with null metadata, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_105;
      }

      backtrace_string = __nw_create_backtrace_string();
      v62 = __nwlog_obj();
      v71 = type[0];
      v67 = os_log_type_enabled(v62, type[0]);
      if (!backtrace_string)
      {
        if (v67)
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_transaction_metadata_get_attempted_early_data";
          _os_log_impl(&dword_181A37000, v62, v71, "%{public}s called with null metadata, no backtrace", buf, 0xCu);
        }

        goto LABEL_105;
      }

      if (v67)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_transaction_metadata_get_attempted_early_data";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v62, v71, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_93:

      free(backtrace_string);
    }
  }

LABEL_106:
  if (v61)
  {
    free(v61);
  }

  v58 = 0;
LABEL_73:

  *(v7 + 74) = *(v7 + 74) & 0x7FFFFFFF | v58;
  *(v7 + 78) = *(v7 + 78) & 0xFFFE | nw_http_transaction_metadata_get_used_early_data(v53);
  ++*(*(*(a1 + 40) + 8) + 24);

  return 1;
}

uint64_t __53__NWURLSessionTaskMetrics_reportToSymptoms_activity___block_invoke_2()
{
  result = symptom_framework_init();
  reportToSymptoms_activity__symptomReporter = result;
  return result;
}

@end