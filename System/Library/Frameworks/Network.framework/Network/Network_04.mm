BOOL nw_path_has_ipv4(nw_path_t path)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = path;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_path_has_ipv4(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_has_ipv4";
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
        v16 = "nw_path_has_ipv4";
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
          v16 = "nw_path_has_ipv4";
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
        v16 = "nw_path_has_ipv4";
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
        v16 = "nw_path_has_ipv4";
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

BOOL nw_path_has_ipv6(nw_path_t path)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = path;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_path_has_ipv6(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_has_ipv6";
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
        v16 = "nw_path_has_ipv6";
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
          v16 = "nw_path_has_ipv6";
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
        v16 = "nw_path_has_ipv6";
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
        v16 = "nw_path_has_ipv6";
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

uint64_t *__swift_allocate_boxed_opaque_existential_0Tm(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

char *_nw_path_has_ipv4(char *result)
{
  if (result)
  {
    v1 = &result[OBJC_IVAR____TtC7Network8__NWPath_path];
    v2 = result;
    swift_beginAccess();
    LODWORD(v1) = *(v1 + 39);

    return ((v1 >> 6) & 1);
  }

  return result;
}

char *_nw_path_has_ipv6(char *result)
{
  if (result)
  {
    v1 = &result[OBJC_IVAR____TtC7Network8__NWPath_path];
    v2 = result;
    swift_beginAccess();
    LODWORD(v1) = *(v1 + 39);

    return ((v1 >> 7) & 1);
  }

  return result;
}

uint64_t sub_181AA69D8(char a1, uint64_t a2)
{
  v3 = *v2;
  v4 = (*v2 + 16);
  v5 = *v4;
  if (*v4 >= a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8386E0);
    v8 = swift_allocObject();
    v11 = *(v3 + 24);
    *(v8 + 16) = v5;
    *(v8 + 24) = v11;
    if (v11 >= 1)
    {
      sub_1820E59A8(v8 + 16, v8 + 40, v4, v3 + 40);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A410);
    sub_182AD2398();
    if (a1)
    {
      v7 = *(v3 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8386E0);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 40;
      if (v9 < 40)
      {
        v10 = v9 - 33;
      }

      *(v8 + 16) = v10 >> 3;
      *(v8 + 24) = v7;
      *(v8 + 32) = 0;
      if (v7 >= 1)
      {
        sub_181AB76EC(v8 + 16, (v8 + 40), v4, (v3 + 40));
        *(v3 + 24) = 0;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8386E0);
      v8 = swift_allocObject();
      v12 = _swift_stdlib_malloc_size(v8);
      v13 = v12 - 40;
      if (v12 < 40)
      {
        v13 = v12 - 33;
      }

      v14 = *(v3 + 24);
      *(v8 + 16) = v13 >> 3;
      *(v8 + 24) = v14;
      *(v8 + 32) = 0;
      if (v14 >= 1)
      {
        sub_181F479D0(v8 + 16, v8 + 40, v4, v3 + 40);
      }
    }
  }

  *v2 = v8;
  return result;
}

void nw_resolver_config_set_generation(void *a1, int a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    v3[23] = a2;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_resolver_config_set_generation";
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
        v15 = "nw_resolver_config_set_generation";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null config", buf, 0xCu);
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
          v15 = "nw_resolver_config_set_generation";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_resolver_config_set_generation";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null config, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_resolver_config_set_generation";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
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

void nw_resolver_config_set_identifier(void *a1, _OWORD *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    *(v3 + 24) = *a2;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_resolver_config_set_identifier";
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
        v15 = "nw_resolver_config_set_identifier";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null config", buf, 0xCu);
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
          v15 = "nw_resolver_config_set_identifier";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_resolver_config_set_identifier";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null config, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_resolver_config_set_identifier";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
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

uint64_t nw_endpoint_copy_interface(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_endpoint_copy_interface(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_copy_interface";
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
        v16 = "nw_endpoint_copy_interface";
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
          v16 = "nw_endpoint_copy_interface";
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
        v16 = "nw_endpoint_copy_interface";
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
        v16 = "nw_endpoint_copy_interface";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
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

NWConcrete_nw_resolver_config *nw_path_bridge_config_agent_dns_copy_resolver_config(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = xpc_create_from_plist();
  v2 = v1;
  if (v1)
  {
    v3 = nw_resolver_config_create_with_dictionary(v1);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

NWConcrete_nw_resolver_config *nw_resolver_config_create_with_dictionary(void *a1)
{
  v43 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v21 = __nwlog_obj();
    *buf = 136446210;
    v40 = "nw_resolver_config_create_with_dictionary";
    v22 = _os_log_send_and_compose_impl();

    v36[0] = OS_LOG_TYPE_ERROR;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v22, v36, &type))
    {
      goto LABEL_62;
    }

    if (v36[0] == OS_LOG_TYPE_FAULT)
    {
      v23 = __nwlog_obj();
      v24 = v36[0];
      if (os_log_type_enabled(v23, v36[0]))
      {
        *buf = 136446210;
        v40 = "nw_resolver_config_create_with_dictionary";
        _os_log_impl(&dword_181A37000, v23, v24, "%{public}s called with null dictionary", buf, 0xCu);
      }
    }

    else if (type == OS_LOG_TYPE_INFO)
    {
      backtrace_string = __nw_create_backtrace_string();
      v23 = __nwlog_obj();
      v28 = v36[0];
      v29 = os_log_type_enabled(v23, v36[0]);
      if (backtrace_string)
      {
        if (v29)
        {
          *buf = 136446466;
          v40 = "nw_resolver_config_create_with_dictionary";
          v41 = 2082;
          v42 = backtrace_string;
          _os_log_impl(&dword_181A37000, v23, v28, "%{public}s called with null dictionary, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (!v22)
        {
          goto LABEL_64;
        }

        goto LABEL_63;
      }

      if (v29)
      {
        *buf = 136446210;
        v40 = "nw_resolver_config_create_with_dictionary";
        _os_log_impl(&dword_181A37000, v23, v28, "%{public}s called with null dictionary, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v23 = __nwlog_obj();
      v33 = v36[0];
      if (os_log_type_enabled(v23, v36[0]))
      {
        *buf = 136446210;
        v40 = "nw_resolver_config_create_with_dictionary";
        _os_log_impl(&dword_181A37000, v23, v33, "%{public}s called with null dictionary, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_61;
  }

  if (object_getClass(v1) != MEMORY[0x1E69E9E80])
  {
    v25 = __nwlog_obj();
    *buf = 136446210;
    v40 = "nw_resolver_config_create_with_dictionary";
    v22 = _os_log_send_and_compose_impl();

    v36[0] = OS_LOG_TYPE_ERROR;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v22, v36, &type))
    {
      goto LABEL_62;
    }

    if (v36[0] == OS_LOG_TYPE_FAULT)
    {
      v23 = __nwlog_obj();
      v26 = v36[0];
      if (os_log_type_enabled(v23, v36[0]))
      {
        *buf = 136446210;
        v40 = "nw_resolver_config_create_with_dictionary";
        _os_log_impl(&dword_181A37000, v23, v26, "%{public}s called with null (xpc_get_type(dictionary) == (&_xpc_type_dictionary))", buf, 0xCu);
      }
    }

    else if (type == OS_LOG_TYPE_INFO)
    {
      v30 = __nw_create_backtrace_string();
      v23 = __nwlog_obj();
      v31 = v36[0];
      v32 = os_log_type_enabled(v23, v36[0]);
      if (v30)
      {
        if (v32)
        {
          *buf = 136446466;
          v40 = "nw_resolver_config_create_with_dictionary";
          v41 = 2082;
          v42 = v30;
          _os_log_impl(&dword_181A37000, v23, v31, "%{public}s called with null (xpc_get_type(dictionary) == (&_xpc_type_dictionary)), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v30);
LABEL_62:
        if (!v22)
        {
LABEL_64:
          v3 = 0;
          goto LABEL_28;
        }

LABEL_63:
        free(v22);
        goto LABEL_64;
      }

      if (v32)
      {
        *buf = 136446210;
        v40 = "nw_resolver_config_create_with_dictionary";
        _os_log_impl(&dword_181A37000, v23, v31, "%{public}s called with null (xpc_get_type(dictionary) == (&_xpc_type_dictionary)), no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v23 = __nwlog_obj();
      v34 = v36[0];
      if (os_log_type_enabled(v23, v36[0]))
      {
        *buf = 136446210;
        v40 = "nw_resolver_config_create_with_dictionary";
        _os_log_impl(&dword_181A37000, v23, v34, "%{public}s called with null (xpc_get_type(dictionary) == (&_xpc_type_dictionary)), backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_61:

    goto LABEL_62;
  }

  v3 = objc_alloc_init(NWConcrete_nw_resolver_config);
  *v36 = v3;
  v37 = -1;
  if (v3)
  {
    v4 = v2;
    v5 = v3;
    v6 = v5;
    m_obj = v5->dictionary.m_obj;
    if ((*(&v5->dictionary + 8) & 1) != 0 && m_obj)
    {
      v5->dictionary.m_obj = 0;

      m_obj = v6->dictionary.m_obj;
    }

    v6->dictionary.m_obj = 0;

    v8 = v6->dictionary.m_obj;
    v6->dictionary.m_obj = v4;

    *(&v6->dictionary + 8) |= 1u;
    v9 = v6->dictionary.m_obj;
    v10 = v6;
    string = xpc_dictionary_get_string(v9, "Identifier");

    if (string)
    {
      uuid_parse(string, v10 + 24);
    }

    goto LABEL_28;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v12 = gLogObj;
  *buf = 136446210;
  v40 = "nw_resolver_config_create_with_dictionary";
  v13 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v35 = 0;
  if (!__nwlog_fault(v13, &type, &v35))
  {
    goto LABEL_26;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v14 = gLogObj;
    v15 = type;
    if (os_log_type_enabled(v14, type))
    {
      *buf = 136446210;
      v40 = "nw_resolver_config_create_with_dictionary";
      _os_log_impl(&dword_181A37000, v14, v15, "%{public}s [nw_resolver_config init] failed", buf, 0xCu);
    }

LABEL_25:

LABEL_26:
    if (!v13)
    {
      goto LABEL_28;
    }

LABEL_27:
    free(v13);
    goto LABEL_28;
  }

  if (v35 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v14 = gLogObj;
    v19 = type;
    if (os_log_type_enabled(v14, type))
    {
      *buf = 136446210;
      v40 = "nw_resolver_config_create_with_dictionary";
      _os_log_impl(&dword_181A37000, v14, v19, "%{public}s [nw_resolver_config init] failed, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_25;
  }

  v16 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v14 = gLogObj;
  v17 = type;
  v18 = os_log_type_enabled(v14, type);
  if (!v16)
  {
    if (v18)
    {
      *buf = 136446210;
      v40 = "nw_resolver_config_create_with_dictionary";
      _os_log_impl(&dword_181A37000, v14, v17, "%{public}s [nw_resolver_config init] failed, no backtrace", buf, 0xCu);
    }

    goto LABEL_25;
  }

  if (v18)
  {
    *buf = 136446466;
    v40 = "nw_resolver_config_create_with_dictionary";
    v41 = 2082;
    v42 = v16;
    _os_log_impl(&dword_181A37000, v14, v17, "%{public}s [nw_resolver_config init] failed, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v16);
  if (v13)
  {
    goto LABEL_27;
  }

LABEL_28:

  return v3;
}

void sub_181AA7BD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  nw::retained_ptr<void({block_pointer} {__strong})(void)>::~retained_ptr(va);

  _Unwind_Resume(a1);
}

void nw_resolver_config_set_provider_description(void *a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __nw_resolver_config_set_provider_description_block_invoke;
    v14[3] = &unk_1E6A3AC58;
    v5 = v3;
    v15 = v5;
    v16 = a2;
    os_unfair_lock_lock(v5 + 22);
    __nw_resolver_config_set_provider_description_block_invoke(v14);
    os_unfair_lock_unlock(v5 + 22);

    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v20 = "nw_resolver_config_set_provider_description";
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
        v20 = "nw_resolver_config_set_provider_description";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null config", buf, 0xCu);
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
          v20 = "nw_resolver_config_set_provider_description";
          v21 = 2082;
          v22 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v12)
      {
        *buf = 136446210;
        v20 = "nw_resolver_config_set_provider_description";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null config, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = v18;
      if (os_log_type_enabled(v8, v18))
      {
        *buf = 136446210;
        v20 = "nw_resolver_config_set_provider_description";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
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

void *sub_181AA8240(void *result, uint64_t a2, uint64_t a3)
{
  v4 = result[1];
  v3 = result[2];
  v6 = __OFADD__(v3, v4);
  v5 = v3 + v4;
  if (!v6)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      v6 = __OFSUB__(v5, *result);
      if (v5 < *result || (v5 -= *result, !v6))
      {
LABEL_9:
        *(a2 + 8 * v5) = a3;
        v7 = result[1];
        v6 = __OFADD__(v7, 1);
        v8 = v7 + 1;
        if (!v6)
        {
          result[1] = v8;
          return swift_unknownObjectRetain();
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v5 < 0)
    {
      v6 = __OFADD__(v5, *result);
      v5 += *result;
      if (v6)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_181AA82BC@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v8 = result;
  if (a5 == -1)
  {
    v12 = swift_unknownObjectRetain();
    v13 = nw_protocol_definition_copy_swift_identifier(v12);
    if (v13)
    {
      v14 = v13;
      swift_unknownObjectRelease();
      v15 = *(v14 + 16);
      LOBYTE(v10) = *(v14 + 17);
      v16 = *(v14 + 3);
      v17 = *(v14 + 4);
      v18 = *(v14 + 40);
      sub_181F49A24(v16, v17, v18);

      a4 = v17;
      a3 = v16;
      LOBYTE(a2) = v15;
      v25 = v18;
      goto LABEL_6;
    }

    identifier = nw_protocol_definition_get_identifier(v8);
    swift_unknownObjectRelease();
    result = sub_181AAC800(identifier, v21);
    LOBYTE(a2) = v21[0];
    LOBYTE(v10) = v21[1];
    a3 = v22;
    a4 = v23;
    v11 = v24;
  }

  else
  {
    v10 = a2 >> 8;
    v11 = a5 & 1;
  }

  v25 = v11;
LABEL_6:
  v21[0] = 1;
  v19 = v25;
  *a7 = a2;
  *(a7 + 1) = v10;
  *(a7 + 8) = a3;
  *(a7 + 16) = a4;
  *(a7 + 24) = v19;
  *(a7 + 40) = 0;
  *(a7 + 48) = 0;
  *(a7 + 32) = a6;
  *(a7 + 56) = 1;
  *(a7 + 64) = v8;
  return result;
}

uint64_t sub_181AA83E4(uint64_t a1)
{
  sub_181AA847C(a1);
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  return result;
}

uint64_t sub_181AA8428(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_181AA847C(uint64_t a1)
{
  v2 = *(a1 + qword_1ED411A88);

  if (v2 != 1)
  {
    swift_beginAccess();
    v6 = *(a1 + 24);
    v5 = *(a1 + 32);
    v7 = *(a1 + 40);
    v72 = *(a1 + 17);
    v73 = *(a1 + 16);
    v79 = v73;
    v80 = v72;
    v81 = v6;
    v82 = v5;
    v83 = v7;
    v74 = v7;
    sub_181F49A24(v6, v5, v7);
    if (qword_1ED410100 != -1)
    {
      swift_once();
    }

    v8 = qword_1ED411CF8;
    v9 = unk_1ED411D00;
    v10 = byte_1ED411D08;
    v75 = word_1ED411CF0;
    v76 = qword_1ED411CF8;
    v77 = unk_1ED411D00;
    v78 = byte_1ED411D08;
    v11 = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(&v79, &v75);
    v12 = v76;
    v13 = v77;
    v14 = v78;
    sub_181F49A24(v8, v9, v10);
    sub_181F48350(v12, v13, v14);
    if (v11)
    {
      sub_181F48350(v6, v5, v74);
      v3 = &qword_1ED40FD40;
      v4 = &unk_1EA83A3A0;
      goto LABEL_39;
    }

    v79 = v73;
    v80 = v72;
    v81 = v6;
    v82 = v5;
    v83 = v74;
    if (qword_1ED4100F8 != -1)
    {
      swift_once();
    }

    v15 = qword_1ED411CD8;
    v16 = unk_1ED411CE0;
    v17 = byte_1ED411CE8;
    v75 = word_1ED411CD0;
    v76 = qword_1ED411CD8;
    v77 = unk_1ED411CE0;
    v78 = byte_1ED411CE8;
    v18 = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(&v79, &v75);
    v19 = v76;
    v20 = v77;
    v21 = v78;
    sub_181F49A24(v15, v16, v17);
    sub_181F48350(v19, v20, v21);
    if (v18)
    {
      sub_181F48350(v6, v5, v74);
      v3 = &unk_1ED40F830;
      v4 = &unk_1EA838AB0;
      goto LABEL_39;
    }

    v79 = v73;
    v80 = v72;
    v81 = v6;
    v82 = v5;
    v83 = v74;
    if (qword_1ED4100E8 != -1)
    {
      swift_once();
    }

    v22 = qword_1ED411CB8;
    v23 = unk_1ED411CC0;
    v24 = byte_1ED411CC8;
    v75 = word_1ED411CB0;
    v76 = qword_1ED411CB8;
    v77 = unk_1ED411CC0;
    v78 = byte_1ED411CC8;
    v25 = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(&v79, &v75);
    v26 = v76;
    v27 = v77;
    v28 = v78;
    sub_181F49A24(v22, v23, v24);
    sub_181F48350(v26, v27, v28);
    if (v25)
    {
      sub_181F48350(v6, v5, v74);
      v3 = &unk_1ED40FB50;
      v4 = &unk_1EA838750;
      goto LABEL_39;
    }

    v79 = v73;
    v80 = v72;
    v81 = v6;
    v82 = v5;
    v83 = v74;
    if (qword_1ED410110 != -1)
    {
      swift_once();
    }

    v29 = qword_1ED410150;
    v30 = unk_1ED410158;
    v31 = byte_1ED410160;
    v75 = word_1ED410148;
    v76 = qword_1ED410150;
    v77 = unk_1ED410158;
    v78 = byte_1ED410160;
    v32 = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(&v79, &v75);
    v33 = v76;
    v34 = v77;
    v35 = v78;
    sub_181F49A24(v29, v30, v31);
    sub_181F48350(v33, v34, v35);
    if (v32)
    {
      sub_181F48350(v6, v5, v74);
      v3 = &unk_1ED40F850;
      v4 = &unk_1EA838710;
      goto LABEL_39;
    }

    v79 = v73;
    v80 = v72;
    v81 = v6;
    v82 = v5;
    v83 = v74;
    if (qword_1ED40FF48 != -1)
    {
      swift_once();
    }

    v36 = qword_1ED411C88;
    v37 = unk_1ED411C90;
    v38 = byte_1ED411C98;
    v75 = word_1ED411C80;
    v76 = qword_1ED411C88;
    v77 = unk_1ED411C90;
    v78 = byte_1ED411C98;
    v39 = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(&v79, &v75);
    v40 = v76;
    v41 = v77;
    v42 = v78;
    sub_181F49A24(v36, v37, v38);
    sub_181F48350(v40, v41, v42);
    if (v39)
    {
      sub_181F48350(v6, v5, v74);
      v3 = &unk_1EA838E90;
      v4 = &unk_1EA838DF0;
      goto LABEL_39;
    }

    v79 = v73;
    v80 = v72;
    v81 = v6;
    v82 = v5;
    v83 = v74;
    if (qword_1ED410268 != -1)
    {
      swift_once();
    }

    v43 = qword_1ED411D48;
    v44 = unk_1ED411D50;
    v45 = byte_1ED411D58;
    v75 = word_1ED411D40;
    v76 = qword_1ED411D48;
    v77 = unk_1ED411D50;
    v78 = byte_1ED411D58;
    v46 = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(&v79, &v75);
    v47 = v76;
    v48 = v77;
    v49 = v78;
    sub_181F49A24(v43, v44, v45);
    sub_181F48350(v47, v48, v49);
    if (v46)
    {
      sub_181F48350(v6, v5, v74);
      v3 = &unk_1ED410260;
      v4 = &unk_1EA838760;
      goto LABEL_39;
    }

    v79 = v73;
    v80 = v72;
    v81 = v6;
    v82 = v5;
    v83 = v74;
    if (qword_1ED40FF60 != -1)
    {
      swift_once();
    }

    v50 = qword_1ED411C30;
    v51 = unk_1ED411C38;
    v52 = byte_1ED411C40;
    v75 = word_1ED411C28;
    v76 = qword_1ED411C30;
    v77 = unk_1ED411C38;
    v78 = byte_1ED411C40;
    v53 = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(&v79, &v75);
    v54 = v76;
    v55 = v77;
    v56 = v78;
    sub_181F49A24(v50, v51, v52);
    sub_181F48350(v54, v55, v56);
    if (v53)
    {
      sub_181F48350(v6, v5, v74);
      v3 = &unk_1ED40FF50;
      v4 = &unk_1EA838DE0;
      goto LABEL_39;
    }

    v79 = v73;
    v80 = v72;
    v81 = v6;
    v82 = v5;
    v83 = v74;
    if (qword_1ED40FDA0 != -1)
    {
      swift_once();
    }

    v57 = qword_1ED40FDB0;
    v58 = unk_1ED40FDB8;
    v59 = byte_1ED40FDC0;
    v75 = word_1ED40FDA8;
    v76 = qword_1ED40FDB0;
    v77 = unk_1ED40FDB8;
    v78 = byte_1ED40FDC0;
    v60 = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(&v79, &v75);
    v61 = v76;
    v62 = v77;
    v63 = v78;
    sub_181F49A24(v57, v58, v59);
    sub_181F48350(v61, v62, v63);
    if (v60)
    {
      sub_181F48350(v6, v5, v74);
      v3 = &unk_1EA838E88;
      v4 = &unk_1EA839C50;
      goto LABEL_39;
    }

    v79 = v73;
    v80 = v72;
    v81 = v6;
    v82 = v5;
    v83 = v74;
    if (qword_1ED40FCD8 != -1)
    {
      swift_once();
    }

    v64 = qword_1ED411AF0;
    v65 = unk_1ED411AF8;
    v66 = byte_1ED411B00;
    v75 = word_1ED411AE8;
    v76 = qword_1ED411AF0;
    v77 = unk_1ED411AF8;
    v78 = byte_1ED411B00;
    v67 = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(&v79, &v75);
    v68 = v76;
    v69 = v77;
    v70 = v78;
    sub_181F49A24(v64, v65, v66);
    sub_181F48350(v68, v69, v70);
    sub_181F48350(v6, v5, v74);
    if (v67)
    {
      v3 = &unk_1EA838AE0;
      v4 = &unk_1EA838DD0;
      goto LABEL_39;
    }
  }

  v3 = &unk_1ED40FE08;
  v4 = &unk_1EA838DB8;
LABEL_39:
  sub_181AA8428(v3, v4);
  return a1;
}

BOOL nw_protocol_definition_is_equal_unsafe(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_protocol_definition_is_equal_unsafe";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v10, &type, &v19))
    {
      goto LABEL_54;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v22 = "nw_protocol_definition_is_equal_unsafe";
        v13 = "%{public}s called with null definition1";
LABEL_52:
        _os_log_impl(&dword_181A37000, v11, v12, v13, buf, 0xCu);
      }

LABEL_53:

LABEL_54:
      if (v10)
      {
        free(v10);
      }

      return 0;
    }

    if (v19 != 1)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v22 = "nw_protocol_definition_is_equal_unsafe";
        v13 = "%{public}s called with null definition1, backtrace limit exceeded";
        goto LABEL_52;
      }

      goto LABEL_53;
    }

    backtrace_string = __nw_create_backtrace_string();
    v11 = __nwlog_obj();
    v12 = type;
    v16 = os_log_type_enabled(v11, type);
    if (!backtrace_string)
    {
      if (v16)
      {
        *buf = 136446210;
        v22 = "nw_protocol_definition_is_equal_unsafe";
        v13 = "%{public}s called with null definition1, no backtrace";
        goto LABEL_52;
      }

      goto LABEL_53;
    }

    if (v16)
    {
      *buf = 136446466;
      v22 = "nw_protocol_definition_is_equal_unsafe";
      v23 = 2082;
      v24 = backtrace_string;
      v17 = "%{public}s called with null definition1, dumping backtrace:%{public}s";
LABEL_42:
      _os_log_impl(&dword_181A37000, v11, v12, v17, buf, 0x16u);
    }

LABEL_43:

    free(backtrace_string);
    goto LABEL_54;
  }

  if (!a2)
  {
    v14 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_protocol_definition_is_equal_unsafe";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v10, &type, &v19))
    {
      goto LABEL_54;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v22 = "nw_protocol_definition_is_equal_unsafe";
        v13 = "%{public}s called with null definition2";
        goto LABEL_52;
      }

      goto LABEL_53;
    }

    if (v19 != 1)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v22 = "nw_protocol_definition_is_equal_unsafe";
        v13 = "%{public}s called with null definition2, backtrace limit exceeded";
        goto LABEL_52;
      }

      goto LABEL_53;
    }

    backtrace_string = __nw_create_backtrace_string();
    v11 = __nwlog_obj();
    v12 = type;
    v18 = os_log_type_enabled(v11, type);
    if (!backtrace_string)
    {
      if (v18)
      {
        *buf = 136446210;
        v22 = "nw_protocol_definition_is_equal_unsafe";
        v13 = "%{public}s called with null definition2, no backtrace";
        goto LABEL_52;
      }

      goto LABEL_53;
    }

    if (v18)
    {
      *buf = 136446466;
      v22 = "nw_protocol_definition_is_equal_unsafe";
      v23 = 2082;
      v24 = backtrace_string;
      v17 = "%{public}s called with null definition2, dumping backtrace:%{public}s";
      goto LABEL_42;
    }

    goto LABEL_43;
  }

  if ((*(a1 + 192) & 0x40) != 0 || (*(a2 + 192) & 0x40) != 0)
  {
    return a1 == a2;
  }

  else
  {
    if (a1 == a2)
    {
      return 1;
    }

    if (uuid_compare((a1 + 48), (a2 + 48)))
    {
      return 0;
    }

    return *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
  }
}

uint64_t sub_181AA90F0(uint64_t a1)
{
  if (a1)
  {
    type metadata accessor for CProtocol.COptions();
    v2 = swift_allocObject();
    *(v2 + 16) = 0;
    *(v2 + 24) = a1;
    v3 = swift_unknownObjectRetain();
    options_allocator = nw_protocol_definition_get_options_allocator(v3);
    if (options_allocator)
    {
      *(v2 + 16) = options_allocator(a1);
    }
  }

  else
  {
    v5 = nw_protocol_copy_tls_definition();
    type metadata accessor for CProtocol.COptions();
    v2 = swift_allocObject();
    *(v2 + 16) = 0;
    *(v2 + 24) = v5;
    v6 = swift_unknownObjectRetain();
    v7 = nw_protocol_definition_get_options_allocator(v6);
    if (v7)
    {
      v8 = v7(v5);
      swift_unknownObjectRelease();
      *(v2 + 16) = v8;
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return v2;
}

uint64_t sub_181AA91BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t nw_protocol_definition_get_options_allocator(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1[11];
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_protocol_definition_get_options_allocator";
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
        v15 = "nw_protocol_definition_get_options_allocator";
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
          v15 = "nw_protocol_definition_get_options_allocator";
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
        v15 = "nw_protocol_definition_get_options_allocator";
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
        v15 = "nw_protocol_definition_get_options_allocator";
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

uint64_t _nw_protocol_options_get_handle_0(uint64_t a1)
{
  v2 = *(a1 + qword_1ED411A88);

  if (v2 == 1)
  {
    v3 = *(*a1 + 128);
    swift_beginAccess();
    v4 = *(a1 + v3);

    if (!v4)
    {
      return 0;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A3A0);
    v5 = sub_181AA8420(a1);

    if (!v5)
    {
      return 0;
    }

    v6 = *(*v5 + 128);
    swift_beginAccess();
    v4 = *(v5 + v6);

    if (!v4)
    {
      return 0;
    }
  }

  v7 = *(v4 + 16);

  return v7;
}

uint64_t sub_181AA964C(unsigned int a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = a1;
  v11 = a1 >> 8;
  *(v5 + 48) = xmmword_182AE8E90;
  v12 = qword_1ED411A90;
  v13 = sub_182AD2738();
  (*(*(v13 - 8) + 56))(v5 + v12, 1, 1, v13);
  *(v5 + qword_1ED411A88) = 0;
  v14 = *(*v5 + 128);
  *(v5 + v14) = 0;
  *(v5 + *(*v5 + 136)) = 0;
  *(v5 + *(*v5 + 144)) = 0;
  v15 = v5 + *(*v5 + 152);
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = v5 + *(*v5 + 160);
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = (v5 + *(*v5 + 168));
  *v17 = 0;
  v17[1] = 0;
  *(v5 + *(*v5 + 176)) = 0;
  *(v5 + *(*v5 + 184)) = 0;
  *(v5 + 16) = v10;
  *(v5 + 17) = v11;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4 & 1;
  swift_beginAccess();
  *(v5 + v14) = a5;
  return v5;
}

uint64_t nw_protocol_options_access_handle(void *a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_protocol_options_access_handle";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v9, &type, &v19))
    {
      goto LABEL_33;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v22 = "nw_protocol_options_access_handle";
        v12 = "%{public}s called with null options";
LABEL_31:
        _os_log_impl(&dword_181A37000, v10, v11, v12, buf, 0xCu);
      }

LABEL_32:

LABEL_33:
      if (v9)
      {
        free(v9);
      }

      goto LABEL_35;
    }

    if (v19 != 1)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v22 = "nw_protocol_options_access_handle";
        v12 = "%{public}s called with null options, backtrace limit exceeded";
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
        v22 = "nw_protocol_options_access_handle";
        v12 = "%{public}s called with null options, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v15)
    {
      *buf = 136446466;
      v22 = "nw_protocol_options_access_handle";
      v23 = 2082;
      v24 = backtrace_string;
      v16 = "%{public}s called with null options, dumping backtrace:%{public}s";
LABEL_21:
      _os_log_impl(&dword_181A37000, v10, v11, v16, buf, 0x16u);
    }

LABEL_22:

    free(backtrace_string);
    goto LABEL_33;
  }

  if (!v4)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_protocol_options_access_handle";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v9, &type, &v19))
    {
      goto LABEL_33;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v22 = "nw_protocol_options_access_handle";
        v12 = "%{public}s called with null access_block";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v19 != 1)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v22 = "nw_protocol_options_access_handle";
        v12 = "%{public}s called with null access_block, backtrace limit exceeded";
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
        v22 = "nw_protocol_options_access_handle";
        v12 = "%{public}s called with null access_block, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v17)
    {
      *buf = 136446466;
      v22 = "nw_protocol_options_access_handle";
      v23 = 2082;
      v24 = backtrace_string;
      v16 = "%{public}s called with null access_block, dumping backtrace:%{public}s";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  handle = _nw_protocol_options_get_handle(v3);
  if (!handle)
  {
LABEL_35:
    v7 = 0;
    goto LABEL_36;
  }

  v7 = v5[2](v5, handle);
LABEL_36:

  return v7;
}

id nw_parameters_create_quic_connection_with_tls_fallback(void *a1, void *a2, void *a3, void *a4)
{
  v42 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (!v7)
  {
    v20 = __nwlog_obj();
    *buf = 136446210;
    v39 = "nw_parameters_create_quic_connection_with_tls_fallback";
    v21 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v36 = 0;
    if (!__nwlog_fault(v21, &type, &v36))
    {
      goto LABEL_78;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v36 != 1)
      {
        v22 = __nwlog_obj();
        v23 = type;
        if (os_log_type_enabled(v22, type))
        {
          *buf = 136446210;
          v39 = "nw_parameters_create_quic_connection_with_tls_fallback";
          v24 = "%{public}s called with null configure_security, backtrace limit exceeded";
          goto LABEL_76;
        }

        goto LABEL_77;
      }

      backtrace_string = __nw_create_backtrace_string();
      v22 = __nwlog_obj();
      v23 = type;
      v30 = os_log_type_enabled(v22, type);
      if (!backtrace_string)
      {
        if (v30)
        {
          *buf = 136446210;
          v39 = "nw_parameters_create_quic_connection_with_tls_fallback";
          v24 = "%{public}s called with null configure_security, no backtrace";
          goto LABEL_76;
        }

        goto LABEL_77;
      }

      if (!v30)
      {
        goto LABEL_55;
      }

      *buf = 136446466;
      v39 = "nw_parameters_create_quic_connection_with_tls_fallback";
      v40 = 2082;
      v41 = backtrace_string;
      v31 = "%{public}s called with null configure_security, dumping backtrace:%{public}s";
      goto LABEL_54;
    }

    v22 = __nwlog_obj();
    v23 = type;
    if (!os_log_type_enabled(v22, type))
    {
      goto LABEL_77;
    }

    *buf = 136446210;
    v39 = "nw_parameters_create_quic_connection_with_tls_fallback";
    v24 = "%{public}s called with null configure_security";
LABEL_76:
    _os_log_impl(&dword_181A37000, v22, v23, v24, buf, 0xCu);
    goto LABEL_77;
  }

  if (!v10)
  {
    v25 = __nwlog_obj();
    *buf = 136446210;
    v39 = "nw_parameters_create_quic_connection_with_tls_fallback";
    v21 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v36 = 0;
    if (!__nwlog_fault(v21, &type, &v36))
    {
      goto LABEL_78;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v36 != 1)
      {
        v22 = __nwlog_obj();
        v23 = type;
        if (os_log_type_enabled(v22, type))
        {
          *buf = 136446210;
          v39 = "nw_parameters_create_quic_connection_with_tls_fallback";
          v24 = "%{public}s called with null configure_tcp_fallback, backtrace limit exceeded";
          goto LABEL_76;
        }

        goto LABEL_77;
      }

      backtrace_string = __nw_create_backtrace_string();
      v22 = __nwlog_obj();
      v23 = type;
      v32 = os_log_type_enabled(v22, type);
      if (!backtrace_string)
      {
        if (v32)
        {
          *buf = 136446210;
          v39 = "nw_parameters_create_quic_connection_with_tls_fallback";
          v24 = "%{public}s called with null configure_tcp_fallback, no backtrace";
          goto LABEL_76;
        }

        goto LABEL_77;
      }

      if (!v32)
      {
        goto LABEL_55;
      }

      *buf = 136446466;
      v39 = "nw_parameters_create_quic_connection_with_tls_fallback";
      v40 = 2082;
      v41 = backtrace_string;
      v31 = "%{public}s called with null configure_tcp_fallback, dumping backtrace:%{public}s";
      goto LABEL_54;
    }

    v22 = __nwlog_obj();
    v23 = type;
    if (!os_log_type_enabled(v22, type))
    {
      goto LABEL_77;
    }

    *buf = 136446210;
    v39 = "nw_parameters_create_quic_connection_with_tls_fallback";
    v24 = "%{public}s called with null configure_tcp_fallback";
    goto LABEL_76;
  }

  if (!v8)
  {
    v26 = __nwlog_obj();
    *buf = 136446210;
    v39 = "nw_parameters_create_quic_connection_with_tls_fallback";
    v21 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v36 = 0;
    if (!__nwlog_fault(v21, &type, &v36))
    {
      goto LABEL_78;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v36 != 1)
      {
        v22 = __nwlog_obj();
        v23 = type;
        if (os_log_type_enabled(v22, type))
        {
          *buf = 136446210;
          v39 = "nw_parameters_create_quic_connection_with_tls_fallback";
          v24 = "%{public}s called with null configure_quic_connection, backtrace limit exceeded";
          goto LABEL_76;
        }

        goto LABEL_77;
      }

      backtrace_string = __nw_create_backtrace_string();
      v22 = __nwlog_obj();
      v23 = type;
      v33 = os_log_type_enabled(v22, type);
      if (!backtrace_string)
      {
        if (v33)
        {
          *buf = 136446210;
          v39 = "nw_parameters_create_quic_connection_with_tls_fallback";
          v24 = "%{public}s called with null configure_quic_connection, no backtrace";
          goto LABEL_76;
        }

        goto LABEL_77;
      }

      if (!v33)
      {
        goto LABEL_55;
      }

      *buf = 136446466;
      v39 = "nw_parameters_create_quic_connection_with_tls_fallback";
      v40 = 2082;
      v41 = backtrace_string;
      v31 = "%{public}s called with null configure_quic_connection, dumping backtrace:%{public}s";
      goto LABEL_54;
    }

    v22 = __nwlog_obj();
    v23 = type;
    if (!os_log_type_enabled(v22, type))
    {
      goto LABEL_77;
    }

    *buf = 136446210;
    v39 = "nw_parameters_create_quic_connection_with_tls_fallback";
    v24 = "%{public}s called with null configure_quic_connection";
    goto LABEL_76;
  }

  if (v8 == &__block_literal_global_19409)
  {
    v27 = __nwlog_obj();
    *buf = 136446210;
    v39 = "nw_parameters_create_quic_connection_with_tls_fallback";
    v21 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v36 = 0;
    if (!__nwlog_fault(v21, &type, &v36))
    {
      goto LABEL_78;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v22 = __nwlog_obj();
      v23 = type;
      if (!os_log_type_enabled(v22, type))
      {
        goto LABEL_77;
      }

      *buf = 136446210;
      v39 = "nw_parameters_create_quic_connection_with_tls_fallback";
      v24 = "%{public}s called with null (configure_quic_connection != (_nw_parameters_configure_protocol_disable))";
      goto LABEL_76;
    }

    if (v36 != 1)
    {
      v22 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v22, type))
      {
        *buf = 136446210;
        v39 = "nw_parameters_create_quic_connection_with_tls_fallback";
        v24 = "%{public}s called with null (configure_quic_connection != (_nw_parameters_configure_protocol_disable)), backtrace limit exceeded";
        goto LABEL_76;
      }

      goto LABEL_77;
    }

    backtrace_string = __nw_create_backtrace_string();
    v22 = __nwlog_obj();
    v23 = type;
    v34 = os_log_type_enabled(v22, type);
    if (!backtrace_string)
    {
      if (v34)
      {
        *buf = 136446210;
        v39 = "nw_parameters_create_quic_connection_with_tls_fallback";
        v24 = "%{public}s called with null (configure_quic_connection != (_nw_parameters_configure_protocol_disable)), no backtrace";
        goto LABEL_76;
      }

      goto LABEL_77;
    }

    if (!v34)
    {
      goto LABEL_55;
    }

    *buf = 136446466;
    v39 = "nw_parameters_create_quic_connection_with_tls_fallback";
    v40 = 2082;
    v41 = backtrace_string;
    v31 = "%{public}s called with null (configure_quic_connection != (_nw_parameters_configure_protocol_disable)), dumping backtrace:%{public}s";
LABEL_54:
    _os_log_impl(&dword_181A37000, v22, v23, v31, buf, 0x16u);
LABEL_55:

    free(backtrace_string);
    goto LABEL_78;
  }

  if (v10 != &__block_literal_global_19409)
  {
    v12 = _Block_copy(v7);
    v13 = v12;
    if (v7 == &__block_literal_global_5)
    {

      v13 = 0;
    }

    v14 = _Block_copy(v8);
    v15 = v14;
    if (v8 == &__block_literal_global_2)
    {

      v15 = 0;
    }

    v16 = _Block_copy(v11);
    v17 = v16;
    if (v11 == &__block_literal_global_2)
    {

      v17 = 0;
    }

    quic_connection_with_tls_fallback = _nw_parameters_create_quic_connection_with_tls_fallback(v13, v15, v9, v17);

    goto LABEL_13;
  }

  v28 = __nwlog_obj();
  *buf = 136446210;
  v39 = "nw_parameters_create_quic_connection_with_tls_fallback";
  v21 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v36 = 0;
  if (__nwlog_fault(v21, &type, &v36))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v22 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v22, type))
      {
        *buf = 136446210;
        v39 = "nw_parameters_create_quic_connection_with_tls_fallback";
        v24 = "%{public}s called with null (configure_tcp_fallback != (_nw_parameters_configure_protocol_disable))";
        goto LABEL_76;
      }

LABEL_77:

      goto LABEL_78;
    }

    if (v36 != 1)
    {
      v22 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v22, type))
      {
        *buf = 136446210;
        v39 = "nw_parameters_create_quic_connection_with_tls_fallback";
        v24 = "%{public}s called with null (configure_tcp_fallback != (_nw_parameters_configure_protocol_disable)), backtrace limit exceeded";
        goto LABEL_76;
      }

      goto LABEL_77;
    }

    backtrace_string = __nw_create_backtrace_string();
    v22 = __nwlog_obj();
    v23 = type;
    v35 = os_log_type_enabled(v22, type);
    if (!backtrace_string)
    {
      if (v35)
      {
        *buf = 136446210;
        v39 = "nw_parameters_create_quic_connection_with_tls_fallback";
        v24 = "%{public}s called with null (configure_tcp_fallback != (_nw_parameters_configure_protocol_disable)), no backtrace";
        goto LABEL_76;
      }

      goto LABEL_77;
    }

    if (!v35)
    {
      goto LABEL_55;
    }

    *buf = 136446466;
    v39 = "nw_parameters_create_quic_connection_with_tls_fallback";
    v40 = 2082;
    v41 = backtrace_string;
    v31 = "%{public}s called with null (configure_tcp_fallback != (_nw_parameters_configure_protocol_disable)), dumping backtrace:%{public}s";
    goto LABEL_54;
  }

LABEL_78:
  if (v21)
  {
    free(v21);
  }

  quic_connection_with_tls_fallback = 0;
LABEL_13:

  return quic_connection_with_tls_fallback;
}

id _nw_parameters_create_quic_connection_with_tls_fallback(const void *a1, const void *a2, void *a3, const void *a4)
{
  v7 = _Block_copy(a1);
  v8 = _Block_copy(a2);
  v9 = _Block_copy(a4);
  if (v7)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v7;
    v7 = sub_181AACB1C;
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_6:
    v11 = 0;
    if (v9)
    {
      goto LABEL_4;
    }

LABEL_7:
    v12 = 0;
    goto LABEL_8;
  }

  v10 = 0;
  if (!v8)
  {
    goto LABEL_6;
  }

LABEL_3:
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  v8 = sub_181AACB1C;
  if (!v9)
  {
    goto LABEL_7;
  }

LABEL_4:
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  v9 = sub_181AACB1C;
LABEL_8:
  v13 = sub_181AAA7B8(v7, v10, v8, v11, a3, v9, v12);
  sub_181A554F4(v9);
  sub_181A554F4(v8);
  sub_181A554F4(v7);
  return v13;
}

id sub_181AAA7B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  if (a5)
  {
    v14 = a5;
  }

  if (a1)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = a1;
    *(v15 + 24) = a2;

    v22 = sub_181AA9530;
    v23 = a5;
    if (a3)
    {
LABEL_5:
      v16 = swift_allocObject();
      *(v16 + 16) = a3;
      *(v16 + 24) = a4;

      v17 = sub_181AA9530;
      goto LABEL_8;
    }
  }

  else
  {
    v22 = 0;
    v23 = a5;
    if (a3)
    {
      goto LABEL_5;
    }
  }

  v17 = 0;
LABEL_8:
  if (a6)
  {
    v18 = swift_allocObject();
    *(v18 + 16) = a6;
    *(v18 + 24) = a7;

    v19 = sub_181AA9530;
  }

  else
  {
    v19 = 0;
  }

  sub_181AA39C0(a1);
  sub_181AA39C0(a3);
  sub_181AA39C0(a6);
  sub_181AAA9A8(v22, v17, v23, v19, __src);
  v20 = sub_1821F2D80();
  sub_181A554F4(v22);
  sub_181A554F4(v17);
  sub_181A554F4(v19);

  memcpy(__dst, __src, 0x188uLL);
  sub_181F48214(__dst);
  return v20;
}

void *sub_181AAA9A8@<X0>(void (*a1)(uint64_t)@<X0>, void (*a2)(uint64_t)@<X2>, uint64_t a3@<X4>, void (*a4)(uint64_t)@<X5>, void *a5@<X8>)
{
  *&__dst[8] = 0;
  *__dst = 0;
  __dst[16] = 1;
  *&__dst[25] = 0;
  *&__dst[17] = 0;
  __dst[33] = 1;
  memset(&__dst[36], 0, 32);
  __dst[68] = 1;
  sub_181A53D78(&__dst[128]);
  *&__dst[328] = 0;
  *&__dst[336] = 0xF000000000000000;
  Parameters.init(noInternetProtocol:)(0, __src);
  v6 = v76;
  v7 = v77;
  *&__dst[360] = v78;
  *&__dst[376] = v79;
  v91[8] = *&__dst[256];
  v91[9] = *&__dst[272];
  v91[10] = *&__dst[288];
  v91[4] = *&__dst[192];
  v91[5] = *&__dst[208];
  v91[6] = *&__dst[224];
  v91[7] = *&__dst[240];
  v91[0] = *&__dst[128];
  v91[1] = *&__dst[144];
  v91[2] = *&__dst[160];
  v91[3] = *&__dst[176];
  sub_181A41E7C(v91);
  sub_181D9D680(0, 0xF000000000000000);
  memcpy(__dst, __src, 0x158uLL);
  *&__dst[344] = v6;
  *&__dst[352] = v7;

  if (nw_protocol_copy_tls_definition())
  {
    v8 = swift_unknownObjectRetain();
    v9 = v8;
  }

  else
  {
    v8 = nw_protocol_copy_tls_definition();
    v9 = 0;
  }

  sub_181AA82B4(__src, v8, 0, 0, 0, 255, v9);
  v73[0] = *__src;
  v73[1] = *&__src[16];
  v73[2] = *&__src[32];
  v73[3] = *&__src[48];
  v74 = *&__src[64];
  v10 = *&__src[8];
  v11 = *&__src[16];
  v12 = __src[24];
  v13 = *&__src[32];
  v14 = *__src;
  sub_181F49A24(*&__src[8], *&__src[16], __src[24]);
  v15 = sub_181AA90F0(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A3A0);
  swift_allocObject();
  v16 = sub_181AA94EC(v14, v10, v11, v12, v15);
  sub_181F49A88(v73, &unk_1EA838740);
  if (a1)
  {

    a1(v16);
    sub_181A554F4(a1);
  }

  if (qword_1ED40FF40 != -1)
  {
    swift_once();
  }

  v17 = *(&xmmword_1ED411BF0 + 1);
  v18 = unk_1ED411C00;
  v19 = byte_1ED411C08;
  v20 = xmmword_1ED411BF0;
  type metadata accessor for QUICConnectionProtocol.QUICConnectionOptions();
  swift_allocObject();
  sub_181F49A24(v17, v18, v19);
  v21 = sub_181AACB6C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  swift_allocObject();
  v22 = sub_181AA94EC(v20, v17, v18, v19, v21);
  v23 = *(*v22 + 184);
  swift_beginAccess();
  *(v22 + v23) = 1;
  v24 = *(*v22 + 128);
  swift_beginAccess();
  v25 = *(v22 + v24);
  if (v25)
  {
    v26 = sub_181AA8428(&qword_1ED40FD40, &qword_1EA83A3A0);
    *(v25 + 112) = v16;
    *(v25 + 120) = v26;

    swift_unknownObjectRelease();
  }

  if (a2)
  {

    a2(v22);
    sub_181A554F4(a2);
  }

  v54 = a1;
  if (qword_1ED410038 != -1)
  {
    swift_once();
  }

  v27 = *(&xmmword_1ED411C48 + 1);
  v28 = unk_1ED411C58;
  v29 = byte_1ED411C60;
  memset(v88, 0, sizeof(v88));
  v89 = 0;
  v90 = 0x100000201;
  v30 = xmmword_1ED411C48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0);
  swift_allocObject();
  v31 = sub_181AAC92C(v30, v27, v28, v29, v88);
  sub_181F49A24(v27, v28, v29);
  if (a4)
  {
    sub_181AA39C0(a4);
    a4(v31);
    sub_181A554F4(a4);
  }

  v32 = *(v6 + 32);
  v33 = *(v6 + 40);
  *(v6 + 32) = v22;
  *(v6 + 40) = 0x6000000000000000;

  sub_181A5301C(v32, v33);

  *&v69 = 0;
  DWORD2(v69) = 0;
  BYTE12(v69) = 1;
  *(&v69 + 13) = 6;
  *&v70 = 0;
  BYTE8(v70) = 0;
  v34 = MEMORY[0x1E69E7CC0];
  *&v71 = MEMORY[0x1E69E7CC0];
  *(&v71 + 1) = MEMORY[0x1E69E7CC0];
  v72 = 2;

  sub_181B28748(v35, 2, &v69, qword_1ED40FB50, &unk_1EA838750, &unk_182AE4BD0, 0x6000000000000000);

  BYTE8(v70) = 2;
  v72 = 18;
  *&v65 = 0;
  DWORD2(v65) = 0;
  BYTE12(v65) = 1;
  *(&v65 + 13) = 6;
  BYTE8(v66) = 0;
  *&v67 = v34;
  *(&v67 + 1) = v34;
  v68 = 0;
  *&v66 = a3;

  sub_181B285A8(v36, 3, &v65);

  sub_181B28748(v37, 2, &v65, &unk_1ED40FF50, &unk_1EA838DE0, &unk_182AE6F00, 0x2000000000000000);

  v68 = 16;
  v38 = *sub_182AD2388();

  *&__dst[352] = v38;
  v86[0] = v69;
  v86[1] = v70;
  v86[2] = v71;
  v87 = v72;
  v40 = *(v38 + 24);
  v41 = v40 + 1;
  if (__OFADD__(v40, 1))
  {
    __break(1u);
    goto LABEL_31;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (*(v38 + 16) < v41 || (isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_181B29AC4(isUniquelyReferenced_nonNull_native, v41);
    v38 = *&__dst[352];
  }

  result = sub_181B29C9C((v38 + 16), v38 + 40, v86);
  v43 = *&__dst[352];
  if (!*&__dst[352])
  {
    goto LABEL_26;
  }

  v84[0] = v65;
  v84[1] = v66;
  v84[2] = v67;
  v85 = v68;
  v44 = *(*&__dst[352] + 24);
  v45 = v44 + 1;
  if (__OFADD__(v44, 1))
  {
LABEL_31:
    __break(1u);
    return result;
  }

  v46 = swift_isUniquelyReferenced_nonNull_native();
  if (*(v43 + 16) < v45 || (v46 & 1) == 0)
  {
    sub_181B29AC4(v46, v45);
    v43 = *&__dst[352];
  }

  sub_181B29C9C((v43 + 16), v43 + 40, v84);
LABEL_26:
  ProtocolStack.transport.getter(&v63);
  if ((~v64 & 0xF000000000000007) != 0)
  {
    sub_181A53008(v63, v64);

    sub_181A554F4(a4);
    sub_181A554F4(a2);

    sub_181A554F4(v54);
    v59 = v69;
    v60 = v70;
    v61 = v71;
    v62 = v72;
    sub_181B29DA0(&v59);
  }

  else
  {
    v47 = *(&xmmword_1ED411C48 + 1);
    v48 = unk_1ED411C58;
    v49 = byte_1ED411C60;
    v50 = xmmword_1ED411C48;

    sub_181A554F4(a4);
    sub_181A554F4(a2);

    sub_181A554F4(v54);
    v59 = v69;
    v60 = v70;
    v61 = v71;
    v62 = v72;
    sub_181B29DA0(&v59);
    memset(v81, 0, sizeof(v81));
    v82 = 0;
    v83 = 0x100000201;
    swift_allocObject();
    v51 = sub_181AAC92C(v50, v47, v48, v49, v81);
    v52 = *(v6 + 32);
    v53 = *(v6 + 40);
    *(v6 + 32) = v51;
    *(v6 + 40) = 0x2000000000000000;
    sub_181F49A24(v47, v48, v49);
    sub_181A5301C(v52, v53);
  }

  __dst[113] = 2;
  v59 = v65;
  v60 = v66;
  v61 = v67;
  v62 = v68;
  sub_181B29DA0(&v59);
  return memcpy(a5, __dst, 0x188uLL);
}

uint64_t _nw_protocol_identifier_create_swift_identifier(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = swift_unknownObjectRetain();
  identifier = nw_protocol_definition_get_identifier(v1);
  sub_181AAC800(identifier, &v9);
  v3 = v9;
  v4 = v10;
  v5 = v11;
  v6 = v12;
  type metadata accessor for __NWProtocolIdentifier();
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = v4;
  *(v7 + 32) = v5;
  *(v7 + 40) = v6;
  swift_unknownObjectRelease();
  return v7;
}

uint64_t nw_context_copy_cache_context(void *a1)
{
  v1 = a1;
  v2 = v1;
  if ((v1[152] & 4) != 0 || (v3 = v1, v4 = v2[152] & 3, v3, v4))
  {
    v5 = *(v2 + 5);
    if (!v5)
    {
      v5 = v2;
    }
  }

  else
  {
    if (nw_context_copy_implicit_context::onceToken[0] != -1)
    {
      dispatch_once(nw_context_copy_implicit_context::onceToken, &__block_literal_global_18);
    }

    v5 = nw_context_copy_implicit_context::implicit_context;
  }

  v6 = v5;
  if (v6[3])
  {
    goto LABEL_8;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v7 = gLogObj;
  os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
  v8 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v8);
  if (!result)
  {
    free(v8);
LABEL_8:

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t nw_endpoint_create_host_with_numeric_port(const char *a1, uint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v18 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_endpoint_create_host_with_numeric_port";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v7, &type, &v22))
    {
      goto LABEL_26;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v19 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_25;
      }

      *buf = 136446210;
      v25 = "nw_endpoint_create_host_with_numeric_port";
      v10 = "%{public}s called with null hostname";
      goto LABEL_44;
    }

    if (v22 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v19 = type;
      v21 = os_log_type_enabled(v8, type);
      if (backtrace_string)
      {
        if (v21)
        {
          *buf = 136446466;
          v25 = "nw_endpoint_create_host_with_numeric_port";
          v26 = 2082;
          v27 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v19, "%{public}s called with null hostname, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_26:
        if (!v7)
        {
          return 0;
        }

LABEL_27:
        free(v7);
        return 0;
      }

      if (!v21)
      {
        goto LABEL_25;
      }

      *buf = 136446210;
      v25 = "nw_endpoint_create_host_with_numeric_port";
      v10 = "%{public}s called with null hostname, no backtrace";
    }

    else
    {
      v8 = __nwlog_obj();
      v19 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_25;
      }

      *buf = 136446210;
      v25 = "nw_endpoint_create_host_with_numeric_port";
      v10 = "%{public}s called with null hostname, backtrace limit exceeded";
    }

LABEL_44:
    v15 = v8;
    v16 = v19;
    v17 = 12;
    goto LABEL_24;
  }

  v4 = strlen(a1);
  if (!v4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    *buf = 136446466;
    v25 = "nw_endpoint_create_host_with_numeric_port";
    v26 = 2082;
    v27 = "hostname";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v7, &type, &v22))
    {
      goto LABEL_26;
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
        v25 = "nw_endpoint_create_host_with_numeric_port";
        v26 = 2082;
        v27 = "hostname";
        v10 = "%{public}s invalid empty string %{public}s";
LABEL_22:
        v15 = v8;
        v16 = v9;
LABEL_23:
        v17 = 22;
LABEL_24:
        _os_log_impl(&dword_181A37000, v15, v16, v10, buf, v17);
      }
    }

    else
    {
      if (v22 == 1)
      {
        v12 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v13 = type;
        v14 = os_log_type_enabled(v8, type);
        if (v12)
        {
          if (v14)
          {
            *buf = 136446722;
            v25 = "nw_endpoint_create_host_with_numeric_port";
            v26 = 2082;
            v27 = "hostname";
            v28 = 2082;
            v29 = v12;
            _os_log_impl(&dword_181A37000, v8, v13, "%{public}s invalid empty string %{public}s, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(v12);
          if (!v7)
          {
            return 0;
          }

          goto LABEL_27;
        }

        if (!v14)
        {
          goto LABEL_25;
        }

        *buf = 136446466;
        v25 = "nw_endpoint_create_host_with_numeric_port";
        v26 = 2082;
        v27 = "hostname";
        v10 = "%{public}s invalid empty string %{public}s, no backtrace";
        v15 = v8;
        v16 = v13;
        goto LABEL_23;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446466;
        v25 = "nw_endpoint_create_host_with_numeric_port";
        v26 = 2082;
        v27 = "hostname";
        v10 = "%{public}s invalid empty string %{public}s, backtrace limit exceeded";
        goto LABEL_22;
      }
    }

LABEL_25:

    goto LABEL_26;
  }

  if (v4 >= 0x400)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v25 = "nw_endpoint_create_host_with_numeric_port";
      v26 = 2082;
      v27 = "hostname";
      v28 = 1024;
      LODWORD(v29) = 1024;
      _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_ERROR, "%{public}s %{public}s is longer than %d", buf, 0x1Cu);
    }

    return 0;
  }

  return _nw_endpoint_create_host_with_numeric_port(a1, a2);
}

char *nw_protocol_definition_get_identifier(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1 + 8;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_protocol_definition_get_identifier";
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
        v15 = "nw_protocol_definition_get_identifier";
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
          v15 = "nw_protocol_definition_get_identifier";
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
        v15 = "nw_protocol_definition_get_identifier";
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
        v15 = "nw_protocol_definition_get_identifier";
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

uint64_t sub_181AABFEC(void *a1, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, char a7)
{
  __src[4] = *MEMORY[0x1E69E9840];
  __src[0] = a3;
  __src[1] = a4;
  __src[2] = a5;
  __src[3] = a6;
  if (a7)
  {
    if (!a3)
    {
      return 0;
    }

    if ((a3 & 0xFF00) != 0)
    {
      if ((a3 & 0xFF0000) != 0)
      {
        if ((a3 & 0xFF000000) != 0)
        {
          if ((a3 & 0xFF00000000) != 0)
          {
            if ((a3 & 0xFF0000000000) != 0)
            {
              if ((a3 & 0xFF000000000000) != 0)
              {
                if (HIBYTE(a3))
                {
                  if (a4)
                  {
                    if ((a4 & 0xFF00) != 0)
                    {
                      if ((a4 & 0xFF0000) != 0)
                      {
                        if ((a4 & 0xFF000000) != 0)
                        {
                          if ((a4 & 0xFF00000000) != 0)
                          {
                            if ((a4 & 0xFF0000000000) != 0)
                            {
                              if ((a4 & 0xFF000000000000) != 0)
                              {
                                if (HIBYTE(a4))
                                {
                                  if (a5)
                                  {
                                    if ((a5 & 0xFF00) != 0)
                                    {
                                      if ((a5 & 0xFF0000) != 0)
                                      {
                                        if ((a5 & 0xFF000000) != 0)
                                        {
                                          if ((a5 & 0xFF00000000) != 0)
                                          {
                                            if ((a5 & 0xFF0000000000) != 0)
                                            {
                                              if ((a5 & 0xFF000000000000) != 0)
                                              {
                                                if (HIBYTE(a5))
                                                {
                                                  if (a6)
                                                  {
                                                    if ((a6 & 0xFF00) != 0)
                                                    {
                                                      if ((a6 & 0xFF0000) != 0)
                                                      {
                                                        if ((a6 & 0xFF000000) != 0)
                                                        {
                                                          if ((a6 & 0xFF00000000) != 0)
                                                          {
                                                            if ((a6 & 0xFF0000000000) != 0)
                                                            {
                                                              if ((a6 & 0xFF000000000000) != 0)
                                                              {
                                                                if (HIBYTE(a6))
                                                                {
                                                                  v7 = 32;
                                                                }

                                                                else
                                                                {
                                                                  v7 = 31;
                                                                }
                                                              }

                                                              else
                                                              {
                                                                v7 = 30;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              v7 = 29;
                                                            }
                                                          }

                                                          else
                                                          {
                                                            v7 = 28;
                                                          }
                                                        }

                                                        else
                                                        {
                                                          v7 = 27;
                                                        }
                                                      }

                                                      else
                                                      {
                                                        v7 = 26;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      v7 = 25;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    v7 = 24;
                                                  }
                                                }

                                                else
                                                {
                                                  v7 = 23;
                                                }
                                              }

                                              else
                                              {
                                                v7 = 22;
                                              }
                                            }

                                            else
                                            {
                                              v7 = 21;
                                            }
                                          }

                                          else
                                          {
                                            v7 = 20;
                                          }
                                        }

                                        else
                                        {
                                          v7 = 19;
                                        }
                                      }

                                      else
                                      {
                                        v7 = 18;
                                      }
                                    }

                                    else
                                    {
                                      v7 = 17;
                                    }
                                  }

                                  else
                                  {
                                    v7 = 16;
                                  }
                                }

                                else
                                {
                                  v7 = 15;
                                }
                              }

                              else
                              {
                                v7 = 14;
                              }
                            }

                            else
                            {
                              v7 = 13;
                            }
                          }

                          else
                          {
                            v7 = 12;
                          }
                        }

                        else
                        {
                          v7 = 11;
                        }
                      }

                      else
                      {
                        v7 = 10;
                      }
                    }

                    else
                    {
                      v7 = 9;
                    }
                  }

                  else
                  {
                    v7 = 8;
                  }
                }

                else
                {
                  v7 = 7;
                }
              }

              else
              {
                v7 = 6;
              }
            }

            else
            {
              v7 = 5;
            }
          }

          else
          {
            v7 = 4;
          }
        }

        else
        {
          v7 = 3;
        }
      }

      else
      {
        v7 = 2;
      }
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 32;
  }

  if (a2)
  {
    v8 = v7 >= a2 ? a2 : v7;
    memcpy(a1, __src, v8);
    if (v8 >= 0x21)
    {
      __break(1u);
      return 0;
    }
  }

  return v7;
}

NWConcrete_nw_protocol_definition *nw_protocol_definition_create_with_identifier(__int128 *a1)
{
  v33 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = objc_alloc_init(NWConcrete_nw_protocol_definition);
    v3 = v2;
    if (v2)
    {
      v4 = *a1;
      v5 = a1[1];
      *&v2->identifier.level = *(a1 + 4);
      *&v2->identifier.name[16] = v5;
      *v2->identifier.name = v4;
      if (*(a1 + 9) == 2)
      {
        v6 = 3;
      }

      else
      {
        v6 = 2;
      }

      v2->variant = v6;
      swift_identifier = _nw_protocol_identifier_create_swift_identifier(v2);
      swift_protocol_identifier = v3->swift_protocol_identifier;
      v3->swift_protocol_identifier = swift_identifier;

      v9 = v3;
      goto LABEL_14;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    *buf = 136446210;
    v30 = "nw_protocol_definition_create_with_identifier";
    v11 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (__nwlog_fault(v11, &type, &v27))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v12 = gLogObj;
        v13 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v30 = "nw_protocol_definition_create_with_identifier";
          _os_log_impl(&dword_181A37000, v12, v13, "%{public}s [nw_protocol_definition init] failed", buf, 0xCu);
        }
      }

      else if (v27 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v12 = gLogObj;
        v16 = type;
        v17 = os_log_type_enabled(v12, type);
        if (backtrace_string)
        {
          if (v17)
          {
            *buf = 136446466;
            v30 = "nw_protocol_definition_create_with_identifier";
            v31 = 2082;
            v32 = backtrace_string;
            _os_log_impl(&dword_181A37000, v12, v16, "%{public}s [nw_protocol_definition init] failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          if (!v11)
          {
            goto LABEL_14;
          }

          goto LABEL_13;
        }

        if (v17)
        {
          *buf = 136446210;
          v30 = "nw_protocol_definition_create_with_identifier";
          _os_log_impl(&dword_181A37000, v12, v16, "%{public}s [nw_protocol_definition init] failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v12 = gLogObj;
        v18 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v30 = "nw_protocol_definition_create_with_identifier";
          _os_log_impl(&dword_181A37000, v12, v18, "%{public}s [nw_protocol_definition init] failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v11)
    {
LABEL_14:

      return v3;
    }

LABEL_13:
    free(v11);
    goto LABEL_14;
  }

  v19 = __nwlog_obj();
  *buf = 136446210;
  v30 = "nw_protocol_definition_create_with_identifier";
  v20 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v27 = 0;
  if (__nwlog_fault(v20, &type, &v27))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v21 = __nwlog_obj();
      v22 = type;
      if (os_log_type_enabled(v21, type))
      {
        *buf = 136446210;
        v30 = "nw_protocol_definition_create_with_identifier";
        _os_log_impl(&dword_181A37000, v21, v22, "%{public}s called with null identifier", buf, 0xCu);
      }
    }

    else if (v27 == 1)
    {
      v23 = __nw_create_backtrace_string();
      v21 = __nwlog_obj();
      v24 = type;
      v25 = os_log_type_enabled(v21, type);
      if (v23)
      {
        if (v25)
        {
          *buf = 136446466;
          v30 = "nw_protocol_definition_create_with_identifier";
          v31 = 2082;
          v32 = v23;
          _os_log_impl(&dword_181A37000, v21, v24, "%{public}s called with null identifier, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v23);
        goto LABEL_44;
      }

      if (v25)
      {
        *buf = 136446210;
        v30 = "nw_protocol_definition_create_with_identifier";
        _os_log_impl(&dword_181A37000, v21, v24, "%{public}s called with null identifier, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v21 = __nwlog_obj();
      v26 = type;
      if (os_log_type_enabled(v21, type))
      {
        *buf = 136446210;
        v30 = "nw_protocol_definition_create_with_identifier";
        _os_log_impl(&dword_181A37000, v21, v26, "%{public}s called with null identifier, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_44:
  if (v20)
  {
    free(v20);
  }

  return 0;
}

uint64_t sub_181AAC800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 36);
  if (v3 >= 6)
  {
    v5 = 3;
  }

  else
  {
    v5 = 0x40302010003uLL >> (8 * v3);
  }

  *a2 = v5;
  v6 = 2 * (v4 == 3);
  if (v4 == 2)
  {
    v6 = 1;
  }

  *(a2 + 1) = v6;
  v7 = sub_182AD30D8();
  v9 = v8;

  result = sub_181FB974C();
  v11 = result;
  if (result != 39)
  {

    v9 = 0;
    v7 = v11;
  }

  *(a2 + 8) = v7;
  *(a2 + 16) = v9;
  *(a2 + 24) = v11 == 39;
  return result;
}

uint64_t sub_181AAC92C(unsigned int a1, uint64_t a2, uint64_t a3, char a4, _OWORD *a5)
{
  v10 = a1;
  v11 = a1 >> 8;
  *(v5 + 48) = xmmword_182AE8E90;
  v12 = qword_1ED411A90;
  v13 = sub_182AD2738();
  (*(*(v13 - 8) + 56))(v5 + v12, 1, 1, v13);
  *(v5 + qword_1ED411A88) = 0;
  v14 = v5 + *(*v5 + 128);
  *v14 = 0u;
  *(v14 + 16) = 0u;
  *(v14 + 32) = 0;
  *(v14 + 40) = 2;
  *(v5 + *(*v5 + 136)) = 0;
  *(v5 + *(*v5 + 144)) = 0;
  v15 = v5 + *(*v5 + 152);
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = v5 + *(*v5 + 160);
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = (v5 + *(*v5 + 168));
  *v17 = 0;
  v17[1] = 0;
  *(v5 + *(*v5 + 176)) = 0;
  *(v5 + *(*v5 + 184)) = 0;
  *(v5 + 16) = v10;
  *(v5 + 17) = v11;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4 & 1;
  swift_beginAccess();
  v18 = a5[1];
  *v14 = *a5;
  *(v14 + 16) = v18;
  *(v14 + 32) = a5[2];
  return v5;
}

uint64_t type metadata accessor for QUICConnectionProtocol.QUICConnectionOptions()
{
  result = qword_1ED40FD88;
  if (!qword_1ED40FD88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_181AACB6C()
{
  v1 = v0;
  *&v2 = -1;
  *(&v2 + 1) = -1;
  *(v0 + 1) = v2;
  *(v0 + 2) = v2;
  *(v0 + 3) = v2;
  *(v0 + 4) = 0u;
  *(v0 + 5) = 0u;
  *(v0 + 6) = 0u;
  *(v0 + 7) = 0u;
  *(v0 + 8) = 0u;
  *(v0 + 9) = 0u;
  v3 = OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_quicState;
  v4 = sub_182AD2868();
  v5 = *(*(v4 - 8) + 56);
  v5(&v1[v3], 1, 1, v4);
  v5(&v1[OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_tlsState], 1, 1, v4);
  v5(&v1[OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_sourceConnectionID], 1, 1, v4);
  *&v1[OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_sessionStateUpdateBlock] = 0;
  *&v1[OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_sessionStateUpdateQueue] = 0;
  *&v1[OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_maxStreamsUpdateQueue] = 0;
  *&v1[OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_maxStreamsUpdateBlock] = 0;
  *&v1[OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions__idleTimeout] = -1;
  v1[OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_streamPathAffinity] = 0;
  v1[OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_enableL4S] = 2;
  *&v1[OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions__maxUDPPayloadSize] = -1;
  *&v1[OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions__maxDatagramFrameSize] = 0;
  *&v1[OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions__initialPacketSize] = 0;
  *&v1[OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions__keepaliveCount] = 0;
  v1[OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions__ackDelaySize] = 0;
  v1[OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions__maxPathsPerInterface] = 0;
  v20 = OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions__keyIndex;
  v1[OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions__keyIndex] = 0;
  v6 = OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions__pqtlsMode;
  *&v1[OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions__pqtlsMode] = 0;
  *&v1[OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_pmtudUpdateInterval] = 0;
  *&v1[OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_pmtudUpdateBlock] = 0;
  *&v1[OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_pmtudUpdateQueue] = 0;
  v7 = OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags;
  *&v1[OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags] = 0;
  if (nw_protocol_copy_tls_definition())
  {
    v8 = swift_unknownObjectRetain();
    v9 = v8;
  }

  else
  {
    v8 = nw_protocol_copy_tls_definition();
    v9 = 0;
  }

  sub_181AA82B4(&v23, v8, 0, 0, 0, 255, v9);
  v21[0] = v23;
  v21[1] = v24;
  v21[2] = v25;
  v21[3] = v26;
  v22 = v27;
  v10 = *(&v23 + 1);
  v11 = v24;
  v12 = BYTE8(v24);
  v13 = v25;
  v14 = v23;
  sub_181F49A24(*(&v23 + 1), v24, SBYTE8(v24));
  v15 = sub_181AA90F0(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A3A0);
  swift_allocObject();
  v16 = sub_181AA94EC(v14, v10, v11, v12, v15);
  sub_181F49A88(v21, &unk_1EA838740);
  v17 = sub_181AB3DCC(&qword_1ED40FD40, &qword_1EA83A3A0);
  *(v1 + 14) = v16;
  *(v1 + 15) = v17;
  swift_unknownObjectRelease();
  v18 = *&v1[v7];
  if ((v18 & 0x71F7F) != 1)
  {
    *&v1[v7] = v18 & 0xFFFFFFFFFFF8E080 | 1;
  }

  v1[v20] = -1;
  *&v1[v6] = 0;
  if ((v18 & 0xC00000) != 0)
  {
    *&v1[v7] = v18 & 0xFFFFFFFFFF38E080 | 1;
  }

  return v1;
}

uint64_t _nw_quic_connection_set_initial_max_streams_bidirectional(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  result = sub_181AA8420(a1);
  if (result)
  {
    v5 = *(*result + 128);
    v6 = result;
    swift_beginAccess();
    v7 = *(v6 + v5);

    if (v7)
    {
      *(v7 + 48) = a2;
    }
  }

  return result;
}

uint64_t sub_181AACF84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838E00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_181AACFF4(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 61;
  if ((a2 >> 61) <= 2)
  {
    if (v2 > 2)
    {
      return result;
    }
  }

  if (v2 == 3 || v2 == 4)
  {
  }

  if (v2 == 5)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_181AAD03C(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 61;
  if ((a2 >> 61) <= 2)
  {
    if (v2 > 2)
    {
      return result;
    }
  }

  if (v2 == 3 || v2 == 4)
  {
  }

  if (v2 == 5)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_181AAD084(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 == 1)
  {
    return swift_unknownObjectRelease();
  }

  if (!(a2 >> 62))
  {
  }

  return result;
}

BOOL _s7Network10SystemUUIDV2eeoiySbAC_ACtFZ_0(__int128 *a1, __int128 *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4 = *a2;
  *uu1 = v2;
  return uuid_compare(uu1, &v4) == 0;
}

uint64_t ProtocolOptions.deinit()
{
  sub_181F48350(*(v0 + 24), *(v0 + 32), *(v0 + 40));
  sub_181AAD250(*(v0 + 48), *(v0 + 56));
  sub_181F49A88(v0 + qword_1ED411A90, &qword_1EA838E00);
  v1 = *(*v0 + 128);
  swift_getAssociatedTypeWitness();
  v2 = sub_182AD39B8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_181AAD250(uint64_t a1, unint64_t a2)
{
  if ((~a2 & 0x1000000000000007) != 0)
  {
    return sub_181CF14BC(a1, a2);
  }

  return a1;
}

uint64_t ProtocolOptions.__deallocating_deinit()
{
  ProtocolOptions.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_181AAD2C0()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    options_deallocator = nw_protocol_definition_get_options_deallocator(*(v0 + 24));
    if (options_deallocator)
    {
      options_deallocator(*(v0 + 24), v1);
    }
  }

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t nw_protocol_definition_get_options_deallocator(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1[13];
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_protocol_definition_get_options_deallocator";
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
        v15 = "nw_protocol_definition_get_options_deallocator";
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
          v15 = "nw_protocol_definition_get_options_deallocator";
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
        v15 = "nw_protocol_definition_get_options_deallocator";
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
        v15 = "nw_protocol_definition_get_options_deallocator";
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

uint64_t nw_utilities_port_for_string(const char *a1, _WORD *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      if (!strcasecmp(a1, "http"))
      {
        v9 = &kWellKnownSchemes;
      }

      else if (!strcasecmp(a1, "https"))
      {
        v9 = &off_1E6A33648;
      }

      else if (!strcasecmp(a1, "ws"))
      {
        v9 = &off_1E6A33658;
      }

      else
      {
        if (strcasecmp(a1, "wss"))
        {
          memset(&v38.ai_socktype, 0, 40);
          *&v38.ai_flags = 0x1E00000600;
          v38.ai_socktype = 1;
          v31 = 0;
          v4 = getaddrinfo(0, a1, &v38, &v31);
          if (v4)
          {
            v5 = gai_strerror(v4);
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v6 = gLogObj;
            if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
            {
              v7 = "Unknown error";
              *buf = 136446722;
              v33 = "nw_utilities_port_for_string";
              v34 = 2082;
              if (v5)
              {
                v7 = v5;
              }

              v35 = a1;
              v36 = 2082;
              v37 = v7;
              _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_ERROR, "%{public}s Unable to convert %{public}s to port: %{public}s", buf, 0x20u);
            }

            return 0;
          }

          v10 = v31;
          if (v31)
          {
            ai_addr = v31->ai_addr;
            if (ai_addr)
            {
              if (ai_addr->sa_family == 30)
              {
                *a2 = *ai_addr->sa_data;
                freeaddrinfo(v10);
                return 1;
              }
            }
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v12 = gLogObj;
          *buf = 136446466;
          v33 = "nw_utilities_port_for_string";
          v34 = 2082;
          v35 = a1;
          v13 = _os_log_send_and_compose_impl();

          type = OS_LOG_TYPE_ERROR;
          v29 = 0;
          if (!__nwlog_fault(v13, &type, &v29))
          {
            goto LABEL_39;
          }

          if (type == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v14 = gLogObj;
            v15 = type;
            if (os_log_type_enabled(v14, type))
            {
              *buf = 136446466;
              v33 = "nw_utilities_port_for_string";
              v34 = 2082;
              v35 = a1;
              v16 = "%{public}s getaddrinfo(NULL, %{public}s, ...) failed";
LABEL_37:
              _os_log_impl(&dword_181A37000, v14, v15, v16, buf, 0x16u);
            }
          }

          else if (v29 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            v14 = __nwlog_obj();
            v15 = type;
            v18 = os_log_type_enabled(v14, type);
            if (backtrace_string)
            {
              if (v18)
              {
                *buf = 136446722;
                v33 = "nw_utilities_port_for_string";
                v34 = 2082;
                v35 = a1;
                v36 = 2082;
                v37 = backtrace_string;
                _os_log_impl(&dword_181A37000, v14, v15, "%{public}s getaddrinfo(NULL, %{public}s, ...) failed, dumping backtrace:%{public}s", buf, 0x20u);
              }

              free(backtrace_string);
              goto LABEL_39;
            }

            if (v18)
            {
              *buf = 136446466;
              v33 = "nw_utilities_port_for_string";
              v34 = 2082;
              v35 = a1;
              v16 = "%{public}s getaddrinfo(NULL, %{public}s, ...) failed, no backtrace";
              goto LABEL_37;
            }
          }

          else
          {
            v14 = __nwlog_obj();
            v15 = type;
            if (os_log_type_enabled(v14, type))
            {
              *buf = 136446466;
              v33 = "nw_utilities_port_for_string";
              v34 = 2082;
              v35 = a1;
              v16 = "%{public}s getaddrinfo(NULL, %{public}s, ...) failed, backtrace limit exceeded";
              goto LABEL_37;
            }
          }

LABEL_39:
          if (v13)
          {
            free(v13);
          }

          result = v31;
          if (v31)
          {
            freeaddrinfo(v31);
            return 0;
          }

          return result;
        }

        v9 = &off_1E6A33668;
      }

      *a2 = *(v9 + 4);
      return 1;
    }

    v24 = __nwlog_obj();
    v38.ai_flags = 136446210;
    *&v38.ai_family = "nw_utilities_port_for_string";
    v20 = _os_log_send_and_compose_impl();

    buf[0] = 16;
    LOBYTE(v31) = 0;
    if (__nwlog_fault(v20, buf, &v31))
    {
      if (buf[0] == 17)
      {
        v21 = __nwlog_obj();
        v22 = buf[0];
        if (os_log_type_enabled(v21, buf[0]))
        {
          v38.ai_flags = 136446210;
          *&v38.ai_family = "nw_utilities_port_for_string";
          v23 = "%{public}s called with null out_port";
          goto LABEL_69;
        }

        goto LABEL_70;
      }

      if (v31 != 1)
      {
        v21 = __nwlog_obj();
        v22 = buf[0];
        if (os_log_type_enabled(v21, buf[0]))
        {
          v38.ai_flags = 136446210;
          *&v38.ai_family = "nw_utilities_port_for_string";
          v23 = "%{public}s called with null out_port, backtrace limit exceeded";
          goto LABEL_69;
        }

        goto LABEL_70;
      }

      v25 = __nw_create_backtrace_string();
      v21 = __nwlog_obj();
      v22 = buf[0];
      v28 = os_log_type_enabled(v21, buf[0]);
      if (!v25)
      {
        if (v28)
        {
          v38.ai_flags = 136446210;
          *&v38.ai_family = "nw_utilities_port_for_string";
          v23 = "%{public}s called with null out_port, no backtrace";
          goto LABEL_69;
        }

        goto LABEL_70;
      }

      if (!v28)
      {
        goto LABEL_60;
      }

      v38.ai_flags = 136446466;
      *&v38.ai_family = "nw_utilities_port_for_string";
      LOWORD(v38.ai_protocol) = 2082;
      *(&v38.ai_protocol + 2) = v25;
      v27 = "%{public}s called with null out_port, dumping backtrace:%{public}s";
LABEL_59:
      _os_log_impl(&dword_181A37000, v21, v22, v27, &v38, 0x16u);
LABEL_60:

      free(v25);
    }
  }

  else
  {
    v19 = __nwlog_obj();
    v38.ai_flags = 136446210;
    *&v38.ai_family = "nw_utilities_port_for_string";
    v20 = _os_log_send_and_compose_impl();

    buf[0] = 16;
    LOBYTE(v31) = 0;
    if (__nwlog_fault(v20, buf, &v31))
    {
      if (buf[0] == 17)
      {
        v21 = __nwlog_obj();
        v22 = buf[0];
        if (os_log_type_enabled(v21, buf[0]))
        {
          v38.ai_flags = 136446210;
          *&v38.ai_family = "nw_utilities_port_for_string";
          v23 = "%{public}s called with null string";
LABEL_69:
          _os_log_impl(&dword_181A37000, v21, v22, v23, &v38, 0xCu);
        }

LABEL_70:

        goto LABEL_71;
      }

      if (v31 != 1)
      {
        v21 = __nwlog_obj();
        v22 = buf[0];
        if (os_log_type_enabled(v21, buf[0]))
        {
          v38.ai_flags = 136446210;
          *&v38.ai_family = "nw_utilities_port_for_string";
          v23 = "%{public}s called with null string, backtrace limit exceeded";
          goto LABEL_69;
        }

        goto LABEL_70;
      }

      v25 = __nw_create_backtrace_string();
      v21 = __nwlog_obj();
      v22 = buf[0];
      v26 = os_log_type_enabled(v21, buf[0]);
      if (!v25)
      {
        if (v26)
        {
          v38.ai_flags = 136446210;
          *&v38.ai_family = "nw_utilities_port_for_string";
          v23 = "%{public}s called with null string, no backtrace";
          goto LABEL_69;
        }

        goto LABEL_70;
      }

      if (!v26)
      {
        goto LABEL_60;
      }

      v38.ai_flags = 136446466;
      *&v38.ai_family = "nw_utilities_port_for_string";
      LOWORD(v38.ai_protocol) = 2082;
      *(&v38.ai_protocol + 2) = v25;
      v27 = "%{public}s called with null string, dumping backtrace:%{public}s";
      goto LABEL_59;
    }
  }

LABEL_71:
  if (v20)
  {
    free(v20);
  }

  return 0;
}

uint64_t nw_path_evaluator_add_endpoint_to_necp_message(void *a1, int a2, unint64_t a3, unint64_t a4, char a5)
{
  v284 = *MEMORY[0x1E69E9840];
  v8 = a1;
  v9 = v8;
  if (!a3)
  {
    v203 = v8;
    v204 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_path_evaluator_add_endpoint_to_necp_message";
    v205 = _os_log_send_and_compose_impl();

    v264[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(__src) = 0;
    if (!__nwlog_fault(v205, v264, &__src))
    {
      goto LABEL_497;
    }

    if (v264[0] == OS_LOG_TYPE_FAULT)
    {
      v206 = __nwlog_obj();
      v207 = v264[0];
      if (os_log_type_enabled(v206, v264[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_path_evaluator_add_endpoint_to_necp_message";
        _os_log_impl(&dword_181A37000, v206, v207, "%{public}s called with null cursor", buf, 0xCu);
      }

      goto LABEL_496;
    }

    if (__src != 1)
    {
      v206 = __nwlog_obj();
      v228 = v264[0];
      if (os_log_type_enabled(v206, v264[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_path_evaluator_add_endpoint_to_necp_message";
        _os_log_impl(&dword_181A37000, v206, v228, "%{public}s called with null cursor, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_496;
    }

    backtrace_string = __nw_create_backtrace_string();
    v206 = __nwlog_obj();
    v213 = v264[0];
    v214 = os_log_type_enabled(v206, v264[0]);
    if (!backtrace_string)
    {
      if (v214)
      {
        *buf = 136446210;
        *&buf[4] = "nw_path_evaluator_add_endpoint_to_necp_message";
        _os_log_impl(&dword_181A37000, v206, v213, "%{public}s called with null cursor, no backtrace", buf, 0xCu);
      }

      goto LABEL_496;
    }

    if (v214)
    {
      *buf = 136446466;
      *&buf[4] = "nw_path_evaluator_add_endpoint_to_necp_message";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v206, v213, "%{public}s called with null cursor, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_436;
  }

  if (!a4)
  {
    v203 = v8;
    v208 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_path_evaluator_add_endpoint_to_necp_message";
    v205 = _os_log_send_and_compose_impl();

    v264[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(__src) = 0;
    if (!__nwlog_fault(v205, v264, &__src))
    {
      goto LABEL_497;
    }

    if (v264[0] == OS_LOG_TYPE_FAULT)
    {
      v206 = __nwlog_obj();
      v209 = v264[0];
      if (os_log_type_enabled(v206, v264[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_path_evaluator_add_endpoint_to_necp_message";
        _os_log_impl(&dword_181A37000, v206, v209, "%{public}s called with null beyond", buf, 0xCu);
      }

      goto LABEL_496;
    }

    if (__src != 1)
    {
      v206 = __nwlog_obj();
      v229 = v264[0];
      if (os_log_type_enabled(v206, v264[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_path_evaluator_add_endpoint_to_necp_message";
        _os_log_impl(&dword_181A37000, v206, v229, "%{public}s called with null beyond, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_496;
    }

    backtrace_string = __nw_create_backtrace_string();
    v206 = __nwlog_obj();
    v215 = v264[0];
    v216 = os_log_type_enabled(v206, v264[0]);
    if (!backtrace_string)
    {
      if (v216)
      {
        *buf = 136446210;
        *&buf[4] = "nw_path_evaluator_add_endpoint_to_necp_message";
        _os_log_impl(&dword_181A37000, v206, v215, "%{public}s called with null beyond, no backtrace", buf, 0xCu);
      }

      goto LABEL_496;
    }

    if (v216)
    {
      *buf = 136446466;
      *&buf[4] = "nw_path_evaluator_add_endpoint_to_necp_message";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v206, v215, "%{public}s called with null beyond, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_436:

    free(backtrace_string);
    if (!v205)
    {
      goto LABEL_499;
    }

    goto LABEL_498;
  }

  v259 = a4;
  if (a3 >= a4)
  {
    v203 = v8;
    v210 = __nwlog_obj();
    *buf = 136446722;
    *&buf[4] = "nw_path_evaluator_add_endpoint_to_necp_message";
    *&buf[12] = 2048;
    *&buf[14] = a3;
    *&buf[22] = 2048;
    *v279 = a4;
    v205 = _os_log_send_and_compose_impl();

    v264[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(__src) = 0;
    if (!__nwlog_fault(v205, v264, &__src))
    {
      goto LABEL_497;
    }

    if (v264[0] == OS_LOG_TYPE_FAULT)
    {
      v206 = __nwlog_obj();
      v211 = v264[0];
      if (os_log_type_enabled(v206, v264[0]))
      {
        *buf = 136446722;
        *&buf[4] = "nw_path_evaluator_add_endpoint_to_necp_message";
        *&buf[12] = 2048;
        *&buf[14] = a3;
        *&buf[22] = 2048;
        *v279 = v259;
        _os_log_impl(&dword_181A37000, v206, v211, "%{public}s Invalid cursor %p >= beyond %p", buf, 0x20u);
      }
    }

    else if (__src == 1)
    {
      v217 = __nw_create_backtrace_string();
      v206 = __nwlog_obj();
      v218 = v264[0];
      v219 = os_log_type_enabled(v206, v264[0]);
      if (v217)
      {
        if (v219)
        {
          *buf = 136446978;
          *&buf[4] = "nw_path_evaluator_add_endpoint_to_necp_message";
          *&buf[12] = 2048;
          *&buf[14] = a3;
          *&buf[22] = 2048;
          *v279 = v259;
          *&v279[8] = 2082;
          *v280 = v217;
          _os_log_impl(&dword_181A37000, v206, v218, "%{public}s Invalid cursor %p >= beyond %p, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v217);
LABEL_497:
        if (!v205)
        {
LABEL_499:
          a3 = 0;
          goto LABEL_411;
        }

LABEL_498:
        free(v205);
        goto LABEL_499;
      }

      if (v219)
      {
        *buf = 136446722;
        *&buf[4] = "nw_path_evaluator_add_endpoint_to_necp_message";
        *&buf[12] = 2048;
        *&buf[14] = a3;
        *&buf[22] = 2048;
        *v279 = v259;
        _os_log_impl(&dword_181A37000, v206, v218, "%{public}s Invalid cursor %p >= beyond %p, no backtrace", buf, 0x20u);
      }
    }

    else
    {
      v206 = __nwlog_obj();
      v230 = v264[0];
      if (os_log_type_enabled(v206, v264[0]))
      {
        *buf = 136446722;
        *&buf[4] = "nw_path_evaluator_add_endpoint_to_necp_message";
        *&buf[12] = 2048;
        *&buf[14] = a3;
        *&buf[22] = 2048;
        *v279 = v259;
        _os_log_impl(&dword_181A37000, v206, v230, "%{public}s Invalid cursor %p >= beyond %p, backtrace limit exceeded", buf, 0x20u);
      }
    }

LABEL_496:

    goto LABEL_497;
  }

  *v264 = 0;
  v265 = 0;
  v267 = 0;
  v266 = 0;
  v252 = v8;
  v253 = nw_endpoint_copy_txt_record(v8);
  v256 = a2;
  v10 = nw_endpoint_get_type(v9);
  v11 = v9;
  v12 = nw_endpoint_get_type(v11);
  v13 = nw_endpoint_copy_txt_record(v11);
  p_isa = &v13->isa;
  if (v12 > nw_endpoint_type_bonjour_service)
  {
    if (v12 == nw_endpoint_type_url)
    {
      url = nw_endpoint_get_url(v11);
      if (url)
      {
        sa_len = strlen(url) + 9;
      }

      else
      {
        sa_len = 9;
      }

      goto LABEL_51;
    }

    if (v12 == (nw_endpoint_type_url|nw_endpoint_type_address))
    {
      goto LABEL_23;
    }

    if (v12 != (nw_endpoint_type_url|nw_endpoint_type_host))
    {
      goto LABEL_34;
    }

    application_service_alias = nw_endpoint_get_application_service_alias(v11);
    application_service_name = nw_endpoint_get_application_service_name(v11);
    *buf = 0;
    *&buf[8] = 0;
    nw_endpoint_get_service_identifier(v11, buf);
    device_name = nw_endpoint_get_device_name(v11);
    device_model = nw_endpoint_get_device_model(v11);
    contact_id = nw_endpoint_get_contact_id(v11);
    if (application_service_alias)
    {
      v27 = strlen(application_service_alias) + 33;
      if (application_service_name)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v27 = 33;
      if (application_service_name)
      {
LABEL_18:
        v28 = strlen(application_service_name) + 1;
        if (device_name)
        {
          goto LABEL_19;
        }

        goto LABEL_45;
      }
    }

    v28 = 1;
    if (device_name)
    {
LABEL_19:
      v29 = strlen(device_name) + 1;
      if (device_model)
      {
        goto LABEL_20;
      }

      goto LABEL_46;
    }

LABEL_45:
    v29 = 1;
    if (device_model)
    {
LABEL_20:
      v30 = strlen(device_model) + 1;
      if (contact_id)
      {
        goto LABEL_21;
      }

      goto LABEL_47;
    }

LABEL_46:
    v30 = 1;
    if (contact_id)
    {
LABEL_21:
      v20 = strlen(contact_id) + 1;
      if (p_isa)
      {
LABEL_22:
        v21 = p_isa[2];
LABEL_49:
        v38 = v27 + v28 + v29 + v30;
        goto LABEL_50;
      }

LABEL_48:
      v21 = 0;
      goto LABEL_49;
    }

LABEL_47:
    v20 = 1;
    if (p_isa)
    {
      goto LABEL_22;
    }

    goto LABEL_48;
  }

  if (v12 != nw_endpoint_type_address)
  {
    if (v12 != nw_endpoint_type_host)
    {
      if (v12 == nw_endpoint_type_bonjour_service)
      {
        bonjour_service_name = nw_endpoint_get_bonjour_service_name(v11);
        bonjour_service_type = nw_endpoint_get_bonjour_service_type(v11);
        bonjour_service_domain = nw_endpoint_get_bonjour_service_domain(v11);
        if (bonjour_service_name)
        {
          v18 = strlen(bonjour_service_name) + 9;
          if (bonjour_service_type)
          {
            goto LABEL_10;
          }
        }

        else
        {
          v18 = 9;
          if (bonjour_service_type)
          {
LABEL_10:
            v19 = strlen(bonjour_service_type) + 1;
            if (bonjour_service_domain)
            {
              goto LABEL_11;
            }

            goto LABEL_40;
          }
        }

        v19 = 1;
        if (bonjour_service_domain)
        {
LABEL_11:
          v20 = strlen(bonjour_service_domain) + 1;
          if (p_isa)
          {
LABEL_12:
            v21 = p_isa[2];
LABEL_42:
            v38 = v19 + v18;
LABEL_50:
            sa_len = v38 + v20 + v21;
            goto LABEL_51;
          }

LABEL_41:
          v21 = 0;
          goto LABEL_42;
        }

LABEL_40:
        v20 = 1;
        if (p_isa)
        {
          goto LABEL_12;
        }

        goto LABEL_41;
      }

LABEL_34:

      sa_len = 0;
LABEL_57:
      v42 = 0;
      v41 = v264;
      v39 = 28;
      goto LABEL_60;
    }

LABEL_23:
    v31 = v11;
    if (v31 && (v32 = v31, domain_for_policy = _nw_endpoint_get_domain_for_policy(v31), v32, domain_for_policy))
    {
      v34 = strlen(domain_for_policy) + 9;
      if (!p_isa)
      {
LABEL_26:
        sa_len = v34;
        goto LABEL_51;
      }
    }

    else
    {
      v34 = 9;
      if (!p_isa)
      {
        goto LABEL_26;
      }
    }

    sa_len = p_isa[2] + v34;
    goto LABEL_51;
  }

  address = nw_endpoint_get_address(v11);
  if (!address)
  {
    sa_len = 0;
    if (!p_isa)
    {
      goto LABEL_51;
    }

    goto LABEL_36;
  }

  sa_len = address->sa_len;
  if (p_isa)
  {
LABEL_36:
    sa_len = p_isa[2] + 28;
  }

LABEL_51:
  if (sa_len <= 0x1C)
  {
    v39 = 28;
  }

  else
  {
    v39 = sa_len;
  }

  if (v39 <= 0x1C)
  {
    goto LABEL_57;
  }

  v40 = malloc_type_calloc(v39, 1uLL, 0xA0A6930FuLL);
  v41 = v40;
  if (v40)
  {
    v42 = v40;
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v43 = gLogObj;
    os_log_type_enabled(v43, OS_LOG_TYPE_ERROR);
    *buf = 136446722;
    *&buf[4] = "nw_path_evaluator_add_endpoint_to_necp_message";
    *&buf[12] = 2048;
    *&buf[14] = v39;
    *&buf[22] = 2048;
    *v279 = 1;
    LODWORD(v251) = 32;
    v250 = buf;
    v44 = _os_log_send_and_compose_impl();

    result = __nwlog_should_abort(v44);
    if (result)
    {
      __break(1u);
      return result;
    }

    free(v44);
    v41 = 0;
    v42 = 0;
  }

LABEL_60:
  v254 = v42;
  v46 = -1;
  if (v39 >= 0xFF)
  {
    v47 = 255;
  }

  else
  {
    v47 = v39;
  }

  if (sa_len < 0xFF)
  {
    v46 = sa_len;
  }

  if (v10 <= nw_endpoint_type_bonjour_service)
  {
    if (v10 != nw_endpoint_type_address)
    {
      if (v10 != nw_endpoint_type_host)
      {
        if (v10 != nw_endpoint_type_bonjour_service)
        {
          goto LABEL_174;
        }

        *(v41 + 1) = 0;
        *v41 = v46;
        *(v41 + 1) = 0;
        *(v41 + 1) = 3;
        v48 = nw_endpoint_get_bonjour_service_name(v11);
        v49 = nw_endpoint_get_bonjour_service_type(v11);
        v50 = nw_endpoint_get_bonjour_service_domain(v11);
        if (v48)
        {
          v51 = strlen(v48) + 1;
          if (v49)
          {
            goto LABEL_71;
          }
        }

        else
        {
          v51 = 1;
          if (v49)
          {
LABEL_71:
            v52 = strlen(v49) + 1;
            v53 = v47;
            if (v50)
            {
              goto LABEL_72;
            }

            goto LABEL_125;
          }
        }

        v52 = 1;
        v53 = v47;
        if (v50)
        {
LABEL_72:
          v54 = strlen(v50) + 1;
          if (!v48)
          {
            goto LABEL_128;
          }

LABEL_126:
          if (v51)
          {
            memcpy(v41 + 8, v48, v51);
          }

LABEL_128:
          if (v49 && v52)
          {
            memcpy(&v41[v51 + 8], v49, v52);
          }

          if (v50 && v54)
          {
            memcpy(&v41[v51 + 8 + v52], v50, v54);
          }

          if (v253)
          {
            memcpy(&v41[v51 + 8 + v52 + v54], v253[1].isa, v253[2].isa);
            v47 = v53;
          }

          else
          {
            v47 = v53;
            v41[v53 - 1] = OS_LOG_TYPE_DEFAULT;
          }

          v60 = v47 + 5;
          if (v259 - a3 < v47 + 5)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v85 = gLogObj;
            *buf = 136447490;
            *&buf[4] = "nw_necp_append_tlv";
            *&buf[12] = 2048;
            *&buf[14] = a3;
            *&buf[22] = 2048;
            *v279 = v47 + 5;
            *&v279[8] = 2048;
            *v280 = v259;
            *&v280[8] = 1024;
            *v281 = v256;
            *&v281[4] = 1024;
            *&v281[6] = v47;
            LODWORD(v251) = 54;
            v250 = buf;
            v62 = _os_log_send_and_compose_impl();

            LOBYTE(__src) = 16;
            uu[0] = 0;
            if (!__nwlog_fault(v62, &__src, uu))
            {
              goto LABEL_250;
            }

            if (__src == 17)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v69 = gLogObj;
              v86 = __src;
              if (os_log_type_enabled(v69, __src))
              {
                *buf = 136447490;
                *&buf[4] = "nw_necp_append_tlv";
                *&buf[12] = 2048;
                *&buf[14] = a3;
                *&buf[22] = 2048;
                *v279 = v47 + 5;
                *&v279[8] = 2048;
                *v280 = v259;
                *&v280[8] = 1024;
                *v281 = v256;
                *&v281[4] = 1024;
                *&v281[6] = v47;
                _os_log_impl(&dword_181A37000, v69, v86, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u", buf, 0x36u);
              }

LABEL_243:

              goto LABEL_250;
            }

            if (uu[0] != 1)
            {
              v69 = __nwlog_obj();
              v129 = __src;
              if (os_log_type_enabled(v69, __src))
              {
                *buf = 136447490;
                *&buf[4] = "nw_necp_append_tlv";
                *&buf[12] = 2048;
                *&buf[14] = a3;
                *&buf[22] = 2048;
                *v279 = v47 + 5;
                *&v279[8] = 2048;
                *v280 = v259;
                *&v280[8] = 1024;
                *v281 = v256;
                *&v281[4] = 1024;
                *&v281[6] = v47;
                _os_log_impl(&dword_181A37000, v69, v129, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, backtrace limit exceeded", buf, 0x36u);
              }

              goto LABEL_243;
            }

            v112 = __nw_create_backtrace_string();
            v69 = __nwlog_obj();
            v119 = __src;
            v120 = os_log_type_enabled(v69, __src);
            if (!v112)
            {
              if (v120)
              {
                *buf = 136447490;
                *&buf[4] = "nw_necp_append_tlv";
                *&buf[12] = 2048;
                *&buf[14] = a3;
                *&buf[22] = 2048;
                *v279 = v47 + 5;
                *&v279[8] = 2048;
                *v280 = v259;
                *&v280[8] = 1024;
                *v281 = v256;
                *&v281[4] = 1024;
                *&v281[6] = v47;
                _os_log_impl(&dword_181A37000, v69, v119, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, no backtrace", buf, 0x36u);
              }

              goto LABEL_243;
            }

            if (v120)
            {
              *buf = 136447746;
              *&buf[4] = "nw_necp_append_tlv";
              *&buf[12] = 2048;
              *&buf[14] = a3;
              *&buf[22] = 2048;
              *v279 = v47 + 5;
              *&v279[8] = 2048;
              *v280 = v259;
              *&v280[8] = 1024;
              *v281 = v256;
              *&v281[4] = 1024;
              *&v281[6] = v47;
              v282 = 2082;
              v283 = v112;
              _os_log_impl(&dword_181A37000, v69, v119, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, dumping backtrace:%{public}s", buf, 0x40u);
            }

            goto LABEL_201;
          }

          goto LABEL_172;
        }

LABEL_125:
        v54 = 1;
        if (!v48)
        {
          goto LABEL_128;
        }

        goto LABEL_126;
      }

      *(v41 + 1) = 0;
      *v41 = v46;
      *(v41 + 1) = __rev16(nw_endpoint_get_port(v11));
      *(v41 + 1) = 2;
      v71 = v11;
      if (v71 && (v72 = v71, v73 = _nw_endpoint_get_domain_for_policy(v71), v72, v73))
      {
        v74 = strlen(v73) + 1;
        memcpy(v41 + 8, v73, v74);
        v75 = v253;
        if (!v253)
        {
LABEL_101:
          v41[v47 - 1] = OS_LOG_TYPE_DEFAULT;
          goto LABEL_117;
        }
      }

      else
      {
        v74 = 1;
        v75 = v253;
        if (!v253)
        {
          goto LABEL_101;
        }
      }

      memcpy(&v41[v74 + 8], v75[1].isa, v75[2].isa);
LABEL_117:
      v60 = v47 + 5;
      if (v259 - a3 < v47 + 5)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v83 = gLogObj;
        *buf = 136447490;
        *&buf[4] = "nw_necp_append_tlv";
        *&buf[12] = 2048;
        *&buf[14] = a3;
        *&buf[22] = 2048;
        *v279 = v47 + 5;
        *&v279[8] = 2048;
        *v280 = v259;
        *&v280[8] = 1024;
        *v281 = v256;
        *&v281[4] = 1024;
        *&v281[6] = v47;
        LODWORD(v251) = 54;
        v250 = buf;
        v62 = _os_log_send_and_compose_impl();

        LOBYTE(__src) = 16;
        uu[0] = 0;
        if (!__nwlog_fault(v62, &__src, uu))
        {
          goto LABEL_250;
        }

        if (__src == 17)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v69 = gLogObj;
          v84 = __src;
          if (os_log_type_enabled(v69, __src))
          {
            *buf = 136447490;
            *&buf[4] = "nw_necp_append_tlv";
            *&buf[12] = 2048;
            *&buf[14] = a3;
            *&buf[22] = 2048;
            *v279 = v47 + 5;
            *&v279[8] = 2048;
            *v280 = v259;
            *&v280[8] = 1024;
            *v281 = v256;
            *&v281[4] = 1024;
            *&v281[6] = v47;
            _os_log_impl(&dword_181A37000, v69, v84, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u", buf, 0x36u);
          }

          goto LABEL_243;
        }

        if (uu[0] != 1)
        {
          v69 = __nwlog_obj();
          v128 = __src;
          if (os_log_type_enabled(v69, __src))
          {
            *buf = 136447490;
            *&buf[4] = "nw_necp_append_tlv";
            *&buf[12] = 2048;
            *&buf[14] = a3;
            *&buf[22] = 2048;
            *v279 = v47 + 5;
            *&v279[8] = 2048;
            *v280 = v259;
            *&v280[8] = 1024;
            *v281 = v256;
            *&v281[4] = 1024;
            *&v281[6] = v47;
            _os_log_impl(&dword_181A37000, v69, v128, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, backtrace limit exceeded", buf, 0x36u);
          }

          goto LABEL_243;
        }

        v112 = __nw_create_backtrace_string();
        v69 = __nwlog_obj();
        v117 = __src;
        v118 = os_log_type_enabled(v69, __src);
        if (!v112)
        {
          if (v118)
          {
            *buf = 136447490;
            *&buf[4] = "nw_necp_append_tlv";
            *&buf[12] = 2048;
            *&buf[14] = a3;
            *&buf[22] = 2048;
            *v279 = v47 + 5;
            *&v279[8] = 2048;
            *v280 = v259;
            *&v280[8] = 1024;
            *v281 = v256;
            *&v281[4] = 1024;
            *&v281[6] = v47;
            _os_log_impl(&dword_181A37000, v69, v117, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, no backtrace", buf, 0x36u);
          }

          goto LABEL_243;
        }

        if (v118)
        {
          *buf = 136447746;
          *&buf[4] = "nw_necp_append_tlv";
          *&buf[12] = 2048;
          *&buf[14] = a3;
          *&buf[22] = 2048;
          *v279 = v47 + 5;
          *&v279[8] = 2048;
          *v280 = v259;
          *&v280[8] = 1024;
          *v281 = v256;
          *&v281[4] = 1024;
          *&v281[6] = v47;
          v282 = 2082;
          v283 = v112;
          _os_log_impl(&dword_181A37000, v69, v117, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, dumping backtrace:%{public}s", buf, 0x40u);
        }

        goto LABEL_201;
      }

LABEL_172:
      *a3 = v256;
      *(a3 + 1) = v47;
LABEL_173:
      memcpy((a3 + 5), v41, v47);
      a3 += v60;
LABEL_174:
      if ((a5 & 1) == 0)
      {
        goto LABEL_287;
      }

      goto LABEL_253;
    }

    __src = 0uLL;
    v277 = 0;
    v276 = 0;
    if (!nw_endpoint_fillout_v4v6_address(v11, &__src))
    {
      goto LABEL_174;
    }

    memcpy(v41, &__src, __src);
    if (v253)
    {
      isa = v253[2].isa;
      if (v47 >= isa + 28)
      {
        memcpy(v41 + 28, v253[1].isa, isa);
      }
    }

    v60 = v47 + 5;
    if (v259 - a3 >= v47 + 5)
    {
      *a3 = v256;
      *(a3 + 1) = v47;
      if (v41)
      {
        goto LABEL_173;
      }

      v110 = __nwlog_obj();
      *buf = 136446722;
      *&buf[4] = "nw_necp_append_tlv";
      *&buf[12] = 1024;
      *&buf[14] = v256;
      *&buf[18] = 1024;
      *&buf[20] = v47;
      LODWORD(v251) = 24;
      v250 = buf;
      v62 = _os_log_send_and_compose_impl();

      uu[0] = 16;
      v271[0] = 0;
      if (!__nwlog_fault(v62, uu, v271))
      {
        goto LABEL_250;
      }

      if (uu[0] == 17)
      {
        v63 = __nwlog_obj();
        v111 = uu[0];
        if (os_log_type_enabled(v63, uu[0]))
        {
          *buf = 136446722;
          *&buf[4] = "nw_necp_append_tlv";
          *&buf[12] = 1024;
          *&buf[14] = v256;
          *&buf[18] = 1024;
          *&buf[20] = v47;
          _os_log_impl(&dword_181A37000, v63, v111, "%{public}s type=%u length=%u but value is NULL", buf, 0x18u);
        }

        goto LABEL_249;
      }

      if (v271[0] != 1)
      {
        v63 = __nwlog_obj();
        v249 = uu[0];
        if (os_log_type_enabled(v63, uu[0]))
        {
          *buf = 136446722;
          *&buf[4] = "nw_necp_append_tlv";
          *&buf[12] = 1024;
          *&buf[14] = v256;
          *&buf[18] = 1024;
          *&buf[20] = v47;
          _os_log_impl(&dword_181A37000, v63, v249, "%{public}s type=%u length=%u but value is NULL, backtrace limit exceeded", buf, 0x18u);
        }

        goto LABEL_249;
      }

      v123 = __nw_create_backtrace_string();
      v63 = __nwlog_obj();
      v247 = uu[0];
      v248 = os_log_type_enabled(v63, uu[0]);
      if (!v123)
      {
        if (v248)
        {
          *buf = 136446722;
          *&buf[4] = "nw_necp_append_tlv";
          *&buf[12] = 1024;
          *&buf[14] = v256;
          *&buf[18] = 1024;
          *&buf[20] = v47;
          _os_log_impl(&dword_181A37000, v63, v247, "%{public}s type=%u length=%u but value is NULL, no backtrace", buf, 0x18u);
        }

        goto LABEL_249;
      }

      if (v248)
      {
        *buf = 136446978;
        *&buf[4] = "nw_necp_append_tlv";
        *&buf[12] = 1024;
        *&buf[14] = v256;
        *&buf[18] = 1024;
        *&buf[20] = v47;
        *v279 = 2082;
        *&v279[2] = v123;
        _os_log_impl(&dword_181A37000, v63, v247, "%{public}s type=%u length=%u but value is NULL, dumping backtrace:%{public}s", buf, 0x22u);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v61 = gLogObj;
      *buf = 136447490;
      *&buf[4] = "nw_necp_append_tlv";
      *&buf[12] = 2048;
      *&buf[14] = a3;
      *&buf[22] = 2048;
      *v279 = v47 + 5;
      *&v279[8] = 2048;
      *v280 = v259;
      *&v280[8] = 1024;
      *v281 = v256;
      *&v281[4] = 1024;
      *&v281[6] = v47;
      LODWORD(v251) = 54;
      v250 = buf;
      v62 = _os_log_send_and_compose_impl();

      uu[0] = 16;
      v271[0] = 0;
      if (!__nwlog_fault(v62, uu, v271))
      {
        goto LABEL_250;
      }

      if (uu[0] == 17)
      {
        v63 = __nwlog_obj();
        v64 = uu[0];
        if (os_log_type_enabled(v63, uu[0]))
        {
          *buf = 136447490;
          *&buf[4] = "nw_necp_append_tlv";
          *&buf[12] = 2048;
          *&buf[14] = a3;
          *&buf[22] = 2048;
          *v279 = v47 + 5;
          *&v279[8] = 2048;
          *v280 = v259;
          *&v280[8] = 1024;
          *v281 = v256;
          *&v281[4] = 1024;
          *&v281[6] = v47;
          _os_log_impl(&dword_181A37000, v63, v64, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u", buf, 0x36u);
        }

LABEL_249:

LABEL_250:
        if (!v62)
        {
          goto LABEL_252;
        }

        goto LABEL_251;
      }

      if (v271[0] != 1)
      {
        v63 = __nwlog_obj();
        v131 = uu[0];
        if (os_log_type_enabled(v63, uu[0]))
        {
          *buf = 136447490;
          *&buf[4] = "nw_necp_append_tlv";
          *&buf[12] = 2048;
          *&buf[14] = a3;
          *&buf[22] = 2048;
          *v279 = v47 + 5;
          *&v279[8] = 2048;
          *v280 = v259;
          *&v280[8] = 1024;
          *v281 = v256;
          *&v281[4] = 1024;
          *&v281[6] = v47;
          _os_log_impl(&dword_181A37000, v63, v131, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, backtrace limit exceeded", buf, 0x36u);
        }

        goto LABEL_249;
      }

      v123 = __nw_create_backtrace_string();
      v63 = __nwlog_obj();
      v124 = uu[0];
      v125 = os_log_type_enabled(v63, uu[0]);
      if (!v123)
      {
        if (v125)
        {
          *buf = 136447490;
          *&buf[4] = "nw_necp_append_tlv";
          *&buf[12] = 2048;
          *&buf[14] = a3;
          *&buf[22] = 2048;
          *v279 = v47 + 5;
          *&v279[8] = 2048;
          *v280 = v259;
          *&v280[8] = 1024;
          *v281 = v256;
          *&v281[4] = 1024;
          *&v281[6] = v47;
          _os_log_impl(&dword_181A37000, v63, v124, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, no backtrace", buf, 0x36u);
        }

        goto LABEL_249;
      }

      if (v125)
      {
        *buf = 136447746;
        *&buf[4] = "nw_necp_append_tlv";
        *&buf[12] = 2048;
        *&buf[14] = a3;
        *&buf[22] = 2048;
        *v279 = v47 + 5;
        *&v279[8] = 2048;
        *v280 = v259;
        *&v280[8] = 1024;
        *v281 = v256;
        *&v281[4] = 1024;
        *&v281[6] = v47;
        v282 = 2082;
        v283 = v123;
        _os_log_impl(&dword_181A37000, v63, v124, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, dumping backtrace:%{public}s", buf, 0x40u);
      }
    }

    free(v123);
    goto LABEL_250;
  }

  if (v10 == nw_endpoint_type_url)
  {
    *(v41 + 1) = 0;
    *v41 = v46;
    *(v41 + 1) = __rev16(nw_endpoint_get_port(v11));
    *(v41 + 1) = 4;
    v65 = nw_endpoint_get_url(v11);
    if (v65)
    {
      v66 = v65;
      v67 = strlen(v65);
      memcpy(v41 + 8, v66, v67 + 1);
    }

    v41[v47 - 1] = OS_LOG_TYPE_DEFAULT;
    v60 = v47 + 5;
    if (v259 - a3 >= v47 + 5)
    {
      goto LABEL_172;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v68 = gLogObj;
    *buf = 136447490;
    *&buf[4] = "nw_necp_append_tlv";
    *&buf[12] = 2048;
    *&buf[14] = a3;
    *&buf[22] = 2048;
    *v279 = v47 + 5;
    *&v279[8] = 2048;
    *v280 = v259;
    *&v280[8] = 1024;
    *v281 = v256;
    *&v281[4] = 1024;
    *&v281[6] = v47;
    LODWORD(v251) = 54;
    v250 = buf;
    v62 = _os_log_send_and_compose_impl();

    LOBYTE(__src) = 16;
    uu[0] = 0;
    if (!__nwlog_fault(v62, &__src, uu))
    {
      goto LABEL_250;
    }

    if (__src == 17)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v69 = gLogObj;
      v70 = __src;
      if (os_log_type_enabled(v69, __src))
      {
        *buf = 136447490;
        *&buf[4] = "nw_necp_append_tlv";
        *&buf[12] = 2048;
        *&buf[14] = a3;
        *&buf[22] = 2048;
        *v279 = v47 + 5;
        *&v279[8] = 2048;
        *v280 = v259;
        *&v280[8] = 1024;
        *v281 = v256;
        *&v281[4] = 1024;
        *&v281[6] = v47;
        _os_log_impl(&dword_181A37000, v69, v70, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u", buf, 0x36u);
      }

      goto LABEL_243;
    }

    if (uu[0] != 1)
    {
      v69 = __nwlog_obj();
      v127 = __src;
      if (os_log_type_enabled(v69, __src))
      {
        *buf = 136447490;
        *&buf[4] = "nw_necp_append_tlv";
        *&buf[12] = 2048;
        *&buf[14] = a3;
        *&buf[22] = 2048;
        *v279 = v47 + 5;
        *&v279[8] = 2048;
        *v280 = v259;
        *&v280[8] = 1024;
        *v281 = v256;
        *&v281[4] = 1024;
        *&v281[6] = v47;
        _os_log_impl(&dword_181A37000, v69, v127, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, backtrace limit exceeded", buf, 0x36u);
      }

      goto LABEL_243;
    }

    v112 = __nw_create_backtrace_string();
    v69 = __nwlog_obj();
    v115 = __src;
    v116 = os_log_type_enabled(v69, __src);
    if (!v112)
    {
      if (v116)
      {
        *buf = 136447490;
        *&buf[4] = "nw_necp_append_tlv";
        *&buf[12] = 2048;
        *&buf[14] = a3;
        *&buf[22] = 2048;
        *v279 = v47 + 5;
        *&v279[8] = 2048;
        *v280 = v259;
        *&v280[8] = 1024;
        *v281 = v256;
        *&v281[4] = 1024;
        *&v281[6] = v47;
        _os_log_impl(&dword_181A37000, v69, v115, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, no backtrace", buf, 0x36u);
      }

      goto LABEL_243;
    }

    if (v116)
    {
      *buf = 136447746;
      *&buf[4] = "nw_necp_append_tlv";
      *&buf[12] = 2048;
      *&buf[14] = a3;
      *&buf[22] = 2048;
      *v279 = v47 + 5;
      *&v279[8] = 2048;
      *v280 = v259;
      *&v280[8] = 1024;
      *v281 = v256;
      *&v281[4] = 1024;
      *&v281[6] = v47;
      v282 = 2082;
      v283 = v112;
      _os_log_impl(&dword_181A37000, v69, v115, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, dumping backtrace:%{public}s", buf, 0x40u);
    }

    goto LABEL_201;
  }

  if (v10 == (nw_endpoint_type_url|nw_endpoint_type_address))
  {
    *(v41 + 1) = 0;
    *v41 = v46;
    *(v41 + 1) = 0;
    *(v41 + 1) = 5;
    v76 = v11;
    if (v76 && (v77 = v76, v78 = _nw_endpoint_get_domain_for_policy(v76), v77, v78))
    {
      v79 = strlen(v78) + 1;
      memcpy(v41 + 8, v78, v79);
      v80 = v253;
      if (!v253)
      {
LABEL_105:
        v41[v47 - 1] = OS_LOG_TYPE_DEFAULT;
LABEL_108:
        v60 = v47 + 5;
        if (v259 - a3 >= v47 + 5)
        {
          goto LABEL_172;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v81 = gLogObj;
        *buf = 136447490;
        *&buf[4] = "nw_necp_append_tlv";
        *&buf[12] = 2048;
        *&buf[14] = a3;
        *&buf[22] = 2048;
        *v279 = v47 + 5;
        *&v279[8] = 2048;
        *v280 = v259;
        *&v280[8] = 1024;
        *v281 = v256;
        *&v281[4] = 1024;
        *&v281[6] = v47;
        LODWORD(v251) = 54;
        v250 = buf;
        v62 = _os_log_send_and_compose_impl();

        LOBYTE(__src) = 16;
        uu[0] = 0;
        if (!__nwlog_fault(v62, &__src, uu))
        {
          goto LABEL_250;
        }

        if (__src == 17)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v69 = gLogObj;
          v82 = __src;
          if (os_log_type_enabled(v69, __src))
          {
            *buf = 136447490;
            *&buf[4] = "nw_necp_append_tlv";
            *&buf[12] = 2048;
            *&buf[14] = a3;
            *&buf[22] = 2048;
            *v279 = v47 + 5;
            *&v279[8] = 2048;
            *v280 = v259;
            *&v280[8] = 1024;
            *v281 = v256;
            *&v281[4] = 1024;
            *&v281[6] = v47;
            _os_log_impl(&dword_181A37000, v69, v82, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u", buf, 0x36u);
          }

          goto LABEL_243;
        }

        if (uu[0] != 1)
        {
          v69 = __nwlog_obj();
          v126 = __src;
          if (os_log_type_enabled(v69, __src))
          {
            *buf = 136447490;
            *&buf[4] = "nw_necp_append_tlv";
            *&buf[12] = 2048;
            *&buf[14] = a3;
            *&buf[22] = 2048;
            *v279 = v47 + 5;
            *&v279[8] = 2048;
            *v280 = v259;
            *&v280[8] = 1024;
            *v281 = v256;
            *&v281[4] = 1024;
            *&v281[6] = v47;
            _os_log_impl(&dword_181A37000, v69, v126, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, backtrace limit exceeded", buf, 0x36u);
          }

          goto LABEL_243;
        }

        v112 = __nw_create_backtrace_string();
        v69 = __nwlog_obj();
        v113 = __src;
        v114 = os_log_type_enabled(v69, __src);
        if (!v112)
        {
          if (v114)
          {
            *buf = 136447490;
            *&buf[4] = "nw_necp_append_tlv";
            *&buf[12] = 2048;
            *&buf[14] = a3;
            *&buf[22] = 2048;
            *v279 = v47 + 5;
            *&v279[8] = 2048;
            *v280 = v259;
            *&v280[8] = 1024;
            *v281 = v256;
            *&v281[4] = 1024;
            *&v281[6] = v47;
            _os_log_impl(&dword_181A37000, v69, v113, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, no backtrace", buf, 0x36u);
          }

          goto LABEL_243;
        }

        if (v114)
        {
          *buf = 136447746;
          *&buf[4] = "nw_necp_append_tlv";
          *&buf[12] = 2048;
          *&buf[14] = a3;
          *&buf[22] = 2048;
          *v279 = v47 + 5;
          *&v279[8] = 2048;
          *v280 = v259;
          *&v280[8] = 1024;
          *v281 = v256;
          *&v281[4] = 1024;
          *&v281[6] = v47;
          v282 = 2082;
          v283 = v112;
          _os_log_impl(&dword_181A37000, v69, v113, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, dumping backtrace:%{public}s", buf, 0x40u);
        }

LABEL_201:

        goto LABEL_207;
      }
    }

    else
    {
      v79 = 1;
      v80 = v253;
      if (!v253)
      {
        goto LABEL_105;
      }
    }

    memcpy(&v41[v79 + 8], v80[1].isa, v80[2].isa);
    goto LABEL_108;
  }

  if (v10 != (nw_endpoint_type_url|nw_endpoint_type_host))
  {
    goto LABEL_174;
  }

  *(v41 + 1) = 0;
  *v41 = v46;
  *(v41 + 1) = 0;
  *(v41 + 1) = 6;
  v55 = nw_endpoint_get_application_service_alias(v11);
  v56 = v55;
  if (v55)
  {
    v57 = strlen(v55);
    v58 = v57 + 1;
    if (v57 == -1)
    {
      v58 = 0;
    }

    else
    {
      memcpy(v41 + 8, v56, v58);
    }
  }

  else
  {
    v58 = 1;
  }

  v87 = nw_endpoint_get_application_service_name(v11);
  v88 = v87;
  if (v87)
  {
    v89 = strlen(v87);
    v90 = v89 + 1;
    if (v89 == -1)
    {
      v90 = 0;
    }

    else
    {
      memcpy(&v41[v58 + 8], v88, v90);
    }
  }

  else
  {
    v90 = 1;
  }

  v91 = nw_endpoint_get_device_name(v11);
  v92 = v91;
  v93 = v90 + v58;
  if (v91)
  {
    v94 = strlen(v91);
    v95 = v94 + 1;
    if (v94 == -1)
    {
      v95 = 0;
    }

    else
    {
      memcpy(&v41[v93 + 8], v92, v95);
    }
  }

  else
  {
    v95 = 1;
  }

  v96 = nw_endpoint_get_device_model(v11);
  v97 = v96;
  v98 = v95 + v93;
  if (v96)
  {
    v99 = strlen(v96);
    v100 = v99 + 1;
    if (v99 == -1)
    {
      v100 = 0;
    }

    else
    {
      memcpy(&v41[v98 + 8], v97, v100);
    }
  }

  else
  {
    v100 = 1;
  }

  v101 = nw_endpoint_get_contact_id(v11);
  v102 = v101;
  v103 = v100 + v98;
  if (v101)
  {
    v104 = strlen(v101);
    v105 = v104 + 1;
    if (v104 == -1)
    {
      v105 = 0;
    }

    else
    {
      memcpy(&v41[v103 + 8], v102, v105);
    }
  }

  else
  {
    v105 = 1;
  }

  v106 = &v41[v103 + v105];
  *(v106 + 2) = nw_endpoint_get_device_color(v11);
  v107 = v106 + 8;
  *(v107 + 1) = nw_endpoint_get_advertised_route(v11);
  __src = 0uLL;
  nw_endpoint_get_service_identifier(v11, &__src);
  *(v107 + 8) = __src;
  if (v253)
  {
    memcpy(v107 + 24, v253[1].isa, v253[2].isa);
  }

  v60 = v47 + 5;
  if (v259 - a3 >= v47 + 5)
  {
    goto LABEL_172;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v108 = gLogObj;
  *buf = 136447490;
  *&buf[4] = "nw_necp_append_tlv";
  *&buf[12] = 2048;
  *&buf[14] = a3;
  *&buf[22] = 2048;
  *v279 = v47 + 5;
  *&v279[8] = 2048;
  *v280 = v259;
  *&v280[8] = 1024;
  *v281 = v256;
  *&v281[4] = 1024;
  *&v281[6] = v47;
  LODWORD(v251) = 54;
  v250 = buf;
  v62 = _os_log_send_and_compose_impl();

  uu[0] = 16;
  v271[0] = 0;
  if (!__nwlog_fault(v62, uu, v271))
  {
    goto LABEL_250;
  }

  if (uu[0] == 17)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v63 = gLogObj;
    v109 = uu[0];
    if (os_log_type_enabled(v63, uu[0]))
    {
      *buf = 136447490;
      *&buf[4] = "nw_necp_append_tlv";
      *&buf[12] = 2048;
      *&buf[14] = a3;
      *&buf[22] = 2048;
      *v279 = v47 + 5;
      *&v279[8] = 2048;
      *v280 = v259;
      *&v280[8] = 1024;
      *v281 = v256;
      *&v281[4] = 1024;
      *&v281[6] = v47;
      _os_log_impl(&dword_181A37000, v63, v109, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u", buf, 0x36u);
    }

    goto LABEL_249;
  }

  if (v271[0] != 1)
  {
    v63 = __nwlog_obj();
    v130 = uu[0];
    if (os_log_type_enabled(v63, uu[0]))
    {
      *buf = 136447490;
      *&buf[4] = "nw_necp_append_tlv";
      *&buf[12] = 2048;
      *&buf[14] = a3;
      *&buf[22] = 2048;
      *v279 = v47 + 5;
      *&v279[8] = 2048;
      *v280 = v259;
      *&v280[8] = 1024;
      *v281 = v256;
      *&v281[4] = 1024;
      *&v281[6] = v47;
      _os_log_impl(&dword_181A37000, v63, v130, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, backtrace limit exceeded", buf, 0x36u);
    }

    goto LABEL_249;
  }

  v112 = __nw_create_backtrace_string();
  v63 = __nwlog_obj();
  v121 = uu[0];
  v122 = os_log_type_enabled(v63, uu[0]);
  if (!v112)
  {
    if (v122)
    {
      *buf = 136447490;
      *&buf[4] = "nw_necp_append_tlv";
      *&buf[12] = 2048;
      *&buf[14] = a3;
      *&buf[22] = 2048;
      *v279 = v47 + 5;
      *&v279[8] = 2048;
      *v280 = v259;
      *&v280[8] = 1024;
      *v281 = v256;
      *&v281[4] = 1024;
      *&v281[6] = v47;
      _os_log_impl(&dword_181A37000, v63, v121, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, no backtrace", buf, 0x36u);
    }

    goto LABEL_249;
  }

  if (v122)
  {
    *buf = 136447746;
    *&buf[4] = "nw_necp_append_tlv";
    *&buf[12] = 2048;
    *&buf[14] = a3;
    *&buf[22] = 2048;
    *v279 = v47 + 5;
    *&v279[8] = 2048;
    *v280 = v259;
    *&v280[8] = 1024;
    *v281 = v256;
    *&v281[4] = 1024;
    *&v281[6] = v47;
    v282 = 2082;
    v283 = v112;
    _os_log_impl(&dword_181A37000, v63, v121, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, dumping backtrace:%{public}s", buf, 0x40u);
  }

LABEL_207:
  free(v112);
  if (v62)
  {
LABEL_251:
    free(v62);
  }

LABEL_252:
  a3 = 0;
  if ((a5 & 1) == 0)
  {
    goto LABEL_287;
  }

LABEL_253:
  *uu = 0;
  v274 = 0;
  nw_endpoint_get_agent_identifier(v11, uu);
  v132 = v254;
  *v271 = 0;
  v272 = 0;
  nw_endpoint_get_preferred_agent_identifier(v11, v271);
  is_null = uuid_is_null(uu);
  if (!is_null)
  {
    v134 = uu;
    if (!a3)
    {
LABEL_267:
      v139 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_path_add_endpoint_agent_uuid_to_necp_message";
      LODWORD(v251) = 12;
      v250 = buf;
      v136 = _os_log_send_and_compose_impl();

      LOBYTE(__src) = 16;
      type = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v136, &__src, &type))
      {
        goto LABEL_284;
      }

      if (__src == 17)
      {
        v137 = __nwlog_obj();
        v140 = __src;
        if (os_log_type_enabled(v137, __src))
        {
          *buf = 136446210;
          *&buf[4] = "nw_path_add_endpoint_agent_uuid_to_necp_message";
          _os_log_impl(&dword_181A37000, v137, v140, "%{public}s called with null cursor", buf, 0xCu);
        }

LABEL_283:

        goto LABEL_284;
      }

      if (type != OS_LOG_TYPE_INFO)
      {
        v137 = __nwlog_obj();
        v245 = __src;
        if (os_log_type_enabled(v137, __src))
        {
          *buf = 136446210;
          *&buf[4] = "nw_path_add_endpoint_agent_uuid_to_necp_message";
          _os_log_impl(&dword_181A37000, v137, v245, "%{public}s called with null cursor, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_283;
      }

      v237 = __nw_create_backtrace_string();
      v137 = __nwlog_obj();
      v238 = __src;
      v239 = os_log_type_enabled(v137, __src);
      if (!v237)
      {
        if (v239)
        {
          *buf = 136446210;
          *&buf[4] = "nw_path_add_endpoint_agent_uuid_to_necp_message";
          _os_log_impl(&dword_181A37000, v137, v238, "%{public}s called with null cursor, no backtrace", buf, 0xCu);
        }

        goto LABEL_283;
      }

      if (v239)
      {
        *buf = 136446466;
        *&buf[4] = "nw_path_add_endpoint_agent_uuid_to_necp_message";
        *&buf[12] = 2082;
        *&buf[14] = v237;
        _os_log_impl(&dword_181A37000, v137, v238, "%{public}s called with null cursor, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v237);
LABEL_284:
      if (!v136)
      {
LABEL_286:
        a3 = 0;
LABEL_287:
        v132 = v254;
        if ((a5 & 2) == 0)
        {
          goto LABEL_317;
        }

        goto LABEL_288;
      }

LABEL_285:
      free(v136);
      goto LABEL_286;
    }

LABEL_258:
    if (a3 >= v259)
    {
      v226 = __nwlog_obj();
      *buf = 136446722;
      *&buf[4] = "nw_path_add_endpoint_agent_uuid_to_necp_message";
      *&buf[12] = 2048;
      *&buf[14] = a3;
      *&buf[22] = 2048;
      *v279 = v259;
      LODWORD(v251) = 32;
      v250 = buf;
      v136 = _os_log_send_and_compose_impl();

      LOBYTE(__src) = 16;
      type = OS_LOG_TYPE_DEFAULT;
      if (__nwlog_fault(v136, &__src, &type))
      {
        if (__src == 17)
        {
          v137 = __nwlog_obj();
          v227 = __src;
          if (os_log_type_enabled(v137, __src))
          {
            *buf = 136446722;
            *&buf[4] = "nw_path_add_endpoint_agent_uuid_to_necp_message";
            *&buf[12] = 2048;
            *&buf[14] = a3;
            *&buf[22] = 2048;
            *v279 = v259;
            _os_log_impl(&dword_181A37000, v137, v227, "%{public}s Invalid cursor %p >= beyond %p", buf, 0x20u);
          }
        }

        else if (type == OS_LOG_TYPE_INFO)
        {
          v240 = __nw_create_backtrace_string();
          v137 = __nwlog_obj();
          v241 = __src;
          v242 = os_log_type_enabled(v137, __src);
          if (v240)
          {
            if (v242)
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_add_endpoint_agent_uuid_to_necp_message";
              *&buf[12] = 2048;
              *&buf[14] = a3;
              *&buf[22] = 2048;
              *v279 = v259;
              *&v279[8] = 2082;
              *v280 = v240;
              _os_log_impl(&dword_181A37000, v137, v241, "%{public}s Invalid cursor %p >= beyond %p, dumping backtrace:%{public}s", buf, 0x2Au);
            }

            free(v240);
            if (!v136)
            {
              goto LABEL_286;
            }

            goto LABEL_285;
          }

          if (v242)
          {
            *buf = 136446722;
            *&buf[4] = "nw_path_add_endpoint_agent_uuid_to_necp_message";
            *&buf[12] = 2048;
            *&buf[14] = a3;
            *&buf[22] = 2048;
            *v279 = v259;
            _os_log_impl(&dword_181A37000, v137, v241, "%{public}s Invalid cursor %p >= beyond %p, no backtrace", buf, 0x20u);
          }
        }

        else
        {
          v137 = __nwlog_obj();
          v246 = __src;
          if (os_log_type_enabled(v137, __src))
          {
            *buf = 136446722;
            *&buf[4] = "nw_path_add_endpoint_agent_uuid_to_necp_message";
            *&buf[12] = 2048;
            *&buf[14] = a3;
            *&buf[22] = 2048;
            *v279 = v259;
            _os_log_impl(&dword_181A37000, v137, v246, "%{public}s Invalid cursor %p >= beyond %p, backtrace limit exceeded", buf, 0x20u);
          }
        }

        goto LABEL_283;
      }
    }

    else
    {
      __src = *v134;
      if (v259 - a3 > 0x15)
      {
        *a3 = -100;
        *(a3 + 1) = 17;
        *(a3 + 5) = is_null != 0;
        *(a3 + 6) = __src;
        a3 += 22;
        goto LABEL_287;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v135 = gLogObj;
      *buf = 136447490;
      *&buf[4] = "nw_necp_append_tlv";
      *&buf[12] = 2048;
      *&buf[14] = a3;
      *&buf[22] = 2048;
      *v279 = 22;
      *&v279[8] = 2048;
      *v280 = v259;
      *&v280[8] = 1024;
      *v281 = 156;
      *&v281[4] = 1024;
      *&v281[6] = 17;
      LODWORD(v251) = 54;
      v250 = buf;
      v136 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v268 = 0;
      if (__nwlog_fault(v136, &type, &v268))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v137 = gLogObj;
          v138 = type;
          if (os_log_type_enabled(v137, type))
          {
            *buf = 136447490;
            *&buf[4] = "nw_necp_append_tlv";
            *&buf[12] = 2048;
            *&buf[14] = a3;
            *&buf[22] = 2048;
            *v279 = 22;
            *&v279[8] = 2048;
            *v280 = v259;
            *&v280[8] = 1024;
            *v281 = 156;
            *&v281[4] = 1024;
            *&v281[6] = 17;
            _os_log_impl(&dword_181A37000, v137, v138, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u", buf, 0x36u);
          }
        }

        else if (v268 == 1)
        {
          v141 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v137 = gLogObj;
          v142 = type;
          v143 = os_log_type_enabled(v137, type);
          if (v141)
          {
            if (v143)
            {
              *buf = 136447746;
              *&buf[4] = "nw_necp_append_tlv";
              *&buf[12] = 2048;
              *&buf[14] = a3;
              *&buf[22] = 2048;
              *v279 = 22;
              *&v279[8] = 2048;
              *v280 = v259;
              *&v280[8] = 1024;
              *v281 = 156;
              *&v281[4] = 1024;
              *&v281[6] = 17;
              v282 = 2082;
              v283 = v141;
              _os_log_impl(&dword_181A37000, v137, v142, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, dumping backtrace:%{public}s", buf, 0x40u);
            }

            free(v141);
            if (!v136)
            {
              goto LABEL_286;
            }

            goto LABEL_285;
          }

          if (v143)
          {
            *buf = 136447490;
            *&buf[4] = "nw_necp_append_tlv";
            *&buf[12] = 2048;
            *&buf[14] = a3;
            *&buf[22] = 2048;
            *v279 = 22;
            *&v279[8] = 2048;
            *v280 = v259;
            *&v280[8] = 1024;
            *v281 = 156;
            *&v281[4] = 1024;
            *&v281[6] = 17;
            _os_log_impl(&dword_181A37000, v137, v142, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, no backtrace", buf, 0x36u);
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v137 = gLogObj;
          v144 = type;
          if (os_log_type_enabled(v137, type))
          {
            *buf = 136447490;
            *&buf[4] = "nw_necp_append_tlv";
            *&buf[12] = 2048;
            *&buf[14] = a3;
            *&buf[22] = 2048;
            *v279 = 22;
            *&v279[8] = 2048;
            *v280 = v259;
            *&v280[8] = 1024;
            *v281 = 156;
            *&v281[4] = 1024;
            *&v281[6] = 17;
            _os_log_impl(&dword_181A37000, v137, v144, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, backtrace limit exceeded", buf, 0x36u);
          }
        }

        goto LABEL_283;
      }
    }

    goto LABEL_284;
  }

  if (!uuid_is_null(v271))
  {
    v134 = v271;
    if (!a3)
    {
      goto LABEL_267;
    }

    goto LABEL_258;
  }

  if ((a5 & 2) == 0)
  {
    goto LABEL_317;
  }

LABEL_288:
  device_id = nw_endpoint_get_device_id(v11);
  v146 = device_id;
  if (device_id)
  {
    v147 = strlen(device_id);
    if (a3)
    {
      v148 = v147;
      if (a3 < v259)
      {
        v149 = v147 + 5;
        if (v259 - a3 >= v149)
        {
          *a3 = -98;
          *(a3 + 1) = v147;
          if (v147)
          {
            memcpy((a3 + 5), v146, v147);
          }

          a3 += v149;
          goto LABEL_316;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v150 = gLogObj;
        *buf = 136447490;
        *&buf[4] = "nw_necp_append_tlv";
        *&buf[12] = 2048;
        *&buf[14] = a3;
        *&buf[22] = 2048;
        *v279 = v149;
        *&v279[8] = 2048;
        *v280 = v259;
        *&v280[8] = 1024;
        *v281 = 158;
        *&v281[4] = 1024;
        *&v281[6] = v148;
        LODWORD(v251) = 54;
        v250 = buf;
        v151 = _os_log_send_and_compose_impl();

        LOBYTE(__src) = 16;
        uu[0] = 0;
        if (__nwlog_fault(v151, &__src, uu))
        {
          if (__src == 17)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v152 = gLogObj;
            v153 = __src;
            if (os_log_type_enabled(v152, __src))
            {
              *buf = 136447490;
              *&buf[4] = "nw_necp_append_tlv";
              *&buf[12] = 2048;
              *&buf[14] = a3;
              *&buf[22] = 2048;
              *v279 = v149;
              *&v279[8] = 2048;
              *v280 = v259;
              *&v280[8] = 1024;
              *v281 = 158;
              *&v281[4] = 1024;
              *&v281[6] = v148;
              _os_log_impl(&dword_181A37000, v152, v153, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u", buf, 0x36u);
            }
          }

          else if (uu[0] == 1)
          {
            v154 = __nw_create_backtrace_string();
            if (v154)
            {
              v155 = v154;
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v156 = gLogObj;
              v157 = __src;
              if (os_log_type_enabled(v156, __src))
              {
                *buf = 136447746;
                *&buf[4] = "nw_necp_append_tlv";
                *&buf[12] = 2048;
                *&buf[14] = a3;
                *&buf[22] = 2048;
                *v279 = v149;
                *&v279[8] = 2048;
                *v280 = v259;
                *&v280[8] = 1024;
                *v281 = 158;
                *&v281[4] = 1024;
                *&v281[6] = v148;
                v282 = 2082;
                v283 = v155;
                _os_log_impl(&dword_181A37000, v156, v157, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, dumping backtrace:%{public}s", buf, 0x40u);
              }

              free(v155);
              if (!v151)
              {
                goto LABEL_315;
              }

LABEL_313:
              v160 = v151;
LABEL_314:
              free(v160);
              goto LABEL_315;
            }

            v152 = __nwlog_obj();
            v159 = __src;
            if (os_log_type_enabled(v152, __src))
            {
              *buf = 136447490;
              *&buf[4] = "nw_necp_append_tlv";
              *&buf[12] = 2048;
              *&buf[14] = a3;
              *&buf[22] = 2048;
              *v279 = v149;
              *&v279[8] = 2048;
              *v280 = v259;
              *&v280[8] = 1024;
              *v281 = 158;
              *&v281[4] = 1024;
              *&v281[6] = v148;
              _os_log_impl(&dword_181A37000, v152, v159, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, no backtrace", buf, 0x36u);
            }
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v152 = gLogObj;
            v158 = __src;
            if (os_log_type_enabled(v152, __src))
            {
              *buf = 136447490;
              *&buf[4] = "nw_necp_append_tlv";
              *&buf[12] = 2048;
              *&buf[14] = a3;
              *&buf[22] = 2048;
              *v279 = v149;
              *&v279[8] = 2048;
              *v280 = v259;
              *&v280[8] = 1024;
              *v281 = 158;
              *&v281[4] = 1024;
              *&v281[6] = v148;
              _os_log_impl(&dword_181A37000, v152, v158, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, backtrace limit exceeded", buf, 0x36u);
            }
          }

          goto LABEL_311;
        }

LABEL_312:
        if (!v151)
        {
LABEL_315:
          a3 = 0;
LABEL_316:
          v132 = v254;
          goto LABEL_317;
        }

        goto LABEL_313;
      }

      v224 = __nwlog_obj();
      *buf = 136447234;
      *&buf[4] = "nw_necp_append_tlv";
      *&buf[12] = 2048;
      *&buf[14] = a3;
      *&buf[22] = 2048;
      *v279 = v259;
      *&v279[8] = 1024;
      *v280 = 158;
      *&v280[4] = 1024;
      *&v280[6] = v148;
      LODWORD(v251) = 44;
      v250 = buf;
      v151 = _os_log_send_and_compose_impl();

      LOBYTE(__src) = 16;
      uu[0] = 0;
      if (!__nwlog_fault(v151, &__src, uu))
      {
        goto LABEL_312;
      }

      if (__src == 17)
      {
        v152 = __nwlog_obj();
        v225 = __src;
        if (os_log_type_enabled(v152, __src))
        {
          *buf = 136447234;
          *&buf[4] = "nw_necp_append_tlv";
          *&buf[12] = 2048;
          *&buf[14] = a3;
          *&buf[22] = 2048;
          *v279 = v259;
          *&v279[8] = 1024;
          *v280 = 158;
          *&v280[4] = 1024;
          *&v280[6] = v148;
          _os_log_impl(&dword_181A37000, v152, v225, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u", buf, 0x2Cu);
        }
      }

      else if (uu[0] == 1)
      {
        v234 = __nw_create_backtrace_string();
        v152 = __nwlog_obj();
        v235 = __src;
        v236 = os_log_type_enabled(v152, __src);
        if (v234)
        {
          if (v236)
          {
            *buf = 136447490;
            *&buf[4] = "nw_necp_append_tlv";
            *&buf[12] = 2048;
            *&buf[14] = a3;
            *&buf[22] = 2048;
            *v279 = v259;
            *&v279[8] = 1024;
            *v280 = 158;
            *&v280[4] = 1024;
            *&v280[6] = v148;
            *v281 = 2082;
            *&v281[2] = v234;
            _os_log_impl(&dword_181A37000, v152, v235, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, dumping backtrace:%{public}s", buf, 0x36u);
          }

          free(v234);
          goto LABEL_312;
        }

        if (v236)
        {
          *buf = 136447234;
          *&buf[4] = "nw_necp_append_tlv";
          *&buf[12] = 2048;
          *&buf[14] = a3;
          *&buf[22] = 2048;
          *v279 = v259;
          *&v279[8] = 1024;
          *v280 = 158;
          *&v280[4] = 1024;
          *&v280[6] = v148;
          _os_log_impl(&dword_181A37000, v152, v235, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, no backtrace", buf, 0x2Cu);
        }
      }

      else
      {
        v152 = __nwlog_obj();
        v244 = __src;
        if (os_log_type_enabled(v152, __src))
        {
          *buf = 136447234;
          *&buf[4] = "nw_necp_append_tlv";
          *&buf[12] = 2048;
          *&buf[14] = a3;
          *&buf[22] = 2048;
          *v279 = v259;
          *&v279[8] = 1024;
          *v280 = 158;
          *&v280[4] = 1024;
          *&v280[6] = v148;
          _os_log_impl(&dword_181A37000, v152, v244, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, backtrace limit exceeded", buf, 0x2Cu);
        }
      }

LABEL_311:

      goto LABEL_312;
    }

    v220 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_necp_append_tlv";
    LODWORD(v251) = 12;
    v250 = buf;
    v221 = _os_log_send_and_compose_impl();

    LOBYTE(__src) = 16;
    uu[0] = 0;
    if (__nwlog_fault(v221, &__src, uu))
    {
      if (__src == 17)
      {
        v222 = __nwlog_obj();
        v223 = __src;
        if (os_log_type_enabled(v222, __src))
        {
          *buf = 136446210;
          *&buf[4] = "nw_necp_append_tlv";
          _os_log_impl(&dword_181A37000, v222, v223, "%{public}s called with null tlv_start", buf, 0xCu);
        }
      }

      else if (uu[0] == 1)
      {
        v231 = __nw_create_backtrace_string();
        v222 = __nwlog_obj();
        v232 = __src;
        v233 = os_log_type_enabled(v222, __src);
        if (v231)
        {
          if (v233)
          {
            *buf = 136446466;
            *&buf[4] = "nw_necp_append_tlv";
            *&buf[12] = 2082;
            *&buf[14] = v231;
            _os_log_impl(&dword_181A37000, v222, v232, "%{public}s called with null tlv_start, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v231);
          goto LABEL_515;
        }

        if (v233)
        {
          *buf = 136446210;
          *&buf[4] = "nw_necp_append_tlv";
          _os_log_impl(&dword_181A37000, v222, v232, "%{public}s called with null tlv_start, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v222 = __nwlog_obj();
        v243 = __src;
        if (os_log_type_enabled(v222, __src))
        {
          *buf = 136446210;
          *&buf[4] = "nw_necp_append_tlv";
          _os_log_impl(&dword_181A37000, v222, v243, "%{public}s called with null tlv_start, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_515:
    if (!v221)
    {
      goto LABEL_315;
    }

    v160 = v221;
    goto LABEL_314;
  }

LABEL_317:
  if ((a5 & 4) == 0)
  {
    goto LABEL_408;
  }

  v262 = 0u;
  v263 = 0u;
  v260 = 0u;
  v261 = 0u;
  v161 = nw_endpoint_copy_public_keys(v11);
  obj = v161;
  v162 = [v161 countByEnumeratingWithState:&v260 objects:v270 count:16];
  if (!v162)
  {
    goto LABEL_407;
  }

  v258 = *v261;
  do
  {
    for (i = 0; i != v162; ++i)
    {
      if (*v261 != v258)
      {
        objc_enumerationMutation(obj);
      }

      v164 = *(*(&v260 + 1) + 8 * i);
      v165 = [v164 length];
      v166 = [v164 bytes];
      if (!a3)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v177 = gLogObj;
        *buf = 136446210;
        *&buf[4] = "nw_necp_append_tlv";
        LODWORD(v251) = 12;
        v250 = buf;
        v178 = _os_log_send_and_compose_impl();

        LOBYTE(__src) = 16;
        uu[0] = 0;
        if (__nwlog_fault(v178, &__src, uu))
        {
          if (__src == 17)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v179 = gLogObj;
            v180 = __src;
            if (os_log_type_enabled(v179, __src))
            {
              *buf = 136446210;
              *&buf[4] = "nw_necp_append_tlv";
              _os_log_impl(&dword_181A37000, v179, v180, "%{public}s called with null tlv_start", buf, 0xCu);
            }

            goto LABEL_392;
          }

          if (uu[0] == 1)
          {
            v185 = __nw_create_backtrace_string();
            if (v185)
            {
              v186 = v185;
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v187 = gLogObj;
              v188 = __src;
              if (os_log_type_enabled(v187, __src))
              {
                *buf = 136446466;
                *&buf[4] = "nw_necp_append_tlv";
                *&buf[12] = 2082;
                *&buf[14] = v186;
                _os_log_impl(&dword_181A37000, v187, v188, "%{public}s called with null tlv_start, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v186);
              if (!v178)
              {
                goto LABEL_322;
              }

LABEL_394:
              v176 = v178;
LABEL_321:
              free(v176);
LABEL_322:
              a3 = 0;
              continue;
            }

            v179 = __nwlog_obj();
            v200 = __src;
            if (os_log_type_enabled(v179, __src))
            {
              *buf = 136446210;
              *&buf[4] = "nw_necp_append_tlv";
              _os_log_impl(&dword_181A37000, v179, v200, "%{public}s called with null tlv_start, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v179 = gLogObj;
            v195 = __src;
            if (os_log_type_enabled(v179, __src))
            {
              *buf = 136446210;
              *&buf[4] = "nw_necp_append_tlv";
              _os_log_impl(&dword_181A37000, v179, v195, "%{public}s called with null tlv_start, backtrace limit exceeded", buf, 0xCu);
            }
          }

LABEL_392:
        }

        if (v178)
        {
          goto LABEL_394;
        }

        goto LABEL_322;
      }

      if (a3 >= v259)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v181 = gLogObj;
        *buf = 136447234;
        *&buf[4] = "nw_necp_append_tlv";
        *&buf[12] = 2048;
        *&buf[14] = a3;
        *&buf[22] = 2048;
        *v279 = v259;
        *&v279[8] = 1024;
        *v280 = 159;
        *&v280[4] = 1024;
        *&v280[6] = v165;
        LODWORD(v251) = 44;
        v250 = buf;
        v182 = _os_log_send_and_compose_impl();

        LOBYTE(__src) = 16;
        uu[0] = 0;
        if (__nwlog_fault(v182, &__src, uu))
        {
          if (__src == 17)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v183 = gLogObj;
            v184 = __src;
            if (os_log_type_enabled(v183, __src))
            {
              *buf = 136447234;
              *&buf[4] = "nw_necp_append_tlv";
              *&buf[12] = 2048;
              *&buf[14] = a3;
              *&buf[22] = 2048;
              *v279 = v259;
              *&v279[8] = 1024;
              *v280 = 159;
              *&v280[4] = 1024;
              *&v280[6] = v165;
              _os_log_impl(&dword_181A37000, v183, v184, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u", buf, 0x2Cu);
            }

            goto LABEL_397;
          }

          if (uu[0] == 1)
          {
            v189 = __nw_create_backtrace_string();
            if (v189)
            {
              v190 = v189;
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v191 = gLogObj;
              v192 = __src;
              if (os_log_type_enabled(v191, __src))
              {
                *buf = 136447490;
                *&buf[4] = "nw_necp_append_tlv";
                *&buf[12] = 2048;
                *&buf[14] = a3;
                *&buf[22] = 2048;
                *v279 = v259;
                *&v279[8] = 1024;
                *v280 = 159;
                *&v280[4] = 1024;
                *&v280[6] = v165;
                *v281 = 2082;
                *&v281[2] = v190;
                _os_log_impl(&dword_181A37000, v191, v192, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, dumping backtrace:%{public}s", buf, 0x36u);
              }

              free(v190);
              if (!v182)
              {
                goto LABEL_322;
              }

              goto LABEL_399;
            }

            v183 = __nwlog_obj();
            v201 = __src;
            if (os_log_type_enabled(v183, __src))
            {
              *buf = 136447234;
              *&buf[4] = "nw_necp_append_tlv";
              *&buf[12] = 2048;
              *&buf[14] = a3;
              *&buf[22] = 2048;
              *v279 = v259;
              *&v279[8] = 1024;
              *v280 = 159;
              *&v280[4] = 1024;
              *&v280[6] = v165;
              _os_log_impl(&dword_181A37000, v183, v201, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, no backtrace", buf, 0x2Cu);
            }
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v183 = gLogObj;
            v196 = __src;
            if (os_log_type_enabled(v183, __src))
            {
              *buf = 136447234;
              *&buf[4] = "nw_necp_append_tlv";
              *&buf[12] = 2048;
              *&buf[14] = a3;
              *&buf[22] = 2048;
              *v279 = v259;
              *&v279[8] = 1024;
              *v280 = 159;
              *&v280[4] = 1024;
              *&v280[6] = v165;
              _os_log_impl(&dword_181A37000, v183, v196, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, backtrace limit exceeded", buf, 0x2Cu);
            }
          }

LABEL_397:
        }

        if (!v182)
        {
          goto LABEL_322;
        }

LABEL_399:
        v176 = v182;
        goto LABEL_321;
      }

      v167 = v165 + 5;
      if (v259 - a3 < v167)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v168 = gLogObj;
        *buf = 136447490;
        *&buf[4] = "nw_necp_append_tlv";
        *&buf[12] = 2048;
        *&buf[14] = a3;
        *&buf[22] = 2048;
        *v279 = v165 + 5;
        *&v279[8] = 2048;
        *v280 = v259;
        *&v280[8] = 1024;
        *v281 = 159;
        *&v281[4] = 1024;
        *&v281[6] = v165;
        LODWORD(v251) = 54;
        v250 = buf;
        v169 = _os_log_send_and_compose_impl();

        LOBYTE(__src) = 16;
        uu[0] = 0;
        if (__nwlog_fault(v169, &__src, uu))
        {
          if (__src == 17)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v170 = gLogObj;
            v171 = __src;
            if (os_log_type_enabled(v170, __src))
            {
              *buf = 136447490;
              *&buf[4] = "nw_necp_append_tlv";
              *&buf[12] = 2048;
              *&buf[14] = a3;
              *&buf[22] = 2048;
              *v279 = v165 + 5;
              *&v279[8] = 2048;
              *v280 = v259;
              *&v280[8] = 1024;
              *v281 = 159;
              *&v281[4] = 1024;
              *&v281[6] = v165;
              _os_log_impl(&dword_181A37000, v170, v171, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u", buf, 0x36u);
            }

            goto LABEL_349;
          }

          if (uu[0] == 1)
          {
            v172 = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v170 = gLogObj;
            v173 = __src;
            v174 = os_log_type_enabled(v170, __src);
            if (v172)
            {
              if (v174)
              {
                *buf = 136447746;
                *&buf[4] = "nw_necp_append_tlv";
                *&buf[12] = 2048;
                *&buf[14] = a3;
                *&buf[22] = 2048;
                *v279 = v165 + 5;
                *&v279[8] = 2048;
                *v280 = v259;
                *&v280[8] = 1024;
                *v281 = 159;
                *&v281[4] = 1024;
                *&v281[6] = v165;
                v282 = 2082;
                v283 = v172;
                _os_log_impl(&dword_181A37000, v170, v173, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, dumping backtrace:%{public}s", buf, 0x40u);
              }

              free(v172);
              if (!v169)
              {
                goto LABEL_322;
              }

              goto LABEL_351;
            }

            if (v174)
            {
              *buf = 136447490;
              *&buf[4] = "nw_necp_append_tlv";
              *&buf[12] = 2048;
              *&buf[14] = a3;
              *&buf[22] = 2048;
              *v279 = v165 + 5;
              *&v279[8] = 2048;
              *v280 = v259;
              *&v280[8] = 1024;
              *v281 = 159;
              *&v281[4] = 1024;
              *&v281[6] = v165;
              _os_log_impl(&dword_181A37000, v170, v173, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, no backtrace", buf, 0x36u);
            }
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v170 = gLogObj;
            v175 = __src;
            if (os_log_type_enabled(v170, __src))
            {
              *buf = 136447490;
              *&buf[4] = "nw_necp_append_tlv";
              *&buf[12] = 2048;
              *&buf[14] = a3;
              *&buf[22] = 2048;
              *v279 = v165 + 5;
              *&v279[8] = 2048;
              *v280 = v259;
              *&v280[8] = 1024;
              *v281 = 159;
              *&v281[4] = 1024;
              *&v281[6] = v165;
              _os_log_impl(&dword_181A37000, v170, v175, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, backtrace limit exceeded", buf, 0x36u);
            }
          }

LABEL_349:
        }

        goto LABEL_350;
      }

      *a3 = -97;
      *(a3 + 1) = v165;
      if (v165)
      {
        if (!v166)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v193 = gLogObj;
          *buf = 136446722;
          *&buf[4] = "nw_necp_append_tlv";
          *&buf[12] = 1024;
          *&buf[14] = 159;
          *&buf[18] = 1024;
          *&buf[20] = v165;
          LODWORD(v251) = 24;
          v250 = buf;
          v169 = _os_log_send_and_compose_impl();

          LOBYTE(__src) = 16;
          uu[0] = 0;
          if (__nwlog_fault(v169, &__src, uu))
          {
            if (__src == 17)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v170 = gLogObj;
              v194 = __src;
              if (os_log_type_enabled(v170, __src))
              {
                *buf = 136446722;
                *&buf[4] = "nw_necp_append_tlv";
                *&buf[12] = 1024;
                *&buf[14] = 159;
                *&buf[18] = 1024;
                *&buf[20] = v165;
                _os_log_impl(&dword_181A37000, v170, v194, "%{public}s type=%u length=%u but value is NULL", buf, 0x18u);
              }

              goto LABEL_349;
            }

            if (uu[0] != 1)
            {
              v170 = __nwlog_obj();
              v202 = __src;
              if (os_log_type_enabled(v170, __src))
              {
                *buf = 136446722;
                *&buf[4] = "nw_necp_append_tlv";
                *&buf[12] = 1024;
                *&buf[14] = 159;
                *&buf[18] = 1024;
                *&buf[20] = v165;
                _os_log_impl(&dword_181A37000, v170, v202, "%{public}s type=%u length=%u but value is NULL, backtrace limit exceeded", buf, 0x18u);
              }

              goto LABEL_349;
            }

            v197 = __nw_create_backtrace_string();
            v170 = __nwlog_obj();
            v198 = __src;
            v199 = os_log_type_enabled(v170, __src);
            if (!v197)
            {
              if (v199)
              {
                *buf = 136446722;
                *&buf[4] = "nw_necp_append_tlv";
                *&buf[12] = 1024;
                *&buf[14] = 159;
                *&buf[18] = 1024;
                *&buf[20] = v165;
                _os_log_impl(&dword_181A37000, v170, v198, "%{public}s type=%u length=%u but value is NULL, no backtrace", buf, 0x18u);
              }

              goto LABEL_349;
            }

            if (v199)
            {
              *buf = 136446978;
              *&buf[4] = "nw_necp_append_tlv";
              *&buf[12] = 1024;
              *&buf[14] = 159;
              *&buf[18] = 1024;
              *&buf[20] = v165;
              *v279 = 2082;
              *&v279[2] = v197;
              _os_log_impl(&dword_181A37000, v170, v198, "%{public}s type=%u length=%u but value is NULL, dumping backtrace:%{public}s", buf, 0x22u);
            }

            free(v197);
          }

LABEL_350:
          if (!v169)
          {
            goto LABEL_322;
          }

LABEL_351:
          v176 = v169;
          goto LABEL_321;
        }

        memcpy((a3 + 5), v166, v165);
      }

      a3 += v167;
    }

    v161 = obj;
    v162 = [obj countByEnumeratingWithState:&v260 objects:v270 count:16];
  }

  while (v162);
LABEL_407:

  v132 = v254;
LABEL_408:
  if (v132)
  {
    free(v132);
  }

  v203 = v252;
LABEL_411:

  return a3;
}

char *_nw_endpoint_create_host_with_numeric_port_0(char *result, __int16 a2)
{
  if (result)
  {
    v3 = sub_182AD3158();
    v5 = v4;
    sub_181AB3234(a2, &v9);
    v6 = v9;
    v14 = v10;
    v15 = v11;
    v16 = v12;
    v17 = v13;
    if (v9 == 1)
    {
      v9 = 0;
      *&v10 = 0;
      *(&v10 + 1) = v3;
      *&v11 = v5;
      WORD4(v11) = a2;
      *(&v11 + 10) = 0;
      v7 = objc_allocWithZone(type metadata accessor for Endpoint(0));
      return Endpoint.init(_:)(&v9);
    }

    else
    {

      v9 = v6;
      v10 = v14;
      v11 = v15;
      v12 = v16;
      v13 = v17;
      v8 = objc_allocWithZone(type metadata accessor for Endpoint(0));
      return Endpoint.init(_:)(&v9);
    }
  }

  return result;
}

uint64_t sub_181AB284C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    result = sub_182AD3168();
    if (__OFADD__(result, 1))
    {
      goto LABEL_10;
    }

    v4 = sub_182AD3168();
  }

  else if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  type metadata accessor for CString();
  result = swift_allocObject();
  if (!__OFADD__(v4, 1))
  {
    *(result + 16) = v4 + 1;
    v6 = result;

    sub_181AB2DD8(a1, a2, (v6 + 24), a1, a2);
    return v6;
  }

  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for CString()
{
  result = qword_1ED410048;
  if (!qword_1ED410048)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_181AB2960(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B608);
  v30 = a2;
  result = sub_182AD3ED8();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_182AD44E8();
      MEMORY[0x1865DB070](v20);
      result = sub_182AD4558();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_181AB2BF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = OBJC_IVAR____TtC7Network8Endpoint_storage;
  swift_beginAccess();
  v11 = *(a1 + v10);
  if (*(v11 + 16) && (v12 = sub_181A41ED0(a2), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 8 * v12);
    swift_endAccess();
    v15 = v14 + 24;

    v16 = sub_182AD3158();
    if (a4)
    {
      if (v16 == a3 && v17 == a4)
      {

LABEL_18:

        goto LABEL_19;
      }

      v19 = sub_182AD4268();

      if (v19)
      {
        goto LABEL_18;
      }
    }

    else
    {
    }

    swift_beginAccess();
    sub_18224FFEC(a2);
    swift_endAccess();

    if (!a4)
    {
      goto LABEL_16;
    }
  }

  else
  {
    result = swift_endAccess();
    if (!a4)
    {
LABEL_16:
      v15 = 0;
      goto LABEL_19;
    }
  }

  v21 = sub_181AB284C(a3, a4);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *(a1 + v10);
  *(a1 + v10) = 0x8000000000000000;
  sub_181AB36FC(v21, a2, isUniquelyReferenced_nonNull_native);
  *(a1 + v10) = v24;
  result = swift_endAccess();
  if (*(v24 + 16))
  {
    result = sub_181A41ED0(a2);
    if (v23)
    {
      v15 = *(*(v24 + 56) + 8 * result) + 24;
LABEL_19:
      *a5 = v15;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_181AB2DD8(uint64_t a1, uint64_t a2, void *__dst, uint64_t a4, unint64_t a5)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_18;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    __src[0] = a1;
    __src[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    if ((a5 & 0x1000000000000000) != 0)
    {
      v11 = __dst;
      v9 = sub_182AD3168();
      __dst = v11;
      v6 = v9 + 1;
      if (!__OFADD__(v9, 1))
      {
LABEL_15:
        v7 = __src;
        goto LABEL_16;
      }
    }

    else
    {
      if ((a5 & 0x2000000000000000) != 0)
      {
        v8 = HIBYTE(a5) & 0xF;
      }

      else
      {
        v8 = a4 & 0xFFFFFFFFFFFFLL;
      }

      v6 = v8 + 1;
      if (!__OFADD__(v8, 1))
      {
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
LABEL_18:
    sub_182AD3B78();
  }

  if ((a5 & 0x1000000000000000) == 0)
  {
    if ((a5 & 0x2000000000000000) != 0)
    {
      result = HIBYTE(a5) & 0xF;
    }

    else
    {
      result = a4 & 0xFFFFFFFFFFFFLL;
    }

    v6 = result + 1;
    if (!__OFADD__(result, 1))
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_22:
  v10 = a2;
  v12 = __dst;
  result = sub_182AD3168();
  a2 = v10;
  __dst = v12;
  v6 = result + 1;
  if (!__OFADD__(result, 1))
  {
LABEL_9:
    v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_16:
    memcpy(__dst, v7, v6);
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t _nw_endpoint_get_hostname_0(void *a1)
{
  v2 = type metadata accessor for URLEndpoint();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC7Network8Endpoint_type;
  v9 = a1;
  swift_beginAccess();
  sub_181A546E0(a1 + v8, v7, type metadata accessor for Endpoint.EndpointType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 5)
  {
    sub_181B2BEE4(v7, v4);
    v21 = sub_182AD1FF8();
    if (v22)
    {
      v23 = v21;
    }

    else
    {
      v23 = 0;
    }

    if (v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = 0xE000000000000000;
    }

    v25 = OBJC_IVAR____TtC7Network8Endpoint_storageLock;
    os_unfair_lock_lock((*&v9[OBJC_IVAR____TtC7Network8Endpoint_storageLock] + 16));
    sub_181AB2BF0(v9, 12, v23, v24, &v32);

    os_unfair_lock_unlock((*&v9[v25] + 16));
    sub_181A5513C(v4, type metadata accessor for URLEndpoint);
LABEL_20:

    return v32;
  }

  if (EnumCaseMultiPayload != 3)
  {
    if (EnumCaseMultiPayload)
    {

      sub_181A5513C(v7, type metadata accessor for Endpoint.EndpointType);
      return 0;
    }

    v11 = *(v7 + 2);
    v12 = *(v7 + 3);
    v13 = *(v7 + 4);
    v14 = *(v7 + 20);
    v15 = v7[42];
    v31 = v13;
    if ((v15 - 2) >= 3)
    {
      if (v15)
      {
        v32 = v11;
        v33 = v12;
        v34 = v13;
        v27 = IPv6Address.debugDescription.getter();
      }

      else
      {
        LODWORD(v32) = v11;
        v33 = v12;
        v27 = IPv4Address.debugDescription.getter();
      }

      v16 = v27;
      v17 = v28;
    }

    else
    {
      v16 = 0;
      v17 = 0;
    }

    v29 = OBJC_IVAR____TtC7Network8Endpoint_storageLock;
    os_unfair_lock_lock((*&v9[OBJC_IVAR____TtC7Network8Endpoint_storageLock] + 16));
    sub_181AB2BF0(v9, 12, v16, v17, &v32);

    os_unfair_lock_unlock((*&v9[v29] + 16));

    sub_181AD1DE4(v11, v12, v31, v14, v15);
    goto LABEL_20;
  }

  v18 = *(v7 + 2);
  v19 = *(v7 + 3);
  v20 = OBJC_IVAR____TtC7Network8Endpoint_storageLock;
  os_unfair_lock_lock((*&v9[OBJC_IVAR____TtC7Network8Endpoint_storageLock] + 16));
  sub_181AB2BF0(v9, 12, v18, v19, &v32);
  os_unfair_lock_unlock((*&v9[v20] + 16));

  return v32;
}

__n128 sub_181AB3234@<Q0>(__int16 a1@<W2>, uint64_t a2@<X8>)
{
  LOWORD(v2) = a1;
  v27 = *MEMORY[0x1E69E9840];
  *&v26.ai_flags = xmmword_182AF5DE0;
  v26.ai_addrlen = 0;
  memset(&v26.ai_canonname, 0, 24);
  v14 = 0u;
  v25 = 0;
  v4 = sub_182AD3048();
  v5 = getaddrinfo((v4 + 32), 0, &v26, &v25);

  v15 = xmmword_182AE69F0;
  if (v5 || !v25 || (ai_addr = v25->ai_addr) == 0)
  {
LABEL_2:
    v6 = 0;
    v2 = 0;
    v7 = 0;
    v8 = 0;
    goto LABEL_3;
  }

  sa_family = ai_addr->sa_family;
  if (sa_family != 30)
  {
    if (sa_family == 2)
    {
      v12 = *&ai_addr->sa_data[2];
      *(&v23 + 4) = 0;
      BYTE12(v23) = 1;
      *&v22[1] = v12;
      LOWORD(v23) = 0;
      BYTE2(v23) = 0;
      sub_181AD2448(0);
      v14 = *&v22[1];
      v15 = 0uLL;
      v2 = v2;
      v8 = *(&v23 + 1);
      v7 = v23;
      v6 = 0;
      v21 = 1;
      memset(v22, 0, sizeof(v22));
      v23 = 0u;
      v24 = 0;
      sub_181F49A88(&v21, &unk_1EA83A480);
      goto LABEL_3;
    }

    goto LABEL_2;
  }

  v6 = *&ai_addr[1].sa_data[6];
  sub_181C2EC98(*&ai_addr->sa_data[6], *&ai_addr[1].sa_len, v2, v16);
  v14 = v16[1];
  v15 = v16[0];
  v2 = v17;
  v7 = v18;
  v8 = v19;
  v13 = v20;
  v21 = 1;
  memset(v22, 0, sizeof(v22));
  v23 = 0u;
  v24 = 0;
  sub_181F49A88(&v21, &unk_1EA83A480);
  if (v15 == 1)
  {
    v6 = v13;
  }

LABEL_3:
  freeaddrinfo(v25);
  result = v15;
  *a2 = v15;
  *(a2 + 16) = v14;
  *(a2 + 32) = v2;
  *(a2 + 40) = v7;
  *(a2 + 48) = v8;
  *(a2 + 56) = v6;
  return result;
}

const char *__cdecl nw_endpoint_get_hostname(nw_endpoint_t endpoint)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = endpoint;
  v2 = v1;
  if (v1)
  {
    hostname = _nw_endpoint_get_hostname(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_get_hostname";
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
        v16 = "nw_endpoint_get_hostname";
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
          v16 = "nw_endpoint_get_hostname";
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
        v16 = "nw_endpoint_get_hostname";
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
        v16 = "nw_endpoint_get_hostname";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  hostname = 0;
LABEL_3:

  return hostname;
}

unint64_t sub_181AB36FC(uint64_t a1, unsigned __int8 a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_181A41ED8(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_181AB2960(v14, a3 & 1);
      result = sub_181A41ED8(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_182AD4408();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_182254CDC();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

char *Endpoint.init(_:)(uint64_t *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v6 = a1[3];
  v8 = *(a1 + 8);
  v9 = *(a1 + 18);
  v10 = &v2[OBJC_IVAR____TtC7Network8Endpoint_alternatePort];
  *v10 = 0;
  v10[2] = 1;
  *&v2[OBJC_IVAR____TtC7Network8Endpoint_cnames] = 0;
  *&v2[OBJC_IVAR____TtC7Network8Endpoint_parentEndpoint] = 0;
  v11 = OBJC_IVAR____TtC7Network8Endpoint_lock;
  type metadata accessor for SystemLock._Storage();
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *&v2[v11] = v12;
  *&v2[OBJC_IVAR____TtC7Network8Endpoint_addressStorage] = 0;
  v13 = MEMORY[0x1E69E7CC0];
  *&v2[OBJC_IVAR____TtC7Network8Endpoint_alternativeEndpoints] = MEMORY[0x1E69E7CC0];
  *&v2[OBJC_IVAR____TtC7Network8Endpoint_associations] = v13;
  *&v2[OBJC_IVAR____TtC7Network8Endpoint_context] = 0;
  v2[OBJC_IVAR____TtC7Network8Endpoint_dnsFailureReason] = 0;
  *&v2[OBJC_IVAR____TtC7Network8Endpoint_echConfig] = 0;
  *&v2[OBJC_IVAR____TtC7Network8Endpoint_edges] = v13;
  *&v2[OBJC_IVAR____TtC7Network8Endpoint_ethernetAddressStorage] = 0;
  *&v2[OBJC_IVAR____TtC7Network8Endpoint_registrar] = 0;
  *&v2[OBJC_IVAR____TtC7Network8Endpoint_signature] = 0;
  v14 = OBJC_IVAR____TtC7Network8Endpoint_storage;
  *&v2[v14] = sub_181A552E8(v13);
  v15 = OBJC_IVAR____TtC7Network8Endpoint_storageLock;
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *&v2[v15] = v16;
  *&v2[OBJC_IVAR____TtC7Network8Endpoint__publicKeys] = v13;
  v2[OBJC_IVAR____TtC7Network8Endpoint_remoteInterfaceType] = 5;
  *&v2[OBJC_IVAR____TtC7Network8Endpoint_flags] = 0;
  v17 = &v2[OBJC_IVAR____TtC7Network8Endpoint_type];
  *v17 = v4;
  *(v17 + 1) = v5;
  *(v17 + 2) = v7;
  *(v17 + 3) = v6;
  *(v17 + 8) = v8;
  *(v17 + 18) = v9;
  type metadata accessor for Endpoint.EndpointType(0);
  swift_storeEnumTagMultiPayload();
  v23.receiver = v2;
  v23.super_class = ObjectType;

  v18 = objc_msgSendSuper2(&v23, sel_init);
  if (sub_182AD31F8())
  {
  }

  else
  {
    v19 = sub_182AD31F8();

    if ((v19 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  v20 = *&v18[OBJC_IVAR____TtC7Network8Endpoint_flags];
  if ((v20 & 8) == 0)
  {
    *&v18[OBJC_IVAR____TtC7Network8Endpoint_flags] = v20 | 8;
  }

LABEL_6:

  return v18;
}

void *__cdecl nw_retain(void *obj)
{
  if (obj)
  {
    return os_retain(obj);
  }

  return obj;
}

uint16_t nw_endpoint_get_port(nw_endpoint_t endpoint)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = endpoint;
  v2 = v1;
  if (v1)
  {
    port = _nw_endpoint_get_port(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_get_port";
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
        v16 = "nw_endpoint_get_port";
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
          v16 = "nw_endpoint_get_port";
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
        v16 = "nw_endpoint_get_port";
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
        v16 = "nw_endpoint_get_port";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  port = 0;
LABEL_3:

  return port;
}

uint64_t sub_181AB3DCC(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

nw_endpoint_type_t nw_endpoint_get_type(nw_endpoint_t endpoint)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = endpoint;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_endpoint_get_type(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_get_type";
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
        v16 = "nw_endpoint_get_type";
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
          v16 = "nw_endpoint_get_type";
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
        v16 = "nw_endpoint_get_type";
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
        v16 = "nw_endpoint_get_type";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  v3 = nw_endpoint_type_invalid;
LABEL_3:

  return v3;
}

uint64_t sub_181AB40C8(void *a1)
{
  v2 = type metadata accessor for URLEndpoint();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC7Network8Endpoint_type;
  v9 = a1;
  swift_beginAccess();
  sub_181A546E0(a1 + v8, v7, type metadata accessor for Endpoint.EndpointType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {

      v11 = *(v7 + 16);

      return v11;
    }

    if (EnumCaseMultiPayload == 4)
    {
      goto LABEL_6;
    }

    sub_181B2BEE4(v7, v4);
    v11 = sub_182AD2028();
    v22 = v21;

    if (v22)
    {
      v11 = *&v4[*(v2 + 28)];
    }

    sub_181A5513C(v4, type metadata accessor for URLEndpoint);
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
LABEL_6:

      sub_181A5513C(v7, type metadata accessor for Endpoint.EndpointType);
      return 0;
    }

    v13 = *(v7 + 2);
    v12 = *(v7 + 3);
    v14 = *(v7 + 4);
    v11 = *(v7 + 20);
    v15 = v7[42];
    if (v15 > 1)
    {
      if (v15 == 2)
      {

        v16 = v13;
        v17 = v12;
        v18 = v14;
        v19 = v11;
        v20 = 2;
      }

      else if (v15 == 3)
      {

        v16 = v13;
        v17 = v12;
        v18 = v14;
        v19 = v11;
        v20 = 3;
      }

      else
      {

        v16 = v13;
        v17 = v12;
        v18 = v14;
        v19 = v11;
        v20 = 4;
      }

      sub_181AD1DE4(v16, v17, v18, v19, v20);
      return 0;
    }

    if (v7[42])
    {

      sub_181AD1DE4(v13, v12, v14, v11, 1u);
    }

    else
    {

      sub_181AD1DE4(v13, v12, v14, v11, 0);
      return v14;
    }
  }

  return v11;
}

unint64_t sub_181AB43B4(void *a1)
{
  v1 = a1;
  sub_181AB5F54(&v4);

  if (!v4)
  {
    return 0;
  }

  result = *(v4 + 16);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(result))
  {
    v3 = nw_interface_create_with_index(result);

    return v3;
  }

  __break(1u);
  return result;
}

id _nw_array_create()
{
  v0 = objc_allocWithZone(type metadata accessor for NWArray());

  return [v0 init];
}

uint64_t _nw_array_prependTm(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  swift_unknownObjectRetain();
  a3(a1, a2);

  return swift_unknownObjectRelease();
}

void sub_181AB456C(char *a1, uint64_t a2)
{
  v3 = *(**&a1[OBJC_IVAR____TtC7Network7NWArray_applyCount] + 136);
  v4 = a1;
  LOBYTE(v5) = atomic_load_explicit(v3(), memory_order_acquire);
  if (v5)
  {
    should_abort = __nwlog_should_abort("cannot append during apply");

    if ((should_abort & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  v7 = OBJC_IVAR____TtC7Network7NWArray_deque;
  swift_beginAccess();
  v8 = *(*&v4[v7] + 24);
  v9 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *&v4[v7];
    if (*(v11 + 16) < v9 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_181ACC600(isUniquelyReferenced_nonNull_native, v9);
      v11 = *&v4[v7];
    }

    sub_181AB467C((v11 + 16), v11 + 40, a2);
    swift_endAccess();
  }
}

void *sub_181AB467C(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result[1];
  v4 = result[2];
  v6 = __OFADD__(v4, v3);
  v5 = v4 + v3;
  if (!v6)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      v6 = __OFSUB__(v5, *result);
      if (v5 < *result || (v5 -= *result, !v6))
      {
LABEL_9:
        *(a2 + 8 * v5) = a3;
        v6 = __OFADD__(v3, 1);
        v7 = v3 + 1;
        if (!v6)
        {
          result[1] = v7;
          return swift_unknownObjectRetain();
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v5 < 0)
    {
      v6 = __OFADD__(v5, *result);
      v5 += *result;
      if (v6)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

void nw_context_purge_all_endpoints(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __nw_context_purge_all_endpoints_block_invoke;
    v11[3] = &unk_1E6A3D868;
    v12 = v1;
    nw_queue_context_async_if_needed(v12, v11);

    goto LABEL_3;
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_context_purge_all_endpoints";
  v4 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v13 = 0;
  if (__nwlog_fault(v4, &type, &v13))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v16 = "nw_context_purge_all_endpoints";
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null context", buf, 0xCu);
      }
    }

    else if (v13 == 1)
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
          v16 = "nw_context_purge_all_endpoints";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v8, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v9)
      {
        *buf = 136446210;
        v16 = "nw_context_purge_all_endpoints";
        _os_log_impl(&dword_181A37000, v5, v8, "%{public}s called with null context, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v5 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v16 = "nw_context_purge_all_endpoints";
        _os_log_impl(&dword_181A37000, v5, v10, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v4)
  {
    free(v4);
  }

LABEL_3:
}

void nw_context_dealloc(NWConcrete_nw_context *a1, int a2)
{
  v79 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3 || *(v3 + 33) != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v72 = "nw_context_dealloc";
      v73 = 2114;
      v74 = v4;
      _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_INFO, "%{public}s Deallocating context %{public}@", buf, 0x16u);
    }
  }

  v70 = 0;
  pthread_threadid_np(0, &v70);
  if (*(v4 + 32) == 4)
  {
    v46 = 0;
    atomic_compare_exchange_strong(v4 + 15, &v46, v70);
    if (v46)
    {
      v47 = __nwlog_obj();
      *buf = 136446722;
      v72 = "nw_context_dealloc";
      v73 = 2048;
      v74 = v70;
      v75 = 2048;
      v65 = v46;
      v76 = v46;
      v48 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v68 = 0;
      if (__nwlog_fault(v48, &type, &v68))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v49 = __nwlog_obj();
          v50 = type;
          if (os_log_type_enabled(v49, type))
          {
            *buf = 136446722;
            v72 = "nw_context_dealloc";
            v73 = 2048;
            v74 = v70;
            v75 = 2048;
            v76 = v65;
            _os_log_impl(&dword_181A37000, v49, v50, "%{public}s Entering call, current TID=%llu, inline TID is already set to %llu", buf, 0x20u);
          }
        }

        else if (v68 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v49 = __nwlog_obj();
          v58 = type;
          v59 = os_log_type_enabled(v49, type);
          if (backtrace_string)
          {
            if (v59)
            {
              *buf = 136446978;
              v72 = "nw_context_dealloc";
              v73 = 2048;
              v74 = v70;
              v75 = 2048;
              v76 = v65;
              v77 = 2082;
              v78 = backtrace_string;
              _os_log_impl(&dword_181A37000, v49, v58, "%{public}s Entering call, current TID=%llu, inline TID is already set to %llu, dumping backtrace:%{public}s", buf, 0x2Au);
            }

            free(backtrace_string);
            goto LABEL_99;
          }

          if (v59)
          {
            *buf = 136446722;
            v72 = "nw_context_dealloc";
            v73 = 2048;
            v74 = v70;
            v75 = 2048;
            v76 = v65;
            _os_log_impl(&dword_181A37000, v49, v58, "%{public}s Entering call, current TID=%llu, inline TID is already set to %llu, no backtrace", buf, 0x20u);
          }
        }

        else
        {
          v49 = __nwlog_obj();
          v63 = type;
          if (os_log_type_enabled(v49, type))
          {
            *buf = 136446722;
            v72 = "nw_context_dealloc";
            v73 = 2048;
            v74 = v70;
            v75 = 2048;
            v76 = v65;
            _os_log_impl(&dword_181A37000, v49, v63, "%{public}s Entering call, current TID=%llu, inline TID is already set to %llu, backtrace limit exceeded", buf, 0x20u);
          }
        }
      }

LABEL_99:
      if (v48)
      {
        free(v48);
      }
    }
  }

  v6 = *(v4 + 5);
  if (v6)
  {
    v7 = v6;
    v8 = v7;
    if ((v7[152] & 8) != 0)
    {
      nw_context_purge_all_endpoints(v7);
    }

    else
    {
      v66[0] = MEMORY[0x1E69E9820];
      v66[1] = 3221225472;
      v66[2] = ___ZL18nw_context_deallocP21NWConcrete_nw_contextb_block_invoke;
      v66[3] = &unk_1E6A3D868;
      v67 = v7;
      nw_queue_context_async(v67, v66);
    }

    if (a2)
    {
      v9 = v8[4];
      if (v9)
      {
        v10 = *(v9 + 68);
        if (v10)
        {
          nw_path_release_globals(v10, 0);
          v9 = v8[4];
          v11 = *(v9 + 68);
          if (v11)
          {
            free(v11);
            v9 = v8[4];
            *(v9 + 68) = 0;
          }
        }

        v12 = *(v9 + 188);
        if (v12)
        {
          nw_mem_buffer_manager_close(v12);
          v9 = v8[4];
          *(v9 + 188) = 0;
        }

        v13 = *(v9 + 180);
        if (v13)
        {
          nw_mem_buffer_manager_close(v13);
          v9 = v8[4];
          *(v9 + 180) = 0;
        }

        v14 = *(v9 + 172);
        if (v14)
        {
          nw_mem_buffer_manager_close(v14);
          v9 = v8[4];
          *(v9 + 172) = 0;
        }

        v15 = *(v9 + 164);
        if (v15)
        {
          nw_mem_buffer_manager_close(v15);
          v9 = v8[4];
          *(v9 + 164) = 0;
        }

        v16 = *(v9 + 156);
        if (v16)
        {
          nw_mem_buffer_manager_close(v16);
          *(v8[4] + 156) = 0;
        }
      }
    }
  }

  v18 = v4;
  v19 = *(v18 + 3);
  if (v19)
  {
    if (*(v19 + 56))
    {
      nw_queue_cancel_source(*(v19 + 56), v17);
      v19 = *(v18 + 3);
      *(v19 + 56) = 0;
    }

    if (*(v19 + 32))
    {
      _nw_hash_table_release(*(v19 + 32), v17);
      v19 = *(v18 + 3);
      *(v19 + 32) = 0;
    }

    if (*(v19 + 40))
    {
      _nw_hash_table_release(*(v19 + 40), v17);
      v19 = *(v18 + 3);
      *(v19 + 40) = 0;
    }

    if (*(v19 + 48))
    {
      _nw_hash_table_release(*(v19 + 48), v17);
      v19 = *(v18 + 3);
      *(v19 + 48) = 0;
    }

    free(v19);
    *(v18 + 3) = 0;
  }

  v20 = v18;
  v21 = *(v20 + 4);
  if (v21)
  {
    v22 = *(v21 + 92);
    *(v21 + 92) = 0;

    v24 = v20 + 32;
    v23 = *(v20 + 4);
    v25 = *(v23 + 100);
    *(v23 + 100) = 0;

    v26 = *(*(v20 + 4) + 108);
    *(*v24 + 108) = 0;

    v27 = *(*(v20 + 4) + 116);
    *(*v24 + 116) = 0;

    v28 = *(*(v20 + 4) + 124);
    *(*v24 + 124) = 0;

    v29 = *(*(v20 + 4) + 132);
    *(*v24 + 132) = 0;

    v31 = *(v20 + 4);
    if (*v31)
    {
      nw_queue_cancel_source(*v31, v30);
      v31 = *(v20 + 4);
      *v31 = 0;
    }

    v32 = *(v31 + 24);
    if (v32)
    {
      _nw_hash_table_release(v32, v30);
      v31 = *(v20 + 4);
      *(v31 + 24) = 0;
    }

    v33 = *(v31 + 52);
    if (v33)
    {
      nw_hash_table_apply(v33, &__block_literal_global_128);
      v31 = *(v20 + 4);
      v35 = *(v31 + 52);
      if (v35)
      {
        _nw_hash_table_release(v35, v34);
        v31 = *(v20 + 4);
        *(v31 + 52) = 0;
      }
    }

    v36 = *(v31 + 60);
    if (v36)
    {
      if (*v36)
      {
        os_release(*v36);
        *v36 = 0;
      }

      v37 = *(v36 + 8);
      if (v37)
      {
        os_release(v37);
        *(v36 + 8) = 0;
      }

      v31 = *(v20 + 4);
      v38 = *(v31 + 60);
      if (v38)
      {
        free(v38);
        v31 = *(v20 + 4);
        *(v31 + 60) = 0;
      }
    }

    v39 = *(v31 + 68);
    if (v39)
    {
      nw_path_release_globals(v39, 0);
      v31 = *(v20 + 4);
      v40 = *(v31 + 68);
      if (v40)
      {
        free(v40);
        v31 = *(v20 + 4);
        *(v31 + 68) = 0;
      }
    }

    v41 = *(v31 + 188);
    if (v41)
    {
      nw_mem_buffer_manager_close(v41);
      v31 = *(v20 + 4);
      *(v31 + 188) = 0;
    }

    v42 = *(v31 + 180);
    if (v42)
    {
      nw_mem_buffer_manager_close(v42);
      v31 = *(v20 + 4);
      *(v31 + 180) = 0;
    }

    v43 = *(v31 + 172);
    if (v43)
    {
      nw_mem_buffer_manager_close(v43);
      v31 = *(v20 + 4);
      *(v31 + 172) = 0;
    }

    v44 = *(v31 + 164);
    if (v44)
    {
      nw_mem_buffer_manager_close(v44);
      v31 = *(v20 + 4);
      *(v31 + 164) = 0;
    }

    v45 = *(v31 + 156);
    if (v45)
    {
      nw_mem_buffer_manager_close(v45);
      v31 = *(v20 + 4);
      *(v31 + 156) = 0;
    }

    free(v31);
    *(v20 + 4) = 0;
  }

  if ((*(v20 + 152) & 8) != 0)
  {
    v51 = v70;
    v52 = v70;
    atomic_compare_exchange_strong(v20 + 15, &v52, 0);
    if (v52 != v51)
    {
      v53 = __nwlog_obj();
      *buf = 136446722;
      v72 = "nw_context_dealloc";
      v73 = 2048;
      v74 = v70;
      v75 = 2048;
      v76 = v52;
      v54 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v68 = 0;
      if (__nwlog_fault(v54, &type, &v68))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v55 = __nwlog_obj();
          v56 = type;
          if (os_log_type_enabled(v55, type))
          {
            *buf = 136446722;
            v72 = "nw_context_dealloc";
            v73 = 2048;
            v74 = v70;
            v75 = 2048;
            v76 = v52;
            _os_log_impl(&dword_181A37000, v55, v56, "%{public}s Exiting call, expected inline TID to be %llu but got %llu", buf, 0x20u);
          }
        }

        else if (v68 == 1)
        {
          v60 = __nw_create_backtrace_string();
          v55 = __nwlog_obj();
          v61 = type;
          v62 = os_log_type_enabled(v55, type);
          if (v60)
          {
            if (v62)
            {
              *buf = 136446978;
              v72 = "nw_context_dealloc";
              v73 = 2048;
              v74 = v70;
              v75 = 2048;
              v76 = v52;
              v77 = 2082;
              v78 = v60;
              _os_log_impl(&dword_181A37000, v55, v61, "%{public}s Exiting call, expected inline TID to be %llu but got %llu, dumping backtrace:%{public}s", buf, 0x2Au);
            }

            free(v60);
            goto LABEL_104;
          }

          if (v62)
          {
            *buf = 136446722;
            v72 = "nw_context_dealloc";
            v73 = 2048;
            v74 = v70;
            v75 = 2048;
            v76 = v52;
            _os_log_impl(&dword_181A37000, v55, v61, "%{public}s Exiting call, expected inline TID to be %llu but got %llu, no backtrace", buf, 0x20u);
          }
        }

        else
        {
          v55 = __nwlog_obj();
          v64 = type;
          if (os_log_type_enabled(v55, type))
          {
            *buf = 136446722;
            v72 = "nw_context_dealloc";
            v73 = 2048;
            v74 = v70;
            v75 = 2048;
            v76 = v52;
            _os_log_impl(&dword_181A37000, v55, v64, "%{public}s Exiting call, expected inline TID to be %llu but got %llu, backtrace limit exceeded", buf, 0x20u);
          }
        }
      }

LABEL_104:
      if (v54)
      {
        free(v54);
      }
    }
  }
}

void sub_181AB54A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = NWConcrete_nw_context;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_181AB5A54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, objc_super a14)
{
  a14.super_class = NWConcrete_nw_path_evaluator;
  [(_Unwind_Exception *)&a14 dealloc];
  _Unwind_Resume(a1);
}

uint64_t sub_181AB5B54(uint64_t a1)
{
  if ((*(v1 + 158) & 8) != 0)
  {
    return 1;
  }

  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 116);
  v6 = *(v1 + 117);
  if (*v1)
  {
    if (*(*v1 + 136))
    {
      return 1;
    }

    goto LABEL_17;
  }

  v8 = *(v1 + 200);
  if (!v8)
  {
LABEL_17:
    if (v5 != 1)
    {
      return 0;
    }

LABEL_18:
    result = 0;
    if (v6 == 4 || v6 == 29)
    {
      return result;
    }

    if ((!v2 || (*(v2 + 136) & 1) == 0) && (!v4 || (*(v4 + 136) & 1) == 0))
    {
      if (!v3)
      {
        return 0;
      }

      return *(v3 + 136) & 1;
    }

    return 1;
  }

  v9 = v8[4];
  v10 = v8[2];
  if (v10 >= v8[3] + v9)
  {
    v10 = v8[3] + v9;
  }

  v28 = *(v1 + 200);
  v29 = v9;
  v30 = v10;
  v11 = v8;
  while (v9 != v10)
  {
LABEL_14:
    v12 = v9 + 1;
    v29 = v9 + 1;
    v13 = &v11[26 * v9];
    v14 = *(v13 + 9);
    v15 = *(v13 + 13);
    v16 = *(v13 + 7);
    v26[3] = *(v13 + 11);
    v26[4] = v15;
    v26[1] = v16;
    v26[2] = v14;
    v17 = *(v13 + 17);
    v18 = *(v13 + 21);
    v19 = *(v13 + 15);
    v26[7] = *(v13 + 19);
    v26[8] = v18;
    v26[5] = v19;
    v26[6] = v17;
    v20 = *(v13 + 25);
    v21 = *(v13 + 27);
    v22 = *(v13 + 23);
    *&v27[10] = *(v13 + 226);
    v26[10] = v20;
    *v27 = v21;
    v26[9] = v22;
    v26[0] = *(v13 + 5);
    v23 = *(&v26[0] + 1);
    if (*(&v26[0] + 1) && (v27[24] & 1) != 0)
    {

      sub_181AFE6F4(v26, &v25);

      sub_181AFE6A0(v26);
      v24 = *(v23 + 136);

      if (v24)
      {
        return 1;
      }

      goto LABEL_17;
    }

    v10 = v30;
    v9 = v12;
  }

  a1 = sub_181AC81FC(a1);
  if (a1)
  {
    v11 = v28;
    v9 = v29;
    goto LABEL_14;
  }

  if (v5 == 1)
  {
    goto LABEL_18;
  }

  return 0;
}

uint64_t sub_181AB5D28(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t nw_calloc_type<unsigned char>(size_t count)
{
  if (!count)
  {
    v4 = __nwlog_obj();
    os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
    v5 = _os_log_send_and_compose_impl();
    result = __nwlog_should_abort(v5);
    if (result)
    {
      goto LABEL_8;
    }

    free(v5);
  }

  result = malloc_type_calloc(count, 1uLL, 0x1B7E0D9uLL);
  if (result)
  {
    return result;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
  v3 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort(v3);
  if (result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  free(v3);
  return 0;
}

uint64_t sub_181AB5F54@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for URLEndpoint();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = (&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC7Network8Endpoint_type;
  swift_beginAccess();
  sub_181ACC828(v1 + v9, v8, type metadata accessor for Endpoint.EndpointType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3 && EnumCaseMultiPayload != 4)
    {
      sub_181AA91BC(v8, v5, type metadata accessor for URLEndpoint);
      v11 = *v5;

      result = sub_181A5513C(v5, type metadata accessor for URLEndpoint);
      goto LABEL_8;
    }

    v11 = *v8;
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v11 = *v8;
      v13 = *(v8 + 2);
      v14 = *(v8 + 3);
      v15 = *(v8 + 4);
      v16 = v8[42];
      v17 = *(v8 + 20);

      result = sub_181AD1DE4(v13, v14, v15, v17, v16);
      goto LABEL_8;
    }

    v11 = *(*v8 + 16);
  }

LABEL_8:
  *a1 = v11;
  return result;
}

uint64_t sub_181AB612C(uint64_t result)
{
  if (result)
  {

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t nw_context_get_sensitive_redacted(void *a1)
{
  v1 = a1;
  if (v1 && (v2 = v1[33], (v2 - 2) >= 2))
  {
    v3 = v2 != 1;
  }

  else
  {
    if (nwlog_get_sensitive_redacted::onceToken != -1)
    {
      v5 = v1;
      dispatch_once(&nwlog_get_sensitive_redacted::onceToken, &__block_literal_global_83);
      v1 = v5;
    }

    v3 = nwlog_get_sensitive_redacted::sensitiveRedacted;
  }

  return v3 & 1;
}

uint64_t __nwlog_salted_hash(const void *a1, uint64_t a2, char *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = a2;
    if (a2)
    {
      if (__nwlog_salted_hash::onceToken != -1)
      {
        dispatch_once(&__nwlog_salted_hash::onceToken, &__block_literal_global_92);
      }

      memset(&c, 0, sizeof(c));
      CC_SHA256_Init(&c);
      CC_SHA256_Update(&c, &__nwlog_salted_hash::salt, 0x40u);
      CC_SHA256_Update(&c, a1, v4);
      CC_SHA256_Final(&md, &c);
      v6 = md;
      v7 = md >> 4;
      v8 = v7 + 87;
      v9 = v7 | 0x30;
      if (md > 0x9Fu)
      {
        v9 = v8;
      }

      *a3 = v9;
      if ((v6 & 0xFu) <= 9)
      {
        v10 = v6 & 0xF | 0x30;
      }

      else
      {
        v10 = (v6 & 0xF) + 87;
      }

      a3[1] = v10;
      v11 = v30;
      v12 = v30 >> 4;
      v13 = v12 + 87;
      v14 = v12 | 0x30;
      if (v30 > 0x9Fu)
      {
        v14 = v13;
      }

      a3[2] = v14;
      if ((v11 & 0xFu) <= 9)
      {
        v15 = v11 & 0xF | 0x30;
      }

      else
      {
        v15 = (v11 & 0xF) + 87;
      }

      a3[3] = v15;
      v16 = v31;
      v17 = v31 >> 4;
      v18 = v17 + 87;
      v19 = v17 | 0x30;
      if (v31 > 0x9Fu)
      {
        v19 = v18;
      }

      a3[4] = v19;
      if ((v16 & 0xFu) <= 9)
      {
        v20 = v16 & 0xF | 0x30;
      }

      else
      {
        v20 = (v16 & 0xF) + 87;
      }

      a3[5] = v20;
      v21 = v32;
      v22 = v32 >> 4;
      v23 = v22 + 87;
      v24 = v22 | 0x30;
      if (v32 > 0x9Fu)
      {
        v24 = v23;
      }

      a3[6] = v24;
      if ((v21 & 0xFu) <= 9)
      {
        v25 = v21 & 0xF | 0x30;
      }

      else
      {
        v25 = (v21 & 0xF) + 87;
      }

      a3[7] = v25;
      a3[8] = 0;
      return a3;
    }
  }

  if (a3)
  {
LABEL_27:
    strcpy(a3, "<null>");
    return a3;
  }

  v27 = __nwlog_obj();
  os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
  c.count[0] = 136446210;
  *&c.count[1] = "_strict_strlcpy";
  v28 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort(v28);
  if (!result)
  {
    free(v28);
    goto LABEL_27;
  }

  __break(1u);
  return result;
}