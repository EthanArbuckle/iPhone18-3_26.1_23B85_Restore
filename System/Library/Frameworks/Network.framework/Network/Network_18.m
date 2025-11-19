BOOL sub_181B8AEF8(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  memcpy(v29, v2, 0x17AuLL);
  v7 = v29[5];
  if (!v29[5])
  {
    return 0;
  }

  v8 = v29[1];
  if (!v29[1] || !v29[34] && !v29[35] && (a1 & 1) == 0)
  {
    return 0;
  }

  v9 = v29[4];
  swift_beginAccess();
  if ((*(v9 + 235) & 0x20) != 0)
  {
    return 0;
  }

  v10 = type metadata accessor for __NWPath();
  v11 = objc_allocWithZone(v10);
  v12 = OBJC_IVAR____TtC7Network8__NWPath_lock;
  type metadata accessor for SystemLock._Storage();
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *&v11[v12] = v13;
  *&v11[OBJC_IVAR____TtC7Network8__NWPath_nexusKeyStorage] = 0;
  *&v11[OBJC_IVAR____TtC7Network8__NWPath_reasonDescriptionStorage] = 0;
  *&v11[OBJC_IVAR____TtC7Network8__NWPath_nat64PrefixStorage] = 0;
  memcpy(&v11[OBJC_IVAR____TtC7Network8__NWPath_path], v29, 0x17AuLL);
  v14 = v7;

  sub_181A3DF5C(v29, v27);
  v26.receiver = v11;
  v26.super_class = v10;
  v15 = objc_msgSendSuper2(&v26, sel_init);
  LODWORD(v11) = nw_path_get_dns_service_id(v15, 0);

  if (v11)
  {

LABEL_9:

    return 0;
  }

  v17 = OBJC_IVAR____TtC7Network8Endpoint_type;
  swift_beginAccess();
  sub_181B5C0FC(v14 + v17, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2 && EnumCaseMultiPayload != 3)
    {
      goto LABEL_19;
    }

LABEL_17:

    sub_181B5C160(v6);
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
LABEL_19:

      sub_181B5C160(v6);
      return 0;
    }

    goto LABEL_17;
  }

  v20 = v6[1];
  v27[0] = *v6;
  v27[1] = v20;
  v22 = *v6;
  v21 = v6[1];
  v28[0] = v6[2];
  *(v28 + 12) = *(v6 + 44);
  v24[0] = v22;
  v24[1] = v21;
  v25[0] = v6[2];
  *(v25 + 12) = *(v6 + 44);
  v23 = sub_18217A078();

  sub_181AA57B4(v27);
  if (v23)
  {
    goto LABEL_9;
  }

LABEL_18:
  v19 = *(v8 + 184);

  return v19 < 4;
}

void nw_path_evaluator_set_logging(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    os_unfair_lock_lock(v1 + 24);
    HIBYTE(v2[26]._os_unfair_lock_opaque) &= ~0x40u;
    os_unfair_lock_unlock(v2 + 24);
    goto LABEL_3;
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_path_evaluator_set_logging";
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
        v14 = "nw_path_evaluator_set_logging";
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null evaluator", buf, 0xCu);
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
          v14 = "nw_path_evaluator_set_logging";
          v15 = 2082;
          v16 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v8, "%{public}s called with null evaluator, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v9)
      {
        *buf = 136446210;
        v14 = "nw_path_evaluator_set_logging";
        _os_log_impl(&dword_181A37000, v5, v8, "%{public}s called with null evaluator, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v5 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v14 = "nw_path_evaluator_set_logging";
        _os_log_impl(&dword_181A37000, v5, v10, "%{public}s called with null evaluator, backtrace limit exceeded", buf, 0xCu);
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

id nw_association_copy_current_path(void *a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (!v3)
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    v26 = "nw_association_copy_current_path";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (!__nwlog_fault(v10, &type, &v23))
    {
      goto LABEL_37;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v26 = "nw_association_copy_current_path";
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null association", buf, 0xCu);
      }

      goto LABEL_36;
    }

    if (v23 != 1)
    {
      v11 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v26 = "nw_association_copy_current_path";
        _os_log_impl(&dword_181A37000, v11, v20, "%{public}s called with null association, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_36;
    }

    backtrace_string = __nw_create_backtrace_string();
    v11 = __nwlog_obj();
    v16 = type;
    v17 = os_log_type_enabled(v11, type);
    if (!backtrace_string)
    {
      if (v17)
      {
        *buf = 136446210;
        v26 = "nw_association_copy_current_path";
        _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null association, no backtrace", buf, 0xCu);
      }

      goto LABEL_36;
    }

    if (v17)
    {
      *buf = 136446466;
      v26 = "nw_association_copy_current_path";
      v27 = 2082;
      v28 = backtrace_string;
      _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null association, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_24;
  }

  v5 = nw_path_parameters_copy_context(*(v3 + 2));
  nw_context_assert_queue(v5);

  nw_association_activate(v3, v4, 0, 1);
  if (*(v3 + 76))
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v26 = "nw_association_copy_current_path";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (!__nwlog_fault(v10, &type, &v23))
    {
      goto LABEL_37;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v26 = "nw_association_copy_current_path";
        _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null !association->dormant", buf, 0xCu);
      }

LABEL_36:

LABEL_37:
      if (v10)
      {
        free(v10);
      }

      goto LABEL_39;
    }

    if (v23 != 1)
    {
      v11 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v26 = "nw_association_copy_current_path";
        _os_log_impl(&dword_181A37000, v11, v21, "%{public}s called with null !association->dormant, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_36;
    }

    backtrace_string = __nw_create_backtrace_string();
    v11 = __nwlog_obj();
    v18 = type;
    v19 = os_log_type_enabled(v11, type);
    if (!backtrace_string)
    {
      if (v19)
      {
        *buf = 136446210;
        v26 = "nw_association_copy_current_path";
        _os_log_impl(&dword_181A37000, v11, v18, "%{public}s called with null !association->dormant, no backtrace", buf, 0xCu);
      }

      goto LABEL_36;
    }

    if (v19)
    {
      *buf = 136446466;
      v26 = "nw_association_copy_current_path";
      v27 = 2082;
      v28 = backtrace_string;
      _os_log_impl(&dword_181A37000, v11, v18, "%{public}s called with null !association->dormant, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_24:

    free(backtrace_string);
    goto LABEL_37;
  }

  v6 = *(v3 + 3);
  if (!v6)
  {
LABEL_39:
    v8 = 0;
    goto LABEL_40;
  }

  v7 = v6;
  os_unfair_lock_lock(v6 + 24);
  v8 = v7[6];
  os_unfair_lock_unlock(v6 + 24);

LABEL_40:
  return v8;
}

uint64_t nw_parameters_get_block_trackers(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_block_trackers(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_block_trackers";
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
        v12 = "nw_parameters_get_block_trackers";
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
            v12 = "nw_parameters_get_block_trackers";
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
        v12 = "nw_parameters_get_block_trackers";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_block_trackers";
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

const char *nw_endpoint_event_event_string(int a1, int a2)
{
  result = "unknown";
  if (a1 <= 3)
  {
    switch(a1)
    {
      case 1:
        v4 = a2 - 1;
        if ((a2 - 1) >= 0xC)
        {
          return result;
        }

        v5 = off_1E6A31670;
        return v5[v4];
      case 2:
        v4 = a2 - 1;
        if ((a2 - 1) >= 8u)
        {
          return result;
        }

        v5 = off_1E6A316D0;
        return v5[v4];
      case 3:
        v4 = a2 - 1;
        if ((a2 - 1) < 0xF)
        {
          v5 = off_1E6A31710;
          return v5[v4];
        }

        break;
    }
  }

  else
  {
    if (a1 <= 5)
    {
      if (a1 == 4)
      {
        v4 = a2 - 1;
        if ((a2 - 1) >= 6)
        {
          return result;
        }

        v5 = off_1E6A31788;
      }

      else
      {
        v4 = a2 - 1;
        if ((a2 - 1) >= 5)
        {
          return result;
        }

        v5 = off_1E6A317B8;
      }

      return v5[v4];
    }

    if (a1 == 6)
    {
      v4 = a2 - 1;
      if ((a2 - 1) >= 5)
      {
        return result;
      }

      v5 = off_1E6A317F8;
      return v5[v4];
    }

    if (a1 == 7)
    {
      v4 = a2 - 1;
      if ((a2 - 1) < 3)
      {
        v5 = off_1E6A317E0;
        return v5[v4];
      }
    }
  }

  return result;
}

uint64_t _nw_path_should_fallback(char *a1, char a2)
{
  if (a1)
  {
    v3 = OBJC_IVAR____TtC7Network8__NWPath_path;
    v5 = a1;
    swift_beginAccess();
    memcpy(__dst, &a1[v3], 0x17AuLL);
    memcpy(__src, &a1[v3], sizeof(__src));
    sub_181A3DF5C(__dst, v10);
    v6 = sub_181B5AEA8(a2);
    memcpy(v10, __src, 0x17AuLL);
    sub_181A3DFB8(v10);
    swift_endAccess();
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t nw_path_can_support_endpoint(void *a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      can_support_endpoint = _nw_path_can_support_endpoint(v3, v4);
      goto LABEL_4;
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_path_can_support_endpoint";
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
          v24 = "nw_path_can_support_endpoint";
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null endpoint", buf, 0xCu);
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
          v24 = "nw_path_can_support_endpoint";
          _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
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
          v24 = "nw_path_can_support_endpoint";
          _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v18)
      {
        *buf = 136446466;
        v24 = "nw_path_can_support_endpoint";
        v25 = 2082;
        v26 = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_24;
    }
  }

  else
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_path_can_support_endpoint";
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
          v24 = "nw_path_can_support_endpoint";
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null path", buf, 0xCu);
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
          v24 = "nw_path_can_support_endpoint";
          _os_log_impl(&dword_181A37000, v10, v19, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
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
          v24 = "nw_path_can_support_endpoint";
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null path, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v16)
      {
        *buf = 136446466;
        v24 = "nw_path_can_support_endpoint";
        v25 = 2082;
        v26 = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
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

  can_support_endpoint = 0;
LABEL_4:

  return can_support_endpoint;
}

uint32_t nw_interface_get_index(nw_interface_t interface)
{
  if (interface)
  {
    LODWORD(interface) = _nw_interface_get_index(interface);
  }

  return interface;
}

unint64_t _nw_interface_get_index(uint64_t a1)
{
  result = *(*(a1 + OBJC_IVAR____TtC7Network13__NWInterface_interface) + 16);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (HIDWORD(result))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

void nw_endpoint_resolver_update(void *a1, void *a2, unsigned int a3)
{
  v435 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v412 = v5;
  v413 = v6;
  if (!v5)
  {
    v81 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_endpoint_resolver_update";
    v82 = _os_log_send_and_compose_impl();

    v422[0] = 16;
    type[0] = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v82, v422, type))
    {
      if (v422[0] == 17)
      {
        v83 = __nwlog_obj();
        v84 = v422[0];
        if (os_log_type_enabled(v83, v422[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_resolver_update";
          _os_log_impl(&dword_181A37000, v83, v84, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (type[0] == OS_LOG_TYPE_INFO)
      {
        backtrace_string = __nw_create_backtrace_string();
        v83 = __nwlog_obj();
        v86 = v422[0];
        v87 = os_log_type_enabled(v83, v422[0]);
        if (backtrace_string)
        {
          if (v87)
          {
            *buf = 136446466;
            *&buf[4] = "nw_endpoint_resolver_update";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v83, v86, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_119;
        }

        if (v87)
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_resolver_update";
          _os_log_impl(&dword_181A37000, v83, v86, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v83 = __nwlog_obj();
        v95 = v422[0];
        if (os_log_type_enabled(v83, v422[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_resolver_update";
          _os_log_impl(&dword_181A37000, v83, v95, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_119:
    if (v82)
    {
      free(v82);
    }

    goto LABEL_451;
  }

  v7 = v6;
  v410 = a3;
  v8 = v5;
  v9 = v8[29];

  if (v9 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v16 = gLogObj;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      if (v9 > 5)
      {
        v24 = "unknown-mode";
      }

      else
      {
        v24 = off_1E6A31018[v9];
      }

      *buf = 136446722;
      *&buf[4] = "nw_endpoint_resolver_update";
      *&buf[12] = 2082;
      *&buf[14] = v24;
      *&buf[22] = 2082;
      v425 = "resolver";
      _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_DEFAULT, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
    }

    goto LABEL_102;
  }

  v10 = v8;
  v11 = v10->state & 0xFFFFFFFE;

  if (v11 != 4)
  {
    v399 = v10;
    v25 = nw_endpoint_handler_copy_resolver(v10);
    v26 = *(v25 + 1);
    v27 = v10;
    v28 = v27;
    v404 = v25;
    if (v26 != v7)
    {
      v29 = *(v27 + 284);

      if ((v29 & 0x20) != 0)
      {
        if ((nw_endpoint_handler_get_logging_disabled(v28) & 1) == 0)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v32 = gconnectionLogObj;
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            id_string = nw_endpoint_handler_get_id_string(v28);
            v97 = nw_endpoint_handler_dry_run_string(v28);
            v98 = nw_endpoint_handler_copy_endpoint(v28);
            logging_description = nw_endpoint_get_logging_description(v98);
            v100 = nw_endpoint_handler_state_string(v28);
            v101 = nw_endpoint_handler_mode_string(v28);
            v102 = nw_endpoint_handler_copy_current_path(v28);
            v103 = *(v404 + 1);
            *buf = 136448258;
            *&buf[4] = "nw_endpoint_resolver_update";
            *&buf[12] = 2082;
            *&buf[14] = id_string;
            *&buf[22] = 2082;
            v425 = v97;
            *v426 = 2082;
            *&v426[2] = logging_description;
            *&v426[10] = 2082;
            *&v426[12] = v100;
            v427 = 2082;
            v428 = v101;
            v429 = 2114;
            v430 = v102;
            v431 = 2048;
            v432 = v103;
            v433 = 2048;
            v434 = v413;
            _os_log_impl(&dword_181A37000, v32, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] ignoring update from old resolver object (%p != %p)", buf, 0x5Cu);
          }

          goto LABEL_449;
        }
      }

      else
      {
        v30 = v28;
        v31 = *(v28 + 284);

        if ((v31 & 0x40) == 0)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v32 = gconnectionLogObj;
          if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_449;
          }

          v33 = v30;

          v34 = v33;
          v35 = *(v28 + 284);

          if (v35)
          {
            v36 = "dry-run ";
          }

          else
          {
            v36 = "";
          }

          v37 = nw_endpoint_handler_copy_endpoint(v34);
          v38 = v37;
          if (v37)
          {
            v39 = _nw_endpoint_get_logging_description(v37);
          }

          else
          {
            v39 = "<NULL>";
          }

          v67 = v33 + 184;

          v68 = v34;
          v69 = v68;
          state = v10->state;
          if (state > 5)
          {
            v71 = "unknown-state";
          }

          else
          {
            v71 = off_1E6A31048[state];
          }

          v72 = v69;
          v73 = v72;
          v74 = v8[29];
          if (v74 > 2)
          {
            switch(v74)
            {
              case 3:
                v75 = "proxy";
                goto LABEL_86;
              case 4:
                v75 = "fallback";
                goto LABEL_86;
              case 5:
                v75 = "transform";
                goto LABEL_86;
            }
          }

          else
          {
            switch(v74)
            {
              case 0:
                v75 = "path";
                goto LABEL_86;
              case 1:
                v75 = "resolver";
                goto LABEL_86;
              case 2:
                v75 = nw_endpoint_flow_mode_string(v72[33]);
LABEL_86:

                v78 = v73;
                os_unfair_lock_lock(v78 + 28);
                v79 = v78[8];
                os_unfair_lock_unlock(v78 + 28);

                v80 = *(v404 + 1);
                *buf = 136448258;
                *&buf[4] = "nw_endpoint_resolver_update";
                *&buf[12] = 2082;
                *&buf[14] = v67;
                *&buf[22] = 2082;
                v425 = v36;
                *v426 = 2082;
                *&v426[2] = v39;
                *&v426[10] = 2082;
                *&v426[12] = v71;
                v427 = 2082;
                v428 = v75;
                v429 = 2114;
                v430 = v79;
                v431 = 2048;
                v432 = v80;
                v433 = 2048;
                v434 = v413;
                _os_log_impl(&dword_181A37000, v32, OS_LOG_TYPE_DEFAULT, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] ignoring update from old resolver object (%p != %p)", buf, 0x5Cu);

LABEL_449:
                v25 = v404;
                goto LABEL_450;
            }
          }

          v75 = "unknown-mode";
          goto LABEL_86;
        }
      }

LABEL_450:

      goto LABEL_451;
    }

    v40 = v27->parameters;

    v389 = v40;
    if (v40)
    {
      if (_nw_parameters_get_fail_if_svcb_received(v40))
      {
        v422[0] = 0;
        nw_resolver_get_svcb_report(*(v25 + 1), 0, v422, 0);
        if (v422[0] == 1)
        {
          v41 = v28;
          v42 = (*(v41 + 284) & 0x20) == 0;

          if (v42)
          {
            v43 = v41;
            v44 = (*(v41 + 284) & 0x40) == 0;

            if (!v44)
            {
LABEL_41:
              v53 = nw_endpoint_handler_copy_endpoint(v41);
              v54 = nw_endpoint_get_type(v53);
              if (v54 == (nw_endpoint_type_url|nw_endpoint_type_address))
              {
                v55 = 7;
              }

              else
              {
                v55 = 2;
              }

              if (v54 == nw_endpoint_type_bonjour_service)
              {
                v56 = 4;
              }

              else
              {
                v56 = v55;
              }

              nw_endpoint_handler_handle_failure(v41);
              v57 = [[NWConcrete_nw_error alloc] initWithDomain:-65571 code:?];
              v41->event.domain = 2;
              v41->event.event = v56;
              nw_endpoint_handler_report(v41, 0, &v41->event.domain, v57);

              goto LABEL_448;
            }

            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v45 = gconnectionLogObj;
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
            {
              v46 = nw_endpoint_handler_get_id_string(v43);
              v47 = nw_endpoint_handler_dry_run_string(v43);
              v48 = nw_endpoint_handler_copy_endpoint(v43);
              v49 = nw_endpoint_get_logging_description(v48);
              v50 = nw_endpoint_handler_state_string(v43);
              v51 = nw_endpoint_handler_mode_string(v43);
              v52 = nw_endpoint_handler_copy_current_path(v43);
              *buf = 136447746;
              *&buf[4] = "nw_endpoint_resolver_update";
              *&buf[12] = 2082;
              *&buf[14] = v46;
              *&buf[22] = 2082;
              v425 = v47;
              *v426 = 2082;
              *&v426[2] = v49;
              *&v426[10] = 2082;
              *&v426[12] = v50;
              v427 = 2082;
              v428 = v51;
              v429 = 2114;
              v430 = v52;
              _os_log_impl(&dword_181A37000, v45, OS_LOG_TYPE_DEFAULT, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] received SVCB, and required to fail", buf, 0x48u);
            }
          }

          else
          {
            if (nw_endpoint_handler_get_logging_disabled(v41))
            {
              goto LABEL_41;
            }

            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v45 = gconnectionLogObj;
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
            {
              v112 = nw_endpoint_handler_get_id_string(v41);
              v113 = nw_endpoint_handler_dry_run_string(v41);
              v114 = nw_endpoint_handler_copy_endpoint(v41);
              v115 = nw_endpoint_get_logging_description(v114);
              v116 = nw_endpoint_handler_state_string(v41);
              v117 = nw_endpoint_handler_mode_string(v41);
              v118 = nw_endpoint_handler_copy_current_path(v41);
              *buf = 136447746;
              *&buf[4] = "nw_endpoint_resolver_update";
              *&buf[12] = 2082;
              *&buf[14] = v112;
              *&buf[22] = 2082;
              v425 = v113;
              *v426 = 2082;
              *&v426[2] = v115;
              *&v426[10] = 2082;
              *&v426[12] = v116;
              v427 = 2082;
              v428 = v117;
              v429 = 2114;
              v430 = v118;
              _os_log_impl(&dword_181A37000, v45, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] received SVCB, and required to fail", buf, 0x48u);
            }
          }

          goto LABEL_41;
        }
      }

LABEL_140:
      if (*(v25 + 4))
      {
        v119 = v28;
        v120 = (*(v119 + 284) & 0x20) == 0;

        if (!v120)
        {
          if (nw_endpoint_handler_get_logging_disabled(v119))
          {
            goto LABEL_448;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v123 = gconnectionLogObj;
          if (os_log_type_enabled(v123, OS_LOG_TYPE_DEBUG))
          {
            v354 = nw_endpoint_handler_get_id_string(v119);
            v355 = nw_endpoint_handler_dry_run_string(v119);
            v356 = nw_endpoint_handler_copy_endpoint(v119);
            v357 = nw_endpoint_get_logging_description(v356);
            v358 = nw_endpoint_handler_state_string(v119);
            v359 = nw_endpoint_handler_mode_string(v119);
            v360 = nw_endpoint_handler_copy_current_path(v119);
            *buf = 136447746;
            *&buf[4] = "nw_endpoint_resolver_update";
            *&buf[12] = 2082;
            *&buf[14] = v354;
            *&buf[22] = 2082;
            v425 = v355;
            *v426 = 2082;
            *&v426[2] = v357;
            *&v426[10] = 2082;
            *&v426[12] = v358;
            v427 = 2082;
            v428 = v359;
            v429 = 2114;
            v430 = v360;
            _os_log_impl(&dword_181A37000, v123, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] already connected, ignoring update from resolver", buf, 0x48u);
          }

          goto LABEL_433;
        }

        v121 = v119;
        v122 = (*(v119 + 284) & 0x40) == 0;

        if (!v122)
        {
LABEL_448:
          v32 = v389;
          goto LABEL_449;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v123 = gconnectionLogObj;
        if (!os_log_type_enabled(v123, OS_LOG_TYPE_INFO))
        {
LABEL_433:

          goto LABEL_448;
        }

        v124 = v121;

        v125 = v124;
        v126 = (*(v119 + 284) & 1) == 0;

        if (v126)
        {
          v127 = "";
        }

        else
        {
          v127 = "dry-run ";
        }

        v128 = nw_endpoint_handler_copy_endpoint(v125);
        v129 = v128;
        if (v128)
        {
          v130 = _nw_endpoint_get_logging_description(v128);
        }

        else
        {
          v130 = "<NULL>";
        }

        v143 = v125;
        v144 = v143;
        v145 = v10->state;
        if (v145 > 5)
        {
          v146 = "unknown-state";
        }

        else
        {
          v146 = off_1E6A31048[v145];
        }

        v147 = v144;
        v148 = v147;
        v149 = v8[29];
        if (v149 > 2)
        {
          switch(v149)
          {
            case 3:
              v150 = "proxy";
              goto LABEL_432;
            case 4:
              v150 = "fallback";
              goto LABEL_432;
            case 5:
              v150 = "transform";
              goto LABEL_432;
          }
        }

        else
        {
          switch(v149)
          {
            case 0:
              v150 = "path";
              goto LABEL_432;
            case 1:
              v150 = "resolver";
              goto LABEL_432;
            case 2:
              v150 = nw_endpoint_flow_mode_string(v147[33]);
LABEL_432:

              v340 = v148;
              os_unfair_lock_lock(v340 + 28);
              v341 = v340[8];
              os_unfair_lock_unlock(v340 + 28);

              *buf = 136447746;
              *&buf[4] = "nw_endpoint_resolver_update";
              *&buf[12] = 2082;
              *&buf[14] = v124->id_str;
              *&buf[22] = 2082;
              v425 = v127;
              *v426 = 2082;
              *&v426[2] = v130;
              *&v426[10] = 2082;
              *&v426[12] = v146;
              v427 = 2082;
              v428 = v150;
              v429 = 2114;
              v430 = v341;
              _os_log_impl(&dword_181A37000, v123, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] already connected, ignoring update from resolver", buf, 0x48u);

              goto LABEL_433;
          }
        }

        v150 = "unknown-mode";
        goto LABEL_432;
      }

      *(v25 + 4) = v410;
      v131 = v28;
      v132 = (*(v131 + 284) & 0x40) == 0;
      v411 = v131;

      if (v132)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v133 = gconnectionLogObj;
        if (os_log_type_enabled(v133, OS_LOG_TYPE_DEBUG))
        {
          v134 = nw_endpoint_handler_get_id_string(v411);
          v135 = nw_endpoint_handler_dry_run_string(v411);
          v136 = nw_endpoint_handler_copy_endpoint(v411);
          v137 = nw_endpoint_get_logging_description(v136);
          v138 = nw_endpoint_handler_state_string(v411);
          v139 = nw_endpoint_handler_mode_string(v411);
          v140 = nw_endpoint_handler_copy_current_path(v411);
          v141 = v140;
          if (v410 > 2)
          {
            v142 = "unknown";
          }

          else
          {
            v142 = off_1E6A30E18[v410];
          }

          *buf = 136448002;
          *&buf[4] = "nw_endpoint_resolver_update";
          *&buf[12] = 2082;
          *&buf[14] = v134;
          *&buf[22] = 2082;
          v425 = v135;
          *v426 = 2082;
          *&v426[2] = v137;
          *&v426[10] = 2082;
          *&v426[12] = v138;
          v427 = 2082;
          v428 = v139;
          v429 = 2114;
          v430 = v140;
          v431 = 2082;
          v432 = v142;
          _os_log_impl(&dword_181A37000, v133, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] resolver is %{public}s", buf, 0x52u);
        }
      }

      v151 = v404;
      v152 = *(v404 + 12);
      v153 = *(v404 + 11);
      if (v153)
      {
        v387 = v152;
        combined_array = nw_array_create_combined_array(v152, v153);

        v152 = combined_array;
        v151 = v404;
      }

      v388 = v152;
      if (v152)
      {
        if (_nw_array_get_count(v152))
        {
          v156 = *(v151 + 8);
          if (v156)
          {
            nw_queue_cancel_source(v156, v155);
            *(v151 + 8) = 0;
          }
        }
      }

      if (v410 - 1 > 1)
      {
LABEL_447:

        goto LABEL_448;
      }

      v384 = v388;
      v397 = _nw_array_create();
      count = *(v404 + 5);
      v398 = (v404 + 40);
      v158 = *(v404 + 5);
      if (count)
      {
        count = _nw_array_get_count(count);
      }

      if (count < v158)
      {
        v403 = v384;
        if (!*v398)
        {
          goto LABEL_326;
        }

        LODWORD(v158) = _nw_array_get_count(*v398);
      }

      v403 = v384;
      if (v158)
      {
        v400 = 0;
        v392 = v158;
        v403 = v384;
        do
        {
          if (*v398)
          {
            v407 = _nw_array_get_object_at_index(*v398, v400);
            if (v397)
            {
              v159 = v407;
              if (!v407)
              {
                goto LABEL_193;
              }

              _nw_array_append(v397, v407);
            }

            v159 = v407;
          }

          else
          {
            v159 = 0;
          }

LABEL_193:
          v408 = v159;
          v160 = nw_endpoint_handler_copy_endpoint(v159);
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = ___ZL44nw_endpoint_resolver_array_contains_endpointPU22objcproto11OS_nw_array8NSObjectPU25objcproto14OS_nw_endpointS__block_invoke;
          v425 = &unk_1E6A3CCB8;
          *v426 = v160;
          v161 = v160;
          v405 = v161;
          if (v403)
          {
            v162 = _nw_array_apply(v403, buf);

            if ((v162 & 1) == 0)
            {
              v163 = v403;
              v164 = v405;
              if (v164)
              {
                v165 = _nw_array_create();
                *buf = MEMORY[0x1E69E9820];
                *&buf[8] = 3221225472;
                *&buf[16] = ___ZL53nw_endpoint_resolver_duplicate_array_without_endpointPU22objcproto11OS_nw_array8NSObjectPU25objcproto14OS_nw_endpointS__block_invoke;
                v425 = &unk_1E6A35E80;
                *v426 = v164;
                v166 = v165;
                *&v426[8] = v166;
                _nw_array_apply(v163, buf);
                v167 = *&v426[8];
                v403 = v166;

                goto LABEL_197;
              }

              v249 = __nwlog_obj();
              *v422 = 136446210;
              *&v422[4] = "nw_endpoint_resolver_duplicate_array_without_endpoint";
              v383 = 12;
              v382 = v422;
              v250 = _os_log_send_and_compose_impl();

              v251 = v163;
              type[0] = OS_LOG_TYPE_ERROR;
              v421 = 0;
              if (__nwlog_fault(v250, type, &v421))
              {
                if (type[0] == OS_LOG_TYPE_FAULT)
                {
                  v252 = __nwlog_obj();
                  v253 = type[0];
                  if (os_log_type_enabled(v252, type[0]))
                  {
                    *v422 = 136446210;
                    *&v422[4] = "nw_endpoint_resolver_duplicate_array_without_endpoint";
                    _os_log_impl(&dword_181A37000, v252, v253, "%{public}s called with null remove_endpoint", v422, 0xCu);
                  }

                  goto LABEL_311;
                }

                if (v421 == 1)
                {
                  v254 = __nw_create_backtrace_string();
                  v255 = __nwlog_obj();
                  v256 = type[0];
                  v257 = os_log_type_enabled(v255, type[0]);
                  if (v254)
                  {
                    if (v257)
                    {
                      *v422 = 136446466;
                      *&v422[4] = "nw_endpoint_resolver_duplicate_array_without_endpoint";
                      *&v422[12] = 2082;
                      *&v422[14] = v254;
                      _os_log_impl(&dword_181A37000, v255, v256, "%{public}s called with null remove_endpoint, dumping backtrace:%{public}s", v422, 0x16u);
                    }

                    free(v254);
                  }

                  else
                  {
                    if (v257)
                    {
                      *v422 = 136446210;
                      *&v422[4] = "nw_endpoint_resolver_duplicate_array_without_endpoint";
                      _os_log_impl(&dword_181A37000, v255, v256, "%{public}s called with null remove_endpoint, no backtrace", v422, 0xCu);
                    }
                  }
                }

                else
                {
                  v252 = __nwlog_obj();
                  v258 = type[0];
                  if (os_log_type_enabled(v252, type[0]))
                  {
                    *v422 = 136446210;
                    *&v422[4] = "nw_endpoint_resolver_duplicate_array_without_endpoint";
                    _os_log_impl(&dword_181A37000, v252, v258, "%{public}s called with null remove_endpoint, backtrace limit exceeded", v422, 0xCu);
                  }

LABEL_311:
                }
              }

              if (v250)
              {
                free(v250);
              }

              v403 = 0;
              v163 = v251;
LABEL_197:

              v168 = v411;
              v169 = (*(v411 + 284) & 0x40) == 0;

              if (v169)
              {
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v170 = gconnectionLogObj;
                if (os_log_type_enabled(v170, OS_LOG_TYPE_DEBUG))
                {
                  v171 = v168;

                  v172 = v171;
                  LODWORD(v171) = (*(v411 + 284) & 1) == 0;

                  if (v171)
                  {
                    v173 = "";
                  }

                  else
                  {
                    v173 = "dry-run ";
                  }

                  v174 = nw_endpoint_handler_copy_endpoint(v172);
                  v175 = v174;
                  v386 = v174;
                  log = v173;
                  if (v174)
                  {
                    v385 = _nw_endpoint_get_logging_description(v174);
                  }

                  else
                  {
                    v385 = "<NULL>";
                  }

                  v194 = v172;
                  v195 = v194;
                  v196 = v399->state;
                  v197 = "unknown-state";
                  if (v196 <= 5)
                  {
                    v197 = off_1E6A31048[v196];
                  }

                  v198 = v195;
                  v199 = v8[29];
                  if (v199 > 2)
                  {
                    switch(v199)
                    {
                      case 3:
                        v200 = "proxy";
                        break;
                      case 4:
                        v200 = "fallback";
                        break;
                      case 5:
                        v200 = "transform";
                        break;
                      default:
                        goto LABEL_291;
                    }
                  }

                  else if (v199)
                  {
                    if (v199 == 1)
                    {
                      v200 = "resolver";
                    }

                    else
                    {
                      if (v199 == 2)
                      {
                        v200 = nw_endpoint_flow_mode_string(v411->mode_handler);
                        goto LABEL_294;
                      }

LABEL_291:
                      v200 = "unknown-mode";
                    }
                  }

                  else
                  {
                    v200 = "path";
                  }

LABEL_294:
                  v233 = v164 == 0;

                  v234 = v163;
                  v235 = v198;
                  os_unfair_lock_lock(&v411->lock);
                  v236 = v411->current_path;
                  os_unfair_lock_unlock(&v411->lock);

                  v163 = v234;
                  v237 = v236;
                  v238 = v164;
                  v239 = v238;
                  if (v233)
                  {
                    v240 = "<NULL>";
                  }

                  else
                  {
                    v240 = _nw_endpoint_get_logging_description(v238);
                  }

                  *buf = 136448002;
                  *&buf[4] = "nw_endpoint_resolver_update";
                  *&buf[12] = 2082;
                  *&buf[14] = v411->id_str;
                  *&buf[22] = 2082;
                  v425 = log;
                  *v426 = 2082;
                  *&v426[2] = v385;
                  *&v426[10] = 2082;
                  *&v426[12] = v197;
                  v427 = 2082;
                  v428 = v200;
                  v429 = 2114;
                  v430 = v237;
                  v431 = 2082;
                  v432 = v240;
                  _os_log_impl(&dword_181A37000, v170, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Keeping started endpoint %{public}s", buf, 0x52u);
                }
              }

              v207 = v405;
              goto LABEL_300;
            }
          }

          else
          {
          }

          v176 = v411;
          v177 = (*(v411 + 284) & 0x20) == 0;

          if (!v177)
          {
            if (nw_endpoint_handler_get_logging_disabled(v176))
            {
              goto LABEL_251;
            }

            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v180 = gconnectionLogObj;
            if (os_log_type_enabled(v180, OS_LOG_TYPE_DEBUG))
            {
              v241 = nw_endpoint_handler_get_id_string(v176);
              v242 = nw_endpoint_handler_dry_run_string(v176);
              v243 = nw_endpoint_handler_copy_endpoint(v176);
              v244 = nw_endpoint_get_logging_description(v243);
              v245 = nw_endpoint_handler_state_string(v176);
              v246 = nw_endpoint_handler_mode_string(v176);
              v247 = nw_endpoint_handler_copy_current_path(v176);
              v248 = nw_endpoint_get_logging_description(v405);
              *buf = 136448002;
              *&buf[4] = "nw_endpoint_resolver_update";
              *&buf[12] = 2082;
              *&buf[14] = v241;
              *&buf[22] = 2082;
              v425 = v242;
              *v426 = 2082;
              *&v426[2] = v244;
              *&v426[10] = 2082;
              *&v426[12] = v245;
              v427 = 2082;
              v428 = v246;
              v429 = 2114;
              v430 = v247;
              v431 = 2082;
              v432 = v248;
              _os_log_impl(&dword_181A37000, v180, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Started endpoint %{public}s is no longer resolved", buf, 0x52u);
            }

            goto LABEL_250;
          }

          v178 = v176;
          v179 = (*(v411 + 284) & 0x40) == 0;

          if (v179)
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v180 = gconnectionLogObj;
            if (os_log_type_enabled(v180, OS_LOG_TYPE_INFO))
            {
              loga = v180;
              v181 = v178;

              v182 = v181;
              LODWORD(v181) = (*(v411 + 284) & 1) == 0;

              if (v181)
              {
                v183 = "";
              }

              else
              {
                v183 = "dry-run ";
              }

              v184 = nw_endpoint_handler_copy_endpoint(v182);
              v185 = v184;
              if (v184)
              {
                v186 = _nw_endpoint_get_logging_description(v184);
              }

              else
              {
                v186 = "<NULL>";
              }

              v187 = v182;
              v188 = v187;
              v189 = v399->state;
              v190 = "unknown-state";
              if (v189 <= 5)
              {
                v190 = off_1E6A31048[v189];
              }

              v191 = v188;
              v192 = v8[29];
              if (v192 > 2)
              {
                switch(v192)
                {
                  case 3:
                    v193 = "proxy";
                    break;
                  case 4:
                    v193 = "fallback";
                    break;
                  case 5:
                    v193 = "transform";
                    break;
                  default:
                    goto LABEL_243;
                }
              }

              else if (v192)
              {
                if (v192 == 1)
                {
                  v193 = "resolver";
                }

                else
                {
                  if (v192 == 2)
                  {
                    v193 = nw_endpoint_flow_mode_string(v411->mode_handler);
                    goto LABEL_246;
                  }

LABEL_243:
                  v193 = "unknown-mode";
                }
              }

              else
              {
                v193 = "path";
              }

LABEL_246:

              v201 = v191;
              os_unfair_lock_lock(&v411->lock);
              v202 = v411->current_path;
              os_unfair_lock_unlock(&v411->lock);

              v203 = v202;
              v204 = v405;
              v205 = v204;
              if (v204)
              {
                v206 = _nw_endpoint_get_logging_description(v204);
              }

              else
              {
                v206 = "<NULL>";
              }

              *buf = 136448002;
              *&buf[4] = "nw_endpoint_resolver_update";
              *&buf[12] = 2082;
              *&buf[14] = v411->id_str;
              *&buf[22] = 2082;
              v425 = v183;
              *v426 = 2082;
              *&v426[2] = v186;
              *&v426[10] = 2082;
              *&v426[12] = v190;
              v427 = 2082;
              v428 = v193;
              v429 = 2114;
              v430 = v203;
              v431 = 2082;
              v432 = v206;
              _os_log_impl(&dword_181A37000, loga, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Started endpoint %{public}s is no longer resolved", buf, 0x52u);

              v180 = loga;
            }

LABEL_250:
          }

LABEL_251:
          v207 = v405;
          if (v410 != 1 || (*(v404 + 24) & 0x20) == 0)
          {
            goto LABEL_300;
          }

          nw_array_remove_object(v397, v408);
          v208 = *(v404 + 6);
          if (v208 && v408 && _nw_array_contains_object(v208, v408))
          {
            v209 = nw_array_duplicate_array_without_object(*(v404 + 6), v408);
            v210 = *(v404 + 6);
            *(v404 + 6) = v209;
          }

          v211 = v176;
          v212 = (*(v411 + 284) & 0x40) == 0;

          if (!v212)
          {
            goto LABEL_288;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v213 = gconnectionLogObj;
          if (os_log_type_enabled(v213, OS_LOG_TYPE_DEBUG))
          {
            v214 = v211;

            v215 = v214;
            LODWORD(v214) = (*(v411 + 284) & 1) == 0;

            if (v214)
            {
              v216 = "";
            }

            else
            {
              v216 = "dry-run ";
            }

            v217 = nw_endpoint_handler_copy_endpoint(v215);
            v218 = v217;
            if (v217)
            {
              v219 = _nw_endpoint_get_logging_description(v217);
            }

            else
            {
              v219 = "<NULL>";
            }

            v220 = v215;
            v221 = v220;
            v222 = v399->state;
            v223 = "unknown-state";
            if (v222 <= 5)
            {
              v223 = off_1E6A31048[v222];
            }

            v224 = v221;
            v225 = v8[29];
            if (v225 > 2)
            {
              switch(v225)
              {
                case 3:
                  v226 = "proxy";
                  goto LABEL_283;
                case 4:
                  v226 = "fallback";
                  goto LABEL_283;
                case 5:
                  v226 = "transform";
                  goto LABEL_283;
              }
            }

            else
            {
              switch(v225)
              {
                case 0:
                  v226 = "path";
                  goto LABEL_283;
                case 1:
                  v226 = "resolver";
                  goto LABEL_283;
                case 2:
                  v226 = nw_endpoint_flow_mode_string(v411->mode_handler);
LABEL_283:

                  v227 = v224;
                  os_unfair_lock_lock(&v411->lock);
                  v228 = v411->current_path;
                  os_unfair_lock_unlock(&v411->lock);

                  v229 = v228;
                  v230 = v405;
                  v231 = v230;
                  if (v230)
                  {
                    description = _nw_endpoint_get_description(v230);
                  }

                  else
                  {
                    description = "<NULL>";
                  }

                  *buf = 136448002;
                  *&buf[4] = "nw_endpoint_resolver_update";
                  *&buf[12] = 2082;
                  *&buf[14] = v411->id_str;
                  *&buf[22] = 2082;
                  v425 = v216;
                  *v426 = 2082;
                  *&v426[2] = v219;
                  *&v426[10] = 2082;
                  *&v426[12] = v223;
                  v427 = 2082;
                  v428 = v226;
                  v429 = 2114;
                  v430 = v229;
                  v431 = 2080;
                  v432 = description;
                  _os_log_impl(&dword_181A37000, v213, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Removing endpoint handler for %s", buf, 0x52u);

                  goto LABEL_287;
              }
            }

            v226 = "unknown-mode";
            goto LABEL_283;
          }

LABEL_287:

LABEL_288:
          v207 = v405;
          nw_endpoint_handler_cancel(v408, 0, 0);
LABEL_300:

          ++v400;
        }

        while (v392 != v400);
      }

LABEL_326:
      objc_storeStrong(v398, v397);
      v259 = *v398;
      if (*v398)
      {
        LODWORD(v259) = _nw_array_get_count(v259);
      }

      *(v404 + 5) = v259;
      if (v403)
      {
        v409 = _nw_array_get_count(v403);
        if (v409)
        {
          v260 = v403;
          v261 = 0;
          while (1)
          {
            v262 = _nw_array_get_object_at_index(v260, v261);
            child_parameters = nw_endpoint_resolver_create_child_parameters(v411);
            if (nw_endpoint_get_is_approved_app_domain(v262))
            {
              nw_parameters_set_is_approved_app_domain(child_parameters);
            }

            inner = nw_endpoint_handler_create_inner(v262, child_parameters, nw_endpoint_resolver_receive_report, v411, v411, 0, 0, 0);
            if (!inner)
            {
              goto LABEL_371;
            }

            v265 = v411;
            v266 = (*(v411 + 284) & 0x20) == 0;

            if (v266)
            {
              break;
            }

            if ((nw_endpoint_handler_get_logging_disabled(v265) & 1) == 0)
            {
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v406 = gconnectionLogObj;
              if (os_log_type_enabled(v406, OS_LOG_TYPE_DEBUG))
              {
                v396 = nw_endpoint_handler_get_id_string(v265);
                v394 = nw_endpoint_handler_dry_run_string(v265);
                v402 = nw_endpoint_handler_copy_endpoint(v265);
                v291 = nw_endpoint_get_logging_description(v402);
                v292 = nw_endpoint_handler_state_string(v265);
                v293 = nw_endpoint_handler_mode_string(v265);
                v294 = nw_endpoint_handler_copy_current_path(v265);
                v295 = nw_endpoint_get_logging_description(v262);
                is_known_tracker = nw_parameters_get_is_known_tracker(child_parameters);
                *buf = 136448258;
                v297 = "";
                if (is_known_tracker)
                {
                  v297 = ", tracker";
                }

                *&buf[4] = "nw_endpoint_resolver_update";
                *&buf[12] = 2082;
                *&buf[14] = v396;
                *&buf[22] = 2082;
                v425 = v394;
                *v426 = 2082;
                *&v426[2] = v291;
                *&v426[10] = 2082;
                *&v426[12] = v292;
                v427 = 2082;
                v428 = v293;
                v429 = 2114;
                v430 = v294;
                v431 = 2082;
                v432 = v295;
                v433 = 2080;
                v434 = v297;
                _os_log_impl(&dword_181A37000, v406, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Adding endpoint handler for %{public}s%s", buf, 0x5Cu);
              }

LABEL_367:
              v269 = v406;
LABEL_368:
            }

LABEL_369:
            if (*v398)
            {
              _nw_array_append(*v398, inner);
            }

LABEL_371:

            ++v261;
            v260 = v403;
            if (v409 == v261)
            {
              goto LABEL_380;
            }
          }

          v267 = v265;
          v268 = (*(v411 + 284) & 0x40) == 0;

          if (!v268)
          {
            goto LABEL_369;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v269 = gconnectionLogObj;
          if (!os_log_type_enabled(v269, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_368;
          }

          v406 = v269;
          v270 = v267;

          v271 = v270;
          v272 = (*(v411 + 284) & 1) == 0;

          if (v272)
          {
            v273 = "";
          }

          else
          {
            v273 = "dry-run ";
          }

          v274 = nw_endpoint_handler_copy_endpoint(v271);
          v275 = v274;
          v395 = v274;
          v401 = v273;
          if (v274)
          {
            v393 = _nw_endpoint_get_logging_description(v274);
          }

          else
          {
            v393 = "<NULL>";
          }

          v276 = v271;
          v277 = v276;
          v278 = v399->state;
          v279 = "unknown-state";
          if (v278 <= 5)
          {
            v279 = off_1E6A31048[v278];
          }

          v280 = v277;
          v281 = v8[29];
          if (v281 > 2)
          {
            switch(v281)
            {
              case 3:
                v282 = "proxy";
                goto LABEL_361;
              case 4:
                v282 = "fallback";
                goto LABEL_361;
              case 5:
                v282 = "transform";
                goto LABEL_361;
            }
          }

          else
          {
            switch(v281)
            {
              case 0:
                v282 = "path";
                goto LABEL_361;
              case 1:
                v282 = "resolver";
                goto LABEL_361;
              case 2:
                v282 = nw_endpoint_flow_mode_string(v411->mode_handler);
LABEL_361:

                v283 = v280;
                os_unfair_lock_lock(&v411->lock);
                v284 = v411->current_path;
                os_unfair_lock_unlock(&v411->lock);

                v285 = v284;
                v286 = v262;
                v287 = v286;
                if (v286)
                {
                  v288 = _nw_endpoint_get_logging_description(v286);
                }

                else
                {
                  v288 = "<NULL>";
                }

                v289 = nw_parameters_get_is_known_tracker(child_parameters);
                *buf = 136448258;
                v290 = "";
                if (v289)
                {
                  v290 = ", tracker";
                }

                *&buf[4] = "nw_endpoint_resolver_update";
                *&buf[12] = 2082;
                *&buf[14] = v411->id_str;
                *&buf[22] = 2082;
                v425 = v401;
                *v426 = 2082;
                *&v426[2] = v393;
                *&v426[10] = 2082;
                *&v426[12] = v279;
                v427 = 2082;
                v428 = v282;
                v429 = 2114;
                v430 = v285;
                v431 = 2082;
                v432 = v288;
                v433 = 2080;
                v434 = v290;
                _os_log_impl(&dword_181A37000, v406, OS_LOG_TYPE_DEFAULT, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Adding endpoint handler for %{public}s%s", buf, 0x5Cu);

                goto LABEL_367;
            }
          }

          v282 = "unknown-mode";
          goto LABEL_361;
        }
      }

LABEL_380:
      v298 = __nwlog_obj();
      if (os_log_type_enabled(v298, OS_LOG_TYPE_DEBUG))
      {
      }

      else
      {
        v299 = gLogFDOverride == -1;

        if (v299)
        {
          goto LABEL_394;
        }
      }

      *v422 = 0;
      *&v422[8] = v422;
      *&v422[16] = 0x2020000000;
      v423 = 1;
      *type = 0;
      v418 = type;
      v419 = 0x2020000000;
      v420 = 0;
      asprintf(&v420, "", v382, v383);
      v300 = *v398;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = ___ZL27nw_endpoint_resolver_updateP30NWConcrete_nw_endpoint_handlerPU25objcproto14OS_nw_resolver8NSObject20nw_resolver_status_t_block_invoke;
      aBlock[3] = &unk_1E6A39C00;
      aBlock[4] = type;
      aBlock[5] = v422;
      if (v300)
      {
        _nw_array_apply(v300, aBlock);
      }

      if ((nw_endpoint_handler_get_logging_disabled(v411) & 1) == 0)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v301 = gconnectionLogObj;
        if (os_log_type_enabled(v301, OS_LOG_TYPE_DEBUG))
        {
          v302 = nw_endpoint_handler_get_id_string(v411);
          v303 = nw_endpoint_handler_dry_run_string(v411);
          v304 = nw_endpoint_handler_copy_endpoint(v411);
          v305 = nw_endpoint_get_logging_description(v304);
          v306 = nw_endpoint_handler_state_string(v411);
          v307 = nw_endpoint_handler_mode_string(v411);
          v308 = nw_endpoint_handler_copy_current_path(v411);
          v309 = *(v418 + 3);
          *buf = 136448002;
          *&buf[4] = "nw_endpoint_resolver_update";
          *&buf[12] = 2082;
          *&buf[14] = v302;
          *&buf[22] = 2082;
          v425 = v303;
          *v426 = 2082;
          *&v426[2] = v305;
          *&v426[10] = 2082;
          *&v426[12] = v306;
          v427 = 2082;
          v428 = v307;
          v429 = 2114;
          v430 = v308;
          v431 = 2082;
          v432 = v309;
          _os_log_impl(&dword_181A37000, v301, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Updated endpoint list is (%{public}s)", buf, 0x52u);
        }
      }

      v310 = *(v418 + 3);
      if (v310)
      {
        free(v310);
        *(v418 + 3) = 0;
      }

      _Block_object_dispose(type, 8);
      _Block_object_dispose(v422, 8);
LABEL_394:
      v311 = nw_endpoint_handler_copy_endpoint(v411);
      v312 = nw_endpoint_get_type(v311);
      if (v312 == (nw_endpoint_type_url|nw_endpoint_type_address))
      {
        v313 = 7;
      }

      else
      {
        v313 = 2;
      }

      if (v312 == nw_endpoint_type_bonjour_service)
      {
        v314 = 4;
      }

      else
      {
        v314 = v313;
      }

      if (*v398)
      {
        v315 = _nw_array_get_count(*v398);
        if (v315)
        {
          v411->event.domain = 2;
          v411->event.event = v314;
          nw_endpoint_handler_report(v411, 0, &v411->event.domain, 0);
          v316 = *(v404 + 6);
          if (v316)
          {
            v316 = _nw_array_get_count(v316);
            if (v410 == 2 && v315 == v316)
            {
              minimize_logging = nw_endpoint_handler_get_minimize_logging(v411);
              logging_disabled = nw_endpoint_handler_get_logging_disabled(v411);
              if (minimize_logging)
              {
                if (logging_disabled)
                {
                  goto LABEL_412;
                }

                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v319 = gconnectionLogObj;
                if (os_log_type_enabled(v319, OS_LOG_TYPE_DEBUG))
                {
                  v375 = nw_endpoint_handler_get_id_string(v411);
                  v376 = nw_endpoint_handler_dry_run_string(v411);
                  v377 = nw_endpoint_handler_copy_endpoint(v411);
                  v378 = nw_endpoint_get_logging_description(v377);
                  v379 = nw_endpoint_handler_state_string(v411);
                  v380 = nw_endpoint_handler_mode_string(v411);
                  v381 = nw_endpoint_handler_copy_current_path(v411);
                  *buf = 136447746;
                  *&buf[4] = "nw_endpoint_resolver_update";
                  *&buf[12] = 2082;
                  *&buf[14] = v375;
                  *&buf[22] = 2082;
                  v425 = v376;
                  *v426 = 2082;
                  *&v426[2] = v378;
                  *&v426[10] = 2082;
                  *&v426[12] = v379;
                  v427 = 2082;
                  v428 = v380;
                  v429 = 2114;
                  v430 = v381;
                  _os_log_impl(&dword_181A37000, v319, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] resolver complete, all children failed", buf, 0x48u);
                }
              }

              else
              {
                if (logging_disabled)
                {
LABEL_412:
                  nw_endpoint_handler_handle_failure(v411);
                  v411->event = 327682;
                  nw_endpoint_handler_report(v411, 0, &v411->event.domain, 0);
LABEL_446:

                  goto LABEL_447;
                }

                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v319 = gconnectionLogObj;
                if (os_log_type_enabled(v319, OS_LOG_TYPE_INFO))
                {
                  v320 = nw_endpoint_handler_get_id_string(v411);
                  v321 = nw_endpoint_handler_dry_run_string(v411);
                  v322 = nw_endpoint_handler_copy_endpoint(v411);
                  v323 = nw_endpoint_get_logging_description(v322);
                  v324 = nw_endpoint_handler_state_string(v411);
                  v325 = nw_endpoint_handler_mode_string(v411);
                  v326 = nw_endpoint_handler_copy_current_path(v411);
                  *buf = 136447746;
                  *&buf[4] = "nw_endpoint_resolver_update";
                  *&buf[12] = 2082;
                  *&buf[14] = v320;
                  *&buf[22] = 2082;
                  v425 = v321;
                  *v426 = 2082;
                  *&v426[2] = v323;
                  *&v426[10] = 2082;
                  *&v426[12] = v324;
                  v427 = 2082;
                  v428 = v325;
                  v429 = 2114;
                  v430 = v326;
                  _os_log_impl(&dword_181A37000, v319, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] resolver complete, all children failed", buf, 0x48u);
                }
              }

              goto LABEL_412;
            }
          }

          v337 = *(v404 + 5);
          if (v337 && v316 != v337 && (*(v404 + 24) & 2) == 0)
          {
            goto LABEL_446;
          }

          v338 = nw_endpoint_handler_copy_context(v411);
          v414[0] = MEMORY[0x1E69E9820];
          v414[1] = 3221225472;
          v414[2] = ___ZL27nw_endpoint_resolver_updateP30NWConcrete_nw_endpoint_handlerPU25objcproto14OS_nw_resolver8NSObject20nw_resolver_status_t_block_invoke_114;
          v414[3] = &unk_1E6A3D868;
          v415 = v411;
          nw_queue_context_async(v338, v414);

          dns_error = v415;
LABEL_445:

          goto LABEL_446;
        }
      }

      if (v410 != 2)
      {
        goto LABEL_446;
      }

      if (nw_endpoint_handler_trigger_agents(v411, 1))
      {
        v327 = nw_endpoint_handler_get_minimize_logging(v411);
        v328 = nw_endpoint_handler_get_logging_disabled(v411);
        if (v327)
        {
          if (v328)
          {
            goto LABEL_422;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v329 = gconnectionLogObj;
          if (os_log_type_enabled(v329, OS_LOG_TYPE_DEBUG))
          {
            v361 = nw_endpoint_handler_get_id_string(v411);
            v362 = nw_endpoint_handler_dry_run_string(v411);
            v363 = nw_endpoint_handler_copy_endpoint(v411);
            v364 = nw_endpoint_get_logging_description(v363);
            v365 = nw_endpoint_handler_state_string(v411);
            v366 = nw_endpoint_handler_mode_string(v411);
            v367 = nw_endpoint_handler_copy_current_path(v411);
            *buf = 136447746;
            *&buf[4] = "nw_endpoint_resolver_update";
            *&buf[12] = 2082;
            *&buf[14] = v361;
            *&buf[22] = 2082;
            v425 = v362;
            *v426 = 2082;
            *&v426[2] = v364;
            *&v426[10] = 2082;
            *&v426[12] = v365;
            v427 = 2082;
            v428 = v366;
            v429 = 2114;
            v430 = v367;
            _os_log_impl(&dword_181A37000, v329, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] resolution failed, trying to trigger voluntary agents", buf, 0x48u);
          }
        }

        else
        {
          if (v328)
          {
LABEL_422:
            nw_endpoint_handler_reset_mode(v411, 0);
            goto LABEL_446;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v329 = gconnectionLogObj;
          if (os_log_type_enabled(v329, OS_LOG_TYPE_INFO))
          {
            v330 = nw_endpoint_handler_get_id_string(v411);
            v331 = nw_endpoint_handler_dry_run_string(v411);
            v332 = nw_endpoint_handler_copy_endpoint(v411);
            v333 = nw_endpoint_get_logging_description(v332);
            v334 = nw_endpoint_handler_state_string(v411);
            v335 = nw_endpoint_handler_mode_string(v411);
            v336 = nw_endpoint_handler_copy_current_path(v411);
            *buf = 136447746;
            *&buf[4] = "nw_endpoint_resolver_update";
            *&buf[12] = 2082;
            *&buf[14] = v330;
            *&buf[22] = 2082;
            v425 = v331;
            *v426 = 2082;
            *&v426[2] = v333;
            *&v426[10] = 2082;
            *&v426[12] = v334;
            v427 = 2082;
            v428 = v335;
            v429 = 2114;
            v430 = v336;
            _os_log_impl(&dword_181A37000, v329, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] resolution failed, trying to trigger voluntary agents", buf, 0x48u);
          }
        }

        goto LABEL_422;
      }

      v342 = nw_endpoint_handler_copy_current_path(v411);
      nw_path_trigger_inactive_cellular_agent_if_necessary(v342);

      LODWORD(v342) = nw_endpoint_handler_get_minimize_logging(v411);
      v343 = nw_endpoint_handler_get_logging_disabled(v411);
      if (v342)
      {
        v344 = v404;
        if (v343)
        {
          goto LABEL_441;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v345 = gconnectionLogObj;
        if (os_log_type_enabled(v345, OS_LOG_TYPE_DEBUG))
        {
          v368 = nw_endpoint_handler_get_id_string(v411);
          v369 = nw_endpoint_handler_dry_run_string(v411);
          v370 = nw_endpoint_handler_copy_endpoint(v411);
          v371 = nw_endpoint_get_logging_description(v370);
          v372 = nw_endpoint_handler_state_string(v411);
          v373 = nw_endpoint_handler_mode_string(v411);
          v374 = nw_endpoint_handler_copy_current_path(v411);
          *buf = 136447746;
          *&buf[4] = "nw_endpoint_resolver_update";
          *&buf[12] = 2082;
          *&buf[14] = v368;
          *&buf[22] = 2082;
          v425 = v369;
          *v426 = 2082;
          *&v426[2] = v371;
          *&v426[10] = 2082;
          *&v426[12] = v372;
          v427 = 2082;
          v428 = v373;
          v429 = 2114;
          v430 = v374;
          _os_log_impl(&dword_181A37000, v345, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] resolution failed", buf, 0x48u);
        }
      }

      else
      {
        v344 = v404;
        if (v343)
        {
LABEL_441:
          error = nw_resolver_get_error(*(v344 + 1));
          if (error)
          {
            dns_error = nw_error_create_dns_error(error);
          }

          else
          {
            dns_error = 0;
          }

          nw_endpoint_handler_handle_failure(v411);
          v411->event.domain = 2;
          v411->event.event = v314;
          nw_endpoint_handler_report(v411, 0, &v411->event.domain, dns_error);
          goto LABEL_445;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v345 = gconnectionLogObj;
        if (os_log_type_enabled(v345, OS_LOG_TYPE_INFO))
        {
          v346 = nw_endpoint_handler_get_id_string(v411);
          v347 = nw_endpoint_handler_dry_run_string(v411);
          v348 = nw_endpoint_handler_copy_endpoint(v411);
          v349 = nw_endpoint_get_logging_description(v348);
          v350 = nw_endpoint_handler_state_string(v411);
          v351 = nw_endpoint_handler_mode_string(v411);
          v352 = nw_endpoint_handler_copy_current_path(v411);
          *buf = 136447746;
          *&buf[4] = "nw_endpoint_resolver_update";
          *&buf[12] = 2082;
          *&buf[14] = v346;
          *&buf[22] = 2082;
          v425 = v347;
          *v426 = 2082;
          *&v426[2] = v349;
          *&v426[10] = 2082;
          *&v426[12] = v350;
          v427 = 2082;
          v428 = v351;
          v429 = 2114;
          v430 = v352;
          _os_log_impl(&dword_181A37000, v345, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] resolution failed", buf, 0x48u);
        }
      }

      v344 = v404;
      goto LABEL_441;
    }

    v104 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_parameters_get_fail_if_svcb_received";
    v383 = 12;
    v382 = buf;
    v105 = _os_log_send_and_compose_impl();

    v422[0] = 16;
    type[0] = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v105, v422, type))
    {
      if (v422[0] == 17)
      {
        v106 = __nwlog_obj();
        v107 = v422[0];
        if (os_log_type_enabled(v106, v422[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_parameters_get_fail_if_svcb_received";
          _os_log_impl(&dword_181A37000, v106, v107, "%{public}s called with null parameters", buf, 0xCu);
        }
      }

      else if (type[0] == OS_LOG_TYPE_INFO)
      {
        v108 = __nw_create_backtrace_string();
        v106 = __nwlog_obj();
        v109 = v422[0];
        v110 = os_log_type_enabled(v106, v422[0]);
        if (v108)
        {
          if (v110)
          {
            *buf = 136446466;
            *&buf[4] = "nw_parameters_get_fail_if_svcb_received";
            *&buf[12] = 2082;
            *&buf[14] = v108;
            _os_log_impl(&dword_181A37000, v106, v109, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v108);
          goto LABEL_137;
        }

        if (v110)
        {
          *buf = 136446210;
          *&buf[4] = "nw_parameters_get_fail_if_svcb_received";
          _os_log_impl(&dword_181A37000, v106, v109, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v106 = __nwlog_obj();
        v111 = v422[0];
        if (os_log_type_enabled(v106, v422[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_parameters_get_fail_if_svcb_received";
          _os_log_impl(&dword_181A37000, v106, v111, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_137:
    if (v105)
    {
      free(v105);
    }

    v25 = v404;
    goto LABEL_140;
  }

  v12 = v10;
  v13 = *(v12 + 284);

  if ((v13 & 0x20) != 0)
  {
    if ((nw_endpoint_handler_get_logging_disabled(v12) & 1) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v16 = gconnectionLogObj;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v88 = nw_endpoint_handler_get_id_string(v12);
        v89 = nw_endpoint_handler_dry_run_string(v12);
        v90 = nw_endpoint_handler_copy_endpoint(v12);
        v91 = nw_endpoint_get_logging_description(v90);
        v92 = nw_endpoint_handler_state_string(v12);
        v93 = nw_endpoint_handler_mode_string(v12);
        v94 = nw_endpoint_handler_copy_current_path(v12);
        *buf = 136447746;
        *&buf[4] = "nw_endpoint_resolver_update";
        *&buf[12] = 2082;
        *&buf[14] = v88;
        *&buf[22] = 2082;
        v425 = v89;
        *v426 = 2082;
        *&v426[2] = v91;
        *&v426[10] = 2082;
        *&v426[12] = v92;
        v427 = 2082;
        v428 = v93;
        v429 = 2114;
        v430 = v94;
        _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] ignoring resolver update", buf, 0x48u);
      }

      goto LABEL_102;
    }
  }

  else
  {
    v14 = v12;
    v15 = *(v12 + 284);

    if ((v15 & 0x40) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v16 = gconnectionLogObj;
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_102;
      }

      v17 = v14;

      v18 = v17;
      v19 = *(v12 + 284);

      if (v19)
      {
        v20 = "dry-run ";
      }

      else
      {
        v20 = "";
      }

      v21 = nw_endpoint_handler_copy_endpoint(v18);
      v22 = v21;
      if (v21)
      {
        v23 = _nw_endpoint_get_logging_description(v21);
      }

      else
      {
        v23 = "<NULL>";
      }

      v58 = v17 + 184;

      v59 = v18;
      v60 = v59;
      v61 = v10->state;
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
      v65 = v8[29];
      if (v65 > 2)
      {
        switch(v65)
        {
          case 3:
            v66 = "proxy";
            goto LABEL_79;
          case 4:
            v66 = "fallback";
            goto LABEL_79;
          case 5:
            v66 = "transform";
            goto LABEL_79;
        }
      }

      else
      {
        switch(v65)
        {
          case 0:
            v66 = "path";
            goto LABEL_79;
          case 1:
            v66 = "resolver";
            goto LABEL_79;
          case 2:
            v66 = nw_endpoint_flow_mode_string(v63[33]);
LABEL_79:

            v76 = v64;
            os_unfair_lock_lock(v76 + 28);
            v77 = v76[8];
            os_unfair_lock_unlock(v76 + 28);

            *buf = 136447746;
            *&buf[4] = "nw_endpoint_resolver_update";
            *&buf[12] = 2082;
            *&buf[14] = v58;
            *&buf[22] = 2082;
            v425 = v20;
            *v426 = 2082;
            *&v426[2] = v23;
            *&v426[10] = 2082;
            *&v426[12] = v62;
            v427 = 2082;
            v428 = v66;
            v429 = 2114;
            v430 = v77;
            _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_DEFAULT, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] ignoring resolver update", buf, 0x48u);

LABEL_102:
            goto LABEL_451;
        }
      }

      v66 = "unknown-mode";
      goto LABEL_79;
    }
  }

LABEL_451:
}

uint64_t nw_endpoint_get_is_approved_app_domain(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    is_approved_app_domain = _nw_endpoint_get_is_approved_app_domain(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_get_is_approved_app_domain";
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
        v16 = "nw_endpoint_get_is_approved_app_domain";
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
          v16 = "nw_endpoint_get_is_approved_app_domain";
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
        v16 = "nw_endpoint_get_is_approved_app_domain";
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
        v16 = "nw_endpoint_get_is_approved_app_domain";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  is_approved_app_domain = 0;
LABEL_3:

  return is_approved_app_domain;
}

uint64_t nw_endpoint_resolver_receive_report(void *a1, int a2, unsigned int a3, unsigned __int16 *a4, void *a5, void *a6)
{
  v343 = *MEMORY[0x1E69E9840];
  v305 = a1;
  v303 = a5;
  v12 = a6;
  v304 = v12;
  if (!v12)
  {
    v216 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_endpoint_resolver_receive_report";
    v217 = _os_log_send_and_compose_impl();

    type[0] = 16;
    v318 = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v217, type, &v318))
    {
      if (type[0] == 17)
      {
        v218 = __nwlog_obj();
        v219 = type[0];
        if (os_log_type_enabled(v218, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_resolver_receive_report";
          _os_log_impl(&dword_181A37000, v218, v219, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v318 == OS_LOG_TYPE_INFO)
      {
        backtrace_string = __nw_create_backtrace_string();
        v218 = __nwlog_obj();
        v221 = type[0];
        v222 = os_log_type_enabled(v218, type[0]);
        if (backtrace_string)
        {
          if (v222)
          {
            *buf = 136446466;
            *&buf[4] = "nw_endpoint_resolver_receive_report";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v218, v221, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_269;
        }

        if (v222)
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_resolver_receive_report";
          _os_log_impl(&dword_181A37000, v218, v221, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v218 = __nwlog_obj();
        v223 = type[0];
        if (os_log_type_enabled(v218, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_resolver_receive_report";
          _os_log_impl(&dword_181A37000, v218, v223, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_269:
    if (v217)
    {
      free(v217);
    }

    goto LABEL_18;
  }

  v13 = v12;
  v14 = v13[29];

  if (v14 == 1)
  {
    v296 = a2;
    obj = a1;
    v295 = v13;
    v299 = a3;
    v15 = v13;
    v16 = *(v15 + 284);

    v302 = v15;
    v298 = a4;
    if ((v16 & 0x40) != 0)
    {
LABEL_42:
      nw_endpoint_handler_report(v15, v305, a4, v303);
      v51 = nw_endpoint_handler_copy_resolver(v15);
      v52 = *(v51 + 5);
      if (v52 && v305 && _nw_array_contains_object(v52, v305))
      {
        loga = v51;
        if (a4 && *a4 - 1 <= 1 && a4[1] == 7)
        {
          v53 = 1;
LABEL_100:
          v94 = networkd_settings_get_BOOL(nw_setting_tcpconn_no_happy_eyeballs_full_stack);
          v95 = 0;
          if (v299 == 2 && a4)
          {
            v95 = *a4 == 3 && a4[1] == 5;
          }

          v96 = v303;
          if (v303)
          {
            v97 = v303;
            v98 = v97[3];

            if (v98 <= 0x3D && ((1 << v98) & 0x3000000000000001) != 0)
            {
              v96 = 0;
            }

            else if (v298)
            {
              v96 = *v298 != 2;
            }

            else
            {
              v96 = 1;
            }
          }

          if (v299 != 3)
          {
            v114 = *(v51 + 24);
            v115 = v114 & v96;
            v116 = v94 ? v95 : v114 & v96;
            if ((v115 & 1) == 0 && !v116)
            {
              if (v299 == 4)
              {
                v117 = *(v51 + 6);
                if (v117)
                {
                  if (_nw_array_contains_object(v117, v305))
                  {
                    goto LABEL_138;
                  }

                  v118 = *(v51 + 6);
                  if (v118)
                  {
                    goto LABEL_137;
                  }
                }

                v119 = _nw_array_create();
                v121 = *(v51 + 6);
                v120 = (v51 + 48);
                *v120 = v119;

                v118 = *v120;
                if (*v120)
                {
LABEL_137:
                  _nw_array_append(v118, v305);
                }

LABEL_138:
                v122 = v302;
                v123 = v122->state == 5;

                if (v123)
                {
LABEL_139:
                  v27 = 1;
LABEL_239:
                  v51 = loga;
                  goto LABEL_240;
                }

                isa = loga[6].isa;
                if (isa)
                {
                  count = _nw_array_get_count(isa);
                }

                else
                {
                  count = 0;
                }

                v174 = loga[5].isa;
                if (v174)
                {
                  v174 = _nw_array_get_count(v174);
                }

                if (count == v174)
                {
                  v175 = loga[3].isa;
                  if ((v175 & 4) == 0)
                  {
                    nw_endpoint_resolver_check_desperate_ivan(v122);
                    v175 = loga[3].isa;
                  }

                  if ((v175 & 8) != 0 && nw_endpoint_resolver_add_desperate_ivan(v122))
                  {
                    v176 = nw_endpoint_handler_copy_context(v122);
                    v311[0] = MEMORY[0x1E69E9820];
                    v311[1] = 3221225472;
                    v311[2] = ___ZL35nw_endpoint_resolver_receive_reportP30NWConcrete_nw_endpoint_handler26nw_endpoint_handler_mode_t21nw_connection_state_tP27nw_endpoint_handler_event_sPU22objcproto11OS_nw_error8NSObjectPU23objcproto12OS_nw_objectS5__block_invoke_2;
                    v311[3] = &unk_1E6A3D868;
                    v312 = v122;
                    nw_queue_context_async(v176, v311);

                    v27 = 1;
                    p_super = &v312->super;
                    goto LABEL_238;
                  }

                  v189 = loga[2].isa;
                  minimize_logging = nw_endpoint_handler_get_minimize_logging(v122);
                  logging_disabled = nw_endpoint_handler_get_logging_disabled(v122);
                  if (v189 == 1)
                  {
                    if (minimize_logging)
                    {
                      if (logging_disabled)
                      {
                        goto LABEL_139;
                      }

                      if (__nwlog_connection_log::onceToken[0] != -1)
                      {
                        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                      }

                      v192 = gconnectionLogObj;
                      if (os_log_type_enabled(v192, OS_LOG_TYPE_DEBUG))
                      {
                        id_string = nw_endpoint_handler_get_id_string(v122);
                        v268 = nw_endpoint_handler_dry_run_string(v122);
                        v269 = nw_endpoint_handler_copy_endpoint(v122);
                        logging_description = nw_endpoint_get_logging_description(v269);
                        v271 = nw_endpoint_handler_state_string(v122);
                        v272 = nw_endpoint_handler_mode_string(v122);
                        v273 = nw_endpoint_handler_copy_current_path(v122);
                        *buf = 136447746;
                        *&buf[4] = "nw_endpoint_resolver_receive_report";
                        *&buf[12] = 2082;
                        *&buf[14] = id_string;
                        *&buf[22] = 2082;
                        v322 = v268;
                        v323 = 2082;
                        v324 = logging_description;
                        v325 = 2082;
                        v326 = v271;
                        v327 = 2082;
                        v328 = v272;
                        v329 = 2114;
                        v330 = v273;
                        _os_log_impl(&dword_181A37000, v192, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] all children failed, but resolver isn't done. Wait.", buf, 0x48u);
                      }

                      goto LABEL_223;
                    }

                    if (logging_disabled)
                    {
                      goto LABEL_139;
                    }

                    if (__nwlog_connection_log::onceToken[0] != -1)
                    {
                      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                    }

                    p_super = gconnectionLogObj;
                    v27 = 1;
                    if (os_log_type_enabled(p_super, OS_LOG_TYPE_INFO))
                    {
                      v192 = p_super;
                      v193 = nw_endpoint_handler_get_id_string(v122);
                      v194 = nw_endpoint_handler_dry_run_string(v122);
                      v195 = nw_endpoint_handler_copy_endpoint(v122);
                      v196 = nw_endpoint_get_logging_description(v195);
                      v197 = nw_endpoint_handler_state_string(v122);
                      v198 = nw_endpoint_handler_mode_string(v122);
                      v199 = nw_endpoint_handler_copy_current_path(v122);
                      *buf = 136447746;
                      *&buf[4] = "nw_endpoint_resolver_receive_report";
                      *&buf[12] = 2082;
                      *&buf[14] = v193;
                      *&buf[22] = 2082;
                      v322 = v194;
                      v323 = 2082;
                      v324 = v196;
                      v325 = 2082;
                      v326 = v197;
                      v327 = 2082;
                      v328 = v198;
                      v329 = 2114;
                      v330 = v199;
                      _os_log_impl(&dword_181A37000, v192, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] all children failed, but resolver isn't done. Wait.", buf, 0x48u);

LABEL_223:
                      v27 = 1;
                      p_super = v192;
                    }

LABEL_238:

                    goto LABEL_239;
                  }

                  if (minimize_logging)
                  {
                    if (logging_disabled)
                    {
                      goto LABEL_249;
                    }

                    if (__nwlog_connection_log::onceToken[0] != -1)
                    {
                      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                    }

                    v207 = gconnectionLogObj;
                    if (os_log_type_enabled(v207, OS_LOG_TYPE_DEBUG))
                    {
                      v274 = nw_endpoint_handler_get_id_string(v122);
                      v275 = nw_endpoint_handler_dry_run_string(v122);
                      v276 = nw_endpoint_handler_copy_endpoint(v122);
                      v277 = nw_endpoint_get_logging_description(v276);
                      v278 = nw_endpoint_handler_state_string(v122);
                      v279 = nw_endpoint_handler_mode_string(v122);
                      v280 = nw_endpoint_handler_copy_current_path(v122);
                      *buf = 136447746;
                      *&buf[4] = "nw_endpoint_resolver_receive_report";
                      *&buf[12] = 2082;
                      *&buf[14] = v274;
                      *&buf[22] = 2082;
                      v322 = v275;
                      v323 = 2082;
                      v324 = v277;
                      v325 = 2082;
                      v326 = v278;
                      v327 = 2082;
                      v328 = v279;
                      v329 = 2114;
                      v330 = v280;
                      _os_log_impl(&dword_181A37000, v207, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] all children failed", buf, 0x48u);
                    }
                  }

                  else
                  {
                    if (logging_disabled)
                    {
LABEL_249:
                      nw_endpoint_handler_handle_failure(v122);
                      if (v53)
                      {
                        v215 = 7;
                      }

                      else
                      {
                        v215 = 5;
                      }

                      v122->event.domain = 2;
                      v122->event.event = v215;
                      nw_endpoint_handler_report(v122, 0, &v122->event.domain, 0);
                      goto LABEL_139;
                    }

                    if (__nwlog_connection_log::onceToken[0] != -1)
                    {
                      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                    }

                    v207 = gconnectionLogObj;
                    if (os_log_type_enabled(v207, OS_LOG_TYPE_INFO))
                    {
                      v208 = nw_endpoint_handler_get_id_string(v122);
                      v209 = nw_endpoint_handler_dry_run_string(v122);
                      v210 = nw_endpoint_handler_copy_endpoint(v122);
                      v211 = nw_endpoint_get_logging_description(v210);
                      v212 = nw_endpoint_handler_state_string(v122);
                      v213 = nw_endpoint_handler_mode_string(v122);
                      v214 = nw_endpoint_handler_copy_current_path(v122);
                      *buf = 136447746;
                      *&buf[4] = "nw_endpoint_resolver_receive_report";
                      *&buf[12] = 2082;
                      *&buf[14] = v208;
                      *&buf[22] = 2082;
                      v322 = v209;
                      v323 = 2082;
                      v324 = v211;
                      v325 = 2082;
                      v326 = v212;
                      v327 = 2082;
                      v328 = v213;
                      v329 = 2114;
                      v330 = v214;
                      _os_log_impl(&dword_181A37000, v207, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] all children failed", buf, 0x48u);
                    }
                  }

                  goto LABEL_249;
                }

                if (count != HIDWORD(loga[2].isa))
                {
                  goto LABEL_139;
                }

                v177 = nw_endpoint_handler_get_minimize_logging(v122);
                v178 = nw_endpoint_handler_get_logging_disabled(v122);
                if (v177)
                {
                  if (v178)
                  {
                    goto LABEL_213;
                  }

                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  v179 = gconnectionLogObj;
                  if (os_log_type_enabled(v179, OS_LOG_TYPE_DEBUG))
                  {
                    v260 = nw_endpoint_handler_get_id_string(v122);
                    v261 = nw_endpoint_handler_dry_run_string(v122);
                    v262 = nw_endpoint_handler_copy_endpoint(v122);
                    v263 = nw_endpoint_get_logging_description(v262);
                    v264 = nw_endpoint_handler_state_string(v122);
                    v265 = nw_endpoint_handler_mode_string(v122);
                    v266 = nw_endpoint_handler_copy_current_path(v122);
                    *buf = 136447746;
                    *&buf[4] = "nw_endpoint_resolver_receive_report";
                    *&buf[12] = 2082;
                    *&buf[14] = v260;
                    *&buf[22] = 2082;
                    v322 = v261;
                    v323 = 2082;
                    v324 = v263;
                    v325 = 2082;
                    v326 = v264;
                    v327 = 2082;
                    v328 = v265;
                    v329 = 2114;
                    v330 = v266;
                    _os_log_impl(&dword_181A37000, v179, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] all started children failed, start next child.", buf, 0x48u);
                  }
                }

                else
                {
                  if (v178)
                  {
LABEL_213:
                    if (v53)
                    {
                      v187 = loga[4].isa;
                      loga[4].isa = 0;
                    }

                    v188 = nw_endpoint_handler_copy_context(v122);
                    v309[0] = MEMORY[0x1E69E9820];
                    v309[1] = 3221225472;
                    v309[2] = ___ZL35nw_endpoint_resolver_receive_reportP30NWConcrete_nw_endpoint_handler26nw_endpoint_handler_mode_t21nw_connection_state_tP27nw_endpoint_handler_event_sPU22objcproto11OS_nw_error8NSObjectPU23objcproto12OS_nw_objectS5__block_invoke_120;
                    v309[3] = &unk_1E6A3D868;
                    v310 = v122;
                    nw_queue_context_async(v188, v309);

                    v27 = 1;
                    p_super = &v310->super;
                    goto LABEL_238;
                  }

                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  v179 = gconnectionLogObj;
                  if (os_log_type_enabled(v179, OS_LOG_TYPE_INFO))
                  {
                    v180 = nw_endpoint_handler_get_id_string(v122);
                    v181 = nw_endpoint_handler_dry_run_string(v122);
                    v182 = nw_endpoint_handler_copy_endpoint(v122);
                    v183 = nw_endpoint_get_logging_description(v182);
                    v184 = nw_endpoint_handler_state_string(v122);
                    v185 = nw_endpoint_handler_mode_string(v122);
                    v186 = nw_endpoint_handler_copy_current_path(v122);
                    *buf = 136447746;
                    *&buf[4] = "nw_endpoint_resolver_receive_report";
                    *&buf[12] = 2082;
                    *&buf[14] = v180;
                    *&buf[22] = 2082;
                    v322 = v181;
                    v323 = 2082;
                    v324 = v183;
                    v325 = 2082;
                    v326 = v184;
                    v327 = 2082;
                    v328 = v185;
                    v329 = 2114;
                    v330 = v186;
                    _os_log_impl(&dword_181A37000, v179, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] all started children failed, start next child.", buf, 0x48u);
                  }
                }

                goto LABEL_213;
              }

              if ((*(v51 + 24) & 1) == 0 && v95)
              {
                *(v51 + 24) |= 1u;
                if (*(v51 + 7))
                {
                  v140 = nw_endpoint_handler_get_minimize_logging(v302);
                  v141 = nw_endpoint_handler_get_logging_disabled(v302);
                  if (v140)
                  {
                    if (v141)
                    {
                      goto LABEL_162;
                    }

                    if (__nwlog_connection_log::onceToken[0] != -1)
                    {
                      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                    }

                    v142 = gconnectionLogObj;
                    if (os_log_type_enabled(v142, OS_LOG_TYPE_DEBUG))
                    {
                      v245 = nw_endpoint_handler_get_id_string(v302);
                      v246 = nw_endpoint_handler_dry_run_string(v302);
                      v247 = nw_endpoint_handler_copy_endpoint(v302);
                      v248 = nw_endpoint_get_logging_description(v247);
                      v249 = nw_endpoint_handler_state_string(v302);
                      v250 = nw_endpoint_handler_mode_string(v302);
                      v251 = nw_endpoint_handler_copy_current_path(v302);
                      *buf = 136448002;
                      *&buf[4] = "nw_endpoint_resolver_receive_report";
                      *&buf[12] = 2082;
                      *&buf[14] = v245;
                      *&buf[22] = 2082;
                      v322 = v246;
                      v323 = 2082;
                      v324 = v248;
                      v325 = 2082;
                      v326 = v249;
                      v327 = 2082;
                      v328 = v250;
                      v329 = 2114;
                      v330 = v251;
                      v331 = 2048;
                      v332 = 2000;
                      _os_log_impl(&dword_181A37000, v142, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] pushing out endpoint race by %llums", buf, 0x52u);
                    }
                  }

                  else
                  {
                    if (v141)
                    {
LABEL_162:
                      v150 = *(v51 + 7);
                      v151 = dispatch_time(0x8000000000000000, 2000000000);
                      nw_queue_set_timer_values(v150, v151, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
                      goto LABEL_195;
                    }

                    if (__nwlog_connection_log::onceToken[0] != -1)
                    {
                      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                    }

                    v142 = gconnectionLogObj;
                    if (os_log_type_enabled(v142, OS_LOG_TYPE_INFO))
                    {
                      v143 = nw_endpoint_handler_get_id_string(v302);
                      v144 = nw_endpoint_handler_dry_run_string(v302);
                      v145 = nw_endpoint_handler_copy_endpoint(v302);
                      v146 = nw_endpoint_get_logging_description(v145);
                      v147 = nw_endpoint_handler_state_string(v302);
                      v148 = nw_endpoint_handler_mode_string(v302);
                      v149 = nw_endpoint_handler_copy_current_path(v302);
                      *buf = 136448002;
                      *&buf[4] = "nw_endpoint_resolver_receive_report";
                      *&buf[12] = 2082;
                      *&buf[14] = v143;
                      *&buf[22] = 2082;
                      v322 = v144;
                      v323 = 2082;
                      v324 = v146;
                      v325 = 2082;
                      v326 = v147;
                      v327 = 2082;
                      v328 = v148;
                      v329 = 2114;
                      v330 = v149;
                      v331 = 2048;
                      v332 = 2000;
                      _os_log_impl(&dword_181A37000, v142, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] pushing out endpoint race by %llums", buf, 0x52u);
                    }
                  }

                  v51 = loga;
                  goto LABEL_162;
                }
              }

LABEL_195:
              v27 = 1;
LABEL_240:

              goto LABEL_241;
            }
          }

          v99 = *(v51 + 7);
          if (v99)
          {
            nw_queue_cancel_source(v99, v93);
            *(v51 + 7) = 0;
          }

          v100 = *(v51 + 8);
          if (v100)
          {
            nw_queue_cancel_source(v100, v93);
            *(v51 + 8) = 0;
          }

          v101 = *(v51 + 9);
          if (v101)
          {
            nw_queue_cancel_source(v101, v93);
            *(v51 + 9) = 0;
          }

          if (v299 != 4)
          {
            objc_storeStrong(v51 + 4, obj);
            v124 = loga;
            v125 = v298;
            v126 = v299;
            if ((loga[3].isa & 0x10) != 0 && LODWORD(loga[2].isa) == 1)
            {
              LODWORD(loga[2].isa) = 2;
              v127 = v302;
              if ((nw_endpoint_handler_get_logging_disabled(v302) & 1) == 0)
              {
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v128 = gconnectionLogObj;
                if (os_log_type_enabled(v128, OS_LOG_TYPE_DEBUG))
                {
                  v129 = nw_endpoint_handler_get_id_string(v302);
                  v130 = nw_endpoint_handler_dry_run_string(v302);
                  v131 = nw_endpoint_handler_copy_endpoint(v302);
                  v132 = nw_endpoint_get_logging_description(v131);
                  v133 = nw_endpoint_handler_state_string(v302);
                  v134 = nw_endpoint_handler_mode_string(v302);
                  v135 = nw_endpoint_handler_copy_current_path(v302);
                  v136 = v135;
                  isa_low = LODWORD(loga[2].isa);
                  if (isa_low > 2)
                  {
                    v138 = "unknown";
                  }

                  else
                  {
                    v138 = off_1E6A30E18[isa_low];
                  }

                  *buf = 136448002;
                  *&buf[4] = "nw_endpoint_resolver_receive_report";
                  *&buf[12] = 2082;
                  *&buf[14] = v129;
                  *&buf[22] = 2082;
                  v322 = v130;
                  v323 = 2082;
                  v324 = v132;
                  v325 = 2082;
                  v326 = v133;
                  v327 = 2082;
                  v328 = v134;
                  v329 = 2114;
                  v330 = v135;
                  v331 = 2082;
                  v332 = v138;
                  _os_log_impl(&dword_181A37000, v128, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] resolver is %{public}s as a child has connected", buf, 0x52u);
                }

                v124 = loga;
                v127 = v302;
                v125 = v298;
                v126 = v299;
              }

              nw_endpoint_resolver_remove_agent_assertions(v127);
            }

            if (v126 == 3)
            {
              v200 = v302;
              v200->state = 3;

              v124 = loga;
              v125 = v298;
            }

            nw_endpoint_handler_report(v302, 0, v125, 0);
            v201 = v124[5].isa;
            v313[0] = MEMORY[0x1E69E9820];
            v313[1] = 3221225472;
            v313[2] = ___ZL35nw_endpoint_resolver_receive_reportP30NWConcrete_nw_endpoint_handler26nw_endpoint_handler_mode_t21nw_connection_state_tP27nw_endpoint_handler_event_sPU22objcproto11OS_nw_error8NSObjectPU23objcproto12OS_nw_objectS5__block_invoke_119;
            v313[3] = &unk_1E6A3CCB8;
            v314 = v305;
            if (v201)
            {
              _nw_array_apply(v201, v313);
            }

            if (v124[1].isa)
            {
              v202 = v302;
              v203 = v202[4];

              if (nw_parameters_get_use_long_outstanding_queries(v203))
              {
              }

              else
              {
                v204 = nw_endpoint_handler_copy_endpoint(v202);
                v205 = nw_endpoint_get_type(v204) == nw_endpoint_type_bonjour_service;

                if (v205)
                {
                  nw_resolver_cancel(loga[1].isa);
                }
              }
            }

            v27 = 1;
            p_super = v314;
            goto LABEL_238;
          }

          v102 = v302;
          v103 = (*(v302 + 284) & 0x20) == 0;

          if (!v103)
          {
            if (nw_endpoint_handler_get_logging_disabled(v102))
            {
              goto LABEL_194;
            }

            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v106 = gconnectionLogObj;
            if (os_log_type_enabled(v106, OS_LOG_TYPE_DEBUG))
            {
              v224 = nw_endpoint_handler_get_id_string(v102);
              v225 = nw_endpoint_handler_dry_run_string(v102);
              v226 = nw_endpoint_handler_copy_endpoint(v102);
              v227 = nw_endpoint_get_logging_description(v226);
              v228 = nw_endpoint_handler_state_string(v102);
              v229 = nw_endpoint_handler_mode_string(v102);
              v230 = nw_endpoint_handler_copy_current_path(v102);
              *buf = 136447746;
              *&buf[4] = "nw_endpoint_resolver_receive_report";
              *&buf[12] = 2082;
              *&buf[14] = v224;
              *&buf[22] = 2082;
              v322 = v225;
              v323 = 2082;
              v324 = v227;
              v325 = 2082;
              v326 = v228;
              v327 = 2082;
              v328 = v229;
              v329 = 2114;
              v330 = v230;
              _os_log_impl(&dword_181A37000, v106, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] child failed after transport finished", buf, 0x48u);
            }

            goto LABEL_193;
          }

          v104 = v102;
          v105 = (*(v302 + 284) & 0x40) == 0;

          if (!v105)
          {
LABEL_194:
            v51 = loga;
            nw_endpoint_handler_handle_failure(v102);
            v102->event = 327682;
            nw_endpoint_handler_report(v102, 0, &v102->event.domain, 0);
            goto LABEL_195;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v106 = gconnectionLogObj;
          if (!os_log_type_enabled(v106, OS_LOG_TYPE_INFO))
          {
LABEL_193:

            goto LABEL_194;
          }

          v107 = v104;

          v108 = v107;
          v109 = (*(v302 + 284) & 1) == 0;

          if (v109)
          {
            v110 = "";
          }

          else
          {
            v110 = "dry-run ";
          }

          v111 = nw_endpoint_handler_copy_endpoint(v108);
          v112 = v111;
          if (v111)
          {
            v113 = _nw_endpoint_get_logging_description(v111);
          }

          else
          {
            v113 = "<NULL>";
          }

          v152 = v108;
          v153 = v152;
          v154 = v152[30];
          if (v154 > 5)
          {
            v155 = "unknown-state";
          }

          else
          {
            v155 = off_1E6A31048[v154];
          }

          v156 = v153;
          v157 = v156;
          v158 = v295[29];
          if (v158 > 2)
          {
            switch(v158)
            {
              case 3:
                v159 = "proxy";
                goto LABEL_192;
              case 4:
                v159 = "fallback";
                goto LABEL_192;
              case 5:
                v159 = "transform";
                goto LABEL_192;
            }
          }

          else
          {
            switch(v158)
            {
              case 0:
                v159 = "path";
                goto LABEL_192;
              case 1:
                v159 = "resolver";
                goto LABEL_192;
              case 2:
                v159 = nw_endpoint_flow_mode_string(v156[33]);
LABEL_192:

                v172 = v157;
                os_unfair_lock_lock(v172 + 28);
                v173 = v172[8];
                os_unfair_lock_unlock(v172 + 28);

                *buf = 136447746;
                *&buf[4] = "nw_endpoint_resolver_receive_report";
                *&buf[12] = 2082;
                *&buf[14] = v107->id_str;
                *&buf[22] = 2082;
                v322 = v110;
                v323 = 2082;
                v324 = v113;
                v325 = 2082;
                v326 = v155;
                v327 = 2082;
                v328 = v159;
                v329 = 2114;
                v330 = v173;
                _os_log_impl(&dword_181A37000, v106, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] child failed after transport finished", buf, 0x48u);

                goto LABEL_193;
            }
          }

          v159 = "unknown-mode";
          goto LABEL_192;
        }

        if (*(v51 + 4) != v305)
        {
          if (v296 == 2 && v299 == 4)
          {
            p_super = nw_endpoint_handler_copy_endpoint(v305);
            if (nw_endpoint_get_type(p_super) == nw_endpoint_type_address)
            {
              v70 = v15;
              os_unfair_lock_lock(v70 + 28);
              v71 = *(v70 + 8);
              os_unfair_lock_unlock(v70 + 28);

              *type = 0;
              *buf = 0;
              *&buf[8] = 0;
              if (!nw_path_get_vpn_config_uuid(v71, buf, type, 1, 1))
              {
LABEL_98:

                goto LABEL_99;
              }

              memset(buf, 0, sizeof(buf));
              LODWORD(v322) = 0;
              v27 = nw_endpoint_fillout_v4v6_address(p_super, buf);
              if (v27)
              {
                if (nw_path_voluntary_agent_matches_address(v71, buf))
                {
                  v72 = nw_endpoint_handler_copy_context(v70);
                  v315[0] = MEMORY[0x1E69E9820];
                  v315[1] = 3221225472;
                  v315[2] = ___ZL35nw_endpoint_resolver_receive_reportP30NWConcrete_nw_endpoint_handler26nw_endpoint_handler_mode_t21nw_connection_state_tP27nw_endpoint_handler_event_sPU22objcproto11OS_nw_error8NSObjectPU23objcproto12OS_nw_objectS5__block_invoke;
                  v315[3] = &unk_1E6A3D868;
                  v316 = v70;
                  nw_queue_context_async(v72, v315);

LABEL_78:
                  goto LABEL_238;
                }

                goto LABEL_98;
              }

              v231 = __nwlog_obj();
              *type = 136446210;
              *&type[4] = "nw_endpoint_resolver_receive_report";
              v232 = _os_log_send_and_compose_impl();

              v318 = OS_LOG_TYPE_ERROR;
              v317 = 0;
              if (__nwlog_fault(v232, &v318, &v317))
              {
                if (v318 == OS_LOG_TYPE_FAULT)
                {
                  v233 = __nwlog_obj();
                  v234 = v318;
                  if (os_log_type_enabled(v233, v318))
                  {
                    *type = 136446210;
                    *&type[4] = "nw_endpoint_resolver_receive_report";
                    _os_log_impl(&dword_181A37000, v233, v234, "%{public}s called with null success", type, 0xCu);
                  }
                }

                else if (v317 == 1)
                {
                  v235 = __nw_create_backtrace_string();
                  v233 = __nwlog_obj();
                  v236 = v318;
                  v237 = os_log_type_enabled(v233, v318);
                  if (v235)
                  {
                    if (v237)
                    {
                      *type = 136446466;
                      *&type[4] = "nw_endpoint_resolver_receive_report";
                      *&type[12] = 2082;
                      *&type[14] = v235;
                      _os_log_impl(&dword_181A37000, v233, v236, "%{public}s called with null success, dumping backtrace:%{public}s", type, 0x16u);
                    }

                    free(v235);
                    goto LABEL_328;
                  }

                  if (v237)
                  {
                    *type = 136446210;
                    *&type[4] = "nw_endpoint_resolver_receive_report";
                    _os_log_impl(&dword_181A37000, v233, v236, "%{public}s called with null success, no backtrace", type, 0xCu);
                  }
                }

                else
                {
                  v233 = __nwlog_obj();
                  v252 = v318;
                  if (os_log_type_enabled(v233, v318))
                  {
                    *type = 136446210;
                    *&type[4] = "nw_endpoint_resolver_receive_report";
                    _os_log_impl(&dword_181A37000, v233, v252, "%{public}s called with null success, backtrace limit exceeded", type, 0xCu);
                  }
                }
              }

LABEL_328:
              if (v232)
              {
                free(v232);
              }

              goto LABEL_78;
            }

LABEL_99:

            v53 = 0;
            v51 = loga;
            a4 = v298;
            goto LABEL_100;
          }

          if (v296 != 3 || (v78 = *(v51 + 5)) == 0 || !*(v51 + 7) || (v79 = *(v51 + 5)) == 0)
          {
            v53 = 0;
            goto LABEL_100;
          }

          p_super = nw_array_get_object_at_index(v79, (v78 - 1));
          if (p_super != v305)
          {
            goto LABEL_99;
          }

          v80 = nw_endpoint_handler_get_minimize_logging(v15);
          v81 = nw_endpoint_handler_get_logging_disabled(v15);
          v297 = p_super;
          if (v80)
          {
            p_isa = v51;
            if (v81)
            {
LABEL_95:
              v92 = p_isa[7];
              if (v92)
              {
                nw_queue_cancel_source(v92, v82);
                p_isa[7] = 0;
              }

              goto LABEL_99;
            }

            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v84 = gconnectionLogObj;
            if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
            {
              v253 = nw_endpoint_handler_get_id_string(v302);
              v254 = nw_endpoint_handler_dry_run_string(v302);
              v255 = nw_endpoint_handler_copy_endpoint(v302);
              v256 = nw_endpoint_get_logging_description(v255);
              v257 = nw_endpoint_handler_state_string(v302);
              v258 = nw_endpoint_handler_mode_string(v302);
              v259 = nw_endpoint_handler_copy_current_path(v302);
              *buf = 136447746;
              *&buf[4] = "nw_endpoint_resolver_receive_report";
              *&buf[12] = 2082;
              *&buf[14] = v253;
              *&buf[22] = 2082;
              v322 = v254;
              v323 = 2082;
              v324 = v256;
              v325 = 2082;
              v326 = v257;
              v327 = 2082;
              v328 = v258;
              v329 = 2114;
              v330 = v259;
              _os_log_impl(&dword_181A37000, v84, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] child is proxy, cancelling happy eyeballs timer", buf, 0x48u);
            }
          }

          else
          {
            p_isa = v51;
            if (v81)
            {
              goto LABEL_95;
            }

            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v84 = gconnectionLogObj;
            if (os_log_type_enabled(v84, OS_LOG_TYPE_INFO))
            {
              v85 = nw_endpoint_handler_get_id_string(v15);
              v86 = nw_endpoint_handler_dry_run_string(v15);
              v87 = nw_endpoint_handler_copy_endpoint(v15);
              v88 = nw_endpoint_get_logging_description(v87);
              v89 = nw_endpoint_handler_state_string(v15);
              v90 = nw_endpoint_handler_mode_string(v15);
              v91 = nw_endpoint_handler_copy_current_path(v15);
              *buf = 136447746;
              *&buf[4] = "nw_endpoint_resolver_receive_report";
              *&buf[12] = 2082;
              *&buf[14] = v85;
              *&buf[22] = 2082;
              v322 = v86;
              v323 = 2082;
              v324 = v88;
              v325 = 2082;
              v326 = v89;
              v327 = 2082;
              v328 = v90;
              v329 = 2114;
              v330 = v91;
              _os_log_impl(&dword_181A37000, v84, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] child is proxy, cancelling happy eyeballs timer", buf, 0x48u);
            }
          }

          p_isa = &loga->isa;
          p_super = v297;
          goto LABEL_95;
        }

        if (v299 != 4 || (v73 = v15, v74 = (v15[71] & 8) == 0, v73, v15 = v302, v74) || (v75 = nw_endpoint_handler_copy_parent(v73), v76 = v75 == 0, v75, v15 = v302, !v76))
        {
          v77 = v15;
          v77[30] = v299;

          nw_endpoint_handler_report(v77, 0, v298, 0);
          goto LABEL_195;
        }

        v162 = nw_endpoint_handler_get_minimize_logging(v73);
        v163 = nw_endpoint_handler_get_logging_disabled(v73);
        if (v162)
        {
          if (v163)
          {
            goto LABEL_186;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v164 = gconnectionLogObj;
          if (os_log_type_enabled(v164, OS_LOG_TYPE_DEBUG))
          {
            v238 = nw_endpoint_handler_get_id_string(v73);
            v239 = nw_endpoint_handler_dry_run_string(v73);
            v240 = nw_endpoint_handler_copy_endpoint(v73);
            v241 = nw_endpoint_get_logging_description(v240);
            v242 = nw_endpoint_handler_state_string(v73);
            v243 = nw_endpoint_handler_mode_string(v73);
            v244 = nw_endpoint_handler_copy_current_path(v73);
            *buf = 136447746;
            *&buf[4] = "nw_endpoint_resolver_receive_report";
            *&buf[12] = 2082;
            *&buf[14] = v238;
            *&buf[22] = 2082;
            v322 = v239;
            v323 = 2082;
            v324 = v241;
            v325 = 2082;
            v326 = v242;
            v327 = 2082;
            v328 = v243;
            v329 = 2114;
            v330 = v244;
            _os_log_impl(&dword_181A37000, v164, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] connected child failed when a better path is available", buf, 0x48u);
          }
        }

        else
        {
          if (v163)
          {
LABEL_186:
            v51 = loga;
            nw_endpoint_handler_handle_failure(v73);
            goto LABEL_195;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v164 = gconnectionLogObj;
          if (os_log_type_enabled(v164, OS_LOG_TYPE_INFO))
          {
            v165 = nw_endpoint_handler_get_id_string(v73);
            v166 = nw_endpoint_handler_dry_run_string(v73);
            v167 = nw_endpoint_handler_copy_endpoint(v73);
            v168 = nw_endpoint_get_logging_description(v167);
            v169 = nw_endpoint_handler_state_string(v73);
            v170 = nw_endpoint_handler_mode_string(v73);
            v171 = nw_endpoint_handler_copy_current_path(v73);
            *buf = 136447746;
            *&buf[4] = "nw_endpoint_resolver_receive_report";
            *&buf[12] = 2082;
            *&buf[14] = v165;
            *&buf[22] = 2082;
            v322 = v166;
            v323 = 2082;
            v324 = v168;
            v325 = 2082;
            v326 = v169;
            v327 = 2082;
            v328 = v170;
            v329 = 2114;
            v330 = v171;
            _os_log_impl(&dword_181A37000, v164, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] connected child failed when a better path is available", buf, 0x48u);
          }
        }

        goto LABEL_186;
      }

      v27 = 1;
      if (v299 | v296 || !a4 || *a4 != 1 || a4[1] != 1)
      {
        goto LABEL_240;
      }

      p_super = nw_endpoint_handler_copy_parameters(v305);
      loga = v51;
      if (!nw_parameters_get_desperate_ivan(p_super))
      {
        goto LABEL_238;
      }

      v55 = nw_endpoint_handler_copy_parameters(v15);
      if (nw_parameters_get_desperate_ivan(v55))
      {
LABEL_69:

        v27 = 1;
        goto LABEL_238;
      }

      v56 = nw_endpoint_handler_copy_endpoint(v305);
      if (nw_endpoint_get_type(v56) != nw_endpoint_type_address || nw_endpoint_get_address_family(v56) != 30)
      {
LABEL_68:

        goto LABEL_69;
      }

      *type = 0;
      *&type[8] = type;
      *&type[16] = 0x2020000000;
      v320 = 0;
      v57 = loga[5].isa;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = ___ZL35nw_endpoint_resolver_receive_reportP30NWConcrete_nw_endpoint_handler26nw_endpoint_handler_mode_t21nw_connection_state_tP27nw_endpoint_handler_event_sPU22objcproto11OS_nw_error8NSObjectPU23objcproto12OS_nw_objectS5__block_invoke_121;
      aBlock[3] = &unk_1E6A3BB28;
      v307 = v56;
      v308 = type;
      if (!v57 || (_nw_array_apply(v57, aBlock), (*(*&type[8] + 24) & 1) == 0))
      {
LABEL_67:

        _Block_object_dispose(type, 8);
        goto LABEL_68;
      }

      v58 = nw_endpoint_handler_get_minimize_logging(v15);
      v59 = nw_endpoint_handler_get_logging_disabled(v15);
      if (v58)
      {
        if (v59)
        {
          goto LABEL_66;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v281 = gconnectionLogObj;
        if (os_log_type_enabled(v281, OS_LOG_TYPE_DEBUG))
        {
          v301 = nw_endpoint_handler_get_id_string(v302);
          v282 = nw_endpoint_handler_dry_run_string(v302);
          v283 = nw_endpoint_handler_copy_endpoint(v302);
          v284 = nw_endpoint_get_logging_description(v283);
          v285 = nw_endpoint_handler_state_string(v302);
          v286 = nw_endpoint_handler_mode_string(v302);
          v287 = nw_endpoint_handler_copy_current_path(v302);
          *buf = 136447746;
          *&buf[4] = "nw_endpoint_resolver_receive_report";
          *&buf[12] = 2082;
          *&buf[14] = v301;
          *&buf[22] = 2082;
          v322 = v282;
          v323 = 2082;
          v324 = v284;
          v325 = 2082;
          v326 = v285;
          v327 = 2082;
          v328 = v286;
          v329 = 2114;
          v330 = v287;
          _os_log_impl(&dword_181A37000, v281, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Skipping DesperateIvan, address already started", buf, 0x48u);
        }

        v60 = v281;
      }

      else
      {
        if (v59)
        {
LABEL_66:
          nw_endpoint_handler_cancel(v305, 0, 1);
          goto LABEL_67;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v60 = gconnectionLogObj;
        if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
        {
          v61 = nw_endpoint_handler_get_id_string(v15);
          v62 = nw_endpoint_handler_dry_run_string(v15);
          v300 = v60;
          v63 = nw_endpoint_handler_copy_endpoint(v15);
          v64 = nw_endpoint_get_logging_description(v63);
          v65 = nw_endpoint_handler_state_string(v15);
          v66 = nw_endpoint_handler_mode_string(v15);
          v67 = v15;
          v68 = v66;
          v69 = nw_endpoint_handler_copy_current_path(v67);
          *buf = 136447746;
          *&buf[4] = "nw_endpoint_resolver_receive_report";
          *&buf[12] = 2082;
          *&buf[14] = v61;
          *&buf[22] = 2082;
          v322 = v62;
          v323 = 2082;
          v324 = v64;
          v325 = 2082;
          v326 = v65;
          v327 = 2082;
          v328 = v68;
          v329 = 2114;
          v330 = v69;
          _os_log_impl(&dword_181A37000, v300, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Skipping DesperateIvan, address already started", buf, 0x48u);

          v60 = v300;
        }
      }

      goto LABEL_66;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v17 = gconnectionLogObj;
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
LABEL_41:

      v15 = v302;
      a4 = v298;
      goto LABEL_42;
    }

    v18 = v15;

    v19 = v18;
    v20 = *(v15 + 284);

    if (v20)
    {
      v21 = "dry-run ";
    }

    else
    {
      v21 = "";
    }

    log = v17;
    v22 = nw_endpoint_handler_copy_endpoint(v19);
    v23 = v22;
    v290 = v22;
    if (v22)
    {
      v24 = _nw_endpoint_get_logging_description(v22);
    }

    else
    {
      v24 = "<NULL>";
    }

    v28 = v19;
    v29 = v28;
    v30 = v28[30];
    if (v30 > 5)
    {
      v31 = "unknown-state";
    }

    else
    {
      v31 = off_1E6A31048[v30];
    }

    v32 = v29;
    v33 = v32;
    v34 = v295[29];
    if (v34 > 2)
    {
      switch(v34)
      {
        case 3:
          v35 = "proxy";
          goto LABEL_37;
        case 4:
          v35 = "fallback";
          goto LABEL_37;
        case 5:
          v35 = "transform";
          goto LABEL_37;
      }
    }

    else
    {
      switch(v34)
      {
        case 0:
          v35 = "path";
          goto LABEL_37;
        case 1:
          v35 = "resolver";
          goto LABEL_37;
        case 2:
          v35 = nw_endpoint_flow_mode_string(v32[33]);
LABEL_37:

          v36 = v33;
          os_unfair_lock_lock(v36 + 28);
          v37 = v36[8];
          os_unfair_lock_unlock(v36 + 28);

          v38 = v37;
          v39 = nw_endpoint_handler_get_id_string(v305);
          v40 = nw_endpoint_handler_dry_run_string(v305);
          v291 = v38;
          v41 = nw_endpoint_handler_copy_endpoint(v305);
          v42 = v41;
          v288 = v40;
          v289 = v39;
          if (v41)
          {
            v43 = _nw_endpoint_get_logging_description(v41);
            v44 = v35;
            v45 = v31;
            v46 = v21;
          }

          else
          {
            v44 = v35;
            v45 = v31;
            v46 = v21;
            v43 = "<NULL>";
          }

          v47 = (v18 + 46);

          v48 = nw_endpoint_handler_state_string(v305);
          v49 = nw_endpoint_handler_mode_string(v305);
          v50 = nw_endpoint_handler_copy_current_path(v305);
          *buf = 136449282;
          *&buf[4] = "nw_endpoint_resolver_receive_report";
          *&buf[12] = 2082;
          *&buf[14] = v47;
          *&buf[22] = 2082;
          v322 = v46;
          v323 = 2082;
          v324 = v24;
          v325 = 2082;
          v326 = v45;
          v327 = 2082;
          v328 = v44;
          v329 = 2114;
          v330 = v291;
          v331 = 2082;
          v332 = v289;
          v333 = 2082;
          v334 = v288;
          v335 = 2082;
          v336 = v43;
          v337 = 2082;
          v338 = v48;
          v339 = 2082;
          v340 = v49;
          v341 = 2114;
          v342 = v50;
          v17 = log;
          _os_log_impl(&dword_181A37000, log, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] received child report: [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] ", buf, 0x84u);

          goto LABEL_41;
      }
    }

    v35 = "unknown-mode";
    goto LABEL_37;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v25 = gLogObj;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    if (v14 > 5)
    {
      v26 = "unknown-mode";
    }

    else
    {
      v26 = off_1E6A31018[v14];
    }

    *buf = 136446722;
    *&buf[4] = "nw_endpoint_resolver_receive_report";
    *&buf[12] = 2082;
    *&buf[14] = v26;
    *&buf[22] = 2082;
    v322 = "resolver";
    _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_DEFAULT, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
  }

LABEL_18:
  v27 = 0;
LABEL_241:

  return v27;
}

void sub_181B926EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, void *a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  _Block_object_dispose(&a53, 8);

  _Unwind_Resume(a1);
}

uint64_t nw_endpoint_handler_get_child_timeout_nanos(void *a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = nw_endpoint_handler_copy_endpoint(v1);
    if (nw_endpoint_get_type(v3) == nw_endpoint_type_address)
    {
      address = nw_endpoint_get_address(v3);
    }

    else
    {
      address = 0;
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    memset(buf, 0, sizeof(buf));
    v5 = v2;
    os_unfair_lock_lock(v2 + 28);
    v6 = v5[8];
    os_unfair_lock_unlock(v2 + 28);

    if (v6 && nw_path_fillout_route_stats(v6, buf, 0))
    {
      if (DWORD2(v34))
      {
        LODWORD(v7) = 8 * HIDWORD(v34) + (DWORD2(v34) >> 2);
        if (v7 <= DWORD2(v34))
        {
          v7 = DWORD2(v34);
        }

        else
        {
          v7 = v7;
        }

        v8 = 31250 * (v7 + DWORD2(v34));
        goto LABEL_23;
      }
    }

    else
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v30 = 0u;
      memset(buf, 0, sizeof(buf));
    }

    if (address && address->sa_family == 2)
    {
      v8 = 250000000;
      v9 = nw_setting_tcpconn_ipv4_delay;
    }

    else
    {
      v8 = 250000000;
      v9 = nw_setting_tcpconn_ipv6_delay;
    }

    networkd_settings_init();
    if (sCachedSettings)
    {
      pthread_mutex_lock(&sSettingsMutex);
      if (sCachedSettings)
      {
        int64 = xpc_dictionary_get_int64(sCachedSettings, v9);
        pthread_mutex_unlock(&sSettingsMutex);
        if (int64)
        {
          v8 = 1000000 * int64;
        }
      }

      else
      {
        pthread_mutex_unlock(&sSettingsMutex);
      }
    }

LABEL_23:
    v11 = nw_setting_tcpconn_min_delay;
    networkd_settings_init();
    if (sCachedSettings)
    {
      pthread_mutex_lock(&sSettingsMutex);
      if (sCachedSettings)
      {
        v12 = xpc_dictionary_get_int64(sCachedSettings, v11);
      }

      else
      {
        v12 = 0;
      }

      pthread_mutex_unlock(&sSettingsMutex);
    }

    else
    {
      v12 = 0;
    }

    v13 = nw_setting_tcpconn_max_delay;
    networkd_settings_init();
    if (sCachedSettings)
    {
      pthread_mutex_lock(&sSettingsMutex);
      if (sCachedSettings)
      {
        v14 = xpc_dictionary_get_int64(sCachedSettings, v13);
      }

      else
      {
        v14 = 0;
      }

      pthread_mutex_unlock(&sSettingsMutex);
      v15 = 100000000;
      if (v12)
      {
        v15 = v12;
      }

      if (v14)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v15 = 100000000;
      if (v12)
      {
        v15 = v12;
      }
    }

    v14 = 2000000000;
LABEL_40:
    if (v8 >= v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = v8;
    }

    if (v8 >= v15)
    {
      v17 = v16;
    }

    else
    {
      v17 = v15;
    }

    goto LABEL_47;
  }

  v19 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_endpoint_handler_get_child_timeout_nanos";
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
        *&buf[4] = "nw_endpoint_handler_get_child_timeout_nanos";
        _os_log_impl(&dword_181A37000, v21, v22, "%{public}s called with null child_handler", buf, 0xCu);
      }
    }

    else if (v27 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v21 = __nwlog_obj();
      v24 = type;
      v25 = os_log_type_enabled(v21, type);
      if (backtrace_string)
      {
        if (v25)
        {
          *buf = 136446466;
          *&buf[4] = "nw_endpoint_handler_get_child_timeout_nanos";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v21, v24, "%{public}s called with null child_handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_64;
      }

      if (v25)
      {
        *buf = 136446210;
        *&buf[4] = "nw_endpoint_handler_get_child_timeout_nanos";
        _os_log_impl(&dword_181A37000, v21, v24, "%{public}s called with null child_handler, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v21 = __nwlog_obj();
      v26 = type;
      if (os_log_type_enabled(v21, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_endpoint_handler_get_child_timeout_nanos";
        _os_log_impl(&dword_181A37000, v21, v26, "%{public}s called with null child_handler, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_64:
  if (v20)
  {
    free(v20);
  }

  v17 = 100000000;
LABEL_47:

  return v17;
}

uint64_t common_prefix_length(const sockaddr_in_4_6 *a1, const sockaddr_in_4_6 *a2)
{
  if (a1->var0.sa_family != 30 || a2->var0.sa_family != 30)
  {
    return 0;
  }

  v2 = a2->var3.sin6_addr.__u6_addr8[0];
  v3 = a1->var3.sin6_addr.__u6_addr8[0];
  if (v2 == v3)
  {
    v2 = a2->var3.sin6_addr.__u6_addr8[1];
    v3 = a1->var3.sin6_addr.__u6_addr8[1];
    if (v2 == v3)
    {
      v2 = a2->var3.sin6_addr.__u6_addr8[2];
      v3 = a1->var3.sin6_addr.__u6_addr8[2];
      if (v2 == v3)
      {
        v2 = a2->var3.sin6_addr.__u6_addr8[3];
        v3 = a1->var3.sin6_addr.__u6_addr8[3];
        if (v2 == v3)
        {
          v2 = a2->var3.sin6_addr.__u6_addr8[4];
          v3 = a1->var3.sin6_addr.__u6_addr8[4];
          if (v2 == v3)
          {
            v2 = a2->var3.sin6_addr.__u6_addr8[5];
            v3 = a1->var3.sin6_addr.__u6_addr8[5];
            if (v2 == v3)
            {
              v2 = a2->var3.sin6_addr.__u6_addr8[6];
              v3 = a1->var3.sin6_addr.__u6_addr8[6];
              if (v2 == v3)
              {
                v2 = a2->var3.sin6_addr.__u6_addr8[7];
                v3 = a1->var3.sin6_addr.__u6_addr8[7];
                if (v2 == v3)
                {
                  return 64;
                }

                result = 56;
              }

              else
              {
                result = 48;
              }
            }

            else
            {
              result = 40;
            }
          }

          else
          {
            result = 32;
          }
        }

        else
        {
          result = 24;
        }
      }

      else
      {
        result = 16;
      }
    }

    else
    {
      result = 8;
    }
  }

  else
  {
    result = 0;
  }

  for (i = v3 ^ v2; (i & 0x80) == 0; i *= 2)
  {
    result = (result + 1);
  }

  return result;
}

uint64_t sub_181B93020(char *a1)
{
  v1 = a1;
  v2 = a1;
  v3 = v2;
  while (1)
  {
    if (*&v2[OBJC_IVAR____TtC7Network8Endpoint_parentEndpoint])
    {
      v4 = *&v2[OBJC_IVAR____TtC7Network8Endpoint_flags];

      if ((v4 & 0x20) != 0)
      {

        v7 = 1;
        v3 = v1;
        goto LABEL_9;
      }
    }

    else
    {
    }

    v5 = *&v1[OBJC_IVAR____TtC7Network8Endpoint_parentEndpoint];
    v6 = v5;

    if (!v5)
    {
      break;
    }

    v2 = v6;
    v1 = v5;
  }

  v7 = 0;
LABEL_9:

  return v7;
}

uint64_t ___ZL43nw_resolver_create_prefer_connected_variantP22NWConcrete_nw_resolverPU24objcproto13OS_nw_context8NSObjectPU22objcproto11OS_nw_arrayS1__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 40) + 8);
  v8 = *(v6 + 40);
  v7 = (v6 + 40);
  if (!v8)
  {
    objc_storeStrong(v7, a3);
    connected_flow_count = nw_context_endpoint_get_connected_flow_count(*(a1 + 32), v5);
    v10 = a1 + 48;
    goto LABEL_5;
  }

  v9 = nw_context_endpoint_get_connected_flow_count(*(a1 + 32), v5);
  v10 = a1 + 48;
  if (v9 > *(*(*(a1 + 48) + 8) + 24))
  {
    v11 = *(*(a1 + 40) + 8);
    v12 = v9;
    objc_storeStrong((v11 + 40), a3);
    connected_flow_count = v12;
LABEL_5:
    *(*(*v10 + 8) + 24) = connected_flow_count;
  }

  return 1;
}

void *nw_context_endpoint_get_connected_flow_count(void *a1, void *a2)
{
  v55 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      if ((v3[19] & 8) == 0)
      {
        dispatch_assert_queue_V2(v3[1]);
      }

      v6 = nw_context_copy_cache_context(v3);

      v7 = v5;
      v8 = _nw_endpoint_get_type(v7);

      v9 = 48;
      if (v8 == 2)
      {
        v9 = 40;
      }

      if (v8 == 1)
      {
        v9 = 32;
      }

      v10 = *(*(v6 + 24) + v9);
      if (v10)
      {
        node = nw_hash_table_get_node(v10, v7, 0);
        if (node)
        {
          v12 = nw_hash_table_get_node(*(node + 16), v7, 0);
          if (v12)
          {
            v13 = *(v12 + 16);
            v14 = v13;
            if (v13)
            {
              connected_flow_count = _nw_endpoint_get_connected_flow_count(v13);
LABEL_14:

LABEL_85:
              v3 = v6;
              goto LABEL_86;
            }

            v37 = __nwlog_obj();
            *buf = 136446210;
            v52 = "nw_endpoint_get_connected_flow_count";
            v38 = _os_log_send_and_compose_impl();

            type = OS_LOG_TYPE_ERROR;
            v49 = 0;
            if (__nwlog_fault(v38, &type, &v49))
            {
              if (type == OS_LOG_TYPE_FAULT)
              {
                v39 = __nwlog_obj();
                v40 = type;
                if (os_log_type_enabled(v39, type))
                {
                  *buf = 136446210;
                  v52 = "nw_endpoint_get_connected_flow_count";
                  _os_log_impl(&dword_181A37000, v39, v40, "%{public}s called with null endpoint", buf, 0xCu);
                }
              }

              else if (v49 == 1)
              {
                backtrace_string = __nw_create_backtrace_string();
                v39 = __nwlog_obj();
                v45 = type;
                v46 = os_log_type_enabled(v39, type);
                if (backtrace_string)
                {
                  if (v46)
                  {
                    *buf = 136446466;
                    v52 = "nw_endpoint_get_connected_flow_count";
                    v53 = 2082;
                    v54 = backtrace_string;
                    _os_log_impl(&dword_181A37000, v39, v45, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
                  }

                  free(backtrace_string);
                  goto LABEL_90;
                }

                if (v46)
                {
                  *buf = 136446210;
                  v52 = "nw_endpoint_get_connected_flow_count";
                  _os_log_impl(&dword_181A37000, v39, v45, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
                }
              }

              else
              {
                v39 = __nwlog_obj();
                v47 = type;
                if (os_log_type_enabled(v39, type))
                {
                  *buf = 136446210;
                  v52 = "nw_endpoint_get_connected_flow_count";
                  _os_log_impl(&dword_181A37000, v39, v47, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
                }
              }
            }

LABEL_90:
            if (v38)
            {
              free(v38);
            }

            connected_flow_count = 0;
            goto LABEL_14;
          }
        }

LABEL_84:
        connected_flow_count = 0;
        goto LABEL_85;
      }

      v24 = __nwlog_obj();
      *buf = 136446210;
      v52 = "nw_context_endpoint_get_connected_flow_count";
      v25 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v49 = 0;
      if (__nwlog_fault(v25, &type, &v49))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v26 = __nwlog_obj();
          v27 = type;
          if (os_log_type_enabled(v26, type))
          {
            *buf = 136446210;
            v52 = "nw_context_endpoint_get_connected_flow_count";
            _os_log_impl(&dword_181A37000, v26, v27, "%{public}s called with null hash_table", buf, 0xCu);
          }
        }

        else if (v49 == 1)
        {
          v34 = __nw_create_backtrace_string();
          v26 = __nwlog_obj();
          v35 = type;
          v36 = os_log_type_enabled(v26, type);
          if (v34)
          {
            if (v36)
            {
              *buf = 136446466;
              v52 = "nw_context_endpoint_get_connected_flow_count";
              v53 = 2082;
              v54 = v34;
              _os_log_impl(&dword_181A37000, v26, v35, "%{public}s called with null hash_table, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v34);
            goto LABEL_82;
          }

          if (v36)
          {
            *buf = 136446210;
            v52 = "nw_context_endpoint_get_connected_flow_count";
            _os_log_impl(&dword_181A37000, v26, v35, "%{public}s called with null hash_table, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          v26 = __nwlog_obj();
          v43 = type;
          if (os_log_type_enabled(v26, type))
          {
            *buf = 136446210;
            v52 = "nw_context_endpoint_get_connected_flow_count";
            _os_log_impl(&dword_181A37000, v26, v43, "%{public}s called with null hash_table, backtrace limit exceeded", buf, 0xCu);
          }
        }
      }

LABEL_82:
      if (v25)
      {
        free(v25);
      }

      goto LABEL_84;
    }

    v20 = __nwlog_obj();
    *buf = 136446210;
    v52 = "nw_context_endpoint_get_connected_flow_count";
    v21 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v49 = 0;
    if (!__nwlog_fault(v21, &type, &v49))
    {
      goto LABEL_76;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v22 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v22, type))
      {
        *buf = 136446210;
        v52 = "nw_context_endpoint_get_connected_flow_count";
        _os_log_impl(&dword_181A37000, v22, v23, "%{public}s called with null endpoint", buf, 0xCu);
      }
    }

    else if (v49 == 1)
    {
      v31 = __nw_create_backtrace_string();
      v22 = __nwlog_obj();
      v32 = type;
      v33 = os_log_type_enabled(v22, type);
      if (v31)
      {
        if (v33)
        {
          *buf = 136446466;
          v52 = "nw_context_endpoint_get_connected_flow_count";
          v53 = 2082;
          v54 = v31;
          _os_log_impl(&dword_181A37000, v22, v32, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v31);
        goto LABEL_76;
      }

      if (v33)
      {
        *buf = 136446210;
        v52 = "nw_context_endpoint_get_connected_flow_count";
        _os_log_impl(&dword_181A37000, v22, v32, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v22 = __nwlog_obj();
      v42 = type;
      if (os_log_type_enabled(v22, type))
      {
        *buf = 136446210;
        v52 = "nw_context_endpoint_get_connected_flow_count";
        _os_log_impl(&dword_181A37000, v22, v42, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_76:
    if (v21)
    {
      free(v21);
    }

    connected_flow_count = 0;
    goto LABEL_86;
  }

  v16 = __nwlog_obj();
  *buf = 136446210;
  v52 = "nw_context_endpoint_get_connected_flow_count";
  v17 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v49 = 0;
  if (__nwlog_fault(v17, &type, &v49))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v18, type))
      {
        *buf = 136446210;
        v52 = "nw_context_endpoint_get_connected_flow_count";
        _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null context", buf, 0xCu);
      }
    }

    else if (v49 == 1)
    {
      v28 = __nw_create_backtrace_string();
      v18 = __nwlog_obj();
      v29 = type;
      v30 = os_log_type_enabled(v18, type);
      if (v28)
      {
        if (v30)
        {
          *buf = 136446466;
          v52 = "nw_context_endpoint_get_connected_flow_count";
          v53 = 2082;
          v54 = v28;
          _os_log_impl(&dword_181A37000, v18, v29, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v28);
        goto LABEL_70;
      }

      if (v30)
      {
        *buf = 136446210;
        v52 = "nw_context_endpoint_get_connected_flow_count";
        _os_log_impl(&dword_181A37000, v18, v29, "%{public}s called with null context, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v18 = __nwlog_obj();
      v41 = type;
      if (os_log_type_enabled(v18, type))
      {
        *buf = 136446210;
        v52 = "nw_context_endpoint_get_connected_flow_count";
        _os_log_impl(&dword_181A37000, v18, v41, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_70:
  if (v17)
  {
    free(v17);
  }

  v3 = 0;
  connected_flow_count = 0;
LABEL_86:

  return connected_flow_count;
}

uint64_t ___ZL43nw_resolver_create_prefer_connected_variantP22NWConcrete_nw_resolverPU24objcproto13OS_nw_context8NSObjectPU22objcproto11OS_nw_arrayS1__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 40) + 8);
  v8 = *(v6 + 40);
  v7 = (v6 + 40);
  if (!v8)
  {
    objc_storeStrong(v7, a3);
    active_instance_count = nw_context_endpoint_get_active_instance_count(*(a1 + 32), v5);
    v10 = a1 + 48;
    goto LABEL_5;
  }

  v9 = nw_context_endpoint_get_active_instance_count(*(a1 + 32), v5);
  v10 = a1 + 48;
  if (v9 > *(*(*(a1 + 48) + 8) + 24))
  {
    v11 = *(*(a1 + 40) + 8);
    v12 = v9;
    objc_storeStrong((v11 + 40), a3);
    active_instance_count = v12;
LABEL_5:
    *(*(*v10 + 8) + 24) = active_instance_count;
  }

  return 1;
}

uint64_t nw_context_endpoint_get_active_instance_count(void *a1, void *a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v18 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_context_endpoint_get_active_instance_count";
    v19 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v43 = 0;
    if (__nwlog_fault(v19, &type, &v43))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v20 = __nwlog_obj();
        v21 = type;
        if (os_log_type_enabled(v20, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_context_endpoint_get_active_instance_count";
          _os_log_impl(&dword_181A37000, v20, v21, "%{public}s called with null context", buf, 0xCu);
        }
      }

      else if (v43 == 1)
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
            *&buf[4] = "nw_context_endpoint_get_active_instance_count";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v20, v31, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_59;
        }

        if (v32)
        {
          *buf = 136446210;
          *&buf[4] = "nw_context_endpoint_get_active_instance_count";
          _os_log_impl(&dword_181A37000, v20, v31, "%{public}s called with null context, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v20 = __nwlog_obj();
        v39 = type;
        if (os_log_type_enabled(v20, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_context_endpoint_get_active_instance_count";
          _os_log_impl(&dword_181A37000, v20, v39, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_59:
    if (v19)
    {
      free(v19);
    }

    goto LABEL_73;
  }

  if (!v4)
  {
    v22 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_context_endpoint_get_active_instance_count";
    v23 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v43 = 0;
    if (__nwlog_fault(v23, &type, &v43))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v24 = __nwlog_obj();
        v25 = type;
        if (os_log_type_enabled(v24, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_context_endpoint_get_active_instance_count";
          _os_log_impl(&dword_181A37000, v24, v25, "%{public}s called with null endpoint", buf, 0xCu);
        }
      }

      else if (v43 == 1)
      {
        v33 = __nw_create_backtrace_string();
        v24 = __nwlog_obj();
        v34 = type;
        v35 = os_log_type_enabled(v24, type);
        if (v33)
        {
          if (v35)
          {
            *buf = 136446466;
            *&buf[4] = "nw_context_endpoint_get_active_instance_count";
            *&buf[12] = 2082;
            *&buf[14] = v33;
            _os_log_impl(&dword_181A37000, v24, v34, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v33);
          goto LABEL_64;
        }

        if (v35)
        {
          *buf = 136446210;
          *&buf[4] = "nw_context_endpoint_get_active_instance_count";
          _os_log_impl(&dword_181A37000, v24, v34, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v24 = __nwlog_obj();
        v40 = type;
        if (os_log_type_enabled(v24, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_context_endpoint_get_active_instance_count";
          _os_log_impl(&dword_181A37000, v24, v40, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_64:
    if (v23)
    {
      free(v23);
    }

    goto LABEL_73;
  }

  if ((*(v3 + 152) & 8) == 0)
  {
    dispatch_assert_queue_V2(*(v3 + 1));
  }

  v6 = v5;
  has_proxy_parent = _nw_endpoint_has_proxy_parent(v6);

  if (has_proxy_parent)
  {
    v8 = nw_context_copy_globals_context(v3);
  }

  else
  {
    v8 = nw_context_copy_cache_context(v3);
  }

  v9 = v8;

  v10 = v6;
  v11 = _nw_endpoint_get_type(v10);

  v12 = 48;
  if (v11 == 2)
  {
    v12 = 40;
  }

  if (v11 == 1)
  {
    v12 = 32;
  }

  v13 = *(v9[3] + v12);
  if (!v13)
  {
    v26 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_context_endpoint_get_active_instance_count";
    v27 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v43 = 0;
    if (__nwlog_fault(v27, &type, &v43))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v28 = __nwlog_obj();
        v29 = type;
        if (os_log_type_enabled(v28, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_context_endpoint_get_active_instance_count";
          _os_log_impl(&dword_181A37000, v28, v29, "%{public}s called with null hash_table", buf, 0xCu);
        }
      }

      else if (v43 == 1)
      {
        v36 = __nw_create_backtrace_string();
        v28 = __nwlog_obj();
        v37 = type;
        v38 = os_log_type_enabled(v28, type);
        if (v36)
        {
          if (v38)
          {
            *buf = 136446466;
            *&buf[4] = "nw_context_endpoint_get_active_instance_count";
            *&buf[12] = 2082;
            *&buf[14] = v36;
            _os_log_impl(&dword_181A37000, v28, v37, "%{public}s called with null hash_table, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v36);
          goto LABEL_70;
        }

        if (v38)
        {
          *buf = 136446210;
          *&buf[4] = "nw_context_endpoint_get_active_instance_count";
          _os_log_impl(&dword_181A37000, v28, v37, "%{public}s called with null hash_table, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v28 = __nwlog_obj();
        v41 = type;
        if (os_log_type_enabled(v28, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_context_endpoint_get_active_instance_count";
          _os_log_impl(&dword_181A37000, v28, v41, "%{public}s called with null hash_table, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_70:
    if (v27)
    {
      free(v27);
    }

LABEL_73:
    v16 = 0;
    goto LABEL_16;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v46 = 0;
  node = nw_hash_table_get_node(v13, v10, 0);
  if (node)
  {
    v15 = *(node + 16);
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __nw_context_endpoint_get_active_instance_count_block_invoke;
    v42[3] = &unk_1E6A2CE68;
    v42[4] = buf;
    nw_hash_table_apply(v15, v42);
  }

  v16 = *(*&buf[8] + 24);
  _Block_object_dispose(buf, 8);

LABEL_16:
  return v16;
}

id nw_protocol_copy_resolver_definition(void)
{
  if (nw_protocol_copy_resolver_definition(void)::onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_resolver_definition(void)::onceToken, &__block_literal_global_196);
  }

  v1 = nw_protocol_copy_resolver_definition(void)::resolver_definition;

  return v1;
}

void nw_association_set_cached_content_for_protocol(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v101 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = v8;
  if (!v7)
  {
    v69 = __nwlog_obj();
    *buf = 136446210;
    v92 = "nw_association_set_cached_content_for_protocol";
    v70 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v89 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v70, &type, &v89))
    {
      goto LABEL_147;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v71 = __nwlog_obj();
      v72 = type;
      if (os_log_type_enabled(v71, type))
      {
        *buf = 136446210;
        v92 = "nw_association_set_cached_content_for_protocol";
        _os_log_impl(&dword_181A37000, v71, v72, "%{public}s called with null association", buf, 0xCu);
      }
    }

    else if (v89 == OS_LOG_TYPE_INFO)
    {
      backtrace_string = __nw_create_backtrace_string();
      v71 = __nwlog_obj();
      v76 = type;
      v77 = os_log_type_enabled(v71, type);
      if (backtrace_string)
      {
        if (v77)
        {
          *buf = 136446466;
          v92 = "nw_association_set_cached_content_for_protocol";
          v93 = 2082;
          v94 = backtrace_string;
          _os_log_impl(&dword_181A37000, v71, v76, "%{public}s called with null association, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_147:
        if (!v70)
        {
          goto LABEL_108;
        }

LABEL_148:
        free(v70);
        goto LABEL_108;
      }

      if (v77)
      {
        *buf = 136446210;
        v92 = "nw_association_set_cached_content_for_protocol";
        _os_log_impl(&dword_181A37000, v71, v76, "%{public}s called with null association, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v71 = __nwlog_obj();
      v81 = type;
      if (os_log_type_enabled(v71, type))
      {
        *buf = 136446210;
        v92 = "nw_association_set_cached_content_for_protocol";
        _os_log_impl(&dword_181A37000, v71, v81, "%{public}s called with null association, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_146:

    goto LABEL_147;
  }

  if (v8)
  {
    v10 = nw_path_parameters_copy_context(*(v7 + 2));
    nw_context_assert_queue(v10);
    internal = *(v7 + 7);
    if (!internal)
    {
      internal = nw_hash_table_create_internal(5u, 48, nw_association_get_key, nw_association_key_hash, nw_association_matches_key, nw_association_release, 0);
      if (!internal)
      {
        *(v7 + 7) = 0;
        goto LABEL_107;
      }

      *(internal + 56) &= ~2u;
      *(v7 + 7) = internal;
    }

    node = nw_hash_table_get_node(internal, v9, 0);
    if (!node)
    {
      goto LABEL_52;
    }

    v13 = node;
    v14 = node[9];
    if (v14)
    {
      if (v14 == a3)
      {
        node[8] = a4;
        nw_context_remove_cache_entry(v10, node + 4);
        nw_context_add_cache_entry(v10, v13 + 4);
        goto LABEL_107;
      }

      nw_protocol_definition_deallocate_cache_entry(v9, v14);
    }

    nw_context_remove_cache_entry(v10, &v13[4]);
    if (nw_hash_table_remove_node(*(v7 + 7), v13) & 1) != 0 || (nw_path_parameters_get_logging_disabled(*(v7 + 2)))
    {
LABEL_52:
      if (a3)
      {
        type = OS_LOG_TYPE_DEFAULT;
        v36 = *(v7 + 7);
        v37 = v9;
        v38 = nw_hash_table_add_object(v36, v37, &type);
        if (v38)
        {
          v39 = v38;
          if (type & 1) != 0 || (nw_path_parameters_get_logging_disabled(*(v7 + 2)))
          {
LABEL_106:
            v39[8] = a4;
            v39[9] = a3;
            nw_context_add_cache_entry(v10, v39 + 4);
            goto LABEL_107;
          }

          v85 = a3;
          v87 = a4;
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v40 = gconnectionLogObj;
          v41 = *(v7 + 1);
          v42 = v41;
          if (v41)
          {
            logging_description = _nw_endpoint_get_logging_description(v41);
          }

          else
          {
            logging_description = "<NULL>";
          }

          *buf = 136446978;
          v92 = "nw_association_set_cached_content_for_protocol";
          v93 = 2082;
          v94 = logging_description;
          v95 = 2048;
          v96 = v37;
          v97 = 2048;
          v98 = v39;
          v83 = _os_log_send_and_compose_impl();

          v89 = OS_LOG_TYPE_ERROR;
          v88 = 0;
          v52 = v83;
          if (!__nwlog_fault(v83, &v89, &v88))
          {
LABEL_103:
            if (v52)
            {
              free(v52);
            }

            a3 = v85;
            a4 = v87;
            goto LABEL_106;
          }

          if (v89 == OS_LOG_TYPE_FAULT)
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v53 = gconnectionLogObj;
            v54 = v89;
            if (os_log_type_enabled(v53, v89))
            {
              v55 = *(v7 + 1);
              v56 = v55;
              if (v55)
              {
                v57 = _nw_endpoint_get_logging_description(v55);
              }

              else
              {
                v57 = "<NULL>";
              }

              *buf = 136446978;
              v92 = "nw_association_set_cached_content_for_protocol";
              v93 = 2082;
              v94 = v57;
              v95 = 2048;
              v96 = v37;
              v97 = 2048;
              v98 = v39;
              _os_log_impl(&dword_181A37000, v53, v54, "%{public}s <nw_association %{public}s> failed to add cached content for protocol %p (node %p)", buf, 0x2Au);
            }
          }

          else if (v88 == 1)
          {
            v58 = __nw_create_backtrace_string();
            if (v58)
            {
              v59 = v58;
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v60 = gconnectionLogObj;
              v61 = v89;
              if (os_log_type_enabled(v60, v89))
              {
                v62 = nw_endpoint_get_logging_description(*(v7 + 1));
                *buf = 136447234;
                v92 = "nw_association_set_cached_content_for_protocol";
                v93 = 2082;
                v94 = v62;
                v95 = 2048;
                v96 = v37;
                v97 = 2048;
                v98 = v39;
                v99 = 2082;
                v100 = v59;
                _os_log_impl(&dword_181A37000, v60, v61, "%{public}s <nw_association %{public}s> failed to add cached content for protocol %p (node %p), dumping backtrace:%{public}s", buf, 0x34u);
              }

              free(v59);
              goto LABEL_102;
            }

            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v53 = gconnectionLogObj;
            v67 = v89;
            if (os_log_type_enabled(v53, v89))
            {
              v68 = nw_endpoint_get_logging_description(*(v7 + 1));
              *buf = 136446978;
              v92 = "nw_association_set_cached_content_for_protocol";
              v93 = 2082;
              v94 = v68;
              v95 = 2048;
              v96 = v37;
              v97 = 2048;
              v98 = v39;
              _os_log_impl(&dword_181A37000, v53, v67, "%{public}s <nw_association %{public}s> failed to add cached content for protocol %p (node %p), no backtrace", buf, 0x2Au);
            }
          }

          else
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v53 = gconnectionLogObj;
            v64 = v89;
            if (os_log_type_enabled(v53, v89))
            {
              v65 = nw_endpoint_get_logging_description(*(v7 + 1));
              *buf = 136446978;
              v92 = "nw_association_set_cached_content_for_protocol";
              v93 = 2082;
              v94 = v65;
              v95 = 2048;
              v96 = v37;
              v97 = 2048;
              v98 = v39;
              _os_log_impl(&dword_181A37000, v53, v64, "%{public}s <nw_association %{public}s> failed to add cached content for protocol %p (node %p), backtrace limit exceeded", buf, 0x2Au);
            }
          }

LABEL_102:
          v52 = v83;
          goto LABEL_103;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v44 = gLogObj;
        *buf = 136446210;
        v92 = "nw_association_set_cached_content_for_protocol";
        v45 = _os_log_send_and_compose_impl();

        v89 = OS_LOG_TYPE_ERROR;
        v88 = 0;
        if (__nwlog_fault(v45, &v89, &v88))
        {
          if (v89 == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v46 = gLogObj;
            v47 = v89;
            if (os_log_type_enabled(v46, v89))
            {
              *buf = 136446210;
              v92 = "nw_association_set_cached_content_for_protocol";
              _os_log_impl(&dword_181A37000, v46, v47, "%{public}s nw_hash_table_add_object failed", buf, 0xCu);
            }
          }

          else if (v88 == 1)
          {
            v48 = __nw_create_backtrace_string();
            if (v48)
            {
              v49 = v48;
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v50 = gLogObj;
              v51 = v89;
              if (os_log_type_enabled(v50, v89))
              {
                *buf = 136446466;
                v92 = "nw_association_set_cached_content_for_protocol";
                v93 = 2082;
                v94 = v49;
                _os_log_impl(&dword_181A37000, v50, v51, "%{public}s nw_hash_table_add_object failed, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v49);
              if (!v45)
              {
                goto LABEL_107;
              }

              goto LABEL_98;
            }

            v46 = __nwlog_obj();
            v66 = v89;
            if (os_log_type_enabled(v46, v89))
            {
              *buf = 136446210;
              v92 = "nw_association_set_cached_content_for_protocol";
              _os_log_impl(&dword_181A37000, v46, v66, "%{public}s nw_hash_table_add_object failed, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v46 = gLogObj;
            v63 = v89;
            if (os_log_type_enabled(v46, v89))
            {
              *buf = 136446210;
              v92 = "nw_association_set_cached_content_for_protocol";
              _os_log_impl(&dword_181A37000, v46, v63, "%{public}s nw_hash_table_add_object failed, backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

        if (v45)
        {
LABEL_98:
          free(v45);
        }
      }

LABEL_107:

      goto LABEL_108;
    }

    v84 = a3;
    v86 = a4;
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v15 = gconnectionLogObj;
    v16 = *(v7 + 1);
    v17 = v16;
    if (v16)
    {
      v18 = _nw_endpoint_get_logging_description(v16);
    }

    else
    {
      v18 = "<NULL>";
    }

    *buf = 136446722;
    v92 = "nw_association_set_cached_content_for_protocol";
    v93 = 2082;
    v94 = v18;
    v95 = 2048;
    v96 = v13;
    v19 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v89 = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v19, &type, &v89))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v20 = gconnectionLogObj;
        v21 = type;
        if (os_log_type_enabled(v20, type))
        {
          v22 = *(v7 + 1);
          v23 = v22;
          if (v22)
          {
            v24 = _nw_endpoint_get_logging_description(v22);
          }

          else
          {
            v24 = "<NULL>";
          }

          *buf = 136446722;
          v92 = "nw_association_set_cached_content_for_protocol";
          v93 = 2082;
          v94 = v24;
          v95 = 2048;
          v96 = v13;
          _os_log_impl(&dword_181A37000, v20, v21, "%{public}s <nw_association %{public}s> failed to remove cache entry for node %p", buf, 0x20u);
        }
      }

      else if (v89 == OS_LOG_TYPE_INFO)
      {
        v25 = __nw_create_backtrace_string();
        if (v25)
        {
          v26 = v25;
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v27 = gconnectionLogObj;
          v28 = type;
          if (os_log_type_enabled(v27, type))
          {
            v29 = nw_endpoint_get_logging_description(*(v7 + 1));
            *buf = 136446978;
            v92 = "nw_association_set_cached_content_for_protocol";
            v93 = 2082;
            v94 = v29;
            v95 = 2048;
            v96 = v13;
            v97 = 2082;
            v98 = v26;
            _os_log_impl(&dword_181A37000, v27, v28, "%{public}s <nw_association %{public}s> failed to remove cache entry for node %p, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v26);
          goto LABEL_49;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v20 = gconnectionLogObj;
        v34 = type;
        if (os_log_type_enabled(v20, type))
        {
          v35 = nw_endpoint_get_logging_description(*(v7 + 1));
          *buf = 136446722;
          v92 = "nw_association_set_cached_content_for_protocol";
          v93 = 2082;
          v94 = v35;
          v95 = 2048;
          v96 = v13;
          _os_log_impl(&dword_181A37000, v20, v34, "%{public}s <nw_association %{public}s> failed to remove cache entry for node %p, no backtrace", buf, 0x20u);
        }
      }

      else
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v20 = gconnectionLogObj;
        v30 = type;
        if (os_log_type_enabled(v20, type))
        {
          v31 = *(v7 + 1);
          v32 = v31;
          if (v31)
          {
            v33 = _nw_endpoint_get_logging_description(v31);
          }

          else
          {
            v33 = "<NULL>";
          }

          *buf = 136446722;
          v92 = "nw_association_set_cached_content_for_protocol";
          v93 = 2082;
          v94 = v33;
          v95 = 2048;
          v96 = v13;
          _os_log_impl(&dword_181A37000, v20, v30, "%{public}s <nw_association %{public}s> failed to remove cache entry for node %p, backtrace limit exceeded", buf, 0x20u);
        }
      }
    }

LABEL_49:
    if (v19)
    {
      free(v19);
    }

    a3 = v84;
    a4 = v86;
    goto LABEL_52;
  }

  v73 = __nwlog_obj();
  *buf = 136446210;
  v92 = "nw_association_set_cached_content_for_protocol";
  v70 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v89 = OS_LOG_TYPE_DEFAULT;
  if (!__nwlog_fault(v70, &type, &v89))
  {
    goto LABEL_147;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v71 = __nwlog_obj();
    v74 = type;
    if (os_log_type_enabled(v71, type))
    {
      *buf = 136446210;
      v92 = "nw_association_set_cached_content_for_protocol";
      _os_log_impl(&dword_181A37000, v71, v74, "%{public}s called with null protocol", buf, 0xCu);
    }

    goto LABEL_146;
  }

  if (v89 != OS_LOG_TYPE_INFO)
  {
    v71 = __nwlog_obj();
    v82 = type;
    if (os_log_type_enabled(v71, type))
    {
      *buf = 136446210;
      v92 = "nw_association_set_cached_content_for_protocol";
      _os_log_impl(&dword_181A37000, v71, v82, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_146;
  }

  v78 = __nw_create_backtrace_string();
  v71 = __nwlog_obj();
  v79 = type;
  v80 = os_log_type_enabled(v71, type);
  if (!v78)
  {
    if (v80)
    {
      *buf = 136446210;
      v92 = "nw_association_set_cached_content_for_protocol";
      _os_log_impl(&dword_181A37000, v71, v79, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
    }

    goto LABEL_146;
  }

  if (v80)
  {
    *buf = 136446466;
    v92 = "nw_association_set_cached_content_for_protocol";
    v93 = 2082;
    v94 = v78;
    _os_log_impl(&dword_181A37000, v71, v79, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v78);
  if (v70)
  {
    goto LABEL_148;
  }

LABEL_108:
}

char *nw_path_create_flow_result_from_tlv(NWConcrete_nw_path *a1, const unsigned __int8 *a2, unint64_t a3)
{
  v200 = *MEMORY[0x1E69E9840];
  v190 = a1;
  if (a3 <= 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    *buf = 136446466;
    *&buf[4] = "nw_path_create_flow_result_from_tlv";
    *&buf[12] = 2048;
    *&buf[14] = a3;
    v6 = _os_log_send_and_compose_impl();

    v198[0] = 16;
    LOBYTE(v195) = 0;
    if (!__nwlog_fault(v6, v198, &v195))
    {
      goto LABEL_373;
    }

    if (v198[0] == 17)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v8 = v198[0];
      if (os_log_type_enabled(v7, v198[0]))
      {
        *buf = 136446466;
        *&buf[4] = "nw_path_create_flow_result_from_tlv";
        *&buf[12] = 2048;
        *&buf[14] = a3;
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s NECP buffer too short %zu", buf, 0x16u);
      }
    }

    else
    {
      if (v195 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v12 = gLogObj;
        v13 = v198[0];
        v14 = os_log_type_enabled(v12, v198[0]);
        if (backtrace_string)
        {
          if (v14)
          {
            *buf = 136446722;
            *&buf[4] = "nw_path_create_flow_result_from_tlv";
            *&buf[12] = 2048;
            *&buf[14] = a3;
            *&buf[22] = 2082;
            *&buf[24] = backtrace_string;
            _os_log_impl(&dword_181A37000, v12, v13, "%{public}s NECP buffer too short %zu, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(backtrace_string);
          if (!v6)
          {
            goto LABEL_375;
          }

          goto LABEL_374;
        }

        if (v14)
        {
          *buf = 136446466;
          *&buf[4] = "nw_path_create_flow_result_from_tlv";
          *&buf[12] = 2048;
          *&buf[14] = a3;
          _os_log_impl(&dword_181A37000, v12, v13, "%{public}s NECP buffer too short %zu, no backtrace", buf, 0x16u);
        }

LABEL_373:
        if (!v6)
        {
LABEL_375:
          v15 = 0;
          goto LABEL_401;
        }

LABEL_374:
        free(v6);
        goto LABEL_375;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v16 = v198[0];
      if (os_log_type_enabled(v7, v198[0]))
      {
        *buf = 136446466;
        *&buf[4] = "nw_path_create_flow_result_from_tlv";
        *&buf[12] = 2048;
        *&buf[14] = a3;
        _os_log_impl(&dword_181A37000, v7, v16, "%{public}s NECP buffer too short %zu, backtrace limit exceeded", buf, 0x16u);
      }
    }

    goto LABEL_373;
  }

  v9 = _nw_path_flow_create();
  if (!v9)
  {
    v15 = 0;
    goto LABEL_400;
  }

  v191 = v9;
  v196 = 0;
  v195 = 0;
  v194 = 0;
  v193 = 0;
  if (a3 == 5)
  {
    v189 = 0;
    v188 = 0;
    v10 = 0;
    goto LABEL_384;
  }

  v189 = 0;
  v10 = 0;
  v188 = 0;
  while (1)
  {
    v17 = a2[v10];
    v18 = *&a2[v10 + 1];
    if (!v18)
    {
      goto LABEL_49;
    }

    if (v18 <= 0xFFFFFFF9 && a3 >= v18 + 5 && a3 - (v18 + 5) >= v10)
    {
      v28 = &a2[v10 + 5];
      goto LABEL_50;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v20 = gLogObj;
    *buf = 136446978;
    *&buf[4] = "nw_necp_buffer_get_tlv_value";
    *&buf[12] = 2048;
    *&buf[14] = v10;
    *&buf[22] = 2048;
    *&buf[24] = a3;
    *&buf[32] = 1024;
    *&buf[34] = v18;
    v21 = _os_log_send_and_compose_impl();

    v198[0] = 16;
    v197 = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v21, v198, &v197))
    {
      if (v198[0] == 17)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v22 = gLogObj;
        v23 = v198[0];
        if (os_log_type_enabled(v22, v198[0]))
        {
          *buf = 136446978;
          *&buf[4] = "nw_necp_buffer_get_tlv_value";
          *&buf[12] = 2048;
          *&buf[14] = v10;
          *&buf[22] = 2048;
          *&buf[24] = a3;
          *&buf[32] = 1024;
          *&buf[34] = v18;
          _os_log_impl(&dword_181A37000, v22, v23, "%{public}s buffer too short tlv_offset=%zu buffer_length=%zu value_length=%u", buf, 0x26u);
        }
      }

      else
      {
        if (v197 == OS_LOG_TYPE_INFO)
        {
          v24 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v25 = gLogObj;
          v26 = v198[0];
          v27 = os_log_type_enabled(v25, v198[0]);
          if (v24)
          {
            if (v27)
            {
              *buf = 136447234;
              *&buf[4] = "nw_necp_buffer_get_tlv_value";
              *&buf[12] = 2048;
              *&buf[14] = v10;
              *&buf[22] = 2048;
              *&buf[24] = a3;
              *&buf[32] = 1024;
              *&buf[34] = v18;
              *&buf[38] = 2082;
              *&buf[40] = v24;
              _os_log_impl(&dword_181A37000, v25, v26, "%{public}s buffer too short tlv_offset=%zu buffer_length=%zu value_length=%u, dumping backtrace:%{public}s", buf, 0x30u);
            }

            free(v24);
            if (!v21)
            {
              goto LABEL_49;
            }

LABEL_48:
            free(v21);
            goto LABEL_49;
          }

          if (v27)
          {
            *buf = 136446978;
            *&buf[4] = "nw_necp_buffer_get_tlv_value";
            *&buf[12] = 2048;
            *&buf[14] = v10;
            *&buf[22] = 2048;
            *&buf[24] = a3;
            *&buf[32] = 1024;
            *&buf[34] = v18;
            _os_log_impl(&dword_181A37000, v25, v26, "%{public}s buffer too short tlv_offset=%zu buffer_length=%zu value_length=%u, no backtrace", buf, 0x26u);
          }

          goto LABEL_47;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v22 = gLogObj;
        v29 = v198[0];
        if (os_log_type_enabled(v22, v198[0]))
        {
          *buf = 136446978;
          *&buf[4] = "nw_necp_buffer_get_tlv_value";
          *&buf[12] = 2048;
          *&buf[14] = v10;
          *&buf[22] = 2048;
          *&buf[24] = a3;
          *&buf[32] = 1024;
          *&buf[34] = v18;
          _os_log_impl(&dword_181A37000, v22, v29, "%{public}s buffer too short tlv_offset=%zu buffer_length=%zu value_length=%u, backtrace limit exceeded", buf, 0x26u);
        }
      }
    }

LABEL_47:
    if (v21)
    {
      goto LABEL_48;
    }

LABEL_49:
    v28 = 0;
LABEL_50:
    v10 += v18 + 5;
    if (v10 > a3)
    {
      break;
    }

    if (v18 && v28)
    {
      switch(v17)
      {
        case 6:
          memset(v198, 0, 20);
          if (v18 == 20)
          {
            goto LABEL_55;
          }

          if (v18 >= 0x15)
          {
            v103 = __nwlog_obj();
            if (os_log_type_enabled(v103, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 6;
              *&buf[18] = 1024;
              *&buf[20] = v18;
              *&buf[24] = 1024;
              *&buf[26] = 20;
              _os_log_impl(&dword_181A37000, v103, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }

LABEL_55:
            *v198 = *v28;
            *&v198[16] = *(v28 + 4);
          }

          *buf = *v198;
          *&buf[16] = *&v198[16];
          _nw_path_flow_set_nexus_agent_struct(v191, buf);
          break;
        case 7:
          if (v18 == 4)
          {
            goto LABEL_73;
          }

          if (v18 >= 5)
          {
            v98 = __nwlog_obj();
            if (os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 7;
              *&buf[18] = 1024;
              *&buf[20] = v18;
              *&buf[24] = 1024;
              *&buf[26] = 4;
              _os_log_impl(&dword_181A37000, v98, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }

LABEL_73:
            v37 = *v28;
            if ((*v28 & 0x80) != 0)
            {
              _nw_path_flow_set_is_viable(v191, 1);
            }

            if ((v37 & 0x40) != 0)
            {
              _nw_path_flow_set_is_assigned(v191, 1);
            }

            if ((v37 & 0x200) != 0)
            {
              _nw_path_flow_set_ecn_enabled(v191, 1);
            }

            if ((v37 & 0x400) != 0)
            {
              _nw_path_flow_set_fast_open_blocked(v191, 1);
            }

            if (v37)
            {
              _nw_path_flow_set_is_local(v191, 1);
            }

            if ((v37 & 2) != 0)
            {
              _nw_path_flow_set_is_direct(v191, 1);
            }

            if ((v37 & 0x10) != 0)
            {
              _nw_path_flow_set_is_defunct(v191, 1);
            }

            if ((v37 & 4) != 0)
            {
              _nw_path_flow_set_has_ipv4(v191, 1);
            }

            if ((v37 & 8) != 0)
            {
              _nw_path_flow_set_has_ipv6(v191, 1);
            }

            if ((v37 & 0x2000) != 0)
            {
              _nw_path_flow_set_has_nat64(v191, 1);
            }
          }

          break;
        case 8:
          if (v18 == 8)
          {
            goto LABEL_109;
          }

          if (v18 < 9)
          {
            v41 = 0;
            v40 = 0;
          }

          else
          {
            v102 = __nwlog_obj();
            if (os_log_type_enabled(v102, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 8;
              *&buf[18] = 1024;
              *&buf[20] = v18;
              *&buf[24] = 1024;
              *&buf[26] = 8;
              _os_log_impl(&dword_181A37000, v102, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }

LABEL_109:
            v40 = *v28;
            v41 = *(v28 + 1);
          }

          _nw_path_flow_set_interface_struct(v191, v40 | (v41 << 32));
          v42 = v190;
          v43 = v42;
          if (v190)
          {
            v44 = _nw_path_copy_parameters(v42);
            goto LABEL_112;
          }

          v109 = __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_path_copy_parameters";
          v187 = _os_log_send_and_compose_impl();

          v198[0] = 16;
          v197 = OS_LOG_TYPE_DEFAULT;
          if (!__nwlog_fault(v187, v198, &v197))
          {
            goto LABEL_345;
          }

          if (v198[0] == 17)
          {
            v110 = __nwlog_obj();
            v111 = v198[0];
            if (os_log_type_enabled(v110, v198[0]))
            {
              *buf = 136446210;
              *&buf[4] = "nw_path_copy_parameters";
              _os_log_impl(&dword_181A37000, v110, v111, "%{public}s called with null path", buf, 0xCu);
            }

LABEL_298:

            goto LABEL_345;
          }

          if (v197 != OS_LOG_TYPE_INFO)
          {
            v110 = __nwlog_obj();
            v132 = v198[0];
            if (os_log_type_enabled(v110, v198[0]))
            {
              *buf = 136446210;
              *&buf[4] = "nw_path_copy_parameters";
              _os_log_impl(&dword_181A37000, v110, v132, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
            }

            goto LABEL_298;
          }

          v120 = __nw_create_backtrace_string();
          v121 = __nwlog_obj();
          v122 = v198[0];
          log = v121;
          v123 = os_log_type_enabled(v121, v198[0]);
          if (v120)
          {
            if (v123)
            {
              *buf = 136446466;
              *&buf[4] = "nw_path_copy_parameters";
              *&buf[12] = 2082;
              *&buf[14] = v120;
              _os_log_impl(&dword_181A37000, log, v122, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v120);
          }

          else
          {
            if (v123)
            {
              *buf = 136446210;
              *&buf[4] = "nw_path_copy_parameters";
              _os_log_impl(&dword_181A37000, log, v122, "%{public}s called with null path, no backtrace", buf, 0xCu);
            }
          }

LABEL_345:
          if (v187)
          {
            free(v187);
          }

          v44 = 0;
LABEL_112:

          v45 = nw_parameters_copy_context(v44);
          v46 = nw_path_copy_interface_with_generation(v45, v41, v40);

          _nw_path_flow_set_interface(v191, v46);
          break;
        case 12:
          if (v18 == 12)
          {
            goto LABEL_94;
          }

          if (v18 >= 0xD)
          {
            v99 = __nwlog_obj();
            if (os_log_type_enabled(v99, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 12;
              *&buf[18] = 1024;
              *&buf[20] = v18;
              *&buf[24] = 1024;
              *&buf[26] = 12;
              _os_log_impl(&dword_181A37000, v99, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }

LABEL_94:
            _nw_path_flow_set_protoctl_event(v191, *v28, *(v28 + 1), *(v28 + 2));
          }

          break;
        case 13:
          if (v18 > 0x10)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v62 = gLogObj;
            *buf = 136447234;
            *&buf[4] = "nw_path_create_flow_result_from_tlv";
            *&buf[12] = 1024;
            *&buf[14] = 13;
            *&buf[18] = 1024;
            *&buf[20] = v18;
            *&buf[24] = 2080;
            *&buf[26] = "nw_path_create_flow_result_from_tlv";
            *&buf[34] = 1024;
            *&buf[36] = 2573;
            v63 = _os_log_send_and_compose_impl();

            v198[0] = 16;
            v197 = OS_LOG_TYPE_DEFAULT;
            if (!__nwlog_fault(v63, v198, &v197))
            {
              goto LABEL_244;
            }

            if (v198[0] == 17)
            {
              v64 = __nwlog_obj();
              v65 = v198[0];
              if (os_log_type_enabled(v64, v198[0]))
              {
                *buf = 136447234;
                *&buf[4] = "nw_path_create_flow_result_from_tlv";
                *&buf[12] = 1024;
                *&buf[14] = 13;
                *&buf[18] = 1024;
                *&buf[20] = v18;
                *&buf[24] = 2080;
                *&buf[26] = "nw_path_create_flow_result_from_tlv";
                *&buf[34] = 1024;
                *&buf[36] = 2573;
                _os_log_impl(&dword_181A37000, v64, v65, "%{public}s TLV of type %d has invalid length %u (%s:%d)", buf, 0x28u);
              }

              goto LABEL_230;
            }

            if (v197 != OS_LOG_TYPE_INFO)
            {
              v64 = __nwlog_obj();
              v84 = v198[0];
              if (os_log_type_enabled(v64, v198[0]))
              {
                *buf = 136447234;
                *&buf[4] = "nw_path_create_flow_result_from_tlv";
                *&buf[12] = 1024;
                *&buf[14] = 13;
                *&buf[18] = 1024;
                *&buf[20] = v18;
                *&buf[24] = 2080;
                *&buf[26] = "nw_path_create_flow_result_from_tlv";
                *&buf[34] = 1024;
                *&buf[36] = 2573;
                _os_log_impl(&dword_181A37000, v64, v84, "%{public}s TLV of type %d has invalid length %u (%s:%d), backtrace limit exceeded", buf, 0x28u);
              }

              goto LABEL_230;
            }

            v74 = __nw_create_backtrace_string();
            v75 = __nwlog_obj();
            v76 = v198[0];
            v77 = os_log_type_enabled(v75, v198[0]);
            if (v74)
            {
              if (v77)
              {
                *buf = 136447490;
                *&buf[4] = "nw_path_create_flow_result_from_tlv";
                *&buf[12] = 1024;
                *&buf[14] = 13;
                *&buf[18] = 1024;
                *&buf[20] = v18;
                *&buf[24] = 2080;
                *&buf[26] = "nw_path_create_flow_result_from_tlv";
                *&buf[34] = 1024;
                *&buf[36] = 2573;
                *&buf[40] = 2082;
                *&buf[42] = v74;
                _os_log_impl(&dword_181A37000, v75, v76, "%{public}s TLV of type %d has invalid length %u (%s:%d), dumping backtrace:%{public}s", buf, 0x32u);
              }

              free(v74);
              goto LABEL_244;
            }

            if (v77)
            {
              *buf = 136447234;
              *&buf[4] = "nw_path_create_flow_result_from_tlv";
              *&buf[12] = 1024;
              *&buf[14] = 13;
              *&buf[18] = 1024;
              *&buf[20] = v18;
              *&buf[24] = 2080;
              *&buf[26] = "nw_path_create_flow_result_from_tlv";
              *&buf[34] = 1024;
              *&buf[36] = 2573;
              _os_log_impl(&dword_181A37000, v75, v76, "%{public}s TLV of type %d has invalid length %u (%s:%d), no backtrace", buf, 0x28u);
            }

            goto LABEL_243;
          }

          _nw_path_flow_set_tfo_cookie(v191, v28, v18);
          break;
        case 16:
          *v198 = 0;
          *&v198[8] = 0;
          if (v18 == 16)
          {
            goto LABEL_118;
          }

          if (v18 >= 0x11)
          {
            v104 = __nwlog_obj();
            if (os_log_type_enabled(v104, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 16;
              *&buf[18] = 1024;
              *&buf[20] = v18;
              *&buf[24] = 1024;
              *&buf[26] = 16;
              _os_log_impl(&dword_181A37000, v104, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }

LABEL_118:
            *v198 = *v28;
            _nw_path_flow_set_id(v191, v198);
          }

          break;
        case 100:
          *v198 = 0;
          *&v198[8] = 0;
          _nw_path_flow_set_nexus_instance(v191, v198);
          if (v18 == 16)
          {
            goto LABEL_120;
          }

          if (v18 >= 0x11)
          {
            v112 = __nwlog_obj();
            if (os_log_type_enabled(v112, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 100;
              *&buf[18] = 1024;
              *&buf[20] = v18;
              *&buf[24] = 1024;
              *&buf[26] = 16;
              _os_log_impl(&dword_181A37000, v112, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }

LABEL_120:
            *v198 = *v28;
            _nw_path_flow_set_nexus_instance(v191, v198);
          }

          break;
        case 101:
          if (v18 == 2)
          {
            goto LABEL_131;
          }

          if (v18 < 3)
          {
            v55 = 0;
          }

          else
          {
            v105 = __nwlog_obj();
            if (os_log_type_enabled(v105, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 101;
              *&buf[18] = 1024;
              *&buf[20] = v18;
              *&buf[24] = 1024;
              *&buf[26] = 2;
              _os_log_impl(&dword_181A37000, v105, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }

LABEL_131:
            v55 = *v28;
          }

          _nw_path_flow_set_nexus_port(v191, v55);
          break;
        case 102:
          _nw_path_flow_set_nexus_key(v191, 0, 0);
          _nw_path_flow_set_nexus_key(v191, v28, v18);
          break;
        case 103:
          _nw_path_flow_set_nexus_flow_index(v191, 0);
          if (v18 == 4)
          {
            goto LABEL_70;
          }

          if (v18 < 5)
          {
            v36 = 0;
          }

          else
          {
            v108 = __nwlog_obj();
            if (os_log_type_enabled(v108, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 103;
              *&buf[18] = 1024;
              *&buf[20] = v18;
              *&buf[24] = 1024;
              *&buf[26] = 4;
              _os_log_impl(&dword_181A37000, v108, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }

LABEL_70:
            v36 = *v28;
          }

          _nw_path_flow_set_nexus_flow_index(v191, v36);
          break;
        case 104:
          break;
        case 156:
          if (!v189)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v68 = gLogObj;
            if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446210;
              *&buf[4] = "nw_path_create_flow_result_from_tlv";
              _os_log_impl(&dword_181A37000, v68, OS_LOG_TYPE_ERROR, "%{public}s No previous endpoint to apply endpoint agent to", buf, 0xCu);
            }

            goto LABEL_164;
          }

          nw_path_set_agent_identifier_on_endpoint(v189, 156, v18, v28);
          break;
        case 158:
          if (!v189)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v68 = gLogObj;
            if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446210;
              *&buf[4] = "nw_path_create_flow_result_from_tlv";
              _os_log_impl(&dword_181A37000, v68, OS_LOG_TYPE_ERROR, "%{public}s No previous endpoint to apply endpoint device id to", buf, 0xCu);
            }

            goto LABEL_164;
          }

          *buf = 0;
          asprintf(buf, "%.*s", v18, v28);
          v39 = *buf;
          v189 = v189;
          _nw_endpoint_set_device_id(v189, v39);

          if (*buf)
          {
            free(*buf);
          }

          break;
        case 159:
          if (v189)
          {
            v31 = [MEMORY[0x1E695DEF0] dataWithBytes:v28 length:v18];
            nw_endpoint_append_public_key(v189, v31);
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v68 = gLogObj;
            if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446210;
              *&buf[4] = "nw_path_create_flow_result_from_tlv";
              _os_log_impl(&dword_181A37000, v68, OS_LOG_TYPE_ERROR, "%{public}s No previous endpoint to apply public key to", buf, 0xCu);
            }

LABEL_164:

            v189 = 0;
          }

          break;
        case 200:
          v48 = nw_path_copy_endpoint_from_tlv(200, v18, v28);

          v49 = v48;
          v189 = v49;
          if (v49)
          {
            _nw_path_flow_set_local_endpoint(v191, v49);
          }

          goto LABEL_21;
        case 201:
          v50 = nw_path_copy_endpoint_from_tlv(201, v18, v28);

          v189 = v50;
          if (!v189)
          {
            goto LABEL_187;
          }

          v51 = v190;
          if (v190)
          {
            v52 = v51;
            v53 = _nw_path_copy_endpoint(v51);

            if (v53)
            {
              if (nw_endpoint_is_equal(v189, v53, 0))
              {
                v54 = v53;
              }

              else
              {
                nw_endpoint_clone_parent_endpoint_properties(v189, v53);
                v54 = v189;
              }
            }

            else
            {
              v54 = v189;
            }

            goto LABEL_186;
          }

          v113 = __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_path_copy_endpoint";
          v114 = _os_log_send_and_compose_impl();

          v198[0] = 16;
          v197 = OS_LOG_TYPE_DEFAULT;
          if (!__nwlog_fault(v114, v198, &v197))
          {
            goto LABEL_351;
          }

          if (v198[0] == 17)
          {
            v115 = __nwlog_obj();
            v116 = v198[0];
            if (os_log_type_enabled(v115, v198[0]))
            {
              *buf = 136446210;
              *&buf[4] = "nw_path_copy_endpoint";
              _os_log_impl(&dword_181A37000, v115, v116, "%{public}s called with null path", buf, 0xCu);
            }

LABEL_307:

            goto LABEL_351;
          }

          if (v197 != OS_LOG_TYPE_INFO)
          {
            v115 = __nwlog_obj();
            v133 = v198[0];
            if (os_log_type_enabled(v115, v198[0]))
            {
              *buf = 136446210;
              *&buf[4] = "nw_path_copy_endpoint";
              _os_log_impl(&dword_181A37000, v115, v133, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
            }

            goto LABEL_307;
          }

          v124 = __nw_create_backtrace_string();
          v125 = __nwlog_obj();
          v126 = v198[0];
          v127 = os_log_type_enabled(v125, v198[0]);
          if (v124)
          {
            if (v127)
            {
              *buf = 136446466;
              *&buf[4] = "nw_path_copy_endpoint";
              *&buf[12] = 2082;
              *&buf[14] = v124;
              _os_log_impl(&dword_181A37000, v125, v126, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v124);
          }

          else
          {
            if (v127)
            {
              *buf = 136446210;
              *&buf[4] = "nw_path_copy_endpoint";
              _os_log_impl(&dword_181A37000, v125, v126, "%{public}s called with null path, no backtrace", buf, 0xCu);
            }
          }

LABEL_351:
          if (v114)
          {
            free(v114);
          }

          v53 = 0;
          v54 = v189;
LABEL_186:
          _nw_path_flow_set_remote_endpoint(v191, v54);

LABEL_187:
          break;
        case 202:
          v57 = nw_path_copy_endpoint_from_tlv(202, v18, v28);

          v58 = v57;
          v189 = v58;
          if (v58)
          {
            v59 = _nw_path_flow_copy_interface(v191);
            nw_endpoint_set_interface(v58, v59);

            _nw_path_flow_append_discovered_endpoint(v191, v58);
          }

          break;
        case 203:
          v56 = nw_path_copy_endpoint_from_tlv(203, v18, v28);

          v49 = v56;
          v189 = v49;
          if (v49)
          {
            _nw_path_flow_append_resolved_endpoint(v191, v49);
          }

          goto LABEL_21;
        case 204:
          if (v18 == 6)
          {
            goto LABEL_58;
          }

          if (v18 >= 7)
          {
            v96 = __nwlog_obj();
            if (os_log_type_enabled(v96, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 204;
              *&buf[18] = 1024;
              *&buf[20] = v18;
              *&buf[24] = 1024;
              *&buf[26] = 6;
              _os_log_impl(&dword_181A37000, v96, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }

LABEL_58:
            v195 = *v28;
            v196 = *(v28 + 2);
          }

          BYTE4(v188) = 1;
          break;
        case 205:
          if (v18 == 6)
          {
            goto LABEL_102;
          }

          if (v18 >= 7)
          {
            v101 = __nwlog_obj();
            if (os_log_type_enabled(v101, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 205;
              *&buf[18] = 1024;
              *&buf[20] = v18;
              *&buf[24] = 1024;
              *&buf[26] = 6;
              _os_log_impl(&dword_181A37000, v101, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }

LABEL_102:
            v193 = *v28;
            v194 = *(v28 + 2);
          }

          LOBYTE(v188) = 1;
          break;
        case 216:
          if (v18 == 8)
          {
            goto LABEL_140;
          }

          v106 = __nwlog_obj();
          v107 = v106;
          if (v18 < 9)
          {
            *buf = 136446722;
            *&buf[4] = "nw_path_create_flow_result_from_tlv";
            *&buf[12] = 1024;
            *&buf[14] = v18;
            *&buf[18] = 2048;
            *&buf[20] = 8;
            v117 = _os_log_send_and_compose_impl();

            v198[0] = 16;
            v197 = OS_LOG_TYPE_DEFAULT;
            if (__nwlog_fault(v117, v198, &v197))
            {
              if (v198[0] == 17)
              {
                v118 = __nwlog_obj();
                v119 = v198[0];
                if (os_log_type_enabled(v118, v198[0]))
                {
                  *buf = 136446722;
                  *&buf[4] = "nw_path_create_flow_result_from_tlv";
                  *&buf[12] = 1024;
                  *&buf[14] = v18;
                  *&buf[18] = 2048;
                  *&buf[20] = 8;
                  _os_log_impl(&dword_181A37000, v118, v119, "%{public}s Invalid length %u for NECP_CLIENT_RESULT_AGENT_ERROR, should be %zu", buf, 0x1Cu);
                }

                goto LABEL_316;
              }

              if (v197 == OS_LOG_TYPE_INFO)
              {
                v128 = __nw_create_backtrace_string();
                v129 = __nwlog_obj();
                v130 = v198[0];
                v131 = os_log_type_enabled(v129, v198[0]);
                if (v128)
                {
                  if (v131)
                  {
                    *buf = 136446978;
                    *&buf[4] = "nw_path_create_flow_result_from_tlv";
                    *&buf[12] = 1024;
                    *&buf[14] = v18;
                    *&buf[18] = 2048;
                    *&buf[20] = 8;
                    *&buf[28] = 2082;
                    *&buf[30] = v128;
                    _os_log_impl(&dword_181A37000, v129, v130, "%{public}s Invalid length %u for NECP_CLIENT_RESULT_AGENT_ERROR, should be %zu, dumping backtrace:%{public}s", buf, 0x26u);
                  }

                  free(v128);
                }

                else
                {
                  if (v131)
                  {
                    *buf = 136446722;
                    *&buf[4] = "nw_path_create_flow_result_from_tlv";
                    *&buf[12] = 1024;
                    *&buf[14] = v18;
                    *&buf[18] = 2048;
                    *&buf[20] = 8;
                    _os_log_impl(&dword_181A37000, v129, v130, "%{public}s Invalid length %u for NECP_CLIENT_RESULT_AGENT_ERROR, should be %zu, no backtrace", buf, 0x1Cu);
                  }
                }
              }

              else
              {
                v118 = __nwlog_obj();
                v134 = v198[0];
                if (os_log_type_enabled(v118, v198[0]))
                {
                  *buf = 136446722;
                  *&buf[4] = "nw_path_create_flow_result_from_tlv";
                  *&buf[12] = 1024;
                  *&buf[14] = v18;
                  *&buf[18] = 2048;
                  *&buf[20] = 8;
                  _os_log_impl(&dword_181A37000, v118, v134, "%{public}s Invalid length %u for NECP_CLIENT_RESULT_AGENT_ERROR, should be %zu, backtrace limit exceeded", buf, 0x1Cu);
                }

LABEL_316:
              }
            }

            if (v117)
            {
              free(v117);
            }

            break;
          }

          if (os_log_type_enabled(v106, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446978;
            *&buf[4] = "nw_path_verify_tlv_length";
            *&buf[12] = 1024;
            *&buf[14] = 216;
            *&buf[18] = 1024;
            *&buf[20] = v18;
            *&buf[24] = 1024;
            *&buf[26] = 8;
            _os_log_impl(&dword_181A37000, v107, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
          }

LABEL_140:
          v60 = *v28;
          if (*v28 >> 8 == 16776959)
          {
            dns_error = nw_error_create_dns_error(v60);
          }

          else if ((v60 + 9899) > 0x63)
          {
            if ((v60 + 11999) > 0x1F3)
            {
              dns_error = nw_error_create_posix_error(v60);
            }

            else
            {
              dns_error = nw_error_create_wifi_aware_error(v60);
            }
          }

          else
          {
            dns_error = nw_error_create_tls_error(v60);
          }

          v83 = dns_error;
          _nw_path_flow_set_error(v191, dns_error);

          break;
        case 217:
          if (v18 == 4)
          {
            goto LABEL_61;
          }

          if (v18 < 5)
          {
            v30 = 0;
          }

          else
          {
            v97 = __nwlog_obj();
            if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 217;
              *&buf[18] = 1024;
              *&buf[20] = v18;
              *&buf[24] = 1024;
              *&buf[26] = 4;
              _os_log_impl(&dword_181A37000, v97, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }

LABEL_61:
            v30 = *v28;
          }

          _nw_path_flow_set_unique_flow_tag(v191, v30);
          break;
        case 219:
          if (v18 == 4)
          {
            goto LABEL_96;
          }

          if (v18 < 5)
          {
            v38 = 0;
          }

          else
          {
            v100 = __nwlog_obj();
            if (os_log_type_enabled(v100, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 219;
              *&buf[18] = 1024;
              *&buf[20] = v18;
              *&buf[24] = 1024;
              *&buf[26] = 4;
              _os_log_impl(&dword_181A37000, v100, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }

LABEL_96:
            v38 = *v28;
          }

          _nw_path_flow_set_flow_stats_index(v191, v38);
          break;
        case 222:
          v32 = _nw_path_flow_copy_assigned_protocol(v191);
          v33 = v32 == 0;

          if (!v33)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v34 = gLogObj;
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              v35 = _nw_path_flow_copy_assigned_protocol(v191);
              *buf = 136446466;
              *&buf[4] = "nw_path_create_flow_result_from_tlv";
              *&buf[12] = 2112;
              *&buf[14] = v35;
              _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_ERROR, "%{public}s Flow already has protocol %@ assigned, ignoring extra protocol", buf, 0x16u);
            }

            break;
          }

          if (v18 < 0x2A)
          {
            v81 = __nwlog_obj();
            *buf = 136446466;
            *&buf[4] = "nw_path_create_flow_result_from_tlv";
            *&buf[12] = 1024;
            *&buf[14] = v18;
            v63 = _os_log_send_and_compose_impl();

            v198[0] = 16;
            v197 = OS_LOG_TYPE_DEFAULT;
            if (!__nwlog_fault(v63, v198, &v197))
            {
              goto LABEL_244;
            }

            if (v198[0] == 17)
            {
              v64 = __nwlog_obj();
              v82 = v198[0];
              if (os_log_type_enabled(v64, v198[0]))
              {
                *buf = 136446466;
                *&buf[4] = "nw_path_create_flow_result_from_tlv";
                *&buf[12] = 1024;
                *&buf[14] = v18;
                _os_log_impl(&dword_181A37000, v64, v82, "%{public}s NW_NECP_CLIENT_PARAMETER_APPLICATION_PROTOCOL has bad length %u", buf, 0x12u);
              }

              goto LABEL_230;
            }

            if (v197 != OS_LOG_TYPE_INFO)
            {
              v64 = __nwlog_obj();
              v92 = v198[0];
              if (os_log_type_enabled(v64, v198[0]))
              {
                *buf = 136446466;
                *&buf[4] = "nw_path_create_flow_result_from_tlv";
                *&buf[12] = 1024;
                *&buf[14] = v18;
                _os_log_impl(&dword_181A37000, v64, v92, "%{public}s NW_NECP_CLIENT_PARAMETER_APPLICATION_PROTOCOL has bad length %u, backtrace limit exceeded", buf, 0x12u);
              }

              goto LABEL_230;
            }

            v78 = __nw_create_backtrace_string();
            v75 = __nwlog_obj();
            v88 = v198[0];
            v89 = os_log_type_enabled(v75, v198[0]);
            if (v78)
            {
              if (v89)
              {
                *buf = 136446722;
                *&buf[4] = "nw_path_create_flow_result_from_tlv";
                *&buf[12] = 1024;
                *&buf[14] = v18;
                *&buf[18] = 2082;
                *&buf[20] = v78;
                _os_log_impl(&dword_181A37000, v75, v88, "%{public}s NW_NECP_CLIENT_PARAMETER_APPLICATION_PROTOCOL has bad length %u, dumping backtrace:%{public}s", buf, 0x1Cu);
              }

              goto LABEL_221;
            }

            if (v89)
            {
              *buf = 136446466;
              *&buf[4] = "nw_path_create_flow_result_from_tlv";
              *&buf[12] = 1024;
              *&buf[14] = v18;
              _os_log_impl(&dword_181A37000, v75, v88, "%{public}s NW_NECP_CLIENT_PARAMETER_APPLICATION_PROTOCOL has bad length %u, no backtrace", buf, 0x12u);
            }
          }

          else
          {
            v69 = *(v28 + 20);
            if (v69 + 42 == v18)
            {
              if (nw_path_flow_load_protocols(void)::onceToken != -1)
              {
                dispatch_once_f(&nw_path_flow_load_protocols(void)::onceToken, 0, nw_path_flow_load_protocols_internal);
              }

              v70 = *(v28 + 1);
              *buf = *v28;
              *&buf[16] = v70;
              *&buf[32] = *(v28 + 4);
              v71 = nw_protocol_copy_definition_for_identifier(buf);
              v72 = v71;
              if (v71)
              {
                if (*(v28 + 20))
                {
                  deserialized_options = _nw_protocol_create_deserialized_options(v71, v28 + 42, *(v28 + 20));
                }

                else
                {
                  deserialized_options = _nw_protocol_create_options();
                }

                v93 = deserialized_options;
                if (deserialized_options)
                {
                  _nw_path_flow_set_assigned_protocol(v191, deserialized_options);
                }

                else
                {
                  v95 = __nwlog_obj();
                  if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
                  {
                    *v198 = 136446466;
                    *&v198[4] = "nw_path_create_flow_result_from_tlv";
                    *&v198[12] = 2112;
                    *&v198[14] = v72;
                    _os_log_impl(&dword_181A37000, v95, OS_LOG_TYPE_DEFAULT, "%{public}s Failed to deserialize options for %@", v198, 0x16u);
                  }

                  v93 = 0;
                }
              }

              else
              {
                v93 = __nwlog_obj();
                if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
                {
                  *v198 = 136446466;
                  *&v198[4] = "nw_path_create_flow_result_from_tlv";
                  *&v198[12] = 2080;
                  *&v198[14] = buf;
                  _os_log_impl(&dword_181A37000, v93, OS_LOG_TYPE_DEFAULT, "%{public}s No protocol definition registered for %s", v198, 0x16u);
                }
              }

              break;
            }

            v86 = __nwlog_obj();
            *buf = 136446722;
            *&buf[4] = "nw_path_create_flow_result_from_tlv";
            *&buf[12] = 1024;
            *&buf[14] = v69;
            *&buf[18] = 1024;
            *&buf[20] = v18;
            v63 = _os_log_send_and_compose_impl();

            v198[0] = 16;
            v197 = OS_LOG_TYPE_DEFAULT;
            if (!__nwlog_fault(v63, v198, &v197))
            {
              goto LABEL_244;
            }

            if (v198[0] == 17)
            {
              v64 = __nwlog_obj();
              v87 = v198[0];
              if (os_log_type_enabled(v64, v198[0]))
              {
                *buf = 136446722;
                *&buf[4] = "nw_path_create_flow_result_from_tlv";
                *&buf[12] = 1024;
                *&buf[14] = v69;
                *&buf[18] = 1024;
                *&buf[20] = v18;
                _os_log_impl(&dword_181A37000, v64, v87, "%{public}s NW_NECP_CLIENT_PARAMETER_APPLICATION_PROTOCOL has bad options length %u (total %u)", buf, 0x18u);
              }

              goto LABEL_230;
            }

            if (v197 != OS_LOG_TYPE_INFO)
            {
              v64 = __nwlog_obj();
              v94 = v198[0];
              if (os_log_type_enabled(v64, v198[0]))
              {
                *buf = 136446722;
                *&buf[4] = "nw_path_create_flow_result_from_tlv";
                *&buf[12] = 1024;
                *&buf[14] = v69;
                *&buf[18] = 1024;
                *&buf[20] = v18;
                _os_log_impl(&dword_181A37000, v64, v94, "%{public}s NW_NECP_CLIENT_PARAMETER_APPLICATION_PROTOCOL has bad options length %u (total %u), backtrace limit exceeded", buf, 0x18u);
              }

              goto LABEL_230;
            }

            v78 = __nw_create_backtrace_string();
            v75 = __nwlog_obj();
            v90 = v198[0];
            v91 = os_log_type_enabled(v75, v198[0]);
            if (v78)
            {
              if (v91)
              {
                *buf = 136446978;
                *&buf[4] = "nw_path_create_flow_result_from_tlv";
                *&buf[12] = 1024;
                *&buf[14] = v69;
                *&buf[18] = 1024;
                *&buf[20] = v18;
                *&buf[24] = 2082;
                *&buf[26] = v78;
                _os_log_impl(&dword_181A37000, v75, v90, "%{public}s NW_NECP_CLIENT_PARAMETER_APPLICATION_PROTOCOL has bad options length %u (total %u), dumping backtrace:%{public}s", buf, 0x22u);
              }

              goto LABEL_221;
            }

            if (v91)
            {
              *buf = 136446722;
              *&buf[4] = "nw_path_create_flow_result_from_tlv";
              *&buf[12] = 1024;
              *&buf[14] = v69;
              *&buf[18] = 1024;
              *&buf[20] = v18;
              _os_log_impl(&dword_181A37000, v75, v90, "%{public}s NW_NECP_CLIENT_PARAMETER_APPLICATION_PROTOCOL has bad options length %u (total %u), no backtrace", buf, 0x18u);
            }
          }

          goto LABEL_243;
        case 224:
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v47 = gLogObj;
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446466;
            *&buf[4] = "nw_path_create_flow_result_from_tlv";
            *&buf[12] = 1024;
            *&buf[14] = v18;
            _os_log_impl(&dword_181A37000, v47, OS_LOG_TYPE_DEBUG, "%{public}s NW_NECP_CLIENT_PARAMETER_CUSTOM_METADATA %u bytes", buf, 0x12u);
          }

          if (v18 <= 0x100)
          {
            _nw_path_flow_set_custom_metadata(v191, v28, v18);
            break;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v66 = gLogObj;
          *buf = 136447234;
          *&buf[4] = "nw_path_create_flow_result_from_tlv";
          *&buf[12] = 1024;
          *&buf[14] = 224;
          *&buf[18] = 1024;
          *&buf[20] = v18;
          *&buf[24] = 2080;
          *&buf[26] = "nw_path_create_flow_result_from_tlv";
          *&buf[34] = 1024;
          *&buf[36] = 2619;
          v63 = _os_log_send_and_compose_impl();

          v198[0] = 16;
          v197 = OS_LOG_TYPE_DEFAULT;
          if (!__nwlog_fault(v63, v198, &v197))
          {
            goto LABEL_244;
          }

          if (v198[0] == 17)
          {
            v64 = __nwlog_obj();
            v67 = v198[0];
            if (os_log_type_enabled(v64, v198[0]))
            {
              *buf = 136447234;
              *&buf[4] = "nw_path_create_flow_result_from_tlv";
              *&buf[12] = 1024;
              *&buf[14] = 224;
              *&buf[18] = 1024;
              *&buf[20] = v18;
              *&buf[24] = 2080;
              *&buf[26] = "nw_path_create_flow_result_from_tlv";
              *&buf[34] = 1024;
              *&buf[36] = 2619;
              _os_log_impl(&dword_181A37000, v64, v67, "%{public}s TLV of type %d has invalid length %u (%s:%d)", buf, 0x28u);
            }

            goto LABEL_230;
          }

          if (v197 != OS_LOG_TYPE_INFO)
          {
            v64 = __nwlog_obj();
            v85 = v198[0];
            if (os_log_type_enabled(v64, v198[0]))
            {
              *buf = 136447234;
              *&buf[4] = "nw_path_create_flow_result_from_tlv";
              *&buf[12] = 1024;
              *&buf[14] = 224;
              *&buf[18] = 1024;
              *&buf[20] = v18;
              *&buf[24] = 2080;
              *&buf[26] = "nw_path_create_flow_result_from_tlv";
              *&buf[34] = 1024;
              *&buf[36] = 2619;
              _os_log_impl(&dword_181A37000, v64, v85, "%{public}s TLV of type %d has invalid length %u (%s:%d), backtrace limit exceeded", buf, 0x28u);
            }

LABEL_230:

LABEL_244:
            if (!v63)
            {
              break;
            }

LABEL_245:
            free(v63);
            break;
          }

          v78 = __nw_create_backtrace_string();
          v75 = __nwlog_obj();
          v79 = v198[0];
          v80 = os_log_type_enabled(v75, v198[0]);
          if (!v78)
          {
            if (v80)
            {
              *buf = 136447234;
              *&buf[4] = "nw_path_create_flow_result_from_tlv";
              *&buf[12] = 1024;
              *&buf[14] = 224;
              *&buf[18] = 1024;
              *&buf[20] = v18;
              *&buf[24] = 2080;
              *&buf[26] = "nw_path_create_flow_result_from_tlv";
              *&buf[34] = 1024;
              *&buf[36] = 2619;
              _os_log_impl(&dword_181A37000, v75, v79, "%{public}s TLV of type %d has invalid length %u (%s:%d), no backtrace", buf, 0x28u);
            }

LABEL_243:

            goto LABEL_244;
          }

          if (v80)
          {
            *buf = 136447490;
            *&buf[4] = "nw_path_create_flow_result_from_tlv";
            *&buf[12] = 1024;
            *&buf[14] = 224;
            *&buf[18] = 1024;
            *&buf[20] = v18;
            *&buf[24] = 2080;
            *&buf[26] = "nw_path_create_flow_result_from_tlv";
            *&buf[34] = 1024;
            *&buf[36] = 2619;
            *&buf[40] = 2082;
            *&buf[42] = v78;
            _os_log_impl(&dword_181A37000, v75, v79, "%{public}s TLV of type %d has invalid length %u (%s:%d), dumping backtrace:%{public}s", buf, 0x32u);
          }

LABEL_221:

          free(v78);
          if (v63)
          {
            goto LABEL_245;
          }

          break;
        default:
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v49 = gLogObj;
          if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            *&buf[4] = "nw_path_create_flow_result_from_tlv";
            *&buf[12] = 1024;
            *&buf[14] = v17;
            _os_log_impl(&dword_181A37000, v49, OS_LOG_TYPE_ERROR, "%{public}s Received unknown flow result TLV (type %d)", buf, 0x12u);
          }

LABEL_21:

          break;
      }
    }

    if (v10 >= a3 - 5)
    {
      goto LABEL_384;
    }
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v135 = gLogObj;
  *buf = 136446978;
  *&buf[4] = "nw_path_create_flow_result_from_tlv";
  *&buf[12] = 1024;
  *&buf[14] = v18;
  *&buf[18] = 2048;
  *&buf[20] = v10;
  *&buf[28] = 2048;
  *&buf[30] = a3;
  v136 = _os_log_send_and_compose_impl();

  v198[0] = 16;
  v197 = OS_LOG_TYPE_DEFAULT;
  if (!__nwlog_fault(v136, v198, &v197))
  {
    goto LABEL_382;
  }

  if (v198[0] == 17)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v137 = gLogObj;
    v138 = v198[0];
    if (os_log_type_enabled(v137, v198[0]))
    {
      *buf = 136446978;
      *&buf[4] = "nw_path_create_flow_result_from_tlv";
      *&buf[12] = 1024;
      *&buf[14] = v18;
      *&buf[18] = 2048;
      *&buf[20] = v10;
      *&buf[28] = 2048;
      *&buf[30] = a3;
      _os_log_impl(&dword_181A37000, v137, v138, "%{public}s TLV length (%u) at offset %zu goes beyond total length (%zu)", buf, 0x26u);
    }

    goto LABEL_363;
  }

  if (v197 != OS_LOG_TYPE_INFO)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v137 = gLogObj;
    v143 = v198[0];
    if (os_log_type_enabled(v137, v198[0]))
    {
      *buf = 136446978;
      *&buf[4] = "nw_path_create_flow_result_from_tlv";
      *&buf[12] = 1024;
      *&buf[14] = v18;
      *&buf[18] = 2048;
      *&buf[20] = v10;
      *&buf[28] = 2048;
      *&buf[30] = a3;
      _os_log_impl(&dword_181A37000, v137, v143, "%{public}s TLV length (%u) at offset %zu goes beyond total length (%zu), backtrace limit exceeded", buf, 0x26u);
    }

LABEL_363:

LABEL_382:
    if (!v136)
    {
      goto LABEL_384;
    }

    goto LABEL_383;
  }

  v139 = __nw_create_backtrace_string();
  v140 = __nwlog_obj();
  v141 = v198[0];
  v142 = os_log_type_enabled(v140, v198[0]);
  if (!v139)
  {
    if (v142)
    {
      *buf = 136446978;
      *&buf[4] = "nw_path_create_flow_result_from_tlv";
      *&buf[12] = 1024;
      *&buf[14] = v18;
      *&buf[18] = 2048;
      *&buf[20] = v10;
      *&buf[28] = 2048;
      *&buf[30] = a3;
      _os_log_impl(&dword_181A37000, v140, v141, "%{public}s TLV length (%u) at offset %zu goes beyond total length (%zu), no backtrace", buf, 0x26u);
    }

    goto LABEL_382;
  }

  if (v142)
  {
    *buf = 136447234;
    *&buf[4] = "nw_path_create_flow_result_from_tlv";
    *&buf[12] = 1024;
    *&buf[14] = v18;
    *&buf[18] = 2048;
    *&buf[20] = v10;
    *&buf[28] = 2048;
    *&buf[30] = a3;
    *&buf[38] = 2082;
    *&buf[40] = v139;
    _os_log_impl(&dword_181A37000, v140, v141, "%{public}s TLV length (%u) at offset %zu goes beyond total length (%zu), dumping backtrace:%{public}s", buf, 0x30u);
  }

  free(v139);
  if (v136)
  {
LABEL_383:
    free(v136);
  }

LABEL_384:
  if (v10 == a3)
  {
    goto LABEL_385;
  }

  v159 = __nwlog_obj();
  *buf = 136446722;
  *&buf[4] = "nw_path_create_flow_result_from_tlv";
  *&buf[12] = 2048;
  *&buf[14] = v10;
  *&buf[22] = 2048;
  *&buf[24] = a3;
  v160 = _os_log_send_and_compose_impl();

  v198[0] = 16;
  v197 = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v160, v198, &v197))
  {
    if (v198[0] == 17)
    {
      v161 = __nwlog_obj();
      v162 = v198[0];
      if (os_log_type_enabled(v161, v198[0]))
      {
        *buf = 136446722;
        *&buf[4] = "nw_path_create_flow_result_from_tlv";
        *&buf[12] = 2048;
        *&buf[14] = v10;
        *&buf[22] = 2048;
        *&buf[24] = a3;
        _os_log_impl(&dword_181A37000, v161, v162, "%{public}s cursor has unexpected value %zu != %zu", buf, 0x20u);
      }

      goto LABEL_406;
    }

    if (v197 == OS_LOG_TYPE_INFO)
    {
      v163 = __nw_create_backtrace_string();
      v164 = __nwlog_obj();
      v165 = v198[0];
      v166 = os_log_type_enabled(v164, v198[0]);
      if (v163)
      {
        if (v166)
        {
          *buf = 136446978;
          *&buf[4] = "nw_path_create_flow_result_from_tlv";
          *&buf[12] = 2048;
          *&buf[14] = v10;
          *&buf[22] = 2048;
          *&buf[24] = a3;
          *&buf[32] = 2082;
          *&buf[34] = v163;
          _os_log_impl(&dword_181A37000, v164, v165, "%{public}s cursor has unexpected value %zu != %zu, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v163);
      }

      else
      {
        if (v166)
        {
          *buf = 136446722;
          *&buf[4] = "nw_path_create_flow_result_from_tlv";
          *&buf[12] = 2048;
          *&buf[14] = v10;
          *&buf[22] = 2048;
          *&buf[24] = a3;
          _os_log_impl(&dword_181A37000, v164, v165, "%{public}s cursor has unexpected value %zu != %zu, no backtrace", buf, 0x20u);
        }
      }
    }

    else
    {
      v161 = __nwlog_obj();
      v167 = v198[0];
      if (os_log_type_enabled(v161, v198[0]))
      {
        *buf = 136446722;
        *&buf[4] = "nw_path_create_flow_result_from_tlv";
        *&buf[12] = 2048;
        *&buf[14] = v10;
        *&buf[22] = 2048;
        *&buf[24] = a3;
        _os_log_impl(&dword_181A37000, v161, v167, "%{public}s cursor has unexpected value %zu != %zu, backtrace limit exceeded", buf, 0x20u);
      }

LABEL_406:
    }
  }

  if (v160)
  {
    free(v160);
  }

LABEL_385:
  v144 = v189;
  if ((v188 & 0x100000000) == 0)
  {
    goto LABEL_392;
  }

  v145 = v191;
  v146 = _nw_path_flow_copy_local_endpoint(v191);
  v147 = v146;
  if (!v146 || (v148 = v146, v149 = _nw_endpoint_get_type(v148), v148, v145 = v191, v149 != 1))
  {
    *&buf[8] = 0;
    *&buf[2] = 0;
    *buf = 16;
    v151 = _nw_endpoint_create_address_with_ethernet(buf, &v195);
    _nw_path_flow_set_local_endpoint(v145, v151);

LABEL_391:
    v144 = v189;
LABEL_392:
    v152 = v191;
    if ((v188 & 1) == 0)
    {
LABEL_398:
      v15 = v152;
      goto LABEL_399;
    }

    v153 = _nw_path_flow_copy_remote_endpoint(v191);
    v154 = v153;
    if (!v153 || (v148 = v153, type = _nw_endpoint_get_type(v148), v148, type != 1))
    {
LABEL_397:

      v152 = v191;
      v144 = v189;
      goto LABEL_398;
    }

    memset(buf, 0, 28);
    if (nw_endpoint_fillout_v4v6_address(v148, buf))
    {
      v156 = _nw_endpoint_create_address_with_ethernet(buf, &v193);
      v157 = nw_path_copy_endpoint(v190);
      nw_endpoint_clone_parent_endpoint_properties(v156, v157);

      _nw_path_flow_set_remote_endpoint(v191, v156);
      goto LABEL_397;
    }

    v172 = __nwlog_obj();
    *v198 = 136446210;
    *&v198[4] = "nw_path_create_flow_result_from_tlv";
    v173 = _os_log_send_and_compose_impl();

    v197 = OS_LOG_TYPE_ERROR;
    v192 = 0;
    if (__nwlog_fault(v173, &v197, &v192))
    {
      if (v197 == OS_LOG_TYPE_FAULT)
      {
        v174 = __nwlog_obj();
        v175 = v197;
        if (os_log_type_enabled(v174, v197))
        {
          *v198 = 136446210;
          *&v198[4] = "nw_path_create_flow_result_from_tlv";
          _os_log_impl(&dword_181A37000, v174, v175, "%{public}s called with null success_remote", v198, 0xCu);
        }
      }

      else
      {
        if (v192 == 1)
        {
          v180 = __nw_create_backtrace_string();
          v181 = __nwlog_obj();
          v182 = v197;
          v183 = os_log_type_enabled(v181, v197);
          if (v180)
          {
            if (v183)
            {
              *v198 = 136446466;
              *&v198[4] = "nw_path_create_flow_result_from_tlv";
              *&v198[12] = 2082;
              *&v198[14] = v180;
              _os_log_impl(&dword_181A37000, v181, v182, "%{public}s called with null success_remote, dumping backtrace:%{public}s", v198, 0x16u);
            }

            free(v180);
          }

          else
          {
            if (v183)
            {
              *v198 = 136446210;
              *&v198[4] = "nw_path_create_flow_result_from_tlv";
              _os_log_impl(&dword_181A37000, v181, v182, "%{public}s called with null success_remote, no backtrace", v198, 0xCu);
            }
          }

          goto LABEL_455;
        }

        v174 = __nwlog_obj();
        v185 = v197;
        if (os_log_type_enabled(v174, v197))
        {
          *v198 = 136446210;
          *&v198[4] = "nw_path_create_flow_result_from_tlv";
          _os_log_impl(&dword_181A37000, v174, v185, "%{public}s called with null success_remote, backtrace limit exceeded", v198, 0xCu);
        }
      }
    }

LABEL_455:
    if (v173)
    {
      free(v173);
    }

    goto LABEL_457;
  }

  memset(buf, 0, 28);
  if (nw_endpoint_fillout_v4v6_address(v148, buf))
  {
    v150 = _nw_endpoint_create_address_with_ethernet(buf, &v195);
    _nw_path_flow_set_local_endpoint(v191, v150);

    goto LABEL_391;
  }

  v168 = __nwlog_obj();
  *v198 = 136446210;
  *&v198[4] = "nw_path_create_flow_result_from_tlv";
  v169 = _os_log_send_and_compose_impl();

  v197 = OS_LOG_TYPE_ERROR;
  v192 = 0;
  if (__nwlog_fault(v169, &v197, &v192))
  {
    if (v197 == OS_LOG_TYPE_FAULT)
    {
      v170 = __nwlog_obj();
      v171 = v197;
      if (os_log_type_enabled(v170, v197))
      {
        *v198 = 136446210;
        *&v198[4] = "nw_path_create_flow_result_from_tlv";
        _os_log_impl(&dword_181A37000, v170, v171, "%{public}s called with null success_local", v198, 0xCu);
      }

      goto LABEL_419;
    }

    if (v192 == 1)
    {
      v176 = __nw_create_backtrace_string();
      v177 = __nwlog_obj();
      v178 = v197;
      v179 = os_log_type_enabled(v177, v197);
      if (v176)
      {
        if (v179)
        {
          *v198 = 136446466;
          *&v198[4] = "nw_path_create_flow_result_from_tlv";
          *&v198[12] = 2082;
          *&v198[14] = v176;
          _os_log_impl(&dword_181A37000, v177, v178, "%{public}s called with null success_local, dumping backtrace:%{public}s", v198, 0x16u);
        }

        free(v176);
      }

      else
      {
        if (v179)
        {
          *v198 = 136446210;
          *&v198[4] = "nw_path_create_flow_result_from_tlv";
          _os_log_impl(&dword_181A37000, v177, v178, "%{public}s called with null success_local, no backtrace", v198, 0xCu);
        }
      }
    }

    else
    {
      v170 = __nwlog_obj();
      v184 = v197;
      if (os_log_type_enabled(v170, v197))
      {
        *v198 = 136446210;
        *&v198[4] = "nw_path_create_flow_result_from_tlv";
        _os_log_impl(&dword_181A37000, v170, v184, "%{public}s called with null success_local, backtrace limit exceeded", v198, 0xCu);
      }

LABEL_419:
    }
  }

  if (v169)
  {
    free(v169);
  }

LABEL_457:

  v15 = 0;
  v144 = v189;
LABEL_399:

  v9 = v191;
LABEL_400:

LABEL_401:
  return v15;
}

void sub_181B991CC(char *a1, const unsigned __int8 *a2)
{
  v3 = &a1[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v4 = a1;
  swift_beginAccess();
  LODWORD(v3) = v3[153];

  if (v3 == 1)
  {
    v5 = &v4[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
    v6 = v4;
    swift_beginAccess();
    *(v5 + 16) = 0;
    *(v5 + 17) = 0;
    *(v5 + 18) = 0;
    *(v5 + 76) = 1;
  }

  v7 = v4;
  is_null = uuid_is_null(a2);
  if (is_null == 1)
  {
    v9 = 0;
    v10 = 0;
  }

  else
  {
    v9 = *a2;
    v10 = *(a2 + 1);
  }

  v11 = &v7[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  swift_beginAccess();
  if (v11[153])
  {
    __break(1u);
  }

  else
  {
    *(v11 + 17) = v9;
    *(v11 + 18) = v10;
    v11[152] = is_null == 1;
  }
}

void _nw_path_flow_set_nexus_port_0(char *a1, int a2)
{
  v3 = &a1[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v4 = a1;
  swift_beginAccess();
  LODWORD(v3) = v3[153];

  if (v3 == 1)
  {
    v5 = &v4[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
    v6 = v4;
    swift_beginAccess();
    *(v5 + 16) = 0;
    *(v5 + 17) = 0;
    *(v5 + 18) = 0;
    *(v5 + 76) = 1;
  }

  v7 = &v4[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v8 = v4;
  swift_beginAccess();
  if (v7[153])
  {
    __break(1u);
  }

  else
  {
    *(v7 + 33) = a2;
  }
}

uint64_t sub_181B993C0(char *a1, const void *a2, unsigned int a3)
{
  if (a3)
  {
    v5 = a3;
    v6 = a1;
    v7 = sub_181AC1BE8(v5, 0);
    memcpy(v7 + 4, a2, v5);
    v8 = OBJC_IVAR____TtC7Network12__NWPathFlow_flow;
    swift_beginAccess();
    *&v6[v8] = v7;
  }

  else
  {
    v9 = OBJC_IVAR____TtC7Network12__NWPathFlow_flow;
    v10 = a1;
    swift_beginAccess();
    *&a1[v9] = 0;
  }
}

void sub_181B9948C(char *a1, char a2)
{
  v3 = &a1[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v4 = a1;
  swift_beginAccess();
  v5 = *(v3 + 100);
  if (a2)
  {
    if ((v5 & 0x40) == 0)
    {
      v6 = v5 | 0x40;
LABEL_6:
      *(v3 + 100) = v6;
    }
  }

  else if ((v5 & 0x40) != 0)
  {
    v6 = v5 & 0xFFBF;
    goto LABEL_6;
  }
}

void _nw_path_flow_set_nexus_agent_struct(char *a1, uint64_t *a2)
{
  v2 = *(a2 + 4);
  v4 = *a2;
  v3 = a2[1];
  v5 = &a1[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v6 = a1;
  swift_beginAccess();
  *(v5 + 12) = v4;
  *(v5 + 13) = v3;
  *(v5 + 28) = v2;
  v5[116] = 0;
}

void _nw_path_flow_set_unique_flow_tag(char *a1, int a2)
{
  v3 = &a1[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v4 = a1;
  swift_beginAccess();
  *(v3 + 48) = a2;
}

uint64_t sub_181B995E0(uint64_t a1, int *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v24 = *(a1 + 24);
  v25 = *(a1 + 16);
  v23 = *(a1 + 32);
  v5 = *(a1 + 42);
  v6 = *(a1 + 48);
  v21 = *(a1 + 52);
  v22 = *(a1 + 40);
  v7 = *a2;
  v8 = *(v2 + 8);
  v9 = *(v2 + 16);
  v10 = *(v2 + 24);
  v11 = *(v2 + 32);
  v12 = *(v2 + 40);
  v13 = *(v2 + 42);
  v18 = *(v2 + 48);
  v19 = v6;
  v20 = *(v2 + 52);
  v31 = *v2;
  v32 = v8;
  v26 = v3;
  v27 = v4;
  v36 = v7;

  v14 = sub_181B0AD48(&v26, &v36);

  if (!v14)
  {
    return 0;
  }

  v31 = v9;
  v32 = v10;
  v33 = v11;
  v34 = v12;
  v35 = v13;
  v26 = v25;
  v27 = v24;
  v28 = v23;
  v29 = v22;
  v30 = v5;
  sub_181B9979C(v9, v10, v11, v12, v13);
  sub_181B9979C(v25, v24, v23, v22, v5);
  v15 = _s7Network15AddressEndpointV0bC4TypeO2eeoiySbAE_AEtFZ_0(&v31, &v26);
  sub_181AD1DE4(v26, v27, v28, v29, v30);
  sub_181AD1DE4(v31, v32, v33, v34, v35);
  if (!v15)
  {
    return 0;
  }

  if (v20)
  {
    if (!v21)
    {
      return 0;
    }
  }

  else
  {
    v17 = v21;
    if (v18 != v19)
    {
      v17 = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_181B9979C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 == 2)
  {
  }

  if (a5 <= 1u)
  {
  }

  return result;
}

uint64_t sub_181B997D0(char a1, uint64_t a2)
{
  v3 = *v2;
  v4 = (*v2 + 16);
  v5 = *v4;
  if (*v4 >= a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8386D0);
    v8 = swift_allocObject();
    v9 = *(v3 + 24);
    *(v8 + 16) = v5;
    *(v8 + 24) = v9;
    if (v9 >= 1)
    {
      sub_1820E5AB8(v8 + 16, v8 + 40, v4, v3 + 40);
    }
  }

  else
  {
    sub_182AD2398();
    if (a1)
    {
      v7 = *(v3 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8386D0);
      v8 = swift_allocObject();
      *(v8 + 16) = (_swift_stdlib_malloc_size(v8) - 40) / 208;
      *(v8 + 24) = v7;
      *(v8 + 32) = 0;
      if (v7 >= 1)
      {
        sub_181C4E26C(v8 + 16, (v8 + 40), v4, (v3 + 40));
        *(v3 + 24) = 0;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8386D0);
      v8 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v8);
      v11 = *(v3 + 24);
      *(v8 + 16) = (v10 - 40) / 208;
      *(v8 + 24) = v11;
      *(v8 + 32) = 0;
      if (v11 >= 1)
      {
        sub_181F47CDC(v8 + 16, v8 + 40, v4, v3 + 40);
      }
    }
  }

  *v2 = v8;
  return result;
}

void *sub_181B999A8(void *result, uint64_t a2, _OWORD *a3)
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
        v7 = a3[11];
        v8 = (a2 + 208 * v5);
        v8[10] = a3[10];
        v8[11] = v7;
        *(v8 + 186) = *(a3 + 186);
        v9 = a3[7];
        v8[6] = a3[6];
        v8[7] = v9;
        v10 = a3[9];
        v8[8] = a3[8];
        v8[9] = v10;
        v11 = a3[3];
        v8[2] = a3[2];
        v8[3] = v11;
        v12 = a3[5];
        v8[4] = a3[4];
        v8[5] = v12;
        v13 = a3[1];
        *v8 = *a3;
        v8[1] = v13;
        v6 = __OFADD__(v3, 1);
        v14 = v3 + 1;
        if (!v6)
        {
          result[1] = v14;
          return sub_181AFE6F4(a3, &v15);
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

void _nw_path_flow_set_ecn_enabled_0(char *a1, char a2)
{
  v3 = &a1[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v4 = a1;
  swift_beginAccess();
  v5 = *(v3 + 100);
  if (a2)
  {
    if ((v5 & 4) == 0)
    {
      v6 = v5 | 4;
LABEL_6:
      *(v3 + 100) = v6;
    }
  }

  else if ((v5 & 4) != 0)
  {
    v6 = v5 & 0xFFFB;
    goto LABEL_6;
  }
}

uint64_t sub_181B99AFC(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v69 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
LABEL_15:
    __break(1u);
  }

  *&v38 = a3;
  *(&v38 + 1) = a4;

  LOBYTE(v61) = 0;
  result = sub_181AC04E8(&v38, a5, a2, v50);
  v13 = *&v50[0];
  if (!*&v50[0])
  {
  }

  v15 = *(a8 + 200);
  v14 = a8 + 200;
  if (!v15)
  {
    __break(1u);
    return result;
  }

  if (a9 < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (*(*v14 + 24) <= a9)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1820E6474();
  }

  v16 = *(*v14 + 32) + a9;
  v17 = *(*v14 + 16);
  if (v16 < v17)
  {
    v17 = 0;
  }

  v18 = 208 * (v16 - v17);
  v19 = *v14 + v18;
  v20 = *(v19 + 184);
  v21 = *(v19 + 216);
  v59 = *(v19 + 200);
  v60[0] = v21;
  *(v60 + 10) = *(v19 + 226);
  v57 = *(v19 + 168);
  v58 = v20;
  v22 = *(v19 + 40);
  v23 = *(v19 + 56);
  v24 = *(v19 + 88);
  v63 = *(v19 + 72);
  v64 = v24;
  v61 = v22;
  v62 = v23;
  v25 = *(v19 + 104);
  v26 = *(v19 + 120);
  v27 = *(v19 + 136);
  v68 = *(v19 + 152);
  v66 = v26;
  v67 = v27;
  v65 = v25;

  v40 = v63;
  v41 = v64;
  v38 = v61;
  v39 = v62;
  v43 = v66;
  v44 = v67;
  v42 = v65;
  *&v45 = v68;
  *(&v45 + 1) = v13;
  *(v49 + 10) = *(v60 + 10);
  v48 = v59;
  v49[0] = v60[0];
  v46 = v57;
  v47 = v58;
  v28 = *v14 + v18;
  v29 = v45;
  v30 = v57;
  v31 = v67;
  *(v28 + 120) = v66;
  *(v28 + 136) = v31;
  *(v28 + 168) = v30;
  *(v28 + 152) = v29;
  *(v28 + 40) = v38;
  v32 = v39;
  v33 = v40;
  v34 = v41;
  *(v28 + 104) = v42;
  *(v28 + 88) = v34;
  *(v28 + 72) = v33;
  *(v28 + 56) = v32;
  v35 = v47;
  v36 = v48;
  v37 = v49[0];
  *(v28 + 226) = *(v49 + 10);
  *(v28 + 216) = v37;
  *(v28 + 200) = v36;
  *(v28 + 184) = v35;
  sub_181AFE6F4(&v38, v50);

  sub_181B99DD0(v13);
  v50[4] = v65;
  v50[5] = v66;
  v50[6] = v67;
  v50[0] = v61;
  v50[1] = v62;
  v50[2] = v63;
  v50[3] = v64;
  v51 = v68;
  v52 = v13;
  *(v56 + 10) = *(v60 + 10);
  v55 = v59;
  v56[0] = v60[0];
  v53 = v57;
  v54 = v58;
  return sub_181AFE6A0(v50);
}

uint64_t sub_181B99DD0(uint64_t result)
{
  if (result)
  {

    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_181B99E10(uint64_t a1, char a2)
{
  v100 = *MEMORY[0x1E69E9840];
  v6 = *(v2 + 8);
  v5 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 65);
  v9 = *(v2 + 81);
  v10 = *(v2 + 116);
  v11 = *(v2 + 117);
  v12 = *(v2 + 156);
  v13 = *(v2 + 200);
  v14 = *(v2 + 216);
  v15 = *(v2 + 264);
  v16 = *(v2 + 280);
  v17 = *(v2 + 336);
  v92 = *(v2 + 320);
  v93 = v17;
  v94 = *(v2 + 352);
  v18 = *(v2 + 304);
  v90 = *(v2 + 288);
  v91 = v18;
  v19 = *(v2 + 376);
  v20 = *(a1 + 81);
  if (v9)
  {
    v79 = v12;
    v81 = v15;
    object1 = v16;
    v78 = v14;
    if ((*(a1 + 81) & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v21 = *(a1 + 65);
    v95 = v8;
    LOBYTE(v96) = 0;
    if (v20)
    {
      goto LABEL_34;
    }

    v79 = v12;
    v81 = v15;
    object1 = v16;
    v78 = v14;
    v88 = v21;
    if (!_s7Network10SystemUUIDV2eeoiySbAC_ACtFZ_0(&v95, &v88))
    {
      goto LABEL_34;
    }
  }

  if (v90 == 3 && *(a1 + 288) == 3)
  {
LABEL_8:
    LOBYTE(v7) = 1;
    return v7 & 1;
  }

  v22 = *(a1 + 336);
  v97 = *(a1 + 320);
  v98 = v22;
  v99 = *(a1 + 352);
  v23 = *(a1 + 304);
  v95 = *(a1 + 288);
  v96 = v23;
  result = sub_181B9AA34(&v90, &v95);
  if ((result & 1) == 0)
  {
    goto LABEL_34;
  }

  v25 = *(&v96 + 1);
  if (*(&v91 + 1))
  {
    if (!*(&v96 + 1))
    {
      goto LABEL_34;
    }

    v26 = *(*(&v91 + 1) + 24);
    if (v26 != *(*(&v96 + 1) + 24))
    {
      goto LABEL_34;
    }

    if (v26 && *(&v91 + 1) != *(&v96 + 1))
    {
      v65 = v7;
      v67 = v6;
      v69 = v5;
      v27 = *(*(&v91 + 1) + 32);
      v28 = v27 + v26;
      if (*(*(&v91 + 1) + 16) < v27 + v26)
      {
        v28 = *(*(&v91 + 1) + 16);
      }

      *&v88 = *(&v91 + 1);
      *(&v88 + 1) = v27;
      v89 = v28;
      v29 = *(*(&v96 + 1) + 32);
      v30 = v29 + v26;
      if (*(*(&v96 + 1) + 16) < v30)
      {
        v30 = *(*(&v96 + 1) + 16);
      }

      v85 = *(&v96 + 1);
      v86 = v29;
      v87 = v30;
      swift_retain_n();
      v31 = swift_retain_n();
      v75 = v25;
      while (1)
      {
        v32 = *(&v88 + 1);
        if (*(&v88 + 1) != v89)
        {
          goto LABEL_23;
        }

        v31 = sub_181AC81FC(v31);
        if (v31)
        {
          break;
        }

        v35 = 0;
        v36 = 0uLL;
        v33 = 1;
LABEL_25:
        if (v29 == v87)
        {
          v73 = v36;
          if ((sub_181AC81FC(v31) & 1) == 0)
          {

            if (v33)
            {

              v6 = v67;
              v5 = v69;
              v7 = v65;
              goto LABEL_38;
            }

LABEL_32:

LABEL_34:
            LOBYTE(v7) = 0;
            return v7 & 1;
          }

          v29 = v86;
          v75 = v85;
          v36 = v73;
        }

        v86 = v29 + 1;
        if ((v33 & 1) == 0)
        {
          v37 = v75 + 24 * v29;
          if (v35 == *(v37 + 40))
          {
            *uu2 = *(v37 + 48);
            *uu1 = v36;
            v31 = uuid_compare(uu1, uu2);
            ++v29;
            if (!v31)
            {
              continue;
            }
          }
        }

        goto LABEL_32;
      }

      v32 = *(&v88 + 1);
LABEL_23:
      v33 = 0;
      *(&v88 + 1) = v32 + 1;
      v34 = v88 + 24 * v32;
      v35 = *(v34 + 40);
      v36 = *(v34 + 48);
      goto LABEL_25;
    }
  }

  else if (*(&v96 + 1))
  {
    goto LABEL_34;
  }

LABEL_38:
  v38 = v7;
  LOBYTE(v7) = 0;
  if (v10 != *(a1 + 116) || v11 != *(a1 + 117))
  {
    return v7 & 1;
  }

  if ((v19 & 1) == 0 && *(a1 + 376) != 1)
  {
    goto LABEL_8;
  }

  v39 = v79;
  if (a2)
  {
    v7 = *(a1 + 200);
    if (v13)
    {
      if (!v7)
      {
        return v7 & 1;
      }

      v40 = v13[3];
      if (v40 != *(v7 + 24))
      {
        goto LABEL_34;
      }

      if (v40)
      {
        if (v13 != v7)
        {

          v41 = sub_1822C5050(v7, v13);

          v39 = v79;
          if ((v41 & 1) == 0)
          {
            goto LABEL_34;
          }
        }
      }
    }

    else if (v7)
    {
      goto LABEL_34;
    }
  }

  v42 = *(a1 + 156);
  if ((v39 & 1) == ((v42 & 1) == 0) || ((v42 & 2) == 0) == (v39 & 2) >> 1 || ((v42 & 0x20) == 0) == (v39 & 0x20) >> 5 || ((v42 & 0x10) == 0) == (v39 & 0x10) >> 4 || ((v42 & 0x40) == 0) == (v39 & 0x40) >> 6 || ((v42 & 0x80) == 0) == (v39 & 0x80) >> 7)
  {
    goto LABEL_34;
  }

  v7 = *(a1 + 264);
  if (v81)
  {
    if (!v7)
    {
      return v7 & 1;
    }

    v44 = sub_181B9AEF8(v43, v7);

    if ((v44 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if (v7)
  {
    goto LABEL_34;
  }

  v72 = *(a1 + 216);
  v68 = *(v78 + 16);
  if (v68 != *(v72 + 16))
  {
    goto LABEL_34;
  }

  v45 = v78;
  if (!v68)
  {
LABEL_152:
    v62 = *(a1 + 280);
    if (object1)
    {
      if (!v62 || !xpc_equal(object1, v62))
      {
        goto LABEL_34;
      }
    }

    else if (v62)
    {
      goto LABEL_34;
    }

    *&v88 = v38;
    v85 = *(a1 + 24);

    v63 = _s7Network9InterfaceV24isDeepEqualWithOptionals3if13if2SbACSg_AGtFZ_0(&v88, &v85);

    if (!v63)
    {
      goto LABEL_34;
    }

    *&v88 = v6;
    v85 = *(a1 + 8);

    v64 = _s7Network9InterfaceV24isDeepEqualWithOptionals3if13if2SbACSg_AGtFZ_0(&v88, &v85);

    if (!v64)
    {
      goto LABEL_34;
    }

    *&v88 = v5;
    v85 = *(a1 + 16);

    LOBYTE(v7) = _s7Network9InterfaceV24isDeepEqualWithOptionals3if13if2SbACSg_AGtFZ_0(&v88, &v85);

    return v7 & 1;
  }

  v46 = 0;
  v47 = (v78 + 56);
  v82 = (v72 + 56);
  while (v46 < *(v45 + 16))
  {
    v49 = *(v47 - 2);
    v76 = *(v47 - 3);
    v80 = v46;
    if (v49 > 2)
    {
      if (v49 == 3)
      {
        result = 0xD000000000000010;
        v50 = 0x8000000182BD7080;
        goto LABEL_82;
      }

      if (v49 != 4)
      {
        if (v49 == 5)
        {
          result = 0xD000000000000013;
          v50 = 0x8000000182BD7060;
          goto LABEL_82;
        }

        goto LABEL_79;
      }

      v50 = 0xE700000000000000;
      result = 0x6B6C6177796B53;
    }

    else
    {
      if (!v49)
      {
        v50 = 0xE700000000000000;
        result = 0x6B726F7774654ELL;
        goto LABEL_82;
      }

      if (v49 != 1)
      {
        if (v49 == 2)
        {
          result = 0x6F436D6574737953;
          v50 = 0xEC0000006769666ELL;
          goto LABEL_82;
        }

LABEL_79:
        result = *(v47 - 3);
        v50 = *(v47 - 2);
        goto LABEL_82;
      }

      v50 = 0xE800000000000000;
      result = 0x72616C756C6C6543;
    }

LABEL_82:
    if (v46 >= *(v72 + 16))
    {
      goto LABEL_162;
    }

    v51 = *(v82 - 2);
    v71 = *(v82 - 3);
    if (v51 > 2)
    {
      switch(v51)
      {
        case 3:
          v52 = 0xD000000000000010;
          v53 = 0x8000000182BD7080;
          break;
        case 4:
          v53 = 0xE700000000000000;
          v54 = 0x6C6177796B53;
          goto LABEL_97;
        case 5:
          v52 = 0xD000000000000013;
          v53 = 0x8000000182BD7060;
          break;
        default:
          goto LABEL_94;
      }
    }

    else
    {
      if (!v51)
      {
        v53 = 0xE700000000000000;
        v54 = 0x726F7774654ELL;
LABEL_97:
        v52 = v54 & 0xFFFFFFFFFFFFLL | 0x6B000000000000;
        goto LABEL_98;
      }

      if (v51 == 1)
      {
        v53 = 0xE800000000000000;
        v52 = 0x72616C756C6C6543;
        goto LABEL_98;
      }

      if (v51 != 2)
      {
LABEL_94:
        v52 = *(v82 - 3);
        v53 = *(v82 - 2);
        goto LABEL_98;
      }

      v52 = 0x6F436D6574737953;
      v53 = 0xEC0000006769666ELL;
    }

LABEL_98:
    v55 = *v47;
    v74 = *(v47 - 1);
    v70 = v47;
    if (result == v52 && v50 == v53)
    {
      sub_181AA5C1C(v76, v49);
      sub_181AA5C1C(v71, v51);
      sub_181AA5C1C(v76, v49);
      sub_181ADC1E0(v74, v55);
    }

    else
    {
      v66 = sub_182AD4268();
      sub_181AA5C1C(v76, v49);
      sub_181AA5C1C(v71, v51);
      sub_181AA5C1C(v76, v49);
      sub_181ADC1E0(v74, v55);

      if ((v66 & 1) == 0)
      {
        sub_181E4926C(v76, v49);
        sub_181E49280(v74, v55);
        goto LABEL_34;
      }
    }

    if (v55 > 4)
    {
      if (v55 > 6)
      {
        switch(v55)
        {
          case 7:
            v56 = 0x4465746176697250;
            v57 = 0xEA0000000000534ELL;
            goto LABEL_124;
          case 8:
            v56 = 0xD000000000000010;
            v57 = 0x8000000182BD7020;
            goto LABEL_124;
          case 9:
            v56 = 0xD000000000000011;
            v57 = 0x8000000182BD7000;
            goto LABEL_124;
        }

        goto LABEL_123;
      }

      if (v55 == 5)
      {
        v56 = 0xD000000000000012;
        v57 = 0x8000000182BD7040;
      }

      else
      {
        v57 = 0xE800000000000000;
        v56 = 0x746E656741534E44;
      }
    }

    else
    {
      if (v55 <= 1)
      {
        if (!v55)
        {
          v57 = 0xE800000000000000;
          v56 = 0x74656E7265746E49;
          goto LABEL_124;
        }

        if (v55 == 1)
        {
          v56 = 0x7265764F68746150;
          v57 = 0xEC00000065646972;
          goto LABEL_124;
        }

LABEL_123:

        v56 = v74;
        v57 = v55;
        goto LABEL_124;
      }

      if (v55 == 2)
      {
        v56 = 0x65674179786F7250;
        v57 = 0xEA0000000000746ELL;
      }

      else if (v55 == 3)
      {
        v57 = 0xE500000000000000;
        v56 = 0x79786F7250;
      }

      else
      {
        v56 = 0x5079636176697250;
        v57 = 0xEC00000079786F72;
      }
    }

LABEL_124:
    sub_181E4926C(v76, v49);
    result = sub_181E49280(v74, v55);
    if (v80 >= *(v72 + 16))
    {
      goto LABEL_163;
    }

    v59 = *(v82 - 1);
    v58 = *v82;
    if (*v82 > 4)
    {
      if (v58 <= 6)
      {
        if (v58 == 5)
        {
          v60 = 0xD000000000000012;
          v61 = 0x8000000182BD7040;
          goto LABEL_149;
        }

        if (v58 == 6)
        {
          v61 = 0xE800000000000000;
          v60 = 0x746E656741534E44;
          goto LABEL_149;
        }
      }

      else
      {
        switch(v58)
        {
          case 7:
            v60 = 0x4465746176697250;
            v61 = 0xEA0000000000534ELL;
            goto LABEL_149;
          case 8:
            v60 = 0xD000000000000010;
            v61 = 0x8000000182BD7020;
            goto LABEL_149;
          case 9:
            v60 = 0xD000000000000011;
            v61 = 0x8000000182BD7000;
            goto LABEL_149;
        }
      }
    }

    else if (v58 <= 1)
    {
      if (!v58)
      {
        v61 = 0xE800000000000000;
        v60 = 0x74656E7265746E49;
        goto LABEL_149;
      }

      if (v58 == 1)
      {
        v60 = 0x7265764F68746150;
        v61 = 0xEC00000065646972;
        goto LABEL_149;
      }
    }

    else
    {
      switch(v58)
      {
        case 2:
          v60 = 0x65674179786F7250;
          v61 = 0xEA0000000000746ELL;
          goto LABEL_149;
        case 3:
          v61 = 0xE500000000000000;
          v60 = 0x79786F7250;
          goto LABEL_149;
        case 4:
          v60 = 0x5079636176697250;
          v61 = 0xEC00000079786F72;
          goto LABEL_149;
      }
    }

    v60 = *(v82 - 1);
    v61 = *v82;
LABEL_149:
    if (v56 == v60 && v57 == v61)
    {
      sub_181ADC1E0(*(v82 - 1), *v82);
    }

    else
    {
      v48 = sub_182AD4268();
      sub_181ADC1E0(v59, v58);

      if ((v48 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    v46 = v80 + 1;
    v47 = v70 + 4;
    v82 += 4;
    v45 = v78;
    if (v68 == v80 + 1)
    {
      goto LABEL_152;
    }
  }

  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
  return result;
}