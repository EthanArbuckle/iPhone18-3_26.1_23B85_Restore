uint64_t *nw_group_descriptor_create_apple_id(void *a1, _OWORD *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    v4 = [[NWConcrete_nw_group_descriptor alloc] initWithType:v3 member:a2 groupID:?];
    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_group_descriptor_create_apple_id";
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
        v17 = "nw_group_descriptor_create_apple_id";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null apple_id", buf, 0xCu);
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
          v17 = "nw_group_descriptor_create_apple_id";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null apple_id, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v12)
      {
        *buf = 136446210;
        v17 = "nw_group_descriptor_create_apple_id";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null apple_id, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v17 = "nw_group_descriptor_create_apple_id";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null apple_id, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v7)
  {
    free(v7);
  }

  v4 = 0;
LABEL_3:

  return v4;
}

uint64_t *nw_group_descriptor_create_application_service(void *a1, _OWORD *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    v4 = [[NWConcrete_nw_group_descriptor alloc] initWithType:v3 member:a2 groupID:?];
    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_group_descriptor_create_application_service";
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
        v17 = "nw_group_descriptor_create_application_service";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null endpoint", buf, 0xCu);
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
          v17 = "nw_group_descriptor_create_application_service";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v12)
      {
        *buf = 136446210;
        v17 = "nw_group_descriptor_create_application_service";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v17 = "nw_group_descriptor_create_application_service";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v7)
  {
    free(v7);
  }

  v4 = 0;
LABEL_3:

  return v4;
}

uint64_t *nw_group_descriptor_create_with_type(int a1, _OWORD *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = [NWConcrete_nw_group_descriptor alloc];

    return [(NWConcrete_nw_group_descriptor *)v4 initWithType:a1 member:0 groupID:a2];
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_group_descriptor_create_with_type";
  v7 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v13 = 0;
  if (__nwlog_fault(v7, &type, &v13))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v16 = "nw_group_descriptor_create_with_type";
        v10 = "%{public}s called with null (type != nw_group_type_invalid)";
LABEL_18:
        _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
      }
    }

    else
    {
      if (v13 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v8 = __nwlog_obj();
        v9 = type;
        v12 = os_log_type_enabled(v8, type);
        if (backtrace_string)
        {
          if (v12)
          {
            *buf = 136446466;
            v16 = "nw_group_descriptor_create_with_type";
            v17 = 2082;
            v18 = backtrace_string;
            _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null (type != nw_group_type_invalid), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v12)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v16 = "nw_group_descriptor_create_with_type";
        v10 = "%{public}s called with null (type != nw_group_type_invalid), no backtrace";
        goto LABEL_18;
      }

      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v16 = "nw_group_descriptor_create_with_type";
        v10 = "%{public}s called with null (type != nw_group_type_invalid), backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v7)
  {
    free(v7);
  }

  return 0;
}

uint64_t *nw_group_descriptor_copy(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v19 = "nw_group_descriptor_copy";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (__nwlog_fault(v9, &type, &v16))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v19 = "nw_group_descriptor_copy";
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null descriptor", buf, 0xCu);
        }
      }

      else if (v16 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v10 = __nwlog_obj();
        v13 = type;
        v14 = os_log_type_enabled(v10, type);
        if (backtrace_string)
        {
          if (v14)
          {
            *buf = 136446466;
            v19 = "nw_group_descriptor_copy";
            v20 = 2082;
            v21 = backtrace_string;
            _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null descriptor, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_24;
        }

        if (v14)
        {
          *buf = 136446210;
          v19 = "nw_group_descriptor_copy";
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null descriptor, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v10 = __nwlog_obj();
        v15 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v19 = "nw_group_descriptor_copy";
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null descriptor, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_24:
    if (v9)
    {
      free(v9);
    }

    goto LABEL_26;
  }

  if (!*(v1 + 4) && v1[2] != 4)
  {
LABEL_26:
    v3 = 0;
    goto LABEL_7;
  }

  v3 = [[NWConcrete_nw_group_descriptor alloc] initWithType:0 member:v1 + 1 groupID:?];
  v4 = *(v2 + 4);
  if (v4)
  {
    v5 = _nw_array_copy(v4);
    v6 = v3[4];
    v3[4] = v5;
  }

  objc_storeStrong(v3 + 5, *(v2 + 5));
  *(v3 + 48) = v3[6] & 0xFE | v2[12] & 1;
LABEL_7:

  return v3;
}

uint64_t nw_group_descriptor_get_type(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1[2];
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_group_descriptor_get_type";
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
        v15 = "nw_group_descriptor_get_type";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null descriptor", buf, 0xCu);
      }
    }

    else if (v12 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v9 = type;
      v10 = os_log_type_enabled(v6, type);
      if (backtrace_string)
      {
        if (v10)
        {
          *buf = 136446466;
          v15 = "nw_group_descriptor_get_type";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null descriptor, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_group_descriptor_get_type";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null descriptor, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_group_descriptor_get_type";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null descriptor, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

  v2 = 0;
  v1 = 0;
LABEL_3:

  return v2;
}

void nw_group_descriptor_get_id(void *a1, _OWORD *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    *a2 = v3[1];
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_group_descriptor_get_id";
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
        v15 = "nw_group_descriptor_get_id";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null descriptor", buf, 0xCu);
      }
    }

    else if (v12 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v9 = type;
      v10 = os_log_type_enabled(v6, type);
      if (backtrace_string)
      {
        if (v10)
        {
          *buf = 136446466;
          v15 = "nw_group_descriptor_get_id";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null descriptor, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_group_descriptor_get_id";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null descriptor, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_group_descriptor_get_id";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null descriptor, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

  v3 = 0;
LABEL_3:
}

uint64_t nw_group_descriptor_supports_known_membership(void *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1)
  {
    v3 = 0;
    v14 = __nwlog_obj();
    *buf = 136446210;
    v23 = "nw_group_descriptor_supports_known_membership";
    v5 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v20 = 0;
    if (__nwlog_fault(v5, &type, &v20))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v6 = __nwlog_obj();
        v15 = type;
        if (os_log_type_enabled(v6, type))
        {
          *buf = 136446210;
          v23 = "nw_group_descriptor_supports_known_membership";
          _os_log_impl(&dword_181A37000, v6, v15, "%{public}s called with null descriptor", buf, 0xCu);
        }

LABEL_22:

        goto LABEL_23;
      }

      if (v20 != 1)
      {
        v6 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v6, type))
        {
          *buf = 136446210;
          v23 = "nw_group_descriptor_supports_known_membership";
          _os_log_impl(&dword_181A37000, v6, v19, "%{public}s called with null descriptor, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_22;
      }

      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v17 = type;
      v18 = os_log_type_enabled(v6, type);
      if (!backtrace_string)
      {
        if (v18)
        {
          *buf = 136446210;
          v23 = "nw_group_descriptor_supports_known_membership";
          _os_log_impl(&dword_181A37000, v6, v17, "%{public}s called with null descriptor, no backtrace", buf, 0xCu);
        }

        goto LABEL_22;
      }

      if (v18)
      {
        *buf = 136446466;
        v23 = "nw_group_descriptor_supports_known_membership";
        v24 = 2082;
        v25 = backtrace_string;
        _os_log_impl(&dword_181A37000, v6, v17, "%{public}s called with null descriptor, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

LABEL_23:
    if (!v5)
    {
LABEL_25:
      v8 = 0;
      v1 = v3;
      goto LABEL_26;
    }

LABEL_24:
    free(v5);
    goto LABEL_25;
  }

  v2 = v1[2];
  if (v2 == 3)
  {
    v8 = 1;
  }

  else
  {
    if (!v2)
    {
      v3 = v1;
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v4 = gLogObj;
      *buf = 136446210;
      v23 = "nw_group_descriptor_supports_known_membership";
      v5 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v20 = 0;
      if (!__nwlog_fault(v5, &type, &v20))
      {
        goto LABEL_23;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v6 = gLogObj;
        v7 = type;
        if (os_log_type_enabled(v6, type))
        {
          *buf = 136446210;
          v23 = "nw_group_descriptor_supports_known_membership";
          _os_log_impl(&dword_181A37000, v6, v7, "%{public}s Invalid group descriptor type", buf, 0xCu);
        }
      }

      else if (v20 == 1)
      {
        v9 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v6 = gLogObj;
        v10 = type;
        v11 = os_log_type_enabled(v6, type);
        if (v9)
        {
          if (v11)
          {
            *buf = 136446466;
            v23 = "nw_group_descriptor_supports_known_membership";
            v24 = 2082;
            v25 = v9;
            _os_log_impl(&dword_181A37000, v6, v10, "%{public}s Invalid group descriptor type, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v9);
          if (!v5)
          {
            goto LABEL_25;
          }

          goto LABEL_24;
        }

        if (v11)
        {
          *buf = 136446210;
          v23 = "nw_group_descriptor_supports_known_membership";
          _os_log_impl(&dword_181A37000, v6, v10, "%{public}s Invalid group descriptor type, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v6 = gLogObj;
        v12 = type;
        if (os_log_type_enabled(v6, type))
        {
          *buf = 136446210;
          v23 = "nw_group_descriptor_supports_known_membership";
          _os_log_impl(&dword_181A37000, v6, v12, "%{public}s Invalid group descriptor type, backtrace limit exceeded", buf, 0xCu);
        }
      }

      goto LABEL_22;
    }

    v8 = 0;
  }

LABEL_26:

  return v8;
}

BOOL nw_group_descriptor_add_endpoint(nw_group_descriptor_t descriptor, nw_endpoint_t endpoint)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = descriptor;
  v4 = endpoint;
  v5 = v4;
  if (!v3)
  {
    v14 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_group_descriptor_add_endpoint";
    v15 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v15, &type, &v27))
    {
      goto LABEL_54;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v16 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        v30 = "nw_group_descriptor_add_endpoint";
        _os_log_impl(&dword_181A37000, v16, v17, "%{public}s called with null descriptor", buf, 0xCu);
      }

      goto LABEL_53;
    }

    if (v27 != 1)
    {
      v16 = __nwlog_obj();
      v25 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        v30 = "nw_group_descriptor_add_endpoint";
        _os_log_impl(&dword_181A37000, v16, v25, "%{public}s called with null descriptor, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_53;
    }

    backtrace_string = __nw_create_backtrace_string();
    v16 = __nwlog_obj();
    v21 = type;
    v22 = os_log_type_enabled(v16, type);
    if (!backtrace_string)
    {
      if (v22)
      {
        *buf = 136446210;
        v30 = "nw_group_descriptor_add_endpoint";
        _os_log_impl(&dword_181A37000, v16, v21, "%{public}s called with null descriptor, no backtrace", buf, 0xCu);
      }

      goto LABEL_53;
    }

    if (v22)
    {
      *buf = 136446466;
      v30 = "nw_group_descriptor_add_endpoint";
      v31 = 2082;
      v32 = backtrace_string;
      _os_log_impl(&dword_181A37000, v16, v21, "%{public}s called with null descriptor, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_41;
  }

  if (!v4)
  {
    v18 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_group_descriptor_add_endpoint";
    v15 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v15, &type, &v27))
    {
      goto LABEL_54;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v16 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        v30 = "nw_group_descriptor_add_endpoint";
        _os_log_impl(&dword_181A37000, v16, v19, "%{public}s called with null endpoint", buf, 0xCu);
      }

LABEL_53:

LABEL_54:
      if (v15)
      {
        free(v15);
      }

      goto LABEL_20;
    }

    if (v27 != 1)
    {
      v16 = __nwlog_obj();
      v26 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        v30 = "nw_group_descriptor_add_endpoint";
        _os_log_impl(&dword_181A37000, v16, v26, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_53;
    }

    backtrace_string = __nw_create_backtrace_string();
    v16 = __nwlog_obj();
    v23 = type;
    v24 = os_log_type_enabled(v16, type);
    if (!backtrace_string)
    {
      if (v24)
      {
        *buf = 136446210;
        v30 = "nw_group_descriptor_add_endpoint";
        _os_log_impl(&dword_181A37000, v16, v23, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
      }

      goto LABEL_53;
    }

    if (v24)
    {
      *buf = 136446466;
      v30 = "nw_group_descriptor_add_endpoint";
      v31 = 2082;
      v32 = backtrace_string;
      _os_log_impl(&dword_181A37000, v16, v23, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_41:

    free(backtrace_string);
    goto LABEL_54;
  }

  if (!nw_group_descriptor_allows_endpoint(v3, v4))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = v3->type;
      if (v9 > 4)
      {
        v10 = "unknown";
      }

      else
      {
        v10 = off_1E6A2CCD0[v9];
      }

      *buf = 136446466;
      v30 = "nw_group_descriptor_add_endpoint";
      v31 = 2080;
      v32 = v10;
      _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_ERROR, "%{public}s Invalid endpoint type %s for group descriptor", buf, 0x16u);
    }

    goto LABEL_19;
  }

  if ((nw_group_descriptor_supports_multiple_members(v3) & 1) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = v3->type;
      if (v11 > 4)
      {
        v12 = "unknown";
      }

      else
      {
        v12 = off_1E6A2CCD0[v11];
      }

      *buf = 136446466;
      v30 = "nw_group_descriptor_add_endpoint";
      v31 = 2080;
      v32 = v12;
      _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_ERROR, "%{public}s Group descriptor of type %s does not support multiple members", buf, 0x16u);
    }

LABEL_19:

LABEL_20:
    v7 = 0;
    goto LABEL_21;
  }

  members = v3->members;
  if (members)
  {
    _nw_array_append(members, v5);
  }

  v7 = 1;
LABEL_21:

  return v7;
}

uint64_t nw_group_descriptor_supports_multiple_members(NWConcrete_nw_group_descriptor *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1->type;
  if (v2 == 4 || v2 == 2)
  {
    v8 = 0;
    goto LABEL_14;
  }

  if (v2)
  {
    v8 = 1;
    goto LABEL_14;
  }

  v3 = v1;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v4 = gLogObj;
  *buf = 136446210;
  v17 = "nw_group_descriptor_supports_multiple_members";
  v5 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (__nwlog_fault(v5, &type, &v14))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v17 = "nw_group_descriptor_supports_multiple_members";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s Invalid group descriptor type", buf, 0xCu);
      }
    }

    else if (v14 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      v11 = type;
      v12 = os_log_type_enabled(v6, type);
      if (backtrace_string)
      {
        if (v12)
        {
          *buf = 136446466;
          v17 = "nw_group_descriptor_supports_multiple_members";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v11, "%{public}s Invalid group descriptor type, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (!v5)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }

      if (v12)
      {
        *buf = 136446210;
        v17 = "nw_group_descriptor_supports_multiple_members";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s Invalid group descriptor type, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      v13 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v17 = "nw_group_descriptor_supports_multiple_members";
        _os_log_impl(&dword_181A37000, v6, v13, "%{public}s Invalid group descriptor type, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

  if (v5)
  {
LABEL_10:
    free(v5);
  }

LABEL_11:
  v8 = 0;
  v1 = v3;
LABEL_14:

  return v8;
}

void nw_group_descriptor_remove_endpoint(void *a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v23 = "nw_group_descriptor_remove_endpoint";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v20 = 0;
    if (!__nwlog_fault(v7, &type, &v20))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v23 = "nw_group_descriptor_remove_endpoint";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null descriptor", buf, 0xCu);
      }
    }

    else if (v20 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v13 = type;
      v14 = os_log_type_enabled(v8, type);
      if (backtrace_string)
      {
        if (v14)
        {
          *buf = 136446466;
          v23 = "nw_group_descriptor_remove_endpoint";
          v24 = 2082;
          v25 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null descriptor, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_38:
        if (!v7)
        {
          goto LABEL_4;
        }

LABEL_39:
        free(v7);
        goto LABEL_4;
      }

      if (v14)
      {
        *buf = 136446210;
        v23 = "nw_group_descriptor_remove_endpoint";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null descriptor, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v23 = "nw_group_descriptor_remove_endpoint";
        _os_log_impl(&dword_181A37000, v8, v18, "%{public}s called with null descriptor, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (v4)
  {
    nw_array_remove_object(v3[4], v4);
    goto LABEL_4;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v23 = "nw_group_descriptor_remove_endpoint";
  v7 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v20 = 0;
  if (!__nwlog_fault(v7, &type, &v20))
  {
    goto LABEL_38;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v8 = __nwlog_obj();
    v11 = type;
    if (os_log_type_enabled(v8, type))
    {
      *buf = 136446210;
      v23 = "nw_group_descriptor_remove_endpoint";
      _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null endpoint", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v20 != 1)
  {
    v8 = __nwlog_obj();
    v19 = type;
    if (os_log_type_enabled(v8, type))
    {
      *buf = 136446210;
      v23 = "nw_group_descriptor_remove_endpoint";
      _os_log_impl(&dword_181A37000, v8, v19, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_37;
  }

  v15 = __nw_create_backtrace_string();
  v8 = __nwlog_obj();
  v16 = type;
  v17 = os_log_type_enabled(v8, type);
  if (!v15)
  {
    if (v17)
    {
      *buf = 136446210;
      v23 = "nw_group_descriptor_remove_endpoint";
      _os_log_impl(&dword_181A37000, v8, v16, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v17)
  {
    *buf = 136446466;
    v23 = "nw_group_descriptor_remove_endpoint";
    v24 = 2082;
    v25 = v15;
    _os_log_impl(&dword_181A37000, v8, v16, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v15);
  if (v7)
  {
    goto LABEL_39;
  }

LABEL_4:
}

uint64_t nw_group_descriptor_set_members(void *a1, void *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      v6 = v3[4];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __nw_group_descriptor_set_members_block_invoke;
      aBlock[3] = &unk_1E6A3CCB8;
      v7 = v3;
      v31 = v7;
      if (v6 && (_nw_array_apply(v6, aBlock) & 1) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446210;
          v35 = "nw_group_descriptor_set_members";
          v13 = "%{public}s Invalid endpoint type for group descriptor";
          v14 = v9;
          v15 = 12;
LABEL_14:
          _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_ERROR, v13, buf, v15);
        }
      }

      else
      {
        if (nw_group_descriptor_supports_multiple_members(v7))
        {
          v8 = v5;
          v9 = v3[4];
          v3[4] = v8;
          v10 = 1;
LABEL_16:

          goto LABEL_17;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v11 = v7->type;
          if (v11 > 4)
          {
            v12 = "unknown";
          }

          else
          {
            v12 = off_1E6A2CCD0[v11];
          }

          *buf = 136446466;
          v35 = "nw_group_descriptor_set_members";
          v36 = 2080;
          v37 = v12;
          v13 = "%{public}s Group descriptor of type %s does not support multiple members";
          v14 = v9;
          v15 = 22;
          goto LABEL_14;
        }
      }

      v10 = 0;
      goto LABEL_16;
    }

    v21 = __nwlog_obj();
    *buf = 136446210;
    v35 = "nw_group_descriptor_set_members";
    v18 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (__nwlog_fault(v18, &type, &v32))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v19 = __nwlog_obj();
        v22 = type;
        if (os_log_type_enabled(v19, type))
        {
          *buf = 136446210;
          v35 = "nw_group_descriptor_set_members";
          _os_log_impl(&dword_181A37000, v19, v22, "%{public}s called with null endpoints", buf, 0xCu);
        }

LABEL_49:

        goto LABEL_50;
      }

      if (v32 != 1)
      {
        v19 = __nwlog_obj();
        v29 = type;
        if (os_log_type_enabled(v19, type))
        {
          *buf = 136446210;
          v35 = "nw_group_descriptor_set_members";
          _os_log_impl(&dword_181A37000, v19, v29, "%{public}s called with null endpoints, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_49;
      }

      backtrace_string = __nw_create_backtrace_string();
      v19 = __nwlog_obj();
      v26 = type;
      v27 = os_log_type_enabled(v19, type);
      if (!backtrace_string)
      {
        if (v27)
        {
          *buf = 136446210;
          v35 = "nw_group_descriptor_set_members";
          _os_log_impl(&dword_181A37000, v19, v26, "%{public}s called with null endpoints, no backtrace", buf, 0xCu);
        }

        goto LABEL_49;
      }

      if (v27)
      {
        *buf = 136446466;
        v35 = "nw_group_descriptor_set_members";
        v36 = 2082;
        v37 = backtrace_string;
        _os_log_impl(&dword_181A37000, v19, v26, "%{public}s called with null endpoints, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_37;
    }
  }

  else
  {
    v17 = __nwlog_obj();
    *buf = 136446210;
    v35 = "nw_group_descriptor_set_members";
    v18 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (__nwlog_fault(v18, &type, &v32))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v19 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v19, type))
        {
          *buf = 136446210;
          v35 = "nw_group_descriptor_set_members";
          _os_log_impl(&dword_181A37000, v19, v20, "%{public}s called with null descriptor", buf, 0xCu);
        }

        goto LABEL_49;
      }

      if (v32 != 1)
      {
        v19 = __nwlog_obj();
        v28 = type;
        if (os_log_type_enabled(v19, type))
        {
          *buf = 136446210;
          v35 = "nw_group_descriptor_set_members";
          _os_log_impl(&dword_181A37000, v19, v28, "%{public}s called with null descriptor, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_49;
      }

      backtrace_string = __nw_create_backtrace_string();
      v19 = __nwlog_obj();
      v24 = type;
      v25 = os_log_type_enabled(v19, type);
      if (!backtrace_string)
      {
        if (v25)
        {
          *buf = 136446210;
          v35 = "nw_group_descriptor_set_members";
          _os_log_impl(&dword_181A37000, v19, v24, "%{public}s called with null descriptor, no backtrace", buf, 0xCu);
        }

        goto LABEL_49;
      }

      if (v25)
      {
        *buf = 136446466;
        v35 = "nw_group_descriptor_set_members";
        v36 = 2082;
        v37 = backtrace_string;
        _os_log_impl(&dword_181A37000, v19, v24, "%{public}s called with null descriptor, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_37:

      free(backtrace_string);
    }
  }

LABEL_50:
  if (v18)
  {
    free(v18);
  }

  v10 = 0;
LABEL_17:

  return v10;
}

void nw_group_descriptor_enumerate_endpoints(nw_group_descriptor_t descriptor, nw_group_descriptor_enumerate_endpoints_block_t enumerate_block)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = descriptor;
  v4 = enumerate_block;
  v5 = v4;
  if (!v3)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v27 = "nw_group_descriptor_enumerate_endpoints";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (!__nwlog_fault(v9, &type, &v24))
    {
      goto LABEL_40;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v27 = "nw_group_descriptor_enumerate_endpoints";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null descriptor", buf, 0xCu);
      }
    }

    else if (v24 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v15 = type;
      v16 = os_log_type_enabled(v10, type);
      if (backtrace_string)
      {
        if (v16)
        {
          *buf = 136446466;
          v27 = "nw_group_descriptor_enumerate_endpoints";
          v28 = 2082;
          v29 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null descriptor, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_40:
        if (!v9)
        {
          goto LABEL_6;
        }

LABEL_41:
        free(v9);
        goto LABEL_6;
      }

      if (v16)
      {
        *buf = 136446210;
        v27 = "nw_group_descriptor_enumerate_endpoints";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null descriptor, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v27 = "nw_group_descriptor_enumerate_endpoints";
        _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null descriptor, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_39:

    goto LABEL_40;
  }

  if (v4)
  {
    isa = v3[4].isa;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __nw_group_descriptor_enumerate_endpoints_block_invoke;
    aBlock[3] = &unk_1E6A3CD30;
    v7 = v4;
    v23 = v7;
    if (isa)
    {
      _nw_array_apply(isa, aBlock);
      v7 = v23;
    }

    goto LABEL_6;
  }

  v12 = __nwlog_obj();
  *buf = 136446210;
  v27 = "nw_group_descriptor_enumerate_endpoints";
  v9 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v24 = 0;
  if (!__nwlog_fault(v9, &type, &v24))
  {
    goto LABEL_40;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v10 = __nwlog_obj();
    v13 = type;
    if (os_log_type_enabled(v10, type))
    {
      *buf = 136446210;
      v27 = "nw_group_descriptor_enumerate_endpoints";
      _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null enumerate_block", buf, 0xCu);
    }

    goto LABEL_39;
  }

  if (v24 != 1)
  {
    v10 = __nwlog_obj();
    v21 = type;
    if (os_log_type_enabled(v10, type))
    {
      *buf = 136446210;
      v27 = "nw_group_descriptor_enumerate_endpoints";
      _os_log_impl(&dword_181A37000, v10, v21, "%{public}s called with null enumerate_block, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_39;
  }

  v17 = __nw_create_backtrace_string();
  v10 = __nwlog_obj();
  v18 = type;
  v19 = os_log_type_enabled(v10, type);
  if (!v17)
  {
    if (v19)
    {
      *buf = 136446210;
      v27 = "nw_group_descriptor_enumerate_endpoints";
      _os_log_impl(&dword_181A37000, v10, v18, "%{public}s called with null enumerate_block, no backtrace", buf, 0xCu);
    }

    goto LABEL_39;
  }

  if (v19)
  {
    *buf = 136446466;
    v27 = "nw_group_descriptor_enumerate_endpoints";
    v28 = 2082;
    v29 = v17;
    _os_log_impl(&dword_181A37000, v10, v18, "%{public}s called with null enumerate_block, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v17);
  if (v9)
  {
    goto LABEL_41;
  }

LABEL_6:
}

uint64_t nw_group_descriptor_copy_member(void *a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v26 = "nw_group_descriptor_copy_member";
    v11 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (!__nwlog_fault(v11, &type, &v23))
    {
      goto LABEL_47;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v26 = "nw_group_descriptor_copy_member";
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null descriptor", buf, 0xCu);
      }

      goto LABEL_46;
    }

    if (v23 != 1)
    {
      v12 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v26 = "nw_group_descriptor_copy_member";
        _os_log_impl(&dword_181A37000, v12, v21, "%{public}s called with null descriptor, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_46;
    }

    backtrace_string = __nw_create_backtrace_string();
    v12 = __nwlog_obj();
    v17 = type;
    v18 = os_log_type_enabled(v12, type);
    if (!backtrace_string)
    {
      if (v18)
      {
        *buf = 136446210;
        v26 = "nw_group_descriptor_copy_member";
        _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null descriptor, no backtrace", buf, 0xCu);
      }

      goto LABEL_46;
    }

    if (v18)
    {
      *buf = 136446466;
      v26 = "nw_group_descriptor_copy_member";
      v27 = 2082;
      v28 = backtrace_string;
      _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null descriptor, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_34;
  }

  if (nw_group_descriptor_supports_multiple_members(v1))
  {
    v14 = __nwlog_obj();
    *buf = 136446210;
    v26 = "nw_group_descriptor_copy_member";
    v11 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (!__nwlog_fault(v11, &type, &v23))
    {
      goto LABEL_47;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v26 = "nw_group_descriptor_copy_member";
        _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called on group descriptor that supports multiple endpoints", buf, 0xCu);
      }

LABEL_46:

LABEL_47:
      if (v11)
      {
        free(v11);
      }

      goto LABEL_13;
    }

    if (v23 != 1)
    {
      v12 = __nwlog_obj();
      v22 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v26 = "nw_group_descriptor_copy_member";
        _os_log_impl(&dword_181A37000, v12, v22, "%{public}s called on group descriptor that supports multiple endpoints, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_46;
    }

    backtrace_string = __nw_create_backtrace_string();
    v12 = __nwlog_obj();
    v19 = type;
    v20 = os_log_type_enabled(v12, type);
    if (!backtrace_string)
    {
      if (v20)
      {
        *buf = 136446210;
        v26 = "nw_group_descriptor_copy_member";
        _os_log_impl(&dword_181A37000, v12, v19, "%{public}s called on group descriptor that supports multiple endpoints, no backtrace", buf, 0xCu);
      }

      goto LABEL_46;
    }

    if (v20)
    {
      *buf = 136446466;
      v26 = "nw_group_descriptor_copy_member";
      v27 = 2082;
      v28 = backtrace_string;
      _os_log_impl(&dword_181A37000, v12, v19, "%{public}s called on group descriptor that supports multiple endpoints, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_34:

    free(backtrace_string);
    goto LABEL_47;
  }

  members = v2->members;
  if (!members || _nw_array_get_count(members) != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = v2->type;
      if (v7 > 4)
      {
        v8 = "unknown";
      }

      else
      {
        v8 = off_1E6A2CCD0[v7];
      }

      *buf = 136446466;
      v26 = "nw_group_descriptor_copy_member";
      v27 = 2080;
      v28 = v8;
      _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_ERROR, "%{public}s Group descriptor of type %s does not have exactly one member", buf, 0x16u);
    }

    goto LABEL_13;
  }

  v4 = v2->members;
  if (!v4)
  {
LABEL_13:
    v5 = 0;
    goto LABEL_14;
  }

  v5 = _nw_array_get_object_at_index(v4, 0);
LABEL_14:

  return v5;
}

id nw_group_descriptor_copy_members(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1[4];
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_group_descriptor_copy_members";
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
        v16 = "nw_group_descriptor_copy_members";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null descriptor", buf, 0xCu);
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
          v16 = "nw_group_descriptor_copy_members";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null descriptor, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_group_descriptor_copy_members";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null descriptor, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_group_descriptor_copy_members";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null descriptor, backtrace limit exceeded", buf, 0xCu);
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

void nw_multicast_group_descriptor_set_specific_source(nw_group_descriptor_t multicast_descriptor, nw_endpoint_t source)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = multicast_descriptor;
  v4 = source;
  if (v3)
  {
    objc_storeStrong(&v3[5].isa, source);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_multicast_group_descriptor_set_specific_source";
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
        v16 = "nw_multicast_group_descriptor_set_specific_source";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null multicast_descriptor", buf, 0xCu);
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
          v16 = "nw_multicast_group_descriptor_set_specific_source";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null multicast_descriptor, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_multicast_group_descriptor_set_specific_source";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null multicast_descriptor, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_multicast_group_descriptor_set_specific_source";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null multicast_descriptor, backtrace limit exceeded", buf, 0xCu);
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

id nw_multicast_group_descriptor_get_specific_source(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1[5];
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_multicast_group_descriptor_get_specific_source";
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
        v16 = "nw_multicast_group_descriptor_get_specific_source";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null multicast_descriptor", buf, 0xCu);
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
          v16 = "nw_multicast_group_descriptor_get_specific_source";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null multicast_descriptor, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_multicast_group_descriptor_get_specific_source";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null multicast_descriptor, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_multicast_group_descriptor_get_specific_source";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null multicast_descriptor, backtrace limit exceeded", buf, 0xCu);
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

void nw_multicast_group_descriptor_set_disable_unicast_traffic(nw_group_descriptor_t multicast_descriptor, BOOL disable_unicast_traffic)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = multicast_descriptor;
  if (v3)
  {
    LOBYTE(v3[6].isa) = v3[6].isa & 0xFE | disable_unicast_traffic;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_multicast_group_descriptor_set_disable_unicast_traffic";
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
        v15 = "nw_multicast_group_descriptor_set_disable_unicast_traffic";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null multicast_descriptor", buf, 0xCu);
      }
    }

    else if (v12 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v9 = type;
      v10 = os_log_type_enabled(v6, type);
      if (backtrace_string)
      {
        if (v10)
        {
          *buf = 136446466;
          v15 = "nw_multicast_group_descriptor_set_disable_unicast_traffic";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null multicast_descriptor, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_multicast_group_descriptor_set_disable_unicast_traffic";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null multicast_descriptor, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_multicast_group_descriptor_set_disable_unicast_traffic";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null multicast_descriptor, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

  v3 = 0;
LABEL_3:
}

BOOL nw_multicast_group_descriptor_get_disable_unicast_traffic(nw_group_descriptor_t multicast_descriptor)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = multicast_descriptor;
  if (v1)
  {
    v2 = v1[6].isa & 1;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_multicast_group_descriptor_get_disable_unicast_traffic";
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
        v15 = "nw_multicast_group_descriptor_get_disable_unicast_traffic";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null multicast_descriptor", buf, 0xCu);
      }
    }

    else if (v12 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v9 = type;
      v10 = os_log_type_enabled(v6, type);
      if (backtrace_string)
      {
        if (v10)
        {
          *buf = 136446466;
          v15 = "nw_multicast_group_descriptor_get_disable_unicast_traffic";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null multicast_descriptor, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_multicast_group_descriptor_get_disable_unicast_traffic";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null multicast_descriptor, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_multicast_group_descriptor_get_disable_unicast_traffic";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null multicast_descriptor, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

  v2 = 0;
  v1 = 0;
LABEL_3:

  return v2;
}

nw_privacy_context_t nw_privacy_context_create(const char *description)
{
  v1 = [[NWConcrete_nw_context alloc] initWithIdentifier:?];
  nw_context_set_isolate_protocol_cache(v1, 1);
  nw_context_activate(v1);
  return v1;
}

void nw_privacy_context_flush_cache(nw_privacy_context_t privacy_context)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = privacy_context;
  if (v1)
  {
    if (v1 == &__block_literal_global_11774)
    {
      if (nw_context_copy_implicit_context::onceToken[0] != -1)
      {
        dispatch_once(nw_context_copy_implicit_context::onceToken, &__block_literal_global_18);
      }

      v1 = nw_context_copy_implicit_context::implicit_context;
    }

    v11 = v1;
    v2 = nw_context_copy_cache_context(v1);
    nw_context_purge_all_endpoints(v2);

    return;
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_privacy_context_flush_cache";
  v4 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v12 = 0;
  if (__nwlog_fault(v4, &type, &v12))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v15 = "nw_privacy_context_flush_cache";
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null privacy_context", buf, 0xCu);
      }
    }

    else if (v12 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v5 = __nwlog_obj();
      v8 = type;
      v9 = os_log_type_enabled(v5, type);
      if (backtrace_string)
      {
        if (v9)
        {
          *buf = 136446466;
          v15 = "nw_privacy_context_flush_cache";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v8, "%{public}s called with null privacy_context, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_25;
      }

      if (v9)
      {
        *buf = 136446210;
        v15 = "nw_privacy_context_flush_cache";
        _os_log_impl(&dword_181A37000, v5, v8, "%{public}s called with null privacy_context, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v5 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v15 = "nw_privacy_context_flush_cache";
        _os_log_impl(&dword_181A37000, v5, v10, "%{public}s called with null privacy_context, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_25:
  if (v4)
  {
    free(v4);
  }
}

void nw_privacy_context_disable_logging(nw_privacy_context_t privacy_context)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = privacy_context;
  v2 = v1;
  if (!v1)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_privacy_context_disable_logging";
    v4 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (__nwlog_fault(v4, &type, &v17))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v5 = __nwlog_obj();
        v12 = type;
        if (os_log_type_enabled(v5, type))
        {
          *buf = 136446210;
          v20 = "nw_privacy_context_disable_logging";
          _os_log_impl(&dword_181A37000, v5, v12, "%{public}s called with null privacy_context", buf, 0xCu);
        }

        goto LABEL_20;
      }

      if (v17 != 1)
      {
        v5 = __nwlog_obj();
        v16 = type;
        if (os_log_type_enabled(v5, type))
        {
          *buf = 136446210;
          v20 = "nw_privacy_context_disable_logging";
          _os_log_impl(&dword_181A37000, v5, v16, "%{public}s called with null privacy_context, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_20;
      }

      backtrace_string = __nw_create_backtrace_string();
      v5 = __nwlog_obj();
      v14 = type;
      v15 = os_log_type_enabled(v5, type);
      if (!backtrace_string)
      {
        if (v15)
        {
          *buf = 136446210;
          v20 = "nw_privacy_context_disable_logging";
          _os_log_impl(&dword_181A37000, v5, v14, "%{public}s called with null privacy_context, no backtrace", buf, 0xCu);
        }

        goto LABEL_20;
      }

      if (v15)
      {
        *buf = 136446466;
        v20 = "nw_privacy_context_disable_logging";
        v21 = 2082;
        v22 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v14, "%{public}s called with null privacy_context, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

LABEL_21:
    if (!v4)
    {
      goto LABEL_23;
    }

LABEL_22:
    free(v4);
    goto LABEL_23;
  }

  if (v1 != &__block_literal_global_11774)
  {
    nw_context_set_privacy_level_internal(v1, 4, 0);
    goto LABEL_23;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v3 = gLogObj;
  *buf = 136446210;
  v20 = "nw_privacy_context_disable_logging";
  v4 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v17 = 0;
  if (!__nwlog_fault(v4, &type, &v17))
  {
    goto LABEL_21;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    v6 = type;
    if (os_log_type_enabled(v5, type))
    {
      *buf = 136446210;
      v20 = "nw_privacy_context_disable_logging";
      _os_log_impl(&dword_181A37000, v5, v6, "%{public}s Logging cannot be disabled for the default privacy context", buf, 0xCu);
    }

LABEL_20:

    goto LABEL_21;
  }

  if (v17 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    v10 = type;
    if (os_log_type_enabled(v5, type))
    {
      *buf = 136446210;
      v20 = "nw_privacy_context_disable_logging";
      _os_log_impl(&dword_181A37000, v5, v10, "%{public}s Logging cannot be disabled for the default privacy context, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_20;
  }

  v7 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v5 = gLogObj;
  v8 = type;
  v9 = os_log_type_enabled(v5, type);
  if (!v7)
  {
    if (v9)
    {
      *buf = 136446210;
      v20 = "nw_privacy_context_disable_logging";
      _os_log_impl(&dword_181A37000, v5, v8, "%{public}s Logging cannot be disabled for the default privacy context, no backtrace", buf, 0xCu);
    }

    goto LABEL_20;
  }

  if (v9)
  {
    *buf = 136446466;
    v20 = "nw_privacy_context_disable_logging";
    v21 = 2082;
    v22 = v7;
    _os_log_impl(&dword_181A37000, v5, v8, "%{public}s Logging cannot be disabled for the default privacy context, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v7);
  if (v4)
  {
    goto LABEL_22;
  }

LABEL_23:
}

void nw_privacy_context_require_encrypted_name_resolution(nw_privacy_context_t privacy_context, BOOL require_encrypted_name_resolution, nw_resolver_config_t fallback_resolver_config)
{
  v4 = require_encrypted_name_resolution;
  v21 = *MEMORY[0x1E69E9840];
  v5 = privacy_context;
  v6 = fallback_resolver_config;
  if (v5)
  {
    if (v5 == &__block_literal_global_11774)
    {
      if (nw_context_copy_implicit_context::onceToken[0] != -1)
      {
        dispatch_once(nw_context_copy_implicit_context::onceToken, &__block_literal_global_18);
      }

      v5 = nw_context_copy_implicit_context::implicit_context;
    }

    nw_context_require_encrypted_name_resolution(v5, v4, v6);
    goto LABEL_7;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  v18 = "nw_privacy_context_require_encrypted_name_resolution";
  v8 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v15 = 0;
  if (__nwlog_fault(v8, &type, &v15))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v18 = "nw_privacy_context_require_encrypted_name_resolution";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null privacy_context", buf, 0xCu);
      }
    }

    else if (v15 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v12 = type;
      v13 = os_log_type_enabled(v9, type);
      if (backtrace_string)
      {
        if (v13)
        {
          *buf = 136446466;
          v18 = "nw_privacy_context_require_encrypted_name_resolution";
          v19 = 2082;
          v20 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null privacy_context, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_24;
      }

      if (v13)
      {
        *buf = 136446210;
        v18 = "nw_privacy_context_require_encrypted_name_resolution";
        _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null privacy_context, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v18 = "nw_privacy_context_require_encrypted_name_resolution";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null privacy_context, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_24:
  if (v8)
  {
    free(v8);
  }

  v5 = 0;
LABEL_7:
}

void nw_privacy_context_add_proxy(nw_privacy_context_t privacy_context, nw_proxy_config_t proxy_config)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = privacy_context;
  v4 = proxy_config;
  if (v3)
  {
    if (v3 == &__block_literal_global_11774)
    {
      if (nw_context_copy_implicit_context::onceToken[0] != -1)
      {
        dispatch_once(nw_context_copy_implicit_context::onceToken, &__block_literal_global_18);
      }

      v3 = nw_context_copy_implicit_context::implicit_context;
    }

    nw_context_add_proxy(v3, v4);
    goto LABEL_7;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_privacy_context_add_proxy";
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
        v16 = "nw_privacy_context_add_proxy";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null privacy_context", buf, 0xCu);
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
          v16 = "nw_privacy_context_add_proxy";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null privacy_context, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_24;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_privacy_context_add_proxy";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null privacy_context, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_privacy_context_add_proxy";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null privacy_context, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_24:
  if (v6)
  {
    free(v6);
  }

  v3 = 0;
LABEL_7:
}

void nw_privacy_context_clear_proxies(nw_privacy_context_t privacy_context)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = privacy_context;
  if (v1)
  {
    v2 = v1;
    if (v1 == &__block_literal_global_11774)
    {
      if (nw_context_copy_implicit_context::onceToken[0] != -1)
      {
        dispatch_once(nw_context_copy_implicit_context::onceToken, &__block_literal_global_18);
      }

      v2 = nw_context_copy_implicit_context::implicit_context;
    }

    nw_context_clear_proxies(v2);
    goto LABEL_7;
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_privacy_context_clear_proxies";
  v4 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v4, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v14 = "nw_privacy_context_clear_proxies";
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null privacy_context", buf, 0xCu);
      }
    }

    else if (v11 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v5 = __nwlog_obj();
      v8 = type;
      v9 = os_log_type_enabled(v5, type);
      if (backtrace_string)
      {
        if (v9)
        {
          *buf = 136446466;
          v14 = "nw_privacy_context_clear_proxies";
          v15 = 2082;
          v16 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v8, "%{public}s called with null privacy_context, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_24;
      }

      if (v9)
      {
        *buf = 136446210;
        v14 = "nw_privacy_context_clear_proxies";
        _os_log_impl(&dword_181A37000, v5, v8, "%{public}s called with null privacy_context, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v5 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v14 = "nw_privacy_context_clear_proxies";
        _os_log_impl(&dword_181A37000, v5, v10, "%{public}s called with null privacy_context, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_24:
  if (v4)
  {
    free(v4);
  }

  v2 = 0;
LABEL_7:
}

void nw_protocol_instance_flush_batched_input(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ((v1->flow_in_connected & 0x10000000) != 0)
    {
      nw_protocol_instance_flush_batched_input_internal(v1);
      BYTE3(v2->flow_in_connected) |= 0x10u;
      var10 = v2->parent_definition->extended_state->var10;
      if (var10)
      {
        var10(v2);
      }
    }

    goto LABEL_5;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_protocol_instance_flush_batched_input";
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
        v15 = "nw_protocol_instance_flush_batched_input";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null instance", buf, 0xCu);
      }
    }

    else if (v12 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v9 = type;
      v10 = os_log_type_enabled(v6, type);
      if (backtrace_string)
      {
        if (v10)
        {
          *buf = 136446466;
          v15 = "nw_protocol_instance_flush_batched_input";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_protocol_instance_flush_batched_input";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null instance, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_protocol_instance_flush_batched_input";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_22:
  if (v5)
  {
    free(v5);
  }

LABEL_5:
}

uint64_t nw_protocol_instance_wait_for_early_data(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v4 = __nwlog_obj();
    *buf = 136446210;
    v16 = "nw_protocol_instance_wait_for_early_data";
    v5 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (__nwlog_fault(v5, &type, &v13))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v6 = __nwlog_obj();
        v7 = type;
        if (os_log_type_enabled(v6, type))
        {
          *buf = 136446210;
          v16 = "nw_protocol_instance_wait_for_early_data";
          _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null instance", buf, 0xCu);
        }
      }

      else if (v13 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v6 = __nwlog_obj();
        v9 = type;
        v10 = os_log_type_enabled(v6, type);
        if (backtrace_string)
        {
          if (v10)
          {
            *buf = 136446466;
            v16 = "nw_protocol_instance_wait_for_early_data";
            v17 = 2082;
            v18 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (v10)
        {
          *buf = 136446210;
          v16 = "nw_protocol_instance_wait_for_early_data";
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null instance, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v6 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v6, type))
        {
          *buf = 136446210;
          v16 = "nw_protocol_instance_wait_for_early_data";
          _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_20:
    if (v5)
    {
      free(v5);
    }

    goto LABEL_22;
  }

  nw_context_assert_queue(*(v1 + 15));
  if (!*(v2 - 6))
  {
LABEL_22:
    v3 = 0;
    goto LABEL_23;
  }

  v2[413] |= 4u;
  v3 = 1;
LABEL_23:

  return v3;
}

void nw_protocol_instance_reset_after_early_data(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    *(v1 + 413) &= ~4u;
    if (*(v1[1] + 16) == 3)
    {
      nw_hash_table_apply(v1[29], &__block_literal_global_62);
    }

    goto LABEL_4;
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_protocol_instance_reset_after_early_data";
  v4 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v4, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v14 = "nw_protocol_instance_reset_after_early_data";
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null instance", buf, 0xCu);
      }
    }

    else if (v11 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v5 = __nwlog_obj();
      v8 = type;
      v9 = os_log_type_enabled(v5, type);
      if (backtrace_string)
      {
        if (v9)
        {
          *buf = 136446466;
          v14 = "nw_protocol_instance_reset_after_early_data";
          v15 = 2082;
          v16 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v8, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_21;
      }

      if (v9)
      {
        *buf = 136446210;
        v14 = "nw_protocol_instance_reset_after_early_data";
        _os_log_impl(&dword_181A37000, v5, v8, "%{public}s called with null instance, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v5 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v14 = "nw_protocol_instance_reset_after_early_data";
        _os_log_impl(&dword_181A37000, v5, v10, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_21:
  if (v4)
  {
    free(v4);
  }

LABEL_4:
}

uint64_t __nw_protocol_instance_reset_after_early_data_block_invoke(uint64_t a1, uint64_t a2)
{
  extra = nw_hash_node_get_extra(a2);
  *(extra + 52) &= ~0x10u;
  return 1;
}

void nw_protocol_instance_early_data_rejected(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v1[413] |= 8u;
    v3 = *(v1 + 3);
    if (v3)
    {
      if (*v3)
      {
        v4 = *(*v3 + 8);
        if (v4)
        {
          v4();
        }
      }

      *(v2 + 3) = 0;
    }

    *(v2 + 412) &= ~4u;
    if (*(*(v2 + 1) + 64) == 3)
    {
      nw_hash_table_apply(*(v2 + 29), &__block_literal_global_64);
      v5 = *(v2 + 29);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __nw_protocol_instance_early_data_rejected_block_invoke_2;
      v14[3] = &unk_1E6A3CDF8;
      v15 = v2;
      nw_hash_table_apply(v5, v14);
    }

    *(v2 + 413) &= ~8u;
    goto LABEL_10;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_protocol_instance_early_data_rejected";
  v7 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (__nwlog_fault(v7, &type, &v16))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v19 = "nw_protocol_instance_early_data_rejected";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null instance", buf, 0xCu);
      }
    }

    else if (v16 == 1)
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
          v19 = "nw_protocol_instance_early_data_rejected";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_27;
      }

      if (v12)
      {
        *buf = 136446210;
        v19 = "nw_protocol_instance_early_data_rejected";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null instance, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v19 = "nw_protocol_instance_early_data_rejected";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_27:
  if (v7)
  {
    free(v7);
  }

LABEL_10:
}

uint64_t __nw_protocol_instance_early_data_rejected_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v62 = *MEMORY[0x1E69E9840];
  object = nw_hash_node_get_object(a2);
  extra = nw_hash_node_get_extra(a2);
  if ((*(extra + 52) & 0x2000) == 0)
  {
    return 1;
  }

  *(extra + 52) &= ~0x2000u;
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = v6 - 96;
  }

  else
  {
    v7 = 0;
  }

  if (object)
  {
    v8 = object[5];
    v9 = object;
    if (v8 == &nw_protocol_ref_counted_handle)
    {
      goto LABEL_10;
    }

    if (v8 != &nw_protocol_ref_counted_additional_handle)
    {
      LOBYTE(v9) = 0;
      v10 = 1;
      goto LABEL_13;
    }

    v9 = object[8];
    if (v9)
    {
LABEL_10:
      v11 = v9[11];
      v10 = 0;
      if (v11)
      {
        v9[11] = v11 + 1;
      }

      LOBYTE(v9) = -1;
    }

    else
    {
      v10 = 1;
    }

LABEL_13:
    *v52 = object;
    v53 = v9;
    if (v6)
    {
      v12 = *(v7 + 40);
      v13 = v7;
      if (v12 != &nw_protocol_ref_counted_handle)
      {
        if (v12 != &nw_protocol_ref_counted_additional_handle)
        {
          LOBYTE(v13) = 0;
          v14 = 1;
          goto LABEL_21;
        }

        v13 = *(v7 + 64);
        if (!v13)
        {
          v14 = 1;
          goto LABEL_21;
        }
      }

      v15 = *(v13 + 88);
      v14 = 0;
      if (v15)
      {
        *(v13 + 88) = v15 + 1;
      }

      LOBYTE(v13) = -1;
LABEL_21:
      *v49 = v7;
      v50 = v13;
      v16 = object[3];
      if (v16)
      {
        v17 = *(v16 + 160);
        if (v17)
        {
          v17(object);
LABEL_24:
          if ((v14 & 1) == 0)
          {
            nw::release_if_needed<nw_protocol *>(v49);
          }

LABEL_26:
          if ((v10 & 1) == 0)
          {
            nw::release_if_needed<nw_protocol *>(v52);
          }

          return 1;
        }
      }

      v19 = __nwlog_obj();
      v20 = object[2];
      *buf = 136446722;
      v55 = "__nw_protocol_notify";
      if (!v20)
      {
        v20 = "invalid";
      }

      v56 = 2082;
      v57 = v20;
      v58 = 2048;
      v59 = object;
      v21 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v48 = 0;
      if (__nwlog_fault(v21, &type, &v48))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v22 = __nwlog_obj();
          v23 = type;
          if (os_log_type_enabled(v22, type))
          {
            v24 = object[2];
            if (!v24)
            {
              v24 = "invalid";
            }

            *buf = 136446722;
            v55 = "__nw_protocol_notify";
            v56 = 2082;
            v57 = v24;
            v58 = 2048;
            v59 = object;
            _os_log_impl(&dword_181A37000, v22, v23, "%{public}s protocol %{public}s (%p) has invalid notify callback", buf, 0x20u);
          }
        }

        else if (v48 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v22 = __nwlog_obj();
          v34 = type;
          v35 = os_log_type_enabled(v22, type);
          if (backtrace_string)
          {
            if (v35)
            {
              if (object[2])
              {
                v36 = object[2];
              }

              else
              {
                v36 = "invalid";
              }

              *buf = 136446978;
              v55 = "__nw_protocol_notify";
              v56 = 2082;
              v57 = v36;
              v58 = 2048;
              v59 = object;
              v60 = 2082;
              v61 = backtrace_string;
              _os_log_impl(&dword_181A37000, v22, v34, "%{public}s protocol %{public}s (%p) has invalid notify callback, dumping backtrace:%{public}s", buf, 0x2Au);
            }

            free(backtrace_string);
            goto LABEL_85;
          }

          if (v35)
          {
            if (object[2])
            {
              v47 = object[2];
            }

            else
            {
              v47 = "invalid";
            }

            *buf = 136446722;
            v55 = "__nw_protocol_notify";
            v56 = 2082;
            v57 = v47;
            v58 = 2048;
            v59 = object;
            _os_log_impl(&dword_181A37000, v22, v34, "%{public}s protocol %{public}s (%p) has invalid notify callback, no backtrace", buf, 0x20u);
          }
        }

        else
        {
          v22 = __nwlog_obj();
          v43 = type;
          if (os_log_type_enabled(v22, type))
          {
            v44 = object[2];
            if (!v44)
            {
              v44 = "invalid";
            }

            *buf = 136446722;
            v55 = "__nw_protocol_notify";
            v56 = 2082;
            v57 = v44;
            v58 = 2048;
            v59 = object;
            _os_log_impl(&dword_181A37000, v22, v43, "%{public}s protocol %{public}s (%p) has invalid notify callback, backtrace limit exceeded", buf, 0x20u);
          }
        }
      }

LABEL_85:
      if (v21)
      {
        free(v21);
      }

      goto LABEL_24;
    }

    v29 = __nwlog_obj();
    *buf = 136446210;
    v55 = "__nw_protocol_notify";
    v30 = _os_log_send_and_compose_impl();

    v49[0] = OS_LOG_TYPE_ERROR;
    type = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v30, v49, &type))
    {
      if (v49[0] == OS_LOG_TYPE_FAULT)
      {
        v31 = __nwlog_obj();
        v32 = v49[0];
        if (os_log_type_enabled(v31, v49[0]))
        {
          *buf = 136446210;
          v55 = "__nw_protocol_notify";
          _os_log_impl(&dword_181A37000, v31, v32, "%{public}s called with null other_protocol", buf, 0xCu);
        }
      }

      else if (type == OS_LOG_TYPE_INFO)
      {
        v40 = __nw_create_backtrace_string();
        v31 = __nwlog_obj();
        v41 = v49[0];
        v42 = os_log_type_enabled(v31, v49[0]);
        if (v40)
        {
          if (v42)
          {
            *buf = 136446466;
            v55 = "__nw_protocol_notify";
            v56 = 2082;
            v57 = v40;
            _os_log_impl(&dword_181A37000, v31, v41, "%{public}s called with null other_protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v40);
          goto LABEL_95;
        }

        if (v42)
        {
          *buf = 136446210;
          v55 = "__nw_protocol_notify";
          _os_log_impl(&dword_181A37000, v31, v41, "%{public}s called with null other_protocol, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v31 = __nwlog_obj();
        v46 = v49[0];
        if (os_log_type_enabled(v31, v49[0]))
        {
          *buf = 136446210;
          v55 = "__nw_protocol_notify";
          _os_log_impl(&dword_181A37000, v31, v46, "%{public}s called with null other_protocol, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_95:
    if (v30)
    {
      free(v30);
    }

    goto LABEL_26;
  }

  v25 = __nwlog_obj();
  *buf = 136446210;
  v55 = "__nw_protocol_notify";
  v26 = _os_log_send_and_compose_impl();

  v52[0] = OS_LOG_TYPE_ERROR;
  v49[0] = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v26, v52, v49))
  {
    if (v52[0] == OS_LOG_TYPE_FAULT)
    {
      v27 = __nwlog_obj();
      v28 = v52[0];
      if (os_log_type_enabled(v27, v52[0]))
      {
        *buf = 136446210;
        v55 = "__nw_protocol_notify";
        _os_log_impl(&dword_181A37000, v27, v28, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v49[0] == OS_LOG_TYPE_INFO)
    {
      v37 = __nw_create_backtrace_string();
      v27 = __nwlog_obj();
      v38 = v52[0];
      v39 = os_log_type_enabled(v27, v52[0]);
      if (v37)
      {
        if (v39)
        {
          *buf = 136446466;
          v55 = "__nw_protocol_notify";
          v56 = 2082;
          v57 = v37;
          _os_log_impl(&dword_181A37000, v27, v38, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v37);
        goto LABEL_90;
      }

      if (v39)
      {
        *buf = 136446210;
        v55 = "__nw_protocol_notify";
        _os_log_impl(&dword_181A37000, v27, v38, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v27 = __nwlog_obj();
      v45 = v52[0];
      if (os_log_type_enabled(v27, v52[0]))
      {
        *buf = 136446210;
        v55 = "__nw_protocol_notify";
        _os_log_impl(&dword_181A37000, v27, v45, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_90:
  if (v26)
  {
    free(v26);
  }

  return 1;
}

void sub_1823FF1DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if ((v18 & 1) == 0)
  {
    nw::release_if_needed<nw_protocol *>(&a14);
  }

  if (v17)
  {
    _Unwind_Resume(exception_object);
  }

  nw::release_if_needed<nw_protocol *>(&a17);
  _Unwind_Resume(exception_object);
}

uint64_t __nw_protocol_instance_early_data_rejected_block_invoke(uint64_t a1, uint64_t a2)
{
  extra = nw_hash_node_get_extra(a2);
  v3 = *(extra + 52);
  if ((v3 & 2) == 0)
  {
    *(extra + 52) = v3 | 0x2000;
  }

  return 1;
}

void nw_protocol_instance_assert_fallback_agent(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if (nw_protocol_instance_supports_multipath(v1))
    {
      v19 = 0uLL;
      if (nw_path_get_fallback_agent(v2->wakeup_block, &v19))
      {
        if ((SBYTE5(v2->flow_in_connected) & 0x80000000) == 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v3 = gLogObj;
          if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446722;
            v14 = "nw_protocol_instance_assert_fallback_agent";
            v15 = 2082;
            v16 = &v2->flow_in_connected + 7;
            v17 = 2080;
            v18 = " ";
            _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s%sasserting fallback agent", buf, 0x20u);
          }
        }

        nw_path_agent_action(v2->wakeup_block, &v19, 131);
      }
    }

    goto LABEL_9;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_protocol_instance_assert_fallback_agent";
  v5 = _os_log_send_and_compose_impl();

  LOBYTE(v19) = 16;
  v12 = 0;
  if (__nwlog_fault(v5, &v19, &v12))
  {
    if (v19 == 17)
    {
      v6 = __nwlog_obj();
      v7 = v19;
      if (os_log_type_enabled(v6, v19))
      {
        *buf = 136446210;
        v14 = "nw_protocol_instance_assert_fallback_agent";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null instance", buf, 0xCu);
      }
    }

    else if (v12 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v9 = v19;
      v10 = os_log_type_enabled(v6, v19);
      if (backtrace_string)
      {
        if (v10)
        {
          *buf = 136446466;
          v14 = "nw_protocol_instance_assert_fallback_agent";
          v15 = 2082;
          v16 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_26;
      }

      if (v10)
      {
        *buf = 136446210;
        v14 = "nw_protocol_instance_assert_fallback_agent";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null instance, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = v19;
      if (os_log_type_enabled(v6, v19))
      {
        *buf = 136446210;
        v14 = "nw_protocol_instance_assert_fallback_agent";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_26:
  if (v5)
  {
    free(v5);
  }

LABEL_9:
}

void nw_protocol_instance_unassert_fallback_agent(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if (nw_protocol_instance_supports_multipath(v1))
    {
      v19 = 0uLL;
      if (nw_path_get_fallback_agent(v2->wakeup_block, &v19))
      {
        if ((SBYTE5(v2->flow_in_connected) & 0x80000000) == 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v3 = gLogObj;
          if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446722;
            v14 = "nw_protocol_instance_unassert_fallback_agent";
            v15 = 2082;
            v16 = &v2->flow_in_connected + 7;
            v17 = 2080;
            v18 = " ";
            _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s%sunasserting fallback agent", buf, 0x20u);
          }
        }

        nw_path_agent_action(v2->wakeup_block, &v19, 132);
      }
    }

    goto LABEL_9;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_protocol_instance_unassert_fallback_agent";
  v5 = _os_log_send_and_compose_impl();

  LOBYTE(v19) = 16;
  v12 = 0;
  if (__nwlog_fault(v5, &v19, &v12))
  {
    if (v19 == 17)
    {
      v6 = __nwlog_obj();
      v7 = v19;
      if (os_log_type_enabled(v6, v19))
      {
        *buf = 136446210;
        v14 = "nw_protocol_instance_unassert_fallback_agent";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null instance", buf, 0xCu);
      }
    }

    else if (v12 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v9 = v19;
      v10 = os_log_type_enabled(v6, v19);
      if (backtrace_string)
      {
        if (v10)
        {
          *buf = 136446466;
          v14 = "nw_protocol_instance_unassert_fallback_agent";
          v15 = 2082;
          v16 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_26;
      }

      if (v10)
      {
        *buf = 136446210;
        v14 = "nw_protocol_instance_unassert_fallback_agent";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null instance, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = v19;
      if (os_log_type_enabled(v6, v19))
      {
        *buf = 136446210;
        v14 = "nw_protocol_instance_unassert_fallback_agent";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_26:
  if (v5)
  {
    free(v5);
  }

LABEL_9:
}

id nw_protocol_instance_copy_remote_endpoint_for_path(void *a1, uint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_instance_copy_remote_endpoint_for_path";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v12, &type, &v26))
    {
      goto LABEL_43;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_copy_remote_endpoint_for_path";
        _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null instance", buf, 0xCu);
      }
    }

    else if (v26 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v18 = type;
      v19 = os_log_type_enabled(v13, type);
      if (backtrace_string)
      {
        if (v19)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_instance_copy_remote_endpoint_for_path";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v13, v18, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (!v12)
        {
          goto LABEL_45;
        }

        goto LABEL_44;
      }

      if (v19)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_copy_remote_endpoint_for_path";
        _os_log_impl(&dword_181A37000, v13, v18, "%{public}s called with null instance, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v13 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_copy_remote_endpoint_for_path";
        _os_log_impl(&dword_181A37000, v13, v23, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_42;
  }

  if (!a2)
  {
    v15 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_instance_copy_remote_endpoint_for_path";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v12, &type, &v26))
    {
      goto LABEL_43;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_copy_remote_endpoint_for_path";
        _os_log_impl(&dword_181A37000, v13, v16, "%{public}s called with null path", buf, 0xCu);
      }
    }

    else if (v26 == 1)
    {
      v20 = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v21 = type;
      v22 = os_log_type_enabled(v13, type);
      if (v20)
      {
        if (v22)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_instance_copy_remote_endpoint_for_path";
          *&buf[12] = 2082;
          *&buf[14] = v20;
          _os_log_impl(&dword_181A37000, v13, v21, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v20);
LABEL_43:
        if (!v12)
        {
LABEL_45:
          v10 = 0;
          goto LABEL_46;
        }

LABEL_44:
        free(v12);
        goto LABEL_45;
      }

      if (v22)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_copy_remote_endpoint_for_path";
        _os_log_impl(&dword_181A37000, v13, v21, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v13 = __nwlog_obj();
      v24 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_copy_remote_endpoint_for_path";
        _os_log_impl(&dword_181A37000, v13, v24, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_42:

    goto LABEL_43;
  }

  v5 = *(v3 + 37);
  if (!v5)
  {
    goto LABEL_45;
  }

  if (!v4[36])
  {
    goto LABEL_45;
  }

  node = nw_hash_table_get_node(v5, a2, 8);
  if (!node)
  {
    goto LABEL_45;
  }

  *buf = 0;
  *&buf[8] = 0;
  nw_path_flow_registration_get_id(*(node + 56), buf);
  v7 = _nw_path_copy_flow_for_registration(v4[36], buf);
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    v10 = _nw_path_flow_copy_remote_endpoint(v9);
  }

  else
  {
    v10 = 0;
  }

LABEL_46:
  return v10;
}

uint64_t nw_protocol_instance_path_has_migration_info(void *a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_protocol_instance_path_has_migration_info";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v9, &type, &v22))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v25 = "nw_protocol_instance_path_has_migration_info";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null instance", buf, 0xCu);
      }

      goto LABEL_37;
    }

    if (v22 != 1)
    {
      v10 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v25 = "nw_protocol_instance_path_has_migration_info";
        _os_log_impl(&dword_181A37000, v10, v19, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_37;
    }

    backtrace_string = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v15 = type;
    v16 = os_log_type_enabled(v10, type);
    if (!backtrace_string)
    {
      if (v16)
      {
        *buf = 136446210;
        v25 = "nw_protocol_instance_path_has_migration_info";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null instance, no backtrace", buf, 0xCu);
      }

      goto LABEL_37;
    }

    if (v16)
    {
      *buf = 136446466;
      v25 = "nw_protocol_instance_path_has_migration_info";
      v26 = 2082;
      v27 = backtrace_string;
      _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_25;
  }

  if (!a2)
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_protocol_instance_path_has_migration_info";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v9, &type, &v22))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v25 = "nw_protocol_instance_path_has_migration_info";
        _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null path", buf, 0xCu);
      }

LABEL_37:

LABEL_38:
      if (v9)
      {
        free(v9);
      }

      goto LABEL_40;
    }

    if (v22 != 1)
    {
      v10 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v25 = "nw_protocol_instance_path_has_migration_info";
        _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_37;
    }

    backtrace_string = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v17 = type;
    v18 = os_log_type_enabled(v10, type);
    if (!backtrace_string)
    {
      if (v18)
      {
        *buf = 136446210;
        v25 = "nw_protocol_instance_path_has_migration_info";
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }

      goto LABEL_37;
    }

    if (v18)
    {
      *buf = 136446466;
      v25 = "nw_protocol_instance_path_has_migration_info";
      v26 = 2082;
      v27 = backtrace_string;
      _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_25:

    free(backtrace_string);
    goto LABEL_38;
  }

  v5 = v3[37];
  if (!v5 || (node = nw_hash_table_get_node(v5, a2, 8)) == 0)
  {
LABEL_40:
    v7 = 0;
    goto LABEL_41;
  }

  v7 = (*(node + 185) >> 5) & 1;
LABEL_41:

  return v7;
}

uint64_t nw_protocol_instance_get_sockfd_for_path(void *a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_protocol_instance_get_sockfd_for_path";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v9, &type, &v22))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v25 = "nw_protocol_instance_get_sockfd_for_path";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null instance", buf, 0xCu);
      }

      goto LABEL_37;
    }

    if (v22 != 1)
    {
      v10 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v25 = "nw_protocol_instance_get_sockfd_for_path";
        _os_log_impl(&dword_181A37000, v10, v19, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_37;
    }

    backtrace_string = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v15 = type;
    v16 = os_log_type_enabled(v10, type);
    if (!backtrace_string)
    {
      if (v16)
      {
        *buf = 136446210;
        v25 = "nw_protocol_instance_get_sockfd_for_path";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null instance, no backtrace", buf, 0xCu);
      }

      goto LABEL_37;
    }

    if (v16)
    {
      *buf = 136446466;
      v25 = "nw_protocol_instance_get_sockfd_for_path";
      v26 = 2082;
      v27 = backtrace_string;
      _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_25;
  }

  if (!a2)
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_protocol_instance_get_sockfd_for_path";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v9, &type, &v22))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v25 = "nw_protocol_instance_get_sockfd_for_path";
        _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null path", buf, 0xCu);
      }

LABEL_37:

LABEL_38:
      if (v9)
      {
        free(v9);
      }

      goto LABEL_40;
    }

    if (v22 != 1)
    {
      v10 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v25 = "nw_protocol_instance_get_sockfd_for_path";
        _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_37;
    }

    backtrace_string = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v17 = type;
    v18 = os_log_type_enabled(v10, type);
    if (!backtrace_string)
    {
      if (v18)
      {
        *buf = 136446210;
        v25 = "nw_protocol_instance_get_sockfd_for_path";
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }

      goto LABEL_37;
    }

    if (v18)
    {
      *buf = 136446466;
      v25 = "nw_protocol_instance_get_sockfd_for_path";
      v26 = 2082;
      v27 = backtrace_string;
      _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_25:

    free(backtrace_string);
    goto LABEL_38;
  }

  v5 = v3[37];
  if (!v5 || (node = nw_hash_table_get_node(v5, a2, 8)) == 0)
  {
LABEL_40:
    v7 = 0xFFFFFFFFLL;
    goto LABEL_41;
  }

  v7 = *(node + 180);
LABEL_41:

  return v7;
}

uint64_t nw_protocol_instance_is_path_injected(void *a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_protocol_instance_is_path_injected";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v9, &type, &v22))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v25 = "nw_protocol_instance_is_path_injected";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null instance", buf, 0xCu);
      }

      goto LABEL_37;
    }

    if (v22 != 1)
    {
      v10 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v25 = "nw_protocol_instance_is_path_injected";
        _os_log_impl(&dword_181A37000, v10, v19, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_37;
    }

    backtrace_string = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v15 = type;
    v16 = os_log_type_enabled(v10, type);
    if (!backtrace_string)
    {
      if (v16)
      {
        *buf = 136446210;
        v25 = "nw_protocol_instance_is_path_injected";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null instance, no backtrace", buf, 0xCu);
      }

      goto LABEL_37;
    }

    if (v16)
    {
      *buf = 136446466;
      v25 = "nw_protocol_instance_is_path_injected";
      v26 = 2082;
      v27 = backtrace_string;
      _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_25;
  }

  if (!a2)
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_protocol_instance_is_path_injected";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v9, &type, &v22))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v25 = "nw_protocol_instance_is_path_injected";
        _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null path", buf, 0xCu);
      }

LABEL_37:

LABEL_38:
      if (v9)
      {
        free(v9);
      }

      goto LABEL_40;
    }

    if (v22 != 1)
    {
      v10 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v25 = "nw_protocol_instance_is_path_injected";
        _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_37;
    }

    backtrace_string = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v17 = type;
    v18 = os_log_type_enabled(v10, type);
    if (!backtrace_string)
    {
      if (v18)
      {
        *buf = 136446210;
        v25 = "nw_protocol_instance_is_path_injected";
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }

      goto LABEL_37;
    }

    if (v18)
    {
      *buf = 136446466;
      v25 = "nw_protocol_instance_is_path_injected";
      v26 = 2082;
      v27 = backtrace_string;
      _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_25:

    free(backtrace_string);
    goto LABEL_38;
  }

  v5 = v3[37];
  if (!v5 || (node = nw_hash_table_get_node(v5, a2, 8)) == 0)
  {
LABEL_40:
    v7 = 0;
    goto LABEL_41;
  }

  v7 = (*(node + 185) >> 6) & 1;
LABEL_41:

  return v7;
}

void nw_protocol_instance_set_current_path(void *a1, uint64_t a2)
{
  v108 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    if (a2)
    {
      v5 = nw_protocol_implementation_lookup_path(v3, a2, 0);
      if (v5)
      {
        v6 = v5;
        v7 = *(v5 + 112);
        v8 = v7;
        v9 = v8;
        if (v8)
        {
          v10 = v8;
          os_unfair_lock_lock(v9 + 24);
          v86 = v10[6];
          os_unfair_lock_unlock(v9 + 24);
        }

        else
        {
          v86 = 0;
        }

        v20 = *(v6 + 16);
        if (v20)
        {
          v18 = v20;
          v21 = *(v6 + 24);
          v22 = SBYTE5(v4->flow_in_connected);
          if (!v21)
          {
            if ((v22 & 0x80000000) == 0)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v33 = gLogObj;
              if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446978;
                v97 = "nw_protocol_instance_set_current_path";
                v98 = 2082;
                v99 = &v4->flow_in_connected + 7;
                v100 = 2080;
                v101 = " ";
                v102 = 2048;
                v103 = a2;
                _os_log_impl(&dword_181A37000, v33, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sCannot find flow_registration for new current protocol_path %lx", buf, 0x2Au);
              }
            }

            v19 = 0;
            goto LABEL_95;
          }

          v23 = v21;
          if ((v22 & 0x80000000) == 0)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v24 = gLogObj;
            if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
            {
              *buf = 136447490;
              v97 = "nw_protocol_instance_set_current_path";
              v98 = 2082;
              v99 = &v4->flow_in_connected + 7;
              v100 = 2080;
              v101 = " ";
              v102 = 2048;
              v103 = a2;
              v104 = 2112;
              v105 = v18;
              v106 = 2112;
              v107 = v86;
              _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_INFO, "%{public}s %{public}s%sNew current protocol_path %lx using interface %@, path %@", buf, 0x3Eu);
            }
          }

          v25 = *(v6 + 32);
          v26 = *&v4[-1].log_str[25];
          if (v26 != v25)
          {
            nw_protocol_release(v26);
            *&v4[-1].log_str[25] = v25;
            if (v25)
            {
              v27 = v25[5];
              if (v27 == &nw_protocol_ref_counted_handle || v27 == &nw_protocol_ref_counted_additional_handle && (v25 = v25[8]) != 0)
              {
                v28 = v25[11];
                if (v28)
                {
                  v25[11] = v28 + 1;
                }
              }
            }
          }

          v29 = SBYTE5(v4->flow_in_connected);
          if (v9)
          {
            if ((v29 & 0x80000000) == 0)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v30 = gLogObj;
              if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
              {
                *buf = 136447234;
                v97 = "nw_protocol_instance_set_current_path";
                v98 = 2082;
                v99 = &v4->flow_in_connected + 7;
                v100 = 2080;
                v101 = " ";
                v102 = 2112;
                v103 = v23;
                v104 = 2112;
                v105 = v9;
                _os_log_impl(&dword_181A37000, v30, OS_LOG_TYPE_INFO, "%{public}s %{public}s%sOverriding %@ with evaluator %@", buf, 0x34u);
              }
            }

            v31 = v23;
            v9 = v9;
            objc_storeStrong(v31 + 17, v7);

            v19 = v31;
            *(v19 + 148) &= 7u;

LABEL_55:
            if (SBYTE5(v4->flow_in_connected) < 0)
            {
              goto LABEL_59;
            }

            goto LABEL_56;
          }

          if ((v29 & 0x80000000) == 0)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v40 = gLogObj;
            if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
            {
              *buf = 136447234;
              v97 = "nw_protocol_instance_set_current_path";
              v98 = 2082;
              v99 = &v4->flow_in_connected + 7;
              v100 = 2080;
              v101 = " ";
              v102 = 2112;
              v103 = v23;
              v104 = 2112;
              v105 = v18;
              _os_log_impl(&dword_181A37000, v40, OS_LOG_TYPE_INFO, "%{public}s %{public}s%sOverriding %@ with properties from interface %@", buf, 0x34u);
            }
          }

          v41 = v23;
          objc_storeStrong(v41 + 17, 0);

          if (_nw_interface_is_expensive(v18))
          {
            v42 = 8;
          }

          else
          {
            v42 = 0;
          }

          if (_nw_interface_is_constrained(v18))
          {
            v43 = 16;
          }

          else
          {
            v43 = 0;
          }

          v44 = _nw_interface_get_type(v18);
          v45 = _nw_interface_get_type(v18) == 2;
          v19 = v41;
          *(v19 + 148) = v43 | v42 | (32 * (v44 == 1)) | (v45 << 6) | *(v19 + 148) & 7;

          v9 = 0;
          if (SBYTE5(v4->flow_in_connected) < 0)
          {
            goto LABEL_59;
          }

          goto LABEL_56;
        }

        if ((SBYTE5(v4->flow_in_connected) & 0x80000000) == 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v32 = gLogObj;
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446978;
            v97 = "nw_protocol_instance_set_current_path";
            v98 = 2082;
            v99 = &v4->flow_in_connected + 7;
            v100 = 2080;
            v101 = " ";
            v102 = 2048;
            v103 = a2;
            _os_log_impl(&dword_181A37000, v32, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sCannot find interface for new current protocol_path %lx", buf, 0x2Au);
          }
        }
      }

      else
      {
        if ((SBYTE5(v4->flow_in_connected) & 0x80000000) == 0)
        {
          v58 = __nwlog_obj();
          if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446978;
            v97 = "nw_protocol_instance_set_current_path";
            v98 = 2082;
            v99 = &v4->flow_in_connected + 7;
            v100 = 2080;
            v101 = " ";
            v102 = 2048;
            v103 = a2;
            _os_log_impl(&dword_181A37000, v58, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sCannot find current protocol_path %lx", buf, 0x2Au);
          }
        }

        v86 = 0;
        v9 = 0;
      }

      v19 = 0;
      v18 = 0;
LABEL_95:

      goto LABEL_96;
    }

    if ((SBYTE5(v3->flow_in_connected) & 0x80000000) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 136446722;
        v97 = "nw_protocol_instance_set_current_path";
        v98 = 2082;
        v99 = &v4->flow_in_connected + 7;
        v100 = 2080;
        v101 = " ";
        _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_INFO, "%{public}s %{public}s%sLost all paths", buf, 0x20u);
      }
    }

    v12 = *&v4[-1].log_str[25];
    if (!v12)
    {
      v18 = 0;
      v19 = 0;
      v9 = 0;
      v86 = 0;
      goto LABEL_55;
    }

    v13 = *(v12 + 40);
    if (v13 == &nw_protocol_ref_counted_handle || v13 == &nw_protocol_ref_counted_additional_handle && (v12 = *(v12 + 64)) != 0)
    {
      v14 = *(v12 + 88);
      if (v14)
      {
        v15 = v14 - 1;
        *(v12 + 88) = v15;
        if (!v15)
        {
          v16 = *(v12 + 64);
          if (v16)
          {
            *(v12 + 64) = 0;
            v16[2](v16);
            _Block_release(v16);
          }

          if (*(v12 + 72))
          {
            v17 = *(v12 + 64);
            if (v17)
            {
              _Block_release(v17);
            }
          }

          free(v12);
        }
      }
    }

    v18 = 0;
    v19 = 0;
    v9 = 0;
    v86 = 0;
    *&v4[-1].log_str[25] = 0;
    if (SBYTE5(v4->flow_in_connected) < 0)
    {
LABEL_59:
      if (v4->parent_definition->variant == 3)
      {
        tqh_last = v4->pending_outbound_frames.tqh_last;
        v87[0] = MEMORY[0x1E69E9820];
        v87[1] = 3221225472;
        v87[2] = __nw_protocol_instance_set_current_path_block_invoke;
        v87[3] = &unk_1E6A2CD28;
        v88 = v4;
        v19 = v19;
        v89 = v19;
        nw_hash_table_apply(tqh_last, v87);

        goto LABEL_95;
      }

      v36 = *&v4[-1].log_str[41];
      if (v36)
      {
        v37 = *(v36 + 5);
        v38 = *&v4[-1].log_str[41];
        if (v37 != &nw_protocol_ref_counted_handle)
        {
          if (v37 != &nw_protocol_ref_counted_additional_handle)
          {
            LOBYTE(v38) = 0;
            v39 = 1;
            goto LABEL_81;
          }

          v38 = *(v36 + 8);
          if (!v38)
          {
            v39 = 1;
            goto LABEL_81;
          }
        }

        v46 = *(v38 + 88);
        v39 = 0;
        if (v46)
        {
          *(v38 + 88) = v46 + 1;
        }

        LOBYTE(v38) = -1;
LABEL_81:
        *type = v36;
        v95 = v38;
        v47 = *&v4[-1].log_str[33];
        p_paths_log_id_num = &v4[-1].paths_log_id_num;
        if (v47 == &nw_protocol_ref_counted_handle || v47 == &nw_protocol_ref_counted_additional_handle && (p_paths_log_id_num = *&v4[-1].log_str[57]) != 0)
        {
          v51 = *(p_paths_log_id_num + 11);
          v50 = 0;
          if (v51)
          {
            *(p_paths_log_id_num + 11) = v51 + 1;
          }

          v49 = -1;
        }

        else
        {
          v49 = 0;
          v50 = 1;
        }

        v92 = &v4[-1].paths_log_id_num;
        v93 = v49;
        v52 = *(v36 + 3);
        if (v52)
        {
          v53 = *(v52 + 160);
          if (v53)
          {
            v53();
LABEL_91:
            if ((v50 & 1) == 0)
            {
              nw::release_if_needed<nw_protocol *>(&v92);
            }

            if ((v39 & 1) == 0)
            {
              nw::release_if_needed<nw_protocol *>(type);
            }

            goto LABEL_95;
          }
        }

        v59 = v36;
        v60 = __nwlog_obj();
        v61 = *(v59 + 2);
        *buf = 136446722;
        v97 = "__nw_protocol_notify";
        if (!v61)
        {
          v61 = "invalid";
        }

        v98 = 2082;
        v99 = v61;
        v100 = 2048;
        v85 = v59;
        v101 = v59;
        v62 = _os_log_send_and_compose_impl();

        v91 = OS_LOG_TYPE_ERROR;
        v90 = 0;
        if (__nwlog_fault(v62, &v91, &v90))
        {
          if (v91 == OS_LOG_TYPE_FAULT)
          {
            v63 = __nwlog_obj();
            v64 = v91;
            if (os_log_type_enabled(v63, v91))
            {
              v65 = *(v85 + 2);
              if (!v65)
              {
                v65 = "invalid";
              }

              *buf = 136446722;
              v97 = "__nw_protocol_notify";
              v98 = 2082;
              v99 = v65;
              v100 = 2048;
              v101 = v85;
              _os_log_impl(&dword_181A37000, v63, v64, "%{public}s protocol %{public}s (%p) has invalid notify callback", buf, 0x20u);
            }
          }

          else if (v90 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            v63 = __nwlog_obj();
            v84 = v91;
            v74 = os_log_type_enabled(v63, v91);
            if (backtrace_string)
            {
              if (v74)
              {
                v75 = *(v85 + 2);
                if (!v75)
                {
                  v75 = "invalid";
                }

                *buf = 136446978;
                v97 = "__nw_protocol_notify";
                v98 = 2082;
                v99 = v75;
                v100 = 2048;
                v101 = v85;
                v102 = 2082;
                v103 = backtrace_string;
                _os_log_impl(&dword_181A37000, v63, v84, "%{public}s protocol %{public}s (%p) has invalid notify callback, dumping backtrace:%{public}s", buf, 0x2Au);
              }

              free(backtrace_string);
              goto LABEL_160;
            }

            if (v74)
            {
              v83 = *(v85 + 2);
              if (!v83)
              {
                v83 = "invalid";
              }

              *buf = 136446722;
              v97 = "__nw_protocol_notify";
              v98 = 2082;
              v99 = v83;
              v100 = 2048;
              v101 = v85;
              _os_log_impl(&dword_181A37000, v63, v84, "%{public}s protocol %{public}s (%p) has invalid notify callback, no backtrace", buf, 0x20u);
            }
          }

          else
          {
            v63 = __nwlog_obj();
            v80 = v91;
            if (os_log_type_enabled(v63, v91))
            {
              v81 = *(v85 + 2);
              if (!v81)
              {
                v81 = "invalid";
              }

              *buf = 136446722;
              v97 = "__nw_protocol_notify";
              v98 = 2082;
              v99 = v81;
              v100 = 2048;
              v101 = v85;
              _os_log_impl(&dword_181A37000, v63, v80, "%{public}s protocol %{public}s (%p) has invalid notify callback, backtrace limit exceeded", buf, 0x20u);
            }
          }
        }

LABEL_160:
        if (v62)
        {
          free(v62);
        }

        goto LABEL_91;
      }

      v69 = __nwlog_obj();
      *buf = 136446210;
      v97 = "__nw_protocol_notify";
      v70 = _os_log_send_and_compose_impl();

      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v92) = 0;
      if (__nwlog_fault(v70, type, &v92))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v71 = __nwlog_obj();
          v72 = type[0];
          if (os_log_type_enabled(v71, type[0]))
          {
            *buf = 136446210;
            v97 = "__nw_protocol_notify";
            _os_log_impl(&dword_181A37000, v71, v72, "%{public}s called with null protocol", buf, 0xCu);
          }
        }

        else if (v92 == 1)
        {
          v77 = __nw_create_backtrace_string();
          v71 = __nwlog_obj();
          v78 = type[0];
          v79 = os_log_type_enabled(v71, type[0]);
          if (v77)
          {
            if (v79)
            {
              *buf = 136446466;
              v97 = "__nw_protocol_notify";
              v98 = 2082;
              v99 = v77;
              _os_log_impl(&dword_181A37000, v71, v78, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v77);
            goto LABEL_165;
          }

          if (v79)
          {
            *buf = 136446210;
            v97 = "__nw_protocol_notify";
            _os_log_impl(&dword_181A37000, v71, v78, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          v71 = __nwlog_obj();
          v82 = type[0];
          if (os_log_type_enabled(v71, type[0]))
          {
            *buf = 136446210;
            v97 = "__nw_protocol_notify";
            _os_log_impl(&dword_181A37000, v71, v82, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
          }
        }
      }

LABEL_165:
      if (v70)
      {
        free(v70);
      }

      goto LABEL_95;
    }

LABEL_56:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v34 = gLogObj;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136447234;
      v97 = "nw_protocol_instance_set_current_path";
      v98 = 2082;
      v99 = &v4->flow_in_connected + 7;
      v100 = 2080;
      v101 = " ";
      v102 = 2112;
      v103 = v18;
      v104 = 2112;
      v105 = v19;
      _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s%sCalling notify nw_protocol_notification_type_migration %@ for flow registration %@", buf, 0x34u);
    }

    goto LABEL_59;
  }

  v54 = __nwlog_obj();
  *buf = 136446210;
  v97 = "nw_protocol_instance_set_current_path";
  v55 = _os_log_send_and_compose_impl();

  type[0] = OS_LOG_TYPE_ERROR;
  LOBYTE(v92) = 0;
  if (__nwlog_fault(v55, type, &v92))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v56 = __nwlog_obj();
      v57 = type[0];
      if (os_log_type_enabled(v56, type[0]))
      {
        *buf = 136446210;
        v97 = "nw_protocol_instance_set_current_path";
        _os_log_impl(&dword_181A37000, v56, v57, "%{public}s called with null instance", buf, 0xCu);
      }
    }

    else if (v92 == 1)
    {
      v66 = __nw_create_backtrace_string();
      v56 = __nwlog_obj();
      v67 = type[0];
      v68 = os_log_type_enabled(v56, type[0]);
      if (v66)
      {
        if (v68)
        {
          *buf = 136446466;
          v97 = "nw_protocol_instance_set_current_path";
          v98 = 2082;
          v99 = v66;
          _os_log_impl(&dword_181A37000, v56, v67, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v66);
        goto LABEL_150;
      }

      if (v68)
      {
        *buf = 136446210;
        v97 = "nw_protocol_instance_set_current_path";
        _os_log_impl(&dword_181A37000, v56, v67, "%{public}s called with null instance, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v56 = __nwlog_obj();
      v76 = type[0];
      if (os_log_type_enabled(v56, type[0]))
      {
        *buf = 136446210;
        v97 = "nw_protocol_instance_set_current_path";
        _os_log_impl(&dword_181A37000, v56, v76, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_150:
  if (v55)
  {
    free(v55);
  }

LABEL_96:
}

void sub_182401E34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if ((v31 & 1) == 0)
  {
    nw::release_if_needed<nw_protocol *>(&a25);
  }

  if ((v32 & 1) == 0)
  {
    nw::release_if_needed<nw_protocol *>(&a27);
  }

  _Unwind_Resume(a1);
}

uint64_t __nw_protocol_instance_set_current_path_block_invoke(uint64_t a1, uint64_t a2)
{
  v62 = *MEMORY[0x1E69E9840];
  object = nw_hash_node_get_object(a2);
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = v4 - 96;
  }

  else
  {
    v5 = 0;
  }

  if (object)
  {
    v6 = object[5];
    v7 = object;
    if (v6 == &nw_protocol_ref_counted_handle)
    {
      goto LABEL_9;
    }

    if (v6 != &nw_protocol_ref_counted_additional_handle)
    {
      LOBYTE(v7) = 0;
      v8 = 1;
      goto LABEL_12;
    }

    v7 = object[8];
    if (v7)
    {
LABEL_9:
      v9 = v7[11];
      v8 = 0;
      if (v9)
      {
        v7[11] = v9 + 1;
      }

      LOBYTE(v7) = -1;
    }

    else
    {
      v8 = 1;
    }

LABEL_12:
    *v52 = object;
    v53 = v7;
    if (v4)
    {
      v10 = *(v5 + 40);
      v11 = v5;
      if (v10 != &nw_protocol_ref_counted_handle)
      {
        if (v10 != &nw_protocol_ref_counted_additional_handle)
        {
          LOBYTE(v11) = 0;
          v12 = 1;
          goto LABEL_20;
        }

        v11 = *(v5 + 64);
        if (!v11)
        {
          v12 = 1;
          goto LABEL_20;
        }
      }

      v13 = *(v11 + 88);
      v12 = 0;
      if (v13)
      {
        *(v11 + 88) = v13 + 1;
      }

      LOBYTE(v11) = -1;
LABEL_20:
      *v49 = v5;
      v50 = v11;
      v14 = object[3];
      if (v14)
      {
        v15 = *(v14 + 160);
        if (v15)
        {
          v15();
LABEL_23:
          if ((v12 & 1) == 0)
          {
            nw::release_if_needed<nw_protocol *>(v49);
          }

LABEL_25:
          if ((v8 & 1) == 0)
          {
            nw::release_if_needed<nw_protocol *>(v52);
          }

          return 1;
        }
      }

      v17 = object;
      v18 = __nwlog_obj();
      v19 = v17[2];
      *buf = 136446722;
      v55 = "__nw_protocol_notify";
      if (!v19)
      {
        v19 = "invalid";
      }

      v56 = 2082;
      v57 = v19;
      v58 = 2048;
      v20 = v17;
      v59 = v17;
      v21 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v48 = 0;
      if (__nwlog_fault(v21, &type, &v48))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v22 = __nwlog_obj();
          v23 = type;
          if (os_log_type_enabled(v22, type))
          {
            v24 = v20[2];
            if (!v24)
            {
              v24 = "invalid";
            }

            *buf = 136446722;
            v55 = "__nw_protocol_notify";
            v56 = 2082;
            v57 = v24;
            v58 = 2048;
            v59 = v20;
            _os_log_impl(&dword_181A37000, v22, v23, "%{public}s protocol %{public}s (%p) has invalid notify callback", buf, 0x20u);
          }
        }

        else if (v48 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v22 = __nwlog_obj();
          v34 = type;
          v35 = os_log_type_enabled(v22, type);
          if (backtrace_string)
          {
            if (v35)
            {
              v36 = v20[2];
              if (!v36)
              {
                v36 = "invalid";
              }

              *buf = 136446978;
              v55 = "__nw_protocol_notify";
              v56 = 2082;
              v57 = v36;
              v58 = 2048;
              v59 = v20;
              v60 = 2082;
              v61 = backtrace_string;
              _os_log_impl(&dword_181A37000, v22, v34, "%{public}s protocol %{public}s (%p) has invalid notify callback, dumping backtrace:%{public}s", buf, 0x2Au);
            }

            free(backtrace_string);
            goto LABEL_82;
          }

          if (v35)
          {
            v47 = v20[2];
            if (!v47)
            {
              v47 = "invalid";
            }

            *buf = 136446722;
            v55 = "__nw_protocol_notify";
            v56 = 2082;
            v57 = v47;
            v58 = 2048;
            v59 = v20;
            _os_log_impl(&dword_181A37000, v22, v34, "%{public}s protocol %{public}s (%p) has invalid notify callback, no backtrace", buf, 0x20u);
          }
        }

        else
        {
          v22 = __nwlog_obj();
          v43 = type;
          if (os_log_type_enabled(v22, type))
          {
            v44 = v20[2];
            if (!v44)
            {
              v44 = "invalid";
            }

            *buf = 136446722;
            v55 = "__nw_protocol_notify";
            v56 = 2082;
            v57 = v44;
            v58 = 2048;
            v59 = v20;
            _os_log_impl(&dword_181A37000, v22, v43, "%{public}s protocol %{public}s (%p) has invalid notify callback, backtrace limit exceeded", buf, 0x20u);
          }
        }
      }

LABEL_82:
      if (v21)
      {
        free(v21);
      }

      goto LABEL_23;
    }

    v29 = __nwlog_obj();
    *buf = 136446210;
    v55 = "__nw_protocol_notify";
    v30 = _os_log_send_and_compose_impl();

    v49[0] = OS_LOG_TYPE_ERROR;
    type = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v30, v49, &type))
    {
      if (v49[0] == OS_LOG_TYPE_FAULT)
      {
        v31 = __nwlog_obj();
        v32 = v49[0];
        if (os_log_type_enabled(v31, v49[0]))
        {
          *buf = 136446210;
          v55 = "__nw_protocol_notify";
          _os_log_impl(&dword_181A37000, v31, v32, "%{public}s called with null other_protocol", buf, 0xCu);
        }
      }

      else if (type == OS_LOG_TYPE_INFO)
      {
        v40 = __nw_create_backtrace_string();
        v31 = __nwlog_obj();
        v41 = v49[0];
        v42 = os_log_type_enabled(v31, v49[0]);
        if (v40)
        {
          if (v42)
          {
            *buf = 136446466;
            v55 = "__nw_protocol_notify";
            v56 = 2082;
            v57 = v40;
            _os_log_impl(&dword_181A37000, v31, v41, "%{public}s called with null other_protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v40);
          goto LABEL_92;
        }

        if (v42)
        {
          *buf = 136446210;
          v55 = "__nw_protocol_notify";
          _os_log_impl(&dword_181A37000, v31, v41, "%{public}s called with null other_protocol, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v31 = __nwlog_obj();
        v46 = v49[0];
        if (os_log_type_enabled(v31, v49[0]))
        {
          *buf = 136446210;
          v55 = "__nw_protocol_notify";
          _os_log_impl(&dword_181A37000, v31, v46, "%{public}s called with null other_protocol, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_92:
    if (v30)
    {
      free(v30);
    }

    goto LABEL_25;
  }

  v25 = __nwlog_obj();
  *buf = 136446210;
  v55 = "__nw_protocol_notify";
  v26 = _os_log_send_and_compose_impl();

  v52[0] = OS_LOG_TYPE_ERROR;
  v49[0] = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v26, v52, v49))
  {
    if (v52[0] == OS_LOG_TYPE_FAULT)
    {
      v27 = __nwlog_obj();
      v28 = v52[0];
      if (os_log_type_enabled(v27, v52[0]))
      {
        *buf = 136446210;
        v55 = "__nw_protocol_notify";
        _os_log_impl(&dword_181A37000, v27, v28, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v49[0] == OS_LOG_TYPE_INFO)
    {
      v37 = __nw_create_backtrace_string();
      v27 = __nwlog_obj();
      v38 = v52[0];
      v39 = os_log_type_enabled(v27, v52[0]);
      if (v37)
      {
        if (v39)
        {
          *buf = 136446466;
          v55 = "__nw_protocol_notify";
          v56 = 2082;
          v57 = v37;
          _os_log_impl(&dword_181A37000, v27, v38, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v37);
        goto LABEL_87;
      }

      if (v39)
      {
        *buf = 136446210;
        v55 = "__nw_protocol_notify";
        _os_log_impl(&dword_181A37000, v27, v38, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v27 = __nwlog_obj();
      v45 = v52[0];
      if (os_log_type_enabled(v27, v52[0]))
      {
        *buf = 136446210;
        v55 = "__nw_protocol_notify";
        _os_log_impl(&dword_181A37000, v27, v45, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_87:
  if (v26)
  {
    free(v26);
  }

  return 1;
}

void sub_18240270C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if ((v18 & 1) == 0)
  {
    nw::release_if_needed<nw_protocol *>(&a14);
  }

  if (v17)
  {
    _Unwind_Resume(exception_object);
  }

  nw::release_if_needed<nw_protocol *>(&a17);
  _Unwind_Resume(exception_object);
}

uint64_t nw_protocol_instance_create_extra_path(void *a1, uint64_t a2, void *a3)
{
  v60 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  if (!v5)
  {
    v32 = __nwlog_obj();
    *buf = 136446210;
    v49 = "nw_protocol_instance_create_extra_path";
    v33 = _os_log_send_and_compose_impl();

    LOBYTE(__buf) = 16;
    v47 = 0;
    if (!__nwlog_fault(v33, &__buf, &v47))
    {
      goto LABEL_71;
    }

    if (__buf == 17)
    {
      v34 = __nwlog_obj();
      v35 = __buf;
      if (os_log_type_enabled(v34, __buf))
      {
        *buf = 136446210;
        v49 = "nw_protocol_instance_create_extra_path";
        _os_log_impl(&dword_181A37000, v34, v35, "%{public}s called with null instance", buf, 0xCu);
      }
    }

    else if (v47 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v34 = __nwlog_obj();
      v39 = __buf;
      v40 = os_log_type_enabled(v34, __buf);
      if (backtrace_string)
      {
        if (v40)
        {
          *buf = 136446466;
          v49 = "nw_protocol_instance_create_extra_path";
          v50 = 2082;
          v51 = backtrace_string;
          _os_log_impl(&dword_181A37000, v34, v39, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (!v33)
        {
          goto LABEL_73;
        }

        goto LABEL_72;
      }

      if (v40)
      {
        *buf = 136446210;
        v49 = "nw_protocol_instance_create_extra_path";
        _os_log_impl(&dword_181A37000, v34, v39, "%{public}s called with null instance, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v34 = __nwlog_obj();
      v44 = __buf;
      if (os_log_type_enabled(v34, __buf))
      {
        *buf = 136446210;
        v49 = "nw_protocol_instance_create_extra_path";
        _os_log_impl(&dword_181A37000, v34, v44, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_70;
  }

  if (!a2)
  {
    v36 = __nwlog_obj();
    *buf = 136446210;
    v49 = "nw_protocol_instance_create_extra_path";
    v33 = _os_log_send_and_compose_impl();

    LOBYTE(__buf) = 16;
    v47 = 0;
    if (!__nwlog_fault(v33, &__buf, &v47))
    {
      goto LABEL_71;
    }

    if (__buf == 17)
    {
      v34 = __nwlog_obj();
      v37 = __buf;
      if (os_log_type_enabled(v34, __buf))
      {
        *buf = 136446210;
        v49 = "nw_protocol_instance_create_extra_path";
        _os_log_impl(&dword_181A37000, v34, v37, "%{public}s called with null existing_path", buf, 0xCu);
      }
    }

    else if (v47 == 1)
    {
      v41 = __nw_create_backtrace_string();
      v34 = __nwlog_obj();
      v42 = __buf;
      v43 = os_log_type_enabled(v34, __buf);
      if (v41)
      {
        if (v43)
        {
          *buf = 136446466;
          v49 = "nw_protocol_instance_create_extra_path";
          v50 = 2082;
          v51 = v41;
          _os_log_impl(&dword_181A37000, v34, v42, "%{public}s called with null existing_path, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v41);
LABEL_71:
        if (!v33)
        {
          goto LABEL_73;
        }

LABEL_72:
        free(v33);
        goto LABEL_73;
      }

      if (v43)
      {
        *buf = 136446210;
        v49 = "nw_protocol_instance_create_extra_path";
        _os_log_impl(&dword_181A37000, v34, v42, "%{public}s called with null existing_path, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v34 = __nwlog_obj();
      v45 = __buf;
      if (os_log_type_enabled(v34, __buf))
      {
        *buf = 136446210;
        v49 = "nw_protocol_instance_create_extra_path";
        _os_log_impl(&dword_181A37000, v34, v45, "%{public}s called with null existing_path, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_70:

    goto LABEL_71;
  }

  __buf = 0;
  if ((v5[413] & 0x80000000) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 136446978;
      v49 = "nw_protocol_instance_create_extra_path";
      v50 = 2082;
      v51 = v5 + 415;
      v52 = 2080;
      v53 = " ";
      v54 = 2048;
      v55 = a2;
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_INFO, "%{public}s %{public}s%sAsked to create extra path, existing path %lx", buf, 0x2Au);
    }
  }

  v8 = *(v5 + 37);
  if (!v8)
  {
    if ((v5[413] & 0x80000000) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_35;
      }

      *buf = 136446722;
      v49 = "nw_protocol_instance_create_extra_path";
      v50 = 2082;
      v51 = v5 + 415;
      v52 = 2080;
      v53 = " ";
      v28 = "%{public}s %{public}s%sPaths table does not exist";
LABEL_25:
      _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_ERROR, v28, buf, 0x20u);
      goto LABEL_35;
    }

LABEL_73:
    v27 = 0;
    goto LABEL_37;
  }

  node = nw_hash_table_get_node(v8, a2, 8);
  if (!node)
  {
    if ((v5[413] & 0x80000000) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_35;
      }

      *buf = 136446722;
      v49 = "nw_protocol_instance_create_extra_path";
      v50 = 2082;
      v51 = v5 + 415;
      v52 = 2080;
      v53 = " ";
      v28 = "%{public}s %{public}s%sExisting path state does not exist";
      goto LABEL_25;
    }

    goto LABEL_73;
  }

  v10 = node;
  v11 = *(node + 48);
  v12 = v11;
  if (v12)
  {
    v13 = v12;
    arc4random_buf(&__buf, 8uLL);
    v47 = 0;
    v14 = nw_hash_table_add_object(*(v5 + 37), __buf, &v47);
    if (v47 == 1)
    {
      v15 = v14;
      if (v14)
      {
        *(v14 + 32) = 0u;
        *(v14 + 48) = 0u;
        v16 = (v14 + 48);
        *(v14 + 160) = 0u;
        *(v14 + 176) = 0u;
        *(v14 + 128) = 0u;
        *(v14 + 144) = 0u;
        *(v14 + 96) = 0u;
        *(v14 + 112) = 0u;
        *(v14 + 64) = 0u;
        *(v14 + 80) = 0u;
        objc_storeStrong((v14 + 48), v11);
        v17 = *(v10 + 32);
        *(v15 + 176) = 1;
        *(v15 + 32) = v17;
        *(v15 + 185) = *(v15 + 185) & 0xB7 | 0x40;
        v18 = (v15 + 168);
        objc_storeStrong((v15 + 168), a3);
        *(v15 + 152) = 0;
        *(v15 + 160) = v15 + 152;
        v19 = *(v15 + 176);
        v20 = __buf;
        v21 = v5;
        v22 = v21;
        v23 = *(*(*(v21 + 1) + 80) + 216);
        if (v23)
        {
          v23(v21, v20, v19, *(v21 + 39) == v20);
        }

        if ((v5[413] & 0x80000000) == 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v24 = gLogObj;
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            v25 = *v16;
            v26 = *v18;
            *buf = 136447490;
            v49 = "nw_protocol_instance_create_extra_path";
            v50 = 2082;
            v51 = v22 + 415;
            v52 = 2080;
            v53 = " ";
            v54 = 2048;
            v55 = __buf;
            v56 = 2112;
            v57 = v25;
            v58 = 2112;
            v59 = v26;
            _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_INFO, "%{public}s %{public}s%sPath %lx created over %@ (overriden endpoint %@)", buf, 0x3Eu);
          }
        }

        v27 = __buf;
        goto LABEL_36;
      }
    }

    if ((v5[413] & 0x80000000) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v30 = gLogObj;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        v49 = "nw_protocol_instance_create_extra_path";
        v50 = 2082;
        v51 = v5 + 415;
        v52 = 2080;
        v53 = " ";
        v54 = 2048;
        v55 = __buf;
        _os_log_impl(&dword_181A37000, v30, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sFailed to add additional path %lx to paths table", buf, 0x2Au);
      }
    }
  }

  else
  {
    if ((v5[413] & 0x80000000) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v29 = gLogObj;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        v49 = "nw_protocol_instance_create_extra_path";
        v50 = 2082;
        v51 = v5 + 415;
        v52 = 2080;
        v53 = " ";
        v54 = 2048;
        v55 = a2;
        _os_log_impl(&dword_181A37000, v29, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sCannot establish extra path on interface used by %lx: interface not found", buf, 0x2Au);
      }
    }

    v13 = 0;
  }

LABEL_35:
  v27 = 0;
LABEL_36:

LABEL_37:
  return v27;
}

BOOL __nw_protocol_instance_establish_path_block_invoke(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  protocol_handle = nw_protocol_options_get_protocol_handle(a4);
  v7 = a1[4];
  if (v7)
  {
    v8 = v7 - 96;
  }

  else
  {
    v8 = 0;
  }

  if (v8 == protocol_handle)
  {
    *(*(a1[5] + 8) + 24) = 1;
    *(*(a1[6] + 8) + 24) = a2;
  }

  return v8 != protocol_handle;
}

uint64_t __nw_protocol_instance_establish_path_block_invoke_2(uint64_t a1, unint64_t a2, void *a3, void *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (*(*(*(a1 + 40) + 8) + 24) < a2)
  {
    v9 = nw_protocol_instance_attach_protocol(*(a1 + 32), v7, v8, *(*(*(a1 + 48) + 8) + 24), *(a1 + 64), *(a1 + 72));
    if (!v9)
    {
      v16 = 0;
      *(*(*(a1 + 56) + 8) + 24) = 1;
      goto LABEL_15;
    }

    *(*(*(a1 + 48) + 8) + 24) = v9;
    v10 = *(a1 + 32);
    if (!v10 || (*(v10 + 413) & 0x80000000) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = *(a1 + 32);
        v13 = v12 == 0;
        if (v12)
        {
          v14 = (v12 + 415);
        }

        else
        {
          v14 = "";
        }

        v18 = 136446978;
        v19 = "nw_protocol_instance_establish_path_block_invoke_2";
        v20 = 2082;
        v21 = v14;
        if (v13)
        {
          v15 = "";
        }

        else
        {
          v15 = " ";
        }

        v22 = 2080;
        v23 = v15;
        v24 = 2114;
        v25 = v7;
        _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sAttached application protocol: %{public}@", &v18, 0x2Au);
      }
    }
  }

  v16 = 1;
LABEL_15:

  return v16;
}

void __nw_protocol_instance_establish_path_block_invoke_68(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (!v7 || (*(v7 + 413) & 0x80000000) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a1 + 32);
      v10 = "";
      v11 = v9 == 0;
      if (v9)
      {
        v12 = (v9 + 415);
      }

      else
      {
        v12 = "";
      }

      *buf = 136446722;
      *&buf[4] = "nw_protocol_instance_establish_path_block_invoke";
      if (!v11)
      {
        v10 = " ";
      }

      *&buf[12] = 2082;
      *&buf[14] = v12;
      *&buf[22] = 2080;
      v29 = v10;
      _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sAssociation update", buf, 0x20u);
    }
  }

  v13 = v5;
  v14 = v13[9];
  v15 = *(a1 + 32);
  v16 = *(v15 + 72);
  *(v15 + 72) = 0;

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v29 = __Block_byref_object_copy__12441;
  v30 = __Block_byref_object_dispose__12442;
  v31 = 0;
  if (v14 && object_getClass(v14) == MEMORY[0x1E69E9E50])
  {
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = __nw_protocol_instance_establish_path_block_invoke_69;
    applier[3] = &unk_1E6A33FD8;
    v19 = v13;
    v20 = *(a1 + 32);
    v21 = buf;
    xpc_array_apply(v14, applier);

    v17 = v19;
LABEL_17:

    goto LABEL_18;
  }

  if ((*(v13 + 413) & 0x80000000) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v17 = gLogObj;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *v22 = 136446722;
      v23 = "nw_protocol_instance_establish_path_block_invoke";
      v24 = 2082;
      v25 = v13 + 415;
      v26 = 2080;
      v27 = " ";
      _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sNo saved paths to update", v22, 0x20u);
    }

    goto LABEL_17;
  }

LABEL_18:
  objc_storeStrong((*(a1 + 32) + 72), *(*&buf[8] + 40));
  _Block_object_dispose(buf, 8);
}

void sub_18240369C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a21, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12441(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __nw_protocol_instance_establish_path_block_invoke_69(uint64_t a1, uint64_t a2, void *a3)
{
  v54 = *MEMORY[0x1E69E9840];
  v4 = a3;
  value = xpc_uint64_get_value(v4);
  v6 = *(a1 + 32);
  if (!v6 || (*(v6 + 413) & 0x80000000) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a1 + 32);
      v9 = v8 == 0;
      if (v8)
      {
        v10 = (v8 + 415);
      }

      else
      {
        v10 = "";
      }

      *buf = 136446978;
      v47 = "nw_protocol_instance_establish_path_block_invoke";
      v48 = 2082;
      v49 = v10;
      if (v9)
      {
        v11 = "";
      }

      else
      {
        v11 = " ";
      }

      v50 = 2080;
      v51 = v11;
      v52 = 2048;
      v53 = value;
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sChecking path %lx", buf, 0x2Au);
    }

    v6 = *(a1 + 32);
  }

  node = nw_hash_table_get_node(*(v6 + 296), value, 8);
  if (node)
  {
    v13 = node;
    v14 = *(node + 56);
    if (v14)
    {
      v15 = nw_path_flow_registration_force_update(v14);
      v45[0] = 0;
      v45[1] = 0;
      v44 = 0;
      if (nw_path_flow_registration_get_nexus_instance(v15, *(v13 + 56), v45, &v44))
      {
        v16 = *(a1 + 40);
        if (!v16 || (*(v16 + 413) & 0x80000000) == 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v17 = gLogObj;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            v18 = *(a1 + 40);
            v19 = "";
            v20 = v18 == 0;
            if (v18)
            {
              v21 = (v18 + 415);
            }

            else
            {
              v21 = "";
            }

            *buf = 136446722;
            v47 = "nw_protocol_instance_establish_path_block_invoke";
            if (!v20)
            {
              v19 = " ";
            }

            v48 = 2082;
            v49 = v21;
            v50 = 2080;
            v51 = v19;
            _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sPath has nexus assignment", buf, 0x20u);
          }
        }

        nw_protocol_instance_bring_up_channel(*(a1 + 32), value, v13 + 32, v15);
      }

      else
      {
        v33 = *(a1 + 32);
        if (!v33 || (*(v33 + 413) & 0x80000000) == 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v34 = gLogObj;
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
          {
            v35 = *(a1 + 32);
            v36 = "";
            v37 = v35 == 0;
            if (v35)
            {
              v38 = (v35 + 415);
            }

            else
            {
              v38 = "";
            }

            *buf = 136446722;
            v47 = "nw_protocol_instance_establish_path_block_invoke";
            if (!v37)
            {
              v36 = " ";
            }

            v48 = 2082;
            v49 = v38;
            v50 = 2080;
            v51 = v36;
            _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sNo nexus assignment yet", buf, 0x20u);
          }
        }

        v39 = *(*(*(a1 + 48) + 8) + 40);
        if (!v39)
        {
          v40 = xpc_array_create(0, 0);
          v41 = *(*(a1 + 48) + 8);
          v42 = *(v41 + 40);
          *(v41 + 40) = v40;

          v39 = *(*(*(a1 + 48) + 8) + 40);
        }

        xpc_array_set_uint64(v39, 0xFFFFFFFFFFFFFFFFLL, value);
      }

      goto LABEL_60;
    }

    v28 = *(a1 + 32);
    if (!v28 || (*(v28 + 413) & 0x80000000) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v15 = gLogObj;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v29 = *(a1 + 32);
        v30 = v29 == 0;
        if (v29)
        {
          v31 = (v29 + 415);
        }

        else
        {
          v31 = "";
        }

        *buf = 136446978;
        v47 = "nw_protocol_instance_establish_path_block_invoke";
        v48 = 2082;
        v49 = v31;
        if (v30)
        {
          v32 = "";
        }

        else
        {
          v32 = " ";
        }

        v50 = 2080;
        v51 = v32;
        v52 = 2048;
        v53 = value;
        v27 = "%{public}s %{public}s%sNo flow registration found for path %lx";
LABEL_46:
        _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_ERROR, v27, buf, 0x2Au);
        goto LABEL_60;
      }

      goto LABEL_60;
    }
  }

  else
  {
    v22 = *(a1 + 32);
    if (!v22 || (*(v22 + 413) & 0x80000000) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v15 = gLogObj;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v23 = *(a1 + 32);
        v24 = v23 == 0;
        if (v23)
        {
          v25 = (v23 + 415);
        }

        else
        {
          v25 = "";
        }

        *buf = 136446978;
        v47 = "nw_protocol_instance_establish_path_block_invoke";
        v48 = 2082;
        v49 = v25;
        if (v24)
        {
          v26 = "";
        }

        else
        {
          v26 = " ";
        }

        v50 = 2080;
        v51 = v26;
        v52 = 2048;
        v53 = value;
        v27 = "%{public}s %{public}s%sNo path found for path %lx";
        goto LABEL_46;
      }

LABEL_60:
    }
  }

  return 1;
}

BOOL ___ZL37nw_protocol_instance_bring_up_channelP31NWConcrete_nw_protocol_instancemP22nw_protocol_path_statePU21objcproto10OS_nw_path8NSObject_block_invoke_247(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = nw_protocol_instance_attach_protocol(*(a1 + 32), v6, v7, *(*(*(a1 + 40) + 8) + 24), *(a1 + 56), *(a1 + 64));
  v9 = v8;
  if (v8)
  {
    *(*(*(a1 + 40) + 8) + 24) = v8;
    v10 = *(a1 + 32);
    if (!v10 || (*(v10 + 413) & 0x80000000) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = *(a1 + 32);
        v13 = v12 == 0;
        if (v12)
        {
          v14 = (v12 + 415);
        }

        else
        {
          v14 = "";
        }

        v17 = 136446978;
        v18 = "nw_protocol_instance_bring_up_channel_block_invoke";
        v19 = 2082;
        v20 = v14;
        if (v13)
        {
          v15 = "";
        }

        else
        {
          v15 = " ";
        }

        v21 = 2080;
        v22 = v15;
        v23 = 2114;
        v24 = v6;
        _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sAttached internet protocol: %{public}@", &v17, 0x2Au);
      }
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  return v9 != 0;
}

BOOL ___ZL37nw_protocol_instance_bring_up_channelP31NWConcrete_nw_protocol_instancemP22nw_protocol_path_statePU21objcproto10OS_nw_path8NSObject_block_invoke_248(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = nw_protocol_instance_attach_protocol(*(a1 + 32), v6, v7, *(*(*(a1 + 40) + 8) + 24), *(a1 + 56), *(a1 + 64));
  v9 = v8;
  if (v8)
  {
    *(*(*(a1 + 40) + 8) + 24) = v8;
    v10 = *(a1 + 32);
    if (!v10 || (*(v10 + 413) & 0x80000000) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = *(a1 + 32);
        v13 = v12 == 0;
        if (v12)
        {
          v14 = (v12 + 415);
        }

        else
        {
          v14 = "";
        }

        v17 = 136446978;
        v18 = "nw_protocol_instance_bring_up_channel_block_invoke";
        v19 = 2082;
        v20 = v14;
        if (v13)
        {
          v15 = "";
        }

        else
        {
          v15 = " ";
        }

        v21 = 2080;
        v22 = v15;
        v23 = 2114;
        v24 = v6;
        _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sAttached link protocol: %{public}@", &v17, 0x2Au);
      }
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  return v9 != 0;
}

void ___ZL43nw_protocol_instance_update_available_pathsP31NWConcrete_nw_protocol_instance_block_invoke_249(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  uu = 0uLL;
  nw_interface_option_details_get_nexus_agent(v3, &uu);
  v4 = *(a1 + 32);
  if (!v4 || (*(v4 + 413) & 0x80000000) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(a1 + 32);
      v7 = nw_interface_option_details_copy_interface(v3);
      v8 = nw_interface_option_details_copy_remote_endpoint(v3);
      is_null = uuid_is_null(&uu);
      if (v6)
      {
        v10 = " ";
      }

      else
      {
        v10 = "";
      }

      if (v6)
      {
        v11 = (v6 + 415);
      }

      else
      {
        v11 = "";
      }

      is_injected = nw_interface_option_details_is_injected(v3);
      v15 = 136447746;
      v16 = "nw_protocol_instance_update_available_paths_block_invoke";
      v13 = "socket";
      v17 = 2082;
      v18 = v11;
      v19 = 2080;
      if (!is_null)
      {
        v13 = "channel";
      }

      v20 = v10;
      v14 = "system";
      v21 = 2112;
      v22 = v7;
      if (is_injected)
      {
        v14 = "injected";
      }

      v23 = 2112;
      v24 = v8;
      v25 = 2080;
      v26 = v13;
      v27 = 2080;
      v28 = v14;
      _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s\t%@ (%@) (%s, %s)", &v15, 0x48u);
    }
  }
}

uint64_t ___ZL43nw_protocol_instance_update_available_pathsP31NWConcrete_nw_protocol_instance_block_invoke_257(uint64_t a1, uint64_t a2)
{
  v37 = *MEMORY[0x1E69E9840];
  extra = nw_hash_node_get_extra(a2);
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v5 = *(*(a1 + 32) + 288);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = ___ZL43nw_protocol_instance_update_available_pathsP31NWConcrete_nw_protocol_instance_block_invoke_2;
  v17[3] = &unk_1E6A2CF30;
  v18 = *(a1 + 40);
  v22 = *(a1 + 56);
  v6 = *(a1 + 32);
  v20 = &v23;
  v21 = extra;
  v19 = v6;
  nw_path_enumerate_interface_options_with_details(v5, v17);
  if ((v24[3] & 1) == 0 && (*(extra + 153) & 8) == 0)
  {
    object = nw_hash_node_get_object(a2);
    xpc_array_set_uint64(*(a1 + 48), 0xFFFFFFFFFFFFFFFFLL, object);
    *(extra + 144) = 2;
    *(extra + 153) |= 8u;
    v8 = *(a1 + 32);
    if (!v8 || (*(v8 + 413) & 0x80000000) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = *(a1 + 32);
        v11 = "";
        v12 = *(extra + 16);
        v13 = v10 == 0;
        if (v10)
        {
          v14 = (v10 + 415);
        }

        else
        {
          v14 = "";
        }

        v15 = *(extra + 136);
        v28 = "nw_protocol_instance_update_available_paths_block_invoke";
        *buf = 136447234;
        if (!v13)
        {
          v11 = " ";
        }

        v29 = 2082;
        v30 = v14;
        v31 = 2080;
        v32 = v11;
        v33 = 2112;
        v34 = v12;
        v35 = 2112;
        v36 = v15;
        _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sRemoving path over %@ (override endpoint %@)", buf, 0x34u);
      }
    }
  }

  _Block_object_dispose(&v23, 8);
  return 1;
}

void sub_182404418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZL43nw_protocol_instance_update_available_pathsP31NWConcrete_nw_protocol_instance_block_invoke_258(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  value = xpc_uint64_get_value(v4);
  if (*(a1 + 40) != value)
  {
    node = nw_hash_table_get_node(*(*(a1 + 32) + 296), value, 8);
    if (node)
    {
      v7 = *(node + 176);
    }

    else
    {
      v7 = 1;
    }

    nw_protocol_instance_path_callback(*(a1 + 32), value, v7);
  }

  return 1;
}

void ___ZL43nw_protocol_instance_update_available_pathsP31NWConcrete_nw_protocol_instance_block_invoke_2_259(uint64_t a1)
{
  applier[0] = MEMORY[0x1E69E9820];
  applier[1] = 3221225472;
  applier[2] = ___ZL43nw_protocol_instance_update_available_pathsP31NWConcrete_nw_protocol_instance_block_invoke_3;
  applier[3] = &unk_1E6A3D300;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  xpc_array_apply(v1, applier);
}

void nw_protocol_instance_async(void *a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (!v3)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v28 = "nw_protocol_instance_async";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v7, &type, &v25))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v28 = "nw_protocol_instance_async";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null instance", buf, 0xCu);
      }
    }

    else if (v25 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v15 = type;
      v16 = os_log_type_enabled(v8, type);
      if (backtrace_string)
      {
        if (v16)
        {
          *buf = 136446466;
          v28 = "nw_protocol_instance_async";
          v29 = 2082;
          v30 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v15, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_55:
        if (!v7)
        {
          goto LABEL_5;
        }

LABEL_56:
        free(v7);
        goto LABEL_5;
      }

      if (v16)
      {
        *buf = 136446210;
        v28 = "nw_protocol_instance_async";
        _os_log_impl(&dword_181A37000, v8, v15, "%{public}s called with null instance, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v22 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v28 = "nw_protocol_instance_async";
        _os_log_impl(&dword_181A37000, v8, v22, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_54:

    goto LABEL_55;
  }

  v5 = v3[15];
  if (!v5)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v28 = "nw_protocol_instance_async";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v7, &type, &v25))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v28 = "nw_protocol_instance_async";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null instance->context", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v25 != 1)
    {
      v8 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v28 = "nw_protocol_instance_async";
        _os_log_impl(&dword_181A37000, v8, v23, "%{public}s called with null instance->context, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_54;
    }

    v17 = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v18 = type;
    v19 = os_log_type_enabled(v8, type);
    if (!v17)
    {
      if (v19)
      {
        *buf = 136446210;
        v28 = "nw_protocol_instance_async";
        _os_log_impl(&dword_181A37000, v8, v18, "%{public}s called with null instance->context, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v19)
    {
      *buf = 136446466;
      v28 = "nw_protocol_instance_async";
      v29 = 2082;
      v30 = v17;
      _os_log_impl(&dword_181A37000, v8, v18, "%{public}s called with null instance->context, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_35;
  }

  if (!v4)
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    v28 = "nw_protocol_instance_async";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v7, &type, &v25))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v28 = "nw_protocol_instance_async";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null block", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v25 != 1)
    {
      v8 = __nwlog_obj();
      v24 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v28 = "nw_protocol_instance_async";
        _os_log_impl(&dword_181A37000, v8, v24, "%{public}s called with null block, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_54;
    }

    v17 = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v20 = type;
    v21 = os_log_type_enabled(v8, type);
    if (!v17)
    {
      if (v21)
      {
        *buf = 136446210;
        v28 = "nw_protocol_instance_async";
        _os_log_impl(&dword_181A37000, v8, v20, "%{public}s called with null block, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v21)
    {
      *buf = 136446466;
      v28 = "nw_protocol_instance_async";
      v29 = 2082;
      v30 = v17;
      _os_log_impl(&dword_181A37000, v8, v20, "%{public}s called with null block, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_35:

    free(v17);
    if (!v7)
    {
      goto LABEL_5;
    }

    goto LABEL_56;
  }

  nw_queue_context_async(v5, v4);
LABEL_5:
}

uint64_t ___ZL43nw_protocol_instance_update_available_pathsP31NWConcrete_nw_protocol_instance_block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  value = xpc_uint64_get_value(v4);
  nw_protocol_instance_path_callback(*(a1 + 32), value, 2);
  node = nw_hash_table_get_node(*(*(a1 + 32) + 296), value, 8);
  if (node)
  {
    v7 = node;
    nw_protocol_path_state_dispose(*(a1 + 32), node + 32);
    nw_hash_table_remove_node(*(*(a1 + 32) + 296), v7);
  }

  return 1;
}

void *nw_protocol_instance_copy_endpoint(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 40);

    return nw_endpoint_copy(v1);
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_protocol_instance_copy_endpoint";
  v4 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v4, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v14 = "nw_protocol_instance_copy_endpoint";
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null instance", buf, 0xCu);
      }
    }

    else if (v11 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v5 = __nwlog_obj();
      v8 = type;
      v9 = os_log_type_enabled(v5, type);
      if (backtrace_string)
      {
        if (v9)
        {
          *buf = 136446466;
          v14 = "nw_protocol_instance_copy_endpoint";
          v15 = 2082;
          v16 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v8, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_21;
      }

      if (v9)
      {
        *buf = 136446210;
        v14 = "nw_protocol_instance_copy_endpoint";
        _os_log_impl(&dword_181A37000, v5, v8, "%{public}s called with null instance, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v5 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v14 = "nw_protocol_instance_copy_endpoint";
        _os_log_impl(&dword_181A37000, v5, v10, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_21:
  if (v4)
  {
    free(v4);
  }

  return 0;
}

uint64_t nw_protocol_instance_get_maximum_message_size(void *a1, uint64_t a2)
{
  v82 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v27 = __nwlog_obj();
    *buf = 136446210;
    v75 = "nw_protocol_instance_get_maximum_message_size";
    v28 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v70) = 0;
    if (!__nwlog_fault(v28, type, &v70))
    {
      goto LABEL_135;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v29 = __nwlog_obj();
      v30 = type[0];
      if (os_log_type_enabled(v29, type[0]))
      {
        *buf = 136446210;
        v75 = "nw_protocol_instance_get_maximum_message_size";
        _os_log_impl(&dword_181A37000, v29, v30, "%{public}s called with null instance", buf, 0xCu);
      }

      goto LABEL_134;
    }

    if (v70 != 1)
    {
      v29 = __nwlog_obj();
      v54 = type[0];
      if (os_log_type_enabled(v29, type[0]))
      {
        *buf = 136446210;
        v75 = "nw_protocol_instance_get_maximum_message_size";
        _os_log_impl(&dword_181A37000, v29, v54, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_134;
    }

    backtrace_string = __nw_create_backtrace_string();
    v29 = __nwlog_obj();
    v40 = type[0];
    v41 = os_log_type_enabled(v29, type[0]);
    if (!backtrace_string)
    {
      if (v41)
      {
        *buf = 136446210;
        v75 = "nw_protocol_instance_get_maximum_message_size";
        _os_log_impl(&dword_181A37000, v29, v40, "%{public}s called with null instance, no backtrace", buf, 0xCu);
      }

      goto LABEL_134;
    }

    if (v41)
    {
      *buf = 136446466;
      v75 = "nw_protocol_instance_get_maximum_message_size";
      v76 = 2082;
      v77 = backtrace_string;
      _os_log_impl(&dword_181A37000, v29, v40, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_102;
  }

  if (a2)
  {
    v5 = nw_protocol_implementation_lookup_path(v3, a2, 0);
    if (!v5)
    {
      goto LABEL_137;
    }

    v6 = *(v5 + 32);
    if (!v6)
    {
      goto LABEL_137;
    }

    v7 = v6[5];
    v8 = v6;
    if (v7 != &nw_protocol_ref_counted_handle)
    {
      if (v7 != &nw_protocol_ref_counted_additional_handle)
      {
        LOBYTE(v8) = 0;
        v9 = 1;
        goto LABEL_30;
      }

      v8 = v6[8];
      if (!v8)
      {
        v9 = 1;
        goto LABEL_30;
      }
    }

    v21 = v8[11];
    v9 = 0;
    if (v21)
    {
      v8[11] = v21 + 1;
    }

    LOBYTE(v8) = -1;
LABEL_30:
    *type = v6;
    v73 = v8;
    v22 = *&v4[-1].log_str[33];
    p_paths_log_id_num = &v4[-1].paths_log_id_num;
    if (v22 == &nw_protocol_ref_counted_handle || v22 == &nw_protocol_ref_counted_additional_handle && (p_paths_log_id_num = *&v4[-1].log_str[57]) != 0)
    {
      v25 = *(p_paths_log_id_num + 11);
      v17 = 0;
      if (v25)
      {
        *(p_paths_log_id_num + 11) = v25 + 1;
      }

      v24 = -1;
    }

    else
    {
      v24 = 0;
      v17 = 1;
    }

    v70 = &v4[-1].paths_log_id_num;
    v71 = v24;
    v26 = v6[3];
    if (v26)
    {
      v20 = *(v26 + 248);
      if (v20)
      {
LABEL_39:
        v20();
LABEL_40:
        if ((v17 & 1) == 0)
        {
          nw::release_if_needed<nw_protocol *>(&v70);
        }

        if ((v9 & 1) == 0)
        {
          nw::release_if_needed<nw_protocol *>(type);
        }

        goto LABEL_137;
      }
    }

    v42 = v6;
    v43 = __nwlog_obj();
    v44 = v42[2];
    *buf = 136446722;
    v75 = "__nw_protocol_get_message_properties";
    if (!v44)
    {
      v44 = "invalid";
    }

    v76 = 2082;
    v77 = v44;
    v78 = 2048;
    v45 = v42;
    v79 = v42;
    v35 = _os_log_send_and_compose_impl();

    v69 = OS_LOG_TYPE_ERROR;
    v68 = 0;
    if (__nwlog_fault(v35, &v69, &v68))
    {
      if (v69 == OS_LOG_TYPE_FAULT)
      {
        v36 = __nwlog_obj();
        v46 = v69;
        if (os_log_type_enabled(v36, v69))
        {
          v47 = v45[2];
          if (!v47)
          {
            v47 = "invalid";
          }

          *buf = 136446722;
          v75 = "__nw_protocol_get_message_properties";
          v76 = 2082;
          v77 = v47;
          v78 = 2048;
          v79 = v45;
          _os_log_impl(&dword_181A37000, v36, v46, "%{public}s protocol %{public}s (%p) has invalid get_message_properties callback", buf, 0x20u);
        }

LABEL_129:

        goto LABEL_130;
      }

      if (v68 != 1)
      {
        v36 = __nwlog_obj();
        v62 = v69;
        if (os_log_type_enabled(v36, v69))
        {
          v63 = "invalid";
          if (v45[2])
          {
            v63 = v45[2];
          }

          *buf = 136446722;
          v75 = "__nw_protocol_get_message_properties";
          v76 = 2082;
          v77 = v63;
          v78 = 2048;
          v79 = v45;
          _os_log_impl(&dword_181A37000, v36, v62, "%{public}s protocol %{public}s (%p) has invalid get_message_properties callback, backtrace limit exceeded", buf, 0x20u);
        }

        goto LABEL_129;
      }

      v50 = __nw_create_backtrace_string();
      v36 = __nwlog_obj();
      v55 = v69;
      v56 = os_log_type_enabled(v36, v69);
      if (!v50)
      {
        if (v56)
        {
          v66 = "invalid";
          if (v45[2])
          {
            v66 = v45[2];
          }

          *buf = 136446722;
          v75 = "__nw_protocol_get_message_properties";
          v76 = 2082;
          v77 = v66;
          v78 = 2048;
          v79 = v45;
          _os_log_impl(&dword_181A37000, v36, v55, "%{public}s protocol %{public}s (%p) has invalid get_message_properties callback, no backtrace", buf, 0x20u);
        }

        goto LABEL_129;
      }

      if (v56)
      {
        v57 = "invalid";
        if (v45[2])
        {
          v57 = v45[2];
        }

        *buf = 136446978;
        v75 = "__nw_protocol_get_message_properties";
        v76 = 2082;
        v77 = v57;
        v78 = 2048;
        v79 = v45;
        v80 = 2082;
        v81 = v50;
        _os_log_impl(&dword_181A37000, v36, v55, "%{public}s protocol %{public}s (%p) has invalid get_message_properties callback, dumping backtrace:%{public}s", buf, 0x2Au);
      }

LABEL_97:

      free(v50);
      goto LABEL_130;
    }

    goto LABEL_130;
  }

  v10 = *&v3[-1].log_str[25];
  if (v10)
  {
    v11 = v10[5];
    v12 = *&v4[-1].log_str[25];
    if (v11 != &nw_protocol_ref_counted_handle)
    {
      if (v11 != &nw_protocol_ref_counted_additional_handle)
      {
        LOBYTE(v12) = 0;
        v9 = 1;
        goto LABEL_16;
      }

      v12 = v10[8];
      if (!v12)
      {
        v9 = 1;
        goto LABEL_16;
      }
    }

    v13 = *(v12 + 88);
    v9 = 0;
    if (v13)
    {
      *(v12 + 88) = v13 + 1;
    }

    LOBYTE(v12) = -1;
LABEL_16:
    *type = v10;
    v73 = v12;
    v14 = *&v4[-1].log_str[33];
    v15 = &v4[-1].paths_log_id_num;
    if (v14 == &nw_protocol_ref_counted_handle || v14 == &nw_protocol_ref_counted_additional_handle && (v15 = *&v4[-1].log_str[57]) != 0)
    {
      v18 = *(v15 + 11);
      v17 = 0;
      if (v18)
      {
        *(v15 + 11) = v18 + 1;
      }

      v16 = -1;
    }

    else
    {
      v16 = 0;
      v17 = 1;
    }

    v70 = &v4[-1].paths_log_id_num;
    v71 = v16;
    v19 = v10[3];
    if (v19)
    {
      v20 = *(v19 + 248);
      if (v20)
      {
        goto LABEL_39;
      }
    }

    v31 = v10;
    v32 = __nwlog_obj();
    v33 = v31[2];
    *buf = 136446722;
    v75 = "__nw_protocol_get_message_properties";
    if (!v33)
    {
      v33 = "invalid";
    }

    v76 = 2082;
    v77 = v33;
    v78 = 2048;
    v34 = v31;
    v79 = v31;
    v35 = _os_log_send_and_compose_impl();

    v69 = OS_LOG_TYPE_ERROR;
    v68 = 0;
    if (__nwlog_fault(v35, &v69, &v68))
    {
      if (v69 == OS_LOG_TYPE_FAULT)
      {
        v36 = __nwlog_obj();
        v37 = v69;
        if (os_log_type_enabled(v36, v69))
        {
          v38 = v34[2];
          if (!v38)
          {
            v38 = "invalid";
          }

          *buf = 136446722;
          v75 = "__nw_protocol_get_message_properties";
          v76 = 2082;
          v77 = v38;
          v78 = 2048;
          v79 = v34;
          _os_log_impl(&dword_181A37000, v36, v37, "%{public}s protocol %{public}s (%p) has invalid get_message_properties callback", buf, 0x20u);
        }

        goto LABEL_129;
      }

      if (v68 != 1)
      {
        v36 = __nwlog_obj();
        v60 = v69;
        if (os_log_type_enabled(v36, v69))
        {
          v61 = v34[2];
          if (!v61)
          {
            v61 = "invalid";
          }

          *buf = 136446722;
          v75 = "__nw_protocol_get_message_properties";
          v76 = 2082;
          v77 = v61;
          v78 = 2048;
          v79 = v34;
          _os_log_impl(&dword_181A37000, v36, v60, "%{public}s protocol %{public}s (%p) has invalid get_message_properties callback, backtrace limit exceeded", buf, 0x20u);
        }

        goto LABEL_129;
      }

      v50 = __nw_create_backtrace_string();
      v36 = __nwlog_obj();
      v51 = v69;
      v52 = os_log_type_enabled(v36, v69);
      if (!v50)
      {
        if (v52)
        {
          if (v34[2])
          {
            v65 = v34[2];
          }

          else
          {
            v65 = "invalid";
          }

          *buf = 136446722;
          v75 = "__nw_protocol_get_message_properties";
          v76 = 2082;
          v77 = v65;
          v78 = 2048;
          v79 = v34;
          _os_log_impl(&dword_181A37000, v36, v51, "%{public}s protocol %{public}s (%p) has invalid get_message_properties callback, no backtrace", buf, 0x20u);
        }

        goto LABEL_129;
      }

      if (v52)
      {
        if (v34[2])
        {
          v53 = v34[2];
        }

        else
        {
          v53 = "invalid";
        }

        *buf = 136446978;
        v75 = "__nw_protocol_get_message_properties";
        v76 = 2082;
        v77 = v53;
        v78 = 2048;
        v79 = v34;
        v80 = 2082;
        v81 = v50;
        _os_log_impl(&dword_181A37000, v36, v51, "%{public}s protocol %{public}s (%p) has invalid get_message_properties callback, dumping backtrace:%{public}s", buf, 0x2Au);
      }

      goto LABEL_97;
    }

LABEL_130:
    if (v35)
    {
      free(v35);
    }

    goto LABEL_40;
  }

  v48 = __nwlog_obj();
  *buf = 136446210;
  v75 = "__nw_protocol_get_message_properties";
  v28 = _os_log_send_and_compose_impl();

  type[0] = OS_LOG_TYPE_ERROR;
  LOBYTE(v70) = 0;
  if (__nwlog_fault(v28, type, &v70))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v29 = __nwlog_obj();
      v49 = type[0];
      if (os_log_type_enabled(v29, type[0]))
      {
        *buf = 136446210;
        v75 = "__nw_protocol_get_message_properties";
        _os_log_impl(&dword_181A37000, v29, v49, "%{public}s called with null protocol", buf, 0xCu);
      }

LABEL_134:

      goto LABEL_135;
    }

    if (v70 != 1)
    {
      v29 = __nwlog_obj();
      v64 = type[0];
      if (os_log_type_enabled(v29, type[0]))
      {
        *buf = 136446210;
        v75 = "__nw_protocol_get_message_properties";
        _os_log_impl(&dword_181A37000, v29, v64, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_134;
    }

    backtrace_string = __nw_create_backtrace_string();
    v29 = __nwlog_obj();
    v58 = type[0];
    v59 = os_log_type_enabled(v29, type[0]);
    if (!backtrace_string)
    {
      if (v59)
      {
        *buf = 136446210;
        v75 = "__nw_protocol_get_message_properties";
        _os_log_impl(&dword_181A37000, v29, v58, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }

      goto LABEL_134;
    }

    if (v59)
    {
      *buf = 136446466;
      v75 = "__nw_protocol_get_message_properties";
      v76 = 2082;
      v77 = backtrace_string;
      _os_log_impl(&dword_181A37000, v29, v58, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_102:

    free(backtrace_string);
  }

LABEL_135:
  if (v28)
  {
    free(v28);
  }

LABEL_137:

  return 0;
}

void sub_182405BFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  if ((v9 & 1) == 0)
  {
    nw::release_if_needed<nw_protocol *>(va);
  }

  if ((v8 & 1) == 0)
  {
    nw::release_if_needed<nw_protocol *>(va1);
  }

  _Unwind_Resume(a1);
}

void *nw_protocol_instance_get_buffer_manager(void *a1, unsigned int a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v5 = *(v3 + 15);
    if (v5)
    {
      buffer_manager_with_context = nw_frame_get_buffer_manager_with_context(v5, a2);
      goto LABEL_4;
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_protocol_instance_get_buffer_manager";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (__nwlog_fault(v9, &type, &v21))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v24 = "nw_protocol_instance_get_buffer_manager";
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null instance->context", buf, 0xCu);
        }

LABEL_36:

        goto LABEL_37;
      }

      if (v21 != 1)
      {
        v10 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v24 = "nw_protocol_instance_get_buffer_manager";
          _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null instance->context, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
      }

      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v17 = type;
      v18 = os_log_type_enabled(v10, type);
      if (!backtrace_string)
      {
        if (v18)
        {
          *buf = 136446210;
          v24 = "nw_protocol_instance_get_buffer_manager";
          _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null instance->context, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v18)
      {
        *buf = 136446466;
        v24 = "nw_protocol_instance_get_buffer_manager";
        v25 = 2082;
        v26 = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null instance->context, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_24;
    }
  }

  else
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_protocol_instance_get_buffer_manager";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (__nwlog_fault(v9, &type, &v21))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v24 = "nw_protocol_instance_get_buffer_manager";
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null instance", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v21 != 1)
      {
        v10 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v24 = "nw_protocol_instance_get_buffer_manager";
          _os_log_impl(&dword_181A37000, v10, v19, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
      }

      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v15 = type;
      v16 = os_log_type_enabled(v10, type);
      if (!backtrace_string)
      {
        if (v16)
        {
          *buf = 136446210;
          v24 = "nw_protocol_instance_get_buffer_manager";
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null instance, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v16)
      {
        *buf = 136446466;
        v24 = "nw_protocol_instance_get_buffer_manager";
        v25 = 2082;
        v26 = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_24:

      free(backtrace_string);
    }
  }

LABEL_37:
  if (v9)
  {
    free(v9);
  }

  buffer_manager_with_context = 0;
LABEL_4:

  return buffer_manager_with_context;
}

uint64_t nw_protocol_instance_access_cached_content(void *a1, void *a2)
{
  v54 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v51 = "nw_protocol_instance_access_cached_content";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v48 = 0;
    if (!__nwlog_fault(v12, &type, &v48))
    {
      goto LABEL_102;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v51 = "nw_protocol_instance_access_cached_content";
        _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null instance", buf, 0xCu);
      }

      goto LABEL_101;
    }

    if (v48 != 1)
    {
      v13 = __nwlog_obj();
      v41 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v51 = "nw_protocol_instance_access_cached_content";
        _os_log_impl(&dword_181A37000, v13, v41, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_101;
    }

    backtrace_string = __nw_create_backtrace_string();
    v13 = __nwlog_obj();
    v28 = type;
    v29 = os_log_type_enabled(v13, type);
    if (!backtrace_string)
    {
      if (v29)
      {
        *buf = 136446210;
        v51 = "nw_protocol_instance_access_cached_content";
        _os_log_impl(&dword_181A37000, v13, v28, "%{public}s called with null instance, no backtrace", buf, 0xCu);
      }

      goto LABEL_101;
    }

    if (v29)
    {
      *buf = 136446466;
      v51 = "nw_protocol_instance_access_cached_content";
      v52 = 2082;
      v53 = backtrace_string;
      _os_log_impl(&dword_181A37000, v13, v28, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_63:

    free(backtrace_string);
    goto LABEL_102;
  }

  if (!v4)
  {
    v15 = __nwlog_obj();
    *buf = 136446210;
    v51 = "nw_protocol_instance_access_cached_content";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v48 = 0;
    if (!__nwlog_fault(v12, &type, &v48))
    {
      goto LABEL_102;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v51 = "nw_protocol_instance_access_cached_content";
        _os_log_impl(&dword_181A37000, v13, v16, "%{public}s called with null access_block", buf, 0xCu);
      }

      goto LABEL_101;
    }

    if (v48 != 1)
    {
      v13 = __nwlog_obj();
      v42 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v51 = "nw_protocol_instance_access_cached_content";
        _os_log_impl(&dword_181A37000, v13, v42, "%{public}s called with null access_block, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_101;
    }

    backtrace_string = __nw_create_backtrace_string();
    v13 = __nwlog_obj();
    v30 = type;
    v31 = os_log_type_enabled(v13, type);
    if (!backtrace_string)
    {
      if (v31)
      {
        *buf = 136446210;
        v51 = "nw_protocol_instance_access_cached_content";
        _os_log_impl(&dword_181A37000, v13, v30, "%{public}s called with null access_block, no backtrace", buf, 0xCu);
      }

      goto LABEL_101;
    }

    if (v31)
    {
      *buf = 136446466;
      v51 = "nw_protocol_instance_access_cached_content";
      v52 = 2082;
      v53 = backtrace_string;
      _os_log_impl(&dword_181A37000, v13, v30, "%{public}s called with null access_block, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_63;
  }

  v6 = v3[1];
  if (!v6)
  {
    v17 = __nwlog_obj();
    *buf = 136446210;
    v51 = "nw_protocol_instance_access_cached_content";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v48 = 0;
    if (!__nwlog_fault(v12, &type, &v48))
    {
      goto LABEL_102;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v51 = "nw_protocol_instance_access_cached_content";
        _os_log_impl(&dword_181A37000, v13, v18, "%{public}s called with null instance->parent_definition", buf, 0xCu);
      }

      goto LABEL_101;
    }

    if (v48 != 1)
    {
      v13 = __nwlog_obj();
      v43 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v51 = "nw_protocol_instance_access_cached_content";
        _os_log_impl(&dword_181A37000, v13, v43, "%{public}s called with null instance->parent_definition, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_101;
    }

    backtrace_string = __nw_create_backtrace_string();
    v13 = __nwlog_obj();
    v32 = type;
    v33 = os_log_type_enabled(v13, type);
    if (!backtrace_string)
    {
      if (v33)
      {
        *buf = 136446210;
        v51 = "nw_protocol_instance_access_cached_content";
        _os_log_impl(&dword_181A37000, v13, v32, "%{public}s called with null instance->parent_definition, no backtrace", buf, 0xCu);
      }

      goto LABEL_101;
    }

    if (v33)
    {
      *buf = 136446466;
      v51 = "nw_protocol_instance_access_cached_content";
      v52 = 2082;
      v53 = backtrace_string;
      _os_log_impl(&dword_181A37000, v13, v32, "%{public}s called with null instance->parent_definition, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_63;
  }

  v7 = v6[9];
  if (!v7)
  {
    v19 = __nwlog_obj();
    *buf = 136446210;
    v51 = "nw_protocol_instance_access_cached_content";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v48 = 0;
    if (!__nwlog_fault(v12, &type, &v48))
    {
      goto LABEL_102;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v51 = "nw_protocol_instance_access_cached_content";
        _os_log_impl(&dword_181A37000, v13, v20, "%{public}s called with null instance->parent_definition->common_state", buf, 0xCu);
      }

      goto LABEL_101;
    }

    if (v48 != 1)
    {
      v13 = __nwlog_obj();
      v44 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v51 = "nw_protocol_instance_access_cached_content";
        _os_log_impl(&dword_181A37000, v13, v44, "%{public}s called with null instance->parent_definition->common_state, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_101;
    }

    backtrace_string = __nw_create_backtrace_string();
    v13 = __nwlog_obj();
    v34 = type;
    v35 = os_log_type_enabled(v13, type);
    if (!backtrace_string)
    {
      if (v35)
      {
        *buf = 136446210;
        v51 = "nw_protocol_instance_access_cached_content";
        _os_log_impl(&dword_181A37000, v13, v34, "%{public}s called with null instance->parent_definition->common_state, no backtrace", buf, 0xCu);
      }

      goto LABEL_101;
    }

    if (v35)
    {
      *buf = 136446466;
      v51 = "nw_protocol_instance_access_cached_content";
      v52 = 2082;
      v53 = backtrace_string;
      _os_log_impl(&dword_181A37000, v13, v34, "%{public}s called with null instance->parent_definition->common_state, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_63;
  }

  if (*(v7 + 56))
  {
    v8 = nw_protocol_instance_copy_association(v3);
    v9 = v8;
    if (v8)
    {
      if (nw_association_get_cached_content_for_protocol(v8, v3[1]))
      {
        v10 = v5[2](v5);
LABEL_111:

        goto LABEL_112;
      }

LABEL_110:
      v10 = 0;
      goto LABEL_111;
    }

    v23 = __nwlog_obj();
    *buf = 136446210;
    v51 = "nw_protocol_instance_access_cached_content";
    v24 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v48 = 0;
    if (__nwlog_fault(v24, &type, &v48))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v25 = __nwlog_obj();
        v26 = type;
        if (os_log_type_enabled(v25, type))
        {
          *buf = 136446210;
          v51 = "nw_protocol_instance_access_cached_content";
          _os_log_impl(&dword_181A37000, v25, v26, "%{public}s called with null association", buf, 0xCu);
        }
      }

      else if (v48 == 1)
      {
        v38 = __nw_create_backtrace_string();
        v25 = __nwlog_obj();
        v39 = type;
        v40 = os_log_type_enabled(v25, type);
        if (v38)
        {
          if (v40)
          {
            *buf = 136446466;
            v51 = "nw_protocol_instance_access_cached_content";
            v52 = 2082;
            v53 = v38;
            _os_log_impl(&dword_181A37000, v25, v39, "%{public}s called with null association, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v38);
          goto LABEL_108;
        }

        if (v40)
        {
          *buf = 136446210;
          v51 = "nw_protocol_instance_access_cached_content";
          _os_log_impl(&dword_181A37000, v25, v39, "%{public}s called with null association, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v25 = __nwlog_obj();
        v46 = type;
        if (os_log_type_enabled(v25, type))
        {
          *buf = 136446210;
          v51 = "nw_protocol_instance_access_cached_content";
          _os_log_impl(&dword_181A37000, v25, v46, "%{public}s called with null association, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_108:
    if (v24)
    {
      free(v24);
    }

    goto LABEL_110;
  }

  v21 = __nwlog_obj();
  *buf = 136446210;
  v51 = "nw_protocol_instance_access_cached_content";
  v12 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v48 = 0;
  if (__nwlog_fault(v12, &type, &v48))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v22 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v51 = "nw_protocol_instance_access_cached_content";
        _os_log_impl(&dword_181A37000, v13, v22, "%{public}s called with null instance->parent_definition->common_state->deallocate_cache_entry", buf, 0xCu);
      }

LABEL_101:

      goto LABEL_102;
    }

    if (v48 != 1)
    {
      v13 = __nwlog_obj();
      v45 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v51 = "nw_protocol_instance_access_cached_content";
        _os_log_impl(&dword_181A37000, v13, v45, "%{public}s called with null instance->parent_definition->common_state->deallocate_cache_entry, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_101;
    }

    backtrace_string = __nw_create_backtrace_string();
    v13 = __nwlog_obj();
    v36 = type;
    v37 = os_log_type_enabled(v13, type);
    if (!backtrace_string)
    {
      if (v37)
      {
        *buf = 136446210;
        v51 = "nw_protocol_instance_access_cached_content";
        _os_log_impl(&dword_181A37000, v13, v36, "%{public}s called with null instance->parent_definition->common_state->deallocate_cache_entry, no backtrace", buf, 0xCu);
      }

      goto LABEL_101;
    }

    if (v37)
    {
      *buf = 136446466;
      v51 = "nw_protocol_instance_access_cached_content";
      v52 = 2082;
      v53 = backtrace_string;
      _os_log_impl(&dword_181A37000, v13, v36, "%{public}s called with null instance->parent_definition->common_state->deallocate_cache_entry, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_63;
  }

LABEL_102:
  if (v12)
  {
    free(v12);
  }

  v10 = 0;
LABEL_112:

  return v10;
}

void nw_protocol_instance_set_cached_content(void *a1, uint64_t a2, uint64_t a3)
{
  v49 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = v5;
  if (!v5)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v46 = "nw_protocol_instance_set_cached_content";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v43 = 0;
    if (!__nwlog_fault(v12, &type, &v43))
    {
      goto LABEL_87;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v46 = "nw_protocol_instance_set_cached_content";
        _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null instance", buf, 0xCu);
      }
    }

    else if (v43 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v26 = type;
      v27 = os_log_type_enabled(v13, type);
      if (backtrace_string)
      {
        if (v27)
        {
          *buf = 136446466;
          v46 = "nw_protocol_instance_set_cached_content";
          v47 = 2082;
          v48 = backtrace_string;
          _os_log_impl(&dword_181A37000, v13, v26, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_87:
        if (!v12)
        {
          goto LABEL_8;
        }

LABEL_88:
        free(v12);
        goto LABEL_8;
      }

      if (v27)
      {
        *buf = 136446210;
        v46 = "nw_protocol_instance_set_cached_content";
        _os_log_impl(&dword_181A37000, v13, v26, "%{public}s called with null instance, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v13 = __nwlog_obj();
      v38 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v46 = "nw_protocol_instance_set_cached_content";
        _os_log_impl(&dword_181A37000, v13, v38, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_86:

    goto LABEL_87;
  }

  v7 = v5[1];
  if (!v7)
  {
    v15 = __nwlog_obj();
    *buf = 136446210;
    v46 = "nw_protocol_instance_set_cached_content";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v43 = 0;
    if (!__nwlog_fault(v12, &type, &v43))
    {
      goto LABEL_87;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v46 = "nw_protocol_instance_set_cached_content";
        _os_log_impl(&dword_181A37000, v13, v16, "%{public}s called with null instance->parent_definition", buf, 0xCu);
      }

      goto LABEL_86;
    }

    if (v43 != 1)
    {
      v13 = __nwlog_obj();
      v39 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v46 = "nw_protocol_instance_set_cached_content";
        _os_log_impl(&dword_181A37000, v13, v39, "%{public}s called with null instance->parent_definition, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_86;
    }

    v28 = __nw_create_backtrace_string();
    v13 = __nwlog_obj();
    v29 = type;
    v30 = os_log_type_enabled(v13, type);
    if (!v28)
    {
      if (v30)
      {
        *buf = 136446210;
        v46 = "nw_protocol_instance_set_cached_content";
        _os_log_impl(&dword_181A37000, v13, v29, "%{public}s called with null instance->parent_definition, no backtrace", buf, 0xCu);
      }

      goto LABEL_86;
    }

    if (v30)
    {
      *buf = 136446466;
      v46 = "nw_protocol_instance_set_cached_content";
      v47 = 2082;
      v48 = v28;
      _os_log_impl(&dword_181A37000, v13, v29, "%{public}s called with null instance->parent_definition, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_53;
  }

  v8 = *(v7 + 72);
  if (!v8)
  {
    v17 = __nwlog_obj();
    *buf = 136446210;
    v46 = "nw_protocol_instance_set_cached_content";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v43 = 0;
    if (!__nwlog_fault(v12, &type, &v43))
    {
      goto LABEL_87;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v46 = "nw_protocol_instance_set_cached_content";
        _os_log_impl(&dword_181A37000, v13, v18, "%{public}s called with null instance->parent_definition->common_state", buf, 0xCu);
      }

      goto LABEL_86;
    }

    if (v43 != 1)
    {
      v13 = __nwlog_obj();
      v40 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v46 = "nw_protocol_instance_set_cached_content";
        _os_log_impl(&dword_181A37000, v13, v40, "%{public}s called with null instance->parent_definition->common_state, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_86;
    }

    v28 = __nw_create_backtrace_string();
    v13 = __nwlog_obj();
    v31 = type;
    v32 = os_log_type_enabled(v13, type);
    if (!v28)
    {
      if (v32)
      {
        *buf = 136446210;
        v46 = "nw_protocol_instance_set_cached_content";
        _os_log_impl(&dword_181A37000, v13, v31, "%{public}s called with null instance->parent_definition->common_state, no backtrace", buf, 0xCu);
      }

      goto LABEL_86;
    }

    if (v32)
    {
      *buf = 136446466;
      v46 = "nw_protocol_instance_set_cached_content";
      v47 = 2082;
      v48 = v28;
      _os_log_impl(&dword_181A37000, v13, v31, "%{public}s called with null instance->parent_definition->common_state, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_53;
  }

  if (!*(v8 + 56))
  {
    v19 = __nwlog_obj();
    *buf = 136446210;
    v46 = "nw_protocol_instance_set_cached_content";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v43 = 0;
    if (!__nwlog_fault(v12, &type, &v43))
    {
      goto LABEL_87;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v46 = "nw_protocol_instance_set_cached_content";
        _os_log_impl(&dword_181A37000, v13, v20, "%{public}s called with null instance->parent_definition->common_state->deallocate_cache_entry", buf, 0xCu);
      }

      goto LABEL_86;
    }

    if (v43 != 1)
    {
      v13 = __nwlog_obj();
      v41 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v46 = "nw_protocol_instance_set_cached_content";
        _os_log_impl(&dword_181A37000, v13, v41, "%{public}s called with null instance->parent_definition->common_state->deallocate_cache_entry, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_86;
    }

    v28 = __nw_create_backtrace_string();
    v13 = __nwlog_obj();
    v33 = type;
    v34 = os_log_type_enabled(v13, type);
    if (!v28)
    {
      if (v34)
      {
        *buf = 136446210;
        v46 = "nw_protocol_instance_set_cached_content";
        _os_log_impl(&dword_181A37000, v13, v33, "%{public}s called with null instance->parent_definition->common_state->deallocate_cache_entry, no backtrace", buf, 0xCu);
      }

      goto LABEL_86;
    }

    if (v34)
    {
      *buf = 136446466;
      v46 = "nw_protocol_instance_set_cached_content";
      v47 = 2082;
      v48 = v28;
      _os_log_impl(&dword_181A37000, v13, v33, "%{public}s called with null instance->parent_definition->common_state->deallocate_cache_entry, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_53:

    free(v28);
    if (!v12)
    {
      goto LABEL_8;
    }

    goto LABEL_88;
  }

  v9 = nw_protocol_instance_copy_association(v5);
  v10 = v9;
  if (!v9)
  {
    v21 = __nwlog_obj();
    *buf = 136446210;
    v46 = "nw_protocol_instance_set_cached_content";
    v22 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v43 = 0;
    if (__nwlog_fault(v22, &type, &v43))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v23 = __nwlog_obj();
        v24 = type;
        if (os_log_type_enabled(v23, type))
        {
          *buf = 136446210;
          v46 = "nw_protocol_instance_set_cached_content";
          _os_log_impl(&dword_181A37000, v23, v24, "%{public}s called with null association", buf, 0xCu);
        }
      }

      else if (v43 == 1)
      {
        v35 = __nw_create_backtrace_string();
        v23 = __nwlog_obj();
        v36 = type;
        v37 = os_log_type_enabled(v23, type);
        if (v35)
        {
          if (v37)
          {
            *buf = 136446466;
            v46 = "nw_protocol_instance_set_cached_content";
            v47 = 2082;
            v48 = v35;
            _os_log_impl(&dword_181A37000, v23, v36, "%{public}s called with null association, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v35);
          goto LABEL_92;
        }

        if (v37)
        {
          *buf = 136446210;
          v46 = "nw_protocol_instance_set_cached_content";
          _os_log_impl(&dword_181A37000, v23, v36, "%{public}s called with null association, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v23 = __nwlog_obj();
        v42 = type;
        if (os_log_type_enabled(v23, type))
        {
          *buf = 136446210;
          v46 = "nw_protocol_instance_set_cached_content";
          _os_log_impl(&dword_181A37000, v23, v42, "%{public}s called with null association, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_92:
    if (v22)
    {
      free(v22);
    }

    goto LABEL_7;
  }

  nw_association_set_cached_content_for_protocol(v9, v6[1], a2, a3);
LABEL_7:

LABEL_8:
}

id nw_protocol_instance_copy_definition(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1[1];
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_protocol_instance_copy_definition";
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
        v16 = "nw_protocol_instance_copy_definition";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null instance", buf, 0xCu);
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
          v16 = "nw_protocol_instance_copy_definition";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_protocol_instance_copy_definition";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null instance, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_protocol_instance_copy_definition";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
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

void nw_protocol_instance_set_limit_outbound_data(void *a1, int a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    if (a2)
    {
      v4 = 64;
    }

    else
    {
      v4 = 0;
    }

    v3[410] = v3[410] & 0xBF | v4;
    goto LABEL_6;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_protocol_instance_set_limit_outbound_data";
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
        v16 = "nw_protocol_instance_set_limit_outbound_data";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null instance", buf, 0xCu);
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
          v16 = "nw_protocol_instance_set_limit_outbound_data";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_23;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_protocol_instance_set_limit_outbound_data";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null instance, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_protocol_instance_set_limit_outbound_data";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_23:
  if (v6)
  {
    free(v6);
  }

  v3 = 0;
LABEL_6:
}

void nw_protocol_instance_set_reserve_header_size(void *a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    v3[10] = a2;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_protocol_instance_set_reserve_header_size";
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
        v15 = "nw_protocol_instance_set_reserve_header_size";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null instance", buf, 0xCu);
      }
    }

    else if (v12 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v9 = type;
      v10 = os_log_type_enabled(v6, type);
      if (backtrace_string)
      {
        if (v10)
        {
          *buf = 136446466;
          v15 = "nw_protocol_instance_set_reserve_header_size";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_protocol_instance_set_reserve_header_size";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null instance, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_protocol_instance_set_reserve_header_size";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

  v3 = 0;
LABEL_3:
}

void nw_protocol_instance_set_reserve_footer_size(void *a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    v3[11] = a2;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_protocol_instance_set_reserve_footer_size";
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
        v15 = "nw_protocol_instance_set_reserve_footer_size";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null instance", buf, 0xCu);
      }
    }

    else if (v12 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v9 = type;
      v10 = os_log_type_enabled(v6, type);
      if (backtrace_string)
      {
        if (v10)
        {
          *buf = 136446466;
          v15 = "nw_protocol_instance_set_reserve_footer_size";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_protocol_instance_set_reserve_footer_size";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null instance, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_protocol_instance_set_reserve_footer_size";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

  v3 = 0;
LABEL_3:
}

void nw_protocol_instance_set_maximum_content_size(void *a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    v3[12] = a2;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_protocol_instance_set_maximum_content_size";
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
        v15 = "nw_protocol_instance_set_maximum_content_size";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null instance", buf, 0xCu);
      }
    }

    else if (v12 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v9 = type;
      v10 = os_log_type_enabled(v6, type);
      if (backtrace_string)
      {
        if (v10)
        {
          *buf = 136446466;
          v15 = "nw_protocol_instance_set_maximum_content_size";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_protocol_instance_set_maximum_content_size";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null instance, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_protocol_instance_set_maximum_content_size";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

  v3 = 0;
LABEL_3:
}

void nw_protocol_instance_set_is_datagram(void *a1, int a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    if (a2)
    {
      v4 = 0x80;
    }

    else
    {
      v4 = 0;
    }

    v3[410] = v4 & 0x80 | v3[410] & 0x7F;
    goto LABEL_6;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_protocol_instance_set_is_datagram";
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
        v16 = "nw_protocol_instance_set_is_datagram";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null instance", buf, 0xCu);
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
          v16 = "nw_protocol_instance_set_is_datagram";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_23;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_protocol_instance_set_is_datagram";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null instance, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_protocol_instance_set_is_datagram";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_23:
  if (v6)
  {
    free(v6);
  }

  v3 = 0;
LABEL_6:
}

void nw_protocol_instance_notify_updated_internal(void *a1, unsigned int a2, int a3)
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = v5;
  if (!v5)
  {
    v23 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_instance_notify_updated_internal";
    v24 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v37 = 0;
    if (__nwlog_fault(v24, type, &v37))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v25 = __nwlog_obj();
        v26 = type[0];
        if (os_log_type_enabled(v25, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_instance_notify_updated_internal";
          _os_log_impl(&dword_181A37000, v25, v26, "%{public}s called with null instance", buf, 0xCu);
        }
      }

      else if (v37 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v25 = __nwlog_obj();
        v30 = type[0];
        v31 = os_log_type_enabled(v25, type[0]);
        if (backtrace_string)
        {
          if (v31)
          {
            *buf = 136446466;
            *&buf[4] = "nw_protocol_instance_notify_updated_internal";
            v41 = 2082;
            v42 = backtrace_string;
            _os_log_impl(&dword_181A37000, v25, v30, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_57;
        }

        if (v31)
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_instance_notify_updated_internal";
          _os_log_impl(&dword_181A37000, v25, v30, "%{public}s called with null instance, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v25 = __nwlog_obj();
        v32 = type[0];
        if (os_log_type_enabled(v25, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_instance_notify_updated_internal";
          _os_log_impl(&dword_181A37000, v25, v32, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_57:
    if (v24)
    {
      free(v24);
    }

    goto LABEL_33;
  }

  v7 = v5[15];
  if (v7)
  {
    v8 = v7;
    v9 = v8;
    if ((v8[19] & 8) == 0)
    {
      dispatch_assert_queue_V2(v8[1]);
    }
  }

  if ((v6[413] & 0x80000000) == 0 && gLogDatapath == 1)
  {
    v27 = __nwlog_obj();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      if (a2 > 0x1E)
      {
        v28 = "unknown";
      }

      else
      {
        v28 = off_1E6A33500[a2];
      }

      *buf = 136446978;
      *&buf[4] = "nw_protocol_instance_notify_updated_internal";
      v41 = 2082;
      v42 = v6 + 415;
      v43 = 2080;
      v44 = " ";
      v45 = 2082;
      v46 = v28;
      _os_log_impl(&dword_181A37000, v27, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sNotify updated %{public}s", buf, 0x2Au);
    }
  }

  if (*(*(v6 + 1) + 64) == 3)
  {
    v10 = *(v6 + 29);
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = ___ZL44nw_protocol_instance_notify_updated_internalP31NWConcrete_nw_protocol_instance31nw_protocol_notification_type_tb_block_invoke;
    v33[3] = &unk_1E6A2CFA8;
    v36 = a3;
    v34 = v6;
    v35 = a2;
    nw_hash_table_apply(v10, v33);

    goto LABEL_33;
  }

  if (!a3 || v6[410] < 0)
  {
    v11 = *(v6 - 6);
    if (v11)
    {
      v12 = v11[3];
      if (v12)
      {
        v13 = *(v12 + 160);
        if (v13)
        {
          v14 = v11[5];
          v15 = *(v6 - 6);
          if (v14 != &nw_protocol_ref_counted_handle)
          {
            if (v14 != &nw_protocol_ref_counted_additional_handle)
            {
              LOBYTE(v15) = 0;
              v16 = 1;
              goto LABEL_22;
            }

            v15 = v11[8];
            if (!v15)
            {
              v16 = 1;
LABEL_22:
              *buf = v11;
              buf[8] = v15;
              v18 = *(v6 - 7);
              v19 = v6 - 96;
              if (v18 == &nw_protocol_ref_counted_handle || v18 == &nw_protocol_ref_counted_additional_handle && (v19 = *(v6 - 4)) != 0)
              {
                v22 = *(v19 + 11);
                v21 = 0;
                if (v22)
                {
                  *(v19 + 11) = v22 + 1;
                }

                v20 = -1;
              }

              else
              {
                v20 = 0;
                v21 = 1;
              }

              *type = v6 - 96;
              v39 = v20;
              v13();
              if ((v21 & 1) == 0)
              {
                nw::release_if_needed<nw_protocol *>(type);
              }

              if ((v16 & 1) == 0)
              {
                nw::release_if_needed<nw_protocol *>(buf);
              }

              goto LABEL_33;
            }
          }

          v17 = *(v15 + 88);
          v16 = 0;
          if (v17)
          {
            *(v15 + 88) = v17 + 1;
          }

          LOBYTE(v15) = -1;
          goto LABEL_22;
        }
      }
    }
  }

LABEL_33:
}