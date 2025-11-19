uint64_t nw_browse_descriptor_copy_custom_service(void *a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_browse_descriptor_copy_custom_service";
    v13 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (__nwlog_fault(v13, &type, &v27))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v14 = __nwlog_obj();
        v15 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          v30 = "nw_browse_descriptor_copy_custom_service";
          _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null descriptor", buf, 0xCu);
        }

        goto LABEL_47;
      }

      if (v27 != 1)
      {
        v14 = __nwlog_obj();
        v25 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          v30 = "nw_browse_descriptor_copy_custom_service";
          _os_log_impl(&dword_181A37000, v14, v25, "%{public}s called with null descriptor, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_47;
      }

      backtrace_string = __nw_create_backtrace_string();
      v14 = __nwlog_obj();
      v19 = type;
      v20 = os_log_type_enabled(v14, type);
      if (!backtrace_string)
      {
        if (v20)
        {
          *buf = 136446210;
          v30 = "nw_browse_descriptor_copy_custom_service";
          _os_log_impl(&dword_181A37000, v14, v19, "%{public}s called with null descriptor, no backtrace", buf, 0xCu);
        }

        goto LABEL_47;
      }

      if (v20)
      {
        *buf = 136446466;
        v30 = "nw_browse_descriptor_copy_custom_service";
        v31 = 2082;
        v32 = backtrace_string;
        _os_log_impl(&dword_181A37000, v14, v19, "%{public}s called with null descriptor, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_33:

      free(backtrace_string);
    }

LABEL_48:
    if (v13)
    {
      free(v13);
    }

    v8 = 0;
    goto LABEL_13;
  }

  if (!a2)
  {
    v16 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_browse_descriptor_copy_custom_service";
    v13 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (__nwlog_fault(v13, &type, &v27))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v14 = __nwlog_obj();
        v17 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          v30 = "nw_browse_descriptor_copy_custom_service";
          _os_log_impl(&dword_181A37000, v14, v17, "%{public}s called with null out_custom_service_length", buf, 0xCu);
        }

LABEL_47:

        goto LABEL_48;
      }

      if (v27 != 1)
      {
        v14 = __nwlog_obj();
        v26 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          v30 = "nw_browse_descriptor_copy_custom_service";
          _os_log_impl(&dword_181A37000, v14, v26, "%{public}s called with null out_custom_service_length, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_47;
      }

      backtrace_string = __nw_create_backtrace_string();
      v14 = __nwlog_obj();
      v21 = type;
      v22 = os_log_type_enabled(v14, type);
      if (!backtrace_string)
      {
        if (v22)
        {
          *buf = 136446210;
          v30 = "nw_browse_descriptor_copy_custom_service";
          _os_log_impl(&dword_181A37000, v14, v21, "%{public}s called with null out_custom_service_length, no backtrace", buf, 0xCu);
        }

        goto LABEL_47;
      }

      if (v22)
      {
        *buf = 136446466;
        v30 = "nw_browse_descriptor_copy_custom_service";
        v31 = 2082;
        v32 = backtrace_string;
        _os_log_impl(&dword_181A37000, v14, v21, "%{public}s called with null out_custom_service_length, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_33;
    }

    goto LABEL_48;
  }

  if (!v3[17] || !v3[16])
  {
    v8 = 0;
    *a2 = 0;
    goto LABEL_13;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v5 = gLogObj;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(v4 + 16);
    *buf = 136446466;
    v30 = "nw_browse_descriptor_copy_custom_service";
    v31 = 2048;
    v32 = v6;
    _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_INFO, "%{public}s Copying custom service (%zu bytes)", buf, 0x16u);
  }

  v7 = *(v4 + 16);
  if (!v7)
  {
    v23 = __nwlog_obj();
    os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    *buf = 136446210;
    v30 = "nw_browse_descriptor_copy_custom_service";
    v24 = _os_log_send_and_compose_impl();

    result = __nwlog_should_abort(v24);
    if (result)
    {
      goto LABEL_51;
    }

    free(v24);
    v7 = 0;
  }

  v8 = malloc_type_malloc(v7, 0x846D4BDCuLL);
  if (v8)
  {
LABEL_11:
    memcpy(v8, *(v4 + 17), *(v4 + 16));
    *a2 = *(v4 + 16);
LABEL_13:

    return v8;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v9 = gLogObj;
  os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
  *buf = 136446210;
  v30 = "nw_browse_descriptor_copy_custom_service";
  v10 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v10);
  if (!result)
  {
    free(v10);
    goto LABEL_11;
  }

LABEL_51:
  __break(1u);
  return result;
}

uint64_t nw_browse_descriptor_get_sign_results(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = (v1[144] >> 1) & 1;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_browse_descriptor_get_sign_results";
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
        v15 = "nw_browse_descriptor_get_sign_results";
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
          v15 = "nw_browse_descriptor_get_sign_results";
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
        v15 = "nw_browse_descriptor_get_sign_results";
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
        v15 = "nw_browse_descriptor_get_sign_results";
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

BOOL nw_browse_descriptor_get_include_txt_record(nw_browse_descriptor_t descriptor)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = descriptor;
  if (v1)
  {
    v2 = v1[18].isa & 1;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_browse_descriptor_get_include_txt_record";
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
        v15 = "nw_browse_descriptor_get_include_txt_record";
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
          v15 = "nw_browse_descriptor_get_include_txt_record";
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
        v15 = "nw_browse_descriptor_get_include_txt_record";
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
        v15 = "nw_browse_descriptor_get_include_txt_record";
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

BOOL nw_browse_descriptor_is_custom_type(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1[2] > 0x3E7u;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_browse_descriptor_is_custom_type";
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
        v15 = "nw_browse_descriptor_is_custom_type";
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
          v15 = "nw_browse_descriptor_is_custom_type";
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
        v15 = "nw_browse_descriptor_is_custom_type";
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
        v15 = "nw_browse_descriptor_is_custom_type";
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

void nw_browse_descriptor_set_rssi_threshold(void *a1, int a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_browse_descriptor_set_rssi_threshold";
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (__nwlog_fault(v6, &type, &v19))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v7 = __nwlog_obj();
        v14 = type;
        if (os_log_type_enabled(v7, type))
        {
          *buf = 136446210;
          v22 = "nw_browse_descriptor_set_rssi_threshold";
          _os_log_impl(&dword_181A37000, v7, v14, "%{public}s called with null descriptor", buf, 0xCu);
        }

        goto LABEL_20;
      }

      if (v19 != 1)
      {
        v7 = __nwlog_obj();
        v18 = type;
        if (os_log_type_enabled(v7, type))
        {
          *buf = 136446210;
          v22 = "nw_browse_descriptor_set_rssi_threshold";
          _os_log_impl(&dword_181A37000, v7, v18, "%{public}s called with null descriptor, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_20;
      }

      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v16 = type;
      v17 = os_log_type_enabled(v7, type);
      if (!backtrace_string)
      {
        if (v17)
        {
          *buf = 136446210;
          v22 = "nw_browse_descriptor_set_rssi_threshold";
          _os_log_impl(&dword_181A37000, v7, v16, "%{public}s called with null descriptor, no backtrace", buf, 0xCu);
        }

        goto LABEL_20;
      }

      if (v17)
      {
        *buf = 136446466;
        v22 = "nw_browse_descriptor_set_rssi_threshold";
        v23 = 2082;
        v24 = backtrace_string;
        _os_log_impl(&dword_181A37000, v7, v16, "%{public}s called with null descriptor, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

LABEL_21:
    if (!v6)
    {
      goto LABEL_23;
    }

LABEL_22:
    free(v6);
    goto LABEL_23;
  }

  if (*(v3 + 2) == 2)
  {
    *(v3 + 25) = a2;
    goto LABEL_23;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v5 = gLogObj;
  *buf = 136446210;
  v22 = "nw_browse_descriptor_set_rssi_threshold";
  v6 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (!__nwlog_fault(v6, &type, &v19))
  {
    goto LABEL_21;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    v8 = type;
    if (os_log_type_enabled(v7, type))
    {
      *buf = 136446210;
      v22 = "nw_browse_descriptor_set_rssi_threshold";
      _os_log_impl(&dword_181A37000, v7, v8, "%{public}s Browse descriptor not of type application service", buf, 0xCu);
    }

LABEL_20:

    goto LABEL_21;
  }

  if (v19 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    v12 = type;
    if (os_log_type_enabled(v7, type))
    {
      *buf = 136446210;
      v22 = "nw_browse_descriptor_set_rssi_threshold";
      _os_log_impl(&dword_181A37000, v7, v12, "%{public}s Browse descriptor not of type application service, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_20;
  }

  v9 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v7 = gLogObj;
  v10 = type;
  v11 = os_log_type_enabled(v7, type);
  if (!v9)
  {
    if (v11)
    {
      *buf = 136446210;
      v22 = "nw_browse_descriptor_set_rssi_threshold";
      _os_log_impl(&dword_181A37000, v7, v10, "%{public}s Browse descriptor not of type application service, no backtrace", buf, 0xCu);
    }

    goto LABEL_20;
  }

  if (v11)
  {
    *buf = 136446466;
    v22 = "nw_browse_descriptor_set_rssi_threshold";
    v23 = 2082;
    v24 = v9;
    _os_log_impl(&dword_181A37000, v7, v10, "%{public}s Browse descriptor not of type application service, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v9);
  if (v6)
  {
    goto LABEL_22;
  }

LABEL_23:
}

uint64_t nw_browse_descriptor_get_predicate(void *a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_browse_descriptor_get_predicate";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v9, &type, &v21))
    {
      goto LABEL_42;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v24 = "nw_browse_descriptor_get_predicate";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null descriptor", buf, 0xCu);
      }

      goto LABEL_41;
    }

    if (v21 != 1)
    {
      v10 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v24 = "nw_browse_descriptor_get_predicate";
        _os_log_impl(&dword_181A37000, v10, v19, "%{public}s called with null descriptor, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_41;
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
        v24 = "nw_browse_descriptor_get_predicate";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null descriptor, no backtrace", buf, 0xCu);
      }

      goto LABEL_41;
    }

    if (v16)
    {
      *buf = 136446466;
      v24 = "nw_browse_descriptor_get_predicate";
      v25 = 2082;
      v26 = backtrace_string;
      _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null descriptor, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_29;
  }

  if (!a2)
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_browse_descriptor_get_predicate";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v9, &type, &v21))
    {
      goto LABEL_42;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v24 = "nw_browse_descriptor_get_predicate";
        _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null predicate_len", buf, 0xCu);
      }

LABEL_41:

LABEL_42:
      if (v9)
      {
        free(v9);
      }

      goto LABEL_8;
    }

    if (v21 != 1)
    {
      v10 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v24 = "nw_browse_descriptor_get_predicate";
        _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null predicate_len, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_41;
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
        v24 = "nw_browse_descriptor_get_predicate";
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null predicate_len, no backtrace", buf, 0xCu);
      }

      goto LABEL_41;
    }

    if (v18)
    {
      *buf = 136446466;
      v24 = "nw_browse_descriptor_get_predicate";
      v25 = 2082;
      v26 = backtrace_string;
      _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null predicate_len, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_29:

    free(backtrace_string);
    goto LABEL_42;
  }

  *a2 = 0;
  if (*(v3 + 2) != 2)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446210;
      v24 = "nw_browse_descriptor_get_predicate";
      _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEBUG, "%{public}s Browse descriptor not of type application service", buf, 0xCu);
    }

LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

  *a2 = *(v3 + 15);
  v5 = *(v3 + 14);
LABEL_9:

  return v5;
}

uint64_t nw_browse_descriptor_get_bundle_id(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_browse_descriptor_get_bundle_id";
    v5 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (__nwlog_fault(v5, &type, &v19))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v6 = __nwlog_obj();
        v14 = type;
        if (os_log_type_enabled(v6, type))
        {
          *buf = 136446210;
          v22 = "nw_browse_descriptor_get_bundle_id";
          _os_log_impl(&dword_181A37000, v6, v14, "%{public}s called with null descriptor", buf, 0xCu);
        }

LABEL_20:

        goto LABEL_21;
      }

      if (v19 != 1)
      {
        v6 = __nwlog_obj();
        v18 = type;
        if (os_log_type_enabled(v6, type))
        {
          *buf = 136446210;
          v22 = "nw_browse_descriptor_get_bundle_id";
          _os_log_impl(&dword_181A37000, v6, v18, "%{public}s called with null descriptor, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_20;
      }

      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v16 = type;
      v17 = os_log_type_enabled(v6, type);
      if (!backtrace_string)
      {
        if (v17)
        {
          *buf = 136446210;
          v22 = "nw_browse_descriptor_get_bundle_id";
          _os_log_impl(&dword_181A37000, v6, v16, "%{public}s called with null descriptor, no backtrace", buf, 0xCu);
        }

        goto LABEL_20;
      }

      if (v17)
      {
        *buf = 136446466;
        v22 = "nw_browse_descriptor_get_bundle_id";
        v23 = 2082;
        v24 = backtrace_string;
        _os_log_impl(&dword_181A37000, v6, v16, "%{public}s called with null descriptor, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

LABEL_21:
    if (!v5)
    {
LABEL_23:
      v3 = 0;
      goto LABEL_24;
    }

LABEL_22:
    free(v5);
    goto LABEL_23;
  }

  if (*(v1 + 2) != 2)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    *buf = 136446210;
    v22 = "nw_browse_descriptor_get_bundle_id";
    v5 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v5, &type, &v19))
    {
      goto LABEL_21;
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
        v22 = "nw_browse_descriptor_get_bundle_id";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s Browse descriptor not of type application service", buf, 0xCu);
      }
    }

    else if (v19 == 1)
    {
      v8 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      v9 = type;
      v10 = os_log_type_enabled(v6, type);
      if (v8)
      {
        if (v10)
        {
          *buf = 136446466;
          v22 = "nw_browse_descriptor_get_bundle_id";
          v23 = 2082;
          v24 = v8;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s Browse descriptor not of type application service, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v8);
        if (!v5)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }

      if (v10)
      {
        *buf = 136446210;
        v22 = "nw_browse_descriptor_get_bundle_id";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s Browse descriptor not of type application service, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v22 = "nw_browse_descriptor_get_bundle_id";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s Browse descriptor not of type application service, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_20;
  }

  v3 = *(v1 + 10);
LABEL_24:

  return v3;
}

uint64_t __nw_parameters_copy_required_netagent_domains_block_invoke(uint64_t a1, char *string)
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

uint64_t __nw_parameters_copy_required_netagent_types_block_invoke(uint64_t a1, uint64_t a2, const char *a3)
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

void nw_browser_set_browse_results_changed_handler(nw_browser_t browser, nw_browser_browse_results_changed_handler_t handler)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = browser;
  v4 = handler;
  if (v3)
  {
    os_unfair_lock_lock(&v3[1]);
    v5 = _Block_copy(v4);
    isa = v3[7].isa;
    v3[7].isa = v5;

    os_unfair_lock_unlock(&v3[1]);
    goto LABEL_3;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  v18 = "nw_browser_set_browse_results_changed_handler";
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
        v18 = "nw_browser_set_browse_results_changed_handler";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null browser", buf, 0xCu);
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
          v18 = "nw_browser_set_browse_results_changed_handler";
          v19 = 2082;
          v20 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null browser, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v13)
      {
        *buf = 136446210;
        v18 = "nw_browser_set_browse_results_changed_handler";
        _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null browser, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v18 = "nw_browser_set_browse_results_changed_handler";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null browser, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v8)
  {
    free(v8);
  }

LABEL_3:
}

void nw_browse_descriptor_set_device_types(void *a1, int a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_browse_descriptor_set_device_types";
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (__nwlog_fault(v6, &type, &v19))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v7 = __nwlog_obj();
        v14 = type;
        if (os_log_type_enabled(v7, type))
        {
          *buf = 136446210;
          v22 = "nw_browse_descriptor_set_device_types";
          _os_log_impl(&dword_181A37000, v7, v14, "%{public}s called with null descriptor", buf, 0xCu);
        }

        goto LABEL_20;
      }

      if (v19 != 1)
      {
        v7 = __nwlog_obj();
        v18 = type;
        if (os_log_type_enabled(v7, type))
        {
          *buf = 136446210;
          v22 = "nw_browse_descriptor_set_device_types";
          _os_log_impl(&dword_181A37000, v7, v18, "%{public}s called with null descriptor, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_20;
      }

      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v16 = type;
      v17 = os_log_type_enabled(v7, type);
      if (!backtrace_string)
      {
        if (v17)
        {
          *buf = 136446210;
          v22 = "nw_browse_descriptor_set_device_types";
          _os_log_impl(&dword_181A37000, v7, v16, "%{public}s called with null descriptor, no backtrace", buf, 0xCu);
        }

        goto LABEL_20;
      }

      if (v17)
      {
        *buf = 136446466;
        v22 = "nw_browse_descriptor_set_device_types";
        v23 = 2082;
        v24 = backtrace_string;
        _os_log_impl(&dword_181A37000, v7, v16, "%{public}s called with null descriptor, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

LABEL_21:
    if (!v6)
    {
      goto LABEL_23;
    }

LABEL_22:
    free(v6);
    goto LABEL_23;
  }

  if (*(v3 + 2) == 2)
  {
    *(v3 + 22) = a2;
    goto LABEL_23;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v5 = gLogObj;
  *buf = 136446210;
  v22 = "nw_browse_descriptor_set_device_types";
  v6 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (!__nwlog_fault(v6, &type, &v19))
  {
    goto LABEL_21;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    v8 = type;
    if (os_log_type_enabled(v7, type))
    {
      *buf = 136446210;
      v22 = "nw_browse_descriptor_set_device_types";
      _os_log_impl(&dword_181A37000, v7, v8, "%{public}s Browse descriptor not of type application service", buf, 0xCu);
    }

LABEL_20:

    goto LABEL_21;
  }

  if (v19 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    v12 = type;
    if (os_log_type_enabled(v7, type))
    {
      *buf = 136446210;
      v22 = "nw_browse_descriptor_set_device_types";
      _os_log_impl(&dword_181A37000, v7, v12, "%{public}s Browse descriptor not of type application service, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_20;
  }

  v9 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v7 = gLogObj;
  v10 = type;
  v11 = os_log_type_enabled(v7, type);
  if (!v9)
  {
    if (v11)
    {
      *buf = 136446210;
      v22 = "nw_browse_descriptor_set_device_types";
      _os_log_impl(&dword_181A37000, v7, v10, "%{public}s Browse descriptor not of type application service, no backtrace", buf, 0xCu);
    }

    goto LABEL_20;
  }

  if (v11)
  {
    *buf = 136446466;
    v22 = "nw_browse_descriptor_set_device_types";
    v23 = 2082;
    v24 = v9;
    _os_log_impl(&dword_181A37000, v7, v10, "%{public}s Browse descriptor not of type application service, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v9);
  if (v6)
  {
    goto LABEL_22;
  }

LABEL_23:
}

uint64_t nw_browse_descriptor_get_browse_scope(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_browse_descriptor_get_browse_scope";
    v5 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (__nwlog_fault(v5, &type, &v19))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v6 = __nwlog_obj();
        v14 = type;
        if (os_log_type_enabled(v6, type))
        {
          *buf = 136446210;
          v22 = "nw_browse_descriptor_get_browse_scope";
          _os_log_impl(&dword_181A37000, v6, v14, "%{public}s called with null descriptor", buf, 0xCu);
        }

LABEL_20:

        goto LABEL_21;
      }

      if (v19 != 1)
      {
        v6 = __nwlog_obj();
        v18 = type;
        if (os_log_type_enabled(v6, type))
        {
          *buf = 136446210;
          v22 = "nw_browse_descriptor_get_browse_scope";
          _os_log_impl(&dword_181A37000, v6, v18, "%{public}s called with null descriptor, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_20;
      }

      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v16 = type;
      v17 = os_log_type_enabled(v6, type);
      if (!backtrace_string)
      {
        if (v17)
        {
          *buf = 136446210;
          v22 = "nw_browse_descriptor_get_browse_scope";
          _os_log_impl(&dword_181A37000, v6, v16, "%{public}s called with null descriptor, no backtrace", buf, 0xCu);
        }

        goto LABEL_20;
      }

      if (v17)
      {
        *buf = 136446466;
        v22 = "nw_browse_descriptor_get_browse_scope";
        v23 = 2082;
        v24 = backtrace_string;
        _os_log_impl(&dword_181A37000, v6, v16, "%{public}s called with null descriptor, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

LABEL_21:
    if (!v5)
    {
LABEL_23:
      v3 = 0;
      goto LABEL_24;
    }

LABEL_22:
    free(v5);
    goto LABEL_23;
  }

  if (v1[2] != 2)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    *buf = 136446210;
    v22 = "nw_browse_descriptor_get_browse_scope";
    v5 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v5, &type, &v19))
    {
      goto LABEL_21;
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
        v22 = "nw_browse_descriptor_get_browse_scope";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s Browse descriptor not of type application service", buf, 0xCu);
      }
    }

    else if (v19 == 1)
    {
      v8 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      v9 = type;
      v10 = os_log_type_enabled(v6, type);
      if (v8)
      {
        if (v10)
        {
          *buf = 136446466;
          v22 = "nw_browse_descriptor_get_browse_scope";
          v23 = 2082;
          v24 = v8;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s Browse descriptor not of type application service, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v8);
        if (!v5)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }

      if (v10)
      {
        *buf = 136446210;
        v22 = "nw_browse_descriptor_get_browse_scope";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s Browse descriptor not of type application service, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v22 = "nw_browse_descriptor_get_browse_scope";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s Browse descriptor not of type application service, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_20;
  }

  v3 = v1[23];
LABEL_24:

  return v3;
}

uint64_t nw_browse_descriptor_get_predicate_length(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v17 = "nw_browse_descriptor_get_predicate_length";
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
          v17 = "nw_browse_descriptor_get_predicate_length";
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null descriptor", buf, 0xCu);
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
            v17 = "nw_browse_descriptor_get_predicate_length";
            v18 = 2082;
            v19 = backtrace_string;
            _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null descriptor, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_25;
        }

        if (v12)
        {
          *buf = 136446210;
          v17 = "nw_browse_descriptor_get_predicate_length";
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null descriptor, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v8 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446210;
          v17 = "nw_browse_descriptor_get_predicate_length";
          _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null descriptor, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_25:
    if (v7)
    {
      free(v7);
    }

    goto LABEL_7;
  }

  if (*(v1 + 2) != 2)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446210;
      v17 = "nw_browse_descriptor_get_predicate_length";
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEBUG, "%{public}s Browse descriptor not of type application service", buf, 0xCu);
    }

LABEL_7:
    v3 = 0;
    goto LABEL_8;
  }

  v3 = *(v1 + 15);
LABEL_8:

  return v3;
}

void nw_browser_set_state_locked(void *a1, signed int a2, void *a3)
{
  v62 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  v7 = v5[18];
  if (v7 == a2)
  {
    goto LABEL_54;
  }

  if (a2 - 1) <= 2 && v7 == 4 || (a2 == 4 ? (v12 = v7 >= 2) : (v12 = 1), v12 ? (v13 = 0) : (v13 = 1), v7 < a2 || (v13))
  {
    if (!nw_parameters_get_logging_disabled(*(v5 + 5)))
    {
      if (__nwlog_browser_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_browser_log::onceToken, &__block_literal_global_20_47423);
      }

      v8 = gbrowserLogObj;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v5[48];
        v10 = v5[18];
        if (v10 > 4)
        {
          v11 = "<unknown>";
        }

        else
        {
          v11 = off_1E6A35FE0[v10];
        }

        v18 = off_1E6A35FE0[a2];
        *buf = 136446978;
        v53 = "nw_browser_set_state_locked";
        v54 = 1024;
        v55 = v9;
        v56 = 2082;
        v57 = v11;
        v58 = 2082;
        v59 = v18;
        _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s [B%u] state changed: %{public}s -> %{public}s", buf, 0x26u);
      }
    }

    v5[18] = a2;
    objc_storeStrong(v5 + 10, a3);
    v19 = *(v5 + 8);
    if (v19 && *(v5 + 2))
    {
      v20 = _Block_copy(v19);
      v21 = *(v5 + 2);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = ___ZL27nw_browser_set_state_lockedP21NWConcrete_nw_browser18nw_browser_state_tPU22objcproto11OS_nw_error8NSObject_block_invoke;
      block[3] = &unk_1E6A36198;
      v48 = v20;
      v49 = a2;
      v46 = v6;
      v47 = v5;
      v22 = v20;
      dispatch_async(v21, block);
    }

    goto LABEL_54;
  }

  if (nw_parameters_get_logging_disabled(*(v5 + 5)))
  {
    goto LABEL_54;
  }

  if (__nwlog_browser_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_browser_log::onceToken, &__block_literal_global_20_47423);
  }

  v14 = gbrowserLogObj;
  v15 = v5[48];
  v16 = v5[18];
  if (v16 > 4)
  {
    v17 = "<unknown>";
  }

  else
  {
    v17 = off_1E6A35FE0[v16];
  }

  v23 = off_1E6A35FE0[a2];
  *buf = 136446978;
  v53 = "nw_browser_set_state_locked";
  v54 = 1024;
  v55 = v15;
  v56 = 2082;
  v57 = v17;
  v58 = 2082;
  v59 = v23;
  v24 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v50 = 0;
  if (__nwlog_fault(v24, &type, &v50))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      if (__nwlog_browser_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_browser_log::onceToken, &__block_literal_global_20_47423);
      }

      v25 = gbrowserLogObj;
      v26 = type;
      if (os_log_type_enabled(v25, type))
      {
        v27 = v5[48];
        v28 = v5[18];
        if (v28 > 4)
        {
          v29 = "<unknown>";
        }

        else
        {
          v29 = off_1E6A35FE0[v28];
        }

        *buf = 136446978;
        v53 = "nw_browser_set_state_locked";
        v54 = 1024;
        v55 = v27;
        v56 = 2082;
        v57 = v29;
        v58 = 2082;
        v59 = v23;
        _os_log_impl(&dword_181A37000, v25, v26, "%{public}s [B%u] state changed: invalid transition %{public}s -> %{public}s", buf, 0x26u);
      }
    }

    else if (v50 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      if (backtrace_string)
      {
        v31 = backtrace_string;
        if (__nwlog_browser_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_browser_log::onceToken, &__block_literal_global_20_47423);
        }

        v32 = gbrowserLogObj;
        v33 = type;
        if (os_log_type_enabled(v32, type))
        {
          v34 = v5[48];
          v35 = v5[18];
          if (v35 > 4)
          {
            v36 = "<unknown>";
          }

          else
          {
            v36 = off_1E6A35FE0[v35];
          }

          *buf = 136447234;
          v53 = "nw_browser_set_state_locked";
          v54 = 1024;
          v55 = v34;
          v56 = 2082;
          v57 = v36;
          v58 = 2082;
          v59 = v23;
          v60 = 2082;
          v61 = v31;
          _os_log_impl(&dword_181A37000, v32, v33, "%{public}s [B%u] state changed: invalid transition %{public}s -> %{public}s, dumping backtrace:%{public}s", buf, 0x30u);
        }

        free(v31);
        if (v24)
        {
          goto LABEL_53;
        }

        goto LABEL_54;
      }

      if (__nwlog_browser_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_browser_log::onceToken, &__block_literal_global_20_47423);
      }

      v25 = gbrowserLogObj;
      v41 = type;
      if (os_log_type_enabled(v25, type))
      {
        v42 = v5[48];
        v43 = v5[18];
        if (v43 > 4)
        {
          v44 = "<unknown>";
        }

        else
        {
          v44 = off_1E6A35FE0[v43];
        }

        *buf = 136446978;
        v53 = "nw_browser_set_state_locked";
        v54 = 1024;
        v55 = v42;
        v56 = 2082;
        v57 = v44;
        v58 = 2082;
        v59 = v23;
        _os_log_impl(&dword_181A37000, v25, v41, "%{public}s [B%u] state changed: invalid transition %{public}s -> %{public}s, no backtrace", buf, 0x26u);
      }
    }

    else
    {
      if (__nwlog_browser_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_browser_log::onceToken, &__block_literal_global_20_47423);
      }

      v25 = gbrowserLogObj;
      v37 = type;
      if (os_log_type_enabled(v25, type))
      {
        v38 = v5[48];
        v39 = v5[18];
        if (v39 > 4)
        {
          v40 = "<unknown>";
        }

        else
        {
          v40 = off_1E6A35FE0[v39];
        }

        *buf = 136446978;
        v53 = "nw_browser_set_state_locked";
        v54 = 1024;
        v55 = v38;
        v56 = 2082;
        v57 = v40;
        v58 = 2082;
        v59 = v23;
        _os_log_impl(&dword_181A37000, v25, v37, "%{public}s [B%u] state changed: invalid transition %{public}s -> %{public}s, backtrace limit exceeded", buf, 0x26u);
      }
    }
  }

  if (v24)
  {
LABEL_53:
    free(v24);
  }

LABEL_54:
}

void nw_browser_update_path_browser_locked(NWConcrete_nw_browser *a1)
{
  v90 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = nw_dictionary_create();
    v3 = nw_dictionary_create();
    v4 = *(v1 + 13);
    if (v4)
    {
      v64[0] = MEMORY[0x1E69E9820];
      v64[1] = 3221225472;
      v64[2] = ___ZL37nw_browser_update_path_browser_lockedP21NWConcrete_nw_browser_block_invoke;
      v64[3] = &unk_1E6A35DB8;
      v65 = v1;
      v66 = v3;
      nw_dictionary_apply(v4, v64);
    }

    v62[0] = MEMORY[0x1E69E9820];
    v62[1] = 3221225472;
    v62[2] = ___ZL37nw_browser_update_path_browser_lockedP21NWConcrete_nw_browser_block_invoke_2;
    v62[3] = &unk_1E6A39A98;
    v5 = v1;
    v63 = v5;
    nw_dictionary_apply(v3, v62);
    v6 = v5[12];
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = ___ZL37nw_browser_update_path_browser_lockedP21NWConcrete_nw_browser_block_invoke_108;
    v59[3] = &unk_1E6A35DE0;
    v7 = v5;
    v60 = v7;
    v52 = v2;
    v61 = v52;
    nw_path_enumerate_browse_options(v6, v59);
    objc_storeStrong(v1 + 13, v2);
    v8 = nw_path_copy_discovered_endpoints(v5[12]);
    if (nw_browse_descriptor_get_type(v7[4]) != 2)
    {
      v56[0] = MEMORY[0x1E69E9820];
      v56[1] = 3221225472;
      v56[2] = ___ZL37nw_browser_update_path_browser_lockedP21NWConcrete_nw_browser_block_invoke_112;
      v56[3] = &unk_1E6A3CCB8;
      v14 = v7;
      v57 = v14;
      if (v8)
      {
        _nw_array_apply(v8, v56);
      }

      v15 = v14[17];
      v53[0] = MEMORY[0x1E69E9820];
      v53[1] = 3221225472;
      v53[2] = ___ZL37nw_browser_update_path_browser_lockedP21NWConcrete_nw_browser_block_invoke_115;
      v53[3] = &unk_1E6A35E80;
      v16 = v14;
      v54 = v16;
      v55 = v8;
      if (v15)
      {
        _nw_array_apply(v15, v53);
      }

      nw_browser_notify_browse_result_changes_locked(v16);

      goto LABEL_48;
    }

    v9 = v5[12];
    if (!v9)
    {
      goto LABEL_21;
    }

    if (v8)
    {
      if (_nw_array_get_count(v8))
      {
        goto LABEL_21;
      }

      v9 = v5[12];
    }

    v10 = _nw_path_copy_flows(v9);
    v11 = v10;
    if (v10)
    {
      *v86 = 0;
      *&v86[8] = v86;
      *&v86[16] = 0x3032000000;
      *&v86[24] = __Block_byref_object_copy__59106;
      *&v86[32] = __Block_byref_object_dispose__59107;
      v87 = 0;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = ___ZL37nw_browser_update_path_browser_lockedP21NWConcrete_nw_browser_block_invoke_110;
      aBlock[3] = &unk_1E6A39B60;
      aBlock[4] = v86;
      _nw_array_apply(v10, aBlock);
      if (*(*&v86[8] + 40))
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v12 = gLogObj;
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = *(*&v86[8] + 40);
          *buf = 136446466;
          *&buf[4] = "nw_browser_update_path_browser_locked";
          *&buf[12] = 2112;
          *&buf[14] = v13;
          _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_ERROR, "%{public}s Received browser %@", buf, 0x16u);
        }

        nw_browser_set_state_locked(v7, 2, *(*&v86[8] + 40));
        _Block_object_dispose(v86, 8);

LABEL_48:
        goto LABEL_49;
      }

      _Block_object_dispose(v86, 8);
    }

LABEL_21:
    v17 = v7;
    v50 = v8;
    v51 = _Block_copy(v17[7]);
    if (v51)
    {
      v18 = _nw_array_create();
      v71[0] = MEMORY[0x1E69E9820];
      v71[1] = 3221225472;
      v71[2] = ___ZL46nw_browser_app_svc_update_browse_result_lockedP21NWConcrete_nw_browserPU22objcproto11OS_nw_array8NSObject_block_invoke;
      v71[3] = &unk_1E6A3CCB8;
      v19 = v18;
      v72 = v19;
      v49 = v3;
      if (v50)
      {
        _nw_array_apply(v50, v71);
      }

      if (!nw_parameters_get_logging_disabled(v17[5]))
      {
        if (__nwlog_browser_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_browser_log::onceToken, &__block_literal_global_20_47423);
        }

        v20 = gbrowserLogObj;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          v21 = *(v17 + 48);
          if (v19)
          {
            count = _nw_array_get_count(v19);
          }

          else
          {
            count = 0;
          }

          *v86 = 136446978;
          *&v86[4] = "nw_browser_app_svc_update_browse_result_locked";
          *&v86[12] = 1024;
          *&v86[14] = v21;
          *&v86[18] = 2048;
          *&v86[20] = count;
          *&v86[28] = 2112;
          *&v86[30] = v19;
          _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_DEBUG, "%{public}s [B%u] discovered %zu endpoints: %@", v86, 0x26u);
        }
      }

      v23 = _nw_array_create();
      v24 = nw_parallel_array_create();
      v25 = v17[17];
      *v86 = MEMORY[0x1E69E9820];
      *&v86[8] = 3221225472;
      *&v86[16] = ___ZL46nw_browser_app_svc_update_browse_result_lockedP21NWConcrete_nw_browserPU22objcproto11OS_nw_array8NSObject_block_invoke_117;
      *&v86[24] = &unk_1E6A35ED0;
      v26 = v19;
      *&v86[32] = v26;
      v27 = v17;
      v87 = v27;
      v48 = v23;
      v88 = v48;
      v28 = v24;
      v89 = v28;
      if (v25)
      {
        _nw_array_apply(v25, v86);
      }

      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = ___ZL46nw_browser_app_svc_update_browse_result_lockedP21NWConcrete_nw_browserPU22objcproto11OS_nw_array8NSObject_block_invoke_121;
      v82 = &unk_1E6A3B418;
      v29 = v28;
      v83 = v29;
      v30 = v48;
      v84 = v30;
      v31 = v27;
      v85 = v31;
      if (v26)
      {
        _nw_array_apply(v26, buf);
      }

      v32 = v31[2];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = ___ZL46nw_browser_app_svc_update_browse_result_lockedP21NWConcrete_nw_browserPU22objcproto11OS_nw_array8NSObject_block_invoke_122;
      block[3] = &unk_1E6A39AE8;
      v33 = v29;
      v68 = v33;
      v34 = v31;
      v69 = v34;
      v70 = v51;
      dispatch_async(v32, block);
      v3 = v49;
      if (!nw_parameters_get_logging_disabled(v17[5]))
      {
        if (__nwlog_browser_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_browser_log::onceToken, &__block_literal_global_20_47423);
        }

        v35 = gbrowserLogObj;
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          v36 = *(v34 + 48);
          if (v30)
          {
            v37 = _nw_array_get_count(v30);
          }

          else
          {
            v37 = 0;
          }

          *v73 = 136446978;
          v74 = "nw_browser_app_svc_update_browse_result_locked";
          v75 = 1024;
          v76 = v36;
          v77 = 2048;
          v78 = v37;
          v79 = 2112;
          v80 = v30;
          _os_log_impl(&dword_181A37000, v35, OS_LOG_TYPE_DEBUG, "%{public}s [B%u] new_results %zu endpoints: %@", v73, 0x26u);
        }
      }

      v38 = v17[17];
      v17[17] = v30;
      v39 = v30;
    }

    goto LABEL_48;
  }

  v40 = __nwlog_obj();
  *v86 = 136446210;
  *&v86[4] = "nw_browser_update_path_browser_locked";
  v41 = _os_log_send_and_compose_impl();

  buf[0] = 16;
  LOBYTE(block[0]) = 0;
  if (__nwlog_fault(v41, buf, block))
  {
    if (buf[0] == 17)
    {
      v42 = __nwlog_obj();
      v43 = buf[0];
      if (os_log_type_enabled(v42, buf[0]))
      {
        *v86 = 136446210;
        *&v86[4] = "nw_browser_update_path_browser_locked";
        _os_log_impl(&dword_181A37000, v42, v43, "%{public}s called with null browser", v86, 0xCu);
      }
    }

    else if (LOBYTE(block[0]) == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v42 = __nwlog_obj();
      v45 = buf[0];
      v46 = os_log_type_enabled(v42, buf[0]);
      if (backtrace_string)
      {
        if (v46)
        {
          *v86 = 136446466;
          *&v86[4] = "nw_browser_update_path_browser_locked";
          *&v86[12] = 2082;
          *&v86[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v42, v45, "%{public}s called with null browser, dumping backtrace:%{public}s", v86, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_66;
      }

      if (v46)
      {
        *v86 = 136446210;
        *&v86[4] = "nw_browser_update_path_browser_locked";
        _os_log_impl(&dword_181A37000, v42, v45, "%{public}s called with null browser, no backtrace", v86, 0xCu);
      }
    }

    else
    {
      v42 = __nwlog_obj();
      v47 = buf[0];
      if (os_log_type_enabled(v42, buf[0]))
      {
        *v86 = 136446210;
        *&v86[4] = "nw_browser_update_path_browser_locked";
        _os_log_impl(&dword_181A37000, v42, v47, "%{public}s called with null browser, backtrace limit exceeded", v86, 0xCu);
      }
    }
  }

LABEL_66:
  if (v41)
  {
    free(v41);
  }

LABEL_49:
}

void ___ZL37nw_browser_update_path_browser_lockedP21NWConcrete_nw_browser_block_invoke_108(uint64_t a1, unsigned __int8 *uu)
{
  v23 = *MEMORY[0x1E69E9840];
  memset(out, 0, 37);
  uuid_unparse(uu, out);
  v4 = *(a1 + 32);
  v5 = *(v4 + 104);
  if (v5)
  {
    v6 = nw_dictionary_copy_value(v5, out);
    if (v6)
    {
      v7 = v6;
      goto LABEL_20;
    }

    v4 = *(a1 + 32);
  }

  flow_inner = nw_path_evaluator_create_flow_inner(*(v4 + 88), 0, 0, 1, 0, uu, 0, 0, 0, 0, 0);
  v7 = flow_inner;
  if (!flow_inner)
  {
    if (nw_parameters_get_logging_disabled(*(*(a1 + 32) + 40)))
    {
      goto LABEL_20;
    }

    if (__nwlog_browser_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_browser_log::onceToken, &__block_literal_global_20_47423);
    }

    v10 = gbrowserLogObj;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = *(*(a1 + 32) + 192);
      *buf = 136446466;
      v14 = "nw_browser_update_path_browser_locked_block_invoke";
      v15 = 1024;
      v16 = v12;
      _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_INFO, "%{public}s [B%u] Failed to add browser flow ID", buf, 0x12u);
    }

LABEL_19:

    goto LABEL_20;
  }

  v21 = 0uLL;
  v9 = flow_inner;
  if (!uuid_is_null(v9 + 32))
  {
    v21 = *(v9 + 2);
  }

  if (!nw_parameters_get_logging_disabled(*(*(a1 + 32) + 40)))
  {
    if (__nwlog_browser_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_browser_log::onceToken, &__block_literal_global_20_47423);
    }

    v10 = gbrowserLogObj;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = *(*(a1 + 32) + 192);
      *buf = 136446978;
      v14 = "nw_browser_update_path_browser_locked_block_invoke";
      v15 = 1024;
      v16 = v11;
      v17 = 1042;
      v18 = 16;
      v19 = 2098;
      v20 = &v21;
      _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_INFO, "%{public}s [B%u] Added browser flow ID %{public,uuid_t}.16P", buf, 0x22u);
    }

    goto LABEL_19;
  }

LABEL_20:
  nw_dictionary_set_value(*(a1 + 40), out, v7);
}

void ___ZL17nw_channel_createP10nw_contextPhjPvjbbPb_block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  memset(out, 0, 48);
  v2 = *(*(*(a1 + 32) + 8) + 24);
  v3 = *(v2 + 444);
  uuid_unparse((v2 + 88), out);
  snprintf(&out[36], 0xCuLL, "-%u", v3);
  v4 = *(*(*(*(a1 + 32) + 8) + 24) + 152);
  if (!v4 || *(v4 + 132) != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
    {
      v6 = *(*(*(*(a1 + 32) + 8) + 24) + 448);
      *buf = 136446722;
      v9 = "nw_channel_create_block_invoke";
      v10 = 2082;
      v11 = out;
      v12 = 1024;
      v13 = v6;
      _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_INFO, "%{public}s Channel destroyed with key: %{public}s and fd: %d", buf, 0x1Cu);
    }
  }

  os_channel_destroy();
  *(*(*(*(a1 + 32) + 8) + 24) + 136) = 0;
  *(*(*(*(a1 + 32) + 8) + 24) + 448) = -1;
  v7 = *(*(*(a1 + 32) + 8) + 24);
  if (v7)
  {
    os_release(v7);
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }
}

uint64_t nw_parallel_array_apply(void *a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v17 = "nw_parallel_array_apply";
    v4 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v14 = 0;
    if (!__nwlog_fault(v4, &type, &v14))
    {
      goto LABEL_48;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_48;
      }

      *buf = 136446210;
      v17 = "nw_parallel_array_apply";
      v7 = "%{public}s called with null parray";
    }

    else if (v14 == 1)
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
          v17 = "nw_parallel_array_apply";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null parray, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_48:
        if (!v4)
        {
          return 1;
        }

LABEL_49:
        free(v4);
        return 1;
      }

      if (!v9)
      {
        goto LABEL_48;
      }

      *buf = 136446210;
      v17 = "nw_parallel_array_apply";
      v7 = "%{public}s called with null parray, no backtrace";
    }

    else
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_48;
      }

      *buf = 136446210;
      v17 = "nw_parallel_array_apply";
      v7 = "%{public}s called with null parray, backtrace limit exceeded";
    }

    goto LABEL_47;
  }

  v2 = a1[3] - a1[2];
  if (v2 != a1[6] - a1[5])
  {
    __nwlog_obj();
    *buf = 136446210;
    v17 = "nw_parallel_array_apply";
    v4 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v14 = 0;
    if (!__nwlog_fault(v4, &type, &v14))
    {
      goto LABEL_48;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v14 != 1)
      {
        v5 = __nwlog_obj();
        v6 = type;
        if (!os_log_type_enabled(v5, type))
        {
          goto LABEL_48;
        }

        *buf = 136446210;
        v17 = "nw_parallel_array_apply";
        v7 = "%{public}s called with null (parray->vector1.size() == parray->vector2.size()), backtrace limit exceeded";
        goto LABEL_47;
      }

      v10 = __nw_create_backtrace_string();
      v5 = __nwlog_obj();
      v6 = type;
      v11 = os_log_type_enabled(v5, type);
      if (!v10)
      {
        if (!v11)
        {
          goto LABEL_48;
        }

        *buf = 136446210;
        v17 = "nw_parallel_array_apply";
        v7 = "%{public}s called with null (parray->vector1.size() == parray->vector2.size()), no backtrace";
        goto LABEL_47;
      }

      if (v11)
      {
        *buf = 136446466;
        v17 = "nw_parallel_array_apply";
        v18 = 2082;
        v19 = v10;
        v12 = "%{public}s called with null (parray->vector1.size() == parray->vector2.size()), dumping backtrace:%{public}s";
LABEL_32:
        _os_log_impl(&dword_181A37000, v5, v6, v12, buf, 0x16u);
      }

LABEL_33:
      free(v10);
      if (!v4)
      {
        return 1;
      }

      goto LABEL_49;
    }

    v5 = __nwlog_obj();
    v6 = type;
    if (!os_log_type_enabled(v5, type))
    {
      goto LABEL_48;
    }

    *buf = 136446210;
    v17 = "nw_parallel_array_apply";
    v7 = "%{public}s called with null (parray->vector1.size() == parray->vector2.size())";
LABEL_47:
    _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
    goto LABEL_48;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v17 = "nw_parallel_array_apply";
    v4 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v14 = 0;
    if (!__nwlog_fault(v4, &type, &v14))
    {
      goto LABEL_48;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_48;
      }

      *buf = 136446210;
      v17 = "nw_parallel_array_apply";
      v7 = "%{public}s called with null applier";
      goto LABEL_47;
    }

    if (v14 != 1)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_48;
      }

      *buf = 136446210;
      v17 = "nw_parallel_array_apply";
      v7 = "%{public}s called with null applier, backtrace limit exceeded";
      goto LABEL_47;
    }

    v10 = __nw_create_backtrace_string();
    v5 = __nwlog_obj();
    v6 = type;
    v13 = os_log_type_enabled(v5, type);
    if (!v10)
    {
      if (!v13)
      {
        goto LABEL_48;
      }

      *buf = 136446210;
      v17 = "nw_parallel_array_apply";
      v7 = "%{public}s called with null applier, no backtrace";
      goto LABEL_47;
    }

    if (v13)
    {
      *buf = 136446466;
      v17 = "nw_parallel_array_apply";
      v18 = 2082;
      v19 = v10;
      v12 = "%{public}s called with null applier, dumping backtrace:%{public}s";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  return nw_parallel_array_apply_with_range(a1, 0, v2 >> 3, a2);
}

uint64_t ___ZL46nw_browser_app_svc_update_browse_result_lockedP21NWConcrete_nw_browserPU22objcproto11OS_nw_array8NSObject_block_invoke_121(uint64_t *a1, uint64_t a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = nw_browse_result_create(v4);
  v6 = nw_endpoint_copy_txt_record(v4);
  v7 = v6;
  if (v6 && v6[2].isa >= 2)
  {
    nw_browse_result_set_txt_record_object(v5, v6);
  }

  nw_parallel_array_append(a1[4], 0, v5);
  v8 = a1[5];
  if (v8 && v5)
  {
    _nw_array_append(v8, v5);
  }

  if (!nw_parameters_get_logging_disabled(*(a1[6] + 40)))
  {
    changes = nw_browse_result_get_changes(0, v5);
    v10 = nw_browse_result_get_change_description(changes);
    if (!nw_parameters_get_logging_disabled(*(a1[6] + 40)))
    {
      if (__nwlog_browser_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_browser_log::onceToken, &__block_literal_global_20_47423);
      }

      v11 = gbrowserLogObj;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = *(a1[6] + 192);
        v14 = 136446978;
        v15 = "nw_browser_app_svc_update_browse_result_locked_block_invoke";
        v16 = 1024;
        v17 = v12;
        v18 = 2112;
        v19 = v5;
        v20 = 2082;
        v21 = v10;
        _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_INFO, "%{public}s [B%u] browse_result_added: (%@), %{public}s", &v14, 0x26u);
      }
    }

    if (v10)
    {
      free(v10);
    }
  }

  return 1;
}

uint64_t nw_parallel_array_create()
{
  objc_opt_class();
  result = _os_object_alloc();
  if (result)
  {
    goto LABEL_2;
  }

  v1 = __nwlog_obj();
  os_log_type_enabled(v1, OS_LOG_TYPE_ERROR);
  v2 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort(v2);
  if (!result)
  {
    free(v2);
    result = 0;
LABEL_2:
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *(result + 16) = 0u;
    atomic_store(0, (result + 64));
    return result;
  }

  __break(1u);
  return result;
}

uint64_t nw_path_copy_discovered_endpoints(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_path_copy_discovered_endpoints(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_copy_discovered_endpoints";
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
        v16 = "nw_path_copy_discovered_endpoints";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null path", buf, 0xCu);
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
          v16 = "nw_path_copy_discovered_endpoints";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_path_copy_discovered_endpoints";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_path_copy_discovered_endpoints";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
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

void nw_path_enumerate_browse_options(void *a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v23 = "nw_path_enumerate_browse_options";
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
        v23 = "nw_path_enumerate_browse_options";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null path", buf, 0xCu);
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
          v23 = "nw_path_enumerate_browse_options";
          v24 = 2082;
          v25 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
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
        v23 = "nw_path_enumerate_browse_options";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v23 = "nw_path_enumerate_browse_options";
        _os_log_impl(&dword_181A37000, v8, v18, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (v4)
  {
    _nw_path_enumerate_browse_options(v3, v4);
    goto LABEL_4;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v23 = "nw_path_enumerate_browse_options";
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
      v23 = "nw_path_enumerate_browse_options";
      _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null enumerate_block", buf, 0xCu);
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
      v23 = "nw_path_enumerate_browse_options";
      _os_log_impl(&dword_181A37000, v8, v19, "%{public}s called with null enumerate_block, backtrace limit exceeded", buf, 0xCu);
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
      v23 = "nw_path_enumerate_browse_options";
      _os_log_impl(&dword_181A37000, v8, v16, "%{public}s called with null enumerate_block, no backtrace", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v17)
  {
    *buf = 136446466;
    v23 = "nw_path_enumerate_browse_options";
    v24 = 2082;
    v25 = v15;
    _os_log_impl(&dword_181A37000, v8, v16, "%{public}s called with null enumerate_block, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v15);
  if (v7)
  {
    goto LABEL_39;
  }

LABEL_4:
}

void ___ZL36nw_browser_start_path_browser_lockedP21NWConcrete_nw_browser_block_invoke_2(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v2 = *(a1 + 32);
  if (*(v2 + 72) == 1)
  {
    nw_browser_update_path_browser_locked(v2);
    v2 = *(a1 + 32);
  }

  v3 = (v2 + 8);

  os_unfair_lock_unlock(v3);
}

uint64_t nw_parallel_array_apply_with_range(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v33 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_parallel_array_apply_with_range";
    v12 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v12, &type, &v27))
    {
      goto LABEL_58;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (!os_log_type_enabled(v13, type))
      {
        goto LABEL_58;
      }

      *buf = 136446210;
      v30 = "nw_parallel_array_apply_with_range";
      v15 = "%{public}s called with null parray";
LABEL_57:
      _os_log_impl(&dword_181A37000, v13, v14, v15, buf, 0xCu);
      goto LABEL_58;
    }

    if (v27 != 1)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v30 = "nw_parallel_array_apply_with_range";
        v15 = "%{public}s called with null parray, backtrace limit exceeded";
        goto LABEL_57;
      }

      goto LABEL_58;
    }

    backtrace_string = __nw_create_backtrace_string();
    v13 = __nwlog_obj();
    v14 = type;
    v23 = os_log_type_enabled(v13, type);
    if (!backtrace_string)
    {
      if (v23)
      {
        *buf = 136446210;
        v30 = "nw_parallel_array_apply_with_range";
        v15 = "%{public}s called with null parray, no backtrace";
        goto LABEL_57;
      }

      goto LABEL_58;
    }

    if (!v23)
    {
      goto LABEL_44;
    }

    *buf = 136446466;
    v30 = "nw_parallel_array_apply_with_range";
    v31 = 2082;
    v32 = backtrace_string;
    v24 = "%{public}s called with null parray, dumping backtrace:%{public}s";
LABEL_43:
    _os_log_impl(&dword_181A37000, v13, v14, v24, buf, 0x16u);
    goto LABEL_44;
  }

  if (*(a1 + 24) - *(a1 + 16) != *(a1 + 48) - *(a1 + 40))
  {
    __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_parallel_array_apply_with_range";
    v12 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v12, &type, &v27))
    {
      goto LABEL_58;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (!os_log_type_enabled(v13, type))
      {
        goto LABEL_58;
      }

      *buf = 136446210;
      v30 = "nw_parallel_array_apply_with_range";
      v15 = "%{public}s called with null (parray->vector1.size() == parray->vector2.size())";
      goto LABEL_57;
    }

    if (v27 != 1)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v30 = "nw_parallel_array_apply_with_range";
        v15 = "%{public}s called with null (parray->vector1.size() == parray->vector2.size()), backtrace limit exceeded";
        goto LABEL_57;
      }

      goto LABEL_58;
    }

    backtrace_string = __nw_create_backtrace_string();
    v13 = __nwlog_obj();
    v14 = type;
    v25 = os_log_type_enabled(v13, type);
    if (!backtrace_string)
    {
      if (v25)
      {
        *buf = 136446210;
        v30 = "nw_parallel_array_apply_with_range";
        v15 = "%{public}s called with null (parray->vector1.size() == parray->vector2.size()), no backtrace";
        goto LABEL_57;
      }

      goto LABEL_58;
    }

    if (!v25)
    {
      goto LABEL_44;
    }

    *buf = 136446466;
    v30 = "nw_parallel_array_apply_with_range";
    v31 = 2082;
    v32 = backtrace_string;
    v24 = "%{public}s called with null (parray->vector1.size() == parray->vector2.size()), dumping backtrace:%{public}s";
    goto LABEL_43;
  }

  if (a4)
  {
    if (atomic_fetch_add_explicit((a1 + 64), 1u, memory_order_relaxed) == 255)
    {
      v16 = a2;
      v17 = __nwlog_obj();
      os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
      *buf = 136446210;
      v30 = "nw_parallel_array_apply_with_range";
      v18 = _os_log_send_and_compose_impl();
      result = __nwlog_should_abort(v18);
      if (result)
      {
LABEL_61:
        __break(1u);
        return result;
      }

      free(v18);
      a2 = v16;
      if (v16 < a3)
      {
        goto LABEL_6;
      }
    }

    else if (a2 < a3)
    {
LABEL_6:
      v7 = a2;
      result = (*(a4 + 16))(a4);
      if (result)
      {
        v9 = v7 + 1;
        while (a3 != v9)
        {
          v10 = (*(a4 + 16))(a4, v9, *(*(a1 + 16) + 8 * v9), *(*(a1 + 40) + 8 * v9));
          ++v9;
          if ((v10 & 1) == 0)
          {
            v11 = v9 - 1;
            goto LABEL_12;
          }
        }

        v11 = a3;
LABEL_12:
        result = v11 >= a3;
      }

LABEL_28:
      if (atomic_fetch_add_explicit((a1 + 64), 0xFFu, memory_order_release) != 255)
      {
        return result;
      }

      v19 = result;
      v20 = __nwlog_obj();
      os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
      *buf = 136446210;
      v30 = "nw_parallel_array_apply_with_range";
      v21 = _os_log_send_and_compose_impl();
      result = __nwlog_should_abort(v21);
      if (!result)
      {
        free(v21);
        return v19;
      }

      goto LABEL_61;
    }

    result = 1;
    goto LABEL_28;
  }

  __nwlog_obj();
  *buf = 136446210;
  v30 = "nw_parallel_array_apply_with_range";
  v12 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v27 = 0;
  if (!__nwlog_fault(v12, &type, &v27))
  {
    goto LABEL_58;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v27 != 1)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v30 = "nw_parallel_array_apply_with_range";
        v15 = "%{public}s called with null applier, backtrace limit exceeded";
        goto LABEL_57;
      }

      goto LABEL_58;
    }

    backtrace_string = __nw_create_backtrace_string();
    v13 = __nwlog_obj();
    v14 = type;
    v26 = os_log_type_enabled(v13, type);
    if (!backtrace_string)
    {
      if (v26)
      {
        *buf = 136446210;
        v30 = "nw_parallel_array_apply_with_range";
        v15 = "%{public}s called with null applier, no backtrace";
        goto LABEL_57;
      }

      goto LABEL_58;
    }

    if (v26)
    {
      *buf = 136446466;
      v30 = "nw_parallel_array_apply_with_range";
      v31 = 2082;
      v32 = backtrace_string;
      v24 = "%{public}s called with null applier, dumping backtrace:%{public}s";
      goto LABEL_43;
    }

LABEL_44:
    free(backtrace_string);
    goto LABEL_58;
  }

  v13 = __nwlog_obj();
  v14 = type;
  if (os_log_type_enabled(v13, type))
  {
    *buf = 136446210;
    v30 = "nw_parallel_array_apply_with_range";
    v15 = "%{public}s called with null applier";
    goto LABEL_57;
  }

LABEL_58:
  if (v12)
  {
    free(v12);
  }

  return 1;
}

uint64_t nw_parallel_array_get_count(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v14 = "nw_parallel_array_get_count";
    v3 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v11 = 0;
    if (!__nwlog_fault(v3, &type, &v11))
    {
      goto LABEL_32;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_32;
      }

      *buf = 136446210;
      v14 = "nw_parallel_array_get_count";
      v6 = "%{public}s called with null parray";
    }

    else
    {
      if (v11 != 1)
      {
        v4 = __nwlog_obj();
        v5 = type;
        if (!os_log_type_enabled(v4, type))
        {
          goto LABEL_32;
        }

        *buf = 136446210;
        v14 = "nw_parallel_array_get_count";
        v6 = "%{public}s called with null parray, backtrace limit exceeded";
        goto LABEL_31;
      }

      backtrace_string = __nw_create_backtrace_string();
      v4 = __nwlog_obj();
      v5 = type;
      v8 = os_log_type_enabled(v4, type);
      if (backtrace_string)
      {
        if (v8)
        {
          *buf = 136446466;
          v14 = "nw_parallel_array_get_count";
          v15 = 2082;
          v16 = backtrace_string;
          _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null parray, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (!v3)
        {
          return 0;
        }

        goto LABEL_33;
      }

      if (!v8)
      {
        goto LABEL_32;
      }

      *buf = 136446210;
      v14 = "nw_parallel_array_get_count";
      v6 = "%{public}s called with null parray, no backtrace";
    }

LABEL_31:
    _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
    goto LABEL_32;
  }

  v1 = a1[3] - a1[2];
  if (v1 == a1[6] - a1[5])
  {
    return v1 >> 3;
  }

  __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_parallel_array_get_count";
  v3 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v3, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_32;
      }

      *buf = 136446210;
      v14 = "nw_parallel_array_get_count";
      v6 = "%{public}s called with null (parray->vector1.size() == parray->vector2.size())";
      goto LABEL_31;
    }

    if (v11 != 1)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_32;
      }

      *buf = 136446210;
      v14 = "nw_parallel_array_get_count";
      v6 = "%{public}s called with null (parray->vector1.size() == parray->vector2.size()), backtrace limit exceeded";
      goto LABEL_31;
    }

    v9 = __nw_create_backtrace_string();
    v4 = __nwlog_obj();
    v5 = type;
    v10 = os_log_type_enabled(v4, type);
    if (!v9)
    {
      if (!v10)
      {
        goto LABEL_32;
      }

      *buf = 136446210;
      v14 = "nw_parallel_array_get_count";
      v6 = "%{public}s called with null (parray->vector1.size() == parray->vector2.size()), no backtrace";
      goto LABEL_31;
    }

    if (v10)
    {
      *buf = 136446466;
      v14 = "nw_parallel_array_get_count";
      v15 = 2082;
      v16 = v9;
      _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null (parray->vector1.size() == parray->vector2.size()), dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v9);
  }

LABEL_32:
  if (v3)
  {
LABEL_33:
    free(v3);
  }

  return 0;
}

nw_browse_descriptor_t nw_path_copy_browse_descriptor_from_tlv(unsigned int a1, unsigned __int8 *a2, const unsigned __int8 *a3)
{
  v94 = *MEMORY[0x1E69E9840];
  if (a1 < 0x1C)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    *buf = 136447234;
    v83 = "nw_path_copy_browse_descriptor_from_tlv";
    v84 = 1024;
    v85 = 202;
    v86 = 1024;
    v87 = a1;
    v88 = 2080;
    v89 = "nw_path_copy_browse_descriptor_from_tlv";
    v90 = 1024;
    v91 = 2130;
    v11 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v80 = 0;
    if (!__nwlog_fault(v11, &type, &v80))
    {
      goto LABEL_40;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v12 = gLogObj;
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136447234;
        v83 = "nw_path_copy_browse_descriptor_from_tlv";
        v84 = 1024;
        v85 = 202;
        v86 = 1024;
        v87 = a1;
        v88 = 2080;
        v89 = "nw_path_copy_browse_descriptor_from_tlv";
        v90 = 1024;
        v91 = 2130;
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s TLV of type %d has invalid length %u (%s:%d)", buf, 0x28u);
      }
    }

    else if (v80 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v12 = gLogObj;
      v15 = type;
      v16 = os_log_type_enabled(v12, type);
      if (backtrace_string)
      {
        if (v16)
        {
          *buf = 136447490;
          v83 = "nw_path_copy_browse_descriptor_from_tlv";
          v84 = 1024;
          v85 = 202;
          v86 = 1024;
          v87 = a1;
          v88 = 2080;
          v89 = "nw_path_copy_browse_descriptor_from_tlv";
          v90 = 1024;
          v91 = 2130;
          v92 = 2082;
          v93 = backtrace_string;
          _os_log_impl(&dword_181A37000, v12, v15, "%{public}s TLV of type %d has invalid length %u (%s:%d), dumping backtrace:%{public}s", buf, 0x32u);
        }

        free(backtrace_string);
        if (!v11)
        {
          return 0;
        }

        goto LABEL_41;
      }

      if (v16)
      {
        *buf = 136447234;
        v83 = "nw_path_copy_browse_descriptor_from_tlv";
        v84 = 1024;
        v85 = 202;
        v86 = 1024;
        v87 = a1;
        v88 = 2080;
        v89 = "nw_path_copy_browse_descriptor_from_tlv";
        v90 = 1024;
        v91 = 2130;
        _os_log_impl(&dword_181A37000, v12, v15, "%{public}s TLV of type %d has invalid length %u (%s:%d), no backtrace", buf, 0x28u);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v12 = gLogObj;
      v17 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136447234;
        v83 = "nw_path_copy_browse_descriptor_from_tlv";
        v84 = 1024;
        v85 = 202;
        v86 = 1024;
        v87 = a1;
        v88 = 2080;
        v89 = "nw_path_copy_browse_descriptor_from_tlv";
        v90 = 1024;
        v91 = 2130;
        _os_log_impl(&dword_181A37000, v12, v17, "%{public}s TLV of type %d has invalid length %u (%s:%d), backtrace limit exceeded", buf, 0x28u);
      }
    }

    goto LABEL_39;
  }

  if (a2[1])
  {
    return 0;
  }

  v4 = *(a2 + 1);
  if (!v4)
  {
    return 0;
  }

  v5 = (a2 + 8);
  v6 = a1 - 8;
  if (v4 == 2)
  {
    v19 = *(a2 + 2);
    v18 = *(a2 + 3);
    v21 = strnlen(a2 + 16, v6 - 8);
    if (v21 + 8 >= v6)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v30 = gLogObj;
      *buf = 136447234;
      v83 = "nw_path_copy_browse_descriptor_from_tlv";
      v84 = 1024;
      v85 = 202;
      v86 = 1024;
      v87 = a1;
      v88 = 2080;
      v89 = "nw_path_copy_browse_descriptor_from_tlv";
      v90 = 1024;
      v91 = 2052;
      v11 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v80 = 0;
      if (__nwlog_fault(v11, &type, &v80))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v12 = __nwlog_obj();
          v31 = type;
          if (os_log_type_enabled(v12, type))
          {
            *buf = 136447234;
            v83 = "nw_path_copy_browse_descriptor_from_tlv";
            v84 = 1024;
            v85 = 202;
            v86 = 1024;
            v87 = a1;
            v88 = 2080;
            v89 = "nw_path_copy_browse_descriptor_from_tlv";
            v90 = 1024;
            v91 = 2052;
            _os_log_impl(&dword_181A37000, v12, v31, "%{public}s TLV of type %d has invalid length %u (%s:%d)", buf, 0x28u);
          }

          goto LABEL_39;
        }

        if (v80 != 1)
        {
          v12 = __nwlog_obj();
          v52 = type;
          if (os_log_type_enabled(v12, type))
          {
            *buf = 136447234;
            v83 = "nw_path_copy_browse_descriptor_from_tlv";
            v84 = 1024;
            v85 = 202;
            v86 = 1024;
            v87 = a1;
            v88 = 2080;
            v89 = "nw_path_copy_browse_descriptor_from_tlv";
            v90 = 1024;
            v91 = 2052;
            _os_log_impl(&dword_181A37000, v12, v52, "%{public}s TLV of type %d has invalid length %u (%s:%d), backtrace limit exceeded", buf, 0x28u);
          }

          goto LABEL_39;
        }

        v38 = __nw_create_backtrace_string();
        v12 = __nwlog_obj();
        v39 = type;
        v40 = os_log_type_enabled(v12, type);
        if (!v38)
        {
          if (v40)
          {
            *buf = 136447234;
            v83 = "nw_path_copy_browse_descriptor_from_tlv";
            v84 = 1024;
            v85 = 202;
            v86 = 1024;
            v87 = a1;
            v88 = 2080;
            v89 = "nw_path_copy_browse_descriptor_from_tlv";
            v90 = 1024;
            v91 = 2052;
            _os_log_impl(&dword_181A37000, v12, v39, "%{public}s TLV of type %d has invalid length %u (%s:%d), no backtrace", buf, 0x28u);
          }

          goto LABEL_39;
        }

        if (v40)
        {
          *buf = 136447490;
          v83 = "nw_path_copy_browse_descriptor_from_tlv";
          v84 = 1024;
          v85 = 202;
          v86 = 1024;
          v87 = a1;
          v88 = 2080;
          v89 = "nw_path_copy_browse_descriptor_from_tlv";
          v90 = 1024;
          v91 = 2052;
          v92 = 2082;
          v93 = v38;
          _os_log_impl(&dword_181A37000, v12, v39, "%{public}s TLV of type %d has invalid length %u (%s:%d), dumping backtrace:%{public}s", buf, 0x32u);
        }

        goto LABEL_112;
      }

      goto LABEL_40;
    }

    v22 = v21 + 9;
    v23 = strnlen(&v5[v21 + 9], v6 - (v21 + 9)) + v21 + 9;
    if (v23 >= v6)
    {
      v34 = __nwlog_obj();
      *buf = 136447234;
      v83 = "nw_path_copy_browse_descriptor_from_tlv";
      v84 = 1024;
      v85 = 202;
      v86 = 1024;
      v87 = a1;
      v88 = 2080;
      v89 = "nw_path_copy_browse_descriptor_from_tlv";
      v90 = 1024;
      v91 = 2059;
      v11 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v80 = 0;
      if (__nwlog_fault(v11, &type, &v80))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v12 = __nwlog_obj();
          v35 = type;
          if (os_log_type_enabled(v12, type))
          {
            *buf = 136447234;
            v83 = "nw_path_copy_browse_descriptor_from_tlv";
            v84 = 1024;
            v85 = 202;
            v86 = 1024;
            v87 = a1;
            v88 = 2080;
            v89 = "nw_path_copy_browse_descriptor_from_tlv";
            v90 = 1024;
            v91 = 2059;
            _os_log_impl(&dword_181A37000, v12, v35, "%{public}s TLV of type %d has invalid length %u (%s:%d)", buf, 0x28u);
          }

          goto LABEL_39;
        }

        if (v80 != 1)
        {
          v12 = __nwlog_obj();
          v66 = type;
          if (os_log_type_enabled(v12, type))
          {
            *buf = 136447234;
            v83 = "nw_path_copy_browse_descriptor_from_tlv";
            v84 = 1024;
            v85 = 202;
            v86 = 1024;
            v87 = a1;
            v88 = 2080;
            v89 = "nw_path_copy_browse_descriptor_from_tlv";
            v90 = 1024;
            v91 = 2059;
            _os_log_impl(&dword_181A37000, v12, v66, "%{public}s TLV of type %d has invalid length %u (%s:%d), backtrace limit exceeded", buf, 0x28u);
          }

          goto LABEL_39;
        }

        v38 = __nw_create_backtrace_string();
        v12 = __nwlog_obj();
        v50 = type;
        v51 = os_log_type_enabled(v12, type);
        if (!v38)
        {
          if (v51)
          {
            *buf = 136447234;
            v83 = "nw_path_copy_browse_descriptor_from_tlv";
            v84 = 1024;
            v85 = 202;
            v86 = 1024;
            v87 = a1;
            v88 = 2080;
            v89 = "nw_path_copy_browse_descriptor_from_tlv";
            v90 = 1024;
            v91 = 2059;
            _os_log_impl(&dword_181A37000, v12, v50, "%{public}s TLV of type %d has invalid length %u (%s:%d), no backtrace", buf, 0x28u);
          }

          goto LABEL_39;
        }

        if (v51)
        {
          *buf = 136447490;
          v83 = "nw_path_copy_browse_descriptor_from_tlv";
          v84 = 1024;
          v85 = 202;
          v86 = 1024;
          v87 = a1;
          v88 = 2080;
          v89 = "nw_path_copy_browse_descriptor_from_tlv";
          v90 = 1024;
          v91 = 2059;
          v92 = 2082;
          v93 = v38;
          _os_log_impl(&dword_181A37000, v12, v50, "%{public}s TLV of type %d has invalid length %u (%s:%d), dumping backtrace:%{public}s", buf, 0x32u);
        }

        goto LABEL_112;
      }

      goto LABEL_40;
    }

    if (v23 + 2 > v6)
    {
      v24 = __nwlog_obj();
      *buf = 136447234;
      v83 = "nw_path_copy_browse_descriptor_from_tlv";
      v84 = 1024;
      v85 = 202;
      v86 = 1024;
      v87 = a1;
      v88 = 2080;
      v89 = "nw_path_copy_browse_descriptor_from_tlv";
      v90 = 1024;
      v91 = 2067;
      v11 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v80 = 0;
      if (!__nwlog_fault(v11, &type, &v80))
      {
        goto LABEL_40;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v12 = __nwlog_obj();
        v25 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136447234;
          v83 = "nw_path_copy_browse_descriptor_from_tlv";
          v84 = 1024;
          v85 = 202;
          v86 = 1024;
          v87 = a1;
          v88 = 2080;
          v89 = "nw_path_copy_browse_descriptor_from_tlv";
          v90 = 1024;
          v91 = 2067;
          _os_log_impl(&dword_181A37000, v12, v25, "%{public}s TLV of type %d has invalid length %u (%s:%d)", buf, 0x28u);
        }

        goto LABEL_39;
      }

      if (v80 != 1)
      {
        v12 = __nwlog_obj();
        v71 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136447234;
          v83 = "nw_path_copy_browse_descriptor_from_tlv";
          v84 = 1024;
          v85 = 202;
          v86 = 1024;
          v87 = a1;
          v88 = 2080;
          v89 = "nw_path_copy_browse_descriptor_from_tlv";
          v90 = 1024;
          v91 = 2067;
          _os_log_impl(&dword_181A37000, v12, v71, "%{public}s TLV of type %d has invalid length %u (%s:%d), backtrace limit exceeded", buf, 0x28u);
        }

        goto LABEL_39;
      }

      v38 = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v64 = type;
      v65 = os_log_type_enabled(v12, type);
      if (!v38)
      {
        if (v65)
        {
          *buf = 136447234;
          v83 = "nw_path_copy_browse_descriptor_from_tlv";
          v84 = 1024;
          v85 = 202;
          v86 = 1024;
          v87 = a1;
          v88 = 2080;
          v89 = "nw_path_copy_browse_descriptor_from_tlv";
          v90 = 1024;
          v91 = 2067;
          _os_log_impl(&dword_181A37000, v12, v64, "%{public}s TLV of type %d has invalid length %u (%s:%d), no backtrace", buf, 0x28u);
        }

        goto LABEL_39;
      }

      if (v65)
      {
        *buf = 136447490;
        v83 = "nw_path_copy_browse_descriptor_from_tlv";
        v84 = 1024;
        v85 = 202;
        v86 = 1024;
        v87 = a1;
        v88 = 2080;
        v89 = "nw_path_copy_browse_descriptor_from_tlv";
        v90 = 1024;
        v91 = 2067;
        v92 = 2082;
        v93 = v38;
        _os_log_impl(&dword_181A37000, v12, v64, "%{public}s TLV of type %d has invalid length %u (%s:%d), dumping backtrace:%{public}s", buf, 0x32u);
      }

      goto LABEL_112;
    }

    v43 = &v5[v23];
    v79 = v5[v23 + 1];
    application_service_with_bundle_id = nw_browse_descriptor_create_application_service_with_bundle_id(a2 + 16, &v5[v22]);
    custom = application_service_with_bundle_id;
    v45 = v23 + 11;
    if (v23 + 11 > v6)
    {
      v46 = __nwlog_obj();
      *buf = 136447234;
      v83 = "nw_path_copy_browse_descriptor_from_tlv";
      v84 = 1024;
      v85 = 202;
      v86 = 1024;
      v87 = a1;
      v88 = 2080;
      v89 = "nw_path_copy_browse_descriptor_from_tlv";
      v90 = 1024;
      v91 = 2087;
      v47 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v80 = 0;
      if (__nwlog_fault(v47, &type, &v80))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v48 = __nwlog_obj();
          v49 = type;
          if (os_log_type_enabled(v48, type))
          {
            *buf = 136447234;
            v83 = "nw_path_copy_browse_descriptor_from_tlv";
            v84 = 1024;
            v85 = 202;
            v86 = 1024;
            v87 = a1;
            v88 = 2080;
            v89 = "nw_path_copy_browse_descriptor_from_tlv";
            v90 = 1024;
            v91 = 2087;
            _os_log_impl(&dword_181A37000, v48, v49, "%{public}s TLV of type %d has invalid length %u (%s:%d)", buf, 0x28u);
          }
        }

        else if (v80 == 1)
        {
          v68 = __nw_create_backtrace_string();
          v48 = __nwlog_obj();
          v69 = type;
          v70 = os_log_type_enabled(v48, type);
          if (v68)
          {
            if (v70)
            {
              *buf = 136447490;
              v83 = "nw_path_copy_browse_descriptor_from_tlv";
              v84 = 1024;
              v85 = 202;
              v86 = 1024;
              v87 = a1;
              v88 = 2080;
              v89 = "nw_path_copy_browse_descriptor_from_tlv";
              v90 = 1024;
              v91 = 2087;
              v92 = 2082;
              v93 = v68;
              _os_log_impl(&dword_181A37000, v48, v69, "%{public}s TLV of type %d has invalid length %u (%s:%d), dumping backtrace:%{public}s", buf, 0x32u);
            }

            free(v68);
            goto LABEL_154;
          }

          if (v70)
          {
            *buf = 136447234;
            v83 = "nw_path_copy_browse_descriptor_from_tlv";
            v84 = 1024;
            v85 = 202;
            v86 = 1024;
            v87 = a1;
            v88 = 2080;
            v89 = "nw_path_copy_browse_descriptor_from_tlv";
            v90 = 1024;
            v91 = 2087;
            _os_log_impl(&dword_181A37000, v48, v69, "%{public}s TLV of type %d has invalid length %u (%s:%d), no backtrace", buf, 0x28u);
          }
        }

        else
        {
          v48 = __nwlog_obj();
          v72 = type;
          if (os_log_type_enabled(v48, type))
          {
            *buf = 136447234;
            v83 = "nw_path_copy_browse_descriptor_from_tlv";
            v84 = 1024;
            v85 = 202;
            v86 = 1024;
            v87 = a1;
            v88 = 2080;
            v89 = "nw_path_copy_browse_descriptor_from_tlv";
            v90 = 1024;
            v91 = 2087;
            _os_log_impl(&dword_181A37000, v48, v72, "%{public}s TLV of type %d has invalid length %u (%s:%d), backtrace limit exceeded", buf, 0x28u);
          }
        }
      }

LABEL_154:
      if (v47)
      {
        free(v47);
      }

      return custom;
    }

    v56 = *&v5[v23 + 2];
    v78 = *(v43 + 6);
    v57 = *(v43 + 10);
    if (!v43[10])
    {
LABEL_164:
      if (custom)
      {
        nw_browse_descriptor_set_device_types(custom, v19);
        nw_browse_descriptor_set_browse_scope(custom, v18);
        nw_browse_descriptor_set_discover_application_service_endpoints_only(custom, v79 != 0);
        nw_browse_descriptor_set_invitation_scope(custom, v56);
        nw_browse_descriptor_set_rssi_threshold(custom, v78);
      }

      return custom;
    }

    if (application_service_with_bundle_id)
    {
      while (1)
      {
        v58 = strnlen(&v5[v45], v6 - v45) + v45;
        if (v58 >= v6)
        {
          break;
        }

        nw_browse_descriptor_add_device_filter(custom, &v5[v45]);
        v45 = v58 + 1;
        if (!--v57)
        {
          goto LABEL_164;
        }
      }
    }

    else
    {
      while (1)
      {
        v59 = strnlen(&v5[v45], v6 - v45) + v45;
        if (v59 >= v6)
        {
          break;
        }

        v45 = v59 + 1;
        if (!--v57)
        {
          goto LABEL_164;
        }
      }
    }

    v60 = __nwlog_obj();
    *buf = 136447234;
    v83 = "nw_path_copy_browse_descriptor_from_tlv";
    v84 = 1024;
    v85 = 202;
    v86 = 1024;
    v87 = a1;
    v88 = 2080;
    v89 = "nw_path_copy_browse_descriptor_from_tlv";
    v90 = 1024;
    v91 = 2094;
    v61 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v80 = 0;
    if (__nwlog_fault(v61, &type, &v80))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v62 = __nwlog_obj();
        v63 = type;
        if (os_log_type_enabled(v62, type))
        {
          *buf = 136447234;
          v83 = "nw_path_copy_browse_descriptor_from_tlv";
          v84 = 1024;
          v85 = 202;
          v86 = 1024;
          v87 = a1;
          v88 = 2080;
          v89 = "nw_path_copy_browse_descriptor_from_tlv";
          v90 = 1024;
          v91 = 2094;
          _os_log_impl(&dword_181A37000, v62, v63, "%{public}s TLV of type %d has invalid length %u (%s:%d)", buf, 0x28u);
        }
      }

      else if (v80 == 1)
      {
        v73 = __nw_create_backtrace_string();
        v62 = __nwlog_obj();
        v74 = type;
        v75 = os_log_type_enabled(v62, type);
        if (v73)
        {
          if (v75)
          {
            *buf = 136447490;
            v83 = "nw_path_copy_browse_descriptor_from_tlv";
            v84 = 1024;
            v85 = 202;
            v86 = 1024;
            v87 = a1;
            v88 = 2080;
            v89 = "nw_path_copy_browse_descriptor_from_tlv";
            v90 = 1024;
            v91 = 2094;
            v92 = 2082;
            v93 = v73;
            _os_log_impl(&dword_181A37000, v62, v74, "%{public}s TLV of type %d has invalid length %u (%s:%d), dumping backtrace:%{public}s", buf, 0x32u);
          }

          free(v73);
          goto LABEL_162;
        }

        if (v75)
        {
          *buf = 136447234;
          v83 = "nw_path_copy_browse_descriptor_from_tlv";
          v84 = 1024;
          v85 = 202;
          v86 = 1024;
          v87 = a1;
          v88 = 2080;
          v89 = "nw_path_copy_browse_descriptor_from_tlv";
          v90 = 1024;
          v91 = 2094;
          _os_log_impl(&dword_181A37000, v62, v74, "%{public}s TLV of type %d has invalid length %u (%s:%d), no backtrace", buf, 0x28u);
        }
      }

      else
      {
        v62 = __nwlog_obj();
        v76 = type;
        if (os_log_type_enabled(v62, type))
        {
          *buf = 136447234;
          v83 = "nw_path_copy_browse_descriptor_from_tlv";
          v84 = 1024;
          v85 = 202;
          v86 = 1024;
          v87 = a1;
          v88 = 2080;
          v89 = "nw_path_copy_browse_descriptor_from_tlv";
          v90 = 1024;
          v91 = 2094;
          _os_log_impl(&dword_181A37000, v62, v76, "%{public}s TLV of type %d has invalid length %u (%s:%d), backtrace limit exceeded", buf, 0x28u);
        }
      }
    }

LABEL_162:
    if (v61)
    {
      free(v61);
    }

    goto LABEL_164;
  }

  if (v4 != 1)
  {
    v26 = *a2;
    if (v26 != a1)
    {
      if (v26 >= a1)
      {
        return 0;
      }

      v77 = __nwlog_obj();
      if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446978;
        v83 = "nw_path_verify_tlv_length";
        v84 = 1024;
        v85 = 202;
        v86 = 1024;
        v87 = a1;
        v88 = 1024;
        LODWORD(v89) = v26;
        _os_log_impl(&dword_181A37000, v77, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
      }
    }

    if (v26 > 8)
    {
      v27 = dispatch_data_create(v5, v26 - 8, 0, 0);
      if (v27)
      {
        v28 = v27;
        custom = nw_browse_descriptor_create_custom(v4, v27, 0);

        return custom;
      }
    }

    return 0;
  }

  v7 = strnlen(a2 + 8, a1 - 8);
  if (v7 >= v6)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v32 = gLogObj;
    *buf = 136447234;
    v83 = "nw_path_copy_browse_descriptor_from_tlv";
    v84 = 1024;
    v85 = 202;
    v86 = 1024;
    v87 = a1;
    v88 = 2080;
    v89 = "nw_path_copy_browse_descriptor_from_tlv";
    v90 = 1024;
    v91 = 2026;
    v11 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v80 = 0;
    if (__nwlog_fault(v11, &type, &v80))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v12 = __nwlog_obj();
        v33 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136447234;
          v83 = "nw_path_copy_browse_descriptor_from_tlv";
          v84 = 1024;
          v85 = 202;
          v86 = 1024;
          v87 = a1;
          v88 = 2080;
          v89 = "nw_path_copy_browse_descriptor_from_tlv";
          v90 = 1024;
          v91 = 2026;
          _os_log_impl(&dword_181A37000, v12, v33, "%{public}s TLV of type %d has invalid length %u (%s:%d)", buf, 0x28u);
        }

        goto LABEL_39;
      }

      if (v80 != 1)
      {
        v12 = __nwlog_obj();
        v55 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136447234;
          v83 = "nw_path_copy_browse_descriptor_from_tlv";
          v84 = 1024;
          v85 = 202;
          v86 = 1024;
          v87 = a1;
          v88 = 2080;
          v89 = "nw_path_copy_browse_descriptor_from_tlv";
          v90 = 1024;
          v91 = 2026;
          _os_log_impl(&dword_181A37000, v12, v55, "%{public}s TLV of type %d has invalid length %u (%s:%d), backtrace limit exceeded", buf, 0x28u);
        }

        goto LABEL_39;
      }

      v38 = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v41 = type;
      v42 = os_log_type_enabled(v12, type);
      if (!v38)
      {
        if (v42)
        {
          *buf = 136447234;
          v83 = "nw_path_copy_browse_descriptor_from_tlv";
          v84 = 1024;
          v85 = 202;
          v86 = 1024;
          v87 = a1;
          v88 = 2080;
          v89 = "nw_path_copy_browse_descriptor_from_tlv";
          v90 = 1024;
          v91 = 2026;
          _os_log_impl(&dword_181A37000, v12, v41, "%{public}s TLV of type %d has invalid length %u (%s:%d), no backtrace", buf, 0x28u);
        }

        goto LABEL_39;
      }

      if (v42)
      {
        *buf = 136447490;
        v83 = "nw_path_copy_browse_descriptor_from_tlv";
        v84 = 1024;
        v85 = 202;
        v86 = 1024;
        v87 = a1;
        v88 = 2080;
        v89 = "nw_path_copy_browse_descriptor_from_tlv";
        v90 = 1024;
        v91 = 2026;
        v92 = 2082;
        v93 = v38;
        _os_log_impl(&dword_181A37000, v12, v41, "%{public}s TLV of type %d has invalid length %u (%s:%d), dumping backtrace:%{public}s", buf, 0x32u);
      }

      goto LABEL_112;
    }

LABEL_40:
    if (v11)
    {
LABEL_41:
      free(v11);
    }

    return 0;
  }

  v8 = v7 + 1;
  if (strnlen(&v5[v7 + 1], v6 - (v7 + 1)) + v7 + 1 >= v6)
  {
    v36 = __nwlog_obj();
    *buf = 136447234;
    v83 = "nw_path_copy_browse_descriptor_from_tlv";
    v84 = 1024;
    v85 = 202;
    v86 = 1024;
    v87 = a1;
    v88 = 2080;
    v89 = "nw_path_copy_browse_descriptor_from_tlv";
    v90 = 1024;
    v91 = 2033;
    v11 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v80 = 0;
    if (__nwlog_fault(v11, &type, &v80))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v12 = __nwlog_obj();
        v37 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136447234;
          v83 = "nw_path_copy_browse_descriptor_from_tlv";
          v84 = 1024;
          v85 = 202;
          v86 = 1024;
          v87 = a1;
          v88 = 2080;
          v89 = "nw_path_copy_browse_descriptor_from_tlv";
          v90 = 1024;
          v91 = 2033;
          _os_log_impl(&dword_181A37000, v12, v37, "%{public}s TLV of type %d has invalid length %u (%s:%d)", buf, 0x28u);
        }

LABEL_39:

        goto LABEL_40;
      }

      if (v80 != 1)
      {
        v12 = __nwlog_obj();
        v67 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136447234;
          v83 = "nw_path_copy_browse_descriptor_from_tlv";
          v84 = 1024;
          v85 = 202;
          v86 = 1024;
          v87 = a1;
          v88 = 2080;
          v89 = "nw_path_copy_browse_descriptor_from_tlv";
          v90 = 1024;
          v91 = 2033;
          _os_log_impl(&dword_181A37000, v12, v67, "%{public}s TLV of type %d has invalid length %u (%s:%d), backtrace limit exceeded", buf, 0x28u);
        }

        goto LABEL_39;
      }

      v38 = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v53 = type;
      v54 = os_log_type_enabled(v12, type);
      if (!v38)
      {
        if (v54)
        {
          *buf = 136447234;
          v83 = "nw_path_copy_browse_descriptor_from_tlv";
          v84 = 1024;
          v85 = 202;
          v86 = 1024;
          v87 = a1;
          v88 = 2080;
          v89 = "nw_path_copy_browse_descriptor_from_tlv";
          v90 = 1024;
          v91 = 2033;
          _os_log_impl(&dword_181A37000, v12, v53, "%{public}s TLV of type %d has invalid length %u (%s:%d), no backtrace", buf, 0x28u);
        }

        goto LABEL_39;
      }

      if (v54)
      {
        *buf = 136447490;
        v83 = "nw_path_copy_browse_descriptor_from_tlv";
        v84 = 1024;
        v85 = 202;
        v86 = 1024;
        v87 = a1;
        v88 = 2080;
        v89 = "nw_path_copy_browse_descriptor_from_tlv";
        v90 = 1024;
        v91 = 2033;
        v92 = 2082;
        v93 = v38;
        _os_log_impl(&dword_181A37000, v12, v53, "%{public}s TLV of type %d has invalid length %u (%s:%d), dumping backtrace:%{public}s", buf, 0x32u);
      }

LABEL_112:

      free(v38);
      if (!v11)
      {
        return 0;
      }

      goto LABEL_41;
    }

    goto LABEL_40;
  }

  return nw_browse_descriptor_create_bonjour_service(v5, &v5[v8]);
}

void ___ZL30nw_agent_read_message_on_queueP19NWConcrete_nw_agent_block_invoke_179(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 808));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

id nw_agent_client_copy_browse_descriptor(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1[8];
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_agent_client_copy_browse_descriptor";
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
        v16 = "nw_agent_client_copy_browse_descriptor";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null client", buf, 0xCu);
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
          v16 = "nw_agent_client_copy_browse_descriptor";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null client, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_agent_client_copy_browse_descriptor";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null client, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_agent_client_copy_browse_descriptor";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null client, backtrace limit exceeded", buf, 0xCu);
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

void nw_browse_descriptor_set_invitation_scope(void *a1, int a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_browse_descriptor_set_invitation_scope";
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (__nwlog_fault(v6, &type, &v19))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v7 = __nwlog_obj();
        v14 = type;
        if (os_log_type_enabled(v7, type))
        {
          *buf = 136446210;
          v22 = "nw_browse_descriptor_set_invitation_scope";
          _os_log_impl(&dword_181A37000, v7, v14, "%{public}s called with null descriptor", buf, 0xCu);
        }

        goto LABEL_20;
      }

      if (v19 != 1)
      {
        v7 = __nwlog_obj();
        v18 = type;
        if (os_log_type_enabled(v7, type))
        {
          *buf = 136446210;
          v22 = "nw_browse_descriptor_set_invitation_scope";
          _os_log_impl(&dword_181A37000, v7, v18, "%{public}s called with null descriptor, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_20;
      }

      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v16 = type;
      v17 = os_log_type_enabled(v7, type);
      if (!backtrace_string)
      {
        if (v17)
        {
          *buf = 136446210;
          v22 = "nw_browse_descriptor_set_invitation_scope";
          _os_log_impl(&dword_181A37000, v7, v16, "%{public}s called with null descriptor, no backtrace", buf, 0xCu);
        }

        goto LABEL_20;
      }

      if (v17)
      {
        *buf = 136446466;
        v22 = "nw_browse_descriptor_set_invitation_scope";
        v23 = 2082;
        v24 = backtrace_string;
        _os_log_impl(&dword_181A37000, v7, v16, "%{public}s called with null descriptor, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

LABEL_21:
    if (!v6)
    {
      goto LABEL_23;
    }

LABEL_22:
    free(v6);
    goto LABEL_23;
  }

  if (*(v3 + 2) == 2)
  {
    *(v3 + 24) = a2;
    goto LABEL_23;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v5 = gLogObj;
  *buf = 136446210;
  v22 = "nw_browse_descriptor_set_invitation_scope";
  v6 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (!__nwlog_fault(v6, &type, &v19))
  {
    goto LABEL_21;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    v8 = type;
    if (os_log_type_enabled(v7, type))
    {
      *buf = 136446210;
      v22 = "nw_browse_descriptor_set_invitation_scope";
      _os_log_impl(&dword_181A37000, v7, v8, "%{public}s Browse descriptor not of type application service", buf, 0xCu);
    }

LABEL_20:

    goto LABEL_21;
  }

  if (v19 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    v12 = type;
    if (os_log_type_enabled(v7, type))
    {
      *buf = 136446210;
      v22 = "nw_browse_descriptor_set_invitation_scope";
      _os_log_impl(&dword_181A37000, v7, v12, "%{public}s Browse descriptor not of type application service, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_20;
  }

  v9 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v7 = gLogObj;
  v10 = type;
  v11 = os_log_type_enabled(v7, type);
  if (!v9)
  {
    if (v11)
    {
      *buf = 136446210;
      v22 = "nw_browse_descriptor_set_invitation_scope";
      _os_log_impl(&dword_181A37000, v7, v10, "%{public}s Browse descriptor not of type application service, no backtrace", buf, 0xCu);
    }

    goto LABEL_20;
  }

  if (v11)
  {
    *buf = 136446466;
    v22 = "nw_browse_descriptor_set_invitation_scope";
    v23 = 2082;
    v24 = v9;
    _os_log_impl(&dword_181A37000, v7, v10, "%{public}s Browse descriptor not of type application service, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v9);
  if (v6)
  {
    goto LABEL_22;
  }

LABEL_23:
}

uint64_t nw_network_agent_ctl_setsockopt_inner(int a1, unsigned __int8 (*a2)[16], int a3, const unsigned __int8 *a4, unsigned int a5, const unsigned __int8 *a6, unsigned int a7)
{
  v47 = *MEMORY[0x1E69E9840];
  if (!__CFADD__(a7, a5))
  {
    v15 = a5 + 16 * (a2 != 0);
    v16 = v15 + a7;
    if (v15 + a7)
    {
      v20 = malloc_type_malloc(v15 + a7, 0x2D14C5BCuLL);
      if (!v20)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
        *buf = 136446210;
        v40 = "nw_network_agent_ctl_setsockopt_inner";
        v21 = _os_log_send_and_compose_impl();
        result = __nwlog_should_abort(v21);
        if (result)
        {
          __break(1u);
          return result;
        }

        free(v21);
      }

      v23 = v20;
      if (a2)
      {
        *v20 = *a2;
        v23 = v20 + 16;
      }

      if (a4 && a5)
      {
        memcpy(v23, a4, a5);
        v23 += a5;
      }

      if (a6 && a7)
      {
        memcpy(v23, a6, a7);
      }
    }

    else
    {
      v20 = 0;
    }

    result = setsockopt(a1, 2, a3, v20, v16);
    if ((result & 0x80000000) == 0)
    {
      goto LABEL_54;
    }

    v26 = result;
    v27 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v28 = gLogObj;
    if (v27 == 2)
    {
      v29 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
      result = v26;
      if (!v29)
      {
        goto LABEL_54;
      }

      *buf = 136446722;
      v40 = "nw_network_agent_ctl_setsockopt_inner";
      v41 = 1024;
      v42 = a3;
      v43 = 1024;
      v44 = 2;
      _os_log_impl(&dword_181A37000, v28, OS_LOG_TYPE_ERROR, "%{public}s setsockopt for message type %u failed %{darwin.errno}d", buf, 0x18u);
LABEL_53:
      result = v26;
LABEL_54:
      if (v20)
      {
        v36 = result;
        free(v20);
        return v36;
      }

      return result;
    }

    *buf = 136446722;
    v40 = "nw_network_agent_ctl_setsockopt_inner";
    v41 = 1024;
    v42 = a3;
    v43 = 1024;
    v44 = v27;
    v30 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v37 = 0;
    if (__nwlog_fault(v30, &type, &v37))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v31 = gLogObj;
        v32 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_51;
        }

        *buf = 136446722;
        v40 = "nw_network_agent_ctl_setsockopt_inner";
        v41 = 1024;
        v42 = a3;
        v43 = 1024;
        v44 = v27;
        v33 = "%{public}s setsockopt for message type %u failed %{darwin.errno}d";
        goto LABEL_50;
      }

      if (v37 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v31 = gLogObj;
        v32 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_51;
        }

        *buf = 136446722;
        v40 = "nw_network_agent_ctl_setsockopt_inner";
        v41 = 1024;
        v42 = a3;
        v43 = 1024;
        v44 = v27;
        v33 = "%{public}s setsockopt for message type %u failed %{darwin.errno}d, backtrace limit exceeded";
        goto LABEL_50;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v31 = gLogObj;
      v32 = type;
      v35 = os_log_type_enabled(gLogObj, type);
      if (backtrace_string)
      {
        if (v35)
        {
          *buf = 136446978;
          v40 = "nw_network_agent_ctl_setsockopt_inner";
          v41 = 1024;
          v42 = a3;
          v43 = 1024;
          v44 = v27;
          v45 = 2082;
          v46 = backtrace_string;
          _os_log_impl(&dword_181A37000, v31, v32, "%{public}s setsockopt for message type %u failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x22u);
        }

        free(backtrace_string);
        goto LABEL_51;
      }

      if (v35)
      {
        *buf = 136446722;
        v40 = "nw_network_agent_ctl_setsockopt_inner";
        v41 = 1024;
        v42 = a3;
        v43 = 1024;
        v44 = v27;
        v33 = "%{public}s setsockopt for message type %u failed %{darwin.errno}d, no backtrace";
LABEL_50:
        _os_log_impl(&dword_181A37000, v31, v32, v33, buf, 0x18u);
      }
    }

LABEL_51:
    if (v30)
    {
      free(v30);
    }

    goto LABEL_53;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446722;
  v40 = "nw_network_agent_ctl_setsockopt_inner";
  v41 = 1024;
  v42 = a5;
  v43 = 1024;
  v44 = a7;
  v9 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v37 = 0;
  if (__nwlog_fault(v9, &type, &v37))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      v11 = type;
      if (os_log_type_enabled(gLogObj, type))
      {
        *buf = 136446722;
        v40 = "nw_network_agent_ctl_setsockopt_inner";
        v41 = 1024;
        v42 = a5;
        v43 = 1024;
        v44 = a7;
        v12 = "%{public}s Invalid payload values (%u, %u)";
LABEL_37:
        _os_log_impl(&dword_181A37000, v10, v11, v12, buf, 0x18u);
      }
    }

    else if (v37 == 1)
    {
      v24 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      v11 = type;
      v25 = os_log_type_enabled(gLogObj, type);
      if (v24)
      {
        if (v25)
        {
          *buf = 136446978;
          v40 = "nw_network_agent_ctl_setsockopt_inner";
          v41 = 1024;
          v42 = a5;
          v43 = 1024;
          v44 = a7;
          v45 = 2082;
          v46 = v24;
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s Invalid payload values (%u, %u), dumping backtrace:%{public}s", buf, 0x22u);
        }

        free(v24);
        goto LABEL_38;
      }

      if (v25)
      {
        *buf = 136446722;
        v40 = "nw_network_agent_ctl_setsockopt_inner";
        v41 = 1024;
        v42 = a5;
        v43 = 1024;
        v44 = a7;
        v12 = "%{public}s Invalid payload values (%u, %u), no backtrace";
        goto LABEL_37;
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      v11 = type;
      if (os_log_type_enabled(gLogObj, type))
      {
        *buf = 136446722;
        v40 = "nw_network_agent_ctl_setsockopt_inner";
        v41 = 1024;
        v42 = a5;
        v43 = 1024;
        v44 = a7;
        v12 = "%{public}s Invalid payload values (%u, %u), backtrace limit exceeded";
        goto LABEL_37;
      }
    }
  }

LABEL_38:
  if (v9)
  {
    free(v9);
  }

  return 0xFFFFFFFFLL;
}

BOOL ___ZL15nw_agent_assignP19NWConcrete_nw_agentPhmS1_b_block_invoke(uint64_t a1, int a2)
{
  if (*(a1 + 56))
  {
    v2 = 20;
  }

  else
  {
    v2 = 11;
  }

  return nw_network_agent_ctl_setsockopt_inner(a2, (*(a1 + 32) + 720), v2, *(a1 + 40), *(a1 + 48), 0, 0) == 0;
}

uint64_t nw_agent_assign(NWConcrete_nw_agent *a1, unsigned __int8 *a2, size_t a3, unsigned __int8 *a4, char a5)
{
  v48 = *MEMORY[0x1E69E9840];
  v9 = a1;
  if (!v9)
  {
    v27 = __nwlog_obj();
    *buf = 136446210;
    v43 = "nw_agent_assign";
    v28 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v40 = 0;
    if (__nwlog_fault(v28, &type, &v40))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v29 = __nwlog_obj();
        v30 = type;
        if (os_log_type_enabled(v29, type))
        {
          *buf = 136446210;
          v43 = "nw_agent_assign";
          _os_log_impl(&dword_181A37000, v29, v30, "%{public}s called with null agent", buf, 0xCu);
        }
      }

      else if (v40 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v29 = __nwlog_obj();
        v32 = type;
        v33 = os_log_type_enabled(v29, type);
        if (backtrace_string)
        {
          if (v33)
          {
            *buf = 136446466;
            v43 = "nw_agent_assign";
            v44 = 2082;
            v45 = backtrace_string;
            _os_log_impl(&dword_181A37000, v29, v32, "%{public}s called with null agent, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_50;
        }

        if (v33)
        {
          *buf = 136446210;
          v43 = "nw_agent_assign";
          _os_log_impl(&dword_181A37000, v29, v32, "%{public}s called with null agent, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v29 = __nwlog_obj();
        v34 = type;
        if (os_log_type_enabled(v29, type))
        {
          *buf = 136446210;
          v43 = "nw_agent_assign";
          _os_log_impl(&dword_181A37000, v29, v34, "%{public}s called with null agent, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_50:
    if (!v28)
    {
      goto LABEL_11;
    }

    v14 = v28;
    goto LABEL_10;
  }

  if (a3 >= 0xFFFFFFF0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    *buf = 136446466;
    v43 = "nw_agent_assign";
    v44 = 2048;
    v45 = a3;
    v11 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v40 = 0;
    if (__nwlog_fault(v11, &type, &v40))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v12 = gLogObj;
        v13 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446466;
          v43 = "nw_agent_assign";
          v44 = 2048;
          v45 = a3;
          _os_log_impl(&dword_181A37000, v12, v13, "%{public}s Invalid data length (%zu)", buf, 0x16u);
        }
      }

      else if (v40 == 1)
      {
        v21 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v12 = gLogObj;
        v22 = type;
        v23 = os_log_type_enabled(v12, type);
        if (v21)
        {
          if (v23)
          {
            *buf = 136446722;
            v43 = "nw_agent_assign";
            v44 = 2048;
            v45 = a3;
            v46 = 2082;
            v47 = v21;
            _os_log_impl(&dword_181A37000, v12, v22, "%{public}s Invalid data length (%zu), dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(v21);
          if (!v11)
          {
            goto LABEL_11;
          }

LABEL_9:
          v14 = v11;
LABEL_10:
          free(v14);
          goto LABEL_11;
        }

        if (v23)
        {
          *buf = 136446466;
          v43 = "nw_agent_assign";
          v44 = 2048;
          v45 = a3;
          _os_log_impl(&dword_181A37000, v12, v22, "%{public}s Invalid data length (%zu), no backtrace", buf, 0x16u);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v12 = gLogObj;
        v26 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446466;
          v43 = "nw_agent_assign";
          v44 = 2048;
          v45 = a3;
          _os_log_impl(&dword_181A37000, v12, v26, "%{public}s Invalid data length (%zu), backtrace limit exceeded", buf, 0x16u);
        }
      }
    }

    if (!v11)
    {
LABEL_11:
      fd = 0;
LABEL_18:

      return fd;
    }

    goto LABEL_9;
  }

  v16 = a3 + 16;
  v17 = malloc_type_calloc(1uLL, a3 + 16, 0x51B2E3D9uLL);
  v18 = v17;
  if (v17)
  {
    *v17 = *a4;
    if (!a3)
    {
LABEL_15:
      v19 = *(v9 + 108);
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = ___ZL15nw_agent_assignP19NWConcrete_nw_agentPhmS1_b_block_invoke;
      v35[3] = &unk_1E6A3BE30;
      v39 = a5;
      v36 = v9;
      v37 = v18;
      v38 = v16;
      fd = nw_fd_wrapper_get_fd(v19, v35);
      if (v18)
      {
        free(v18);
      }

      goto LABEL_18;
    }

LABEL_14:
    memcpy(v18 + 1, a2, a3);
    goto LABEL_15;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v24 = gLogObj;
  os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  v43 = "nw_agent_assign";
  v44 = 2048;
  v45 = 1;
  v46 = 2048;
  v47 = (a3 + 16);
  v25 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v25);
  if (!result)
  {
    free(v25);
    MEMORY[0] = *a4;
    if (!a3)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void ___ZL30nw_agent_read_message_on_queueP19NWConcrete_nw_agent_block_invoke_2_180(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    *buf = 0;
    v6 = *(*(a1 + 32) + 64);
    v7 = v5;
    if (v6)
    {
      *type = 0;
      predicate = nw_browse_descriptor_get_predicate(v6, type);
      v9 = !predicate || *type == 0;
      v7 = v5;
      if (!v9)
      {
        v7 = filterEndpoints(v5, predicate, *type);
      }
    }

    endpoint_array_result = nw_path_create_endpoint_array_result(buf, v7, 202);
    nw_agent_assign(*(a1 + 40), endpoint_array_result, *buf, (*(a1 + 32) + 8), 0);
    if (endpoint_array_result)
    {
      free(endpoint_array_result);
    }

    goto LABEL_11;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_agent_read_message_on_queue_block_invoke_2";
  v12 = _os_log_send_and_compose_impl();

  type[0] = OS_LOG_TYPE_ERROR;
  v20 = 0;
  if (__nwlog_fault(v12, type, &v20))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type[0];
      if (os_log_type_enabled(v13, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_agent_read_message_on_queue_block_invoke";
        _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null discovered_endpoints", buf, 0xCu);
      }
    }

    else if (v20 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v16 = type[0];
      v17 = os_log_type_enabled(v13, type[0]);
      if (backtrace_string)
      {
        if (v17)
        {
          *buf = 136446466;
          *&buf[4] = "nw_agent_read_message_on_queue_block_invoke";
          v22 = 2082;
          v23 = backtrace_string;
          _os_log_impl(&dword_181A37000, v13, v16, "%{public}s called with null discovered_endpoints, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_28;
      }

      if (v17)
      {
        *buf = 136446210;
        *&buf[4] = "nw_agent_read_message_on_queue_block_invoke";
        _os_log_impl(&dword_181A37000, v13, v16, "%{public}s called with null discovered_endpoints, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v13 = __nwlog_obj();
      v18 = type[0];
      if (os_log_type_enabled(v13, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_agent_read_message_on_queue_block_invoke";
        _os_log_impl(&dword_181A37000, v13, v18, "%{public}s called with null discovered_endpoints, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_28:
  if (v12)
  {
    free(v12);
  }

LABEL_11:
}

uint64_t nw_path_create_endpoint_array_result(void *a1, void *a2, char a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  if (a1)
  {
    *a1 = 0;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___ZL36nw_path_create_endpoint_array_resultPmPU22objcproto11OS_nw_array8NSObjecth_block_invoke;
  aBlock[3] = &unk_1E6A39B60;
  aBlock[4] = &v19;
  if (!v5)
  {
    goto LABEL_9;
  }

  _nw_array_apply(v5, aBlock);
  v7 = v20[3];
  if (!v7)
  {
    goto LABEL_9;
  }

  if (v7 >= 0x6000)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      count = _nw_array_get_count(v6);
      v10 = v20[3];
      *buf = 136446722;
      v28 = "nw_path_create_endpoint_array_result";
      v29 = 2048;
      v30 = count;
      v31 = 2048;
      v32 = v10;
      _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_ERROR, "%{public}s Endpoint array too large; number of endpoints: %zu, total size: %zu", buf, 0x20u);
    }

LABEL_9:
    v11 = 0;
LABEL_10:
    _Block_object_dispose(&v19, 8);
    _Block_object_dispose(&v23, 8);

    return v11;
  }

  v11 = malloc_type_calloc(1uLL, v20[3], 0x89309EBAuLL);
  if (v11)
  {
LABEL_14:
    v15 = &v11[v20[3]];
    v24[3] = v11;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = ___ZL36nw_path_create_endpoint_array_resultPmPU22objcproto11OS_nw_array8NSObjecth_block_invoke_34;
    v16[3] = &unk_1E6A387B0;
    v17 = a3;
    v16[4] = &v23;
    v16[5] = v15;
    _nw_array_apply(v6, v16);
    if (a1)
    {
      *a1 = v20[3];
    }

    goto LABEL_10;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v13 = gLogObj;
  os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  v28 = "nw_path_create_endpoint_array_result";
  v29 = 2048;
  v30 = 1;
  v31 = 2048;
  v32 = v7;
  v14 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v14);
  if (!result)
  {
    free(v14);
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_181E280C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);

  _Unwind_Resume(a1);
}

uint64_t nw_path_flow_copy_error(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_path_flow_get_error(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_flow_copy_error";
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
        v16 = "nw_path_flow_copy_error";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null flow", buf, 0xCu);
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
          v16 = "nw_path_flow_copy_error";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null flow, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_path_flow_copy_error";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null flow, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_path_flow_copy_error";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null flow, backtrace limit exceeded", buf, 0xCu);
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

BOOL ___ZL37nw_browser_update_path_browser_lockedP21NWConcrete_nw_browser_block_invoke_110(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = nw_path_flow_copy_error(v4);
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = *(*(*(a1 + 32) + 8) + 40) == 0;
  return v8;
}

uint64_t ___ZL37nw_browser_update_path_browser_lockedP21NWConcrete_nw_browser_block_invoke(uint64_t a1, const char *a2, void *a3)
{
  v5 = a3;
  v6 = nw_path_copy_flow_for_registration(*(*(a1 + 32) + 96), v5);
  v7 = v6;
  if (v6)
  {
    is_defunct = _nw_path_flow_is_defunct(v6);

    if (is_defunct)
    {
      nw_dictionary_set_value(*(a1 + 40), a2, v5);
    }
  }

  return 1;
}

void ___ZL36nw_browser_start_path_browser_lockedP21NWConcrete_nw_browser_block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v4 = *(a1 + 32);
  if (*(v4 + 72) == 1)
  {
    objc_storeStrong((v4 + 96), a2);
    nw_browser_update_path_browser_locked(*(a1 + 32));
    v4 = *(a1 + 32);
  }

  os_unfair_lock_unlock((v4 + 8));
}

id _nw_path_flow_get_error(char *a1)
{
  v1 = &a1[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v2 = a1;
  swift_beginAccess();
  v3 = *(v1 + 11);
  swift_unknownObjectRetain();

  return v3;
}

void nw_connection_start_dry_run_on_nw_queue(NWConcrete_nw_connection *a1)
{
  *&v29[13] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    nw_context_assert_queue(v1->context);
    parameters = v2->parameters;
    if (v2->dry_run_endpoint_handler)
    {
      if (parameters && !_nw_parameters_get_logging_disabled(parameters))
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v4 = gconnectionLogObj;
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          top_id = v2->top_id;
          *buf = 136446466;
          v27 = "nw_connection_start_dry_run_on_nw_queue";
          v28 = 1024;
          *v29 = top_id;
          _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_ERROR, "%{public}s [C%u] Dry run endpoint handler already started", buf, 0x12u);
        }
      }
    }

    else
    {
      v6 = _nw_parameters_copy(parameters);
      nw_parameters_set_dry_run(v6);
      nw_parameters_set_indefinite(v6);
      inner = nw_endpoint_handler_create_inner(v2->endpoint, v6, nw_connection_endpoint_report_dry_run_on_nw_queue, v2, 0, 0, v2->top_uuid, 1);
      dry_run_endpoint_handler = v2->dry_run_endpoint_handler;
      v2->dry_run_endpoint_handler = inner;

      v9 = v2->parameters;
      if (v9 && !_nw_parameters_get_logging_disabled(v9))
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v10 = gconnectionLogObj;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = v2->top_id;
          id_string = nw_endpoint_handler_get_id_string(v2->dry_run_endpoint_handler);
          *buf = 136446722;
          v27 = "nw_connection_start_dry_run_on_nw_queue";
          v28 = 1024;
          *v29 = v11;
          v29[2] = 2082;
          *&v29[3] = id_string;
          _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_INFO, "%{public}s [C%u] Starting dry-run endpoint handler [C%{public}s] to check for a better path", buf, 0x1Cu);
        }
      }

      context = v2->context;
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = ___ZL39nw_connection_start_dry_run_on_nw_queueP24NWConcrete_nw_connection_block_invoke;
      v22[3] = &unk_1E6A3D868;
      v23 = v2;
      nw_queue_context_async(context, v22);
    }

    goto LABEL_18;
  }

  v14 = __nwlog_obj();
  *buf = 136446210;
  v27 = "nw_connection_start_dry_run_on_nw_queue";
  v15 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v24 = 0;
  if (__nwlog_fault(v15, &type, &v24))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v16 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        v27 = "nw_connection_start_dry_run_on_nw_queue";
        _os_log_impl(&dword_181A37000, v16, v17, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (v24 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v16 = __nwlog_obj();
      v19 = type;
      v20 = os_log_type_enabled(v16, type);
      if (backtrace_string)
      {
        if (v20)
        {
          *buf = 136446466;
          v27 = "nw_connection_start_dry_run_on_nw_queue";
          v28 = 2082;
          *v29 = backtrace_string;
          _os_log_impl(&dword_181A37000, v16, v19, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_35;
      }

      if (v20)
      {
        *buf = 136446210;
        v27 = "nw_connection_start_dry_run_on_nw_queue";
        _os_log_impl(&dword_181A37000, v16, v19, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v16 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        v27 = "nw_connection_start_dry_run_on_nw_queue";
        _os_log_impl(&dword_181A37000, v16, v21, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_35:
  if (v15)
  {
    free(v15);
  }

LABEL_18:
}

void nw_parameters_set_dry_run(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    _nw_parameters_set_dry_run();
    return;
  }

  v1 = __nwlog_obj();
  *buf = 136446210;
  v11 = "nw_parameters_set_dry_run";
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
        v11 = "nw_parameters_set_dry_run";
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
            v11 = "nw_parameters_set_dry_run";
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
        v11 = "nw_parameters_set_dry_run";
        v5 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v3 = __nwlog_obj();
      v4 = type;
      if (os_log_type_enabled(v3, type))
      {
        *buf = 136446210;
        v11 = "nw_parameters_set_dry_run";
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

void ___ZL39nw_connection_start_dry_run_on_nw_queueP24NWConcrete_nw_connection_block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 176);
  if (v1)
  {
    nw_endpoint_handler_start(v1);
  }
}

uint64_t nw_connection_endpoint_report_dry_run_on_nw_queue(void *a1, int a2, int a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = a1;
  v10 = a6;
  nw_context_assert_queue(*(v10 + 3));
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = ___ZL49nw_connection_endpoint_report_dry_run_on_nw_queuePU33objcproto22OS_nw_endpoint_handler8NSObject26nw_endpoint_handler_mode_t21nw_connection_state_tP27nw_endpoint_handler_event_sPU22objcproto11OS_nw_errorS_PU23objcproto12OS_nw_objectS__block_invoke;
  v14[3] = &unk_1E6A3BCF0;
  v11 = v10;
  v15 = v11;
  v12 = v9;
  v16 = v12;
  v17 = a3;
  v18 = a2;
  os_unfair_lock_lock(v10 + 34);
  ___ZL49nw_connection_endpoint_report_dry_run_on_nw_queuePU33objcproto22OS_nw_endpoint_handler8NSObject26nw_endpoint_handler_mode_t21nw_connection_state_tP27nw_endpoint_handler_event_sPU22objcproto11OS_nw_errorS_PU23objcproto12OS_nw_objectS__block_invoke(v14);
  os_unfair_lock_unlock(v10 + 34);

  return 1;
}

void ___ZL49nw_connection_endpoint_report_dry_run_on_nw_queuePU33objcproto22OS_nw_endpoint_handler8NSObject26nw_endpoint_handler_mode_t21nw_connection_state_tP27nw_endpoint_handler_event_sPU22objcproto11OS_nw_errorS_PU23objcproto12OS_nw_objectS__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 16);
  if (v2 && !_nw_parameters_get_logging_disabled(v2))
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v3 = gconnectionLogObj;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = *(*(a1 + 32) + 448);
      v5 = nw_endpoint_handler_mode_string(*(a1 + 40));
      v6 = *(a1 + 48);
      if (v6 > 5)
      {
        v7 = "unknown-state";
      }

      else
      {
        v7 = off_1E6A31048[v6];
      }

      v9 = 136446978;
      v10 = "nw_connection_endpoint_report_dry_run_on_nw_queue_block_invoke";
      v11 = 1024;
      v12 = v4;
      v13 = 2082;
      v14 = v5;
      v15 = 2082;
      v16 = v7;
      _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_DEBUG, "%{public}s [C%u] Dry run state update (mode %{public}s, state %{public}s)", &v9, 0x26u);
    }
  }

  if (*(a1 + 52) == 2 && *(a1 + 48) == 3)
  {
    objc_storeStrong((*(a1 + 32) + 184), *(a1 + 40));
  }

  v8 = *(a1 + 32);
  if (*(a1 + 40) == v8->dry_run_endpoint_handler)
  {
    nw_connection_update_better_path_locked_on_nw_queue(v8);
  }
}

void nw_endpoint_handler_reset_mode(void *a1, int a2)
{
  v83 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = *(v3 + 33);
  [v4 cancelWithHandler:v3 forced:1];

  os_unfair_lock_lock(v3 + 28);
  v5 = v3[284];
  v3[284] = v5 & 0xE7;
  if ((v5 & 1) != 0 || *(v3 + 9))
  {
    v6 = 0;
    *(v3 + 29) = 0;
LABEL_4:
    v7 = *(v3 + 33);
    *(v3 + 33) = v6;

    goto LABEL_5;
  }

  if (*(v3 + 29) != 2)
  {
    *(v3 + 29) = 2;
    v6 = objc_alloc_init(NWConcrete_nw_endpoint_flow);
    *(v6 + 32) = *(v6 + 32) & 0xFC | 1;
    *v6->connection_uuid = *(v3 + 148);
    goto LABEL_4;
  }

  nw_endpoint_flow_reset_is_leaf_handler(*(v3 + 33), 0);
LABEL_5:
  *(v3 + 30) = 1;
  os_unfair_lock_unlock(v3 + 28);
  v8 = v3;
  v9 = v3[284];

  if (a2)
  {
    if ((v9 & 0x20) != 0)
    {
      if (nw_endpoint_handler_get_logging_disabled(v8))
      {
        goto LABEL_65;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v12 = gconnectionLogObj;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        id_string = nw_endpoint_handler_get_id_string(v8);
        v54 = nw_endpoint_handler_dry_run_string(v8);
        v55 = nw_endpoint_handler_copy_endpoint(v8);
        logging_description = nw_endpoint_get_logging_description(v55);
        v57 = nw_endpoint_handler_state_string(v8);
        v58 = nw_endpoint_handler_mode_string(v8);
        v59 = nw_endpoint_handler_copy_current_path(v8);
        *buf = 136447746;
        v70 = "nw_endpoint_handler_reset_mode";
        v71 = 2082;
        v72 = id_string;
        v73 = 2082;
        v74 = v54;
        v75 = 2082;
        v76 = logging_description;
        v77 = 2082;
        v78 = v57;
        v79 = 2082;
        v80 = v58;
        v81 = 2114;
        v82 = v59;
        _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] reset, restarting path handling", buf, 0x48u);
      }

      goto LABEL_64;
    }

    v10 = v8;
    v11 = v3[284];

    if ((v11 & 0x40) != 0)
    {
LABEL_65:
      nw_endpoint_handler_path_change(v8);
      goto LABEL_70;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v12 = gconnectionLogObj;
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
LABEL_64:

      goto LABEL_65;
    }

    v13 = v10;

    v14 = v13;
    v15 = v3[284];

    if (v15)
    {
      v16 = "dry-run ";
    }

    else
    {
      v16 = "";
    }

    v17 = nw_endpoint_handler_copy_endpoint(v14);
    v18 = v17;
    if (v17)
    {
      v19 = _nw_endpoint_get_logging_description(v17);
    }

    else
    {
      v19 = "<NULL>";
    }

    log = v12;
    id_str = v13->id_str;

    v31 = v14;
    v32 = v31;
    v33 = *(v3 + 30);
    if (v33 > 5)
    {
      v34 = "unknown-state";
    }

    else
    {
      v34 = off_1E6A31048[v33];
    }

    v35 = v32;
    v36 = *(v35 + 29);
    if (v36 > 2)
    {
      switch(v36)
      {
        case 3:
          v37 = v16;
          v38 = "proxy";
          goto LABEL_63;
        case 4:
          v37 = v16;
          v38 = "fallback";
          goto LABEL_63;
        case 5:
          v37 = v16;
          v38 = "transform";
          goto LABEL_63;
      }
    }

    else
    {
      switch(v36)
      {
        case 0:
          v37 = v16;
          v38 = "path";
          goto LABEL_63;
        case 1:
          v37 = v16;
          v38 = "resolver";
          goto LABEL_63;
        case 2:
          v37 = v16;
          v38 = nw_endpoint_flow_mode_string(*(v3 + 33));
LABEL_63:

          v49 = v35;
          os_unfair_lock_lock(v3 + 28);
          v50 = v49[8];
          os_unfair_lock_unlock(v3 + 28);

          *buf = 136447746;
          v70 = "nw_endpoint_handler_reset_mode";
          v71 = 2082;
          v72 = id_str;
          v73 = 2082;
          v74 = v37;
          v75 = 2082;
          v76 = v19;
          v77 = 2082;
          v78 = v34;
          v79 = 2082;
          v80 = v38;
          v81 = 2114;
          v82 = v50;
          v12 = log;
          _os_log_impl(&dword_181A37000, log, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] reset, restarting path handling", buf, 0x48u);

          goto LABEL_64;
      }
    }

    v37 = v16;
    v38 = "unknown-mode";
    goto LABEL_63;
  }

  if ((v9 & 0x20) != 0)
  {
    if (nw_endpoint_handler_get_logging_disabled(v8))
    {
      goto LABEL_70;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v22 = gconnectionLogObj;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v60 = nw_endpoint_handler_get_id_string(v8);
      v61 = nw_endpoint_handler_dry_run_string(v8);
      v62 = nw_endpoint_handler_copy_endpoint(v8);
      v63 = nw_endpoint_get_logging_description(v62);
      v64 = nw_endpoint_handler_state_string(v8);
      v65 = nw_endpoint_handler_mode_string(v8);
      v66 = nw_endpoint_handler_copy_current_path(v8);
      *buf = 136447746;
      v70 = "nw_endpoint_handler_reset_mode";
      v71 = 2082;
      v72 = v60;
      v73 = 2082;
      v74 = v61;
      v75 = 2082;
      v76 = v63;
      v77 = 2082;
      v78 = v64;
      v79 = 2082;
      v80 = v65;
      v81 = 2114;
      v82 = v66;
      _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] reset", buf, 0x48u);
    }

    goto LABEL_69;
  }

  v20 = v8;
  v21 = v3[284];

  if ((v21 & 0x40) == 0)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v22 = gconnectionLogObj;
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      goto LABEL_69;
    }

    v23 = v20;

    v24 = v23;
    v25 = v3[284];

    if (v25)
    {
      v26 = "dry-run ";
    }

    else
    {
      v26 = "";
    }

    v27 = nw_endpoint_handler_copy_endpoint(v24);
    v28 = v27;
    if (v27)
    {
      v29 = _nw_endpoint_get_logging_description(v27);
    }

    else
    {
      v29 = "<NULL>";
    }

    v39 = v23->id_str;

    v40 = v24;
    v41 = v40;
    v42 = *(v3 + 30);
    if (v42 > 5)
    {
      v43 = "unknown-state";
    }

    else
    {
      v43 = off_1E6A31048[v42];
    }

    v44 = v41;
    v45 = *(v44 + 29);
    loga = v22;
    v46 = v29;
    if (v45 > 2)
    {
      switch(v45)
      {
        case 3:
          v47 = v26;
          v48 = "proxy";
          goto LABEL_68;
        case 4:
          v47 = v26;
          v48 = "fallback";
          goto LABEL_68;
        case 5:
          v47 = v26;
          v48 = "transform";
          goto LABEL_68;
      }
    }

    else
    {
      switch(v45)
      {
        case 0:
          v47 = v26;
          v48 = "path";
          goto LABEL_68;
        case 1:
          v47 = v26;
          v48 = "resolver";
          goto LABEL_68;
        case 2:
          v47 = v26;
          v48 = nw_endpoint_flow_mode_string(*(v3 + 33));
LABEL_68:

          v51 = v44;
          os_unfair_lock_lock(v3 + 28);
          v52 = v51[8];
          os_unfair_lock_unlock(v3 + 28);

          *buf = 136447746;
          v70 = "nw_endpoint_handler_reset_mode";
          v71 = 2082;
          v72 = v39;
          v73 = 2082;
          v74 = v47;
          v75 = 2082;
          v76 = v46;
          v77 = 2082;
          v78 = v43;
          v79 = 2082;
          v80 = v48;
          v81 = 2114;
          v82 = v52;
          v22 = loga;
          _os_log_impl(&dword_181A37000, loga, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] reset", buf, 0x48u);

LABEL_69:
          goto LABEL_70;
      }
    }

    v47 = v26;
    v48 = "unknown-mode";
    goto LABEL_68;
  }

LABEL_70:
}

void sub_181E298C8(char *a1, char a2)
{
  v3 = &a1[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v4 = a1;
  swift_beginAccess();
  v5 = *(v3 + 100);
  if (a2)
  {
    if ((v5 & 0x80) == 0)
    {
      v6 = v5 | 0x80;
LABEL_6:
      *(v3 + 100) = v6;
    }
  }

  else if ((v5 & 0x80) != 0)
  {
    v6 = v5 & 0xFF7F;
    goto LABEL_6;
  }
}

double sub_181E29948@<D0>(unsigned __int8 *src@<X0>, _OWORD *a2@<X8>)
{
  v5 = *MEMORY[0x1E69E9840];
  *v4 = 0uLL;
  uuid_copy(v4, src);
  result = v4[0];
  *a2 = *v4;
  return result;
}

void nw_listener_cancel(nw_listener_t listener)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = listener;
  v2 = v1;
  if (v1)
  {
    v3 = nw_parameters_copy_context(v1[2].isa);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __nw_listener_cancel_block_invoke;
    v12[3] = &unk_1E6A3D868;
    v13 = v2;
    nw_queue_context_async(v3, v12);

    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_listener_cancel";
  v5 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (__nwlog_fault(v5, &type, &v14))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v17 = "nw_listener_cancel";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null listener", buf, 0xCu);
      }
    }

    else if (v14 == 1)
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
          v17 = "nw_listener_cancel";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null listener, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v17 = "nw_listener_cancel";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null listener, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v17 = "nw_listener_cancel";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null listener, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

LABEL_3:
}

uint64_t sub_181E29CDC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for URLEndpoint();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - v11;
  v14 = *a1;
  v13 = *(a1 + 8);
  v15 = *(a1 + 16);
  v16 = OBJC_IVAR____TtC7Network8Endpoint_type;
  swift_beginAccess();
  sub_181ACC828(v2 + v16, v12, type metadata accessor for Endpoint.EndpointType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v24 = *(v12 + 2);
      v25 = *(v12 + 3);
      v26 = *(v12 + 8);
      v27 = *(v12 + 18);
      v36 = *v12;
      v37 = v24;
      v38 = v25;
      v39 = v26;
      v40 = v27;
      sub_181E2A054(v14, v13, v15);
      v28 = v37;
      v29 = v38;
      v30 = v39;
      v31 = v40;
      *v9 = v36;
      *(v9 + 2) = v28;
      *(v9 + 3) = v29;
      *(v9 + 8) = v30;
      *(v9 + 18) = v31;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v18 = *(v12 + 2);
      v19 = *(v12 + 3);
      v36 = *v12;
      v37 = v18;
      v38 = v19;
      sub_181E2A054(v14, v13, v15);
      v20 = v37;
      v21 = v38;
      *v9 = v36;
      *(v9 + 2) = v20;
      *(v9 + 3) = v21;
    }

    else
    {
      sub_181AA91BC(v12, v6, type metadata accessor for URLEndpoint);
      sub_181E2A054(v14, v13, v15);
      sub_181AA91BC(v6, v9, type metadata accessor for URLEndpoint);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v41 = *v12;
    if (EnumCaseMultiPayload == 1)
    {
      sub_181E638F4(v14, v13, v15);
    }

    else
    {
      sub_18217BCB0(v14, v13, v15);
    }

    *v9 = v41;
  }

  else
  {
    v22 = *(v12 + 1);
    v33 = *v12;
    v34 = v22;
    v35[0] = *(v12 + 2);
    *(v35 + 12) = *(v12 + 44);
    sub_181E2A054(v14, v13, v15);
    v23 = v34;
    *v9 = v33;
    *(v9 + 1) = v23;
    *(v9 + 2) = v35[0];
    *(v9 + 44) = *(v35 + 12);
  }

  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_181B74E48(v9, v2 + v16);
  return swift_endAccess();
}

uint64_t sub_181E2A054(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v3;
  v7 = v3[1];
  if (v7)
  {
    v10 = v7[4];
    v9 = v7[5];
    v12 = v7[2];
    v11 = v7[3];

    sub_181E6550C(v12);
    if (a3)
    {
      if (v9)
      {
        v13 = HIBYTE(v9) & 0xF;
        if ((v9 & 0x2000000000000000) == 0)
        {
          v13 = v10 & 0xFFFFFFFFFFFFLL;
        }

        if (v13 | v12)
        {
          goto LABEL_7;
        }

LABEL_9:

        v14 = 0;
        goto LABEL_10;
      }

      if (!v12)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    if (a3)
    {
      goto LABEL_9;
    }
  }

LABEL_7:
  type metadata accessor for EndpointCommon.EndpointCommonBacking();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = v11;
  *(v14 + 32) = v10;
  *(v14 + 40) = v9;
  *(v14 + 48) = a1;
  *(v14 + 56) = a2;
  *(v14 + 64) = a3 & 1;

LABEL_10:

  *v3 = v8;
  v3[1] = v14;
  return result;
}

uint64_t nw_framer_duplicate_options(void *a1, uint64_t *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!a2)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_framer_duplicate_options";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (__nwlog_fault(v12, &type, &v19))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v13 = __nwlog_obj();
        v14 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v22 = "nw_framer_duplicate_options";
          _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null existing_handle", buf, 0xCu);
        }
      }

      else if (v19 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v13 = __nwlog_obj();
        v16 = type;
        v17 = os_log_type_enabled(v13, type);
        if (backtrace_string)
        {
          if (v17)
          {
            *buf = 136446466;
            v22 = "nw_framer_duplicate_options";
            v23 = 2082;
            v24 = backtrace_string;
            _os_log_impl(&dword_181A37000, v13, v16, "%{public}s called with null existing_handle, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_25;
        }

        if (v17)
        {
          *buf = 136446210;
          v22 = "nw_framer_duplicate_options";
          _os_log_impl(&dword_181A37000, v13, v16, "%{public}s called with null existing_handle, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v13 = __nwlog_obj();
        v18 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v22 = "nw_framer_duplicate_options";
          _os_log_impl(&dword_181A37000, v13, v18, "%{public}s called with null existing_handle, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_25:
    if (v12)
    {
      free(v12);
    }

    v4 = 0;
    goto LABEL_8;
  }

  v4 = malloc_type_calloc(1uLL, 0x10uLL, 0x5BDD80E5uLL);
  if (v4)
  {
    v5 = *a2;
    if (!*a2)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v6 = gLogObj;
  os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  v22 = "nw_framer_duplicate_options";
  v23 = 2048;
  v24 = 1;
  v25 = 2048;
  v26 = 16;
  v7 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v7);
  if (!result)
  {
    free(v7);
    v5 = *a2;
    if (!*a2)
    {
LABEL_8:

      return v4;
    }

LABEL_7:
    v9 = nw_dictionary_copy(v5);
    v10 = *v4;
    *v4 = v9;

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

void nw_framer_deallocate_options(uint64_t a1, void **a2)
{
  v3 = *a2;
  *a2 = 0;

  v4 = a2[1];
  a2[1] = 0;

  free(a2);
}

uint64_t nw_protocol_definition_get_options_comparator(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1[15];
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_protocol_definition_get_options_comparator";
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
        v15 = "nw_protocol_definition_get_options_comparator";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null definition", buf, 0xCu);
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
          v15 = "nw_protocol_definition_get_options_comparator";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_protocol_definition_get_options_comparator";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null definition, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_protocol_definition_get_options_comparator";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
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

uint64_t nw_protocol_definition_get_check_equality_options(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1[14];
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_protocol_definition_get_check_equality_options";
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
        v15 = "nw_protocol_definition_get_check_equality_options";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null definition", buf, 0xCu);
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
          v15 = "nw_protocol_definition_get_check_equality_options";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_protocol_definition_get_check_equality_options";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null definition, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_protocol_definition_get_check_equality_options";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
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

uint64_t nw_framer_options_are_equal(void *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = a1;
  v6 = *a2;
  v7 = *a3;
  if (*a2)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = v6 == v7;
  }

  else
  {
    count = nw_dictionary_get_count(v6);
    if (count == nw_dictionary_get_count(*a3))
    {
      v14 = 0;
      v15 = &v14;
      v16 = 0x2020000000;
      v17 = 1;
      v11 = *a2;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = ___ZL27nw_framer_options_are_equalPU36objcproto25OS_nw_protocol_definition8NSObjectPvS2__block_invoke;
      v13[3] = &unk_1E6A34C68;
      v13[4] = &v14;
      v13[5] = a3;
      nw_dictionary_apply(v11, v13);
      v9 = *(v15 + 24);
      _Block_object_dispose(&v14, 8);
    }

    else
    {
      v9 = 0;
    }
  }

  return v9 & 1;
}

uint64_t sub_181E2ABEC(unint64_t a1, unint64_t a2)
{
  v4 = (a1 | a2) == 0;
  if (a1 && a2)
  {
    if (a1 == a2)
    {
      return 1;
    }

    v13 = v2;
    v14 = v3;
    v6 = (a1 + OBJC_IVAR____TtC7Network12__NWPathFlow_flow);
    v8 = a1;
    swift_beginAccess();
    v12[0] = *(v6 + 3);

    v9 = (a2 + OBJC_IVAR____TtC7Network12__NWPathFlow_flow);
    v10 = a2;
    swift_beginAccess();
    v11 = *(v9 + 3);

    return _s7Network10SystemUUIDV2eeoiySbAC_ACtFZ_0(v12, &v11);
  }

  return v4;
}

uint64_t sub_181E2ACC0()
{
  sub_181AB612C(*(v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_181E2AE9C(uint64_t result, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = *(result + 264);
  v4 = *(result + 312);
  if (*(result + 168) == 0 || v4 == 0)
  {
    goto LABEL_20;
  }

  v6 = v4[4];
  if (v4[2] >= v4[3] + v6)
  {
    v7 = v4[3] + v6;
  }

  else
  {
    v7 = v4[2];
  }

  *&v22 = *(result + 312);
  *(&v22 + 1) = v6;
  v23 = v7;
  v8 = swift_retain_n();
  if (v6 != v7)
  {
    v9 = v4;
    goto LABEL_12;
  }

  if (sub_181AC81FC(v8))
  {
    v6 = *(&v22 + 1);
    v9 = v22;
LABEL_12:
    v10 = v6 + 1;
    *(&v22 + 1) = v6 + 1;
    v21 = *&v9[3 * v6 + 6];
    v11 = (*(a2 + 16))(a2, &v21);
    while (1)
    {
      if (v10 == v23)
      {
        if ((sub_181AC81FC(v11) & 1) == 0)
        {
          v12 = 1;
          goto LABEL_19;
        }

        v10 = *(&v22 + 1);
        v9 = v22;
      }

      *(&v22 + 1) = v10 + 1;
      v21 = *&v9[3 * v10 + 6];
      v11 = (*(a2 + 16))(a2, &v21);
      ++v10;
    }
  }

  v12 = 0;
LABEL_19:

  if ((v12 & 1) == 0)
  {
LABEL_20:
    if (v3)
    {
      v13 = 1 << *(v3 + 32);
      v14 = -1;
      if (v13 < 64)
      {
        v14 = ~(-1 << v13);
      }

      v15 = v14 & *(v3 + 64);
      v16 = (v13 + 63) >> 6;

      v17 = 0;
      while (v15)
      {
LABEL_29:
        v19 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
        v20 = *(*(v3 + 56) + ((v17 << 9) | (8 * v19)));
        if ((*(v20 + 80) & 0x100) != 0 && (*(v20 + 80) & 0x13) != 1)
        {
          v22 = *(v20 + 32);
          (*(a2 + 16))(a2, &v22);
        }
      }

      while (1)
      {
        v18 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          __break(1u);
        }

        if (v18 >= v16)
        {
        }

        v15 = *(v3 + 64 + 8 * v18);
        ++v17;
        if (v15)
        {
          v17 = v18;
          goto LABEL_29;
        }
      }
    }
  }

  return result;
}

nw_parameters_t *nw_listener_reconcile_advertised_endpoints(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v89 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v43 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v9[2];
  if (v13 && !_nw_parameters_get_logging_disabled(v13))
  {
    if (__nwlog_listener_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
    }

    v14 = glistenerLogObj;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = v9;
      v16 = v15 + 42;

      *buf = 136446978;
      *&buf[4] = "nw_listener_reconcile_advertised_endpoints";
      *&buf[12] = 2082;
      *&buf[14] = v16;
      *&buf[22] = 2112;
      v87 = v10;
      LOWORD(v88) = 2112;
      *(&v88 + 2) = v11;
      _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEBUG, "%{public}s [%{public}s] Reconciling advertised endpoints %@ for path %@", buf, 0x2Au);
    }
  }

  v77 = 0;
  v78 = &v77;
  v79 = 0x2020000000;
  v80 = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v87 = __Block_byref_object_copy__18668;
  *&v88 = __Block_byref_object_dispose__18669;
  *(&v88 + 1) = 0;
  v71 = 0;
  v72 = &v71;
  v73 = 0x3032000000;
  v74 = __Block_byref_object_copy__18668;
  v75 = __Block_byref_object_dispose__18669;
  v76 = 0;
  v67 = 0;
  v68 = &v67;
  v69 = 0x2020000000;
  v70 = 0;
  v61 = 0;
  v62 = &v61;
  v63 = 0x3032000000;
  v64 = __Block_byref_object_copy__18668;
  v65 = __Block_byref_object_dispose__18669;
  v66 = 0;
  v17 = *(v9 + 124);
  if (v10)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = ___ZL42nw_listener_reconcile_advertised_endpointsP22NWConcrete_nw_listenerP7NSArrayIP13_NWAdvertiserEPU22objcproto11OS_nw_array8NSObjectPU21objcproto10OS_nw_pathS6_S3__block_invoke;
    aBlock[3] = &unk_1E6A2E078;
    v56 = &v71;
    v57 = &v67;
    v58 = &v61;
    v52 = v43;
    v53 = v11;
    v54 = v9;
    v55 = v12;
    v59 = &v77;
    v60 = buf;
    _nw_array_apply(v10, aBlock);
  }

  if (!v12 || nw_advertise_descriptor_get_type(v12[2]) == 2)
  {
    nw_listener_set_device_id(v9, v68[3]);
    nw_listener_set_device_txt_record(v9, v62[5]);
    nw_listener_set_authorized_keys(v9, v72[5]);
    if ([v72[5] count])
    {
      v18 = v9;
      if (nw_parameters_get_include_peer_to_peer(v9[2]) && nw_parameters_get_multipath_service(v9[2]) && (v19 = *(v18 + 34)) != 0)
      {
        v20 = v19;
        v21 = v20[2] == 2;

        if (v21 && (v78[3] & 1) == 0)
        {
          v22 = v9[2];
          if (v22 && !_nw_parameters_get_logging_disabled(v22))
          {
            if (__nwlog_listener_log::onceToken != -1)
            {
              dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
            }

            v23 = glistenerLogObj;
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              id_string = nw_listener_get_id_string(v18);
              *v81 = 136446466;
              *&v81[4] = "nw_listener_reconcile_advertised_endpoints";
              *&v81[12] = 2082;
              *&v81[14] = id_string;
              _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_DEFAULT, "%{public}s [%{public}s] Resetting AWDL advertising timer", v81, 0x16u);
            }
          }

          nw_listener_start_advertise_timer_on_queue(v18);
          if (!v17)
          {
            v25 = v9[2];
            if (v25 && !_nw_parameters_get_logging_disabled(v25))
            {
              if (__nwlog_listener_log::onceToken != -1)
              {
                dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
              }

              v26 = glistenerLogObj;
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                v27 = nw_listener_get_id_string(v18);
                *v81 = 136446466;
                *&v81[4] = "nw_listener_reconcile_advertised_endpoints";
                *&v81[12] = 2082;
                *&v81[14] = v27;
                _os_log_impl(&dword_181A37000, v26, OS_LOG_TYPE_DEFAULT, "%{public}s [%{public}s] Restarting bonjour to add AWDL", v81, 0x16u);
              }
            }

            nw_listener_restart_awdl_advertising_on_queue(v18);
          }
        }
      }

      else
      {
      }
    }
  }

  if (v43)
  {
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v28 = v43;
    v29 = [v28 countByEnumeratingWithState:&v47 objects:v85 count:16];
    if (v29)
    {
      v30 = *v48;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v48 != v30)
          {
            objc_enumerationMutation(v28);
          }

          v32 = *(*(&v47 + 1) + 8 * i);
          if (([*(*&buf[8] + 40) containsObject:v32] & 1) == 0)
          {
            [(_NWAdvertiser *)v32 stop];
          }
        }

        v29 = [v28 countByEnumeratingWithState:&v47 objects:v85 count:16];
      }

      while (v29);
    }
  }

  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = ___ZL42nw_listener_reconcile_advertised_endpointsP22NWConcrete_nw_listenerP7NSArrayIP13_NWAdvertiserEPU22objcproto11OS_nw_array8NSObjectPU21objcproto10OS_nw_pathS6_S3__block_invoke_205;
  v45[3] = &unk_1E6A3CCB8;
  v33 = v9;
  v46 = v33;
  if (v10)
  {
    _nw_array_apply(v10, v45);
  }

  if (!v11)
  {
    goto LABEL_60;
  }

  v34 = *(*&buf[8] + 40);
  if (v34)
  {
    if ([v34 count])
    {
      goto LABEL_60;
    }
  }

  v35 = v11;
  v36 = _nw_path_get_advertise_descriptor(v35);

  if (!v36 || (v37 = v36, v38 = v37[2] == 2, v37, !v38))
  {
LABEL_59:

LABEL_60:
    v9 = *(*&buf[8] + 40);
    goto LABEL_61;
  }

  v39 = _nw_path_copy_flows(v35);
  v40 = v39;
  if (!v39)
  {
    goto LABEL_58;
  }

  *v81 = 0;
  *&v81[8] = v81;
  *&v81[16] = 0x3032000000;
  v82 = __Block_byref_object_copy__18668;
  v83 = __Block_byref_object_dispose__18669;
  v84 = 0;
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = ___ZL42nw_listener_reconcile_advertised_endpointsP22NWConcrete_nw_listenerP7NSArrayIP13_NWAdvertiserEPU22objcproto11OS_nw_array8NSObjectPU21objcproto10OS_nw_pathS6_S3__block_invoke_2;
  v44[3] = &unk_1E6A39B60;
  v44[4] = v81;
  _nw_array_apply(v39, v44);
  v41 = *(*&v81[8] + 40);
  if (v41)
  {
    nw_listener_set_state_on_queue(v33, 3, *(*&v81[8] + 40));
    v9 = *(*&buf[8] + 40);
  }

  _Block_object_dispose(v81, 8);

  if (!v41)
  {
LABEL_58:

    goto LABEL_59;
  }

LABEL_61:
  _Block_object_dispose(&v61, 8);

  _Block_object_dispose(&v67, 8);
  _Block_object_dispose(&v71, 8);

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v77, 8);

  return v9;
}

void sub_181E2B8A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, id a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, id a58, char a59)
{
  _Block_object_dispose(&a43, 8);

  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a53, 8);

  _Block_object_dispose((v64 - 176), 8);
  _Block_object_dispose(&a59, 8);

  _Unwind_Resume(a1);
}

void nw_listener_set_device_id(void *a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __nw_listener_set_device_id_block_invoke;
    aBlock[3] = &unk_1E6A3AC58;
    v15 = v3;
    v16 = a2;
    v5 = _Block_copy(aBlock);
    os_unfair_lock_lock(v4 + 2);
    v5[2](v5);
    os_unfair_lock_unlock(v4 + 2);

    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v20 = "nw_listener_set_device_id";
  v7 = _os_log_send_and_compose_impl();

  v18 = OS_LOG_TYPE_ERROR;
  v17 = 0;
  if (__nwlog_fault(v7, &v18, &v17))
  {
    if (v18 == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = v18;
      if (os_log_type_enabled(v8, v18))
      {
        *buf = 136446210;
        v20 = "nw_listener_set_device_id";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null listener", buf, 0xCu);
      }
    }

    else if (v17 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v11 = v18;
      v12 = os_log_type_enabled(v8, v18);
      if (backtrace_string)
      {
        if (v12)
        {
          *buf = 136446466;
          v20 = "nw_listener_set_device_id";
          v21 = 2082;
          v22 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null listener, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v12)
      {
        *buf = 136446210;
        v20 = "nw_listener_set_device_id";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null listener, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = v18;
      if (os_log_type_enabled(v8, v18))
      {
        *buf = 136446210;
        v20 = "nw_listener_set_device_id";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null listener, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v7)
  {
    free(v7);
  }

LABEL_3:
}

const char *__nw_listener_set_device_id_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 232);
  if (v2)
  {
    free(v2);
    *(*(a1 + 32) + 232) = 0;
  }

  result = *(a1 + 40);
  if (result)
  {
    result = strdup(result);
    if (!result)
    {
      v4 = __nwlog_obj();
      os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
      v5 = _os_log_send_and_compose_impl();

      result = __nwlog_should_abort(v5);
      if (result)
      {
        __break(1u);
        return result;
      }

      free(v5);
      result = 0;
    }

    *(*(a1 + 32) + 232) = result;
  }

  return result;
}

void nw_listener_set_device_txt_record(void *a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __nw_listener_set_device_txt_record_block_invoke;
    aBlock[3] = &unk_1E6A3D760;
    v16 = v4;
    v17 = v3;
    v6 = _Block_copy(aBlock);
    os_unfair_lock_lock(v3 + 2);
    v6[2](v6);
    os_unfair_lock_unlock(v3 + 2);

    goto LABEL_3;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  v21 = "nw_listener_set_device_txt_record";
  v8 = _os_log_send_and_compose_impl();

  v19 = OS_LOG_TYPE_ERROR;
  v18 = 0;
  if (__nwlog_fault(v8, &v19, &v18))
  {
    if (v19 == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = v19;
      if (os_log_type_enabled(v9, v19))
      {
        *buf = 136446210;
        v21 = "nw_listener_set_device_txt_record";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null listener", buf, 0xCu);
      }
    }

    else if (v18 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v12 = v19;
      v13 = os_log_type_enabled(v9, v19);
      if (backtrace_string)
      {
        if (v13)
        {
          *buf = 136446466;
          v21 = "nw_listener_set_device_txt_record";
          v22 = 2082;
          v23 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null listener, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v13)
      {
        *buf = 136446210;
        v21 = "nw_listener_set_device_txt_record";
        _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null listener, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v14 = v19;
      if (os_log_type_enabled(v9, v19))
      {
        *buf = 136446210;
        v21 = "nw_listener_set_device_txt_record";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null listener, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v8)
  {
    free(v8);
  }

LABEL_3:
}

void __nw_listener_set_device_txt_record_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v2 + 240);
  *(v2 + 240) = v3;
}

void nw_listener_set_authorized_keys(void *a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __nw_listener_set_authorized_keys_block_invoke;
    aBlock[3] = &unk_1E6A3D760;
    v16 = v4;
    v17 = v3;
    v6 = _Block_copy(aBlock);
    os_unfair_lock_lock(v3 + 2);
    v6[2](v6);
    os_unfair_lock_unlock(v3 + 2);

    goto LABEL_3;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  v21 = "nw_listener_set_authorized_keys";
  v8 = _os_log_send_and_compose_impl();

  v19 = OS_LOG_TYPE_ERROR;
  v18 = 0;
  if (__nwlog_fault(v8, &v19, &v18))
  {
    if (v19 == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = v19;
      if (os_log_type_enabled(v9, v19))
      {
        *buf = 136446210;
        v21 = "nw_listener_set_authorized_keys";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null listener", buf, 0xCu);
      }
    }

    else if (v18 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v12 = v19;
      v13 = os_log_type_enabled(v9, v19);
      if (backtrace_string)
      {
        if (v13)
        {
          *buf = 136446466;
          v21 = "nw_listener_set_authorized_keys";
          v22 = 2082;
          v23 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null listener, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v13)
      {
        *buf = 136446210;
        v21 = "nw_listener_set_authorized_keys";
        _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null listener, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v14 = v19;
      if (os_log_type_enabled(v9, v19))
      {
        *buf = 136446210;
        v21 = "nw_listener_set_authorized_keys";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null listener, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v8)
  {
    free(v8);
  }

LABEL_3:
}

void __nw_listener_set_authorized_keys_block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v2 = gLogObj;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
  }

  else
  {
    v3 = gLogFDOverride;

    if (v3 == -1)
    {
      goto LABEL_34;
    }
  }

  v4 = [*(a1 + 32) count];
  v5 = *(*(a1 + 40) + 16);
  if (v4)
  {
    if (v5 && !_nw_parameters_get_logging_disabled(v5))
    {
      if (__nwlog_listener_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
      }

      v6 = glistenerLogObj;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        id_string = nw_listener_get_id_string(*(a1 + 40));
        *buf = 136446466;
        v31 = "nw_listener_set_authorized_keys_block_invoke";
        v32 = 2082;
        v33 = id_string;
        _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEBUG, "%{public}s [%{public}s] Resetting authorized keys", buf, 0x16u);
      }
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v8 = *(a1 + 32);
    v9 = [v8 countByEnumeratingWithState:&v26 objects:v36 count:16];
    if (v9)
    {
      v11 = *v27;
      *&v10 = 136446722;
      v23 = v10;
      do
      {
        v12 = 0;
        do
        {
          if (*v27 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(a1 + 40) + 16);
          if (v13)
          {
            v14 = *(*(&v26 + 1) + 8 * v12);
            if (!_nw_parameters_get_logging_disabled(v13))
            {
              if (__nwlog_listener_log::onceToken != -1)
              {
                dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
              }

              v15 = glistenerLogObj;
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
              {
                v16 = nw_listener_get_id_string(*(a1 + 40));
                v17 = [v14 hash];
                *buf = v23;
                v31 = "nw_listener_set_authorized_keys_block_invoke";
                v32 = 2082;
                v33 = v16;
                v34 = 2048;
                v35 = v17;
                _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_DEBUG, "%{public}s [%{public}s] Authorized key #0x%lx", buf, 0x20u);
              }
            }
          }

          ++v12;
        }

        while (v9 != v12);
        v9 = [v8 countByEnumeratingWithState:&v26 objects:v36 count:16];
      }

      while (v9);
    }

LABEL_33:

    goto LABEL_34;
  }

  if (v5 && !_nw_parameters_get_logging_disabled(v5))
  {
    if (__nwlog_listener_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
    }

    v8 = glistenerLogObj;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v18 = nw_listener_get_id_string(*(a1 + 40));
      *buf = 136446466;
      v31 = "nw_listener_set_authorized_keys_block_invoke";
      v32 = 2082;
      v33 = v18;
      _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEBUG, "%{public}s [%{public}s] No keys provided", buf, 0x16u);
    }

    goto LABEL_33;
  }

LABEL_34:
  if ([*(a1 + 32) count])
  {
    v20 = *(a1 + 40);
    v19 = a1 + 40;
    objc_storeStrong((v20 + 216), *(v19 - 8));
    v21 = *v19;
    if ((*(*v19 + 310) & 8) != 0)
    {
      v22 = v21[3];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __nw_listener_set_authorized_keys_block_invoke_63;
      v24[3] = &unk_1E6A3D868;
      v25 = v21;
      nw_queue_context_async(v22, v24);
    }
  }
}

id nw_connection_copy_endpoint_handler_for_handler_id(NWConcrete_nw_connection *a1, __int16 a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__83595;
  v10 = __Block_byref_object_dispose__83596;
  v11 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = ___ZL50nw_connection_copy_endpoint_handler_for_handler_idP24NWConcrete_nw_connectiont_block_invoke;
  v4[3] = &unk_1E6A3BA60;
  v5 = a2;
  v4[4] = &v6;
  nw_endpoint_handler_apply_to_leaf_children(a1, v4);
  v2 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v2;
}

void sub_181E2CA64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t nw_endpoint_handler_apply_to_leaf_children(void *a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    if (objc_opt_respondsToSelector())
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v27 = 1;
      *type = 0;
      v22 = type;
      v23 = 0x2020000000;
      v24 = 0;
      v5 = v3[33];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __nw_endpoint_handler_apply_to_leaf_children_block_invoke;
      v17[3] = &unk_1E6A30F00;
      v19 = type;
      v20 = buf;
      v6 = v4;
      v18 = v6;
      [v5 applyWithHandler:v3 toChildren:v17];
      if (v22[24])
      {
        v7 = *(*&buf[8] + 24);
      }

      else
      {
        v7 = (*(v6 + 2))(v6, v3);
      }

      _Block_object_dispose(type, 8);
      _Block_object_dispose(buf, 8);
    }

    else
    {
      v7 = (*(v4 + 2))(v4, v3);
    }

    goto LABEL_8;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_endpoint_handler_apply_to_leaf_children";
  v10 = _os_log_send_and_compose_impl();

  type[0] = OS_LOG_TYPE_ERROR;
  v25 = 0;
  if (__nwlog_fault(v10, type, &v25))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type[0];
      if (os_log_type_enabled(v11, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_endpoint_handler_apply_to_leaf_children";
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null handler", buf, 0xCu);
      }
    }

    else if (v25 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v11 = __nwlog_obj();
      v14 = type[0];
      v15 = os_log_type_enabled(v11, type[0]);
      if (backtrace_string)
      {
        if (v15)
        {
          *buf = 136446466;
          *&buf[4] = "nw_endpoint_handler_apply_to_leaf_children";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_25;
      }

      if (v15)
      {
        *buf = 136446210;
        *&buf[4] = "nw_endpoint_handler_apply_to_leaf_children";
        _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null handler, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v11 = __nwlog_obj();
      v16 = type[0];
      if (os_log_type_enabled(v11, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_endpoint_handler_apply_to_leaf_children";
        _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_25:
  if (v10)
  {
    free(v10);
  }

  v7 = 0;
LABEL_8:

  return v7 & 1;
}

void sub_181E2CE3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v14 - 96), 8);

  _Unwind_Resume(a1);
}

uint64_t sub_181E2CE84(uint64_t *a1, uint64_t *a2)
{
  v152 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[5];
  v139 = a1[4];
  v140 = a1[3];
  v7 = a1[6];
  v6 = a1[7];
  v9 = a1[8];
  v8 = a1[9];
  v10 = a1[10];
  v11 = a1[11];
  v13 = a1[12];
  v12 = a1[13];
  v136 = *(a1 + 15);
  v14 = *(a1 + 136);
  v15 = a1[18];
  v17 = *a2;
  v16 = a2[1];
  v18 = a2[2];
  v141 = a2[3];
  v138 = a2[4];
  v19 = a2[6];
  v137 = a2[5];
  v21 = a2[7];
  v20 = a2[8];
  v23 = a2[9];
  v22 = a2[10];
  v25 = a2[11];
  v24 = a2[12];
  v26 = a2[13];
  v135 = *(a2 + 15);
  v27 = *(a2 + 136);
  v28 = a2[18];
  if (v2)
  {
    *&v150 = v2;
    if (v17)
    {
      v133 = v6;
      v134 = v5;
      v131 = v20;
      v132 = v21;
      v129 = v8;
      v130 = v9;
      v127 = v22;
      v128 = v23;
      v125 = v11;
      v126 = v10;
      v123 = v24;
      v124 = v25;
      v121 = v12;
      v122 = v13;
      v116 = v26;
      v117 = v27;
      v118 = v14;
      v119 = v28;
      v120 = v15;
      *&v148 = v17;
      v29 = _s7Network9InterfaceV2eeoiySbAC_ACtFZ_0(&v150, &v148);
      swift_retain_n();

      if ((v29 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_6;
    }

LABEL_28:

    goto LABEL_29;
  }

  v133 = v6;
  v134 = v5;
  v131 = a2[8];
  v132 = a2[7];
  v129 = v8;
  v130 = v9;
  v127 = a2[10];
  v128 = a2[9];
  v125 = v11;
  v126 = v10;
  v123 = a2[12];
  v124 = a2[11];
  v121 = v12;
  v122 = v13;
  v116 = a2[13];
  v117 = *(a2 + 136);
  v118 = v14;
  v119 = a2[18];
  v120 = v15;
  if (v17)
  {
    goto LABEL_28;
  }

LABEL_6:
  if (!v3)
  {
    if (v16)
    {
      return 0;
    }

    goto LABEL_33;
  }

  if (!v16)
  {
    return 0;
  }

  v30 = v3[3];
  if (v30 != v16[3])
  {
    return 0;
  }

  if (!v30 || v3 == v16)
  {
LABEL_33:
    if (!v4)
    {
      goto LABEL_60;
    }

    goto LABEL_34;
  }

  v115 = v19;
  v31 = v3[4];
  v32 = v31 + v30;
  if (v3[2] < v31 + v30)
  {
    v32 = v3[2];
  }

  *&v150 = v3;
  *(&v150 + 1) = v31;
  v151 = v32;
  v33 = v16[4];
  v34 = v33 + v30;
  if (v16[2] < v34)
  {
    v34 = v16[2];
  }

  *&v148 = v16;
  *(&v148 + 1) = v33;
  v149 = v34;
  v35 = v16;
  while (1)
  {
    v36 = *(&v150 + 1);
    if (*(&v150 + 1) != v151)
    {
      goto LABEL_19;
    }

    v22 = sub_181AC81FC(v22);
    if (v22)
    {
      v36 = *(&v150 + 1);
LABEL_19:
      *(&v150 + 1) = v36 + 1;
      v37 = *(v150 + v36 + 40);
      goto LABEL_21;
    }

    v37 = 5;
LABEL_21:
    if (v33 != v149)
    {
      goto LABEL_24;
    }

    v22 = sub_181AC81FC(v22);
    v35 = v148;
    if ((v22 & 1) == 0)
    {
      break;
    }

    v33 = *(&v148 + 1);
LABEL_24:
    v38 = v33 + 1;
    *(&v148 + 1) = v33 + 1;
    v39 = *(v35 + v33 + 40);
    if (v37 == 5)
    {
      swift_retain_n();

      v54 = v39 == 5;
      v19 = v115;
      if (!v54)
      {
        return 0;
      }

      goto LABEL_33;
    }

    if (v39 != 5)
    {
      v40 = qword_182B03358[v39];
      v33 = v38;
      if (qword_182B03358[v37] == v40)
      {
        continue;
      }
    }

    goto LABEL_96;
  }

  if (v37 != 5)
  {
    goto LABEL_96;
  }

  swift_retain_n();

  v19 = v115;
  if (!v4)
  {
LABEL_60:
    v43 = v7;
    if (v18)
    {
      return 0;
    }

    goto LABEL_61;
  }

LABEL_34:
  if (!v18)
  {
    return 0;
  }

  v42 = v4[3];
  if (v42 != v18[3])
  {
    return 0;
  }

  v43 = v7;
  if (!v42 || v4 == v18)
  {
LABEL_61:
    v55 = v140;
    if (!v140)
    {
      goto LABEL_88;
    }

    goto LABEL_62;
  }

  v44 = v4[4];
  v45 = v44 + v42;
  if (v4[2] < v44 + v42)
  {
    v45 = v4[2];
  }

  *&v150 = v4;
  *(&v150 + 1) = v44;
  v151 = v45;
  v46 = v18[4];
  v47 = v46 + v42;
  if (v18[2] < v47)
  {
    v47 = v18[2];
  }

  *&v148 = v18;
  *(&v148 + 1) = v46;
  v149 = v47;
  v48 = v18;
  while (2)
  {
    v49 = *(&v150 + 1);
    if (*(&v150 + 1) == v151)
    {
      v22 = sub_181AC81FC(v22);
      if (v22)
      {
        v49 = *(&v150 + 1);
        goto LABEL_46;
      }

      v50 = 5;
    }

    else
    {
LABEL_46:
      *(&v150 + 1) = v49 + 1;
      v50 = *(v150 + v49 + 40);
    }

    if (v46 != v149)
    {
LABEL_51:
      v51 = v46 + 1;
      *(&v148 + 1) = v46 + 1;
      v52 = *(v48 + v46 + 40);
      if (v50 == 5)
      {
        swift_retain_n();

        if (v52 != 5)
        {
          return 0;
        }

        goto LABEL_61;
      }

      if (v52 == 5)
      {
        goto LABEL_96;
      }

      v53 = qword_182B03380[v52];
      v46 = v51;
      if (qword_182B03380[v50] != v53)
      {
        goto LABEL_96;
      }

      continue;
    }

    break;
  }

  v22 = sub_181AC81FC(v22);
  v48 = v148;
  if (v22)
  {
    v46 = *(&v148 + 1);
    goto LABEL_51;
  }

  if (v50 != 5)
  {
LABEL_96:
    swift_retain_n();

    goto LABEL_97;
  }

  swift_retain_n();

  v55 = v140;
  if (!v140)
  {
LABEL_88:
    if (v141)
    {
      return 0;
    }

    goto LABEL_89;
  }

LABEL_62:
  v56 = v141;
  if (!v141)
  {
    return 0;
  }

  v57 = v55[3];
  if (v57 != v141[3])
  {
    return 0;
  }

  if (v57 && v55 != v141)
  {
    v58 = v55[4];
    v59 = v58 + v57;
    if (v55[2] < v58 + v57)
    {
      v59 = v55[2];
    }

    *&v150 = v55;
    *(&v150 + 1) = v58;
    v151 = v59;
    v60 = v141[4];
    v61 = v60 + v57;
    if (v141[2] < v61)
    {
      v61 = v141[2];
    }

    *&v148 = v141;
    *(&v148 + 1) = v60;
    v149 = v61;
    while (1)
    {
      v62 = *(&v150 + 1);
      if (*(&v150 + 1) != v151)
      {
        goto LABEL_74;
      }

      v22 = sub_181AC81FC(v22);
      if (v22)
      {
        break;
      }

      v63 = 5;
LABEL_76:
      if (v60 == v149)
      {
        v22 = sub_181AC81FC(v22);
        v56 = v148;
        if ((v22 & 1) == 0)
        {
          if (v63 == 5)
          {
            swift_retain_n();

            if (!v139)
            {
              goto LABEL_102;
            }

LABEL_90:
            if (!v138)
            {
              return 0;
            }

            v67 = v139[3];
            if (v67 != v138[3])
            {
              return 0;
            }

            if (v67)
            {
              if (v139 != v138)
              {

                v69 = sub_1822C46C8(v68, v139);

                if ((v69 & 1) == 0)
                {
                  return 0;
                }
              }
            }

            goto LABEL_103;
          }

LABEL_110:
          swift_retain_n();

LABEL_29:

          goto LABEL_30;
        }

        v60 = *(&v148 + 1);
      }

      v64 = v60 + 1;
      *(&v148 + 1) = v60 + 1;
      v65 = *(v56 + v60 + 40);
      if (v63 == 5)
      {
        swift_retain_n();

        if (v65 != 5)
        {
          return 0;
        }

        goto LABEL_89;
      }

      if (v65 != 5)
      {
        v66 = qword_182B03380[v65];
        v60 = v64;
        if (qword_182B03380[v63] == v66)
        {
          continue;
        }
      }

      goto LABEL_110;
    }

    v62 = *(&v150 + 1);
LABEL_74:
    *(&v150 + 1) = v62 + 1;
    v63 = *(v150 + v62 + 40);
    goto LABEL_76;
  }

LABEL_89:
  if (v139)
  {
    goto LABEL_90;
  }

LABEL_102:
  if (v138)
  {
    return 0;
  }

LABEL_103:
  if (v134)
  {
    if (!v137)
    {
      return 0;
    }

    v70 = v134[3];
    if (v70 != v137[3])
    {
      return 0;
    }

    if (v70)
    {
      if (v134 != v137)
      {

        v72 = sub_1822C3FDC(v71, v134);

        if ((v72 & 1) == 0)
        {
          return 0;
        }
      }
    }
  }

  else if (v137)
  {
    return 0;
  }

  if (!v43)
  {
    if (v19)
    {
      return 0;
    }

    goto LABEL_135;
  }

  if (!v19)
  {
    return 0;
  }

  v73 = v43[3];
  if (v73 != v19[3])
  {
    return 0;
  }

  if (!v73 || v43 == v19)
  {
LABEL_135:
    if (!v133)
    {
      goto LABEL_144;
    }

    goto LABEL_136;
  }

  v74 = v43[4];
  v75 = v74 + v73;
  if (v43[2] < v74 + v73)
  {
    v75 = v43[2];
  }

  *&v150 = v43;
  *(&v150 + 1) = v74;
  v151 = v75;
  v76 = v19[4];
  v77 = v76 + v73;
  if (v19[2] < v77)
  {
    v77 = v19[2];
  }

  *&v148 = v19;
  *(&v148 + 1) = v76;
  v149 = v77;
  swift_retain_n();

  while (1)
  {
    v79 = *(&v150 + 1);
    if (*(&v150 + 1) != v151)
    {
      goto LABEL_125;
    }

    v78 = sub_181AC81FC(v78);
    if (v78)
    {
      v79 = *(&v150 + 1);
LABEL_125:
      v80 = 0;
      *(&v150 + 1) = v79 + 1;
      v81 = *(v150 + 16 * v79 + 40);
      goto LABEL_127;
    }

    v81 = 0uLL;
    v80 = 1;
LABEL_127:
    if (v76 != v149)
    {
      goto LABEL_130;
    }

    v142 = v81;
    if ((sub_181AC81FC(v78) & 1) == 0)
    {
      break;
    }

    v76 = *(&v148 + 1);
    v81 = v142;
LABEL_130:
    *(&v148 + 1) = v76 + 1;
    if ((v80 & 1) == 0)
    {
      *uu2 = *(v148 + 16 * v76 + 40);
      *uu1 = v81;
      v78 = uuid_compare(uu1, uu2);
      ++v76;
      if (!v78)
      {
        continue;
      }
    }

LABEL_132:

    goto LABEL_97;
  }

  if ((v80 & 1) == 0)
  {
    goto LABEL_97;
  }

  if (!v133)
  {
LABEL_144:
    if (v132)
    {
      return 0;
    }

    goto LABEL_145;
  }

LABEL_136:
  if (!v132)
  {
    return 0;
  }

  v82 = v133[3];
  if (v82 != v132[3])
  {
    return 0;
  }

  if (v82)
  {
    if (v133 != v132)
    {

      v84 = sub_1822C3FDC(v83, v133);

      if ((v84 & 1) == 0)
      {
        return 0;
      }
    }
  }

LABEL_145:
  if (!v130)
  {
    if (v131)
    {
      return 0;
    }

    goto LABEL_167;
  }

  if (!v131)
  {
    return 0;
  }

  v85 = v130[3];
  if (v85 != v131[3])
  {
    return 0;
  }

  if (!v85 || v130 == v131)
  {
LABEL_167:
    if (!v129)
    {
      goto LABEL_176;
    }

    goto LABEL_168;
  }

  v86 = v130[4];
  v87 = v86 + v85;
  if (v130[2] < v86 + v85)
  {
    v87 = v130[2];
  }

  *&v150 = v130;
  *(&v150 + 1) = v86;
  v151 = v87;
  v88 = v131[4];
  v89 = v88 + v85;
  if (v131[2] < v89)
  {
    v89 = v131[2];
  }

  *&v148 = v131;
  *(&v148 + 1) = v88;
  v149 = v89;
  swift_retain_n();

  while (1)
  {
    v91 = *(&v150 + 1);
    if (*(&v150 + 1) != v151)
    {
      goto LABEL_158;
    }

    v90 = sub_181AC81FC(v90);
    if (v90)
    {
      v91 = *(&v150 + 1);
LABEL_158:
      v92 = 0;
      *(&v150 + 1) = v91 + 1;
      v143 = *(v150 + 16 * v91 + 40);
      goto LABEL_160;
    }

    v143 = 0u;
    v92 = 1;
LABEL_160:
    if (v88 != v149)
    {
      goto LABEL_163;
    }

    if ((sub_181AC81FC(v90) & 1) == 0)
    {
      break;
    }

    v88 = *(&v148 + 1);
LABEL_163:
    *(&v148 + 1) = v88 + 1;
    if ((v92 & 1) == 0)
    {
      *uu2 = *(v148 + 16 * v88 + 40);
      *uu1 = v143;
      v90 = uuid_compare(uu1, uu2);
      ++v88;
      if (!v90)
      {
        continue;
      }
    }

    goto LABEL_132;
  }

  if ((v92 & 1) == 0)
  {
    goto LABEL_97;
  }

  if (!v129)
  {
LABEL_176:
    if (v128)
    {
      return 0;
    }

    goto LABEL_177;
  }

LABEL_168:
  if (!v128)
  {
    return 0;
  }

  v93 = v129[3];
  if (v93 != v128[3])
  {
    return 0;
  }

  if (v93)
  {
    if (v129 != v128)
    {

      v95 = sub_1822C3FDC(v94, v129);

      if ((v95 & 1) == 0)
      {
        return 0;
      }
    }
  }

LABEL_177:
  if (v126)
  {
    if (!v127)
    {
      return 0;
    }

    v96 = v126[3];
    if (v96 != v127[3])
    {
      return 0;
    }

    if (v96 && v126 != v127)
    {
      v97 = v126[4];
      v98 = v97 + v96;
      if (v126[2] < v97 + v96)
      {
        v98 = v126[2];
      }

      *&v150 = v126;
      *(&v150 + 1) = v97;
      v151 = v98;
      v99 = v127[4];
      v100 = v99 + v96;
      if (v127[2] < v100)
      {
        v100 = v127[2];
      }

      *&v148 = v127;
      *(&v148 + 1) = v99;
      v149 = v100;
      swift_retain_n();

      while (1)
      {
        v102 = *(&v150 + 1);
        if (*(&v150 + 1) != v151)
        {
          goto LABEL_190;
        }

        v101 = sub_181AC81FC(v101);
        if (v101)
        {
          break;
        }

        v144 = 0u;
        v103 = 1;
LABEL_192:
        if (v99 == v149)
        {
          if ((sub_181AC81FC(v101) & 1) == 0)
          {

            if (v103)
            {

              if (!v125)
              {
                goto LABEL_208;
              }

LABEL_200:
              if (!v124)
              {
                return 0;
              }

              v104 = v125[3];
              if (v104 != v124[3])
              {
                return 0;
              }

              if (v104)
              {
                if (v125 != v124)
                {

                  v106 = sub_1822C3FDC(v105, v125);

                  if ((v106 & 1) == 0)
                  {
                    return 0;
                  }
                }
              }

              goto LABEL_209;
            }

LABEL_97:

LABEL_30:

            return 0;
          }

          v99 = *(&v148 + 1);
        }

        *(&v148 + 1) = v99 + 1;
        if ((v103 & 1) == 0)
        {
          *uu2 = *(v148 + 16 * v99 + 40);
          *uu1 = v144;
          v101 = uuid_compare(uu1, uu2);
          ++v99;
          if (!v101)
          {
            continue;
          }
        }

        goto LABEL_132;
      }

      v102 = *(&v150 + 1);
LABEL_190:
      v103 = 0;
      *(&v150 + 1) = v102 + 1;
      v144 = *(v150 + 16 * v102 + 40);
      goto LABEL_192;
    }
  }

  else if (v127)
  {
    return 0;
  }

  if (v125)
  {
    goto LABEL_200;
  }

LABEL_208:
  if (v124)
  {
    return 0;
  }

LABEL_209:
  if (!v122)
  {
    if (v123)
    {
      return 0;
    }

LABEL_231:
    if (!v121)
    {
      goto LABEL_236;
    }

    goto LABEL_232;
  }

  if (!v123)
  {
    return 0;
  }

  v107 = v122[3];
  if (v107 != v123[3])
  {
    return 0;
  }

  if (!v107 || v122 == v123)
  {
    goto LABEL_231;
  }

  v108 = v122[4];
  v109 = v108 + v107;
  if (v122[2] < v108 + v107)
  {
    v109 = v122[2];
  }

  *&v150 = v122;
  *(&v150 + 1) = v108;
  v151 = v109;
  v110 = v123[4];
  v111 = v110 + v107;
  if (v123[2] < v111)
  {
    v111 = v123[2];
  }

  *&v148 = v123;
  *(&v148 + 1) = v110;
  v149 = v111;
  swift_retain_n();

  while (1)
  {
    v113 = *(&v150 + 1);
    if (*(&v150 + 1) != v151)
    {
      goto LABEL_222;
    }

    v112 = sub_181AC81FC(v112);
    if (v112)
    {
      v113 = *(&v150 + 1);
LABEL_222:
      v114 = 0;
      *(&v150 + 1) = v113 + 1;
      v145 = *(v150 + 16 * v113 + 40);
      goto LABEL_224;
    }

    v145 = 0u;
    v114 = 1;
LABEL_224:
    if (v110 != v149)
    {
      goto LABEL_227;
    }

    if ((sub_181AC81FC(v112) & 1) == 0)
    {
      break;
    }

    v110 = *(&v148 + 1);
LABEL_227:
    *(&v148 + 1) = v110 + 1;
    if ((v114 & 1) == 0)
    {
      *uu2 = *(v148 + 16 * v110 + 40);
      *uu1 = v145;
      v112 = uuid_compare(uu1, uu2);
      ++v110;
      if (!v112)
      {
        continue;
      }
    }

    goto LABEL_132;
  }

  if ((v114 & 1) == 0)
  {
    goto LABEL_97;
  }

  if (v121)
  {
LABEL_232:
    if (v116)
    {
      goto LABEL_237;
    }

    return 0;
  }

LABEL_236:
  if (v116)
  {
    return 0;
  }

LABEL_237:
  if (v118)
  {
    if (v117)
    {
      goto LABEL_242;
    }

    return 0;
  }

  else
  {
    v150 = v136;
    LOBYTE(v151) = 0;
    if (v117)
    {
      return 0;
    }

    v148 = v135;
    if (!_s7Network10SystemUUIDV2eeoiySbAC_ACtFZ_0(&v150, &v148))
    {
      return 0;
    }

LABEL_242:
    if (v120)
    {
      if (!v119)
      {
        return 0;
      }
    }

    else if (v119)
    {
      return 0;
    }

    return 1;
  }
}

uint64_t ___ZL50nw_connection_copy_endpoint_handler_for_handler_idP24NWConcrete_nw_connectiont_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = (WORD2(v3) ^ WORD1(v3) ^ HIWORD(v3) ^ v3);
  if (!v3)
  {
    v5 = 0;
  }

  if (v5 == *(a1 + 40))
  {
    v6 = *(*(a1 + 32) + 8);
    v7 = v3;
    v8 = *(v6 + 40);
    *(v6 + 40) = v7;
LABEL_11:

    v12 = 0;
    goto LABEL_12;
  }

  v9 = nw_endpoint_handler_copy_parent(v3);
  if (v9)
  {
    v10 = v9;
    while (*(a1 + 40) != (WORD2(v10) ^ WORD1(v10) ^ HIWORD(v10) ^ v10))
    {
      v11 = v10;
      v10 = v11[9];

      if (!v10)
      {
        goto LABEL_9;
      }
    }

    v13 = *(*(a1 + 32) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v10;
    v8 = v10;

    goto LABEL_11;
  }

LABEL_9:
  v12 = 1;
LABEL_12:

  return v12;
}

void nw_connection_report_symptom_on_nw_queue(void *a1, int a2, void *a3, int a4)
{
  *&v28[13] = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a3;
  if (v7)
  {
    nw_context_assert_queue(*(v7 + 3));
    if (v8)
    {
      v9 = v8;
      os_unfair_lock_lock(v9 + 28);
      v10 = *(v9 + 8);
      os_unfair_lock_unlock(v9 + 28);

      if (!v10)
      {
        goto LABEL_15;
      }

LABEL_8:
      nw_connection_report_symptom_internal_on_nw_queue(a2, *(v7 + 1), *(v7 + 2), v10, 0, 0, 0, 0, a4, *(v7 + 126));
      v11 = *(v7 + 2);
      if (v11 && !_nw_parameters_get_logging_disabled(v11))
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v12 = gconnectionLogObj;
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = *(v7 + 112);
          v14 = off_1E6A3BB98[a2 - 421889];
          *buf = 136446722;
          v26 = "nw_connection_report_symptom_on_nw_queue";
          v27 = 1024;
          *v28 = v13;
          v28[2] = 2082;
          *&v28[3] = v14;
          _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_INFO, "%{public}s [C%u] reported %{public}s symptom", buf, 0x1Cu);
        }
      }

      goto LABEL_15;
    }

    if ((*(v7 + 109) & 0x40) != 0)
    {
      v10 = nw_endpoint_handler_copy_connected_path(*(v7 + 18));
      if (v10)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v10 = 0;
    }

LABEL_15:

    goto LABEL_16;
  }

  v15 = __nwlog_obj();
  *buf = 136446210;
  v26 = "nw_connection_report_symptom_on_nw_queue";
  v16 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v23 = 0;
  if (__nwlog_fault(v16, &type, &v23))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v17 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v17, type))
      {
        *buf = 136446210;
        v26 = "nw_connection_report_symptom_on_nw_queue";
        _os_log_impl(&dword_181A37000, v17, v18, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (v23 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v17 = __nwlog_obj();
      v20 = type;
      v21 = os_log_type_enabled(v17, type);
      if (backtrace_string)
      {
        if (v21)
        {
          *buf = 136446466;
          v26 = "nw_connection_report_symptom_on_nw_queue";
          v27 = 2082;
          *v28 = backtrace_string;
          _os_log_impl(&dword_181A37000, v17, v20, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_33;
      }

      if (v21)
      {
        *buf = 136446210;
        v26 = "nw_connection_report_symptom_on_nw_queue";
        _os_log_impl(&dword_181A37000, v17, v20, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v17 = __nwlog_obj();
      v22 = type;
      if (os_log_type_enabled(v17, type))
      {
        *buf = 136446210;
        v26 = "nw_connection_report_symptom_on_nw_queue";
        _os_log_impl(&dword_181A37000, v17, v22, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_33:
  if (v16)
  {
    free(v16);
  }

LABEL_16:
}

void nw_connection_report_symptom_internal_on_nw_queue(int a1, void *a2, void *a3, void *a4, uint64_t a5, const unsigned __int8 *a6, uint64_t a7, int a8, int a9, int a10)
{
  v72[2] = *MEMORY[0x1E69E9840];
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v65 = a7;
  v64 = a8;
  v62 = v15;
  if (!v15)
  {
    v50 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_connection_report_symptom_internal_on_nw_queue";
    v24 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v72[0]) = 0;
    if (!__nwlog_fault(v24, type, v72))
    {
      goto LABEL_83;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v25 = __nwlog_obj();
      v51 = type[0];
      if (os_log_type_enabled(v25, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_report_symptom_internal_on_nw_queue";
        _os_log_impl(&dword_181A37000, v25, v51, "%{public}s called with null endpoint", buf, 0xCu);
      }

      goto LABEL_82;
    }

    if (LOBYTE(v72[0]) != 1)
    {
      v25 = __nwlog_obj();
      v59 = type[0];
      if (os_log_type_enabled(v25, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_report_symptom_internal_on_nw_queue";
        _os_log_impl(&dword_181A37000, v25, v59, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_82;
    }

    backtrace_string = __nw_create_backtrace_string();
    v30 = __nwlog_obj();
    v55 = type[0];
    v56 = os_log_type_enabled(v30, type[0]);
    if (backtrace_string)
    {
      if (v56)
      {
        *buf = 136446466;
        *&buf[4] = "nw_connection_report_symptom_internal_on_nw_queue";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v30, v55, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
LABEL_83:
      if (!v24)
      {
        goto LABEL_85;
      }

LABEL_84:
      free(v24);
      goto LABEL_85;
    }

    if (v56)
    {
      *buf = 136446210;
      *&buf[4] = "nw_connection_report_symptom_internal_on_nw_queue";
      _os_log_impl(&dword_181A37000, v30, v55, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
    }

LABEL_117:

    goto LABEL_83;
  }

  if (!v16)
  {
    v52 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_connection_report_symptom_internal_on_nw_queue";
    v24 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v72[0]) = 0;
    if (!__nwlog_fault(v24, type, v72))
    {
      goto LABEL_83;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v25 = __nwlog_obj();
      v53 = type[0];
      if (os_log_type_enabled(v25, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_report_symptom_internal_on_nw_queue";
        _os_log_impl(&dword_181A37000, v25, v53, "%{public}s called with null parameters", buf, 0xCu);
      }

      goto LABEL_82;
    }

    if (LOBYTE(v72[0]) != 1)
    {
      v25 = __nwlog_obj();
      v60 = type[0];
      if (os_log_type_enabled(v25, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_report_symptom_internal_on_nw_queue";
        _os_log_impl(&dword_181A37000, v25, v60, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_82;
    }

    v29 = __nw_create_backtrace_string();
    v30 = __nwlog_obj();
    v57 = type[0];
    v58 = os_log_type_enabled(v30, type[0]);
    if (v29)
    {
      if (v58)
      {
        *buf = 136446466;
        *&buf[4] = "nw_connection_report_symptom_internal_on_nw_queue";
        *&buf[12] = 2082;
        *&buf[14] = v29;
        _os_log_impl(&dword_181A37000, v30, v57, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_35;
    }

    if (v58)
    {
      *buf = 136446210;
      *&buf[4] = "nw_connection_report_symptom_internal_on_nw_queue";
      _os_log_impl(&dword_181A37000, v30, v57, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
    }

    goto LABEL_117;
  }

  v18 = _nw_parameters_copy_context(v16);
  nw_context_assert_queue(v18);

  if (!v17 && (a1 - 421890) <= 9 && ((1 << (a1 - 2)) & 0x307) != 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v21 = gLogObj;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = off_1E6A3BB48[a1 - 421890];
      *buf = 136446466;
      *&buf[4] = "nw_connection_report_symptom_internal_on_nw_queue";
      *&buf[12] = 2082;
      *&buf[14] = v22;
      _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_ERROR, "%{public}s %{public}s symptom reported when no path found", buf, 0x16u);
    }

    goto LABEL_85;
  }

  if (nw_connection_get_symptom_reporter_handle::once != -1)
  {
    dispatch_once(&nw_connection_get_symptom_reporter_handle::once, &__block_literal_global_83286);
  }

  if (!nw_connection_get_symptom_reporter_handle::symptom_reporter)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v23 = gLogObj;
    *buf = 136446210;
    *&buf[4] = "nw_connection_report_symptom_internal_on_nw_queue";
    v24 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v72[0]) = 0;
    if (!__nwlog_fault(v24, type, v72))
    {
      goto LABEL_83;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v25 = gLogObj;
      v26 = type[0];
      if (os_log_type_enabled(v25, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_report_symptom_internal_on_nw_queue";
        _os_log_impl(&dword_181A37000, v25, v26, "%{public}s nw_connection_get_symptom_reporter_handle failed", buf, 0xCu);
      }

      goto LABEL_82;
    }

    if (LOBYTE(v72[0]) != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v25 = gLogObj;
      v47 = type[0];
      if (os_log_type_enabled(v25, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_report_symptom_internal_on_nw_queue";
        _os_log_impl(&dword_181A37000, v25, v47, "%{public}s nw_connection_get_symptom_reporter_handle failed, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_82;
    }

    v29 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v30 = gLogObj;
    v31 = type[0];
    v32 = os_log_type_enabled(v30, type[0]);
    if (v29)
    {
      if (v32)
      {
        *buf = 136446466;
        *&buf[4] = "nw_connection_report_symptom_internal_on_nw_queue";
        *&buf[12] = 2082;
        *&buf[14] = v29;
        _os_log_impl(&dword_181A37000, v30, v31, "%{public}s nw_connection_get_symptom_reporter_handle failed, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_35;
    }

    if (v32)
    {
      *buf = 136446210;
      *&buf[4] = "nw_connection_report_symptom_internal_on_nw_queue";
      _os_log_impl(&dword_181A37000, v30, v31, "%{public}s nw_connection_get_symptom_reporter_handle failed, no backtrace", buf, 0xCu);
    }

    goto LABEL_117;
  }

  v19 = symptom_new();
  if (!v19)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v27 = gLogObj;
    *buf = 136446210;
    *&buf[4] = "nw_connection_report_symptom_internal_on_nw_queue";
    v24 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v72[0]) = 0;
    if (!__nwlog_fault(v24, type, v72))
    {
      goto LABEL_83;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v25 = gLogObj;
      v28 = type[0];
      if (os_log_type_enabled(v25, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_report_symptom_internal_on_nw_queue";
        _os_log_impl(&dword_181A37000, v25, v28, "%{public}s symptom_new failed", buf, 0xCu);
      }

LABEL_82:

      goto LABEL_83;
    }

    if (LOBYTE(v72[0]) != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v25 = gLogObj;
      v48 = type[0];
      if (os_log_type_enabled(v25, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_report_symptom_internal_on_nw_queue";
        _os_log_impl(&dword_181A37000, v25, v48, "%{public}s symptom_new failed, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_82;
    }

    v33 = __nw_create_backtrace_string();
    if (!v33)
    {
      v25 = __nwlog_obj();
      v49 = type[0];
      if (os_log_type_enabled(v25, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_report_symptom_internal_on_nw_queue";
        _os_log_impl(&dword_181A37000, v25, v49, "%{public}s symptom_new failed, no backtrace", buf, 0xCu);
      }

      goto LABEL_82;
    }

    v29 = v33;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v30 = gLogObj;
    v34 = type[0];
    if (os_log_type_enabled(v30, type[0]))
    {
      *buf = 136446466;
      *&buf[4] = "nw_connection_report_symptom_internal_on_nw_queue";
      *&buf[12] = 2082;
      *&buf[14] = v29;
      _os_log_impl(&dword_181A37000, v30, v34, "%{public}s symptom_new failed, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_35:

    free(v29);
    if (!v24)
    {
      goto LABEL_85;
    }

    goto LABEL_84;
  }

  pid = getpid();
  v72[0] = 0;
  v72[1] = 0;
  if (_nw_parameters_has_delegated_proc_pid(v16, pid) || _nw_parameters_has_delegated_proc_uuid(v16))
  {
    pid = _nw_parameters_get_pid(v16);
    _nw_parameters_get_e_proc_uuid(v16, v72);
  }

  else
  {
    _nw_parameters_get_proc_uuid(v16, v72);
  }

  v70 = 0u;
  v71 = 0u;
  memset(buf, 0, sizeof(buf));
  if (proc_pidinfo(pid, 13, 1uLL, buf, 64) != 64)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v36 = gLogObj;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *type = 136446466;
      *&type[4] = "nw_connection_report_symptom_internal_on_nw_queue";
      *&type[12] = 1024;
      *&type[14] = pid;
      _os_log_impl(&dword_181A37000, v36, OS_LOG_TYPE_ERROR, "%{public}s Failed to convert from PID (%d) to process name", type, 0x12u);
    }

    v35 = 0;
    if (!v17)
    {
      goto LABEL_53;
    }

    goto LABEL_44;
  }

  v35 = &buf[16];
  if (v17)
  {
LABEL_44:
    v37 = v17;
    if (_nw_path_network_is_satisfied(v37))
    {
      _nw_path_get_routed_interface_index(v37);
    }

    symptom_set_qualifier();
    *uu = 0;
    v68 = 0;
    v38 = v37;
    _nw_path_get_flow_registration_id(v38, uu);

    if (!uuid_is_null(uu))
    {
      memset(type, 0, 37);
      uuid_unparse(uu, type);
      strlen(type);
      symptom_set_additional_qualifier();
    }

    v39 = v38;
    v40 = _nw_path_copy_parameters(v39);

    if (v40)
    {
      v41 = _nw_parameters_copy_effective_proxy_config(v40);
      v42 = v41;
      if (v41)
      {
        *type = 0;
        *&type[8] = type;
        *&type[16] = 0x2020000000;
        type[24] = OS_LOG_TYPE_DEFAULT;
        v63[0] = MEMORY[0x1E69E9820];
        v63[1] = 3221225472;
        v63[2] = __nw_connection_report_symptom_internal_on_nw_queue_block_invoke;
        v63[3] = &unk_1E6A3B848;
        v63[4] = type;
        v63[5] = v19;
        nw_proxy_config_enumerate_endpoints(v41, v63);
        _Block_object_dispose(type, 8);
      }
    }
  }

LABEL_53:
  symptom_set_qualifier();
  symptom_set_additional_qualifier();
  if (v35 && strlen(v35))
  {
    symptom_set_additional_qualifier();
  }

  if (a9)
  {
    symptom_set_additional_qualifier();
  }

  if (a10)
  {
    symptom_set_additional_qualifier();
  }

  v43 = v62;
  description = _nw_endpoint_get_description(v43);

  if (description && strlen(description))
  {
    symptom_set_additional_qualifier();
  }

  if (a1 == 421899)
  {
    symptom_set_additional_qualifier();
    symptom_set_additional_qualifier();
  }

  else if (a1 == 421898)
  {
    symptom_set_qualifier();
    if (a6)
    {
      memset(type, 0, 37);
      uuid_unparse(a6, type);
      strlen(type);
      symptom_set_additional_qualifier();
    }
  }

  symptom_send();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v45 = gLogObj;
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
  {
    v46 = off_1E6A3BB98[a1 - 421889];
    *type = 136446722;
    *&type[4] = "nw_connection_report_symptom_internal_on_nw_queue";
    *&type[12] = 2082;
    *&type[14] = v46;
    *&type[22] = 1024;
    *&type[24] = a1;
    _os_log_impl(&dword_181A37000, v45, OS_LOG_TYPE_DEBUG, "%{public}s Symptom sent: %{public}s(%#x)", type, 0x1Cu);
  }

LABEL_85:
}