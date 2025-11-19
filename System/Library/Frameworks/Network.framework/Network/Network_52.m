void nw_protocol_inbound_data_finalizer(void *a1, uint64_t a2, void *a3)
{
  nw_protocol_data_finalizer(a3, a1, a2, a3 + 128);
}

uint64_t sub_181DA8DC8(uint64_t a1)
{

  v2 = sub_182AD3158();
  v4 = v3;
  swift_beginAccess();
  v5 = *(a1 + 16);
  if (*(v5 + 56) == v2 && *(v5 + 64) == v4)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_182AD4268();
  }

  return v7 & 1;
}

id _nw_protocol_options_copy_proxy_endpoint(uint64_t a1)
{
  v2 = *(*a1 + 136);

  swift_beginAccess();
  v3 = *(a1 + v2);

  return v3;
}

uint64_t nw_endpoint_get_url_path(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    url_path = _nw_endpoint_get_url_path(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_get_url_path";
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
        v16 = "nw_endpoint_get_url_path";
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
          v16 = "nw_endpoint_get_url_path";
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
        v16 = "nw_endpoint_get_url_path";
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
        v16 = "nw_endpoint_get_url_path";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  url_path = 0;
LABEL_3:

  return url_path;
}

uint64_t _nw_endpoint_get_url_path_0(void *a1)
{
  v2 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URLEndpoint();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC7Network8Endpoint_type;
  v9 = a1;
  swift_beginAccess();
  sub_181A546E0(a1 + v8, v4, type metadata accessor for Endpoint.EndpointType);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_181B2BEE4(v4, v7);
    v10 = sub_182AD2008();
    v12 = v11;
    v13 = OBJC_IVAR____TtC7Network8Endpoint_storageLock;
    os_unfair_lock_lock((*&v9[OBJC_IVAR____TtC7Network8Endpoint_storageLock] + 16));
    sub_181AB2BF0(v9, 15, v10, v12, &v15);

    os_unfair_lock_unlock((*&v9[v13] + 16));
    sub_181A5513C(v7, type metadata accessor for URLEndpoint);

    return v15;
  }

  else
  {

    sub_181A5513C(v4, type metadata accessor for Endpoint.EndpointType);
    return 0;
  }
}

uint64_t nw_endpoint_get_url_scheme(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    url_scheme = _nw_endpoint_get_url_scheme(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_get_url_scheme";
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
        v16 = "nw_endpoint_get_url_scheme";
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
          v16 = "nw_endpoint_get_url_scheme";
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
        v16 = "nw_endpoint_get_url_scheme";
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
        v16 = "nw_endpoint_get_url_scheme";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  url_scheme = 0;
LABEL_3:

  return url_scheme;
}

uint64_t sub_181DA962C(unint64_t a1, const char *a2, const char *a3, const char *a4)
{
  sub_1822463A8(a1, &v45);
  v7 = v45;
  v8 = v46;
  if (a2)
  {
    v9 = strlen(a2);
    if (v9)
    {
      v10 = 0;
      while ((a2[v10] & 0x80000000) == 0)
      {
        if (v9 == ++v10)
        {
          goto LABEL_6;
        }
      }

      v45 = a2;
      v46 = v9;
      v47 = sub_1822876F4;
      v48 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A5B0);
      sub_181AB3DCC(&qword_1EA83A5B8, &qword_1EA83A5B0);
      sub_182AD30A8();
      v11 = 0;
      v13 = 0xE000000000000000;
    }

    else
    {
LABEL_6:
      v11 = sub_182AD30B8();
      v13 = v12;
    }

    if (!_s7Network9HTTPFieldV12isValidValueySbSSFZ_0(v11, v13))
    {
      goto LABEL_39;
    }
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  if (a3)
  {
    v14 = strlen(a3);
    if (v14)
    {
      v15 = 0;
      while ((a3[v15] & 0x80000000) == 0)
      {
        if (v14 == ++v15)
        {
          goto LABEL_15;
        }
      }

      v45 = a3;
      v46 = v14;
      v47 = sub_1822876F4;
      v48 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A5B0);
      sub_181AB3DCC(&qword_1EA83A5B8, &qword_1EA83A5B0);
      sub_182AD30A8();
      a3 = 0;
      v17 = 0xE000000000000000;
    }

    else
    {
LABEL_15:
      a3 = sub_182AD30B8();
      v17 = v16;
    }

    if (!_s7Network9HTTPFieldV12isValidValueySbSSFZ_0(a3, v17))
    {
      goto LABEL_39;
    }
  }

  else
  {
    v17 = 0;
  }

  if (a4)
  {
    v18 = strlen(a4);
    if (v18)
    {
      v19 = 0;
      while ((a4[v19] & 0x80000000) == 0)
      {
        if (v18 == ++v19)
        {
          goto LABEL_24;
        }
      }

      v45 = a4;
      v46 = v18;
      v47 = sub_1822876F4;
      v48 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A5B0);
      sub_181AB3DCC(&qword_1EA83A5B8, &qword_1EA83A5B0);
      sub_182AD30A8();
      a4 = 0;
      v21 = 0xE000000000000000;
    }

    else
    {
LABEL_24:
      a4 = sub_182AD30B8();
      v21 = v20;
    }

    if (_s7Network9HTTPFieldV12isValidValueySbSSFZ_0(a4, v21))
    {
      v22 = a3;
      v23 = v8;
      v24 = v7;
      goto LABEL_29;
    }

LABEL_39:
    result = sub_182AD3EA8();
    __break(1u);
    return result;
  }

  v22 = a3;
  v23 = v8;
  v24 = v7;
  v21 = 0;
LABEL_29:
  if (v13)
  {
    v25 = v11;
  }

  else
  {
    v25 = 0;
  }

  if (v17)
  {
    v26 = v22;
  }

  else
  {
    v26 = 0;
  }

  if (v21)
  {
    v27 = a4;
  }

  else
  {
    v27 = 0;
  }

  v44 = v27;
  type metadata accessor for HTTPRequest.PseudoHeaderFields._Storage();
  v28 = swift_allocObject();
  *(v28 + 128) = 0u;
  *(v28 + 144) = 0u;
  *(v28 + 160) = 0u;
  *(v28 + 176) = 0u;
  *(v28 + 192) = 0u;
  *(v28 + 208) = 0u;
  *(v28 + 224) = 0u;
  *(v28 + 240) = 0u;
  *(v28 + 256) = 0u;
  *(v28 + 272) = 0u;
  *(v28 + 288) = 0;
  *(v28 + 16) = 0x646F6874656D3ALL;
  *(v28 + 24) = 0xE700000000000000;
  *(v28 + 32) = 0x646F6874656D3ALL;
  *(v28 + 40) = 0xE700000000000000;
  *(v28 + 48) = 0;
  *(v28 + 56) = v24;
  *(v28 + 64) = v23;
  v29 = vdup_n_s32(v13 == 0);
  v30.i64[0] = v29.u32[0];
  v30.i64[1] = v29.u32[1];
  v31 = vandq_s8(vcgezq_s64(vshlq_n_s64(v30, 0x3FuLL)), xmmword_182AE94B0);
  *(v28 + 88) = v31;
  *(v28 + 72) = v31;
  *(v28 + 104) = 0;
  *(v28 + 112) = v25;
  *(v28 + 120) = v13;
  sub_181D04D28(0, 0);
  v32 = *(v28 + 128);
  v33 = *(v28 + 136);
  v34 = vdup_n_s32(v17 == 0);
  v30.i64[0] = v34.u32[0];
  v30.i64[1] = v34.u32[1];
  v35 = vandq_s8(vcgezq_s64(vshlq_n_s64(v30, 0x3FuLL)), xmmword_182AE94A0);
  *(v28 + 128) = v35;
  *(v28 + 144) = v35;
  *(v28 + 160) = 0;
  *(v28 + 168) = v26;
  *(v28 + 176) = v17;
  sub_181D04D28(v32, v33);
  v36 = *(v28 + 184);
  v37 = *(v28 + 192);
  v38 = vdup_n_s32(v21 == 0);
  v30.i64[0] = v38.u32[0];
  v30.i64[1] = v38.u32[1];
  v39 = vandq_s8(vcgezq_s64(vshlq_n_s64(v30, 0x3FuLL)), xmmword_182AE94C0);
  *(v28 + 184) = v39;
  *(v28 + 200) = v39;
  *(v28 + 216) = 0;
  *(v28 + 224) = v44;
  *(v28 + 232) = v21;
  sub_181D04D28(v36, v37);
  v40 = *(v28 + 240);
  v41 = *(v28 + 248);
  *(v28 + 240) = 0u;
  *(v28 + 256) = 0u;
  *(v28 + 272) = 0u;
  *(v28 + 288) = 0;
  sub_181D04D28(v40, v41);
  HTTPFields.init(dictionaryLiteral:)(MEMORY[0x1E69E7CC0], &v45);
  v42 = v45;
  type metadata accessor for __NWHTTPRequest();
  result = swift_allocObject();
  *(result + 16) = v28;
  *(result + 24) = v42;
  return result;
}

uint64_t nw_quic_connection_copy_stream_metadata(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_metadata_is_quic_connection(v1))
  {
    v2 = _nw_quic_connection_copy_stream_metadata(v1);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_copy_stream_metadata";
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
        v14 = "nw_quic_connection_copy_stream_metadata";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(connection_metadata)";
LABEL_17:
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
            v14 = "nw_quic_connection_copy_stream_metadata";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_metadata_is_quic_connection(connection_metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_connection_copy_stream_metadata";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(connection_metadata), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_copy_stream_metadata";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(connection_metadata), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v5)
  {
    free(v5);
  }

  v2 = 0;
LABEL_3:

  return v2;
}

void nw_http_request_access_extended_connect_protocol(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
LABEL_3:
      _nw_http_request_access_extended_connect_protocol(v3, v5);

      return;
    }
  }

  else
  {
    v6 = __nwlog_obj();
    os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    v7 = _os_log_send_and_compose_impl();

    if (__nwlog_should_abort(v7))
    {
      goto LABEL_8;
    }

    free(v7);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  v8 = __nwlog_obj();
  os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  v9 = _os_log_send_and_compose_impl();

  if (!__nwlog_should_abort(v9))
  {
    free(v9);
    goto LABEL_3;
  }

LABEL_8:
  __break(1u);
}

uint64_t _nw_http_request_access_extended_connect_protocolTm(uint64_t a1, void *aBlock, void (*a3)(void *, void *))
{
  v5 = _Block_copy(aBlock);
  v6 = _Block_copy(v5);

  swift_beginAccess();
  v7 = *(a1 + 24);
  v9[0] = *(a1 + 16);
  v9[1] = v7;

  a3(v9, v6);
  _Block_release(v5);
  _Block_release(v6);
}

uint64_t sub_181DAA094(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A390);
  result = sub_181A93260(a1);
  if (result)
  {
    v3 = result;
    swift_beginAccess();
    v4 = *(v3 + 64);

    if (v4)
    {
      v5 = *(v4 + 64);
      if (v5)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83B9A0);
        v6 = sub_181A93260(v5);
        if (v6)
        {
          v5 = v6;
          os_unfair_lock_lock((*(v4 + 248) + 16));
          os_unfair_lock_unlock((*(v4 + 248) + 16));
        }

        else
        {
          v5 = 0;
        }
      }

      return v5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t __Block_byref_object_copy__138(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 54) = *(a2 + 54);
  *(result + 48) = v2;
  return result;
}

uint64_t nw_quic_stream_get_application_error(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_metadata_is_quic_stream(v1))
  {
    application_error = _nw_quic_stream_get_application_error(v1);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_stream_get_application_error";
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
        v14 = "nw_quic_stream_get_application_error";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata)";
LABEL_17:
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
            v14 = "nw_quic_stream_get_application_error";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_stream_get_application_error";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_stream_get_application_error";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v5)
  {
    free(v5);
  }

  application_error = 0;
LABEL_3:

  return application_error;
}

void nw_http_request_set_extended_connect_protocol(void *a1, const char *a2)
{
  v3 = a1;
  if (v3)
  {
    goto LABEL_2;
  }

  v4 = __nwlog_obj();
  os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
  v5 = _os_log_send_and_compose_impl();

  if (!__nwlog_should_abort(v5))
  {
    free(v5);
LABEL_2:
    _nw_http_request_set_extended_connect_protocol(v3, a2);

    return;
  }

  __break(1u);
}

uint64_t _nw_quic_stream_get_application_error(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83B9A0);
  v2 = sub_181A93260(a1);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  swift_beginAccess();
  v4 = *(v3 + 64);

  if (!v4)
  {
    return 0;
  }

  v5 = *(v4 + 40);

  return v5;
}

uint64_t sub_181DAA5B4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (*(*a1 + 248))
  {
    v5 = *(v3 + 280);
    v4 = *(v3 + 288);
    MEMORY[0x1EEE9AC00](a1);
    MEMORY[0x1EEE9AC00](v6);

    sub_181DE92EC(v5, v4, sub_181DE94B0);
  }

  else
  {
    v8 = *(a2 + 16);

    return v8(a2, 0);
  }
}

uint64_t _nw_http_request_set_extended_connect_protocol_0(uint64_t a1, const char *a2)
{

  if (!a2)
  {
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(a1 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = sub_1822C9498();

      *(a1 + 16) = v10;
    }

    v11 = *(v10 + 240);
    v12 = *(v10 + 248);
    *(v10 + 240) = 0u;
    *(v10 + 256) = 0u;
    *(v10 + 272) = 0u;
    *(v10 + 288) = 0;
    swift_endAccess();
    sub_181D04D28(v11, v12);
  }

  v4 = strlen(a2);
  if (v4)
  {
    v5 = 0;
    while ((a2[v5] & 0x80000000) == 0)
    {
      if (v4 == ++v5)
      {
        goto LABEL_6;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A5B0);
    sub_181AB3DCC(&qword_1EA83A5B8, &qword_1EA83A5B0);
    sub_182AD30A8();
    v6 = 0;
    v8 = 0xE000000000000000;
  }

  else
  {
LABEL_6:
    v6 = sub_182AD30B8();
    v8 = v7;
  }

  if (_s7Network9HTTPFieldV12isValidValueySbSSFZ_0(v6, v8))
  {
    swift_beginAccess();
    sub_1822470EC(a1 + 16, v6, v8);
    swift_endAccess();
  }

  result = sub_182AD3EA8();
  __break(1u);
  return result;
}

uint64_t nw_quic_connection_get_application_error(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_metadata_is_quic_connection(v1))
  {
    application_error = _nw_quic_connection_get_application_error(v1);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_get_application_error";
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
        v14 = "nw_quic_connection_get_application_error";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata)";
LABEL_17:
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
            v14 = "nw_quic_connection_get_application_error";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_connection_get_application_error";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_application_error";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v5)
  {
    free(v5);
  }

  application_error = 0;
LABEL_3:

  return application_error;
}

void nw::http::content_length_manager::set_inbound_message(nw::http::content_length_manager *this, nw_protocol_metadata *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v21 = "set_inbound_message";
    v8 = _os_log_send_and_compose_impl();
    v19 = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (!__nwlog_fault(v8, &v19, &v18))
    {
      goto LABEL_46;
    }

    if (v19 == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = v19;
      if (!os_log_type_enabled(v9, v19))
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      v21 = "set_inbound_message";
      v11 = "%{public}s called with null metadata";
      goto LABEL_45;
    }

    if (v18 != 1)
    {
      v9 = __nwlog_obj();
      v10 = v19;
      if (!os_log_type_enabled(v9, v19))
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      v21 = "set_inbound_message";
      v11 = "%{public}s called with null metadata, backtrace limit exceeded";
      goto LABEL_45;
    }

    backtrace_string = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v10 = v19;
    v13 = os_log_type_enabled(v9, v19);
    if (!backtrace_string)
    {
      if (!v13)
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      v21 = "set_inbound_message";
      v11 = "%{public}s called with null metadata, no backtrace";
      goto LABEL_45;
    }

    if (v13)
    {
      *buf = 136446466;
      v21 = "set_inbound_message";
      v22 = 2082;
      v23 = backtrace_string;
      _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
LABEL_46:
    if (!v8)
    {
      return;
    }

    goto LABEL_47;
  }

  v3 = a2;
  if (nw_protocol_copy_http_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_definition_onceToken, &__block_literal_global_16_75909);
  }

  v4 = nw_protocol_metadata_matches_definition(v3, nw_protocol_copy_http_definition_http_definition);

  if ((v4 & 1) == 0)
  {
    __nwlog_obj();
    *buf = 136446210;
    v21 = "set_inbound_message";
    v8 = _os_log_send_and_compose_impl();
    v19 = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (!__nwlog_fault(v8, &v19, &v18))
    {
      goto LABEL_46;
    }

    if (v19 == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = v19;
      if (!os_log_type_enabled(v9, v19))
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      v21 = "set_inbound_message";
      v11 = "%{public}s called with null (nw_protocol_metadata_is_http(metadata))";
      goto LABEL_45;
    }

    if (v18 != 1)
    {
      v9 = __nwlog_obj();
      v10 = v19;
      if (!os_log_type_enabled(v9, v19))
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      v21 = "set_inbound_message";
      v11 = "%{public}s called with null (nw_protocol_metadata_is_http(metadata)), backtrace limit exceeded";
      goto LABEL_45;
    }

    v14 = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v10 = v19;
    v15 = os_log_type_enabled(v9, v19);
    if (v14)
    {
      if (v15)
      {
        *buf = 136446466;
        v21 = "set_inbound_message";
        v22 = 2082;
        v23 = v14;
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null (nw_protocol_metadata_is_http(metadata)), dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v14);
      if (!v8)
      {
        return;
      }

LABEL_47:
      free(v8);
      return;
    }

    if (v15)
    {
      *buf = 136446210;
      v21 = "set_inbound_message";
      v11 = "%{public}s called with null (nw_protocol_metadata_is_http(metadata)), no backtrace";
LABEL_45:
      _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0xCu);
      goto LABEL_46;
    }

    goto LABEL_46;
  }

  if (*(this + 48) == 1)
  {
    v5 = nw_http_metadata_copy_request(v3);
    *(this + 49) = nw_http_request_has_method(v5, "HEAD");
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 0x40000000;
    v17[2] = ___ZN2nw4http22content_length_manager19set_inbound_messageEP20nw_protocol_metadata_block_invoke;
    v17[3] = &__block_descriptor_tmp_141_63756;
    v17[4] = this;
    v6 = v17;
    goto LABEL_7;
  }

  v5 = nw_http_metadata_copy_response(v3);
  status_code = nw_http_response_get_status_code(v5);
  if ((*(this + 49) & 1) == 0 && status_code != 304 && status_code != 204)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 0x40000000;
    v16[2] = ___ZN2nw4http22content_length_manager19set_inbound_messageEP20nw_protocol_metadata_block_invoke_2;
    v16[3] = &__block_descriptor_tmp_142_63757;
    v16[4] = this;
    v6 = v16;
LABEL_7:
    nw_http_fields_access_value_by_name(v5, "Content-Length", v6);
    if (!v5)
    {
      return;
    }

    goto LABEL_15;
  }

  if ((*(this + 32) & 1) == 0)
  {
    *(this + 32) = 1;
  }

  *(this + 3) = 0;
  if (v5)
  {
LABEL_15:
    os_release(v5);
  }
}

void nw_quic_connection_report_application_result(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_metadata_is_quic_connection(v3))
  {
    _nw_quic_connection_report_application_result(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_report_application_result";
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
        v14 = "nw_quic_connection_report_application_result";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata)";
LABEL_17:
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
            v14 = "nw_quic_connection_report_application_result";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_connection_report_application_result";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_report_application_result";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v5)
  {
    free(v5);
  }

LABEL_3:
}

uint64_t sub_181DAB338(void (*a1)(uint64_t *))
{
  swift_beginAccess();
  v4 = *(v1 + 24);

  a1(&v4);
}

uint64_t nw_masque_add_extra_headers_to_request(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    *type = 0;
    v21 = type;
    v22 = 0x2000000000;
    v23 = 0;
    if (a3 && a4)
    {
      *a4 = 0;
    }

    v6 = *(a1 + 328);
    if (v6)
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 0x40000000;
      v19[2] = ___ZL38nw_masque_add_extra_headers_to_requestP9nw_masqueP14nw_http_fieldsPA37_cPb_block_invoke;
      v19[3] = &unk_1E6A2F930;
      v19[4] = type;
      v19[5] = a1;
      v19[6] = a2;
      v19[7] = a3;
      v19[8] = a4;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = ___ZL41nw_masque_options_enumerate_extra_headersP19nw_protocol_optionsU13block_pointerFbPKcS2_E_block_invoke;
      v26 = &unk_1E6A2F958;
      v27 = v19;
      nw_protocol_options_access_handle(v6, buf);
    }

    v7 = *(a1 + 320);
    if (v7)
    {
      v8 = v7;
      effective_traffic_class = _nw_path_get_effective_traffic_class(v8);

      if ((effective_traffic_class - 1) <= 0xC7)
      {
        v10 = a2;
        _nw_http_fields_append(v10, "Sec-CH-Background", "?1");
      }
    }

    v11 = *(v21 + 24) ^ 1;
    _Block_object_dispose(type, 8);
    return v11 & 1;
  }

  __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_masque_add_extra_headers_to_request";
  v13 = _os_log_send_and_compose_impl();
  type[0] = OS_LOG_TYPE_ERROR;
  v24 = 0;
  if (__nwlog_fault(v13, type, &v24))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type[0];
      if (os_log_type_enabled(v14, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_masque_add_extra_headers_to_request";
        v16 = "%{public}s called with null request";
LABEL_25:
        _os_log_impl(&dword_181A37000, v14, v15, v16, buf, 0xCu);
      }
    }

    else if (v24 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v14 = __nwlog_obj();
      v15 = type[0];
      v18 = os_log_type_enabled(v14, type[0]);
      if (backtrace_string)
      {
        if (v18)
        {
          *buf = 136446466;
          *&buf[4] = "nw_masque_add_extra_headers_to_request";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null request, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_26;
      }

      if (v18)
      {
        *buf = 136446210;
        *&buf[4] = "nw_masque_add_extra_headers_to_request";
        v16 = "%{public}s called with null request, no backtrace";
        goto LABEL_25;
      }
    }

    else
    {
      v14 = __nwlog_obj();
      v15 = type[0];
      if (os_log_type_enabled(v14, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_masque_add_extra_headers_to_request";
        v16 = "%{public}s called with null request, backtrace limit exceeded";
        goto LABEL_25;
      }
    }
  }

LABEL_26:
  if (v13)
  {
    free(v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t _nw_quic_connection_report_application_result_0(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A390);
  result = sub_181A93260(a1);
  if (result)
  {
    v5 = result;
    swift_beginAccess();
    v6 = *(v5 + 64);

    if (v6)
    {
      os_unfair_lock_lock((*(v6 + 248) + 16));
      v7 = *(v6 + 208);
      if (v7)
      {
        (*(v7 + 16))(v7, a2 & 1);
      }

      os_unfair_lock_unlock((*(v6 + 248) + 16));
    }
  }

  return result;
}

uint64_t ___ZL41nw_masque_options_enumerate_extra_headersP19nw_protocol_optionsU13block_pointerFbPKcS2_E_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (!v4)
  {
    count = 0;
    v6 = *(a2 + 16);
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  count = xpc_array_get_count(v4);
  v6 = *(a2 + 16);
  if (v6)
  {
LABEL_3:
    v6 = xpc_array_get_count(v6);
  }

LABEL_4:
  if (count && count == v6)
  {
    v7 = 0;
    v8 = count - 1;
    do
    {
      v9 = *(a1 + 32);
      string = xpc_array_get_string(*(a2 + 8), v7);
      v11 = xpc_array_get_string(*(a2 + 16), v7);
      if ((*(v9 + 16))(v9, string, v11))
      {
        v12 = v8 == v7;
      }

      else
      {
        v12 = 1;
      }

      ++v7;
    }

    while (!v12);
  }

  return 1;
}

uint64_t ___ZL38nw_masque_add_extra_headers_to_requestP9nw_masqueP14nw_http_fieldsPA37_cPb_block_invoke(uint64_t a1, const char *a2, char *__s1)
{
  v3 = __s1;
  v161 = *MEMORY[0x1E69E9840];
  v6 = strstr(__s1, "<token=");
  if (v6)
  {
    v7 = v6;
    v8 = strlen(v3);
    v9 = v7 + 7;
    v10 = strchr(v7 + 7, 62);
    v11 = strstr(v3, "{domain=");
    v12 = strstr(v3, "[type=");
    v159 = 0uLL;
    if (!(v11 | v12))
    {
      if (!v10 || v10 - v9 != 36)
      {
        v49 = *(a1 + 40);
        if (!v49 || (*(v49 + 505) & 1) == 0)
        {
          if (__nwlog_privacy_proxy_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
          }

          v50 = gprivacy_proxyLogObj;
          v51 = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR);
          v49 = *(a1 + 40);
          if (v51)
          {
            v52 = (v49 + 507);
            if (!v49)
            {
              v52 = "";
            }

            *buf = 136446978;
            *&buf[4] = v52;
            *&buf[12] = 2080;
            v53 = " ";
            if (!v49)
            {
              v53 = "";
            }

            *&buf[14] = v53;
            *&buf[22] = 2082;
            *&buf[24] = "<token=";
            *&buf[32] = 2082;
            *&buf[34] = v3;
            _os_log_impl(&dword_181A37000, v50, OS_LOG_TYPE_ERROR, "%{public}s%sValue included %{public}s, but token UUID cannot be read: %{public}s", buf, 0x2Au);
            v49 = *(a1 + 40);
          }
        }

        *(*(*(a1 + 32) + 8) + 24) = 1;
        nw_masque_mark_failed_with_error(v49, 22);
        return 1;
      }

      buf[36] = 0;
      v34 = *v9;
      v35 = *(v7 + 23);
      *&buf[32] = *(v7 + 39);
      *&buf[16] = v35;
      *buf = v34;
      uuid_parse(buf, (*(a1 + 40) + 256));
      goto LABEL_37;
    }

    if (v11 && v12)
    {
      v13 = v11 + 8;
      v14 = v12;
      v15 = strchr(v13, 125);
      v16 = v14 + 6;
      v17 = strchr(v14 + 6, 93);
      if (v15 && v17)
      {
        v18 = v15 - v13;
        v19 = v17 - v16;
        if (v18 <= 0x20 && v19 < 0x21)
        {
          v158 = 0;
          __dst = 0u;
          v157 = 0u;
          v155 = 0;
          v153 = 0u;
          v154 = 0u;
          memcpy(&__dst, v13, v18);
          memcpy(&v153, v16, v19);
          v20 = *(a1 + 40);
          if (!v20 || (*(v20 + 505) & 1) == 0)
          {
            if (__nwlog_privacy_proxy_log::onceToken != -1)
            {
              dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
            }

            v21 = gprivacy_proxyLogObj;
            v22 = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG);
            v20 = *(a1 + 40);
            if (v22)
            {
              v23 = "";
              *buf = 136447234;
              *&buf[4] = "nw_masque_add_extra_headers_to_request_block_invoke";
              v24 = v20 == 0;
              if (v20)
              {
                v25 = (v20 + 507);
              }

              else
              {
                v25 = "";
              }

              *&buf[12] = 2082;
              *&buf[14] = v25;
              *&buf[22] = 2080;
              if (!v24)
              {
                v23 = " ";
              }

              *&buf[24] = v23;
              *&buf[32] = 2080;
              *&buf[34] = &__dst;
              *&buf[42] = 2080;
              *&buf[44] = &v153;
              _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sFinding token agent with domain '%s' type '%s'", buf, 0x34u);
              v20 = *(a1 + 40);
            }
          }

          if ((_nw_path_get_agent_uuid_for_type(*(v20 + 320), &v159, &__dst, &v153) & 1) == 0)
          {
            return 1;
          }

          *(*(a1 + 40) + 256) = v159;
LABEL_37:
          size = 0;
          v151 = 0;
          v36 = *(a1 + 40);
          v37 = *(v36 + 440);
          if (!v37)
          {
            v42 = 0;
            if ((*(v36 + 503) & 2) != 0)
            {
              goto LABEL_106;
            }

LABEL_103:
            if (v42)
            {
              goto LABEL_106;
            }

            if (v151)
            {
              goto LABEL_107;
            }

            return 1;
          }

          v38 = v37;
          v39 = nw_protocol_copy_http_connection_definition_onceToken;
          v40 = v38;
          if (v39 != -1)
          {
            dispatch_once(&nw_protocol_copy_http_connection_definition_onceToken, &__block_literal_global_106);
          }

          v41 = nw_protocol_metadata_matches_definition(v40, nw_protocol_copy_http_connection_definition_definition);

          if (v41)
          {
            *&__dst = 0;
            *(&__dst + 1) = &__dst;
            v157 = 0x2020000000uLL;
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3221225472;
            *&buf[16] = __nw_http_connection_metadata_copy_cached_token_block_invoke;
            *&buf[24] = &unk_1E6A3AD20;
            *&buf[32] = &__dst;
            *&buf[40] = &v151;
            *&buf[48] = &size;
            if (_nw_protocol_metadata_get_handle(v40))
            {
              (*&buf[16])(buf);
            }

            v42 = *(*(&__dst + 1) + 24);
            _Block_object_dispose(&__dst, 8);
            goto LABEL_44;
          }

          v115 = __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_http_connection_metadata_copy_cached_token";
          v116 = _os_log_send_and_compose_impl();

          LOBYTE(__dst) = 16;
          LOBYTE(v153) = 0;
          if (__nwlog_fault(v116, &__dst, &v153))
          {
            if (__dst == 17)
            {
              v117 = __nwlog_obj();
              v118 = __dst;
              if (os_log_type_enabled(v117, __dst))
              {
                *buf = 136446210;
                *&buf[4] = "nw_http_connection_metadata_copy_cached_token";
                _os_log_impl(&dword_181A37000, v117, v118, "%{public}s metadata must be http_connection", buf, 0xCu);
              }
            }

            else if (v153 == 1)
            {
              backtrace_string = __nw_create_backtrace_string();
              v117 = __nwlog_obj();
              __na = __dst;
              v120 = os_log_type_enabled(v117, __dst);
              if (backtrace_string)
              {
                if (v120)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_http_connection_metadata_copy_cached_token";
                  *&buf[12] = 2082;
                  *&buf[14] = backtrace_string;
                  _os_log_impl(&dword_181A37000, v117, __na, "%{public}s metadata must be http_connection, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(backtrace_string);
                goto LABEL_316;
              }

              if (v120)
              {
                *buf = 136446210;
                *&buf[4] = "nw_http_connection_metadata_copy_cached_token";
                _os_log_impl(&dword_181A37000, v117, __na, "%{public}s metadata must be http_connection, no backtrace", buf, 0xCu);
              }
            }

            else
            {
              v117 = __nwlog_obj();
              v130 = __dst;
              if (os_log_type_enabled(v117, __dst))
              {
                *buf = 136446210;
                *&buf[4] = "nw_http_connection_metadata_copy_cached_token";
                _os_log_impl(&dword_181A37000, v117, v130, "%{public}s metadata must be http_connection, backtrace limit exceeded", buf, 0xCu);
              }
            }
          }

LABEL_316:
          if (v116)
          {
            free(v116);
          }

          v42 = 0;
LABEL_44:

          v36 = *(a1 + 40);
          if ((*(v36 + 503) & 2) != 0)
          {
LABEL_106:
            if (v42)
            {
LABEL_108:
              if (v42 && size)
              {
                if (!v36 || (*(v36 + 505) & 1) == 0)
                {
                  if (__nwlog_privacy_proxy_log::onceToken != -1)
                  {
                    dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
                  }

                  v72 = gprivacy_proxyLogObj;
                  v73 = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG);
                  v36 = *(a1 + 40);
                  if (v73)
                  {
                    v74 = (v36 + 507);
                    *buf = 136447234;
                    *&buf[4] = "nw_masque_add_extra_headers_to_request_block_invoke";
                    if (!v36)
                    {
                      v74 = "";
                    }

                    *&buf[12] = 2082;
                    *&buf[14] = v74;
                    *&buf[22] = 2080;
                    v75 = " ";
                    if (!v36)
                    {
                      v75 = "";
                    }

                    *&buf[24] = v75;
                    *&buf[32] = 1042;
                    *&buf[34] = 16;
                    *&buf[38] = 2098;
                    *&buf[40] = v36 + 256;
                    _os_log_impl(&dword_181A37000, v72, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sFetched token from %{public, uuid_t}.16P", buf, 0x30u);
                    v36 = *(a1 + 40);
                  }
                }

                v76 = *(v36 + 440);
                v77 = size;
                if (v76)
                {
                  nw_http_connection_metadata_set_cached_token(v76, v42, size);
                  v77 = size;
                }

                v78 = &v3[v8];
                v79 = dispatch_data_create(v42, v77, 0, *MEMORY[0x1E69E9648]);
                v80 = dispatch_data_create_with_transform();
                if (v79)
                {
                  dispatch_release(v79);
                }

                v81 = v10 + 1;
                v82 = dispatch_data_get_size(v80);
                __n = v78 - (v10 + 1);
                v83 = nw_calloc_type<unsigned char>(v7 - v3 + v78 - v10 + v82);
                *&__dst = 0;
                *(&__dst + 1) = &__dst;
                v157 = 0x2000000000uLL;
                *&v153 = 0;
                *(&v153 + 1) = &v153;
                *&v154 = 0x2000000000;
                *(&v154 + 1) = &v83[v7 - v3];
                if (v80)
                {
                  *buf = MEMORY[0x1E69E9820];
                  *&buf[8] = 0x40000000;
                  *&buf[16] = __nw_dispatch_data_copyout_block_invoke;
                  *&buf[24] = &unk_1E6A34348;
                  *&buf[40] = &v153;
                  *&buf[48] = v82;
                  *&buf[32] = &__dst;
                  dispatch_data_apply(v80, buf);
                  _Block_object_dispose(&v153, 8);
                  _Block_object_dispose(&__dst, 8);
                  dispatch_release(v80);
                }

                else
                {
                  _Block_object_dispose(&v153, 8);
                  _Block_object_dispose(&__dst, 8);
                }

                for (i = &v83[v7 - v3]; ; i = v107 + 1)
                {
                  v107 = strchr(i, 43);
                  if (!v107)
                  {
                    break;
                  }

                  *v107 = 45;
                }

                for (j = &v83[v7 - v3]; ; j = v109 + 1)
                {
                  v109 = strchr(j, 47);
                  if (!v109)
                  {
                    break;
                  }

                  *v109 = 95;
                }

                if (v7 != v3)
                {
                  memcpy(v83, v3, v7 - v3);
                }

                if (v78 != v81)
                {
                  memcpy(&v83[v7 - v3 + v82], v81, __n);
                }

                nw_http_fields_append(*(a1 + 48), a2, v83);
                if (v83)
                {
                  free(v83);
                }
              }

              else
              {
                if (!v36 || (*(v36 + 505) & 1) == 0)
                {
                  if (__nwlog_privacy_proxy_log::onceToken != -1)
                  {
                    dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
                  }

                  v84 = gprivacy_proxyLogObj;
                  v85 = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR);
                  v36 = *(a1 + 40);
                  if (v85)
                  {
                    v86 = "";
                    v87 = (v36 + 507);
                    if (!v36)
                    {
                      v87 = "";
                    }

                    *buf = 136446978;
                    *&buf[4] = v87;
                    *&buf[12] = 2080;
                    if (v36)
                    {
                      v86 = " ";
                    }

                    *&buf[14] = v86;
                    *&buf[22] = 1042;
                    *&buf[24] = 16;
                    *&buf[28] = 2098;
                    *&buf[30] = v36 + 256;
                    _os_log_impl(&dword_181A37000, v84, OS_LOG_TYPE_ERROR, "%{public}s%sFailed to fetch token from %{public, uuid_t}.16P", buf, 0x26u);
                    v36 = *(a1 + 40);
                  }
                }

                nw_path_report_error_to_agent(*(v36 + 320), (v36 + 256), 81);
                *(*(*(a1 + 32) + 8) + 24) = 1;
                nw_masque_mark_failed_with_error(*(a1 + 40), 2);
              }

              return 1;
            }

LABEL_107:
            v42 = nw_path_copy_token_from_agent(*(v36 + 320), (v36 + 256), &size);
            v36 = *(a1 + 40);
            goto LABEL_108;
          }

          goto LABEL_103;
        }

        v43 = *(a1 + 40);
        if (v43 && (*(v43 + 505) & 1) != 0)
        {
          goto LABEL_101;
        }

        if (__nwlog_privacy_proxy_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
        }

        v94 = gprivacy_proxyLogObj;
        v95 = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR);
        v43 = *(a1 + 40);
        if (!v95)
        {
LABEL_101:
          nw_masque_mark_failed_with_error(v43, 22);
          return 0;
        }

        v96 = (v43 + 507);
        if (!v43)
        {
          v96 = "";
        }

        *buf = 136446978;
        *&buf[4] = v96;
        *&buf[12] = 2080;
        v97 = " ";
        if (!v43)
        {
          v97 = "";
        }

        *&buf[14] = v97;
        *&buf[22] = 2048;
        *&buf[24] = v18;
        *&buf[32] = 2048;
        *&buf[34] = v19;
        v48 = "%{public}s%sInvalid agent domain/type length (%zd/%zd)";
        v69 = v94;
        v70 = 42;
LABEL_100:
        _os_log_impl(&dword_181A37000, v69, OS_LOG_TYPE_ERROR, v48, buf, v70);
        v43 = *(a1 + 40);
        goto LABEL_101;
      }

      v43 = *(a1 + 40);
      if (v43 && (*(v43 + 505) & 1) != 0)
      {
        goto LABEL_101;
      }

      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v44 = gprivacy_proxyLogObj;
      v66 = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR);
      v43 = *(a1 + 40);
      if (!v66)
      {
        goto LABEL_101;
      }

      v67 = (v43 + 507);
      v68 = "";
      if (v43)
      {
        v68 = " ";
      }

      else
      {
        v67 = "";
      }

      *buf = 136446466;
      *&buf[4] = v67;
      *&buf[12] = 2080;
      *&buf[14] = v68;
      v48 = "%{public}s%sInvalid agent type suffix";
    }

    else
    {
      v43 = *(a1 + 40);
      if (v43 && (*(v43 + 505) & 1) != 0)
      {
        goto LABEL_101;
      }

      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v44 = gprivacy_proxyLogObj;
      v45 = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR);
      v43 = *(a1 + 40);
      if (!v45)
      {
        goto LABEL_101;
      }

      v46 = (v43 + 507);
      v47 = "";
      if (v43)
      {
        v47 = " ";
      }

      else
      {
        v46 = "";
      }

      *buf = 136446466;
      *&buf[4] = v46;
      *&buf[12] = 2080;
      *&buf[14] = v47;
      v48 = "%{public}s%sInvalid agent type configuration";
    }

    v69 = v44;
    v70 = 22;
    goto LABEL_100;
  }

  if (!strcmp(v3, "INSERT-RANDOM-TRANSACTION-ID"))
  {
    v54 = *(a1 + 56);
    if (!v54)
    {
      return 1;
    }

    v55 = *(a1 + 64);
    if (!v55)
    {
      return 1;
    }

    if ((*v55 & 1) == 0)
    {
      *&buf[8] = 0;
      *buf = 0;
      uuid_generate_random(buf);
      uuid_unparse(buf, *(a1 + 56));
      **(a1 + 64) = 1;
      v54 = *(a1 + 56);
    }

    v56 = *(a1 + 48);
    v57 = a2;
    goto LABEL_226;
  }

  v26 = strcasecmp(a2, "Sec-CH-Geohash");
  v27 = strcasecmp(a2, "Priority");
  v28 = strcasecmp(a2, "Require-Interface");
  v29 = strcasecmp(a2, "Prohibit-Interface");
  v30 = strcasecmp(a2, "Client-Application");
  v31 = strcasecmp(a2, "Multipath");
  v32 = strcasecmp(a2, "Listener-Association");
  if (!v26)
  {
    v58 = *(*(a1 + 40) + 304);
    if (!v58)
    {
      goto LABEL_76;
    }

    if (_nw_parameters_get_is_known_tracker(v58))
    {
      return 1;
    }

    v59 = *(*(a1 + 40) + 304);
    if (v59)
    {
      if (_nw_parameters_get_parent_is_known_tracker(v59))
      {
        return 1;
      }

      goto LABEL_75;
    }

    v126 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_parameters_get_parent_is_known_tracker";
    v127 = _os_log_send_and_compose_impl();

    LOBYTE(__dst) = 16;
    LOBYTE(v153) = 0;
    if (__nwlog_fault(v127, &__dst, &v153))
    {
      if (__dst == 17)
      {
        v128 = __nwlog_obj();
        v129 = __dst;
        if (os_log_type_enabled(v128, __dst))
        {
          *buf = 136446210;
          *&buf[4] = "nw_parameters_get_parent_is_known_tracker";
          _os_log_impl(&dword_181A37000, v128, v129, "%{public}s called with null parameters", buf, 0xCu);
        }
      }

      else if (v153 == 1)
      {
        v140 = __nw_create_backtrace_string();
        v128 = __nwlog_obj();
        v141 = __dst;
        v142 = os_log_type_enabled(v128, __dst);
        if (v140)
        {
          if (v142)
          {
            *buf = 136446466;
            *&buf[4] = "nw_parameters_get_parent_is_known_tracker";
            *&buf[12] = 2082;
            *&buf[14] = v140;
            _os_log_impl(&dword_181A37000, v128, v141, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v140);
          goto LABEL_331;
        }

        if (v142)
        {
          *buf = 136446210;
          *&buf[4] = "nw_parameters_get_parent_is_known_tracker";
          _os_log_impl(&dword_181A37000, v128, v141, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v128 = __nwlog_obj();
        v148 = __dst;
        if (os_log_type_enabled(v128, __dst))
        {
          *buf = 136446210;
          *&buf[4] = "nw_parameters_get_parent_is_known_tracker";
          _os_log_impl(&dword_181A37000, v128, v148, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_331:
    if (v127)
    {
      free(v127);
    }

LABEL_75:
    if (nw_parameters_get_use_enhanced_privacy_mode(*(*(a1 + 40) + 304)))
    {
      return 1;
    }

LABEL_76:
    if (v3)
    {
      v60 = *(a1 + 40);
      if (*v3)
      {
        if ((!v60 || (*(v60 + 505) & 1) == 0) && gLogDatapath == 1)
        {
          if (__nwlog_privacy_proxy_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
          }

          v61 = gprivacy_proxyLogObj;
          if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
          {
            v62 = *(a1 + 40);
            v63 = v62 == 0;
            if (v62)
            {
              v64 = (v62 + 507);
            }

            else
            {
              v64 = "";
            }

            *buf = 136446978;
            *&buf[4] = "nw_masque_add_extra_headers_to_request_block_invoke";
            *&buf[14] = v64;
            v65 = " ";
            *&buf[12] = 2082;
            if (v63)
            {
              v65 = "";
            }

            *&buf[22] = 2080;
            *&buf[24] = v65;
            *&buf[32] = 2082;
            *&buf[34] = v3;
            _os_log_impl(&dword_181A37000, v61, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sReceived geohash hint %{public}s", buf, 0x2Au);
          }
        }

LABEL_224:
        if (!*v3)
        {
          return 1;
        }

LABEL_225:
        v56 = *(a1 + 48);
        v57 = a2;
        v54 = v3;
LABEL_226:
        nw_http_fields_append(v56, v57, v54);
        return 1;
      }
    }

    else
    {
      v60 = *(a1 + 40);
    }

    if (v60)
    {
      v110 = *(v60 + 312);
      if (v110)
      {
        if (nw_protocol_masque_get_definition(void)::onceToken[0] != -1)
        {
          dispatch_once(nw_protocol_masque_get_definition(void)::onceToken, &__block_literal_global_27637);
        }

        if (nw_protocol_masque_get_definition(void)::definition)
        {
          v111 = os_retain(nw_protocol_masque_get_definition(void)::definition);
        }

        else
        {
          v111 = 0;
        }

        globals_for_protocol = nw_context_get_globals_for_protocol(v110, v111);
        if (globals_for_protocol)
        {
          v3 = (globals_for_protocol + 4);
          *(globals_for_protocol + 10) = 0;
          v113 = *(a1 + 40);
          if (v113)
          {
            goto LABEL_221;
          }

          goto LABEL_222;
        }

        __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_masque_get_cached_geohash_value";
        v131 = _os_log_send_and_compose_impl();
        LOBYTE(__dst) = 16;
        LOBYTE(v153) = 0;
        if (!__nwlog_fault(v131, &__dst, &v153))
        {
LABEL_340:
          if (v131)
          {
            free(v131);
          }

          v3 = 0;
          v113 = *(a1 + 40);
          if (v113)
          {
LABEL_221:
            if (*(v113 + 505))
            {
              goto LABEL_223;
            }
          }

LABEL_222:
          if (gLogDatapath == 1)
          {
            if (__nwlog_privacy_proxy_log::onceToken != -1)
            {
              dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
            }

            v135 = gprivacy_proxyLogObj;
            if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
            {
              v136 = *(a1 + 40);
              v137 = v136 == 0;
              if (v136)
              {
                v138 = (v136 + 507);
              }

              else
              {
                v138 = "";
              }

              *buf = 136446978;
              *&buf[4] = "nw_masque_add_extra_headers_to_request_block_invoke";
              *&buf[14] = v138;
              v139 = " ";
              *&buf[12] = 2082;
              if (v137)
              {
                v139 = "";
              }

              *&buf[22] = 2080;
              *&buf[24] = v139;
              *&buf[32] = 2082;
              *&buf[34] = v3;
              _os_log_impl(&dword_181A37000, v135, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sUsing cached geohash hint %{public}s", buf, 0x2Au);
            }
          }

LABEL_223:
          if (!v3)
          {
            return 1;
          }

          goto LABEL_224;
        }

        if (__dst == 17)
        {
          v132 = __nwlog_obj();
          v133 = __dst;
          if (!os_log_type_enabled(v132, __dst))
          {
            goto LABEL_340;
          }

          *buf = 136446210;
          *&buf[4] = "nw_masque_get_cached_geohash_value";
          v134 = "%{public}s called with null globals";
          goto LABEL_339;
        }

        if (v153 != 1)
        {
          v132 = __nwlog_obj();
          v133 = __dst;
          if (!os_log_type_enabled(v132, __dst))
          {
            goto LABEL_340;
          }

          *buf = 136446210;
          *&buf[4] = "nw_masque_get_cached_geohash_value";
          v134 = "%{public}s called with null globals, backtrace limit exceeded";
          goto LABEL_339;
        }

        v143 = __nw_create_backtrace_string();
        v132 = __nwlog_obj();
        v133 = __dst;
        v147 = os_log_type_enabled(v132, __dst);
        if (!v143)
        {
          if (!v147)
          {
            goto LABEL_340;
          }

          *buf = 136446210;
          *&buf[4] = "nw_masque_get_cached_geohash_value";
          v134 = "%{public}s called with null globals, no backtrace";
          goto LABEL_339;
        }

        if (v147)
        {
          *buf = 136446466;
          *&buf[4] = "nw_masque_get_cached_geohash_value";
          *&buf[12] = 2082;
          *&buf[14] = v143;
          v145 = "%{public}s called with null globals, dumping backtrace:%{public}s";
          goto LABEL_311;
        }

LABEL_312:
        free(v143);
        goto LABEL_340;
      }

      __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_masque_get_cached_geohash_value";
      v131 = _os_log_send_and_compose_impl();
      LOBYTE(__dst) = 16;
      LOBYTE(v153) = 0;
      if (!__nwlog_fault(v131, &__dst, &v153))
      {
        goto LABEL_340;
      }

      if (__dst == 17)
      {
        v132 = __nwlog_obj();
        v133 = __dst;
        if (!os_log_type_enabled(v132, __dst))
        {
          goto LABEL_340;
        }

        *buf = 136446210;
        *&buf[4] = "nw_masque_get_cached_geohash_value";
        v134 = "%{public}s called with null masque->context";
        goto LABEL_339;
      }

      if (v153 != 1)
      {
        v132 = __nwlog_obj();
        v133 = __dst;
        if (!os_log_type_enabled(v132, __dst))
        {
          goto LABEL_340;
        }

        *buf = 136446210;
        *&buf[4] = "nw_masque_get_cached_geohash_value";
        v134 = "%{public}s called with null masque->context, backtrace limit exceeded";
        goto LABEL_339;
      }

      v143 = __nw_create_backtrace_string();
      v132 = __nwlog_obj();
      v133 = __dst;
      v146 = os_log_type_enabled(v132, __dst);
      if (!v143)
      {
        if (!v146)
        {
          goto LABEL_340;
        }

        *buf = 136446210;
        *&buf[4] = "nw_masque_get_cached_geohash_value";
        v134 = "%{public}s called with null masque->context, no backtrace";
        goto LABEL_339;
      }

      if (!v146)
      {
        goto LABEL_312;
      }

      *buf = 136446466;
      *&buf[4] = "nw_masque_get_cached_geohash_value";
      *&buf[12] = 2082;
      *&buf[14] = v143;
      v145 = "%{public}s called with null masque->context, dumping backtrace:%{public}s";
    }

    else
    {
      __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_masque_get_cached_geohash_value";
      v131 = _os_log_send_and_compose_impl();
      LOBYTE(__dst) = 16;
      LOBYTE(v153) = 0;
      if (!__nwlog_fault(v131, &__dst, &v153))
      {
        goto LABEL_340;
      }

      if (__dst == 17)
      {
        v132 = __nwlog_obj();
        v133 = __dst;
        if (!os_log_type_enabled(v132, __dst))
        {
          goto LABEL_340;
        }

        *buf = 136446210;
        *&buf[4] = "nw_masque_get_cached_geohash_value";
        v134 = "%{public}s called with null masque";
LABEL_339:
        _os_log_impl(&dword_181A37000, v132, v133, v134, buf, 0xCu);
        goto LABEL_340;
      }

      if (v153 != 1)
      {
        v132 = __nwlog_obj();
        v133 = __dst;
        if (!os_log_type_enabled(v132, __dst))
        {
          goto LABEL_340;
        }

        *buf = 136446210;
        *&buf[4] = "nw_masque_get_cached_geohash_value";
        v134 = "%{public}s called with null masque, backtrace limit exceeded";
        goto LABEL_339;
      }

      v143 = __nw_create_backtrace_string();
      v132 = __nwlog_obj();
      v133 = __dst;
      v144 = os_log_type_enabled(v132, __dst);
      if (!v143)
      {
        if (!v144)
        {
          goto LABEL_340;
        }

        *buf = 136446210;
        *&buf[4] = "nw_masque_get_cached_geohash_value";
        v134 = "%{public}s called with null masque, no backtrace";
        goto LABEL_339;
      }

      if (!v144)
      {
        goto LABEL_312;
      }

      *buf = 136446466;
      *&buf[4] = "nw_masque_get_cached_geohash_value";
      *&buf[12] = 2082;
      *&buf[14] = v143;
      v145 = "%{public}s called with null masque, dumping backtrace:%{public}s";
    }

LABEL_311:
    _os_log_impl(&dword_181A37000, v132, v133, v145, buf, 0x16u);
    goto LABEL_312;
  }

  v33 = v32;
  if (!strcasecmp(a2, "User-Agent"))
  {
    *&__dst = 0;
    if (v3 && *v3)
    {
      v88 = *(a1 + 40);
      if ((!v88 || (*(v88 + 505) & 1) == 0) && gLogDatapath == 1)
      {
        if (__nwlog_privacy_proxy_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
        }

        v89 = gprivacy_proxyLogObj;
        if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
        {
          v90 = *(a1 + 40);
          v91 = v90 == 0;
          if (v90)
          {
            v92 = (v90 + 507);
          }

          else
          {
            v92 = "";
          }

          *buf = 136446978;
          *&buf[4] = "nw_masque_add_extra_headers_to_request_block_invoke";
          *&buf[14] = v92;
          v93 = " ";
          *&buf[12] = 2082;
          if (v91)
          {
            v93 = "";
          }

          *&buf[22] = 2080;
          *&buf[24] = v93;
          *&buf[32] = 2082;
          *&buf[34] = v3;
          _os_log_impl(&dword_181A37000, v89, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sReceived user agent %{public}s", buf, 0x2Au);
        }
      }

LABEL_177:
      if (*v3)
      {
        nw_http_fields_append(*(a1 + 48), a2, v3);
      }

LABEL_179:
      v105 = __dst;
      if (!__dst)
      {
        return 1;
      }

LABEL_180:
      free(v105);
      return 1;
    }

    if (nw_utilities_get_user_agent::onceToken != -1)
    {
      dispatch_once(&nw_utilities_get_user_agent::onceToken, &__block_literal_global_13_47236);
    }

    v3 = nw_utilities_get_user_agent::user_agent_string;
    v103 = *(*(a1 + 40) + 503);
    if ((v103 & 0x1000000) != 0)
    {
      asprintf(&__dst, "%s (nwhttp)", nw_utilities_get_user_agent::user_agent_string);
      v3 = __dst;
      v104 = *(a1 + 40);
      if (!v104)
      {
LABEL_175:
        if (gLogDatapath == 1)
        {
          if (__nwlog_privacy_proxy_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
          }

          v121 = gprivacy_proxyLogObj;
          if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
          {
            v122 = *(a1 + 40);
            v123 = v122 == 0;
            if (v122)
            {
              v124 = (v122 + 507);
            }

            else
            {
              v124 = "";
            }

            *buf = 136446978;
            *&buf[4] = "nw_masque_add_extra_headers_to_request_block_invoke";
            *&buf[14] = v124;
            v125 = " ";
            *&buf[12] = 2082;
            if (v123)
            {
              v125 = "";
            }

            *&buf[22] = 2080;
            *&buf[24] = v125;
            *&buf[32] = 2082;
            *&buf[34] = v3;
            _os_log_impl(&dword_181A37000, v121, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sUsing process user agent %{public}s", buf, 0x2Au);
          }
        }

LABEL_176:
        if (!v3)
        {
          goto LABEL_179;
        }

        goto LABEL_177;
      }

      v103 = *(v104 + 503);
    }

    if ((v103 & 0x10000) != 0)
    {
      goto LABEL_176;
    }

    goto LABEL_175;
  }

  if (v27 || v3 && *v3)
  {
    if (!v28 && (!v3 || !*v3))
    {
      nw_masque_add_require_interface_header_to_request(*(*(a1 + 40) + 304), *(a1 + 48));
      return 1;
    }

    if (!v29 && (!v3 || !*v3))
    {
      nw_masque_add_prohibit_interface_header_to_request(*(a1 + 40), *(a1 + 48));
      return 1;
    }

    if (!v30 && (!v3 || !*v3))
    {
      nw_masque_add_client_application_header_to_request(*(*(a1 + 40) + 304), *(a1 + 48));
      return 1;
    }

    if (!v31 && (!v3 || !*v3))
    {
      nw_masque_add_multipath_header_to_request(*(a1 + 40), *(a1 + 48));
      return 1;
    }

    if (!v33 && (!v3 || !*v3))
    {
      nw_masque_add_listener_association_header_to_request(*(a1 + 40), *(a1 + 48));
      return 1;
    }

    goto LABEL_225;
  }

  v98 = *(a1 + 40);
  v99 = *(a1 + 48);
  traffic_class = nw_parameters_get_traffic_class(*(v98 + 304));
  result = 1;
  if (traffic_class <= 499)
  {
    if (traffic_class <= 199)
    {
      if (!traffic_class)
      {
        v101 = nw_http_priority_traffic_class_best_effort;
        v102 = "u=6";
        goto LABEL_243;
      }

      if (traffic_class != 100)
      {
        return result;
      }

      v101 = nw_http_priority_traffic_class_background_system;
    }

    else
    {
      if (traffic_class != 200)
      {
        if (traffic_class == 300)
        {
          v101 = nw_http_priority_traffic_class_responsive_data;
          v102 = "u=5";
        }

        else
        {
          if (traffic_class != 400)
          {
            return result;
          }

          v101 = nw_http_priority_traffic_class_oam;
          v102 = "u=4";
        }

        goto LABEL_243;
      }

      v101 = nw_http_priority_traffic_class_background_user;
    }

    v102 = "u=7";
    goto LABEL_243;
  }

  if (traffic_class > 699)
  {
    switch(traffic_class)
    {
      case 700:
        v101 = nw_http_priority_traffic_class_video;
        break;
      case 900:
        v101 = nw_http_priority_traffic_class_network_control;
        v102 = "u=0";
        goto LABEL_243;
      case 800:
        v101 = nw_http_priority_traffic_class_voice;
        break;
      default:
        return result;
    }

    v102 = "u=1";
    goto LABEL_243;
  }

  if (traffic_class == 500)
  {
    v101 = nw_http_priority_traffic_class_av_streaming;
    v102 = "u=3";
  }

  else
  {
    if (traffic_class != 600)
    {
      return result;
    }

    v101 = nw_http_priority_traffic_class_responsive_av;
    v102 = "u=2";
  }

LABEL_243:
  v114 = *v101;
  if (v114)
  {
    *buf = 0;
    asprintf(buf, "%s,%s", v102, v114);
    nw_http_fields_append(v99, "Priority", *buf);
    v105 = *buf;
    if (!*buf)
    {
      return 1;
    }

    goto LABEL_180;
  }

  return result;
}

void sub_181DAD4E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void nw_http_fields_append(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (!v5)
  {
    v6 = __nwlog_obj();
    os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    v7 = _os_log_send_and_compose_impl();

    if (__nwlog_should_abort(v7))
    {
      goto LABEL_11;
    }

    free(v7);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_7:
    v8 = __nwlog_obj();
    os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    v9 = _os_log_send_and_compose_impl();

    if (__nwlog_should_abort(v9))
    {
      goto LABEL_11;
    }

    free(v9);
    if (a3)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (!a2)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (a3)
  {
LABEL_4:
    _nw_http_fields_append(v5, a2, a3);

    return;
  }

LABEL_9:
  v10 = __nwlog_obj();
  os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
  v11 = _os_log_send_and_compose_impl();

  if (!__nwlog_should_abort(v11))
  {
    free(v11);
    goto LABEL_4;
  }

LABEL_11:
  __break(1u);
}

uint64_t sub_181DAD744(uint64_t a1, unint64_t a2, const char *a3)
{

  sub_181CA0008(a2, -1, &v22);
  v6 = v23;
  if (v23)
  {
    v7 = v22;
    v8 = v24;
    v9 = v25;
    v10 = strlen(a3);
    if (v10)
    {
      v11 = 0;
      while ((a3[v11] & 0x80000000) == 0)
      {
        if (v10 == ++v11)
        {
          goto LABEL_6;
        }
      }

      v22 = a3;
      v23 = v10;
      v24 = sub_1822876F4;
      v25 = 0;
      v21 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A5B0);
      sub_181AB3DCC(&qword_1EA83A5B8, &qword_1EA83A5B0);
      sub_182AD30A8();
      v12 = 0;
      v14 = 0xE000000000000000;
    }

    else
    {
LABEL_6:
      v12 = sub_182AD30B8();
      v14 = v13;
    }

    v15 = sub_181CA1930(v12, v14);
    v17 = v16;

    v22 = v7;
    v23 = v6;
    v24 = v8;
    v25 = v9;
    v26 = 0;
    *v27 = v21;
    *&v27[3] = *(&v21 + 3);
    v28 = v15;
    v29 = v17;
    v19 = MEMORY[0x1EEE9AC00](v18);
    (*(*a1 + 88))(sub_181DAD98C, v19);

    return sub_181CA27BC(&v22);
  }

  else
  {
    result = sub_182AD3EA8();
    __break(1u);
  }

  return result;
}

uint64_t sub_181DAD994(void (*a1)(uint64_t))
{
  swift_beginAccess();
  a1(v1 + 24);
  return swift_endAccess();
}

void nw_quic_report_application_result_on_queue(void *a1, int a2)
{
  v72 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!v3)
  {
    v51 = __nwlog_obj();
    *buf = 136446210;
    v64 = "nw_quic_report_application_result_on_queue";
    v52 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v61 = 0;
    if (!__nwlog_fault(v52, &type, &v61))
    {
      goto LABEL_99;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v53 = __nwlog_obj();
      v54 = type;
      if (os_log_type_enabled(v53, type))
      {
        *buf = 136446210;
        v64 = "nw_quic_report_application_result_on_queue";
        v55 = "%{public}s called with null association";
LABEL_97:
        _os_log_impl(&dword_181A37000, v53, v54, v55, buf, 0xCu);
      }
    }

    else
    {
      if (v61 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v53 = __nwlog_obj();
        v54 = type;
        v58 = os_log_type_enabled(v53, type);
        if (backtrace_string)
        {
          if (v58)
          {
            *buf = 136446466;
            v64 = "nw_quic_report_application_result_on_queue";
            v65 = 2082;
            v66 = backtrace_string;
            _os_log_impl(&dword_181A37000, v53, v54, "%{public}s called with null association, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_99;
        }

        if (!v58)
        {
          goto LABEL_98;
        }

        *buf = 136446210;
        v64 = "nw_quic_report_application_result_on_queue";
        v55 = "%{public}s called with null association, no backtrace";
        goto LABEL_97;
      }

      v53 = __nwlog_obj();
      v54 = type;
      if (os_log_type_enabled(v53, type))
      {
        *buf = 136446210;
        v64 = "nw_quic_report_application_result_on_queue";
        v55 = "%{public}s called with null association, backtrace limit exceeded";
        goto LABEL_97;
      }
    }

LABEL_98:

LABEL_99:
    if (v52)
    {
      free(v52);
    }

    goto LABEL_70;
  }

  if (nw_protocol_copy_quic_connection_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_quic_connection_definition_onceToken, &__block_literal_global_30937);
  }

  v4 = nw_protocol_copy_quic_connection_definition_quic_definition;
  if (!v4)
  {
    v56 = __nwlog_obj();
    *buf = 136446210;
    v64 = "nw_quic_report_application_result_on_queue";
    v26 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v61 = 0;
    if (__nwlog_fault(v26, &type, &v61))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v27 = __nwlog_obj();
        v28 = type;
        if (!os_log_type_enabled(v27, type))
        {
          goto LABEL_47;
        }

        *buf = 136446210;
        v64 = "nw_quic_report_application_result_on_queue";
        v29 = "%{public}s called with null definition";
        goto LABEL_45;
      }

      if (v61 != 1)
      {
        v27 = __nwlog_obj();
        v28 = type;
        if (!os_log_type_enabled(v27, type))
        {
          goto LABEL_47;
        }

        *buf = 136446210;
        v64 = "nw_quic_report_application_result_on_queue";
        v29 = "%{public}s called with null definition, backtrace limit exceeded";
        goto LABEL_45;
      }

      v59 = __nw_create_backtrace_string();
      v27 = __nwlog_obj();
      v28 = type;
      v60 = os_log_type_enabled(v27, type);
      if (!v59)
      {
        if (!v60)
        {
          goto LABEL_47;
        }

        *buf = 136446210;
        v64 = "nw_quic_report_application_result_on_queue";
        v29 = "%{public}s called with null definition, no backtrace";
        goto LABEL_45;
      }

      if (v60)
      {
        *buf = 136446466;
        v64 = "nw_quic_report_application_result_on_queue";
        v65 = 2082;
        v66 = v59;
        _os_log_impl(&dword_181A37000, v27, v28, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v59);
    }

LABEL_48:
    if (!v26)
    {
LABEL_69:

LABEL_70:
      return;
    }

LABEL_49:
    free(v26);
    goto LABEL_69;
  }

  cached_content_for_protocol = nw_association_get_cached_content_for_protocol(v3, v4);
  if (cached_content_for_protocol || (cached_content_for_protocol = malloc_type_calloc(1uLL, 0x30uLL, 0x3A426E9CuLL)) != 0)
  {
    v6 = cached_content_for_protocol;
    if (a2)
    {
      v7 = *(cached_content_for_protocol + 36) + 1;
      *(cached_content_for_protocol + 36) = v7;
      if (v7 != v7 << 31 >> 31)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v9 = *(v6 + 36);
        *buf = 136446978;
        v64 = "nw_quic_report_application_result_on_queue";
        v65 = 2082;
        v66 = "association_cache->application_success_count";
        v67 = 2048;
        v68 = 1;
        v69 = 2048;
        *v70 = v9;
        v10 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v61 = 0;
        if (!__nwlog_fault(v10, &type, &v61))
        {
LABEL_54:
          if (v10)
          {
            free(v10);
          }

          *(v6 + 36) = -1;
          goto LABEL_64;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v11 = gLogObj;
          v12 = type;
          if (os_log_type_enabled(v11, type))
          {
            v13 = *(v6 + 36);
            *buf = 136446978;
            v64 = "nw_quic_report_application_result_on_queue";
            v65 = 2082;
            v66 = "association_cache->application_success_count";
            v67 = 2048;
            v68 = 1;
            v69 = 2048;
            *v70 = v13;
            v14 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_52:
            _os_log_impl(&dword_181A37000, v11, v12, v14, buf, 0x2Au);
          }
        }

        else
        {
          if (v61 == 1)
          {
            v30 = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v11 = gLogObj;
            v12 = type;
            v31 = os_log_type_enabled(v11, type);
            if (v30)
            {
              if (v31)
              {
                v32 = *(v6 + 36);
                *buf = 136447234;
                v64 = "nw_quic_report_application_result_on_queue";
                v65 = 2082;
                v66 = "association_cache->application_success_count";
                v67 = 2048;
                v68 = 1;
                v69 = 2048;
                *v70 = v32;
                *&v70[8] = 2082;
                v71 = v30;
                _os_log_impl(&dword_181A37000, v11, v12, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
              }

              free(v30);
              goto LABEL_54;
            }

            if (!v31)
            {
              goto LABEL_53;
            }

            v43 = *(v6 + 36);
            *buf = 136446978;
            v64 = "nw_quic_report_application_result_on_queue";
            v65 = 2082;
            v66 = "association_cache->application_success_count";
            v67 = 2048;
            v68 = 1;
            v69 = 2048;
            *v70 = v43;
            v14 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
            goto LABEL_52;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v11 = gLogObj;
          v12 = type;
          if (os_log_type_enabled(v11, type))
          {
            v39 = *(v6 + 36);
            *buf = 136446978;
            v64 = "nw_quic_report_application_result_on_queue";
            v65 = 2082;
            v66 = "association_cache->application_success_count";
            v67 = 2048;
            v68 = 1;
            v69 = 2048;
            *v70 = v39;
            v14 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
            goto LABEL_52;
          }
        }

LABEL_53:

        goto LABEL_54;
      }

LABEL_64:
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v45 = gLogObj;
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
      {
        v46 = "failure";
        v47 = *(v6 + 36);
        v48 = *(v6 + 40);
        if (a2)
        {
          v46 = "success";
        }

        *buf = 136447234;
        v64 = "nw_quic_report_application_result_on_queue";
        v65 = 2112;
        v66 = v3;
        v67 = 2080;
        v68 = v46;
        v69 = 1024;
        *v70 = v47;
        *&v70[4] = 1024;
        *&v70[6] = v48;
        _os_log_impl(&dword_181A37000, v45, OS_LOG_TYPE_DEBUG, "%{public}s %@ recording %s for QUIC application result, total success: %u, total failure: %u", buf, 0x2Cu);
      }

      int64_with_default = networkd_settings_get_int64_with_default(nw_setting_quic_failure_cache_seconds, 1800);
      v50 = time(0);
      nw_association_set_cached_content_for_protocol(v3, v4, v6, v50 + int64_with_default);
      goto LABEL_69;
    }

    v15 = *(cached_content_for_protocol + 40) + 1;
    *(cached_content_for_protocol + 40) = v15;
    if (v15 == v15 << 31 >> 31)
    {
      goto LABEL_64;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v16 = gLogObj;
    v17 = *(v6 + 40);
    *buf = 136446978;
    v64 = "nw_quic_report_application_result_on_queue";
    v65 = 2082;
    v66 = "association_cache->application_failure_count";
    v67 = 2048;
    v68 = 1;
    v69 = 2048;
    *v70 = v17;
    v18 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v61 = 0;
    if (!__nwlog_fault(v18, &type, &v61))
    {
LABEL_61:
      if (v18)
      {
        free(v18);
      }

      *(v6 + 40) = -1;
      goto LABEL_64;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v19 = gLogObj;
      v20 = type;
      if (os_log_type_enabled(v19, type))
      {
        v21 = *(v6 + 40);
        *buf = 136446978;
        v64 = "nw_quic_report_application_result_on_queue";
        v65 = 2082;
        v66 = "association_cache->application_failure_count";
        v67 = 2048;
        v68 = 1;
        v69 = 2048;
        *v70 = v21;
        v22 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_59:
        _os_log_impl(&dword_181A37000, v19, v20, v22, buf, 0x2Au);
      }
    }

    else
    {
      if (v61 == 1)
      {
        v33 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v19 = gLogObj;
        v20 = type;
        v34 = os_log_type_enabled(v19, type);
        if (v33)
        {
          if (v34)
          {
            v35 = *(v6 + 40);
            *buf = 136447234;
            v64 = "nw_quic_report_application_result_on_queue";
            v65 = 2082;
            v66 = "association_cache->application_failure_count";
            v67 = 2048;
            v68 = 1;
            v69 = 2048;
            *v70 = v35;
            *&v70[8] = 2082;
            v71 = v33;
            _os_log_impl(&dword_181A37000, v19, v20, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v33);
          goto LABEL_61;
        }

        if (!v34)
        {
          goto LABEL_60;
        }

        v44 = *(v6 + 40);
        *buf = 136446978;
        v64 = "nw_quic_report_application_result_on_queue";
        v65 = 2082;
        v66 = "association_cache->application_failure_count";
        v67 = 2048;
        v68 = 1;
        v69 = 2048;
        *v70 = v44;
        v22 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
        goto LABEL_59;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v19 = gLogObj;
      v20 = type;
      if (os_log_type_enabled(v19, type))
      {
        v40 = *(v6 + 40);
        *buf = 136446978;
        v64 = "nw_quic_report_application_result_on_queue";
        v65 = 2082;
        v66 = "association_cache->application_failure_count";
        v67 = 2048;
        v68 = 1;
        v69 = 2048;
        *v70 = v40;
        v22 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
        goto LABEL_59;
      }
    }

LABEL_60:

    goto LABEL_61;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v23 = gLogObj;
  os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  v64 = "nw_quic_report_application_result_on_queue";
  v65 = 2048;
  v66 = 1;
  v67 = 2048;
  v68 = 48;
  v24 = _os_log_send_and_compose_impl();

  if (!__nwlog_should_abort(v24))
  {
    free(v24);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v25 = gLogObj;
    *buf = 136446210;
    v64 = "nw_quic_report_application_result_on_queue";
    v26 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v61 = 0;
    if (!__nwlog_fault(v26, &type, &v61))
    {
      goto LABEL_48;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v27 = gLogObj;
      v28 = type;
      if (os_log_type_enabled(v27, type))
      {
        *buf = 136446210;
        v64 = "nw_quic_report_application_result_on_queue";
        v29 = "%{public}s called with null association_cache";
LABEL_45:
        v41 = v27;
        v42 = v28;
LABEL_46:
        _os_log_impl(&dword_181A37000, v41, v42, v29, buf, 0xCu);
      }
    }

    else
    {
      if (v61 == 1)
      {
        v36 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v27 = gLogObj;
        v37 = type;
        v38 = os_log_type_enabled(v27, type);
        if (v36)
        {
          if (v38)
          {
            *buf = 136446466;
            v64 = "nw_quic_report_application_result_on_queue";
            v65 = 2082;
            v66 = v36;
            _os_log_impl(&dword_181A37000, v27, v37, "%{public}s called with null association_cache, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v36);
          if (!v26)
          {
            goto LABEL_69;
          }

          goto LABEL_49;
        }

        if (!v38)
        {
          goto LABEL_47;
        }

        *buf = 136446210;
        v64 = "nw_quic_report_application_result_on_queue";
        v29 = "%{public}s called with null association_cache, no backtrace";
        v41 = v27;
        v42 = v37;
        goto LABEL_46;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v27 = gLogObj;
      v28 = type;
      if (os_log_type_enabled(v27, type))
      {
        *buf = 136446210;
        v64 = "nw_quic_report_application_result_on_queue";
        v29 = "%{public}s called with null association_cache, backtrace limit exceeded";
        goto LABEL_45;
      }
    }

LABEL_47:

    goto LABEL_48;
  }

  __break(1u);
}

uint64_t sub_181DAE950(uint64_t *a1, __int128 *a2)
{
  v10 = *a2;
  v2 = *(a2 + 2);
  v3 = *(a2 + 3);
  v4 = *(a2 + 32);
  v5 = *(a2 + 5);
  v6 = *(a2 + 6);
  v7 = *a1;
  swift_beginAccess();
  v8 = *(*(v7 + 16) + 16);
  v11 = v10;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  v15 = v5;
  v16 = v6;
  return sub_181DAE9E4(v8, v8, &v11);
}

uint64_t sub_181DAE9E4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_181DAEBE0();

    *v4 = v9;
  }

  swift_beginAccess();
  if (*(*(v9 + 16) + 16) == a1)
  {
    v10 = *a3;
    v11 = *(a3 + 8);
    v12 = *(a3 + 32);
    v21 = *(a3 + 16);
    v15 = v12;
    v16 = *(a3 + 48);
    result = sub_181CBD984(v10, v11);
    if ((result & 0x1FF) != 0x3A)
    {
      *&v22 = v10;
      *(&v22 + 1) = v11;
      v23 = v21;
      v24 = v15;
      v25 = v16;
      sub_181AB5D28(a3, &v17, &qword_1EA839C18);
      sub_181CA21B0(&v22);
      return sub_181F49A88(a3, &qword_1EA839C18);
    }
  }

  else
  {
    swift_beginAccess();
    *(v9 + 24) = 0;

    v14 = *(a3 + 16);
    v17 = *a3;
    v18 = v14;
    v19 = *(a3 + 32);
    v20 = *(a3 + 48);
    swift_beginAccess();
    v22 = v17;
    v23 = v18;
    v24 = v19;
    v25 = v20;
    v26 = sub_1820883E8;
    v27 = 0;
    sub_181AB5D28(a3, &v15, &qword_1EA839C18);
    sub_181FCDB58(a1, a2, &v22);
    swift_endAccess();
    result = sub_181F49A88(&v22, &qword_1EA83A080);
    if (*(*(v9 + 16) + 16) <= 0xFFFEuLL)
    {
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_181DAEBE0()
{
  v1 = v0;
  v2 = (*(*v0 + 144))();
  swift_beginAccess();
  v3 = v0[2];
  swift_beginAccess();
  *(v2 + 16) = v3;

  v5[2] = v1;
  v5[3] = v2;
  (*(*v1 + 152))(sub_181DAED4C, v5, MEMORY[0x1E69E7CA8] + 8);
  return v2;
}

uint64_t sub_181DAED00()
{
  v0 = swift_allocObject();
  *(v0 + 32) = 0;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  *(v0 + 24) = sub_181CAF7B4(v1);
  return v0;
}

uint64_t sub_181DAED68(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 24);
  swift_beginAccess();
  *(a2 + 24) = v4;
}

uint64_t __nw_http_connection_metadata_copy_cached_token_block_invoke(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 224) & 0x20) != 0)
  {
    v10 = *(a1 + 40);
    if (v10)
    {
      *v10 = 1;
    }

    return 1;
  }

  v3 = *(a2 + 80);
  if (!v3)
  {
    return 1;
  }

  length = xpc_data_get_length(v3);
  if (!length)
  {
    v11 = __nwlog_obj();
    os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    v12 = _os_log_send_and_compose_impl();

    result = __nwlog_should_abort(v12);
    if (result)
    {
      goto LABEL_13;
    }

    free(v12);
  }

  v6 = malloc_type_malloc(length, 0x925691CFuLL);
  if (v6)
  {
LABEL_7:
    *(*(*(a1 + 32) + 8) + 24) = v6;
    **(a1 + 48) = xpc_data_get_bytes(*(a2 + 80), *(*(*(a1 + 32) + 8) + 24), 0, length);
    return 1;
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
    v6 = 0;
    goto LABEL_7;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t nw_path_copy_token_from_agent(void *a1, const unsigned __int8 *a2, void *a3)
{
  v49 = *MEMORY[0x1E69E9840];
  v5 = a1;
  if (!v5)
  {
    v31 = __nwlog_obj();
    *buf = 136446210;
    v45 = "nw_path_copy_token_from_agent";
    v7 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v43 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v7, type, &v43))
    {
      goto LABEL_34;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v32 = type[0];
      if (os_log_type_enabled(v8, type[0]))
      {
        *buf = 136446210;
        v45 = "nw_path_copy_token_from_agent";
        _os_log_impl(&dword_181A37000, v8, v32, "%{public}s called with null path", buf, 0xCu);
      }

      goto LABEL_33;
    }

    if (v43 != OS_LOG_TYPE_INFO)
    {
      v8 = __nwlog_obj();
      v40 = type[0];
      if (os_log_type_enabled(v8, type[0]))
      {
        *buf = 136446210;
        v45 = "nw_path_copy_token_from_agent";
        _os_log_impl(&dword_181A37000, v8, v40, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_33;
    }

    backtrace_string = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v36 = type[0];
    v37 = os_log_type_enabled(v8, type[0]);
    if (!backtrace_string)
    {
      if (v37)
      {
        *buf = 136446210;
        v45 = "nw_path_copy_token_from_agent";
        _os_log_impl(&dword_181A37000, v8, v36, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }

      goto LABEL_33;
    }

    if (v37)
    {
      *buf = 136446466;
      v45 = "nw_path_copy_token_from_agent";
      v46 = 2082;
      *v47 = backtrace_string;
      _os_log_impl(&dword_181A37000, v8, v36, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_73;
  }

  if (!a3)
  {
    v33 = __nwlog_obj();
    *buf = 136446210;
    v45 = "nw_path_copy_token_from_agent";
    v7 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v43 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v7, type, &v43))
    {
      goto LABEL_34;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v34 = type[0];
      if (os_log_type_enabled(v8, type[0]))
      {
        *buf = 136446210;
        v45 = "nw_path_copy_token_from_agent";
        _os_log_impl(&dword_181A37000, v8, v34, "%{public}s called with null out_token_length", buf, 0xCu);
      }

LABEL_33:

      goto LABEL_34;
    }

    if (v43 != OS_LOG_TYPE_INFO)
    {
      v8 = __nwlog_obj();
      v41 = type[0];
      if (os_log_type_enabled(v8, type[0]))
      {
        *buf = 136446210;
        v45 = "nw_path_copy_token_from_agent";
        _os_log_impl(&dword_181A37000, v8, v41, "%{public}s called with null out_token_length, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_33;
    }

    backtrace_string = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v38 = type[0];
    v39 = os_log_type_enabled(v8, type[0]);
    if (!backtrace_string)
    {
      if (v39)
      {
        *buf = 136446210;
        v45 = "nw_path_copy_token_from_agent";
        _os_log_impl(&dword_181A37000, v8, v38, "%{public}s called with null out_token_length, no backtrace", buf, 0xCu);
      }

      goto LABEL_33;
    }

    if (v39)
    {
      *buf = 136446466;
      v45 = "nw_path_copy_token_from_agent";
      v46 = 2082;
      *v47 = backtrace_string;
      _os_log_impl(&dword_181A37000, v8, v38, "%{public}s called with null out_token_length, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_73:

    free(backtrace_string);
    goto LABEL_34;
  }

  if (uuid_is_null(a2))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    *buf = 136446210;
    v45 = "nw_path_copy_token_from_agent";
    v7 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v43 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v7, type, &v43))
    {
      goto LABEL_34;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v9 = type[0];
      if (os_log_type_enabled(v8, type[0]))
      {
        *buf = 136446210;
        v45 = "nw_path_copy_token_from_agent";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null agent_uuid", buf, 0xCu);
      }
    }

    else if (v43 == OS_LOG_TYPE_INFO)
    {
      v18 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v19 = type[0];
      v20 = os_log_type_enabled(v8, type[0]);
      if (v18)
      {
        if (v20)
        {
          *buf = 136446466;
          v45 = "nw_path_copy_token_from_agent";
          v46 = 2082;
          *v47 = v18;
          _os_log_impl(&dword_181A37000, v8, v19, "%{public}s called with null agent_uuid, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v18);
        if (!v7)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }

      if (v20)
      {
        *buf = 136446210;
        v45 = "nw_path_copy_token_from_agent";
        _os_log_impl(&dword_181A37000, v8, v19, "%{public}s called with null agent_uuid, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v21 = type[0];
      if (os_log_type_enabled(v8, type[0]))
      {
        *buf = 136446210;
        v45 = "nw_path_copy_token_from_agent";
        _os_log_impl(&dword_181A37000, v8, v21, "%{public}s called with null agent_uuid, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_33;
  }

  *a3 = 0;
  v10 = _nw_path_copy_parameters(v5);
  v11 = nw_parameters_copy_context(v10);
  v12 = nw_path_shared_necp_fd(v11);

  if (v12 < 0)
  {
    goto LABEL_36;
  }

  *type = *a2;
  v13 = malloc_type_calloc(1uLL, 0x1000uLL, 0x98510CB9uLL);
  if (v13)
  {
LABEL_13:
    v17 = necp_client_action();
    if (v17 > 0)
    {
      *a3 = v17;
LABEL_37:

      return v13;
    }

    if (v13)
    {
      free(v13);
    }

    v22 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    if (v22 == 96 || v22 == 2)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v23 = gLogObj;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v45 = "nw_path_copy_token_from_agent";
        v46 = 1024;
        *v47 = v22;
        _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_ERROR, "%{public}s NECP_CLIENT_ACTION_ACQUIRE_AGENT_TOKEN %{darwin.errno}d", buf, 0x12u);
      }

      goto LABEL_36;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v24 = gLogObj;
    *buf = 136446466;
    v45 = "nw_path_copy_token_from_agent";
    v46 = 1024;
    *v47 = v22;
    v7 = _os_log_send_and_compose_impl();

    v43 = OS_LOG_TYPE_ERROR;
    v42 = 0;
    if (__nwlog_fault(v7, &v43, &v42))
    {
      if (v43 == OS_LOG_TYPE_FAULT)
      {
        v25 = __nwlog_obj();
        v26 = v43;
        if (os_log_type_enabled(v25, v43))
        {
          *buf = 136446466;
          v45 = "nw_path_copy_token_from_agent";
          v46 = 1024;
          *v47 = v22;
          _os_log_impl(&dword_181A37000, v25, v26, "%{public}s NECP_CLIENT_ACTION_ACQUIRE_AGENT_TOKEN %{darwin.errno}d", buf, 0x12u);
        }

LABEL_53:

        goto LABEL_34;
      }

      if (v42 != 1)
      {
        v25 = __nwlog_obj();
        v30 = v43;
        if (os_log_type_enabled(v25, v43))
        {
          *buf = 136446466;
          v45 = "nw_path_copy_token_from_agent";
          v46 = 1024;
          *v47 = v22;
          _os_log_impl(&dword_181A37000, v25, v30, "%{public}s NECP_CLIENT_ACTION_ACQUIRE_AGENT_TOKEN %{darwin.errno}d, backtrace limit exceeded", buf, 0x12u);
        }

        goto LABEL_53;
      }

      v27 = __nw_create_backtrace_string();
      v25 = __nwlog_obj();
      v28 = v43;
      v29 = os_log_type_enabled(v25, v43);
      if (!v27)
      {
        if (v29)
        {
          *buf = 136446466;
          v45 = "nw_path_copy_token_from_agent";
          v46 = 1024;
          *v47 = v22;
          _os_log_impl(&dword_181A37000, v25, v28, "%{public}s NECP_CLIENT_ACTION_ACQUIRE_AGENT_TOKEN %{darwin.errno}d, no backtrace", buf, 0x12u);
        }

        goto LABEL_53;
      }

      if (v29)
      {
        *buf = 136446722;
        v45 = "nw_path_copy_token_from_agent";
        v46 = 1024;
        *v47 = v22;
        *&v47[4] = 2082;
        *&v47[6] = v27;
        _os_log_impl(&dword_181A37000, v25, v28, "%{public}s NECP_CLIENT_ACTION_ACQUIRE_AGENT_TOKEN %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
      }

      free(v27);
    }

LABEL_34:
    if (v7)
    {
LABEL_35:
      free(v7);
    }

LABEL_36:
    v13 = 0;
    goto LABEL_37;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v14 = gLogObj;
  os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  v45 = "nw_path_copy_token_from_agent";
  v46 = 2048;
  *v47 = 1;
  *&v47[8] = 2048;
  *&v47[10] = 4096;
  v15 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v15);
  if (!result)
  {
    free(v15);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void nw_http_connection_metadata_set_cached_token(void *a1, uint64_t a2, uint64_t a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a1;
  if (nw_protocol_copy_http_connection_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_connection_definition_onceToken, &__block_literal_global_106);
  }

  if ((nw_protocol_metadata_matches_definition(v5, nw_protocol_copy_http_connection_definition_definition) & 1) == 0)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_http_connection_metadata_set_cached_token";
    v8 = _os_log_send_and_compose_impl();

    v23 = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v8, &v23, &v22))
    {
      goto LABEL_37;
    }

    if (v23 == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = v23;
      if (os_log_type_enabled(v9, v23))
      {
        *buf = 136446210;
        v25 = "nw_http_connection_metadata_set_cached_token";
        v11 = "%{public}s metadata must be http_connection";
LABEL_35:
        _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0xCu);
      }
    }

    else if (v22 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v10 = v23;
      v14 = os_log_type_enabled(v9, v23);
      if (backtrace_string)
      {
        if (v14)
        {
          *buf = 136446466;
          v25 = "nw_http_connection_metadata_set_cached_token";
          v26 = 2082;
          v27 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s metadata must be http_connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_37:
        if (!v8)
        {
          goto LABEL_7;
        }

LABEL_38:
        free(v8);
        goto LABEL_7;
      }

      if (v14)
      {
        *buf = 136446210;
        v25 = "nw_http_connection_metadata_set_cached_token";
        v11 = "%{public}s metadata must be http_connection, no backtrace";
        goto LABEL_35;
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v10 = v23;
      if (os_log_type_enabled(v9, v23))
      {
        *buf = 136446210;
        v25 = "nw_http_connection_metadata_set_cached_token";
        v11 = "%{public}s metadata must be http_connection, backtrace limit exceeded";
        goto LABEL_35;
      }
    }

LABEL_36:

    goto LABEL_37;
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v18 = __nw_http_connection_metadata_set_cached_token_block_invoke;
  v19 = &__block_descriptor_48_e9_B16__0_v8l;
  v20 = a2;
  v21 = a3;
  if (v5)
  {
    handle = _nw_protocol_metadata_get_handle(v5);
    if (handle)
    {
      v18(v17, handle);
    }

    goto LABEL_7;
  }

  v12 = __nwlog_obj();
  *buf = 136446210;
  v25 = "nw_protocol_metadata_access_handle";
  v8 = _os_log_send_and_compose_impl();

  v23 = OS_LOG_TYPE_ERROR;
  v22 = 0;
  if (!__nwlog_fault(v8, &v23, &v22))
  {
    goto LABEL_37;
  }

  if (v23 == OS_LOG_TYPE_FAULT)
  {
    v9 = __nwlog_obj();
    v10 = v23;
    if (os_log_type_enabled(v9, v23))
    {
      *buf = 136446210;
      v25 = "nw_protocol_metadata_access_handle";
      v11 = "%{public}s called with null metadata";
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  if (v22 != 1)
  {
    v9 = __nwlog_obj();
    v10 = v23;
    if (os_log_type_enabled(v9, v23))
    {
      *buf = 136446210;
      v25 = "nw_protocol_metadata_access_handle";
      v11 = "%{public}s called with null metadata, backtrace limit exceeded";
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  v15 = __nw_create_backtrace_string();
  v9 = __nwlog_obj();
  v10 = v23;
  v16 = os_log_type_enabled(v9, v23);
  if (!v15)
  {
    if (v16)
    {
      *buf = 136446210;
      v25 = "nw_protocol_metadata_access_handle";
      v11 = "%{public}s called with null metadata, no backtrace";
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  if (v16)
  {
    *buf = 136446466;
    v25 = "nw_protocol_metadata_access_handle";
    v26 = 2082;
    v27 = v15;
    _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v15);
  if (v8)
  {
    goto LABEL_38;
  }

LABEL_7:
}

uint64_t __nw_http_connection_metadata_set_cached_token_block_invoke(uint64_t a1, uint64_t a2)
{
  *(a2 + 224) &= ~0x20u;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      v4 = xpc_data_create(v4, v5);
    }

    else
    {
      v4 = 0;
    }
  }

  v6 = *(a2 + 80);
  *(a2 + 80) = v4;

  return 1;
}

void nw_http_metadata_set_request(void *a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (nw_protocol_copy_http_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_definition_onceToken, &__block_literal_global_16_75909);
  }

  if (nw_protocol_metadata_matches_definition(v3, nw_protocol_copy_http_definition_http_definition))
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v21 = __nw_http_metadata_set_request_block_invoke;
    v22 = &unk_1E6A3A950;
    v23 = v4;
    if (v3)
    {
      handle = _nw_protocol_metadata_get_handle(v3);
      if (handle)
      {
        v21(v20, handle);
      }

LABEL_7:

      goto LABEL_8;
    }

    v11 = __nwlog_obj();
    *buf = 136446210;
    v27 = "nw_protocol_metadata_access_handle";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (!__nwlog_fault(v12, &type, &v24))
    {
LABEL_41:
      if (v12)
      {
        free(v12);
      }

      goto LABEL_7;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v27 = "nw_protocol_metadata_access_handle";
        v15 = "%{public}s called with null metadata";
LABEL_39:
        _os_log_impl(&dword_181A37000, v13, v14, v15, buf, 0xCu);
      }
    }

    else
    {
      if (v24 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v13 = __nwlog_obj();
        v14 = type;
        v19 = os_log_type_enabled(v13, type);
        if (backtrace_string)
        {
          if (v19)
          {
            *buf = 136446466;
            v27 = "nw_protocol_metadata_access_handle";
            v28 = 2082;
            v29 = backtrace_string;
            _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_41;
        }

        if (!v19)
        {
          goto LABEL_40;
        }

        *buf = 136446210;
        v27 = "nw_protocol_metadata_access_handle";
        v15 = "%{public}s called with null metadata, no backtrace";
        goto LABEL_39;
      }

      v13 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v27 = "nw_protocol_metadata_access_handle";
        v15 = "%{public}s called with null metadata, backtrace limit exceeded";
        goto LABEL_39;
      }
    }

LABEL_40:

    goto LABEL_41;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v27 = "nw_http_metadata_set_request";
  v7 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v24 = 0;
  if (__nwlog_fault(v7, &type, &v24))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v27 = "nw_http_metadata_set_request";
        v10 = "%{public}s metadata must be http";
LABEL_33:
        _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
      }
    }

    else
    {
      if (v24 == 1)
      {
        v16 = __nw_create_backtrace_string();
        v8 = __nwlog_obj();
        v9 = type;
        v17 = os_log_type_enabled(v8, type);
        if (v16)
        {
          if (v17)
          {
            *buf = 136446466;
            v27 = "nw_http_metadata_set_request";
            v28 = 2082;
            v29 = v16;
            _os_log_impl(&dword_181A37000, v8, v9, "%{public}s metadata must be http, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v16);
          goto LABEL_35;
        }

        if (!v17)
        {
          goto LABEL_34;
        }

        *buf = 136446210;
        v27 = "nw_http_metadata_set_request";
        v10 = "%{public}s metadata must be http, no backtrace";
        goto LABEL_33;
      }

      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v27 = "nw_http_metadata_set_request";
        v10 = "%{public}s metadata must be http, backtrace limit exceeded";
        goto LABEL_33;
      }
    }

LABEL_34:
  }

LABEL_35:
  if (v7)
  {
    free(v7);
  }

LABEL_8:
}

uint64_t __nw_http_metadata_set_request_block_invoke(uint64_t a1, uint64_t a2)
{
  objc_storeStrong((a2 + 24), *(a1 + 32));
  v3 = *(a2 + 32);
  *(a2 + 32) = 0;

  return 1;
}

uint64_t nw_masque_send_metadata(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_masque_send_metadata";
    v11 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (!__nwlog_fault(v11, type, &v30))
    {
      goto LABEL_27;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type[0];
      if (!os_log_type_enabled(v12, type[0]))
      {
        goto LABEL_27;
      }

      *buf = 136446210;
      *&buf[4] = "nw_masque_send_metadata";
      v14 = "%{public}s called with null masque";
    }

    else if (v30 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v13 = type[0];
      v19 = os_log_type_enabled(v12, type[0]);
      if (backtrace_string)
      {
        if (v19)
        {
          *buf = 136446466;
          *&buf[4] = "nw_masque_send_metadata";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null masque, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_27;
      }

      if (!v19)
      {
LABEL_27:
        if (v11)
        {
          free(v11);
        }

        return 0;
      }

      *buf = 136446210;
      *&buf[4] = "nw_masque_send_metadata";
      v14 = "%{public}s called with null masque, no backtrace";
    }

    else
    {
      v12 = __nwlog_obj();
      v13 = type[0];
      if (!os_log_type_enabled(v12, type[0]))
      {
        goto LABEL_27;
      }

      *buf = 136446210;
      *&buf[4] = "nw_masque_send_metadata";
      v14 = "%{public}s called with null masque, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v12, v13, v14, buf, 0xCu);
    goto LABEL_27;
  }

  *type = 0;
  v29 = type;
  v6 = (*(*(a3 + 24) + 88))(a3, a1 - 96, 0, 0, 1, type);
  if ((*(a1 + 505) & 1) == 0 && gLogDatapath == 1)
  {
    v15 = v6;
    if (__nwlog_privacy_proxy_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
    }

    v16 = gprivacy_proxyLogObj;
    v17 = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG);
    v6 = v15;
    if (v17)
    {
      *buf = 136446978;
      *&buf[4] = "nw_masque_send_metadata";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 507;
      *&buf[22] = 2080;
      v32 = " ";
      v33 = 1024;
      v34 = v15;
      _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sGot %u output frames", buf, 0x26u);
      v6 = v15;
    }
  }

  if (!v6)
  {
    return 0;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2000000000;
  LOBYTE(v32) = 0;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 0x40000000;
  v22 = ___ZL23nw_masque_send_metadataP9nw_masqueP20nw_protocol_metadataP11nw_protocol_block_invoke;
  v23 = &unk_1E6A2F6E8;
  v24 = buf;
  v25 = type;
  v26 = a1;
  v27 = a2;
  v7 = *type;
  do
  {
    if (!v7)
    {
      break;
    }

    v8 = *(v7 + 32);
    v9 = (v22)(v21);
    v7 = v8;
  }

  while ((v9 & 1) != 0);
  v10 = (*(*(a3 + 24) + 96))(a3, type);
  _Block_object_dispose(buf, 8);
  return v10;
}

uint64_t nw_protocol_http3_stream_get_output_frames(nw_protocol *a1, nw_protocol *a2, unsigned int a3, unsigned int a4, int a5, nw_frame_array_s *a6)
{
  v92 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http3_stream_get_output_frames";
    v18 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v86 = 0;
    if (!__nwlog_fault(v18, &type, &v86))
    {
      goto LABEL_81;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v58 = __nwlog_obj();
      v59 = type;
      if (os_log_type_enabled(v58, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_http3_stream_get_output_frames";
        v22 = "%{public}s called with null protocol";
LABEL_123:
        v54 = v58;
        v55 = v59;
        v56 = 12;
        goto LABEL_80;
      }

LABEL_81:
      if (v18)
      {
        free(v18);
      }

      return 0;
    }

    if (v86 != 1)
    {
      v58 = __nwlog_obj();
      v59 = type;
      if (os_log_type_enabled(v58, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_http3_stream_get_output_frames";
        v22 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_123;
      }

      goto LABEL_81;
    }

    backtrace_string = __nw_create_backtrace_string();
    v58 = __nwlog_obj();
    v59 = type;
    v71 = os_log_type_enabled(v58, type);
    if (!backtrace_string)
    {
      if (v71)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_http3_stream_get_output_frames";
        v22 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_123;
      }

      goto LABEL_81;
    }

    if (!v71)
    {
      goto LABEL_47;
    }

    *buf = 136446466;
    *&buf[4] = "nw_protocol_http3_stream_get_output_frames";
    *&buf[12] = 2082;
    *&buf[14] = backtrace_string;
    v34 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_106:
    v35 = v58;
    v36 = v59;
    v37 = 22;
    goto LABEL_46;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http3_stream_get_output_frames";
    v18 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v86 = 0;
    if (!__nwlog_fault(v18, &type, &v86))
    {
      goto LABEL_81;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v58 = __nwlog_obj();
      v59 = type;
      if (os_log_type_enabled(v58, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_http3_stream_get_output_frames";
        v22 = "%{public}s called with null http3_stream";
        goto LABEL_123;
      }

      goto LABEL_81;
    }

    if (v86 != 1)
    {
      v58 = __nwlog_obj();
      v59 = type;
      if (os_log_type_enabled(v58, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_http3_stream_get_output_frames";
        v22 = "%{public}s called with null http3_stream, backtrace limit exceeded";
        goto LABEL_123;
      }

      goto LABEL_81;
    }

    backtrace_string = __nw_create_backtrace_string();
    v58 = __nwlog_obj();
    v59 = type;
    v72 = os_log_type_enabled(v58, type);
    if (!backtrace_string)
    {
      if (v72)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_http3_stream_get_output_frames";
        v22 = "%{public}s called with null http3_stream, no backtrace";
        goto LABEL_123;
      }

      goto LABEL_81;
    }

    if (!v72)
    {
      goto LABEL_47;
    }

    *buf = 136446466;
    *&buf[4] = "nw_protocol_http3_stream_get_output_frames";
    *&buf[12] = 2082;
    *&buf[14] = backtrace_string;
    v34 = "%{public}s called with null http3_stream, dumping backtrace:%{public}s";
    goto LABEL_106;
  }

  if ((*(handle + 366) & 0x2000) == 0 && gLogDatapath == 1)
  {
    v60 = a6;
    v61 = a5;
    v62 = a4;
    v63 = a3;
    v64 = __nwlog_obj();
    v65 = os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG);
    a3 = v63;
    a4 = v62;
    a5 = v61;
    a6 = v60;
    if (v65)
    {
      v66 = *(*(handle + 43) + 1304);
      v67 = *(handle + 30);
      v68 = *(handle + 94);
      *buf = 136447490;
      *&buf[4] = "nw_protocol_http3_stream_get_output_frames";
      *&buf[12] = 2082;
      *&buf[14] = handle + 632;
      *&buf[22] = 2080;
      *&buf[24] = " ";
      LOWORD(v89) = 1024;
      *(&v89 + 2) = v66;
      WORD3(v89) = 2048;
      *(&v89 + 1) = v67;
      v90 = 1024;
      v91 = v68;
      _os_log_impl(&dword_181A37000, v64, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> called, state %u", buf, 0x36u);
      a3 = v63;
      a4 = v62;
      a5 = v61;
      a6 = v60;
    }
  }

  v7 = 0;
  v8 = *(handle + 94);
  if (v8 <= 2)
  {
    if (v8)
    {
      if (v8 != 1)
      {
        return v7;
      }

      v9 = *(handle + 49);
      *(v9 + 32) = 0;
      tqh_last = a6->tqh_last;
      *(v9 + 40) = tqh_last;
      *tqh_last = v9;
      a6->tqh_last = (v9 + 32);
      *(handle + 94) = 2;
      v11 = *(handle + 43);
      if (v11)
      {
        if ((*(v11 + 1397) & 1) == 0 && (*(v11 + 1399) & 8) == 0 && *(v11 + 1256) && *(v11 + 1292))
        {
          if ((*(v11 + 1399) & 0x20) == 0)
          {
            v12 = __nwlog_obj();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
            {
              v13 = *(v11 + 1304);
              *buf = 136446978;
              *&buf[4] = "nw_protocol_http3_stream_get_output_frames";
              *&buf[12] = 2082;
              *&buf[14] = v11 + 1313;
              *&buf[22] = 2080;
              *&buf[24] = " ";
              LOWORD(v89) = 1024;
              *(&v89 + 2) = v13;
              _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> increasing QUIC keepalive frequency for requests", buf, 0x26u);
            }
          }

          *(v11 + 1399) |= 8u;
          nw_quic_connection_set_keepalive(*(v11 + 1256), 2u);
        }

        nw_http_connection_metadata_increment_outbound_message_count(*(v11 + 1264));
        return 1;
      }

      return 1;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v17 = *(handle + 94);
    *buf = 136446466;
    *&buf[4] = "nw_protocol_http3_stream_get_output_frames";
    *&buf[12] = 1024;
    *&buf[14] = v17;
    v18 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v86 = 0;
    if (!__nwlog_fault(v18, &type, &v86))
    {
      goto LABEL_81;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v19 = gLogObj;
      v20 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_81;
      }

      v21 = *(handle + 94);
      *buf = 136446466;
      *&buf[4] = "nw_protocol_http3_stream_get_output_frames";
      *&buf[12] = 1024;
      *&buf[14] = v21;
      v22 = "%{public}s Unexpected output state %d";
LABEL_79:
      v54 = v19;
      v55 = v20;
      v56 = 18;
LABEL_80:
      _os_log_impl(&dword_181A37000, v54, v55, v22, buf, v56);
      goto LABEL_81;
    }

    if (v86 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v19 = gLogObj;
      v20 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_81;
      }

      v38 = *(handle + 94);
      *buf = 136446466;
      *&buf[4] = "nw_protocol_http3_stream_get_output_frames";
      *&buf[12] = 1024;
      *&buf[14] = v38;
      v22 = "%{public}s Unexpected output state %d, backtrace limit exceeded";
      goto LABEL_79;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v19 = gLogObj;
    v20 = type;
    v32 = os_log_type_enabled(gLogObj, type);
    if (!backtrace_string)
    {
      if (!v32)
      {
        goto LABEL_81;
      }

      v53 = *(handle + 94);
      *buf = 136446466;
      *&buf[4] = "nw_protocol_http3_stream_get_output_frames";
      *&buf[12] = 1024;
      *&buf[14] = v53;
      v22 = "%{public}s Unexpected output state %d, no backtrace";
      goto LABEL_79;
    }

    if (!v32)
    {
LABEL_47:
      free(backtrace_string);
      goto LABEL_81;
    }

    v33 = *(handle + 94);
    *buf = 136446722;
    *&buf[4] = "nw_protocol_http3_stream_get_output_frames";
    *&buf[12] = 1024;
    *&buf[14] = v33;
    *&buf[18] = 2082;
    *&buf[20] = backtrace_string;
    v34 = "%{public}s Unexpected output state %d, dumping backtrace:%{public}s";
    v35 = v19;
    v36 = v20;
    v37 = 28;
LABEL_46:
    _os_log_impl(&dword_181A37000, v35, v36, v34, buf, v37);
    goto LABEL_47;
  }

  if (v8 != 3)
  {
    if (v8 != 5)
    {
      return v7;
    }

    v14 = a6;
    if (a5 && !a4 && (handle[734] & 1) != 0)
    {
      v15 = nw_frame_create(0, 0, 0, nw_protocol_http3_capsule_frame_finalizer, 0);
      *(v15 + 32) = 0;
      v16 = v14->tqh_last;
      *(v15 + 40) = v16;
      *v16 = v15;
      v14->tqh_last = (v15 + 32);
      if ((*(handle + 366) & 0x2000) == 0 && gLogDatapath == 1)
      {
        v73 = __nwlog_obj();
        if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
        {
          v74 = *(*(handle + 43) + 1304);
          v75 = *(handle + 30);
          *buf = 136447234;
          *&buf[4] = "nw_protocol_http3_stream_get_output_frames";
          *&buf[12] = 2082;
          *&buf[14] = handle + 632;
          *&buf[22] = 2080;
          *&buf[24] = " ";
          LOWORD(v89) = 1024;
          *(&v89 + 2) = v74;
          WORD3(v89) = 2048;
          *(&v89 + 1) = v75;
          _os_log_impl(&dword_181A37000, v73, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> returning a metadata-only output frame", buf, 0x30u);
          return 1;
        }
      }

      return 1;
    }

    v27 = *(handle + 12);
    if (v27)
    {
      v7 = (*(*(v27 + 24) + 88))();
      if ((*(handle + 366) & 0x2000) == 0 && gLogDatapath == 1)
      {
        v28 = __nwlog_obj();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          v29 = *(*(handle + 43) + 1304);
          v30 = *(handle + 30);
          *buf = 136447490;
          *&buf[4] = "nw_protocol_http3_stream_get_output_frames";
          *&buf[12] = 2082;
          *&buf[14] = handle + 632;
          *&buf[22] = 2080;
          *&buf[24] = " ";
          LOWORD(v89) = 1024;
          *(&v89 + 2) = v29;
          WORD3(v89) = 2048;
          *(&v89 + 1) = v30;
          v90 = 1024;
          v91 = v7;
          _os_log_impl(&dword_181A37000, v28, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> returning %u output datagrams", buf, 0x36u);
        }
      }

      return v7;
    }

    if ((*(handle + 366) & 0x2000) == 0 && gLogDatapath == 1)
    {
      v46 = __nwlog_obj();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
      {
        v47 = *(*(handle + 43) + 1304);
        v48 = *(handle + 30);
        *buf = 136447234;
        *&buf[4] = "nw_protocol_http3_stream_get_output_frames";
        *&buf[12] = 2082;
        *&buf[14] = handle + 632;
        *&buf[22] = 2080;
        *&buf[24] = " ";
        LOWORD(v89) = 1024;
        *(&v89 + 2) = v47;
        WORD3(v89) = 2048;
        *(&v89 + 1) = v48;
        v49 = "%{public}s %{public}s%s<i%u:s%llu> no datagram output handler";
        v50 = v46;
        v51 = OS_LOG_TYPE_DEBUG;
        v52 = 48;
LABEL_97:
        _os_log_impl(&dword_181A37000, v50, v51, v49, buf, v52);
        return 0;
      }
    }

    return 0;
  }

  v23 = *(handle + 20);
  if (!v23 || (v24 = *(v23 + 24)) == 0 || !*(v24 + 88))
  {
    v69 = *(handle + 20);
    v70 = __nwlog_obj();
    if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      *&buf[4] = "nw_http3_framer_get_output_frames_for_multiple_http3_frames";
      *&buf[12] = 2048;
      *&buf[14] = v69;
      v49 = "%{public}s Output handler (%p)'s get_output_frames callback is not properly set";
      v50 = v70;
      v51 = OS_LOG_TYPE_ERROR;
      v52 = 22;
      goto LABEL_97;
    }

    return 0;
  }

  if (a3 >= 0x40 && a3 >= 0x4000)
  {
    v39 = a3 >> 30 ? 9 : 5;
    v40 = a3 + v39;
    if (__CFADD__(a3, v39))
    {
      if (gLogDatapath == 1)
      {
        v83 = a4;
        v84 = *(handle + 20);
        v76 = a6;
        v77 = __nwlog_obj();
        if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
        {
          if (v40 >= 0x40)
          {
            if (v40 >= 0x4000)
            {
              v78 = 9;
              if (!(v40 >> 30))
              {
                v78 = 5;
              }
            }

            else
            {
              v78 = 3;
            }
          }

          else
          {
            v78 = 2;
          }

          *buf = 136446978;
          *&buf[4] = "nw_http3_framer_get_output_frames_for_multiple_http3_frames";
          *&buf[12] = 2082;
          *&buf[14] = "minimum_bytes";
          *&buf[22] = 2048;
          *&buf[24] = v78;
          LOWORD(v89) = 2048;
          *(&v89 + 2) = v40;
          _os_log_impl(&dword_181A37000, v77, OS_LOG_TYPE_DEBUG, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, 0x2Au);
        }

        a6 = v76;
        v23 = v84;
        a4 = v83;
        if (v83 >= 0x40)
        {
          goto LABEL_59;
        }
      }

      else if (a4 >= 0x40)
      {
        goto LABEL_59;
      }

LABEL_35:
      v25 = __CFADD__(a4, 2);
      v26 = a4 + 2;
      if (!v25)
      {
        goto LABEL_68;
      }

LABEL_67:
      if (gLogDatapath == 1)
      {
        v79 = v26;
        v85 = v23;
        v80 = a6;
        v81 = __nwlog_obj();
        if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
        {
          if (v79 >= 0x40)
          {
            if (v79 >= 0x4000)
            {
              v82 = 9;
              if (!(v79 >> 30))
              {
                v82 = 5;
              }
            }

            else
            {
              v82 = 3;
            }
          }

          else
          {
            v82 = 2;
          }

          *buf = 136446978;
          *&buf[4] = "nw_http3_framer_get_output_frames_for_multiple_http3_frames";
          *&buf[12] = 2082;
          *&buf[14] = "maximum_bytes";
          *&buf[22] = 2048;
          *&buf[24] = v82;
          LOWORD(v89) = 2048;
          *(&v89 + 2) = v79;
          _os_log_impl(&dword_181A37000, v81, OS_LOG_TYPE_DEBUG, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, 0x2Au);
        }

        a6 = v80;
        v23 = v85;
      }

      goto LABEL_68;
    }
  }

  if (a4 < 0x40)
  {
    goto LABEL_35;
  }

LABEL_59:
  if (a4 >= 0x4000)
  {
    if (a4 >> 30)
    {
      v41 = 9;
    }

    else
    {
      v41 = 5;
    }

    v25 = __CFADD__(a4, v41);
    v26 = a4 + v41;
    if (v25)
    {
      goto LABEL_67;
    }
  }

  else
  {
    v25 = __CFADD__(a4, 3);
    v26 = a4 + 3;
    if (v25)
    {
      goto LABEL_67;
    }
  }

LABEL_68:
  v42 = a6;
  v7 = (*(*(v23 + 24) + 88))();
  if (v7)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = ___ZL59nw_http3_framer_get_output_frames_for_multiple_http3_framesP15nw_http3_framer21nw_http3_frame_type_tjjjP16nw_frame_array_s_block_invoke;
    *&buf[24] = &__block_descriptor_tmp_146_65285;
    *&v89 = 0;
    *(&v89 + 1) = handle + 128;
    tqh_first = v42->tqh_first;
    do
    {
      if (!tqh_first)
      {
        break;
      }

      v44 = *(tqh_first + 4);
      v45 = (*&buf[16])(buf);
      tqh_first = v44;
    }

    while ((v45 & 1) != 0);
  }

  return v7;
}

void nw_http_connection_metadata_increment_outbound_message_count(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1)
  {
    v3 = __nwlog_obj();
    *buf = 136446210;
    v16 = "nw_http_connection_metadata_increment_outbound_message_count";
    v4 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (!__nwlog_fault(v4, &type, &v13))
    {
      goto LABEL_37;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v16 = "nw_http_connection_metadata_increment_outbound_message_count";
        v7 = "%{public}s called with null metadata";
LABEL_35:
        _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
      }
    }

    else if (v13 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v5 = __nwlog_obj();
      v6 = type;
      v10 = os_log_type_enabled(v5, type);
      if (backtrace_string)
      {
        if (v10)
        {
          *buf = 136446466;
          v16 = "nw_http_connection_metadata_increment_outbound_message_count";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_37:
        if (!v4)
        {
          goto LABEL_7;
        }

LABEL_38:
        free(v4);
        goto LABEL_7;
      }

      if (v10)
      {
        *buf = 136446210;
        v16 = "nw_http_connection_metadata_increment_outbound_message_count";
        v7 = "%{public}s called with null metadata, no backtrace";
        goto LABEL_35;
      }
    }

    else
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v16 = "nw_http_connection_metadata_increment_outbound_message_count";
        v7 = "%{public}s called with null metadata, backtrace limit exceeded";
        goto LABEL_35;
      }
    }

LABEL_36:

    goto LABEL_37;
  }

  if (nw_protocol_copy_http_connection_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_connection_definition_onceToken, &__block_literal_global_106);
  }

  if (nw_protocol_metadata_matches_definition(v1, nw_protocol_copy_http_connection_definition_definition))
  {
    handle = _nw_protocol_metadata_get_handle(v1);
    if (handle)
    {
      __nw_http_connection_metadata_increment_outbound_message_count_block_invoke(&__block_literal_global_112, handle);
    }

    goto LABEL_7;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_http_connection_metadata_increment_outbound_message_count";
  v4 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v13 = 0;
  if (!__nwlog_fault(v4, &type, &v13))
  {
    goto LABEL_37;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v5 = __nwlog_obj();
    v6 = type;
    if (os_log_type_enabled(v5, type))
    {
      *buf = 136446210;
      v16 = "nw_http_connection_metadata_increment_outbound_message_count";
      v7 = "%{public}s metadata must be http_connection";
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  if (v13 != 1)
  {
    v5 = __nwlog_obj();
    v6 = type;
    if (os_log_type_enabled(v5, type))
    {
      *buf = 136446210;
      v16 = "nw_http_connection_metadata_increment_outbound_message_count";
      v7 = "%{public}s metadata must be http_connection, backtrace limit exceeded";
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  v11 = __nw_create_backtrace_string();
  v5 = __nwlog_obj();
  v6 = type;
  v12 = os_log_type_enabled(v5, type);
  if (!v11)
  {
    if (v12)
    {
      *buf = 136446210;
      v16 = "nw_http_connection_metadata_increment_outbound_message_count";
      v7 = "%{public}s metadata must be http_connection, no backtrace";
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  if (v12)
  {
    *buf = 136446466;
    v16 = "nw_http_connection_metadata_increment_outbound_message_count";
    v17 = 2082;
    v18 = v11;
    _os_log_impl(&dword_181A37000, v5, v6, "%{public}s metadata must be http_connection, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v11);
  if (v4)
  {
    goto LABEL_38;
  }

LABEL_7:
}

void nw_quic_stream_set_application_error(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_metadata_is_quic_stream(v3))
  {
    _nw_quic_stream_set_application_error(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_stream_set_application_error";
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
        v14 = "nw_quic_stream_set_application_error";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata)";
LABEL_17:
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
            v14 = "nw_quic_stream_set_application_error";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_stream_set_application_error";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_stream_set_application_error";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v5)
  {
    free(v5);
  }

LABEL_3:
}

uint64_t __nw_http_connection_metadata_increment_outbound_message_count_block_invoke(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 152) + 1;
  *(a2 + 152) = v2;
  if (v2 != v2 << 31 >> 31)
  {
    if (gLogDatapath == 1)
    {
      v4 = a2;
      v5 = __nwlog_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v6 = *(v4 + 152);
        v7 = 136446978;
        v8 = "nw_http_connection_metadata_increment_outbound_message_count_block_invoke";
        v9 = 2082;
        v10 = "http_metadata->outbound_message_count";
        v11 = 2048;
        v12 = 1;
        v13 = 2048;
        v14 = v6;
        _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_DEBUG, "%{public}s Overflow: %{public}s, increment %llu, result %llu", &v7, 0x2Au);
      }

      a2 = v4;
    }

    *(a2 + 152) = -1;
  }

  return 1;
}

uint64_t _nw_quic_stream_set_application_error_0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83B9A0);
  result = sub_181A93260(a1);
  if (result)
  {
    v5 = result;
    swift_beginAccess();
    v6 = *(v5 + 64);

    if (v6)
    {
      os_unfair_lock_lock((*(v6 + 72) + 16));
      v7 = *(v6 + 48);
      if (v7)
      {
        (*(v7 + 16))(v7, a2);
      }

      os_unfair_lock_unlock((*(v6 + 72) + 16));
    }
  }

  return result;
}

uint64_t ___ZL23nw_masque_send_metadataP9nw_masqueP20nw_protocol_metadataP11nw_protocol_block_invoke(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    v4 = (*(a1 + 40) + 8);
    v5 = *(a2 + 32);
    v6 = *(a2 + 40);
    if (v5)
    {
      v4 = (v5 + 40);
    }

    *v4 = v6;
    *v6 = v5;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    nw_frame_finalize(a2);
    v7 = *(a1 + 48);
    if ((!v7 || (*(v7 + 505) & 1) == 0) && gLogDatapath == 1)
    {
      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v8 = gprivacy_proxyLogObj;
      if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
      {
        v9 = *(a1 + 48);
        v10 = "";
        v11 = v9 == 0;
        if (v9)
        {
          v12 = (v9 + 507);
        }

        else
        {
          v12 = "";
        }

        v14 = 136446722;
        v15 = "nw_masque_send_metadata_block_invoke";
        if (!v11)
        {
          v10 = " ";
        }

        v16 = 2082;
        v17 = v12;
        v18 = 2080;
        v19 = v10;
        _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sDropping unneeded output frame", &v14, 0x20u);
      }
    }
  }

  else
  {
    nw_frame_collapse(a2);
    nw_frame_set_metadata(a2, *(a1 + 56), 0, 0);
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return 1;
}

uint64_t nw_protocol_http3_stream_finalize_output_frames(nw_protocol *a1, nw_frame_array_s *a2)
{
  v89 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http3_stream_finalize_output_frames";
    v17 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    BYTE4(v77) = 0;
    if (!__nwlog_fault(v17, type, &v77 + 4))
    {
      goto LABEL_87;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v18 = __nwlog_obj();
      v19 = type[0];
      if (!os_log_type_enabled(v18, type[0]))
      {
        goto LABEL_87;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http3_stream_finalize_output_frames";
      v20 = "%{public}s called with null protocol";
      goto LABEL_85;
    }

    if (BYTE4(v77) == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v18 = __nwlog_obj();
      v19 = type[0];
      v61 = os_log_type_enabled(v18, type[0]);
      if (backtrace_string)
      {
        if (v61)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_http3_stream_finalize_output_frames";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          v62 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_116:
          _os_log_impl(&dword_181A37000, v18, v19, v62, buf, 0x16u);
        }

LABEL_117:
        free(backtrace_string);
        goto LABEL_87;
      }

      if (!v61)
      {
        goto LABEL_87;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http3_stream_finalize_output_frames";
      v20 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v18 = __nwlog_obj();
      v19 = type[0];
      if (!os_log_type_enabled(v18, type[0]))
      {
        goto LABEL_87;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http3_stream_finalize_output_frames";
      v20 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_85:
    v53 = v18;
    v54 = v19;
LABEL_86:
    _os_log_impl(&dword_181A37000, v53, v54, v20, buf, 0xCu);
    goto LABEL_87;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http3_stream_finalize_output_frames";
    v17 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    BYTE4(v77) = 0;
    if (!__nwlog_fault(v17, type, &v77 + 4))
    {
      goto LABEL_87;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v18 = __nwlog_obj();
      v19 = type[0];
      if (!os_log_type_enabled(v18, type[0]))
      {
        goto LABEL_87;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http3_stream_finalize_output_frames";
      v20 = "%{public}s called with null http3_stream";
      goto LABEL_85;
    }

    if (BYTE4(v77) == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v18 = __nwlog_obj();
      v19 = type[0];
      v63 = os_log_type_enabled(v18, type[0]);
      if (backtrace_string)
      {
        if (v63)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_http3_stream_finalize_output_frames";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          v62 = "%{public}s called with null http3_stream, dumping backtrace:%{public}s";
          goto LABEL_116;
        }

        goto LABEL_117;
      }

      if (!v63)
      {
        goto LABEL_87;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http3_stream_finalize_output_frames";
      v20 = "%{public}s called with null http3_stream, no backtrace";
    }

    else
    {
      v18 = __nwlog_obj();
      v19 = type[0];
      if (!os_log_type_enabled(v18, type[0]))
      {
        goto LABEL_87;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http3_stream_finalize_output_frames";
      v20 = "%{public}s called with null http3_stream, backtrace limit exceeded";
    }

    goto LABEL_85;
  }

  if ((*(handle + 366) & 0x2000) == 0 && gLogDatapath == 1)
  {
    v56 = __nwlog_obj();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
    {
      v57 = *(*(handle + 43) + 1304);
      v58 = *(handle + 30);
      v59 = *(handle + 94);
      *buf = 136447490;
      *&buf[4] = "nw_protocol_http3_stream_finalize_output_frames";
      *&buf[12] = 2082;
      *&buf[14] = handle + 632;
      *&buf[22] = 2080;
      *&buf[24] = " ";
      LOWORD(v87) = 1024;
      *(&v87 + 2) = v57;
      WORD3(v87) = 2048;
      *(&v87 + 1) = v58;
      *v88 = 1024;
      *&v88[2] = v59;
      _os_log_impl(&dword_181A37000, v56, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> called, state %u", buf, 0x36u);
    }
  }

  result = 0;
  v5 = *(handle + 94);
  if (v5 > 2)
  {
    if (v5 != 3)
    {
      if (v5 == 5)
      {
        if (nw_protocol_copy_http_definition_onceToken != -1)
        {
          dispatch_once(&nw_protocol_copy_http_definition_onceToken, &__block_literal_global_16_75909);
        }

        v12 = nw_protocol_copy_http_definition_http_definition;
        v71[0] = MEMORY[0x1E69E9820];
        v71[1] = 0x40000000;
        v72 = ___ZL47nw_protocol_http3_stream_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke_150;
        v73 = &__block_descriptor_tmp_151_65230;
        v74 = v12;
        v75 = handle;
        v76 = a2;
        tqh_first = a2->tqh_first;
        do
        {
          if (!tqh_first)
          {
            break;
          }

          v14 = *(tqh_first + 4);
          v15 = (v72)(v71);
          tqh_first = v14;
        }

        while ((v15 & 1) != 0);
        if (v12)
        {
          os_release(v12);
        }

        nw_http3_stream_send_pending_capsules(handle);
        result = *(handle + 12);
        if (result)
        {
          return (*(*(result + 24) + 96))();
        }
      }

      return result;
    }

    v21 = **(a2->tqh_last + 1);
    *type = 0;
    v83 = type;
    v84 = 0x2000000000;
    v85 = 0;
    if (!v21)
    {
      goto LABEL_58;
    }

    v22 = *(v21 + 186);
    v85 = (v22 & 0x80) != 0;
    if ((v22 & 0x80000000) != 0)
    {
      if (((v22 >> 7) & 1) != 1)
      {
LABEL_41:
        v27 = 0;
LABEL_57:
        *(v21 + 186) = v22 & 0x7F | v27;
LABEL_58:
        if ((*(handle + 366) & 0x2000) == 0 && gLogDatapath == 1)
        {
          v64 = __nwlog_obj();
          if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
          {
            v65 = *(*(handle + 43) + 1304);
            v66 = *(handle + 30);
            *buf = 0;
            nw_frame_array_get_frame_count(a2, 1, buf);
            v67 = *buf;
            if (*(v83 + 24))
            {
              v68 = ", complete";
            }

            else
            {
              v68 = "";
            }

            *buf = 136447746;
            *&buf[4] = "nw_protocol_http3_stream_finalize_output_frames";
            *&buf[12] = 2082;
            *&buf[14] = handle + 632;
            *&buf[22] = 2080;
            *&buf[24] = " ";
            LOWORD(v87) = 1024;
            *(&v87 + 2) = v65;
            WORD3(v87) = 2048;
            *(&v87 + 1) = v66;
            *v88 = 1024;
            *&v88[2] = v67;
            *&v88[6] = 2080;
            *&v88[8] = v68;
            _os_log_impl(&dword_181A37000, v64, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> sending %u bytes of body data%s", buf, 0x40u);
          }
        }

        v77 = 0;
        v37 = *(handle + 20);
        if (v37 && (v38 = *(v37 + 24)) != 0 && *(v38 + 96))
        {
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 0x40000000;
          *&buf[16] = ___ZL64nw_http3_framer_finalize_output_frames_for_multiple_http3_framesP15nw_http3_framer21nw_http3_frame_type_tP16nw_frame_array_sPjS4_Pc_block_invoke;
          *&buf[24] = &__block_descriptor_tmp_153_65225;
          *&v87 = 0;
          *(&v87 + 1) = handle + 128;
          *v88 = &v77 + 4;
          *&v88[8] = &v77;
          *&v88[16] = handle + 632;
          v39 = a2->tqh_first;
          do
          {
            if (!v39)
            {
              break;
            }

            v40 = *(v39 + 4);
            v41 = (*&buf[16])(buf);
            v39 = v40;
          }

          while ((v41 & 1) != 0);
          v42 = (*(*(v37 + 24) + 96))(v37, a2);
          v43 = v77;
        }

        else
        {
          v43 = 0;
          v42 = 0;
        }

        nw_http_transaction_metadata_increment_outbound_body_transfer_size(*(handle + 50), v43);
        v44 = HIDWORD(v77);
        v45 = *(handle + 37);
        v46 = __CFADD__(v45, HIDWORD(v77));
        *(handle + 37) = v45 + HIDWORD(v77);
        if (v46)
        {
          if (gLogDatapath == 1)
          {
            v69 = __nwlog_obj();
            if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
            {
              v70 = *(handle + 37);
              *buf = 136446978;
              *&buf[4] = "increment_outbound_body_size";
              *&buf[12] = 2082;
              *&buf[14] = "outbound_body_size";
              *&buf[22] = 2048;
              *&buf[24] = v44;
              LOWORD(v87) = 2048;
              *(&v87 + 2) = v70;
              _os_log_impl(&dword_181A37000, v69, OS_LOG_TYPE_DEBUG, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, 0x2Au);
            }
          }

          *(handle + 37) = -1;
        }

        if (*(v83 + 24) == 1)
        {
          nw_http_transaction_metadata_mark_outbound_message_end(*(handle + 50));
          if (handle[288] == 1 && *(handle + 35) != *(handle + 37))
          {
            if ((*(handle + 366) & 0x2000) == 0)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v47 = gLogObj;
              if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
              {
                v48 = *(*(handle + 43) + 1304);
                v49 = *(handle + 30);
                if (handle[288] == 1)
                {
                  v50 = *(handle + 35);
                }

                else
                {
                  v50 = -1;
                }

                v55 = *(handle + 37);
                *buf = 136447746;
                *&buf[4] = "nw_protocol_http3_stream_finalize_output_frames";
                *&buf[12] = 2082;
                *&buf[14] = handle + 632;
                *&buf[22] = 2080;
                *&buf[24] = " ";
                LOWORD(v87) = 1024;
                *(&v87 + 2) = v48;
                WORD3(v87) = 2048;
                *(&v87 + 1) = v49;
                *v88 = 2048;
                *&v88[2] = v50;
                *&v88[10] = 2048;
                *&v88[12] = v55;
                _os_log_impl(&dword_181A37000, v47, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:s%llu> Content length header %llu does not equal body size %llu", buf, 0x44u);
              }
            }

            *(handle + 34) = 270;
            nw_protocol_http3_stream_error(handle, handle);
            nw_protocol_http3_stream_disconnect(handle, handle);
            v42 = 0;
          }
        }

        _Block_object_dispose(type, 8);
        return v42;
      }
    }

    else
    {
      v23 = *(v21 + 64);
      if (!v23 || (*(v23 + 66) & 0x40) == 0)
      {
        goto LABEL_41;
      }

      v78[0] = MEMORY[0x1E69E9820];
      v78[1] = 0x40000000;
      v79 = ___ZL47nw_protocol_http3_stream_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke;
      v80 = &unk_1E6A39158;
      v81 = type;
      do
      {
        while (1)
        {
          v24 = *v23;
          v25 = v23[6];
          if (v25)
          {
            break;
          }

          v23 = *v23;
          if (!v24)
          {
            goto LABEL_40;
          }
        }

        _nw_protocol_metadata_is_ip(v25);
        if (v79(v78, v23[6]))
        {
          v26 = v24 == 0;
        }

        else
        {
          v26 = 1;
        }

        v23 = v24;
      }

      while (!v26);
LABEL_40:
      LOBYTE(v22) = *(v21 + 186);
      if ((v83[24] & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    v27 = 0x80;
    goto LABEL_57;
  }

  if (v5 < 2)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = *(handle + 94);
    *buf = 136446466;
    *&buf[4] = "nw_protocol_http3_stream_finalize_output_frames";
    *&buf[12] = 1024;
    *&buf[14] = v6;
    v7 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    BYTE4(v77) = 0;
    if (!__nwlog_fault(v7, type, &v77 + 4))
    {
      goto LABEL_81;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v9 = type[0];
      if (!os_log_type_enabled(gLogObj, type[0]))
      {
        goto LABEL_81;
      }

      v10 = *(handle + 94);
      *buf = 136446466;
      *&buf[4] = "nw_protocol_http3_stream_finalize_output_frames";
      *&buf[12] = 1024;
      *&buf[14] = v10;
      v11 = "%{public}s Unexpected output state %d";
    }

    else if (BYTE4(v77) == 1)
    {
      v28 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v9 = type[0];
      v29 = os_log_type_enabled(gLogObj, type[0]);
      if (v28)
      {
        if (v29)
        {
          v30 = *(handle + 94);
          *buf = 136446722;
          *&buf[4] = "nw_protocol_http3_stream_finalize_output_frames";
          *&buf[12] = 1024;
          *&buf[14] = v30;
          *&buf[18] = 2082;
          *&buf[20] = v28;
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s Unexpected output state %d, dumping backtrace:%{public}s", buf, 0x1Cu);
        }

        free(v28);
LABEL_81:
        if (v7)
        {
          v52 = v7;
LABEL_89:
          free(v52);
          return 0;
        }

        return 0;
      }

      if (!v29)
      {
        goto LABEL_81;
      }

      v51 = *(handle + 94);
      *buf = 136446466;
      *&buf[4] = "nw_protocol_http3_stream_finalize_output_frames";
      *&buf[12] = 1024;
      *&buf[14] = v51;
      v11 = "%{public}s Unexpected output state %d, no backtrace";
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v9 = type[0];
      if (!os_log_type_enabled(gLogObj, type[0]))
      {
        goto LABEL_81;
      }

      v31 = *(handle + 94);
      *buf = 136446466;
      *&buf[4] = "nw_protocol_http3_stream_finalize_output_frames";
      *&buf[12] = 1024;
      *&buf[14] = v31;
      v11 = "%{public}s Unexpected output state %d, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v8, v9, v11, buf, 0x12u);
    goto LABEL_81;
  }

  if (v5 == 2)
  {
    v16 = *(handle + 49);
    if (a2->tqh_first == v16)
    {
      is_metadata_complete = nw_frame_is_metadata_complete(v16);
      nw_http3_stream_send_fields(handle, is_metadata_complete);
      return 1;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http3_stream_finalize_output_frames";
    v17 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    BYTE4(v77) = 0;
    if (__nwlog_fault(v17, type, &v77 + 4))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v19 = type[0];
        if (!os_log_type_enabled(gLogObj, type[0]))
        {
          goto LABEL_87;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_http3_stream_finalize_output_frames";
        v20 = "%{public}s Expected frame array first to be the same as http3_stream->output_fields_frame";
        goto LABEL_85;
      }

      if (BYTE4(v77) != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v19 = type[0];
        if (!os_log_type_enabled(gLogObj, type[0]))
        {
          goto LABEL_87;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_http3_stream_finalize_output_frames";
        v20 = "%{public}s Expected frame array first to be the same as http3_stream->output_fields_frame, backtrace limit exceeded";
        goto LABEL_85;
      }

      v33 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v34 = gLogObj;
      v35 = type[0];
      v36 = os_log_type_enabled(gLogObj, type[0]);
      if (v33)
      {
        if (v36)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_http3_stream_finalize_output_frames";
          *&buf[12] = 2082;
          *&buf[14] = v33;
          _os_log_impl(&dword_181A37000, v34, v35, "%{public}s Expected frame array first to be the same as http3_stream->output_fields_frame, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v33);
      }

      else if (v36)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_http3_stream_finalize_output_frames";
        v20 = "%{public}s Expected frame array first to be the same as http3_stream->output_fields_frame, no backtrace";
        v53 = v34;
        v54 = v35;
        goto LABEL_86;
      }
    }

LABEL_87:
    if (v17)
    {
      v52 = v17;
      goto LABEL_89;
    }

    return 0;
  }

  return result;
}

BOOL nw_http3_stream_send_fields(uint64_t a1, int a2)
{
  v459 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 734) & 0x10) != 0)
  {
    if ((*(a1 + 732) & 0x2000) == 0 && gLogDatapath == 1)
    {
      v13 = __nwlog_obj();
      result = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
      if (!result)
      {
        return result;
      }

      v15 = *(*(a1 + 344) + 1304);
      v16 = *(a1 + 240);
      v17 = *(a1 + 376);
      *buf = 136447490;
      *&buf[4] = "nw_http3_stream_send_fields";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 632;
      *&buf[22] = 2080;
      v448 = " ";
      LOWORD(v449) = 1024;
      *(&v449 + 2) = v15;
      HIWORD(v449) = 2048;
      v450 = v16;
      *v451 = 1024;
      *&v451[2] = v17;
      _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> called, state %u - already sending headers", buf, 0x36u);
    }

    return 0;
  }

  if ((*(a1 + 732) & 0x2000) == 0 && gLogDatapath == 1)
  {
    v192 = __nwlog_obj();
    if (os_log_type_enabled(v192, OS_LOG_TYPE_DEBUG))
    {
      v193 = *(*(a1 + 344) + 1304);
      v194 = *(a1 + 240);
      v195 = *(a1 + 376);
      *buf = 136447490;
      *&buf[4] = "nw_http3_stream_send_fields";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 632;
      *&buf[22] = 2080;
      v448 = " ";
      LOWORD(v449) = 1024;
      *(&v449 + 2) = v193;
      HIWORD(v449) = 2048;
      v450 = v194;
      *v451 = 1024;
      *&v451[2] = v195;
      _os_log_impl(&dword_181A37000, v192, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> called, state %u", buf, 0x36u);
    }
  }

  if (*(a1 + 512))
  {
LABEL_179:
    v117 = *(a1 + 520);
    if (!v117)
    {
      goto LABEL_243;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3802000000;
    v448 = __Block_byref_object_copy__63268;
    v449 = __Block_byref_object_dispose__63269;
    v450 = 0;
    *v451 = &v450;
    v434 = 0;
    v435 = &v434;
    v436 = 0x2000000000;
    LODWORD(v437) = dispatch_data_get_size(v117);
    v118 = *(a1 + 344);
    if (!v118)
    {
      __nwlog_obj();
      *type = 136446210;
      *&type[4] = "nw_http3_encoder_stream_get_output_frames";
      v129 = _os_log_send_and_compose_impl();
      v430[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v429[0]) = 0;
      if (__nwlog_fault(v129, v430, v429))
      {
        if (v430[0] == OS_LOG_TYPE_FAULT)
        {
          v130 = __nwlog_obj();
          v131 = v430[0];
          if (os_log_type_enabled(v130, v430[0]))
          {
            *type = 136446210;
            *&type[4] = "nw_http3_encoder_stream_get_output_frames";
            v132 = "%{public}s called with null http3";
            goto LABEL_229;
          }
        }

        else if (LOBYTE(v429[0]) == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v130 = __nwlog_obj();
          v131 = v430[0];
          v231 = os_log_type_enabled(v130, v430[0]);
          if (backtrace_string)
          {
            if (v231)
            {
              *type = 136446466;
              *&type[4] = "nw_http3_encoder_stream_get_output_frames";
              *&type[12] = 2082;
              *&type[14] = backtrace_string;
              _os_log_impl(&dword_181A37000, v130, v131, "%{public}s called with null http3, dumping backtrace:%{public}s", type, 0x16u);
            }

            free(backtrace_string);
          }

          else if (v231)
          {
            *type = 136446210;
            *&type[4] = "nw_http3_encoder_stream_get_output_frames";
            v132 = "%{public}s called with null http3, no backtrace";
            goto LABEL_229;
          }
        }

        else
        {
          v130 = __nwlog_obj();
          v131 = v430[0];
          if (os_log_type_enabled(v130, v430[0]))
          {
            *type = 136446210;
            *&type[4] = "nw_http3_encoder_stream_get_output_frames";
            v132 = "%{public}s called with null http3, backtrace limit exceeded";
            goto LABEL_229;
          }
        }
      }

LABEL_230:
      if (!v129)
      {
        goto LABEL_185;
      }

LABEL_231:
      free(v129);
      goto LABEL_185;
    }

    if ((*(v118 + 1397) & 0x2000) == 0 || (v119 = *(v118 + 936)) != 0 && v119 != a1)
    {
      *(a1 + 568) = 0;
      v120 = *(v118 + 944);
      *(a1 + 576) = v120;
      *v120 = a1;
      *(v118 + 944) = a1 + 568;
LABEL_185:
      _Block_object_dispose(&v434, 8);
      v121 = buf;
LABEL_309:
      _Block_object_dispose(v121, 8);
      return 0;
    }

    if (!v119)
    {
      *(a1 + 568) = 0;
      v122 = *(v118 + 944);
      *(a1 + 576) = v122;
      *v122 = a1;
      *(v118 + 944) = a1 + 568;
    }

    nw_http3_start_encoder_stream_if_needed(v118);
    v123 = *(v118 + 1072);
    if (!v123)
    {
      goto LABEL_185;
    }

    v124 = *(v123 + 24);
    if (!v124)
    {
      goto LABEL_185;
    }

    v125 = *(v124 + 88);
    if (!v125 || !v125(v123, a1))
    {
      goto LABEL_185;
    }

    v401[0] = MEMORY[0x1E69E9820];
    v401[1] = 0x40000000;
    v402 = ___ZL27nw_http3_stream_send_fieldsP24nw_protocol_http3_streamb_block_invoke_3;
    v403 = &unk_1E6A38C50;
    v404 = &v434;
    v405 = buf;
    v406 = a1;
    v126 = *(*&buf[8] + 40);
    do
    {
      if (!v126)
      {
        break;
      }

      v127 = *(v126 + 32);
      v128 = v402(v401);
      v126 = v127;
    }

    while ((v128 & 1) != 0);
    if (*(a1 + 520))
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *type = 136446210;
      *&type[4] = "nw_http3_stream_send_fields";
      v129 = _os_log_send_and_compose_impl();
      v430[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v429[0]) = 0;
      if (!__nwlog_fault(v129, v430, v429))
      {
        goto LABEL_230;
      }

      if (v430[0] == OS_LOG_TYPE_FAULT)
      {
        v130 = __nwlog_obj();
        v131 = v430[0];
        if (!os_log_type_enabled(v130, v430[0]))
        {
          goto LABEL_230;
        }

        *type = 136446210;
        *&type[4] = "nw_http3_stream_send_fields";
        v132 = "%{public}s Not enough space on encoder stream";
        goto LABEL_229;
      }

      if (LOBYTE(v429[0]) != 1)
      {
        v130 = __nwlog_obj();
        v131 = v430[0];
        if (!os_log_type_enabled(v130, v430[0]))
        {
          goto LABEL_230;
        }

        *type = 136446210;
        *&type[4] = "nw_http3_stream_send_fields";
        v132 = "%{public}s Not enough space on encoder stream, backtrace limit exceeded";
        goto LABEL_229;
      }

      v139 = __nw_create_backtrace_string();
      v130 = __nwlog_obj();
      v131 = v430[0];
      v140 = os_log_type_enabled(v130, v430[0]);
      if (v139)
      {
        if (v140)
        {
          *type = 136446466;
          *&type[4] = "nw_http3_stream_send_fields";
          *&type[12] = 2082;
          *&type[14] = v139;
          _os_log_impl(&dword_181A37000, v130, v131, "%{public}s Not enough space on encoder stream, dumping backtrace:%{public}s", type, 0x16u);
        }

        free(v139);
        if (!v129)
        {
          goto LABEL_185;
        }

        goto LABEL_231;
      }

      if (v140)
      {
        *type = 136446210;
        *&type[4] = "nw_http3_stream_send_fields";
        v132 = "%{public}s Not enough space on encoder stream, no backtrace";
LABEL_229:
        _os_log_impl(&dword_181A37000, v130, v131, v132, type, 0xCu);
        goto LABEL_230;
      }

      goto LABEL_230;
    }

    *(a1 + 734) |= 0x10u;
    v133 = *(a1 + 344);
    if (v133)
    {
      v134 = v133[117];
      if (v134 != a1)
      {
        __nwlog_obj();
        *type = 136446210;
        *&type[4] = "nw_http3_encoder_stream_finalize_output_frames";
        v135 = _os_log_send_and_compose_impl();
        v430[0] = OS_LOG_TYPE_ERROR;
        LOBYTE(v429[0]) = 0;
        if (!__nwlog_fault(v135, v430, v429))
        {
          goto LABEL_240;
        }

        if (v430[0] == OS_LOG_TYPE_FAULT)
        {
          v136 = __nwlog_obj();
          v137 = v430[0];
          if (!os_log_type_enabled(v136, v430[0]))
          {
            goto LABEL_240;
          }

          *type = 136446210;
          *&type[4] = "nw_http3_encoder_stream_finalize_output_frames";
          v138 = "%{public}s Encoder stream is not being used by current stream";
          goto LABEL_238;
        }

        if (LOBYTE(v429[0]) != 1)
        {
          v136 = __nwlog_obj();
          v137 = v430[0];
          if (!os_log_type_enabled(v136, v430[0]))
          {
            goto LABEL_240;
          }

          *type = 136446210;
          *&type[4] = "nw_http3_encoder_stream_finalize_output_frames";
          v138 = "%{public}s Encoder stream is not being used by current stream, backtrace limit exceeded";
          goto LABEL_238;
        }

        v149 = __nw_create_backtrace_string();
        v136 = __nwlog_obj();
        v137 = v430[0];
        v150 = os_log_type_enabled(v136, v430[0]);
        if (!v149)
        {
          if (!v150)
          {
            goto LABEL_240;
          }

          *type = 136446210;
          *&type[4] = "nw_http3_encoder_stream_finalize_output_frames";
          v138 = "%{public}s Encoder stream is not being used by current stream, no backtrace";
          goto LABEL_238;
        }

        if (v150)
        {
          *type = 136446466;
          *&type[4] = "nw_http3_encoder_stream_finalize_output_frames";
          *&type[12] = 2082;
          *&type[14] = v149;
          v151 = "%{public}s Encoder stream is not being used by current stream, dumping backtrace:%{public}s";
LABEL_224:
          _os_log_impl(&dword_181A37000, v136, v137, v151, type, 0x16u);
          goto LABEL_225;
        }

        goto LABEL_225;
      }

      v141 = *&buf[8];
      v142 = (v134 + 568);
      v143 = *(v134 + 568);
      v144 = *(v134 + 576);
      v145 = v133 + 118;
      if (v143)
      {
        v145 = (v143 + 576);
      }

      *v145 = v144;
      *v144 = v143;
      *v142 = 0u;
      v146 = v133[134];
      if (v146)
      {
        v147 = *(v146 + 24);
        if (v147)
        {
          v148 = *(v147 + 96);
          if (v148)
          {
            v148(v146, v141 + 40);
            goto LABEL_242;
          }
        }

        v352 = v146;
        __nwlog_obj();
        v353 = v352;
        v354 = *(v352 + 16);
        if (!v354)
        {
          v354 = "invalid";
        }
      }

      else
      {
        v353 = 0;
        __nwlog_obj();
        v354 = "invalid";
      }

      *type = 136446466;
      *&type[4] = "nw_http3_encoder_stream_finalize_output_frames";
      *&type[12] = 2082;
      *&type[14] = v354;
      v135 = _os_log_send_and_compose_impl();
      v430[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v429[0]) = 0;
      if (__nwlog_fault(v135, v430, v429))
      {
        if (v430[0] == OS_LOG_TYPE_FAULT)
        {
          v379 = __nwlog_obj();
          v380 = v430[0];
          if (os_log_type_enabled(v379, v430[0]))
          {
            v381 = "invalid";
            if (v353 && *(v353 + 16))
            {
              v381 = *(v353 + 16);
            }

            *type = 136446466;
            *&type[4] = "nw_http3_encoder_stream_finalize_output_frames";
            *&type[12] = 2082;
            *&type[14] = v381;
            v138 = "%{public}s protocol %{public}s has invalid finalize_output_frames callback";
LABEL_689:
            v152 = v379;
            v153 = v380;
            v154 = 22;
            goto LABEL_239;
          }
        }

        else if (LOBYTE(v429[0]) == 1)
        {
          v382 = __nw_create_backtrace_string();
          v379 = __nwlog_obj();
          v380 = v430[0];
          v383 = os_log_type_enabled(v379, v430[0]);
          if (v382)
          {
            if (v383)
            {
              v384 = "invalid";
              if (v353 && *(v353 + 16))
              {
                v384 = *(v353 + 16);
              }

              *type = 136446722;
              *&type[4] = "nw_http3_encoder_stream_finalize_output_frames";
              *&type[12] = 2082;
              *&type[14] = v384;
              *&type[22] = 2082;
              v440 = v382;
              _os_log_impl(&dword_181A37000, v379, v380, "%{public}s protocol %{public}s has invalid finalize_output_frames callback, dumping backtrace:%{public}s", type, 0x20u);
            }

            free(v382);
          }

          else if (v383)
          {
            v389 = "invalid";
            if (v353 && *(v353 + 16))
            {
              v389 = *(v353 + 16);
            }

            *type = 136446466;
            *&type[4] = "nw_http3_encoder_stream_finalize_output_frames";
            *&type[12] = 2082;
            *&type[14] = v389;
            v138 = "%{public}s protocol %{public}s has invalid finalize_output_frames callback, no backtrace";
            goto LABEL_689;
          }
        }

        else
        {
          v379 = __nwlog_obj();
          v380 = v430[0];
          if (os_log_type_enabled(v379, v430[0]))
          {
            v388 = "invalid";
            if (v353 && *(v353 + 16))
            {
              v388 = *(v353 + 16);
            }

            *type = 136446466;
            *&type[4] = "nw_http3_encoder_stream_finalize_output_frames";
            *&type[12] = 2082;
            *&type[14] = v388;
            v138 = "%{public}s protocol %{public}s has invalid finalize_output_frames callback, backtrace limit exceeded";
            goto LABEL_689;
          }
        }
      }

LABEL_240:
      if (v135)
      {
LABEL_241:
        free(v135);
      }

LABEL_242:
      nw_http_transaction_metadata_increment_outbound_header_size(*(a1 + 400), *(v435 + 6));
      *(a1 + 734) &= ~0x10u;
      _Block_object_dispose(&v434, 8);
      _Block_object_dispose(buf, 8);
LABEL_243:
      v155 = *(a1 + 512);
      if (v155)
      {
        *type = 0;
        *&type[8] = type;
        *&type[16] = 0x3802000000;
        v440 = __Block_byref_object_copy__63268;
        v441 = __Block_byref_object_dispose__63269;
        v442[0] = 0;
        v442[1] = v442;
        v434 = 0;
        v435 = &v434;
        v436 = 0x2000000000;
        LODWORD(v437) = dispatch_data_get_size(v155);
        if (!nw_http3_framer_get_output_frames_for_single_http3_frame(a1 + 128, 1uLL, v437, v442))
        {
LABEL_308:
          _Block_object_dispose(&v434, 8);
          v121 = type;
          goto LABEL_309;
        }

        v395[0] = MEMORY[0x1E69E9820];
        v395[1] = 0x40000000;
        v396 = ___ZL27nw_http3_stream_send_fieldsP24nw_protocol_http3_streamb_block_invoke_78;
        v397 = &unk_1E6A38C78;
        v399 = type;
        v400 = a1;
        v398 = &v434;
        v156 = *(*&type[8] + 40);
        do
        {
          if (!v156)
          {
            break;
          }

          v157 = *(v156 + 32);
          v158 = v396(v395);
          v156 = v157;
        }

        while ((v158 & 1) != 0);
        if (*(a1 + 512))
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          *buf = 136446210;
          *&buf[4] = "nw_http3_stream_send_fields";
          v159 = _os_log_send_and_compose_impl();
          v430[0] = OS_LOG_TYPE_ERROR;
          LOBYTE(v429[0]) = 0;
          if (!__nwlog_fault(v159, v430, v429))
          {
            goto LABEL_306;
          }

          if (v430[0] == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v160 = gLogObj;
            v161 = v430[0];
            if (!os_log_type_enabled(gLogObj, v430[0]))
            {
              goto LABEL_306;
            }

            *buf = 136446210;
            *&buf[4] = "nw_http3_stream_send_fields";
            v162 = "%{public}s Not enough space in fields frame";
          }

          else if (LOBYTE(v429[0]) == 1)
          {
            v181 = __nw_create_backtrace_string();
            v160 = __nwlog_obj();
            v161 = v430[0];
            v182 = os_log_type_enabled(v160, v430[0]);
            if (v181)
            {
              if (v182)
              {
                *buf = 136446466;
                *&buf[4] = "nw_http3_stream_send_fields";
                *&buf[12] = 2082;
                *&buf[14] = v181;
                _os_log_impl(&dword_181A37000, v160, v161, "%{public}s Not enough space in fields frame, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v181);
              goto LABEL_306;
            }

            if (!v182)
            {
LABEL_306:
              if (v159)
              {
                free(v159);
              }

              goto LABEL_308;
            }

            *buf = 136446210;
            *&buf[4] = "nw_http3_stream_send_fields";
            v162 = "%{public}s Not enough space in fields frame, no backtrace";
          }

          else
          {
            v160 = __nwlog_obj();
            v161 = v430[0];
            if (!os_log_type_enabled(v160, v430[0]))
            {
              goto LABEL_306;
            }

            *buf = 136446210;
            *&buf[4] = "nw_http3_stream_send_fields";
            v162 = "%{public}s Not enough space in fields frame, backtrace limit exceeded";
          }

          _os_log_impl(&dword_181A37000, v160, v161, v162, buf, 0xCu);
          goto LABEL_306;
        }

        v163 = *(a1 + 734);
        v164 = *&type[8];
        if (a2 && (*(a1 + 734) & 7) == 0)
        {
          v165 = **(*(*&type[8] + 48) + 8);
          *(v165 + 186) |= 0x80u;
          v163 = *(a1 + 734);
        }

        *(a1 + 734) = v163 | 0x10;
        v166 = *(a1 + 160);
        if (v166 && (v167 = *(v166 + 24)) != 0 && *(v167 + 96))
        {
          v168 = *(v435 + 6);
          if (v168 >> 30)
          {
            v169 = 9;
          }

          else
          {
            v169 = 5;
          }

          if (v168 >= 0x4000)
          {
            v170 = v169;
          }

          else
          {
            v170 = 3;
          }

          if (v168 >= 0x40)
          {
            v171 = v170;
          }

          else
          {
            v171 = 2;
          }

          v172 = nw_http3_framer_write_http3_frame_header(a1 + 128, 1uLL, *(v435 + 6), v171, *(v164 + 40)) + v168;
          (*(*(v166 + 24) + 96))(v166, v164 + 40);
        }

        else
        {
          v172 = 0;
        }

        nw_http_transaction_metadata_increment_outbound_header_size(*(a1 + 400), v172);
        *(a1 + 734) &= ~0x10u;
        if (a2)
        {
          nw_http_transaction_metadata_mark_outbound_message_end(*(a1 + 400));
          if (*(a1 + 288) == 1 && *(a1 + 280) != *(a1 + 296))
          {
            if ((*(a1 + 732) & 0x2000) == 0)
            {
              v187 = __nwlog_obj();
              if (os_log_type_enabled(v187, OS_LOG_TYPE_ERROR))
              {
                v188 = *(*(a1 + 344) + 1304);
                v189 = *(a1 + 240);
                if (*(a1 + 288) == 1)
                {
                  v190 = *(a1 + 280);
                }

                else
                {
                  v190 = -1;
                }

                v191 = *(a1 + 296);
                *buf = 136447746;
                *&buf[4] = "nw_http3_stream_send_fields";
                *&buf[12] = 2082;
                *&buf[14] = a1 + 632;
                *&buf[22] = 2080;
                v448 = " ";
                LOWORD(v449) = 1024;
                *(&v449 + 2) = v188;
                HIWORD(v449) = 2048;
                v450 = v189;
                *v451 = 2048;
                *&v451[2] = v190;
                *&v451[10] = 2048;
                *&v451[12] = v191;
                _os_log_impl(&dword_181A37000, v187, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:s%llu> Content length header %llu does not equal body size %llu", buf, 0x44u);
              }
            }

            *(a1 + 272) = 270;
            nw_protocol_http3_stream_error(a1, a1);
            nw_protocol_http3_stream_disconnect(a1, a1);
            goto LABEL_308;
          }
        }

        _Block_object_dispose(&v434, 8);
        _Block_object_dispose(type, 8);
        if ((*(a1 + 734) & 4) != 0)
        {
          nw_frame_reset(*(a1 + 392), 0, 0, 0, 0);
          v183 = *(a1 + 392);
          if (v183)
          {
            os_release(v183);
            *(a1 + 392) = 0;
          }

          *(a1 + 392) = nw_frame_create(0, 0, 0, 0, 0);
          *(a1 + 376) = 1;
        }

        else
        {
          v173 = *(a1 + 732);
          if ((v173 & 0xC0) != 0)
          {
            v174 = 5;
          }

          else
          {
            v174 = 3;
          }

          *(a1 + 376) = v174;
          if ((v173 & 1) == 0)
          {
            v175 = *(a1 + 32);
            if (v175)
            {
              v176 = *(v175 + 24);
              if (v176)
              {
                v177 = *(v176 + 160);
                if (v177)
                {
                  v177(v175, a1);
                  v173 = *(a1 + 732);
                }
              }
            }

            if ((v173 & 0x40) != 0)
            {
              v178 = *(a1 + 32);
              if (v178)
              {
                v179 = *(v178 + 24);
                if (v179)
                {
                  v180 = *(v179 + 160);
                  if (v180)
                  {
                    v180(v178, a1 + 64);
                  }
                }
              }
            }
          }
        }

        if ((*(a1 + 732) & 0x800) == 0)
        {
          return 1;
        }

        v184 = *(a1 + 32);
        if (v184)
        {
          v185 = *(v184 + 24);
          if (v185)
          {
            v186 = *(v185 + 192);
            if (v186)
            {
              v186(v184, a1);
LABEL_299:
              *(a1 + 732) &= ~0x800u;
              return 1;
            }
          }
        }

        __nwlog_obj();
        v273 = *(a1 + 32);
        v274 = "invalid";
        if (v273)
        {
          v275 = *(v273 + 16);
          if (v275)
          {
            v274 = v275;
          }
        }

        *buf = 136446466;
        *&buf[4] = "nw_http3_stream_send_fields";
        *&buf[12] = 2082;
        *&buf[14] = v274;
        v276 = _os_log_send_and_compose_impl();
        type[0] = 16;
        LOBYTE(v434) = 0;
        if (__nwlog_fault(v276, type, &v434))
        {
          if (type[0] == 17)
          {
            v277 = __nwlog_obj();
            v278 = type[0];
            if (!os_log_type_enabled(v277, type[0]))
            {
              goto LABEL_671;
            }

            v279 = *(a1 + 32);
            v280 = "invalid";
            if (v279)
            {
              v281 = *(v279 + 16);
              if (v281)
              {
                v280 = v281;
              }
            }

            *buf = 136446466;
            *&buf[4] = "nw_http3_stream_send_fields";
            *&buf[12] = 2082;
            *&buf[14] = v280;
            v282 = "%{public}s protocol %{public}s has invalid output_finished callback";
            goto LABEL_670;
          }

          if (v434 != 1)
          {
            v277 = __nwlog_obj();
            v278 = type[0];
            if (!os_log_type_enabled(v277, type[0]))
            {
              goto LABEL_671;
            }

            v349 = *(a1 + 32);
            v350 = "invalid";
            if (v349)
            {
              v351 = *(v349 + 16);
              if (v351)
              {
                v350 = v351;
              }
            }

            *buf = 136446466;
            *&buf[4] = "nw_http3_stream_send_fields";
            *&buf[12] = 2082;
            *&buf[14] = v350;
            v282 = "%{public}s protocol %{public}s has invalid output_finished callback, backtrace limit exceeded";
            goto LABEL_670;
          }

          v307 = __nw_create_backtrace_string();
          v277 = __nwlog_obj();
          v278 = type[0];
          v308 = os_log_type_enabled(v277, type[0]);
          if (v307)
          {
            if (v308)
            {
              v309 = *(a1 + 32);
              v310 = "invalid";
              if (v309)
              {
                v311 = *(v309 + 16);
                if (v311)
                {
                  v310 = v311;
                }
              }

              *buf = 136446722;
              *&buf[4] = "nw_http3_stream_send_fields";
              *&buf[12] = 2082;
              *&buf[14] = v310;
              *&buf[22] = 2082;
              v448 = v307;
              _os_log_impl(&dword_181A37000, v277, v278, "%{public}s protocol %{public}s has invalid output_finished callback, dumping backtrace:%{public}s", buf, 0x20u);
            }

            free(v307);
            goto LABEL_671;
          }

          if (v308)
          {
            v385 = *(a1 + 32);
            v386 = "invalid";
            if (v385)
            {
              v387 = *(v385 + 16);
              if (v387)
              {
                v386 = v387;
              }
            }

            *buf = 136446466;
            *&buf[4] = "nw_http3_stream_send_fields";
            *&buf[12] = 2082;
            *&buf[14] = v386;
            v282 = "%{public}s protocol %{public}s has invalid output_finished callback, no backtrace";
LABEL_670:
            _os_log_impl(&dword_181A37000, v277, v278, v282, buf, 0x16u);
          }
        }

LABEL_671:
        if (v276)
        {
          free(v276);
        }

        goto LABEL_299;
      }

      __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_http3_stream_send_fields";
      v226 = _os_log_send_and_compose_impl();
      type[0] = 16;
      LOBYTE(v434) = 0;
      if (__nwlog_fault(v226, type, &v434))
      {
        if (type[0] == 17)
        {
          v227 = __nwlog_obj();
          v228 = type[0];
          if (!os_log_type_enabled(v227, type[0]))
          {
            goto LABEL_559;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http3_stream_send_fields";
          v229 = "%{public}s called with null http3_stream->output_fields_frame_data";
          goto LABEL_558;
        }

        if (v434 != 1)
        {
          v227 = __nwlog_obj();
          v228 = type[0];
          if (!os_log_type_enabled(v227, type[0]))
          {
            goto LABEL_559;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http3_stream_send_fields";
          v229 = "%{public}s called with null http3_stream->output_fields_frame_data, backtrace limit exceeded";
          goto LABEL_558;
        }

        v237 = __nw_create_backtrace_string();
        v227 = __nwlog_obj();
        v228 = type[0];
        v238 = os_log_type_enabled(v227, type[0]);
        if (v237)
        {
          if (v238)
          {
            *buf = 136446466;
            *&buf[4] = "nw_http3_stream_send_fields";
            *&buf[12] = 2082;
            *&buf[14] = v237;
            _os_log_impl(&dword_181A37000, v227, v228, "%{public}s called with null http3_stream->output_fields_frame_data, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v237);
          goto LABEL_559;
        }

        if (v238)
        {
          *buf = 136446210;
          *&buf[4] = "nw_http3_stream_send_fields";
          v229 = "%{public}s called with null http3_stream->output_fields_frame_data, no backtrace";
LABEL_558:
          _os_log_impl(&dword_181A37000, v227, v228, v229, buf, 0xCu);
        }
      }

LABEL_559:
      if (v226)
      {
        free(v226);
      }

      return 0;
    }

    __nwlog_obj();
    *type = 136446210;
    *&type[4] = "nw_http3_encoder_stream_finalize_output_frames";
    v135 = _os_log_send_and_compose_impl();
    v430[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v429[0]) = 0;
    if (!__nwlog_fault(v135, v430, v429))
    {
      goto LABEL_240;
    }

    if (v430[0] == OS_LOG_TYPE_FAULT)
    {
      v136 = __nwlog_obj();
      v137 = v430[0];
      if (!os_log_type_enabled(v136, v430[0]))
      {
        goto LABEL_240;
      }

      *type = 136446210;
      *&type[4] = "nw_http3_encoder_stream_finalize_output_frames";
      v138 = "%{public}s called with null http3";
    }

    else if (LOBYTE(v429[0]) == 1)
    {
      v149 = __nw_create_backtrace_string();
      v136 = __nwlog_obj();
      v137 = v430[0];
      v355 = os_log_type_enabled(v136, v430[0]);
      if (v149)
      {
        if (v355)
        {
          *type = 136446466;
          *&type[4] = "nw_http3_encoder_stream_finalize_output_frames";
          *&type[12] = 2082;
          *&type[14] = v149;
          v151 = "%{public}s called with null http3, dumping backtrace:%{public}s";
          goto LABEL_224;
        }

LABEL_225:
        free(v149);
        if (!v135)
        {
          goto LABEL_242;
        }

        goto LABEL_241;
      }

      if (!v355)
      {
        goto LABEL_240;
      }

      *type = 136446210;
      *&type[4] = "nw_http3_encoder_stream_finalize_output_frames";
      v138 = "%{public}s called with null http3, no backtrace";
    }

    else
    {
      v136 = __nwlog_obj();
      v137 = v430[0];
      if (!os_log_type_enabled(v136, v430[0]))
      {
        goto LABEL_240;
      }

      *type = 136446210;
      *&type[4] = "nw_http3_encoder_stream_finalize_output_frames";
      v138 = "%{public}s called with null http3, backtrace limit exceeded";
    }

LABEL_238:
    v152 = v136;
    v153 = v137;
    v154 = 12;
LABEL_239:
    _os_log_impl(&dword_181A37000, v152, v153, v138, type, v154);
    goto LABEL_240;
  }

  if (nw_protocol_copy_http_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_definition_onceToken, &__block_literal_global_16_75909);
  }

  v4 = nw_protocol_copy_http_definition_http_definition;
  v5 = nw_frame_copy_metadata_for_protocol(*(a1 + 392), v4);
  if (v5)
  {
    v6 = v5;
    if ((*(*(a1 + 344) + 1397) & 1) == 0)
    {
      v7 = nw_http_metadata_copy_request(v5);
      if (v7)
      {
        v8 = v7;
        v394 = v4;
        v9 = nw_protocol_waiting_for_output(*(a1 + 32), a1);
        v10 = v9;
        if (v9)
        {
          v11 = nw_http_request_copy(v8);
          nw_http_fields_append(v11, "Early-Data", "1");
          metadata_for_request = nw_http_create_metadata_for_request(v11);
          os_release(v6);
          nw_http_transaction_metadata_set_attempted_early_data(*(a1 + 400), 1);
          if (v11)
          {
            os_release(v11);
          }
        }

        else
        {
          metadata_for_request = v6;
        }

        nw_http_transaction_metadata_set_used_early_data(*(a1 + 400), v10);
        v6 = metadata_for_request;
LABEL_64:
        nw_http_transaction_metadata_set_outbound_message(*(a1 + 400), v6, a1 + 632);
        nw::http::content_length_manager::set_outbound_message((a1 + 280), v6);
        if (v8)
        {
          v62 = v8;
          has_method = _nw_http_request_has_method(v62);

          v64 = v62;
          v65 = v64;
          if (has_method)
          {
            have_field_with_name = _nw_http_fields_have_field_with_name(v64, "Datagram-Flow-Id");

            if ((have_field_with_name & 1) == 0)
            {
              nw_protocol_http3_stream_start_datagram_flow(a1);
              *buf = 0;
              *&buf[8] = 0;
              snprintf(buf, 0x10uLL, "%llu", *(a1 + 248));
              nw_http_fields_append(v65, "Datagram-Flow-Id", buf);
            }

            *(a1 + 734) |= 2u;
          }

          else
          {
            v67 = _nw_http_request_has_method(v64);

            if (v67)
            {
              v408[0] = MEMORY[0x1E69E9820];
              v408[1] = 0x40000000;
              v408[2] = ___ZL27nw_http3_stream_send_fieldsP24nw_protocol_http3_streamb_block_invoke;
              v408[3] = &__block_descriptor_tmp_71;
              v408[4] = a1;
              nw_http_fields_access_value_by_name(v65, "Capsule-Protocol", v408);
              *buf = 0;
              *&buf[8] = buf;
              *&buf[16] = 0x2000000000;
              LOBYTE(v448) = 0;
              v407[0] = MEMORY[0x1E69E9820];
              v407[1] = 0x40000000;
              v407[2] = ___ZL27nw_http3_stream_send_fieldsP24nw_protocol_http3_streamb_block_invoke_2;
              v407[3] = &unk_1E6A38C28;
              v407[4] = buf;
              nw_http_request_access_extended_connect_protocol(v65, v407);
              if (*(*&buf[8] + 24) == 1)
              {
                *(a1 + 256) = nw_http_metadata_get_datagram_context_id(v6);
                nw_protocol_http3_stream_start_datagram_flow(a1);
              }

              *(a1 + 734) |= 2u;
              _Block_object_dispose(buf, 8);
            }
          }
        }

        v68 = *(a1 + 344);
        if (v68)
        {
          if (v6)
          {
            if ((*(a1 + 732) & 0x2000) == 0 && gLogDatapath == 1)
            {
              v244 = __nwlog_obj();
              v245 = os_log_type_enabled(v244, OS_LOG_TYPE_DEBUG);
              v68 = *(a1 + 344);
              if (v245)
              {
                v246 = *(v68 + 1304);
                v247 = *(a1 + 240);
                *buf = 136447234;
                *&buf[4] = "nw_http3_stream_serialize_fields";
                *&buf[12] = 2082;
                *&buf[14] = a1 + 632;
                *&buf[22] = 2080;
                v448 = " ";
                LOWORD(v449) = 1024;
                *(&v449 + 2) = v246;
                HIWORD(v449) = 2048;
                v450 = v247;
                _os_log_impl(&dword_181A37000, v244, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> called", buf, 0x30u);
                v68 = *(a1 + 344);
              }
            }

            v434 = 0;
            v435 = &v434;
            v436 = 0x2000000000;
            v437 = 0;
            *v430 = 0;
            v431 = v430;
            v432 = 0x2000000000;
            v433 = 0;
            v429[0] = 0;
            v429[1] = v429;
            v429[2] = 0x2000000000;
            v429[3] = 0;
            v428[0] = 0;
            v428[1] = v428;
            v428[2] = 0x2000000000;
            v428[3] = 0;
            v424 = 0;
            v425 = &v424;
            v426 = 0x2000000000;
            v427 = 22;
            v420 = 0;
            v421 = &v420;
            v422 = 0x2000000000;
            v423 = 0;
            v419[0] = 0;
            v419[1] = v419;
            v419[2] = 0x2000000000;
            v419[3] = 512;
            v418[0] = 0;
            v418[1] = v418;
            v418[2] = 0x2000000000;
            v418[3] = 512;
            v414 = 0;
            v415 = &v414;
            v416 = 0x2000000000;
            alloc = dispatch_data_create_alloc();
            v410 = 0;
            v411 = &v410;
            v412 = 0x2000000000;
            v413 = dispatch_data_create_alloc();
            v69 = *(a1 + 616);
            if (*(v68 + 260))
            {
              *(a1 + 616) = v69 + 1;
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              *buf = 136446210;
              *&buf[4] = "nw_http3_stream_serialize_fields";
              v75 = _os_log_send_and_compose_impl();
              type[0] = 16;
              v443[0] = 0;
              if ((__nwlog_fault(v75, type, v443) & 1) == 0)
              {
                goto LABEL_169;
              }

              if (type[0] == 17)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v76 = gLogObj;
                v77 = type[0];
                if (!os_log_type_enabled(gLogObj, type[0]))
                {
                  goto LABEL_169;
                }

                *buf = 136446210;
                *&buf[4] = "nw_http3_stream_serialize_fields";
                v78 = "%{public}s lsqpack header already started";
              }

              else if (v443[0] == 1)
              {
                v84 = __nw_create_backtrace_string();
                v76 = __nwlog_obj();
                v77 = type[0];
                v85 = os_log_type_enabled(v76, type[0]);
                if (v84)
                {
                  if (v85)
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_http3_stream_serialize_fields";
                    *&buf[12] = 2082;
                    *&buf[14] = v84;
                    v86 = "%{public}s lsqpack header already started, dumping backtrace:%{public}s";
                    v87 = buf;
LABEL_139:
                    _os_log_impl(&dword_181A37000, v76, v77, v86, v87, 0x16u);
                  }

LABEL_140:
                  free(v84);
                  goto LABEL_169;
                }

                if (!v85)
                {
                  goto LABEL_169;
                }

                *buf = 136446210;
                *&buf[4] = "nw_http3_stream_serialize_fields";
                v78 = "%{public}s lsqpack header already started, no backtrace";
              }

              else
              {
                v76 = __nwlog_obj();
                v77 = type[0];
                if (!os_log_type_enabled(v76, type[0]))
                {
                  goto LABEL_169;
                }

                *buf = 136446210;
                *&buf[4] = "nw_http3_stream_serialize_fields";
                v78 = "%{public}s lsqpack header already started, backtrace limit exceeded";
              }

              v116 = buf;
LABEL_168:
              _os_log_impl(&dword_181A37000, v76, v77, v78, v116, 0xCu);
              goto LABEL_169;
            }

            v393 = v68 + 248;
            v391 = v435[3];
            v70 = *(a1 + 240);
            v71 = *(v68 + 448);
            if (v71)
            {
              fwrite("qenc: debug: ", 0xDuLL, 1uLL, v71);
              fprintf(*(v68 + 448), "Start header for stream %llu", v70);
              fputc(10, *(v68 + 448));
            }

            v72 = (v68 + 328);
            v73 = (v68 + 328);
            v392 = v8;
            while (1)
            {
              v73 = *v73;
              if (!v73)
              {
                break;
              }

              v74 = v73[1];
              if (v74 != -1)
              {
                goto LABEL_92;
              }
            }

            if ((*(v68 + 260) & 4) != 0 || 4112 * *(v68 + 292) < *(v68 + 268))
            {
              v73 = malloc_type_malloc(0x1010uLL, 0x10A0040497EC00CuLL);
              if (v73)
              {
                v74 = 0;
                *v73 = 0;
                v73[1] = 0;
                **(v68 + 336) = v73;
                *(v68 + 336) = v73;
                ++*(v68 + 292);
LABEL_92:
                v79 = __clz(__rbit64(~v74));
                v73[1] = (1 << v79) | v74;
                v80 = &v73[8 * v79];
                v80[2] = 0;
                v80 += 2;
                *(v80 + 3) = 0u;
                v80[7] = 0;
                *(v80 + 5) = 0u;
                *(v80 + 1) = 0u;
                v80[4] = v80;
                v81 = *(v68 + 352);
                v80[1] = v81;
                *v81 = v80;
                *(v68 + 352) = v80;
                v82 = (v68 + 376);
                *(v68 + 376) = v80;
                v80[5] = v70;
                *(v80 + 12) = v69;
                goto LABEL_93;
              }
            }

            v82 = (v68 + 376);
            *(v68 + 376) = 0;
            v88 = *(v68 + 448);
            if (v88)
            {
              fwrite("qenc: info: ", 0xCuLL, 1uLL, v88);
              fprintf(*(v68 + 448), "could not allocate hinfo for stream %llu", v70);
              fputc(10, *(v68 + 448));
            }

LABEL_93:
            *(v68 + 400) = 0;
            *(v68 + 384) = 0;
            *(v68 + 392) = 0;
            *(v68 + 404) = *(v68 + 248);
            if (v69)
            {
              if (*v82)
              {
                v83 = *(v68 + 360);
                if (v83)
                {
                  while (*(v83 + 40) != v70)
                  {
                    v83 = *(v83 + 16);
                    if (!v83)
                    {
                      goto LABEL_108;
                    }
                  }

                  *(v68 + 384) = v83;
                }
              }
            }

LABEL_108:
            *(v68 + 260) |= 1u;
            ++*(a1 + 616);
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 0x40000000;
            *&buf[16] = ___ZL32nw_http3_stream_serialize_fieldsP24nw_protocol_http3_streamP20nw_protocol_metadata_block_invoke;
            v448 = &unk_1E6A38CC0;
            v449 = v429;
            v450 = v419;
            *v451 = &v424;
            *&v451[8] = v428;
            *&v451[16] = v418;
            v452 = &v420;
            v457 = a1;
            v458 = v68 + 248;
            v453 = v430;
            v454 = &v434;
            v455 = &v410;
            v456 = &v414;
            v89 = v6;
            v90 = buf;
            if (nw_protocol_copy_http_definition_onceToken != -1)
            {
              dispatch_once(&nw_protocol_copy_http_definition_onceToken, &__block_literal_global_16_75909);
            }

            if (nw_protocol_metadata_matches_definition(v89, nw_protocol_copy_http_definition_http_definition))
            {
              *type = MEMORY[0x1E69E9820];
              *&type[8] = 3221225472;
              *&type[16] = __nw_http_metadata_enumerate_modern_header_fields_combined_block_invoke;
              v440 = &unk_1E6A3A978;
              v441 = v90;
              handle = _nw_protocol_metadata_get_handle(v89);
              if (handle)
              {
                (*&type[16])(type, handle);
              }

              goto LABEL_114;
            }

            v285 = __nwlog_obj();
            *type = 136446210;
            *&type[4] = "nw_http_metadata_enumerate_modern_header_fields_combined";
            v286 = _os_log_send_and_compose_impl();

            v443[0] = 16;
            v438 = OS_LOG_TYPE_DEFAULT;
            if (!__nwlog_fault(v286, v443, &v438))
            {
              goto LABEL_577;
            }

            if (v443[0] == 17)
            {
              v287 = __nwlog_obj();
              v288 = v443[0];
              if (os_log_type_enabled(v287, v443[0]))
              {
                *type = 136446210;
                *&type[4] = "nw_http_metadata_enumerate_modern_header_fields_combined";
                v289 = "%{public}s metadata must be http";
LABEL_575:
                _os_log_impl(&dword_181A37000, v287, v288, v289, type, 0xCu);
                goto LABEL_576;
              }

              goto LABEL_576;
            }

            if (v438 != OS_LOG_TYPE_INFO)
            {
              v287 = __nwlog_obj();
              v288 = v443[0];
              if (os_log_type_enabled(v287, v443[0]))
              {
                *type = 136446210;
                *&type[4] = "nw_http_metadata_enumerate_modern_header_fields_combined";
                v289 = "%{public}s metadata must be http, backtrace limit exceeded";
                goto LABEL_575;
              }

LABEL_576:

LABEL_577:
              if (!v286)
              {
                goto LABEL_114;
              }

              goto LABEL_578;
            }

            v337 = __nw_create_backtrace_string();
            v338 = __nwlog_obj();
            v390 = v443[0];
            v339 = os_log_type_enabled(v338, v443[0]);
            if (v337)
            {
              if (v339)
              {
                *type = 136446466;
                *&type[4] = "nw_http_metadata_enumerate_modern_header_fields_combined";
                *&type[12] = 2082;
                *&type[14] = v337;
                _os_log_impl(&dword_181A37000, v338, v390, "%{public}s metadata must be http, dumping backtrace:%{public}s", type, 0x16u);
              }

              free(v337);
              if (!v286)
              {
                goto LABEL_114;
              }
            }

            else
            {
              if (v339)
              {
                *type = 136446210;
                *&type[4] = "nw_http_metadata_enumerate_modern_header_fields_combined";
                _os_log_impl(&dword_181A37000, v338, v390, "%{public}s metadata must be http, no backtrace", type, 0xCu);
              }

              if (!v286)
              {
LABEL_114:

                if ((*(v68 + 260) & 1) == 0)
                {
                  goto LABEL_115;
                }

                if (*(v68 + 464))
                {
                  v92 = *(v68 + 460);
                  v93 = *(v68 + 392);
                  if (v92 != 0.0)
                  {
                    v93 = v92 + (v93 - v92) * 0.4;
                  }

                  *(v68 + 460) = v93;
                  v94 = *(v68 + 448);
                  if (v94)
                  {
                    fwrite("qenc: debug: ", 0xDuLL, 1uLL, v94);
                    fprintf(*(v68 + 448), "header count actual: %u; exponential moving average: %.3f", *(v68 + 392), *(v68 + 460));
                    fputc(10, *(v68 + 448));
                  }

                  v95 = *(v68 + 456);
                  if (v95 != 0.0 && v95 > *(v68 + 460))
                  {
                    v96 = vabds_f32(*(v68 + 476), v95);
                    if (v96 >= 1.5 || (v96 / v95) >= 0.1)
                    {
                      qenc_hist_update_size(v393, vcvtas_u32_f32(v95));
                    }
                  }
                }

                v97 = *(v68 + 376);
                if (v97)
                {
                  v98 = *(v97 + 60);
                  if (v98)
                  {
                    type[0] = 0;
                    v99 = v98 % (2 * *(v68 + 276));
                    v100 = v99 + 1;
                    v101 = *(v68 + 448);
                    if (v101)
                    {
                      fwrite("qenc: debug: ", 0xDuLL, 1uLL, v101);
                      fprintf(*(v68 + 448), "LargestRef for stream %llu is encoded as %u", *(v97 + 40), v99 + 1);
                      fputc(10, *(v68 + 448));
                    }

                    if (v99 > 0xFD)
                    {
                      type[0] = -1;
                      v113 = v99 - 254;
                      if ((v99 - 254) <= 0x7F)
                      {
                        type[1] = v99 + 2;
                        v102 = 2;
                      }

                      else
                      {
                        type[1] = (v99 + 2) | 0x80;
                        if (v113 < 0x4000)
                        {
                          v114 = v113 >> 7;
                          v102 = 3;
                          v115 = &type[2];
                        }

                        else
                        {
                          type[2] = (v113 >> 7) | 0x80;
                          if (v113 < 0x200000)
                          {
                            v114 = v113 >> 14;
                            v102 = 4;
                            v115 = &type[3];
                          }

                          else
                          {
                            type[3] = (v113 >> 14) | 0x80;
                            v114 = v113 >> 28;
                            if (v113 >> 28)
                            {
                              type[4] = (v113 >> 21) | 0x80;
                              v102 = 6;
                              v115 = &type[5];
                            }

                            else
                            {
                              v114 = v113 >> 21;
                              v102 = 5;
                              v115 = &type[4];
                            }
                          }
                        }

                        *v115 = v114;
                      }
                    }

                    else
                    {
                      type[0] |= v100;
                      v102 = 1;
                    }

                    v196 = &type[v102];
                    v197 = *(v68 + 404);
                    v198 = *(v97 + 60);
                    v199 = v197 >= v198;
                    v200 = v197 - v198;
                    v201 = v197 < v198;
                    LODWORD(v202) = v198 + ~v197;
                    if (v199)
                    {
                      v202 = v200;
                    }

                    else
                    {
                      v202 = v202;
                    }

                    if (v199)
                    {
                      v203 = 0;
                    }

                    else
                    {
                      v203 = 0x80;
                    }

                    *v196 = v201 << 7;
                    if (v202 <= 0x7E)
                    {
                      *v196 = v203 | v202;
                      v204 = v196 + 1;
                      goto LABEL_340;
                    }

                    type[v102] = v203 | 0x7F;
                    LOBYTE(v205) = v202 - 127;
                    if ((v202 - 127) < 0x80)
                    {
                      v209 = v102 + 1;
LABEL_339:
                      v204 = &type[v102 + 2];
                      type[v209] = v205;
                      if (v204 > v196)
                      {
LABEL_340:
                        if (*(v97 + 60) > *(v68 + 252))
                        {
                          qenc_add_to_risked_list(v393, v97);
                        }

                        v210 = *(v68 + 448);
                        if (v210)
                        {
                          fwrite("qenc: debug: ", 0xDuLL, 1uLL, v210);
                          fprintf(*(v68 + 448), "ended header for stream %llu; max ref: %u encoded as %u; risked: %d", *(v97 + 40), *(v97 + 60), v100, *(v97 + 60) > *(v68 + 252));
                          fputc(10, *(v68 + 448));
                        }

                        *(v68 + 376) = 0;
                        *(v68 + 260) &= ~1u;
                        v112 = v204 - &type[22] + 22;
                        *(v68 + 444) += v112;
                        if (v112 < 0)
                        {
LABEL_115:
                          __nwlog_obj();
                          *v443 = 136446210;
                          v444 = "nw_http3_stream_serialize_fields";
                          v75 = _os_log_send_and_compose_impl();
                          v438 = OS_LOG_TYPE_ERROR;
                          v409 = 0;
                          v8 = v392;
                          if (!__nwlog_fault(v75, &v438, &v409))
                          {
                            goto LABEL_169;
                          }

                          if (v438 == OS_LOG_TYPE_FAULT)
                          {
                            v76 = __nwlog_obj();
                            v77 = v438;
                            if (os_log_type_enabled(v76, v438))
                            {
                              *v443 = 136446210;
                              v444 = "nw_http3_stream_serialize_fields";
                              v78 = "%{public}s lsqpack end header before starting";
LABEL_167:
                              v116 = v443;
                              goto LABEL_168;
                            }

                            goto LABEL_169;
                          }

                          if (v409 != 1)
                          {
                            v76 = __nwlog_obj();
                            v77 = v438;
                            if (os_log_type_enabled(v76, v438))
                            {
                              *v443 = 136446210;
                              v444 = "nw_http3_stream_serialize_fields";
                              v78 = "%{public}s lsqpack end header before starting, backtrace limit exceeded";
                              goto LABEL_167;
                            }

LABEL_169:
                            if (v75)
                            {
                              free(v75);
                            }

                            v4 = v394;
                            goto LABEL_172;
                          }

                          v84 = __nw_create_backtrace_string();
                          v76 = __nwlog_obj();
                          v77 = v438;
                          v103 = os_log_type_enabled(v76, v438);
                          if (!v84)
                          {
                            if (v103)
                            {
                              *v443 = 136446210;
                              v444 = "nw_http3_stream_serialize_fields";
                              v78 = "%{public}s lsqpack end header before starting, no backtrace";
                              goto LABEL_167;
                            }

                            goto LABEL_169;
                          }

                          if (v103)
                          {
                            *v443 = 136446466;
                            v444 = "nw_http3_stream_serialize_fields";
                            v445 = 2082;
                            v446 = v84;
                            v86 = "%{public}s lsqpack end header before starting, dumping backtrace:%{public}s";
                            v87 = v443;
                            goto LABEL_139;
                          }

                          goto LABEL_140;
                        }

LABEL_347:
                        memcpy((v391 - v112 + 22), type, v112);
                        *(a1 + 512) = dispatch_data_create_subrange(v415[3], 22 - v112, v112 + v425[3] - 22);
                        v211 = v415[3];
                        if (v211)
                        {
                          dispatch_release(v211);
                          v415[3] = 0;
                        }

                        v212 = v421[3];
                        v4 = v394;
                        v8 = v392;
                        if (v212)
                        {
                          subrange = dispatch_data_create_subrange(v411[3], 0, v212);
                        }

                        else
                        {
                          subrange = 0;
                        }

                        *(a1 + 520) = subrange;
                        v214 = v411[3];
                        if (v214)
                        {
                          dispatch_release(v214);
                          v411[3] = 0;
                        }

LABEL_172:
                        _Block_object_dispose(&v410, 8);
                        _Block_object_dispose(&v414, 8);
                        _Block_object_dispose(v418, 8);
                        _Block_object_dispose(v419, 8);
                        _Block_object_dispose(&v420, 8);
                        _Block_object_dispose(&v424, 8);
                        _Block_object_dispose(v428, 8);
                        _Block_object_dispose(v429, 8);
                        _Block_object_dispose(v430, 8);
                        _Block_object_dispose(&v434, 8);
                        if (!v8)
                        {
                          goto LABEL_174;
                        }

                        goto LABEL_173;
                      }
                    }

                    else
                    {
                      v206 = v202 - 127;
                      while (1)
                      {
                        v207 = v102++;
                        if (v102 > 0x15)
                        {
                          break;
                        }

                        type[v207 + 1] = v206 | 0x80;
                        v205 = v206 >> 7;
                        v208 = v206 >> 14;
                        v206 >>= 7;
                        if (!v208)
                        {
                          v209 = v207 + 2;
                          if ((v207 + 2) <= 21)
                          {
                            goto LABEL_339;
                          }

                          break;
                        }
                      }
                    }

                    v112 = 0;
                    goto LABEL_347;
                  }

                  *type = 0;
                  v105 = *(v68 + 448);
                  if (v105)
                  {
                    fwrite("qenc: debug: ", 0xDuLL, 1uLL, v105);
                    fprintf(*(v68 + 448), "ended header for stream %llu; dynamic table not referenced", *(*(v68 + 376) + 40));
                    fputc(10, *(v68 + 448));
                    v97 = *(v68 + 376);
                  }

                  do
                  {
                    v72 = *v72;
                    if (!v72)
                    {
                      __assert_rtn("enc_free_hinfo", "lsqpack.c", 381, "0");
                    }

                    v106 = v72 + 2;
                  }

                  while ((v72 + 2) > v97 || (v72 + 514) <= v97);
                  v72[1] &= ~(1 << ((v97 - v106) >> 6));
                  v108 = &v106[8 * ((v97 - v106) >> 6)];
                  v110 = *v108;
                  v109 = v108[1];
                  v111 = (v68 + 352);
                  if (v110)
                  {
                    v111 = (v110 + 8);
                  }

                  *v111 = v109;
                  *v109 = v110;
                  *(v68 + 376) = 0;
                }

                else
                {
                  *type = 0;
                  v104 = *(v68 + 448);
                  if (v104)
                  {
                    fwrite("qenc: debug: ", 0xDuLL, 1uLL, v104);
                    fwrite("ended header; hinfo absent", 0x1AuLL, 1uLL, *(v68 + 448));
                    fputc(10, *(v68 + 448));
                  }
                }

                *(v68 + 260) &= ~1u;
                *(v68 + 444) += 2;
                v112 = 2;
                goto LABEL_347;
              }
            }

LABEL_578:
            free(v286);
            goto LABEL_114;
          }

          v239 = v8;
          __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_http3_stream_serialize_fields";
          v240 = _os_log_send_and_compose_impl();
          type[0] = 16;
          LOBYTE(v434) = 0;
          if (__nwlog_fault(v240, type, &v434))
          {
            if (type[0] == 17)
            {
              v241 = __nwlog_obj();
              v242 = type[0];
              if (!os_log_type_enabled(v241, type[0]))
              {
                goto LABEL_588;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http3_stream_serialize_fields";
              v243 = "%{public}s called with null http_metadata";
              goto LABEL_587;
            }

            if (v434 != 1)
            {
              v241 = __nwlog_obj();
              v242 = type[0];
              if (!os_log_type_enabled(v241, type[0]))
              {
                goto LABEL_588;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http3_stream_serialize_fields";
              v243 = "%{public}s called with null http_metadata, backtrace limit exceeded";
              goto LABEL_587;
            }

            v290 = __nw_create_backtrace_string();
            v241 = __nwlog_obj();
            v242 = type[0];
            v291 = os_log_type_enabled(v241, type[0]);
            if (v290)
            {
              if (v291)
              {
                *buf = 136446466;
                *&buf[4] = "nw_http3_stream_serialize_fields";
                *&buf[12] = 2082;
                *&buf[14] = v290;
                _os_log_impl(&dword_181A37000, v241, v242, "%{public}s called with null http_metadata, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v290);
              if (!v240)
              {
LABEL_590:
                v4 = v394;
                v8 = v239;
                if (!v239)
                {
LABEL_174:
                  v28 = 1;
                  if (!v6)
                  {
                    goto LABEL_176;
                  }

                  goto LABEL_175;
                }

LABEL_173:
                os_release(v8);
                goto LABEL_174;
              }

LABEL_589:
              free(v240);
              goto LABEL_590;
            }

            if (v291)
            {
              *buf = 136446210;
              *&buf[4] = "nw_http3_stream_serialize_fields";
              v243 = "%{public}s called with null http_metadata, no backtrace";
LABEL_587:
              _os_log_impl(&dword_181A37000, v241, v242, v243, buf, 0xCu);
            }
          }
        }

        else
        {
          v239 = v8;
          __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_http3_stream_serialize_fields";
          v240 = _os_log_send_and_compose_impl();
          type[0] = 16;
          LOBYTE(v434) = 0;
          if (!__nwlog_fault(v240, type, &v434))
          {
            goto LABEL_588;
          }

          if (type[0] == 17)
          {
            v241 = __nwlog_obj();
            v242 = type[0];
            if (!os_log_type_enabled(v241, type[0]))
            {
              goto LABEL_588;
            }

            *buf = 136446210;
            *&buf[4] = "nw_http3_stream_serialize_fields";
            v243 = "%{public}s called with null http3_stream->http3_connection";
            goto LABEL_587;
          }

          if (v434 != 1)
          {
            v241 = __nwlog_obj();
            v242 = type[0];
            if (!os_log_type_enabled(v241, type[0]))
            {
              goto LABEL_588;
            }

            *buf = 136446210;
            *&buf[4] = "nw_http3_stream_serialize_fields";
            v243 = "%{public}s called with null http3_stream->http3_connection, backtrace limit exceeded";
            goto LABEL_587;
          }

          v283 = __nw_create_backtrace_string();
          v241 = __nwlog_obj();
          v242 = type[0];
          v284 = os_log_type_enabled(v241, type[0]);
          if (!v283)
          {
            if (!v284)
            {
              goto LABEL_588;
            }

            *buf = 136446210;
            *&buf[4] = "nw_http3_stream_serialize_fields";
            v243 = "%{public}s called with null http3_stream->http3_connection, no backtrace";
            goto LABEL_587;
          }

          if (v284)
          {
            *buf = 136446466;
            *&buf[4] = "nw_http3_stream_serialize_fields";
            *&buf[12] = 2082;
            *&buf[14] = v283;
            _os_log_impl(&dword_181A37000, v241, v242, "%{public}s called with null http3_stream->http3_connection, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v283);
        }

LABEL_588:
        if (!v240)
        {
          goto LABEL_590;
        }

        goto LABEL_589;
      }

      if ((*(a1 + 732) & 0x2000) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v33 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
        {
          v34 = *(*(a1 + 344) + 1304);
          v35 = *(a1 + 240);
          v36 = *(a1 + 392);
          *buf = 136447490;
          *&buf[4] = "nw_http3_stream_send_fields";
          *&buf[12] = 2082;
          *&buf[14] = a1 + 632;
          *&buf[22] = 2080;
          v448 = " ";
          LOWORD(v449) = 1024;
          *(&v449 + 2) = v34;
          HIWORD(v449) = 2048;
          v450 = v35;
          *v451 = 2048;
          *&v451[2] = v36;
          _os_log_impl(&dword_181A37000, v33, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:s%llu> No request found in frame %p", buf, 0x3Au);
        }
      }

      v37 = *(a1 + 48);
      if (v37)
      {
        v38 = *(v37 + 24);
        if (v38)
        {
          v39 = *(v38 + 56);
          if (v39)
          {
            v39();
            v40 = *(a1 + 48);
            if (!v40)
            {
              goto LABEL_40;
            }

LABEL_38:
            v41 = *(v40 + 24);
            if (!v41)
            {
              goto LABEL_40;
            }

            v42 = *(v41 + 48);
            if (!v42)
            {
              goto LABEL_40;
            }

LABEL_59:
            v42(v40, a1);
            v28 = 0;
LABEL_175:
            os_release(v6);
LABEL_176:
            if (!v4)
            {
              goto LABEL_178;
            }

            goto LABEL_177;
          }
        }
      }

      v248 = v4;
      __nwlog_obj();
      v249 = *(a1 + 48);
      v250 = "invalid";
      if (v249)
      {
        v251 = *(v249 + 16);
        if (v251)
        {
          v250 = v251;
        }
      }

      *buf = 136446466;
      *&buf[4] = "nw_http3_stream_send_fields";
      *&buf[12] = 2082;
      *&buf[14] = v250;
      v252 = _os_log_send_and_compose_impl();
      type[0] = 16;
      LOBYTE(v434) = 0;
      if (__nwlog_fault(v252, type, &v434))
      {
        if (type[0] == 17)
        {
          v253 = __nwlog_obj();
          v254 = type[0];
          if (!os_log_type_enabled(v253, type[0]))
          {
            goto LABEL_603;
          }

          v255 = *(a1 + 48);
          v256 = "invalid";
          if (v255)
          {
            v257 = *(v255 + 16);
            if (v257)
            {
              v256 = v257;
            }
          }

          *buf = 136446466;
          *&buf[4] = "nw_http3_stream_send_fields";
          *&buf[12] = 2082;
          *&buf[14] = v256;
          v258 = "%{public}s protocol %{public}s has invalid error callback";
LABEL_602:
          _os_log_impl(&dword_181A37000, v253, v254, v258, buf, 0x16u);
          goto LABEL_603;
        }

        if (v434 != 1)
        {
          v253 = __nwlog_obj();
          v254 = type[0];
          if (!os_log_type_enabled(v253, type[0]))
          {
            goto LABEL_603;
          }

          v343 = *(a1 + 48);
          v344 = "invalid";
          if (v343)
          {
            v345 = *(v343 + 16);
            if (v345)
            {
              v344 = v345;
            }
          }

          *buf = 136446466;
          *&buf[4] = "nw_http3_stream_send_fields";
          *&buf[12] = 2082;
          *&buf[14] = v344;
          v258 = "%{public}s protocol %{public}s has invalid error callback, backtrace limit exceeded";
          goto LABEL_602;
        }

        v297 = __nw_create_backtrace_string();
        v253 = __nwlog_obj();
        v254 = type[0];
        v298 = os_log_type_enabled(v253, type[0]);
        if (!v297)
        {
          if (!v298)
          {
            goto LABEL_603;
          }

          v359 = *(a1 + 48);
          v360 = "invalid";
          if (v359)
          {
            v361 = *(v359 + 16);
            if (v361)
            {
              v360 = v361;
            }
          }

          *buf = 136446466;
          *&buf[4] = "nw_http3_stream_send_fields";
          *&buf[12] = 2082;
          *&buf[14] = v360;
          v258 = "%{public}s protocol %{public}s has invalid error callback, no backtrace";
          goto LABEL_602;
        }

        if (v298)
        {
          v299 = *(a1 + 48);
          v300 = "invalid";
          if (v299)
          {
            v301 = *(v299 + 16);
            if (v301)
            {
              v300 = v301;
            }
          }

          *buf = 136446722;
          *&buf[4] = "nw_http3_stream_send_fields";
          *&buf[12] = 2082;
          *&buf[14] = v300;
          *&buf[22] = 2082;
          v448 = v297;
          _os_log_impl(&dword_181A37000, v253, v254, "%{public}s protocol %{public}s has invalid error callback, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(v297);
      }

LABEL_603:
      if (v252)
      {
        free(v252);
      }

      v4 = v248;
      v40 = *(a1 + 48);
      if (!v40)
      {
LABEL_40:
        v43 = v4;
        __nwlog_obj();
        v44 = *(a1 + 48);
        v45 = "invalid";
        if (v44)
        {
          v46 = *(v44 + 16);
          if (v46)
          {
            v45 = v46;
          }
        }

        *buf = 136446466;
        *&buf[4] = "nw_http3_stream_send_fields";
        *&buf[12] = 2082;
        *&buf[14] = v45;
        v47 = _os_log_send_and_compose_impl();
        type[0] = 16;
        LOBYTE(v434) = 0;
        if (__nwlog_fault(v47, type, &v434))
        {
          if (type[0] == 17)
          {
            v48 = __nwlog_obj();
            v49 = type[0];
            if (!os_log_type_enabled(v48, type[0]))
            {
              goto LABEL_646;
            }

            v50 = *(a1 + 48);
            v51 = "invalid";
            if (v50)
            {
              v52 = *(v50 + 16);
              if (v52)
              {
                v51 = v52;
              }
            }

LABEL_49:
            *buf = 136446466;
            *&buf[4] = "nw_http3_stream_send_fields";
            *&buf[12] = 2082;
            *&buf[14] = v51;
            v53 = "%{public}s protocol %{public}s has invalid disconnected callback";
LABEL_645:
            _os_log_impl(&dword_181A37000, v48, v49, v53, buf, 0x16u);
            goto LABEL_646;
          }

          if (v434 == 1)
          {
            v292 = __nw_create_backtrace_string();
            v48 = __nwlog_obj();
            v49 = type[0];
            v293 = os_log_type_enabled(v48, type[0]);
            if (v292)
            {
              if (v293)
              {
                v294 = *(a1 + 48);
                v295 = "invalid";
                if (v294)
                {
                  v296 = *(v294 + 16);
                  if (v296)
                  {
                    v295 = v296;
                  }
                }

                *buf = 136446722;
                *&buf[4] = "nw_http3_stream_send_fields";
                *&buf[12] = 2082;
                *&buf[14] = v295;
                *&buf[22] = 2082;
                v448 = v292;
                _os_log_impl(&dword_181A37000, v48, v49, "%{public}s protocol %{public}s has invalid disconnected callback, dumping backtrace:%{public}s", buf, 0x20u);
              }

              free(v292);
              goto LABEL_646;
            }

            if (!v293)
            {
              goto LABEL_646;
            }

            v356 = *(a1 + 48);
            v357 = "invalid";
            if (v356)
            {
              v358 = *(v356 + 16);
              if (v358)
              {
                v357 = v358;
              }
            }

LABEL_644:
            *buf = 136446466;
            *&buf[4] = "nw_http3_stream_send_fields";
            *&buf[12] = 2082;
            *&buf[14] = v357;
            v53 = "%{public}s protocol %{public}s has invalid disconnected callback, no backtrace";
            goto LABEL_645;
          }

          v48 = __nwlog_obj();
          v49 = type[0];
          if (!os_log_type_enabled(v48, type[0]))
          {
            goto LABEL_646;
          }

          v340 = *(a1 + 48);
          v341 = "invalid";
          if (v340)
          {
            v342 = *(v340 + 16);
            if (v342)
            {
              v341 = v342;
            }
          }

LABEL_545:
          *buf = 136446466;
          *&buf[4] = "nw_http3_stream_send_fields";
          *&buf[12] = 2082;
          *&buf[14] = v341;
          v53 = "%{public}s protocol %{public}s has invalid disconnected callback, backtrace limit exceeded";
          goto LABEL_645;
        }

        goto LABEL_646;
      }

      goto LABEL_38;
    }

    v29 = nw_http_metadata_copy_response(v5);
    if (v29)
    {
      v30 = v29;
      status_code = _nw_http_response_get_status_code(v30);

      *(a1 + 734) = *(a1 + 734) & 0xFB | (4 * ((status_code - 100) < 0x64));
      v32 = *(a1 + 408);
      v394 = v4;
      if (v32)
      {
        v8 = nw_http_metadata_copy_request(v32);
      }

      else
      {
        v8 = 0;
      }

      os_release(v30);
      goto LABEL_64;
    }

    if ((*(a1 + 732) & 0x2000) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v54 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        v55 = *(*(a1 + 344) + 1304);
        v56 = *(a1 + 240);
        v57 = *(a1 + 392);
        *buf = 136447490;
        *&buf[4] = "nw_http3_stream_send_fields";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 632;
        *&buf[22] = 2080;
        v448 = " ";
        LOWORD(v449) = 1024;
        *(&v449 + 2) = v55;
        HIWORD(v449) = 2048;
        v450 = v56;
        *v451 = 2048;
        *&v451[2] = v57;
        _os_log_impl(&dword_181A37000, v54, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:s%llu> No response found in frame %p", buf, 0x3Au);
      }
    }

    v58 = *(a1 + 48);
    if (v58)
    {
      v59 = *(v58 + 24);
      if (v59)
      {
        v60 = *(v59 + 56);
        if (v60)
        {
          v60();
          v40 = *(a1 + 48);
          if (!v40)
          {
            goto LABEL_616;
          }

LABEL_57:
          v61 = *(v40 + 24);
          if (v61)
          {
            v42 = *(v61 + 48);
            if (v42)
            {
              goto LABEL_59;
            }
          }

LABEL_616:
          v43 = v4;
          __nwlog_obj();
          v365 = *(a1 + 48);
          v366 = "invalid";
          if (v365)
          {
            v367 = *(v365 + 16);
            if (v367)
            {
              v366 = v367;
            }
          }

          *buf = 136446466;
          *&buf[4] = "nw_http3_stream_send_fields";
          *&buf[12] = 2082;
          *&buf[14] = v366;
          v47 = _os_log_send_and_compose_impl();
          type[0] = 16;
          LOBYTE(v434) = 0;
          if (__nwlog_fault(v47, type, &v434))
          {
            if (type[0] == 17)
            {
              v48 = __nwlog_obj();
              v49 = type[0];
              if (!os_log_type_enabled(v48, type[0]))
              {
                goto LABEL_646;
              }

              v368 = *(a1 + 48);
              v51 = "invalid";
              if (v368)
              {
                v369 = *(v368 + 16);
                if (v369)
                {
                  v51 = v369;
                }
              }

              goto LABEL_49;
            }

            if (v434 != 1)
            {
              v48 = __nwlog_obj();
              v49 = type[0];
              if (!os_log_type_enabled(v48, type[0]))
              {
                goto LABEL_646;
              }

              v375 = *(a1 + 48);
              v341 = "invalid";
              if (v375)
              {
                v376 = *(v375 + 16);
                if (v376)
                {
                  v341 = v376;
                }
              }

              goto LABEL_545;
            }

            v370 = __nw_create_backtrace_string();
            v48 = __nwlog_obj();
            v49 = type[0];
            v371 = os_log_type_enabled(v48, type[0]);
            if (v370)
            {
              if (v371)
              {
                v372 = *(a1 + 48);
                v373 = "invalid";
                if (v372)
                {
                  v374 = *(v372 + 16);
                  if (v374)
                  {
                    v373 = v374;
                  }
                }

                *buf = 136446722;
                *&buf[4] = "nw_http3_stream_send_fields";
                *&buf[12] = 2082;
                *&buf[14] = v373;
                *&buf[22] = 2082;
                v448 = v370;
                _os_log_impl(&dword_181A37000, v48, v49, "%{public}s protocol %{public}s has invalid disconnected callback, dumping backtrace:%{public}s", buf, 0x20u);
              }

              free(v370);
              if (!v47)
              {
                goto LABEL_648;
              }

              goto LABEL_647;
            }

            if (v371)
            {
              v377 = *(a1 + 48);
              v357 = "invalid";
              if (v377)
              {
                v378 = *(v377 + 16);
                if (v378)
                {
                  v357 = v378;
                }
              }

              goto LABEL_644;
            }
          }

LABEL_646:
          if (!v47)
          {
LABEL_648:
            v28 = 0;
            v4 = v43;
            goto LABEL_175;
          }

LABEL_647:
          free(v47);
          goto LABEL_648;
        }
      }
    }

    v259 = v4;
    __nwlog_obj();
    v260 = *(a1 + 48);
    v261 = "invalid";
    if (v260)
    {
      v262 = *(v260 + 16);
      if (v262)
      {
        v261 = v262;
      }
    }

    *buf = 136446466;
    *&buf[4] = "nw_http3_stream_send_fields";
    *&buf[12] = 2082;
    *&buf[14] = v261;
    v263 = _os_log_send_and_compose_impl();
    type[0] = 16;
    LOBYTE(v434) = 0;
    if (__nwlog_fault(v263, type, &v434))
    {
      if (type[0] == 17)
      {
        v264 = __nwlog_obj();
        v265 = type[0];
        if (!os_log_type_enabled(v264, type[0]))
        {
          goto LABEL_613;
        }

        v266 = *(a1 + 48);
        v267 = "invalid";
        if (v266)
        {
          v268 = *(v266 + 16);
          if (v268)
          {
            v267 = v268;
          }
        }

        *buf = 136446466;
        *&buf[4] = "nw_http3_stream_send_fields";
        *&buf[12] = 2082;
        *&buf[14] = v267;
        v269 = "%{public}s protocol %{public}s has invalid error callback";
LABEL_612:
        _os_log_impl(&dword_181A37000, v264, v265, v269, buf, 0x16u);
        goto LABEL_613;
      }

      if (v434 != 1)
      {
        v264 = __nwlog_obj();
        v265 = type[0];
        if (!os_log_type_enabled(v264, type[0]))
        {
          goto LABEL_613;
        }

        v346 = *(a1 + 48);
        v347 = "invalid";
        if (v346)
        {
          v348 = *(v346 + 16);
          if (v348)
          {
            v347 = v348;
          }
        }

        *buf = 136446466;
        *&buf[4] = "nw_http3_stream_send_fields";
        *&buf[12] = 2082;
        *&buf[14] = v347;
        v269 = "%{public}s protocol %{public}s has invalid error callback, backtrace limit exceeded";
        goto LABEL_612;
      }

      v302 = __nw_create_backtrace_string();
      v264 = __nwlog_obj();
      v265 = type[0];
      v303 = os_log_type_enabled(v264, type[0]);
      if (!v302)
      {
        if (!v303)
        {
          goto LABEL_613;
        }

        v362 = *(a1 + 48);
        v363 = "invalid";
        if (v362)
        {
          v364 = *(v362 + 16);
          if (v364)
          {
            v363 = v364;
          }
        }

        *buf = 136446466;
        *&buf[4] = "nw_http3_stream_send_fields";
        *&buf[12] = 2082;
        *&buf[14] = v363;
        v269 = "%{public}s protocol %{public}s has invalid error callback, no backtrace";
        goto LABEL_612;
      }

      if (v303)
      {
        v304 = *(a1 + 48);
        v305 = "invalid";
        if (v304)
        {
          v306 = *(v304 + 16);
          if (v306)
          {
            v305 = v306;
          }
        }

        *buf = 136446722;
        *&buf[4] = "nw_http3_stream_send_fields";
        *&buf[12] = 2082;
        *&buf[14] = v305;
        *&buf[22] = 2082;
        v448 = v302;
        _os_log_impl(&dword_181A37000, v264, v265, "%{public}s protocol %{public}s has invalid error callback, dumping backtrace:%{public}s", buf, 0x20u);
      }

      free(v302);
    }

LABEL_613:
    if (v263)
    {
      free(v263);
    }

    v4 = v259;
    v40 = *(a1 + 48);
    if (!v40)
    {
      goto LABEL_616;
    }

    goto LABEL_57;
  }

  if ((*(a1 + 732) & 0x2000) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v18 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      v19 = *(*(a1 + 344) + 1304);
      v20 = *(a1 + 240);
      v21 = *(a1 + 392);
      *buf = 136447490;
      *&buf[4] = "nw_http3_stream_send_fields";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 632;
      *&buf[22] = 2080;
      v448 = " ";
      LOWORD(v449) = 1024;
      *(&v449 + 2) = v19;
      HIWORD(v449) = 2048;
      v450 = v20;
      *v451 = 2048;
      *&v451[2] = v21;
      _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:s%llu> No http metadata found in frame %p", buf, 0x3Au);
    }
  }

  v22 = *(a1 + 48);
  if (!v22 || (v23 = *(v22 + 24)) == 0 || (v24 = *(v23 + 56)) == 0)
  {
    v215 = v4;
    __nwlog_obj();
    v216 = *(a1 + 48);
    v217 = "invalid";
    if (v216)
    {
      v218 = *(v216 + 16);
      if (v218)
      {
        v217 = v218;
      }
    }

    *buf = 136446466;
    *&buf[4] = "nw_http3_stream_send_fields";
    *&buf[12] = 2082;
    *&buf[14] = v217;
    v219 = _os_log_send_and_compose_impl();
    type[0] = 16;
    LOBYTE(v434) = 0;
    if (__nwlog_fault(v219, type, &v434))
    {
      if (type[0] == 17)
      {
        v220 = __nwlog_obj();
        v221 = type[0];
        if (!os_log_type_enabled(v220, type[0]))
        {
          goto LABEL_495;
        }

        v222 = *(a1 + 48);
        v223 = "invalid";
        if (v222)
        {
          v224 = *(v222 + 16);
          if (v224)
          {
            v223 = v224;
          }
        }

        *buf = 136446466;
        *&buf[4] = "nw_http3_stream_send_fields";
        *&buf[12] = 2082;
        *&buf[14] = v223;
        v225 = "%{public}s protocol %{public}s has invalid error callback";
LABEL_494:
        _os_log_impl(&dword_181A37000, v220, v221, v225, buf, 0x16u);
        goto LABEL_495;
      }

      if (v434 != 1)
      {
        v220 = __nwlog_obj();
        v221 = type[0];
        if (!os_log_type_enabled(v220, type[0]))
        {
          goto LABEL_495;
        }

        v270 = *(a1 + 48);
        v271 = "invalid";
        if (v270)
        {
          v272 = *(v270 + 16);
          if (v272)
          {
            v271 = v272;
          }
        }

        *buf = 136446466;
        *&buf[4] = "nw_http3_stream_send_fields";
        *&buf[12] = 2082;
        *&buf[14] = v271;
        v225 = "%{public}s protocol %{public}s has invalid error callback, backtrace limit exceeded";
        goto LABEL_494;
      }

      v232 = __nw_create_backtrace_string();
      v220 = __nwlog_obj();
      v221 = type[0];
      v233 = os_log_type_enabled(v220, type[0]);
      if (!v232)
      {
        if (!v233)
        {
          goto LABEL_495;
        }

        v312 = *(a1 + 48);
        v313 = "invalid";
        if (v312)
        {
          v314 = *(v312 + 16);
          if (v314)
          {
            v313 = v314;
          }
        }

        *buf = 136446466;
        *&buf[4] = "nw_http3_stream_send_fields";
        *&buf[12] = 2082;
        *&buf[14] = v313;
        v225 = "%{public}s protocol %{public}s has invalid error callback, no backtrace";
        goto LABEL_494;
      }

      if (v233)
      {
        v234 = *(a1 + 48);
        v235 = "invalid";
        if (v234)
        {
          v236 = *(v234 + 16);
          if (v236)
          {
            v235 = v236;
          }
        }

        *buf = 136446722;
        *&buf[4] = "nw_http3_stream_send_fields";
        *&buf[12] = 2082;
        *&buf[14] = v235;
        *&buf[22] = 2082;
        v448 = v232;
        _os_log_impl(&dword_181A37000, v220, v221, "%{public}s protocol %{public}s has invalid error callback, dumping backtrace:%{public}s", buf, 0x20u);
      }

      free(v232);
    }

LABEL_495:
    if (v219)
    {
      free(v219);
    }

    v4 = v215;
    v25 = *(a1 + 48);
    if (!v25)
    {
      goto LABEL_498;
    }

    goto LABEL_24;
  }

  v24();
  v25 = *(a1 + 48);
  if (!v25)
  {
    goto LABEL_498;
  }

LABEL_24:
  v26 = *(v25 + 24);
  if (v26)
  {
    v27 = *(v26 + 48);
    if (v27)
    {
      v27(v25, a1);
      v28 = 0;
      if (!v4)
      {
        goto LABEL_178;
      }

LABEL_177:
      os_release(v4);
      goto LABEL_178;
    }
  }

LABEL_498:
  v315 = v4;
  __nwlog_obj();
  v316 = *(a1 + 48);
  v317 = "invalid";
  if (v316)
  {
    v318 = *(v316 + 16);
    if (v318)
    {
      v317 = v318;
    }
  }

  *buf = 136446466;
  *&buf[4] = "nw_http3_stream_send_fields";
  *&buf[12] = 2082;
  *&buf[14] = v317;
  v319 = _os_log_send_and_compose_impl();
  type[0] = 16;
  LOBYTE(v434) = 0;
  if (__nwlog_fault(v319, type, &v434))
  {
    if (type[0] == 17)
    {
      v320 = __nwlog_obj();
      v321 = type[0];
      if (!os_log_type_enabled(v320, type[0]))
      {
        goto LABEL_527;
      }

      v322 = *(a1 + 48);
      v323 = "invalid";
      if (v322)
      {
        v324 = *(v322 + 16);
        if (v324)
        {
          v323 = v324;
        }
      }

      *buf = 136446466;
      *&buf[4] = "nw_http3_stream_send_fields";
      *&buf[12] = 2082;
      *&buf[14] = v323;
      v325 = "%{public}s protocol %{public}s has invalid disconnected callback";
LABEL_526:
      _os_log_impl(&dword_181A37000, v320, v321, v325, buf, 0x16u);
      goto LABEL_527;
    }

    if (v434 != 1)
    {
      v320 = __nwlog_obj();
      v321 = type[0];
      if (!os_log_type_enabled(v320, type[0]))
      {
        goto LABEL_527;
      }

      v331 = *(a1 + 48);
      v332 = "invalid";
      if (v331)
      {
        v333 = *(v331 + 16);
        if (v333)
        {
          v332 = v333;
        }
      }

      *buf = 136446466;
      *&buf[4] = "nw_http3_stream_send_fields";
      *&buf[12] = 2082;
      *&buf[14] = v332;
      v325 = "%{public}s protocol %{public}s has invalid disconnected callback, backtrace limit exceeded";
      goto LABEL_526;
    }

    v326 = __nw_create_backtrace_string();
    v320 = __nwlog_obj();
    v321 = type[0];
    v327 = os_log_type_enabled(v320, type[0]);
    if (!v326)
    {
      if (!v327)
      {
        goto LABEL_527;
      }

      v334 = *(a1 + 48);
      v335 = "invalid";
      if (v334)
      {
        v336 = *(v334 + 16);
        if (v336)
        {
          v335 = v336;
        }
      }

      *buf = 136446466;
      *&buf[4] = "nw_http3_stream_send_fields";
      *&buf[12] = 2082;
      *&buf[14] = v335;
      v325 = "%{public}s protocol %{public}s has invalid disconnected callback, no backtrace";
      goto LABEL_526;
    }

    if (v327)
    {
      v328 = *(a1 + 48);
      v329 = "invalid";
      if (v328)
      {
        v330 = *(v328 + 16);
        if (v330)
        {
          v329 = v330;
        }
      }

      *buf = 136446722;
      *&buf[4] = "nw_http3_stream_send_fields";
      *&buf[12] = 2082;
      *&buf[14] = v329;
      *&buf[22] = 2082;
      v448 = v326;
      _os_log_impl(&dword_181A37000, v320, v321, "%{public}s protocol %{public}s has invalid disconnected callback, dumping backtrace:%{public}s", buf, 0x20u);
    }

    free(v326);
  }

LABEL_527:
  if (v319)
  {
    free(v319);
  }

  v28 = 0;
  v4 = v315;
  if (v315)
  {
    goto LABEL_177;
  }

LABEL_178:
  if (v28)
  {
    goto LABEL_179;
  }

  return 0;
}