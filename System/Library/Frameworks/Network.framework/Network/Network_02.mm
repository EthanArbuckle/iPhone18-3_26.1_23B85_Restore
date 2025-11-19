id _nw_interface_create_from_necp_0(uint64_t a1, unsigned int a2)
{
  sub_181A58C7C(a1, a2);
  type metadata accessor for Interface.BackingClass();
  v2 = swift_allocObject();
  v3 = v22;
  v4 = v24[0];
  v2[9] = v23;
  v2[10] = v4;
  *(v2 + 170) = *(v24 + 10);
  v5 = v20;
  v2[5] = v19;
  v2[6] = v5;
  v2[7] = v21;
  v2[8] = v3;
  v6 = v16;
  v2[1] = v15;
  v2[2] = v6;
  v7 = v18;
  v2[3] = v17;
  v2[4] = v7;
  v8 = type metadata accessor for __NWInterface();
  v9 = objc_allocWithZone(v8);
  v10 = OBJC_IVAR____TtC7Network13__NWInterface_lock;

  v11 = swift_slowAlloc();
  *&v9[v10] = v11;
  *&v9[OBJC_IVAR____TtC7Network13__NWInterface_nameStorage] = 0;
  *&v9[OBJC_IVAR____TtC7Network13__NWInterface_interface] = v2;
  *v11 = 0;
  v14.receiver = v9;
  v14.super_class = v8;
  v12 = objc_msgSendSuper2(&v14, sel_init);

  return v12;
}

uint64_t nw_interface_create_from_necp(uint64_t a1, int a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a2 > 0)
  {

    return _nw_interface_create_from_necp();
  }

  v3 = __nwlog_obj();
  *buf = 136446466;
  v13 = "nw_interface_create_from_necp";
  v14 = 2082;
  v15 = "Invalid interface index";
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
        *buf = 136446466;
        v13 = "nw_interface_create_from_necp";
        v14 = 2082;
        v15 = "Invalid interface index";
        v7 = "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s";
LABEL_18:
        _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0x16u);
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
            *buf = 136446722;
            v13 = "nw_interface_create_from_necp";
            v14 = 2082;
            v15 = "Invalid interface index";
            v16 = 2082;
            v17 = backtrace_string;
            _os_log_impl(&dword_181A37000, v5, v6, "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v9)
        {
          goto LABEL_19;
        }

        *buf = 136446466;
        v13 = "nw_interface_create_from_necp";
        v14 = 2082;
        v15 = "Invalid interface index";
        v7 = "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, no backtrace";
        goto LABEL_18;
      }

      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446466;
        v13 = "nw_interface_create_from_necp";
        v14 = 2082;
        v15 = "Invalid interface index";
        v7 = "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, backtrace limit exceeded";
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

uint64_t sub_181A58C7C(uint64_t a1, uint64_t a2)
{
  if (a2 > 0x7FFFFFFF)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (a2 < 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (necp_client_action())
  {
    v3 = MEMORY[0x1865D92E0]();
    if (v3 != 2)
    {
      if (qword_1EA837198 != -1)
      {
        swift_once();
      }

      v13 = sub_182AD2698();
      __swift_project_value_buffer(v13, qword_1EA843330);
      v5 = sub_182AD2678();
      v14 = sub_182AD38C8();
      if (!os_log_type_enabled(v5, v14))
      {
        goto LABEL_14;
      }

      v7 = swift_slowAlloc();
      *v7 = 67109120;
      *(v7 + 1) = v3;
      v8 = "NECP_CLIENT_ACTION_COPY_INTERFACE returned %d";
      v9 = v14;
      v10 = v5;
      v11 = v7;
      v12 = 8;
      goto LABEL_13;
    }

    if (qword_1EA837198 == -1)
    {
LABEL_6:
      v4 = sub_182AD2698();
      __swift_project_value_buffer(v4, qword_1EA843330);
      v5 = sub_182AD2678();
      v6 = sub_182AD38A8();
      if (!os_log_type_enabled(v5, v6))
      {
        goto LABEL_14;
      }

      v7 = swift_slowAlloc();
      *v7 = 0;
      v8 = "NECP_CLIENT_ACTION_COPY_INTERFACE returned ENOENT";
      v9 = v6;
      v10 = v5;
      v11 = v7;
      v12 = 2;
LABEL_13:
      _os_log_impl(&dword_181A37000, v10, v9, v8, v11, v12);
      MEMORY[0x1865DF520](v7, -1, -1);
LABEL_14:

      v15 = sub_182AD2758();
      if ((v15 & 0x100000000) != 0)
      {
        v16 = 22;
      }

      else
      {
        v16 = v15;
      }

      goto LABEL_17;
    }

LABEL_25:
    swift_once();
    goto LABEL_6;
  }

  if (qword_1EA837198 != -1)
  {
    swift_once();
  }

  v19 = sub_182AD2698();
  __swift_project_value_buffer(v19, qword_1EA843330);
  v20 = sub_182AD2678();
  v21 = sub_182AD38B8();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 134217984;
    *(v22 + 4) = a2;
    _os_log_impl(&dword_181A37000, v20, v21, "Copy interface failed to find valid interface for index %ld", v22, 0xCu);
    MEMORY[0x1865DF520](v22, -1, -1);
  }

  v16 = 2;
LABEL_17:
  sub_181F4B3B8();
  swift_allocError();
  *v17 = v16;
  *(v17 + 4) = 0;
  return swift_willThrow();
}

uint64_t __nwlog_obj()
{
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  return gLogObj;
}

void nw_parameters_get_e_proc_uuid(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    _nw_parameters_get_e_proc_uuid();
    return;
  }

  v1 = __nwlog_obj();
  *buf = 136446210;
  v11 = "nw_parameters_get_e_proc_uuid";
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
        v11 = "nw_parameters_get_e_proc_uuid";
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
            v11 = "nw_parameters_get_e_proc_uuid";
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
        v11 = "nw_parameters_get_e_proc_uuid";
        v5 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v3 = __nwlog_obj();
      v4 = type;
      if (os_log_type_enabled(v3, type))
      {
        *buf = 136446210;
        v11 = "nw_parameters_get_e_proc_uuid";
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

nw_interface_type_t nw_parameters_get_required_interface_type(nw_parameters_t parameters)
{
  v15 = *MEMORY[0x1E69E9840];
  if (parameters)
  {

    return _nw_parameters_get_required_interface_type();
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_required_interface_type";
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
        v12 = "nw_parameters_get_required_interface_type";
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
            v12 = "nw_parameters_get_required_interface_type";
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
        v12 = "nw_parameters_get_required_interface_type";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_required_interface_type";
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

uint64_t nw_path_evaluator_evaluate(NWConcrete_nw_path_evaluator *a1, int *a2)
{
  v84 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (*(v3 + 1))
  {
    v4 = _nw_parameters_copy_context();
    v5 = *(v3 + 2);
    v6 = v5;
    if (v5 && (v7 = v5, v8 = _nw_endpoint_get_type(v7), v7, v8 == 1))
    {
      v9 = v7;
      address_family = _nw_endpoint_get_address_family(v9);

      if (address_family != 30 && address_family != 2)
      {
        uuid_generate_random(v3 + 80);
        v11 = _nw_path_create(*(v3 + 2), *(v3 + 1));
        v12 = *(v3 + 6);
        *(v3 + 6) = v11;

        v13 = *(v3 + 6);
        if (v13)
        {
          _nw_path_set_group_descriptor(v13, *(v3 + 3));
          _nw_path_set_browse_descriptor(*(v3 + 6), *(v3 + 4));
          _nw_path_set_advertise_descriptor(*(v3 + 6), *(v3 + 5));
          _nw_path_set_is_listener(*(v3 + 6), (*(v3 + 107) >> 1) & 1);
          _nw_path_set_custom_ethertype(*(v3 + 6), *(v3 + 52));
          _nw_path_set_custom_ip_protocol(*(v3 + 6), *(v3 + 106));
          _nw_path_set_is_interpose(*(v3 + 6), (*(v3 + 107) >> 2) & 1);
          _nw_path_set_client_id(*(v3 + 6), v3 + 80);
LABEL_65:
          nw_path_snapshot_path(*(v3 + 6));
          v43 = 1;
LABEL_106:

          goto LABEL_107;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v44 = gLogObj;
        *v80 = 136446210;
        v81 = "nw_path_evaluator_evaluate";
        v15 = _os_log_send_and_compose_impl();

        buf[0] = 16;
        LOBYTE(v71) = 0;
        if (!__nwlog_fault(v15, buf, &v71))
        {
LABEL_103:
          if (!v15)
          {
LABEL_105:
            v43 = 0;
            goto LABEL_106;
          }

LABEL_104:
          free(v15);
          goto LABEL_105;
        }

        if (buf[0] == 17)
        {
          v45 = __nwlog_obj();
          v46 = buf[0];
          if (os_log_type_enabled(v45, buf[0]))
          {
            *v80 = 136446210;
            v81 = "nw_path_evaluator_evaluate";
            _os_log_impl(&dword_181A37000, v45, v46, "%{public}s nw_path_create failed", v80, 0xCu);
          }

LABEL_102:

          goto LABEL_103;
        }

        if (v71 != 1)
        {
          v45 = __nwlog_obj();
          v54 = buf[0];
          if (os_log_type_enabled(v45, buf[0]))
          {
            *v80 = 136446210;
            v81 = "nw_path_evaluator_evaluate";
            _os_log_impl(&dword_181A37000, v45, v54, "%{public}s nw_path_create failed, backtrace limit exceeded", v80, 0xCu);
          }

          goto LABEL_102;
        }

        backtrace_string = __nw_create_backtrace_string();
        v45 = __nwlog_obj();
        v48 = buf[0];
        v49 = os_log_type_enabled(v45, buf[0]);
        if (!backtrace_string)
        {
          if (v49)
          {
            *v80 = 136446210;
            v81 = "nw_path_evaluator_evaluate";
            _os_log_impl(&dword_181A37000, v45, v48, "%{public}s nw_path_create failed, no backtrace", v80, 0xCu);
          }

          goto LABEL_102;
        }

        if (v49)
        {
          *v80 = 136446466;
          v81 = "nw_path_evaluator_evaluate";
          v82 = 2082;
          v83 = backtrace_string;
          _os_log_impl(&dword_181A37000, v45, v48, "%{public}s nw_path_create failed, dumping backtrace:%{public}s", v80, 0x16u);
        }

LABEL_34:
        free(backtrace_string);
        if (!v15)
        {
          goto LABEL_105;
        }

        goto LABEL_104;
      }
    }

    else
    {
    }

    v71 = 0;
    v14 = *(v3 + 107);
    BYTE2(v68) = (v14 & 8) != 0;
    BYTE1(v68) = (v14 & 4) != 0;
    LOBYTE(v68) = *(v3 + 106);
    v15 = nw_path_create_necp_parameters(&v71, *(v3 + 2), *(v3 + 3), *(v3 + 4), *(v3 + 5), *(v3 + 1), (v14 >> 1) & 1, *(v3 + 52), v68);
    if (!v15)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v21 = gLogObj;
      *v80 = 136446210;
      v81 = "nw_path_evaluator_evaluate";
      v15 = _os_log_send_and_compose_impl();

      buf[0] = 16;
      type = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v15, buf, &type))
      {
        goto LABEL_103;
      }

      if (buf[0] == 17)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v22 = gLogObj;
        v23 = buf[0];
        if (os_log_type_enabled(v22, buf[0]))
        {
          *v80 = 136446210;
          v81 = "nw_path_evaluator_evaluate";
          _os_log_impl(&dword_181A37000, v22, v23, "%{public}s nw_path_create_necp_parameters failed", v80, 0xCu);
        }
      }

      else if (type == OS_LOG_TYPE_INFO)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v22 = gLogObj;
        v29 = buf[0];
        v30 = os_log_type_enabled(v22, buf[0]);
        if (backtrace_string)
        {
          if (v30)
          {
            *v80 = 136446466;
            v81 = "nw_path_evaluator_evaluate";
            v82 = 2082;
            v83 = backtrace_string;
            _os_log_impl(&dword_181A37000, v22, v29, "%{public}s nw_path_create_necp_parameters failed, dumping backtrace:%{public}s", v80, 0x16u);
          }

          goto LABEL_34;
        }

        if (v30)
        {
          *v80 = 136446210;
          v81 = "nw_path_evaluator_evaluate";
          _os_log_impl(&dword_181A37000, v22, v29, "%{public}s nw_path_create_necp_parameters failed, no backtrace", v80, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v22 = gLogObj;
        v37 = buf[0];
        if (os_log_type_enabled(v22, buf[0]))
        {
          *v80 = 136446210;
          v81 = "nw_path_evaluator_evaluate";
          _os_log_impl(&dword_181A37000, v22, v37, "%{public}s nw_path_create_necp_parameters failed, backtrace limit exceeded", v80, 0xCu);
        }
      }

      goto LABEL_103;
    }

    v16 = _nw_path_create(*(v3 + 2), *(v3 + 1));
    v17 = *(v3 + 6);
    *(v3 + 6) = v16;

    v18 = *(v3 + 6);
    if (v18)
    {
      _nw_path_set_group_descriptor(v18, *(v3 + 3));
      _nw_path_set_browse_descriptor(*(v3 + 6), *(v3 + 4));
      _nw_path_set_advertise_descriptor(*(v3 + 6), *(v3 + 5));
      _nw_path_set_is_listener(*(v3 + 6), (*(v3 + 107) >> 1) & 1);
      _nw_path_set_custom_ethertype(*(v3 + 6), *(v3 + 52));
      _nw_path_set_custom_ip_protocol(*(v3 + 6), *(v3 + 106));
      _nw_path_set_is_interpose(*(v3 + 6), (*(v3 + 107) >> 2) & 1);
      if (nw_path_shared_necp_fd(v4) == -1)
      {
LABEL_64:
        free(v15);
        goto LABEL_65;
      }

      bzero(v80, 0x600uLL);
      if (uuid_is_null(v3 + 80) && necp_client_action())
      {
        v19 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v20 = gLogObj;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v73 = "nw_path_evaluator_evaluate";
          v74 = 1024;
          *v75 = v19;
          _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_ERROR, "%{public}s NECP_CLIENT_ACTION_ADD error %{darwin.errno}d", buf, 0x12u);
        }

LABEL_17:
        if (a2)
        {
          *a2 = v19;
        }

        goto LABEL_104;
      }

      if (uuid_is_null(v3 + 80))
      {
        v31 = 0;
        v32 = 0;
        goto LABEL_52;
      }

      _nw_path_set_client_id(*(v3 + 6), v3 + 80);
      v31 = necp_client_action();
      if (v31 > 0)
      {
        v32 = nw_path_parse_necp_result(*(v3 + 6), v80, v31);
LABEL_52:
        if (uuid_is_null(v3 + 80))
        {
          v39 = 1;
        }

        else
        {
          v39 = v31 == 0;
        }

        if (v39)
        {
          v40 = 0;
        }

        else
        {
          v40 = v32;
        }

        if ((v40 & 1) == 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v41 = gLogObj;
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            v42 = "failed to parse";
            *buf = 136447234;
            v73 = "nw_path_evaluator_evaluate";
            v74 = 2082;
            if (v32)
            {
              v42 = "parsed";
            }

            *v75 = v42;
            *&v75[8] = 1024;
            *&v75[10] = v31;
            v76 = 1042;
            v77 = 16;
            v78 = 2098;
            v79 = v3 + 80;
            _os_log_impl(&dword_181A37000, v41, OS_LOG_TYPE_ERROR, "%{public}s NECP_CLIENT_ACTION_COPY_RESULT %{public}s %d bytes for id %{public,uuid_t}.16P", buf, 0x2Cu);
          }
        }

        goto LABEL_64;
      }

      v19 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
      v50 = __nwlog_obj();
      *buf = 136446466;
      v73 = "nw_path_evaluator_evaluate";
      v74 = 1024;
      *v75 = v19;
      v51 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v69 = 0;
      if (__nwlog_fault(v51, &type, &v69))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v52 = __nwlog_obj();
          v53 = type;
          if (os_log_type_enabled(v52, type))
          {
            *buf = 136446466;
            v73 = "nw_path_evaluator_evaluate";
            v74 = 1024;
            *v75 = v19;
            _os_log_impl(&dword_181A37000, v52, v53, "%{public}s NECP_CLIENT_ACTION_COPY_RESULT %{darwin.errno}d", buf, 0x12u);
          }
        }

        else if (v69 == 1)
        {
          v55 = __nw_create_backtrace_string();
          v52 = __nwlog_obj();
          v56 = type;
          v57 = os_log_type_enabled(v52, type);
          if (v55)
          {
            if (v57)
            {
              *buf = 136446722;
              v73 = "nw_path_evaluator_evaluate";
              v74 = 1024;
              *v75 = v19;
              *&v75[4] = 2082;
              *&v75[6] = v55;
              _os_log_impl(&dword_181A37000, v52, v56, "%{public}s NECP_CLIENT_ACTION_COPY_RESULT %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
            }

            free(v55);
            goto LABEL_111;
          }

          if (v57)
          {
            *buf = 136446466;
            v73 = "nw_path_evaluator_evaluate";
            v74 = 1024;
            *v75 = v19;
            _os_log_impl(&dword_181A37000, v52, v56, "%{public}s NECP_CLIENT_ACTION_COPY_RESULT %{darwin.errno}d, no backtrace", buf, 0x12u);
          }
        }

        else
        {
          v52 = __nwlog_obj();
          v58 = type;
          if (os_log_type_enabled(v52, type))
          {
            *buf = 136446466;
            v73 = "nw_path_evaluator_evaluate";
            v74 = 1024;
            *v75 = v19;
            _os_log_impl(&dword_181A37000, v52, v58, "%{public}s NECP_CLIENT_ACTION_COPY_RESULT %{darwin.errno}d, backtrace limit exceeded", buf, 0x12u);
          }
        }
      }

LABEL_111:
      if (v51)
      {
        free(v51);
      }

      goto LABEL_17;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v24 = gLogObj;
    *v80 = 136446210;
    v81 = "nw_path_evaluator_evaluate";
    v25 = _os_log_send_and_compose_impl();

    buf[0] = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v25, buf, &type))
    {
      if (buf[0] == 17)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v26 = gLogObj;
        v27 = buf[0];
        if (os_log_type_enabled(v26, buf[0]))
        {
          *v80 = 136446210;
          v81 = "nw_path_evaluator_evaluate";
          _os_log_impl(&dword_181A37000, v26, v27, "%{public}s nw_path_create failed", v80, 0xCu);
        }
      }

      else if (type == OS_LOG_TYPE_INFO)
      {
        v33 = __nw_create_backtrace_string();
        if (v33)
        {
          v34 = v33;
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v35 = gLogObj;
          v36 = buf[0];
          if (os_log_type_enabled(v35, buf[0]))
          {
            *v80 = 136446466;
            v81 = "nw_path_evaluator_evaluate";
            v82 = 2082;
            v83 = v34;
            _os_log_impl(&dword_181A37000, v35, v36, "%{public}s nw_path_create failed, dumping backtrace:%{public}s", v80, 0x16u);
          }

          free(v34);
          if (!v25)
          {
            goto LABEL_104;
          }

          goto LABEL_78;
        }

        v26 = __nwlog_obj();
        v47 = buf[0];
        if (os_log_type_enabled(v26, buf[0]))
        {
          *v80 = 136446210;
          v81 = "nw_path_evaluator_evaluate";
          _os_log_impl(&dword_181A37000, v26, v47, "%{public}s nw_path_create failed, no backtrace", v80, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v26 = gLogObj;
        v38 = buf[0];
        if (os_log_type_enabled(v26, buf[0]))
        {
          *v80 = 136446210;
          v81 = "nw_path_evaluator_evaluate";
          _os_log_impl(&dword_181A37000, v26, v38, "%{public}s nw_path_create failed, backtrace limit exceeded", v80, 0xCu);
        }
      }
    }

    if (!v25)
    {
      goto LABEL_104;
    }

LABEL_78:
    free(v25);
    goto LABEL_104;
  }

  v60 = __nwlog_obj();
  *v80 = 136446210;
  v81 = "nw_path_evaluator_evaluate";
  v61 = _os_log_send_and_compose_impl();

  buf[0] = 16;
  LOBYTE(v71) = 0;
  if (__nwlog_fault(v61, buf, &v71))
  {
    if (buf[0] == 17)
    {
      v62 = __nwlog_obj();
      v63 = buf[0];
      if (os_log_type_enabled(v62, buf[0]))
      {
        *v80 = 136446210;
        v81 = "nw_path_evaluator_evaluate";
        _os_log_impl(&dword_181A37000, v62, v63, "%{public}s called with null evaluator->parameters", v80, 0xCu);
      }
    }

    else if (v71 == 1)
    {
      v64 = __nw_create_backtrace_string();
      v62 = __nwlog_obj();
      v65 = buf[0];
      v66 = os_log_type_enabled(v62, buf[0]);
      if (v64)
      {
        if (v66)
        {
          *v80 = 136446466;
          v81 = "nw_path_evaluator_evaluate";
          v82 = 2082;
          v83 = v64;
          _os_log_impl(&dword_181A37000, v62, v65, "%{public}s called with null evaluator->parameters, dumping backtrace:%{public}s", v80, 0x16u);
        }

        free(v64);
        goto LABEL_129;
      }

      if (v66)
      {
        *v80 = 136446210;
        v81 = "nw_path_evaluator_evaluate";
        _os_log_impl(&dword_181A37000, v62, v65, "%{public}s called with null evaluator->parameters, no backtrace", v80, 0xCu);
      }
    }

    else
    {
      v62 = __nwlog_obj();
      v67 = buf[0];
      if (os_log_type_enabled(v62, buf[0]))
      {
        *v80 = 136446210;
        v81 = "nw_path_evaluator_evaluate";
        _os_log_impl(&dword_181A37000, v62, v67, "%{public}s called with null evaluator->parameters, backtrace limit exceeded", v80, 0xCu);
      }
    }
  }

LABEL_129:
  if (v61)
  {
    free(v61);
  }

  v43 = 0;
LABEL_107:

  return v43;
}

void sub_181A88704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, void *a37, void *a38, void *a39)
{
  _Block_object_dispose(&STACK[0x498], 8);

  _Block_object_dispose(&STACK[0x428], 8);
  _Block_object_dispose(&STACK[0x458], 8);
  _Block_object_dispose(&STACK[0x478], 8);

  _Unwind_Resume(a1);
}

nw_interface_t nw_parameters_copy_required_interface(nw_parameters_t parameters)
{
  v15 = *MEMORY[0x1E69E9840];
  if (parameters)
  {

    return _nw_parameters_copy_required_interface(parameters);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_copy_required_interface";
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
        v12 = "nw_parameters_copy_required_interface";
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
            v12 = "nw_parameters_copy_required_interface";
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
        v12 = "nw_parameters_copy_required_interface";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_copy_required_interface";
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

void _nw_parameters_iterate_prohibited_interfacesTm(uint64_t a1, void *aBlock, void (*a3)(uint64_t, void *))
{
  v5 = _Block_copy(aBlock);
  a3(a1, v5);

  _Block_release(v5);
}

void nw_parameters_get_proc_uuid(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    _nw_parameters_get_proc_uuid();
    return;
  }

  v1 = __nwlog_obj();
  *buf = 136446210;
  v11 = "nw_parameters_get_proc_uuid";
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
        v11 = "nw_parameters_get_proc_uuid";
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
            v11 = "nw_parameters_get_proc_uuid";
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
        v11 = "nw_parameters_get_proc_uuid";
        v5 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v3 = __nwlog_obj();
      v4 = type;
      if (os_log_type_enabled(v3, type))
      {
        *buf = 136446210;
        v11 = "nw_parameters_get_proc_uuid";
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

unint64_t nw_parameters_get_parent_id_count(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_parent_id_count(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_parent_id_count";
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
        v12 = "nw_parameters_get_parent_id_count";
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
            v12 = "nw_parameters_get_parent_id_count";
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
        v12 = "nw_parameters_get_parent_id_count";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_parent_id_count";
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

id nw_parameters_copy_prohibited_interfaces(void *a1)
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
    v13[2] = __nw_parameters_copy_prohibited_interfaces_block_invoke;
    v13[3] = &unk_1E6A2E318;
    v13[4] = buf;
    _nw_parameters_iterate_prohibited_interfaces(v1, v13);
    v3 = *(*&buf[8] + 40);
    _Block_object_dispose(buf, 8);

    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_parameters_copy_prohibited_interfaces";
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
        *&buf[4] = "nw_parameters_copy_prohibited_interfaces";
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
          *&buf[4] = "nw_parameters_copy_prohibited_interfaces";
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
        *&buf[4] = "nw_parameters_copy_prohibited_interfaces";
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
        *&buf[4] = "nw_parameters_copy_prohibited_interfaces";
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

void sub_181A89808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t nw_parameters_get_required_interface_subtype(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_required_interface_subtype();
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_required_interface_subtype";
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
        v12 = "nw_parameters_get_required_interface_subtype";
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
            v12 = "nw_parameters_get_required_interface_subtype";
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
        v12 = "nw_parameters_get_required_interface_subtype";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_required_interface_subtype";
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

uint64_t nw_parameters_get_next_hop_required_interface_type(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_next_hop_required_interface_type();
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_next_hop_required_interface_type";
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
        v12 = "nw_parameters_get_next_hop_required_interface_type";
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
            v12 = "nw_parameters_get_next_hop_required_interface_type";
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
        v12 = "nw_parameters_get_next_hop_required_interface_type";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_next_hop_required_interface_type";
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

uint64_t nw_parameters_get_next_hop_required_interface_subtype(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_next_hop_required_interface_subtype();
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_next_hop_required_interface_subtype";
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
        v12 = "nw_parameters_get_next_hop_required_interface_subtype";
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
            v12 = "nw_parameters_get_next_hop_required_interface_subtype";
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
        v12 = "nw_parameters_get_next_hop_required_interface_subtype";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_next_hop_required_interface_subtype";
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

id nw_parameters_copy_prohibited_interface_types(void *a1)
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
    v13[2] = __nw_parameters_copy_prohibited_interface_types_block_invoke;
    v13[3] = &unk_1E6A3C0D8;
    v13[4] = buf;
    _nw_parameters_iterate_prohibited_interface_types(v1, v13);
    v3 = *(*&buf[8] + 40);
    _Block_object_dispose(buf, 8);

    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_parameters_copy_prohibited_interface_types";
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
        *&buf[4] = "nw_parameters_copy_prohibited_interface_types";
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
          *&buf[4] = "nw_parameters_copy_prohibited_interface_types";
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
        *&buf[4] = "nw_parameters_copy_prohibited_interface_types";
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
        *&buf[4] = "nw_parameters_copy_prohibited_interface_types";
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

void sub_181A8A338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id nw_parameters_copy_prohibited_interface_subtypes(void *a1)
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
    v13[2] = __nw_parameters_copy_prohibited_interface_subtypes_block_invoke;
    v13[3] = &unk_1E6A3C0D8;
    v13[4] = buf;
    _nw_parameters_iterate_prohibited_interface_subtypes(v1, v13);
    v3 = *(*&buf[8] + 40);
    _Block_object_dispose(buf, 8);

    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_parameters_copy_prohibited_interface_subtypes";
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
        *&buf[4] = "nw_parameters_copy_prohibited_interface_subtypes";
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
          *&buf[4] = "nw_parameters_copy_prohibited_interface_subtypes";
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
        *&buf[4] = "nw_parameters_copy_prohibited_interface_subtypes";
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
        *&buf[4] = "nw_parameters_copy_prohibited_interface_subtypes";
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

void sub_181A8A69C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id nw_parameters_copy_preferred_interface_subtypes(void *a1)
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
    v13[2] = __nw_parameters_copy_preferred_interface_subtypes_block_invoke;
    v13[3] = &unk_1E6A3C0D8;
    v13[4] = buf;
    _nw_parameters_iterate_preferred_interface_subtypes(v1, v13);
    v3 = *(*&buf[8] + 40);
    _Block_object_dispose(buf, 8);

    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_parameters_copy_preferred_interface_subtypes";
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
        *&buf[4] = "nw_parameters_copy_preferred_interface_subtypes";
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
          *&buf[4] = "nw_parameters_copy_preferred_interface_subtypes";
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
        *&buf[4] = "nw_parameters_copy_preferred_interface_subtypes";
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
        *&buf[4] = "nw_parameters_copy_preferred_interface_subtypes";
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

void sub_181A8AA18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id nw_parameters_copy_prohibited_netagent_uuids(void *a1)
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
    v13[2] = __nw_parameters_copy_prohibited_netagent_uuids_block_invoke;
    v13[3] = &unk_1E6A38768;
    v13[4] = buf;
    _nw_parameters_iterate_prohibited_netagent_uuids(v1, v13);
    v3 = *(*&buf[8] + 40);
    _Block_object_dispose(buf, 8);

    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_parameters_copy_prohibited_netagent_uuids";
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
        *&buf[4] = "nw_parameters_copy_prohibited_netagent_uuids";
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
          *&buf[4] = "nw_parameters_copy_prohibited_netagent_uuids";
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
        *&buf[4] = "nw_parameters_copy_prohibited_netagent_uuids";
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
        *&buf[4] = "nw_parameters_copy_prohibited_netagent_uuids";
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

void sub_181A8AD94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id nw_parameters_copy_prohibited_netagent_domains(void *a1)
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
    v13[2] = __nw_parameters_copy_prohibited_netagent_domains_block_invoke;
    v13[3] = &unk_1E6A2E340;
    v13[4] = buf;
    _nw_parameters_iterate_prohibited_netagent_types(v1, v13);
    v3 = *(*&buf[8] + 40);
    _Block_object_dispose(buf, 8);

    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_parameters_copy_prohibited_netagent_domains";
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
        *&buf[4] = "nw_parameters_copy_prohibited_netagent_domains";
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
          *&buf[4] = "nw_parameters_copy_prohibited_netagent_domains";
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
        *&buf[4] = "nw_parameters_copy_prohibited_netagent_domains";
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
        *&buf[4] = "nw_parameters_copy_prohibited_netagent_domains";
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

void sub_181A8B110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __nw_dictionary_apply_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  pointer = xpc_dictionary_get_pointer();
  v5 = *(v3 + 16);

  return v5(v3, a2, pointer);
}

uint64_t __nw_channel_purge_idle_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if ((*(a3 + 462) & 6) == 0 && *(a3 + 136))
  {
    *(a3 + 462) |= 4u;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
    {
      v9 = 136446210;
      v10 = "nw_channel_purge_idle_block_invoke";
      _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_DEBUG, "%{public}s Purging channel packet pool after going idle", &v9, 0xCu);
    }

    if (os_channel_packet_pool_purge())
    {
      v7 = *(*(*(a1 + 32) + 8) + 24);
      if (!v7)
      {
        *(*(*(a1 + 32) + 8) + 24) = _nw_array_create();
        v7 = *(*(*(a1 + 32) + 8) + 24);
      }

      if (v7)
      {
        v8 = a3 == 0;
      }

      else
      {
        v8 = 1;
      }

      if (!v8)
      {
        _nw_array_append(v7, a3);
      }
    }
  }

  *(a3 + 462) &= ~2u;
  return 1;
}

NWConcrete_nw_write_request *nw_write_request_create(void *a1, void *a2, void *a3, int a4, void *a5, void *a6)
{
  v75 = *MEMORY[0x1E69E9840];
  v11 = a1;
  v12 = a2;
  v66 = a3;
  v63 = a5;
  v64 = v12;
  aBlock = a6;
  if (!aBlock)
  {
    v41 = __nwlog_obj();
    *buf = 136446210;
    v72 = "nw_write_request_create";
    v42 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v69 = 0;
    if (!__nwlog_fault(v42, &type, &v69))
    {
      goto LABEL_123;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v43 = __nwlog_obj();
      v44 = type;
      if (os_log_type_enabled(v43, type))
      {
        *buf = 136446210;
        v72 = "nw_write_request_create";
        _os_log_impl(&dword_181A37000, v43, v44, "%{public}s called with null completion", buf, 0xCu);
      }

      goto LABEL_122;
    }

    if (v69 != 1)
    {
      v43 = __nwlog_obj();
      v57 = type;
      if (os_log_type_enabled(v43, type))
      {
        *buf = 136446210;
        v72 = "nw_write_request_create";
        _os_log_impl(&dword_181A37000, v43, v57, "%{public}s called with null completion, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_122;
    }

    backtrace_string = __nw_create_backtrace_string();
    v43 = __nwlog_obj();
    v51 = type;
    v52 = os_log_type_enabled(v43, type);
    if (!backtrace_string)
    {
      if (v52)
      {
        *buf = 136446210;
        v72 = "nw_write_request_create";
        _os_log_impl(&dword_181A37000, v43, v51, "%{public}s called with null completion, no backtrace", buf, 0xCu);
      }

      goto LABEL_122;
    }

    if (v52)
    {
      *buf = 136446466;
      v72 = "nw_write_request_create";
      v73 = 2082;
      v74 = backtrace_string;
      _os_log_impl(&dword_181A37000, v43, v51, "%{public}s called with null completion, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_93;
  }

  if (!v12)
  {
    v45 = __nwlog_obj();
    *buf = 136446210;
    v72 = "nw_write_request_create";
    v42 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v69 = 0;
    if (!__nwlog_fault(v42, &type, &v69))
    {
      goto LABEL_123;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v43 = __nwlog_obj();
      v46 = type;
      if (os_log_type_enabled(v43, type))
      {
        *buf = 136446210;
        v72 = "nw_write_request_create";
        _os_log_impl(&dword_181A37000, v43, v46, "%{public}s called with null context", buf, 0xCu);
      }

LABEL_122:

LABEL_123:
      if (v42)
      {
        free(v42);
      }

      goto LABEL_18;
    }

    if (v69 != 1)
    {
      v43 = __nwlog_obj();
      v58 = type;
      if (os_log_type_enabled(v43, type))
      {
        *buf = 136446210;
        v72 = "nw_write_request_create";
        _os_log_impl(&dword_181A37000, v43, v58, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_122;
    }

    backtrace_string = __nw_create_backtrace_string();
    v43 = __nwlog_obj();
    v53 = type;
    v54 = os_log_type_enabled(v43, type);
    if (!backtrace_string)
    {
      if (v54)
      {
        *buf = 136446210;
        v72 = "nw_write_request_create";
        _os_log_impl(&dword_181A37000, v43, v53, "%{public}s called with null context, no backtrace", buf, 0xCu);
      }

      goto LABEL_122;
    }

    if (v54)
    {
      *buf = 136446466;
      v72 = "nw_write_request_create";
      v73 = 2082;
      v74 = backtrace_string;
      _os_log_impl(&dword_181A37000, v43, v53, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_93:

    free(backtrace_string);
    goto LABEL_123;
  }

  v62 = v11;
  if (!v11 && (a4 & 1) == 0 && (v12 == &__block_literal_global_6_44667 || v12 == &__block_literal_global_44658 || v12 == &__block_literal_global_8_44676 || v12 == &__block_literal_global_10_44685))
  {
    v37 = __nwlog_obj();
    *buf = 136446210;
    v72 = "nw_write_request_create";
    v38 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v69 = 0;
    if (__nwlog_fault(v38, &type, &v69))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v39 = __nwlog_obj();
        v40 = type;
        if (os_log_type_enabled(v39, type))
        {
          *buf = 136446210;
          v72 = "nw_write_request_create";
          _os_log_impl(&dword_181A37000, v39, v40, "%{public}s Send content may only be nil if the request is marked as complete", buf, 0xCu);
        }
      }

      else if (v69 == 1)
      {
        v47 = __nw_create_backtrace_string();
        v39 = __nwlog_obj();
        v48 = type;
        v49 = os_log_type_enabled(v39, type);
        if (v47)
        {
          if (v49)
          {
            *buf = 136446466;
            v72 = "nw_write_request_create";
            v73 = 2082;
            v74 = v47;
            _os_log_impl(&dword_181A37000, v39, v48, "%{public}s Send content may only be nil if the request is marked as complete, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v47);
          goto LABEL_109;
        }

        if (v49)
        {
          *buf = 136446210;
          v72 = "nw_write_request_create";
          _os_log_impl(&dword_181A37000, v39, v48, "%{public}s Send content may only be nil if the request is marked as complete, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v39 = __nwlog_obj();
        v55 = type;
        if (os_log_type_enabled(v39, type))
        {
          *buf = 136446210;
          v72 = "nw_write_request_create";
          _os_log_impl(&dword_181A37000, v39, v55, "%{public}s Send content may only be nil if the request is marked as complete, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_109:
    if (v38)
    {
      free(v38);
    }

    v59 = v63[25];
    if (v59)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __nw_write_request_create_block_invoke;
      block[3] = &unk_1E6A3CE48;
      v68 = aBlock;
      dispatch_async(v59, block);
    }

    else
    {
      posix_error = nw_error_create_posix_error(22);
      (*(aBlock + 2))(aBlock, posix_error);
    }

    goto LABEL_18;
  }

  if (!v66)
  {
    goto LABEL_20;
  }

  v13 = v66;
  if (v13 == &__block_literal_global_10_44685)
  {

    goto LABEL_20;
  }

  if (v13 == &__block_literal_global_8_44676 || v13 == &__block_literal_global_6_44667 || v13 == &__block_literal_global_44658)
  {

    goto LABEL_15;
  }

  v14 = v13;
  os_unfair_lock_lock(v13 + 28);
  v15 = BYTE2(v14[29]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v14 + 28);

  if ((v15 & 0x40) != 0)
  {
LABEL_20:
    v18 = objc_alloc_init(NWConcrete_nw_write_request);
    v17 = v18;
    v11 = v62;
    if (v18)
    {
      if (v62)
      {
        v19 = v62;
      }

      else
      {
        v19 = MEMORY[0x1E69E9668];
      }

      objc_storeStrong(&v18->data, v19);
      objc_storeStrong(&v17->context, a2);
      objc_storeStrong(&v17->original_message, a3);
      *(v17 + 128) = *(v17 + 128) & 0xFE | a4;
      v20 = _Block_copy(aBlock);
      completion = v17->completion;
      v17->completion = v20;

      objc_storeStrong(&v17->connection, a5);
      v17->qos_class = qos_class_self();
      v22 = v64;
      v23 = v22;
      v24 = 0.5;
      if (v22 != &__block_literal_global_10_44685 && v22 != &__block_literal_global_8_44676 && v22 != &__block_literal_global_6_44667 && v22 != &__block_literal_global_44658 && (*(v22 + 118) & 1) == 0)
      {
        v24 = v22[10];
      }

      v25 = 0;
      v17->relative_priority = v24;
      if (!v62 && a4)
      {
        v26 = v23;
        v25 = 0;
        if (v23 != &__block_literal_global_44658 && v23 != &__block_literal_global_10_44685)
        {
          v25 = 8;
          if (v23 != &__block_literal_global_6_44667 && v23 != &__block_literal_global_8_44676)
          {
            v25 = 8 * (*(v26 + 118) & 1);
          }
        }
      }

      *(v17 + 128) = *(v17 + 128) & 0xF7 | v25;
      if (_nw_signposts_once != -1)
      {
        dispatch_once(&_nw_signposts_once, &__block_literal_global_35515);
      }

      if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
      {
        data = v17->data;
        if (data)
        {
          dispatch_data_get_size(data);
        }

        context = v17->context;
        if (context)
        {
          nw_content_context_get_is_final(context);
        }

        kdebug_trace();
      }

      v27 = v17;
      goto LABEL_62;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v28 = gLogObj;
    *buf = 136446210;
    v72 = "nw_write_request_create";
    v29 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v69 = 0;
    if (__nwlog_fault(v29, &type, &v69))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v30 = gLogObj;
        v31 = type;
        if (os_log_type_enabled(v30, type))
        {
          *buf = 136446210;
          v72 = "nw_write_request_create";
          _os_log_impl(&dword_181A37000, v30, v31, "%{public}s [[NW_CONCRETE_CLASS_NAME(nw_write_request) alloc] init] failed", buf, 0xCu);
        }
      }

      else if (v69 == 1)
      {
        v32 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v30 = gLogObj;
        v33 = type;
        v34 = os_log_type_enabled(v30, type);
        if (v32)
        {
          if (v34)
          {
            *buf = 136446466;
            v72 = "nw_write_request_create";
            v73 = 2082;
            v74 = v32;
            _os_log_impl(&dword_181A37000, v30, v33, "%{public}s [[NW_CONCRETE_CLASS_NAME(nw_write_request) alloc] init] failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v32);
          if (!v29)
          {
            goto LABEL_62;
          }

          goto LABEL_61;
        }

        if (v34)
        {
          *buf = 136446210;
          v72 = "nw_write_request_create";
          _os_log_impl(&dword_181A37000, v30, v33, "%{public}s [[NW_CONCRETE_CLASS_NAME(nw_write_request) alloc] init] failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v30 = gLogObj;
        v35 = type;
        if (os_log_type_enabled(v30, type))
        {
          *buf = 136446210;
          v72 = "nw_write_request_create";
          _os_log_impl(&dword_181A37000, v30, v35, "%{public}s [[NW_CONCRETE_CLASS_NAME(nw_write_request) alloc] init] failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v29)
    {
LABEL_62:

      goto LABEL_63;
    }

LABEL_61:
    free(v29);
    goto LABEL_62;
  }

LABEL_15:
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v16 = gLogObj;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446210;
    v72 = "nw_write_request_create";
    _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_ERROR, "%{public}s Cannot send a reply for a protocol that does not support replies", buf, 0xCu);
  }

  v11 = v62;
LABEL_18:
  v17 = 0;
LABEL_63:

  return v17;
}

void nw_endpoint_handler_service_writes(void *a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v19 = __nwlog_obj();
    *buf = 136446210;
    v28 = "nw_endpoint_handler_service_writes";
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (__nwlog_fault(v8, &type, &v25))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v9 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v28 = "nw_endpoint_handler_service_writes";
          _os_log_impl(&dword_181A37000, v9, v20, "%{public}s called with null handler", buf, 0xCu);
        }

        goto LABEL_35;
      }

      if (v25 != 1)
      {
        v9 = __nwlog_obj();
        v24 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v28 = "nw_endpoint_handler_service_writes";
          _os_log_impl(&dword_181A37000, v9, v24, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_35;
      }

      backtrace_string = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v22 = type;
      v23 = os_log_type_enabled(v9, type);
      if (!backtrace_string)
      {
        if (v23)
        {
          *buf = 136446210;
          v28 = "nw_endpoint_handler_service_writes";
          _os_log_impl(&dword_181A37000, v9, v22, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }

        goto LABEL_35;
      }

      if (v23)
      {
        *buf = 136446466;
        v28 = "nw_endpoint_handler_service_writes";
        v29 = 2082;
        v30 = backtrace_string;
        _os_log_impl(&dword_181A37000, v9, v22, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

LABEL_36:
    if (!v8)
    {
      goto LABEL_38;
    }

LABEL_37:
    free(v8);
    goto LABEL_38;
  }

  v3 = v1;
  mode = v3->mode;

  if (mode == 2)
  {
    v5 = nw_endpoint_handler_copy_flow(v3);
    nw_flow_service_writes(v3, v5, &v5->shared_protocol);

    goto LABEL_38;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v6 = gLogObj;
  if (mode > 5)
  {
    v7 = "unknown-mode";
  }

  else
  {
    v7 = off_1E6A31018[mode];
  }

  *buf = 136446722;
  v28 = "nw_endpoint_handler_service_writes";
  v29 = 2082;
  v30 = v7;
  v31 = 2082;
  v32 = "flow";
  v8 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v25 = 0;
  if (!__nwlog_fault(v8, &type, &v25))
  {
    goto LABEL_36;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    v10 = type;
    if (os_log_type_enabled(v9, type))
    {
      if (mode > 5)
      {
        v11 = "unknown-mode";
      }

      else
      {
        v11 = off_1E6A31018[mode];
      }

      *buf = 136446722;
      v28 = "nw_endpoint_handler_service_writes";
      v29 = 2082;
      v30 = v11;
      v31 = 2082;
      v32 = "flow";
      _os_log_impl(&dword_181A37000, v9, v10, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
    }

LABEL_35:

    goto LABEL_36;
  }

  if (v25 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    v16 = type;
    if (os_log_type_enabled(v9, type))
    {
      if (mode > 5)
      {
        v17 = "unknown-mode";
      }

      else
      {
        v17 = off_1E6A31018[mode];
      }

      *buf = 136446722;
      v28 = "nw_endpoint_handler_service_writes";
      v29 = 2082;
      v30 = v17;
      v31 = 2082;
      v32 = "flow";
      _os_log_impl(&dword_181A37000, v9, v16, "%{public}s Handler is in mode %{public}s, expected %{public}s, backtrace limit exceeded", buf, 0x20u);
    }

    goto LABEL_35;
  }

  v12 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v9 = gLogObj;
  v13 = type;
  v14 = os_log_type_enabled(v9, type);
  if (!v12)
  {
    if (v14)
    {
      if (mode > 5)
      {
        v18 = "unknown-mode";
      }

      else
      {
        v18 = off_1E6A31018[mode];
      }

      *buf = 136446722;
      v28 = "nw_endpoint_handler_service_writes";
      v29 = 2082;
      v30 = v18;
      v31 = 2082;
      v32 = "flow";
      _os_log_impl(&dword_181A37000, v9, v13, "%{public}s Handler is in mode %{public}s, expected %{public}s, no backtrace", buf, 0x20u);
    }

    goto LABEL_35;
  }

  if (v14)
  {
    if (mode > 5)
    {
      v15 = "unknown-mode";
    }

    else
    {
      v15 = off_1E6A31018[mode];
    }

    *buf = 136446978;
    v28 = "nw_endpoint_handler_service_writes";
    v29 = 2082;
    v30 = v15;
    v31 = 2082;
    v32 = "flow";
    v33 = 2082;
    v34 = v12;
    _os_log_impl(&dword_181A37000, v9, v13, "%{public}s Handler is in mode %{public}s, expected %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
  }

  free(v12);
  if (v8)
  {
    goto LABEL_37;
  }

LABEL_38:
}

BOOL nw_content_context_is_blocked_by_antecedents(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = 0;
    if (v1 != &__block_literal_global_10_44685 && v1 != &__block_literal_global_8_44676 && v1 != &__block_literal_global_6_44667 && v1 != &__block_literal_global_44658)
    {
      os_unfair_lock_lock(v1 + 28);
      v4 = *&v2[14]._os_unfair_lock_opaque;
      if (v4)
      {
        v3 = (*(v4 + 118) & 4) == 0;
      }

      else
      {
        v3 = 0;
      }

      os_unfair_lock_unlock(v2 + 28);
    }

    goto LABEL_10;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_content_context_is_blocked_by_antecedents";
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
        v17 = "nw_content_context_is_blocked_by_antecedents";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null context", buf, 0xCu);
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
          v17 = "nw_content_context_is_blocked_by_antecedents";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_27;
      }

      if (v12)
      {
        *buf = 136446210;
        v17 = "nw_content_context_is_blocked_by_antecedents";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null context, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v17 = "nw_content_context_is_blocked_by_antecedents";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_27:
  if (v7)
  {
    free(v7);
  }

  v3 = 0;
LABEL_10:

  return v3;
}

id *nw_flow_copy_write_request(uint64_t a1, uint64_t a2, void *a3)
{
  v105 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 160);
  v79 = a3;
  while (1)
  {
    v5 = *(a1 + 192);
    v6 = *(a1 + 200);
    if (v5)
    {
      if (!v6)
      {
        v7 = a1;
        goto LABEL_8;
      }
    }

    else if (!v6)
    {
      goto LABEL_98;
    }

    v7 = a1;
    v8 = nw_write_request_copy_next_incomplete_request(*(a1 + 200), (*(a2 + 4) & 2) != 0, (*(a1 + 332) >> 1) & 1, *(a1 + 224));
    if (v8)
    {
      goto LABEL_9;
    }

    v5 = *(a1 + 192);
    if (!v5)
    {
      goto LABEL_98;
    }

LABEL_8:
    v8 = nw_write_request_copy_next_incomplete_request(v5, (*(a2 + 4) & 2) != 0, (*(v7 + 332) >> 1) & 1, *(v7 + 224));
    if (!v8)
    {
LABEL_98:
      v9 = 0;
      goto LABEL_101;
    }

LABEL_9:
    v9 = v8;
    v86 = v9[8];

    if (!v86)
    {
      break;
    }

    v10 = v86;
    v83 = v10;
    if (!a3)
    {
      v56 = __nwlog_obj();
      *buf = 136446210;
      v90 = "nw_content_context_is_expired";
      v57 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v87 = 0;
      if (__nwlog_fault(v57, &type, &v87))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v58 = __nwlog_obj();
          v59 = type;
          if (os_log_type_enabled(v58, type))
          {
            *buf = 136446210;
            v90 = "nw_content_context_is_expired";
            _os_log_impl(&dword_181A37000, v58, v59, "%{public}s called with null expire_time", buf, 0xCu);
          }
        }

        else
        {
          if (v87 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            v67 = __nwlog_obj();
            v68 = type;
            v69 = os_log_type_enabled(v67, type);
            if (backtrace_string)
            {
              if (v69)
              {
                *buf = 136446466;
                v90 = "nw_content_context_is_expired";
                v91 = 2082;
                v92 = backtrace_string;
                _os_log_impl(&dword_181A37000, v67, v68, "%{public}s called with null expire_time, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
            }

            else
            {
              if (v69)
              {
                *buf = 136446210;
                v90 = "nw_content_context_is_expired";
                _os_log_impl(&dword_181A37000, v67, v68, "%{public}s called with null expire_time, no backtrace", buf, 0xCu);
              }
            }

            goto LABEL_90;
          }

          v58 = __nwlog_obj();
          v70 = type;
          if (os_log_type_enabled(v58, type))
          {
            *buf = 136446210;
            v90 = "nw_content_context_is_expired";
            _os_log_impl(&dword_181A37000, v58, v70, "%{public}s called with null expire_time, backtrace limit exceeded", buf, 0xCu);
          }
        }
      }

LABEL_90:
      v11 = v83;
      if (v57)
      {
        free(v57);
      }

      goto LABEL_38;
    }

    v11 = v10;
    if (v10 != &__block_literal_global_10_44685 && v10 != &__block_literal_global_8_44676 && v10 != &__block_literal_global_6_44667 && v10 != &__block_literal_global_44658)
    {
      *a3 = 0;
      if ((v10[29]._os_unfair_lock_opaque & 0x10000) == 0)
      {
        os_unfair_lock_lock(v10 + 28);
        v15 = *&v11[16]._os_unfair_lock_opaque;
        if (v15)
        {
          if ((v11[29]._os_unfair_lock_opaque & 0x20000) == 0)
          {
            BYTE2(v11[29]._os_unfair_lock_opaque) |= 2u;
            v16 = *&v11[18]._os_unfair_lock_opaque;
            v17 = mach_absolute_time();
            v18 = nw_delta_nanos(v16, v17);
            v19 = (v18 / 0xF4240);
            if (v18 > 0xF423FFFFFFFFFLL)
            {
              v19 = 0xFFFFFFFFLL;
            }

            v15 = *&v11[16]._os_unfair_lock_opaque;
            if (v15 < v19)
            {
              os_unfair_lock_unlock(v11 + 28);

              minimize_logging = nw_endpoint_handler_get_minimize_logging(v4);
              logging_disabled = nw_endpoint_handler_get_logging_disabled(v4);
              if (!minimize_logging)
              {
                if ((logging_disabled & 1) == 0)
                {
                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  v22 = gconnectionLogObj;
                  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
                  {
                    id_string = nw_endpoint_handler_get_id_string(v4);
                    v24 = nw_endpoint_handler_dry_run_string(v4);
                    v25 = nw_endpoint_handler_copy_endpoint(v4);
                    v26 = v25;
                    if (v25)
                    {
                      logging_description = _nw_endpoint_get_logging_description(v25);
                    }

                    else
                    {
                      logging_description = "<NULL>";
                    }

                    v81 = nw_endpoint_handler_state_string(v4);
                    v54 = nw_endpoint_handler_mode_string(v4);
                    v55 = nw_endpoint_handler_copy_current_path(v4);
                    *buf = 136448002;
                    v90 = "nw_flow_copy_write_request";
                    v91 = 2082;
                    v92 = id_string;
                    v93 = 2082;
                    v94 = v24;
                    v95 = 2082;
                    v96 = logging_description;
                    v97 = 2082;
                    v98 = v81;
                    v99 = 2082;
                    v100 = v54;
                    v101 = 2114;
                    v102 = v55;
                    v103 = 2112;
                    v104 = v83;
                    _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Send context %@ is expired, failing request", buf, 0x52u);
                  }

                  goto LABEL_67;
                }

LABEL_97:
                v49 = 60;
LABEL_58:
                nw_write_request_fail(v9, v49);
                goto LABEL_64;
              }

              if (logging_disabled)
              {
                goto LABEL_97;
              }

              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v22 = gconnectionLogObj;
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
              {
                v71 = nw_endpoint_handler_get_id_string(v4);
                v72 = nw_endpoint_handler_dry_run_string(v4);
                v73 = nw_endpoint_handler_copy_endpoint(v4);
                v74 = nw_endpoint_get_logging_description(v73);
                v75 = nw_endpoint_handler_state_string(v4);
                v82 = nw_endpoint_handler_mode_string(v4);
                v76 = nw_endpoint_handler_copy_current_path(v4);
                *buf = 136448002;
                v90 = "nw_flow_copy_write_request";
                v91 = 2082;
                v92 = v71;
                v93 = 2082;
                v94 = v72;
                v95 = 2082;
                v96 = v74;
                v97 = 2082;
                v98 = v75;
                v99 = 2082;
                v100 = v82;
                v101 = 2114;
                v102 = v76;
                v103 = 2112;
                v104 = v83;
                _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Send context %@ is expired, failing request", buf, 0x52u);
              }

LABEL_67:
              v49 = 60;
LABEL_57:

              goto LABEL_58;
            }
          }

          v28 = *&v11[18]._os_unfair_lock_opaque;
          v29 = dword_1ED4117CC;
          if (!dword_1ED4117CC)
          {
            mach_timebase_info(&time_base);
            v29 = dword_1ED4117CC;
          }

          *a3 = 1000000 * v15 * v29 / time_base + v28;
        }

        os_unfair_lock_unlock(v11 + 28);
      }
    }

LABEL_38:

    v30 = nw_content_context_copy_error(v83);
    if (!v30)
    {
      break;
    }

    v31 = nw_endpoint_handler_get_minimize_logging(v4);
    v32 = nw_endpoint_handler_get_logging_disabled(v4);
    if (v31)
    {
      if (v32)
      {
        goto LABEL_63;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v33 = gconnectionLogObj;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        v60 = nw_endpoint_handler_get_id_string(v4);
        v61 = nw_endpoint_handler_dry_run_string(v4);
        v80 = v33;
        v62 = nw_endpoint_handler_copy_endpoint(v4);
        v63 = nw_endpoint_get_logging_description(v62);
        v64 = nw_endpoint_handler_state_string(v4);
        v78 = nw_endpoint_handler_mode_string(v4);
        v65 = nw_endpoint_handler_copy_current_path(v4);
        *buf = 136448002;
        v90 = "nw_flow_copy_write_request";
        v91 = 2082;
        v92 = v60;
        v93 = 2082;
        v94 = v61;
        v95 = 2082;
        v96 = v63;
        v97 = 2082;
        v98 = v64;
        v99 = 2082;
        v100 = v78;
        v101 = 2114;
        v102 = v65;
        v103 = 2112;
        v104 = v83;
        _os_log_impl(&dword_181A37000, v80, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Send context %@ has antecedent error, failing request", buf, 0x52u);

        goto LABEL_61;
      }

LABEL_62:

      goto LABEL_63;
    }

    if ((v32 & 1) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v33 = gconnectionLogObj;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        v34 = nw_endpoint_handler_get_id_string(v4);
        v35 = nw_endpoint_handler_dry_run_string(v4);
        v36 = nw_endpoint_handler_copy_endpoint(v4);
        v37 = v36;
        v80 = v33;
        if (v36)
        {
          v38 = _nw_endpoint_get_logging_description(v36);
        }

        else
        {
          v38 = "<NULL>";
        }

        v50 = nw_endpoint_handler_state_string(v4);
        v51 = v9;
        v52 = nw_endpoint_handler_mode_string(v4);
        v53 = nw_endpoint_handler_copy_current_path(v4);
        *buf = 136448002;
        v90 = "nw_flow_copy_write_request";
        v91 = 2082;
        v92 = v34;
        v93 = 2082;
        v94 = v35;
        v95 = 2082;
        v96 = v38;
        v97 = 2082;
        v98 = v50;
        v99 = 2082;
        v100 = v52;
        v9 = v51;
        a3 = v79;
        v101 = 2114;
        v102 = v53;
        v103 = 2112;
        v104 = v83;
        _os_log_impl(&dword_181A37000, v80, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Send context %@ has antecedent error, failing request", buf, 0x52u);

LABEL_61:
        v33 = v80;
      }

      goto LABEL_62;
    }

LABEL_63:
    nw_write_request_report_error_with_override(v9, 0, v30);

LABEL_64:
  }

  if ((*(a2 + 4) & 1) == 0)
  {
    goto LABEL_100;
  }

  v39 = v9;
  v40 = *(v39 + 128);

  if ((v40 & 1) == 0)
  {
    if (nw_endpoint_handler_get_logging_disabled(v4))
    {
      v49 = 45;
      goto LABEL_58;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v22 = gconnectionLogObj;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v41 = nw_endpoint_handler_get_id_string(v4);
      v42 = nw_endpoint_handler_dry_run_string(v4);
      v43 = nw_endpoint_handler_copy_endpoint(v4);
      v44 = v43;
      if (v43)
      {
        v45 = _nw_endpoint_get_logging_description(v43);
      }

      else
      {
        v45 = "<NULL>";
      }

      v46 = nw_endpoint_handler_state_string(v4);
      v47 = nw_endpoint_handler_mode_string(v4);
      v48 = nw_endpoint_handler_copy_current_path(v4);
      *buf = 136447746;
      v90 = "nw_flow_copy_write_request";
      v91 = 2082;
      v92 = v41;
      v93 = 2082;
      v94 = v42;
      v95 = 2082;
      v96 = v45;
      v97 = 2082;
      v98 = v46;
      v99 = 2082;
      v100 = v47;
      a3 = v79;
      v101 = 2114;
      v102 = v48;
      _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Protocol does not support sending incomplete send content", buf, 0x48u);
    }

    v49 = 45;
    goto LABEL_57;
  }

  v9 = v39;
LABEL_100:

LABEL_101:
  return v9;
}

id nw_content_context_copy_error(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == &__block_literal_global_10_44685 || v1 == &__block_literal_global_8_44676 || v1 == &__block_literal_global_6_44667 || v1 == &__block_literal_global_44658)
  {
    v7 = 0;
    goto LABEL_16;
  }

  os_unfair_lock_lock(v1 + 28);
  v6 = *&v2[24]._os_unfair_lock_opaque;
  if (!v6)
  {
    if (!*&v2[14]._os_unfair_lock_opaque)
    {
      v7 = 0;
      goto LABEL_15;
    }

    v6 = nw_content_context_copy_error();
  }

  v7 = v6;
LABEL_15:
  os_unfair_lock_unlock(v2 + 28);
LABEL_16:

  return v7;
}

void nw_connection_send(nw_connection_t connection, dispatch_data_t content, nw_content_context_t context, BOOL is_complete, nw_connection_send_completion_t completion)
{
  v6 = is_complete;
  *&v51[13] = *MEMORY[0x1E69E9840];
  v9 = connection;
  v10 = content;
  v11 = context;
  v12 = completion;
  v13 = v12;
  if (!v9)
  {
    v30 = __nwlog_obj();
    *buf = 136446210;
    v49 = "nw_connection_send";
    v31 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v46 = 0;
    if (!__nwlog_fault(v31, &type, &v46))
    {
      goto LABEL_73;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v32 = __nwlog_obj();
      v33 = type;
      if (os_log_type_enabled(v32, type))
      {
        *buf = 136446210;
        v49 = "nw_connection_send";
        _os_log_impl(&dword_181A37000, v32, v33, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (v46 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v32 = __nwlog_obj();
      v37 = type;
      v38 = os_log_type_enabled(v32, type);
      if (backtrace_string)
      {
        if (v38)
        {
          *buf = 136446466;
          v49 = "nw_connection_send";
          v50 = 2082;
          *v51 = backtrace_string;
          _os_log_impl(&dword_181A37000, v32, v37, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_73:
        if (!v31)
        {
          goto LABEL_39;
        }

        goto LABEL_74;
      }

      if (v38)
      {
        *buf = 136446210;
        v49 = "nw_connection_send";
        _os_log_impl(&dword_181A37000, v32, v37, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v32 = __nwlog_obj();
      v42 = type;
      if (os_log_type_enabled(v32, type))
      {
        *buf = 136446210;
        v49 = "nw_connection_send";
        _os_log_impl(&dword_181A37000, v32, v42, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_72:

    goto LABEL_73;
  }

  if (!v12)
  {
    v34 = __nwlog_obj();
    *buf = 136446210;
    v49 = "nw_connection_send";
    v31 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v46 = 0;
    if (!__nwlog_fault(v31, &type, &v46))
    {
      goto LABEL_73;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v32 = __nwlog_obj();
      v35 = type;
      if (os_log_type_enabled(v32, type))
      {
        *buf = 136446210;
        v49 = "nw_connection_send";
        _os_log_impl(&dword_181A37000, v32, v35, "%{public}s called with null completion", buf, 0xCu);
      }
    }

    else if (v46 == 1)
    {
      v39 = __nw_create_backtrace_string();
      v32 = __nwlog_obj();
      v40 = type;
      v41 = os_log_type_enabled(v32, type);
      if (v39)
      {
        if (v41)
        {
          *buf = 136446466;
          v49 = "nw_connection_send";
          v50 = 2082;
          *v51 = v39;
          _os_log_impl(&dword_181A37000, v32, v40, "%{public}s called with null completion, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v39);
        if (!v31)
        {
          goto LABEL_39;
        }

LABEL_74:
        free(v31);
        goto LABEL_39;
      }

      if (v41)
      {
        *buf = 136446210;
        v49 = "nw_connection_send";
        _os_log_impl(&dword_181A37000, v32, v40, "%{public}s called with null completion, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v32 = __nwlog_obj();
      v43 = type;
      if (os_log_type_enabled(v32, type))
      {
        *buf = 136446210;
        v49 = "nw_connection_send";
        _os_log_impl(&dword_181A37000, v32, v43, "%{public}s called with null completion, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_72;
  }

  if (v11 != &__block_literal_global_10_44685)
  {
    v14 = &__block_literal_global_44658;
    if (v11)
    {
      v14 = v11;
    }

    v15 = v14;
    if (v13 == &__block_literal_global_24512)
    {
      v16 = nw_write_request_create_idempotent(v10, v15, 0, v6);
    }

    else
    {
      v16 = nw_write_request_create(v10, v15, 0, v6, v9, v13);
    }

    v21 = v16;
    if (v16)
    {
      nw_connection_add_write_request(v9, v16);
LABEL_38:

      goto LABEL_39;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v22 = gLogObj;
    *buf = 136446210;
    v49 = "nw_connection_send";
    v23 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v46 = 0;
    if (__nwlog_fault(v23, &type, &v46))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v24 = gLogObj;
        v25 = type;
        if (os_log_type_enabled(v24, type))
        {
          *buf = 136446210;
          v49 = "nw_connection_send";
          _os_log_impl(&dword_181A37000, v24, v25, "%{public}s nw_write_request_create failed", buf, 0xCu);
        }
      }

      else if (v46 == 1)
      {
        v26 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v24 = gLogObj;
        v27 = type;
        v28 = os_log_type_enabled(v24, type);
        if (v26)
        {
          if (v28)
          {
            *buf = 136446466;
            v49 = "nw_connection_send";
            v50 = 2082;
            *v51 = v26;
            _os_log_impl(&dword_181A37000, v24, v27, "%{public}s nw_write_request_create failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v26);
          if (!v23)
          {
            goto LABEL_38;
          }

          goto LABEL_37;
        }

        if (v28)
        {
          *buf = 136446210;
          v49 = "nw_connection_send";
          _os_log_impl(&dword_181A37000, v24, v27, "%{public}s nw_write_request_create failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v24 = gLogObj;
        v29 = type;
        if (os_log_type_enabled(v24, type))
        {
          *buf = 136446210;
          v49 = "nw_connection_send";
          _os_log_impl(&dword_181A37000, v24, v29, "%{public}s nw_write_request_create failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v23)
    {
      goto LABEL_38;
    }

LABEL_37:
    free(v23);
    goto LABEL_38;
  }

  isa = v9[2].isa;
  if (isa && !_nw_parameters_get_logging_disabled(isa))
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v18 = gconnectionLogObj;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = v9[56].isa;
      *buf = 136446722;
      v49 = "nw_connection_send";
      v50 = 1024;
      *v51 = v19;
      v51[2] = 2082;
      *&v51[3] = "Cannot send replies on new inbound message context";
      _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_ERROR, "%{public}s [C%u] %{public}s, sending error callback", buf, 0x1Cu);
    }
  }

  v20 = v9[24].isa;
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __nw_connection_send_block_invoke;
  v44[3] = &unk_1E6A3CE48;
  v45 = v13;
  nw_connection_async_client_if_needed_with_override(v9, 0, v20, v44);

LABEL_39:
}

void nw_connection_add_write_request(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 1;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = ___ZL31nw_connection_add_write_requestP24NWConcrete_nw_connectionPU30objcproto19OS_nw_write_request8NSObject_block_invoke;
  v10[3] = &unk_1E6A3BE58;
  v5 = v3;
  v11 = v5;
  v6 = v4;
  v12 = v6;
  v13 = &v14;
  os_unfair_lock_lock(v3 + 34);
  ___ZL31nw_connection_add_write_requestP24NWConcrete_nw_connectionPU30objcproto19OS_nw_write_request8NSObject_block_invoke(v10);
  os_unfair_lock_unlock(v3 + 34);
  if (*(v15 + 24) == 1)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = ___ZL31nw_connection_add_write_requestP24NWConcrete_nw_connectionPU30objcproto19OS_nw_write_request8NSObject_block_invoke_2;
    v7[3] = &unk_1E6A3D760;
    v8 = v5;
    v9 = v6;
    nw_connection_async_if_needed(v8, v7);
  }

  _Block_object_dispose(&v14, 8);
}

void sub_181A8E45C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, void *a21)
{
  _Block_object_dispose((v23 - 96), 8);

  _Unwind_Resume(a1);
}

void ___ZL31nw_connection_add_write_requestP24NWConcrete_nw_connectionPU30objcproto19OS_nw_write_request8NSObject_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 109) & 0x20) != 0)
  {
    v3 = nw_write_request_list_append(*(v1 + 112), *(a1 + 40));
    v4 = *(a1 + 32);
    v5 = *(v4 + 112);
    *(v4 + 112) = v3;

    *(*(*(a1 + 48) + 8) + 24) = 0;
  }
}

void nw_connection_add_write_request_on_queue(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  nw_context_assert_queue(*(v5 + 3));
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = ___ZL40nw_connection_add_write_request_on_queueP24NWConcrete_nw_connectionPU30objcproto19OS_nw_write_request8NSObjectb_block_invoke;
  v9[3] = &unk_1E6A3D738;
  v11 = &v12;
  v7 = v5;
  v10 = v7;
  os_unfair_lock_lock(v5 + 34);
  ___ZL40nw_connection_add_write_request_on_queueP24NWConcrete_nw_connectionPU30objcproto19OS_nw_write_request8NSObjectb_block_invoke(v9);
  os_unfair_lock_unlock(v5 + 34);
  if (v13[3])
  {
    v8 = 89;
LABEL_8:
    nw_write_request_fail(v6, v8);
    goto LABEL_9;
  }

  if (!nw_endpoint_handler_add_write_request(v7[18], v6))
  {
    v8 = 57;
    goto LABEL_8;
  }

  if (a3 && (*(v7 + 109) & 0x40) != 0)
  {
    nw_endpoint_handler_service_writes(v7[18]);
  }

LABEL_9:

  _Block_object_dispose(&v12, 8);
}

uint64_t nw_endpoint_handler_add_write_request(void *a1, void *a2)
{
  v169 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = v3;
    mode = v5->mode;

    if (mode == 2)
    {
      v7 = nw_endpoint_handler_copy_flow(v5);
      if ((gLogDatapath & 1) != 0 && (nw_endpoint_handler_get_logging_disabled(v5) & 1) == 0)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v75 = gconnectionLogObj;
        if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
        {
          id_string = nw_endpoint_handler_get_id_string(v5);
          v143 = nw_endpoint_handler_dry_run_string(v5);
          v146 = nw_endpoint_handler_copy_endpoint(v5);
          v77 = id_string;
          logging_description = nw_endpoint_get_logging_description(v146);
          v79 = nw_endpoint_handler_state_string(v5);
          v80 = nw_endpoint_handler_mode_string(v5);
          v81 = nw_endpoint_handler_copy_current_path(v5);
          v82 = (*(v7 + 35) >> 1) & 1;
          *buf = 136448002;
          v150 = "nw_endpoint_handler_add_write_request";
          v151 = 2082;
          id_str = v77;
          v153 = 2082;
          v154 = v143;
          v155 = 2082;
          v156 = logging_description;
          v157 = 2082;
          v158 = v79;
          v159 = 2082;
          v160 = v80;
          v161 = 2114;
          v162 = v81;
          v163 = 1024;
          LODWORD(v164) = v82;
          _os_log_impl(&dword_181A37000, v75, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] connected_child_handles_requests %d", buf, 0x4Eu);
        }
      }

      if ((*(v7 + 35) & 2) == 0)
      {
        if (*(v7 + 96))
        {
          if (*(v7 + 108))
          {
            v8 = v4;
            v9 = v8;
            if (v8)
            {
              v145 = v8[13];

              if (v145)
              {
                repliable_metadata = nw_content_context_copy_first_repliable_metadata(v145);
                if (repliable_metadata)
                {
                  node = nw_hash_table_get_node(*(v7 + 108), repliable_metadata, 1);
                }

                else
                {
                  node = 0;
                }

                v46 = nw_write_request_copy_context(v9);
                if (node)
                {
                  goto LABEL_156;
                }

                goto LABEL_155;
              }

LABEL_154:
              v46 = nw_write_request_copy_context(v9);
              v145 = 0;
LABEL_155:
              node = nw_hash_table_get_node(*(v7 + 108), v46, 0);
              if (!node)
              {
LABEL_157:
                v95 = nw_endpoint_handler_register_context_internal(v5, v7, v46);
LABEL_158:
                v144 = v46;
                v26 = nw_flow_add_write_request(v5, v95, v9);
                v96 = v5;
                v97 = *(v96 + 284);

                if (v26)
                {
                  if ((v97 & 0x40) != 0)
                  {
LABEL_213:
                    nw_flow_service_writes(v96, v7, v95);
                    goto LABEL_218;
                  }

                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  v98 = gconnectionLogObj;
                  if (!os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG))
                  {
LABEL_212:

                    goto LABEL_213;
                  }

                  log = v98;
                  v139 = v96;

                  v99 = v139;
                  v100 = (*(v96 + 284) & 1) == 0;

                  v101 = "dry-run ";
                  if (v100)
                  {
                    v101 = "";
                  }

                  v135 = v101;
                  v102 = nw_endpoint_handler_copy_endpoint(v99);
                  v103 = v102;
                  if (v102)
                  {
                    v134 = _nw_endpoint_get_logging_description(v102);
                  }

                  else
                  {
                    v134 = "<NULL>";
                  }

                  v133 = v103;

                  v110 = v99;
                  v111 = v110;
                  v112 = v110[30];
                  if (v112 > 5)
                  {
                    v113 = "unknown-state";
                  }

                  else
                  {
                    v113 = off_1E6A31048[v112];
                  }

                  v132 = v113;

                  v114 = v111;
                  v115 = v114;
                  v116 = v5->mode;
                  if (v116 > 2)
                  {
                    switch(v116)
                    {
                      case 3:
                        v117 = "proxy";
                        break;
                      case 4:
                        v117 = "fallback";
                        break;
                      case 5:
                        v117 = "transform";
                        break;
                      default:
LABEL_206:
                        v117 = "unknown-mode";
                        break;
                    }
                  }

                  else
                  {
                    if (v116)
                    {
                      if (v116 == 1)
                      {
                        v117 = "resolver";
                        goto LABEL_210;
                      }

                      if (v116 == 2)
                      {
                        v131 = nw_endpoint_flow_mode_string(v114[33]);
LABEL_211:

                        v126 = v115;
                        os_unfair_lock_lock(v126 + 28);
                        v127 = v126[8];
                        os_unfair_lock_unlock(v126 + 28);

                        *buf = 136448514;
                        v150 = "nw_endpoint_handler_add_write_request";
                        v151 = 2082;
                        id_str = v139->id_str;
                        v153 = 2082;
                        v154 = v135;
                        v155 = 2082;
                        v156 = v134;
                        v157 = 2082;
                        v158 = v132;
                        v159 = 2082;
                        v160 = v131;
                        v161 = 2114;
                        v162 = v127;
                        v163 = 2112;
                        v164 = v9;
                        v165 = 2048;
                        v166 = v95;
                        v167 = 1024;
                        v168 = 1;
                        _os_log_impl(&dword_181A37000, log, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Added write request %@ to flow protocol %p: %u", buf, 0x62u);

                        v98 = log;
                        goto LABEL_212;
                      }

                      goto LABEL_206;
                    }

                    v117 = "path";
                  }

LABEL_210:
                  v131 = v117;
                  goto LABEL_211;
                }

                if ((v97 & 0x40) != 0)
                {
LABEL_218:

                  goto LABEL_219;
                }

                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v104 = gconnectionLogObj;
                if (!os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
                {
LABEL_217:

                  goto LABEL_218;
                }

                v140 = v96;

                v105 = v140;
                v106 = (*(v96 + 284) & 1) == 0;

                if (v106)
                {
                  v107 = "";
                }

                else
                {
                  v107 = "dry-run ";
                }

                v108 = nw_endpoint_handler_copy_endpoint(v105);
                v109 = v108;
                loga = v107;
                if (v108)
                {
                  v136 = _nw_endpoint_get_logging_description(v108);
                }

                else
                {
                  v136 = "<NULL>";
                }

                v118 = v105;
                v119 = v118;
                v120 = v118[30];
                if (v120 > 5)
                {
                  v121 = "unknown-state";
                }

                else
                {
                  v121 = off_1E6A31048[v120];
                }

                v122 = v119;
                v123 = v122;
                v124 = v5->mode;
                if (v124 > 2)
                {
                  switch(v124)
                  {
                    case 3:
                      v125 = "proxy";
                      goto LABEL_216;
                    case 4:
                      v125 = "fallback";
                      goto LABEL_216;
                    case 5:
                      v125 = "transform";
                      goto LABEL_216;
                  }
                }

                else
                {
                  switch(v124)
                  {
                    case 0:
                      v125 = "path";
                      goto LABEL_216;
                    case 1:
                      v125 = "resolver";
                      goto LABEL_216;
                    case 2:
                      v125 = nw_endpoint_flow_mode_string(v122[33]);
LABEL_216:

                      v128 = v123;
                      os_unfair_lock_lock(v128 + 28);
                      v129 = v128[8];
                      os_unfair_lock_unlock(v128 + 28);

                      *buf = 136447746;
                      v150 = "nw_endpoint_handler_add_write_request";
                      v151 = 2082;
                      id_str = v140->id_str;
                      v153 = 2082;
                      v154 = loga;
                      v155 = 2082;
                      v156 = v136;
                      v157 = 2082;
                      v158 = v121;
                      v159 = 2082;
                      v160 = v125;
                      v161 = 2114;
                      v162 = v129;
                      _os_log_impl(&dword_181A37000, v104, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Failed to add write request when trying to send", buf, 0x48u);

                      goto LABEL_217;
                  }
                }

                v125 = "unknown-mode";
                goto LABEL_216;
              }

LABEL_156:
              v95 = *(node + 16);
              if (v95)
              {
                goto LABEL_158;
              }

              goto LABEL_157;
            }

            v87 = __nwlog_obj();
            *buf = 136446210;
            v150 = "nw_write_request_copy_original_message";
            v88 = _os_log_send_and_compose_impl();

            type = OS_LOG_TYPE_ERROR;
            v147 = 0;
            if (__nwlog_fault(v88, &type, &v147))
            {
              if (type == OS_LOG_TYPE_FAULT)
              {
                v89 = __nwlog_obj();
                v90 = type;
                if (os_log_type_enabled(v89, type))
                {
                  *buf = 136446210;
                  v150 = "nw_write_request_copy_original_message";
                  _os_log_impl(&dword_181A37000, v89, v90, "%{public}s called with null request", buf, 0xCu);
                }
              }

              else if (v147 == 1)
              {
                backtrace_string = __nw_create_backtrace_string();
                v89 = __nwlog_obj();
                v92 = type;
                v93 = os_log_type_enabled(v89, type);
                if (backtrace_string)
                {
                  if (v93)
                  {
                    *buf = 136446466;
                    v150 = "nw_write_request_copy_original_message";
                    v151 = 2082;
                    id_str = backtrace_string;
                    _os_log_impl(&dword_181A37000, v89, v92, "%{public}s called with null request, dumping backtrace:%{public}s", buf, 0x16u);
                  }

                  free(backtrace_string);
                  goto LABEL_152;
                }

                if (v93)
                {
                  *buf = 136446210;
                  v150 = "nw_write_request_copy_original_message";
                  _os_log_impl(&dword_181A37000, v89, v92, "%{public}s called with null request, no backtrace", buf, 0xCu);
                }
              }

              else
              {
                v89 = __nwlog_obj();
                v94 = type;
                if (os_log_type_enabled(v89, type))
                {
                  *buf = 136446210;
                  v150 = "nw_write_request_copy_original_message";
                  _os_log_impl(&dword_181A37000, v89, v94, "%{public}s called with null request, backtrace limit exceeded", buf, 0xCu);
                }
              }
            }

LABEL_152:
            if (v88)
            {
              free(v88);
            }

            goto LABEL_154;
          }

          v37 = v5;
          v38 = (*(v37 + 284) & 0x40) == 0;

          if (v38)
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v29 = gconnectionLogObj;
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              v145 = v29;
              v39 = v37;

              v40 = v39;
              v41 = (*(v37 + 284) & 1) == 0;

              if (v41)
              {
                v42 = "";
              }

              else
              {
                v42 = "dry-run ";
              }

              v43 = nw_endpoint_handler_copy_endpoint(v40);
              v44 = v43;
              if (v43)
              {
                v141 = _nw_endpoint_get_logging_description(v43);
              }

              else
              {
                v141 = "<NULL>";
              }

              v55 = v40;
              v56 = v55;
              v57 = v55[30];
              if (v57 > 5)
              {
                v58 = "unknown-state";
              }

              else
              {
                v58 = off_1E6A31048[v57];
              }

              v59 = v56;
              v60 = v59;
              v61 = v5->mode;
              if (v61 > 2)
              {
                switch(v61)
                {
                  case 3:
                    v62 = "proxy";
                    goto LABEL_110;
                  case 4:
                    v62 = "fallback";
                    goto LABEL_110;
                  case 5:
                    v62 = "transform";
                    goto LABEL_110;
                }
              }

              else
              {
                switch(v61)
                {
                  case 0:
                    v62 = "path";
                    goto LABEL_110;
                  case 1:
                    v62 = "resolver";
                    goto LABEL_110;
                  case 2:
                    v62 = nw_endpoint_flow_mode_string(v59[33]);
LABEL_110:

                    v71 = v60;
                    os_unfair_lock_lock(v71 + 28);
                    v72 = v71[8];
                    os_unfair_lock_unlock(v71 + 28);

                    *buf = 136447746;
                    v150 = "nw_endpoint_handler_add_write_request";
                    v151 = 2082;
                    id_str = v39->id_str;
                    v153 = 2082;
                    v154 = v42;
                    v155 = 2082;
                    v156 = v141;
                    v157 = 2082;
                    v158 = v58;
                    v159 = 2082;
                    v160 = v62;
                    v161 = 2114;
                    v162 = v72;
                    _os_log_impl(&dword_181A37000, v145, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Cannot send after flow table is released", buf, 0x48u);

                    goto LABEL_111;
                }
              }

              v62 = "unknown-mode";
              goto LABEL_110;
            }

LABEL_52:
            v26 = 0;
LABEL_220:

            goto LABEL_221;
          }

          goto LABEL_132;
        }

        v19 = nw_flow_add_write_request(v5, v7 + 47, v4);
LABEL_30:
        v26 = v19;
LABEL_221:

        goto LABEL_222;
      }

      v18 = *(v7 + 117);
      if (v18)
      {
        v19 = nw_endpoint_handler_add_write_request(v18, v4);
        goto LABEL_30;
      }

      v27 = v5;
      v28 = (*(v27 + 284) & 0x40) == 0;

      if (!v28)
      {
LABEL_132:
        v26 = 0;
        goto LABEL_221;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v29 = gconnectionLogObj;
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_52;
      }

      v145 = v29;
      v30 = v27;

      v31 = v30;
      v32 = (*(v27 + 284) & 1) == 0;

      if (v32)
      {
        v33 = "";
      }

      else
      {
        v33 = "dry-run ";
      }

      v34 = nw_endpoint_handler_copy_endpoint(v31);
      v35 = v34;
      if (v34)
      {
        v36 = _nw_endpoint_get_logging_description(v34);
      }

      else
      {
        v36 = "<NULL>";
      }

      v47 = v31;
      v48 = v47;
      v49 = v47[30];
      if (v49 > 5)
      {
        v50 = "unknown-state";
      }

      else
      {
        v50 = off_1E6A31048[v49];
      }

      v51 = v48;
      v52 = v51;
      v53 = v5->mode;
      if (v53 > 2)
      {
        switch(v53)
        {
          case 3:
            v54 = "proxy";
            break;
          case 4:
            v54 = "fallback";
            break;
          case 5:
            v54 = "transform";
            break;
          default:
LABEL_100:
            v54 = "unknown-mode";
            break;
        }
      }

      else
      {
        if (v53)
        {
          if (v53 == 1)
          {
            v54 = "resolver";
            goto LABEL_103;
          }

          if (v53 == 2)
          {
            v142 = nw_endpoint_flow_mode_string(v51[33]);
LABEL_104:

            v63 = v30;
            v64 = v4;
            v65 = v50;
            v66 = v36;
            v67 = v33;
            v68 = v52;
            os_unfair_lock_lock(v68 + 28);
            v69 = v68[8];
            os_unfair_lock_unlock(v68 + 28);

            v70 = v65;
            v4 = v64;
            *buf = 136447746;
            v150 = "nw_endpoint_handler_add_write_request";
            v151 = 2082;
            id_str = v63->id_str;
            v153 = 2082;
            v154 = v67;
            v155 = 2082;
            v156 = v66;
            v157 = 2082;
            v158 = v70;
            v159 = 2082;
            v160 = v142;
            v161 = 2114;
            v162 = v69;
            _os_log_impl(&dword_181A37000, v145, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Cannot send, no connected handler", buf, 0x48u);

LABEL_111:
            v26 = 0;
LABEL_219:
            v29 = v145;
            goto LABEL_220;
          }

          goto LABEL_100;
        }

        v54 = "path";
      }

LABEL_103:
      v142 = v54;
      goto LABEL_104;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v12 = gLogObj;
    if (mode > 5)
    {
      v13 = "unknown-mode";
    }

    else
    {
      v13 = off_1E6A31018[mode];
    }

    *buf = 136446722;
    v150 = "nw_endpoint_handler_add_write_request";
    v151 = 2082;
    id_str = v13;
    v153 = 2082;
    v154 = "flow";
    v14 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v147 = 0;
    if (__nwlog_fault(v14, &type, &v147))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v15 = gLogObj;
        v16 = type;
        if (os_log_type_enabled(v15, type))
        {
          if (mode > 5)
          {
            v17 = "unknown-mode";
          }

          else
          {
            v17 = off_1E6A31018[mode];
          }

          *buf = 136446722;
          v150 = "nw_endpoint_handler_add_write_request";
          v151 = 2082;
          id_str = v17;
          v153 = 2082;
          v154 = "flow";
          _os_log_impl(&dword_181A37000, v15, v16, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
        }
      }

      else if (v147 == 1)
      {
        v20 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v15 = gLogObj;
        v21 = type;
        v22 = os_log_type_enabled(v15, type);
        if (v20)
        {
          if (v22)
          {
            if (mode > 5)
            {
              v23 = "unknown-mode";
            }

            else
            {
              v23 = off_1E6A31018[mode];
            }

            *buf = 136446978;
            v150 = "nw_endpoint_handler_add_write_request";
            v151 = 2082;
            id_str = v23;
            v153 = 2082;
            v154 = "flow";
            v155 = 2082;
            v156 = v20;
            _os_log_impl(&dword_181A37000, v15, v21, "%{public}s Handler is in mode %{public}s, expected %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v20);
          if (!v14)
          {
            goto LABEL_84;
          }

          goto LABEL_83;
        }

        if (v22)
        {
          if (mode > 5)
          {
            v45 = "unknown-mode";
          }

          else
          {
            v45 = off_1E6A31018[mode];
          }

          *buf = 136446722;
          v150 = "nw_endpoint_handler_add_write_request";
          v151 = 2082;
          id_str = v45;
          v153 = 2082;
          v154 = "flow";
          _os_log_impl(&dword_181A37000, v15, v21, "%{public}s Handler is in mode %{public}s, expected %{public}s, no backtrace", buf, 0x20u);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v15 = gLogObj;
        v24 = type;
        if (os_log_type_enabled(v15, type))
        {
          if (mode > 5)
          {
            v25 = "unknown-mode";
          }

          else
          {
            v25 = off_1E6A31018[mode];
          }

          *buf = 136446722;
          v150 = "nw_endpoint_handler_add_write_request";
          v151 = 2082;
          id_str = v25;
          v153 = 2082;
          v154 = "flow";
          _os_log_impl(&dword_181A37000, v15, v24, "%{public}s Handler is in mode %{public}s, expected %{public}s, backtrace limit exceeded", buf, 0x20u);
        }
      }

LABEL_81:
    }
  }

  else
  {
    v73 = __nwlog_obj();
    *buf = 136446210;
    v150 = "nw_endpoint_handler_add_write_request";
    v14 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v147 = 0;
    if (__nwlog_fault(v14, &type, &v147))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v15 = __nwlog_obj();
        v74 = type;
        if (os_log_type_enabled(v15, type))
        {
          *buf = 136446210;
          v150 = "nw_endpoint_handler_add_write_request";
          _os_log_impl(&dword_181A37000, v15, v74, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v147 == 1)
      {
        v83 = __nw_create_backtrace_string();
        v15 = __nwlog_obj();
        v84 = type;
        v85 = os_log_type_enabled(v15, type);
        if (v83)
        {
          if (v85)
          {
            *buf = 136446466;
            v150 = "nw_endpoint_handler_add_write_request";
            v151 = 2082;
            id_str = v83;
            _os_log_impl(&dword_181A37000, v15, v84, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v83);
          if (!v14)
          {
            goto LABEL_84;
          }

          goto LABEL_83;
        }

        if (v85)
        {
          *buf = 136446210;
          v150 = "nw_endpoint_handler_add_write_request";
          _os_log_impl(&dword_181A37000, v15, v84, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v15 = __nwlog_obj();
        v86 = type;
        if (os_log_type_enabled(v15, type))
        {
          *buf = 136446210;
          v150 = "nw_endpoint_handler_add_write_request";
          _os_log_impl(&dword_181A37000, v15, v86, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }

      goto LABEL_81;
    }
  }

  if (v14)
  {
LABEL_83:
    free(v14);
  }

LABEL_84:
  v26 = 0;
LABEL_222:

  return v26;
}

uint64_t nw_flow_add_write_request(void *a1, void **a2, void *a3)
{
  v185 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  v7 = v5;
  v8 = v7;
  v164 = v6;
  if (!v7)
  {
    v111 = __nwlog_obj();
    *buf = 136446210;
    v168 = "nw_endpoint_handler_get_mode";
    v112 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v165 = 0;
    if (__nwlog_fault(v112, &type, &v165))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v113 = __nwlog_obj();
        v114 = type;
        if (os_log_type_enabled(v113, type))
        {
          *buf = 136446210;
          v168 = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v113, v114, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v165 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v113 = __nwlog_obj();
        v120 = type;
        v121 = os_log_type_enabled(v113, type);
        if (backtrace_string)
        {
          if (v121)
          {
            *buf = 136446466;
            v168 = "nw_endpoint_handler_get_mode";
            v169 = 2082;
            id_str = backtrace_string;
            _os_log_impl(&dword_181A37000, v113, v120, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_182;
        }

        if (v121)
        {
          *buf = 136446210;
          v168 = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v113, v120, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v113 = __nwlog_obj();
        v124 = type;
        if (os_log_type_enabled(v113, type))
        {
          *buf = 136446210;
          v168 = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v113, v124, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_182:
    if (v112)
    {
      free(v112);
    }

    v9 = 0;
    goto LABEL_185;
  }

  v9 = v7[29];

  if (v9 != 2)
  {
LABEL_185:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v137 = gLogObj;
    if (v9 > 5)
    {
      v138 = "unknown-mode";
    }

    else
    {
      v138 = off_1E6A31018[v9];
    }

    *buf = 136446722;
    v168 = "nw_flow_add_write_request";
    v169 = 2082;
    id_str = v138;
    v171 = 2082;
    v172 = "flow";
    v116 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v165 = 0;
    if (!__nwlog_fault(v116, &type, &v165))
    {
LABEL_217:
      v6 = v164;
      if (!v116)
      {
        goto LABEL_219;
      }

LABEL_218:
      free(v116);
      goto LABEL_219;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v117 = gLogObj;
      v139 = type;
      if (os_log_type_enabled(v117, type))
      {
        if (v9 > 5)
        {
          v140 = "unknown-mode";
        }

        else
        {
          v140 = off_1E6A31018[v9];
        }

        *buf = 136446722;
        v168 = "nw_flow_add_write_request";
        v169 = 2082;
        id_str = v140;
        v171 = 2082;
        v172 = "flow";
        _os_log_impl(&dword_181A37000, v117, v139, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
      }
    }

    else if (v165 == 1)
    {
      v141 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v117 = gLogObj;
      v142 = type;
      v143 = os_log_type_enabled(v117, type);
      if (v141)
      {
        if (v143)
        {
          if (v9 > 5)
          {
            v144 = "unknown-mode";
          }

          else
          {
            v144 = off_1E6A31018[v9];
          }

          *buf = 136446978;
          v168 = "nw_flow_add_write_request";
          v169 = 2082;
          id_str = v144;
          v171 = 2082;
          v172 = "flow";
          v173 = 2082;
          v174 = v141;
          _os_log_impl(&dword_181A37000, v117, v142, "%{public}s Handler is in mode %{public}s, expected %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v141);
        v6 = v164;
        if (!v116)
        {
          goto LABEL_219;
        }

        goto LABEL_218;
      }

      if (v143)
      {
        if (v9 > 5)
        {
          v147 = "unknown-mode";
        }

        else
        {
          v147 = off_1E6A31018[v9];
        }

        *buf = 136446722;
        v168 = "nw_flow_add_write_request";
        v169 = 2082;
        id_str = v147;
        v171 = 2082;
        v172 = "flow";
        _os_log_impl(&dword_181A37000, v117, v142, "%{public}s Handler is in mode %{public}s, expected %{public}s, no backtrace", buf, 0x20u);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v117 = gLogObj;
      v145 = type;
      if (os_log_type_enabled(v117, type))
      {
        if (v9 > 5)
        {
          v146 = "unknown-mode";
        }

        else
        {
          v146 = off_1E6A31018[v9];
        }

        *buf = 136446722;
        v168 = "nw_flow_add_write_request";
        v169 = 2082;
        id_str = v146;
        v171 = 2082;
        v172 = "flow";
        _os_log_impl(&dword_181A37000, v117, v145, "%{public}s Handler is in mode %{public}s, expected %{public}s, backtrace limit exceeded", buf, 0x20u);
      }
    }

LABEL_216:

    goto LABEL_217;
  }

  if (!a2)
  {
    v115 = __nwlog_obj();
    *buf = 136446210;
    v168 = "nw_flow_add_write_request";
    v116 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v165 = 0;
    if (!__nwlog_fault(v116, &type, &v165))
    {
      goto LABEL_217;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v117 = __nwlog_obj();
      v118 = type;
      if (os_log_type_enabled(v117, type))
      {
        *buf = 136446210;
        v168 = "nw_flow_add_write_request";
        _os_log_impl(&dword_181A37000, v117, v118, "%{public}s called with null flow_protocol", buf, 0xCu);
      }

      goto LABEL_216;
    }

    if (v165 != 1)
    {
      v117 = __nwlog_obj();
      v130 = type;
      if (os_log_type_enabled(v117, type))
      {
        *buf = 136446210;
        v168 = "nw_flow_add_write_request";
        _os_log_impl(&dword_181A37000, v117, v130, "%{public}s called with null flow_protocol, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_216;
    }

    v125 = __nw_create_backtrace_string();
    v117 = __nwlog_obj();
    v126 = type;
    v127 = os_log_type_enabled(v117, type);
    if (!v125)
    {
      if (v127)
      {
        *buf = 136446210;
        v168 = "nw_flow_add_write_request";
        _os_log_impl(&dword_181A37000, v117, v126, "%{public}s called with null flow_protocol, no backtrace", buf, 0xCu);
      }

      goto LABEL_216;
    }

    if (v127)
    {
      *buf = 136446466;
      v168 = "nw_flow_add_write_request";
      v169 = 2082;
      id_str = v125;
      _os_log_impl(&dword_181A37000, v117, v126, "%{public}s called with null flow_protocol, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_165;
  }

  if (!v6)
  {
    v122 = __nwlog_obj();
    *buf = 136446210;
    v168 = "nw_flow_add_write_request";
    v116 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v165 = 0;
    if (!__nwlog_fault(v116, &type, &v165))
    {
      goto LABEL_217;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v117 = __nwlog_obj();
      v123 = type;
      if (os_log_type_enabled(v117, type))
      {
        *buf = 136446210;
        v168 = "nw_flow_add_write_request";
        _os_log_impl(&dword_181A37000, v117, v123, "%{public}s called with null write_request", buf, 0xCu);
      }

      goto LABEL_216;
    }

    if (v165 != 1)
    {
      v117 = __nwlog_obj();
      v131 = type;
      if (os_log_type_enabled(v117, type))
      {
        *buf = 136446210;
        v168 = "nw_flow_add_write_request";
        _os_log_impl(&dword_181A37000, v117, v131, "%{public}s called with null write_request, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_216;
    }

    v125 = __nw_create_backtrace_string();
    v117 = __nwlog_obj();
    v128 = type;
    v129 = os_log_type_enabled(v117, type);
    if (!v125)
    {
      if (v129)
      {
        *buf = 136446210;
        v168 = "nw_flow_add_write_request";
        _os_log_impl(&dword_181A37000, v117, v128, "%{public}s called with null write_request, no backtrace", buf, 0xCu);
      }

      goto LABEL_216;
    }

    if (v129)
    {
      *buf = 136446466;
      v168 = "nw_flow_add_write_request";
      v169 = 2082;
      id_str = v125;
      _os_log_impl(&dword_181A37000, v117, v128, "%{public}s called with null write_request, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_165:

    free(v125);
    goto LABEL_217;
  }

  if (_nw_signposts_once != -1)
  {
    dispatch_once(&_nw_signposts_once, &__block_literal_global_17387);
  }

  if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
  {
    kdebug_trace();
  }

  v10 = v8;
  v11 = v10->state & 0xFFFFFFFE;

  if (v11 != 4)
  {
    v22 = nw_endpoint_handler_copy_flow(v10);
    if ((*(v22 + 34) & 8) == 0)
    {
      goto LABEL_82;
    }

    v23 = v10;
    v24 = *(v23 + 284);

    if ((v24 & 0x20) != 0)
    {
      if (nw_endpoint_handler_get_logging_disabled(v23))
      {
        goto LABEL_82;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v27 = gconnectionLogObj;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        id_string = nw_endpoint_handler_get_id_string(v23);
        v159 = nw_endpoint_handler_dry_run_string(v23);
        v163 = nw_endpoint_handler_copy_endpoint(v23);
        logging_description = nw_endpoint_get_logging_description(v163);
        v150 = nw_endpoint_handler_state_string(v23);
        v132 = nw_endpoint_handler_mode_string(v23);
        v133 = nw_endpoint_handler_copy_current_path(v23);
        v134 = nw_write_request_remaining_bytes(v164);
        v135 = nw_write_request_copy_context(v164);
        *buf = 136448258;
        v168 = "nw_flow_add_write_request";
        v136 = "";
        id_str = id_string;
        v169 = 2082;
        if (!v135)
        {
          v136 = "not ";
        }

        v171 = 2082;
        v172 = v159;
        v173 = 2082;
        v174 = logging_description;
        v175 = 2082;
        v176 = v150;
        v177 = 2082;
        v178 = v132;
        v179 = 2114;
        v180 = v133;
        v181 = 2048;
        v182 = v134;
        v183 = 2080;
        v184 = v136;
        _os_log_impl(&dword_181A37000, v27, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Write request submitted: %zu bytes, context %spresent", buf, 0x5Cu);
      }

      goto LABEL_81;
    }

    v25 = v23;
    v26 = *(v23 + 284);

    if ((v26 & 0x40) != 0)
    {
LABEL_82:
      v68 = v6;
      v69 = v68[128];

      if ((v69 & 4) == 0)
      {
        goto LABEL_121;
      }

      if ((*(v22 + 33) & 8) == 0 && !a2[24])
      {
        v79 = nw_write_request_create_clone(v68);
        v80 = nw_write_request_list_append(a2[26], v79);
        v81 = a2[26];
        a2[26] = v80;

        v82 = nw_write_request_list_append(a2[25], v68);
        v83 = a2[25];
        a2[25] = v82;

        v84 = v10;
        v85 = (*(v84 + 284) & 0x40) == 0;

        if (v85)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v86 = gconnectionLogObj;
          if (os_log_type_enabled(v86, OS_LOG_TYPE_DEBUG))
          {
            v87 = nw_endpoint_handler_get_id_string(v84);
            v158 = nw_endpoint_handler_dry_run_string(v84);
            v162 = nw_endpoint_handler_copy_endpoint(v84);
            v88 = v87;
            v89 = nw_endpoint_get_logging_description(v162);
            v90 = nw_endpoint_handler_state_string(v84);
            v91 = nw_endpoint_handler_mode_string(v84);
            v92 = nw_endpoint_handler_copy_current_path(v84);
            *buf = 136447746;
            v168 = "nw_flow_add_write_request";
            v169 = 2082;
            id_str = v88;
            v171 = 2082;
            v172 = v158;
            v173 = 2082;
            v174 = v89;
            v175 = 2082;
            v176 = v90;
            v177 = 2082;
            v178 = v91;
            v179 = 2114;
            v180 = v92;
            _os_log_impl(&dword_181A37000, v86, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] adding idempotent initial write request", buf, 0x48u);
          }
        }

LABEL_122:

        os_unfair_lock_lock(v22 + 220);
        v105 = v68;
        v106 = *(v105 + 9);
        if (*(v105 + 7))
        {
          if (!v106)
          {
            v107 = v105;
            size = dispatch_data_get_size(*(v105 + 7));
            v105 = v107;
LABEL_127:
            v109 = *(v105 + 14);
            if (size <= v109)
            {
              LODWORD(v109) = 0;
            }

            v110 = size - v109;
            goto LABEL_130;
          }
        }

        else if (!v106)
        {
          v110 = 0;
LABEL_130:

          *(v22 + 224) += v110;
          os_unfair_lock_unlock(v22 + 220);

          v54 = 1;
          goto LABEL_131;
        }

        size = *(v105 + 12);
        goto LABEL_127;
      }

      v70 = v10;
      v71 = (*(v70 + 284) & 0x40) == 0;

      if (!v71)
      {
LABEL_121:
        v104 = nw_write_request_list_append(a2[24], v68);
        v79 = a2[24];
        a2[24] = v104;
        goto LABEL_122;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v72 = gconnectionLogObj;
      if (!os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
      {
LABEL_120:

        goto LABEL_121;
      }

      v73 = v70;

      v74 = v73;
      v75 = (*(v70 + 284) & 1) == 0;

      if (v75)
      {
        v76 = "";
      }

      else
      {
        v76 = "dry-run ";
      }

      v77 = nw_endpoint_handler_copy_endpoint(v74);
      v78 = v77;
      v161 = v76;
      if (v77)
      {
        v157 = _nw_endpoint_get_logging_description(v77);
      }

      else
      {
        v157 = "<NULL>";
      }

      v93 = v74;
      v94 = v93;
      state = v10->state;
      if (state > 5)
      {
        v96 = "unknown-state";
      }

      else
      {
        v96 = off_1E6A31048[state];
      }

      v154 = v96;

      v97 = v94;
      v98 = v97;
      v99 = v8[29];
      if (v99 > 2)
      {
        switch(v99)
        {
          case 3:
            v100 = "proxy";
            goto LABEL_119;
          case 4:
            v100 = "fallback";
            goto LABEL_119;
          case 5:
            v100 = "transform";
            goto LABEL_119;
        }
      }

      else
      {
        switch(v99)
        {
          case 0:
            v100 = "path";
            goto LABEL_119;
          case 1:
            v100 = "resolver";
            goto LABEL_119;
          case 2:
            v100 = nw_endpoint_flow_mode_string(v97[33]);
LABEL_119:

            v101 = v73;
            v102 = v98;
            os_unfair_lock_lock(v102 + 28);
            v103 = v102[8];
            os_unfair_lock_unlock(v102 + 28);

            *buf = 136447746;
            v168 = "nw_flow_add_write_request";
            v169 = 2082;
            id_str = v101->id_str;
            v171 = 2082;
            v172 = v161;
            v173 = 2082;
            v174 = v157;
            v175 = 2082;
            v176 = v154;
            v177 = 2082;
            v178 = v100;
            v179 = 2114;
            v180 = v103;
            _os_log_impl(&dword_181A37000, v72, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] adding idempotent write request", buf, 0x48u);

            goto LABEL_120;
        }
      }

      v100 = "unknown-mode";
      goto LABEL_119;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v27 = gconnectionLogObj;
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
LABEL_81:

      v6 = v164;
      goto LABEL_82;
    }

    v28 = v25;

    v29 = v28;
    v30 = *(v23 + 284);

    if (v30)
    {
      v31 = "dry-run ";
    }

    else
    {
      v31 = "";
    }

    v32 = nw_endpoint_handler_copy_endpoint(v29);
    v33 = v32;
    if (v32)
    {
      v160 = _nw_endpoint_get_logging_description(v32);
    }

    else
    {
      v160 = "<NULL>";
    }

    v43 = v29;
    v44 = v43;
    v45 = v10->state;
    v149 = v33;
    if (v45 > 5)
    {
      v46 = "unknown-state";
    }

    else
    {
      v46 = off_1E6A31048[v45];
    }

    v156 = v46;
    v47 = v28 + 184;

    v48 = v44;
    v49 = v48;
    v50 = v8[29];
    if (v50 > 2)
    {
      switch(v50)
      {
        case 3:
          v51 = "proxy";
          break;
        case 4:
          v51 = "fallback";
          break;
        case 5:
          v51 = "transform";
          break;
        default:
LABEL_66:
          v51 = "unknown-mode";
          break;
      }
    }

    else
    {
      if (v50)
      {
        if (v50 == 1)
        {
          v51 = "resolver";
          goto LABEL_69;
        }

        if (v50 == 2)
        {
          v151 = nw_endpoint_flow_mode_string(v48[33]);
          goto LABEL_70;
        }

        goto LABEL_66;
      }

      v51 = "path";
    }

LABEL_69:
    v151 = v51;
LABEL_70:

    v55 = v49;
    os_unfair_lock_lock(v55 + 28);
    v56 = v55[8];
    os_unfair_lock_unlock(v55 + 28);

    v57 = v56;
    v58 = v164;
    v59 = v58[7];
    v60 = v58[9];
    v153 = v27;
    if (v59)
    {
      if (!v60)
      {
        v61 = v31;
        v62 = dispatch_data_get_size(v59);
LABEL_75:
        v63 = v58[14];
        if (v62 <= v63)
        {
          v63 = 0;
        }

        v64 = v62 - v63;
        goto LABEL_78;
      }
    }

    else if (!v60)
    {
      v61 = v31;
      v64 = 0;
LABEL_78:

      v65 = v58;
      v66 = v65[8];

      v67 = "not ";
      v168 = "nw_flow_add_write_request";
      *buf = 136448258;
      if (v66)
      {
        v67 = "";
      }

      v169 = 2082;
      id_str = v47;
      v171 = 2082;
      v172 = v61;
      v173 = 2082;
      v174 = v160;
      v175 = 2082;
      v176 = v156;
      v177 = 2082;
      v27 = v153;
      v178 = v151;
      v179 = 2114;
      v180 = v57;
      v181 = 2048;
      v182 = v64;
      v183 = 2080;
      v184 = v67;
      _os_log_impl(&dword_181A37000, v153, OS_LOG_TYPE_DEFAULT, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Write request submitted: %zu bytes, context %spresent", buf, 0x5Cu);

      goto LABEL_81;
    }

    v61 = v31;
    v62 = v58[12];
    goto LABEL_75;
  }

  v12 = v10;
  v13 = *(v12 + 284);

  if ((v13 & 0x40) != 0)
  {
LABEL_219:
    v54 = 0;
    goto LABEL_220;
  }

  if (__nwlog_connection_log::onceToken[0] != -1)
  {
    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
  }

  v14 = gconnectionLogObj;
  if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_63;
  }

  v15 = v12;

  v16 = v15;
  v17 = *(v12 + 284);

  if (v17)
  {
    v18 = "dry-run ";
  }

  else
  {
    v18 = "";
  }

  v19 = nw_endpoint_handler_copy_endpoint(v16);
  v20 = v19;
  if (v19)
  {
    v21 = _nw_endpoint_get_logging_description(v19);
  }

  else
  {
    v21 = "<NULL>";
  }

  v34 = v15->id_str;

  v35 = v16;
  v36 = v35;
  v37 = v10->state;
  if (v37 > 5)
  {
    v38 = "unknown-state";
  }

  else
  {
    v38 = off_1E6A31048[v37];
  }

  v39 = v36;
  v40 = v39;
  v41 = v8[29];
  if (v41 > 2)
  {
    switch(v41)
    {
      case 3:
        v42 = "proxy";
        goto LABEL_62;
      case 4:
        v42 = "fallback";
        goto LABEL_62;
      case 5:
        v42 = "transform";
        goto LABEL_62;
    }

LABEL_59:
    v42 = "unknown-mode";
    goto LABEL_62;
  }

  if (!v41)
  {
    v42 = "path";
    goto LABEL_62;
  }

  if (v41 == 1)
  {
    v42 = "resolver";
    goto LABEL_62;
  }

  if (v41 != 2)
  {
    goto LABEL_59;
  }

  v42 = nw_endpoint_flow_mode_string(v39[33]);
LABEL_62:

  v52 = v40;
  os_unfair_lock_lock(v52 + 28);
  v53 = v52[8];
  os_unfair_lock_unlock(v52 + 28);

  *buf = 136447746;
  v168 = "nw_flow_add_write_request";
  v169 = 2082;
  id_str = v34;
  v171 = 2082;
  v172 = v18;
  v173 = 2082;
  v174 = v21;
  v175 = 2082;
  v176 = v38;
  v177 = 2082;
  v178 = v42;
  v179 = 2114;
  v180 = v53;
  _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] cannot accept write requests", buf, 0x48u);

LABEL_63:
  v54 = 0;
LABEL_131:
  v6 = v164;
LABEL_220:

  return v54;
}

uint64_t nw_write_request_list_append(void *a1, void *a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v4)
  {
    v18 = __nwlog_obj();
    *buf = 136446210;
    v45 = "nw_write_request_list_append";
    v19 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v42 = 0;
    if (__nwlog_fault(v19, &type, &v42))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v20 = __nwlog_obj();
        v21 = type;
        if (os_log_type_enabled(v20, type))
        {
          *buf = 136446210;
          v45 = "nw_write_request_list_append";
          _os_log_impl(&dword_181A37000, v20, v21, "%{public}s called with null request", buf, 0xCu);
        }
      }

      else if (v42 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v20 = __nwlog_obj();
        v31 = type;
        v32 = os_log_type_enabled(v20, type);
        if (backtrace_string)
        {
          if (v32)
          {
            *buf = 136446466;
            v45 = "nw_write_request_list_append";
            v46 = 2082;
            v47 = backtrace_string;
            _os_log_impl(&dword_181A37000, v20, v31, "%{public}s called with null request, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_70;
        }

        if (v32)
        {
          *buf = 136446210;
          v45 = "nw_write_request_list_append";
          _os_log_impl(&dword_181A37000, v20, v31, "%{public}s called with null request, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v20 = __nwlog_obj();
        v36 = type;
        if (os_log_type_enabled(v20, type))
        {
          *buf = 136446210;
          v45 = "nw_write_request_list_append";
          _os_log_impl(&dword_181A37000, v20, v36, "%{public}s called with null request, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_70:
    if (v19)
    {
      free(v19);
    }

    v11 = 0;
    goto LABEL_32;
  }

  if (!v4[1])
  {
    if (!v4[2])
    {
      goto LABEL_4;
    }

    goto LABEL_40;
  }

  v22 = __nwlog_obj();
  os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
  *buf = 136446210;
  v45 = "nw_write_request_list_append";
  v23 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v23);
  if (result)
  {
    goto LABEL_78;
  }

  free(v23);
  if (*(v5 + 2))
  {
LABEL_40:
    v24 = __nwlog_obj();
    os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
    *buf = 136446210;
    v45 = "nw_write_request_list_append";
    v25 = _os_log_send_and_compose_impl();

    result = __nwlog_should_abort(v25);
    if (result)
    {
      goto LABEL_78;
    }

    free(v25);
  }

LABEL_4:
  v6 = *(v5 + 8);
  v7 = v6;
  if (v6)
  {
    if (v6 != &__block_literal_global_10_44685 && v6 != &__block_literal_global_8_44676 && v6 != &__block_literal_global_6_44667 && v6 != &__block_literal_global_44658)
    {
      os_unfair_lock_lock(v6 + 28);
      if (!*&v7[18]._os_unfair_lock_opaque)
      {
        *&v7[18]._os_unfair_lock_opaque = mach_absolute_time();
        v8 = *&v7[24]._os_unfair_lock_opaque;
        *&v7[24]._os_unfair_lock_opaque = 0;
      }

      os_unfair_lock_unlock(v7 + 28);
    }

    goto LABEL_12;
  }

  v26 = __nwlog_obj();
  *buf = 136446210;
  v45 = "nw_content_context_mark_enqueue_time";
  v27 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v42 = 0;
  if (__nwlog_fault(v27, &type, &v42))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v28 = __nwlog_obj();
      v29 = type;
      if (os_log_type_enabled(v28, type))
      {
        *buf = 136446210;
        v45 = "nw_content_context_mark_enqueue_time";
        _os_log_impl(&dword_181A37000, v28, v29, "%{public}s called with null context", buf, 0xCu);
      }
    }

    else if (v42 == 1)
    {
      v33 = __nw_create_backtrace_string();
      v28 = __nwlog_obj();
      v34 = type;
      v35 = os_log_type_enabled(v28, type);
      if (v33)
      {
        if (v35)
        {
          *buf = 136446466;
          v45 = "nw_content_context_mark_enqueue_time";
          v46 = 2082;
          v47 = v33;
          _os_log_impl(&dword_181A37000, v28, v34, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v33);
        goto LABEL_76;
      }

      if (v35)
      {
        *buf = 136446210;
        v45 = "nw_content_context_mark_enqueue_time";
        _os_log_impl(&dword_181A37000, v28, v34, "%{public}s called with null context, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v28 = __nwlog_obj();
      v37 = type;
      if (os_log_type_enabled(v28, type))
      {
        *buf = 136446210;
        v45 = "nw_content_context_mark_enqueue_time";
        _os_log_impl(&dword_181A37000, v28, v37, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_76:
  if (v27)
  {
    free(v27);
  }

LABEL_12:

  if (!v3)
  {
    if (!*(v5 + 2))
    {
      *(v5 + 2) = v5;
    }

    v11 = v5;
    v3 = 0;
    goto LABEL_32;
  }

  v9 = v3[2];
  if (!v9)
  {
    v10 = *(v5 + 15);
LABEL_21:
    if (v10 > *(v3 + 15))
    {
      v12 = *(v5 + 1);
      *(v5 + 1) = v3;
      v13 = v3;

      *(v5 + 2) = v3[2];
      v3[2] = 0;

      v14 = v5;
LABEL_31:
      v3 = v14;
      v11 = v14;
LABEL_32:

      return v11;
    }

    v15 = v3;
    while (1)
    {
      v16 = v15;
      v15 = v15[1];
      if (!v15)
      {
        break;
      }

      if (v10 > *(v15 + 15))
      {
        objc_storeStrong(v5 + 1, v15);
        objc_storeStrong(v16 + 1, a2);
        goto LABEL_30;
      }
    }

    if (v9 != v16)
    {
      v40 = __nwlog_obj();
      os_log_type_enabled(v40, OS_LOG_TYPE_ERROR);
      *buf = 136446210;
      v45 = "nw_write_request_list_append";
      v41 = _os_log_send_and_compose_impl();

      result = __nwlog_should_abort(v41);
      if (result)
      {
        goto LABEL_78;
      }

      free(v41);
    }

    objc_storeStrong(v16 + 1, a2);
LABEL_29:
    v3[2] = v5;
LABEL_30:
    v14 = v3;
    goto LABEL_31;
  }

  v10 = *(v5 + 15);
  if (*(v9 + 120) < v10)
  {
    goto LABEL_21;
  }

  if (!*(v9 + 8))
  {
LABEL_16:
    objc_storeStrong((v9 + 8), a2);
    goto LABEL_29;
  }

  v38 = __nwlog_obj();
  os_log_type_enabled(v38, OS_LOG_TYPE_ERROR);
  *buf = 136446210;
  v45 = "nw_write_request_list_append";
  v39 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v39);
  if (!result)
  {
    free(v39);
    v9 = v3[2];
    goto LABEL_16;
  }

LABEL_78:
  __break(1u);
  return result;
}

void nw_content_context_set_metadata_for_protocol(nw_content_context_t context, nw_protocol_metadata_t protocol_metadata)
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = context;
  v4 = protocol_metadata;
  v5 = v4;
  if (!v3)
  {
    v23 = __nwlog_obj();
    *buf = 136446210;
    v40 = "nw_content_context_set_metadata_for_protocol";
    v24 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v37 = 0;
    if (!__nwlog_fault(v24, &type, &v37))
    {
      goto LABEL_84;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v25 = __nwlog_obj();
      v26 = type;
      if (os_log_type_enabled(v25, type))
      {
        *buf = 136446210;
        v40 = "nw_content_context_set_metadata_for_protocol";
        _os_log_impl(&dword_181A37000, v25, v26, "%{public}s called with null context", buf, 0xCu);
      }
    }

    else if (v37 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v25 = __nwlog_obj();
      v30 = type;
      v31 = os_log_type_enabled(v25, type);
      if (backtrace_string)
      {
        if (v31)
        {
          *buf = 136446466;
          v40 = "nw_content_context_set_metadata_for_protocol";
          v41 = 2082;
          v42 = backtrace_string;
          _os_log_impl(&dword_181A37000, v25, v30, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_84:
        if (!v24)
        {
          goto LABEL_50;
        }

        goto LABEL_85;
      }

      if (v31)
      {
        *buf = 136446210;
        v40 = "nw_content_context_set_metadata_for_protocol";
        _os_log_impl(&dword_181A37000, v25, v30, "%{public}s called with null context, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v25 = __nwlog_obj();
      v35 = type;
      if (os_log_type_enabled(v25, type))
      {
        *buf = 136446210;
        v40 = "nw_content_context_set_metadata_for_protocol";
        _os_log_impl(&dword_181A37000, v25, v35, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_83:

    goto LABEL_84;
  }

  if (!v4)
  {
    v27 = __nwlog_obj();
    *buf = 136446210;
    v40 = "nw_content_context_set_metadata_for_protocol";
    v24 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v37 = 0;
    if (!__nwlog_fault(v24, &type, &v37))
    {
      goto LABEL_84;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v25 = __nwlog_obj();
      v28 = type;
      if (os_log_type_enabled(v25, type))
      {
        *buf = 136446210;
        v40 = "nw_content_context_set_metadata_for_protocol";
        _os_log_impl(&dword_181A37000, v25, v28, "%{public}s called with null protocol_metadata", buf, 0xCu);
      }
    }

    else if (v37 == 1)
    {
      v32 = __nw_create_backtrace_string();
      v25 = __nwlog_obj();
      v33 = type;
      v34 = os_log_type_enabled(v25, type);
      if (v32)
      {
        if (v34)
        {
          *buf = 136446466;
          v40 = "nw_content_context_set_metadata_for_protocol";
          v41 = 2082;
          v42 = v32;
          _os_log_impl(&dword_181A37000, v25, v33, "%{public}s called with null protocol_metadata, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v32);
        if (!v24)
        {
          goto LABEL_50;
        }

LABEL_85:
        free(v24);
        goto LABEL_50;
      }

      if (v34)
      {
        *buf = 136446210;
        v40 = "nw_content_context_set_metadata_for_protocol";
        _os_log_impl(&dword_181A37000, v25, v33, "%{public}s called with null protocol_metadata, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v25 = __nwlog_obj();
      v36 = type;
      if (os_log_type_enabled(v25, type))
      {
        *buf = 136446210;
        v40 = "nw_content_context_set_metadata_for_protocol";
        _os_log_impl(&dword_181A37000, v25, v36, "%{public}s called with null protocol_metadata, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_83;
  }

  if (v3 == &__block_literal_global_10_44685 || v3 == &__block_literal_global_8_44676 || v3 == &__block_literal_global_6_44667 || v3 == &__block_literal_global_44658)
  {
    goto LABEL_50;
  }

  os_unfair_lock_lock(&v3[14]);
  v6 = 0;
  v7 = 0;
  isa = v3[11].isa;
  if (!isa)
  {
LABEL_16:
    v12 = 0;
LABEL_29:
    v14 = _nw_array_create();
    if (!v14)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  while (1)
  {
    count = _nw_array_get_count(isa);
    v10 = v3[11].isa;
    if (v6 >= count)
    {
      v12 = 0;
      if (!v10)
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (!v10 || (_nw_array_get_object_at_index(v10, v6), v11 = objc_claimAutoreleasedReturnValue(), (v12 = v11) == 0))
    {
      v15 = __nwlog_obj();
      *buf = 136446210;
      v40 = "nw_content_context_set_metadata_for_protocol";
      v16 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v37 = 0;
      if (__nwlog_fault(v16, &type, &v37))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v17 = __nwlog_obj();
          v18 = type;
          if (os_log_type_enabled(v17, type))
          {
            *buf = 136446210;
            v40 = "nw_content_context_set_metadata_for_protocol";
            _os_log_impl(&dword_181A37000, v17, v18, "%{public}s called with null match_protocol", buf, 0xCu);
          }
        }

        else if (v37 == 1)
        {
          v19 = __nw_create_backtrace_string();
          v17 = __nwlog_obj();
          v20 = type;
          v21 = os_log_type_enabled(v17, type);
          if (v19)
          {
            if (v21)
            {
              *buf = 136446466;
              v40 = "nw_content_context_set_metadata_for_protocol";
              v41 = 2082;
              v42 = v19;
              _os_log_impl(&dword_181A37000, v17, v20, "%{public}s called with null match_protocol, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v19);
            if (!v16)
            {
              goto LABEL_48;
            }

            goto LABEL_47;
          }

          if (v21)
          {
            *buf = 136446210;
            v40 = "nw_content_context_set_metadata_for_protocol";
            _os_log_impl(&dword_181A37000, v17, v20, "%{public}s called with null match_protocol, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          v17 = __nwlog_obj();
          v22 = type;
          if (os_log_type_enabled(v17, type))
          {
            *buf = 136446210;
            v40 = "nw_content_context_set_metadata_for_protocol";
            _os_log_impl(&dword_181A37000, v17, v22, "%{public}s called with null match_protocol, backtrace limit exceeded", buf, 0xCu);
          }
        }
      }

      if (!v16)
      {
        goto LABEL_48;
      }

LABEL_47:
      free(v16);
      goto LABEL_48;
    }

    if (v11 == v5)
    {

      os_unfair_lock_unlock(&v3[14]);
LABEL_48:
      v12 = 0;
      goto LABEL_49;
    }

    if (!v7)
    {
      v7 = _nw_protocol_metadata_copy_definition(v5);
    }

    if (nw_protocol_metadata_matches_definition(v12, v7))
    {
      break;
    }

    ++v6;
    isa = v3[11].isa;
    if (!isa)
    {
      goto LABEL_16;
    }
  }

  v10 = v3[11].isa;
  if (!v10)
  {
    goto LABEL_29;
  }

LABEL_18:
  v13 = _nw_array_copy(v10);
  v14 = v13;
  if (v12)
  {
    nw_array_remove_object(v13, v12);
  }

  if (v14)
  {
LABEL_30:
    _nw_array_append(v14, v5);
  }

LABEL_31:
  objc_storeStrong(&v3[11].isa, v14);
  if (_nw_protocol_metadata_supports_replies(v5))
  {
    BYTE6(v3[14].isa) |= 0x40u;
  }

  os_unfair_lock_unlock(&v3[14]);

LABEL_49:
LABEL_50:
}

uint64_t _nw_protocol_metadata_create_singleton()
{
  swift_unknownObjectRetain();
  v0 = sub_181A92540();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_181A92460(uint64_t a1)
{
  *(v1 + 16) = a1;
  *(v1 + 24) = 0;
  v2 = swift_unknownObjectRetain();
  metadata_size = nw_protocol_definition_get_metadata_size(v2);
  if (metadata_size)
  {
    v4 = metadata_size;
    metadata_initializer = nw_protocol_definition_get_metadata_initializer(*(v1 + 16));
    if (metadata_initializer)
    {
      v6 = metadata_initializer;
      v7 = swift_slowAlloc();
      *(v1 + 24) = v7;
      bzero(v7, v4);
      v8 = swift_unknownObjectRetain();
      v6(v8, v7);
      swift_unknownObjectRelease();
LABEL_6:
      swift_unknownObjectRelease();
      return v1;
    }
  }

  metadata_allocator = nw_protocol_definition_get_metadata_allocator(*(v1 + 16));
  if (!metadata_allocator)
  {
    goto LABEL_6;
  }

  v10 = metadata_allocator;
  v11 = swift_unknownObjectRetain();
  v12 = v10(v11);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  *(v1 + 24) = v12;
  return v1;
}

uint64_t sub_181A92540()
{
  v17 = *MEMORY[0x1E69E9840];
  v0 = swift_unknownObjectRetain_n();
  sub_181AA82B4(&v12, v0, 0, 0, 0, 255, v0);
  v11 = 0uLL;
  nw_uuid_generate_insecure_5(&v11);
  v10 = v11;
  v1 = v12;
  v2 = BYTE1(v12);
  v3 = v13;
  v4 = v14;
  v5 = v15;
  v6 = v16;
  if (v16)
  {
    type metadata accessor for CProtocol.CMetadata();
    swift_allocObject();
    sub_181F49A24(v3, v4, v5);
    v7 = swift_unknownObjectRetain();
    v6 = sub_181A92460(v7);
  }

  else
  {
    sub_181F49A24(v13, v14, v15);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AA60);
  v8 = swift_allocObject();
  *(v8 + 57) = 0;
  *(v8 + 64) = 0;
  *(v8 + 16) = v1;
  *(v8 + 17) = v2;
  *(v8 + 24) = v3;
  *(v8 + 32) = v4;
  *(v8 + 40) = v5;
  *(v8 + 41) = v10;
  swift_beginAccess();
  *(v8 + 64) = v6;
  sub_181A93268(&v12);
  *(v8 + 57) = 1;
  return v8;
}

uint64_t nw_protocol_definition_get_metadata_size(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1[10];
    if (v2)
    {
      v3 = *(v2 + 268);
    }

    else
    {
      v3 = 0;
    }

    goto LABEL_5;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_protocol_definition_get_metadata_size";
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
        v16 = "nw_protocol_definition_get_metadata_size";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null definition", buf, 0xCu);
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
          v16 = "nw_protocol_definition_get_metadata_size";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_protocol_definition_get_metadata_size";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null definition, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_protocol_definition_get_metadata_size";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_22:
  if (v6)
  {
    free(v6);
  }

  v3 = 0;
  v1 = 0;
LABEL_5:

  return v3;
}

uint64_t nw_protocol_definition_get_metadata_allocator(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1[18];
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_protocol_definition_get_metadata_allocator";
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
        v15 = "nw_protocol_definition_get_metadata_allocator";
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
          v15 = "nw_protocol_definition_get_metadata_allocator";
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
        v15 = "nw_protocol_definition_get_metadata_allocator";
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
        v15 = "nw_protocol_definition_get_metadata_allocator";
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

void nw_uuid_generate_insecure(_OWORD *a1)
{
  if (!a1)
  {
    return;
  }

  os_unfair_lock_lock(&nw_uuid_generate_insecure_uuid_lock);
  if (uuid_is_null(&nw_uuid_generate_insecure_last_used_uuid))
  {
    goto LABEL_8;
  }

  if (nw_uuid_generate_insecure_last_used_uuid == -1)
  {
    if (*(&nw_uuid_generate_insecure_last_used_uuid + 1) != -1)
    {
      ++*(&nw_uuid_generate_insecure_last_used_uuid + 1);
      goto LABEL_9;
    }

LABEL_8:
    uuid_generate_random(&nw_uuid_generate_insecure_last_used_uuid);
    BYTE9(nw_uuid_generate_insecure_last_used_uuid) = -1;
    goto LABEL_9;
  }

  *&nw_uuid_generate_insecure_last_used_uuid = nw_uuid_generate_insecure_last_used_uuid + 1;
LABEL_9:
  *a1 = nw_uuid_generate_insecure_last_used_uuid;

  os_unfair_lock_unlock(&nw_uuid_generate_insecure_uuid_lock);
}

void nw_uuid_generate_insecure_0(_OWORD *a1)
{
  if (!a1)
  {
    return;
  }

  os_unfair_lock_lock(&nw_uuid_generate_insecure_uuid_lock_0);
  if (uuid_is_null(&nw_uuid_generate_insecure_last_used_uuid_0))
  {
    goto LABEL_8;
  }

  if (nw_uuid_generate_insecure_last_used_uuid_0 == -1)
  {
    if (*(&nw_uuid_generate_insecure_last_used_uuid_0 + 1) != -1)
    {
      ++*(&nw_uuid_generate_insecure_last_used_uuid_0 + 1);
      goto LABEL_9;
    }

LABEL_8:
    uuid_generate_random(&nw_uuid_generate_insecure_last_used_uuid_0);
    BYTE9(nw_uuid_generate_insecure_last_used_uuid_0) = -1;
    goto LABEL_9;
  }

  *&nw_uuid_generate_insecure_last_used_uuid_0 = nw_uuid_generate_insecure_last_used_uuid_0 + 1;
LABEL_9:
  *a1 = nw_uuid_generate_insecure_last_used_uuid_0;

  os_unfair_lock_unlock(&nw_uuid_generate_insecure_uuid_lock_0);
}

void nw_uuid_generate_insecure_1(_OWORD *a1)
{
  if (!a1)
  {
    return;
  }

  os_unfair_lock_lock(&nw_uuid_generate_insecure_uuid_lock_1);
  if (uuid_is_null(&nw_uuid_generate_insecure_last_used_uuid_1))
  {
    goto LABEL_8;
  }

  if (nw_uuid_generate_insecure_last_used_uuid_1 == -1)
  {
    if (*(&nw_uuid_generate_insecure_last_used_uuid_1 + 1) != -1)
    {
      ++*(&nw_uuid_generate_insecure_last_used_uuid_1 + 1);
      goto LABEL_9;
    }

LABEL_8:
    uuid_generate_random(&nw_uuid_generate_insecure_last_used_uuid_1);
    BYTE9(nw_uuid_generate_insecure_last_used_uuid_1) = -1;
    goto LABEL_9;
  }

  *&nw_uuid_generate_insecure_last_used_uuid_1 = nw_uuid_generate_insecure_last_used_uuid_1 + 1;
LABEL_9:
  *a1 = nw_uuid_generate_insecure_last_used_uuid_1;

  os_unfair_lock_unlock(&nw_uuid_generate_insecure_uuid_lock_1);
}

void nw_uuid_generate_insecure_2(_OWORD *a1)
{
  if (!a1)
  {
    return;
  }

  os_unfair_lock_lock(&nw_uuid_generate_insecure_uuid_lock_2);
  if (uuid_is_null(&nw_uuid_generate_insecure_last_used_uuid_2))
  {
    goto LABEL_8;
  }

  if (nw_uuid_generate_insecure_last_used_uuid_2 == -1)
  {
    if (*(&nw_uuid_generate_insecure_last_used_uuid_2 + 1) != -1)
    {
      ++*(&nw_uuid_generate_insecure_last_used_uuid_2 + 1);
      goto LABEL_9;
    }

LABEL_8:
    uuid_generate_random(&nw_uuid_generate_insecure_last_used_uuid_2);
    BYTE9(nw_uuid_generate_insecure_last_used_uuid_2) = -1;
    goto LABEL_9;
  }

  *&nw_uuid_generate_insecure_last_used_uuid_2 = nw_uuid_generate_insecure_last_used_uuid_2 + 1;
LABEL_9:
  *a1 = nw_uuid_generate_insecure_last_used_uuid_2;

  os_unfair_lock_unlock(&nw_uuid_generate_insecure_uuid_lock_2);
}

void nw_uuid_generate_insecure_3(_OWORD *a1)
{
  if (!a1)
  {
    return;
  }

  os_unfair_lock_lock(&nw_uuid_generate_insecure_uuid_lock_3);
  if (uuid_is_null(&nw_uuid_generate_insecure_last_used_uuid_3))
  {
    goto LABEL_8;
  }

  if (nw_uuid_generate_insecure_last_used_uuid_3 == -1)
  {
    if (*(&nw_uuid_generate_insecure_last_used_uuid_3 + 1) != -1)
    {
      ++*(&nw_uuid_generate_insecure_last_used_uuid_3 + 1);
      goto LABEL_9;
    }

LABEL_8:
    uuid_generate_random(&nw_uuid_generate_insecure_last_used_uuid_3);
    BYTE9(nw_uuid_generate_insecure_last_used_uuid_3) = -1;
    goto LABEL_9;
  }

  *&nw_uuid_generate_insecure_last_used_uuid_3 = nw_uuid_generate_insecure_last_used_uuid_3 + 1;
LABEL_9:
  *a1 = nw_uuid_generate_insecure_last_used_uuid_3;

  os_unfair_lock_unlock(&nw_uuid_generate_insecure_uuid_lock_3);
}

void nw_uuid_generate_insecure_4(_OWORD *a1)
{
  if (!a1)
  {
    return;
  }

  os_unfair_lock_lock(&nw_uuid_generate_insecure_uuid_lock_4);
  if (uuid_is_null(&nw_uuid_generate_insecure_last_used_uuid_4))
  {
    goto LABEL_8;
  }

  if (nw_uuid_generate_insecure_last_used_uuid_4 == -1)
  {
    if (*(&nw_uuid_generate_insecure_last_used_uuid_4 + 1) != -1)
    {
      ++*(&nw_uuid_generate_insecure_last_used_uuid_4 + 1);
      goto LABEL_9;
    }

LABEL_8:
    uuid_generate_random(&nw_uuid_generate_insecure_last_used_uuid_4);
    BYTE9(nw_uuid_generate_insecure_last_used_uuid_4) = -1;
    goto LABEL_9;
  }

  *&nw_uuid_generate_insecure_last_used_uuid_4 = nw_uuid_generate_insecure_last_used_uuid_4 + 1;
LABEL_9:
  *a1 = nw_uuid_generate_insecure_last_used_uuid_4;

  os_unfair_lock_unlock(&nw_uuid_generate_insecure_uuid_lock_4);
}

void nw_uuid_generate_insecure_5(_OWORD *a1)
{
  if (!a1)
  {
    return;
  }

  os_unfair_lock_lock(&nw_uuid_generate_insecure_uuid_lock_5);
  if (uuid_is_null(&nw_uuid_generate_insecure_last_used_uuid_5))
  {
    goto LABEL_8;
  }

  if (nw_uuid_generate_insecure_last_used_uuid_5 == -1)
  {
    if (*(&nw_uuid_generate_insecure_last_used_uuid_5 + 1) != -1)
    {
      ++*(&nw_uuid_generate_insecure_last_used_uuid_5 + 1);
      goto LABEL_9;
    }

LABEL_8:
    uuid_generate_random(&nw_uuid_generate_insecure_last_used_uuid_5);
    BYTE9(nw_uuid_generate_insecure_last_used_uuid_5) = -1;
    goto LABEL_9;
  }

  *&nw_uuid_generate_insecure_last_used_uuid_5 = nw_uuid_generate_insecure_last_used_uuid_5 + 1;
LABEL_9:
  *a1 = nw_uuid_generate_insecure_last_used_uuid_5;

  os_unfair_lock_unlock(&nw_uuid_generate_insecure_uuid_lock_5);
}

void nw_uuid_generate_insecure_6(_OWORD *a1)
{
  if (!a1)
  {
    return;
  }

  os_unfair_lock_lock(&nw_uuid_generate_insecure_uuid_lock_6);
  if (uuid_is_null(&nw_uuid_generate_insecure_last_used_uuid_6))
  {
    goto LABEL_8;
  }

  if (nw_uuid_generate_insecure_last_used_uuid_6 == -1)
  {
    if (*(&nw_uuid_generate_insecure_last_used_uuid_6 + 1) != -1)
    {
      ++*(&nw_uuid_generate_insecure_last_used_uuid_6 + 1);
      goto LABEL_9;
    }

LABEL_8:
    uuid_generate_random(&nw_uuid_generate_insecure_last_used_uuid_6);
    BYTE9(nw_uuid_generate_insecure_last_used_uuid_6) = -1;
    goto LABEL_9;
  }

  *&nw_uuid_generate_insecure_last_used_uuid_6 = nw_uuid_generate_insecure_last_used_uuid_6 + 1;
LABEL_9:
  *a1 = nw_uuid_generate_insecure_last_used_uuid_6;

  os_unfair_lock_unlock(&nw_uuid_generate_insecure_uuid_lock_6);
}

void nw_uuid_generate_insecure_7(_OWORD *a1)
{
  if (!a1)
  {
    return;
  }

  os_unfair_lock_lock(&nw_uuid_generate_insecure_uuid_lock_7);
  if (uuid_is_null(&nw_uuid_generate_insecure_last_used_uuid_7))
  {
    goto LABEL_8;
  }

  if (nw_uuid_generate_insecure_last_used_uuid_7 == -1)
  {
    if (*(&nw_uuid_generate_insecure_last_used_uuid_7 + 1) != -1)
    {
      ++*(&nw_uuid_generate_insecure_last_used_uuid_7 + 1);
      goto LABEL_9;
    }

LABEL_8:
    uuid_generate_random(&nw_uuid_generate_insecure_last_used_uuid_7);
    BYTE9(nw_uuid_generate_insecure_last_used_uuid_7) = -1;
    goto LABEL_9;
  }

  *&nw_uuid_generate_insecure_last_used_uuid_7 = nw_uuid_generate_insecure_last_used_uuid_7 + 1;
LABEL_9:
  *a1 = nw_uuid_generate_insecure_last_used_uuid_7;

  os_unfair_lock_unlock(&nw_uuid_generate_insecure_uuid_lock_7);
}

uint64_t sub_181A93268(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_181A932D0(uint64_t a1)
{
  sub_18214F564(a1);
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  return result;
}

void nw_connection_async_if_needed(void *a1, void *a2)
{
  v4 = a1;
  v3 = a2;
  if (v4[5] && !dispatch_workloop_is_current())
  {
    dispatch_async(v4[4], v3);
  }

  else
  {
    v3[2](v3);
  }
}

void nw_queue_set_timer_values(uint64_t a1, dispatch_time_t a2, uint64_t a3, uint64_t a4)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (*a1)
    {
      v4 = *a1;

      dispatch_source_set_timer(v4, a2, a3, a4);
    }

    else
    {
      *(a1 + 32) = a2;
      *(a1 + 40) = a3;
      if (*(a1 + 48) == 1 && *(a1 + 49) == 1)
      {

        nw_queue_source_run_timer(a1, a2);
      }
    }

    return;
  }

  v5 = __nwlog_obj(0, a2);
  *buf = 136446210;
  v18 = "nw_queue_set_timer_values";
  v6 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v15 = 0;
  v7 = __nwlog_fault(v6, &type, &v15);
  if (v7)
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj(v7, v8);
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v18 = "nw_queue_set_timer_values";
        v11 = "%{public}s called with null source";
LABEL_24:
        _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0xCu);
      }
    }

    else
    {
      if (v15 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v9 = __nwlog_obj(backtrace_string, v13);
        v10 = type;
        v14 = os_log_type_enabled(v9, type);
        if (backtrace_string)
        {
          if (v14)
          {
            *buf = 136446466;
            v18 = "nw_queue_set_timer_values";
            v19 = 2082;
            v20 = backtrace_string;
            _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null source, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_26;
        }

        if (!v14)
        {
          goto LABEL_25;
        }

        *buf = 136446210;
        v18 = "nw_queue_set_timer_values";
        v11 = "%{public}s called with null source, no backtrace";
        goto LABEL_24;
      }

      v9 = __nwlog_obj(v7, v8);
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v18 = "nw_queue_set_timer_values";
        v11 = "%{public}s called with null source, backtrace limit exceeded";
        goto LABEL_24;
      }
    }

LABEL_25:
  }

LABEL_26:
  if (v6)
  {
    free(v6);
  }
}

uint64_t sub_181A93698(uint64_t a1, void (*a2)(uint64_t *__return_ptr))
{
  sub_18214F564(a1);
  if (!swift_dynamicCastClass())
  {
    swift_unknownObjectRelease();
  }

  a2(&v4);

  return v4;
}

uint64_t nw_frame_create(int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v29 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  v10 = _os_object_alloc();
  v11 = v10;
  if (v10)
  {
    if (a1)
    {
      *(v10 + 204) |= 4u;
    }

    nw_frame_reset(v10, a2, a3, a4, a5);
    return v11;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v26 = "nw_frame_create";
  v12 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v23 = 0;
  if (__nwlog_fault(v12, &type, &v23))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v14 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_18;
      }

      *buf = 136446210;
      v26 = "nw_frame_create";
      v15 = "%{public}s nw_frame_obj_alloc failed";
LABEL_16:
      v20 = v13;
      v21 = v14;
LABEL_17:
      _os_log_impl(&dword_181A37000, v20, v21, v15, buf, 0xCu);
      goto LABEL_18;
    }

    if (v23 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v14 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_18;
      }

      *buf = 136446210;
      v26 = "nw_frame_create";
      v15 = "%{public}s nw_frame_obj_alloc failed, backtrace limit exceeded";
      goto LABEL_16;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v17 = gLogObj;
    v18 = type;
    v19 = os_log_type_enabled(gLogObj, type);
    if (backtrace_string)
    {
      if (v19)
      {
        *buf = 136446466;
        v26 = "nw_frame_create";
        v27 = 2082;
        v28 = backtrace_string;
        _os_log_impl(&dword_181A37000, v17, v18, "%{public}s nw_frame_obj_alloc failed, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_18;
    }

    if (v19)
    {
      *buf = 136446210;
      v26 = "nw_frame_create";
      v15 = "%{public}s nw_frame_obj_alloc failed, no backtrace";
      v20 = v17;
      v21 = v18;
      goto LABEL_17;
    }
  }

LABEL_18:
  if (v12)
  {
    free(v12);
  }

  return v11;
}

uint64_t nw_frame_get_metadata(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if ((*(a1 + 204) & 4) != 0)
    {
      return a1 + 208;
    }

    else
    {
      return 0;
    }
  }

  __nwlog_obj();
  *buf = 136446210;
  v11 = "__nw_frame_get_metadata";
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
        v11 = "__nw_frame_get_metadata";
        v5 = "%{public}s called with null frame";
LABEL_19:
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
          v11 = "__nw_frame_get_metadata";
          v12 = 2082;
          v13 = backtrace_string;
          _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v7)
      {
        *buf = 136446210;
        v11 = "__nw_frame_get_metadata";
        v5 = "%{public}s called with null frame, no backtrace";
        goto LABEL_19;
      }
    }

    else
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (os_log_type_enabled(v3, type))
      {
        *buf = 136446210;
        v11 = "__nw_frame_get_metadata";
        v5 = "%{public}s called with null frame, backtrace limit exceeded";
        goto LABEL_19;
      }
    }
  }

LABEL_20:
  if (v2)
  {
    free(v2);
  }

  return 0;
}

uint64_t nw_frame_unclaimed_bytes(uint64_t a1, _DWORD *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v17 = "__nw_frame_unclaimed_bytes";
    v8 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v14 = 0;
    if (!__nwlog_fault(v8, &type, &v14))
    {
      goto LABEL_27;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_27;
      }

      *buf = 136446210;
      v17 = "__nw_frame_unclaimed_bytes";
      v11 = "%{public}s called with null frame";
    }

    else if (v14 == 1)
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
          v17 = "__nw_frame_unclaimed_bytes";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_27;
      }

      if (!v13)
      {
LABEL_27:
        if (v8)
        {
          free(v8);
        }

        return 0;
      }

      *buf = 136446210;
      v17 = "__nw_frame_unclaimed_bytes";
      v11 = "%{public}s called with null frame, no backtrace";
    }

    else
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_27;
      }

      *buf = 136446210;
      v17 = "__nw_frame_unclaimed_bytes";
      v11 = "%{public}s called with null frame, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0xCu);
    goto LABEL_27;
  }

  if (!*(a1 + 112))
  {
    return 0;
  }

  if ((*(a1 + 204) & 0x100) != 0 && g_channel_check_validity && (v2 = a1, v3 = a2, v4 = g_channel_check_validity(a1, *(a1 + 88)), a2 = v3, v5 = v4, a1 = v2, (v5 & 1) == 0))
  {
    result = 0;
    if (v3)
    {
      *v3 = 0;
    }
  }

  else
  {
    if (a2)
    {
      v6 = *(a1 + 52);
      if (v6)
      {
        v6 -= *(a1 + 56) + *(a1 + 60);
      }

      *a2 = v6;
    }

    return *(a1 + 112) + *(a1 + 56);
  }

  return result;
}

void nw_frame_reset(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v7 = a1 + 64;
    v6 = *(a1 + 64);
    *(a1 + 80) = a4;
    *(a1 + 88) = a5;
    *(a1 + 104) = 0;
    *(a1 + 112) = a2;
    *(a1 + 196) = 0;
    *(a1 + 48) = a3;
    *(a1 + 52) = a3;
    *(a1 + 56) = 0;
    *(a1 + 192) = 0;
    *(a1 + 200) = 0;
    *(a1 + 204) &= 0xFFC7u;
    if (v6)
    {
      v8 = (a1 + 120);
      do
      {
        v9 = *v6;
        v10 = v6[6];
        v11 = *v6;
        if (v10)
        {
          os_release(v10);
          v6[6] = 0;
          v11 = *v6;
        }

        v12 = v6[1];
        v13 = v11 + 1;
        if (!v11)
        {
          v13 = (a1 + 72);
        }

        *v13 = v12;
        *v12 = v11;
        if (v6 != v8)
        {
          free(v6);
        }

        v6 = v9;
      }

      while (v9);
    }

    *(a1 + 64) = 0;
    *(a1 + 72) = v7;
    v14 = *(a1 + 168);
    if (v14)
    {
      os_release(v14);
    }

    *(a1 + 184) = 0;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 204) &= 0x413Fu;
    *(a1 + 206) &= ~1u;
    *(a1 + 203) = 0;
    *(a1 + 198) = 0;
    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v24 = "__nw_frame_reset";
  v15 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v21 = 0;
  if (__nwlog_fault(v15, &type, &v21))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v16 = __nwlog_obj();
      v17 = type;
      if (!os_log_type_enabled(v16, type))
      {
        goto LABEL_29;
      }

      *buf = 136446210;
      v24 = "__nw_frame_reset";
      v18 = "%{public}s called with null frame";
      goto LABEL_28;
    }

    if (v21 != 1)
    {
      v16 = __nwlog_obj();
      v17 = type;
      if (!os_log_type_enabled(v16, type))
      {
        goto LABEL_29;
      }

      *buf = 136446210;
      v24 = "__nw_frame_reset";
      v18 = "%{public}s called with null frame, backtrace limit exceeded";
      goto LABEL_28;
    }

    backtrace_string = __nw_create_backtrace_string();
    v16 = __nwlog_obj();
    v17 = type;
    v20 = os_log_type_enabled(v16, type);
    if (backtrace_string)
    {
      if (v20)
      {
        *buf = 136446466;
        v24 = "__nw_frame_reset";
        v25 = 2082;
        v26 = backtrace_string;
        _os_log_impl(&dword_181A37000, v16, v17, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_29;
    }

    if (v20)
    {
      *buf = 136446210;
      v24 = "__nw_frame_reset";
      v18 = "%{public}s called with null frame, no backtrace";
LABEL_28:
      _os_log_impl(&dword_181A37000, v16, v17, v18, buf, 0xCu);
    }
  }

LABEL_29:
  if (v15)
  {
    free(v15);
  }
}

BOOL nw_frame_claim(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v30 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if ((*(a1 + 204) & 0x80) == 0)
    {
      goto LABEL_22;
    }

    if (!a4)
    {
LABEL_21:
      *(a1 + 196) -= a3;
LABEL_22:
      v13 = *(a1 + 56) + a3;
      v14 = *(a1 + 60) + a4;
      if (v13 <= *(a1 + 52) - v14)
      {
        *(a1 + 56) = v13;
        *(a1 + 60) = v14;
        return 1;
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v15 = gLogObj;
        result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
        if (result)
        {
          v17 = *(a1 + 52);
          *buf = 136446978;
          v27 = "__nw_frame_claim_internal";
          v28 = 1024;
          LODWORD(v29) = v13;
          WORD2(v29) = 1024;
          *(&v29 + 6) = v17;
          WORD5(v29) = 1024;
          HIDWORD(v29) = v14;
          _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_ERROR, "%{public}s Claiming bytes failed because start (%u) is beyond end (%u - %u)", buf, 0x1Eu);
          return 0;
        }
      }

      return result;
    }

    v6 = a3;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446466;
    v27 = "__nw_frame_claim_internal";
    v28 = 1024;
    LODWORD(v29) = a4;
    v7 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (__nwlog_fault(v7, &type, &v24))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v9 = type;
        if (os_log_type_enabled(gLogObj, type))
        {
          *buf = 136446466;
          v27 = "__nw_frame_claim_internal";
          v28 = 1024;
          LODWORD(v29) = a4;
          v10 = "%{public}s Trying to claim at the end %u bytes from a single-IP aggregate";
LABEL_17:
          _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0x12u);
        }
      }

      else if (v24 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v9 = type;
        v12 = os_log_type_enabled(gLogObj, type);
        if (backtrace_string)
        {
          if (v12)
          {
            *buf = 136446722;
            v27 = "__nw_frame_claim_internal";
            v28 = 1024;
            LODWORD(v29) = a4;
            WORD2(v29) = 2082;
            *(&v29 + 6) = backtrace_string;
            _os_log_impl(&dword_181A37000, v8, v9, "%{public}s Trying to claim at the end %u bytes from a single-IP aggregate, dumping backtrace:%{public}s", buf, 0x1Cu);
          }

          free(backtrace_string);
          goto LABEL_18;
        }

        if (v12)
        {
          *buf = 136446466;
          v27 = "__nw_frame_claim_internal";
          v28 = 1024;
          LODWORD(v29) = a4;
          v10 = "%{public}s Trying to claim at the end %u bytes from a single-IP aggregate, no backtrace";
          goto LABEL_17;
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v9 = type;
        if (os_log_type_enabled(gLogObj, type))
        {
          *buf = 136446466;
          v27 = "__nw_frame_claim_internal";
          v28 = 1024;
          LODWORD(v29) = a4;
          v10 = "%{public}s Trying to claim at the end %u bytes from a single-IP aggregate, backtrace limit exceeded";
          goto LABEL_17;
        }
      }
    }

LABEL_18:
    if (v7)
    {
      free(v7);
    }

    a3 = v6;
    goto LABEL_21;
  }

  __nwlog_obj();
  *buf = 136446210;
  v27 = "__nw_frame_claim_internal";
  v18 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v24 = 0;
  if (__nwlog_fault(v18, &type, &v24))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v19 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        v27 = "__nw_frame_claim_internal";
        v21 = "%{public}s called with null frame";
LABEL_40:
        _os_log_impl(&dword_181A37000, v19, v20, v21, buf, 0xCu);
      }
    }

    else if (v24 == 1)
    {
      v22 = __nw_create_backtrace_string();
      v19 = __nwlog_obj();
      v20 = type;
      v23 = os_log_type_enabled(v19, type);
      if (v22)
      {
        if (v23)
        {
          *buf = 136446466;
          v27 = "__nw_frame_claim_internal";
          v28 = 2082;
          *&v29 = v22;
          _os_log_impl(&dword_181A37000, v19, v20, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v22);
        goto LABEL_41;
      }

      if (v23)
      {
        *buf = 136446210;
        v27 = "__nw_frame_claim_internal";
        v21 = "%{public}s called with null frame, no backtrace";
        goto LABEL_40;
      }
    }

    else
    {
      v19 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        v27 = "__nw_frame_claim_internal";
        v21 = "%{public}s called with null frame, backtrace limit exceeded";
        goto LABEL_40;
      }
    }
  }

LABEL_41:
  if (v18)
  {
    free(v18);
  }

  return 0;
}

void nw_frame_finalize(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v13 = "__nw_frame_finalize";
    v2 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v10 = 0;
    if (!__nwlog_fault(v2, &type, &v10))
    {
      goto LABEL_34;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v13 = "__nw_frame_finalize";
      v5 = "%{public}s called with null frame";
    }

    else if (v10 == 1)
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
          v13 = "__nw_frame_finalize";
          v14 = 2082;
          v15 = backtrace_string;
          _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_34:
        if (!v2)
        {
          return;
        }

        goto LABEL_35;
      }

      if (!v7)
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v13 = "__nw_frame_finalize";
      v5 = "%{public}s called with null frame, no backtrace";
    }

    else
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v13 = "__nw_frame_finalize";
      v5 = "%{public}s called with null frame, backtrace limit exceeded";
    }

LABEL_33:
    _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
    goto LABEL_34;
  }

  v1 = *(a1 + 80);
  if (v1)
  {
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;

    v1();
    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v13 = "__nw_frame_finalize";
  v2 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v10 = 0;
  if (!__nwlog_fault(v2, &type, &v10))
  {
    goto LABEL_34;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v3 = __nwlog_obj();
    v4 = type;
    if (!os_log_type_enabled(v3, type))
    {
      goto LABEL_34;
    }

    *buf = 136446210;
    v13 = "__nw_frame_finalize";
    v5 = "%{public}s called with null frame->finalizer";
    goto LABEL_33;
  }

  if (v10 != 1)
  {
    v3 = __nwlog_obj();
    v4 = type;
    if (!os_log_type_enabled(v3, type))
    {
      goto LABEL_34;
    }

    *buf = 136446210;
    v13 = "__nw_frame_finalize";
    v5 = "%{public}s called with null frame->finalizer, backtrace limit exceeded";
    goto LABEL_33;
  }

  v8 = __nw_create_backtrace_string();
  v3 = __nwlog_obj();
  v4 = type;
  v9 = os_log_type_enabled(v3, type);
  if (!v8)
  {
    if (!v9)
    {
      goto LABEL_34;
    }

    *buf = 136446210;
    v13 = "__nw_frame_finalize";
    v5 = "%{public}s called with null frame->finalizer, no backtrace";
    goto LABEL_33;
  }

  if (v9)
  {
    *buf = 136446466;
    v13 = "__nw_frame_finalize";
    v14 = 2082;
    v15 = v8;
    _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null frame->finalizer, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v8);
  if (v2)
  {
LABEL_35:
    free(v2);
  }
}

BOOL nw_frame_unclaim(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  *&v36[13] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v34 = "__nw_frame_unclaim_internal";
    v25 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (__nwlog_fault(v25, &type, &v31))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v26 = __nwlog_obj();
        v27 = type;
        if (os_log_type_enabled(v26, type))
        {
          *buf = 136446210;
          v34 = "__nw_frame_unclaim_internal";
          v28 = "%{public}s called with null frame";
LABEL_43:
          _os_log_impl(&dword_181A37000, v26, v27, v28, buf, 0xCu);
        }
      }

      else if (v31 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v26 = __nwlog_obj();
        v27 = type;
        v30 = os_log_type_enabled(v26, type);
        if (backtrace_string)
        {
          if (v30)
          {
            *buf = 136446466;
            v34 = "__nw_frame_unclaim_internal";
            v35 = 2082;
            *v36 = backtrace_string;
            _os_log_impl(&dword_181A37000, v26, v27, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_44;
        }

        if (v30)
        {
          *buf = 136446210;
          v34 = "__nw_frame_unclaim_internal";
          v28 = "%{public}s called with null frame, no backtrace";
          goto LABEL_43;
        }
      }

      else
      {
        v26 = __nwlog_obj();
        v27 = type;
        if (os_log_type_enabled(v26, type))
        {
          *buf = 136446210;
          v34 = "__nw_frame_unclaim_internal";
          v28 = "%{public}s called with null frame, backtrace limit exceeded";
          goto LABEL_43;
        }
      }
    }

LABEL_44:
    if (v25)
    {
      free(v25);
    }

    return 0;
  }

  if ((*(a1 + 204) & 0x80) == 0)
  {
    goto LABEL_21;
  }

  if (a4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446466;
    v34 = "__nw_frame_unclaim_internal";
    v35 = 1024;
    *v36 = a4;
    v7 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v7, &type, &v31))
    {
      goto LABEL_18;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v9 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_18;
      }

      *buf = 136446466;
      v34 = "__nw_frame_unclaim_internal";
      v35 = 1024;
      *v36 = a4;
      v10 = "%{public}s Trying to unclaim at the end %u bytes from a single-IP aggregate";
    }

    else if (v31 == 1)
    {
      v11 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v9 = type;
      v12 = os_log_type_enabled(gLogObj, type);
      if (v11)
      {
        if (v12)
        {
          *buf = 136446722;
          v34 = "__nw_frame_unclaim_internal";
          v35 = 1024;
          *v36 = a4;
          v36[2] = 2082;
          *&v36[3] = v11;
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s Trying to unclaim at the end %u bytes from a single-IP aggregate, dumping backtrace:%{public}s", buf, 0x1Cu);
        }

        free(v11);
        goto LABEL_18;
      }

      if (!v12)
      {
LABEL_18:
        if (v7)
        {
          free(v7);
        }

        goto LABEL_20;
      }

      *buf = 136446466;
      v34 = "__nw_frame_unclaim_internal";
      v35 = 1024;
      *v36 = a4;
      v10 = "%{public}s Trying to unclaim at the end %u bytes from a single-IP aggregate, no backtrace";
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v9 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_18;
      }

      *buf = 136446466;
      v34 = "__nw_frame_unclaim_internal";
      v35 = 1024;
      *v36 = a4;
      v10 = "%{public}s Trying to unclaim at the end %u bytes from a single-IP aggregate, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0x12u);
    goto LABEL_18;
  }

LABEL_20:
  *(a1 + 196) += a3;
LABEL_21:
  v13 = *(a1 + 56);
  v14 = v13 >= a3;
  v15 = v13 - a3;
  if (v14)
  {
    v21 = *(a1 + 60);
    v14 = v21 >= a4;
    v22 = v21 - a4;
    if (v14)
    {
      *(a1 + 56) = v15;
      *(a1 + 60) = v22;
      return 1;
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v23 = gLogObj;
      result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
      if (result)
      {
        v24 = *(a1 + 60);
        *buf = 136446722;
        v34 = "__nw_frame_unclaim_internal";
        v35 = 1024;
        *v36 = a4;
        v36[2] = 1024;
        *&v36[3] = v24;
        v19 = "%{public}s Frame cannot unclaim %u end bytes (has %u left)";
        v20 = v23;
        goto LABEL_27;
      }
    }
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v16 = gLogObj;
    result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v18 = *(a1 + 56);
      *buf = 136446722;
      v34 = "__nw_frame_unclaim_internal";
      v35 = 1024;
      *v36 = a3;
      v36[2] = 1024;
      *&v36[3] = v18;
      v19 = "%{public}s Frame cannot unclaim %u start bytes (has %u left)";
      v20 = v16;
LABEL_27:
      _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_ERROR, v19, buf, 0x18u);
      return 0;
    }
  }

  return result;
}

uint64_t nw_channel_frame_check_validity(nw_frame *a1, _BYTE *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_channel_frame_check_validity";
    v4 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v10 = 0;
    if (!__nwlog_fault(v4, &type, &v10))
    {
      goto LABEL_26;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_26;
      }

      *buf = 136446210;
      v13 = "nw_channel_frame_check_validity";
      v7 = "%{public}s called with null context";
    }

    else if (v10 == 1)
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
          v13 = "nw_channel_frame_check_validity";
          v14 = 2082;
          v15 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_26;
      }

      if (!v9)
      {
LABEL_26:
        if (v4)
        {
          free(v4);
        }

        return 0;
      }

      *buf = 136446210;
      v13 = "nw_channel_frame_check_validity";
      v7 = "%{public}s called with null context, no backtrace";
    }

    else
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_26;
      }

      *buf = 136446210;
      v13 = "nw_channel_frame_check_validity";
      v7 = "%{public}s called with null context, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
    goto LABEL_26;
  }

  if (*(a2 + 17))
  {
    if ((a2[462] & 8) == 0)
    {
      if (!os_channel_is_defunct())
      {
        return 1;
      }

      nw_channel_handle_defunct(a2);
    }
  }

  else
  {
    if (_nw_signposts_once != -1)
    {
      dispatch_once(&_nw_signposts_once, &__block_literal_global_69_92240);
    }

    if (_nw_signposts_enabled == 1)
    {
      result = kdebug_is_enabled();
      if (!result)
      {
        return result;
      }

      kdebug_trace();
    }
  }

  return 0;
}

uint64_t nw_channel_get_output_frames(nw_protocol *a1, nw_protocol *a2, unsigned int a3, unsigned int a4, unsigned int a5, nw_frame_array_s *a6)
{
  v103 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_channel_get_output_frames";
    v21 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(packet) = 0;
    if (!__nwlog_fault(v21, type, &packet))
    {
      goto LABEL_112;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v76 = __nwlog_obj();
      v77 = type[0];
      if (!os_log_type_enabled(v76, type[0]))
      {
        goto LABEL_112;
      }

      *buf = 136446210;
      *&buf[4] = "nw_channel_get_output_frames";
      v24 = "%{public}s called with null channel_protocol";
      goto LABEL_193;
    }

    if (packet == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v76 = __nwlog_obj();
      v77 = type[0];
      v83 = os_log_type_enabled(v76, type[0]);
      if (backtrace_string)
      {
        if (v83)
        {
          *buf = 136446466;
          *&buf[4] = "nw_channel_get_output_frames";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          v84 = "%{public}s called with null channel_protocol, dumping backtrace:%{public}s";
LABEL_168:
          _os_log_impl(&dword_181A37000, v76, v77, v84, buf, 0x16u);
        }

LABEL_169:
        free(backtrace_string);
        goto LABEL_112;
      }

      if (!v83)
      {
        goto LABEL_112;
      }

      *buf = 136446210;
      *&buf[4] = "nw_channel_get_output_frames";
      v24 = "%{public}s called with null channel_protocol, no backtrace";
    }

    else
    {
      v76 = __nwlog_obj();
      v77 = type[0];
      if (!os_log_type_enabled(v76, type[0]))
      {
        goto LABEL_112;
      }

      *buf = 136446210;
      *&buf[4] = "nw_channel_get_output_frames";
      v24 = "%{public}s called with null channel_protocol, backtrace limit exceeded";
    }

LABEL_193:
    v64 = v76;
    v65 = v77;
    v66 = 12;
    goto LABEL_111;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_channel_get_output_frames";
    v21 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(packet) = 0;
    if (!__nwlog_fault(v21, type, &packet))
    {
      goto LABEL_112;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v76 = __nwlog_obj();
      v77 = type[0];
      if (!os_log_type_enabled(v76, type[0]))
      {
        goto LABEL_112;
      }

      *buf = 136446210;
      *&buf[4] = "nw_channel_get_output_frames";
      v24 = "%{public}s called with null channel";
      goto LABEL_193;
    }

    if (packet == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v76 = __nwlog_obj();
      v77 = type[0];
      v85 = os_log_type_enabled(v76, type[0]);
      if (backtrace_string)
      {
        if (v85)
        {
          *buf = 136446466;
          *&buf[4] = "nw_channel_get_output_frames";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          v84 = "%{public}s called with null channel, dumping backtrace:%{public}s";
          goto LABEL_168;
        }

        goto LABEL_169;
      }

      if (!v85)
      {
        goto LABEL_112;
      }

      *buf = 136446210;
      *&buf[4] = "nw_channel_get_output_frames";
      v24 = "%{public}s called with null channel, no backtrace";
    }

    else
    {
      v76 = __nwlog_obj();
      v77 = type[0];
      if (!os_log_type_enabled(v76, type[0]))
      {
        goto LABEL_112;
      }

      *buf = 136446210;
      *&buf[4] = "nw_channel_get_output_frames";
      v24 = "%{public}s called with null channel, backtrace limit exceeded";
    }

    goto LABEL_193;
  }

  a6->tqh_first = 0;
  a6->tqh_last = &a6->tqh_first;
  if (!handle[17] || !handle[27])
  {
    return 0;
  }

  *(handle + 462) = *(handle + 462) & 0xF9 | 2;
  v11 = *(handle + 230);
  if ((v11 & 2) == 0 && handle[22])
  {
    *(handle + 230) = v11 | 2;
    v13 = os_channel_available_slot_count();
    v14 = handle[22];
    if (v14)
    {
      if (*(handle + 109) - 1 >= v13)
      {
        v15 = 0;
      }

      else
      {
        v15 = *(handle + 109);
      }

      v16 = *(handle + 230);
      if (v13 == v15)
      {
        if ((v16 & 0x10) != 0)
        {
          *(handle + 230) = v16 & 0xFFEF;
          nw_queue_resume_source(v14, v12);
        }
      }

      else if ((v16 & 0x10) == 0)
      {
        *(handle + 230) = v16 | 0x10;
        nw_queue_suspend_source(v14);
      }
    }

    *(handle + 230) &= ~2u;
  }

  v17 = *(handle + 113);
  v18 = *(handle + 114);
  if (!v18)
  {
    goto LABEL_29;
  }

  v19 = 0xFFFFFFFF / v17;
  if (0xFFFFFFFF / v17 >= a5)
  {
    v19 = a5;
  }

  if (v19 * v17 < a3)
  {
    if (0xFFFFFFFF / v18 >= a5)
    {
      v20 = a5;
    }

    else
    {
      v20 = 0xFFFFFFFF / v18;
    }

    if (v20 * v18 < a3)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136447234;
      *&buf[4] = "nw_channel_get_output_frames";
      *&buf[12] = 1024;
      *&buf[14] = v18;
      *&buf[18] = 1024;
      *&buf[20] = v20;
      *&buf[24] = 1024;
      *&buf[26] = v20 * v18;
      *&buf[30] = 1024;
      LODWORD(v101) = a3;
      v21 = _os_log_send_and_compose_impl();
      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(packet) = 0;
      if (!__nwlog_fault(v21, type, &packet))
      {
        goto LABEL_112;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v22 = gLogObj;
        v23 = type[0];
        if (!os_log_type_enabled(gLogObj, type[0]))
        {
          goto LABEL_112;
        }

        *buf = 136447234;
        *&buf[4] = "nw_channel_get_output_frames";
        *&buf[12] = 1024;
        *&buf[14] = v18;
        *&buf[18] = 1024;
        *&buf[20] = v20;
        *&buf[24] = 1024;
        *&buf[26] = v20 * v18;
        *&buf[30] = 1024;
        LODWORD(v101) = a3;
        v24 = "%{public}s total bytes (%u * %u = %u) > minimum bytes (%u)";
        goto LABEL_110;
      }

      if (packet != 1)
      {
        v22 = __nwlog_obj();
        v23 = type[0];
        if (!os_log_type_enabled(v22, type[0]))
        {
          goto LABEL_112;
        }

        *buf = 136447234;
        *&buf[4] = "nw_channel_get_output_frames";
        *&buf[12] = 1024;
        *&buf[14] = v18;
        *&buf[18] = 1024;
        *&buf[20] = v20;
        *&buf[24] = 1024;
        *&buf[26] = v20 * v18;
        *&buf[30] = 1024;
        LODWORD(v101) = a3;
        v24 = "%{public}s total bytes (%u * %u = %u) > minimum bytes (%u), backtrace limit exceeded";
        goto LABEL_110;
      }

      v56 = __nw_create_backtrace_string();
      v22 = __nwlog_obj();
      v23 = type[0];
      v57 = os_log_type_enabled(v22, type[0]);
      if (v56)
      {
        if (v57)
        {
          *buf = 136447490;
          *&buf[4] = "nw_channel_get_output_frames";
          *&buf[12] = 1024;
          *&buf[14] = v18;
          *&buf[18] = 1024;
          *&buf[20] = v20;
          *&buf[24] = 1024;
          *&buf[26] = v20 * v18;
          *&buf[30] = 1024;
          LODWORD(v101) = a3;
          WORD2(v101) = 2082;
          *(&v101 + 6) = v56;
          _os_log_impl(&dword_181A37000, v22, v23, "%{public}s total bytes (%u * %u = %u) > minimum bytes (%u), dumping backtrace:%{public}s", buf, 0x2Eu);
        }

        free(v56);
        goto LABEL_112;
      }

      if (v57)
      {
        *buf = 136447234;
        *&buf[4] = "nw_channel_get_output_frames";
        *&buf[12] = 1024;
        *&buf[14] = v18;
        *&buf[18] = 1024;
        *&buf[20] = v20;
        *&buf[24] = 1024;
        *&buf[26] = v20 * v18;
        *&buf[30] = 1024;
        LODWORD(v101) = a3;
        v24 = "%{public}s total bytes (%u * %u = %u) > minimum bytes (%u), no backtrace";
LABEL_110:
        v64 = v22;
        v65 = v23;
        v66 = 36;
LABEL_111:
        _os_log_impl(&dword_181A37000, v64, v65, v24, buf, v66);
      }

LABEL_112:
      if (v21)
      {
        free(v21);
      }

      return 0;
    }

    v92 = 1;
    v17 = *(handle + 114);
  }

  else
  {
LABEL_29:
    v92 = 0;
  }

  v25 = os_channel_available_slot_count();
  v26 = *(handle + 109);
  if (v26 - 1 >= v25)
  {
    v26 = 0;
  }

  v27 = v25 - v26;
  if (v27 >= a5)
  {
    v27 = a5;
  }

  if (0xFFFFFFFF / v17 < v27)
  {
    v27 = 0xFFFFFFFF / v17;
  }

  v28 = v27 * v17;
  v29 = a4 / v17;
  if (a4 % v17)
  {
    v30 = v29 + 1;
  }

  else
  {
    v30 = a4 / v17;
  }

  if (v28 <= a4)
  {
    v31 = v27;
  }

  else
  {
    v28 = v30 * v17;
    v31 = v30;
  }

  if (v28 < a3)
  {
    if ((*(handle + 462) & 1) == 0 || !handle[17])
    {
      return 0;
    }

    *(handle + 462) &= ~1u;
    if (_nw_signposts_once != -1)
    {
      dispatch_once(&_nw_signposts_once, &__block_literal_global_69_92240);
    }

    if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
    {
      kdebug_trace();
    }

    if (os_channel_sync() && (nw_channel_check_defunct(handle) & 1) != 0)
    {
      return 0;
    }

    v32 = os_channel_available_slot_count();
    v33 = *(handle + 109);
    if (v33 - 1 >= v32)
    {
      v33 = 0;
    }

    v34 = v32 - v33;
    if (v34 >= a5)
    {
      v34 = a5;
    }

    if (0xFFFFFFFF / v17 < v34)
    {
      v34 = 0xFFFFFFFF / v17;
    }

    v35 = v34 * v17;
    v36 = v29 * v17 == a4 ? a4 / v17 : v29 + 1;
    if (v35 <= a4)
    {
      v31 = v34;
    }

    else
    {
      v35 = v36 * v17;
      v31 = v36;
    }

    if (v35 < a3)
    {
      return 0;
    }
  }

  v101 = 0u;
  v102 = 0u;
  memset(buf, 0, sizeof(buf));
  if (!handle[17])
  {
    return 0;
  }

  v37 = handle[36];
  next_slot = os_channel_get_next_slot();
  v39 = 0;
  if (!next_slot || !v31)
  {
    goto LABEL_130;
  }

  v39 = 0;
  v40 = 0;
  while (1)
  {
    v41 = next_slot;
    packet = 0;
    if (!v37)
    {
      nw_channel_allocate_frames(handle);
      v37 = handle[36];
      if (!v37)
      {
        goto LABEL_128;
      }
    }

    if ((*(handle + 230) & 0x1000) != 0)
    {
      if (!handle[17])
      {
        goto LABEL_80;
      }

      v42 = (v92 & 1) != 0 ? os_channel_large_packet_alloc() : os_channel_packet_alloc();
      if (!v42)
      {
        goto LABEL_80;
      }

      v43 = v42;
      if (nw_channel_check_defunct(handle))
      {
        goto LABEL_128;
      }

LABEL_99:
      v58 = __nwlog_obj();
      v59 = v58;
      if (v43 == 35)
      {
        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          *type = 136446466;
          v97 = "nw_channel_get_output_frames";
          v98 = 1024;
          LODWORD(v99[0]) = 35;
          _os_log_impl(&dword_181A37000, v59, OS_LOG_TYPE_ERROR, "%{public}s failed to get packet from channel %{darwin.errno}d", type, 0x12u);
        }

        goto LABEL_128;
      }

      *type = 136446466;
      v97 = "nw_channel_get_output_frames";
      v98 = 1024;
      LODWORD(v99[0]) = v43;
      v60 = _os_log_send_and_compose_impl();
      v94 = OS_LOG_TYPE_ERROR;
      v93 = 0;
      if (__nwlog_fault(v60, &v94, &v93))
      {
        if (v94 == OS_LOG_TYPE_FAULT)
        {
          v61 = __nwlog_obj();
          v62 = v94;
          if (!os_log_type_enabled(v61, v94))
          {
            goto LABEL_126;
          }

          *type = 136446466;
          v97 = "nw_channel_get_output_frames";
          v98 = 1024;
          LODWORD(v99[0]) = v43;
          v63 = "%{public}s failed to get packet from channel %{darwin.errno}d";
          goto LABEL_125;
        }

        if (v93 != 1)
        {
          v61 = __nwlog_obj();
          v62 = v94;
          if (!os_log_type_enabled(v61, v94))
          {
            goto LABEL_126;
          }

          *type = 136446466;
          v97 = "nw_channel_get_output_frames";
          v98 = 1024;
          LODWORD(v99[0]) = v43;
          v63 = "%{public}s failed to get packet from channel %{darwin.errno}d, backtrace limit exceeded";
          goto LABEL_125;
        }

        v68 = __nw_create_backtrace_string();
        v61 = __nwlog_obj();
        v62 = v94;
        v69 = os_log_type_enabled(v61, v94);
        if (v68)
        {
          if (v69)
          {
            *type = 136446722;
            v97 = "nw_channel_get_output_frames";
            v98 = 1024;
            LODWORD(v99[0]) = v43;
            WORD2(v99[0]) = 2082;
            *(v99 + 6) = v68;
            _os_log_impl(&dword_181A37000, v61, v62, "%{public}s failed to get packet from channel %{darwin.errno}d, dumping backtrace:%{public}s", type, 0x1Cu);
          }

          free(v68);
          goto LABEL_126;
        }

        if (v69)
        {
          *type = 136446466;
          v97 = "nw_channel_get_output_frames";
          v98 = 1024;
          LODWORD(v99[0]) = v43;
          v63 = "%{public}s failed to get packet from channel %{darwin.errno}d, no backtrace";
LABEL_125:
          _os_log_impl(&dword_181A37000, v61, v62, v63, type, 0x12u);
        }
      }

LABEL_126:
      if (v60)
      {
        free(v60);
      }

      goto LABEL_128;
    }

    if (!handle[27])
    {
      goto LABEL_80;
    }

    packet = os_channel_slot_get_packet();
    if (!packet)
    {
      if (nw_channel_check_defunct(handle))
      {
        goto LABEL_128;
      }

LABEL_80:
      v43 = 0;
      goto LABEL_99;
    }

    next_buflet = os_packet_get_next_buflet();
    if (!next_buflet)
    {
      break;
    }

    v45 = next_buflet;
    v46 = v40;
    data_offset = os_buflet_get_data_offset();
    object_address = os_buflet_get_object_address();
    data_limit = os_buflet_get_data_limit();
    if (!data_limit)
    {
      v40 = v46;
      if (nw_channel_check_defunct(handle))
      {
        goto LABEL_128;
      }

      __nwlog_obj();
      *type = 136446210;
      v97 = "nw_channel_get_output_frames";
      v78 = _os_log_send_and_compose_impl();
      v94 = OS_LOG_TYPE_ERROR;
      v93 = 0;
      if (!__nwlog_fault(v78, &v94, &v93))
      {
        goto LABEL_200;
      }

      if (v94 == OS_LOG_TYPE_FAULT)
      {
        v79 = __nwlog_obj();
        v80 = v94;
        if (!os_log_type_enabled(v79, v94))
        {
          goto LABEL_200;
        }

        *type = 136446210;
        v97 = "nw_channel_get_output_frames";
        v81 = "%{public}s invalid buflet size";
      }

      else
      {
        if (v93 == 1)
        {
          v88 = __nw_create_backtrace_string();
          v89 = __nwlog_obj();
          v80 = v94;
          v90 = os_log_type_enabled(v89, v94);
          if (v88)
          {
            if (v90)
            {
              *type = 136446466;
              v97 = "nw_channel_get_output_frames";
              v98 = 2082;
              v99[0] = v88;
              _os_log_impl(&dword_181A37000, v89, v80, "%{public}s invalid buflet size, dumping backtrace:%{public}s", type, 0x16u);
            }

            free(v88);
            v40 = v46;
            if (v78)
            {
              goto LABEL_201;
            }

            goto LABEL_202;
          }

          v40 = v46;
          if (!v90)
          {
            goto LABEL_200;
          }

          *type = 136446210;
          v97 = "nw_channel_get_output_frames";
          v81 = "%{public}s invalid buflet size, no backtrace";
          v91 = v89;
LABEL_199:
          _os_log_impl(&dword_181A37000, v91, v80, v81, type, 0xCu);
          goto LABEL_200;
        }

        v79 = __nwlog_obj();
        v80 = v94;
        if (!os_log_type_enabled(v79, v94))
        {
          goto LABEL_200;
        }

        *type = 136446210;
        v97 = "nw_channel_get_output_frames";
        v81 = "%{public}s invalid buflet size, backtrace limit exceeded";
      }

LABEL_198:
      v91 = v79;
      goto LABEL_199;
    }

    nw_frame_reset(v37, object_address + data_offset, data_limit, nw_channel_finalize_output_frame, handle);
    os_packet_set_flow_uuid();
    if ((*(v37 + 204) & 4) != 0)
    {
      *(v37 + 208) = packet;
      *(v37 + 216) = v45;
      *(v37 + 224) = v41;
      *(v37 + 232) = *(v37 + 232) & 0xFE | ((*(handle + 230) & 0x400) != 0);
    }

    v50 = (v37 + 16);
    v51 = *(v37 + 16);
    v52 = *(v37 + 24);
    v53 = (v51 + 24);
    if (!v51)
    {
      v53 = (handle + 37);
    }

    *v53 = v52;
    *v52 = v51;
    *(v37 + 24) = 0;
    *v50 = 0;
    v54 = handle[39];
    *(v37 + 24) = v54;
    *v54 = v37;
    handle[39] = v50;
    ++*(handle + 109);
    *(v37 + 32) = 0;
    tqh_last = a6->tqh_last;
    *(v37 + 40) = tqh_last;
    *tqh_last = v37;
    a6->tqh_last = (v37 + 32);
    v39 = (v39 + 1);
    next_slot = os_channel_get_next_slot();
    if (next_slot)
    {
      v40 = v41;
      v37 = v51;
      if (v39 < v31)
      {
        continue;
      }
    }

    goto LABEL_129;
  }

  if (nw_channel_check_defunct(handle))
  {
    goto LABEL_128;
  }

  __nwlog_obj();
  *type = 136446210;
  v97 = "nw_channel_get_output_frames";
  v78 = _os_log_send_and_compose_impl();
  v94 = OS_LOG_TYPE_ERROR;
  v93 = 0;
  if (!__nwlog_fault(v78, &v94, &v93))
  {
    goto LABEL_200;
  }

  if (v94 != OS_LOG_TYPE_FAULT)
  {
    if (v93 == 1)
    {
      v86 = __nw_create_backtrace_string();
      v79 = __nwlog_obj();
      v80 = v94;
      v87 = os_log_type_enabled(v79, v94);
      if (v86)
      {
        if (v87)
        {
          *type = 136446466;
          v97 = "nw_channel_get_output_frames";
          v98 = 2082;
          v99[0] = v86;
          _os_log_impl(&dword_181A37000, v79, v80, "%{public}s failed to get buflet from packet, dumping backtrace:%{public}s", type, 0x16u);
        }

        free(v86);
        goto LABEL_200;
      }

      if (!v87)
      {
        goto LABEL_200;
      }

      *type = 136446210;
      v97 = "nw_channel_get_output_frames";
      v81 = "%{public}s failed to get buflet from packet, no backtrace";
    }

    else
    {
      v79 = __nwlog_obj();
      v80 = v94;
      if (!os_log_type_enabled(v79, v94))
      {
        goto LABEL_200;
      }

      *type = 136446210;
      v97 = "nw_channel_get_output_frames";
      v81 = "%{public}s failed to get buflet from packet, backtrace limit exceeded";
    }

    goto LABEL_198;
  }

  v79 = __nwlog_obj();
  v80 = v94;
  if (os_log_type_enabled(v79, v94))
  {
    *type = 136446210;
    v97 = "nw_channel_get_output_frames";
    v81 = "%{public}s failed to get buflet from packet";
    goto LABEL_198;
  }

LABEL_200:
  if (v78)
  {
LABEL_201:
    free(v78);
  }

LABEL_202:
  if ((*(handle + 230) & 0x1000) != 0 && handle[17] && os_channel_packet_free())
  {
    nw_channel_check_defunct(handle);
  }

LABEL_128:
  v41 = v40;
  if (!v40)
  {
    goto LABEL_130;
  }

LABEL_129:
  handle[53] = v41;
LABEL_130:
  v70 = *(handle + 230);
  if ((v70 & 2) == 0 && handle[22])
  {
    *(handle + 230) = v70 | 2;
    v72 = os_channel_available_slot_count();
    v73 = handle[22];
    if (v73)
    {
      if (*(handle + 109) - 1 >= v72)
      {
        v74 = 0;
      }

      else
      {
        v74 = *(handle + 109);
      }

      v75 = *(handle + 230);
      if (v72 == v74)
      {
        if ((v75 & 0x10) != 0)
        {
          *(handle + 230) = v75 & 0xFFEF;
          nw_queue_resume_source(v73, v71);
        }
      }

      else if ((v75 & 0x10) == 0)
      {
        *(handle + 230) = v75 | 0x10;
        nw_queue_suspend_source(v73);
      }
    }

    *(handle + 230) &= ~2u;
  }

  return v39;
}

uint64_t nw_protocol_ipv4_get_output_frames(nw_protocol *a1, nw_protocol *a2, unsigned int a3, unsigned int a4, int a5, nw_frame_array_s *a6)
{
  v119 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v7 = a1;
    handle = a1->handle;
    v9 = a1;
    if (handle == &nw_protocol_ref_counted_handle)
    {
      goto LABEL_6;
    }

    if (handle != &nw_protocol_ref_counted_additional_handle)
    {
      v10 = 1;
      goto LABEL_11;
    }

    v9 = *a1[1].flow_id;
    if (v9)
    {
LABEL_6:
      callbacks = v9[1].callbacks;
      v10 = 0;
      if (callbacks)
      {
        v9[1].callbacks = (&callbacks->add_input_handler + 1);
      }
    }

    else
    {
      v10 = 1;
    }

    handle = a1->handle;
LABEL_11:
    v12 = a1;
    if (handle != &nw_protocol_ref_counted_handle)
    {
      if (handle != &nw_protocol_ref_counted_additional_handle)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446210;
        v114 = "nw_protocol_ipv4_get_output_frames";
        v13 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v111 = 0;
        if (!__nwlog_fault(v13, &type, &v111))
        {
          goto LABEL_39;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v14 = gLogObj;
          v15 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_39;
          }

          *buf = 136446210;
          v114 = "nw_protocol_ipv4_get_output_frames";
          v16 = "%{public}s called with null ipv4";
        }

        else
        {
          if (v111 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v28 = gLogObj;
            v29 = type;
            v30 = os_log_type_enabled(gLogObj, type);
            if (backtrace_string)
            {
              if (v30)
              {
                *buf = 136446466;
                v114 = "nw_protocol_ipv4_get_output_frames";
                v115 = 2082;
                *v116 = backtrace_string;
                _os_log_impl(&dword_181A37000, v28, v29, "%{public}s called with null ipv4, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
            }

            else if (v30)
            {
              *buf = 136446210;
              v114 = "nw_protocol_ipv4_get_output_frames";
              v16 = "%{public}s called with null ipv4, no backtrace";
              v32 = v28;
              v33 = v29;
              goto LABEL_38;
            }

LABEL_39:
            if (v13)
            {
              free(v13);
            }

            v34 = 0;
            if (v10)
            {
              return v34;
            }

LABEL_76:
            v53 = v7->handle;
            if (v53 == &nw_protocol_ref_counted_handle || v53 == &nw_protocol_ref_counted_additional_handle && (v7 = *v7[1].flow_id) != 0)
            {
              v54 = v7[1].callbacks;
              if (v54)
              {
                v55 = (v54 - 1);
                v7[1].callbacks = v55;
                if (!v55)
                {
                  v56 = *v7[1].flow_id;
                  if (v56)
                  {
                    *v7[1].flow_id = 0;
                    v56[2](v56);
                    _Block_release(v56);
                  }

                  if (v7[1].flow_id[8])
                  {
                    v57 = *v7[1].flow_id;
                    if (v57)
                    {
                      _Block_release(v57);
                    }
                  }

                  free(v7);
                }
              }
            }

            return v34;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v14 = gLogObj;
          v15 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_39;
          }

          *buf = 136446210;
          v114 = "nw_protocol_ipv4_get_output_frames";
          v16 = "%{public}s called with null ipv4, backtrace limit exceeded";
        }

        v32 = v14;
        v33 = v15;
LABEL_38:
        _os_log_impl(&dword_181A37000, v32, v33, v16, buf, 0xCu);
        goto LABEL_39;
      }

      v12 = *a1[1].flow_id;
    }

    if (a5 && LODWORD(v12[3].identifier) < a3 && (BYTE1(v12[3].handle) & 4) == 0)
    {
      v18 = nw_calloc_type<unsigned char>(a3);
      v19 = a3;
      v20 = nw_frame_create(0, v18, a3, nw_protocol_ipv4_frame_output_finalizer, &v12[1].output_handler);
      v21 = v20;
      if (v20)
      {
        *(v20 + 204) |= 1u;
        *(v20 + 16) = 0;
        v22 = *&v12[3].flow_id[8];
        *(v20 + 24) = v22;
        *v22 = v20;
        *&v12[3].flow_id[8] = v20 + 16;
        goto LABEL_115;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446466;
      v114 = "nw_protocol_ipv4_create_output_frame";
      v115 = 1024;
      *v116 = v19;
      type = OS_LOG_TYPE_ERROR;
      v111 = 0;
      v106 = _os_log_send_and_compose_impl();
      if (__nwlog_fault(v106, &type, &v111))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v62 = __nwlog_obj();
          v63 = type;
          if (os_log_type_enabled(v62, type))
          {
            *buf = 136446466;
            v114 = "nw_protocol_ipv4_create_output_frame";
            v115 = 1024;
            *v116 = v19;
            v64 = "%{public}s nw_frame_create(%u) failed";
LABEL_109:
            v68 = v62;
LABEL_110:
            _os_log_impl(&dword_181A37000, v68, v63, v64, buf, 0x12u);
          }
        }

        else if (v111 == 1)
        {
          v65 = __nw_create_backtrace_string();
          v66 = __nwlog_obj();
          v63 = type;
          log = v66;
          v67 = os_log_type_enabled(v66, type);
          if (v65)
          {
            if (v67)
            {
              *buf = 136446722;
              v114 = "nw_protocol_ipv4_create_output_frame";
              v115 = 1024;
              *v116 = v19;
              *&v116[4] = 2082;
              *&v116[6] = v65;
              _os_log_impl(&dword_181A37000, log, v63, "%{public}s nw_frame_create(%u) failed, dumping backtrace:%{public}s", buf, 0x1Cu);
            }

            free(v65);
            goto LABEL_111;
          }

          if (v67)
          {
            *buf = 136446466;
            v114 = "nw_protocol_ipv4_create_output_frame";
            v115 = 1024;
            *v116 = v19;
            v64 = "%{public}s nw_frame_create(%u) failed, no backtrace";
            v68 = log;
            goto LABEL_110;
          }
        }

        else
        {
          v62 = __nwlog_obj();
          v63 = type;
          if (os_log_type_enabled(v62, type))
          {
            *buf = 136446466;
            v114 = "nw_protocol_ipv4_create_output_frame";
            v115 = 1024;
            *v116 = v19;
            v64 = "%{public}s nw_frame_create(%u) failed, backtrace limit exceeded";
            goto LABEL_109;
          }
        }
      }

LABEL_111:
      if (v106)
      {
        free(v106);
      }

      if (v18)
      {
        free(v18);
      }

LABEL_115:
      *(v21 + 32) = 0;
      tqh_last = a6->tqh_last;
      *(v21 + 40) = tqh_last;
      *tqh_last = v21;
      a6->tqh_last = (v21 + 32);
      v34 = 1;
      if (v10)
      {
        return v34;
      }

      goto LABEL_76;
    }

    output_handler = a1->output_handler;
    if (output_handler)
    {
      v24 = output_handler->handle;
      v25 = a1->output_handler;
      if (v24 == &nw_protocol_ref_counted_handle || v24 == &nw_protocol_ref_counted_additional_handle && (v25 = *output_handler[1].flow_id) != 0)
      {
        v31 = v25[1].callbacks;
        v26 = 0;
        if (v31)
        {
          v25[1].callbacks = (&v31->add_input_handler + 1);
        }
      }

      else
      {
        v26 = 1;
      }

      v35 = a1;
      if (handle == &nw_protocol_ref_counted_handle || handle == &nw_protocol_ref_counted_additional_handle && (v35 = *a1[1].flow_id) != 0)
      {
        v58 = v35[1].callbacks;
        if (v58)
        {
          v36 = 0;
          v35[1].callbacks = (&v58->add_input_handler + 1);
          if (!a6)
          {
            goto LABEL_90;
          }
        }

        else
        {
          v36 = 0;
          if (!a6)
          {
            goto LABEL_90;
          }
        }
      }

      else
      {
        v36 = 1;
        if (!a6)
        {
LABEL_90:
          __nwlog_obj();
          *buf = 136446210;
          v114 = "__nw_protocol_get_output_frames";
          type = OS_LOG_TYPE_ERROR;
          v111 = 0;
          v105 = _os_log_send_and_compose_impl();
          if (!__nwlog_fault(v105, &type, &v111))
          {
            goto LABEL_172;
          }

          if (type == OS_LOG_TYPE_FAULT)
          {
            v59 = __nwlog_obj();
            v60 = type;
            if (!os_log_type_enabled(v59, type))
            {
              goto LABEL_172;
            }

            *buf = 136446210;
            v114 = "__nw_protocol_get_output_frames";
            v61 = "%{public}s called with null return_array";
LABEL_169:
            v98 = v59;
            v99 = v60;
LABEL_170:
            v100 = 12;
            goto LABEL_171;
          }

          if (v111 != 1)
          {
            v59 = __nwlog_obj();
            v60 = type;
            if (!os_log_type_enabled(v59, type))
            {
              goto LABEL_172;
            }

            *buf = 136446210;
            v114 = "__nw_protocol_get_output_frames";
            v61 = "%{public}s called with null return_array, backtrace limit exceeded";
            goto LABEL_169;
          }

          v85 = __nw_create_backtrace_string();
          v95 = __nwlog_obj();
          logb = type;
          v96 = os_log_type_enabled(v95, type);
          if (v85)
          {
            if (v96)
            {
              *buf = 136446466;
              v114 = "__nw_protocol_get_output_frames";
              v115 = 2082;
              *v116 = v85;
              v89 = "%{public}s called with null return_array, dumping backtrace:%{public}s";
              v90 = v95;
              v91 = logb;
              v92 = 22;
LABEL_157:
              _os_log_impl(&dword_181A37000, v90, v91, v89, buf, v92);
              goto LABEL_158;
            }

            goto LABEL_158;
          }

          if (v96)
          {
            *buf = 136446210;
            v114 = "__nw_protocol_get_output_frames";
            v61 = "%{public}s called with null return_array, no backtrace";
            v98 = v95;
            v99 = logb;
            goto LABEL_170;
          }

          goto LABEL_172;
        }
      }

      v37 = output_handler->callbacks;
      if (v37)
      {
        get_output_frames = v37->get_output_frames;
        if (get_output_frames)
        {
          v34 = get_output_frames(output_handler, a1);
          if (v36)
          {
LABEL_60:
            if ((v26 & 1) == 0)
            {
              v45 = output_handler->handle;
              if (v45 == &nw_protocol_ref_counted_handle || v45 == &nw_protocol_ref_counted_additional_handle && (output_handler = *output_handler[1].flow_id) != 0)
              {
                v46 = output_handler[1].callbacks;
                if (v46)
                {
                  v47 = (v46 - 1);
                  output_handler[1].callbacks = v47;
                  if (!v47)
                  {
                    v48 = *output_handler[1].flow_id;
                    if (v48)
                    {
                      *output_handler[1].flow_id = 0;
                      v48[2](v48);
                      _Block_release(v48);
                    }

                    if (output_handler[1].flow_id[8])
                    {
                      v49 = *output_handler[1].flow_id;
                      if (v49)
                      {
                        _Block_release(v49);
                      }
                    }

                    free(output_handler);
                  }
                }
              }
            }

            goto LABEL_72;
          }

LABEL_49:
          v39 = v7->handle;
          v40 = v7;
          if (v39 == &nw_protocol_ref_counted_handle || v39 == &nw_protocol_ref_counted_additional_handle && (v40 = *v7[1].flow_id) != 0)
          {
            v41 = v40[1].callbacks;
            if (v41)
            {
              v42 = (v41 - 1);
              v40[1].callbacks = v42;
              if (!v42)
              {
                v43 = *v40[1].flow_id;
                if (v43)
                {
                  *v40[1].flow_id = 0;
                  v43[2](v43);
                  _Block_release(v43);
                }

                if (v40[1].flow_id[8])
                {
                  v44 = *v40[1].flow_id;
                  if (v44)
                  {
                    _Block_release(v44);
                  }
                }

                free(v40);
              }
            }
          }

          goto LABEL_60;
        }
      }

      __nwlog_obj();
      name = output_handler->identifier->name;
      *buf = 136446722;
      v114 = "__nw_protocol_get_output_frames";
      if (!name)
      {
        name = "invalid";
      }

      v115 = 2082;
      *v116 = name;
      *&v116[8] = 2048;
      *&v116[10] = output_handler;
      type = OS_LOG_TYPE_ERROR;
      v111 = 0;
      v105 = _os_log_send_and_compose_impl();
      if (!__nwlog_fault(v105, &type, &v111))
      {
        goto LABEL_172;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v76 = __nwlog_obj();
        v77 = type;
        if (!os_log_type_enabled(v76, type))
        {
          goto LABEL_172;
        }

        v78 = output_handler->identifier->name;
        if (!v78)
        {
          v78 = "invalid";
        }

        *buf = 136446722;
        v114 = "__nw_protocol_get_output_frames";
        v115 = 2082;
        *v116 = v78;
        *&v116[8] = 2048;
        *&v116[10] = output_handler;
        v61 = "%{public}s protocol %{public}s (%p) has invalid get_output_frames callback";
      }

      else
      {
        if (v111 == 1)
        {
          v85 = __nw_create_backtrace_string();
          v86 = __nwlog_obj();
          loga = type;
          v87 = os_log_type_enabled(v86, type);
          if (v85)
          {
            if (v87)
            {
              v88 = output_handler->identifier->name;
              if (!v88)
              {
                v88 = "invalid";
              }

              *buf = 136446978;
              v114 = "__nw_protocol_get_output_frames";
              v115 = 2082;
              *v116 = v88;
              *&v116[8] = 2048;
              *&v116[10] = output_handler;
              v117 = 2082;
              v118 = v85;
              v89 = "%{public}s protocol %{public}s (%p) has invalid get_output_frames callback, dumping backtrace:%{public}s";
              v90 = v86;
              v91 = loga;
              v92 = 42;
              goto LABEL_157;
            }

LABEL_158:
            free(v85);
            goto LABEL_172;
          }

          if (!v87)
          {
LABEL_172:
            if (v105)
            {
              free(v105);
            }

            v34 = 0;
            if (v36)
            {
              goto LABEL_60;
            }

            goto LABEL_49;
          }

          v101 = output_handler->identifier->name;
          if (!v101)
          {
            v101 = "invalid";
          }

          *buf = 136446722;
          v114 = "__nw_protocol_get_output_frames";
          v115 = 2082;
          *v116 = v101;
          *&v116[8] = 2048;
          *&v116[10] = output_handler;
          v61 = "%{public}s protocol %{public}s (%p) has invalid get_output_frames callback, no backtrace";
          v98 = v86;
          v99 = loga;
LABEL_164:
          v100 = 32;
LABEL_171:
          _os_log_impl(&dword_181A37000, v98, v99, v61, buf, v100);
          goto LABEL_172;
        }

        v76 = __nwlog_obj();
        v77 = type;
        if (!os_log_type_enabled(v76, type))
        {
          goto LABEL_172;
        }

        v97 = output_handler->identifier->name;
        if (!v97)
        {
          v97 = "invalid";
        }

        *buf = 136446722;
        v114 = "__nw_protocol_get_output_frames";
        v115 = 2082;
        *v116 = v97;
        *&v116[8] = 2048;
        *&v116[10] = output_handler;
        v61 = "%{public}s protocol %{public}s (%p) has invalid get_output_frames callback, backtrace limit exceeded";
      }

      v98 = v76;
      v99 = v77;
      goto LABEL_164;
    }

    __nwlog_obj();
    *buf = 136446210;
    v114 = "__nw_protocol_get_output_frames";
    v81 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v111 = 0;
    if (__nwlog_fault(v81, &type, &v111))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v82 = __nwlog_obj();
        v83 = type;
        if (os_log_type_enabled(v82, type))
        {
          *buf = 136446210;
          v114 = "__nw_protocol_get_output_frames";
          v84 = "%{public}s called with null protocol";
LABEL_188:
          _os_log_impl(&dword_181A37000, v82, v83, v84, buf, 0xCu);
        }
      }

      else if (v111 == 1)
      {
        v93 = __nw_create_backtrace_string();
        v82 = __nwlog_obj();
        v83 = type;
        v94 = os_log_type_enabled(v82, type);
        if (v93)
        {
          if (v94)
          {
            *buf = 136446466;
            v114 = "__nw_protocol_get_output_frames";
            v115 = 2082;
            *v116 = v93;
            _os_log_impl(&dword_181A37000, v82, v83, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v93);
          goto LABEL_189;
        }

        if (v94)
        {
          *buf = 136446210;
          v114 = "__nw_protocol_get_output_frames";
          v84 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_188;
        }
      }

      else
      {
        v82 = __nwlog_obj();
        v83 = type;
        if (os_log_type_enabled(v82, type))
        {
          *buf = 136446210;
          v114 = "__nw_protocol_get_output_frames";
          v84 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_188;
        }
      }
    }

LABEL_189:
    if (v81)
    {
      free(v81);
    }

    v34 = 0;
LABEL_72:
    v107[0] = MEMORY[0x1E69E9820];
    v107[1] = 0x40000000;
    v108 = ___ZL34nw_protocol_ipv4_get_output_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke;
    v109 = &__block_descriptor_tmp_30_91692;
    v110 = v7;
    tqh_first = a6->tqh_first;
    do
    {
      if (!tqh_first)
      {
        break;
      }

      v51 = *(tqh_first + 4);
      v52 = (v108)(v107);
      tqh_first = v51;
    }

    while ((v52 & 1) != 0);
    if (v10)
    {
      return v34;
    }

    goto LABEL_76;
  }

  __nwlog_obj();
  *buf = 136446210;
  v114 = "nw_protocol_ipv4_get_output_frames";
  v71 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v111 = 0;
  if (__nwlog_fault(v71, &type, &v111))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v72 = __nwlog_obj();
      v73 = type;
      if (os_log_type_enabled(v72, type))
      {
        *buf = 136446210;
        v114 = "nw_protocol_ipv4_get_output_frames";
        v74 = "%{public}s called with null protocol";
LABEL_178:
        _os_log_impl(&dword_181A37000, v72, v73, v74, buf, 0xCu);
      }
    }

    else if (v111 == 1)
    {
      v79 = __nw_create_backtrace_string();
      v72 = __nwlog_obj();
      v73 = type;
      v80 = os_log_type_enabled(v72, type);
      if (v79)
      {
        if (v80)
        {
          *buf = 136446466;
          v114 = "nw_protocol_ipv4_get_output_frames";
          v115 = 2082;
          *v116 = v79;
          _os_log_impl(&dword_181A37000, v72, v73, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v79);
        goto LABEL_179;
      }

      if (v80)
      {
        *buf = 136446210;
        v114 = "nw_protocol_ipv4_get_output_frames";
        v74 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_178;
      }
    }

    else
    {
      v72 = __nwlog_obj();
      v73 = type;
      if (os_log_type_enabled(v72, type))
      {
        *buf = 136446210;
        v114 = "nw_protocol_ipv4_get_output_frames";
        v74 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_178;
      }
    }
  }

LABEL_179:
  if (v71)
  {
    free(v71);
  }

  return 0;
}