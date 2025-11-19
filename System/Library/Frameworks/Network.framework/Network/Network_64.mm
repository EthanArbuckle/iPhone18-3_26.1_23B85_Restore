char *nw_path_fallback_is_preferred(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_path_fallback_is_preferred(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_fallback_is_preferred";
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
        v16 = "nw_path_fallback_is_preferred";
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
          v16 = "nw_path_fallback_is_preferred";
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
        v16 = "nw_path_fallback_is_preferred";
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
        v16 = "nw_path_fallback_is_preferred";
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

char *_nw_path_fallback_is_preferred(char *result)
{
  if (result)
  {
    v1 = &result[OBJC_IVAR____TtC7Network8__NWPath_path];
    v2 = result;
    swift_beginAccess();
    LODWORD(v1) = *(v1 + 39);

    return ((v1 >> 3) & 1);
  }

  return result;
}

uint64_t nw_path_get_fallback_interface_index(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    fallback_interface_index = _nw_path_get_fallback_interface_index(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_get_fallback_interface_index";
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
        v16 = "nw_path_get_fallback_interface_index";
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
          v16 = "nw_path_get_fallback_interface_index";
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
        v16 = "nw_path_get_fallback_interface_index";
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
        v16 = "nw_path_get_fallback_interface_index";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  fallback_interface_index = 0;
LABEL_3:

  return fallback_interface_index;
}

uint64_t nw_endpoint_create_application_service(const char *a1, uint64_t a2)
{
  v33 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v18 = __nwlog_obj();
    *buf = 136446210;
    v28 = "nw_endpoint_create_application_service";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v7, &type, &v25))
    {
      goto LABEL_27;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v19 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_26;
      }

      *buf = 136446210;
      v28 = "nw_endpoint_create_application_service";
      v10 = "%{public}s called with null application_service";
      goto LABEL_59;
    }

    if (v25 == 1)
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
          v28 = "nw_endpoint_create_application_service";
          v29 = 2082;
          v30 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v19, "%{public}s called with null application_service, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_27;
      }

      if (!v21)
      {
        goto LABEL_26;
      }

      *buf = 136446210;
      v28 = "nw_endpoint_create_application_service";
      v10 = "%{public}s called with null application_service, no backtrace";
    }

    else
    {
      v8 = __nwlog_obj();
      v19 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_26;
      }

      *buf = 136446210;
      v28 = "nw_endpoint_create_application_service";
      v10 = "%{public}s called with null application_service, backtrace limit exceeded";
    }

LABEL_59:
    v15 = v8;
    v16 = v19;
    v17 = 12;
    goto LABEL_25;
  }

  v4 = strlen(a1);
  if (!v4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    *buf = 136446466;
    v28 = "nw_endpoint_create_application_service";
    v29 = 2082;
    v30 = "application_service";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v7, &type, &v25))
    {
      goto LABEL_27;
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
        v28 = "nw_endpoint_create_application_service";
        v29 = 2082;
        v30 = "application_service";
        v10 = "%{public}s invalid empty string %{public}s";
LABEL_23:
        v15 = v8;
        v16 = v9;
LABEL_24:
        v17 = 22;
LABEL_25:
        _os_log_impl(&dword_181A37000, v15, v16, v10, buf, v17);
      }
    }

    else
    {
      if (v25 == 1)
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
            v28 = "nw_endpoint_create_application_service";
            v29 = 2082;
            v30 = "application_service";
            v31 = 2082;
            v32 = v12;
            _os_log_impl(&dword_181A37000, v8, v13, "%{public}s invalid empty string %{public}s, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(v12);
          if (!v7)
          {
            return 0;
          }

          goto LABEL_28;
        }

        if (!v14)
        {
          goto LABEL_26;
        }

        *buf = 136446466;
        v28 = "nw_endpoint_create_application_service";
        v29 = 2082;
        v30 = "application_service";
        v10 = "%{public}s invalid empty string %{public}s, no backtrace";
        v15 = v8;
        v16 = v13;
        goto LABEL_24;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446466;
        v28 = "nw_endpoint_create_application_service";
        v29 = 2082;
        v30 = "application_service";
        v10 = "%{public}s invalid empty string %{public}s, backtrace limit exceeded";
        goto LABEL_23;
      }
    }

LABEL_26:

    goto LABEL_27;
  }

  if (v4 >= 0x400)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v28 = "nw_endpoint_create_application_service";
      v29 = 2082;
      v30 = "application_service";
      v31 = 1024;
      LODWORD(v32) = 1024;
      _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_ERROR, "%{public}s %{public}s is longer than %d", buf, 0x1Cu);
    }

    return 0;
  }

  if (!a2)
  {
    v22 = __nwlog_obj();
    *buf = 136446210;
    v28 = "nw_endpoint_create_application_service";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (__nwlog_fault(v7, &type, &v25))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v8 = __nwlog_obj();
        v19 = type;
        if (!os_log_type_enabled(v8, type))
        {
          goto LABEL_26;
        }

        *buf = 136446210;
        v28 = "nw_endpoint_create_application_service";
        v10 = "%{public}s called with null service_uuid";
      }

      else if (v25 == 1)
      {
        v23 = __nw_create_backtrace_string();
        v8 = __nwlog_obj();
        v19 = type;
        v24 = os_log_type_enabled(v8, type);
        if (v23)
        {
          if (v24)
          {
            *buf = 136446466;
            v28 = "nw_endpoint_create_application_service";
            v29 = 2082;
            v30 = v23;
            _os_log_impl(&dword_181A37000, v8, v19, "%{public}s called with null service_uuid, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v23);
          if (!v7)
          {
            return 0;
          }

          goto LABEL_28;
        }

        if (!v24)
        {
          goto LABEL_26;
        }

        *buf = 136446210;
        v28 = "nw_endpoint_create_application_service";
        v10 = "%{public}s called with null service_uuid, no backtrace";
      }

      else
      {
        v8 = __nwlog_obj();
        v19 = type;
        if (!os_log_type_enabled(v8, type))
        {
          goto LABEL_26;
        }

        *buf = 136446210;
        v28 = "nw_endpoint_create_application_service";
        v10 = "%{public}s called with null service_uuid, backtrace limit exceeded";
      }

      goto LABEL_59;
    }

LABEL_27:
    if (!v7)
    {
      return 0;
    }

LABEL_28:
    free(v7);
    return 0;
  }

  return _nw_endpoint_create_application_service(a1, a2);
}

id sub_181E62FD0(id result, unsigned __int8 *a2)
{
  if (result)
  {
    v45 = sub_182AD3158();
    v4 = v3;
    sub_181E29948(a2, &v62);
    v44 = BYTE2(v62);
    v42 = v62;
    v43 = BYTE3(v62);
    v37 = BYTE1(v62);
    v38 = BYTE4(v62);
    v40 = BYTE6(v62);
    v41 = BYTE5(v62);
    v39 = BYTE7(v62);
    v35 = BYTE9(v62);
    v36 = BYTE8(v62);
    v50 = BYTE11(v62);
    v51 = BYTE10(v62);
    v48 = BYTE13(v62);
    v49 = BYTE12(v62);
    v46 = HIBYTE(v62);
    v47 = BYTE14(v62);

    v5 = MEMORY[0x1865D9CA0](47, 0xE100000000000000);
    MEMORY[0x1EEE9AC00](v5);
    v6 = sub_182AD30D8();
    v8 = v7;
    *&v53 = v45;
    *(&v53 + 1) = v4;

    MEMORY[0x1865D9CA0](v6, v8);

    type metadata accessor for ApplicationServiceEndpoint1.AppSVCBackingClass();
    v9 = swift_allocObject();
    v9[2] = 0;
    v10 = (v9 + 2);
    v9[3] = 0;
    v9[4] = v45;
    v9[5] = v4;
    v9[6] = v45;
    v9[7] = v4;
    *(v9 + 64) = v42;
    *(v9 + 65) = v37;
    *(v9 + 66) = v44;
    *(v9 + 67) = v43;
    *(v9 + 68) = v38;
    *(v9 + 69) = v41;
    *(v9 + 70) = v40;
    *(v9 + 71) = v39;
    *(v9 + 72) = v36;
    *(v9 + 73) = v35;
    *(v9 + 74) = v51;
    *(v9 + 75) = v50;
    *(v9 + 76) = v49;
    *(v9 + 77) = v48;
    *(v9 + 78) = v47;
    *(v9 + 79) = v46;
    *(v9 + 32) = 0;
    *(v9 + 6) = 0u;
    *(v9 + 7) = 0u;
    *(v9 + 5) = 0u;
    *(v9 + 132) = 3;
    *(v9 + 133) = v63;
    *(v9 + 135) = v64;
    *(v9 + 17) = xmmword_182AF5DF0;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = *(v9 + 8);
      v59 = *(v9 + 7);
      v60 = v11;
      v61 = v9[18];
      v12 = *(v9 + 4);
      v55 = *(v9 + 3);
      v56 = v12;
      v13 = *(v9 + 6);
      v57 = *(v9 + 5);
      v58 = v13;
      v14 = *(v9 + 2);
      v53 = *v10;
      v54 = v14;
      v15 = swift_allocObject();
      v16 = *(v9 + 8);
      *(v15 + 112) = *(v9 + 7);
      *(v15 + 128) = v16;
      *(v15 + 144) = v9[18];
      v17 = *(v9 + 4);
      *(v15 + 48) = *(v9 + 3);
      *(v15 + 64) = v17;
      v18 = *(v9 + 6);
      *(v15 + 80) = *(v9 + 5);
      *(v15 + 96) = v18;
      v19 = *(v9 + 2);
      *(v15 + 16) = *v10;
      *(v15 + 32) = v19;
      sub_181E63A90(&v53, v52);

      v9 = v15;
    }

    v9[10] = 0;
    v9[11] = 0;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = *(v9 + 8);
      v59 = *(v9 + 7);
      v60 = v20;
      v61 = v9[18];
      v21 = *(v9 + 4);
      v55 = *(v9 + 3);
      v56 = v21;
      v22 = *(v9 + 6);
      v57 = *(v9 + 5);
      v58 = v22;
      v23 = *(v9 + 2);
      v53 = *(v9 + 1);
      v54 = v23;
      v24 = swift_allocObject();
      v25 = *(v9 + 8);
      *(v24 + 112) = *(v9 + 7);
      *(v24 + 128) = v25;
      *(v24 + 144) = v9[18];
      v26 = *(v9 + 4);
      *(v24 + 48) = *(v9 + 3);
      *(v24 + 64) = v26;
      v27 = *(v9 + 6);
      *(v24 + 80) = *(v9 + 5);
      *(v24 + 96) = v27;
      v28 = *(v9 + 2);
      *(v24 + 16) = *(v9 + 1);
      *(v24 + 32) = v28;
      sub_181E63A90(&v53, v52);

      v9 = v24;
    }

    v9[12] = 0;
    v9[13] = 0;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = *(v9 + 8);
      v59 = *(v9 + 7);
      v60 = v29;
      v61 = v9[18];
      v30 = *(v9 + 4);
      v55 = *(v9 + 3);
      v56 = v30;
      v31 = *(v9 + 6);
      v57 = *(v9 + 5);
      v58 = v31;
      v32 = *(v9 + 2);
      v53 = *(v9 + 1);
      v54 = v32;
      v33 = swift_allocObject();
      memmove((v33 + 16), v9 + 2, 0x88uLL);
      sub_181E63A90(&v53, v52);

      v9 = v33;
    }

    v9[14] = 0;
    v9[15] = 0;

    *&v53 = v9;
    v34 = objc_allocWithZone(type metadata accessor for Endpoint(0));
    return Endpoint.init(_:)(&v53);
  }

  return result;
}

id Endpoint.init(_:)(uint64_t *a1)
{
  return sub_181E63484(a1);
}

{
  return sub_181E63484(a1);
}

id sub_181E63484(uint64_t *a1)
{
  ObjectType = swift_getObjectType();
  v4 = *a1;
  v5 = &v1[OBJC_IVAR____TtC7Network8Endpoint_alternatePort];
  *v5 = 0;
  v5[2] = 1;
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_cnames] = 0;
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_parentEndpoint] = 0;
  v6 = OBJC_IVAR____TtC7Network8Endpoint_lock;
  type metadata accessor for SystemLock._Storage();
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *&v1[v6] = v7;
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_addressStorage] = 0;
  v8 = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_alternativeEndpoints] = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_associations] = v8;
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_context] = 0;
  v1[OBJC_IVAR____TtC7Network8Endpoint_dnsFailureReason] = 0;
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_echConfig] = 0;
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_edges] = v8;
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_ethernetAddressStorage] = 0;
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_registrar] = 0;
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_signature] = 0;
  v9 = OBJC_IVAR____TtC7Network8Endpoint_storage;
  *&v1[v9] = sub_181A552E8(v8);
  v10 = OBJC_IVAR____TtC7Network8Endpoint_storageLock;
  v11 = swift_allocObject();
  *&v1[v10] = v11;
  *(v11 + 16) = 0;
  *&v1[OBJC_IVAR____TtC7Network8Endpoint__publicKeys] = v8;
  v1[OBJC_IVAR____TtC7Network8Endpoint_remoteInterfaceType] = 5;
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_flags] = 0;
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_type] = v4;
  type metadata accessor for Endpoint.EndpointType(0);
  swift_storeEnumTagMultiPayload();
  v13.receiver = v1;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, sel_init);
}

void nw_endpoint_set_agent_identifier(void *a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    _nw_endpoint_set_agent_identifier(v3, a2);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_set_agent_identifier";
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
        v16 = "nw_endpoint_set_agent_identifier";
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
          v16 = "nw_endpoint_set_agent_identifier";
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
        v16 = "nw_endpoint_set_agent_identifier";
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
        v16 = "nw_endpoint_set_agent_identifier";
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

uint64_t sub_181E638F4(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (!v7)
  {
    v11 = 0;
    v12 = 0;
    v10 = 0;
    v9 = 0;
    if (a3)
    {
      goto LABEL_9;
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

    goto LABEL_10;
  }

  v10 = v7[4];
  v9 = v7[5];
  v12 = v7[2];
  v11 = v7[3];

  sub_181E6550C(v12);
  if ((a3 & 1) == 0)
  {
    goto LABEL_7;
  }

  if (!v9)
  {
    if (!v12)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

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
LABEL_10:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = *(v16 + 112);
    v23[5] = *(v16 + 96);
    v23[6] = v17;
    v23[7] = *(v16 + 128);
    v24 = *(v16 + 144);
    v18 = *(v16 + 48);
    v23[1] = *(v16 + 32);
    v23[2] = v18;
    v19 = *(v16 + 80);
    v23[3] = *(v16 + 64);
    v23[4] = v19;
    v23[0] = *(v16 + 16);
    type metadata accessor for ApplicationServiceEndpoint1.AppSVCBackingClass();
    v20 = swift_allocObject();
    memmove((v20 + 16), (v16 + 16), 0x88uLL);
    sub_181E63A90(v23, v22);

    *v3 = v20;
    v16 = v20;
  }

  *(v16 + 16) = v8;
  *(v16 + 24) = v14;
}

uint64_t sub_181E63AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);

  LOBYTE(a5) = v9(a2, a3, a4, a5);

  return a5 & 1;
}

uint64_t sub_181E63B68(uint64_t a1, int a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_182AD3158();
  v11 = v10;
  if (a2 == 4)
  {
    v15 = sub_181E63D00(a3, a4);
    NWTXTRecord.Entry.init(_:)(v15, v16, v23);
    v17 = v23[0];
    v18 = v23[1];
    v19 = v24;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *(a5 + 16);
    *(a5 + 16) = 0x8000000000000000;
    sub_181E63F28(v17, v18, v19, v9, v11, isUniquelyReferenced_nonNull_native);

    v14 = v22;
  }

  else
  {
    if (a2 == 3)
    {
      swift_beginAccess();
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v23[0] = *(a5 + 16);
      *(a5 + 16) = 0x8000000000000000;
      v13 = 1;
    }

    else
    {
      if (a2 != 2)
      {

        return 1;
      }

      swift_beginAccess();
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v23[0] = *(a5 + 16);
      *(a5 + 16) = 0x8000000000000000;
      v13 = 0;
    }

    sub_181E63F28(v13, 0, 2, v9, v11, v12);

    v14 = v23[0];
  }

  *(a5 + 16) = v14;
  swift_endAccess();
  return 1;
}

unint64_t sub_181E63D00(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_181E68460(a1, &a1[a2]);
  }

  sub_182AD1DB8();
  swift_allocObject();
  sub_182AD1D48();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_182AD20C8();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

unint64_t sub_181E63DB0(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t NWTXTRecord.Entry.init(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_182AD3008();
  result = MEMORY[0x1EEE9AC00](v6 - 8);
  if (a2 >> 60 == 15)
  {
    a1 = 0;
    a2 = 0;
    v8 = 2;
    goto LABEL_14;
  }

  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2 || *(a1 + 16) == *(a1 + 24))
    {
      goto LABEL_12;
    }
  }

  else if (v9)
  {
    if (a1 == a1 >> 32)
    {
LABEL_12:
      result = sub_181D9D680(a1, a2);
      a2 = 0;
      v8 = 2;
      a1 = 1;
      goto LABEL_14;
    }
  }

  else if ((a2 & 0xFF000000000000) == 0)
  {
    goto LABEL_12;
  }

  sub_182AD2FD8();
  sub_181E692AC();
  result = sub_182AD2FB8();
  if (v10)
  {
    v11 = result;
    v12 = v10;
    result = sub_181D9D680(a1, a2);
    v8 = 0;
    a1 = v11;
    a2 = v12;
  }

  else
  {
    v8 = 1;
  }

LABEL_14:
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = v8;
  return result;
}

uint64_t sub_181E63F28(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_181E68520(a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_181E686CC(v20, a6 & 1);
      v15 = sub_181E68520(a4, a5);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        result = sub_182AD4408();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      sub_182254FA0();
      v15 = v23;
    }
  }

  v25 = *v7;
  if (v21)
  {
    v26 = v25[7] + 24 * v15;
    v27 = *v26;
    v28 = *(v26 + 8);
    *v26 = a1;
    *(v26 + 8) = a2;
    v29 = *(v26 + 16);
    *(v26 + 16) = a3;

    return sub_1820F5168(v27, v28, v29);
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v31 = (v25[6] + 16 * v15);
  *v31 = a4;
  v31[1] = a5;
  v32 = v25[7] + 24 * v15;
  *v32 = a1;
  *(v32 + 8) = a2;
  *(v32 + 16) = a3;
  v33 = v25[2];
  v19 = __OFADD__(v33, 1);
  v34 = v33 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v34;
}

uint64_t sub_181E640D0(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 16);
  v5 = *(*v2 + 24);
  v22 = v6;
  if (!v5)
  {
    v7 = 0;
    v10 = 0;
    v9 = 0;
    v8 = 0;
    if (!a1)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v7 = *(v5 + 32);
  v8 = *(v5 + 40);
  v10 = *(v5 + 48);
  v9 = *(v5 + 56);
  v11 = *(v5 + 64);

  if (v11 != 1)
  {
    v13 = 0;
    goto LABEL_11;
  }

  if (!v8)
  {
    v6 = v22;
    v8 = 0;
    if (!a1)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v12 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v12 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (v12 | a1)
  {
LABEL_9:
    v13 = 1;
LABEL_11:
    type metadata accessor for EndpointCommon.EndpointCommonBacking();
    v14 = swift_allocObject();
    *(v14 + 16) = a1;
    *(v14 + 24) = a2;
    *(v14 + 32) = v7;
    *(v14 + 40) = v8;
    *(v14 + 48) = v10;
    *(v14 + 56) = v9;
    *(v14 + 64) = v13;
    v6 = v22;

    goto LABEL_14;
  }

  v6 = v22;
LABEL_13:

  v14 = 0;
LABEL_14:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = *(v16 + 112);
    v24[5] = *(v16 + 96);
    v24[6] = v17;
    v24[7] = *(v16 + 128);
    v25 = *(v16 + 144);
    v18 = *(v16 + 48);
    v24[1] = *(v16 + 32);
    v24[2] = v18;
    v19 = *(v16 + 80);
    v24[3] = *(v16 + 64);
    v24[4] = v19;
    v24[0] = *(v16 + 16);
    type metadata accessor for ApplicationServiceEndpoint1.AppSVCBackingClass();
    v20 = swift_allocObject();
    memmove((v20 + 16), (v16 + 16), 0x88uLL);
    sub_181E63A90(v24, v23);

    *v2 = v20;
    v16 = v20;
  }

  *(v16 + 16) = v6;
  *(v16 + 24) = v14;
}

uint64_t nw_txt_record_create_dictionary_with_initial_length(size_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v16 = __nwlog_obj();
    *buf = 136446210;
    v32 = "nw_txt_record_create_dictionary_with_initial_length";
    v17 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v29 = 0;
    if (__nwlog_fault(v17, &type, &v29))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v18 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v18, type))
        {
          *buf = 136446210;
          v32 = "nw_txt_record_create_dictionary_with_initial_length";
          _os_log_impl(&dword_181A37000, v18, v19, "%{public}s txt_record cannot have length 0", buf, 0xCu);
        }

        goto LABEL_60;
      }

      if (v29 != 1)
      {
        v18 = __nwlog_obj();
        v27 = type;
        if (os_log_type_enabled(v18, type))
        {
          *buf = 136446210;
          v32 = "nw_txt_record_create_dictionary_with_initial_length";
          _os_log_impl(&dword_181A37000, v18, v27, "%{public}s txt_record cannot have length 0, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_60;
      }

      backtrace_string = __nw_create_backtrace_string();
      v18 = __nwlog_obj();
      v23 = type;
      v24 = os_log_type_enabled(v18, type);
      if (!backtrace_string)
      {
        if (v24)
        {
          *buf = 136446210;
          v32 = "nw_txt_record_create_dictionary_with_initial_length";
          _os_log_impl(&dword_181A37000, v18, v23, "%{public}s txt_record cannot have length 0, no backtrace", buf, 0xCu);
        }

        goto LABEL_60;
      }

      if (v24)
      {
        *buf = 136446466;
        v32 = "nw_txt_record_create_dictionary_with_initial_length";
        v33 = 2082;
        v34 = backtrace_string;
        _os_log_impl(&dword_181A37000, v18, v23, "%{public}s txt_record cannot have length 0, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_48:

      free(backtrace_string);
    }

LABEL_61:
    if (v17)
    {
      free(v17);
    }

    return 0;
  }

  if (a1 >= 0x22C5)
  {
    v20 = __nwlog_obj();
    *buf = 136446210;
    v32 = "nw_txt_record_create_dictionary_with_initial_length";
    v17 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v29 = 0;
    if (__nwlog_fault(v17, &type, &v29))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v18 = __nwlog_obj();
        v21 = type;
        if (os_log_type_enabled(v18, type))
        {
          *buf = 136446210;
          v32 = "nw_txt_record_create_dictionary_with_initial_length";
          _os_log_impl(&dword_181A37000, v18, v21, "%{public}s txt_record can't have length > 8900", buf, 0xCu);
        }

LABEL_60:

        goto LABEL_61;
      }

      if (v29 != 1)
      {
        v18 = __nwlog_obj();
        v28 = type;
        if (os_log_type_enabled(v18, type))
        {
          *buf = 136446210;
          v32 = "nw_txt_record_create_dictionary_with_initial_length";
          _os_log_impl(&dword_181A37000, v18, v28, "%{public}s txt_record can't have length > 8900, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_60;
      }

      backtrace_string = __nw_create_backtrace_string();
      v18 = __nwlog_obj();
      v25 = type;
      v26 = os_log_type_enabled(v18, type);
      if (!backtrace_string)
      {
        if (v26)
        {
          *buf = 136446210;
          v32 = "nw_txt_record_create_dictionary_with_initial_length";
          _os_log_impl(&dword_181A37000, v18, v25, "%{public}s txt_record can't have length > 8900, no backtrace", buf, 0xCu);
        }

        goto LABEL_60;
      }

      if (v26)
      {
        *buf = 136446466;
        v32 = "nw_txt_record_create_dictionary_with_initial_length";
        v33 = 2082;
        v34 = backtrace_string;
        _os_log_impl(&dword_181A37000, v18, v25, "%{public}s txt_record can't have length > 8900, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_48;
    }

    goto LABEL_61;
  }

  v2 = objc_alloc_init(NWConcrete_nw_txt_record);
  if (!v2)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    *buf = 136446210;
    v32 = "nw_txt_record_create_dictionary_with_initial_length";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v29 = 0;
    if (__nwlog_fault(v9, &type, &v29))
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
          v32 = "nw_txt_record_create_dictionary_with_initial_length";
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s [nw_txt_record init] failed", buf, 0xCu);
        }
      }

      else if (v29 == 1)
      {
        v12 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v13 = type;
        v14 = os_log_type_enabled(v10, type);
        if (v12)
        {
          if (v14)
          {
            *buf = 136446466;
            v32 = "nw_txt_record_create_dictionary_with_initial_length";
            v33 = 2082;
            v34 = v12;
            _os_log_impl(&dword_181A37000, v10, v13, "%{public}s [nw_txt_record init] failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v12);
          if (!v9)
          {
            goto LABEL_27;
          }

          goto LABEL_26;
        }

        if (v14)
        {
          *buf = 136446210;
          v32 = "nw_txt_record_create_dictionary_with_initial_length";
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s [nw_txt_record init] failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v15 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v32 = "nw_txt_record_create_dictionary_with_initial_length";
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s [nw_txt_record init] failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v9)
    {
      goto LABEL_27;
    }

LABEL_26:
    free(v9);
    goto LABEL_27;
  }

  v3 = malloc_type_malloc(a1, 0x5C3AE6EEuLL);
  if (v3)
  {
LABEL_7:
    *(v2 + 1) = v3;
    *v3 = 0;
    *(v2 + 36) |= 1u;
    *(v2 + 2) = 1;
    *(v2 + 3) = a1;
    v7 = v2;
LABEL_27:

    return v2;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v4 = gLogObj;
  os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
  *buf = 136446210;
  v32 = "nw_txt_record_create_dictionary_with_initial_length";
  v5 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v5);
  if (!result)
  {
    free(v5);
    v3 = 0;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

void nw_endpoint_set_device_model(void *a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    _nw_endpoint_set_device_model(v3, a2);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_set_device_model";
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
        v16 = "nw_endpoint_set_device_model";
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
          v16 = "nw_endpoint_set_device_model";
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
        v16 = "nw_endpoint_set_device_model";
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
        v16 = "nw_endpoint_set_device_model";
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

void _nw_endpoint_set_device_model_0(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25[-v8 - 8];
  v10 = OBJC_IVAR____TtC7Network8Endpoint_type;
  v11 = a1;
  swift_beginAccess();
  sub_181A546E0(a1 + v10, v9, type metadata accessor for Endpoint.EndpointType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *v9;
    if (a2)
    {
      v13 = sub_182AD3158();
      v15 = v14;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = *(v12 + 112);
        v31 = *(v12 + 96);
        v32 = v16;
        v33 = *(v12 + 128);
        v34 = *(v12 + 144);
        v17 = *(v12 + 48);
        v27 = *(v12 + 32);
        v28 = v17;
        v18 = *(v12 + 80);
        v29 = *(v12 + 64);
        v30 = v18;
        v26 = *(v12 + 16);
        type metadata accessor for ApplicationServiceEndpoint1.AppSVCBackingClass();
        v19 = swift_allocObject();
        memmove((v19 + 16), (v12 + 16), 0x88uLL);
        sub_181E63A90(&v26, v25);

        v12 = v19;
      }

      *(v12 + 96) = v13;
      *(v12 + 104) = v15;
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = *(v12 + 112);
        v31 = *(v12 + 96);
        v32 = v20;
        v33 = *(v12 + 128);
        v34 = *(v12 + 144);
        v21 = *(v12 + 48);
        v27 = *(v12 + 32);
        v28 = v21;
        v22 = *(v12 + 80);
        v29 = *(v12 + 64);
        v30 = v22;
        v26 = *(v12 + 16);
        type metadata accessor for ApplicationServiceEndpoint1.AppSVCBackingClass();
        v23 = swift_allocObject();
        memmove((v23 + 16), (v12 + 16), 0x88uLL);
        sub_181E63A90(&v26, v25);

        v12 = v23;
      }

      *(v12 + 96) = 0;
      *(v12 + 104) = 0;
    }

    *v6 = v12;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_181B74E48(v6, a1 + v10);
    swift_endAccess();
  }

  else
  {

    sub_181A5513C(v9, type metadata accessor for Endpoint.EndpointType);
  }
}

uint64_t sub_181E65010(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for URLEndpoint();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Endpoint.EndpointType(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v32 - v13;
  v15 = OBJC_IVAR____TtC7Network8Endpoint_type;
  swift_beginAccess();
  sub_181ACC828(v3 + v15, v14, type metadata accessor for Endpoint.EndpointType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v23 = *(v14 + 2);
      v24 = *(v14 + 3);
      v25 = *(v14 + 8);
      v26 = *(v14 + 18);
      v35 = *v14;
      v36 = v23;
      v37 = v24;
      v38 = v25;
      v39 = v26;
      sub_18217BA20(a1, a2);
      v27 = v36;
      v28 = v37;
      v29 = v38;
      v30 = v39;
      *v12 = v35;
      *(v12 + 2) = v27;
      *(v12 + 3) = v28;
      *(v12 + 8) = v29;
      *(v12 + 18) = v30;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v17 = *(v14 + 2);
      v18 = *(v14 + 3);
      v35 = *v14;
      v36 = v17;
      v37 = v18;
      sub_18217BA20(a1, a2);
      v19 = v36;
      v20 = v37;
      *v12 = v35;
      *(v12 + 2) = v19;
      *(v12 + 3) = v20;
    }

    else
    {
      sub_181AA91BC(v14, v8, type metadata accessor for URLEndpoint);
      sub_18217BA20(a1, a2);
      sub_181AA91BC(v8, v12, type metadata accessor for URLEndpoint);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v40 = *v14;
    if (EnumCaseMultiPayload == 1)
    {
      sub_181E6536C(a1, a2);
    }

    else
    {
      sub_18217BB2C(a1, a2);
    }

    *v12 = v40;
  }

  else
  {
    v21 = *(v14 + 1);
    v32 = *v14;
    v33 = v21;
    v34[0] = *(v14 + 2);
    *(v34 + 12) = *(v14 + 44);
    sub_18217BA20(a1, a2);
    v22 = v33;
    *v12 = v32;
    *(v12 + 1) = v22;
    *(v12 + 2) = v34[0];
    *(v12 + 44) = *(v34 + 12);
  }

  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_181B74E48(v12, v3 + v15);
  return swift_endAccess();
}

uint64_t sub_181E6536C(uint64_t a1, unint64_t a2)
{
  v6 = *(*v2 + 16);
  v5 = *(*v2 + 24);
  if (!v5)
  {
    if (!a2)
    {
LABEL_11:

      v13 = 0;
      goto LABEL_15;
    }

    v8 = 0;
    v7 = 0;
    v10 = 0;
    v11 = 0;
    goto LABEL_8;
  }

  v7 = *(v5 + 48);
  v8 = *(v5 + 56);
  v9 = *(v5 + 64);
  v10 = *(v5 + 16);
  v11 = *(v5 + 24);
  sub_181E6550C(v10);
  if (v9 == 1)
  {
    if (!a2)
    {
      if (!v10)
      {
        goto LABEL_11;
      }

      goto LABEL_13;
    }

LABEL_8:
    v12 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v12 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (!(v12 | v10))
    {
      goto LABEL_11;
    }

LABEL_13:
    v14 = 1;
    goto LABEL_14;
  }

  v14 = 0;
LABEL_14:
  type metadata accessor for EndpointCommon.EndpointCommonBacking();
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  *(v13 + 24) = v11;
  *(v13 + 32) = a1;
  *(v13 + 40) = a2;
  *(v13 + 48) = v7;
  *(v13 + 56) = v8;
  *(v13 + 64) = v14;

LABEL_15:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = *(v16 + 112);
    v23[5] = *(v16 + 96);
    v23[6] = v17;
    v23[7] = *(v16 + 128);
    v24 = *(v16 + 144);
    v18 = *(v16 + 48);
    v23[1] = *(v16 + 32);
    v23[2] = v18;
    v19 = *(v16 + 80);
    v23[3] = *(v16 + 64);
    v23[4] = v19;
    v23[0] = *(v16 + 16);
    type metadata accessor for ApplicationServiceEndpoint1.AppSVCBackingClass();
    v20 = swift_allocObject();
    memmove((v20 + 16), (v16 + 16), 0x88uLL);
    sub_181E63A90(v23, v22);

    *v2 = v20;
    v16 = v20;
  }

  *(v16 + 16) = v6;
  *(v16 + 24) = v13;
}

uint64_t sub_181E6550C(uint64_t result)
{
  if (result)
  {

    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_181E65554()
{
  v1 = *(v0 + 128);
  v6[6] = *(v0 + 112);
  v6[7] = v1;
  v7 = *(v0 + 144);
  v2 = *(v0 + 64);
  v6[2] = *(v0 + 48);
  v6[3] = v2;
  v3 = *(v0 + 96);
  v6[4] = *(v0 + 80);
  v6[5] = v3;
  v4 = *(v0 + 32);
  v6[0] = *(v0 + 16);
  v6[1] = v4;
  sub_181E655B0(v6);
  return swift_deallocClassInstance();
}

void nw_endpoint_set_device_name(void *a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    _nw_endpoint_set_device_name(v3, a2);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_set_device_name";
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
        v16 = "nw_endpoint_set_device_name";
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
          v16 = "nw_endpoint_set_device_name";
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
        v16 = "nw_endpoint_set_device_name";
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
        v16 = "nw_endpoint_set_device_name";
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

void _nw_endpoint_set_device_name_0(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25[-v8 - 8];
  v10 = OBJC_IVAR____TtC7Network8Endpoint_type;
  v11 = a1;
  swift_beginAccess();
  sub_181A546E0(a1 + v10, v9, type metadata accessor for Endpoint.EndpointType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *v9;
    if (a2)
    {
      v13 = sub_182AD3158();
      v15 = v14;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = *(v12 + 112);
        v31 = *(v12 + 96);
        v32 = v16;
        v33 = *(v12 + 128);
        v34 = *(v12 + 144);
        v17 = *(v12 + 48);
        v27 = *(v12 + 32);
        v28 = v17;
        v18 = *(v12 + 80);
        v29 = *(v12 + 64);
        v30 = v18;
        v26 = *(v12 + 16);
        type metadata accessor for ApplicationServiceEndpoint1.AppSVCBackingClass();
        v19 = swift_allocObject();
        memmove((v19 + 16), (v12 + 16), 0x88uLL);
        sub_181E63A90(&v26, v25);

        v12 = v19;
      }

      *(v12 + 80) = v13;
      *(v12 + 88) = v15;
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = *(v12 + 112);
        v31 = *(v12 + 96);
        v32 = v20;
        v33 = *(v12 + 128);
        v34 = *(v12 + 144);
        v21 = *(v12 + 48);
        v27 = *(v12 + 32);
        v28 = v21;
        v22 = *(v12 + 80);
        v29 = *(v12 + 64);
        v30 = v22;
        v26 = *(v12 + 16);
        type metadata accessor for ApplicationServiceEndpoint1.AppSVCBackingClass();
        v23 = swift_allocObject();
        memmove((v23 + 16), (v12 + 16), 0x88uLL);
        sub_181E63A90(&v26, v25);

        v12 = v23;
      }

      *(v12 + 80) = 0;
      *(v12 + 88) = 0;
    }

    *v6 = v12;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_181B74E48(v6, a1 + v10);
    swift_endAccess();
  }

  else
  {

    sub_181A5513C(v9, type metadata accessor for Endpoint.EndpointType);
  }
}

void nw_endpoint_set_device_id(void *a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    _nw_endpoint_set_device_id(v3, a2);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_set_device_id";
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
        v16 = "nw_endpoint_set_device_id";
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
          v16 = "nw_endpoint_set_device_id";
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
        v16 = "nw_endpoint_set_device_id";
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
        v16 = "nw_endpoint_set_device_id";
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

void _nw_endpoint_set_device_id(void *a1, uint64_t a2)
{
  v5 = a1;
  if (a2)
  {
    v3 = sub_182AD3158();
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  sub_181E65010(v3, v4);
}

BOOL nw_txt_record_set_key(nw_txt_record_t txt_record, const char *key, const uint8_t *value, size_t value_len)
{
  v51 = *MEMORY[0x1E69E9840];
  v7 = txt_record;
  v8 = v7;
  if (!v7)
  {
    v36 = __nwlog_obj();
    *buf = 136446210;
    v48 = "nw_txt_record_set_key";
    v13 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v45 = 0;
    if (__nwlog_fault(v13, &type, &v45))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v14 = __nwlog_obj();
        v37 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          v48 = "nw_txt_record_set_key";
          _os_log_impl(&dword_181A37000, v14, v37, "%{public}s called with null txt_record", buf, 0xCu);
        }

LABEL_43:

        goto LABEL_44;
      }

      if (v45 != 1)
      {
        v14 = __nwlog_obj();
        v41 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          v48 = "nw_txt_record_set_key";
          _os_log_impl(&dword_181A37000, v14, v41, "%{public}s called with null txt_record, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_43;
      }

      backtrace_string = __nw_create_backtrace_string();
      v14 = __nwlog_obj();
      v39 = type;
      v40 = os_log_type_enabled(v14, type);
      if (!backtrace_string)
      {
        if (v40)
        {
          *buf = 136446210;
          v48 = "nw_txt_record_set_key";
          _os_log_impl(&dword_181A37000, v14, v39, "%{public}s called with null txt_record, no backtrace", buf, 0xCu);
        }

        goto LABEL_43;
      }

      if (v40)
      {
        *buf = 136446466;
        v48 = "nw_txt_record_set_key";
        v49 = 2082;
        v50 = backtrace_string;
        _os_log_impl(&dword_181A37000, v14, v39, "%{public}s called with null txt_record, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

LABEL_44:
    if (!v13)
    {
LABEL_46:
      v29 = 0;
      goto LABEL_47;
    }

LABEL_45:
    free(v13);
    goto LABEL_46;
  }

  if ((BYTE4(v7[4].isa) & 1) == 0)
  {
    v19 = __nwlog_obj();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v48 = "nw_txt_record_set_key";
      _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_ERROR, "%{public}s txt_record is not of type dictionary", buf, 0xCu);
    }

    goto LABEL_61;
  }

  if ((nw_txt_record_key_is_valid(key) & 1) == 0)
  {
    v19 = __nwlog_obj();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v48 = "nw_txt_record_set_key";
      _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_ERROR, "%{public}s invalid key", buf, 0xCu);
    }

    goto LABEL_61;
  }

  if (!value && value_len)
  {
    v19 = __nwlog_obj();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v48 = "nw_txt_record_set_key";
      _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_ERROR, "%{public}s value_len must be 0 if value is NULL", buf, 0xCu);
    }

    goto LABEL_61;
  }

  v9 = strlen(key);
  v10 = value_len + 2;
  if (!value)
  {
    v10 = 1;
  }

  v11 = v10 + v9;
  if (v10 + v9 >= 0x100)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v12 = gLogObj;
    *buf = 136446210;
    v48 = "nw_txt_record_set_key";
    v13 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v45 = 0;
    if (!__nwlog_fault(v13, &type, &v45))
    {
      goto LABEL_44;
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
        v48 = "nw_txt_record_set_key";
        _os_log_impl(&dword_181A37000, v14, v15, "%{public}s Unable to set key-value pair. The length of the 'key=pair' must be less than or equal to UINT8_MAX.", buf, 0xCu);
      }
    }

    else if (v45 == 1)
    {
      v20 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v14 = gLogObj;
      v21 = type;
      v22 = os_log_type_enabled(v14, type);
      if (v20)
      {
        if (v22)
        {
          *buf = 136446466;
          v48 = "nw_txt_record_set_key";
          v49 = 2082;
          v50 = v20;
          _os_log_impl(&dword_181A37000, v14, v21, "%{public}s Unable to set key-value pair. The length of the 'key=pair' must be less than or equal to UINT8_MAX., dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v20);
        if (!v13)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      }

      if (v22)
      {
        *buf = 136446210;
        v48 = "nw_txt_record_set_key";
        _os_log_impl(&dword_181A37000, v14, v21, "%{public}s Unable to set key-value pair. The length of the 'key=pair' must be less than or equal to UINT8_MAX., no backtrace", buf, 0xCu);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v14 = gLogObj;
      v30 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v48 = "nw_txt_record_set_key";
        _os_log_impl(&dword_181A37000, v14, v30, "%{public}s Unable to set key-value pair. The length of the 'key=pair' must be less than or equal to UINT8_MAX., backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_43;
  }

  v16 = v9;
  os_unfair_lock_lock(&v8[4]);
  nw_txt_record_remove_key_locked(v8, key);
  isa = v8[2].isa;
  if ((isa + v11) <= v8[3].isa)
  {
LABEL_30:
    if (isa == 1)
    {
      isa = 0;
      v8[2].isa = 0;
    }

    v26 = v8[1].isa + isa;
    memcpy(v26 + 1, key, v16);
    v27 = &v26[v16 + 1];
    if (value)
    {
      *v27 = 61;
      v28 = v27 + 1;
      memcpy(v28, value, value_len);
      v27 = &v28[value_len];
    }

    *v26 = v27 - v26 - 1;
    v8[2].isa = (v8[2].isa + v27 - v26);
    os_unfair_lock_unlock(&v8[4]);
    v29 = 1;
    goto LABEL_47;
  }

  v18 = isa + 256;
  if (isa + 256 >= 0x22C5)
  {
    os_unfair_lock_unlock(&v8[4]);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v19 = gLogObj;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v48 = "nw_txt_record_set_key";
      _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_ERROR, "%{public}s nw_txt_record reallocate failed: max buffer length reached", buf, 0xCu);
    }

LABEL_61:

    goto LABEL_46;
  }

  if (isa == -256)
  {
    v42 = __nwlog_obj();
    os_log_type_enabled(v42, OS_LOG_TYPE_ERROR);
    *buf = 136446210;
    v48 = "nw_txt_record_set_key";
    v43 = _os_log_send_and_compose_impl();

    should_abort = __nwlog_should_abort(v43);
    if (should_abort)
    {
      goto LABEL_75;
    }

    free(v43);
  }

  v23 = malloc_type_malloc(v18, 0x694FBF55uLL);
  v24 = v23;
  if (v23)
  {
    memcpy(v23, v8[1].isa, v8[2].isa);
    v25 = v8[1].isa;
    if (v25)
    {
      free(v25);
      v8[1].isa = 0;
    }

    v8[1].isa = v24;
    v8[3].isa = v18;
    isa = v8[2].isa;
    goto LABEL_30;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v31 = gLogObj;
  os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
  *buf = 136446210;
  v48 = "nw_txt_record_set_key";
  v32 = _os_log_send_and_compose_impl();

  should_abort = __nwlog_should_abort(v32);
  if (should_abort || (free(v32), os_unfair_lock_unlock(&v8[4]), pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once), networkd_settings_init(), v34 = gLogObj, os_log_type_enabled(v34, OS_LOG_TYPE_ERROR), *buf = 136446210, v48 = "nw_txt_record_set_key", v35 = _os_log_send_and_compose_impl(), v34, (should_abort = __nwlog_should_abort(v35)) != 0))
  {
LABEL_75:
    __break(1u);
    return should_abort;
  }

  free(v35);
  v29 = 0;
LABEL_47:

  LOBYTE(should_abort) = v29;
  return should_abort;
}

uint64_t nw_txt_record_key_is_valid(uint64_t result)
{
  v9 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    if (strnlen(result, 0x100uLL) - 256 >= 0xFFFFFFFFFFFFFF01)
    {
      v4 = *v1;
      if (!*v1)
      {
        return 1;
      }

      v5 = v1 + 1;
      while (v4 != 61 && (v4 - 32) < 0x5F)
      {
        v6 = *v5++;
        v4 = v6;
        if (!v6)
        {
          return 1;
        }
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v2 = gLogObj;
      if (!os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }

      v7 = 136446210;
      v8 = "nw_txt_record_key_is_valid";
      v3 = "%{public}s An invalid key was provided. The characters of \t\t\t\t\t  a key MUST be printable US-ASCII values (0x20-0x7E)\t\t\t\t\t  [RFC20], excluding '=' (0x3D).";
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v2 = gLogObj;
      if (!os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
LABEL_14:

        return 0;
      }

      v7 = 136446210;
      v8 = "nw_txt_record_key_is_valid";
      v3 = "%{public}s An invalid key was provided. An invalid key was provided. \t\t\t\t  The key must be a non-empty string of length less than or equal\t\t\t\t  to UINT8_MAX.";
    }

    _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_ERROR, v3, &v7, 0xCu);
    goto LABEL_14;
  }

  return result;
}

BOOL nw_txt_record_remove_key_locked(void *a1, const char *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v9 = __nwlog_obj();
    *__dst = 136446210;
    *&__dst[4] = "nw_txt_record_remove_key_locked";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (__nwlog_fault(v10, &type, &v18))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v11 = __nwlog_obj();
        v12 = type;
        if (os_log_type_enabled(v11, type))
        {
          *__dst = 136446210;
          *&__dst[4] = "nw_txt_record_remove_key_locked";
          _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null txt_record", __dst, 0xCu);
        }
      }

      else if (v18 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v11 = __nwlog_obj();
        v15 = type;
        v16 = os_log_type_enabled(v11, type);
        if (backtrace_string)
        {
          if (v16)
          {
            *__dst = 136446466;
            *&__dst[4] = "nw_txt_record_remove_key_locked";
            v21 = 2082;
            v22 = backtrace_string;
            _os_log_impl(&dword_181A37000, v11, v15, "%{public}s called with null txt_record, dumping backtrace:%{public}s", __dst, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_29;
        }

        if (v16)
        {
          *__dst = 136446210;
          *&__dst[4] = "nw_txt_record_remove_key_locked";
          _os_log_impl(&dword_181A37000, v11, v15, "%{public}s called with null txt_record, no backtrace", __dst, 0xCu);
        }
      }

      else
      {
        v11 = __nwlog_obj();
        v17 = type;
        if (os_log_type_enabled(v11, type))
        {
          *__dst = 136446210;
          *&__dst[4] = "nw_txt_record_remove_key_locked";
          _os_log_impl(&dword_181A37000, v11, v17, "%{public}s called with null txt_record, backtrace limit exceeded", __dst, 0xCu);
        }
      }
    }

LABEL_29:
    if (v10)
    {
      free(v10);
    }

    goto LABEL_31;
  }

  if ((*(v3 + 36) & 1) == 0)
  {
    v13 = __nwlog_obj();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *__dst = 136446210;
      *&__dst[4] = "nw_txt_record_remove_key_locked";
      _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_ERROR, "%{public}s txt_record is not of type dictionary", __dst, 0xCu);
    }

    goto LABEL_14;
  }

  if ((nw_txt_record_key_is_valid(a2) & 1) == 0)
  {
    v13 = __nwlog_obj();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *__dst = 136446210;
      *&__dst[4] = "nw_txt_record_remove_key_locked";
      _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_ERROR, "%{public}s invalid key", __dst, 0xCu);
    }

LABEL_14:

LABEL_31:
    v6 = 0;
    goto LABEL_6;
  }

  *__dst = 0;
  start_of_key_locked = nw_txt_record_find_start_of_key_locked(v4, a2, __dst, 0, 0, 0);
  v6 = start_of_key_locked != 1;
  if (start_of_key_locked != 1)
  {
    v7 = **__dst + 1;
    memmove(*__dst, (*__dst + v7), v4[1] + v4[2] - (*__dst + v7));
    v4[2] -= v7;
  }

LABEL_6:

  return v6;
}

uint64_t nw_txt_record_find_start_of_key_locked(void *a1, const char *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a1;
  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  if (a6)
  {
    *a6 = 0;
  }

  v12 = strnlen(a2, 0xFFuLL);
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __nw_txt_record_find_start_of_key_locked_block_invoke;
  aBlock[3] = &unk_1E6A36080;
  aBlock[4] = &v17;
  aBlock[5] = v12;
  aBlock[6] = a2;
  aBlock[7] = a3;
  aBlock[8] = a4;
  aBlock[9] = a5;
  aBlock[10] = a6;
  v13 = _Block_copy(aBlock);
  nw_txt_record_apply_internal_locked(v11, v13, 0);
  v14 = *(v18 + 6);

  _Block_object_dispose(&v17, 8);
  return v14;
}

void sub_181E67184(_Unwind_Exception *a1)
{
  _Block_object_dispose((v3 - 80), 8);

  _Unwind_Resume(a1);
}

uint64_t nw_txt_record_apply_internal_locked(void *a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (!v5)
  {
    v17 = __nwlog_obj();
    *buf = 136446210;
    v34 = "nw_txt_record_apply_internal_locked";
    v18 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v18, &type, &v31))
    {
      goto LABEL_54;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v19 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        v34 = "nw_txt_record_apply_internal_locked";
        _os_log_impl(&dword_181A37000, v19, v20, "%{public}s called with null txt_record", buf, 0xCu);
      }

      goto LABEL_53;
    }

    if (v31 != 1)
    {
      v19 = __nwlog_obj();
      v29 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        v34 = "nw_txt_record_apply_internal_locked";
        _os_log_impl(&dword_181A37000, v19, v29, "%{public}s called with null txt_record, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_53;
    }

    backtrace_string = __nw_create_backtrace_string();
    v19 = __nwlog_obj();
    v25 = type;
    v26 = os_log_type_enabled(v19, type);
    if (!backtrace_string)
    {
      if (v26)
      {
        *buf = 136446210;
        v34 = "nw_txt_record_apply_internal_locked";
        _os_log_impl(&dword_181A37000, v19, v25, "%{public}s called with null txt_record, no backtrace", buf, 0xCu);
      }

      goto LABEL_53;
    }

    if (v26)
    {
      *buf = 136446466;
      v34 = "nw_txt_record_apply_internal_locked";
      v35 = 2082;
      v36 = backtrace_string;
      _os_log_impl(&dword_181A37000, v19, v25, "%{public}s called with null txt_record, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_41;
  }

  if (!v6)
  {
    v21 = __nwlog_obj();
    *buf = 136446210;
    v34 = "nw_txt_record_apply_internal_locked";
    v18 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v18, &type, &v31))
    {
      goto LABEL_54;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v19 = __nwlog_obj();
      v22 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        v34 = "nw_txt_record_apply_internal_locked";
        _os_log_impl(&dword_181A37000, v19, v22, "%{public}s called with null applier_internal", buf, 0xCu);
      }

LABEL_53:

LABEL_54:
      if (v18)
      {
        free(v18);
      }

      goto LABEL_56;
    }

    if (v31 != 1)
    {
      v19 = __nwlog_obj();
      v30 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        v34 = "nw_txt_record_apply_internal_locked";
        _os_log_impl(&dword_181A37000, v19, v30, "%{public}s called with null applier_internal, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_53;
    }

    backtrace_string = __nw_create_backtrace_string();
    v19 = __nwlog_obj();
    v27 = type;
    v28 = os_log_type_enabled(v19, type);
    if (!backtrace_string)
    {
      if (v28)
      {
        *buf = 136446210;
        v34 = "nw_txt_record_apply_internal_locked";
        _os_log_impl(&dword_181A37000, v19, v27, "%{public}s called with null applier_internal, no backtrace", buf, 0xCu);
      }

      goto LABEL_53;
    }

    if (v28)
    {
      *buf = 136446466;
      v34 = "nw_txt_record_apply_internal_locked";
      v35 = 2082;
      v36 = backtrace_string;
      _os_log_impl(&dword_181A37000, v19, v27, "%{public}s called with null applier_internal, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_41:

    free(backtrace_string);
    goto LABEL_54;
  }

  if ((*(v5 + 36) & 1) == 0)
  {
    v23 = __nwlog_obj();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v34 = "nw_txt_record_apply_internal_locked";
      _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_ERROR, "%{public}s txt_record is not of type dictionary", buf, 0xCu);
    }

LABEL_56:
    v15 = 0;
    goto LABEL_17;
  }

  v8 = *(v5 + 2);
  if (v8 < 2)
  {
    v15 = 1;
  }

  else
  {
    v9 = *(v5 + 1);
    v10 = (v9 + v8);
    do
    {
      v11 = *v9;
      if (v9 + v11 > v10)
      {
        __assert_rtn("nw_txt_record_apply_internal_locked", "txt_record.cpp", 613, "pair_end <= end");
      }

      v12 = memchr((v9 + 1), 61, *v9);
      if (v12)
      {
        v13 = v12;
      }

      else
      {
        v13 = v9 + v11 + 1;
      }

      if (v13 + ~v9 != v11)
      {
        v14 = v13 - v9;
        if (v14 != v11 && v14 >= v11)
        {
          __assert_rtn("nw_txt_record_get_key_value_result", "txt_record.cpp", 758, "false");
        }
      }

      v15 = v6[2](v6, v9 + 1);
      if (!v15)
      {
        break;
      }

      v9 += *v9 + 1;
    }

    while (v9 < v10);
  }

LABEL_17:

  return v15;
}

uint64_t __nw_txt_record_find_start_of_key_locked_block_invoke(uint64_t a1, const char *a2, size_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  if (*(a1 + 40) != a3)
  {
    return 1;
  }

  if (strncasecmp(*(a1 + 48), a2, a3))
  {
    return 1;
  }

  *(*(*(a1 + 32) + 8) + 24) = a7;
  v14 = *(a1 + 56);
  if (v14)
  {
    *v14 = a6;
  }

  v15 = *(a1 + 64);
  if (v15)
  {
    *v15 = a2;
  }

  v16 = *(a1 + 72);
  if (v16)
  {
    *v16 = a4;
  }

  v17 = *(a1 + 80);
  result = 0;
  if (v17)
  {
    *v17 = a5;
  }

  return result;
}

void nw_endpoint_set_txt_record(void *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    _nw_endpoint_set_txt_record(v3, v4);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_set_txt_record";
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
        v16 = "nw_endpoint_set_txt_record";
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
          v16 = "nw_endpoint_set_txt_record";
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
        v16 = "nw_endpoint_set_txt_record";
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
        v16 = "nw_endpoint_set_txt_record";
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

uint64_t _nw_endpoint_set_txt_recordTm(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  swift_unknownObjectRetain();
  a3(a1, a2);

  return swift_unknownObjectRelease();
}

void sub_181E67BEC(void *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = swift_unknownObjectRetain();
    v4 = nw_txt_record_copy(v3);
    if (v4)
    {
      v5 = v4;
      v6 = swift_allocObject();
      *(v6 + 16) = MEMORY[0x1E69E7CC8];
      v7 = a1;
      v17 = sub_181E63B60;
      v18 = v6;
      aBlock = MEMORY[0x1E69E9820];
      v14 = 1107296256;
      v15 = sub_181E63AEC;
      v16 = &block_descriptor_21;
      v8 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();

      nw_txt_record_apply(v5, v8);
      _Block_release(v8);
      swift_beginAccess();
      v9 = *(v6 + 16);

      v12[0] = v9;
      v12[1] = v5;
      sub_181E689C0(v12);

      swift_unknownObjectRelease();
    }

    else
    {
      v11 = a1;
      aBlock = 0;
      v14 = 0;
      sub_181E689C0(&aBlock);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v10 = a1;
    aBlock = 0;
    v14 = 0;
    sub_181E689C0(&aBlock);
  }
}

uint64_t sub_181E67D8C()
{

  return swift_deallocObject();
}

BOOL nw_txt_record_apply(nw_txt_record_t txt_record, nw_txt_record_applier_t applier)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = txt_record;
  v4 = applier;
  v5 = v4;
  if (!v3)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_txt_record_apply";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v9, &type, &v22))
    {
      goto LABEL_41;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v25 = "nw_txt_record_apply";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null txt_record", buf, 0xCu);
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
        v25 = "nw_txt_record_apply";
        _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null txt_record, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_40;
    }

    backtrace_string = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v16 = type;
    v17 = os_log_type_enabled(v10, type);
    if (!backtrace_string)
    {
      if (v17)
      {
        *buf = 136446210;
        v25 = "nw_txt_record_apply";
        _os_log_impl(&dword_181A37000, v10, v16, "%{public}s called with null txt_record, no backtrace", buf, 0xCu);
      }

      goto LABEL_40;
    }

    if (v17)
    {
      *buf = 136446466;
      v25 = "nw_txt_record_apply";
      v26 = 2082;
      v27 = backtrace_string;
      _os_log_impl(&dword_181A37000, v10, v16, "%{public}s called with null txt_record, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_28;
  }

  if (!v4)
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_txt_record_apply";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v9, &type, &v22))
    {
      goto LABEL_41;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v25 = "nw_txt_record_apply";
        _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null applier", buf, 0xCu);
      }

LABEL_40:

LABEL_41:
      if (v9)
      {
        free(v9);
      }

      goto LABEL_43;
    }

    if (v22 != 1)
    {
      v10 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v25 = "nw_txt_record_apply";
        _os_log_impl(&dword_181A37000, v10, v21, "%{public}s called with null applier, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_40;
    }

    backtrace_string = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v18 = type;
    v19 = os_log_type_enabled(v10, type);
    if (!backtrace_string)
    {
      if (v19)
      {
        *buf = 136446210;
        v25 = "nw_txt_record_apply";
        _os_log_impl(&dword_181A37000, v10, v18, "%{public}s called with null applier, no backtrace", buf, 0xCu);
      }

      goto LABEL_40;
    }

    if (v19)
    {
      *buf = 136446466;
      v25 = "nw_txt_record_apply";
      v26 = 2082;
      v27 = backtrace_string;
      _os_log_impl(&dword_181A37000, v10, v18, "%{public}s called with null applier, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_28:

    free(backtrace_string);
    goto LABEL_41;
  }

  if ((BYTE4(v3[4].isa) & 1) == 0)
  {
    v14 = __nwlog_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v25 = "nw_txt_record_apply";
      _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_ERROR, "%{public}s txt_record is not of type dictionary", buf, 0xCu);
    }

LABEL_43:
    v6 = 0;
    goto LABEL_5;
  }

  os_unfair_lock_lock(&v3[4]);
  v6 = nw_txt_record_apply_internal_locked(v3, &__block_literal_global_59708, v5);
  os_unfair_lock_unlock(&v3[4]);
LABEL_5:

  return v6;
}

uint64_t __nw_txt_record_apply_block_invoke(uint64_t a1, const void *a2, size_t a3, const void *a4, size_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = a8;
  memset(__dst, 0, sizeof(__dst));
  memcpy(__dst, a2, a3);
  *(__dst + a3) = 0;
  memset(v16, 0, 255);
  if (a5 && a7 != 2)
  {
    memcpy(v16, a4, a5);
  }

  v14 = (*(v13 + 2))(v13, __dst, a7, v16, a5);

  return v14;
}

unint64_t sub_181E68460(_BYTE *a1, _BYTE *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a2 - a1;
  if (a1)
  {
    v5 = a2 - a1;
  }

  else
  {
    v5 = 0;
  }

  result = sub_181E63DB0(v5);
  __dst = result;
  v11 = v7;
  v13 = v8;
  v12 = v9;
  if (a1)
  {
    if (a2 != a1)
    {
      memcpy(&__dst, a1, v4);
      return __dst;
    }
  }

  return result;
}

unint64_t sub_181E68520(uint64_t a1, uint64_t a2)
{
  sub_182AD44E8();
  sub_182AD3028();
  sub_182AD30E8();

  v4 = sub_182AD4558();

  return sub_181E685B4(a1, a2, v4);
}

unint64_t sub_181E685B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    while (1)
    {
      v7 = sub_182AD3028();
      v9 = v8;
      if (v7 == sub_182AD3028() && v9 == v10)
      {
        break;
      }

      v12 = sub_182AD4268();

      if ((v12 & 1) == 0)
      {
        v5 = (v5 + 1) & v6;
        if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
        {
          continue;
        }
      }

      return v5;
    }
  }

  return v5;
}

uint64_t sub_181E686CC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B6E8);
  v38 = a2;
  result = sub_182AD3ED8();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v2;
    v37 = v5;
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v24 = *v22;
      v23 = v22[1];
      v25 = *(v5 + 56) + 24 * v21;
      v26 = *v25;
      v27 = *(v25 + 8);
      v39 = *(v25 + 16);
      if ((v38 & 1) == 0)
      {

        sub_1820F5148(v26, v27, v39);
      }

      sub_182AD44E8();
      sub_182AD3028();
      sub_182AD30E8();

      result = sub_182AD4558();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v24;
      v16[1] = v23;
      v17 = *(v7 + 56) + 24 * v15;
      *v17 = v26;
      *(v17 + 8) = v27;
      *(v17 + 16) = v39;
      ++*(v7 + 16);
      v5 = v37;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_181E689C0(uint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for URLEndpoint();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Endpoint.EndpointType(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v32 - v11;
  v14 = *a1;
  v13 = a1[1];
  v15 = OBJC_IVAR____TtC7Network8Endpoint_type;
  swift_beginAccess();
  sub_181ACC828(v2 + v15, v12, type metadata accessor for Endpoint.EndpointType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v23 = *(v12 + 2);
      v24 = *(v12 + 3);
      v25 = *(v12 + 8);
      v26 = *(v12 + 18);
      v35 = *v12;
      v36 = v23;
      v37 = v24;
      v38 = v25;
      v39 = v26;
      sub_18217B76C(v14, v13);
      v27 = v36;
      v28 = v37;
      v29 = v38;
      v30 = v39;
      *v10 = v35;
      *(v10 + 2) = v27;
      *(v10 + 3) = v28;
      *(v10 + 8) = v29;
      *(v10 + 18) = v30;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v17 = *(v12 + 2);
      v18 = *(v12 + 3);
      v35 = *v12;
      v36 = v17;
      v37 = v18;
      sub_18217B76C(v14, v13);
      v19 = v36;
      v20 = v37;
      *v10 = v35;
      *(v10 + 2) = v19;
      *(v10 + 3) = v20;
    }

    else
    {
      sub_181AA91BC(v12, v6, type metadata accessor for URLEndpoint);
      sub_18217B76C(v14, v13);
      sub_181AA91BC(v6, v10, type metadata accessor for URLEndpoint);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v40 = *v12;
    if (EnumCaseMultiPayload == 1)
    {
      sub_181E640D0(v14, v13);
    }

    else
    {
      sub_18217B888(v14, v13);
    }

    *v10 = v40;
  }

  else
  {
    v21 = *(v12 + 1);
    v32 = *v12;
    v33 = v21;
    v34[0] = *(v12 + 2);
    *(v34 + 12) = *(v12 + 44);
    sub_18217B76C(v14, v13);
    v22 = v33;
    *v10 = v32;
    *(v10 + 1) = v22;
    *(v10 + 2) = v34[0];
    *(v10 + 44) = *(v34 + 12);
  }

  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_181B74E48(v10, v2 + v15);
  return swift_endAccess();
}

Swift::String __swiftcall ApplicationServiceEndpoint1.descriptionInternal(redacted:)(Swift::Bool redacted)
{
  v3 = *v1;
  if (*(*v1 + 132) == 3)
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  else
  {
    v6 = sub_182AD3038();
    MEMORY[0x1865D9CA0](v6);

    v4 = 0x3A6574756F7220;
    v5 = 0xE700000000000000;
  }

  v7 = *(v3 + 24);
  if (v7)
  {
    v9 = *(v7 + 32);
    v8 = *(v7 + 40);
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v10 = sub_181E69194(25705, 0xE200000000000000, v9, v8, redacted);
  v12 = v11;

  v13 = 0xE000000000000000;
  sub_182AD3BA8();

  v14 = *(v3 + 48);
  v15 = *(v3 + 56);

  MEMORY[0x1865D9CA0](v14, v15);

  v16 = MEMORY[0x1865D9CA0](0x636976726573202CLL, 0xEE00203A64695F65);
  MEMORY[0x1EEE9AC00](v16);
  v17 = sub_182AD30D8();
  MEMORY[0x1865D9CA0](v17);

  MEMORY[0x1865D9CA0](v10, v12);

  v18 = *(v3 + 88);
  if (v18)
  {
    v19 = *(v3 + 80);

    MEMORY[0x1865D9CA0](v19, v18);

    v18 = 0x3A656D616E20;
    v13 = 0xE600000000000000;
  }

  MEMORY[0x1865D9CA0](v18, v13);

  v20 = *(v3 + 104);
  if (v20)
  {
    v21 = *(v3 + 96);

    MEMORY[0x1865D9CA0](v21, v20);

    v23 = 0x3A6C65646F6D20;
    v22 = 0xE700000000000000;
  }

  else
  {
    v23 = 0;
    v22 = 0xE000000000000000;
  }

  MEMORY[0x1865D9CA0](v23, v22);

  if (*(v3 + 128))
  {
    MEMORY[0x1865D9CA0](0x726F6C6F63, 0xE500000000000000);
    MEMORY[0x1865D9CA0](58, 0xE100000000000000);
    v24 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v24);

    v26 = 32;
    v25 = 0xE100000000000000;
  }

  else
  {
    v26 = 0;
    v25 = 0xE000000000000000;
  }

  MEMORY[0x1865D9CA0](v26, v25);

  v27 = *(v3 + 120);
  if (v27)
  {
    v28 = *(v3 + 112);

    MEMORY[0x1865D9CA0](v28, v27);

    v30 = 0x746361746E6F6320;
    v29 = 0xE90000000000003ALL;
  }

  else
  {
    v30 = 0;
    v29 = 0xE000000000000000;
  }

  MEMORY[0x1865D9CA0](v30, v29);

  MEMORY[0x1865D9CA0](v4, v5);

  v31 = 0x3A6376735F707061;
  v32 = 0xE900000000000020;
  result._object = v32;
  result._countAndFlagsBits = v31;
  return result;
}

uint64_t sub_181E69194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (!a4)
  {
    return 0;
  }

  if (a5)
  {
    MEMORY[0x1865D9CA0]();
    MEMORY[0x1865D9CA0](58, 0xE100000000000000);
    v5 = swift_slowAlloc();
    v6 = sub_182AD3048();
    __nwlog_create_hash_from_private_string((v6 + 32), v5);

    v7 = sub_182AD3158();
    v9 = v8;
    MEMORY[0x1865DF520](v5, -1, -1);
    MEMORY[0x1865D9CA0](v7, v9);
  }

  else
  {
    MEMORY[0x1865D9CA0]();
    MEMORY[0x1865D9CA0](58, 0xE100000000000000);
    MEMORY[0x1865D9CA0](a3, a4);
  }

  return 32;
}

unint64_t sub_181E692AC()
{
  result = qword_1EA836690;
  if (!qword_1EA836690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836690);
  }

  return result;
}

uint64_t ___ZL36nw_path_create_endpoint_array_resultPmPU22objcproto11OS_nw_array8NSObjecth_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  *(*(*(a1 + 32) + 8) + 24) += nw_path_struct_size_for_endpoint_and_metadata(v4, 0, 7);

  return 1;
}

uint64_t sub_181E69360(void *a1)
{
  v2 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = OBJC_IVAR____TtC7Network8Endpoint_type;
  v6 = a1;
  swift_beginAccess();
  sub_181A546E0(a1 + v5, v4, type metadata accessor for Endpoint.EndpointType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = *v4;
    v8 = *(v7 + 136);
    v9 = *(v7 + 144);
    v10 = OBJC_IVAR____TtC7Network8Endpoint_storageLock;
    v11 = *&v6[OBJC_IVAR____TtC7Network8Endpoint_storageLock];

    os_unfair_lock_lock(v11 + 4);
    sub_181AB2BF0(v6, 2, v8, v9, &v13);

    os_unfair_lock_unlock((*&v6[v10] + 16));

    return v13;
  }

  else
  {

    sub_181A5513C(v4, type metadata accessor for Endpoint.EndpointType);
    return 0;
  }
}

uint64_t nw_endpoint_get_application_service_alias(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    application_service_alias = _nw_endpoint_get_application_service_alias(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_get_application_service_alias";
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
        v16 = "nw_endpoint_get_application_service_alias";
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
          v16 = "nw_endpoint_get_application_service_alias";
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
        v16 = "nw_endpoint_get_application_service_alias";
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
        v16 = "nw_endpoint_get_application_service_alias";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  application_service_alias = 0;
LABEL_3:

  return application_service_alias;
}

uint64_t nw_endpoint_get_application_service_name(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    application_service_name = _nw_endpoint_get_application_service_name(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_get_application_service_name";
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
        v16 = "nw_endpoint_get_application_service_name";
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
          v16 = "nw_endpoint_get_application_service_name";
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
        v16 = "nw_endpoint_get_application_service_name";
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
        v16 = "nw_endpoint_get_application_service_name";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  application_service_name = 0;
LABEL_3:

  return application_service_name;
}

uint64_t sub_181E69A50(void *a1)
{
  v2 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = OBJC_IVAR____TtC7Network8Endpoint_type;
  v6 = a1;
  swift_beginAccess();
  sub_181A546E0(a1 + v5, v4, type metadata accessor for Endpoint.EndpointType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = *v4;
    v8 = *(v7 + 48);
    v9 = *(v7 + 56);
    v10 = OBJC_IVAR____TtC7Network8Endpoint_storageLock;
    v11 = *&v6[OBJC_IVAR____TtC7Network8Endpoint_storageLock];

    os_unfair_lock_lock(v11 + 4);
    sub_181AB2BF0(v6, 3, v8, v9, &v13);

    os_unfair_lock_unlock((*&v6[v10] + 16));

    return v13;
  }

  else
  {

    sub_181A5513C(v4, type metadata accessor for Endpoint.EndpointType);
    return 0;
  }
}

void nw_endpoint_get_service_identifier(void *a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    _nw_endpoint_get_service_identifier(v3, a2);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_get_service_identifier";
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
        v16 = "nw_endpoint_get_service_identifier";
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
          v16 = "nw_endpoint_get_service_identifier";
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
        v16 = "nw_endpoint_get_service_identifier";
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
        v16 = "nw_endpoint_get_service_identifier";
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

uint64_t nw_endpoint_get_device_model(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    device_model = _nw_endpoint_get_device_model(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_get_device_model";
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
        v16 = "nw_endpoint_get_device_model";
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
          v16 = "nw_endpoint_get_device_model";
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
        v16 = "nw_endpoint_get_device_model";
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
        v16 = "nw_endpoint_get_device_model";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  device_model = 0;
LABEL_3:

  return device_model;
}

uint64_t _nw_endpoint_get_device_model_0(void *a1)
{
  v2 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = OBJC_IVAR____TtC7Network8Endpoint_type;
  v6 = a1;
  swift_beginAccess();
  sub_181A546E0(a1 + v5, v4, type metadata accessor for Endpoint.EndpointType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = *v4;
    v8 = *(v7 + 96);
    v9 = *(v7 + 104);
    v10 = OBJC_IVAR____TtC7Network8Endpoint_storageLock;
    v11 = *&v6[OBJC_IVAR____TtC7Network8Endpoint_storageLock];

    os_unfair_lock_lock(v11 + 4);
    sub_181AB2BF0(v6, 7, v8, v9, &v13);

    os_unfair_lock_unlock((*&v6[v10] + 16));

    return v13;
  }

  else
  {

    sub_181A5513C(v4, type metadata accessor for Endpoint.EndpointType);
    return 0;
  }
}

uint64_t nw_endpoint_get_contact_id(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    contact_id = _nw_endpoint_get_contact_id(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_get_contact_id";
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
        v16 = "nw_endpoint_get_contact_id";
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
          v16 = "nw_endpoint_get_contact_id";
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
        v16 = "nw_endpoint_get_contact_id";
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
        v16 = "nw_endpoint_get_contact_id";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  contact_id = 0;
LABEL_3:

  return contact_id;
}

uint64_t nw_endpoint_get_device_color(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    device_color = _nw_endpoint_get_device_color(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_get_device_color";
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
        v16 = "nw_endpoint_get_device_color";
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
          v16 = "nw_endpoint_get_device_color";
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
        v16 = "nw_endpoint_get_device_color";
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
        v16 = "nw_endpoint_get_device_color";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  device_color = 0;
LABEL_3:

  return device_color;
}

uint64_t _nw_endpoint_get_device_color_0(void *a1)
{
  v2 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC7Network8Endpoint_type;
  v6 = a1;
  swift_beginAccess();
  sub_181A546E0(a1 + v5, v4, type metadata accessor for Endpoint.EndpointType);

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = *(*v4 + 128);
  }

  else
  {
    sub_181A5513C(v4, type metadata accessor for Endpoint.EndpointType);
    return 0;
  }

  return v7;
}

uint64_t get_enum_tag_for_layout_string_7Network11NWTXTRecordV5EntryO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t nw_endpoint_get_device_name(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    device_name = _nw_endpoint_get_device_name(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_get_device_name";
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
        v16 = "nw_endpoint_get_device_name";
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
          v16 = "nw_endpoint_get_device_name";
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
        v16 = "nw_endpoint_get_device_name";
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
        v16 = "nw_endpoint_get_device_name";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  device_name = 0;
LABEL_3:

  return device_name;
}

uint64_t _nw_endpoint_get_device_name_0(void *a1)
{
  v2 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = OBJC_IVAR____TtC7Network8Endpoint_type;
  v6 = a1;
  swift_beginAccess();
  sub_181A546E0(a1 + v5, v4, type metadata accessor for Endpoint.EndpointType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = *v4;
    v8 = *(v7 + 80);
    v9 = *(v7 + 88);
    v10 = OBJC_IVAR____TtC7Network8Endpoint_storageLock;
    v11 = *&v6[OBJC_IVAR____TtC7Network8Endpoint_storageLock];

    os_unfair_lock_lock(v11 + 4);
    sub_181AB2BF0(v6, 6, v8, v9, &v13);

    os_unfair_lock_unlock((*&v6[v10] + 16));

    return v13;
  }

  else
  {

    sub_181A5513C(v4, type metadata accessor for Endpoint.EndpointType);
    return 0;
  }
}

id _nw_endpoint_create_application_service_internal_0(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unint64_t a4, uint64_t a5, int a6, unsigned int a7, uint64_t a8)
{
  v78 = sub_182AD3158();
  v13 = v12;
  sub_181E29948(a3, &v112);
  v14 = v112;
  v15 = BYTE1(v112);
  v16 = BYTE2(v112);
  v17 = BYTE3(v112);
  v97 = BYTE5(v112);
  v98 = BYTE4(v112);
  v95 = BYTE7(v112);
  v96 = BYTE6(v112);
  v93 = BYTE9(v112);
  v94 = BYTE8(v112);
  v91 = BYTE11(v112);
  v92 = BYTE10(v112);
  v89 = BYTE13(v112);
  v90 = BYTE12(v112);
  v87 = HIBYTE(v112);
  v88 = BYTE14(v112);
  if (a4)
  {
    v99 = sub_182AD3158();
    a4 = v18;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_6:
    v81 = 0;
    v82 = 0;
    v79 = a4;
    if (a8)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v99 = 0;
  if (!a5)
  {
    goto LABEL_6;
  }

LABEL_3:
  v19 = sub_182AD3158();
  v81 = v20;
  v82 = v19;
  v79 = a4;
  if (a8)
  {
LABEL_4:
    v21 = sub_182AD3158();
    v83 = v22;
    v84 = v21;
    goto LABEL_8;
  }

LABEL_7:
  v83 = 0;
  v84 = 0;
LABEL_8:
  *(&v101 + 1) = v13;

  v23 = MEMORY[0x1865D9CA0](47, 0xE100000000000000);
  MEMORY[0x1EEE9AC00](v23);
  v24 = sub_182AD30D8();
  v77 = v17;
  v26 = v25;
  *&v101 = v78;

  MEMORY[0x1865D9CA0](v24, v26);

  type metadata accessor for ApplicationServiceEndpoint1.AppSVCBackingClass();
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  v28 = (v27 + 16);
  *(v27 + 24) = 0;
  *(v27 + 32) = v78;
  *(v27 + 40) = v13;
  *(v27 + 48) = v78;
  *(v27 + 56) = v13;
  *(v27 + 64) = v14;
  *(v27 + 65) = v15;
  *(v27 + 66) = v16;
  *(v27 + 67) = v77;
  *(v27 + 68) = v98;
  *(v27 + 69) = v97;
  *(v27 + 70) = v96;
  *(v27 + 71) = v95;
  *(v27 + 72) = v94;
  *(v27 + 73) = v93;
  *(v27 + 74) = v92;
  *(v27 + 75) = v91;
  *(v27 + 76) = v90;
  *(v27 + 77) = v89;
  *(v27 + 78) = v88;
  *(v27 + 79) = v87;
  *(v27 + 96) = 0u;
  *(v27 + 112) = 0u;
  *(v27 + 80) = 0u;
  *(v27 + 128) = a6;
  *(v27 + 132) = 3;
  *(v27 + 133) = v110;
  *(v27 + 135) = v111;
  *(v27 + 136) = xmmword_182AF5DF0;
  v29 = v79;
  if (v79)
  {
    v30 = HIBYTE(v79) & 0xF;
    if ((v79 & 0x2000000000000000) == 0)
    {
      v30 = v99 & 0xFFFFFFFFFFFFLL;
    }

    v32 = v81;
    v31 = v82;
    if (v30)
    {
    }

    else
    {

      v99 = 0;
      v29 = 0;
    }
  }

  else
  {

    v99 = 0;
    v32 = v81;
    v31 = v82;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v33 = *(v27 + 128);
    v107 = *(v27 + 112);
    v108 = v33;
    v109 = *(v27 + 144);
    v34 = *(v27 + 64);
    v103 = *(v27 + 48);
    v104 = v34;
    v35 = *(v27 + 96);
    v105 = *(v27 + 80);
    v106 = v35;
    v36 = *(v27 + 32);
    v101 = *v28;
    v102 = v36;
    v37 = swift_allocObject();
    v38 = *(v27 + 128);
    *(v37 + 112) = *(v27 + 112);
    *(v37 + 128) = v38;
    *(v37 + 144) = *(v27 + 144);
    v39 = *(v27 + 64);
    *(v37 + 48) = *(v27 + 48);
    *(v37 + 64) = v39;
    v40 = *(v27 + 96);
    *(v37 + 80) = *(v27 + 80);
    *(v37 + 96) = v40;
    v41 = *(v27 + 32);
    *(v37 + 16) = *v28;
    *(v37 + 32) = v41;
    sub_181E63A90(&v101, v100);

    v27 = v37;
  }

  v42 = v84;
  *(v27 + 80) = v99;
  *(v27 + 88) = v29;

  if (v32)
  {
    v43 = HIBYTE(v32) & 0xF;
    if ((v32 & 0x2000000000000000) == 0)
    {
      v43 = v31 & 0xFFFFFFFFFFFFLL;
    }

    if (!v43)
    {

      v31 = 0;
      v32 = 0;
    }
  }

  else
  {
    v31 = 0;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v44 = *(v27 + 128);
    v107 = *(v27 + 112);
    v108 = v44;
    v109 = *(v27 + 144);
    v45 = *(v27 + 64);
    v103 = *(v27 + 48);
    v104 = v45;
    v46 = *(v27 + 96);
    v105 = *(v27 + 80);
    v106 = v46;
    v47 = *(v27 + 32);
    v101 = *(v27 + 16);
    v102 = v47;
    v48 = swift_allocObject();
    v49 = *(v27 + 128);
    *(v48 + 112) = *(v27 + 112);
    *(v48 + 128) = v49;
    *(v48 + 144) = *(v27 + 144);
    v50 = *(v27 + 64);
    *(v48 + 48) = *(v27 + 48);
    *(v48 + 64) = v50;
    v51 = *(v27 + 96);
    *(v48 + 80) = *(v27 + 80);
    *(v48 + 96) = v51;
    v52 = *(v27 + 32);
    *(v48 + 16) = *(v27 + 16);
    *(v48 + 32) = v52;
    sub_181E63A90(&v101, v100);

    v27 = v48;
  }

  v53 = v83;
  *(v27 + 96) = v31;
  *(v27 + 104) = v32;

  if (v83)
  {

    v54 = HIBYTE(v83) & 0xF;
    if ((v83 & 0x2000000000000000) == 0)
    {
      v54 = v84 & 0xFFFFFFFFFFFFLL;
    }

    if (!v54)
    {

      v42 = 0;
      v53 = 0;
    }
  }

  else
  {

    v42 = 0;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v55 = *(v27 + 128);
    v107 = *(v27 + 112);
    v108 = v55;
    v109 = *(v27 + 144);
    v56 = *(v27 + 64);
    v103 = *(v27 + 48);
    v104 = v56;
    v57 = *(v27 + 96);
    v105 = *(v27 + 80);
    v106 = v57;
    v58 = *(v27 + 32);
    v101 = *(v27 + 16);
    v102 = v58;
    v59 = swift_allocObject();
    memmove((v59 + 16), (v27 + 16), 0x88uLL);
    sub_181E63A90(&v101, v100);

    v27 = v59;
  }

  *(v27 + 112) = v42;
  *(v27 + 120) = v53;

  if (a2)
  {
    v60 = sub_182AD3158();
    v62 = v61;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v63 = *(v27 + 128);
      v107 = *(v27 + 112);
      v108 = v63;
      v109 = *(v27 + 144);
      v64 = *(v27 + 64);
      v103 = *(v27 + 48);
      v104 = v64;
      v65 = *(v27 + 96);
      v105 = *(v27 + 80);
      v106 = v65;
      v66 = *(v27 + 32);
      v101 = *(v27 + 16);
      v102 = v66;
      v67 = swift_allocObject();
      memmove((v67 + 16), (v27 + 16), 0x88uLL);
      sub_181E63A90(&v101, v100);

      v27 = v67;
    }

    *(v27 + 136) = v60;
    *(v27 + 144) = v62;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v68 = *(v27 + 128);
    v107 = *(v27 + 112);
    v108 = v68;
    v109 = *(v27 + 144);
    v69 = *(v27 + 64);
    v103 = *(v27 + 48);
    v104 = v69;
    v70 = *(v27 + 96);
    v105 = *(v27 + 80);
    v106 = v70;
    v71 = *(v27 + 32);
    v101 = *(v27 + 16);
    v102 = v71;
    v72 = swift_allocObject();
    memmove((v72 + 16), (v27 + 16), 0x88uLL);
    sub_181E63A90(&v101, v100);

    v27 = v72;
  }

  v73 = 0x2010003u >> (8 * a7);
  if (a7 >= 4)
  {
    LOBYTE(v73) = 3;
  }

  *(v27 + 132) = v73;
  *&v101 = v27;
  v74 = objc_allocWithZone(type metadata accessor for Endpoint(0));

  v75 = Endpoint.init(_:)(&v101);

  return v75;
}

nw_txt_record_t nw_txt_record_create_with_bytes(const uint8_t *txt_bytes, size_t txt_len)
{
  v51 = *MEMORY[0x1E69E9840];
  if (!txt_bytes)
  {
    v27 = __nwlog_obj();
    *buf = 136446210;
    v48 = "nw_txt_record_create_with_bytes";
    v28 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v45 = 0;
    if (!__nwlog_fault(v28, &type, &v45))
    {
      goto LABEL_93;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v29 = __nwlog_obj();
      v30 = type;
      if (os_log_type_enabled(v29, type))
      {
        *buf = 136446210;
        v48 = "nw_txt_record_create_with_bytes";
        _os_log_impl(&dword_181A37000, v29, v30, "%{public}s called with null (txt_bytes != __null)", buf, 0xCu);
      }

      goto LABEL_92;
    }

    if (v45 != 1)
    {
      v29 = __nwlog_obj();
      v42 = type;
      if (os_log_type_enabled(v29, type))
      {
        *buf = 136446210;
        v48 = "nw_txt_record_create_with_bytes";
        _os_log_impl(&dword_181A37000, v29, v42, "%{public}s called with null (txt_bytes != __null), backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_92;
    }

    backtrace_string = __nw_create_backtrace_string();
    v29 = __nwlog_obj();
    v36 = type;
    v37 = os_log_type_enabled(v29, type);
    if (!backtrace_string)
    {
      if (v37)
      {
        *buf = 136446210;
        v48 = "nw_txt_record_create_with_bytes";
        _os_log_impl(&dword_181A37000, v29, v36, "%{public}s called with null (txt_bytes != __null), no backtrace", buf, 0xCu);
      }

      goto LABEL_92;
    }

    if (v37)
    {
      *buf = 136446466;
      v48 = "nw_txt_record_create_with_bytes";
      v49 = 2082;
      v50 = backtrace_string;
      _os_log_impl(&dword_181A37000, v29, v36, "%{public}s called with null (txt_bytes != __null), dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_74:

    free(backtrace_string);
    goto LABEL_93;
  }

  if (!txt_len)
  {
    v31 = __nwlog_obj();
    *buf = 136446210;
    v48 = "nw_txt_record_create_with_bytes";
    v28 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v45 = 0;
    if (!__nwlog_fault(v28, &type, &v45))
    {
      goto LABEL_93;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v29 = __nwlog_obj();
      v32 = type;
      if (os_log_type_enabled(v29, type))
      {
        *buf = 136446210;
        v48 = "nw_txt_record_create_with_bytes";
        _os_log_impl(&dword_181A37000, v29, v32, "%{public}s txt_record cannot have length 0", buf, 0xCu);
      }

      goto LABEL_92;
    }

    if (v45 != 1)
    {
      v29 = __nwlog_obj();
      v43 = type;
      if (os_log_type_enabled(v29, type))
      {
        *buf = 136446210;
        v48 = "nw_txt_record_create_with_bytes";
        _os_log_impl(&dword_181A37000, v29, v43, "%{public}s txt_record cannot have length 0, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_92;
    }

    backtrace_string = __nw_create_backtrace_string();
    v29 = __nwlog_obj();
    v38 = type;
    v39 = os_log_type_enabled(v29, type);
    if (!backtrace_string)
    {
      if (v39)
      {
        *buf = 136446210;
        v48 = "nw_txt_record_create_with_bytes";
        _os_log_impl(&dword_181A37000, v29, v38, "%{public}s txt_record cannot have length 0, no backtrace", buf, 0xCu);
      }

      goto LABEL_92;
    }

    if (v39)
    {
      *buf = 136446466;
      v48 = "nw_txt_record_create_with_bytes";
      v49 = 2082;
      v50 = backtrace_string;
      _os_log_impl(&dword_181A37000, v29, v38, "%{public}s txt_record cannot have length 0, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_74;
  }

  if (txt_len >= 0x10000)
  {
    v33 = __nwlog_obj();
    *buf = 136446210;
    v48 = "nw_txt_record_create_with_bytes";
    v28 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v45 = 0;
    if (__nwlog_fault(v28, &type, &v45))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v29 = __nwlog_obj();
        v34 = type;
        if (os_log_type_enabled(v29, type))
        {
          *buf = 136446210;
          v48 = "nw_txt_record_create_with_bytes";
          _os_log_impl(&dword_181A37000, v29, v34, "%{public}s txt_record cannot have length > 65535", buf, 0xCu);
        }

LABEL_92:

        goto LABEL_93;
      }

      if (v45 != 1)
      {
        v29 = __nwlog_obj();
        v44 = type;
        if (os_log_type_enabled(v29, type))
        {
          *buf = 136446210;
          v48 = "nw_txt_record_create_with_bytes";
          _os_log_impl(&dword_181A37000, v29, v44, "%{public}s txt_record cannot have length > 65535, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_92;
      }

      backtrace_string = __nw_create_backtrace_string();
      v29 = __nwlog_obj();
      v40 = type;
      v41 = os_log_type_enabled(v29, type);
      if (!backtrace_string)
      {
        if (v41)
        {
          *buf = 136446210;
          v48 = "nw_txt_record_create_with_bytes";
          _os_log_impl(&dword_181A37000, v29, v40, "%{public}s txt_record cannot have length > 65535, no backtrace", buf, 0xCu);
        }

        goto LABEL_92;
      }

      if (v41)
      {
        *buf = 136446466;
        v48 = "nw_txt_record_create_with_bytes";
        v49 = 2082;
        v50 = backtrace_string;
        _os_log_impl(&dword_181A37000, v29, v40, "%{public}s txt_record cannot have length > 65535, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_74;
    }

LABEL_93:
    if (v28)
    {
      free(v28);
    }

    return 0;
  }

  v3 = txt_bytes;
  v4 = objc_alloc_init(NWConcrete_nw_txt_record);
  if (!v4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    *buf = 136446210;
    v48 = "nw_txt_record_create_with_bytes";
    v11 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v45 = 0;
    if (__nwlog_fault(v11, &type, &v45))
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
          v48 = "nw_txt_record_create_with_bytes";
          _os_log_impl(&dword_181A37000, v12, v13, "%{public}s [nw_txt_record init] failed", buf, 0xCu);
        }
      }

      else if (v45 == 1)
      {
        v23 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v12 = gLogObj;
        v24 = type;
        v25 = os_log_type_enabled(v12, type);
        if (v23)
        {
          if (v25)
          {
            *buf = 136446466;
            v48 = "nw_txt_record_create_with_bytes";
            v49 = 2082;
            v50 = v23;
            _os_log_impl(&dword_181A37000, v12, v24, "%{public}s [nw_txt_record init] failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v23);
          if (!v11)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        }

        if (v25)
        {
          *buf = 136446210;
          v48 = "nw_txt_record_create_with_bytes";
          _os_log_impl(&dword_181A37000, v12, v24, "%{public}s [nw_txt_record init] failed, no backtrace", buf, 0xCu);
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
          *buf = 136446210;
          v48 = "nw_txt_record_create_with_bytes";
          _os_log_impl(&dword_181A37000, v12, v26, "%{public}s [nw_txt_record init] failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v11)
    {
LABEL_43:

      return v4;
    }

LABEL_42:
    free(v11);
    goto LABEL_43;
  }

  v5 = malloc_type_malloc(txt_len, 0x9F4F2537uLL);
  if (v5)
  {
LABEL_8:
    *(v4 + 1) = v5;
    memcpy(v5, v3, txt_len);
    if (txt_len - 8901 >= 0xFFFFFFFFFFFFDD3CLL)
    {
      v14 = *v3;
      if (txt_len == 1 && !*v3 || (v15 = &v3[txt_len], v16 = &v3[v14 + 1], v16 == &v3[txt_len]))
      {
        v9 = 1;
      }

      else
      {
        do
        {
          v9 = v16 <= v15;
          if (v16 > v15)
          {
            break;
          }

          v18 = v3;
          v3 = v16;
          v19 = v18 + 1;
          v20 = memchr((v18 + 1), 61, v14);
          v21 = &v18[v14];
          if (v20)
          {
            v21 = v20;
          }

          if (v19 < v21)
          {
            v22 = &v21[~v18];
            while (*v19 - 127 > 0xFFFFFFA0)
            {
              ++v19;
              if (!--v22)
              {
                goto LABEL_20;
              }
            }

            goto LABEL_9;
          }

LABEL_20:
          v14 = *v3;
          v16 = &v3[v14 + 1];
          v9 = 1;
        }

        while (v16 != v15);
      }
    }

    else
    {
LABEL_9:
      v9 = 0;
    }

    *(v4 + 36) = *(v4 + 36) & 0xFE | v9;
    *(v4 + 2) = txt_len;
    *(v4 + 3) = txt_len;
    v17 = v4;
    goto LABEL_43;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v6 = gLogObj;
  os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
  *buf = 136446210;
  v48 = "nw_txt_record_create_with_bytes";
  v7 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v7);
  if (!result)
  {
    free(v7);
    v5 = 0;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_181E6BF80(uint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for URLEndpoint();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Endpoint.EndpointType(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v31 - v11;
  v13 = *a1;
  v14 = OBJC_IVAR____TtC7Network8Endpoint_type;
  swift_beginAccess();
  sub_181ACC828(v2 + v14, v12, type metadata accessor for Endpoint.EndpointType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v22 = *(v12 + 2);
      v23 = *(v12 + 3);
      v24 = *(v12 + 8);
      v25 = *(v12 + 18);
      v34 = *v12;
      v35 = v22;
      v36 = v23;
      v37 = v24;
      v38 = v25;
      sub_181AD2448(v13);
      v26 = v35;
      v27 = v36;
      v28 = v37;
      v29 = v38;
      *v10 = v34;
      *(v10 + 2) = v26;
      *(v10 + 3) = v27;
      *(v10 + 8) = v28;
      *(v10 + 18) = v29;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v16 = *(v12 + 2);
      v17 = *(v12 + 3);
      v34 = *v12;
      v35 = v16;
      v36 = v17;
      sub_181AD2448(v13);
      v18 = v35;
      v19 = v36;
      *v10 = v34;
      *(v10 + 2) = v18;
      *(v10 + 3) = v19;
    }

    else
    {
      sub_181AA91BC(v12, v6, type metadata accessor for URLEndpoint);
      sub_181AD2448(v13);
      sub_181AA91BC(v6, v10, type metadata accessor for URLEndpoint);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v39 = *v12;
    if (EnumCaseMultiPayload == 1)
    {
      sub_181E6EDF4(v13);
    }

    else
    {
      sub_1820EDB9C(v13);
    }

    *v10 = v39;
  }

  else
  {
    v20 = *(v12 + 1);
    v31 = *v12;
    v32 = v20;
    v33[0] = *(v12 + 2);
    *(v33 + 12) = *(v12 + 44);
    sub_181AD2448(v13);
    v21 = v32;
    *v10 = v31;
    *(v10 + 1) = v21;
    *(v10 + 2) = v33[0];
    *(v10 + 44) = *(v33 + 12);
  }

  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_181B74E48(v10, v2 + v14);
  return swift_endAccess();
}

void _nw_endpoint_get_service_identifier_0(void *a1, unsigned __int8 *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &src[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = OBJC_IVAR____TtC7Network8Endpoint_type;
  v8 = a1;
  swift_beginAccess();
  sub_181A546E0(a1 + v7, v6, type metadata accessor for Endpoint.EndpointType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *src = *(*v6 + 64);
    uuid_copy(a2, src);
  }

  else
  {
    sub_181A5513C(v6, type metadata accessor for Endpoint.EndpointType);
    memset(src, 0, sizeof(src));
    uuid_copy(a2, src);
  }
}

uint64_t _nw_endpoint_get_contact_id_0(void *a1)
{
  v2 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = OBJC_IVAR____TtC7Network8Endpoint_type;
  v6 = a1;
  swift_beginAccess();
  sub_181A546E0(a1 + v5, v4, type metadata accessor for Endpoint.EndpointType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = *v4;
    v8 = *(v7 + 112);
    v9 = *(v7 + 120);
    v10 = OBJC_IVAR____TtC7Network8Endpoint_storageLock;
    v11 = *&v6[OBJC_IVAR____TtC7Network8Endpoint_storageLock];

    os_unfair_lock_lock(v11 + 4);
    sub_181AB2BF0(v6, 4, v8, v9, &v13);

    os_unfair_lock_unlock((*&v6[v10] + 16));

    return v13;
  }

  else
  {

    sub_181A5513C(v4, type metadata accessor for Endpoint.EndpointType);
    return 0;
  }
}

uint64_t ___ZL36nw_path_create_endpoint_array_resultPmPU22objcproto11OS_nw_array8NSObjecth_block_invoke_34(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  *(*(*(a1 + 32) + 8) + 24) = nw_path_evaluator_add_endpoint_to_necp_message(v4, *(a1 + 48), *(*(*(a1 + 32) + 8) + 24), *(a1 + 40), 7);

  return 1;
}

uint64_t nw_endpoint_get_advertised_route(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    advertised_route = _nw_endpoint_get_advertised_route(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_get_advertised_route";
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
        v16 = "nw_endpoint_get_advertised_route";
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
          v16 = "nw_endpoint_get_advertised_route";
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
        v16 = "nw_endpoint_get_advertised_route";
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
        v16 = "nw_endpoint_get_advertised_route";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  advertised_route = 0;
LABEL_3:

  return advertised_route;
}

uint64_t _nw_endpoint_get_advertised_route_0(void *a1)
{
  v2 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC7Network8Endpoint_type;
  v6 = a1;
  swift_beginAccess();
  sub_181A546E0(a1 + v5, v4, type metadata accessor for Endpoint.EndpointType);

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = *(*v4 + 132);

    if (v7 != 3)
    {
      return (v7 + 1);
    }
  }

  else
  {
    sub_181A5513C(v4, type metadata accessor for Endpoint.EndpointType);
  }

  return 0;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t IPv6Address.debugDescription.getter()
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = *v0;
  v2 = v0[2];
  v9 = v0[1];
  *&v8.sa_len = 7708;
  *&v8.sa_data[6] = v1;
  v10 = 0;

  v3 = swift_slowAlloc();
  if (getnameinfo(&v8, 0x1Cu, v3, 0x64u, 0, 0, 2))
  {
    v4 = 0xE100000000000000;
    v5 = 63;
  }

  else
  {
    v5 = sub_182AD3158();
    v4 = v6;
  }

  MEMORY[0x1865DF520](v3, -1, -1);
  if (v2)
  {
    MEMORY[0x1865D9CA0](v5, v4);

    MEMORY[0x1865D9CA0](37, 0xE100000000000000);
    sub_182AD3E18();

    return 0;
  }

  return v5;
}

uint64_t nw_array_remove_object_at_index(void *a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_array_remove_object_at_index(a1, a2);
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  v13 = "nw_array_remove_object_at_index";
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
        v13 = "nw_array_remove_object_at_index";
        v7 = "%{public}s called with null array";
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
            v13 = "nw_array_remove_object_at_index";
            v14 = 2082;
            v15 = backtrace_string;
            _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null array, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v9)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v13 = "nw_array_remove_object_at_index";
        v7 = "%{public}s called with null array, no backtrace";
        goto LABEL_18;
      }

      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v13 = "nw_array_remove_object_at_index";
        v7 = "%{public}s called with null array, backtrace limit exceeded";
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

void nw_frame_set_buffer_used_manager(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *(a1 + 104) = a2;
    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v11 = "__nw_frame_set_buffer_used_manager";
  v2 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v8 = 0;
  if (__nwlog_fault(v2, &type, &v8))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_18;
      }

      *buf = 136446210;
      v11 = "__nw_frame_set_buffer_used_manager";
      v5 = "%{public}s called with null frame";
      goto LABEL_17;
    }

    if (v8 != 1)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_18;
      }

      *buf = 136446210;
      v11 = "__nw_frame_set_buffer_used_manager";
      v5 = "%{public}s called with null frame, backtrace limit exceeded";
      goto LABEL_17;
    }

    backtrace_string = __nw_create_backtrace_string();
    v3 = __nwlog_obj();
    v4 = type;
    v7 = os_log_type_enabled(v3, type);
    if (backtrace_string)
    {
      if (v7)
      {
        *buf = 136446466;
        v11 = "__nw_frame_set_buffer_used_manager";
        v12 = 2082;
        v13 = backtrace_string;
        _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_18;
    }

    if (v7)
    {
      *buf = 136446210;
      v11 = "__nw_frame_set_buffer_used_manager";
      v5 = "%{public}s called with null frame, no backtrace";
LABEL_17:
      _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
    }
  }

LABEL_18:
  if (v2)
  {
    free(v2);
  }
}

void nw_framer_protocol_inbound_data_finalizer(void *a1, int a2, char *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a1;
  if (a2)
  {
    if (gLogDatapath)
    {
      v6 = __nwlog_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v7 = "";
        if (a3)
        {
          v7 = a3 + 609;
        }

        v10 = 136446466;
        v11 = "nw_framer_protocol_inbound_data_finalizer";
        v12 = 2080;
        v13 = v7;
        v8 = "%{public}s %s Finalizing inbound frame (success)";
LABEL_13:
        _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEBUG, v8, &v10, 0x16u);
        goto LABEL_14;
      }

      goto LABEL_14;
    }
  }

  else if (gLogDatapath)
  {
    v6 = __nwlog_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v9 = "";
      if (a3)
      {
        v9 = a3 + 609;
      }

      v10 = 136446466;
      v11 = "nw_framer_protocol_inbound_data_finalizer";
      v12 = 2080;
      v13 = v9;
      v8 = "%{public}s %s Finalizing inbound frame (drop)";
      goto LABEL_13;
    }

LABEL_14:
  }

  nw_framer_protocol_finalizer(v5, (a3 + 464));
}

uint64_t nw_protocol_get_output_handler(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 32);
  }

  __nwlog_obj();
  *buf = 136446210;
  v11 = "__nw_protocol_get_output_handler";
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
        v11 = "__nw_protocol_get_output_handler";
        v5 = "%{public}s called with null protocol";
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
          v11 = "__nw_protocol_get_output_handler";
          v12 = 2082;
          v13 = backtrace_string;
          _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_18;
      }

      if (v7)
      {
        *buf = 136446210;
        v11 = "__nw_protocol_get_output_handler";
        v5 = "%{public}s called with null protocol, no backtrace";
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
        v11 = "__nw_protocol_get_output_handler";
        v5 = "%{public}s called with null protocol, backtrace limit exceeded";
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

uint64_t NWConnection.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  sub_181D8E448(v0 + OBJC_IVAR____TtC7Network13_NWConnection_endpoint, type metadata accessor for NWEndpoint);

  return swift_deallocClassInstance();
}

void nw_protocol_ipv6_disconnected(nw_protocol *a1, nw_protocol *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v50 = "nw_protocol_ipv6_disconnected";
    v2 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v47 = 0;
    if (!__nwlog_fault(v2, &type, &v47))
    {
      goto LABEL_97;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v42 = __nwlog_obj();
      v43 = type;
      if (!os_log_type_enabled(v42, type))
      {
        goto LABEL_97;
      }

      *buf = 136446210;
      v50 = "nw_protocol_ipv6_disconnected";
      v44 = "%{public}s called with null protocol";
    }

    else if (v47 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v42 = __nwlog_obj();
      v43 = type;
      v46 = os_log_type_enabled(v42, type);
      if (backtrace_string)
      {
        if (v46)
        {
          *buf = 136446466;
          v50 = "nw_protocol_ipv6_disconnected";
          v51 = 2082;
          v52 = backtrace_string;
          _os_log_impl(&dword_181A37000, v42, v43, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (v2)
        {
          goto LABEL_73;
        }

        return;
      }

      if (!v46)
      {
LABEL_97:
        if (!v2)
        {
          return;
        }

        goto LABEL_73;
      }

      *buf = 136446210;
      v50 = "nw_protocol_ipv6_disconnected";
      v44 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v42 = __nwlog_obj();
      v43 = type;
      if (!os_log_type_enabled(v42, type))
      {
        goto LABEL_97;
      }

      *buf = 136446210;
      v50 = "nw_protocol_ipv6_disconnected";
      v44 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v42, v43, v44, buf, 0xCu);
    goto LABEL_97;
  }

  v2 = a1;
  handle = a1->handle;
  v4 = a1;
  if (handle == &nw_protocol_ref_counted_handle)
  {
    goto LABEL_6;
  }

  if (handle != &nw_protocol_ref_counted_additional_handle)
  {
    v5 = 1;
    goto LABEL_11;
  }

  v4 = *a1[1].flow_id;
  if (v4)
  {
LABEL_6:
    callbacks = v4[1].callbacks;
    v5 = 0;
    if (callbacks)
    {
      v4[1].callbacks = (&callbacks->add_input_handler + 1);
    }
  }

  else
  {
    v5 = 1;
  }

  handle = a1->handle;
LABEL_11:
  v7 = a1;
  if (handle == &nw_protocol_ref_counted_handle)
  {
LABEL_18:
    v7[2].identifier = 0;
    default_input_handler = a1->default_input_handler;
    if (!default_input_handler)
    {
      goto LABEL_62;
    }

    v12 = *(default_input_handler + 24);
    if (!v12)
    {
      goto LABEL_62;
    }

    v13 = *(v12 + 48);
    if (!v13)
    {
      goto LABEL_62;
    }

    v14 = *(default_input_handler + 40);
    v15 = a1->default_input_handler;
    if (v14 == &nw_protocol_ref_counted_handle || v14 == &nw_protocol_ref_counted_additional_handle && (v15 = *(default_input_handler + 64)) != 0)
    {
      v23 = v15[1].callbacks;
      v16 = 0;
      if (v23)
      {
        v15[1].callbacks = (&v23->add_input_handler + 1);
      }
    }

    else
    {
      v16 = 1;
    }

    v24 = a1;
    if (handle == &nw_protocol_ref_counted_handle || handle == &nw_protocol_ref_counted_additional_handle && (v24 = *a1[1].flow_id) != 0)
    {
      v25 = v24[1].callbacks;
      if (v25)
      {
        v24[1].callbacks = (&v25->add_input_handler + 1);
      }

      v13(default_input_handler, a1);
      v26 = v2->handle;
      v27 = v2;
      if (v26 == &nw_protocol_ref_counted_handle || v26 == &nw_protocol_ref_counted_additional_handle && (v27 = *v2[1].flow_id) != 0)
      {
        v28 = v27[1].callbacks;
        if (v28)
        {
          v29 = (v28 - 1);
          v27[1].callbacks = v29;
          if (!v29)
          {
            v30 = *v27[1].flow_id;
            if (v30)
            {
              *v27[1].flow_id = 0;
              v30[2](v30);
              _Block_release(v30);
            }

            if (v27[1].flow_id[8])
            {
              v31 = *v27[1].flow_id;
              if (v31)
              {
                _Block_release(v31);
              }
            }

            free(v27);
          }
        }
      }
    }

    else
    {
      v13(default_input_handler, a1);
    }

    if (v16)
    {
      goto LABEL_62;
    }

    v32 = *(default_input_handler + 40);
    if (v32 != &nw_protocol_ref_counted_handle)
    {
      if (v32 != &nw_protocol_ref_counted_additional_handle)
      {
        goto LABEL_62;
      }

      default_input_handler = *(default_input_handler + 64);
      if (!default_input_handler)
      {
        goto LABEL_62;
      }
    }

    v33 = *(default_input_handler + 88);
    if (!v33)
    {
      goto LABEL_62;
    }

    v34 = v33 - 1;
    *(default_input_handler + 88) = v34;
    if (v34)
    {
      goto LABEL_62;
    }

    v40 = *(default_input_handler + 64);
    if (v40)
    {
      *(default_input_handler + 64) = 0;
      v40[2](v40);
      _Block_release(v40);
    }

    if (*(default_input_handler + 72))
    {
      v41 = *(default_input_handler + 64);
      if (v41)
      {
        _Block_release(v41);
      }
    }

LABEL_35:
    free(default_input_handler);
    goto LABEL_62;
  }

  if (handle == &nw_protocol_ref_counted_additional_handle)
  {
    v7 = *a1[1].flow_id;
    goto LABEL_18;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v50 = "nw_protocol_ipv6_disconnected";
  default_input_handler = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v47 = 0;
  if (!__nwlog_fault(default_input_handler, &type, &v47))
  {
    goto LABEL_34;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    v10 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_34;
    }

    *buf = 136446210;
    v50 = "nw_protocol_ipv6_disconnected";
    v11 = "%{public}s called with null ipv6";
LABEL_32:
    v21 = v9;
    v22 = v10;
    goto LABEL_33;
  }

  if (v47 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    v10 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_34;
    }

    *buf = 136446210;
    v50 = "nw_protocol_ipv6_disconnected";
    v11 = "%{public}s called with null ipv6, backtrace limit exceeded";
    goto LABEL_32;
  }

  v17 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v18 = gLogObj;
  v19 = type;
  v20 = os_log_type_enabled(gLogObj, type);
  if (!v17)
  {
    if (!v20)
    {
LABEL_34:
      if (!default_input_handler)
      {
        goto LABEL_62;
      }

      goto LABEL_35;
    }

    *buf = 136446210;
    v50 = "nw_protocol_ipv6_disconnected";
    v11 = "%{public}s called with null ipv6, no backtrace";
    v21 = v18;
    v22 = v19;
LABEL_33:
    _os_log_impl(&dword_181A37000, v21, v22, v11, buf, 0xCu);
    goto LABEL_34;
  }

  if (v20)
  {
    *buf = 136446466;
    v50 = "nw_protocol_ipv6_disconnected";
    v51 = 2082;
    v52 = v17;
    _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null ipv6, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v17);
  if (default_input_handler)
  {
    goto LABEL_35;
  }

LABEL_62:
  if ((v5 & 1) == 0)
  {
    v35 = v2->handle;
    if (v35 == &nw_protocol_ref_counted_handle || v35 == &nw_protocol_ref_counted_additional_handle && (v2 = *v2[1].flow_id) != 0)
    {
      v36 = v2[1].callbacks;
      if (v36)
      {
        v37 = (v36 - 1);
        v2[1].callbacks = v37;
        if (!v37)
        {
          v38 = *v2[1].flow_id;
          if (v38)
          {
            *v2[1].flow_id = 0;
            (v38)[2](v38, a2);
            _Block_release(v38);
          }

          if (v2[1].flow_id[8])
          {
            v39 = *v2[1].flow_id;
            if (v39)
            {
              _Block_release(v39);
            }
          }

LABEL_73:
          free(v2);
        }
      }
    }
  }
}

uint64_t nw_protocol_ipv6_remove_input_handler(nw_protocol *a1, nw_protocol *a2, uint64_t a3)
{
  v103 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v100 = "nw_protocol_ipv6_remove_input_handler";
    v85 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v97 = 0;
    if (__nwlog_fault(v85, &type, &v97))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v86 = __nwlog_obj();
        v87 = type;
        if (os_log_type_enabled(v86, type))
        {
          *buf = 136446210;
          v100 = "nw_protocol_ipv6_remove_input_handler";
          v88 = "%{public}s called with null protocol";
LABEL_168:
          _os_log_impl(&dword_181A37000, v86, v87, v88, buf, 0xCu);
        }
      }

      else if (v97 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v86 = __nwlog_obj();
        v87 = type;
        v94 = os_log_type_enabled(v86, type);
        if (backtrace_string)
        {
          if (v94)
          {
            *buf = 136446466;
            v100 = "nw_protocol_ipv6_remove_input_handler";
            v101 = 2082;
            v102 = backtrace_string;
            _os_log_impl(&dword_181A37000, v86, v87, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_169;
        }

        if (v94)
        {
          *buf = 136446210;
          v100 = "nw_protocol_ipv6_remove_input_handler";
          v88 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_168;
        }
      }

      else
      {
        v86 = __nwlog_obj();
        v87 = type;
        if (os_log_type_enabled(v86, type))
        {
          *buf = 136446210;
          v100 = "nw_protocol_ipv6_remove_input_handler";
          v88 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_168;
        }
      }
    }

LABEL_169:
    if (v85)
    {
      free(v85);
    }

    return 0;
  }

  v4 = a1;
  handle = a1->handle;
  v6 = a1;
  if (handle == &nw_protocol_ref_counted_handle)
  {
    goto LABEL_6;
  }

  if (handle != &nw_protocol_ref_counted_additional_handle)
  {
    v7 = 1;
    goto LABEL_11;
  }

  v6 = *a1[1].flow_id;
  if (v6)
  {
LABEL_6:
    callbacks = v6[1].callbacks;
    v7 = 0;
    if (callbacks)
    {
      v6[1].callbacks = (&callbacks->add_input_handler + 1);
    }
  }

  else
  {
    v7 = 1;
  }

  handle = a1->handle;
LABEL_11:
  v9 = a1;
  if (handle != &nw_protocol_ref_counted_handle)
  {
    if (handle != &nw_protocol_ref_counted_additional_handle)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446210;
      v100 = "nw_protocol_ipv6_remove_input_handler";
      v10 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v97 = 0;
      if (!__nwlog_fault(v10, &type, &v97))
      {
        goto LABEL_61;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        v12 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_61;
        }

        *buf = 136446210;
        v100 = "nw_protocol_ipv6_remove_input_handler";
        v13 = "%{public}s called with null ipv6";
      }

      else
      {
        if (v97 == 1)
        {
          v33 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v34 = gLogObj;
          v35 = type;
          v36 = os_log_type_enabled(gLogObj, type);
          if (v33)
          {
            if (v36)
            {
              *buf = 136446466;
              v100 = "nw_protocol_ipv6_remove_input_handler";
              v101 = 2082;
              v102 = v33;
              _os_log_impl(&dword_181A37000, v34, v35, "%{public}s called with null ipv6, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v33);
            goto LABEL_61;
          }

          if (!v36)
          {
LABEL_61:
            if (v10)
            {
              free(v10);
            }

LABEL_63:
            result = 0;
            if (v7)
            {
              return result;
            }

            goto LABEL_132;
          }

          *buf = 136446210;
          v100 = "nw_protocol_ipv6_remove_input_handler";
          v13 = "%{public}s called with null ipv6, no backtrace";
          v37 = v34;
          v38 = v35;
LABEL_60:
          _os_log_impl(&dword_181A37000, v37, v38, v13, buf, 0xCu);
          goto LABEL_61;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        v12 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_61;
        }

        *buf = 136446210;
        v100 = "nw_protocol_ipv6_remove_input_handler";
        v13 = "%{public}s called with null ipv6, backtrace limit exceeded";
      }

      v37 = v11;
      v38 = v12;
      goto LABEL_60;
    }

    v9 = *a1[1].flow_id;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v100 = "__nw_protocol_get_output_handler";
    v89 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v97 = 0;
    if (__nwlog_fault(v89, &type, &v97))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v90 = __nwlog_obj();
        v91 = type;
        if (os_log_type_enabled(v90, type))
        {
          *buf = 136446210;
          v100 = "__nw_protocol_get_output_handler";
          v92 = "%{public}s called with null protocol";
LABEL_174:
          _os_log_impl(&dword_181A37000, v90, v91, v92, buf, 0xCu);
        }
      }

      else if (v97 == 1)
      {
        v95 = __nw_create_backtrace_string();
        v90 = __nwlog_obj();
        v91 = type;
        v96 = os_log_type_enabled(v90, type);
        if (v95)
        {
          if (v96)
          {
            *buf = 136446466;
            v100 = "__nw_protocol_get_output_handler";
            v101 = 2082;
            v102 = v95;
            _os_log_impl(&dword_181A37000, v90, v91, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v95);
          goto LABEL_175;
        }

        if (v96)
        {
          *buf = 136446210;
          v100 = "__nw_protocol_get_output_handler";
          v92 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_174;
        }
      }

      else
      {
        v90 = __nwlog_obj();
        v91 = type;
        if (os_log_type_enabled(v90, type))
        {
          *buf = 136446210;
          v100 = "__nw_protocol_get_output_handler";
          v92 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_174;
        }
      }
    }

LABEL_175:
    if (v89)
    {
      free(v89);
    }

    a2 = 0;
    goto LABEL_32;
  }

  output_handler = a2->output_handler;
  if (output_handler == a1)
  {
    v15 = output_handler->handle;
    if (v15 == &nw_protocol_ref_counted_handle || v15 == &nw_protocol_ref_counted_additional_handle && (output_handler = *output_handler[1].flow_id) != 0)
    {
      v16 = output_handler[1].callbacks;
      if (v16)
      {
        v17 = (v16 - 1);
        output_handler[1].callbacks = v17;
        if (!v17)
        {
          v18 = a2;
          v19 = *output_handler[1].flow_id;
          if (v19)
          {
            *output_handler[1].flow_id = 0;
            v19[2](v19);
            _Block_release(v19);
          }

          if (output_handler[1].flow_id[8])
          {
            v20 = *output_handler[1].flow_id;
            if (v20)
            {
              _Block_release(v20);
            }
          }

          free(output_handler);
          a2 = v18;
        }
      }
    }

    a2->output_handler = 0;
  }

LABEL_32:
  if (v4->default_input_handler != a2)
  {
    goto LABEL_63;
  }

  nw_protocol_ip_register_segmentation_offload_notification(v4, 0);
  default_input_handler = v4->default_input_handler;
  if (default_input_handler)
  {
    v22 = default_input_handler->handle;
    if (v22 == &nw_protocol_ref_counted_handle || v22 == &nw_protocol_ref_counted_additional_handle && (default_input_handler = *default_input_handler[1].flow_id) != 0)
    {
      v23 = default_input_handler[1].callbacks;
      if (v23)
      {
        v24 = (v23 - 1);
        default_input_handler[1].callbacks = v24;
        if (!v24)
        {
          v25 = *default_input_handler[1].flow_id;
          if (v25)
          {
            *default_input_handler[1].flow_id = 0;
            v25[2](v25);
            _Block_release(v25);
          }

          if (default_input_handler[1].flow_id[8])
          {
            v26 = *default_input_handler[1].flow_id;
            if (v26)
            {
              _Block_release(v26);
            }
          }

          free(default_input_handler);
        }
      }
    }

    v4->default_input_handler = 0;
  }

  v27 = v4->output_handler;
  if (v27)
  {
    v28 = v27->callbacks;
    if (v28)
    {
      remove_input_handler = v28->remove_input_handler;
      if (remove_input_handler)
      {
        v30 = v27->handle;
        v31 = v4->output_handler;
        if (v30 == &nw_protocol_ref_counted_handle || v30 == &nw_protocol_ref_counted_additional_handle && (v31 = *v27[1].flow_id) != 0)
        {
          v40 = v31[1].callbacks;
          v32 = 0;
          if (v40)
          {
            v31[1].callbacks = (&v40->add_input_handler + 1);
          }
        }

        else
        {
          v32 = 1;
        }

        v41 = v4->handle;
        v42 = v4;
        if (v41 == &nw_protocol_ref_counted_handle || v41 == &nw_protocol_ref_counted_additional_handle && (v42 = *v4[1].flow_id) != 0)
        {
          v43 = v42[1].callbacks;
          if (v43)
          {
            v42[1].callbacks = (&v43->add_input_handler + 1);
          }

          remove_input_handler(v27, v4, a3);
          v44 = v4->handle;
          v45 = v4;
          if (v44 == &nw_protocol_ref_counted_handle || v44 == &nw_protocol_ref_counted_additional_handle && (v45 = *v4[1].flow_id) != 0)
          {
            v46 = v45[1].callbacks;
            if (v46)
            {
              v47 = (v46 - 1);
              v45[1].callbacks = v47;
              if (!v47)
              {
                v48 = *v45[1].flow_id;
                if (v48)
                {
                  *v45[1].flow_id = 0;
                  v48[2](v48);
                  _Block_release(v48);
                }

                if (v45[1].flow_id[8])
                {
                  v49 = *v45[1].flow_id;
                  if (v49)
                  {
                    _Block_release(v49);
                  }
                }

                free(v45);
              }
            }
          }
        }

        else
        {
          remove_input_handler(v27, v4, a3);
        }

        if ((v32 & 1) == 0)
        {
          v50 = v27->handle;
          if (v50 == &nw_protocol_ref_counted_handle || v50 == &nw_protocol_ref_counted_additional_handle && (v27 = *v27[1].flow_id) != 0)
          {
            v51 = v27[1].callbacks;
            if (v51)
            {
              v52 = (v51 - 1);
              v27[1].callbacks = v52;
              if (!v52)
              {
                v53 = *v27[1].flow_id;
                if (v53)
                {
                  *v27[1].flow_id = 0;
                  v53[2](v53);
                  _Block_release(v53);
                }

                if (v27[1].flow_id[8])
                {
                  v54 = *v27[1].flow_id;
                  if (v54)
                  {
                    _Block_release(v54);
                  }
                }

                free(v27);
              }
            }
          }
        }
      }
    }
  }

  if (a3)
  {
    p_output_handler_context = &v9[2].output_handler_context;
    while (1)
    {
      v60 = *p_output_handler_context;
      if (!*p_output_handler_context)
      {
        break;
      }

      v61 = v60[5];
      if (v61 == p_output_handler_context)
      {
        v56 = v60 + 4;
        v62 = v60[4];
        if (v62)
        {
          *(v62 + 40) = v61;
          *v60[5] = v62;
        }

        else
        {
          *v9[3].flow_id = v61;
          *v61 = 0;
        }
      }

      else
      {
        v57 = v60[2];
        v58 = v60[3];
        v56 = v60 + 2;
        v59 = (v57 + 24);
        if (!v57)
        {
          v59 = v9 + 3;
        }

        *v59->flow_id = v58;
        *v58 = v57;
      }

      *v56 = 0;
      v56[1] = 0;
      nw_frame_finalize(v60);
    }

    v63 = &v9[3].flow_id[8];
    while (1)
    {
      v68 = *v63->name;
      if (!*v63->name)
      {
        break;
      }

      v69 = v68[5];
      if (v69 == v63)
      {
        v64 = v68 + 4;
        v70 = v68[4];
        if (v70)
        {
          *(v70 + 40) = v69;
          *v68[5] = v70;
        }

        else
        {
          v9[3].identifier = v69;
          *v69->name = 0;
        }
      }

      else
      {
        v65 = v68[2];
        v66 = v68[3];
        v64 = v68 + 2;
        p_identifier = (v65 + 24);
        if (!v65)
        {
          p_identifier = &v9[3].identifier;
        }

        *p_identifier = v66;
        *v66->name = v65;
      }

      *v64 = 0;
      v64[1] = 0;
      nw_frame_free_buffer(v68);
      os_release(v68);
    }

    p_callbacks = &v9[3].callbacks;
    while (1)
    {
      v76 = *p_callbacks;
      if (!*p_callbacks)
      {
        break;
      }

      connected = v76->connected;
      if (connected == p_callbacks)
      {
        p_disconnect = &v76->disconnect;
        disconnect = v76->disconnect;
        if (disconnect)
        {
          disconnect[5] = connected;
          *v76->connected = disconnect;
        }

        else
        {
          v9[3].output_handler = connected;
          *connected->flow_id = 0;
        }
      }

      else
      {
        replace_input_handler = v76->replace_input_handler;
        connect = v76->connect;
        p_disconnect = &v76->replace_input_handler;
        p_output_handler = (replace_input_handler + 24);
        if (!replace_input_handler)
        {
          p_output_handler = &v9[3].output_handler;
        }

        *p_output_handler = connect;
        *connect->flow_id = replace_input_handler;
      }

      *p_disconnect = 0;
      p_disconnect[1] = 0;
      nw_frame_free_buffer(v76);
      os_release(v76);
    }

    nw_protocol_destroy(&v9[1].output_handler, 0);
  }

  result = 1;
  if ((v7 & 1) == 0)
  {
LABEL_132:
    v79 = v4->handle;
    if (v79 == &nw_protocol_ref_counted_handle || v79 == &nw_protocol_ref_counted_additional_handle && (v4 = *v4[1].flow_id) != 0)
    {
      v80 = v4[1].callbacks;
      if (v80)
      {
        v81 = (v80 - 1);
        v4[1].callbacks = v81;
        if (!v81)
        {
          v82 = result;
          v83 = *v4[1].flow_id;
          if (v83)
          {
            *v4[1].flow_id = 0;
            v83[2](v83);
            _Block_release(v83);
          }

          if (v4[1].flow_id[8])
          {
            v84 = *v4[1].flow_id;
            if (v84)
            {
              _Block_release(v84);
            }
          }

          free(v4);
          return v82;
        }
      }
    }
  }

  return result;
}

void nw_endpoint_set_interface(void *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    _nw_endpoint_set_interface(v3, v4);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_set_interface";
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
        v16 = "nw_endpoint_set_interface";
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
          v16 = "nw_endpoint_set_interface";
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
        v16 = "nw_endpoint_set_interface";
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
        v16 = "nw_endpoint_set_interface";
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

void sub_181E6EC98(void *a1, NSObject *a2)
{
  if (a2)
  {
    v4 = swift_unknownObjectRetain();
    if (nw_interface_get_index(v4))
    {
      index = nw_interface_get_index(a2);
      nw_interface_get_name(a2);
      v6 = sub_182AD3158();
      sub_181C8E1E0(index, v6, v7, v16, v17);
      type metadata accessor for Interface.BackingClass();
      v9 = swift_allocObject();
      v10 = v18[0];
      v9[9] = v17[8];
      v9[10] = v10;
      *(v9 + 170) = *(v18 + 10);
      v11 = v17[5];
      v9[5] = v17[4];
      v9[6] = v11;
      v12 = v17[7];
      v9[7] = v17[6];
      v9[8] = v12;
      v13 = v17[1];
      v9[1] = v17[0];
      v9[2] = v13;
      v14 = v17[3];
      v9[3] = v17[2];
      v9[4] = v14;
      v15 = a1;
      v19 = v9;

      sub_181E6BF80(&v19);
      swift_unknownObjectRelease();

      return;
    }

    swift_unknownObjectRelease();
  }

  v8 = a1;
  v19 = 0;
  sub_181E6BF80(&v19);
}

uint64_t sub_181E6EDF4(uint64_t a1)
{
  v3 = *(*v1 + 24);
  if (!v3)
  {
    goto LABEL_7;
  }

  v5 = *(v3 + 32);
  v4 = *(v3 + 40);
  v6 = *(v3 + 48);
  v7 = *(v3 + 56);
  v8 = *(v3 + 64);
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);

  sub_181E6550C(v9);
  if (v8 != 1)
  {
    goto LABEL_9;
  }

  if (!v4)
  {
    if (v9)
    {
      goto LABEL_9;
    }

LABEL_7:

    v12 = 0;
    goto LABEL_10;
  }

  v11 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v11 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!(v11 | v9))
  {
    goto LABEL_7;
  }

LABEL_9:
  type metadata accessor for EndpointCommon.EndpointCommonBacking();
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  *(v12 + 24) = v10;
  *(v12 + 32) = v5;
  *(v12 + 40) = v4;
  *(v12 + 48) = v6;
  *(v12 + 56) = v7;
  *(v12 + 64) = v8;
LABEL_10:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = *(v14 + 112);
    v21[5] = *(v14 + 96);
    v21[6] = v15;
    v21[7] = *(v14 + 128);
    v22 = *(v14 + 144);
    v16 = *(v14 + 48);
    v21[1] = *(v14 + 32);
    v21[2] = v16;
    v17 = *(v14 + 80);
    v21[3] = *(v14 + 64);
    v21[4] = v17;
    v21[0] = *(v14 + 16);
    type metadata accessor for ApplicationServiceEndpoint1.AppSVCBackingClass();
    v18 = swift_allocObject();
    memmove((v18 + 16), (v14 + 16), 0x88uLL);
    sub_181E63A90(v21, v20);

    *v1 = v18;
    v14 = v18;
  }

  *(v14 + 16) = a1;
  *(v14 + 24) = v12;
}

void sub_181E6EF74(char *a1, void *a2)
{
  v3 = &a1[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v4 = a1;
  swift_beginAccess();
  v5 = v3 + 72;
  if (!*(v3 + 9))
  {
    *v5 = *sub_182AD2388();
  }

  swift_beginAccess();
  v6 = *(v3 + 9);
  if (!v6)
  {
    swift_endAccess();
LABEL_13:

    return;
  }

  v7 = *(v6 + 24);
  v8 = v7 + 1;
  v9 = __OFADD__(v7, 1);
  v10 = a2;
  if (!v9)
  {
    v11 = v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v5;
    if (*(*v5 + 16) < v8 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_181ADA6FC(isUniquelyReferenced_nonNull_native, v8);
      v13 = *v5;
    }

    sub_181ADA8CC((v13 + 16), v13 + 40, v11);
    swift_endAccess();

    goto LABEL_13;
  }

  __break(1u);
}

uint64_t ___ZL46nw_browser_app_svc_update_browse_result_lockedP21NWConcrete_nw_browserPU22objcproto11OS_nw_array8NSObject_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  type = nw_endpoint_get_type(v5);
  if (type == (nw_endpoint_type_url|nw_endpoint_type_host))
  {
    v7 = *(a1 + 32);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = ___ZL46nw_browser_app_svc_update_browse_result_lockedP21NWConcrete_nw_browserPU22objcproto11OS_nw_array8NSObject_block_invoke_2;
    aBlock[3] = &unk_1E6A3CCB8;
    v3 = &v11;
    v11 = v5;
    if (v7)
    {
      if (!_nw_array_apply(v7, aBlock))
      {
        goto LABEL_8;
      }
    }
  }

  v8 = *(a1 + 32);
  if (v8 && v5)
  {
    _nw_array_append(v8, v5);
  }

  if (type == (nw_endpoint_type_url|nw_endpoint_type_host))
  {
LABEL_8:
  }

  return 1;
}

BOOL ___ZL46nw_browser_app_svc_update_browse_result_lockedP21NWConcrete_nw_browserPU22objcproto11OS_nw_array8NSObject_block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  *uu1 = 0;
  v10 = 0;
  *uu2 = 0;
  v8 = 0;
  nw_endpoint_get_service_identifier(v4, uu1);
  nw_endpoint_get_service_identifier(*(a1 + 32), uu2);
  v5 = uuid_compare(uu1, uu2) != 0;

  return v5;
}

uint64_t ___ZL46nw_browser_app_svc_update_browse_result_lockedP21NWConcrete_nw_browserPU22objcproto11OS_nw_array8NSObject_block_invoke_117(void **a1, uint64_t a2, void *a3)
{
  v38[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  endpoint = nw_browse_result_get_endpoint(v4);
  v38[0] = 0;
  v38[1] = 0;
  nw_endpoint_get_service_identifier(endpoint, v38);
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v38];
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v7 = a1[4];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___ZL46nw_browser_app_svc_update_browse_result_lockedP21NWConcrete_nw_browserPU22objcproto11OS_nw_array8NSObject_block_invoke_2_119;
  aBlock[3] = &unk_1E6A35EA8;
  v8 = endpoint;
  v19 = v8;
  v9 = v6;
  v20 = v9;
  v21 = a1[5];
  v25 = &v26;
  v22 = a1[6];
  v23 = a1[7];
  v10 = v4;
  v24 = v10;
  if (v7 && !_nw_array_apply(v7, aBlock))
  {
    if (!nw_parameters_get_logging_disabled(*(a1[5] + 5)))
    {
      if (__nwlog_browser_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_browser_log::onceToken, &__block_literal_global_20_47423);
      }

      v15 = gbrowserLogObj;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v16 = *(a1[5] + 48);
        *buf = 136446722;
        v31 = "nw_browser_app_svc_update_browse_result_locked_block_invoke";
        v32 = 1024;
        v33 = v16;
        v34 = 2112;
        v35 = v8;
        _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_DEBUG, "%{public}s [B%u] browse_result_matched existing endpoint: %@", buf, 0x1Cu);
      }
    }
  }

  else
  {
    nw_parallel_array_append(a1[7], v10, 0);
    if (!nw_parameters_get_logging_disabled(*(a1[5] + 5)))
    {
      changes = nw_browse_result_get_changes(v10, 0);
      v12 = nw_browse_result_get_change_description(changes);
      if (!nw_parameters_get_logging_disabled(*(a1[5] + 5)))
      {
        if (__nwlog_browser_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_browser_log::onceToken, &__block_literal_global_20_47423);
        }

        v13 = gbrowserLogObj;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = *(a1[5] + 48);
          *buf = 136446978;
          v31 = "nw_browser_app_svc_update_browse_result_locked_block_invoke";
          v32 = 1024;
          v33 = v14;
          v34 = 2112;
          v35 = v10;
          v36 = 2082;
          v37 = v12;
          _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_INFO, "%{public}s [B%u] browse_result_removed: (%@), %{public}s", buf, 0x26u);
        }
      }

      if (v12)
      {
        free(v12);
      }
    }
  }

  _Block_object_dispose(&v26, 8);
  return 1;
}

void sub_181E6F600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, void *a9, void *a10, void *a11, void *a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id nw_browse_result_get_endpoint(void *a1)
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
  v16 = "nw_browse_result_get_endpoint";
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
        v16 = "nw_browse_result_get_endpoint";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null result", buf, 0xCu);
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
          v16 = "nw_browse_result_get_endpoint";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null result, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_browse_result_get_endpoint";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null result, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_browse_result_get_endpoint";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null result, backtrace limit exceeded", buf, 0xCu);
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

uint64_t ___ZL46nw_browser_app_svc_update_browse_result_lockedP21NWConcrete_nw_browserPU22objcproto11OS_nw_array8NSObject_block_invoke_2_119(uint64_t a1, uint64_t a2, void *a3)
{
  v37[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v37[0] = 0;
  v37[1] = 0;
  nw_endpoint_get_service_identifier(v5, v37);
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v37];
  if (nw_endpoint_get_type(*(a1 + 32)) == (nw_endpoint_type_url|nw_endpoint_type_host) && nw_endpoint_get_type(v5) == (nw_endpoint_type_url|nw_endpoint_type_host))
  {
    is_equal = [*(a1 + 40) isEqual:v6];
    if (!nw_parameters_get_logging_disabled(*(*(a1 + 48) + 40)))
    {
      if (__nwlog_browser_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_browser_log::onceToken, &__block_literal_global_20_47423);
      }

      v8 = gbrowserLogObj;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v9 = *(*(a1 + 48) + 192);
        v10 = *(a1 + 32);
        v27 = 136447234;
        v28 = "nw_browser_app_svc_update_browse_result_locked_block_invoke_2";
        v29 = 1024;
        v30 = v9;
        v31 = 2112;
        v32 = v5;
        v33 = 2112;
        v34 = v10;
        v35 = 1024;
        LODWORD(v36) = is_equal;
        _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEBUG, "%{public}s [B%u] appsvc new:%@ old:%@ match:%{BOOL}d", &v27, 0x2Cu);
      }

      goto LABEL_15;
    }
  }

  else
  {
    type = nw_endpoint_get_type(*(a1 + 32));
    if (type != nw_endpoint_get_type(v5))
    {
      if (!nw_parameters_get_logging_disabled(*(*(a1 + 48) + 40)))
      {
        if (__nwlog_browser_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_browser_log::onceToken, &__block_literal_global_20_47423);
        }

        v14 = gbrowserLogObj;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          v24 = *(*(a1 + 48) + 192);
          v25 = *(a1 + 32);
          v27 = 136446978;
          v28 = "nw_browser_app_svc_update_browse_result_locked_block_invoke";
          v29 = 1024;
          v30 = v24;
          v31 = 2112;
          v32 = v5;
          v33 = 2112;
          v34 = v25;
          _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEBUG, "%{public}s [B%u] new:%@ old:%@ no match", &v27, 0x26u);
        }

        v23 = 1;
        goto LABEL_39;
      }

      goto LABEL_41;
    }

    is_equal = nw_endpoint_is_equal(*(a1 + 32), v5, 0);
    if (!nw_parameters_get_logging_disabled(*(*(a1 + 48) + 40)))
    {
      if (__nwlog_browser_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_browser_log::onceToken, &__block_literal_global_20_47423);
      }

      v8 = gbrowserLogObj;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v12 = *(*(a1 + 48) + 192);
        v13 = *(a1 + 32);
        v27 = 136447234;
        v28 = "nw_browser_app_svc_update_browse_result_locked_block_invoke";
        v29 = 1024;
        v30 = v12;
        v31 = 2112;
        v32 = v5;
        v33 = 2112;
        v34 = v13;
        v35 = 1024;
        LODWORD(v36) = is_equal;
        _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEBUG, "%{public}s [B%u] non-appsvc new:%@ old:%@ match:%{BOOL}d", &v27, 0x2Cu);
      }

LABEL_15:

      if (is_equal)
      {
        goto LABEL_16;
      }

LABEL_41:
      v23 = 1;
      goto LABEL_42;
    }
  }

  if (!is_equal)
  {
    goto LABEL_41;
  }

LABEL_16:
  *(*(*(a1 + 80) + 8) + 24) = a2;
  v14 = nw_browse_result_create(v5);
  v15 = nw_endpoint_copy_txt_record(v5);
  v16 = v15;
  if (v15 && v15[2].isa >= 2)
  {
    nw_browse_result_set_txt_record_object(v14, v15);
  }

  v17 = *(a1 + 56);
  if (v17 && v14)
  {
    _nw_array_append(v17, v14);
  }

  if ((nw_endpoint_is_equal(*(a1 + 32), v5, 30) & 1) == 0)
  {
    nw_parallel_array_append(*(a1 + 64), *(a1 + 72), v14);
    if (!nw_parameters_get_logging_disabled(*(*(a1 + 48) + 40)))
    {
      changes = nw_browse_result_get_changes(*(a1 + 72), v14);
      v19 = nw_browse_result_get_change_description(changes);
      if (!nw_parameters_get_logging_disabled(*(*(a1 + 48) + 40)))
      {
        if (__nwlog_browser_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_browser_log::onceToken, &__block_literal_global_20_47423);
        }

        v20 = gbrowserLogObj;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v21 = *(*(a1 + 48) + 192);
          v22 = *(a1 + 72);
          v27 = 136447234;
          v28 = "nw_browser_app_svc_update_browse_result_locked_block_invoke";
          v29 = 1024;
          v30 = v21;
          v31 = 2112;
          v32 = v22;
          v33 = 2112;
          v34 = v14;
          v35 = 2082;
          v36 = v19;
          _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_INFO, "%{public}s [B%u] browse_result_changed: (%@ -> %@), %{public}s", &v27, 0x30u);
        }
      }

      if (v19)
      {
        free(v19);
      }
    }
  }

  v23 = 0;
LABEL_39:

LABEL_42:
  return v23;
}

NWConcrete_nw_browse_result *nw_browse_result_create(void *a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = a1;
  if (v2)
  {
    v3 = [NWConcrete_nw_browse_result alloc];
    v4 = v2;
    if (!v3)
    {
LABEL_9:

      goto LABEL_10;
    }

    v31.receiver = v3;
    v31.super_class = NWConcrete_nw_browse_result;
    v5 = objc_msgSendSuper2(&v31, sel_init);
    v6 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a1);
      v7 = _nw_array_create();
      v8 = v6[2];
      v6[2] = v7;

      v9 = v6[3];
      v6[3] = 0;

      v10 = nw_endpoint_copy_interface(v4);
      if (v10)
      {
        v11 = v6[2];
        if (v11)
        {
          _nw_array_append(v11, v10);
        }

        nw_endpoint_set_interface(v4, 0);
      }

      v3 = v6;

      goto LABEL_9;
    }

    v17 = __nwlog_obj();
    *buf = 136446210;
    v33 = "[NWConcrete_nw_browse_result initWithEndpoint:]";
    v18 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v29 = 0;
    if (__nwlog_fault(v18, &type, &v29))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v19 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v19, type))
        {
          *buf = 136446210;
          v33 = "[NWConcrete_nw_browse_result initWithEndpoint:]";
          _os_log_impl(&dword_181A37000, v19, v20, "%{public}s [super init] failed", buf, 0xCu);
        }
      }

      else if (v29 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v19 = __nwlog_obj();
        v25 = type;
        v26 = os_log_type_enabled(v19, type);
        if (backtrace_string)
        {
          if (v26)
          {
            *buf = 136446466;
            v33 = "[NWConcrete_nw_browse_result initWithEndpoint:]";
            v34 = 2082;
            v35 = backtrace_string;
            _os_log_impl(&dword_181A37000, v19, v25, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_46;
        }

        if (v26)
        {
          *buf = 136446210;
          v33 = "[NWConcrete_nw_browse_result initWithEndpoint:]";
          _os_log_impl(&dword_181A37000, v19, v25, "%{public}s [super init] failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v19 = __nwlog_obj();
        v28 = type;
        if (os_log_type_enabled(v19, type))
        {
          *buf = 136446210;
          v33 = "[NWConcrete_nw_browse_result initWithEndpoint:]";
          _os_log_impl(&dword_181A37000, v19, v28, "%{public}s [super init] failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_46:
    if (v18)
    {
      free(v18);
    }

    v3 = 0;
    goto LABEL_9;
  }

  v13 = __nwlog_obj();
  *buf = 136446210;
  v33 = "nw_browse_result_create";
  v14 = _os_log_send_and_compose_impl();

  LOBYTE(v31.receiver) = 16;
  type = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v14, &v31, &type))
  {
    if (LOBYTE(v31.receiver) == 17)
    {
      v15 = __nwlog_obj();
      receiver = v31.receiver;
      if (os_log_type_enabled(v15, v31.receiver))
      {
        *buf = 136446210;
        v33 = "nw_browse_result_create";
        _os_log_impl(&dword_181A37000, v15, receiver, "%{public}s called with null _endpoint", buf, 0xCu);
      }
    }

    else if (type == OS_LOG_TYPE_INFO)
    {
      v21 = __nw_create_backtrace_string();
      v15 = __nwlog_obj();
      v22 = v31.receiver;
      v23 = os_log_type_enabled(v15, v31.receiver);
      if (v21)
      {
        if (v23)
        {
          *buf = 136446466;
          v33 = "nw_browse_result_create";
          v34 = 2082;
          v35 = v21;
          _os_log_impl(&dword_181A37000, v15, v22, "%{public}s called with null _endpoint, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v21);
        goto LABEL_40;
      }

      if (v23)
      {
        *buf = 136446210;
        v33 = "nw_browse_result_create";
        _os_log_impl(&dword_181A37000, v15, v22, "%{public}s called with null _endpoint, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v15 = __nwlog_obj();
      v27 = v31.receiver;
      if (os_log_type_enabled(v15, v31.receiver))
      {
        *buf = 136446210;
        v33 = "nw_browse_result_create";
        _os_log_impl(&dword_181A37000, v15, v27, "%{public}s called with null _endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_40:
  if (v14)
  {
    free(v14);
  }

  v3 = 0;
LABEL_10:

  return v3;
}

void nw_browse_result_set_txt_record_object(void *a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    if (*(v3 + 52))
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v17 = "nw_browse_result_set_txt_record_object";
        _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_ERROR, "%{public}s browse_result was marked immutable", buf, 0xCu);
      }
    }

    else
    {
      objc_storeStrong(v3 + 3, a2);
    }

    goto LABEL_7;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_browse_result_set_txt_record_object";
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
        v17 = "nw_browse_result_set_txt_record_object";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null result", buf, 0xCu);
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
          v17 = "nw_browse_result_set_txt_record_object";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null result, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_24;
      }

      if (v12)
      {
        *buf = 136446210;
        v17 = "nw_browse_result_set_txt_record_object";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null result, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v17 = "nw_browse_result_set_txt_record_object";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null result, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_24:
  if (v7)
  {
    free(v7);
  }

LABEL_7:
}

BOOL sub_181E70734(uint64_t *a1, int *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *v2;
  v6 = *(*v2 + 132);
  v7 = *(*a1 + 132);
  v8 = v7 == v6;
  v9 = *(*v2 + 24);
  *&v23 = *(*v2 + 16);
  *(&v23 + 1) = v9;
  v10 = *(v3 + 24);
  *&v22 = *(v3 + 16);
  *(&v22 + 1) = v10;
  v21 = v4;

  v11 = sub_181B0AD48(&v22, &v21);

  if (!v11 || (*(v5 + 48) != *(v3 + 48) || *(v5 + 56) != *(v3 + 56)) && (sub_182AD4268() & 1) == 0)
  {
    return 0;
  }

  v12 = *(v5 + 64);
  v22 = *(v3 + 64);
  v23 = v12;
  if (!_s7Network10SystemUUIDV2eeoiySbAC_ACtFZ_0(&v23, &v22))
  {
    return 0;
  }

  v13 = *(v5 + 88);
  v14 = *(v3 + 88);
  if (v13)
  {
    if (!v14 || (*(v5 + 80) != *(v3 + 80) || v13 != v14) && (sub_182AD4268() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  v15 = *(v5 + 104);
  v16 = *(v3 + 104);
  if (v15)
  {
    if (!v16 || (*(v5 + 96) != *(v3 + 96) || v15 != v16) && (sub_182AD4268() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  if (*(v5 + 128) != *(v3 + 128))
  {
    return 0;
  }

  v17 = *(v5 + 120);
  v18 = *(v3 + 120);
  if (v17)
  {
    if (v18)
    {
      if (*(v5 + 112) != *(v3 + 112) || v17 != v18)
      {
        return sub_182AD4268() & (v7 == v6);
      }

      return v8;
    }

    return 0;
  }

  return !v18 && v7 == v6;
}

BOOL nw_txt_record_is_equal(nw_txt_record_t left, nw_txt_record_t right)
{
  v3 = left;
  v4 = right;
  v5 = v4;
  if (v3 == v4)
  {
    goto LABEL_16;
  }

  v6 = 0;
  if (v3 && v4)
  {
    if (v3 <= v4)
    {
      v7 = v4;
    }

    else
    {
      v7 = v3;
    }

    if (v3 <= v4)
    {
      v8 = v3;
    }

    else
    {
      v8 = v4;
    }

    os_unfair_lock_lock(v7 + 8);
    os_unfair_lock_lock(v8 + 8);
    isa = v3[2].isa;
    if (isa != v5[2].isa)
    {
LABEL_14:
      os_unfair_lock_unlock(&v5[4]);
      os_unfair_lock_unlock(&v3[4]);
      v6 = 0;
      goto LABEL_17;
    }

    if (memcmp(v3[1].isa, v5[1].isa, isa))
    {
      if (BYTE4(v3[4].isa) & 1) != 0 && (BYTE4(v5[4].isa))
      {
        v16 = 0;
        v17 = &v16;
        v18 = 0x2020000000;
        v19 = 1;
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __nw_txt_record_is_equal_block_invoke;
        v13[3] = &unk_1E6A36058;
        v11 = v5;
        v14 = v11;
        v15 = &v16;
        v12 = _Block_copy(v13);
        nw_txt_record_apply_internal_locked(v3, v12, 0);
        os_unfair_lock_unlock(v11 + 8);
        os_unfair_lock_unlock(&v3[4]);
        v6 = *(v17 + 24);

        _Block_object_dispose(&v16, 8);
        goto LABEL_17;
      }

      goto LABEL_14;
    }

    os_unfair_lock_unlock(&v5[4]);
    os_unfair_lock_unlock(&v3[4]);
LABEL_16:
    v6 = 1;
  }

LABEL_17:

  return v6 & 1;
}

void sub_181E70AB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void nw_parallel_array_append(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v22 = a3;
  object = a2;
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_parallel_array_append";
    v7 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v20 = 0;
    if (!__nwlog_fault(v7, &type, &v20))
    {
      goto LABEL_45;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (!os_log_type_enabled(v13, type))
      {
        goto LABEL_45;
      }

      *buf = 136446210;
      v25 = "nw_parallel_array_append";
      v15 = "%{public}s called with null parray";
    }

    else if (v20 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v14 = type;
      v17 = os_log_type_enabled(v13, type);
      if (backtrace_string)
      {
        if (v17)
        {
          *buf = 136446466;
          v25 = "nw_parallel_array_append";
          v26 = 2082;
          v27 = backtrace_string;
          _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null parray, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_45:
        if (v7)
        {
          goto LABEL_6;
        }

        return;
      }

      if (!v17)
      {
        goto LABEL_45;
      }

      *buf = 136446210;
      v25 = "nw_parallel_array_append";
      v15 = "%{public}s called with null parray, no backtrace";
    }

    else
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (!os_log_type_enabled(v13, type))
      {
        goto LABEL_45;
      }

      *buf = 136446210;
      v25 = "nw_parallel_array_append";
      v15 = "%{public}s called with null parray, backtrace limit exceeded";
    }

LABEL_44:
    _os_log_impl(&dword_181A37000, v13, v14, v15, buf, 0xCu);
    goto LABEL_45;
  }

  v4 = (a1 + 16);
  v5 = (a1 + 40);
  if (*(a1 + 24) - *(a1 + 16) != *(a1 + 48) - *(a1 + 40))
  {
    __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_parallel_array_append";
    v7 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v20 = 0;
    if (!__nwlog_fault(v7, &type, &v20))
    {
      goto LABEL_45;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (!os_log_type_enabled(v13, type))
      {
        goto LABEL_45;
      }

      *buf = 136446210;
      v25 = "nw_parallel_array_append";
      v15 = "%{public}s called with null (parray->vector1.size() == parray->vector2.size())";
    }

    else if (v20 == 1)
    {
      v18 = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v14 = type;
      v19 = os_log_type_enabled(v13, type);
      if (v18)
      {
        if (v19)
        {
          *buf = 136446466;
          v25 = "nw_parallel_array_append";
          v26 = 2082;
          v27 = v18;
          _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null (parray->vector1.size() == parray->vector2.size()), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v18);
        if (v7)
        {
          goto LABEL_6;
        }

        return;
      }

      if (!v19)
      {
        goto LABEL_45;
      }

      *buf = 136446210;
      v25 = "nw_parallel_array_append";
      v15 = "%{public}s called with null (parray->vector1.size() == parray->vector2.size()), no backtrace";
    }

    else
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (!os_log_type_enabled(v13, type))
      {
        goto LABEL_45;
      }

      *buf = 136446210;
      v25 = "nw_parallel_array_append";
      v15 = "%{public}s called with null (parray->vector1.size() == parray->vector2.size()), backtrace limit exceeded";
    }

    goto LABEL_44;
  }

  if (nw_parallel_array_get_count(a1) > 0xFFFFFFFFFFFFFFFDLL || (v6 = a1 + 64, LOBYTE(v6) = atomic_load_explicit((a1 + 64), memory_order_acquire), v6))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
    *buf = 136446210;
    v25 = "nw_parallel_array_append";
    v7 = _os_log_send_and_compose_impl();
    if (!__nwlog_should_abort(v7))
    {
LABEL_6:
      free(v7);
      return;
    }

    __break(1u);
  }

  else
  {
    v8 = *(a1 + 24);
    if (v8 >= *(a1 + 32))
    {
      v10 = std::vector<nw_object_wrapper_t>::__emplace_back_slow_path<nw_object *&>(v4, &object);
    }

    else
    {
      v9 = object;
      if (object)
      {
        v9 = os_retain(object);
      }

      *v8 = v9;
      v10 = v8 + 1;
    }

    *(a1 + 24) = v10;
    v11 = *(a1 + 48);
    if (v11 >= *(a1 + 56))
    {
      *(a1 + 48) = std::vector<nw_object_wrapper_t>::__emplace_back_slow_path<nw_object *&>(v5, &v22);
    }

    else
    {
      v12 = v22;
      if (v22)
      {
        v12 = os_retain(v22);
      }

      *v11 = v12;
      *(a1 + 48) = v11 + 1;
    }
  }
}

void *std::vector<nw_object_wrapper_t>::__emplace_back_slow_path<nw_object *&>(unint64_t *a1, void **a2)
{
  v2 = a1[1] - *a1;
  v3 = v2 >> 3;
  v4 = (v2 >> 3) + 1;
  if (v4 >> 61)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 2 > v4)
  {
    v4 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (!(v7 >> 61))
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v8 = (8 * v3);
  v9 = *a2;
  if (*a2)
  {
    v9 = os_retain(v9);
  }

  v10 = *a1;
  v11 = a1[1];
  v12 = v8 - &v11[-*a1];
  *v8 = v9;
  v13 = v8 + 1;
  v14 = v11 - v10;
  if (v11 != v10)
  {
    v15 = v14 - 8;
    v16 = v10;
    v17 = v12;
    if ((v14 - 8) >= 0x98)
    {
      if (v12 >= v10 + (v15 & 0xFFFFFFFFFFFFFFF8) + 8 || (v16 = v10, v17 = v12, v10 >= v2 + (v15 & 0xFFFFFFFFFFFFFFF8) - v14 + 8))
      {
        v18 = v14 >> 3;
        v19 = (v15 >> 3) + 1;
        v20 = v19 & 0x3FFFFFFFFFFFFFFCLL;
        v16 = &v10[v20];
        v21 = (-8 * v18 + 8 * v3 + 16);
        v22 = v10;
        v23 = v19 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v24 = *(v22 + 1);
          *(v21 - 1) = *v22;
          *v21 = v24;
          *v22 = 0uLL;
          *(v22 + 1) = 0uLL;
          v22 += 4;
          v21 += 2;
          v23 -= 4;
        }

        while (v23);
        if (v19 == (v19 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_23;
        }

        v17 = (v12 + v20 * 8);
      }
    }

    do
    {
      *v17++ = *v16;
      *v16++ = 0;
    }

    while (v16 != v11);
    do
    {
LABEL_23:
      if (*v10)
      {
        os_release(*v10);
      }

      *v10++ = 0;
    }

    while (v10 != v11);
    v10 = *a1;
  }

  *a1 = v12;
  a1[1] = v13;
  a1[2] = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v13;
}

nw_browse_result_change_t nw_browse_result_get_changes(nw_browse_result_t old_result, nw_browse_result_t new_result)
{
  v3 = old_result;
  v4 = new_result;
  if (v3 | v4)
  {
    if (v3 || !v4)
    {
      if (!v3 || v4)
      {
        v6 = v4;
        v7 = v3;
        v8 = v6;
        v9 = v6;
        interfaces_count = nw_browse_result_get_interfaces_count(v7);
        v11 = nw_browse_result_get_interfaces_count(v9);
        if (interfaces_count >= v11)
        {
          if (interfaces_count > v11)
          {
            v12 = 16;
          }

          else
          {
            v13 = nw_browse_result_copy_interfaces(v7);
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 3221225472;
            aBlock[2] = __nw_browse_result_get_changes_block_invoke;
            aBlock[3] = &unk_1E6A3CCB8;
            v14 = v9;
            v23 = v14;
            if (v13)
            {
              if (_nw_array_apply(v13, aBlock))
              {
                v12 = 0;
              }

              else
              {
                v12 = 24;
              }
            }

            else
            {
              v12 = 0;
            }
          }
        }

        else
        {
          v12 = 8;
        }

        v15 = nw_browse_result_copy_txt_record_object(v7);
        v16 = nw_browse_result_copy_txt_record_object(v9);
        is_equal = nw_txt_record_is_equal(v15, v16);
        endpoint = nw_browse_result_get_endpoint(v7);
        type = nw_endpoint_get_type(endpoint);
        v20 = v12 | 0x20;
        if (is_equal)
        {
          v20 = v12;
        }

        if (type == (nw_endpoint_type_url|nw_endpoint_type_host))
        {
          v20 |= 0x22uLL;
        }

        if (v20 <= 1)
        {
          v5 = 1;
        }

        else
        {
          v5 = v20;
        }

        v4 = v8;
      }

      else
      {
        v5 = 4;
      }
    }

    else
    {
      v5 = 2;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

uint64_t nw_browse_result_get_change_description(uint64_t a1)
{
  v128 = *MEMORY[0x1E69E9840];
  v2 = malloc_type_calloc(0x6BuLL, 1uLL, 0x50D88627uLL);
  if (v2)
  {
    if (a1)
    {
      if ((a1 & 1) == 0)
      {
        if ((a1 & 2) != 0)
        {
          goto LABEL_44;
        }

LABEL_10:
        v6 = 0;
        if ((a1 & 4) != 0)
        {
          goto LABEL_67;
        }

LABEL_11:
        if ((a1 & 8) != 0)
        {
          goto LABEL_102;
        }

LABEL_12:
        if ((a1 & 0x10) != 0)
        {
          goto LABEL_137;
        }

LABEL_13:
        if ((a1 & 0x20) == 0)
        {
          goto LABEL_206;
        }

        goto LABEL_172;
      }

LABEL_28:
      v16 = 0;
      v17 = 107;
      while (1)
      {
        v18 = &v2[v16];
        if (!v2[v16])
        {
          break;
        }

        ++v16;
        if (!--v17)
        {
          goto LABEL_38;
        }
      }

      if (v17 >= 2)
      {
        v19 = v17 - 2;
        v20 = 105 - v16;
        if (v20 >= 0xB)
        {
          v20 = 11;
        }

        memcpy(v18, "<identical>", v20 + 1);
        if (v19 > 0xA)
        {
          goto LABEL_38;
        }

        v18 = v2 + 106;
      }

      *v18 = 0;
LABEL_38:
      if (a1 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v21 = gLogObj;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v123 = "nw_browse_result_get_change_description";
          v124 = 2048;
          v125 = a1;
          _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_ERROR, "%{public}s unexpected value for change %llu", buf, 0x16u);
        }
      }

      return v2;
    }

LABEL_17:
    v9 = 0;
    v10 = 107;
    while (1)
    {
      v11 = &v2[v9];
      if (!v2[v9])
      {
        break;
      }

      ++v9;
      if (!--v10)
      {
        return v2;
      }
    }

    if (v10 < 2)
    {
      goto LABEL_217;
    }

    v12 = v10 - 2;
    v13 = 105 - v9;
    if (v13 >= 9)
    {
      v13 = 9;
    }

    memcpy(v11, "<invalid>", v13 + 1);
    if (v12 > 8)
    {
      return v2;
    }

    goto LABEL_216;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v3 = gLogObj;
  os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  v123 = "nw_browse_result_get_change_description";
  v124 = 2048;
  v125 = 107;
  v126 = 2048;
  v127 = 1;
  v4 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v4);
  if (result)
  {
    goto LABEL_247;
  }

  free(v4);
  if (!a1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    *buf = 136446210;
    v123 = "_strict_strlcat";
    v8 = _os_log_send_and_compose_impl();

    result = __nwlog_should_abort(v8);
    if (result)
    {
      goto LABEL_247;
    }

    free(v8);
    goto LABEL_17;
  }

  if (a1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v14 = gLogObj;
    os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    *buf = 136446210;
    v123 = "_strict_strlcat";
    v15 = _os_log_send_and_compose_impl();

    result = __nwlog_should_abort(v15);
    if (result)
    {
      goto LABEL_247;
    }

    free(v15);
    goto LABEL_28;
  }

  if ((a1 & 2) == 0)
  {
    goto LABEL_10;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v22 = gLogObj;
  os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
  *buf = 136446210;
  v123 = "_strict_strlcat";
  v23 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v23);
  if (result)
  {
    goto LABEL_247;
  }

  free(v23);
LABEL_44:
  v24 = 0;
  v25 = 107;
  while (1)
  {
    v26 = &v2[v24];
    if (!v2[v24])
    {
      break;
    }

    ++v24;
    if (!--v25)
    {
      goto LABEL_55;
    }
  }

  if (v25 < 2)
  {
    goto LABEL_54;
  }

  v27 = v25 - 2;
  if (v24 == 105)
  {
    v28 = 1;
  }

  else
  {
    v28 = 2;
  }

  memcpy(v26, "<", v28);
  if (!v27)
  {
    v26 = v2 + 106;
LABEL_54:
    *v26 = 0;
  }

LABEL_55:
  if (!v2)
  {
    v104 = __nwlog_obj();
    os_log_type_enabled(v104, OS_LOG_TYPE_ERROR);
    *buf = 136446210;
    v123 = "_strict_strlcat";
    v105 = _os_log_send_and_compose_impl();

    result = __nwlog_should_abort(v105);
    if (result)
    {
      goto LABEL_247;
    }

    free(v105);
  }

  v29 = 0;
  v30 = 107;
  while (1)
  {
    v31 = &v2[v29];
    if (!v2[v29])
    {
      break;
    }

    ++v29;
    if (!--v30)
    {
      goto LABEL_66;
    }
  }

  if (v30 < 2)
  {
    goto LABEL_65;
  }

  v32 = v30 - 2;
  v33 = 105 - v29;
  if (v33 >= 0xC)
  {
    v33 = 12;
  }

  memcpy(v31, "result_added", v33 + 1);
  if (v32 <= 0xB)
  {
    v31 = v2 + 106;
LABEL_65:
    *v31 = 0;
  }

LABEL_66:
  v6 = 1;
  if ((a1 & 4) == 0)
  {
    goto LABEL_11;
  }

LABEL_67:
  if ((v6 & 1) == 0)
  {
    if (!v2)
    {
      v108 = __nwlog_obj();
      os_log_type_enabled(v108, OS_LOG_TYPE_ERROR);
      *buf = 136446210;
      v123 = "_strict_strlcat";
      v109 = _os_log_send_and_compose_impl();

      result = __nwlog_should_abort(v109);
      if (result)
      {
        goto LABEL_247;
      }

      free(v109);
    }

    v37 = 0;
    v38 = 107;
    while (1)
    {
      v36 = &v2[v37];
      if (!v2[v37])
      {
        break;
      }

      ++v37;
      if (!--v38)
      {
        goto LABEL_90;
      }
    }

    if (v38 < 2)
    {
      goto LABEL_89;
    }

    v41 = v38 - 2;
    if (v37 == 105)
    {
      v42 = 1;
    }

    else
    {
      v42 = 2;
    }

    memcpy(v36, "<", v42);
    if (v41)
    {
      goto LABEL_90;
    }

LABEL_88:
    v36 = v2 + 106;
LABEL_89:
    *v36 = 0;
    goto LABEL_90;
  }

  if (!v2)
  {
    v106 = __nwlog_obj();
    os_log_type_enabled(v106, OS_LOG_TYPE_ERROR);
    *buf = 136446210;
    v123 = "_strict_strlcat";
    v107 = _os_log_send_and_compose_impl();

    result = __nwlog_should_abort(v107);
    if (result)
    {
      goto LABEL_247;
    }

    free(v107);
  }

  v34 = 0;
  v35 = 107;
  while (1)
  {
    v36 = &v2[v34];
    if (!v2[v34])
    {
      break;
    }

    ++v34;
    if (!--v35)
    {
      goto LABEL_90;
    }
  }

  if (v35 < 2)
  {
    goto LABEL_89;
  }

  v39 = v35 - 2;
  v40 = 105 - v34;
  if (v40 >= 2)
  {
    v40 = 2;
  }

  memcpy(v36, ", ", v40 + 1);
  if (v39 <= 1)
  {
    goto LABEL_88;
  }

LABEL_90:
  if (!v2)
  {
    v96 = __nwlog_obj();
    os_log_type_enabled(v96, OS_LOG_TYPE_ERROR);
    *buf = 136446210;
    v123 = "_strict_strlcat";
    v97 = _os_log_send_and_compose_impl();

    result = __nwlog_should_abort(v97);
    if (result)
    {
      goto LABEL_247;
    }

    free(v97);
  }

  v43 = 0;
  v44 = 107;
  while (1)
  {
    v45 = &v2[v43];
    if (!v2[v43])
    {
      break;
    }

    ++v43;
    if (!--v44)
    {
      goto LABEL_101;
    }
  }

  if (v44 < 2)
  {
    goto LABEL_100;
  }

  v46 = v44 - 2;
  v47 = 105 - v43;
  if (v47 >= 0xE)
  {
    v47 = 14;
  }

  memcpy(v45, "result_removed", v47 + 1);
  if (v46 <= 0xD)
  {
    v45 = v2 + 106;
LABEL_100:
    *v45 = 0;
  }

LABEL_101:
  v6 = 1;
  if ((a1 & 8) == 0)
  {
    goto LABEL_12;
  }

LABEL_102:
  if ((v6 & 1) == 0)
  {
    if (!v2)
    {
      v112 = __nwlog_obj();
      os_log_type_enabled(v112, OS_LOG_TYPE_ERROR);
      *buf = 136446210;
      v123 = "_strict_strlcat";
      v113 = _os_log_send_and_compose_impl();

      result = __nwlog_should_abort(v113);
      if (result)
      {
        goto LABEL_247;
      }

      free(v113);
    }

    v51 = 0;
    v52 = 107;
    while (1)
    {
      v50 = &v2[v51];
      if (!v2[v51])
      {
        break;
      }

      ++v51;
      if (!--v52)
      {
        goto LABEL_125;
      }
    }

    if (v52 < 2)
    {
      goto LABEL_124;
    }

    v55 = v52 - 2;
    if (v51 == 105)
    {
      v56 = 1;
    }

    else
    {
      v56 = 2;
    }

    memcpy(v50, "<", v56);
    if (v55)
    {
      goto LABEL_125;
    }

LABEL_123:
    v50 = v2 + 106;
LABEL_124:
    *v50 = 0;
    goto LABEL_125;
  }

  if (!v2)
  {
    v110 = __nwlog_obj();
    os_log_type_enabled(v110, OS_LOG_TYPE_ERROR);
    *buf = 136446210;
    v123 = "_strict_strlcat";
    v111 = _os_log_send_and_compose_impl();

    result = __nwlog_should_abort(v111);
    if (result)
    {
      goto LABEL_247;
    }

    free(v111);
  }

  v48 = 0;
  v49 = 107;
  while (1)
  {
    v50 = &v2[v48];
    if (!v2[v48])
    {
      break;
    }

    ++v48;
    if (!--v49)
    {
      goto LABEL_125;
    }
  }

  if (v49 < 2)
  {
    goto LABEL_124;
  }

  v53 = v49 - 2;
  v54 = 105 - v48;
  if (v54 >= 2)
  {
    v54 = 2;
  }

  memcpy(v50, ", ", v54 + 1);
  if (v53 <= 1)
  {
    goto LABEL_123;
  }

LABEL_125:
  if (!v2)
  {
    v98 = __nwlog_obj();
    os_log_type_enabled(v98, OS_LOG_TYPE_ERROR);
    *buf = 136446210;
    v123 = "_strict_strlcat";
    v99 = _os_log_send_and_compose_impl();

    result = __nwlog_should_abort(v99);
    if (result)
    {
      goto LABEL_247;
    }

    free(v99);
  }

  v57 = 0;
  v58 = 107;
  while (1)
  {
    v59 = &v2[v57];
    if (!v2[v57])
    {
      break;
    }

    ++v57;
    if (!--v58)
    {
      goto LABEL_136;
    }
  }

  if (v58 < 2)
  {
    goto LABEL_135;
  }

  v60 = v58 - 2;
  v61 = 105 - v57;
  if (v61 >= 0xF)
  {
    v61 = 15;
  }

  memcpy(v59, "interface_added", v61 + 1);
  if (v60 <= 0xE)
  {
    v59 = v2 + 106;
LABEL_135:
    *v59 = 0;
  }

LABEL_136:
  v6 = 1;
  if ((a1 & 0x10) == 0)
  {
    goto LABEL_13;
  }

LABEL_137:
  if ((v6 & 1) == 0)
  {
    if (!v2)
    {
      v116 = __nwlog_obj();
      os_log_type_enabled(v116, OS_LOG_TYPE_ERROR);
      *buf = 136446210;
      v123 = "_strict_strlcat";
      v117 = _os_log_send_and_compose_impl();

      result = __nwlog_should_abort(v117);
      if (result)
      {
        goto LABEL_247;
      }

      free(v117);
    }

    v65 = 0;
    v66 = 107;
    while (1)
    {
      v64 = &v2[v65];
      if (!v2[v65])
      {
        break;
      }

      ++v65;
      if (!--v66)
      {
        goto LABEL_160;
      }
    }

    if (v66 < 2)
    {
      goto LABEL_159;
    }

    v69 = v66 - 2;
    if (v65 == 105)
    {
      v70 = 1;
    }

    else
    {
      v70 = 2;
    }

    memcpy(v64, "<", v70);
    if (v69)
    {
      goto LABEL_160;
    }

LABEL_158:
    v64 = v2 + 106;
LABEL_159:
    *v64 = 0;
    goto LABEL_160;
  }

  if (!v2)
  {
    v114 = __nwlog_obj();
    os_log_type_enabled(v114, OS_LOG_TYPE_ERROR);
    *buf = 136446210;
    v123 = "_strict_strlcat";
    v115 = _os_log_send_and_compose_impl();

    result = __nwlog_should_abort(v115);
    if (result)
    {
      goto LABEL_247;
    }

    free(v115);
  }

  v62 = 0;
  v63 = 107;
  while (1)
  {
    v64 = &v2[v62];
    if (!v2[v62])
    {
      break;
    }

    ++v62;
    if (!--v63)
    {
      goto LABEL_160;
    }
  }

  if (v63 < 2)
  {
    goto LABEL_159;
  }

  v67 = v63 - 2;
  v68 = 105 - v62;
  if (v68 >= 2)
  {
    v68 = 2;
  }

  memcpy(v64, ", ", v68 + 1);
  if (v67 <= 1)
  {
    goto LABEL_158;
  }

LABEL_160:
  if (!v2)
  {
    v100 = __nwlog_obj();
    os_log_type_enabled(v100, OS_LOG_TYPE_ERROR);
    *buf = 136446210;
    v123 = "_strict_strlcat";
    v101 = _os_log_send_and_compose_impl();

    result = __nwlog_should_abort(v101);
    if (result)
    {
      goto LABEL_247;
    }

    free(v101);
  }

  v71 = 0;
  v72 = 107;
  while (1)
  {
    v73 = &v2[v71];
    if (!v2[v71])
    {
      break;
    }

    ++v71;
    if (!--v72)
    {
      goto LABEL_171;
    }
  }

  if (v72 < 2)
  {
    goto LABEL_170;
  }

  v74 = v72 - 2;
  v75 = 105 - v71;
  if (v75 >= 0x11)
  {
    v75 = 17;
  }

  memcpy(v73, "interface_removed", v75 + 1);
  if (v74 <= 0x10)
  {
    v73 = v2 + 106;
LABEL_170:
    *v73 = 0;
  }

LABEL_171:
  v6 = 1;
  if ((a1 & 0x20) == 0)
  {
    goto LABEL_206;
  }

LABEL_172:
  if (v6)
  {
    if (!v2)
    {
      v118 = __nwlog_obj();
      os_log_type_enabled(v118, OS_LOG_TYPE_ERROR);
      *buf = 136446210;
      v123 = "_strict_strlcat";
      v119 = _os_log_send_and_compose_impl();

      result = __nwlog_should_abort(v119);
      if (result)
      {
        goto LABEL_247;
      }

      free(v119);
    }

    v76 = 0;
    v77 = 107;
    while (1)
    {
      v78 = &v2[v76];
      if (!v2[v76])
      {
        break;
      }

      ++v76;
      if (!--v77)
      {
        goto LABEL_195;
      }
    }

    if (v77 < 2)
    {
      goto LABEL_194;
    }

    v81 = v77 - 2;
    v82 = 105 - v76;
    if (v82 >= 2)
    {
      v82 = 2;
    }

    memcpy(v78, ", ", v82 + 1);
    if (v81 > 1)
    {
      goto LABEL_195;
    }
  }

  else
  {
    if (!v2)
    {
      v120 = __nwlog_obj();
      os_log_type_enabled(v120, OS_LOG_TYPE_ERROR);
      *buf = 136446210;
      v123 = "_strict_strlcat";
      v121 = _os_log_send_and_compose_impl();

      result = __nwlog_should_abort(v121);
      if (result)
      {
        goto LABEL_247;
      }

      free(v121);
    }

    v79 = 0;
    v80 = 107;
    while (1)
    {
      v78 = &v2[v79];
      if (!v2[v79])
      {
        break;
      }

      ++v79;
      if (!--v80)
      {
        goto LABEL_195;
      }
    }

    if (v80 < 2)
    {
      goto LABEL_194;
    }

    v83 = v80 - 2;
    if (v79 == 105)
    {
      v84 = 1;
    }

    else
    {
      v84 = 2;
    }

    memcpy(v78, "<", v84);
    if (v83)
    {
      goto LABEL_195;
    }
  }

  v78 = v2 + 106;
LABEL_194:
  *v78 = 0;
LABEL_195:
  if (!v2)
  {
    v102 = __nwlog_obj();
    os_log_type_enabled(v102, OS_LOG_TYPE_ERROR);
    *buf = 136446210;
    v123 = "_strict_strlcat";
    v103 = _os_log_send_and_compose_impl();

    result = __nwlog_should_abort(v103);
    if (result)
    {
      goto LABEL_247;
    }

    free(v103);
  }

  v85 = 0;
  v86 = 107;
  while (1)
  {
    v87 = &v2[v85];
    if (!v2[v85])
    {
      break;
    }

    ++v85;
    if (!--v86)
    {
      goto LABEL_206;
    }
  }

  if (v86 >= 2)
  {
    v88 = v86 - 2;
    v89 = 105 - v85;
    if (v89 >= 0x12)
    {
      v89 = 18;
    }

    memcpy(v87, "txt_record_changed", v89 + 1);
    if (v88 > 0x11)
    {
      goto LABEL_206;
    }

    v87 = v2 + 106;
  }

  *v87 = 0;
LABEL_206:
  if (v2)
  {
    goto LABEL_207;
  }

  v94 = __nwlog_obj();
  os_log_type_enabled(v94, OS_LOG_TYPE_ERROR);
  *buf = 136446210;
  v123 = "_strict_strlcat";
  v95 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v95);
  if (!result)
  {
    free(v95);
LABEL_207:
    v90 = 0;
    v91 = 107;
    while (1)
    {
      v11 = &v2[v90];
      if (!v2[v90])
      {
        break;
      }

      ++v90;
      if (!--v91)
      {
        return v2;
      }
    }

    if (v91 < 2)
    {
      goto LABEL_217;
    }

    v92 = v91 - 2;
    if (v90 == 105)
    {
      v93 = 1;
    }

    else
    {
      v93 = 2;
    }

    memcpy(v11, ">", v93);
    if (v92)
    {
      return v2;
    }

LABEL_216:
    v11 = v2 + 106;
LABEL_217:
    *v11 = 0;
    return v2;
  }

LABEL_247:
  __break(1u);
  return result;
}