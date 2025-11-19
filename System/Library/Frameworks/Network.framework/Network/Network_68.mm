void nw_http_sniffing_deallocate_options(int a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a2)
  {

    free(a2);
    return;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_http_sniffing_deallocate_options";
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
        v12 = "nw_http_sniffing_deallocate_options";
        v6 = "%{public}s called with null allocated_handle";
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
            v12 = "nw_http_sniffing_deallocate_options";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null allocated_handle, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_http_sniffing_deallocate_options";
        v6 = "%{public}s called with null allocated_handle, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_http_sniffing_deallocate_options";
        v6 = "%{public}s called with null allocated_handle, backtrace limit exceeded";
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

void nw_http_security_deallocate_options(uint64_t a1, void **a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = *a2;
    *a2 = 0;

    v4 = a2[1];
    a2[1] = 0;

    v5 = a2[2];
    a2[2] = 0;

    v6 = a2[3];
    a2[3] = 0;

    free(a2);
    return;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_http_security_deallocate_options";
  v8 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (__nwlog_fault(v8, &type, &v14))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v17 = "nw_http_security_deallocate_options";
        v11 = "%{public}s called with null allocated_handle";
LABEL_18:
        _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0xCu);
      }
    }

    else
    {
      if (v14 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v9 = __nwlog_obj();
        v10 = type;
        v13 = os_log_type_enabled(v9, type);
        if (backtrace_string)
        {
          if (v13)
          {
            *buf = 136446466;
            v17 = "nw_http_security_deallocate_options";
            v18 = 2082;
            v19 = backtrace_string;
            _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null allocated_handle, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v13)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v17 = "nw_http_security_deallocate_options";
        v11 = "%{public}s called with null allocated_handle, no backtrace";
        goto LABEL_18;
      }

      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v17 = "nw_http_security_deallocate_options";
        v11 = "%{public}s called with null allocated_handle, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v8)
  {
    free(v8);
  }
}

void nw_http_encoding_deallocate_options(int a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a2)
  {

    free(a2);
    return;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_http_encoding_deallocate_options";
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
        v12 = "nw_http_encoding_deallocate_options";
        v6 = "%{public}s called with null allocated_handle";
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
            v12 = "nw_http_encoding_deallocate_options";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null allocated_handle, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_http_encoding_deallocate_options";
        v6 = "%{public}s called with null allocated_handle, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_http_encoding_deallocate_options";
        v6 = "%{public}s called with null allocated_handle, backtrace limit exceeded";
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

void nw_http_joining_deallocate_options(int a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a2)
  {

    free(a2);
    return;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_http_joining_deallocate_options";
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
        v12 = "nw_http_joining_deallocate_options";
        v6 = "%{public}s called with null allocated_handle";
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
            v12 = "nw_http_joining_deallocate_options";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null allocated_handle, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_http_joining_deallocate_options";
        v6 = "%{public}s called with null allocated_handle, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_http_joining_deallocate_options";
        v6 = "%{public}s called with null allocated_handle, backtrace limit exceeded";
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

void nw_http_messaging_deallocate_options(uint64_t a1, void **a2)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = *a2;
    *a2 = 0;

    v4 = a2[1];
    a2[1] = 0;

    v5 = a2[2];
    a2[2] = 0;

    v6 = a2[3];
    a2[3] = 0;

    v7 = a2[4];
    a2[4] = 0;

    v8 = a2[5];
    a2[5] = 0;

    v9 = a2[6];
    a2[6] = 0;

    v10 = a2[7];
    a2[7] = 0;

    v11 = a2[8];
    a2[8] = 0;

    v12 = a2[9];
    a2[9] = 0;

    v13 = a2[10];
    a2[10] = 0;

    free(a2);
    return;
  }

  v14 = __nwlog_obj();
  *buf = 136446210;
  v24 = "nw_http_messaging_deallocate_options";
  v15 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v21 = 0;
  if (__nwlog_fault(v15, &type, &v21))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v16 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        v24 = "nw_http_messaging_deallocate_options";
        v18 = "%{public}s called with null allocated_handle";
LABEL_18:
        _os_log_impl(&dword_181A37000, v16, v17, v18, buf, 0xCu);
      }
    }

    else
    {
      if (v21 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v16 = __nwlog_obj();
        v17 = type;
        v20 = os_log_type_enabled(v16, type);
        if (backtrace_string)
        {
          if (v20)
          {
            *buf = 136446466;
            v24 = "nw_http_messaging_deallocate_options";
            v25 = 2082;
            v26 = backtrace_string;
            _os_log_impl(&dword_181A37000, v16, v17, "%{public}s called with null allocated_handle, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v20)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v24 = "nw_http_messaging_deallocate_options";
        v18 = "%{public}s called with null allocated_handle, no backtrace";
        goto LABEL_18;
      }

      v16 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        v24 = "nw_http_messaging_deallocate_options";
        v18 = "%{public}s called with null allocated_handle, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v15)
  {
    free(v15);
  }
}

void nw_http1_deallocate_options(int a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a2)
  {

    free(a2);
    return;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_http1_deallocate_options";
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
        v12 = "nw_http1_deallocate_options";
        v6 = "%{public}s called with null allocated_handle";
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
            v12 = "nw_http1_deallocate_options";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null allocated_handle, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_http1_deallocate_options";
        v6 = "%{public}s called with null allocated_handle, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_http1_deallocate_options";
        v6 = "%{public}s called with null allocated_handle, backtrace limit exceeded";
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

uint64_t sub_181EA4410(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_182AD4268() & 1;
  }
}

uint64_t __Block_byref_object_dispose__37(uint64_t result)
{
  if ((*(result + 48) & 1) != 0 && *(result + 40))
  {
    v1 = result;
    os_release(*(result + 40));
    result = v1;
  }

  *(result + 40) = 0;
  return result;
}

uint64_t nw_http_messaging_copy_options(void *a1, uint64_t a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!a2)
  {
    v22 = __nwlog_obj();
    *buf = 136446210;
    v32 = "nw_http_messaging_copy_options";
    v23 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v29 = 0;
    if (!__nwlog_fault(v23, &type, &v29))
    {
LABEL_28:
      if (v23)
      {
        free(v23);
      }

      v4 = 0;
      goto LABEL_12;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v24 = __nwlog_obj();
      v25 = type;
      if (os_log_type_enabled(v24, type))
      {
        *buf = 136446210;
        v32 = "nw_http_messaging_copy_options";
        v26 = "%{public}s called with null existing_handle";
LABEL_26:
        _os_log_impl(&dword_181A37000, v24, v25, v26, buf, 0xCu);
      }
    }

    else
    {
      if (v29 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v24 = __nwlog_obj();
        v25 = type;
        v28 = os_log_type_enabled(v24, type);
        if (backtrace_string)
        {
          if (v28)
          {
            *buf = 136446466;
            v32 = "nw_http_messaging_copy_options";
            v33 = 2082;
            v34 = backtrace_string;
            _os_log_impl(&dword_181A37000, v24, v25, "%{public}s called with null existing_handle, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_28;
        }

        if (!v28)
        {
          goto LABEL_27;
        }

        *buf = 136446210;
        v32 = "nw_http_messaging_copy_options";
        v26 = "%{public}s called with null existing_handle, no backtrace";
        goto LABEL_26;
      }

      v24 = __nwlog_obj();
      v25 = type;
      if (os_log_type_enabled(v24, type))
      {
        *buf = 136446210;
        v32 = "nw_http_messaging_copy_options";
        v26 = "%{public}s called with null existing_handle, backtrace limit exceeded";
        goto LABEL_26;
      }
    }

LABEL_27:

    goto LABEL_28;
  }

  v4 = malloc_type_calloc(1uLL, 0x60uLL, 0xB5670306uLL);
  if (v4)
  {
LABEL_5:
    v8 = *a2;
    if (*a2)
    {
      v8 = _nw_protocol_options_copy(v8);
    }

    v9 = *v4;
    *v4 = v8;

    v10 = *(a2 + 8);
    if (v10)
    {
      v10 = _nw_protocol_options_copy(v10);
    }

    v11 = *(v4 + 1);
    *(v4 + 1) = v10;

    v12 = *(a2 + 16);
    if (v12)
    {
      v12 = _nw_protocol_options_copy(v12);
    }

    v13 = *(v4 + 2);
    *(v4 + 2) = v12;

    objc_storeStrong(v4 + 3, *(a2 + 24));
    v14 = _Block_copy(*(a2 + 32));
    v15 = *(v4 + 4);
    *(v4 + 4) = v14;

    v16 = _Block_copy(*(a2 + 40));
    v17 = *(v4 + 5);
    *(v4 + 5) = v16;

    v18 = _Block_copy(*(a2 + 48));
    v19 = *(v4 + 6);
    *(v4 + 6) = v18;

    objc_storeStrong(v4 + 7, *(a2 + 56));
    objc_storeStrong(v4 + 8, *(a2 + 64));
    objc_storeStrong(v4 + 9, *(a2 + 72));
    objc_storeStrong(v4 + 10, *(a2 + 80));
    v20 = *(v4 + 88) & 0xFE | *(a2 + 88) & 1;
    *(v4 + 88) = v20;
    v21 = v20 & 0xFFFFFFFD | (2 * ((*(a2 + 88) >> 1) & 1));
    *(v4 + 88) = v21;
    *(v4 + 88) = v21 & 0xFB | *(a2 + 88) & 4;
LABEL_12:

    return v4;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v5 = gLogObj;
  os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  v32 = "nw_http_messaging_copy_options";
  v33 = 2048;
  v34 = 1;
  v35 = 2048;
  v36 = 96;
  v6 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v6);
  if (!result)
  {
    free(v6);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t nw_http1_copy_options(void *a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!a2)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v18 = "nw_http1_copy_options";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (!__nwlog_fault(v9, &type, &v15))
    {
LABEL_22:
      if (v9)
      {
        free(v9);
      }

      v4 = 0;
      goto LABEL_6;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v18 = "nw_http1_copy_options";
        v12 = "%{public}s called with null existing_handle";
LABEL_20:
        _os_log_impl(&dword_181A37000, v10, v11, v12, buf, 0xCu);
      }
    }

    else
    {
      if (v15 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v10 = __nwlog_obj();
        v11 = type;
        v14 = os_log_type_enabled(v10, type);
        if (backtrace_string)
        {
          if (v14)
          {
            *buf = 136446466;
            v18 = "nw_http1_copy_options";
            v19 = 2082;
            v20 = backtrace_string;
            _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null existing_handle, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_22;
        }

        if (!v14)
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v18 = "nw_http1_copy_options";
        v12 = "%{public}s called with null existing_handle, no backtrace";
        goto LABEL_20;
      }

      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v18 = "nw_http1_copy_options";
        v12 = "%{public}s called with null existing_handle, backtrace limit exceeded";
        goto LABEL_20;
      }
    }

LABEL_21:

    goto LABEL_22;
  }

  v4 = malloc_type_calloc(1uLL, 8uLL, 0x2C8B65A9uLL);
  if (v4)
  {
LABEL_5:
    *v4 = *a2;
LABEL_6:

    return v4;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v5 = gLogObj;
  os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  v18 = "nw_http1_copy_options";
  v19 = 2048;
  v20 = 1;
  v21 = 2048;
  v22 = 8;
  v6 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v6);
  if (!result)
  {
    free(v6);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id nw_http_messaging_options_copy_client_metadata(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = nw_protocol_copy_http_messaging_definition_onceToken;
  v3 = v1;
  if (v2 != -1)
  {
    dispatch_once(&nw_protocol_copy_http_messaging_definition_onceToken, &__block_literal_global_94);
  }

  v4 = nw_protocol_options_matches_definition(v3, nw_protocol_copy_http_messaging_definition_definition);

  if (v4)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v19 = __Block_byref_object_copy__75915;
    v20 = __Block_byref_object_dispose__75916;
    v21 = 0;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __nw_http_messaging_options_copy_client_metadata_block_invoke;
    v15[3] = &unk_1E6A3A858;
    v15[4] = buf;
    nw_protocol_options_access_handle(v3, v15);
    v5 = *(*&buf[8] + 40);
    _Block_object_dispose(buf, 8);

    goto LABEL_5;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_http_messaging_options_copy_client_metadata";
  v8 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (__nwlog_fault(v8, &type, &v16))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_messaging_options_copy_client_metadata";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s protocol options are not http_messaging", buf, 0xCu);
      }
    }

    else if (v16 == 1)
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
          *&buf[4] = "nw_http_messaging_options_copy_client_metadata";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s protocol options are not http_messaging, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v13)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_messaging_options_copy_client_metadata";
        _os_log_impl(&dword_181A37000, v9, v12, "%{public}s protocol options are not http_messaging, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_messaging_options_copy_client_metadata";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s protocol options are not http_messaging, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_22:
  if (v8)
  {
    free(v8);
  }

  v5 = 0;
LABEL_5:

  return v5;
}

void sub_181EA50B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t nw_protocol_http_security_create(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = malloc_type_calloc(1uLL, 0x230uLL, 0xB1424BF5uLL);
  v6 = v5;
  if (v5)
  {
    bzero(v5, 0x230uLL);
LABEL_6:
    if (gLogDatapath == 1)
    {
      v15 = __nwlog_obj();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        v17 = "nw_protocol_http_security_create";
        v18 = 2082;
        v19 = v6 + 114;
        v20 = 2080;
        v21 = " ";
        _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalled", buf, 0x20u);
      }
    }

    goto LABEL_7;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  v17 = "nw_protocol_http_security_create";
  v18 = 2048;
  v19 = 1;
  v20 = 2048;
  v21 = 560;
  v7 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort(v7);
  if (result || (free(v7), bzero(0, 0x230uLL), MEMORY[0xF8] = 0, MEMORY[0x100] &= ~1u, MEMORY[0x108] = 0, MEMORY[0x110] &= ~1u, MEMORY[0x118] = 0, MEMORY[0x120] &= ~1u, MEMORY[0x158] = 0, MEMORY[0x160] &= ~1u, MEMORY[0x168] = 0, MEMORY[0x170] &= ~1u, MEMORY[0x190] = 0, MEMORY[0x198] &= ~1u, MEMORY[0x1C8] = 0, MEMORY[0x1D0] &= ~1u, MEMORY[0x1D8] = 0, MEMORY[0x1E0] &= ~1u, MEMORY[0x1E8] = 0, MEMORY[0x1F0] &= ~1u, MEMORY[0x1F8] = 0, MEMORY[0x200] &= ~1u, MEMORY[0x208] = 0, MEMORY[0x210] &= ~1u, MEMORY[0x218] = 0, MEMORY[0x220] &= ~1u, pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once), networkd_settings_init(), os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR), *buf = 136446210, v17 = "nw_protocol_http_security_create", v9 = _os_log_send_and_compose_impl(), result = __nwlog_should_abort(v9), result))
  {
    __break(1u);
    return result;
  }

  free(v9);
  if ((MEMORY[0xC6] & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  if (nw_protocol_http_security_identifier::onceToken[0] != -1)
  {
    dispatch_once(nw_protocol_http_security_identifier::onceToken, &__block_literal_global_29128);
  }

  *(v6 + 16) = nw_protocol_http_security_identifier::protocol_identifier;
  if (nw_protocol_http_security_get_callbacks(void)::onceToken != -1)
  {
    dispatch_once(&nw_protocol_http_security_get_callbacks(void)::onceToken, &__block_literal_global_78_29129);
  }

  *(v6 + 24) = &nw_protocol_http_security_get_callbacks(void)::protocol_callbacks;
  *(v6 + 40) = v6;
  v10 = nw_parameters_copy_context(a4);
  v11 = *(v6 + 528);
  if ((v11 & 1) != 0 && *(v6 + 520))
  {
    v12 = v10;
    os_release(*(v6 + 520));
    v10 = v12;
    v11 = *(v6 + 528);
  }

  *(v6 + 520) = v10;
  *(v6 + 528) = v11 | 1;
  server_mode = nw_parameters_get_server_mode(a4);
  *(v6 + 200) = 0;
  *(v6 + 552) = *(v6 + 552) & 0xFE | server_mode;
  *(v6 + 72) = v6 + 200;
  *(v6 + 208) = v6 + 200;
  *(v6 + 216) = 0;
  *(v6 + 224) = v6 + 216;
  *(v6 + 232) = 0;
  *(v6 + 240) = v6 + 232;
  *(v6 + 340) = 2;
  if (nw_protocol_copy_http_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_definition_onceToken, &__block_literal_global_16_75909);
  }

  v14 = nw_protocol_copy_http_definition_http_definition;
  nw_protocol_plugin_metadata_set_callbacks(v6, v14, nw_protocol_http_security_create::$_0::__invoke, nw_protocol_http_security_create::$_1::__invoke);
  if (v14)
  {
    os_release(v14);
  }

  *(v6 + 88) = v6 + 344;
  nw_protocol_plugin_retry_set_callbacks(v6, nw_protocol_http_security_create::$_2::__invoke, nw_protocol_http_security_create::$_3::__invoke, nw_protocol_http_security_create::$_4::__invoke);
  *(v6 + 64) = v6 + 104;
  nw_protocol_plugin_name_set_callbacks(v6, nw_protocol_http_security_create::$_5::__invoke);
  return v6;
}

uint64_t nw_protocol_http_client_create::$_3::__invoke(nw_protocol_http_client_create::$_3 *this, nw_protocol *a2, nw_protocol *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!this)
  {
    __nwlog_obj();
    *buf = 136446210;
    v18 = "operator()";
    v6 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (!__nwlog_fault(v6, &type, &v15))
    {
      goto LABEL_45;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_45;
      }

      *buf = 136446210;
      v18 = "operator()";
      v9 = "%{public}s called with null protocol";
LABEL_44:
      _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
      goto LABEL_45;
    }

    if (v15 != 1)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v18 = "operator()";
        v9 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_44;
      }

      goto LABEL_45;
    }

    backtrace_string = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = type;
    v11 = os_log_type_enabled(v7, type);
    if (!backtrace_string)
    {
      if (v11)
      {
        *buf = 136446210;
        v18 = "operator()";
        v9 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_44;
      }

      goto LABEL_45;
    }

    if (!v11)
    {
      goto LABEL_31;
    }

    *buf = 136446466;
    v18 = "operator()";
    v19 = 2082;
    v20 = backtrace_string;
    v12 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_30:
    _os_log_impl(&dword_181A37000, v7, v8, v12, buf, 0x16u);
    goto LABEL_31;
  }

  v3 = *(this + 5);
  if (!v3)
  {
    __nwlog_obj();
    *buf = 136446210;
    v18 = "operator()";
    v6 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (!__nwlog_fault(v6, &type, &v15))
    {
      goto LABEL_45;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_45;
      }

      *buf = 136446210;
      v18 = "operator()";
      v9 = "%{public}s called with null http_client";
      goto LABEL_44;
    }

    if (v15 != 1)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v18 = "operator()";
        v9 = "%{public}s called with null http_client, backtrace limit exceeded";
        goto LABEL_44;
      }

      goto LABEL_45;
    }

    backtrace_string = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = type;
    v13 = os_log_type_enabled(v7, type);
    if (!backtrace_string)
    {
      if (v13)
      {
        *buf = 136446210;
        v18 = "operator()";
        v9 = "%{public}s called with null http_client, no backtrace";
        goto LABEL_44;
      }

      goto LABEL_45;
    }

    if (!v13)
    {
      goto LABEL_31;
    }

    *buf = 136446466;
    v18 = "operator()";
    v19 = 2082;
    v20 = backtrace_string;
    v12 = "%{public}s called with null http_client, dumping backtrace:%{public}s";
    goto LABEL_30;
  }

  if (a2)
  {
    v4 = 1;
    buf[0] = 1;
    nw_protocol_notify(a2, v3, 23);
    return v4;
  }

  __nwlog_obj();
  *buf = 136446210;
  v18 = "operator()";
  v6 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v15 = 0;
  if (!__nwlog_fault(v6, &type, &v15))
  {
    goto LABEL_45;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v15 != 1)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v18 = "operator()";
        v9 = "%{public}s called with null other_protocol, backtrace limit exceeded";
        goto LABEL_44;
      }

      goto LABEL_45;
    }

    backtrace_string = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = type;
    v14 = os_log_type_enabled(v7, type);
    if (!backtrace_string)
    {
      if (v14)
      {
        *buf = 136446210;
        v18 = "operator()";
        v9 = "%{public}s called with null other_protocol, no backtrace";
        goto LABEL_44;
      }

      goto LABEL_45;
    }

    if (v14)
    {
      *buf = 136446466;
      v18 = "operator()";
      v19 = 2082;
      v20 = backtrace_string;
      v12 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
      goto LABEL_30;
    }

LABEL_31:
    free(backtrace_string);
    goto LABEL_45;
  }

  v7 = __nwlog_obj();
  v8 = type;
  if (os_log_type_enabled(v7, type))
  {
    *buf = 136446210;
    v18 = "operator()";
    v9 = "%{public}s called with null other_protocol";
    goto LABEL_44;
  }

LABEL_45:
  if (v6)
  {
    free(v6);
  }

  return 0;
}

uint64_t nw_protocol_http_connection_state_get_remote_endpoint(nw_protocol *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v16 = "nw_protocol_http_connection_state_get_remote_endpoint";
    v5 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (!__nwlog_fault(v5, &type, &v13))
    {
      goto LABEL_36;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v16 = "nw_protocol_http_connection_state_get_remote_endpoint";
      v8 = "%{public}s called with null protocol";
    }

    else
    {
      if (v13 != 1)
      {
        v6 = __nwlog_obj();
        v7 = type;
        if (!os_log_type_enabled(v6, type))
        {
          goto LABEL_36;
        }

        *buf = 136446210;
        v16 = "nw_protocol_http_connection_state_get_remote_endpoint";
        v8 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_35;
      }

      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v7 = type;
      v10 = os_log_type_enabled(v6, type);
      if (backtrace_string)
      {
        if (v10)
        {
          *buf = 136446466;
          v16 = "nw_protocol_http_connection_state_get_remote_endpoint";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (!v5)
        {
          return 0;
        }

        goto LABEL_37;
      }

      if (!v10)
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v16 = "nw_protocol_http_connection_state_get_remote_endpoint";
      v8 = "%{public}s called with null protocol, no backtrace";
    }

LABEL_35:
    _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
    goto LABEL_36;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    v16 = "nw_protocol_http_connection_state_get_remote_endpoint";
    v5 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (!__nwlog_fault(v5, &type, &v13))
    {
      goto LABEL_36;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v16 = "nw_protocol_http_connection_state_get_remote_endpoint";
      v8 = "%{public}s called with null http_connection_state";
      goto LABEL_35;
    }

    if (v13 != 1)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v16 = "nw_protocol_http_connection_state_get_remote_endpoint";
      v8 = "%{public}s called with null http_connection_state, backtrace limit exceeded";
      goto LABEL_35;
    }

    v11 = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = type;
    v12 = os_log_type_enabled(v6, type);
    if (!v11)
    {
      if (!v12)
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v16 = "nw_protocol_http_connection_state_get_remote_endpoint";
      v8 = "%{public}s called with null http_connection_state, no backtrace";
      goto LABEL_35;
    }

    if (v12)
    {
      *buf = 136446466;
      v16 = "nw_protocol_http_connection_state_get_remote_endpoint";
      v17 = 2082;
      v18 = v11;
      _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null http_connection_state, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v11);
LABEL_36:
    if (!v5)
    {
      return 0;
    }

LABEL_37:
    free(v5);
    return 0;
  }

  v2 = handle[25];
  if (v2)
  {
    return v2;
  }

  default_input_handler = a1->default_input_handler;

  return nw_protocol_get_remote_endpoint(default_input_handler);
}

uint64_t sub_181EA6088()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 90);
  v3 = *(v0 + 98);
  v31 = *(v0 + 156);
  v4 = *(v0 + 216);
  v33 = 0;
  v34 = 0xE000000000000000;
  if (v1)
  {
    strcpy(v32, "interface: ");
    HIDWORD(v32[1]) = -352321536;
    v5 = *(v1 + 40);
    v6 = *(v1 + 48);

    MEMORY[0x1865D9CA0](v5, v6);

    MEMORY[0x1865D9CA0](v32[0], v32[1]);
  }

  if ((v3 & 1) == 0)
  {
    strcpy(v32, "agent: ");
    v32[1] = 0xE700000000000000;
    MEMORY[0x1EEE9AC00](v2 >> 16);
    v7 = sub_182AD30D8();
    MEMORY[0x1865D9CA0](v7);

    MEMORY[0x1865D9CA0](v32[0], 0xE700000000000000);
  }

  v8 = v4[2];
  if (v8)
  {
    MEMORY[0x1865D9CA0](0x79745F746E656761, 0xEF207B203A736570);
    v9 = v4[4];
    v10 = v4[5];
    v11 = v4[6];
    v12 = v4[7];
    sub_181AA5C1C(v9, v10);
    sub_181ADC1E0(v11, v12);
    v32[0] = 0;
    v32[1] = 0xE000000000000000;
    if (v10 > 2)
    {
      if (v10 == 3)
      {
        v13 = 0xD000000000000010;
        v14 = 0x8000000182BD7080;
        goto LABEL_21;
      }

      if (v10 != 4)
      {
        if (v10 == 5)
        {
          v13 = 0xD000000000000013;
          v14 = 0x8000000182BD7060;
          goto LABEL_21;
        }

        goto LABEL_17;
      }

      v14 = 0xE700000000000000;
      v15 = 0x6C6177796B53;
    }

    else
    {
      if (v10)
      {
        if (v10 != 1)
        {
          if (v10 == 2)
          {
            v13 = 0x6F436D6574737953;
            v14 = 0xEC0000006769666ELL;
            goto LABEL_21;
          }

LABEL_17:
          v13 = v9;
          v14 = v10;
          goto LABEL_21;
        }

        v14 = 0xE800000000000000;
        v13 = 0x72616C756C6C6543;
LABEL_21:
        sub_181AA5C1C(v9, v10);
        MEMORY[0x1865D9CA0](v13, v14);

        MEMORY[0x1865D9CA0](58, 0xE100000000000000);
        if (v12 > 4)
        {
          if (v12 <= 6)
          {
            if (v12 == 5)
            {
              v16 = 0xD000000000000012;
              v17 = 0x8000000182BD7040;
            }

            else
            {
              v17 = 0xE800000000000000;
              v16 = 0x746E656741534E44;
            }

            goto LABEL_43;
          }

          switch(v12)
          {
            case 7:
              v16 = 0x4465746176697250;
              v17 = 0xEA0000000000534ELL;
              goto LABEL_43;
            case 8:
              v16 = 0xD000000000000010;
              v17 = 0x8000000182BD7020;
              goto LABEL_43;
            case 9:
              v16 = 0xD000000000000011;
              v17 = 0x8000000182BD7000;
LABEL_43:
              sub_181ADC1E0(v11, v12);
              MEMORY[0x1865D9CA0](v16, v17);

              sub_181E4926C(v9, v10);
              sub_181E49280(v11, v12);
              MEMORY[0x1865D9CA0](v32[0], v32[1]);

              v18 = v8 - 1;
              if (!v18)
              {
LABEL_44:
                MEMORY[0x1865D9CA0](125, 0xE100000000000000);
                goto LABEL_45;
              }

              v21 = v4 + 11;
              while (1)
              {
                v24 = *(v21 - 3);
                v25 = *(v21 - 2);
                v26 = *(v21 - 1);
                v27 = *v21;
                sub_181AA5C1C(v24, v25);
                sub_181ADC1E0(v26, v27);
                MEMORY[0x1865D9CA0](8236, 0xE200000000000000);
                v32[0] = 0;
                v32[1] = 0xE000000000000000;
                if (v25 > 2)
                {
                  break;
                }

                if (!v25)
                {
                  v29 = 0xE700000000000000;
                  v30 = 0x726F7774654ELL;
LABEL_72:
                  v28 = v30 & 0xFFFFFFFFFFFFLL | 0x6B000000000000;
                  goto LABEL_73;
                }

                if (v25 != 1)
                {
                  if (v25 == 2)
                  {
                    v28 = 0x6F436D6574737953;
                    v29 = 0xEC0000006769666ELL;
                    goto LABEL_73;
                  }

LABEL_69:
                  v28 = v24;
                  v29 = v25;
                  goto LABEL_73;
                }

                v29 = 0xE800000000000000;
                v28 = 0x72616C756C6C6543;
LABEL_73:
                sub_181AA5C1C(v24, v25);
                MEMORY[0x1865D9CA0](v28, v29);

                MEMORY[0x1865D9CA0](58, 0xE100000000000000);
                if (v27 > 4)
                {
                  if (v27 <= 6)
                  {
                    if (v27 == 5)
                    {
                      v22 = 0xD000000000000012;
                      v23 = 0x8000000182BD7040;
                    }

                    else
                    {
                      v23 = 0xE800000000000000;
                      v22 = 0x746E656741534E44;
                    }

                    goto LABEL_57;
                  }

                  switch(v27)
                  {
                    case 7:
                      v22 = 0x4465746176697250;
                      v23 = 0xEA0000000000534ELL;
                      break;
                    case 8:
                      v22 = 0xD000000000000010;
                      v23 = 0x8000000182BD7020;
                      break;
                    case 9:
                      v22 = 0xD000000000000011;
                      v23 = 0x8000000182BD7000;
                      break;
                    default:
                      goto LABEL_93;
                  }
                }

                else
                {
                  if (v27 > 1)
                  {
                    if (v27 == 2)
                    {
                      v22 = 0x65674179786F7250;
                      v23 = 0xEA0000000000746ELL;
                    }

                    else if (v27 == 3)
                    {
                      v23 = 0xE500000000000000;
                      v22 = 0x79786F7250;
                    }

                    else
                    {
                      v22 = 0x5079636176697250;
                      v23 = 0xEC00000079786F72;
                    }

                    goto LABEL_57;
                  }

                  if (v27)
                  {
                    if (v27 != 1)
                    {
LABEL_93:
                      v22 = v26;
                      v23 = v27;
                      goto LABEL_57;
                    }

                    v22 = 0x7265764F68746150;
                    v23 = 0xEC00000065646972;
                  }

                  else
                  {
                    v23 = 0xE800000000000000;
                    v22 = 0x74656E7265746E49;
                  }
                }

LABEL_57:
                v21 += 4;
                sub_181ADC1E0(v26, v27);
                MEMORY[0x1865D9CA0](v22, v23);

                sub_181E4926C(v24, v25);
                sub_181E49280(v26, v27);
                MEMORY[0x1865D9CA0](v32[0], v32[1]);

                if (!--v18)
                {
                  goto LABEL_44;
                }
              }

              if (v25 == 3)
              {
                v28 = 0xD000000000000010;
                v29 = 0x8000000182BD7080;
                goto LABEL_73;
              }

              if (v25 != 4)
              {
                if (v25 == 5)
                {
                  v28 = 0xD000000000000013;
                  v29 = 0x8000000182BD7060;
                  goto LABEL_73;
                }

                goto LABEL_69;
              }

              v29 = 0xE700000000000000;
              v30 = 0x6C6177796B53;
              goto LABEL_72;
          }
        }

        else
        {
          if (v12 > 1)
          {
            if (v12 == 2)
            {
              v16 = 0x65674179786F7250;
              v17 = 0xEA0000000000746ELL;
            }

            else if (v12 == 3)
            {
              v17 = 0xE500000000000000;
              v16 = 0x79786F7250;
            }

            else
            {
              v16 = 0x5079636176697250;
              v17 = 0xEC00000079786F72;
            }

            goto LABEL_43;
          }

          if (!v12)
          {
            v17 = 0xE800000000000000;
            v16 = 0x74656E7265746E49;
            goto LABEL_43;
          }

          if (v12 == 1)
          {
            v16 = 0x7265764F68746150;
            v17 = 0xEC00000065646972;
            goto LABEL_43;
          }
        }

        v16 = v11;
        v17 = v12;
        goto LABEL_43;
      }

      v14 = 0xE700000000000000;
      v15 = 0x726F7774654ELL;
    }

    v13 = v15 & 0xFFFFFFFFFFFFLL | 0x6B000000000000;
    goto LABEL_21;
  }

LABEL_45:
  if (v31)
  {
    MEMORY[0x1865D9CA0](0x6B616577202CLL, 0xE600000000000000);
    if ((v31 & 2) == 0)
    {
LABEL_47:
      if ((v31 & 4) == 0)
      {
        goto LABEL_48;
      }

LABEL_53:
      MEMORY[0x1865D9CA0](0x646563726F66202CLL, 0xE800000000000000);
      if ((v31 & 8) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    }
  }

  else if ((v31 & 2) == 0)
  {
    goto LABEL_47;
  }

  MEMORY[0x1865D9CA0](0xD000000000000013, 0x8000000182BD7480);
  if ((v31 & 4) != 0)
  {
    goto LABEL_53;
  }

LABEL_48:
  if ((v31 & 8) != 0)
  {
LABEL_49:
    MEMORY[0x1865D9CA0](0x726566657270202CLL, 0xEB00000000646572);
  }

LABEL_50:
  sub_182AD3BA8();

  strcpy(v32, ", generation: ");
  HIBYTE(v32[1]) = -18;
  v19 = sub_182AD41B8();
  MEMORY[0x1865D9CA0](v19);

  MEMORY[0x1865D9CA0](v32[0], v32[1]);

  strcpy(v32, ", fallback: {");
  HIWORD(v32[1]) = -4864;
  MEMORY[0x1865D9CA0](v33, v34);

  MEMORY[0x1865D9CA0](125, 0xE100000000000000);

  return v32[0];
}

NWConcrete_nw_endpoint_mode_handler *nw_endpoint_handler_copy_fallback(NWConcrete_nw_endpoint_handler *a1)
{
  v51 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v24 = __nwlog_obj();
    *buf = 136446210;
    v36 = "nw_endpoint_handler_copy_fallback";
    v25 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v33 = 0;
    if (__nwlog_fault(v25, &type, &v33))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v26 = __nwlog_obj();
        v27 = type;
        if (os_log_type_enabled(v26, type))
        {
          *buf = 136446210;
          v36 = "nw_endpoint_handler_copy_fallback";
          _os_log_impl(&dword_181A37000, v26, v27, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v33 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v26 = __nwlog_obj();
        v29 = type;
        v30 = os_log_type_enabled(v26, type);
        if (backtrace_string)
        {
          if (v30)
          {
            *buf = 136446466;
            v36 = "nw_endpoint_handler_copy_fallback";
            v37 = 2082;
            id_str = backtrace_string;
            _os_log_impl(&dword_181A37000, v26, v29, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_65;
        }

        if (v30)
        {
          *buf = 136446210;
          v36 = "nw_endpoint_handler_copy_fallback";
          _os_log_impl(&dword_181A37000, v26, v29, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v26 = __nwlog_obj();
        v31 = type;
        if (os_log_type_enabled(v26, type))
        {
          *buf = 136446210;
          v36 = "nw_endpoint_handler_copy_fallback";
          _os_log_impl(&dword_181A37000, v26, v31, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_65:
    if (v25)
    {
      free(v25);
    }

    goto LABEL_47;
  }

  if (v1->mode != 4)
  {
    if ((*(v1 + 284) & 0x40) != 0)
    {
LABEL_47:
      v3 = 0;
      goto LABEL_48;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v4 = gconnectionLogObj;
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
LABEL_46:

      goto LABEL_47;
    }

    if (*(v2 + 284))
    {
      v5 = "dry-run ";
    }

    else
    {
      v5 = "";
    }

    v6 = nw_endpoint_handler_copy_endpoint(v2);
    v7 = v6;
    if (v6)
    {
      logging_description = _nw_endpoint_get_logging_description(v6);
    }

    else
    {
      logging_description = "<NULL>";
    }

    state = v2->state;
    if (state > 5)
    {
      v10 = "unknown-state";
    }

    else
    {
      v10 = off_1E6A31048[state];
    }

    v11 = v2;
    v12 = v11;
    mode = v2->mode;
    v32 = v10;
    if (mode > 2)
    {
      if (mode == 3)
      {
        v14 = logging_description;
        v15 = "proxy";
        goto LABEL_31;
      }

      if (mode != 4)
      {
        if (mode == 5)
        {
          v14 = logging_description;
          v15 = "transform";
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v14 = logging_description;
      v15 = "fallback";
    }

    else
    {
      if (!mode)
      {
        v14 = logging_description;
        v15 = "path";
        goto LABEL_31;
      }

      if (mode != 1)
      {
        if (mode == 2)
        {
          v14 = logging_description;
          v15 = nw_endpoint_flow_mode_string(v11->mode_handler);
          goto LABEL_31;
        }

LABEL_28:
        v14 = logging_description;
        v15 = "unknown-mode";
        goto LABEL_31;
      }

      v14 = logging_description;
      v15 = "resolver";
    }

LABEL_31:

    v16 = v12;
    os_unfair_lock_lock(v12 + 28);
    v17 = v16[8];
    os_unfair_lock_unlock(v12 + 28);

    v18 = v17;
    v19 = v16;
    v20 = v2->mode;
    if (v20 > 2)
    {
      switch(v20)
      {
        case 3:
          v22 = "proxy";
          goto LABEL_45;
        case 4:
          v22 = "fallback";
          goto LABEL_45;
        case 5:
          v22 = "transform";
          goto LABEL_45;
      }
    }

    else
    {
      switch(v20)
      {
        case 0:
          v22 = "path";
          goto LABEL_45;
        case 1:
          v22 = "resolver";
          goto LABEL_45;
        case 2:
          v21 = v19;
          v22 = nw_endpoint_flow_mode_string(v19[33]);
          v19 = v21;
LABEL_45:

          *buf = 136448002;
          v36 = "nw_endpoint_handler_copy_fallback";
          v37 = 2082;
          id_str = v2->id_str;
          v39 = 2082;
          v40 = v5;
          v41 = 2082;
          v42 = v14;
          v43 = 2082;
          v44 = v32;
          v45 = 2082;
          v46 = v15;
          v47 = 2114;
          v48 = v18;
          v49 = 2082;
          v50 = v22;
          _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Endpoint handler is %{public}s, not fallback", buf, 0x52u);

          goto LABEL_46;
      }
    }

    v22 = "unknown-mode";
    goto LABEL_45;
  }

  v3 = v1->mode_handler;
LABEL_48:

  return v3;
}

uint64_t nw_endpoint_fallback_receive_report(void *a1, uint64_t a2, int a3, _WORD *a4, void *a5, void *a6)
{
  v332 = *MEMORY[0x1E69E9840];
  v10 = a1;
  v303 = a5;
  v11 = a6;
  v12 = v11;
  v302 = v10;
  if (!v11)
  {
    v203 = __nwlog_obj();
    *buf = 136446210;
    v307 = "nw_endpoint_fallback_receive_report";
    v204 = _os_log_send_and_compose_impl();

    LOBYTE(type) = 16;
    v304 = 0;
    if (__nwlog_fault(v204, &type, &v304))
    {
      if (type == 17)
      {
        v205 = __nwlog_obj();
        v206 = type;
        if (os_log_type_enabled(v205, type))
        {
          *buf = 136446210;
          v307 = "nw_endpoint_fallback_receive_report";
          _os_log_impl(&dword_181A37000, v205, v206, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v304 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v205 = __nwlog_obj();
        v208 = type;
        v209 = os_log_type_enabled(v205, type);
        if (backtrace_string)
        {
          if (v209)
          {
            *buf = 136446466;
            v307 = "nw_endpoint_fallback_receive_report";
            v308 = 2082;
            v309 = backtrace_string;
            _os_log_impl(&dword_181A37000, v205, v208, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_246;
        }

        if (v209)
        {
          *buf = 136446210;
          v307 = "nw_endpoint_fallback_receive_report";
          _os_log_impl(&dword_181A37000, v205, v208, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v205 = __nwlog_obj();
        v210 = type;
        if (os_log_type_enabled(v205, type))
        {
          *buf = 136446210;
          v307 = "nw_endpoint_fallback_receive_report";
          _os_log_impl(&dword_181A37000, v205, v210, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_246:
    if (v204)
    {
      free(v204);
    }

    v24 = 0;
    v12 = 0;
    goto LABEL_219;
  }

  v13 = v11;
  mode = v13->mode;

  if (mode == 4)
  {
    v300 = v13;
    nw_endpoint_handler_report(v13, v10, a4, v303);
    v15 = nw_endpoint_handler_copy_fallback(v13);
    if ((*(v15 + 108) & 0x40) == 0 && (a3 & 0xFFFFFFFE) == 4)
    {
      if (v303)
      {
        v16 = v15;
        v17 = v303;
        v18 = v17[2];

        v15 = v16;
        if (v18 == 1)
        {
          v19 = v17;
          v20 = v19[3];

          v15 = v16;
          if (v20 == 89)
          {
            *(v16 + 108) |= 1u;
          }
        }
      }
    }

    v301 = v15;
    v22 = *(v15 + 4);
    v21 = *(v15 + 5);
    v299 = v12;
    if (v22 != v10)
    {
      if (v21 != v10)
      {
        v23 = 0;
        v24 = 0;
LABEL_218:

        v12 = v299;
        goto LABEL_219;
      }

      v296 = a3;
      v298 = v22;
      v40 = v300;
      v41 = *(v40 + 284);

      if ((v41 & 0x20) == 0)
      {
        v42 = v40;
        v43 = *(v40 + 284);

        if ((v43 & 0x40) == 0)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v32 = gconnectionLogObj;
          if (!os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            goto LABEL_82;
          }

          v44 = v42;

          v45 = v44;
          v46 = *(v40 + 284);

          if (v46)
          {
            v47 = "dry-run ";
          }

          else
          {
            v47 = "";
          }

          loga = v32;
          v48 = nw_endpoint_handler_copy_endpoint(v45);
          v49 = v48;
          v276 = v48;
          if (v48)
          {
            logging_description = _nw_endpoint_get_logging_description(v48);
          }

          else
          {
            logging_description = "<NULL>";
          }

          v59 = v45;
          v60 = v59;
          v61 = v59[30];
          if (v61 > 5)
          {
            v62 = "unknown-state";
          }

          else
          {
            v62 = off_1E6A31048[v61];
          }

          v63 = v60;
          v64 = v63;
          v65 = v300->mode;
          v287 = a4;
          v268 = logging_description;
          v272 = v47;
          v263 = v62;
          if (v65 > 2)
          {
            switch(v65)
            {
              case 3:
                v66 = "proxy";
                goto LABEL_78;
              case 4:
                v66 = "fallback";
                goto LABEL_78;
              case 5:
                v66 = "transform";
                goto LABEL_78;
            }
          }

          else
          {
            switch(v65)
            {
              case 0:
                v66 = "path";
                goto LABEL_78;
              case 1:
                v66 = "resolver";
                goto LABEL_78;
              case 2:
                v66 = nw_endpoint_flow_mode_string(v63[33]);
LABEL_78:

                v78 = v64;
                os_unfair_lock_lock(v78 + 28);
                v79 = v78[8];
                os_unfair_lock_unlock(v78 + 28);

                v80 = v79;
                id_string = nw_endpoint_handler_get_id_string(v302);
                v82 = nw_endpoint_handler_dry_run_string(v302);
                v83 = nw_endpoint_handler_copy_endpoint(v302);
                v84 = v83;
                v294 = v22;
                if (v83)
                {
                  v85 = _nw_endpoint_get_logging_description(v83);
                }

                else
                {
                  v85 = "<NULL>";
                }

                v86 = v44 + 184;

                v87 = nw_endpoint_handler_state_string(v302);
                v88 = nw_endpoint_handler_mode_string(v302);
                v89 = nw_endpoint_handler_copy_current_path(v302);
                *buf = 136449282;
                v307 = "nw_endpoint_fallback_receive_report";
                v308 = 2082;
                v309 = v86;
                v310 = 2082;
                v311 = v272;
                v312 = 2082;
                v313 = v268;
                v314 = 2082;
                v315 = v263;
                v316 = 2082;
                v317 = v66;
                v318 = 2114;
                v319 = v80;
                v320 = 2082;
                v321 = id_string;
                v322 = 2082;
                v323 = v82;
                v324 = 2082;
                v325 = v85;
                v326 = 2082;
                v327 = v87;
                v328 = 2082;
                v329 = v88;
                v330 = 2114;
                v331 = v89;
                v32 = loga;
                _os_log_impl(&dword_181A37000, loga, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] received fallback child report:[C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] ", buf, 0x84u);

                a4 = v287;
                v22 = v294;

LABEL_82:
                goto LABEL_83;
            }
          }

          v66 = "unknown-mode";
          goto LABEL_78;
        }

LABEL_83:
        v90 = v302;
        v91 = v301;
        goto LABEL_84;
      }

      v290 = a4;
      if ((nw_endpoint_handler_get_logging_disabled(v40) & 1) == 0)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        logc = gconnectionLogObj;
        if (os_log_type_enabled(logc, OS_LOG_TYPE_DEBUG))
        {
          v274 = nw_endpoint_handler_get_id_string(v40);
          v270 = nw_endpoint_handler_dry_run_string(v40);
          v279 = nw_endpoint_handler_copy_endpoint(v40);
          v266 = nw_endpoint_get_logging_description(v279);
          v262 = nw_endpoint_handler_state_string(v40);
          v220 = nw_endpoint_handler_mode_string(v40);
          v221 = nw_endpoint_handler_copy_current_path(v40);
          v222 = nw_endpoint_handler_get_id_string(v10);
          v223 = nw_endpoint_handler_dry_run_string(v10);
          v224 = nw_endpoint_handler_copy_endpoint(v302);
          v225 = nw_endpoint_get_logging_description(v224);
          v226 = nw_endpoint_handler_state_string(v302);
          v227 = nw_endpoint_handler_mode_string(v302);
          v228 = nw_endpoint_handler_copy_current_path(v302);
          *buf = 136449282;
          v307 = "nw_endpoint_fallback_receive_report";
          v308 = 2082;
          v309 = v274;
          v310 = 2082;
          v311 = v270;
          v312 = 2082;
          v313 = v266;
          v314 = 2082;
          v315 = v262;
          v316 = 2082;
          v317 = v220;
          v318 = 2114;
          v319 = v221;
          v320 = 2082;
          v321 = v222;
          v322 = 2082;
          v323 = v223;
          v324 = 2082;
          v325 = v225;
          v326 = 2082;
          v327 = v226;
          v328 = 2082;
          v329 = v227;
          v330 = 2114;
          v331 = v228;
          v32 = logc;
          _os_log_impl(&dword_181A37000, logc, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] received fallback child report:[C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] ", buf, 0x84u);

          a4 = v290;
        }

        else
        {
          v32 = logc;
        }

        goto LABEL_82;
      }

LABEL_276:
      v90 = v10;
      v91 = v301;
      a4 = v290;
LABEL_84:
      v92 = v296;
      if (v296 < 2)
      {
        if (v296 != 1)
        {
          goto LABEL_96;
        }

        if (v22 != v90)
        {
          v93 = v91 + 109;
          v94 = *(v91 + 109);
          if ((v94 & 1) == 0)
          {
            goto LABEL_88;
          }

          v95 = 4;
LABEL_87:
          *v93 = v94 & 0xFA | v95;
LABEL_88:
          v97 = (v91 + 48);
          v96 = *(v91 + 12);
          goto LABEL_98;
        }

        v99 = *(v91 + 108);
        if ((v99 & 0x80000000) == 0)
        {
LABEL_96:
          v97 = (v91 + 48);
          v96 = *(v91 + 12);
          if (v22 == v90 && v96 == 1)
          {
            goto LABEL_100;
          }

LABEL_98:
          if (v22 != v90 && v96 == 2)
          {
LABEL_100:
            if ((v296 - 3) <= 1)
            {
              v100 = *(v91 + 10);
              if (v100)
              {
                nw_queue_cancel_source(v100, v31);
                *(v301 + 10) = 0;
              }
            }

            v101 = v300;
            v101->state = v296;

            nw_endpoint_handler_report(v101, 0, a4, 0);
            goto LABEL_217;
          }

          v102 = v300;
          v297 = v102->parameters;

          if (networkd_settings_get_BOOL(nw_setting_tcpconn_no_fallback_full_stack))
          {
            no_fullstack_fallback = 1;
          }

          else
          {
            no_fullstack_fallback = nw_parameters_get_no_fullstack_fallback(v297);
          }

          v105 = v92 == 2 && *a4 == 3 && a4[1] == 5;
          v106 = v92 == 3;
          if (no_fullstack_fallback)
          {
            v106 = v105;
          }

          if (v92 != 3 && !v106)
          {
            if (v92 == 4 || (v22 != v302 ? (v107 = 4) : (v107 = 2), (*(v301 + 109) & v107) != 0))
            {
              if (!v298)
              {
                goto LABEL_197;
              }

              v108 = v298;
              v109 = (v108[30] & 0xFFFFFFFE) == 4;

              if (v109)
              {
                goto LABEL_197;
              }

              if (v22 != v302)
              {
                if ((*(v301 + 109) & 2) == 0)
                {
LABEL_205:
                  v194 = 4;
LABEL_215:
                  v102->event.domain = 5;
                  v102->event.event = v194;
                  nw_endpoint_handler_report(v102, 0, &v102->event.domain, 0);
                  goto LABEL_216;
                }

LABEL_197:
                v182 = v102;
                v183 = (*(v182 + 284) & 0x20) == 0;

                if (v183)
                {
                  v184 = v182;
                  v185 = (*(v182 + 284) & 0x40) == 0;

                  if (!v185)
                  {
                    goto LABEL_204;
                  }

                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  v186 = gconnectionLogObj;
                  if (os_log_type_enabled(v186, OS_LOG_TYPE_INFO))
                  {
                    v187 = nw_endpoint_handler_get_id_string(v184);
                    v188 = nw_endpoint_handler_dry_run_string(v184);
                    v189 = nw_endpoint_handler_copy_endpoint(v184);
                    v295 = v22;
                    v190 = nw_endpoint_get_logging_description(v189);
                    v191 = nw_endpoint_handler_state_string(v184);
                    v192 = nw_endpoint_handler_mode_string(v184);
                    v193 = nw_endpoint_handler_copy_current_path(v184);
                    *buf = 136447746;
                    v307 = "nw_endpoint_fallback_receive_report";
                    v308 = 2082;
                    v309 = v187;
                    v310 = 2082;
                    v311 = v188;
                    v312 = 2082;
                    v313 = v190;
                    v314 = 2082;
                    v315 = v191;
                    v316 = 2082;
                    v317 = v192;
                    v318 = 2114;
                    v319 = v193;
                    _os_log_impl(&dword_181A37000, v186, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] all children failed", buf, 0x48u);

                    v22 = v295;
                  }
                }

                else
                {
                  if (nw_endpoint_handler_get_logging_disabled(v182))
                  {
LABEL_204:
                    nw_endpoint_handler_handle_failure(v182);
                    if (v22 != v302)
                    {
                      goto LABEL_205;
                    }

LABEL_214:
                    v194 = 3;
                    goto LABEL_215;
                  }

                  v229 = v22;
                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  v186 = gconnectionLogObj;
                  if (os_log_type_enabled(v186, OS_LOG_TYPE_DEBUG))
                  {
                    v291 = nw_endpoint_handler_get_id_string(v182);
                    v230 = nw_endpoint_handler_dry_run_string(v182);
                    v231 = nw_endpoint_handler_copy_endpoint(v182);
                    v232 = nw_endpoint_get_logging_description(v231);
                    v233 = nw_endpoint_handler_state_string(v182);
                    v234 = nw_endpoint_handler_mode_string(v182);
                    v235 = nw_endpoint_handler_copy_current_path(v182);
                    *buf = 136447746;
                    v307 = "nw_endpoint_fallback_receive_report";
                    v308 = 2082;
                    v309 = v291;
                    v310 = 2082;
                    v311 = v230;
                    v312 = 2082;
                    v313 = v232;
                    v314 = 2082;
                    v315 = v233;
                    v316 = 2082;
                    v317 = v234;
                    v318 = 2114;
                    v319 = v235;
                    _os_log_impl(&dword_181A37000, v186, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] all children failed", buf, 0x48u);

                    v22 = v229;
                  }
                }

                goto LABEL_204;
              }

              if ((*(v301 + 109) & 4) != 0)
              {
                goto LABEL_197;
              }

              if ((*(v301 + 108) & 1) == 0 || !*(v301 + 5))
              {
                nw_endpoint_fallback_start_fallback_child(v102);
                goto LABEL_214;
              }

              minimize_logging = nw_endpoint_handler_get_minimize_logging(v102);
              logging_disabled = nw_endpoint_handler_get_logging_disabled(v102);
              if (minimize_logging)
              {
                if (logging_disabled)
                {
                  goto LABEL_196;
                }

                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v174 = gconnectionLogObj;
                if (os_log_type_enabled(v174, OS_LOG_TYPE_DEBUG))
                {
                  v254 = nw_endpoint_handler_get_id_string(v102);
                  v255 = nw_endpoint_handler_dry_run_string(v102);
                  v256 = nw_endpoint_handler_copy_endpoint(v102);
                  v257 = nw_endpoint_get_logging_description(v256);
                  v258 = nw_endpoint_handler_state_string(v102);
                  v259 = nw_endpoint_handler_mode_string(v102);
                  v260 = nw_endpoint_handler_copy_current_path(v102);
                  *buf = 136447746;
                  v307 = "nw_endpoint_fallback_receive_report";
                  v308 = 2082;
                  v309 = v254;
                  v310 = 2082;
                  v311 = v255;
                  v312 = 2082;
                  v313 = v257;
                  v314 = 2082;
                  v315 = v258;
                  v316 = 2082;
                  v317 = v259;
                  v318 = 2114;
                  v319 = v260;
                  _os_log_impl(&dword_181A37000, v174, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] received ECANCELED from primary child, cancelling race", buf, 0x48u);
                }
              }

              else
              {
                if (logging_disabled)
                {
LABEL_196:
                  nw_endpoint_handler_cancel(*(v301 + 5), 0, 1);
                  goto LABEL_214;
                }

                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v174 = gconnectionLogObj;
                if (os_log_type_enabled(v174, OS_LOG_TYPE_INFO))
                {
                  v175 = nw_endpoint_handler_get_id_string(v102);
                  v176 = nw_endpoint_handler_dry_run_string(v102);
                  v177 = nw_endpoint_handler_copy_endpoint(v102);
                  v178 = nw_endpoint_get_logging_description(v177);
                  v179 = nw_endpoint_handler_state_string(v102);
                  v180 = nw_endpoint_handler_mode_string(v102);
                  v181 = nw_endpoint_handler_copy_current_path(v102);
                  *buf = 136447746;
                  v307 = "nw_endpoint_fallback_receive_report";
                  v308 = 2082;
                  v309 = v175;
                  v310 = 2082;
                  v311 = v176;
                  v312 = 2082;
                  v313 = v178;
                  v314 = 2082;
                  v315 = v179;
                  v316 = 2082;
                  v317 = v180;
                  v318 = 2114;
                  v319 = v181;
                  _os_log_impl(&dword_181A37000, v174, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] received ECANCELED from primary child, cancelling race", buf, 0x48u);
                }
              }

              goto LABEL_196;
            }

            v112 = !v105;
            if (v22 != v302)
            {
              v112 = 1;
            }

            if ((v112 & 1) != 0 || (*(v301 + 108) & 0x42) != 2 || !*(v301 + 9))
            {
              goto LABEL_216;
            }

            v113 = nw_endpoint_handler_get_minimize_logging(v102);
            v114 = nw_endpoint_handler_get_logging_disabled(v102);
            if (v113)
            {
              if (v114)
              {
                goto LABEL_146;
              }

              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v115 = gconnectionLogObj;
              if (os_log_type_enabled(v115, OS_LOG_TYPE_DEBUG))
              {
                v246 = nw_endpoint_handler_get_id_string(v102);
                v247 = nw_endpoint_handler_dry_run_string(v102);
                v248 = nw_endpoint_handler_copy_endpoint(v102);
                v249 = nw_endpoint_get_logging_description(v248);
                v250 = nw_endpoint_handler_state_string(v102);
                v251 = nw_endpoint_handler_mode_string(v102);
                v252 = nw_endpoint_handler_copy_current_path(v102);
                v253 = *(v301 + 3) / 0xF4240uLL;
                *buf = 136448002;
                v307 = "nw_endpoint_fallback_receive_report";
                v308 = 2082;
                v309 = v246;
                v310 = 2082;
                v311 = v247;
                v312 = 2082;
                v313 = v249;
                v314 = 2082;
                v315 = v250;
                v316 = 2082;
                v317 = v251;
                v318 = 2114;
                v319 = v252;
                v320 = 2048;
                v321 = v253;
                _os_log_impl(&dword_181A37000, v115, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] pushing out fallback endpoint start by %llums", buf, 0x52u);
              }
            }

            else
            {
              if (v114)
              {
LABEL_146:
                v124 = *(v301 + 9);
                v125 = dispatch_time(0x8000000000000000, *(v301 + 3));
                nw_queue_set_timer_values(v124, v125, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
LABEL_216:

LABEL_217:
                v24 = 1;
                v23 = v298;
                goto LABEL_218;
              }

              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v115 = gconnectionLogObj;
              if (os_log_type_enabled(v115, OS_LOG_TYPE_INFO))
              {
                v116 = nw_endpoint_handler_get_id_string(v102);
                v117 = nw_endpoint_handler_dry_run_string(v102);
                v118 = nw_endpoint_handler_copy_endpoint(v102);
                v119 = nw_endpoint_get_logging_description(v118);
                v120 = nw_endpoint_handler_state_string(v102);
                v121 = nw_endpoint_handler_mode_string(v102);
                v122 = nw_endpoint_handler_copy_current_path(v102);
                v123 = *(v301 + 3) / 0xF4240uLL;
                *buf = 136448002;
                v307 = "nw_endpoint_fallback_receive_report";
                v308 = 2082;
                v309 = v116;
                v310 = 2082;
                v311 = v117;
                v312 = 2082;
                v313 = v119;
                v314 = 2082;
                v315 = v120;
                v316 = 2082;
                v317 = v121;
                v318 = 2114;
                v319 = v122;
                v320 = 2048;
                v321 = v123;
                _os_log_impl(&dword_181A37000, v115, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] pushing out fallback endpoint start by %llums", buf, 0x52u);
              }
            }

            goto LABEL_146;
          }

          v110 = *(v301 + 9);
          if (v110)
          {
            nw_queue_cancel_source(v110, v103);
            *(v301 + 9) = 0;
          }

          if (!*v97)
          {
            if (v22 == v302)
            {
              *(v301 + 12) = 1;
              v126 = *(v301 + 5);
              if (v126)
              {
                nw_endpoint_handler_cancel(v126, 0, 0);
              }

              if (v92 == 2)
              {
                nw_endpoint_fallback_start_post_transport_timer(v102);
              }
            }

            else
            {
              *(v301 + 12) = 2;
              v111 = *(v301 + 4);
              if (v111)
              {
                nw_endpoint_handler_cancel(v111, 0, 0);
              }

              if (*(v301 + 26) == 2)
              {
                nw_endpoint_fallback_start_usage_cap_timer(v102);
              }
            }

            v127 = v102;
            v128 = (*(v127 + 284) & 0x20) == 0;

            if (v128)
            {
              v129 = v127;
              v130 = (*(v127 + 284) & 0x40) == 0;

              if (!v130)
              {
                goto LABEL_161;
              }

              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v131 = gconnectionLogObj;
              if (os_log_type_enabled(v131, OS_LOG_TYPE_INFO))
              {
                v132 = nw_endpoint_handler_get_id_string(v129);
                v277 = nw_endpoint_handler_dry_run_string(v129);
                logb = v131;
                v133 = nw_endpoint_handler_copy_endpoint(v129);
                v289 = a4;
                v134 = nw_endpoint_get_logging_description(v133);
                v135 = nw_endpoint_handler_state_string(v129);
                v136 = nw_endpoint_handler_mode_string(v129);
                v137 = nw_endpoint_handler_copy_current_path(v129);
                v138 = v137;
                v139 = *(v301 + 7);
                v140 = *(v301 + 8);
                if (v22 == v302)
                {
                  v141 = *(v301 + 7);
                }

                else
                {
                  v141 = *(v301 + 8);
                }

                *buf = 136448514;
                v307 = "nw_endpoint_fallback_receive_report";
                v308 = 2082;
                v309 = v132;
                v310 = 2082;
                v311 = v277;
                v312 = 2082;
                v313 = v134;
                v314 = 2082;
                v315 = v135;
                v316 = 2082;
                v317 = v136;
                v318 = 2114;
                v319 = v137;
                v320 = 2112;
                v321 = v139;
                v322 = 2112;
                v323 = v140;
                v324 = 2112;
                v325 = v141;
                _os_log_impl(&dword_181A37000, logb, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] fallback complete: primary child (%@), fallback child (%@), %@ connected", buf, 0x66u);

                a4 = v289;
                v131 = logb;
              }

              goto LABEL_160;
            }

            if ((nw_endpoint_handler_get_logging_disabled(v127) & 1) == 0)
            {
              v292 = a4;
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v236 = gconnectionLogObj;
              if (os_log_type_enabled(v236, OS_LOG_TYPE_DEBUG))
              {
                logd = nw_endpoint_handler_get_id_string(v127);
                v280 = nw_endpoint_handler_dry_run_string(v127);
                v237 = nw_endpoint_handler_copy_endpoint(v127);
                v238 = nw_endpoint_get_logging_description(v237);
                v239 = nw_endpoint_handler_state_string(v127);
                v240 = nw_endpoint_handler_mode_string(v127);
                v241 = nw_endpoint_handler_copy_current_path(v127);
                v242 = v241;
                v243 = *(v301 + 7);
                v244 = *(v301 + 8);
                if (v22 == v302)
                {
                  v245 = *(v301 + 7);
                }

                else
                {
                  v245 = *(v301 + 8);
                }

                *buf = 136448514;
                v307 = "nw_endpoint_fallback_receive_report";
                v308 = 2082;
                v309 = logd;
                v310 = 2082;
                v311 = v280;
                v312 = 2082;
                v313 = v238;
                v314 = 2082;
                v315 = v239;
                v316 = 2082;
                v317 = v240;
                v318 = 2114;
                v319 = v241;
                v320 = 2112;
                v321 = v243;
                v322 = 2112;
                v323 = v244;
                v324 = 2112;
                v325 = v245;
                _os_log_impl(&dword_181A37000, v236, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] fallback complete: primary child (%@), fallback child (%@), %@ connected", buf, 0x66u);

                a4 = v292;
              }

              v131 = v236;
LABEL_160:
            }
          }

LABEL_161:
          if (v92 == 3)
          {
            v142 = v102;
            v142->state = 3;
          }

          nw_endpoint_handler_report(v102, 0, a4, 0);
          v143 = *(v301 + 108);
          v102->event.domain = 5;
          p_event = &v102->event;
          if (v22 == v302)
          {
            v102->event.event = 3;
            nw_endpoint_handler_report(v102, 0, p_event, 0);
            if ((v143 & 0x10) == 0)
            {
              goto LABEL_216;
            }
          }

          else
          {
            v102->event.event = 4;
            nw_endpoint_handler_report(v102, 0, p_event, 0);
            if ((v143 & 0x10) != 0)
            {
              goto LABEL_216;
            }
          }

          v145 = v102;
          os_unfair_lock_lock(&v145->lock);
          v146 = v145->current_path;
          os_unfair_lock_unlock(&v145->lock);

          if (!v146)
          {
            if ((nw_endpoint_handler_get_logging_disabled(v145) & 1) == 0)
            {
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v157 = gconnectionLogObj;
              if (os_log_type_enabled(v157, OS_LOG_TYPE_ERROR))
              {
                v158 = nw_endpoint_handler_get_id_string(v145);
                v159 = nw_endpoint_handler_dry_run_string(v145);
                v160 = nw_endpoint_handler_copy_endpoint(v145);
                v161 = nw_endpoint_get_logging_description(v160);
                v162 = nw_endpoint_handler_state_string(v145);
                v163 = nw_endpoint_handler_mode_string(v145);
                v164 = nw_endpoint_handler_copy_current_path(v145);
                *buf = 136447746;
                v307 = "nw_endpoint_fallback_receive_report";
                v308 = 2082;
                v309 = v158;
                v310 = 2082;
                v311 = v159;
                v312 = 2082;
                v313 = v161;
                v314 = 2082;
                v315 = v162;
                v316 = 2082;
                v317 = v163;
                v318 = 2114;
                v319 = v164;
                _os_log_impl(&dword_181A37000, v157, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] could not get fallback path", buf, 0x48u);
              }
            }

            goto LABEL_212;
          }

          type = 0uLL;
          if (nw_path_get_fallback_agent(v146, &type))
          {
            v147 = nw_path_agent_action(v146, &type, 131);
            v148 = nw_endpoint_handler_get_logging_disabled(v145);
            if (v147)
            {
              if ((v148 & 1) == 0)
              {
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v149 = gconnectionLogObj;
                if (os_log_type_enabled(v149, OS_LOG_TYPE_DEBUG))
                {
                  v150 = nw_endpoint_handler_get_id_string(v145);
                  v151 = nw_endpoint_handler_dry_run_string(v145);
                  v152 = nw_endpoint_handler_copy_endpoint(v145);
                  v153 = nw_endpoint_get_logging_description(v152);
                  v154 = nw_endpoint_handler_state_string(v145);
                  v155 = nw_endpoint_handler_mode_string(v145);
                  v156 = nw_endpoint_handler_copy_current_path(v145);
                  *buf = 136447746;
                  v307 = "nw_endpoint_fallback_receive_report";
                  v308 = 2082;
                  v309 = v150;
                  v310 = 2082;
                  v311 = v151;
                  v312 = 2082;
                  v313 = v153;
                  v314 = 2082;
                  v315 = v154;
                  v316 = 2082;
                  v317 = v155;
                  v318 = 2114;
                  v319 = v156;
                  _os_log_impl(&dword_181A37000, v149, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] asserted fallback agent", buf, 0x48u);
                }

LABEL_211:
              }
            }

            else if ((v148 & 1) == 0)
            {
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v149 = gconnectionLogObj;
              if (os_log_type_enabled(v149, OS_LOG_TYPE_ERROR))
              {
                v195 = nw_endpoint_handler_get_id_string(v145);
                v196 = nw_endpoint_handler_dry_run_string(v145);
                v197 = nw_endpoint_handler_copy_endpoint(v145);
                v198 = nw_endpoint_get_logging_description(v197);
                v199 = nw_endpoint_handler_state_string(v145);
                v200 = nw_endpoint_handler_mode_string(v145);
                v201 = nw_endpoint_handler_copy_current_path(v145);
                *buf = 136447746;
                v307 = "nw_endpoint_fallback_receive_report";
                v308 = 2082;
                v309 = v195;
                v310 = 2082;
                v311 = v196;
                v312 = 2082;
                v313 = v198;
                v314 = 2082;
                v315 = v199;
                v316 = 2082;
                v317 = v200;
                v318 = 2114;
                v319 = v201;
                _os_log_impl(&dword_181A37000, v149, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] could not assert fallback agent", buf, 0x48u);
              }

              goto LABEL_211;
            }
          }

          else if ((nw_endpoint_handler_get_logging_disabled(v145) & 1) == 0)
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v149 = gconnectionLogObj;
            if (os_log_type_enabled(v149, OS_LOG_TYPE_ERROR))
            {
              v165 = nw_endpoint_handler_get_id_string(v145);
              v166 = nw_endpoint_handler_dry_run_string(v145);
              v167 = nw_endpoint_handler_copy_endpoint(v145);
              v168 = nw_endpoint_get_logging_description(v167);
              v169 = nw_endpoint_handler_state_string(v145);
              v170 = nw_endpoint_handler_mode_string(v145);
              v171 = nw_endpoint_handler_copy_current_path(v145);
              *buf = 136447746;
              v307 = "nw_endpoint_fallback_receive_report";
              v308 = 2082;
              v309 = v165;
              v310 = 2082;
              v311 = v166;
              v312 = 2082;
              v313 = v168;
              v314 = 2082;
              v315 = v169;
              v316 = 2082;
              v317 = v170;
              v318 = 2114;
              v319 = v171;
              _os_log_impl(&dword_181A37000, v149, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] could not get fallback agent", buf, 0x48u);
            }

            goto LABEL_211;
          }

LABEL_212:

          goto LABEL_216;
        }

        *(v91 + 108) = v99 & 0x7F;
        v98 = *(v91 + 109) | 2;
      }

      else
      {
        if (v22 != v90)
        {
          v93 = v91 + 109;
          v94 = *(v91 + 109);
          v95 = 1;
          goto LABEL_87;
        }

        *(v91 + 108) |= 0x80u;
        v98 = *(v91 + 109) & 0xFD;
      }

      *(v91 + 109) = v98;
      goto LABEL_96;
    }

    v296 = a3;
    v298 = v21;
    v27 = v300;
    v28 = *(v27 + 284);

    if ((v28 & 0x20) != 0)
    {
      v290 = a4;
      if ((nw_endpoint_handler_get_logging_disabled(v27) & 1) == 0)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v32 = gconnectionLogObj;
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          v211 = v32;
          v278 = nw_endpoint_handler_get_id_string(v27);
          v273 = nw_endpoint_handler_dry_run_string(v27);
          loge = nw_endpoint_handler_copy_endpoint(v27);
          v269 = nw_endpoint_get_logging_description(loge);
          v265 = nw_endpoint_handler_state_string(v27);
          v261 = nw_endpoint_handler_mode_string(v27);
          v212 = nw_endpoint_handler_copy_current_path(v27);
          v213 = nw_endpoint_handler_get_id_string(v10);
          v214 = nw_endpoint_handler_dry_run_string(v10);
          v215 = nw_endpoint_handler_copy_endpoint(v302);
          v216 = nw_endpoint_get_logging_description(v215);
          v217 = nw_endpoint_handler_state_string(v302);
          v218 = nw_endpoint_handler_mode_string(v302);
          v219 = nw_endpoint_handler_copy_current_path(v302);
          *buf = 136449282;
          v307 = "nw_endpoint_fallback_receive_report";
          v308 = 2082;
          v309 = v278;
          v310 = 2082;
          v311 = v273;
          v312 = 2082;
          v313 = v269;
          v314 = 2082;
          v315 = v265;
          v316 = 2082;
          v317 = v261;
          v318 = 2114;
          v319 = v212;
          v320 = 2082;
          v321 = v213;
          v322 = 2082;
          v323 = v214;
          v324 = 2082;
          v325 = v216;
          v326 = 2082;
          v327 = v217;
          v328 = 2082;
          v329 = v218;
          v330 = 2114;
          v331 = v219;
          v32 = v211;
          _os_log_impl(&dword_181A37000, v211, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] received primary child report:[C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] ", buf, 0x84u);

          a4 = v290;
        }

        goto LABEL_82;
      }

      goto LABEL_276;
    }

    v29 = v27;
    v30 = *(v27 + 284);

    if ((v30 & 0x40) != 0)
    {
      goto LABEL_83;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v32 = gconnectionLogObj;
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      goto LABEL_82;
    }

    v33 = v29;

    v34 = v33;
    v35 = *(v27 + 284);

    if (v35)
    {
      v36 = "dry-run ";
    }

    else
    {
      v36 = "";
    }

    log = v32;
    v37 = nw_endpoint_handler_copy_endpoint(v34);
    v38 = v37;
    v275 = v37;
    if (v37)
    {
      v39 = _nw_endpoint_get_logging_description(v37);
    }

    else
    {
      v39 = "<NULL>";
    }

    v51 = v34;
    v52 = v51;
    v53 = v51[30];
    if (v53 > 5)
    {
      v54 = "unknown-state";
    }

    else
    {
      v54 = off_1E6A31048[v53];
    }

    v55 = v52;
    v56 = v55;
    v57 = v300->mode;
    v267 = v54;
    v271 = v39;
    if (v57 > 2)
    {
      switch(v57)
      {
        case 3:
          v58 = "proxy";
          goto LABEL_69;
        case 4:
          v58 = "fallback";
          goto LABEL_69;
        case 5:
          v58 = "transform";
          goto LABEL_69;
      }
    }

    else
    {
      switch(v57)
      {
        case 0:
          v58 = "path";
          goto LABEL_69;
        case 1:
          v58 = "resolver";
          goto LABEL_69;
        case 2:
          v58 = nw_endpoint_flow_mode_string(v55[33]);
LABEL_69:

          v67 = v56;
          os_unfair_lock_lock(v67 + 28);
          v68 = v67[8];
          os_unfair_lock_unlock(v67 + 28);

          v69 = v68;
          v264 = nw_endpoint_handler_get_id_string(v302);
          v70 = nw_endpoint_handler_dry_run_string(v302);
          v71 = nw_endpoint_handler_copy_endpoint(v302);
          v72 = v71;
          v288 = a4;
          v293 = v22;
          if (v71)
          {
            v73 = _nw_endpoint_get_logging_description(v71);
          }

          else
          {
            v73 = "<NULL>";
          }

          v74 = v33 + 184;

          v75 = nw_endpoint_handler_state_string(v302);
          v76 = nw_endpoint_handler_mode_string(v302);
          v77 = nw_endpoint_handler_copy_current_path(v302);
          *buf = 136449282;
          v307 = "nw_endpoint_fallback_receive_report";
          v308 = 2082;
          v309 = v74;
          v310 = 2082;
          v311 = v36;
          v312 = 2082;
          v313 = v271;
          v314 = 2082;
          v315 = v267;
          v316 = 2082;
          v317 = v58;
          v318 = 2114;
          v319 = v69;
          v320 = 2082;
          v321 = v264;
          v322 = 2082;
          v323 = v70;
          v324 = 2082;
          v325 = v73;
          v326 = 2082;
          v327 = v75;
          v328 = 2082;
          v329 = v76;
          v330 = 2114;
          v331 = v77;
          v32 = log;
          _os_log_impl(&dword_181A37000, log, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] received primary child report:[C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] ", buf, 0x84u);

          a4 = v288;
          v22 = v293;

          goto LABEL_82;
      }
    }

    v58 = "unknown-mode";
    goto LABEL_69;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v25 = gLogObj;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    if (mode > 5)
    {
      v26 = "unknown-mode";
    }

    else
    {
      v26 = off_1E6A31018[mode];
    }

    *buf = 136446722;
    v307 = "nw_endpoint_fallback_receive_report";
    v308 = 2082;
    v309 = v26;
    v310 = 2082;
    v311 = "fallback";
    _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_DEFAULT, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
  }

  v24 = 0;
LABEL_219:

  return v24;
}

char *__cdecl nw_connection_copy_description(nw_connection_t connection)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = connection;
  v2 = v1;
  if (v1)
  {
    v3 = nw_connection_copy_description_level(v1, 1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_connection_copy_description";
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
        v16 = "nw_connection_copy_description";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null connection", buf, 0xCu);
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
          v16 = "nw_connection_copy_description";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_connection_copy_description";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_connection_copy_description";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
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

uint64_t NWPath.debugDescription.getter()
{
  v1 = *(v0 + *(type metadata accessor for NWPath(0) + 52));
  if (!v1)
  {
    return 1701736302;
  }

  v2 = [v1 description];
  v3 = sub_182AD2F88();

  return v3;
}

uint64_t sub_181EA9B98()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_181EA9C90(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839ED8);
  *v3 = v1;
  v3[1] = sub_181EA9B98;

  return MEMORY[0x1EEE6D9D0](a1, v4);
}

uint64_t sub_181EA9D4C(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 52));
  if (!v2)
  {
    return 1701736302;
  }

  v3 = [v2 description];
  v4 = sub_182AD2F88();

  return v4;
}

uint64_t ___ZL27nw_association_update_pathsP25NWConcrete_nw_associationPU21objcproto10OS_nw_path8NSObject_block_invoke(uint64_t a1, uint64_t a2)
{
  v61 = *MEMORY[0x1E69E9840];
  v50 = nw_hash_node_get_object(a2);
  extra = nw_hash_node_get_extra(a2);
  v5 = extra;
  if (!*(extra + 32))
  {
    goto LABEL_7;
  }

  v6 = *(extra + 40);
  v7 = time(0);
  v8 = v5[4];
  v9 = v7 > v8;
  v10 = *(a1 + 40);
  v11 = *(*(a1 + 32) + 32);
  v12 = v50;
  v13 = v11;
  v14 = v10;
  if (!v12)
  {
    v42 = __nwlog_obj();
    *buf = 136446210;
    v54 = "nw_protocol_definition_should_flush_cache";
    v43 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v51 = 0;
    if (__nwlog_fault(v43, &type, &v51))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v44 = __nwlog_obj();
        v45 = type;
        if (os_log_type_enabled(v44, type))
        {
          *buf = 136446210;
          v54 = "nw_protocol_definition_should_flush_cache";
          _os_log_impl(&dword_181A37000, v44, v45, "%{public}s called with null definition", buf, 0xCu);
        }
      }

      else if (v51 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v44 = __nwlog_obj();
        v47 = type;
        v48 = os_log_type_enabled(v44, type);
        if (backtrace_string)
        {
          if (v48)
          {
            *buf = 136446466;
            v54 = "nw_protocol_definition_should_flush_cache";
            v55 = 2082;
            v56 = backtrace_string;
            _os_log_impl(&dword_181A37000, v44, v47, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_69;
        }

        if (v48)
        {
          *buf = 136446210;
          v54 = "nw_protocol_definition_should_flush_cache";
          _os_log_impl(&dword_181A37000, v44, v47, "%{public}s called with null definition, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v44 = __nwlog_obj();
        v49 = type;
        if (os_log_type_enabled(v44, type))
        {
          *buf = 136446210;
          v54 = "nw_protocol_definition_should_flush_cache";
          _os_log_impl(&dword_181A37000, v44, v49, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_69:
    if (v43)
    {
      free(v43);
    }

    goto LABEL_48;
  }

  v15 = v12[9];
  if (v15)
  {
    v16 = *(v15 + 64);
    if (v16)
    {
      v9 = v16(v12, v6, v7 > v8, v13, v14);
    }
  }

  if (!v9)
  {
    goto LABEL_48;
  }

LABEL_7:
  v17 = v5[5];
  if (v17)
  {
    nw_protocol_definition_deallocate_cache_entry(v50, v17);
  }

  nw_context_remove_cache_entry(*(a1 + 48), v5);
  if (nw_hash_table_remove_node(*(*(a1 + 32) + 56), a2) & 1) != 0 || (nw_path_parameters_get_logging_disabled(*(*(a1 + 32) + 16)))
  {
    goto LABEL_48;
  }

  if (__nwlog_connection_log::onceToken[0] != -1)
  {
    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
  }

  v18 = gconnectionLogObj;
  v19 = *(*(a1 + 32) + 8);
  v20 = v19;
  if (v19)
  {
    logging_description = _nw_endpoint_get_logging_description(v19);
  }

  else
  {
    logging_description = "<NULL>";
  }

  *buf = 136446722;
  v54 = "nw_association_update_paths_block_invoke";
  v55 = 2082;
  v56 = logging_description;
  v57 = 2048;
  v58 = a2;
  v22 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v51 = 0;
  if (__nwlog_fault(v22, &type, &v51))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v23 = gconnectionLogObj;
      v24 = type;
      if (os_log_type_enabled(v23, type))
      {
        v25 = *(*(a1 + 32) + 8);
        v26 = v25;
        if (v25)
        {
          v27 = _nw_endpoint_get_logging_description(v25);
        }

        else
        {
          v27 = "<NULL>";
        }

        *buf = 136446722;
        v54 = "nw_association_update_paths_block_invoke";
        v55 = 2082;
        v56 = v27;
        v57 = 2048;
        v58 = a2;
        _os_log_impl(&dword_181A37000, v23, v24, "%{public}s <nw_association %{public}s> failed to remove cache entry for node %p", buf, 0x20u);
      }
    }

    else if (v51 == 1)
    {
      v28 = __nw_create_backtrace_string();
      if (v28)
      {
        v29 = v28;
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v30 = gconnectionLogObj;
        v31 = type;
        if (os_log_type_enabled(v30, type))
        {
          v32 = *(*(a1 + 32) + 8);
          v33 = v32;
          if (v32)
          {
            v34 = _nw_endpoint_get_logging_description(v32);
          }

          else
          {
            v34 = "<NULL>";
          }

          *buf = 136446978;
          v54 = "nw_association_update_paths_block_invoke";
          v55 = 2082;
          v56 = v34;
          v57 = 2048;
          v58 = a2;
          v59 = 2082;
          v60 = v29;
          _os_log_impl(&dword_181A37000, v30, v31, "%{public}s <nw_association %{public}s> failed to remove cache entry for node %p, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v29);
        if (v22)
        {
          goto LABEL_47;
        }

        goto LABEL_48;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v23 = gconnectionLogObj;
      v39 = type;
      if (os_log_type_enabled(v23, type))
      {
        v40 = nw_endpoint_get_logging_description(*(*(a1 + 32) + 8));
        *buf = 136446722;
        v54 = "nw_association_update_paths_block_invoke";
        v55 = 2082;
        v56 = v40;
        v57 = 2048;
        v58 = a2;
        _os_log_impl(&dword_181A37000, v23, v39, "%{public}s <nw_association %{public}s> failed to remove cache entry for node %p, no backtrace", buf, 0x20u);
      }
    }

    else
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v23 = gconnectionLogObj;
      v35 = type;
      if (os_log_type_enabled(v23, type))
      {
        v36 = *(*(a1 + 32) + 8);
        v37 = v36;
        if (v36)
        {
          v38 = _nw_endpoint_get_logging_description(v36);
        }

        else
        {
          v38 = "<NULL>";
        }

        *buf = 136446722;
        v54 = "nw_association_update_paths_block_invoke";
        v55 = 2082;
        v56 = v38;
        v57 = 2048;
        v58 = a2;
        _os_log_impl(&dword_181A37000, v23, v35, "%{public}s <nw_association %{public}s> failed to remove cache entry for node %p, backtrace limit exceeded", buf, 0x20u);
      }
    }
  }

  if (v22)
  {
LABEL_47:
    free(v22);
  }

LABEL_48:

  return 1;
}

uint64_t ___ZL41nw_endpoint_handler_has_fallback_childrenP30NWConcrete_nw_endpoint_handler_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3->mode == 4 || nw_endpoint_handler_has_fallback_children(v3))
  {
    v5 = 0;
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

void nw_protocol_input_finished_quiet(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return;
  }

  v2 = a1;
  v3 = a1[3];
  if (!v3)
  {
    return;
  }

  v4 = a2;
  if (!a2)
  {
    return;
  }

  v5 = *(v3 + 184);
  if (!v5)
  {
    return;
  }

  v6 = a1[5];
  v7 = a1;
  if (v6 == &nw_protocol_ref_counted_handle || v6 == &nw_protocol_ref_counted_additional_handle && (v7 = a1[8]) != 0)
  {
    v9 = v7[11];
    v8 = 0;
    if (v9)
    {
      v7[11] = v9 + 1;
    }
  }

  else
  {
    v8 = 1;
  }

  v10 = *(a2 + 40);
  v11 = a2;
  if (v10 != &nw_protocol_ref_counted_handle && (v10 != &nw_protocol_ref_counted_additional_handle || (v11 = *(a2 + 64)) == 0))
  {
    v5(a1, a2);
    if (v8)
    {
      return;
    }

    goto LABEL_24;
  }

  v12 = *(v11 + 88);
  if (v12)
  {
    *(v11 + 88) = v12 + 1;
  }

  v5(a1, a2);
  v13 = *(v4 + 40);
  if (v13 != &nw_protocol_ref_counted_handle && (v13 != &nw_protocol_ref_counted_additional_handle || (v4 = *(v4 + 64)) == 0) || (v14 = *(v4 + 88)) == 0 || (v15 = v14 - 1, (*(v4 + 88) = v15) != 0))
  {
    if (v8)
    {
      return;
    }

    goto LABEL_24;
  }

  v21 = *(v4 + 64);
  if (v21)
  {
    *(v4 + 64) = 0;
    v21[2](v21);
    _Block_release(v21);
  }

  if (*(v4 + 72))
  {
    v22 = *(v4 + 64);
    if (v22)
    {
      _Block_release(v22);
    }
  }

  free(v4);
  if ((v8 & 1) == 0)
  {
LABEL_24:
    v16 = v2[5];
    if (v16 == &nw_protocol_ref_counted_handle || v16 == &nw_protocol_ref_counted_additional_handle && (v2 = v2[8]) != 0)
    {
      v17 = v2[11];
      if (v17)
      {
        v18 = v17 - 1;
        v2[11] = v18;
        if (!v18)
        {
          v19 = v2[8];
          if (v19)
          {
            v2[8] = 0;
            v19[2](v19);
            _Block_release(v19);
          }

          if (v2[9])
          {
            v20 = v2[8];
            if (v20)
            {
              _Block_release(v20);
            }
          }

          free(v2);
        }
      }
    }
  }
}

void _nw_path_set_throughput_estimates(char *a1, char a2, char a3)
{
  if (a1)
  {
    v5 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
    v6 = a1;
    swift_beginAccess();
    v5[356] = a2;
    v5[357] = a3;
  }
}

uint64_t nw_interface_copy_delegate_interface(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_interface_copy_delegate_interface();
  }

  v2 = __nwlog_obj();
  *buf = 136446466;
  v12 = "nw_interface_copy_delegate_interface";
  v13 = 2082;
  v14 = "Invalid interface object";
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
        *buf = 136446466;
        v12 = "nw_interface_copy_delegate_interface";
        v13 = 2082;
        v14 = "Invalid interface object";
        v6 = "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0x16u);
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
            *buf = 136446722;
            v12 = "nw_interface_copy_delegate_interface";
            v13 = 2082;
            v14 = "Invalid interface object";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446466;
        v12 = "nw_interface_copy_delegate_interface";
        v13 = 2082;
        v14 = "Invalid interface object";
        v6 = "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446466;
        v12 = "nw_interface_copy_delegate_interface";
        v13 = 2082;
        v14 = "Invalid interface object";
        v6 = "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, backtrace limit exceeded";
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

uint64_t _nw_interface_copy_delegate_interface()
{

  sub_181EAAC3C(&v1, &v2);

  return v2;
}

uint64_t sub_181EAAC3C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *(*a1 + 24);
  if (result)
  {
    sub_181E378A4(result, &v16, v17);
    type metadata accessor for Interface.BackingClass();
    v4 = swift_allocObject();
    v5 = v18[0];
    v4[9] = v17[8];
    v4[10] = v5;
    *(v4 + 170) = *(v18 + 10);
    v6 = v17[5];
    v4[5] = v17[4];
    v4[6] = v6;
    v7 = v17[7];
    v4[7] = v17[6];
    v4[8] = v7;
    v8 = v17[1];
    v4[1] = v17[0];
    v4[2] = v8;
    v9 = v17[3];
    v4[3] = v17[2];
    v4[4] = v9;
    v10 = type metadata accessor for __NWInterface();
    v11 = objc_allocWithZone(v10);
    v12 = OBJC_IVAR____TtC7Network13__NWInterface_lock;

    v13 = swift_slowAlloc();
    *&v11[v12] = v13;
    *&v11[OBJC_IVAR____TtC7Network13__NWInterface_nameStorage] = 0;
    *&v11[OBJC_IVAR____TtC7Network13__NWInterface_interface] = v4;
    *v13 = 0;
    v15.receiver = v11;
    v15.super_class = v10;
    v14 = objc_msgSendSuper2(&v15, sel_init);

    *a2 = v14;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t nw_path_get_reason_description(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    reason_description = _nw_path_get_reason_description(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_get_reason_description";
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
        v16 = "nw_path_get_reason_description";
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
          v16 = "nw_path_get_reason_description";
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
        v16 = "nw_path_get_reason_description";
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
        v16 = "nw_path_get_reason_description";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  reason_description = 0;
LABEL_3:

  return reason_description;
}

uint64_t nw_path_get_interface_time_delta(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    interface_time_delta = _nw_path_get_interface_time_delta(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_get_interface_time_delta";
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
        v16 = "nw_path_get_interface_time_delta";
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
          v16 = "nw_path_get_interface_time_delta";
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
        v16 = "nw_path_get_interface_time_delta";
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
        v16 = "nw_path_get_interface_time_delta";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  interface_time_delta = 0;
LABEL_3:

  return interface_time_delta;
}

uint64_t nw_path_copy_group_members(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_path_copy_group_members(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_copy_group_members";
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
        v16 = "nw_path_copy_group_members";
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
          v16 = "nw_path_copy_group_members";
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
        v16 = "nw_path_copy_group_members";
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
        v16 = "nw_path_copy_group_members";
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

uint64_t nw_nsstring(uint64_t a1)
{
  result = [MEMORY[0x1E696AEC0] stringWithUTF8String:a1];
  if (!result)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v2 = gLogObj;
    os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);
    v3 = _os_log_send_and_compose_impl();

    result = __nwlog_should_abort(v3);
    if (result)
    {
      __break(1u);
    }

    else
    {
      free(v3);
      return 0;
    }
  }

  return result;
}

uint64_t nw_parameters_get_url(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = _nw_parameters_copy_url_endpoint(a1, a2);
    v3 = v2;
    if (v2)
    {
      v4 = v2;
      url = _nw_endpoint_get_url(v4);
    }

    else
    {
      url = 0;
    }

    return url;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  v18 = "nw_parameters_get_url";
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
        v18 = "nw_parameters_get_url";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null parameters", buf, 0xCu);
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
          v18 = "nw_parameters_get_url";
          v19 = 2082;
          v20 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_23;
      }

      if (v13)
      {
        *buf = 136446210;
        v18 = "nw_parameters_get_url";
        _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v18 = "nw_parameters_get_url";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_23:
  if (v8)
  {
    free(v8);
  }

  return 0;
}

uint64_t nw_parameters_get_sanitized_url(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = _nw_parameters_copy_url_endpoint(a1, a2);
    v3 = v2;
    if (v2)
    {
      v4 = v2;
      sanitized_url = _nw_endpoint_get_sanitized_url(v4);
    }

    else
    {
      sanitized_url = 0;
    }

    return sanitized_url;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  v18 = "nw_parameters_get_sanitized_url";
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
        v18 = "nw_parameters_get_sanitized_url";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null parameters", buf, 0xCu);
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
          v18 = "nw_parameters_get_sanitized_url";
          v19 = 2082;
          v20 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_23;
      }

      if (v13)
      {
        *buf = 136446210;
        v18 = "nw_parameters_get_sanitized_url";
        _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v18 = "nw_parameters_get_sanitized_url";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_23:
  if (v8)
  {
    free(v8);
  }

  return 0;
}

uint64_t nw_interface_is_expensive(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_interface_is_expensive(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446466;
  v12 = "nw_interface_is_expensive";
  v13 = 2082;
  v14 = "Invalid interface object";
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
        *buf = 136446466;
        v12 = "nw_interface_is_expensive";
        v13 = 2082;
        v14 = "Invalid interface object";
        v6 = "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0x16u);
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
            *buf = 136446722;
            v12 = "nw_interface_is_expensive";
            v13 = 2082;
            v14 = "Invalid interface object";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446466;
        v12 = "nw_interface_is_expensive";
        v13 = 2082;
        v14 = "Invalid interface object";
        v6 = "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446466;
        v12 = "nw_interface_is_expensive";
        v13 = 2082;
        v14 = "Invalid interface object";
        v6 = "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, backtrace limit exceeded";
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

uint64_t nw_interface_is_constrained(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_interface_is_constrained(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446466;
  v12 = "nw_interface_is_constrained";
  v13 = 2082;
  v14 = "Invalid interface object";
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
        *buf = 136446466;
        v12 = "nw_interface_is_constrained";
        v13 = 2082;
        v14 = "Invalid interface object";
        v6 = "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0x16u);
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
            *buf = 136446722;
            v12 = "nw_interface_is_constrained";
            v13 = 2082;
            v14 = "Invalid interface object";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446466;
        v12 = "nw_interface_is_constrained";
        v13 = 2082;
        v14 = "Invalid interface object";
        v6 = "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446466;
        v12 = "nw_interface_is_constrained";
        v13 = 2082;
        v14 = "Invalid interface object";
        v6 = "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, backtrace limit exceeded";
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

uint64_t nw_interface_is_ultra_constrained(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_interface_is_ultra_constrained(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446466;
  v12 = "nw_interface_is_ultra_constrained";
  v13 = 2082;
  v14 = "Invalid interface object";
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
        *buf = 136446466;
        v12 = "nw_interface_is_ultra_constrained";
        v13 = 2082;
        v14 = "Invalid interface object";
        v6 = "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0x16u);
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
            *buf = 136446722;
            v12 = "nw_interface_is_ultra_constrained";
            v13 = 2082;
            v14 = "Invalid interface object";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446466;
        v12 = "nw_interface_is_ultra_constrained";
        v13 = 2082;
        v14 = "Invalid interface object";
        v6 = "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446466;
        v12 = "nw_interface_is_ultra_constrained";
        v13 = 2082;
        v14 = "Invalid interface object";
        v6 = "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, backtrace limit exceeded";
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

uint64_t nw_parameters_has_preferred_netagents(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_has_preferred_netagents(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_has_preferred_netagents";
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
        v12 = "nw_parameters_has_preferred_netagents";
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
            v12 = "nw_parameters_has_preferred_netagents";
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
        v12 = "nw_parameters_has_preferred_netagents";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_has_preferred_netagents";
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

uint64_t nw_parameters_get_no_delay(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_no_delay(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_no_delay";
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
        v12 = "nw_parameters_get_no_delay";
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
            v12 = "nw_parameters_get_no_delay";
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
        v12 = "nw_parameters_get_no_delay";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_no_delay";
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

BOOL nw_parameters_has_prohibited_interface_types(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_has_prohibited_interface_types(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_has_prohibited_interface_types";
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
        v12 = "nw_parameters_has_prohibited_interface_types";
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
            v12 = "nw_parameters_has_prohibited_interface_types";
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
        v12 = "nw_parameters_has_prohibited_interface_types";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_has_prohibited_interface_types";
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

uint64_t nw_parameters_has_prohibited_interface_subtypes(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_has_prohibited_interface_subtypes(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_has_prohibited_interface_subtypes";
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
        v12 = "nw_parameters_has_prohibited_interface_subtypes";
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
            v12 = "nw_parameters_has_prohibited_interface_subtypes";
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
        v12 = "nw_parameters_has_prohibited_interface_subtypes";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_has_prohibited_interface_subtypes";
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

BOOL nw_parameters_has_preferred_interface_subtypes(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_has_preferred_interface_subtypes(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_has_preferred_interface_subtypes";
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
        v12 = "nw_parameters_has_preferred_interface_subtypes";
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
            v12 = "nw_parameters_has_preferred_interface_subtypes";
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
        v12 = "nw_parameters_has_preferred_interface_subtypes";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_has_preferred_interface_subtypes";
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

uint64_t nw_parameters_has_required_netagents(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_has_required_netagents(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_has_required_netagents";
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
        v12 = "nw_parameters_has_required_netagents";
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
            v12 = "nw_parameters_has_required_netagents";
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
        v12 = "nw_parameters_has_required_netagents";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_has_required_netagents";
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

BOOL nw_parameters_has_prohibited_netagents(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_has_prohibited_netagents(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_has_prohibited_netagents";
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
        v12 = "nw_parameters_has_prohibited_netagents";
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
            v12 = "nw_parameters_has_prohibited_netagents";
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
        v12 = "nw_parameters_has_prohibited_netagents";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_has_prohibited_netagents";
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

uint64_t nw_parameters_get_prohibit_roaming(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_prohibit_roaming(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_prohibit_roaming";
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
        v12 = "nw_parameters_get_prohibit_roaming";
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
            v12 = "nw_parameters_get_prohibit_roaming";
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
        v12 = "nw_parameters_get_prohibit_roaming";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_prohibit_roaming";
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

uint64_t nw_parameters_get_resolve_ptr(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_resolve_ptr(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_resolve_ptr";
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
        v12 = "nw_parameters_get_resolve_ptr";
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
            v12 = "nw_parameters_get_resolve_ptr";
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
        v12 = "nw_parameters_get_resolve_ptr";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_resolve_ptr";
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

uint64_t nw_parameters_copy_tls_session_id(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return 0;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_copy_tls_session_id";
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
        v12 = "nw_parameters_copy_tls_session_id";
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
            v12 = "nw_parameters_copy_tls_session_id";
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
        v12 = "nw_parameters_copy_tls_session_id";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_16;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_copy_tls_session_id";
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

void nw_link_get_local_congestion_info(_DWORD *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v4 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_link_get_local_congestion_info";
    v5 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v5, &type, &v19))
    {
      goto LABEL_61;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v19 != 1)
      {
        v6 = __nwlog_obj();
        v7 = type;
        if (os_log_type_enabled(v6, type))
        {
          *buf = 136446210;
          v22 = "nw_link_get_local_congestion_info";
          v8 = "%{public}s called with null link_congestion_info, backtrace limit exceeded";
          goto LABEL_59;
        }

        goto LABEL_60;
      }

      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v7 = type;
      v13 = os_log_type_enabled(v6, type);
      if (!backtrace_string)
      {
        if (v13)
        {
          *buf = 136446210;
          v22 = "nw_link_get_local_congestion_info";
          v8 = "%{public}s called with null link_congestion_info, no backtrace";
          goto LABEL_59;
        }

        goto LABEL_60;
      }

      if (v13)
      {
        *buf = 136446466;
        v22 = "nw_link_get_local_congestion_info";
        v23 = 2082;
        v24 = backtrace_string;
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null link_congestion_info, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
LABEL_61:
      if (v5)
      {
        goto LABEL_62;
      }

      return;
    }

    v6 = __nwlog_obj();
    v7 = type;
    if (!os_log_type_enabled(v6, type))
    {
      goto LABEL_60;
    }

    *buf = 136446210;
    v22 = "nw_link_get_local_congestion_info";
    v8 = "%{public}s called with null link_congestion_info";
    goto LABEL_59;
  }

  if (!a2)
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_link_get_local_congestion_info";
    v5 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v5, &type, &v19))
    {
      goto LABEL_61;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v19 != 1)
      {
        v6 = __nwlog_obj();
        v7 = type;
        if (os_log_type_enabled(v6, type))
        {
          *buf = 136446210;
          v22 = "nw_link_get_local_congestion_info";
          v8 = "%{public}s called with null congestion_count, backtrace limit exceeded";
          goto LABEL_59;
        }

        goto LABEL_60;
      }

      v14 = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v7 = type;
      v15 = os_log_type_enabled(v6, type);
      if (!v14)
      {
        if (v15)
        {
          *buf = 136446210;
          v22 = "nw_link_get_local_congestion_info";
          v8 = "%{public}s called with null congestion_count, no backtrace";
          goto LABEL_59;
        }

        goto LABEL_60;
      }

      if (!v15)
      {
        goto LABEL_41;
      }

      *buf = 136446466;
      v22 = "nw_link_get_local_congestion_info";
      v23 = 2082;
      v24 = v14;
      v16 = "%{public}s called with null congestion_count, dumping backtrace:%{public}s";
      goto LABEL_40;
    }

    v6 = __nwlog_obj();
    v7 = type;
    if (!os_log_type_enabled(v6, type))
    {
      goto LABEL_60;
    }

    *buf = 136446210;
    v22 = "nw_link_get_local_congestion_info";
    v8 = "%{public}s called with null congestion_count";
LABEL_59:
    _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
    goto LABEL_60;
  }

  if (!a3)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_link_get_local_congestion_info";
    v5 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v5, &type, &v19))
    {
      goto LABEL_61;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_60;
      }

      *buf = 136446210;
      v22 = "nw_link_get_local_congestion_info";
      v8 = "%{public}s called with null ce_count";
      goto LABEL_59;
    }

    if (v19 != 1)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v22 = "nw_link_get_local_congestion_info";
        v8 = "%{public}s called with null ce_count, backtrace limit exceeded";
        goto LABEL_59;
      }

      goto LABEL_60;
    }

    v14 = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = type;
    v17 = os_log_type_enabled(v6, type);
    if (!v14)
    {
      if (v17)
      {
        *buf = 136446210;
        v22 = "nw_link_get_local_congestion_info";
        v8 = "%{public}s called with null ce_count, no backtrace";
        goto LABEL_59;
      }

      goto LABEL_60;
    }

    if (!v17)
    {
      goto LABEL_41;
    }

    *buf = 136446466;
    v22 = "nw_link_get_local_congestion_info";
    v23 = 2082;
    v24 = v14;
    v16 = "%{public}s called with null ce_count, dumping backtrace:%{public}s";
LABEL_40:
    _os_log_impl(&dword_181A37000, v6, v7, v16, buf, 0x16u);
    goto LABEL_41;
  }

  if (a4)
  {
    *a2 = *a1;
    *a3 = a1[1];
    *a4 = a1[2];
    return;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v22 = "nw_link_get_local_congestion_info";
  v5 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (!__nwlog_fault(v5, &type, &v19))
  {
    goto LABEL_61;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v6 = __nwlog_obj();
    v7 = type;
    if (os_log_type_enabled(v6, type))
    {
      *buf = 136446210;
      v22 = "nw_link_get_local_congestion_info";
      v8 = "%{public}s called with null pkt_count";
      goto LABEL_59;
    }

LABEL_60:

    goto LABEL_61;
  }

  if (v19 != 1)
  {
    v6 = __nwlog_obj();
    v7 = type;
    if (os_log_type_enabled(v6, type))
    {
      *buf = 136446210;
      v22 = "nw_link_get_local_congestion_info";
      v8 = "%{public}s called with null pkt_count, backtrace limit exceeded";
      goto LABEL_59;
    }

    goto LABEL_60;
  }

  v14 = __nw_create_backtrace_string();
  v6 = __nwlog_obj();
  v7 = type;
  v18 = os_log_type_enabled(v6, type);
  if (!v14)
  {
    if (v18)
    {
      *buf = 136446210;
      v22 = "nw_link_get_local_congestion_info";
      v8 = "%{public}s called with null pkt_count, no backtrace";
      goto LABEL_59;
    }

    goto LABEL_60;
  }

  if (v18)
  {
    *buf = 136446466;
    v22 = "nw_link_get_local_congestion_info";
    v23 = 2082;
    v24 = v14;
    v16 = "%{public}s called with null pkt_count, dumping backtrace:%{public}s";
    goto LABEL_40;
  }

LABEL_41:

  free(v14);
  if (v5)
  {
LABEL_62:
    free(v5);
  }
}

void nw_socks5_connection_increment_busy_on_queue(void *a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v21 = a1;
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_19;
  }

  v5 = v3;
  v6 = v5;
  if (*(v5 + 136))
  {
    v7 = *(v5 + 33);
    if (v7 != -1)
    {
      *(v5 + 33) = v7 + 1;
LABEL_12:
      v12 = v6;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __nw_socks5_server_handle_busy_changed_block_invoke;
      v25 = &unk_1E6A3D868;
      v26 = v12;
      os_unfair_lock_lock(v12 + 6);
      (*&buf[16])(buf);
      os_unfair_lock_unlock(v12 + 6);

      goto LABEL_13;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    *buf = 136446210;
    *&buf[4] = "nw_socks5_server_increment_busy";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (__nwlog_fault(v9, &type, &v22))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_socks5_server_increment_busy";
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s ss_busy_count overflow", buf, 0xCu);
        }
      }

      else if (v22 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v18 = type;
        v19 = os_log_type_enabled(v10, type);
        if (backtrace_string)
        {
          if (v19)
          {
            *buf = 136446466;
            *&buf[4] = "nw_socks5_server_increment_busy";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v10, v18, "%{public}s ss_busy_count overflow, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          if (!v9)
          {
            goto LABEL_12;
          }

          goto LABEL_11;
        }

        if (v19)
        {
          *buf = 136446210;
          *&buf[4] = "nw_socks5_server_increment_busy";
          _os_log_impl(&dword_181A37000, v10, v18, "%{public}s ss_busy_count overflow, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v20 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_socks5_server_increment_busy";
          _os_log_impl(&dword_181A37000, v10, v20, "%{public}s ss_busy_count overflow, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v9)
    {
      goto LABEL_12;
    }

LABEL_11:
    free(v9);
    goto LABEL_12;
  }

LABEL_13:

  v13 = v21;
  v14 = v21[14];
  if (!v14)
  {
    v15 = mach_continuous_time();
    if (v15 <= 1)
    {
      v16 = 1;
    }

    else
    {
      v16 = v15;
    }

    v13 = v21;
    v21[15] = v16;
    v14 = v21[14];
  }

  v13[14] = v14 + 1;
LABEL_19:
}

void __nw_socks5_server_handle_busy_changed_block_invoke(uint64_t a1)
{
  v51 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 132))
  {
    v3 = *(v2 + 120);
    if (v3 && (*(v2 + 136) & 2) != 0)
    {
      dispatch_suspend(v3);
      *(*(a1 + 32) + 136) &= ~2u;
      v2 = *(a1 + 32);
    }

    if (!*(v2 + 128))
    {
      v4 = v2;
      keys[0] = xmmword_1E6A31FB8;
      keys[1] = *off_1E6A31FC8;
      v50 = @"TimeoutAction";
      v36 = 10800;
      valuePtr = 255;
      v5 = *MEMORY[0x1E695E480];
      v6 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
      v7 = CFStringCreateWithFormat(v5, 0, @"%@", v4);
      v8 = CFNumberCreate(v5, kCFNumberIntType, &v36);
      v9 = v8;
      values[0] = @"PreventUserIdleSystemSleep";
      values[1] = v6;
      values[2] = v7;
      values[3] = v8;
      values[4] = @"TimeoutActionTurnOff";
      if (v6 && v7 && v8)
      {
        v10 = CFDictionaryCreate(v5, keys, values, 5, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      }

      else
      {
        v10 = 0;
        v18 = 0;
        if (!v6)
        {
          goto LABEL_17;
        }
      }

      CFRelease(v6);
      v18 = v10;
LABEL_17:
      if (v7)
      {
        CFRelease(v7);
      }

      if (v9)
      {
        CFRelease(v9);
      }

      if (!v18)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v22 = gLogObj;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v39 = "nw_socks5_server_create_power_assertion";
          v40 = 2112;
          v41 = v4;
          _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_ERROR, "%{public}s %@ Failed to create power assertion properties", buf, 0x16u);
        }

        v21 = 0;
        goto LABEL_39;
      }

      AssertionID = 0;
      v19 = IOPMAssertionCreateWithProperties(v18, &AssertionID);
      CFRelease(v18);
      if (v19)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v20 = gLogObj;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 136447490;
          v39 = "nw_socks5_server_create_power_assertion";
          v40 = 2112;
          v41 = v4;
          v42 = 1024;
          v43 = v19;
          v44 = 1024;
          *v45 = v19 >> 26;
          *&v45[4] = 1024;
          *&v45[6] = (v19 >> 14) & 0xFFF;
          v46 = 1024;
          v47 = v19 & 0x3FFF;
          _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_ERROR, "%{public}s %@ IOPMAssertionCreateWithProperties failed: %x (system: %d, subsystem: %d, code: %d)", buf, 0x2Eu);
        }

        v21 = 0;
        goto LABEL_39;
      }

      v23 = mach_continuous_time();
      if (v23 <= 1)
      {
        v24 = 1;
      }

      else
      {
        v24 = v23;
      }

      v25 = v4[14];
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v26 = gLogObj;
      v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
      if (v25)
      {
        if (v27)
        {
          v28 = AssertionID;
          v29 = nw_delta_nanos(v4[14], v24);
          v39 = "nw_socks5_server_create_power_assertion";
          v40 = 2112;
          *buf = 136446978;
          v41 = v4;
          v42 = 1024;
          v43 = v28;
          v44 = 2048;
          *v45 = v29 / 0x3B9ACA00;
          v30 = "%{public}s %@ created power assertion: %u after %llus";
          v31 = v26;
          v32 = 38;
LABEL_37:
          _os_log_impl(&dword_181A37000, v31, OS_LOG_TYPE_DEFAULT, v30, buf, v32);
        }
      }

      else if (v27)
      {
        *buf = 136446722;
        v39 = "nw_socks5_server_create_power_assertion";
        v40 = 2112;
        v41 = v4;
        v42 = 1024;
        v43 = AssertionID;
        v30 = "%{public}s %@ created power assertion: %u";
        v31 = v26;
        v32 = 28;
        goto LABEL_37;
      }

      v4[14] = v24;
      v21 = AssertionID;
LABEL_39:

      *(*(a1 + 32) + 128) = v21;
    }
  }

  else if (*(v2 + 128))
  {
    v11 = *(v2 + 120);
    if (v11 || (v12 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(v2 + 32)), v13 = *(a1 + 32), v14 = *(v13 + 120), *(v13 + 120) = v12, v14, *(*(a1 + 32) + 136) &= ~2u, v15 = *(a1 + 32), v16 = v15[15], handler[0] = MEMORY[0x1E69E9820], handler[1] = 3221225472, handler[2] = __nw_socks5_server_handle_busy_changed_block_invoke_2, handler[3] = &unk_1E6A3D868, v34 = v15, dispatch_source_set_event_handler(v16, handler), v34, v2 = *(a1 + 32), (v11 = *(v2 + 120)) != 0))
    {
      if ((*(v2 + 136) & 2) == 0)
      {
        v17 = dispatch_time(0, 5000000000);
        dispatch_source_set_timer(v11, v17, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
        dispatch_resume(*(*(a1 + 32) + 120));
        *(*(a1 + 32) + 136) |= 2u;
      }
    }
  }
}

void nw_socks5_connection_decrement_busy_on_queue(void *a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v23 = a1;
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_20;
  }

  v5 = v3;
  v6 = v5;
  if (*(v5 + 136))
  {
    v7 = *(v5 + 33);
    if (v7)
    {
      *(v5 + 33) = v7 - 1;
LABEL_12:
      v12 = v6;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __nw_socks5_server_handle_busy_changed_block_invoke;
      v27 = &unk_1E6A3D868;
      v28 = v12;
      os_unfair_lock_lock(v12 + 6);
      (*&buf[16])(buf);
      os_unfair_lock_unlock(v12 + 6);

      goto LABEL_13;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    *buf = 136446210;
    *&buf[4] = "nw_socks5_server_decrement_busy";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (__nwlog_fault(v9, &type, &v24))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_socks5_server_decrement_busy";
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s ss_busy_count underflow", buf, 0xCu);
        }
      }

      else if (v24 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v20 = type;
        v21 = os_log_type_enabled(v10, type);
        if (backtrace_string)
        {
          if (v21)
          {
            *buf = 136446466;
            *&buf[4] = "nw_socks5_server_decrement_busy";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v10, v20, "%{public}s ss_busy_count underflow, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          if (!v9)
          {
            goto LABEL_12;
          }

          goto LABEL_11;
        }

        if (v21)
        {
          *buf = 136446210;
          *&buf[4] = "nw_socks5_server_decrement_busy";
          _os_log_impl(&dword_181A37000, v10, v20, "%{public}s ss_busy_count underflow, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v22 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_socks5_server_decrement_busy";
          _os_log_impl(&dword_181A37000, v10, v22, "%{public}s ss_busy_count underflow, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v9)
    {
      goto LABEL_12;
    }

LABEL_11:
    free(v9);
    goto LABEL_12;
  }

LABEL_13:

  v13 = v23[14];
  if (!v13 || (v14 = v13 - 1, (v23[14] = v14) == 0))
  {
    v15 = v23[15];
    if (v15)
    {
      v16 = mach_continuous_time();
      if (v16 <= 1)
      {
        v17 = 1;
      }

      else
      {
        v17 = v16;
      }

      v18 = v23[16] + nw_delta_nanos(v15, v17);
      v23[15] = 0;
      v23[16] = v18;
    }
  }

LABEL_20:
}

void ___ZL51nw_socks5_connection_outer_connection_read_on_queueP31NWConcrete_nw_socks5_connection_block_invoke(uint64_t a1, void *a2, void *a3, int a4, void *a5)
{
  v77 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a5;
  v12 = v11;
  if (v11)
  {
    v13 = v11;
    v14 = v13[3];
  }

  else
  {
    v14 = 0;
  }

  v15 = *(a1 + 32);
  if (*(v15 + 56) != 255 && (*(v15 + 160) & 2) == 0)
  {
    if (v9)
    {
      size = dispatch_data_get_size(v9);
      v17 = size;
      if (!v14 && size)
      {
        if (gLogDatapath == 1)
        {
          v50 = __nwlog_obj();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
          {
            v51 = *(a1 + 32);
            v52 = "not";
            v66 = "nw_socks5_connection_outer_connection_read_on_queue_block_invoke";
            v67 = 2114;
            *buf = 136446978;
            if (a4)
            {
              v52 = "is";
            }

            v68 = v51;
            v69 = 2048;
            v70 = v17;
            v71 = 2082;
            v72 = v52;
            _os_log_impl(&dword_181A37000, v50, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ read %zu bytes %{public}s_complete from outer connection", buf, 0x2Au);
          }

          v15 = *(a1 + 32);
        }

        *(v15 + 184) += v17;
        v18 = &__block_literal_global_44658;
        v19 = &__block_literal_global_44658;
        v20 = *(a1 + 32);
        if (!a4 || (*(v20 + 160) & 0x20) != 0)
        {
          v22 = 0;
        }

        else
        {
          v21 = &__block_literal_global_6_44667;

          v20 = *(a1 + 32);
          v22 = 1;
          v18 = &__block_literal_global_6_44667;
        }

        WeakRetained = objc_loadWeakRetained((v20 + 24));
        nw_socks5_connection_increment_busy_on_queue(*(a1 + 32), WeakRetained);
        v35 = *(a1 + 32);
        v36 = v35[4];
        v55[0] = MEMORY[0x1E69E9820];
        v55[1] = 3221225472;
        v55[2] = ___ZL51nw_socks5_connection_outer_connection_read_on_queueP31NWConcrete_nw_socks5_connection_block_invoke_164;
        v55[3] = &unk_1E6A2DA18;
        v56 = v35;
        v33 = WeakRetained;
        v59 = v22;
        v57 = v33;
        v58 = v17;
        nw_connection_send(v36, v9, v18, 1, v55);

        goto LABEL_31;
      }

      if (v14)
      {
LABEL_16:
        if ((v14 - 6) <= 0x3B && ((1 << (v14 - 6)) & 0x8C9B80004000001) != 0 || v14 == 96)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v23 = gLogObj;
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            v24 = *(a1 + 32);
            v25 = "not";
            v66 = "nw_socks5_connection_outer_connection_read_on_queue_block_invoke";
            *buf = 136447234;
            v67 = 2114;
            if (a4)
            {
              v25 = "is";
            }

            v68 = v24;
            v69 = 2048;
            v70 = v17;
            v71 = 2082;
            v72 = v25;
            v73 = 1024;
            v74 = v14;
            _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ out connection read error (data len %zu) %{public}s_complete %{darwin.errno}d", buf, 0x30u);
          }

          goto LABEL_28;
        }

        v37 = __nwlog_obj();
        v38 = *(a1 + 32);
        v39 = "not";
        v67 = 2114;
        *buf = 136447234;
        v66 = "nw_socks5_connection_outer_connection_read_on_queue_block_invoke";
        if (a4)
        {
          v39 = "is";
        }

        v68 = v38;
        v69 = 2048;
        v70 = v17;
        v71 = 2082;
        v54 = v39;
        v72 = v39;
        v73 = 1024;
        v74 = v14;
        v40 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v63 = 0;
        if (__nwlog_fault(v40, &type, &v63))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            v41 = __nwlog_obj();
            v42 = type;
            if (os_log_type_enabled(v41, type))
            {
              v43 = *(a1 + 32);
              *buf = 136447234;
              v66 = "nw_socks5_connection_outer_connection_read_on_queue_block_invoke";
              v67 = 2114;
              v68 = v43;
              v69 = 2048;
              v70 = v17;
              v71 = 2082;
              v72 = v54;
              v73 = 1024;
              v74 = v14;
              _os_log_impl(&dword_181A37000, v41, v42, "%{public}s %{public}@ out connection read error (data len %zu) %{public}s_complete %{darwin.errno}d", buf, 0x30u);
            }
          }

          else if (v63 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            v41 = __nwlog_obj();
            v53 = type;
            v45 = os_log_type_enabled(v41, type);
            if (backtrace_string)
            {
              if (v45)
              {
                v46 = *(a1 + 32);
                *buf = 136447490;
                v66 = "nw_socks5_connection_outer_connection_read_on_queue_block_invoke";
                v67 = 2114;
                v68 = v46;
                v69 = 2048;
                v70 = v17;
                v71 = 2082;
                v72 = v54;
                v73 = 1024;
                v74 = v14;
                v75 = 2082;
                v76 = backtrace_string;
                _os_log_impl(&dword_181A37000, v41, v53, "%{public}s %{public}@ out connection read error (data len %zu) %{public}s_complete %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x3Au);
              }

              free(backtrace_string);
              goto LABEL_52;
            }

            if (v45)
            {
              v49 = *(a1 + 32);
              *buf = 136447234;
              v66 = "nw_socks5_connection_outer_connection_read_on_queue_block_invoke";
              v67 = 2114;
              v68 = v49;
              v69 = 2048;
              v70 = v17;
              v71 = 2082;
              v72 = v54;
              v73 = 1024;
              v74 = v14;
              _os_log_impl(&dword_181A37000, v41, v53, "%{public}s %{public}@ out connection read error (data len %zu) %{public}s_complete %{darwin.errno}d, no backtrace", buf, 0x30u);
            }
          }

          else
          {
            v41 = __nwlog_obj();
            v47 = type;
            if (os_log_type_enabled(v41, type))
            {
              v48 = *(a1 + 32);
              *buf = 136447234;
              v66 = "nw_socks5_connection_outer_connection_read_on_queue_block_invoke";
              v67 = 2114;
              v68 = v48;
              v69 = 2048;
              v70 = v17;
              v71 = 2082;
              v72 = v54;
              v73 = 1024;
              v74 = v14;
              _os_log_impl(&dword_181A37000, v41, v47, "%{public}s %{public}@ out connection read error (data len %zu) %{public}s_complete %{darwin.errno}d, backtrace limit exceeded", buf, 0x30u);
            }
          }
        }

LABEL_52:
        if (v40)
        {
          free(v40);
        }

LABEL_28:
        v29 = objc_loadWeakRetained((*(a1 + 32) + 24));
        nw_socks5_connection_increment_busy_on_queue(*(a1 + 32), v29);
        v30 = *(a1 + 32);
        v31 = v30[4];
        completion[0] = MEMORY[0x1E69E9820];
        completion[1] = 3221225472;
        completion[2] = ___ZL51nw_socks5_connection_outer_connection_read_on_queueP31NWConcrete_nw_socks5_connection_block_invoke_163;
        completion[3] = &unk_1E6A3A558;
        v61 = v30;
        v32 = v29;
        v62 = v32;
        nw_connection_send(v31, 0, &__block_literal_global_6_44667, 1, completion);

        v33 = v61;
        v18 = v32;
LABEL_31:

        goto LABEL_32;
      }
    }

    else if (v14)
    {
      v17 = 0;
      goto LABEL_16;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v26 = gLogObj;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = *(a1 + 32);
      v28 = "not";
      v66 = "nw_socks5_connection_outer_connection_read_on_queue_block_invoke";
      *buf = 136446722;
      if (a4)
      {
        v28 = "is";
      }

      v67 = 2114;
      v68 = v27;
      v69 = 2082;
      v70 = v28;
      _os_log_impl(&dword_181A37000, v26, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ out connection read data len 0 %{public}s_complete", buf, 0x20u);
    }

    goto LABEL_28;
  }

LABEL_32:
}

void ___ZL51nw_socks5_connection_outer_connection_read_on_queueP31NWConcrete_nw_socks5_connection_block_invoke_164(uint64_t a1, void *a2)
{
  v43[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  nw_socks5_connection_decrement_busy_on_queue(*(a1 + 32), *(a1 + 40));
  v4 = *(a1 + 32);
  if (*(v4 + 56) == 255)
  {
    goto LABEL_26;
  }

  if (v3)
  {
    v5 = v3;
    v6 = v5[3];

    if (*(*(a1 + 32) + 160) < 0 && v6 == 55)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v8 = *(a1 + 32);
        *buf = 136446722;
        v39 = "nw_socks5_connection_outer_connection_read_on_queue_block_invoke";
        v40 = 2114;
        v41 = v8;
        v42 = 2112;
        v43[0] = v5;
        _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ ignoring write in error %@", buf, 0x20u);
      }

      nw_socks5_connection_outer_connection_read_on_queue(*(a1 + 32));
      goto LABEL_26;
    }

    if ((v6 - 6) <= 0x3B && ((1 << (v6 - 6)) & 0x8C9B80004000001) != 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v19 = gLogObj;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = *(a1 + 32);
        *buf = 136446722;
        v39 = "nw_socks5_connection_outer_connection_read_on_queue_block_invoke";
        v40 = 2114;
        v41 = v20;
        v42 = 1024;
        LODWORD(v43[0]) = v6;
        _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ write in error %{darwin.errno}d", buf, 0x1Cu);
      }

LABEL_22:
      nw_socks5_connection_cancel_on_queue(*(a1 + 32), 0);
      goto LABEL_26;
    }

    v21 = __nwlog_obj();
    v22 = *(a1 + 32);
    *buf = 136446722;
    v39 = "nw_socks5_connection_outer_connection_read_on_queue_block_invoke";
    v40 = 2114;
    v41 = v22;
    v42 = 1024;
    LODWORD(v43[0]) = v6;
    v23 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v36 = 0;
    if (__nwlog_fault(v23, &type, &v36))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v24 = __nwlog_obj();
        v25 = type;
        if (os_log_type_enabled(v24, type))
        {
          v26 = *(a1 + 32);
          *buf = 136446722;
          v39 = "nw_socks5_connection_outer_connection_read_on_queue_block_invoke";
          v40 = 2114;
          v41 = v26;
          v42 = 1024;
          LODWORD(v43[0]) = v6;
          _os_log_impl(&dword_181A37000, v24, v25, "%{public}s %{public}@ write in error %{darwin.errno}d", buf, 0x1Cu);
        }
      }

      else if (v36 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v24 = __nwlog_obj();
        v28 = type;
        v29 = os_log_type_enabled(v24, type);
        if (backtrace_string)
        {
          if (v29)
          {
            v30 = *(a1 + 32);
            *buf = 136446978;
            v39 = "nw_socks5_connection_outer_connection_read_on_queue_block_invoke";
            v40 = 2114;
            v41 = v30;
            v42 = 1024;
            LODWORD(v43[0]) = v6;
            WORD2(v43[0]) = 2082;
            *(v43 + 6) = backtrace_string;
            _os_log_impl(&dword_181A37000, v24, v28, "%{public}s %{public}@ write in error %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x26u);
          }

          free(backtrace_string);
          goto LABEL_43;
        }

        if (v29)
        {
          v33 = *(a1 + 32);
          *buf = 136446722;
          v39 = "nw_socks5_connection_outer_connection_read_on_queue_block_invoke";
          v40 = 2114;
          v41 = v33;
          v42 = 1024;
          LODWORD(v43[0]) = v6;
          _os_log_impl(&dword_181A37000, v24, v28, "%{public}s %{public}@ write in error %{darwin.errno}d, no backtrace", buf, 0x1Cu);
        }
      }

      else
      {
        v24 = __nwlog_obj();
        v31 = type;
        if (os_log_type_enabled(v24, type))
        {
          v32 = *(a1 + 32);
          *buf = 136446722;
          v39 = "nw_socks5_connection_outer_connection_read_on_queue_block_invoke";
          v40 = 2114;
          v41 = v32;
          v42 = 1024;
          LODWORD(v43[0]) = v6;
          _os_log_impl(&dword_181A37000, v24, v31, "%{public}s %{public}@ write in error %{darwin.errno}d, backtrace limit exceeded", buf, 0x1Cu);
        }
      }
    }

LABEL_43:
    if (v23)
    {
      free(v23);
    }

    goto LABEL_22;
  }

  if (*(a1 + 56) == 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v10 = *(a1 + 32);
    v11 = *(a1 + 48);
    *buf = 136446722;
    v39 = "nw_socks5_connection_outer_connection_read_on_queue_block_invoke";
    v40 = 2114;
    v41 = v10;
    v42 = 2048;
    v43[0] = v11;
    v12 = "%{public}s %{public}@ wrote %zu bytes is_complete into inner connection";
    v13 = v9;
    v14 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_11;
  }

  if ((gLogDatapath & 1) == 0)
  {
    *(v4 + 208) += *(a1 + 48);
    v16 = *(a1 + 32);
    goto LABEL_25;
  }

  v9 = __nwlog_obj();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v34 = *(a1 + 32);
    v35 = *(a1 + 48);
    *buf = 136446722;
    v39 = "nw_socks5_connection_outer_connection_read_on_queue_block_invoke";
    v40 = 2114;
    v41 = v34;
    v42 = 2048;
    v43[0] = v35;
    v12 = "%{public}s %{public}@ wrote %zu bytes not_complete into inner connection";
    v13 = v9;
    v14 = OS_LOG_TYPE_DEBUG;
LABEL_11:
    _os_log_impl(&dword_181A37000, v13, v14, v12, buf, 0x20u);
  }

LABEL_12:

  v15 = *(a1 + 56);
  *(*(a1 + 32) + 208) += *(a1 + 48);
  v16 = *(a1 + 32);
  if ((v15 & 1) == 0)
  {
LABEL_25:
    nw_socks5_connection_outer_connection_read_on_queue(v16);
    goto LABEL_26;
  }

  *(v16 + 160) |= 2u;
  v17 = *(a1 + 32);
  if ((~v17[160] & 3) == 0)
  {
    nw_socks5_connection_cancel_on_queue(v17, 0);
  }

LABEL_26:
}

void nw_socks5_connection_outer_connection_read_on_queue(NWConcrete_nw_socks5_connection *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (gLogDatapath == 1)
  {
    v4 = __nwlog_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v8 = "nw_socks5_connection_outer_connection_read_on_queue";
      v9 = 2114;
      v10 = v1;
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ reading on outer connection", buf, 0x16u);
    }
  }

  sc_out_connection = v1->sc_out_connection;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = ___ZL51nw_socks5_connection_outer_connection_read_on_queueP31NWConcrete_nw_socks5_connection_block_invoke;
  v5[3] = &unk_1E6A39638;
  v3 = v1;
  v6 = v3;
  nw_connection_receive_internal(sc_out_connection, 0, 1u, 0xFFFFFFFF, v5);
}

void sub_181EB162C()
{
  if ((*(v0 + 158) & 0x20) == 0)
  {
    v1 = *(v0 + 264);
    if (v1)
    {
      v2 = 1 << *(v1 + 32);
      v3 = -1;
      if (v2 < 64)
      {
        v3 = ~(-1 << v2);
      }

      v4 = v3 & *(v1 + 64);
      v5 = (v2 + 63) >> 6;

      v6 = 0;
      while (v4)
      {
LABEL_11:
        v8 = __clz(__rbit64(v4));
        v4 &= v4 - 1;
        if ((*(*(*(v1 + 56) + ((v6 << 9) | (8 * v8))) + 80) & 2) != 0)
        {
          v9 = *(*(v1 + 56) + ((v6 << 9) | (8 * v8)));

          sub_181EB27B8(&v9, &v10);
          if (v10)
          {

            return;
          }
        }
      }

      while (1)
      {
        v7 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        if (v7 >= v5)
        {

          return;
        }

        v4 = *(v1 + 64 + 8 * v7);
        ++v6;
        if (v4)
        {
          v6 = v7;
          goto LABEL_11;
        }
      }

      __break(1u);
    }
  }
}

void nw_connection_enable_stats_report_on_nw_queue(void *a1, int a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_connection_enable_stats_report_on_nw_queue";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (__nwlog_fault(v10, &type, &v17))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v11 = __nwlog_obj();
        v12 = type;
        if (os_log_type_enabled(v11, type))
        {
          *buf = 136446210;
          v20 = "nw_connection_enable_stats_report_on_nw_queue";
          _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null connection", buf, 0xCu);
        }
      }

      else if (v17 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v11 = __nwlog_obj();
        v14 = type;
        v15 = os_log_type_enabled(v11, type);
        if (backtrace_string)
        {
          if (v15)
          {
            *buf = 136446466;
            v20 = "nw_connection_enable_stats_report_on_nw_queue";
            v21 = 2082;
            v22 = backtrace_string;
            _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_26;
        }

        if (v15)
        {
          *buf = 136446210;
          v20 = "nw_connection_enable_stats_report_on_nw_queue";
          _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null connection, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v11 = __nwlog_obj();
        v16 = type;
        if (os_log_type_enabled(v11, type))
        {
          *buf = 136446210;
          v20 = "nw_connection_enable_stats_report_on_nw_queue";
          _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_26:
    if (v10)
    {
      free(v10);
    }

    goto LABEL_9;
  }

  nw_context_assert_queue(v3[3]);
  v5 = *(v4 + 108);
  if (v5)
  {
LABEL_9:

    return;
  }

  if (v4[12])
  {
LABEL_8:
    *(v4 + 26) = a2;
    *(v4 + 108) = v5 | 1;
    goto LABEL_9;
  }

  v6 = malloc_type_calloc(1uLL, 0xD60uLL, 0x13431106uLL);
  if (v6)
  {
LABEL_7:
    v4[12] = v6;
    v5 = *(v4 + 108);
    goto LABEL_8;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v7 = gLogObj;
  os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  v20 = "nw_connection_enable_stats_report_on_nw_queue";
  v21 = 2048;
  v22 = 1;
  v23 = 2048;
  v24 = 3424;
  v8 = _os_log_send_and_compose_impl();

  if (!__nwlog_should_abort(v8))
  {
    free(v8);
    v6 = 0;
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t _nw_path_get_scoped_interface_index(char *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
  v2 = a1;
  swift_beginAccess();
  v3 = *(v1 + 72);
  if (v3 == 6)
  {
    v4 = *(v1 + 73);
  }

  else
  {
    v4 = 0;
  }

  if (v3 == 12)
  {
    v5 = *(v1 + 73);
  }

  else
  {
    v5 = v4;
  }

  return v5;
}

uint64_t __nw_resolver_config_enumerate_name_servers_block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (object_getClass(v4) == MEMORY[0x1E69E9F10])
  {
    v6 = *(a1 + 32);
    string_ptr = xpc_string_get_string_ptr(v4);
    v5 = (*(v6 + 16))(v6, string_ptr);
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

uint64_t sub_181EB1C68()
{
  v1 = OBJC_IVAR____TtC7Network7NWArray_deque;
  result = swift_beginAccess();
  v3 = *(*(v0 + v1) + 24);
  if (!v3)
  {
    return 23899;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    v4 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v4);

    result = MEMORY[0x1865D9CA0](2108704, 0xE300000000000000);
    v5 = *(v0 + v1);
    if (*(v5 + 24) < 1)
    {
LABEL_11:
      __break(1u);
    }

    else
    {
      sub_182AD3E18();
      MEMORY[0x1865D9CA0](0, 0xE000000000000000);

      if (v3 == 1)
      {
LABEL_9:
        MEMORY[0x1865D9CA0](93, 0xE100000000000000);
        return 91;
      }

      v6 = 1;
      while (1)
      {
        v7 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        MEMORY[0x1865D9CA0](8236, 0xE200000000000000);
        v8 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v8);

        result = MEMORY[0x1865D9CA0](2108704, 0xE300000000000000);
        if (v6 >= *(*(v0 + v1) + 24))
        {
          goto LABEL_11;
        }

        sub_182AD3E18();
        MEMORY[0x1865D9CA0](0, 0xE000000000000000);

        ++v6;
        if (v7 == v3)
        {
          goto LABEL_9;
        }
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void __nw_resolver_config_get_protocol_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  *(*(*(a1 + 40) + 8) + 24) = xpc_dictionary_get_int64(v2, "Protocol");
}

void __nw_resolver_config_get_port_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  *(*(*(a1 + 40) + 8) + 24) = xpc_dictionary_get_int64(v2, "Port");
}

uint64_t nw_resolver_config_get_provider_path(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v20 = 0;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __nw_resolver_config_get_provider_path_block_invoke;
    v14[3] = &unk_1E6A3D738;
    v16 = buf;
    v3 = v1;
    v15 = v3;
    os_unfair_lock_lock(v3 + 22);
    __nw_resolver_config_get_provider_path_block_invoke(v14);
    os_unfair_lock_unlock(v3 + 22);
    v4 = *(*&buf[8] + 24);

    _Block_object_dispose(buf, 8);
    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_resolver_config_get_provider_path";
  v7 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v17 = 0;
  if (__nwlog_fault(v7, &type, &v17))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_resolver_config_get_provider_path";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null config", buf, 0xCu);
      }
    }

    else if (v17 == 1)
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
          *&buf[4] = "nw_resolver_config_get_provider_path";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v12)
      {
        *buf = 136446210;
        *&buf[4] = "nw_resolver_config_get_provider_path";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null config, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_resolver_config_get_provider_path";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
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

void sub_181EB22F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t nw_path_is_roaming(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    is_roaming = _nw_path_is_roaming(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_is_roaming";
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
        v16 = "nw_path_is_roaming";
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
          v16 = "nw_path_is_roaming";
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
        v16 = "nw_path_is_roaming";
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
        v16 = "nw_path_is_roaming";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  is_roaming = 0;
LABEL_3:

  return is_roaming;
}

void sub_181EB27B8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v41 = 0;
  if (v4[7] != 1)
  {
LABEL_27:

    *a2 = 0;
    *(a2 + 8) = 0;
    return;
  }

  v40 = v4;
  v5 = v4[2];
  if (v5)
  {
    v6 = v4[3] - v5;
    v7 = v6 - 216;
    if (__OFSUB__(v6, 216))
    {
      __break(1u);
      goto LABEL_29;
    }

    v8 = v5 + 216;
    v5 += 216 + v7;
  }

  else
  {
    v8 = 0;
  }

  v35 = v8;
  v36 = v5;
  v37 = 0;
  v38 = 0;
  v39 = 1;
  Deserializer.uint8(_:)(&v41, &v34);
  Deserializer.uint8(_:)(&v41 + 1, v33);
  Deserializer.uint8(_:)(&v41 + 2, v32);
  Deserializer.uint8(_:)(&v41 + 3, v31);
  v2 = v38;
  if (v39 != 1)
  {
LABEL_19:
    v20 = qword_1ED4106B8;

    if (v20 == -1)
    {
LABEL_20:
      v21 = sub_182AD2698();
      __swift_project_value_buffer(v21, qword_1ED411DA8);

      v22 = sub_182AD2678();
      v23 = sub_182AD38A8();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v35 = v25;
        *v24 = 134218242;
        *(v24 + 4) = v2;
        *(v24 + 12) = 2080;
        v34 = v4;
        v26 = NetworkAgent.description.getter();
        v28 = v27;

        v29 = sub_181C64FFC(v26, v28, &v35);

        *(v24 + 14) = v29;
        _os_log_impl(&dword_181A37000, v22, v23, "%ld bytes remained after deserializing cellular agent %s", v24, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v25);
        MEMORY[0x1865DF520](v25, -1, -1);
        MEMORY[0x1865DF520](v24, -1, -1);
      }

      else
      {
      }

      goto LABEL_24;
    }

LABEL_29:
    swift_once();
    goto LABEL_20;
  }

  if (v38)
  {
    v9 = qword_1ED4106B8;

    if (v9 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1ED411DA8);

    v11 = sub_182AD2678();
    v12 = sub_182AD38B8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v35 = v14;
      *v13 = 136315138;
      v34 = v4;
      v15 = NetworkAgent.description.getter();
      v17 = v16;

      v18 = sub_181C64FFC(v15, v17, &v35);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_181A37000, v11, v12, "Unable to deserialize cellular agent %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1865DF520](v14, -1, -1);
      MEMORY[0x1865DF520](v13, -1, -1);
    }

    else
    {
    }

    goto LABEL_27;
  }

  if (v35)
  {
    v19 = v36 - v35;
  }

  else
  {
    v19 = 0;
  }

  v2 = v19 - v37;
  if (__OFSUB__(v19, v37))
  {
    __break(1u);
  }

  else if ((v2 & 0x8000000000000000) == 0)
  {
    if (!v2)
    {
LABEL_24:
      v30 = v41;
      *a2 = v40;
      *(a2 + 8) = v30;
      return;
    }

    goto LABEL_19;
  }

  __break(1u);
}

void __nw_resolver_config_enumerate_search_domains_block_invoke(uint64_t a1)
{
  v5 = *(*(a1 + 32) + 8);
  v2 = xpc_dictionary_get_value(v5, "SearchDomains");
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

size_t nw_proxy_should_flush_cache_entry(uint64_t a1, uint64_t a2, char a3, void *a4, void *a5)
{
  v7 = a4;
  v8 = a5;
  v9 = v8;
  if (a3)
  {
    v10 = 1;
  }

  else
  {
    v10 = nw_path_signature_changed_from_previous(v8, v7);
  }

  return v10;
}

size_t nw_path_signature_changed_from_previous(void *a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v8 = __nwlog_obj();
    *__s1 = 136446210;
    *&__s1[4] = "nw_path_signature_changed_from_previous";
    v9 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(__s2[0]) = 0;
    if (!__nwlog_fault(v9, type, __s2))
    {
      goto LABEL_43;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type[0];
      if (os_log_type_enabled(v10, type[0]))
      {
        *__s1 = 136446210;
        *&__s1[4] = "nw_path_signature_changed_from_previous";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null path", __s1, 0xCu);
      }

      goto LABEL_42;
    }

    if (LOBYTE(__s2[0]) != 1)
    {
      v10 = __nwlog_obj();
      v19 = type[0];
      if (os_log_type_enabled(v10, type[0]))
      {
        *__s1 = 136446210;
        *&__s1[4] = "nw_path_signature_changed_from_previous";
        _os_log_impl(&dword_181A37000, v10, v19, "%{public}s called with null path, backtrace limit exceeded", __s1, 0xCu);
      }

      goto LABEL_42;
    }

    backtrace_string = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v15 = type[0];
    v16 = os_log_type_enabled(v10, type[0]);
    if (!backtrace_string)
    {
      if (v16)
      {
        *__s1 = 136446210;
        *&__s1[4] = "nw_path_signature_changed_from_previous";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null path, no backtrace", __s1, 0xCu);
      }

      goto LABEL_42;
    }

    if (v16)
    {
      *__s1 = 136446466;
      *&__s1[4] = "nw_path_signature_changed_from_previous";
      *&__s1[12] = 2082;
      *&__s1[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null path, dumping backtrace:%{public}s", __s1, 0x16u);
    }

    goto LABEL_30;
  }

  if (!v4)
  {
    v12 = __nwlog_obj();
    *__s1 = 136446210;
    *&__s1[4] = "nw_path_signature_changed_from_previous";
    v9 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(__s2[0]) = 0;
    if (!__nwlog_fault(v9, type, __s2))
    {
      goto LABEL_43;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v13 = type[0];
      if (os_log_type_enabled(v10, type[0]))
      {
        *__s1 = 136446210;
        *&__s1[4] = "nw_path_signature_changed_from_previous";
        _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null previous_path", __s1, 0xCu);
      }

LABEL_42:

LABEL_43:
      if (v9)
      {
        free(v9);
      }

      goto LABEL_7;
    }

    if (LOBYTE(__s2[0]) != 1)
    {
      v10 = __nwlog_obj();
      v20 = type[0];
      if (os_log_type_enabled(v10, type[0]))
      {
        *__s1 = 136446210;
        *&__s1[4] = "nw_path_signature_changed_from_previous";
        _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null previous_path, backtrace limit exceeded", __s1, 0xCu);
      }

      goto LABEL_42;
    }

    backtrace_string = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v17 = type[0];
    v18 = os_log_type_enabled(v10, type[0]);
    if (!backtrace_string)
    {
      if (v18)
      {
        *__s1 = 136446210;
        *&__s1[4] = "nw_path_signature_changed_from_previous";
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null previous_path, no backtrace", __s1, 0xCu);
      }

      goto LABEL_42;
    }

    if (v18)
    {
      *__s1 = 136446466;
      *&__s1[4] = "nw_path_signature_changed_from_previous";
      *&__s1[12] = 2082;
      *&__s1[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null previous_path, dumping backtrace:%{public}s", __s1, 0x16u);
    }

LABEL_30:

    free(backtrace_string);
    goto LABEL_43;
  }

  memset(__s1, 0, 20);
  *type = 0;
  v29 = 0;
  v30 = 0;
  __n = 5140;
  __s2[0] = 0;
  __s2[1] = 0;
  v27 = 0;
  v22 = 20;
  __n_2[0] = 0;
  __n_2[1] = 0;
  v25 = 0;
  v21 = 20;
  nw_path_get_ipv4_network_signature(v4, __s1, &__n + 1);
  nw_path_get_ipv6_network_signature(v5, type, &__n);
  nw_path_get_ipv4_network_signature(v3, __s2, &v22);
  nw_path_get_ipv6_network_signature(v3, __n_2, &v21);
  if (HIBYTE(__n) != v22 || (v6 = __n, __n != v21) || HIBYTE(__n) && memcmp(__s1, __s2, HIBYTE(__n)))
  {
LABEL_7:
    v6 = 1;
    goto LABEL_8;
  }

  if (v6)
  {
    v6 = memcmp(type, __n_2, v6) != 0;
  }

LABEL_8:

  return v6;
}

size_t nw_quic_should_flush_cache_entry(uint64_t a1, uint64_t a2, char a3, void *a4, void *a5)
{
  if (a3)
  {
    return 1;
  }

  else
  {
    return nw_path_signature_changed_from_previous(a5, a4);
  }
}

uint64_t nw_protocol_get_input_frames_is_valid(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v3 = *(a1 + 24);
    if (v3)
    {
      LODWORD(v3) = *(v3 + 80) != 0;
    }
  }

  else
  {
    LODWORD(v3) = 0;
  }

  if (!a2)
  {
    LODWORD(v3) = 0;
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t nw_resolver_should_flush_cache_entry(uint64_t a1, uint64_t a2, int a3, void *a4, void *a5)
{
  v8 = a4;
  v9 = a5;
  v10 = v9;
  has_equal_dns = v8 == v9;
  if (v8 != v9 && v8 && v9)
  {
    has_equal_dns = _nw_path_has_equal_dns(v8, v9);
  }

  if (has_equal_dns && a3)
  {
    if (*(a2 + 24) == 1)
    {
      v12 = *a2;
      *a2 = 0;

      v13 = *(a2 + 8);
      *(a2 + 8) = 0;

      v14 = *(a2 + 16);
      *(a2 + 16) = 0;

      has_equal_dns = 1;
    }

    else
    {
      has_equal_dns = 0;
    }
  }

  return has_equal_dns ^ 1u;
}

uint64_t sub_181EB3488(uint64_t a1)
{
  v67 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 304);
  v3 = *(v1 + 304);
  v4 = (v3 | v2) == 0;
  if (v3)
  {
    v5 = v2 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return v4;
  }

  v49 = *(v1 + 264);
  v6 = *(v3 + 32);
  if (*(v3 + 16) >= *(v3 + 24) + v6)
  {
    v7 = *(v3 + 24) + v6;
  }

  else
  {
    v7 = *(v3 + 16);
  }

  v64 = v3;
  v65 = v6;
  v66 = v7;

  if (v6 == v7)
  {
    goto LABEL_10;
  }

LABEL_9:
  v9 = v64;
  while (1)
  {
    v11 = v65;
    v12 = ++v65;
    v13 = v9 + 20 * v11;
    v48 = *(v13 + 40);
    v14 = *(v13 + 44);
    v15 = *(v13 + 45);
    v16 = *(v13 + 46);
    v17 = *(v13 + 47);
    v18 = *(v13 + 48);
    v19 = *(v13 + 49);
    v20 = *(v13 + 50);
    v21 = *(v13 + 51);
    v22 = *(v13 + 52);
    v23 = *(v13 + 53);
    v24 = *(v13 + 54);
    v25 = *(v13 + 55);
    v26 = *(v13 + 56);
    v27 = *(v13 + 57);
    v28 = *(v13 + 58);
    v29 = *(v13 + 59);
    uu[0] = *(v13 + 44);
    v56 = v16;
    v57 = v15;
    uu[1] = v15;
    uu[2] = v16;
    v54 = v18;
    v55 = v17;
    uu[3] = v17;
    uu[4] = v18;
    v52 = v20;
    v53 = v19;
    uu[5] = v19;
    uu[6] = v20;
    v50 = v22;
    v51 = v21;
    uu[7] = v21;
    LOBYTE(v62) = v22;
    BYTE1(v62) = v23;
    BYTE2(v62) = v24;
    BYTE3(v62) = v25;
    BYTE4(v62) = v26;
    BYTE5(v62) = v27;
    BYTE6(v62) = v28;
    HIBYTE(v62) = v29;
    is_null = uuid_is_null(uu);
    if (is_null == 1)
    {
      v30 = v12;
      if (qword_1ED4106B8 != -1)
      {
        swift_once();
      }

      v31 = sub_182AD2698();
      __swift_project_value_buffer(v31, qword_1ED411DA8);
      v32 = sub_182AD2678();
      v33 = sub_182AD38B8();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_181A37000, v32, v33, "Empty UUID for DNS network agent", v34, 2u);
        MEMORY[0x1865DF520](v34, -1, -1);
      }

      v12 = v30;
      goto LABEL_33;
    }

    if (v49)
    {
      if (*(v49 + 16))
      {
        v45 = v12;
        is_null = sub_181AC2218(v14 | (v57 << 8) | (v56 << 16) | (v55 << 24) | (v54 << 32) | (v53 << 40) | (v52 << 48) | (v51 << 56), v50 | (v23 << 8) | (v24 << 16) | (v25 << 24) | (v26 << 32) | (v27 << 40) | (v28 << 48) | (v29 << 56));
        if (v35)
        {
          is_null = *(*(v49 + 56) + 8 * is_null);
          if (*(is_null + 56) == 2 && (*(is_null + 72) - 6) <= 2)
          {
            break;
          }
        }
      }
    }

LABEL_33:
    if (v12 != v66)
    {
      goto LABEL_9;
    }

LABEL_10:
    v10 = sub_181AC81FC(is_null);
    v9 = v64;
    if ((v10 & 1) == 0)
    {

      return 1;
    }
  }

  v46 = v14;
  v36 = v2;
  v37 = *(v2 + 32);
  if (*(v36 + 16) >= *(v36 + 24) + v37)
  {
    v38 = *(v36 + 24) + v37;
  }

  else
  {
    v38 = *(v36 + 16);
  }

  *uu = v36;
  v62 = v37;
  v63 = v38;

  v44 = v36;
  v47 = v36;
  while (1)
  {
    if (v37 == v38)
    {
      if ((sub_181AC81FC(v39) & 1) == 0)
      {

        goto LABEL_37;
      }

      v37 = v62;
      v47 = *uu;
    }

    v40 = v37 + 1;
    v62 = v37 + 1;
    v41 = v47 + 20 * v37;
    v42 = *(v41 + 40);
    v60 = *(v41 + 44);
    uu1[0] = v46;
    uu1[1] = v57;
    uu1[2] = v56;
    uu1[3] = v55;
    uu1[4] = v54;
    uu1[5] = v53;
    uu1[6] = v52;
    uu1[7] = v51;
    uu1[8] = v50;
    uu1[9] = v23;
    uu1[10] = v24;
    uu1[11] = v25;
    uu1[12] = v26;
    uu1[13] = v27;
    uu1[14] = v28;
    uu1[15] = v29;
    *uu2 = v60;
    v39 = uuid_compare(uu1, uu2);
    if (!v39)
    {
      break;
    }

    v38 = v63;
    v37 = v40;
  }

  if (v48 == v42)
  {
    v2 = v44;
    v12 = v45;
    goto LABEL_33;
  }

LABEL_37:

  return 0;
}

void ___ZL36nw_socks5_connection_cancel_on_queueP31NWConcrete_nw_socks5_connectionPU22objcproto11OS_nw_error8NSObject_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[2];
  if (v2)
  {
    v1[2] = 0;

    v1 = *(a1 + 32);
  }

  v4 = v1;
  v5 = v4[6];
  if (v5)
  {
    v7 = v4;
    (*(v5 + 16))();
    v6 = v7[6];
    v7[6] = 0;

    v4 = v7;
  }
}

void ___ZL43nw_socks5_connection_connect_outer_on_queueP31NWConcrete_nw_socks5_connectionPU25objcproto14OS_nw_endpoint8NSObjectPU27objcproto16OS_nw_parametersS1__block_invoke_159(uint64_t a1, unsigned int a2, void *a3)
{
  v56[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2 != 2)
  {
    v6 = *(*(*(a1 + 40) + 8) + 40);
    if (v6)
    {
      nw_socks5_connection_decrement_busy_on_queue(*(a1 + 32), v6);
      v7 = *(*(a1 + 40) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = 0;
    }
  }

  if (*(*(a1 + 32) + 56) == 255)
  {
    goto LABEL_56;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v9 = gLogObj;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    if (a2 > 5)
    {
      v10 = "unknown";
    }

    else
    {
      v10 = off_1E6A2F020[a2];
    }

    v11 = *(a1 + 32);
    *buf = 136446722;
    v52 = "nw_socks5_connection_connect_outer_on_queue_block_invoke";
    v53 = 2114;
    v54 = v11;
    v55 = 2082;
    v56[0] = v10;
    _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_INFO, "%{public}s %{public}@ out connection event %{public}s", buf, 0x20u);
  }

  if (a2 == 4)
  {
    *(*(a1 + 32) + 160) |= 1u;
    v12 = *(a1 + 32);
    if ((~v12[160] & 3) == 0)
    {
      nw_socks5_connection_cancel_on_queue(v12, v5);
      goto LABEL_56;
    }

    if (!v5)
    {
      goto LABEL_56;
    }

    goto LABEL_16;
  }

  if (!v5)
  {
    if (a2 != 3)
    {
      goto LABEL_56;
    }

    v18 = *(a1 + 32);
    v19 = *(v18 + 56);
    if (v19 <= 0x67)
    {
      if (v19 == 7)
      {
        *(v18 + 56) = 8;
LABEL_50:
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = ___ZL43nw_socks5_connection_connect_outer_on_queueP31NWConcrete_nw_socks5_connectionPU25objcproto14OS_nw_endpoint8NSObjectPU27objcproto16OS_nw_parametersS1__block_invoke_160;
        aBlock[3] = &unk_1E6A313C0;
        v39 = *(a1 + 32);
        v38 = (a1 + 32);
        v48 = v39;
        v40 = _Block_copy(aBlock);
        v41 = *v38;
        if (*(*v38 + 56) == 105 && (*(v41 + 161) & 4) != 0)
        {
          v42 = *(v41 + 144);
          v43 = *(v41 + 40);
          access_block[0] = MEMORY[0x1E69E9820];
          access_block[1] = 3221225472;
          access_block[2] = ___ZL43nw_socks5_connection_connect_outer_on_queueP31NWConcrete_nw_socks5_connectionPU25objcproto14OS_nw_endpoint8NSObjectPU27objcproto16OS_nw_parametersS1__block_invoke_161;
          access_block[3] = &unk_1E6A2DA68;
          v45 = v41;
          v46 = v40;
          nw_connection_access_establishment_report(v42, v43, access_block);
        }

        else
        {
          nw_socks5_connection_send_reply_on_queue(v41, 1, v40);
        }

        v15 = v48;
        goto LABEL_55;
      }

      if (v19 == 8)
      {
        goto LABEL_56;
      }
    }

    else
    {
      if (v19 == 200 || v19 == 105)
      {
        goto LABEL_56;
      }

      if (v19 == 104)
      {
        *(v18 + 56) = 105;
        goto LABEL_50;
      }
    }

    v20 = __nwlog_obj();
    v21 = *(a1 + 32);
    v22 = *(v21 + 56);
    *buf = 136446722;
    v52 = "nw_socks5_connection_connect_outer_on_queue_block_invoke";
    v53 = 2114;
    v54 = v21;
    v55 = 1024;
    LODWORD(v56[0]) = v22;
    v23 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v49 = 0;
    if (__nwlog_fault(v23, &type, &v49))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v24 = __nwlog_obj();
        v25 = type;
        if (os_log_type_enabled(v24, type))
        {
          v26 = *(a1 + 32);
          v27 = *(v26 + 56);
          *buf = 136446722;
          v52 = "nw_socks5_connection_connect_outer_on_queue_block_invoke";
          v53 = 2114;
          v54 = v26;
          v55 = 1024;
          LODWORD(v56[0]) = v27;
          _os_log_impl(&dword_181A37000, v24, v25, "%{public}s %{public}@ out connection ready from unexpected state %u", buf, 0x1Cu);
        }
      }

      else if (v49 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v24 = __nwlog_obj();
        v29 = type;
        v30 = os_log_type_enabled(v24, type);
        if (backtrace_string)
        {
          if (v30)
          {
            v31 = *(a1 + 32);
            v32 = *(v31 + 56);
            *buf = 136446978;
            v52 = "nw_socks5_connection_connect_outer_on_queue_block_invoke";
            v53 = 2114;
            v54 = v31;
            v55 = 1024;
            LODWORD(v56[0]) = v32;
            WORD2(v56[0]) = 2082;
            *(v56 + 6) = backtrace_string;
            _os_log_impl(&dword_181A37000, v24, v29, "%{public}s %{public}@ out connection ready from unexpected state %u, dumping backtrace:%{public}s", buf, 0x26u);
          }

          free(backtrace_string);
          goto LABEL_47;
        }

        if (v30)
        {
          v36 = *(a1 + 32);
          v37 = *(v36 + 56);
          *buf = 136446722;
          v52 = "nw_socks5_connection_connect_outer_on_queue_block_invoke";
          v53 = 2114;
          v54 = v36;
          v55 = 1024;
          LODWORD(v56[0]) = v37;
          _os_log_impl(&dword_181A37000, v24, v29, "%{public}s %{public}@ out connection ready from unexpected state %u, no backtrace", buf, 0x1Cu);
        }
      }

      else
      {
        v24 = __nwlog_obj();
        v33 = type;
        if (os_log_type_enabled(v24, type))
        {
          v34 = *(a1 + 32);
          v35 = *(v34 + 56);
          *buf = 136446722;
          v52 = "nw_socks5_connection_connect_outer_on_queue_block_invoke";
          v53 = 2114;
          v54 = v34;
          v55 = 1024;
          LODWORD(v56[0]) = v35;
          _os_log_impl(&dword_181A37000, v24, v33, "%{public}s %{public}@ out connection ready from unexpected state %u, backtrace limit exceeded", buf, 0x1Cu);
        }
      }
    }

LABEL_47:
    if (v23)
    {
      free(v23);
    }

    nw_socks5_connection_cancel_on_queue(*(a1 + 32), 0);
    goto LABEL_50;
  }

  v12 = *(a1 + 32);
LABEL_16:
  v13 = v12[56];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v14 = gLogObj;
  v15 = v14;
  if (v13 == 200)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 32);
      *buf = 136446722;
      v52 = "nw_socks5_connection_connect_outer_on_queue_block_invoke";
      v53 = 2114;
      v54 = v16;
      v55 = 2114;
      v56[0] = v5;
      _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ ignoring out connection event error %{public}@", buf, 0x20u);
    }

LABEL_55:

    goto LABEL_56;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v17 = *(a1 + 32);
    *buf = 136446722;
    v52 = "nw_socks5_connection_connect_outer_on_queue_block_invoke";
    v53 = 2114;
    v54 = v17;
    v55 = 2114;
    v56[0] = v5;
    _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ out connection event error %{public}@", buf, 0x20u);
  }

  nw_socks5_connection_cancel_on_queue(*(a1 + 32), v5);
LABEL_56:
}

void ___ZL36nw_socks5_connection_cancel_on_queueP31NWConcrete_nw_socks5_connectionPU22objcproto11OS_nw_error8NSObject_block_invoke(uint64_t a1, char a2)
{
  v4 = *(a1 + 32);
  v5 = *(v4 + 144);
  if (v5)
  {
    nw_connection_cancel(v5);
    v6 = *(a1 + 32);
    v7 = *(v6 + 144);
    *(v6 + 144) = 0;

    v4 = *(a1 + 32);
  }

  if ((*(v4 + 160) & 0x90) != 0)
  {
    a2 = 0;
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = ___ZL36nw_socks5_connection_cancel_on_queueP31NWConcrete_nw_socks5_connectionPU22objcproto11OS_nw_error8NSObject_block_invoke_2;
  v8[3] = &unk_1E6A3D868;
  v9 = v4;
  nw_socks5_connection_drain_and_cancel_in_on_queue(v9, a2, v8);
}

void nw_socks5_connection_drain_and_cancel_in_on_queue(void *a1, char a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  if (!v5->sc_in_connection)
  {
LABEL_8:
    v6[2](v6);
    goto LABEL_9;
  }

  if ((a2 & 1) == 0)
  {
    nw_socks5_connection_remove_prefer_wifi_request(v5);
    nw_connection_cancel(&v5->sc_in_connection->super);
    sc_in_connection = v5->sc_in_connection;
    v5->sc_in_connection = 0;

    sc_in_udp_associated_tcp_connection = v5->sc_in_udp_associated_tcp_connection;
    if (sc_in_udp_associated_tcp_connection)
    {
      v11 = sc_in_udp_associated_tcp_connection;
      nw_connection_cancel_inner(v11, 1);

      v12 = v5->sc_in_udp_associated_tcp_connection;
      v5->sc_in_udp_associated_tcp_connection = 0;
    }

    goto LABEL_8;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v7 = gLogObj;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 136446466;
    v17 = "nw_socks5_connection_drain_and_cancel_in_on_queue";
    v18 = 2114;
    v19 = v5;
    _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_INFO, "%{public}s %{public}@ draining inner", buf, 0x16u);
  }

  v8 = v5->sc_in_connection;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = ___ZL49nw_socks5_connection_drain_and_cancel_in_on_queueP31NWConcrete_nw_socks5_connectionbU13block_pointerFvvE_block_invoke;
  v13[3] = &unk_1E6A3A670;
  v14 = v5;
  v15 = v6;
  nw_connection_receive_internal(v8, 0, 1u, 0xFFFFFFFF, v13);

LABEL_9:
}

void sub_181EB49E8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void nw_socks5_connection_remove_prefer_wifi_request(NWConcrete_nw_socks5_connection *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1->sc_prefer_wifi_path_evaluator)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v2 = gLogObj;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136446466;
      v5 = "nw_socks5_connection_remove_prefer_wifi_request";
      v6 = 2112;
      v7 = v1;
      _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s %@ removing prefer wi-fi request", &v4, 0x16u);
    }

    nw_path_evaluator_cancel(v1->sc_prefer_wifi_path_evaluator);
    sc_prefer_wifi_path_evaluator = v1->sc_prefer_wifi_path_evaluator;
    v1->sc_prefer_wifi_path_evaluator = 0;
  }
}

void __nw_socks5_server_start_block_invoke_3(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = nw_array_duplicate_array_without_object(*(*(a1 + 32) + 80), *(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 80);
  *(v3 + 80) = v2;

  v5 = *(*(a1 + 32) + 80);
  if (v5)
  {
    count = _nw_array_get_count(v5);
  }

  else
  {
    count = 0;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v7 = gLogObj;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(v8 + 132);
    *buf = 136447234;
    *&buf[4] = "nw_socks5_server_start_block_invoke_3";
    *&buf[12] = 2112;
    *&buf[14] = v8;
    *&buf[22] = 2112;
    v31 = v9;
    LOWORD(v32) = 2048;
    *(&v32 + 2) = count;
    WORD5(v32) = 1024;
    HIDWORD(v32) = v10;
    _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s %@ cancelled connection %@, %zu remaining, busy count %u", buf, 0x30u);
  }

  v11 = *(*(a1 + 32) + 88);
  if (v11)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v31 = __Block_byref_object_copy__39483;
    *&v32 = __Block_byref_object_dispose__39484;
    *(&v32 + 1) = 0;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __nw_socks5_server_start_block_invoke_13;
    v19[3] = &unk_1E6A3BF70;
    v20 = *(a1 + 40);
    v21 = buf;
    nw_dictionary_apply(v11, v19);
    v12 = *(*&buf[8] + 40);
    if (v12)
    {
      v13 = *(*(a1 + 32) + 88);
      string_ptr = xpc_string_get_string_ptr(v12);
      nw_dictionary_set_value(v13, string_ptr, 0);
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v15 = gLogObj;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(a1 + 32);
        v16 = *(a1 + 40);
        v18 = nw_dictionary_get_count(*(v17 + 88));
        *v22 = 136446978;
        v23 = "nw_socks5_server_start_block_invoke_2";
        v24 = 2112;
        v25 = v17;
        v26 = 2112;
        v27 = v16;
        v28 = 2048;
        v29 = v18;
        _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_DEFAULT, "%{public}s %@ removed connection %@ from udp associate %zu remaining", v22, 0x2Au);
      }
    }

    _Block_object_dispose(buf, 8);
  }
}

void sub_181EB4E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZL51nw_socks5_connection_outer_connection_read_on_queueP31NWConcrete_nw_socks5_connection_block_invoke_163(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a2;
  nw_socks5_connection_decrement_busy_on_queue(*(a1 + 32), *(a1 + 40));
  if (*(*(a1 + 32) + 56) == 255)
  {
    goto LABEL_15;
  }

  if (!v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      *buf = 136446466;
      v27 = "nw_socks5_connection_outer_connection_read_on_queue_block_invoke";
      v28 = 2114;
      v29 = v9;
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_INFO, "%{public}s %{public}@ in connection write close done", buf, 0x16u);
    }

    goto LABEL_12;
  }

  v4 = v3;
  v5 = v4[3];

  if ((v5 - 6) > 0x3B || ((1 << (v5 - 6)) & 0x8C9B80004000001) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    v12 = *(a1 + 32);
    *buf = 136446722;
    v27 = "nw_socks5_connection_outer_connection_read_on_queue_block_invoke";
    v28 = 2114;
    v29 = v12;
    v30 = 1024;
    v31 = v5;
    v13 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (__nwlog_fault(v13, &type, &v24))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v14 = __nwlog_obj();
        v15 = type;
        if (os_log_type_enabled(v14, type))
        {
          v16 = *(a1 + 32);
          *buf = 136446722;
          v27 = "nw_socks5_connection_outer_connection_read_on_queue_block_invoke";
          v28 = 2114;
          v29 = v16;
          v30 = 1024;
          v31 = v5;
          _os_log_impl(&dword_181A37000, v14, v15, "%{public}s %{public}@ in connection write close error %{darwin.errno}d", buf, 0x1Cu);
        }
      }

      else if (v24 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v14 = __nwlog_obj();
        v18 = type;
        v19 = os_log_type_enabled(v14, type);
        if (backtrace_string)
        {
          if (v19)
          {
            v20 = *(a1 + 32);
            *buf = 136446978;
            v27 = "nw_socks5_connection_outer_connection_read_on_queue_block_invoke";
            v28 = 2114;
            v29 = v20;
            v30 = 1024;
            v31 = v5;
            v32 = 2082;
            v33 = backtrace_string;
            _os_log_impl(&dword_181A37000, v14, v18, "%{public}s %{public}@ in connection write close error %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x26u);
          }

          free(backtrace_string);
          goto LABEL_32;
        }

        if (v19)
        {
          v23 = *(a1 + 32);
          *buf = 136446722;
          v27 = "nw_socks5_connection_outer_connection_read_on_queue_block_invoke";
          v28 = 2114;
          v29 = v23;
          v30 = 1024;
          v31 = v5;
          _os_log_impl(&dword_181A37000, v14, v18, "%{public}s %{public}@ in connection write close error %{darwin.errno}d, no backtrace", buf, 0x1Cu);
        }
      }

      else
      {
        v14 = __nwlog_obj();
        v21 = type;
        if (os_log_type_enabled(v14, type))
        {
          v22 = *(a1 + 32);
          *buf = 136446722;
          v27 = "nw_socks5_connection_outer_connection_read_on_queue_block_invoke";
          v28 = 2114;
          v29 = v22;
          v30 = 1024;
          v31 = v5;
          _os_log_impl(&dword_181A37000, v14, v21, "%{public}s %{public}@ in connection write close error %{darwin.errno}d, backtrace limit exceeded", buf, 0x1Cu);
        }
      }
    }

LABEL_32:
    if (v13)
    {
      free(v13);
    }

    goto LABEL_13;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v7 = gLogObj;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 32);
    *buf = 136446722;
    v27 = "nw_socks5_connection_outer_connection_read_on_queue_block_invoke";
    v28 = 2114;
    v29 = v8;
    v30 = 1024;
    v31 = v5;
    _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ in connection write close error %{darwin.errno}d", buf, 0x1Cu);
  }

LABEL_12:

LABEL_13:
  *(*(a1 + 32) + 160) |= 2u;
  v10 = *(a1 + 32);
  if ((~v10[160] & 3) == 0)
  {
    nw_socks5_connection_cancel_on_queue(v10, 0);
  }

LABEL_15:
}

void nw_socks5_connection_cancel_on_queue(void *a1, void *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3[56] != 255)
  {
    if (v4 && !*(v3 + 19))
    {
      objc_storeStrong(v3 + 19, a2);
    }

    v6 = *(v3 + 17);
    if (v6)
    {
      v7 = mach_continuous_time();
      if (v7 <= 1)
      {
        v8 = 1;
      }

      else
      {
        v8 = v7;
      }

      v9 = nw_delta_nanos(v6, v8);
    }

    else
    {
      v9 = 0.0;
    }

    v10 = *(v3 + 16);
    if (*(v3 + 14))
    {
      v11 = *(v3 + 15);
      if (v11)
      {
        v12 = mach_continuous_time();
        if (v12 <= 1)
        {
          v13 = 1;
        }

        else
        {
          v13 = v12;
        }

        v10 += nw_delta_nanos(v11, v13);
      }
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v14 = gLogObj;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(v3 + 23);
      v16 = *(v3 + 24);
      v17 = *(v3 + 25);
      v18 = *(v3 + 26);
      *buf = 136448514;
      v19 = *(v3 + 19);
      v20 = *(v3 + 14);
      v27 = "nw_socks5_connection_cancel_on_queue";
      v28 = 2114;
      v29 = v3;
      v30 = 2048;
      v31 = v15;
      v32 = 2048;
      v33 = v16;
      v34 = 2048;
      v35 = v17;
      v36 = 2048;
      v37 = v18;
      v38 = 2048;
      v39 = v10 / 1000000000.0;
      v40 = 2048;
      v41 = v9 / 1000000000.0;
      v42 = 2114;
      v43 = v19;
      v44 = 2048;
      v45 = v20;
      _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ outRead %llu, outWrite %llu, inRead %llu, inWrite %llu, busyTime %0.3fs, totalTime %0.3fs, error %{public}@, busyCount %llu", buf, 0x66u);
    }

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = ___ZL36nw_socks5_connection_cancel_on_queueP31NWConcrete_nw_socks5_connectionPU22objcproto11OS_nw_error8NSObject_block_invoke;
    v24[3] = &unk_1E6A313C0;
    v21 = v3;
    v25 = v21;
    nw_socks5_connection_send_reply_on_queue(v21, 0, v24);
    v3[56] = -1;
    v23 = *(v21 + 10);
    if (v23)
    {
      nw_queue_cancel_source(v23, v22);
      *(v21 + 10) = 0;
    }
  }
}

void nw_socks5_connection_send_reply_on_queue(void *a1, char a2, void *a3)
{
  v120 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  v7 = v5[56];
  if (v7 == 255 || (v5[160] & 8) != 0)
  {
    goto LABEL_34;
  }

  if (!*(v5 + 4))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    *buf = 136446466;
    *&buf[4] = "nw_socks5_connection_send_reply_on_queue";
    *&buf[12] = 2114;
    *&buf[14] = v5;
    v11 = _os_log_send_and_compose_impl();

    v113[0] = 16;
    LOBYTE(buffer) = 0;
    if (__nwlog_fault(v11, v113, &buffer))
    {
      if (v113[0] == 17)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v12 = gLogObj;
        v13 = v113[0];
        if (os_log_type_enabled(v12, v113[0]))
        {
          *buf = 136446466;
          *&buf[4] = "nw_socks5_connection_send_reply_on_queue";
          *&buf[12] = 2114;
          *&buf[14] = v5;
          _os_log_impl(&dword_181A37000, v12, v13, "%{public}s %{public}@ cannot send reply without inner connection", buf, 0x16u);
        }
      }

      else if (buffer == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v12 = __nwlog_obj();
        v15 = v113[0];
        v16 = os_log_type_enabled(v12, v113[0]);
        if (backtrace_string)
        {
          if (v16)
          {
            *buf = 136446722;
            *&buf[4] = "nw_socks5_connection_send_reply_on_queue";
            *&buf[12] = 2114;
            *&buf[14] = v5;
            *&buf[22] = 2082;
            v117 = backtrace_string;
            _os_log_impl(&dword_181A37000, v12, v15, "%{public}s %{public}@ cannot send reply without inner connection, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(backtrace_string);
          if (!v11)
          {
            goto LABEL_34;
          }

          goto LABEL_33;
        }

        if (v16)
        {
          *buf = 136446466;
          *&buf[4] = "nw_socks5_connection_send_reply_on_queue";
          *&buf[12] = 2114;
          *&buf[14] = v5;
          _os_log_impl(&dword_181A37000, v12, v15, "%{public}s %{public}@ cannot send reply without inner connection, no backtrace", buf, 0x16u);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v12 = gLogObj;
        v21 = v113[0];
        if (os_log_type_enabled(v12, v113[0]))
        {
          *buf = 136446466;
          *&buf[4] = "nw_socks5_connection_send_reply_on_queue";
          *&buf[12] = 2114;
          *&buf[14] = v5;
          _os_log_impl(&dword_181A37000, v12, v21, "%{public}s %{public}@ cannot send reply without inner connection, backtrace limit exceeded", buf, 0x16u);
        }
      }
    }

    if (!v11)
    {
LABEL_34:
      v6[2](v6, 0);
LABEL_35:

      return;
    }

LABEL_33:
    free(v11);
    goto LABEL_34;
  }

  if ((v7 - 101) < 5)
  {
    v8 = 0;
    v9 = 1;
    goto LABEL_50;
  }

  if ((v7 - 7) < 2)
  {
    v9 = 0;
    v8 = 1;
    goto LABEL_50;
  }

  if (v5[56])
  {
    v9 = 0;
    v8 = 0;
    goto LABEL_50;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v17 = gLogObj;
  *buf = 136446466;
  *&buf[4] = "nw_socks5_connection_send_reply_on_queue";
  *&buf[12] = 2114;
  *&buf[14] = v5;
  v18 = _os_log_send_and_compose_impl();

  v113[0] = 16;
  LOBYTE(buffer) = 0;
  if (__nwlog_fault(v18, v113, &buffer))
  {
    if (v113[0] == 17)
    {
      v19 = __nwlog_obj();
      v20 = v113[0];
      if (os_log_type_enabled(v19, v113[0]))
      {
        *buf = 136446466;
        *&buf[4] = "nw_socks5_connection_send_reply_on_queue";
        *&buf[12] = 2114;
        *&buf[14] = v5;
        _os_log_impl(&dword_181A37000, v19, v20, "%{public}s %{public}@ cannot send reply from invalid state", buf, 0x16u);
      }
    }

    else if (buffer == 1)
    {
      v22 = __nw_create_backtrace_string();
      v19 = __nwlog_obj();
      v23 = v113[0];
      v24 = os_log_type_enabled(v19, v113[0]);
      if (v22)
      {
        if (v24)
        {
          *buf = 136446722;
          *&buf[4] = "nw_socks5_connection_send_reply_on_queue";
          *&buf[12] = 2114;
          *&buf[14] = v5;
          *&buf[22] = 2082;
          v117 = v22;
          _os_log_impl(&dword_181A37000, v19, v23, "%{public}s %{public}@ cannot send reply from invalid state, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(v22);
        goto LABEL_47;
      }

      if (v24)
      {
        *buf = 136446466;
        *&buf[4] = "nw_socks5_connection_send_reply_on_queue";
        *&buf[12] = 2114;
        *&buf[14] = v5;
        _os_log_impl(&dword_181A37000, v19, v23, "%{public}s %{public}@ cannot send reply from invalid state, no backtrace", buf, 0x16u);
      }
    }

    else
    {
      v19 = __nwlog_obj();
      v25 = v113[0];
      if (os_log_type_enabled(v19, v113[0]))
      {
        *buf = 136446466;
        *&buf[4] = "nw_socks5_connection_send_reply_on_queue";
        *&buf[12] = 2114;
        *&buf[14] = v5;
        _os_log_impl(&dword_181A37000, v19, v25, "%{public}s %{public}@ cannot send reply from invalid state, backtrace limit exceeded", buf, 0x16u);
      }
    }
  }

LABEL_47:
  if (v18)
  {
    free(v18);
  }

  v9 = 0;
  v8 = 0;
LABEL_50:
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v117 = __Block_byref_object_copy__16762;
  v118 = __Block_byref_object_dispose__16763;
  v119 = 0;
  if (!v9)
  {
    if (!v8)
    {
      goto LABEL_172;
    }

    LOBYTE(buffer) = 5;
    BYTE1(buffer) = a2 ^ 1;
    *(&buffer + 2) = 768;
    BYTE6(buffer) = 0;
    v36 = dispatch_data_create(&buffer, 7uLL, 0, 0);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v37 = gLogObj;
    v38 = v37;
    if (a2)
    {
      if (!os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        goto LABEL_85;
      }

      *v113 = 136446466;
      *&v113[4] = "nw_socks5_connection_send_reply_on_queue";
      *&v113[12] = 2114;
      *&v113[14] = v5;
      v39 = "%{public}s %{public}@ sending SOCKS success reply";
      v40 = v38;
      v41 = OS_LOG_TYPE_INFO;
    }

    else
    {
      if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_85;
      }

      *v113 = 136446466;
      *&v113[4] = "nw_socks5_connection_send_reply_on_queue";
      *&v113[12] = 2114;
      *&v113[14] = v5;
      v39 = "%{public}s %{public}@ sending SOCKS failure reply";
      v40 = v38;
      v41 = OS_LOG_TYPE_ERROR;
    }

    _os_log_impl(&dword_181A37000, v40, v41, v39, v113, 0x16u);
LABEL_85:

    if (v36)
    {
      goto LABEL_86;
    }

LABEL_172:
    v6[2](v6, 0);
    v36 = 0;
LABEL_173:
    _Block_object_dispose(buf, 8);

    goto LABEL_35;
  }

  __src = 0;
  if ((a2 & 1) == 0)
  {
    v42 = *(v5 + 19);
    v43 = v42;
    if (!v42)
    {
      v48 = 0;
      v49 = 1;
      goto LABEL_118;
    }

    v44 = v42;
    v45 = v44[3];

    v46 = v44;
    v47 = v46[2];

    v48 = 0;
    v49 = 1;
    if (v47 > 2)
    {
      if (v47 == 3)
      {
        if (v45 + 10055 >= 0x100)
        {
          v49 = 1;
        }

        else
        {
          v49 = 4;
        }

        if (v45 + 10055 >= 0x100)
        {
          LOBYTE(v47) = 3;
        }

        else
        {
          LOBYTE(v47) = v45 + 71;
        }
      }

      else
      {
        if (v47 != 4)
        {
          goto LABEL_118;
        }

        v49 = 5;
      }
    }

    else if (v47 == 1)
    {
      if (v45 >= 0x100)
      {
        v49 = 1;
      }

      else
      {
        v49 = 2;
      }

      if (v45 >= 0x100)
      {
        LOBYTE(v47) = 1;
      }

      else
      {
        LOBYTE(v47) = v45;
      }
    }

    else
    {
      if (v47 != 2)
      {
        goto LABEL_118;
      }

      if ((v45 & 0xFFFFFF00) == 0xFFFEFF00)
      {
        v49 = 3;
      }

      else
      {
        v49 = 1;
      }

      if ((v45 & 0xFFFFFF00) == 0xFFFEFF00)
      {
        LOBYTE(v47) = v45;
      }

      else
      {
        LOBYTE(v47) = 2;
      }
    }

    v48 = v47;
LABEL_118:

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v64 = gLogObj;
    if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
    {
      *v113 = 136446978;
      *&v113[4] = "nw_socks5_connection_send_reply_on_queue";
      *&v113[12] = 2114;
      *&v113[14] = v5;
      *&v113[22] = 1024;
      *v114 = v49;
      *&v114[4] = 1024;
      *&v114[6] = v48;
      _os_log_impl(&dword_181A37000, v64, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ sending SHOES failure reply domain %u code %u", v113, 0x22u);
    }

    v65 = *(v5 + 18);
    if (!v65)
    {
      v35 = 0;
      v69 = 0;
LABEL_142:
      v57 = 0;
      address = 0;
      v60 = v48 << 24;
      v59 = v49 << 16;
      v61 = v69;
      goto LABEL_143;
    }

    v66 = nw_connection_copy_current_path(v65);
    v67 = v66;
    if (v66 && nw_path_get_status(v66) == nw_path_status_unsatisfied)
    {
      reason = nw_path_get_reason(v67);
      v35 = 0;
      if (reason <= 25)
      {
        if (reason == 5)
        {
          v35 = 0x80;
          goto LABEL_140;
        }

        v69 = 0;
        if (reason == 6)
        {
          v35 = 64;
          goto LABEL_140;
        }
      }

      else
      {
        if (reason == 26)
        {
          v35 = 16;
          goto LABEL_140;
        }

        if (reason == 28)
        {
          v35 = 40;
          goto LABEL_140;
        }

        v69 = 0;
        if (reason == 27)
        {
          v35 = 72;
LABEL_140:
          __src = v35;
          v69 = 4;
        }
      }
    }

    else
    {
      v35 = 0;
      v69 = 0;
    }

    goto LABEL_142;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v26 = gLogObj;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    *v113 = 136446466;
    *&v113[4] = "nw_socks5_connection_send_reply_on_queue";
    *&v113[12] = 2114;
    *&v113[14] = v5;
    _os_log_impl(&dword_181A37000, v26, OS_LOG_TYPE_INFO, "%{public}s %{public}@ sending SHOES success reply", v113, 0x16u);
  }

  v27 = nw_connection_copy_connected_path(*(v5 + 18));
  v28 = v27;
  if (!v27)
  {

    v35 = 0;
    goto LABEL_102;
  }

  is_expensive = _nw_path_is_expensive(v27);
  v30 = _nw_path_uses_interface_type(v28, 1u);
  v31 = _nw_path_uses_interface_type(v28, 2u);
  is_constrained = _nw_path_is_constrained(v28);
  v33 = v31 | is_constrained;
  if ((is_expensive | v30 | v31 | is_constrained))
  {
    if (is_expensive)
    {
      v34 = 0x80;
    }

    else
    {
      v34 = 0;
    }

    if (v30)
    {
      v34 |= 0x20u;
    }

    if (v31)
    {
      v34 |= 0x40u;
    }

    if (is_constrained)
    {
      v35 = v34 | 0x10;
    }

    else
    {
      v35 = v34;
    }

    if ((is_expensive | v30 | v33))
    {
      __src = v35;
    }
  }

  else
  {
    v35 = 0;
  }

  if ((v5[160] & 0x40) != 0)
  {
    nw_socks5_connection_add_prefer_wifi_request(v5);
  }

  if ((v5[161] & 2) == 0)
  {

    if (v35)
    {
      v57 = 0;
      address = 0;
      v59 = 0;
      v60 = 0;
      v61 = 4;
      goto LABEL_143;
    }

LABEL_102:
    v57 = 0;
    address = 0;
    v59 = 0;
    v60 = 0;
    v61 = 0;
    goto LABEL_143;
  }

  v62 = nw_connection_copy_connected_remote_endpoint(*(v5 + 18));
  v63 = v62;
  if (v62)
  {
    address = nw_endpoint_get_address(v62);
  }

  else
  {
    address = 0;
  }

  v61 = 4 * (v35 != 0);
  if (address)
  {
    v59 = 0;
    v60 = 0;
    v61 += address->sa_len + 3;
    v57 = 1;
  }

  else
  {
    v57 = 0;
    v59 = 0;
    v60 = 0;
  }

LABEL_143:
  v95 = v60;
  v96 = v59;
  if ((v5[161] & 4) != 0 && (v70 = *(v5 + 22)) != 0)
  {
    *v113 = 0;
    *&v113[8] = v113;
    *&v113[16] = 0x2020000000;
    *v114 = 0;
    enumerate_block[0] = MEMORY[0x1E69E9820];
    enumerate_block[1] = 3221225472;
    enumerate_block[2] = ___ZL40nw_socks5_connection_send_reply_on_queueP31NWConcrete_nw_socks5_connectionbU13block_pointerFvbE_block_invoke;
    enumerate_block[3] = &unk_1E6A2FF48;
    enumerate_block[4] = buf;
    nw_establishment_report_enumerate_resolution_reports(v70, enumerate_block);
    v71 = *(*&buf[8] + 40);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = ___ZL40nw_socks5_connection_send_reply_on_queueP31NWConcrete_nw_socks5_connectionbU13block_pointerFvbE_block_invoke_3;
    aBlock[3] = &unk_1E6A39B60;
    aBlock[4] = v113;
    if (v71)
    {
      _nw_array_apply(v71, aBlock);
    }

    v72 = *(*&v113[8] + 24) != 0;
    v61 += *(*&v113[8] + 24);
    _Block_object_dispose(v113, 8);
  }

  else
  {
    v72 = 0;
  }

  v73 = v61 + 4;
  if (v61 == 0xFFFC)
  {
    v94 = v61;
    v90 = __nwlog_obj();
    os_log_type_enabled(v90, OS_LOG_TYPE_ERROR);
    *v113 = 136446210;
    *&v113[4] = "nw_socks5_connection_send_reply_on_queue";
    v91 = _os_log_send_and_compose_impl();

    if (__nwlog_should_abort(v91))
    {
      goto LABEL_176;
    }

    free(v91);
    v61 = v94;
  }

  v74 = malloc_type_malloc(v73, 0x2BDCF028uLL);
  if (v74)
  {
LABEL_153:
    buffer = 0;
    p_buffer = &buffer;
    v108 = 0x2020000000;
    v109 = 0;
    *v74 = v95 | v96 | (bswap32(v61 + 2) >> 16);
    v81 = *(p_buffer + 12) + 4;
    *(p_buffer + 12) = v81;
    if (v35 && v81 < v73)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v82 = gLogObj;
      if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
      {
        *v113 = 136446978;
        *&v113[4] = "nw_socks5_connection_send_reply_on_queue";
        *&v113[12] = 2114;
        *&v113[14] = v5;
        *&v113[22] = 2082;
        *v114 = "path_flags";
        *&v114[8] = 1024;
        v115 = v35;
        _os_log_impl(&dword_181A37000, v82, OS_LOG_TYPE_INFO, "%{public}s %{public}@ sending reply tlv: %{public}s(%#x)", v113, 0x26u);
      }

      v83 = nw_shoes_add_tlv(v74 + *(p_buffer + 12), (v73 - *(p_buffer + 12)), 4u, 1uLL, &__src);
      v81 = *(p_buffer + 12) + v83;
      *(p_buffer + 12) = v81;
    }

    if (v81 < v73)
    {
      v84 = v57;
    }

    else
    {
      v84 = 0;
    }

    if (v84 == 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v85 = gLogObj;
      if (os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
      {
        *v113 = 136446722;
        *&v113[4] = "nw_socks5_connection_send_reply_on_queue";
        *&v113[12] = 2114;
        *&v113[14] = v5;
        *&v113[22] = 2082;
        *v114 = "connected_endpoint";
        _os_log_impl(&dword_181A37000, v85, OS_LOG_TYPE_INFO, "%{public}s %{public}@ sending reply tlv: %{public}s", v113, 0x20u);
      }

      v86 = nw_shoes_add_tlv(v74 + *(p_buffer + 12), (v73 - *(p_buffer + 12)), 7u, address->sa_len, address);
      *(p_buffer + 12) += v86;
    }

    if (v72)
    {
      v87 = *(*&buf[8] + 40);
      v101[0] = MEMORY[0x1E69E9820];
      v101[1] = 3221225472;
      v101[2] = ___ZL40nw_socks5_connection_send_reply_on_queueP31NWConcrete_nw_socks5_connectionbU13block_pointerFvbE_block_invoke_168;
      v101[3] = &unk_1E6A2DAB8;
      v103 = &buffer;
      v105 = v73;
      v88 = v5;
      v102 = v88;
      v104 = v74;
      if (v87)
      {
        _nw_array_apply(v87, v101);
        v88 = v102;
      }
    }

    v36 = dispatch_data_create(v74, v73, 0, *MEMORY[0x1E69E9648]);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v89 = gLogObj;
    if (os_log_type_enabled(v89, OS_LOG_TYPE_INFO))
    {
      *v113 = 136446722;
      *&v113[4] = "nw_socks5_connection_send_reply_on_queue";
      *&v113[12] = 2114;
      *&v113[14] = v5;
      *&v113[22] = 2112;
      *v114 = v36;
      _os_log_impl(&dword_181A37000, v89, OS_LOG_TYPE_INFO, "%{public}s %{public}@ sending SHOES %@", v113, 0x20u);
    }

    _Block_object_dispose(&buffer, 8);
    if (!v36)
    {
      goto LABEL_172;
    }

LABEL_86:
    v5[160] |= 8u;
    v50 = &__block_literal_global_44658;
    v51 = &__block_literal_global_44658;
    if ((a2 & 1) == 0)
    {
      v52 = &__block_literal_global_6_44667;

      v50 = &__block_literal_global_6_44667;
    }

    v53 = *(v5 + 4);
    if (v5[160] < 0)
    {
      v54 = *(v5 + 21);

      v53 = v54;
    }

    WeakRetained = objc_loadWeakRetained(v5 + 3);
    nw_socks5_connection_increment_busy_on_queue(v5, WeakRetained);
    completion[0] = MEMORY[0x1E69E9820];
    completion[1] = 3221225472;
    completion[2] = ___ZL40nw_socks5_connection_send_reply_on_queueP31NWConcrete_nw_socks5_connectionbU13block_pointerFvbE_block_invoke_169;
    completion[3] = &unk_1E6A3A6A0;
    v98 = v5;
    v56 = WeakRetained;
    v99 = v56;
    v100 = v6;
    nw_connection_send(v53, v36, v50, 1, completion);

    goto LABEL_173;
  }

  v93 = v61;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v92 = v72;
  v75 = a2;
  v76 = v57;
  v77 = address;
  v78 = v35;
  v79 = gLogObj;
  os_log_type_enabled(v79, OS_LOG_TYPE_ERROR);
  *v113 = 136446210;
  *&v113[4] = "nw_socks5_connection_send_reply_on_queue";
  v80 = _os_log_send_and_compose_impl();

  v35 = v78;
  address = v77;
  v57 = v76;
  a2 = v75;
  v72 = v92;
  if (!__nwlog_should_abort(v80))
  {
    free(v80);
    v61 = v93;
    goto LABEL_153;
  }

LABEL_176:
  __break(1u);
}