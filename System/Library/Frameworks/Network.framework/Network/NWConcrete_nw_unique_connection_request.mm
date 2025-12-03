@interface NWConcrete_nw_unique_connection_request
- (NSString)description;
- (NWConcrete_nw_unique_connection_request)init;
- (void)dealloc;
@end

@implementation NWConcrete_nw_unique_connection_request

- (NSString)description
{
  v42 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  if (!selfCopy)
  {
    v24 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_unique_connection_request_copy_description";
    v25 = _os_log_send_and_compose_impl();

    out[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v33) = 0;
    if (__nwlog_fault(v25, out, &v33))
    {
      if (out[0] == OS_LOG_TYPE_FAULT)
      {
        v26 = __nwlog_obj();
        v27 = out[0];
        if (os_log_type_enabled(v26, out[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_unique_connection_request_copy_description";
          _os_log_impl(&dword_181A37000, v26, v27, "%{public}s called with null request", buf, 0xCu);
        }
      }

      else if (v33 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v26 = __nwlog_obj();
        v29 = out[0];
        v30 = os_log_type_enabled(v26, out[0]);
        if (backtrace_string)
        {
          if (v30)
          {
            *buf = 136446466;
            *&buf[4] = "nw_unique_connection_request_copy_description";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v26, v29, "%{public}s called with null request, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_48;
        }

        if (v30)
        {
          *buf = 136446210;
          *&buf[4] = "nw_unique_connection_request_copy_description";
          _os_log_impl(&dword_181A37000, v26, v29, "%{public}s called with null request, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v26 = __nwlog_obj();
        v31 = out[0];
        if (os_log_type_enabled(v26, out[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_unique_connection_request_copy_description";
          _os_log_impl(&dword_181A37000, v26, v31, "%{public}s called with null request, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_48:
    if (v25)
    {
      free(v25);
    }

    goto LABEL_50;
  }

  v3 = selfCopy;
  memset(out, 0, 37);
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

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  memset(buf, 0, sizeof(buf));
  endpoint = v3->endpoint;
  if (endpoint)
  {
    nwsc_get_identifier(endpoint, "", buf, 0x80uLL);
    v7 = v3->endpoint;
    v33 = 0;
    uniqueID = v3->uniqueID;
    v9 = *(v3 + 616);
    v10 = v7;
    v11 = v10;
    if (v10)
    {
      description = _nw_endpoint_get_description(v10);
      goto LABEL_10;
    }
  }

  else
  {
    v33 = 0;
    uniqueID = v3->uniqueID;
    v9 = *(v3 + 616);
    v11 = 0;
  }

  description = "<NULL>";
LABEL_10:

  v13 = "";
  v14 = " processed";
  if ((v9 & 0x40) == 0)
  {
    v14 = "";
  }

  v15 = " waitingActiveConnection";
  if ((v9 & 0x10) == 0)
  {
    v15 = "";
  }

  v16 = " waitingListener";
  if ((v9 & 8) == 0)
  {
    v16 = "";
  }

  if (v9 >= 0)
  {
    v17 = "";
  }

  else
  {
    v17 = " waitingPath";
  }

  v18 = " accepted";
  if ((v9 & 4) == 0)
  {
    v18 = "";
  }

  v19 = " pending";
  v20 = "incoming";
  if ((v9 & 2) == 0)
  {
    v19 = "";
  }

  if ((v9 & 1) == 0)
  {
    v20 = "outgoing";
  }

  v21 = " ";
  if (v5)
  {
    v13 = v5;
  }

  else
  {
    v21 = "";
  }

  asprintf(&v33, "[SCR%llu %s%s%s%s%s%s%s %s %s %s seq %llu%s%s]", uniqueID, v20, v19, v18, v17, v16, v15, v14, description, v3->service, out, v3->sequenceNumber, v21, v13);
  if (v5)
  {
    free(v5);
  }

  v22 = v33;

  if (v22)
  {
    v23 = CFStringCreateWithCStringNoCopy(*MEMORY[0x1E695E480], v22, 0x8000100u, *MEMORY[0x1E695E488]);
    goto LABEL_51;
  }

LABEL_50:
  v23 = 0;
LABEL_51:

  return v23;
}

- (void)dealloc
{
  v25 = *MEMORY[0x1E69E9840];
  rejectTimer = self->rejectTimer;
  if (rejectTimer)
  {
    nw_queue_cancel_source(rejectTimer, a2);
    self->rejectTimer = 0;
  }

  preexistingConnectionTimer = self->preexistingConnectionTimer;
  if (preexistingConnectionTimer)
  {
    nw_queue_cancel_source(preexistingConnectionTimer, a2);
    self->preexistingConnectionTimer = 0;
  }

  incomingReqBytesToVerify = self->incomingReqBytesToVerify;
  if (incomingReqBytesToVerify)
  {
    free(incomingReqBytesToVerify);
    self->incomingReqBytesToVerify = 0;
  }

  self->incomingReqBytesToVerifyLen = 0;
  if (!self->requestCompletionBlock)
  {
    goto LABEL_15;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v6 = gLogObj;
  *buf = 136446466;
  v20 = "[NWConcrete_nw_unique_connection_request dealloc]";
  v21 = 2114;
  selfCopy5 = self;
  v15 = 22;
  v14 = buf;
  v7 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v17 = 0;
  if (__nwlog_fault(v7, &type, &v17))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446466;
        v20 = "[NWConcrete_nw_unique_connection_request dealloc]";
        v21 = 2114;
        selfCopy5 = self;
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s Dealloc of %{public}@ with requestCompletionBlock present", buf, 0x16u);
      }
    }

    else if (v17 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v11 = type;
      v12 = os_log_type_enabled(v8, type);
      if (backtrace_string)
      {
        if (v12)
        {
          *buf = 136446722;
          v20 = "[NWConcrete_nw_unique_connection_request dealloc]";
          v21 = 2114;
          selfCopy5 = self;
          v23 = 2082;
          v24 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s Dealloc of %{public}@ with requestCompletionBlock present, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(backtrace_string);
        if (v7)
        {
          goto LABEL_14;
        }

        goto LABEL_15;
      }

      if (v12)
      {
        *buf = 136446466;
        v20 = "[NWConcrete_nw_unique_connection_request dealloc]";
        v21 = 2114;
        selfCopy5 = self;
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s Dealloc of %{public}@ with requestCompletionBlock present, no backtrace", buf, 0x16u);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v13 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446466;
        v20 = "[NWConcrete_nw_unique_connection_request dealloc]";
        v21 = 2114;
        selfCopy5 = self;
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s Dealloc of %{public}@ with requestCompletionBlock present, backtrace limit exceeded", buf, 0x16u);
      }
    }
  }

  if (v7)
  {
LABEL_14:
    free(v7);
  }

LABEL_15:
  v16.receiver = self;
  v16.super_class = NWConcrete_nw_unique_connection_request;
  [(NWConcrete_nw_unique_connection_request *)&v16 dealloc:v14];
}

- (NWConcrete_nw_unique_connection_request)init
{
  v21 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = NWConcrete_nw_unique_connection_request;
  v2 = [(NWConcrete_nw_unique_connection_request *)&v16 init];
  v3 = v2;
  if (v2)
  {
    v2->uniqueID = atomic_fetch_add(&[NWConcrete_nw_unique_connection_request init]::sNWSCUCRUniqueID, 1uLL);
    v4 = v2;
    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v18 = "[NWConcrete_nw_unique_connection_request init]";
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
        v18 = "[NWConcrete_nw_unique_connection_request init]";
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
          v18 = "[NWConcrete_nw_unique_connection_request init]";
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
        v18 = "[NWConcrete_nw_unique_connection_request init]";
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
        v18 = "[NWConcrete_nw_unique_connection_request init]";
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