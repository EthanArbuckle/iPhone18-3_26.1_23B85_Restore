uint64_t ___ZL34nw_resolver_insert_endpoint_lockedP22NWConcrete_nw_resolverPU25objcproto14OS_nw_endpoint8NSObjectU13block_pointerFbS3_S3_E_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v63 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ((*(*(a1 + 56) + 16))())
  {
    if (*(*(*(a1 + 64) + 8) + 24))
    {
      v5 = 1;
    }

    else
    {
      v5 = 0;
      *(*(*(a1 + 72) + 8) + 24) = 0;
    }

    goto LABEL_55;
  }

  if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = v6;
    v9 = v4;
    v10 = nw_endpoint_get_type(v8);
    v11 = nw_endpoint_get_type(v9);
    if (v10 == v11)
    {
      priority = nw_endpoint_get_priority(v8);
      v13 = nw_endpoint_get_priority(v9);
      if (nw_endpoint_get_type(*(v7 + 3)) == (nw_endpoint_type_url|nw_endpoint_type_address))
      {
        if (priority && v13 && v13 != priority)
        {

          if (v13 <= priority)
          {
            goto LABEL_52;
          }

LABEL_48:
          v34 = *(a1 + 48);
          if (v34)
          {
            v35 = *(a1 + 32);
            if (v35)
            {
              _nw_array_append(v34, v35);
            }
          }

          *(*(*(a1 + 64) + 8) + 24) = 1;
          goto LABEL_52;
        }
      }

      else if (v13 != priority)
      {
        if (priority)
        {

          if ((v13 - 1) < priority)
          {
            goto LABEL_52;
          }

          goto LABEL_48;
        }

        goto LABEL_38;
      }

      weight = nw_endpoint_get_weight(v8);
      v20 = nw_endpoint_get_weight(v9);
      if (weight)
      {
        v21 = v20;
        if (v20)
        {
          if (weight != v20)
          {

            if (weight >= v21)
            {
              goto LABEL_52;
            }

            goto LABEL_48;
          }
        }
      }

      if (v10 != nw_endpoint_type_address)
      {
        goto LABEL_38;
      }

      v15 = nw_endpoint_copy_interface(v8);
      v23 = nw_endpoint_copy_interface(v9);
      v24 = *(v7 + 29);
      if (v24)
      {
        index = _nw_interface_get_index(v24);
      }

      else
      {
        nw_parameters_get_required_interface_index(*(v7 + 2));
      }

      v28 = index;
      v29 = index;
      if (v15)
      {
        v29 = _nw_interface_get_index(v15);
      }

      if (v23)
      {
        v28 = _nw_interface_get_index(v23);
      }

      memset(buf, 0, sizeof(buf));
      *v61 = 0;
      v30 = nw_endpoint_fillout_v4v6_address(v8, buf);
      memset(v54, 0, sizeof(v54));
      v55 = 0;
      v31 = nw_endpoint_fillout_v4v6_address(v9, v54);
      if ((v30 & 1) == 0)
      {
        v38 = __nwlog_obj();
        *v56 = 136446210;
        v57 = "nw_resolver_endpoint_should_be_before";
        v39 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v52 = 0;
        if (!__nwlog_fault(v39, &type, &v52))
        {
          goto LABEL_89;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v40 = __nwlog_obj();
          v41 = type;
          if (os_log_type_enabled(v40, type))
          {
            *v56 = 136446210;
            v57 = "nw_resolver_endpoint_should_be_before";
            _os_log_impl(&dword_181A37000, v40, v41, "%{public}s called with null success_object", v56, 0xCu);
          }
        }

        else if (v52 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v40 = __nwlog_obj();
          v50 = type;
          v45 = os_log_type_enabled(v40, type);
          if (backtrace_string)
          {
            if (v45)
            {
              *v56 = 136446466;
              v57 = "nw_resolver_endpoint_should_be_before";
              v58 = 2082;
              v59 = backtrace_string;
              _os_log_impl(&dword_181A37000, v40, v50, "%{public}s called with null success_object, dumping backtrace:%{public}s", v56, 0x16u);
            }

            free(backtrace_string);
            if (!v39)
            {
              goto LABEL_91;
            }

            goto LABEL_90;
          }

          if (v45)
          {
            *v56 = 136446210;
            v57 = "nw_resolver_endpoint_should_be_before";
            _os_log_impl(&dword_181A37000, v40, v50, "%{public}s called with null success_object, no backtrace", v56, 0xCu);
          }
        }

        else
        {
          v40 = __nwlog_obj();
          v48 = type;
          if (os_log_type_enabled(v40, type))
          {
            *v56 = 136446210;
            v57 = "nw_resolver_endpoint_should_be_before";
            _os_log_impl(&dword_181A37000, v40, v48, "%{public}s called with null success_object, backtrace limit exceeded", v56, 0xCu);
          }
        }

        goto LABEL_88;
      }

      if (v31)
      {
        ignore_resolver_stats = nw_parameters_get_ignore_resolver_stats(*(v7 + 2));
        v33 = sa_dst_compare_internal(buf, v29, v54, v28, ignore_resolver_stats ^ 1u) < 1;

        if (!v33)
        {

          goto LABEL_48;
        }

        goto LABEL_38;
      }

      v42 = __nwlog_obj();
      *v56 = 136446210;
      v57 = "nw_resolver_endpoint_should_be_before";
      v39 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v52 = 0;
      if (__nwlog_fault(v39, &type, &v52))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v40 = __nwlog_obj();
          v43 = type;
          if (os_log_type_enabled(v40, type))
          {
            *v56 = 136446210;
            v57 = "nw_resolver_endpoint_should_be_before";
            _os_log_impl(&dword_181A37000, v40, v43, "%{public}s called with null success_compare", v56, 0xCu);
          }

LABEL_88:

          goto LABEL_89;
        }

        if (v52 != 1)
        {
          v40 = __nwlog_obj();
          v49 = type;
          if (os_log_type_enabled(v40, type))
          {
            *v56 = 136446210;
            v57 = "nw_resolver_endpoint_should_be_before";
            _os_log_impl(&dword_181A37000, v40, v49, "%{public}s called with null success_compare, backtrace limit exceeded", v56, 0xCu);
          }

          goto LABEL_88;
        }

        v46 = __nw_create_backtrace_string();
        v40 = __nwlog_obj();
        v51 = type;
        v47 = os_log_type_enabled(v40, type);
        if (!v46)
        {
          if (v47)
          {
            *v56 = 136446210;
            v57 = "nw_resolver_endpoint_should_be_before";
            _os_log_impl(&dword_181A37000, v40, v51, "%{public}s called with null success_compare, no backtrace", v56, 0xCu);
          }

          goto LABEL_88;
        }

        if (v47)
        {
          *v56 = 136446466;
          v57 = "nw_resolver_endpoint_should_be_before";
          v58 = 2082;
          v59 = v46;
          _os_log_impl(&dword_181A37000, v40, v51, "%{public}s called with null success_compare, dumping backtrace:%{public}s", v56, 0x16u);
        }

        free(v46);
      }

LABEL_89:
      if (!v39)
      {
LABEL_91:

        goto LABEL_37;
      }

LABEL_90:
      free(v39);
      goto LABEL_91;
    }

    if (v7)
    {
      if ((v7[370] & 0x20) != 0)
      {
LABEL_38:

        goto LABEL_52;
      }

      if (v7[280])
      {
        v14 = v11;
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v15 = gconnectionLogObj;
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_37;
        }

        *buf = 136446978;
        *&buf[4] = "nw_resolver_endpoint_should_be_before";
        *&buf[12] = 2082;
        *&buf[14] = v7 + 280;
        *&buf[22] = 1024;
        *v61 = v10;
        *&v61[4] = 1024;
        v62 = v14;
        v16 = "%{public}s [C%{public}s] Endpoint types do not match (%u != %u)";
        v17 = v15;
        v18 = 34;
        goto LABEL_36;
      }

      v26 = v11;
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v15 = gLogObj;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v27 = *(v7 + 91);
        *buf = 136446978;
        *&buf[4] = "nw_resolver_endpoint_should_be_before";
        *&buf[12] = 1024;
        *&buf[14] = v27;
        *&buf[18] = 1024;
        *&buf[20] = v10;
        *v61 = 1024;
        *&v61[2] = v26;
        v16 = "%{public}s [R%u] Endpoint types do not match (%u != %u)";
        v17 = v15;
        v18 = 30;
        goto LABEL_36;
      }
    }

    else
    {
      v22 = v11;
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v15 = gLogObj;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        *&buf[4] = "nw_resolver_endpoint_should_be_before";
        *&buf[12] = 1024;
        *&buf[14] = v10;
        *&buf[18] = 1024;
        *&buf[20] = v22;
        v16 = "%{public}s Endpoint types do not match (%u != %u)";
        v17 = v15;
        v18 = 24;
LABEL_36:
        _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_ERROR, v16, buf, v18);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

LABEL_52:
  v36 = *(a1 + 48);
  v5 = 1;
  if (v36 && v4)
  {
    _nw_array_append(v36, v4);
  }

LABEL_55:

  return v5;
}

uint64_t sa_dst_lookup(unsigned __int8 *a1, int a2, _OWORD *a3)
{
  v47 = *MEMORY[0x1E69E9840];
  pthread_once(&nw_settings_setup_atfork::pOnce, nw_settings_setup_atfork_inner);
  pthread_once(&cache_init, sa_dst_compare_init_once);
  os_unfair_lock_lock(&cache_lock);
  v6 = mach_absolute_time();
  v7 = cache;
  if (!cache)
  {
    goto LABEL_28;
  }

  v8 = 0;
  v9 = cache_timeout;
  v10 = &cache;
  do
  {
    while (v6 - *v7 >= v9)
    {
      *v10 = v7[1];
      free(v7);
      v9 = cache_timeout;
      v7 = *v10;
      if (!*v10)
      {
        goto LABEL_26;
      }
    }

    if (v8)
    {
      goto LABEL_6;
    }

    if (*(v7 + 22) == a2)
    {
      v11 = a1[1];
      if (v11 == *(v7 + 17))
      {
        if (v11 == 30)
        {
          v12 = *(a1 + 1) == v7[3] && *(a1 + 2) == v7[4];
          if (v12 && *(a1 + 6) == *(v7 + 10))
          {
LABEL_25:
            v16 = *(v7 + 2);
            *a3 = *(v7 + 1);
            a3[1] = v16;
            v17 = *(v7 + 3);
            v18 = *(v7 + 4);
            v19 = *(v7 + 6);
            a3[4] = *(v7 + 5);
            a3[5] = v19;
            a3[2] = v17;
            a3[3] = v18;
            v7 = *v10;
LABEL_6:
            v8 = 1;
            goto LABEL_23;
          }
        }

        else if (v11 == 2)
        {
          if (*(a1 + 1) == *(v7 + 5))
          {
            goto LABEL_25;
          }
        }

        else
        {
          v13 = *a1;
          if (v13 == *(v7 + 16))
          {
            v14 = v7;
            v15 = memcmp(a1, v7 + 2, v13);
            v7 = v14;
            if (!v15)
            {
              goto LABEL_25;
            }
          }
        }
      }
    }

    v8 = 0;
LABEL_23:
    v10 = v7 + 1;
    v7 = v7[1];
  }

  while (v7);
LABEL_26:
  if (v8)
  {
    v20 = 1;
    goto LABEL_51;
  }

LABEL_28:
  if (*a1 >= 0x1Du)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v21 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      v22 = *a1;
      *buf = 136446466;
      v42 = "sa_dst_cache_create";
      v43 = 1024;
      LODWORD(v44) = v22;
      _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_ERROR, "%{public}s (dst_sa->sa_len %u > sizeof(cache_entry->dce_entry.d_dst.addr))", buf, 0x12u);
    }

    goto LABEL_50;
  }

  v23 = malloc_type_calloc(1uLL, 0x70uLL, 0x10370617uLL);
  if (v23)
  {
    v24 = v23;
    memcpy(v23 + 16, a1, *a1);
    *(v24 + 88) = a2;
    sa_dst_fill_netsrc((v24 + 16));
    v25 = *(v24 + 32);
    *a3 = *(v24 + 16);
    a3[1] = v25;
    v26 = *(v24 + 48);
    v27 = *(v24 + 64);
    v28 = *(v24 + 96);
    a3[4] = *(v24 + 80);
    a3[5] = v28;
    a3[2] = v26;
    a3[3] = v27;
    v29 = mach_absolute_time();
    v30 = cache;
    *v24 = v29;
    *(v24 + 8) = v30;
    cache = v24;
    v20 = 2;
    goto LABEL_51;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  v42 = "sa_dst_cache_create";
  v43 = 2048;
  v44 = 1;
  v45 = 2048;
  v46 = 112;
  v31 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort(v31);
  if (result)
  {
    __break(1u);
  }

  else
  {
    free(v31);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446466;
    v42 = "sa_dst_cache_create";
    v43 = 2048;
    v44 = 112;
    v33 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v39 = 0;
    if (!__nwlog_fault(v33, &type, &v39))
    {
      goto LABEL_48;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v39 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v34 = gLogObj;
        v35 = type;
        v38 = os_log_type_enabled(gLogObj, type);
        if (backtrace_string)
        {
          if (v38)
          {
            *buf = 136446722;
            v42 = "sa_dst_cache_create";
            v43 = 2048;
            v44 = 112;
            v45 = 2082;
            v46 = backtrace_string;
            _os_log_impl(&dword_181A37000, v34, v35, "%{public}s malloc(%zu) failed, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(backtrace_string);
          goto LABEL_48;
        }

        if (!v38)
        {
          goto LABEL_48;
        }

        *buf = 136446466;
        v42 = "sa_dst_cache_create";
        v43 = 2048;
        v44 = 112;
        v36 = "%{public}s malloc(%zu) failed, no backtrace";
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v34 = gLogObj;
        v35 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_48;
        }

        *buf = 136446466;
        v42 = "sa_dst_cache_create";
        v43 = 2048;
        v44 = 112;
        v36 = "%{public}s malloc(%zu) failed, backtrace limit exceeded";
      }

LABEL_47:
      _os_log_impl(&dword_181A37000, v34, v35, v36, buf, 0x16u);
      goto LABEL_48;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v34 = gLogObj;
    v35 = type;
    if (os_log_type_enabled(gLogObj, type))
    {
      *buf = 136446466;
      v42 = "sa_dst_cache_create";
      v43 = 2048;
      v44 = 112;
      v36 = "%{public}s malloc(%zu) failed";
      goto LABEL_47;
    }

LABEL_48:
    if (v33)
    {
      free(v33);
    }

LABEL_50:
    v20 = 0;
LABEL_51:
    os_unfair_lock_unlock(&cache_lock);
    return v20;
  }

  return result;
}

BOOL ___ZL26nw_resolver_insert_addressP22NWConcrete_nw_resolverPU38objcproto27OS_dnssd_getaddrinfo_result8NSObjectPK8sockaddrttPU27objcproto16OS_dispatch_dataS1__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (nw_endpoint_address_endpoint_matches_address(v3, *(a1 + 32), 0, 1))
  {
    v4 = nw_endpoint_get_port(v3) == bswap32(*(*(a1 + 32) + 2)) >> 16;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t nw_endpoint_get_priority(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    priority = _nw_endpoint_get_priority(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_get_priority";
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
        v16 = "nw_endpoint_get_priority";
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
          v16 = "nw_endpoint_get_priority";
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
        v16 = "nw_endpoint_get_priority";
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
        v16 = "nw_endpoint_get_priority";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  priority = 0;
LABEL_3:

  return priority;
}

uint64_t sub_181B7A95C(void *a1)
{
  v2 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC7Network8Endpoint_type;
  v6 = a1;
  swift_beginAccess();
  sub_181A546E0(a1 + v5, v4, type metadata accessor for Endpoint.EndpointType);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    v11 = *(v4 + 17);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_181A5513C(v4, type metadata accessor for Endpoint.EndpointType);
    return 0;
  }

  else
  {
    v8 = *(v4 + 2);
    v9 = *(v4 + 3);
    v10 = *(v4 + 4);
    v11 = *(v4 + 22);
    v12 = v4[42];
    v13 = *(v4 + 20);

    sub_181AD1DE4(v8, v9, v10, v13, v12);
  }

  return v11;
}

uint64_t sub_181B7AAF0(void *a1)
{
  v2 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC7Network8Endpoint_type;
  v6 = a1;
  swift_beginAccess();
  sub_181A546E0(a1 + v5, v4, type metadata accessor for Endpoint.EndpointType);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    v11 = *(v4 + 18);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_181A5513C(v4, type metadata accessor for Endpoint.EndpointType);
    return 0;
  }

  else
  {
    v8 = *(v4 + 2);
    v9 = *(v4 + 3);
    v10 = *(v4 + 4);
    v11 = *(v4 + 23);
    v12 = v4[42];
    v13 = *(v4 + 20);

    sub_181AD1DE4(v8, v9, v10, v13, v12);
  }

  return v11;
}

uint64_t nw_endpoint_get_weight(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    weight = _nw_endpoint_get_weight(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_get_weight";
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
        v16 = "nw_endpoint_get_weight";
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
          v16 = "nw_endpoint_get_weight";
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
        v16 = "nw_endpoint_get_weight";
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
        v16 = "nw_endpoint_get_weight";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  weight = 0;
LABEL_3:

  return weight;
}

void nw_parameters_get_required_interface_index(char *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    _nw_parameters_get_required_interface_index(a1);
    return;
  }

  v1 = __nwlog_obj();
  *buf = 136446210;
  v11 = "nw_parameters_get_required_interface_index";
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
        v11 = "nw_parameters_get_required_interface_index";
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
            v11 = "nw_parameters_get_required_interface_index";
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
        v11 = "nw_parameters_get_required_interface_index";
        v5 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v3 = __nwlog_obj();
      v4 = type;
      if (os_log_type_enabled(v3, type))
      {
        *buf = 136446210;
        v11 = "nw_parameters_get_required_interface_index";
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

uint64_t nw_parameters_get_ignore_resolver_stats(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_ignore_resolver_stats(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_ignore_resolver_stats";
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
        v12 = "nw_parameters_get_ignore_resolver_stats";
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
            v12 = "nw_parameters_get_ignore_resolver_stats";
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
        v12 = "nw_parameters_get_ignore_resolver_stats";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_ignore_resolver_stats";
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

void sa_dst_fill_netsrc(unsigned __int8 *a1)
{
  v37 = *MEMORY[0x1E69E9840];
  control_socket = sa_dst_fill_netsrc(Destination *)::netsrc_sockfd;
  if (sa_dst_fill_netsrc(Destination *)::netsrc_sockfd < 0)
  {
    control_socket = nw_create_control_socket("com.apple.netsrc");
    sa_dst_fill_netsrc(Destination *)::netsrc_sockfd = control_socket;
    if (control_socket < 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446210;
      *&buf[4] = "sa_dst_fill_netsrc";
      v13 = _os_log_send_and_compose_impl();
      type[0] = OS_LOG_TYPE_ERROR;
      v33[0] = 0;
      if (!__nwlog_fault(v13, type, v33))
      {
        goto LABEL_40;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v14 = gLogObj;
        v15 = type[0];
        if (!os_log_type_enabled(gLogObj, type[0]))
        {
          goto LABEL_40;
        }

        *buf = 136446210;
        *&buf[4] = "sa_dst_fill_netsrc";
        v16 = "%{public}s nw_create_control_socket failed";
      }

      else
      {
        if (v33[0] == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v21 = gLogObj;
          v22 = type[0];
          v23 = os_log_type_enabled(gLogObj, type[0]);
          if (backtrace_string)
          {
            if (v23)
            {
              *buf = 136446466;
              *&buf[4] = "sa_dst_fill_netsrc";
              *&buf[12] = 2082;
              *&buf[14] = backtrace_string;
              _os_log_impl(&dword_181A37000, v21, v22, "%{public}s nw_create_control_socket failed, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(backtrace_string);
            goto LABEL_40;
          }

          if (!v23)
          {
LABEL_40:
            if (v13)
            {
              free(v13);
            }

            return;
          }

          *buf = 136446210;
          *&buf[4] = "sa_dst_fill_netsrc";
          v16 = "%{public}s nw_create_control_socket failed, no backtrace";
          v25 = v21;
          v26 = v22;
LABEL_39:
          _os_log_impl(&dword_181A37000, v25, v26, v16, buf, 0xCu);
          goto LABEL_40;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v14 = gLogObj;
        v15 = type[0];
        if (!os_log_type_enabled(gLogObj, type[0]))
        {
          goto LABEL_40;
        }

        *buf = 136446210;
        *&buf[4] = "sa_dst_fill_netsrc";
        v16 = "%{public}s nw_create_control_socket failed, backtrace limit exceeded";
      }

      v25 = v14;
      v26 = v15;
      goto LABEL_39;
    }
  }

  memset(v29, 0, sizeof(v29));
  v30 = 0;
  if (sa_dst_fill_netsrc(Destination *)::version)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  v4 = *(a1 + 18);
  *type = v3;
  v28 = v4;
  v5 = *a1;
  if (v5 >= 0x1D)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446210;
      *&buf[4] = "sa_dst_fill_netsrc";
      _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEBUG, "%{public}s sockaddr is too big", buf, 0xCu);
    }

    return;
  }

  memcpy(v29, a1, v5);
  if (send(control_socket, type, 0x24uLL, 0) == 36)
  {
    if (sa_dst_fill_netsrc(Destination *)::version == 1)
    {
      memset(buf, 0, 40);
      if (recv(sa_dst_fill_netsrc(Destination *)::netsrc_sockfd, buf, 0x28uLL, 0) == 40)
      {
        *(a1 + 8) = *&buf[34];
        if (buf[0] <= 0x1CuLL)
        {
          memcpy(a1 + 36, buf, buf[0]);
        }

        v7 = *&buf[30];
        *(a1 + 16) = *&buf[28];
        *(a1 + 17) = v7;
        return;
      }

      v24 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
      {
        return;
      }

      goto LABEL_34;
    }

    v32 = 0;
    memset(buf, 0, sizeof(buf));
    if (recv(sa_dst_fill_netsrc(Destination *)::netsrc_sockfd, buf, 0x38uLL, 0) == 56)
    {
      v17 = *&buf[44];
      *(a1 + 8) = v32;
      *(a1 + 36) = *buf;
      *(a1 + 3) = *&buf[12];
      *(a1 + 19) = WORD2(v32);
      v19 = *&buf[36];
      v18 = buf[40];
      *(a1 + 16) = *&buf[40];
      *(a1 + 17) = v17;
      *(a1 + 10) = *&buf[28];
      *(a1 + 22) = v19;
      a1[92] = a1[92] & 0xF8 | (v18 >> 5);
      return;
    }

    v24 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
    {
LABEL_34:
      *v33 = 136446466;
      v34 = "sa_dst_fill_netsrc";
      v35 = 1024;
      v36 = v24;
      v11 = "%{public}s recv failed %{darwin.errno}d";
      v12 = v33;
      goto LABEL_35;
    }
  }

  else
  {
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v9 = **(StatusReg + 8);
    if (v9 == 22 && (sa_dst_fill_netsrc(Destination *)::version & 1) == 0)
    {
      sa_dst_fill_netsrc(Destination *)::version = 1;
      sa_dst_fill_netsrc(a1);
      v9 = **(StatusReg + 8);
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      *&buf[4] = "sa_dst_fill_netsrc";
      *&buf[12] = 1024;
      *&buf[14] = v9;
      v11 = "%{public}s send failed %{darwin.errno}d";
      v12 = buf;
LABEL_35:
      _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_DEBUG, v11, v12, 0x12u);
    }
  }
}

uint64_t rfc6724_scope_sa(const sockaddr *a1)
{
  sa_family = a1->sa_family;
  if (sa_family == 2)
  {
    v7 = bswap32(*&a1->sa_data[2]);
    v6 = HIWORD(v7) == 43518 || HIBYTE(v7) == 127;
    v5 = 14;
    goto LABEL_13;
  }

  if (sa_family != 30)
  {
    return 0;
  }

  v2 = a1->sa_data[6];
  if (v2 == 255)
  {
    v9 = (a1->sa_data[7] & 0xF) - 1;
    if (v9 >= 5)
    {
      return 14;
    }

    else
    {
      return dword_182BD3394[v9];
    }
  }

  else
  {
    if (v2 == 254)
    {
      v3 = a1->sa_data[7];
      v4 = v3 & 0xC0;
      if (v3 <= 0xBF)
      {
        v5 = 14;
      }

      else
      {
        v5 = 5;
      }

      v6 = v4 == 128;
LABEL_13:
      if (v6)
      {
        return 2;
      }

      else
      {
        return v5;
      }
    }

    v10 = *&a1->sa_data[6];
    v12 = *&a1->sa_data[13];
    result = 14;
    if (!(v10 | v12))
    {
      if (a1[1].sa_data[5] == 1)
      {
        return 2;
      }

      else
      {
        return 14;
      }
    }
  }

  return result;
}

uint64_t sub_181B7BBD4(uint64_t (*a1)(void))
{
  result = *(v1 + *(type metadata accessor for NWPath(0) + 52));
  if (result)
  {
    return a1();
  }

  return result;
}

void NWPathMonitor.currentPath.getter(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839EC8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + 16);
  v7 = *(*v6 + *MEMORY[0x1E69E6B68] + 16);
  v8 = (*(*v6 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v6 + v8));
  sub_181AB5D28(v6 + v7, v5, &qword_1EA839EC8);
  v9 = type metadata accessor for NWPath(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v5, 1, v9) == 1)
  {
    sub_181B7BDC0(0, a1);
    if (v10(v5, 1, v9) != 1)
    {
      sub_181F49A88(v5, &qword_1EA839EC8);
    }
  }

  else
  {
    sub_181AA38E8(v5, a1, type metadata accessor for NWPath);
  }

  os_unfair_lock_unlock((v6 + v8));
}

uint64_t sub_181B7BDC0@<X0>(NSObject *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839360);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v36 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v35 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v35 - v10;
  v12 = type metadata accessor for NWPath(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x1E69E7CC0];
  v46 = MEMORY[0x1E69E7CC0];
  v15 = type metadata accessor for NWEndpoint();
  v16 = *(*(v15 - 8) + 56);
  v16(v11, 1, 1, v15);
  v16(v8, 1, 1, v15);
  v37 = v11;
  v38 = a2;
  if (!a1)
  {
    v20 = v12;
    v21 = 0;
    v22 = 0;
    *v14 = 1;
    *(v14 + 4) = 0;
LABEL_17:
    v34 = v45;
    *(v14 + 1) = v46;
    *(v14 + 3) = v34;
    *&v14[v20[13]] = a1;
    sub_181B7D08C(v37, &v14[v20[11]], &qword_1EA839360);
    sub_181B7D08C(v8, &v14[v20[12]], &qword_1EA839360);

    sub_181AA38E8(v14, v38, type metadata accessor for NWPath);
    sub_181A554F4(v21);
    return sub_181A554F4(v22);
  }

  v17 = swift_unknownObjectRetain();
  status = nw_path_get_status(v17);
  if (status == nw_path_status_satisfied)
  {
    *v14 = 0;
  }

  else
  {
    if (status == nw_path_status_satisfiable)
    {
      v19 = 2;
    }

    else
    {
      v19 = 1;
    }

    *v14 = v19;
  }

  v14[16] = nw_path_is_expensive(a1);
  v14[19] = nw_path_has_dns(a1);
  v14[17] = nw_path_has_ipv4(a1);
  v14[18] = nw_path_has_ipv6(a1);
  v23 = swift_allocObject();
  *(v23 + 16) = &v46;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_181B80034;
  *(v24 + 24) = v23;
  v35[2] = v23;
  v43 = sub_181B80068;
  v44 = v24;
  aBlock = MEMORY[0x1E69E9820];
  v40 = 1107296256;
  v41 = sub_181B7FFE4;
  v42 = &block_descriptor_139;
  v25 = _Block_copy(&aBlock);

  nw_path_enumerate_interfaces(a1, v25);
  _Block_release(v25);
  LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

  if (v23)
  {
    __break(1u);
  }

  else
  {
    v27 = swift_allocObject();
    *(v27 + 16) = &v45;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_181B80990;
    *(v28 + 24) = v27;
    v43 = sub_181B80068;
    v44 = v28;
    aBlock = MEMORY[0x1E69E9820];
    v40 = 1107296256;
    v41 = sub_181B7FFE4;
    v42 = &block_descriptor_148;
    v29 = _Block_copy(&aBlock);

    nw_path_enumerate_gateways(a1, v29);
    _Block_release(v29);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      v35[1] = v27;
      v20 = v12;
      v31 = nw_path_copy_effective_local_endpoint(a1);
      v32 = v36;
      if (v31)
      {
        sub_181B80998(v31, v36);
        sub_181F49A88(v11, &qword_1EA839360);
        sub_181B7D08C(v32, v11, &qword_1EA839360);
      }

      if (nw_path_copy_effective_remote_endpoint(a1))
      {
        v33 = swift_unknownObjectRetain();
        sub_181B80998(v33, v32);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        sub_181F49A88(v8, &qword_1EA839360);
        sub_181B7D08C(v32, v8, &qword_1EA839360);
      }

      else
      {
        swift_unknownObjectRelease();
      }

      v22 = sub_181B80990;
      v21 = sub_181B80034;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

char *sub_181B7C3B0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838928);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_181B7C4BC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_181B7C698(uint64_t a1, uint64_t a2)
{
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839F78);
  v69 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v70 = &v59 - v4;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839610);
  v67 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v75 = &v59 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839F60);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v66 = &v59 - v10;
  v11 = sub_182AD27A8();
  v74 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v65 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_182AD27C8();
  v64 = *(v68 - 1);
  MEMORY[0x1EEE9AC00](v68);
  v63 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for NWPath(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v72 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_181F49A88(a1, &qword_1EA839EC8);
  v73 = a2;
  sub_181B811E4(a2, a1, type metadata accessor for NWPath);
  (*(v15 + 56))(a1, 0, 1, v14);
  locked = type metadata accessor for NWPathMonitor.LockedState(0);
  v18 = locked;
  v19 = (a1 + *(locked + 20));
  v20 = *v19;
  if (*v19)
  {
    v21 = *(a1 + *(locked + 28));
    if (v21)
    {
      v22 = v19[1];
      v62 = v11;
      v23 = v72;
      sub_181B811E4(v73, v72, type metadata accessor for NWPath);
      v24 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v25 = swift_allocObject();
      *(v25 + 16) = v20;
      *(v25 + 24) = v22;
      sub_181AA38E8(v23, v25 + v24, type metadata accessor for NWPath);
      aBlock[4] = sub_181B815C0;
      aBlock[5] = v25;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_181B7D048;
      aBlock[3] = &block_descriptor_127;
      v60 = _Block_copy(aBlock);
      v61 = v22;
      sub_181AA39C0(v20);
      sub_181AA39C0(v20);
      v59 = v21;
      v26 = v63;
      sub_182AD27B8();
      aBlock[8] = MEMORY[0x1E69E7CC0];
      sub_181B7CF9C(&qword_1ED40F4B0, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839F50);
      sub_181B7CFE4();
      v27 = v65;
      v28 = v62;
      sub_182AD3AC8();
      v29 = v60;
      v30 = v59;
      MEMORY[0x1865DA490](0, v26, v27, v60);
      _Block_release(v29);

      sub_181A554F4(v20);
      (*(v74 + 8))(v27, v28);
      (*(v64 + 1))(v26, v68);
    }
  }

  v31 = *(a1 + *(v18 + 32));
  v32 = *(v31 + 8);
  v62 = (v31 + 64);
  v33 = 1 << v31[32];
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & v32;
  v36 = (v33 + 63) >> 6;
  v63 = (v67 + 16);
  v74 = v67 + 32;
  v68 = (v67 + 8);
  ++v69;
  v65 = v31;

  v38 = 0;
  v64 = v8;
  v39 = v66;
  if (v35)
  {
    while (1)
    {
      v40 = v38;
LABEL_15:
      v43 = __clz(__rbit64(v35));
      v35 &= v35 - 1;
      v44 = v43 | (v40 << 6);
      v45 = *(*(v65 + 6) + 8 * v44);
      v46 = v67;
      v48 = v75;
      v47 = v76;
      (*(v67 + 16))(v75, *(v65 + 7) + *(v67 + 72) * v44, v76);
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839F68);
      v50 = *(v49 + 48);
      v51 = v64;
      *v64 = v45;
      v52 = *(v46 + 32);
      v8 = v51;
      v52(&v51[v50], v48, v47);
      (*(*(v49 - 8) + 56))(v8, 0, 1, v49);
      v42 = v40;
      v39 = v66;
LABEL_16:
      sub_181B7D08C(v8, v39, &qword_1EA839F60);
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839F68);
      if ((*(*(v53 - 8) + 48))(v39, 1, v53) == 1)
      {
      }

      v54 = *(v53 + 48);
      v55 = v75;
      v56 = v76;
      (*v74)(v75, v39 + v54, v76);
      sub_181B811E4(v73, v72, type metadata accessor for NWPath);
      v57 = v70;
      sub_182AD3588();
      (*v69)(v57, v71);
      result = (*v68)(v55, v56);
      v38 = v42;
      if (!v35)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    if (v36 <= v38 + 1)
    {
      v41 = v38 + 1;
    }

    else
    {
      v41 = v36;
    }

    v42 = v41 - 1;
    while (1)
    {
      v40 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      if (v40 >= v36)
      {
        v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839F68);
        (*(*(v58 - 8) + 56))(v8, 1, 1, v58);
        v35 = 0;
        goto LABEL_16;
      }

      v35 = *(v62 + 8 * v40);
      ++v38;
      if (v35)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_181B7CF9C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_181B7CFE4()
{
  result = qword_1ED40F4A0;
  if (!qword_1ED40F4A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839F50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED40F4A0);
  }

  return result;
}

uint64_t sub_181B7D048(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_181B7D08C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void nw_connection_add_client_event_internal(void *a1, int a2, void *a3, void *a4)
{
  v44 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    v10 = mach_continuous_time();
    if (v10 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10;
    }

    v12 = nw_delta_nanos(*(v7 + 9), v11);
    if (v12 > 0xF423FFFFFFFFFLL)
    {
      v13 = -1;
    }

    else
    {
      v13 = v12 / 0xF4240;
    }

    if (nw_parameters_get_logging_disabled(*(v7 + 2)))
    {
      goto LABEL_28;
    }

    if ((a2 & 0xFFFFFFFE) == 4)
    {
      if (!v9 || !nw_activity_should_log(v9))
      {
        goto LABEL_28;
      }

      if (__nwlog_activity_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_activity_log::onceToken, &__block_literal_global_16_47419);
      }

      v14 = gactivityLogObj;
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
LABEL_27:

LABEL_28:
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = ___ZL39nw_connection_add_client_event_internalP24NWConcrete_nw_connection26nw_endpoint_client_event_tPU24objcproto13OS_xpc_object8NSObjectPU25objcproto14OS_nw_activityS2__block_invoke;
        v30[3] = &unk_1E6A3BB00;
        v34 = v11;
        v35 = a2;
        v31 = v7;
        v32 = v8;
        v33 = v9;
        nw_connection_async_if_needed(v31, v30);

        goto LABEL_29;
      }

      if ((a2 - 1) > 4u)
      {
        v15 = "unknown";
      }

      else
      {
        v15 = off_1E6A317F8[(a2 - 1)];
      }

      v21 = *(v7 + 112);
      *buf = 67110146;
      *v39 = v21;
      *&v39[4] = 2082;
      *&v39[6] = v15;
      *&v39[14] = 1024;
      *&v39[16] = v13 / 0x3E8;
      v40 = 1024;
      v41 = v13 % 0x3E8;
      v42 = 2114;
      v43 = v9;
      v18 = "[C%u] event: client:%{public}s @%u.%03us, activity %{public}@";
      v19 = v14;
      v20 = 40;
    }

    else
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v14 = gconnectionLogObj;
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      if ((a2 - 1) > 4u)
      {
        v16 = "unknown";
      }

      else
      {
        v16 = off_1E6A317F8[(a2 - 1)];
      }

      v17 = *(v7 + 112);
      *buf = 67109890;
      *v39 = v17;
      *&v39[4] = 2082;
      *&v39[6] = v16;
      *&v39[14] = 1024;
      *&v39[16] = v13 / 0x3E8;
      v40 = 1024;
      v41 = v13 % 0x3E8;
      v18 = "[C%u] event: client:%{public}s @%u.%03us";
      v19 = v14;
      v20 = 30;
    }

    _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_DEFAULT, v18, buf, v20);
    goto LABEL_27;
  }

  v22 = __nwlog_obj();
  *buf = 136446210;
  *v39 = "nw_connection_add_client_event_internal";
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
        *buf = 136446210;
        *v39 = "nw_connection_add_client_event_internal";
        _os_log_impl(&dword_181A37000, v24, v25, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (v36 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v24 = __nwlog_obj();
      v27 = type;
      v28 = os_log_type_enabled(v24, type);
      if (backtrace_string)
      {
        if (v28)
        {
          *buf = 136446466;
          *v39 = "nw_connection_add_client_event_internal";
          *&v39[8] = 2082;
          *&v39[10] = backtrace_string;
          _os_log_impl(&dword_181A37000, v24, v27, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_46;
      }

      if (v28)
      {
        *buf = 136446210;
        *v39 = "nw_connection_add_client_event_internal";
        _os_log_impl(&dword_181A37000, v24, v27, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v24 = __nwlog_obj();
      v29 = type;
      if (os_log_type_enabled(v24, type))
      {
        *buf = 136446210;
        *v39 = "nw_connection_add_client_event_internal";
        _os_log_impl(&dword_181A37000, v24, v29, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_46:
  if (v23)
  {
    free(v23);
  }

LABEL_29:
}

void ___ZL39nw_connection_add_client_event_internalP24NWConcrete_nw_connection26nw_endpoint_client_event_tPU24objcproto13OS_xpc_object8NSObjectPU25objcproto14OS_nw_activityS2__block_invoke(uint64_t a1)
{
  v71 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  LOWORD(v4) = -1;
  if (v3 <= 3)
  {
    switch(v3)
    {
      case 1:
        v14 = *(a1 + 32);
        v15 = *(v14 + 96);
        if (v15)
        {
          ++*(v15 + 184);
          v14 = *(a1 + 32);
        }

        nw_endpoint_handler_report_connection_idle(*(v14 + 144), 0);
        break;
      case 2:
        v16 = *(*(a1 + 32) + 96);
        if (v16)
        {
          ++*(v16 + 188);
          v17 = *(a1 + 40);
          if (v17)
          {
            if (object_getClass(v17) == MEMORY[0x1E69E9F18])
            {
              *(*(*(a1 + 32) + 96) + 192) = xpc_uint64_get_value(*(a1 + 40));
            }
          }
        }

        nw_connection_report_symptom_on_nw_queue(*(a1 + 32), 421890, 0, 0);
        nw_endpoint_handler_report_data_stall(*(*(a1 + 32) + 144));
        break;
      case 3:
        nw_endpoint_handler_report_connection_idle(*(*(a1 + 32) + 144), 1);
        break;
    }

    goto LABEL_98;
  }

  if ((v3 - 4) >= 2)
  {
    goto LABEL_98;
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = v5;
    if (v6)
    {
      nw_context_assert_queue(*(v6 + 3));
      v8 = *(v6 + 49);
      if (!v8)
      {
        v9 = _nw_array_create();
        v10 = *(v6 + 49);
        *(v6 + 49) = v9;

        v8 = *(v6 + 49);
      }

      *v69 = 0;
      *&v69[8] = v69;
      *&v69[16] = 0x2020000000;
      v70 = -1;
      *aBlock = MEMORY[0x1E69E9820];
      *&aBlock[8] = 3221225472;
      *&aBlock[16] = ___ZL38nw_connection_add_activity_on_nw_queueP24NWConcrete_nw_connectionPU25objcproto14OS_nw_activity8NSObjectb_block_invoke;
      v66 = &unk_1E6A3BB28;
      v11 = v7;
      v67 = v11;
      v68 = v69;
      if (v8)
      {
        _nw_array_apply(v8, aBlock);
        v12 = *(*&v69[8] + 24);
        if (v3 == 4 || v12 != 0xFFFF)
        {
          if (v12 != 0xFFFF)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v13 = gLogObj;
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446466;
              v62 = "nw_connection_add_activity_on_nw_queue";
              v63 = 2114;
              v64 = v11;
              _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_DEBUG, "%{public}s Activity %{public}@ is already present, not adding to connection array", buf, 0x16u);
            }

            v4 = *(*&v69[8] + 24);
            goto LABEL_42;
          }

LABEL_27:
          v18 = v11;
          v19 = (v18[17] & 1) == 0;

          if (!v19)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v20 = gLogObj;
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446466;
              v62 = "nw_connection_add_activity_on_nw_queue";
              v63 = 2114;
              v64 = v18;
              _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_DEBUG, "%{public}s Activity %{public}@ selected, connection will report activity metrics", buf, 0x16u);
            }

            *(v6 + 108) |= 0x20u;
          }

          v21 = *(v6 + 49);
          if (v21)
          {
            count = _nw_array_get_count(v21);
            if (count <= 0xFFFE)
            {
              v4 = count;
              if (*(v6 + 49))
              {
                _nw_array_append(*(v6 + 49), v18);
              }
            }

            else
            {
              v4 = 0xFFFF;
            }
          }

          else
          {
            v4 = 0;
          }

LABEL_42:

          _Block_object_dispose(v69, 8);
          if (v4 == 0xFFFF)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v27 = gLogObj;
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              v28 = *(a1 + 48);
              *aBlock = 136446466;
              *&aBlock[4] = "nw_connection_add_client_event_internal_block_invoke";
              *&aBlock[12] = 2114;
              *&aBlock[14] = v28;
              _os_log_impl(&dword_181A37000, v27, OS_LOG_TYPE_ERROR, "%{public}s Cannot add activity %{public}@, nw_connection_add_activity_on_nw_queue failed", aBlock, 0x16u);
            }

            return;
          }

LABEL_98:
          v51 = *(a1 + 32);
          v52[0] = MEMORY[0x1E69E9820];
          v52[1] = 3221225472;
          v52[2] = ___ZL39nw_connection_add_client_event_internalP24NWConcrete_nw_connection26nw_endpoint_client_event_tPU24objcproto13OS_xpc_object8NSObjectPU25objcproto14OS_nw_activityS2__block_invoke_164;
          v52[3] = &unk_1E6A3BAD8;
          v53 = v51;
          v54 = v2;
          v55 = 6;
          v56 = v3;
          v57 = v4;
          v58 = 0;
          os_unfair_lock_lock(v51 + 34);
          ___ZL39nw_connection_add_client_event_internalP24NWConcrete_nw_connection26nw_endpoint_client_event_tPU24objcproto13OS_xpc_object8NSObjectPU25objcproto14OS_nw_activityS2__block_invoke_164(v52);
          os_unfair_lock_unlock(v51 + 34);

          return;
        }
      }

      else if (v3 == 4)
      {
        goto LABEL_27;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v23 = gLogObj;
      *buf = 136446210;
      v62 = "nw_connection_add_activity_on_nw_queue";
      v24 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v59 = 0;
      if (__nwlog_fault(v24, &type, &v59))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v25 = gLogObj;
          v26 = type;
          if (os_log_type_enabled(v25, type))
          {
            *buf = 136446210;
            v62 = "nw_connection_add_activity_on_nw_queue";
            _os_log_impl(&dword_181A37000, v25, v26, "%{public}s BUG IN CLIENT OF LIBNETWORK: Cannot end an activity that was not started", buf, 0xCu);
          }
        }

        else if (v59 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          if (backtrace_string)
          {
            v30 = backtrace_string;
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v31 = gLogObj;
            v32 = type;
            if (os_log_type_enabled(v31, type))
            {
              *buf = 136446466;
              v62 = "nw_connection_add_activity_on_nw_queue";
              v63 = 2082;
              v64 = v30;
              _os_log_impl(&dword_181A37000, v31, v32, "%{public}s BUG IN CLIENT OF LIBNETWORK: Cannot end an activity that was not started, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v30);
            if (!v24)
            {
              goto LABEL_41;
            }

            goto LABEL_40;
          }

          v25 = __nwlog_obj();
          v34 = type;
          if (os_log_type_enabled(v25, type))
          {
            *buf = 136446210;
            v62 = "nw_connection_add_activity_on_nw_queue";
            _os_log_impl(&dword_181A37000, v25, v34, "%{public}s BUG IN CLIENT OF LIBNETWORK: Cannot end an activity that was not started, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v25 = gLogObj;
          v33 = type;
          if (os_log_type_enabled(v25, type))
          {
            *buf = 136446210;
            v62 = "nw_connection_add_activity_on_nw_queue";
            _os_log_impl(&dword_181A37000, v25, v33, "%{public}s BUG IN CLIENT OF LIBNETWORK: Cannot end an activity that was not started, backtrace limit exceeded", buf, 0xCu);
          }
        }
      }

      if (!v24)
      {
LABEL_41:
        v4 = 255;
        goto LABEL_42;
      }

LABEL_40:
      free(v24);
      goto LABEL_41;
    }

    v39 = __nwlog_obj();
    *v69 = 136446210;
    *&v69[4] = "nw_connection_add_activity_on_nw_queue";
    v40 = _os_log_send_and_compose_impl();

    buf[0] = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v40, buf, &type))
    {
      if (buf[0] == 17)
      {
        v41 = __nwlog_obj();
        v42 = buf[0];
        if (os_log_type_enabled(v41, buf[0]))
        {
          *v69 = 136446210;
          *&v69[4] = "nw_connection_add_activity_on_nw_queue";
          _os_log_impl(&dword_181A37000, v41, v42, "%{public}s called with null connection", v69, 0xCu);
        }
      }

      else if (type == OS_LOG_TYPE_INFO)
      {
        v46 = __nw_create_backtrace_string();
        v41 = __nwlog_obj();
        v47 = buf[0];
        v48 = os_log_type_enabled(v41, buf[0]);
        if (v46)
        {
          if (v48)
          {
            *v69 = 136446466;
            *&v69[4] = "nw_connection_add_activity_on_nw_queue";
            *&v69[12] = 2082;
            *&v69[14] = v46;
            _os_log_impl(&dword_181A37000, v41, v47, "%{public}s called with null connection, dumping backtrace:%{public}s", v69, 0x16u);
          }

          free(v46);
          goto LABEL_95;
        }

        if (v48)
        {
          *v69 = 136446210;
          *&v69[4] = "nw_connection_add_activity_on_nw_queue";
          _os_log_impl(&dword_181A37000, v41, v47, "%{public}s called with null connection, no backtrace", v69, 0xCu);
        }
      }

      else
      {
        v41 = __nwlog_obj();
        v50 = buf[0];
        if (os_log_type_enabled(v41, buf[0]))
        {
          *v69 = 136446210;
          *&v69[4] = "nw_connection_add_activity_on_nw_queue";
          _os_log_impl(&dword_181A37000, v41, v50, "%{public}s called with null connection, backtrace limit exceeded", v69, 0xCu);
        }
      }
    }

LABEL_95:
    if (v40)
    {
      free(v40);
    }

    LOWORD(v4) = 255;
    goto LABEL_98;
  }

  v35 = __nwlog_obj();
  *aBlock = 136446210;
  *&aBlock[4] = "nw_connection_add_client_event_internal_block_invoke";
  v36 = _os_log_send_and_compose_impl();

  v69[0] = 16;
  buf[0] = 0;
  if (__nwlog_fault(v36, v69, buf))
  {
    if (v69[0] == 17)
    {
      v37 = __nwlog_obj();
      v38 = v69[0];
      if (os_log_type_enabled(v37, v69[0]))
      {
        *aBlock = 136446210;
        *&aBlock[4] = "nw_connection_add_client_event_internal_block_invoke";
        _os_log_impl(&dword_181A37000, v37, v38, "%{public}s called with null activity", aBlock, 0xCu);
      }
    }

    else if (buf[0] == 1)
    {
      v43 = __nw_create_backtrace_string();
      v37 = __nwlog_obj();
      v44 = v69[0];
      v45 = os_log_type_enabled(v37, v69[0]);
      if (v43)
      {
        if (v45)
        {
          *aBlock = 136446466;
          *&aBlock[4] = "nw_connection_add_client_event_internal_block_invoke";
          *&aBlock[12] = 2082;
          *&aBlock[14] = v43;
          _os_log_impl(&dword_181A37000, v37, v44, "%{public}s called with null activity, dumping backtrace:%{public}s", aBlock, 0x16u);
        }

        free(v43);
        goto LABEL_90;
      }

      if (v45)
      {
        *aBlock = 136446210;
        *&aBlock[4] = "nw_connection_add_client_event_internal_block_invoke";
        _os_log_impl(&dword_181A37000, v37, v44, "%{public}s called with null activity, no backtrace", aBlock, 0xCu);
      }
    }

    else
    {
      v37 = __nwlog_obj();
      v49 = v69[0];
      if (os_log_type_enabled(v37, v69[0]))
      {
        *aBlock = 136446210;
        *&aBlock[4] = "nw_connection_add_client_event_internal_block_invoke";
        _os_log_impl(&dword_181A37000, v37, v49, "%{public}s called with null activity, backtrace limit exceeded", aBlock, 0xCu);
      }
    }
  }

LABEL_90:
  if (v36)
  {
    free(v36);
  }
}

void sub_181B7E2B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29)
{
  _Block_object_dispose((v31 - 144), 8);

  _Unwind_Resume(a1);
}

nw_endpoint_t nw_path_copy_effective_remote_endpoint(nw_path_t path)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = path;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_path_copy_effective_remote_endpoint(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_copy_effective_remote_endpoint";
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
        v16 = "nw_path_copy_effective_remote_endpoint";
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
          v16 = "nw_path_copy_effective_remote_endpoint";
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
        v16 = "nw_path_copy_effective_remote_endpoint";
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
        v16 = "nw_path_copy_effective_remote_endpoint";
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

void nw_queue_cancel_source(uint64_t a1, uint64_t a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = *a1;
    if (v3)
    {
      dispatch_set_context(v3, 0);
      v4 = *a1;

      dispatch_source_cancel(v4);
    }

    else
    {
      v5 = *(a1 + 8);
      if (v5 && (v6 = *(a1 + 16)) != 0)
      {
        if (*(a1 + 48) == 1)
        {
          nw_context_reset_timer_block_with_time(v5, a1, -1, v6);
        }

        else
        {
          nw_context_dequeue_source_block(v5, *(a1 + 16));
        }

        v8 = *(a1 + 8);
        v9 = _Block_copy(*(a1 + 24));
        v10 = *(a1 + 8);
        *(a1 + 8) = 0;

        v11 = *(a1 + 16);
        *(a1 + 16) = 0;

        v12 = *(a1 + 24);
        *(a1 + 24) = 0;

        if (v9)
        {
          nw_context_queue_block(v8, v9);
        }

        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __nw_queue_cancel_source_block_invoke;
        v24[3] = &__block_descriptor_40_e5_v8__0l;
        v24[4] = a1;
        nw_context_queue_block(v8, v24);
      }

      else if (gLogDatapath == 1)
      {
        v7 = __nwlog_obj(v5, a2);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446210;
          v28 = "nw_queue_cancel_source";
          _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEBUG, "%{public}s Cancelled, not cancelling again", buf, 0xCu);
        }
      }
    }

    return;
  }

  v13 = __nwlog_obj(0, a2);
  *buf = 136446210;
  v28 = "nw_queue_cancel_source";
  v14 = _os_log_send_and_compose_impl();

  v26 = OS_LOG_TYPE_ERROR;
  v25 = 0;
  v15 = __nwlog_fault(v14, &v26, &v25);
  if (v15)
  {
    if (v26 == OS_LOG_TYPE_FAULT)
    {
      v17 = __nwlog_obj(v15, v16);
      v18 = v26;
      if (os_log_type_enabled(v17, v26))
      {
        *buf = 136446210;
        v28 = "nw_queue_cancel_source";
        _os_log_impl(&dword_181A37000, v17, v18, "%{public}s called with null source", buf, 0xCu);
      }
    }

    else if (v25 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v17 = __nwlog_obj(backtrace_string, v20);
      v21 = v26;
      v22 = os_log_type_enabled(v17, v26);
      if (backtrace_string)
      {
        if (v22)
        {
          *buf = 136446466;
          v28 = "nw_queue_cancel_source";
          v29 = 2082;
          v30 = backtrace_string;
          _os_log_impl(&dword_181A37000, v17, v21, "%{public}s called with null source, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_35;
      }

      if (v22)
      {
        *buf = 136446210;
        v28 = "nw_queue_cancel_source";
        _os_log_impl(&dword_181A37000, v17, v21, "%{public}s called with null source, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v17 = __nwlog_obj(v15, v16);
      v23 = v26;
      if (os_log_type_enabled(v17, v26))
      {
        *buf = 136446210;
        v28 = "nw_queue_cancel_source";
        _os_log_impl(&dword_181A37000, v17, v23, "%{public}s called with null source, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_35:
  if (v14)
  {
    free(v14);
  }
}

void __nw_queue_context_create_source_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 40);
  v4 = *v3;
  *v3 = 0;

  free(v3);
}

uint64_t nw_path_get_interface_index(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v4 = __nwlog_obj();
    *buf = 136446210;
    v16 = "nw_path_get_interface_index";
    v5 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (__nwlog_fault(v5, &type, &v13))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v6 = __nwlog_obj();
        v7 = type;
        if (os_log_type_enabled(v6, type))
        {
          *buf = 136446210;
          v16 = "nw_path_get_interface_index";
          _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null path", buf, 0xCu);
        }
      }

      else if (v13 == 1)
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
            v16 = "nw_path_get_interface_index";
            v17 = 2082;
            v18 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (v10)
        {
          *buf = 136446210;
          v16 = "nw_path_get_interface_index";
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null path, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v6 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v6, type))
        {
          *buf = 136446210;
          v16 = "nw_path_get_interface_index";
          _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_20:
    if (v5)
    {
      free(v5);
    }

    goto LABEL_22;
  }

  if (!_nw_path_network_is_satisfied(v1))
  {
LABEL_22:
    routed_interface_index = 0;
    goto LABEL_23;
  }

  routed_interface_index = _nw_path_get_routed_interface_index(v2);
LABEL_23:

  return routed_interface_index;
}

uint64_t nw_settings_get_flow_report_numerator()
{
  v0 = nw_setting_flow_report_numerator;
  networkd_settings_init();
  if (!sCachedSettings)
  {
    return 1;
  }

  pthread_mutex_lock(&sSettingsMutex);
  v1 = sCachedSettings;
  if (!sCachedSettings)
  {
    goto LABEL_7;
  }

  Class = object_getClass(sCachedSettings);
  v3 = 1;
  if (!v0 || Class != MEMORY[0x1E69E9E80])
  {
    goto LABEL_8;
  }

  value = xpc_dictionary_get_value(v1, v0);
  if (value && (v5 = value, object_getClass(value) == MEMORY[0x1E69E9EB0]))
  {
    v3 = xpc_int64_get_value(v5);
  }

  else
  {
LABEL_7:
    v3 = 1;
  }

LABEL_8:
  pthread_mutex_unlock(&sSettingsMutex);
  return v3;
}

int64_t nw_settings_get_flow_report_denominator()
{
  v0 = 500000;
  v1 = nw_setting_flow_report_denominator;
  networkd_settings_init();
  if (sCachedSettings)
  {
    pthread_mutex_lock(&sSettingsMutex);
    v2 = sCachedSettings;
    if (sCachedSettings)
    {
      Class = object_getClass(sCachedSettings);
      if (v1)
      {
        if (Class == MEMORY[0x1E69E9E80])
        {
          value = xpc_dictionary_get_value(v2, v1);
          if (value)
          {
            v5 = value;
            if (object_getClass(value) == MEMORY[0x1E69E9EB0])
            {
              v0 = xpc_int64_get_value(v5);
            }
          }
        }
      }
    }

    pthread_mutex_unlock(&sSettingsMutex);
  }

  return v0;
}

void __nw_resolver_can_use_dns_xpc_block_invoke()
{
  v4 = *MEMORY[0x1E69E9840];
  nw_resolver_can_use_dns_xpc::can_use_dns_xpc = MEMORY[0x1EEE98808] != 0;
  if (!MEMORY[0x1EEE98808])
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v0 = gLogObj;
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v3 = "nw_resolver_can_use_dns_xpc_block_invoke";
      _os_log_impl(&dword_181A37000, v0, OS_LOG_TYPE_ERROR, "%{public}s libdns_services is not available", buf, 0xCu);
    }
  }

  getpid();
  if (sandbox_check())
  {
    nw_resolver_can_use_dns_xpc::can_use_dns_xpc = 0;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v1 = gLogObj;
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v3 = "nw_resolver_can_use_dns_xpc_block_invoke";
      _os_log_impl(&dword_181A37000, v1, OS_LOG_TYPE_ERROR, "%{public}s Sandbox does not allow access to com.apple.dnssd.service", buf, 0xCu);
    }
  }
}

uint64_t __nw_copy_current_audit_token_block_invoke()
{
  task_info_outCnt = 8;
  result = task_info(*MEMORY[0x1E69E9A60], 0xFu, &nw_copy_current_audit_token::my_audit_token, &task_info_outCnt);
  nw_copy_current_audit_token::valid = result == 0;
  return result;
}

uint64_t sub_181B7F180()
{
  v0 = type metadata accessor for NWPath(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = swift_unknownObjectRetain();
    v6 = sub_181B7BDC0(v5, v2);
    v7 = *(v4 + 16);
    MEMORY[0x1EEE9AC00](v6);
    *(&v10 - 2) = v2;
    v8 = *(*v7 + *MEMORY[0x1E69E6B68] + 16);
    v9 = (*(*v7 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v7 + v9));
    sub_181B815A0(v7 + v8);
    os_unfair_lock_unlock((v7 + v9));

    return sub_181B81280(v2, type metadata accessor for NWPath);
  }

  return result;
}

BOOL nw_path_has_dns(nw_path_t path)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = path;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_path_copy_resolver_configs(v1, 0);
    v4 = v3;
    if (v3)
    {
      v5 = _nw_array_get_count(v3) != 0;
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_6;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  v18 = "nw_path_has_dns";
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
        v18 = "nw_path_has_dns";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null path", buf, 0xCu);
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
          v18 = "nw_path_has_dns";
          v19 = 2082;
          v20 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_23;
      }

      if (v13)
      {
        *buf = 136446210;
        v18 = "nw_path_has_dns";
        _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v18 = "nw_path_has_dns";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_23:
  if (v8)
  {
    free(v8);
  }

  v5 = 0;
LABEL_6:

  return v5;
}

void nw_path_enumerate_interfaces(nw_path_t path, nw_path_enumerate_interfaces_block_t enumerate_block)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = path;
  v4 = enumerate_block;
  v5 = v4;
  if (!v3)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v23 = "nw_path_enumerate_interfaces";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v20 = 0;
    if (!__nwlog_fault(v7, &type, &v20))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v23 = "nw_path_enumerate_interfaces";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null path", buf, 0xCu);
      }
    }

    else if (v20 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v13 = type;
      v14 = os_log_type_enabled(v8, type);
      if (backtrace_string)
      {
        if (v14)
        {
          *buf = 136446466;
          v23 = "nw_path_enumerate_interfaces";
          v24 = 2082;
          v25 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_38:
        if (!v7)
        {
          goto LABEL_4;
        }

LABEL_39:
        free(v7);
        goto LABEL_4;
      }

      if (v14)
      {
        *buf = 136446210;
        v23 = "nw_path_enumerate_interfaces";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v23 = "nw_path_enumerate_interfaces";
        _os_log_impl(&dword_181A37000, v8, v18, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (v4)
  {
    _nw_path_enumerate_interfaces(v3, v4);
    goto LABEL_4;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v23 = "nw_path_enumerate_interfaces";
  v7 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v20 = 0;
  if (!__nwlog_fault(v7, &type, &v20))
  {
    goto LABEL_38;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v8 = __nwlog_obj();
    v11 = type;
    if (os_log_type_enabled(v8, type))
    {
      *buf = 136446210;
      v23 = "nw_path_enumerate_interfaces";
      _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null enumerate_block", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v20 != 1)
  {
    v8 = __nwlog_obj();
    v19 = type;
    if (os_log_type_enabled(v8, type))
    {
      *buf = 136446210;
      v23 = "nw_path_enumerate_interfaces";
      _os_log_impl(&dword_181A37000, v8, v19, "%{public}s called with null enumerate_block, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_37;
  }

  v15 = __nw_create_backtrace_string();
  v8 = __nwlog_obj();
  v16 = type;
  v17 = os_log_type_enabled(v8, type);
  if (!v15)
  {
    if (v17)
    {
      *buf = 136446210;
      v23 = "nw_path_enumerate_interfaces";
      _os_log_impl(&dword_181A37000, v8, v16, "%{public}s called with null enumerate_block, no backtrace", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v17)
  {
    *buf = 136446466;
    v23 = "nw_path_enumerate_interfaces";
    v24 = 2082;
    v25 = v15;
    _os_log_impl(&dword_181A37000, v8, v16, "%{public}s called with null enumerate_block, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v15);
  if (v7)
  {
    goto LABEL_39;
  }

LABEL_4:
}

void *sub_181B7FAD0(void *result, uint64_t a2)
{
  v3 = result[1];
  v4 = result[25];
  v5 = result[39];
  if (!v3 || (v6 = result[39], v7 = type metadata accessor for __NWInterface(), v8 = objc_allocWithZone(v7), v9 = OBJC_IVAR____TtC7Network13__NWInterface_lock, swift_retain_n(), v10 = swift_slowAlloc(), *&v8[v9] = v10, *&v8[OBJC_IVAR____TtC7Network13__NWInterface_nameStorage] = 0, *&v8[OBJC_IVAR____TtC7Network13__NWInterface_interface] = v3, *v10 = 0, v45.receiver = v8, v45.super_class = v7, v11 = objc_msgSendSuper2(&v45, sel_init), LODWORD(v8) = (*(a2 + 16))(a2, v11), v11, v5 = v6, result = , v8))
  {
    if (v4)
    {
      v12 = v4[4];
      if (v4[2] >= v4[3] + v12)
      {
        v13 = v4[3] + v12;
      }

      else
      {
        v13 = v4[2];
      }

      v60 = v4;
      v61 = v12;
      v62 = v13;
      v14 = swift_retain_n();
      while (1)
      {
        if (v12 == v13)
        {
          v14 = sub_181AC81FC(v14);
          v20 = v60;
          if ((v14 & 1) == 0)
          {
            goto LABEL_40;
          }
        }

        else
        {
          v20 = v60;
        }

        v21 = v61;
        v12 = ++v61;
        v22 = &v20[26 * v21];
        v48 = *(v22 + 5);
        v23 = *(v22 + 9);
        v24 = *(v22 + 13);
        v25 = *(v22 + 7);
        v51 = *(v22 + 11);
        v52 = v24;
        v49 = v25;
        v50 = v23;
        v26 = *(v22 + 17);
        v27 = *(v22 + 21);
        v28 = *(v22 + 15);
        v55 = *(v22 + 19);
        v56 = v27;
        v53 = v28;
        v54 = v26;
        v29 = *(v22 + 25);
        v30 = *(v22 + 27);
        v31 = *(v22 + 23);
        *(v59 + 10) = *(v22 + 226);
        v58 = v29;
        v59[0] = v30;
        v57 = v31;
        v32 = *(&v48 + 1);
        if (*(&v48 + 1))
        {
          break;
        }

LABEL_10:
        v13 = v62;
      }

      if (!v3)
      {
        swift_retain_n();
        sub_181AFE6F4(&v48, v46);
        goto LABEL_9;
      }

      if (*(*(&v48 + 1) + 40) == *(v3 + 40) || (sub_182AD4268()) && *(v32 + 16) == *(v3 + 16))
      {
        v33 = *(v3 + 184);
        if (v33 <= 1)
        {
          if (!*(v3 + 184))
          {
            goto LABEL_34;
          }

          v34 = 2;
          if (!*(v32 + 184))
          {
            goto LABEL_34;
          }
        }

        else if (v33 == 2)
        {
          v34 = 3;
          if (!*(v32 + 184))
          {
LABEL_34:
            if (qword_182AEE058[*(v32 + 185)] == qword_182AEE058[*(v3 + 185)] || !*(v32 + 185))
            {
              swift_retain_n();

              sub_181AFE6F4(&v48, v46);
LABEL_39:

              v14 = sub_181AFE6A0(&v48);
              goto LABEL_10;
            }

            v35 = *(v3 + 185);
            swift_retain_n();

            sub_181AFE6F4(&v48, v46);
            if (!v35)
            {
              goto LABEL_39;
            }

            goto LABEL_33;
          }
        }

        else if (v33 == 3)
        {
          v34 = 4;
          if (!*(v32 + 184))
          {
            goto LABEL_34;
          }
        }

        else
        {
          v34 = 1;
          if (!*(v32 + 184))
          {
            goto LABEL_34;
          }
        }

        if (qword_182AEE030[*(v32 + 184)] == v34)
        {
          goto LABEL_34;
        }
      }

      swift_retain_n();

      sub_181AFE6F4(&v48, v46);
LABEL_33:

LABEL_9:

      v15 = type metadata accessor for __NWInterface();
      v16 = objc_allocWithZone(v15);
      v17 = OBJC_IVAR____TtC7Network13__NWInterface_lock;

      v18 = swift_slowAlloc();
      *&v16[v17] = v18;
      *&v16[OBJC_IVAR____TtC7Network13__NWInterface_nameStorage] = 0;
      *&v16[OBJC_IVAR____TtC7Network13__NWInterface_interface] = v32;
      *v18 = 0;
      v47.receiver = v16;
      v47.super_class = v15;
      v19 = objc_msgSendSuper2(&v47, sel_init);
      LODWORD(v16) = (*(a2 + 16))(a2, v19);

      sub_181AFE6A0(&v48);

      if (!v16)
      {
        goto LABEL_40;
      }

      goto LABEL_10;
    }

    if (v5)
    {
      v36 = v5[4];
      if (v5[2] >= v5[3] + v36)
      {
        v37 = v5[3] + v36;
      }

      else
      {
        v37 = v5[2];
      }

      *&v48 = v5;
      *(&v48 + 1) = v36;
      *&v49 = v37;
      swift_retain_n();
      v38 = swift_beginAccess();
      while (1)
      {
        if (v36 == v37)
        {
          if ((sub_181AC81FC(v38) & 1) == 0)
          {
            goto LABEL_40;
          }

          v36 = *(&v48 + 1);
          v5 = v48;
        }

        *(&v48 + 1) = v36 + 1;
        v39 = &v5[3 * v36];
        v40 = *(v39 + 10);
        v41 = *(v39 + 11);
        v42 = swift_unknownObjectRetain();
        v43 = nw_path_copy_interface_with_generation(v42, v40, v41);
        if (v43)
        {
          v44 = (*(a2 + 16))(a2, v43);
          swift_unknownObjectRelease();
          v38 = swift_unknownObjectRelease();
          if ((v44 & 1) == 0)
          {
LABEL_40:
          }
        }

        else
        {
          v38 = swift_unknownObjectRelease();
        }

        v37 = v49;
        ++v36;
      }
    }
  }

  return result;
}

uint64_t sub_181B7FFE4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v4 = v3(a2);
  swift_unknownObjectRelease();
  return v4 & 1;
}

uint64_t sub_181B8009C(uint64_t a1, char **a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC7Network13__NWInterface_interface);
  v4 = *a2;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_181B7C3B0(0, *(v4 + 2) + 1, 1, v4);
    *a2 = v4;
  }

  v7 = *(v4 + 2);
  v6 = *(v4 + 3);
  if (v7 >= v6 >> 1)
  {
    v4 = sub_181B7C3B0((v6 > 1), v7 + 1, 1, v4);
    *a2 = v4;
  }

  *(v4 + 2) = v7 + 1;
  *&v4[8 * v7 + 32] = v3;
  return 1;
}

void nw_path_enumerate_gateways(nw_path_t path, nw_path_enumerate_gateways_block_t enumerate_block)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = path;
  v4 = enumerate_block;
  v5 = v4;
  if (!v3)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v26 = "nw_path_enumerate_gateways";
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (!__nwlog_fault(v8, &type, &v23))
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
        v26 = "nw_path_enumerate_gateways";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null path", buf, 0xCu);
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
          v26 = "nw_path_enumerate_gateways";
          v27 = 2082;
          v28 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_40:
        if (!v8)
        {
          goto LABEL_6;
        }

LABEL_41:
        free(v8);
        goto LABEL_6;
      }

      if (v15)
      {
        *buf = 136446210;
        v26 = "nw_path_enumerate_gateways";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v26 = "nw_path_enumerate_gateways";
        _os_log_impl(&dword_181A37000, v9, v19, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_39:

    goto LABEL_40;
  }

  if (v4)
  {
    v6 = _nw_path_copy_gateways(v3);
    if (v6)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __nw_path_enumerate_gateways_block_invoke;
      aBlock[3] = &unk_1E6A3CD30;
      v22 = v5;
      _nw_array_apply(v6, aBlock);
    }

    goto LABEL_6;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v26 = "nw_path_enumerate_gateways";
  v8 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v23 = 0;
  if (!__nwlog_fault(v8, &type, &v23))
  {
    goto LABEL_40;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v9 = __nwlog_obj();
    v12 = type;
    if (os_log_type_enabled(v9, type))
    {
      *buf = 136446210;
      v26 = "nw_path_enumerate_gateways";
      _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null enumerate_block", buf, 0xCu);
    }

    goto LABEL_39;
  }

  if (v23 != 1)
  {
    v9 = __nwlog_obj();
    v20 = type;
    if (os_log_type_enabled(v9, type))
    {
      *buf = 136446210;
      v26 = "nw_path_enumerate_gateways";
      _os_log_impl(&dword_181A37000, v9, v20, "%{public}s called with null enumerate_block, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_39;
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
      v26 = "nw_path_enumerate_gateways";
      _os_log_impl(&dword_181A37000, v9, v17, "%{public}s called with null enumerate_block, no backtrace", buf, 0xCu);
    }

    goto LABEL_39;
  }

  if (v18)
  {
    *buf = 136446466;
    v26 = "nw_path_enumerate_gateways";
    v27 = 2082;
    v28 = v16;
    _os_log_impl(&dword_181A37000, v9, v17, "%{public}s called with null enumerate_block, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v16);
  if (v8)
  {
    goto LABEL_41;
  }

LABEL_6:
}

uint64_t sub_181B80714(uint64_t a1, size_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839360);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v20 - v4;
  v6 = type metadata accessor for NWEndpoint();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  v13 = swift_unknownObjectRetain();
  sub_181B80998(v13, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_181F49A88(v5, &qword_1EA839360);
  }

  else
  {
    sub_181AA38E8(v5, v12, type metadata accessor for NWEndpoint);
    sub_181B811E4(v12, v9, type metadata accessor for NWEndpoint);
    v14 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v14;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = sub_181B81258(0, v14[2] + 1, 1, v14);
      *a2 = v14;
    }

    v17 = v14[2];
    v16 = v14[3];
    if (v17 >= v16 >> 1)
    {
      *a2 = sub_181B81258(v16 > 1, v17 + 1, 1, v14);
    }

    sub_181B81280(v12, type metadata accessor for NWEndpoint);
    v18 = *a2;
    v18[2] = v17 + 1;
    sub_181AA38E8(v9, v18 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v17, type metadata accessor for NWEndpoint);
  }

  return 1;
}

uint64_t sub_181B80998@<X0>(NSObject *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for NWEndpoint();
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v4);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v47 = v5;
    v9 = swift_unknownObjectRetain();
    v10 = nw_endpoint_copy_interface(v9);
    if (v10)
    {
      v11 = *(v10 + OBJC_IVAR____TtC7Network13__NWInterface_interface);

      swift_unknownObjectRelease();
    }

    else
    {
      v11 = 0;
    }

    if (nw_endpoint_copy_txt_record(a1))
    {
      swift_unknownObjectRelease();
      goto LABEL_8;
    }

    if (nw_endpoint_has_signature(a1))
    {
      goto LABEL_8;
    }

    if (nw_endpoint_get_type(a1) == nw_endpoint_type_host)
    {
      nw_endpoint_get_hostname(a1);
      v13 = sub_182AD3158();
      v15 = v14;
      port = nw_endpoint_get_port(a1);
      swift_unknownObjectRelease_n();
      *v8 = v13;
      *(v8 + 1) = v15;
      *(v8 + 2) = v11;
      v8[24] = 0;
      *(v8 + 13) = port;
      goto LABEL_9;
    }

    if (nw_endpoint_get_type(a1) != nw_endpoint_type_address)
    {
      if (nw_endpoint_get_type(a1) == nw_endpoint_type_bonjour_service)
      {
        nw_endpoint_get_bonjour_service_name(a1);
        v46 = sub_182AD3158();
        v24 = v23;
        nw_endpoint_get_bonjour_service_type(a1);
        v25 = sub_182AD3158();
        v27 = v26;
        nw_endpoint_get_bonjour_service_domain(a1);
        v28 = sub_182AD3158();
        v30 = v29;
        swift_unknownObjectRelease_n();
        *v8 = v46;
        *(v8 + 1) = v24;
        *(v8 + 2) = v25;
        *(v8 + 3) = v27;
        *(v8 + 4) = v28;
        *(v8 + 5) = v30;
        *(v8 + 6) = v11;
        goto LABEL_9;
      }

      if (nw_endpoint_get_type(a1) == nw_endpoint_type_url)
      {
        v31 = nw_endpoint_copy_cfurl(a1);
        sub_182AD1FD8();

        swift_unknownObjectRelease_n();

        goto LABEL_9;
      }

LABEL_8:
      swift_unknownObjectRelease();

      *v8 = a1;
LABEL_9:
      swift_storeEnumTagMultiPayload();
LABEL_10:
      sub_181B81180(v8, a2);
      return (*(v47 + 56))(a2, 0, 1, v4);
    }

    v17 = nw_endpoint_get_port(a1);
    address = nw_endpoint_get_address(a1);
    sa_family = address->sa_family;
    if (sa_family == 1)
    {
      v37 = nw_endpoint_copy_address_string(a1);
      *v8 = sub_182AD3158();
      *(v8 + 1) = v38;
      swift_storeEnumTagMultiPayload();
      MEMORY[0x1865DF520](v37, -1, -1);
      swift_unknownObjectRelease_n();

      goto LABEL_10;
    }

    if (sa_family == 30)
    {
      if (address->sa_len == 28)
      {
        v32 = address;
        swift_unknownObjectRelease();
        v33 = v32;
        v34 = *&v32[1].sa_len;
        v35 = *&v33->sa_data[6];
        if (v11)
        {
          swift_unknownObjectRelease();
        }

        else
        {
          v39 = *&v33[1].sa_data[6];
          if (v39)
          {
            sub_181E378A4(v39, &v48, v49);
            swift_unknownObjectRelease();
            type metadata accessor for Interface.BackingClass();
            v11 = swift_allocObject();
            v40 = v50[0];
            v11[9] = v49[8];
            v11[10] = v40;
            *(v11 + 170) = *(v50 + 10);
            v41 = v49[5];
            v11[5] = v49[4];
            v11[6] = v41;
            v42 = v49[7];
            v11[7] = v49[6];
            v11[8] = v42;
            v44 = v49[1];
            v43 = v49[2];
            v11[1] = v49[0];
            v11[2] = v44;
            v45 = v49[3];
            v11[3] = v43;
            v11[4] = v45;
          }

          else
          {
            swift_unknownObjectRelease();
            v11 = 0;
          }
        }

        *v8 = v35;
        *(v8 + 1) = v34;
        *(v8 + 2) = v11;
        v22 = 2;
        goto LABEL_36;
      }
    }

    else if (sa_family == 2 && address->sa_len == 16)
    {
      v20 = address;
      swift_unknownObjectRelease();
      v21 = *&v20->sa_data[2];
      swift_unknownObjectRelease();
      *v8 = v21;
      *(v8 + 1) = v11;
      *(v8 + 2) = 0;
      v22 = 1;
LABEL_36:
      v8[24] = v22;
      *(v8 + 13) = v17;
      goto LABEL_9;
    }

    swift_unknownObjectRelease_n();

    v5 = v47;
  }

  v36 = *(v5 + 56);

  return v36(a2, 1, 1, v4, v6);
}

BOOL nw_endpoint_has_signature(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    has_signature = _nw_endpoint_has_signature(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_has_signature";
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
        v16 = "nw_endpoint_has_signature";
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
          v16 = "nw_endpoint_has_signature";
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
        v16 = "nw_endpoint_has_signature";
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
        v16 = "nw_endpoint_has_signature";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  has_signature = 0;
LABEL_3:

  return has_signature;
}

BOOL _nw_endpoint_has_signature(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC7Network8Endpoint_signature);
  swift_unknownObjectRetain();
  if (v1)
  {
    swift_unknownObjectRelease();
  }

  return v1 != 0;
}

uint64_t sub_181B81180(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NWEndpoint();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_181B811E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_181B81280(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

nw_endpoint_t nw_path_copy_effective_local_endpoint(nw_path_t path)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = path;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_path_copy_effective_local_endpoint(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_copy_effective_local_endpoint";
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
        v16 = "nw_path_copy_effective_local_endpoint";
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
          v16 = "nw_path_copy_effective_local_endpoint";
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
        v16 = "nw_path_copy_effective_local_endpoint";
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
        v16 = "nw_path_copy_effective_local_endpoint";
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

uint64_t objectdestroy_117Tm()
{
  v1 = type metadata accessor for NWPath(0);
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);

  v3 = v0 + v2 + *(v1 + 44);
  v4 = type metadata accessor for NWEndpoint();
  v5 = *(*(v4 - 8) + 48);
  if (!v5(v3, 1, v4))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
        }
      }

      else
      {
        sub_181E605C8(*v3, *(v3 + 8), *(v3 + 16), *(v3 + 24));
      }
    }

    else
    {
      switch(EnumCaseMultiPayload)
      {
        case 2:

          break;
        case 3:
          v10 = sub_182AD2058();
          (*(*(v10 - 8) + 8))(v3, v10);
          break;
        case 4:
          swift_unknownObjectRelease();
          break;
      }
    }
  }

  v6 = v0 + v2 + *(v1 + 48);
  if (!v5(v6, 1, v4))
  {
    v9 = swift_getEnumCaseMultiPayload();
    if (v9 <= 1)
    {
      if (v9)
      {
        if (v9 == 1)
        {
        }
      }

      else
      {
        sub_181E605C8(*v6, *(v6 + 8), *(v6 + 16), *(v6 + 24));
      }
    }

    else
    {
      switch(v9)
      {
        case 2:

          break;
        case 3:
          v11 = sub_182AD2058();
          (*(*(v11 - 8) + 8))(v6, v11);
          break;
        case 4:
          swift_unknownObjectRelease();
          break;
      }
    }
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_181B8190C(void *a1)
{
  v2 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC7Network8Endpoint_type;
  v6 = a1;
  swift_beginAccess();
  sub_181A546E0(a1 + v5, v4, type metadata accessor for Endpoint.EndpointType);
  if (swift_getEnumCaseMultiPayload())
  {

    sub_181A5513C(v4, type metadata accessor for Endpoint.EndpointType);
    return 0;
  }

  else
  {
    sub_181A5513C(v4, type metadata accessor for Endpoint.EndpointType);
    v7 = *&v6[OBJC_IVAR____TtC7Network8Endpoint_ethernetAddressStorage];
  }

  return v7;
}

NWConcrete_nw_path_flow_registration *nw_path_evaluator_create_flow_inner(void *a1, int a2, int a3, int a4, int a5, _OWORD *a6, void *a7, int a8, unsigned __int8 a9, _OWORD *a10, _DWORD *a11)
{
  LODWORD(v11) = a8;
  *(&v112[5] + 2) = *MEMORY[0x1E69E9840];
  v18 = a1;
  v100 = a7;
  if (!v18)
  {
    v75 = __nwlog_obj();
    *out = 136446210;
    *&out[4] = "nw_path_evaluator_create_flow_inner";
    v76 = _os_log_send_and_compose_impl();

    LOBYTE(buf) = 16;
    LOBYTE(__src[0]) = 0;
    if (!__nwlog_fault(v76, &buf, __src))
    {
      goto LABEL_150;
    }

    if (buf == 17)
    {
      v77 = __nwlog_obj();
      v78 = buf;
      if (os_log_type_enabled(v77, buf))
      {
        *out = 136446210;
        *&out[4] = "nw_path_evaluator_create_flow_inner";
        _os_log_impl(&dword_181A37000, v77, v78, "%{public}s called with null evaluator", out, 0xCu);
      }
    }

    else if (LOBYTE(__src[0]) == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v77 = __nwlog_obj();
      v80 = buf;
      v81 = os_log_type_enabled(v77, buf);
      if (backtrace_string)
      {
        if (v81)
        {
          *out = 136446466;
          *&out[4] = "nw_path_evaluator_create_flow_inner";
          *&out[12] = 2082;
          *&out[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v77, v80, "%{public}s called with null evaluator, dumping backtrace:%{public}s", out, 0x16u);
        }

        free(backtrace_string);
LABEL_150:
        if (v76)
        {
LABEL_151:
          free(v76);
        }

LABEL_152:
        v27 = 0;
        goto LABEL_153;
      }

      if (v81)
      {
        *out = 136446210;
        *&out[4] = "nw_path_evaluator_create_flow_inner";
        _os_log_impl(&dword_181A37000, v77, v80, "%{public}s called with null evaluator, no backtrace", out, 0xCu);
      }
    }

    else
    {
      v77 = __nwlog_obj();
      v82 = buf;
      if (os_log_type_enabled(v77, buf))
      {
        *out = 136446210;
        *&out[4] = "nw_path_evaluator_create_flow_inner";
        _os_log_impl(&dword_181A37000, v77, v82, "%{public}s called with null evaluator, backtrace limit exceeded", out, 0xCu);
      }
    }

    goto LABEL_150;
  }

  v19 = nw_parameters_copy_context(*(v18 + 1));
  nw_context_assert_queue(v19);

  v20 = *(v18 + 2);
  v21 = v20;
  if (v20 && (v22 = v20, v23 = _nw_endpoint_get_type(v22), v22, v23 == 1))
  {
    v24 = v22;
    address_family = _nw_endpoint_get_address_family(v24);

    if (address_family != 30 && address_family != 2)
    {
      *out = 0;
      *&out[8] = 0;
      uuid_generate_random(out);
      v26 = nw_path_flow_registration_create(v18, out);
      v27 = v26;
      if (v26)
      {
        *(v26 + 148) |= 1u;
      }

      goto LABEL_153;
    }
  }

  else
  {
  }

  v28 = nw_parameters_copy_context(*(v18 + 1));
  v29 = nw_path_shared_necp_fd(v28);

  if (v29 < 0)
  {
    goto LABEL_152;
  }

  v107 = 0u;
  memset(v108, 0, sizeof(v108));
  v106 = 0u;
  memset(out, 0, sizeof(out));
  if (!a3)
  {
    v30 = 0;
    if (!a4)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v30 = 1;
  LOWORD(v106) = 1;
  if (a4)
  {
LABEL_14:
    v30 |= 4u;
    LOWORD(v106) = v30;
  }

LABEL_15:
  if (!a5)
  {
    v31 = a9;
    if (!a6)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v30 |= 8u;
  LOWORD(v106) = v30;
  v31 = a9;
  if (a6)
  {
LABEL_19:
    *out = *a6;
  }

LABEL_20:
  if (v31)
  {
    v32 = v30 | 0x40;
    LOWORD(v106) = v30 | 0x40;
    *&out[16] = *a10;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v33 = gLogObj;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      buf = 136446978;
      v110 = "nw_path_evaluator_create_flow_inner";
      v111 = 1040;
      LODWORD(v112[0]) = 16;
      WORD2(v112[0]) = 2096;
      *(v112 + 6) = a10;
      HIWORD(v112[1]) = 1024;
      LODWORD(v112[2]) = v32;
      _os_log_impl(&dword_181A37000, v33, OS_LOG_TYPE_INFO, "%{public}s Adding override registration UUID %{uuid_t}.16P flags: %x", &buf, 0x22u);
    }
  }

  if (a2)
  {
    WORD1(v106) = 1;
    if (nw_parameters_get_upper_transport_protocol(*(v18 + 1)) == 253)
    {
      v34 = 3;
    }

    else
    {
      if ((nw_path_get_nexus_protocol_level(*(v18 + 6)) & 0xFFFFFFFE) != 2)
      {
        goto LABEL_36;
      }

      ip_protocol = v11;
      if (!v11)
      {
        ip_protocol = nw_parameters_get_ip_protocol(*(v18 + 1));
      }

      if (ip_protocol == 6)
      {
        v34 = 1;
        goto LABEL_27;
      }

      if (ip_protocol != 17)
      {
LABEL_36:
        v35 = 60;
        v36 = v100;
        if (!v100)
        {
          goto LABEL_49;
        }

        goto LABEL_37;
      }

      v34 = 2;
    }

LABEL_27:
    DWORD1(v106) = v34;
    *(&v106 + 1) = 0x9800000001;
    goto LABEL_36;
  }

  v35 = 36;
  v36 = v100;
  if (!v100)
  {
    goto LABEL_49;
  }

LABEL_37:
  v38 = v36;
  v39 = _nw_endpoint_get_type(v38);

  if (v39 != 1)
  {
    goto LABEL_49;
  }

  memset(__src, 0, sizeof(__src));
  v103 = 0;
  if ((nw_endpoint_fillout_v4v6_address(v38, __src) & 1) == 0)
  {
    v83 = __nwlog_obj();
    buf = 136446210;
    v110 = "nw_path_evaluator_create_flow_inner";
    v76 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v101 = 0;
    if (__nwlog_fault(v76, &type, &v101))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v84 = __nwlog_obj();
        v85 = type;
        if (os_log_type_enabled(v84, type))
        {
          buf = 136446210;
          v110 = "nw_path_evaluator_create_flow_inner";
          _os_log_impl(&dword_181A37000, v84, v85, "%{public}s called with null success", &buf, 0xCu);
        }
      }

      else if (v101 == 1)
      {
        v91 = __nw_create_backtrace_string();
        v84 = __nwlog_obj();
        v92 = type;
        v93 = os_log_type_enabled(v84, type);
        if (v91)
        {
          if (v93)
          {
            buf = 136446466;
            v110 = "nw_path_evaluator_create_flow_inner";
            v111 = 2082;
            v112[0] = v91;
            _os_log_impl(&dword_181A37000, v84, v92, "%{public}s called with null success, dumping backtrace:%{public}s", &buf, 0x16u);
          }

          free(v91);
          if (!v76)
          {
            goto LABEL_152;
          }

          goto LABEL_151;
        }

        if (v93)
        {
          buf = 136446210;
          v110 = "nw_path_evaluator_create_flow_inner";
          _os_log_impl(&dword_181A37000, v84, v92, "%{public}s called with null success, no backtrace", &buf, 0xCu);
        }
      }

      else
      {
        v84 = __nwlog_obj();
        v97 = type;
        if (os_log_type_enabled(v84, type))
        {
          buf = 136446210;
          v110 = "nw_path_evaluator_create_flow_inner";
          _os_log_impl(&dword_181A37000, v84, v97, "%{public}s called with null success, backtrace limit exceeded", &buf, 0xCu);
        }
      }
    }

    goto LABEL_150;
  }

  if (BYTE1(__src[0]) == 30 || BYTE1(__src[0]) == 2)
  {
    v41 = LOBYTE(__src[0]);
    if (LOBYTE(__src[0]) <= 0x1Cu)
    {
      v35 += LOBYTE(__src[0]);
      LOWORD(v106) = v106 | 0x10;
      if (gLogDatapath == 1)
      {
        v90 = __nwlog_obj();
        if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
        {
          buf = 136446978;
          v110 = "nw_path_evaluator_create_flow_inner";
          v111 = 2112;
          v112[0] = v38;
          LOWORD(v112[1]) = 1024;
          *(&v112[1] + 2) = v106;
          HIWORD(v112[1]) = 2048;
          v112[2] = v35;
          _os_log_impl(&dword_181A37000, v90, OS_LOG_TYPE_DEBUG, "%{public}s Adding override endpoint %@, flags %x, length %zu", &buf, 0x26u);
        }

        v41 = LOBYTE(__src[0]);
      }

      v42 = 36;
      if (a2)
      {
        v42 = 60;
      }

      memcpy(&out[v42], __src, v41);
    }
  }

LABEL_49:
  if (v11)
  {
    LOWORD(v106) = v106 | 0x20;
    v108[24] = v11;
    if (gLogDatapath == 1)
    {
      v11 = __nwlog_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        buf = 136446978;
        v110 = "nw_path_evaluator_create_flow_inner";
        v111 = 1024;
        LODWORD(v112[0]) = v108[24];
        WORD2(v112[0]) = 1024;
        *(v112 + 6) = v106;
        WORD1(v112[1]) = 2048;
        *(&v112[1] + 4) = v35;
        _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_DEBUG, "%{public}s Adding override ip protocol %u, flags %x, length %zu", &buf, 0x22u);
      }

      LOBYTE(v11) = v108[24];
    }

    out[v35] = v11;
  }

  if (necp_client_action())
  {
    v43 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    v44 = v18;
    os_unfair_lock_lock(v18 + 24);
    v45 = *(v18 + 1);
    os_unfair_lock_unlock(v18 + 24);

    v46 = _nw_parameters_copy_extended_description(v45);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v47 = gLogObj;
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      buf = 136446722;
      v110 = "nw_path_evaluator_create_flow_inner";
      v111 = 2112;
      v112[0] = v100;
      LOWORD(v112[1]) = 2080;
      *(&v112[1] + 2) = v46;
      _os_log_impl(&dword_181A37000, v47, OS_LOG_TYPE_ERROR, "%{public}s failed NECP_CLIENT_ACTION_ADD_FLOW %@ evaluator parameters: %s", &buf, 0x20u);
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v48 = gLogObj;
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      buf = 136446978;
      v110 = "nw_path_evaluator_create_flow_inner";
      v111 = 1042;
      LODWORD(v112[0]) = 16;
      WORD2(v112[0]) = 2098;
      *(v112 + 6) = v18 + 80;
      HIWORD(v112[1]) = 1024;
      LODWORD(v112[2]) = v43;
      _os_log_impl(&dword_181A37000, v48, OS_LOG_TYPE_ERROR, "%{public}s NECP_CLIENT_ACTION_ADD_FLOW %{public,uuid_t}.16P %{darwin.errno}d", &buf, 0x22u);
    }

    if (v46)
    {
      free(v46);
    }

    if (a11)
    {
      *a11 = v43;
    }

    goto LABEL_152;
  }

  if (a3)
  {
    v49 = nw_parameters_copy_context(*(v18 + 1));
    v50 = v49;
    if (v49)
    {
      v51 = nw_context_copy_globals_context(v49);

      nw_context_assert_queue(v51);
      v52 = *(v51 + 4);
      v53 = *(v52 + 84);
      v54 = __CFADD__(v53, 1);
      v55 = v53 + 1;
      v56 = v54;
      *(v52 + 84) = v55;
      if (v56 << 63 >> 63 == v56)
      {
LABEL_87:
        v70 = *(v51 + 18);
        if (v70)
        {
          (*(v70 + 16))(v70, *(*(v51 + 4) + 84));
        }

LABEL_89:

        goto LABEL_90;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v57 = gLogObj;
      v58 = *(*(v51 + 4) + 84);
      buf = 136446978;
      v110 = "nw_context_increment_channel_flow_count";
      v111 = 2082;
      v112[0] = "context->globals->flow_count";
      LOWORD(v112[1]) = 2048;
      *(&v112[1] + 2) = 1;
      WORD1(v112[2]) = 2048;
      *(&v112[2] + 4) = v58;
      v59 = _os_log_send_and_compose_impl();

      LOBYTE(__src[0]) = 16;
      type = OS_LOG_TYPE_DEFAULT;
      if (__nwlog_fault(v59, __src, &type))
      {
        if (LOBYTE(__src[0]) == 17)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v60 = gLogObj;
          v61 = __src[0];
          if (os_log_type_enabled(v60, __src[0]))
          {
            v62 = *(*(v51 + 4) + 84);
            buf = 136446978;
            v110 = "nw_context_increment_channel_flow_count";
            v111 = 2082;
            v112[0] = "context->globals->flow_count";
            LOWORD(v112[1]) = 2048;
            *(&v112[1] + 2) = 1;
            WORD1(v112[2]) = 2048;
            *(&v112[2] + 4) = v62;
            _os_log_impl(&dword_181A37000, v60, v61, "%{public}s Overflow: %{public}s, increment %llu, result %llu", &buf, 0x2Au);
          }
        }

        else if (type == OS_LOG_TYPE_INFO)
        {
          v63 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v60 = gLogObj;
          v64 = __src[0];
          v65 = os_log_type_enabled(v60, __src[0]);
          if (v63)
          {
            if (v65)
            {
              v66 = *(*(v51 + 4) + 84);
              buf = 136447234;
              v110 = "nw_context_increment_channel_flow_count";
              v111 = 2082;
              v112[0] = "context->globals->flow_count";
              LOWORD(v112[1]) = 2048;
              *(&v112[1] + 2) = 1;
              WORD1(v112[2]) = 2048;
              *(&v112[2] + 4) = v66;
              WORD2(v112[3]) = 2082;
              *(&v112[3] + 6) = v63;
              _os_log_impl(&dword_181A37000, v60, v64, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", &buf, 0x34u);
            }

            free(v63);
            goto LABEL_84;
          }

          if (v65)
          {
            v69 = *(*(v51 + 4) + 84);
            buf = 136446978;
            v110 = "nw_context_increment_channel_flow_count";
            v111 = 2082;
            v112[0] = "context->globals->flow_count";
            LOWORD(v112[1]) = 2048;
            *(&v112[1] + 2) = 1;
            WORD1(v112[2]) = 2048;
            *(&v112[2] + 4) = v69;
            _os_log_impl(&dword_181A37000, v60, v64, "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace", &buf, 0x2Au);
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v60 = gLogObj;
          v67 = __src[0];
          if (os_log_type_enabled(v60, __src[0]))
          {
            v68 = *(*(v51 + 4) + 84);
            buf = 136446978;
            v110 = "nw_context_increment_channel_flow_count";
            v111 = 2082;
            v112[0] = "context->globals->flow_count";
            LOWORD(v112[1]) = 2048;
            *(&v112[1] + 2) = 1;
            WORD1(v112[2]) = 2048;
            *(&v112[2] + 4) = v68;
            _os_log_impl(&dword_181A37000, v60, v67, "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded", &buf, 0x2Au);
          }
        }
      }

LABEL_84:
      if (v59)
      {
        free(v59);
      }

      *(*(v51 + 4) + 84) = -1;
      goto LABEL_87;
    }

    v86 = __nwlog_obj();
    buf = 136446210;
    v110 = "nw_context_increment_channel_flow_count";
    v87 = _os_log_send_and_compose_impl();

    LOBYTE(__src[0]) = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v87, __src, &type))
    {
      if (LOBYTE(__src[0]) == 17)
      {
        v88 = __nwlog_obj();
        v89 = __src[0];
        if (os_log_type_enabled(v88, __src[0]))
        {
          buf = 136446210;
          v110 = "nw_context_increment_channel_flow_count";
          _os_log_impl(&dword_181A37000, v88, v89, "%{public}s called with null context", &buf, 0xCu);
        }
      }

      else if (type == OS_LOG_TYPE_INFO)
      {
        v94 = __nw_create_backtrace_string();
        v88 = __nwlog_obj();
        v95 = __src[0];
        v96 = os_log_type_enabled(v88, __src[0]);
        if (v94)
        {
          if (v96)
          {
            buf = 136446466;
            v110 = "nw_context_increment_channel_flow_count";
            v111 = 2082;
            v112[0] = v94;
            _os_log_impl(&dword_181A37000, v88, v95, "%{public}s called with null context, dumping backtrace:%{public}s", &buf, 0x16u);
          }

          free(v94);
          goto LABEL_157;
        }

        if (v96)
        {
          buf = 136446210;
          v110 = "nw_context_increment_channel_flow_count";
          _os_log_impl(&dword_181A37000, v88, v95, "%{public}s called with null context, no backtrace", &buf, 0xCu);
        }
      }

      else
      {
        v88 = __nwlog_obj();
        v98 = __src[0];
        if (os_log_type_enabled(v88, __src[0]))
        {
          buf = 136446210;
          v110 = "nw_context_increment_channel_flow_count";
          _os_log_impl(&dword_181A37000, v88, v98, "%{public}s called with null context, backtrace limit exceeded", &buf, 0xCu);
        }
      }
    }

LABEL_157:
    if (v87)
    {
      free(v87);
    }

    v51 = 0;
    goto LABEL_89;
  }

LABEL_90:
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v71 = gLogObj;
  if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
  {
    buf = 136447234;
    v110 = "nw_path_evaluator_create_flow_inner";
    v111 = 1042;
    LODWORD(v112[0]) = 16;
    WORD2(v112[0]) = 2098;
    *(v112 + 6) = &out[16];
    HIWORD(v112[1]) = 1042;
    LODWORD(v112[2]) = 16;
    WORD2(v112[2]) = 2098;
    *(&v112[2] + 6) = v18 + 80;
    _os_log_impl(&dword_181A37000, v71, OS_LOG_TYPE_DEBUG, "%{public}s Added flow %{public,uuid_t}.16P to %{public,uuid_t}.16P", &buf, 0x2Cu);
  }

  v72 = nw_path_flow_registration_create(v18, &out[16]);
  v27 = v72;
  if (!v72)
  {
    goto LABEL_152;
  }

  v73 = *(v72 + 148);
  *(v72 + 148) = v73 | 1;
  if (a3)
  {
    *(v72 + 148) = v73 | 5;
    *v72->nexus_agent = *out;
  }

  if (WORD1(v106))
  {
    v74 = *(&v107 + 4);
    if (*(&v107 + 4))
    {
      v72->flow_stats_area = *(&v107 + 4);
      *v74 = DWORD1(v106);
      v72->flow_stats_area->var0.var0.var0.var1 = DWORD2(v106);
    }
  }

LABEL_153:

  return v27;
}

NWConcrete_nw_path_flow_registration *nw_path_flow_registration_create(NWConcrete_nw_path_evaluator *a1, unsigned __int8 *a2)
{
  *&v36[13] = *MEMORY[0x1E69E9840];
  v4 = a1;
  internal = nw_path_flow_registration_create_internal();
  v6 = internal;
  if (!internal)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v13 = gLogObj;
    *buf = 136446210;
    v34 = "nw_path_flow_registration_create";
    v14 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (__nwlog_fault(v14, &type, &v31))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v15 = gLogObj;
        v16 = type;
        if (os_log_type_enabled(v15, type))
        {
          *buf = 136446210;
          v34 = "nw_path_flow_registration_create";
          _os_log_impl(&dword_181A37000, v15, v16, "%{public}s [[NW_CONCRETE_CLASS_NAME(nw_path_flow_registration) alloc] init] failed", buf, 0xCu);
        }
      }

      else if (v31 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v15 = gLogObj;
        v19 = type;
        v20 = os_log_type_enabled(v15, type);
        if (backtrace_string)
        {
          if (v20)
          {
            *buf = 136446466;
            v34 = "nw_path_flow_registration_create";
            v35 = 2082;
            *v36 = backtrace_string;
            _os_log_impl(&dword_181A37000, v15, v19, "%{public}s [[NW_CONCRETE_CLASS_NAME(nw_path_flow_registration) alloc] init] failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          if (!v14)
          {
            goto LABEL_52;
          }

          goto LABEL_42;
        }

        if (v20)
        {
          *buf = 136446210;
          v34 = "nw_path_flow_registration_create";
          _os_log_impl(&dword_181A37000, v15, v19, "%{public}s [[NW_CONCRETE_CLASS_NAME(nw_path_flow_registration) alloc] init] failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v15 = gLogObj;
        v21 = type;
        if (os_log_type_enabled(v15, type))
        {
          *buf = 136446210;
          v34 = "nw_path_flow_registration_create";
          _os_log_impl(&dword_181A37000, v15, v21, "%{public}s [[NW_CONCRETE_CLASS_NAME(nw_path_flow_registration) alloc] init] failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v14)
    {
LABEL_52:
      v12 = 0;
      goto LABEL_53;
    }

LABEL_42:
    free(v14);
    goto LABEL_52;
  }

  *internal->registration_id = *a2;
  objc_storeStrong(&internal->parent_evaluator, a1);
  os_unfair_lock_lock(v4 + 24);
  v7 = *(v4 + 25);
  *(v4 + 25) = v7 + 1;
  os_unfair_lock_unlock(v4 + 24);
  v8 = nw_parameters_copy_context(*(v4 + 1));
  globals_for_path = nw_context_get_globals_for_path(v8);

  os_unfair_lock_lock((globals_for_path + 116));
  if (v7 > *(globals_for_path + 120))
  {
    *(globals_for_path + 120) = v7;
  }

  v10 = *(globals_for_path + 40);
  if (!v10)
  {
    v10 = nw_hash_table_create_internal(0x11u, 0, nw_flow_registration_get_key, nw_flow_registration_key_hash, nw_flow_registration_matches_key, 0, 0);
    if (v10)
    {
      *(v10 + 56) &= ~2u;
      *(globals_for_path + 40) = v10;
      goto LABEL_7;
    }

    *(globals_for_path + 40) = 0;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v22 = gLogObj;
    *buf = 136446210;
    v34 = "nw_path_flow_registration_create";
    v23 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (__nwlog_fault(v23, &type, &v31))
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
          v34 = "nw_path_flow_registration_create";
          _os_log_impl(&dword_181A37000, v24, v25, "%{public}s nw_hash_table_create_no_lock failed", buf, 0xCu);
        }
      }

      else if (v31 == 1)
      {
        v26 = __nw_create_backtrace_string();
        v24 = __nwlog_obj();
        v27 = type;
        v28 = os_log_type_enabled(v24, type);
        if (v26)
        {
          if (v28)
          {
            *buf = 136446466;
            v34 = "nw_path_flow_registration_create";
            v35 = 2082;
            *v36 = v26;
            _os_log_impl(&dword_181A37000, v24, v27, "%{public}s nw_hash_table_create_no_lock failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v26);
          if (!v23)
          {
            goto LABEL_51;
          }

          goto LABEL_50;
        }

        if (v28)
        {
          *buf = 136446210;
          v34 = "nw_path_flow_registration_create";
          _os_log_impl(&dword_181A37000, v24, v27, "%{public}s nw_hash_table_create_no_lock failed, no backtrace", buf, 0xCu);
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
          v34 = "nw_path_flow_registration_create";
          _os_log_impl(&dword_181A37000, v24, v29, "%{public}s nw_hash_table_create_no_lock failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v23)
    {
LABEL_51:
      os_unfair_lock_unlock((globals_for_path + 116));
      goto LABEL_52;
    }

LABEL_50:
    free(v23);
    goto LABEL_51;
  }

LABEL_7:
  type = OS_LOG_TYPE_DEFAULT;
  v11 = nw_hash_table_add_object(v10, v6, &type);
  os_unfair_lock_unlock((globals_for_path + 116));
  if (type != OS_LOG_TYPE_INFO || !v11)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v17 = gLogObj;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v34 = "nw_path_flow_registration_create";
      v35 = 1042;
      *v36 = 16;
      v36[2] = 2098;
      *&v36[3] = v6->registration_id;
      _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_ERROR, "%{public}s Failed to add flow registration for %{public,uuid_t}.16P", buf, 0x1Cu);
    }

    goto LABEL_52;
  }

  v12 = v6;
LABEL_53:

  return v12;
}

NWConcrete_nw_path_flow_registration *nw_path_flow_registration_create_internal()
{
  v18 = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(NWConcrete_nw_path_flow_registration);
  v1 = v0;
  if (v0)
  {
    v2 = v0;
    goto LABEL_10;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v3 = gLogObj;
  *buf = 136446210;
  v15 = "nw_path_flow_registration_create_internal";
  v4 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v12 = 0;
  if (!__nwlog_fault(v4, &type, &v12))
  {
    goto LABEL_8;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    v6 = type;
    if (os_log_type_enabled(v5, type))
    {
      *buf = 136446210;
      v15 = "nw_path_flow_registration_create_internal";
      _os_log_impl(&dword_181A37000, v5, v6, "%{public}s [[NW_CONCRETE_CLASS_NAME(nw_path_flow_registration) alloc] init] failed", buf, 0xCu);
    }

LABEL_7:

LABEL_8:
    if (!v4)
    {
      goto LABEL_10;
    }

LABEL_9:
    free(v4);
    goto LABEL_10;
  }

  if (v12 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    v11 = type;
    if (os_log_type_enabled(v5, type))
    {
      *buf = 136446210;
      v15 = "nw_path_flow_registration_create_internal";
      _os_log_impl(&dword_181A37000, v5, v11, "%{public}s [[NW_CONCRETE_CLASS_NAME(nw_path_flow_registration) alloc] init] failed, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_7;
  }

  backtrace_string = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v5 = gLogObj;
  v9 = type;
  v10 = os_log_type_enabled(v5, type);
  if (!backtrace_string)
  {
    if (v10)
    {
      *buf = 136446210;
      v15 = "nw_path_flow_registration_create_internal";
      _os_log_impl(&dword_181A37000, v5, v9, "%{public}s [[NW_CONCRETE_CLASS_NAME(nw_path_flow_registration) alloc] init] failed, no backtrace", buf, 0xCu);
    }

    goto LABEL_7;
  }

  if (v10)
  {
    *buf = 136446466;
    v15 = "nw_path_flow_registration_create_internal";
    v16 = 2082;
    v17 = backtrace_string;
    _os_log_impl(&dword_181A37000, v5, v9, "%{public}s [[NW_CONCRETE_CLASS_NAME(nw_path_flow_registration) alloc] init] failed, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(backtrace_string);
  if (v4)
  {
    goto LABEL_9;
  }

LABEL_10:

  return v1;
}

void nw_path_necp_update_evaluator(NWConcrete_nw_path_evaluator *a1, const unsigned __int8 *a2, NSObject *a3, int a4)
{
  v51 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = nw_parameters_copy_context(*(v7 + 1));
  nw_context_assert_queue(v8);
  v9 = _nw_path_create(*(v7 + 2), *(v7 + 1));
  v10 = v9;
  if (v9)
  {
    if (a4)
    {
      if (v8)
      {
        v11 = v8[33] != 4;
      }

      else
      {
        v11 = 1;
      }
    }

    else
    {
      v11 = 0;
    }

    _nw_path_set_group_descriptor(v9, *(v7 + 3));
    _nw_path_set_browse_descriptor(v10, *(v7 + 4));
    _nw_path_set_advertise_descriptor(v10, *(v7 + 5));
    _nw_path_set_is_listener(v10, (*(v7 + 107) >> 1) & 1);
    _nw_path_set_custom_ethertype(v10, *(v7 + 52));
    _nw_path_set_custom_ip_protocol(v10, *(v7 + 106));
    _nw_path_set_client_id(v10, v7 + 80);
    if (a2 && a3 && nw_path_parse_necp_result(v10, a2, a3))
    {
      v19 = v10;
      _nw_path_snapshot_path(v19);

      os_unfair_lock_lock(v7 + 24);
      v20 = *(v7 + 6);
      objc_storeStrong(v7 + 6, v10);
      v21 = _nw_path_override_viable(v20);
      _nw_path_set_override_viable(v19, v21);
      v22 = _nw_path_copy_override_local_endpoint(v20);
      _nw_path_set_override_local_endpoint(v19, v22);

      v23 = _nw_path_copy_override_interface(v20);
      _nw_path_set_override_interface(v19, v23);

      if ((_nw_path_is_equal_inner(v19, v20, 0) & 1) == 0)
      {
        _nw_path_set_changed_from_previous(v19, 1);
      }

      v24 = _Block_copy(*(v7 + 8));
      v25 = *(v7 + 7);
      os_unfair_lock_unlock(v7 + 24);
      v33 = v24;
      if (v25)
      {
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = ___ZL29nw_path_necp_update_evaluatorP28NWConcrete_nw_path_evaluatorPKhmb_block_invoke;
        block[3] = &unk_1E6A39CC0;
        v35 = v7;
        v38 = v11;
        v36 = v19;
        v37 = v24;
        dispatch_async(v25, block);
      }

      else
      {
        v28 = v7;
        os_unfair_lock_lock(v7 + 24);
        v29 = *(v7 + 107);
        os_unfair_lock_unlock(v7 + 24);

        if ((v29 & 0x20) == 0)
        {
          if ((*(v7 + 107) & 0x40) != 0 && v11)
          {
            if (__nwlog_path_log::onceToken != -1)
            {
              dispatch_once(&__nwlog_path_log::onceToken, &__block_literal_global_52);
            }

            v30 = gpathLogObj;
            if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
            {
              logging_description = nw_endpoint_get_logging_description(*(v7 + 2));
              v32 = *(v7 + 1);
              *buf = 136447490;
              v42 = "nw_path_necp_update_evaluator";
              v43 = 1042;
              *v44 = 16;
              *&v44[4] = 2098;
              *&v44[6] = v7 + 80;
              v45 = 2082;
              v46 = logging_description;
              v47 = 2112;
              v48 = v32;
              v49 = 2112;
              v50 = v19;
              _os_log_impl(&dword_181A37000, v30, OS_LOG_TYPE_INFO, "%{public}s [%{public,uuid_t}.16P %{public}s %@]\n\tpath: %@", buf, 0x3Au);
            }
          }

          (v33)[2](v33, v19);
        }
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v26 = gLogObj;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v42 = "nw_path_necp_update_evaluator";
        v43 = 2048;
        *v44 = a3;
        _os_log_impl(&dword_181A37000, v26, OS_LOG_TYPE_ERROR, "%{public}s Path failed to parse %zu bytes from NECP", buf, 0x16u);
      }
    }

    goto LABEL_43;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v12 = gLogObj;
  *buf = 136446210;
  v42 = "nw_path_necp_update_evaluator";
  v13 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v39 = 0;
  if (!__nwlog_fault(v13, &type, &v39))
  {
    goto LABEL_10;
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
      v42 = "nw_path_necp_update_evaluator";
      _os_log_impl(&dword_181A37000, v14, v15, "%{public}s nw_path_create failed", buf, 0xCu);
    }

LABEL_9:

LABEL_10:
    if (!v13)
    {
      goto LABEL_43;
    }

LABEL_11:
    free(v13);
    goto LABEL_43;
  }

  if (v39 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v14 = gLogObj;
    v27 = type;
    if (os_log_type_enabled(v14, type))
    {
      *buf = 136446210;
      v42 = "nw_path_necp_update_evaluator";
      _os_log_impl(&dword_181A37000, v14, v27, "%{public}s nw_path_create failed, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_9;
  }

  backtrace_string = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v14 = gLogObj;
  v17 = type;
  v18 = os_log_type_enabled(v14, type);
  if (!backtrace_string)
  {
    if (v18)
    {
      *buf = 136446210;
      v42 = "nw_path_necp_update_evaluator";
      _os_log_impl(&dword_181A37000, v14, v17, "%{public}s nw_path_create failed, no backtrace", buf, 0xCu);
    }

    goto LABEL_9;
  }

  if (v18)
  {
    *buf = 136446466;
    v42 = "nw_path_necp_update_evaluator";
    v43 = 2082;
    *v44 = backtrace_string;
    _os_log_impl(&dword_181A37000, v14, v17, "%{public}s nw_path_create failed, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(backtrace_string);
  if (v13)
  {
    goto LABEL_11;
  }

LABEL_43:
}

uint64_t _nw_endpoint_is_equal(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  v8 = a3;
  LOBYTE(a3) = sub_181B0A11C(v6, &v8);

  return a3 & 1;
}

unint64_t sub_181B84248()
{
  v45 = *MEMORY[0x1E69E9840];
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 42);
  if (v3 <= 1)
  {
    v11 = *(v0 + 32);
    if (*(v0 + 42))
    {
      v19 = *(v0 + 40);
      v37 = *v0;
      v38 = v2;
      v39 = v1;
      v40 = v11;
      v41 = v19;
      v42 = 1;
      v43 = *(v0 + 43);
      v44 = *(v0 + 59);
      result = sub_181C1EE60();
      if ((v22 & 0x100000000) != 0)
      {
        __break(1u);
        return result;
      }

      v23 = result;
      *&v37.sa_len = result;
      *&v37.sa_data[2] = 0;
      *&v37.sa_data[6] = v20;
      v38 = v21;
      LODWORD(v39) = v22;
      v36 = 0x2336765049;
      v24 = swift_slowAlloc();
      if (!getnameinfo(&v37, v23, v24, 0x64u, 0, 0, 2))
      {
        sub_182AD3158();
      }

      MEMORY[0x1865DF520](v24, -1, -1);
      v30 = swift_slowAlloc();
      v31 = sub_182AD3048();
      __nwlog_create_hash_from_private_string((v31 + 32), v30);

      v32 = sub_182AD3158();
      v34 = v33;
      MEMORY[0x1865DF520](v30, -1, -1);

      MEMORY[0x1865D9CA0](v32, v34);

      MEMORY[0x1865D9CA0](46, 0xE100000000000000);
    }

    else
    {
      *&v37.sa_len = 528;
      *v37.sa_data = bswap32(v11) >> 16;
      *&v37.sa_data[2] = v2;
      *&v37.sa_data[6] = 0;
      v36 = 0x2334765049;
      v12 = swift_slowAlloc();
      if (!getnameinfo(&v37, 0x10u, v12, 0x64u, 0, 0, 2))
      {
        sub_182AD3158();
      }

      MEMORY[0x1865DF520](v12, -1, -1);
      v25 = swift_slowAlloc();
      v26 = sub_182AD3048();
      __nwlog_create_hash_from_private_string((v26 + 32), v25);

      v27 = sub_182AD3158();
      v29 = v28;
      MEMORY[0x1865DF520](v25, -1, -1);

      MEMORY[0x1865D9CA0](v27, v29);

      MEMORY[0x1865D9CA0](58, 0xE100000000000000);
    }

    v35 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v35);

    return v36;
  }

  else
  {
    if (v3 == 2)
    {
      sub_182AD3BA8();

      *&v37.sa_len = 0xD000000000000012;
      *&v37.sa_data[6] = 0x8000000182BDF850;
      v13 = swift_slowAlloc();
      v14 = sub_182AD3048();
      __nwlog_create_hash_from_private_string((v14 + 32), v13);

      v15 = sub_182AD3158();
      v17 = v16;
      MEMORY[0x1865DF520](v13, -1, -1);
      MEMORY[0x1865D9CA0](v15, v17);
      goto LABEL_9;
    }

    if (v3 == 3)
    {
      *&v37.sa_len = 0x4B434F53565F4641;
      *&v37.sa_data[6] = 0xEB0000000022233ALL;
      v4 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v4);

      MEMORY[0x1865D9CA0](0x3D54524F50202CLL, 0xE700000000000000);
      v5 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v5);

      v6 = swift_slowAlloc();
      v7 = sub_182AD3048();
      __nwlog_create_hash_from_private_string((v7 + 32), v6);

      v8 = sub_182AD3158();
      v10 = v9;
      MEMORY[0x1865DF520](v6, -1, -1);

      MEMORY[0x1865D9CA0](v8, v10);
LABEL_9:

      MEMORY[0x1865D9CA0](34, 0xE100000000000000);
      return *&v37.sa_len;
    }

    return 0x4550534E555F4641;
  }
}

uint64_t sub_181B8477C(char a1, uint64_t a2)
{
  v3 = *v2;
  v4 = (*v2 + 16);
  v5 = *v4;
  if (*v4 >= a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A400);
    v8 = swift_allocObject();
    v11 = *(v3 + 24);
    *(v8 + 16) = v5;
    *(v8 + 24) = v11;
    if (v11 >= 1)
    {
      sub_1820E50AC(v8 + 16, (v8 + 40), v4, (v3 + 40));
    }
  }

  else
  {
    sub_182AD2398();
    if (a1)
    {
      v7 = *(v3 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A400);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 40;
      if (v9 < 40)
      {
        v10 = v9 - 25;
      }

      *(v8 + 16) = v10 >> 4;
      *(v8 + 24) = v7;
      *(v8 + 32) = 0;
      if (v7 >= 1)
      {
        sub_181EDDEE0(v8 + 16, (v8 + 40), v4, (v3 + 40));
        *(v3 + 24) = 0;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A400);
      v8 = swift_allocObject();
      v12 = _swift_stdlib_malloc_size(v8);
      v13 = v12 - 40;
      if (v12 < 40)
      {
        v13 = v12 - 25;
      }

      v14 = *(v3 + 24);
      *(v8 + 16) = v13 >> 4;
      *(v8 + 24) = v14;
      *(v8 + 32) = 0;
      if (v14 >= 1)
      {
        sub_181F47184(v8 + 16, (v8 + 40), v4, (v3 + 40));
      }
    }
  }

  *v2 = v8;
  return result;
}

uint64_t __nw_path_create_necp_parameters_block_invoke_12(uint64_t a1, _OWORD *a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = *(*(*(a1 + 32) + 8) + 24);
  if (!v3)
  {
    v18 = __nwlog_obj();
    *buf = 136446210;
    v36 = "nw_necp_append_tlv";
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v33 = 0;
    if (!__nwlog_fault(v6, &type, &v33))
    {
      goto LABEL_17;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v19 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_81;
      }

      *buf = 136446210;
      v36 = "nw_necp_append_tlv";
      v20 = "%{public}s called with null tlv_start";
      goto LABEL_73;
    }

    if (v33 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v19 = type;
      v24 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (!v24)
        {
          goto LABEL_16;
        }

        *buf = 136446466;
        v36 = "nw_necp_append_tlv";
        v37 = 2082;
        *v38 = backtrace_string;
        v13 = "%{public}s called with null tlv_start, dumping backtrace:%{public}s";
        goto LABEL_48;
      }

      if (!v24)
      {
        goto LABEL_81;
      }

      *buf = 136446210;
      v36 = "nw_necp_append_tlv";
      v20 = "%{public}s called with null tlv_start, no backtrace";
    }

    else
    {
      v7 = __nwlog_obj();
      v19 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_81;
      }

      *buf = 136446210;
      v36 = "nw_necp_append_tlv";
      v20 = "%{public}s called with null tlv_start, backtrace limit exceeded";
    }

LABEL_73:
    v30 = v7;
    v31 = v19;
    v32 = 12;
    goto LABEL_80;
  }

  v4 = *(a1 + 40);
  if (!v4)
  {
    v21 = __nwlog_obj();
    *buf = 136446210;
    v36 = "nw_necp_append_tlv";
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v33 = 0;
    if (!__nwlog_fault(v6, &type, &v33))
    {
      goto LABEL_17;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v19 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_81;
      }

      *buf = 136446210;
      v36 = "nw_necp_append_tlv";
      v20 = "%{public}s called with null beyond";
      goto LABEL_73;
    }

    if (v33 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v19 = type;
      v25 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (!v25)
        {
          goto LABEL_16;
        }

        *buf = 136446466;
        v36 = "nw_necp_append_tlv";
        v37 = 2082;
        *v38 = backtrace_string;
        v13 = "%{public}s called with null beyond, dumping backtrace:%{public}s";
LABEL_48:
        v14 = v7;
        v15 = v19;
        v16 = 22;
LABEL_15:
        _os_log_impl(&dword_181A37000, v14, v15, v13, buf, v16);
LABEL_16:

        free(backtrace_string);
        goto LABEL_17;
      }

      if (!v25)
      {
        goto LABEL_81;
      }

      *buf = 136446210;
      v36 = "nw_necp_append_tlv";
      v20 = "%{public}s called with null beyond, no backtrace";
    }

    else
    {
      v7 = __nwlog_obj();
      v19 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_81;
      }

      *buf = 136446210;
      v36 = "nw_necp_append_tlv";
      v20 = "%{public}s called with null beyond, backtrace limit exceeded";
    }

    goto LABEL_73;
  }

  if (v3 >= v4)
  {
    v22 = __nwlog_obj();
    *buf = 136447234;
    v36 = "nw_necp_append_tlv";
    v37 = 2048;
    *v38 = v3;
    *&v38[8] = 2048;
    *v39 = v4;
    *&v39[8] = 1024;
    *v40 = 150;
    *&v40[4] = 1024;
    *&v40[6] = 16;
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v33 = 0;
    if (!__nwlog_fault(v6, &type, &v33))
    {
      goto LABEL_17;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v23 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_81;
      }

      *buf = 136447234;
      v36 = "nw_necp_append_tlv";
      v37 = 2048;
      *v38 = v3;
      *&v38[8] = 2048;
      *v39 = v4;
      *&v39[8] = 1024;
      *v40 = 150;
      *&v40[4] = 1024;
      *&v40[6] = 16;
      v20 = "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u";
    }

    else if (v33 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v23 = type;
      v28 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (!v28)
        {
          goto LABEL_16;
        }

        *buf = 136447490;
        v36 = "nw_necp_append_tlv";
        v37 = 2048;
        *v38 = v3;
        *&v38[8] = 2048;
        *v39 = v4;
        *&v39[8] = 1024;
        *v40 = 150;
        *&v40[4] = 1024;
        *&v40[6] = 16;
        *v41 = 2082;
        *&v41[2] = backtrace_string;
        v13 = "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, dumping backtrace:%{public}s";
        v14 = v7;
        v15 = v23;
        v16 = 54;
        goto LABEL_15;
      }

      if (!v28)
      {
        goto LABEL_81;
      }

      *buf = 136447234;
      v36 = "nw_necp_append_tlv";
      v37 = 2048;
      *v38 = v3;
      *&v38[8] = 2048;
      *v39 = v4;
      *&v39[8] = 1024;
      *v40 = 150;
      *&v40[4] = 1024;
      *&v40[6] = 16;
      v20 = "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, no backtrace";
    }

    else
    {
      v7 = __nwlog_obj();
      v23 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_81;
      }

      *buf = 136447234;
      v36 = "nw_necp_append_tlv";
      v37 = 2048;
      *v38 = v3;
      *&v38[8] = 2048;
      *v39 = v4;
      *&v39[8] = 1024;
      *v40 = 150;
      *&v40[4] = 1024;
      *&v40[6] = 16;
      v20 = "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, backtrace limit exceeded";
    }

    v30 = v7;
    v31 = v23;
    v32 = 44;
LABEL_80:
    _os_log_impl(&dword_181A37000, v30, v31, v20, buf, v32);
    goto LABEL_81;
  }

  if (v4 - v3 <= 0x14)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    *buf = 136447490;
    v36 = "nw_necp_append_tlv";
    v37 = 2048;
    *v38 = v3;
    *&v38[8] = 2048;
    *v39 = 21;
    *&v39[8] = 2048;
    *v40 = v4;
    *&v40[8] = 1024;
    *v41 = 150;
    *&v41[4] = 1024;
    *&v41[6] = 16;
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v33 = 0;
    if (!__nwlog_fault(v6, &type, &v33))
    {
      goto LABEL_17;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_26;
      }

      *buf = 136447490;
      v36 = "nw_necp_append_tlv";
      v37 = 2048;
      *v38 = v3;
      *&v38[8] = 2048;
      *v39 = 21;
      *&v39[8] = 2048;
      *v40 = v4;
      *&v40[8] = 1024;
      *v41 = 150;
      *&v41[4] = 1024;
      *&v41[6] = 16;
      v9 = "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u";
      goto LABEL_25;
    }

    if (v33 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_26;
      }

      *buf = 136447490;
      v36 = "nw_necp_append_tlv";
      v37 = 2048;
      *v38 = v3;
      *&v38[8] = 2048;
      *v39 = 21;
      *&v39[8] = 2048;
      *v40 = v4;
      *&v40[8] = 1024;
      *v41 = 150;
      *&v41[4] = 1024;
      *&v41[6] = 16;
      v9 = "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, backtrace limit exceeded";
      goto LABEL_25;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    v8 = type;
    v12 = os_log_type_enabled(v7, type);
    if (!backtrace_string)
    {
      if (!v12)
      {
        goto LABEL_26;
      }

      *buf = 136447490;
      v36 = "nw_necp_append_tlv";
      v37 = 2048;
      *v38 = v3;
      *&v38[8] = 2048;
      *v39 = 21;
      *&v39[8] = 2048;
      *v40 = v4;
      *&v40[8] = 1024;
      *v41 = 150;
      *&v41[4] = 1024;
      *&v41[6] = 16;
      v9 = "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, no backtrace";
LABEL_25:
      _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0x36u);
LABEL_26:

      if (!v6)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    if (!v12)
    {
      goto LABEL_16;
    }

    *buf = 136447746;
    v36 = "nw_necp_append_tlv";
    v37 = 2048;
    *v38 = v3;
    *&v38[8] = 2048;
    *v39 = 21;
    *&v39[8] = 2048;
    *v40 = v4;
    *&v40[8] = 1024;
    *v41 = 150;
    *&v41[4] = 1024;
    *&v41[6] = 16;
    v42 = 2082;
    v43 = backtrace_string;
    v13 = "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, dumping backtrace:%{public}s";
    v14 = v7;
    v15 = v8;
    v16 = 64;
    goto LABEL_15;
  }

  *v3 = -106;
  *(v3 + 1) = 16;
  if (!a2)
  {
    v26 = __nwlog_obj();
    *buf = 136446722;
    v36 = "nw_necp_append_tlv";
    v37 = 1024;
    *v38 = 150;
    *&v38[4] = 1024;
    *&v38[6] = 16;
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v33 = 0;
    if (!__nwlog_fault(v6, &type, &v33))
    {
      goto LABEL_17;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v27 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446722;
        v36 = "nw_necp_append_tlv";
        v37 = 1024;
        *v38 = 150;
        *&v38[4] = 1024;
        *&v38[6] = 16;
        v20 = "%{public}s type=%u length=%u but value is NULL";
LABEL_79:
        v30 = v7;
        v31 = v27;
        v32 = 24;
        goto LABEL_80;
      }
    }

    else
    {
      if (v33 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v7 = __nwlog_obj();
        v27 = type;
        v29 = os_log_type_enabled(v7, type);
        if (backtrace_string)
        {
          if (!v29)
          {
            goto LABEL_16;
          }

          *buf = 136446978;
          v36 = "nw_necp_append_tlv";
          v37 = 1024;
          *v38 = 150;
          *&v38[4] = 1024;
          *&v38[6] = 16;
          *v39 = 2082;
          *&v39[2] = backtrace_string;
          v13 = "%{public}s type=%u length=%u but value is NULL, dumping backtrace:%{public}s";
          v14 = v7;
          v15 = v27;
          v16 = 34;
          goto LABEL_15;
        }

        if (!v29)
        {
          goto LABEL_81;
        }

        *buf = 136446722;
        v36 = "nw_necp_append_tlv";
        v37 = 1024;
        *v38 = 150;
        *&v38[4] = 1024;
        *&v38[6] = 16;
        v20 = "%{public}s type=%u length=%u but value is NULL, no backtrace";
        goto LABEL_79;
      }

      v7 = __nwlog_obj();
      v27 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446722;
        v36 = "nw_necp_append_tlv";
        v37 = 1024;
        *v38 = 150;
        *&v38[4] = 1024;
        *&v38[6] = 16;
        v20 = "%{public}s type=%u length=%u but value is NULL, backtrace limit exceeded";
        goto LABEL_79;
      }
    }

LABEL_81:

LABEL_17:
    if (!v6)
    {
LABEL_19:
      v10 = 0;
      goto LABEL_20;
    }

LABEL_18:
    free(v6);
    goto LABEL_19;
  }

  *(v3 + 5) = *a2;
  v10 = v3 + 21;
LABEL_20:
  *(*(*(a1 + 32) + 8) + 24) = v10;
  return 1;
}

void *sub_181B855B4(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = result[1];
  v5 = result[2];
  v7 = __OFADD__(v5, v4);
  v6 = v5 + v4;
  if (!v7)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      v7 = __OFSUB__(v6, *result);
      if (v6 < *result || (v6 -= *result, !v7))
      {
LABEL_9:
        v8 = (a2 + 16 * v6);
        *v8 = a3;
        v8[1] = a4;
        v7 = __OFADD__(v4, 1);
        v9 = v4 + 1;
        if (!v7)
        {
          result[1] = v9;
          return result;
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v6 < 0)
    {
      v7 = __OFADD__(v6, *result);
      v6 += *result;
      if (v7)
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

uint64_t nw_endpoint_transform_receive_report(void *a1, uint64_t a2, unsigned int a3, _WORD *a4, void *a5, void *a6)
{
  v166 = *MEMORY[0x1E69E9840];
  v10 = a1;
  v131 = a5;
  v11 = a6;
  v132 = v11;
  v133 = v10;
  if (!v11)
  {
    v99 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_endpoint_transform_receive_report";
    v100 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v142 = 0;
    if (__nwlog_fault(v100, &type, &v142))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v101 = __nwlog_obj();
        v102 = type;
        if (os_log_type_enabled(v101, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_transform_receive_report";
          _os_log_impl(&dword_181A37000, v101, v102, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v142 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v101 = __nwlog_obj();
        v104 = type;
        v105 = os_log_type_enabled(v101, type);
        if (backtrace_string)
        {
          if (v105)
          {
            *buf = 136446466;
            *&buf[4] = "nw_endpoint_transform_receive_report";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v101, v104, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_127;
        }

        if (v105)
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_transform_receive_report";
          _os_log_impl(&dword_181A37000, v101, v104, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v101 = __nwlog_obj();
        v106 = type;
        if (os_log_type_enabled(v101, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_transform_receive_report";
          _os_log_impl(&dword_181A37000, v101, v106, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_127:
    if (v100)
    {
      free(v100);
    }

    goto LABEL_18;
  }

  v12 = v11;
  v13 = v12[29];

  if (v13 == 5)
  {
    obj = a1;
    v128 = a3;
    v14 = v12;
    v15 = *(v14 + 284);

    v129 = v14;
    if ((v15 & 0x40) != 0)
    {
      goto LABEL_42;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v16 = gconnectionLogObj;
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
LABEL_41:

      v10 = v133;
      v14 = v129;
LABEL_42:
      nw_endpoint_handler_report(v14, v10, a4, v131);
      v49 = nw_endpoint_handler_copy_transform(v14);
      v50 = v49;
      v51 = (v49 + 48);
      if (*(v49 + 6) == v10)
      {
        v67 = v14;
        v67[30] = v128;

        nw_endpoint_handler_report(v67, 0, a4, 0);
      }

      else
      {
        v52 = *(v49 + 1);
        if (!v52 || !v10 || !_nw_array_contains_object(v52, v10))
        {
          goto LABEL_88;
        }

        if (*(v50 + 4) && a4 && !*v51 && *a4 == 2 && a4[1] == 8)
        {
          v53 = *(v50 + 7);
          v54 = nw_endpoint_handler_copy_endpoint(v10);
          v55 = nw_endpoint_handler_copy_endpoint_for_alternatives(v10);
          if (v55 && nw_endpoint_is_equal(v53, v54, 0) && (nw_endpoint_is_equal(v53, v55, 8) & 1) == 0)
          {
            loga = v54;
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x2020000000;
            LOBYTE(v145) = 0;
            v138[0] = MEMORY[0x1E69E9820];
            v138[1] = 3221225472;
            v138[2] = ___ZL36nw_endpoint_transform_receive_reportP30NWConcrete_nw_endpoint_handler26nw_endpoint_handler_mode_t21nw_connection_state_tP27nw_endpoint_handler_event_sPU22objcproto11OS_nw_error8NSObjectPU23objcproto12OS_nw_objectS5__block_invoke;
            v138[3] = &unk_1E6A3B3F0;
            v56 = v50;
            v139 = v56;
            v57 = v14;
            v140 = v57;
            v141 = buf;
            nw_endpoint_enumerate_alternatives(v55, v138);
            if (*(*&buf[8] + 24) == 1)
            {
              v57->event = 196615;
              nw_endpoint_handler_report(v57, 0, &v57->event.domain, 0);
              [(NWConcrete_nw_endpoint_mode_handler *)v56 cancelWithHandler:v57 forced:1];
              objc_storeStrong(v50 + 7, v55);
              nw_endpoint_transform_add_children(v57);
              nw_endpoint_transform_start_next_child(v57);
            }

            _Block_object_dispose(buf, 8);
            v54 = loga;
          }

          v10 = v133;
          v14 = v129;
        }

        if (v128 == 3)
        {
          objc_storeStrong(v51, obj);
          v58 = v129;
          v58[30] = 3;
LABEL_60:

          v59 = v129;
          v60 = v133;
          nw_endpoint_handler_report(v129, 0, a4, 0);
          v62 = *(v50 + 8);
          if (v62)
          {
            nw_queue_cancel_source(v62, v61);
            *(v50 + 8) = 0;
          }

          v63 = nw_endpoint_handler_copy_parameters(v133);
          v64 = v63;
          if (v63)
          {
            if (nw_parameters_get_upper_transport_protocol(v63) == 253)
            {
              *(v50 + 21) = 253;
              v65 = v129;
              v66 = v65[7];

              if (v66)
              {
                nw_quic_report_race_result_on_queue(v66, 1, 0);
              }

              v60 = v133;
              v59 = v129;
            }

            else
            {
              *(v50 + 21) = nw_parameters_get_ip_protocol(v64);
            }
          }

          v76 = *(v50 + 1);
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = ___ZL36nw_endpoint_transform_receive_reportP30NWConcrete_nw_endpoint_handler26nw_endpoint_handler_mode_t21nw_connection_state_tP27nw_endpoint_handler_event_sPU22objcproto11OS_nw_error8NSObjectPU23objcproto12OS_nw_objectS5__block_invoke_103;
          aBlock[3] = &unk_1E6A3B418;
          v135 = v50;
          v136 = v60;
          v77 = v59;
          v137 = v77;
          if (v76)
          {
            _nw_array_apply(v76, aBlock);
            v77 = v137;
          }

          goto LABEL_87;
        }

        if (v128 == 2 && a4)
        {
          if (*a4 != 3 || a4[1] != 5)
          {
            goto LABEL_88;
          }

          v68 = v10;
          v58 = *v51;
          *v51 = v68;
          goto LABEL_60;
        }

        if (v128 == 4)
        {
          v69 = *(v50 + 2);
          if (v69)
          {
            if (_nw_array_contains_object(v69, v10))
            {
              goto LABEL_79;
            }

            v70 = *(v50 + 2);
            if (v70)
            {
              goto LABEL_78;
            }
          }

          v71 = _nw_array_create();
          v72 = *(v50 + 2);
          *(v50 + 2) = v71;

          v70 = *(v50 + 2);
          v10 = v133;
          v14 = v129;
          if (v70)
          {
LABEL_78:
            _nw_array_append(v70, v10);
          }

LABEL_79:
          v64 = nw_endpoint_handler_copy_parameters(v10);
          if (nw_parameters_get_upper_transport_protocol(v64) == 253)
          {
            v73 = nw_endpoint_handler_copy_association(v14, 0);
            nw_quic_report_race_result_on_queue(v73, 0, 0);

            v14 = v129;
          }

          v74 = *(v50 + 2);
          if (v74)
          {
            count = _nw_array_get_count(v74);
          }

          else
          {
            count = 0;
          }

          v79 = *(v50 + 1);
          if (v79)
          {
            v80 = _nw_array_get_count(v79);
          }

          else
          {
            v80 = 0;
          }

          minimize_logging = nw_endpoint_handler_get_minimize_logging(v14);
          logging_disabled = nw_endpoint_handler_get_logging_disabled(v14);
          if (count == v80)
          {
            if (minimize_logging)
            {
              if (logging_disabled)
              {
                goto LABEL_102;
              }

              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v83 = gconnectionLogObj;
              if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
              {
                id_string = nw_endpoint_handler_get_id_string(v129);
                v108 = nw_endpoint_handler_dry_run_string(v129);
                v109 = nw_endpoint_handler_copy_endpoint(v129);
                logging_description = nw_endpoint_get_logging_description(v109);
                v111 = nw_endpoint_handler_state_string(v129);
                v112 = nw_endpoint_handler_mode_string(v129);
                v113 = nw_endpoint_handler_copy_current_path(v129);
                *buf = 136447746;
                *&buf[4] = "nw_endpoint_transform_receive_report";
                *&buf[12] = 2082;
                *&buf[14] = id_string;
                *&buf[22] = 2082;
                v145 = v108;
                v146 = 2082;
                v147 = logging_description;
                v148 = 2082;
                v149 = v111;
                v150 = 2082;
                v151 = v112;
                v152 = 2114;
                v153 = v113;
                _os_log_impl(&dword_181A37000, v83, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] all children failed", buf, 0x48u);
              }
            }

            else
            {
              if (logging_disabled)
              {
LABEL_102:
                nw_endpoint_handler_handle_failure(v14);
                v14[20] = 131079;
                nw_endpoint_handler_report(v14, 0, v14 + 40, 0);
LABEL_87:

                goto LABEL_88;
              }

              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v83 = gconnectionLogObj;
              if (os_log_type_enabled(v83, OS_LOG_TYPE_INFO))
              {
                v84 = nw_endpoint_handler_get_id_string(v129);
                v85 = nw_endpoint_handler_dry_run_string(v129);
                v86 = nw_endpoint_handler_copy_endpoint(v129);
                v87 = nw_endpoint_get_logging_description(v86);
                v88 = nw_endpoint_handler_state_string(v129);
                v89 = nw_endpoint_handler_mode_string(v129);
                v90 = nw_endpoint_handler_copy_current_path(v129);
                *buf = 136447746;
                *&buf[4] = "nw_endpoint_transform_receive_report";
                *&buf[12] = 2082;
                *&buf[14] = v84;
                *&buf[22] = 2082;
                v145 = v85;
                v146 = 2082;
                v147 = v87;
                v148 = 2082;
                v149 = v88;
                v150 = 2082;
                v151 = v89;
                v152 = 2114;
                v153 = v90;
                _os_log_impl(&dword_181A37000, v83, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] all children failed", buf, 0x48u);
              }
            }

            v14 = v129;
            goto LABEL_102;
          }

          if (minimize_logging)
          {
            if (logging_disabled)
            {
              goto LABEL_110;
            }

            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v91 = gconnectionLogObj;
            if (os_log_type_enabled(v91, OS_LOG_TYPE_DEBUG))
            {
              v114 = nw_endpoint_handler_get_id_string(v129);
              v115 = nw_endpoint_handler_dry_run_string(v129);
              v116 = nw_endpoint_handler_copy_endpoint(v129);
              v117 = nw_endpoint_get_logging_description(v116);
              v118 = nw_endpoint_handler_state_string(v129);
              v119 = nw_endpoint_handler_mode_string(v129);
              v120 = nw_endpoint_handler_copy_current_path(v129);
              *buf = 136447746;
              *&buf[4] = "nw_endpoint_transform_receive_report";
              *&buf[12] = 2082;
              *&buf[14] = v114;
              *&buf[22] = 2082;
              v145 = v115;
              v146 = 2082;
              v147 = v117;
              v148 = 2082;
              v149 = v118;
              v150 = 2082;
              v151 = v119;
              v152 = 2114;
              v153 = v120;
              _os_log_impl(&dword_181A37000, v91, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] all started children failed, start next child.", buf, 0x48u);
            }
          }

          else
          {
            if (logging_disabled)
            {
LABEL_110:
              nw_endpoint_transform_start_next_child(v14);
              goto LABEL_87;
            }

            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v91 = gconnectionLogObj;
            if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
            {
              v92 = nw_endpoint_handler_get_id_string(v129);
              v93 = nw_endpoint_handler_dry_run_string(v129);
              v94 = nw_endpoint_handler_copy_endpoint(v129);
              v95 = nw_endpoint_get_logging_description(v94);
              v96 = nw_endpoint_handler_state_string(v129);
              v97 = nw_endpoint_handler_mode_string(v129);
              v98 = nw_endpoint_handler_copy_current_path(v129);
              *buf = 136447746;
              *&buf[4] = "nw_endpoint_transform_receive_report";
              *&buf[12] = 2082;
              *&buf[14] = v92;
              *&buf[22] = 2082;
              v145 = v93;
              v146 = 2082;
              v147 = v95;
              v148 = 2082;
              v149 = v96;
              v150 = 2082;
              v151 = v97;
              v152 = 2114;
              v153 = v98;
              _os_log_impl(&dword_181A37000, v91, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] all started children failed, start next child.", buf, 0x48u);
            }
          }

          v14 = v129;
          goto LABEL_110;
        }
      }

LABEL_88:

      v26 = 1;
      goto LABEL_89;
    }

    v17 = v14;

    v18 = v17;
    v19 = *(v14 + 284);

    if (v19)
    {
      v20 = "dry-run ";
    }

    else
    {
      v20 = "";
    }

    log = v16;
    v21 = nw_endpoint_handler_copy_endpoint(v18);
    v22 = v21;
    v123 = v21;
    if (v21)
    {
      v23 = _nw_endpoint_get_logging_description(v21);
    }

    else
    {
      v23 = "<NULL>";
    }

    v27 = v18;
    v28 = v27;
    v29 = v27[30];
    if (v29 > 5)
    {
      v30 = "unknown-state";
    }

    else
    {
      v30 = off_1E6A31048[v29];
    }

    v31 = v28;
    v32 = v31;
    v33 = v12[29];
    if (v33 > 2)
    {
      switch(v33)
      {
        case 3:
          v34 = "proxy";
          goto LABEL_37;
        case 4:
          v34 = "fallback";
          goto LABEL_37;
        case 5:
          v34 = "transform";
          goto LABEL_37;
      }
    }

    else
    {
      switch(v33)
      {
        case 0:
          v34 = "path";
          goto LABEL_37;
        case 1:
          v34 = "resolver";
          goto LABEL_37;
        case 2:
          v34 = nw_endpoint_flow_mode_string(v31[33]);
LABEL_37:

          v35 = v32;
          os_unfair_lock_lock(v35 + 28);
          v36 = v35[8];
          os_unfair_lock_unlock(v35 + 28);

          v37 = v36;
          v38 = nw_endpoint_handler_get_id_string(v133);
          v39 = nw_endpoint_handler_dry_run_string(v133);
          v124 = v37;
          v40 = nw_endpoint_handler_copy_endpoint(v133);
          v41 = v40;
          v121 = v38;
          v122 = v39;
          v42 = v30;
          v43 = v20;
          if (v40)
          {
            v44 = _nw_endpoint_get_logging_description(v40);
          }

          else
          {
            v44 = "<NULL>";
          }

          v45 = (v17 + 46);

          v46 = nw_endpoint_handler_state_string(v133);
          v47 = nw_endpoint_handler_mode_string(v133);
          v48 = nw_endpoint_handler_copy_current_path(v133);
          *buf = 136449282;
          *&buf[4] = "nw_endpoint_transform_receive_report";
          *&buf[12] = 2082;
          *&buf[14] = v45;
          *&buf[22] = 2082;
          v145 = v43;
          v146 = 2082;
          v147 = v23;
          v148 = 2082;
          v149 = v42;
          v150 = 2082;
          v151 = v34;
          v152 = 2114;
          v153 = v124;
          v154 = 2082;
          v155 = v121;
          v156 = 2082;
          v157 = v122;
          v158 = 2082;
          v159 = v44;
          v160 = 2082;
          v161 = v46;
          v162 = 2082;
          v163 = v47;
          v164 = 2114;
          v165 = v48;
          v16 = log;
          _os_log_impl(&dword_181A37000, log, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] received child report: [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] ", buf, 0x84u);

          goto LABEL_41;
      }
    }

    v34 = "unknown-mode";
    goto LABEL_37;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v24 = gLogObj;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    if (v13 > 5)
    {
      v25 = "unknown-mode";
    }

    else
    {
      v25 = off_1E6A31018[v13];
    }

    *buf = 136446722;
    *&buf[4] = "nw_endpoint_transform_receive_report";
    *&buf[12] = 2082;
    *&buf[14] = v25;
    *&buf[22] = 2082;
    v145 = "transform";
    _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_DEFAULT, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
  }

LABEL_18:
  v26 = 0;
LABEL_89:

  return v26;
}

uint64_t nw_path_copy_without_parameters(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1 || (v3 = _nw_path_copy(v1, 0)) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    *buf = 136446210;
    v17 = "nw_path_copy_without_parameters";
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v14 = 0;
    if (__nwlog_fault(v6, &type, &v14))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        v8 = type;
        if (os_log_type_enabled(v7, type))
        {
          *buf = 136446210;
          v17 = "nw_path_copy_without_parameters";
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s _nw_path_copy failed", buf, 0xCu);
        }
      }

      else if (v14 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        v11 = type;
        v12 = os_log_type_enabled(v7, type);
        if (backtrace_string)
        {
          if (v12)
          {
            *buf = 136446466;
            v17 = "nw_path_copy_without_parameters";
            v18 = 2082;
            v19 = backtrace_string;
            _os_log_impl(&dword_181A37000, v7, v11, "%{public}s _nw_path_copy failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          if (!v6)
          {
            goto LABEL_11;
          }

          goto LABEL_10;
        }

        if (v12)
        {
          *buf = 136446210;
          v17 = "nw_path_copy_without_parameters";
          _os_log_impl(&dword_181A37000, v7, v11, "%{public}s _nw_path_copy failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        v13 = type;
        if (os_log_type_enabled(v7, type))
        {
          *buf = 136446210;
          v17 = "nw_path_copy_without_parameters";
          _os_log_impl(&dword_181A37000, v7, v13, "%{public}s _nw_path_copy failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v6)
    {
LABEL_11:
      v3 = 0;
      goto LABEL_12;
    }

LABEL_10:
    free(v6);
    goto LABEL_11;
  }

  v4 = _nw_parameters_create();
  _nw_path_set_parameters(v3, v4);

LABEL_12:
  return v3;
}

uint64_t nw_endpoint_handler_has_persistent_application_protocols(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v1 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __nw_endpoint_handler_has_persistent_application_protocols_block_invoke;
  v4[3] = &unk_1E6A30ED8;
  v4[4] = &v5;
  nw_parameters_internal_iterate_protocol_stack(v1, 5, 0, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_181B86C08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ProtocolOptions.serializeInParameters.getter()
{
  v1 = *v0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v5 = &v10 - v4;
  v6 = *(v1 + 128);
  swift_beginAccess();
  if ((*(v3 + 48))(&v0[v6], 1, AssociatedTypeWitness))
  {
    v7 = 0;
  }

  else
  {
    (*(v3 + 16))(v5, &v0[v6], AssociatedTypeWitness);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v7 = (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v3 + 8))(v5, AssociatedTypeWitness);
  }

  return v7 & 1;
}

void *_nw_protocol_options_copy_serialized_bytes_0(uint64_t a1, size_t *a2, char a3)
{
  sub_181AA847C(a1);
  v6 = v5;
  if (a3)
  {
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 8);
    if (((*(v8 + 24))(ObjectType, v8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = *(v5 + 8);
  }

  v9 = swift_getObjectType();
  v10 = (*(v8 + 16))(v9, v8);
  if (v10)
  {
    v11 = *(v10 + 16);
    v12 = v10;
    v13 = swift_slowAlloc();
    memmove(v13, (v12 + 32), v11);

    *a2 = v11;
    swift_unknownObjectRelease();
    return v13;
  }

LABEL_7:
  swift_unknownObjectRelease();
  return 0;
}

uint64_t nw_protocol_definition_get_serialize_in_parameters(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1[193] & 1;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_protocol_definition_get_serialize_in_parameters";
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
        v15 = "nw_protocol_definition_get_serialize_in_parameters";
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
          v15 = "nw_protocol_definition_get_serialize_in_parameters";
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
        v15 = "nw_protocol_definition_get_serialize_in_parameters";
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
        v15 = "nw_protocol_definition_get_serialize_in_parameters";
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

BOOL _nw_parameters_has_custom_proxy_configs(void *a1)
{
  v1 = a1;
  v2 = sub_1821F7618();

  return v2;
}

BOOL nw_context_has_proxies(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ((v1[152] & 0x48) == 0x40 && !dispatch_workloop_is_current())
    {
      os_unfair_lock_lock(v2 + 22);
      v7 = *(v2 + 7);
      if (v7 && !_nw_array_is_empty(v7))
      {
        v6 = 1;
      }

      else
      {
        v8 = nw_context_copy_globals_context(v2);
        v9 = *(v8 + 7);
        if (v9)
        {
          v6 = !_nw_array_is_empty(v9);
        }

        else
        {
          v6 = 0;
        }
      }

      os_unfair_lock_unlock(v2 + 22);
    }

    else
    {
      v3 = *(v2 + 7);
      if (v3 && !_nw_array_is_empty(v3))
      {
        v6 = 1;
      }

      else
      {
        v4 = nw_context_copy_globals_context(v2);
        v5 = *(v4 + 7);
        if (v5)
        {
          v6 = !_nw_array_is_empty(v5);
        }

        else
        {
          v6 = 0;
        }
      }
    }

    goto LABEL_19;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v22 = "nw_context_has_proxies";
  v12 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (__nwlog_fault(v12, &type, &v19))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v22 = "nw_context_has_proxies";
        _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null context", buf, 0xCu);
      }
    }

    else if (v19 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v16 = type;
      v17 = os_log_type_enabled(v13, type);
      if (backtrace_string)
      {
        if (v17)
        {
          *buf = 136446466;
          v22 = "nw_context_has_proxies";
          v23 = 2082;
          v24 = backtrace_string;
          _os_log_impl(&dword_181A37000, v13, v16, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_36;
      }

      if (v17)
      {
        *buf = 136446210;
        v22 = "nw_context_has_proxies";
        _os_log_impl(&dword_181A37000, v13, v16, "%{public}s called with null context, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v13 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v22 = "nw_context_has_proxies";
        _os_log_impl(&dword_181A37000, v13, v18, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_36:
  if (v12)
  {
    free(v12);
  }

  v6 = 0;
LABEL_19:

  return v6;
}

uint64_t nw_endpoint_flow_receive_report(void *a1, int a2, int a3, unsigned __int16 *a4, void *a5, void *a6)
{
  v10 = a1;
  v418 = *MEMORY[0x1E69E9840];
  v11 = a1;
  v376 = a5;
  v12 = a6;
  v378 = v12;
  v379 = v11;
  if (!v12)
  {
    v298 = __nwlog_obj();
    *buf = 136446210;
    v393 = "nw_endpoint_flow_receive_report";
    v299 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v387[0] = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v299, type, v387))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v300 = __nwlog_obj();
        v301 = type[0];
        if (os_log_type_enabled(v300, type[0]))
        {
          *buf = 136446210;
          v393 = "nw_endpoint_flow_receive_report";
          _os_log_impl(&dword_181A37000, v300, v301, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v387[0] == OS_LOG_TYPE_INFO)
      {
        backtrace_string = __nw_create_backtrace_string();
        v300 = __nwlog_obj();
        v303 = type[0];
        v304 = os_log_type_enabled(v300, type[0]);
        if (backtrace_string)
        {
          if (v304)
          {
            *buf = 136446466;
            v393 = "nw_endpoint_flow_receive_report";
            v394 = 2082;
            v395 = backtrace_string;
            _os_log_impl(&dword_181A37000, v300, v303, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_511;
        }

        if (v304)
        {
          *buf = 136446210;
          v393 = "nw_endpoint_flow_receive_report";
          _os_log_impl(&dword_181A37000, v300, v303, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v300 = __nwlog_obj();
        v305 = type[0];
        if (os_log_type_enabled(v300, type[0]))
        {
          *buf = 136446210;
          v393 = "nw_endpoint_flow_receive_report";
          _os_log_impl(&dword_181A37000, v300, v305, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_511:
    if (v299)
    {
      free(v299);
    }

    goto LABEL_18;
  }

  v13 = v12;
  v14 = v13[29];

  if (v14 == 2)
  {
    v361 = a3;
    v367 = v13;
    v15 = v13;
    v16 = *(v15 + 284);

    v377 = v15;
    if ((v16 & 0x40) != 0)
    {
LABEL_42:
      v47 = a4;
      if (a4 && *a4 == 3)
      {
        v48 = a4[1];
        if (v48 == 6)
        {
          v49 = 13;
          goto LABEL_49;
        }

        if (v48 == 9)
        {
          v49 = 15;
LABEL_49:
          *(v15 + 40) = 3;
          *(v15 + 41) = v49;
          nw_endpoint_handler_report(v15, v11, v15 + 40, v376);
LABEL_50:
          v50 = nw_endpoint_handler_copy_flow(v15);
          os_unfair_lock_lock(v50 + 220);
          v366 = 0;
          v51 = 0;
          v372 = v50;
          if (a2 == 2)
          {
            v375 = 0;
            if (v361 != 3)
            {
              goto LABEL_83;
            }

            v366 = 0;
            v51 = 0;
            if (a4 && v11)
            {
              v375 = 0;
              if (!*(v50 + 117))
              {
                if (*a4 == 3 && a4[1] == 6)
                {
                  v363 = *(v50 + 118);
                  v52 = *(v50 + 118);
                  *(v50 + 118) = 0;

                  objc_storeStrong(v50 + 117, v10);
                  v53 = nw_endpoint_handler_copy_flow(v379);
                  v54 = v53;
                  if (!*(v50 + 96) && v53 && *(v53 + 96))
                  {
                    *(v50 + 35) |= 2u;
                    nw_endpoint_flow_reinitialize_protocol_for_handling_requests(v379);
                  }

                  v375 = v379;
                  if ((*(v50 + 32) & 2) == 0)
                  {
                    goto LABEL_82;
                  }

                  v55 = __nwlog_obj();
                  *buf = 136446210;
                  v393 = "nw_endpoint_flow_receive_report";
                  v56 = _os_log_send_and_compose_impl();

                  type[0] = OS_LOG_TYPE_ERROR;
                  v387[0] = OS_LOG_TYPE_DEFAULT;
                  if (__nwlog_fault(v56, type, v387))
                  {
                    if (type[0] == OS_LOG_TYPE_FAULT)
                    {
                      v57 = __nwlog_obj();
                      v58 = type[0];
                      if (os_log_type_enabled(v57, type[0]))
                      {
                        *buf = 136446210;
                        v393 = "nw_endpoint_flow_receive_report";
                        _os_log_impl(&dword_181A37000, v57, v58, "%{public}s leaf flow had child flow become ready", buf, 0xCu);
                      }
                    }

                    else if (v387[0] == OS_LOG_TYPE_INFO)
                    {
                      v59 = __nw_create_backtrace_string();
                      v57 = __nwlog_obj();
                      v60 = type[0];
                      v61 = os_log_type_enabled(v57, type[0]);
                      if (v59)
                      {
                        if (v61)
                        {
                          *buf = 136446466;
                          v393 = "nw_endpoint_flow_receive_report";
                          v394 = 2082;
                          v395 = v59;
                          _os_log_impl(&dword_181A37000, v57, v60, "%{public}s leaf flow had child flow become ready, dumping backtrace:%{public}s", buf, 0x16u);
                        }

                        free(v59);
                        goto LABEL_80;
                      }

                      if (v61)
                      {
                        *buf = 136446210;
                        v393 = "nw_endpoint_flow_receive_report";
                        _os_log_impl(&dword_181A37000, v57, v60, "%{public}s leaf flow had child flow become ready, no backtrace", buf, 0xCu);
                      }
                    }

                    else
                    {
                      v57 = __nwlog_obj();
                      v62 = type[0];
                      if (os_log_type_enabled(v57, type[0]))
                      {
                        *buf = 136446210;
                        v393 = "nw_endpoint_flow_receive_report";
                        _os_log_impl(&dword_181A37000, v57, v62, "%{public}s leaf flow had child flow become ready, backtrace limit exceeded", buf, 0xCu);
                      }
                    }
                  }

LABEL_80:
                  if (v56)
                  {
                    free(v56);
                  }

LABEL_82:

                  v366 = 1;
                  v11 = v379;
                  v47 = a4;
                  v51 = v363;
                  v15 = v377;
                  goto LABEL_83;
                }

                v51 = 0;
                v375 = 0;
                v366 = 0;
              }

LABEL_83:
              v364 = v51;
              LOBYTE(v63) = 0;
              v64 = *(v50 + 117);
              if (v47 && v64 == v15)
              {
                v65 = *v47;
                if (v65 == 1)
                {
                  v66 = v47[1];
                  if (v66 > 6)
                  {
                    LOBYTE(v63) = 0;
                    if (a2 != 2)
                    {
                      goto LABEL_108;
                    }
                  }

                  else
                  {
                    v63 = 0x68u >> v66;
                    if (a2 != 2)
                    {
                      goto LABEL_108;
                    }
                  }

                  goto LABEL_94;
                }

                if (v65 == 3)
                {
                  LOBYTE(v63) = v47[1] == 8;
                  if (a2 != 2)
                  {
                    goto LABEL_108;
                  }

LABEL_94:
                  if (v47 && !v64 && *v47 == 3 && v47[1] == 9)
                  {
                    v67 = *(v50 + 118);
                    if (!v67)
                    {
                      v68 = _nw_array_create();
                      v69 = *(v50 + 118);
                      *(v50 + 118) = v68;

                      v47 = a4;
                      v67 = *(v50 + 118);
                      v11 = v379;
                      v15 = v377;
                    }

                    if (v67 && v11)
                    {
                      if (_nw_array_contains_object(v67, v11))
                      {
LABEL_128:
                        v370 = 0;
LABEL_129:
                        os_unfair_lock_unlock(v50 + 220);
                        if ((v63 & 1) == 0)
                        {
                          goto LABEL_131;
                        }

                        goto LABEL_130;
                      }

                      v67 = *(v50 + 118);
                    }

                    if (v67 && v11)
                    {
                      _nw_array_append(v67, v11);
                    }

LABEL_125:
                    v370 = v11;
                    v366 = 1;
                    goto LABEL_129;
                  }

LABEL_108:
                  if (v47 && v64 == v11 && (*(v50 + 32) & 1) != 0 && *v47 == 1)
                  {
                    v70 = v47[1];
                    if (a2 != 2 || v70 == 7)
                    {
                      os_unfair_lock_unlock(v50 + 220);
                      if (v70 == 7)
                      {
                        nw_endpoint_flow_cleanup_protocol(v15, v50 + 376, 1);
                        *(v50 + 354) &= ~1u;
                        nw_endpoint_flow_initialize_protocol(v15, v50 + 376, *(v50 + 32) & 1);
                        v112 = *(v50 + 117);
                        *(v50 + 117) = 0;

                        v113 = v377;
                        v113[30] = 2;

                        v11 = v379;
                        v15 = v377;
                        nw_endpoint_handler_report(v113, 0, a4, 0);
                        if (!v375)
                        {
                          v370 = 0;
                          goto LABEL_427;
                        }

                        v370 = 0;
LABEL_132:
                        v73 = *(v50 + 83) == 0;
                        v74 = v15;
                        v75 = *(v15 + 284);

                        if (!v73)
                        {
                          if ((v75 & 0x40) != 0)
                          {
                            goto LABEL_211;
                          }

                          if (__nwlog_connection_log::onceToken[0] != -1)
                          {
                            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                          }

                          v76 = gconnectionLogObj;
                          if (!os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
                          {
LABEL_210:

LABEL_211:
                            v360 = nw_endpoint_handler_copy_flow(v375);
                            if (v360)
                            {
                              v132 = v74;
                              v133 = v367[29];

                              if (v133 == 2)
                              {
                                v134 = (v360 + 376);
                                v135 = v372;
                                v136 = *(v372 + 83);
                                if (!v136)
                                {
LABEL_425:
                                  *(v135 + 354) &= ~0x800u;
                                  nw_protocol_set_output_handler(v135 + 472, v134);

                                  goto LABEL_426;
                                }

                                v137 = v372 + 376;
                                *v387 = 0;
                                v388 = v387;
                                v389 = 0x2020000000;
                                v390 = 0;
                                *type = MEMORY[0x1E69E9820];
                                v381 = 3221225472;
                                v382 = __nw_flow_replay_select_output_handler_block_invoke;
                                v383 = &unk_1E6A2DB20;
                                v384 = v387;
                                v385 = v360 + 376;
                                v386 = v372 + 376;
                                nw_hash_table_apply(v136, type);
                                if (v388[24])
                                {
LABEL_424:
                                  _Block_object_dispose(v387, 8);
                                  goto LABEL_425;
                                }

                                v138 = v132;
                                v139 = (v377[71] & 0x20) == 0;

                                if (!v139)
                                {
                                  if (nw_endpoint_handler_get_logging_disabled(v138))
                                  {
                                    goto LABEL_423;
                                  }

                                  if (__nwlog_connection_log::onceToken[0] != -1)
                                  {
                                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                                  }

                                  v142 = gconnectionLogObj;
                                  if (os_log_type_enabled(v142, OS_LOG_TYPE_DEBUG))
                                  {
                                    id_string = nw_endpoint_handler_get_id_string(v138);
                                    logb = nw_endpoint_handler_dry_run_string(v138);
                                    v333 = nw_endpoint_handler_copy_endpoint(v138);
                                    logging_description = nw_endpoint_get_logging_description(v333);
                                    v335 = nw_endpoint_handler_state_string(v138);
                                    v336 = nw_endpoint_handler_mode_string(v138);
                                    v337 = nw_endpoint_handler_copy_current_path(v138);
                                    *buf = 136447746;
                                    v393 = "nw_flow_replay_select_output_handler";
                                    v394 = 2082;
                                    v395 = id_string;
                                    v396 = 2082;
                                    v397 = logb;
                                    v398 = 2082;
                                    v399 = logging_description;
                                    v400 = 2082;
                                    v401 = v335;
                                    v402 = 2082;
                                    v403 = v336;
                                    v404 = 2114;
                                    v405 = v337;
                                    _os_log_impl(&dword_181A37000, v142, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Did not find selected output handler, adding to the candidate list", buf, 0x48u);

                                    v137 = v372 + 376;
                                  }

                                  goto LABEL_422;
                                }

                                v140 = v138;
                                v141 = (v377[71] & 0x40) == 0;

                                if (!v141)
                                {
LABEL_423:
                                  v135 = v372;
                                  nw_flow_replay_add_candidate_output_handler(v138, v137, v134);
                                  goto LABEL_424;
                                }

                                if (__nwlog_connection_log::onceToken[0] != -1)
                                {
                                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                                }

                                v142 = gconnectionLogObj;
                                if (!os_log_type_enabled(v142, OS_LOG_TYPE_INFO))
                                {
LABEL_422:

                                  goto LABEL_423;
                                }

                                loga = v142;
                                v143 = v140;

                                v144 = v143;
                                v145 = (v377[71] & 1) == 0;

                                if (v145)
                                {
                                  v146 = "";
                                }

                                else
                                {
                                  v146 = "dry-run ";
                                }

                                v147 = nw_endpoint_handler_copy_endpoint(v144);
                                v148 = v147;
                                if (v147)
                                {
                                  v355 = _nw_endpoint_get_logging_description(v147);
                                }

                                else
                                {
                                  v355 = "<NULL>";
                                }

                                v205 = v144;
                                v206 = v205;
                                v207 = v205[30];
                                if (v207 > 5)
                                {
                                  v208 = "unknown-state";
                                }

                                else
                                {
                                  v208 = off_1E6A31048[v207];
                                }

                                v209 = v206;
                                v210 = v209;
                                v211 = v367[29];
                                if (v211 > 2)
                                {
                                  switch(v211)
                                  {
                                    case 3:
                                      v212 = "proxy";
                                      goto LABEL_421;
                                    case 4:
                                      v212 = "fallback";
                                      goto LABEL_421;
                                    case 5:
                                      v212 = "transform";
                                      goto LABEL_421;
                                  }
                                }

                                else
                                {
                                  switch(v211)
                                  {
                                    case 0:
                                      v212 = "path";
                                      goto LABEL_421;
                                    case 1:
                                      v212 = "resolver";
                                      goto LABEL_421;
                                    case 2:
                                      v212 = nw_endpoint_flow_mode_string(v209[33]);
LABEL_421:

                                      v259 = v210;
                                      os_unfair_lock_lock(v259 + 28);
                                      v260 = v259[8];
                                      os_unfair_lock_unlock(v259 + 28);

                                      v137 = v372 + 376;
                                      *buf = 136447746;
                                      v393 = "nw_flow_replay_select_output_handler";
                                      v394 = 2082;
                                      v395 = v143 + 184;
                                      v396 = 2082;
                                      v397 = v146;
                                      v398 = 2082;
                                      v399 = v355;
                                      v400 = 2082;
                                      v401 = v208;
                                      v402 = 2082;
                                      v403 = v212;
                                      v404 = 2114;
                                      v405 = v260;
                                      _os_log_impl(&dword_181A37000, loga, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Did not find selected output handler, adding to the candidate list", buf, 0x48u);

                                      v142 = loga;
                                      goto LABEL_422;
                                  }
                                }

                                v212 = "unknown-mode";
                                goto LABEL_421;
                              }

                              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                              networkd_settings_init();
                              v149 = gLogObj;
                              if (v133 > 5)
                              {
                                v150 = "unknown-mode";
                              }

                              else
                              {
                                v150 = off_1E6A31018[v133];
                              }

                              *buf = 136446722;
                              v393 = "nw_flow_replay_select_output_handler";
                              v394 = 2082;
                              v395 = v150;
                              v396 = 2082;
                              v397 = "flow";
                              v151 = _os_log_send_and_compose_impl();

                              v387[0] = OS_LOG_TYPE_ERROR;
                              v391 = 0;
                              if (__nwlog_fault(v151, v387, &v391))
                              {
                                if (v387[0] == OS_LOG_TYPE_FAULT)
                                {
                                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                                  networkd_settings_init();
                                  v152 = gLogObj;
                                  v153 = v387[0];
                                  if (os_log_type_enabled(v152, v387[0]))
                                  {
                                    if (v133 > 5)
                                    {
                                      v154 = "unknown-mode";
                                    }

                                    else
                                    {
                                      v154 = off_1E6A31018[v133];
                                    }

                                    *buf = 136446722;
                                    v393 = "nw_flow_replay_select_output_handler";
                                    v394 = 2082;
                                    v395 = v154;
                                    v396 = 2082;
                                    v397 = "flow";
                                    _os_log_impl(&dword_181A37000, v152, v153, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
                                  }
                                }

                                else if (v391 == 1)
                                {
                                  v155 = __nw_create_backtrace_string();
                                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                                  networkd_settings_init();
                                  v152 = gLogObj;
                                  v156 = v387[0];
                                  v157 = os_log_type_enabled(v152, v387[0]);
                                  if (v155)
                                  {
                                    if (v157)
                                    {
                                      if (v133 > 5)
                                      {
                                        v158 = "unknown-mode";
                                      }

                                      else
                                      {
                                        v158 = off_1E6A31018[v133];
                                      }

                                      *buf = 136446978;
                                      v393 = "nw_flow_replay_select_output_handler";
                                      v394 = 2082;
                                      v395 = v158;
                                      v396 = 2082;
                                      v397 = "flow";
                                      v398 = 2082;
                                      v399 = v155;
                                      _os_log_impl(&dword_181A37000, v152, v156, "%{public}s Handler is in mode %{public}s, expected %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
                                    }

                                    free(v155);
                                    if (!v151)
                                    {
LABEL_385:

                                      v239 = v132;
                                      v240 = (v377[71] & 0x40) == 0;

                                      if (!v240)
                                      {
LABEL_414:

                                        goto LABEL_415;
                                      }

                                      if (__nwlog_connection_log::onceToken[0] != -1)
                                      {
                                        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                                      }

                                      v241 = gconnectionLogObj;
                                      if (!os_log_type_enabled(v241, OS_LOG_TYPE_ERROR))
                                      {
LABEL_413:

                                        goto LABEL_414;
                                      }

                                      v242 = v239;

                                      v243 = v242;
                                      v244 = (v377[71] & 1) == 0;

                                      if (v244)
                                      {
                                        v245 = "";
                                      }

                                      else
                                      {
                                        v245 = "dry-run ";
                                      }

                                      v246 = nw_endpoint_handler_copy_endpoint(v243);
                                      v247 = v246;
                                      if (v246)
                                      {
                                        v248 = _nw_endpoint_get_logging_description(v246);
                                      }

                                      else
                                      {
                                        v248 = "<NULL>";
                                      }

                                      v249 = v243;
                                      v250 = v249;
                                      v251 = v249[30];
                                      if (v251 > 5)
                                      {
                                        v252 = "unknown-state";
                                      }

                                      else
                                      {
                                        v252 = off_1E6A31048[v251];
                                      }

                                      v253 = v250;
                                      v254 = v253;
                                      v255 = v367[29];
                                      if (v255 > 2)
                                      {
                                        switch(v255)
                                        {
                                          case 3:
                                            v256 = "proxy";
                                            goto LABEL_412;
                                          case 4:
                                            v256 = "fallback";
                                            goto LABEL_412;
                                          case 5:
                                            v256 = "transform";
                                            goto LABEL_412;
                                        }
                                      }

                                      else
                                      {
                                        switch(v255)
                                        {
                                          case 0:
                                            v256 = "path";
                                            goto LABEL_412;
                                          case 1:
                                            v256 = "resolver";
                                            goto LABEL_412;
                                          case 2:
                                            v256 = nw_endpoint_flow_mode_string(v253[33]);
LABEL_412:

                                            v257 = v254;
                                            os_unfair_lock_lock(v257 + 28);
                                            v258 = v257[8];
                                            os_unfair_lock_unlock(v257 + 28);

                                            *buf = 136447746;
                                            v393 = "nw_endpoint_flow_receive_report";
                                            v394 = 2082;
                                            v395 = v242 + 184;
                                            v396 = 2082;
                                            v397 = v245;
                                            v398 = 2082;
                                            v399 = v248;
                                            v400 = 2082;
                                            v401 = v252;
                                            v402 = 2082;
                                            v403 = v256;
                                            v404 = 2114;
                                            v405 = v258;
                                            _os_log_impl(&dword_181A37000, v241, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Failed to select the connected candidate child flow", buf, 0x48u);

                                            goto LABEL_413;
                                        }
                                      }

                                      v256 = "unknown-mode";
                                      goto LABEL_412;
                                    }

LABEL_384:
                                    free(v151);
                                    goto LABEL_385;
                                  }

                                  if (v157)
                                  {
                                    if (v133 > 5)
                                    {
                                      v161 = "unknown-mode";
                                    }

                                    else
                                    {
                                      v161 = off_1E6A31018[v133];
                                    }

                                    *buf = 136446722;
                                    v393 = "nw_flow_replay_select_output_handler";
                                    v394 = 2082;
                                    v395 = v161;
                                    v396 = 2082;
                                    v397 = "flow";
                                    _os_log_impl(&dword_181A37000, v152, v156, "%{public}s Handler is in mode %{public}s, expected %{public}s, no backtrace", buf, 0x20u);
                                  }
                                }

                                else
                                {
                                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                                  networkd_settings_init();
                                  v152 = gLogObj;
                                  v159 = v387[0];
                                  if (os_log_type_enabled(v152, v387[0]))
                                  {
                                    if (v133 > 5)
                                    {
                                      v160 = "unknown-mode";
                                    }

                                    else
                                    {
                                      v160 = off_1E6A31018[v133];
                                    }

                                    *buf = 136446722;
                                    v393 = "nw_flow_replay_select_output_handler";
                                    v394 = 2082;
                                    v395 = v160;
                                    v396 = 2082;
                                    v397 = "flow";
                                    _os_log_impl(&dword_181A37000, v152, v159, "%{public}s Handler is in mode %{public}s, expected %{public}s, backtrace limit exceeded", buf, 0x20u);
                                  }
                                }
                              }

                              if (!v151)
                              {
                                goto LABEL_385;
                              }

                              goto LABEL_384;
                            }

                            v306 = __nwlog_obj();
                            *buf = 136446210;
                            v393 = "nw_endpoint_flow_receive_report";
                            v307 = _os_log_send_and_compose_impl();

                            type[0] = OS_LOG_TYPE_ERROR;
                            v387[0] = OS_LOG_TYPE_DEFAULT;
                            if (!__nwlog_fault(v307, type, v387))
                            {
                              goto LABEL_563;
                            }

                            if (type[0] == OS_LOG_TYPE_FAULT)
                            {
                              v308 = __nwlog_obj();
                              v309 = type[0];
                              if (os_log_type_enabled(v308, type[0]))
                              {
                                *buf = 136446210;
                                v393 = "nw_endpoint_flow_receive_report";
                                _os_log_impl(&dword_181A37000, v308, v309, "%{public}s called with null child_flow", buf, 0xCu);
                              }
                            }

                            else if (v387[0] == OS_LOG_TYPE_INFO)
                            {
                              v320 = __nw_create_backtrace_string();
                              v308 = __nwlog_obj();
                              v321 = type[0];
                              v322 = os_log_type_enabled(v308, type[0]);
                              if (v320)
                              {
                                if (v322)
                                {
                                  *buf = 136446466;
                                  v393 = "nw_endpoint_flow_receive_report";
                                  v394 = 2082;
                                  v395 = v320;
                                  _os_log_impl(&dword_181A37000, v308, v321, "%{public}s called with null child_flow, dumping backtrace:%{public}s", buf, 0x16u);
                                }

                                free(v320);
LABEL_563:
                                if (!v307)
                                {
                                  goto LABEL_415;
                                }

LABEL_564:
                                free(v307);
                                v27 = 0;
                                goto LABEL_431;
                              }

                              if (v322)
                              {
                                *buf = 136446210;
                                v393 = "nw_endpoint_flow_receive_report";
                                _os_log_impl(&dword_181A37000, v308, v321, "%{public}s called with null child_flow, no backtrace", buf, 0xCu);
                              }
                            }

                            else
                            {
                              v308 = __nwlog_obj();
                              v332 = type[0];
                              if (os_log_type_enabled(v308, type[0]))
                              {
                                *buf = 136446210;
                                v393 = "nw_endpoint_flow_receive_report";
                                _os_log_impl(&dword_181A37000, v308, v332, "%{public}s called with null child_flow, backtrace limit exceeded", buf, 0xCu);
                              }
                            }

LABEL_562:

                            goto LABEL_563;
                          }

                          v77 = v74;

                          v78 = v77;
                          v79 = (v377[71] & 1) == 0;

                          if (v79)
                          {
                            v80 = "";
                          }

                          else
                          {
                            v80 = "dry-run ";
                          }

                          v81 = nw_endpoint_handler_copy_endpoint(v78);
                          v82 = v81;
                          if (v81)
                          {
                            v83 = _nw_endpoint_get_logging_description(v81);
                          }

                          else
                          {
                            v83 = "<NULL>";
                          }

                          v104 = v78;
                          v105 = v104;
                          v106 = v104[30];
                          if (v106 > 5)
                          {
                            v107 = "unknown-state";
                          }

                          else
                          {
                            v107 = off_1E6A31048[v106];
                          }

                          v108 = v105;
                          v109 = v108;
                          v110 = v367[29];
                          if (v110 > 2)
                          {
                            switch(v110)
                            {
                              case 3:
                                v111 = "proxy";
                                goto LABEL_209;
                              case 4:
                                v111 = "fallback";
                                goto LABEL_209;
                              case 5:
                                v111 = "transform";
                                goto LABEL_209;
                            }
                          }

                          else
                          {
                            switch(v110)
                            {
                              case 0:
                                v111 = "path";
                                goto LABEL_209;
                              case 1:
                                v111 = "resolver";
                                goto LABEL_209;
                              case 2:
                                v111 = nw_endpoint_flow_mode_string(v108[33]);
LABEL_209:

                                v130 = v109;
                                os_unfair_lock_lock(v130 + 28);
                                v131 = v130[8];
                                os_unfair_lock_unlock(v130 + 28);

                                *buf = 136447746;
                                v393 = "nw_endpoint_flow_receive_report";
                                v394 = 2082;
                                v395 = v77 + 184;
                                v396 = 2082;
                                v397 = v80;
                                v398 = 2082;
                                v399 = v83;
                                v400 = 2082;
                                v401 = v107;
                                v402 = 2082;
                                v403 = v111;
                                v404 = 2114;
                                v405 = v131;
                                _os_log_impl(&dword_181A37000, v76, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] selecting connected child protocol from candidates", buf, 0x48u);

                                goto LABEL_210;
                            }
                          }

                          v111 = "unknown-mode";
                          goto LABEL_209;
                        }

                        v94 = v50;
                        v95 = v377;
                        if ((v75 & 0x40) != 0)
                        {
LABEL_258:
                          v169 = nw_endpoint_handler_copy_flow(v375);
                          v360 = v169;
                          if (v169)
                          {
                            v170 = *(v94 + 94);
                            if (v170)
                            {
                              v171 = v169 + 376;
                              if ((v169 + 376) != v170)
                              {
                                v172 = *(v169 + 50);
                                if (v172 && *v172)
                                {
                                  if (nw_protocol_add_input_handler(v169 + 47, v170))
                                  {
                                    v173 = *(v360 + 68);
                                    *(v360 + 68) = v360;

LABEL_426:
                                    v11 = v379;
                                    v50 = v372;
                                    v15 = v377;
LABEL_427:
                                    if ((v366 & 1) == 0)
                                    {
                                      goto LABEL_429;
                                    }

                                    goto LABEL_428;
                                  }

LABEL_335:
                                  v213 = v74;
                                  v214 = (v95[71] & 0x40) == 0;

                                  if (!v214)
                                  {
                                    goto LABEL_414;
                                  }

                                  if (__nwlog_connection_log::onceToken[0] != -1)
                                  {
                                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                                  }

                                  v215 = gconnectionLogObj;
                                  if (!os_log_type_enabled(v215, OS_LOG_TYPE_ERROR))
                                  {
LABEL_366:

                                    goto LABEL_414;
                                  }

                                  v216 = v213;

                                  v217 = v216;
                                  v218 = (v377[71] & 1) == 0;

                                  if (v218)
                                  {
                                    v219 = "";
                                  }

                                  else
                                  {
                                    v219 = "dry-run ";
                                  }

                                  v220 = nw_endpoint_handler_copy_endpoint(v217);
                                  v221 = v220;
                                  if (v220)
                                  {
                                    v222 = _nw_endpoint_get_logging_description(v220);
                                  }

                                  else
                                  {
                                    v222 = "<NULL>";
                                  }

                                  v223 = v217;
                                  v224 = v223;
                                  v225 = v223[30];
                                  if (v225 > 5)
                                  {
                                    v226 = "unknown-state";
                                  }

                                  else
                                  {
                                    v226 = off_1E6A31048[v225];
                                  }

                                  v227 = v224;
                                  v228 = v227;
                                  v229 = v367[29];
                                  if (v229 > 2)
                                  {
                                    if (v229 == 3)
                                    {
                                      v230 = "proxy";
                                      goto LABEL_362;
                                    }

                                    if (v229 != 4)
                                    {
                                      if (v229 == 5)
                                      {
                                        v230 = "transform";
                                        goto LABEL_362;
                                      }

                                      goto LABEL_359;
                                    }

                                    v230 = "fallback";
                                  }

                                  else
                                  {
                                    if (!v229)
                                    {
                                      v230 = "path";
                                      goto LABEL_362;
                                    }

                                    if (v229 != 1)
                                    {
                                      if (v229 == 2)
                                      {
                                        v230 = nw_endpoint_flow_mode_string(v227[33]);
                                        goto LABEL_362;
                                      }

LABEL_359:
                                      v230 = "unknown-mode";
                                      goto LABEL_362;
                                    }

                                    v230 = "resolver";
                                  }

LABEL_362:

                                  v231 = v228;
                                  os_unfair_lock_lock(v231 + 28);
                                  v232 = v231[8];
                                  os_unfair_lock_unlock(v231 + 28);

                                  v233 = v216 + 184;
                                  v234 = v232;
                                  v235 = v234;
                                  v236 = *(v372 + 94);
                                  if (v236)
                                  {
                                    v236 = *(v236 + 2);
                                    if (!v236)
                                    {
                                      v236 = "invalid";
                                    }
                                  }

                                  *buf = 136448002;
                                  v393 = "nw_endpoint_flow_receive_report";
                                  v394 = 2082;
                                  v395 = v233;
                                  v396 = 2082;
                                  v397 = v219;
                                  v398 = 2082;
                                  v399 = v222;
                                  v400 = 2082;
                                  v401 = v226;
                                  v402 = 2082;
                                  v403 = v230;
                                  v404 = 2114;
                                  v405 = v234;
                                  v406 = 2082;
                                  v407 = v236;
                                  _os_log_impl(&dword_181A37000, v215, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Failed to attach protocol %{public}s to newly connected child flow", buf, 0x52u);

                                  goto LABEL_366;
                                }

                                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                                networkd_settings_init();
                                v178 = gLogObj;
                                if (os_log_type_enabled(v178, OS_LOG_TYPE_ERROR))
                                {
                                  *buf = 136446466;
                                  v393 = "nw_protocol_utilities_add_input_handler";
                                  v394 = 2048;
                                  v395 = v171;
                                  _os_log_impl(&dword_181A37000, v178, OS_LOG_TYPE_ERROR, "%{public}s Unable to invoke add_input_handler on protocol %p because it is not valid", buf, 0x16u);
                                }

LABEL_273:
                                v95 = v377;
                                goto LABEL_335;
                              }

                              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                              networkd_settings_init();
                              v174 = gLogObj;
                              *buf = 136446466;
                              v393 = "nw_protocol_utilities_add_input_handler";
                              v394 = 2048;
                              v395 = v171;
                              v175 = _os_log_send_and_compose_impl();

                              type[0] = OS_LOG_TYPE_ERROR;
                              v387[0] = OS_LOG_TYPE_DEFAULT;
                              if (__nwlog_fault(v175, type, v387))
                              {
                                if (type[0] == OS_LOG_TYPE_FAULT)
                                {
                                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                                  networkd_settings_init();
                                  v176 = gLogObj;
                                  v177 = type[0];
                                  if (os_log_type_enabled(v176, type[0]))
                                  {
                                    *buf = 136446466;
                                    v393 = "nw_protocol_utilities_add_input_handler";
                                    v394 = 2048;
                                    v395 = v171;
                                    _os_log_impl(&dword_181A37000, v176, v177, "%{public}s Cannot add input handler %p to itself", buf, 0x16u);
                                  }
                                }

                                else if (v387[0] == OS_LOG_TYPE_INFO)
                                {
                                  v179 = __nw_create_backtrace_string();
                                  v176 = __nwlog_obj();
                                  v180 = type[0];
                                  v181 = os_log_type_enabled(v176, type[0]);
                                  if (v179)
                                  {
                                    if (v181)
                                    {
                                      *buf = 136446722;
                                      v393 = "nw_protocol_utilities_add_input_handler";
                                      v394 = 2048;
                                      v395 = v171;
                                      v396 = 2082;
                                      v397 = v179;
                                      _os_log_impl(&dword_181A37000, v176, v180, "%{public}s Cannot add input handler %p to itself, dumping backtrace:%{public}s", buf, 0x20u);
                                    }

                                    free(v179);
                                    goto LABEL_333;
                                  }

                                  if (v181)
                                  {
                                    *buf = 136446466;
                                    v393 = "nw_protocol_utilities_add_input_handler";
                                    v394 = 2048;
                                    v395 = v171;
                                    _os_log_impl(&dword_181A37000, v176, v180, "%{public}s Cannot add input handler %p to itself, no backtrace", buf, 0x16u);
                                  }
                                }

                                else
                                {
                                  v176 = __nwlog_obj();
                                  v182 = type[0];
                                  if (os_log_type_enabled(v176, type[0]))
                                  {
                                    *buf = 136446466;
                                    v393 = "nw_protocol_utilities_add_input_handler";
                                    v394 = 2048;
                                    v395 = v171;
                                    _os_log_impl(&dword_181A37000, v176, v182, "%{public}s Cannot add input handler %p to itself, backtrace limit exceeded", buf, 0x16u);
                                  }
                                }
                              }

LABEL_333:
                              v95 = v377;
                              if (v175)
                              {
                                free(v175);
                              }

                              goto LABEL_335;
                            }

                            v314 = __nwlog_obj();
                            *buf = 136446210;
                            v393 = "nw_protocol_utilities_add_input_handler";
                            v315 = _os_log_send_and_compose_impl();

                            type[0] = OS_LOG_TYPE_ERROR;
                            v387[0] = OS_LOG_TYPE_DEFAULT;
                            if (__nwlog_fault(v315, type, v387))
                            {
                              if (type[0] == OS_LOG_TYPE_FAULT)
                              {
                                v316 = __nwlog_obj();
                                v317 = type[0];
                                if (os_log_type_enabled(v316, type[0]))
                                {
                                  *buf = 136446210;
                                  v393 = "nw_protocol_utilities_add_input_handler";
                                  _os_log_impl(&dword_181A37000, v316, v317, "%{public}s called with null input_protocol", buf, 0xCu);
                                }
                              }

                              else if (v387[0] == OS_LOG_TYPE_INFO)
                              {
                                v326 = __nw_create_backtrace_string();
                                v316 = __nwlog_obj();
                                v327 = type[0];
                                v328 = os_log_type_enabled(v316, type[0]);
                                if (v326)
                                {
                                  if (v328)
                                  {
                                    *buf = 136446466;
                                    v393 = "nw_protocol_utilities_add_input_handler";
                                    v394 = 2082;
                                    v395 = v326;
                                    _os_log_impl(&dword_181A37000, v316, v327, "%{public}s called with null input_protocol, dumping backtrace:%{public}s", buf, 0x16u);
                                  }

                                  free(v326);
                                  goto LABEL_558;
                                }

                                if (v328)
                                {
                                  *buf = 136446210;
                                  v393 = "nw_protocol_utilities_add_input_handler";
                                  _os_log_impl(&dword_181A37000, v316, v327, "%{public}s called with null input_protocol, no backtrace", buf, 0xCu);
                                }
                              }

                              else
                              {
                                v316 = __nwlog_obj();
                                v339 = type[0];
                                if (os_log_type_enabled(v316, type[0]))
                                {
                                  *buf = 136446210;
                                  v393 = "nw_protocol_utilities_add_input_handler";
                                  _os_log_impl(&dword_181A37000, v316, v339, "%{public}s called with null input_protocol, backtrace limit exceeded", buf, 0xCu);
                                }
                              }
                            }

LABEL_558:
                            if (v315)
                            {
                              free(v315);
                            }

                            goto LABEL_273;
                          }

                          v310 = __nwlog_obj();
                          *buf = 136446210;
                          v393 = "nw_endpoint_flow_receive_report";
                          v311 = _os_log_send_and_compose_impl();

                          type[0] = OS_LOG_TYPE_ERROR;
                          v387[0] = OS_LOG_TYPE_DEFAULT;
                          if (__nwlog_fault(v311, type, v387))
                          {
                            if (type[0] == OS_LOG_TYPE_FAULT)
                            {
                              v312 = __nwlog_obj();
                              v313 = type[0];
                              if (os_log_type_enabled(v312, type[0]))
                              {
                                *buf = 136446210;
                                v393 = "nw_endpoint_flow_receive_report";
                                _os_log_impl(&dword_181A37000, v312, v313, "%{public}s called with null child_flow", buf, 0xCu);
                              }
                            }

                            else if (v387[0] == OS_LOG_TYPE_INFO)
                            {
                              v323 = __nw_create_backtrace_string();
                              v312 = __nwlog_obj();
                              v324 = type[0];
                              v325 = os_log_type_enabled(v312, type[0]);
                              if (v323)
                              {
                                if (v325)
                                {
                                  *buf = 136446466;
                                  v393 = "nw_endpoint_flow_receive_report";
                                  v394 = 2082;
                                  v395 = v323;
                                  _os_log_impl(&dword_181A37000, v312, v324, "%{public}s called with null child_flow, dumping backtrace:%{public}s", buf, 0x16u);
                                }

                                free(v323);
                                goto LABEL_553;
                              }

                              if (v325)
                              {
                                *buf = 136446210;
                                v393 = "nw_endpoint_flow_receive_report";
                                _os_log_impl(&dword_181A37000, v312, v324, "%{public}s called with null child_flow, no backtrace", buf, 0xCu);
                              }
                            }

                            else
                            {
                              v312 = __nwlog_obj();
                              v338 = type[0];
                              if (os_log_type_enabled(v312, type[0]))
                              {
                                *buf = 136446210;
                                v393 = "nw_endpoint_flow_receive_report";
                                _os_log_impl(&dword_181A37000, v312, v338, "%{public}s called with null child_flow, backtrace limit exceeded", buf, 0xCu);
                              }
                            }
                          }

LABEL_553:
                          if (v311)
                          {
                            free(v311);
                          }

                          goto LABEL_414;
                        }

                        if (__nwlog_connection_log::onceToken[0] != -1)
                        {
                          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                        }

                        v96 = gconnectionLogObj;
                        if (!os_log_type_enabled(v96, OS_LOG_TYPE_DEBUG))
                        {
LABEL_257:

                          v94 = v372;
                          v95 = v377;
                          goto LABEL_258;
                        }

                        v97 = v74;

                        v98 = v97;
                        v99 = (v377[71] & 1) == 0;

                        if (v99)
                        {
                          v100 = "";
                        }

                        else
                        {
                          v100 = "dry-run ";
                        }

                        v101 = nw_endpoint_handler_copy_endpoint(v98);
                        v102 = v101;
                        if (v101)
                        {
                          v103 = _nw_endpoint_get_logging_description(v101);
                        }

                        else
                        {
                          v103 = "<NULL>";
                        }

                        v114 = v98;
                        v115 = v114;
                        v116 = v114[30];
                        if (v116 > 5)
                        {
                          v117 = "unknown-state";
                        }

                        else
                        {
                          v117 = off_1E6A31048[v116];
                        }

                        v118 = v115;
                        v119 = v118;
                        v120 = v367[29];
                        if (v120 > 2)
                        {
                          if (v120 == 3)
                          {
                            v121 = "proxy";
                            goto LABEL_253;
                          }

                          if (v120 != 4)
                          {
                            if (v120 == 5)
                            {
                              v121 = "transform";
                              goto LABEL_253;
                            }

                            goto LABEL_250;
                          }

                          v121 = "fallback";
                        }

                        else
                        {
                          if (!v120)
                          {
                            v121 = "path";
                            goto LABEL_253;
                          }

                          if (v120 != 1)
                          {
                            if (v120 == 2)
                            {
                              v121 = nw_endpoint_flow_mode_string(v118[33]);
                              goto LABEL_253;
                            }

LABEL_250:
                            v121 = "unknown-mode";
                            goto LABEL_253;
                          }

                          v121 = "resolver";
                        }

LABEL_253:

                        v162 = v119;
                        os_unfair_lock_lock(v162 + 28);
                        v163 = v162[8];
                        os_unfair_lock_unlock(v162 + 28);

                        v164 = v100;
                        v165 = v97 + 184;
                        v166 = v163;
                        v167 = v166;
                        v168 = *(v372 + 94);
                        if (v168)
                        {
                          v168 = *(v168 + 2);
                          if (!v168)
                          {
                            v168 = "invalid";
                          }
                        }

                        *buf = 136448002;
                        v393 = "nw_endpoint_flow_receive_report";
                        v394 = 2082;
                        v395 = v165;
                        v396 = 2082;
                        v397 = v164;
                        v398 = 2082;
                        v399 = v103;
                        v400 = 2082;
                        v401 = v117;
                        v402 = 2082;
                        v403 = v121;
                        v404 = 2114;
                        v405 = v166;
                        v406 = 2082;
                        v407 = v168;
                        _os_log_impl(&dword_181A37000, v96, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] connecting %{public}s to child's shared protocol", buf, 0x52u);

                        goto LABEL_257;
                      }

                      v370 = 0;
                      v47 = a4;
                      if ((v63 & 1) == 0)
                      {
LABEL_131:
                        if (v375)
                        {
                          goto LABEL_132;
                        }

                        if (!v370)
                        {
                          v370 = 0;
                          if (!v366)
                          {
LABEL_429:
                            if (*(v50 + 116) != v11)
                            {
LABEL_430:
                              v27 = 1;
                              goto LABEL_431;
                            }

                            if (v361 == 4)
                            {
                              *(v50 + 35) |= 4u;
                              v262 = v15;
                              v263 = v262->state == 5;

                              if (!v263 && (*(v372 + 32) & 1) != 0 && nw_endpoint_handler_get_has_better_path(v262, 0))
                              {
                                minimize_logging = nw_endpoint_handler_get_minimize_logging(v262);
                                logging_disabled = nw_endpoint_handler_get_logging_disabled(v262);
                                if (minimize_logging)
                                {
                                  if (logging_disabled)
                                  {
                                    goto LABEL_444;
                                  }

                                  if (__nwlog_connection_log::onceToken[0] != -1)
                                  {
                                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                                  }

                                  v266 = gconnectionLogObj;
                                  if (os_log_type_enabled(v266, OS_LOG_TYPE_DEBUG))
                                  {
                                    v348 = nw_endpoint_handler_get_id_string(v262);
                                    v349 = nw_endpoint_handler_dry_run_string(v262);
                                    v350 = nw_endpoint_handler_copy_endpoint(v262);
                                    v351 = nw_endpoint_get_logging_description(v350);
                                    v352 = nw_endpoint_handler_state_string(v262);
                                    v353 = nw_endpoint_handler_mode_string(v262);
                                    v354 = nw_endpoint_handler_copy_current_path(v262);
                                    *buf = 136447746;
                                    v393 = "nw_endpoint_flow_receive_report";
                                    v394 = 2082;
                                    v395 = v348;
                                    v396 = 2082;
                                    v397 = v349;
                                    v398 = 2082;
                                    v399 = v351;
                                    v400 = 2082;
                                    v401 = v352;
                                    v402 = 2082;
                                    v403 = v353;
                                    v404 = 2114;
                                    v405 = v354;
                                    _os_log_impl(&dword_181A37000, v266, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] connected child failed when a better path is available", buf, 0x48u);
                                  }
                                }

                                else
                                {
                                  if (logging_disabled)
                                  {
LABEL_444:
                                    nw_endpoint_handler_handle_failure(v262);
                                    goto LABEL_430;
                                  }

                                  if (__nwlog_connection_log::onceToken[0] != -1)
                                  {
                                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                                  }

                                  v266 = gconnectionLogObj;
                                  if (os_log_type_enabled(v266, OS_LOG_TYPE_INFO))
                                  {
                                    v267 = nw_endpoint_handler_get_id_string(v262);
                                    v268 = nw_endpoint_handler_dry_run_string(v262);
                                    v269 = nw_endpoint_handler_copy_endpoint(v262);
                                    v270 = nw_endpoint_get_logging_description(v269);
                                    v271 = nw_endpoint_handler_state_string(v262);
                                    v272 = nw_endpoint_handler_mode_string(v262);
                                    v273 = nw_endpoint_handler_copy_current_path(v262);
                                    *buf = 136447746;
                                    v393 = "nw_endpoint_flow_receive_report";
                                    v394 = 2082;
                                    v395 = v267;
                                    v396 = 2082;
                                    v397 = v268;
                                    v398 = 2082;
                                    v399 = v270;
                                    v400 = 2082;
                                    v401 = v271;
                                    v402 = 2082;
                                    v403 = v272;
                                    v404 = 2114;
                                    v405 = v273;
                                    _os_log_impl(&dword_181A37000, v266, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] connected child failed when a better path is available", buf, 0x48u);
                                  }
                                }

                                goto LABEL_444;
                              }

                              v15 = v377;
                              if ((*(v372 + 33) & 4) == 0)
                              {
                                v274 = v262;
                                v275 = v262->state == 5;

                                if (v275)
                                {
                                  goto LABEL_430;
                                }

                                v276 = nw_endpoint_handler_get_minimize_logging(v274);
                                v277 = nw_endpoint_handler_get_logging_disabled(v274);
                                v278 = v372;
                                if (v276)
                                {
                                  if (v277)
                                  {
                                    goto LABEL_458;
                                  }

                                  if (__nwlog_connection_log::onceToken[0] != -1)
                                  {
                                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                                  }

                                  v279 = gconnectionLogObj;
                                  if (os_log_type_enabled(v279, OS_LOG_TYPE_DEBUG))
                                  {
                                    v341 = nw_endpoint_handler_get_id_string(v274);
                                    v342 = nw_endpoint_handler_dry_run_string(v274);
                                    v343 = nw_endpoint_handler_copy_endpoint(v274);
                                    v344 = nw_endpoint_get_logging_description(v343);
                                    v345 = nw_endpoint_handler_state_string(v274);
                                    v346 = nw_endpoint_handler_mode_string(v274);
                                    v347 = nw_endpoint_handler_copy_current_path(v274);
                                    *buf = 136447746;
                                    v393 = "nw_endpoint_flow_receive_report";
                                    v394 = 2082;
                                    v395 = v341;
                                    v396 = 2082;
                                    v397 = v342;
                                    v398 = 2082;
                                    v399 = v344;
                                    v400 = 2082;
                                    v401 = v345;
                                    v402 = 2082;
                                    v403 = v346;
                                    v404 = 2114;
                                    v405 = v347;
                                    _os_log_impl(&dword_181A37000, v279, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] child failed", buf, 0x48u);
                                  }
                                }

                                else
                                {
                                  if (v277)
                                  {
LABEL_458:
                                    if ((*(v278 + 33) & 8) == 0)
                                    {
                                      if ((*(v278 + 36) & 2) != 0)
                                      {
                                        if ((nw_endpoint_handler_get_logging_disabled(v274) & 1) == 0)
                                        {
                                          if (__nwlog_connection_log::onceToken[0] != -1)
                                          {
                                            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                                          }

                                          v290 = gconnectionLogObj;
                                          if (os_log_type_enabled(v290, OS_LOG_TYPE_DEBUG))
                                          {
                                            v291 = nw_endpoint_handler_get_id_string(v274);
                                            v292 = nw_endpoint_handler_dry_run_string(v274);
                                            v293 = nw_endpoint_handler_copy_endpoint(v274);
                                            v294 = nw_endpoint_get_logging_description(v293);
                                            v295 = nw_endpoint_handler_state_string(v274);
                                            v296 = nw_endpoint_handler_mode_string(v274);
                                            v297 = nw_endpoint_handler_copy_current_path(v274);
                                            *buf = 136447746;
                                            v393 = "nw_endpoint_flow_receive_report";
                                            v394 = 2082;
                                            v395 = v291;
                                            v396 = 2082;
                                            v397 = v292;
                                            v398 = 2082;
                                            v399 = v294;
                                            v400 = 2082;
                                            v401 = v295;
                                            v402 = 2082;
                                            v403 = v296;
                                            v404 = 2114;
                                            v405 = v297;
                                            _os_log_impl(&dword_181A37000, v290, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] suppressing moving to failed state, already failing", buf, 0x48u);
                                          }
                                        }
                                      }

                                      else
                                      {
                                        nw_endpoint_handler_handle_failure(v274);
                                      }
                                    }

                                    v274->event = 720899;
                                    nw_endpoint_handler_report(v274, 0, &v274->event.domain, 0);
                                    goto LABEL_430;
                                  }

                                  if (__nwlog_connection_log::onceToken[0] != -1)
                                  {
                                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                                  }

                                  v279 = gconnectionLogObj;
                                  if (os_log_type_enabled(v279, OS_LOG_TYPE_INFO))
                                  {
                                    v280 = nw_endpoint_handler_get_id_string(v274);
                                    v281 = nw_endpoint_handler_dry_run_string(v274);
                                    v282 = nw_endpoint_handler_copy_endpoint(v274);
                                    v283 = nw_endpoint_get_logging_description(v282);
                                    v284 = nw_endpoint_handler_state_string(v274);
                                    v285 = nw_endpoint_handler_mode_string(v274);
                                    v286 = nw_endpoint_handler_copy_current_path(v274);
                                    *buf = 136447746;
                                    v393 = "nw_endpoint_flow_receive_report";
                                    v394 = 2082;
                                    v395 = v280;
                                    v396 = 2082;
                                    v397 = v281;
                                    v398 = 2082;
                                    v399 = v283;
                                    v400 = 2082;
                                    v401 = v284;
                                    v402 = 2082;
                                    v403 = v285;
                                    v404 = 2114;
                                    v405 = v286;
                                    _os_log_impl(&dword_181A37000, v279, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] child failed", buf, 0x48u);
                                  }
                                }

                                v278 = v372;
                                goto LABEL_458;
                              }
                            }

                            else if ((*(v50 + 33) & 4) == 0 || v361 <= 3 && (*(v50 + 32) & 0x20) != 0)
                            {
                              goto LABEL_430;
                            }

                            v287 = v15;
                            v288 = v287[30] == 5;

                            if (!v288)
                            {
                              v289 = v287;
                              v287[30] = v361;

                              nw_endpoint_handler_report(v289, 0, a4, 0);
                            }

                            goto LABEL_430;
                          }

LABEL_428:
                          nw_endpoint_flow_setup_protocols(v15, 0, 0, 1, 0);
                          goto LABEL_429;
                        }

                        v84 = v15;
                        v85 = (v15[71] & 0x40) == 0;

                        if (!v85)
                        {
LABEL_289:
                          v185 = nw_endpoint_handler_copy_flow(v370);
                          v186 = v185;
                          if (!v185)
                          {
                            v318 = __nwlog_obj();
                            *buf = 136446210;
                            v393 = "nw_endpoint_flow_receive_report";
                            v307 = _os_log_send_and_compose_impl();

                            type[0] = OS_LOG_TYPE_ERROR;
                            v387[0] = OS_LOG_TYPE_DEFAULT;
                            if (!__nwlog_fault(v307, type, v387))
                            {
                              goto LABEL_563;
                            }

                            if (type[0] == OS_LOG_TYPE_FAULT)
                            {
                              v308 = __nwlog_obj();
                              v319 = type[0];
                              if (os_log_type_enabled(v308, type[0]))
                              {
                                *buf = 136446210;
                                v393 = "nw_endpoint_flow_receive_report";
                                _os_log_impl(&dword_181A37000, v308, v319, "%{public}s called with null candidate_child_flow", buf, 0xCu);
                              }
                            }

                            else if (v387[0] == OS_LOG_TYPE_INFO)
                            {
                              v329 = __nw_create_backtrace_string();
                              v308 = __nwlog_obj();
                              v330 = type[0];
                              v331 = os_log_type_enabled(v308, type[0]);
                              if (v329)
                              {
                                if (v331)
                                {
                                  *buf = 136446466;
                                  v393 = "nw_endpoint_flow_receive_report";
                                  v394 = 2082;
                                  v395 = v329;
                                  _os_log_impl(&dword_181A37000, v308, v330, "%{public}s called with null candidate_child_flow, dumping backtrace:%{public}s", buf, 0x16u);
                                }

                                free(v329);
                                if (!v307)
                                {
                                  goto LABEL_415;
                                }

                                goto LABEL_564;
                              }

                              if (v331)
                              {
                                *buf = 136446210;
                                v393 = "nw_endpoint_flow_receive_report";
                                _os_log_impl(&dword_181A37000, v308, v330, "%{public}s called with null candidate_child_flow, no backtrace", buf, 0xCu);
                              }
                            }

                            else
                            {
                              v308 = __nwlog_obj();
                              v340 = type[0];
                              if (os_log_type_enabled(v308, type[0]))
                              {
                                *buf = 136446210;
                                v393 = "nw_endpoint_flow_receive_report";
                                _os_log_impl(&dword_181A37000, v308, v340, "%{public}s called with null candidate_child_flow, backtrace limit exceeded", buf, 0xCu);
                              }
                            }

                            goto LABEL_562;
                          }

                          if (nw_flow_replay_add_candidate_output_handler(v84, v372 + 376, v185 + 47))
                          {

                            goto LABEL_426;
                          }

                          v187 = v84;
                          v188 = (v377[71] & 0x40) == 0;

                          if (!v188)
                          {
LABEL_375:

LABEL_415:
                            v27 = 0;
LABEL_431:

                            goto LABEL_432;
                          }

                          if (__nwlog_connection_log::onceToken[0] != -1)
                          {
                            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                          }

                          v189 = gconnectionLogObj;
                          if (!os_log_type_enabled(v189, OS_LOG_TYPE_ERROR))
                          {
LABEL_374:

                            goto LABEL_375;
                          }

                          v190 = v187;

                          v191 = v190;
                          v192 = (v377[71] & 1) == 0;

                          if (v192)
                          {
                            v193 = "";
                          }

                          else
                          {
                            v193 = "dry-run ";
                          }

                          v194 = nw_endpoint_handler_copy_endpoint(v191);
                          v195 = v194;
                          if (v194)
                          {
                            v196 = _nw_endpoint_get_logging_description(v194);
                          }

                          else
                          {
                            v196 = "<NULL>";
                          }

                          v197 = v191;
                          v198 = v197;
                          v199 = v197[30];
                          if (v199 > 5)
                          {
                            v200 = "unknown-state";
                          }

                          else
                          {
                            v200 = off_1E6A31048[v199];
                          }

                          v201 = v198;
                          v202 = v201;
                          v203 = v367[29];
                          if (v203 > 2)
                          {
                            switch(v203)
                            {
                              case 3:
                                v204 = "proxy";
                                goto LABEL_373;
                              case 4:
                                v204 = "fallback";
                                goto LABEL_373;
                              case 5:
                                v204 = "transform";
                                goto LABEL_373;
                            }
                          }

                          else
                          {
                            switch(v203)
                            {
                              case 0:
                                v204 = "path";
                                goto LABEL_373;
                              case 1:
                                v204 = "resolver";
                                goto LABEL_373;
                              case 2:
                                v204 = nw_endpoint_flow_mode_string(v201[33]);
LABEL_373:

                                v237 = v202;
                                os_unfair_lock_lock(v237 + 28);
                                v238 = v237[8];
                                os_unfair_lock_unlock(v237 + 28);

                                *buf = 136447746;
                                v393 = "nw_endpoint_flow_receive_report";
                                v394 = 2082;
                                v395 = v190 + 184;
                                v396 = 2082;
                                v397 = v193;
                                v398 = 2082;
                                v399 = v196;
                                v400 = 2082;
                                v401 = v200;
                                v402 = 2082;
                                v403 = v204;
                                v404 = 2114;
                                v405 = v238;
                                _os_log_impl(&dword_181A37000, v189, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Failed to attach to candidate child flow", buf, 0x48u);

                                goto LABEL_374;
                            }
                          }

                          v204 = "unknown-mode";
                          goto LABEL_373;
                        }

                        if (__nwlog_connection_log::onceToken[0] != -1)
                        {
                          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                        }

                        v86 = gconnectionLogObj;
                        if (!os_log_type_enabled(v86, OS_LOG_TYPE_DEBUG))
                        {
LABEL_288:

                          goto LABEL_289;
                        }

                        v87 = v84;

                        v88 = v87;
                        v89 = (v377[71] & 1) == 0;

                        if (v89)
                        {
                          v90 = "";
                        }

                        else
                        {
                          v90 = "dry-run ";
                        }

                        v91 = nw_endpoint_handler_copy_endpoint(v88);
                        v92 = v91;
                        if (v91)
                        {
                          v93 = _nw_endpoint_get_logging_description(v91);
                        }

                        else
                        {
                          v93 = "<NULL>";
                        }

                        v122 = v88;
                        v123 = v122;
                        v124 = v122[30];
                        if (v124 > 5)
                        {
                          v125 = "unknown-state";
                        }

                        else
                        {
                          v125 = off_1E6A31048[v124];
                        }

                        v126 = v123;
                        v127 = v126;
                        v128 = v367[29];
                        if (v128 > 2)
                        {
                          switch(v128)
                          {
                            case 3:
                              v129 = "proxy";
                              goto LABEL_287;
                            case 4:
                              v129 = "fallback";
                              goto LABEL_287;
                            case 5:
                              v129 = "transform";
                              goto LABEL_287;
                          }
                        }

                        else
                        {
                          switch(v128)
                          {
                            case 0:
                              v129 = "path";
                              goto LABEL_287;
                            case 1:
                              v129 = "resolver";
                              goto LABEL_287;
                            case 2:
                              v129 = nw_endpoint_flow_mode_string(v126[33]);
LABEL_287:

                              v183 = v127;
                              os_unfair_lock_lock(v183 + 28);
                              v184 = v183[8];
                              os_unfair_lock_unlock(v183 + 28);

                              *buf = 136447746;
                              v393 = "nw_endpoint_flow_receive_report";
                              v394 = 2082;
                              v395 = v87 + 184;
                              v396 = 2082;
                              v397 = v90;
                              v398 = 2082;
                              v399 = v93;
                              v400 = 2082;
                              v401 = v125;
                              v402 = 2082;
                              v403 = v129;
                              v404 = 2114;
                              v405 = v184;
                              _os_log_impl(&dword_181A37000, v86, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] adding candidate child protocol", buf, 0x48u);

                              goto LABEL_288;
                          }
                        }

                        v129 = "unknown-mode";
                        goto LABEL_287;
                      }

LABEL_130:
                      nw_endpoint_handler_report(v15, 0, v47, 0);
                      goto LABEL_131;
                    }
                  }

                  else if (a2 != 2)
                  {
                    v370 = 0;
                    goto LABEL_127;
                  }

                  v370 = 0;
                  v71 = *(v50 + 118);
                  if (v71)
                  {
                    v47 = a4;
                    if (!v11)
                    {
                      goto LABEL_129;
                    }

                    v72 = _nw_array_contains_object(v71, v11) ^ 1;
                    if (!a4)
                    {
                      LOBYTE(v72) = 1;
                    }

                    if ((v72 & 1) == 0 && *a4 == 3 && a4[1] == 4)
                    {
                      goto LABEL_125;
                    }

                    goto LABEL_128;
                  }

LABEL_127:
                  v47 = a4;
                  goto LABEL_129;
                }

                LOBYTE(v63) = 0;
              }

              if (a2 != 2)
              {
                goto LABEL_108;
              }

              goto LABEL_94;
            }
          }

          v375 = 0;
          goto LABEL_83;
        }
      }

      nw_endpoint_handler_report(v15, v11, a4, v376);
      goto LABEL_50;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v17 = gconnectionLogObj;
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
LABEL_41:

      v11 = v379;
      v15 = v377;
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

    v22 = nw_endpoint_handler_copy_endpoint(v19);
    v23 = v22;
    v371 = v22;
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
    v34 = v367[29];
    v365 = v31;
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
          v369 = v10;

          v36 = v33;
          os_unfair_lock_lock(v36 + 28);
          v37 = v36[8];
          os_unfair_lock_unlock(v36 + 28);

          v374 = v37;
          v38 = nw_endpoint_handler_get_id_string(v379);
          v362 = nw_endpoint_handler_dry_run_string(v379);
          v39 = nw_endpoint_handler_copy_endpoint(v379);
          v40 = v39;
          v359 = a2;
          log = v17;
          if (v39)
          {
            v41 = _nw_endpoint_get_logging_description(v39);
            v42 = v21;
          }

          else
          {
            v42 = v21;
            v41 = "<NULL>";
          }

          v43 = (v18 + 46);

          v44 = nw_endpoint_handler_state_string(v379);
          v45 = nw_endpoint_handler_mode_string(v379);
          v46 = nw_endpoint_handler_copy_current_path(v379);
          *buf = 136449282;
          v393 = "nw_endpoint_flow_receive_report";
          v394 = 2082;
          v395 = v43;
          v396 = 2082;
          v397 = v42;
          v398 = 2082;
          v399 = v24;
          v400 = 2082;
          v401 = v365;
          v402 = 2082;
          v403 = v35;
          v404 = 2114;
          v405 = v374;
          v406 = 2082;
          v407 = v38;
          v408 = 2082;
          v409 = v362;
          v410 = 2082;
          v411 = v41;
          v412 = 2082;
          v413 = v44;
          v414 = 2082;
          v415 = v45;
          v416 = 2114;
          v417 = v46;
          v17 = log;
          _os_log_impl(&dword_181A37000, log, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] received child report: [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] ", buf, 0x84u);

          a2 = v359;
          v10 = v369;

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
    v393 = "nw_endpoint_flow_receive_report";
    v394 = 2082;
    v395 = v26;
    v396 = 2082;
    v397 = "flow";
    _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_DEFAULT, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
  }

LABEL_18:
  v27 = 0;
LABEL_432:

  return v27;
}