uint64_t _nw_endpoint_is_active(void *a1, char a2)
{
  v3 = a1;
  v4 = sub_181A46DBC(a2);

  return v4 & 1;
}

unint64_t sub_181A49A2C(unint64_t a1, _BYTE *a2)
{
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v5 = sub_182AD3EB8();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1865DA790](v6, a1);
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v7 = *(a1 + 8 * v6 + 32);
      swift_unknownObjectRetain();
    }

    if ((nw_endpoint_edge_is_active(v7) & 1) == 0)
    {
      break;
    }

    *a2 = 1;
    swift_unknownObjectRelease();
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_16;
    }
  }

  swift_unknownObjectRelease();
  return v6;
}

uint64_t sub_181A49B30(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_182AD3EB8();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = sub_182AD3EB8();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_181A49C08(result);

  return sub_181A49CA8(v4, v2, 0);
}

uint64_t sub_181A49C08(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_182AD3EB8();
LABEL_9:
  result = sub_182AD3C38();
  *v1 = result;
  return result;
}

uint64_t sub_181A49CA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838A98);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_182AD3EB8();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_182AD3EB8();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

void sub_181A49DB4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7Network8Endpoint_registrar;
  v3 = *&v0[OBJC_IVAR____TtC7Network8Endpoint_registrar];
  if (v3)
  {
    v4 = qword_1ED40FE10;
    swift_unknownObjectRetain();
    if (v4 != -1)
    {
      swift_once();
    }

    v5 = sub_182AD2698();
    __swift_project_value_buffer(v5, qword_1ED411BA0);
    v6 = v1;
    v7 = sub_182AD2678();
    v8 = sub_182AD38A8();

    if (os_log_type_enabled(v7, v8))
    {
      oslog = v2;
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v43 = v10;
      *v9 = 136315138;
      sensitive_redacted = nw_context_get_sensitive_redacted(*&v6[OBJC_IVAR____TtC7Network8Endpoint_context]);
      if ((*&v6[OBJC_IVAR____TtC7Network8Endpoint_flags] & 0x80) != 0 || (sensitive_redacted & 1) == 0)
      {
        v12 = Endpoint.description.getter();
      }

      else
      {
        v12 = sub_181B52D70();
      }

      v22 = sub_181C64FFC(v12, v13, &v43);

      *(v9 + 4) = v22;
      _os_log_impl(&dword_181A37000, v7, v8, "endpoint %s before cleanup, has registrar", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x1865DF520](v10, -1, -1);
      MEMORY[0x1865DF520](v9, -1, -1);

      v2 = oslog;
    }

    else
    {
    }

    instance_count = nw_protocol_instance_registrar_get_instance_count(v3);
    v24 = v6;
    v25 = sub_182AD2678();
    v26 = sub_182AD38A8();

    v27 = os_log_type_enabled(v25, v26);
    if (instance_count)
    {
      if (v27)
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v43 = v29;
        *v28 = 136315138;
        v30 = nw_context_get_sensitive_redacted(*&v24[OBJC_IVAR____TtC7Network8Endpoint_context]);
        if ((*&v24[OBJC_IVAR____TtC7Network8Endpoint_flags] & 0x80) != 0 || (v30 & 1) == 0)
        {
          v31 = Endpoint.description.getter();
        }

        else
        {
          v31 = sub_181B52D70();
        }

        v38 = sub_181C64FFC(v31, v32, &v43);

        *(v28 + 4) = v38;
        _os_log_impl(&dword_181A37000, v25, v26, "endpoint %s registrar not empty, keeping", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v29);
        MEMORY[0x1865DF520](v29, -1, -1);
        MEMORY[0x1865DF520](v28, -1, -1);

        swift_unknownObjectRelease();
        return;
      }
    }

    else
    {
      if (v27)
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v43 = v34;
        *v33 = 136315138;
        v35 = nw_context_get_sensitive_redacted(*&v24[OBJC_IVAR____TtC7Network8Endpoint_context]);
        if ((*&v24[OBJC_IVAR____TtC7Network8Endpoint_flags] & 0x80) != 0 || (v35 & 1) == 0)
        {
          v36 = Endpoint.description.getter();
        }

        else
        {
          v36 = sub_181B52D70();
        }

        v40 = sub_181C64FFC(v36, v37, &v43);

        *(v33 + 4) = v40;
        _os_log_impl(&dword_181A37000, v25, v26, "endpoint %s registrar empty, removing", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v34);
        MEMORY[0x1865DF520](v34, -1, -1);
        MEMORY[0x1865DF520](v33, -1, -1);
      }

      swift_unknownObjectRelease();
      *&v1[v2] = 0;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1ED40FE10 != -1)
    {
      swift_once();
    }

    v14 = sub_182AD2698();
    __swift_project_value_buffer(v14, qword_1ED411BA0);
    v15 = v0;
    osloga = sub_182AD2678();
    v16 = sub_182AD38A8();

    if (os_log_type_enabled(osloga, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v43 = v18;
      *v17 = 136315138;
      v19 = nw_context_get_sensitive_redacted(*&v15[OBJC_IVAR____TtC7Network8Endpoint_context]);
      if ((*&v15[OBJC_IVAR____TtC7Network8Endpoint_flags] & 0x80) != 0 || (v19 & 1) == 0)
      {
        v20 = Endpoint.description.getter();
      }

      else
      {
        v20 = sub_181B52D70();
      }

      v39 = sub_181C64FFC(v20, v21, &v43);

      *(v17 + 4) = v39;
      _os_log_impl(&dword_181A37000, osloga, v16, "endpoint %s has nothing to cleanup, no protocol instance registrars", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x1865DF520](v18, -1, -1);
      MEMORY[0x1865DF520](v17, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t type metadata accessor for URLEndpoint()
{
  result = qword_1ED410A80;
  if (!qword_1ED410A80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t Parameters.init(noInternetProtocol:)@<X0>(char a1@<W0>, void *a2@<X8>)
{
  *__src = 0u;
  __src[16] = 1;
  *&__src[25] = 0;
  *&__src[17] = 0;
  __src[33] = 1;
  memset(&__src[36], 0, 32);
  __src[68] = 1;
  *&__src[72] = 0;
  __src[80] = 1;
  *&__src[88] = 0;
  __src[96] = 1;
  *&__src[104] = 0;
  __src[112] = 1;
  *&__src[113] = 512;
  *&__src[120] = 0x200020000;
  sub_181A53D78(&__src[128]);
  memset(&__src[304], 0, 32);
  *&__src[336] = 0xF000000000000000;
  type metadata accessor for ProtocolStack();
  memset(&__src[352], 0, 40);
  swift_allocObject();
  *&__src[344] = ProtocolStack.init(noInternet:)(a1);
  result = networkd_settings_get_int64(nw_setting_multipath_service_type);
  if (!result)
  {
    goto LABEL_8;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    v5 = sub_181E7EB7C(result);
    if (v5 == 6)
    {
      v6 = 0;
    }

    else
    {
      v6 = v5;
    }

    __src[218] = v6;
LABEL_8:
    if (networkd_settings_get_BOOL(nw_setting_ultra_constrained_default_allow[0]))
    {
      if ((__src[215] & 1) == 0)
      {
        v7 = __src[215] | 1;
LABEL_13:
        __src[215] = v7;
      }
    }

    else if (__src[215])
    {
      v7 = __src[215] & 0xFE;
      goto LABEL_13;
    }

    return memcpy(a2, __src, 0x188uLL);
  }

  __break(1u);
  return result;
}

void networkd_settings_setup_notify_watch(void)
{
  v42 = *MEMORY[0x1E69E9840];
  pthread_once(&nw_settings_setup_atfork::pOnce, nw_settings_setup_atfork_inner);
  if (sNWIsBetweenForkAndExec != 1 || (sNWParentAllowedDispatch & 1) == 0)
  {
    if ((sNWDispatchAllowedNow & 1) == 0)
    {
      if ((_dispatch_is_fork_of_multithreaded_parent() & 1) == 0 && (_dispatch_is_multithreaded() & 1) != 0 || (getpid(), sandbox_check() == 1))
      {
        sNWDispatchAllowedNow = 1;
      }

      else if (!sNWDispatchAllowedNow)
      {
        return;
      }
    }

    if (!networkd_settings_setup_notify_watch(void)::queue)
    {
      pthread_mutex_lock(&sSettingsMutex);
      if (networkd_settings_setup_notify_watch(void)::queue)
      {
        goto LABEL_11;
      }

      v6 = nw_notification_name_settings;
      v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v8 = dispatch_queue_create(v6, v7);
      networkd_settings_setup_notify_watch(void)::queue = v8;
      if (!v8)
      {
        goto LABEL_11;
      }

      out_token = 0;
      v9 = notify_register_dispatch(nw_notification_name_settings, &out_token, v8, &__block_literal_global_93785);
      pthread_mutex_unlock(&sSettingsMutex);
      if (!v9)
      {
LABEL_12:
        if (networkd_settings_setup_notify_watch(void)::queue)
        {
          return;
        }

        v0 = pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init(v0);
        out_token = 136446466;
        v35 = "networkd_settings_setup_notify_watch";
        v36 = 2082;
        v37 = nw_notification_name_settings;
        v1 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v32 = 0;
        if (!__nwlog_fault(v1, &type, &v32))
        {
          goto LABEL_56;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v2 = pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init(v2);
          v3 = gLogObj;
          v4 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_56;
          }

          out_token = 136446466;
          v35 = "networkd_settings_setup_notify_watch";
          v36 = 2082;
          v37 = nw_notification_name_settings;
          v5 = "%{public}s dispatch_queue_create(%{public}s) failed";
        }

        else if (v32 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v15 = pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init(v15);
          v3 = gLogObj;
          v4 = type;
          v16 = os_log_type_enabled(gLogObj, type);
          if (backtrace_string)
          {
            if (v16)
            {
              out_token = 136446722;
              v35 = "networkd_settings_setup_notify_watch";
              v36 = 2082;
              v37 = nw_notification_name_settings;
              v38 = 2082;
              *v39 = backtrace_string;
              _os_log_impl(&dword_181A37000, v3, v4, "%{public}s dispatch_queue_create(%{public}s) failed, dumping backtrace:%{public}s", &out_token, 0x20u);
            }

            free(backtrace_string);
            goto LABEL_56;
          }

          if (!v16)
          {
LABEL_56:
            if (v1)
            {
              free(v1);
            }

            return;
          }

          out_token = 136446466;
          v35 = "networkd_settings_setup_notify_watch";
          v36 = 2082;
          v37 = nw_notification_name_settings;
          v5 = "%{public}s dispatch_queue_create(%{public}s) failed, no backtrace";
        }

        else
        {
          v17 = pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init(v17);
          v3 = gLogObj;
          v4 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_56;
          }

          out_token = 136446466;
          v35 = "networkd_settings_setup_notify_watch";
          v36 = 2082;
          v37 = nw_notification_name_settings;
          v5 = "%{public}s dispatch_queue_create(%{public}s) failed, backtrace limit exceeded";
        }

        _os_log_impl(&dword_181A37000, v3, v4, v5, &out_token, 0x16u);
        goto LABEL_56;
      }

      if (nw_settings_should_be_able_to_use_notify_apis(void)::onceToken != -1)
      {
        dispatch_once(&nw_settings_should_be_able_to_use_notify_apis(void)::onceToken, &__block_literal_global_26_93726);
      }

      v10 = nw_settings_should_be_able_to_use_notify_apis(void)::has_notify_apis;
      v11 = pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init(v11);
      v12 = gLogObj;
      if (v10 == 1 && v9 == 1000000)
      {
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEFAULT))
        {
          if (sNWIsBetweenForkAndExec)
          {
            v13 = " (forked)";
          }

          else
          {
            v13 = "";
          }

          out_token = 136446978;
          v35 = "networkd_settings_setup_notify_watch";
          v36 = 2082;
          v37 = nw_notification_name_settings;
          v38 = 1024;
          *v39 = 1000000;
          *&v39[4] = 2082;
          *&v39[6] = v13;
          _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEFAULT, "%{public}s [sandboxed: ok] notify_register_dispatch(%{public}s) [status %u]%{public}s failed", &out_token, 0x26u);
        }

LABEL_72:
        pthread_mutex_lock(&sSettingsMutex);
        networkd_settings_read_from_file();
LABEL_11:
        pthread_mutex_unlock(&sSettingsMutex);
        goto LABEL_12;
      }

      if (sNWIsBetweenForkAndExec)
      {
        v18 = " (forked)";
      }

      else
      {
        v18 = "";
      }

      out_token = 136446978;
      v35 = "networkd_settings_setup_notify_watch";
      v36 = 2082;
      v37 = nw_notification_name_settings;
      v38 = 1024;
      *v39 = v9;
      *&v39[4] = 2082;
      *&v39[6] = v18;
      v19 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v32 = 0;
      v20 = __nwlog_fault(v19, &type, &v32);
      if (v20)
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v22 = __nwlog_obj(v20, v21);
          v23 = type;
          if (!os_log_type_enabled(v22, type))
          {
            goto LABEL_70;
          }

          if (sNWIsBetweenForkAndExec)
          {
            v24 = " (forked)";
          }

          else
          {
            v24 = "";
          }

          out_token = 136446978;
          v35 = "networkd_settings_setup_notify_watch";
          v36 = 2082;
          v37 = nw_notification_name_settings;
          v38 = 1024;
          *v39 = v9;
          *&v39[4] = 2082;
          *&v39[6] = v24;
          v25 = "%{public}s notify_register_dispatch(%{public}s) [status %u]%{public}s failed";
          goto LABEL_69;
        }

        if (v32 != 1)
        {
          v22 = __nwlog_obj(v20, v21);
          v23 = type;
          if (!os_log_type_enabled(v22, type))
          {
            goto LABEL_70;
          }

          if (sNWIsBetweenForkAndExec)
          {
            v30 = " (forked)";
          }

          else
          {
            v30 = "";
          }

          out_token = 136446978;
          v35 = "networkd_settings_setup_notify_watch";
          v36 = 2082;
          v37 = nw_notification_name_settings;
          v38 = 1024;
          *v39 = v9;
          *&v39[4] = 2082;
          *&v39[6] = v30;
          v25 = "%{public}s notify_register_dispatch(%{public}s) [status %u]%{public}s failed, backtrace limit exceeded";
          goto LABEL_69;
        }

        v26 = __nw_create_backtrace_string();
        v22 = __nwlog_obj(v26, v27);
        v23 = type;
        v28 = os_log_type_enabled(v22, type);
        if (v26)
        {
          if (v28)
          {
            if (sNWIsBetweenForkAndExec)
            {
              v29 = " (forked)";
            }

            else
            {
              v29 = "";
            }

            out_token = 136447234;
            v35 = "networkd_settings_setup_notify_watch";
            v36 = 2082;
            v37 = nw_notification_name_settings;
            v38 = 1024;
            *v39 = v9;
            *&v39[4] = 2082;
            *&v39[6] = v29;
            v40 = 2082;
            v41 = v26;
            _os_log_impl(&dword_181A37000, v22, v23, "%{public}s notify_register_dispatch(%{public}s) [status %u]%{public}s failed, dumping backtrace:%{public}s", &out_token, 0x30u);
          }

          free(v26);
          goto LABEL_70;
        }

        if (v28)
        {
          if (sNWIsBetweenForkAndExec)
          {
            v31 = " (forked)";
          }

          else
          {
            v31 = "";
          }

          out_token = 136446978;
          v35 = "networkd_settings_setup_notify_watch";
          v36 = 2082;
          v37 = nw_notification_name_settings;
          v38 = 1024;
          *v39 = v9;
          *&v39[4] = 2082;
          *&v39[6] = v31;
          v25 = "%{public}s notify_register_dispatch(%{public}s) [status %u]%{public}s failed, no backtrace";
LABEL_69:
          _os_log_impl(&dword_181A37000, v22, v23, v25, &out_token, 0x26u);
        }
      }

LABEL_70:
      if (v19)
      {
        free(v19);
      }

      goto LABEL_72;
    }
  }
}

void nw_context_activate(void *a1)
{
  v101 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v67 = __nwlog_obj();
    *buf = 136446210;
    v94 = "nw_context_activate";
    v68 = _os_log_send_and_compose_impl();

    LOBYTE(v90) = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v68, &v90, &type))
    {
      if (v90 == 17)
      {
        v69 = __nwlog_obj();
        v70 = v90;
        if (os_log_type_enabled(v69, v90))
        {
          *buf = 136446210;
          v94 = "nw_context_activate";
          _os_log_impl(&dword_181A37000, v69, v70, "%{public}s called with null context", buf, 0xCu);
        }
      }

      else if (type == OS_LOG_TYPE_INFO)
      {
        backtrace_string = __nw_create_backtrace_string();
        v69 = __nwlog_obj();
        v80 = v90;
        v81 = os_log_type_enabled(v69, v90);
        if (backtrace_string)
        {
          if (v81)
          {
            *buf = 136446466;
            v94 = "nw_context_activate";
            v95 = 2082;
            v96 = backtrace_string;
            _os_log_impl(&dword_181A37000, v69, v80, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_173;
        }

        if (v81)
        {
          *buf = 136446210;
          v94 = "nw_context_activate";
          _os_log_impl(&dword_181A37000, v69, v80, "%{public}s called with null context, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v69 = __nwlog_obj();
        v82 = v90;
        if (os_log_type_enabled(v69, v90))
        {
          *buf = 136446210;
          v94 = "nw_context_activate";
          _os_log_impl(&dword_181A37000, v69, v82, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_173:
    if (v68)
    {
      free(v68);
    }

    goto LABEL_144;
  }

  os_unfair_lock_lock(v3 + 22);
  v90 = 0;
  pthread_threadid_np(0, &v90);
  if (v4[32]._os_unfair_lock_opaque != 4)
  {
    goto LABEL_3;
  }

  v1 = 0;
  atomic_compare_exchange_strong(&v4[30], &v1, v90);
  if (!v1)
  {
    goto LABEL_3;
  }

  v71 = __nwlog_obj();
  v89 = 136446722;
  *buf = 136446722;
  v2 = "nw_context_activate";
  v94 = "nw_context_activate";
  v95 = 2048;
  v96 = v90;
  v97 = 2048;
  v98 = v1;
  v19 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v91 = 0;
  if (!__nwlog_fault(v19, &type, &v91))
  {
    goto LABEL_195;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v31 = __nwlog_obj();
    v72 = type;
    if (os_log_type_enabled(v31, type))
    {
      *buf = 136446722;
      v94 = "nw_context_activate";
      v95 = 2048;
      v96 = v90;
      v97 = 2048;
      v98 = v1;
      _os_log_impl(&dword_181A37000, v31, v72, "%{public}s Entering call, current TID=%llu, inline TID is already set to %llu", buf, 0x20u);
    }
  }

  else
  {
    if (v91 == 1)
    {
      v83 = __nw_create_backtrace_string();
      v31 = __nwlog_obj();
      LOBYTE(v32) = type;
      should_abort = os_log_type_enabled(v31, type);
      if (v83)
      {
        if (should_abort)
        {
          *buf = 136446978;
          v94 = "nw_context_activate";
          v95 = 2048;
          v96 = v90;
          v97 = 2048;
          v98 = v1;
          v99 = 2082;
          v100 = v83;
          _os_log_impl(&dword_181A37000, v31, v32, "%{public}s Entering call, current TID=%llu, inline TID is already set to %llu, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v83);
        goto LABEL_195;
      }

      goto LABEL_192;
    }

    v31 = __nwlog_obj();
    v87 = type;
    if (os_log_type_enabled(v31, type))
    {
      *buf = 136446722;
      v94 = "nw_context_activate";
      v95 = 2048;
      v96 = v90;
      v97 = 2048;
      v98 = v1;
      _os_log_impl(&dword_181A37000, v31, v87, "%{public}s Entering call, current TID=%llu, inline TID is already set to %llu, backtrace limit exceeded", buf, 0x20u);
    }
  }

  while (1)
  {

LABEL_195:
    if (v19)
    {
      free(v19);
    }

LABEL_3:
    os_unfair_lock_opaque = v4[38]._os_unfair_lock_opaque;
    if ((os_unfair_lock_opaque & 0x40) != 0)
    {
      break;
    }

    v7 = &v4[2];
    v6 = *&v4[2]._os_unfair_lock_opaque;
    if (v6)
    {
      goto LABEL_12;
    }

    if ((v4[38]._os_unfair_lock_opaque & 4) != 0)
    {
      inactive = dispatch_workloop_create_inactive("com.apple.network.connections");
      v9 = *v7;
      *v7 = inactive;

      goto LABEL_11;
    }

    if ((v4[38]._os_unfair_lock_opaque & 1) == 0)
    {
      if (nw_context_copy_implicit_context::onceToken[0] != -1)
      {
        dispatch_once(nw_context_copy_implicit_context::onceToken, &__block_literal_global_18);
      }

      objc_storeStrong(&v4[2], *(nw_context_copy_implicit_context::implicit_context + 8));
LABEL_11:
      v6 = *v7;
      if (*v7)
      {
        goto LABEL_12;
      }

      goto LABEL_65;
    }

    v27 = v4[32]._os_unfair_lock_opaque;
    if (v27 <= 2)
    {
      if (v27 != 1 && v27 != 2)
      {
        goto LABEL_79;
      }
    }

    else if (v27 != 3)
    {
      if (v27 == 4)
      {
        *&v4[2]._os_unfair_lock_opaque = 0;
        LOBYTE(v4[38]._os_unfair_lock_opaque) = os_unfair_lock_opaque | 8;
        goto LABEL_13;
      }

      if (v27 != 5)
      {
LABEL_79:
        v44 = dispatch_workloop_create_inactive(*&v4[4]._os_unfair_lock_opaque);
        v45 = *&v4[2]._os_unfair_lock_opaque;
        *&v4[2]._os_unfair_lock_opaque = v44;

        goto LABEL_11;
      }
    }

    v35 = dispatch_workloop_create_inactive(*&v4[4]._os_unfair_lock_opaque);
    v36 = *&v4[2]._os_unfair_lock_opaque;
    *&v4[2]._os_unfair_lock_opaque = v35;

    dispatch_workloop_set_scheduler_priority();
    dispatch_workloop_set_cpupercent();
    v6 = *v7;
    if (*v7)
    {
      goto LABEL_12;
    }

LABEL_65:
    if ((v4[38]._os_unfair_lock_opaque & 8) != 0)
    {
      goto LABEL_13;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v37 = gLogObj;
    v89 = 136446210;
    *buf = 136446210;
    v2 = "nw_context_activate";
    v94 = "nw_context_activate";
    v38 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v91 = 0;
    if (__nwlog_fault(v38, &type, &v91))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v39 = __nwlog_obj();
        v40 = type;
        if (os_log_type_enabled(v39, type))
        {
          *buf = 136446210;
          v94 = "nw_context_activate";
          _os_log_impl(&dword_181A37000, v39, v40, "%{public}s dispatch_workloop_create failed", buf, 0xCu);
        }

LABEL_85:

        goto LABEL_86;
      }

      if (v91 != 1)
      {
        v39 = __nwlog_obj();
        v43 = type;
        if (os_log_type_enabled(v39, type))
        {
          *buf = 136446210;
          v94 = "nw_context_activate";
          _os_log_impl(&dword_181A37000, v39, v43, "%{public}s dispatch_workloop_create failed, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_85;
      }

      v41 = __nw_create_backtrace_string();
      v39 = __nwlog_obj();
      v1 = type;
      v42 = os_log_type_enabled(v39, type);
      if (!v41)
      {
        if (v42)
        {
          *buf = 136446210;
          v94 = "nw_context_activate";
          _os_log_impl(&dword_181A37000, v39, v1, "%{public}s dispatch_workloop_create failed, no backtrace", buf, 0xCu);
        }

        goto LABEL_85;
      }

      if (v42)
      {
        *buf = 136446466;
        v94 = "nw_context_activate";
        v95 = 2082;
        v96 = v41;
        _os_log_impl(&dword_181A37000, v39, v1, "%{public}s dispatch_workloop_create failed, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v41);
    }

LABEL_86:
    if (v38)
    {
      free(v38);
    }

    v6 = *v7;
    if (*v7)
    {
LABEL_12:
      dispatch_activate(v6);
    }

LABEL_13:
    LOBYTE(os_unfair_lock_opaque_low) = v4[38]._os_unfair_lock_opaque;
    if ((os_unfair_lock_opaque_low & 0x24) == 0 && (os_unfair_lock_opaque_low & 3) != 0)
    {
      v11 = [[NWConcrete_nw_context alloc] initWithIdentifier:?];
      v13 = &v4[10];
      v12 = *&v4[10]._os_unfair_lock_opaque;
      *&v4[10]._os_unfair_lock_opaque = v11;

      LOBYTE((*v13)[38]._os_unfair_lock_opaque) = (*v13)[38]._os_unfair_lock_opaque & 0xFD | v4[38]._os_unfair_lock_opaque & 2;
      LOBYTE((*v13)[38]._os_unfair_lock_opaque) = (*v13)[38]._os_unfair_lock_opaque & 0xFE | v4[38]._os_unfair_lock_opaque & 1;
      (*v13)[33]._os_unfair_lock_opaque = v4[33]._os_unfair_lock_opaque;
      LOBYTE((*v13)[38]._os_unfair_lock_opaque) = v4[38]._os_unfair_lock_opaque & 0x80 | (*v13)[38]._os_unfair_lock_opaque & 0x7F;
      objc_storeStrong((*&v4[10]._os_unfair_lock_opaque + 48), *&v4[12]._os_unfair_lock_opaque);
      objc_storeStrong((*&v4[10]._os_unfair_lock_opaque + 56), *&v4[14]._os_unfair_lock_opaque);
      (*v13)[32]._os_unfair_lock_opaque = v4[32]._os_unfair_lock_opaque;
      (*v13)[23]._os_unfair_lock_opaque = v4[23]._os_unfair_lock_opaque;
      (*v13)[24]._os_unfair_lock_opaque = v4[24]._os_unfair_lock_opaque;
      (*v13)[25]._os_unfair_lock_opaque = v4[25]._os_unfair_lock_opaque;
      LOBYTE((*v13)[38]._os_unfair_lock_opaque) |= 0x20u;
      objc_storeStrong((*&v4[10]._os_unfair_lock_opaque + 8), *&v4[2]._os_unfair_lock_opaque);
      objc_storeStrong((*&v4[10]._os_unfair_lock_opaque + 64), *&v4[16]._os_unfair_lock_opaque);
      objc_storeStrong((*&v4[10]._os_unfair_lock_opaque + 72), *&v4[18]._os_unfair_lock_opaque);
      v14 = _Block_copy(*&v4[20]._os_unfair_lock_opaque);
      v15 = *(*&v4[10]._os_unfair_lock_opaque + 80);
      *&(*v13)[20]._os_unfair_lock_opaque = v14;

      BYTE1((*v13)[38]._os_unfair_lock_opaque) = BYTE1((*v13)[38]._os_unfair_lock_opaque) & 0xFE | BYTE1(v4[38]._os_unfair_lock_opaque) & 1;
      v16 = _Block_copy(*&v4[34]._os_unfair_lock_opaque);
      v17 = *(*&v4[10]._os_unfair_lock_opaque + 136);
      *&(*v13)[34]._os_unfair_lock_opaque = v16;

      nw_context_activate(*&v4[10]._os_unfair_lock_opaque);
      goto LABEL_141;
    }

    if ((v4[38]._os_unfair_lock_opaque & 4) == 0)
    {
      LOBYTE(v18) = 0;
      if ((v4[38]._os_unfair_lock_opaque & 0x20) == 0 || (os_unfair_lock_opaque_low & 3) == 0)
      {
        goto LABEL_96;
      }
    }

    v19 = v4;
    if (*(v19 + 3))
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v20 = gLogObj;
      v89 = 136446210;
      *buf = 136446210;
      v2 = "nw_context_initialize_cache";
      v94 = "nw_context_initialize_cache";
      v1 = 16;
      v21 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v91 = 0;
      if (!__nwlog_fault(v21, &type, &v91))
      {
        goto LABEL_93;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v22 = gLogObj;
        v23 = type;
        if (os_log_type_enabled(v22, type))
        {
          *buf = 136446210;
          v94 = "nw_context_initialize_cache";
          _os_log_impl(&dword_181A37000, v22, v23, "%{public}s Cannot initialize cache twice", buf, 0xCu);
        }
      }

      else if (v91 == 1)
      {
        v25 = __nw_create_backtrace_string();
        v22 = __nwlog_obj();
        v1 = type;
        v26 = os_log_type_enabled(v22, type);
        if (v25)
        {
          if (v26)
          {
            *buf = 136446466;
            v94 = "nw_context_initialize_cache";
            v95 = 2082;
            v96 = v25;
            _os_log_impl(&dword_181A37000, v22, v1, "%{public}s Cannot initialize cache twice, dumping backtrace:%{public}s", buf, 0x16u);
          }

          goto LABEL_32;
        }

        if (v26)
        {
          *buf = 136446210;
          v94 = "nw_context_initialize_cache";
          _os_log_impl(&dword_181A37000, v22, v1, "%{public}s Cannot initialize cache twice, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v22 = gLogObj;
        v28 = type;
        if (os_log_type_enabled(v22, type))
        {
          *buf = 136446210;
          v94 = "nw_context_initialize_cache";
          _os_log_impl(&dword_181A37000, v22, v28, "%{public}s Cannot initialize cache twice, backtrace limit exceeded", buf, 0xCu);
        }
      }

      goto LABEL_92;
    }

    if ((v4[38]._os_unfair_lock_opaque & 7) != 0)
    {
      v24 = malloc_type_calloc(1uLL, 0x48uLL, 0xD661BAADuLL);
      if (v24)
      {
        v24[8] = 0;
        *(v24 + 2) = 0u;
        *(v24 + 3) = 0u;
        *v24 = 0u;
        *(v24 + 1) = 0u;
      }

      else
      {
        v31 = __nwlog_obj();
        os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
        *buf = 136446722;
        v1 = "nw_context_initialize_cache";
        v94 = "nw_context_initialize_cache";
        v95 = 2048;
        v96 = 1;
        v97 = 2048;
        v98 = 72;
        v32 = _os_log_send_and_compose_impl();

        should_abort = __nwlog_should_abort(v32);
        if (should_abort)
        {
          goto LABEL_191;
        }

        free(v32);
        MEMORY[0x40] = 0;
        MEMORY[0x30] = 0u;
        MEMORY[0x20] = 0u;
        MEMORY[0x10] = 0u;
        MEMORY[0] = 0u;
        v32 = __nwlog_obj();
        os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
        *buf = 136446210;
        v94 = "nw_context_initialize_cache";
        v31 = _os_log_send_and_compose_impl();

        should_abort = __nwlog_should_abort(v31);
        if (should_abort)
        {
          goto LABEL_191;
        }

        free(v31);
        v24 = 0;
      }

      *(v19 + 3) = v24;
      *v24 = 0;
      v24[1] = v24;
      v24[2] = 0;
      v24[3] = v24 + 2;
      v1 = nw_context_endpoint_table_release;
      *(*(v19 + 3) + 32) = nw_hash_table_create_internal(0x11u, 0, nw_context_endpoint_table_get_key, nw_context_endpoint_key_hash, nw_context_endpoint_table_matches_key, nw_context_endpoint_table_release, 0);
      *(*(v19 + 3) + 40) = nw_hash_table_create_internal(0x11u, 0, nw_context_endpoint_table_get_key, nw_context_endpoint_key_hash, nw_context_endpoint_table_matches_key, nw_context_endpoint_table_release, 0);
      *(*(v19 + 3) + 48) = nw_hash_table_create_internal(0x11u, 0, nw_context_endpoint_table_get_key, nw_context_endpoint_key_hash, nw_context_endpoint_table_matches_key, nw_context_endpoint_table_release, 0);
      goto LABEL_95;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v29 = gLogObj;
    v89 = 136446210;
    *buf = 136446210;
    v2 = "nw_context_initialize_cache";
    v94 = "nw_context_initialize_cache";
    v21 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v91 = 0;
    if (__nwlog_fault(v21, &type, &v91))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v22 = __nwlog_obj();
        v30 = type;
        if (os_log_type_enabled(v22, type))
        {
          *buf = 136446210;
          v94 = "nw_context_initialize_cache";
          _os_log_impl(&dword_181A37000, v22, v30, "%{public}s Cannot initialize cache for non-isolated context", buf, 0xCu);
        }
      }

      else if (v91 == 1)
      {
        v25 = __nw_create_backtrace_string();
        v22 = __nwlog_obj();
        v1 = type;
        v34 = os_log_type_enabled(v22, type);
        if (v25)
        {
          if (v34)
          {
            *buf = 136446466;
            v94 = "nw_context_initialize_cache";
            v95 = 2082;
            v96 = v25;
            _os_log_impl(&dword_181A37000, v22, v1, "%{public}s Cannot initialize cache for non-isolated context, dumping backtrace:%{public}s", buf, 0x16u);
          }

LABEL_32:

          free(v25);
          if (!v21)
          {
            goto LABEL_95;
          }

LABEL_94:
          free(v21);
          goto LABEL_95;
        }

        if (v34)
        {
          *buf = 136446210;
          v94 = "nw_context_initialize_cache";
          _os_log_impl(&dword_181A37000, v22, v1, "%{public}s Cannot initialize cache for non-isolated context, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v22 = __nwlog_obj();
        v46 = type;
        if (os_log_type_enabled(v22, type))
        {
          *buf = 136446210;
          v94 = "nw_context_initialize_cache";
          _os_log_impl(&dword_181A37000, v22, v46, "%{public}s Cannot initialize cache for non-isolated context, backtrace limit exceeded", buf, 0xCu);
        }
      }

LABEL_92:
    }

LABEL_93:
    if (v21)
    {
      goto LABEL_94;
    }

LABEL_95:

    os_unfair_lock_opaque_low = LOBYTE(v4[38]._os_unfair_lock_opaque);
    v18 = (os_unfair_lock_opaque_low >> 2) & 1;
LABEL_96:
    if ((v18 & 1) == 0 && (os_unfair_lock_opaque_low & 0x21) != 0x21)
    {
      goto LABEL_141;
    }

    v19 = v4;
    if (*(v19 + 4))
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v47 = gLogObj;
      *buf = 136446210;
      v94 = "nw_context_initialize_globals";
      v48 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v91 = 0;
      if (__nwlog_fault(v48, &type, &v91))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v49 = gLogObj;
          v50 = type;
          if (os_log_type_enabled(v49, type))
          {
            *buf = 136446210;
            v94 = "nw_context_initialize_globals";
            _os_log_impl(&dword_181A37000, v49, v50, "%{public}s Cannot initialize globals twice", buf, 0xCu);
          }

          goto LABEL_137;
        }

        if (v91 == 1)
        {
          v58 = __nw_create_backtrace_string();
          v49 = __nwlog_obj();
          v59 = type;
          v60 = os_log_type_enabled(v49, type);
          if (v58)
          {
            if (v60)
            {
              *buf = 136446466;
              v94 = "nw_context_initialize_globals";
              v95 = 2082;
              v96 = v58;
              _os_log_impl(&dword_181A37000, v49, v59, "%{public}s Cannot initialize globals twice, dumping backtrace:%{public}s", buf, 0x16u);
            }

            goto LABEL_114;
          }

          if (v60)
          {
            *buf = 136446210;
            v94 = "nw_context_initialize_globals";
            _os_log_impl(&dword_181A37000, v49, v59, "%{public}s Cannot initialize globals twice, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          v49 = __nwlog_obj();
          v61 = type;
          if (os_log_type_enabled(v49, type))
          {
            *buf = 136446210;
            v94 = "nw_context_initialize_globals";
            _os_log_impl(&dword_181A37000, v49, v61, "%{public}s Cannot initialize globals twice, backtrace limit exceeded", buf, 0xCu);
          }
        }

LABEL_137:
      }

LABEL_138:
      if (v48)
      {
        goto LABEL_139;
      }

      goto LABEL_140;
    }

    if ((v4[38]._os_unfair_lock_opaque & 5) == 0)
    {
      v62 = __nwlog_obj();
      *buf = 136446210;
      v94 = "nw_context_initialize_globals";
      v48 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v91 = 0;
      if (!__nwlog_fault(v48, &type, &v91))
      {
        goto LABEL_138;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v49 = __nwlog_obj();
        v63 = type;
        if (os_log_type_enabled(v49, type))
        {
          *buf = 136446210;
          v94 = "nw_context_initialize_globals";
          _os_log_impl(&dword_181A37000, v49, v63, "%{public}s Cannot initialize globals for non-isolated context", buf, 0xCu);
        }

        goto LABEL_137;
      }

      if (v91 != 1)
      {
        v49 = __nwlog_obj();
        v66 = type;
        if (os_log_type_enabled(v49, type))
        {
          *buf = 136446210;
          v94 = "nw_context_initialize_globals";
          _os_log_impl(&dword_181A37000, v49, v66, "%{public}s Cannot initialize globals for non-isolated context, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_137;
      }

      v58 = __nw_create_backtrace_string();
      v49 = __nwlog_obj();
      v64 = type;
      v65 = os_log_type_enabled(v49, type);
      if (!v58)
      {
        if (v65)
        {
          *buf = 136446210;
          v94 = "nw_context_initialize_globals";
          _os_log_impl(&dword_181A37000, v49, v64, "%{public}s Cannot initialize globals for non-isolated context, no backtrace", buf, 0xCu);
        }

        goto LABEL_137;
      }

      if (v65)
      {
        *buf = 136446466;
        v94 = "nw_context_initialize_globals";
        v95 = 2082;
        v96 = v58;
        _os_log_impl(&dword_181A37000, v49, v64, "%{public}s Cannot initialize globals for non-isolated context, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_114:

      free(v58);
      if (v48)
      {
LABEL_139:
        free(v48);
      }

LABEL_140:

LABEL_141:
      os_unfair_lock_opaque = LOBYTE(v4[38]._os_unfair_lock_opaque) | 0x40;
      LOBYTE(v4[38]._os_unfair_lock_opaque) = os_unfair_lock_opaque;
      break;
    }

    v51 = malloc_type_calloc(1uLL, 0xC4uLL, 0x215D81E4uLL);
    if (v51)
    {
      goto LABEL_108;
    }

    v31 = __nwlog_obj();
    os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
    *buf = 136446722;
    v94 = "nw_context_initialize_globals";
    v95 = 2048;
    v96 = 1;
    v97 = 2048;
    v98 = 196;
    v32 = _os_log_send_and_compose_impl();

    should_abort = __nwlog_should_abort(v32);
    if (!should_abort)
    {
      free(v32);
      v51 = 0;
LABEL_108:
      v51[48] = 0;
      *(v51 + 10) = 0u;
      *(v51 + 11) = 0u;
      *(v51 + 8) = 0u;
      *(v51 + 9) = 0u;
      *(v51 + 6) = 0u;
      *(v51 + 7) = 0u;
      *(v51 + 4) = 0u;
      *(v51 + 5) = 0u;
      *(v51 + 2) = 0u;
      *(v51 + 3) = 0u;
      *v51 = 0u;
      *(v51 + 1) = 0u;
      *(v19 + 4) = v51;
      *(v51 + 2) = v51 + 2;
      *(*(v19 + 4) + 52) = nw_hash_table_create_internal(0x11u, 8, nw_context_object_get_key, nw_context_object_key_hash, nw_context_object_matches_key, nw_context_object_release, 0);
      *(*(v19 + 4) + 24) = nw_hash_table_create_internal(0x11u, 0, nw_context_timer_object_get_key, nw_context_timer_object_key_hash, nw_context_timer_object_matches_key, nw_context_timer_object_release, 0);
      if ((v4[38]._os_unfair_lock_opaque & 8) != 0)
      {
        v52 = _nw_array_create();
        v53 = *(v19 + 4);
        v54 = *(v53 + 108);
        *(v53 + 108) = v52;

        v55 = _nw_array_create();
        v56 = *(v19 + 4);
        v57 = *(v56 + 124);
        *(v56 + 124) = v55;
      }

      goto LABEL_140;
    }

LABEL_191:
    __break(1u);
LABEL_192:
    if (should_abort)
    {
      *buf = v89;
      v94 = v2;
      v95 = 2048;
      v96 = v90;
      v97 = 2048;
      v98 = v1;
      _os_log_impl(&dword_181A37000, v31, v32, "%{public}s Entering call, current TID=%llu, inline TID is already set to %llu, no backtrace", buf, 0x20u);
    }
  }

  if ((os_unfair_lock_opaque & 8) == 0)
  {
    goto LABEL_143;
  }

  v73 = v90;
  v74 = v90;
  atomic_compare_exchange_strong(&v4[30], &v74, 0);
  if (v74 == v73)
  {
    goto LABEL_143;
  }

  v75 = __nwlog_obj();
  *buf = 136446722;
  v94 = "nw_context_activate";
  v95 = 2048;
  v96 = v90;
  v97 = 2048;
  v98 = v74;
  v76 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v91 = 0;
  if (!__nwlog_fault(v76, &type, &v91))
  {
    goto LABEL_200;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v77 = __nwlog_obj();
    v78 = type;
    if (os_log_type_enabled(v77, type))
    {
      *buf = 136446722;
      v94 = "nw_context_activate";
      v95 = 2048;
      v96 = v90;
      v97 = 2048;
      v98 = v74;
      _os_log_impl(&dword_181A37000, v77, v78, "%{public}s Exiting call, expected inline TID to be %llu but got %llu", buf, 0x20u);
    }

    goto LABEL_199;
  }

  if (v91 != 1)
  {
    v77 = __nwlog_obj();
    v88 = type;
    if (os_log_type_enabled(v77, type))
    {
      *buf = 136446722;
      v94 = "nw_context_activate";
      v95 = 2048;
      v96 = v90;
      v97 = 2048;
      v98 = v74;
      _os_log_impl(&dword_181A37000, v77, v88, "%{public}s Exiting call, expected inline TID to be %llu but got %llu, backtrace limit exceeded", buf, 0x20u);
    }

    goto LABEL_199;
  }

  v84 = __nw_create_backtrace_string();
  v77 = __nwlog_obj();
  v85 = type;
  v86 = os_log_type_enabled(v77, type);
  if (!v84)
  {
    if (v86)
    {
      *buf = 136446722;
      v94 = "nw_context_activate";
      v95 = 2048;
      v96 = v90;
      v97 = 2048;
      v98 = v74;
      _os_log_impl(&dword_181A37000, v77, v85, "%{public}s Exiting call, expected inline TID to be %llu but got %llu, no backtrace", buf, 0x20u);
    }

LABEL_199:

    goto LABEL_200;
  }

  if (v86)
  {
    *buf = 136446978;
    v94 = "nw_context_activate";
    v95 = 2048;
    v96 = v90;
    v97 = 2048;
    v98 = v74;
    v99 = 2082;
    v100 = v84;
    _os_log_impl(&dword_181A37000, v77, v85, "%{public}s Exiting call, expected inline TID to be %llu but got %llu, dumping backtrace:%{public}s", buf, 0x2Au);
  }

  free(v84);
LABEL_200:
  if (v76)
  {
    free(v76);
  }

LABEL_143:
  os_unfair_lock_unlock(v4 + 22);
LABEL_144:
}

void __nw_context_copy_implicit_context_block_invoke()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = [[NWConcrete_nw_context alloc] initWithIdentifier:?];
  v1 = nw_context_copy_implicit_context::implicit_context;
  nw_context_copy_implicit_context::implicit_context = v0;

  *(nw_context_copy_implicit_context::implicit_context + 152) |= 4u;
  if (os_variant_has_internal_content() && getenv("DEFAULT_NETWORK_PRIVACY_LEVEL"))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v2 = gLogObj;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = 136446210;
      v4 = "nw_context_copy_implicit_context_block_invoke";
      _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_ERROR, "%{public}s DEFAULT_NETWORK_PRIVACY_LEVEL is unsupported", &v3, 0xCu);
    }
  }

  nw_context_activate(nw_context_copy_implicit_context::implicit_context);
}

void networkd_settings_read_from_file(void)
{
  v79 = *MEMORY[0x1E69E9840];
  if (sCachedSettings)
  {
    xpc_release(sCachedSettings);
    sCachedSettings = 0;
  }

  v0 = open(nw_file_path_settings, 0);
  if (v0 != -1)
  {
    v1 = v0;
    memset(&v78, 0, sizeof(v78));
    if (fstat(v0, &v78))
    {
      v2 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
      v3 = pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init(v3);
      *buf = 136446466;
      v75 = "networkd_settings_read_from_file";
      v76 = 1024;
      *v77 = v2;
      v4 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v72 = 0;
      if (__nwlog_fault(v4, &type, &v72))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v5 = pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init(v5);
          v6 = gLogObj;
          v7 = type;
          if (os_log_type_enabled(gLogObj, type))
          {
            *buf = 136446466;
            v75 = "networkd_settings_read_from_file";
            v76 = 1024;
            *v77 = v2;
            v8 = "%{public}s networkd settings fstat failed %{darwin.errno}d";
LABEL_45:
            _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0x12u);
          }
        }

        else if (v72 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v21 = pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init(v21);
          v6 = gLogObj;
          v7 = type;
          v22 = os_log_type_enabled(gLogObj, type);
          if (backtrace_string)
          {
            if (v22)
            {
              *buf = 136446722;
              v75 = "networkd_settings_read_from_file";
              v76 = 1024;
              *v77 = v2;
              *&v77[4] = 2082;
              *&v77[6] = backtrace_string;
              _os_log_impl(&dword_181A37000, v6, v7, "%{public}s networkd settings fstat failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
            }

            free(backtrace_string);
            goto LABEL_46;
          }

          if (v22)
          {
            *buf = 136446466;
            v75 = "networkd_settings_read_from_file";
            v76 = 1024;
            *v77 = v2;
            v8 = "%{public}s networkd settings fstat failed %{darwin.errno}d, no backtrace";
            goto LABEL_45;
          }
        }

        else
        {
          v29 = pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init(v29);
          v6 = gLogObj;
          v7 = type;
          if (os_log_type_enabled(gLogObj, type))
          {
            *buf = 136446466;
            v75 = "networkd_settings_read_from_file";
            v76 = 1024;
            *v77 = v2;
            v8 = "%{public}s networkd settings fstat failed %{darwin.errno}d, backtrace limit exceeded";
            goto LABEL_45;
          }
        }
      }

LABEL_46:
      if (v4)
      {
        free(v4);
      }

      st_size = 0;
      goto LABEL_49;
    }

    st_size = v78.st_size;
    if ((v78.st_size - 1) > 0xFFFE)
    {
LABEL_49:
      v45 = pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init(v45);
      v46 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v75 = "networkd_settings_read_from_file";
        v76 = 2048;
        *v77 = st_size;
        _os_log_impl(&dword_181A37000, v46, OS_LOG_TYPE_ERROR, "%{public}s networkd settings file length %lld is invalid", buf, 0x16u);
      }

      goto LABEL_103;
    }

    v13 = malloc_type_malloc(v78.st_size, 0xEAB00DD2uLL);
    if (v13)
    {
      v14 = v13;
      v15 = pread(v1, v13, st_size, 0);
      if (v15 == st_size)
      {
        v17 = xpc_create_from_plist();
        sCachedSettings = v17;
        v18 = pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init(v18);
        v19 = gLogObj;
        if (v17)
        {
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446210;
            v75 = "networkd_settings_read_from_file";
            _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_DEFAULT, "%{public}s initialized networkd settings by reading plist directly", buf, 0xCu);
          }

          goto LABEL_102;
        }

        *buf = 136446210;
        v75 = "networkd_settings_read_from_file";
        v51 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v72 = 0;
        v52 = __nwlog_fault(v51, &type, &v72);
        if (v52)
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            v54 = __nwlog_obj(v52, v53);
            v55 = type;
            if (!os_log_type_enabled(v54, type))
            {
              goto LABEL_100;
            }

            *buf = 136446210;
            v75 = "networkd_settings_read_from_file";
            v56 = "%{public}s xpc_create_from_plist failed";
          }

          else if (v72 == 1)
          {
            v62 = __nw_create_backtrace_string();
            v54 = __nwlog_obj(v62, v63);
            v55 = type;
            v64 = os_log_type_enabled(v54, type);
            if (v62)
            {
              if (v64)
              {
                *buf = 136446466;
                v75 = "networkd_settings_read_from_file";
                v76 = 2082;
                *v77 = v62;
                _os_log_impl(&dword_181A37000, v54, v55, "%{public}s xpc_create_from_plist failed, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v62);
              if (!v51)
              {
                goto LABEL_102;
              }

              goto LABEL_101;
            }

            if (!v64)
            {
              goto LABEL_100;
            }

            *buf = 136446210;
            v75 = "networkd_settings_read_from_file";
            v56 = "%{public}s xpc_create_from_plist failed, no backtrace";
          }

          else
          {
            v54 = __nwlog_obj(v52, v53);
            v55 = type;
            if (!os_log_type_enabled(v54, type))
            {
              goto LABEL_100;
            }

            *buf = 136446210;
            v75 = "networkd_settings_read_from_file";
            v56 = "%{public}s xpc_create_from_plist failed, backtrace limit exceeded";
          }

          v68 = v54;
          v69 = v55;
          v70 = 12;
          goto LABEL_99;
        }
      }

      else
      {
        if ((v15 & 0x8000000000000000) == 0)
        {
          v42 = v15;
          v43 = pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init(v43);
          v44 = gLogObj;
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446722;
            v75 = "networkd_settings_read_from_file";
            v76 = 2048;
            *v77 = v42;
            *&v77[8] = 2048;
            *&v77[10] = st_size;
            _os_log_impl(&dword_181A37000, v44, OS_LOG_TYPE_ERROR, "%{public}s networkd settings file read invalid length %lld != fstat length %lld", buf, 0x20u);
          }

          goto LABEL_102;
        }

        v57 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
        __nwlog_obj(v15, v16);
        *buf = 136446466;
        v75 = "networkd_settings_read_from_file";
        v76 = 1024;
        *v77 = v57;
        v51 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v72 = 0;
        v58 = __nwlog_fault(v51, &type, &v72);
        if (v58)
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            v60 = __nwlog_obj(v58, v59);
            v61 = type;
            if (!os_log_type_enabled(v60, type))
            {
              goto LABEL_100;
            }

            *buf = 136446466;
            v75 = "networkd_settings_read_from_file";
            v76 = 1024;
            *v77 = v57;
            v56 = "%{public}s networkd settings file pread failed %{darwin.errno}d";
          }

          else if (v72 == 1)
          {
            v65 = __nw_create_backtrace_string();
            v60 = __nwlog_obj(v65, v66);
            v61 = type;
            v67 = os_log_type_enabled(v60, type);
            if (v65)
            {
              if (v67)
              {
                *buf = 136446722;
                v75 = "networkd_settings_read_from_file";
                v76 = 1024;
                *v77 = v57;
                *&v77[4] = 2082;
                *&v77[6] = v65;
                _os_log_impl(&dword_181A37000, v60, v61, "%{public}s networkd settings file pread failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
              }

              free(v65);
              goto LABEL_100;
            }

            if (!v67)
            {
              goto LABEL_100;
            }

            *buf = 136446466;
            v75 = "networkd_settings_read_from_file";
            v76 = 1024;
            *v77 = v57;
            v56 = "%{public}s networkd settings file pread failed %{darwin.errno}d, no backtrace";
          }

          else
          {
            v60 = __nwlog_obj(v58, v59);
            v61 = type;
            if (!os_log_type_enabled(v60, type))
            {
              goto LABEL_100;
            }

            *buf = 136446466;
            v75 = "networkd_settings_read_from_file";
            v76 = 1024;
            *v77 = v57;
            v56 = "%{public}s networkd settings file pread failed %{darwin.errno}d, backtrace limit exceeded";
          }

          v68 = v60;
          v69 = v61;
          v70 = 18;
LABEL_99:
          _os_log_impl(&dword_181A37000, v68, v69, v56, buf, v70);
        }
      }

LABEL_100:
      if (v51)
      {
LABEL_101:
        free(v51);
      }

LABEL_102:
      free(v14);
      goto LABEL_103;
    }

    v33 = pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init(v33);
    os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
    *buf = 136446210;
    v75 = "networkd_settings_read_from_file";
    v34 = _os_log_send_and_compose_impl();
    if (__nwlog_should_abort(v34))
    {
      __break(1u);
      return;
    }

    free(v34);
    v35 = pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init(v35);
    *buf = 136446466;
    v75 = "networkd_settings_read_from_file";
    v76 = 2048;
    *v77 = st_size;
    v14 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v72 = 0;
    v36 = __nwlog_fault(v14, &type, &v72);
    if (v36)
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v38 = pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init(v38);
        v39 = gLogObj;
        v40 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_87;
        }

        *buf = 136446466;
        v75 = "networkd_settings_read_from_file";
        v76 = 2048;
        *v77 = st_size;
        v41 = "%{public}s malloc(%lld) failed";
LABEL_86:
        _os_log_impl(&dword_181A37000, v39, v40, v41, buf, 0x16u);
        goto LABEL_87;
      }

      if (v72 != 1)
      {
        v39 = __nwlog_obj(v36, v37);
        v40 = type;
        if (!os_log_type_enabled(v39, type))
        {
          goto LABEL_87;
        }

        *buf = 136446466;
        v75 = "networkd_settings_read_from_file";
        v76 = 2048;
        *v77 = st_size;
        v41 = "%{public}s malloc(%lld) failed, backtrace limit exceeded";
        goto LABEL_86;
      }

      v48 = __nw_create_backtrace_string();
      v39 = __nwlog_obj(v48, v49);
      v40 = type;
      v50 = os_log_type_enabled(v39, type);
      if (!v48)
      {
        if (!v50)
        {
          goto LABEL_87;
        }

        *buf = 136446466;
        v75 = "networkd_settings_read_from_file";
        v76 = 2048;
        *v77 = st_size;
        v41 = "%{public}s malloc(%lld) failed, no backtrace";
        goto LABEL_86;
      }

      if (v50)
      {
        *buf = 136446722;
        v75 = "networkd_settings_read_from_file";
        v76 = 2048;
        *v77 = st_size;
        *&v77[8] = 2082;
        *&v77[10] = v48;
        _os_log_impl(&dword_181A37000, v39, v40, "%{public}s malloc(%lld) failed, dumping backtrace:%{public}s", buf, 0x20u);
      }

      free(v48);
    }

LABEL_87:
    if (!v14)
    {
LABEL_103:
      close(v1);
      if (sCachedSettings)
      {
        dictionary = xpc_dictionary_get_dictionary(sCachedSettings, nw_settings_managed_settings);
        if (dictionary)
        {
          xpc_dictionary_apply(dictionary, &__block_literal_global_32_93780);
        }
      }

      return;
    }

    goto LABEL_102;
  }

  v9 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  if (v9 == 2)
  {
    return;
  }

  if (v9 == 1)
  {
    v10 = pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init(v10);
    v11 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      v78.st_dev = 136446466;
      *&v78.st_mode = "networkd_settings_read_from_file";
      WORD2(v78.st_ino) = 2082;
      *(&v78.st_ino + 6) = nw_file_path_settings;
      _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_ERROR, "%{public}s Sandbox is preventing this process from reading networkd settings file at %{public}s, please add an exception.", &v78, 0x16u);
    }

    return;
  }

  v23 = pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init(v23);
  v78.st_dev = 136446466;
  *&v78.st_mode = "networkd_settings_read_from_file";
  WORD2(v78.st_ino) = 1024;
  *(&v78.st_ino + 6) = v9;
  v24 = _os_log_send_and_compose_impl();
  buf[0] = 16;
  type = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v24, buf, &type))
  {
    if (buf[0] == 17)
    {
      v25 = pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init(v25);
      v26 = gLogObj;
      v27 = buf[0];
      if (!os_log_type_enabled(gLogObj, buf[0]))
      {
        goto LABEL_69;
      }

      v78.st_dev = 136446466;
      *&v78.st_mode = "networkd_settings_read_from_file";
      WORD2(v78.st_ino) = 1024;
      *(&v78.st_ino + 6) = v9;
      v28 = "%{public}s networkd settings file open failed %{darwin.errno}d";
      goto LABEL_68;
    }

    if (type != OS_LOG_TYPE_INFO)
    {
      v47 = pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init(v47);
      v26 = gLogObj;
      v27 = buf[0];
      if (!os_log_type_enabled(gLogObj, buf[0]))
      {
        goto LABEL_69;
      }

      v78.st_dev = 136446466;
      *&v78.st_mode = "networkd_settings_read_from_file";
      WORD2(v78.st_ino) = 1024;
      *(&v78.st_ino + 6) = v9;
      v28 = "%{public}s networkd settings file open failed %{darwin.errno}d, backtrace limit exceeded";
      goto LABEL_68;
    }

    v30 = __nw_create_backtrace_string();
    v31 = pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init(v31);
    v26 = gLogObj;
    v27 = buf[0];
    v32 = os_log_type_enabled(gLogObj, buf[0]);
    if (v30)
    {
      if (v32)
      {
        v78.st_dev = 136446722;
        *&v78.st_mode = "networkd_settings_read_from_file";
        WORD2(v78.st_ino) = 1024;
        *(&v78.st_ino + 6) = v9;
        HIWORD(v78.st_uid) = 2082;
        *&v78.st_gid = v30;
        _os_log_impl(&dword_181A37000, v26, v27, "%{public}s networkd settings file open failed %{darwin.errno}d, dumping backtrace:%{public}s", &v78, 0x1Cu);
      }

      free(v30);
      goto LABEL_69;
    }

    if (v32)
    {
      v78.st_dev = 136446466;
      *&v78.st_mode = "networkd_settings_read_from_file";
      WORD2(v78.st_ino) = 1024;
      *(&v78.st_ino + 6) = v9;
      v28 = "%{public}s networkd settings file open failed %{darwin.errno}d, no backtrace";
LABEL_68:
      _os_log_impl(&dword_181A37000, v26, v27, v28, &v78, 0x12u);
    }
  }

LABEL_69:
  if (v24)
  {
    free(v24);
  }
}

void nwlog_legacy_init_once(void)
{
  if ((gHasForked & 1) == 0)
  {
    gLogObj = os_log_create(nw_oslog_subsystem, "");
  }
}

void networkd_settings_update_from_token(int a1)
{
  v47 = *MEMORY[0x1E69E9840];
  state64 = 0;
  state = notify_get_state(a1, &state64);
  if (state)
  {
    v2 = state;
    v3 = pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init(v3);
    buf = 136446466;
    v42 = "networkd_settings_update_from_token";
    v43 = 1024;
    v44 = v2;
    v4 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v4, &type, &v31))
    {
      goto LABEL_23;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init(v5);
      v6 = gLogObj;
      v7 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_23;
      }

      buf = 136446466;
      v42 = "networkd_settings_update_from_token";
      v43 = 1024;
      v44 = v2;
      v8 = "%{public}s notify_get_state(settings) failed: %u";
    }

    else if (v31 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v11 = pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init(v11);
      v6 = gLogObj;
      v7 = type;
      v12 = os_log_type_enabled(gLogObj, type);
      if (backtrace_string)
      {
        if (v12)
        {
          buf = 136446722;
          v42 = "networkd_settings_update_from_token";
          v43 = 1024;
          v44 = v2;
          v45 = 2082;
          v46 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v7, "%{public}s notify_get_state(settings) failed: %u, dumping backtrace:%{public}s", &buf, 0x1Cu);
        }

        free(backtrace_string);
        goto LABEL_23;
      }

      if (!v12)
      {
LABEL_23:
        if (v4)
        {
          free(v4);
        }

        return;
      }

      buf = 136446466;
      v42 = "networkd_settings_update_from_token";
      v43 = 1024;
      v44 = v2;
      v8 = "%{public}s notify_get_state(settings) failed: %u, no backtrace";
    }

    else
    {
      v14 = pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init(v14);
      v6 = gLogObj;
      v7 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_23;
      }

      buf = 136446466;
      v42 = "networkd_settings_update_from_token";
      v43 = 1024;
      v44 = v2;
      v8 = "%{public}s notify_get_state(settings) failed: %u, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v6, v7, v8, &buf, 0x12u);
    goto LABEL_23;
  }

  pthread_mutex_lock(&sSettingsMutex);
  v9 = state64;
  if (state64 == sCachedHash)
  {
    if (state64)
    {
      pthread_mutex_unlock(&sSettingsMutex);
      sCachedHash = state64;
      return;
    }

    goto LABEL_19;
  }

  if ((state64 & 0xFFFFFFFFFFE00000) == (sCachedHash & 0xFFFFFFFFFFE00000))
  {
    v13 = sCachedSettings;
LABEL_28:
    v15 = nw_settings_add_settings_from_bitmask(v13, v9);
    sCachedSettings = v15;
    goto LABEL_29;
  }

  if ((state64 & 0xFFFFFFFFFFE00000) == 0)
  {
    if (sCachedSettings)
    {
      xpc_release(sCachedSettings);
      sCachedSettings = 0;
      v9 = state64;
    }

    v13 = 0;
    goto LABEL_28;
  }

LABEL_19:
  networkd_settings_read_from_file();
  v15 = sCachedSettings;
LABEL_29:
  v16 = sBoringSSLUpdateBlock;
  if (sBoringSSLUpdateBlock)
  {
    if (v15)
    {
      v17 = xpc_dictionary_get_BOOL(v15, nw_setting_boringssl_log_debug);
      v16 = sBoringSSLUpdateBlock;
    }

    else
    {
      v17 = 0;
    }

    if (nw_context_copy_implicit_context::onceToken[0] != -1)
    {
      dispatch_once(nw_context_copy_implicit_context::onceToken, &__block_literal_global_18);
    }

    v18 = nw_context_copy_implicit_context::implicit_context;
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 0x40000000;
    v38[2] = ___ZL35networkd_settings_update_from_tokeni_block_invoke;
    v38[3] = &unk_1E6A3DA70;
    v38[4] = v16;
    v39 = v17;
    nw_queue_context_async(v18, v38);
    v15 = sCachedSettings;
  }

  v19 = sBoringSSLSizeUpdateBlock;
  if (sBoringSSLSizeUpdateBlock)
  {
    if (v15)
    {
      uint64 = xpc_dictionary_get_uint64(v15, nw_setting_boringssl_batching_size);
      if (HIDWORD(uint64))
      {
        v21 = 0;
      }

      else
      {
        v21 = uint64;
      }

      v19 = sBoringSSLSizeUpdateBlock;
    }

    else
    {
      v21 = 0;
    }

    if (nw_context_copy_implicit_context::onceToken[0] != -1)
    {
      dispatch_once(nw_context_copy_implicit_context::onceToken, &__block_literal_global_18);
    }

    v22 = nw_context_copy_implicit_context::implicit_context;
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 0x40000000;
    v37[2] = ___ZL35networkd_settings_update_from_tokeni_block_invoke_2;
    v37[3] = &unk_1E6A3DA98;
    v37[4] = v19;
    v37[5] = v21;
    nw_queue_context_async(v22, v37);
    v15 = sCachedSettings;
  }

  v23 = sQUICUpdateBlock;
  if (sQUICUpdateBlock)
  {
    if (v15)
    {
      v24 = xpc_dictionary_get_BOOL(v15, nw_setting_libnetcore_datapath_debug);
      v23 = sQUICUpdateBlock;
    }

    else
    {
      v24 = 0;
    }

    if (nw_context_copy_implicit_context::onceToken[0] != -1)
    {
      dispatch_once(nw_context_copy_implicit_context::onceToken, &__block_literal_global_18);
    }

    v25 = nw_context_copy_implicit_context::implicit_context;
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 0x40000000;
    v35[2] = ___ZL35networkd_settings_update_from_tokeni_block_invoke_3;
    v35[3] = &unk_1E6A3DAC0;
    v35[4] = v23;
    v36 = v24;
    nw_queue_context_async(v25, v35);
    v15 = sCachedSettings;
  }

  v26 = sSwiftTLSUpdateBlock;
  if (sSwiftTLSUpdateBlock)
  {
    if (v15)
    {
      v27 = xpc_dictionary_get_BOOL(v15, nw_setting_swift_tls_log_debug);
      v26 = sSwiftTLSUpdateBlock;
    }

    else
    {
      v27 = 0;
    }

    if (nw_context_copy_implicit_context::onceToken[0] != -1)
    {
      dispatch_once(nw_context_copy_implicit_context::onceToken, &__block_literal_global_18);
    }

    v28 = nw_context_copy_implicit_context::implicit_context;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 0x40000000;
    v33[2] = ___ZL35networkd_settings_update_from_tokeni_block_invoke_4;
    v33[3] = &unk_1E6A3DAE8;
    v33[4] = v26;
    v34 = v27;
    nw_queue_context_async(v28, v33);
    v15 = sCachedSettings;
  }

  if (v15)
  {
    v29 = xpc_dictionary_get_BOOL(v15, nw_setting_libnetcore_datapath_debug);
  }

  else
  {
    v29 = 0;
  }

  pthread_mutex_unlock(&sSettingsMutex);
  sCachedHash = state64;
  v30 = pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init(v30);
  os_unfair_lock_lock(&gLogLock);
  if (v29 || !gLogDatapathOverridden)
  {
    gLogDatapath = v29;
  }

  os_unfair_lock_unlock(&gLogLock);
}

id nw_context_copy_implicit_context()
{
  if (nw_context_copy_implicit_context::onceToken[0] != -1)
  {
    dispatch_once(nw_context_copy_implicit_context::onceToken, &__block_literal_global_18);
  }

  v1 = nw_context_copy_implicit_context::implicit_context;

  return v1;
}

uint64_t type metadata accessor for SystemLock._Storage()
{
  result = qword_1ED410818;
  if (!qword_1ED410818)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t nw_context_get_privacy_level(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ((v1[38]._os_unfair_lock_opaque & 0x48) == 0x40 && !dispatch_workloop_is_current())
    {
      os_unfair_lock_lock(v2 + 22);
      os_unfair_lock_opaque = v2[33]._os_unfair_lock_opaque;
      os_unfair_lock_unlock(v2 + 22);
    }

    else
    {
      os_unfair_lock_opaque = v2[33]._os_unfair_lock_opaque;
    }

    goto LABEL_6;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_context_get_privacy_level";
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
        v16 = "nw_context_get_privacy_level";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null context", buf, 0xCu);
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
          v16 = "nw_context_get_privacy_level";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_23;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_context_get_privacy_level";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null context, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_context_get_privacy_level";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_23:
  if (v6)
  {
    free(v6);
  }

  os_unfair_lock_opaque = 1;
LABEL_6:

  return os_unfair_lock_opaque;
}

void ____nwlog_activity_log_block_invoke()
{
  if ((gHasForked & 1) == 0)
  {
    gactivityLogObj = os_log_create(nw_oslog_subsystem, "activity");
  }
}

uint64_t nw_activity_create_from_xpc_object(void *a1)
{
  v47 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v19 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_activity_create_from_xpc_object";
    v20 = _os_log_send_and_compose_impl();

    LOBYTE(v45.receiver) = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v20, &v45, &type))
    {
      goto LABEL_85;
    }

    if (LOBYTE(v45.receiver) == 17)
    {
      v21 = __nwlog_obj();
      receiver = v45.receiver;
      if (os_log_type_enabled(v21, v45.receiver))
      {
        *buf = 136446210;
        *&buf[4] = "nw_activity_create_from_xpc_object";
        _os_log_impl(&dword_181A37000, v21, receiver, "%{public}s called with null object", buf, 0xCu);
      }
    }

    else if (type == OS_LOG_TYPE_INFO)
    {
      backtrace_string = __nw_create_backtrace_string();
      v21 = __nwlog_obj();
      v32 = v45.receiver;
      v33 = os_log_type_enabled(v21, v45.receiver);
      if (backtrace_string)
      {
        if (v33)
        {
          *buf = 136446466;
          *&buf[4] = "nw_activity_create_from_xpc_object";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v21, v32, "%{public}s called with null object, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (!v20)
        {
          goto LABEL_87;
        }

        goto LABEL_86;
      }

      if (v33)
      {
        *buf = 136446210;
        *&buf[4] = "nw_activity_create_from_xpc_object";
        _os_log_impl(&dword_181A37000, v21, v32, "%{public}s called with null object, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v21 = __nwlog_obj();
      v40 = v45.receiver;
      if (os_log_type_enabled(v21, v45.receiver))
      {
        *buf = 136446210;
        *&buf[4] = "nw_activity_create_from_xpc_object";
        _os_log_impl(&dword_181A37000, v21, v40, "%{public}s called with null object, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_84;
  }

  if (object_getClass(v1) != MEMORY[0x1E69E9E80])
  {
    v23 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_activity_create_from_xpc_object";
    v20 = _os_log_send_and_compose_impl();

    LOBYTE(v45.receiver) = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v20, &v45, &type))
    {
      goto LABEL_85;
    }

    if (LOBYTE(v45.receiver) == 17)
    {
      v21 = __nwlog_obj();
      v24 = v45.receiver;
      if (os_log_type_enabled(v21, v45.receiver))
      {
        *buf = 136446210;
        *&buf[4] = "nw_activity_create_from_xpc_object";
        _os_log_impl(&dword_181A37000, v21, v24, "%{public}s called with null (xpc_get_type(object) == (&_xpc_type_dictionary))", buf, 0xCu);
      }
    }

    else if (type == OS_LOG_TYPE_INFO)
    {
      v34 = __nw_create_backtrace_string();
      v21 = __nwlog_obj();
      v35 = v45.receiver;
      v36 = os_log_type_enabled(v21, v45.receiver);
      if (v34)
      {
        if (v36)
        {
          *buf = 136446466;
          *&buf[4] = "nw_activity_create_from_xpc_object";
          *&buf[12] = 2082;
          *&buf[14] = v34;
          _os_log_impl(&dword_181A37000, v21, v35, "%{public}s called with null (xpc_get_type(object) == (&_xpc_type_dictionary)), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v34);
LABEL_85:
        if (!v20)
        {
LABEL_87:
          v3 = 0;
          goto LABEL_36;
        }

LABEL_86:
        free(v20);
        goto LABEL_87;
      }

      if (v36)
      {
        *buf = 136446210;
        *&buf[4] = "nw_activity_create_from_xpc_object";
        _os_log_impl(&dword_181A37000, v21, v35, "%{public}s called with null (xpc_get_type(object) == (&_xpc_type_dictionary)), no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v21 = __nwlog_obj();
      v41 = v45.receiver;
      if (os_log_type_enabled(v21, v45.receiver))
      {
        *buf = 136446210;
        *&buf[4] = "nw_activity_create_from_xpc_object";
        _os_log_impl(&dword_181A37000, v21, v41, "%{public}s called with null (xpc_get_type(object) == (&_xpc_type_dictionary)), backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_84:

    goto LABEL_85;
  }

  v3 = [NWConcrete_nw_activity alloc];
  v4 = v2;
  if (!v3)
  {
LABEL_35:

LABEL_36:
    return v3;
  }

  v45.receiver = v3;
  v45.super_class = NWConcrete_nw_activity;
  v3 = objc_msgSendSuper2(&v45, sel_init);
  if (!v3)
  {
    v25 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "[NWConcrete_nw_activity initWithXPCObject:]";
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
          *&buf[4] = "[NWConcrete_nw_activity initWithXPCObject:]";
          _os_log_impl(&dword_181A37000, v27, v28, "%{public}s [super init] failed", buf, 0xCu);
        }
      }

      else if (v43 == 1)
      {
        v37 = __nw_create_backtrace_string();
        v27 = __nwlog_obj();
        v38 = type;
        v39 = os_log_type_enabled(v27, type);
        if (v37)
        {
          if (v39)
          {
            *buf = 136446466;
            *&buf[4] = "[NWConcrete_nw_activity initWithXPCObject:]";
            *&buf[12] = 2082;
            *&buf[14] = v37;
            _os_log_impl(&dword_181A37000, v27, v38, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v37);
          goto LABEL_91;
        }

        if (v39)
        {
          *buf = 136446210;
          *&buf[4] = "[NWConcrete_nw_activity initWithXPCObject:]";
          _os_log_impl(&dword_181A37000, v27, v38, "%{public}s [super init] failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v27 = __nwlog_obj();
        v42 = type;
        if (os_log_type_enabled(v27, type))
        {
          *buf = 136446210;
          *&buf[4] = "[NWConcrete_nw_activity initWithXPCObject:]";
          _os_log_impl(&dword_181A37000, v27, v42, "%{public}s [super init] failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_91:
    if (v26)
    {
      free(v26);
    }

    v3 = 0;
    goto LABEL_35;
  }

  *v3->token = *xpc_dictionary_get_uuid(v4, "token");
  v3->investigation_identifier = xpc_dictionary_get_uint64(v4, "investigation_identifier");
  v3->start_time = xpc_dictionary_get_uint64(v4, "start_time");
  v3->end_time = xpc_dictionary_get_uint64(v4, "end_time");
  v3->fragments_quenched = xpc_dictionary_get_uint64(v4, "fragments_quenched");
  os_unfair_lock_lock(&v3->description_cache.mutex.m_mutex);
  m_obj = v3->description_cache.description.m_obj;
  if ((*(&v3->description_cache.description + 8) & 1) != 0 && m_obj)
  {
    v3->description_cache.description.m_obj = 0;

    m_obj = v3->description_cache.description.m_obj;
  }

  v3->description_cache.description.m_obj = 0;

  os_unfair_lock_unlock(&v3->description_cache.mutex.m_mutex);
  v3->label = xpc_dictionary_get_uint64(v4, "label");
  v3->domain = xpc_dictionary_get_uint64(v4, "domain");
  v3->client_metric_count = 0;
  v3->underlying_error_domain = xpc_dictionary_get_int64(v4, "underlying_error_domain");
  v3->underlying_error_code = xpc_dictionary_get_int64(v4, "underlying_error_code");
  v3->reporting_strategy = xpc_dictionary_get_uint64(v4, "reporting_strategy");
  v3->completion_reason = xpc_dictionary_get_uint64(v4, "completion_reason");
  *(v3 + 140) = *(v3 + 140) & 0xFE | xpc_dictionary_get_BOOL(v4, "is_retry");
  if (xpc_dictionary_get_BOOL(v4, "is_lightweight"))
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  *(v3 + 140) = *(v3 + 140) & 0xFD | v6;
  if (xpc_dictionary_get_BOOL(v4, "activated"))
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  *(v3 + 140) = *(v3 + 140) & 0xFB | v7;
  if (xpc_dictionary_get_BOOL(v4, "completed"))
  {
    v8 = 8;
  }

  else
  {
    v8 = 0;
  }

  *(v3 + 140) = *(v3 + 140) & 0xF7 | v8;
  uuid = xpc_dictionary_get_uuid(v4, "parent_token");
  if (uuid)
  {
    *buf = *uuid;
    v10 = [[NWConcrete_nw_activity alloc] initWithToken:buf];
    v11 = v3->parent.m_obj;
    if ((*(&v3->parent + 8) & 1) != 0 && v11)
    {
      v3->parent.m_obj = 0;

      v11 = v3->parent.m_obj;
    }

    v3->parent.m_obj = 0;

    v12 = v3->parent.m_obj;
    v3->parent.m_obj = v10;
  }

  else
  {
    v13 = v3->parent.m_obj;
    if ((*(&v3->parent + 8) & 1) != 0 && v13)
    {
      v3->parent.m_obj = 0;

      v13 = v3->parent.m_obj;
    }

    v3->parent.m_obj = 0;

    v14 = v3->parent.m_obj;
    v3->parent.m_obj = 0;
  }

  *(&v3->parent + 8) |= 1u;
  string = xpc_dictionary_get_string(v4, "underlying_error_domain_string");
  if (!string)
  {
    goto LABEL_29;
  }

  v16 = strndup(string, 0x100uLL);
  if (v16)
  {
LABEL_28:
    v3->underlying_error_domain_string = v16;
LABEL_29:
    if (nw_activity_should_log(v3))
    {
      if (__nwlog_activity_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_activity_log::onceToken, &__block_literal_global_16_47419);
      }

      v17 = gactivityLogObj;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = v3;
        _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_DEFAULT, "Create activity from XPC object %{public}@", buf, 0xCu);
      }
    }

    goto LABEL_35;
  }

  v29 = __nwlog_obj();
  os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
  *buf = 136446210;
  *&buf[4] = "strict_strndup";
  v30 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v30);
  if (!result)
  {
    free(v30);
    v16 = 0;
    goto LABEL_28;
  }

  __break(1u);
  return result;
}

void nw_activity_set_global_parent(void *a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ((v1[140] & 8) == 0)
    {
      *v37 = 0;
      *&v37[8] = v37;
      *&v37[16] = 0x2020000000;
      v38 = 0;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __nw_activity_set_global_parent_block_invoke_62;
      aBlock[3] = &unk_1E6A3D738;
      v3 = v1;
      v26 = v3;
      v27 = v37;
      v4 = _Block_copy(aBlock);
      v28 = v4;
      nw_synchronize<nw::unfair_mutex,void({block_pointer} {__strong})(void)>(&global_parent_lock, &v28);

      if (*(*&v37[8] + 24) != 1)
      {
        if (__nwlog_activity_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_activity_log::onceToken, &__block_literal_global_16_47419);
        }

        v5 = gactivityLogObj;
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v32 = v3;
          _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_DEFAULT, "Set activity %{public}@ as the global parent", buf, 0xCu);
        }

LABEL_9:
        _Block_object_dispose(v37, 8);
        goto LABEL_19;
      }

      v12 = __nwlog_obj();
      *buf = 136446466;
      v32 = "nw_activity_set_global_parent";
      v33 = 2082;
      v34 = "Global parent activity is immutable and cannot be set to a different activity";
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
            *buf = 136446466;
            v32 = "nw_activity_set_global_parent";
            v33 = 2082;
            v34 = "Global parent activity is immutable and cannot be set to a different activity";
            _os_log_impl(&dword_181A37000, v14, v15, "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s", buf, 0x16u);
          }
        }

        else if (v24 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v14 = __nwlog_obj();
          v20 = type;
          v21 = os_log_type_enabled(v14, type);
          if (backtrace_string)
          {
            if (v21)
            {
              *buf = 136446722;
              v32 = "nw_activity_set_global_parent";
              v33 = 2082;
              v34 = "Global parent activity is immutable and cannot be set to a different activity";
              v35 = 2082;
              v36 = backtrace_string;
              _os_log_impl(&dword_181A37000, v14, v20, "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, dumping backtrace:%{public}s", buf, 0x20u);
            }

            free(backtrace_string);
            goto LABEL_54;
          }

          if (v21)
          {
            *buf = 136446466;
            v32 = "nw_activity_set_global_parent";
            v33 = 2082;
            v34 = "Global parent activity is immutable and cannot be set to a different activity";
            _os_log_impl(&dword_181A37000, v14, v20, "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, no backtrace", buf, 0x16u);
          }
        }

        else
        {
          v14 = __nwlog_obj();
          v23 = type;
          if (os_log_type_enabled(v14, type))
          {
            *buf = 136446466;
            v32 = "nw_activity_set_global_parent";
            v33 = 2082;
            v34 = "Global parent activity is immutable and cannot be set to a different activity";
            _os_log_impl(&dword_181A37000, v14, v23, "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, backtrace limit exceeded", buf, 0x16u);
          }
        }
      }

LABEL_54:
      if (v13)
      {
        free(v13);
      }

      goto LABEL_9;
    }

    v8 = __nwlog_obj();
    *v37 = 136446210;
    *&v37[4] = "nw_activity_set_global_parent";
    v9 = _os_log_send_and_compose_impl();

    buf[0] = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v9, buf, &type))
    {
      goto LABEL_49;
    }

    if (buf[0] == 17)
    {
      v10 = __nwlog_obj();
      v11 = buf[0];
      if (os_log_type_enabled(v10, buf[0]))
      {
        *v37 = 136446210;
        *&v37[4] = "nw_activity_set_global_parent";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s BUG IN CLIENT OF LIBNETWORK: Cannot set nw_activity settings after completion", v37, 0xCu);
      }
    }

    else if (type == OS_LOG_TYPE_INFO)
    {
      v16 = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v17 = buf[0];
      v18 = os_log_type_enabled(v10, buf[0]);
      if (v16)
      {
        if (v18)
        {
          *v37 = 136446466;
          *&v37[4] = "nw_activity_set_global_parent";
          *&v37[12] = 2082;
          *&v37[14] = v16;
          _os_log_impl(&dword_181A37000, v10, v17, "%{public}s BUG IN CLIENT OF LIBNETWORK: Cannot set nw_activity settings after completion, dumping backtrace:%{public}s", v37, 0x16u);
        }

        free(v16);
        goto LABEL_49;
      }

      if (v18)
      {
        *v37 = 136446210;
        *&v37[4] = "nw_activity_set_global_parent";
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s BUG IN CLIENT OF LIBNETWORK: Cannot set nw_activity settings after completion, no backtrace", v37, 0xCu);
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v22 = buf[0];
      if (os_log_type_enabled(v10, buf[0]))
      {
        *v37 = 136446210;
        *&v37[4] = "nw_activity_set_global_parent";
        _os_log_impl(&dword_181A37000, v10, v22, "%{public}s BUG IN CLIENT OF LIBNETWORK: Cannot set nw_activity settings after completion, backtrace limit exceeded", v37, 0xCu);
      }
    }

LABEL_49:
    if (v9)
    {
      free(v9);
    }

    goto LABEL_19;
  }

  if (__nwlog_activity_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_activity_log::onceToken, &__block_literal_global_16_47419);
  }

  v6 = gactivityLogObj;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v37 = 138543362;
    *&v37[4] = global_parent;
    _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEFAULT, "Unsetting the global parent activity %{public}@", v37, 0xCu);
  }

  v30 = &__block_literal_global_61_60325;
  nw_synchronize<nw::unfair_mutex,void({block_pointer} {__strong})(void)>(&global_parent_lock, &v30);

  if (__nwlog_activity_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_activity_log::onceToken, &__block_literal_global_16_47419);
  }

  v7 = gactivityLogObj;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v37 = 0;
    _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEFAULT, "Unset the global parent activity", v37, 2u);
  }

LABEL_19:
}

void __nw_activity_set_global_parent_block_invoke_62(uint64_t a1)
{
  if (global_parent && nw_activity_is_equal(*(a1 + 32), global_parent))
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    v2 = *(a1 + 32);

    objc_storeStrong(&global_parent, v2);
  }
}

void __cxx_global_var_init_5()
{
  v16 = *MEMORY[0x1E69E9840];
  {
    return;
  }

  {
    if (v9)
    {
      nw::object::_class(v9);
      nw_string::_class(void)::instance = "OS_nw_string";
      unk_1ED4118B0 = 12;
      xmmword_1ED4118B8 = 0u;
      unk_1ED4118C8 = 0u;
      xmmword_1ED4118D8 = 0u;
      xmmword_1ED4118F8 = 0u;
      *&qword_1ED411908 = 0u;
      qword_1ED411918 = &nw::object::_class(void)::instance;
      unk_1ED411920 = 4096;
      qword_1ED411928 = 0;
      qword_1ED411930 = 0;
      qword_1ED411938 = &qword_1ED411938;
      qword_1ED411940 = &qword_1ED411938;
      qword_1ED411948 = 0;
      dword_1ED411950 = 0;
      unk_1ED4118E8 = 0u;
      nw::object::class_def::setup(&nw::object::_class(void)::instance, &unk_1ED4118E8);
    }
  }

  if ((qword_1ED411980 & 1) == 0)
  {
    __nwlog_obj();
    *buf = 136446210;
    v13 = "register_override_method_def";
    v1 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v10 = 0;
    if (!__nwlog_fault(v1, &type, &v10))
    {
      goto LABEL_39;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v2 = __nwlog_obj();
      v3 = type;
      if (!os_log_type_enabled(v2, type))
      {
        goto LABEL_39;
      }

      *buf = 136446210;
      v13 = "register_override_method_def";
      v4 = "%{public}s called with null (def.slot())";
      goto LABEL_38;
    }

    if (v10 != 1)
    {
      v2 = __nwlog_obj();
      v3 = type;
      if (!os_log_type_enabled(v2, type))
      {
        goto LABEL_39;
      }

      *buf = 136446210;
      v13 = "register_override_method_def";
      v4 = "%{public}s called with null (def.slot()), backtrace limit exceeded";
      goto LABEL_38;
    }

    backtrace_string = __nw_create_backtrace_string();
    v2 = __nwlog_obj();
    v3 = type;
    v6 = os_log_type_enabled(v2, type);
    if (!backtrace_string)
    {
      if (!v6)
      {
        goto LABEL_39;
      }

      *buf = 136446210;
      v13 = "register_override_method_def";
      v4 = "%{public}s called with null (def.slot()), no backtrace";
      goto LABEL_38;
    }

    if (v6)
    {
      *buf = 136446466;
      v13 = "register_override_method_def";
      v14 = 2082;
      v15 = backtrace_string;
      _os_log_impl(&dword_181A37000, v2, v3, "%{public}s called with null (def.slot()), dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
LABEL_39:
    if (!v1)
    {
      goto LABEL_7;
    }

LABEL_40:
    free(v1);
    goto LABEL_7;
  }

  if (nw::object::__destroy_def_instance >= qword_1ED411910)
  {
    __nwlog_obj();
    *buf = 136446210;
    v13 = "register_override_method_def";
    v1 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v10 = 0;
    if (!__nwlog_fault(v1, &type, &v10))
    {
      goto LABEL_39;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v2 = __nwlog_obj();
      v3 = type;
      if (!os_log_type_enabled(v2, type))
      {
        goto LABEL_39;
      }

      *buf = 136446210;
      v13 = "register_override_method_def";
      v4 = "%{public}s called with null (def.slot().value() < m_method_table.size())";
      goto LABEL_38;
    }

    if (v10 != 1)
    {
      v2 = __nwlog_obj();
      v3 = type;
      if (!os_log_type_enabled(v2, type))
      {
        goto LABEL_39;
      }

      *buf = 136446210;
      v13 = "register_override_method_def";
      v4 = "%{public}s called with null (def.slot().value() < m_method_table.size()), backtrace limit exceeded";
      goto LABEL_38;
    }

    v7 = __nw_create_backtrace_string();
    v2 = __nwlog_obj();
    v3 = type;
    v8 = os_log_type_enabled(v2, type);
    if (v7)
    {
      if (v8)
      {
        *buf = 136446466;
        v13 = "register_override_method_def";
        v14 = 2082;
        v15 = v7;
        _os_log_impl(&dword_181A37000, v2, v3, "%{public}s called with null (def.slot().value() < m_method_table.size()), dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v7);
      if (!v1)
      {
        goto LABEL_7;
      }

      goto LABEL_40;
    }

    if (v8)
    {
      *buf = 136446210;
      v13 = "register_override_method_def";
      v4 = "%{public}s called with null (def.slot().value() < m_method_table.size()), no backtrace";
LABEL_38:
      _os_log_impl(&dword_181A37000, v2, v3, v4, buf, 0xCu);
      goto LABEL_39;
    }

    goto LABEL_39;
  }

  v0 = (*(qword_1ED4118F0 + (((qword_1ED411908 + nw::object::__destroy_def_instance) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (qword_1ED411908 + nw::object::__destroy_def_instance));
  *v0 = nw_string::_destroy;
  v0[1] = 0;
LABEL_7:
}

void nw::object::class_def::setup(void *a1, int64x2_t *a2)
{
  v4 = a1[14];
  if (v4)
  {
    nw::object::class_def::setup(v4, a2);
  }

  v6 = a2[2].u64[0];
  v5 = a2[2].i64[1];
  v7 = v6 + v5;
  v8 = (v6 + v5) >> 8;
  v9 = a2->i64[1];
  v10 = a2[1].i64[0];
  if (v10 == v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(v9 + 8 * v8) + 16 * v7;
  }

  v12 = a1[12];
  v13 = (v12 >> 5) & 0x7FFFFFFFFFFFFF8;
  v14 = a1[9];
  v344 = (v14 + v13);
  if (a1[10] == v14)
  {
    v20 = 0;
    v21 = 0;
    j = 0;
    v18 = v14 + 8 * ((a1[13] + v12) >> 8);
  }

  else
  {
    v15 = *(v14 + v13) + 16 * v12;
    v16 = a1[13] + v12;
    v17 = (v16 >> 5) & 0x7FFFFFFFFFFFFF8;
    v18 = v14 + v17;
    v19 = (v16 | (32 * (v17 - v13))) - a1[12];
    v20 = (*(v14 + v17) + 16 * v16);
    v21 = v15;
    if (v20 == v15)
    {
      j = 0;
    }

    else
    {
      j = v19;
    }
  }

  v23 = v6 >> 8;
  v24 = 8 * (v6 >> 8);
  v25 = v10 - v9;
  if (v10 == v9)
  {
    v26 = 0;
    if (!v11)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v26 = *(v9 + v24) + 16 * v6;
    if (v11 == v26)
    {
LABEL_13:
      v27 = 0;
      goto LABEL_16;
    }
  }

  v27 = ((v11 - *(v9 + 8 * v8)) >> 4) + 32 * (8 * v8 - v24) - ((v26 - *(v9 + v24)) >> 4);
LABEL_16:
  v345 = v18;
  if (v27 >= v5 - v27)
  {
    v37 = 32 * v25 - 1;
    v38 = v10 - v9;
    if (v10 == v9)
    {
      v37 = 0;
    }

    v39 = v37 - v7;
    v40 = j >= v39;
    v41 = j - v39;
    if (v41 == 0 || !v40)
    {
LABEL_381:
      v261 = (v9 + 8 * v8);
      if (v10 == v9)
      {
        v262 = 0;
      }

      else
      {
        v262 = (*v261 + 16 * v7);
      }

      v263 = v5 - v27;
      if (v5 - v27 >= j)
      {
        v265 = v262;
        v266 = v261;
        if (!j)
        {
          return;
        }

LABEL_407:
        v275 = (&v262[-*v261] >> 4) - j;
        if (v275 < 1)
        {
          v278 = 255 - v275;
          v276 = &v261[-(v278 >> 8)];
          v277 = (*v276 + 16 * ~v278);
          if (v277 == v262)
          {
            goto LABEL_417;
          }
        }

        else
        {
          v276 = &v261[v275 >> 8];
          v277 = (*v276 + 16 * v275);
          if (v277 == v262)
          {
            goto LABEL_417;
          }
        }

        v279 = v276;
        v280 = v277;
        do
        {
          *v265++ = *v280;
          if ((v265 - *v266) == 4096)
          {
            v281 = v266[1];
            ++v266;
            v265 = v281;
          }

          v280 += 16;
          if (&v280[-*v279] == 4096)
          {
            v282 = v279[1];
            ++v279;
            v280 = v282;
          }

          ++a2[2].i64[1];
        }

        while (v280 != v262);
LABEL_417:
        if (j < v263)
        {
          v283 = v18;
          v284 = *v261;
          v285 = (&v262[-*v261] >> 4) - v263;
          if (v285 < 1)
          {
            v302 = 255 - v285;
            v286 = &v261[-(v302 >> 8)];
            v287 = *v286 + 16 * ~v302;
            if (v286 != v276)
            {
              goto LABEL_420;
            }
          }

          else
          {
            v286 = &v261[v285 >> 8];
            v287 = *v286 + 16 * v285;
            if (v286 != v276)
            {
LABEL_420:
              v288 = *v276;
              if (*v276 != v277)
              {
                while (1)
                {
                  v289 = (v262 - v284) >> 4;
                  if ((v277 - v288) >> 4 < v289)
                  {
                    v289 = (v277 - v288) >> 4;
                  }

                  v277 -= 16 * v289;
                  v262 -= 16 * v289;
                  if (v289)
                  {
                    memmove(v262, v277, 16 * v289);
                  }

                  if (v277 == v288)
                  {
                    break;
                  }

                  v290 = *--v261;
                  v284 = v290;
                  v262 = v290 + 4096;
                }

                v284 = *v261;
                if ((*v261 + 4096) == v262)
                {
                  v291 = v261[1];
                  ++v261;
                  v284 = v291;
                  v262 = v291;
                }
              }

              for (i = v276 - 1; i != v286; --i)
              {
                v293 = *i;
                v294 = (*i + 4096);
                while (1)
                {
                  v295 = (v262 - v284) >> 4;
                  if ((v294 - v293) >> 4 < v295)
                  {
                    v295 = (v294 - v293) >> 4;
                  }

                  v294 -= 16 * v295;
                  v262 -= 16 * v295;
                  if (v295)
                  {
                    memmove(v262, v294, 16 * v295);
                  }

                  if (v294 == v293)
                  {
                    break;
                  }

                  v296 = *--v261;
                  v284 = v296;
                  v262 = v296 + 4096;
                }

                v284 = *v261;
                if ((*v261 + 4096) == v262)
                {
                  v297 = v261[1];
                  ++v261;
                  v284 = v297;
                  v262 = v297;
                }
              }

              v298 = (*i + 4096);
              v18 = v283;
              if (v298 == v287)
              {
                goto LABEL_460;
              }

              v299 = *v261;
              while (1)
              {
                v300 = &v262[-v299] >> 4;
                if (&v298[-v287] >> 4 < v300)
                {
                  v300 = &v298[-v287] >> 4;
                }

                v298 -= 16 * v300;
                v262 -= 16 * v300;
                if (v300)
                {
                  memmove(v262, v298, 16 * v300);
                }

                if (v298 == v287)
                {
                  break;
                }

                v301 = *--v261;
                v299 = v301;
                v262 = (v301 + 4096);
              }

              goto LABEL_458;
            }
          }

          v18 = v283;
          if (v287 != v277)
          {
            while (1)
            {
              v304 = (v262 - v284) >> 4;
              if (&v277[-v287] >> 4 < v304)
              {
                v304 = &v277[-v287] >> 4;
              }

              v277 -= 16 * v304;
              v262 -= 16 * v304;
              if (v304)
              {
                memmove(v262, v277, 16 * v304);
              }

              if (v277 == v287)
              {
                break;
              }

              v303 = *--v261;
              v284 = v303;
              v262 = v303 + 4096;
            }

LABEL_458:
            if ((*v261 + 4096) == v262)
            {
              v305 = v261[1];
              ++v261;
              v262 = v305;
            }
          }
        }

LABEL_460:
        if (v18 == v344)
        {
          if (v21 != v20)
          {
            v308 = *v261;
            v307 = v261 - 1;
            v306 = v308;
            while (1)
            {
              v309 = &v262[-v306] >> 4;
              if ((v20 - v21) >> 4 < v309)
              {
                v309 = (v20 - v21) >> 4;
              }

              v20 -= 16 * v309;
              if (v309)
              {
                memmove(&v262[-16 * v309], v20, 16 * v309);
              }

              if (v20 == v21)
              {
                break;
              }

              v310 = *v307--;
              v306 = v310;
              v262 = (v310 + 4096);
            }
          }
        }

        else
        {
          v311 = *v18;
          if (*v18 != v20)
          {
            v312 = *v261;
            while (1)
            {
              v313 = &v262[-v312] >> 4;
              if ((v20 - v311) >> 4 < v313)
              {
                v313 = (v20 - v311) >> 4;
              }

              v20 -= 16 * v313;
              v262 -= 16 * v313;
              if (v313)
              {
                memmove(v262, v20, 16 * v313);
              }

              if (v20 == v311)
              {
                break;
              }

              v314 = *--v261;
              v312 = v314;
              v262 = (v314 + 4096);
            }

            if ((*v261 + 4096) == v262)
            {
              v315 = v261[1];
              ++v261;
              v262 = v315;
            }
          }

          v316 = (v18 - 8);
          if ((v18 - 8) != v344)
          {
            v317 = *v261;
            do
            {
              v318 = *v316;
              v319 = (*v316 + 4096);
              while (1)
              {
                v320 = (v262 - v317) >> 4;
                if ((v319 - v318) >> 4 < v320)
                {
                  v320 = (v319 - v318) >> 4;
                }

                v319 -= 16 * v320;
                v262 -= 16 * v320;
                if (v320)
                {
                  memmove(v262, v319, 16 * v320);
                }

                if (v319 == v318)
                {
                  break;
                }

                v321 = *--v261;
                v317 = v321;
                v262 = v321 + 4096;
              }

              v317 = *v261;
              if ((*v261 + 4096) == v262)
              {
                v322 = v261[1];
                ++v261;
                v317 = v322;
                v262 = v322;
              }

              --v316;
            }

            while (v316 != v344);
          }

          v323 = (*v316 + 4096);
          if (v323 != v21)
          {
            v326 = *v261;
            v325 = v261 - 1;
            v324 = v326;
            while (1)
            {
              v327 = &v262[-v324] >> 4;
              if ((v323 - v21) >> 4 < v327)
              {
                v327 = (v323 - v21) >> 4;
              }

              v323 -= 16 * v327;
              if (v327)
              {
                memmove(&v262[-16 * v327], v323, 16 * v327);
              }

              if (v323 == v21)
              {
                break;
              }

              v328 = *v325--;
              v324 = v328;
              v262 = (v328 + 4096);
            }
          }
        }

        return;
      }

      if (v263 >= j >> 1)
      {
        v264 = v5 - v27 - j + (&v20[-*v18] >> 4);
        if (v264 >= 1)
        {
          v18 += 8 * (v264 >> 8);
LABEL_393:
          v267 = *v18 + 16 * v264;
          if (v267 != v20)
          {
            goto LABEL_394;
          }

LABEL_405:
          v265 = v262;
          v266 = v261;
          goto LABEL_406;
        }

        v272 = 255 - v264;
        v273 = ~v272;
        v18 -= 8 * (v272 >> 8);
      }

      else
      {
        if (!v263)
        {
          v18 = v344;
          v267 = v21;
          if (v21 == v20)
          {
            goto LABEL_405;
          }

          goto LABEL_394;
        }

        v264 = v263 + (&v21[-*v344] >> 4);
        if (v264 >= 1)
        {
          v18 = &v344[v264 >> 8];
          goto LABEL_393;
        }

        v274 = 255 - v264;
        v273 = ~v274;
        v18 = &v344[-(v274 >> 8)];
      }

      v267 = *v18 + 16 * v273;
      if (v267 == v20)
      {
        goto LABEL_405;
      }

LABEL_394:
      v268 = v18;
      v269 = v267;
      v266 = v261;
      v265 = v262;
      do
      {
        *v265++ = *v269;
        if ((v265 - *v266) == 4096)
        {
          v270 = v266[1];
          ++v266;
          v265 = v270;
        }

        v269 += 16;
        if (&v269[-*v268] == 4096)
        {
          v271 = v268[1];
          ++v268;
          v269 = v271;
        }

        ++a2[2].i64[1];
      }

      while (v269 != v20);
LABEL_406:
      v20 = v267;
      j = v263;
      if (!v263)
      {
        return;
      }

      goto LABEL_407;
    }

    v338 = v20;
    if (v10 == v9)
    {
      v42 = v41 + 1;
    }

    else
    {
      v42 = v41;
    }

    if (v42)
    {
      v43 = (v42 >> 8) + 1;
    }

    else
    {
      v43 = v42 >> 8;
    }

    if (v43 >= v23)
    {
      v32 = v6 >> 8;
    }

    else
    {
      v32 = v43;
    }

    if (v43 <= v23)
    {
      for (a2[2].i64[0] = v6 - (v32 << 8); v32; --v32)
      {
        v49 = a2->i64[1];
        v346 = *v49;
        a2->i64[1] = (v49 + 1);
        std::__split_buffer<void (nw::object::**)(void),nw::c_allocator<void (nw::object::**)(void)>>::emplace_back<void (nw::object::**&)(void)>(a2, &v346);
      }

      goto LABEL_380;
    }

    v335 = j;
    j = v43 - v32;
    v44 = a2[1].i64[1] - a2->i64[0];
    v45 = v38 >> 3;
    if (j <= (v44 >> 3) - (v38 >> 3))
    {
      if (j)
      {
        while (a2[1].i64[1] != a2[1].i64[0])
        {
          v53 = malloc_type_calloc(0x100uLL, 0x10uLL, 0x80040803F642BuLL);
          if (!v53)
          {
            goto LABEL_54;
          }

          v346 = v53;
          std::__split_buffer<void (nw::object::**)(void),nw::c_allocator<void (nw::object::**)(void)>>::emplace_back<void (nw::object::**&)(void)>(a2, &v346);
          if (!--j)
          {
            v6 = a2[2].u64[0];
            goto LABEL_378;
          }
        }

        v257 = v27;
        v32 += j;
        v27 = 255;
        do
        {
          v258 = malloc_type_calloc(0x100uLL, 0x10uLL, 0x80040803F642BuLL);
          if (!v258)
          {
            goto LABEL_54;
          }

          v346 = v258;
          std::__split_buffer<void (nw::object::**)(void),nw::c_allocator<void (nw::object::**)(void)>>::emplace_front<void (nw::object::**)(void)>(a2, &v346);
          if (a2[1].i64[0] - a2->i64[1] == 8)
          {
            v259 = 255;
          }

          else
          {
            v259 = 256;
          }

          v6 = v259 + a2[2].i64[0];
          a2[2].i64[0] = v6;
          --j;
        }

        while (j);
        v27 = v257;
      }

LABEL_378:
      a2[2].i64[0] = v6 - (v32 << 8);
      for (j = v335; v32; --v32)
      {
        v260 = a2->i64[1];
        v346 = *v260;
        a2->i64[1] = (v260 + 1);
        std::__split_buffer<void (nw::object::**)(void),nw::c_allocator<void (nw::object::**)(void)>>::emplace_back<void (nw::object::**&)(void)>(a2, &v346);
      }

      goto LABEL_380;
    }

    v46 = v44 >> 2;
    if (v46 <= j + v45)
    {
      v18 = j + v45;
    }

    else
    {
      v18 = v46;
    }

    v333 = v27;
    if (v18)
    {
      v47 = malloc_type_calloc(v18, 8uLL, 0x80040B8603338uLL);
      if (!v47)
      {
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }
    }

    else
    {
      v47 = 0;
    }

    v331 = v32 << 8;
    v111 = &v47[v45 - v32];
    v27 = &v47[v18];
    v112 = v111;
    v18 = v345;
    while (1)
    {
      v113 = malloc_type_calloc(0x100uLL, 0x10uLL, 0x80040803F642BuLL);
      if (!v113)
      {
        goto LABEL_54;
      }

      if (v112 != v27)
      {
        goto LABEL_161;
      }

      v341 = v47;
      if (v111 > v47)
      {
        v114 = (v111 - v47 + 1 + ((v111 - v47 + 1) >> 63)) >> 1;
        v115 = &v111[-v114];
        if (v27 != v111)
        {
          v116 = v113;
          memmove(&v111[-v114], v111, v27 - v111);
          v113 = v116;
        }

        v112 = v115 + v27 - v111;
        v111 = v115;
        v18 = v345;
        goto LABEL_161;
      }

      v337 = v113;
      if (v27 == v47)
      {
        v117 = 1;
      }

      else
      {
        v117 = (v27 - v47) >> 2;
      }

      v118 = malloc_type_calloc(v117, 8uLL, 0x80040B8603338uLL);
      if (!v118)
      {
        goto LABEL_54;
      }

      v119 = v118;
      v120 = v117 >> 2;
      v121 = &v118[8 * (v117 >> 2)];
      v112 = v121;
      v122 = v27 - v111;
      if (v27 != v111)
      {
        v112 = &v121[v122];
        v123 = v122 - 8;
        if (v123 < 0x18)
        {
          v124 = &v118[8 * (v117 >> 2)];
          goto LABEL_180;
        }

        v125 = 8 * v120;
        if ((&v118[8 * v120] - v111) < 0x20)
        {
          v124 = &v118[8 * (v117 >> 2)];
          goto LABEL_180;
        }

        v126 = (v123 >> 3) + 1;
        v127 = 8 * (v126 & 0x3FFFFFFFFFFFFFFCLL);
        v124 = &v121[v127];
        v128 = (v111 + 2);
        v129 = &v118[v125 + 16];
        v130 = v126 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v131 = *v128;
          *(v129 - 1) = *(v128 - 1);
          *v129 = v131;
          v128 += 2;
          v129 += 2;
          v130 -= 4;
        }

        while (v130);
        if (v126 != (v126 & 0x3FFFFFFFFFFFFFFCLL))
        {
          v111 = (v111 + v127);
          do
          {
LABEL_180:
            v132 = *v111++;
            *v124 = v132;
            v124 += 8;
          }

          while (v124 != v112);
        }
      }

      v27 = &v118[8 * v117];
      if (v341)
      {
        v111 = &v118[8 * (v117 >> 2)];
        free(v341);
      }

      else
      {
        v111 = v121;
      }

      v47 = v119;
      v113 = v337;
      v18 = v345;
LABEL_161:
      *v112 = v113;
      v112 += 8;
      if (!--j)
      {
        j = a2->u64[1];
        if (v6 < 0x100)
        {
          v6 = v111;
LABEL_187:
          v32 = a2[1].u64[0];
          if (v32 != j)
          {
            j = v335;
            while (1)
            {
              if (v6 == v47)
              {
                if (v112 >= v27)
                {
                  v136 = v27 == v47;
                  v138 = (v27 - v47) >> 2;
                  v27 = v47;
                  if (v136)
                  {
                    v139 = 1;
                  }

                  else
                  {
                    v139 = v138;
                  }

                  v140 = malloc_type_calloc(v139, 8uLL, 0x80040B8603338uLL);
                  if (!v140)
                  {
                    goto LABEL_54;
                  }

                  v141 = v140;
                  v142 = (v139 + 3) >> 2;
                  v133 = &v140[8 * v142];
                  v143 = v27;
                  v144 = &v112[-v27];
                  v136 = v112 == v27;
                  v112 = v133;
                  if (!v136)
                  {
                    v112 = &v144[v133];
                    v145 = (v144 - 8);
                    if (v145 >= 0x18)
                    {
                      v147 = v142;
                      if (&v141[v142] - v6 < 0x20)
                      {
                        v146 = v133;
                        goto LABEL_208;
                      }

                      v148 = (v145 >> 3) + 1;
                      v149 = 8 * (v148 & 0x3FFFFFFFFFFFFFFCLL);
                      v146 = &v133[v149];
                      v150 = (v6 + 16);
                      v151 = &v141[v147 + 2];
                      v152 = v148 & 0x3FFFFFFFFFFFFFFCLL;
                      do
                      {
                        v153 = *v150;
                        *(v151 - 1) = *(v150 - 1);
                        *v151 = v153;
                        v150 += 2;
                        v151 += 2;
                        v152 -= 4;
                      }

                      while (v152);
                      if (v148 != (v148 & 0x3FFFFFFFFFFFFFFCLL))
                      {
                        v6 += v149;
                        goto LABEL_208;
                      }
                    }

                    else
                    {
                      v146 = v133;
                      do
                      {
LABEL_208:
                        v154 = *v6;
                        v6 += 8;
                        *v146 = v154;
                        v146 += 8;
                      }

                      while (v146 != v112);
                    }
                  }

                  v27 = &v141[v139];
                  if (v143)
                  {
                    free(v143);
                  }

                  v47 = v141;
                  v18 = v345;
                  goto LABEL_190;
                }

                v133 = &v47[(((v27 - v112) >> 3) + 1 + ((((v27 - v112) >> 3) + 1) >> 63)) >> 1];
                v137 = v112 - v47;
                v136 = v112 == v47;
                v112 += 8 * ((((v27 - v112) >> 3) + 1 + ((((v27 - v112) >> 3) + 1) >> 63)) >> 1);
                if (!v136)
                {
                  memmove(v133, v6, v137);
                }
              }

              else
              {
                v133 = v6;
              }

LABEL_190:
              v134 = *(v32 - 8);
              v32 -= 8;
              *(v133 - 1) = v134;
              v135 = v133 - 8;
              v6 = v135;
              if (v32 == a2->i64[1])
              {
                goto LABEL_238;
              }
            }
          }

          v135 = v6;
          j = v335;
LABEL_238:
          v171 = a2->i64[0];
          a2->i64[0] = v47;
          a2->i64[1] = v135;
          a2[1].i64[0] = v112;
          a2[1].i64[1] = v27;
          v27 = v333;
          a2[2].i64[0] -= v331;
          if (v171)
          {
            free(v171);
          }

LABEL_380:
          v5 = a2[2].i64[1];
          v9 = a2->i64[1];
          v10 = a2[1].i64[0];
          v7 = a2[2].i64[0] + v5;
          v8 = v7 >> 8;
          v20 = v338;
          goto LABEL_381;
        }

        while (2)
        {
          if (v112 == v27)
          {
            if (v111 > v47)
            {
              v155 = (v111 - v47 + 1 + ((v111 - v47 + 1) >> 63)) >> 1;
              v6 = &v111[-v155];
              if (v27 != v111)
              {
                memmove(&v111[-v155], v111, v27 - v111);
              }

              v112 = (v6 + v27 - v111);
              goto LABEL_236;
            }

            v342 = v47;
            if (v27 == v47)
            {
              v156 = 1;
            }

            else
            {
              v156 = (v27 - v47) >> 2;
            }

            v157 = malloc_type_calloc(v156, 8uLL, 0x80040B8603338uLL);
            if (!v157)
            {
              goto LABEL_54;
            }

            v158 = v157;
            v159 = v156 >> 2;
            v6 = &v157[8 * (v156 >> 2)];
            v112 = v6;
            v160 = v27 - v111;
            if (v27 != v111)
            {
              v112 = (v6 + v160);
              v161 = v160 - 8;
              if (v161 >= 0x18)
              {
                v163 = 8 * v159;
                if ((&v157[8 * v159] - v111) < 0x20)
                {
                  v162 = &v157[8 * (v156 >> 2)];
                  goto LABEL_232;
                }

                v164 = (v161 >> 3) + 1;
                v165 = 8 * (v164 & 0x3FFFFFFFFFFFFFFCLL);
                v162 = (v6 + v165);
                v166 = (v111 + 2);
                v167 = &v157[v163 + 16];
                v168 = v164 & 0x3FFFFFFFFFFFFFFCLL;
                do
                {
                  v169 = *v166;
                  *(v167 - 1) = *(v166 - 1);
                  *v167 = v169;
                  v166 += 2;
                  v167 += 2;
                  v168 -= 4;
                }

                while (v168);
                if (v164 != (v164 & 0x3FFFFFFFFFFFFFFCLL))
                {
                  v111 = (v111 + v165);
                  goto LABEL_232;
                }
              }

              else
              {
                v162 = &v157[8 * (v156 >> 2)];
                do
                {
LABEL_232:
                  v170 = *v111++;
                  *v162 = v170;
                  v162 += 8;
                }

                while (v162 != v112);
              }
            }

            v27 = &v157[8 * v156];
            if (v342)
            {
              free(v342);
            }

            v47 = v158;
LABEL_236:
            v18 = v345;
          }

          else
          {
            v6 = v111;
          }

          *v112 = *j;
          v112 += 8;
          j = a2->i64[1] + 8;
          a2->i64[1] = j;
          v111 = v6;
          if (!--v32)
          {
            goto LABEL_187;
          }

          continue;
        }
      }
    }
  }

  v28 = j - v6;
  if (j <= v6)
  {
    goto LABEL_247;
  }

  v338 = v20;
  v29 = 32 * v25 - 1;
  if (v10 == v9)
  {
    v29 = 0;
    ++v28;
  }

  if (v28)
  {
    v30 = (v28 >> 8) + 1;
  }

  else
  {
    v30 = v28 >> 8;
  }

  v31 = v29 - v7;
  if (v30 >= v31 >> 8)
  {
    v32 = v31 >> 8;
  }

  else
  {
    v32 = v30;
  }

  if (v30 <= v31 >> 8)
  {
LABEL_55:
    for (a2[2].i64[0] = v6 + (v32 << 8); v32; --v32)
    {
      v48 = a2[1].i64[0];
      v346 = *(v48 - 8);
      a2[1].i64[0] = v48 - 8;
      std::__split_buffer<void (nw::object::**)(void),nw::c_allocator<void (nw::object::**)(void)>>::emplace_front<void (nw::object::**)(void)>(a2, &v346);
    }

    goto LABEL_246;
  }

  v334 = j;
  j = v30 - v32;
  v33 = a2[1].i64[1] - a2->i64[0];
  v34 = (v10 - v9) >> 3;
  if (v30 - v32 <= (v33 >> 3) - v34)
  {
    if (!j)
    {
      goto LABEL_244;
    }

    v50 = v27;
    v27 = 255;
    while (v9 != a2->i64[0])
    {
      v51 = malloc_type_calloc(0x100uLL, 0x10uLL, 0x80040803F642BuLL);
      if (!v51)
      {
        goto LABEL_54;
      }

      v346 = v51;
      std::__split_buffer<void (nw::object::**)(void),nw::c_allocator<void (nw::object::**)(void)>>::emplace_front<void (nw::object::**)(void)>(a2, &v346);
      v9 = a2->i64[1];
      if (a2[1].i64[0] - v9 == 8)
      {
        v52 = 255;
      }

      else
      {
        v52 = 256;
      }

      v6 = v52 + a2[2].i64[0];
      a2[2].i64[0] = v6;
      if (!--j)
      {
        v27 = v50;
        goto LABEL_244;
      }
    }

    v32 += j;
    v27 = v50;
    do
    {
      v172 = malloc_type_calloc(0x100uLL, 0x10uLL, 0x80040803F642BuLL);
      if (!v172)
      {
        goto LABEL_54;
      }

      v346 = v172;
      std::__split_buffer<void (nw::object::**)(void),nw::c_allocator<void (nw::object::**)(void)>>::emplace_back<void (nw::object::**&)(void)>(a2, &v346);
      --j;
    }

    while (j);
    v6 = a2[2].u64[0];
LABEL_244:
    a2[2].i64[0] = v6 + (v32 << 8);
    for (j = v334; v32; --v32)
    {
      v173 = a2[1].i64[0];
      v346 = *(v173 - 8);
      a2[1].i64[0] = v173 - 8;
      std::__split_buffer<void (nw::object::**)(void),nw::c_allocator<void (nw::object::**)(void)>>::emplace_front<void (nw::object::**)(void)>(a2, &v346);
    }

    goto LABEL_246;
  }

  v330 = v31;
  v332 = v27;
  v27 = v10 == v9;
  if (v33 >> 2 <= j + v34)
  {
    v35 = j + v34;
  }

  else
  {
    v35 = v33 >> 2;
  }

  if (v35)
  {
    v36 = malloc_type_calloc(v35, 8uLL, 0x80040B8603338uLL);
    if (!v36)
    {
      goto LABEL_54;
    }
  }

  else
  {
    v36 = 0;
  }

  v329 = (v30 << 8) - v27;
  v6 = 0x80040803F642BLL;
  v54 = &v36[8 * v35];
  v55 = v36;
  v27 = v36;
  do
  {
    v56 = malloc_type_calloc(0x100uLL, 0x10uLL, 0x80040803F642BuLL);
    if (!v56)
    {
      goto LABEL_54;
    }

    if (v27 == v54)
    {
      if (v55 > v36)
      {
        v57 = (((v55 - v36) >> 3) + 1 + ((((v55 - v36) >> 3) + 1) >> 63)) >> 1;
        v58 = &v55[-8 * v57];
        if (v54 != v55)
        {
          v59 = v56;
          memmove(&v55[-8 * v57], v55, v54 - v55);
          v56 = v59;
        }

        v27 = &v58[v54 - v55];
        v55 = v58;
        v18 = v345;
LABEL_78:
        v6 = 0x80040803F642BLL;
        goto LABEL_79;
      }

      v336 = v56;
      v339 = v36;
      if (v54 == v36)
      {
        v60 = 1;
      }

      else
      {
        v60 = (v54 - v36) >> 2;
      }

      v61 = malloc_type_calloc(v60, 8uLL, 0x80040B8603338uLL);
      if (!v61)
      {
        goto LABEL_54;
      }

      v62 = v61;
      v63 = v60 >> 2;
      v64 = &v61[8 * (v60 >> 2)];
      v27 = v64;
      v65 = v54 - v55;
      if (v54 != v55)
      {
        v27 = &v64[v65];
        v66 = v65 - 8;
        if (v66 >= 0x18)
        {
          v68 = 8 * v63;
          if ((&v61[8 * v63] - v55) >= 0x20)
          {
            v69 = (v66 >> 3) + 1;
            v70 = 8 * (v69 & 0x3FFFFFFFFFFFFFFCLL);
            v67 = &v64[v70];
            v71 = (v55 + 16);
            v72 = &v61[v68 + 16];
            v73 = v69 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v74 = *v71;
              *(v72 - 1) = *(v71 - 1);
              *v72 = v74;
              v71 += 2;
              v72 += 32;
              v73 -= 4;
            }

            while (v73);
            if (v69 == (v69 & 0x3FFFFFFFFFFFFFFCLL))
            {
              goto LABEL_99;
            }

            v55 += v70;
          }

          else
          {
            v67 = &v61[8 * (v60 >> 2)];
          }
        }

        else
        {
          v67 = &v61[8 * (v60 >> 2)];
        }

        do
        {
          v75 = *v55;
          v55 += 8;
          *v67 = v75;
          v67 += 8;
        }

        while (v67 != v27);
      }

LABEL_99:
      v54 = &v61[8 * v60];
      if (v339)
      {
        free(v339);
      }

      v55 = v64;
      v36 = v62;
      v56 = v336;
      v18 = v345;
      goto LABEL_78;
    }

LABEL_79:
    *v27 = v56;
    v27 += 8;
    --j;
  }

  while (j);
  j = a2[1].u64[0];
  if (v330 >= 0x100)
  {
    while (v27 != v54)
    {
      v6 = v55;
LABEL_134:
      *v27 = *(j - 8);
      v27 += 8;
      j = a2[1].i64[0] - 8;
      a2[1].i64[0] = j;
      v55 = v6;
      if (!--v32)
      {
        goto LABEL_104;
      }
    }

    if (v55 > v36)
    {
      v95 = (((v55 - v36) >> 3) + 1 + ((((v55 - v36) >> 3) + 1) >> 63)) >> 1;
      v6 = &v55[-8 * v95];
      if (v54 != v55)
      {
        memmove(&v55[-8 * v95], v55, v54 - v55);
      }

      v27 = v6 + v54 - v55;
LABEL_157:
      v18 = v345;
      goto LABEL_134;
    }

    v340 = v36;
    if (v54 == v36)
    {
      v96 = 1;
    }

    else
    {
      v96 = (v54 - v36) >> 2;
    }

    v97 = malloc_type_calloc(v96, 8uLL, 0x80040B8603338uLL);
    if (!v97)
    {
      goto LABEL_54;
    }

    v98 = v97;
    v99 = v96 >> 2;
    v6 = &v97[8 * (v96 >> 2)];
    v27 = v6;
    v100 = v54 - v55;
    if (v54 != v55)
    {
      v27 = v6 + v100;
      v101 = v100 - 8;
      if (v101 >= 0x18)
      {
        v103 = 8 * v99;
        if ((&v97[8 * v99] - v55) >= 0x20)
        {
          v104 = (v101 >> 3) + 1;
          v105 = 8 * (v104 & 0x3FFFFFFFFFFFFFFCLL);
          v102 = (v6 + v105);
          v106 = (v55 + 16);
          v107 = &v97[v103 + 16];
          v108 = v104 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v109 = *v106;
            *(v107 - 1) = *(v106 - 1);
            *v107 = v109;
            v106 += 2;
            v107 += 32;
            v108 -= 4;
          }

          while (v108);
          if (v104 == (v104 & 0x3FFFFFFFFFFFFFFCLL))
          {
            goto LABEL_154;
          }

          v55 += v105;
        }

        else
        {
          v102 = &v97[8 * (v96 >> 2)];
        }
      }

      else
      {
        v102 = &v97[8 * (v96 >> 2)];
      }

      do
      {
        v110 = *v55;
        v55 += 8;
        *v102 = v110;
        v102 += 8;
      }

      while (v102 != v27);
    }

LABEL_154:
    v54 = &v97[8 * v96];
    if (v340)
    {
      free(v340);
    }

    v36 = v98;
    goto LABEL_157;
  }

  v6 = v55;
LABEL_104:
  v32 = a2->u64[1];
  if (v32 != j)
  {
    while (v27 != v54)
    {
      v76 = v6;
LABEL_109:
      v78 = *v32;
      v32 += 8;
      *v27 = v78;
      v27 += 8;
      v6 = v76;
      if (v32 == a2[1].i64[0])
      {
        goto LABEL_106;
      }
    }

    if (v6 > v36)
    {
      v79 = (((v6 - v36) >> 3) + 1 + ((((v6 - v36) >> 3) + 1) >> 63)) >> 1;
      v76 = (v6 - 8 * v79);
      if (v54 != v6)
      {
        memmove((v6 - 8 * v79), v6, &v54[-v6]);
      }

      v27 = &v54[v76 - v6];
LABEL_132:
      v18 = v345;
      goto LABEL_109;
    }

    j = v36;
    if (v54 == v36)
    {
      v80 = 1;
    }

    else
    {
      v80 = (v54 - v36) >> 2;
    }

    v81 = malloc_type_calloc(v80, 8uLL, 0x80040B8603338uLL);
    if (!v81)
    {
      goto LABEL_54;
    }

    v82 = v81;
    v83 = v80 >> 2;
    v76 = &v81[8 * (v80 >> 2)];
    v27 = v76;
    v84 = &v54[-v6];
    if (v54 != v6)
    {
      v27 = &v84[v76];
      v85 = (v84 - 8);
      if (v85 >= 0x18)
      {
        v87 = 8 * v83;
        if (&v81[8 * v83 - v6] >= 0x20)
        {
          v88 = (v85 >> 3) + 1;
          v89 = 8 * (v88 & 0x3FFFFFFFFFFFFFFCLL);
          v86 = &v76[v89];
          v90 = (v6 + 16);
          v91 = &v81[v87 + 16];
          v92 = v88 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v93 = *v90;
            *(v91 - 1) = *(v90 - 1);
            *v91 = v93;
            v90 += 2;
            v91 += 32;
            v92 -= 4;
          }

          while (v92);
          if (v88 == (v88 & 0x3FFFFFFFFFFFFFFCLL))
          {
            goto LABEL_129;
          }

          v6 += v89;
        }

        else
        {
          v86 = &v81[8 * (v80 >> 2)];
        }
      }

      else
      {
        v86 = &v81[8 * (v80 >> 2)];
      }

      do
      {
        v94 = *v6;
        v6 += 8;
        *v86 = v94;
        v86 += 8;
      }

      while (v86 != v27);
    }

LABEL_129:
    v54 = &v81[8 * v80];
    if (j)
    {
      free(j);
    }

    v36 = v82;
    goto LABEL_132;
  }

  v76 = v6;
LABEL_106:
  v77 = a2->i64[0];
  a2->i64[0] = v36;
  a2->i64[1] = v76;
  a2[1].i64[0] = v27;
  a2[1].i64[1] = v54;
  a2[2].i64[0] += v329;
  v27 = v332;
  j = v334;
  if (v77)
  {
    free(v77);
  }

LABEL_246:
  v6 = a2[2].u64[0];
  v9 = a2->i64[1];
  v10 = a2[1].i64[0];
  v23 = v6 >> 8;
  v20 = v338;
LABEL_247:
  v174 = (v9 + 8 * v23);
  if (v10 == v9)
  {
    v175 = 0;
    v176 = j - v27;
    if (j <= v27)
    {
      goto LABEL_254;
    }

LABEL_249:
    if (v27 >= j >> 1)
    {
      v177 = v176 + (&v21[-*v344] >> 4);
      if (v177 >= 1)
      {
        v344 += v177 >> 8;
        v178 = *v344;
LABEL_258:
        v181 = &v178[16 * v177];
        if (v181 != v21)
        {
          goto LABEL_259;
        }

LABEL_270:
        v179 = v175;
        v180 = v174;
        goto LABEL_271;
      }

      v187 = 255 - v177;
      v188 = ~v187;
      v344 -= v187 >> 8;
      v189 = *v344;
    }

    else
    {
      if (!v27)
      {
        v344 = v18;
        v181 = v20;
        if (v20 == v21)
        {
          goto LABEL_270;
        }

        goto LABEL_259;
      }

      v177 = (&v20[-*v18] >> 4) - v27;
      if (v177 >= 1)
      {
        v344 = (v18 + 8 * (v177 >> 8));
        v178 = *v344;
        goto LABEL_258;
      }

      v190 = 255 - v177;
      v188 = ~v190;
      v344 = (v18 - 8 * (v190 >> 8));
      v189 = *v344;
    }

    v181 = &v189[16 * v188];
    if (v181 == v21)
    {
      goto LABEL_270;
    }

LABEL_259:
    v182 = v344;
    v183 = v181;
    v180 = v174;
    v179 = v175;
    do
    {
      if (v179 == *v180)
      {
        v185 = *--v180;
        v179 = (v185 + 4096);
      }

      if (v183 == *v182)
      {
        v186 = *--v182;
        v183 = (v186 + 4096);
      }

      v184 = *(v183 - 1);
      v183 -= 16;
      *(v179 - 1) = v184;
      v179 -= 16;
      a2[2] = vaddq_s64(a2[2], xmmword_182B08D20);
    }

    while (v183 != v21);
LABEL_271:
    v21 = v181;
    j = v27;
    if (!v27)
    {
      return;
    }

LABEL_272:
    v191 = v27;
    v192 = j + (&v175[-*v174] >> 4);
    if (v192 < 1)
    {
      v195 = 255 - v192;
      v193 = &v174[-(v195 >> 8)];
      v194 = &(*v193)[16 * ~v195];
      if (v194 == v175)
      {
        goto LABEL_282;
      }
    }

    else
    {
      v193 = &v174[v192 >> 8];
      v194 = &(*v193)[16 * v192];
      if (v194 == v175)
      {
        goto LABEL_282;
      }
    }

    v196 = v193;
    v197 = v194;
    do
    {
      if (v179 == *v180)
      {
        v199 = *--v180;
        v179 = (v199 + 4096);
      }

      if (v197 == *v196)
      {
        v200 = *--v196;
        v197 = (v200 + 4096);
      }

      v198 = *(v197 - 1);
      v197 -= 16;
      *(v179 - 1) = v198;
      v179 -= 16;
      a2[2] = vaddq_s64(a2[2], xmmword_182B08D20);
    }

    while (v197 != v175);
LABEL_282:
    if (j < v191)
    {
      v201 = *v174;
      v202 = v191 + (&v175[-*v174] >> 4);
      if (v202 < 1)
      {
        v225 = 255 - v202;
        v203 = &v174[-(v225 >> 8)];
        v204 = &(*v203)[16 * ~v225];
        if (v193 != v203)
        {
          goto LABEL_285;
        }
      }

      else
      {
        v203 = &v174[v202 >> 8];
        v204 = &(*v203)[16 * v202];
        if (v193 != v203)
        {
LABEL_285:
          v205 = (*v193 + 4096);
          v343 = v21;
          if (v205 != v194)
          {
            v206 = v203;
            while (1)
            {
              v207 = (v201 - v175 + 4096) >> 4;
              if ((v205 - v194) >> 4 < v207)
              {
                v207 = (v205 - v194) >> 4;
              }

              v208 = 16 * v207;
              if (v207)
              {
                memmove(v175, v194, 16 * v207);
              }

              v194 += v208;
              if (v194 == v205)
              {
                break;
              }

              v209 = v174[1];
              ++v174;
              v201 = v209;
              v175 = v209;
            }

            v175 += v208;
            v201 = *v174;
            if ((*v174 + 4096) == v175)
            {
              v210 = v174[1];
              ++v174;
              v201 = v210;
              v175 = v210;
            }

            v203 = v206;
            v21 = v343;
          }

          v211 = v193 + 1;
          if (v193 + 1 != v203)
          {
            do
            {
              v212 = v203;
              v213 = v20;
              v214 = 0;
              v215 = *v211;
              while (1)
              {
                v216 = (v201 - v175 + 4096) >> 4;
                if ((4096 - v214) >> 4 < v216)
                {
                  v216 = (4096 - v214) >> 4;
                }

                v217 = 16 * v216;
                if (v216)
                {
                  memmove(v175, &v215[v214], 16 * v216);
                }

                v214 += v217;
                if (v214 == 4096)
                {
                  break;
                }

                v218 = v174[1];
                ++v174;
                v201 = v218;
                v175 = v218;
              }

              v175 += v217;
              v201 = *v174;
              if ((*v174 + 4096) == v175)
              {
                v219 = v174[1];
                ++v174;
                v201 = v219;
                v175 = v219;
              }

              v20 = v213;
              v203 = v212;
              ++v211;
            }

            while (v211 != v212);
            v18 = v345;
            v21 = v343;
          }

          v220 = *v211;
          if (*v211 == v204)
          {
            goto LABEL_330;
          }

          v221 = *v174;
          while (1)
          {
            v222 = (v221 - v175 + 4096) >> 4;
            if ((v204 - v220) >> 4 < v222)
            {
              v222 = (v204 - v220) >> 4;
            }

            v223 = 16 * v222;
            if (v222)
            {
              memmove(v175, v220, 16 * v222);
            }

            v220 += v223;
            if (v220 == v204)
            {
              break;
            }

            v224 = v174[1];
            ++v174;
            v221 = v224;
            v175 = v224;
          }

          v175 += v223;
          goto LABEL_328;
        }
      }

      if (v194 != v204)
      {
        while (1)
        {
          v227 = (v201 - v175 + 4096) >> 4;
          if ((v204 - v194) >> 4 < v227)
          {
            v227 = (v204 - v194) >> 4;
          }

          v228 = 16 * v227;
          if (v227)
          {
            memmove(v175, v194, 16 * v227);
          }

          v194 += v228;
          if (v194 == v204)
          {
            break;
          }

          v226 = v174[1];
          ++v174;
          v201 = v226;
          v175 = v226;
        }

        v175 += v228;
LABEL_328:
        if ((*v174 + 4096) == v175)
        {
          v229 = v174[1];
          ++v174;
          v175 = v229;
        }
      }
    }

LABEL_330:
    if (v344 == v18)
    {
      if (v21 != v20)
      {
        v232 = *v174;
        v231 = (v174 + 1);
        v230 = v232;
        while (1)
        {
          v233 = (v230 - v175 + 4096) >> 4;
          v234 = (v20 - v21) >> 4 >= v233 ? v233 : (v20 - v21) >> 4;
          if (v234)
          {
            memmove(v175, v21, 16 * v234);
          }

          v21 += 16 * v234;
          if (v21 == v20)
          {
            break;
          }

          v235 = *v231++;
          v230 = v235;
          v175 = v235;
        }
      }
    }

    else
    {
      v236 = *v344 + 4096;
      if (v236 != v21)
      {
        v237 = *v174;
        while (1)
        {
          v238 = (v237 - v175 + 4096) >> 4;
          if ((v236 - v21) >> 4 < v238)
          {
            v238 = (v236 - v21) >> 4;
          }

          v239 = 16 * v238;
          if (v238)
          {
            memmove(v175, v21, 16 * v238);
          }

          v21 += v239;
          if (v21 == v236)
          {
            break;
          }

          v240 = v174[1];
          ++v174;
          v237 = v240;
          v175 = v240;
        }

        v175 += v239;
        if ((*v174 + 4096) == v175)
        {
          v241 = v174[1];
          ++v174;
          v175 = v241;
        }
      }

      v242 = (v344 + 1);
      if (v344 + 1 != v18)
      {
        v243 = *v174;
        do
        {
          v244 = 0;
          v245 = *v242;
          while (1)
          {
            v246 = (v243 - v175 + 4096) >> 4;
            if ((4096 - v244) >> 4 < v246)
            {
              v246 = (4096 - v244) >> 4;
            }

            v247 = 16 * v246;
            if (v246)
            {
              memmove(v175, &v245[v244], 16 * v246);
            }

            v244 += v247;
            if (v244 == 4096)
            {
              break;
            }

            v248 = v174[1];
            ++v174;
            v243 = v248;
            v175 = v248;
          }

          v175 += v247;
          v243 = *v174;
          if ((*v174 + 4096) == v175)
          {
            v249 = v174[1];
            ++v174;
            v243 = v249;
            v175 = v249;
          }

          ++v242;
        }

        while (v242 != v18);
      }

      v250 = *v242;
      if (*v242 != v20)
      {
        v253 = *v174;
        v252 = (v174 + 1);
        v251 = v253;
        while (1)
        {
          v254 = (v251 - v175 + 4096) >> 4;
          if ((v20 - v250) >> 4 >= v254)
          {
            v255 = v254;
          }

          else
          {
            v255 = (v20 - v250) >> 4;
          }

          if (v255)
          {
            memmove(v175, v250, 16 * v255);
          }

          v250 += 16 * v255;
          if (v250 == v20)
          {
            break;
          }

          v256 = *v252++;
          v251 = v256;
          v175 = v256;
        }
      }
    }

    return;
  }

  v175 = (*v174 + 16 * v6);
  v176 = j - v27;
  if (j > v27)
  {
    goto LABEL_249;
  }

LABEL_254:
  v179 = v175;
  v180 = v174;
  if (j)
  {
    goto LABEL_272;
  }
}

void nw::object::_class(nw::object *this)
{
  {
    nw::object::_class(void)::instance = "object";
    unk_1ED4119D0 = 6;
    xmmword_1ED4119D8 = 0u;
    unk_1ED4119E8 = 0u;
    xmmword_1ED4119F8 = 0u;
    *&qword_1ED411A08 = 0u;
    *(&xmmword_1ED411A10 + 8) = 0u;
    *&qword_1ED411A28 = 0u;
    xmmword_1ED411A38 = 0u;
    unk_1ED411A48 = 0u;
    qword_1ED411A58 = &qword_1ED411A58;
    unk_1ED411A60 = &qword_1ED411A58;
    qword_1ED411A68 = 0;
    dword_1ED411A70 = 0;
  }
}

os_unfair_lock_s *nw_path_evaluator_copy_path(os_unfair_lock_s *result)
{
  if (result)
  {
    v1 = result;
    v2 = result;
    os_unfair_lock_lock(v1 + 24);
    v3 = v2[6];
    os_unfair_lock_unlock(v1 + 24);

    return v3;
  }

  return result;
}

nw_path_status_t nw_path_get_status(nw_path_t path)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = path;
  v2 = v1;
  if (v1)
  {
    status = _nw_path_get_status(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_get_status";
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
        v16 = "nw_path_get_status";
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
          v16 = "nw_path_get_status";
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
        v16 = "nw_path_get_status";
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
        v16 = "nw_path_get_status";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  status = nw_path_status_invalid;
LABEL_3:

  return status;
}

uint64_t _nw_path_get_status(char *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
  v2 = a1;
  swift_beginAccess();
  v3 = v1[116];

  return v3;
}

uint64_t nw_delta_nanos(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = dword_1ED4117CC;
  if (dword_1ED4117CC)
  {
    return (a2 - a1) * time_base / v4;
  }

  mach_timebase_info(&time_base);
  v4 = dword_1ED4117CC;
  if (dword_1ED4117CC)
  {
    return (a2 - a1) * time_base / v4;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v19 = "nw_delta_nanos";
  v6 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (__nwlog_fault(v6, &type, &v16))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v8 = type;
      if (os_log_type_enabled(gLogObj, type))
      {
        *buf = 136446210;
        v19 = "nw_delta_nanos";
        v9 = "%{public}s nw_init_timebase failed";
LABEL_16:
        v14 = v7;
        v15 = v8;
LABEL_17:
        _os_log_impl(&dword_181A37000, v14, v15, v9, buf, 0xCu);
      }
    }

    else if (v16 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      v12 = type;
      v13 = os_log_type_enabled(gLogObj, type);
      if (backtrace_string)
      {
        if (v13)
        {
          *buf = 136446466;
          v19 = "nw_delta_nanos";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v11, v12, "%{public}s nw_init_timebase failed, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_18;
      }

      if (v13)
      {
        *buf = 136446210;
        v19 = "nw_delta_nanos";
        v9 = "%{public}s nw_init_timebase failed, no backtrace";
        v14 = v11;
        v15 = v12;
        goto LABEL_17;
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v8 = type;
      if (os_log_type_enabled(gLogObj, type))
      {
        *buf = 136446210;
        v19 = "nw_delta_nanos";
        v9 = "%{public}s nw_init_timebase failed, backtrace limit exceeded";
        goto LABEL_16;
      }
    }
  }

LABEL_18:
  if (v6)
  {
    free(v6);
  }

  return 1;
}

uint64_t nw_settings_get_signposts_enabled()
{
  if (_nw_signposts_once != -1)
  {
    dispatch_once(&_nw_signposts_once, &__block_literal_global_35_93832);
  }

  return _nw_signposts_enabled;
}

void _nw_hash_table_release(os_unfair_lock_s *a1, uint64_t a2)
{
  nw_hash_table_release_all_objects(a1, a2);
  if (a1[10]._os_unfair_lock_opaque)
  {
    os_unfair_lock_opaque = a1[14]._os_unfair_lock_opaque;
    if ((os_unfair_lock_opaque & 2) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = __nwlog_obj(v3, v4);
    os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    v7 = _os_log_send_and_compose_impl();
    if (__nwlog_should_abort(v7))
    {
      __break(1u);
      return;
    }

    free(v7);
    os_unfair_lock_opaque = a1[14]._os_unfair_lock_opaque;
    if ((os_unfair_lock_opaque & 2) == 0)
    {
LABEL_3:
      a1[14]._os_unfair_lock_opaque = os_unfair_lock_opaque & 0xFFFFFFFC;
      if (a1[13]._os_unfair_lock_opaque)
      {
        return;
      }

      goto LABEL_10;
    }
  }

  os_unfair_lock_lock(a1 + 15);
  v9 = a1[13]._os_unfair_lock_opaque;
  v8 = a1[14]._os_unfair_lock_opaque;
  a1[14]._os_unfair_lock_opaque = v8 & 0xFFFFFFFE;
  if ((v8 & 2) != 0)
  {
    os_unfair_lock_unlock(a1 + 15);
  }

  if (!v9)
  {
LABEL_10:
    free(a1);
  }
}

void nw_hash_table_release_all_objects(uint64_t a1, uint64_t a2)
{
  v61 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = a1;
    if (*(a1 + 40))
    {
      v4 = *(a1 + 56);
      if ((v4 & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    v25 = __nwlog_obj(a1, a2);
    os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
    *buf = 136446210;
    v58 = "nw_hash_table_lock";
    v26 = _os_log_send_and_compose_impl();
    should_abort = __nwlog_should_abort(v26);
    if (!should_abort)
    {
      free(v26);
      v4 = *(v3 + 56);
      if ((v4 & 2) == 0)
      {
LABEL_5:
        if (v4)
        {
          v5 = *(v3 + 40);
          if (v5)
          {
            v6 = 0;
            v7 = (v3 + 64);
            v54 = 136446210;
            v2 = "%{public}s Tried to remove all hash nodes and one was not in list";
            do
            {
              v8 = *v7;
              if (*v7)
              {
                v53 = v6;
                do
                {
                  v13 = v8;
                  v8 = *v8;
                  v14 = *(v13 + 30);
                  if (v14 == 1)
                  {
                    *(v13 + 30) = 2;
                    v15 = *(v3 + 24);
                    if (v15)
                    {
                      a1 = v15(v13[2]);
                      v13[2] = 0;
                    }

                    --*(v3 + 48);
                    v16 = v13[1];
                    if (!v16 || *v16 != v13)
                    {
                      v17 = pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                      networkd_settings_init(v17);
                      os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
                      *buf = 136446210;
                      v58 = "nw_hash_table_remove_node_internal";
                      v18 = _os_log_send_and_compose_impl();
                      should_abort = __nwlog_should_abort(v18);
                      if (should_abort)
                      {
                        goto LABEL_47;
                      }

                      free(v18);
                    }

                    if (!*(v13 + 14))
                    {
                      nw_hash_node_free(v7, v13);
                    }
                  }

                  else if (v14 != 2 || !*(v13 + 14))
                  {
                    v19 = __nwlog_obj(a1, a2);
                    os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
                    v20 = *(v13 + 30);
                    v21 = "invalid_state";
                    if (v20 <= 3)
                    {
                      v21 = off_1E6A39598[v20];
                    }

                    v9 = *(v13 + 14);
                    *buf = 136446722;
                    v58 = "nw_hash_table_release_all_objects";
                    v59 = 2082;
                    *v60 = v21;
                    *&v60[8] = 1024;
                    *&v60[10] = v9;
                    v10 = _os_log_send_and_compose_impl();
                    should_abort = __nwlog_should_abort(v10);
                    if (should_abort)
                    {
                      goto LABEL_47;
                    }

                    free(v10);
                  }
                }

                while (v8);
                v5 = *(v3 + 40);
                v6 = v53;
              }

              ++v6;
              v7 += 2;
            }

            while (v6 < v5);
          }

          if (!*(v3 + 48))
          {
            goto LABEL_29;
          }

          __nwlog_obj(a1, a2);
          v33 = *(v3 + 48);
          *buf = 136446466;
          v58 = "nw_hash_table_release_all_objects";
          v59 = 1024;
          *v60 = v33;
          v34 = _os_log_send_and_compose_impl();
          type = OS_LOG_TYPE_ERROR;
          v55 = 0;
          v35 = __nwlog_fault(v34, &type, &v55);
          if (!v35)
          {
            goto LABEL_82;
          }

          if (type == OS_LOG_TYPE_FAULT)
          {
            v37 = __nwlog_obj(v35, v36);
            v38 = type;
            if (os_log_type_enabled(v37, type))
            {
              v39 = *(v3 + 48);
              *buf = 136446466;
              v58 = "nw_hash_table_release_all_objects";
              v59 = 1024;
              *v60 = v39;
              v40 = "%{public}s table count %u != 0";
LABEL_81:
              _os_log_impl(&dword_181A37000, v37, v38, v40, buf, 0x12u);
            }
          }

          else if (v55 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            v37 = __nwlog_obj(backtrace_string, v48);
            v38 = type;
            v49 = os_log_type_enabled(v37, type);
            if (backtrace_string)
            {
              if (v49)
              {
                v50 = *(v3 + 48);
                *buf = 136446722;
                v58 = "nw_hash_table_release_all_objects";
                v59 = 1024;
                *v60 = v50;
                *&v60[4] = 2082;
                *&v60[6] = backtrace_string;
                _os_log_impl(&dword_181A37000, v37, v38, "%{public}s table count %u != 0, dumping backtrace:%{public}s", buf, 0x1Cu);
              }

              free(backtrace_string);
              goto LABEL_82;
            }

            if (v49)
            {
              v52 = *(v3 + 48);
              *buf = 136446466;
              v58 = "nw_hash_table_release_all_objects";
              v59 = 1024;
              *v60 = v52;
              v40 = "%{public}s table count %u != 0, no backtrace";
              goto LABEL_81;
            }
          }

          else
          {
            v37 = __nwlog_obj(v35, v36);
            v38 = type;
            if (os_log_type_enabled(v37, type))
            {
              v51 = *(v3 + 48);
              *buf = 136446466;
              v58 = "nw_hash_table_release_all_objects";
              v59 = 1024;
              *v60 = v51;
              v40 = "%{public}s table count %u != 0, backtrace limit exceeded";
              goto LABEL_81;
            }
          }

LABEL_82:
          if (v34)
          {
            free(v34);
          }

          *(v3 + 48) = 0;
LABEL_29:
          if ((*(v3 + 56) & 2) != 0)
          {
            os_unfair_lock_unlock((v3 + 60));
          }

          return;
        }

        __nwlog_obj(a1, a2);
        *buf = 136446210;
        v58 = "nw_hash_table_release_all_objects";
        v27 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v55 = 0;
        v28 = __nwlog_fault(v27, &type, &v55);
        if (v28)
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            v30 = __nwlog_obj(v28, v29);
            v31 = type;
            if (!os_log_type_enabled(v30, type))
            {
              goto LABEL_77;
            }

            *buf = 136446210;
            v58 = "nw_hash_table_release_all_objects";
            v32 = "%{public}s called with invalid hash table";
            goto LABEL_76;
          }

          if (v55 != 1)
          {
            v30 = __nwlog_obj(v28, v29);
            v31 = type;
            if (!os_log_type_enabled(v30, type))
            {
              goto LABEL_77;
            }

            *buf = 136446210;
            v58 = "nw_hash_table_release_all_objects";
            v32 = "%{public}s called with invalid hash table, backtrace limit exceeded";
            goto LABEL_76;
          }

          v44 = __nw_create_backtrace_string();
          v30 = __nwlog_obj(v44, v45);
          v31 = type;
          v46 = os_log_type_enabled(v30, type);
          if (v44)
          {
            if (v46)
            {
              *buf = 136446466;
              v58 = "nw_hash_table_release_all_objects";
              v59 = 2082;
              *v60 = v44;
              _os_log_impl(&dword_181A37000, v30, v31, "%{public}s called with invalid hash table, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v44);
            goto LABEL_77;
          }

          if (v46)
          {
            *buf = 136446210;
            v58 = "nw_hash_table_release_all_objects";
            v32 = "%{public}s called with invalid hash table, no backtrace";
LABEL_76:
            _os_log_impl(&dword_181A37000, v30, v31, v32, buf, 0xCu);
          }
        }

LABEL_77:
        if (v27)
        {
          free(v27);
        }

        goto LABEL_29;
      }

LABEL_4:
      os_unfair_lock_lock((v3 + 60));
      v4 = *(v3 + 56);
      goto LABEL_5;
    }

LABEL_47:
    __break(1u);
  }

  else
  {
    __nwlog_obj(0, a2);
    v54 = 136446210;
    *buf = 136446210;
    v2 = "nw_hash_table_release_all_objects";
    v58 = "nw_hash_table_release_all_objects";
    v3 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v55 = 0;
    should_abort = __nwlog_fault(v3, &type, &v55);
    if (!should_abort)
    {
      goto LABEL_72;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v22 = __nwlog_obj(should_abort, v12);
      v23 = type;
      if (!os_log_type_enabled(v22, type))
      {
        goto LABEL_72;
      }

      *buf = 136446210;
      v58 = "nw_hash_table_release_all_objects";
      v24 = "%{public}s called with null table";
      goto LABEL_71;
    }
  }

  if (v55 != 1)
  {
    v22 = __nwlog_obj(should_abort, v12);
    v23 = type;
    if (!os_log_type_enabled(v22, type))
    {
      goto LABEL_72;
    }

    *buf = v54;
    v58 = v2;
    v24 = "%{public}s called with null table, backtrace limit exceeded";
    goto LABEL_71;
  }

  v41 = __nw_create_backtrace_string();
  v22 = __nwlog_obj(v41, v42);
  v23 = type;
  v43 = os_log_type_enabled(v22, type);
  if (v41)
  {
    if (v43)
    {
      *buf = 136446466;
      v58 = v2;
      v59 = 2082;
      *v60 = v41;
      _os_log_impl(&dword_181A37000, v22, v23, "%{public}s called with null table, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v41);
    goto LABEL_72;
  }

  if (v43)
  {
    *buf = v54;
    v58 = v2;
    v24 = "%{public}s called with null table, no backtrace";
LABEL_71:
    _os_log_impl(&dword_181A37000, v22, v23, v24, buf, 0xCu);
  }

LABEL_72:
  if (v3)
  {
    free(v3);
  }
}

void ___ZL45nw_activity_should_use_elevated_sampling_ratev_block_invoke()
{
  v23 = *MEMORY[0x1E69E9840];
  if (os_variant_has_internal_diagnostics())
  {
    bzero(&v22, 0x500uLL);
    v0 = uname(&v22);
    if (v0)
    {
      v1 = v0;
      v2 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v3 = gLogObj;
      *buf = 136446722;
      v17 = "nw_activity_should_use_elevated_sampling_rate_block_invoke";
      v18 = 1024;
      *v19 = v1;
      *&v19[4] = 1024;
      *&v19[6] = v2;
      v4 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v14 = 0;
      if (!__nwlog_fault(v4, &type, &v14))
      {
        goto LABEL_23;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v6 = type;
        if (os_log_type_enabled(v5, type))
        {
          *buf = 136446722;
          v17 = "nw_activity_should_use_elevated_sampling_rate_block_invoke";
          v18 = 1024;
          *v19 = v1;
          *&v19[4] = 1024;
          *&v19[6] = v2;
          v7 = "%{public}s uname failed (%d) %{darwin.errno}d";
LABEL_20:
          v12 = v5;
          v13 = v6;
LABEL_21:
          _os_log_impl(&dword_181A37000, v12, v13, v7, buf, 0x18u);
        }
      }

      else
      {
        if (v14 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v5 = gLogObj;
          v10 = type;
          v11 = os_log_type_enabled(v5, type);
          if (backtrace_string)
          {
            if (v11)
            {
              *buf = 136446978;
              v17 = "nw_activity_should_use_elevated_sampling_rate_block_invoke";
              v18 = 1024;
              *v19 = v1;
              *&v19[4] = 1024;
              *&v19[6] = v2;
              v20 = 2082;
              v21 = backtrace_string;
              _os_log_impl(&dword_181A37000, v5, v10, "%{public}s uname failed (%d) %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x22u);
            }

            free(backtrace_string);
            goto LABEL_23;
          }

          if (!v11)
          {
            goto LABEL_22;
          }

          *buf = 136446722;
          v17 = "nw_activity_should_use_elevated_sampling_rate_block_invoke";
          v18 = 1024;
          *v19 = v1;
          *&v19[4] = 1024;
          *&v19[6] = v2;
          v7 = "%{public}s uname failed (%d) %{darwin.errno}d, no backtrace";
          v12 = v5;
          v13 = v10;
          goto LABEL_21;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v6 = type;
        if (os_log_type_enabled(v5, type))
        {
          *buf = 136446722;
          v17 = "nw_activity_should_use_elevated_sampling_rate_block_invoke";
          v18 = 1024;
          *v19 = v1;
          *&v19[4] = 1024;
          *&v19[6] = v2;
          v7 = "%{public}s uname failed (%d) %{darwin.errno}d, backtrace limit exceeded";
          goto LABEL_20;
        }
      }

LABEL_22:

LABEL_23:
      if (v4)
      {
        free(v4);
      }

      return;
    }

    if (gLogDatapath == 1)
    {
      if (__nwlog_activity_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_activity_log::onceToken, &__block_literal_global_16_47419);
      }

      v8 = gactivityLogObj;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        v17 = "nw_activity_should_use_elevated_sampling_rate_block_invoke";
        v18 = 2080;
        *v19 = v22.machine;
        _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEBUG, "%{public}s Device: %s", buf, 0x16u);
      }
    }
  }
}

nw_path_monitor_t nw_path_monitor_create(void)
{
  v0 = _nw_parameters_create();
  nw_parameters_set_multipath_service(v0, nw_multipath_service_handover);
  evaluator_for_endpoint_no_evaluate = nw_path_create_evaluator_for_endpoint_no_evaluate(0, v0);

  return evaluator_for_endpoint_no_evaluate;
}

void nw_parameters_set_multipath_service(nw_parameters_t parameters, nw_multipath_service_t multipath_service)
{
  v15 = *MEMORY[0x1E69E9840];
  if (parameters)
  {

    _nw_parameters_set_multipath_service();
    return;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_set_multipath_service";
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
        v12 = "nw_parameters_set_multipath_service";
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
            v12 = "nw_parameters_set_multipath_service";
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
        v12 = "nw_parameters_set_multipath_service";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_set_multipath_service";
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

uint64_t sub_181A52FE0(uint64_t result, unint64_t a2)
{
  if ((~a2 & 0xF000000000000007) != 0)
  {
    return sub_181AAD084(result, a2);
  }

  return result;
}

uint64_t sub_181A53008(uint64_t a1, unint64_t a2)
{
  if ((~a2 & 0xF000000000000007) != 0)
  {
    return sub_181AAD03C(a1, a2);
  }

  return a1;
}

uint64_t sub_181A5301C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0xF000000000000007) != 0xD000000000000007)
  {
    return sub_181A53008(a1, a2);
  }

  return a1;
}

uint64_t sub_181A53040()
{

  ProtocolStack.transport.getter(&v9);
  v0 = v10;
  if ((~v10 & 0xF000000000000007) == 0)
  {

    sub_181A53008(v9, v0);
    return 0;
  }

  v2 = v9;
  sub_181AACFF4(v9, v10);
  sub_181A53008(v2, v0);
  v3 = v0 >> 61;
  if ((v0 >> 61) <= 2)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        v4 = &unk_1ED40FF50;
        v5 = &unk_1EA838DE0;
      }

      else
      {
        v4 = &qword_1ED40F830;
        v5 = &qword_1EA838AB0;
      }
    }

    else
    {
      v4 = &unk_1ED40F850;
      v5 = &unk_1EA838710;
    }

    goto LABEL_16;
  }

  if (v3 <= 4)
  {
    if (v3 == 3)
    {
      v4 = &unk_1ED40FB50;
      v5 = &unk_1EA838750;
    }

    else
    {
      v4 = &unk_1EA838AE0;
      v5 = &unk_1EA838DD0;
    }

LABEL_16:
    v6 = sub_181AA8428(v4, v5);
    goto LABEL_17;
  }

  if (v3 != 5)
  {

    return 0;
  }

  v6 = v0 & 0x1FFFFFFFFFFFFFFFLL;
LABEL_17:
  ObjectType = swift_getObjectType();
  v8 = (*(v6 + 336))(ObjectType, v6);

  sub_181A53008(v2, v0);
  return v8;
}

uint64_t ProtocolStack.transport.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = v3;
  v6 = v4;
  if ((v4 & 0xF000000000000007) == 0xD000000000000007)
  {
    *(v1 + 32) = xmmword_182AE3CC0;
    sub_181A5301C(v3, v4);
    v5 = 0;
    v6 = 0xF000000000000007;
  }

  *a1 = v5;
  a1[1] = v6;

  return sub_181A5325C(v3, v4);
}

uint64_t sub_181A5325C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0xF000000000000007) != 0xD000000000000007)
  {
    return sub_181AC8268(a1, a2);
  }

  return a1;
}

NWConcrete_nw_path_evaluator *nw_path_create_evaluator_for_endpoint(void *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  evaluator_for_endpoint_no_evaluate = nw_path_create_evaluator_for_endpoint_no_evaluate(a1, a2);
  v3 = evaluator_for_endpoint_no_evaluate;
  if (evaluator_for_endpoint_no_evaluate && (nw_path_evaluator_evaluate(evaluator_for_endpoint_no_evaluate, 0) & 1) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    *buf = 136446210;
    v16 = "nw_path_create_evaluator_for_endpoint";
    v5 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (__nwlog_fault(v5, &type, &v13))
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
          v16 = "nw_path_create_evaluator_for_endpoint";
          _os_log_impl(&dword_181A37000, v6, v7, "%{public}s nw_path_evaluator_evaluate failed", buf, 0xCu);
        }
      }

      else if (v13 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v6 = gLogObj;
        v10 = type;
        v11 = os_log_type_enabled(v6, type);
        if (backtrace_string)
        {
          if (v11)
          {
            *buf = 136446466;
            v16 = "nw_path_create_evaluator_for_endpoint";
            v17 = 2082;
            v18 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v10, "%{public}s nw_path_evaluator_evaluate failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          if (!v5)
          {
            goto LABEL_10;
          }

          goto LABEL_9;
        }

        if (v11)
        {
          *buf = 136446210;
          v16 = "nw_path_create_evaluator_for_endpoint";
          _os_log_impl(&dword_181A37000, v6, v10, "%{public}s nw_path_evaluator_evaluate failed, no backtrace", buf, 0xCu);
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
          v16 = "nw_path_create_evaluator_for_endpoint";
          _os_log_impl(&dword_181A37000, v6, v12, "%{public}s nw_path_evaluator_evaluate failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v5)
    {
LABEL_10:

      return 0;
    }

LABEL_9:
    free(v5);
    goto LABEL_10;
  }

  return v3;
}

NWConcrete_nw_path_evaluator *nw_path_create_evaluator_for_endpoint_no_evaluate(void *a1, void *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a1;
  v5 = a2;
  v6 = objc_alloc_init(NWConcrete_nw_path_evaluator);
  v7 = v6;
  if (v6)
  {
    if (v5)
    {
      objc_storeStrong(v6 + 1, a2);
      v8 = _nw_parameters_copy_default_protocol_stack(v5);
      v9 = v8;
      if (v8)
      {
        v10 = _nw_protocol_stack_copy_transport_protocol(v8);
        v11 = v10;
        if (v10)
        {
          v12 = v10;
          if (nw_protocol_copy_custom_ip_definition_onceToken != -1)
          {
            dispatch_once(&nw_protocol_copy_custom_ip_definition_onceToken, &__block_literal_global_55930);
          }

          v13 = nw_protocol_options_matches_definition(v12, nw_protocol_copy_custom_ip_definition_definition);

          if (v13)
          {
            *(v7 + 106) = nw_custom_ip_options_get_protocol(v12);
          }
        }
      }

      if (!v4)
      {
        goto LABEL_20;
      }
    }

    else
    {
      empty_stack = _nw_parameters_create_empty_stack();
      v19 = *(v7 + 1);
      *(v7 + 1) = empty_stack;

      if (!v4)
      {
        goto LABEL_20;
      }
    }

    v20 = v4;
    v21 = _nw_endpoint_get_type(v20);

    if (v21 == 4)
    {
      v22 = v20;
      v23 = _nw_endpoint_copy_host_port_endpoint_for_url(v22);

      v24 = *(v7 + 2);
      *(v7 + 2) = v23;

      nw_parameters_set_url_endpoint(*(v7 + 1), v22);
LABEL_22:
      *(v7 + 107) |= 0x40u;
      v25 = v7;
      goto LABEL_37;
    }

LABEL_20:
    objc_storeStrong(v7 + 2, a1);
    if (v4 == 0 && v5 == 0)
    {
      *(v7 + 107) |= 1u;
    }

    goto LABEL_22;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v14 = gLogObj;
  *buf = 136446210;
  v34 = "nw_path_create_evaluator_for_endpoint_no_evaluate";
  v15 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v31 = 0;
  if (!__nwlog_fault(v15, &type, &v31))
  {
    goto LABEL_35;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v16 = gLogObj;
    v17 = type;
    if (os_log_type_enabled(v16, type))
    {
      *buf = 136446210;
      v34 = "nw_path_create_evaluator_for_endpoint_no_evaluate";
      _os_log_impl(&dword_181A37000, v16, v17, "%{public}s [[NW_CONCRETE_CLASS_NAME(nw_path_evaluator) alloc] init] failed", buf, 0xCu);
    }

LABEL_34:

LABEL_35:
    if (!v15)
    {
      goto LABEL_37;
    }

LABEL_36:
    free(v15);
    goto LABEL_37;
  }

  if (v31 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v16 = gLogObj;
    v29 = type;
    if (os_log_type_enabled(v16, type))
    {
      *buf = 136446210;
      v34 = "nw_path_create_evaluator_for_endpoint_no_evaluate";
      _os_log_impl(&dword_181A37000, v16, v29, "%{public}s [[NW_CONCRETE_CLASS_NAME(nw_path_evaluator) alloc] init] failed, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_34;
  }

  backtrace_string = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v16 = gLogObj;
  v27 = type;
  v28 = os_log_type_enabled(v16, type);
  if (!backtrace_string)
  {
    if (v28)
    {
      *buf = 136446210;
      v34 = "nw_path_create_evaluator_for_endpoint_no_evaluate";
      _os_log_impl(&dword_181A37000, v16, v27, "%{public}s [[NW_CONCRETE_CLASS_NAME(nw_path_evaluator) alloc] init] failed, no backtrace", buf, 0xCu);
    }

    goto LABEL_34;
  }

  if (v28)
  {
    *buf = 136446466;
    v34 = "nw_path_create_evaluator_for_endpoint_no_evaluate";
    v35 = 2082;
    v36 = backtrace_string;
    _os_log_impl(&dword_181A37000, v16, v27, "%{public}s [[NW_CONCRETE_CLASS_NAME(nw_path_evaluator) alloc] init] failed, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(backtrace_string);
  if (v15)
  {
    goto LABEL_36;
  }

LABEL_37:

  return v7;
}

id _nw_parameters_createTm(char a1)
{
  Parameters.init(noInternetProtocol:)(a1, v3);
  v1 = sub_1821F2D80();
  memcpy(__dst, v3, sizeof(__dst));
  sub_181F48214(__dst);
  return v1;
}

uint64_t sub_181A53D78@<X0>(uint64_t a1@<X8>)
{
  if (nw_is_dispatch_allowed())
  {
    if (qword_1ED4106F0 != -1)
    {
      swift_once();
    }

    LODWORD(v2) = qword_1ED410700;
    LODWORD(v3) = HIDWORD(qword_1ED410700);
    v7[0] = xmmword_1ED410708;
  }

  else
  {
    v2 = sub_181A543CC(v7);
    v3 = HIDWORD(v2);
  }

  v4 = v7[0];
  v7[1] = v7[0];
  *a1 = v7[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 68) = v2;
  *(a1 + 72) = v3;
  *(a1 + 76) = 0;
  *(a1 + 80) = 1285;
  *(a1 + 84) = 1285;
  *(a1 + 86) = 0;
  *(a1 + 144) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 96) = 0u;
  if (qword_1ED4107E8 != -1)
  {
    swift_once();
  }

  v5 = qword_1ED411E40;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 152) = v5;
}

uint64_t nw_is_dispatch_allowed()
{
  pthread_once(&nw_settings_setup_atfork::pOnce, nw_settings_setup_atfork_inner);
  if (sNWIsBetweenForkAndExec == 1 && (sNWParentAllowedDispatch & 1) != 0)
  {
    return 0;
  }

  if (sNWDispatchAllowedNow)
  {
    return 1;
  }

  if ((_dispatch_is_fork_of_multithreaded_parent() & 1) != 0 || (_dispatch_is_multithreaded() & 1) == 0)
  {
    getpid();
    if (sandbox_check() != 1)
    {
      return sNWDispatchAllowedNow;
    }
  }

  result = 1;
  sNWDispatchAllowedNow = 1;
  return result;
}

int64_t networkd_settings_get_int64(const char *a1)
{
  networkd_settings_init();
  if (!sCachedSettings)
  {
    return 0;
  }

  pthread_mutex_lock(&sSettingsMutex);
  if (sCachedSettings)
  {
    int64 = xpc_dictionary_get_int64(sCachedSettings, a1);
  }

  else
  {
    int64 = 0;
  }

  pthread_mutex_unlock(&sSettingsMutex);
  return int64;
}

BOOL networkd_settings_get_BOOL(const char *a1)
{
  networkd_settings_init(a1);
  if (!sCachedSettings)
  {
    return 0;
  }

  pthread_mutex_lock(&sSettingsMutex);
  v2 = sCachedSettings;
  if (!sCachedSettings)
  {
    goto LABEL_7;
  }

  Class = object_getClass(sCachedSettings);
  v4 = 0;
  if (!a1 || Class != MEMORY[0x1E69E9E80])
  {
    goto LABEL_8;
  }

  value = xpc_dictionary_get_value(v2, a1);
  if (value && (v6 = value, object_getClass(value) == MEMORY[0x1E69E9E58]))
  {
    v4 = xpc_BOOL_get_value(v6);
  }

  else
  {
LABEL_7:
    v4 = 0;
  }

LABEL_8:
  pthread_mutex_unlock(&sSettingsMutex);
  return v4;
}

uint64_t ProtocolStack.init(noInternet:)(char a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = xmmword_182AE3C80;
  *(v1 + 56) = xmmword_182AE6A00;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  *(v1 + 88) = xmmword_182AE3C90;
  *(v1 + 104) = 0xF000000000000007;
  if ((a1 & 1) == 0)
  {
    swift_beginAccess();
    v2 = *(v1 + 48);
    v3 = *(v1 + 56);
    *(v1 + 48) = xmmword_182AE3CA0;
    sub_181A52FE0(v2, v3);
  }

  return v1;
}

uint64_t sub_181A541A4()
{
  result = type metadata accessor for Endpoint.EndpointType(319);
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_181A542A4()
{
  result = type metadata accessor for URLEndpoint();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_181A54338()
{
  result = sub_182AD2058();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_181A543CC(_OWORD *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = getpid();
  v3 = getuid();
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  if (proc_pidinfo(v2, 17, 1uLL, v10, 56) == 56)
  {
    v4 = v10[0];
  }

  else
  {
    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v5 = sub_182AD2698();
    __swift_project_value_buffer(v5, qword_1EA843148);
    v6 = sub_182AD2678();
    v7 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 67109120;
      *(v8 + 4) = v2;
      _os_log_impl(&dword_181A37000, v6, v7, "Failed to convert from local PID (%d to UUID", v8, 8u);
      MEMORY[0x1865DF520](v8, -1, -1);
    }

    v4 = 0uLL;
  }

  *a1 = v4;
  return v2 | (v3 << 32);
}

uint64_t sub_181A54548()
{
  v0 = nw_context_copy_implicit_context();
  type metadata accessor for NetworkContext();
  result = swift_allocObject();
  *(result + 16) = v0;
  qword_1ED411E40 = result;
  return result;
}

unint64_t sub_181A545D8()
{
  result = sub_181A543CC(&xmmword_1ED410708);
  qword_1ED410700 = result;
  return result;
}

void sub_181A5461C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_181A546E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_181A54748()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v2 = sub_182AD2388();
    v1 = *v2;
    *(v0 + 24) = *v2;
    swift_retain_n();
  }

  return v1;
}

void *nw_dictionary_create()
{
  v30 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  v0 = _os_object_alloc();
  if (!v0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    v27 = "nw_dictionary_create";
    v7 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (!__nwlog_fault(v7, &type, &v24))
    {
      goto LABEL_25;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v9 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_25;
      }

      *buf = 136446210;
      v27 = "nw_dictionary_create";
      v10 = "%{public}s nw_dictionary_obj_alloc failed";
    }

    else
    {
      if (v24 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v12 = gLogObj;
        v13 = type;
        v14 = os_log_type_enabled(gLogObj, type);
        if (backtrace_string)
        {
          if (v14)
          {
            *buf = 136446466;
            v27 = "nw_dictionary_create";
            v28 = 2082;
            v29 = backtrace_string;
            _os_log_impl(&dword_181A37000, v12, v13, "%{public}s nw_dictionary_obj_alloc failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_25;
        }

        if (!v14)
        {
LABEL_25:
          if (v7)
          {
            free(v7);
          }

          return 0;
        }

        *buf = 136446210;
        v27 = "nw_dictionary_create";
        v10 = "%{public}s nw_dictionary_obj_alloc failed, no backtrace";
        v19 = v12;
        v20 = v13;
LABEL_24:
        _os_log_impl(&dword_181A37000, v19, v20, v10, buf, 0xCu);
        goto LABEL_25;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v9 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_25;
      }

      *buf = 136446210;
      v27 = "nw_dictionary_create";
      v10 = "%{public}s nw_dictionary_obj_alloc failed, backtrace limit exceeded";
    }

    v19 = v8;
    v20 = v9;
    goto LABEL_24;
  }

  v1 = v0;
  v2 = xpc_dictionary_create(0, 0, 0);
  v1[2] = v2;
  if (!v2)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    v27 = "nw_dictionary_create";
    v3 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (__nwlog_fault(v3, &type, &v24))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v4 = gLogObj;
        v5 = type;
        if (os_log_type_enabled(gLogObj, type))
        {
          *buf = 136446210;
          v27 = "nw_dictionary_create";
          v6 = "%{public}s xpc_dictionary_create failed";
LABEL_29:
          v21 = v4;
          v22 = v5;
LABEL_30:
          _os_log_impl(&dword_181A37000, v21, v22, v6, buf, 0xCu);
        }
      }

      else if (v24 == 1)
      {
        v15 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v16 = gLogObj;
        v17 = type;
        v18 = os_log_type_enabled(gLogObj, type);
        if (v15)
        {
          if (v18)
          {
            *buf = 136446466;
            v27 = "nw_dictionary_create";
            v28 = 2082;
            v29 = v15;
            _os_log_impl(&dword_181A37000, v16, v17, "%{public}s xpc_dictionary_create failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v15);
          goto LABEL_31;
        }

        if (v18)
        {
          *buf = 136446210;
          v27 = "nw_dictionary_create";
          v6 = "%{public}s xpc_dictionary_create failed, no backtrace";
          v21 = v16;
          v22 = v17;
          goto LABEL_30;
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v4 = gLogObj;
        v5 = type;
        if (os_log_type_enabled(gLogObj, type))
        {
          *buf = 136446210;
          v27 = "nw_dictionary_create";
          v6 = "%{public}s xpc_dictionary_create failed, backtrace limit exceeded";
          goto LABEL_29;
        }
      }
    }

LABEL_31:
    if (v3)
    {
      free(v3);
    }

    os_release(v1);
    return 0;
  }

  return v1;
}

void nw_dictionary_set_value(uint64_t a1, const char *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v18 = "nw_dictionary_set_value";
    v7 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (!__nwlog_fault(v7, &type, &v15))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_38;
      }

      *buf = 136446210;
      v18 = "nw_dictionary_set_value";
      v10 = "%{public}s called with null dictionary";
      goto LABEL_37;
    }

    if (v15 != 1)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_38;
      }

      *buf = 136446210;
      v18 = "nw_dictionary_set_value";
      v10 = "%{public}s called with null dictionary, backtrace limit exceeded";
      goto LABEL_37;
    }

    backtrace_string = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v9 = type;
    v12 = os_log_type_enabled(v8, type);
    if (!backtrace_string)
    {
      if (!v12)
      {
        goto LABEL_38;
      }

      *buf = 136446210;
      v18 = "nw_dictionary_set_value";
      v10 = "%{public}s called with null dictionary, no backtrace";
      goto LABEL_37;
    }

    if (v12)
    {
      *buf = 136446466;
      v18 = "nw_dictionary_set_value";
      v19 = 2082;
      v20 = backtrace_string;
      _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null dictionary, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
LABEL_38:
    if (!v7)
    {
      return;
    }

    goto LABEL_39;
  }

  if (!*(a1 + 16))
  {
    __nwlog_obj();
    *buf = 136446210;
    v18 = "nw_dictionary_set_value";
    v7 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (!__nwlog_fault(v7, &type, &v15))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_38;
      }

      *buf = 136446210;
      v18 = "nw_dictionary_set_value";
      v10 = "%{public}s called with null dictionary->xpc_object";
      goto LABEL_37;
    }

    if (v15 != 1)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_38;
      }

      *buf = 136446210;
      v18 = "nw_dictionary_set_value";
      v10 = "%{public}s called with null dictionary->xpc_object, backtrace limit exceeded";
      goto LABEL_37;
    }

    v13 = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v9 = type;
    v14 = os_log_type_enabled(v8, type);
    if (v13)
    {
      if (v14)
      {
        *buf = 136446466;
        v18 = "nw_dictionary_set_value";
        v19 = 2082;
        v20 = v13;
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null dictionary->xpc_object, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v13);
      if (!v7)
      {
        return;
      }

LABEL_39:
      free(v7);
      return;
    }

    if (v14)
    {
      *buf = 136446210;
      v18 = "nw_dictionary_set_value";
      v10 = "%{public}s called with null dictionary->xpc_object, no backtrace";
LABEL_37:
      _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
      goto LABEL_38;
    }

    goto LABEL_38;
  }

  pointer = xpc_dictionary_get_pointer();
  if (a3)
  {
    os_retain(a3);
    xpc_dictionary_set_pointer();
    if (!pointer)
    {
      return;
    }
  }

  else
  {
    xpc_dictionary_set_value(*(a1 + 16), a2, 0);
    if (!pointer)
    {
      return;
    }
  }

  os_release(pointer);
}

uint64_t sub_181A5513C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void nw_allow_use_of_dispatch_internal()
{
  if (sNWIsBetweenForkAndExec != 1 || (sNWParentAllowedDispatch & 1) == 0 && !_dispatch_is_fork_of_multithreaded_parent())
  {
    goto LABEL_6;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
  v0 = _os_log_send_and_compose_impl();
  if (!__nwlog_should_abort(v0))
  {
    free(v0);
LABEL_6:
    pthread_once(&nw_settings_setup_atfork::pOnce, nw_settings_setup_atfork_inner);
    sNWDispatchAllowedNow = 1;
    networkd_settings_init();
    networkd_settings_setup_notify_watch();
    return;
  }

  __break(1u);
}

void *sub_181A552E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B608);
  v3 = sub_182AD3EE8();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_181A41ED8(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = sub_181A41ED8(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t _nw_endpoint_get_type(void *a1)
{
  v2 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC7Network8Endpoint_type;
  v6 = a1;
  swift_beginAccess();
  sub_181A546E0(a1 + v5, v4, type metadata accessor for Endpoint.EndpointType);

  v7 = dword_182AF5E14[swift_getEnumCaseMultiPayload()];
  sub_181A5513C(v4, type metadata accessor for Endpoint.EndpointType);
  return v7;
}

uint64_t sub_181A554F4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void nw_path_evaluator_start(void *a1)
{
  v60 = *MEMORY[0x1E69E9840];
  v1 = a1;
  nw_allow_use_of_dispatch_internal();
  if (v1)
  {
    os_unfair_lock_lock(v1 + 24);
    if (*(v1 + 6) || (nw_path_evaluator_evaluate(v1, 0) & 1) != 0)
    {
      if ((v1[107] & 0x30) != 0)
      {
LABEL_5:
        os_unfair_lock_unlock(v1 + 24);
        goto LABEL_76;
      }

      v1[107] |= 0x10u;
      v2 = _nw_parameters_copy_immutable(*(v1 + 1));
      v3 = *(v1 + 1);
      *(v1 + 1) = v2;

      v4 = nw_parameters_copy_context(*(v1 + 1));
      nw_path_watch_necp_changes(v4);
      globals_for_path = nw_context_get_globals_for_path(v4);
      os_unfair_lock_lock((globals_for_path + 116));
      if (*(globals_for_path + 136))
      {
        v7 = *(globals_for_path + 56);
        if (v7)
        {
          nw_queue_resume_source(v7, v6);
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v8 = gLogObj;
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446210;
            *&buf[4] = "nw_path_evaluator_start";
            _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEBUG, "%{public}s Resuming NECP source", buf, 0xCu);
          }
        }
      }

      if ((v1[107] & 1) == 0)
      {
        memset(buf, 0, 37);
        uuid_unparse(v1 + 80, buf);
        v9 = *(globals_for_path + 32);
        if (!v9)
        {
          v10 = nw_dictionary_create();
          v11 = *(globals_for_path + 32);
          *(globals_for_path + 32) = v10;

          v9 = *(globals_for_path + 32);
        }

        nw_dictionary_set_value(v9, buf, v1);
LABEL_64:
        os_unfair_lock_unlock((globals_for_path + 116));
        if ((v1[107] & 0x40) != 0)
        {
          v37 = nw_parameters_copy_context(*(v1 + 1));
          if (!v37 || (v38 = v37[33] == 4, v37, !v38))
          {
            if (__nwlog_path_log::onceToken != -1)
            {
              dispatch_once(&__nwlog_path_log::onceToken, &__block_literal_global_52);
            }

            v39 = gpathLogObj;
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
            {
              v40 = *(v1 + 2);
              v41 = v40;
              if (v40)
              {
                logging_description = _nw_endpoint_get_logging_description(v40);
              }

              else
              {
                logging_description = "<NULL>";
              }

              v43 = *(v1 + 1);
              v44 = *(v1 + 6);
              *buf = 136447490;
              *&buf[4] = "nw_path_evaluator_start";
              *&buf[12] = 1042;
              *&buf[14] = 16;
              *&buf[18] = 2098;
              *&buf[20] = v1 + 80;
              *&buf[28] = 2082;
              *&buf[30] = logging_description;
              v56 = 2112;
              v57 = v43;
              v58 = 2112;
              v59 = v44;
              _os_log_impl(&dword_181A37000, v39, OS_LOG_TYPE_DEFAULT, "%{public}s [%{public,uuid_t}.16P %{public}s %@]\n\tpath: %@", buf, 0x3Au);
            }
          }
        }

        os_unfair_lock_unlock(v1 + 24);

        goto LABEL_76;
      }

      if (uuid_is_null(globals_for_path))
      {
        *globals_for_path = *(v1 + 5);
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v16 = gLogObj;
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
LABEL_61:

          v34 = *(globals_for_path + 48);
          if (v34 || (v35 = _nw_array_create(), v36 = *(globals_for_path + 48), *(globals_for_path + 48) = v35, v36, (v34 = *(globals_for_path + 48)) != 0))
          {
            _nw_array_append(v34, v1);
          }

          goto LABEL_64;
        }

        *buf = 136446210;
        *&buf[4] = "nw_path_evaluator_start";
        v17 = "%{public}s Registering client as default path evaluator";
LABEL_60:
        _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_DEBUG, v17, buf, 0xCu);
        goto LABEL_61;
      }

      nw_path_shared_necp_fd(v4);
      if (!necp_client_action())
      {
LABEL_56:
        *(v1 + 5) = *globals_for_path;
        v33 = *(v1 + 6);
        if (v33)
        {
          _nw_path_set_client_id(v33, globals_for_path);
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v16 = gLogObj;
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_61;
        }

        *buf = 136446210;
        *&buf[4] = "nw_path_evaluator_start";
        v17 = "%{public}s Adding client to default path evaluator";
        goto LABEL_60;
      }

      v22 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v23 = gLogObj;
      *buf = 136446466;
      *&buf[4] = "nw_path_evaluator_start";
      *&buf[12] = 1024;
      *&buf[14] = v22;
      v24 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v53 = 0;
      if (__nwlog_fault(v24, &type, &v53))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v25 = __nwlog_obj();
          v26 = type;
          if (os_log_type_enabled(v25, type))
          {
            *buf = 136446466;
            *&buf[4] = "nw_path_evaluator_start";
            *&buf[12] = 1024;
            *&buf[14] = v22;
            _os_log_impl(&dword_181A37000, v25, v26, "%{public}s NECP_CLIENT_ACTION_REMOVE error %{darwin.errno}d", buf, 0x12u);
          }
        }

        else if (v53 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v25 = __nwlog_obj();
          v29 = type;
          v30 = os_log_type_enabled(v25, type);
          if (backtrace_string)
          {
            if (v30)
            {
              *buf = 136446722;
              *&buf[4] = "nw_path_evaluator_start";
              *&buf[12] = 1024;
              *&buf[14] = v22;
              *&buf[18] = 2082;
              *&buf[20] = backtrace_string;
              _os_log_impl(&dword_181A37000, v25, v29, "%{public}s NECP_CLIENT_ACTION_REMOVE error %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
            }

            free(backtrace_string);
            goto LABEL_54;
          }

          if (v30)
          {
            *buf = 136446466;
            *&buf[4] = "nw_path_evaluator_start";
            *&buf[12] = 1024;
            *&buf[14] = v22;
            _os_log_impl(&dword_181A37000, v25, v29, "%{public}s NECP_CLIENT_ACTION_REMOVE error %{darwin.errno}d, no backtrace", buf, 0x12u);
          }
        }

        else
        {
          v25 = __nwlog_obj();
          v32 = type;
          if (os_log_type_enabled(v25, type))
          {
            *buf = 136446466;
            *&buf[4] = "nw_path_evaluator_start";
            *&buf[12] = 1024;
            *&buf[14] = v22;
            _os_log_impl(&dword_181A37000, v25, v32, "%{public}s NECP_CLIENT_ACTION_REMOVE error %{darwin.errno}d, backtrace limit exceeded", buf, 0x12u);
          }
        }
      }

LABEL_54:
      if (v24)
      {
        free(v24);
      }

      goto LABEL_56;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v12 = gLogObj;
    *buf = 136446210;
    *&buf[4] = "nw_path_evaluator_start";
    v13 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v53 = 0;
    if (__nwlog_fault(v13, &type, &v53))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v14 = gLogObj;
        v15 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_path_evaluator_start";
          _os_log_impl(&dword_181A37000, v14, v15, "%{public}s nw_path_evaluator_evaluate failed", buf, 0xCu);
        }
      }

      else if (v53 == 1)
      {
        v18 = __nw_create_backtrace_string();
        if (v18)
        {
          v19 = v18;
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v20 = gLogObj;
          v21 = type;
          if (os_log_type_enabled(v20, type))
          {
            *buf = 136446466;
            *&buf[4] = "nw_path_evaluator_start";
            *&buf[12] = 2082;
            *&buf[14] = v19;
            _os_log_impl(&dword_181A37000, v20, v21, "%{public}s nw_path_evaluator_evaluate failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v19);
          if (!v13)
          {
            goto LABEL_5;
          }

          goto LABEL_21;
        }

        v14 = __nwlog_obj();
        v31 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_path_evaluator_start";
          _os_log_impl(&dword_181A37000, v14, v31, "%{public}s nw_path_evaluator_evaluate failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v14 = gLogObj;
        v27 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_path_evaluator_start";
          _os_log_impl(&dword_181A37000, v14, v27, "%{public}s nw_path_evaluator_evaluate failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v13)
    {
      goto LABEL_5;
    }

LABEL_21:
    free(v13);
    goto LABEL_5;
  }

  v45 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_path_evaluator_start";
  v46 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v53 = 0;
  if (__nwlog_fault(v46, &type, &v53))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v47 = __nwlog_obj();
      v48 = type;
      if (os_log_type_enabled(v47, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_path_evaluator_start";
        _os_log_impl(&dword_181A37000, v47, v48, "%{public}s called with null evaluator", buf, 0xCu);
      }
    }

    else if (v53 == 1)
    {
      v49 = __nw_create_backtrace_string();
      v47 = __nwlog_obj();
      v50 = type;
      v51 = os_log_type_enabled(v47, type);
      if (v49)
      {
        if (v51)
        {
          *buf = 136446466;
          *&buf[4] = "nw_path_evaluator_start";
          *&buf[12] = 2082;
          *&buf[14] = v49;
          _os_log_impl(&dword_181A37000, v47, v50, "%{public}s called with null evaluator, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v49);
        goto LABEL_93;
      }

      if (v51)
      {
        *buf = 136446210;
        *&buf[4] = "nw_path_evaluator_start";
        _os_log_impl(&dword_181A37000, v47, v50, "%{public}s called with null evaluator, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v47 = __nwlog_obj();
      v52 = type;
      if (os_log_type_enabled(v47, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_path_evaluator_start";
        _os_log_impl(&dword_181A37000, v47, v52, "%{public}s called with null evaluator, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_93:
  if (v46)
  {
    free(v46);
  }

LABEL_76:
}

unint64_t sub_181A560F0()
{
  result = qword_1ED410668;
  if (!qword_1ED410668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED410668);
  }

  return result;
}

uint64_t sub_181A56144(char a1, uint64_t a2)
{
  v3 = *v2;
  v4 = (*v2 + 16);
  v5 = *v4;
  if (*v4 >= a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8386C0);
    v8 = swift_allocObject();
    v9 = *(v3 + 24);
    *(v8 + 16) = v5;
    *(v8 + 24) = v9;
    if (v9 >= 1)
    {
      sub_1820E5DF0(v8 + 16, (v8 + 40), v4, (v3 + 40));
    }
  }

  else
  {
    sub_182AD2398();
    if (a1)
    {
      v7 = *(v3 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8386C0);
      v8 = swift_allocObject();
      *(v8 + 16) = (_swift_stdlib_malloc_size(v8) - 40) / 20;
      *(v8 + 24) = v7;
      *(v8 + 32) = 0;
      if (v7 >= 1)
      {
        sub_181ADAC58(v8 + 16, (v8 + 40), v4, (v3 + 40));
        *(v3 + 24) = 0;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8386C0);
      v8 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v8);
      v11 = *(v3 + 24);
      *(v8 + 16) = (v10 - 40) / 20;
      *(v8 + 24) = v11;
      *(v8 + 32) = 0;
      if (v11 >= 1)
      {
        sub_181F47ED4(v8 + 16, (v8 + 40), v4, (v3 + 40));
      }
    }
  }

  *v2 = v8;
  return result;
}

void *sub_181A5630C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838E78);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

id nw_path_copy_interface_with_generation(void *a1, int a2, int a3)
{
  *(&v48[2] + 2) = *MEMORY[0x1E69E9840];
  v5 = a1;
  pthread_once(&nw_settings_setup_atfork::pOnce, nw_settings_setup_atfork_inner);
  if (a2)
  {
    globals_for_path = nw_context_get_globals_for_path(v5);
    os_unfair_lock_lock((globals_for_path + 116));
    if (*(globals_for_path + 72))
    {
      if (*(globals_for_path + 88))
      {
        goto LABEL_8;
      }
    }

    else
    {
      v8 = nw_dictionary_create();
      v9 = *(globals_for_path + 72);
      *(globals_for_path + 72) = v8;

      if (*(globals_for_path + 88))
      {
        goto LABEL_8;
      }
    }

    v10 = xpc_dictionary_create(0, 0, 0);
    v11 = *(globals_for_path + 88);
    *(globals_for_path + 88) = v10;

LABEL_8:
    v12 = *(globals_for_path + 72);
    v13 = *(globals_for_path + 88);
    v14 = mach_continuous_time();
    if (v14 <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = v14;
    }

    snprintf((globals_for_path + 137), 0xAuLL, "%u", a2);
    v16 = nw_dictionary_copy_value(v12, globals_for_path + 137);
    v17 = v16;
    if (v16 && ((generation = _nw_interface_get_generation(v16), !a3) || generation == a3))
    {
      v7 = v17;
      xpc_dictionary_set_uint64(v13, (globals_for_path + 137), v15);
    }

    else
    {
      v19 = nw_path_shared_necp_fd(v5);
      v7 = nw_interface_create_from_necp(v19, a2);
      if (v7)
      {
        xpc_dictionary_set_uint64(v13, (globals_for_path + 137), v15);
        nw_dictionary_set_value(v12, (globals_for_path + 137), v7);
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v20 = gLogObj;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446722;
          v46 = "nw_path_copy_interface_with_generation";
          v47 = 1024;
          LODWORD(v48[0]) = a2;
          WORD2(v48[0]) = 1024;
          *(v48 + 6) = a3;
          _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_DEBUG, "%{public}s Cache miss for interface for index %u (generation %u)", buf, 0x18u);
        }
      }
    }

    if (nw_dictionary_get_count(v12) < 0x11)
    {
      goto LABEL_49;
    }

    v21 = *(globals_for_path + 80);
    if (v21)
    {
      if (nw_delta_nanos(v21, v15) < 0x77359401)
      {
        goto LABEL_49;
      }
    }

    *(globals_for_path + 80) = v15;
    if (!v5 || v5[33] != 4)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v22 = gLogObj;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v46 = "nw_path_copy_interface_with_generation";
        v47 = 1024;
        LODWORD(v48[0]) = 16;
        _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_DEFAULT, "%{public}s Interface cache hit limit (%d), purging all interfaces not used recently", buf, 0x12u);
      }
    }

    v23 = xpc_array_create(0, 0);
    if (v23)
    {
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __nw_path_copy_interface_with_generation_block_invoke;
      v39[3] = &unk_1E6A39B10;
      v24 = v13;
      v40 = v24;
      v42 = v15;
      v25 = v23;
      v41 = v25;
      nw_dictionary_apply(v12, v39);
      applier[0] = MEMORY[0x1E69E9820];
      applier[1] = 3221225472;
      applier[2] = __nw_path_copy_interface_with_generation_block_invoke_2;
      applier[3] = &unk_1E6A39B38;
      v37 = v12;
      v38 = v24;
      xpc_array_apply(v25, applier);

LABEL_48:
LABEL_49:
      os_unfair_lock_unlock((globals_for_path + 116));

      goto LABEL_50;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v26 = gLogObj;
    *buf = 136446210;
    v46 = "nw_path_copy_interface_with_generation";
    v35 = _os_log_send_and_compose_impl();

    v44 = OS_LOG_TYPE_ERROR;
    v43 = 0;
    v27 = v35;
    if (!__nwlog_fault(v35, &v44, &v43))
    {
LABEL_46:
      if (v27)
      {
        free(v27);
      }

      goto LABEL_48;
    }

    if (v44 == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v28 = gLogObj;
      v29 = v44;
      if (os_log_type_enabled(v28, v44))
      {
        *buf = 136446210;
        v46 = "nw_path_copy_interface_with_generation";
        _os_log_impl(&dword_181A37000, v28, v29, "%{public}s xpc_array_create failed", buf, 0xCu);
      }
    }

    else if (v43 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v28 = __nwlog_obj();
      v31 = v44;
      v32 = os_log_type_enabled(v28, v44);
      if (backtrace_string)
      {
        if (v32)
        {
          *buf = 136446466;
          v46 = "nw_path_copy_interface_with_generation";
          v47 = 2082;
          v48[0] = backtrace_string;
          _os_log_impl(&dword_181A37000, v28, v31, "%{public}s xpc_array_create failed, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_45;
      }

      if (v32)
      {
        *buf = 136446210;
        v46 = "nw_path_copy_interface_with_generation";
        _os_log_impl(&dword_181A37000, v28, v31, "%{public}s xpc_array_create failed, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v28 = gLogObj;
      v33 = v44;
      if (os_log_type_enabled(v28, v44))
      {
        *buf = 136446210;
        v46 = "nw_path_copy_interface_with_generation";
        _os_log_impl(&dword_181A37000, v28, v33, "%{public}s xpc_array_create failed, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_45:
    v27 = v35;
    goto LABEL_46;
  }

  v7 = 0;
LABEL_50:

  return v7;
}

uint64_t nw_path_shared_necp_fd(void *a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = a1;
  pthread_once(&nw_settings_setup_atfork::pOnce, nw_settings_setup_atfork_inner);
  globals_for_path = nw_context_get_globals_for_path(v1);
  os_unfair_lock_lock((globals_for_path + 112));
  if ((*(globals_for_path + 124) & 0x80000000) == 0)
  {
    goto LABEL_2;
  }

  v5 = necp_open();
  if ((v5 & 0x80000000) == 0)
  {
    arc4random_buf((globals_for_path + 24), 8uLL);
    if (!change_fdguard_np())
    {
      *(globals_for_path + 136) |= 2u;
      *(globals_for_path + 124) = v5;
      goto LABEL_2;
    }

    v6 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    *buf = 136446722;
    v22 = "nw_path_shared_necp_fd";
    v23 = 1024;
    v24 = v5;
    v25 = 1024;
    v26 = v6;
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (__nwlog_fault(v8, &type, &v19))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446722;
          v22 = "nw_path_shared_necp_fd";
          v23 = 1024;
          v24 = v5;
          v25 = 1024;
          v26 = v6;
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s Failed to guard necp fd %d %{darwin.errno}d", buf, 0x18u);
        }
      }

      else if (v19 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        if (backtrace_string)
        {
          v14 = backtrace_string;
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v15 = gLogObj;
          v16 = type;
          if (os_log_type_enabled(v15, type))
          {
            *buf = 136446978;
            v22 = "nw_path_shared_necp_fd";
            v23 = 1024;
            v24 = v5;
            v25 = 1024;
            v26 = v6;
            v27 = 2082;
            v28 = v14;
            _os_log_impl(&dword_181A37000, v15, v16, "%{public}s Failed to guard necp fd %d %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x22u);
          }

          free(v14);
          if (!v8)
          {
            goto LABEL_12;
          }

          goto LABEL_11;
        }

        v9 = __nwlog_obj();
        v18 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446722;
          v22 = "nw_path_shared_necp_fd";
          v23 = 1024;
          v24 = v5;
          v25 = 1024;
          v26 = v6;
          _os_log_impl(&dword_181A37000, v9, v18, "%{public}s Failed to guard necp fd %d %{darwin.errno}d, no backtrace", buf, 0x18u);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v17 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446722;
          v22 = "nw_path_shared_necp_fd";
          v23 = 1024;
          v24 = v5;
          v25 = 1024;
          v26 = v6;
          _os_log_impl(&dword_181A37000, v9, v17, "%{public}s Failed to guard necp fd %d %{darwin.errno}d, backtrace limit exceeded", buf, 0x18u);
        }
      }
    }

    if (!v8)
    {
LABEL_12:
      close(v5);
      goto LABEL_2;
    }

LABEL_11:
    free(v8);
    goto LABEL_12;
  }

  v11 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v12 = gLogObj;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v22 = "nw_path_shared_necp_fd";
    v23 = 1024;
    v24 = v11;
    _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_ERROR, "%{public}s necp_open failed %{darwin.errno}d", buf, 0x12u);
  }

LABEL_2:
  v3 = *(globals_for_path + 124);
  os_unfair_lock_unlock((globals_for_path + 112));

  return v3;
}

uint64_t sub_181A56FDC()
{
  v239[4] = *MEMORY[0x1E69E9840];

  *(v0 + 264) = 0;
  v2 = *(v0 + 304);
  if (!v2)
  {
    return result;
  }

  v3 = v0;
  v4 = v2[3];
  if (v4 < 1)
  {
    return result;
  }

  v5 = v3;
  v6 = sub_181A560F0();
  v202 = v5;
  *(v5 + 264) = MEMORY[0x1865D99D0](v4, &type metadata for SystemUUID, &type metadata for NetworkAgent, v6);
  v7 = v2[4];
  v8 = v2[3] + v7;
  if (v2[2] < v8)
  {
    v8 = v2[2];
  }

  v227 = v2;
  v228 = v7;
  v229 = v8;
  v199 = &v234;

  v204 = 0;
  v10 = 0;
  v196 = 0;
  v197 = 0;
  v195 = 0;
  v194 = 0;
  v198 = 0;
  *&v11 = 136315138;
  v193 = v11;
  v192 = xmmword_182AE9730;
  while (1)
  {
    v203 = v10;
    while (1)
    {
      while (1)
      {
        if (v7 == v229)
        {
          v12 = sub_181AC81FC(v9);
          v13 = v227;
          if ((v12 & 1) == 0)
          {

            sub_181A554F4(v204);
            sub_181A554F4(v196);
            return sub_181A554F4(v195);
          }
        }

        else
        {
          v13 = v227;
        }

        v14 = v228;
        v214 = ++v228;
        v15 = v13 + 20 * v14;
        LODWORD(v207) = *(v15 + 40);
        v16 = *(v15 + 44);
        v17 = *(v15 + 45);
        v18 = *(v15 + 46);
        v19 = *(v15 + 47);
        v20 = *(v15 + 48);
        v21 = *(v15 + 49);
        v22 = *(v15 + 50);
        v23 = *(v15 + 51);
        v24 = *(v15 + 52);
        v25 = *(v15 + 53);
        v26 = *(v15 + 54);
        v27 = *(v15 + 55);
        v28 = *(v15 + 56);
        v29 = *(v15 + 57);
        v30 = *(v15 + 58);
        v31 = *(v15 + 59);
        v32 = v16;
        uu[0] = v16;
        v33 = v17;
        uu[1] = v17;
        v34 = v18;
        uu[2] = v18;
        v35 = v19;
        uu[3] = v19;
        v213 = v20;
        uu[4] = v20;
        v36 = v21;
        uu[5] = v21;
        v37 = v22;
        uu[6] = v22;
        v212 = v23;
        uu[7] = v23;
        v38 = v24;
        uu[8] = v24;
        v39 = v25;
        uu[9] = v25;
        v40 = v26;
        uu[10] = v26;
        v211 = v27;
        uu[11] = v27;
        v41 = v28;
        uu[12] = v28;
        v210 = v29;
        uu[13] = v29;
        v209 = v30;
        uu[14] = v30;
        v208 = v31;
        uu[15] = v31;
        if (uuid_is_null(uu) != 1)
        {
          break;
        }

        if (qword_1ED4106B8 != -1)
        {
          swift_once();
        }

        v42 = sub_182AD2698();
        __swift_project_value_buffer(v42, qword_1ED411DA8);
        v43 = sub_182AD2678();
        v44 = sub_182AD38B8();
        v45 = os_log_type_enabled(v43, v44);
        v7 = v214;
        if (v45)
        {
          v46 = v214;
          v47 = swift_slowAlloc();
          *v47 = 0;
          _os_log_impl(&dword_181A37000, v43, v44, "Invalid network agent UUID", v47, 2u);
          v48 = v47;
          v7 = v46;
          MEMORY[0x1865DF520](v48, -1, -1);
        }
      }

      v206 = v33;
      v49 = *(v202 + 32);
      swift_beginAccess();
      v205 = *(*(v49 + 296) + 16);
      v238 = 0;
      v239[0] = 0;
      v50 = swift_allocObject();
      v51 = v32;
      *(v50 + 16) = v32;
      *(v50 + 17) = v206;
      *(v50 + 18) = v34;
      *(v50 + 19) = v35;
      v52 = v35;
      v53 = v213;
      *(v50 + 20) = v213;
      *(v50 + 21) = v36;
      v54 = v36;
      v55 = v37;
      *(v50 + 22) = v37;
      LOBYTE(v49) = v212;
      *(v50 + 23) = v212;
      v56 = v38;
      *(v50 + 24) = v38;
      v57 = v39;
      *(v50 + 25) = v39;
      v58 = v40;
      *(v50 + 26) = v40;
      v59 = v211;
      *(v50 + 27) = v211;
      v60 = v41;
      *(v50 + 28) = v41;
      v61 = v210;
      *(v50 + 29) = v210;
      v62 = v209;
      *(v50 + 30) = v209;
      v63 = v208;
      *(v50 + 31) = v208;
      *(v50 + 32) = v207;
      v201 = v51;
      *(v50 + 36) = v51;
      v64 = v205;
      *(v50 + 37) = v206;
      v200 = v34;
      *(v50 + 38) = v34;
      *(v50 + 39) = v52;
      v65 = v52;
      *(v50 + 40) = v53;
      *(v50 + 41) = v54;
      v66 = v54;
      *(v50 + 42) = v55;
      *(v50 + 43) = v49;
      *(v50 + 44) = v56;
      *(v50 + 45) = v57;
      *(v50 + 46) = v58;
      *(v50 + 47) = v59;
      *(v50 + 48) = v60;
      *(v50 + 49) = v61;
      *(v50 + 50) = v62;
      *(v50 + 51) = v63;
      *(v50 + 56) = &v238;
      *(v50 + 64) = v239;
      v67 = v50;
      swift_unknownObjectRetain_n();
      sub_181A554F4(v204);
      v68 = swift_allocObject();
      *(v68 + 16) = sub_181ADB8F0;
      *(v68 + 24) = v67;
      v203 = v67;
      v236 = sub_181ADBAC8;
      v237 = v68;
      *uu = MEMORY[0x1E69E9820];
      *&uu[8] = 1107296256;
      v234 = sub_181ACCF58;
      v235 = &block_descriptor_52;
      v69 = _Block_copy(uu);

      nw_path_access_agent_cache(v64, v69);
      _Block_release(v69);
      if (v238)
      {
        break;
      }

      swift_unknownObjectRelease();
      if (qword_1ED4106B8 != -1)
      {
        swift_once();
      }

      v70 = sub_182AD2698();
      __swift_project_value_buffer(v70, qword_1ED411DA8);
      v71 = sub_182AD2678();
      v72 = sub_182AD38B8();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v207 = v187;
        *uu = v74;
        v75 = v74;
        *v73 = v193;
        MEMORY[0x1EEE9AC00](v74);
        v187[-16] = v201;
        v187[-15] = v206;
        v187[-14] = v200;
        v187[-13] = v65;
        v187[-12] = v213;
        v187[-11] = v66;
        v187[-10] = v55;
        v187[-9] = v212;
        v187[-8] = v56;
        v187[-7] = v57;
        v187[-6] = v76;
        v187[-5] = v211;
        v187[-4] = v60;
        v187[-3] = v210;
        v187[-2] = v209;
        v187[-1] = v208;
        v77 = v198;
        v78 = sub_182AD30D8();
        v198 = v77;
        v80 = sub_181C64FFC(v78, v79, uu);

        *(v73 + 4) = v80;
        v7 = v214;
        _os_log_impl(&dword_181A37000, v71, v72, "Unable to parse agent %s", v73, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v75);
        MEMORY[0x1865DF520](v75, -1, -1);
        MEMORY[0x1865DF520](v73, -1, -1);

        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
        v7 = v214;
      }

      v9 = swift_unknownObjectRelease();
      v204 = sub_181ADB8F0;
    }

    v81 = v202;
    if (!*(v202 + 264))
    {
      break;
    }

    v191 = v238;
    swift_retain_n();
    LODWORD(v190) = swift_isUniquelyReferenced_nonNull_native();
    v82 = *(v81 + 264);
    *uu = v82;
    v83 = v201 | (v206 << 8) | (v200 << 16) | (v65 << 24) | (v213 << 32) | (v66 << 40) | (v55 << 48) | (v212 << 56);
    v204 = v60;
    v84 = v56 | (v57 << 8) | (v58 << 16) | (v211 << 24) | (v60 << 32) | (v210 << 40) | (v209 << 48) | (v208 << 56);
    v85 = sub_181AC2218(v83, v84);
    v87 = *(v82 + 16);
    v88 = (v86 & 1) == 0;
    v164 = __OFADD__(v87, v88);
    v89 = v87 + v88;
    if (v164)
    {
      goto LABEL_132;
    }

    v90 = v86;
    if (*(v82 + 24) >= v89)
    {
      v92 = v206;
      v93 = v204;
      if (v190)
      {
        v94 = *uu;
        if (v86)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v95 = v85;
        sub_182256C70();
        v92 = v206;
        v85 = v95;
        v94 = *uu;
        if (v90)
        {
          goto LABEL_32;
        }
      }
    }

    else
    {
      sub_181AC4E88(v89, v190);
      v85 = sub_181AC2218(v83, v84);
      if ((v90 & 1) != (v91 & 1))
      {
        goto LABEL_140;
      }

      v92 = v206;
      v93 = v204;
      v94 = *uu;
      if (v90)
      {
LABEL_32:
        *(v94[7] + 8 * v85) = v191;

        goto LABEL_36;
      }
    }

    v94[(v85 >> 6) + 8] |= 1 << v85;
    v96 = (v94[6] + 16 * v85);
    *v96 = v201;
    v96[1] = v92;
    v96[2] = v200;
    v96[3] = v65;
    v96[4] = v213;
    v96[5] = v66;
    v96[6] = v55;
    v96[7] = v212;
    v96[8] = v56;
    v96[9] = v57;
    v96[10] = v58;
    v96[11] = v211;
    v96[12] = v93;
    v96[13] = v210;
    v96[14] = v209;
    v96[15] = v208;
    *(v94[7] + 8 * v85) = v191;
    v97 = v94[2];
    v164 = __OFADD__(v97, 1);
    v98 = v97 + 1;
    if (v164)
    {
      goto LABEL_134;
    }

    v94[2] = v98;
LABEL_36:
    *(v202 + 264) = v94;
    if (qword_1ED4106B8 != -1)
    {
      swift_once();
    }

    v99 = sub_182AD2698();
    __swift_project_value_buffer(v99, qword_1ED411DA8);
    v100 = v191;

    v101 = sub_182AD2678();
    v102 = sub_182AD38A8();

    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      v189 = v103;
      v190 = swift_slowAlloc();
      *uu = v190;
      *v103 = v193;
      v231[0] = v100;

      v188 = v102;
      v104 = NetworkAgent.description.getter();
      v106 = v105;

      v107 = sub_181C64FFC(v104, v106, uu);

      v108 = v189;
      *(v189 + 1) = v107;
      v109 = v108;
      _os_log_impl(&dword_181A37000, v101, v188, "Saved agent: %s", v108, 0xCu);
      v110 = v190;
      __swift_destroy_boxed_opaque_existential_1(v190);
      MEMORY[0x1865DF520](v110, -1, -1);
      MEMORY[0x1865DF520](v109, -1, -1);
    }

    v7 = v214;
    v111 = v196;
    v112 = v100;
    if (v100[9] == 2)
    {
      v113 = nw_path_bridge_copy_proxy_info();
      v112 = v191;
      if (v113)
      {
        v114 = v113;
        v115 = v202;
        v116 = *(v202 + 280);
        if (v116 || (v116 = xpc_array_create(0, 0), (*(v115 + 280) = v116) != 0))
        {
          xpc_array_append_value(v116, v114);
        }

        nw_path_bridge_release_proxy_info();
        swift_unknownObjectRelease();
        v111 = v196;
        v112 = v191;
      }
    }

    v117 = v202;
    if (v112[7] == 2 && (v112[9] - 6) <= 2)
    {
      v118 = v56;
      v119 = v112;
      v120 = nw_path_bridge_config_agent_dns_copy_resolver_config(v112[2]);
      if (v120)
      {
        v121 = v120;
        nw_resolver_config_set_generation(v120, *(v119 + 21));
        *uu = *(v119 + 2);
        v122 = sub_181AC1C5C(uu, v199);
        nw_resolver_config_set_identifier(v121, v122 + 2);

        *uu = v119;
        NetworkAgent.description.getter();
        v123 = sub_182AD3048();

        nw_resolver_config_set_provider_description(v121, v123 + 32);

        v124 = *(v202 + 224);
        if (!v124)
        {
          *(v202 + 224) = *sub_182AD2388();
        }

        v125 = *(v124 + 24);
        v126 = v125 + 1;
        if (__OFADD__(v125, 1))
        {
          goto LABEL_137;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v128 = *(v202 + 224);
        if (*(v128 + 16) < v126 || (isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_181AA69D8(isUniquelyReferenced_nonNull_native, v126);
          v128 = *(v202 + 224);
        }

        v129 = v198;
        sub_181AA8240((v128 + 16), v128 + 40, v121);
        v198 = v129;
        swift_unknownObjectRelease();
        v117 = v202;
        v7 = v214;
        v111 = v196;
      }

      else
      {
        v117 = v202;
      }

      LOBYTE(v56) = v118;
    }

    if (v239[0])
    {
      v190 = v239[0];
      v130 = *(v117 + 272);
      if (v130)
      {
        v131 = *(v130 + 24);
        v132 = v131 + 1;
        if (__OFADD__(v131, 1))
        {
          goto LABEL_135;
        }

        swift_unknownObjectRetain();
        v133 = swift_isUniquelyReferenced_nonNull_native();
        v134 = *(v202 + 272);
        if (*(v134 + 16) < v132 || (v133 & 1) == 0)
        {
          sub_181CA4444(v133, v132);
          v134 = *(v202 + 272);
        }

        v135 = v190;
        v136 = v198;
        sub_181AB467C((v134 + 16), v134 + 40, v190);
        v198 = v136;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8398C0);
        inited = swift_initStackObject();
        *(inited + 16) = v192;
        v138 = v56;
        v56 = v190;
        *(inited + 32) = v190;
        v189 = (inited + 32);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8386B8);
        v139 = swift_allocObject();
        v140 = _swift_stdlib_malloc_size(v139);
        v141 = v140 - 40;
        if (v140 < 40)
        {
          v141 = v140 - 33;
        }

        v139[2] = v141 >> 3;
        v139[3] = 0;
        v139[4] = 0;
        v142 = v198;
        sub_181E0D8E0((v139 + 2), (v139 + 5), 1uLL, inited);
        v198 = v142;
        swift_unknownObjectRetain_n();
        swift_setDeallocating();
        v135 = v56;
        LOBYTE(v56) = v138;
        swift_arrayDestroy();
        *(v202 + 272) = v139;
      }

      sub_181E0D950(v135, v231);
      v111 = v196;
      v143 = v201;
      if (!v232)
      {
        v149 = v56;
        v150 = 9;
        while (--v150)
        {
          v230 = 0;
          v144 = swift_allocObject();
          *(v144 + 16) = v231;
          *(v144 + 24) = v207;
          *(v144 + 28) = v143;
          *(v144 + 29) = v206;
          *(v144 + 30) = v200;
          *(v144 + 31) = v65;
          *(v144 + 32) = v213;
          *(v144 + 33) = v66;
          *(v144 + 34) = v55;
          *(v144 + 35) = v212;
          *(v144 + 36) = v149;
          *(v144 + 37) = v57;
          *(v144 + 38) = v58;
          *(v144 + 39) = v211;
          *(v144 + 40) = v204;
          *(v144 + 41) = v210;
          *(v144 + 42) = v209;
          *(v144 + 43) = v208;
          *(v144 + 48) = &v230;
          sub_181A554F4(v111);
          v151 = swift_allocObject();
          *(v151 + 16) = sub_181FD752C;
          *(v151 + 24) = v144;
          v236 = sub_181ADBAC8;
          v237 = v151;
          *uu = MEMORY[0x1E69E9820];
          *&uu[8] = 1107296256;
          v234 = sub_181ACCF58;
          v235 = &block_descriptor_72;
          v152 = _Block_copy(uu);

          nw_path_access_agent_cache(v205, v152);
          _Block_release(v152);
          v153 = v230;
          if (v230)
          {
            v197 = v150;
            v154 = swift_unknownObjectRetain();
            nw_proxy_config_set_is_fallback(v154, 1);
            v155 = *(v202 + 272);
            if (v155)
            {
              v156 = *(v155 + 24);
              v157 = v156 + 1;
              if (__OFADD__(v156, 1))
              {
                __break(1u);
LABEL_130:
                __break(1u);
LABEL_131:
                __break(1u);
LABEL_132:
                __break(1u);
LABEL_133:
                __break(1u);
LABEL_134:
                __break(1u);
LABEL_135:
                __break(1u);
LABEL_136:
                __break(1u);
LABEL_137:
                __break(1u);
LABEL_138:
                __break(1u);
              }

              v158 = swift_isUniquelyReferenced_nonNull_native();
              v159 = *(v202 + 272);
              if (v159[2] < v157 || (v158 & 1) == 0)
              {
                v196 = v153;
                sub_181CA4444(v158, v157);
                v153 = v196;
                v159 = *(v202 + 272);
              }

              v160 = v159[3];
              v161 = v159[4];
              v164 = __OFADD__(v161, v160);
              v162 = v161 + v160;
              if (v164)
              {
                goto LABEL_130;
              }

              if (v160 < 0)
              {
                if (v162 < 0)
                {
                  v166 = v159[2];
                  v164 = __OFADD__(v162, v166);
                  v162 += v166;
                  if (v164)
                  {
                    goto LABEL_136;
                  }
                }
              }

              else
              {
                v163 = v159[2];
                v164 = __OFSUB__(v162, v163);
                v165 = v162 - v163;
                if (v165 < 0 == v164)
                {
                  v162 = v165;
                  if (v164)
                  {
                    goto LABEL_133;
                  }
                }
              }

              v159[v162 + 5] = v153;
              v164 = __OFADD__(v160, 1);
              v167 = v160 + 1;
              if (v164)
              {
                goto LABEL_131;
              }

              v159[3] = v167;
              swift_unknownObjectRetain();
            }

            memset(uu, 0, sizeof(uu));
            nw_proxy_config_copy_fallback_proxy_agent(v153, uu);
            v196 = uu[0] | (uu[1] << 8) | (uu[2] << 16) | (uu[3] << 24) | (uu[4] << 32) | (uu[5] << 40) | (uu[6] << 48) | (uu[7] << 56);
            v215 = *uu;
            v216 = uu[2];
            v217 = uu[3];
            v218 = uu[4];
            v219 = uu[5];
            v220 = *&uu[6];
            v221 = *&uu[8];
            v222 = uu[10];
            v223 = uu[11];
            v168 = uu[8] | (uu[9] << 8) | (uu[10] << 16) | (uu[11] << 24) | (uu[12] << 32) | (uu[13] << 40) | (uu[14] << 48) | (uu[15] << 56);
            v224 = uu[12];
            v225 = uu[13];
            v226 = *&uu[14];
            is_null = uuid_is_null(&v215);
            swift_unknownObjectRelease();
            v170 = v196;
            if (is_null == 1)
            {
              v170 = 0;
              v171 = 0;
            }

            else
            {
              v171 = v168;
            }

            v231[0] = v170;
            v231[1] = v171;
            v232 = is_null == 1;
            v150 = v197;
          }

          swift_unknownObjectRelease();
          v111 = sub_181FD752C;
          v197 = v144;
          v143 = v201;
          if (v232)
          {
            goto LABEL_71;
          }
        }
      }

      v144 = v197;
LABEL_71:
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v197 = v144;
      v7 = v214;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    if (v191[7])
    {
LABEL_73:

      swift_unknownObjectRelease();
      goto LABEL_127;
    }

    if (v191[9] == 1)
    {
      v145 = v191[2];
      if (v145)
      {
        v146 = v191[3] - v145;
        v147 = v146 - 216;
        if (__OFSUB__(v146, 216))
        {
          goto LABEL_138;
        }

        v148 = v145 + 216;
      }

      else
      {
        v147 = 0;
        v148 = 0;
      }

      v172 = nw_path_override_info_create_from_data(v148, v147);
      if (!v172)
      {
        goto LABEL_73;
      }

      v173 = v172;
      v174 = swift_unknownObjectRetain();
      if (nw_path_override_info_uses_wifi(v174))
      {
        v175 = *(v202 + 156);
        if ((v175 & 0x400000) == 0)
        {
          *(v202 + 156) = v175 | 0x400000;
        }
      }

      if (nw_path_override_info_uses_cellular(v173))
      {
        v176 = *(v202 + 156);
        if ((v176 & 0x800000) == 0)
        {
          *(v202 + 156) = v176 | 0x800000;
        }
      }

      if (nw_path_override_info_expensive(v173))
      {
        v177 = *(v202 + 156);
        if ((v177 & 0x80000) == 0)
        {
          *(v202 + 156) = v177 | 0x80000;
        }
      }

      if (nw_path_override_info_roaming(v173))
      {
        v178 = *(v202 + 156);
        if ((v178 & 0x200000) == 0)
        {
          *(v202 + 156) = v178 | 0x200000;
        }
      }

      v179 = v111;
      if (nw_path_override_info_constrained(v173))
      {
        v180 = *(v202 + 156);
        if ((v180 & 0x100000) == 0)
        {
          *(v202 + 156) = v180 | 0x100000;
        }
      }

      v181 = nw_path_override_info_copy_resolver_configs(v173);
      swift_unknownObjectRelease();
      if (v181)
      {
        v231[0] = *sub_182AD2388();
        v182 = swift_allocObject();
        *(v182 + 16) = v231;

        swift_unknownObjectRetain();
        sub_181A554F4(v195);
        v183 = swift_allocObject();
        *(v183 + 16) = sub_181FD7524;
        *(v183 + 24) = v182;
        v236 = sub_181F7F228;
        v237 = v183;
        *uu = MEMORY[0x1E69E9820];
        *&uu[8] = 1107296256;
        v234 = sub_181F79D48;
        v235 = &block_descriptor_62;
        v184 = _Block_copy(uu);

        nw_array_apply(v181, v184);
        _Block_release(v184);
        swift_unknownObjectRelease();
        v185 = v202;
        if (*(v202 + 232))
        {

          sub_181F604FC(v186);

          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          *(v185 + 232) = v231[0];
        }

        v195 = sub_181FD7524;
        v194 = v182;
      }

      else
      {
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
      }

      v111 = v179;
    }

    else
    {
      swift_unknownObjectRelease();
    }

LABEL_127:
    v196 = v111;

    v9 = swift_unknownObjectRelease();
    v204 = sub_181ADB8F0;
    v10 = v203;
  }

  __break(1u);
LABEL_140:
  result = sub_182AD4408();
  __break(1u);
  return result;
}