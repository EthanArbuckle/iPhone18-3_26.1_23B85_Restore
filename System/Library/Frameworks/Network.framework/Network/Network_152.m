void nw_mem_region_stats_dump()
{
  v18 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&nw_mem_region_lock);
  v0 = nw_mem_region_head;
  if (nw_mem_region_head)
  {
    do
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
      {
        v2 = v0[4];
        v3 = v0[5];
        v4 = v0[6];
        v5 = v0[7];
        *buf = 136447490;
        v7 = "nw_mem_region_stats_dump";
        v8 = 2082;
        v9 = v0 + 20;
        v10 = 2048;
        v11 = v2;
        v12 = 2048;
        v13 = v4;
        v14 = 2048;
        v15 = v3;
        v16 = 2048;
        v17 = v5;
        _os_log_impl(&dword_181A37000, v1, OS_LOG_TYPE_INFO, "%{public}s \n\n%{public}s: \n\tNumber of Segments Created %llu\n\tMaximum Segment Used %llu\n\tNumber of Segments Freed %llu\n\tNumber of Segment Alloc Failures %llu", buf, 0x3Eu);
      }

      v0 = v0[18];
    }

    while (v0);
  }

  os_unfair_lock_unlock(&nw_mem_region_lock);
}

id nw_endpoint_create_apple_service(const char *a1, const char *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v21 = __nwlog_obj();
    *buf = 136446210;
    v31 = "nw_endpoint_create_apple_service";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v7, &type, &v28))
    {
      goto LABEL_45;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v22 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_44;
      }

      *buf = 136446210;
      v31 = "nw_endpoint_create_apple_service";
      v10 = "%{public}s called with null apple_id";
      goto LABEL_78;
    }

    if (v28 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v22 = type;
      v24 = os_log_type_enabled(v8, type);
      if (backtrace_string)
      {
        if (v24)
        {
          *buf = 136446466;
          v31 = "nw_endpoint_create_apple_service";
          v32 = 2082;
          v33 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v22, "%{public}s called with null apple_id, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_45;
      }

      if (!v24)
      {
        goto LABEL_44;
      }

      *buf = 136446210;
      v31 = "nw_endpoint_create_apple_service";
      v10 = "%{public}s called with null apple_id, no backtrace";
    }

    else
    {
      v8 = __nwlog_obj();
      v22 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_44;
      }

      *buf = 136446210;
      v31 = "nw_endpoint_create_apple_service";
      v10 = "%{public}s called with null apple_id, backtrace limit exceeded";
    }

LABEL_78:
    v18 = v8;
    v19 = v22;
    v20 = 12;
    goto LABEL_43;
  }

  v4 = strlen(a1);
  if (!v4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    *buf = 136446466;
    v31 = "nw_endpoint_create_apple_service";
    v32 = 2082;
    v33 = "apple_id";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v7, &type, &v28))
    {
      goto LABEL_45;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446466;
        v31 = "nw_endpoint_create_apple_service";
        v32 = 2082;
        v33 = "apple_id";
        v10 = "%{public}s invalid empty string %{public}s";
LABEL_41:
        v18 = v8;
        v19 = v9;
LABEL_42:
        v20 = 22;
LABEL_43:
        _os_log_impl(&dword_181A37000, v18, v19, v10, buf, v20);
      }

LABEL_44:

      goto LABEL_45;
    }

    if (v28 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446466;
        v31 = "nw_endpoint_create_apple_service";
        v32 = 2082;
        v33 = "apple_id";
        v10 = "%{public}s invalid empty string %{public}s, backtrace limit exceeded";
        goto LABEL_41;
      }

      goto LABEL_44;
    }

    v12 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    v13 = type;
    v14 = os_log_type_enabled(v8, type);
    if (v12)
    {
      if (!v14)
      {
        goto LABEL_35;
      }

      *buf = 136446722;
      v31 = "nw_endpoint_create_apple_service";
      v32 = 2082;
      v33 = "apple_id";
      v34 = 2082;
      v35 = v12;
      goto LABEL_34;
    }

    if (!v14)
    {
      goto LABEL_44;
    }

    *buf = 136446466;
    v31 = "nw_endpoint_create_apple_service";
    v32 = 2082;
    v33 = "apple_id";
    v10 = "%{public}s invalid empty string %{public}s, no backtrace";
LABEL_50:
    v18 = v8;
    v19 = v13;
    goto LABEL_42;
  }

  if (v4 >= 0x400)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v31 = "nw_endpoint_create_apple_service";
      v32 = 2082;
      v33 = "apple_id";
      v34 = 1024;
      LODWORD(v35) = 1024;
LABEL_15:
      _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_ERROR, "%{public}s %{public}s is longer than %d", buf, 0x1Cu);
      goto LABEL_16;
    }

    goto LABEL_16;
  }

  if (!a2)
  {
    v25 = __nwlog_obj();
    *buf = 136446210;
    v31 = "nw_endpoint_create_apple_service";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (__nwlog_fault(v7, &type, &v28))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v8 = __nwlog_obj();
        v22 = type;
        if (!os_log_type_enabled(v8, type))
        {
          goto LABEL_44;
        }

        *buf = 136446210;
        v31 = "nw_endpoint_create_apple_service";
        v10 = "%{public}s called with null service";
      }

      else if (v28 == 1)
      {
        v26 = __nw_create_backtrace_string();
        v8 = __nwlog_obj();
        v22 = type;
        v27 = os_log_type_enabled(v8, type);
        if (v26)
        {
          if (v27)
          {
            *buf = 136446466;
            v31 = "nw_endpoint_create_apple_service";
            v32 = 2082;
            v33 = v26;
            _os_log_impl(&dword_181A37000, v8, v22, "%{public}s called with null service, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v26);
          if (!v7)
          {
            return 0;
          }

          goto LABEL_46;
        }

        if (!v27)
        {
          goto LABEL_44;
        }

        *buf = 136446210;
        v31 = "nw_endpoint_create_apple_service";
        v10 = "%{public}s called with null service, no backtrace";
      }

      else
      {
        v8 = __nwlog_obj();
        v22 = type;
        if (!os_log_type_enabled(v8, type))
        {
          goto LABEL_44;
        }

        *buf = 136446210;
        v31 = "nw_endpoint_create_apple_service";
        v10 = "%{public}s called with null service, backtrace limit exceeded";
      }

      goto LABEL_78;
    }

LABEL_45:
    if (!v7)
    {
      return 0;
    }

LABEL_46:
    free(v7);
    return 0;
  }

  v11 = strlen(a2);
  if (!v11)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v15 = gLogObj;
    *buf = 136446466;
    v31 = "nw_endpoint_create_apple_service";
    v32 = 2082;
    v33 = "service";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v7, &type, &v28))
    {
      goto LABEL_45;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446466;
        v31 = "nw_endpoint_create_apple_service";
        v32 = 2082;
        v33 = "service";
        v10 = "%{public}s invalid empty string %{public}s";
        goto LABEL_41;
      }

      goto LABEL_44;
    }

    if (v28 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446466;
        v31 = "nw_endpoint_create_apple_service";
        v32 = 2082;
        v33 = "service";
        v10 = "%{public}s invalid empty string %{public}s, backtrace limit exceeded";
        goto LABEL_41;
      }

      goto LABEL_44;
    }

    v12 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    v13 = type;
    v17 = os_log_type_enabled(v8, type);
    if (v12)
    {
      if (!v17)
      {
        goto LABEL_35;
      }

      *buf = 136446722;
      v31 = "nw_endpoint_create_apple_service";
      v32 = 2082;
      v33 = "service";
      v34 = 2082;
      v35 = v12;
LABEL_34:
      _os_log_impl(&dword_181A37000, v8, v13, "%{public}s invalid empty string %{public}s, dumping backtrace:%{public}s", buf, 0x20u);
LABEL_35:

      free(v12);
      if (!v7)
      {
        return 0;
      }

      goto LABEL_46;
    }

    if (!v17)
    {
      goto LABEL_44;
    }

    *buf = 136446466;
    v31 = "nw_endpoint_create_apple_service";
    v32 = 2082;
    v33 = "service";
    v10 = "%{public}s invalid empty string %{public}s, no backtrace";
    goto LABEL_50;
  }

  if (v11 >= 0x400)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v31 = "nw_endpoint_create_apple_service";
      v32 = 2082;
      v33 = "service";
      v34 = 1024;
      LODWORD(v35) = 1024;
      goto LABEL_15;
    }

LABEL_16:

    return 0;
  }

  return _nw_endpoint_create_apple_service(a1, a2);
}

id nw_endpoint_create_application_service_with_alias(const char *a1, const char *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v21 = __nwlog_obj();
    *buf = 136446210;
    v31 = "nw_endpoint_create_application_service_with_alias";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v7, &type, &v28))
    {
      goto LABEL_45;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v22 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_44;
      }

      *buf = 136446210;
      v31 = "nw_endpoint_create_application_service_with_alias";
      v10 = "%{public}s called with null application_service";
      goto LABEL_78;
    }

    if (v28 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v22 = type;
      v24 = os_log_type_enabled(v8, type);
      if (backtrace_string)
      {
        if (v24)
        {
          *buf = 136446466;
          v31 = "nw_endpoint_create_application_service_with_alias";
          v32 = 2082;
          v33 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v22, "%{public}s called with null application_service, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_45;
      }

      if (!v24)
      {
        goto LABEL_44;
      }

      *buf = 136446210;
      v31 = "nw_endpoint_create_application_service_with_alias";
      v10 = "%{public}s called with null application_service, no backtrace";
    }

    else
    {
      v8 = __nwlog_obj();
      v22 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_44;
      }

      *buf = 136446210;
      v31 = "nw_endpoint_create_application_service_with_alias";
      v10 = "%{public}s called with null application_service, backtrace limit exceeded";
    }

LABEL_78:
    v18 = v8;
    v19 = v22;
    v20 = 12;
    goto LABEL_43;
  }

  v4 = strlen(a1);
  if (!v4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    *buf = 136446466;
    v31 = "nw_endpoint_create_application_service_with_alias";
    v32 = 2082;
    v33 = "application_service";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v7, &type, &v28))
    {
      goto LABEL_45;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446466;
        v31 = "nw_endpoint_create_application_service_with_alias";
        v32 = 2082;
        v33 = "application_service";
        v10 = "%{public}s invalid empty string %{public}s";
LABEL_41:
        v18 = v8;
        v19 = v9;
LABEL_42:
        v20 = 22;
LABEL_43:
        _os_log_impl(&dword_181A37000, v18, v19, v10, buf, v20);
      }

LABEL_44:

      goto LABEL_45;
    }

    if (v28 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446466;
        v31 = "nw_endpoint_create_application_service_with_alias";
        v32 = 2082;
        v33 = "application_service";
        v10 = "%{public}s invalid empty string %{public}s, backtrace limit exceeded";
        goto LABEL_41;
      }

      goto LABEL_44;
    }

    v12 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    v13 = type;
    v14 = os_log_type_enabled(v8, type);
    if (v12)
    {
      if (!v14)
      {
        goto LABEL_35;
      }

      *buf = 136446722;
      v31 = "nw_endpoint_create_application_service_with_alias";
      v32 = 2082;
      v33 = "application_service";
      v34 = 2082;
      v35 = v12;
      goto LABEL_34;
    }

    if (!v14)
    {
      goto LABEL_44;
    }

    *buf = 136446466;
    v31 = "nw_endpoint_create_application_service_with_alias";
    v32 = 2082;
    v33 = "application_service";
    v10 = "%{public}s invalid empty string %{public}s, no backtrace";
LABEL_50:
    v18 = v8;
    v19 = v13;
    goto LABEL_42;
  }

  if (v4 >= 0x400)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v31 = "nw_endpoint_create_application_service_with_alias";
      v32 = 2082;
      v33 = "application_service";
      v34 = 1024;
      LODWORD(v35) = 1024;
LABEL_15:
      _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_ERROR, "%{public}s %{public}s is longer than %d", buf, 0x1Cu);
      goto LABEL_16;
    }

    goto LABEL_16;
  }

  if (!a2)
  {
    v25 = __nwlog_obj();
    *buf = 136446210;
    v31 = "nw_endpoint_create_application_service_with_alias";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (__nwlog_fault(v7, &type, &v28))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v8 = __nwlog_obj();
        v22 = type;
        if (!os_log_type_enabled(v8, type))
        {
          goto LABEL_44;
        }

        *buf = 136446210;
        v31 = "nw_endpoint_create_application_service_with_alias";
        v10 = "%{public}s called with null alias";
      }

      else if (v28 == 1)
      {
        v26 = __nw_create_backtrace_string();
        v8 = __nwlog_obj();
        v22 = type;
        v27 = os_log_type_enabled(v8, type);
        if (v26)
        {
          if (v27)
          {
            *buf = 136446466;
            v31 = "nw_endpoint_create_application_service_with_alias";
            v32 = 2082;
            v33 = v26;
            _os_log_impl(&dword_181A37000, v8, v22, "%{public}s called with null alias, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v26);
          if (!v7)
          {
            return 0;
          }

          goto LABEL_46;
        }

        if (!v27)
        {
          goto LABEL_44;
        }

        *buf = 136446210;
        v31 = "nw_endpoint_create_application_service_with_alias";
        v10 = "%{public}s called with null alias, no backtrace";
      }

      else
      {
        v8 = __nwlog_obj();
        v22 = type;
        if (!os_log_type_enabled(v8, type))
        {
          goto LABEL_44;
        }

        *buf = 136446210;
        v31 = "nw_endpoint_create_application_service_with_alias";
        v10 = "%{public}s called with null alias, backtrace limit exceeded";
      }

      goto LABEL_78;
    }

LABEL_45:
    if (!v7)
    {
      return 0;
    }

LABEL_46:
    free(v7);
    return 0;
  }

  v11 = strlen(a2);
  if (!v11)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v15 = gLogObj;
    *buf = 136446466;
    v31 = "nw_endpoint_create_application_service_with_alias";
    v32 = 2082;
    v33 = "alias";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v7, &type, &v28))
    {
      goto LABEL_45;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446466;
        v31 = "nw_endpoint_create_application_service_with_alias";
        v32 = 2082;
        v33 = "alias";
        v10 = "%{public}s invalid empty string %{public}s";
        goto LABEL_41;
      }

      goto LABEL_44;
    }

    if (v28 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446466;
        v31 = "nw_endpoint_create_application_service_with_alias";
        v32 = 2082;
        v33 = "alias";
        v10 = "%{public}s invalid empty string %{public}s, backtrace limit exceeded";
        goto LABEL_41;
      }

      goto LABEL_44;
    }

    v12 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    v13 = type;
    v17 = os_log_type_enabled(v8, type);
    if (v12)
    {
      if (!v17)
      {
        goto LABEL_35;
      }

      *buf = 136446722;
      v31 = "nw_endpoint_create_application_service_with_alias";
      v32 = 2082;
      v33 = "alias";
      v34 = 2082;
      v35 = v12;
LABEL_34:
      _os_log_impl(&dword_181A37000, v8, v13, "%{public}s invalid empty string %{public}s, dumping backtrace:%{public}s", buf, 0x20u);
LABEL_35:

      free(v12);
      if (!v7)
      {
        return 0;
      }

      goto LABEL_46;
    }

    if (!v17)
    {
      goto LABEL_44;
    }

    *buf = 136446466;
    v31 = "nw_endpoint_create_application_service_with_alias";
    v32 = 2082;
    v33 = "alias";
    v10 = "%{public}s invalid empty string %{public}s, no backtrace";
    goto LABEL_50;
  }

  if (v11 >= 0x400)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v31 = "nw_endpoint_create_application_service_with_alias";
      v32 = 2082;
      v33 = "alias";
      v34 = 1024;
      LODWORD(v35) = 1024;
      goto LABEL_15;
    }

LABEL_16:

    return 0;
  }

  return _nw_endpoint_create_application_service_with_alias(a1, a2);
}

uint64_t nw_endpoint_get_apple_service_apple_id(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    apple_service_apple_id = _nw_endpoint_get_apple_service_apple_id(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_get_apple_service_apple_id";
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
        v16 = "nw_endpoint_get_apple_service_apple_id";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null endpoint", buf, 0xCu);
      }
    }

    else if (v13 == 1)
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
          v16 = "nw_endpoint_get_apple_service_apple_id";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_endpoint_get_apple_service_apple_id";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_endpoint_get_apple_service_apple_id";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  apple_service_apple_id = 0;
LABEL_3:

  return apple_service_apple_id;
}

void nw_endpoint_set_application_service_name(void *a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_endpoint_set_application_service_name";
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v6, &type, &v19))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v22 = "nw_endpoint_set_application_service_name";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null endpoint", buf, 0xCu);
      }
    }

    else if (v19 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v12 = type;
      v13 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v13)
        {
          *buf = 136446466;
          v22 = "nw_endpoint_set_application_service_name";
          v23 = 2082;
          v24 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_38:
        if (!v6)
        {
          goto LABEL_4;
        }

LABEL_39:
        free(v6);
        goto LABEL_4;
      }

      if (v13)
      {
        *buf = 136446210;
        v22 = "nw_endpoint_set_application_service_name";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v22 = "nw_endpoint_set_application_service_name";
        _os_log_impl(&dword_181A37000, v7, v17, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (a2)
  {
    _nw_endpoint_set_application_service_name(v3, a2);
    goto LABEL_4;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v22 = "nw_endpoint_set_application_service_name";
  v6 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (!__nwlog_fault(v6, &type, &v19))
  {
    goto LABEL_38;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v7 = __nwlog_obj();
    v10 = type;
    if (os_log_type_enabled(v7, type))
    {
      *buf = 136446210;
      v22 = "nw_endpoint_set_application_service_name";
      _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null application_service", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v19 != 1)
  {
    v7 = __nwlog_obj();
    v18 = type;
    if (os_log_type_enabled(v7, type))
    {
      *buf = 136446210;
      v22 = "nw_endpoint_set_application_service_name";
      _os_log_impl(&dword_181A37000, v7, v18, "%{public}s called with null application_service, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_37;
  }

  v14 = __nw_create_backtrace_string();
  v7 = __nwlog_obj();
  v15 = type;
  v16 = os_log_type_enabled(v7, type);
  if (!v14)
  {
    if (v16)
    {
      *buf = 136446210;
      v22 = "nw_endpoint_set_application_service_name";
      _os_log_impl(&dword_181A37000, v7, v15, "%{public}s called with null application_service, no backtrace", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v16)
  {
    *buf = 136446466;
    v22 = "nw_endpoint_set_application_service_name";
    v23 = 2082;
    v24 = v14;
    _os_log_impl(&dword_181A37000, v7, v15, "%{public}s called with null application_service, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v14);
  if (v6)
  {
    goto LABEL_39;
  }

LABEL_4:
}

void nw_endpoint_set_service_identifier(void *a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_endpoint_set_service_identifier";
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v6, &type, &v19))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v22 = "nw_endpoint_set_service_identifier";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null endpoint", buf, 0xCu);
      }
    }

    else if (v19 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v12 = type;
      v13 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v13)
        {
          *buf = 136446466;
          v22 = "nw_endpoint_set_service_identifier";
          v23 = 2082;
          v24 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_38:
        if (!v6)
        {
          goto LABEL_4;
        }

LABEL_39:
        free(v6);
        goto LABEL_4;
      }

      if (v13)
      {
        *buf = 136446210;
        v22 = "nw_endpoint_set_service_identifier";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v22 = "nw_endpoint_set_service_identifier";
        _os_log_impl(&dword_181A37000, v7, v17, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (a2)
  {
    _nw_endpoint_set_service_identifier(v3, a2);
    goto LABEL_4;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v22 = "nw_endpoint_set_service_identifier";
  v6 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (!__nwlog_fault(v6, &type, &v19))
  {
    goto LABEL_38;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v7 = __nwlog_obj();
    v10 = type;
    if (os_log_type_enabled(v7, type))
    {
      *buf = 136446210;
      v22 = "nw_endpoint_set_service_identifier";
      _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null service_uuid", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v19 != 1)
  {
    v7 = __nwlog_obj();
    v18 = type;
    if (os_log_type_enabled(v7, type))
    {
      *buf = 136446210;
      v22 = "nw_endpoint_set_service_identifier";
      _os_log_impl(&dword_181A37000, v7, v18, "%{public}s called with null service_uuid, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_37;
  }

  v14 = __nw_create_backtrace_string();
  v7 = __nwlog_obj();
  v15 = type;
  v16 = os_log_type_enabled(v7, type);
  if (!v14)
  {
    if (v16)
    {
      *buf = 136446210;
      v22 = "nw_endpoint_set_service_identifier";
      _os_log_impl(&dword_181A37000, v7, v15, "%{public}s called with null service_uuid, no backtrace", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v16)
  {
    *buf = 136446466;
    v22 = "nw_endpoint_set_service_identifier";
    v23 = 2082;
    v24 = v14;
    _os_log_impl(&dword_181A37000, v7, v15, "%{public}s called with null service_uuid, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v14);
  if (v6)
  {
    goto LABEL_39;
  }

LABEL_4:
}

void nw_endpoint_set_contact_id(void *a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    _nw_endpoint_set_contact_id(v3, a2);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_set_contact_id";
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
        v16 = "nw_endpoint_set_contact_id";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null endpoint", buf, 0xCu);
      }
    }

    else if (v13 == 1)
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
          v16 = "nw_endpoint_set_contact_id";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_endpoint_set_contact_id";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_endpoint_set_contact_id";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

LABEL_3:
}

void nw_endpoint_set_device_color(void *a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    _nw_endpoint_set_device_color(v3, a2);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_set_device_color";
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
        v16 = "nw_endpoint_set_device_color";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null endpoint", buf, 0xCu);
      }
    }

    else if (v13 == 1)
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
          v16 = "nw_endpoint_set_device_color";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_endpoint_set_device_color";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_endpoint_set_device_color";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

LABEL_3:
}

void nw_endpoint_set_advertised_route(void *a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    _nw_endpoint_set_advertised_route(v3, a2);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_set_advertised_route";
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
        v16 = "nw_endpoint_set_advertised_route";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null endpoint", buf, 0xCu);
      }
    }

    else if (v13 == 1)
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
          v16 = "nw_endpoint_set_advertised_route";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_endpoint_set_advertised_route";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_endpoint_set_advertised_route";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

LABEL_3:
}

void saveAndPostNetworkdSettings(void *a1, void *a2, uint64_t a3)
{
  v134 = *MEMORY[0x1E69E9840];
  v4 = a1;
  v5 = a2;
  v88 = v5;
  if (v4 == v5 || !v4 || !v5)
  {
    if (v4 == v5)
    {
      goto LABEL_22;
    }

LABEL_7:
    v6 = v4;
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_file_path_settings];
    v8 = v7;
    if (v4)
    {
      v9 = [v6 description];
      v10 = [v9 stringByReplacingOccurrencesOfString:@"\n" withString:&stru_1EEFDE910];

      v11 = [v6 writeToFile:v8 atomically:1];
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v12 = gLogObj;
      v13 = v12;
      if (v11)
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          *&buf[4] = "saveNetworkdSettings";
          *&buf[12] = 2114;
          *&buf[14] = v10;
          v14 = "%{public}s Successfully wrote updated networkd settings %{public}@";
          v15 = v13;
          v16 = OS_LOG_TYPE_DEFAULT;
LABEL_18:
          _os_log_impl(&dword_181A37000, v15, v16, v14, buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        *&buf[4] = "saveNetworkdSettings";
        *&buf[12] = 2114;
        *&buf[14] = v10;
        v14 = "%{public}s failed to save networkd settings %{public}@ to file";
        v15 = v13;
        v16 = OS_LOG_TYPE_ERROR;
        goto LABEL_18;
      }

LABEL_20:
LABEL_21:

      goto LABEL_22;
    }

    if (!unlink([v7 UTF8String]))
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        *&buf[4] = "saveNetworkdSettings";
        _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_DEFAULT, "%{public}s Successfully unlinked networkd settings", buf, 0xCu);
      }

      goto LABEL_20;
    }

    v17 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v18 = gLogObj;
    *buf = 136446722;
    *&buf[4] = "saveNetworkdSettings";
    *&buf[12] = 2114;
    *&buf[14] = v8;
    *&buf[22] = 1024;
    LODWORD(v100) = v17;
    LODWORD(v84) = 28;
    v83 = buf;
    v19 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v93 = 0;
    if (!__nwlog_fault(v19, type, &v93))
    {
LABEL_93:
      if (v19)
      {
        free(v19);
      }

      goto LABEL_21;
    }

    v20 = v17;
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v21 = gLogObj;
      v22 = type[0];
      if (os_log_type_enabled(v21, type[0]))
      {
        *buf = 136446722;
        *&buf[4] = "saveNetworkdSettings";
        *&buf[12] = 2114;
        *&buf[14] = v8;
        *&buf[22] = 1024;
        LODWORD(v100) = v20;
        v23 = "%{public}s unlink(%{public}@) failed %{darwin.errno}d";
LABEL_90:
        v81 = v21;
        v82 = v22;
LABEL_91:
        _os_log_impl(&dword_181A37000, v81, v82, v23, buf, 0x1Cu);
      }
    }

    else
    {
      if (v93 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v21 = gLogObj;
        v79 = type[0];
        v80 = os_log_type_enabled(v21, type[0]);
        if (backtrace_string)
        {
          if (v80)
          {
            *buf = 136446978;
            *&buf[4] = "saveNetworkdSettings";
            *&buf[12] = 2114;
            *&buf[14] = v8;
            *&buf[22] = 1024;
            LODWORD(v100) = v20;
            WORD2(v100) = 2082;
            *(&v100 + 6) = backtrace_string;
            _os_log_impl(&dword_181A37000, v21, v79, "%{public}s unlink(%{public}@) failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x26u);
          }

          free(backtrace_string);
          goto LABEL_93;
        }

        if (!v80)
        {
          goto LABEL_92;
        }

        *buf = 136446722;
        *&buf[4] = "saveNetworkdSettings";
        *&buf[12] = 2114;
        *&buf[14] = v8;
        *&buf[22] = 1024;
        LODWORD(v100) = v20;
        v23 = "%{public}s unlink(%{public}@) failed %{darwin.errno}d, no backtrace";
        v81 = v21;
        v82 = v79;
        goto LABEL_91;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v21 = gLogObj;
      v22 = type[0];
      if (os_log_type_enabled(v21, type[0]))
      {
        *buf = 136446722;
        *&buf[4] = "saveNetworkdSettings";
        *&buf[12] = 2114;
        *&buf[14] = v8;
        *&buf[22] = 1024;
        LODWORD(v100) = v20;
        v23 = "%{public}s unlink(%{public}@) failed %{darwin.errno}d, backtrace limit exceeded";
        goto LABEL_90;
      }
    }

LABEL_92:

    goto LABEL_93;
  }

  if (([v4 isEqualToDictionary:v5] & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_22:
  v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{nw_file_path_settings, v83, v84}];
  fixFilePermissions(v24);

  v25 = [v4 mutableCopy];
  v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_settings_managed_settings];
  v27 = [v25 objectForKeyedSubscript:v26];
  [v25 removeObjectForKey:v26];
  v96 = 0u;
  v97 = 0u;
  *type = 0u;
  v95 = 0u;
  v28 = v27;
  v29 = [v28 countByEnumeratingWithState:type objects:buf count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v95;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v95 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*&type[8] + 8 * i);
        if (([v33 isEqualToString:v26] & 1) == 0)
        {
          v34 = [v28 objectForKeyedSubscript:v33];
          [v25 setObject:v34 forKeyedSubscript:v33];
        }
      }

      v30 = [v28 countByEnumeratingWithState:type objects:buf count:16];
    }

    while (v30);
  }

  v35 = [v25 description];
  v36 = [v35 stringByReplacingOccurrencesOfString:@"\n" withString:&stru_1EEFDE910];

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v37 = gLogObj;
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446466;
    *&buf[4] = "saveAndPostNetworkdSettings";
    *&buf[12] = 2112;
    *&buf[14] = v36;
    _os_log_impl(&dword_181A37000, v37, OS_LOG_TYPE_DEBUG, "%{public}s Created compoundSettings: %@", buf, 0x16u);
  }

  v38 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_libnetcore_debug];
  v39 = [v25 objectForKeyedSubscript:v38];
  v40 = [v39 longLongValue];

  if (v40 == a3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v42 = gLogObj;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      *&buf[4] = "saveAndPostNetworkdSettings";
      _os_log_impl(&dword_181A37000, v42, OS_LOG_TYPE_DEFAULT, "%{public}s skipping OSLog settings update due to no logging changes", buf, 0xCu);
    }
  }

  else
  {
    updateOSLogPlistFromLevel(v40, 0, v41);
  }

  v87 = v36;
  v85 = v4;
  v43 = v25;
  *buf = 8;
  *&buf[8] = nw_setting_libnetcore_datapath_debug;
  *&buf[16] = 16;
  *&v100 = nw_setting_tcpconn_disable_simulate_crash;
  *(&v100 + 1) = 32;
  v101 = nw_setting_boringssl_log_debug;
  v102 = 64;
  v103 = nw_setting_tcp_enable_auto_tfo[0];
  v104 = 128;
  v105 = nw_setting_disable_dns_xpc;
  v106 = 256;
  v107 = nw_setting_tcpconn_enable_tls_tickets;
  v108 = 512;
  v109 = nw_setting_channel_enable_qos_override;
  v110 = 1024;
  v111 = nw_setting_disable_ddr;
  v112 = 2048;
  v113 = nw_setting_tcpconn_enable_tls_esni;
  v114 = 4096;
  v115 = nw_setting_context_timer_disable_qos_override;
  v116 = 0x2000;
  v117 = nw_setting_tcpconn_enable_tls_experiments;
  v118 = 0x4000;
  v119 = nw_setting_tcpconn_enable_tls_keylog;
  v120 = 0x8000;
  v121 = nw_setting_disable_swift_tls_privacy_proxy;
  v122 = 0x10000;
  v123 = nw_setting_disable_l4s_aqm;
  v124 = 0x20000;
  v125 = nw_setting_disable_pqtls;
  v126 = 0x40000;
  v127 = nw_setting_ultra_constrained_default_allow[0];
  v128 = 0x80000;
  v129 = nw_setting_channel_force_copy_frame;
  v130 = 0x100000;
  v131 = nw_setting_swift_tls_log_debug;
  v133 = 0;
  v132 = 0;
  v44 = 0;
  if (nw_setting_libnetcore_datapath_debug)
  {
    v45 = 1;
    v46 = buf;
    do
    {
      v47 = *v46;
      v48 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
      v49 = [v43 objectForKeyedSubscript:v48];
      v50 = [v49 BOOLValue];

      if (v50)
      {
        v51 = v47;
      }

      else
      {
        v51 = 0;
      }

      v44 |= v51;
      [v43 removeObjectForKey:v48];

      v46 = &buf[16 * v45++];
    }

    while (*(v46 + 1));
  }

  v52 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_libnetcore_debug];
  v53 = [v43 objectForKeyedSubscript:v52];
  v54 = [v53 longLongValue];

  v55 = 7;
  if (v54 < 7)
  {
    v55 = v54;
  }

  v56 = v55 & ~(v55 >> 63) | v44;
  [v43 removeObjectForKey:v52];
  [v43 removeObjectForKey:@"networkd_log_level"];

  if ([v43 count])
  {
    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    v57 = [v43 allKeys];
    v58 = [v57 countByEnumeratingWithState:&v89 objects:v98 count:16];
    v59 = v85;
    if (v58)
    {
      v60 = v58;
      v61 = 0;
      v62 = *v90;
      do
      {
        for (j = 0; j != v60; ++j)
        {
          if (*v90 != v62)
          {
            objc_enumerationMutation(v57);
          }

          v64 = *(*(&v89 + 1) + 8 * j);
          v65 = [v43 objectForKeyedSubscript:v64];
          v66 = [v64 hash];
          v61 ^= v66 ^ [v65 hash];
        }

        v60 = [v57 countByEnumeratingWithState:&v89 objects:v98 count:16];
      }

      while (v60);
      v67 = v61 << 20;
    }

    else
    {
      v67 = 0;
    }

    v56 |= v67;
  }

  else
  {
    v59 = v85;
  }

  if (postSettingsBitmask_sPostedSettingsBitmask != v56)
  {
    v68 = postSettingsBitmask_token;
    if (postSettingsBitmask_token == -1)
    {
      v72 = notify_register_check(nw_notification_name_settings, &postSettingsBitmask_token);
      if (v72)
      {
        v73 = v72;
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v74 = gLogObj;
        if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          *&buf[4] = "postSettingsBitmask";
          *&buf[12] = 2082;
          *&buf[14] = nw_notification_name_settings;
          *&buf[22] = 1024;
          LODWORD(v100) = v73;
          _os_log_impl(&dword_181A37000, v74, OS_LOG_TYPE_ERROR, "%{public}s notify_register_check(%{public}s) failed: %u", buf, 0x1Cu);
        }

LABEL_73:
        v56 = 0;
        postSettingsBitmask_token = -1;
LABEL_74:
        postSettingsBitmask_sPostedSettingsBitmask = v56;
        goto LABEL_75;
      }

      v68 = postSettingsBitmask_token;
      if (postSettingsBitmask_token == -1)
      {
        v56 = 0;
        goto LABEL_74;
      }
    }

    v69 = notify_set_state(v68, v56);
    if (v69)
    {
      v70 = v69;
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v71 = gLogObj;
      if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        *&buf[4] = "postSettingsBitmask";
        *&buf[12] = 2082;
        *&buf[14] = nw_notification_name_settings;
        *&buf[22] = 2048;
        *&v100 = v56;
        WORD4(v100) = 1024;
        *(&v100 + 10) = v70;
        _os_log_impl(&dword_181A37000, v71, OS_LOG_TYPE_ERROR, "%{public}s notify_set_state for %{public}s %#llx failed: %u", buf, 0x26u);
      }
    }

    else
    {
      v75 = notify_post(nw_notification_name_settings);
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v76 = gLogObj;
      v77 = v76;
      if (!v75)
      {
        if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446722;
          *&buf[4] = "postSettingsBitmask";
          *&buf[12] = 2048;
          *&buf[14] = postSettingsBitmask_sPostedSettingsBitmask;
          *&buf[22] = 2048;
          *&v100 = v56;
          _os_log_impl(&dword_181A37000, v77, OS_LOG_TYPE_DEFAULT, "%{public}s successfully changed networkd settings state from %#llx to %#llx", buf, 0x20u);
        }

        goto LABEL_74;
      }

      if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        *&buf[4] = "postSettingsBitmask";
        *&buf[12] = 2082;
        *&buf[14] = nw_notification_name_settings;
        *&buf[22] = 1024;
        LODWORD(v100) = v75;
        _os_log_impl(&dword_181A37000, v77, OS_LOG_TYPE_ERROR, "%{public}s notify_post for %{public}s failed: %u", buf, 0x1Cu);
      }
    }

    notify_cancel(postSettingsBitmask_token);
    goto LABEL_73;
  }

LABEL_75:
}

void fixFilePermissions(void *a1)
{
  v44 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = open([v1 UTF8String], 2);
  if ((v2 & 0x80000000) == 0)
  {
    v3 = v2;
    memset(&v43, 0, sizeof(v43));
    if (fstat(v2, &v43))
    {
      v4 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      *v37 = 136446978;
      v38 = "fixFilePermissions";
      v39 = 1024;
      *v40 = v3;
      *&v40[4] = 2114;
      *&v40[6] = v1;
      *&v40[14] = 1024;
      *&v40[16] = v4;
      v6 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v35 = 0;
      if (__nwlog_fault(v6, &type, &v35))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v7 = gLogObj;
          v8 = type;
          if (!os_log_type_enabled(v7, type))
          {
            goto LABEL_29;
          }

          *v37 = 136446978;
          v38 = "fixFilePermissions";
          v39 = 1024;
          *v40 = v3;
          *&v40[4] = 2114;
          *&v40[6] = v1;
          *&v40[14] = 1024;
          *&v40[16] = v4;
          v9 = "%{public}s fstat(%d) on %{public}@ failed %{darwin.errno}d";
LABEL_27:
          v25 = v7;
          v26 = v8;
          goto LABEL_28;
        }

        if (v35 != 1)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v7 = gLogObj;
          v8 = type;
          if (!os_log_type_enabled(v7, type))
          {
            goto LABEL_29;
          }

          *v37 = 136446978;
          v38 = "fixFilePermissions";
          v39 = 1024;
          *v40 = v3;
          *&v40[4] = 2114;
          *&v40[6] = v1;
          *&v40[14] = 1024;
          *&v40[16] = v4;
          v9 = "%{public}s fstat(%d) on %{public}@ failed %{darwin.errno}d, backtrace limit exceeded";
          goto LABEL_27;
        }

        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        v23 = type;
        v24 = os_log_type_enabled(v7, type);
        if (!backtrace_string)
        {
          if (!v24)
          {
LABEL_29:

            if (v6)
            {
LABEL_30:
              free(v6);
            }

LABEL_31:
            close(v3);
            goto LABEL_32;
          }

          *v37 = 136446978;
          v38 = "fixFilePermissions";
          v39 = 1024;
          *v40 = v3;
          *&v40[4] = 2114;
          *&v40[6] = v1;
          *&v40[14] = 1024;
          *&v40[16] = v4;
          v9 = "%{public}s fstat(%d) on %{public}@ failed %{darwin.errno}d, no backtrace";
          v25 = v7;
          v26 = v23;
LABEL_28:
          _os_log_impl(&dword_181A37000, v25, v26, v9, v37, 0x22u);
          goto LABEL_29;
        }

        if (v24)
        {
          *v37 = 136447234;
          v38 = "fixFilePermissions";
          v39 = 1024;
          *v40 = v3;
          *&v40[4] = 2114;
          *&v40[6] = v1;
          *&v40[14] = 1024;
          *&v40[16] = v4;
          v41 = 2082;
          v42[0] = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v23, "%{public}s fstat(%d) on %{public}@ failed %{darwin.errno}d, dumping backtrace:%{public}s", v37, 0x2Cu);
        }

        free(backtrace_string);
      }

LABEL_23:
      if (!v6)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }

    v16 = v43.st_mode & 0x1FF;
    if (v16 == 420)
    {
      goto LABEL_31;
    }

    if (!fchmod(v3, 0x1A4u))
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v32 = gLogObj;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *v37 = 136447234;
        v38 = "fixFilePermissions";
        v39 = 2114;
        *v40 = v1;
        *&v40[8] = 1024;
        *&v40[10] = v3;
        *&v40[14] = 1024;
        *&v40[16] = v16;
        v41 = 1024;
        LODWORD(v42[0]) = 420;
        _os_log_impl(&dword_181A37000, v32, OS_LOG_TYPE_DEFAULT, "%{public}s Successfully changed %{public}@ (fd %d) permissions from %o to %o", v37, 0x28u);
      }

      goto LABEL_31;
    }

    v17 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v18 = gLogObj;
    *v37 = 136447234;
    v38 = "fixFilePermissions";
    v39 = 1024;
    *v40 = v3;
    *&v40[4] = 1024;
    *&v40[6] = 420;
    *&v40[10] = 2114;
    *&v40[12] = v1;
    v41 = 1024;
    LODWORD(v42[0]) = v17;
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v35 = 0;
    if (!__nwlog_fault(v6, &type, &v35))
    {
      goto LABEL_23;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v19 = gLogObj;
      v20 = type;
      if (!os_log_type_enabled(v19, type))
      {
        goto LABEL_63;
      }

      *v37 = 136447234;
      v38 = "fixFilePermissions";
      v39 = 1024;
      *v40 = v3;
      *&v40[4] = 1024;
      *&v40[6] = 420;
      *&v40[10] = 2114;
      *&v40[12] = v1;
      v41 = 1024;
      LODWORD(v42[0]) = v17;
      v21 = "%{public}s fchmod(%d, 0x%x) on %{public}@ failed %{darwin.errno}d";
    }

    else if (v35 == 1)
    {
      v33 = __nw_create_backtrace_string();
      v19 = __nwlog_obj();
      v20 = type;
      v34 = os_log_type_enabled(v19, type);
      if (v33)
      {
        if (v34)
        {
          *v37 = 136447490;
          v38 = "fixFilePermissions";
          v39 = 1024;
          *v40 = v3;
          *&v40[4] = 1024;
          *&v40[6] = 420;
          *&v40[10] = 2114;
          *&v40[12] = v1;
          v41 = 1024;
          LODWORD(v42[0]) = v17;
          WORD2(v42[0]) = 2082;
          *(v42 + 6) = v33;
          _os_log_impl(&dword_181A37000, v19, v20, "%{public}s fchmod(%d, 0x%x) on %{public}@ failed %{darwin.errno}d, dumping backtrace:%{public}s", v37, 0x32u);
        }

        free(v33);
        if (!v6)
        {
          goto LABEL_31;
        }

        goto LABEL_30;
      }

      if (!v34)
      {
LABEL_63:

        if (!v6)
        {
          goto LABEL_31;
        }

        goto LABEL_30;
      }

      *v37 = 136447234;
      v38 = "fixFilePermissions";
      v39 = 1024;
      *v40 = v3;
      *&v40[4] = 1024;
      *&v40[6] = 420;
      *&v40[10] = 2114;
      *&v40[12] = v1;
      v41 = 1024;
      LODWORD(v42[0]) = v17;
      v21 = "%{public}s fchmod(%d, 0x%x) on %{public}@ failed %{darwin.errno}d, no backtrace";
    }

    else
    {
      v19 = __nwlog_obj();
      v20 = type;
      if (!os_log_type_enabled(v19, type))
      {
        goto LABEL_63;
      }

      *v37 = 136447234;
      v38 = "fixFilePermissions";
      v39 = 1024;
      *v40 = v3;
      *&v40[4] = 1024;
      *&v40[6] = 420;
      *&v40[10] = 2114;
      *&v40[12] = v1;
      v41 = 1024;
      LODWORD(v42[0]) = v17;
      v21 = "%{public}s fchmod(%d, 0x%x) on %{public}@ failed %{darwin.errno}d, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v19, v20, v21, v37, 0x28u);
    goto LABEL_63;
  }

  v10 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  if (v10 != 2)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    v43.st_dev = 136446722;
    *&v43.st_mode = "fixFilePermissions";
    WORD2(v43.st_ino) = 2114;
    *(&v43.st_ino + 6) = v1;
    HIWORD(v43.st_gid) = 1024;
    v43.st_rdev = v10;
    v12 = _os_log_send_and_compose_impl();

    v37[0] = OS_LOG_TYPE_ERROR;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v12, v37, &type))
    {
      goto LABEL_43;
    }

    if (v37[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v14 = v37[0];
      if (os_log_type_enabled(v13, v37[0]))
      {
        v43.st_dev = 136446722;
        *&v43.st_mode = "fixFilePermissions";
        WORD2(v43.st_ino) = 2114;
        *(&v43.st_ino + 6) = v1;
        HIWORD(v43.st_gid) = 1024;
        v43.st_rdev = v10;
        v15 = "%{public}s open(%{public}@, O_RDWR) failed %{darwin.errno}d";
LABEL_40:
        v30 = v13;
        v31 = v14;
LABEL_41:
        _os_log_impl(&dword_181A37000, v30, v31, v15, &v43, 0x1Cu);
      }
    }

    else
    {
      if (type == OS_LOG_TYPE_INFO)
      {
        v27 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v13 = gLogObj;
        v28 = v37[0];
        v29 = os_log_type_enabled(v13, v37[0]);
        if (v27)
        {
          if (v29)
          {
            v43.st_dev = 136446978;
            *&v43.st_mode = "fixFilePermissions";
            WORD2(v43.st_ino) = 2114;
            *(&v43.st_ino + 6) = v1;
            HIWORD(v43.st_gid) = 1024;
            v43.st_rdev = v10;
            *(&v43.st_rdev + 2) = 2082;
            *(&v43.st_rdev + 6) = v27;
            _os_log_impl(&dword_181A37000, v13, v28, "%{public}s open(%{public}@, O_RDWR) failed %{darwin.errno}d, dumping backtrace:%{public}s", &v43, 0x26u);
          }

          free(v27);
          goto LABEL_43;
        }

        if (!v29)
        {
          goto LABEL_42;
        }

        v43.st_dev = 136446722;
        *&v43.st_mode = "fixFilePermissions";
        WORD2(v43.st_ino) = 2114;
        *(&v43.st_ino + 6) = v1;
        HIWORD(v43.st_gid) = 1024;
        v43.st_rdev = v10;
        v15 = "%{public}s open(%{public}@, O_RDWR) failed %{darwin.errno}d, no backtrace";
        v30 = v13;
        v31 = v28;
        goto LABEL_41;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v14 = v37[0];
      if (os_log_type_enabled(v13, v37[0]))
      {
        v43.st_dev = 136446722;
        *&v43.st_mode = "fixFilePermissions";
        WORD2(v43.st_ino) = 2114;
        *(&v43.st_ino + 6) = v1;
        HIWORD(v43.st_gid) = 1024;
        v43.st_rdev = v10;
        v15 = "%{public}s open(%{public}@, O_RDWR) failed %{darwin.errno}d, backtrace limit exceeded";
        goto LABEL_40;
      }
    }

LABEL_42:

LABEL_43:
    if (v12)
    {
      free(v12);
    }
  }

LABEL_32:
}

void updateOSLogPlistFromLevel(uint64_t a1, char a2, double a3)
{
  v37 = *MEMORY[0x1E69E9840];
  if ((a2 & 1) == 0)
  {
    v26 = 0uLL;
    getLastUpdateModTimeFromPath(nw_file_path_settings, &v26 + 1, &v26);
    v25 = 0uLL;
    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    v6 = [v5 initWithFormat:@"/Library/Preferences/Logging/Subsystems/%s.plist", nw_oslog_subsystem];
    getLastUpdateModTimeFromPath([v6 UTF8String], &v25 + 1, &v25);

    v7 = v26;
    if (v26 != 0)
    {
      v8 = v25;
      if (v25 != 0 && (*(&v26 + 1) < *(&v25 + 1) || *(&v26 + 1) == *(&v25 + 1) && v26 < v25))
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136447234;
          v28 = "updateOSLogPlistFromLevel";
          v29 = 2048;
          v30 = *(&v7 + 1);
          v31 = 2048;
          v32 = v7;
          v33 = 2048;
          v34 = *(&v8 + 1);
          v35 = 2048;
          v36 = v8;
          v10 = "%{public}s skipping OSLog settings update %ld.%09ld < %ld.%09ld";
          v11 = v9;
          v12 = OS_LOG_TYPE_DEFAULT;
          v13 = 52;
LABEL_26:
          _os_log_impl(&dword_181A37000, v11, v12, v10, buf, v13);
          goto LABEL_31;
        }

        goto LABEL_31;
      }
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136447234;
      v28 = "updateOSLogPlistFromLevel";
      v29 = 2048;
      v30 = *(&v7 + 1);
      v31 = 2048;
      v32 = v7;
      v33 = 2048;
      v34 = *(&v25 + 1);
      v35 = 2048;
      v36 = v25;
      _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_DEFAULT, "%{public}s performing OSLog settings update %ld.%09ld, %ld.%09ld", buf, 0x34u);
    }
  }

  gotLoadHelper_x19__OBJC_CLASS___OSLogPreferencesSubsystem(a3);
  if (objc_opt_class())
  {
    v14 = objc_alloc(v3[126].isa);
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_oslog_subsystem];
    v9 = [v14 initWithName:v15];

    if (v9)
    {
      if (a1 <= 6)
      {
        v16 = "Inherit";
      }

      else
      {
        v16 = "Debug";
      }

      if (a1 <= 6)
      {
        v17 = 1;
      }

      else
      {
        v17 = 4;
      }

      [v9 setEnabledLevel:v17];
      [v9 setPersistedLevel:v17];
      if ([v9 enabledLevel]== v17 && [v9 persistedLevel]== v17)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v28 = "updateOSLogPlistFromLevel";
          v29 = 2082;
          v30 = v16;
          v19 = "%{public}s successfully set new logging level to %{public}s";
          v20 = v18;
          v21 = OS_LOG_TYPE_DEFAULT;
          v22 = 22;
LABEL_29:
          _os_log_impl(&dword_181A37000, v20, v21, v19, buf, v22);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v23 = [v9 enabledLevel];
          v24 = [v9 persistedLevel];
          *buf = 136446978;
          v28 = "updateOSLogPlistFromLevel";
          v29 = 2082;
          v30 = v16;
          v31 = 2048;
          v32 = v23;
          v33 = 2048;
          v34 = v24;
          v19 = "%{public}s failed to set new logging level to %{public}s (%ld,%ld)";
          v20 = v18;
          v21 = OS_LOG_TYPE_ERROR;
          v22 = 42;
          goto LABEL_29;
        }
      }

      goto LABEL_31;
    }
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v9 = gLogObj;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446210;
    v28 = "updateOSLogPlistFromLevel";
    v10 = "%{public}s failed to allocate an OSLogPreferencesSubsystem";
    v11 = v9;
    v12 = OS_LOG_TYPE_ERROR;
    v13 = 12;
    goto LABEL_26;
  }

LABEL_31:
}

void getLastUpdateModTimeFromPath(const char *a1, __darwin_time_t *a2, uint64_t *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  memset(&v20, 0, sizeof(v20));
  if (!stat(a1, &v20))
  {
    tv_nsec = v20.st_mtimespec.tv_nsec;
    *a2 = v20.st_mtimespec.tv_sec;
    *a3 = tv_nsec;
    return;
  }

  v6 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  if (v6 != 2)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    buf = 136446722;
    v22 = "getLastUpdateModTimeFromPath";
    v23 = 2082;
    v24 = a1;
    v25 = 1024;
    v26 = v6;
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (!__nwlog_fault(v8, &type, &v18))
    {
      goto LABEL_18;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        buf = 136446722;
        v22 = "getLastUpdateModTimeFromPath";
        v23 = 2082;
        v24 = a1;
        v25 = 1024;
        v26 = v6;
        v11 = "%{public}s stat(%{public}s) failed %{darwin.errno}d";
LABEL_15:
        v16 = v9;
        v17 = v10;
LABEL_16:
        _os_log_impl(&dword_181A37000, v16, v17, v11, &buf, 0x1Cu);
      }
    }

    else
    {
      if (v18 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v14 = type;
        v15 = os_log_type_enabled(v9, type);
        if (backtrace_string)
        {
          if (v15)
          {
            buf = 136446978;
            v22 = "getLastUpdateModTimeFromPath";
            v23 = 2082;
            v24 = a1;
            v25 = 1024;
            v26 = v6;
            v27 = 2082;
            v28 = backtrace_string;
            _os_log_impl(&dword_181A37000, v9, v14, "%{public}s stat(%{public}s) failed %{darwin.errno}d, dumping backtrace:%{public}s", &buf, 0x26u);
          }

          free(backtrace_string);
          goto LABEL_18;
        }

        if (!v15)
        {
          goto LABEL_17;
        }

        buf = 136446722;
        v22 = "getLastUpdateModTimeFromPath";
        v23 = 2082;
        v24 = a1;
        v25 = 1024;
        v26 = v6;
        v11 = "%{public}s stat(%{public}s) failed %{darwin.errno}d, no backtrace";
        v16 = v9;
        v17 = v14;
        goto LABEL_16;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        buf = 136446722;
        v22 = "getLastUpdateModTimeFromPath";
        v23 = 2082;
        v24 = a1;
        v25 = 1024;
        v26 = v6;
        v11 = "%{public}s stat(%{public}s) failed %{darwin.errno}d, backtrace limit exceeded";
        goto LABEL_15;
      }
    }

LABEL_17:

LABEL_18:
    if (v8)
    {
      free(v8);
    }
  }
}

void __handleEventForManagedNetworkSettings_block_invoke(uint64_t a1)
{
  v2 = +[ManagedNetworkSettings sharedMNS];
  [v2 handleEvent:*(a1 + 32)];
}

uint64_t nwphShouldRunCheck(void *a1, void *a2, void *a3, int a4, double a5, double a6)
{
  v67 = *MEMORY[0x1E69E9840];
  v11 = a1;
  v12 = a2;
  v13 = a3;
  if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([v11 timeIntervalSinceDate:v12], v14 < a5))
  {
    v40 = v14;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v41 = gLogObj;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      v58 = "nwphShouldRunCheck";
      v59 = 2080;
      v42 = "settings";
      *buf = 136447234;
      if (a4)
      {
        v42 = "asset";
      }

      v60 = v42;
      v61 = 2114;
      v62 = v12;
      v63 = 2048;
      v64 = *&v40;
      v65 = 2048;
      v66 = a5;
      v43 = "%{public}s last %s attempt was at %{public}@ (%f < %f), skipping";
      goto LABEL_37;
    }
  }

  else
  {
    if (!v13 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ([v11 timeIntervalSinceDate:v13], v15 >= a6))
    {
      v16 = v12;
      v17 = v13;
      v18 = xpc_dictionary_create(0, 0, 0);
      if (v18)
      {
        v52 = v13;
        v53 = v11;
        v19 = objc_alloc_init(MEMORY[0x1E695DF00]);
        [v19 timeIntervalSince1970];
        v21 = v20;
        v22 = v20 % 86400;
        xpc_dictionary_set_int64(v18, "time_of_day", v22);
        [v16 timeIntervalSince1970];
        v23 = a4;
        if (v24 <= 0.0)
        {
          v26 = -1;
        }

        else
        {
          [v16 timeIntervalSince1970];
          v26 = v21 - v25;
        }

        v32 = v16;
        xpc_dictionary_set_int64(v18, "seconds_since_last_attempt", v26);
        [v17 timeIntervalSince1970];
        v34 = v17;
        if (v33 <= 0.0)
        {
          *&v36 = NAN;
        }

        else
        {
          [v17 timeIntervalSince1970];
          v36 = v21 - v35;
        }

        xpc_dictionary_set_int64(v18, "seconds_since_last_success", v36);
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v37 = gLogObj;
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          v38 = "settings configuration";
          *buf = 136447234;
          v58 = "nwphReportCheck";
          v59 = 2080;
          if (v23)
          {
            v38 = "asset check";
          }

          v60 = v38;
          v61 = 2048;
          v62 = v22;
          v63 = 2048;
          v64 = v26;
          v65 = 2048;
          v66 = *&v36;
          _os_log_impl(&dword_181A37000, v37, OS_LOG_TYPE_DEBUG, "%{public}s %s event: (time_of_day: %lld, seconds_since_last_attempt: %lld, seconds_since_last_success: %lld)", buf, 0x34u);
        }

        analytics_send_event_delayInitStub(v39);
        v11 = v53;
        v13 = v52;
        goto LABEL_46;
      }

      v54 = v17;
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v27 = gLogObj;
      *buf = 136446210;
      v58 = "nwphReportCheck";
      v28 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v55 = 0;
      if (!__nwlog_fault(v28, &type, &v55))
      {
LABEL_43:
        v32 = v16;
        if (!v28)
        {
LABEL_45:
          v34 = v54;
LABEL_46:

          v50 = 1;
          v41 = v32;
          goto LABEL_47;
        }

LABEL_44:
        free(v28);
        goto LABEL_45;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v29 = gLogObj;
        v30 = type;
        if (!os_log_type_enabled(v29, type))
        {
LABEL_42:

          goto LABEL_43;
        }

        *buf = 136446210;
        v58 = "nwphReportCheck";
        v31 = "%{public}s xpc_dictionary_create failed";
      }

      else
      {
        if (v55 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v45 = gLogObj;
          v46 = type;
          v47 = os_log_type_enabled(v45, type);
          if (backtrace_string)
          {
            if (v47)
            {
              *buf = 136446466;
              v58 = "nwphReportCheck";
              v59 = 2082;
              v60 = backtrace_string;
              _os_log_impl(&dword_181A37000, v45, v46, "%{public}s xpc_dictionary_create failed, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(backtrace_string);
            v32 = v16;
            if (!v28)
            {
              goto LABEL_45;
            }
          }

          else
          {
            if (v47)
            {
              *buf = 136446210;
              v58 = "nwphReportCheck";
              _os_log_impl(&dword_181A37000, v45, v46, "%{public}s xpc_dictionary_create failed, no backtrace", buf, 0xCu);
            }

            v32 = v16;
            if (!v28)
            {
              goto LABEL_45;
            }
          }

          goto LABEL_44;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v29 = gLogObj;
        v30 = type;
        if (!os_log_type_enabled(v29, type))
        {
          goto LABEL_42;
        }

        *buf = 136446210;
        v58 = "nwphReportCheck";
        v31 = "%{public}s xpc_dictionary_create failed, backtrace limit exceeded";
      }

      _os_log_impl(&dword_181A37000, v29, v30, v31, buf, 0xCu);
      goto LABEL_42;
    }

    v48 = v15;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v41 = gLogObj;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      v58 = "nwphShouldRunCheck";
      v59 = 2080;
      v49 = "settings";
      *buf = 136447234;
      if (a4)
      {
        v49 = "asset";
      }

      v60 = v49;
      v61 = 2114;
      v62 = v13;
      v63 = 2048;
      v64 = *&v48;
      v65 = 2048;
      v66 = a6;
      v43 = "%{public}s last %s success was at %{public}@ (%f < %f), skipping";
LABEL_37:
      _os_log_impl(&dword_181A37000, v41, OS_LOG_TYPE_DEBUG, v43, buf, 0x34u);
    }
  }

  v50 = 0;
LABEL_47:

  return v50;
}

void __nwphCheckMobileAsset_block_invoke(uint64_t a1, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a2 < 0x24 && ((0x800003FFFuLL >> a2) & 1) != 0)
  {
    v4 = off_1E6A2E828[a2];
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid[%lld]", a2];
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v5 = gLogObj;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v15 = "nwphCheckMobileAsset_block_invoke";
    v16 = 2114;
    v17 = v4;
    _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s Got the download catalog reply %{public}@", buf, 0x16u);
  }

  if (!a2)
  {
    gotLoadHelper_x8__OBJC_CLASS___MAAssetQuery(v6);
    v8 = [objc_alloc(*(v7 + 2288)) initWithType:@"com.apple.MobileAsset.network.networknomicon"];
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v15 = "nwphCheckMobileAsset_block_invoke";
      _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s querying mobile asset metadata", buf, 0xCu);
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __nwphCheckMobileAsset_block_invoke_378;
    v11[3] = &unk_1E6A33C48;
    v12 = v8;
    v13 = *(a1 + 32);
    v10 = v8;
    [v10 queryMetaData:v11];
  }
}

void __nwphConfigureRemoteSettings_block_invoke()
{
  v170 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695DF90] dictionaryWithContentsOfFile:@"/Library/Preferences/com.apple.networkd.networknomicon.plist"];
  if (!v0)
  {
    v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v1 = MEMORY[0x1E695DF00];
  v157 = v0;
  v2 = [v1 date];
  v3 = [v157 objectForKeyedSubscript:@"kNWSettingsKeyLastRun"];
  v4 = [v157 objectForKeyedSubscript:@"kNWSettingsKeyFrequencySeconds"];

  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [v4 longLongValue];
    v6 = 86400.0;
    if (v5 - 3600 < 0x277EF1)
    {
      v6 = v5;
    }
  }

  else
  {
    v6 = 86400.0;
  }

  v7 = nwphShouldRunCheck(v2, 0, v3, 0, 0.0, v6);

  if (v7)
  {
    v8 = [MEMORY[0x1E695DF00] date];
    [v157 setObject:v8 forKeyedSubscript:@"kNWSettingsKeyLastRun"];

    if ([v157 writeToFile:@"/Library/Preferences/com.apple.networkd.networknomicon.plist" atomically:1])
    {
      goto LABEL_32;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    *buf = 136446722;
    v164 = "nwphConfigureRemoteSettings_block_invoke";
    v165 = 2114;
    *v166 = v157;
    *&v166[8] = 2114;
    v167 = @"/Library/Preferences/com.apple.networkd.networknomicon.plist";
    LODWORD(v149) = 32;
    v148 = buf;
    v10 = _os_log_send_and_compose_impl();

    v162 = OS_LOG_TYPE_ERROR;
    v161 = 0;
    if (__nwlog_fault(v10, &v162, &v161))
    {
      if (v162 == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        v12 = v162;
        if (os_log_type_enabled(v11, v162))
        {
          *buf = 136446722;
          v164 = "nwphConfigureRemoteSettings_block_invoke";
          v165 = 2114;
          *v166 = v157;
          *&v166[8] = 2114;
          v167 = @"/Library/Preferences/com.apple.networkd.networknomicon.plist";
          _os_log_impl(&dword_181A37000, v11, v12, "%{public}s Failed to save networknomicon settings run %{public}@ to %{public}@", buf, 0x20u);
        }
      }

      else if (v161 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        v15 = v162;
        v16 = os_log_type_enabled(v11, v162);
        if (backtrace_string)
        {
          if (v16)
          {
            *buf = 136446978;
            v164 = "nwphConfigureRemoteSettings_block_invoke";
            v165 = 2114;
            *v166 = v157;
            *&v166[8] = 2114;
            v167 = @"/Library/Preferences/com.apple.networkd.networknomicon.plist";
            v168 = 2082;
            v169 = backtrace_string;
            _os_log_impl(&dword_181A37000, v11, v15, "%{public}s Failed to save networknomicon settings run %{public}@ to %{public}@, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(backtrace_string);
          if (!v10)
          {
LABEL_32:
            v18 = nw_setting_libnetcore_debug;
            networkd_settings_init();
            if (sCachedSettings)
            {
              pthread_mutex_lock(&sSettingsMutex);
              if (sCachedSettings)
              {
                int64 = xpc_dictionary_get_int64(sCachedSettings, v18);
              }

              else
              {
                int64 = 0;
              }

              pthread_mutex_unlock(&sSettingsMutex);
            }

            else
            {
              int64 = 0;
            }

            v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{nw_file_path_settings, v148, v149}];
            v13 = [MEMORY[0x1E695DF90] dictionaryWithContentsOfFile:v19];
            if (!v13)
            {
              v13 = [MEMORY[0x1E695DF90] dictionary];
            }

            v152 = [v13 copy];
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v20 = gLogObj;
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              v21 = networkd_settings_get_BOOL(nw_setting_enable_quic);
              *buf = 136446466;
              v164 = "nwphConfigureRemoteSettings_block_invoke";
              v165 = 1024;
              *v166 = v21;
              _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_DEBUG, "%{public}s QUIC was set to: %u", buf, 0x12u);
            }

            int64_with_default = networkd_settings_get_int64_with_default(nw_setting_enable_quic_numerator, 100);
            v23 = networkd_settings_get_int64_with_default(nw_setting_enable_quic_denominator, 100);
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v24 = gLogObj;
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446722;
              v164 = "nwphConfigureRemoteSettings_block_invoke";
              v165 = 1024;
              *v166 = int64_with_default;
              *&v166[4] = 1024;
              *&v166[6] = v23;
              _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_DEBUG, "%{public}s enable_quic sampled at: %u / %u", buf, 0x18u);
            }

            v25 = arc4random_uniform(v23);
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v26 = gLogObj;
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446466;
              v164 = "nwphConfigureRemoteSettings_block_invoke";
              v165 = 1024;
              *v166 = v25 < int64_with_default;
              _os_log_impl(&dword_181A37000, v26, OS_LOG_TYPE_DEBUG, "%{public}s enabling QUIC: %u", buf, 0x12u);
            }

            v156 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:v25 < int64_with_default];
            if (v156)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_quic];
                [v13 setObject:v156 forKeyedSubscript:v27];
              }
            }

            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v28 = gLogObj;
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
            {
              v29 = networkd_settings_get_BOOL(nw_setting_enable_quic_migration);
              *buf = 136446466;
              v164 = "nwphConfigureRemoteSettings_block_invoke";
              v165 = 1024;
              *v166 = v29;
              _os_log_impl(&dword_181A37000, v28, OS_LOG_TYPE_DEBUG, "%{public}s QUIC migration was set to: %u", buf, 0x12u);
            }

            v30 = networkd_settings_get_int64_with_default(nw_setting_enable_quic_migration_numerator, 0);
            v31 = networkd_settings_get_int64_with_default(nw_setting_enable_quic_migration_denominator, 100);
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v32 = gLogObj;
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446722;
              v164 = "nwphConfigureRemoteSettings_block_invoke";
              v165 = 1024;
              *v166 = v30;
              *&v166[4] = 1024;
              *&v166[6] = v31;
              _os_log_impl(&dword_181A37000, v32, OS_LOG_TYPE_DEBUG, "%{public}s enable_quic_migration sampled at: %u / %u", buf, 0x18u);
            }

            v33 = v25 < int64_with_default && arc4random_uniform(v31) < v30;
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v34 = gLogObj;
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446722;
              v164 = "nwphConfigureRemoteSettings_block_invoke";
              v165 = 1024;
              *v166 = v33;
              *&v166[4] = 1024;
              *&v166[6] = v25 < int64_with_default;
              _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_DEBUG, "%{public}s enabling QUIC migration: %u (enable_quic %u)", buf, 0x18u);
            }

            v155 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:v33];
            if (v155)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_quic_migration];
                [v13 setObject:v155 forKeyedSubscript:v35];
              }
            }

            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v36 = gLogObj;
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
            {
              quic_l4s_enabled = network_config_get_quic_l4s_enabled();
              *buf = 136446466;
              v164 = "nwphConfigureRemoteSettings_block_invoke";
              v165 = 1024;
              *v166 = quic_l4s_enabled;
              _os_log_impl(&dword_181A37000, v36, OS_LOG_TYPE_DEBUG, "%{public}s QUIC L4S was set to: %u", buf, 0x12u);
            }

            v38 = networkd_settings_copy_value_of_type(nw_setting_enable_l4s, 0);
            v39 = v38;
            v40 = MEMORY[0x1E69E9EB0];
            if (v38 && object_getClass(v38) == v40)
            {
              value = xpc_int64_get_value(v39);

              if (value)
              {
                goto LABEL_79;
              }
            }

            else
            {
            }

            if (nw_settings_get_l4s_enabled_internal::onceToken == -1)
            {
              if (nw_settings_get_l4s_enabled_internal::l4s_setting)
              {
                goto LABEL_79;
              }
            }

            else
            {
              dispatch_once(&nw_settings_get_l4s_enabled_internal::onceToken, &__block_literal_global_67004);
              if (nw_settings_get_l4s_enabled_internal::l4s_setting)
              {
                goto LABEL_79;
              }
            }

            v41 = networkd_settings_get_int64_with_default(nw_setting_enable_quic_l4s_numerator, 0);
            v42 = networkd_settings_get_int64_with_default(nw_setting_enable_quic_l4s_denominator, 100);
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v43 = gLogObj;
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446722;
              v164 = "nwphConfigureRemoteSettings_block_invoke";
              v165 = 1024;
              *v166 = v41;
              *&v166[4] = 1024;
              *&v166[6] = v42;
              _os_log_impl(&dword_181A37000, v43, OS_LOG_TYPE_DEBUG, "%{public}s enable QUIC L4S sampled at: %u / %u", buf, 0x18u);
            }

            v44 = arc4random_uniform(v42);
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v45 = gLogObj;
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
            {
              v46 = "disabl";
              if (v44 < v41)
              {
                v46 = "enabl";
              }

              *buf = 136446466;
              v164 = "nwphConfigureRemoteSettings_block_invoke";
              v165 = 2080;
              *v166 = v46;
              _os_log_impl(&dword_181A37000, v45, OS_LOG_TYPE_DEBUG, "%{public}s %sing QUIC L4S", buf, 0x16u);
            }

            v47 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:v44 < v41];
            if (v47)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v48 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_quic_l4s];
                [v13 setObject:v47 forKeyedSubscript:v48];
              }
            }

LABEL_79:
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v50 = gLogObj;
            if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
            {
              tcp_l4s_enabled = network_config_get_tcp_l4s_enabled();
              *buf = 136446466;
              v164 = "nwphConfigureRemoteSettings_block_invoke";
              v165 = 1024;
              *v166 = tcp_l4s_enabled;
              _os_log_impl(&dword_181A37000, v50, OS_LOG_TYPE_DEBUG, "%{public}s TCP L4S was set to: %u", buf, 0x12u);
            }

            v52 = networkd_settings_copy_value_of_type(nw_setting_enable_l4s, 0);
            v53 = v52;
            if (v52 && object_getClass(v52) == v40)
            {
              v63 = xpc_int64_get_value(v53);

              if (v63)
              {
                goto LABEL_97;
              }
            }

            else
            {
            }

            if (nw_settings_get_l4s_enabled_internal::onceToken == -1)
            {
              if (!nw_settings_get_l4s_enabled_internal::l4s_setting)
              {
LABEL_86:
                v54 = networkd_settings_get_int64_with_default(nw_setting_enable_tcp_l4s_numerator, 0);
                v55 = networkd_settings_get_int64_with_default(nw_setting_enable_tcp_l4s_denominator, 100);
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v56 = gLogObj;
                if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136446722;
                  v164 = "nwphConfigureRemoteSettings_block_invoke";
                  v165 = 1024;
                  *v166 = v54;
                  *&v166[4] = 1024;
                  *&v166[6] = v55;
                  _os_log_impl(&dword_181A37000, v56, OS_LOG_TYPE_DEBUG, "%{public}s enable TCP L4S sampled at: %u / %u", buf, 0x18u);
                }

                v57 = arc4random_uniform(v55);
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v58 = gLogObj;
                if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
                {
                  v59 = "disabl";
                  if (v57 < v54)
                  {
                    v59 = "enabl";
                  }

                  *buf = 136446466;
                  v164 = "nwphConfigureRemoteSettings_block_invoke";
                  v165 = 2080;
                  *v166 = v59;
                  _os_log_impl(&dword_181A37000, v58, OS_LOG_TYPE_DEBUG, "%{public}s %sing TCP L4S", buf, 0x16u);
                }

                v60 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:v57 < v54];
                if (v60)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v61 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_tcp_l4s];
                    [v13 setObject:v60 forKeyedSubscript:v61];
                  }
                }

                v62 = v57 < v54;

LABEL_98:
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v64 = gLogObj;
                if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
                {
                  v65 = networkd_settings_get_BOOL(nw_setting_enable_unified_http);
                  *buf = 136446466;
                  v164 = "nwphConfigureRemoteSettings_block_invoke";
                  v165 = 1024;
                  *v166 = v65;
                  _os_log_impl(&dword_181A37000, v64, OS_LOG_TYPE_DEBUG, "%{public}s unified HTTP was set to: %u", buf, 0x12u);
                }

                v66 = networkd_settings_get_int64_with_default(nw_setting_enable_unified_http_numerator, 100);
                v67 = networkd_settings_get_int64_with_default(nw_setting_enable_unified_http_denominator, 100);
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v68 = gLogObj;
                if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136446722;
                  v164 = "nwphConfigureRemoteSettings_block_invoke";
                  v165 = 1024;
                  *v166 = v66;
                  *&v166[4] = 1024;
                  *&v166[6] = v67;
                  _os_log_impl(&dword_181A37000, v68, OS_LOG_TYPE_DEBUG, "%{public}s enable_unified_http sampled at: %u / %u", buf, 0x18u);
                }

                v69 = arc4random_uniform(v67);
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v70 = gLogObj;
                if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136446466;
                  v164 = "nwphConfigureRemoteSettings_block_invoke";
                  v165 = 1024;
                  *v166 = v69 < v66;
                  _os_log_impl(&dword_181A37000, v70, OS_LOG_TYPE_DEBUG, "%{public}s enabling unified HTTP: %u", buf, 0x12u);
                }

                v71 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:v69 < v66];
                if (v71)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v72 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_unified_http];
                    [v13 setObject:v71 forKeyedSubscript:v72];
                  }
                }

                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v73 = gLogObj;
                if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
                {
                  v74 = networkd_settings_get_BOOL(nw_setting_enable_http_connection_coalescing);
                  *buf = 136446466;
                  v164 = "nwphConfigureRemoteSettings_block_invoke";
                  v165 = 1024;
                  *v166 = v74;
                  _os_log_impl(&dword_181A37000, v73, OS_LOG_TYPE_DEBUG, "%{public}s HTTP connection coalescing was set to: %u", buf, 0x12u);
                }

                v75 = networkd_settings_get_int64_with_default(nw_setting_enable_http_connection_coalescing_numerator, 100);
                v76 = networkd_settings_get_int64_with_default(nw_setting_enable_http_connection_coalescing_denominator, 100);
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v77 = gLogObj;
                if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136446722;
                  v164 = "nwphConfigureRemoteSettings_block_invoke";
                  v165 = 1024;
                  *v166 = v75;
                  *&v166[4] = 1024;
                  *&v166[6] = v76;
                  _os_log_impl(&dword_181A37000, v77, OS_LOG_TYPE_DEBUG, "%{public}s http_connection_coalescing sampled at: %u / %u", buf, 0x18u);
                }

                v78 = arc4random_uniform(v76);
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v79 = gLogObj;
                if (os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136446466;
                  v164 = "nwphConfigureRemoteSettings_block_invoke";
                  v165 = 1024;
                  *v166 = v78 < v75;
                  _os_log_impl(&dword_181A37000, v79, OS_LOG_TYPE_DEBUG, "%{public}s enabling HTTP connection coalescing: %u", buf, 0x12u);
                }

                v80 = [MEMORY[0x1E696AD98] numberWithBool:v78 < v75];
                v81 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_http_connection_coalescing];
                [v13 setObject:v80 forKeyedSubscript:v81];

                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v82 = gLogObj;
                if (os_log_type_enabled(v82, OS_LOG_TYPE_DEBUG))
                {
                  v83 = networkd_settings_get_BOOL(nw_setting_enable_http_early_data);
                  *buf = 136446466;
                  v164 = "nwphConfigureRemoteSettings_block_invoke";
                  v165 = 1024;
                  *v166 = v83;
                  _os_log_impl(&dword_181A37000, v82, OS_LOG_TYPE_DEBUG, "%{public}s HTTP early data was set to: %u", buf, 0x12u);
                }

                v84 = networkd_settings_get_int64_with_default(nw_setting_enable_http_early_data_numerator, 100);
                v85 = networkd_settings_get_int64_with_default(nw_setting_enable_http_early_data_denominator, 100);
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v86 = gLogObj;
                if (os_log_type_enabled(v86, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136446722;
                  v164 = "nwphConfigureRemoteSettings_block_invoke";
                  v165 = 1024;
                  *v166 = v84;
                  *&v166[4] = 1024;
                  *&v166[6] = v85;
                  _os_log_impl(&dword_181A37000, v86, OS_LOG_TYPE_DEBUG, "%{public}s http_early_data sampled at: %u / %u", buf, 0x18u);
                }

                v87 = arc4random_uniform(v85);
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v88 = gLogObj;
                if (os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136446466;
                  v164 = "nwphConfigureRemoteSettings_block_invoke";
                  v165 = 1024;
                  *v166 = v87 < v84;
                  _os_log_impl(&dword_181A37000, v88, OS_LOG_TYPE_DEBUG, "%{public}s enabling HTTP early data: %u", buf, 0x12u);
                }

                v89 = [MEMORY[0x1E696AD98] numberWithBool:v87 < v84];
                v90 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_http_early_data];
                [v13 setObject:v89 forKeyedSubscript:v90];

                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v91 = gLogObj;
                if (os_log_type_enabled(v91, OS_LOG_TYPE_DEBUG))
                {
                  v92 = networkd_settings_get_BOOL(nw_setting_disable_pqtls);
                  *buf = 136446466;
                  v164 = "nwphConfigureRemoteSettings_block_invoke";
                  v165 = 1024;
                  *v166 = !v92;
                  _os_log_impl(&dword_181A37000, v91, OS_LOG_TYPE_DEBUG, "%{public}s PQ-TLS was set to: %d", buf, 0x12u);
                }

                v93 = networkd_settings_get_int64_with_default(nw_setting_enable_pqtls_numerator, 100);
                v94 = networkd_settings_get_int64_with_default(nw_setting_enable_pqtls_denominator, 100);
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v95 = gLogObj;
                if (os_log_type_enabled(v95, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136446722;
                  v164 = "nwphConfigureRemoteSettings_block_invoke";
                  v165 = 1024;
                  *v166 = v93;
                  *&v166[4] = 1024;
                  *&v166[6] = v94;
                  _os_log_impl(&dword_181A37000, v95, OS_LOG_TYPE_DEBUG, "%{public}s enable_pqtls sampled at: %u / %u", buf, 0x18u);
                }

                v96 = arc4random_uniform(v94);
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v97 = gLogObj;
                if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136446466;
                  v164 = "nwphConfigureRemoteSettings_block_invoke";
                  v165 = 1024;
                  *v166 = v96 < v93;
                  _os_log_impl(&dword_181A37000, v97, OS_LOG_TYPE_DEBUG, "%{public}s PQ-TLS enabled: %u", buf, 0x12u);
                }

                v154 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:v96 >= v93];
                if (v154)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v98 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_disable_pqtls];
                    [v13 setObject:v154 forKeyedSubscript:v98];
                  }
                }

                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v99 = gLogObj;
                if (os_log_type_enabled(v99, OS_LOG_TYPE_DEBUG))
                {
                  v100 = networkd_settings_get_BOOL(nw_setting_pqtls_probe_enabled);
                  *buf = 136446466;
                  v164 = "nwphConfigureRemoteSettings_block_invoke";
                  v165 = 1024;
                  *v166 = v100;
                  _os_log_impl(&dword_181A37000, v99, OS_LOG_TYPE_DEBUG, "%{public}s PQ-TLS probing was set to: %u", buf, 0x12u);
                }

                v101 = networkd_settings_get_int64_with_default(nw_setting_pqtls_probe_numerator, 0);
                v102 = networkd_settings_get_int64_with_default(nw_setting_pqtls_probe_denominator, 100);
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v103 = gLogObj;
                if (os_log_type_enabled(v103, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136446722;
                  v164 = "nwphConfigureRemoteSettings_block_invoke";
                  v165 = 1024;
                  *v166 = v101;
                  *&v166[4] = 1024;
                  *&v166[6] = v102;
                  _os_log_impl(&dword_181A37000, v103, OS_LOG_TYPE_DEBUG, "%{public}s pqtls_probe_enabled sampled at: %u / %u", buf, 0x18u);
                }

                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v104 = gLogObj;
                if (os_log_type_enabled(v104, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136446466;
                  v164 = "nwphConfigureRemoteSettings_block_invoke";
                  v165 = 1024;
                  *v166 = v101 != 0;
                  _os_log_impl(&dword_181A37000, v104, OS_LOG_TYPE_DEBUG, "%{public}s enabling PQ-TLS probing: %u", buf, 0x12u);
                }

                v153 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:v101 != 0];
                if (v153)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v105 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_pqtls_probe_enabled];
                    [v13 setObject:v153 forKeyedSubscript:v105];
                  }
                }

                xarray = networkd_settings_copy_value_of_type(nw_setting_pqtls_fallback_allowed_domains, MEMORY[0x1E69E9E50]);
                if (xarray)
                {
                  v106 = objc_alloc_init(MEMORY[0x1E695DF70]);
                  applier[0] = MEMORY[0x1E69E9820];
                  applier[1] = 3221225472;
                  applier[2] = __nwphConfigureRemoteSettings_block_invoke_529;
                  applier[3] = &unk_1E6A3D300;
                  v107 = v106;
                  v160 = v107;
                  xpc_array_apply(xarray, applier);
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v108 = gLogObj;
                  if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136446466;
                    v164 = "nwphConfigureRemoteSettings_block_invoke_2";
                    v165 = 2112;
                    *v166 = v107;
                    _os_log_impl(&dword_181A37000, v108, OS_LOG_TYPE_DEFAULT, "%{public}s PQ-TLS fallback allowed domains: %@", buf, 0x16u);
                  }

                  v109 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_pqtls_fallback_allowed_domains];
                  [v13 setObject:v107 forKeyedSubscript:v109];
                }

                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v110 = gLogObj;
                if (os_log_type_enabled(v110, OS_LOG_TYPE_DEBUG))
                {
                  v111 = networkd_settings_get_BOOL(nw_setting_enable_push_ulpn);
                  *buf = 136446466;
                  v164 = "nwphConfigureRemoteSettings_block_invoke";
                  v165 = 1024;
                  *v166 = v111;
                  _os_log_impl(&dword_181A37000, v110, OS_LOG_TYPE_DEBUG, "%{public}s push ULPN was set to: %u", buf, 0x12u);
                }

                has_internal_content = os_variant_has_internal_content();
                v113 = nw_setting_enable_push_ulpn_numerator;
                networkd_settings_init();
                if (!sCachedSettings)
                {
                  goto LABEL_158;
                }

                v114 = v71;
                pthread_mutex_lock(&sSettingsMutex);
                v115 = sCachedSettings;
                if (sCachedSettings)
                {
                  Class = object_getClass(sCachedSettings);
                  if (v113)
                  {
                    v117 = MEMORY[0x1E69E9E80];
                    if (Class == MEMORY[0x1E69E9E80])
                    {
                      v118 = xpc_dictionary_get_value(v115, v113);
                      pthread_mutex_unlock(&sSettingsMutex);
                      if (!v118)
                      {
                        goto LABEL_157;
                      }

                      v119 = nw_setting_enable_push_ulpn_denominator;
                      networkd_settings_init();
                      if (!sCachedSettings)
                      {
                        goto LABEL_157;
                      }

                      pthread_mutex_lock(&sSettingsMutex);
                      v120 = sCachedSettings;
                      if (sCachedSettings)
                      {
                        v121 = object_getClass(sCachedSettings);
                        if (v119)
                        {
                          if (v121 == v117)
                          {
                            v122 = xpc_dictionary_get_value(v120, v119);
                            pthread_mutex_unlock(&sSettingsMutex);
                            v71 = v114;
                            if (v122)
                            {
                              v123 = networkd_settings_get_int64_with_default(nw_setting_enable_push_ulpn_numerator, 0);
                              v124 = networkd_settings_get_int64_with_default(nw_setting_enable_push_ulpn_denominator, 100);
                              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                              networkd_settings_init();
                              v125 = gLogObj;
                              if (os_log_type_enabled(v125, OS_LOG_TYPE_DEBUG))
                              {
                                *buf = 136446722;
                                v164 = "nwphConfigureRemoteSettings_block_invoke";
                                v165 = 1024;
                                *v166 = v123;
                                *&v166[4] = 1024;
                                *&v166[6] = v124;
                                _os_log_impl(&dword_181A37000, v125, OS_LOG_TYPE_DEBUG, "%{public}s enable_push_ulpn sampled at: %u / %u", buf, 0x18u);
                              }

                              has_internal_content = arc4random_uniform(v124) < v123;
                            }

                            goto LABEL_158;
                          }
                        }
                      }
                    }
                  }
                }

                pthread_mutex_unlock(&sSettingsMutex);
LABEL_157:
                v71 = v114;
LABEL_158:
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v126 = gLogObj;
                if (os_log_type_enabled(v126, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136446466;
                  v164 = "nwphConfigureRemoteSettings_block_invoke";
                  v165 = 1024;
                  *v166 = has_internal_content;
                  _os_log_impl(&dword_181A37000, v126, OS_LOG_TYPE_DEBUG, "%{public}s enabling push ULPN: %u", buf, 0x12u);
                }

                v127 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:has_internal_content];
                if (v127)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v128 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_push_ulpn];
                    [v13 setObject:v127 forKeyedSubscript:v128];
                  }
                }

                v129 = networkd_settings_get_int64_with_default(nw_setting_activity_investigation_id, 0);
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v130 = gLogObj;
                if (os_log_type_enabled(v130, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136446466;
                  v164 = "nwphConfigureRemoteSettings_block_invoke";
                  v165 = 2048;
                  *v166 = v129;
                  _os_log_impl(&dword_181A37000, v130, OS_LOG_TYPE_DEFAULT, "%{public}s Current Investigation ID: %llu", buf, 0x16u);
                }

                if (v129)
                {
                  v131 = nw_setting_activity_investigation_id_start_time;
                  networkd_settings_init();
                  if (sCachedSettings)
                  {
                    pthread_mutex_lock(&sSettingsMutex);
                    if (sCachedSettings)
                    {
                      v132 = xpc_dictionary_get_int64(sCachedSettings, v131);
                    }

                    else
                    {
                      v132 = 0;
                    }

                    pthread_mutex_unlock(&sSettingsMutex);
                  }

                  else
                  {
                    v132 = 0;
                  }

                  v133 = clock_gettime_nsec_np(_CLOCK_REALTIME);
                  v134 = v133;
                  if (v132 - 1 >= v133)
                  {
                    v140 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLongLong:v133];
                    if (v140)
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v143 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_investigation_id_start_time];
                        [v13 setObject:v140 forKeyedSubscript:v143];

                        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                        networkd_settings_init();
                        v144 = gLogObj;
                        if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 136446466;
                          v164 = "nwphConfigureRemoteSettings_block_invoke";
                          v165 = 2048;
                          *v166 = v134;
                          _os_log_impl(&dword_181A37000, v144, OS_LOG_TYPE_DEFAULT, "%{public}s Overriding Investigation ID start time to %llu", buf, 0x16u);
                        }
                      }
                    }
                  }

                  else
                  {
                    v135 = v13;
                    v136 = v71;
                    v137 = v62;
                    v138 = v133 - v132;
                    v139 = (v133 - v132) / 0x3B9ACA00;
                    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                    networkd_settings_init();
                    v140 = gLogObj;
                    v141 = os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT);
                    if (v138 < 0x2261034C3CA00)
                    {
                      if (v141)
                      {
                        *buf = 136446978;
                        v164 = "nwphConfigureRemoteSettings_block_invoke";
                        v165 = 2048;
                        *v166 = v132;
                        *&v166[8] = 2048;
                        v167 = v134;
                        v168 = 2048;
                        v169 = v139;
                        _os_log_impl(&dword_181A37000, v140, OS_LOG_TYPE_DEFAULT, "%{public}s Investigation ID has not expired (start: %llu, now: %llu, delta_sec: %llu)", buf, 0x2Au);
                      }

                      v62 = v137;
                      v71 = v136;
                      v13 = v135;
                    }

                    else
                    {
                      v71 = v136;
                      if (v141)
                      {
                        *buf = 136446978;
                        v164 = "nwphConfigureRemoteSettings_block_invoke";
                        v165 = 2048;
                        *v166 = v132;
                        *&v166[8] = 2048;
                        v167 = v134;
                        v168 = 2048;
                        v169 = v139;
                        _os_log_impl(&dword_181A37000, v140, OS_LOG_TYPE_DEFAULT, "%{public}s Investigation ID expired, removing (start: %llu, now: %llu, delta_sec: %llu)", buf, 0x2Au);
                      }

                      v62 = v137;
                      v13 = v135;
                      v142 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_investigation_id];
                      [v135 setObject:0 forKeyedSubscript:v142];

                      v140 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_investigation_id_start_time];
                      [v135 setObject:0 forKeyedSubscript:v140];
                    }
                  }
                }

                saveAndPostNetworkdSettings(v13, v152, int64);
                v145 = networkd_settings_get_BOOL(nw_setting_disable_l4s_aqm);
                v146 = +[ManagedNetworkSettings sharedMNS];
                v147 = [v146 queue];
                block[0] = MEMORY[0x1E69E9820];
                block[1] = 3221225472;
                block[2] = __nwphConfigureRemoteSettings_block_invoke_533;
                block[3] = &__block_descriptor_48_e5_v8__0l;
                block[4] = v62;
                block[5] = !v145;
                dispatch_async(v147, block);

                goto LABEL_187;
              }
            }

            else
            {
              dispatch_once(&nw_settings_get_l4s_enabled_internal::onceToken, &__block_literal_global_67004);
              if (!nw_settings_get_l4s_enabled_internal::l4s_setting)
              {
                goto LABEL_86;
              }
            }

LABEL_97:
            v62 = 0;
            goto LABEL_98;
          }

LABEL_31:
          free(v10);
          goto LABEL_32;
        }

        if (v16)
        {
          *buf = 136446722;
          v164 = "nwphConfigureRemoteSettings_block_invoke";
          v165 = 2114;
          *v166 = v157;
          *&v166[8] = 2114;
          v167 = @"/Library/Preferences/com.apple.networkd.networknomicon.plist";
          _os_log_impl(&dword_181A37000, v11, v15, "%{public}s Failed to save networknomicon settings run %{public}@ to %{public}@, no backtrace", buf, 0x20u);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        v17 = v162;
        if (os_log_type_enabled(v11, v162))
        {
          *buf = 136446722;
          v164 = "nwphConfigureRemoteSettings_block_invoke";
          v165 = 2114;
          *v166 = v157;
          *&v166[8] = 2114;
          v167 = @"/Library/Preferences/com.apple.networkd.networknomicon.plist";
          _os_log_impl(&dword_181A37000, v11, v17, "%{public}s Failed to save networknomicon settings run %{public}@ to %{public}@, backtrace limit exceeded", buf, 0x20u);
        }
      }
    }

    if (!v10)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v13 = gLogObj;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446210;
    v164 = "nwphConfigureRemoteSettings_block_invoke";
    _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_DEBUG, "%{public}s skipping remote settings run", buf, 0xCu);
  }

LABEL_187:
}

uint64_t __nwphConfigureRemoteSettings_block_invoke_529(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (object_getClass(v4) == MEMORY[0x1E69E9F10])
  {
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:xpc_string_get_string_ptr(v4) encoding:134217984];
    if (v5)
    {
      [*(a1 + 32) addObject:v5];
    }
  }

  return 1;
}

void __nwphConfigureRemoteSettings_block_invoke_533(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF90] dictionaryWithContentsOfFile:@"/Library/Preferences/com.apple.networkd.sysctl.plist"];
  if (!v2)
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v3 = [v2 objectForKeyedSubscript:@"net.inet.tcp.l4s"];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v3 longLongValue] == *(a1 + 32))
  {
    v4 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 32)];
    [v2 setObject:v5 forKeyedSubscript:@"net.inet.tcp.l4s"];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      *buf = 136446466;
      v32 = "nwphConfigureRemoteSettings_block_invoke";
      v33 = 2048;
      v34 = v7;
      _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s Changing TCP L4S to %lld", buf, 0x16u);
    }

    v4 = 1;
  }

  v8 = [v2 objectForKeyedSubscript:@"net.classq.fq_codel.enable_l4s"];
  if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || [v8 longLongValue] != *(a1 + 40))
  {
    v9 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 40)];
    [v2 setObject:v9 forKeyedSubscript:@"net.classq.fq_codel.enable_l4s"];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 40);
      *buf = 136446466;
      v32 = "nwphConfigureRemoteSettings_block_invoke";
      v33 = 2048;
      v34 = v11;
      _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_DEFAULT, "%{public}s Changing L4S AQM enablement to %lld", buf, 0x16u);
    }

    v4 = 1;
  }

  v12 = [v2 objectForKeyedSubscript:@"net.classq.fq_codel.enable_pacing"];
  if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v12 longLongValue] == *(a1 + 40))
  {
    if (!v4)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v13 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 40)];
    [v2 setObject:v13 forKeyedSubscript:@"net.classq.fq_codel.enable_pacing"];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v14 = gLogObj;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 40);
      *buf = 136446466;
      v32 = "nwphConfigureRemoteSettings_block_invoke";
      v33 = 2048;
      v34 = v15;
      _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEFAULT, "%{public}s Changing L4S AQM Pacing enablement to %lld", buf, 0x16u);
    }
  }

  if (([v2 writeToFile:@"/Library/Preferences/com.apple.networkd.sysctl.plist" atomically:1] & 1) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v16 = gLogObj;
    *buf = 136446722;
    v32 = "nwphConfigureRemoteSettings_block_invoke";
    v33 = 2114;
    v34 = v2;
    v35 = 2114;
    v36 = @"/Library/Preferences/com.apple.networkd.sysctl.plist";
    LODWORD(v28) = 32;
    v27 = buf;
    v17 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v29 = 0;
    if (__nwlog_fault(v17, &type, &v29))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v19 = type;
        if (!os_log_type_enabled(v18, type))
        {
          goto LABEL_42;
        }

        *buf = 136446722;
        v32 = "nwphConfigureRemoteSettings_block_invoke";
        v33 = 2114;
        v34 = v2;
        v35 = 2114;
        v36 = @"/Library/Preferences/com.apple.networkd.sysctl.plist";
        v20 = "%{public}s Failed to save network settings %{public}@ to %{public}@";
LABEL_40:
        v25 = v18;
        v26 = v19;
        goto LABEL_41;
      }

      if (v29 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v19 = type;
        if (!os_log_type_enabled(v18, type))
        {
          goto LABEL_42;
        }

        *buf = 136446722;
        v32 = "nwphConfigureRemoteSettings_block_invoke";
        v33 = 2114;
        v34 = v2;
        v35 = 2114;
        v36 = @"/Library/Preferences/com.apple.networkd.sysctl.plist";
        v20 = "%{public}s Failed to save network settings %{public}@ to %{public}@, backtrace limit exceeded";
        goto LABEL_40;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v18 = gLogObj;
      v22 = type;
      v23 = os_log_type_enabled(v18, type);
      if (!backtrace_string)
      {
        if (!v23)
        {
LABEL_42:

          if (!v17)
          {
            goto LABEL_36;
          }

          goto LABEL_35;
        }

        *buf = 136446722;
        v32 = "nwphConfigureRemoteSettings_block_invoke";
        v33 = 2114;
        v34 = v2;
        v35 = 2114;
        v36 = @"/Library/Preferences/com.apple.networkd.sysctl.plist";
        v20 = "%{public}s Failed to save network settings %{public}@ to %{public}@, no backtrace";
        v25 = v18;
        v26 = v22;
LABEL_41:
        _os_log_impl(&dword_181A37000, v25, v26, v20, buf, 0x20u);
        goto LABEL_42;
      }

      if (v23)
      {
        *buf = 136446978;
        v32 = "nwphConfigureRemoteSettings_block_invoke";
        v33 = 2114;
        v34 = v2;
        v35 = 2114;
        v36 = @"/Library/Preferences/com.apple.networkd.sysctl.plist";
        v37 = 2082;
        v38 = backtrace_string;
        _os_log_impl(&dword_181A37000, v18, v22, "%{public}s Failed to save network settings %{public}@ to %{public}@, dumping backtrace:%{public}s", buf, 0x2Au);
      }

      free(backtrace_string);
    }

    if (v17)
    {
LABEL_35:
      free(v17);
    }
  }

LABEL_36:
  v24 = [ManagedNetworkSettings sharedMNS:v27];
  [v24 reloadMNS];

LABEL_37:
}

void __nwphCheckMobileAsset_block_invoke_378(uint64_t a1, unint64_t a2)
{
  v815 = *MEMORY[0x1E69E9840];
  if (a2 < 0xD && ((0x103Fu >> a2) & 1) != 0)
  {
    v4 = off_1E6A2E948[a2];
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid[%lld]", a2];
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v5 = &qword_1ED411000;
  v6 = gLogObj;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    buf = 136446466;
    v808 = "nwphCheckMobileAsset_block_invoke";
    v809 = 2114;
    v810 = v4;
    _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s queried mobile asset metadata with res %{public}@", &buf, 0x16u);
  }

  if (!a2)
  {
    v7 = [*(a1 + 32) results];
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v7 count];
      v10 = *(a1 + 32);
      v11 = [(__CFString *)v10 queryParams];
      buf = 136446978;
      v808 = "nwphCheckMobileAsset_block_invoke";
      v809 = 2048;
      v810 = v9;
      v811 = 2114;
      v812 = v10;
      v813 = 2114;
      v814 = v11;
      _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s queried mobile asset metadata got %llu results %{public}@ params %{public}@", &buf, 0x2Au);
    }

    v12 = [MEMORY[0x1E695DF90] dictionaryWithContentsOfFile:@"/Library/Preferences/com.apple.networkd.networknomicon.plist"];
    if (!v12)
    {
      v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    [v12 setObject:0 forKeyedSubscript:@"RandomID"];
    v801 = 0u;
    v802 = 0u;
    v799 = 0u;
    v800 = 0u;
    obj = v7;
    v774 = [obj countByEnumeratingWithState:&v799 objects:v806 count:16];
    if (v774)
    {
      v771 = v4;
      v13 = 0;
      v773 = *v800;
      v14 = &nwlog_legacy_init(void)::init_once;
      while (1)
      {
        v15 = 0;
        do
        {
          if (*v800 != v773)
          {
            objc_enumerationMutation(obj);
          }

          v776 = v15;
          v19 = *(*(&v799 + 1) + 8 * v15);

          pthread_once(v14, nwlog_legacy_init_once);
          networkd_settings_init();
          v20 = v5[275];
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            buf = 136446466;
            v808 = "nwphCheckMobileAsset_block_invoke";
            v809 = 2114;
            v810 = v19;
            _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_DEFAULT, "%{public}s Received asset %{public}@", &buf, 0x16u);
          }

          v777 = v19;
          v21 = [v19 attributes];
          pthread_once(v14, nwlog_legacy_init_once);
          networkd_settings_init();
          v22 = v5[275];
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            buf = 136446466;
            v808 = "nwphCheckMobileAsset_block_invoke";
            v809 = 2114;
            v810 = v21;
            _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_DEFAULT, "%{public}s Received asset attributes %{public}@", &buf, 0x16u);
          }

          v23 = [v21 objectForKeyedSubscript:@"NetworknomiconVersion"];
          pthread_once(v14, nwlog_legacy_init_once);
          networkd_settings_init();
          v24 = v5[275];
          v25 = v24;
          v778 = v23;
          if (v23)
          {
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              buf = 136446466;
              v808 = "nwphCheckMobileAsset_block_invoke";
              v809 = 2114;
              v810 = v23;
              _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_DEFAULT, "%{public}s Received NetworknomiconVersion %{public}@", &buf, 0x16u);
            }

            v25 = [v21 objectForKeyedSubscript:@"NetworknomiconECNPercentage"];
            if (v25 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v26 = [v25 longLongValue];
              v27 = v26 < 0x65;
            }

            else
            {
              v27 = 0;
              v26 = -1;
            }

            v28 = [v21 objectForKeyedSubscript:@"NetworknomiconPollFrequencySeconds"];
            if (v28)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v29 = [v28 longLongValue];
                if ((v29 - 3600) < 0x277EF1)
                {
                  v30 = [MEMORY[0x1E696AD98] numberWithLongLong:v29];
                  [v12 setObject:v30 forKeyedSubscript:@"PollFrequencySeconds"];
                }
              }
            }

            v31 = [v21 objectForKeyedSubscript:@"NetworknomiconSettingsFrequencySeconds"];
            if (v31)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v32 = [v31 longLongValue];
                if ((v32 - 3600) < 0x277EF1)
                {
                  v33 = [MEMORY[0x1E696AD98] numberWithLongLong:v32];
                  [v12 setObject:v33 forKeyedSubscript:@"kNWSettingsKeyFrequencySeconds"];

                  v5 = &qword_1ED411000;
                }
              }
            }

            if (v27)
            {
              v34 = +[ManagedNetworkSettings sharedMNS];
              v35 = [v34 queue];
              v796[0] = MEMORY[0x1E69E9820];
              v796[1] = 3221225472;
              v796[2] = __nwphCheckMobileAsset_block_invoke_392;
              v796[3] = &unk_1E6A3AC58;
              v798 = v26;
              v797 = v12;
              dispatch_async(v35, v796);

              v5 = &qword_1ED411000;
              v14 = &nwlog_legacy_init(void)::init_once;
            }
          }

          else if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            buf = 136446466;
            v808 = "nwphCheckMobileAsset_block_invoke";
            v809 = 2114;
            v810 = v21;
            _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_ERROR, "%{public}s Bad asset attributes %{public}@", &buf, 0x16u);
          }

          v36 = [v21 objectForKeyedSubscript:@"ActivityRateVersion"];
          pthread_once(v14, nwlog_legacy_init_once);
          networkd_settings_init();
          v18 = v5[275];
          v37 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
          if (v36)
          {
            if (v37)
            {
              buf = 136446466;
              v808 = "nwphCheckMobileAsset_block_invoke";
              v809 = 2114;
              v810 = v36;
              _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_DEFAULT, "%{public}s Received ActivityRateVersion %{public}@", &buf, 0x16u);
            }

            v775 = v36;

            v779 = objc_alloc_init(MEMORY[0x1E695DF90]);
            v38 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_num_%s_%s", "ios", "libnetcore"];
            v39 = [v21 objectForKeyedSubscript:v38];
            if (v39 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([v39 longLongValue] & 0x8000000000000000) == 0)
            {
              v40 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_libnetcore];
              [v779 setObject:v39 forKeyedSubscript:v40];

              v41 = 1;
            }

            else
            {
              v41 = 0;
            }

            v42 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_num_%s_%s", "ios", "cfnetwork"];
            v43 = [v21 objectForKeyedSubscript:v42];
            if (v43)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v43 longLongValue] & 0x8000000000000000) == 0)
              {
                v44 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_cfnetwork];
                [v779 setObject:v43 forKeyedSubscript:v44];

                v41 = 1;
              }
            }

            v45 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_num_%s_%s", "ios", "coremedia"];
            v46 = [v21 objectForKeyedSubscript:v45];
            if (v46)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v46 longLongValue] & 0x8000000000000000) == 0)
              {
                v47 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_coremedia];
                [v779 setObject:v46 forKeyedSubscript:v47];

                v41 = 1;
              }
            }

            v48 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_num_%s_%s", "ios", "parsec"];
            v49 = [v21 objectForKeyedSubscript:v48];
            if (v49)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v49 longLongValue] & 0x8000000000000000) == 0)
              {
                v50 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_parsec];
                [v779 setObject:v49 forKeyedSubscript:v50];

                v41 = 1;
              }
            }

            v51 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_num_%s_%s", "ios", "siri"];
            v52 = [v21 objectForKeyedSubscript:v51];
            if (v52)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v52 longLongValue] & 0x8000000000000000) == 0)
              {
                v53 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_siri];
                [v779 setObject:v52 forKeyedSubscript:v53];

                v41 = 1;
              }
            }

            v54 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_num_%s_%s", "ios", "webkit"];
            v55 = [v21 objectForKeyedSubscript:v54];
            if (v55)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v55 longLongValue] & 0x8000000000000000) == 0)
              {
                v56 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_webkit];
                [v779 setObject:v55 forKeyedSubscript:v56];

                v41 = 1;
              }
            }

            v57 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_num_%s_%s", "ios", "coremedia_crabs"];
            v58 = [v21 objectForKeyedSubscript:v57];
            if (v58)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v58 longLongValue] & 0x8000000000000000) == 0)
              {
                v59 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_coremedia_crabs];
                [v779 setObject:v58 forKeyedSubscript:v59];

                v41 = 1;
              }
            }

            v60 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_num_%s_%s", "ios", "coremedia_hls"];
            v61 = [v21 objectForKeyedSubscript:v60];
            if (v61)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v61 longLongValue] & 0x8000000000000000) == 0)
              {
                v62 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_coremedia_hls];
                [v779 setObject:v61 forKeyedSubscript:v62];

                v41 = 1;
              }
            }

            v63 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_num_%s_%s", "ios", "cloudkit"];
            v64 = [v21 objectForKeyedSubscript:v63];
            if (v64)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v64 longLongValue] & 0x8000000000000000) == 0)
              {
                v65 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_cloudkit];
                [v779 setObject:v64 forKeyedSubscript:v65];

                v41 = 1;
              }
            }

            v66 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_num_%s_%s", "ios", "mmcs"];
            v67 = [v21 objectForKeyedSubscript:v66];
            if (v67)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v67 longLongValue] & 0x8000000000000000) == 0)
              {
                v68 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_mmcs];
                [v779 setObject:v67 forKeyedSubscript:v68];

                v41 = 1;
              }
            }

            v69 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_num_%s_%s", "ios", "mail"];
            v70 = [v21 objectForKeyedSubscript:v69];
            if (v70)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v70 longLongValue] & 0x8000000000000000) == 0)
              {
                v71 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_mail];
                [v779 setObject:v70 forKeyedSubscript:v71];

                v41 = 1;
              }
            }

            v72 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_num_%s_%s", "ios", "facetime"];
            v73 = [v21 objectForKeyedSubscript:v72];
            if (v73)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v73 longLongValue] & 0x8000000000000000) == 0)
              {
                v74 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_facetime];
                [v779 setObject:v73 forKeyedSubscript:v74];

                v41 = 1;
              }
            }

            v75 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_num_%s_%s", "ios", "adplatforms"];
            v76 = [v21 objectForKeyedSubscript:v75];
            if (v76)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v76 longLongValue] & 0x8000000000000000) == 0)
              {
                v77 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_adplatforms];
                [v779 setObject:v76 forKeyedSubscript:v77];

                v41 = 1;
              }
            }

            v78 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_num_%s_%s", "ios", "corelocation"];
            v79 = [v21 objectForKeyedSubscript:v78];
            if (v79)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v79 longLongValue] & 0x8000000000000000) == 0)
              {
                v80 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_corelocation];
                [v779 setObject:v79 forKeyedSubscript:v80];

                v41 = 1;
              }
            }

            v81 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_num_%s_%s", "ios", "airplay_sender"];
            v82 = [v21 objectForKeyedSubscript:v81];
            if (v82)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v82 longLongValue] & 0x8000000000000000) == 0)
              {
                v83 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_airplay_sender];
                [v779 setObject:v82 forKeyedSubscript:v83];

                v41 = 1;
              }
            }

            v84 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_num_%s_%s", "ios", "airplay_receiver"];
            v85 = [v21 objectForKeyedSubscript:v84];
            if (v85)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v85 longLongValue] & 0x8000000000000000) == 0)
              {
                v86 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_airplay_receiver];
                [v779 setObject:v85 forKeyedSubscript:v86];

                v41 = 1;
              }
            }

            v87 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_num_%s_%s", "ios", "maps"];
            v88 = [v21 objectForKeyedSubscript:v87];
            if (v88)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v88 longLongValue] & 0x8000000000000000) == 0)
              {
                v89 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_maps];
                [v779 setObject:v88 forKeyedSubscript:v89];

                v41 = 1;
              }
            }

            v90 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_num_%s_%s", "ios", "maps_internal"];
            v91 = [v21 objectForKeyedSubscript:v90];
            if (v91)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v91 longLongValue] & 0x8000000000000000) == 0)
              {
                v92 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_maps_internal];
                [v779 setObject:v91 forKeyedSubscript:v92];

                v41 = 1;
              }
            }

            v93 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_num_%s_%s", "ios", "maps_external"];
            v94 = [v21 objectForKeyedSubscript:v93];
            if (v94)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v94 longLongValue] & 0x8000000000000000) == 0)
              {
                v95 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_maps_external];
                [v779 setObject:v94 forKeyedSubscript:v95];

                v41 = 1;
              }
            }

            v96 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_num_%s_%s", "ios", "network_speed_test"];
            v97 = [v21 objectForKeyedSubscript:v96];
            if (v97)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v97 longLongValue] & 0x8000000000000000) == 0)
              {
                v98 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_network_speed_test];
                [v779 setObject:v97 forKeyedSubscript:v98];

                v41 = 1;
              }
            }

            v99 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_num_%s_%s", "ios", "captive"];
            v100 = [v21 objectForKeyedSubscript:v99];
            if (v100)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v100 longLongValue] & 0x8000000000000000) == 0)
              {
                v101 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_captive];
                [v779 setObject:v100 forKeyedSubscript:v101];

                v41 = 1;
              }
            }

            v102 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_num_%s_%s", "ios", "safe_browsing"];
            v103 = [v21 objectForKeyedSubscript:v102];
            if (v103)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v103 longLongValue] & 0x8000000000000000) == 0)
              {
                v104 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_safe_browsing];
                [v779 setObject:v103 forKeyedSubscript:v104];

                v41 = 1;
              }
            }

            v105 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_num_%s_%s", "ios", "dns"];
            v106 = [v21 objectForKeyedSubscript:v105];
            if (v106)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v106 longLongValue] & 0x8000000000000000) == 0)
              {
                v107 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_dns];
                [v779 setObject:v106 forKeyedSubscript:v107];

                v41 = 1;
              }
            }

            v108 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_num_%s_%s", "ios", "music"];
            v109 = [v21 objectForKeyedSubscript:v108];
            if (v109)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v109 longLongValue] & 0x8000000000000000) == 0)
              {
                v110 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_music];
                [v779 setObject:v109 forKeyedSubscript:v110];

                v41 = 1;
              }
            }

            v111 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_num_%s_%s", "ios", "battery"];
            v112 = [v21 objectForKeyedSubscript:v111];
            if (v112)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v112 longLongValue] & 0x8000000000000000) == 0)
              {
                v113 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_battery];
                [v779 setObject:v112 forKeyedSubscript:v113];

                v41 = 1;
              }
            }

            v114 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_num_%s_%s", "ios", "cloud_media_services"];
            v115 = [v21 objectForKeyedSubscript:v114];
            if (v115)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v115 longLongValue] & 0x8000000000000000) == 0)
              {
                v116 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_cloud_media_services];
                [v779 setObject:v115 forKeyedSubscript:v116];

                v41 = 1;
              }
            }

            v117 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_num_%s_%s", "ios", "avconference"];
            v118 = [v21 objectForKeyedSubscript:v117];
            if (v118)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v118 longLongValue] & 0x8000000000000000) == 0)
              {
                v119 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_avconference];
                [v779 setObject:v118 forKeyedSubscript:v119];

                v41 = 1;
              }
            }

            v120 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_num_%s_%s", "ios", "appstore"];
            v121 = [v21 objectForKeyedSubscript:v120];
            if (v121)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v121 longLongValue] & 0x8000000000000000) == 0)
              {
                v122 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_appstore];
                [v779 setObject:v121 forKeyedSubscript:v122];

                v41 = 1;
              }
            }

            v123 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_num_%s_%s", "ios", "telephony_service"];
            v124 = [v21 objectForKeyedSubscript:v123];
            if (v124)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v124 longLongValue] & 0x8000000000000000) == 0)
              {
                v125 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_telephony_service];
                [v779 setObject:v124 forKeyedSubscript:v125];

                v41 = 1;
              }
            }

            v126 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_num_%s_%s", "ios", "network_experiments"];
            v127 = [v21 objectForKeyedSubscript:v126];
            if (v127)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v127 longLongValue] & 0x8000000000000000) == 0)
              {
                v128 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_network_experiments];
                [v779 setObject:v127 forKeyedSubscript:v128];

                v41 = 1;
              }
            }

            v129 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_num_%s_%s", "ios", "network_perf"];
            v130 = [v21 objectForKeyedSubscript:v129];
            if (v130)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v130 longLongValue] & 0x8000000000000000) == 0)
              {
                v131 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_network_perf];
                [v779 setObject:v130 forKeyedSubscript:v131];

                v41 = 1;
              }
            }

            v132 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_num_%s_%s", "ios", "hotspot"];
            v133 = [v21 objectForKeyedSubscript:v132];
            if (v133)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v133 longLongValue] & 0x8000000000000000) == 0)
              {
                v134 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_hotspot];
                [v779 setObject:v133 forKeyedSubscript:v134];

                v41 = 1;
              }
            }

            v135 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_num_%s_%s", "ios", "weather"];
            v136 = [v21 objectForKeyedSubscript:v135];
            if (v136)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v136 longLongValue] & 0x8000000000000000) == 0)
              {
                v137 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_weather];
                [v779 setObject:v136 forKeyedSubscript:v137];

                v41 = 1;
              }
            }

            v138 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_num_%s_%s", "ios", "coordination"];
            v139 = [v21 objectForKeyedSubscript:v138];
            if (v139)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v139 longLongValue] & 0x8000000000000000) == 0)
              {
                v140 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_coordination];
                [v779 setObject:v139 forKeyedSubscript:v140];

                v41 = 1;
              }
            }

            v141 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_num_%s_%s", "ios", "appstore_jet"];
            v142 = [v21 objectForKeyedSubscript:v141];
            if (v142)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v142 longLongValue] & 0x8000000000000000) == 0)
              {
                v143 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_appstore_jet];
                [v779 setObject:v142 forKeyedSubscript:v143];

                v41 = 1;
              }
            }

            v144 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_num_%s_%s", "ios", "soundboard"];
            v145 = [v21 objectForKeyedSubscript:v144];
            if (v145)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v145 longLongValue] & 0x8000000000000000) == 0)
              {
                v146 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_soundboard];
                [v779 setObject:v145 forKeyedSubscript:v146];

                v41 = 1;
              }
            }

            v147 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_num_%s_%s", "ios", "aea"];
            v148 = [v21 objectForKeyedSubscript:v147];
            if (v148)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v148 longLongValue] & 0x8000000000000000) == 0)
              {
                v149 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_aea];
                [v779 setObject:v148 forKeyedSubscript:v149];

                v41 = 1;
              }
            }

            v150 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_num_%s_%s", "ios", "homekit"];
            v151 = [v21 objectForKeyedSubscript:v150];
            if (v151)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v151 longLongValue] & 0x8000000000000000) == 0)
              {
                v152 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_homekit];
                [v779 setObject:v151 forKeyedSubscript:v152];

                v41 = 1;
              }
            }

            v153 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_num_%s_%s", "ios", "wifi"];
            v154 = [v21 objectForKeyedSubscript:v153];
            if (v154)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v154 longLongValue] & 0x8000000000000000) == 0)
              {
                v155 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_wifi];
                [v779 setObject:v154 forKeyedSubscript:v155];

                v41 = 1;
              }
            }

            v156 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_num_%s_%s", "ios", "app_launch"];
            v157 = [v21 objectForKeyedSubscript:v156];
            if (v157)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v157 longLongValue] & 0x8000000000000000) == 0)
              {
                v158 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_app_launch];
                [v779 setObject:v157 forKeyedSubscript:v158];

                v41 = 1;
              }
            }

            v159 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_num_%s_%s", "ios", "ams"];
            v160 = [v21 objectForKeyedSubscript:v159];
            if (v160)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v160 longLongValue] & 0x8000000000000000) == 0)
              {
                v161 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_ams];
                [v779 setObject:v160 forKeyedSubscript:v161];

                v41 = 1;
              }
            }

            v162 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_num_%s_%s", "ios", "reve"];
            v163 = [v21 objectForKeyedSubscript:v162];
            if (v163)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v163 longLongValue] & 0x8000000000000000) == 0)
              {
                v164 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_reve];
                [v779 setObject:v163 forKeyedSubscript:v164];

                v41 = 1;
              }
            }

            v165 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_num_%s_%s", "ios", "network_quality"];
            v166 = [v21 objectForKeyedSubscript:v165];
            if (v166)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v166 longLongValue] & 0x8000000000000000) == 0)
              {
                v167 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_network_quality];
                [v779 setObject:v166 forKeyedSubscript:v167];

                v41 = 1;
              }
            }

            v168 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_num_%s_%s", "ios", "news"];
            v169 = [v21 objectForKeyedSubscript:v168];
            if (v169)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v169 longLongValue] & 0x8000000000000000) == 0)
              {
                v170 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_news];
                [v779 setObject:v169 forKeyedSubscript:v170];

                v41 = 1;
              }
            }

            v171 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_num_%s_%s", "ios", "cloud_compute"];
            v172 = [v21 objectForKeyedSubscript:v171];
            if (v172)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v172 longLongValue] & 0x8000000000000000) == 0)
              {
                v173 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_cloud_compute];
                [v779 setObject:v172 forKeyedSubscript:v173];

                v41 = 1;
              }
            }

            v174 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_num_%s_%s", "ios", "push"];
            v175 = [v21 objectForKeyedSubscript:v174];
            if (v175)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v175 longLongValue] & 0x8000000000000000) == 0)
              {
                v176 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_push];
                [v779 setObject:v175 forKeyedSubscript:v176];

                v41 = 1;
              }
            }

            v177 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_num_%s_%s", "ios", "nw_actor_system"];
            v178 = [v21 objectForKeyedSubscript:v177];
            if (v178)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v178 longLongValue] & 0x8000000000000000) == 0)
              {
                v179 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_nw_actor_system];
                [v779 setObject:v178 forKeyedSubscript:v179];

                v41 = 1;
              }
            }

            v180 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_num_%s_%s", "ios", "app_intents_services"];
            v181 = [v21 objectForKeyedSubscript:v180];
            if (v181)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v181 longLongValue] & 0x8000000000000000) == 0)
              {
                v182 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_app_intents_services];
                [v779 setObject:v181 forKeyedSubscript:v182];

                v41 = 1;
              }
            }

            v183 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_num_%s_%s", "ios", "stocks"];
            v184 = [v21 objectForKeyedSubscript:v183];
            if (v184)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v184 longLongValue] & 0x8000000000000000) == 0)
              {
                v185 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_stocks];
                [v779 setObject:v184 forKeyedSubscript:v185];

                v41 = 1;
              }
            }

            v186 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_num_%s_%s", "ios", "tv_app"];
            v187 = [v21 objectForKeyedSubscript:v186];
            if (v187)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v187 longLongValue] & 0x8000000000000000) == 0)
              {
                v188 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_tv_app];
                [v779 setObject:v187 forKeyedSubscript:v188];

                v41 = 1;
              }
            }

            v189 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_num_%s_%s", "ios", "rapport"];
            v190 = [v21 objectForKeyedSubscript:v189];
            if (v190)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v190 longLongValue] & 0x8000000000000000) == 0)
              {
                v191 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_rapport];
                [v779 setObject:v190 forKeyedSubscript:v191];

                v41 = 1;
              }
            }

            v192 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_num_%s_%s", "ios", "mobile_asset"];
            v193 = [v21 objectForKeyedSubscript:v192];
            if (v193)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v193 longLongValue] & 0x8000000000000000) == 0)
              {
                v194 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_mobile_asset];
                [v779 setObject:v193 forKeyedSubscript:v194];

                v41 = 1;
              }
            }

            v195 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_den_%s_%s", "ios", "libnetcore"];
            v196 = [v21 objectForKeyedSubscript:v195];
            if (v196)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v196 longLongValue] & 0x8000000000000000) == 0)
              {
                v197 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_libnetcore];
                [v779 setObject:v196 forKeyedSubscript:v197];

                v41 = 1;
              }
            }

            v198 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_den_%s_%s", "ios", "cfnetwork"];
            v199 = [v21 objectForKeyedSubscript:v198];
            if (v199)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v199 longLongValue] & 0x8000000000000000) == 0)
              {
                v200 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_cfnetwork];
                [v779 setObject:v199 forKeyedSubscript:v200];

                v41 = 1;
              }
            }

            v201 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_den_%s_%s", "ios", "coremedia"];
            v202 = [v21 objectForKeyedSubscript:v201];
            if (v202)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v202 longLongValue] & 0x8000000000000000) == 0)
              {
                v203 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_coremedia];
                [v779 setObject:v202 forKeyedSubscript:v203];

                v41 = 1;
              }
            }

            v204 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_den_%s_%s", "ios", "parsec"];
            v205 = [v21 objectForKeyedSubscript:v204];
            if (v205)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v205 longLongValue] & 0x8000000000000000) == 0)
              {
                v206 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_parsec];
                [v779 setObject:v205 forKeyedSubscript:v206];

                v41 = 1;
              }
            }

            v207 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_den_%s_%s", "ios", "siri"];
            v208 = [v21 objectForKeyedSubscript:v207];
            if (v208)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v208 longLongValue] & 0x8000000000000000) == 0)
              {
                v209 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_siri];
                [v779 setObject:v208 forKeyedSubscript:v209];

                v41 = 1;
              }
            }

            v210 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_den_%s_%s", "ios", "webkit"];
            v211 = [v21 objectForKeyedSubscript:v210];
            if (v211)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v211 longLongValue] & 0x8000000000000000) == 0)
              {
                v212 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_webkit];
                [v779 setObject:v211 forKeyedSubscript:v212];

                v41 = 1;
              }
            }

            v213 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_den_%s_%s", "ios", "coremedia_crabs"];
            v214 = [v21 objectForKeyedSubscript:v213];
            if (v214)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v214 longLongValue] & 0x8000000000000000) == 0)
              {
                v215 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_coremedia_crabs];
                [v779 setObject:v214 forKeyedSubscript:v215];

                v41 = 1;
              }
            }

            v216 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_den_%s_%s", "ios", "coremedia_hls"];
            v217 = [v21 objectForKeyedSubscript:v216];
            if (v217)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v217 longLongValue] & 0x8000000000000000) == 0)
              {
                v218 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_coremedia_hls];
                [v779 setObject:v217 forKeyedSubscript:v218];

                v41 = 1;
              }
            }

            v219 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_den_%s_%s", "ios", "cloudkit"];
            v220 = [v21 objectForKeyedSubscript:v219];
            if (v220)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v220 longLongValue] & 0x8000000000000000) == 0)
              {
                v221 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_cloudkit];
                [v779 setObject:v220 forKeyedSubscript:v221];

                v41 = 1;
              }
            }

            v222 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_den_%s_%s", "ios", "mmcs"];
            v223 = [v21 objectForKeyedSubscript:v222];
            if (v223)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v223 longLongValue] & 0x8000000000000000) == 0)
              {
                v224 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_mmcs];
                [v779 setObject:v223 forKeyedSubscript:v224];

                v41 = 1;
              }
            }

            v225 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_den_%s_%s", "ios", "mail"];
            v226 = [v21 objectForKeyedSubscript:v225];
            if (v226)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v226 longLongValue] & 0x8000000000000000) == 0)
              {
                v227 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_mail];
                [v779 setObject:v226 forKeyedSubscript:v227];

                v41 = 1;
              }
            }

            v228 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_den_%s_%s", "ios", "facetime"];
            v229 = [v21 objectForKeyedSubscript:v228];
            if (v229)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v229 longLongValue] & 0x8000000000000000) == 0)
              {
                v230 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_facetime];
                [v779 setObject:v229 forKeyedSubscript:v230];

                v41 = 1;
              }
            }

            v231 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_den_%s_%s", "ios", "adplatforms"];
            v232 = [v21 objectForKeyedSubscript:v231];
            if (v232)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v232 longLongValue] & 0x8000000000000000) == 0)
              {
                v233 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_adplatforms];
                [v779 setObject:v232 forKeyedSubscript:v233];

                v41 = 1;
              }
            }

            v234 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_den_%s_%s", "ios", "corelocation"];
            v235 = [v21 objectForKeyedSubscript:v234];
            if (v235)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v235 longLongValue] & 0x8000000000000000) == 0)
              {
                v236 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_corelocation];
                [v779 setObject:v235 forKeyedSubscript:v236];

                v41 = 1;
              }
            }

            v237 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_den_%s_%s", "ios", "airplay_sender"];
            v238 = [v21 objectForKeyedSubscript:v237];
            if (v238)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v238 longLongValue] & 0x8000000000000000) == 0)
              {
                v239 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_airplay_sender];
                [v779 setObject:v238 forKeyedSubscript:v239];

                v41 = 1;
              }
            }

            v240 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_den_%s_%s", "ios", "airplay_receiver"];
            v241 = [v21 objectForKeyedSubscript:v240];
            if (v241)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v241 longLongValue] & 0x8000000000000000) == 0)
              {
                v242 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_airplay_receiver];
                [v779 setObject:v241 forKeyedSubscript:v242];

                v41 = 1;
              }
            }

            v243 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_den_%s_%s", "ios", "maps"];
            v244 = [v21 objectForKeyedSubscript:v243];
            if (v244)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v244 longLongValue] & 0x8000000000000000) == 0)
              {
                v245 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_maps];
                [v779 setObject:v244 forKeyedSubscript:v245];

                v41 = 1;
              }
            }

            v246 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_den_%s_%s", "ios", "maps_internal"];
            v247 = [v21 objectForKeyedSubscript:v246];
            if (v247)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v247 longLongValue] & 0x8000000000000000) == 0)
              {
                v248 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_maps_internal];
                [v779 setObject:v247 forKeyedSubscript:v248];

                v41 = 1;
              }
            }

            v249 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_den_%s_%s", "ios", "maps_external"];
            v250 = [v21 objectForKeyedSubscript:v249];
            if (v250)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v250 longLongValue] & 0x8000000000000000) == 0)
              {
                v251 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_maps_external];
                [v779 setObject:v250 forKeyedSubscript:v251];

                v41 = 1;
              }
            }

            v252 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_den_%s_%s", "ios", "network_speed_test"];
            v253 = [v21 objectForKeyedSubscript:v252];
            if (v253)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v253 longLongValue] & 0x8000000000000000) == 0)
              {
                v254 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_network_speed_test];
                [v779 setObject:v253 forKeyedSubscript:v254];

                v41 = 1;
              }
            }

            v255 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_den_%s_%s", "ios", "captive"];
            v256 = [v21 objectForKeyedSubscript:v255];
            if (v256)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v256 longLongValue] & 0x8000000000000000) == 0)
              {
                v257 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_captive];
                [v779 setObject:v256 forKeyedSubscript:v257];

                v41 = 1;
              }
            }

            v258 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_den_%s_%s", "ios", "safe_browsing"];
            v259 = [v21 objectForKeyedSubscript:v258];
            if (v259)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v259 longLongValue] & 0x8000000000000000) == 0)
              {
                v260 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_safe_browsing];
                [v779 setObject:v259 forKeyedSubscript:v260];

                v41 = 1;
              }
            }

            v261 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_den_%s_%s", "ios", "dns"];
            v262 = [v21 objectForKeyedSubscript:v261];
            if (v262)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v262 longLongValue] & 0x8000000000000000) == 0)
              {
                v263 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_dns];
                [v779 setObject:v262 forKeyedSubscript:v263];

                v41 = 1;
              }
            }

            v264 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_den_%s_%s", "ios", "music"];
            v265 = [v21 objectForKeyedSubscript:v264];
            if (v265)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v265 longLongValue] & 0x8000000000000000) == 0)
              {
                v266 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_music];
                [v779 setObject:v265 forKeyedSubscript:v266];

                v41 = 1;
              }
            }

            v267 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_den_%s_%s", "ios", "battery"];
            v268 = [v21 objectForKeyedSubscript:v267];
            if (v268)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v268 longLongValue] & 0x8000000000000000) == 0)
              {
                v269 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_battery];
                [v779 setObject:v268 forKeyedSubscript:v269];

                v41 = 1;
              }
            }

            v270 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_den_%s_%s", "ios", "cloud_media_services"];
            v271 = [v21 objectForKeyedSubscript:v270];
            if (v271)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v271 longLongValue] & 0x8000000000000000) == 0)
              {
                v272 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_cloud_media_services];
                [v779 setObject:v271 forKeyedSubscript:v272];

                v41 = 1;
              }
            }

            v273 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_den_%s_%s", "ios", "avconference"];
            v274 = [v21 objectForKeyedSubscript:v273];
            if (v274)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v274 longLongValue] & 0x8000000000000000) == 0)
              {
                v275 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_avconference];
                [v779 setObject:v274 forKeyedSubscript:v275];

                v41 = 1;
              }
            }

            v276 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_den_%s_%s", "ios", "appstore"];
            v277 = [v21 objectForKeyedSubscript:v276];
            if (v277)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v277 longLongValue] & 0x8000000000000000) == 0)
              {
                v278 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_appstore];
                [v779 setObject:v277 forKeyedSubscript:v278];

                v41 = 1;
              }
            }

            v279 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_den_%s_%s", "ios", "telephony_service"];
            v280 = [v21 objectForKeyedSubscript:v279];
            if (v280)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v280 longLongValue] & 0x8000000000000000) == 0)
              {
                v281 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_telephony_service];
                [v779 setObject:v280 forKeyedSubscript:v281];

                v41 = 1;
              }
            }

            v282 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_den_%s_%s", "ios", "network_experiments"];
            v283 = [v21 objectForKeyedSubscript:v282];
            if (v283)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v283 longLongValue] & 0x8000000000000000) == 0)
              {
                v284 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_network_experiments];
                [v779 setObject:v283 forKeyedSubscript:v284];

                v41 = 1;
              }
            }

            v285 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_den_%s_%s", "ios", "network_perf"];
            v286 = [v21 objectForKeyedSubscript:v285];
            if (v286)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v286 longLongValue] & 0x8000000000000000) == 0)
              {
                v287 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_network_perf];
                [v779 setObject:v286 forKeyedSubscript:v287];

                v41 = 1;
              }
            }

            v288 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_den_%s_%s", "ios", "hotspot"];
            v289 = [v21 objectForKeyedSubscript:v288];
            if (v289)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v289 longLongValue] & 0x8000000000000000) == 0)
              {
                v290 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_hotspot];
                [v779 setObject:v289 forKeyedSubscript:v290];

                v41 = 1;
              }
            }

            v291 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_den_%s_%s", "ios", "weather"];
            v292 = [v21 objectForKeyedSubscript:v291];
            if (v292)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v292 longLongValue] & 0x8000000000000000) == 0)
              {
                v293 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_weather];
                [v779 setObject:v292 forKeyedSubscript:v293];

                v41 = 1;
              }
            }

            v294 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_den_%s_%s", "ios", "coordination"];
            v295 = [v21 objectForKeyedSubscript:v294];
            if (v295)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v295 longLongValue] & 0x8000000000000000) == 0)
              {
                v296 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_coordination];
                [v779 setObject:v295 forKeyedSubscript:v296];

                v41 = 1;
              }
            }

            v297 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_den_%s_%s", "ios", "appstore_jet"];
            v298 = [v21 objectForKeyedSubscript:v297];
            if (v298)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v298 longLongValue] & 0x8000000000000000) == 0)
              {
                v299 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_appstore_jet];
                [v779 setObject:v298 forKeyedSubscript:v299];

                v41 = 1;
              }
            }

            v300 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_den_%s_%s", "ios", "soundboard"];
            v301 = [v21 objectForKeyedSubscript:v300];
            if (v301)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v301 longLongValue] & 0x8000000000000000) == 0)
              {
                v302 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_soundboard];
                [v779 setObject:v301 forKeyedSubscript:v302];

                v41 = 1;
              }
            }

            v303 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_den_%s_%s", "ios", "aea"];
            v304 = [v21 objectForKeyedSubscript:v303];
            if (v304)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v304 longLongValue] & 0x8000000000000000) == 0)
              {
                v305 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_aea];
                [v779 setObject:v304 forKeyedSubscript:v305];

                v41 = 1;
              }
            }

            v306 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_den_%s_%s", "ios", "homekit"];
            v307 = [v21 objectForKeyedSubscript:v306];
            if (v307)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v307 longLongValue] & 0x8000000000000000) == 0)
              {
                v308 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_homekit];
                [v779 setObject:v307 forKeyedSubscript:v308];

                v41 = 1;
              }
            }

            v309 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_den_%s_%s", "ios", "wifi"];
            v310 = [v21 objectForKeyedSubscript:v309];
            if (v310)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v310 longLongValue] & 0x8000000000000000) == 0)
              {
                v311 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_wifi];
                [v779 setObject:v310 forKeyedSubscript:v311];

                v41 = 1;
              }
            }

            v312 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_den_%s_%s", "ios", "app_launch"];
            v313 = [v21 objectForKeyedSubscript:v312];
            if (v313)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v313 longLongValue] & 0x8000000000000000) == 0)
              {
                v314 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_app_launch];
                [v779 setObject:v313 forKeyedSubscript:v314];

                v41 = 1;
              }
            }

            v315 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_den_%s_%s", "ios", "ams"];
            v316 = [v21 objectForKeyedSubscript:v315];
            if (v316)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v316 longLongValue] & 0x8000000000000000) == 0)
              {
                v317 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_ams];
                [v779 setObject:v316 forKeyedSubscript:v317];

                v41 = 1;
              }
            }

            v318 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_den_%s_%s", "ios", "reve"];
            v319 = [v21 objectForKeyedSubscript:v318];
            if (v319)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v319 longLongValue] & 0x8000000000000000) == 0)
              {
                v320 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_reve];
                [v779 setObject:v319 forKeyedSubscript:v320];

                v41 = 1;
              }
            }

            v321 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_den_%s_%s", "ios", "network_quality"];
            v322 = [v21 objectForKeyedSubscript:v321];
            if (v322)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v322 longLongValue] & 0x8000000000000000) == 0)
              {
                v323 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_network_quality];
                [v779 setObject:v322 forKeyedSubscript:v323];

                v41 = 1;
              }
            }

            v324 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_den_%s_%s", "ios", "news"];
            v325 = [v21 objectForKeyedSubscript:v324];
            if (v325)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v325 longLongValue] & 0x8000000000000000) == 0)
              {
                v326 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_news];
                [v779 setObject:v325 forKeyedSubscript:v326];

                v41 = 1;
              }
            }

            v327 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_den_%s_%s", "ios", "cloud_compute"];
            v328 = [v21 objectForKeyedSubscript:v327];
            if (v328)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v328 longLongValue] & 0x8000000000000000) == 0)
              {
                v329 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_cloud_compute];
                [v779 setObject:v328 forKeyedSubscript:v329];

                v41 = 1;
              }
            }

            v330 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_den_%s_%s", "ios", "push"];
            v331 = [v21 objectForKeyedSubscript:v330];
            if (v331)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v331 longLongValue] & 0x8000000000000000) == 0)
              {
                v332 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_push];
                [v779 setObject:v331 forKeyedSubscript:v332];

                v41 = 1;
              }
            }

            v333 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_den_%s_%s", "ios", "nw_actor_system"];
            v334 = [v21 objectForKeyedSubscript:v333];
            if (v334)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v334 longLongValue] & 0x8000000000000000) == 0)
              {
                v335 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_nw_actor_system];
                [v779 setObject:v334 forKeyedSubscript:v335];

                v41 = 1;
              }
            }

            v336 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_den_%s_%s", "ios", "app_intents_services"];
            v337 = [v21 objectForKeyedSubscript:v336];
            if (v337)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v337 longLongValue] & 0x8000000000000000) == 0)
              {
                v338 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_app_intents_services];
                [v779 setObject:v337 forKeyedSubscript:v338];

                v41 = 1;
              }
            }

            v339 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_den_%s_%s", "ios", "stocks"];
            v340 = [v21 objectForKeyedSubscript:v339];
            if (v340)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v340 longLongValue] & 0x8000000000000000) == 0)
              {
                v341 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_stocks];
                [v779 setObject:v340 forKeyedSubscript:v341];

                v41 = 1;
              }
            }

            v342 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_den_%s_%s", "ios", "tv_app"];
            v343 = [v21 objectForKeyedSubscript:v342];
            if (v343)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v343 longLongValue] & 0x8000000000000000) == 0)
              {
                v344 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_tv_app];
                [v779 setObject:v343 forKeyedSubscript:v344];

                v41 = 1;
              }
            }

            v345 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_den_%s_%s", "ios", "rapport"];
            v346 = [v21 objectForKeyedSubscript:v345];
            if (v346)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v346 longLongValue] & 0x8000000000000000) == 0)
              {
                v347 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_rapport];
                [v779 setObject:v346 forKeyedSubscript:v347];

                v41 = 1;
              }
            }

            v348 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"activity_rate_den_%s_%s", "ios", "mobile_asset"];
            v349 = [v21 objectForKeyedSubscript:v348];
            if (v349)
            {
              objc_opt_class();
              v350 = v14;
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v349 longLongValue] & 0x8000000000000000) == 0)
              {
                v351 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_mobile_asset];
                [v779 setObject:v349 forKeyedSubscript:v351];

                v41 = 1;
              }
            }

            else
            {
              v350 = v14;
            }

            v352 = v41;

            v353 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_destination];
            v354 = [v21 objectForKeyedSubscript:v353];

            if (v354)
            {
              objc_opt_class();
              v355 = v779;
              v356 = v352;
              if (objc_opt_isKindOfClass())
              {
                v357 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_destination];
                [v779 setObject:v354 forKeyedSubscript:v357];

                v356 = 1;
              }
            }

            else
            {
              v355 = v779;
              v356 = v352;
            }

            v358 = objc_alloc(MEMORY[0x1E696AEC0]);
            v359 = [v358 initWithFormat:@"%s_%s", nw_setting_activity_default_numerator_old1, "ios"];
            v360 = [v21 objectForKeyedSubscript:v359];
            v14 = v350;
            if (v360)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v361 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_default_numerator_old1];
                [v355 setObject:v360 forKeyedSubscript:v361];

                v356 = 1;
              }
            }

            v362 = objc_alloc(MEMORY[0x1E696AEC0]);
            v363 = [v362 initWithFormat:@"%s_%s", nw_setting_activity_default_denominator_old1, "ios"];
            v364 = [v21 objectForKeyedSubscript:v363];
            if (v364)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v365 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_default_denominator_old1];
                [v355 setObject:v364 forKeyedSubscript:v365];

                v356 = 1;
              }
            }

            v366 = objc_alloc(MEMORY[0x1E696AEC0]);
            v367 = [v366 initWithFormat:@"%s_%s", nw_setting_activity_default_numerator, "ios"];
            v368 = [v21 objectForKeyedSubscript:v367];
            if (v368)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v369 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_default_numerator];
                [v355 setObject:v368 forKeyedSubscript:v369];

                v356 = 1;
              }
            }

            v370 = objc_alloc(MEMORY[0x1E696AEC0]);
            v371 = [v370 initWithFormat:@"%s_%s", nw_setting_activity_default_denominator, "ios"];
            v372 = [v21 objectForKeyedSubscript:v371];
            if (v372)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v373 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_default_denominator];
                [v355 setObject:v372 forKeyedSubscript:v373];

                v356 = 1;
              }
            }

            v374 = objc_alloc(MEMORY[0x1E696AEC0]);
            v375 = [v374 initWithFormat:@"%s_%s", nw_setting_statistics_report_numerator, "ios"];
            v376 = [v21 objectForKeyedSubscript:v375];
            if (v376)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v377 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_statistics_report_numerator];
                [v355 setObject:v376 forKeyedSubscript:v377];

                v356 = 1;
              }
            }

            v378 = objc_alloc(MEMORY[0x1E696AEC0]);
            v379 = [v378 initWithFormat:@"%s_%s", nw_setting_statistics_report_denominator, "ios"];
            v380 = [v21 objectForKeyedSubscript:v379];
            if (v380)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v381 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_statistics_report_denominator];
                [v355 setObject:v380 forKeyedSubscript:v381];

                v356 = 1;
              }
            }

            v382 = objc_alloc(MEMORY[0x1E696AEC0]);
            v383 = [v382 initWithFormat:@"%s_%s", nw_setting_disable_svcb, "ios"];
            v384 = [v21 objectForKeyedSubscript:v383];
            if (v384)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v385 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_disable_svcb];
                [v355 setObject:v384 forKeyedSubscript:v385];

                v356 = 1;
              }
            }

            v386 = objc_alloc(MEMORY[0x1E696AEC0]);
            v387 = [v386 initWithFormat:@"%s_%s", nw_setting_disable_svcb_router, "ios"];
            v388 = [v21 objectForKeyedSubscript:v387];
            if (v388)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v389 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_disable_svcb_router];
                [v355 setObject:v388 forKeyedSubscript:v389];

                v356 = 1;
              }
            }

            v390 = objc_alloc(MEMORY[0x1E696AEC0]);
            v391 = [v390 initWithFormat:@"%s_%s", nw_setting_activity_elevated_numerator, "ios"];
            v392 = [v21 objectForKeyedSubscript:v391];
            if (v392)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v393 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_elevated_numerator];
                [v355 setObject:v392 forKeyedSubscript:v393];

                v356 = 1;
              }
            }

            v394 = objc_alloc(MEMORY[0x1E696AEC0]);
            v395 = [v394 initWithFormat:@"%s_%s", nw_setting_activity_elevated_denominator, "ios"];
            v396 = [v21 objectForKeyedSubscript:v395];
            if (v396)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v397 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_elevated_denominator];
                [v355 setObject:v396 forKeyedSubscript:v397];

                v356 = 1;
              }
            }

            v398 = objc_alloc(MEMORY[0x1E696AEC0]);
            v399 = [v398 initWithFormat:@"%s_%s", nw_setting_disable_quic_old1, "ios"];
            v400 = [v21 objectForKeyedSubscript:v399];
            if (v400)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v401 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_disable_quic_old1];
                [v355 setObject:v400 forKeyedSubscript:v401];

                v356 = 1;
              }
            }

            v402 = objc_alloc(MEMORY[0x1E696AEC0]);
            v403 = [v402 initWithFormat:@"%s_%s", nw_setting_disable_quic_race_old1, "ios"];
            v404 = [v21 objectForKeyedSubscript:v403];
            if (v404)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v405 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_disable_quic_race_old1];
                [v355 setObject:v404 forKeyedSubscript:v405];

                v356 = 1;
              }
            }

            v406 = objc_alloc(MEMORY[0x1E696AEC0]);
            v407 = [v406 initWithFormat:@"%s_%s", nw_setting_enable_quic_numerator_old1, "ios"];
            v408 = [v21 objectForKeyedSubscript:v407];
            if (v408)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v409 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_quic_numerator_old1];
                [v355 setObject:v408 forKeyedSubscript:v409];

                v356 = 1;
              }
            }

            v410 = objc_alloc(MEMORY[0x1E696AEC0]);
            v411 = [v410 initWithFormat:@"%s_%s", nw_setting_enable_quic_denominator_old1, "ios"];
            v412 = [v21 objectForKeyedSubscript:v411];
            if (v412)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v413 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_quic_denominator_old1];
                [v355 setObject:v412 forKeyedSubscript:v413];

                v356 = 1;
              }
            }

            v414 = objc_alloc(MEMORY[0x1E696AEC0]);
            v415 = [v414 initWithFormat:@"%s_%s", nw_setting_disable_quic_old2, "ios"];
            v416 = [v21 objectForKeyedSubscript:v415];
            if (v416)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v417 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_disable_quic_old2];
                [v355 setObject:v416 forKeyedSubscript:v417];

                v356 = 1;
              }
            }

            v418 = objc_alloc(MEMORY[0x1E696AEC0]);
            v419 = [v418 initWithFormat:@"%s_%s", nw_setting_disable_quic_race_old2, "ios"];
            v420 = [v21 objectForKeyedSubscript:v419];
            if (v420)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v421 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_disable_quic_race_old2];
                [v355 setObject:v420 forKeyedSubscript:v421];

                v356 = 1;
              }
            }

            v422 = objc_alloc(MEMORY[0x1E696AEC0]);
            v423 = [v422 initWithFormat:@"%s_%s", nw_setting_enable_quic_numerator_old2, "ios"];
            v424 = [v21 objectForKeyedSubscript:v423];
            if (v424)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v425 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_quic_numerator_old2];
                [v355 setObject:v424 forKeyedSubscript:v425];

                v356 = 1;
              }
            }

            v426 = objc_alloc(MEMORY[0x1E696AEC0]);
            v427 = [v426 initWithFormat:@"%s_%s", nw_setting_enable_quic_denominator_old2, "ios"];
            v428 = [v21 objectForKeyedSubscript:v427];
            if (v428)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v429 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_quic_denominator_old2];
                [v355 setObject:v428 forKeyedSubscript:v429];

                v356 = 1;
              }
            }

            v430 = objc_alloc(MEMORY[0x1E696AEC0]);
            v431 = [v430 initWithFormat:@"%s_%s", nw_setting_disable_quic_old3, "ios"];
            v432 = [v21 objectForKeyedSubscript:v431];
            if (v432)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v433 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_disable_quic_old3];
                [v355 setObject:v432 forKeyedSubscript:v433];

                v356 = 1;
              }
            }

            v434 = objc_alloc(MEMORY[0x1E696AEC0]);
            v435 = [v434 initWithFormat:@"%s_%s", nw_setting_disable_quic_race_old3, "ios"];
            v436 = [v21 objectForKeyedSubscript:v435];
            if (v436)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v437 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_disable_quic_race_old3];
                [v355 setObject:v436 forKeyedSubscript:v437];

                v356 = 1;
              }
            }

            v438 = objc_alloc(MEMORY[0x1E696AEC0]);
            v439 = [v438 initWithFormat:@"%s_%s", nw_setting_enable_quic_numerator_old3, "ios"];
            v440 = [v21 objectForKeyedSubscript:v439];
            if (v440)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v441 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_quic_numerator_old3];
                [v355 setObject:v440 forKeyedSubscript:v441];

                v356 = 1;
              }
            }

            v442 = objc_alloc(MEMORY[0x1E696AEC0]);
            v443 = [v442 initWithFormat:@"%s_%s", nw_setting_enable_quic_denominator_old3, "ios"];
            v444 = [v21 objectForKeyedSubscript:v443];
            if (v444)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v445 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_quic_denominator_old3];
                [v355 setObject:v444 forKeyedSubscript:v445];

                v356 = 1;
              }
            }

            v446 = objc_alloc(MEMORY[0x1E696AEC0]);
            v447 = [v446 initWithFormat:@"%s_%s", nw_setting_disable_quic_old4, "ios"];
            v448 = [v21 objectForKeyedSubscript:v447];
            if (v448)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v449 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_disable_quic_old4];
                [v355 setObject:v448 forKeyedSubscript:v449];

                v356 = 1;
              }
            }

            v450 = objc_alloc(MEMORY[0x1E696AEC0]);
            v451 = [v450 initWithFormat:@"%s_%s", nw_setting_disable_quic_race_old4, "ios"];
            v452 = [v21 objectForKeyedSubscript:v451];
            if (v452)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v453 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_disable_quic_race_old4];
                [v355 setObject:v452 forKeyedSubscript:v453];

                v356 = 1;
              }
            }

            v454 = objc_alloc(MEMORY[0x1E696AEC0]);
            v455 = [v454 initWithFormat:@"%s_%s", nw_setting_enable_quic_numerator_old4, "ios"];
            v456 = [v21 objectForKeyedSubscript:v455];
            if (v456)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v457 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_quic_numerator_old4];
                [v355 setObject:v456 forKeyedSubscript:v457];

                v356 = 1;
              }
            }

            v458 = objc_alloc(MEMORY[0x1E696AEC0]);
            v459 = [v458 initWithFormat:@"%s_%s", nw_setting_enable_quic_denominator_old4, "ios"];
            v460 = [v21 objectForKeyedSubscript:v459];
            if (v460)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v461 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_quic_denominator_old4];
                [v355 setObject:v460 forKeyedSubscript:v461];

                v356 = 1;
              }
            }

            v462 = objc_alloc(MEMORY[0x1E696AEC0]);
            v463 = [v462 initWithFormat:@"%s_%s", nw_setting_disable_quic_old5, "ios"];
            v464 = [v21 objectForKeyedSubscript:v463];
            if (v464)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v465 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_disable_quic_old5];
                [v355 setObject:v464 forKeyedSubscript:v465];

                v356 = 1;
              }
            }

            v466 = objc_alloc(MEMORY[0x1E696AEC0]);
            v467 = [v466 initWithFormat:@"%s_%s", nw_setting_disable_quic_race_old5, "ios"];
            v468 = [v21 objectForKeyedSubscript:v467];
            if (v468)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v469 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_disable_quic_race_old5];
                [v355 setObject:v468 forKeyedSubscript:v469];

                v356 = 1;
              }
            }

            v470 = objc_alloc(MEMORY[0x1E696AEC0]);
            v471 = [v470 initWithFormat:@"%s_%s", nw_setting_enable_quic_numerator_old5, "ios"];
            v472 = [v21 objectForKeyedSubscript:v471];
            if (v472)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v473 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_quic_numerator_old5];
                [v355 setObject:v472 forKeyedSubscript:v473];

                v356 = 1;
              }
            }

            v474 = objc_alloc(MEMORY[0x1E696AEC0]);
            v475 = [v474 initWithFormat:@"%s_%s", nw_setting_enable_quic_denominator_old5, "ios"];
            v476 = [v21 objectForKeyedSubscript:v475];
            if (v476)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v477 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_quic_denominator_old5];
                [v355 setObject:v476 forKeyedSubscript:v477];

                v356 = 1;
              }
            }

            v478 = objc_alloc(MEMORY[0x1E696AEC0]);
            v479 = [v478 initWithFormat:@"%s_%s", nw_setting_disable_quic_old6, "ios"];
            v480 = [v21 objectForKeyedSubscript:v479];
            if (v480)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v481 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_disable_quic_old6];
                [v355 setObject:v480 forKeyedSubscript:v481];

                v356 = 1;
              }
            }

            v482 = objc_alloc(MEMORY[0x1E696AEC0]);
            v483 = [v482 initWithFormat:@"%s_%s", nw_setting_disable_quic_race_old6, "ios"];
            v484 = [v21 objectForKeyedSubscript:v483];
            if (v484)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v485 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_disable_quic_race_old6];
                [v355 setObject:v484 forKeyedSubscript:v485];

                v356 = 1;
              }
            }

            v486 = objc_alloc(MEMORY[0x1E696AEC0]);
            v487 = [v486 initWithFormat:@"%s_%s", nw_setting_enable_quic_numerator_old6, "ios"];
            v488 = [v21 objectForKeyedSubscript:v487];
            if (v488)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v489 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_quic_numerator_old6];
                [v355 setObject:v488 forKeyedSubscript:v489];

                v356 = 1;
              }
            }

            v490 = objc_alloc(MEMORY[0x1E696AEC0]);
            v491 = [v490 initWithFormat:@"%s_%s", nw_setting_enable_quic_denominator_old6, "ios"];
            v492 = [v21 objectForKeyedSubscript:v491];
            if (v492)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v493 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_quic_denominator_old6];
                [v355 setObject:v492 forKeyedSubscript:v493];

                v356 = 1;
              }
            }

            v494 = objc_alloc(MEMORY[0x1E696AEC0]);
            v495 = [v494 initWithFormat:@"%s_%s", nw_setting_disable_quic_old7, "ios"];
            v496 = [v21 objectForKeyedSubscript:v495];
            if (v496)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v497 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_disable_quic_old7];
                [v355 setObject:v496 forKeyedSubscript:v497];

                v356 = 1;
              }
            }

            v498 = objc_alloc(MEMORY[0x1E696AEC0]);
            v499 = [v498 initWithFormat:@"%s_%s", nw_setting_disable_quic_race_old7, "ios"];
            v500 = [v21 objectForKeyedSubscript:v499];
            if (v500)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v501 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_disable_quic_race_old7];
                [v355 setObject:v500 forKeyedSubscript:v501];

                v356 = 1;
              }
            }

            v502 = objc_alloc(MEMORY[0x1E696AEC0]);
            v503 = [v502 initWithFormat:@"%s_%s", nw_setting_enable_quic_numerator_old7, "ios"];
            v504 = [v21 objectForKeyedSubscript:v503];
            if (v504)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v505 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_quic_numerator_old7];
                [v355 setObject:v504 forKeyedSubscript:v505];

                v356 = 1;
              }
            }

            v506 = objc_alloc(MEMORY[0x1E696AEC0]);
            v507 = [v506 initWithFormat:@"%s_%s", nw_setting_enable_quic_denominator_old7, "ios"];
            v508 = [v21 objectForKeyedSubscript:v507];
            if (v508)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v509 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_quic_denominator_old7];
                [v355 setObject:v508 forKeyedSubscript:v509];

                v356 = 1;
              }
            }

            v510 = objc_alloc(MEMORY[0x1E696AEC0]);
            v511 = [v510 initWithFormat:@"%s_%s", nw_setting_disable_quic_old8, "ios"];
            v512 = [v21 objectForKeyedSubscript:v511];
            if (v512)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v513 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_disable_quic_old8];
                [v355 setObject:v512 forKeyedSubscript:v513];

                v356 = 1;
              }
            }

            v514 = objc_alloc(MEMORY[0x1E696AEC0]);
            v515 = [v514 initWithFormat:@"%s_%s", nw_setting_disable_quic_race_old8, "ios"];
            v516 = [v21 objectForKeyedSubscript:v515];
            if (v516)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v517 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_disable_quic_race_old8];
                [v355 setObject:v516 forKeyedSubscript:v517];

                v356 = 1;
              }
            }

            v518 = objc_alloc(MEMORY[0x1E696AEC0]);
            v519 = [v518 initWithFormat:@"%s_%s", nw_setting_enable_quic_numerator_old8, "ios"];
            v520 = [v21 objectForKeyedSubscript:v519];
            if (v520)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v521 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_quic_numerator_old8];
                [v355 setObject:v520 forKeyedSubscript:v521];

                v356 = 1;
              }
            }

            v522 = objc_alloc(MEMORY[0x1E696AEC0]);
            v523 = [v522 initWithFormat:@"%s_%s", nw_setting_enable_quic_denominator_old8, "ios"];
            v524 = [v21 objectForKeyedSubscript:v523];
            if (v524)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v525 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_quic_denominator_old8];
                [v355 setObject:v524 forKeyedSubscript:v525];

                v356 = 1;
              }
            }

            v526 = objc_alloc(MEMORY[0x1E696AEC0]);
            v527 = [v526 initWithFormat:@"%s_%s", nw_setting_disable_quic, "ios"];
            v528 = [v21 objectForKeyedSubscript:v527];
            if (v528)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v529 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_disable_quic];
                [v355 setObject:v528 forKeyedSubscript:v529];

                v356 = 1;
              }
            }

            v530 = objc_alloc(MEMORY[0x1E696AEC0]);
            v531 = [v530 initWithFormat:@"%s_%s", nw_setting_disable_quic_race, "ios"];
            v532 = [v21 objectForKeyedSubscript:v531];
            if (v532)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v533 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_disable_quic_race];
                [v355 setObject:v532 forKeyedSubscript:v533];

                v356 = 1;
              }
            }

            v534 = objc_alloc(MEMORY[0x1E696AEC0]);
            v535 = [v534 initWithFormat:@"%s_%s", nw_setting_enable_quic_numerator, "ios"];
            v536 = [v21 objectForKeyedSubscript:v535];
            if (v536)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v537 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_quic_numerator];
                [v355 setObject:v536 forKeyedSubscript:v537];

                v356 = 1;
              }
            }

            v538 = objc_alloc(MEMORY[0x1E696AEC0]);
            v539 = [v538 initWithFormat:@"%s_%s", nw_setting_enable_quic_denominator, "ios"];
            v540 = [v21 objectForKeyedSubscript:v539];
            if (v540)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v541 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_quic_denominator];
                [v355 setObject:v540 forKeyedSubscript:v541];

                v356 = 1;
              }
            }

            v542 = objc_alloc(MEMORY[0x1E696AEC0]);
            v543 = [v542 initWithFormat:@"%s_%s", nw_setting_ech_probe_numerator, "ios"];
            v544 = [v21 objectForKeyedSubscript:v543];
            if (v544)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v545 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_ech_probe_numerator];
                [v355 setObject:v544 forKeyedSubscript:v545];

                v356 = 1;
              }
            }

            v546 = objc_alloc(MEMORY[0x1E696AEC0]);
            v547 = [v546 initWithFormat:@"%s_%s", nw_setting_ech_probe_denominator, "ios"];
            v548 = [v21 objectForKeyedSubscript:v547];
            if (v548)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v549 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_ech_probe_denominator];
                [v355 setObject:v548 forKeyedSubscript:v549];

                v356 = 1;
              }
            }

            v550 = objc_alloc(MEMORY[0x1E696AEC0]);
            v551 = [v550 initWithFormat:@"%s_%s", nw_setting_ech_canary_numerator, "ios"];
            v552 = [v21 objectForKeyedSubscript:v551];
            if (v552)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v553 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_ech_canary_numerator];
                [v355 setObject:v552 forKeyedSubscript:v553];

                v356 = 1;
              }
            }

            v554 = objc_alloc(MEMORY[0x1E696AEC0]);
            v555 = [v554 initWithFormat:@"%s_%s", nw_setting_ech_canary_denominator, "ios"];
            v556 = [v21 objectForKeyedSubscript:v555];
            if (v556)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v557 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_ech_canary_denominator];
                [v355 setObject:v556 forKeyedSubscript:v557];

                v356 = 1;
              }
            }

            v558 = objc_alloc(MEMORY[0x1E696AEC0]);
            v559 = [v558 initWithFormat:@"%s_%s", nw_setting_flow_report_numerator, "ios"];
            v560 = [v21 objectForKeyedSubscript:v559];
            if (v560)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v561 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_flow_report_numerator];
                [v355 setObject:v560 forKeyedSubscript:v561];

                v356 = 1;
              }
            }

            v562 = objc_alloc(MEMORY[0x1E696AEC0]);
            v563 = [v562 initWithFormat:@"%s_%s", nw_setting_flow_report_denominator, "ios"];
            v564 = [v21 objectForKeyedSubscript:v563];
            if (v564)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v565 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_flow_report_denominator];
                [v355 setObject:v564 forKeyedSubscript:v565];

                v356 = 1;
              }
            }

            v566 = objc_alloc(MEMORY[0x1E696AEC0]);
            v567 = [v566 initWithFormat:@"%s_%s", nw_setting_proxy_race_report_numerator, "ios"];
            v568 = [v21 objectForKeyedSubscript:v567];
            if (v568)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v569 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_proxy_race_report_numerator];
                [v355 setObject:v568 forKeyedSubscript:v569];

                v356 = 1;
              }
            }

            v570 = objc_alloc(MEMORY[0x1E696AEC0]);
            v571 = [v570 initWithFormat:@"%s_%s", nw_setting_proxy_race_report_denominator, "ios"];
            v572 = [v21 objectForKeyedSubscript:v571];
            if (v572)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v573 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_proxy_race_report_denominator];
                [v355 setObject:v572 forKeyedSubscript:v573];

                v356 = 1;
              }
            }

            v574 = objc_alloc(MEMORY[0x1E696AEC0]);
            v575 = [v574 initWithFormat:@"%s_%s", nw_setting_enable_l4s_numerator_old1, "ios"];
            v576 = [v21 objectForKeyedSubscript:v575];
            if (v576)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v577 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_l4s_numerator_old1];
                [v355 setObject:v576 forKeyedSubscript:v577];

                v356 = 1;
              }
            }

            v578 = objc_alloc(MEMORY[0x1E696AEC0]);
            v579 = [v578 initWithFormat:@"%s_%s", nw_setting_enable_l4s_denominator_old1, "ios"];
            v580 = [v21 objectForKeyedSubscript:v579];
            if (v580)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v581 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_l4s_denominator_old1];
                [v355 setObject:v580 forKeyedSubscript:v581];

                v356 = 1;
              }
            }

            v582 = objc_alloc(MEMORY[0x1E696AEC0]);
            v583 = [v582 initWithFormat:@"%s_%s", nw_setting_enable_l4s_numerator, "ios"];
            v584 = [v21 objectForKeyedSubscript:v583];
            if (v584)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v585 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_l4s_numerator];
                [v355 setObject:v584 forKeyedSubscript:v585];

                v356 = 1;
              }
            }

            v586 = objc_alloc(MEMORY[0x1E696AEC0]);
            v587 = [v586 initWithFormat:@"%s_%s", nw_setting_enable_l4s_denominator, "ios"];
            v588 = [v21 objectForKeyedSubscript:v587];
            if (v588)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v589 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_l4s_denominator];
                [v355 setObject:v588 forKeyedSubscript:v589];

                v356 = 1;
              }
            }

            v590 = objc_alloc(MEMORY[0x1E696AEC0]);
            v591 = [v590 initWithFormat:@"%s_%s", nw_setting_enable_quic_l4s_numerator, "ios"];
            v592 = [v21 objectForKeyedSubscript:v591];
            if (v592)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v593 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_quic_l4s_numerator];
                [v355 setObject:v592 forKeyedSubscript:v593];

                v356 = 1;
              }
            }

            v594 = objc_alloc(MEMORY[0x1E696AEC0]);
            v595 = [v594 initWithFormat:@"%s_%s", nw_setting_enable_quic_l4s_denominator, "ios"];
            v596 = [v21 objectForKeyedSubscript:v595];
            if (v596)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v597 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_quic_l4s_denominator];
                [v355 setObject:v596 forKeyedSubscript:v597];

                v356 = 1;
              }
            }

            v598 = objc_alloc(MEMORY[0x1E696AEC0]);
            v599 = [v598 initWithFormat:@"%s_%s", nw_setting_enable_accurate_ecn_numerator_old1, "ios"];
            v600 = [v21 objectForKeyedSubscript:v599];
            if (v600)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v601 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_accurate_ecn_numerator_old1];
                [v355 setObject:v600 forKeyedSubscript:v601];

                v356 = 1;
              }
            }

            v602 = objc_alloc(MEMORY[0x1E696AEC0]);
            v603 = [v602 initWithFormat:@"%s_%s", nw_setting_enable_accurate_ecn_denominator_old1, "ios"];
            v604 = [v21 objectForKeyedSubscript:v603];
            if (v604)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v605 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_accurate_ecn_denominator_old1];
                [v355 setObject:v604 forKeyedSubscript:v605];

                v356 = 1;
              }
            }

            v606 = objc_alloc(MEMORY[0x1E696AEC0]);
            v607 = [v606 initWithFormat:@"%s_%s", nw_setting_enable_accurate_ecn_numerator, "ios"];
            v608 = [v21 objectForKeyedSubscript:v607];
            if (v608)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v609 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_accurate_ecn_numerator];
                [v355 setObject:v608 forKeyedSubscript:v609];

                v356 = 1;
              }
            }

            v610 = objc_alloc(MEMORY[0x1E696AEC0]);
            v611 = [v610 initWithFormat:@"%s_%s", nw_setting_enable_accurate_ecn_denominator, "ios"];
            v612 = [v21 objectForKeyedSubscript:v611];
            if (v612)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v613 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_accurate_ecn_denominator];
                [v355 setObject:v612 forKeyedSubscript:v613];

                v356 = 1;
              }
            }

            v614 = objc_alloc(MEMORY[0x1E696AEC0]);
            v615 = [v614 initWithFormat:@"%s_%s", nw_setting_enable_tcp_l4s_numerator_old1, "ios"];
            v616 = [v21 objectForKeyedSubscript:v615];
            if (v616)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v617 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_tcp_l4s_numerator_old1];
                [v355 setObject:v616 forKeyedSubscript:v617];

                v356 = 1;
              }
            }

            v618 = objc_alloc(MEMORY[0x1E696AEC0]);
            v619 = [v618 initWithFormat:@"%s_%s", nw_setting_enable_tcp_l4s_denominator_old1, "ios"];
            v620 = [v21 objectForKeyedSubscript:v619];
            if (v620)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v621 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_tcp_l4s_denominator_old1];
                [v355 setObject:v620 forKeyedSubscript:v621];

                v356 = 1;
              }
            }

            v622 = objc_alloc(MEMORY[0x1E696AEC0]);
            v623 = [v622 initWithFormat:@"%s_%s", nw_setting_enable_tcp_l4s_numerator, "ios"];
            v624 = [v21 objectForKeyedSubscript:v623];
            if (v624)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v625 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_tcp_l4s_numerator];
                [v355 setObject:v624 forKeyedSubscript:v625];

                v356 = 1;
              }
            }

            v626 = objc_alloc(MEMORY[0x1E696AEC0]);
            v627 = [v626 initWithFormat:@"%s_%s", nw_setting_enable_tcp_l4s_denominator, "ios"];
            v628 = [v21 objectForKeyedSubscript:v627];
            if (v628)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v629 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_tcp_l4s_denominator];
                [v355 setObject:v628 forKeyedSubscript:v629];

                v356 = 1;
              }
            }

            v630 = objc_alloc(MEMORY[0x1E696AEC0]);
            v631 = [v630 initWithFormat:@"%s_%s", nw_setting_disable_l4s_aqm, "ios"];
            v632 = [v21 objectForKeyedSubscript:v631];
            if (v632)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v633 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_disable_l4s_aqm];
                [v355 setObject:v632 forKeyedSubscript:v633];

                v356 = 1;
              }
            }

            v634 = objc_alloc(MEMORY[0x1E696AEC0]);
            v635 = [v634 initWithFormat:@"%s_%s", nw_setting_enable_unified_http_numerator, "ios"];
            v636 = [v21 objectForKeyedSubscript:v635];
            if (v636)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v637 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_unified_http_numerator];
                [v355 setObject:v636 forKeyedSubscript:v637];

                v356 = 1;
              }
            }

            v638 = objc_alloc(MEMORY[0x1E696AEC0]);
            v639 = [v638 initWithFormat:@"%s_%s", nw_setting_enable_unified_http_denominator, "ios"];
            v640 = [v21 objectForKeyedSubscript:v639];
            if (v640)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v641 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_unified_http_denominator];
                [v355 setObject:v640 forKeyedSubscript:v641];

                v356 = 1;
              }
            }

            v642 = objc_alloc(MEMORY[0x1E696AEC0]);
            v643 = [v642 initWithFormat:@"%s_%s", nw_setting_enable_unified_http_numerator_old, "ios"];
            v644 = [v21 objectForKeyedSubscript:v643];
            if (v644)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v645 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_unified_http_numerator_old];
                [v355 setObject:v644 forKeyedSubscript:v645];

                v356 = 1;
              }
            }

            v646 = objc_alloc(MEMORY[0x1E696AEC0]);
            v647 = [v646 initWithFormat:@"%s_%s", nw_setting_enable_unified_http_denominator_old, "ios"];
            v648 = [v21 objectForKeyedSubscript:v647];
            if (v648)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v649 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_unified_http_denominator_old];
                [v355 setObject:v648 forKeyedSubscript:v649];

                v356 = 1;
              }
            }

            v650 = objc_alloc(MEMORY[0x1E696AEC0]);
            v651 = [v650 initWithFormat:@"%s_%s", nw_setting_pqtls_probe_enabled, "ios"];
            v652 = [v21 objectForKeyedSubscript:v651];
            if (v652)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v653 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_pqtls_probe_enabled];
                [v355 setObject:v652 forKeyedSubscript:v653];

                v356 = 1;
              }
            }

            v654 = objc_alloc(MEMORY[0x1E696AEC0]);
            v655 = [v654 initWithFormat:@"%s_%s", nw_setting_pqtls_probe_numerator, "ios"];
            v656 = [v21 objectForKeyedSubscript:v655];
            if (v656)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v657 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_pqtls_probe_numerator];
                [v355 setObject:v656 forKeyedSubscript:v657];

                v356 = 1;
              }
            }

            v658 = objc_alloc(MEMORY[0x1E696AEC0]);
            v659 = [v658 initWithFormat:@"%s_%s", nw_setting_pqtls_probe_denominator, "ios"];
            v660 = [v21 objectForKeyedSubscript:v659];
            if (v660)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v661 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_pqtls_probe_denominator];
                [v355 setObject:v660 forKeyedSubscript:v661];

                v356 = 1;
              }
            }

            v662 = objc_alloc(MEMORY[0x1E696AEC0]);
            v663 = [v662 initWithFormat:@"%s_%s", nw_setting_enable_pqtls_old, "ios"];
            v664 = [v21 objectForKeyedSubscript:v663];
            if (v664)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v665 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_pqtls_old];
                [v355 setObject:v664 forKeyedSubscript:v665];

                v356 = 1;
              }
            }

            v666 = objc_alloc(MEMORY[0x1E696AEC0]);
            v667 = [v666 initWithFormat:@"%s_%s", nw_setting_enable_pqtls_numerator_old, "ios"];
            v668 = [v21 objectForKeyedSubscript:v667];
            if (v668)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v669 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_pqtls_numerator_old];
                [v355 setObject:v668 forKeyedSubscript:v669];

                v356 = 1;
              }
            }

            v670 = objc_alloc(MEMORY[0x1E696AEC0]);
            v671 = [v670 initWithFormat:@"%s_%s", nw_setting_enable_pqtls_denominator_old, "ios"];
            v672 = [v21 objectForKeyedSubscript:v671];
            if (v672)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v673 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_pqtls_denominator_old];
                [v355 setObject:v672 forKeyedSubscript:v673];

                v356 = 1;
              }
            }

            v674 = objc_alloc(MEMORY[0x1E696AEC0]);
            v675 = [v674 initWithFormat:@"%s_%s", nw_setting_enable_pqtls_numerator, "ios"];
            v676 = [v21 objectForKeyedSubscript:v675];
            if (v676)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v677 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_pqtls_numerator];
                [v355 setObject:v676 forKeyedSubscript:v677];

                v356 = 1;
              }
            }

            v678 = objc_alloc(MEMORY[0x1E696AEC0]);
            v679 = [v678 initWithFormat:@"%s_%s", nw_setting_enable_pqtls_denominator, "ios"];
            v680 = [v21 objectForKeyedSubscript:v679];
            if (v680)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v681 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_pqtls_denominator];
                [v355 setObject:v680 forKeyedSubscript:v681];

                v356 = 1;
              }
            }

            v682 = objc_alloc(MEMORY[0x1E696AEC0]);
            v683 = [v682 initWithFormat:@"%s_%s", nw_setting_enable_quic_migration_denominator, "ios"];
            v684 = [v21 objectForKeyedSubscript:v683];
            if (v684)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v685 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_quic_migration_denominator];
                [v355 setObject:v684 forKeyedSubscript:v685];

                v356 = 1;
              }
            }

            v686 = objc_alloc(MEMORY[0x1E696AEC0]);
            v687 = [v686 initWithFormat:@"%s_%s", nw_setting_enable_quic_migration_numerator, "ios"];
            v688 = [v21 objectForKeyedSubscript:v687];
            if (v688)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v689 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_quic_migration_numerator];
                [v355 setObject:v688 forKeyedSubscript:v689];

                v356 = 1;
              }
            }

            v690 = objc_alloc(MEMORY[0x1E696AEC0]);
            v691 = [v690 initWithFormat:@"%s_%s", nw_setting_pqtls_enable_non_h3_quic_old, "ios"];
            v692 = [v21 objectForKeyedSubscript:v691];
            if (v692)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v693 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_pqtls_enable_non_h3_quic_old];
                [v355 setObject:v692 forKeyedSubscript:v693];

                v356 = 1;
              }
            }

            v694 = objc_alloc(MEMORY[0x1E696AEC0]);
            v695 = [v694 initWithFormat:@"%s_%s", nw_setting_pqtls_disable_non_h3_quic, "ios"];
            v696 = [v21 objectForKeyedSubscript:v695];
            if (v696)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v697 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_pqtls_disable_non_h3_quic];
                [v355 setObject:v696 forKeyedSubscript:v697];

                v356 = 1;
              }
            }

            v698 = objc_alloc(MEMORY[0x1E696AEC0]);
            v699 = [v698 initWithFormat:@"%s_%s", nw_setting_channel_force_copy_frame, "ios"];
            v700 = [v21 objectForKeyedSubscript:v699];
            if (v700)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v701 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_channel_force_copy_frame];
                [v355 setObject:v700 forKeyedSubscript:v701];

                v356 = 1;
              }
            }

            v702 = objc_alloc(MEMORY[0x1E696AEC0]);
            v703 = [v702 initWithFormat:@"%s_%s", nw_setting_enable_http_connection_coalescing_numerator, "ios"];
            v704 = [v21 objectForKeyedSubscript:v703];
            if (v704)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v705 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_http_connection_coalescing_numerator];
                [v355 setObject:v704 forKeyedSubscript:v705];

                v356 = 1;
              }
            }

            v706 = objc_alloc(MEMORY[0x1E696AEC0]);
            v707 = [v706 initWithFormat:@"%s_%s", nw_setting_enable_http_connection_coalescing_denominator, "ios"];
            v708 = [v21 objectForKeyedSubscript:v707];
            if (v708)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v709 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_http_connection_coalescing_denominator];
                [v355 setObject:v708 forKeyedSubscript:v709];

                v356 = 1;
              }
            }

            v710 = objc_alloc(MEMORY[0x1E696AEC0]);
            v711 = [v710 initWithFormat:@"%s_%s", nw_setting_enable_http_early_data_numerator, "ios"];
            v712 = [v21 objectForKeyedSubscript:v711];
            if (v712)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v713 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_http_early_data_numerator];
                [v355 setObject:v712 forKeyedSubscript:v713];

                v356 = 1;
              }
            }

            v714 = objc_alloc(MEMORY[0x1E696AEC0]);
            v715 = [v714 initWithFormat:@"%s_%s", nw_setting_enable_http_early_data_denominator, "ios"];
            v716 = [v21 objectForKeyedSubscript:v715];
            if (v716)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v717 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_http_early_data_denominator];
                [v355 setObject:v716 forKeyedSubscript:v717];

                v356 = 1;
              }
            }

            v718 = objc_alloc(MEMORY[0x1E696AEC0]);
            v719 = [v718 initWithFormat:@"%s_%s", nw_setting_http_early_data_exclude_domains, "ios"];
            v720 = [v21 objectForKeyedSubscript:v719];
            if (v720)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v721 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_http_early_data_exclude_domains];
                [v355 setObject:v720 forKeyedSubscript:v721];

                v356 = 1;
              }
            }

            v722 = objc_alloc(MEMORY[0x1E696AEC0]);
            v723 = [v722 initWithFormat:@"%s_%s", nw_setting_enable_push_ulpn_numerator, "ios"];
            v724 = [v21 objectForKeyedSubscript:v723];
            if (v724)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v725 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_push_ulpn_numerator];
                [v355 setObject:v724 forKeyedSubscript:v725];

                v356 = 1;
              }
            }

            v726 = objc_alloc(MEMORY[0x1E696AEC0]);
            v727 = [v726 initWithFormat:@"%s_%s", nw_setting_enable_push_ulpn_denominator, "ios"];
            v728 = [v21 objectForKeyedSubscript:v727];
            if (v728)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v729 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_push_ulpn_denominator];
                [v355 setObject:v728 forKeyedSubscript:v729];

                v356 = 1;
              }
            }

            v730 = objc_alloc(MEMORY[0x1E696AEC0]);
            v731 = [v730 initWithFormat:@"%s_%s", nw_setting_pqtls_fallback_allowed_domains, "ios"];
            v732 = [v21 objectForKeyedSubscript:v731];
            if (v732)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v794 = 0u;
                v795 = 0u;
                v792 = 0u;
                v793 = 0u;
                v733 = v732;
                v734 = [v733 countByEnumeratingWithState:&v792 objects:v805 count:16];
                if (v734)
                {
                  v735 = v734;
                  v736 = *v793;
LABEL_754:
                  v737 = 0;
                  while (1)
                  {
                    if (*v793 != v736)
                    {
                      objc_enumerationMutation(v733);
                    }

                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      break;
                    }

                    if (v735 == ++v737)
                    {
                      v735 = [v733 countByEnumeratingWithState:&v792 objects:v805 count:16];
                      if (v735)
                      {
                        goto LABEL_754;
                      }

                      goto LABEL_760;
                    }
                  }
                }

                else
                {
LABEL_760:

                  v738 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_pqtls_fallback_allowed_domains];
                  [v779 setObject:v733 forKeyedSubscript:v738];
                  v733 = v738;
                  v356 = 1;
                }

                v14 = &nwlog_legacy_init(void)::init_once;
              }
            }

            v739 = objc_alloc(MEMORY[0x1E696AEC0]);
            v740 = [v739 initWithFormat:@"%s_%s", nw_setting_enable_pqtls_domains, "ios"];
            v741 = [v21 objectForKeyedSubscript:v740];
            if (v741)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v790 = 0u;
                v791 = 0u;
                v788 = 0u;
                v789 = 0u;
                v742 = v741;
                v743 = [v742 countByEnumeratingWithState:&v788 objects:v804 count:16];
                if (v743)
                {
                  v744 = v743;
                  v745 = *v789;
LABEL_766:
                  v746 = 0;
                  while (1)
                  {
                    if (*v789 != v745)
                    {
                      objc_enumerationMutation(v742);
                    }

                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      break;
                    }

                    if (v744 == ++v746)
                    {
                      v744 = [v742 countByEnumeratingWithState:&v788 objects:v804 count:16];
                      if (v744)
                      {
                        goto LABEL_766;
                      }

                      goto LABEL_772;
                    }
                  }
                }

                else
                {
LABEL_772:

                  v747 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_pqtls_domains];
                  [v779 setObject:v742 forKeyedSubscript:v747];
                  v742 = v747;
                  v356 = 1;
                }

                v14 = &nwlog_legacy_init(void)::init_once;
              }
            }

            v748 = objc_alloc(MEMORY[0x1E696AEC0]);
            v749 = [v748 initWithFormat:@"%s_%s", nw_setting_enable_pqtls_exclude_domains, "ios"];
            v750 = [v21 objectForKeyedSubscript:v749];
            if (v750 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v786 = 0u;
              v787 = 0u;
              v784 = 0u;
              v785 = 0u;
              v751 = v750;
              v752 = [v751 countByEnumeratingWithState:&v784 objects:v803 count:16];
              if (v752)
              {
                v753 = v752;
                v754 = *v785;
                while (2)
                {
                  for (i = 0; i != v753; ++i)
                  {
                    if (*v785 != v754)
                    {
                      objc_enumerationMutation(v751);
                    }

                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {

                      v14 = &nwlog_legacy_init(void)::init_once;
                      goto LABEL_786;
                    }
                  }

                  v753 = [v751 countByEnumeratingWithState:&v784 objects:v803 count:16];
                  if (v753)
                  {
                    continue;
                  }

                  break;
                }
              }

              v756 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_pqtls_exclude_domains];
              [v779 setObject:v751 forKeyedSubscript:v756];

              v14 = &nwlog_legacy_init(void)::init_once;
            }

            else
            {
LABEL_786:

              if (!v356)
              {
                v5 = &qword_1ED411000;
                v36 = v775;
                v18 = v779;
                goto LABEL_17;
              }
            }

            pthread_once(v14, nwlog_legacy_init_once);
            networkd_settings_init();
            v5 = &qword_1ED411000;
            v757 = gLogObj;
            v36 = v775;
            if (os_log_type_enabled(v757, OS_LOG_TYPE_DEBUG))
            {
              buf = 136446210;
              v808 = "nwphCheckMobileAsset_block_invoke";
              _os_log_impl(&dword_181A37000, v757, OS_LOG_TYPE_DEBUG, "%{public}s Some new setting was found", &buf, 0xCu);
            }

            v16 = +[ManagedNetworkSettings sharedMNS];
            v17 = [v16 queue];
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __nwphCheckMobileAsset_block_invoke_459;
            block[3] = &unk_1E6A3D868;
            v18 = v779;
            v783 = v18;
            dispatch_async(v17, block);
          }

          else if (v37)
          {
            buf = 136446466;
            v808 = "nwphCheckMobileAsset_block_invoke_2";
            v809 = 2114;
            v810 = v21;
            _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_DEFAULT, "%{public}s Asset attributes do not contain ActivityRateVersion: %{public}@", &buf, 0x16u);
          }

LABEL_17:

          v13 = v777;
          v15 = v776 + 1;
        }

        while (v776 + 1 != v774);
        v774 = [obj countByEnumeratingWithState:&v799 objects:v806 count:16];
        if (!v774)
        {

          v4 = v771;
          break;
        }
      }
    }

    v758 = [MEMORY[0x1E695DF00] date];
    [*(a1 + 40) setObject:v758 forKeyedSubscript:@"LastAttempt"];
    [v12 setObject:v758 forKeyedSubscript:@"LastSuccess"];
    v759 = [v12 writeToFile:@"/Library/Preferences/com.apple.networkd.networknomicon.plist" atomically:1];
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v760 = v5[275];
    v761 = v760;
    if (v759)
    {
      if (os_log_type_enabled(v760, OS_LOG_TYPE_DEFAULT))
      {
        buf = 136446210;
        v808 = "nwphCheckMobileAsset_block_invoke";
        _os_log_impl(&dword_181A37000, v761, OS_LOG_TYPE_DEFAULT, "%{public}s Saved successful mobile asset load date to disk", &buf, 0xCu);
      }

LABEL_811:
      goto LABEL_812;
    }

    buf = 136446722;
    v808 = "nwphCheckMobileAsset_block_invoke";
    v809 = 2114;
    v810 = v12;
    v811 = 2114;
    v812 = @"/Library/Preferences/com.apple.networkd.networknomicon.plist";
    v762 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v780 = 0;
    if (!__nwlog_fault(v762, &type, &v780))
    {
LABEL_809:
      if (v762)
      {
        free(v762);
      }

      goto LABEL_811;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v763 = v5[275];
      v764 = type;
      if (os_log_type_enabled(v763, type))
      {
        buf = 136446722;
        v808 = "nwphCheckMobileAsset_block_invoke";
        v809 = 2114;
        v810 = v12;
        v811 = 2114;
        v812 = @"/Library/Preferences/com.apple.networkd.networknomicon.plist";
        v765 = "%{public}s Failed to save mobile asset networknomicon success %{public}@ to %{public}@";
LABEL_806:
        v769 = v763;
        v770 = v764;
LABEL_807:
        _os_log_impl(&dword_181A37000, v769, v770, v765, &buf, 0x20u);
      }
    }

    else
    {
      if (v780 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v763 = v5[275];
        v767 = type;
        v768 = os_log_type_enabled(v763, type);
        if (backtrace_string)
        {
          if (v768)
          {
            buf = 136446978;
            v808 = "nwphCheckMobileAsset_block_invoke";
            v809 = 2114;
            v810 = v12;
            v811 = 2114;
            v812 = @"/Library/Preferences/com.apple.networkd.networknomicon.plist";
            v813 = 2082;
            v814 = backtrace_string;
            _os_log_impl(&dword_181A37000, v763, v767, "%{public}s Failed to save mobile asset networknomicon success %{public}@ to %{public}@, dumping backtrace:%{public}s", &buf, 0x2Au);
          }

          free(backtrace_string);
          goto LABEL_809;
        }

        if (!v768)
        {
          goto LABEL_808;
        }

        buf = 136446722;
        v808 = "nwphCheckMobileAsset_block_invoke";
        v809 = 2114;
        v810 = v12;
        v811 = 2114;
        v812 = @"/Library/Preferences/com.apple.networkd.networknomicon.plist";
        v765 = "%{public}s Failed to save mobile asset networknomicon success %{public}@ to %{public}@, no backtrace";
        v769 = v763;
        v770 = v767;
        goto LABEL_807;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v763 = v5[275];
      v764 = type;
      if (os_log_type_enabled(v763, type))
      {
        buf = 136446722;
        v808 = "nwphCheckMobileAsset_block_invoke";
        v809 = 2114;
        v810 = v12;
        v811 = 2114;
        v812 = @"/Library/Preferences/com.apple.networkd.networknomicon.plist";
        v765 = "%{public}s Failed to save mobile asset networknomicon success %{public}@ to %{public}@, backtrace limit exceeded";
        goto LABEL_806;
      }
    }

LABEL_808:

    goto LABEL_809;
  }

LABEL_812:
}

void __nwphCheckMobileAsset_block_invoke_392(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF90] dictionaryWithContentsOfFile:@"/Library/Preferences/com.apple.networkd.sysctl.plist"];
  if (!v2)
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v3 = [v2 objectForKeyedSubscript:@"net.inet.tcp.ecn_setup_percentage"];
  if (!v3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || [v3 longLongValue] != *(a1 + 40))
  {
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 40)];
    [v2 setObject:v4 forKeyedSubscript:@"net.inet.tcp.ecn_setup_percentage"];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      *buf = 136446466;
      v28 = "nwphCheckMobileAsset_block_invoke";
      v29 = 2048;
      v30 = v6;
      _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s Changing ECN Percentage to %lld", buf, 0x16u);
    }

    if ([v2 writeToFile:@"/Library/Preferences/com.apple.networkd.sysctl.plist" atomically:1])
    {
      goto LABEL_20;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    v8 = *(a1 + 32);
    *buf = 136446722;
    v28 = "nwphCheckMobileAsset_block_invoke";
    v29 = 2114;
    v30 = v8;
    v31 = 2114;
    v32 = @"/Library/Preferences/com.apple.networkd.sysctl.plist";
    LODWORD(v24) = 32;
    v23 = buf;
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (__nwlog_fault(v9, &type, &v25))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v11 = type;
        if (!os_log_type_enabled(v10, type))
        {
          goto LABEL_26;
        }

        v12 = *(a1 + 32);
        *buf = 136446722;
        v28 = "nwphCheckMobileAsset_block_invoke";
        v29 = 2114;
        v30 = v12;
        v31 = 2114;
        v32 = @"/Library/Preferences/com.apple.networkd.sysctl.plist";
        v13 = "%{public}s Failed to save network settings %{public}@ to %{public}@";
LABEL_24:
        v20 = v10;
        v21 = v11;
        goto LABEL_25;
      }

      if (v25 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v11 = type;
        if (!os_log_type_enabled(v10, type))
        {
          goto LABEL_26;
        }

        v19 = *(a1 + 32);
        *buf = 136446722;
        v28 = "nwphCheckMobileAsset_block_invoke";
        v29 = 2114;
        v30 = v19;
        v31 = 2114;
        v32 = @"/Library/Preferences/com.apple.networkd.sysctl.plist";
        v13 = "%{public}s Failed to save network settings %{public}@ to %{public}@, backtrace limit exceeded";
        goto LABEL_24;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      v15 = type;
      v16 = os_log_type_enabled(v10, type);
      if (!backtrace_string)
      {
        if (!v16)
        {
LABEL_26:

          if (!v9)
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }

        v22 = *(a1 + 32);
        *buf = 136446722;
        v28 = "nwphCheckMobileAsset_block_invoke";
        v29 = 2114;
        v30 = v22;
        v31 = 2114;
        v32 = @"/Library/Preferences/com.apple.networkd.sysctl.plist";
        v13 = "%{public}s Failed to save network settings %{public}@ to %{public}@, no backtrace";
        v20 = v10;
        v21 = v15;
LABEL_25:
        _os_log_impl(&dword_181A37000, v20, v21, v13, buf, 0x20u);
        goto LABEL_26;
      }

      if (v16)
      {
        v17 = *(a1 + 32);
        *buf = 136446978;
        v28 = "nwphCheckMobileAsset_block_invoke";
        v29 = 2114;
        v30 = v17;
        v31 = 2114;
        v32 = @"/Library/Preferences/com.apple.networkd.sysctl.plist";
        v33 = 2082;
        v34 = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s Failed to save network settings %{public}@ to %{public}@, dumping backtrace:%{public}s", buf, 0x2Au);
      }

      free(backtrace_string);
    }

    if (!v9)
    {
LABEL_20:
      v18 = [ManagedNetworkSettings sharedMNS:v23];
      [v18 reloadMNS];

      goto LABEL_21;
    }

LABEL_19:
    free(v9);
    goto LABEL_20;
  }

LABEL_21:
}

void addNewNetworkdSettings(void *a1, int a2)
{
  v382 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = nw_setting_libnetcore_debug;
  networkd_settings_init();
  if (sCachedSettings)
  {
    pthread_mutex_lock(&sSettingsMutex);
    if (sCachedSettings)
    {
      int64 = xpc_dictionary_get_int64(sCachedSettings, v4);
    }

    else
    {
      int64 = 0;
    }

    pthread_mutex_unlock(&sSettingsMutex);
  }

  else
  {
    int64 = 0;
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_file_path_settings];
  v6 = [MEMORY[0x1E695DF90] dictionaryWithContentsOfFile:v5];
  if (!v6)
  {
    v6 = [MEMORY[0x1E695DF90] dictionary];
  }

  v370 = [v6 copy];
  if (a2)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = "libnetcore";
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_INFO, "%{public}s Removing sampling rate for domain %s", buf, 0x16u);
    }

    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_libnetcore];
    [v6 setObject:0 forKeyedSubscript:v8];

    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_libnetcore];
    [v6 setObject:0 forKeyedSubscript:v9];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = "cfnetwork";
      _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_INFO, "%{public}s Removing sampling rate for domain %s", buf, 0x16u);
    }

    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_cfnetwork];
    [v6 setObject:0 forKeyedSubscript:v11];

    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_cfnetwork];
    [v6 setObject:0 forKeyedSubscript:v12];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v13 = gLogObj;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = "coremedia";
      _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_INFO, "%{public}s Removing sampling rate for domain %s", buf, 0x16u);
    }

    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_coremedia];
    [v6 setObject:0 forKeyedSubscript:v14];

    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_coremedia];
    [v6 setObject:0 forKeyedSubscript:v15];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v16 = gLogObj;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = "parsec";
      _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_INFO, "%{public}s Removing sampling rate for domain %s", buf, 0x16u);
    }

    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_parsec];
    [v6 setObject:0 forKeyedSubscript:v17];

    v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_parsec];
    [v6 setObject:0 forKeyedSubscript:v18];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v19 = gLogObj;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = "siri";
      _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_INFO, "%{public}s Removing sampling rate for domain %s", buf, 0x16u);
    }

    v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_siri];
    [v6 setObject:0 forKeyedSubscript:v20];

    v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_siri];
    [v6 setObject:0 forKeyedSubscript:v21];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v22 = gLogObj;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = "webkit";
      _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_INFO, "%{public}s Removing sampling rate for domain %s", buf, 0x16u);
    }

    v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_webkit];
    [v6 setObject:0 forKeyedSubscript:v23];

    v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_webkit];
    [v6 setObject:0 forKeyedSubscript:v24];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v25 = gLogObj;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = "coremedia_crabs";
      _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_INFO, "%{public}s Removing sampling rate for domain %s", buf, 0x16u);
    }

    v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_coremedia_crabs];
    [v6 setObject:0 forKeyedSubscript:v26];

    v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_coremedia_crabs];
    [v6 setObject:0 forKeyedSubscript:v27];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v28 = gLogObj;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = "coremedia_hls";
      _os_log_impl(&dword_181A37000, v28, OS_LOG_TYPE_INFO, "%{public}s Removing sampling rate for domain %s", buf, 0x16u);
    }

    v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_coremedia_hls];
    [v6 setObject:0 forKeyedSubscript:v29];

    v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_coremedia_hls];
    [v6 setObject:0 forKeyedSubscript:v30];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v31 = gLogObj;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = "cloudkit";
      _os_log_impl(&dword_181A37000, v31, OS_LOG_TYPE_INFO, "%{public}s Removing sampling rate for domain %s", buf, 0x16u);
    }

    v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_cloudkit];
    [v6 setObject:0 forKeyedSubscript:v32];

    v33 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_cloudkit];
    [v6 setObject:0 forKeyedSubscript:v33];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v34 = gLogObj;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = "mmcs";
      _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_INFO, "%{public}s Removing sampling rate for domain %s", buf, 0x16u);
    }

    v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_mmcs];
    [v6 setObject:0 forKeyedSubscript:v35];

    v36 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_mmcs];
    [v6 setObject:0 forKeyedSubscript:v36];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v37 = gLogObj;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = "mail";
      _os_log_impl(&dword_181A37000, v37, OS_LOG_TYPE_INFO, "%{public}s Removing sampling rate for domain %s", buf, 0x16u);
    }

    v38 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_mail];
    [v6 setObject:0 forKeyedSubscript:v38];

    v39 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_mail];
    [v6 setObject:0 forKeyedSubscript:v39];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v40 = gLogObj;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = "facetime";
      _os_log_impl(&dword_181A37000, v40, OS_LOG_TYPE_INFO, "%{public}s Removing sampling rate for domain %s", buf, 0x16u);
    }

    v41 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_facetime];
    [v6 setObject:0 forKeyedSubscript:v41];

    v42 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_facetime];
    [v6 setObject:0 forKeyedSubscript:v42];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v43 = gLogObj;
    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = "adplatforms";
      _os_log_impl(&dword_181A37000, v43, OS_LOG_TYPE_INFO, "%{public}s Removing sampling rate for domain %s", buf, 0x16u);
    }

    v44 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_adplatforms];
    [v6 setObject:0 forKeyedSubscript:v44];

    v45 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_adplatforms];
    [v6 setObject:0 forKeyedSubscript:v45];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v46 = gLogObj;
    if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = "corelocation";
      _os_log_impl(&dword_181A37000, v46, OS_LOG_TYPE_INFO, "%{public}s Removing sampling rate for domain %s", buf, 0x16u);
    }

    v47 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_corelocation];
    [v6 setObject:0 forKeyedSubscript:v47];

    v48 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_corelocation];
    [v6 setObject:0 forKeyedSubscript:v48];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v49 = gLogObj;
    if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = "airplay_sender";
      _os_log_impl(&dword_181A37000, v49, OS_LOG_TYPE_INFO, "%{public}s Removing sampling rate for domain %s", buf, 0x16u);
    }

    v50 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_airplay_sender];
    [v6 setObject:0 forKeyedSubscript:v50];

    v51 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_airplay_sender];
    [v6 setObject:0 forKeyedSubscript:v51];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v52 = gLogObj;
    if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = "airplay_receiver";
      _os_log_impl(&dword_181A37000, v52, OS_LOG_TYPE_INFO, "%{public}s Removing sampling rate for domain %s", buf, 0x16u);
    }

    v53 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_airplay_receiver];
    [v6 setObject:0 forKeyedSubscript:v53];

    v54 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_airplay_receiver];
    [v6 setObject:0 forKeyedSubscript:v54];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v55 = gLogObj;
    if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = "maps";
      _os_log_impl(&dword_181A37000, v55, OS_LOG_TYPE_INFO, "%{public}s Removing sampling rate for domain %s", buf, 0x16u);
    }

    v56 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_maps];
    [v6 setObject:0 forKeyedSubscript:v56];

    v57 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_maps];
    [v6 setObject:0 forKeyedSubscript:v57];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v58 = gLogObj;
    if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = "maps_internal";
      _os_log_impl(&dword_181A37000, v58, OS_LOG_TYPE_INFO, "%{public}s Removing sampling rate for domain %s", buf, 0x16u);
    }

    v59 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_maps_internal];
    [v6 setObject:0 forKeyedSubscript:v59];

    v60 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_maps_internal];
    [v6 setObject:0 forKeyedSubscript:v60];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v61 = gLogObj;
    if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = "maps_external";
      _os_log_impl(&dword_181A37000, v61, OS_LOG_TYPE_INFO, "%{public}s Removing sampling rate for domain %s", buf, 0x16u);
    }

    v62 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_maps_external];
    [v6 setObject:0 forKeyedSubscript:v62];

    v63 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_maps_external];
    [v6 setObject:0 forKeyedSubscript:v63];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v64 = gLogObj;
    if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = "network_speed_test";
      _os_log_impl(&dword_181A37000, v64, OS_LOG_TYPE_INFO, "%{public}s Removing sampling rate for domain %s", buf, 0x16u);
    }

    v65 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_network_speed_test];
    [v6 setObject:0 forKeyedSubscript:v65];

    v66 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_network_speed_test];
    [v6 setObject:0 forKeyedSubscript:v66];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v67 = gLogObj;
    if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = "captive";
      _os_log_impl(&dword_181A37000, v67, OS_LOG_TYPE_INFO, "%{public}s Removing sampling rate for domain %s", buf, 0x16u);
    }

    v68 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_captive];
    [v6 setObject:0 forKeyedSubscript:v68];

    v69 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_captive];
    [v6 setObject:0 forKeyedSubscript:v69];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v70 = gLogObj;
    if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = "safe_browsing";
      _os_log_impl(&dword_181A37000, v70, OS_LOG_TYPE_INFO, "%{public}s Removing sampling rate for domain %s", buf, 0x16u);
    }

    v71 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_safe_browsing];
    [v6 setObject:0 forKeyedSubscript:v71];

    v72 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_safe_browsing];
    [v6 setObject:0 forKeyedSubscript:v72];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v73 = gLogObj;
    if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = "dns";
      _os_log_impl(&dword_181A37000, v73, OS_LOG_TYPE_INFO, "%{public}s Removing sampling rate for domain %s", buf, 0x16u);
    }

    v74 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_dns];
    [v6 setObject:0 forKeyedSubscript:v74];

    v75 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_dns];
    [v6 setObject:0 forKeyedSubscript:v75];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v76 = gLogObj;
    if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = "music";
      _os_log_impl(&dword_181A37000, v76, OS_LOG_TYPE_INFO, "%{public}s Removing sampling rate for domain %s", buf, 0x16u);
    }

    v77 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_music];
    [v6 setObject:0 forKeyedSubscript:v77];

    v78 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_music];
    [v6 setObject:0 forKeyedSubscript:v78];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v79 = gLogObj;
    if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = "battery";
      _os_log_impl(&dword_181A37000, v79, OS_LOG_TYPE_INFO, "%{public}s Removing sampling rate for domain %s", buf, 0x16u);
    }

    v80 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_battery];
    [v6 setObject:0 forKeyedSubscript:v80];

    v81 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_battery];
    [v6 setObject:0 forKeyedSubscript:v81];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v82 = gLogObj;
    if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = "cloud_media_services";
      _os_log_impl(&dword_181A37000, v82, OS_LOG_TYPE_INFO, "%{public}s Removing sampling rate for domain %s", buf, 0x16u);
    }

    v83 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_cloud_media_services];
    [v6 setObject:0 forKeyedSubscript:v83];

    v84 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_cloud_media_services];
    [v6 setObject:0 forKeyedSubscript:v84];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v85 = gLogObj;
    if (os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = "avconference";
      _os_log_impl(&dword_181A37000, v85, OS_LOG_TYPE_INFO, "%{public}s Removing sampling rate for domain %s", buf, 0x16u);
    }

    v86 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_avconference];
    [v6 setObject:0 forKeyedSubscript:v86];

    v87 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_avconference];
    [v6 setObject:0 forKeyedSubscript:v87];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v88 = gLogObj;
    if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = "appstore";
      _os_log_impl(&dword_181A37000, v88, OS_LOG_TYPE_INFO, "%{public}s Removing sampling rate for domain %s", buf, 0x16u);
    }

    v89 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_appstore];
    [v6 setObject:0 forKeyedSubscript:v89];

    v90 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_appstore];
    [v6 setObject:0 forKeyedSubscript:v90];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v91 = gLogObj;
    if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = "telephony_service";
      _os_log_impl(&dword_181A37000, v91, OS_LOG_TYPE_INFO, "%{public}s Removing sampling rate for domain %s", buf, 0x16u);
    }

    v92 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_telephony_service];
    [v6 setObject:0 forKeyedSubscript:v92];

    v93 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_telephony_service];
    [v6 setObject:0 forKeyedSubscript:v93];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v94 = gLogObj;
    if (os_log_type_enabled(v94, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = "network_experiments";
      _os_log_impl(&dword_181A37000, v94, OS_LOG_TYPE_INFO, "%{public}s Removing sampling rate for domain %s", buf, 0x16u);
    }

    v95 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_network_experiments];
    [v6 setObject:0 forKeyedSubscript:v95];

    v96 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_network_experiments];
    [v6 setObject:0 forKeyedSubscript:v96];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v97 = gLogObj;
    if (os_log_type_enabled(v97, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = "network_perf";
      _os_log_impl(&dword_181A37000, v97, OS_LOG_TYPE_INFO, "%{public}s Removing sampling rate for domain %s", buf, 0x16u);
    }

    v98 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_network_perf];
    [v6 setObject:0 forKeyedSubscript:v98];

    v99 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_network_perf];
    [v6 setObject:0 forKeyedSubscript:v99];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v100 = gLogObj;
    if (os_log_type_enabled(v100, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = "hotspot";
      _os_log_impl(&dword_181A37000, v100, OS_LOG_TYPE_INFO, "%{public}s Removing sampling rate for domain %s", buf, 0x16u);
    }

    v101 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_hotspot];
    [v6 setObject:0 forKeyedSubscript:v101];

    v102 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_hotspot];
    [v6 setObject:0 forKeyedSubscript:v102];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v103 = gLogObj;
    if (os_log_type_enabled(v103, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = "weather";
      _os_log_impl(&dword_181A37000, v103, OS_LOG_TYPE_INFO, "%{public}s Removing sampling rate for domain %s", buf, 0x16u);
    }

    v104 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_weather];
    [v6 setObject:0 forKeyedSubscript:v104];

    v105 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_weather];
    [v6 setObject:0 forKeyedSubscript:v105];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v106 = gLogObj;
    if (os_log_type_enabled(v106, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = "coordination";
      _os_log_impl(&dword_181A37000, v106, OS_LOG_TYPE_INFO, "%{public}s Removing sampling rate for domain %s", buf, 0x16u);
    }

    v107 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_coordination];
    [v6 setObject:0 forKeyedSubscript:v107];

    v108 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_coordination];
    [v6 setObject:0 forKeyedSubscript:v108];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v109 = gLogObj;
    if (os_log_type_enabled(v109, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = "appstore_jet";
      _os_log_impl(&dword_181A37000, v109, OS_LOG_TYPE_INFO, "%{public}s Removing sampling rate for domain %s", buf, 0x16u);
    }

    v110 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_appstore_jet];
    [v6 setObject:0 forKeyedSubscript:v110];

    v111 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_appstore_jet];
    [v6 setObject:0 forKeyedSubscript:v111];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v112 = gLogObj;
    if (os_log_type_enabled(v112, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = "soundboard";
      _os_log_impl(&dword_181A37000, v112, OS_LOG_TYPE_INFO, "%{public}s Removing sampling rate for domain %s", buf, 0x16u);
    }

    v113 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_soundboard];
    [v6 setObject:0 forKeyedSubscript:v113];

    v114 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_soundboard];
    [v6 setObject:0 forKeyedSubscript:v114];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v115 = gLogObj;
    if (os_log_type_enabled(v115, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = "aea";
      _os_log_impl(&dword_181A37000, v115, OS_LOG_TYPE_INFO, "%{public}s Removing sampling rate for domain %s", buf, 0x16u);
    }

    v116 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_aea];
    [v6 setObject:0 forKeyedSubscript:v116];

    v117 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_aea];
    [v6 setObject:0 forKeyedSubscript:v117];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v118 = gLogObj;
    if (os_log_type_enabled(v118, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = "homekit";
      _os_log_impl(&dword_181A37000, v118, OS_LOG_TYPE_INFO, "%{public}s Removing sampling rate for domain %s", buf, 0x16u);
    }

    v119 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_homekit];
    [v6 setObject:0 forKeyedSubscript:v119];

    v120 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_homekit];
    [v6 setObject:0 forKeyedSubscript:v120];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v121 = gLogObj;
    if (os_log_type_enabled(v121, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = "wifi";
      _os_log_impl(&dword_181A37000, v121, OS_LOG_TYPE_INFO, "%{public}s Removing sampling rate for domain %s", buf, 0x16u);
    }

    v122 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_wifi];
    [v6 setObject:0 forKeyedSubscript:v122];

    v123 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_wifi];
    [v6 setObject:0 forKeyedSubscript:v123];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v124 = gLogObj;
    if (os_log_type_enabled(v124, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = "app_launch";
      _os_log_impl(&dword_181A37000, v124, OS_LOG_TYPE_INFO, "%{public}s Removing sampling rate for domain %s", buf, 0x16u);
    }

    v125 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_app_launch];
    [v6 setObject:0 forKeyedSubscript:v125];

    v126 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_app_launch];
    [v6 setObject:0 forKeyedSubscript:v126];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v127 = gLogObj;
    if (os_log_type_enabled(v127, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = "ams";
      _os_log_impl(&dword_181A37000, v127, OS_LOG_TYPE_INFO, "%{public}s Removing sampling rate for domain %s", buf, 0x16u);
    }

    v128 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_ams];
    [v6 setObject:0 forKeyedSubscript:v128];

    v129 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_ams];
    [v6 setObject:0 forKeyedSubscript:v129];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v130 = gLogObj;
    if (os_log_type_enabled(v130, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = "reve";
      _os_log_impl(&dword_181A37000, v130, OS_LOG_TYPE_INFO, "%{public}s Removing sampling rate for domain %s", buf, 0x16u);
    }

    v131 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_reve];
    [v6 setObject:0 forKeyedSubscript:v131];

    v132 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_reve];
    [v6 setObject:0 forKeyedSubscript:v132];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v133 = gLogObj;
    if (os_log_type_enabled(v133, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = "network_quality";
      _os_log_impl(&dword_181A37000, v133, OS_LOG_TYPE_INFO, "%{public}s Removing sampling rate for domain %s", buf, 0x16u);
    }

    v134 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_network_quality];
    [v6 setObject:0 forKeyedSubscript:v134];

    v135 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_network_quality];
    [v6 setObject:0 forKeyedSubscript:v135];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v136 = gLogObj;
    if (os_log_type_enabled(v136, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = "news";
      _os_log_impl(&dword_181A37000, v136, OS_LOG_TYPE_INFO, "%{public}s Removing sampling rate for domain %s", buf, 0x16u);
    }

    v137 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_news];
    [v6 setObject:0 forKeyedSubscript:v137];

    v138 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_news];
    [v6 setObject:0 forKeyedSubscript:v138];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v139 = gLogObj;
    if (os_log_type_enabled(v139, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = "cloud_compute";
      _os_log_impl(&dword_181A37000, v139, OS_LOG_TYPE_INFO, "%{public}s Removing sampling rate for domain %s", buf, 0x16u);
    }

    v140 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_cloud_compute];
    [v6 setObject:0 forKeyedSubscript:v140];

    v141 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_cloud_compute];
    [v6 setObject:0 forKeyedSubscript:v141];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v142 = gLogObj;
    if (os_log_type_enabled(v142, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = "push";
      _os_log_impl(&dword_181A37000, v142, OS_LOG_TYPE_INFO, "%{public}s Removing sampling rate for domain %s", buf, 0x16u);
    }

    v143 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_push];
    [v6 setObject:0 forKeyedSubscript:v143];

    v144 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_push];
    [v6 setObject:0 forKeyedSubscript:v144];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v145 = gLogObj;
    if (os_log_type_enabled(v145, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = "nw_actor_system";
      _os_log_impl(&dword_181A37000, v145, OS_LOG_TYPE_INFO, "%{public}s Removing sampling rate for domain %s", buf, 0x16u);
    }

    v146 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_nw_actor_system];
    [v6 setObject:0 forKeyedSubscript:v146];

    v147 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_nw_actor_system];
    [v6 setObject:0 forKeyedSubscript:v147];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v148 = gLogObj;
    if (os_log_type_enabled(v148, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = "app_intents_services";
      _os_log_impl(&dword_181A37000, v148, OS_LOG_TYPE_INFO, "%{public}s Removing sampling rate for domain %s", buf, 0x16u);
    }

    v149 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_app_intents_services];
    [v6 setObject:0 forKeyedSubscript:v149];

    v150 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_app_intents_services];
    [v6 setObject:0 forKeyedSubscript:v150];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v151 = gLogObj;
    if (os_log_type_enabled(v151, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = "stocks";
      _os_log_impl(&dword_181A37000, v151, OS_LOG_TYPE_INFO, "%{public}s Removing sampling rate for domain %s", buf, 0x16u);
    }

    v152 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_stocks];
    [v6 setObject:0 forKeyedSubscript:v152];

    v153 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_stocks];
    [v6 setObject:0 forKeyedSubscript:v153];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v154 = gLogObj;
    if (os_log_type_enabled(v154, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = "tv_app";
      _os_log_impl(&dword_181A37000, v154, OS_LOG_TYPE_INFO, "%{public}s Removing sampling rate for domain %s", buf, 0x16u);
    }

    v155 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_tv_app];
    [v6 setObject:0 forKeyedSubscript:v155];

    v156 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_tv_app];
    [v6 setObject:0 forKeyedSubscript:v156];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v157 = gLogObj;
    if (os_log_type_enabled(v157, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = "rapport";
      _os_log_impl(&dword_181A37000, v157, OS_LOG_TYPE_INFO, "%{public}s Removing sampling rate for domain %s", buf, 0x16u);
    }

    v158 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_rapport];
    [v6 setObject:0 forKeyedSubscript:v158];

    v159 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_rapport];
    [v6 setObject:0 forKeyedSubscript:v159];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v160 = gLogObj;
    if (os_log_type_enabled(v160, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = "mobile_asset";
      _os_log_impl(&dword_181A37000, v160, OS_LOG_TYPE_INFO, "%{public}s Removing sampling rate for domain %s", buf, 0x16u);
    }

    v161 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_numerator_mobile_asset];
    [v6 setObject:0 forKeyedSubscript:v161];

    v162 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_denominator_mobile_asset];
    [v6 setObject:0 forKeyedSubscript:v162];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v163 = gLogObj;
    if (os_log_type_enabled(v163, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_activity_report_destination;
      _os_log_impl(&dword_181A37000, v163, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v164 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_report_destination];
    [v6 setObject:0 forKeyedSubscript:v164];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v165 = gLogObj;
    if (os_log_type_enabled(v165, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_activity_default_numerator_old1;
      _os_log_impl(&dword_181A37000, v165, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v166 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_default_numerator_old1];
    [v6 setObject:0 forKeyedSubscript:v166];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v167 = gLogObj;
    if (os_log_type_enabled(v167, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_activity_default_denominator_old1;
      _os_log_impl(&dword_181A37000, v167, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v168 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_default_denominator_old1];
    [v6 setObject:0 forKeyedSubscript:v168];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v169 = gLogObj;
    if (os_log_type_enabled(v169, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_activity_default_numerator;
      _os_log_impl(&dword_181A37000, v169, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v170 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_default_numerator];
    [v6 setObject:0 forKeyedSubscript:v170];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v171 = gLogObj;
    if (os_log_type_enabled(v171, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_activity_default_denominator;
      _os_log_impl(&dword_181A37000, v171, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v172 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_default_denominator];
    [v6 setObject:0 forKeyedSubscript:v172];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v173 = gLogObj;
    if (os_log_type_enabled(v173, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_statistics_report_numerator;
      _os_log_impl(&dword_181A37000, v173, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v174 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_statistics_report_numerator];
    [v6 setObject:0 forKeyedSubscript:v174];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v175 = gLogObj;
    if (os_log_type_enabled(v175, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_statistics_report_denominator;
      _os_log_impl(&dword_181A37000, v175, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v176 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_statistics_report_denominator];
    [v6 setObject:0 forKeyedSubscript:v176];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v177 = gLogObj;
    if (os_log_type_enabled(v177, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_disable_svcb;
      _os_log_impl(&dword_181A37000, v177, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v178 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_disable_svcb];
    [v6 setObject:0 forKeyedSubscript:v178];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v179 = gLogObj;
    if (os_log_type_enabled(v179, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_disable_svcb_router;
      _os_log_impl(&dword_181A37000, v179, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v180 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_disable_svcb_router];
    [v6 setObject:0 forKeyedSubscript:v180];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v181 = gLogObj;
    if (os_log_type_enabled(v181, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_activity_elevated_numerator;
      _os_log_impl(&dword_181A37000, v181, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v182 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_elevated_numerator];
    [v6 setObject:0 forKeyedSubscript:v182];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v183 = gLogObj;
    if (os_log_type_enabled(v183, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_activity_elevated_denominator;
      _os_log_impl(&dword_181A37000, v183, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v184 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_activity_elevated_denominator];
    [v6 setObject:0 forKeyedSubscript:v184];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v185 = gLogObj;
    if (os_log_type_enabled(v185, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_disable_quic_old1;
      _os_log_impl(&dword_181A37000, v185, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v186 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_disable_quic_old1];
    [v6 setObject:0 forKeyedSubscript:v186];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v187 = gLogObj;
    if (os_log_type_enabled(v187, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_disable_quic_race_old1;
      _os_log_impl(&dword_181A37000, v187, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v188 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_disable_quic_race_old1];
    [v6 setObject:0 forKeyedSubscript:v188];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v189 = gLogObj;
    if (os_log_type_enabled(v189, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_enable_quic_numerator_old1;
      _os_log_impl(&dword_181A37000, v189, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v190 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_quic_numerator_old1];
    [v6 setObject:0 forKeyedSubscript:v190];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v191 = gLogObj;
    if (os_log_type_enabled(v191, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_enable_quic_denominator_old1;
      _os_log_impl(&dword_181A37000, v191, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v192 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_quic_denominator_old1];
    [v6 setObject:0 forKeyedSubscript:v192];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v193 = gLogObj;
    if (os_log_type_enabled(v193, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_disable_quic_old2;
      _os_log_impl(&dword_181A37000, v193, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v194 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_disable_quic_old2];
    [v6 setObject:0 forKeyedSubscript:v194];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v195 = gLogObj;
    if (os_log_type_enabled(v195, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_disable_quic_race_old2;
      _os_log_impl(&dword_181A37000, v195, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v196 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_disable_quic_race_old2];
    [v6 setObject:0 forKeyedSubscript:v196];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v197 = gLogObj;
    if (os_log_type_enabled(v197, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_enable_quic_numerator_old2;
      _os_log_impl(&dword_181A37000, v197, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v198 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_quic_numerator_old2];
    [v6 setObject:0 forKeyedSubscript:v198];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v199 = gLogObj;
    if (os_log_type_enabled(v199, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_enable_quic_denominator_old2;
      _os_log_impl(&dword_181A37000, v199, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v200 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_quic_denominator_old2];
    [v6 setObject:0 forKeyedSubscript:v200];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v201 = gLogObj;
    if (os_log_type_enabled(v201, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_disable_quic_old3;
      _os_log_impl(&dword_181A37000, v201, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v202 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_disable_quic_old3];
    [v6 setObject:0 forKeyedSubscript:v202];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v203 = gLogObj;
    if (os_log_type_enabled(v203, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_disable_quic_race_old3;
      _os_log_impl(&dword_181A37000, v203, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v204 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_disable_quic_race_old3];
    [v6 setObject:0 forKeyedSubscript:v204];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v205 = gLogObj;
    if (os_log_type_enabled(v205, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_enable_quic_numerator_old3;
      _os_log_impl(&dword_181A37000, v205, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v206 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_quic_numerator_old3];
    [v6 setObject:0 forKeyedSubscript:v206];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v207 = gLogObj;
    if (os_log_type_enabled(v207, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_enable_quic_denominator_old3;
      _os_log_impl(&dword_181A37000, v207, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v208 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_quic_denominator_old3];
    [v6 setObject:0 forKeyedSubscript:v208];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v209 = gLogObj;
    if (os_log_type_enabled(v209, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_disable_quic_old4;
      _os_log_impl(&dword_181A37000, v209, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v210 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_disable_quic_old4];
    [v6 setObject:0 forKeyedSubscript:v210];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v211 = gLogObj;
    if (os_log_type_enabled(v211, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_disable_quic_race_old4;
      _os_log_impl(&dword_181A37000, v211, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v212 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_disable_quic_race_old4];
    [v6 setObject:0 forKeyedSubscript:v212];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v213 = gLogObj;
    if (os_log_type_enabled(v213, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_enable_quic_numerator_old4;
      _os_log_impl(&dword_181A37000, v213, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v214 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_quic_numerator_old4];
    [v6 setObject:0 forKeyedSubscript:v214];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v215 = gLogObj;
    if (os_log_type_enabled(v215, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_enable_quic_denominator_old4;
      _os_log_impl(&dword_181A37000, v215, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v216 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_quic_denominator_old4];
    [v6 setObject:0 forKeyedSubscript:v216];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v217 = gLogObj;
    if (os_log_type_enabled(v217, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_disable_quic_old5;
      _os_log_impl(&dword_181A37000, v217, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v218 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_disable_quic_old5];
    [v6 setObject:0 forKeyedSubscript:v218];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v219 = gLogObj;
    if (os_log_type_enabled(v219, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_disable_quic_race_old5;
      _os_log_impl(&dword_181A37000, v219, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v220 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_disable_quic_race_old5];
    [v6 setObject:0 forKeyedSubscript:v220];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v221 = gLogObj;
    if (os_log_type_enabled(v221, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_enable_quic_numerator_old5;
      _os_log_impl(&dword_181A37000, v221, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v222 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_quic_numerator_old5];
    [v6 setObject:0 forKeyedSubscript:v222];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v223 = gLogObj;
    if (os_log_type_enabled(v223, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_enable_quic_denominator_old5;
      _os_log_impl(&dword_181A37000, v223, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v224 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_quic_denominator_old5];
    [v6 setObject:0 forKeyedSubscript:v224];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v225 = gLogObj;
    if (os_log_type_enabled(v225, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_disable_quic_old6;
      _os_log_impl(&dword_181A37000, v225, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v226 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_disable_quic_old6];
    [v6 setObject:0 forKeyedSubscript:v226];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v227 = gLogObj;
    if (os_log_type_enabled(v227, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_disable_quic_race_old6;
      _os_log_impl(&dword_181A37000, v227, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v228 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_disable_quic_race_old6];
    [v6 setObject:0 forKeyedSubscript:v228];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v229 = gLogObj;
    if (os_log_type_enabled(v229, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_enable_quic_numerator_old6;
      _os_log_impl(&dword_181A37000, v229, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v230 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_quic_numerator_old6];
    [v6 setObject:0 forKeyedSubscript:v230];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v231 = gLogObj;
    if (os_log_type_enabled(v231, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_enable_quic_denominator_old6;
      _os_log_impl(&dword_181A37000, v231, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v232 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_quic_denominator_old6];
    [v6 setObject:0 forKeyedSubscript:v232];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v233 = gLogObj;
    if (os_log_type_enabled(v233, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_disable_quic_old7;
      _os_log_impl(&dword_181A37000, v233, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v234 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_disable_quic_old7];
    [v6 setObject:0 forKeyedSubscript:v234];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v235 = gLogObj;
    if (os_log_type_enabled(v235, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_disable_quic_race_old7;
      _os_log_impl(&dword_181A37000, v235, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v236 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_disable_quic_race_old7];
    [v6 setObject:0 forKeyedSubscript:v236];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v237 = gLogObj;
    if (os_log_type_enabled(v237, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_enable_quic_numerator_old7;
      _os_log_impl(&dword_181A37000, v237, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v238 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_quic_numerator_old7];
    [v6 setObject:0 forKeyedSubscript:v238];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v239 = gLogObj;
    if (os_log_type_enabled(v239, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_enable_quic_denominator_old7;
      _os_log_impl(&dword_181A37000, v239, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v240 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_quic_denominator_old7];
    [v6 setObject:0 forKeyedSubscript:v240];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v241 = gLogObj;
    if (os_log_type_enabled(v241, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_disable_quic_old8;
      _os_log_impl(&dword_181A37000, v241, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v242 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_disable_quic_old8];
    [v6 setObject:0 forKeyedSubscript:v242];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v243 = gLogObj;
    if (os_log_type_enabled(v243, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_disable_quic_race_old8;
      _os_log_impl(&dword_181A37000, v243, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v244 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_disable_quic_race_old8];
    [v6 setObject:0 forKeyedSubscript:v244];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v245 = gLogObj;
    if (os_log_type_enabled(v245, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_enable_quic_numerator_old8;
      _os_log_impl(&dword_181A37000, v245, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v246 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_quic_numerator_old8];
    [v6 setObject:0 forKeyedSubscript:v246];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v247 = gLogObj;
    if (os_log_type_enabled(v247, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_enable_quic_denominator_old8;
      _os_log_impl(&dword_181A37000, v247, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v248 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_quic_denominator_old8];
    [v6 setObject:0 forKeyedSubscript:v248];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v249 = gLogObj;
    if (os_log_type_enabled(v249, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_disable_quic;
      _os_log_impl(&dword_181A37000, v249, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v250 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_disable_quic];
    [v6 setObject:0 forKeyedSubscript:v250];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v251 = gLogObj;
    if (os_log_type_enabled(v251, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_disable_quic_race;
      _os_log_impl(&dword_181A37000, v251, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v252 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_disable_quic_race];
    [v6 setObject:0 forKeyedSubscript:v252];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v253 = gLogObj;
    if (os_log_type_enabled(v253, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_enable_quic_numerator;
      _os_log_impl(&dword_181A37000, v253, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v254 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_quic_numerator];
    [v6 setObject:0 forKeyedSubscript:v254];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v255 = gLogObj;
    if (os_log_type_enabled(v255, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_enable_quic_denominator;
      _os_log_impl(&dword_181A37000, v255, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v256 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_quic_denominator];
    [v6 setObject:0 forKeyedSubscript:v256];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v257 = gLogObj;
    if (os_log_type_enabled(v257, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_ech_probe_numerator;
      _os_log_impl(&dword_181A37000, v257, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v258 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_ech_probe_numerator];
    [v6 setObject:0 forKeyedSubscript:v258];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v259 = gLogObj;
    if (os_log_type_enabled(v259, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_ech_probe_denominator;
      _os_log_impl(&dword_181A37000, v259, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v260 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_ech_probe_denominator];
    [v6 setObject:0 forKeyedSubscript:v260];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v261 = gLogObj;
    if (os_log_type_enabled(v261, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_ech_canary_numerator;
      _os_log_impl(&dword_181A37000, v261, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v262 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_ech_canary_numerator];
    [v6 setObject:0 forKeyedSubscript:v262];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v263 = gLogObj;
    if (os_log_type_enabled(v263, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_ech_canary_denominator;
      _os_log_impl(&dword_181A37000, v263, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v264 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_ech_canary_denominator];
    [v6 setObject:0 forKeyedSubscript:v264];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v265 = gLogObj;
    if (os_log_type_enabled(v265, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_flow_report_numerator;
      _os_log_impl(&dword_181A37000, v265, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v266 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_flow_report_numerator];
    [v6 setObject:0 forKeyedSubscript:v266];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v267 = gLogObj;
    if (os_log_type_enabled(v267, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_flow_report_denominator;
      _os_log_impl(&dword_181A37000, v267, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v268 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_flow_report_denominator];
    [v6 setObject:0 forKeyedSubscript:v268];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v269 = gLogObj;
    if (os_log_type_enabled(v269, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_proxy_race_report_numerator;
      _os_log_impl(&dword_181A37000, v269, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v270 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_proxy_race_report_numerator];
    [v6 setObject:0 forKeyedSubscript:v270];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v271 = gLogObj;
    if (os_log_type_enabled(v271, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_proxy_race_report_denominator;
      _os_log_impl(&dword_181A37000, v271, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v272 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_proxy_race_report_denominator];
    [v6 setObject:0 forKeyedSubscript:v272];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v273 = gLogObj;
    if (os_log_type_enabled(v273, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_enable_l4s_numerator_old1;
      _os_log_impl(&dword_181A37000, v273, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v274 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_l4s_numerator_old1];
    [v6 setObject:0 forKeyedSubscript:v274];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v275 = gLogObj;
    if (os_log_type_enabled(v275, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_enable_l4s_denominator_old1;
      _os_log_impl(&dword_181A37000, v275, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v276 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_l4s_denominator_old1];
    [v6 setObject:0 forKeyedSubscript:v276];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v277 = gLogObj;
    if (os_log_type_enabled(v277, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_enable_l4s_numerator;
      _os_log_impl(&dword_181A37000, v277, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v278 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_l4s_numerator];
    [v6 setObject:0 forKeyedSubscript:v278];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v279 = gLogObj;
    if (os_log_type_enabled(v279, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_enable_l4s_denominator;
      _os_log_impl(&dword_181A37000, v279, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v280 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_l4s_denominator];
    [v6 setObject:0 forKeyedSubscript:v280];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v281 = gLogObj;
    if (os_log_type_enabled(v281, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_enable_quic_l4s_numerator;
      _os_log_impl(&dword_181A37000, v281, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v282 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_quic_l4s_numerator];
    [v6 setObject:0 forKeyedSubscript:v282];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v283 = gLogObj;
    if (os_log_type_enabled(v283, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_enable_quic_l4s_denominator;
      _os_log_impl(&dword_181A37000, v283, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v284 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_quic_l4s_denominator];
    [v6 setObject:0 forKeyedSubscript:v284];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v285 = gLogObj;
    if (os_log_type_enabled(v285, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_enable_accurate_ecn_numerator_old1;
      _os_log_impl(&dword_181A37000, v285, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v286 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_accurate_ecn_numerator_old1];
    [v6 setObject:0 forKeyedSubscript:v286];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v287 = gLogObj;
    if (os_log_type_enabled(v287, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_enable_accurate_ecn_denominator_old1;
      _os_log_impl(&dword_181A37000, v287, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v288 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_accurate_ecn_denominator_old1];
    [v6 setObject:0 forKeyedSubscript:v288];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v289 = gLogObj;
    if (os_log_type_enabled(v289, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_enable_accurate_ecn_numerator;
      _os_log_impl(&dword_181A37000, v289, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v290 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_accurate_ecn_numerator];
    [v6 setObject:0 forKeyedSubscript:v290];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v291 = gLogObj;
    if (os_log_type_enabled(v291, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_enable_accurate_ecn_denominator;
      _os_log_impl(&dword_181A37000, v291, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v292 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_accurate_ecn_denominator];
    [v6 setObject:0 forKeyedSubscript:v292];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v293 = gLogObj;
    if (os_log_type_enabled(v293, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_enable_tcp_l4s_numerator_old1;
      _os_log_impl(&dword_181A37000, v293, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v294 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_tcp_l4s_numerator_old1];
    [v6 setObject:0 forKeyedSubscript:v294];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v295 = gLogObj;
    if (os_log_type_enabled(v295, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_enable_tcp_l4s_denominator_old1;
      _os_log_impl(&dword_181A37000, v295, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v296 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_tcp_l4s_denominator_old1];
    [v6 setObject:0 forKeyedSubscript:v296];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v297 = gLogObj;
    if (os_log_type_enabled(v297, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_enable_tcp_l4s_numerator;
      _os_log_impl(&dword_181A37000, v297, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v298 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_tcp_l4s_numerator];
    [v6 setObject:0 forKeyedSubscript:v298];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v299 = gLogObj;
    if (os_log_type_enabled(v299, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_enable_tcp_l4s_denominator;
      _os_log_impl(&dword_181A37000, v299, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v300 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_tcp_l4s_denominator];
    [v6 setObject:0 forKeyedSubscript:v300];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v301 = gLogObj;
    if (os_log_type_enabled(v301, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_disable_l4s_aqm;
      _os_log_impl(&dword_181A37000, v301, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v302 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_disable_l4s_aqm];
    [v6 setObject:0 forKeyedSubscript:v302];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v303 = gLogObj;
    if (os_log_type_enabled(v303, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_enable_unified_http_numerator;
      _os_log_impl(&dword_181A37000, v303, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v304 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_unified_http_numerator];
    [v6 setObject:0 forKeyedSubscript:v304];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v305 = gLogObj;
    if (os_log_type_enabled(v305, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_enable_unified_http_denominator;
      _os_log_impl(&dword_181A37000, v305, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v306 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_unified_http_denominator];
    [v6 setObject:0 forKeyedSubscript:v306];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v307 = gLogObj;
    if (os_log_type_enabled(v307, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_enable_unified_http_numerator_old;
      _os_log_impl(&dword_181A37000, v307, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v308 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_unified_http_numerator_old];
    [v6 setObject:0 forKeyedSubscript:v308];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v309 = gLogObj;
    if (os_log_type_enabled(v309, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_enable_unified_http_denominator_old;
      _os_log_impl(&dword_181A37000, v309, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v310 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_unified_http_denominator_old];
    [v6 setObject:0 forKeyedSubscript:v310];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v311 = gLogObj;
    if (os_log_type_enabled(v311, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_pqtls_probe_enabled;
      _os_log_impl(&dword_181A37000, v311, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v312 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_pqtls_probe_enabled];
    [v6 setObject:0 forKeyedSubscript:v312];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v313 = gLogObj;
    if (os_log_type_enabled(v313, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_pqtls_probe_numerator;
      _os_log_impl(&dword_181A37000, v313, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v314 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_pqtls_probe_numerator];
    [v6 setObject:0 forKeyedSubscript:v314];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v315 = gLogObj;
    if (os_log_type_enabled(v315, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_pqtls_probe_denominator;
      _os_log_impl(&dword_181A37000, v315, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v316 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_pqtls_probe_denominator];
    [v6 setObject:0 forKeyedSubscript:v316];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v317 = gLogObj;
    if (os_log_type_enabled(v317, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_enable_pqtls_old;
      _os_log_impl(&dword_181A37000, v317, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v318 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_pqtls_old];
    [v6 setObject:0 forKeyedSubscript:v318];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v319 = gLogObj;
    if (os_log_type_enabled(v319, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_enable_pqtls_numerator_old;
      _os_log_impl(&dword_181A37000, v319, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v320 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_pqtls_numerator_old];
    [v6 setObject:0 forKeyedSubscript:v320];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v321 = gLogObj;
    if (os_log_type_enabled(v321, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_enable_pqtls_denominator_old;
      _os_log_impl(&dword_181A37000, v321, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v322 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_pqtls_denominator_old];
    [v6 setObject:0 forKeyedSubscript:v322];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v323 = gLogObj;
    if (os_log_type_enabled(v323, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_enable_pqtls_numerator;
      _os_log_impl(&dword_181A37000, v323, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v324 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_pqtls_numerator];
    [v6 setObject:0 forKeyedSubscript:v324];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v325 = gLogObj;
    if (os_log_type_enabled(v325, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_enable_pqtls_denominator;
      _os_log_impl(&dword_181A37000, v325, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v326 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_pqtls_denominator];
    [v6 setObject:0 forKeyedSubscript:v326];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v327 = gLogObj;
    if (os_log_type_enabled(v327, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_enable_quic_migration_denominator;
      _os_log_impl(&dword_181A37000, v327, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v328 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_quic_migration_denominator];
    [v6 setObject:0 forKeyedSubscript:v328];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v329 = gLogObj;
    if (os_log_type_enabled(v329, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_enable_quic_migration_numerator;
      _os_log_impl(&dword_181A37000, v329, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v330 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_quic_migration_numerator];
    [v6 setObject:0 forKeyedSubscript:v330];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v331 = gLogObj;
    if (os_log_type_enabled(v331, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_pqtls_enable_non_h3_quic_old;
      _os_log_impl(&dword_181A37000, v331, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v332 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_pqtls_enable_non_h3_quic_old];
    [v6 setObject:0 forKeyedSubscript:v332];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v333 = gLogObj;
    if (os_log_type_enabled(v333, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_pqtls_disable_non_h3_quic;
      _os_log_impl(&dword_181A37000, v333, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v334 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_pqtls_disable_non_h3_quic];
    [v6 setObject:0 forKeyedSubscript:v334];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v335 = gLogObj;
    if (os_log_type_enabled(v335, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_channel_force_copy_frame;
      _os_log_impl(&dword_181A37000, v335, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v336 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_channel_force_copy_frame];
    [v6 setObject:0 forKeyedSubscript:v336];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v337 = gLogObj;
    if (os_log_type_enabled(v337, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_enable_http_connection_coalescing_numerator;
      _os_log_impl(&dword_181A37000, v337, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v338 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_http_connection_coalescing_numerator];
    [v6 setObject:0 forKeyedSubscript:v338];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v339 = gLogObj;
    if (os_log_type_enabled(v339, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_enable_http_connection_coalescing_denominator;
      _os_log_impl(&dword_181A37000, v339, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v340 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_http_connection_coalescing_denominator];
    [v6 setObject:0 forKeyedSubscript:v340];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v341 = gLogObj;
    if (os_log_type_enabled(v341, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_enable_http_early_data_numerator;
      _os_log_impl(&dword_181A37000, v341, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v342 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_http_early_data_numerator];
    [v6 setObject:0 forKeyedSubscript:v342];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v343 = gLogObj;
    if (os_log_type_enabled(v343, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_enable_http_early_data_denominator;
      _os_log_impl(&dword_181A37000, v343, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v344 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_http_early_data_denominator];
    [v6 setObject:0 forKeyedSubscript:v344];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v345 = gLogObj;
    if (os_log_type_enabled(v345, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_http_early_data_exclude_domains;
      _os_log_impl(&dword_181A37000, v345, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v346 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_http_early_data_exclude_domains];
    [v6 setObject:0 forKeyedSubscript:v346];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v347 = gLogObj;
    if (os_log_type_enabled(v347, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_enable_push_ulpn_numerator;
      _os_log_impl(&dword_181A37000, v347, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v348 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_push_ulpn_numerator];
    [v6 setObject:0 forKeyedSubscript:v348];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v349 = gLogObj;
    if (os_log_type_enabled(v349, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_enable_push_ulpn_denominator;
      _os_log_impl(&dword_181A37000, v349, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v350 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_push_ulpn_denominator];
    [v6 setObject:0 forKeyedSubscript:v350];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v351 = gLogObj;
    if (os_log_type_enabled(v351, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_pqtls_fallback_allowed_domains;
      _os_log_impl(&dword_181A37000, v351, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v352 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_pqtls_fallback_allowed_domains];
    [v6 setObject:0 forKeyedSubscript:v352];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v353 = gLogObj;
    if (os_log_type_enabled(v353, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_enable_pqtls_domains;
      _os_log_impl(&dword_181A37000, v353, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v354 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_pqtls_domains];
    [v6 setObject:0 forKeyedSubscript:v354];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v355 = gLogObj;
    if (os_log_type_enabled(v355, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v379 = "addNewNetworkdSettings";
      v380 = 2080;
      v381 = nw_setting_enable_pqtls_exclude_domains;
      _os_log_impl(&dword_181A37000, v355, OS_LOG_TYPE_INFO, "%{public}s Removing setting %s", buf, 0x16u);
    }

    v356 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_enable_pqtls_exclude_domains];
    [v6 setObject:0 forKeyedSubscript:v356];
  }

  v357 = [v3 description];
  v358 = [v357 stringByReplacingOccurrencesOfString:@"\n" withString:&stru_1EEFDE910];

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v359 = gLogObj;
  if (os_log_type_enabled(v359, OS_LOG_TYPE_INFO))
  {
    *buf = 136446466;
    v379 = "addNewNetworkdSettings";
    v380 = 2112;
    v381 = v358;
    _os_log_impl(&dword_181A37000, v359, OS_LOG_TYPE_INFO, "%{public}s Overriding with new settings %@", buf, 0x16u);
  }

  v375 = 0u;
  v376 = 0u;
  v373 = 0u;
  v374 = 0u;
  v360 = v3;
  v361 = [v360 countByEnumeratingWithState:&v373 objects:v377 count:16];
  if (v361)
  {
    v362 = v361;
    v363 = *v374;
    do
    {
      for (i = 0; i != v362; ++i)
      {
        if (*v374 != v363)
        {
          objc_enumerationMutation(v360);
        }

        v365 = *(*(&v373 + 1) + 8 * i);
        v366 = [v360 objectForKeyedSubscript:v365];
        [v6 setObject:v366 forKeyedSubscript:v365];
      }

      v362 = [v360 countByEnumeratingWithState:&v373 objects:v377 count:16];
    }

    while (v362);
  }

  v367 = [v6 description];
  v368 = [v367 stringByReplacingOccurrencesOfString:@"\n" withString:&stru_1EEFDE910];

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v369 = gLogObj;
  if (os_log_type_enabled(v369, OS_LOG_TYPE_INFO))
  {
    *buf = 136446466;
    v379 = "addNewNetworkdSettings";
    v380 = 2112;
    v381 = v368;
    _os_log_impl(&dword_181A37000, v369, OS_LOG_TYPE_INFO, "%{public}s Created new networkd settings %@", buf, 0x16u);
  }

  if (![v6 count])
  {

    v6 = 0;
  }

  saveAndPostNetworkdSettings(v6, v371, int64);
}