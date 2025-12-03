@interface NWConcrete_nw_candidate_manager
- (NSString)description;
- (id)init:(id)init;
@end

@implementation NWConcrete_nw_candidate_manager

- (NSString)description
{
  parameters = self->parameters;
  if (parameters)
  {
    if (_nw_parameters_get_server_mode(parameters))
    {
      v4 = "server ";
    }

    else
    {
      v4 = "client ";
    }
  }

  else
  {
    v4 = "";
  }

  service = self->service;
  v6 = *MEMORY[0x1E695E480];
  log_id = self->log_id;
  if (service)
  {
    v8 = service;
    bonjour_service_name = _nw_endpoint_get_bonjour_service_name(v8);

    bonjour_service_type = nw_endpoint_get_bonjour_service_type(self->service);
    v10 = CFStringCreateWithFormat(v6, 0, @"[CM%zu %s%s.%s]", log_id, v4, bonjour_service_name, bonjour_service_type);
  }

  else
  {
    v10 = CFStringCreateWithFormat(v6, 0, @"[CM%zu %s]", self->log_id, v4);
  }

  return v10;
}

- (id)init:(id)init
{
  v33 = *MEMORY[0x1E69E9840];
  initCopy = init;
  if (!initCopy)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v30 = "[NWConcrete_nw_candidate_manager init:]";
    v11 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (__nwlog_fault(v11, &type, &v27))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v12 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v30 = "[NWConcrete_nw_candidate_manager init:]";
          _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null _parameters", buf, 0xCu);
        }
      }

      else if (v27 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v12 = __nwlog_obj();
        v19 = type;
        v20 = os_log_type_enabled(v12, type);
        if (backtrace_string)
        {
          if (v20)
          {
            *buf = 136446466;
            v30 = "[NWConcrete_nw_candidate_manager init:]";
            v31 = 2082;
            v32 = backtrace_string;
            _os_log_impl(&dword_181A37000, v12, v19, "%{public}s called with null _parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_34;
        }

        if (v20)
        {
          *buf = 136446210;
          v30 = "[NWConcrete_nw_candidate_manager init:]";
          _os_log_impl(&dword_181A37000, v12, v19, "%{public}s called with null _parameters, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v12 = __nwlog_obj();
        v24 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v30 = "[NWConcrete_nw_candidate_manager init:]";
          _os_log_impl(&dword_181A37000, v12, v24, "%{public}s called with null _parameters, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_34:
    if (v11)
    {
      free(v11);
    }

    goto LABEL_42;
  }

  v26.receiver = self;
  v26.super_class = NWConcrete_nw_candidate_manager;
  v6 = [(NWConcrete_nw_candidate_manager *)&v26 init];
  if (!v6)
  {
    v14 = __nwlog_obj();
    *buf = 136446210;
    v30 = "[NWConcrete_nw_candidate_manager init:]";
    v15 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (__nwlog_fault(v15, &type, &v27))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v16 = __nwlog_obj();
        v17 = type;
        if (os_log_type_enabled(v16, type))
        {
          *buf = 136446210;
          v30 = "[NWConcrete_nw_candidate_manager init:]";
          _os_log_impl(&dword_181A37000, v16, v17, "%{public}s [super init] failed", buf, 0xCu);
        }
      }

      else if (v27 == 1)
      {
        v21 = __nw_create_backtrace_string();
        v16 = __nwlog_obj();
        v22 = type;
        v23 = os_log_type_enabled(v16, type);
        if (v21)
        {
          if (v23)
          {
            *buf = 136446466;
            v30 = "[NWConcrete_nw_candidate_manager init:]";
            v31 = 2082;
            v32 = v21;
            _os_log_impl(&dword_181A37000, v16, v22, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v21);
          goto LABEL_40;
        }

        if (v23)
        {
          *buf = 136446210;
          v30 = "[NWConcrete_nw_candidate_manager init:]";
          _os_log_impl(&dword_181A37000, v16, v22, "%{public}s [super init] failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v16 = __nwlog_obj();
        v25 = type;
        if (os_log_type_enabled(v16, type))
        {
          *buf = 136446210;
          v30 = "[NWConcrete_nw_candidate_manager init:]";
          _os_log_impl(&dword_181A37000, v16, v25, "%{public}s [super init] failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_40:
    if (v15)
    {
      free(v15);
    }

LABEL_42:
    v6 = 0;
    goto LABEL_4;
  }

  v6->log_id = nw_candidate_manager_get_next_id();
  objc_storeStrong(&v6->parameters, init);
  v7 = _nw_array_create();
  candidates = v6->candidates;
  v6->candidates = v7;

LABEL_4:
  return v6;
}

@end