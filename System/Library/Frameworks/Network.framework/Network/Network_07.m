uint64_t nw_parameters_get_delegated_unique_pid(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_delegated_unique_pid();
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_delegated_unique_pid";
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
        v12 = "nw_parameters_get_delegated_unique_pid";
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
            v12 = "nw_parameters_get_delegated_unique_pid";
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
        v12 = "nw_parameters_get_delegated_unique_pid";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_delegated_unique_pid";
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

uint64_t _nw_protocol_stack_copy_internet_protocol_as_ip_options(uint64_t a1, char a2)
{

  v3 = sub_181AD6390(a2);

  return v3;
}

uint64_t sub_181AD6390(char a1)
{
  if (a1)
  {
    swift_beginAccess();
    v2 = *(v1 + 56);
    if ((~v2 & 0xF000000000000007) != 0 && (v2 & 0xC000000000000000) == 0x8000000000000000 && v2 == 0x8000000000000000 && *(v1 + 48) == 0)
    {
      v5 = v1;
      if (qword_1ED4102F0 != -1)
      {
        swift_once();
      }

      v6 = *(&xmmword_1ED411D60 + 1);
      v7 = unk_1ED411D70;
      v8 = byte_1ED411D78;
      v9 = xmmword_1ED411D60;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838760);
      swift_allocObject();
      v10 = sub_181BB68A0(v9, v6, v7, v8, 0);
      v1 = v5;
      v11 = *(v5 + 48);
      v12 = *(v1 + 56);
      *(v1 + 48) = v10;
      *(v1 + 56) = 0;
      sub_181F49A24(v6, v7, v8);
      sub_181A52FE0(v11, v12);
    }
  }

  swift_beginAccess();
  v13 = 0;
  v14 = *(v1 + 56);
  if (v14 >> 62)
  {
    v15 = 1;
  }

  else
  {
    v15 = (v14 & 0xF000000000000007) == 0xF000000000000007;
  }

  if (!v15)
  {
    v13 = *(v1 + 48);
    sub_181B2C3E0(v13, v14);
  }

  return v13;
}

uint64_t nw_parameters_get_attribution_context(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_attribution_context();
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_attribution_context";
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
        v12 = "nw_parameters_get_attribution_context";
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
            v12 = "nw_parameters_get_attribution_context";
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
        v12 = "nw_parameters_get_attribution_context";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_attribution_context";
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

_BYTE *_nw_parameters_get_attribution_context_0(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v1 &= ~0x8000000000000000;
    v3 = *(v1 + 272);
    if (v3)
    {
LABEL_3:
      v4 = *(v1 + 264);
      v5 = OBJC_IVAR____TtC7Network17ParametersStorage_storageLock;
      v6 = *&v2[OBJC_IVAR____TtC7Network17ParametersStorage_storageLock];

      os_unfair_lock_lock(v6 + 4);
      v7 = &v2[OBJC_IVAR____TtC7Network17ParametersStorage_attributionContextStorage];
      if ((v2[OBJC_IVAR____TtC7Network17ParametersStorage_attributionContextStorage + 16] & 1) == 0)
      {
        v12 = *v7;
LABEL_21:
        os_unfair_lock_unlock((*&v2[v5] + 16));

        goto LABEL_22;
      }

      if ((v3 & 0x1000000000000000) != 0)
      {
        v4 = sub_18224FE14();
        v15 = v14;

        v3 = v15;
        if ((v15 & 0x2000000000000000) == 0)
        {
LABEL_6:
          if ((v4 & 0x1000000000000000) != 0)
          {
            v8 = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v9 = v4 & 0xFFFFFFFFFFFFLL;
            v10 = (v4 & 0xFFFFFFFFFFFFLL) + 1;
            if (!__OFADD__(v4 & 0xFFFFFFFFFFFFLL, 1))
            {
LABEL_8:
              v11 = swift_slowAlloc();
              v12 = v11;
              if (!v9)
              {
LABEL_11:
                v13 = &v12[v9];
LABEL_12:
                *v13 = 0;
                *v7 = v12;
                *(v7 + 1) = v10;
LABEL_20:
                v7[16] = 0;
                goto LABEL_21;
              }

              if (v10 >= v9)
              {
                memcpy(v11, v8, v9);
                goto LABEL_11;
              }

              goto LABEL_27;
            }
          }

          else
          {
            v19 = sub_182AD3CF8();
            if (!v19)
            {
LABEL_28:
              v10 = 1;
              v13 = swift_slowAlloc();
              v12 = v13;
              goto LABEL_12;
            }

            v8 = v19;
            v9 = v20;
            v10 = v20 + 1;
            if (!__OFADD__(v20, 1))
            {
              goto LABEL_8;
            }
          }

          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }
      }

      else if ((v3 & 0x2000000000000000) == 0)
      {
        goto LABEL_6;
      }

      v16 = HIBYTE(v3) & 0xF;
      __src[0] = v4;
      __src[1] = v3 & 0xFFFFFFFFFFFFFFLL;
      v17 = swift_slowAlloc();
      v12 = v17;
      if (v16)
      {
        memcpy(v17, __src, HIBYTE(v3) & 0xF);
      }

      v12[v16] = 0;
      *v7 = v12;
      *(v7 + 1) = v16 + 1;
      goto LABEL_20;
    }
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 272);
    if (v3)
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
LABEL_22:

  return v12;
}

_BYTE *sub_181AD696C(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v1 &= ~0x8000000000000000;
    v3 = *(v1 + 288);
    if (v3)
    {
LABEL_3:
      v4 = *(v1 + 280);
      v5 = OBJC_IVAR____TtC7Network17ParametersStorage_storageLock;
      v6 = *&v2[OBJC_IVAR____TtC7Network17ParametersStorage_storageLock];

      os_unfair_lock_lock(v6 + 4);
      v7 = &v2[OBJC_IVAR____TtC7Network17ParametersStorage_attributedBundleStorage];
      if ((v2[OBJC_IVAR____TtC7Network17ParametersStorage_attributedBundleStorage + 16] & 1) == 0)
      {
        v12 = *v7;
LABEL_21:
        os_unfair_lock_unlock((*&v2[v5] + 16));

        goto LABEL_22;
      }

      if ((v3 & 0x1000000000000000) != 0)
      {
        v4 = sub_18224FE14();
        v15 = v14;

        v3 = v15;
        if ((v15 & 0x2000000000000000) == 0)
        {
LABEL_6:
          if ((v4 & 0x1000000000000000) != 0)
          {
            v8 = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v9 = v4 & 0xFFFFFFFFFFFFLL;
            v10 = (v4 & 0xFFFFFFFFFFFFLL) + 1;
            if (!__OFADD__(v4 & 0xFFFFFFFFFFFFLL, 1))
            {
LABEL_8:
              v11 = swift_slowAlloc();
              v12 = v11;
              if (!v9)
              {
LABEL_11:
                v13 = &v12[v9];
LABEL_12:
                *v13 = 0;
                *v7 = v12;
                *(v7 + 1) = v10;
LABEL_20:
                v7[16] = 0;
                goto LABEL_21;
              }

              if (v10 >= v9)
              {
                memcpy(v11, v8, v9);
                goto LABEL_11;
              }

              goto LABEL_27;
            }
          }

          else
          {
            v19 = sub_182AD3CF8();
            if (!v19)
            {
LABEL_28:
              v10 = 1;
              v13 = swift_slowAlloc();
              v12 = v13;
              goto LABEL_12;
            }

            v8 = v19;
            v9 = v20;
            v10 = v20 + 1;
            if (!__OFADD__(v20, 1))
            {
              goto LABEL_8;
            }
          }

          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }
      }

      else if ((v3 & 0x2000000000000000) == 0)
      {
        goto LABEL_6;
      }

      v16 = HIBYTE(v3) & 0xF;
      __src[0] = v4;
      __src[1] = v3 & 0xFFFFFFFFFFFFFFLL;
      v17 = swift_slowAlloc();
      v12 = v17;
      if (v16)
      {
        memcpy(v17, __src, HIBYTE(v3) & 0xF);
      }

      v12[v16] = 0;
      *v7 = v12;
      *(v7 + 1) = v16 + 1;
      goto LABEL_20;
    }
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 288);
    if (v3)
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
LABEL_22:

  return v12;
}

uint64_t nw_parameters_get_fallback_mode(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_fallback_mode(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_fallback_mode";
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
        v12 = "nw_parameters_get_fallback_mode";
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
            v12 = "nw_parameters_get_fallback_mode";
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
        v12 = "nw_parameters_get_fallback_mode";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_fallback_mode";
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

uint64_t _nw_parameters_get_fallback_mode(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0xE9);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 233);
  }

  return v3;
}

uint64_t nw_parameters_get_allow_ultra_constrained(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_allow_ultra_constrained(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_allow_ultra_constrained";
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
        v12 = "nw_parameters_get_allow_ultra_constrained";
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
            v12 = "nw_parameters_get_allow_ultra_constrained";
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
        v12 = "nw_parameters_get_allow_ultra_constrained";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_allow_ultra_constrained";
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

uint64_t nw_parameters_get_dry_run(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_dry_run(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_dry_run";
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
        v12 = "nw_parameters_get_dry_run";
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
            v12 = "nw_parameters_get_dry_run";
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
        v12 = "nw_parameters_get_dry_run";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_dry_run";
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

uint64_t nw_parameters_get_include_ble(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_include_ble(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_include_ble";
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
        v12 = "nw_parameters_get_include_ble";
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
            v12 = "nw_parameters_get_include_ble";
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
        v12 = "nw_parameters_get_include_ble";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_include_ble";
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

uint64_t nw_parameters_get_include_screen_off_devices(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_include_screen_off_devices(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_include_screen_off_devices";
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
        v12 = "nw_parameters_get_include_screen_off_devices";
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
            v12 = "nw_parameters_get_include_screen_off_devices";
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
        v12 = "nw_parameters_get_include_screen_off_devices";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_include_screen_off_devices";
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

BOOL nw_parameters_get_reuse_local_address(nw_parameters_t parameters)
{
  v15 = *MEMORY[0x1E69E9840];
  if (parameters)
  {

    return _nw_parameters_get_reuse_local_address(parameters);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_reuse_local_address";
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
        v12 = "nw_parameters_get_reuse_local_address";
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
            v12 = "nw_parameters_get_reuse_local_address";
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
        v12 = "nw_parameters_get_reuse_local_address";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_reuse_local_address";
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

uint64_t nw_parameters_get_discretionary(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_discretionary(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_discretionary";
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
        v12 = "nw_parameters_get_discretionary";
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
            v12 = "nw_parameters_get_discretionary";
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
        v12 = "nw_parameters_get_discretionary";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_discretionary";
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

uint64_t nw_parameters_get_ecn_mode(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_ecn_mode();
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_ecn_mode";
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
        v12 = "nw_parameters_get_ecn_mode";
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
            v12 = "nw_parameters_get_ecn_mode";
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
        v12 = "nw_parameters_get_ecn_mode";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_ecn_mode";
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

uint64_t _nw_parameters_get_internal_attribution(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0xE8);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 232);
  }

  return v3;
}

uint64_t _nw_parameters_get_traffic_class(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0xDC);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 220);
  }

  return v3;
}

uint64_t nw_parameters_get_is_known_tracker(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_is_known_tracker(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_is_known_tracker";
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
        v12 = "nw_parameters_get_is_known_tracker";
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
            v12 = "nw_parameters_get_is_known_tracker";
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
        v12 = "nw_parameters_get_is_known_tracker";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_is_known_tracker";
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

uint64_t nw_parameters_get_data_mode(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_data_mode();
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_data_mode";
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
        v12 = "nw_parameters_get_data_mode";
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
            v12 = "nw_parameters_get_data_mode";
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
        v12 = "nw_parameters_get_data_mode";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_data_mode";
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

nw_endpoint_t nw_parameters_copy_local_endpoint(nw_parameters_t parameters)
{
  v15 = *MEMORY[0x1E69E9840];
  if (parameters)
  {

    return _nw_parameters_copy_local_endpoint();
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_copy_local_endpoint";
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
        v12 = "nw_parameters_copy_local_endpoint";
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
            v12 = "nw_parameters_copy_local_endpoint";
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
        v12 = "nw_parameters_copy_local_endpoint";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_copy_local_endpoint";
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

uint64_t nw_parameters_get_allow_socket_access(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_allow_socket_access(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_allow_socket_access";
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
        v12 = "nw_parameters_get_allow_socket_access";
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
            v12 = "nw_parameters_get_allow_socket_access";
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
        v12 = "nw_parameters_get_allow_socket_access";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_allow_socket_access";
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

uint64_t nw_parameters_get_tfo(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_tfo(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_tfo";
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
        v12 = "nw_parameters_get_tfo";
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
            v12 = "nw_parameters_get_tfo";
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
        v12 = "nw_parameters_get_tfo";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_tfo";
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

uint64_t nw_parameters_is_fallback(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_is_fallback(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_is_fallback";
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
        v12 = "nw_parameters_is_fallback";
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
            v12 = "nw_parameters_is_fallback";
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
        v12 = "nw_parameters_is_fallback";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_is_fallback";
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

uint64_t nw_parameters_is_third_party_web_content(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_is_third_party_web_content(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_is_third_party_web_content";
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
        v12 = "nw_parameters_is_third_party_web_content";
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
            v12 = "nw_parameters_is_third_party_web_content";
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
        v12 = "nw_parameters_is_third_party_web_content";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_is_third_party_web_content";
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

uint64_t nw_parameters_is_approved_app_domain(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_is_approved_app_domain(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_is_approved_app_domain";
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
        v12 = "nw_parameters_is_approved_app_domain";
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
            v12 = "nw_parameters_is_approved_app_domain";
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
        v12 = "nw_parameters_is_approved_app_domain";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_is_approved_app_domain";
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

uint64_t nw_parameters_get_use_enhanced_privacy_mode(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_use_enhanced_privacy_mode(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_use_enhanced_privacy_mode";
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
        v12 = "nw_parameters_get_use_enhanced_privacy_mode";
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
            v12 = "nw_parameters_get_use_enhanced_privacy_mode";
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
        v12 = "nw_parameters_get_use_enhanced_privacy_mode";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_use_enhanced_privacy_mode";
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

uint64_t nw_parameters_get_web_search_content(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_web_search_content(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_web_search_content";
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
        v12 = "nw_parameters_get_web_search_content";
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
            v12 = "nw_parameters_get_web_search_content";
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
        v12 = "nw_parameters_get_web_search_content";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_web_search_content";
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

uint64_t _nw_protocol_stack_iterate_application_protocols(int a1, void *aBlock)
{
  v2 = _Block_copy(aBlock);
  v5[2] = v2;

  sub_181AC9C88(v3, sub_181AA94F4, v5);
  _Block_release(v2);
}

void _nw_path_set_effective_mtu(char *a1, int a2)
{
  if (a1)
  {
    v3 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
    v4 = a1;
    swift_beginAccess();
    *(v3 + 25) = a2;
  }
}

void _nw_path_set_link_quality(char *a1, char a2)
{
  if (a1)
  {
    v3 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
    v4 = a1;
    swift_beginAccess();
    v3[153] = a2;
  }
}

void sub_181AD9DB8()
{
  v103 = *MEMORY[0x1E69E9840];
  v2 = v0 + 200;
  v1 = *(v0 + 200);
  if (v1)
  {
    v3 = *(v1 + 24);
    if ((v3 & 0x8000000000000000) != 0)
    {
      goto LABEL_55;
    }

    if (v3)
    {
      v4 = v0;
      v5 = 0;
      v58 = 0;
      v59 = *(v1 + 24);
      while (1)
      {
        if (v5 >= v3)
        {
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
        }

        if (__OFADD__(v5, 1))
        {
          goto LABEL_50;
        }

        v6 = *v2;
        if (!*v2)
        {
          goto LABEL_56;
        }

        if (v5 >= v6[3])
        {
          goto LABEL_51;
        }

        v7 = v6[4];
        if (v5 + v7 >= v6[2])
        {
          v8 = v6[2];
        }

        else
        {
          v8 = 0;
        }

        v9 = v6[26 * v5 + 14 + 26 * (v7 - v8)];
        if (v9)
        {
          if (*(v4 + 184))
          {

            sub_181F60BCC(v10);

            v6 = *v2;
            if (!*v2)
            {
              goto LABEL_59;
            }
          }

          else
          {
            *(v4 + 184) = v9;
          }
        }

        if (v5 >= v6[3])
        {
          goto LABEL_52;
        }

        v11 = v6[4];
        if (v5 + v11 >= v6[2])
        {
          v12 = v6[2];
        }

        else
        {
          v12 = 0;
        }

        v13 = v6[26 * v5 + 15 + 26 * (v11 - v12)];
        if (v13)
        {
          if (!*(v4 + 192))
          {
            *(v4 + 192) = v13;

            if (!*(v4 + 138))
            {
              goto LABEL_34;
            }

            goto LABEL_26;
          }

          sub_181F60BCC(v14);

          v6 = *v2;
        }

        if (!*(v4 + 138))
        {
          goto LABEL_34;
        }

LABEL_26:
        if (!v6)
        {
          goto LABEL_58;
        }

        if (v5 >= v6[3])
        {
          goto LABEL_54;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1820E6474();
        }

        v15 = *(*v2 + 32);
        if (v5 + v15 >= *(*v2 + 16))
        {
          v16 = *(*v2 + 16);
        }

        else
        {
          v16 = 0;
        }

        v17 = *v2 + 208 * (v5 + v15 - v16);
        v18 = *(v17 + 240);
        v19 = *(v17 + 184);
        v20 = *(v17 + 216);
        v100 = *(v17 + 200);
        v101 = v20;
        v102 = *(v17 + 232);
        v21 = *(v17 + 120);
        v22 = *(v17 + 152);
        v96 = *(v17 + 136);
        v97 = v22;
        v98 = *(v17 + 168);
        v99 = v19;
        v23 = *(v17 + 56);
        v24 = *(v17 + 88);
        v92 = *(v17 + 72);
        v93 = v24;
        v94 = *(v17 + 104);
        v95 = v21;
        v90 = *(v17 + 40);
        v91 = v23;
        v18 |= 0x800u;
        v25 = v99;
        v26 = v100;
        v74 = v100;
        *v75 = v20;
        v27 = v102;
        *&v75[16] = v102;
        v28 = v95;
        v29 = v96;
        v70 = v96;
        v71 = v97;
        v30 = v97;
        v31 = v98;
        v72 = v98;
        v73 = v99;
        v32 = v91;
        v33 = v92;
        v66 = v92;
        v67 = v24;
        v34 = v24;
        v35 = v94;
        v68 = v94;
        v69 = v95;
        v36 = v90;
        v64 = v90;
        v65 = v91;
        *&v75[24] = v18;
        *(v17 + 40) = v90;
        v37 = v65;
        v38 = v66;
        v39 = v67;
        *(v17 + 104) = v68;
        *(v17 + 88) = v39;
        *(v17 + 72) = v38;
        *(v17 + 56) = v37;
        v40 = v69;
        v41 = v70;
        v42 = v71;
        *(v17 + 168) = v72;
        *(v17 + 152) = v42;
        *(v17 + 136) = v41;
        *(v17 + 120) = v40;
        v43 = v73;
        v44 = v74;
        v45 = *v75;
        *(v17 + 226) = *&v75[10];
        *(v17 + 216) = v45;
        *(v17 + 200) = v44;
        *(v17 + 184) = v43;
        v86 = v26;
        v87 = v101;
        v82 = v29;
        v83 = v30;
        v84 = v31;
        v85 = v25;
        v78 = v33;
        v79 = v34;
        v88 = v27;
        v80 = v35;
        v81 = v28;
        uu = v36;
        v77 = v32;
        v89 = v18;
        sub_181AFE6F4(&v64, v63);
        sub_181AFE6A0(&uu);
        v6 = *v2;
LABEL_34:
        if (!v6)
        {
          goto LABEL_57;
        }

        if (v5 >= v6[3])
        {
          goto LABEL_53;
        }

        v62 = v5 + 1;
        v46 = v6[4];
        if (v5 + v46 >= v6[2])
        {
          v47 = v6[2];
        }

        else
        {
          v47 = 0;
        }

        v48 = &v6[26 * v5 + 26 * (v46 - v47)];
        if (*(v48 + 156) == 1 || (v49 = *(v48 + 38), v51 = v48[17], v50 = v48[18], LOBYTE(uu) = BYTE4(v51), BYTE1(uu) = BYTE5(v51), BYTE2(uu) = BYTE6(v51), BYTE3(uu) = HIBYTE(v51), *(&uu + 4) = v50, HIDWORD(uu) = v49, uuid_is_null(&uu) == 1))
        {
          ++v5;
          v3 = v59;
          v2 = v60;
          v4 = v61;
          if (v62 == v59)
          {
            goto LABEL_47;
          }
        }

        else
        {
          v56 = *(v61 + 32);
          swift_beginAccess();
          v57 = *(*(v56 + 296) + 16);
          v52 = swift_allocObject();
          *(v52 + 16) = BYTE4(v51);
          *(v52 + 17) = BYTE5(v51);
          *(v52 + 18) = BYTE6(v51);
          *(v52 + 19) = HIBYTE(v51);
          *(v52 + 20) = v50;
          *(v52 + 28) = v49;
          *(v52 + 32) = v51;
          *(v52 + 40) = v50;
          *(v52 + 48) = v49;
          v4 = v61;
          *(v52 + 56) = v61;
          *(v52 + 64) = v5;
          v53 = v52;
          swift_unknownObjectRetain_n();
          sub_181A554F4(v58);
          v54 = swift_allocObject();
          v58 = sub_181B99D9C;
          *(v54 + 16) = sub_181B99D9C;
          *(v54 + 24) = v53;
          *&v78 = sub_181ADA4AC;
          *(&v78 + 1) = v54;
          *&uu = MEMORY[0x1E69E9820];
          *(&uu + 1) = 1107296256;
          *&v77 = sub_181ACCF58;
          *(&v77 + 1) = &block_descriptor_42;
          v55 = _Block_copy(&uu);

          nw_path_access_agent_cache(v57, v55);
          _Block_release(v55);
          swift_unknownObjectRelease_n();
          ++v5;
          v3 = v59;
          v2 = v60;
          if (v62 == v59)
          {
            goto LABEL_47;
          }
        }
      }
    }

    v58 = 0;
LABEL_47:
    sub_181A554F4(v58);
  }
}

char *_nw_path_set_browse_descriptor(char *result, uint64_t a2)
{
  if (result)
  {
    v3 = &result[OBJC_IVAR____TtC7Network8__NWPath_path];
    v4 = result;
    swift_beginAccess();
    *(v3 + 21) = a2;
    swift_unknownObjectRetain();

    return swift_unknownObjectRelease();
  }

  return result;
}

void _nw_path_set_client_id(char *a1, const unsigned __int8 *a2)
{
  if (a1 && a2)
  {
    v3 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
    v4 = a1;
    swift_beginAccess();
    is_null = uuid_is_null(a2);
    v6 = 0uLL;
    if (is_null != 1)
    {
      v6 = *a2;
    }

    *(v3 + 3) = v6;
    v3[64] = is_null == 1;
    swift_endAccess();
  }
}

id _nw_path_create_0(void *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = a1;
  }

  if (!a2)
  {
    Parameters.init(noInternetProtocol:)(0, __dst);
    goto LABEL_7;
  }

  v5 = *(a2 + OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage);

  if (v5 < 0)
  {
    memcpy(__dst, ((v5 & 0x7FFFFFFFFFFFFFFFLL) + 16), sizeof(__dst));
    sub_181F481DC(__dst, v12);

LABEL_7:
    type metadata accessor for MutableParametersStorage();
    v5 = swift_allocObject();
    memcpy((v5 + 16), __dst, 0x188uLL);
  }

  sub_181FD45CC(a1, v5, __dst);
  v6 = type metadata accessor for __NWPath();
  v7 = objc_allocWithZone(v6);
  v8 = OBJC_IVAR____TtC7Network8__NWPath_lock;
  type metadata accessor for SystemLock._Storage();
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *&v7[v8] = v9;
  *&v7[OBJC_IVAR____TtC7Network8__NWPath_nexusKeyStorage] = 0;
  *&v7[OBJC_IVAR____TtC7Network8__NWPath_reasonDescriptionStorage] = 0;
  *&v7[OBJC_IVAR____TtC7Network8__NWPath_nat64PrefixStorage] = 0;
  memcpy(&v7[OBJC_IVAR____TtC7Network8__NWPath_path], __dst, 0x17AuLL);
  sub_181A3DF5C(__dst, v12);
  v13.receiver = v7;
  v13.super_class = v6;
  v10 = objc_msgSendSuper2(&v13, sel_init);
  sub_181A3DFB8(__dst);
  return v10;
}

uint64_t sub_181ADA6FC(char a1, uint64_t a2)
{
  v3 = *v2;
  v4 = (*v2 + 16);
  v5 = *v4;
  if (*v4 >= a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838790);
    v8 = swift_allocObject();
    v11 = *(v3 + 24);
    *(v8 + 16) = v5;
    *(v8 + 24) = v11;
    if (v11 >= 1)
    {
      sub_1820E5978(v8 + 16, v8 + 40, v4, v3 + 40);
    }
  }

  else
  {
    type metadata accessor for Endpoint(0);
    sub_182AD2398();
    if (a1)
    {
      v7 = *(v3 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838790);
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838790);
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
        sub_181F47BD4(v8 + 16, v8 + 40, v4, v3 + 40, type metadata accessor for Endpoint);
      }
    }
  }

  *v2 = v8;
  return result;
}

void *sub_181ADA8CC(void *result, uint64_t a2, void *a3)
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
          return a3;
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

uint64_t _nw_path_get_necp_result_direct_interface_index(char *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
  v2 = a1;
  swift_beginAccess();
  v3 = *(v1 + 83);

  return v3;
}

void _nw_path_set_necp_result_direct_interface_generation(char *a1, int a2)
{
  if (a1)
  {
    v3 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
    v4 = a1;
    swift_beginAccess();
    *(v3 + 84) = a2;
  }
}

void _nw_path_set_necp_result_direct_interface_index(char *a1, int a2)
{
  if (a1)
  {
    v3 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
    v4 = a1;
    swift_beginAccess();
    *(v3 + 83) = a2;
  }
}

uint64_t _nw_path_get_necp_result_delegate_interface_index(char *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
  v2 = a1;
  swift_beginAccess();
  v3 = *(v1 + 85);

  return v3;
}

void _nw_path_set_interface_time_delta(char *a1, int a2)
{
  if (a1)
  {
    v3 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
    v4 = a1;
    swift_beginAccess();
    *(v3 + 27) = a2;
  }
}

void _nw_path_add_necp_result_netagent(char *a1, unsigned __int8 *a2, unint64_t a3)
{
  if (a1)
  {
    if (a2)
    {
      v3 = OBJC_IVAR____TtC7Network8__NWPath_lock;
      v4 = *&a1[OBJC_IVAR____TtC7Network8__NWPath_lock];
      v8 = a1;
      os_unfair_lock_lock(v4 + 4);
      v9 = OBJC_IVAR____TtC7Network8__NWPath_path;
      swift_beginAccess();
      sub_182266578(&v8[v9], a2, a3);
      swift_endAccess();
      os_unfair_lock_unlock((*&a1[v3] + 16));
    }
  }
}

void *sub_181ADABF4(void *result, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = result[1];
  v6 = result[2];
  v8 = __OFADD__(v6, v5);
  v7 = v6 + v5;
  if (!v8)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      v8 = __OFSUB__(v7, *result);
      if (v7 < *result || (v7 -= *result, !v8))
      {
LABEL_9:
        v9 = a2 + 20 * v7;
        *v9 = a3;
        *(v9 + 8) = a4;
        *(v9 + 16) = a5;
        v8 = __OFADD__(v5, 1);
        v10 = v5 + 1;
        if (!v8)
        {
          result[1] = v10;
          return result;
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v7 < 0)
    {
      v8 = __OFADD__(v7, *result);
      v7 += *result;
      if (v8)
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

void sub_181ADAC58(int a1, char *__dst, void *a3, char *a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_32;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = *a3 - v4;
      v9 = a4;
      goto LABEL_6;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v9 = 0;
  v7 = 0;
  v8 = a3[1];
LABEL_6:
  if (v7)
  {
    v10 = v5 < v6;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  if (v8 < 1)
  {
    v8 = 0;
    goto LABEL_20;
  }

  if (!a4)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v12 = &a4[20 * v4];
  if (v12 != __dst || &v12[20 * v8] <= __dst)
  {
    v14 = __dst;
    memmove(__dst, v12, 20 * v8);
    __dst = v14;
  }

LABEL_20:
  if (v5 >= v6 || v7 < 1)
  {
    return;
  }

  if (!v11)
  {
LABEL_34:
    __break(1u);
    return;
  }

  v16 = &__dst[20 * v8];
  if (v16 != v11 || v16 >= &v11[20 * v7])
  {

    memmove(v16, v11, 20 * v7);
  }
}

void _nw_path_set_necp_result_interface_options(void *a1, const void *a2, unsigned int a3)
{
  if (a1)
  {
    if (a2)
    {
      v5 = OBJC_IVAR____TtC7Network8__NWPath_path;
      v7 = a1;
      swift_beginAccess();
      sub_18226638C(a1 + v5, a3, a2);
      swift_endAccess();
    }
  }
}

void nw_path_snapshot_path(NWConcrete_nw_path *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    _nw_path_snapshot_path(v1);
    goto LABEL_3;
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_path_snapshot_path";
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
        v14 = "nw_path_snapshot_path";
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null path", buf, 0xCu);
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
          v14 = "nw_path_snapshot_path";
          v15 = 2082;
          v16 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v8, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v9)
      {
        *buf = 136446210;
        v14 = "nw_path_snapshot_path";
        _os_log_impl(&dword_181A37000, v5, v8, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v5 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v14 = "nw_path_snapshot_path";
        _os_log_impl(&dword_181A37000, v5, v10, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
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

void sub_181ADB0F8()
{
  v38 = *MEMORY[0x1E69E9840];
  v1 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);

  *(v0 + 8) = 0;

  *(v0 + 16) = 0;
  LODWORD(v4) = *(v0 + 328);
  if (v4)
  {
    goto LABEL_3;
  }

  LODWORD(v4) = *(v0 + 332);
  if (v4)
  {
    goto LABEL_3;
  }

  v15 = *(v0 + 32);
  swift_beginAccess();
  v16 = *(v15 + 240);
  if (v16)
  {
    v17 = *(v16 + 16);
    if (v17)
    {
      v4 = *(v17 + 16);
      if ((v4 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (!HIDWORD(v4))
      {
        if (v4)
        {
LABEL_3:
          v5 = *(v0 + 32);
          swift_beginAccess();
          v6 = *(*(v5 + 296) + 16);
          v7 = *(v0 + 336);
          v8 = swift_unknownObjectRetain();
          v9 = nw_path_copy_interface_with_generation(v8, v4, v7);
          if (v9)
          {
            v10 = *&v9[OBJC_IVAR____TtC7Network13__NWInterface_interface];
            v11 = v9;

            *(v0 + 8) = v10;
          }

          v12 = *(v0 + 340);
          if (v12)
          {
            v13 = nw_path_copy_interface_with_generation(v6, v12, *(v0 + 344));
            swift_unknownObjectRelease();
            if (v13)
            {
              v14 = *&v13[OBJC_IVAR____TtC7Network13__NWInterface_interface];

              *(v0 + 16) = v14;
            }

            else
            {

              *(v0 + 16) = 0;
            }
          }

          else
          {
            swift_unknownObjectRelease();
          }

          return;
        }

        goto LABEL_16;
      }

      __break(1u);
    }
  }

LABEL_16:
  v18 = *(v0 + 40);
  if (v18)
  {
    v19 = OBJC_IVAR____TtC7Network8Endpoint_type;
    swift_beginAccess();
    sub_181B5C0FC(v18 + v19, v3);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_181B5C160(v3);
    }

    else
    {
      v20 = *(v3 + 1);
      v21 = *(v3 + 2);
      v22 = *(v3 + 3);
      v23 = *(v3 + 4);
      v24 = *(v3 + 20);
      v25 = v3[42];
      if (v25 == 2)
      {
        v33[0] = *v3;
        v33[1] = v20;
        v34 = v21;
        v35 = v22;
        v36 = v23;
        v37 = v24;
        v26 = *(v0 + 32);
        swift_beginAccess();
        v27 = *(*(v26 + 296) + 16);
        swift_unknownObjectRetain();
        v28 = v18;
        loopback_index = nw_interface_get_loopback_index();
        v30 = nw_path_copy_interface_with_generation(v27, loopback_index, 0);
        if (v30)
        {
          v31 = *&v30[OBJC_IVAR____TtC7Network13__NWInterface_interface];

          *(v0 + 8) = v31;
          swift_unknownObjectRelease();

          sub_181AD1DE4(v34, v35, v36, v37, 2u);
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();

          sub_181AD1DE4(v34, v35, v36, v37, 2u);

          *(v0 + 8) = 0;
        }
      }

      else
      {
        v32 = *(v3 + 2);

        sub_181AD1DE4(v32, v22, v23, v24, v25);
      }
    }
  }
}

void nw_parameters_iterate_parent_ids(void *a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v19 = "nw_parameters_iterate_parent_ids";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (!__nwlog_fault(v7, &type, &v16))
    {
      goto LABEL_34;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v19 = "nw_parameters_iterate_parent_ids";
        v10 = "%{public}s called with null parameters";
LABEL_32:
        _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
      }
    }

    else if (v16 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v9 = type;
      v13 = os_log_type_enabled(v8, type);
      if (backtrace_string)
      {
        if (v13)
        {
          *buf = 136446466;
          v19 = "nw_parameters_iterate_parent_ids";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_34:
        if (!v7)
        {
          goto LABEL_4;
        }

LABEL_35:
        free(v7);
        goto LABEL_4;
      }

      if (v13)
      {
        *buf = 136446210;
        v19 = "nw_parameters_iterate_parent_ids";
        v10 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_32;
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v19 = "nw_parameters_iterate_parent_ids";
        v10 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_32;
      }
    }

LABEL_33:

    goto LABEL_34;
  }

  if (v4)
  {
    _nw_parameters_iterate_parent_ids(v3, v4);
    goto LABEL_4;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_parameters_iterate_parent_ids";
  v7 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (!__nwlog_fault(v7, &type, &v16))
  {
    goto LABEL_34;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v8 = __nwlog_obj();
    v9 = type;
    if (os_log_type_enabled(v8, type))
    {
      *buf = 136446210;
      v19 = "nw_parameters_iterate_parent_ids";
      v10 = "%{public}s called with null iterator";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  if (v16 != 1)
  {
    v8 = __nwlog_obj();
    v9 = type;
    if (os_log_type_enabled(v8, type))
    {
      *buf = 136446210;
      v19 = "nw_parameters_iterate_parent_ids";
      v10 = "%{public}s called with null iterator, backtrace limit exceeded";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  v14 = __nw_create_backtrace_string();
  v8 = __nwlog_obj();
  v9 = type;
  v15 = os_log_type_enabled(v8, type);
  if (!v14)
  {
    if (v15)
    {
      *buf = 136446210;
      v19 = "nw_parameters_iterate_parent_ids";
      v10 = "%{public}s called with null iterator, no backtrace";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  if (v15)
  {
    *buf = 136446466;
    v19 = "nw_parameters_iterate_parent_ids";
    v20 = 2082;
    v21 = v14;
    _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null iterator, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v14);
  if (v7)
  {
    goto LABEL_35;
  }

LABEL_4:
}

char *sub_181ADB924(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * v12 - 64;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[v9])
    {
      memmove(v13, v14, v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v9);
  }

  return v11;
}

unint64_t sub_181ADBA40(unsigned int a1, int a2)
{
  if (a2 > 4000)
  {
    if (a2 == 4001)
    {
      return 6;
    }

    if (a2 == 5001)
    {
      return 7;
    }
  }

  else
  {
    if (a2 == 1001)
    {
      return 3;
    }

    if (a2 == 1002)
    {
      return 4;
    }
  }

  v3 = 8 * a1;
  if (a1 >= 5)
  {
    v3 = 0;
  }

  return 0x102050300uLL >> v3;
}

uint64_t sub_181ADBACC(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, void *a8, uint64_t *a9)
{
  v15[2] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __break(1u);
  }

  v14[0] = a3;
  v14[1] = a4;

  sub_181AC04E8(v14, a5, a2, v15);

  if (v15[0])
  {
    v13 = v15[1];
    *a8 = v15[0];

    *a9 = v13;

    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_181ADBBD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      *uu1 = *(*(v3 + 48) + 16 * v5);
      v10[0] = a1;
      v10[1] = a2;
      if (!uuid_compare(uu1, v10))
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

size_t *sub_181ADBCBC(size_t *result, void *__dst, int64_t a3, size_t a4, size_t a5, size_t a6, size_t a7)
{
  if (!a6)
  {
    goto LABEL_16;
  }

  v7 = a7 - a6;
  if ((a7 - a6) < 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v7 < a4)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v7 < a5)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (__OFADD__(a4, a5 - a4))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (a5 < a4)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v8 = 0;
  if (a5 != a4 && a3)
  {
    if ((a5 - a4) >= a3)
    {
      v8 = a3;
    }

    else
    {
      v8 = a5 - a4;
    }

    v9 = result;
    v10 = a7;
    v11 = a6;
    v12 = a5;
    v13 = a4;
    memcpy(__dst, (a6 + a4), v8);
    a4 = v13;
    result = v9;
    a5 = v12;
    a6 = v11;
    a7 = v10;
  }

  v14 = a4 + v8;
  if (__OFADD__(a4, v8))
  {
    goto LABEL_25;
  }

  if (v14 <= v7)
  {
LABEL_19:
    result[3] = a7;
    result[4] = v14;
    *result = a4;
    result[1] = a5;
    result[2] = a6;
    return v8;
  }

  __break(1u);
LABEL_16:
  if (a4)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (!a5)
  {
    v14 = 0;
    v8 = 0;
    goto LABEL_19;
  }

LABEL_27:
  __break(1u);
  return result;
}

size_t nw_dictionary_get_count(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v14 = "nw_dictionary_get_count";
    v3 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v11 = 0;
    if (!__nwlog_fault(v3, &type, &v11))
    {
      goto LABEL_34;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v14 = "nw_dictionary_get_count";
      v6 = "%{public}s called with null dictionary";
      goto LABEL_33;
    }

    if (v11 != 1)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v14 = "nw_dictionary_get_count";
      v6 = "%{public}s called with null dictionary, backtrace limit exceeded";
      goto LABEL_33;
    }

    backtrace_string = __nw_create_backtrace_string();
    v4 = __nwlog_obj();
    v5 = type;
    v8 = os_log_type_enabled(v4, type);
    if (!backtrace_string)
    {
      if (!v8)
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v14 = "nw_dictionary_get_count";
      v6 = "%{public}s called with null dictionary, no backtrace";
      goto LABEL_33;
    }

    if (v8)
    {
      *buf = 136446466;
      v14 = "nw_dictionary_get_count";
      v15 = 2082;
      v16 = backtrace_string;
      _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null dictionary, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
LABEL_34:
    if (!v3)
    {
      return 0;
    }

LABEL_35:
    free(v3);
    return 0;
  }

  v1 = *(a1 + 16);
  if (!v1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v14 = "nw_dictionary_get_count";
    v3 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v11 = 0;
    if (!__nwlog_fault(v3, &type, &v11))
    {
      goto LABEL_34;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v14 = "nw_dictionary_get_count";
      v6 = "%{public}s called with null dictionary->xpc_object";
      goto LABEL_33;
    }

    if (v11 != 1)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v14 = "nw_dictionary_get_count";
      v6 = "%{public}s called with null dictionary->xpc_object, backtrace limit exceeded";
      goto LABEL_33;
    }

    v9 = __nw_create_backtrace_string();
    v4 = __nwlog_obj();
    v5 = type;
    v10 = os_log_type_enabled(v4, type);
    if (v9)
    {
      if (v10)
      {
        *buf = 136446466;
        v14 = "nw_dictionary_get_count";
        v15 = 2082;
        v16 = v9;
        _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null dictionary->xpc_object, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v9);
      if (!v3)
      {
        return 0;
      }

      goto LABEL_35;
    }

    if (v10)
    {
      *buf = 136446210;
      v14 = "nw_dictionary_get_count";
      v6 = "%{public}s called with null dictionary->xpc_object, no backtrace";
LABEL_33:
      _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      goto LABEL_34;
    }

    goto LABEL_34;
  }

  return xpc_dictionary_get_count(v1);
}

uint64_t sub_181ADC1E0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xA)
  {
  }

  return result;
}

unint64_t sub_181ADC1F8()
{
  v2[1] = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  arc4random_buf(v2, 8uLL);
  v0 = v2[0];
  v2[0] = 0;
  arc4random_buf(v2, 8uLL);
  return v0 & 0xFF0FFFFFFFFFFFFFLL | 0x40000000000000;
}

uint64_t sub_181ADC28C(_BYTE *a1, void *a2)
{
  v4 = *v2;
  v5 = v2[1];
  v7 = v2[2];
  v6 = v2[3];
  v8 = v2[4];
  v9 = *(v2 + 27);
  v233 = *(v2 + 25);
  v234 = v9;
  v10 = *(v2 + 31);
  v235 = *(v2 + 29);
  v236 = v10;
  v11 = *(v2 + 19);
  v229 = *(v2 + 17);
  v230 = v11;
  v12 = *(v2 + 23);
  v231 = *(v2 + 21);
  v232 = v12;
  v13 = *(v2 + 11);
  v225 = *(v2 + 9);
  v226 = v13;
  v14 = *(v2 + 15);
  v227 = *(v2 + 13);
  v228 = v14;
  v15 = *(v2 + 7);
  v223 = *(v2 + 5);
  v224 = v15;
  v16 = v2[33];
  v17 = *(v2 + 22);
  v221 = *(v2 + 21);
  v222[0] = v17;
  *(v222 + 10) = *(v2 + 362);
  v18 = *(v2 + 18);
  v217 = *(v2 + 17);
  v218 = v18;
  v19 = *(v2 + 20);
  v219 = *(v2 + 19);
  v220 = v19;
  if (v5)
  {
    v198 = *(v5 + 184);
    v20 = *(v5 + 185);
    if (v7)
    {
LABEL_3:
      v197 = *(v7 + 184);
      v193 = *(v7 + 185);
      goto LABEL_6;
    }
  }

  else
  {
    v20 = 5;
    v198 = 5;
    if (v7)
    {
      goto LABEL_3;
    }
  }

  v193 = 5;
  v197 = 5;
LABEL_6:
  *&v215[0] = v4;
  *(&v215[0] + 1) = v5;
  *&v215[1] = v7;
  *(&v215[1] + 1) = v6;
  v203 = v6;
  *&v215[2] = v8;
  *(&v215[12] + 8) = *(v2 + 25);
  *(&v215[13] + 8) = *(v2 + 27);
  *(&v215[14] + 8) = *(v2 + 29);
  *(&v215[15] + 8) = *(v2 + 31);
  *(&v215[8] + 8) = *(v2 + 17);
  *(&v215[9] + 8) = *(v2 + 19);
  *(&v215[10] + 8) = *(v2 + 21);
  *(&v215[11] + 8) = *(v2 + 23);
  *(&v215[4] + 8) = *(v2 + 9);
  *(&v215[5] + 8) = *(v2 + 11);
  *(&v215[6] + 8) = *(v2 + 13);
  *(&v215[7] + 8) = *(v2 + 15);
  *(&v215[2] + 8) = *(v2 + 5);
  *(&v215[3] + 8) = *(v2 + 7);
  *(&v215[16] + 1) = v16;
  *(&v215[22] + 10) = *(v2 + 362);
  v21 = *(v2 + 22);
  v215[21] = *(v2 + 21);
  v215[22] = v21;
  v22 = *(v2 + 18);
  v215[17] = *(v2 + 17);
  v215[18] = v22;
  v23 = *(v2 + 20);
  v215[19] = *(v2 + 19);
  v215[20] = v23;

  swift_retain_n();
  v206 = v16;
  if (sub_181ADE65C())
  {

    goto LABEL_8;
  }

  v195 = v4;
  swift_beginAccess();
  v34 = v8[30];
  if (!v34)
  {
    goto LABEL_200;
  }

  v35 = *(v34 + 24);
  if (!v35)
  {
LABEL_85:
    v75 = v8[30];
    if (v75)
    {
      goto LABEL_86;
    }

LABEL_200:

    goto LABEL_201;
  }

  if (v198 == 5)
  {
    v36 = swift_retain_n();
    goto LABEL_83;
  }

  v70 = v35[4];
  v71 = v35[3] + v70;
  if (v35[2] < v71)
  {
    v71 = v35[2];
  }

  *&v215[0] = v35;
  *(&v215[0] + 1) = v70;
  *&v215[1] = v71;

  v73 = v35;
  while (1)
  {
    if (v70 != *&v215[1])
    {
      goto LABEL_79;
    }

    v72 = sub_181AC81FC(v72);
    if ((v72 & 1) == 0)
    {
      break;
    }

    v70 = *(&v215[0] + 1);
    v73 = *&v215[0];
LABEL_79:
    v74 = v73 + v70++;
    *(&v215[0] + 1) = v70;
    if (qword_182AEE030[v74[40]] == qword_182AEE030[v198])
    {

      *a1 = 7;
      *&v215[0] = 0xD000000000000010;
      *(&v215[0] + 1) = 0x8000000182BD7460;
      v83 = 0xE400000000000000;
      v84 = 0xE800000000000000;
      v85 = 0x72616C756C6C6563;
      v86 = 0x7465206465726977;
      v87 = 0xEE0074656E726568;
      if (v198 != 3)
      {
        v86 = 0x6B636162706F6F6CLL;
        v87 = 0xE800000000000000;
      }

      if (v198 != 2)
      {
        v85 = v86;
        v84 = v87;
      }

      v88 = 0x726568746FLL;
      if (v198)
      {
        v88 = 1768319351;
      }

      else
      {
        v83 = 0xE500000000000000;
      }

      if (v198 <= 1)
      {
        v89 = v88;
      }

      else
      {
        v89 = v85;
      }

      if (v198 <= 1)
      {
        v90 = v83;
      }

      else
      {
        v90 = v84;
      }

      MEMORY[0x1865D9CA0](v89, v90);

      MEMORY[0x1865D9CA0](0xD00000000000001DLL, 0x8000000182BD7440);
      goto LABEL_269;
    }
  }

  swift_retain_n();

  v16 = v206;
LABEL_83:
  if (v197 == 5)
  {

    goto LABEL_85;
  }

  v78 = a2;
  v79 = v35[4];
  v80 = v35[3] + v79;
  if (v35[2] < v80)
  {
    v80 = v35[2];
  }

  *&v215[0] = v35;
  *(&v215[0] + 1) = v79;
  *&v215[1] = v80;
  v81 = v35;
  while (2)
  {
    if (v79 != *&v215[1])
    {
      goto LABEL_94;
    }

    v36 = sub_181AC81FC(v36);
    if (v36)
    {
      v79 = *(&v215[0] + 1);
      v81 = *&v215[0];
LABEL_94:
      v82 = v81 + v79++;
      *(&v215[0] + 1) = v79;
      if (qword_182AEE030[v82[40]] != qword_182AEE030[v197])
      {
        continue;
      }

      *a1 = 7;
      *&v215[0] = 0xD000000000000010;
      *(&v215[0] + 1) = 0x8000000182BD7460;
      v127 = 0xE400000000000000;
      v128 = 0xE800000000000000;
      v129 = 0x72616C756C6C6563;
      v130 = 0x7465206465726977;
      v131 = 0xEE0074656E726568;
      if (v197 != 3)
      {
        v130 = 0x6B636162706F6F6CLL;
        v131 = 0xE800000000000000;
      }

      if (v197 != 2)
      {
        v129 = v130;
        v128 = v131;
      }

      v132 = 0x726568746FLL;
      if (v197)
      {
        v132 = 1768319351;
      }

      else
      {
        v127 = 0xE500000000000000;
      }

      if (v197 <= 1)
      {
        v133 = v132;
      }

      else
      {
        v133 = v129;
      }

      if (v197 <= 1)
      {
        v134 = v127;
      }

      else
      {
        v134 = v128;
      }

      MEMORY[0x1865D9CA0](v133, v134);

      MEMORY[0x1865D9CA0](0xD00000000000001DLL, 0x8000000182BD7440);
LABEL_284:

      result = 0;
      v173 = *(&v215[0] + 1);
      *v78 = *&v215[0];
      v78[1] = v173;
      return result;
    }

    break;
  }

  v16 = v206;
  v75 = v8[30];
  if (!v75)
  {
    goto LABEL_200;
  }

LABEL_86:
  v191 = *(v75 + 32);
  if (!v191)
  {
    goto LABEL_186;
  }

  if (v20 == 5)
  {
    v76 = *(v75 + 32);
    v77 = swift_retain_n();
    goto LABEL_184;
  }

  v135 = *(v75 + 32);
  v136 = v191[4];
  v137 = v191[3] + v136;
  if (v191[2] < v137)
  {
    v137 = v191[2];
  }

  *&v215[0] = v191;
  *(&v215[0] + 1) = v136;
  *&v215[1] = v137;

  while (2)
  {
    if (v136 != *&v215[1])
    {
LABEL_180:
      v139 = v135 + v136++;
      *(&v215[0] + 1) = v136;
      if (qword_182AEE058[*(v139 + 40)] == qword_182AEE058[v20])
      {

        *a1 = 7;
        *&v215[0] = 0xD000000000000013;
        *(&v215[0] + 1) = 0x8000000182BD7400;
        v154 = 0x7365636F72706F63;
        v155 = 0xEB00000000726F73;
        if (v20 != 3)
        {
          v154 = 0x6F696E61706D6F63;
          v155 = 0xE90000000000006ELL;
        }

        if (v20 == 2)
        {
          v154 = 0x6477615F69666977;
          v155 = 0xE90000000000006CLL;
        }

        v156 = 0xE500000000000000;
        v157 = 0x726568746FLL;
        if (v20)
        {
          v157 = 0xD000000000000013;
          v156 = 0x8000000182BD71B0;
        }

        if (v20 <= 1)
        {
          v158 = v157;
        }

        else
        {
          v158 = v154;
        }

        if (v20 <= 1)
        {
          v159 = v156;
        }

        else
        {
          v159 = v155;
        }

        MEMORY[0x1865D9CA0](v158, v159);

        MEMORY[0x1865D9CA0](0xD00000000000001DLL, 0x8000000182BD7440);

        result = 0;
        v160 = *(&v215[0] + 1);
        *a2 = *&v215[0];
        a2[1] = v160;
        return result;
      }

      continue;
    }

    break;
  }

  v138 = sub_181AC81FC(v138);
  if (v138)
  {
    v136 = *(&v215[0] + 1);
    v135 = *&v215[0];
    goto LABEL_180;
  }

  v76 = v191;
  swift_retain_n();

  v16 = v206;
LABEL_184:
  if (v193 == 5)
  {

LABEL_186:
    v140 = v8[30];
    if (!v140)
    {
      goto LABEL_200;
    }

    goto LABEL_187;
  }

  v144 = v76[4];
  v145 = v76[3] + v144;
  if (v76[2] < v145)
  {
    v145 = v76[2];
  }

  *&v215[0] = v76;
  *(&v215[0] + 1) = v144;
  *&v215[1] = v145;
  v146 = v76;
  while (2)
  {
    if (v144 != *&v215[1])
    {
      goto LABEL_196;
    }

    v77 = sub_181AC81FC(v77);
    if (v77)
    {
      v144 = *(&v215[0] + 1);
      v146 = *&v215[0];
LABEL_196:
      v147 = v146 + v144++;
      *(&v215[0] + 1) = v144;
      if (qword_182AEE058[v147[40]] != qword_182AEE058[v193])
      {
        continue;
      }

      v78 = a2;

      *a1 = 7;
      *&v215[0] = 0xD000000000000013;
      *(&v215[0] + 1) = 0x8000000182BD7400;
      v167 = 0x7365636F72706F63;
      v168 = 0xEB00000000726F73;
      if (v193 != 3)
      {
        v167 = 0x6F696E61706D6F63;
        v168 = 0xE90000000000006ELL;
      }

      if (v193 == 2)
      {
        v167 = 0x6477615F69666977;
        v168 = 0xE90000000000006CLL;
      }

      v169 = 0xE500000000000000;
      v170 = 0x726568746FLL;
      if (v193)
      {
        v170 = 0xD000000000000013;
        v169 = 0x8000000182BD71B0;
      }

      if (v193 <= 1)
      {
        v171 = v170;
      }

      else
      {
        v171 = v167;
      }

      if (v193 <= 1)
      {
        v172 = v169;
      }

      else
      {
        v172 = v168;
      }

      MEMORY[0x1865D9CA0](v171, v172);

      MEMORY[0x1865D9CA0](0xD00000000000001DLL, 0x8000000182BD7440);

      goto LABEL_284;
    }

    break;
  }

  v140 = v8[30];
  if (!v140)
  {
    goto LABEL_200;
  }

LABEL_187:
  if (!*(v140 + 48))
  {
    goto LABEL_200;
  }

  v194 = *(v140 + 48);
  swift_retain_n();
  if (v5)
  {
    if (sub_181F44238(v5, v194))
    {

      *a1 = 6;
      sub_182AD3BA8();

      *&v215[0] = 0x6361667265746E49;
      *(&v215[0] + 1) = 0xEB00000000272065;
      v141 = *(v5 + 40);
      v142 = *(v5 + 48);

      MEMORY[0x1865D9CA0](v141, v142);

      MEMORY[0x1865D9CA0](2579239, 0xE300000000000000);
      v216[0] = *(v5 + 16);
      v143 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v143);

      MEMORY[0x1865D9CA0](0xD00000000000001ELL, 0x8000000182BD7420);

LABEL_269:

      result = 0;
      v33 = *(&v215[0] + 1);
      v32 = *&v215[0];
      goto LABEL_270;
    }
  }

  if (v7)
  {
    v192 = sub_181F44238(v7, v194);

    if (v192)
    {

      *a1 = 6;
      *&v215[0] = 0;
      *(&v215[0] + 1) = 0xE000000000000000;
      sub_182AD3BA8();
      MEMORY[0x1865D9CA0](0xD000000000000013, 0x8000000182BD7400);
      v174 = *(v7 + 40);
      v175 = *(v7 + 48);

      MEMORY[0x1865D9CA0](v174, v175);

      MEMORY[0x1865D9CA0](2579239, 0xE300000000000000);
      v216[0] = *(v7 + 16);
      v176 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v176);

      MEMORY[0x1865D9CA0](0xD00000000000001ELL, 0x8000000182BD7420);

      result = 0;
      *a2 = 0;
      a2[1] = 0xE000000000000000;
      return result;
    }
  }

  else
  {
  }

LABEL_201:
  *&v215[0] = v195;
  *(&v215[0] + 1) = v5;
  *&v215[1] = v7;
  *(&v215[1] + 1) = v203;
  *&v215[2] = v8;
  *(&v215[12] + 8) = v233;
  *(&v215[13] + 8) = v234;
  *(&v215[14] + 8) = v235;
  *(&v215[15] + 8) = v236;
  *(&v215[8] + 8) = v229;
  *(&v215[9] + 8) = v230;
  *(&v215[10] + 8) = v231;
  *(&v215[11] + 8) = v232;
  *(&v215[4] + 8) = v225;
  *(&v215[5] + 8) = v226;
  *(&v215[6] + 8) = v227;
  *(&v215[7] + 8) = v228;
  *(&v215[2] + 8) = v223;
  *(&v215[3] + 8) = v224;
  *(&v215[16] + 1) = v16;
  *(&v215[22] + 10) = *(v222 + 10);
  v215[21] = v221;
  v215[22] = v222[0];
  v215[17] = v217;
  v215[18] = v218;
  v215[19] = v219;
  v215[20] = v220;
  if (!sub_181ADE760())
  {
    v150 = *(v8 + 224);
    if ((v150 - 1) <= 2 && (v198 == 5 || (v150 - 1) + 2 != qword_182AEE030[v198]) && (v197 == 5 || (v150 - 1) + 2 != qword_182AEE030[v197]))
    {

      if (*a1 == 32 || !a2[1])
      {
        goto LABEL_309;
      }

      *a1 = 8;
      *&v215[0] = 0;
      *(&v215[0] + 1) = 0xE000000000000000;
      sub_182AD3BA8();
      MEMORY[0x1865D9CA0](0x6361667265746E49, 0xEF20657079742065);
      sub_1822694FC(v150);
      goto LABEL_268;
    }

    v151 = *(v8 + 225);
    if ((v151 - 1) > 3u)
    {
      goto LABEL_240;
    }

    if (v5)
    {
      v152 = *(v5 + 185);
      if (v7)
      {
        goto LABEL_213;
      }
    }

    else
    {
      v152 = 0;
      if (v7)
      {
LABEL_213:
        v153 = *(v7 + 185);
        if (v152 == 5)
        {
LABEL_238:
          if (v153 != 5 && qword_182AEE010[v151 - 1] == qword_182AEE058[v153])
          {
LABEL_240:
            v162 = v8[30];
            if (!v162)
            {
              goto LABEL_245;
            }

            v163 = *(v162 + 16);
            if (!v163)
            {
              goto LABEL_245;
            }

            *&v215[0] = *(v162 + 16);
            if (v5)
            {
              v216[0] = v5;

              v201 = _s7Network9InterfaceV2eeoiySbAC_ACtFZ_0(v215, v216);
              swift_retain_n();

              if (v201)
              {

                goto LABEL_246;
              }
            }

            else
            {
              swift_retain_n();
            }

            *&v215[0] = v163;
            if (v7)
            {
              v216[0] = v7;
              v202 = _s7Network9InterfaceV2eeoiySbAC_ACtFZ_0(v215, v216);

              if (v202)
              {
LABEL_245:

LABEL_246:
                v149 = *(v8 + 230);
                if (v149)
                {
                  goto LABEL_247;
                }

LABEL_203:
                if ((v149 & 2) != 0)
                {
                  goto LABEL_252;
                }

                goto LABEL_256;
              }
            }

            else
            {
            }

            if (*a1 != 32 && a2[1])
            {

              *a1 = 9;
              *&v215[0] = 0x6361667265746E49;
              *(&v215[0] + 1) = 0xEA00000000002065;
              v178 = a2;
              v180 = v163[5];
              v179 = v163[6];

              MEMORY[0x1865D9CA0](v180, v179);

              MEMORY[0x1865D9CA0](91, 0xE100000000000000);
              v216[0] = v163[2];
              v181 = sub_182AD41B8();
              MEMORY[0x1865D9CA0](v181);

              MEMORY[0x1865D9CA0](0xD00000000000001BLL, 0x8000000182BD73A0);

              v182 = v215[0];

              result = 0;
              *v178 = v182;
              return result;
            }

            goto LABEL_309;
          }

          if (*a1 == 32 || !a2[1])
          {
            goto LABEL_309;
          }

          *a1 = 8;
          *&v215[0] = 0;
          *(&v215[0] + 1) = 0xE000000000000000;
          sub_182AD3BA8();
          MEMORY[0x1865D9CA0](0xD000000000000012, 0x8000000182BD73C0);
          sub_1822695CC(v151);
LABEL_268:
          MEMORY[0x1865D9CA0](0xD00000000000001ALL, 0x8000000182BD73E0);

          goto LABEL_269;
        }

LABEL_237:
        if (qword_182AEE010[v151 - 1] == qword_182AEE058[v152])
        {
          goto LABEL_240;
        }

        goto LABEL_238;
      }
    }

    v153 = 0;
    if (v152 == 5)
    {
      goto LABEL_238;
    }

    goto LABEL_237;
  }

  v149 = *(v8 + 230);
  if ((v149 & 1) == 0)
  {
    goto LABEL_203;
  }

LABEL_247:
  *&v215[0] = v195;
  *(&v215[0] + 1) = v5;
  *&v215[1] = v7;
  *(&v215[1] + 1) = v203;
  *&v215[2] = v8;
  *(&v215[12] + 8) = v233;
  *(&v215[13] + 8) = v234;
  *(&v215[14] + 8) = v235;
  *(&v215[15] + 8) = v236;
  *(&v215[8] + 8) = v229;
  *(&v215[9] + 8) = v230;
  *(&v215[10] + 8) = v231;
  *(&v215[11] + 8) = v232;
  *(&v215[4] + 8) = v225;
  *(&v215[5] + 8) = v226;
  *(&v215[6] + 8) = v227;
  *(&v215[7] + 8) = v228;
  *(&v215[2] + 8) = v223;
  *(&v215[3] + 8) = v224;
  *(&v215[16] + 1) = v16;
  *(&v215[22] + 10) = *(v222 + 10);
  v215[21] = v221;
  v215[22] = v222[0];
  v215[17] = v217;
  v215[18] = v218;
  v215[19] = v219;
  v215[20] = v220;
  v148 = sub_181AB5B54(v148);
  if (v148)
  {
    if (*a1 != 32 && a2[1])
    {

      *a1 = 5;
      v164 = 0x8000000182BD7380;

      result = 0;
      v165 = 0xD000000000000019;
LABEL_288:
      *a2 = v165;
      a2[1] = v164;
      return result;
    }

    goto LABEL_309;
  }

  if ((*(v8 + 230) & 2) != 0)
  {
LABEL_252:
    *&v215[0] = v195;
    *(&v215[0] + 1) = v5;
    *&v215[1] = v7;
    *(&v215[1] + 1) = v203;
    *&v215[2] = v8;
    *(&v215[12] + 8) = v233;
    *(&v215[13] + 8) = v234;
    *(&v215[14] + 8) = v235;
    *(&v215[15] + 8) = v236;
    *(&v215[8] + 8) = v229;
    *(&v215[9] + 8) = v230;
    *(&v215[10] + 8) = v231;
    *(&v215[11] + 8) = v232;
    *(&v215[4] + 8) = v225;
    *(&v215[5] + 8) = v226;
    *(&v215[6] + 8) = v227;
    *(&v215[7] + 8) = v228;
    *(&v215[2] + 8) = v223;
    *(&v215[3] + 8) = v224;
    *(&v215[16] + 1) = v16;
    *(&v215[22] + 10) = *(v222 + 10);
    v215[21] = v221;
    v215[22] = v222[0];
    v215[17] = v217;
    v215[18] = v218;
    v215[19] = v219;
    v215[20] = v220;
    v148 = sub_181ABA75C(v148);
    if (v148)
    {
      if (*a1 != 32 && a2[1])
      {

        *a1 = 25;
        v164 = 0x8000000182BD7360;

        result = 0;
        v165 = 0xD00000000000001BLL;
        goto LABEL_288;
      }

LABEL_309:

      return 0;
    }
  }

LABEL_256:
  if ((*(v8 + 231) & 1) == 0)
  {
    *&v215[0] = v195;
    *(&v215[0] + 1) = v5;
    *&v215[1] = v7;
    *(&v215[1] + 1) = v203;
    *&v215[2] = v8;
    *(&v215[12] + 8) = v233;
    *(&v215[13] + 8) = v234;
    *(&v215[14] + 8) = v235;
    *(&v215[15] + 8) = v236;
    *(&v215[8] + 8) = v229;
    *(&v215[9] + 8) = v230;
    *(&v215[10] + 8) = v231;
    *(&v215[11] + 8) = v232;
    *(&v215[4] + 8) = v225;
    *(&v215[5] + 8) = v226;
    *(&v215[6] + 8) = v227;
    *(&v215[7] + 8) = v228;
    *(&v215[2] + 8) = v223;
    *(&v215[3] + 8) = v224;
    *(&v215[16] + 1) = v16;
    *(&v215[22] + 10) = *(v222 + 10);
    v215[21] = v221;
    v215[22] = v222[0];
    v215[17] = v217;
    v215[18] = v218;
    v215[19] = v219;
    v215[20] = v220;
    if ((sub_181ADECE8(v148) & 1) != 0 && (nw_path_is_ultra_constrained_allowed() & 1) == 0)
    {
      if (*a1 != 32 && a2[1])
      {

        *a1 = 5;
        v164 = 0x8000000182BD7330;

        result = 0;
        v165 = 0xD000000000000021;
        goto LABEL_288;
      }

      goto LABEL_309;
    }
  }

  if ((*(v8 + 231) & 2) != 0)
  {
    *&v215[0] = v195;
    *(&v215[0] + 1) = v5;
    *&v215[1] = v7;
    *(&v215[1] + 1) = v203;
    *&v215[2] = v8;
    *(&v215[12] + 8) = v233;
    *(&v215[13] + 8) = v234;
    *(&v215[14] + 8) = v235;
    *(&v215[15] + 8) = v236;
    *(&v215[8] + 8) = v229;
    *(&v215[9] + 8) = v230;
    *(&v215[10] + 8) = v231;
    *(&v215[11] + 8) = v232;
    *(&v215[4] + 8) = v225;
    *(&v215[5] + 8) = v226;
    *(&v215[6] + 8) = v227;
    *(&v215[7] + 8) = v228;
    *(&v215[2] + 8) = v223;
    *(&v215[3] + 8) = v224;
    *(&v215[16] + 1) = v16;
    *(&v215[22] + 10) = *(v222 + 10);
    v215[21] = v221;
    v215[22] = v222[0];
    v215[17] = v217;
    v215[18] = v218;
    v215[19] = v219;
    v215[20] = v220;
    sub_181EB162C();
    if (v166)
    {
      if (*a1 != 32 && a2[1])
      {

        *a1 = 5;
        v164 = 0x8000000182BD7310;

        result = 0;
        v165 = 0xD000000000000017;
        goto LABEL_288;
      }

      goto LABEL_309;
    }
  }

LABEL_8:
  swift_beginAccess();
  v24 = v8[30];
  if (!v24)
  {
    goto LABEL_26;
  }

  v25 = v24[8];
  if (!v25)
  {
    goto LABEL_114;
  }

  if (!v16)
  {

    goto LABEL_114;
  }

  v26 = v25[4];
  if (v25[2] >= v25[3] + v26)
  {
    v27 = v25[3] + v26;
  }

  else
  {
    v27 = v25[2];
  }

  *&v215[0] = v25;
  *(&v215[0] + 1) = v26;
  *&v215[1] = v27;
  v28 = swift_retain_n();
  while (2)
  {
    if (v26 != v27)
    {
LABEL_19:
      *(&v215[0] + 1) = v26 + 1;
      if (*(v16 + 16))
      {
        v28 = sub_181AC2218(*(*&v215[0] + 16 * v26 + 40), *(*&v215[0] + 16 * v26 + 48));
        if (v29)
        {

          *a1 = 10;
          v207 = NetworkAgent.description.getter();
          v210 = v30;
          MEMORY[0x1865D9CA0](0xD00000000000001CLL, 0x8000000182BD72F0);

          result = 0;
          v32 = v207;
          v33 = v210;
LABEL_270:
          *a2 = v32;
          a2[1] = v33;
          return result;
        }
      }

      v27 = *&v215[1];
      ++v26;
      continue;
    }

    break;
  }

  v28 = sub_181AC81FC(v28);
  if (v28)
  {
    v26 = *(&v215[0] + 1);
    goto LABEL_19;
  }

  v24 = v8[30];
  if (!v24)
  {
    goto LABEL_26;
  }

LABEL_114:
  v91 = v24[10];
  if (!v91)
  {
    v99 = v24[7];
    if (!v99)
    {
      goto LABEL_26;
    }

LABEL_126:
    if (!v16)
    {

      goto LABEL_26;
    }

    v100 = v99[4];
    if (v99[2] >= v99[3] + v100)
    {
      v101 = v99[3] + v100;
    }

    else
    {
      v101 = v99[2];
    }

    v209 = v99;
    v212 = v99[4];
    v214 = v101;
    v102 = v16 + 64;
    v103 = swift_retain_n();
    v185 = a2;
    while (1)
    {
      if (v100 == v101)
      {
        v104 = v209;
        if ((sub_181AC81FC(v103) & 1) == 0)
        {
          goto LABEL_313;
        }
      }

      else
      {
        v104 = v209;
      }

      v105 = v212;
      v189 = ++v212;
      v106 = &v104[4 * v105];
      v107 = 1 << *(v16 + 32);
      v108 = v107 < 64 ? ~(-1 << v107) : -1;
      v109 = v108 & *(v16 + 64);
      v200 = *(v106 + 5);
      v205 = *(v106 + 7);
      sub_181AA5C1C(v106[5], v106[6]);
      sub_181ADC1E0(v205, *(&v205 + 1));

      v110 = 0;
      if (v109)
      {
        break;
      }

      while (1)
      {
LABEL_140:
        v111 = v110 + 1;
        if (__OFADD__(v110, 1))
        {
          __break(1u);
          return result;
        }

        if (v111 >= ((v107 + 63) >> 6))
        {
          break;
        }

        v109 = *(v102 + 8 * v111);
        ++v110;
        if (v109)
        {
          v110 = v111;
          goto LABEL_144;
        }
      }

      sub_181E4926C(v200, *(&v200 + 1));
      sub_181E49280(v205, *(&v205 + 1));
      v16 = v206;

      v101 = v214;
      v100 = v189;
    }

LABEL_144:
    while (1)
    {
      v112 = v8;
      v215[0] = v200;
      v215[1] = v205;
      if (!NetworkAgentType.domain.getter() && v113 == 0xE000000000000000)
      {
        break;
      }

      v114 = sub_182AD4268();

      if ((v114 & 1) == 0)
      {
        v215[0] = v200;
        v215[1] = v205;
        v122 = NetworkAgentType.domain.getter();
        v124 = v123;
        if (v122 != sub_181AA5C30() || v124 != v125)
        {
          v126 = sub_182AD4268();

          if ((v126 & 1) == 0)
          {
            goto LABEL_155;
          }

          goto LABEL_149;
        }

        goto LABEL_147;
      }

LABEL_149:
      v215[0] = v200;
      v215[1] = v205;
      if (!NetworkAgentType.type.getter() && v115 == 0xE000000000000000)
      {
        goto LABEL_300;
      }

      v116 = sub_182AD4268();

      if (v116)
      {
        goto LABEL_301;
      }

      v215[0] = v200;
      v215[1] = v205;
      v117 = NetworkAgentType.type.getter();
      v119 = v118;
      if (v117 == sub_1820F55CC() && v119 == v120)
      {

LABEL_300:

LABEL_301:
        sub_181E4926C(v200, *(&v200 + 1));
        sub_181E49280(v205, *(&v205 + 1));

        v64 = v185;

        *a1 = 10;
        *&v215[0] = NetworkAgent.description.getter();
        *(&v215[0] + 1) = v177;
        MEMORY[0x1865D9CA0](0xD00000000000001CLL, 0x8000000182BD72F0);

        v69 = *(&v215[0] + 1);
        v68 = *&v215[0];

LABEL_72:

        result = 0;
        *v64 = v68;
        v64[1] = v69;
        return result;
      }

      v121 = sub_182AD4268();

      if (v121)
      {
        goto LABEL_301;
      }

LABEL_155:
      v109 &= v109 - 1;

      v8 = v112;
      a2 = v185;
      if (!v109)
      {
        goto LABEL_140;
      }
    }

LABEL_147:

    goto LABEL_149;
  }

  v183 = v8;
  v92 = v91[4];
  v93 = v91[3] + v92;
  if (v91[2] < v93)
  {
    v93 = v91[2];
  }

  *&v215[0] = v91;
  *(&v215[0] + 1) = v92;
  *&v215[1] = v93;
  v94 = swift_retain_n();
  v187 = v94;
  while (1)
  {
    if (v92 != *&v215[1])
    {
      goto LABEL_121;
    }

    v8 = v183;
    if ((sub_181AC81FC(v94) & 1) == 0)
    {
      break;
    }

    v92 = *(&v215[0] + 1);
    v187 = *&v215[0];
LABEL_121:
    *(&v215[0] + 1) = v92 + 1;
    if (v206)
    {
      if (*(v206 + 16))
      {
        v95 = (v187 + 16 * v92);
        v94 = sub_181AC2218(v95[40] | (v95[41] << 8) | (v95[42] << 16) | (v95[43] << 24) | (v95[44] << 32) | (v95[45] << 40) | (v95[46] << 48) | (v95[47] << 56), v95[48] | (v95[49] << 8) | (v95[50] << 16) | (v95[51] << 24) | (v95[52] << 32) | (v95[53] << 40) | (v95[54] << 48) | (v95[55] << 56));
        ++v92;
        if (v96)
        {
          continue;
        }
      }
    }

    *a1 = 11;
    MEMORY[0x1EEE9AC00](v97);
    v98 = sub_182AD30D8();
    MEMORY[0x1865D9CA0](v98);

    MEMORY[0x1865D9CA0](0xD000000000000017, 0x8000000182BD72D0);

    result = 0;
    *a2 = 0xD000000000000016;
    a2[1] = 0x8000000182BD72B0;
    return result;
  }

  v161 = v183[30];
  if (!v161)
  {
    v16 = v206;
    goto LABEL_26;
  }

  v16 = v206;
  v99 = *(v161 + 56);
  if (v99)
  {
    goto LABEL_126;
  }

  while (1)
  {
LABEL_26:
    memcpy(v215, v8 + 2, 0x188uLL);
    v37 = sub_181AD3638();
    if (!v37)
    {

      goto LABEL_74;
    }

    v38 = v37[4];
    if (v37[2] >= v37[3] + v38)
    {
      v39 = v37[3] + v38;
    }

    else
    {
      v39 = v37[2];
    }

    v208 = v37;
    v211 = v37[4];
    v213 = v39;
    v40 = v16 + 64;

    v184 = a2;
    if (v38 == v39)
    {
      goto LABEL_32;
    }

LABEL_31:
    v8 = v208;
LABEL_33:
    v42 = v211;
    v43 = ++v211;
    v44 = &v8[4 * v42];
    v45 = *(v44 + 5);
    v46 = v44[6];
    v47 = v44[8];
    v199 = v45;
    v204 = *(v44 + 7);
    v196 = v46;
    if (!v16)
    {
      sub_181AA5C1C(v45, v46);
      sub_181ADC1E0(v204, v47);
LABEL_71:
      v64 = v184;

      *a1 = 11;
      v215[0] = v199;
      v215[1] = v204;
      v65 = NetworkAgentType.description.getter();
      v67 = v66;
      sub_181E4926C(v199, v196);
      sub_181E49280(v204, v47);
      MEMORY[0x1865D9CA0](v65, v67);

      MEMORY[0x1865D9CA0](0xD000000000000017, 0x8000000182BD72D0);

      v68 = 0xD000000000000016;
      v69 = 0x8000000182BD72B0;
      goto LABEL_72;
    }

    v190 = v43;
    v48 = 1 << *(v16 + 32);
    v49 = v48 < 64 ? ~(-1 << v48) : -1;
    v50 = v49 & *(v16 + 64);
    v188 = v45;
    sub_181AA5C1C(v45, v46);
    a2 = v47;
    sub_181ADC1E0(v204, v47);

    v51 = 0;
    if (v50)
    {
      break;
    }

LABEL_42:
    v52 = v204;
    while (1)
    {
      v53 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        break;
      }

      if (v53 >= ((v48 + 63) >> 6))
      {

        goto LABEL_71;
      }

      v50 = *(v40 + 8 * v53);
      ++v51;
      if (v50)
      {
        v51 = v53;
        goto LABEL_47;
      }
    }

    __break(1u);
LABEL_313:
  }

  while (1)
  {
    v52 = v204;
LABEL_47:
    v50 &= v50 - 1;
    v215[0] = v199;
    v215[1] = v52;
    if (NetworkAgentType.domain.getter() || v54 != 0xE000000000000000)
    {
      v55 = sub_182AD4268();

      if ((v55 & 1) == 0)
      {
        v215[0] = v199;
        v215[1] = v204;
        v56 = NetworkAgentType.domain.getter();
        v8 = v57;
        if (v56 == sub_181AA5C30() && v8 == v58)
        {
        }

        else
        {
          v16 = sub_182AD4268();

          if ((v16 & 1) == 0)
          {

            if (!v50)
            {
              goto LABEL_42;
            }

            continue;
          }
        }
      }
    }

    else
    {
    }

    v215[0] = v199;
    v215[1] = v204;
    if (!NetworkAgentType.type.getter() && v59 == 0xE000000000000000)
    {
      v16 = v206;

LABEL_65:
      sub_181E4926C(v188, v196);
      sub_181E49280(v204, v47);

      goto LABEL_67;
    }

    v60 = sub_182AD4268();

    if (v60)
    {
      v16 = v206;

      goto LABEL_65;
    }

    v215[0] = v199;
    v215[1] = v204;
    v61 = NetworkAgentType.type.getter();
    v8 = v62;
    if (v61 == sub_1820F55CC() && v8 == v63)
    {
      break;
    }

    v16 = sub_182AD4268();

    if (v16)
    {
      goto LABEL_66;
    }

    if (!v50)
    {
      goto LABEL_42;
    }
  }

LABEL_66:
  v16 = v206;

  sub_181E4926C(v188, v196);
  v41 = sub_181E49280(v204, v47);
LABEL_67:
  if (v190 != v213)
  {
    goto LABEL_31;
  }

LABEL_32:
  v8 = v208;
  if (sub_181AC81FC(v41))
  {
    goto LABEL_33;
  }

LABEL_74:

  return 1;
}

uint64_t sub_181ADE65C()
{
  v1 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 158))
  {
    return 1;
  }

  v4 = *(v0 + 40);
  if (!v4)
  {
    return 0;
  }

  v5 = OBJC_IVAR____TtC7Network8Endpoint_type;
  swift_beginAccess();
  sub_181B5C0FC(v4 + v5, v3);
  if (swift_getEnumCaseMultiPayload() - 1 >= 2)
  {
    v6 = (*(v4 + OBJC_IVAR____TtC7Network8Endpoint_flags) >> 3) & 1;
  }

  else
  {
    v6 = 1;
  }

  sub_181B5C160(v3);
  return v6;
}

BOOL sub_181ADE760()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 288);
  v3 = *(v0 + 292);
  swift_beginAccess();
  v4 = *(v1 + 240);
  if (v4 && (v5 = *(v4 + 16)) != 0 && ((v6 = *(v5 + 16)) != 0 ? (v7 = v2 == 6) : (v7 = 0), v7))
  {
    return v6 != v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_181ADE7DC(char *a1, unint64_t *a2)
{
  v5 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2[1];
  v100 = *v2;
  v101 = v9;
  v10 = *(v2 + 4);
  v11 = *(v2 + 5);
  v12 = v2[7];
  v13 = v2[8];
  v14 = v2[5];
  v97 = v2[6];
  v98 = v12;
  v99[0] = v13;
  *(v99 + 12) = *(v2 + 140);
  v15 = v2[3];
  v95 = v2[4];
  v96 = v14;
  v16 = *(v2 + 39);
  v93 = v2[16];
  v94 = v15;
  v17 = v2[15];
  v91 = v2[14];
  v92 = v17;
  v18 = v2[13];
  v89 = v2[12];
  v90 = v18;
  v19 = v2[11];
  v87 = v2[10];
  v88 = v19;
  v20 = *(v2 + 34);
  v21 = *(v2 + 35);
  v22 = *(v2 + 72);
  v23 = *(v2 + 73);
  v24 = *(v2 + 74);
  v25 = *(v2 + 300);
  *(v86 + 12) = *(v2 + 312);
  v86[0] = v25;
  v26 = *(v2 + 82);
  v27 = *(v2 + 332);
  v85 = *(v2 + 87);
  v84 = v27;
  if (v22 == 3)
  {
    if (*a1 != 32)
    {
      result = a2[1];
      if (result)
      {

        v29 = "No network route";
        v30 = 0xD00000000000001ELL;
        v31 = 2;
LABEL_5:
        result = 0;
        *a1 = v31;
        *a2 = v30;
        a2[1] = v29 | 0x8000000000000000;
        return result;
      }

      return result;
    }

    return 0;
  }

  v53 = a2;
  v54 = a1;
  v49 = v6;
  v32 = *(v2 + 88);
  v33 = v2 + 356;
  v50 = v24;
  v51 = v32;
  *&v52 = v21;
  *(&v52 + 1) = v20;
  if (v22 == 4)
  {
    goto LABEL_16;
  }

  v34 = v2[1];
  v55 = *v2;
  v56 = v34;
  v57 = v10;
  v58 = v11;
  v35 = v2[8];
  v63 = v2[7];
  *v64 = v35;
  *&v64[12] = *(v2 + 140);
  v36 = v2[4];
  v59 = v2[3];
  v60 = v36;
  v37 = v2[6];
  v61 = v2[5];
  v62 = v37;
  v65 = v16;
  v38 = v2[15];
  v70 = v2[14];
  v71 = v38;
  v72 = v2[16];
  v39 = v2[11];
  v66 = v2[10];
  v67 = v39;
  v40 = v2[13];
  v68 = v2[12];
  v69 = v40;
  v73 = v20;
  v74 = v21;
  v75 = v22;
  v76 = v23;
  v77 = v24;
  v48 = v10;
  *&v78[12] = *(v2 + 312);
  *v78 = *(v2 + 300);
  v79 = v26;
  v80 = *(v2 + 332);
  v81 = *(v2 + 87);
  v82 = v32;
  *&v83[14] = *(v2 + 370);
  *v83 = *v33;
  v41 = v11;
  v47 = v23;
  v42 = sub_181AC2A38(1);
  v23 = v47;
  v11 = v41;
  v24 = v50;
  v32 = v51;
  v20 = *(&v52 + 1);
  v21 = v52;
  v10 = v48;
  if ((v42 & 1) != 0 || v16 & 0x10400 | v26)
  {
    goto LABEL_16;
  }

  if (v41)
  {
    v43 = OBJC_IVAR____TtC7Network8Endpoint_type;
    swift_beginAccess();
    sub_181B5C0FC(v41 + v43, v8);
    if (swift_getEnumCaseMultiPayload() - 1 < 2)
    {
      sub_181B5C160(v8);
      v10 = v48;
      v24 = v50;
      v32 = v51;
      v20 = *(&v52 + 1);
      v21 = v52;
      v11 = v41;
      v23 = v47;
      goto LABEL_16;
    }

    v44 = *(v41 + OBJC_IVAR____TtC7Network8Endpoint_flags);
    sub_181B5C160(v8);
    v10 = v48;
    v24 = v50;
    v32 = v51;
    v20 = *(&v52 + 1);
    v21 = v52;
    v11 = v41;
    v23 = v47;
    if ((v44 & 8) != 0)
    {
LABEL_16:
      v55 = v100;
      v56 = v101;
      v63 = v98;
      *v64 = v99[0];
      *&v64[12] = *(v99 + 12);
      v59 = v94;
      v60 = v95;
      v57 = v10;
      v58 = v11;
      v61 = v96;
      v62 = v97;
      v65 = v16;
      v70 = v91;
      v71 = v92;
      v72 = v93;
      v66 = v87;
      v67 = v88;
      v68 = v89;
      v69 = v90;
      v73 = v20;
      v74 = v21;
      v75 = v22;
      v76 = v23;
      v77 = v24;
      *&v78[12] = *(v86 + 12);
      *v78 = v86[0];
      v79 = v26;
      v80 = v84;
      v81 = v85;
      v82 = v32;
      *&v83[14] = *(v33 + 14);
      *v83 = *v33;
      a2 = v53;
      a1 = v54;
      v45 = v10;
      if ((sub_181ADC28C(v54, v53) & 1) == 0)
      {
        return 0;
      }

      swift_beginAccess();
      if ((*(v45 + 231) & 0x10) == 0)
      {
        return 1;
      }

      if (v52 == 0)
      {
        if (v22 == 4 || v51)
        {
          if (*a1 == 32)
          {
            return 0;
          }

          result = a2[1];
          if (!result)
          {
            return result;
          }

          v29 = "wifi_infrastructure";
          v30 = 0xD000000000000030;
        }

        else
        {
          if (!v50)
          {
            return 1;
          }

          if (*a1 == 32)
          {
            return 0;
          }

          result = a2[1];
          if (!result)
          {
            return result;
          }

          v29 = "w divert on path";
          v30 = 0xD00000000000002BLL;
        }
      }

      else
      {
        if (*a1 == 32)
        {
          return 0;
        }

        result = a2[1];
        if (!result)
        {
          return result;
        }

        v29 = "route due to filter on path";
        v30 = 0xD00000000000002CLL;
      }

      v31 = 31;
      goto LABEL_5;
    }
  }

  a1 = v54;
  if (*v54 == 32)
  {
    return 0;
  }

  a2 = v53;
  result = v53[1];
  if (result)
  {
    v30 = 0xD000000000000010;

    v29 = "route due to proxies on path";
    v31 = 3;
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_181ADECE8(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  v6 = *(v1 + 11);
  v80 = *(v1 + 10);
  v81 = v6;
  v7 = v1[25];
  v82 = v1[24];
  v8 = *(v1 + 7);
  v76 = *(v1 + 6);
  v77 = v8;
  v9 = *(v1 + 9);
  v78 = *(v1 + 8);
  v79 = v9;
  v10 = *(v1 + 3);
  v72 = *(v1 + 2);
  v73 = v10;
  v11 = *(v1 + 5);
  v74 = *(v1 + 4);
  v75 = v11;
  v12 = *(v1 + 21);
  v13 = *(v1 + 22);
  v14 = *(v1 + 19);
  v69 = *(v1 + 20);
  v70 = v12;
  v71[0] = v13;
  *(v71 + 10) = *(v1 + 362);
  v15 = *(v1 + 18);
  v66 = *(v1 + 17);
  v67 = v15;
  v68 = v14;
  v16 = *(v1 + 14);
  v62 = *(v1 + 13);
  v63 = v16;
  v17 = *(v1 + 16);
  v64 = *(v1 + 15);
  v65 = v17;
  if (v3)
  {
    if ((*(v3 + 137) & 0x40) != 0)
    {
      return 1;
    }
  }

  else if (v7)
  {
    v18 = v7[4];
    v19 = v7[2];
    if (v19 >= v7[3] + v18)
    {
      v19 = v7[3] + v18;
    }

    v37 = v7;
    v38 = v18;
    v39 = v19;
    v20 = v7;
    while (1)
    {
      if (v18 == v19)
      {
        a1 = sub_181AC81FC(a1);
        if ((a1 & 1) == 0)
        {

          goto LABEL_17;
        }

        v20 = v37;
        v18 = v38;
      }

      v21 = v18 + 1;
      v38 = v18 + 1;
      v22 = &v20[26 * v18];
      v23 = *(v22 + 9);
      v24 = *(v22 + 13);
      v25 = *(v22 + 7);
      v43 = *(v22 + 11);
      v44 = v24;
      v41 = v25;
      v42 = v23;
      v26 = *(v22 + 17);
      v27 = *(v22 + 21);
      v28 = *(v22 + 15);
      v47 = *(v22 + 19);
      v48 = v27;
      v45 = v28;
      v46 = v26;
      v29 = *(v22 + 25);
      v30 = *(v22 + 27);
      v31 = *(v22 + 23);
      *&v51[10] = *(v22 + 226);
      v50 = v29;
      *v51 = v30;
      v49 = v31;
      v40 = *(v22 + 5);
      v32 = *(&v40 + 1);
      if (*(&v40 + 1))
      {
        if (v51[24])
        {
          break;
        }
      }

      v19 = v39;
      v18 = v21;
    }

    sub_181AFE6F4(&v40, v36);

    sub_181AFE6A0(&v40);
    v33 = *(v32 + 136);

    if ((v33 & 0x4000) == 0)
    {
      goto LABEL_17;
    }

    return 1;
  }

LABEL_17:
  v36[0] = 0;
  v36[1] = 0;
  *&v40 = v3;
  *(&v40 + 1) = v2;
  *&v41 = v5;
  *(&v41 + 1) = v4;
  v50 = v80;
  *v51 = v81;
  v46 = v76;
  v47 = v77;
  v48 = v78;
  v49 = v79;
  v42 = v72;
  v43 = v73;
  v44 = v74;
  v45 = v75;
  *&v51[16] = v82;
  *&v51[24] = v7;
  *(v61 + 10) = *(v71 + 10);
  v60 = v70;
  v61[0] = v71[0];
  v56 = v66;
  v57 = v67;
  v58 = v68;
  v59 = v69;
  v52 = v62;
  v53 = v63;
  v54 = v64;
  v55 = v65;
  v34 = sub_181ADEF94(0, 0, &v37, v36);

  if (v34)
  {
    if ((!v2 || (*(v2 + 137) & 0x40) == 0) && (!v5 || (*(v5 + 137) & 0x40) == 0))
    {
      if (v4)
      {
        return (*(v4 + 137) >> 6) & 1;
      }

      return 0;
    }

    return 1;
  }

  return 0;
}

uint64_t sub_181ADEF94(int a1, char a2, BOOL *a3, void *a4)
{
  memcpy(__dst, v4, sizeof(__dst));
  v7 = *(v4 + 264);
  v8 = *(v4 + 352);
  v44 = *(v4 + 336);
  v45[0] = v8;
  *(v45 + 10) = *(v4 + 362);
  v9 = *(v4 + 288);
  v40 = *(v4 + 272);
  v41 = v9;
  v10 = *(v4 + 320);
  v42 = *(v4 + 304);
  v43 = v10;
  *a3 = 0;
  if (v7)
  {
    v28 = a3;
    v11 = 1;
    v12 = 1 << *(v7 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;

    v17 = 0;
    v29 = 0;
    while (v14)
    {
LABEL_12:
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v20 = *(*(v7 + 56) + ((v17 << 9) | (8 * v19)));
      memcpy(v33, __dst, 0x108uLL);
      v33[33] = v7;
      v38 = v44;
      v39[0] = v45[0];
      *(v39 + 10) = *(v45 + 10);
      v34 = v40;
      v35 = v41;
      v36 = v42;
      v37 = v43;
      v32 = v20;

      v21 = sub_181ADF2B8(&v32, 1);
      v22 = *(v20 + 80);
      if ((v22 & 3) == 1 && ((v22 & 0x40) != 0 || (a2 & 1) == 0) && ((v22 >> 4) & 1 & ~(v21 | a1)) == 0)
      {
        if (v29)
        {
          v29 = 1;
        }

        else
        {
          v29 = (v22 & 0xC) != 0;
          *v28 = v29;
        }

        if (a4[1])
        {

          if (nw_path_agent_is_vpn())
          {
            v32 = v20;
            v33[0] = NetworkAgent.description.getter();
            v33[1] = v23;

            v24 = 0x8000000182BD74A0;
            v25 = 0xD000000000000010;
          }

          else
          {
            v32 = v20;
            v33[0] = NetworkAgent.description.getter();
            v33[1] = v26;

            v25 = 0x61736E7520736920;
            v24 = 0xEF64656966736974;
          }

          MEMORY[0x1865D9CA0](v25, v24);

          v11 = 0;
          v27 = v33[1];
          *a4 = v33[0];
          a4[1] = v27;
        }

        else
        {

          v11 = 0;
        }
      }

      else
      {
      }
    }

    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v15)
      {

        return v11 & 1;
      }

      v14 = *(v7 + 64 + 8 * v18);
      ++v17;
      if (v14)
      {
        v17 = v18;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
    v11 = 1;
    return v11 & 1;
  }

  return result;
}

uint64_t sub_181ADF260()
{
  sub_181AC350C(0, &v2);
  result = v2;
  if (v2)
  {
    v1 = v3;
    result = sub_181AD1A40(v2);
    if ((v1 & 0x80000000) != 0)
    {
      __break(1u);
    }

    else if (v1 >= 5)
    {
      return 0;
    }

    else
    {
      return v1;
    }
  }

  return result;
}

uint64_t sub_181ADF2B8(uint64_t *a1, char a2)
{
  __dst[52] = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = *(*a1 + 80);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v6 = *(v2 + 32);
  if ((v4 & 0x20) == 0 && (a2 & 1) == 0)
  {
    return 1;
  }

  swift_beginAccess();
  v7 = *(v6 + 240);
  if (v7)
  {
    v8 = *(v7 + 80);
    if (v8)
    {
      v9 = v8[4];
      if (v8[2] >= v8[3] + v9)
      {
        v10 = v8[3] + v9;
      }

      else
      {
        v10 = v8[2];
      }

      __dst[0] = *(v7 + 80);
      __dst[1] = v9;
      __dst[2] = v10;
      v11 = swift_retain_n();
      v12 = v8;
      if (v9 != v10)
      {
        do
        {
LABEL_15:
          v13 = v9 + 1;
          __dst[1] = v9 + 1;
          *uu1 = *&v12[2 * v9 + 5];
          v38 = *uu1;
          v36 = *(v3 + 32);
          v11 = uuid_compare(uu1, &v36);
          if (!v11)
          {

            return 1;
          }

          ++v9;
        }

        while (v13 != __dst[2]);
      }

      if (sub_181AC81FC(v11))
      {
        v12 = __dst[0];
        v9 = __dst[1];
        goto LABEL_15;
      }
    }
  }

  memcpy(__dst, (v6 + 16), 0x188uLL);
  v14 = sub_181AD3638();
  if (!v14)
  {
LABEL_86:
    memcpy(__dst, (v6 + 16), 0x188uLL);
    v25 = sub_181AD41DC();
    if (!v25)
    {
LABEL_156:

      return 0;
    }

    v26 = v25;
    v27 = *(v25 + 32);
    v28 = *(v25 + 24) + v27;
    if (*(v25 + 16) < v28)
    {
      v28 = *(v25 + 16);
    }

    __dst[0] = v25;
    __dst[1] = v27;
    for (__dst[2] = v28; ; v28 = __dst[2])
    {
      if (v27 == v28)
      {
        if ((sub_181AC81FC(v25) & 1) == 0)
        {

          goto LABEL_156;
        }

        v26 = __dst[0];
        v27 = __dst[1];
      }

      v29 = (v26 + 32 * v27++);
      __dst[1] = v27;
      v25 = v29[5];
      v30 = v29[6];
      v32 = v29[7];
      v31 = v29[8];
      v33 = *(v3 + 56);
      v35 = *(v3 + 64);
      v34 = *(v3 + 72);
      if (v30 > 2)
      {
        switch(v30)
        {
          case 3:
            if (v33 != 3)
            {
              continue;
            }

            goto LABEL_118;
          case 4:
            if (v33 != 4)
            {
              continue;
            }

            goto LABEL_118;
          case 5:
            if (v33 != 5)
            {
              continue;
            }

            goto LABEL_118;
        }
      }

      else
      {
        switch(v30)
        {
          case 0:
            if (v33)
            {
              continue;
            }

            goto LABEL_118;
          case 1:
            if (v33 != 1)
            {
              continue;
            }

            goto LABEL_118;
          case 2:
            if (v33 != 2)
            {
              continue;
            }

            goto LABEL_118;
        }
      }

      if (v33 < 6)
      {
        continue;
      }

      if (v25 != *(v3 + 48) || v30 != v33)
      {
        v25 = sub_182AD4268();
        if ((v25 & 1) == 0)
        {
          continue;
        }
      }

LABEL_118:
      if (v31 > 4)
      {
        if (v31 <= 6)
        {
          if (v31 == 5)
          {
            if (v34 == 5)
            {
              goto LABEL_151;
            }
          }

          else if (v34 == 6)
          {
            goto LABEL_151;
          }

          continue;
        }

        switch(v31)
        {
          case 7:
            if (v34 == 7)
            {
              goto LABEL_151;
            }

            continue;
          case 8:
            if (v34 == 8)
            {
              goto LABEL_151;
            }

            continue;
          case 9:
            if (v34 == 9)
            {
              goto LABEL_151;
            }

            continue;
        }
      }

      else
      {
        if (v31 > 1)
        {
          if (v31 == 2)
          {
            if (v34 == 2)
            {
              goto LABEL_151;
            }
          }

          else if (v31 == 3)
          {
            if (v34 == 3)
            {
              goto LABEL_151;
            }
          }

          else if (v34 == 4)
          {
            goto LABEL_151;
          }

          continue;
        }

        if (!v31)
        {
          if (!v34)
          {
            goto LABEL_151;
          }

          continue;
        }

        if (v31 == 1)
        {
          if (v34 == 1)
          {
            goto LABEL_151;
          }

          continue;
        }
      }

      if (v34 >= 0xA)
      {
        if (v32 == v35 && v31 == v34 || (v25 = sub_182AD4268(), (v25 & 1) != 0))
        {
LABEL_151:

          goto LABEL_152;
        }
      }
    }
  }

  v15 = *(v14 + 32);
  v16 = *(v14 + 24) + v15;
  if (*(v14 + 16) < v16)
  {
    v16 = *(v14 + 16);
  }

  __dst[0] = v14;
  __dst[1] = v15;
  __dst[2] = v16;
  v17 = v14;
  while (1)
  {
    if (v15 != v16)
    {
      goto LABEL_28;
    }

    if ((sub_181AC81FC(v14) & 1) == 0)
    {

      goto LABEL_86;
    }

    v17 = __dst[0];
    v15 = __dst[1];
LABEL_28:
    v18 = (v17 + 32 * v15++);
    __dst[1] = v15;
    v14 = v18[5];
    v19 = v18[6];
    v21 = v18[7];
    v20 = v18[8];
    v22 = *(v3 + 56);
    v24 = *(v3 + 64);
    v23 = *(v3 + 72);
    if (v19 > 2)
    {
      switch(v19)
      {
        case 3:
          if (v22 != 3)
          {
            goto LABEL_24;
          }

          goto LABEL_51;
        case 4:
          if (v22 != 4)
          {
            goto LABEL_24;
          }

          goto LABEL_51;
        case 5:
          if (v22 != 5)
          {
            goto LABEL_24;
          }

          goto LABEL_51;
      }
    }

    else
    {
      switch(v19)
      {
        case 0:
          if (v22)
          {
            goto LABEL_24;
          }

          goto LABEL_51;
        case 1:
          if (v22 != 1)
          {
            goto LABEL_24;
          }

          goto LABEL_51;
        case 2:
          if (v22 != 2)
          {
            goto LABEL_24;
          }

          goto LABEL_51;
      }
    }

    if (v22 < 6)
    {
      goto LABEL_24;
    }

    if (v14 != *(v3 + 48) || v19 != v22)
    {
      v14 = sub_182AD4268();
      if ((v14 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

LABEL_51:
    if (v20 <= 4)
    {
      break;
    }

    if (v20 <= 6)
    {
      if (v20 == 5)
      {
        if (v23 == 5)
        {
          goto LABEL_84;
        }
      }

      else if (v23 == 6)
      {
        goto LABEL_84;
      }
    }

    else
    {
      switch(v20)
      {
        case 7:
          if (v23 == 7)
          {
            goto LABEL_84;
          }

          break;
        case 8:
          if (v23 == 8)
          {
            goto LABEL_84;
          }

          break;
        case 9:
          if (v23 == 9)
          {
            goto LABEL_84;
          }

          break;
        default:
          goto LABEL_80;
      }
    }

LABEL_24:
    v16 = __dst[2];
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      if (v23 == 2)
      {
        goto LABEL_84;
      }
    }

    else if (v20 == 3)
    {
      if (v23 == 3)
      {
        goto LABEL_84;
      }
    }

    else if (v23 == 4)
    {
      goto LABEL_84;
    }

    goto LABEL_24;
  }

  if (!v20)
  {
    if (!v23)
    {
      goto LABEL_84;
    }

    goto LABEL_24;
  }

  if (v20 == 1)
  {
    if (v23 == 1)
    {
      goto LABEL_84;
    }

    goto LABEL_24;
  }

LABEL_80:
  if (v23 < 0xA)
  {
    goto LABEL_24;
  }

  if (v21 != v24 || v20 != v23)
  {
    v14 = sub_182AD4268();
    if ((v14 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

LABEL_84:

LABEL_152:

  return 1;
}

uint64_t sub_181ADF8C8(size_t a1, size_t a2, size_t a3, size_t a4)
{
  result = sub_181ADFAF4(a1, a2, a3, a4);
  v10 = *v4;
  v11 = *(*v4 + 2);
  v12 = v11 + result;
  if (__OFADD__(v11, result))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v13 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v15 = *(v10 + 3) >> 1, v15 < v12))
  {
    if (v11 <= v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = v11;
    }

    v10 = sub_181ADBA10(isUniquelyReferenced_nonNull_native, v16, 1, v10);
    v15 = *(v10 + 3) >> 1;
  }

  v17 = *(v10 + 2);
  v18 = v15 - v17;
  result = sub_181ADBCBC(&v34, &v10[v17 + 32], v15 - v17, a1, a2, a3, a4);
  if (result < v13)
  {
    goto LABEL_15;
  }

  if (result >= 1)
  {
    v20 = *(v10 + 2);
    v21 = __OFADD__(v20, result);
    v22 = v20 + result;
    if (v21)
    {
      __break(1u);
      goto LABEL_39;
    }

    *(v10 + 2) = v22;
  }

  if (result != v18)
  {
LABEL_13:
    *v4 = v10;
    return result;
  }

LABEL_16:
  v23 = v35;
  if (v38 == v35)
  {
    goto LABEL_13;
  }

  if (v38 >= v35 || (v24 = v34, v38 < v34))
  {
LABEL_42:
    __break(1u);
  }

  else
  {
    v25 = v36;
    if (v36)
    {
      v26 = v37 - v36;
    }

    else
    {
      v26 = 0;
    }

    if ((v38 & 0x8000000000000000) == 0 && v38 < v26)
    {
      v13 = *(v10 + 2);
      v27 = *(v36 + v38);
      v28 = v38 + 1;
      while (1)
      {
LABEL_26:
        v29 = *(v10 + 3);
        v30 = v29 >> 1;
        if ((v29 >> 1) < v13 + 1)
        {
          v32 = v10;
          v33 = v27;
          result = sub_181ADBA10((v29 > 1), v13 + 1, 1, v32);
          v27 = v33;
          v10 = result;
          v30 = *(result + 24) >> 1;
          v31 = v13 - v30;
          if (v13 < v30)
          {
LABEL_28:
            v19 = 0;
            while (1)
            {
              v10[v13 + 32 + v19] = v27;
              if (v23 - v28 == v19)
              {
                break;
              }

              if (v28 < v24 || v28 + v19 >= v23)
              {
                __break(1u);
LABEL_41:
                __break(1u);
                goto LABEL_42;
              }

              if (v28 < 0 || v28 + v19 >= v26)
              {
                goto LABEL_41;
              }

              v27 = *(v25 + v28 + v19++);
              if (!(v31 + v19))
              {
                v28 += v19;
                v13 = v30;
                *(v10 + 2) = v30;
                goto LABEL_26;
              }
            }

LABEL_39:
            *(v10 + 2) = v13 + v19 + 1;
            goto LABEL_13;
          }
        }

        else
        {
          v31 = v13 - v30;
          if (v13 < v30)
          {
            goto LABEL_28;
          }
        }

        *(v10 + 2) = v13;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_181ADFAF4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - a3;
  if (!a3)
  {
    v4 = 0;
  }

  if (result < 0 || v4 < result)
  {
    __break(1u);
  }

  else if ((a2 & 0x8000000000000000) == 0 && v4 >= a2)
  {
    return a2 - result;
  }

  __break(1u);
  return result;
}

uint64_t nw_flow_passthrough_get_output_frames(nw_protocol *a1, nw_protocol *a2, unsigned int a3, unsigned int a4, unsigned int a5, nw_frame_array_s *a6)
{
  v27 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_flow_passthrough_get_output_frames";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v12, &type, &v21))
    {
      goto LABEL_40;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v24 = "nw_flow_passthrough_get_output_frames";
        v15 = "%{public}s called with null protocol";
LABEL_38:
        _os_log_impl(&dword_181A37000, v13, v14, v15, buf, 0xCu);
      }
    }

    else if (v21 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v14 = type;
      v18 = os_log_type_enabled(v13, type);
      if (backtrace_string)
      {
        if (v18)
        {
          *buf = 136446466;
          v24 = "nw_flow_passthrough_get_output_frames";
          v25 = 2082;
          v26 = backtrace_string;
          _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_40:
        if (!v12)
        {
          return 0;
        }

LABEL_41:
        free(v12);
        return 0;
      }

      if (v18)
      {
        *buf = 136446210;
        v24 = "nw_flow_passthrough_get_output_frames";
        v15 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_38;
      }
    }

    else
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v24 = "nw_flow_passthrough_get_output_frames";
        v15 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_38;
      }
    }

LABEL_39:

    goto LABEL_40;
  }

  output_handler = a1->output_handler;
  if (!output_handler)
  {
    v16 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_flow_passthrough_get_output_frames";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v12, &type, &v21))
    {
      goto LABEL_40;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v24 = "nw_flow_passthrough_get_output_frames";
        v15 = "%{public}s called with null protocol->output_handler";
        goto LABEL_38;
      }
    }

    else
    {
      if (v21 == 1)
      {
        v19 = __nw_create_backtrace_string();
        v13 = __nwlog_obj();
        v14 = type;
        v20 = os_log_type_enabled(v13, type);
        if (v19)
        {
          if (v20)
          {
            *buf = 136446466;
            v24 = "nw_flow_passthrough_get_output_frames";
            v25 = 2082;
            v26 = v19;
            _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null protocol->output_handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v19);
          if (!v12)
          {
            return 0;
          }

          goto LABEL_41;
        }

        if (!v20)
        {
          goto LABEL_39;
        }

        *buf = 136446210;
        v24 = "nw_flow_passthrough_get_output_frames";
        v15 = "%{public}s called with null protocol->output_handler, no backtrace";
        goto LABEL_38;
      }

      v13 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v24 = "nw_flow_passthrough_get_output_frames";
        v15 = "%{public}s called with null protocol->output_handler, backtrace limit exceeded";
        goto LABEL_38;
      }
    }

    goto LABEL_39;
  }

  callbacks = output_handler->callbacks;
  if (!callbacks || (get_output_frames = callbacks->get_output_frames) == 0)
  {
    v10 = __nwlog_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v24 = "nw_flow_passthrough_get_output_frames";
      _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_INFO, "%{public}s Output protocol handler does not support get_output_frames", buf, 0xCu);
    }

    return 0;
  }

  return get_output_frames();
}

uint64_t nw_flow_passthrough_finalize_output_frames(nw_protocol *a1, nw_frame_array_s *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_flow_passthrough_finalize_output_frames";
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (!__nwlog_fault(v8, &type, &v17))
    {
      goto LABEL_40;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v20 = "nw_flow_passthrough_finalize_output_frames";
        v11 = "%{public}s called with null protocol";
LABEL_38:
        _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0xCu);
      }
    }

    else if (v17 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v10 = type;
      v14 = os_log_type_enabled(v9, type);
      if (backtrace_string)
      {
        if (v14)
        {
          *buf = 136446466;
          v20 = "nw_flow_passthrough_finalize_output_frames";
          v21 = 2082;
          v22 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_40:
        if (!v8)
        {
          return 0;
        }

LABEL_41:
        free(v8);
        return 0;
      }

      if (v14)
      {
        *buf = 136446210;
        v20 = "nw_flow_passthrough_finalize_output_frames";
        v11 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_38;
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v20 = "nw_flow_passthrough_finalize_output_frames";
        v11 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_38;
      }
    }

LABEL_39:

    goto LABEL_40;
  }

  output_handler = a1->output_handler;
  if (!output_handler)
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_flow_passthrough_finalize_output_frames";
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (!__nwlog_fault(v8, &type, &v17))
    {
      goto LABEL_40;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v20 = "nw_flow_passthrough_finalize_output_frames";
        v11 = "%{public}s called with null protocol->output_handler";
        goto LABEL_38;
      }
    }

    else
    {
      if (v17 == 1)
      {
        v15 = __nw_create_backtrace_string();
        v9 = __nwlog_obj();
        v10 = type;
        v16 = os_log_type_enabled(v9, type);
        if (v15)
        {
          if (v16)
          {
            *buf = 136446466;
            v20 = "nw_flow_passthrough_finalize_output_frames";
            v21 = 2082;
            v22 = v15;
            _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null protocol->output_handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v15);
          if (!v8)
          {
            return 0;
          }

          goto LABEL_41;
        }

        if (!v16)
        {
          goto LABEL_39;
        }

        *buf = 136446210;
        v20 = "nw_flow_passthrough_finalize_output_frames";
        v11 = "%{public}s called with null protocol->output_handler, no backtrace";
        goto LABEL_38;
      }

      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v20 = "nw_flow_passthrough_finalize_output_frames";
        v11 = "%{public}s called with null protocol->output_handler, backtrace limit exceeded";
        goto LABEL_38;
      }
    }

    goto LABEL_39;
  }

  callbacks = output_handler->callbacks;
  if (!callbacks || (finalize_output_frames = callbacks->finalize_output_frames) == 0)
  {
    v6 = __nwlog_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v20 = "nw_flow_passthrough_finalize_output_frames";
      _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_INFO, "%{public}s Output protocol handler does not support finalize_output_frames", buf, 0xCu);
    }

    return 0;
  }

  return finalize_output_frames();
}

NWConcrete_nw_write_request *nw_write_request_create_idempotent(void *a1, void *a2, void *a3, int a4)
{
  v56 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v48 = v9;
  v49 = v8;
  if (v8)
  {
    if (v7 || (a4 & 1) != 0 || v8 != &__block_literal_global_6_44667 && v8 != &__block_literal_global_44658 && v8 != &__block_literal_global_8_44676 && v8 != &__block_literal_global_10_44685)
    {
      v10 = v7;
      if (v9)
      {
        v11 = v9;
        if (v11 == &__block_literal_global_10_44685)
        {
        }

        else
        {
          if (v11 == &__block_literal_global_8_44676 || v11 == &__block_literal_global_6_44667 || v11 == &__block_literal_global_44658)
          {

            goto LABEL_14;
          }

          v12 = v11;
          os_unfair_lock_lock(v11 + 28);
          v13 = BYTE2(v12[29]._os_unfair_lock_opaque);
          os_unfair_lock_unlock(v12 + 28);

          if ((v13 & 0x40) == 0)
          {
LABEL_14:
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v14 = gLogObj;
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446210;
              v53 = "nw_write_request_create_idempotent";
              _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_ERROR, "%{public}s Cannot send a reply for a protocol that does not support replies", buf, 0xCu);
            }

            v7 = v10;
            v15 = 0;
            goto LABEL_61;
          }
        }
      }

      v16 = objc_alloc_init(NWConcrete_nw_write_request);
      v15 = v16;
      v7 = v10;
      if (v16)
      {
        if (v10)
        {
          v17 = v10;
        }

        else
        {
          v17 = MEMORY[0x1E69E9668];
        }

        objc_storeStrong(&v16->data, v17);
        objc_storeStrong(&v15->context, a2);
        objc_storeStrong(&v15->original_message, a3);
        *(v15 + 128) = *(v15 + 128) & 0xFE | a4 | 4;
        v18 = v49;
        v19 = v18;
        v20 = 0.5;
        if (v18 != &__block_literal_global_10_44685 && v18 != &__block_literal_global_8_44676 && v18 != &__block_literal_global_6_44667 && v18 != &__block_literal_global_44658 && (*(v18 + 118) & 1) == 0)
        {
          v20 = v18[10];
        }

        v21 = 0;
        v15->relative_priority = v20;
        if (!v10 && a4)
        {
          v22 = v19;
          v21 = 0;
          if (v19 != &__block_literal_global_44658 && v19 != &__block_literal_global_10_44685)
          {
            v21 = 8;
            if (v19 != &__block_literal_global_6_44667 && v19 != &__block_literal_global_8_44676)
            {
              v21 = 8 * (*(v22 + 118) & 1);
            }
          }
        }

        *(v15 + 128) = *(v15 + 128) & 0xF7 | v21;
        if (_nw_signposts_once != -1)
        {
          dispatch_once(&_nw_signposts_once, &__block_literal_global_35515);
        }

        if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
        {
          data = v15->data;
          if (data)
          {
            dispatch_data_get_size(data);
          }

          context = v15->context;
          if (context)
          {
            nw_content_context_get_is_final(context);
          }

          kdebug_trace();
        }

        v23 = v15;
        goto LABEL_60;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v24 = gLogObj;
      *buf = 136446210;
      v53 = "nw_write_request_create_idempotent";
      v25 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v50 = 0;
      if (__nwlog_fault(v25, &type, &v50))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v26 = gLogObj;
          v27 = type;
          if (os_log_type_enabled(v26, type))
          {
            *buf = 136446210;
            v53 = "nw_write_request_create_idempotent";
            _os_log_impl(&dword_181A37000, v26, v27, "%{public}s [[NW_CONCRETE_CLASS_NAME(nw_write_request) alloc] init] failed", buf, 0xCu);
          }
        }

        else if (v50 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v26 = gLogObj;
          v29 = type;
          v30 = os_log_type_enabled(v26, type);
          if (backtrace_string)
          {
            if (v30)
            {
              *buf = 136446466;
              v53 = "nw_write_request_create_idempotent";
              v54 = 2082;
              v55 = backtrace_string;
              _os_log_impl(&dword_181A37000, v26, v29, "%{public}s [[NW_CONCRETE_CLASS_NAME(nw_write_request) alloc] init] failed, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(backtrace_string);
            if (!v25)
            {
              goto LABEL_60;
            }

            goto LABEL_59;
          }

          if (v30)
          {
            *buf = 136446210;
            v53 = "nw_write_request_create_idempotent";
            _os_log_impl(&dword_181A37000, v26, v29, "%{public}s [[NW_CONCRETE_CLASS_NAME(nw_write_request) alloc] init] failed, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v26 = gLogObj;
          v31 = type;
          if (os_log_type_enabled(v26, type))
          {
            *buf = 136446210;
            v53 = "nw_write_request_create_idempotent";
            _os_log_impl(&dword_181A37000, v26, v31, "%{public}s [[NW_CONCRETE_CLASS_NAME(nw_write_request) alloc] init] failed, backtrace limit exceeded", buf, 0xCu);
          }
        }
      }

      if (!v25)
      {
LABEL_60:

        goto LABEL_61;
      }

LABEL_59:
      free(v25);
      goto LABEL_60;
    }

    v33 = __nwlog_obj();
    *buf = 136446210;
    v53 = "nw_write_request_create_idempotent";
    v34 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v50 = 0;
    if (__nwlog_fault(v34, &type, &v50))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v35 = __nwlog_obj();
        v36 = type;
        if (os_log_type_enabled(v35, type))
        {
          *buf = 136446210;
          v53 = "nw_write_request_create_idempotent";
          _os_log_impl(&dword_181A37000, v35, v36, "%{public}s Send content may only be nil if the request is marked as complete", buf, 0xCu);
        }

LABEL_99:

        goto LABEL_100;
      }

      if (v50 != 1)
      {
        v35 = __nwlog_obj();
        v44 = type;
        if (os_log_type_enabled(v35, type))
        {
          *buf = 136446210;
          v53 = "nw_write_request_create_idempotent";
          _os_log_impl(&dword_181A37000, v35, v44, "%{public}s Send content may only be nil if the request is marked as complete, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_99;
      }

      v39 = __nw_create_backtrace_string();
      v35 = __nwlog_obj();
      v40 = type;
      v41 = os_log_type_enabled(v35, type);
      if (!v39)
      {
        if (v41)
        {
          *buf = 136446210;
          v53 = "nw_write_request_create_idempotent";
          _os_log_impl(&dword_181A37000, v35, v40, "%{public}s Send content may only be nil if the request is marked as complete, no backtrace", buf, 0xCu);
        }

        goto LABEL_99;
      }

      if (v41)
      {
        *buf = 136446466;
        v53 = "nw_write_request_create_idempotent";
        v54 = 2082;
        v55 = v39;
        _os_log_impl(&dword_181A37000, v35, v40, "%{public}s Send content may only be nil if the request is marked as complete, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_81;
    }
  }

  else
  {
    v37 = __nwlog_obj();
    *buf = 136446210;
    v53 = "nw_write_request_create_idempotent";
    v34 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v50 = 0;
    if (__nwlog_fault(v34, &type, &v50))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v35 = __nwlog_obj();
        v38 = type;
        if (os_log_type_enabled(v35, type))
        {
          *buf = 136446210;
          v53 = "nw_write_request_create_idempotent";
          _os_log_impl(&dword_181A37000, v35, v38, "%{public}s called with null context", buf, 0xCu);
        }

        goto LABEL_99;
      }

      if (v50 != 1)
      {
        v35 = __nwlog_obj();
        v46 = type;
        if (os_log_type_enabled(v35, type))
        {
          *buf = 136446210;
          v53 = "nw_write_request_create_idempotent";
          _os_log_impl(&dword_181A37000, v35, v46, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_99;
      }

      v39 = __nw_create_backtrace_string();
      v35 = __nwlog_obj();
      v42 = type;
      v43 = os_log_type_enabled(v35, type);
      if (!v39)
      {
        if (v43)
        {
          *buf = 136446210;
          v53 = "nw_write_request_create_idempotent";
          _os_log_impl(&dword_181A37000, v35, v42, "%{public}s called with null context, no backtrace", buf, 0xCu);
        }

        goto LABEL_99;
      }

      if (v43)
      {
        *buf = 136446466;
        v53 = "nw_write_request_create_idempotent";
        v54 = 2082;
        v55 = v39;
        _os_log_impl(&dword_181A37000, v35, v42, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_81:

      free(v39);
    }
  }

LABEL_100:
  if (v34)
  {
    free(v34);
  }

  v15 = 0;
LABEL_61:

  return v15;
}

uint64_t nw_protocol_get_output_frames(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v71 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v6 = a2;
    v7 = a1;
    v8 = a1[5];
    v9 = a1;
    if (v8 == &nw_protocol_ref_counted_handle || v8 == &nw_protocol_ref_counted_additional_handle && (v9 = a1[8]) != 0)
    {
      v29 = v9[11];
      if (v29)
      {
        v10 = 0;
        v9[11] = v29 + 1;
        if (!a2)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v10 = 0;
        if (!a2)
        {
LABEL_38:
          __nwlog_obj();
          *buf = 136446210;
          v64 = "__nw_protocol_get_output_frames";
          v30 = _os_log_send_and_compose_impl();
          type = OS_LOG_TYPE_ERROR;
          v61 = 0;
          if (__nwlog_fault(v30, &type, &v61))
          {
            if (type == OS_LOG_TYPE_FAULT)
            {
              v31 = __nwlog_obj();
              v32 = type;
              if (os_log_type_enabled(v31, type))
              {
                *buf = 136446210;
                v64 = "__nw_protocol_get_output_frames";
                v33 = "%{public}s called with null input_protocol";
LABEL_111:
                _os_log_impl(&dword_181A37000, v31, v32, v33, buf, 0xCu);
              }
            }

            else if (v61 == 1)
            {
              backtrace_string = __nw_create_backtrace_string();
              v31 = __nwlog_obj();
              v32 = type;
              v53 = os_log_type_enabled(v31, type);
              if (backtrace_string)
              {
                if (v53)
                {
                  *buf = 136446466;
                  v64 = "__nw_protocol_get_output_frames";
                  v65 = 2082;
                  v66 = backtrace_string;
                  _os_log_impl(&dword_181A37000, v31, v32, "%{public}s called with null input_protocol, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(backtrace_string);
                goto LABEL_112;
              }

              if (v53)
              {
                *buf = 136446210;
                v64 = "__nw_protocol_get_output_frames";
                v33 = "%{public}s called with null input_protocol, no backtrace";
                goto LABEL_111;
              }
            }

            else
            {
              v31 = __nwlog_obj();
              v32 = type;
              if (os_log_type_enabled(v31, type))
              {
                *buf = 136446210;
                v64 = "__nw_protocol_get_output_frames";
                v33 = "%{public}s called with null input_protocol, backtrace limit exceeded";
                goto LABEL_111;
              }
            }
          }

LABEL_112:
          if (v30)
          {
            free(v30);
          }

          result = 0;
          goto LABEL_22;
        }
      }
    }

    else
    {
      v10 = 1;
      if (!a2)
      {
        goto LABEL_38;
      }
    }

    v11 = *(a2 + 40);
    v12 = a2;
    if (v11 == &nw_protocol_ref_counted_handle || v11 == &nw_protocol_ref_counted_additional_handle && (v12 = *(a2 + 64)) != 0)
    {
      v34 = *(v12 + 88);
      if (v34)
      {
        v13 = 0;
        *(v12 + 88) = v34 + 1;
        if (!a6)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v13 = 0;
        if (!a6)
        {
          goto LABEL_45;
        }
      }
    }

    else
    {
      v13 = 1;
      if (!a6)
      {
LABEL_45:
        __nwlog_obj();
        *buf = 136446210;
        v64 = "__nw_protocol_get_output_frames";
        v35 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v61 = 0;
        if (!__nwlog_fault(v35, &type, &v61))
        {
          goto LABEL_119;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v36 = __nwlog_obj();
          v37 = type;
          if (!os_log_type_enabled(v36, type))
          {
            goto LABEL_119;
          }

          *buf = 136446210;
          v64 = "__nw_protocol_get_output_frames";
          v38 = "%{public}s called with null return_array";
          goto LABEL_117;
        }

        if (v61 != 1)
        {
          v36 = __nwlog_obj();
          v37 = type;
          if (!os_log_type_enabled(v36, type))
          {
            goto LABEL_119;
          }

          *buf = 136446210;
          v64 = "__nw_protocol_get_output_frames";
          v38 = "%{public}s called with null return_array, backtrace limit exceeded";
          goto LABEL_117;
        }

        v54 = __nw_create_backtrace_string();
        v36 = __nwlog_obj();
        v37 = type;
        v55 = os_log_type_enabled(v36, type);
        if (v54)
        {
          if (v55)
          {
            *buf = 136446466;
            v64 = "__nw_protocol_get_output_frames";
            v65 = 2082;
            v66 = v54;
            _os_log_impl(&dword_181A37000, v36, v37, "%{public}s called with null return_array, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v54);
          if (!v35)
          {
LABEL_121:
            result = 0;
            if (v13)
            {
LABEL_22:
              if ((v10 & 1) == 0)
              {
                v23 = v7[5];
                if (v23 == &nw_protocol_ref_counted_handle || v23 == &nw_protocol_ref_counted_additional_handle && (v7 = v7[8]) != 0)
                {
                  v24 = v7[11];
                  if (v24)
                  {
                    v25 = v24 - 1;
                    v7[11] = v25;
                    if (!v25)
                    {
                      v26 = result;
                      v27 = v7[8];
                      if (v27)
                      {
                        v7[8] = 0;
                        v27[2](v27);
                        _Block_release(v27);
                      }

                      if (v7[9])
                      {
                        v28 = v7[8];
                        if (v28)
                        {
                          _Block_release(v28);
                        }
                      }

                      free(v7);
                      return v26;
                    }
                  }
                }
              }

              return result;
            }

LABEL_11:
            v17 = *(v6 + 40);
            if (v17 == &nw_protocol_ref_counted_handle || v17 == &nw_protocol_ref_counted_additional_handle && (v6 = *(v6 + 64)) != 0)
            {
              v18 = *(v6 + 88);
              if (v18)
              {
                v19 = v18 - 1;
                *(v6 + 88) = v19;
                if (!v19)
                {
                  v20 = result;
                  v21 = *(v6 + 64);
                  if (v21)
                  {
                    *(v6 + 64) = 0;
                    v21[2](v21);
                    _Block_release(v21);
                  }

                  if (*(v6 + 72))
                  {
                    v22 = *(v6 + 64);
                    if (v22)
                    {
                      _Block_release(v22);
                    }
                  }

                  free(v6);
                  result = v20;
                }
              }
            }

            goto LABEL_22;
          }

LABEL_120:
          free(v35);
          goto LABEL_121;
        }

        if (v55)
        {
          *buf = 136446210;
          v64 = "__nw_protocol_get_output_frames";
          v38 = "%{public}s called with null return_array, no backtrace";
LABEL_117:
          v58 = v36;
          v59 = v37;
          v60 = 12;
          goto LABEL_118;
        }

        goto LABEL_119;
      }
    }

    v14 = a1[3];
    if (v14)
    {
      v15 = *(v14 + 88);
      if (v15)
      {
        result = v15(a1, a2);
        if (v13)
        {
          goto LABEL_22;
        }

        goto LABEL_11;
      }
    }

    __nwlog_obj();
    v39 = v7[2];
    *buf = 136446722;
    v64 = "__nw_protocol_get_output_frames";
    if (!v39)
    {
      v39 = "invalid";
    }

    v65 = 2082;
    v66 = v39;
    v67 = 2048;
    v68 = v7;
    v35 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v61 = 0;
    if (__nwlog_fault(v35, &type, &v61))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v40 = __nwlog_obj();
        v41 = type;
        if (!os_log_type_enabled(v40, type))
        {
          goto LABEL_119;
        }

        v42 = v7[2];
        if (!v42)
        {
          v42 = "invalid";
        }

        *buf = 136446722;
        v64 = "__nw_protocol_get_output_frames";
        v65 = 2082;
        v66 = v42;
        v67 = 2048;
        v68 = v7;
        v38 = "%{public}s protocol %{public}s (%p) has invalid get_output_frames callback";
      }

      else if (v61 == 1)
      {
        v47 = __nw_create_backtrace_string();
        v40 = __nwlog_obj();
        v41 = type;
        v48 = os_log_type_enabled(v40, type);
        if (v47)
        {
          if (v48)
          {
            v49 = v7[2];
            if (!v49)
            {
              v49 = "invalid";
            }

            *buf = 136446978;
            v64 = "__nw_protocol_get_output_frames";
            v65 = 2082;
            v66 = v49;
            v67 = 2048;
            v68 = v7;
            v69 = 2082;
            v70 = v47;
            _os_log_impl(&dword_181A37000, v40, v41, "%{public}s protocol %{public}s (%p) has invalid get_output_frames callback, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v47);
          goto LABEL_119;
        }

        if (!v48)
        {
          goto LABEL_119;
        }

        v57 = v7[2];
        if (!v57)
        {
          v57 = "invalid";
        }

        *buf = 136446722;
        v64 = "__nw_protocol_get_output_frames";
        v65 = 2082;
        v66 = v57;
        v67 = 2048;
        v68 = v7;
        v38 = "%{public}s protocol %{public}s (%p) has invalid get_output_frames callback, no backtrace";
      }

      else
      {
        v40 = __nwlog_obj();
        v41 = type;
        if (!os_log_type_enabled(v40, type))
        {
          goto LABEL_119;
        }

        v56 = v7[2];
        if (!v56)
        {
          v56 = "invalid";
        }

        *buf = 136446722;
        v64 = "__nw_protocol_get_output_frames";
        v65 = 2082;
        v66 = v56;
        v67 = 2048;
        v68 = v7;
        v38 = "%{public}s protocol %{public}s (%p) has invalid get_output_frames callback, backtrace limit exceeded";
      }

      v58 = v40;
      v59 = v41;
      v60 = 32;
LABEL_118:
      _os_log_impl(&dword_181A37000, v58, v59, v38, buf, v60);
    }

LABEL_119:
    if (!v35)
    {
      goto LABEL_121;
    }

    goto LABEL_120;
  }

  __nwlog_obj();
  *buf = 136446210;
  v64 = "__nw_protocol_get_output_frames";
  v43 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v61 = 0;
  if (__nwlog_fault(v43, &type, &v61))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v44 = __nwlog_obj();
      v45 = type;
      if (os_log_type_enabled(v44, type))
      {
        *buf = 136446210;
        v64 = "__nw_protocol_get_output_frames";
        v46 = "%{public}s called with null protocol";
LABEL_105:
        _os_log_impl(&dword_181A37000, v44, v45, v46, buf, 0xCu);
      }
    }

    else if (v61 == 1)
    {
      v50 = __nw_create_backtrace_string();
      v44 = __nwlog_obj();
      v45 = type;
      v51 = os_log_type_enabled(v44, type);
      if (v50)
      {
        if (v51)
        {
          *buf = 136446466;
          v64 = "__nw_protocol_get_output_frames";
          v65 = 2082;
          v66 = v50;
          _os_log_impl(&dword_181A37000, v44, v45, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v50);
        goto LABEL_106;
      }

      if (v51)
      {
        *buf = 136446210;
        v64 = "__nw_protocol_get_output_frames";
        v46 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_105;
      }
    }

    else
    {
      v44 = __nwlog_obj();
      v45 = type;
      if (os_log_type_enabled(v44, type))
      {
        *buf = 136446210;
        v64 = "__nw_protocol_get_output_frames";
        v46 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_105;
      }
    }
  }

LABEL_106:
  if (v43)
  {
    free(v43);
  }

  return 0;
}

void *nw_mem_buffer_allocate_sized_typed(void *result, malloc_type_id_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    __nwlog_obj();
    *buf = 136446210;
    v17 = "nw_mem_buffer_allocate_sized_typed";
    v8 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v14 = 0;
    if (!__nwlog_fault(v8, &type, &v14))
    {
      goto LABEL_28;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_28;
      }

      *buf = 136446210;
      v17 = "nw_mem_buffer_allocate_sized_typed";
      v11 = "%{public}s called with null buffer_manager";
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
          v17 = "nw_mem_buffer_allocate_sized_typed";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null buffer_manager, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_28;
      }

      if (!v13)
      {
LABEL_28:
        if (v8)
        {
          free(v8);
        }

        return 0;
      }

      *buf = 136446210;
      v17 = "nw_mem_buffer_allocate_sized_typed";
      v11 = "%{public}s called with null buffer_manager, no backtrace";
    }

    else
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_28;
      }

      *buf = 136446210;
      v17 = "nw_mem_buffer_allocate_sized_typed";
      v11 = "%{public}s called with null buffer_manager, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0xCu);
    goto LABEL_28;
  }

  if (use_malloc_memory == 1)
  {
    if (result)
    {
      result = malloc_type_malloc(result, a2);
      if (result)
      {
        v3 = result;
        v4 = malloc_size(result);
        nw_mem_track_allocation(v4);
        return v3;
      }
    }

    return result;
  }

  if (!*(a3 + 88))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v17 = "nw_mem_buffer_allocate_sized_typed";
      v18 = 2082;
      v19 = (a3 + 96);
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_ERROR, "%{public}s buffer cache is NULL for %{public}s", buf, 0x16u);
    }

    return 0;
  }

  g_transaction_touched = 1;
  nw_mem_cache_update_set_timer();
  v6 = *(a3 + 88);

  return nw_mem_cache_alloc(v6);
}

uint64_t nw_protocol_finalize_output_frames(void *a1, uint64_t a2)
{
  v50 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = a1;
    v3 = a1[5];
    v4 = a1;
    if (v3 == &nw_protocol_ref_counted_handle || v3 == &nw_protocol_ref_counted_additional_handle && (v4 = a1[8]) != 0)
    {
      v15 = v4[11];
      if (v15)
      {
        v5 = 0;
        v4[11] = v15 + 1;
        if (!a2)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v5 = 0;
        if (!a2)
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
      v5 = 1;
      if (!a2)
      {
LABEL_23:
        __nwlog_obj();
        *buf = 136446210;
        v43 = "__nw_protocol_finalize_output_frames";
        v16 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v40 = 0;
        if (!__nwlog_fault(v16, &type, &v40))
        {
          goto LABEL_82;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v17 = __nwlog_obj();
          v18 = type;
          if (!os_log_type_enabled(v17, type))
          {
            goto LABEL_82;
          }

          *buf = 136446210;
          v43 = "__nw_protocol_finalize_output_frames";
          v19 = "%{public}s called with null frames";
          goto LABEL_80;
        }

        if (v40 != 1)
        {
          v17 = __nwlog_obj();
          v18 = type;
          if (!os_log_type_enabled(v17, type))
          {
            goto LABEL_82;
          }

          *buf = 136446210;
          v43 = "__nw_protocol_finalize_output_frames";
          v19 = "%{public}s called with null frames, backtrace limit exceeded";
          goto LABEL_80;
        }

        backtrace_string = __nw_create_backtrace_string();
        v17 = __nwlog_obj();
        v18 = type;
        v34 = os_log_type_enabled(v17, type);
        if (backtrace_string)
        {
          if (v34)
          {
            *buf = 136446466;
            v43 = "__nw_protocol_finalize_output_frames";
            v44 = 2082;
            v45 = backtrace_string;
            _os_log_impl(&dword_181A37000, v17, v18, "%{public}s called with null frames, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          if (!v16)
          {
LABEL_84:
            result = 0;
            if (v5)
            {
              return result;
            }

LABEL_8:
            v9 = v2[5];
            if (v9 == &nw_protocol_ref_counted_handle || v9 == &nw_protocol_ref_counted_additional_handle && (v2 = v2[8]) != 0)
            {
              v10 = v2[11];
              if (v10)
              {
                v11 = v10 - 1;
                v2[11] = v11;
                if (!v11)
                {
                  v12 = result;
                  v13 = v2[8];
                  if (v13)
                  {
                    v2[8] = 0;
                    v13[2](v13);
                    _Block_release(v13);
                  }

                  if (v2[9])
                  {
                    v14 = v2[8];
                    if (v14)
                    {
                      _Block_release(v14);
                    }
                  }

                  free(v2);
                  return v12;
                }
              }
            }

            return result;
          }

LABEL_83:
          free(v16);
          goto LABEL_84;
        }

        if (v34)
        {
          *buf = 136446210;
          v43 = "__nw_protocol_finalize_output_frames";
          v19 = "%{public}s called with null frames, no backtrace";
LABEL_80:
          v37 = v17;
          v38 = v18;
          v39 = 12;
          goto LABEL_81;
        }

        goto LABEL_82;
      }
    }

    v6 = a1[3];
    if (v6)
    {
      v7 = *(v6 + 96);
      if (v7)
      {
        result = v7(a1);
        if (v5)
        {
          return result;
        }

        goto LABEL_8;
      }
    }

    __nwlog_obj();
    v20 = v2[2];
    *buf = 136446722;
    v43 = "__nw_protocol_finalize_output_frames";
    if (!v20)
    {
      v20 = "invalid";
    }

    v44 = 2082;
    v45 = v20;
    v46 = 2048;
    v47 = v2;
    v16 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v40 = 0;
    if (__nwlog_fault(v16, &type, &v40))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v21 = __nwlog_obj();
        v22 = type;
        if (!os_log_type_enabled(v21, type))
        {
          goto LABEL_82;
        }

        v23 = v2[2];
        if (!v23)
        {
          v23 = "invalid";
        }

        *buf = 136446722;
        v43 = "__nw_protocol_finalize_output_frames";
        v44 = 2082;
        v45 = v23;
        v46 = 2048;
        v47 = v2;
        v19 = "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback";
      }

      else if (v40 == 1)
      {
        v28 = __nw_create_backtrace_string();
        v21 = __nwlog_obj();
        v22 = type;
        v29 = os_log_type_enabled(v21, type);
        if (v28)
        {
          if (v29)
          {
            v30 = v2[2];
            if (!v30)
            {
              v30 = "invalid";
            }

            *buf = 136446978;
            v43 = "__nw_protocol_finalize_output_frames";
            v44 = 2082;
            v45 = v30;
            v46 = 2048;
            v47 = v2;
            v48 = 2082;
            v49 = v28;
            _os_log_impl(&dword_181A37000, v21, v22, "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v28);
          goto LABEL_82;
        }

        if (!v29)
        {
          goto LABEL_82;
        }

        v36 = v2[2];
        if (!v36)
        {
          v36 = "invalid";
        }

        *buf = 136446722;
        v43 = "__nw_protocol_finalize_output_frames";
        v44 = 2082;
        v45 = v36;
        v46 = 2048;
        v47 = v2;
        v19 = "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback, no backtrace";
      }

      else
      {
        v21 = __nwlog_obj();
        v22 = type;
        if (!os_log_type_enabled(v21, type))
        {
          goto LABEL_82;
        }

        v35 = v2[2];
        if (!v35)
        {
          v35 = "invalid";
        }

        *buf = 136446722;
        v43 = "__nw_protocol_finalize_output_frames";
        v44 = 2082;
        v45 = v35;
        v46 = 2048;
        v47 = v2;
        v19 = "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback, backtrace limit exceeded";
      }

      v37 = v21;
      v38 = v22;
      v39 = 32;
LABEL_81:
      _os_log_impl(&dword_181A37000, v37, v38, v19, buf, v39);
    }

LABEL_82:
    if (!v16)
    {
      goto LABEL_84;
    }

    goto LABEL_83;
  }

  __nwlog_obj();
  *buf = 136446210;
  v43 = "__nw_protocol_finalize_output_frames";
  v24 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v40 = 0;
  if (__nwlog_fault(v24, &type, &v40))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v25 = __nwlog_obj();
      v26 = type;
      if (os_log_type_enabled(v25, type))
      {
        *buf = 136446210;
        v43 = "__nw_protocol_finalize_output_frames";
        v27 = "%{public}s called with null protocol";
LABEL_74:
        _os_log_impl(&dword_181A37000, v25, v26, v27, buf, 0xCu);
      }
    }

    else if (v40 == 1)
    {
      v31 = __nw_create_backtrace_string();
      v25 = __nwlog_obj();
      v26 = type;
      v32 = os_log_type_enabled(v25, type);
      if (v31)
      {
        if (v32)
        {
          *buf = 136446466;
          v43 = "__nw_protocol_finalize_output_frames";
          v44 = 2082;
          v45 = v31;
          _os_log_impl(&dword_181A37000, v25, v26, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v31);
        goto LABEL_75;
      }

      if (v32)
      {
        *buf = 136446210;
        v43 = "__nw_protocol_finalize_output_frames";
        v27 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_74;
      }
    }

    else
    {
      v25 = __nwlog_obj();
      v26 = type;
      if (os_log_type_enabled(v25, type))
      {
        *buf = 136446210;
        v43 = "__nw_protocol_finalize_output_frames";
        v27 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_74;
      }
    }
  }

LABEL_75:
  if (v24)
  {
    free(v24);
  }

  return 0;
}

void nw_mem_buffer_free(uint64_t a1, unint64_t ptr)
{
  v56 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_mem_buffer_free";
    v35 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v47 = 0;
    if (!__nwlog_fault(v35, &type, &v47))
    {
      goto LABEL_96;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v36 = __nwlog_obj();
      v37 = type;
      if (!os_log_type_enabled(v36, type))
      {
        goto LABEL_96;
      }

      *buf = 136446210;
      *&buf[4] = "nw_mem_buffer_free";
      v38 = "%{public}s called with null buffer_manager";
      goto LABEL_95;
    }

    if (v47 != 1)
    {
      v36 = __nwlog_obj();
      v37 = type;
      if (!os_log_type_enabled(v36, type))
      {
        goto LABEL_96;
      }

      *buf = 136446210;
      *&buf[4] = "nw_mem_buffer_free";
      v38 = "%{public}s called with null buffer_manager, backtrace limit exceeded";
      goto LABEL_95;
    }

    backtrace_string = __nw_create_backtrace_string();
    v36 = __nwlog_obj();
    v37 = type;
    v40 = os_log_type_enabled(v36, type);
    if (!backtrace_string)
    {
      if (!v40)
      {
        goto LABEL_96;
      }

      *buf = 136446210;
      *&buf[4] = "nw_mem_buffer_free";
      v38 = "%{public}s called with null buffer_manager, no backtrace";
      goto LABEL_95;
    }

    if (v40)
    {
      *buf = 136446466;
      *&buf[4] = "nw_mem_buffer_free";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v36, v37, "%{public}s called with null buffer_manager, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
LABEL_96:
    if (!v35)
    {
      return;
    }

    goto LABEL_97;
  }

  if (!ptr)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_mem_buffer_free";
    v35 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v47 = 0;
    if (!__nwlog_fault(v35, &type, &v47))
    {
      goto LABEL_96;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v36 = __nwlog_obj();
      v37 = type;
      if (!os_log_type_enabled(v36, type))
      {
        goto LABEL_96;
      }

      *buf = 136446210;
      *&buf[4] = "nw_mem_buffer_free";
      v38 = "%{public}s called with null buffer";
      goto LABEL_95;
    }

    if (v47 != 1)
    {
      v36 = __nwlog_obj();
      v37 = type;
      if (!os_log_type_enabled(v36, type))
      {
        goto LABEL_96;
      }

      *buf = 136446210;
      *&buf[4] = "nw_mem_buffer_free";
      v38 = "%{public}s called with null buffer, backtrace limit exceeded";
      goto LABEL_95;
    }

    v41 = __nw_create_backtrace_string();
    v36 = __nwlog_obj();
    v37 = type;
    v42 = os_log_type_enabled(v36, type);
    if (v41)
    {
      if (v42)
      {
        *buf = 136446466;
        *&buf[4] = "nw_mem_buffer_free";
        *&buf[12] = 2082;
        *&buf[14] = v41;
        _os_log_impl(&dword_181A37000, v36, v37, "%{public}s called with null buffer, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v41);
      if (!v35)
      {
        return;
      }

LABEL_97:
      free(v35);
      return;
    }

    if (v42)
    {
      *buf = 136446210;
      *&buf[4] = "nw_mem_buffer_free";
      v38 = "%{public}s called with null buffer, no backtrace";
LABEL_95:
      _os_log_impl(&dword_181A37000, v36, v37, v38, buf, 0xCu);
      goto LABEL_96;
    }

    goto LABEL_96;
  }

  if (use_malloc_memory == 1)
  {
    v3 = malloc_size(ptr);
    free(ptr);
    v4 = atomic_load(g_track_mem_total_usage);
    v5 = v4 - v3;
    if (v4 >= v3)
    {
LABEL_58:
      g_track_transaction_touched = 1;
      if (atomic_fetch_add_explicit(g_track_mem_total_usage, -v3, memory_order_relaxed) > 0x8000)
      {
        v34 = atomic_load(g_track_mem_total_usage);
        if (v34 <= 0x8000)
        {
          nw_mem_track_check_transaction_required();
        }
      }

      return;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446978;
    *&buf[4] = "nw_mem_track_deallocation";
    *&buf[12] = 2082;
    *&buf[14] = "temp_total_mem_usage";
    v50 = 2048;
    v51 = v3;
    v52 = 2048;
    v53 = v5;
    v6 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v47 = 0;
    if (__nwlog_fault(v6, &type, &v47))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        v8 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_56;
        }

        *buf = 136446978;
        *&buf[4] = "nw_mem_track_deallocation";
        *&buf[12] = 2082;
        *&buf[14] = "temp_total_mem_usage";
        v50 = 2048;
        v51 = v3;
        v52 = 2048;
        v53 = v5;
        v9 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
        goto LABEL_55;
      }

      if (v47 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        v8 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_56;
        }

        *buf = 136446978;
        *&buf[4] = "nw_mem_track_deallocation";
        *&buf[12] = 2082;
        *&buf[14] = "temp_total_mem_usage";
        v50 = 2048;
        v51 = v3;
        v52 = 2048;
        v53 = v5;
        v9 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
        goto LABEL_55;
      }

      v31 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v8 = type;
      v32 = os_log_type_enabled(gLogObj, type);
      if (v31)
      {
        if (v32)
        {
          *buf = 136447234;
          *&buf[4] = "nw_mem_track_deallocation";
          *&buf[12] = 2082;
          *&buf[14] = "temp_total_mem_usage";
          v50 = 2048;
          v51 = v3;
          v52 = 2048;
          v53 = v5;
          v54 = 2082;
          v55 = v31;
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
        }

        free(v31);
        goto LABEL_56;
      }

      if (v32)
      {
        *buf = 136446978;
        *&buf[4] = "nw_mem_track_deallocation";
        *&buf[12] = 2082;
        *&buf[14] = "temp_total_mem_usage";
        v50 = 2048;
        v51 = v3;
        v52 = 2048;
        v53 = v5;
        v9 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
LABEL_55:
        _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0x2Au);
      }
    }

LABEL_56:
    if (v6)
    {
      free(v6);
    }

    goto LABEL_58;
  }

  if (*(a1 + 88))
  {
    g_transaction_touched = 1;
    nw_mem_cache_update_set_timer();
    v11 = *(a1 + 88);
    nw_mem_cache_operations_during_interval = 1;
    if ((*(v11 + 176) & 2) != 0)
    {
      v43 = *(v11 + 288) + 8 * ((ptr >> *(v11 + 272)) & *(v11 + 280));
      while (1)
      {
        v43 = *v43;
        if (!v43)
        {
          break;
        }

        if (*(v43 + 8) == ptr)
        {
          *buf = 0;
          *&buf[8] = 0;
          gettimeofday(buf, 0);
          *(v43 + 32) = 1000 * *buf + *&buf[8] / 1000;
          *(v43 + 44) = backtrace((v43 + 48), 16);
          goto LABEL_11;
        }
      }

      v44 = __nwlog_obj();
      os_log_type_enabled(v44, OS_LOG_TYPE_ERROR);
      *buf = 136446722;
      *&buf[4] = "nw_mem_audit_buf";
      *&buf[12] = 2082;
      *&buf[14] = v11 + 96;
      v50 = 2048;
      v51 = ptr;
      v45 = _os_log_send_and_compose_impl();
      if (__nwlog_should_abort(v45))
      {
LABEL_98:
        __break(1u);
        return;
      }

      free(v45);
      *buf = 0;
      *&buf[8] = 0;
      gettimeofday(buf, 0);
      MEMORY[0x20] = 1000 * *buf + *&buf[8] / 1000;
      MEMORY[0x2C] = backtrace(0x30, 16);
    }

LABEL_11:
    v12 = *(v11 + 552);
    v13 = *(v11 + 560);
    if (v12 < v13)
    {
LABEL_12:
      v14 = *(v11 + 520) + 8 * v12;
      *(v11 + 552) = v12 + 1;
      *(v14 + 8) = ptr;
      ++*(v11 + 544);
      return;
    }

    while (1)
    {
      if (!*(v11 + 556))
      {
        *(v11 + 556) = v12;
        *(v11 + 520) = vextq_s8(*(v11 + 520), *(v11 + 520), 8uLL);
LABEL_17:
        *(v11 + 552) = 0;
        goto LABEL_18;
      }

      if (!v13)
      {
        v33 = *(v11 + 192);
        if (v33)
        {
          v33(ptr, *(v11 + 208));
        }

        nw_mem_slab_free(v11, ptr);
        return;
      }

      v16 = *(v11 + 384);
      if (v16)
      {
        *(v11 + 384) = *v16;
        v17 = *(v11 + 392) - 1;
        *(v11 + 392) = v17;
        if (v17 < *(v11 + 396))
        {
          *(v11 + 396) = v17;
        }

        ++*(v11 + 376);
        v18 = *(v11 + 528);
        if (v18)
        {
          *v18 = *(v11 + 352);
          *(v11 + 352) = v18;
          ++*(v11 + 360);
        }

        *(v11 + 528) = *(v11 + 520);
        *(v11 + 556) = v12;
        *(v11 + 520) = v16;
        goto LABEL_17;
      }

      v19 = *(v11 + 336);
      v20 = v19[1];
      v21 = 8 * *v19;
      v22 = v21 + 8;
      if (v21 == -8)
      {
        v24 = __nwlog_obj();
        os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
        *buf = 136446210;
        *&buf[4] = "nw_mem_cache_free";
        v25 = _os_log_send_and_compose_impl();
        if (__nwlog_should_abort(v25))
        {
          goto LABEL_98;
        }

        free(v25);
        if (v20 <= 7)
        {
LABEL_36:
          v26 = __nwlog_obj();
          os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
          *buf = 136446466;
          *&buf[4] = "nw_mem_cache_free";
          *&buf[12] = 2048;
          *&buf[14] = v20;
          v27 = _os_log_send_and_compose_impl();
          if (__nwlog_should_abort(v27))
          {
            goto LABEL_98;
          }

          free(v27);
        }
      }

      else if (v20 <= 7)
      {
        goto LABEL_36;
      }

      if ((v20 & (v20 - 1)) != 0)
      {
        v28 = __nwlog_obj();
        os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
        *buf = 136446466;
        *&buf[4] = "nw_mem_cache_free";
        *&buf[12] = 2048;
        *&buf[14] = v20;
        v29 = _os_log_send_and_compose_impl();
        if (__nwlog_should_abort(v29))
        {
          goto LABEL_98;
        }

        free(v29);
      }

      v23 = malloc_type_zone_memalign(g_slab_zone, v20, v22, 0x4D3EEDA2uLL);
      if (v23)
      {
        v13 = *(v11 + 560);
        if (v13 != *v19)
        {
          malloc_zone_free(g_slab_zone, v23);
          v13 = *(v11 + 560);
          goto LABEL_18;
        }

LABEL_32:
        *v23 = *(v11 + 384);
        *(v11 + 384) = v23;
        ++*(v11 + 392);
        goto LABEL_18;
      }

      v46 = __nwlog_obj();
      os_log_type_enabled(v46, OS_LOG_TYPE_ERROR);
      *buf = 136446722;
      *&buf[4] = "nw_mem_cache_free";
      *&buf[12] = 2048;
      *&buf[14] = v20;
      v50 = 2048;
      v51 = v22;
      v30 = _os_log_send_and_compose_impl();
      if (__nwlog_should_abort(v30))
      {
        goto LABEL_98;
      }

      free(v30);
      v13 = *(v11 + 560);
      if (v13 == *v19)
      {
        goto LABEL_32;
      }

LABEL_18:
      v12 = *(v11 + 552);
      if (v12 < v13)
      {
        goto LABEL_12;
      }
    }
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v15 = gLogObj;
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446210;
    *&buf[4] = "nw_mem_buffer_free";
    _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_ERROR, "%{public}s buffer cache is NULL", buf, 0xCu);
  }
}

uint64_t nw_frame_array_foreach(uint64_t result, char a2, uint64_t a3)
{
  v5 = *result;
  if (a2)
  {
    do
    {
      if (!v5)
      {
        break;
      }

      v6 = *(v5 + 32);
      result = (*(a3 + 16))(a3);
      v5 = v6;
    }

    while ((result & 1) != 0);
  }

  else
  {
    do
    {
      if (!v5)
      {
        break;
      }

      v7 = *(v5 + 16);
      result = (*(a3 + 16))(a3);
      v5 = v7;
    }

    while ((result & 1) != 0);
  }

  return result;
}

uint64_t _nw_protocol_metadata_copy_identifier(uint64_t a1, unsigned __int8 *a2)
{
  v3 = sub_18214FD4C(&qword_1ED40FBD8, &qword_1EA83AA60);

  sub_181AE3300(v3, a2, &v5);

  return v5;
}

void sub_181AE3300(uint64_t a1@<X1>, unsigned __int8 *a2@<X2>, _BYTE *a3@<X8>)
{
  v9 = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  (*(a1 + 40))(&v7, ObjectType, a1);
  *src = v7;
  uuid_copy(a2, src);
  *a3 = 1;
}

__n128 ProtocolMetadata.messageIdentifier.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 41);
  *a1 = result;
  return result;
}

BOOL nw_parameters_is_persona_set(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_is_persona_set(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_is_persona_set";
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
        v12 = "nw_parameters_is_persona_set";
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
            v12 = "nw_parameters_is_persona_set";
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
        v12 = "nw_parameters_is_persona_set";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_is_persona_set";
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

void nw_mem_track_allocation(unint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = atomic_load(g_track_mem_total_usage);
  v3 = v2 + a1;
  if (!__CFADD__(v2, a1))
  {
    goto LABEL_19;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446978;
  v14 = "nw_mem_track_allocation";
  v15 = 2082;
  v16 = "temp_total_mem_usage";
  v17 = 2048;
  v18 = a1;
  v19 = 2048;
  v20 = v3;
  v4 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v4, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v6 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_17;
      }

      *buf = 136446978;
      v14 = "nw_mem_track_allocation";
      v15 = 2082;
      v16 = "temp_total_mem_usage";
      v17 = 2048;
      v18 = a1;
      v19 = 2048;
      v20 = v3;
      v7 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
      goto LABEL_16;
    }

    if (v11 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v6 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_17;
      }

      *buf = 136446978;
      v14 = "nw_mem_track_allocation";
      v15 = 2082;
      v16 = "temp_total_mem_usage";
      v17 = 2048;
      v18 = a1;
      v19 = 2048;
      v20 = v3;
      v7 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
      goto LABEL_16;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    v6 = type;
    v9 = os_log_type_enabled(gLogObj, type);
    if (backtrace_string)
    {
      if (v9)
      {
        *buf = 136447234;
        v14 = "nw_mem_track_allocation";
        v15 = 2082;
        v16 = "temp_total_mem_usage";
        v17 = 2048;
        v18 = a1;
        v19 = 2048;
        v20 = v3;
        v21 = 2082;
        v22 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
      }

      free(backtrace_string);
      goto LABEL_17;
    }

    if (v9)
    {
      *buf = 136446978;
      v14 = "nw_mem_track_allocation";
      v15 = 2082;
      v16 = "temp_total_mem_usage";
      v17 = 2048;
      v18 = a1;
      v19 = 2048;
      v20 = v3;
      v7 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
LABEL_16:
      _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0x2Au);
    }
  }

LABEL_17:
  if (v4)
  {
    free(v4);
  }

LABEL_19:
  g_track_transaction_touched = 1;
  if (atomic_fetch_add_explicit(g_track_mem_total_usage, a1, memory_order_relaxed) < 0x4B000)
  {
    v10 = atomic_load(g_track_mem_total_usage);
    if (v10 > 0x4AFFF)
    {
      nw_mem_track_check_transaction_required();
    }
  }
}

void ___ZL17nw_channel_createP10nw_contextPhjPvjbbPb_block_invoke_39(uint64_t a1)
{
  if (*(a1 + 40) == 1 && *(*(a1 + 32) + 136))
  {
    os_channel_sync();
  }

  *(*(a1 + 32) + 460) |= 4u;
  nw_channel_update_input_source(*(a1 + 32), 0, 1);
  *(*(a1 + 32) + 460) &= ~4u;
}

uint64_t nw_protocol_get_input_frames(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v71 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v6 = a2;
    v7 = a1;
    v8 = a1[5];
    v9 = a1;
    if (v8 == &nw_protocol_ref_counted_handle || v8 == &nw_protocol_ref_counted_additional_handle && (v9 = a1[8]) != 0)
    {
      v29 = v9[11];
      if (v29)
      {
        v10 = 0;
        v9[11] = v29 + 1;
        if (!a2)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v10 = 0;
        if (!a2)
        {
LABEL_38:
          __nwlog_obj();
          *buf = 136446210;
          v64 = "__nw_protocol_get_input_frames";
          v30 = _os_log_send_and_compose_impl();
          type = OS_LOG_TYPE_ERROR;
          v61 = 0;
          if (__nwlog_fault(v30, &type, &v61))
          {
            if (type == OS_LOG_TYPE_FAULT)
            {
              v31 = __nwlog_obj();
              v32 = type;
              if (os_log_type_enabled(v31, type))
              {
                *buf = 136446210;
                v64 = "__nw_protocol_get_input_frames";
                v33 = "%{public}s called with null input_protocol";
LABEL_111:
                _os_log_impl(&dword_181A37000, v31, v32, v33, buf, 0xCu);
              }
            }

            else if (v61 == 1)
            {
              backtrace_string = __nw_create_backtrace_string();
              v31 = __nwlog_obj();
              v32 = type;
              v53 = os_log_type_enabled(v31, type);
              if (backtrace_string)
              {
                if (v53)
                {
                  *buf = 136446466;
                  v64 = "__nw_protocol_get_input_frames";
                  v65 = 2082;
                  v66 = backtrace_string;
                  _os_log_impl(&dword_181A37000, v31, v32, "%{public}s called with null input_protocol, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(backtrace_string);
                goto LABEL_112;
              }

              if (v53)
              {
                *buf = 136446210;
                v64 = "__nw_protocol_get_input_frames";
                v33 = "%{public}s called with null input_protocol, no backtrace";
                goto LABEL_111;
              }
            }

            else
            {
              v31 = __nwlog_obj();
              v32 = type;
              if (os_log_type_enabled(v31, type))
              {
                *buf = 136446210;
                v64 = "__nw_protocol_get_input_frames";
                v33 = "%{public}s called with null input_protocol, backtrace limit exceeded";
                goto LABEL_111;
              }
            }
          }

LABEL_112:
          if (v30)
          {
            free(v30);
          }

          result = 0;
          goto LABEL_22;
        }
      }
    }

    else
    {
      v10 = 1;
      if (!a2)
      {
        goto LABEL_38;
      }
    }

    v11 = *(a2 + 40);
    v12 = a2;
    if (v11 == &nw_protocol_ref_counted_handle || v11 == &nw_protocol_ref_counted_additional_handle && (v12 = *(a2 + 64)) != 0)
    {
      v34 = *(v12 + 88);
      if (v34)
      {
        v13 = 0;
        *(v12 + 88) = v34 + 1;
        if (!a6)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v13 = 0;
        if (!a6)
        {
          goto LABEL_45;
        }
      }
    }

    else
    {
      v13 = 1;
      if (!a6)
      {
LABEL_45:
        __nwlog_obj();
        *buf = 136446210;
        v64 = "__nw_protocol_get_input_frames";
        v35 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v61 = 0;
        if (!__nwlog_fault(v35, &type, &v61))
        {
          goto LABEL_119;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v36 = __nwlog_obj();
          v37 = type;
          if (!os_log_type_enabled(v36, type))
          {
            goto LABEL_119;
          }

          *buf = 136446210;
          v64 = "__nw_protocol_get_input_frames";
          v38 = "%{public}s called with null return_array";
          goto LABEL_117;
        }

        if (v61 != 1)
        {
          v36 = __nwlog_obj();
          v37 = type;
          if (!os_log_type_enabled(v36, type))
          {
            goto LABEL_119;
          }

          *buf = 136446210;
          v64 = "__nw_protocol_get_input_frames";
          v38 = "%{public}s called with null return_array, backtrace limit exceeded";
          goto LABEL_117;
        }

        v54 = __nw_create_backtrace_string();
        v36 = __nwlog_obj();
        v37 = type;
        v55 = os_log_type_enabled(v36, type);
        if (v54)
        {
          if (v55)
          {
            *buf = 136446466;
            v64 = "__nw_protocol_get_input_frames";
            v65 = 2082;
            v66 = v54;
            _os_log_impl(&dword_181A37000, v36, v37, "%{public}s called with null return_array, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v54);
          if (!v35)
          {
LABEL_121:
            result = 0;
            if (v13)
            {
LABEL_22:
              if ((v10 & 1) == 0)
              {
                v23 = v7[5];
                if (v23 == &nw_protocol_ref_counted_handle || v23 == &nw_protocol_ref_counted_additional_handle && (v7 = v7[8]) != 0)
                {
                  v24 = v7[11];
                  if (v24)
                  {
                    v25 = v24 - 1;
                    v7[11] = v25;
                    if (!v25)
                    {
                      v26 = result;
                      v27 = v7[8];
                      if (v27)
                      {
                        v7[8] = 0;
                        v27[2](v27);
                        _Block_release(v27);
                      }

                      if (v7[9])
                      {
                        v28 = v7[8];
                        if (v28)
                        {
                          _Block_release(v28);
                        }
                      }

                      free(v7);
                      return v26;
                    }
                  }
                }
              }

              return result;
            }

LABEL_11:
            v17 = *(v6 + 40);
            if (v17 == &nw_protocol_ref_counted_handle || v17 == &nw_protocol_ref_counted_additional_handle && (v6 = *(v6 + 64)) != 0)
            {
              v18 = *(v6 + 88);
              if (v18)
              {
                v19 = v18 - 1;
                *(v6 + 88) = v19;
                if (!v19)
                {
                  v20 = result;
                  v21 = *(v6 + 64);
                  if (v21)
                  {
                    *(v6 + 64) = 0;
                    v21[2](v21);
                    _Block_release(v21);
                  }

                  if (*(v6 + 72))
                  {
                    v22 = *(v6 + 64);
                    if (v22)
                    {
                      _Block_release(v22);
                    }
                  }

                  free(v6);
                  result = v20;
                }
              }
            }

            goto LABEL_22;
          }

LABEL_120:
          free(v35);
          goto LABEL_121;
        }

        if (v55)
        {
          *buf = 136446210;
          v64 = "__nw_protocol_get_input_frames";
          v38 = "%{public}s called with null return_array, no backtrace";
LABEL_117:
          v58 = v36;
          v59 = v37;
          v60 = 12;
          goto LABEL_118;
        }

        goto LABEL_119;
      }
    }

    v14 = a1[3];
    if (v14)
    {
      v15 = *(v14 + 80);
      if (v15)
      {
        result = v15(a1, a2);
        if (v13)
        {
          goto LABEL_22;
        }

        goto LABEL_11;
      }
    }

    __nwlog_obj();
    v39 = v7[2];
    *buf = 136446722;
    v64 = "__nw_protocol_get_input_frames";
    if (!v39)
    {
      v39 = "invalid";
    }

    v65 = 2082;
    v66 = v39;
    v67 = 2048;
    v68 = v7;
    v35 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v61 = 0;
    if (__nwlog_fault(v35, &type, &v61))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v40 = __nwlog_obj();
        v41 = type;
        if (!os_log_type_enabled(v40, type))
        {
          goto LABEL_119;
        }

        v42 = v7[2];
        if (!v42)
        {
          v42 = "invalid";
        }

        *buf = 136446722;
        v64 = "__nw_protocol_get_input_frames";
        v65 = 2082;
        v66 = v42;
        v67 = 2048;
        v68 = v7;
        v38 = "%{public}s protocol %{public}s (%p) has invalid get_input_frames callback";
      }

      else if (v61 == 1)
      {
        v47 = __nw_create_backtrace_string();
        v40 = __nwlog_obj();
        v41 = type;
        v48 = os_log_type_enabled(v40, type);
        if (v47)
        {
          if (v48)
          {
            v49 = v7[2];
            if (!v49)
            {
              v49 = "invalid";
            }

            *buf = 136446978;
            v64 = "__nw_protocol_get_input_frames";
            v65 = 2082;
            v66 = v49;
            v67 = 2048;
            v68 = v7;
            v69 = 2082;
            v70 = v47;
            _os_log_impl(&dword_181A37000, v40, v41, "%{public}s protocol %{public}s (%p) has invalid get_input_frames callback, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v47);
          goto LABEL_119;
        }

        if (!v48)
        {
          goto LABEL_119;
        }

        v57 = v7[2];
        if (!v57)
        {
          v57 = "invalid";
        }

        *buf = 136446722;
        v64 = "__nw_protocol_get_input_frames";
        v65 = 2082;
        v66 = v57;
        v67 = 2048;
        v68 = v7;
        v38 = "%{public}s protocol %{public}s (%p) has invalid get_input_frames callback, no backtrace";
      }

      else
      {
        v40 = __nwlog_obj();
        v41 = type;
        if (!os_log_type_enabled(v40, type))
        {
          goto LABEL_119;
        }

        v56 = v7[2];
        if (!v56)
        {
          v56 = "invalid";
        }

        *buf = 136446722;
        v64 = "__nw_protocol_get_input_frames";
        v65 = 2082;
        v66 = v56;
        v67 = 2048;
        v68 = v7;
        v38 = "%{public}s protocol %{public}s (%p) has invalid get_input_frames callback, backtrace limit exceeded";
      }

      v58 = v40;
      v59 = v41;
      v60 = 32;
LABEL_118:
      _os_log_impl(&dword_181A37000, v58, v59, v38, buf, v60);
    }

LABEL_119:
    if (!v35)
    {
      goto LABEL_121;
    }

    goto LABEL_120;
  }

  __nwlog_obj();
  *buf = 136446210;
  v64 = "__nw_protocol_get_input_frames";
  v43 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v61 = 0;
  if (__nwlog_fault(v43, &type, &v61))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v44 = __nwlog_obj();
      v45 = type;
      if (os_log_type_enabled(v44, type))
      {
        *buf = 136446210;
        v64 = "__nw_protocol_get_input_frames";
        v46 = "%{public}s called with null protocol";
LABEL_105:
        _os_log_impl(&dword_181A37000, v44, v45, v46, buf, 0xCu);
      }
    }

    else if (v61 == 1)
    {
      v50 = __nw_create_backtrace_string();
      v44 = __nwlog_obj();
      v45 = type;
      v51 = os_log_type_enabled(v44, type);
      if (v50)
      {
        if (v51)
        {
          *buf = 136446466;
          v64 = "__nw_protocol_get_input_frames";
          v65 = 2082;
          v66 = v50;
          _os_log_impl(&dword_181A37000, v44, v45, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v50);
        goto LABEL_106;
      }

      if (v51)
      {
        *buf = 136446210;
        v64 = "__nw_protocol_get_input_frames";
        v46 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_105;
      }
    }

    else
    {
      v44 = __nwlog_obj();
      v45 = type;
      if (os_log_type_enabled(v44, type))
      {
        *buf = 136446210;
        v64 = "__nw_protocol_get_input_frames";
        v46 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_105;
      }
    }
  }

LABEL_106:
  if (v43)
  {
    free(v43);
  }

  return 0;
}