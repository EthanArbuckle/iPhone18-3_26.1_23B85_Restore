_WORD *nw_browse_result_get_interfaces_description_locked(NWConcrete_nw_browse_result *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 3;
  v2 = *(v1 + 2);
  if (v2)
  {
    count = _nw_array_get_count(v2);
    v2 = *(v1 + 2);
  }

  else
  {
    count = 0;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___ZL50nw_browse_result_get_interfaces_description_lockedP27NWConcrete_nw_browse_result_block_invoke;
  aBlock[3] = &unk_1E6A3D890;
  aBlock[4] = &v14;
  aBlock[5] = count;
  if (v2)
  {
    _nw_array_apply(v2, aBlock);
  }

  v4 = v15[3];
  if (!v4)
  {
    v10 = __nwlog_obj();
    os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    v18 = 136446210;
    v19 = "nw_browse_result_get_interfaces_description_locked";
    v11 = _os_log_send_and_compose_impl();

    result = __nwlog_should_abort(v11);
    if (result)
    {
      goto LABEL_15;
    }

    free(v11);
    v4 = 0;
  }

  v5 = malloc_type_malloc(v4, 0xF32777E4uLL);
  if (!v5)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    v18 = 136446210;
    v19 = "nw_browse_result_get_interfaces_description_locked";
    v7 = _os_log_send_and_compose_impl();

    result = __nwlog_should_abort(v7);
    if (!result)
    {
      free(v7);
      goto LABEL_10;
    }

LABEL_15:
    __break(1u);
    return result;
  }

LABEL_10:
  *v5 = 91;
  v9 = *(v1 + 2);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = ___ZL50nw_browse_result_get_interfaces_description_lockedP27NWConcrete_nw_browse_result_block_invoke_87;
  v12[3] = &unk_1E6A2B270;
  v12[4] = &v14;
  v12[5] = v5;
  v12[6] = count;
  if (v9)
  {
    _nw_array_apply(v9, v12);
  }

  *(v5 + v15[3] - 2) = 93;
  *(v5 + v15[3] - 1) = 0;
  _Block_object_dispose(&v14, 8);

  return v5;
}

void sub_181E72A74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

nw_endpoint_t nw_browse_result_copy_endpoint(nw_browse_result_t result)
{
  v17 = *MEMORY[0x1E69E9840];
  if (result)
  {
    isa = result[1].isa;

    return nw_endpoint_copy(isa);
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_browse_result_copy_endpoint";
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
        v14 = "nw_browse_result_copy_endpoint";
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null result", buf, 0xCu);
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
          v14 = "nw_browse_result_copy_endpoint";
          v15 = 2082;
          v16 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v8, "%{public}s called with null result, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_21;
      }

      if (v9)
      {
        *buf = 136446210;
        v14 = "nw_browse_result_copy_endpoint";
        _os_log_impl(&dword_181A37000, v5, v8, "%{public}s called with null result, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v5 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v14 = "nw_browse_result_copy_endpoint";
        _os_log_impl(&dword_181A37000, v5, v10, "%{public}s called with null result, backtrace limit exceeded", buf, 0xCu);
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

uint64_t _nw_array_remove_object_at_index(void *a1, uint64_t a2)
{
  v3 = a1;
  sub_181E72E18(v3, a2, &v5);

  return v5;
}

uint64_t sub_181E72E18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  LOBYTE(v6) = atomic_load_explicit((*(**(a1 + OBJC_IVAR____TtC7Network7NWArray_applyCount) + 136))(), memory_order_acquire);
  if (v6)
  {
    result = __nwlog_should_abort("cannot remove during apply");
    if ((result & 1) == 0)
    {
      goto LABEL_13;
    }

    __break(1u);
  }

  v8 = OBJC_IVAR____TtC7Network7NWArray_deque;
  result = swift_beginAccess();
  v9 = *(a1 + v8);
  if (v9[3] <= a2)
  {
    result = __nwlog_should_abort("array index out of range");
    if (result)
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_13:
    v12 = 0;
    goto LABEL_14;
  }

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v10 = v9[4] + a2;
  v11 = v9[2];
  if (v10 < v11)
  {
    v11 = 0;
  }

  v12 = v9[v10 - v11 + 5];
  swift_beginAccess();
  swift_unknownObjectRetain();
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_181D895A8();
  }

  v13 = *(a1 + v8);
  if (*(v13 + 24) > a2)
  {

    swift_unknownObjectRetain();
    sub_181D896A4(a2, a2 + 1, v13 + 16, v13 + 40, sub_181D8977C, &type metadata for NWArray.Element, sub_18226EC18);
    swift_endAccess();
    swift_unknownObjectRelease();

LABEL_14:
    *a3 = v12;
    return result;
  }

LABEL_17:
  __break(1u);
  return result;
}

id nw_browse_result_copy_interfaces(NWConcrete_nw_browse_result *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = *(v1 + 2);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_browse_result_copy_interfaces";
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
        v16 = "nw_browse_result_copy_interfaces";
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
          v16 = "nw_browse_result_copy_interfaces";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null result, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_browse_result_copy_interfaces";
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
        v16 = "nw_browse_result_copy_interfaces";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null result, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_22:
  if (v6)
  {
    free(v6);
  }

  v3 = 0;
LABEL_3:

  return v3;
}

nw_txt_record_t nw_browse_result_copy_txt_record_object(nw_browse_result_t result)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = result;
  v2 = v1;
  if (v1)
  {
    v3 = v1[3].isa;
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_browse_result_copy_txt_record_object";
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
        v16 = "nw_browse_result_copy_txt_record_object";
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
          v16 = "nw_browse_result_copy_txt_record_object";
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
        v16 = "nw_browse_result_copy_txt_record_object";
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
        v16 = "nw_browse_result_copy_txt_record_object";
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

const char *nw_browse_result_get_description(void *a1, int a2)
{
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    os_unfair_lock_lock(v3 + 12);
    if (a2)
    {
      v5 = &v4[10];
      if (!*&v4[10]._os_unfair_lock_opaque)
      {
        interfaces_description_locked = nw_browse_result_get_interfaces_description_locked(v4);
        v7 = *&v4[2]._os_unfair_lock_opaque;
        v8 = v7;
        if (v7)
        {
          logging_description = _nw_endpoint_get_logging_description(v7);
        }

        else
        {
          logging_description = "<NULL>";
        }

        asprintf(&v4[10], "%s@%s", logging_description, interfaces_description_locked);
        goto LABEL_14;
      }
    }

    else
    {
      v5 = &v4[8];
      if (!*&v4[8]._os_unfair_lock_opaque)
      {
        interfaces_description_locked = nw_browse_result_get_interfaces_description_locked(v4);
        v11 = *&v4[2]._os_unfair_lock_opaque;
        v8 = v11;
        if (v11)
        {
          description = _nw_endpoint_get_description(v11);
        }

        else
        {
          description = "<NULL>";
        }

        asprintf(&v4[8], "%s@%s", description, interfaces_description_locked);
LABEL_14:
        if (interfaces_description_locked)
        {
          free(interfaces_description_locked);
        }
      }
    }

    os_unfair_lock_unlock(v4 + 12);
    v10 = *v5;
    goto LABEL_18;
  }

  v10 = "<NULL>";
LABEL_18:

  return v10;
}

size_t nw_browse_result_get_interfaces_count(nw_browse_result_t result)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    v3 = __nwlog_obj();
    *buf = 136446210;
    v14 = "nw_browse_result_get_interfaces_count";
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
          v14 = "nw_browse_result_get_interfaces_count";
          _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null result", buf, 0xCu);
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
            v14 = "nw_browse_result_get_interfaces_count";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v5, v8, "%{public}s called with null result, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_22;
        }

        if (v9)
        {
          *buf = 136446210;
          v14 = "nw_browse_result_get_interfaces_count";
          _os_log_impl(&dword_181A37000, v5, v8, "%{public}s called with null result, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v5 = __nwlog_obj();
        v10 = type;
        if (os_log_type_enabled(v5, type))
        {
          *buf = 136446210;
          v14 = "nw_browse_result_get_interfaces_count";
          _os_log_impl(&dword_181A37000, v5, v10, "%{public}s called with null result, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_22:
    if (v4)
    {
      free(v4);
    }

    return 0;
  }

  isa = result[2].isa;
  if (!isa)
  {
    return 0;
  }

  return _nw_array_get_count(isa);
}

nw_parameters_t nw_parameters_create_secure_udp(nw_parameters_configure_protocol_block_t configure_dtls, nw_parameters_configure_protocol_block_t configure_udp)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = configure_dtls;
  v4 = configure_udp;
  v5 = v4;
  if (!v3)
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    v27 = "nw_parameters_create_secure_udp";
    v13 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (!__nwlog_fault(v13, &type, &v24))
    {
      goto LABEL_51;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_50;
      }

      *buf = 136446210;
      v27 = "nw_parameters_create_secure_udp";
      v16 = "%{public}s called with null configure_dtls";
LABEL_49:
      _os_log_impl(&dword_181A37000, v14, v15, v16, buf, 0xCu);
      goto LABEL_50;
    }

    if (v24 != 1)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v27 = "nw_parameters_create_secure_udp";
        v16 = "%{public}s called with null configure_dtls, backtrace limit exceeded";
        goto LABEL_49;
      }

      goto LABEL_50;
    }

    backtrace_string = __nw_create_backtrace_string();
    v14 = __nwlog_obj();
    v15 = type;
    v20 = os_log_type_enabled(v14, type);
    if (!backtrace_string)
    {
      if (v20)
      {
        *buf = 136446210;
        v27 = "nw_parameters_create_secure_udp";
        v16 = "%{public}s called with null configure_dtls, no backtrace";
        goto LABEL_49;
      }

      goto LABEL_50;
    }

    if (!v20)
    {
      goto LABEL_36;
    }

    *buf = 136446466;
    v27 = "nw_parameters_create_secure_udp";
    v28 = 2082;
    v29 = backtrace_string;
    v21 = "%{public}s called with null configure_dtls, dumping backtrace:%{public}s";
LABEL_35:
    _os_log_impl(&dword_181A37000, v14, v15, v21, buf, 0x16u);
LABEL_36:

    free(backtrace_string);
    goto LABEL_51;
  }

  if (!v4)
  {
    v17 = __nwlog_obj();
    *buf = 136446210;
    v27 = "nw_parameters_create_secure_udp";
    v13 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (!__nwlog_fault(v13, &type, &v24))
    {
      goto LABEL_51;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_50;
      }

      *buf = 136446210;
      v27 = "nw_parameters_create_secure_udp";
      v16 = "%{public}s called with null configure_udp";
      goto LABEL_49;
    }

    if (v24 != 1)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v27 = "nw_parameters_create_secure_udp";
        v16 = "%{public}s called with null configure_udp, backtrace limit exceeded";
        goto LABEL_49;
      }

      goto LABEL_50;
    }

    backtrace_string = __nw_create_backtrace_string();
    v14 = __nwlog_obj();
    v15 = type;
    v22 = os_log_type_enabled(v14, type);
    if (!backtrace_string)
    {
      if (v22)
      {
        *buf = 136446210;
        v27 = "nw_parameters_create_secure_udp";
        v16 = "%{public}s called with null configure_udp, no backtrace";
        goto LABEL_49;
      }

      goto LABEL_50;
    }

    if (!v22)
    {
      goto LABEL_36;
    }

    *buf = 136446466;
    v27 = "nw_parameters_create_secure_udp";
    v28 = 2082;
    v29 = backtrace_string;
    v21 = "%{public}s called with null configure_udp, dumping backtrace:%{public}s";
    goto LABEL_35;
  }

  if (v4 != &__block_literal_global_19409)
  {
    v6 = _Block_copy(v3);
    v7 = v6;
    if (v3 == &__block_literal_global_19409 || v3 == &__block_literal_global_2)
    {

      v7 = 0;
    }

    v8 = _Block_copy(v5);
    v9 = v8;
    if (v5 == &__block_literal_global_2)
    {

      v9 = 0;
    }

    secure_udp = _nw_parameters_create_secure_udp(v3 == &__block_literal_global_19409, v7, v9);

    goto LABEL_10;
  }

  v18 = __nwlog_obj();
  *buf = 136446210;
  v27 = "nw_parameters_create_secure_udp";
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
        *buf = 136446210;
        v27 = "nw_parameters_create_secure_udp";
        v16 = "%{public}s called with null (configure_udp != (_nw_parameters_configure_protocol_disable))";
        goto LABEL_49;
      }

LABEL_50:

      goto LABEL_51;
    }

    if (v24 != 1)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v27 = "nw_parameters_create_secure_udp";
        v16 = "%{public}s called with null (configure_udp != (_nw_parameters_configure_protocol_disable)), backtrace limit exceeded";
        goto LABEL_49;
      }

      goto LABEL_50;
    }

    backtrace_string = __nw_create_backtrace_string();
    v14 = __nwlog_obj();
    v15 = type;
    v23 = os_log_type_enabled(v14, type);
    if (!backtrace_string)
    {
      if (v23)
      {
        *buf = 136446210;
        v27 = "nw_parameters_create_secure_udp";
        v16 = "%{public}s called with null (configure_udp != (_nw_parameters_configure_protocol_disable)), no backtrace";
        goto LABEL_49;
      }

      goto LABEL_50;
    }

    if (!v23)
    {
      goto LABEL_36;
    }

    *buf = 136446466;
    v27 = "nw_parameters_create_secure_udp";
    v28 = 2082;
    v29 = backtrace_string;
    v21 = "%{public}s called with null (configure_udp != (_nw_parameters_configure_protocol_disable)), dumping backtrace:%{public}s";
    goto LABEL_35;
  }

LABEL_51:
  if (v13)
  {
    free(v13);
  }

  secure_udp = 0;
LABEL_10:

  return secure_udp;
}

id _nw_parameters_create_secure_udp(char a1, void *aBlock, const void *a3)
{
  v5 = _Block_copy(aBlock);
  v6 = _Block_copy(a3);
  v7 = v6;
  if (!v5)
  {
    v8 = 0;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  v5 = sub_181AACB1C;
  if (!v7)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v7 = sub_181AACB1C;
LABEL_6:
  v10 = sub_181E74144(a1, v5, v8, v7, v9);
  sub_181A554F4(v7);
  sub_181A554F4(v5);
  return v10;
}

id sub_181E74144(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((a1 & 1) == 0)
  {
    if (a2)
    {
      v10 = swift_allocObject();
      *(v10 + 16) = a2;
      *(v10 + 24) = a3;
      sub_181AA39C0(a2);

      v7 = sub_181AA9530;
      if (a4)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v7 = 1;
      if (a4)
      {
        goto LABEL_6;
      }
    }

LABEL_8:
    v12 = 0;
    goto LABEL_9;
  }

  v7 = 0;
  if (!a4)
  {
    goto LABEL_8;
  }

LABEL_6:
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  *(v11 + 24) = a5;

  v12 = sub_181AA9530;
LABEL_9:
  sub_181AA39C0(a4);
  sub_181E742A8(v7, v12, v15);
  v13 = sub_1821F2D80();
  sub_181A554F4(v12);
  sub_181C6B000(v7);
  memcpy(__dst, v15, sizeof(__dst));
  sub_181F48214(__dst);
  return v13;
}

void *sub_181E742A8@<X0>(void (*a1)(uint64_t)@<X0>, void (*a2)(uint64_t)@<X2>, void *a3@<X8>)
{
  *__dst = 0;
  *&__dst[8] = 0;
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
  v4 = v38;
  *&__dst[352] = v39;
  *&__dst[368] = v40;
  *&__dst[384] = v41;
  v43[8] = *&__dst[256];
  v43[9] = *&__dst[272];
  v43[10] = *&__dst[288];
  v43[4] = *&__dst[192];
  v43[5] = *&__dst[208];
  v43[6] = *&__dst[224];
  v43[7] = *&__dst[240];
  v43[0] = *&__dst[128];
  v43[1] = *&__dst[144];
  v43[2] = *&__dst[160];
  v43[3] = *&__dst[176];
  sub_181A41E7C(v43);
  sub_181D9D680(0, 0xF000000000000000);
  memcpy(__dst, __src, 0x158uLL);
  *&__dst[344] = v4;
  if (a1)
  {
    if (nw_protocol_copy_tls_definition())
    {
      v5 = swift_unknownObjectRetain();
      v6 = v5;
    }

    else
    {
      v5 = nw_protocol_copy_tls_definition();
      v6 = 0;
    }

    sub_181AA82B4(__src, v5, 0, 0, 0, 255, v6);
    v35[0] = *__src;
    v35[1] = *&__src[16];
    v35[2] = *&__src[32];
    v35[3] = *&__src[48];
    v36 = *&__src[64];
    v7 = *&__src[8];
    v8 = *&__src[16];
    v9 = __src[24];
    v10 = *&__src[32];
    v11 = *__src;
    sub_181F49A24(*&__src[8], *&__src[16], __src[24]);
    v12 = sub_181AA90F0(v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A3A0);
    swift_allocObject();
    v13 = sub_181AA94EC(v11, v7, v8, v9, v12);
    sub_181F49A88(v35, &unk_1EA838740);
    if (a1 != 1)
    {

      a1(v13);
      sub_181C6B000(a1);
    }

    v33 = v13;
    v34 = sub_181AA8428(&qword_1ED40FD40, &qword_1EA83A3A0) | 0x4000000000000000;
    swift_retain_n();
    sub_181B2A5BC(&v33);
    sub_181AAD084(v33, v34);
  }

  if (qword_1ED410028 != -1)
  {
    swift_once();
  }

  v15 = *(&xmmword_1ED40FF68 + 1);
  v14 = unk_1ED40FF78;
  v16 = byte_1ED40FF80;
  v17 = xmmword_1ED40FF68;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838710);
  swift_allocObject();
  v18 = sub_181CFD414(v17, v15, v14, v16, 0);
  sub_181F49A24(v15, v14, v16);
  if (a2)
  {
    sub_181AA39C0(a2);
    a2(v18);
    sub_181A554F4(a2);
  }

  v19 = *(v4 + 32);
  v20 = *(v4 + 40);
  *(v4 + 32) = v18;
  *(v4 + 40) = 0;

  sub_181A5301C(v19, v20);
  ProtocolStack.transport.getter(__src);
  v21 = *&__src[8];
  if ((~*&__src[8] & 0xF000000000000007) != 0)
  {
    v29 = *__src;

    sub_181A554F4(a2);
    sub_181C6B000(a1);
    sub_181A53008(v29, v21);
  }

  else
  {
    v22 = *(&xmmword_1ED40FF68 + 1);
    v23 = unk_1ED40FF78;
    v24 = byte_1ED40FF80;
    v25 = xmmword_1ED40FF68;

    sub_181A554F4(a2);
    sub_181C6B000(a1);
    swift_allocObject();
    v26 = sub_181CFD414(v25, v22, v23, v24, 0);
    v27 = *(v4 + 32);
    v28 = *(v4 + 40);
    *(v4 + 32) = v26;
    *(v4 + 40) = 0;
    sub_181F49A24(v22, v23, v24);
    sub_181A5301C(v27, v28);
  }

  __dst[113] = 1;
  return memcpy(a3, __dst, 0x188uLL);
}

uint64_t sub_181E74708(char a1, uint64_t a2)
{
  v3 = *v2;
  v4 = (*v2 + 16);
  v5 = *v4;
  if (*v4 >= a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8386F0);
    v8 = swift_allocObject();
    v11 = *(v3 + 24);
    *(v8 + 16) = v5;
    *(v8 + 24) = v11;
    if (v11 >= 1)
    {
      sub_1820E55D4(v8 + 16, v8 + 40, v4, v3 + 40);
    }
  }

  else
  {
    sub_182AD2398();
    if (a1)
    {
      v7 = *(v3 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8386F0);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 40;
      if (v9 < 40)
      {
        v10 = v9 - 9;
      }

      *(v8 + 16) = v10 >> 5;
      *(v8 + 24) = v7;
      *(v8 + 32) = 0;
      if (v7 >= 1)
      {
        sub_181F46DE0(v8 + 16, (v8 + 40), v4, (v3 + 40));
        *(v3 + 24) = 0;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8386F0);
      v8 = swift_allocObject();
      v12 = _swift_stdlib_malloc_size(v8);
      v13 = v12 - 40;
      if (v12 < 40)
      {
        v13 = v12 - 9;
      }

      v14 = *(v3 + 24);
      *(v8 + 16) = v13 >> 5;
      *(v8 + 24) = v14;
      *(v8 + 32) = 0;
      if (v14 >= 1)
      {
        sub_181F47710(v8 + 16, v8 + 40, v4, v3 + 40);
      }
    }
  }

  *v2 = v8;
  return result;
}

void *sub_181E748B4(void *result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v7 = result[1];
  v6 = result[2];
  v11 = __OFADD__(v6, v7);
  v8 = v6 + v7;
  if (!v11)
  {
    if ((v7 & 0x8000000000000000) == 0)
    {
      v11 = __OFSUB__(v8, *result);
      if (v8 < *result || (v8 -= *result, !v11))
      {
LABEL_9:
        v12 = (a2 + 32 * v8);
        *v12 = a3;
        v12[1] = a4;
        v12[2] = a5;
        v12[3] = a6;
        v13 = result[1];
        v11 = __OFADD__(v13, 1);
        v14 = v13 + 1;
        if (!v11)
        {
          result[1] = v14;
          sub_181AA5C1C(a3, a4);
          return sub_181ADC1E0(a5, a6);
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v8 < 0)
    {
      v11 = __OFADD__(v8, *result);
      v8 += *result;
      if (v11)
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

unint64_t sub_181E74980()
{
  result = qword_1EA836F00;
  if (!qword_1EA836F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836F00);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NWProtocolWebSocket.Opcode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_181E74A64(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA838C80);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_181E74AD0()
{
  v1 = *v0;
  v2 = 0x55737365636F7270;
  v3 = 6580592;
  if (v1 != 4)
  {
    v3 = 6580597;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000012;
  }

  v4 = 0xD000000000000014;
  if (v1 != 1)
  {
    v4 = 0x55616E6F73726570;
  }

  if (*v0)
  {
    v2 = v4;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_181E74B8C()
{
  result = qword_1EA836E50;
  if (!qword_1EA836E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836E50);
  }

  return result;
}

uint64_t sub_181E74C04()
{
  v1 = *v0;
  v2 = 0x7367616C66;
  v3 = 0x6B6361626C6C6166;
  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0x6C616E7265746E69;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7475626972747461;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_181E74CBC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B8A8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v14 - v7;
  v9 = *(v3 + 5);
  v18 = *(v3 + 4);
  v20 = *(v3 + 48);
  v10 = *(v3 + 7);
  v15 = v9;
  v16 = v10;
  v17 = *(v3 + 64);
  v14[3] = *(v3 + 17);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_181E74980();
  sub_182AD4638();
  v19 = *v3;
  v21 = 0;
  sub_181E759F8();
  sub_182AD4118();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v11 = v20;
  v12 = v18;
  v19 = v3[1];
  v21 = 1;
  sub_182AD4118();
  if ((v11 & 1) == 0)
  {
    *&v19 = v12;
    *(&v19 + 1) = v15;
    v21 = 2;
    sub_182AD4118();
  }

  if ((v17 & 1) == 0)
  {
    LOBYTE(v19) = 3;
    sub_182AD4188();
  }

  LOBYTE(v19) = 4;
  sub_182AD4138();
  LOBYTE(v19) = 5;
  sub_182AD4178();
  return (*(v6 + 8))(v8, v5);
}

uint64_t storeEnumTagSinglePayload for NWProtocolWebSocket.Opcode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void Parameters.encode(to:)(void *a1)
{
  v55 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v55);
  v48 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v49 = &v46 - v5;
  v54 = type metadata accessor for URLEndpoint();
  MEMORY[0x1EEE9AC00](v54);
  v46 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v47 = &v46 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8385C0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = *v1;
  v58 = v1[1];
  v59 = v11;
  v60 = *(v1 + 16);
  v12 = *(v1 + 44);
  v50 = *(v1 + 36);
  v51 = v12;
  v13 = *(v1 + 60);
  v52 = *(v1 + 52);
  v53 = v13;
  v93 = *(v1 + 68);
  LODWORD(v63) = *(v1 + 31);
  v14 = *(v1 + 17);
  v90 = *(v1 + 16);
  v91 = v14;
  v92 = *(v1 + 18);
  v15 = *(v1 + 13);
  v86 = *(v1 + 12);
  v87 = v15;
  v16 = *(v1 + 15);
  v88 = *(v1 + 14);
  v89 = v16;
  v17 = *(v1 + 9);
  v82 = *(v1 + 8);
  v83 = v17;
  v18 = *(v1 + 11);
  v84 = *(v1 + 10);
  v85 = v18;
  v19 = v1[38];
  v61 = v1[39];
  v62 = v19;
  v20 = v1[46];
  v21 = v1[47];
  v56 = v1[40];
  v57 = v20;
  v22 = a1[3];
  v23 = a1;
  v25 = &v46 - v24;
  __swift_project_boxed_opaque_existential_1(v23, v22);
  sub_181E75F5C();
  v26 = v9;
  sub_182AD4638();
  LOBYTE(v71) = 0;
  v27 = v64;
  sub_182AD4178();
  if (v27)
  {
    goto LABEL_3;
  }

  v28 = v61;
  v64 = v21;
  LOBYTE(v71) = 8;
  sub_182AD4178();
  v79 = v90;
  v80 = v91;
  v81 = v92;
  v75 = v86;
  v76 = v87;
  v77 = v88;
  v78 = v89;
  v71 = v82;
  v72 = v83;
  v73 = v84;
  v74 = v85;
  v95 = 1;
  sub_181A41E20(&v82, v70);
  sub_181E76100();
  sub_182AD4118();
  v70[8] = v79;
  v70[9] = v80;
  v70[10] = v81;
  v70[4] = v75;
  v70[5] = v76;
  v70[6] = v77;
  v70[7] = v78;
  v70[0] = v71;
  v70[1] = v72;
  v70[2] = v73;
  v70[3] = v74;
  sub_181A41E7C(v70);
  if (v28)
  {
    LOBYTE(v66) = 2;
    sub_182AD40E8();
  }

  if ((v60 & 1) == 0)
  {
    v66 = v59;
    v67 = v58;
    v65 = 3;
    sub_181E759F8();
    sub_182AD4118();
  }

  v29 = v64;
  v30 = v93;
  v31 = v57;
  if (v56)
  {
    v66 = v56;
    v65 = 4;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8385D0);
    sub_181E75EB4(&qword_1EA83B810, sub_181E759F8);
    sub_182AD4118();

    v29 = v64;
    v30 = v93;
    v31 = v57;
  }

  if (v31)
  {
    v32 = OBJC_IVAR____TtC7Network8Endpoint_type;
    v33 = v31;
    swift_beginAccess();
    v34 = v33 + v32;
    v35 = v49;
    sub_181ACC828(v34, v49, type metadata accessor for Endpoint.EndpointType);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      v36 = v47;
      sub_181B2BEE4(v35, v47);
      v37 = sub_182AD1F98();
      v38 = CFURLGetBytes(v37, 0, 0);
      v63 = v9;
      MEMORY[0x1EEE9AC00](v38);
      *(&v46 - 2) = v37;
      sub_182AD30D8();

      v26 = v63;
      LOBYTE(v66) = 5;
      sub_182AD40E8();
      sub_181AB7264(v36, type metadata accessor for URLEndpoint);
    }

    else
    {
      sub_181AB7264(v35, type metadata accessor for Endpoint.EndpointType);
    }

    v29 = v64;
    v30 = v93;
  }

  if ((v30 & 1) == 0)
  {
    v66 = v50;
    v67 = v51;
    v68 = v52;
    v69 = v53;
    v94 = 6;
    sub_181F483C4();
    sub_182AD4118();
    v29 = v64;
  }

  if (!v29)
  {
LABEL_3:
    (*(v10 + 8))(v25, v26);
  }

  else
  {
    v39 = OBJC_IVAR____TtC7Network8Endpoint_type;
    v40 = v29;
    swift_beginAccess();
    v41 = v40 + v39;
    v42 = v48;
    sub_181ACC828(v41, v48, type metadata accessor for Endpoint.EndpointType);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      v43 = v46;
      sub_181B2BEE4(v42, v46);
      v44 = sub_182AD1F98();
      v45 = CFURLGetBytes(v44, 0, 0);
      v64 = &v46;
      MEMORY[0x1EEE9AC00](v45);
      *(&v46 - 2) = v44;
      sub_182AD30D8();

      v94 = 7;
      sub_182AD40E8();

      sub_181AB7264(v43, type metadata accessor for URLEndpoint);
      (*(v10 + 8))(v25, v26);
    }

    else
    {
      (*(v10 + 8))(v25, v26);
      sub_181AB7264(v42, type metadata accessor for Endpoint.EndpointType);
    }
  }
}

unint64_t sub_181E759F8()
{
  result = qword_1EA836E60;
  if (!qword_1EA836E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836E60);
  }

  return result;
}

__n128 __swift_memcpy16_1(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t SystemUUID.encode(to:)(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_182AD4618();
  v3 = *v1;
  *&v3 = sub_181AC1C5C(&v3, v4);
  __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838C80);
  sub_181E74A64(&unk_1EA836E20);
  sub_182AD42C8();

  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t __swift_memcpy6_2(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_181E75BB4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83B8C0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_181E75DB0();
  sub_182AD4638();
  v13 = 0;
  sub_182AD4158();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v12 = 4;
  sub_182AD4168();
  v11 = 1;
  sub_182AD4158();
  v10 = 2;
  sub_182AD4158();
  v9 = 3;
  sub_182AD4158();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_181E75DB0()
{
  result = qword_1EA836EE8;
  if (!qword_1EA836EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836EE8);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for ECNState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_181E75EB4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA8385D0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_181E75F5C()
{
  result = qword_1EA836F28;
  if (!qword_1EA836F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836F28);
  }

  return result;
}

uint64_t sub_181E75FB0(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v4 = 0x7367616C66;
    v5 = 0xD000000000000011;
    if (a1 != 2)
    {
      v5 = 0x5555746E65726170;
    }

    if (a1)
    {
      v4 = 0x6172615068746170;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0xD000000000000015;
    if (a1 != 7)
    {
      v1 = 0x6C616E7265746E69;
    }

    if (a1 == 6)
    {
      v1 = 0xD000000000000013;
    }

    v2 = 0xD000000000000010;
    if (a1 != 4)
    {
      v2 = 0x6E697274536C7275;
    }

    if (a1 <= 5u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

unint64_t sub_181E76100()
{
  result = qword_1EA836E30;
  if (!qword_1EA836E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836E30);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for Parameters.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Parameters.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

void sub_181E76294(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B800);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v35 - v8;
  v3.i32[0] = *(v4 + 22);
  v42 = *(v4 + 46);
  v10 = *(v4 + 12);
  v12 = *(v4 + 14);
  v11 = *(v4 + 15);
  v37 = *(v4 + 13);
  v38 = v12;
  v40 = v11;
  v41 = v10;
  v39 = *(v4 + 16);
  v13 = *(v4 + 21);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_181E76D2C();
  sub_182AD4638();
  *&v43 = *(v4 + 76);
  DWORD2(v43) = *(v4 + 21);
  v47 = 0;
  sub_181E76D80();
  sub_182AD4118();
  if (v2)
  {
    (*(v7 + 8))(v9, v6);
    return;
  }

  v14 = v42;
  v15 = v7;
  v36 = v13;
  v16 = v4[3];
  v45 = v4[2];
  *v46 = v16;
  *&v46[12] = *(v4 + 60);
  v17 = v4[1];
  v43 = *v4;
  v44 = v17;
  v47 = 1;
  sub_181E77434();
  sub_182AD4118();
  v18 = v6;
  v19 = vmovl_u8(v3).u64[0];
  LODWORD(v43) = vuzp1_s8(v19, v19).u32[0];
  WORD2(v43) = v14;
  v47 = 2;
  sub_181E74B8C();
  sub_182AD4118();
  v20 = v15;
  v21 = v41;
  if (v41)
  {
    if (*(v41 + 16))
    {
      *&v43 = *(v41 + 16);
      v47 = 3;
      sub_1822707E4();

      sub_182AD4118();
    }

    if (*(v21 + 24))
    {
      *&v43 = *(v21 + 24);
      v47 = 4;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B860);
      sub_1822708BC();
      sub_182AD4118();
    }

    if (*(v21 + 32))
    {
      *&v43 = *(v21 + 32);
      v47 = 5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B848);
      sub_182270838();
      sub_182AD4118();
    }

    if (*(v21 + 40))
    {
      *&v43 = *(v21 + 40);
      v47 = 6;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B848);
      sub_182270838();
      sub_182AD4118();
    }

    if (*(v21 + 48))
    {
      *&v43 = *(v21 + 48);
      v47 = 7;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B830);
      sub_182270760();
      sub_182AD4118();
    }

    if (*(v21 + 56))
    {
      *&v43 = *(v21 + 56);
      v47 = 11;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B818);
      sub_182270688();
      sub_182AD4118();
    }

    if (*(v21 + 64))
    {
      *&v43 = *(v21 + 64);
      v47 = 12;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8385D0);
      sub_182270604();
      sub_182AD4118();
    }

    if (*(v21 + 72))
    {
      *&v43 = *(v21 + 72);
      v47 = 13;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B818);
      sub_182270688();
      sub_182AD4118();
    }

    if (*(v21 + 80))
    {
      *&v43 = *(v21 + 80);
      v47 = 14;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8385D0);
      sub_182270604();
      sub_182AD4118();
    }

    if (*(v21 + 88))
    {
      *&v43 = *(v21 + 88);
      v47 = 15;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B818);
      sub_182270688();
      sub_182AD4118();
    }

    v22 = *(v21 + 96);
    *&v43 = v22;
    if (*(v21 + 152))
    {
    }

    else
    {
      v24 = *(v21 + 136);
      v23 = *(v21 + 144);
      if (v22)
      {
        v25 = v22;
      }

      else
      {
        v25 = *sub_182AD2388();
        *&v43 = v25;
      }

      v26 = *(v25 + 24);
      v27 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        return;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (*(v25 + 16) < v27 || (v29 = v25, (isUniquelyReferenced_nonNull_native & 1) == 0))
      {
        sub_181B8477C(isUniquelyReferenced_nonNull_native, v27);
        v29 = v43;
      }

      sub_181B855B4((v29 + 16), v29 + 40, v24, v23);
      v22 = v43;
    }

    if (v22)
    {
      *&v43 = v22;
      v47 = 16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8385D0);
      sub_182270604();
      sub_182AD4118();
    }

    v30 = v41;
    if (*(v41 + 104))
    {
      *&v43 = *(v41 + 104);
      v47 = 17;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B818);
      sub_182270688();
      sub_182AD4118();

      v30 = v41;
    }

    if (*(v30 + 112))
    {
      *&v43 = *(v30 + 112);
      v47 = 18;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8385D0);
      sub_182270604();
      sub_182AD4118();
    }

    if ((*(v41 + 152) & 1) == 0)
    {
      v32 = *(v41 + 136);
      v31 = *(v41 + 144);
      *&v43 = v32;
      *(&v43 + 1) = v31;
      v47 = 19;
      sub_181E759F8();
      sub_182AD4118();
    }

    v20 = v15;
  }

  v33 = v36;
  if (v38)
  {
    LOBYTE(v43) = 8;
    sub_182AD40E8();
  }

  if (v39)
  {
    LOBYTE(v43) = 9;
    sub_182AD40E8();
  }

  if (v33)
  {
    *&v43 = v33;
    v47 = 10;
    type metadata accessor for Endpoint(0);
    sub_181E7EC38(&qword_1EA83B808, 255, type metadata accessor for Endpoint);
    v34 = v33;
    sub_182AD4118();
    (*(v20 + 8))(v9, v18);
  }

  else
  {
    (*(v20 + 8))(v9, v18);
  }
}

unint64_t sub_181E76D2C()
{
  result = qword_1EA836EA8;
  if (!qword_1EA836EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836EA8);
  }

  return result;
}

unint64_t sub_181E76D80()
{
  result = qword_1EA836E40;
  if (!qword_1EA836E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836E40);
  }

  return result;
}

uint64_t __swift_memcpy12_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t storeEnumTagSinglePayload for PathParameters.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PathParameters.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_181E76F28(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B890);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - v6;
  v22 = *v1;
  v21 = *(v1 + 4);
  v20 = *(v1 + 5);
  v18 = *(v1 + 6);
  v19 = *(v1 + 8);
  v17 = *(v1 + 9);
  v8 = a1[3];
  v9 = a1;
  v11 = v10;
  __swift_project_boxed_opaque_existential_1(v9, v8);
  sub_181E772C0();
  sub_182AD4638();
  v30 = 0;
  sub_182AD4158();
  if (!v2)
  {
    v13 = v20;
    v12 = v21;
    v14 = v19;
    v29 = 1;
    sub_182AD4178();
    if (v12 <= 4)
    {
      v23 = 2;
      sub_182AD4108();
    }

    if (v13 <= 4)
    {
      v24 = 3;
      sub_182AD4108();
    }

    v28 = 7;
    sub_182AD4158();
    v27 = 6;
    sub_182AD4158();
    if (v14 <= 2 || (v15 = v17, v14 == 3) || v14 == 4)
    {
      v25 = 4;
      sub_182AD4108();
      v15 = v17;
    }

    if (v15 <= 4)
    {
      v26 = 5;
      sub_182AD4108();
    }
  }

  return (*(v5 + 8))(v7, v11);
}

unint64_t sub_181E772C0()
{
  result = qword_1EA836EC8;
  if (!qword_1EA836EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836EC8);
  }

  return result;
}

uint64_t sub_181E77314()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0x6C616E7265746E69;
    if (v1 == 6)
    {
      v5 = 0xD000000000000013;
    }

    v6 = 0xD00000000000001FLL;
    if (v1 == 4)
    {
      v6 = 0xD00000000000001CLL;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x7367616C66;
    v3 = 0xD000000000000018;
    if (v1 == 2)
    {
      v3 = 0xD000000000000015;
    }

    if (*v0)
    {
      v2 = 0x4363696666617274;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

unint64_t sub_181E77434()
{
  result = qword_1EA836E58;
  if (!qword_1EA836E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836E58);
  }

  return result;
}

__n128 __swift_memcpy76_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

id nw_connection_copy_tcp_info(void *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v21 = __Block_byref_object_copy__83595;
    v22 = __Block_byref_object_dispose__83596;
    v23 = 0;
    v2 = dispatch_semaphore_create(0);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __nw_connection_copy_tcp_info_block_invoke;
    v14[3] = &unk_1E6A3BE58;
    v17 = buf;
    v15 = v1;
    v16 = v2;
    v3 = v2;
    nw_connection_async_if_needed(v15, v14);
    dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
    v4 = *(*&buf[8] + 40);

    _Block_object_dispose(buf, 8);
    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_connection_copy_tcp_info";
  v7 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v18 = 0;
  if (__nwlog_fault(v7, &type, &v18))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_copy_tcp_info";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (v18 == 1)
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
          *&buf[4] = "nw_connection_copy_tcp_info";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v12)
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_copy_tcp_info";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_copy_tcp_info";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
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

void sub_181E77834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a21, 8);

  _Unwind_Resume(a1);
}

intptr_t __nw_connection_copy_tcp_info_block_invoke(uint64_t a1)
{
  v2 = nw_connection_copy_tcp_info_on_queue(*(a1 + 32));
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1 + 40);

  return dispatch_semaphore_signal(v5);
}

id nw_connection_copy_tcp_info_on_queue(NWConcrete_nw_connection *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v19 = __Block_byref_object_copy__83595;
    v20 = __Block_byref_object_dispose__83596;
    v21 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = ___ZL36nw_connection_copy_tcp_info_on_queueP24NWConcrete_nw_connection_block_invoke;
    v13[3] = &unk_1E6A3D738;
    v14 = v1;
    v15 = buf;
    os_unfair_lock_lock(v2 + 34);
    ___ZL36nw_connection_copy_tcp_info_on_queueP24NWConcrete_nw_connection_block_invoke(v13);
    os_unfair_lock_unlock(v2 + 34);
    v3 = *(*&buf[8] + 40);

    _Block_object_dispose(buf, 8);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_connection_copy_tcp_info_on_queue";
  v6 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (__nwlog_fault(v6, &type, &v16))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_copy_tcp_info_on_queue";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (v16 == 1)
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
          *&buf[4] = "nw_connection_copy_tcp_info_on_queue";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_copy_tcp_info_on_queue";
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
        *&buf[4] = "nw_connection_copy_tcp_info_on_queue";
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

void ___ZL36nw_connection_copy_tcp_info_on_queueP24NWConcrete_nw_connection_block_invoke(uint64_t a1)
{
  buf.var100 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2[18])
  {
    v3 = v2;
    v4 = v3[2];

    if (nw_parameters_get_multipath(v4))
    {
      is_multipath = nw_endpoint_handler_is_multipath(*(*(a1 + 32) + 144));

      if (is_multipath)
      {
        v6 = nw_endpoint_handler_copy_multipath_tcp_info(*(*(a1 + 32) + 144));
        v7 = *(*(a1 + 40) + 8);
        v8 = *(v7 + 40);
        *(v7 + 40) = v6;

        return;
      }
    }

    else
    {
    }

    memset(&buf, 0, 424);
    if (!nw_connection_get_tcp_info_for_connected_endpoint_locked(*(a1 + 32), &buf))
    {
      return;
    }

    v12 = nw_endpoint_handler_copy_connected_path(*(*(a1 + 32) + 144));
    v13 = v12;
    if (v12)
    {
      v14 = v12;
      v15 = _nw_path_copy_direct_interface(v14);

      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = xpc_dictionary_create(0, 0, 0);
    v18 = *(*(a1 + 40) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;

    v20 = *(*(*(a1 + 40) + 8) + 40);
    if (v20)
    {
      if (v16)
      {
        name = _nw_interface_get_name(v16);
      }

      else
      {
        name = "unknown";
      }

      xpc_dictionary_set_data(v20, name, &buf, 0x1A8uLL);
      goto LABEL_31;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v22 = gLogObj;
    *v32 = 136446210;
    v33 = "nw_connection_copy_tcp_info_on_queue_block_invoke";
    v23 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (__nwlog_fault(v23, &type, &v30))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v24 = gLogObj;
        v25 = type;
        if (os_log_type_enabled(v24, type))
        {
          *v32 = 136446210;
          v33 = "nw_connection_copy_tcp_info_on_queue_block_invoke";
          _os_log_impl(&dword_181A37000, v24, v25, "%{public}s xpc_dictionary_create failed", v32, 0xCu);
        }
      }

      else if (v30 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v24 = __nwlog_obj();
        v27 = type;
        v28 = os_log_type_enabled(v24, type);
        if (backtrace_string)
        {
          if (v28)
          {
            *v32 = 136446466;
            v33 = "nw_connection_copy_tcp_info_on_queue_block_invoke";
            v34 = 2082;
            v35 = backtrace_string;
            _os_log_impl(&dword_181A37000, v24, v27, "%{public}s xpc_dictionary_create failed, dumping backtrace:%{public}s", v32, 0x16u);
          }

          free(backtrace_string);
          if (!v23)
          {
            goto LABEL_31;
          }

          goto LABEL_28;
        }

        if (v28)
        {
          *v32 = 136446210;
          v33 = "nw_connection_copy_tcp_info_on_queue_block_invoke";
          _os_log_impl(&dword_181A37000, v24, v27, "%{public}s xpc_dictionary_create failed, no backtrace", v32, 0xCu);
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
          *v32 = 136446210;
          v33 = "nw_connection_copy_tcp_info_on_queue_block_invoke";
          _os_log_impl(&dword_181A37000, v24, v29, "%{public}s xpc_dictionary_create failed, backtrace limit exceeded", v32, 0xCu);
        }
      }
    }

    if (!v23)
    {
LABEL_31:

      return;
    }

LABEL_28:
    free(v23);
    goto LABEL_31;
  }

  v9 = v2[2];
  if (v9 && !_nw_parameters_get_logging_disabled(v9))
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v10 = gconnectionLogObj;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = *(*(a1 + 32) + 448);
      *&buf.var0 = 136446466;
      *&buf.var4 = "nw_connection_copy_tcp_info_on_queue_block_invoke";
      LOWORD(buf.var6) = 1024;
      *(&buf.var6 + 2) = v11;
      _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_INFO, "%{public}s [C%u] No parent endpoint handler", &buf.var0, 0x12u);
    }
  }
}

id nw_endpoint_handler_copy_multipath_tcp_info(void *a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    os_unfair_lock_lock(v1 + 28);
    if (v2[29]._os_unfair_lock_opaque != 2)
    {
      v6 = 0;
LABEL_23:
      os_unfair_lock_unlock(v2 + 28);
      goto LABEL_24;
    }

    v3 = *&v2[66]._os_unfair_lock_opaque;
    if (v3)
    {
      v4 = xpc_dictionary_create(0, 0, 0);
      if (v4)
      {
        if (nw_endpoint_flow_is_multipath(v3))
        {
          v5 = nw_endpoint_flow_copy_connected_socket_wrapper(v3);
          if (v5)
          {
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3221225472;
            *&buf[16] = ___Z40nw_endpoint_flow_copy_multipath_tcp_infoP27NWConcrete_nw_endpoint_flow_block_invoke;
            v36 = &unk_1E6A3C088;
            v37 = v4;
            nw_fd_wrapper_get_fd(v5, buf);
          }

          v6 = v4;

          goto LABEL_21;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_flow_copy_multipath_tcp_info";
          _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_ERROR, "%{public}s Called on non-Multipath connection", buf, 0xCu);
        }

LABEL_20:
        v6 = 0;
LABEL_21:

LABEL_22:
        goto LABEL_23;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      *buf = 136446210;
      *&buf[4] = "nw_endpoint_flow_copy_multipath_tcp_info";
      v8 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v33 = 0;
      if (__nwlog_fault(v8, &type, &v33))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v9 = gLogObj;
          v10 = type;
          if (os_log_type_enabled(v9, type))
          {
            *buf = 136446210;
            *&buf[4] = "nw_endpoint_flow_copy_multipath_tcp_info";
            _os_log_impl(&dword_181A37000, v9, v10, "%{public}s xpc_dictionary_create failed", buf, 0xCu);
          }
        }

        else if (v33 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v9 = gLogObj;
          v14 = type;
          v15 = os_log_type_enabled(v9, type);
          if (backtrace_string)
          {
            if (v15)
            {
              *buf = 136446466;
              *&buf[4] = "nw_endpoint_flow_copy_multipath_tcp_info";
              *&buf[12] = 2082;
              *&buf[14] = backtrace_string;
              _os_log_impl(&dword_181A37000, v9, v14, "%{public}s xpc_dictionary_create failed, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(backtrace_string);
            if (!v8)
            {
              goto LABEL_20;
            }

            goto LABEL_16;
          }

          if (v15)
          {
            *buf = 136446210;
            *&buf[4] = "nw_endpoint_flow_copy_multipath_tcp_info";
            _os_log_impl(&dword_181A37000, v9, v14, "%{public}s xpc_dictionary_create failed, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v9 = gLogObj;
          v16 = type;
          if (os_log_type_enabled(v9, type))
          {
            *buf = 136446210;
            *&buf[4] = "nw_endpoint_flow_copy_multipath_tcp_info";
            _os_log_impl(&dword_181A37000, v9, v16, "%{public}s xpc_dictionary_create failed, backtrace limit exceeded", buf, 0xCu);
          }
        }
      }

      if (!v8)
      {
        goto LABEL_20;
      }

LABEL_16:
      free(v8);
      goto LABEL_20;
    }

    v21 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_endpoint_flow_copy_multipath_tcp_info";
    v22 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v33 = 0;
    if (__nwlog_fault(v22, &type, &v33))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v23 = __nwlog_obj();
        v24 = type;
        if (os_log_type_enabled(v23, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_flow_copy_multipath_tcp_info";
          _os_log_impl(&dword_181A37000, v23, v24, "%{public}s called with null endpoint_flow", buf, 0xCu);
        }
      }

      else if (v33 == 1)
      {
        v29 = __nw_create_backtrace_string();
        v23 = __nwlog_obj();
        v30 = type;
        v31 = os_log_type_enabled(v23, type);
        if (v29)
        {
          if (v31)
          {
            *buf = 136446466;
            *&buf[4] = "nw_endpoint_flow_copy_multipath_tcp_info";
            *&buf[12] = 2082;
            *&buf[14] = v29;
            _os_log_impl(&dword_181A37000, v23, v30, "%{public}s called with null endpoint_flow, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v29);
          goto LABEL_72;
        }

        if (v31)
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_flow_copy_multipath_tcp_info";
          _os_log_impl(&dword_181A37000, v23, v30, "%{public}s called with null endpoint_flow, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v23 = __nwlog_obj();
        v32 = type;
        if (os_log_type_enabled(v23, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_flow_copy_multipath_tcp_info";
          _os_log_impl(&dword_181A37000, v23, v32, "%{public}s called with null endpoint_flow, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_72:
    if (v22)
    {
      free(v22);
    }

    v6 = 0;
    goto LABEL_22;
  }

  v17 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_endpoint_handler_copy_multipath_tcp_info";
  v18 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v33 = 0;
  if (__nwlog_fault(v18, &type, &v33))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v19 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_endpoint_handler_copy_multipath_tcp_info";
        _os_log_impl(&dword_181A37000, v19, v20, "%{public}s called with null handler", buf, 0xCu);
      }
    }

    else if (v33 == 1)
    {
      v25 = __nw_create_backtrace_string();
      v19 = __nwlog_obj();
      v26 = type;
      v27 = os_log_type_enabled(v19, type);
      if (v25)
      {
        if (v27)
        {
          *buf = 136446466;
          *&buf[4] = "nw_endpoint_handler_copy_multipath_tcp_info";
          *&buf[12] = 2082;
          *&buf[14] = v25;
          _os_log_impl(&dword_181A37000, v19, v26, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v25);
        goto LABEL_66;
      }

      if (v27)
      {
        *buf = 136446210;
        *&buf[4] = "nw_endpoint_handler_copy_multipath_tcp_info";
        _os_log_impl(&dword_181A37000, v19, v26, "%{public}s called with null handler, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v19 = __nwlog_obj();
      v28 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_endpoint_handler_copy_multipath_tcp_info";
        _os_log_impl(&dword_181A37000, v19, v28, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_66:
  if (v18)
  {
    free(v18);
  }

  v6 = 0;
LABEL_24:

  return v6;
}

uint64_t ___Z40nw_endpoint_flow_copy_multipath_tcp_infoP27NWConcrete_nw_endpoint_flow_block_invoke(uint64_t a1, int a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v28 = 0;
  if (!copymptcpinfo(a2, &v28))
  {
    v3 = v28;
    if (*(v28 + 4))
    {
      v4 = 0;
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      while (1)
      {
        v6 = *(v3[1] + 8 * v4);
        if (!v6)
        {
          goto LABEL_6;
        }

        v7 = *(v6 + 32);
        *key = 0;
        v36 = 0;
        v37 = 0;
        v8 = v7[15];
        if (!v8 || if_indextoname(v8, key))
        {
          xpc_dictionary_set_data(*(a1 + 32), key, v7, 0x1A8uLL);
          goto LABEL_5;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = v7[15];
          *buf = 136446466;
          v30 = "nw_endpoint_flow_copy_multipath_tcp_info_block_invoke";
          v31 = 1024;
          v32 = v10;
          _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_ERROR, "%{public}s if_indextoname failed for outif: %d", buf, 0x12u);
        }

        v11 = **(StatusReg + 8);
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v12 = gLogObj;
        v13 = v12;
        if (v11 == 6)
        {
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            v30 = "nw_endpoint_flow_copy_multipath_tcp_info_block_invoke";
            v31 = 1024;
            v32 = 6;
            _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_ERROR, "%{public}s if_indextoname %{darwin.errno}d", buf, 0x12u);
          }

          goto LABEL_5;
        }

        *buf = 136446466;
        v30 = "nw_endpoint_flow_copy_multipath_tcp_info_block_invoke";
        v31 = 1024;
        v32 = v11;
        v14 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v26 = 0;
        if (__nwlog_fault(v14, &type, &v26))
        {
          break;
        }

LABEL_30:
        if (v14)
        {
          goto LABEL_31;
        }

LABEL_5:
        v3 = v28;
LABEL_6:
        if (++v4 >= *(v3 + 4))
        {
          goto LABEL_36;
        }
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v15 = gLogObj;
        v16 = type;
        if (!os_log_type_enabled(v15, type))
        {
LABEL_29:

          goto LABEL_30;
        }

        *buf = 136446466;
        v30 = "nw_endpoint_flow_copy_multipath_tcp_info_block_invoke";
        v31 = 1024;
        v32 = v11;
        v17 = v15;
        v18 = v16;
        v19 = "%{public}s if_indextoname %{darwin.errno}d";
      }

      else
      {
        if (v26 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v21 = gLogObj;
          v22 = type;
          v23 = os_log_type_enabled(v21, type);
          if (backtrace_string)
          {
            if (v23)
            {
              *buf = 136446722;
              v30 = "nw_endpoint_flow_copy_multipath_tcp_info_block_invoke";
              v31 = 1024;
              v32 = v11;
              v33 = 2082;
              v34 = backtrace_string;
              _os_log_impl(&dword_181A37000, v21, v22, "%{public}s if_indextoname %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
            }

            free(backtrace_string);
            if (!v14)
            {
              goto LABEL_5;
            }
          }

          else
          {
            if (v23)
            {
              *buf = 136446466;
              v30 = "nw_endpoint_flow_copy_multipath_tcp_info_block_invoke";
              v31 = 1024;
              v32 = v11;
              _os_log_impl(&dword_181A37000, v21, v22, "%{public}s if_indextoname %{darwin.errno}d, no backtrace", buf, 0x12u);
            }

            if (!v14)
            {
              goto LABEL_5;
            }
          }

LABEL_31:
          free(v14);
          goto LABEL_5;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v15 = gLogObj;
        v24 = type;
        if (!os_log_type_enabled(v15, type))
        {
          goto LABEL_29;
        }

        *buf = 136446466;
        v30 = "nw_endpoint_flow_copy_multipath_tcp_info_block_invoke";
        v31 = 1024;
        v32 = v11;
        v17 = v15;
        v18 = v24;
        v19 = "%{public}s if_indextoname %{darwin.errno}d, backtrace limit exceeded";
      }

      _os_log_impl(&dword_181A37000, v17, v18, v19, buf, 0x12u);
      goto LABEL_29;
    }

LABEL_36:
    freemptcpinfo(v3);
  }

  return 1;
}

uint64_t nw_endpoint_handler_is_multipath(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    os_unfair_lock_lock(v1 + 28);
    if (v2[29]._os_unfair_lock_opaque == 2)
    {
      is_multipath = nw_endpoint_flow_is_multipath(*&v2[66]._os_unfair_lock_opaque);
    }

    else
    {
      is_multipath = 0;
    }

    os_unfair_lock_unlock(v2 + 28);
    goto LABEL_6;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_handler_is_multipath";
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
        v16 = "nw_endpoint_handler_is_multipath";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null handler", buf, 0xCu);
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
          v16 = "nw_endpoint_handler_is_multipath";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_23;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_endpoint_handler_is_multipath";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null handler, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_endpoint_handler_is_multipath";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_23:
  if (v6)
  {
    free(v6);
  }

  is_multipath = 0;
LABEL_6:

  return is_multipath;
}

uint64_t copymptcpinfo(int a1, void *a2)
{
  v69 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v65 = "copymptcpinfo";
    v52 = _os_log_send_and_compose_impl();
    v63[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v62) = 0;
    if (!__nwlog_fault(v52, v63, &v62))
    {
      goto LABEL_93;
    }

    if (v63[0] == OS_LOG_TYPE_FAULT)
    {
      v53 = __nwlog_obj();
      v54 = v63[0];
      if (!os_log_type_enabled(v53, v63[0]))
      {
        goto LABEL_93;
      }

      *buf = 136446210;
      v65 = "copymptcpinfo";
      v55 = "%{public}s called with null mpinfo";
    }

    else if (v62 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v53 = __nwlog_obj();
      v54 = v63[0];
      v57 = os_log_type_enabled(v53, v63[0]);
      if (backtrace_string)
      {
        if (v57)
        {
          *buf = 136446466;
          v65 = "copymptcpinfo";
          v66 = 2082;
          *v67 = backtrace_string;
          _os_log_impl(&dword_181A37000, v53, v54, "%{public}s called with null mpinfo, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_93;
      }

      if (!v57)
      {
LABEL_93:
        if (v52)
        {
          free(v52);
        }

        return 0xFFFFFFFFLL;
      }

      *buf = 136446210;
      v65 = "copymptcpinfo";
      v55 = "%{public}s called with null mpinfo, no backtrace";
    }

    else
    {
      v53 = __nwlog_obj();
      v54 = v63[0];
      if (!os_log_type_enabled(v53, v63[0]))
      {
        goto LABEL_93;
      }

      *buf = 136446210;
      v65 = "copymptcpinfo";
      v55 = "%{public}s called with null mpinfo, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v53, v54, v55, buf, 0xCu);
    goto LABEL_93;
  }

  *v63 = 0;
  v4 = malloc_type_calloc(1uLL, 0x18uLL, 0x66F2646DuLL);
  if (!v4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
    *buf = 136446722;
    v65 = "copymptcpinfo";
    v66 = 2048;
    *v67 = 1;
    *&v67[8] = 2048;
    *&v68 = 24;
    v5 = _os_log_send_and_compose_impl();
    result = __nwlog_should_abort(v5);
    if (result)
    {
LABEL_96:
      __break(1u);
      return result;
    }

    free(v5);
  }

  if (copyconninfo(a1, -1, v63))
  {
    goto LABEL_6;
  }

  v7 = *v63;
  if (*(*v63 + 28) == 2)
  {
    *v4 = *v63;
    v8 = *(v7 + 32);
    if (v8[20])
    {
      v9 = (v8[56] != 0) + 1;
    }

    else
    {
      v9 = v8[56] != 0;
    }

    if (v8[92])
    {
      ++v9;
    }

    if (v8[128])
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = v9;
    }

    if (!v10)
    {
LABEL_6:
      result = 0;
      *a2 = v4;
      return result;
    }

    v11 = malloc_type_calloc(v10, 8uLL, 0x1B7E0D9uLL);
    v12 = &qword_1ED411000;
    if (v11)
    {
LABEL_20:
      v58 = 0;
      v14 = 20;
      v4[1] = v11;
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      while (1)
      {
        v15 = v8[v14];
        if (v8[v14])
        {
          v62 = 0;
          if (copyconninfo(a1, v15, &v62))
          {
            v16 = **(StatusReg + 8);
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v17 = v12[275];
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446978;
              v65 = "copymptcpinfo";
              v66 = 1024;
              *v67 = v15;
              *&v67[4] = 1024;
              *&v67[6] = a1;
              LOWORD(v68) = 1024;
              *(&v68 + 2) = v16;
              _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_ERROR, "%{public}s copyconninfo failed for ifindex %u on fd %d %{darwin.errno}d", buf, 0x1Eu);
            }
          }

          else
          {
            if (*(v62 + 7) != 1)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v18 = *(v62 + 7);
              *buf = 136446978;
              v65 = "copymptcpinfo";
              v66 = 1024;
              *v67 = v18;
              *&v67[4] = 1024;
              *&v67[6] = v15;
              LOWORD(v68) = 1024;
              *(&v68 + 2) = a1;
              v19 = _os_log_send_and_compose_impl();
              type = OS_LOG_TYPE_ERROR;
              v60 = 0;
              if (!__nwlog_fault(v19, &type, &v60))
              {
                goto LABEL_60;
              }

              if (type == OS_LOG_TYPE_FAULT)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v20 = gLogObj;
                v21 = type;
                if (!os_log_type_enabled(gLogObj, type))
                {
                  goto LABEL_60;
                }

                v22 = *(v62 + 7);
                *buf = 136446978;
                v65 = "copymptcpinfo";
                v66 = 1024;
                *v67 = v22;
                *&v67[4] = 1024;
                *&v67[6] = v15;
                LOWORD(v68) = 1024;
                *(&v68 + 2) = a1;
                v23 = v20;
                v24 = v21;
                v25 = "%{public}s Unknown conninfo type %u for ifindex %u on fd %d";
              }

              else if (v60 == 1)
              {
                v26 = __nw_create_backtrace_string();
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v27 = gLogObj;
                v28 = type;
                v29 = os_log_type_enabled(gLogObj, type);
                if (v26)
                {
                  if (v29)
                  {
                    v30 = *(v62 + 7);
                    *buf = 136447234;
                    v65 = "copymptcpinfo";
                    v66 = 1024;
                    *v67 = v30;
                    *&v67[4] = 1024;
                    *&v67[6] = v15;
                    LOWORD(v68) = 1024;
                    *(&v68 + 2) = a1;
                    WORD3(v68) = 2082;
                    *(&v68 + 1) = v26;
                    _os_log_impl(&dword_181A37000, v27, v28, "%{public}s Unknown conninfo type %u for ifindex %u on fd %d, dumping backtrace:%{public}s", buf, 0x28u);
                  }

                  free(v26);
                  goto LABEL_60;
                }

                if (!v29)
                {
                  goto LABEL_60;
                }

                v40 = *(v62 + 7);
                *buf = 136446978;
                v65 = "copymptcpinfo";
                v66 = 1024;
                *v67 = v40;
                *&v67[4] = 1024;
                *&v67[6] = v15;
                LOWORD(v68) = 1024;
                *(&v68 + 2) = a1;
                v23 = v27;
                v24 = v28;
                v25 = "%{public}s Unknown conninfo type %u for ifindex %u on fd %d, no backtrace";
              }

              else
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v33 = gLogObj;
                v34 = type;
                if (!os_log_type_enabled(gLogObj, type))
                {
                  goto LABEL_60;
                }

                v35 = *(v62 + 7);
                *buf = 136446978;
                v65 = "copymptcpinfo";
                v66 = 1024;
                *v67 = v35;
                *&v67[4] = 1024;
                *&v67[6] = v15;
                LOWORD(v68) = 1024;
                *(&v68 + 2) = a1;
                v23 = v33;
                v24 = v34;
                v25 = "%{public}s Unknown conninfo type %u for ifindex %u on fd %d, backtrace limit exceeded";
              }

              v41 = 30;
              goto LABEL_59;
            }

            if (!*(v62 + 4))
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              *buf = 136446722;
              v65 = "copymptcpinfo";
              v66 = 1024;
              *v67 = v15;
              *&v67[4] = 1024;
              *&v67[6] = a1;
              v19 = _os_log_send_and_compose_impl();
              type = OS_LOG_TYPE_ERROR;
              v60 = 0;
              if (!__nwlog_fault(v19, &type, &v60))
              {
                goto LABEL_60;
              }

              if (type == OS_LOG_TYPE_FAULT)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v31 = gLogObj;
                v32 = type;
                if (os_log_type_enabled(gLogObj, type))
                {
                  *buf = 136446722;
                  v65 = "copymptcpinfo";
                  v66 = 1024;
                  *v67 = v15;
                  *&v67[4] = 1024;
                  *&v67[6] = a1;
                  v23 = v31;
                  v24 = v32;
                  v25 = "%{public}s NULL conninfo aux data for ifindex %u on fd %d";
                  goto LABEL_58;
                }

LABEL_60:
                if (v19)
                {
LABEL_61:
                  free(v19);
                }

LABEL_62:
                v44 = v62;
                if (v62)
                {
                  v45 = *(v62 + 1);
                  if (v45)
                  {
                    free(v45);
                    v44[1] = 0;
                  }

                  v46 = v44[2];
                  v12 = &qword_1ED411000;
                  if (v46)
                  {
                    free(v46);
                    v44[2] = 0;
                  }

                  v47 = v44[4];
                  if (v47)
                  {
                    free(v47);
                  }

                  free(v44);
                }

                else
                {
                  v12 = &qword_1ED411000;
                }

                goto LABEL_22;
              }

              if (v60 == 1)
              {
                v36 = __nw_create_backtrace_string();
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v37 = gLogObj;
                v38 = type;
                v39 = os_log_type_enabled(gLogObj, type);
                if (v36)
                {
                  if (v39)
                  {
                    *buf = 136446978;
                    v65 = "copymptcpinfo";
                    v66 = 1024;
                    *v67 = v15;
                    *&v67[4] = 1024;
                    *&v67[6] = a1;
                    LOWORD(v68) = 2082;
                    *(&v68 + 2) = v36;
                    _os_log_impl(&dword_181A37000, v37, v38, "%{public}s NULL conninfo aux data for ifindex %u on fd %d, dumping backtrace:%{public}s", buf, 0x22u);
                  }

                  free(v36);
                  if (v19)
                  {
                    goto LABEL_61;
                  }

                  goto LABEL_62;
                }

                if (!v39)
                {
                  goto LABEL_60;
                }

                *buf = 136446722;
                v65 = "copymptcpinfo";
                v66 = 1024;
                *v67 = v15;
                *&v67[4] = 1024;
                *&v67[6] = a1;
                v23 = v37;
                v24 = v38;
                v25 = "%{public}s NULL conninfo aux data for ifindex %u on fd %d, no backtrace";
              }

              else
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v42 = gLogObj;
                v43 = type;
                if (!os_log_type_enabled(gLogObj, type))
                {
                  goto LABEL_60;
                }

                *buf = 136446722;
                v65 = "copymptcpinfo";
                v66 = 1024;
                *v67 = v15;
                *&v67[4] = 1024;
                *&v67[6] = a1;
                v23 = v42;
                v24 = v43;
                v25 = "%{public}s NULL conninfo aux data for ifindex %u on fd %d, backtrace limit exceeded";
              }

LABEL_58:
              v41 = 24;
LABEL_59:
              _os_log_impl(&dword_181A37000, v23, v24, v25, buf, v41);
              goto LABEL_60;
            }

            *(v4[1] + 8 * v58++) = v62;
          }
        }

LABEL_22:
        v14 += 36;
        if (v14 == 164)
        {
          *(v4 + 4) = v58;
          goto LABEL_6;
        }
      }
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
    *buf = 136446722;
    v65 = "nw_calloc_type";
    v66 = 2048;
    *v67 = v10;
    *&v67[8] = 2048;
    *&v68 = 8;
    v13 = _os_log_send_and_compose_impl();
    result = __nwlog_should_abort(v13);
    if (!result)
    {
      free(v13);
      v11 = 0;
      goto LABEL_20;
    }

    goto LABEL_96;
  }

  freemptcpinfo(v4);
  v48 = *v63;
  if (!*v63)
  {
    return 0xFFFFFFFFLL;
  }

  v49 = *(*v63 + 8);
  if (v49)
  {
    free(v49);
    v48[1] = 0;
  }

  v50 = v48[2];
  if (v50)
  {
    free(v50);
    v48[2] = 0;
  }

  v51 = v48[4];
  if (v51)
  {
    free(v51);
  }

  free(v48);
  return 0xFFFFFFFFLL;
}

void freemptcpinfo(void *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      v3 = v2[1];
      if (v3)
      {
        free(v3);
        v2[1] = 0;
      }

      v4 = v2[2];
      if (v4)
      {
        free(v4);
        v2[2] = 0;
      }

      v5 = v2[4];
      if (v5)
      {
        free(v5);
      }

      free(v2);
    }

    v6 = a1[1];
    if (v6)
    {
      v7 = *(a1 + 4);
      if (!v7)
      {
        goto LABEL_24;
      }

      for (i = 0; i < v7; ++i)
      {
        v9 = *(a1[1] + 8 * i);
        if (v9)
        {
          v10 = v9[1];
          if (v10)
          {
            free(v10);
            v9[1] = 0;
          }

          v11 = v9[2];
          if (v11)
          {
            free(v11);
            v9[2] = 0;
          }

          v12 = v9[4];
          if (v12)
          {
            free(v12);
          }

          free(v9);
          v7 = *(a1 + 4);
        }
      }

      v6 = a1[1];
      if (v6)
      {
LABEL_24:
        free(v6);
      }
    }

    free(a1);
  }
}

BOOL nw_connection_fillout_tcp_statistics(void *a1, uint64_t a2)
{
  v52 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v26 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_connection_fillout_tcp_statistics";
    v27 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v41 = 0;
    if (!__nwlog_fault(v27, type, &v41))
    {
      goto LABEL_56;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v28 = __nwlog_obj();
      v29 = type[0];
      if (os_log_type_enabled(v28, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_fillout_tcp_statistics";
        _os_log_impl(&dword_181A37000, v28, v29, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (v41 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v28 = __nwlog_obj();
      v33 = type[0];
      v34 = os_log_type_enabled(v28, type[0]);
      if (backtrace_string)
      {
        if (v34)
        {
          *buf = 136446466;
          *&buf[4] = "nw_connection_fillout_tcp_statistics";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v28, v33, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (!v27)
        {
          goto LABEL_58;
        }

        goto LABEL_57;
      }

      if (v34)
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_fillout_tcp_statistics";
        _os_log_impl(&dword_181A37000, v28, v33, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v28 = __nwlog_obj();
      v38 = type[0];
      if (os_log_type_enabled(v28, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_fillout_tcp_statistics";
        _os_log_impl(&dword_181A37000, v28, v38, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_55;
  }

  if (!a2)
  {
    v30 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_connection_fillout_tcp_statistics";
    v27 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v41 = 0;
    if (!__nwlog_fault(v27, type, &v41))
    {
      goto LABEL_56;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v28 = __nwlog_obj();
      v31 = type[0];
      if (os_log_type_enabled(v28, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_fillout_tcp_statistics";
        _os_log_impl(&dword_181A37000, v28, v31, "%{public}s called with null statistics", buf, 0xCu);
      }
    }

    else if (v41 == 1)
    {
      v35 = __nw_create_backtrace_string();
      v28 = __nwlog_obj();
      v36 = type[0];
      v37 = os_log_type_enabled(v28, type[0]);
      if (v35)
      {
        if (v37)
        {
          *buf = 136446466;
          *&buf[4] = "nw_connection_fillout_tcp_statistics";
          *&buf[12] = 2082;
          *&buf[14] = v35;
          _os_log_impl(&dword_181A37000, v28, v36, "%{public}s called with null statistics, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v35);
LABEL_56:
        if (!v27)
        {
LABEL_58:
          v8 = 0;
          goto LABEL_22;
        }

LABEL_57:
        free(v27);
        goto LABEL_58;
      }

      if (v37)
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_fillout_tcp_statistics";
        _os_log_impl(&dword_181A37000, v28, v36, "%{public}s called with null statistics, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v28 = __nwlog_obj();
      v39 = type[0];
      if (os_log_type_enabled(v28, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_fillout_tcp_statistics";
        _os_log_impl(&dword_181A37000, v28, v39, "%{public}s called with null statistics, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_55:

    goto LABEL_56;
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v5 = v3;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v49 = __Block_byref_object_copy__8362;
  v50 = __Block_byref_object_dispose__8363;
  v51 = 0;
  *type = MEMORY[0x1E69E9820];
  v43 = 3221225472;
  v44 = __nw_connection_copy_establishment_report_off_queue_block_invoke;
  v45 = &unk_1E6A3D738;
  v47 = buf;
  v6 = v5;
  v46 = v6;
  os_unfair_lock_lock(v5 + 34);
  __nw_connection_copy_establishment_report_off_queue_block_invoke(type);
  os_unfair_lock_unlock(v5 + 34);
  v7 = *(*&buf[8] + 40);

  _Block_object_dispose(buf, 8);
  v8 = v7 != 0;
  if (v7)
  {
    enumerate_block[0] = MEMORY[0x1E69E9820];
    enumerate_block[1] = 3221225472;
    enumerate_block[2] = __nw_connection_fillout_tcp_statistics_block_invoke;
    enumerate_block[3] = &__block_descriptor_40_e43_B16__0__NSObject_OS_nw_resolution_report__8l;
    enumerate_block[4] = a2;
    nw_establishment_report_enumerate_resolution_reports(v7, enumerate_block);
    v9 = v7;
    isa = v9[3].isa;

    *(a2 + 4) = *a2 + isa;
    if (nw_protocol_setup_tcp_definition_onceToken != -1)
    {
      dispatch_once(&nw_protocol_setup_tcp_definition_onceToken, &__block_literal_global_415);
    }

    v11 = g_tcp_definition;
    *(a2 + 8) = nw_establishment_report_get_handshake_ms_for_protocol(v9, v11, 0);

    if (*(a2 + 8))
    {
      v12 = v9;
      v13 = v12[1].isa;

      *(a2 + 12) = *(a2 + 8) + v13;
    }

    v14 = nw_protocol_boringssl_copy_definition();
    Helper_x8__nwswifttls_copy_definition = gotLoadHelper_x8__nwswifttls_copy_definition(v15);
    if (*(v17 + 2224))
    {
      inited = nwswifttls_copy_definition_delayInitStub(Helper_x8__nwswifttls_copy_definition);
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v19 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_copy_swift_tls_definition_if_present";
        *&buf[12] = 2048;
        *&buf[14] = inited;
        _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_DEBUG, "%{public}s SwiftTLS protocol definition %p", buf, 0x16u);
      }
    }

    else
    {
      inited = 0;
    }

    *(a2 + 16) = nw_establishment_report_get_handshake_ms_for_protocol(v9, v14, inited);

    if (*(a2 + 16))
    {
      v23 = v9;
      v24 = v23[2].isa;

      *(a2 + 20) = v24;
    }
  }

  else
  {
    v20 = *&v6[4]._os_unfair_lock_opaque;
    if (v20 && !_nw_parameters_get_logging_disabled(v20))
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v21 = gconnectionLogObj;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        os_unfair_lock_opaque = v6[112]._os_unfair_lock_opaque;
        *buf = 136446466;
        *&buf[4] = "nw_connection_fillout_tcp_statistics";
        *&buf[12] = 1024;
        *&buf[14] = os_unfair_lock_opaque;
        _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_ERROR, "%{public}s [C%u] Establishment report is not ready", buf, 0x12u);
      }
    }
  }

LABEL_22:
  return v8;
}

uint64_t __nw_connection_fillout_tcp_statistics_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  **(a1 + 32) = nw_resolution_report_get_milliseconds(v3);

  return 0;
}

uint64_t nw_resolution_report_get_milliseconds(nw_resolution_report_t resolution_report)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = resolution_report;
  if (v1)
  {
    isa = v1[1].isa;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_resolution_report_get_milliseconds";
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
        v15 = "nw_resolution_report_get_milliseconds";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null resolution_report", buf, 0xCu);
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
          v15 = "nw_resolution_report_get_milliseconds";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null resolution_report, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_resolution_report_get_milliseconds";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null resolution_report, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_resolution_report_get_milliseconds";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null resolution_report, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

  isa = 0;
  v1 = 0;
LABEL_3:

  return isa;
}

void nw_endpoint_handler_access_resolver_handler(void *a1, void *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (!v4)
  {
    v25 = __nwlog_obj();
    *buf = 136446210;
    v36 = "nw_endpoint_handler_access_resolver_handler";
    v26 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v33 = 0;
    if (__nwlog_fault(v26, &type, &v33))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v27 = __nwlog_obj();
        v28 = type;
        if (os_log_type_enabled(v27, type))
        {
          *buf = 136446210;
          v36 = "nw_endpoint_handler_access_resolver_handler";
          _os_log_impl(&dword_181A37000, v27, v28, "%{public}s called with null accessor", buf, 0xCu);
        }
      }

      else if (v33 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v27 = __nwlog_obj();
        v30 = type;
        v31 = os_log_type_enabled(v27, type);
        if (backtrace_string)
        {
          if (v31)
          {
            *buf = 136446466;
            v36 = "nw_endpoint_handler_access_resolver_handler";
            v37 = 2082;
            v38 = backtrace_string;
            _os_log_impl(&dword_181A37000, v27, v30, "%{public}s called with null accessor, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_63;
        }

        if (v31)
        {
          *buf = 136446210;
          v36 = "nw_endpoint_handler_access_resolver_handler";
          _os_log_impl(&dword_181A37000, v27, v30, "%{public}s called with null accessor, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v27 = __nwlog_obj();
        v32 = type;
        if (os_log_type_enabled(v27, type))
        {
          *buf = 136446210;
          v36 = "nw_endpoint_handler_access_resolver_handler";
          _os_log_impl(&dword_181A37000, v27, v32, "%{public}s called with null accessor, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_63:
    if (v26)
    {
      free(v26);
    }

    goto LABEL_9;
  }

  v5 = v3;
  while (1)
  {
    v6 = v5;
    if (!v6)
    {
      break;
    }

    v5 = v6;
    v7 = v6[29];

    if (v7 == 1)
    {
      v4[2](v4, v5);
      goto LABEL_8;
    }

    v8 = v5;
    v5 = v8[9];

    if (!v5)
    {
      goto LABEL_8;
    }
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v36 = "nw_endpoint_handler_get_mode";
  v10 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v33 = 0;
  if (__nwlog_fault(v10, &type, &v33))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v36 = "nw_endpoint_handler_get_mode";
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null handler", buf, 0xCu);
      }

LABEL_25:

      goto LABEL_26;
    }

    if (v33 != 1)
    {
      v11 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v36 = "nw_endpoint_handler_get_mode";
        _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_25;
    }

    v13 = __nw_create_backtrace_string();
    v11 = __nwlog_obj();
    v14 = type;
    v15 = os_log_type_enabled(v11, type);
    if (!v13)
    {
      if (v15)
      {
        *buf = 136446210;
        v36 = "nw_endpoint_handler_get_mode";
        _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null handler, no backtrace", buf, 0xCu);
      }

      goto LABEL_25;
    }

    if (v15)
    {
      *buf = 136446466;
      v36 = "nw_endpoint_handler_get_mode";
      v37 = 2082;
      v38 = v13;
      _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v13);
  }

LABEL_26:
  if (v10)
  {
    free(v10);
  }

  v17 = __nwlog_obj();
  *buf = 136446210;
  v36 = "nw_endpoint_handler_copy_parent";
  v18 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v33 = 0;
  if (__nwlog_fault(v18, &type, &v33))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v19 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        v36 = "nw_endpoint_handler_copy_parent";
        _os_log_impl(&dword_181A37000, v19, v20, "%{public}s called with null handler", buf, 0xCu);
      }

LABEL_43:

      goto LABEL_44;
    }

    if (v33 != 1)
    {
      v19 = __nwlog_obj();
      v24 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        v36 = "nw_endpoint_handler_copy_parent";
        _os_log_impl(&dword_181A37000, v19, v24, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_43;
    }

    v21 = __nw_create_backtrace_string();
    v19 = __nwlog_obj();
    v22 = type;
    v23 = os_log_type_enabled(v19, type);
    if (!v21)
    {
      if (v23)
      {
        *buf = 136446210;
        v36 = "nw_endpoint_handler_copy_parent";
        _os_log_impl(&dword_181A37000, v19, v22, "%{public}s called with null handler, no backtrace", buf, 0xCu);
      }

      goto LABEL_43;
    }

    if (v23)
    {
      *buf = 136446466;
      v36 = "nw_endpoint_handler_copy_parent";
      v37 = 2082;
      v38 = v21;
      _os_log_impl(&dword_181A37000, v19, v22, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v21);
  }

LABEL_44:
  if (v18)
  {
    free(v18);
  }

  v5 = 0;
LABEL_8:

LABEL_9:
}

BOOL __nw_endpoint_flow_uses_multipath_block_invoke(uint64_t a1, int a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v25 = 0;
  if (!copyconninfo(a2, -1, &v25))
  {
    v4 = v25;
    v5 = *(v25 + 7);
    v3 = v5 == 2;
    if (v5 == 2)
    {
      *(*(*(a1 + 32) + 8) + 24) = (*v25 & 0x500) == 256;
      v6 = v4[1];
      if (v6)
      {
        free(v6);
        v4[1] = 0;
      }

      v7 = v4[2];
      if (v7)
      {
        free(v7);
        v4[2] = 0;
      }

      v8 = v4[4];
      if (!v8)
      {
        v3 = 1;
LABEL_34:
        free(v4);
        return v3;
      }

LABEL_33:
      free(v8);
      goto LABEL_34;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    *buf = 136446210;
    v27 = "nw_endpoint_flow_uses_multipath_block_invoke";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (__nwlog_fault(v10, &type, &v23))
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
          v27 = "nw_endpoint_flow_uses_multipath_block_invoke";
          v14 = "%{public}s Didn't get a CIAUX_MPTCP";
LABEL_22:
          v18 = v12;
          v19 = v13;
LABEL_23:
          _os_log_impl(&dword_181A37000, v18, v19, v14, buf, 0xCu);
          goto LABEL_24;
        }

        goto LABEL_24;
      }

      if (v23 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v12 = gLogObj;
        v13 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v27 = "nw_endpoint_flow_uses_multipath_block_invoke";
          v14 = "%{public}s Didn't get a CIAUX_MPTCP, backtrace limit exceeded";
          goto LABEL_22;
        }

LABEL_24:

        goto LABEL_25;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v12 = gLogObj;
      v16 = type;
      v17 = os_log_type_enabled(v12, type);
      if (!backtrace_string)
      {
        if (!v17)
        {
          goto LABEL_24;
        }

        *buf = 136446210;
        v27 = "nw_endpoint_flow_uses_multipath_block_invoke";
        v14 = "%{public}s Didn't get a CIAUX_MPTCP, no backtrace";
        v18 = v12;
        v19 = v16;
        goto LABEL_23;
      }

      if (v17)
      {
        *buf = 136446466;
        v27 = "nw_endpoint_flow_uses_multipath_block_invoke";
        v28 = 2082;
        v29 = backtrace_string;
        _os_log_impl(&dword_181A37000, v12, v16, "%{public}s Didn't get a CIAUX_MPTCP, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

LABEL_25:
    if (v10)
    {
      free(v10);
    }

    v4 = v25;
    if (!v25)
    {
      return 0;
    }

    v20 = *(v25 + 1);
    if (v20)
    {
      free(v20);
      v4[1] = 0;
    }

    v21 = v4[2];
    if (v21)
    {
      free(v21);
      v4[2] = 0;
    }

    v8 = v4[4];
    if (!v8)
    {
      v3 = 0;
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  return 0;
}

unint64_t sub_181E7B4DC()
{
  result = qword_1EA836C78;
  if (!qword_1EA836C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836C78);
  }

  return result;
}

void nw_write_request_fail(void *a1, int a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    if (a2)
    {
      posix_error = nw_error_create_posix_error(a2);
    }

    else
    {
      posix_error = 0;
    }

    nw_write_request_report(v3, 0, posix_error);

    goto LABEL_6;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_write_request_fail";
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
        v16 = "nw_write_request_fail";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null request", buf, 0xCu);
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
          v16 = "nw_write_request_fail";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null request, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_23;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_write_request_fail";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null request, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_write_request_fail";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null request, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_23:
  if (v6)
  {
    free(v6);
  }

LABEL_6:
}

uint64_t NWError.init(_:)@<X0>(NSObject *a1@<X0>, uint64_t a2@<X8>)
{
  error_domain = nw_error_get_error_domain(a1);
  if (error_domain > nw_error_domain_dns)
  {
    if (error_domain == nw_error_domain_tls)
    {
      LODWORD(v5) = nw_error_get_error_code(a1);
      result = swift_unknownObjectRelease();
      v7 = 2;
      goto LABEL_12;
    }

    if (error_domain == 4)
    {
      LODWORD(v5) = nw_error_get_error_code(a1);
      result = swift_unknownObjectRelease();
      v7 = 3;
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  if (error_domain != nw_error_domain_posix)
  {
    if (error_domain == nw_error_domain_dns)
    {
      LODWORD(v5) = nw_error_get_error_code(a1);
      result = swift_unknownObjectRelease();
      v7 = 1;
      goto LABEL_12;
    }

LABEL_8:
    result = swift_unknownObjectRelease();
    v7 = 0;
    LODWORD(v5) = 22;
    goto LABEL_12;
  }

  nw_error_get_error_code(a1);
  v5 = sub_182AD2758();
  result = swift_unknownObjectRelease();
  v7 = 0;
  if ((v5 & 0x100000000) != 0)
  {
    LODWORD(v5) = 22;
  }

LABEL_12:
  *a2 = v5;
  *(a2 + 4) = v7;
  return result;
}

nw_error_domain_t nw_error_get_error_domain(nw_error_t error)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = error;
  if (v1)
  {
    isa = v1[1].isa;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_error_get_error_domain";
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
        v15 = "nw_error_get_error_domain";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null error", buf, 0xCu);
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
          v15 = "nw_error_get_error_domain";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null error, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_error_get_error_domain";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null error, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_error_get_error_domain";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null error, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

  isa = nw_error_domain_invalid;
  v1 = 0;
LABEL_3:

  return isa;
}

uint64_t sub_181E7BB9C(uint64_t a1)
{
  v2 = sub_181E7BC18();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_181E7BBDC(uint64_t a1)
{
  v2 = sub_181E7BC18();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

unint64_t sub_181E7BC18()
{
  result = qword_1EA836A78;
  if (!qword_1EA836A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836A78);
  }

  return result;
}

uint64_t sub_181E7BC6C()
{
  LODWORD(result) = *v0;
  if (!*(v0 + 4))
  {
    LODWORD(result) = sub_182AD2768();
  }

  return result;
}

unint64_t sub_181E7BC98()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839990);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_182AE9730;
  result = *MEMORY[0x1E695E620];
  if (*MEMORY[0x1E695E620])
  {
    *(inited + 32) = sub_182AD2F88();
    *(inited + 40) = v2;
    v3 = sub_181E7BD5C();
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 48) = v3;
    *(inited + 56) = v4;
    v5 = sub_181E7BE80(inited);
    swift_setDeallocating();
    sub_181E7BFD4(inited + 32);
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_181E7BD5C()
{
  v1 = *v0;
  if (*(v0 + 4) > 1u)
  {
    if (*(v0 + 4) == 2)
    {
      v5 = SecCopyErrorMessageString(v1, 0);
      if (v5)
      {
        v6 = v5;
        v7 = sub_182AD2F88();

        return v7;
      }

      else
      {
        return 0x6E776F6E6B6E55;
      }
    }

    else
    {
      return 0x77412069462D6957;
    }
  }

  else if (*(v0 + 4))
  {
    result = nwlog_get_string_for_dns_service_error(v1);
    if (result)
    {
      return sub_182AD3158();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v2 = swift_slowAlloc();
    v3 = sub_182AD2768();
    if (strerror_r(v3, v2, 0x80uLL))
    {
      v4 = 0x6E776F6E6B6E55;
    }

    else
    {
      v4 = sub_182AD3158();
    }

    MEMORY[0x1865DF520](v2, -1, -1);
    return v4;
  }

  return result;
}

unint64_t sub_181E7BE80(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B5B0);
    v3 = sub_182AD3EE8();
    v4 = a1 + 32;

    while (1)
    {
      sub_181AB5D28(v4, &v13, &qword_1EA83B680);
      v5 = v13;
      v6 = v14;
      result = sub_181CBDA14(v13, v14, sub_181D04C70);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_181E7BFC4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

_OWORD *sub_181E7BFC4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_181E7BFD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B680);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t NWError.debugDescription.getter()
{
  if (*(v0 + 4) > 1u)
  {
    v3 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](8250, 0xE200000000000000);
  }

  else
  {
    if (*(v0 + 4))
    {
      v3 = sub_182AD41B8();
    }

    else
    {
      v3 = 0;
      sub_182AD3E18();
    }

    MEMORY[0x1865D9CA0](8250, 0xE200000000000000);
  }

  v1 = sub_181E7BD5C();
  MEMORY[0x1865D9CA0](v1);

  return v3;
}

uint64_t nw_calloc_type<nw_data_transfer_snapshot>(size_t count)
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

  result = malloc_type_calloc(count, 0xE0uLL, 0x1B7E0D9uLL);
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

id _nw_parameters_create_from_serialized_bytes(void *a1)
{
  v1 = a1;
  v2 = sub_182AD2158();
  sub_181E7C3F4(v2, v3, __src);
  v4 = sub_1821F2D80();

  memcpy(__dst, __src, 0x188uLL);
  sub_181F48214(__dst);
  return v4;
}

void *sub_181E7C3F4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v22 = 0;
  v21 = 0;
  v23 = 1;
  v25 = 0;
  v24 = 0;
  v26 = 1;
  v27 = 0u;
  v28 = 0u;
  v29 = 1;
  sub_181A53D78(&v30);
  v41 = 0;
  v42 = 0xF000000000000000;
  sub_182AD1C48();
  swift_allocObject();
  sub_182AD1C38();
  sub_181F49A34();
  sub_182AD1C18();
  sub_181C1F2E4(a1, a2);

  if (v3)
  {
    v17 = v38;
    v18 = v39;
    v19 = v40;
    v13 = v34;
    v14 = v35;
    v15 = v36;
    v16 = v37;
    v9 = v30;
    v10 = v31;
    v11 = v32;
    v12 = v33;
    sub_181A41E7C(&v9);
    return sub_181D9D680(0, 0xF000000000000000);
  }

  else
  {
    memcpy(__dst, __src, sizeof(__dst));
    v17 = v38;
    v18 = v39;
    v19 = v40;
    v13 = v34;
    v14 = v35;
    v15 = v36;
    v16 = v37;
    v9 = v30;
    v10 = v31;
    v11 = v32;
    v12 = v33;
    sub_181A41E7C(&v9);
    sub_181D9D680(0, 0xF000000000000000);
    return memcpy(a3, __dst, 0x188uLL);
  }
}

uint64_t Parameters.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v67 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A470);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v63 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v62 = &v56 - v6;
  v65 = type metadata accessor for URLEndpoint();
  v68 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v66 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v64 = &v56 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v60 = &v56 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8385E0);
  v70 = *(v12 - 8);
  v71 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v56 - v13;
  *&v99[8] = 0;
  *v99 = 0;
  v99[16] = 1;
  *&v99[25] = 0;
  *&v99[17] = 0;
  v99[33] = 1;
  memset(&v99[36], 0, 32);
  v99[68] = 1;
  sub_181A53D78(&v99[128]);
  Parameters.init(noInternetProtocol:)(0, v98);
  v15 = *&v98[312];
  v16 = *&v98[320];
  *&v99[328] = *&v98[328];
  *&v99[344] = *&v98[344];
  v17 = *&v98[368];
  *&v99[360] = *&v98[360];
  v18 = *&v98[376];
  v19 = *&v98[384];
  v100[8] = *&v99[256];
  v100[9] = *&v99[272];
  v100[10] = *&v99[288];
  v100[4] = *&v99[192];
  v100[5] = *&v99[208];
  v100[7] = *&v99[240];
  v100[6] = *&v99[224];
  v100[0] = *&v99[128];
  v100[1] = *&v99[144];
  v100[3] = *&v99[176];
  v100[2] = *&v99[160];
  sub_181A41E7C(v100);
  sub_181D9D680(0, 0xF000000000000000);
  memcpy(v99, v98, 0x138uLL);
  v69 = v15;
  *&v99[312] = v15;
  *&v99[320] = v16;
  *&v99[368] = v17;
  v61 = v18;
  *&v99[376] = v18;
  *&v99[384] = v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_181E75F5C();
  v20 = v101;
  sub_182AD45E8();
  if (v20)
  {
    v23 = a1;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1(v23);
    memcpy(v98, v99, sizeof(v98));
    return sub_181F48214(v98);
  }

  v101 = v16;
  v59 = v17;
  v22 = v70;
  v21 = v71;
  v98[0] = 0;
  *&v99[120] = sub_182AD4058();
  v98[0] = 8;
  *&v99[124] = sub_182AD4058();
  v85 = 1;
  sub_181E7B4DC();
  sub_182AD3FF8();
  v80 = v92;
  v81 = v93;
  v82 = v94;
  v83 = v95;
  v76 = v88;
  v77 = v89;
  v78 = v90;
  v79 = v91;
  v74 = v86;
  v75 = v87;
  v25 = v96;
  v58 = v97;
  v84[8] = *&v99[256];
  v84[9] = *&v99[272];
  v84[10] = *&v99[288];
  v84[4] = *&v99[192];
  v84[5] = *&v99[208];
  v84[6] = *&v99[224];
  v84[7] = *&v99[240];
  v84[0] = *&v99[128];
  v84[1] = *&v99[144];
  v84[2] = *&v99[160];
  v84[3] = *&v99[176];
  sub_181A41E7C(v84);
  *&v99[224] = v80;
  *&v99[240] = v81;
  *&v99[256] = v82;
  *&v99[272] = v83;
  *&v99[160] = v76;
  *&v99[176] = v77;
  *&v99[192] = v78;
  *&v99[208] = v79;
  *&v99[128] = v74;
  *&v99[144] = v75;
  v57 = v25;
  *&v99[288] = v25;
  *&v99[296] = v58;
  v98[0] = 2;
  v26 = sub_182AD3FC8();
  v28 = v27;

  *&v99[304] = v26;
  *&v99[312] = v28;
  v73 = 3;
  sub_181E7E6C0();
  sub_182AD3FF8();
  v29 = v14;
  v30 = *v98;
  v31 = *&v98[8];
  *v99 = *v98;
  *&v99[8] = *&v98[8];
  v99[16] = 0;
  if (!v57 || *(v57 + 48) < 2uLL)
  {
LABEL_15:
    v35 = v29;
    v36 = v68;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8385D0);
    LOBYTE(v72[0]) = 4;
    sub_181E75EB4(&qword_1EA836D08, sub_181E7E6C0);
    sub_182AD3FF8();

    *&v99[320] = *v98;
    v98[0] = 5;
    v37 = sub_182AD3FC8();
    v38 = v62;
    sub_182183834(v37, v39, v62);
    v40 = v36;
    v41 = v38;
    v42 = (*(v40 + 48))(v38, 1, v65);
    v43 = v64;
    if (v42 == 1)
    {
      sub_181F49A88(v41, &unk_1EA83A470);
    }

    else
    {
      v44 = v60;
      sub_181B2BEE4(v41, v60);
      sub_181ACC828(v44, v43, type metadata accessor for URLEndpoint);
      v45 = objc_allocWithZone(type metadata accessor for Endpoint(0));
      v46 = Endpoint.init(_:)(v43);
      sub_181AB7264(v44, type metadata accessor for URLEndpoint);

      *&v99[368] = v46;
    }

    LOBYTE(v72[0]) = 6;
    sub_181E7ECBC();
    sub_182AD3FF8();
    *&v99[36] = *v98;
    *&v99[52] = *&v98[16];
    v99[68] = 0;
    v47 = a1;
    v98[0] = 7;
    v48 = sub_182AD3FC8();
    v49 = v22;
    v50 = v66;
    v51 = v63;
    sub_182183834(v48, v52, v63);
    if ((*(v68 + 48))(v51, 1, v65) == 1)
    {
      (*(v22 + 8))(v35, v21);
      sub_181F49A88(v51, &unk_1EA83A470);
    }

    else
    {
      sub_181B2BEE4(v51, v50);
      v101 = v35;
      v53 = v64;
      sub_181ACC828(v50, v64, type metadata accessor for URLEndpoint);
      v54 = objc_allocWithZone(type metadata accessor for Endpoint(0));
      v55 = Endpoint.init(_:)(v53);
      sub_181AB7264(v50, type metadata accessor for URLEndpoint);
      (*(v49 + 8))(v101, v21);

      *&v99[376] = v55;
    }

    memcpy(v72, v99, sizeof(v72));
    memcpy(v67, v99, 0x188uLL);
    sub_181F481DC(v72, v98);
    v23 = v47;
    goto LABEL_4;
  }

  result = *(v57 + 64);
  if (result)
  {
    v32 = *(v57 + 64);
  }

  else
  {
    v69 = 0;
    v32 = *sub_182AD2388();

    result = v69;
  }

  v72[0] = v32;
  v33 = *(v32 + 24);
  v69 = v33 + 1;
  if (!__OFADD__(v33, 1))
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (*(v32 + 16) < v69 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_181B8477C(isUniquelyReferenced_nonNull_native, v69);
      v32 = v72[0];
    }

    sub_181B855B4((v32 + 16), v32 + 40, v30, v31);
    *(v57 + 64) = v32;

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_181E7CF5C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v103 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83B868);
  v59 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v52 - v5;
  v93 = 1;
  v92 = 0;
  if (nw_is_dispatch_allowed())
  {
    if (qword_1ED4106F0 != -1)
    {
      swift_once();
    }

    LODWORD(v7) = qword_1ED410700;
    LODWORD(v8) = HIDWORD(qword_1ED410700);
    v94[0] = xmmword_1ED410708;
  }

  else
  {
    v7 = sub_181A543CC(v94);
    v8 = HIDWORD(v7);
  }

  v60 = v4;
  v61 = v6;
  v57 = a2;
  v94[1] = v94[0];
  v95 = v94[0];
  v96 = v94[0];
  v97 = 0uLL;
  LOBYTE(v98[0]) = v93;
  *(&v98[0] + 1) = 0;
  LOBYTE(v98[1]) = v92;
  *(&v98[1] + 4) = __PAIR64__(v8, v7);
  HIDWORD(v98[1]) = 0;
  LODWORD(v98[2]) = 1285;
  WORD2(v98[2]) = 1285;
  *(&v98[2] + 6) = 0;
  v100 = 0u;
  memset(v101, 0, 24);
  v99 = 0u;
  if (qword_1ED4107E8 != -1)
  {
    swift_once();
  }

  *(&v101[1] + 1) = qword_1ED411E40;
  v101[2] = 0uLL;

  sub_181A53D78(&v82);
  v9 = *&v90[0];
  v10 = *(&v90[2] + 1);
  v91[8] = v101[0];
  v91[9] = v101[1];
  v91[10] = v101[2];
  v91[4] = v98[1];
  v91[5] = v98[2];
  v91[6] = v99;
  v91[7] = v100;
  v91[0] = v95;
  v91[1] = v96;
  v91[2] = v97;
  v91[3] = v98[0];
  sub_181A41E7C(v91);
  v97 = v84;
  v98[0] = v85;
  v98[1] = v86;
  v98[2] = v87;
  v95 = v82;
  v96 = v83;
  v56 = v89;
  v99 = v88;
  v100 = v89;
  v58 = v88;
  *(&v101[1] + 8) = *(&v90[1] + 8);
  *(v101 + 8) = *(v90 + 8);
  *&v101[0] = v9;
  *(&v101[2] + 1) = v10;
  __swift_project_boxed_opaque_existential_1(v103, v103[3]);
  sub_181E76D2C();
  sub_182AD45E8();
  if (v2)
  {
    goto LABEL_10;
  }

  v54 = v9;
  v55 = v10;
  v79 = 0;
  sub_181E7DEAC();
  sub_182AD3FF8();
  *(&v98[1] + 12) = v80;
  DWORD1(v98[2]) = v81;
  v74 = 1;
  sub_181E7E320();
  sub_182AD3FF8();
  v97 = v77;
  v98[0] = v78[0];
  *(v98 + 12) = *(v78 + 12);
  v95 = v75;
  v96 = v76;
  LOBYTE(v62) = 2;
  sub_181E7E890();
  sub_182AD3FF8();
  DWORD2(v98[2]) = v82;
  WORD6(v98[2]) = WORD2(v82);
  LOBYTE(v62) = 3;
  sub_181E7EBA8();
  sub_182AD3FF8();
  v12 = v58;
  v13 = v82;
  if (!v58)
  {
    type metadata accessor for PathParameters.InterfacePreferenceValues.InterfacePreferenceValuesBacking();
    v12 = swift_allocObject();
    *(v12 + 152) = 1;
    *(v12 + 16) = 0u;
    *(v12 + 32) = 0u;
    *(v12 + 48) = 0u;
    *(v12 + 64) = 0u;
    *(v12 + 80) = 0u;
    *(v12 + 96) = 0u;
    *(v12 + 112) = 0u;
    *(v12 + 128) = 0u;
    *(v12 + 144) = 0;
    *(v12 + 160) = 0;
    *&v99 = v12;
  }

  *(v12 + 16) = v13;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B860);
  LOBYTE(v62) = 4;
  sub_182270940();
  sub_182AD3FF8();
  v14 = v82;
  if (!v12)
  {
    type metadata accessor for PathParameters.InterfacePreferenceValues.InterfacePreferenceValuesBacking();
    v12 = swift_allocObject();
    *(v12 + 16) = 0u;
    *(v12 + 32) = 0u;
    *(v12 + 48) = 0u;
    *(v12 + 64) = 0u;
    *(v12 + 80) = 0u;
    *(v12 + 96) = 0u;
    *(v12 + 112) = 0u;
    *(v12 + 128) = 0u;
    *(v12 + 144) = 0;
    *(v12 + 152) = 1;
    *(v12 + 160) = 0;
    *&v99 = v12;
  }

  *(v12 + 24) = v14;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B848);
  LOBYTE(v62) = 5;
  sub_1822709C4();
  sub_182AD3FF8();
  v15 = v82;
  if (!v12)
  {
    type metadata accessor for PathParameters.InterfacePreferenceValues.InterfacePreferenceValuesBacking();
    v12 = swift_allocObject();
    *(v12 + 16) = 0u;
    *(v12 + 32) = 0u;
    *(v12 + 48) = 0u;
    *(v12 + 64) = 0u;
    *(v12 + 80) = 0u;
    *(v12 + 96) = 0u;
    *(v12 + 112) = 0u;
    *(v12 + 128) = 0u;
    *(v12 + 144) = 0;
    *(v12 + 152) = 1;
    *(v12 + 160) = 0;
    *&v99 = v12;
  }

  *(v12 + 32) = v15;

  LOBYTE(v62) = 6;
  sub_182AD3FF8();
  v16 = v82;
  if (!v12)
  {
    type metadata accessor for PathParameters.InterfacePreferenceValues.InterfacePreferenceValuesBacking();
    v12 = swift_allocObject();
    *(v12 + 16) = 0u;
    *(v12 + 32) = 0u;
    *(v12 + 48) = 0u;
    *(v12 + 64) = 0u;
    *(v12 + 80) = 0u;
    *(v12 + 96) = 0u;
    *(v12 + 112) = 0u;
    *(v12 + 128) = 0u;
    *(v12 + 144) = 0;
    *(v12 + 152) = 1;
    *(v12 + 160) = 0;
    *&v99 = v12;
  }

  *(v12 + 40) = v16;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B830);
  LOBYTE(v62) = 7;
  sub_182270A48();
  sub_182AD3FF8();
  v17 = v82;
  if (!v12)
  {
    type metadata accessor for PathParameters.InterfacePreferenceValues.InterfacePreferenceValuesBacking();
    v12 = swift_allocObject();
    *(v12 + 16) = 0u;
    *(v12 + 32) = 0u;
    *(v12 + 48) = 0u;
    *(v12 + 64) = 0u;
    *(v12 + 80) = 0u;
    *(v12 + 96) = 0u;
    *(v12 + 112) = 0u;
    *(v12 + 128) = 0u;
    *(v12 + 144) = 0;
    *(v12 + 152) = 1;
    *(v12 + 160) = 0;
    *&v99 = v12;
  }

  *(v12 + 48) = v17;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B818);
  LOBYTE(v62) = 11;
  sub_182270ACC();
  sub_182AD3FF8();
  v18 = v82;
  if (!v12)
  {
    type metadata accessor for PathParameters.InterfacePreferenceValues.InterfacePreferenceValuesBacking();
    v12 = swift_allocObject();
    *(v12 + 16) = 0u;
    *(v12 + 32) = 0u;
    *(v12 + 48) = 0u;
    *(v12 + 64) = 0u;
    *(v12 + 80) = 0u;
    *(v12 + 96) = 0u;
    *(v12 + 112) = 0u;
    *(v12 + 128) = 0u;
    *(v12 + 144) = 0;
    *(v12 + 152) = 1;
    *(v12 + 160) = 0;
    *&v99 = v12;
  }

  *(v12 + 56) = v18;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8385D0);
  LOBYTE(v62) = 12;
  *&v58 = sub_182270BA4();
  sub_182AD3FF8();
  v19 = v82;
  if (!v12)
  {
    type metadata accessor for PathParameters.InterfacePreferenceValues.InterfacePreferenceValuesBacking();
    v12 = swift_allocObject();
    *(v12 + 16) = 0u;
    *(v12 + 32) = 0u;
    *(v12 + 48) = 0u;
    *(v12 + 64) = 0u;
    *(v12 + 80) = 0u;
    *(v12 + 96) = 0u;
    *(v12 + 112) = 0u;
    *(v12 + 128) = 0u;
    *(v12 + 144) = 0;
    *(v12 + 152) = 1;
    *(v12 + 160) = 0;
    *&v99 = v12;
  }

  *(v12 + 64) = v19;

  LOBYTE(v62) = 13;
  sub_182AD3FF8();
  v20 = v82;
  if (!v12)
  {
    type metadata accessor for PathParameters.InterfacePreferenceValues.InterfacePreferenceValuesBacking();
    v12 = swift_allocObject();
    *(v12 + 16) = 0u;
    *(v12 + 32) = 0u;
    *(v12 + 48) = 0u;
    *(v12 + 64) = 0u;
    *(v12 + 80) = 0u;
    *(v12 + 96) = 0u;
    *(v12 + 112) = 0u;
    *(v12 + 128) = 0u;
    *(v12 + 144) = 0;
    *(v12 + 152) = 1;
    *(v12 + 160) = 0;
    *&v99 = v12;
  }

  *(v12 + 72) = v20;

  LOBYTE(v62) = 14;
  sub_182AD3FF8();
  v21 = v82;
  if (!v12)
  {
    type metadata accessor for PathParameters.InterfacePreferenceValues.InterfacePreferenceValuesBacking();
    v12 = swift_allocObject();
    *(v12 + 16) = 0u;
    *(v12 + 32) = 0u;
    *(v12 + 48) = 0u;
    *(v12 + 64) = 0u;
    *(v12 + 80) = 0u;
    *(v12 + 96) = 0u;
    *(v12 + 112) = 0u;
    *(v12 + 128) = 0u;
    *(v12 + 144) = 0;
    *(v12 + 152) = 1;
    *(v12 + 160) = 0;
    *&v99 = v12;
  }

  *(v12 + 80) = v21;

  LOBYTE(v62) = 15;
  sub_182AD3FF8();
  v22 = v82;
  if (!v12)
  {
    type metadata accessor for PathParameters.InterfacePreferenceValues.InterfacePreferenceValuesBacking();
    v12 = swift_allocObject();
    *(v12 + 16) = 0u;
    *(v12 + 32) = 0u;
    *(v12 + 48) = 0u;
    *(v12 + 64) = 0u;
    *(v12 + 80) = 0u;
    *(v12 + 96) = 0u;
    *(v12 + 112) = 0u;
    *(v12 + 128) = 0u;
    *(v12 + 144) = 0;
    *(v12 + 152) = 1;
    *(v12 + 160) = 0;
    *&v99 = v12;
  }

  *(v12 + 88) = v22;

  LOBYTE(v62) = 16;
  sub_182AD3FF8();
  v23 = v82;
  if (!v12)
  {
    type metadata accessor for PathParameters.InterfacePreferenceValues.InterfacePreferenceValuesBacking();
    v12 = swift_allocObject();
    *(v12 + 16) = 0u;
    *(v12 + 32) = 0u;
    *(v12 + 48) = 0u;
    *(v12 + 64) = 0u;
    *(v12 + 80) = 0u;
    *(v12 + 96) = 0u;
    *(v12 + 112) = 0u;
    *(v12 + 128) = 0u;
    *(v12 + 144) = 0;
    *(v12 + 152) = 1;
    *(v12 + 160) = 0;
    *&v99 = v12;
    goto LABEL_39;
  }

  v24 = *(v12 + 152);
  *&v62 = v82;
  if (v24)
  {
LABEL_39:
    *(v12 + 96) = v23;

    LOBYTE(v62) = 17;
    sub_182AD3FF8();
    v30 = v82;
    v31 = v55;
    if (!v12)
    {
      type metadata accessor for PathParameters.InterfacePreferenceValues.InterfacePreferenceValuesBacking();
      v12 = swift_allocObject();
      *(v12 + 16) = 0u;
      *(v12 + 32) = 0u;
      *(v12 + 48) = 0u;
      *(v12 + 64) = 0u;
      *(v12 + 80) = 0u;
      *(v12 + 96) = 0u;
      *(v12 + 112) = 0u;
      *(v12 + 128) = 0u;
      *(v12 + 144) = 0;
      *(v12 + 152) = 1;
      *(v12 + 160) = 0;
      *&v99 = v12;
    }

    *(v12 + 104) = v30;

    v32 = v60;
    v33 = v61;
    LOBYTE(v62) = 18;
    sub_182AD3FF8();
    v34 = v82;
    if (!v12)
    {
      type metadata accessor for PathParameters.InterfacePreferenceValues.InterfacePreferenceValuesBacking();
      v12 = swift_allocObject();
      *(v12 + 16) = 0u;
      *(v12 + 32) = 0u;
      *(v12 + 48) = 0u;
      *(v12 + 64) = 0u;
      *(v12 + 80) = 0u;
      *(v12 + 96) = 0u;
      *(v12 + 112) = 0u;
      *(v12 + 128) = 0u;
      *(v12 + 144) = 0;
      *(v12 + 152) = 1;
      *(v12 + 160) = 0;
      *&v99 = v12;
    }

    *(v12 + 112) = v34;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B878);
    LOBYTE(v62) = 19;
    sub_182270C28();
    sub_182AD3FF8();
    v62 = v82;
    LOBYTE(v63) = v83;
    sub_182269AC0(&v62);
    LOBYTE(v82) = 8;
    v35 = sub_182AD3FC8();
    v37 = v36;

    *(&v99 + 1) = v35;
    *&v100 = v37;
    LOBYTE(v82) = 9;
    v38 = sub_182AD3FC8();
    v40 = v39;

    *(&v100 + 1) = v38;
    *&v101[0] = v40;
    type metadata accessor for Endpoint(0);
    LOBYTE(v82) = 10;
    sub_181E7EC38(&qword_1EA836C68, 255, type metadata accessor for Endpoint);
    sub_182AD3FF8();
    (*(v59 + 8))(v33, v32);

    *(&v101[2] + 1) = v73;
    v41 = v57;
    v42 = v101[1];
    v70 = v101[0];
    v71 = v101[1];
    v43 = v101[2];
    v72 = v101[2];
    v44 = v98[1];
    v45 = v98[2];
    v66 = v98[1];
    v67 = v98[2];
    v47 = v99;
    v46 = v100;
    v68 = v99;
    v69 = v100;
    v48 = v95;
    v49 = v96;
    v62 = v95;
    v63 = v96;
    v51 = v97;
    v50 = v98[0];
    v64 = v97;
    v65 = v98[0];
    v57[8] = v101[0];
    v41[9] = v42;
    v41[10] = v43;
    v41[4] = v44;
    v41[5] = v45;
    v41[6] = v47;
    v41[7] = v46;
    *v41 = v48;
    v41[1] = v49;
    v41[2] = v51;
    v41[3] = v50;
    sub_181A41E20(&v62, &v82);
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v103);
    v90[0] = v101[0];
    v90[1] = v101[1];
    v90[2] = v101[2];
    v86 = v98[1];
    v87 = v98[2];
    v88 = v99;
    v89 = v100;
    v82 = v95;
    v83 = v96;
    v84 = v97;
    v85 = v98[0];
    return sub_181A41E7C(&v82);
  }

  v25 = *(v12 + 136);
  v26 = *(v12 + 144);
  v53 = v82;

  result = sub_18226E164(&v62, v25, v26);
  v27 = v62;
  v28 = *(v62 + 24);
  if (v28 < result)
  {
    __break(1u);
  }

  else
  {
    v29 = result;
    if ((result & 0x8000000000000000) == 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1820E5F10();
        v27 = v62;
      }

      sub_181B64818(v29, v28, (v27 + 16), v27 + 40, v102);
      sub_18226E660(v29, v28, (v27 + 16), (v27 + 40));

      v23 = v53;
      goto LABEL_39;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_181E7DEAC()
{
  result = qword_1EA836C80;
  if (!qword_1EA836C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836C80);
  }

  return result;
}

uint64_t sub_181E7DF00@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83B880);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_181E772C0();
  sub_182AD45E8();
  if (!v2)
  {
    v36 = 0;
    v9 = sub_182AD4038();
    v35 = 1;
    v28 = sub_182AD4058();
    v34 = 2;
    v10 = sub_182AD3FE8();
    if (v10 <= 4)
    {
      v11 = 0x302010400uLL >> (8 * v10);
    }

    else
    {
      v11 = 5;
    }

    v27 = v11;
    v33 = 3;
    v12 = sub_182AD3FE8();
    if (v12 <= 7)
    {
      v13 = 0x403050201050500uLL >> (8 * v12);
    }

    else
    {
      v13 = 5;
    }

    v32 = 7;
    v26 = sub_182AD4038();
    v31 = 6;
    v15 = sub_182AD4038();
    if (v15 == 2)
    {
      v16 = 2;
    }

    else
    {
      v16 = v15 == 1;
    }

    v25 = v16;
    v30 = 4;
    v17 = sub_182AD3FE8();
    if (v17 <= 4)
    {
      v18 = 0x302010400uLL >> (8 * v17);
    }

    else
    {
      v18 = 5;
    }

    v24 = v18;
    v29 = 5;
    v19 = sub_182AD3FE8();
    (*(v6 + 8))(v8, v5);
    if (v19 >= 8)
    {
      v20 = 5;
    }

    else
    {
      v20 = 0x403050201050500uLL >> (8 * v19);
    }

    v21 = v27;
    *a2 = v28;
    *(a2 + 4) = v21;
    *(a2 + 5) = v13;
    v22 = v24;
    *(a2 + 6) = v25;
    *(a2 + 8) = v22;
    *(a2 + 9) = v20;
    *(a2 + 10) = v9;
    *(a2 + 11) = v26;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_181E7E2C0(uint64_t a1)
{
  v2 = sub_181E772C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

unint64_t sub_181E7E320()
{
  result = qword_1EA836C98;
  if (!qword_1EA836C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836C98);
  }

  return result;
}

uint64_t sub_181E7E374@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83B898);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  v23 = 1;
  v22 = 0;
  if (nw_is_dispatch_allowed())
  {
    if (qword_1ED4106F0 != -1)
    {
      swift_once();
    }
  }

  else
  {
    sub_181A543CC(&v24);
  }

  v26 = v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_181E74980();
  sub_182AD45E8();
  if (!v2)
  {
    v29 = 0;
    sub_181E7E6C0();
    sub_182AD3FF8();
    v24 = v21;
    v28 = 1;
    sub_182AD3FF8();
    v25 = v20;
    v27 = 2;
    sub_182AD3FF8();
    v9 = v19;
    v17 = v18;
    v26 = 0;
    LOBYTE(v18) = 3;
    v10 = sub_182AD4068();
    v22 = 0;
    LOBYTE(v18) = 4;
    HIDWORD(v16) = sub_182AD4018();
    LOBYTE(v18) = 5;
    v12 = sub_182AD4058();
    (*(v6 + 8))(v8, v5);
    v13 = v26;
    v14 = v22;
    v15 = v25;
    *a2 = v24;
    *(a2 + 16) = v15;
    *(a2 + 32) = v17;
    *(a2 + 40) = v9;
    *(a2 + 48) = v13;
    *(a2 + 56) = v10;
    *(a2 + 64) = v14;
    *(a2 + 68) = HIDWORD(v16);
    *(a2 + 72) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_181E7E6C0()
{
  result = qword_1EA836CB0;
  if (!qword_1EA836CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836CB0);
  }

  return result;
}

uint64_t SystemUUID.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_182AD45C8();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838C80);
    sub_181E74A64(&unk_1EA836C28);
    sub_182AD4298();
    v6 = *(v7[6] + 32);

    __swift_destroy_boxed_opaque_existential_1(v7);
    *a2 = v6;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_181E7E854(uint64_t a1)
{
  v2 = sub_181E74980();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

unint64_t sub_181E7E890()
{
  result = qword_1EA836C90;
  if (!qword_1EA836C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836C90);
  }

  return result;
}

unint64_t sub_181E7E8E4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83B8B0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_181E75DB0();
  sub_182AD45E8();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = 0;
  v7 = sub_182AD4038();
  v20 = 4;
  v8 = sub_182AD4048();
  v19 = 1;
  v9 = sub_182AD4038();
  if (v9 == 2)
  {
    v10 = 2;
  }

  else
  {
    v10 = v9 == 1;
  }

  v18 = 2;
  v12 = sub_182AD4038();
  v16 = v10;
  v17 = 3;
  HIDWORD(v15) = sub_182AD4038();
  (*(v4 + 8))(v6, v3);
  v13 = sub_181E7EB7C(HIDWORD(v15));
  if (v13 == 6)
  {
    v14 = 0;
  }

  else
  {
    v14 = v13;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return (v7 << 24) | (v8 << 32) | (v14 << 16) | (v12 << 8) | v16;
}

unint64_t sub_181E7EB30@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_181E7E8E4(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 2) = BYTE2(result);
    *(a2 + 3) = BYTE3(result);
    *(a2 + 4) = WORD2(result);
  }

  return result;
}

uint64_t sub_181E7EB7C(uint64_t result)
{
  if (result == 100)
  {
    v1 = 4;
  }

  else
  {
    v1 = 6;
  }

  if (result == 101)
  {
    v2 = 5;
  }

  else
  {
    v2 = v1;
  }

  if (result >= 4u)
  {
    return v2;
  }

  else
  {
    return result;
  }
}

unint64_t sub_181E7EBA8()
{
  result = qword_1EA836C58;
  if (!qword_1EA836C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836C58);
  }

  return result;
}

uint64_t sub_181E7EBFC(uint64_t a1)
{
  v2 = sub_181E76D2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_181E7EC38(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_181E7EC80(uint64_t a1)
{
  v2 = sub_181E75F5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

unint64_t sub_181E7ECBC()
{
  result = qword_1EA836CC0;
  if (!qword_1EA836CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836CC0);
  }

  return result;
}

uint64_t __nw_http_redirect_options_set_handler_block_invoke(uint64_t a1, void **a2)
{
  v4 = _Block_copy(*(a1 + 40));
  v5 = *a2;
  *a2 = v4;

  objc_storeStrong(a2 + 1, *(a1 + 32));
  return 1;
}

void nw_parameters_set_expected_workload(char *a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    _nw_parameters_set_expected_workload(a1, a2);
    return;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_set_expected_workload";
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
        v12 = "nw_parameters_set_expected_workload";
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
            v12 = "nw_parameters_set_expected_workload";
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
        v12 = "nw_parameters_set_expected_workload";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_set_expected_workload";
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

uint64_t __nw_http_authentication_options_copy_challenge_handler_block_invoke(uint64_t a1, const void **a2)
{
  v3 = _Block_copy(*a2);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 1;
}

uint64_t nw_http_authentication_options_copy_appsso_h1_fallback_headers(void *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = nw_protocol_copy_http_authentication_definition_onceToken;
    v4 = v1;
    if (v3 != -1)
    {
      dispatch_once(&nw_protocol_copy_http_authentication_definition_onceToken, &__block_literal_global_38);
    }

    v5 = nw_protocol_options_matches_definition(v4, nw_protocol_copy_http_authentication_definition_http_authentication_definition);

    if (v5)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v25 = 0;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __nw_http_authentication_options_copy_appsso_h1_fallback_headers_block_invoke;
      v21[3] = &unk_1E6A3A858;
      v21[4] = buf;
      nw_protocol_options_access_handle(v4, v21);
      v6 = *(*&buf[8] + 24);
      _Block_object_dispose(buf, 8);
      goto LABEL_6;
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_authentication_options_copy_appsso_h1_fallback_headers";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (__nwlog_fault(v9, &type, &v22))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_authentication_options_copy_appsso_h1_fallback_headers";
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s protocol options are not http_authentication", buf, 0xCu);
        }

LABEL_38:

        goto LABEL_39;
      }

      if (v22 != 1)
      {
        v10 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_authentication_options_copy_appsso_h1_fallback_headers";
          _os_log_impl(&dword_181A37000, v10, v20, "%{public}s protocol options are not http_authentication, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_38;
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
          *&buf[4] = "nw_http_authentication_options_copy_appsso_h1_fallback_headers";
          _os_log_impl(&dword_181A37000, v10, v17, "%{public}s protocol options are not http_authentication, no backtrace", buf, 0xCu);
        }

        goto LABEL_38;
      }

      if (v18)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_authentication_options_copy_appsso_h1_fallback_headers";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s protocol options are not http_authentication, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_26;
    }
  }

  else
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_authentication_options_copy_appsso_h1_fallback_headers";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (__nwlog_fault(v9, &type, &v22))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_authentication_options_copy_appsso_h1_fallback_headers";
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null options", buf, 0xCu);
        }

        goto LABEL_38;
      }

      if (v22 != 1)
      {
        v10 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_authentication_options_copy_appsso_h1_fallback_headers";
          _os_log_impl(&dword_181A37000, v10, v19, "%{public}s called with null options, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_38;
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
          *&buf[4] = "nw_http_authentication_options_copy_appsso_h1_fallback_headers";
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null options, no backtrace", buf, 0xCu);
        }

        goto LABEL_38;
      }

      if (v16)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_authentication_options_copy_appsso_h1_fallback_headers";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_26:

      free(backtrace_string);
    }
  }

LABEL_39:
  if (v9)
  {
    free(v9);
  }

  v6 = 0;
LABEL_6:

  return v6;
}

void sub_181E7F6F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *nw_http_client_options_copy_retry_with_h1_handler(void *a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = nw_protocol_copy_http_client_definition_onceToken;
    v4 = v1;
    if (v3 != -1)
    {
      dispatch_once(&nw_protocol_copy_http_client_definition_onceToken, &__block_literal_global_85);
    }

    v5 = nw_protocol_options_matches_definition(v4, nw_protocol_copy_http_client_definition_definition);

    if (v5)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v25 = __Block_byref_object_copy__7;
      v26 = __Block_byref_object_dispose__8;
      v27 = 0;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __nw_http_client_options_copy_retry_with_h1_handler_block_invoke;
      v21[3] = &unk_1E6A3A858;
      v21[4] = buf;
      nw_protocol_options_access_handle(v4, v21);
      v6 = _Block_copy(*(*&buf[8] + 40));
      _Block_object_dispose(buf, 8);

      goto LABEL_6;
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_client_options_copy_retry_with_h1_handler";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (__nwlog_fault(v9, &type, &v22))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_client_options_copy_retry_with_h1_handler";
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s protocol options are not http_client", buf, 0xCu);
        }

LABEL_38:

        goto LABEL_39;
      }

      if (v22 != 1)
      {
        v10 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_client_options_copy_retry_with_h1_handler";
          _os_log_impl(&dword_181A37000, v10, v20, "%{public}s protocol options are not http_client, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_38;
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
          *&buf[4] = "nw_http_client_options_copy_retry_with_h1_handler";
          _os_log_impl(&dword_181A37000, v10, v17, "%{public}s protocol options are not http_client, no backtrace", buf, 0xCu);
        }

        goto LABEL_38;
      }

      if (v18)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_client_options_copy_retry_with_h1_handler";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s protocol options are not http_client, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_26;
    }
  }

  else
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_client_options_copy_retry_with_h1_handler";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (__nwlog_fault(v9, &type, &v22))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_client_options_copy_retry_with_h1_handler";
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null options", buf, 0xCu);
        }

        goto LABEL_38;
      }

      if (v22 != 1)
      {
        v10 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_client_options_copy_retry_with_h1_handler";
          _os_log_impl(&dword_181A37000, v10, v19, "%{public}s called with null options, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_38;
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
          *&buf[4] = "nw_http_client_options_copy_retry_with_h1_handler";
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null options, no backtrace", buf, 0xCu);
        }

        goto LABEL_38;
      }

      if (v16)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_client_options_copy_retry_with_h1_handler";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_26:

      free(backtrace_string);
    }
  }

LABEL_39:
  if (v9)
  {
    free(v9);
  }

  v6 = 0;
LABEL_6:

  return v6;
}

void sub_181E7FCA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __nw_http_client_options_copy_retry_with_h1_handler_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = _Block_copy(*(a2 + 8));
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 1;
}

uint64_t nw_protocol_http_joining_create(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http_joining_create";
    v12 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v20 = 0;
    if (__nwlog_fault(v12, &type, &v20))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v13 = __nwlog_obj();
        v14 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_http_joining_create";
          v15 = "%{public}s called with null parameters";
LABEL_35:
          _os_log_impl(&dword_181A37000, v13, v14, v15, buf, 0xCu);
        }
      }

      else if (v20 == 1)
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
            *&buf[4] = "nw_protocol_http_joining_create";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_36;
        }

        if (v18)
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_http_joining_create";
          v15 = "%{public}s called with null parameters, no backtrace";
          goto LABEL_35;
        }
      }

      else
      {
        v13 = __nwlog_obj();
        v14 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_http_joining_create";
          v15 = "%{public}s called with null parameters, backtrace limit exceeded";
          goto LABEL_35;
        }
      }
    }

LABEL_36:
    if (v12)
    {
      free(v12);
    }

    return 0;
  }

  v5 = malloc_type_calloc(1uLL, 0x128uLL, 0xF4C48D6BuLL);
  v6 = v5;
  if (v5)
  {
    v5[36] = 0;
    *(v5 + 16) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 14) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 12) = 0u;
    *(v5 + 13) = 0u;
    *(v5 + 10) = 0u;
    *(v5 + 11) = 0u;
    *(v5 + 8) = 0u;
    *(v5 + 9) = 0u;
    *(v5 + 6) = 0u;
    *(v5 + 7) = 0u;
    *(v5 + 4) = 0u;
    *(v5 + 5) = 0u;
    *(v5 + 2) = 0u;
    *(v5 + 3) = 0u;
    *v5 = 0u;
    *(v5 + 1) = 0u;
LABEL_7:
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2000000000;
    v23 = v6;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 0x40000000;
    aBlock[2] = __nw_protocol_http_joining_create_block_invoke;
    aBlock[3] = &unk_1E6A2E528;
    aBlock[4] = buf;
    v6[22] = _Block_copy(aBlock);
    _Block_object_dispose(buf, 8);
    logging_disabled = _nw_parameters_get_logging_disabled(a4);
    if (logging_disabled)
    {
      v11 = 2;
    }

    else
    {
      v11 = 0;
    }

    *(v6 + 294) = *(v6 + 294) & 0xFD | v11;
    if (!logging_disabled && gLogDatapath == 1)
    {
      v16 = __nwlog_obj();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        *&buf[4] = "nw_protocol_http_joining_create";
        *&buf[12] = 2082;
        *&buf[14] = v6 + 26;
        *&buf[22] = 2080;
        v23 = " ";
        _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalled", buf, 0x20u);
      }
    }

    if (nw_protocol_http_joining_identifier::onceToken != -1)
    {
      dispatch_once(&nw_protocol_http_joining_identifier::onceToken, &__block_literal_global_22768);
    }

    v6[2] = &nw_protocol_http_joining_identifier::protocol_identifier;
    if (nw_protocol_http_joining_get_callbacks(void)::onceToken != -1)
    {
      dispatch_once(&nw_protocol_http_joining_get_callbacks(void)::onceToken, &__block_literal_global_20_22769);
    }

    v6[3] = &nw_protocol_http_joining_get_callbacks(void)::protocol_callbacks;
    v6[5] = v6;
    if (nw_protocol_http_joining_get_listen_callbacks(void)::onceToken[0] != -1)
    {
      dispatch_once(nw_protocol_http_joining_get_listen_callbacks(void)::onceToken, &__block_literal_global_39_22770);
    }

    v6[8] = &nw_protocol_http_joining_get_listen_callbacks(void)::listen_protocol_callbacks;
    v6[11] = v6;
    *(v6 + 146) = 0;
    return v6;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  *&buf[4] = "nw_protocol_http_joining_create";
  *&buf[12] = 2048;
  *&buf[14] = 1;
  *&buf[22] = 2048;
  v23 = 296;
  v7 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort(v7);
  if (!result)
  {
    free(v7);
    MEMORY[0x120] = 0;
    MEMORY[0x110] = 0u;
    MEMORY[0x100] = 0u;
    MEMORY[0xF0] = 0u;
    MEMORY[0xE0] = 0u;
    MEMORY[0xD0] = 0u;
    MEMORY[0xB0] = 0u;
    MEMORY[0xA0] = 0u;
    MEMORY[0x90] = 0u;
    MEMORY[0x80] = 0u;
    MEMORY[0x70] = 0u;
    MEMORY[0x60] = 0u;
    MEMORY[0x50] = 0u;
    MEMORY[0x40] = 0u;
    MEMORY[0x30] = 0u;
    MEMORY[0x20] = 0u;
    MEMORY[0x10] = 0u;
    MEMORY[0] = 0u;
    MEMORY[0x68] = 0;
    MEMORY[0x78] = 0;
    MEMORY[0x90] = 0;
    MEMORY[0x98] = 0;
    MEMORY[0xA0] = 0;
    MEMORY[0xA8] = 0;
    MEMORY[0xC8] = 0;
    MEMORY[0xC0] = 0;
    MEMORY[0xB8] = 0;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http_joining_create";
    v9 = _os_log_send_and_compose_impl();
    result = __nwlog_should_abort(v9);
    if (!result)
    {
      free(v9);
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t nw_protocol_http_connection_state_create(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http_connection_state_create";
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
          *buf = 136446210;
          *&buf[4] = "nw_protocol_http_connection_state_create";
          v13 = "%{public}s called with null parameters";
LABEL_29:
          _os_log_impl(&dword_181A37000, v11, v12, v13, buf, 0xCu);
        }
      }

      else if (v18 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v11 = __nwlog_obj();
        v12 = type;
        v16 = os_log_type_enabled(v11, type);
        if (backtrace_string)
        {
          if (v16)
          {
            *buf = 136446466;
            *&buf[4] = "nw_protocol_http_connection_state_create";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_30;
        }

        if (v16)
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_http_connection_state_create";
          v13 = "%{public}s called with null parameters, no backtrace";
          goto LABEL_29;
        }
      }

      else
      {
        v11 = __nwlog_obj();
        v12 = type;
        if (os_log_type_enabled(v11, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_http_connection_state_create";
          v13 = "%{public}s called with null parameters, backtrace limit exceeded";
          goto LABEL_29;
        }
      }
    }

LABEL_30:
    if (v10)
    {
      free(v10);
    }

    return 0;
  }

  v4 = malloc_type_calloc(1uLL, 0xE0uLL, 0x845F7ADCuLL);
  v5 = v4;
  if (v4)
  {
    v4[12] = 0u;
    v4[13] = 0u;
    v4[10] = 0u;
    v4[11] = 0u;
    v4[8] = 0u;
    v4[9] = 0u;
    v4[6] = 0u;
    v4[7] = 0u;
    v4[4] = 0u;
    v4[5] = 0u;
    v4[2] = 0u;
    v4[3] = 0u;
    v6 = v4 + 104;
    *v4 = 0u;
    v4[1] = 0u;
    goto LABEL_7;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  *&buf[4] = "nw_protocol_http_connection_state_create";
  *&buf[12] = 2048;
  *&buf[14] = 1;
  *&buf[22] = 2048;
  v21 = 224;
  v7 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort(v7);
  if (!result)
  {
    free(v7);
    MEMORY[0xD0] = 0u;
    MEMORY[0xC0] = 0u;
    MEMORY[0xB0] = 0u;
    MEMORY[0xA0] = 0u;
    MEMORY[0x90] = 0u;
    MEMORY[0x80] = 0u;
    MEMORY[0x70] = 0u;
    MEMORY[0x60] = 0u;
    MEMORY[0x50] = 0u;
    MEMORY[0x40] = 0u;
    MEMORY[0x30] = 0u;
    MEMORY[0x20] = 0u;
    MEMORY[0x10] = 0u;
    MEMORY[0] = 0u;
    MEMORY[0xC8] = 0;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http_connection_state_create";
    v9 = _os_log_send_and_compose_impl();
    result = __nwlog_should_abort(v9);
    if (!result)
    {
      free(v9);
      v6 = 104;
      if (MEMORY[0xC6])
      {
LABEL_8:
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2000000000;
        v21 = v5;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 0x40000000;
        aBlock[2] = __nw_protocol_http_connection_state_create_block_invoke;
        aBlock[3] = &unk_1E6A39DB8;
        aBlock[4] = buf;
        v5[27] = _Block_copy(aBlock);
        _Block_object_dispose(buf, 8);
        if (nw_protocol_http_connection_state_identifier::onceToken[0] != -1)
        {
          dispatch_once(nw_protocol_http_connection_state_identifier::onceToken, &__block_literal_global_73978);
        }

        v5[2] = &nw_protocol_http_connection_state_identifier::protocol_identifier;
        if (nw_protocol_http_connection_state_get_callbacks(void)::onceToken != -1)
        {
          dispatch_once(&nw_protocol_http_connection_state_get_callbacks(void)::onceToken, &__block_literal_global_18_73979);
        }

        v5[3] = &nw_protocol_http_connection_state_get_callbacks(void)::protocol_callbacks;
        v5[5] = v5;
        v5[8] = v6;
        nw_protocol_plugin_name_set_callbacks(v5, nw_protocol_http_connection_state_create::$_0::__invoke);
        return v5;
      }

LABEL_7:
      if (gLogDatapath == 1)
      {
        v14 = __nwlog_obj();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446722;
          *&buf[4] = "nw_protocol_http_connection_state_create";
          *&buf[12] = 2082;
          *&buf[14] = v5 + 114;
          *&buf[22] = 2080;
          v21 = " ";
          _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalled", buf, 0x20u);
        }
      }

      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t nw_protocol_http_joining_get_parameters(nw_protocol *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v15 = "nw_protocol_http_joining_get_parameters";
    v4 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v12 = 0;
    if (!__nwlog_fault(v4, &type, &v12))
    {
      goto LABEL_35;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_35;
      }

      *buf = 136446210;
      v15 = "nw_protocol_http_joining_get_parameters";
      v7 = "%{public}s called with null protocol";
    }

    else
    {
      if (v12 != 1)
      {
        v5 = __nwlog_obj();
        v6 = type;
        if (!os_log_type_enabled(v5, type))
        {
          goto LABEL_35;
        }

        *buf = 136446210;
        v15 = "nw_protocol_http_joining_get_parameters";
        v7 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_34;
      }

      backtrace_string = __nw_create_backtrace_string();
      v5 = __nwlog_obj();
      v6 = type;
      v9 = os_log_type_enabled(v5, type);
      if (backtrace_string)
      {
        if (v9)
        {
          *buf = 136446466;
          v15 = "nw_protocol_http_joining_get_parameters";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (!v4)
        {
          return 0;
        }

        goto LABEL_36;
      }

      if (!v9)
      {
        goto LABEL_35;
      }

      *buf = 136446210;
      v15 = "nw_protocol_http_joining_get_parameters";
      v7 = "%{public}s called with null protocol, no backtrace";
    }

LABEL_34:
    _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
    goto LABEL_35;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    v15 = "nw_protocol_http_joining_get_parameters";
    v4 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v12 = 0;
    if (!__nwlog_fault(v4, &type, &v12))
    {
      goto LABEL_35;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_35;
      }

      *buf = 136446210;
      v15 = "nw_protocol_http_joining_get_parameters";
      v7 = "%{public}s called with null http_joining";
      goto LABEL_34;
    }

    if (v12 != 1)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_35;
      }

      *buf = 136446210;
      v15 = "nw_protocol_http_joining_get_parameters";
      v7 = "%{public}s called with null http_joining, backtrace limit exceeded";
      goto LABEL_34;
    }

    v10 = __nw_create_backtrace_string();
    v5 = __nwlog_obj();
    v6 = type;
    v11 = os_log_type_enabled(v5, type);
    if (!v10)
    {
      if (!v11)
      {
        goto LABEL_35;
      }

      *buf = 136446210;
      v15 = "nw_protocol_http_joining_get_parameters";
      v7 = "%{public}s called with null http_joining, no backtrace";
      goto LABEL_34;
    }

    if (v11)
    {
      *buf = 136446466;
      v15 = "nw_protocol_http_joining_get_parameters";
      v16 = 2082;
      v17 = v10;
      _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null http_joining, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v10);
LABEL_35:
    if (!v4)
    {
      return 0;
    }

LABEL_36:
    free(v4);
    return 0;
  }

  result = handle[13];
  if (!result)
  {
    v3 = handle[6];

    return nw_protocol_get_parameters(v3);
  }

  return result;
}

uint64_t __Block_byref_object_copy__36(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(result + 48) = *(result + 48) & 0xFE | *(a2 + 48) & 1;
  *(a2 + 40) = 0;
  *(a2 + 48) &= ~1u;
  return result;
}

uint64_t ___ZL24nw_http_security_connectP25nw_protocol_http_securityP11nw_protocol_block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(*(a1 + 40) + 8);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ___ZL24nw_http_security_connectP25nw_protocol_http_securityP11nw_protocol_block_invoke_2;
  v5[3] = &__block_descriptor_tmp_45_29210;
  v3 = *(a1 + 48);
  v5[4] = *(a1 + 56);
  return (*(*(v1 + 40) + 16))(*(v1 + 40), *(v2 + 40), v3, *(a1 + 64), v5);
}

void ___ZL41nw_http_security_perform_url_filter_checkP25nw_protocol_http_securityP11nw_endpointP13nw_parametersU13block_pointerFvvE_block_invoke(uint64_t a1, int a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (nw_protocol_plugin_retry_end_async(*(a1 + 40) + 344))
  {
    if (a2 == 1)
    {
      v4 = *(*(a1 + 32) + 16);

      v4();
    }

    else
    {
      v6 = *(a1 + 40);
      if ((*(v6 + 198) & 1) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        v8 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO);
        v6 = *(a1 + 40);
        if (v8)
        {
          v13 = 136446722;
          v14 = "nw_http_security_perform_url_filter_check_block_invoke";
          v15 = 2082;
          v16 = (v6 + 114);
          v17 = 2080;
          v18 = " ";
          _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_INFO, "%{public}s %{public}s%sURL denied by filter", &v13, 0x20u);
          v6 = *(a1 + 40);
        }
      }

      nw_protocol_error(*(v6 + 48), v6);
      client_metadata_in_parameters = nw_http_messaging_options_find_or_create_client_metadata_in_parameters(*(a1 + 48), *(a1 + 40));
      if (client_metadata_in_parameters)
      {
        v10 = client_metadata_in_parameters;
        nw_http_client_metadata_set_client_error(client_metadata_in_parameters, 5);
        nw_protocol_disconnected(*(*(a1 + 40) + 48), *(a1 + 40));
        os_release(v10);
      }

      else
      {
        nw_protocol_disconnected(*(*(a1 + 40) + 48), *(a1 + 40));
      }
    }
  }

  else
  {
    v5 = *(a1 + 40);
    if ((v5[198] & 1) == 0 && gLogDatapath == 1)
    {
      v11 = __nwlog_obj();
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
      v5 = *(a1 + 40);
      if (v12)
      {
        v13 = 136446722;
        v14 = "nw_http_security_perform_url_filter_check_block_invoke";
        v15 = 2082;
        v16 = v5 + 114;
        v17 = 2080;
        v18 = " ";
        _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sDeferred destroy when coming back from callout", &v13, 0x20u);
        v5 = *(a1 + 40);
      }
    }

    nw_http_security_destroy(v5);
  }
}

void __nw_http_connection_state_storage_lookup_block_invoke_3(uint64_t a1)
{
  v46 = *MEMORY[0x1E69E9840];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v29 = 0;
    v30 = 0;
    v27 = 0;
    host_with_numeric_port = 0;
    v6 = *v38;
    v34 = v1;
    while (1)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v38 != v6)
        {
          objc_enumerationMutation(v1);
        }

        v10 = *(*(&v37 + 1) + 8 * i);
        if ([v10 serviceType] == 1)
        {
          v8 = [v10 alternateHost];
          v9 = host_with_numeric_port;
          host_with_numeric_port = nw_endpoint_create_host_with_numeric_port([v8 UTF8String], objc_msgSend(v10, "alternatePort"));
LABEL_6:

          continue;
        }

        if ([v10 serviceType] == -2)
        {
          v11 = [v10 alternateHost];
          v8 = [v11 dataUsingEncoding:1];

          if (v8)
          {
            v36 = 0;
            v12 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v8 options:0 error:&v36];
            v9 = v36;
            if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v13 = [v12 objectForKeyedSubscript:@"http3"];
              v14 = [v12 objectForKeyedSubscript:@"quic"];
              v15 = [v12 objectForKeyedSubscript:@"tls"];
              v35 = v14;
              if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v31 = v15;
                v16 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v13 options:0];
                v33 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v14 options:0];
                v17 = v31;
                v18 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:? options:?];
                v32 = v18;
                if (v16 && v33 && v18)
                {
                  loga = [v16 _createDispatchData];

                  v28 = [v33 _createDispatchData];
                  v19 = [v32 _createDispatchData];
                  v20 = v30;
                  v29 = v28;
                  v30 = v19;
                  v27 = loga;
                }

                else
                {
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  log = gLogObj;
                  if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136446210;
                    v42 = "nw_http_connection_state_storage_lookup_block_invoke";
                    _os_log_impl(&dword_181A37000, log, OS_LOG_TYPE_ERROR, "%{public}s failed to decode data", buf, 0xCu);
                  }

                  v20 = log;
                }
              }

              else
              {
                v17 = v15;
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v16 = gLogObj;
                if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136446210;
                  v42 = "nw_http_connection_state_storage_lookup_block_invoke";
                  _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_ERROR, "%{public}s failed to read dictionary", buf, 0xCu);
                }
              }

              v1 = v34;
            }

            else
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v13 = gLogObj;
              if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446466;
                v42 = "nw_http_connection_state_storage_lookup_block_invoke";
                v43 = 2112;
                v44 = v9;
                _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_ERROR, "%{public}s failed to deserialize data: %@", buf, 0x16u);
              }
            }
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v9 = gLogObj;
            if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446210;
              v42 = "nw_http_connection_state_storage_lookup_block_invoke_3";
              _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_ERROR, "%{public}s failed to serialize string", buf, 0xCu);
            }

            v8 = 0;
          }

          v4 = 1;
          goto LABEL_6;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v37 objects:v45 count:16];
      if (!v3)
      {
        goto LABEL_40;
      }
    }
  }

  v4 = 0;
  v29 = 0;
  v30 = 0;
  v27 = 0;
  host_with_numeric_port = 0;
LABEL_40:

  (*(*(a1 + 56) + 16))();
  if (v4)
  {
    v21 = *(*(a1 + 40) + 16);
    v22 = [*(a1 + 48) host];
    v23 = [*(a1 + 48) partition];
    [v21 removeHTTPAlternativeServiceEntriesWithHost:v22 partition:v23 port:objc_msgSend(*(a1 + 48) serviceType:{"port"), -2}];
  }
}

void nw_http_retry_deallocate_options(int a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a2)
  {

    free(a2);
    return;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_http_retry_deallocate_options";
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
        v12 = "nw_http_retry_deallocate_options";
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
            v12 = "nw_http_retry_deallocate_options";
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
        v12 = "nw_http_retry_deallocate_options";
        v6 = "%{public}s called with null allocated_handle, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_http_retry_deallocate_options";
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

void nw_http_cookie_deallocate_options(uint64_t a1, void **a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = *a2;
    *a2 = 0;

    v4 = a2[1];
    a2[1] = 0;

    v5 = a2[2];
    if (v5)
    {
      free(v5);
      a2[2] = 0;
    }

    v6 = a2[3];
    a2[3] = 0;

    free(a2);
    return;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_http_cookie_deallocate_options";
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
        v17 = "nw_http_cookie_deallocate_options";
        v11 = "%{public}s called with null allocated_handle";
LABEL_20:
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
            v17 = "nw_http_cookie_deallocate_options";
            v18 = 2082;
            v19 = backtrace_string;
            _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null allocated_handle, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_22;
        }

        if (!v13)
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v17 = "nw_http_cookie_deallocate_options";
        v11 = "%{public}s called with null allocated_handle, no backtrace";
        goto LABEL_20;
      }

      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v17 = "nw_http_cookie_deallocate_options";
        v11 = "%{public}s called with null allocated_handle, backtrace limit exceeded";
        goto LABEL_20;
      }
    }

LABEL_21:
  }

LABEL_22:
  if (v8)
  {
    free(v8);
  }
}

void nw_http_connection_state_deallocate_options(uint64_t a1, void **a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = *a2;
    *a2 = 0;

    free(a2);
    return;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_http_connection_state_deallocate_options";
  v5 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v5, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_http_connection_state_deallocate_options";
        v8 = "%{public}s called with null allocated_handle";
LABEL_18:
        _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
      }
    }

    else
    {
      if (v11 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v6 = __nwlog_obj();
        v7 = type;
        v10 = os_log_type_enabled(v6, type);
        if (backtrace_string)
        {
          if (v10)
          {
            *buf = 136446466;
            v14 = "nw_http_connection_state_deallocate_options";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null allocated_handle, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v10)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v14 = "nw_http_connection_state_deallocate_options";
        v8 = "%{public}s called with null allocated_handle, no backtrace";
        goto LABEL_18;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_http_connection_state_deallocate_options";
        v8 = "%{public}s called with null allocated_handle, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }
}

uint64_t nw_http_sniffing_allocate_options(void *a1)
{
  v1 = a1;
  v2 = malloc_type_calloc(1uLL, 4uLL, 0x534885DCuLL);
  if (v2)
  {
    goto LABEL_4;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v3 = gLogObj;
  os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
  v4 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v4);
  if (!result)
  {
    free(v4);
LABEL_4:

    return v2;
  }

  __break(1u);
  return result;
}

uint64_t nw_http_client_allocate_options(void *a1)
{
  v1 = a1;
  v2 = malloc_type_calloc(1uLL, 0x10uLL, 0xAF24BA8BuLL);
  if (v2)
  {
    goto LABEL_4;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v3 = gLogObj;
  os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
  v4 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v4);
  if (!result)
  {
    free(v4);
LABEL_4:

    return v2;
  }

  __break(1u);
  return result;
}

uint64_t __nw_http_client_options_set_resend_handler_block_invoke(uint64_t a1, void **a2)
{
  v3 = _Block_copy(*(a1 + 32));
  v4 = *a2;
  *a2 = v3;

  return 1;
}

uint64_t __nw_http_client_options_set_retry_with_h1_handler_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = _Block_copy(*(a1 + 32));
  v4 = *(a2 + 8);
  *(a2 + 8) = v3;

  return 1;
}

id nw_connection_create_without_parameters_copy(void *a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      v6 = nw_connection_create_with_id(v3, v4, 0, 0);
      goto LABEL_4;
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_connection_create_without_parameters_copy";
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
          v24 = "nw_connection_create_without_parameters_copy";
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null parameters", buf, 0xCu);
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
          v24 = "nw_connection_create_without_parameters_copy";
          _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
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
          v24 = "nw_connection_create_without_parameters_copy";
          _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v18)
      {
        *buf = 136446466;
        v24 = "nw_connection_create_without_parameters_copy";
        v25 = 2082;
        v26 = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_24;
    }
  }

  else
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_connection_create_without_parameters_copy";
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
          v24 = "nw_connection_create_without_parameters_copy";
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null endpoint", buf, 0xCu);
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
          v24 = "nw_connection_create_without_parameters_copy";
          _os_log_impl(&dword_181A37000, v10, v19, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
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
          v24 = "nw_connection_create_without_parameters_copy";
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v16)
      {
        *buf = 136446466;
        v24 = "nw_connection_create_without_parameters_copy";
        v25 = 2082;
        v26 = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
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

  v6 = 0;
LABEL_4:

  return v6;
}

uint64_t nw_http_encoding_options_get_type(void *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = nw_protocol_copy_http_encoding_definition_onceToken;
    v4 = v1;
    if (v3 != -1)
    {
      dispatch_once(&nw_protocol_copy_http_encoding_definition_onceToken, &__block_literal_global_40_76731);
    }

    v5 = nw_protocol_options_matches_definition(v4, nw_protocol_copy_http_encoding_definition_http_encoding_definition);

    if (v5)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v25 = 1;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __nw_http_encoding_options_get_type_block_invoke;
      v21[3] = &unk_1E6A3A858;
      v21[4] = buf;
      nw_protocol_options_access_handle(v4, v21);
      v6 = *(*&buf[8] + 24);
      _Block_object_dispose(buf, 8);
      goto LABEL_6;
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_encoding_options_get_type";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (__nwlog_fault(v9, &type, &v22))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_encoding_options_get_type";
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s protocol options are not http encoding", buf, 0xCu);
        }

LABEL_38:

        goto LABEL_39;
      }

      if (v22 != 1)
      {
        v10 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_encoding_options_get_type";
          _os_log_impl(&dword_181A37000, v10, v20, "%{public}s protocol options are not http encoding, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_38;
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
          *&buf[4] = "nw_http_encoding_options_get_type";
          _os_log_impl(&dword_181A37000, v10, v17, "%{public}s protocol options are not http encoding, no backtrace", buf, 0xCu);
        }

        goto LABEL_38;
      }

      if (v18)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_encoding_options_get_type";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s protocol options are not http encoding, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_26;
    }
  }

  else
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_encoding_options_get_type";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (__nwlog_fault(v9, &type, &v22))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_encoding_options_get_type";
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null options", buf, 0xCu);
        }

        goto LABEL_38;
      }

      if (v22 != 1)
      {
        v10 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_encoding_options_get_type";
          _os_log_impl(&dword_181A37000, v10, v19, "%{public}s called with null options, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_38;
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
          *&buf[4] = "nw_http_encoding_options_get_type";
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null options, no backtrace", buf, 0xCu);
        }

        goto LABEL_38;
      }

      if (v16)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_encoding_options_get_type";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_26:

      free(backtrace_string);
    }
  }

LABEL_39:
  if (v9)
  {
    free(v9);
  }

  v6 = 1;
LABEL_6:

  return v6;
}

void sub_181E82DB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void nw_http_redirect_deallocate_options(uint64_t a1, void **a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = *a2;
    *a2 = 0;

    v4 = a2[1];
    a2[1] = 0;

    free(a2);
    return;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_http_redirect_deallocate_options";
  v6 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v12 = 0;
  if (__nwlog_fault(v6, &type, &v12))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v15 = "nw_http_redirect_deallocate_options";
        v9 = "%{public}s called with null allocated_handle";
LABEL_18:
        _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
      }
    }

    else
    {
      if (v12 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v7 = __nwlog_obj();
        v8 = type;
        v11 = os_log_type_enabled(v7, type);
        if (backtrace_string)
        {
          if (v11)
          {
            *buf = 136446466;
            v15 = "nw_http_redirect_deallocate_options";
            v16 = 2082;
            v17 = backtrace_string;
            _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null allocated_handle, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v11)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v15 = "nw_http_redirect_deallocate_options";
        v9 = "%{public}s called with null allocated_handle, no backtrace";
        goto LABEL_18;
      }

      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v15 = "nw_http_redirect_deallocate_options";
        v9 = "%{public}s called with null allocated_handle, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }
}

void nw_http_authentication_deallocate_options(uint64_t a1, void **a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = *a2;
    *a2 = 0;

    v4 = a2[5];
    a2[5] = 0;

    v5 = a2[1];
    a2[1] = 0;

    v6 = a2[2];
    a2[2] = 0;

    v7 = a2[3];
    a2[3] = 0;

    v8 = a2[4];
    a2[4] = 0;

    free(a2);
    return;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_http_authentication_deallocate_options";
  v10 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (__nwlog_fault(v10, &type, &v16))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v19 = "nw_http_authentication_deallocate_options";
        v13 = "%{public}s called with null allocated_handle";
LABEL_18:
        _os_log_impl(&dword_181A37000, v11, v12, v13, buf, 0xCu);
      }
    }

    else
    {
      if (v16 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v11 = __nwlog_obj();
        v12 = type;
        v15 = os_log_type_enabled(v11, type);
        if (backtrace_string)
        {
          if (v15)
          {
            *buf = 136446466;
            v19 = "nw_http_authentication_deallocate_options";
            v20 = 2082;
            v21 = backtrace_string;
            _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null allocated_handle, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v15)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v19 = "nw_http_authentication_deallocate_options";
        v13 = "%{public}s called with null allocated_handle, no backtrace";
        goto LABEL_18;
      }

      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v19 = "nw_http_authentication_deallocate_options";
        v13 = "%{public}s called with null allocated_handle, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v10)
  {
    free(v10);
  }
}

uint64_t _nw_path_update_parameters_for_fallback(char *a1, char *a2)
{
  v3 = 0;
  if (a1 && a2)
  {
    v3 = sub_18220CB74(a2, a1);
  }

  return v3 & 1;
}

_BYTE *sub_181E83654(_BYTE *result, int a2)
{
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v2 = 3;
      if ((result[214] & 0x10) == 0)
      {
        goto LABEL_5;
      }
    }

    else
    {
      if (a2 != 4)
      {
        goto LABEL_10;
      }

      v2 = 4;
      if ((result[214] & 0x10) == 0)
      {
        goto LABEL_5;
      }
    }

LABEL_9:
    result[212] = v2;
    return result;
  }

  if (a2 == 1)
  {
    v2 = 1;
    if ((result[214] & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  if (a2 == 2)
  {
    v2 = 2;
    if ((result[214] & 0x10) == 0)
    {
LABEL_5:
      result[208] = v2;
      return result;
    }

    goto LABEL_9;
  }

LABEL_10:
  v3 = 208;
  if ((result[214] & 0x10) != 0)
  {
    v3 = 212;
  }

  result[v3] = 5;
  return result;
}

uint64_t nw_parameters_get_no_fullstack_fallback(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_no_fullstack_fallback(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_no_fullstack_fallback";
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
        v12 = "nw_parameters_get_no_fullstack_fallback";
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
            v12 = "nw_parameters_get_no_fullstack_fallback";
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
        v12 = "nw_parameters_get_no_fullstack_fallback";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_no_fullstack_fallback";
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

char *nw_path_fallback_should_not_use_timer(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_path_fallback_should_not_use_timer(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_fallback_should_not_use_timer";
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
        v16 = "nw_path_fallback_should_not_use_timer";
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
          v16 = "nw_path_fallback_should_not_use_timer";
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
        v16 = "nw_path_fallback_should_not_use_timer";
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
        v16 = "nw_path_fallback_should_not_use_timer";
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

char *_nw_path_fallback_should_not_use_timer(char *result)
{
  if (result)
  {
    v1 = &result[OBJC_IVAR____TtC7Network8__NWPath_path];
    v2 = result;
    swift_beginAccess();
    LODWORD(v1) = *(v1 + 39);

    return ((v1 >> 1) & 1);
  }

  return result;
}

char *nw_path_fallback_is_forced(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_path_fallback_is_forced(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_fallback_is_forced";
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
        v16 = "nw_path_fallback_is_forced";
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
          v16 = "nw_path_fallback_is_forced";
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
        v16 = "nw_path_fallback_is_forced";
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
        v16 = "nw_path_fallback_is_forced";
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

char *_nw_path_fallback_is_forced(char *result)
{
  if (result)
  {
    v1 = &result[OBJC_IVAR____TtC7Network8__NWPath_path];
    v2 = result;
    swift_beginAccess();
    LODWORD(v1) = *(v1 + 39);

    return ((v1 >> 2) & 1);
  }

  return result;
}

uint64_t nw_path_update_parameters_for_fallback(void *a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      updated = _nw_path_update_parameters_for_fallback(v3, v4);
      goto LABEL_4;
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_path_update_parameters_for_fallback";
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
          v24 = "nw_path_update_parameters_for_fallback";
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null parameters_to_update", buf, 0xCu);
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
          v24 = "nw_path_update_parameters_for_fallback";
          _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null parameters_to_update, backtrace limit exceeded", buf, 0xCu);
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
          v24 = "nw_path_update_parameters_for_fallback";
          _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null parameters_to_update, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v18)
      {
        *buf = 136446466;
        v24 = "nw_path_update_parameters_for_fallback";
        v25 = 2082;
        v26 = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null parameters_to_update, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_24;
    }
  }

  else
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_path_update_parameters_for_fallback";
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
          v24 = "nw_path_update_parameters_for_fallback";
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
          v24 = "nw_path_update_parameters_for_fallback";
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
          v24 = "nw_path_update_parameters_for_fallback";
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null path, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v16)
      {
        *buf = 136446466;
        v24 = "nw_path_update_parameters_for_fallback";
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

  updated = 0;
LABEL_4:

  return updated;
}