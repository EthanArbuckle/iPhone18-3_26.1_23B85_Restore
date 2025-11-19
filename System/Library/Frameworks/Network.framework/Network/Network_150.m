void nw_parameters_set_disable_listener_datapath(char *a1, char a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    _nw_parameters_set_disable_listener_datapath(a1, a2);
    return;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_set_disable_listener_datapath";
  v3 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_set_disable_listener_datapath";
        v6 = "%{public}s called with null parameters";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else
    {
      if (v9 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v4 = __nwlog_obj();
        v5 = type;
        v8 = os_log_type_enabled(v4, type);
        if (backtrace_string)
        {
          if (v8)
          {
            *buf = 136446466;
            v12 = "nw_parameters_set_disable_listener_datapath";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_parameters_set_disable_listener_datapath";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_set_disable_listener_datapath";
        v6 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v3)
  {
    free(v3);
  }
}

void nw_parameters_set_should_trust_invalid_certificates(char *a1, char a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    _nw_parameters_set_should_trust_invalid_certificates(a1, a2);
    return;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_set_should_trust_invalid_certificates";
  v3 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_set_should_trust_invalid_certificates";
        v6 = "%{public}s called with null parameters";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else
    {
      if (v9 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v4 = __nwlog_obj();
        v5 = type;
        v8 = os_log_type_enabled(v4, type);
        if (backtrace_string)
        {
          if (v8)
          {
            *buf = 136446466;
            v12 = "nw_parameters_set_should_trust_invalid_certificates";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_parameters_set_should_trust_invalid_certificates";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_set_should_trust_invalid_certificates";
        v6 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v3)
  {
    free(v3);
  }
}

void nw_parameters_set_should_skip_probe_sampling(char *a1, char a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    _nw_parameters_set_should_skip_probe_sampling(a1, a2);
    return;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_set_should_skip_probe_sampling";
  v3 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_set_should_skip_probe_sampling";
        v6 = "%{public}s called with null parameters";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else
    {
      if (v9 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v4 = __nwlog_obj();
        v5 = type;
        v8 = os_log_type_enabled(v4, type);
        if (backtrace_string)
        {
          if (v8)
          {
            *buf = 136446466;
            v12 = "nw_parameters_set_should_skip_probe_sampling";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_parameters_set_should_skip_probe_sampling";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_set_should_skip_probe_sampling";
        v6 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v3)
  {
    free(v3);
  }
}

void nw_parameters_set_require_companion(char *a1, char a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    _nw_parameters_set_require_companion(a1, a2);
    return;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_set_require_companion";
  v3 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_set_require_companion";
        v6 = "%{public}s called with null parameters";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else
    {
      if (v9 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v4 = __nwlog_obj();
        v5 = type;
        v8 = os_log_type_enabled(v4, type);
        if (backtrace_string)
        {
          if (v8)
          {
            *buf = 136446466;
            v12 = "nw_parameters_set_require_companion";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_parameters_set_require_companion";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_set_require_companion";
        v6 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v3)
  {
    free(v3);
  }
}

uint64_t nw_parameters_get_prohibit_parallel_connection_attempts(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_prohibit_parallel_connection_attempts(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_prohibit_parallel_connection_attempts";
  v3 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_prohibit_parallel_connection_attempts";
        v6 = "%{public}s called with null parameters";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else
    {
      if (v9 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v4 = __nwlog_obj();
        v5 = type;
        v8 = os_log_type_enabled(v4, type);
        if (backtrace_string)
        {
          if (v8)
          {
            *buf = 136446466;
            v12 = "nw_parameters_get_prohibit_parallel_connection_attempts";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_parameters_get_prohibit_parallel_connection_attempts";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_prohibit_parallel_connection_attempts";
        v6 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v3)
  {
    free(v3);
  }

  return 0;
}

void nw_parameters_set_prohibit_parallel_connection_attempts(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    _nw_parameters_set_prohibit_parallel_connection_attempts();
    return;
  }

  v1 = __nwlog_obj();
  *buf = 136446210;
  v11 = "nw_parameters_set_prohibit_parallel_connection_attempts";
  v2 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v8 = 0;
  if (__nwlog_fault(v2, &type, &v8))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (os_log_type_enabled(v3, type))
      {
        *buf = 136446210;
        v11 = "nw_parameters_set_prohibit_parallel_connection_attempts";
        v5 = "%{public}s called with null parameters";
LABEL_18:
        _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
      }
    }

    else
    {
      if (v8 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v3 = __nwlog_obj();
        v4 = type;
        v7 = os_log_type_enabled(v3, type);
        if (backtrace_string)
        {
          if (v7)
          {
            *buf = 136446466;
            v11 = "nw_parameters_set_prohibit_parallel_connection_attempts";
            v12 = 2082;
            v13 = backtrace_string;
            _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v7)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v11 = "nw_parameters_set_prohibit_parallel_connection_attempts";
        v5 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v3 = __nwlog_obj();
      v4 = type;
      if (os_log_type_enabled(v3, type))
      {
        *buf = 136446210;
        v11 = "nw_parameters_set_prohibit_parallel_connection_attempts";
        v5 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v2)
  {
    free(v2);
  }
}

void nw_parameters_prohibit_interface_type(nw_parameters_t parameters, nw_interface_type_t interface_type)
{
  v15 = *MEMORY[0x1E69E9840];
  if (parameters)
  {

    _nw_parameters_prohibit_interface_type(parameters, *&interface_type);
    return;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_prohibit_interface_type";
  v3 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_prohibit_interface_type";
        v6 = "%{public}s called with null parameters";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else
    {
      if (v9 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v4 = __nwlog_obj();
        v5 = type;
        v8 = os_log_type_enabled(v4, type);
        if (backtrace_string)
        {
          if (v8)
          {
            *buf = 136446466;
            v12 = "nw_parameters_prohibit_interface_type";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_parameters_prohibit_interface_type";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_prohibit_interface_type";
        v6 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v3)
  {
    free(v3);
  }
}

void nw_parameters_iterate_prohibited_interface_types(nw_parameters_t parameters, nw_parameters_iterate_interface_types_block_t iterate_block)
{
  v15 = *MEMORY[0x1E69E9840];
  if (parameters)
  {

    _nw_parameters_iterate_prohibited_interface_types(parameters, iterate_block);
    return;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_iterate_prohibited_interface_types";
  v3 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_iterate_prohibited_interface_types";
        v6 = "%{public}s called with null parameters";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else
    {
      if (v9 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v4 = __nwlog_obj();
        v5 = type;
        v8 = os_log_type_enabled(v4, type);
        if (backtrace_string)
        {
          if (v8)
          {
            *buf = 136446466;
            v12 = "nw_parameters_iterate_prohibited_interface_types";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_parameters_iterate_prohibited_interface_types";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_iterate_prohibited_interface_types";
        v6 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v3)
  {
    free(v3);
  }
}

void nw_parameters_clear_allowed_interface_types(char *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    _nw_parameters_clear_allowed_interface_types(a1);
    return;
  }

  v1 = __nwlog_obj();
  *buf = 136446210;
  v11 = "nw_parameters_clear_allowed_interface_types";
  v2 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v8 = 0;
  if (__nwlog_fault(v2, &type, &v8))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (os_log_type_enabled(v3, type))
      {
        *buf = 136446210;
        v11 = "nw_parameters_clear_allowed_interface_types";
        v5 = "%{public}s called with null parameters";
LABEL_18:
        _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
      }
    }

    else
    {
      if (v8 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v3 = __nwlog_obj();
        v4 = type;
        v7 = os_log_type_enabled(v3, type);
        if (backtrace_string)
        {
          if (v7)
          {
            *buf = 136446466;
            v11 = "nw_parameters_clear_allowed_interface_types";
            v12 = 2082;
            v13 = backtrace_string;
            _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v7)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v11 = "nw_parameters_clear_allowed_interface_types";
        v5 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v3 = __nwlog_obj();
      v4 = type;
      if (os_log_type_enabled(v3, type))
      {
        *buf = 136446210;
        v11 = "nw_parameters_clear_allowed_interface_types";
        v5 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v2)
  {
    free(v2);
  }
}

void nw_parameters_allow_interface_type(char *a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    _nw_parameters_allow_interface_type(a1, a2);
    return;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_allow_interface_type";
  v3 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_allow_interface_type";
        v6 = "%{public}s called with null parameters";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else
    {
      if (v9 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v4 = __nwlog_obj();
        v5 = type;
        v8 = os_log_type_enabled(v4, type);
        if (backtrace_string)
        {
          if (v8)
          {
            *buf = 136446466;
            v12 = "nw_parameters_allow_interface_type";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_parameters_allow_interface_type";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_allow_interface_type";
        v6 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v3)
  {
    free(v3);
  }
}

void nw_parameters_set_allowed_interface_types(void *a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_parameters_set_allowed_interface_types";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v7, &type, &v21))
    {
      goto LABEL_48;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v21 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v8 = __nwlog_obj();
        v9 = type;
        v14 = os_log_type_enabled(v8, type);
        if (backtrace_string)
        {
          if (v14)
          {
            *buf = 136446466;
            v24 = "nw_parameters_set_allowed_interface_types";
            v25 = 2082;
            v26 = backtrace_string;
            _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
LABEL_48:
          if (!v7)
          {
            goto LABEL_5;
          }

LABEL_49:
          free(v7);
          goto LABEL_5;
        }

        if (v14)
        {
          *buf = 136446210;
          v24 = "nw_parameters_set_allowed_interface_types";
          v10 = "%{public}s called with null parameters, no backtrace";
          goto LABEL_46;
        }
      }

      else
      {
        v8 = __nwlog_obj();
        v9 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446210;
          v24 = "nw_parameters_set_allowed_interface_types";
          v10 = "%{public}s called with null parameters, backtrace limit exceeded";
          goto LABEL_46;
        }
      }

      goto LABEL_47;
    }

    v8 = __nwlog_obj();
    v9 = type;
    if (!os_log_type_enabled(v8, type))
    {
      goto LABEL_47;
    }

    *buf = 136446210;
    v24 = "nw_parameters_set_allowed_interface_types";
    v10 = "%{public}s called with null parameters";
    goto LABEL_46;
  }

  if (!v4)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_parameters_set_allowed_interface_types";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v7, &type, &v21))
    {
      goto LABEL_48;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v21 != 1)
      {
        v8 = __nwlog_obj();
        v9 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446210;
          v24 = "nw_parameters_set_allowed_interface_types";
          v10 = "%{public}s called with null allowed_interface_types, backtrace limit exceeded";
          goto LABEL_46;
        }

        goto LABEL_47;
      }

      v15 = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v9 = type;
      v16 = os_log_type_enabled(v8, type);
      if (!v15)
      {
        if (v16)
        {
          *buf = 136446210;
          v24 = "nw_parameters_set_allowed_interface_types";
          v10 = "%{public}s called with null allowed_interface_types, no backtrace";
          goto LABEL_46;
        }

        goto LABEL_47;
      }

      if (v16)
      {
        *buf = 136446466;
        v24 = "nw_parameters_set_allowed_interface_types";
        v25 = 2082;
        v26 = v15;
        v17 = "%{public}s called with null allowed_interface_types, dumping backtrace:%{public}s";
LABEL_31:
        _os_log_impl(&dword_181A37000, v8, v9, v17, buf, 0x16u);
      }

LABEL_32:

      free(v15);
      if (!v7)
      {
        goto LABEL_5;
      }

      goto LABEL_49;
    }

    v8 = __nwlog_obj();
    v9 = type;
    if (!os_log_type_enabled(v8, type))
    {
      goto LABEL_47;
    }

    *buf = 136446210;
    v24 = "nw_parameters_set_allowed_interface_types";
    v10 = "%{public}s called with null allowed_interface_types";
LABEL_46:
    _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
    goto LABEL_47;
  }

  if (object_getClass(v4) != MEMORY[0x1E69E9E50])
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_parameters_set_allowed_interface_types";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v7, &type, &v21))
    {
      goto LABEL_48;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v24 = "nw_parameters_set_allowed_interface_types";
        v10 = "%{public}s called with null (xpc_get_type(allowed_interface_types) == XPC_TYPE_ARRAY)";
        goto LABEL_46;
      }

LABEL_47:

      goto LABEL_48;
    }

    if (v21 != 1)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v24 = "nw_parameters_set_allowed_interface_types";
        v10 = "%{public}s called with null (xpc_get_type(allowed_interface_types) == XPC_TYPE_ARRAY), backtrace limit exceeded";
        goto LABEL_46;
      }

      goto LABEL_47;
    }

    v15 = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v9 = type;
    v18 = os_log_type_enabled(v8, type);
    if (!v15)
    {
      if (v18)
      {
        *buf = 136446210;
        v24 = "nw_parameters_set_allowed_interface_types";
        v10 = "%{public}s called with null (xpc_get_type(allowed_interface_types) == XPC_TYPE_ARRAY), no backtrace";
        goto LABEL_46;
      }

      goto LABEL_47;
    }

    if (v18)
    {
      *buf = 136446466;
      v24 = "nw_parameters_set_allowed_interface_types";
      v25 = 2082;
      v26 = v15;
      v17 = "%{public}s called with null (xpc_get_type(allowed_interface_types) == XPC_TYPE_ARRAY), dumping backtrace:%{public}s";
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  _nw_parameters_clear_allowed_interface_types(v3);
  applier[0] = MEMORY[0x1E69E9820];
  applier[1] = 3221225472;
  applier[2] = __nw_parameters_set_allowed_interface_types_block_invoke;
  applier[3] = &unk_1E6A3D300;
  v20 = v3;
  xpc_array_apply(v5, applier);

LABEL_5:
}

uint64_t __nw_parameters_set_allowed_interface_types_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (object_getClass(v4) == MEMORY[0x1E69E9F18])
  {
    v5 = *(a1 + 32);
    value = xpc_uint64_get_value(v4);
    _nw_parameters_allow_interface_type(v5, value);
  }

  return 1;
}

void nw_parameters_iterate_allowed_interface_types(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    _nw_parameters_iterate_allowed_interface_types(a1, a2);
    return;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_iterate_allowed_interface_types";
  v3 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_iterate_allowed_interface_types";
        v6 = "%{public}s called with null parameters";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else
    {
      if (v9 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v4 = __nwlog_obj();
        v5 = type;
        v8 = os_log_type_enabled(v4, type);
        if (backtrace_string)
        {
          if (v8)
          {
            *buf = 136446466;
            v12 = "nw_parameters_iterate_allowed_interface_types";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_parameters_iterate_allowed_interface_types";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_iterate_allowed_interface_types";
        v6 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v3)
  {
    free(v3);
  }
}

id nw_parameters_copy_allowed_interface_types(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v17 = __Block_byref_object_copy__19817;
    v18 = __Block_byref_object_dispose__19818;
    v19 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __nw_parameters_copy_allowed_interface_types_block_invoke;
    v13[3] = &unk_1E6A3C0D8;
    v13[4] = buf;
    _nw_parameters_iterate_allowed_interface_types(v1, v13);
    v3 = *(*&buf[8] + 40);
    _Block_object_dispose(buf, 8);

    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_parameters_copy_allowed_interface_types";
  v6 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (__nwlog_fault(v6, &type, &v14))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_copy_allowed_interface_types";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null parameters", buf, 0xCu);
      }
    }

    else if (v14 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v10 = type;
      v11 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          *&buf[4] = "nw_parameters_copy_allowed_interface_types";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_copy_allowed_interface_types";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_copy_allowed_interface_types";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  v3 = 0;
LABEL_3:

  return v3;
}

void sub_182489E2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __nw_parameters_copy_allowed_interface_types_block_invoke(uint64_t a1, uint64_t value)
{
  v2 = value;
  v4 = *(*(*(a1 + 32) + 8) + 40);
  if (!v4)
  {
    v5 = xpc_array_create(0, 0);
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v4 = *(*(*(a1 + 32) + 8) + 40);
  }

  xpc_array_set_uint64(v4, 0xFFFFFFFFFFFFFFFFLL, v2);
  return 1;
}

uint64_t nw_parameters_has_allowed_interface_types(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_has_allowed_interface_types(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_has_allowed_interface_types";
  v3 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_has_allowed_interface_types";
        v6 = "%{public}s called with null parameters";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else
    {
      if (v9 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v4 = __nwlog_obj();
        v5 = type;
        v8 = os_log_type_enabled(v4, type);
        if (backtrace_string)
        {
          if (v8)
          {
            *buf = 136446466;
            v12 = "nw_parameters_has_allowed_interface_types";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_parameters_has_allowed_interface_types";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_has_allowed_interface_types";
        v6 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v3)
  {
    free(v3);
  }

  return 0;
}

void nw_parameters_set_interface_option_details_enumerator(char *a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    _nw_parameters_set_interface_option_details_enumerator(a1, a2);
    return;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_set_interface_option_details_enumerator";
  v3 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_set_interface_option_details_enumerator";
        v6 = "%{public}s called with null parameters";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else
    {
      if (v9 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v4 = __nwlog_obj();
        v5 = type;
        v8 = os_log_type_enabled(v4, type);
        if (backtrace_string)
        {
          if (v8)
          {
            *buf = 136446466;
            v12 = "nw_parameters_set_interface_option_details_enumerator";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_parameters_set_interface_option_details_enumerator";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_set_interface_option_details_enumerator";
        v6 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v3)
  {
    free(v3);
  }
}

void nw_parameters_iterate_prohibited_interface_subtypes(void *a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v19 = "nw_parameters_iterate_prohibited_interface_subtypes";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (!__nwlog_fault(v7, &type, &v16))
    {
      goto LABEL_34;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v19 = "nw_parameters_iterate_prohibited_interface_subtypes";
        v10 = "%{public}s called with null parameters";
LABEL_32:
        _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
      }
    }

    else if (v16 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v9 = type;
      v13 = os_log_type_enabled(v8, type);
      if (backtrace_string)
      {
        if (v13)
        {
          *buf = 136446466;
          v19 = "nw_parameters_iterate_prohibited_interface_subtypes";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_34:
        if (!v7)
        {
          goto LABEL_4;
        }

LABEL_35:
        free(v7);
        goto LABEL_4;
      }

      if (v13)
      {
        *buf = 136446210;
        v19 = "nw_parameters_iterate_prohibited_interface_subtypes";
        v10 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_32;
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v19 = "nw_parameters_iterate_prohibited_interface_subtypes";
        v10 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_32;
      }
    }

LABEL_33:

    goto LABEL_34;
  }

  if (v4)
  {
    _nw_parameters_iterate_prohibited_interface_subtypes(v3, v4);
    goto LABEL_4;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_parameters_iterate_prohibited_interface_subtypes";
  v7 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (!__nwlog_fault(v7, &type, &v16))
  {
    goto LABEL_34;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v8 = __nwlog_obj();
    v9 = type;
    if (os_log_type_enabled(v8, type))
    {
      *buf = 136446210;
      v19 = "nw_parameters_iterate_prohibited_interface_subtypes";
      v10 = "%{public}s called with null iterate_block";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  if (v16 != 1)
  {
    v8 = __nwlog_obj();
    v9 = type;
    if (os_log_type_enabled(v8, type))
    {
      *buf = 136446210;
      v19 = "nw_parameters_iterate_prohibited_interface_subtypes";
      v10 = "%{public}s called with null iterate_block, backtrace limit exceeded";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  v14 = __nw_create_backtrace_string();
  v8 = __nwlog_obj();
  v9 = type;
  v15 = os_log_type_enabled(v8, type);
  if (!v14)
  {
    if (v15)
    {
      *buf = 136446210;
      v19 = "nw_parameters_iterate_prohibited_interface_subtypes";
      v10 = "%{public}s called with null iterate_block, no backtrace";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  if (v15)
  {
    *buf = 136446466;
    v19 = "nw_parameters_iterate_prohibited_interface_subtypes";
    v20 = 2082;
    v21 = v14;
    _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null iterate_block, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v14);
  if (v7)
  {
    goto LABEL_35;
  }

LABEL_4:
}

void nw_parameters_set_prohibited_interface_subtypes(void *a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    _nw_parameters_clear_prohibited_interface_subtypes(v3);
    if (v4)
    {
      applier[0] = MEMORY[0x1E69E9820];
      applier[1] = 3221225472;
      applier[2] = __nw_parameters_set_prohibited_interface_subtypes_block_invoke;
      applier[3] = &unk_1E6A3D300;
      v13 = v3;
      xpc_array_apply(v4, applier);
    }

    goto LABEL_4;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_parameters_set_prohibited_interface_subtypes";
  v6 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (__nwlog_fault(v6, &type, &v14))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v17 = "nw_parameters_set_prohibited_interface_subtypes";
        v9 = "%{public}s called with null parameters";
LABEL_18:
        _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
      }
    }

    else
    {
      if (v14 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v7 = __nwlog_obj();
        v8 = type;
        v11 = os_log_type_enabled(v7, type);
        if (backtrace_string)
        {
          if (v11)
          {
            *buf = 136446466;
            v17 = "nw_parameters_set_prohibited_interface_subtypes";
            v18 = 2082;
            v19 = backtrace_string;
            _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v11)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v17 = "nw_parameters_set_prohibited_interface_subtypes";
        v9 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v17 = "nw_parameters_set_prohibited_interface_subtypes";
        v9 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

LABEL_4:
}

uint64_t __nw_parameters_set_prohibited_interface_subtypes_block_invoke(uint64_t a1, int a2, xpc_object_t xuint)
{
  value = xpc_uint64_get_value(xuint);
  _nw_parameters_prohibit_interface_subtype(*(a1 + 32), value);
  return 1;
}

uint64_t __nw_parameters_copy_prohibited_interface_subtypes_block_invoke(uint64_t a1, uint64_t value)
{
  v2 = value;
  v4 = *(*(*(a1 + 32) + 8) + 40);
  if (!v4)
  {
    v5 = xpc_array_create(0, 0);
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v4 = *(*(*(a1 + 32) + 8) + 40);
  }

  xpc_array_set_uint64(v4, 0xFFFFFFFFFFFFFFFFLL, v2);
  return 1;
}

void nw_parameters_clear_allowed_interface_subtypes(char *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    _nw_parameters_clear_allowed_interface_subtypes(a1);
    return;
  }

  v1 = __nwlog_obj();
  *buf = 136446210;
  v11 = "nw_parameters_clear_allowed_interface_subtypes";
  v2 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v8 = 0;
  if (__nwlog_fault(v2, &type, &v8))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (os_log_type_enabled(v3, type))
      {
        *buf = 136446210;
        v11 = "nw_parameters_clear_allowed_interface_subtypes";
        v5 = "%{public}s called with null parameters";
LABEL_18:
        _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
      }
    }

    else
    {
      if (v8 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v3 = __nwlog_obj();
        v4 = type;
        v7 = os_log_type_enabled(v3, type);
        if (backtrace_string)
        {
          if (v7)
          {
            *buf = 136446466;
            v11 = "nw_parameters_clear_allowed_interface_subtypes";
            v12 = 2082;
            v13 = backtrace_string;
            _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v7)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v11 = "nw_parameters_clear_allowed_interface_subtypes";
        v5 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v3 = __nwlog_obj();
      v4 = type;
      if (os_log_type_enabled(v3, type))
      {
        *buf = 136446210;
        v11 = "nw_parameters_clear_allowed_interface_subtypes";
        v5 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v2)
  {
    free(v2);
  }
}

void nw_parameters_allow_interface_subtype(char *a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    _nw_parameters_allow_interface_subtype(a1, a2);
    return;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_allow_interface_subtype";
  v3 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_allow_interface_subtype";
        v6 = "%{public}s called with null parameters";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else
    {
      if (v9 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v4 = __nwlog_obj();
        v5 = type;
        v8 = os_log_type_enabled(v4, type);
        if (backtrace_string)
        {
          if (v8)
          {
            *buf = 136446466;
            v12 = "nw_parameters_allow_interface_subtype";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_parameters_allow_interface_subtype";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_allow_interface_subtype";
        v6 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v3)
  {
    free(v3);
  }
}

void nw_parameters_set_allowed_interface_subtypes(void *a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_parameters_set_allowed_interface_subtypes";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v7, &type, &v21))
    {
      goto LABEL_48;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v21 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v8 = __nwlog_obj();
        v9 = type;
        v14 = os_log_type_enabled(v8, type);
        if (backtrace_string)
        {
          if (v14)
          {
            *buf = 136446466;
            v24 = "nw_parameters_set_allowed_interface_subtypes";
            v25 = 2082;
            v26 = backtrace_string;
            _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
LABEL_48:
          if (!v7)
          {
            goto LABEL_5;
          }

LABEL_49:
          free(v7);
          goto LABEL_5;
        }

        if (v14)
        {
          *buf = 136446210;
          v24 = "nw_parameters_set_allowed_interface_subtypes";
          v10 = "%{public}s called with null parameters, no backtrace";
          goto LABEL_46;
        }
      }

      else
      {
        v8 = __nwlog_obj();
        v9 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446210;
          v24 = "nw_parameters_set_allowed_interface_subtypes";
          v10 = "%{public}s called with null parameters, backtrace limit exceeded";
          goto LABEL_46;
        }
      }

      goto LABEL_47;
    }

    v8 = __nwlog_obj();
    v9 = type;
    if (!os_log_type_enabled(v8, type))
    {
      goto LABEL_47;
    }

    *buf = 136446210;
    v24 = "nw_parameters_set_allowed_interface_subtypes";
    v10 = "%{public}s called with null parameters";
    goto LABEL_46;
  }

  if (!v4)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_parameters_set_allowed_interface_subtypes";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v7, &type, &v21))
    {
      goto LABEL_48;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v21 != 1)
      {
        v8 = __nwlog_obj();
        v9 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446210;
          v24 = "nw_parameters_set_allowed_interface_subtypes";
          v10 = "%{public}s called with null allowed_interface_subtypes, backtrace limit exceeded";
          goto LABEL_46;
        }

        goto LABEL_47;
      }

      v15 = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v9 = type;
      v16 = os_log_type_enabled(v8, type);
      if (!v15)
      {
        if (v16)
        {
          *buf = 136446210;
          v24 = "nw_parameters_set_allowed_interface_subtypes";
          v10 = "%{public}s called with null allowed_interface_subtypes, no backtrace";
          goto LABEL_46;
        }

        goto LABEL_47;
      }

      if (v16)
      {
        *buf = 136446466;
        v24 = "nw_parameters_set_allowed_interface_subtypes";
        v25 = 2082;
        v26 = v15;
        v17 = "%{public}s called with null allowed_interface_subtypes, dumping backtrace:%{public}s";
LABEL_31:
        _os_log_impl(&dword_181A37000, v8, v9, v17, buf, 0x16u);
      }

LABEL_32:

      free(v15);
      if (!v7)
      {
        goto LABEL_5;
      }

      goto LABEL_49;
    }

    v8 = __nwlog_obj();
    v9 = type;
    if (!os_log_type_enabled(v8, type))
    {
      goto LABEL_47;
    }

    *buf = 136446210;
    v24 = "nw_parameters_set_allowed_interface_subtypes";
    v10 = "%{public}s called with null allowed_interface_subtypes";
LABEL_46:
    _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
    goto LABEL_47;
  }

  if (object_getClass(v4) != MEMORY[0x1E69E9E50])
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_parameters_set_allowed_interface_subtypes";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v7, &type, &v21))
    {
      goto LABEL_48;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v24 = "nw_parameters_set_allowed_interface_subtypes";
        v10 = "%{public}s called with null (xpc_get_type(allowed_interface_subtypes) == XPC_TYPE_ARRAY)";
        goto LABEL_46;
      }

LABEL_47:

      goto LABEL_48;
    }

    if (v21 != 1)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v24 = "nw_parameters_set_allowed_interface_subtypes";
        v10 = "%{public}s called with null (xpc_get_type(allowed_interface_subtypes) == XPC_TYPE_ARRAY), backtrace limit exceeded";
        goto LABEL_46;
      }

      goto LABEL_47;
    }

    v15 = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v9 = type;
    v18 = os_log_type_enabled(v8, type);
    if (!v15)
    {
      if (v18)
      {
        *buf = 136446210;
        v24 = "nw_parameters_set_allowed_interface_subtypes";
        v10 = "%{public}s called with null (xpc_get_type(allowed_interface_subtypes) == XPC_TYPE_ARRAY), no backtrace";
        goto LABEL_46;
      }

      goto LABEL_47;
    }

    if (v18)
    {
      *buf = 136446466;
      v24 = "nw_parameters_set_allowed_interface_subtypes";
      v25 = 2082;
      v26 = v15;
      v17 = "%{public}s called with null (xpc_get_type(allowed_interface_subtypes) == XPC_TYPE_ARRAY), dumping backtrace:%{public}s";
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  _nw_parameters_clear_allowed_interface_subtypes(v3);
  applier[0] = MEMORY[0x1E69E9820];
  applier[1] = 3221225472;
  applier[2] = __nw_parameters_set_allowed_interface_subtypes_block_invoke;
  applier[3] = &unk_1E6A3D300;
  v20 = v3;
  xpc_array_apply(v5, applier);

LABEL_5:
}

uint64_t __nw_parameters_set_allowed_interface_subtypes_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (object_getClass(v4) == MEMORY[0x1E69E9F18])
  {
    v5 = *(a1 + 32);
    value = xpc_uint64_get_value(v4);
    _nw_parameters_allow_interface_subtype(v5, value);
  }

  return 1;
}

void nw_parameters_iterate_allowed_interface_subtypes(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    _nw_parameters_iterate_allowed_interface_subtypes(a1, a2);
    return;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_iterate_allowed_interface_subtypes";
  v3 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_iterate_allowed_interface_subtypes";
        v6 = "%{public}s called with null parameters";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else
    {
      if (v9 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v4 = __nwlog_obj();
        v5 = type;
        v8 = os_log_type_enabled(v4, type);
        if (backtrace_string)
        {
          if (v8)
          {
            *buf = 136446466;
            v12 = "nw_parameters_iterate_allowed_interface_subtypes";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_parameters_iterate_allowed_interface_subtypes";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_iterate_allowed_interface_subtypes";
        v6 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v3)
  {
    free(v3);
  }
}

id nw_parameters_copy_allowed_interface_subtypes(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v17 = __Block_byref_object_copy__19817;
    v18 = __Block_byref_object_dispose__19818;
    v19 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __nw_parameters_copy_allowed_interface_subtypes_block_invoke;
    v13[3] = &unk_1E6A3C0D8;
    v13[4] = buf;
    _nw_parameters_iterate_allowed_interface_subtypes(v1, v13);
    v3 = *(*&buf[8] + 40);
    _Block_object_dispose(buf, 8);

    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_parameters_copy_allowed_interface_subtypes";
  v6 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (__nwlog_fault(v6, &type, &v14))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_copy_allowed_interface_subtypes";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null parameters", buf, 0xCu);
      }
    }

    else if (v14 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v10 = type;
      v11 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          *&buf[4] = "nw_parameters_copy_allowed_interface_subtypes";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_copy_allowed_interface_subtypes";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_copy_allowed_interface_subtypes";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  v3 = 0;
LABEL_3:

  return v3;
}

void sub_18248BD04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __nw_parameters_copy_allowed_interface_subtypes_block_invoke(uint64_t a1, uint64_t value)
{
  v2 = value;
  v4 = *(*(*(a1 + 32) + 8) + 40);
  if (!v4)
  {
    v5 = xpc_array_create(0, 0);
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v4 = *(*(*(a1 + 32) + 8) + 40);
  }

  xpc_array_set_uint64(v4, 0xFFFFFFFFFFFFFFFFLL, v2);
  return 1;
}

uint64_t nw_parameters_has_allowed_interface_subtypes(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_has_allowed_interface_subtypes(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_has_allowed_interface_subtypes";
  v3 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_has_allowed_interface_subtypes";
        v6 = "%{public}s called with null parameters";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else
    {
      if (v9 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v4 = __nwlog_obj();
        v5 = type;
        v8 = os_log_type_enabled(v4, type);
        if (backtrace_string)
        {
          if (v8)
          {
            *buf = 136446466;
            v12 = "nw_parameters_has_allowed_interface_subtypes";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_parameters_has_allowed_interface_subtypes";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_has_allowed_interface_subtypes";
        v6 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v3)
  {
    free(v3);
  }

  return 0;
}

void nw_parameters_set_preferred_interface_subtypes(void *a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    _nw_parameters_clear_preferred_interface_subtypes(v3);
    if (v4)
    {
      applier[0] = MEMORY[0x1E69E9820];
      applier[1] = 3221225472;
      applier[2] = __nw_parameters_set_preferred_interface_subtypes_block_invoke;
      applier[3] = &unk_1E6A3D300;
      v13 = v3;
      xpc_array_apply(v4, applier);
    }

    goto LABEL_4;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_parameters_set_preferred_interface_subtypes";
  v6 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (__nwlog_fault(v6, &type, &v14))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v17 = "nw_parameters_set_preferred_interface_subtypes";
        v9 = "%{public}s called with null parameters";
LABEL_18:
        _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
      }
    }

    else
    {
      if (v14 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v7 = __nwlog_obj();
        v8 = type;
        v11 = os_log_type_enabled(v7, type);
        if (backtrace_string)
        {
          if (v11)
          {
            *buf = 136446466;
            v17 = "nw_parameters_set_preferred_interface_subtypes";
            v18 = 2082;
            v19 = backtrace_string;
            _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v11)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v17 = "nw_parameters_set_preferred_interface_subtypes";
        v9 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v17 = "nw_parameters_set_preferred_interface_subtypes";
        v9 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

LABEL_4:
}

uint64_t __nw_parameters_set_preferred_interface_subtypes_block_invoke(uint64_t a1, int a2, xpc_object_t xuint)
{
  value = xpc_uint64_get_value(xuint);
  _nw_parameters_prefer_interface_subtype(*(a1 + 32), value);
  return 1;
}

uint64_t __nw_parameters_copy_preferred_interface_subtypes_block_invoke(uint64_t a1, uint64_t value)
{
  v2 = value;
  v4 = *(*(*(a1 + 32) + 8) + 40);
  if (!v4)
  {
    v5 = xpc_array_create(0, 0);
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v4 = *(*(*(a1 + 32) + 8) + 40);
  }

  xpc_array_set_uint64(v4, 0xFFFFFFFFFFFFFFFFLL, v2);
  return 1;
}

void nw_parameters_prohibit_interface(nw_parameters_t parameters, nw_interface_t interface)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = parameters;
  v4 = interface;
  v5 = v4;
  if (!v3)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v19 = "nw_parameters_prohibit_interface";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (!__nwlog_fault(v7, &type, &v16))
    {
      goto LABEL_34;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v19 = "nw_parameters_prohibit_interface";
        v10 = "%{public}s called with null parameters";
LABEL_32:
        _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
      }
    }

    else if (v16 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v9 = type;
      v13 = os_log_type_enabled(v8, type);
      if (backtrace_string)
      {
        if (v13)
        {
          *buf = 136446466;
          v19 = "nw_parameters_prohibit_interface";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_34:
        if (!v7)
        {
          goto LABEL_4;
        }

LABEL_35:
        free(v7);
        goto LABEL_4;
      }

      if (v13)
      {
        *buf = 136446210;
        v19 = "nw_parameters_prohibit_interface";
        v10 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_32;
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v19 = "nw_parameters_prohibit_interface";
        v10 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_32;
      }
    }

LABEL_33:

    goto LABEL_34;
  }

  if (v4)
  {
    _nw_parameters_prohibit_interface(v3, v4);
    goto LABEL_4;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_parameters_prohibit_interface";
  v7 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (!__nwlog_fault(v7, &type, &v16))
  {
    goto LABEL_34;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v8 = __nwlog_obj();
    v9 = type;
    if (os_log_type_enabled(v8, type))
    {
      *buf = 136446210;
      v19 = "nw_parameters_prohibit_interface";
      v10 = "%{public}s called with null interface";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  if (v16 != 1)
  {
    v8 = __nwlog_obj();
    v9 = type;
    if (os_log_type_enabled(v8, type))
    {
      *buf = 136446210;
      v19 = "nw_parameters_prohibit_interface";
      v10 = "%{public}s called with null interface, backtrace limit exceeded";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  v14 = __nw_create_backtrace_string();
  v8 = __nwlog_obj();
  v9 = type;
  v15 = os_log_type_enabled(v8, type);
  if (!v14)
  {
    if (v15)
    {
      *buf = 136446210;
      v19 = "nw_parameters_prohibit_interface";
      v10 = "%{public}s called with null interface, no backtrace";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  if (v15)
  {
    *buf = 136446466;
    v19 = "nw_parameters_prohibit_interface";
    v20 = 2082;
    v21 = v14;
    _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null interface, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v14);
  if (v7)
  {
    goto LABEL_35;
  }

LABEL_4:
}

void nw_parameters_clear_prohibited_interfaces(nw_parameters_t parameters)
{
  v14 = *MEMORY[0x1E69E9840];
  if (parameters)
  {

    _nw_parameters_clear_prohibited_interfaces(parameters);
    return;
  }

  v1 = __nwlog_obj();
  *buf = 136446210;
  v11 = "nw_parameters_clear_prohibited_interfaces";
  v2 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v8 = 0;
  if (__nwlog_fault(v2, &type, &v8))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (os_log_type_enabled(v3, type))
      {
        *buf = 136446210;
        v11 = "nw_parameters_clear_prohibited_interfaces";
        v5 = "%{public}s called with null parameters";
LABEL_18:
        _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
      }
    }

    else
    {
      if (v8 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v3 = __nwlog_obj();
        v4 = type;
        v7 = os_log_type_enabled(v3, type);
        if (backtrace_string)
        {
          if (v7)
          {
            *buf = 136446466;
            v11 = "nw_parameters_clear_prohibited_interfaces";
            v12 = 2082;
            v13 = backtrace_string;
            _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v7)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v11 = "nw_parameters_clear_prohibited_interfaces";
        v5 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v3 = __nwlog_obj();
      v4 = type;
      if (os_log_type_enabled(v3, type))
      {
        *buf = 136446210;
        v11 = "nw_parameters_clear_prohibited_interfaces";
        v5 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v2)
  {
    free(v2);
  }
}

void nw_parameters_iterate_prohibited_interfaces(nw_parameters_t parameters, nw_parameters_iterate_interfaces_block_t iterate_block)
{
  v15 = *MEMORY[0x1E69E9840];
  if (parameters)
  {

    _nw_parameters_iterate_prohibited_interfaces(parameters, iterate_block);
    return;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_iterate_prohibited_interfaces";
  v3 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_iterate_prohibited_interfaces";
        v6 = "%{public}s called with null parameters";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else
    {
      if (v9 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v4 = __nwlog_obj();
        v5 = type;
        v8 = os_log_type_enabled(v4, type);
        if (backtrace_string)
        {
          if (v8)
          {
            *buf = 136446466;
            v12 = "nw_parameters_iterate_prohibited_interfaces";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_parameters_iterate_prohibited_interfaces";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_iterate_prohibited_interfaces";
        v6 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v3)
  {
    free(v3);
  }
}

void nw_parameters_set_prohibited_interfaces(void *a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    _nw_parameters_clear_prohibited_interfaces(v3);
    if (v4)
    {
      applier[0] = MEMORY[0x1E69E9820];
      applier[1] = 3221225472;
      applier[2] = __nw_parameters_set_prohibited_interfaces_block_invoke;
      applier[3] = &unk_1E6A3D300;
      v13 = v3;
      xpc_array_apply(v4, applier);
    }

    goto LABEL_4;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_parameters_set_prohibited_interfaces";
  v6 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (__nwlog_fault(v6, &type, &v14))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v17 = "nw_parameters_set_prohibited_interfaces";
        v9 = "%{public}s called with null parameters";
LABEL_18:
        _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
      }
    }

    else
    {
      if (v14 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v7 = __nwlog_obj();
        v8 = type;
        v11 = os_log_type_enabled(v7, type);
        if (backtrace_string)
        {
          if (v11)
          {
            *buf = 136446466;
            v17 = "nw_parameters_set_prohibited_interfaces";
            v18 = 2082;
            v19 = backtrace_string;
            _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v11)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v17 = "nw_parameters_set_prohibited_interfaces";
        v9 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v17 = "nw_parameters_set_prohibited_interfaces";
        v9 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

LABEL_4:
}

uint64_t __nw_parameters_set_prohibited_interfaces_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = nw_interface_create_from_dictionary(a3);
  if (v4)
  {
    _nw_parameters_prohibit_interface(*(a1 + 32), v4);
  }

  return 1;
}

uint64_t __nw_parameters_copy_prohibited_interfaces_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    v4 = xpc_array_create(0, 0);
    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  v7 = nw_interface_copy_dictionary(v3);
  xpc_array_append_value(*(*(*(a1 + 32) + 8) + 40), v7);

  return 1;
}

void nw_parameters_set_prohibited_netagent_classes(void *a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v5)
  {
    _nw_parameters_clear_prohibited_netagent_types(v5);
    if (v6)
    {
      Class = object_getClass(v6);
      if (v7)
      {
        v9 = MEMORY[0x1E69E9E50];
        if (Class == MEMORY[0x1E69E9E50] && object_getClass(v7) == v9)
        {
          count = xpc_array_get_count(v6);
          if (count == xpc_array_get_count(v7))
          {
            v11 = xpc_array_get_count(v6);
            if (v11)
            {
              v12 = v11;
              for (i = 0; i != v12; ++i)
              {
                string = xpc_array_get_string(v6, i);
                v15 = xpc_array_get_string(v7, i);
                if (string && v15)
                {
                  _nw_parameters_add_prohibited_netagent_type(v5, string, v15);
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_30;
  }

  v16 = __nwlog_obj();
  *buf = 136446210;
  v26 = "nw_parameters_set_prohibited_netagent_classes";
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
        v26 = "nw_parameters_set_prohibited_netagent_classes";
        v20 = "%{public}s called with null parameters";
LABEL_26:
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
            v26 = "nw_parameters_set_prohibited_netagent_classes";
            v27 = 2082;
            v28 = backtrace_string;
            _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_28;
        }

        if (!v22)
        {
          goto LABEL_27;
        }

        *buf = 136446210;
        v26 = "nw_parameters_set_prohibited_netagent_classes";
        v20 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_26;
      }

      v18 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v18, type))
      {
        *buf = 136446210;
        v26 = "nw_parameters_set_prohibited_netagent_classes";
        v20 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_26;
      }
    }

LABEL_27:
  }

LABEL_28:
  if (v17)
  {
    free(v17);
  }

LABEL_30:
}

uint64_t __nw_parameters_copy_prohibited_netagent_domains_block_invoke(uint64_t a1, char *string)
{
  v4 = *(*(*(a1 + 32) + 8) + 40);
  if (!v4)
  {
    v5 = xpc_array_create(0, 0);
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v4 = *(*(*(a1 + 32) + 8) + 40);
  }

  xpc_array_set_string(v4, 0xFFFFFFFFFFFFFFFFLL, string);
  return 1;
}

uint64_t __nw_parameters_copy_prohibited_netagent_types_block_invoke(uint64_t a1, uint64_t a2, const char *a3)
{
  v4 = *(*(*(a1 + 32) + 8) + 40);
  if (!v4)
  {
    v5 = a3;
    v6 = xpc_array_create(0, 0);
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    a3 = v5;
    v4 = *(*(*(a1 + 32) + 8) + 40);
  }

  xpc_array_set_string(v4, 0xFFFFFFFFFFFFFFFFLL, a3);
  return 1;
}

void nw_parameters_set_prohibited_netagent_uuids(void *a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    _nw_parameters_clear_prohibited_netagent_uuids(v3);
    if (v4)
    {
      if (object_getClass(v4) == MEMORY[0x1E69E9E50])
      {
        count = xpc_array_get_count(v4);
        if (count)
        {
          v6 = count;
          for (i = 0; i != v6; ++i)
          {
            uuid = xpc_array_get_uuid(v4, i);
            if (uuid)
            {
              _nw_parameters_add_prohibited_netagent_uuid(v3, uuid);
            }
          }
        }
      }
    }

    goto LABEL_4;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_parameters_set_prohibited_netagent_uuids";
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
        v19 = "nw_parameters_set_prohibited_netagent_uuids";
        v13 = "%{public}s called with null parameters";
LABEL_23:
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
            v19 = "nw_parameters_set_prohibited_netagent_uuids";
            v20 = 2082;
            v21 = backtrace_string;
            _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_25;
        }

        if (!v15)
        {
          goto LABEL_24;
        }

        *buf = 136446210;
        v19 = "nw_parameters_set_prohibited_netagent_uuids";
        v13 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_23;
      }

      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v19 = "nw_parameters_set_prohibited_netagent_uuids";
        v13 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_23;
      }
    }

LABEL_24:
  }

LABEL_25:
  if (v10)
  {
    free(v10);
  }

LABEL_4:
}

uint64_t __nw_parameters_copy_prohibited_netagent_uuids_block_invoke(uint64_t a1, unsigned __int8 *uuid)
{
  v4 = *(*(*(a1 + 32) + 8) + 40);
  if (!v4)
  {
    v5 = xpc_array_create(0, 0);
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v4 = *(*(*(a1 + 32) + 8) + 40);
  }

  xpc_array_set_uuid(v4, 0xFFFFFFFFFFFFFFFFLL, uuid);
  return 1;
}

uint64_t __nw_parameters_copy_preferred_netagent_domains_block_invoke(uint64_t a1, char *string)
{
  v4 = *(*(*(a1 + 32) + 8) + 40);
  if (!v4)
  {
    v5 = xpc_array_create(0, 0);
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v4 = *(*(*(a1 + 32) + 8) + 40);
  }

  xpc_array_set_string(v4, 0xFFFFFFFFFFFFFFFFLL, string);
  return 1;
}

uint64_t __nw_parameters_copy_preferred_netagent_types_block_invoke(uint64_t a1, uint64_t a2, const char *a3)
{
  v4 = *(*(*(a1 + 32) + 8) + 40);
  if (!v4)
  {
    v5 = a3;
    v6 = xpc_array_create(0, 0);
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    a3 = v5;
    v4 = *(*(*(a1 + 32) + 8) + 40);
  }

  xpc_array_set_string(v4, 0xFFFFFFFFFFFFFFFFLL, a3);
  return 1;
}

void nw_parameters_set_avoided_netagent_classes(void *a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v5)
  {
    _nw_parameters_clear_avoided_netagent_types(v5);
    if (v6)
    {
      Class = object_getClass(v6);
      if (v7)
      {
        v9 = MEMORY[0x1E69E9E50];
        if (Class == MEMORY[0x1E69E9E50] && object_getClass(v7) == v9)
        {
          count = xpc_array_get_count(v6);
          if (count == xpc_array_get_count(v7))
          {
            v11 = xpc_array_get_count(v6);
            if (v11)
            {
              v12 = v11;
              for (i = 0; i != v12; ++i)
              {
                string = xpc_array_get_string(v6, i);
                v15 = xpc_array_get_string(v7, i);
                if (string && v15)
                {
                  _nw_parameters_add_avoided_netagent_type(v5, string, v15);
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_30;
  }

  v16 = __nwlog_obj();
  *buf = 136446210;
  v26 = "nw_parameters_set_avoided_netagent_classes";
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
        v26 = "nw_parameters_set_avoided_netagent_classes";
        v20 = "%{public}s called with null parameters";
LABEL_26:
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
            v26 = "nw_parameters_set_avoided_netagent_classes";
            v27 = 2082;
            v28 = backtrace_string;
            _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_28;
        }

        if (!v22)
        {
          goto LABEL_27;
        }

        *buf = 136446210;
        v26 = "nw_parameters_set_avoided_netagent_classes";
        v20 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_26;
      }

      v18 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v18, type))
      {
        *buf = 136446210;
        v26 = "nw_parameters_set_avoided_netagent_classes";
        v20 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_26;
      }
    }

LABEL_27:
  }

LABEL_28:
  if (v17)
  {
    free(v17);
  }

LABEL_30:
}

uint64_t __nw_parameters_copy_avoided_netagent_domains_block_invoke(uint64_t a1, char *string)
{
  v4 = *(*(*(a1 + 32) + 8) + 40);
  if (!v4)
  {
    v5 = xpc_array_create(0, 0);
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v4 = *(*(*(a1 + 32) + 8) + 40);
  }

  xpc_array_set_string(v4, 0xFFFFFFFFFFFFFFFFLL, string);
  return 1;
}

uint64_t __nw_parameters_copy_avoided_netagent_types_block_invoke(uint64_t a1, uint64_t a2, const char *a3)
{
  v4 = *(*(*(a1 + 32) + 8) + 40);
  if (!v4)
  {
    v5 = a3;
    v6 = xpc_array_create(0, 0);
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    a3 = v5;
    v4 = *(*(*(a1 + 32) + 8) + 40);
  }

  xpc_array_set_string(v4, 0xFFFFFFFFFFFFFFFFLL, a3);
  return 1;
}

BOOL nw_parameters_has_prohibited_interfaces(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_has_prohibited_interfaces(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_has_prohibited_interfaces";
  v3 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_has_prohibited_interfaces";
        v6 = "%{public}s called with null parameters";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else
    {
      if (v9 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v4 = __nwlog_obj();
        v5 = type;
        v8 = os_log_type_enabled(v4, type);
        if (backtrace_string)
        {
          if (v8)
          {
            *buf = 136446466;
            v12 = "nw_parameters_has_prohibited_interfaces";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_parameters_has_prohibited_interfaces";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_has_prohibited_interfaces";
        v6 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v3)
  {
    free(v3);
  }

  return 0;
}

uint64_t nw_parameters_has_required_interface_type(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_has_required_interface_type(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_has_required_interface_type";
  v3 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_has_required_interface_type";
        v6 = "%{public}s called with null parameters";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else
    {
      if (v9 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v4 = __nwlog_obj();
        v5 = type;
        v8 = os_log_type_enabled(v4, type);
        if (backtrace_string)
        {
          if (v8)
          {
            *buf = 136446466;
            v12 = "nw_parameters_has_required_interface_type";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_parameters_has_required_interface_type";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_has_required_interface_type";
        v6 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v3)
  {
    free(v3);
  }

  return 0;
}

uint64_t nw_parameters_has_required_interface_subtype(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_has_required_interface_subtype(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_has_required_interface_subtype";
  v3 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_has_required_interface_subtype";
        v6 = "%{public}s called with null parameters";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else
    {
      if (v9 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v4 = __nwlog_obj();
        v5 = type;
        v8 = os_log_type_enabled(v4, type);
        if (backtrace_string)
        {
          if (v8)
          {
            *buf = 136446466;
            v12 = "nw_parameters_has_required_interface_subtype";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_parameters_has_required_interface_subtype";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_has_required_interface_subtype";
        v6 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v3)
  {
    free(v3);
  }

  return 0;
}

void nw_parameters_require_netagent_uuid(char *a1, const unsigned __int8 *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    _nw_parameters_add_required_netagent_uuid(a1, a2);
    return;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_require_netagent_uuid";
  v3 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_require_netagent_uuid";
        v6 = "%{public}s called with null parameters";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else
    {
      if (v9 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v4 = __nwlog_obj();
        v5 = type;
        v8 = os_log_type_enabled(v4, type);
        if (backtrace_string)
        {
          if (v8)
          {
            *buf = 136446466;
            v12 = "nw_parameters_require_netagent_uuid";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_parameters_require_netagent_uuid";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_require_netagent_uuid";
        v6 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v3)
  {
    free(v3);
  }
}

void nw_parameters_set_required_netagent_uuids(void *a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    _nw_parameters_clear_required_netagent_uuids(v3);
    if (v4)
    {
      if (object_getClass(v4) == MEMORY[0x1E69E9E50])
      {
        count = xpc_array_get_count(v4);
        if (count)
        {
          v6 = count;
          for (i = 0; i != v6; ++i)
          {
            uuid = xpc_array_get_uuid(v4, i);
            if (uuid)
            {
              _nw_parameters_add_required_netagent_uuid(v3, uuid);
            }
          }
        }
      }
    }

    goto LABEL_4;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_parameters_set_required_netagent_uuids";
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
        v19 = "nw_parameters_set_required_netagent_uuids";
        v13 = "%{public}s called with null parameters";
LABEL_23:
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
            v19 = "nw_parameters_set_required_netagent_uuids";
            v20 = 2082;
            v21 = backtrace_string;
            _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_25;
        }

        if (!v15)
        {
          goto LABEL_24;
        }

        *buf = 136446210;
        v19 = "nw_parameters_set_required_netagent_uuids";
        v13 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_23;
      }

      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v19 = "nw_parameters_set_required_netagent_uuids";
        v13 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_23;
      }
    }

LABEL_24:
  }

LABEL_25:
  if (v10)
  {
    free(v10);
  }

LABEL_4:
}

uint64_t __nw_parameters_copy_required_netagent_uuids_block_invoke(uint64_t a1, unsigned __int8 *uuid)
{
  v4 = *(*(*(a1 + 32) + 8) + 40);
  if (!v4)
  {
    v5 = xpc_array_create(0, 0);
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v4 = *(*(*(a1 + 32) + 8) + 40);
  }

  xpc_array_set_uuid(v4, 0xFFFFFFFFFFFFFFFFLL, uuid);
  return 1;
}

void nw_parameters_set_preferred_netagent_uuids(void *a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    _nw_parameters_clear_preferred_netagent_uuids(v3);
    if (v4)
    {
      if (object_getClass(v4) == MEMORY[0x1E69E9E50])
      {
        count = xpc_array_get_count(v4);
        if (count)
        {
          v6 = count;
          for (i = 0; i != v6; ++i)
          {
            uuid = xpc_array_get_uuid(v4, i);
            if (uuid)
            {
              _nw_parameters_add_preferred_netagent_uuid(v3, uuid);
            }
          }
        }
      }
    }

    goto LABEL_4;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_parameters_set_preferred_netagent_uuids";
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
        v19 = "nw_parameters_set_preferred_netagent_uuids";
        v13 = "%{public}s called with null parameters";
LABEL_23:
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
            v19 = "nw_parameters_set_preferred_netagent_uuids";
            v20 = 2082;
            v21 = backtrace_string;
            _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_25;
        }

        if (!v15)
        {
          goto LABEL_24;
        }

        *buf = 136446210;
        v19 = "nw_parameters_set_preferred_netagent_uuids";
        v13 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_23;
      }

      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v19 = "nw_parameters_set_preferred_netagent_uuids";
        v13 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_23;
      }
    }

LABEL_24:
  }

LABEL_25:
  if (v10)
  {
    free(v10);
  }

LABEL_4:
}

uint64_t __nw_parameters_copy_preferred_netagent_uuids_block_invoke(uint64_t a1, unsigned __int8 *uuid)
{
  v4 = *(*(*(a1 + 32) + 8) + 40);
  if (!v4)
  {
    v5 = xpc_array_create(0, 0);
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v4 = *(*(*(a1 + 32) + 8) + 40);
  }

  xpc_array_set_uuid(v4, 0xFFFFFFFFFFFFFFFFLL, uuid);
  return 1;
}

void nw_parameters_set_avoided_netagent_uuids(void *a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    _nw_parameters_clear_avoided_netagent_uuids(v3);
    if (v4)
    {
      if (object_getClass(v4) == MEMORY[0x1E69E9E50])
      {
        count = xpc_array_get_count(v4);
        if (count)
        {
          v6 = count;
          for (i = 0; i != v6; ++i)
          {
            uuid = xpc_array_get_uuid(v4, i);
            if (uuid)
            {
              _nw_parameters_add_avoided_netagent_uuid(v3, uuid);
            }
          }
        }
      }
    }

    goto LABEL_4;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_parameters_set_avoided_netagent_uuids";
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
        v19 = "nw_parameters_set_avoided_netagent_uuids";
        v13 = "%{public}s called with null parameters";
LABEL_23:
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
            v19 = "nw_parameters_set_avoided_netagent_uuids";
            v20 = 2082;
            v21 = backtrace_string;
            _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_25;
        }

        if (!v15)
        {
          goto LABEL_24;
        }

        *buf = 136446210;
        v19 = "nw_parameters_set_avoided_netagent_uuids";
        v13 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_23;
      }

      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v19 = "nw_parameters_set_avoided_netagent_uuids";
        v13 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_23;
      }
    }

LABEL_24:
  }

LABEL_25:
  if (v10)
  {
    free(v10);
  }

LABEL_4:
}

uint64_t __nw_parameters_copy_avoided_netagent_uuids_block_invoke(uint64_t a1, unsigned __int8 *uuid)
{
  v4 = *(*(*(a1 + 32) + 8) + 40);
  if (!v4)
  {
    v5 = xpc_array_create(0, 0);
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v4 = *(*(*(a1 + 32) + 8) + 40);
  }

  xpc_array_set_uuid(v4, 0xFFFFFFFFFFFFFFFFLL, uuid);
  return 1;
}

nw_service_class_t nw_parameters_get_service_class(nw_parameters_t parameters)
{
  v15 = *MEMORY[0x1E69E9840];
  if (parameters)
  {

    return _nw_parameters_get_service_class();
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_service_class";
  v3 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_service_class";
        v6 = "%{public}s called with null parameters";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else
    {
      if (v9 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v4 = __nwlog_obj();
        v5 = type;
        v8 = os_log_type_enabled(v4, type);
        if (backtrace_string)
        {
          if (v8)
          {
            *buf = 136446466;
            v12 = "nw_parameters_get_service_class";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_parameters_get_service_class";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_service_class";
        v6 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v3)
  {
    free(v3);
  }

  return 0;
}

void nw_parameters_set_internal_attribution(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    _nw_parameters_set_internal_attribution(a1, a2);
    return;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_set_internal_attribution";
  v3 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_set_internal_attribution";
        v6 = "%{public}s called with null parameters";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else
    {
      if (v9 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v4 = __nwlog_obj();
        v5 = type;
        v8 = os_log_type_enabled(v4, type);
        if (backtrace_string)
        {
          if (v8)
          {
            *buf = 136446466;
            v12 = "nw_parameters_set_internal_attribution";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_parameters_set_internal_attribution";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_set_internal_attribution";
        v6 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v3)
  {
    free(v3);
  }
}

void nw_parameters_set_website_attribution(void *a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    _nw_parameters_set_internal_attribution(v3, 2 * (a2 != 0));
    _nw_parameters_set_attribution_context(v4, a2);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_parameters_set_website_attribution";
  v6 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v12 = 0;
  if (__nwlog_fault(v6, &type, &v12))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v15 = "nw_parameters_set_website_attribution";
        v9 = "%{public}s called with null parameters";
LABEL_17:
        _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
      }
    }

    else
    {
      if (v12 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v7 = __nwlog_obj();
        v8 = type;
        v11 = os_log_type_enabled(v7, type);
        if (backtrace_string)
        {
          if (v11)
          {
            *buf = 136446466;
            v15 = "nw_parameters_set_website_attribution";
            v16 = 2082;
            v17 = backtrace_string;
            _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v11)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v15 = "nw_parameters_set_website_attribution";
        v9 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_17;
      }

      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v15 = "nw_parameters_set_website_attribution";
        v9 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v6)
  {
    free(v6);
  }

LABEL_3:
}

const char *nw_parameters_internal_attribution_to_string(unsigned int a1)
{
  if (a1 > 2)
  {
    return "unknown";
  }

  else
  {
    return off_1E6A2E508[a1];
  }
}

uint64_t nw_parameters_string_to_internal_attribution(const char *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (!strncasecmp(a1, "user", 5uLL))
    {
      return 1;
    }

    result = strncasecmp(a1, "developer", 0xAuLL);
    if (result)
    {
      return 2 * (strncasecmp(a1, "website", 8uLL) == 0);
    }

    return result;
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  v13 = "nw_parameters_string_to_internal_attribution";
  v4 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v10 = 0;
  if (__nwlog_fault(v4, &type, &v10))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v13 = "nw_parameters_string_to_internal_attribution";
        v7 = "%{public}s called with null string";
LABEL_20:
        _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
      }
    }

    else
    {
      if (v10 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v5 = __nwlog_obj();
        v6 = type;
        v9 = os_log_type_enabled(v5, type);
        if (backtrace_string)
        {
          if (v9)
          {
            *buf = 136446466;
            v13 = "nw_parameters_string_to_internal_attribution";
            v14 = 2082;
            v15 = backtrace_string;
            _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null string, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_22;
        }

        if (!v9)
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v13 = "nw_parameters_string_to_internal_attribution";
        v7 = "%{public}s called with null string, no backtrace";
        goto LABEL_20;
      }

      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v13 = "nw_parameters_string_to_internal_attribution";
        v7 = "%{public}s called with null string, backtrace limit exceeded";
        goto LABEL_20;
      }
    }

LABEL_21:
  }

LABEL_22:
  if (v4)
  {
    free(v4);
  }

  return 0;
}

void nw_parameters_set_is_non_app_initiated(uint64_t a1, int a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      v2 = 2;
    }

    else
    {
      v2 = 0;
    }

    _nw_parameters_set_internal_attribution(a1, v2);
    return;
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  v13 = "nw_parameters_set_is_non_app_initiated";
  v4 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v10 = 0;
  if (__nwlog_fault(v4, &type, &v10))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v13 = "nw_parameters_set_is_non_app_initiated";
        v7 = "%{public}s called with null parameters";
LABEL_21:
        _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
      }
    }

    else
    {
      if (v10 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v5 = __nwlog_obj();
        v6 = type;
        v9 = os_log_type_enabled(v5, type);
        if (backtrace_string)
        {
          if (v9)
          {
            *buf = 136446466;
            v13 = "nw_parameters_set_is_non_app_initiated";
            v14 = 2082;
            v15 = backtrace_string;
            _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_23;
        }

        if (!v9)
        {
          goto LABEL_22;
        }

        *buf = 136446210;
        v13 = "nw_parameters_set_is_non_app_initiated";
        v7 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_21;
      }

      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v13 = "nw_parameters_set_is_non_app_initiated";
        v7 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_21;
      }
    }

LABEL_22:
  }

LABEL_23:
  if (v4)
  {
    free(v4);
  }
}

void nw_parameters_set_tls(uint64_t a1, int a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v14 = _nw_parameters_copy_default_protocol_stack(a1);
    options = nw_protocol_boringssl_copy_definition();
    if (a2)
    {
      v4 = nw_protocol_stack_includes_protocol(v14, options);

      if (v4)
      {
LABEL_7:

        return;
      }

      v5 = nw_protocol_boringssl_copy_definition();
      options = nw_protocol_create_options(v5);

      nw_protocol_stack_append_application_protocol(v14, options);
    }

    else
    {
      nw_protocol_stack_remove_protocol(v14, options);
    }

    goto LABEL_7;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v18 = "nw_parameters_set_tls";
  v7 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v15 = 0;
  if (__nwlog_fault(v7, &type, &v15))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v18 = "nw_parameters_set_tls";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null parameters", buf, 0xCu);
      }
    }

    else if (v15 == 1)
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
          v18 = "nw_parameters_set_tls";
          v19 = 2082;
          v20 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_26;
      }

      if (v12)
      {
        *buf = 136446210;
        v18 = "nw_parameters_set_tls";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v18 = "nw_parameters_set_tls";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_26:
  if (v7)
  {
    free(v7);
  }
}

void nw_parameters_set_use_tfo_heuristics(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v2 = gLogObj;
  v3 = v2;
  if (a1)
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v13 = "nw_parameters_set_use_tfo_heuristics";
      _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_INFO, "%{public}s nw_parameters_set_use_tfo_heuristics is deprecated", buf, 0xCu);
    }

    return;
  }

  *buf = 136446210;
  v13 = "nw_parameters_set_use_tfo_heuristics";
  v4 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v10 = 0;
  if (__nwlog_fault(v4, &type, &v10))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v13 = "nw_parameters_set_use_tfo_heuristics";
        v7 = "%{public}s called with null parameters";
LABEL_19:
        _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
      }
    }

    else
    {
      if (v10 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v5 = __nwlog_obj();
        v6 = type;
        v9 = os_log_type_enabled(v5, type);
        if (backtrace_string)
        {
          if (v9)
          {
            *buf = 136446466;
            v13 = "nw_parameters_set_use_tfo_heuristics";
            v14 = 2082;
            v15 = backtrace_string;
            _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_21;
        }

        if (!v9)
        {
          goto LABEL_20;
        }

        *buf = 136446210;
        v13 = "nw_parameters_set_use_tfo_heuristics";
        v7 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_19;
      }

      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v13 = "nw_parameters_set_use_tfo_heuristics";
        v7 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_19;
      }
    }

LABEL_20:
  }

LABEL_21:
  if (v4)
  {
    free(v4);
  }
}

uint64_t nw_parameters_get_use_tfo_heuristics(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return 0;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_use_tfo_heuristics";
  v3 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_use_tfo_heuristics";
        v6 = "%{public}s called with null parameters";
LABEL_16:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else
    {
      if (v9 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v4 = __nwlog_obj();
        v5 = type;
        v8 = os_log_type_enabled(v4, type);
        if (backtrace_string)
        {
          if (v8)
          {
            *buf = 136446466;
            v12 = "nw_parameters_get_use_tfo_heuristics";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_18;
        }

        if (!v8)
        {
          goto LABEL_17;
        }

        *buf = 136446210;
        v12 = "nw_parameters_get_use_tfo_heuristics";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_16;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_use_tfo_heuristics";
        v6 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_16;
      }
    }

LABEL_17:
  }

LABEL_18:
  if (v3)
  {
    free(v3);
  }

  return 0;
}

void nw_parameters_set_minimum_tls_protocol_version(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = nw_parameters_copy_tls_options(a1);
    if (v1)
    {
      v11 = v1;
      v2 = v1;
      v3 = tls_helper_SSLProtocol_from_version();
      sec_protocol_options_set_tls_min_version(v2, v3);

      v1 = v11;
    }

    return;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_parameters_set_minimum_tls_protocol_version";
  v5 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v12 = 0;
  if (__nwlog_fault(v5, &type, &v12))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_parameters_set_minimum_tls_protocol_version";
        v8 = "%{public}s called with null parameters";
LABEL_20:
        _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
      }
    }

    else
    {
      if (v12 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v6 = __nwlog_obj();
        v7 = type;
        v10 = os_log_type_enabled(v6, type);
        if (backtrace_string)
        {
          if (v10)
          {
            *buf = 136446466;
            v15 = "nw_parameters_set_minimum_tls_protocol_version";
            v16 = 2082;
            v17 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_22;
        }

        if (!v10)
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v15 = "nw_parameters_set_minimum_tls_protocol_version";
        v8 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_20;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_parameters_set_minimum_tls_protocol_version";
        v8 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_20;
      }
    }

LABEL_21:
  }

LABEL_22:
  if (v5)
  {
    free(v5);
  }
}

id nw_parameters_copy_tls_options(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = _nw_parameters_copy_default_protocol_stack(v1);
  v3 = v2;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__19817;
  v17 = __Block_byref_object_dispose__19818;
  v18 = 0;
  if (!v2 || (v12[0] = MEMORY[0x1E69E9820], v12[1] = 3221225472, v12[2] = __nw_parameters_copy_tls_options_block_invoke, v12[3] = &unk_1E6A395C0, v12[4] = &v13, v4 = v2, v5 = v12, _nw_protocol_stack_iterate_application_protocols(v4, v5), v5, v4, (v6 = v14[5]) == 0))
  {
    options = nw_tls_create_options();
    v8 = v14[5];
    v14[5] = options;

    nw_protocol_stack_append_application_protocol(v3, v14[5]);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v20 = "nw_parameters_copy_tls_options";
      _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s TLS-specific parameter set without TLS set, adding TLS", buf, 0xCu);
    }

    v6 = v14[5];
  }

  v10 = v6;
  _Block_object_dispose(&v13, 8);

  return v10;
}

void sub_182490A28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __nw_parameters_copy_tls_options_block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    v7 = v4;
    v5 = nw_protocol_boringssl_copy_definition();
    v6 = nw_protocol_options_matches_definition(v7, v5);

    v4 = v7;
    if (v6)
    {
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
      v4 = v7;
    }
  }
}

uint64_t nw_parameters_get_minimum_tls_protocol_version(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return 0;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_minimum_tls_protocol_version";
  v3 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_minimum_tls_protocol_version";
        v6 = "%{public}s called with null parameters";
LABEL_16:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else
    {
      if (v9 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v4 = __nwlog_obj();
        v5 = type;
        v8 = os_log_type_enabled(v4, type);
        if (backtrace_string)
        {
          if (v8)
          {
            *buf = 136446466;
            v12 = "nw_parameters_get_minimum_tls_protocol_version";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_18;
        }

        if (!v8)
        {
          goto LABEL_17;
        }

        *buf = 136446210;
        v12 = "nw_parameters_get_minimum_tls_protocol_version";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_16;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_minimum_tls_protocol_version";
        v6 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_16;
      }
    }

LABEL_17:
  }

LABEL_18:
  if (v3)
  {
    free(v3);
  }

  return 0;
}

void nw_parameters_set_maximum_tls_protocol_version(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = nw_parameters_copy_tls_options(a1);
    if (v1)
    {
      v11 = v1;
      v2 = v1;
      v3 = tls_helper_SSLProtocol_from_version();
      sec_protocol_options_set_tls_max_version(v2, v3);

      v1 = v11;
    }

    return;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_parameters_set_maximum_tls_protocol_version";
  v5 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v12 = 0;
  if (__nwlog_fault(v5, &type, &v12))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_parameters_set_maximum_tls_protocol_version";
        v8 = "%{public}s called with null parameters";
LABEL_20:
        _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
      }
    }

    else
    {
      if (v12 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v6 = __nwlog_obj();
        v7 = type;
        v10 = os_log_type_enabled(v6, type);
        if (backtrace_string)
        {
          if (v10)
          {
            *buf = 136446466;
            v15 = "nw_parameters_set_maximum_tls_protocol_version";
            v16 = 2082;
            v17 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_22;
        }

        if (!v10)
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v15 = "nw_parameters_set_maximum_tls_protocol_version";
        v8 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_20;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_parameters_set_maximum_tls_protocol_version";
        v8 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_20;
      }
    }

LABEL_21:
  }

LABEL_22:
  if (v5)
  {
    free(v5);
  }
}

uint64_t nw_parameters_get_maximum_tls_protocol_version(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return 0;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_maximum_tls_protocol_version";
  v3 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_maximum_tls_protocol_version";
        v6 = "%{public}s called with null parameters";
LABEL_16:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else
    {
      if (v9 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v4 = __nwlog_obj();
        v5 = type;
        v8 = os_log_type_enabled(v4, type);
        if (backtrace_string)
        {
          if (v8)
          {
            *buf = 136446466;
            v12 = "nw_parameters_get_maximum_tls_protocol_version";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_18;
        }

        if (!v8)
        {
          goto LABEL_17;
        }

        *buf = 136446210;
        v12 = "nw_parameters_get_maximum_tls_protocol_version";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_16;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_maximum_tls_protocol_version";
        v6 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_16;
      }
    }

LABEL_17:
  }

LABEL_18:
  if (v3)
  {
    free(v3);
  }

  return 0;
}

void nw_parameters_set_ssl_cipher_suites(void *a1, tls_ciphersuite_t *a2, int a3)
{
  LODWORD(v3) = a3;
  v27 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = v5;
  if (!v5)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_parameters_set_ssl_cipher_suites";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v12, &type, &v21))
    {
      goto LABEL_39;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v24 = "nw_parameters_set_ssl_cipher_suites";
        v15 = "%{public}s called with null parameters";
LABEL_37:
        _os_log_impl(&dword_181A37000, v13, v14, v15, buf, 0xCu);
      }
    }

    else if (v21 == 1)
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
          v24 = "nw_parameters_set_ssl_cipher_suites";
          v25 = 2082;
          v26 = backtrace_string;
          _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_39:
        if (!v12)
        {
          goto LABEL_9;
        }

LABEL_40:
        free(v12);
        goto LABEL_9;
      }

      if (v18)
      {
        *buf = 136446210;
        v24 = "nw_parameters_set_ssl_cipher_suites";
        v15 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_37;
      }
    }

    else
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v24 = "nw_parameters_set_ssl_cipher_suites";
        v15 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_37;
      }
    }

LABEL_38:

    goto LABEL_39;
  }

  if (a2)
  {
    v7 = nw_parameters_copy_tls_options(v5);
    v8 = v7;
    if (v7)
    {
      v9 = v7;
      if (v3)
      {
        v3 = v3;
        do
        {
          v10 = *a2++;
          sec_protocol_options_append_tls_ciphersuite(v9, v10);
          --v3;
        }

        while (v3);
      }
    }

    goto LABEL_9;
  }

  v16 = __nwlog_obj();
  *buf = 136446210;
  v24 = "nw_parameters_set_ssl_cipher_suites";
  v12 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v21 = 0;
  if (!__nwlog_fault(v12, &type, &v21))
  {
    goto LABEL_39;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v13 = __nwlog_obj();
    v14 = type;
    if (os_log_type_enabled(v13, type))
    {
      *buf = 136446210;
      v24 = "nw_parameters_set_ssl_cipher_suites";
      v15 = "%{public}s called with null cipher_suites";
      goto LABEL_37;
    }

    goto LABEL_38;
  }

  if (v21 != 1)
  {
    v13 = __nwlog_obj();
    v14 = type;
    if (os_log_type_enabled(v13, type))
    {
      *buf = 136446210;
      v24 = "nw_parameters_set_ssl_cipher_suites";
      v15 = "%{public}s called with null cipher_suites, backtrace limit exceeded";
      goto LABEL_37;
    }

    goto LABEL_38;
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
      v24 = "nw_parameters_set_ssl_cipher_suites";
      v15 = "%{public}s called with null cipher_suites, no backtrace";
      goto LABEL_37;
    }

    goto LABEL_38;
  }

  if (v20)
  {
    *buf = 136446466;
    v24 = "nw_parameters_set_ssl_cipher_suites";
    v25 = 2082;
    v26 = v19;
    _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null cipher_suites, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v19);
  if (v12)
  {
    goto LABEL_40;
  }

LABEL_9:
}

void nw_parameters_get_ssl_cipher_suites(void *a1, uint64_t a2, _DWORD *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a1;
  if (!v5)
  {
    v6 = 0;
    v7 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_parameters_get_ssl_cipher_suites";
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v8, &type, &v19))
    {
      goto LABEL_46;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_45;
      }

      *buf = 136446210;
      v22 = "nw_parameters_get_ssl_cipher_suites";
      v11 = "%{public}s called with null parameters";
LABEL_44:
      _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0xCu);
      goto LABEL_45;
    }

    if (v19 != 1)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v22 = "nw_parameters_get_ssl_cipher_suites";
        v11 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_44;
      }

      goto LABEL_45;
    }

    backtrace_string = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v10 = type;
    v15 = os_log_type_enabled(v9, type);
    if (!backtrace_string)
    {
      if (v15)
      {
        *buf = 136446210;
        v22 = "nw_parameters_get_ssl_cipher_suites";
        v11 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_44;
      }

      goto LABEL_45;
    }

    if (!v15)
    {
      goto LABEL_31;
    }

    *buf = 136446466;
    v22 = "nw_parameters_get_ssl_cipher_suites";
    v23 = 2082;
    v24 = backtrace_string;
    v16 = "%{public}s called with null parameters, dumping backtrace:%{public}s";
LABEL_30:
    _os_log_impl(&dword_181A37000, v9, v10, v16, buf, 0x16u);
LABEL_31:

    free(backtrace_string);
    goto LABEL_46;
  }

  if (!a2)
  {
    v6 = v5;
    v12 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_parameters_get_ssl_cipher_suites";
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v8, &type, &v19))
    {
      goto LABEL_46;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_45;
      }

      *buf = 136446210;
      v22 = "nw_parameters_get_ssl_cipher_suites";
      v11 = "%{public}s called with null cipher_suites";
      goto LABEL_44;
    }

    if (v19 != 1)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v22 = "nw_parameters_get_ssl_cipher_suites";
        v11 = "%{public}s called with null cipher_suites, backtrace limit exceeded";
        goto LABEL_44;
      }

      goto LABEL_45;
    }

    backtrace_string = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v10 = type;
    v17 = os_log_type_enabled(v9, type);
    if (!backtrace_string)
    {
      if (v17)
      {
        *buf = 136446210;
        v22 = "nw_parameters_get_ssl_cipher_suites";
        v11 = "%{public}s called with null cipher_suites, no backtrace";
        goto LABEL_44;
      }

      goto LABEL_45;
    }

    if (!v17)
    {
      goto LABEL_31;
    }

    *buf = 136446466;
    v22 = "nw_parameters_get_ssl_cipher_suites";
    v23 = 2082;
    v24 = backtrace_string;
    v16 = "%{public}s called with null cipher_suites, dumping backtrace:%{public}s";
    goto LABEL_30;
  }

  if (a3)
  {
    *a3 = 0;
    goto LABEL_5;
  }

  v6 = v5;
  v13 = __nwlog_obj();
  *buf = 136446210;
  v22 = "nw_parameters_get_ssl_cipher_suites";
  v8 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (__nwlog_fault(v8, &type, &v19))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v22 = "nw_parameters_get_ssl_cipher_suites";
        v11 = "%{public}s called with null count";
        goto LABEL_44;
      }

LABEL_45:

      goto LABEL_46;
    }

    if (v19 != 1)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v22 = "nw_parameters_get_ssl_cipher_suites";
        v11 = "%{public}s called with null count, backtrace limit exceeded";
        goto LABEL_44;
      }

      goto LABEL_45;
    }

    backtrace_string = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v10 = type;
    v18 = os_log_type_enabled(v9, type);
    if (!backtrace_string)
    {
      if (v18)
      {
        *buf = 136446210;
        v22 = "nw_parameters_get_ssl_cipher_suites";
        v11 = "%{public}s called with null count, no backtrace";
        goto LABEL_44;
      }

      goto LABEL_45;
    }

    if (!v18)
    {
      goto LABEL_31;
    }

    *buf = 136446466;
    v22 = "nw_parameters_get_ssl_cipher_suites";
    v23 = 2082;
    v24 = backtrace_string;
    v16 = "%{public}s called with null count, dumping backtrace:%{public}s";
    goto LABEL_30;
  }

LABEL_46:
  if (v8)
  {
    free(v8);
  }

  v5 = v6;
LABEL_5:
}

void nw_parameters_set_tls_session_ticket_enabled(void *a1, BOOL a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = nw_parameters_copy_tls_options(a1);
    if (v3)
    {
      v12 = v3;
      v4 = v3;
      sec_protocol_options_set_tls_tickets_enabled(v4, a2);

      v3 = v12;
    }

    return;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_parameters_set_tls_session_ticket_enabled";
  v6 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v13 = 0;
  if (__nwlog_fault(v6, &type, &v13))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_parameters_set_tls_session_ticket_enabled";
        v9 = "%{public}s called with null parameters";
LABEL_20:
        _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
      }
    }

    else
    {
      if (v13 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v7 = __nwlog_obj();
        v8 = type;
        v11 = os_log_type_enabled(v7, type);
        if (backtrace_string)
        {
          if (v11)
          {
            *buf = 136446466;
            v16 = "nw_parameters_set_tls_session_ticket_enabled";
            v17 = 2082;
            v18 = backtrace_string;
            _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_22;
        }

        if (!v11)
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v16 = "nw_parameters_set_tls_session_ticket_enabled";
        v9 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_20;
      }

      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_parameters_set_tls_session_ticket_enabled";
        v9 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_20;
      }
    }

LABEL_21:
  }

LABEL_22:
  if (v6)
  {
    free(v6);
  }
}

uint64_t nw_parameters_get_tls_session_ticket_enabled(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return 0;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_tls_session_ticket_enabled";
  v3 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_tls_session_ticket_enabled";
        v6 = "%{public}s called with null parameters";
LABEL_16:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else
    {
      if (v9 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v4 = __nwlog_obj();
        v5 = type;
        v8 = os_log_type_enabled(v4, type);
        if (backtrace_string)
        {
          if (v8)
          {
            *buf = 136446466;
            v12 = "nw_parameters_get_tls_session_ticket_enabled";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_18;
        }

        if (!v8)
        {
          goto LABEL_17;
        }

        *buf = 136446210;
        v12 = "nw_parameters_get_tls_session_ticket_enabled";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_16;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_tls_session_ticket_enabled";
        v6 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_16;
      }
    }

LABEL_17:
  }

LABEL_18:
  if (v3)
  {
    free(v3);
  }

  return 0;
}

void nw_parameters_set_tls_enforce_ev(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v1 = __nwlog_obj();
    *buf = 136446210;
    v11 = "nw_parameters_set_tls_enforce_ev";
    v2 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v8 = 0;
    if (!__nwlog_fault(v2, &type, &v8))
    {
      goto LABEL_18;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (os_log_type_enabled(v3, type))
      {
        *buf = 136446210;
        v11 = "nw_parameters_set_tls_enforce_ev";
        v5 = "%{public}s called with null parameters";
LABEL_16:
        _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
      }
    }

    else
    {
      if (v8 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v3 = __nwlog_obj();
        v4 = type;
        v7 = os_log_type_enabled(v3, type);
        if (backtrace_string)
        {
          if (v7)
          {
            *buf = 136446466;
            v11 = "nw_parameters_set_tls_enforce_ev";
            v12 = 2082;
            v13 = backtrace_string;
            _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_18;
        }

        if (!v7)
        {
          goto LABEL_17;
        }

        *buf = 136446210;
        v11 = "nw_parameters_set_tls_enforce_ev";
        v5 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_16;
      }

      v3 = __nwlog_obj();
      v4 = type;
      if (os_log_type_enabled(v3, type))
      {
        *buf = 136446210;
        v11 = "nw_parameters_set_tls_enforce_ev";
        v5 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_16;
      }
    }

LABEL_17:

LABEL_18:
    if (v2)
    {
      free(v2);
    }
  }
}

void nw_parameters_set_initial_data_payload(void *a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v16 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_parameters_set_initial_data_payload";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (__nwlog_fault(v7, &type, &v19))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v8 = __nwlog_obj();
        v9 = type;
        if (!os_log_type_enabled(v8, type))
        {
          goto LABEL_20;
        }

        *buf = 136446210;
        v22 = "nw_parameters_set_initial_data_payload";
        v10 = "%{public}s called with null parameters";
        goto LABEL_18;
      }

      if (v19 != 1)
      {
        v8 = __nwlog_obj();
        v9 = type;
        if (!os_log_type_enabled(v8, type))
        {
          goto LABEL_20;
        }

        *buf = 136446210;
        v22 = "nw_parameters_set_initial_data_payload";
        v10 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }

      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v9 = type;
      v18 = os_log_type_enabled(v8, type);
      if (!backtrace_string)
      {
        if (!v18)
        {
          goto LABEL_20;
        }

        *buf = 136446210;
        v22 = "nw_parameters_set_initial_data_payload";
        v10 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      if (v18)
      {
        *buf = 136446466;
        v22 = "nw_parameters_set_initial_data_payload";
        v23 = 2082;
        v24 = backtrace_string;
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

LABEL_21:
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_22:
    free(v7);
    goto LABEL_5;
  }

  if (!v4 || dispatch_data_get_size(v4))
  {
    _nw_parameters_set_initial_data_payload(v3, v5);
    goto LABEL_5;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v6 = gLogObj;
  *buf = 136446210;
  v22 = "nw_parameters_set_initial_data_payload";
  v7 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (!__nwlog_fault(v7, &type, &v19))
  {
    goto LABEL_21;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    v9 = type;
    if (os_log_type_enabled(v8, type))
    {
      *buf = 136446210;
      v22 = "nw_parameters_set_initial_data_payload";
      v10 = "%{public}s initial_data_payload is empty";
LABEL_18:
      v14 = v8;
      v15 = v9;
LABEL_19:
      _os_log_impl(&dword_181A37000, v14, v15, v10, buf, 0xCu);
      goto LABEL_20;
    }

    goto LABEL_20;
  }

  if (v19 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    v9 = type;
    if (os_log_type_enabled(v8, type))
    {
      *buf = 136446210;
      v22 = "nw_parameters_set_initial_data_payload";
      v10 = "%{public}s initial_data_payload is empty, backtrace limit exceeded";
      goto LABEL_18;
    }

LABEL_20:

    goto LABEL_21;
  }

  v11 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v8 = gLogObj;
  v12 = type;
  v13 = os_log_type_enabled(v8, type);
  if (!v11)
  {
    if (!v13)
    {
      goto LABEL_20;
    }

    *buf = 136446210;
    v22 = "nw_parameters_set_initial_data_payload";
    v10 = "%{public}s initial_data_payload is empty, no backtrace";
    v14 = v8;
    v15 = v12;
    goto LABEL_19;
  }

  if (v13)
  {
    *buf = 136446466;
    v22 = "nw_parameters_set_initial_data_payload";
    v23 = 2082;
    v24 = v11;
    _os_log_impl(&dword_181A37000, v8, v12, "%{public}s initial_data_payload is empty, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v11);
  if (v7)
  {
    goto LABEL_22;
  }

LABEL_5:
}

uint64_t nw_parameters_copy_initial_data_payload(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_copy_initial_data_payload(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_copy_initial_data_payload";
  v3 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_copy_initial_data_payload";
        v6 = "%{public}s called with null parameters";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else
    {
      if (v9 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v4 = __nwlog_obj();
        v5 = type;
        v8 = os_log_type_enabled(v4, type);
        if (backtrace_string)
        {
          if (v8)
          {
            *buf = 136446466;
            v12 = "nw_parameters_copy_initial_data_payload";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_parameters_copy_initial_data_payload";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_copy_initial_data_payload";
        v6 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v3)
  {
    free(v3);
  }

  return 0;
}

void nw_parameters_set_endpoint_resolution_preference_handler(char *a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    _nw_parameters_set_endpoint_resolution_preference_handler(a1, a2);
    return;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_set_endpoint_resolution_preference_handler";
  v3 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_set_endpoint_resolution_preference_handler";
        v6 = "%{public}s called with null parameters";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else
    {
      if (v9 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v4 = __nwlog_obj();
        v5 = type;
        v8 = os_log_type_enabled(v4, type);
        if (backtrace_string)
        {
          if (v8)
          {
            *buf = 136446466;
            v12 = "nw_parameters_set_endpoint_resolution_preference_handler";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_parameters_set_endpoint_resolution_preference_handler";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_set_endpoint_resolution_preference_handler";
        v6 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v3)
  {
    free(v3);
  }
}

uint64_t nw_parameters_execute_endpoint_resolution_preference_handler(void *a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      v6 = _nw_parameters_execute_endpoint_resolution_preference_handler(v3, v4);
      goto LABEL_4;
    }

    v13 = __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_parameters_execute_endpoint_resolution_preference_handler";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (__nwlog_fault(v9, &type, &v18))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v21 = "nw_parameters_execute_endpoint_resolution_preference_handler";
          v12 = "%{public}s called with null endpoint";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      if (v18 != 1)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v21 = "nw_parameters_execute_endpoint_resolution_preference_handler";
          v12 = "%{public}s called with null endpoint, backtrace limit exceeded";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v11 = type;
      v17 = os_log_type_enabled(v10, type);
      if (!backtrace_string)
      {
        if (v17)
        {
          *buf = 136446210;
          v21 = "nw_parameters_execute_endpoint_resolution_preference_handler";
          v12 = "%{public}s called with null endpoint, no backtrace";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      if (!v17)
      {
        goto LABEL_22;
      }

      *buf = 136446466;
      v21 = "nw_parameters_execute_endpoint_resolution_preference_handler";
      v22 = 2082;
      v23 = backtrace_string;
      v16 = "%{public}s called with null endpoint, dumping backtrace:%{public}s";
LABEL_21:
      _os_log_impl(&dword_181A37000, v10, v11, v16, buf, 0x16u);
LABEL_22:

      free(backtrace_string);
    }
  }

  else
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_parameters_execute_endpoint_resolution_preference_handler";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (__nwlog_fault(v9, &type, &v18))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v21 = "nw_parameters_execute_endpoint_resolution_preference_handler";
          v12 = "%{public}s called with null parameters";
LABEL_31:
          _os_log_impl(&dword_181A37000, v10, v11, v12, buf, 0xCu);
        }

LABEL_32:

        goto LABEL_33;
      }

      if (v18 != 1)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v21 = "nw_parameters_execute_endpoint_resolution_preference_handler";
          v12 = "%{public}s called with null parameters, backtrace limit exceeded";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v11 = type;
      v15 = os_log_type_enabled(v10, type);
      if (!backtrace_string)
      {
        if (v15)
        {
          *buf = 136446210;
          v21 = "nw_parameters_execute_endpoint_resolution_preference_handler";
          v12 = "%{public}s called with null parameters, no backtrace";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      if (!v15)
      {
        goto LABEL_22;
      }

      *buf = 136446466;
      v21 = "nw_parameters_execute_endpoint_resolution_preference_handler";
      v22 = 2082;
      v23 = backtrace_string;
      v16 = "%{public}s called with null parameters, dumping backtrace:%{public}s";
      goto LABEL_21;
    }
  }

LABEL_33:
  if (v9)
  {
    free(v9);
  }

  v6 = 1;
LABEL_4:

  return v6;
}

uint64_t nw_parameters_has_proxy_protocol_in_effective_config(void *a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_parameters_copy_default_protocol_stack(v1);
    if (v3)
    {
      v4 = _nw_parameters_copy_effective_proxy_config(v2);
      v5 = v4;
      if (v4 && nw_proxy_config_get_mode(v4) == 1)
      {
        v6 = _nw_protocol_stack_copy_transport_protocol(v3);
        v7 = v6;
        if (v6)
        {
          v8 = _nw_protocol_options_copy_definition(v6);
          *type = 4;
          v9 = nw_proxy_config_copy_protocol_stack(v5, v8, type);
          v10 = v9;
          if (v9)
          {
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x2020000000;
            v35 = 0;
            v31[0] = MEMORY[0x1E69E9820];
            v31[1] = 3221225472;
            v31[2] = __nw_parameters_has_proxy_protocol_in_effective_config_block_invoke;
            v31[3] = &unk_1E6A395C0;
            v31[4] = buf;
            v11 = v9;
            v12 = v31;
            _nw_protocol_stack_iterate_application_protocols(v11, v12);

            v13 = *(*&buf[8] + 24);
            _Block_object_dispose(buf, 8);
          }

          else
          {
            v13 = 0;
          }
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }

LABEL_14:
      goto LABEL_15;
    }

    v19 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_parameters_has_proxy_protocol_in_effective_config";
    v20 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v33 = 0;
    if (__nwlog_fault(v20, type, &v33))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v21 = __nwlog_obj();
        v22 = type[0];
        if (os_log_type_enabled(v21, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_parameters_has_proxy_protocol_in_effective_config";
          _os_log_impl(&dword_181A37000, v21, v22, "%{public}s called with null default_stack", buf, 0xCu);
        }
      }

      else if (v33 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v21 = __nwlog_obj();
        v27 = type[0];
        v28 = os_log_type_enabled(v21, type[0]);
        if (backtrace_string)
        {
          if (v28)
          {
            *buf = 136446466;
            *&buf[4] = "nw_parameters_has_proxy_protocol_in_effective_config";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v21, v27, "%{public}s called with null default_stack, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_51;
        }

        if (v28)
        {
          *buf = 136446210;
          *&buf[4] = "nw_parameters_has_proxy_protocol_in_effective_config";
          _os_log_impl(&dword_181A37000, v21, v27, "%{public}s called with null default_stack, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v21 = __nwlog_obj();
        v30 = type[0];
        if (os_log_type_enabled(v21, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_parameters_has_proxy_protocol_in_effective_config";
          _os_log_impl(&dword_181A37000, v21, v30, "%{public}s called with null default_stack, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_51:
    if (v20)
    {
      free(v20);
    }

    v13 = 0;
    goto LABEL_14;
  }

  v15 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_parameters_has_proxy_protocol_in_effective_config";
  v16 = _os_log_send_and_compose_impl();

  type[0] = OS_LOG_TYPE_ERROR;
  v33 = 0;
  if (__nwlog_fault(v16, type, &v33))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v17 = __nwlog_obj();
      v18 = type[0];
      if (os_log_type_enabled(v17, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_has_proxy_protocol_in_effective_config";
        _os_log_impl(&dword_181A37000, v17, v18, "%{public}s called with null parameters", buf, 0xCu);
      }
    }

    else if (v33 == 1)
    {
      v23 = __nw_create_backtrace_string();
      v17 = __nwlog_obj();
      v24 = type[0];
      v25 = os_log_type_enabled(v17, type[0]);
      if (v23)
      {
        if (v25)
        {
          *buf = 136446466;
          *&buf[4] = "nw_parameters_has_proxy_protocol_in_effective_config";
          *&buf[12] = 2082;
          *&buf[14] = v23;
          _os_log_impl(&dword_181A37000, v17, v24, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v23);
        goto LABEL_45;
      }

      if (v25)
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_has_proxy_protocol_in_effective_config";
        _os_log_impl(&dword_181A37000, v17, v24, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v17 = __nwlog_obj();
      v29 = type[0];
      if (os_log_type_enabled(v17, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_has_proxy_protocol_in_effective_config";
        _os_log_impl(&dword_181A37000, v17, v29, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_45:
  if (v16)
  {
    free(v16);
  }

  v13 = 0;
LABEL_15:

  return v13 & 1;
}

void sub_18249376C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __nw_parameters_has_proxy_protocol_in_effective_config_block_invoke(uint64_t a1, nw_protocol_options_t options)
{
  v3 = nw_protocol_options_copy_definition(options);
  if (nw_protocol_definition_is_proxy(v3))
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

uint64_t nw_parameters_has_multiplexed_protocol_in_stack(void *a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_parameters_copy_default_protocol_stack(v1);
    v4 = v3;
    if (v3)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v35 = 0;
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __nw_parameters_has_multiplexed_protocol_in_stack_block_invoke;
      v31[3] = &unk_1E6A2E368;
      v31[4] = buf;
      v5 = v3;
      v6 = v31;
      _nw_protocol_stack_iterate_application_protocols_with_index(v5, 1, 1, v6);

      v7 = _nw_protocol_stack_copy_transport_protocol(v5);
      v8 = v7;
      if ((*(*&buf[8] + 24) & 1) == 0 && v7)
      {
        v9 = _nw_protocol_options_copy_definition(v7);
        if (*(nw_protocol_definition_get_identifier(v9) + 9) == 2)
        {
          *(*&buf[8] + 24) = 1;
        }
      }

      v10 = _nw_protocol_stack_copy_secondary_transport_protocol(v5);
      v11 = v10;
      v12 = *(*&buf[8] + 24);
      if ((v12 & 1) == 0 && v10)
      {
        v13 = _nw_protocol_options_copy_definition(v10);
        if (*(nw_protocol_definition_get_identifier(v13) + 9) == 2)
        {
          *(*&buf[8] + 24) = 1;
        }

        v12 = *(*&buf[8] + 24);
      }

      _Block_object_dispose(buf, 8);
LABEL_14:

      goto LABEL_15;
    }

    v19 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_parameters_has_multiplexed_protocol_in_stack";
    v20 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (__nwlog_fault(v20, &type, &v32))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v21 = __nwlog_obj();
        v22 = type;
        if (os_log_type_enabled(v21, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_parameters_has_multiplexed_protocol_in_stack";
          _os_log_impl(&dword_181A37000, v21, v22, "%{public}s called with null stack", buf, 0xCu);
        }
      }

      else if (v32 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v21 = __nwlog_obj();
        v27 = type;
        v28 = os_log_type_enabled(v21, type);
        if (backtrace_string)
        {
          if (v28)
          {
            *buf = 136446466;
            *&buf[4] = "nw_parameters_has_multiplexed_protocol_in_stack";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v21, v27, "%{public}s called with null stack, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_51;
        }

        if (v28)
        {
          *buf = 136446210;
          *&buf[4] = "nw_parameters_has_multiplexed_protocol_in_stack";
          _os_log_impl(&dword_181A37000, v21, v27, "%{public}s called with null stack, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v21 = __nwlog_obj();
        v30 = type;
        if (os_log_type_enabled(v21, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_parameters_has_multiplexed_protocol_in_stack";
          _os_log_impl(&dword_181A37000, v21, v30, "%{public}s called with null stack, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_51:
    if (v20)
    {
      free(v20);
    }

    v12 = 0;
    goto LABEL_14;
  }

  v15 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_parameters_has_multiplexed_protocol_in_stack";
  v16 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v32 = 0;
  if (__nwlog_fault(v16, &type, &v32))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v17 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v17, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_has_multiplexed_protocol_in_stack";
        _os_log_impl(&dword_181A37000, v17, v18, "%{public}s called with null parameters", buf, 0xCu);
      }
    }

    else if (v32 == 1)
    {
      v23 = __nw_create_backtrace_string();
      v17 = __nwlog_obj();
      v24 = type;
      v25 = os_log_type_enabled(v17, type);
      if (v23)
      {
        if (v25)
        {
          *buf = 136446466;
          *&buf[4] = "nw_parameters_has_multiplexed_protocol_in_stack";
          *&buf[12] = 2082;
          *&buf[14] = v23;
          _os_log_impl(&dword_181A37000, v17, v24, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v23);
        goto LABEL_45;
      }

      if (v25)
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_has_multiplexed_protocol_in_stack";
        _os_log_impl(&dword_181A37000, v17, v24, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v17 = __nwlog_obj();
      v29 = type;
      if (os_log_type_enabled(v17, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_has_multiplexed_protocol_in_stack";
        _os_log_impl(&dword_181A37000, v17, v29, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_45:
  if (v16)
  {
    free(v16);
  }

  v12 = 0;
LABEL_15:

  return v12 & 1;
}

void sub_182493DD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL __nw_parameters_has_multiplexed_protocol_in_stack_block_invoke(uint64_t a1, int a2, nw_protocol_options_t options)
{
  v4 = nw_protocol_options_copy_definition(options);
  if (*(nw_protocol_definition_get_identifier(v4) + 9) == 2)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  v5 = *(*(*(a1 + 32) + 8) + 24);

  return (v5 & 1) == 0;
}

void nw_parameters_log_protocol_instances(void *a1)
{
  v55 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = _nw_parameters_copy_default_protocol_stack(v1);
  if (v2)
  {
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __nw_parameters_log_protocol_instances_block_invoke;
    v41[3] = &unk_1E6A2E3B8;
    v40 = v1;
    v42 = v40;
    v3 = v2;
    v4 = v41;
    _nw_protocol_stack_iterate_application_protocols_with_index(v3, 1, 1, v4);

    v5 = _nw_protocol_stack_copy_transport_protocol(v3);
    v6 = v5;
    if (v5)
    {
      v7 = _nw_protocol_options_copy_definition(v5);
      identifier = nw_protocol_definition_get_identifier(v7);
      protocol_handle = _nw_protocol_options_get_protocol_handle(v6);
      if (gLogDatapath == 1)
      {
        v30 = protocol_handle;
        v31 = __nwlog_obj();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136447234;
          v46 = "nw_parameters_log_protocol_instances";
          v47 = 2048;
          v48 = v40;
          v49 = 2048;
          v50 = v6;
          v51 = 2080;
          v52 = identifier;
          v53 = 2048;
          v54 = v30;
          _os_log_impl(&dword_181A37000, v31, OS_LOG_TYPE_DEBUG, "%{public}s Parameters %p, transport, options %p (%s), protocol handle %p", buf, 0x34u);
        }
      }
    }

    v10 = _nw_protocol_stack_copy_secondary_transport_protocol(v3);
    v11 = v10;
    if (v10)
    {
      v12 = _nw_protocol_options_copy_definition(v10);
      v13 = nw_protocol_definition_get_identifier(v12);
      v14 = _nw_protocol_options_get_protocol_handle(v11);
      if (gLogDatapath == 1)
      {
        v32 = v14;
        v33 = __nwlog_obj();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136447234;
          v46 = "nw_parameters_log_protocol_instances";
          v47 = 2048;
          v48 = v40;
          v49 = 2048;
          v50 = v11;
          v51 = 2080;
          v52 = v13;
          v53 = 2048;
          v54 = v32;
          _os_log_impl(&dword_181A37000, v33, OS_LOG_TYPE_DEBUG, "%{public}s Parameters %p, secondary transport, options %p (%s), protocol handle %p", buf, 0x34u);
        }
      }
    }

    v15 = _nw_protocol_stack_copy_internet_protocol();
    v16 = v15;
    if (v15)
    {
      v17 = _nw_protocol_options_copy_definition(v15);
      v18 = nw_protocol_definition_get_identifier(v17);
      v19 = _nw_protocol_options_get_protocol_handle(v16);
      if (gLogDatapath == 1)
      {
        v34 = v19;
        v39 = __nwlog_obj();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136447234;
          v46 = "nw_parameters_log_protocol_instances";
          v47 = 2048;
          v48 = v40;
          v49 = 2048;
          v50 = v16;
          v51 = 2080;
          v52 = v18;
          v53 = 2048;
          v54 = v34;
          _os_log_impl(&dword_181A37000, v39, OS_LOG_TYPE_DEBUG, "%{public}s Parameters %p, internet, options %p (%s), protocol handle %p", buf, 0x34u);
        }
      }
    }

    v20 = _nw_protocol_stack_copy_link_protocol(v3);
    v21 = v20;
    if (v20)
    {
      v22 = _nw_protocol_options_copy_definition(v20);
      v23 = nw_protocol_definition_get_identifier(v22);
      v24 = _nw_protocol_options_get_protocol_handle(v21);
      if (gLogDatapath == 1)
      {
        v35 = v24;
        v36 = __nwlog_obj();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136447234;
          v46 = "nw_parameters_log_protocol_instances";
          v47 = 2048;
          v48 = v40;
          v49 = 2048;
          v50 = v21;
          v51 = 2080;
          v52 = v23;
          v53 = 2048;
          v54 = v35;
          _os_log_impl(&dword_181A37000, v36, OS_LOG_TYPE_DEBUG, "%{public}s Parameters %p, link, options %p (%s), protocol handle %p", buf, 0x34u);
        }
      }
    }

    goto LABEL_15;
  }

  v25 = __nwlog_obj();
  *buf = 136446210;
  v46 = "nw_parameters_log_protocol_instances";
  v26 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v43 = 0;
  if (__nwlog_fault(v26, &type, &v43))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v27 = __nwlog_obj();
      v28 = type;
      if (os_log_type_enabled(v27, type))
      {
        *buf = 136446210;
        v46 = "nw_parameters_log_protocol_instances";
        v29 = "%{public}s called with null stack";
LABEL_41:
        _os_log_impl(&dword_181A37000, v27, v28, v29, buf, 0xCu);
      }
    }

    else
    {
      if (v43 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v27 = __nwlog_obj();
        v28 = type;
        v38 = os_log_type_enabled(v27, type);
        if (backtrace_string)
        {
          if (v38)
          {
            *buf = 136446466;
            v46 = "nw_parameters_log_protocol_instances";
            v47 = 2082;
            v48 = backtrace_string;
            _os_log_impl(&dword_181A37000, v27, v28, "%{public}s called with null stack, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_43;
        }

        if (!v38)
        {
          goto LABEL_42;
        }

        *buf = 136446210;
        v46 = "nw_parameters_log_protocol_instances";
        v29 = "%{public}s called with null stack, no backtrace";
        goto LABEL_41;
      }

      v27 = __nwlog_obj();
      v28 = type;
      if (os_log_type_enabled(v27, type))
      {
        *buf = 136446210;
        v46 = "nw_parameters_log_protocol_instances";
        v29 = "%{public}s called with null stack, backtrace limit exceeded";
        goto LABEL_41;
      }
    }

LABEL_42:
  }

LABEL_43:
  if (v26)
  {
    free(v26);
  }

LABEL_15:
}

uint64_t __nw_parameters_log_protocol_instances_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = nw_protocol_options_copy_definition(v5);
  identifier = nw_protocol_definition_get_identifier(v6);
  protocol_handle = nw_protocol_options_get_protocol_handle(v5);
  if (gLogDatapath == 1)
  {
    v10 = protocol_handle;
    v11 = __nwlog_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = *(a1 + 32);
      v13 = 136447490;
      v14 = "nw_parameters_log_protocol_instances_block_invoke";
      v15 = 2048;
      v16 = v12;
      v17 = 2048;
      v18 = a2;
      v19 = 2048;
      v20 = v5;
      v21 = 2080;
      v22 = identifier;
      v23 = 2048;
      v24 = v10;
      _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_DEBUG, "%{public}s Parameters %p, index %zu, options %p (%s), protocol handle %p", &v13, 0x3Eu);
    }
  }

  return 1;
}

uint64_t nw_protocol_parameters_iterate_stack(void *a1, int a2, uint64_t a3, void *a4)
{
  v51 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      v10 = _nw_parameters_copy_default_protocol_stack(v7);
      v11 = v10;
      if (v10)
      {
        if (a2 > 3)
        {
          if (a2 == 4)
          {
            v39[0] = MEMORY[0x1E69E9820];
            v39[1] = 3221225472;
            v39[2] = __nw_protocol_parameters_iterate_stack_block_invoke_2;
            v39[3] = &unk_1E6A2E3E0;
            v41 = a3;
            v40 = v9;
            v19 = v11;
            v20 = v39;
            _nw_protocol_stack_iterate_application_protocols_with_index(v19, 0, 1, v20);

            v15 = v40;
          }

          else
          {
            if (a2 != 5)
            {
              goto LABEL_12;
            }

            v42[0] = MEMORY[0x1E69E9820];
            v42[1] = 3221225472;
            v42[2] = __nw_protocol_parameters_iterate_stack_block_invoke;
            v42[3] = &unk_1E6A2E3E0;
            v44 = a3;
            v43 = v9;
            v13 = v11;
            v14 = v42;
            _nw_protocol_stack_iterate_application_protocols_with_index(v13, 1, 0, v14);

            v15 = v43;
          }
        }

        else
        {
          if (a2 != 2)
          {
            if (a2 == 3)
            {
              v12 = _nw_protocol_stack_copy_transport_protocol(v10);
              if (!v12)
              {
                goto LABEL_21;
              }

LABEL_16:
              v17 = v12;
              if (nw_protocol_options_matches_identifier(v12, a3))
              {
                (v9)[2](v9, 0, v17);
              }

              v18 = 1;
              goto LABEL_22;
            }

LABEL_12:
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v16 = gLogObj;
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446466;
              v48 = "nw_protocol_parameters_iterate_stack";
              v49 = 1024;
              LODWORD(v50) = a2;
              _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_ERROR, "%{public}s Unsupported protocol level %u", buf, 0x12u);
            }

            goto LABEL_21;
          }

          v12 = _nw_protocol_stack_copy_internet_protocol();
          if (v12)
          {
            goto LABEL_16;
          }
        }

LABEL_21:
        v18 = 0;
LABEL_22:

        goto LABEL_23;
      }

      v28 = __nwlog_obj();
      *buf = 136446210;
      v48 = "nw_protocol_parameters_iterate_stack";
      v29 = _os_log_send_and_compose_impl();

      v46 = OS_LOG_TYPE_ERROR;
      v45 = 0;
      if (!__nwlog_fault(v29, &v46, &v45))
      {
LABEL_70:
        if (v29)
        {
          free(v29);
        }

        goto LABEL_21;
      }

      if (v46 == OS_LOG_TYPE_FAULT)
      {
        v30 = __nwlog_obj();
        v31 = v46;
        if (os_log_type_enabled(v30, v46))
        {
          *buf = 136446210;
          v48 = "nw_protocol_parameters_iterate_stack";
          v32 = "%{public}s called with null stack";
LABEL_68:
          _os_log_impl(&dword_181A37000, v30, v31, v32, buf, 0xCu);
        }
      }

      else
      {
        if (v45 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v30 = __nwlog_obj();
          v31 = v46;
          v38 = os_log_type_enabled(v30, v46);
          if (backtrace_string)
          {
            if (v38)
            {
              *buf = 136446466;
              v48 = "nw_protocol_parameters_iterate_stack";
              v49 = 2082;
              v50 = backtrace_string;
              _os_log_impl(&dword_181A37000, v30, v31, "%{public}s called with null stack, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(backtrace_string);
            goto LABEL_70;
          }

          if (!v38)
          {
            goto LABEL_69;
          }

          *buf = 136446210;
          v48 = "nw_protocol_parameters_iterate_stack";
          v32 = "%{public}s called with null stack, no backtrace";
          goto LABEL_68;
        }

        v30 = __nwlog_obj();
        v31 = v46;
        if (os_log_type_enabled(v30, v46))
        {
          *buf = 136446210;
          v48 = "nw_protocol_parameters_iterate_stack";
          v32 = "%{public}s called with null stack, backtrace limit exceeded";
          goto LABEL_68;
        }
      }

LABEL_69:

      goto LABEL_70;
    }

    v27 = __nwlog_obj();
    *buf = 136446210;
    v48 = "nw_protocol_parameters_iterate_stack";
    v23 = _os_log_send_and_compose_impl();

    v46 = OS_LOG_TYPE_ERROR;
    v45 = 0;
    if (__nwlog_fault(v23, &v46, &v45))
    {
      if (v46 == OS_LOG_TYPE_FAULT)
      {
        v24 = __nwlog_obj();
        v25 = v46;
        if (os_log_type_enabled(v24, v46))
        {
          *buf = 136446210;
          v48 = "nw_protocol_parameters_iterate_stack";
          v26 = "%{public}s called with null iterator";
          goto LABEL_61;
        }

        goto LABEL_62;
      }

      if (v45 != 1)
      {
        v24 = __nwlog_obj();
        v25 = v46;
        if (os_log_type_enabled(v24, v46))
        {
          *buf = 136446210;
          v48 = "nw_protocol_parameters_iterate_stack";
          v26 = "%{public}s called with null iterator, backtrace limit exceeded";
          goto LABEL_61;
        }

        goto LABEL_62;
      }

      v33 = __nw_create_backtrace_string();
      v24 = __nwlog_obj();
      v25 = v46;
      v36 = os_log_type_enabled(v24, v46);
      if (!v33)
      {
        if (v36)
        {
          *buf = 136446210;
          v48 = "nw_protocol_parameters_iterate_stack";
          v26 = "%{public}s called with null iterator, no backtrace";
          goto LABEL_61;
        }

        goto LABEL_62;
      }

      if (!v36)
      {
        goto LABEL_45;
      }

      *buf = 136446466;
      v48 = "nw_protocol_parameters_iterate_stack";
      v49 = 2082;
      v50 = v33;
      v35 = "%{public}s called with null iterator, dumping backtrace:%{public}s";
LABEL_44:
      _os_log_impl(&dword_181A37000, v24, v25, v35, buf, 0x16u);
LABEL_45:

      free(v33);
    }
  }

  else
  {
    v22 = __nwlog_obj();
    *buf = 136446210;
    v48 = "nw_protocol_parameters_iterate_stack";
    v23 = _os_log_send_and_compose_impl();

    v46 = OS_LOG_TYPE_ERROR;
    v45 = 0;
    if (__nwlog_fault(v23, &v46, &v45))
    {
      if (v46 == OS_LOG_TYPE_FAULT)
      {
        v24 = __nwlog_obj();
        v25 = v46;
        if (os_log_type_enabled(v24, v46))
        {
          *buf = 136446210;
          v48 = "nw_protocol_parameters_iterate_stack";
          v26 = "%{public}s called with null parameters";
LABEL_61:
          _os_log_impl(&dword_181A37000, v24, v25, v26, buf, 0xCu);
        }

LABEL_62:

        goto LABEL_63;
      }

      if (v45 != 1)
      {
        v24 = __nwlog_obj();
        v25 = v46;
        if (os_log_type_enabled(v24, v46))
        {
          *buf = 136446210;
          v48 = "nw_protocol_parameters_iterate_stack";
          v26 = "%{public}s called with null parameters, backtrace limit exceeded";
          goto LABEL_61;
        }

        goto LABEL_62;
      }

      v33 = __nw_create_backtrace_string();
      v24 = __nwlog_obj();
      v25 = v46;
      v34 = os_log_type_enabled(v24, v46);
      if (!v33)
      {
        if (v34)
        {
          *buf = 136446210;
          v48 = "nw_protocol_parameters_iterate_stack";
          v26 = "%{public}s called with null parameters, no backtrace";
          goto LABEL_61;
        }

        goto LABEL_62;
      }

      if (!v34)
      {
        goto LABEL_45;
      }

      *buf = 136446466;
      v48 = "nw_protocol_parameters_iterate_stack";
      v49 = 2082;
      v50 = v33;
      v35 = "%{public}s called with null parameters, dumping backtrace:%{public}s";
      goto LABEL_44;
    }
  }

LABEL_63:
  if (v23)
  {
    free(v23);
  }

  v18 = 0;
LABEL_23:

  return v18;
}

uint64_t __nw_protocol_parameters_iterate_stack_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (nw_protocol_options_matches_identifier(v4, *(a1 + 40)))
  {
    v5 = (*(*(a1 + 32) + 16))();
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

uint64_t __nw_protocol_parameters_iterate_stack_block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (nw_protocol_options_matches_identifier(v4, *(a1 + 40)))
  {
    v5 = (*(*(a1 + 32) + 16))();
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

char *nw_protocol_parameters_get_identifier(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = _nw_protocol_options_copy_definition(a1);
    identifier = nw_protocol_definition_get_identifier(v1);

    return identifier;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_protocol_parameters_get_identifier";
  v5 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v5, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_protocol_parameters_get_identifier";
        v8 = "%{public}s called with null protocol_parameters";
LABEL_17:
        _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
      }
    }

    else
    {
      if (v11 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v6 = __nwlog_obj();
        v7 = type;
        v10 = os_log_type_enabled(v6, type);
        if (backtrace_string)
        {
          if (v10)
          {
            *buf = 136446466;
            v14 = "nw_protocol_parameters_get_identifier";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null protocol_parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_protocol_parameters_get_identifier";
        v8 = "%{public}s called with null protocol_parameters, no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_protocol_parameters_get_identifier";
        v8 = "%{public}s called with null protocol_parameters, backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v5)
  {
    free(v5);
  }

  return 0;
}

uint64_t nw_protocol_parameters_copy_value(void *a1, const char *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return nw_parameters_copy_protocol_value_from_parameters(a1, a2);
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  v13 = "nw_protocol_parameters_copy_value";
  v4 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v10 = 0;
  if (__nwlog_fault(v4, &type, &v10))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v13 = "nw_protocol_parameters_copy_value";
        v7 = "%{public}s called with null protocol_parameters";
LABEL_18:
        _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
      }
    }

    else
    {
      if (v10 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v5 = __nwlog_obj();
        v6 = type;
        v9 = os_log_type_enabled(v5, type);
        if (backtrace_string)
        {
          if (v9)
          {
            *buf = 136446466;
            v13 = "nw_protocol_parameters_copy_value";
            v14 = 2082;
            v15 = backtrace_string;
            _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null protocol_parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v9)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v13 = "nw_protocol_parameters_copy_value";
        v7 = "%{public}s called with null protocol_parameters, no backtrace";
        goto LABEL_18;
      }

      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v13 = "nw_protocol_parameters_copy_value";
        v7 = "%{public}s called with null protocol_parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v4)
  {
    free(v4);
  }

  return 0;
}

BOOL nw_parameters_remove_from_protocol_stack(void *a1, uint64_t a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    if (a2)
    {
      v5 = _nw_parameters_copy_default_protocol_stack(v3);
      v6 = v5;
      v7 = v5 != 0;
      if (v5)
      {
        v8 = v5;
        _nw_protocol_stack_remove_protocol_identifier(v8, a2);

LABEL_5:
        goto LABEL_6;
      }

      v16 = __nwlog_obj();
      *buf = 136446210;
      v30 = "nw_parameters_remove_from_protocol_stack";
      v17 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v27 = 0;
      if (!__nwlog_fault(v17, &type, &v27))
      {
LABEL_53:
        if (v17)
        {
          free(v17);
        }

        goto LABEL_5;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v18 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v18, type))
        {
          *buf = 136446210;
          v30 = "nw_parameters_remove_from_protocol_stack";
          v20 = "%{public}s called with null stack";
LABEL_51:
          _os_log_impl(&dword_181A37000, v18, v19, v20, buf, 0xCu);
        }
      }

      else
      {
        if (v27 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v18 = __nwlog_obj();
          v19 = type;
          v26 = os_log_type_enabled(v18, type);
          if (backtrace_string)
          {
            if (v26)
            {
              *buf = 136446466;
              v30 = "nw_parameters_remove_from_protocol_stack";
              v31 = 2082;
              v32 = backtrace_string;
              _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null stack, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(backtrace_string);
            goto LABEL_53;
          }

          if (!v26)
          {
            goto LABEL_52;
          }

          *buf = 136446210;
          v30 = "nw_parameters_remove_from_protocol_stack";
          v20 = "%{public}s called with null stack, no backtrace";
          goto LABEL_51;
        }

        v18 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v18, type))
        {
          *buf = 136446210;
          v30 = "nw_parameters_remove_from_protocol_stack";
          v20 = "%{public}s called with null stack, backtrace limit exceeded";
          goto LABEL_51;
        }
      }

LABEL_52:

      goto LABEL_53;
    }

    v15 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_parameters_remove_from_protocol_stack";
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
          v30 = "nw_parameters_remove_from_protocol_stack";
          v14 = "%{public}s called with null protocol_identifier";
          goto LABEL_44;
        }

        goto LABEL_45;
      }

      if (v27 != 1)
      {
        v12 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v30 = "nw_parameters_remove_from_protocol_stack";
          v14 = "%{public}s called with null protocol_identifier, backtrace limit exceeded";
          goto LABEL_44;
        }

        goto LABEL_45;
      }

      v21 = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v13 = type;
      v24 = os_log_type_enabled(v12, type);
      if (!v21)
      {
        if (v24)
        {
          *buf = 136446210;
          v30 = "nw_parameters_remove_from_protocol_stack";
          v14 = "%{public}s called with null protocol_identifier, no backtrace";
          goto LABEL_44;
        }

        goto LABEL_45;
      }

      if (!v24)
      {
        goto LABEL_28;
      }

      *buf = 136446466;
      v30 = "nw_parameters_remove_from_protocol_stack";
      v31 = 2082;
      v32 = v21;
      v23 = "%{public}s called with null protocol_identifier, dumping backtrace:%{public}s";
LABEL_27:
      _os_log_impl(&dword_181A37000, v12, v13, v23, buf, 0x16u);
LABEL_28:

      free(v21);
    }
  }

  else
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_parameters_remove_from_protocol_stack";
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
          v30 = "nw_parameters_remove_from_protocol_stack";
          v14 = "%{public}s called with null parameters";
LABEL_44:
          _os_log_impl(&dword_181A37000, v12, v13, v14, buf, 0xCu);
        }

LABEL_45:

        goto LABEL_46;
      }

      if (v27 != 1)
      {
        v12 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v30 = "nw_parameters_remove_from_protocol_stack";
          v14 = "%{public}s called with null parameters, backtrace limit exceeded";
          goto LABEL_44;
        }

        goto LABEL_45;
      }

      v21 = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v13 = type;
      v22 = os_log_type_enabled(v12, type);
      if (!v21)
      {
        if (v22)
        {
          *buf = 136446210;
          v30 = "nw_parameters_remove_from_protocol_stack";
          v14 = "%{public}s called with null parameters, no backtrace";
          goto LABEL_44;
        }

        goto LABEL_45;
      }

      if (!v22)
      {
        goto LABEL_28;
      }

      *buf = 136446466;
      v30 = "nw_parameters_remove_from_protocol_stack";
      v31 = 2082;
      v32 = v21;
      v23 = "%{public}s called with null parameters, dumping backtrace:%{public}s";
      goto LABEL_27;
    }
  }

LABEL_46:
  if (v11)
  {
    free(v11);
  }

  v7 = 0;
LABEL_6:

  return v7;
}

void nw_parameters_remove_definition_from_protocol_stack(void *a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_parameters_remove_definition_from_protocol_stack";
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (!__nwlog_fault(v8, &type, &v17))
    {
      goto LABEL_34;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v20 = "nw_parameters_remove_definition_from_protocol_stack";
        v11 = "%{public}s called with null parameters";
LABEL_32:
        _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0xCu);
      }
    }

    else if (v17 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v10 = type;
      v14 = os_log_type_enabled(v9, type);
      if (backtrace_string)
      {
        if (v14)
        {
          *buf = 136446466;
          v20 = "nw_parameters_remove_definition_from_protocol_stack";
          v21 = 2082;
          v22 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_34:
        if (!v8)
        {
          goto LABEL_4;
        }

LABEL_35:
        free(v8);
        goto LABEL_4;
      }

      if (v14)
      {
        *buf = 136446210;
        v20 = "nw_parameters_remove_definition_from_protocol_stack";
        v11 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_32;
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v20 = "nw_parameters_remove_definition_from_protocol_stack";
        v11 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_32;
      }
    }

LABEL_33:

    goto LABEL_34;
  }

  if (v4)
  {
    v6 = _nw_parameters_copy_default_protocol_stack(v3);
    nw_protocol_stack_remove_protocol(v6, v5);

    goto LABEL_4;
  }

  v12 = __nwlog_obj();
  *buf = 136446210;
  v20 = "nw_parameters_remove_definition_from_protocol_stack";
  v8 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v17 = 0;
  if (!__nwlog_fault(v8, &type, &v17))
  {
    goto LABEL_34;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v9 = __nwlog_obj();
    v10 = type;
    if (os_log_type_enabled(v9, type))
    {
      *buf = 136446210;
      v20 = "nw_parameters_remove_definition_from_protocol_stack";
      v11 = "%{public}s called with null definition";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  if (v17 != 1)
  {
    v9 = __nwlog_obj();
    v10 = type;
    if (os_log_type_enabled(v9, type))
    {
      *buf = 136446210;
      v20 = "nw_parameters_remove_definition_from_protocol_stack";
      v11 = "%{public}s called with null definition, backtrace limit exceeded";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  v15 = __nw_create_backtrace_string();
  v9 = __nwlog_obj();
  v10 = type;
  v16 = os_log_type_enabled(v9, type);
  if (!v15)
  {
    if (v16)
    {
      *buf = 136446210;
      v20 = "nw_parameters_remove_definition_from_protocol_stack";
      v11 = "%{public}s called with null definition, no backtrace";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  if (v16)
  {
    *buf = 136446466;
    v20 = "nw_parameters_remove_definition_from_protocol_stack";
    v21 = 2082;
    v22 = v15;
    _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v15);
  if (v8)
  {
    goto LABEL_35;
  }

LABEL_4:
}

void nw_parameters_set_custom_options(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    nw_parameters_set_metadata(v3, a2);
    _nw_parameters_set_encode_custom_options(v4, 1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_parameters_set_custom_options";
  v6 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v12 = 0;
  if (__nwlog_fault(v6, &type, &v12))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v15 = "nw_parameters_set_custom_options";
        v9 = "%{public}s called with null parameters";
LABEL_17:
        _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
      }
    }

    else
    {
      if (v12 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v7 = __nwlog_obj();
        v8 = type;
        v11 = os_log_type_enabled(v7, type);
        if (backtrace_string)
        {
          if (v11)
          {
            *buf = 136446466;
            v15 = "nw_parameters_set_custom_options";
            v16 = 2082;
            v17 = backtrace_string;
            _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v11)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v15 = "nw_parameters_set_custom_options";
        v9 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_17;
      }

      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v15 = "nw_parameters_set_custom_options";
        v9 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v6)
  {
    free(v6);
  }

LABEL_3:
}

uint64_t nw_parameters_copy_custom_options(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_copy_metadata();
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_copy_custom_options";
  v3 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_copy_custom_options";
        v6 = "%{public}s called with null parameters";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else
    {
      if (v9 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v4 = __nwlog_obj();
        v5 = type;
        v8 = os_log_type_enabled(v4, type);
        if (backtrace_string)
        {
          if (v8)
          {
            *buf = 136446466;
            v12 = "nw_parameters_copy_custom_options";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_parameters_copy_custom_options";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_copy_custom_options";
        v6 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v3)
  {
    free(v3);
  }

  return 0;
}

BOOL nw_parameters_has_transforms(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_has_transforms(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_has_transforms";
  v3 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_has_transforms";
        v6 = "%{public}s called with null parameters";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else
    {
      if (v9 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v4 = __nwlog_obj();
        v5 = type;
        v8 = os_log_type_enabled(v4, type);
        if (backtrace_string)
        {
          if (v8)
          {
            *buf = 136446466;
            v12 = "nw_parameters_has_transforms";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_parameters_has_transforms";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_has_transforms";
        v6 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v3)
  {
    free(v3);
  }

  return 0;
}

void nw_parameters_set_companion_preference(char *a1, int a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    _nw_parameters_set_companion_preference(a1, a2);
    return;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_set_companion_preference";
  v3 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_set_companion_preference";
        v6 = "%{public}s called with null parameters";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else
    {
      if (v9 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v4 = __nwlog_obj();
        v5 = type;
        v8 = os_log_type_enabled(v4, type);
        if (backtrace_string)
        {
          if (v8)
          {
            *buf = 136446466;
            v12 = "nw_parameters_set_companion_preference";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_parameters_set_companion_preference";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_set_companion_preference";
        v6 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v3)
  {
    free(v3);
  }
}

void nw_parameters_allow_sharing_port_with_listener_for_connection(void *a1, void *a2, void *a3)
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v37 = a3;
  if (!v5)
  {
    v21 = __nwlog_obj();
    *aBlock = 136446210;
    *&aBlock[4] = "nw_parameters_allow_sharing_port_with_listener_for_connection";
    v22 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v38 = 0;
    if (!__nwlog_fault(v22, type, &v38))
    {
      goto LABEL_53;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v23 = __nwlog_obj();
      v24 = type[0];
      if (os_log_type_enabled(v23, type[0]))
      {
        *aBlock = 136446210;
        *&aBlock[4] = "nw_parameters_allow_sharing_port_with_listener_for_connection";
        _os_log_impl(&dword_181A37000, v23, v24, "%{public}s called with null parameters", aBlock, 0xCu);
      }

      goto LABEL_46;
    }

    if (v38 != 1)
    {
      v23 = __nwlog_obj();
      v34 = type[0];
      if (os_log_type_enabled(v23, type[0]))
      {
        *aBlock = 136446210;
        *&aBlock[4] = "nw_parameters_allow_sharing_port_with_listener_for_connection";
        _os_log_impl(&dword_181A37000, v23, v34, "%{public}s called with null parameters, backtrace limit exceeded", aBlock, 0xCu);
      }

      goto LABEL_46;
    }

    backtrace_string = __nw_create_backtrace_string();
    v28 = __nwlog_obj();
    v29 = type[0];
    v30 = os_log_type_enabled(v28, type[0]);
    if (backtrace_string)
    {
      if (v30)
      {
        *aBlock = 136446466;
        *&aBlock[4] = "nw_parameters_allow_sharing_port_with_listener_for_connection";
        *&aBlock[12] = 2082;
        *&aBlock[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v28, v29, "%{public}s called with null parameters, dumping backtrace:%{public}s", aBlock, 0x16u);
      }

      free(backtrace_string);
LABEL_53:
      if (!v22)
      {
        goto LABEL_19;
      }

LABEL_54:
      free(v22);
      goto LABEL_19;
    }

    if (v30)
    {
      *aBlock = 136446210;
      *&aBlock[4] = "nw_parameters_allow_sharing_port_with_listener_for_connection";
      _os_log_impl(&dword_181A37000, v28, v29, "%{public}s called with null parameters, no backtrace", aBlock, 0xCu);
    }

LABEL_52:

    goto LABEL_53;
  }

  if (v6)
  {
    *type = 0;
    v40 = 0;
    v7 = v6;
    *aBlock = MEMORY[0x1E69E9820];
    *&aBlock[8] = 3221225472;
    *&aBlock[16] = __nw_listener_get_path_uuid_block_invoke;
    v42 = &unk_1E6A3AC58;
    v8 = v7;
    v43 = v8;
    v44 = type;
    v9 = _Block_copy(aBlock);
    os_unfair_lock_lock(v7 + 2);
    v9[2](v9);
    os_unfair_lock_unlock(v7 + 2);

    _nw_parameters_set_listener_uuid(v5, type);
    v10 = v5;
    v11 = v8;
    v12 = v37;
    if (v12)
    {
      v13 = _nw_parameters_copy_channel_demux_options(v10);
      if (v13)
      {
        v14 = v12;
        v15 = v14[2].isa;

        if (nw_parameters_get_server_mode(v15))
        {
          _nw_parameters_set_server_mode(v10, 1);
          nw_listener_register_client_demux_options_if_needed(v11, v13, v14);
        }

        else
        {
          if (nw_protocol_masque_get_definition(void)::onceToken[0] != -1)
          {
            dispatch_once(nw_protocol_masque_get_definition(void)::onceToken, &__block_literal_global_27637);
          }

          if (nw_protocol_masque_get_definition(void)::definition && (v16 = os_retain(nw_protocol_masque_get_definition(void)::definition)) != 0)
          {
            v17 = os_retain(v16);
          }

          else
          {
            v17 = 0;
          }

          v18 = nw_connection_copy_protocol_metadata(v14, v17);

          if (v18)
          {
            v19 = v14;
            v36 = v14[2].isa;

            v20 = nw_parameters_copy_context(v36);
            *aBlock = MEMORY[0x1E69E9820];
            *&aBlock[8] = 3221225472;
            *&aBlock[16] = __nw_parameters_register_demux_options_if_needed_block_invoke;
            v42 = &unk_1E6A3D760;
            v43 = v18;
            v44 = v13;
            nw_queue_context_async_if_needed(v20, aBlock);
          }
        }
      }
    }

    goto LABEL_19;
  }

  v25 = __nwlog_obj();
  *aBlock = 136446210;
  *&aBlock[4] = "nw_parameters_allow_sharing_port_with_listener_for_connection";
  v22 = _os_log_send_and_compose_impl();

  type[0] = OS_LOG_TYPE_ERROR;
  v38 = 0;
  if (!__nwlog_fault(v22, type, &v38))
  {
    goto LABEL_53;
  }

  if (type[0] == OS_LOG_TYPE_FAULT)
  {
    v23 = __nwlog_obj();
    v26 = type[0];
    if (os_log_type_enabled(v23, type[0]))
    {
      *aBlock = 136446210;
      *&aBlock[4] = "nw_parameters_allow_sharing_port_with_listener_for_connection";
      _os_log_impl(&dword_181A37000, v23, v26, "%{public}s called with null listener", aBlock, 0xCu);
    }

LABEL_46:

    goto LABEL_53;
  }

  if (v38 != 1)
  {
    v23 = __nwlog_obj();
    v35 = type[0];
    if (os_log_type_enabled(v23, type[0]))
    {
      *aBlock = 136446210;
      *&aBlock[4] = "nw_parameters_allow_sharing_port_with_listener_for_connection";
      _os_log_impl(&dword_181A37000, v23, v35, "%{public}s called with null listener, backtrace limit exceeded", aBlock, 0xCu);
    }

    goto LABEL_46;
  }

  v31 = __nw_create_backtrace_string();
  v28 = __nwlog_obj();
  v32 = type[0];
  v33 = os_log_type_enabled(v28, type[0]);
  if (!v31)
  {
    if (v33)
    {
      *aBlock = 136446210;
      *&aBlock[4] = "nw_parameters_allow_sharing_port_with_listener_for_connection";
      _os_log_impl(&dword_181A37000, v28, v32, "%{public}s called with null listener, no backtrace", aBlock, 0xCu);
    }

    goto LABEL_52;
  }

  if (v33)
  {
    *aBlock = 136446466;
    *&aBlock[4] = "nw_parameters_allow_sharing_port_with_listener_for_connection";
    *&aBlock[12] = 2082;
    *&aBlock[14] = v31;
    _os_log_impl(&dword_181A37000, v28, v32, "%{public}s called with null listener, dumping backtrace:%{public}s", aBlock, 0x16u);
  }

  free(v31);
  if (v22)
  {
    goto LABEL_54;
  }

LABEL_19:
}

void nw_parameters_allow_sharing_port_with_listener(void *a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v19 = "nw_parameters_allow_sharing_port_with_listener";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (!__nwlog_fault(v7, &type, &v16))
    {
      goto LABEL_34;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v19 = "nw_parameters_allow_sharing_port_with_listener";
        v10 = "%{public}s called with null parameters";
LABEL_32:
        _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
      }
    }

    else if (v16 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v9 = type;
      v13 = os_log_type_enabled(v8, type);
      if (backtrace_string)
      {
        if (v13)
        {
          *buf = 136446466;
          v19 = "nw_parameters_allow_sharing_port_with_listener";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_34:
        if (!v7)
        {
          goto LABEL_4;
        }

LABEL_35:
        free(v7);
        goto LABEL_4;
      }

      if (v13)
      {
        *buf = 136446210;
        v19 = "nw_parameters_allow_sharing_port_with_listener";
        v10 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_32;
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v19 = "nw_parameters_allow_sharing_port_with_listener";
        v10 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_32;
      }
    }

LABEL_33:

    goto LABEL_34;
  }

  if (v4)
  {
    nw_parameters_allow_sharing_port_with_listener_for_connection(v3, v4, 0);
    goto LABEL_4;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_parameters_allow_sharing_port_with_listener";
  v7 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (!__nwlog_fault(v7, &type, &v16))
  {
    goto LABEL_34;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v8 = __nwlog_obj();
    v9 = type;
    if (os_log_type_enabled(v8, type))
    {
      *buf = 136446210;
      v19 = "nw_parameters_allow_sharing_port_with_listener";
      v10 = "%{public}s called with null listener";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  if (v16 != 1)
  {
    v8 = __nwlog_obj();
    v9 = type;
    if (os_log_type_enabled(v8, type))
    {
      *buf = 136446210;
      v19 = "nw_parameters_allow_sharing_port_with_listener";
      v10 = "%{public}s called with null listener, backtrace limit exceeded";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  v14 = __nw_create_backtrace_string();
  v8 = __nwlog_obj();
  v9 = type;
  v15 = os_log_type_enabled(v8, type);
  if (!v14)
  {
    if (v15)
    {
      *buf = 136446210;
      v19 = "nw_parameters_allow_sharing_port_with_listener";
      v10 = "%{public}s called with null listener, no backtrace";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  if (v15)
  {
    *buf = 136446466;
    v19 = "nw_parameters_allow_sharing_port_with_listener";
    v20 = 2082;
    v21 = v14;
    _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null listener, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v14);
  if (v7)
  {
    goto LABEL_35;
  }

LABEL_4:
}