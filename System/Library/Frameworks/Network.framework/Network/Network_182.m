void nw_authentication_challenge_set_http_message(void *a1, const void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v5 = v3[2];
    if (v5)
    {
      CFRelease(v5);
      v4[2] = 0;
    }

    if (a2)
    {
      v4[2] = CFRetain(a2);
    }

    goto LABEL_6;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_authentication_challenge_set_http_message";
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
        v17 = "nw_authentication_challenge_set_http_message";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null challenge", buf, 0xCu);
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
          v17 = "nw_authentication_challenge_set_http_message";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null challenge, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_23;
      }

      if (v12)
      {
        *buf = 136446210;
        v17 = "nw_authentication_challenge_set_http_message";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null challenge, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v17 = "nw_authentication_challenge_set_http_message";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null challenge, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_23:
  if (v7)
  {
    free(v7);
  }

LABEL_6:
}

CFTypeRef nw_authentication_challenge_copy_http_message(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v17 = "nw_authentication_challenge_copy_http_message";
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
          v17 = "nw_authentication_challenge_copy_http_message";
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null challenge", buf, 0xCu);
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
            v17 = "nw_authentication_challenge_copy_http_message";
            v18 = 2082;
            v19 = backtrace_string;
            _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null challenge, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (v11)
        {
          *buf = 136446210;
          v17 = "nw_authentication_challenge_copy_http_message";
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null challenge, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v7 = __nwlog_obj();
        v12 = type;
        if (os_log_type_enabled(v7, type))
        {
          *buf = 136446210;
          v17 = "nw_authentication_challenge_copy_http_message";
          _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null challenge, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_20:
    if (v6)
    {
      free(v6);
    }

    goto LABEL_22;
  }

  v3 = *(v1 + 2);
  if (!v3)
  {
LABEL_22:
    v4 = 0;
    goto LABEL_23;
  }

  v4 = CFRetain(v3);
LABEL_23:

  return v4;
}

void nw_authentication_challenge_set_protection_space(void *a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = _nw_array_create();
    v6 = v3[3];
    v3[3] = v5;

    v3[4] = 0;
    v7 = v3[3];
    if (v7 && v4)
    {
      _nw_array_append(v7, v4);
    }

    goto LABEL_5;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_authentication_challenge_set_protection_space";
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
        v19 = "nw_authentication_challenge_set_protection_space";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null challenge", buf, 0xCu);
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
          v19 = "nw_authentication_challenge_set_protection_space";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null challenge, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v14)
      {
        *buf = 136446210;
        v19 = "nw_authentication_challenge_set_protection_space";
        _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null challenge, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v19 = "nw_authentication_challenge_set_protection_space";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null challenge, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_22:
  if (v9)
  {
    free(v9);
  }

LABEL_5:
}

uint64_t nw_authentication_challenge_copy_protection_space(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = *(v1 + 3);
    if (v3)
    {
      v4 = _nw_array_get_object_at_index(v3, v2[4]);
      goto LABEL_4;
    }

    v10 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_authentication_challenge_copy_protection_space";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (__nwlog_fault(v7, &type, &v19))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v8 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446210;
          v22 = "nw_authentication_challenge_copy_protection_space";
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null challenge->protection_space_array", buf, 0xCu);
        }

LABEL_36:

        goto LABEL_37;
      }

      if (v19 != 1)
      {
        v8 = __nwlog_obj();
        v18 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446210;
          v22 = "nw_authentication_challenge_copy_protection_space";
          _os_log_impl(&dword_181A37000, v8, v18, "%{public}s called with null challenge->protection_space_array, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
      }

      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v15 = type;
      v16 = os_log_type_enabled(v8, type);
      if (!backtrace_string)
      {
        if (v16)
        {
          *buf = 136446210;
          v22 = "nw_authentication_challenge_copy_protection_space";
          _os_log_impl(&dword_181A37000, v8, v15, "%{public}s called with null challenge->protection_space_array, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v16)
      {
        *buf = 136446466;
        v22 = "nw_authentication_challenge_copy_protection_space";
        v23 = 2082;
        v24 = backtrace_string;
        _os_log_impl(&dword_181A37000, v8, v15, "%{public}s called with null challenge->protection_space_array, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_24;
    }
  }

  else
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_authentication_challenge_copy_protection_space";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (__nwlog_fault(v7, &type, &v19))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v8 = __nwlog_obj();
        v9 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446210;
          v22 = "nw_authentication_challenge_copy_protection_space";
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null challenge", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v19 != 1)
      {
        v8 = __nwlog_obj();
        v17 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446210;
          v22 = "nw_authentication_challenge_copy_protection_space";
          _os_log_impl(&dword_181A37000, v8, v17, "%{public}s called with null challenge, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
      }

      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v13 = type;
      v14 = os_log_type_enabled(v8, type);
      if (!backtrace_string)
      {
        if (v14)
        {
          *buf = 136446210;
          v22 = "nw_authentication_challenge_copy_protection_space";
          _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null challenge, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v14)
      {
        *buf = 136446466;
        v22 = "nw_authentication_challenge_copy_protection_space";
        v23 = 2082;
        v24 = backtrace_string;
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null challenge, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_24:

      free(backtrace_string);
    }
  }

LABEL_37:
  if (v7)
  {
    free(v7);
  }

  v4 = 0;
LABEL_4:

  return v4;
}

void nw_authentication_challenge_set_attempt_count(void *a1, int a2)
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
  v15 = "nw_authentication_challenge_set_attempt_count";
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
        v15 = "nw_authentication_challenge_set_attempt_count";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null challenge", buf, 0xCu);
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
          v15 = "nw_authentication_challenge_set_attempt_count";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null challenge, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_authentication_challenge_set_attempt_count";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null challenge, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_authentication_challenge_set_attempt_count";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null challenge, backtrace limit exceeded", buf, 0xCu);
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

uint64_t nw_authentication_challenge_get_attempt_count(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1[10];
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_authentication_challenge_get_attempt_count";
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
        v15 = "nw_authentication_challenge_get_attempt_count";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null challenge", buf, 0xCu);
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
          v15 = "nw_authentication_challenge_get_attempt_count";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null challenge, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_authentication_challenge_get_attempt_count";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null challenge, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_authentication_challenge_get_attempt_count";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null challenge, backtrace limit exceeded", buf, 0xCu);
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

void nw_authentication_challenge_set_proposed_credential(void *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    objc_storeStrong(v3 + 1, a2);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_authentication_challenge_set_proposed_credential";
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
        v16 = "nw_authentication_challenge_set_proposed_credential";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null challenge", buf, 0xCu);
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
          v16 = "nw_authentication_challenge_set_proposed_credential";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null challenge, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_authentication_challenge_set_proposed_credential";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null challenge, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_authentication_challenge_set_proposed_credential";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null challenge, backtrace limit exceeded", buf, 0xCu);
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

id nw_authentication_challenge_get_proposed_credential(void *a1)
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
  v16 = "nw_authentication_challenge_get_proposed_credential";
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
        v16 = "nw_authentication_challenge_get_proposed_credential";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null challenge", buf, 0xCu);
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
          v16 = "nw_authentication_challenge_get_proposed_credential";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null challenge, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_authentication_challenge_get_proposed_credential";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null challenge, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_authentication_challenge_get_proposed_credential";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null challenge, backtrace limit exceeded", buf, 0xCu);
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

void nw_authentication_challenge_set_protection_space_array(void *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    objc_storeStrong(v3 + 3, a2);
    v3[4] = 0;
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_authentication_challenge_set_protection_space_array";
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
        v16 = "nw_authentication_challenge_set_protection_space_array";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null challenge", buf, 0xCu);
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
          v16 = "nw_authentication_challenge_set_protection_space_array";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null challenge, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_authentication_challenge_set_protection_space_array";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null challenge, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_authentication_challenge_set_protection_space_array";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null challenge, backtrace limit exceeded", buf, 0xCu);
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

uint64_t nw_authentication_challenge_try_next_protection_space(void *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_authentication_challenge_try_next_protection_space";
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v8, &type, &v21))
    {
      goto LABEL_41;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v24 = "nw_authentication_challenge_try_next_protection_space";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null challenge", buf, 0xCu);
      }

      goto LABEL_40;
    }

    if (v21 != 1)
    {
      v9 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v24 = "nw_authentication_challenge_try_next_protection_space";
        _os_log_impl(&dword_181A37000, v9, v18, "%{public}s called with null challenge, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_40;
    }

    backtrace_string = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v14 = type;
    v15 = os_log_type_enabled(v9, type);
    if (!backtrace_string)
    {
      if (v15)
      {
        *buf = 136446210;
        v24 = "nw_authentication_challenge_try_next_protection_space";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null challenge, no backtrace", buf, 0xCu);
      }

      goto LABEL_40;
    }

    if (v15)
    {
      *buf = 136446466;
      v24 = "nw_authentication_challenge_try_next_protection_space";
      v25 = 2082;
      v26 = backtrace_string;
      _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null challenge, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_28;
  }

  v3 = *(v1 + 3);
  if (!v3)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_authentication_challenge_try_next_protection_space";
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v8, &type, &v21))
    {
      goto LABEL_41;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v24 = "nw_authentication_challenge_try_next_protection_space";
        _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null challenge->protection_space_array", buf, 0xCu);
      }

LABEL_40:

LABEL_41:
      if (v8)
      {
        free(v8);
      }

      goto LABEL_43;
    }

    if (v21 != 1)
    {
      v9 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v24 = "nw_authentication_challenge_try_next_protection_space";
        _os_log_impl(&dword_181A37000, v9, v19, "%{public}s called with null challenge->protection_space_array, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_40;
    }

    backtrace_string = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v16 = type;
    v17 = os_log_type_enabled(v9, type);
    if (!backtrace_string)
    {
      if (v17)
      {
        *buf = 136446210;
        v24 = "nw_authentication_challenge_try_next_protection_space";
        _os_log_impl(&dword_181A37000, v9, v16, "%{public}s called with null challenge->protection_space_array, no backtrace", buf, 0xCu);
      }

      goto LABEL_40;
    }

    if (v17)
    {
      *buf = 136446466;
      v24 = "nw_authentication_challenge_try_next_protection_space";
      v25 = 2082;
      v26 = backtrace_string;
      _os_log_impl(&dword_181A37000, v9, v16, "%{public}s called with null challenge->protection_space_array, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_28:

    free(backtrace_string);
    goto LABEL_41;
  }

  v4 = v2[4];
  if (v4 + 1 >= _nw_array_get_count(v3))
  {
LABEL_43:
    v6 = 0;
    goto LABEL_44;
  }

  v5 = v2[3];
  if (v5 && (_nw_array_get_object_at_index(v5, v2[4] + 1), (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    ++v2[4];
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

LABEL_44:
  return v6;
}

_DWORD *nw_authentication_credential_create(int a1)
{
  v2 = [NWConcrete_nw_authentication_credential alloc];

  return [(NWConcrete_nw_authentication_credential *)v2 initWithType:a1];
}

void nw_authentication_credential_set_persistence(void *a1, int a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    v3[3] = a2;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_authentication_credential_set_persistence";
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
        v15 = "nw_authentication_credential_set_persistence";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null credential", buf, 0xCu);
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
          v15 = "nw_authentication_credential_set_persistence";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null credential, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_authentication_credential_set_persistence";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null credential, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_authentication_credential_set_persistence";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null credential, backtrace limit exceeded", buf, 0xCu);
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

void nw_authentication_credential_set_username(void *a1, const char *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_authentication_credential_set_username";
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (__nwlog_fault(v8, &type, &v17))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v9 = __nwlog_obj();
        v10 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v20 = "nw_authentication_credential_set_username";
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null credential", buf, 0xCu);
        }
      }

      else if (v17 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v9 = __nwlog_obj();
        v14 = type;
        v15 = os_log_type_enabled(v9, type);
        if (backtrace_string)
        {
          if (v15)
          {
            *buf = 136446466;
            v20 = "nw_authentication_credential_set_username";
            v21 = 2082;
            v22 = backtrace_string;
            _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null credential, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_26;
        }

        if (v15)
        {
          *buf = 136446210;
          v20 = "nw_authentication_credential_set_username";
          _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null credential, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v9 = __nwlog_obj();
        v16 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v20 = "nw_authentication_credential_set_username";
          _os_log_impl(&dword_181A37000, v9, v16, "%{public}s called with null credential, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_26:
    if (v8)
    {
      free(v8);
    }

    goto LABEL_7;
  }

  v5 = v3[2];
  if (v5)
  {
    free(v5);
    v4[2] = 0;
  }

  if (!a2)
  {
    goto LABEL_7;
  }

  v6 = strdup(a2);
  if (v6)
  {
LABEL_6:
    v4[2] = v6;
LABEL_7:

    return;
  }

  v11 = __nwlog_obj();
  os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
  *buf = 136446210;
  v20 = "strict_strdup";
  v12 = _os_log_send_and_compose_impl();

  if (!__nwlog_should_abort(v12))
  {
    free(v12);
    v6 = 0;
    goto LABEL_6;
  }

  __break(1u);
}

void nw_authentication_credential_set_password(void *a1, const char *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_authentication_credential_set_password";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (__nwlog_fault(v12, &type, &v21))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v13 = __nwlog_obj();
        v14 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v24 = "nw_authentication_credential_set_password";
          _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null credential", buf, 0xCu);
        }
      }

      else if (v21 == 1)
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
            v24 = "nw_authentication_credential_set_password";
            v25 = 2082;
            v26 = backtrace_string;
            _os_log_impl(&dword_181A37000, v13, v18, "%{public}s called with null credential, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_27;
        }

        if (v19)
        {
          *buf = 136446210;
          v24 = "nw_authentication_credential_set_password";
          _os_log_impl(&dword_181A37000, v13, v18, "%{public}s called with null credential, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v13 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v24 = "nw_authentication_credential_set_password";
          _os_log_impl(&dword_181A37000, v13, v20, "%{public}s called with null credential, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_27:
    if (v12)
    {
      free(v12);
    }

    goto LABEL_8;
  }

  v5 = v3;
  v6 = v5;
  v7 = *(v5 + 3);
  if (v7)
  {
    v8 = strlen(*(v5 + 3));
    bzero(v7, v8);
    v9 = v6[3];
    if (v9)
    {
      free(v9);
      v6[3] = 0;
    }
  }

  if (!a2)
  {
    goto LABEL_8;
  }

  v10 = strdup(a2);
  if (v10)
  {
LABEL_7:
    v6[3] = v10;
LABEL_8:

    return;
  }

  v15 = __nwlog_obj();
  os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
  *buf = 136446210;
  v24 = "strict_strdup";
  v16 = _os_log_send_and_compose_impl();

  if (!__nwlog_should_abort(v16))
  {
    free(v16);
    v10 = 0;
    goto LABEL_7;
  }

  __break(1u);
}

void nw_authentication_credential_add_valid_authentication_type(void *a1, unsigned int a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v5 = v3[5];
    if (!v5)
    {
      v6 = xpc_array_create(0, 0);
      v7 = v4[5];
      v4[5] = v6;

      v5 = v4[5];
    }

    xpc_array_set_uint64(v5, 0xFFFFFFFFFFFFFFFFLL, a2);
    goto LABEL_5;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_authentication_credential_add_valid_authentication_type";
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
        v19 = "nw_authentication_credential_add_valid_authentication_type";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null credential", buf, 0xCu);
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
          v19 = "nw_authentication_credential_add_valid_authentication_type";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null credential, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v14)
      {
        *buf = 136446210;
        v19 = "nw_authentication_credential_add_valid_authentication_type";
        _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null credential, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v19 = "nw_authentication_credential_add_valid_authentication_type";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null credential, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_22:
  if (v9)
  {
    free(v9);
  }

LABEL_5:
}

uint64_t __nw_authentication_credential_add_to_tlv_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  *(*(*(*(a1 + 32) + 8) + 24))++ = xpc_uint64_get_value(v4);

  return 1;
}

BOOL nw_authentication_credential_is_equal(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!(v3 | v4))
  {
    v5 = 1;
    goto LABEL_29;
  }

  v5 = 0;
  if (v3 && v4)
  {
    v6 = *(v3 + 8);
    if (v6 != *(v4 + 8) || *(v3 + 12) != *(v4 + 12))
    {
      goto LABEL_28;
    }

    if (v6 == 1)
    {
      v7 = *(v3 + 16);
      v8 = *(v4 + 16);
      if (v7 != v8 && v7 && v8)
      {
        v9 = v4;
        v10 = strcmp(*(v3 + 16), v8);
        v4 = v9;
        if (v10)
        {
          goto LABEL_28;
        }
      }

      else if (v7 != v8)
      {
        goto LABEL_28;
      }

      v11 = *(v3 + 24);
      v12 = *(v4 + 24);
      if (v11 != v12 && v11 && v12)
      {
        v13 = v4;
        v14 = strcmp(*(v3 + 24), v12);
        v4 = v13;
        if (v14)
        {
          goto LABEL_28;
        }
      }

      else if (v11 != v12)
      {
        goto LABEL_28;
      }
    }

    v15 = *(v4 + 32);
    if (*(v3 + 32))
    {
      if (v15)
      {
        goto LABEL_22;
      }
    }

    else if (!v15)
    {
LABEL_22:
      v16 = v4;
      v17 = *(v4 + 40);
      v18 = *(v3 + 40);
      v19 = v17;
      v20 = v19;
      v5 = v18 == v19;
      if (v18 != v19 && v18 && v19)
      {
        v5 = xpc_equal(v18, v19);
      }

      v4 = v16;
      goto LABEL_29;
    }

LABEL_28:
    v5 = 0;
  }

LABEL_29:

  return v5;
}

void nw_authentication_credential_iterate_valid_authentication_types(void *a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v26 = "nw_authentication_credential_iterate_valid_authentication_types";
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (!__nwlog_fault(v8, &type, &v23))
    {
      goto LABEL_39;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v26 = "nw_authentication_credential_iterate_valid_authentication_types";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null credential", buf, 0xCu);
      }
    }

    else if (v23 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v14 = type;
      v15 = os_log_type_enabled(v9, type);
      if (backtrace_string)
      {
        if (v15)
        {
          *buf = 136446466;
          v26 = "nw_authentication_credential_iterate_valid_authentication_types";
          v27 = 2082;
          v28 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null credential, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_39:
        if (!v8)
        {
          goto LABEL_5;
        }

LABEL_40:
        free(v8);
        goto LABEL_5;
      }

      if (v15)
      {
        *buf = 136446210;
        v26 = "nw_authentication_credential_iterate_valid_authentication_types";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null credential, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v26 = "nw_authentication_credential_iterate_valid_authentication_types";
        _os_log_impl(&dword_181A37000, v9, v19, "%{public}s called with null credential, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_38:

    goto LABEL_39;
  }

  if (v4)
  {
    v6 = v3[5];
    if (v6)
    {
      applier[0] = MEMORY[0x1E69E9820];
      applier[1] = 3221225472;
      applier[2] = __nw_authentication_credential_iterate_valid_authentication_types_block_invoke;
      applier[3] = &unk_1E6A35AD0;
      v22 = v4;
      xpc_array_apply(v6, applier);
    }

    goto LABEL_5;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v26 = "nw_authentication_credential_iterate_valid_authentication_types";
  v8 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v23 = 0;
  if (!__nwlog_fault(v8, &type, &v23))
  {
    goto LABEL_39;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v9 = __nwlog_obj();
    v12 = type;
    if (os_log_type_enabled(v9, type))
    {
      *buf = 136446210;
      v26 = "nw_authentication_credential_iterate_valid_authentication_types";
      _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null iterator", buf, 0xCu);
    }

    goto LABEL_38;
  }

  if (v23 != 1)
  {
    v9 = __nwlog_obj();
    v20 = type;
    if (os_log_type_enabled(v9, type))
    {
      *buf = 136446210;
      v26 = "nw_authentication_credential_iterate_valid_authentication_types";
      _os_log_impl(&dword_181A37000, v9, v20, "%{public}s called with null iterator, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_38;
  }

  v16 = __nw_create_backtrace_string();
  v9 = __nwlog_obj();
  v17 = type;
  v18 = os_log_type_enabled(v9, type);
  if (!v16)
  {
    if (v18)
    {
      *buf = 136446210;
      v26 = "nw_authentication_credential_iterate_valid_authentication_types";
      _os_log_impl(&dword_181A37000, v9, v17, "%{public}s called with null iterator, no backtrace", buf, 0xCu);
    }

    goto LABEL_38;
  }

  if (v18)
  {
    *buf = 136446466;
    v26 = "nw_authentication_credential_iterate_valid_authentication_types";
    v27 = 2082;
    v28 = v16;
    _os_log_impl(&dword_181A37000, v9, v17, "%{public}s called with null iterator, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v16);
  if (v8)
  {
    goto LABEL_40;
  }

LABEL_5:
}

uint64_t __nw_authentication_credential_iterate_valid_authentication_types_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  xpc_uint64_get_value(v4);
  v5 = (*(*(a1 + 32) + 16))();

  return v5;
}

uint64_t nw_authentication_credential_get_username(void *a1)
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
  v15 = "nw_authentication_credential_get_username";
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
        v15 = "nw_authentication_credential_get_username";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null credential", buf, 0xCu);
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
          v15 = "nw_authentication_credential_get_username";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null credential, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_authentication_credential_get_username";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null credential, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_authentication_credential_get_username";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null credential, backtrace limit exceeded", buf, 0xCu);
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

uint64_t nw_authentication_credential_get_password(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1[3];
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_authentication_credential_get_password";
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
        v15 = "nw_authentication_credential_get_password";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null credential", buf, 0xCu);
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
          v15 = "nw_authentication_credential_get_password";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null credential, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_authentication_credential_get_password";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null credential, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_authentication_credential_get_password";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null credential, backtrace limit exceeded", buf, 0xCu);
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

void nw_authentication_credential_set_identity(void *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    objc_storeStrong(v3 + 4, a2);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_authentication_credential_set_identity";
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
        v16 = "nw_authentication_credential_set_identity";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null credential", buf, 0xCu);
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
          v16 = "nw_authentication_credential_set_identity";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null credential, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_authentication_credential_set_identity";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null credential, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_authentication_credential_set_identity";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null credential, backtrace limit exceeded", buf, 0xCu);
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

uint64_t nw_authentication_credential_get_persistence(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1[3];
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_authentication_credential_get_persistence";
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
        v15 = "nw_authentication_credential_get_persistence";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null credential", buf, 0xCu);
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
          v15 = "nw_authentication_credential_get_persistence";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null credential, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_authentication_credential_get_persistence";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null credential, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_authentication_credential_get_persistence";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null credential, backtrace limit exceeded", buf, 0xCu);
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

uint64_t __nw_proxy_options_authbroker_is_available_block_invoke()
{
  sp = 0;
  result = bootstrap_look_up(*MEMORY[0x1E69E99F8], "com.apple.cfnetwork.AuthBrokerAgent", &sp);
  if (result)
  {
    v1 = 1;
  }

  else
  {
    v1 = sp == 0;
  }

  if (!v1)
  {
    nw_proxy_options_authbroker_is_available::available = 1;
    return mach_port_deallocate(*MEMORY[0x1E69E9A60], sp);
  }

  return result;
}

void *nw_proxy_options_copy_authentication_challenge_handler(void *a1)
{
  v1 = a1;
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__38357;
  v9 = __Block_byref_object_dispose__38358;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __nw_proxy_options_copy_authentication_challenge_handler_block_invoke;
  v4[3] = &unk_1E6A3A858;
  v4[4] = &v5;
  nw_protocol_options_access_handle(v1, v4);
  v2 = _Block_copy(v6[5]);
  _Block_object_dispose(&v5, 8);

  return v2;
}

void sub_182680D9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__38357(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t __nw_proxy_options_copy_authentication_challenge_handler_block_invoke(uint64_t a1, const void **a2)
{
  v3 = _Block_copy(*a2);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 1;
}

void nw_proxy_options_set_http_proxy_authorization_header(void *a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __nw_proxy_options_set_http_proxy_authorization_header_block_invoke;
    v13[3] = &__block_descriptor_40_e9_B16__0_v8l;
    v13[4] = a2;
    nw_protocol_options_access_handle(v3, v13);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_proxy_options_set_http_proxy_authorization_header";
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
        v17 = "nw_proxy_options_set_http_proxy_authorization_header";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null options", buf, 0xCu);
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
          v17 = "nw_proxy_options_set_http_proxy_authorization_header";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v17 = "nw_proxy_options_set_http_proxy_authorization_header";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null options, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v17 = "nw_proxy_options_set_http_proxy_authorization_header";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null options, backtrace limit exceeded", buf, 0xCu);
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

uint64_t __nw_proxy_options_set_http_proxy_authorization_header_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4)
  {
    free(v4);
    *(a2 + 8) = 0;
  }

  v5 = *(a1 + 32);
  if (!v5)
  {
    return 1;
  }

  v6 = strdup(v5);
  if (v6)
  {
LABEL_5:
    *(a2 + 8) = v6;
    return 1;
  }

  v8 = __nwlog_obj();
  os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  v9 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v9);
  if (!result)
  {
    free(v9);
    v6 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void *nw_proxy_copy_shoes_definition()
{
  if (nw_protocol_shoes_get_definition(void)::onceToken != -1)
  {
    dispatch_once(&nw_protocol_shoes_get_definition(void)::onceToken, &__block_literal_global_33);
  }

  result = nw_protocol_shoes_get_definition(void)::proxy_definition;
  if (nw_protocol_shoes_get_definition(void)::proxy_definition)
  {

    return os_retain(result);
  }

  return result;
}

uint64_t nw_protocol_http_connect_create()
{
  v10 = *MEMORY[0x1E69E9840];
  if (gLogDatapath == 1)
  {
    v3 = __nwlog_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446210;
      v5 = "nw_protocol_http_connect_create";
      _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
    }
  }

  v0 = malloc_type_calloc(1uLL, 0x178uLL, 0x68F4822AuLL);
  if (v0)
  {
    goto LABEL_5;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  v5 = "nw_protocol_http_connect_create";
  v6 = 2048;
  v7 = 1;
  v8 = 2048;
  v9 = 376;
  v1 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort(v1);
  if (!result)
  {
    free(v1);
    v0 = 0;
LABEL_5:
    v0[5] = &g_http_connect_protocol_identifier;
    v0[6] = &g_http_connect_protocol_callbacks;
    v0[8] = v0;
    return (v0 + 3);
  }

  __break(1u);
  return result;
}

uint64_t nw_protocol_http_connect_get_remote_endpoint(nw_protocol *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      result = handle[19];
      if (!result)
      {
        return handle[17];
      }

      return result;
    }

    __nwlog_obj();
    *buf = 136446210;
    v14 = "nw_protocol_http_connect_get_remote_endpoint";
    v3 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v11 = 0;
    if (!__nwlog_fault(v3, &type, &v11))
    {
      goto LABEL_33;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v14 = "nw_protocol_http_connect_get_remote_endpoint";
        v6 = "%{public}s called with null http_connect";
        goto LABEL_32;
      }

      goto LABEL_33;
    }

    if (v11 != 1)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v14 = "nw_protocol_http_connect_get_remote_endpoint";
        v6 = "%{public}s called with null http_connect, backtrace limit exceeded";
        goto LABEL_32;
      }

      goto LABEL_33;
    }

    backtrace_string = __nw_create_backtrace_string();
    v4 = __nwlog_obj();
    v5 = type;
    v10 = os_log_type_enabled(v4, type);
    if (!backtrace_string)
    {
      if (v10)
      {
        *buf = 136446210;
        v14 = "nw_protocol_http_connect_get_remote_endpoint";
        v6 = "%{public}s called with null http_connect, no backtrace";
        goto LABEL_32;
      }

      goto LABEL_33;
    }

    if (v10)
    {
      *buf = 136446466;
      v14 = "nw_protocol_http_connect_get_remote_endpoint";
      v15 = 2082;
      v16 = backtrace_string;
      v9 = "%{public}s called with null http_connect, dumping backtrace:%{public}s";
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_protocol_http_connect_get_remote_endpoint";
  v3 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (!__nwlog_fault(v3, &type, &v11))
  {
    goto LABEL_33;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v11 != 1)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v14 = "nw_protocol_http_connect_get_remote_endpoint";
        v6 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_32;
      }

      goto LABEL_33;
    }

    backtrace_string = __nw_create_backtrace_string();
    v4 = __nwlog_obj();
    v5 = type;
    v8 = os_log_type_enabled(v4, type);
    if (!backtrace_string)
    {
      if (v8)
      {
        *buf = 136446210;
        v14 = "nw_protocol_http_connect_get_remote_endpoint";
        v6 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_32;
      }

      goto LABEL_33;
    }

    if (v8)
    {
      *buf = 136446466;
      v14 = "nw_protocol_http_connect_get_remote_endpoint";
      v15 = 2082;
      v16 = backtrace_string;
      v9 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_22:
      _os_log_impl(&dword_181A37000, v4, v5, v9, buf, 0x16u);
    }

LABEL_23:
    free(backtrace_string);
    goto LABEL_33;
  }

  v4 = __nwlog_obj();
  v5 = type;
  if (os_log_type_enabled(v4, type))
  {
    *buf = 136446210;
    v14 = "nw_protocol_http_connect_get_remote_endpoint";
    v6 = "%{public}s called with null protocol";
LABEL_32:
    _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
  }

LABEL_33:
  if (v3)
  {
    free(v3);
  }

  return 0;
}

nw_protocol *nw_protocol_http_connect_get_local_endpoint(nw_protocol *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v16 = "nw_protocol_http_connect_get_local_endpoint";
    v5 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (!__nwlog_fault(v5, &type, &v13))
    {
      goto LABEL_39;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v13 != 1)
      {
        v6 = __nwlog_obj();
        v7 = type;
        if (!os_log_type_enabled(v6, type))
        {
          goto LABEL_39;
        }

        *buf = 136446210;
        v16 = "nw_protocol_http_connect_get_local_endpoint";
        v8 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_38;
      }

      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v7 = type;
      v10 = os_log_type_enabled(v6, type);
      if (!backtrace_string)
      {
        if (!v10)
        {
          goto LABEL_39;
        }

        *buf = 136446210;
        v16 = "nw_protocol_http_connect_get_local_endpoint";
        v8 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_38;
      }

      if (v10)
      {
        *buf = 136446466;
        v16 = "nw_protocol_http_connect_get_local_endpoint";
        v17 = 2082;
        v18 = backtrace_string;
        v11 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_28:
        _os_log_impl(&dword_181A37000, v6, v7, v11, buf, 0x16u);
      }

LABEL_29:
      free(backtrace_string);
      goto LABEL_39;
    }

    v6 = __nwlog_obj();
    v7 = type;
    if (!os_log_type_enabled(v6, type))
    {
      goto LABEL_39;
    }

    *buf = 136446210;
    v16 = "nw_protocol_http_connect_get_local_endpoint";
    v8 = "%{public}s called with null protocol";
LABEL_38:
    _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
LABEL_39:
    if (v5)
    {
      free(v5);
    }

    return 0;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    v16 = "nw_protocol_http_connect_get_local_endpoint";
    v5 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (!__nwlog_fault(v5, &type, &v13))
    {
      goto LABEL_39;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_39;
      }

      *buf = 136446210;
      v16 = "nw_protocol_http_connect_get_local_endpoint";
      v8 = "%{public}s called with null http_connect";
      goto LABEL_38;
    }

    if (v13 != 1)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_39;
      }

      *buf = 136446210;
      v16 = "nw_protocol_http_connect_get_local_endpoint";
      v8 = "%{public}s called with null http_connect, backtrace limit exceeded";
      goto LABEL_38;
    }

    backtrace_string = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = type;
    v12 = os_log_type_enabled(v6, type);
    if (backtrace_string)
    {
      if (v12)
      {
        *buf = 136446466;
        v16 = "nw_protocol_http_connect_get_local_endpoint";
        v17 = 2082;
        v18 = backtrace_string;
        v11 = "%{public}s called with null http_connect, dumping backtrace:%{public}s";
        goto LABEL_28;
      }

      goto LABEL_29;
    }

    if (!v12)
    {
      goto LABEL_39;
    }

    *buf = 136446210;
    v16 = "nw_protocol_http_connect_get_local_endpoint";
    v8 = "%{public}s called with null http_connect, no backtrace";
    goto LABEL_38;
  }

  if (handle[13])
  {
    return handle[15];
  }

  result = a1->default_input_handler;
  if (result)
  {
    callbacks = result->callbacks;
    if (callbacks)
    {
      get_local_endpoint = callbacks->get_local_endpoint;
      if (get_local_endpoint)
      {

        return get_local_endpoint();
      }
    }

    return 0;
  }

  return result;
}

nw_protocol *nw_protocol_http_connect_get_path(nw_protocol *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v17 = "nw_protocol_http_connect_get_path";
    v6 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v14 = 0;
    if (!__nwlog_fault(v6, &type, &v14))
    {
      goto LABEL_39;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_39;
      }

      *buf = 136446210;
      v17 = "nw_protocol_http_connect_get_path";
      v9 = "%{public}s called with null protocol";
    }

    else
    {
      if (v14 != 1)
      {
        v7 = __nwlog_obj();
        v8 = type;
        if (!os_log_type_enabled(v7, type))
        {
          goto LABEL_39;
        }

        *buf = 136446210;
        v17 = "nw_protocol_http_connect_get_path";
        v9 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_38;
      }

      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v8 = type;
      v11 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          v17 = "nw_protocol_http_connect_get_path";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (!v6)
        {
          return 0;
        }

        goto LABEL_40;
      }

      if (!v11)
      {
        goto LABEL_39;
      }

      *buf = 136446210;
      v17 = "nw_protocol_http_connect_get_path";
      v9 = "%{public}s called with null protocol, no backtrace";
    }

LABEL_38:
    _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
    goto LABEL_39;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    v17 = "nw_protocol_http_connect_get_path";
    v6 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v14 = 0;
    if (!__nwlog_fault(v6, &type, &v14))
    {
      goto LABEL_39;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_39;
      }

      *buf = 136446210;
      v17 = "nw_protocol_http_connect_get_path";
      v9 = "%{public}s called with null http_connect";
      goto LABEL_38;
    }

    if (v14 != 1)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_39;
      }

      *buf = 136446210;
      v17 = "nw_protocol_http_connect_get_path";
      v9 = "%{public}s called with null http_connect, backtrace limit exceeded";
      goto LABEL_38;
    }

    v12 = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = type;
    v13 = os_log_type_enabled(v7, type);
    if (!v12)
    {
      if (!v13)
      {
        goto LABEL_39;
      }

      *buf = 136446210;
      v17 = "nw_protocol_http_connect_get_path";
      v9 = "%{public}s called with null http_connect, no backtrace";
      goto LABEL_38;
    }

    if (v13)
    {
      *buf = 136446466;
      v17 = "nw_protocol_http_connect_get_path";
      v18 = 2082;
      v19 = v12;
      _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null http_connect, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v12);
LABEL_39:
    if (!v6)
    {
      return 0;
    }

LABEL_40:
    free(v6);
    return 0;
  }

  result = *(handle + 13);
  if (result)
  {
    return result;
  }

  result = a1->default_input_handler;
  if (!result)
  {
    return result;
  }

  callbacks = result->callbacks;
  if (!callbacks)
  {
    return 0;
  }

  get_path = callbacks->get_path;
  if (!get_path)
  {
    return 0;
  }

  return get_path();
}

nw_protocol *nw_protocol_http_connect_get_parameters(nw_protocol *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v17 = "nw_protocol_http_connect_get_parameters";
    v6 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v14 = 0;
    if (!__nwlog_fault(v6, &type, &v14))
    {
      goto LABEL_39;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_39;
      }

      *buf = 136446210;
      v17 = "nw_protocol_http_connect_get_parameters";
      v9 = "%{public}s called with null protocol";
    }

    else
    {
      if (v14 != 1)
      {
        v7 = __nwlog_obj();
        v8 = type;
        if (!os_log_type_enabled(v7, type))
        {
          goto LABEL_39;
        }

        *buf = 136446210;
        v17 = "nw_protocol_http_connect_get_parameters";
        v9 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_38;
      }

      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v8 = type;
      v11 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          v17 = "nw_protocol_http_connect_get_parameters";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (!v6)
        {
          return 0;
        }

        goto LABEL_40;
      }

      if (!v11)
      {
        goto LABEL_39;
      }

      *buf = 136446210;
      v17 = "nw_protocol_http_connect_get_parameters";
      v9 = "%{public}s called with null protocol, no backtrace";
    }

LABEL_38:
    _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
    goto LABEL_39;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    v17 = "nw_protocol_http_connect_get_parameters";
    v6 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v14 = 0;
    if (!__nwlog_fault(v6, &type, &v14))
    {
      goto LABEL_39;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_39;
      }

      *buf = 136446210;
      v17 = "nw_protocol_http_connect_get_parameters";
      v9 = "%{public}s called with null http_connect";
      goto LABEL_38;
    }

    if (v14 != 1)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_39;
      }

      *buf = 136446210;
      v17 = "nw_protocol_http_connect_get_parameters";
      v9 = "%{public}s called with null http_connect, backtrace limit exceeded";
      goto LABEL_38;
    }

    v12 = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = type;
    v13 = os_log_type_enabled(v7, type);
    if (!v12)
    {
      if (!v13)
      {
        goto LABEL_39;
      }

      *buf = 136446210;
      v17 = "nw_protocol_http_connect_get_parameters";
      v9 = "%{public}s called with null http_connect, no backtrace";
      goto LABEL_38;
    }

    if (v13)
    {
      *buf = 136446466;
      v17 = "nw_protocol_http_connect_get_parameters";
      v18 = 2082;
      v19 = v12;
      _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null http_connect, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v12);
LABEL_39:
    if (!v6)
    {
      return 0;
    }

LABEL_40:
    free(v6);
    return 0;
  }

  result = *(handle + 14);
  if (result)
  {
    return result;
  }

  result = a1->default_input_handler;
  if (!result)
  {
    return result;
  }

  callbacks = result->callbacks;
  if (!callbacks)
  {
    return 0;
  }

  get_parameters = callbacks->get_parameters;
  if (!get_parameters)
  {
    return 0;
  }

  return get_parameters();
}

uint64_t nw_protocol_http_connect_copy_info(uint64_t a1, int a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v28 = "nw_protocol_http_connect_copy_info";
    v17 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v17, &type, &v25))
    {
      goto LABEL_61;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v25 != 1)
      {
        v18 = __nwlog_obj();
        v19 = type;
        if (!os_log_type_enabled(v18, type))
        {
          goto LABEL_61;
        }

        *buf = 136446210;
        v28 = "nw_protocol_http_connect_copy_info";
        v20 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_60;
      }

      backtrace_string = __nw_create_backtrace_string();
      v18 = __nwlog_obj();
      v19 = type;
      v22 = os_log_type_enabled(v18, type);
      if (!backtrace_string)
      {
        if (!v22)
        {
          goto LABEL_61;
        }

        *buf = 136446210;
        v28 = "nw_protocol_http_connect_copy_info";
        v20 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_60;
      }

      if (v22)
      {
        *buf = 136446466;
        v28 = "nw_protocol_http_connect_copy_info";
        v29 = 2082;
        v30 = backtrace_string;
        v23 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_50:
        _os_log_impl(&dword_181A37000, v18, v19, v23, buf, 0x16u);
      }

LABEL_51:
      free(backtrace_string);
      goto LABEL_61;
    }

    v18 = __nwlog_obj();
    v19 = type;
    if (!os_log_type_enabled(v18, type))
    {
      goto LABEL_61;
    }

    *buf = 136446210;
    v28 = "nw_protocol_http_connect_copy_info";
    v20 = "%{public}s called with null protocol";
LABEL_60:
    _os_log_impl(&dword_181A37000, v18, v19, v20, buf, 0xCu);
LABEL_61:
    if (v17)
    {
      free(v17);
    }

    return 0;
  }

  v2 = *(a1 + 40);
  if (!v2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v28 = "nw_protocol_http_connect_copy_info";
    v17 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v17, &type, &v25))
    {
      goto LABEL_61;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (!os_log_type_enabled(v18, type))
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      v28 = "nw_protocol_http_connect_copy_info";
      v20 = "%{public}s called with null http_connect";
      goto LABEL_60;
    }

    if (v25 != 1)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (!os_log_type_enabled(v18, type))
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      v28 = "nw_protocol_http_connect_copy_info";
      v20 = "%{public}s called with null http_connect, backtrace limit exceeded";
      goto LABEL_60;
    }

    backtrace_string = __nw_create_backtrace_string();
    v18 = __nwlog_obj();
    v19 = type;
    v24 = os_log_type_enabled(v18, type);
    if (backtrace_string)
    {
      if (v24)
      {
        *buf = 136446466;
        v28 = "nw_protocol_http_connect_copy_info";
        v29 = 2082;
        v30 = backtrace_string;
        v23 = "%{public}s called with null http_connect, dumping backtrace:%{public}s";
        goto LABEL_50;
      }

      goto LABEL_51;
    }

    if (!v24)
    {
      goto LABEL_61;
    }

    *buf = 136446210;
    v28 = "nw_protocol_http_connect_copy_info";
    v20 = "%{public}s called with null http_connect, no backtrace";
    goto LABEL_60;
  }

  if (a2 == 254 && *v2 && v2[1] && v2[2])
  {
    v3 = *(a1 + 32);
    if (!v3 || (v4 = *(v3 + 24)) == 0 || (v5 = *(v4 + 224)) == 0 || (v6 = v5()) == 0)
    {
      v6 = _nw_array_create();
    }

    if (nw_proxy_copy_http_connect_definition::onceToken != -1)
    {
      dispatch_once(&nw_proxy_copy_http_connect_definition::onceToken, &__block_literal_global_102);
    }

    v7 = nw_proxy_copy_http_connect_definition::proxy_definition;
    v8 = nw_delta_nanos(*v2, v2[1]);
    if (v8 <= 0xF423FFFFFFFFFLL)
    {
      v9 = (v8 / 0xF4240);
    }

    else
    {
      v9 = 0xFFFFFFFFLL;
    }

    v10 = nw_delta_nanos(*v2, v2[2]);
    if (v10 <= 0xF423FFFFFFFFFLL)
    {
      v11 = (v10 / 0xF4240);
    }

    else
    {
      v11 = 0xFFFFFFFFLL;
    }

    v12 = nw_protocol_establishment_report_create(v7, v9, v11);
    if (v7)
    {
      os_release(v7);
    }

    if (v6 && v12)
    {
      _nw_array_append(v6, v12);
    }

    else if (!v12)
    {
      return v6;
    }

    os_release(v12);
    return v6;
  }

  v13 = *(a1 + 32);
  if (!v13)
  {
    return 0;
  }

  v14 = *(v13 + 24);
  if (!v14)
  {
    return 0;
  }

  v15 = *(v14 + 224);
  if (!v15)
  {
    return 0;
  }

  return v15();
}

void nw_protocol_http_connect_error(nw_protocol *a1, nw_protocol *a2, int a3)
{
  v48 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v43 = "nw_protocol_http_connect_error";
    v11 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v40 = 0;
    if (!__nwlog_fault(v11, &type, &v40))
    {
      goto LABEL_88;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (!os_log_type_enabled(v18, type))
      {
        goto LABEL_88;
      }

      *buf = 136446210;
      v43 = "nw_protocol_http_connect_error";
      v17 = "%{public}s called with null protocol";
LABEL_86:
      v37 = v18;
      v38 = v19;
      v39 = 12;
      goto LABEL_87;
    }

    if (v40 != 1)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (!os_log_type_enabled(v18, type))
      {
        goto LABEL_88;
      }

      *buf = 136446210;
      v43 = "nw_protocol_http_connect_error";
      v17 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_86;
    }

    backtrace_string = __nw_create_backtrace_string();
    v18 = __nwlog_obj();
    v19 = type;
    v26 = os_log_type_enabled(v18, type);
    if (!backtrace_string)
    {
      if (!v26)
      {
        goto LABEL_88;
      }

      *buf = 136446210;
      v43 = "nw_protocol_http_connect_error";
      v17 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_86;
    }

    if (!v26)
    {
      goto LABEL_59;
    }

    *buf = 136446466;
    v43 = "nw_protocol_http_connect_error";
    v44 = 2082;
    v45 = backtrace_string;
    v27 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_58:
    _os_log_impl(&dword_181A37000, v18, v19, v27, buf, 0x16u);
    goto LABEL_59;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    v43 = "nw_protocol_http_connect_error";
    v11 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v40 = 0;
    if (!__nwlog_fault(v11, &type, &v40))
    {
      goto LABEL_88;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (!os_log_type_enabled(v18, type))
      {
        goto LABEL_88;
      }

      *buf = 136446210;
      v43 = "nw_protocol_http_connect_error";
      v17 = "%{public}s called with null http_connect";
      goto LABEL_86;
    }

    if (v40 != 1)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (!os_log_type_enabled(v18, type))
      {
        goto LABEL_88;
      }

      *buf = 136446210;
      v43 = "nw_protocol_http_connect_error";
      v17 = "%{public}s called with null http_connect, backtrace limit exceeded";
      goto LABEL_86;
    }

    backtrace_string = __nw_create_backtrace_string();
    v18 = __nwlog_obj();
    v19 = type;
    v28 = os_log_type_enabled(v18, type);
    if (!backtrace_string)
    {
      if (!v28)
      {
        goto LABEL_88;
      }

      *buf = 136446210;
      v43 = "nw_protocol_http_connect_error";
      v17 = "%{public}s called with null http_connect, no backtrace";
      goto LABEL_86;
    }

    if (!v28)
    {
      goto LABEL_59;
    }

    *buf = 136446466;
    v43 = "nw_protocol_http_connect_error";
    v44 = 2082;
    v45 = backtrace_string;
    v27 = "%{public}s called with null http_connect, dumping backtrace:%{public}s";
    goto LABEL_58;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v43 = "nw_protocol_http_connect_error";
    v11 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v40 = 0;
    if (!__nwlog_fault(v11, &type, &v40))
    {
      goto LABEL_88;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (!os_log_type_enabled(v18, type))
      {
        goto LABEL_88;
      }

      *buf = 136446210;
      v43 = "nw_protocol_http_connect_error";
      v17 = "%{public}s called with null other_protocol";
      goto LABEL_86;
    }

    if (v40 != 1)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (!os_log_type_enabled(v18, type))
      {
        goto LABEL_88;
      }

      *buf = 136446210;
      v43 = "nw_protocol_http_connect_error";
      v17 = "%{public}s called with null other_protocol, backtrace limit exceeded";
      goto LABEL_86;
    }

    backtrace_string = __nw_create_backtrace_string();
    v18 = __nwlog_obj();
    v19 = type;
    v29 = os_log_type_enabled(v18, type);
    if (!backtrace_string)
    {
      if (!v29)
      {
        goto LABEL_88;
      }

      *buf = 136446210;
      v43 = "nw_protocol_http_connect_error";
      v17 = "%{public}s called with null other_protocol, no backtrace";
      goto LABEL_86;
    }

    if (v29)
    {
      *buf = 136446466;
      v43 = "nw_protocol_http_connect_error";
      v44 = 2082;
      v45 = backtrace_string;
      v27 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
      goto LABEL_58;
    }

LABEL_59:
    free(backtrace_string);
    if (!v11)
    {
      return;
    }

LABEL_89:
    free(v11);
    return;
  }

  if (a3)
  {
    if (handle[70] == 1 && a1->output_handler == a2)
    {
      return;
    }

    default_input_handler = a1->default_input_handler;
    if (default_input_handler)
    {
      callbacks = default_input_handler->callbacks;
      if (callbacks)
      {
        error = callbacks->error;
        if (error)
        {

          error();
          return;
        }
      }
    }

    __nwlog_obj();
    v8 = a1->default_input_handler;
    v9 = "invalid";
    if (v8)
    {
      identifier = v8->identifier;
      if (identifier)
      {
        v9 = identifier;
      }
    }

    *buf = 136446466;
    v43 = "nw_protocol_http_connect_error";
    v44 = 2082;
    v45 = v9;
    v11 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v40 = 0;
    if (!__nwlog_fault(v11, &type, &v40))
    {
      goto LABEL_88;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (!os_log_type_enabled(v12, type))
      {
        goto LABEL_88;
      }

      v14 = a1->default_input_handler;
      v15 = "invalid";
      if (v14)
      {
        v16 = v14->identifier;
        if (v16)
        {
          v15 = v16;
        }
      }

      *buf = 136446466;
      v43 = "nw_protocol_http_connect_error";
      v44 = 2082;
      v45 = v15;
      v17 = "%{public}s protocol %{public}s has invalid error callback";
    }

    else if (v40 == 1)
    {
      v20 = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v13 = type;
      v21 = os_log_type_enabled(v12, type);
      if (v20)
      {
        if (v21)
        {
          v22 = a1->default_input_handler;
          v23 = "invalid";
          if (v22)
          {
            v24 = v22->identifier;
            if (v24)
            {
              v23 = v24;
            }
          }

          *buf = 136446722;
          v43 = "nw_protocol_http_connect_error";
          v44 = 2082;
          v45 = v23;
          v46 = 2082;
          v47 = v20;
          _os_log_impl(&dword_181A37000, v12, v13, "%{public}s protocol %{public}s has invalid error callback, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(v20);
LABEL_88:
        if (!v11)
        {
          return;
        }

        goto LABEL_89;
      }

      if (!v21)
      {
        goto LABEL_88;
      }

      v34 = a1->default_input_handler;
      v35 = "invalid";
      if (v34)
      {
        v36 = v34->identifier;
        if (v36)
        {
          v35 = v36;
        }
      }

      *buf = 136446466;
      v43 = "nw_protocol_http_connect_error";
      v44 = 2082;
      v45 = v35;
      v17 = "%{public}s protocol %{public}s has invalid error callback, no backtrace";
    }

    else
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (!os_log_type_enabled(v12, type))
      {
        goto LABEL_88;
      }

      v30 = a1->default_input_handler;
      v31 = "invalid";
      if (v30)
      {
        v32 = v30->identifier;
        if (v32)
        {
          v31 = v32;
        }
      }

      *buf = 136446466;
      v43 = "nw_protocol_http_connect_error";
      v44 = 2082;
      v45 = v31;
      v17 = "%{public}s protocol %{public}s has invalid error callback, backtrace limit exceeded";
    }

    v37 = v12;
    v38 = v13;
    v39 = 22;
LABEL_87:
    _os_log_impl(&dword_181A37000, v37, v38, v17, buf, v39);
    goto LABEL_88;
  }

  if ((handle[92] & 0x80) == 0 && gLogDatapath == 1)
  {
    v33 = __nwlog_obj();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446722;
      v43 = "nw_protocol_http_connect_error";
      v44 = 2082;
      v45 = (handle + 71);
      v46 = 2080;
      v47 = " ";
      _os_log_impl(&dword_181A37000, v33, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%ssuppressing error 0", buf, 0x20u);
    }
  }
}

void nw_protocol_http_connect_disconnected(nw_protocol *a1, nw_protocol *a2)
{
  v89 = *MEMORY[0x1E69E9840];
  if (gLogDatapath == 1)
  {
    v36 = a2;
    v37 = __nwlog_obj();
    v38 = os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG);
    a2 = v36;
    if (v38)
    {
      *buf = 136446210;
      v84 = "nw_protocol_http_connect_disconnected";
      _os_log_impl(&dword_181A37000, v37, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
      a2 = v36;
    }
  }

  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v84 = "nw_protocol_http_connect_disconnected";
    v39 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v81 = 0;
    if (!__nwlog_fault(v39, &type, &v81))
    {
      goto LABEL_132;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v40 = __nwlog_obj();
      v41 = type;
      if (!os_log_type_enabled(v40, type))
      {
        goto LABEL_132;
      }

      *buf = 136446210;
      v84 = "nw_protocol_http_connect_disconnected";
      v42 = "%{public}s called with null protocol";
    }

    else if (v81 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v40 = __nwlog_obj();
      v41 = type;
      v49 = os_log_type_enabled(v40, type);
      if (backtrace_string)
      {
        if (v49)
        {
          *buf = 136446466;
          v84 = "nw_protocol_http_connect_disconnected";
          v85 = 2082;
          v86 = backtrace_string;
          _os_log_impl(&dword_181A37000, v40, v41, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_132:
        if (!v39)
        {
          return;
        }

        goto LABEL_133;
      }

      if (!v49)
      {
        goto LABEL_132;
      }

      *buf = 136446210;
      v84 = "nw_protocol_http_connect_disconnected";
      v42 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v40 = __nwlog_obj();
      v41 = type;
      if (!os_log_type_enabled(v40, type))
      {
        goto LABEL_132;
      }

      *buf = 136446210;
      v84 = "nw_protocol_http_connect_disconnected";
      v42 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_131;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    v84 = "nw_protocol_http_connect_disconnected";
    v39 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v81 = 0;
    if (!__nwlog_fault(v39, &type, &v81))
    {
      goto LABEL_132;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v81 != 1)
      {
        v40 = __nwlog_obj();
        v41 = type;
        if (!os_log_type_enabled(v40, type))
        {
          goto LABEL_132;
        }

        *buf = 136446210;
        v84 = "nw_protocol_http_connect_disconnected";
        v42 = "%{public}s called with null http_connect, backtrace limit exceeded";
        goto LABEL_131;
      }

      v50 = __nw_create_backtrace_string();
      v40 = __nwlog_obj();
      v41 = type;
      v51 = os_log_type_enabled(v40, type);
      if (!v50)
      {
        if (!v51)
        {
          goto LABEL_132;
        }

        *buf = 136446210;
        v84 = "nw_protocol_http_connect_disconnected";
        v42 = "%{public}s called with null http_connect, no backtrace";
        goto LABEL_131;
      }

      if (v51)
      {
        *buf = 136446466;
        v84 = "nw_protocol_http_connect_disconnected";
        v85 = 2082;
        v86 = v50;
        v52 = "%{public}s called with null http_connect, dumping backtrace:%{public}s";
LABEL_84:
        _os_log_impl(&dword_181A37000, v40, v41, v52, buf, 0x16u);
      }

LABEL_85:
      free(v50);
      if (!v39)
      {
        return;
      }

LABEL_133:
      v72 = v39;
LABEL_142:
      free(v72);
      return;
    }

    v40 = __nwlog_obj();
    v41 = type;
    if (!os_log_type_enabled(v40, type))
    {
      goto LABEL_132;
    }

    *buf = 136446210;
    v84 = "nw_protocol_http_connect_disconnected";
    v42 = "%{public}s called with null http_connect";
LABEL_131:
    _os_log_impl(&dword_181A37000, v40, v41, v42, buf, 0xCu);
    goto LABEL_132;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v84 = "nw_protocol_http_connect_disconnected";
    v39 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v81 = 0;
    if (!__nwlog_fault(v39, &type, &v81))
    {
      goto LABEL_132;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v40 = __nwlog_obj();
      v41 = type;
      if (!os_log_type_enabled(v40, type))
      {
        goto LABEL_132;
      }

      *buf = 136446210;
      v84 = "nw_protocol_http_connect_disconnected";
      v42 = "%{public}s called with null other_protocol";
      goto LABEL_131;
    }

    if (v81 != 1)
    {
      v40 = __nwlog_obj();
      v41 = type;
      if (!os_log_type_enabled(v40, type))
      {
        goto LABEL_132;
      }

      *buf = 136446210;
      v84 = "nw_protocol_http_connect_disconnected";
      v42 = "%{public}s called with null other_protocol, backtrace limit exceeded";
      goto LABEL_131;
    }

    v50 = __nw_create_backtrace_string();
    v40 = __nwlog_obj();
    v41 = type;
    v53 = os_log_type_enabled(v40, type);
    if (!v50)
    {
      if (!v53)
      {
        goto LABEL_132;
      }

      *buf = 136446210;
      v84 = "nw_protocol_http_connect_disconnected";
      v42 = "%{public}s called with null other_protocol, no backtrace";
      goto LABEL_131;
    }

    if (v53)
    {
      *buf = 136446466;
      v84 = "nw_protocol_http_connect_disconnected";
      v85 = 2082;
      v86 = v50;
      v52 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
      goto LABEL_84;
    }

    goto LABEL_85;
  }

  if (*(handle + 70) == 1)
  {
    if (a1->output_handler != a2)
    {
      default_input_handler = a1->default_input_handler;
      if (!default_input_handler || (callbacks = default_input_handler->callbacks) == 0 || (disconnected = callbacks->disconnected) == 0)
      {
        __nwlog_obj();
        v7 = a1->default_input_handler;
        v8 = "invalid";
        if (v7)
        {
          identifier = v7->identifier;
          if (identifier)
          {
            v8 = identifier;
          }
        }

        *buf = 136446466;
        v84 = "nw_protocol_http_connect_disconnected";
        v85 = 2082;
        v86 = v8;
        v10 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v81 = 0;
        if (!__nwlog_fault(v10, &type, &v81))
        {
          goto LABEL_140;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v11 = __nwlog_obj();
          v12 = type;
          if (!os_log_type_enabled(v11, type))
          {
            goto LABEL_140;
          }

          v13 = a1->default_input_handler;
          v14 = "invalid";
          if (v13)
          {
            v15 = v13->identifier;
            if (v15)
            {
              v14 = v15;
            }
          }

LABEL_19:
          *buf = 136446466;
          v84 = "nw_protocol_http_connect_disconnected";
          v85 = 2082;
          v86 = v14;
          v16 = "%{public}s protocol %{public}s has invalid disconnected callback";
LABEL_139:
          _os_log_impl(&dword_181A37000, v11, v12, v16, buf, 0x16u);
          goto LABEL_140;
        }

        if (v81 == 1)
        {
          v54 = __nw_create_backtrace_string();
          v11 = __nwlog_obj();
          v12 = type;
          v55 = os_log_type_enabled(v11, type);
          if (v54)
          {
            if (v55)
            {
              v56 = a1->default_input_handler;
              v57 = "invalid";
              if (v56)
              {
                v58 = v56->identifier;
                if (v58)
                {
                  v57 = v58;
                }
              }

              *buf = 136446722;
              v84 = "nw_protocol_http_connect_disconnected";
              v85 = 2082;
              v86 = v57;
              v87 = 2082;
              v88 = v54;
              _os_log_impl(&dword_181A37000, v11, v12, "%{public}s protocol %{public}s has invalid disconnected callback, dumping backtrace:%{public}s", buf, 0x20u);
            }

            free(v54);
            if (v10)
            {
              goto LABEL_141;
            }

            return;
          }

          if (v55)
          {
            v73 = a1->default_input_handler;
            v70 = "invalid";
            if (v73)
            {
              v74 = v73->identifier;
              if (v74)
              {
                v70 = v74;
              }
            }

LABEL_138:
            *buf = 136446466;
            v84 = "nw_protocol_http_connect_disconnected";
            v85 = 2082;
            v86 = v70;
            v16 = "%{public}s protocol %{public}s has invalid disconnected callback, no backtrace";
            goto LABEL_139;
          }

          goto LABEL_140;
        }

        v11 = __nwlog_obj();
        v12 = type;
        if (!os_log_type_enabled(v11, type))
        {
          goto LABEL_140;
        }

        v62 = a1->default_input_handler;
        v60 = "invalid";
        if (v62)
        {
          v63 = v62->identifier;
          if (v63)
          {
            v60 = v63;
          }
        }

LABEL_100:
        *buf = 136446466;
        v84 = "nw_protocol_http_connect_disconnected";
        v85 = 2082;
        v86 = v60;
        v16 = "%{public}s protocol %{public}s has invalid disconnected callback, backtrace limit exceeded";
        goto LABEL_139;
      }

LABEL_23:
      disconnected();
      return;
    }

    handle[184] = handle[184] & 0xFFC7 | 0x20;
    if (nw_http_connect_restart_after_disconnect(handle))
    {
      return;
    }

    v19 = a1->default_input_handler;
    if (v19)
    {
      v20 = v19->callbacks;
      if (v20)
      {
        disconnected = v20->disconnected;
        if (disconnected)
        {
          goto LABEL_23;
        }
      }
    }

    __nwlog_obj();
    v21 = a1->default_input_handler;
    v22 = "invalid";
    if (v21)
    {
      v23 = v21->identifier;
      if (v23)
      {
        v22 = v23;
      }
    }

    *buf = 136446466;
    v84 = "nw_protocol_http_connect_disconnected";
    v85 = 2082;
    v86 = v22;
    type = OS_LOG_TYPE_ERROR;
    v81 = 0;
    v24 = _os_log_send_and_compose_impl();
    if (__nwlog_fault(v24, &type, &v81))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v25 = __nwlog_obj();
        v26 = type;
        if (!os_log_type_enabled(v25, type))
        {
          goto LABEL_154;
        }

        v27 = a1->default_input_handler;
        v28 = "invalid";
        if (v27)
        {
          v29 = v27->identifier;
          if (v29)
          {
            v28 = v29;
          }
        }

        *buf = 136446466;
        v84 = "nw_protocol_http_connect_disconnected";
        v85 = 2082;
        v86 = v28;
        v30 = "%{public}s protocol %{public}s has invalid disconnected callback";
LABEL_153:
        _os_log_impl(&dword_181A37000, v25, v26, v30, buf, 0x16u);
        goto LABEL_154;
      }

      if (v81 != 1)
      {
        v25 = __nwlog_obj();
        v26 = type;
        if (!os_log_type_enabled(v25, type))
        {
          goto LABEL_154;
        }

        v75 = a1->default_input_handler;
        v76 = "invalid";
        if (v75)
        {
          v77 = v75->identifier;
          if (v77)
          {
            v76 = v77;
          }
        }

        *buf = 136446466;
        v84 = "nw_protocol_http_connect_disconnected";
        v85 = 2082;
        v86 = v76;
        v30 = "%{public}s protocol %{public}s has invalid disconnected callback, backtrace limit exceeded";
        goto LABEL_153;
      }

      v64 = __nw_create_backtrace_string();
      v25 = __nwlog_obj();
      v26 = type;
      v65 = os_log_type_enabled(v25, type);
      if (!v64)
      {
        if (!v65)
        {
          goto LABEL_154;
        }

        v78 = a1->default_input_handler;
        v79 = "invalid";
        if (v78)
        {
          v80 = v78->identifier;
          if (v80)
          {
            v79 = v80;
          }
        }

        *buf = 136446466;
        v84 = "nw_protocol_http_connect_disconnected";
        v85 = 2082;
        v86 = v79;
        v30 = "%{public}s protocol %{public}s has invalid disconnected callback, no backtrace";
        goto LABEL_153;
      }

      if (v65)
      {
        v66 = a1->default_input_handler;
        v67 = "invalid";
        if (v66)
        {
          v68 = v66->identifier;
          if (v68)
          {
            v67 = v68;
          }
        }

        *buf = 136446722;
        v84 = "nw_protocol_http_connect_disconnected";
        v85 = 2082;
        v86 = v67;
        v87 = 2082;
        v88 = v64;
        _os_log_impl(&dword_181A37000, v25, v26, "%{public}s protocol %{public}s has invalid disconnected callback, dumping backtrace:%{public}s", buf, 0x20u);
      }

      free(v64);
    }

LABEL_154:
    if (v24)
    {
      v72 = v24;
      goto LABEL_142;
    }

    return;
  }

  v17 = a1->default_input_handler;
  if (v17)
  {
    v18 = v17->callbacks;
    if (v18)
    {
      disconnected = v18->disconnected;
      if (disconnected)
      {
        goto LABEL_23;
      }
    }
  }

  __nwlog_obj();
  v31 = a1->default_input_handler;
  v32 = "invalid";
  if (v31)
  {
    v33 = v31->identifier;
    if (v33)
    {
      v32 = v33;
    }
  }

  *buf = 136446466;
  v84 = "nw_protocol_http_connect_disconnected";
  v85 = 2082;
  v86 = v32;
  v10 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v81 = 0;
  if (!__nwlog_fault(v10, &type, &v81))
  {
    goto LABEL_140;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v11 = __nwlog_obj();
    v12 = type;
    if (!os_log_type_enabled(v11, type))
    {
      goto LABEL_140;
    }

    v34 = a1->default_input_handler;
    v14 = "invalid";
    if (v34)
    {
      v35 = v34->identifier;
      if (v35)
      {
        v14 = v35;
      }
    }

    goto LABEL_19;
  }

  if (v81 != 1)
  {
    v11 = __nwlog_obj();
    v12 = type;
    if (!os_log_type_enabled(v11, type))
    {
      goto LABEL_140;
    }

    v59 = a1->default_input_handler;
    v60 = "invalid";
    if (v59)
    {
      v61 = v59->identifier;
      if (v61)
      {
        v60 = v61;
      }
    }

    goto LABEL_100;
  }

  v43 = __nw_create_backtrace_string();
  v11 = __nwlog_obj();
  v12 = type;
  v44 = os_log_type_enabled(v11, type);
  if (!v43)
  {
    if (!v44)
    {
      goto LABEL_140;
    }

    v69 = a1->default_input_handler;
    v70 = "invalid";
    if (v69)
    {
      v71 = v69->identifier;
      if (v71)
      {
        v70 = v71;
      }
    }

    goto LABEL_138;
  }

  if (v44)
  {
    v45 = a1->default_input_handler;
    v46 = "invalid";
    if (v45)
    {
      v47 = v45->identifier;
      if (v47)
      {
        v46 = v47;
      }
    }

    *buf = 136446722;
    v84 = "nw_protocol_http_connect_disconnected";
    v85 = 2082;
    v86 = v46;
    v87 = 2082;
    v88 = v43;
    _os_log_impl(&dword_181A37000, v11, v12, "%{public}s protocol %{public}s has invalid disconnected callback, dumping backtrace:%{public}s", buf, 0x20u);
  }

  free(v43);
LABEL_140:
  if (v10)
  {
LABEL_141:
    v72 = v10;
    goto LABEL_142;
  }
}

uint64_t nw_http_connect_restart_after_disconnect(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_http_connect_restart_after_disconnect";
    v8 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (!__nwlog_fault(v8, &type, &v18))
    {
      goto LABEL_53;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_53;
      }

      *buf = 136446210;
      v21 = "nw_http_connect_restart_after_disconnect";
      v11 = "%{public}s called with null http_connect";
LABEL_52:
      _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0xCu);
      goto LABEL_53;
    }

    if (v18 != 1)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v21 = "nw_http_connect_restart_after_disconnect";
        v11 = "%{public}s called with null http_connect, backtrace limit exceeded";
        goto LABEL_52;
      }

      goto LABEL_53;
    }

    backtrace_string = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v10 = type;
    v13 = os_log_type_enabled(v9, type);
    if (!backtrace_string)
    {
      if (v13)
      {
        *buf = 136446210;
        v21 = "nw_http_connect_restart_after_disconnect";
        v11 = "%{public}s called with null http_connect, no backtrace";
        goto LABEL_52;
      }

      goto LABEL_53;
    }

    if (!v13)
    {
      goto LABEL_39;
    }

    *buf = 136446466;
    v21 = "nw_http_connect_restart_after_disconnect";
    v22 = 2082;
    v23 = backtrace_string;
    v14 = "%{public}s called with null http_connect, dumping backtrace:%{public}s";
LABEL_38:
    _os_log_impl(&dword_181A37000, v9, v10, v14, buf, 0x16u);
    goto LABEL_39;
  }

  if (!*(a1 + 168))
  {
    __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_http_connect_restart_after_disconnect";
    v8 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (!__nwlog_fault(v8, &type, &v18))
    {
      goto LABEL_53;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_53;
      }

      *buf = 136446210;
      v21 = "nw_http_connect_restart_after_disconnect";
      v11 = "%{public}s called with null http_connect->context";
      goto LABEL_52;
    }

    if (v18 != 1)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v21 = "nw_http_connect_restart_after_disconnect";
        v11 = "%{public}s called with null http_connect->context, backtrace limit exceeded";
        goto LABEL_52;
      }

      goto LABEL_53;
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
        v21 = "nw_http_connect_restart_after_disconnect";
        v11 = "%{public}s called with null http_connect->context, no backtrace";
        goto LABEL_52;
      }

      goto LABEL_53;
    }

    if (!v15)
    {
      goto LABEL_39;
    }

    *buf = 136446466;
    v21 = "nw_http_connect_restart_after_disconnect";
    v22 = 2082;
    v23 = backtrace_string;
    v14 = "%{public}s called with null http_connect->context, dumping backtrace:%{public}s";
    goto LABEL_38;
  }

  v2 = *(a1 + 368);
  if ((v2 & 0x20) != 0)
  {
    if (*(a1 + 276))
    {
      if ((v2 & 0x80) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v3 = gLogObj;
        v4 = 1;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
        {
          *buf = 136446722;
          v21 = "nw_http_connect_restart_after_disconnect";
          v22 = 2082;
          v23 = (a1 + 284);
          v24 = 2080;
          v25 = " ";
          _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_INFO, "%{public}s %{public}s%sNot restarting after disconnect because async operation is active", buf, 0x20u);
        }

        return v4;
      }
    }

    else
    {
      if ((v2 & 0x80) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
        {
          *buf = 136446722;
          v21 = "nw_http_connect_restart_after_disconnect";
          v22 = 2082;
          v23 = (a1 + 284);
          v24 = 2080;
          v25 = " ";
          _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_INFO, "%{public}s %{public}s%sWaiting to restart after disconnect", buf, 0x20u);
        }
      }

      nw_http_connect_start_async(a1);
      v6 = *(a1 + 168);
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 0x40000000;
      v17[2] = ___ZL40nw_http_connect_restart_after_disconnectP24nw_protocol_http_connect_block_invoke;
      v17[3] = &__block_descriptor_tmp_42_38508;
      v17[4] = a1;
      nw_queue_context_async(v6, v17);
    }

    return 1;
  }

  __nwlog_obj();
  *buf = 136446210;
  v21 = "nw_http_connect_restart_after_disconnect";
  v8 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v18 = 0;
  if (!__nwlog_fault(v8, &type, &v18))
  {
    goto LABEL_53;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v18 != 1)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v21 = "nw_http_connect_restart_after_disconnect";
        v11 = "%{public}s called with null http_connect->was_disconnected, backtrace limit exceeded";
        goto LABEL_52;
      }

      goto LABEL_53;
    }

    backtrace_string = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v10 = type;
    v16 = os_log_type_enabled(v9, type);
    if (!backtrace_string)
    {
      if (v16)
      {
        *buf = 136446210;
        v21 = "nw_http_connect_restart_after_disconnect";
        v11 = "%{public}s called with null http_connect->was_disconnected, no backtrace";
        goto LABEL_52;
      }

      goto LABEL_53;
    }

    if (v16)
    {
      *buf = 136446466;
      v21 = "nw_http_connect_restart_after_disconnect";
      v22 = 2082;
      v23 = backtrace_string;
      v14 = "%{public}s called with null http_connect->was_disconnected, dumping backtrace:%{public}s";
      goto LABEL_38;
    }

LABEL_39:
    free(backtrace_string);
    goto LABEL_53;
  }

  v9 = __nwlog_obj();
  v10 = type;
  if (os_log_type_enabled(v9, type))
  {
    *buf = 136446210;
    v21 = "nw_http_connect_restart_after_disconnect";
    v11 = "%{public}s called with null http_connect->was_disconnected";
    goto LABEL_52;
  }

LABEL_53:
  if (v8)
  {
    free(v8);
  }

  return 0;
}

void nw_http_connect_start_async(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 276) + 1;
    *(a1 + 276) = v2;
    if (v2 == v2 << 31 >> 31)
    {
      return;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = *(a1 + 276);
    *buf = 136446978;
    v23 = "nw_http_connect_start_async";
    v24 = 2082;
    v25 = "http_connect->in_async";
    v26 = 2048;
    v27 = 1;
    v28 = 2048;
    v29 = v3;
    v4 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v20 = 0;
    if (!__nwlog_fault(v4, &type, &v20))
    {
      goto LABEL_17;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v6 = type;
      if (os_log_type_enabled(gLogObj, type))
      {
        v7 = *(a1 + 276);
        *buf = 136446978;
        v23 = "nw_http_connect_start_async";
        v24 = 2082;
        v25 = "http_connect->in_async";
        v26 = 2048;
        v27 = 1;
        v28 = 2048;
        v29 = v7;
        v8 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_16:
        _os_log_impl(&dword_181A37000, v5, v6, v8, buf, 0x2Au);
      }
    }

    else if (v20 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v6 = type;
      v10 = os_log_type_enabled(gLogObj, type);
      if (backtrace_string)
      {
        if (v10)
        {
          v11 = *(a1 + 276);
          *buf = 136447234;
          v23 = "nw_http_connect_start_async";
          v24 = 2082;
          v25 = "http_connect->in_async";
          v26 = 2048;
          v27 = 1;
          v28 = 2048;
          v29 = v11;
          v30 = 2082;
          v31 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v6, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
        }

        free(backtrace_string);
        goto LABEL_17;
      }

      if (v10)
      {
        v13 = *(a1 + 276);
        *buf = 136446978;
        v23 = "nw_http_connect_start_async";
        v24 = 2082;
        v25 = "http_connect->in_async";
        v26 = 2048;
        v27 = 1;
        v28 = 2048;
        v29 = v13;
        v8 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
        goto LABEL_16;
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v6 = type;
      if (os_log_type_enabled(gLogObj, type))
      {
        v12 = *(a1 + 276);
        *buf = 136446978;
        v23 = "nw_http_connect_start_async";
        v24 = 2082;
        v25 = "http_connect->in_async";
        v26 = 2048;
        v27 = 1;
        v28 = 2048;
        v29 = v12;
        v8 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
        goto LABEL_16;
      }
    }

LABEL_17:
    if (v4)
    {
      free(v4);
    }

    *(a1 + 276) = -1;
    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v23 = "nw_http_connect_start_async";
  v14 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v20 = 0;
  if (__nwlog_fault(v14, &type, &v20))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (!os_log_type_enabled(v15, type))
      {
        goto LABEL_35;
      }

      *buf = 136446210;
      v23 = "nw_http_connect_start_async";
      v17 = "%{public}s called with null http_connect";
      goto LABEL_34;
    }

    if (v20 != 1)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (!os_log_type_enabled(v15, type))
      {
        goto LABEL_35;
      }

      *buf = 136446210;
      v23 = "nw_http_connect_start_async";
      v17 = "%{public}s called with null http_connect, backtrace limit exceeded";
      goto LABEL_34;
    }

    v18 = __nw_create_backtrace_string();
    v15 = __nwlog_obj();
    v16 = type;
    v19 = os_log_type_enabled(v15, type);
    if (v18)
    {
      if (v19)
      {
        *buf = 136446466;
        v23 = "nw_http_connect_start_async";
        v24 = 2082;
        v25 = v18;
        _os_log_impl(&dword_181A37000, v15, v16, "%{public}s called with null http_connect, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v18);
      goto LABEL_35;
    }

    if (v19)
    {
      *buf = 136446210;
      v23 = "nw_http_connect_start_async";
      v17 = "%{public}s called with null http_connect, no backtrace";
LABEL_34:
      _os_log_impl(&dword_181A37000, v15, v16, v17, buf, 0xCu);
    }
  }

LABEL_35:
  if (v14)
  {
    free(v14);
  }
}

void ___ZL40nw_http_connect_restart_after_disconnectP24nw_protocol_http_connect_block_invoke(uint64_t a1)
{
  *&v141[11] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (!v2 || (*(v2 + 368) & 0x80) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    v4 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO);
    v2 = *(a1 + 32);
    if (v4)
    {
      v5 = "";
      v6 = (v2 + 284);
      if (!v2)
      {
        v6 = "";
      }

      *buf = 136446722;
      *&buf[4] = "nw_http_connect_restart_after_disconnect_block_invoke";
      if (v2)
      {
        v5 = " ";
      }

      *&buf[12] = 2082;
      *&buf[14] = v6;
      *&buf[22] = 2080;
      v139 = v5;
      _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_INFO, "%{public}s %{public}s%sFinished waiting to restart after disconnect", buf, 0x20u);
      v2 = *(a1 + 32);
    }
  }

  v7 = nw_http_connect_end_async(v2);
  v8 = *(a1 + 32);
  if (v7)
  {
    v9 = *(v8 + 368);
    if ((v9 & 0x20) == 0)
    {
      if ((v9 & 0x80) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
        {
          v11 = *(a1 + 32);
          v12 = "";
          v13 = v11 == 0;
          if (v11)
          {
            v14 = (v11 + 284);
          }

          else
          {
            v14 = "";
          }

          *buf = 136446722;
          *&buf[4] = "nw_http_connect_restart_after_disconnect_block_invoke";
          if (!v13)
          {
            v12 = " ";
          }

          *&buf[12] = 2082;
          *&buf[14] = v14;
          *&buf[22] = 2080;
          v139 = v12;
          _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_INFO, "%{public}s %{public}s%sNot restarting because not disconnected", buf, 0x20u);
        }
      }

      return;
    }

    *(v8 + 368) = v9 & 0xFFDF;
    v19 = *(a1 + 32);
    v20 = *(v19 + 368);
    if (*(v19 + 280) == 1)
    {
      if ((v20 & 4) == 0)
      {
        if ((v20 & 0x80) != 0)
        {
          goto LABEL_39;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v21 = gLogObj;
        v22 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO);
        v19 = *(a1 + 32);
        if (!v22)
        {
          goto LABEL_39;
        }

        v23 = "";
        v24 = (v19 + 284);
        if (!v19)
        {
          v24 = "";
        }

        *buf = 136446722;
        *&buf[4] = "nw_http_connect_restart_after_disconnect_block_invoke";
        if (v19)
        {
          v23 = " ";
        }

        *&buf[12] = 2082;
        *&buf[14] = v24;
        *&buf[22] = 2080;
        v139 = v23;
        v25 = "%{public}s %{public}s%sNot restarting because no response bytes were received";
        v26 = v21;
        v27 = OS_LOG_TYPE_INFO;
        v28 = 32;
LABEL_38:
        _os_log_impl(&dword_181A37000, v26, v27, v25, buf, v28);
        v19 = *(a1 + 32);
LABEL_39:
        nw_http_connect_fail(v19, 22);
        return;
      }

      v35 = (v19 + 224);
      if (gLogDatapath == 1)
      {
        v116 = *(a1 + 32);
        v117 = __nwlog_obj();
        v118 = os_log_type_enabled(v117, OS_LOG_TYPE_DEBUG);
        v19 = v116;
        if (v118)
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_finalize_temp_frame_array";
          _os_log_impl(&dword_181A37000, v117, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
          v19 = v116;
        }
      }

      v36 = *v35;
      if (*v35)
      {
        *(v36 + 40) = type;
        v37 = *(v19 + 232);
        *type = v36;
        v137[0] = v37;
        *(v19 + 224) = 0;
        *(v19 + 232) = v35;
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
        v139 = &__block_descriptor_tmp_21_49595;
        LOBYTE(v140) = 0;
        do
        {
          v38 = *type;
          if (!*type)
          {
            break;
          }

          v39 = *(*type + 32);
          v40 = *(*type + 40);
          v41 = (v39 + 40);
          if (!v39)
          {
            v41 = v137;
          }

          *v41 = v40;
          *v40 = v39;
          *(v38 + 32) = 0;
          *(v38 + 40) = 0;
        }

        while (((*&buf[16])(buf) & 1) != 0);
      }

      *(*(a1 + 32) + 368) &= ~4u;
      *(*(a1 + 32) + 368) &= ~2u;
      v19 = *(a1 + 32);
      v42 = *(v19 + 368);
      if ((v42 & 1) == 0)
      {
        v43 = *(v19 + 56);
        if (!v43 || (v44 = *(v43 + 24)) == 0 || (v45 = *(v44 + 256)) == 0)
        {
          if ((v42 & 0x80) != 0)
          {
            goto LABEL_39;
          }

          v111 = __nwlog_obj();
          v112 = os_log_type_enabled(v111, OS_LOG_TYPE_ERROR);
          v19 = *(a1 + 32);
          if (!v112)
          {
            goto LABEL_39;
          }

          v113 = (v19 + 284);
          v114 = *(v19 + 56);
          if (!v19)
          {
            v113 = "";
          }

          *buf = 136446978;
          *&buf[4] = "nw_http_connect_restart_after_disconnect_block_invoke";
          *&buf[12] = 2082;
          *&buf[14] = v113;
          if (v19)
          {
            v115 = " ";
          }

          else
          {
            v115 = "";
          }

          *&buf[22] = 2080;
          v139 = v115;
          v140 = 2048;
          *v141 = v114;
          v25 = "%{public}s %{public}s%sNot restarting after disconnect because unable to call reset on output_handler %p";
          v26 = v111;
          v27 = OS_LOG_TYPE_ERROR;
          v28 = 42;
          goto LABEL_38;
        }

        v45(*(v19 + 56), v19 + 24);
LABEL_59:
        v46 = *(*(a1 + 32) + 56);
        if (v46)
        {
          v47 = *(v46 + 24);
          if (v47)
          {
            v48 = *(v47 + 24);
            if (v48)
            {
              v48();
              return;
            }
          }
        }

        __nwlog_obj();
        v101 = *(*(a1 + 32) + 56);
        v102 = "invalid";
        if (v101)
        {
          v103 = *(v101 + 16);
          if (v103)
          {
            v102 = v103;
          }
        }

        *buf = 136446466;
        *&buf[4] = "nw_http_connect_restart_after_disconnect_block_invoke";
        *&buf[12] = 2082;
        *&buf[14] = v102;
        v104 = _os_log_send_and_compose_impl();
        type[0] = OS_LOG_TYPE_ERROR;
        v130 = 0;
        if (!__nwlog_fault(v104, type, &v130))
        {
          goto LABEL_171;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v105 = __nwlog_obj();
          v106 = type[0];
          if (!os_log_type_enabled(v105, type[0]))
          {
            goto LABEL_171;
          }

          v107 = *(*(a1 + 32) + 56);
          v108 = "invalid";
          if (v107)
          {
            v109 = *(v107 + 16);
            if (v109)
            {
              v108 = v109;
            }
          }

          *buf = 136446466;
          *&buf[4] = "nw_http_connect_restart_after_disconnect_block_invoke";
          *&buf[12] = 2082;
          *&buf[14] = v108;
          v110 = "%{public}s protocol %{public}s has invalid connect callback";
        }

        else if (v130 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v105 = __nwlog_obj();
          v106 = type[0];
          v120 = os_log_type_enabled(v105, type[0]);
          if (backtrace_string)
          {
            if (v120)
            {
              v121 = *(*(a1 + 32) + 56);
              v122 = "invalid";
              if (v121)
              {
                v123 = *(v121 + 16);
                if (v123)
                {
                  v122 = v123;
                }
              }

              *buf = 136446722;
              *&buf[4] = "nw_http_connect_restart_after_disconnect_block_invoke";
              *&buf[12] = 2082;
              *&buf[14] = v122;
              *&buf[22] = 2082;
              v139 = backtrace_string;
              _os_log_impl(&dword_181A37000, v105, v106, "%{public}s protocol %{public}s has invalid connect callback, dumping backtrace:%{public}s", buf, 0x20u);
            }

            free(backtrace_string);
            goto LABEL_171;
          }

          if (!v120)
          {
LABEL_171:
            if (v104)
            {
              free(v104);
            }

            return;
          }

          v127 = *(*(a1 + 32) + 56);
          v128 = "invalid";
          if (v127)
          {
            v129 = *(v127 + 16);
            if (v129)
            {
              v128 = v129;
            }
          }

          *buf = 136446466;
          *&buf[4] = "nw_http_connect_restart_after_disconnect_block_invoke";
          *&buf[12] = 2082;
          *&buf[14] = v128;
          v110 = "%{public}s protocol %{public}s has invalid connect callback, no backtrace";
        }

        else
        {
          v105 = __nwlog_obj();
          v106 = type[0];
          if (!os_log_type_enabled(v105, type[0]))
          {
            goto LABEL_171;
          }

          v124 = *(*(a1 + 32) + 56);
          v125 = "invalid";
          if (v124)
          {
            v126 = *(v124 + 16);
            if (v126)
            {
              v125 = v126;
            }
          }

          *buf = 136446466;
          *&buf[4] = "nw_http_connect_restart_after_disconnect_block_invoke";
          *&buf[12] = 2082;
          *&buf[14] = v125;
          v110 = "%{public}s protocol %{public}s has invalid connect callback, backtrace limit exceeded";
        }

        _os_log_impl(&dword_181A37000, v105, v106, v110, buf, 0x16u);
        goto LABEL_171;
      }

      *type = 0;
      v137[0] = type;
      v137[1] = 0x2000000000;
      v137[2] = nw_path_copy_flow_registration(*(v19 + 168), v19 + 24);
      v49 = v137[0];
      if (!*(v137[0] + 24))
      {
        v76 = *(a1 + 32);
        if (!v76 || (*(v76 + 368) & 0x80) == 0)
        {
          v77 = __nwlog_obj();
          v78 = os_log_type_enabled(v77, OS_LOG_TYPE_INFO);
          v76 = *(a1 + 32);
          if (v78)
          {
            v79 = "";
            v80 = (v76 + 284);
            if (!v76)
            {
              v80 = "";
            }

            *buf = 136446722;
            *&buf[4] = "nw_http_connect_restart_after_disconnect_block_invoke";
            if (v76)
            {
              v79 = " ";
            }

            *&buf[12] = 2082;
            *&buf[14] = v80;
            *&buf[22] = 2080;
            v139 = v79;
            _os_log_impl(&dword_181A37000, v77, OS_LOG_TYPE_INFO, "%{public}s %{public}s%sNot restarting after disconnect because unable to get flow registration", buf, 0x20u);
            v76 = *(a1 + 32);
          }
        }

        nw_http_connect_fail(v76, 22);
        goto LABEL_130;
      }

      v131[0] = MEMORY[0x1E69E9820];
      v131[1] = 0x40000000;
      v132 = ___ZL40nw_http_connect_restart_after_disconnectP24nw_protocol_http_connect_block_invoke_40;
      v133 = &unk_1E6A31E58;
      v50 = *(a1 + 32);
      v134 = type;
      v135 = v50;
      v51 = *(v50 + 96);
      if (v51)
      {
        os_release(v51);
        v50 = *(a1 + 32);
        *(v50 + 96) = 0;
        v49 = v137[0];
      }

      new_flow = nw_path_flow_registration_create_new_flow(*(v49 + 24), 1, 1, 0, 0, (v50 + 240), 0, 0);
      v53 = *(a1 + 32);
      *(v53 + 96) = new_flow;
      if (new_flow)
      {
        nw_http_connect_start_async(v53);
        v54 = *(a1 + 32);
        v55 = *(v54 + 104);
        if (v55)
        {
          os_release(v55);
          v54 = *(a1 + 32);
          *(v54 + 104) = 0;
        }

        v56 = nw_path_flow_registration_force_update(*(v54 + 96));
        v57 = *(a1 + 32);
        *(v57 + 104) = v56;
        v58 = nw_http_connect_end_async(v57);
        v53 = *(a1 + 32);
        if (!v58)
        {
          if (!v53 || (*(v53 + 368) & 0x80) == 0)
          {
            v89 = __nwlog_obj();
            v90 = os_log_type_enabled(v89, OS_LOG_TYPE_INFO);
            v53 = *(a1 + 32);
            if (v90)
            {
              v91 = "";
              v92 = (v53 + 284);
              if (!v53)
              {
                v92 = "";
              }

              *buf = 136446722;
              *&buf[4] = "nw_http_connect_restart_after_disconnect_block_invoke";
              if (v53)
              {
                v91 = " ";
              }

              *&buf[12] = 2082;
              *&buf[14] = v92;
              *&buf[22] = 2080;
              v139 = v91;
              _os_log_impl(&dword_181A37000, v89, OS_LOG_TYPE_INFO, "%{public}s %{public}s%sNot restarting after disconnect because getting new path changed state to destroy", buf, 0x20u);
              v53 = *(a1 + 32);
            }
          }

          nw_http_connect_destroy(v53);
          goto LABEL_129;
        }

        v59 = *(v53 + 104);
        if (v59)
        {
          v60 = *(v53 + 120);
          if (v60)
          {
            os_release(v60);
            v61 = *(a1 + 32);
            *(v61 + 120) = 0;
            v59 = *(v61 + 104);
          }

          v62 = nw_path_copy_effective_local_endpoint(v59);
          v53 = *(a1 + 32);
          *(v53 + 120) = v62;
          v63 = *(v53 + 72);
          if (!v63)
          {
            goto LABEL_118;
          }

          v64 = *(v63 + 24);
          if (!v64)
          {
            goto LABEL_118;
          }

          v65 = *(v64 + 112);
          if (!v65)
          {
            goto LABEL_118;
          }

          v66 = v65(*(v53 + 72));
          v53 = *(a1 + 32);
          if (v66)
          {
            v67 = *(v53 + 112);
            if (v67)
            {
              os_release(v67);
              *(*(a1 + 32) + 112) = 0;
            }

            v68 = _nw_parameters_copy(v66);
            v69 = *(a1 + 32);
            *(v69 + 112) = v68;
            *buf = 0;
            *&buf[8] = 0;
            nw_path_flow_registration_get_id(*(v69 + 96), buf);
            *(*(a1 + 32) + 24) = *buf;
            v70 = *(a1 + 32);
            v71 = *(v70 + 56);
            nw_protocol_set_output_handler(v70 + 24, 0);
            if (nw_http_connect_reattach_channel_protocol(*(a1 + 32)))
            {
              if (v71)
              {
                v72 = v71[3];
                if (v72)
                {
                  v73 = *(v72 + 8);
                  if (v73)
                  {
                    v74 = *(a1 + 32);
                    v75 = *(v74 + 56);
                    v73(v71, v74 + 24, 1);
                    nw_protocol_set_output_handler(*(a1 + 32) + 24, v75);
                  }
                }
              }

              v132(v131);
              _Block_object_dispose(type, 8);
              goto LABEL_59;
            }

            nw_protocol_set_output_handler(*(a1 + 32) + 24, v71);
            goto LABEL_127;
          }

          if (v53)
          {
LABEL_118:
            if ((*(v53 + 368) & 0x80) != 0)
            {
              goto LABEL_128;
            }
          }

          v97 = __nwlog_obj();
          v98 = os_log_type_enabled(v97, OS_LOG_TYPE_INFO);
          v53 = *(a1 + 32);
          if (!v98)
          {
LABEL_128:
            nw_http_connect_fail(v53, 22);
LABEL_129:
            v132(v131);
LABEL_130:
            _Block_object_dispose(type, 8);
            return;
          }

          v99 = "";
          v100 = (v53 + 284);
          if (!v53)
          {
            v100 = "";
          }

          *buf = 136446722;
          *&buf[4] = "nw_http_connect_restart_after_disconnect_block_invoke";
          if (v53)
          {
            v99 = " ";
          }

          *&buf[12] = 2082;
          *&buf[14] = v100;
          *&buf[22] = 2080;
          v139 = v99;
          v85 = "%{public}s %{public}s%sNot restarting after disconnect because unable to get parameters";
          v86 = v97;
          v87 = OS_LOG_TYPE_INFO;
        }

        else
        {
          if ((*(v53 + 368) & 0x80) != 0)
          {
            goto LABEL_128;
          }

          v93 = __nwlog_obj();
          v94 = os_log_type_enabled(v93, OS_LOG_TYPE_ERROR);
          v53 = *(a1 + 32);
          if (!v94)
          {
            goto LABEL_128;
          }

          v95 = "";
          v96 = (v53 + 284);
          if (!v53)
          {
            v96 = "";
          }

          *buf = 136446722;
          *&buf[4] = "nw_http_connect_restart_after_disconnect_block_invoke";
          if (v53)
          {
            v95 = " ";
          }

          *&buf[12] = 2082;
          *&buf[14] = v96;
          *&buf[22] = 2080;
          v139 = v95;
          v85 = "%{public}s %{public}s%sNot restarting after disconnect because unable to get new path";
          v86 = v93;
          v87 = OS_LOG_TYPE_ERROR;
        }

        v88 = 32;
      }

      else
      {
        if ((*(v53 + 368) & 0x80) != 0)
        {
          goto LABEL_128;
        }

        v81 = __nwlog_obj();
        v82 = os_log_type_enabled(v81, OS_LOG_TYPE_INFO);
        v53 = *(a1 + 32);
        if (!v82)
        {
          goto LABEL_128;
        }

        v83 = (v53 + 284);
        *buf = 136447234;
        *&buf[4] = "nw_http_connect_restart_after_disconnect_block_invoke";
        if (!v53)
        {
          v83 = "";
        }

        *&buf[12] = 2082;
        *&buf[14] = v83;
        *&buf[22] = 2080;
        v84 = " ";
        if (!v53)
        {
          v84 = "";
        }

        v139 = v84;
        v140 = 1040;
        *v141 = 16;
        v141[2] = 2096;
        *&v141[3] = v53 + 240;
        v85 = "%{public}s %{public}s%sNot restarting after disconnect because unable to create new flow with nexus agent %{uuid_t}.16P";
        v86 = v81;
        v87 = OS_LOG_TYPE_INFO;
        v88 = 48;
      }

      _os_log_impl(&dword_181A37000, v86, v87, v85, buf, v88);
LABEL_127:
      v53 = *(a1 + 32);
      goto LABEL_128;
    }

    if ((v20 & 0x80) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v29 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
      {
        v30 = *(a1 + 32);
        v31 = (v30 + 284);
        v32 = "";
        v33 = v30 == 0;
        v34 = *(v30 + 280);
        if (v33)
        {
          v31 = "";
        }

        *&buf[4] = "nw_http_connect_restart_after_disconnect_block_invoke";
        *&buf[12] = 2082;
        *buf = 136446978;
        if (!v33)
        {
          v32 = " ";
        }

        *&buf[14] = v31;
        *&buf[22] = 2080;
        v139 = v32;
        v140 = 1024;
        *v141 = v34;
        _os_log_impl(&dword_181A37000, v29, OS_LOG_TYPE_INFO, "%{public}s %{public}s%sNot restarting because state %d is not negotiating", buf, 0x26u);
      }
    }
  }

  else
  {
    if (!v8 || (*(v8 + 368) & 0x80) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v15 = gLogObj;
      v16 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO);
      v8 = *(a1 + 32);
      if (v16)
      {
        v17 = "";
        v18 = (v8 + 284);
        if (!v8)
        {
          v18 = "";
        }

        *buf = 136446722;
        *&buf[4] = "nw_http_connect_restart_after_disconnect_block_invoke";
        if (v8)
        {
          v17 = " ";
        }

        *&buf[12] = 2082;
        *&buf[14] = v18;
        *&buf[22] = 2080;
        v139 = v17;
        _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_INFO, "%{public}s %{public}s%sNot restarting after disconnect because http connect state was changed to destroy", buf, 0x20u);
        v8 = *(a1 + 32);
      }
    }

    nw_http_connect_destroy(v8);
  }
}

BOOL nw_http_connect_end_async(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 276);
    *(a1 + 276) = v2 - 1;
    if (v2)
    {
      return (*(a1 + 368) & 0x40) == 0;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = *(a1 + 276);
    *buf = 136446978;
    v24 = "nw_http_connect_end_async";
    v25 = 2082;
    v26 = "http_connect->in_async";
    v27 = 2048;
    v28 = 1;
    v29 = 2048;
    v30 = v3;
    v4 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (__nwlog_fault(v4, &type, &v21))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v6 = type;
        if (os_log_type_enabled(gLogObj, type))
        {
          v7 = *(a1 + 276);
          *buf = 136446978;
          v24 = "nw_http_connect_end_async";
          v25 = 2082;
          v26 = "http_connect->in_async";
          v27 = 2048;
          v28 = 1;
          v29 = 2048;
          v30 = v7;
          v8 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_16:
          _os_log_impl(&dword_181A37000, v5, v6, v8, buf, 0x2Au);
        }
      }

      else if (v21 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v6 = type;
        v10 = os_log_type_enabled(gLogObj, type);
        if (backtrace_string)
        {
          if (v10)
          {
            v11 = *(a1 + 276);
            *buf = 136447234;
            v24 = "nw_http_connect_end_async";
            v25 = 2082;
            v26 = "http_connect->in_async";
            v27 = 2048;
            v28 = 1;
            v29 = 2048;
            v30 = v11;
            v31 = 2082;
            v32 = backtrace_string;
            _os_log_impl(&dword_181A37000, v5, v6, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(backtrace_string);
          goto LABEL_17;
        }

        if (v10)
        {
          v13 = *(a1 + 276);
          *buf = 136446978;
          v24 = "nw_http_connect_end_async";
          v25 = 2082;
          v26 = "http_connect->in_async";
          v27 = 2048;
          v28 = 1;
          v29 = 2048;
          v30 = v13;
          v8 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
          goto LABEL_16;
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v6 = type;
        if (os_log_type_enabled(gLogObj, type))
        {
          v12 = *(a1 + 276);
          *buf = 136446978;
          v24 = "nw_http_connect_end_async";
          v25 = 2082;
          v26 = "http_connect->in_async";
          v27 = 2048;
          v28 = 1;
          v29 = 2048;
          v30 = v12;
          v8 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
          goto LABEL_16;
        }
      }
    }

LABEL_17:
    if (v4)
    {
      free(v4);
    }

    *(a1 + 276) = 0;
    return (*(a1 + 368) & 0x40) == 0;
  }

  __nwlog_obj();
  *buf = 136446210;
  v24 = "nw_http_connect_end_async";
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
        v24 = "nw_http_connect_end_async";
        v18 = "%{public}s called with null http_connect";
LABEL_35:
        _os_log_impl(&dword_181A37000, v16, v17, v18, buf, 0xCu);
      }
    }

    else if (v21 == 1)
    {
      v19 = __nw_create_backtrace_string();
      v16 = __nwlog_obj();
      v17 = type;
      v20 = os_log_type_enabled(v16, type);
      if (v19)
      {
        if (v20)
        {
          *buf = 136446466;
          v24 = "nw_http_connect_end_async";
          v25 = 2082;
          v26 = v19;
          _os_log_impl(&dword_181A37000, v16, v17, "%{public}s called with null http_connect, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v19);
        goto LABEL_36;
      }

      if (v20)
      {
        *buf = 136446210;
        v24 = "nw_http_connect_end_async";
        v18 = "%{public}s called with null http_connect, no backtrace";
        goto LABEL_35;
      }
    }

    else
    {
      v16 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        v24 = "nw_http_connect_end_async";
        v18 = "%{public}s called with null http_connect, backtrace limit exceeded";
        goto LABEL_35;
      }
    }
  }

LABEL_36:
  if (v15)
  {
    free(v15);
  }

  return 0;
}

void nw_http_connect_destroy(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  if (a1 && (v2 = *(a1 + 368), (v2 & 0x80) != 0))
  {
    if (*(a1 + 276))
    {
LABEL_11:
      *(a1 + 368) |= 0x40u;
      return;
    }
  }

  else
  {
    if (gLogDatapath == 1)
    {
      v26 = __nwlog_obj();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v27 = (a1 + 284);
        if (!a1)
        {
          v27 = "";
        }

        v29 = 136446978;
        v30 = "nw_http_connect_destroy";
        v31 = 2082;
        v32 = v27;
        v28 = " ";
        if (!a1)
        {
          v28 = "";
        }

        v33 = 2080;
        v34 = v28;
        v35 = 2048;
        v36 = a1;
        _os_log_impl(&dword_181A37000, v26, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%stearing down %p", &v29, 0x2Au);
      }
    }

    if (nw_http_connect_in_async(a1))
    {
      if (!a1 || (*(a1 + 368) & 0x80) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v3 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
        {
          v4 = " ";
          v5 = (a1 + 284);
          v30 = "nw_http_connect_destroy";
          v29 = 136446722;
          if (!a1)
          {
            v4 = "";
            v5 = "";
          }

          v31 = 2082;
          v32 = v5;
          v33 = 2080;
          v34 = v4;
          _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_INFO, "%{public}s %{public}s%shttp connect in async, setting state to destroy", &v29, 0x20u);
        }
      }

      goto LABEL_11;
    }

    v2 = *(a1 + 368);
  }

  if ((v2 & 0x40) != 0)
  {
    *(a1 + 368) = v2 & 0xFFBF;
    if ((v2 & 0x80) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
      {
        v29 = 136446722;
        v30 = "nw_http_connect_destroy";
        v31 = 2082;
        v32 = (a1 + 284);
        v33 = 2080;
        v34 = " ";
        _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_INFO, "%{public}s %{public}s%shttp connect destroying after deferral", &v29, 0x20u);
      }
    }
  }

  _CFHTTPAuthenticationApplyProxyAuthorizationToRequest();
  v7 = *(a1 + 96);
  if (v7)
  {
    nw_path_flow_registration_close(v7);
    v8 = *(a1 + 96);
    if (v8)
    {
      os_release(v8);
      *(a1 + 96) = 0;
    }
  }

  v9 = *(a1 + 88);
  if (v9)
  {
    nw_path_flow_registration_close(v9);
    v10 = *(a1 + 88);
    if (v10)
    {
      os_release(v10);
      *(a1 + 88) = 0;
    }
  }

  v11 = *(a1 + 128);
  if (v11)
  {
    os_release(v11);
    *(a1 + 128) = 0;
  }

  v12 = *(a1 + 104);
  if (v12)
  {
    os_release(v12);
    *(a1 + 104) = 0;
  }

  v13 = *(a1 + 112);
  if (v13)
  {
    os_release(v13);
    *(a1 + 112) = 0;
  }

  v14 = *(a1 + 120);
  if (v14)
  {
    os_release(v14);
    *(a1 + 120) = 0;
  }

  v15 = *(a1 + 136);
  if (v15)
  {
    os_release(v15);
    *(a1 + 136) = 0;
  }

  v16 = *(a1 + 144);
  if (v16)
  {
    os_release(v16);
    *(a1 + 144) = 0;
  }

  v17 = *(a1 + 152);
  if (v17)
  {
    os_release(v17);
    *(a1 + 152) = 0;
  }

  v18 = *(a1 + 160);
  if (v18)
  {
    os_release(v18);
    *(a1 + 160) = 0;
  }

  v19 = *(a1 + 168);
  if (v19)
  {
    os_release(v19);
    *(a1 + 168) = 0;
  }

  v20 = *(a1 + 176);
  if (v20)
  {
    os_release(v20);
    *(a1 + 176) = 0;
  }

  v21 = *(a1 + 184);
  if (v21)
  {
    os_release(v21);
    *(a1 + 184) = 0;
  }

  v22 = *(a1 + 192);
  if (v22)
  {
    CFRelease(v22);
    *(a1 + 192) = 0;
  }

  v23 = *(a1 + 208);
  if (v23)
  {
    CFRelease(v23);
    *(a1 + 208) = 0;
  }

  v24 = *(a1 + 200);
  if (v24)
  {
    CFRelease(v24);
    *(a1 + 200) = 0;
  }

  v25 = *(a1 + 216);
  if (v25)
  {
    CFRelease(v25);
  }

  free(a1);
}

void nw_http_connect_fail(uint64_t a1, int a2)
{
  v90 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *(a1 + 280) = 3;
    if (!a2)
    {
      goto LABEL_7;
    }

    v3 = *(a1 + 72);
    if (v3)
    {
      v4 = *(v3 + 24);
      if (v4)
      {
        v5 = *(v4 + 56);
        if (v5)
        {
          v5();
          goto LABEL_7;
        }
      }
    }

    __nwlog_obj();
    v32 = *(a1 + 72);
    v33 = "invalid";
    if (v32)
    {
      v34 = *(v32 + 16);
      if (v34)
      {
        v33 = v34;
      }
    }

    *buf = 136446466;
    v85 = "nw_http_connect_fail";
    v86 = 2082;
    v87 = v33;
    v35 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v82 = 0;
    if (__nwlog_fault(v35, &type, &v82))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v36 = __nwlog_obj();
        v37 = type;
        if (!os_log_type_enabled(v36, type))
        {
          goto LABEL_118;
        }

        v38 = *(a1 + 72);
        v39 = "invalid";
        if (v38)
        {
          v40 = *(v38 + 16);
          if (v40)
          {
            v39 = v40;
          }
        }

        *buf = 136446466;
        v85 = "nw_http_connect_fail";
        v86 = 2082;
        v87 = v39;
        v41 = "%{public}s protocol %{public}s has invalid error callback";
        goto LABEL_117;
      }

      if (v82 != 1)
      {
        v36 = __nwlog_obj();
        v37 = type;
        if (!os_log_type_enabled(v36, type))
        {
          goto LABEL_118;
        }

        v69 = *(a1 + 72);
        v70 = "invalid";
        if (v69)
        {
          v71 = *(v69 + 16);
          if (v71)
          {
            v70 = v71;
          }
        }

        *buf = 136446466;
        v85 = "nw_http_connect_fail";
        v86 = 2082;
        v87 = v70;
        v41 = "%{public}s protocol %{public}s has invalid error callback, backtrace limit exceeded";
        goto LABEL_117;
      }

      backtrace_string = __nw_create_backtrace_string();
      v36 = __nwlog_obj();
      v37 = type;
      v57 = os_log_type_enabled(v36, type);
      if (backtrace_string)
      {
        if (v57)
        {
          v58 = *(a1 + 72);
          v59 = "invalid";
          if (v58)
          {
            v60 = *(v58 + 16);
            if (v60)
            {
              v59 = v60;
            }
          }

          *buf = 136446722;
          v85 = "nw_http_connect_fail";
          v86 = 2082;
          v87 = v59;
          v88 = 2082;
          v89 = backtrace_string;
          _os_log_impl(&dword_181A37000, v36, v37, "%{public}s protocol %{public}s has invalid error callback, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(backtrace_string);
        goto LABEL_118;
      }

      if (v57)
      {
        v79 = *(a1 + 72);
        v80 = "invalid";
        if (v79)
        {
          v81 = *(v79 + 16);
          if (v81)
          {
            v80 = v81;
          }
        }

        *buf = 136446466;
        v85 = "nw_http_connect_fail";
        v86 = 2082;
        v87 = v80;
        v41 = "%{public}s protocol %{public}s has invalid error callback, no backtrace";
LABEL_117:
        _os_log_impl(&dword_181A37000, v36, v37, v41, buf, 0x16u);
      }
    }

LABEL_118:
    if (v35)
    {
      free(v35);
    }

LABEL_7:
    v6 = *(a1 + 72);
    if (v6)
    {
      v7 = *(v6 + 24);
      if (v7)
      {
        v8 = *(v7 + 48);
        if (v8)
        {
          v8(v6, a1 + 24);
          goto LABEL_11;
        }
      }
    }

    __nwlog_obj();
    v12 = *(a1 + 72);
    v13 = "invalid";
    if (v12)
    {
      v14 = *(v12 + 16);
      if (v14)
      {
        v13 = v14;
      }
    }

    *buf = 136446466;
    v85 = "nw_http_connect_fail";
    v86 = 2082;
    v87 = v13;
    v15 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v82 = 0;
    if (__nwlog_fault(v15, &type, &v82))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v16 = __nwlog_obj();
        v17 = type;
        if (!os_log_type_enabled(v16, type))
        {
          goto LABEL_100;
        }

        v18 = *(a1 + 72);
        v19 = "invalid";
        if (v18)
        {
          v20 = *(v18 + 16);
          if (v20)
          {
            v19 = v20;
          }
        }

        *buf = 136446466;
        v85 = "nw_http_connect_fail";
        v86 = 2082;
        v87 = v19;
        v21 = "%{public}s protocol %{public}s has invalid disconnected callback";
        goto LABEL_99;
      }

      if (v82 != 1)
      {
        v16 = __nwlog_obj();
        v17 = type;
        if (!os_log_type_enabled(v16, type))
        {
          goto LABEL_100;
        }

        v61 = *(a1 + 72);
        v62 = "invalid";
        if (v61)
        {
          v63 = *(v61 + 16);
          if (v63)
          {
            v62 = v63;
          }
        }

        *buf = 136446466;
        v85 = "nw_http_connect_fail";
        v86 = 2082;
        v87 = v62;
        v21 = "%{public}s protocol %{public}s has invalid disconnected callback, backtrace limit exceeded";
        goto LABEL_99;
      }

      v42 = __nw_create_backtrace_string();
      v16 = __nwlog_obj();
      v17 = type;
      v43 = os_log_type_enabled(v16, type);
      if (v42)
      {
        if (v43)
        {
          v44 = *(a1 + 72);
          v45 = "invalid";
          if (v44)
          {
            v46 = *(v44 + 16);
            if (v46)
            {
              v45 = v46;
            }
          }

          *buf = 136446722;
          v85 = "nw_http_connect_fail";
          v86 = 2082;
          v87 = v45;
          v88 = 2082;
          v89 = v42;
          _os_log_impl(&dword_181A37000, v16, v17, "%{public}s protocol %{public}s has invalid disconnected callback, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(v42);
        goto LABEL_100;
      }

      if (v43)
      {
        v72 = *(a1 + 72);
        v73 = "invalid";
        if (v72)
        {
          v74 = *(v72 + 16);
          if (v74)
          {
            v73 = v74;
          }
        }

        *buf = 136446466;
        v85 = "nw_http_connect_fail";
        v86 = 2082;
        v87 = v73;
        v21 = "%{public}s protocol %{public}s has invalid disconnected callback, no backtrace";
LABEL_99:
        _os_log_impl(&dword_181A37000, v16, v17, v21, buf, 0x16u);
      }
    }

LABEL_100:
    if (v15)
    {
      free(v15);
    }

LABEL_11:
    v9 = *(a1 + 56);
    if (v9)
    {
      v10 = *(v9 + 24);
      if (v10)
      {
        v11 = *(v10 + 32);
        if (v11)
        {
          v11(v9, a1 + 24);
          return;
        }
      }
    }

    __nwlog_obj();
    v22 = *(a1 + 56);
    v23 = "invalid";
    if (v22)
    {
      v24 = *(v22 + 16);
      if (v24)
      {
        v23 = v24;
      }
    }

    *buf = 136446466;
    v85 = "nw_http_connect_fail";
    v86 = 2082;
    v87 = v23;
    v25 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v82 = 0;
    if (__nwlog_fault(v25, &type, &v82))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v26 = __nwlog_obj();
        v27 = type;
        if (!os_log_type_enabled(v26, type))
        {
          goto LABEL_108;
        }

        v28 = *(a1 + 56);
        v29 = "invalid";
        if (v28)
        {
          v30 = *(v28 + 16);
          if (v30)
          {
            v29 = v30;
          }
        }

        *buf = 136446466;
        v85 = "nw_http_connect_fail";
        v86 = 2082;
        v87 = v29;
        v31 = "%{public}s protocol %{public}s has invalid disconnect callback";
LABEL_107:
        _os_log_impl(&dword_181A37000, v26, v27, v31, buf, 0x16u);
        goto LABEL_108;
      }

      if (v82 != 1)
      {
        v26 = __nwlog_obj();
        v27 = type;
        if (!os_log_type_enabled(v26, type))
        {
          goto LABEL_108;
        }

        v64 = *(a1 + 56);
        v65 = "invalid";
        if (v64)
        {
          v66 = *(v64 + 16);
          if (v66)
          {
            v65 = v66;
          }
        }

        *buf = 136446466;
        v85 = "nw_http_connect_fail";
        v86 = 2082;
        v87 = v65;
        v31 = "%{public}s protocol %{public}s has invalid disconnect callback, backtrace limit exceeded";
        goto LABEL_107;
      }

      v47 = __nw_create_backtrace_string();
      v26 = __nwlog_obj();
      v27 = type;
      v48 = os_log_type_enabled(v26, type);
      if (!v47)
      {
        if (!v48)
        {
          goto LABEL_108;
        }

        v75 = *(a1 + 56);
        v76 = "invalid";
        if (v75)
        {
          v77 = *(v75 + 16);
          if (v77)
          {
            v76 = v77;
          }
        }

        *buf = 136446466;
        v85 = "nw_http_connect_fail";
        v86 = 2082;
        v87 = v76;
        v31 = "%{public}s protocol %{public}s has invalid disconnect callback, no backtrace";
        goto LABEL_107;
      }

      if (v48)
      {
        v49 = *(a1 + 56);
        v50 = "invalid";
        if (v49)
        {
          v51 = *(v49 + 16);
          if (v51)
          {
            v50 = v51;
          }
        }

        *buf = 136446722;
        v85 = "nw_http_connect_fail";
        v86 = 2082;
        v87 = v50;
        v88 = 2082;
        v89 = v47;
        _os_log_impl(&dword_181A37000, v26, v27, "%{public}s protocol %{public}s has invalid disconnect callback, dumping backtrace:%{public}s", buf, 0x20u);
      }

      free(v47);
    }

LABEL_108:
    if (v25)
    {
      v78 = v25;
LABEL_125:
      free(v78);
      return;
    }

    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v85 = "nw_http_connect_fail";
  v52 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v82 = 0;
  if (__nwlog_fault(v52, &type, &v82))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v53 = __nwlog_obj();
      v54 = type;
      if (!os_log_type_enabled(v53, type))
      {
        goto LABEL_123;
      }

      *buf = 136446210;
      v85 = "nw_http_connect_fail";
      v55 = "%{public}s called with null http_connect";
LABEL_122:
      _os_log_impl(&dword_181A37000, v53, v54, v55, buf, 0xCu);
      goto LABEL_123;
    }

    if (v82 != 1)
    {
      v53 = __nwlog_obj();
      v54 = type;
      if (!os_log_type_enabled(v53, type))
      {
        goto LABEL_123;
      }

      *buf = 136446210;
      v85 = "nw_http_connect_fail";
      v55 = "%{public}s called with null http_connect, backtrace limit exceeded";
      goto LABEL_122;
    }

    v67 = __nw_create_backtrace_string();
    v53 = __nwlog_obj();
    v54 = type;
    v68 = os_log_type_enabled(v53, type);
    if (!v67)
    {
      if (!v68)
      {
        goto LABEL_123;
      }

      *buf = 136446210;
      v85 = "nw_http_connect_fail";
      v55 = "%{public}s called with null http_connect, no backtrace";
      goto LABEL_122;
    }

    if (v68)
    {
      *buf = 136446466;
      v85 = "nw_http_connect_fail";
      v86 = 2082;
      v87 = v67;
      _os_log_impl(&dword_181A37000, v53, v54, "%{public}s called with null http_connect, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v67);
  }

LABEL_123:
  if (v52)
  {
    v78 = v52;
    goto LABEL_125;
  }
}

void ___ZL40nw_http_connect_restart_after_disconnectP24nw_protocol_http_connect_block_invoke_40(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v1 = *(*(*(a1 + 32) + 8) + 24);
  if (!v1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v29 = "nw_http_connect_restart_after_disconnect_block_invoke";
    v11 = _os_log_send_and_compose_impl();
    LOBYTE(v38) = 16;
    v27 = 0;
    if (!__nwlog_fault(v11, &v38, &v27))
    {
      goto LABEL_44;
    }

    if (v38 == 17)
    {
      v12 = __nwlog_obj();
      v13 = v38;
      if (!os_log_type_enabled(v12, v38))
      {
        goto LABEL_44;
      }

      *buf = 136446210;
      v29 = "nw_http_connect_restart_after_disconnect_block_invoke";
      v14 = "%{public}s called with null flow_registration";
    }

    else if (v27 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v13 = v38;
      v21 = os_log_type_enabled(v12, v38);
      if (backtrace_string)
      {
        if (v21)
        {
          *buf = 136446466;
          v29 = "nw_http_connect_restart_after_disconnect_block_invoke";
          v30 = 2082;
          v31 = backtrace_string;
          _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null flow_registration, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_44;
      }

      if (!v21)
      {
LABEL_44:
        if (v11)
        {
          free(v11);
        }

        return;
      }

      *buf = 136446210;
      v29 = "nw_http_connect_restart_after_disconnect_block_invoke";
      v14 = "%{public}s called with null flow_registration, no backtrace";
    }

    else
    {
      v12 = __nwlog_obj();
      v13 = v38;
      if (!os_log_type_enabled(v12, v38))
      {
        goto LABEL_44;
      }

      *buf = 136446210;
      v29 = "nw_http_connect_restart_after_disconnect_block_invoke";
      v14 = "%{public}s called with null flow_registration, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v12, v13, v14, buf, 0xCu);
    goto LABEL_44;
  }

  v38 = 0uLL;
  v3 = v1;
  if (!uuid_is_null(v3 + 32))
  {
    v38 = *(v3 + 2);
  }

  v5 = (a1 + 40);
  v4 = *(a1 + 40);
  v6 = *(v4 + 88);
  v7 = *(v4 + 368);
  if (!v6)
  {
    if ((v7 & 0x80) == 0 && gLogDatapath == 1)
    {
      v22 = __nwlog_obj();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v23 = *v5 + 284;
        v24 = *v5 == 0;
        *buf = 136447234;
        v29 = "nw_http_connect_restart_after_disconnect_block_invoke";
        if (v24)
        {
          v25 = "";
        }

        else
        {
          v25 = v23;
        }

        v30 = 2082;
        v31 = v25;
        if (v24)
        {
          v26 = "";
        }

        else
        {
          v26 = " ";
        }

        v32 = 2080;
        v33 = v26;
        v34 = 1040;
        v35 = 16;
        v36 = 2096;
        v37 = &v38;
        _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sDeferring cleanup of flow registration %{uuid_t}.16P", buf, 0x30u);
      }
    }

    v9 = *(*(*(a1 + 32) + 8) + 24);
    v10 = 88;
    goto LABEL_12;
  }

  if ((v7 & 0x80) == 0 && gLogDatapath == 1)
  {
    v15 = __nwlog_obj();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = *v5 + 284;
      v17 = *v5 == 0;
      *buf = 136447234;
      v29 = "nw_http_connect_restart_after_disconnect_block_invoke";
      if (v17)
      {
        v18 = "";
      }

      else
      {
        v18 = v16;
      }

      v30 = 2082;
      v31 = v18;
      if (v17)
      {
        v19 = "";
      }

      else
      {
        v19 = " ";
      }

      v32 = 2080;
      v33 = v19;
      v34 = 1040;
      v35 = 16;
      v36 = 2096;
      v37 = &v38;
      _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sCleaning up flow registration %{uuid_t}.16P", buf, 0x30u);
    }
  }

  nw_path_flow_registration_close(*(*(*(a1 + 32) + 8) + 24));
  v8 = *(*(*(a1 + 32) + 8) + 24);
  if (v8)
  {
    os_release(v8);
    v9 = 0;
    v5 = (*(a1 + 32) + 8);
    v10 = 24;
LABEL_12:
    *(*v5 + v10) = v9;
  }
}

uint64_t nw_http_connect_reattach_channel_protocol(uint64_t a1)
{
  v64 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *v55 = 136446210;
    *&v55[4] = "nw_http_connect_reattach_channel_protocol";
    v40 = _os_log_send_and_compose_impl();
    uu[0] = 16;
    buf[0] = 0;
    if (!__nwlog_fault(v40, uu, buf))
    {
      goto LABEL_97;
    }

    if (uu[0] == 17)
    {
      v41 = __nwlog_obj();
      v42 = uu[0];
      if (!os_log_type_enabled(v41, uu[0]))
      {
        goto LABEL_97;
      }

      *v55 = 136446210;
      *&v55[4] = "nw_http_connect_reattach_channel_protocol";
      v43 = "%{public}s called with null http_connect";
    }

    else if (buf[0] == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v41 = __nwlog_obj();
      v42 = uu[0];
      v45 = os_log_type_enabled(v41, uu[0]);
      if (backtrace_string)
      {
        if (v45)
        {
          *v55 = 136446466;
          *&v55[4] = "nw_http_connect_reattach_channel_protocol";
          *&v55[12] = 2082;
          *&v55[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v41, v42, "%{public}s called with null http_connect, dumping backtrace:%{public}s", v55, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_97;
      }

      if (!v45)
      {
LABEL_97:
        if (v40)
        {
          free(v40);
        }

        return 0;
      }

      *v55 = 136446210;
      *&v55[4] = "nw_http_connect_reattach_channel_protocol";
      v43 = "%{public}s called with null http_connect, no backtrace";
    }

    else
    {
      v41 = __nwlog_obj();
      v42 = uu[0];
      if (!os_log_type_enabled(v41, uu[0]))
      {
        goto LABEL_97;
      }

      *v55 = 136446210;
      *&v55[4] = "nw_http_connect_reattach_channel_protocol";
      v43 = "%{public}s called with null http_connect, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v41, v42, v43, v55, 0xCu);
    goto LABEL_97;
  }

  protocol_level = nw_path_flow_registration_get_protocol_level(*(a1 + 104), *(a1 + 96));
  v51 = 0;
  *uu = 0;
  v61 = uu;
  v62 = 0x2000000000;
  v63 = 1;
  if (protocol_level > 4)
  {
LABEL_3:
    if ((*(a1 + 368) & 0x80) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v3 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        *&buf[4] = "nw_http_connect_reattach_protocols";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 284;
        v53 = 2080;
        v54 = " ";
        _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sFailed to locate http_connect in protocol stack", buf, 0x20u);
      }
    }

    v61[24] = 0;
    goto LABEL_21;
  }

  v4 = protocol_level;
  v5 = *(a1 + 112);
  v6 = MEMORY[0x1E69E9820];
  *v55 = MEMORY[0x1E69E9820];
  *&v55[8] = 0x40000000;
  *&v55[16] = ___ZL34nw_http_connect_reattach_protocolsP24nw_protocol_http_connect19nw_protocol_level_tS1_PP11nw_protocol_block_invoke;
  v56 = &unk_1E6A31EA0;
  v58 = a1;
  v59 = &v51;
  v57 = uu;
  nw_parameters_internal_iterate_protocol_stack(v5, 4, 0, v55);
  if ((v61[24] & 1) == 0)
  {
    goto LABEL_21;
  }

  if (!v51)
  {
    goto LABEL_3;
  }

  _Block_object_dispose(uu, 8);
  *uu = 0;
  v61 = uu;
  v62 = 0x2000000000;
  v63 = 1;
  if (v4 != 4)
  {
    v7 = *(a1 + 112);
    *v55 = v6;
    *&v55[8] = 0x40000000;
    *&v55[16] = ___ZL34nw_http_connect_reattach_protocolsP24nw_protocol_http_connect19nw_protocol_level_tS1_PP11nw_protocol_block_invoke;
    v56 = &unk_1E6A31EA0;
    v58 = a1;
    v59 = &v51;
    v57 = uu;
    nw_parameters_internal_iterate_protocol_stack(v7, 3, 0, v55);
    if ((v61[24] & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  if (!v51)
  {
    goto LABEL_3;
  }

  _Block_object_dispose(uu, 8);
  *uu = 0;
  v61 = uu;
  v62 = 0x2000000000;
  v63 = 1;
  if (v4 <= 2)
  {
    v8 = *(a1 + 112);
    *v55 = v6;
    *&v55[8] = 0x40000000;
    *&v55[16] = ___ZL34nw_http_connect_reattach_protocolsP24nw_protocol_http_connect19nw_protocol_level_tS1_PP11nw_protocol_block_invoke;
    v56 = &unk_1E6A31EA0;
    v58 = a1;
    v59 = &v51;
    v57 = uu;
    nw_parameters_internal_iterate_protocol_stack(v8, 2, 0, v55);
    if ((v61[24] & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  if (!v51)
  {
    goto LABEL_3;
  }

  _Block_object_dispose(uu, 8);
  *uu = 0;
  v61 = uu;
  v62 = 0x2000000000;
  v63 = 1;
  if (v4 <= 1)
  {
    v9 = *(a1 + 112);
    *v55 = v6;
    *&v55[8] = 0x40000000;
    *&v55[16] = ___ZL34nw_http_connect_reattach_protocolsP24nw_protocol_http_connect19nw_protocol_level_tS1_PP11nw_protocol_block_invoke;
    v56 = &unk_1E6A31EA0;
    v58 = a1;
    v59 = &v51;
    v57 = uu;
    nw_parameters_internal_iterate_protocol_stack(v9, 1, 0, v55);
    if ((v61[24] & 1) == 0)
    {
LABEL_21:
      _Block_object_dispose(uu, 8);
      return 0;
    }
  }

  if (!v51)
  {
    goto LABEL_3;
  }

  _Block_object_dispose(uu, 8);
  *uu = 0;
  v61 = 0;
  v50 = 0;
  if ((nw_path_flow_registration_get_nexus_instance(*(a1 + 104), *(a1 + 96), uu, &v50) & 1) == 0)
  {
    if ((*(a1 + 368) & 0x80) != 0)
    {
      return 0;
    }

    v14 = __nwlog_obj();
    result = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *v55 = 136446722;
      *&v55[4] = "nw_http_connect_reattach_channel_protocol";
      *&v55[12] = 2082;
      *&v55[14] = a1 + 284;
      *&v55[22] = 2080;
      v56 = " ";
      _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sNot restarting after disconnect because nexus is not ready", v55, 0x20u);
      return 0;
    }

    return result;
  }

  *buf = 0;
  *&buf[8] = 0;
  v49 = 0;
  nw_path_flow_registration_get_id(*(a1 + 96), buf);
  v10 = _nw_path_copy_flow_for_registration(*(a1 + 104), buf);
  v11 = v10;
  if (v10)
  {
    nexus_key = nw_path_flow_get_nexus_key(v10, &v49);
  }

  else
  {
    nexus_key = 0;
  }

  v47 = 0;
  v48 = 0;
  HIDWORD(v48) = nw_path_flow_registration_can_support_user_packet_pool(*(a1 + 104), *(a1 + 96));
  if (nw_path_flow_registration_should_use_event_ring(*(a1 + 104), *(a1 + 96)))
  {
    v15 = 2;
  }

  else
  {
    v15 = 0;
  }

  BYTE4(v48) = BYTE4(v48) & 0xFD | v15;
  v47 = nexus_key;
  LODWORD(v48) = 16;
  v16 = nw_path_copy_endpoint(*(a1 + 104));
  v17 = nw_path_copy_parameters(*(a1 + 104));
  v18 = *(a1 + 128);
  if (v18)
  {
    os_release(v18);
    *(a1 + 128) = 0;
  }

  v19 = nw_parameters_copy_context(v17);
  *(a1 + 128) = nw_channel_create_with_attributes(v19, uu, v50, &v47);
  if (v19)
  {
    os_release(v19);
  }

  if (v11)
  {
    os_release(v11);
  }

  v20 = *(a1 + 368);
  if (!*(a1 + 128))
  {
    if ((v20 & 0x80) == 0)
    {
      v25 = __nwlog_obj();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *v55 = 136446722;
        *&v55[4] = "nw_http_connect_reattach_channel_protocol";
        *&v55[12] = 2082;
        *&v55[14] = a1 + 284;
        *&v55[22] = 2080;
        v56 = " ";
        _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sNot restarting after disconnect because failed to open channel", v55, 0x20u);
      }
    }

    if (v16)
    {
      os_release(v16);
    }

    result = 0;
    if (v17)
    {
      goto LABEL_82;
    }

    return result;
  }

  if ((v20 & 0x80) == 0)
  {
    v21 = __nwlog_obj();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      *v55 = 136446978;
      *&v55[4] = "nw_http_connect_reattach_channel_protocol";
      *&v55[12] = 2082;
      *&v55[14] = a1 + 284;
      *&v55[22] = 2080;
      v56 = " ";
      LOWORD(v57) = 1024;
      *(&v57 + 2) = v4;
      _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sopened channel at level %u", v55, 0x26u);
    }
  }

  nw_channel_set_close_automatically(*(a1 + 128), 1);
  nw_channel_set_defer_input_available(*(a1 + 128), 1);
  nw_channel_set_protocol_level(*(a1 + 128), v4);
  if (v4 == 2)
  {
    if (nw_protocol_ip_identifier::onceToken != -1)
    {
      dispatch_once(&nw_protocol_ip_identifier::onceToken, &__block_literal_global_90960);
    }

    if (nw_parameters_has_protocol_in_stack(v17, &nw_protocol_ip_identifier::identifier) && v16 && nw_endpoint_get_type(v16) == nw_endpoint_type_address)
    {
      if (nw_endpoint_get_address_family(v16) == 2)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      v23 = *(a1 + 96);
      if (nw_protocol_ip_identifier::onceToken != -1)
      {
        v46 = v22;
        dispatch_once(&nw_protocol_ip_identifier::onceToken, &__block_literal_global_90960);
        v22 = v46;
      }

      stats_region = nw_channel_get_stats_region(*(a1 + 128), v22);
      nw_path_flow_registration_set_stats_region(v23, 2, &nw_protocol_ip_identifier::identifier, stats_region);
    }
  }

  else if ((v4 & 0xFFFFFFFE) != 2)
  {
    goto LABEL_72;
  }

  v26 = nw_protocol_tcp_identifier();
  if (!nw_parameters_has_protocol_in_stack(v17, v26))
  {
    if (nw_protocol_udp_identifier::onceToken != -1)
    {
      dispatch_once(&nw_protocol_udp_identifier::onceToken, &__block_literal_global_87);
    }

    if (nw_parameters_has_protocol_in_stack(v17, &nw_protocol_udp_identifier::identifier))
    {
      v32 = *(a1 + 96);
      if (nw_protocol_udp_identifier::onceToken == -1)
      {
        goto LABEL_70;
      }
    }

    else
    {
      if (nw_parameters_get_upper_transport_protocol(v17) != 253)
      {
        goto LABEL_72;
      }

      upper_transport_protocol_identifier = nw_parameters_get_upper_transport_protocol_identifier(v17);
      v34 = *(a1 + 96);
      v35 = nw_channel_get_stats_region(*(a1 + 128), 5);
      nw_path_flow_registration_set_stats_region(v34, 3, upper_transport_protocol_identifier, v35);
      v32 = *(a1 + 96);
      if (nw_protocol_udp_identifier::onceToken == -1)
      {
        goto LABEL_70;
      }
    }

    dispatch_once(&nw_protocol_udp_identifier::onceToken, &__block_literal_global_87);
LABEL_70:
    v29 = nw_channel_get_stats_region(*(a1 + 128), 4);
    v31 = &nw_protocol_udp_identifier::identifier;
    v30 = v32;
    goto LABEL_71;
  }

  v27 = *(a1 + 96);
  v28 = nw_protocol_tcp_identifier();
  v29 = nw_channel_get_stats_region(*(a1 + 128), 3);
  v30 = v27;
  v31 = v28;
LABEL_71:
  nw_path_flow_registration_set_stats_region(v30, 3, v31, v29);
LABEL_72:
  protocol_handler = nw_channel_get_protocol_handler(*(a1 + 128));
  result = (**(protocol_handler + 24))();
  if (!result)
  {
    goto LABEL_79;
  }

  if (nw_channel_set_path_flow_registration(*(a1 + 128), *(a1 + 104), *(a1 + 96)))
  {
    nw_channel_set_keep_path_flow_registration_open(*(a1 + 128), *(a1 + 96));
    result = 1;
    goto LABEL_79;
  }

  if ((*(a1 + 368) & 0x80) == 0)
  {
    v37 = __nwlog_obj();
    result = os_log_type_enabled(v37, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_79;
    }

    *v55 = 136446722;
    *&v55[4] = "nw_http_connect_reattach_channel_protocol";
    *&v55[12] = 2082;
    *&v55[14] = a1 + 284;
    *&v55[22] = 2080;
    v56 = " ";
    _os_log_impl(&dword_181A37000, v37, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sNot restarting after disconnect because unable to set path flow registration", v55, 0x20u);
  }

  result = 0;
LABEL_79:
  if (v16)
  {
    v38 = result;
    os_release(v16);
    result = v38;
  }

  if (v17)
  {
LABEL_82:
    v39 = result;
    os_release(v17);
    return v39;
  }

  return result;
}

uint64_t ___ZL34nw_http_connect_reattach_protocolsP24nw_protocol_http_connect19nw_protocol_level_tS1_PP11nw_protocol_block_invoke(uint64_t a1, uint64_t a2, char *a3, void *a4)
{
  v64 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 40);
  if (!v7 || (*(v7 + 368) & 0x80) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a1 + 40);
      v10 = v9 == 0;
      if (v9)
      {
        v11 = (v9 + 284);
      }

      else
      {
        v11 = "";
      }

      *buf = 136446978;
      v57 = "nw_http_connect_reattach_protocols_block_invoke";
      v58 = 2082;
      v59 = v11;
      if (v10)
      {
        v12 = "";
      }

      else
      {
        v12 = " ";
      }

      v60 = 2080;
      v61 = v12;
      v62 = 2114;
      v63 = a3;
      _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sEnumerating protocol: %{public}@", buf, 0x2Au);
    }
  }

  v13 = **(a1 + 48);
  if (!v13)
  {
    if (nw_proxy_copy_http_connect_definition::onceToken != -1)
    {
      dispatch_once(&nw_proxy_copy_http_connect_definition::onceToken, &__block_literal_global_102);
    }

    if (nw_protocol_definition_is_equal_unsafe(a3, nw_proxy_copy_http_connect_definition::proxy_definition))
    {
      v29 = *(a1 + 40);
      if (!v29 || (*(v29 + 368) & 0x80) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v30 = gLogObj;
        v31 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG);
        v29 = *(a1 + 40);
        if (v31)
        {
          v32 = v29 == 0;
          if (v29)
          {
            v33 = (v29 + 284);
          }

          else
          {
            v33 = "";
          }

          *buf = 136446978;
          v57 = "nw_http_connect_reattach_protocols_block_invoke";
          v58 = 2082;
          v59 = v33;
          v34 = " ";
          if (v32)
          {
            v34 = "";
          }

          v60 = 2080;
          v61 = v34;
          v62 = 2114;
          v63 = a3;
          _os_log_impl(&dword_181A37000, v30, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sRebuilding stack under protocol: %{public}@", buf, 0x2Au);
          v29 = *(a1 + 40);
        }
      }

      **(a1 + 48) = v29 + 24;
    }

    return 1;
  }

  v14 = *(a1 + 40);
  if (!v14)
  {
    __nwlog_obj();
    *buf = 136446210;
    v57 = "nw_http_connect_reattach_protocol";
    v44 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v54 = 0;
    if (!__nwlog_fault(v44, &type, &v54))
    {
      goto LABEL_107;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v45 = __nwlog_obj();
      v46 = type;
      if (!os_log_type_enabled(v45, type))
      {
        goto LABEL_107;
      }

      *buf = 136446210;
      v57 = "nw_http_connect_reattach_protocol";
      v47 = "%{public}s called with null http_connect";
    }

    else if (v54 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v45 = __nwlog_obj();
      v46 = type;
      v49 = os_log_type_enabled(v45, type);
      if (backtrace_string)
      {
        if (v49)
        {
          *buf = 136446466;
          v57 = "nw_http_connect_reattach_protocol";
          v58 = 2082;
          v59 = backtrace_string;
          _os_log_impl(&dword_181A37000, v45, v46, "%{public}s called with null http_connect, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_107:
        if (!v44)
        {
          goto LABEL_52;
        }

LABEL_108:
        free(v44);
        goto LABEL_52;
      }

      if (!v49)
      {
        goto LABEL_107;
      }

      *buf = 136446210;
      v57 = "nw_http_connect_reattach_protocol";
      v47 = "%{public}s called with null http_connect, no backtrace";
    }

    else
    {
      v45 = __nwlog_obj();
      v46 = type;
      if (!os_log_type_enabled(v45, type))
      {
        goto LABEL_107;
      }

      *buf = 136446210;
      v57 = "nw_http_connect_reattach_protocol";
      v47 = "%{public}s called with null http_connect, backtrace limit exceeded";
    }

    goto LABEL_106;
  }

  if (!a3)
  {
    __nwlog_obj();
    *buf = 136446210;
    v57 = "nw_http_connect_reattach_protocol";
    v44 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v54 = 0;
    if (!__nwlog_fault(v44, &type, &v54))
    {
      goto LABEL_107;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v54 != 1)
      {
        v45 = __nwlog_obj();
        v46 = type;
        if (!os_log_type_enabled(v45, type))
        {
          goto LABEL_107;
        }

        *buf = 136446210;
        v57 = "nw_http_connect_reattach_protocol";
        v47 = "%{public}s called with null definition, backtrace limit exceeded";
        goto LABEL_106;
      }

      v50 = __nw_create_backtrace_string();
      v45 = __nwlog_obj();
      v46 = type;
      v51 = os_log_type_enabled(v45, type);
      if (!v50)
      {
        if (!v51)
        {
          goto LABEL_107;
        }

        *buf = 136446210;
        v57 = "nw_http_connect_reattach_protocol";
        v47 = "%{public}s called with null definition, no backtrace";
        goto LABEL_106;
      }

      if (v51)
      {
        *buf = 136446466;
        v57 = "nw_http_connect_reattach_protocol";
        v58 = 2082;
        v59 = v50;
        v52 = "%{public}s called with null definition, dumping backtrace:%{public}s";
LABEL_91:
        _os_log_impl(&dword_181A37000, v45, v46, v52, buf, 0x16u);
      }

LABEL_92:
      free(v50);
      if (!v44)
      {
        goto LABEL_52;
      }

      goto LABEL_108;
    }

    v45 = __nwlog_obj();
    v46 = type;
    if (!os_log_type_enabled(v45, type))
    {
      goto LABEL_107;
    }

    *buf = 136446210;
    v57 = "nw_http_connect_reattach_protocol";
    v47 = "%{public}s called with null definition";
LABEL_106:
    _os_log_impl(&dword_181A37000, v45, v46, v47, buf, 0xCu);
    goto LABEL_107;
  }

  if (!a4)
  {
    __nwlog_obj();
    *buf = 136446210;
    v57 = "nw_http_connect_reattach_protocol";
    v44 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v54 = 0;
    if (!__nwlog_fault(v44, &type, &v54))
    {
      goto LABEL_107;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v45 = __nwlog_obj();
      v46 = type;
      if (!os_log_type_enabled(v45, type))
      {
        goto LABEL_107;
      }

      *buf = 136446210;
      v57 = "nw_http_connect_reattach_protocol";
      v47 = "%{public}s called with null protocol_parameters";
      goto LABEL_106;
    }

    if (v54 != 1)
    {
      v45 = __nwlog_obj();
      v46 = type;
      if (!os_log_type_enabled(v45, type))
      {
        goto LABEL_107;
      }

      *buf = 136446210;
      v57 = "nw_http_connect_reattach_protocol";
      v47 = "%{public}s called with null protocol_parameters, backtrace limit exceeded";
      goto LABEL_106;
    }

    v50 = __nw_create_backtrace_string();
    v45 = __nwlog_obj();
    v46 = type;
    v53 = os_log_type_enabled(v45, type);
    if (!v50)
    {
      if (!v53)
      {
        goto LABEL_107;
      }

      *buf = 136446210;
      v57 = "nw_http_connect_reattach_protocol";
      v47 = "%{public}s called with null protocol_parameters, no backtrace";
      goto LABEL_106;
    }

    if (v53)
    {
      *buf = 136446466;
      v57 = "nw_http_connect_reattach_protocol";
      v58 = 2082;
      v59 = v50;
      v52 = "%{public}s called with null protocol_parameters, dumping backtrace:%{public}s";
      goto LABEL_91;
    }

    goto LABEL_92;
  }

  v15 = a3;

  internal = nw_protocol_create_internal(v15 + 8, *(v14 + 120), *(v14 + 112), 1);
  if (internal)
  {
    v17 = internal;
    v18 = a4;
    _nw_protocol_options_set_instance(v18, v17);

    v19 = v17[3];
    if (v19 && (v20 = *v19) != 0)
    {
      v21 = v20(v17, v13);
      v22 = v21;
      if (*(v14 + 56))
      {
        if (v21)
        {
          goto LABEL_20;
        }
      }

      else
      {
        nw_protocol_set_output_handler(v14 + 24, v17);
        if (v22)
        {
LABEL_20:
          **(a1 + 48) = v17;
          v23 = *(a1 + 40);
          if (!v23 || (*(v23 + 368) & 0x80) == 0)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v24 = gLogObj;
            if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
            {
              v25 = *(a1 + 40);
              v26 = v25 == 0;
              if (v25)
              {
                v27 = (v25 + 284);
              }

              else
              {
                v27 = "";
              }

              *buf = 136446978;
              v57 = "nw_http_connect_reattach_protocols_block_invoke";
              v58 = 2082;
              v59 = v27;
              if (v26)
              {
                v28 = "";
              }

              else
              {
                v28 = " ";
              }

              v60 = 2080;
              v61 = v28;
              v62 = 2114;
              v63 = v15;
              _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sAttached protocol: %{public}@", buf, 0x2Au);
            }
          }

          return 1;
        }
      }

      if ((*(v14 + 368) & 0x80) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v36 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446978;
          v57 = "nw_http_connect_reattach_protocol";
          v58 = 2082;
          v59 = (v14 + 284);
          v60 = 2080;
          v61 = " ";
          v62 = 2114;
          v63 = v15;
          v37 = "%{public}s %{public}s%sCould not add input handler for %{public}@";
          goto LABEL_51;
        }
      }
    }

    else if ((*(v14 + 368) & 0x80) == 0)
    {
      v36 = __nwlog_obj();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        v57 = "nw_http_connect_reattach_protocol";
        v58 = 2082;
        v59 = (v14 + 284);
        v60 = 2080;
        v61 = " ";
        v62 = 2114;
        v63 = v15;
        v37 = "%{public}s %{public}s%sCannot call add input handler for %{public}@ because it is not valid";
        goto LABEL_51;
      }
    }
  }

  else if ((*(v14 + 368) & 0x80) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v36 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v57 = "nw_http_connect_reattach_protocol";
      v58 = 2082;
      v59 = (v14 + 284);
      v60 = 2080;
      v61 = " ";
      v62 = 2114;
      v63 = v15;
      v37 = "%{public}s %{public}s%sPath could not create protocol for %{public}@";
LABEL_51:
      _os_log_impl(&dword_181A37000, v36, OS_LOG_TYPE_ERROR, v37, buf, 0x2Au);
    }
  }

LABEL_52:
  v38 = *(a1 + 40);
  if (!v38 || (*(v38 + 368) & 0x80) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v39 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      v40 = *(a1 + 40);
      v41 = v40 == 0;
      if (v40)
      {
        v42 = (v40 + 284);
      }

      else
      {
        v42 = "";
      }

      *buf = 136446978;
      v57 = "nw_http_connect_reattach_protocols_block_invoke";
      v58 = 2082;
      v59 = v42;
      if (v41)
      {
        v43 = "";
      }

      else
      {
        v43 = " ";
      }

      v60 = 2080;
      v61 = v43;
      v62 = 2114;
      v63 = a3;
      _os_log_impl(&dword_181A37000, v39, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sFailed to attach protocol %{public}@", buf, 0x2Au);
    }
  }

  result = 0;
  *(*(*(a1 + 32) + 8) + 24) = 0;
  return result;
}

BOOL nw_http_connect_in_async(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 276) != 0;
  }

  __nwlog_obj();
  *buf = 136446210;
  v11 = "nw_http_connect_in_async";
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
        v11 = "nw_http_connect_in_async";
        v5 = "%{public}s called with null http_connect";
LABEL_17:
        _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
      }
    }

    else if (v8 == 1)
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
          v11 = "nw_http_connect_in_async";
          v12 = 2082;
          v13 = backtrace_string;
          _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null http_connect, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_18;
      }

      if (v7)
      {
        *buf = 136446210;
        v11 = "nw_http_connect_in_async";
        v5 = "%{public}s called with null http_connect, no backtrace";
        goto LABEL_17;
      }
    }

    else
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (os_log_type_enabled(v3, type))
      {
        *buf = 136446210;
        v11 = "nw_http_connect_in_async";
        v5 = "%{public}s called with null http_connect, backtrace limit exceeded";
        goto LABEL_17;
      }
    }
  }

LABEL_18:
  if (v2)
  {
    free(v2);
  }

  return 0;
}

void nw_http_connect_finalize_request(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    _CFHTTPAuthenticationApplyProxyAuthorizationToRequest();
    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v10 = "nw_http_connect_finalize_request";
  v1 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v7 = 0;
  if (__nwlog_fault(v1, &type, &v7))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v2 = __nwlog_obj();
      v3 = type;
      if (!os_log_type_enabled(v2, type))
      {
        goto LABEL_19;
      }

      *buf = 136446210;
      v10 = "nw_http_connect_finalize_request";
      v4 = "%{public}s called with null http_connect";
      goto LABEL_18;
    }

    if (v7 != 1)
    {
      v2 = __nwlog_obj();
      v3 = type;
      if (!os_log_type_enabled(v2, type))
      {
        goto LABEL_19;
      }

      *buf = 136446210;
      v10 = "nw_http_connect_finalize_request";
      v4 = "%{public}s called with null http_connect, backtrace limit exceeded";
      goto LABEL_18;
    }

    backtrace_string = __nw_create_backtrace_string();
    v2 = __nwlog_obj();
    v3 = type;
    v6 = os_log_type_enabled(v2, type);
    if (backtrace_string)
    {
      if (v6)
      {
        *buf = 136446466;
        v10 = "nw_http_connect_finalize_request";
        v11 = 2082;
        v12 = backtrace_string;
        _os_log_impl(&dword_181A37000, v2, v3, "%{public}s called with null http_connect, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_19;
    }

    if (v6)
    {
      *buf = 136446210;
      v10 = "nw_http_connect_finalize_request";
      v4 = "%{public}s called with null http_connect, no backtrace";
LABEL_18:
      _os_log_impl(&dword_181A37000, v2, v3, v4, buf, 0xCu);
    }
  }

LABEL_19:
  if (v1)
  {
    free(v1);
  }
}

void nw_protocol_http_connect_connected(nw_protocol *a1, nw_protocol *a2)
{
  v143 = *MEMORY[0x1E69E9840];
  if (gLogDatapath == 1)
  {
    v60 = a1;
    v61 = a2;
    v62 = __nwlog_obj();
    v63 = os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG);
    a2 = v61;
    v64 = v63;
    a1 = v60;
    if (v64)
    {
      *buf = 136446210;
      v133 = "nw_protocol_http_connect_connected";
      _os_log_impl(&dword_181A37000, v62, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
      a2 = v61;
      a1 = v60;
    }
  }

  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v133 = "nw_protocol_http_connect_connected";
    v32 = _os_log_send_and_compose_impl();
    uu[0] = 16;
    LOBYTE(v140) = 0;
    if (!__nwlog_fault(v32, uu, &v140))
    {
      goto LABEL_61;
    }

    if (uu[0] == 17)
    {
      v65 = __nwlog_obj();
      v66 = uu[0];
      if (!os_log_type_enabled(v65, uu[0]))
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      v133 = "nw_protocol_http_connect_connected";
      v35 = "%{public}s called with null protocol";
      goto LABEL_197;
    }

    if (v140 != 1)
    {
      v65 = __nwlog_obj();
      v66 = uu[0];
      if (!os_log_type_enabled(v65, uu[0]))
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      v133 = "nw_protocol_http_connect_connected";
      v35 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_197;
    }

    backtrace_string = __nw_create_backtrace_string();
    v65 = __nwlog_obj();
    v66 = uu[0];
    v76 = os_log_type_enabled(v65, uu[0]);
    if (!backtrace_string)
    {
      if (!v76)
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      v133 = "nw_protocol_http_connect_connected";
      v35 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_197;
    }

    if (!v76)
    {
      goto LABEL_136;
    }

    *buf = 136446466;
    v133 = "nw_protocol_http_connect_connected";
    v134 = 2082;
    v135 = backtrace_string;
    v72 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
    goto LABEL_134;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    v133 = "nw_protocol_http_connect_connected";
    v32 = _os_log_send_and_compose_impl();
    uu[0] = 16;
    LOBYTE(v140) = 0;
    if (!__nwlog_fault(v32, uu, &v140))
    {
      goto LABEL_61;
    }

    if (uu[0] == 17)
    {
      v65 = __nwlog_obj();
      v66 = uu[0];
      if (!os_log_type_enabled(v65, uu[0]))
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      v133 = "nw_protocol_http_connect_connected";
      v35 = "%{public}s called with null http_connect";
      goto LABEL_197;
    }

    if (v140 != 1)
    {
      v65 = __nwlog_obj();
      v66 = uu[0];
      if (!os_log_type_enabled(v65, uu[0]))
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      v133 = "nw_protocol_http_connect_connected";
      v35 = "%{public}s called with null http_connect, backtrace limit exceeded";
      goto LABEL_197;
    }

    backtrace_string = __nw_create_backtrace_string();
    v65 = __nwlog_obj();
    v66 = uu[0];
    v77 = os_log_type_enabled(v65, uu[0]);
    if (!backtrace_string)
    {
      if (!v77)
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      v133 = "nw_protocol_http_connect_connected";
      v35 = "%{public}s called with null http_connect, no backtrace";
      goto LABEL_197;
    }

    if (!v77)
    {
      goto LABEL_136;
    }

    *buf = 136446466;
    v133 = "nw_protocol_http_connect_connected";
    v134 = 2082;
    v135 = backtrace_string;
    v72 = "%{public}s called with null http_connect, dumping backtrace:%{public}s";
LABEL_134:
    v73 = v65;
    v74 = v66;
    v75 = 22;
LABEL_135:
    _os_log_impl(&dword_181A37000, v73, v74, v72, buf, v75);
LABEL_136:
    free(backtrace_string);
    if (v32)
    {
      goto LABEL_62;
    }

    return;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v133 = "nw_protocol_http_connect_connected";
    v32 = _os_log_send_and_compose_impl();
    uu[0] = 16;
    LOBYTE(v140) = 0;
    if (!__nwlog_fault(v32, uu, &v140))
    {
      goto LABEL_61;
    }

    if (uu[0] == 17)
    {
      v65 = __nwlog_obj();
      v66 = uu[0];
      if (!os_log_type_enabled(v65, uu[0]))
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      v133 = "nw_protocol_http_connect_connected";
      v35 = "%{public}s called with null other_protocol";
      goto LABEL_197;
    }

    if (v140 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v65 = __nwlog_obj();
      v66 = uu[0];
      v78 = os_log_type_enabled(v65, uu[0]);
      if (backtrace_string)
      {
        if (!v78)
        {
          goto LABEL_136;
        }

        *buf = 136446466;
        v133 = "nw_protocol_http_connect_connected";
        v134 = 2082;
        v135 = backtrace_string;
        v72 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
        goto LABEL_134;
      }

      if (!v78)
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      v133 = "nw_protocol_http_connect_connected";
      v35 = "%{public}s called with null other_protocol, no backtrace";
    }

    else
    {
      v65 = __nwlog_obj();
      v66 = uu[0];
      if (!os_log_type_enabled(v65, uu[0]))
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      v133 = "nw_protocol_http_connect_connected";
      v35 = "%{public}s called with null other_protocol, backtrace limit exceeded";
    }

LABEL_197:
    v40 = v65;
    v41 = v66;
    v42 = 12;
    goto LABEL_60;
  }

  if (a1->output_handler == a2)
  {
    v6 = *(handle + 184);
    *(handle + 184) = v6 | 0x10;
    v7 = *(handle + 70);
    if (v7 <= 1)
    {
      if (v7)
      {
        if (v7 != 1)
        {
          return;
        }

        v8 = *(handle + 26);
        if (!v8 || (v6 & 8) != 0)
        {
          return;
        }

        v9 = handle;
        goto LABEL_99;
      }

      if ((v6 & 1) == 0)
      {
        goto LABEL_95;
      }

      path = nw_protocol_http_connect_get_path((handle + 24));
      if (path)
      {
        v18 = path;
        v19 = _nw_path_copy_parameters(v18);

        if (v19)
        {
          v20 = _nw_parameters_copy_context(v19);
          if (v20)
          {
            v21 = v20;
            v22 = nw_path_copy_flow_registration(v20, (handle + 24));
            if (!v22)
            {
              if ((*(handle + 184) & 0x80) == 0)
              {
                v44 = __nwlog_obj();
                if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136446722;
                  v133 = "nw_http_connect_keep_path_flow_registration_open";
                  v134 = 2082;
                  v135 = handle + 284;
                  v136 = 2080;
                  v137 = " ";
                  _os_log_impl(&dword_181A37000, v44, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sUnable to copy flow registration", buf, 0x20u);
                }
              }

              goto LABEL_94;
            }

            v23 = v22;
            *uu = 0;
            v142 = 0;
            v131 = 0;
            if (nw_path_flow_registration_get_nexus_instance(v18, v22, uu, &v131))
            {
              v140 = 0uLL;
              v130 = 0;
              nw_path_flow_registration_get_id(v23, &v140);
              v24 = _nw_path_copy_flow_for_registration(v18, &v140);
              if (v24)
              {
                v25 = v24;
                nexus_key = nw_path_flow_get_nexus_key(v24, &v130);
                v129 = 16;
                can_support_user_packet_pool = nw_path_flow_registration_can_support_user_packet_pool(v18, v23);
                if (nw_path_flow_registration_should_use_event_ring(v18, v23))
                {
                  v28 = 2;
                }

                else
                {
                  v28 = 0;
                }

                BYTE4(v129) = v28 | can_support_user_packet_pool;
                v128 = nexus_key;
                v29 = nw_channel_create_with_attributes(v21, uu, v131, &v128);
                if (v29)
                {
                  v30 = v29;
                  nw_channel_set_keep_path_flow_registration_open(v29, v23);
                  os_release(v30);
                }

                else if ((*(handle + 184) & 0x80) == 0)
                {
                  v57 = __nwlog_obj();
                  if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136446722;
                    v133 = "nw_http_connect_keep_path_flow_registration_open";
                    v134 = 2082;
                    v135 = handle + 284;
                    v136 = 2080;
                    v137 = " ";
                    _os_log_impl(&dword_181A37000, v57, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sUnable to get channel", buf, 0x20u);
                  }
                }

                os_release(v23);
                v47 = v25;
                goto LABEL_93;
              }

              if ((*(handle + 184) & 0x80) != 0 || (v45 = __nwlog_obj(), !os_log_type_enabled(v45, OS_LOG_TYPE_ERROR)))
              {
LABEL_78:
                v47 = v23;
LABEL_93:
                os_release(v47);
LABEL_94:
                os_release(v21);
                os_release(v19);
                goto LABEL_95;
              }

              *buf = 136446722;
              v133 = "nw_http_connect_keep_path_flow_registration_open";
              v134 = 2082;
              v135 = handle + 284;
              v136 = 2080;
              v137 = " ";
              v46 = "%{public}s %{public}s%sUnable to copy flow from registration id";
            }

            else
            {
              if ((*(handle + 184) & 0x80) != 0)
              {
                goto LABEL_78;
              }

              v45 = __nwlog_obj();
              if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_78;
              }

              *buf = 136446722;
              v133 = "nw_http_connect_keep_path_flow_registration_open";
              v134 = 2082;
              v135 = handle + 284;
              v136 = 2080;
              v137 = " ";
              v46 = "%{public}s %{public}s%sUnable to get nexus instance";
            }

            _os_log_impl(&dword_181A37000, v45, OS_LOG_TYPE_ERROR, v46, buf, 0x20u);
            goto LABEL_78;
          }

          os_release(v19);
          if ((*(handle + 184) & 0x80) == 0)
          {
            v38 = __nwlog_obj();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446722;
              v133 = "nw_http_connect_keep_path_flow_registration_open";
              v134 = 2082;
              v135 = handle + 284;
              v136 = 2080;
              v137 = " ";
              v39 = "%{public}s %{public}s%sUnable to get context";
              goto LABEL_67;
            }
          }

LABEL_95:
          v58 = mach_continuous_time();
          if (v58 <= 1)
          {
            v59 = 1;
          }

          else
          {
            v59 = v58;
          }

          *handle = v59;
          *(handle + 70) = 1;
          v9 = handle;
          v8 = 0;
LABEL_99:
          if ((nw_http_connect_send_request(v9, v8) & 1) == 0)
          {
            nw_http_connect_fail(handle, 22);
          }

          return;
        }

        if ((*(handle + 184) & 0x80) != 0)
        {
          goto LABEL_95;
        }

        v38 = __nwlog_obj();
        if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_95;
        }

        *buf = 136446722;
        v133 = "nw_http_connect_keep_path_flow_registration_open";
        v134 = 2082;
        v135 = handle + 284;
        v136 = 2080;
        v137 = " ";
        v39 = "%{public}s %{public}s%sUnable to get parameters";
      }

      else
      {
        if ((*(handle + 184) & 0x80) != 0)
        {
          goto LABEL_95;
        }

        v38 = __nwlog_obj();
        if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_95;
        }

        *buf = 136446722;
        v133 = "nw_http_connect_keep_path_flow_registration_open";
        v134 = 2082;
        v135 = handle + 284;
        v136 = 2080;
        v137 = " ";
        v39 = "%{public}s %{public}s%sUnable to get path";
      }

LABEL_67:
      _os_log_impl(&dword_181A37000, v38, OS_LOG_TYPE_ERROR, v39, buf, 0x20u);
      goto LABEL_95;
    }

    if (v7 == 3)
    {
      if ((v6 & 0x80) != 0)
      {
        return;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v31 = handle + 284;
      *buf = 136446722;
      v133 = "nw_protocol_http_connect_connected";
      v134 = 2082;
      v135 = handle + 284;
      v136 = 2080;
      v137 = " ";
      v32 = _os_log_send_and_compose_impl();
      uu[0] = 16;
      LOBYTE(v140) = 0;
      if (!__nwlog_fault(v32, uu, &v140))
      {
        goto LABEL_61;
      }

      if (uu[0] == 17)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v33 = gLogObj;
        v34 = uu[0];
        if (!os_log_type_enabled(gLogObj, uu[0]))
        {
          goto LABEL_61;
        }

        *buf = 136446722;
        v133 = "nw_protocol_http_connect_connected";
        v134 = 2082;
        v135 = v31;
        v136 = 2080;
        v137 = " ";
        v35 = "%{public}s %{public}s%shttp connect state is failed";
      }

      else if (v140 == 1)
      {
        v36 = __nw_create_backtrace_string();
        v33 = __nwlog_obj();
        v34 = uu[0];
        v37 = os_log_type_enabled(v33, uu[0]);
        if (v36)
        {
          if (v37)
          {
            *buf = 136446978;
            v133 = "nw_protocol_http_connect_connected";
            v134 = 2082;
            v135 = v31;
            v136 = 2080;
            v137 = " ";
            v138 = 2082;
            v139 = v36;
            _os_log_impl(&dword_181A37000, v33, v34, "%{public}s %{public}s%shttp connect state is failed, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v36);
          goto LABEL_61;
        }

        if (!v37)
        {
          goto LABEL_61;
        }

        *buf = 136446722;
        v133 = "nw_protocol_http_connect_connected";
        v134 = 2082;
        v135 = v31;
        v136 = 2080;
        v137 = " ";
        v35 = "%{public}s %{public}s%shttp connect state is failed, no backtrace";
      }

      else
      {
        v33 = __nwlog_obj();
        v34 = uu[0];
        if (!os_log_type_enabled(v33, uu[0]))
        {
          goto LABEL_61;
        }

        *buf = 136446722;
        v133 = "nw_protocol_http_connect_connected";
        v134 = 2082;
        v135 = v31;
        v136 = 2080;
        v137 = " ";
        v35 = "%{public}s %{public}s%shttp connect state is failed, backtrace limit exceeded";
      }

      v40 = v33;
      v41 = v34;
      v42 = 32;
LABEL_60:
      _os_log_impl(&dword_181A37000, v40, v41, v35, buf, v42);
      goto LABEL_61;
    }

    if (v7 != 2)
    {
      return;
    }

    default_input_handler = a1->default_input_handler;
    if (default_input_handler)
    {
      callbacks = default_input_handler->callbacks;
      if (callbacks)
      {
        connected = callbacks->connected;
        if (connected)
        {
          v13 = a1;
          connected(a1->default_input_handler, a1->output_handler);
          goto LABEL_23;
        }
      }
    }

    v82 = a1;
    __nwlog_obj();
    v13 = v82;
    v83 = v82->default_input_handler;
    v84 = "invalid";
    if (v83)
    {
      name = v83->identifier->name;
      if (name)
      {
        v84 = name;
      }
    }

    *buf = 136446466;
    v133 = "nw_protocol_http_connect_connected";
    v134 = 2082;
    v135 = v84;
    v86 = _os_log_send_and_compose_impl();
    uu[0] = 16;
    LOBYTE(v140) = 0;
    if (__nwlog_fault(v86, uu, &v140))
    {
      if (uu[0] == 17)
      {
        v87 = __nwlog_obj();
        v88 = uu[0];
        if (!os_log_type_enabled(v87, uu[0]))
        {
          goto LABEL_214;
        }

        v89 = v13->default_input_handler;
        v90 = "invalid";
        if (v89)
        {
          v91 = v89->identifier->name;
          if (v91)
          {
            v90 = v91;
          }
        }

        *buf = 136446466;
        v133 = "nw_protocol_http_connect_connected";
        v134 = 2082;
        v135 = v90;
        v92 = "%{public}s protocol %{public}s has invalid connected callback";
        goto LABEL_213;
      }

      if (v140 != 1)
      {
        v87 = __nwlog_obj();
        v88 = uu[0];
        if (!os_log_type_enabled(v87, uu[0]))
        {
          goto LABEL_214;
        }

        v116 = v13->default_input_handler;
        v117 = "invalid";
        if (v116)
        {
          v118 = v116->identifier->name;
          if (v118)
          {
            v117 = v118;
          }
        }

        *buf = 136446466;
        v133 = "nw_protocol_http_connect_connected";
        v134 = 2082;
        v135 = v117;
        v92 = "%{public}s protocol %{public}s has invalid connected callback, backtrace limit exceeded";
        goto LABEL_213;
      }

      v106 = __nw_create_backtrace_string();
      v87 = __nwlog_obj();
      v88 = uu[0];
      v107 = os_log_type_enabled(v87, uu[0]);
      if (v106)
      {
        if (v107)
        {
          v108 = v13->default_input_handler;
          v109 = "invalid";
          if (v108)
          {
            v110 = v108->identifier->name;
            if (v110)
            {
              v109 = v110;
            }
          }

          *buf = 136446722;
          v133 = "nw_protocol_http_connect_connected";
          v134 = 2082;
          v135 = v109;
          v136 = 2082;
          v137 = v106;
          _os_log_impl(&dword_181A37000, v87, v88, "%{public}s protocol %{public}s has invalid connected callback, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(v106);
        goto LABEL_214;
      }

      if (v107)
      {
        v122 = v13->default_input_handler;
        v123 = "invalid";
        if (v122)
        {
          v124 = v122->identifier->name;
          if (v124)
          {
            v123 = v124;
          }
        }

        *buf = 136446466;
        v133 = "nw_protocol_http_connect_connected";
        v134 = 2082;
        v135 = v123;
        v92 = "%{public}s protocol %{public}s has invalid connected callback, no backtrace";
LABEL_213:
        _os_log_impl(&dword_181A37000, v87, v88, v92, buf, 0x16u);
      }
    }

LABEL_214:
    if (v86)
    {
      free(v86);
    }

LABEL_23:
    v14 = v13->default_input_handler;
    if (v14)
    {
      v15 = v14->callbacks;
      if (v15)
      {
        v16 = v15->connected;
        if (v16)
        {
          v16(v14, v13);
          return;
        }
      }
    }

    __nwlog_obj();
    v93 = v13->default_input_handler;
    v94 = "invalid";
    if (v93)
    {
      v95 = v93->identifier->name;
      if (v95)
      {
        v94 = v95;
      }
    }

    *buf = 136446466;
    v133 = "nw_protocol_http_connect_connected";
    v134 = 2082;
    v135 = v94;
    v96 = _os_log_send_and_compose_impl();
    uu[0] = 16;
    LOBYTE(v140) = 0;
    if (__nwlog_fault(v96, uu, &v140))
    {
      if (uu[0] == 17)
      {
        v97 = __nwlog_obj();
        v98 = uu[0];
        if (!os_log_type_enabled(v97, uu[0]))
        {
          goto LABEL_222;
        }

        v99 = v13->default_input_handler;
        v100 = "invalid";
        if (v99)
        {
          v101 = v99->identifier->name;
          if (v101)
          {
            v100 = v101;
          }
        }

        *buf = 136446466;
        v133 = "nw_protocol_http_connect_connected";
        v134 = 2082;
        v135 = v100;
        v102 = "%{public}s protocol %{public}s has invalid connected callback";
LABEL_221:
        _os_log_impl(&dword_181A37000, v97, v98, v102, buf, 0x16u);
        goto LABEL_222;
      }

      if (v140 != 1)
      {
        v97 = __nwlog_obj();
        v98 = uu[0];
        if (!os_log_type_enabled(v97, uu[0]))
        {
          goto LABEL_222;
        }

        v119 = v13->default_input_handler;
        v120 = "invalid";
        if (v119)
        {
          v121 = v119->identifier->name;
          if (v121)
          {
            v120 = v121;
          }
        }

        *buf = 136446466;
        v133 = "nw_protocol_http_connect_connected";
        v134 = 2082;
        v135 = v120;
        v102 = "%{public}s protocol %{public}s has invalid connected callback, backtrace limit exceeded";
        goto LABEL_221;
      }

      v111 = __nw_create_backtrace_string();
      v97 = __nwlog_obj();
      v98 = uu[0];
      v112 = os_log_type_enabled(v97, uu[0]);
      if (!v111)
      {
        if (!v112)
        {
          goto LABEL_222;
        }

        v125 = v13->default_input_handler;
        v126 = "invalid";
        if (v125)
        {
          v127 = v125->identifier->name;
          if (v127)
          {
            v126 = v127;
          }
        }

        *buf = 136446466;
        v133 = "nw_protocol_http_connect_connected";
        v134 = 2082;
        v135 = v126;
        v102 = "%{public}s protocol %{public}s has invalid connected callback, no backtrace";
        goto LABEL_221;
      }

      if (v112)
      {
        v113 = v13->default_input_handler;
        v114 = "invalid";
        if (v113)
        {
          v115 = v113->identifier->name;
          if (v115)
          {
            v114 = v115;
          }
        }

        *buf = 136446722;
        v133 = "nw_protocol_http_connect_connected";
        v134 = 2082;
        v135 = v114;
        v136 = 2082;
        v137 = v111;
        _os_log_impl(&dword_181A37000, v97, v98, "%{public}s protocol %{public}s has invalid connected callback, dumping backtrace:%{public}s", buf, 0x20u);
      }

      free(v111);
    }

LABEL_222:
    if (v96)
    {
      v43 = v96;
      goto LABEL_63;
    }

    return;
  }

  v3 = a1->default_input_handler;
  if (v3)
  {
    v4 = v3->callbacks;
    if (v4)
    {
      v5 = v4->connected;
      if (v5)
      {
        v5(a1->default_input_handler);
        return;
      }
    }
  }

  v48 = a1;
  __nwlog_obj();
  v49 = v48->default_input_handler;
  v50 = "invalid";
  if (v49)
  {
    v51 = v49->identifier->name;
    if (v51)
    {
      v50 = v51;
    }
  }

  *buf = 136446466;
  v133 = "nw_protocol_http_connect_connected";
  v134 = 2082;
  v135 = v50;
  v32 = _os_log_send_and_compose_impl();
  uu[0] = 16;
  LOBYTE(v140) = 0;
  if (!__nwlog_fault(v32, uu, &v140))
  {
    goto LABEL_61;
  }

  if (uu[0] == 17)
  {
    v52 = __nwlog_obj();
    v53 = uu[0];
    if (os_log_type_enabled(v52, uu[0]))
    {
      v54 = v48->default_input_handler;
      v55 = "invalid";
      if (v54)
      {
        v56 = v54->identifier->name;
        if (v56)
        {
          v55 = v56;
        }
      }

      *buf = 136446466;
      v133 = "nw_protocol_http_connect_connected";
      v134 = 2082;
      v135 = v55;
      v35 = "%{public}s protocol %{public}s has invalid connected callback";
LABEL_174:
      v40 = v52;
      v41 = v53;
      v42 = 22;
      goto LABEL_60;
    }

    goto LABEL_61;
  }

  if (v140 != 1)
  {
    v52 = __nwlog_obj();
    v53 = uu[0];
    if (os_log_type_enabled(v52, uu[0]))
    {
      v79 = v48->default_input_handler;
      v80 = "invalid";
      if (v79)
      {
        v81 = v79->identifier->name;
        if (v81)
        {
          v80 = v81;
        }
      }

      *buf = 136446466;
      v133 = "nw_protocol_http_connect_connected";
      v134 = 2082;
      v135 = v80;
      v35 = "%{public}s protocol %{public}s has invalid connected callback, backtrace limit exceeded";
      goto LABEL_174;
    }

    goto LABEL_61;
  }

  backtrace_string = __nw_create_backtrace_string();
  v52 = __nwlog_obj();
  v53 = uu[0];
  v68 = os_log_type_enabled(v52, uu[0]);
  if (backtrace_string)
  {
    if (!v68)
    {
      goto LABEL_136;
    }

    v69 = v48->default_input_handler;
    v70 = "invalid";
    if (v69)
    {
      v71 = v69->identifier->name;
      if (v71)
      {
        v70 = v71;
      }
    }

    *buf = 136446722;
    v133 = "nw_protocol_http_connect_connected";
    v134 = 2082;
    v135 = v70;
    v136 = 2082;
    v137 = backtrace_string;
    v72 = "%{public}s protocol %{public}s has invalid connected callback, dumping backtrace:%{public}s";
    v73 = v52;
    v74 = v53;
    v75 = 32;
    goto LABEL_135;
  }

  if (v68)
  {
    v103 = v48->default_input_handler;
    v104 = "invalid";
    if (v103)
    {
      v105 = v103->identifier->name;
      if (v105)
      {
        v104 = v105;
      }
    }

    *buf = 136446466;
    v133 = "nw_protocol_http_connect_connected";
    v134 = 2082;
    v135 = v104;
    v35 = "%{public}s protocol %{public}s has invalid connected callback, no backtrace";
    goto LABEL_174;
  }

LABEL_61:
  if (v32)
  {
LABEL_62:
    v43 = v32;
LABEL_63:
    free(v43);
  }
}

uint64_t nw_http_connect_send_request(uint64_t a1, CFTypeRef cf)
{
  v176 = *MEMORY[0x1E69E9840];
  if (!a1 || (*(a1 + 368) & 0x80) == 0)
  {
    if (gLogDatapath == 1)
    {
      v135 = cf;
      v136 = __nwlog_obj();
      v137 = os_log_type_enabled(v136, OS_LOG_TYPE_DEBUG);
      cf = v135;
      if (v137)
      {
        v138 = " ";
        v139 = (a1 + 284);
        *&buf[4] = "nw_http_connect_send_request";
        *buf = 136446722;
        if (!a1)
        {
          v138 = "";
          v139 = "";
        }

        *&buf[12] = 2082;
        *&buf[14] = v139;
        *&buf[22] = 2080;
        v174 = v138;
        _os_log_impl(&dword_181A37000, v136, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalled", buf, 0x20u);
        cf = v135;
      }
    }

    if (!a1)
    {
      __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_http_connect_send_request";
      v131 = _os_log_send_and_compose_impl();
      type[0] = OS_LOG_TYPE_ERROR;
      v164[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v131, type, v164))
      {
        goto LABEL_331;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v132 = __nwlog_obj();
        v133 = type[0];
        if (!os_log_type_enabled(v132, type[0]))
        {
          goto LABEL_331;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http_connect_send_request";
        v134 = "%{public}s called with null http_connect";
      }

      else if (v164[0] == OS_LOG_TYPE_INFO)
      {
        backtrace_string = __nw_create_backtrace_string();
        v132 = __nwlog_obj();
        v133 = type[0];
        v141 = os_log_type_enabled(v132, type[0]);
        if (backtrace_string)
        {
          if (v141)
          {
            *buf = 136446466;
            *&buf[4] = "nw_http_connect_send_request";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v132, v133, "%{public}s called with null http_connect, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_331;
        }

        if (!v141)
        {
LABEL_331:
          if (v131)
          {
            free(v131);
          }

          return 0;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http_connect_send_request";
        v134 = "%{public}s called with null http_connect, no backtrace";
      }

      else
      {
        v132 = __nwlog_obj();
        v133 = type[0];
        if (!os_log_type_enabled(v132, type[0]))
        {
          goto LABEL_331;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http_connect_send_request";
        v134 = "%{public}s called with null http_connect, backtrace limit exceeded";
      }

      _os_log_impl(&dword_181A37000, v132, v133, v134, buf, 0xCu);
      goto LABEL_331;
    }
  }

  if (cf)
  {
    Request = CFRetain(cf);
    goto LABEL_7;
  }

  if ((*(a1 + 368) & 0x80) == 0 && gLogDatapath == 1)
  {
    v147 = __nwlog_obj();
    if (os_log_type_enabled(v147, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446722;
      *&buf[4] = "nw_http_connect_create_request";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 284;
      *&buf[22] = 2080;
      v174 = " ";
      _os_log_impl(&dword_181A37000, v147, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalled", buf, 0x20u);
    }
  }

  v27 = nw_endpoint_get_type(*(a1 + 144));
  if (v27 == nw_endpoint_type_address)
  {
    v29 = nw_endpoint_copy_address_string(*(a1 + 144));
    hostname = 0;
  }

  else
  {
    if (v27 != nw_endpoint_type_host)
    {
      if ((*(a1 + 368) & 0x80) == 0)
      {
        v48 = v27;
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v49 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446978;
          *&buf[4] = "nw_http_connect_create_request";
          *&buf[12] = 2082;
          *&buf[14] = a1 + 284;
          *&buf[22] = 2080;
          v174 = " ";
          LOWORD(v175) = 1024;
          *(&v175 + 2) = v48;
          v50 = "%{public}s %{public}s%sUnsupported endpoint type: %d";
          v51 = v49;
          v52 = 38;
LABEL_84:
          _os_log_impl(&dword_181A37000, v51, OS_LOG_TYPE_ERROR, v50, buf, v52);
        }
      }

LABEL_85:
      nw_http_connect_fail(a1, 22);
      if ((*(a1 + 368) & 0x80) != 0)
      {
        return 0;
      }

LABEL_224:
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v109 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        *&buf[4] = "nw_http_connect_send_request";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 284;
        *&buf[22] = 2080;
        v174 = " ";
        _os_log_impl(&dword_181A37000, v109, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sFailed to create request message", buf, 0x20u);
        return 0;
      }

      return 0;
    }

    hostname = nw_endpoint_get_hostname(*(a1 + 144));
    v29 = 0;
  }

  v39 = nw_endpoint_copy_port_string(*(a1 + 144));
  if (!v39)
  {
    if ((*(a1 + 368) & 0x80) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v59 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        *&buf[4] = "nw_http_connect_create_request";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 284;
        *&buf[22] = 2080;
        v174 = " ";
        v50 = "%{public}s %{public}s%sCannot connect without port";
        v51 = v59;
        v52 = 32;
        goto LABEL_84;
      }
    }

    goto LABEL_85;
  }

  v40 = v39;
  v41 = *MEMORY[0x1E695E480];
  v42 = "";
  if (v29)
  {
    v42 = v29;
  }

  if (hostname)
  {
    v43 = hostname;
  }

  else
  {
    v43 = v42;
  }

  v44 = CFStringCreateWithFormat(v41, 0, @"%s:%s", v43, v39);
  if (!v44)
  {
    if ((*(a1 + 368) & 0x80) != 0)
    {
      goto LABEL_191;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446722;
    *&buf[4] = "nw_http_connect_create_request";
    *&buf[12] = 2082;
    *&buf[14] = a1 + 284;
    *&buf[22] = 2080;
    v174 = " ";
    v62 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v164[0] = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v62, type, v164))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v63 = gLogObj;
        v64 = type[0];
        if (!os_log_type_enabled(gLogObj, type[0]))
        {
          goto LABEL_189;
        }

        *buf = 136446722;
        *&buf[4] = "nw_http_connect_create_request";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 284;
        *&buf[22] = 2080;
        v174 = " ";
        v65 = "%{public}s %{public}s%sCFStringCreateWithFormat failed";
        goto LABEL_188;
      }

      if (v164[0] != OS_LOG_TYPE_INFO)
      {
        v63 = __nwlog_obj();
        v64 = type[0];
        if (!os_log_type_enabled(v63, type[0]))
        {
          goto LABEL_189;
        }

        *buf = 136446722;
        *&buf[4] = "nw_http_connect_create_request";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 284;
        *&buf[22] = 2080;
        v174 = " ";
        v65 = "%{public}s %{public}s%sCFStringCreateWithFormat failed, backtrace limit exceeded";
        goto LABEL_188;
      }

      v72 = __nw_create_backtrace_string();
      v63 = __nwlog_obj();
      v64 = type[0];
      v73 = os_log_type_enabled(v63, type[0]);
      if (v72)
      {
        if (v73)
        {
          *buf = 136446978;
          *&buf[4] = "nw_http_connect_create_request";
          *&buf[12] = 2082;
          *&buf[14] = a1 + 284;
          *&buf[22] = 2080;
          v174 = " ";
          LOWORD(v175) = 2082;
          *(&v175 + 2) = v72;
          _os_log_impl(&dword_181A37000, v63, v64, "%{public}s %{public}s%sCFStringCreateWithFormat failed, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v72);
        goto LABEL_189;
      }

      if (v73)
      {
        *buf = 136446722;
        *&buf[4] = "nw_http_connect_create_request";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 284;
        *&buf[22] = 2080;
        v174 = " ";
        v65 = "%{public}s %{public}s%sCFStringCreateWithFormat failed, no backtrace";
LABEL_188:
        _os_log_impl(&dword_181A37000, v63, v64, v65, buf, 0x20u);
      }
    }

LABEL_189:
    if (v62)
    {
      free(v62);
    }

LABEL_191:
    if (!v29)
    {
LABEL_223:
      free(v40);
      if ((*(a1 + 368) & 0x80) != 0)
      {
        return 0;
      }

      goto LABEL_224;
    }

LABEL_222:
    free(v29);
    goto LABEL_223;
  }

  v45 = v44;
  v46 = CFURLCreateWithString(v41, v44, 0);
  if (!v46)
  {
    if ((*(a1 + 368) & 0x80) != 0)
    {
      goto LABEL_220;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446722;
    *&buf[4] = "nw_http_connect_create_request";
    *&buf[12] = 2082;
    *&buf[14] = a1 + 284;
    *&buf[22] = 2080;
    v174 = " ";
    v68 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v164[0] = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v68, type, v164))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v69 = __nwlog_obj();
        v70 = type[0];
        if (!os_log_type_enabled(v69, type[0]))
        {
          goto LABEL_218;
        }

        *buf = 136446722;
        *&buf[4] = "nw_http_connect_create_request";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 284;
        *&buf[22] = 2080;
        v174 = " ";
        v71 = "%{public}s %{public}s%sCFURLCreateWithString failed";
LABEL_217:
        _os_log_impl(&dword_181A37000, v69, v70, v71, buf, 0x20u);
        goto LABEL_218;
      }

      if (v164[0] != OS_LOG_TYPE_INFO)
      {
        v69 = __nwlog_obj();
        v70 = type[0];
        if (!os_log_type_enabled(v69, type[0]))
        {
          goto LABEL_218;
        }

        *buf = 136446722;
        *&buf[4] = "nw_http_connect_create_request";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 284;
        *&buf[22] = 2080;
        v174 = " ";
        v71 = "%{public}s %{public}s%sCFURLCreateWithString failed, backtrace limit exceeded";
        goto LABEL_217;
      }

      v74 = __nw_create_backtrace_string();
      v69 = __nwlog_obj();
      v70 = type[0];
      v75 = os_log_type_enabled(v69, type[0]);
      if (!v74)
      {
        if (!v75)
        {
          goto LABEL_218;
        }

        *buf = 136446722;
        *&buf[4] = "nw_http_connect_create_request";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 284;
        *&buf[22] = 2080;
        v174 = " ";
        v71 = "%{public}s %{public}s%sCFURLCreateWithString failed, no backtrace";
        goto LABEL_217;
      }

      if (v75)
      {
        *buf = 136446978;
        *&buf[4] = "nw_http_connect_create_request";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 284;
        *&buf[22] = 2080;
        v174 = " ";
        LOWORD(v175) = 2082;
        *(&v175 + 2) = v74;
        _os_log_impl(&dword_181A37000, v69, v70, "%{public}s %{public}s%sCFURLCreateWithString failed, dumping backtrace:%{public}s", buf, 0x2Au);
      }

      free(v74);
    }

LABEL_218:
    if (v68)
    {
LABEL_219:
      free(v68);
    }

LABEL_220:
    v108 = v45;
    goto LABEL_221;
  }

  v47 = v46;
  Request = CFHTTPMessageCreateRequest(v41, @"CONNECT", v46, @"HTTP/1.1");
  CFRelease(v47);
  if (!Request)
  {
    if ((*(a1 + 368) & 0x80) != 0)
    {
      goto LABEL_220;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446722;
    *&buf[4] = "nw_http_connect_create_request";
    *&buf[12] = 2082;
    *&buf[14] = a1 + 284;
    *&buf[22] = 2080;
    v174 = " ";
    v68 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v164[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v68, type, v164))
    {
      goto LABEL_218;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v69 = __nwlog_obj();
      v70 = type[0];
      if (!os_log_type_enabled(v69, type[0]))
      {
        goto LABEL_218;
      }

      *buf = 136446722;
      *&buf[4] = "nw_http_connect_create_request";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 284;
      *&buf[22] = 2080;
      v174 = " ";
      v71 = "%{public}s %{public}s%sCFHTTPMessageCreateRequest failed";
    }

    else if (v164[0] == OS_LOG_TYPE_INFO)
    {
      v85 = __nw_create_backtrace_string();
      v69 = __nwlog_obj();
      v70 = type[0];
      v86 = os_log_type_enabled(v69, type[0]);
      if (v85)
      {
        if (v86)
        {
          *buf = 136446978;
          *&buf[4] = "nw_http_connect_create_request";
          *&buf[12] = 2082;
          *&buf[14] = a1 + 284;
          *&buf[22] = 2080;
          v174 = " ";
          LOWORD(v175) = 2082;
          *(&v175 + 2) = v85;
          _os_log_impl(&dword_181A37000, v69, v70, "%{public}s %{public}s%sCFHTTPMessageCreateRequest failed, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v85);
        if (!v68)
        {
          goto LABEL_220;
        }

        goto LABEL_219;
      }

      if (!v86)
      {
        goto LABEL_218;
      }

      *buf = 136446722;
      *&buf[4] = "nw_http_connect_create_request";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 284;
      *&buf[22] = 2080;
      v174 = " ";
      v71 = "%{public}s %{public}s%sCFHTTPMessageCreateRequest failed, no backtrace";
    }

    else
    {
      v69 = __nwlog_obj();
      v70 = type[0];
      if (!os_log_type_enabled(v69, type[0]))
      {
        goto LABEL_218;
      }

      *buf = 136446722;
      *&buf[4] = "nw_http_connect_create_request";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 284;
      *&buf[22] = 2080;
      v174 = " ";
      v71 = "%{public}s %{public}s%sCFHTTPMessageCreateRequest failed, backtrace limit exceeded";
    }

    goto LABEL_217;
  }

  if (strcmp(v40, "443"))
  {
    CFHTTPMessageSetHeaderFieldValue(Request, @"Host", v45);
    goto LABEL_139;
  }

  v76 = CFStringCreateWithCString(v41, v43, 0x600u);
  if (!v76)
  {
    if ((*(a1 + 368) & 0x80) != 0)
    {
LABEL_274:
      CFRelease(v45);
      v108 = Request;
      goto LABEL_221;
    }

    __nwlog_obj();
    *buf = 136446722;
    *&buf[4] = "nw_http_connect_create_request";
    *&buf[12] = 2082;
    *&buf[14] = a1 + 284;
    *&buf[22] = 2080;
    v174 = " ";
    v95 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v164[0] = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v95, type, v164))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v96 = __nwlog_obj();
        v97 = type[0];
        if (!os_log_type_enabled(v96, type[0]))
        {
          goto LABEL_272;
        }

        *buf = 136446722;
        *&buf[4] = "nw_http_connect_create_request";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 284;
        *&buf[22] = 2080;
        v174 = " ";
        v98 = "%{public}s %{public}s%sCFStringCreateWithCString failed";
        goto LABEL_271;
      }

      if (v164[0] != OS_LOG_TYPE_INFO)
      {
        v96 = __nwlog_obj();
        v97 = type[0];
        if (!os_log_type_enabled(v96, type[0]))
        {
          goto LABEL_272;
        }

        *buf = 136446722;
        *&buf[4] = "nw_http_connect_create_request";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 284;
        *&buf[22] = 2080;
        v174 = " ";
        v98 = "%{public}s %{public}s%sCFStringCreateWithCString failed, backtrace limit exceeded";
        goto LABEL_271;
      }

      v158 = Request;
      v103 = __nw_create_backtrace_string();
      v96 = __nwlog_obj();
      v97 = type[0];
      v104 = os_log_type_enabled(v96, type[0]);
      if (v103)
      {
        if (v104)
        {
          *buf = 136446978;
          *&buf[4] = "nw_http_connect_create_request";
          *&buf[12] = 2082;
          *&buf[14] = a1 + 284;
          *&buf[22] = 2080;
          v174 = " ";
          LOWORD(v175) = 2082;
          *(&v175 + 2) = v103;
          _os_log_impl(&dword_181A37000, v96, v97, "%{public}s %{public}s%sCFStringCreateWithCString failed, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v103);
        Request = v158;
        goto LABEL_272;
      }

      Request = v158;
      if (v104)
      {
        *buf = 136446722;
        *&buf[4] = "nw_http_connect_create_request";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 284;
        *&buf[22] = 2080;
        v174 = " ";
        v98 = "%{public}s %{public}s%sCFStringCreateWithCString failed, no backtrace";
LABEL_271:
        _os_log_impl(&dword_181A37000, v96, v97, v98, buf, 0x20u);
      }
    }

LABEL_272:
    if (v95)
    {
      free(v95);
    }

    goto LABEL_274;
  }

  v77 = v76;
  CFHTTPMessageSetHeaderFieldValue(Request, @"Host", v76);
  CFRelease(v77);
LABEL_139:
  CFHTTPMessageSetHeaderFieldValue(Request, @"Connection", @"keep-alive");
  CFHTTPMessageSetHeaderFieldValue(Request, @"Proxy-Connection", @"keep-alive");
  v78 = *(a1 + 184);
  if (v78)
  {
    v79 = v78;
    *type = 0;
    v160 = type;
    v161 = 0x2020000000;
    v162 = 0;
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __nw_proxy_options_get_http_proxy_authorization_header_block_invoke;
    v174 = &unk_1E6A3A858;
    *&v175 = type;
    nw_protocol_options_access_handle(v79, buf);
    v80 = *(v160 + 24);
    _Block_object_dispose(type, 8);

    if (v80)
    {
      v81 = CFStringCreateWithCString(v41, v80, 0x8000100u);
      if (v81)
      {
        v82 = v81;
        CFHTTPMessageSetHeaderFieldValue(Request, @"Proxy-Authorization", v81);
        CFRelease(v82);
        goto LABEL_235;
      }

      if ((*(a1 + 368) & 0x80) == 0)
      {
        v157 = Request;
        __nwlog_obj();
        *buf = 136446722;
        *&buf[4] = "nw_http_connect_create_request";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 284;
        *&buf[22] = 2080;
        v174 = " ";
        v99 = _os_log_send_and_compose_impl();
        type[0] = OS_LOG_TYPE_ERROR;
        v164[0] = OS_LOG_TYPE_DEFAULT;
        if (__nwlog_fault(v99, type, v164))
        {
          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v100 = __nwlog_obj();
            v101 = type[0];
            if (os_log_type_enabled(v100, type[0]))
            {
              *buf = 136446722;
              *&buf[4] = "nw_http_connect_create_request";
              *&buf[12] = 2082;
              *&buf[14] = a1 + 284;
              *&buf[22] = 2080;
              v174 = " ";
              v102 = "%{public}s %{public}s%sCFStringCreateWithCString failed";
LABEL_230:
              v110 = v100;
LABEL_231:
              _os_log_impl(&dword_181A37000, v110, v101, v102, buf, 0x20u);
            }
          }

          else if (v164[0] == OS_LOG_TYPE_INFO)
          {
            v105 = __nw_create_backtrace_string();
            v106 = __nwlog_obj();
            v101 = type[0];
            log = v106;
            v107 = os_log_type_enabled(v106, type[0]);
            if (v105)
            {
              if (v107)
              {
                *buf = 136446978;
                *&buf[4] = "nw_http_connect_create_request";
                *&buf[12] = 2082;
                *&buf[14] = a1 + 284;
                *&buf[22] = 2080;
                v174 = " ";
                LOWORD(v175) = 2082;
                *(&v175 + 2) = v105;
                _os_log_impl(&dword_181A37000, log, v101, "%{public}s %{public}s%sCFStringCreateWithCString failed, dumping backtrace:%{public}s", buf, 0x2Au);
              }

              free(v105);
              goto LABEL_232;
            }

            if (v107)
            {
              *buf = 136446722;
              *&buf[4] = "nw_http_connect_create_request";
              *&buf[12] = 2082;
              *&buf[14] = a1 + 284;
              *&buf[22] = 2080;
              v174 = " ";
              v102 = "%{public}s %{public}s%sCFStringCreateWithCString failed, no backtrace";
              v110 = log;
              goto LABEL_231;
            }
          }

          else
          {
            v100 = __nwlog_obj();
            v101 = type[0];
            if (os_log_type_enabled(v100, type[0]))
            {
              *buf = 136446722;
              *&buf[4] = "nw_http_connect_create_request";
              *&buf[12] = 2082;
              *&buf[14] = a1 + 284;
              *&buf[22] = 2080;
              v174 = " ";
              v102 = "%{public}s %{public}s%sCFStringCreateWithCString failed, backtrace limit exceeded";
              goto LABEL_230;
            }
          }
        }

LABEL_232:
        if (v99)
        {
          free(v99);
        }

        Request = v157;
      }
    }
  }

LABEL_235:
  CFRelease(v45);
  v111 = *(a1 + 216);
  if (v111)
  {
    CFRelease(v111);
    *(a1 + 216) = 0;
  }

  v112 = *(a1 + 192);
  if (v112)
  {
    CFRelease(v112);
    *(a1 + 192) = 0;
  }

  v113 = *(a1 + 208);
  if (v113)
  {
    CFRelease(v113);
    *(a1 + 208) = 0;
  }

  v114 = *(a1 + 160);
  if (!v114 || (v115 = os_retain(v114)) == 0)
  {
    v116 = *(a1 + 152);
    if (v116)
    {
      v117 = os_retain(v116);
      if (v117)
      {
        v115 = v117;
        v118 = nw_endpoint_copy_parent_endpoint(v117);
        if (v118)
        {
          v119 = v118;
          do
          {
            os_release(v115);
            v115 = v119;
            v119 = _nw_endpoint_copy_parent_endpoint(v115);
          }

          while (v119);
        }

        goto LABEL_248;
      }
    }

    if ((*(a1 + 368) & 0x80) == 0)
    {
      v126 = __nwlog_obj();
      if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        *&buf[4] = "nw_http_connect_create_request";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 284;
        *&buf[22] = 2080;
        v174 = " ";
        _os_log_impl(&dword_181A37000, v126, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sunable to derive the correct proxy url", buf, 0x20u);
      }
    }

    v108 = Request;
LABEL_221:
    CFRelease(v108);
    if (!v29)
    {
      goto LABEL_223;
    }

    goto LABEL_222;
  }

LABEL_248:
  v120 = v115;
  v121 = _nw_endpoint_get_type(v120);

  if (v121 == 2)
  {
    if ((*(a1 + 368) & 0x100) != 0)
    {
      v122 = "https";
    }

    else
    {
      v122 = "http";
    }

    v123 = nw_endpoint_get_hostname(v120);
    port = nw_endpoint_get_port(v120);
    v125 = CFStringCreateWithFormat(v41, 0, @"%s://%s:%d/", v122, v123, port);
    goto LABEL_263;
  }

  if (nw_endpoint_get_type(v120) == nw_endpoint_type_address)
  {
    v127 = nw_endpoint_copy_address_string(v120);
    if (v127)
    {
      v128 = v127;
      if ((*(a1 + 368) & 0x100) != 0)
      {
        v129 = "https";
      }

      else
      {
        v129 = "http";
      }

      v130 = nw_endpoint_get_port(v120);
      v125 = CFStringCreateWithFormat(v41, 0, @"%s://%s:%d/", v129, v128, v130);
      free(v128);
LABEL_263:
      os_release(v120);
      if (v125)
      {
        *(a1 + 216) = CFURLCreateWithString(v41, v125, 0);
        CFRelease(v125);
      }

      goto LABEL_266;
    }
  }

  os_release(v120);
LABEL_266:
  *(a1 + 192) = CFRetain(Request);
  if (v29)
  {
    free(v29);
  }

  free(v40);
LABEL_7:
  v4 = &qword_1ED411000;
  if ((*(a1 + 368) & 0x80) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446978;
      *&buf[4] = "nw_http_connect_send_request";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 284;
      *&buf[22] = 2080;
      v174 = " ";
      LOWORD(v175) = 2048;
      *(&v175 + 2) = Request;
      _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sSending http_message %p", buf, 0x2Au);
    }
  }

  v6 = CFHTTPMessageCopySerializedMessage(Request);
  if (!v6)
  {
    if ((*(a1 + 368) & 0x80) != 0)
    {
LABEL_128:
      if (Request)
      {
        CFRelease(Request);
      }

      return 0;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v30 = a1 + 284;
    *buf = 136446722;
    *&buf[4] = "nw_http_connect_send_request";
    *&buf[12] = 2082;
    *&buf[14] = a1 + 284;
    *&buf[22] = 2080;
    v174 = " ";
    v31 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v164[0] = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v31, type, v164))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v32 = gLogObj;
        v33 = type[0];
        if (!os_log_type_enabled(gLogObj, type[0]))
        {
          goto LABEL_126;
        }

        *buf = 136446722;
        *&buf[4] = "nw_http_connect_send_request";
        *&buf[12] = 2082;
        *&buf[14] = v30;
        *&buf[22] = 2080;
        v174 = " ";
        v34 = "%{public}s %{public}s%sCFHTTPMessageCopySerializedMessage failed";
        goto LABEL_125;
      }

      if (v164[0] != OS_LOG_TYPE_INFO)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v32 = gLogObj;
        v33 = type[0];
        if (!os_log_type_enabled(gLogObj, type[0]))
        {
          goto LABEL_126;
        }

        *buf = 136446722;
        *&buf[4] = "nw_http_connect_send_request";
        *&buf[12] = 2082;
        *&buf[14] = v30;
        *&buf[22] = 2080;
        v174 = " ";
        v34 = "%{public}s %{public}s%sCFHTTPMessageCopySerializedMessage failed, backtrace limit exceeded";
        goto LABEL_125;
      }

      v53 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v32 = gLogObj;
      v33 = type[0];
      v54 = os_log_type_enabled(gLogObj, type[0]);
      if (v53)
      {
        if (v54)
        {
          *buf = 136446978;
          *&buf[4] = "nw_http_connect_send_request";
          *&buf[12] = 2082;
          *&buf[14] = v30;
          *&buf[22] = 2080;
          v174 = " ";
          LOWORD(v175) = 2082;
          *(&v175 + 2) = v53;
          _os_log_impl(&dword_181A37000, v32, v33, "%{public}s %{public}s%sCFHTTPMessageCopySerializedMessage failed, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v53);
        goto LABEL_126;
      }

      if (v54)
      {
        *buf = 136446722;
        *&buf[4] = "nw_http_connect_send_request";
        *&buf[12] = 2082;
        *&buf[14] = v30;
        *&buf[22] = 2080;
        v174 = " ";
        v34 = "%{public}s %{public}s%sCFHTTPMessageCopySerializedMessage failed, no backtrace";
LABEL_125:
        _os_log_impl(&dword_181A37000, v32, v33, v34, buf, 0x20u);
      }
    }

LABEL_126:
    if (v31)
    {
      free(v31);
    }

    goto LABEL_128;
  }

  v7 = v6;
  v8 = *(a1 + 200);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 200) = 0;
  }

  BytePtr = CFDataGetBytePtr(v7);
  Length = CFDataGetLength(v7);
  if (!BytePtr)
  {
    v142 = v7;
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_connect_send_bytes";
    v143 = _os_log_send_and_compose_impl();
    v164[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v171) = 0;
    if (!__nwlog_fault(v143, v164, &v171))
    {
      goto LABEL_342;
    }

    if (v164[0] == OS_LOG_TYPE_FAULT)
    {
      v144 = __nwlog_obj();
      v145 = v164[0];
      if (!os_log_type_enabled(v144, v164[0]))
      {
        goto LABEL_342;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http_connect_send_bytes";
      v146 = "%{public}s called with null buffer";
      goto LABEL_341;
    }

    if (v171 != 1)
    {
      v144 = __nwlog_obj();
      v145 = v164[0];
      if (!os_log_type_enabled(v144, v164[0]))
      {
        goto LABEL_342;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http_connect_send_bytes";
      v146 = "%{public}s called with null buffer, backtrace limit exceeded";
      goto LABEL_341;
    }

    v148 = __nw_create_backtrace_string();
    v144 = __nwlog_obj();
    v145 = v164[0];
    v149 = os_log_type_enabled(v144, v164[0]);
    if (!v148)
    {
      if (!v149)
      {
        goto LABEL_342;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http_connect_send_bytes";
      v146 = "%{public}s called with null buffer, no backtrace";
      goto LABEL_341;
    }

    if (v149)
    {
      *buf = 136446466;
      *&buf[4] = "nw_http_connect_send_bytes";
      *&buf[12] = 2082;
      *&buf[14] = v148;
      v150 = "%{public}s called with null buffer, dumping backtrace:%{public}s";
LABEL_314:
      _os_log_impl(&dword_181A37000, v144, v145, v150, buf, 0x16u);
    }

LABEL_315:
    free(v148);
    if (!v143)
    {
LABEL_344:
      v7 = v142;
      if ((*(a1 + 368) & 0x80) != 0)
      {
        goto LABEL_151;
      }

      goto LABEL_149;
    }

LABEL_343:
    free(v143);
    goto LABEL_344;
  }

  v11 = Length;
  if (!Length)
  {
    v142 = v7;
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_connect_send_bytes";
    v143 = _os_log_send_and_compose_impl();
    v164[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v171) = 0;
    if (!__nwlog_fault(v143, v164, &v171))
    {
      goto LABEL_342;
    }

    if (v164[0] == OS_LOG_TYPE_FAULT)
    {
      v144 = __nwlog_obj();
      v145 = v164[0];
      if (!os_log_type_enabled(v144, v164[0]))
      {
        goto LABEL_342;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http_connect_send_bytes";
      v146 = "%{public}s called with null length";
      goto LABEL_341;
    }

    if (v171 != 1)
    {
      v144 = __nwlog_obj();
      v145 = v164[0];
      if (!os_log_type_enabled(v144, v164[0]))
      {
        goto LABEL_342;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http_connect_send_bytes";
      v146 = "%{public}s called with null length, backtrace limit exceeded";
      goto LABEL_341;
    }

    v148 = __nw_create_backtrace_string();
    v144 = __nwlog_obj();
    v145 = v164[0];
    v151 = os_log_type_enabled(v144, v164[0]);
    if (!v148)
    {
      if (!v151)
      {
        goto LABEL_342;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http_connect_send_bytes";
      v146 = "%{public}s called with null length, no backtrace";
      goto LABEL_341;
    }

    if (v151)
    {
      *buf = 136446466;
      *&buf[4] = "nw_http_connect_send_bytes";
      *&buf[12] = 2082;
      *&buf[14] = v148;
      v150 = "%{public}s called with null length, dumping backtrace:%{public}s";
      goto LABEL_314;
    }

    goto LABEL_315;
  }

  v171 = 0;
  v172 = &v171;
  v169 = 0;
  v170 = &v169;
  v12 = *(a1 + 56);
  if (!v12)
  {
    v142 = v7;
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_connect_send_bytes";
    v143 = _os_log_send_and_compose_impl();
    v164[0] = OS_LOG_TYPE_ERROR;
    v168 = 0;
    if (!__nwlog_fault(v143, v164, &v168))
    {
      goto LABEL_342;
    }

    if (v164[0] == OS_LOG_TYPE_FAULT)
    {
      v144 = __nwlog_obj();
      v145 = v164[0];
      if (!os_log_type_enabled(v144, v164[0]))
      {
        goto LABEL_342;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http_connect_send_bytes";
      v146 = "%{public}s called with null output_handler";
    }

    else if (v168 == 1)
    {
      v152 = __nw_create_backtrace_string();
      v144 = __nwlog_obj();
      v145 = v164[0];
      v153 = os_log_type_enabled(v144, v164[0]);
      if (v152)
      {
        if (v153)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http_connect_send_bytes";
          *&buf[12] = 2082;
          *&buf[14] = v152;
          _os_log_impl(&dword_181A37000, v144, v145, "%{public}s called with null output_handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v152);
LABEL_342:
        if (!v143)
        {
          goto LABEL_344;
        }

        goto LABEL_343;
      }

      if (!v153)
      {
        goto LABEL_342;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http_connect_send_bytes";
      v146 = "%{public}s called with null output_handler, no backtrace";
    }

    else
    {
      v144 = __nwlog_obj();
      v145 = v164[0];
      if (!os_log_type_enabled(v144, v164[0]))
      {
        goto LABEL_342;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http_connect_send_bytes";
      v146 = "%{public}s called with null output_handler, backtrace limit exceeded";
    }

LABEL_341:
    _os_log_impl(&dword_181A37000, v144, v145, v146, buf, 0xCu);
    goto LABEL_342;
  }

  v13 = (*(*(v12 + 24) + 88))(*(a1 + 56), a1 + 24, Length, Length, 0xFFFFFFFFLL, &v171);
  v14 = v13;
  v15 = v171;
  if (!v171 || !v13)
  {
    v4 = &qword_1ED411000;
    if (!v13 || (*(a1 + 368) & 0x80) != 0)
    {
      goto LABEL_148;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446978;
    *&buf[4] = "nw_http_connect_send_bytes";
    *&buf[12] = 2082;
    *&buf[14] = a1 + 284;
    *&buf[22] = 2080;
    v174 = " ";
    LOWORD(v175) = 1024;
    *(&v175 + 2) = v14;
    v35 = _os_log_send_and_compose_impl();
    v164[0] = OS_LOG_TYPE_ERROR;
    v168 = 0;
    if (__nwlog_fault(v35, v164, &v168))
    {
      if (v164[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v36 = gLogObj;
        v37 = v164[0];
        if (!os_log_type_enabled(gLogObj, v164[0]))
        {
          goto LABEL_146;
        }

        *buf = 136446978;
        *&buf[4] = "nw_http_connect_send_bytes";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 284;
        *&buf[22] = 2080;
        v174 = " ";
        LOWORD(v175) = 1024;
        *(&v175 + 2) = v14;
        v38 = "%{public}s %{public}s%sOutput handler reported %u frames to write, but array is empty";
        goto LABEL_145;
      }

      if (v168 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v36 = gLogObj;
        v37 = v164[0];
        if (!os_log_type_enabled(gLogObj, v164[0]))
        {
          goto LABEL_146;
        }

        *buf = 136446978;
        *&buf[4] = "nw_http_connect_send_bytes";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 284;
        *&buf[22] = 2080;
        v174 = " ";
        LOWORD(v175) = 1024;
        *(&v175 + 2) = v14;
        v38 = "%{public}s %{public}s%sOutput handler reported %u frames to write, but array is empty, backtrace limit exceeded";
        goto LABEL_145;
      }

      v60 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v36 = gLogObj;
      v37 = v164[0];
      v61 = os_log_type_enabled(gLogObj, v164[0]);
      if (v60)
      {
        if (v61)
        {
          *buf = 136447234;
          *&buf[4] = "nw_http_connect_send_bytes";
          *&buf[12] = 2082;
          *&buf[14] = a1 + 284;
          *&buf[22] = 2080;
          v174 = " ";
          LOWORD(v175) = 1024;
          *(&v175 + 2) = v14;
          WORD3(v175) = 2082;
          *(&v175 + 1) = v60;
          _os_log_impl(&dword_181A37000, v36, v37, "%{public}s %{public}s%sOutput handler reported %u frames to write, but array is empty, dumping backtrace:%{public}s", buf, 0x30u);
        }

        free(v60);
        v4 = &qword_1ED411000;
        goto LABEL_146;
      }

      v4 = &qword_1ED411000;
      if (v61)
      {
        *buf = 136446978;
        *&buf[4] = "nw_http_connect_send_bytes";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 284;
        *&buf[22] = 2080;
        v174 = " ";
        LOWORD(v175) = 1024;
        *(&v175 + 2) = v14;
        v38 = "%{public}s %{public}s%sOutput handler reported %u frames to write, but array is empty, no backtrace";
LABEL_145:
        _os_log_impl(&dword_181A37000, v36, v37, v38, buf, 0x26u);
      }
    }

LABEL_146:
    if (v35)
    {
      free(v35);
    }

LABEL_148:
    if ((*(a1 + 368) & 0x80) != 0)
    {
      goto LABEL_151;
    }

LABEL_149:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v83 = v4[275];
    if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "nw_http_connect_send_request";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 284;
      *&buf[22] = 2080;
      v174 = " ";
      _os_log_impl(&dword_181A37000, v83, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sFailed to send http connect request", buf, 0x20u);
    }

LABEL_151:
    v84 = 0;
    if (!Request)
    {
      goto LABEL_153;
    }

    goto LABEL_152;
  }

  v156 = Request;
  while (1)
  {
    v16 = *(v15 + 32);
    if (v16 || *(v15 + 40))
    {
      v17 = *(v15 + 112);
      if (!v17)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v16 = 0;
      v17 = *(v15 + 112);
      if (!v17)
      {
        goto LABEL_29;
      }
    }

    if ((*(v15 + 204) & 0x100) != 0 && g_channel_check_validity && !g_channel_check_validity(v15, *(v15 + 88)))
    {
      LODWORD(v17) = 0;
LABEL_29:
      v19 = 0;
      goto LABEL_30;
    }

    LODWORD(v17) = *(v15 + 52);
    v18 = *(v15 + 56);
    if (v17)
    {
      LODWORD(v17) = v17 - (v18 + *(v15 + 60));
    }

    v19 = (*(v15 + 112) + v18);
LABEL_30:
    v20 = v17 >= v11 ? v11 : v17;
    memcpy(v19, BytePtr, v20);
    if (!nw_frame_claim(v15, v21, v20, 0))
    {
      break;
    }

    nw_frame_collapse(v15);
    nw_frame_unclaim(v15, v22, v20, 0);
    v23 = *(v15 + 32);
    v24 = *(v15 + 40);
    v25 = (v23 + 40);
    if (!v23)
    {
      v25 = &v172;
    }

    *v25 = v24;
    *v24 = v23;
    v26 = v170;
    *(v15 + 32) = 0;
    *(v15 + 40) = v26;
    *v26 = v15;
    v170 = (v15 + 32);
    if (v16)
    {
      BytePtr += v20;
      v15 = v16;
      v11 -= v20;
      if (v11)
      {
        continue;
      }
    }

    goto LABEL_165;
  }

  if ((*(a1 + 368) & 0x80) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446978;
    *&buf[4] = "nw_http_connect_send_bytes";
    *&buf[12] = 2082;
    *&buf[14] = a1 + 284;
    *&buf[22] = 2080;
    v174 = " ";
    LOWORD(v175) = 1024;
    *(&v175 + 2) = v20;
    v55 = _os_log_send_and_compose_impl();
    v164[0] = OS_LOG_TYPE_ERROR;
    v168 = 0;
    if (!__nwlog_fault(v55, v164, &v168))
    {
      goto LABEL_163;
    }

    if (v164[0] != OS_LOG_TYPE_FAULT)
    {
      if (v168 == 1)
      {
        v66 = __nw_create_backtrace_string();
        v56 = __nwlog_obj();
        v57 = v164[0];
        v67 = os_log_type_enabled(v56, v164[0]);
        if (v66)
        {
          if (v67)
          {
            *buf = 136447234;
            *&buf[4] = "nw_http_connect_send_bytes";
            *&buf[12] = 2082;
            *&buf[14] = a1 + 284;
            *&buf[22] = 2080;
            v174 = " ";
            LOWORD(v175) = 1024;
            *(&v175 + 2) = v20;
            WORD3(v175) = 2082;
            *(&v175 + 1) = v66;
            _os_log_impl(&dword_181A37000, v56, v57, "%{public}s %{public}s%sClaiming frame with %u bytes failed, dumping backtrace:%{public}s", buf, 0x30u);
          }

          free(v66);
          goto LABEL_163;
        }

        if (!v67)
        {
          goto LABEL_163;
        }

        *buf = 136446978;
        *&buf[4] = "nw_http_connect_send_bytes";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 284;
        *&buf[22] = 2080;
        v174 = " ";
        LOWORD(v175) = 1024;
        *(&v175 + 2) = v20;
        v58 = "%{public}s %{public}s%sClaiming frame with %u bytes failed, no backtrace";
      }

      else
      {
        v56 = __nwlog_obj();
        v57 = v164[0];
        if (!os_log_type_enabled(v56, v164[0]))
        {
          goto LABEL_163;
        }

        *buf = 136446978;
        *&buf[4] = "nw_http_connect_send_bytes";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 284;
        *&buf[22] = 2080;
        v174 = " ";
        LOWORD(v175) = 1024;
        *(&v175 + 2) = v20;
        v58 = "%{public}s %{public}s%sClaiming frame with %u bytes failed, backtrace limit exceeded";
      }

LABEL_162:
      _os_log_impl(&dword_181A37000, v56, v57, v58, buf, 0x26u);
      goto LABEL_163;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v56 = gLogObj;
    v57 = v164[0];
    if (os_log_type_enabled(gLogObj, v164[0]))
    {
      *buf = 136446978;
      *&buf[4] = "nw_http_connect_send_bytes";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 284;
      *&buf[22] = 2080;
      v174 = " ";
      LOWORD(v175) = 1024;
      *(&v175 + 2) = v20;
      v58 = "%{public}s %{public}s%sClaiming frame with %u bytes failed";
      goto LABEL_162;
    }

LABEL_163:
    if (v55)
    {
      free(v55);
    }
  }

LABEL_165:
  (*(*(v12 + 24) + 96))(v12, &v169);
  Request = v156;
  if (v171)
  {
    *v164 = 0;
    v165 = v164;
    v166 = 0x2000000000;
    v167 = 0;
    *type = MEMORY[0x1E69E9820];
    v160 = 0x40000000;
    v161 = ___ZL26nw_http_connect_send_bytesP24nw_protocol_http_connectPKhj_block_invoke;
    v162 = &unk_1E6A31EC8;
    v163 = v164;
    do
    {
      v87 = v171;
      if (!v171)
      {
        break;
      }

      v88 = *(v171 + 32);
      v89 = *(v171 + 40);
      v90 = (v88 + 40);
      if (!v88)
      {
        v90 = &v172;
      }

      *v90 = v89;
      *v89 = v88;
      *(v87 + 32) = 0;
      *(v87 + 40) = 0;
    }

    while (((v161)(type) & 1) != 0);
    if ((*(a1 + 368) & 0x80) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v91 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        v92 = *(v165 + 6);
        *buf = 136446978;
        *&buf[4] = "nw_http_connect_send_bytes";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 284;
        *&buf[22] = 2080;
        v174 = " ";
        LOWORD(v175) = 1024;
        *(&v175 + 2) = v92;
        _os_log_impl(&dword_181A37000, v91, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sFailed to use %u frames, marking as failed", buf, 0x26u);
      }
    }

    _Block_object_dispose(v164, 8);
  }

  v93 = *(a1 + 168);
  if ((!v93 || *(v93 + 132) != 4) && (*(a1 + 368) & 0x80) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v94 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
    {
      *buf = 136446722;
      *&buf[4] = "nw_http_connect_send_request";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 284;
      *&buf[22] = 2080;
      v174 = " ";
      _os_log_impl(&dword_181A37000, v94, OS_LOG_TYPE_INFO, "%{public}s %{public}s%sSent http connect request to proxy", buf, 0x20u);
    }
  }

  *(a1 + 368) |= 8u;
  v84 = 1;
  if (v156)
  {
LABEL_152:
    CFRelease(Request);
  }

LABEL_153:
  CFRelease(v7);
  return v84;
}