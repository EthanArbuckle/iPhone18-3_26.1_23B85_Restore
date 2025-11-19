uint64_t nw_tls_set_peer_ec_public_key()
{
  v17 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v14 = "nw_tls_set_peer_ec_public_key";
  v0 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v0, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      v2 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_14;
      }

      *buf = 136446210;
      v14 = "nw_tls_set_peer_ec_public_key";
      v3 = "%{public}s nw_tls_set_peer_ec_public_key not implemented";
LABEL_12:
      v8 = v1;
      v9 = v2;
LABEL_13:
      _os_log_impl(&dword_181A37000, v8, v9, v3, buf, 0xCu);
      goto LABEL_14;
    }

    if (v11 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      v2 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_14;
      }

      *buf = 136446210;
      v14 = "nw_tls_set_peer_ec_public_key";
      v3 = "%{public}s nw_tls_set_peer_ec_public_key not implemented, backtrace limit exceeded";
      goto LABEL_12;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    v6 = type;
    v7 = os_log_type_enabled(gLogObj, type);
    if (backtrace_string)
    {
      if (v7)
      {
        *buf = 136446466;
        v14 = "nw_tls_set_peer_ec_public_key";
        v15 = 2082;
        v16 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s nw_tls_set_peer_ec_public_key not implemented, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    else if (v7)
    {
      *buf = 136446210;
      v14 = "nw_tls_set_peer_ec_public_key";
      v3 = "%{public}s nw_tls_set_peer_ec_public_key not implemented, no backtrace";
      v8 = v5;
      v9 = v6;
      goto LABEL_13;
    }
  }

LABEL_14:
  if (v0)
  {
    free(v0);
  }

  return 0;
}

uint64_t nw_tls_get_peer_ocsp_response()
{
  v17 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v14 = "nw_tls_get_peer_ocsp_response";
  v0 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v0, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      v2 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_14;
      }

      *buf = 136446210;
      v14 = "nw_tls_get_peer_ocsp_response";
      v3 = "%{public}s nw_tls_get_peer_ocsp_response not implemented";
LABEL_12:
      v8 = v1;
      v9 = v2;
LABEL_13:
      _os_log_impl(&dword_181A37000, v8, v9, v3, buf, 0xCu);
      goto LABEL_14;
    }

    if (v11 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      v2 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_14;
      }

      *buf = 136446210;
      v14 = "nw_tls_get_peer_ocsp_response";
      v3 = "%{public}s nw_tls_get_peer_ocsp_response not implemented, backtrace limit exceeded";
      goto LABEL_12;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    v6 = type;
    v7 = os_log_type_enabled(gLogObj, type);
    if (backtrace_string)
    {
      if (v7)
      {
        *buf = 136446466;
        v14 = "nw_tls_get_peer_ocsp_response";
        v15 = 2082;
        v16 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s nw_tls_get_peer_ocsp_response not implemented, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    else if (v7)
    {
      *buf = 136446210;
      v14 = "nw_tls_get_peer_ocsp_response";
      v3 = "%{public}s nw_tls_get_peer_ocsp_response not implemented, no backtrace";
      v8 = v5;
      v9 = v6;
      goto LABEL_13;
    }
  }

LABEL_14:
  if (v0)
  {
    free(v0);
  }

  return 0;
}

uint64_t nw_tls_set_peer_trust()
{
  v17 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v14 = "nw_tls_set_peer_trust";
  v0 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v0, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      v2 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_14;
      }

      *buf = 136446210;
      v14 = "nw_tls_set_peer_trust";
      v3 = "%{public}s nw_tls_set_peer_trust not implemented";
LABEL_12:
      v8 = v1;
      v9 = v2;
LABEL_13:
      _os_log_impl(&dword_181A37000, v8, v9, v3, buf, 0xCu);
      goto LABEL_14;
    }

    if (v11 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      v2 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_14;
      }

      *buf = 136446210;
      v14 = "nw_tls_set_peer_trust";
      v3 = "%{public}s nw_tls_set_peer_trust not implemented, backtrace limit exceeded";
      goto LABEL_12;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    v6 = type;
    v7 = os_log_type_enabled(gLogObj, type);
    if (backtrace_string)
    {
      if (v7)
      {
        *buf = 136446466;
        v14 = "nw_tls_set_peer_trust";
        v15 = 2082;
        v16 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s nw_tls_set_peer_trust not implemented, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    else if (v7)
    {
      *buf = 136446210;
      v14 = "nw_tls_set_peer_trust";
      v3 = "%{public}s nw_tls_set_peer_trust not implemented, no backtrace";
      v8 = v5;
      v9 = v6;
      goto LABEL_13;
    }
  }

LABEL_14:
  if (v0)
  {
    free(v0);
  }

  return 0;
}

uint64_t nw_tls_set_client_auth()
{
  v17 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v14 = "nw_tls_set_client_auth";
  v0 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v0, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      v2 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_14;
      }

      *buf = 136446210;
      v14 = "nw_tls_set_client_auth";
      v3 = "%{public}s nw_tls_set_client_auth not implemented";
LABEL_12:
      v8 = v1;
      v9 = v2;
LABEL_13:
      _os_log_impl(&dword_181A37000, v8, v9, v3, buf, 0xCu);
      goto LABEL_14;
    }

    if (v11 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      v2 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_14;
      }

      *buf = 136446210;
      v14 = "nw_tls_set_client_auth";
      v3 = "%{public}s nw_tls_set_client_auth not implemented, backtrace limit exceeded";
      goto LABEL_12;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    v6 = type;
    v7 = os_log_type_enabled(gLogObj, type);
    if (backtrace_string)
    {
      if (v7)
      {
        *buf = 136446466;
        v14 = "nw_tls_set_client_auth";
        v15 = 2082;
        v16 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s nw_tls_set_client_auth not implemented, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    else if (v7)
    {
      *buf = 136446210;
      v14 = "nw_tls_set_client_auth";
      v3 = "%{public}s nw_tls_set_client_auth not implemented, no backtrace";
      v8 = v5;
      v9 = v6;
      goto LABEL_13;
    }
  }

LABEL_14:
  if (v0)
  {
    free(v0);
  }

  return 0;
}

uint64_t nw_tls_set_client_auth_type()
{
  v17 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v14 = "nw_tls_set_client_auth_type";
  v0 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v0, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      v2 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_14;
      }

      *buf = 136446210;
      v14 = "nw_tls_set_client_auth_type";
      v3 = "%{public}s nw_tls_set_client_auth_type not implemented";
LABEL_12:
      v8 = v1;
      v9 = v2;
LABEL_13:
      _os_log_impl(&dword_181A37000, v8, v9, v3, buf, 0xCu);
      goto LABEL_14;
    }

    if (v11 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      v2 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_14;
      }

      *buf = 136446210;
      v14 = "nw_tls_set_client_auth_type";
      v3 = "%{public}s nw_tls_set_client_auth_type not implemented, backtrace limit exceeded";
      goto LABEL_12;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    v6 = type;
    v7 = os_log_type_enabled(gLogObj, type);
    if (backtrace_string)
    {
      if (v7)
      {
        *buf = 136446466;
        v14 = "nw_tls_set_client_auth_type";
        v15 = 2082;
        v16 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s nw_tls_set_client_auth_type not implemented, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    else if (v7)
    {
      *buf = 136446210;
      v14 = "nw_tls_set_client_auth_type";
      v3 = "%{public}s nw_tls_set_client_auth_type not implemented, no backtrace";
      v8 = v5;
      v9 = v6;
      goto LABEL_13;
    }
  }

LABEL_14:
  if (v0)
  {
    free(v0);
  }

  return 0;
}

uint64_t nw_tls_get_negotiated_protocol_version()
{
  v17 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v14 = "nw_tls_get_negotiated_protocol_version";
  v0 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v0, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      v2 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_14;
      }

      *buf = 136446210;
      v14 = "nw_tls_get_negotiated_protocol_version";
      v3 = "%{public}s nw_tls_get_negotiated_protocol_version not implemented";
LABEL_12:
      v8 = v1;
      v9 = v2;
LABEL_13:
      _os_log_impl(&dword_181A37000, v8, v9, v3, buf, 0xCu);
      goto LABEL_14;
    }

    if (v11 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      v2 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_14;
      }

      *buf = 136446210;
      v14 = "nw_tls_get_negotiated_protocol_version";
      v3 = "%{public}s nw_tls_get_negotiated_protocol_version not implemented, backtrace limit exceeded";
      goto LABEL_12;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    v6 = type;
    v7 = os_log_type_enabled(gLogObj, type);
    if (backtrace_string)
    {
      if (v7)
      {
        *buf = 136446466;
        v14 = "nw_tls_get_negotiated_protocol_version";
        v15 = 2082;
        v16 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s nw_tls_get_negotiated_protocol_version not implemented, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    else if (v7)
    {
      *buf = 136446210;
      v14 = "nw_tls_get_negotiated_protocol_version";
      v3 = "%{public}s nw_tls_get_negotiated_protocol_version not implemented, no backtrace";
      v8 = v5;
      v9 = v6;
      goto LABEL_13;
    }
  }

LABEL_14:
  if (v0)
  {
    free(v0);
  }

  return 0;
}

uint64_t nw_tls_get_negotiated_ssl_protocol()
{
  v17 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v14 = "nw_tls_get_negotiated_ssl_protocol";
  v0 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v0, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      v2 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_14;
      }

      *buf = 136446210;
      v14 = "nw_tls_get_negotiated_ssl_protocol";
      v3 = "%{public}s nw_tls_get_negotiated_ssl_protocol not implemented";
LABEL_12:
      v8 = v1;
      v9 = v2;
LABEL_13:
      _os_log_impl(&dword_181A37000, v8, v9, v3, buf, 0xCu);
      goto LABEL_14;
    }

    if (v11 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      v2 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_14;
      }

      *buf = 136446210;
      v14 = "nw_tls_get_negotiated_ssl_protocol";
      v3 = "%{public}s nw_tls_get_negotiated_ssl_protocol not implemented, backtrace limit exceeded";
      goto LABEL_12;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    v6 = type;
    v7 = os_log_type_enabled(gLogObj, type);
    if (backtrace_string)
    {
      if (v7)
      {
        *buf = 136446466;
        v14 = "nw_tls_get_negotiated_ssl_protocol";
        v15 = 2082;
        v16 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s nw_tls_get_negotiated_ssl_protocol not implemented, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    else if (v7)
    {
      *buf = 136446210;
      v14 = "nw_tls_get_negotiated_ssl_protocol";
      v3 = "%{public}s nw_tls_get_negotiated_ssl_protocol not implemented, no backtrace";
      v8 = v5;
      v9 = v6;
      goto LABEL_13;
    }
  }

LABEL_14:
  if (v0)
  {
    free(v0);
  }

  return 0;
}

uint64_t nw_tls_set_config()
{
  v17 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v14 = "nw_tls_set_config";
  v0 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v0, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      v2 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_14;
      }

      *buf = 136446210;
      v14 = "nw_tls_set_config";
      v3 = "%{public}s nw_tls_set_config not implemented";
LABEL_12:
      v8 = v1;
      v9 = v2;
LABEL_13:
      _os_log_impl(&dword_181A37000, v8, v9, v3, buf, 0xCu);
      goto LABEL_14;
    }

    if (v11 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      v2 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_14;
      }

      *buf = 136446210;
      v14 = "nw_tls_set_config";
      v3 = "%{public}s nw_tls_set_config not implemented, backtrace limit exceeded";
      goto LABEL_12;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    v6 = type;
    v7 = os_log_type_enabled(gLogObj, type);
    if (backtrace_string)
    {
      if (v7)
      {
        *buf = 136446466;
        v14 = "nw_tls_set_config";
        v15 = 2082;
        v16 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s nw_tls_set_config not implemented, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    else if (v7)
    {
      *buf = 136446210;
      v14 = "nw_tls_set_config";
      v3 = "%{public}s nw_tls_set_config not implemented, no backtrace";
      v8 = v5;
      v9 = v6;
      goto LABEL_13;
    }
  }

LABEL_14:
  if (v0)
  {
    free(v0);
  }

  return 0;
}

uint64_t nw_tls_create_peer_acceptable_distinguished_names()
{
  v17 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v14 = "nw_tls_create_peer_acceptable_distinguished_names";
  v0 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v0, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      v2 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_14;
      }

      *buf = 136446210;
      v14 = "nw_tls_create_peer_acceptable_distinguished_names";
      v3 = "%{public}s nw_tls_create_peer_acceptable_distinguished_names not implemented";
LABEL_12:
      v8 = v1;
      v9 = v2;
LABEL_13:
      _os_log_impl(&dword_181A37000, v8, v9, v3, buf, 0xCu);
      goto LABEL_14;
    }

    if (v11 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      v2 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_14;
      }

      *buf = 136446210;
      v14 = "nw_tls_create_peer_acceptable_distinguished_names";
      v3 = "%{public}s nw_tls_create_peer_acceptable_distinguished_names not implemented, backtrace limit exceeded";
      goto LABEL_12;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    v6 = type;
    v7 = os_log_type_enabled(gLogObj, type);
    if (backtrace_string)
    {
      if (v7)
      {
        *buf = 136446466;
        v14 = "nw_tls_create_peer_acceptable_distinguished_names";
        v15 = 2082;
        v16 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s nw_tls_create_peer_acceptable_distinguished_names not implemented, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    else if (v7)
    {
      *buf = 136446210;
      v14 = "nw_tls_create_peer_acceptable_distinguished_names";
      v3 = "%{public}s nw_tls_create_peer_acceptable_distinguished_names not implemented, no backtrace";
      v8 = v5;
      v9 = v6;
      goto LABEL_13;
    }
  }

LABEL_14:
  if (v0)
  {
    free(v0);
  }

  return 0;
}

uint64_t nw_tls_create_peer_trust()
{
  v17 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v14 = "nw_tls_create_peer_trust";
  v0 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v0, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      v2 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_14;
      }

      *buf = 136446210;
      v14 = "nw_tls_create_peer_trust";
      v3 = "%{public}s nw_tls_create_peer_trust not implemented";
LABEL_12:
      v8 = v1;
      v9 = v2;
LABEL_13:
      _os_log_impl(&dword_181A37000, v8, v9, v3, buf, 0xCu);
      goto LABEL_14;
    }

    if (v11 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      v2 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_14;
      }

      *buf = 136446210;
      v14 = "nw_tls_create_peer_trust";
      v3 = "%{public}s nw_tls_create_peer_trust not implemented, backtrace limit exceeded";
      goto LABEL_12;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    v6 = type;
    v7 = os_log_type_enabled(gLogObj, type);
    if (backtrace_string)
    {
      if (v7)
      {
        *buf = 136446466;
        v14 = "nw_tls_create_peer_trust";
        v15 = 2082;
        v16 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s nw_tls_create_peer_trust not implemented, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    else if (v7)
    {
      *buf = 136446210;
      v14 = "nw_tls_create_peer_trust";
      v3 = "%{public}s nw_tls_create_peer_trust not implemented, no backtrace";
      v8 = v5;
      v9 = v6;
      goto LABEL_13;
    }
  }

LABEL_14:
  if (v0)
  {
    free(v0);
  }

  return 0;
}

uint64_t nw_tls_fetch_peer_public_key()
{
  v17 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v14 = "nw_tls_fetch_peer_public_key";
  v0 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v0, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      v2 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_14;
      }

      *buf = 136446210;
      v14 = "nw_tls_fetch_peer_public_key";
      v3 = "%{public}s nw_tls_fetch_peer_public_key not implemented";
LABEL_12:
      v8 = v1;
      v9 = v2;
LABEL_13:
      _os_log_impl(&dword_181A37000, v8, v9, v3, buf, 0xCu);
      goto LABEL_14;
    }

    if (v11 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      v2 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_14;
      }

      *buf = 136446210;
      v14 = "nw_tls_fetch_peer_public_key";
      v3 = "%{public}s nw_tls_fetch_peer_public_key not implemented, backtrace limit exceeded";
      goto LABEL_12;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    v6 = type;
    v7 = os_log_type_enabled(gLogObj, type);
    if (backtrace_string)
    {
      if (v7)
      {
        *buf = 136446466;
        v14 = "nw_tls_fetch_peer_public_key";
        v15 = 2082;
        v16 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s nw_tls_fetch_peer_public_key not implemented, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    else if (v7)
    {
      *buf = 136446210;
      v14 = "nw_tls_fetch_peer_public_key";
      v3 = "%{public}s nw_tls_fetch_peer_public_key not implemented, no backtrace";
      v8 = v5;
      v9 = v6;
      goto LABEL_13;
    }
  }

LABEL_14:
  if (v0)
  {
    free(v0);
  }

  return 0;
}

uint64_t nw_tls_set_identity_from_array()
{
  v17 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v14 = "nw_tls_set_identity_from_array";
  v0 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v0, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      v2 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_14;
      }

      *buf = 136446210;
      v14 = "nw_tls_set_identity_from_array";
      v3 = "%{public}s nw_tls_set_identity_from_array not implemented";
LABEL_12:
      v8 = v1;
      v9 = v2;
LABEL_13:
      _os_log_impl(&dword_181A37000, v8, v9, v3, buf, 0xCu);
      goto LABEL_14;
    }

    if (v11 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v1 = gLogObj;
      v2 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_14;
      }

      *buf = 136446210;
      v14 = "nw_tls_set_identity_from_array";
      v3 = "%{public}s nw_tls_set_identity_from_array not implemented, backtrace limit exceeded";
      goto LABEL_12;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    v6 = type;
    v7 = os_log_type_enabled(gLogObj, type);
    if (backtrace_string)
    {
      if (v7)
      {
        *buf = 136446466;
        v14 = "nw_tls_set_identity_from_array";
        v15 = 2082;
        v16 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s nw_tls_set_identity_from_array not implemented, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    else if (v7)
    {
      *buf = 136446210;
      v14 = "nw_tls_set_identity_from_array";
      v3 = "%{public}s nw_tls_set_identity_from_array not implemented, no backtrace";
      v8 = v5;
      v9 = v6;
      goto LABEL_13;
    }
  }

LABEL_14:
  if (v0)
  {
    free(v0);
  }

  return 0;
}

void sub_18234C578(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = NWCandidate;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_18234C7B8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void nw_candidate_manager_inject(NWConcrete_nw_candidate_manager *a1, NWCandidate *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v4)
  {
    if ((*(v4 + 40) & 8) != 0)
    {
      if (__nwlog_candidate_manager_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_candidate_manager_log::onceToken, &__block_literal_global_24_47429);
      }

      v10 = gcandidate_managerLogObj;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        log_id = v3->log_id;
        *buf = 136446722;
        v24 = "nw_candidate_manager_inject";
        v25 = 2048;
        v26 = log_id;
        v27 = 2112;
        v28 = v5;
        _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_DEFAULT, "%{public}s [CM%zu] Candidate %@ already injected, skipping", buf, 0x20u);
      }
    }

    else
    {
      if (v3->add_eligible_details)
      {
        type = 0uLL;
        nw_path_get_nexus_agent_uuid(v4->current_path, &type);
        nw_interface_option_details_set_nexus_agent(v5->details, &type);
        details = v5->details;
        v7 = nw_path_copy_interface(v5->current_path);
        nw_interface_option_details_set_interface(details, v7);

        if (__nwlog_candidate_manager_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_candidate_manager_log::onceToken, &__block_literal_global_24_47429);
        }

        v8 = gcandidate_managerLogObj;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v9 = v3->log_id;
          *buf = 136446722;
          v24 = "nw_candidate_manager_inject";
          v25 = 2048;
          v26 = v9;
          v27 = 2112;
          v28 = v5;
          _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_INFO, "%{public}s [CM%zu] adding %@", buf, 0x20u);
        }

        (*(v3->add_eligible_details + 2))();
        *(v5 + 40) |= 8u;
        goto LABEL_19;
      }

      if (__nwlog_candidate_manager_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_candidate_manager_log::onceToken, &__block_literal_global_24_47429);
      }

      v10 = gcandidate_managerLogObj;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v12 = v3->log_id;
        *buf = 136446722;
        v24 = "nw_candidate_manager_inject";
        v25 = 2048;
        v26 = v12;
        v27 = 2112;
        v28 = v5;
        _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_ERROR, "%{public}s [CM%zu] Failed to add %@", buf, 0x20u);
      }
    }

    goto LABEL_19;
  }

  v13 = __nwlog_obj();
  *buf = 136446210;
  v24 = "nw_candidate_manager_inject";
  v14 = _os_log_send_and_compose_impl();

  LOBYTE(type) = 16;
  v21 = 0;
  if (__nwlog_fault(v14, &type, &v21))
  {
    if (type == 17)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v15, type))
      {
        *buf = 136446210;
        v24 = "nw_candidate_manager_inject";
        _os_log_impl(&dword_181A37000, v15, v16, "%{public}s called with null candidate", buf, 0xCu);
      }
    }

    else if (v21 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v15 = __nwlog_obj();
      v18 = type;
      v19 = os_log_type_enabled(v15, type);
      if (backtrace_string)
      {
        if (v19)
        {
          *buf = 136446466;
          v24 = "nw_candidate_manager_inject";
          v25 = 2082;
          v26 = backtrace_string;
          _os_log_impl(&dword_181A37000, v15, v18, "%{public}s called with null candidate, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_36;
      }

      if (v19)
      {
        *buf = 136446210;
        v24 = "nw_candidate_manager_inject";
        _os_log_impl(&dword_181A37000, v15, v18, "%{public}s called with null candidate, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v15 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v15, type))
      {
        *buf = 136446210;
        v24 = "nw_candidate_manager_inject";
        _os_log_impl(&dword_181A37000, v15, v20, "%{public}s called with null candidate, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_36:
  if (v14)
  {
    free(v14);
  }

LABEL_19:
}

void nw_candidate_manager_remove(NWConcrete_nw_candidate_manager *a1, NWCandidate *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v4)
  {
    if (v4->details)
    {
      if (v3->remove_eligible_details)
      {
        if (__nwlog_candidate_manager_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_candidate_manager_log::onceToken, &__block_literal_global_24_47429);
        }

        v6 = gcandidate_managerLogObj;
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          log_id = v3->log_id;
          *buf = 136446722;
          v22 = "nw_candidate_manager_remove";
          v23 = 2048;
          v24 = log_id;
          v25 = 2112;
          v26 = v5;
          _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s [CM%zu] Removing %@", buf, 0x20u);
        }

        *(v5 + 40) &= ~8u;
        (*(v3->remove_eligible_details + 2))();
        goto LABEL_19;
      }

      if (__nwlog_candidate_manager_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_candidate_manager_log::onceToken, &__block_literal_global_24_47429);
      }

      v8 = gcandidate_managerLogObj;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = v3->log_id;
        *buf = 136446722;
        v22 = "nw_candidate_manager_remove";
        v23 = 2048;
        v24 = v10;
        v25 = 2112;
        v26 = v5;
        _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_ERROR, "%{public}s [CM%zu] Unable to remove %@", buf, 0x20u);
      }
    }

    else
    {
      if (__nwlog_candidate_manager_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_candidate_manager_log::onceToken, &__block_literal_global_24_47429);
      }

      v8 = gcandidate_managerLogObj;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = v3->log_id;
        *buf = 136446722;
        v22 = "nw_candidate_manager_remove";
        v23 = 2048;
        v24 = v9;
        v25 = 2112;
        v26 = v5;
        _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_INFO, "%{public}s [CM%zu] Candidate %@ not injected, skipping", buf, 0x20u);
      }
    }

    goto LABEL_19;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v22 = "nw_candidate_manager_remove";
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
        v22 = "nw_candidate_manager_remove";
        _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null candidate", buf, 0xCu);
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
          v22 = "nw_candidate_manager_remove";
          v23 = 2082;
          v24 = backtrace_string;
          _os_log_impl(&dword_181A37000, v13, v16, "%{public}s called with null candidate, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_36;
      }

      if (v17)
      {
        *buf = 136446210;
        v22 = "nw_candidate_manager_remove";
        _os_log_impl(&dword_181A37000, v13, v16, "%{public}s called with null candidate, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v13 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v22 = "nw_candidate_manager_remove";
        _os_log_impl(&dword_181A37000, v13, v18, "%{public}s called with null candidate, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_36:
  if (v12)
  {
    free(v12);
  }

LABEL_19:
}

uint64_t nw_candidate_manager_get_next_id(void)
{
  v7 = *MEMORY[0x1E69E9840];
  add = atomic_fetch_add(&nw_candidate_manager_get_next_id(void)::s_last_id, 1u);
  result = add + 1;
  if (add == -1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v2 = gLogObj;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = 136446466;
      v4 = "nw_candidate_manager_get_next_id";
      v5 = 1024;
      v6 = 0;
      _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_ERROR, "%{public}s reached %u agent ids, wrapping", &v3, 0x12u);
    }

    return nw_candidate_manager_get_next_id();
  }

  return result;
}

id nw_candidate_manager_create_raw(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [[NWConcrete_nw_candidate_manager alloc] init:v1];
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_candidate_manager_create_raw";
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
        v15 = "nw_candidate_manager_create_raw";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null parameters", buf, 0xCu);
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
          v15 = "nw_candidate_manager_create_raw";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_candidate_manager_create_raw";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_candidate_manager_create_raw";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

  v2 = 0;
LABEL_3:

  return v2;
}

void *nw_candidate_manager_create(const unsigned __int8 *a1, void *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (!a1)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v26 = "nw_candidate_manager_create";
    v11 = _os_log_send_and_compose_impl();

    out[0] = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (!__nwlog_fault(v11, out, &v24))
    {
      goto LABEL_42;
    }

    if (out[0] == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = out[0];
      if (os_log_type_enabled(v12, out[0]))
      {
        *buf = 136446210;
        v26 = "nw_candidate_manager_create";
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null session_id", buf, 0xCu);
      }
    }

    else if (v24 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v17 = out[0];
      v18 = os_log_type_enabled(v12, out[0]);
      if (backtrace_string)
      {
        if (v18)
        {
          *buf = 136446466;
          v26 = "nw_candidate_manager_create";
          v27 = 2082;
          v28 = backtrace_string;
          _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null session_id, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (!v11)
        {
          goto LABEL_44;
        }

        goto LABEL_43;
      }

      if (v18)
      {
        *buf = 136446210;
        v26 = "nw_candidate_manager_create";
        _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null session_id, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v12 = __nwlog_obj();
      v22 = out[0];
      if (os_log_type_enabled(v12, out[0]))
      {
        *buf = 136446210;
        v26 = "nw_candidate_manager_create";
        _os_log_impl(&dword_181A37000, v12, v22, "%{public}s called with null session_id, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_41;
  }

  if (!v3)
  {
    v14 = __nwlog_obj();
    *buf = 136446210;
    v26 = "nw_candidate_manager_create";
    v11 = _os_log_send_and_compose_impl();

    out[0] = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (!__nwlog_fault(v11, out, &v24))
    {
      goto LABEL_42;
    }

    if (out[0] == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v15 = out[0];
      if (os_log_type_enabled(v12, out[0]))
      {
        *buf = 136446210;
        v26 = "nw_candidate_manager_create";
        _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null parameters", buf, 0xCu);
      }
    }

    else if (v24 == 1)
    {
      v19 = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v20 = out[0];
      v21 = os_log_type_enabled(v12, out[0]);
      if (v19)
      {
        if (v21)
        {
          *buf = 136446466;
          v26 = "nw_candidate_manager_create";
          v27 = 2082;
          v28 = v19;
          _os_log_impl(&dword_181A37000, v12, v20, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v19);
LABEL_42:
        if (!v11)
        {
LABEL_44:
          v5 = 0;
          goto LABEL_8;
        }

LABEL_43:
        free(v11);
        goto LABEL_44;
      }

      if (v21)
      {
        *buf = 136446210;
        v26 = "nw_candidate_manager_create";
        _os_log_impl(&dword_181A37000, v12, v20, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v12 = __nwlog_obj();
      v23 = out[0];
      if (os_log_type_enabled(v12, out[0]))
      {
        *buf = 136446210;
        v26 = "nw_candidate_manager_create";
        _os_log_impl(&dword_181A37000, v12, v23, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_41:

    goto LABEL_42;
  }

  memset(out, 0, 37);
  uuid_unparse(a1, out);
  v5 = [[NWConcrete_nw_candidate_manager alloc] init:v4];
  bonjour_service = nw_endpoint_create_bonjour_service(out, "_flexquic._udp", "local.");
  nw_candidate_manager_set_bonjour_service(v5, bonjour_service);

  if (__nwlog_candidate_manager_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_candidate_manager_log::onceToken, &__block_literal_global_24_47429);
  }

  v7 = gcandidate_managerLogObj;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v5[1];
    *buf = 136446978;
    v26 = "nw_candidate_manager_create";
    v27 = 2048;
    v28 = v8;
    v29 = 2112;
    v30 = v5;
    v31 = 2112;
    v32 = v4;
    _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s [CM%zu] Creating candidate_manager %@ with parameters %@", buf, 0x2Au);
  }

LABEL_8:
  return v5;
}

void nw_candidate_manager_set_bonjour_service(void *a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_candidate_manager_set_bonjour_service";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v9, &type, &v22))
    {
      goto LABEL_39;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v25 = "nw_candidate_manager_set_bonjour_service";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null manager", buf, 0xCu);
      }
    }

    else if (v22 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v15 = type;
      v16 = os_log_type_enabled(v10, type);
      if (backtrace_string)
      {
        if (v16)
        {
          *buf = 136446466;
          v25 = "nw_candidate_manager_set_bonjour_service";
          v26 = 2082;
          v27 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null manager, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_39:
        if (!v9)
        {
          goto LABEL_5;
        }

LABEL_40:
        free(v9);
        goto LABEL_5;
      }

      if (v16)
      {
        *buf = 136446210;
        v25 = "nw_candidate_manager_set_bonjour_service";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null manager, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v25 = "nw_candidate_manager_set_bonjour_service";
        _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null manager, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_38:

    goto LABEL_39;
  }

  if (!v4 || (v6 = v4, v7 = _nw_endpoint_get_type(v6), v6, v7 == 3))
  {
    objc_storeStrong(v3 + 5, a2);
    goto LABEL_5;
  }

  v12 = __nwlog_obj();
  *buf = 136446210;
  v25 = "nw_candidate_manager_set_bonjour_service";
  v9 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v22 = 0;
  if (!__nwlog_fault(v9, &type, &v22))
  {
    goto LABEL_39;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v10 = __nwlog_obj();
    v13 = type;
    if (os_log_type_enabled(v10, type))
    {
      *buf = 136446210;
      v25 = "nw_candidate_manager_set_bonjour_service";
      _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null (service == nil || nw_endpoint_get_type(service) == nw_endpoint_type_bonjour_service)", buf, 0xCu);
    }

    goto LABEL_38;
  }

  if (v22 != 1)
  {
    v10 = __nwlog_obj();
    v21 = type;
    if (os_log_type_enabled(v10, type))
    {
      *buf = 136446210;
      v25 = "nw_candidate_manager_set_bonjour_service";
      _os_log_impl(&dword_181A37000, v10, v21, "%{public}s called with null (service == nil || nw_endpoint_get_type(service) == nw_endpoint_type_bonjour_service), backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_38;
  }

  v17 = __nw_create_backtrace_string();
  v10 = __nwlog_obj();
  v18 = type;
  v19 = os_log_type_enabled(v10, type);
  if (!v17)
  {
    if (v19)
    {
      *buf = 136446210;
      v25 = "nw_candidate_manager_set_bonjour_service";
      _os_log_impl(&dword_181A37000, v10, v18, "%{public}s called with null (service == nil || nw_endpoint_get_type(service) == nw_endpoint_type_bonjour_service), no backtrace", buf, 0xCu);
    }

    goto LABEL_38;
  }

  if (v19)
  {
    *buf = 136446466;
    v25 = "nw_candidate_manager_set_bonjour_service";
    v26 = 2082;
    v27 = v17;
    _os_log_impl(&dword_181A37000, v10, v18, "%{public}s called with null (service == nil || nw_endpoint_get_type(service) == nw_endpoint_type_bonjour_service), dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v17);
  if (v9)
  {
    goto LABEL_40;
  }

LABEL_5:
}

id nw_candidate_manager_create_with_connection(void *a1, void *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v15 = __nwlog_obj();
    *buf = 136446210;
    v32 = "nw_candidate_manager_create_with_connection";
    v16 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v29 = 0;
    if (!__nwlog_fault(v16, &type, &v29))
    {
      goto LABEL_45;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v17 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v17, type))
      {
        *buf = 136446210;
        v32 = "nw_candidate_manager_create_with_connection";
        _os_log_impl(&dword_181A37000, v17, v18, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (v29 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v17 = __nwlog_obj();
      v22 = type;
      v23 = os_log_type_enabled(v17, type);
      if (backtrace_string)
      {
        if (v23)
        {
          *buf = 136446466;
          v32 = "nw_candidate_manager_create_with_connection";
          v33 = 2082;
          v34 = backtrace_string;
          _os_log_impl(&dword_181A37000, v17, v22, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (!v16)
        {
          goto LABEL_47;
        }

        goto LABEL_46;
      }

      if (v23)
      {
        *buf = 136446210;
        v32 = "nw_candidate_manager_create_with_connection";
        _os_log_impl(&dword_181A37000, v17, v22, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v17 = __nwlog_obj();
      v27 = type;
      if (os_log_type_enabled(v17, type))
      {
        *buf = 136446210;
        v32 = "nw_candidate_manager_create_with_connection";
        _os_log_impl(&dword_181A37000, v17, v27, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_44;
  }

  if (v4)
  {
    v6 = v4;
    v7 = _nw_endpoint_get_type(v6);

    if (v7 != 3)
    {
      v19 = __nwlog_obj();
      *buf = 136446210;
      v32 = "nw_candidate_manager_create_with_connection";
      v16 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v29 = 0;
      if (!__nwlog_fault(v16, &type, &v29))
      {
        goto LABEL_45;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v17 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v17, type))
        {
          *buf = 136446210;
          v32 = "nw_candidate_manager_create_with_connection";
          _os_log_impl(&dword_181A37000, v17, v20, "%{public}s called with null (bonjour_endpoint == nullptr || nw_endpoint_get_type((nw_endpoint_t)bonjour_endpoint) == nw_endpoint_type_bonjour_service)", buf, 0xCu);
        }
      }

      else if (v29 == 1)
      {
        v24 = __nw_create_backtrace_string();
        v17 = __nwlog_obj();
        v25 = type;
        v26 = os_log_type_enabled(v17, type);
        if (v24)
        {
          if (v26)
          {
            *buf = 136446466;
            v32 = "nw_candidate_manager_create_with_connection";
            v33 = 2082;
            v34 = v24;
            _os_log_impl(&dword_181A37000, v17, v25, "%{public}s called with null (bonjour_endpoint == nullptr || nw_endpoint_get_type((nw_endpoint_t)bonjour_endpoint) == nw_endpoint_type_bonjour_service), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v24);
LABEL_45:
          if (!v16)
          {
LABEL_47:
            v8 = 0;
            goto LABEL_11;
          }

LABEL_46:
          free(v16);
          goto LABEL_47;
        }

        if (v26)
        {
          *buf = 136446210;
          v32 = "nw_candidate_manager_create_with_connection";
          _os_log_impl(&dword_181A37000, v17, v25, "%{public}s called with null (bonjour_endpoint == nullptr || nw_endpoint_get_type((nw_endpoint_t)bonjour_endpoint) == nw_endpoint_type_bonjour_service), no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v17 = __nwlog_obj();
        v28 = type;
        if (os_log_type_enabled(v17, type))
        {
          *buf = 136446210;
          v32 = "nw_candidate_manager_create_with_connection";
          _os_log_impl(&dword_181A37000, v17, v28, "%{public}s called with null (bonjour_endpoint == nullptr || nw_endpoint_get_type((nw_endpoint_t)bonjour_endpoint) == nw_endpoint_type_bonjour_service), backtrace limit exceeded", buf, 0xCu);
        }
      }

LABEL_44:

      goto LABEL_45;
    }
  }

  v8 = [[NWConcrete_nw_candidate_manager alloc] init:v3->parameters];
  nw_candidate_manager_set_bonjour_service(v8, v5);
  v9 = _nw_parameters_copy_extended_description(*(v8 + 10));
  if (__nwlog_candidate_manager_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_candidate_manager_log::onceToken, &__block_literal_global_24_47429);
  }

  v10 = gcandidate_managerLogObj;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(v8 + 1);
    v12 = v3;
    top_id = v12->top_id;

    *buf = 136447234;
    v32 = "nw_candidate_manager_create_with_connection";
    v33 = 2048;
    v34 = v11;
    v35 = 2112;
    v36 = v8;
    v37 = 2048;
    v38 = top_id;
    v39 = 2082;
    v40 = v9;
    _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_DEFAULT, "%{public}s [CM%zu] Creating candidate_manager %@ from connection [C%llu] with parameters %{public}s", buf, 0x34u);
  }

  if (v9)
  {
    free(v9);
  }

  nw_candidate_manager_set_connection(v8, v3);
  nw_candidate_manager_set_state(v8, 2);
LABEL_11:

  return v8;
}

void nw_candidate_manager_set_connection(NWConcrete_nw_candidate_manager *a1, NWConcrete_nw_connection *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    objc_storeStrong(&v3->connection, a2);
    objc_storeStrong(&v3->monitored_connection, a2);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = ___ZL35nw_candidate_manager_set_connectionP31NWConcrete_nw_candidate_managerP24NWConcrete_nw_connection_block_invoke;
    aBlock[3] = &unk_1E6A2BCB0;
    v5 = v3;
    v24 = v5;
    v6 = v4;
    v25 = v6;
    v7 = _Block_copy(aBlock);
    add_eligible_details = v5->add_eligible_details;
    v5->add_eligible_details = v7;

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = ___ZL35nw_candidate_manager_set_connectionP31NWConcrete_nw_candidate_managerP24NWConcrete_nw_connection_block_invoke_154;
    v20[3] = &unk_1E6A2BCB0;
    v9 = v5;
    v21 = v9;
    v22 = v6;
    v10 = _Block_copy(v20);
    remove_eligible_details = v9->remove_eligible_details;
    v9->remove_eligible_details = v10;

    goto LABEL_3;
  }

  v12 = __nwlog_obj();
  *buf = 136446210;
  v29 = "nw_candidate_manager_set_connection";
  v13 = _os_log_send_and_compose_impl();

  v27 = OS_LOG_TYPE_ERROR;
  v26 = 0;
  if (__nwlog_fault(v13, &v27, &v26))
  {
    if (v27 == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = v27;
      if (os_log_type_enabled(v14, v27))
      {
        *buf = 136446210;
        v29 = "nw_candidate_manager_set_connection";
        _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null manager", buf, 0xCu);
      }
    }

    else if (v26 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v14 = __nwlog_obj();
      v17 = v27;
      v18 = os_log_type_enabled(v14, v27);
      if (backtrace_string)
      {
        if (v18)
        {
          *buf = 136446466;
          v29 = "nw_candidate_manager_set_connection";
          v30 = 2082;
          v31 = backtrace_string;
          _os_log_impl(&dword_181A37000, v14, v17, "%{public}s called with null manager, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v18)
      {
        *buf = 136446210;
        v29 = "nw_candidate_manager_set_connection";
        _os_log_impl(&dword_181A37000, v14, v17, "%{public}s called with null manager, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v14 = __nwlog_obj();
      v19 = v27;
      if (os_log_type_enabled(v14, v27))
      {
        *buf = 136446210;
        v29 = "nw_candidate_manager_set_connection";
        _os_log_impl(&dword_181A37000, v14, v19, "%{public}s called with null manager, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v13)
  {
    free(v13);
  }

LABEL_3:
}

void nw_candidate_manager_set_state(void *a1, uint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    if (v3[40] != a2)
    {
      if (__nwlog_candidate_manager_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_candidate_manager_log::onceToken, &__block_literal_global_24_47429);
      }

      v5 = gcandidate_managerLogObj;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(v4 + 1);
        v7 = v4[40];
        if (v7 > 4)
        {
          v8 = "unknown-state";
        }

        else
        {
          v8 = off_1E6A2BD88[v7];
        }

        v9 = off_1E6A2BD88[a2];
        *buf = 136446978;
        v22 = "nw_candidate_manager_set_state";
        v23 = 2048;
        v24 = v6;
        v25 = 2080;
        v26 = v8;
        v27 = 2080;
        v28 = v9;
        _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s [CM%zu] Changing candidate_manager state changed from %s -> %s", buf, 0x2Au);
      }

      v4[40] = a2;
      if (a2 == 2 && (nw_parameters_get_server_mode(*(v4 + 10)) & 1) == 0 && nw_parameters_get_include_peer_to_peer(*(v4 + 10)))
      {
        nw_candidate_manager_monitor_interface_use(v4);
      }

      v10 = *(v4 + 21);
      if (v10)
      {
        (*(v10 + 16))(v10, a2, 0);
      }
    }

    goto LABEL_16;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v22 = "nw_candidate_manager_set_state";
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
        v22 = "nw_candidate_manager_set_state";
        _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null candidate_manager", buf, 0xCu);
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
          v22 = "nw_candidate_manager_set_state";
          v23 = 2082;
          v24 = backtrace_string;
          _os_log_impl(&dword_181A37000, v13, v16, "%{public}s called with null candidate_manager, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_33;
      }

      if (v17)
      {
        *buf = 136446210;
        v22 = "nw_candidate_manager_set_state";
        _os_log_impl(&dword_181A37000, v13, v16, "%{public}s called with null candidate_manager, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v13 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v22 = "nw_candidate_manager_set_state";
        _os_log_impl(&dword_181A37000, v13, v18, "%{public}s called with null candidate_manager, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_33:
  if (v12)
  {
    free(v12);
  }

LABEL_16:
}

void nw_candidate_manager_monitor_interface_use(NWConcrete_nw_candidate_manager *a1)
{
  v1 = a1;
  monitored_connection = v1->monitored_connection;
  if (monitored_connection && (*(v1 + 192) & 4) == 0)
  {
    *(v1 + 192) |= 4u;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = ___ZL42nw_candidate_manager_monitor_interface_useP31NWConcrete_nw_candidate_manager_block_invoke;
    v4[3] = &unk_1E6A2BD48;
    v3 = v1;
    v5 = v1;
    nw_connection_add_interface_use_callback(monitored_connection, v4);

    v1 = v3;
  }
}

void ___ZL42nw_candidate_manager_monitor_interface_useP31NWConcrete_nw_candidate_manager_block_invoke(uint64_t a1, uint64_t a2, int a3, void *a4, void *a5)
{
  v48 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (a3)
  {
    if (__nwlog_candidate_manager_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_candidate_manager_log::onceToken, &__block_literal_global_24_47429);
    }

    v11 = gcandidate_managerLogObj;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = *(*(a1 + 32) + 8);
      *buf = 136446466;
      *&buf[4] = "nw_candidate_manager_monitor_interface_use_block_invoke";
      *&buf[12] = 2048;
      *&buf[14] = v12;
      _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_INFO, "%{public}s [CM%zu] Connection cancelled", buf, 0x16u);
    }

    nw_candidate_manager_stop_lost_path_timer(*(a1 + 32));
    goto LABEL_31;
  }

  if (v9)
  {
    subtype = _nw_interface_get_subtype(v9);
    if (__nwlog_candidate_manager_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_candidate_manager_log::onceToken, &__block_literal_global_24_47429);
    }

    v14 = gcandidate_managerLogObj;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(*(a1 + 32) + 8);
      *buf = 136446722;
      *&buf[4] = "nw_candidate_manager_monitor_interface_use_block_invoke";
      *&buf[12] = 2048;
      *&buf[14] = v15;
      *&buf[22] = 2080;
      name = _nw_interface_get_name(v10);
      _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEFAULT, "%{public}s [CM%zu] Changed to working path over interface %s", buf, 0x20u);
    }

    nw_candidate_manager_stop_lost_path_timer(*(a1 + 32));
    v16 = *(a1 + 32);
    if (subtype == 1002)
    {
      goto LABEL_13;
    }

    v19 = v16;
    v20 = v19;
    if (v19)
    {
      if (v19->awdl_service_resolver)
      {
        if (__nwlog_candidate_manager_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_candidate_manager_log::onceToken, &__block_literal_global_24_47429);
        }

        v21 = gcandidate_managerLogObj;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          log_id = v20->log_id;
          *buf = 136446466;
          *&buf[4] = "nw_candidate_manager_stop_awdl_resolver";
          *&buf[12] = 2048;
          *&buf[14] = log_id;
          _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_DEFAULT, "%{public}s [CM%zu] Stopping AWDL service resolver", buf, 0x16u);
        }

        nw_resolver_cancel(v20->awdl_service_resolver);
        awdl_service_resolver = v20->awdl_service_resolver;
        v20->awdl_service_resolver = 0;

        awdl_endpoint = v20->awdl_endpoint;
        if (awdl_endpoint)
        {
          nw_candidate_manager_remove_hostname_resolver(v20, awdl_endpoint);
          v25 = v20->awdl_endpoint;
          v20->awdl_endpoint = 0;
        }
      }

LABEL_30:

      goto LABEL_31;
    }

    v35 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_candidate_manager_stop_awdl_resolver";
    v36 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v43 = 0;
    if (__nwlog_fault(v36, &type, &v43))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v37 = __nwlog_obj();
        v38 = type;
        if (os_log_type_enabled(v37, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_candidate_manager_stop_awdl_resolver";
          _os_log_impl(&dword_181A37000, v37, v38, "%{public}s called with null manager", buf, 0xCu);
        }
      }

      else if (v43 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v37 = __nwlog_obj();
        v40 = type;
        v41 = os_log_type_enabled(v37, type);
        if (backtrace_string)
        {
          if (v41)
          {
            *buf = 136446466;
            *&buf[4] = "nw_candidate_manager_stop_awdl_resolver";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v37, v40, "%{public}s called with null manager, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_59;
        }

        if (v41)
        {
          *buf = 136446210;
          *&buf[4] = "nw_candidate_manager_stop_awdl_resolver";
          _os_log_impl(&dword_181A37000, v37, v40, "%{public}s called with null manager, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v37 = __nwlog_obj();
        v42 = type;
        if (os_log_type_enabled(v37, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_candidate_manager_stop_awdl_resolver";
          _os_log_impl(&dword_181A37000, v37, v42, "%{public}s called with null manager, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_59:
    if (v36)
    {
      free(v36);
    }

    goto LABEL_30;
  }

  if (__nwlog_candidate_manager_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_candidate_manager_log::onceToken, &__block_literal_global_24_47429);
  }

  v17 = gcandidate_managerLogObj;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = *(*(a1 + 32) + 8);
    *buf = 136446466;
    *&buf[4] = "nw_candidate_manager_monitor_interface_use_block_invoke";
    *&buf[12] = 2048;
    *&buf[14] = v18;
    _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_DEFAULT, "%{public}s [CM%zu] Changed to no working path", buf, 0x16u);
  }

  if ((nw_parameters_get_server_mode(*(*(a1 + 32) + 80)) & 1) == 0)
  {
    v16 = *(a1 + 32);
    if (!v16->ids_endpoint || v16->ids_path_evaluator)
    {
LABEL_13:
      nw_candidate_manager_start_awdl_resolver(v16);
      goto LABEL_31;
    }

    v26 = v16;
    if (v26->lost_path_timer)
    {
      if (__nwlog_candidate_manager_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_candidate_manager_log::onceToken, &__block_literal_global_24_47429);
      }

      v27 = gcandidate_managerLogObj;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = v26->log_id;
        *buf = 136446466;
        *&buf[4] = "nw_candidate_manager_start_lost_path_timer";
        *&buf[12] = 2048;
        *&buf[14] = v28;
        _os_log_impl(&dword_181A37000, v27, OS_LOG_TYPE_INFO, "%{public}s [CM%zu] Lost path timer already started", buf, 0x16u);
      }
    }

    else
    {
      if (__nwlog_candidate_manager_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_candidate_manager_log::onceToken, &__block_literal_global_24_47429);
      }

      v29 = gcandidate_managerLogObj;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = v26->log_id;
        *buf = 136446466;
        *&buf[4] = "nw_candidate_manager_start_lost_path_timer";
        *&buf[12] = 2048;
        *&buf[14] = v30;
        _os_log_impl(&dword_181A37000, v29, OS_LOG_TYPE_DEFAULT, "%{public}s [CM%zu] Starting lost path timer", buf, 0x16u);
      }

      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = ___ZL42nw_candidate_manager_start_lost_path_timerP31NWConcrete_nw_candidate_manager_block_invoke;
      name = &unk_1E6A3D868;
      v47 = v26;
      source = nw_queue_context_create_source(0, 2, 3, 0, buf, 0);
      v26->lost_path_timer = source;
      v32 = source;
      v33 = dispatch_time(0x8000000000000000, 30000000000);
      nw_queue_set_timer_values(v32, v33, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
      nw_queue_activate_source(v26->lost_path_timer, v34);
      v27 = v47;
    }

    nw_candidate_manager_start_ids_internal(*(a1 + 32), *(*(a1 + 32) + 16));
  }

LABEL_31:
}

void nw_candidate_manager_stop_lost_path_timer(NWConcrete_nw_candidate_manager *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    if (__nwlog_candidate_manager_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_candidate_manager_log::onceToken, &__block_literal_global_24_47429);
    }

    v2 = gcandidate_managerLogObj;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      log_id = v1->log_id;
      *buf = 136446466;
      v17 = "nw_candidate_manager_stop_lost_path_timer";
      v18 = 2048;
      v19 = log_id;
      _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s [CM%zu] Stopping lost path timer", buf, 0x16u);
    }

    lost_path_timer = v1->lost_path_timer;
    if (lost_path_timer)
    {
      nw_queue_cancel_source(lost_path_timer, v4);
      v1->lost_path_timer = 0;
    }

    goto LABEL_8;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_candidate_manager_stop_lost_path_timer";
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
        v17 = "nw_candidate_manager_stop_lost_path_timer";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null candidate_manager", buf, 0xCu);
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
          v17 = "nw_candidate_manager_stop_lost_path_timer";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null candidate_manager, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_25;
      }

      if (v12)
      {
        *buf = 136446210;
        v17 = "nw_candidate_manager_stop_lost_path_timer";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null candidate_manager, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v17 = "nw_candidate_manager_stop_lost_path_timer";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null candidate_manager, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_25:
  if (v7)
  {
    free(v7);
  }

LABEL_8:
}

void ___ZL42nw_candidate_manager_start_lost_path_timerP31NWConcrete_nw_candidate_manager_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (__nwlog_candidate_manager_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_candidate_manager_log::onceToken, &__block_literal_global_24_47429);
  }

  v2 = gcandidate_managerLogObj;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 8);
    v4 = 136446466;
    v5 = "nw_candidate_manager_start_lost_path_timer_block_invoke";
    v6 = 2048;
    v7 = v3;
    _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s [CM%zu] Lost path timer timed out, falling back to AWDL", &v4, 0x16u);
  }

  nw_candidate_manager_stop_lost_path_timer(*(a1 + 32));
  nw_candidate_manager_start_awdl_resolver(*(a1 + 32));
}

void nw_candidate_manager_start_ids_internal(void *a1, void *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v19 = __nwlog_obj();
    *buf = 136446210;
    v41 = "nw_candidate_manager_start_ids_internal";
    v20 = _os_log_send_and_compose_impl();

    v39 = OS_LOG_TYPE_ERROR;
    v38 = 0;
    if (!__nwlog_fault(v20, &v39, &v38))
    {
      goto LABEL_49;
    }

    if (v39 == OS_LOG_TYPE_FAULT)
    {
      v21 = __nwlog_obj();
      v22 = v39;
      if (os_log_type_enabled(v21, v39))
      {
        *buf = 136446210;
        v41 = "nw_candidate_manager_start_ids_internal";
        _os_log_impl(&dword_181A37000, v21, v22, "%{public}s called with null candidate_manager", buf, 0xCu);
      }
    }

    else if (v38 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v21 = __nwlog_obj();
      v26 = v39;
      v27 = os_log_type_enabled(v21, v39);
      if (backtrace_string)
      {
        if (v27)
        {
          *buf = 136446466;
          v41 = "nw_candidate_manager_start_ids_internal";
          v42 = 2082;
          v43 = backtrace_string;
          _os_log_impl(&dword_181A37000, v21, v26, "%{public}s called with null candidate_manager, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_49:
        if (!v20)
        {
          goto LABEL_15;
        }

LABEL_50:
        free(v20);
        goto LABEL_15;
      }

      if (v27)
      {
        *buf = 136446210;
        v41 = "nw_candidate_manager_start_ids_internal";
        _os_log_impl(&dword_181A37000, v21, v26, "%{public}s called with null candidate_manager, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v21 = __nwlog_obj();
      v31 = v39;
      if (os_log_type_enabled(v21, v39))
      {
        *buf = 136446210;
        v41 = "nw_candidate_manager_start_ids_internal";
        _os_log_impl(&dword_181A37000, v21, v31, "%{public}s called with null candidate_manager, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_48:

    goto LABEL_49;
  }

  if (v4)
  {
    v6 = _nw_parameters_copy(v3[10]);
    v7 = v3[16];
    if (v7)
    {
      (*(v7 + 16))(v7, v6);
    }

    else
    {
      v8 = xpc_array_create(0, 0);
      xpc_array_set_string(v8, 0xFFFFFFFFFFFFFFFFLL, "com.apple.ids");
      v9 = xpc_array_create(0, 0);
      xpc_array_set_string(v9, 0xFFFFFFFFFFFFFFFFLL, "IDSGroupEntitledAgent");
      nw_parameters_set_required_netagent_classes(v6, v8, v9);
    }

    if (__nwlog_candidate_manager_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_candidate_manager_log::onceToken, &__block_literal_global_24_47429);
    }

    v10 = gcandidate_managerLogObj;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v3[1];
      *buf = 136446722;
      v41 = "nw_candidate_manager_start_ids_internal";
      v42 = 2048;
      v43 = v11;
      v44 = 2112;
      v45 = v5;
      _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_DEFAULT, "%{public}s [CM%zu] Starting: %@", buf, 0x20u);
    }

    evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint(v5, v6);
    v13 = v3[23];
    v3[23] = evaluator_for_endpoint;

    v14 = v3[23];
    if (v14)
    {
      v15 = v14;
      os_unfair_lock_lock(v14 + 24);
      v16 = v15[6];
      os_unfair_lock_unlock(v14 + 24);

      if (v16)
      {
        v17 = nw_parameters_copy_context(v6);
        v35[0] = MEMORY[0x1E69E9820];
        v35[1] = 3221225472;
        v35[2] = __nw_candidate_manager_start_ids_internal_block_invoke;
        v35[3] = &unk_1E6A3D760;
        v36 = v3;
        v16 = v16;
        v37 = v16;
        nw_queue_context_async(v17, v35);
      }
    }

    else
    {
      v16 = 0;
    }

    v18 = v3[23];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __nw_candidate_manager_start_ids_internal_block_invoke_2;
    v33[3] = &unk_1E6A3CD80;
    v34 = v3;
    nw_path_evaluator_set_update_handler(v18, 0, v33);

    goto LABEL_15;
  }

  v23 = __nwlog_obj();
  *buf = 136446210;
  v41 = "nw_candidate_manager_start_ids_internal";
  v20 = _os_log_send_and_compose_impl();

  v39 = OS_LOG_TYPE_ERROR;
  v38 = 0;
  if (!__nwlog_fault(v20, &v39, &v38))
  {
    goto LABEL_49;
  }

  if (v39 == OS_LOG_TYPE_FAULT)
  {
    v21 = __nwlog_obj();
    v24 = v39;
    if (os_log_type_enabled(v21, v39))
    {
      *buf = 136446210;
      v41 = "nw_candidate_manager_start_ids_internal";
      _os_log_impl(&dword_181A37000, v21, v24, "%{public}s called with null ids_endpoint", buf, 0xCu);
    }

    goto LABEL_48;
  }

  if (v38 != 1)
  {
    v21 = __nwlog_obj();
    v32 = v39;
    if (os_log_type_enabled(v21, v39))
    {
      *buf = 136446210;
      v41 = "nw_candidate_manager_start_ids_internal";
      _os_log_impl(&dword_181A37000, v21, v32, "%{public}s called with null ids_endpoint, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_48;
  }

  v28 = __nw_create_backtrace_string();
  v21 = __nwlog_obj();
  v29 = v39;
  v30 = os_log_type_enabled(v21, v39);
  if (!v28)
  {
    if (v30)
    {
      *buf = 136446210;
      v41 = "nw_candidate_manager_start_ids_internal";
      _os_log_impl(&dword_181A37000, v21, v29, "%{public}s called with null ids_endpoint, no backtrace", buf, 0xCu);
    }

    goto LABEL_48;
  }

  if (v30)
  {
    *buf = 136446466;
    v41 = "nw_candidate_manager_start_ids_internal";
    v42 = 2082;
    v43 = v28;
    _os_log_impl(&dword_181A37000, v21, v29, "%{public}s called with null ids_endpoint, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v28);
  if (v20)
  {
    goto LABEL_50;
  }

LABEL_15:
}

void nw_candidate_manager_start_awdl_resolver(NWConcrete_nw_candidate_manager *a1)
{
  v49 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v18 = __nwlog_obj();
    *buf = 136446210;
    v42 = "nw_candidate_manager_start_awdl_resolver";
    v19 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v39 = 0;
    if (!__nwlog_fault(v19, &type, &v39))
    {
      goto LABEL_70;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v20 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v20, type))
      {
        *buf = 136446210;
        v42 = "nw_candidate_manager_start_awdl_resolver";
        _os_log_impl(&dword_181A37000, v20, v21, "%{public}s called with null manager", buf, 0xCu);
      }
    }

    else if (v39 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v20 = __nwlog_obj();
      v27 = type;
      v28 = os_log_type_enabled(v20, type);
      if (backtrace_string)
      {
        if (v28)
        {
          *buf = 136446466;
          v42 = "nw_candidate_manager_start_awdl_resolver";
          v43 = 2082;
          v44 = backtrace_string;
          _os_log_impl(&dword_181A37000, v20, v27, "%{public}s called with null manager, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_70:
        if (!v19)
        {
          goto LABEL_20;
        }

LABEL_71:
        free(v19);
        goto LABEL_20;
      }

      if (v28)
      {
        *buf = 136446210;
        v42 = "nw_candidate_manager_start_awdl_resolver";
        _os_log_impl(&dword_181A37000, v20, v27, "%{public}s called with null manager, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v20 = __nwlog_obj();
      v34 = type;
      if (os_log_type_enabled(v20, type))
      {
        *buf = 136446210;
        v42 = "nw_candidate_manager_start_awdl_resolver";
        _os_log_impl(&dword_181A37000, v20, v34, "%{public}s called with null manager, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_69:

    goto LABEL_70;
  }

  if (!v1->service)
  {
    v22 = __nwlog_obj();
    *buf = 136446210;
    v42 = "nw_candidate_manager_start_awdl_resolver";
    v19 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v39 = 0;
    if (!__nwlog_fault(v19, &type, &v39))
    {
      goto LABEL_70;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v20 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v20, type))
      {
        *buf = 136446210;
        v42 = "nw_candidate_manager_start_awdl_resolver";
        _os_log_impl(&dword_181A37000, v20, v23, "%{public}s called with null manager->service", buf, 0xCu);
      }

      goto LABEL_69;
    }

    if (v39 != 1)
    {
      v20 = __nwlog_obj();
      v35 = type;
      if (os_log_type_enabled(v20, type))
      {
        *buf = 136446210;
        v42 = "nw_candidate_manager_start_awdl_resolver";
        _os_log_impl(&dword_181A37000, v20, v35, "%{public}s called with null manager->service, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_69;
    }

    v29 = __nw_create_backtrace_string();
    v20 = __nwlog_obj();
    v30 = type;
    v31 = os_log_type_enabled(v20, type);
    if (!v29)
    {
      if (v31)
      {
        *buf = 136446210;
        v42 = "nw_candidate_manager_start_awdl_resolver";
        _os_log_impl(&dword_181A37000, v20, v30, "%{public}s called with null manager->service, no backtrace", buf, 0xCu);
      }

      goto LABEL_69;
    }

    if (v31)
    {
      *buf = 136446466;
      v42 = "nw_candidate_manager_start_awdl_resolver";
      v43 = 2082;
      v44 = v29;
      _os_log_impl(&dword_181A37000, v20, v30, "%{public}s called with null manager->service, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_50;
  }

  if (!nw_parameters_get_include_peer_to_peer(v1->parameters))
  {
    v24 = __nwlog_obj();
    *buf = 136446210;
    v42 = "nw_candidate_manager_start_awdl_resolver";
    v19 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v39 = 0;
    if (!__nwlog_fault(v19, &type, &v39))
    {
      goto LABEL_70;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v20 = __nwlog_obj();
      v25 = type;
      if (os_log_type_enabled(v20, type))
      {
        *buf = 136446210;
        v42 = "nw_candidate_manager_start_awdl_resolver";
        _os_log_impl(&dword_181A37000, v20, v25, "%{public}s called with null nw_parameters_get_include_peer_to_peer(manager->parameters)", buf, 0xCu);
      }

      goto LABEL_69;
    }

    if (v39 != 1)
    {
      v20 = __nwlog_obj();
      v36 = type;
      if (os_log_type_enabled(v20, type))
      {
        *buf = 136446210;
        v42 = "nw_candidate_manager_start_awdl_resolver";
        _os_log_impl(&dword_181A37000, v20, v36, "%{public}s called with null nw_parameters_get_include_peer_to_peer(manager->parameters), backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_69;
    }

    v29 = __nw_create_backtrace_string();
    v20 = __nwlog_obj();
    v32 = type;
    v33 = os_log_type_enabled(v20, type);
    if (!v29)
    {
      if (v33)
      {
        *buf = 136446210;
        v42 = "nw_candidate_manager_start_awdl_resolver";
        _os_log_impl(&dword_181A37000, v20, v32, "%{public}s called with null nw_parameters_get_include_peer_to_peer(manager->parameters), no backtrace", buf, 0xCu);
      }

      goto LABEL_69;
    }

    if (v33)
    {
      *buf = 136446466;
      v42 = "nw_candidate_manager_start_awdl_resolver";
      v43 = 2082;
      v44 = v29;
      _os_log_impl(&dword_181A37000, v20, v32, "%{public}s called with null nw_parameters_get_include_peer_to_peer(manager->parameters), dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_50:

    free(v29);
    if (!v19)
    {
      goto LABEL_20;
    }

    goto LABEL_71;
  }

  if (v2->awdl_service_resolver)
  {
    if (__nwlog_candidate_manager_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_candidate_manager_log::onceToken, &__block_literal_global_24_47429);
    }

    v3 = gcandidate_managerLogObj;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      log_id = v2->log_id;
      *buf = 136446466;
      v42 = "nw_candidate_manager_start_awdl_resolver";
      v43 = 2048;
      v44 = log_id;
      _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_INFO, "%{public}s [CM%zu] AWDL service resolver already running", buf, 0x16u);
    }
  }

  else
  {
    v5 = _nw_interface_create_with_name("awdl0");
    if (v5)
    {
      v6 = _nw_parameters_copy(v2->parameters);
      nw_parameters_require_interface(v6, v5);
      evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint(v2->service, v6);
      v8 = evaluator_for_endpoint;
      if (evaluator_for_endpoint)
      {
        v9 = evaluator_for_endpoint;
        os_unfair_lock_lock(v8 + 24);
        v10 = v9[6];
        os_unfair_lock_unlock(v8 + 24);
      }

      else
      {
        v10 = 0;
      }

      v11 = nw_resolver_create_with_path(v10);
      awdl_service_resolver = v2->awdl_service_resolver;
      v2->awdl_service_resolver = v11;

      if (__nwlog_candidate_manager_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_candidate_manager_log::onceToken, &__block_literal_global_24_47429);
      }

      v13 = gcandidate_managerLogObj;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v2->log_id;
        v15 = v2->awdl_service_resolver;
        service = v2->service;
        *buf = 136446978;
        v42 = "nw_candidate_manager_start_awdl_resolver";
        v43 = 2048;
        v44 = v14;
        v45 = 2112;
        v46 = v15;
        v47 = 2112;
        v48 = service;
        _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_DEFAULT, "%{public}s [CM%zu] Created AWDL service resolver %@ for %@", buf, 0x2Au);
      }

      v17 = v2->awdl_service_resolver;
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = ___ZL40nw_candidate_manager_start_awdl_resolverP31NWConcrete_nw_candidate_manager_block_invoke;
      v37[3] = &unk_1E6A2BC88;
      v38 = v2;
      nw_resolver_set_update_handler(v17, 0, v37);
    }
  }

LABEL_20:
}

void nw_candidate_manager_remove_hostname_resolver(void *a1, void *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v24 = __nwlog_obj();
    *buf = 136446210;
    v35 = "nw_candidate_manager_remove_hostname_resolver";
    v25 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (__nwlog_fault(v25, &type, &v32))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v26 = __nwlog_obj();
        v27 = type;
        if (os_log_type_enabled(v26, type))
        {
          *buf = 136446210;
          v35 = "nw_candidate_manager_remove_hostname_resolver";
          _os_log_impl(&dword_181A37000, v26, v27, "%{public}s called with null manager", buf, 0xCu);
        }
      }

      else if (v32 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v26 = __nwlog_obj();
        v29 = type;
        v30 = os_log_type_enabled(v26, type);
        if (backtrace_string)
        {
          if (v30)
          {
            *buf = 136446466;
            v35 = "nw_candidate_manager_remove_hostname_resolver";
            v36 = 2082;
            v37 = backtrace_string;
            _os_log_impl(&dword_181A37000, v26, v29, "%{public}s called with null manager, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_56;
        }

        if (v30)
        {
          *buf = 136446210;
          v35 = "nw_candidate_manager_remove_hostname_resolver";
          _os_log_impl(&dword_181A37000, v26, v29, "%{public}s called with null manager, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v26 = __nwlog_obj();
        v31 = type;
        if (os_log_type_enabled(v26, type))
        {
          *buf = 136446210;
          v35 = "nw_candidate_manager_remove_hostname_resolver";
          _os_log_impl(&dword_181A37000, v26, v31, "%{public}s called with null manager, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_56:
    if (v25)
    {
      free(v25);
    }

    goto LABEL_21;
  }

  if (v4)
  {
    v6 = [v3[11] objectForKeyedSubscript:v4];
    if (v6)
    {
      [v3[11] removeObjectForKey:v5];
      if (__nwlog_candidate_manager_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_candidate_manager_log::onceToken, &__block_literal_global_24_47429);
      }

      v7 = gcandidate_managerLogObj;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v8 = v3[1];
        *buf = 136446978;
        v35 = "nw_candidate_manager_remove_hostname_resolver";
        v36 = 2048;
        v37 = v8;
        v38 = 2112;
        v39 = v6;
        v40 = 2112;
        v41 = v5;
        _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEBUG, "%{public}s [CM%zu] Removed %@ for %@", buf, 0x2Au);
      }

      nw_resolver_cancel(v6);
      goto LABEL_20;
    }

    if (__nwlog_candidate_manager_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_candidate_manager_log::onceToken, &__block_literal_global_24_47429);
    }

    v9 = gcandidate_managerLogObj;
    v10 = v3[1];
    *buf = 136446722;
    v35 = "nw_candidate_manager_remove_hostname_resolver";
    v36 = 2048;
    v37 = v10;
    v38 = 2112;
    v39 = v5;
    v11 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (__nwlog_fault(v11, &type, &v32))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        if (__nwlog_candidate_manager_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_candidate_manager_log::onceToken, &__block_literal_global_24_47429);
        }

        v12 = gcandidate_managerLogObj;
        v13 = type;
        if (os_log_type_enabled(v12, type))
        {
          v14 = v3[1];
          *buf = 136446722;
          v35 = "nw_candidate_manager_remove_hostname_resolver";
          v36 = 2048;
          v37 = v14;
          v38 = 2112;
          v39 = v5;
          _os_log_impl(&dword_181A37000, v12, v13, "%{public}s [CM%zu] No resolver for %@", buf, 0x20u);
        }
      }

      else if (v32 == 1)
      {
        v15 = __nw_create_backtrace_string();
        if (v15)
        {
          v16 = v15;
          if (__nwlog_candidate_manager_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_candidate_manager_log::onceToken, &__block_literal_global_24_47429);
          }

          v17 = gcandidate_managerLogObj;
          v18 = type;
          if (os_log_type_enabled(v17, type))
          {
            v19 = v3[1];
            *buf = 136446978;
            v35 = "nw_candidate_manager_remove_hostname_resolver";
            v36 = 2048;
            v37 = v19;
            v38 = 2112;
            v39 = v5;
            v40 = 2082;
            v41 = v16;
            _os_log_impl(&dword_181A37000, v17, v18, "%{public}s [CM%zu] No resolver for %@, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v16);
          if (!v11)
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }

        if (__nwlog_candidate_manager_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_candidate_manager_log::onceToken, &__block_literal_global_24_47429);
        }

        v12 = gcandidate_managerLogObj;
        v22 = type;
        if (os_log_type_enabled(v12, type))
        {
          v23 = v3[1];
          *buf = 136446722;
          v35 = "nw_candidate_manager_remove_hostname_resolver";
          v36 = 2048;
          v37 = v23;
          v38 = 2112;
          v39 = v5;
          _os_log_impl(&dword_181A37000, v12, v22, "%{public}s [CM%zu] No resolver for %@, no backtrace", buf, 0x20u);
        }
      }

      else
      {
        if (__nwlog_candidate_manager_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_candidate_manager_log::onceToken, &__block_literal_global_24_47429);
        }

        v12 = gcandidate_managerLogObj;
        v20 = type;
        if (os_log_type_enabled(v12, type))
        {
          v21 = v3[1];
          *buf = 136446722;
          v35 = "nw_candidate_manager_remove_hostname_resolver";
          v36 = 2048;
          v37 = v21;
          v38 = 2112;
          v39 = v5;
          _os_log_impl(&dword_181A37000, v12, v20, "%{public}s [CM%zu] No resolver for %@, backtrace limit exceeded", buf, 0x20u);
        }
      }
    }

    if (!v11)
    {
LABEL_20:

      goto LABEL_21;
    }

LABEL_19:
    free(v11);
    goto LABEL_20;
  }

LABEL_21:
}

void ___ZL40nw_candidate_manager_start_awdl_resolverP31NWConcrete_nw_candidate_manager_block_invoke(uint64_t a1, int a2, void *a3)
{
  v49 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (__nwlog_candidate_manager_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_candidate_manager_log::onceToken, &__block_literal_global_24_47429);
  }

  v6 = gcandidate_managerLogObj;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = *(v7 + 8);
    v9 = "invalid";
    if (a2 == 2)
    {
      v9 = "complete";
    }

    v10 = *(v7 + 40);
    v38 = "nw_candidate_manager_start_awdl_resolver_block_invoke";
    *buf = 136447234;
    v39 = 2048;
    if (a2 == 1)
    {
      v9 = "in-progress";
    }

    v40 = v8;
    v41 = 2112;
    v42 = v10;
    v43 = 2082;
    v44 = v9;
    v45 = 2112;
    v46 = v5;
    _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s [CM%zu] %@ %{public}s resolves to %@", buf, 0x34u);
  }

  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__3380;
  v35 = __Block_byref_object_dispose__3381;
  v36 = 0;
  if (v5)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = ___ZL40nw_candidate_manager_start_awdl_resolverP31NWConcrete_nw_candidate_manager_block_invoke_171;
    aBlock[3] = &unk_1E6A39B60;
    aBlock[4] = &v31;
    _nw_array_apply(v5, aBlock);
    v11 = v32[5];
  }

  else
  {
    v11 = 0;
  }

  if ((nw_endpoint_is_equal(*(*(a1 + 32) + 64), v11, 1) & 1) == 0)
  {
    nw_candidate_manager_remove_hostname_resolver(*(a1 + 32), *(*(a1 + 32) + 64));
    if (__nwlog_candidate_manager_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_candidate_manager_log::onceToken, &__block_literal_global_24_47429);
    }

    v12 = gcandidate_managerLogObj;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      v14 = v13[1];
      v15 = v13[5];
      v16 = v32[5];
      v19 = v13 + 7;
      v17 = v13[7];
      v18 = v19[1];
      *buf = 136447490;
      v38 = "nw_candidate_manager_start_awdl_resolver_block_invoke_2";
      v39 = 2048;
      v40 = v14;
      v41 = 2112;
      v42 = v15;
      v43 = 2112;
      v44 = v18;
      v45 = 2112;
      v46 = v16;
      v47 = 2112;
      v48 = v17;
      _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEFAULT, "%{public}s [CM%zu] %@ replacing AWDL endpoint %@ -> %@ with resolver %@", buf, 0x3Eu);
    }

    objc_storeStrong((*(a1 + 32) + 64), v32[5]);
    v20 = *(a1 + 32);
    v21 = v20[8];
    if (v21)
    {
      if (!v20[11])
      {
        v22 = [MEMORY[0x1E695DF90] dictionary];
        v23 = *(a1 + 32);
        v24 = *(v23 + 88);
        *(v23 + 88) = v22;

        v20 = *(a1 + 32);
        v21 = v20[8];
      }

      v25 = nw_candidate_manager_resolver_for_service_resolved_endpoint(v20, v21);
      [*(*(a1 + 32) + 88) setObject:v25 forKeyedSubscript:*(*(a1 + 32) + 64)];
    }

    else
    {
      if (__nwlog_candidate_manager_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_candidate_manager_log::onceToken, &__block_literal_global_24_47429);
      }

      v25 = gcandidate_managerLogObj;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = *(a1 + 32);
        v27 = v26[1];
        v28 = v26[5];
        v29 = v26[8];
        *buf = 136446978;
        v38 = "nw_candidate_manager_start_awdl_resolver_block_invoke";
        v39 = 2048;
        v40 = v27;
        v41 = 2112;
        v42 = v28;
        v43 = 2112;
        v44 = v29;
        _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_DEFAULT, "%{public}s [CM%zu] %@ matched previous AWDL endpoint %@, skipping hostname resolution", buf, 0x2Au);
      }
    }
  }

  _Block_object_dispose(&v31, 8);
}

void sub_182352324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3380(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id *nw_candidate_manager_resolver_for_service_resolved_endpoint(void *a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = _nw_parameters_copy(v3[10]);
  v6 = nw_endpoint_copy_interface(v4);
  nw_parameters_require_interface(v5, v6);

  nw_parameters_set_preferred_interface_subtypes(v5, 0);
  nw_parameters_set_multipath_service(v5, nw_multipath_service_disabled);
  evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint(v4, v5);
  v8 = evaluator_for_endpoint;
  if (evaluator_for_endpoint)
  {
    v9 = evaluator_for_endpoint;
    os_unfair_lock_lock(v8 + 24);
    v10 = v9[6];
    os_unfair_lock_unlock(v8 + 24);
  }

  else
  {
    v10 = 0;
  }

  v11 = nw_resolver_create_with_path(v10);

  if (v11)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = ___ZL59nw_candidate_manager_resolver_for_service_resolved_endpointP31NWConcrete_nw_candidate_managerPU25objcproto14OS_nw_endpoint8NSObject_block_invoke;
    v17[3] = &unk_1E6A2BCD8;
    v12 = v3;
    v18 = v12;
    v13 = v4;
    v19 = v13;
    v20 = v5;
    nw_resolver_set_update_handler(v11, 0, v17);
    if (__nwlog_candidate_manager_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_candidate_manager_log::onceToken, &__block_literal_global_24_47429);
    }

    v14 = gcandidate_managerLogObj;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = v12[1];
      *buf = 136446978;
      v22 = "nw_candidate_manager_resolver_for_service_resolved_endpoint";
      v23 = 2048;
      v24 = v15;
      v25 = 2112;
      v26 = v11;
      v27 = 2112;
      v28 = v13;
      _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEBUG, "%{public}s [CM%zu] Adding %@ for %@", buf, 0x2Au);
    }
  }

  return v11;
}

void ___ZL59nw_candidate_manager_resolver_for_service_resolved_endpointP31NWConcrete_nw_candidate_managerPU25objcproto14OS_nw_endpoint8NSObject_block_invoke(id *a1, int a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (__nwlog_candidate_manager_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_candidate_manager_log::onceToken, &__block_literal_global_24_47429);
  }

  v6 = gcandidate_managerLogObj;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = a1[5];
    v8 = "invalid";
    if (a2 == 2)
    {
      v8 = "complete";
    }

    v9 = *(a1[4] + 1);
    v15 = "nw_candidate_manager_resolver_for_service_resolved_endpoint_block_invoke";
    *buf = 136447234;
    v16 = 2048;
    if (a2 == 1)
    {
      v8 = "in-progress";
    }

    v17 = v9;
    v18 = 2112;
    v19 = v7;
    v20 = 2082;
    v21 = v8;
    v22 = 2112;
    v23 = v5;
    _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s [CM%zu] %@ %{public}s resolves to %@", buf, 0x34u);
  }

  if (v5)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = ___ZL59nw_candidate_manager_resolver_for_service_resolved_endpointP31NWConcrete_nw_candidate_managerPU25objcproto14OS_nw_endpoint8NSObject_block_invoke_161;
    aBlock[3] = &unk_1E6A3B418;
    v11 = a1[6];
    v12 = a1[5];
    v13 = a1[4];
    _nw_array_apply(v5, aBlock);
  }
}

uint64_t ___ZL59nw_candidate_manager_resolver_for_service_resolved_endpointP31NWConcrete_nw_candidate_managerPU25objcproto14OS_nw_endpoint8NSObject_block_invoke_161(void **a1, uint64_t a2, void *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint(v4, a1[4]);
  v6 = nw_endpoint_copy_interface(a1[5]);
  if (v6)
  {
    v7 = a1[6];
    v8 = v4;
    v9 = v6;
    v10 = evaluator_for_endpoint;
    v11 = v10;
    if (v7)
    {
      if (v8)
      {
        if (v10)
        {
          nw_endpoint_set_interface(v8, 0);
          v12 = v11;
          os_unfair_lock_lock(v11 + 24);
          v13 = v12[6];
          os_unfair_lock_unlock(v11 + 24);

          if (nw_path_is_direct(v13))
          {
            if (_nw_interface_get_type(v9) == 3)
            {
              v14 = 10;
LABEL_12:
              *buf = 0;
              *&buf[8] = 0;
              nw_path_get_nexus_agent_uuid(v13, buf);
              v15 = nw_interface_option_details_create(v9, buf, v8, v14, 0, -1);
              nw_interface_option_details_set_evaluator(v15, v12);
              v16 = nw_candidate_create(v7, v15, v12);
              nw_candidate_manager_process_candidate_internal(v7, v16);

LABEL_13:
              goto LABEL_14;
            }

            if (_nw_interface_get_type(v9) == 1)
            {
              if (_nw_interface_get_subtype(v9) == 1001)
              {
                v14 = -1;
              }

              else if (_nw_interface_get_subtype(v9) == 1002)
              {
                v14 = 0;
              }

              else
              {
                v14 = -2;
              }

              goto LABEL_12;
            }
          }

          v14 = -2;
          goto LABEL_12;
        }

        v24 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_candidate_manager_process_bonjour_candidate";
        v19 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v37 = 0;
        if (!__nwlog_fault(v19, &type, &v37))
        {
          goto LABEL_67;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v20 = __nwlog_obj();
          v25 = type;
          if (os_log_type_enabled(v20, type))
          {
            *buf = 136446210;
            *&buf[4] = "nw_candidate_manager_process_bonjour_candidate";
            _os_log_impl(&dword_181A37000, v20, v25, "%{public}s called with null evaluator", buf, 0xCu);
          }

          goto LABEL_66;
        }

        if (v37 != 1)
        {
          v20 = __nwlog_obj();
          v33 = type;
          if (os_log_type_enabled(v20, type))
          {
            *buf = 136446210;
            *&buf[4] = "nw_candidate_manager_process_bonjour_candidate";
            _os_log_impl(&dword_181A37000, v20, v33, "%{public}s called with null evaluator, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_66;
        }

        backtrace_string = __nw_create_backtrace_string();
        v20 = __nwlog_obj();
        v36 = type;
        v30 = os_log_type_enabled(v20, type);
        if (!backtrace_string)
        {
          if (v30)
          {
            *buf = 136446210;
            *&buf[4] = "nw_candidate_manager_process_bonjour_candidate";
            _os_log_impl(&dword_181A37000, v20, v36, "%{public}s called with null evaluator, no backtrace", buf, 0xCu);
          }

          goto LABEL_66;
        }

        if (v30)
        {
          *buf = 136446466;
          *&buf[4] = "nw_candidate_manager_process_bonjour_candidate";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v20, v36, "%{public}s called with null evaluator, dumping backtrace:%{public}s", buf, 0x16u);
        }
      }

      else
      {
        v22 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_candidate_manager_process_bonjour_candidate";
        v19 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v37 = 0;
        if (!__nwlog_fault(v19, &type, &v37))
        {
          goto LABEL_67;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v20 = __nwlog_obj();
          v23 = type;
          if (os_log_type_enabled(v20, type))
          {
            *buf = 136446210;
            *&buf[4] = "nw_candidate_manager_process_bonjour_candidate";
            _os_log_impl(&dword_181A37000, v20, v23, "%{public}s called with null destination", buf, 0xCu);
          }

          goto LABEL_66;
        }

        if (v37 != 1)
        {
          v20 = __nwlog_obj();
          v32 = type;
          if (os_log_type_enabled(v20, type))
          {
            *buf = 136446210;
            *&buf[4] = "nw_candidate_manager_process_bonjour_candidate";
            _os_log_impl(&dword_181A37000, v20, v32, "%{public}s called with null destination, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_66;
        }

        backtrace_string = __nw_create_backtrace_string();
        v20 = __nwlog_obj();
        v35 = type;
        v29 = os_log_type_enabled(v20, type);
        if (!backtrace_string)
        {
          if (v29)
          {
            *buf = 136446210;
            *&buf[4] = "nw_candidate_manager_process_bonjour_candidate";
            _os_log_impl(&dword_181A37000, v20, v35, "%{public}s called with null destination, no backtrace", buf, 0xCu);
          }

          goto LABEL_66;
        }

        if (v29)
        {
          *buf = 136446466;
          *&buf[4] = "nw_candidate_manager_process_bonjour_candidate";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v20, v35, "%{public}s called with null destination, dumping backtrace:%{public}s", buf, 0x16u);
        }
      }

      free(backtrace_string);
      if (!v19)
      {
        goto LABEL_13;
      }

      goto LABEL_68;
    }

    v18 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_candidate_manager_process_bonjour_candidate";
    v19 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v37 = 0;
    if (!__nwlog_fault(v19, &type, &v37))
    {
      goto LABEL_67;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v20 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v20, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_candidate_manager_process_bonjour_candidate";
        _os_log_impl(&dword_181A37000, v20, v21, "%{public}s called with null candidate_manager", buf, 0xCu);
      }
    }

    else if (v37 == 1)
    {
      v26 = __nw_create_backtrace_string();
      v20 = __nwlog_obj();
      v34 = type;
      v27 = os_log_type_enabled(v20, type);
      if (v26)
      {
        if (v27)
        {
          *buf = 136446466;
          *&buf[4] = "nw_candidate_manager_process_bonjour_candidate";
          *&buf[12] = 2082;
          *&buf[14] = v26;
          _os_log_impl(&dword_181A37000, v20, v34, "%{public}s called with null candidate_manager, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v26);
LABEL_67:
        if (!v19)
        {
          goto LABEL_13;
        }

LABEL_68:
        free(v19);
        goto LABEL_13;
      }

      if (v27)
      {
        *buf = 136446210;
        *&buf[4] = "nw_candidate_manager_process_bonjour_candidate";
        _os_log_impl(&dword_181A37000, v20, v34, "%{public}s called with null candidate_manager, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v20 = __nwlog_obj();
      v31 = type;
      if (os_log_type_enabled(v20, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_candidate_manager_process_bonjour_candidate";
        _os_log_impl(&dword_181A37000, v20, v31, "%{public}s called with null candidate_manager, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_66:

    goto LABEL_67;
  }

LABEL_14:

  return 1;
}

id nw_candidate_create(void *a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v5)
  {
    if (v6)
    {
      v8 = [[NWCandidate alloc] initCandidate:v6 forManager:v5 evaluator:v7];
      goto LABEL_4;
    }

    v14 = __nwlog_obj();
    *buf = 136446210;
    v26 = "nw_candidate_create";
    v11 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (__nwlog_fault(v11, &type, &v23))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v12 = __nwlog_obj();
        v15 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v26 = "nw_candidate_create";
          _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null details", buf, 0xCu);
        }

LABEL_38:

        goto LABEL_39;
      }

      if (v23 != 1)
      {
        v12 = __nwlog_obj();
        v22 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v26 = "nw_candidate_create";
          _os_log_impl(&dword_181A37000, v12, v22, "%{public}s called with null details, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_38;
      }

      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v19 = type;
      v20 = os_log_type_enabled(v12, type);
      if (!backtrace_string)
      {
        if (v20)
        {
          *buf = 136446210;
          v26 = "nw_candidate_create";
          _os_log_impl(&dword_181A37000, v12, v19, "%{public}s called with null details, no backtrace", buf, 0xCu);
        }

        goto LABEL_38;
      }

      if (v20)
      {
        *buf = 136446466;
        v26 = "nw_candidate_create";
        v27 = 2082;
        v28 = backtrace_string;
        _os_log_impl(&dword_181A37000, v12, v19, "%{public}s called with null details, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_26;
    }
  }

  else
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v26 = "nw_candidate_create";
    v11 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (__nwlog_fault(v11, &type, &v23))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v12 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v26 = "nw_candidate_create";
          _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null manager", buf, 0xCu);
        }

        goto LABEL_38;
      }

      if (v23 != 1)
      {
        v12 = __nwlog_obj();
        v21 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v26 = "nw_candidate_create";
          _os_log_impl(&dword_181A37000, v12, v21, "%{public}s called with null manager, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_38;
      }

      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v17 = type;
      v18 = os_log_type_enabled(v12, type);
      if (!backtrace_string)
      {
        if (v18)
        {
          *buf = 136446210;
          v26 = "nw_candidate_create";
          _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null manager, no backtrace", buf, 0xCu);
        }

        goto LABEL_38;
      }

      if (v18)
      {
        *buf = 136446466;
        v26 = "nw_candidate_create";
        v27 = 2082;
        v28 = backtrace_string;
        _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null manager, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_26:

      free(backtrace_string);
    }
  }

LABEL_39:
  if (v11)
  {
    free(v11);
  }

  v8 = 0;
LABEL_4:

  return v8;
}

uint64_t nw_candidate_manager_process_candidate_internal(NWConcrete_nw_candidate_manager *a1, NWCandidate *a2)
{
  v61 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      if (__nwlog_candidate_manager_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_candidate_manager_log::onceToken, &__block_literal_global_24_47429);
      }

      v6 = gcandidate_managerLogObj;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        log_id = v3->log_id;
        *buf = 136446722;
        *&buf[4] = "nw_candidate_manager_process_candidate_internal";
        *&buf[12] = 2048;
        *&buf[14] = log_id;
        *&buf[22] = 2112;
        v58 = v5;
        _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_INFO, "%{public}s [CM%zu] Checking candidate %@", buf, 0x20u);
      }

      v47 = 0;
      v48 = &v47;
      v49 = 0x2020000000;
      v50 = 0;
      candidates = v3->candidates;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = ___ZL47nw_candidate_manager_process_candidate_internalP31NWConcrete_nw_candidate_managerP11NWCandidate_block_invoke;
      aBlock[3] = &unk_1E6A3BB28;
      v9 = v5;
      v45 = v9;
      v46 = &v47;
      if (candidates && (_nw_array_apply(candidates, aBlock), (v48[3] & 1) != 0))
      {
        if (__nwlog_candidate_manager_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_candidate_manager_log::onceToken, &__block_literal_global_24_47429);
        }

        v10 = gcandidate_managerLogObj;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = v3->log_id;
          *buf = 136446722;
          *&buf[4] = "nw_candidate_manager_process_candidate_internal";
          *&buf[12] = 2048;
          *&buf[14] = v11;
          *&buf[22] = 2112;
          v58 = v9;
          _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_INFO, "%{public}s [CM%zu] Candidate %@ already collected, ignoring", buf, 0x20u);
        }
      }

      else
      {
        original_remote_endpoint = v3->original_remote_endpoint;
        v13 = nw_interface_option_details_copy_remote_endpoint(v9->details);
        LODWORD(original_remote_endpoint) = nw_endpoint_is_equal(original_remote_endpoint, v13, 0);

        if (!original_remote_endpoint)
        {
          v16 = v3->candidates;
          if (v16)
          {
            _nw_array_append(v16, v9);
          }

          [(NWCandidate *)v9 startEvaluator];
          if ([(NWCandidate *)v9 isEligible])
          {
            nw_candidate_manager_inject(v3, v9);
          }

          else if ((*(v9 + 40) & 2) != 0 || (*(v3 + 192) & 2) == 0 || v3->connection || (v17 = nw_interface_option_details_copy_interface(v9->details), v18 = nw_interface_get_subtype(v17) == 1002, v17, !v18))
          {
            if (__nwlog_candidate_manager_log::onceToken != -1)
            {
              dispatch_once(&__nwlog_candidate_manager_log::onceToken, &__block_literal_global_24_47429);
            }

            v28 = gcandidate_managerLogObj;
            if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
            {
              v29 = v3->log_id;
              *buf = 136446722;
              *&buf[4] = "nw_candidate_manager_process_candidate_internal";
              *&buf[12] = 2048;
              *&buf[14] = v29;
              *&buf[22] = 2112;
              v58 = v9;
              _os_log_impl(&dword_181A37000, v28, OS_LOG_TYPE_INFO, "%{public}s [CM%zu] Candidate %@ not eligible", buf, 0x20u);
            }
          }

          else
          {
            v19 = v3;
            v20 = v9;
            v21 = nw_interface_option_details_copy_remote_endpoint(v9->details);
            v22 = nw_connection_create(v21, v19[10]);

            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3221225472;
            *&buf[16] = ___ZL28nw_candidate_manager_connectP31NWConcrete_nw_candidate_managerP11NWCandidate_block_invoke;
            v58 = &unk_1E6A3D958;
            v23 = v19;
            v59 = v23;
            v24 = v22;
            v60 = v24;
            nw_connection_set_state_changed_handler(&v24->super, buf);
            nw_candidate_manager_set_connection(v23, v24);
            *(v9 + 40) |= 1u;
            if (__nwlog_candidate_manager_log::onceToken != -1)
            {
              dispatch_once(&__nwlog_candidate_manager_log::onceToken, &__block_literal_global_24_47429);
            }

            v25 = gcandidate_managerLogObj;
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              v26 = v23->log_id;
              *v51 = 136446722;
              v52 = "nw_candidate_manager_connect";
              v53 = 2048;
              v54 = v26;
              v55 = 2112;
              v56 = v24;
              _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_INFO, "%{public}s [CM%zu] Created outgoing connection %@", v51, 0x20u);
            }

            new_connection_handler = v23->new_connection_handler;
            if (new_connection_handler)
            {
              new_connection_handler[2](new_connection_handler, v24);
            }
          }

          v15 = 1;
          goto LABEL_41;
        }

        if (__nwlog_candidate_manager_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_candidate_manager_log::onceToken, &__block_literal_global_24_47429);
        }

        v10 = gcandidate_managerLogObj;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v14 = v3->log_id;
          *buf = 136446722;
          *&buf[4] = "nw_candidate_manager_process_candidate_internal";
          *&buf[12] = 2048;
          *&buf[14] = v14;
          *&buf[22] = 2112;
          v58 = v9;
          _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_INFO, "%{public}s [CM%zu] Candidate %@ matches original, ignoring", buf, 0x20u);
        }
      }

      v15 = 0;
LABEL_41:

      _Block_object_dispose(&v47, 8);
      goto LABEL_42;
    }

    v35 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_candidate_manager_process_candidate_internal";
    v32 = _os_log_send_and_compose_impl();

    v51[0] = 16;
    LOBYTE(v47) = 0;
    if (__nwlog_fault(v32, v51, &v47))
    {
      if (v51[0] == 17)
      {
        v33 = __nwlog_obj();
        v36 = v51[0];
        if (os_log_type_enabled(v33, v51[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_candidate_manager_process_candidate_internal";
          _os_log_impl(&dword_181A37000, v33, v36, "%{public}s called with null new_candidate", buf, 0xCu);
        }

LABEL_74:

        goto LABEL_75;
      }

      if (v47 != 1)
      {
        v33 = __nwlog_obj();
        v43 = v51[0];
        if (os_log_type_enabled(v33, v51[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_candidate_manager_process_candidate_internal";
          _os_log_impl(&dword_181A37000, v33, v43, "%{public}s called with null new_candidate, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_74;
      }

      backtrace_string = __nw_create_backtrace_string();
      v33 = __nwlog_obj();
      v40 = v51[0];
      v41 = os_log_type_enabled(v33, v51[0]);
      if (!backtrace_string)
      {
        if (v41)
        {
          *buf = 136446210;
          *&buf[4] = "nw_candidate_manager_process_candidate_internal";
          _os_log_impl(&dword_181A37000, v33, v40, "%{public}s called with null new_candidate, no backtrace", buf, 0xCu);
        }

        goto LABEL_74;
      }

      if (v41)
      {
        *buf = 136446466;
        *&buf[4] = "nw_candidate_manager_process_candidate_internal";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v33, v40, "%{public}s called with null new_candidate, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_62;
    }
  }

  else
  {
    v31 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_candidate_manager_process_candidate_internal";
    v32 = _os_log_send_and_compose_impl();

    v51[0] = 16;
    LOBYTE(v47) = 0;
    if (__nwlog_fault(v32, v51, &v47))
    {
      if (v51[0] == 17)
      {
        v33 = __nwlog_obj();
        v34 = v51[0];
        if (os_log_type_enabled(v33, v51[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_candidate_manager_process_candidate_internal";
          _os_log_impl(&dword_181A37000, v33, v34, "%{public}s called with null candidate_manager", buf, 0xCu);
        }

        goto LABEL_74;
      }

      if (v47 != 1)
      {
        v33 = __nwlog_obj();
        v42 = v51[0];
        if (os_log_type_enabled(v33, v51[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_candidate_manager_process_candidate_internal";
          _os_log_impl(&dword_181A37000, v33, v42, "%{public}s called with null candidate_manager, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_74;
      }

      backtrace_string = __nw_create_backtrace_string();
      v33 = __nwlog_obj();
      v38 = v51[0];
      v39 = os_log_type_enabled(v33, v51[0]);
      if (!backtrace_string)
      {
        if (v39)
        {
          *buf = 136446210;
          *&buf[4] = "nw_candidate_manager_process_candidate_internal";
          _os_log_impl(&dword_181A37000, v33, v38, "%{public}s called with null candidate_manager, no backtrace", buf, 0xCu);
        }

        goto LABEL_74;
      }

      if (v39)
      {
        *buf = 136446466;
        *&buf[4] = "nw_candidate_manager_process_candidate_internal";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v33, v38, "%{public}s called with null candidate_manager, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_62:

      free(backtrace_string);
    }
  }

LABEL_75:
  if (v32)
  {
    free(v32);
  }

  v15 = 0;
LABEL_42:

  return v15;
}

void sub_182354028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id a31, id a32)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

BOOL ___ZL47nw_candidate_manager_process_candidate_internalP31NWConcrete_nw_candidate_managerP11NWCandidate_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  v6 = v4;
  v7 = v5;
  if (v6 | v7)
  {
    if (!v6 || !v7)
    {

      goto LABEL_8;
    }

    v8 = v7;
    v9 = [*(v6 + 16) isEqual:*(v7 + 16)];

    if (!v9)
    {
      goto LABEL_8;
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = 1;
LABEL_8:
  v10 = *(*(*(a1 + 40) + 8) + 24);

  return (v10 & 1) == 0;
}

void ___ZL28nw_candidate_manager_connectP31NWConcrete_nw_candidate_managerP11NWCandidate_block_invoke(uint64_t a1, int a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2 == 3)
  {
    if (__nwlog_candidate_manager_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_candidate_manager_log::onceToken, &__block_literal_global_24_47429);
    }

    v6 = gcandidate_managerLogObj;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 40);
      v8 = *(*(a1 + 32) + 8);
      v17 = 136446722;
      v18 = "nw_candidate_manager_connect_block_invoke";
      v19 = 2048;
      v20 = v8;
      v21 = 2112;
      v22 = v7;
      _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_INFO, "%{public}s [CM%zu] Outgoing connection %@ is ready", &v17, 0x20u);
    }

    v9 = *(a1 + 40);
    if (nw_protocol_copy_quic_stream_definition_onceToken != -1)
    {
      dispatch_once(&nw_protocol_copy_quic_stream_definition_onceToken, &__block_literal_global_63);
    }

    v10 = nw_protocol_copy_quic_stream_definition_quic_definition;
    v11 = nw_connection_copy_protocol_metadata(v9, v10);

    if (v11 && _nw_protocol_metadata_is_quic(v11))
    {
      v12 = nw_quic_stream_copy_connection_metadata(v11);
      nw_quic_connection_set_keepalive(v12, 0xAu);
    }

    nw_candidate_manager_set_state(*(a1 + 32), 2);
  }

  else if ((a2 & 0xFFFFFFFE) == 4)
  {
    if (__nwlog_candidate_manager_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_candidate_manager_log::onceToken, &__block_literal_global_24_47429);
    }

    v13 = gcandidate_managerLogObj;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = off_1E6A2F020[a2];
      v15 = *(a1 + 40);
      v16 = *(*(a1 + 32) + 8);
      v17 = 136447234;
      v18 = "nw_candidate_manager_connect_block_invoke";
      v19 = 2048;
      v20 = v16;
      v21 = 2112;
      v22 = v15;
      v23 = 2080;
      v24 = v14;
      v25 = 2112;
      v26 = v5;
      _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_INFO, "%{public}s [CM%zu] Outgoing connection %@ to endpoint disconnected, state=%s, error=%@", &v17, 0x34u);
    }

    nw_candidate_manager_cancel(*(a1 + 32));
  }
}

void nw_candidate_manager_cancel(void *a1)
{
  v52 = *MEMORY[0x1E69E9840];
  v38 = a1;
  if (v38)
  {
    if (__nwlog_candidate_manager_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_candidate_manager_log::onceToken, &__block_literal_global_24_47429);
    }

    v1 = gcandidate_managerLogObj;
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      log_id = v38->log_id;
      *buf = 136446722;
      v47 = "nw_candidate_manager_cancel";
      v48 = 2048;
      v49 = log_id;
      v50 = 2112;
      v51 = v38;
      _os_log_impl(&dword_181A37000, v1, OS_LOG_TYPE_DEFAULT, "%{public}s [CM%zu] Cancelling candidate_manager %@", buf, 0x20u);
    }

    nw_candidate_manager_set_state(v38, 4);
    nw_candidate_manager_stop_lost_path_timer(v38);
    listener = v38->listener;
    if (listener)
    {
      nw_listener_cancel(listener);
      v4 = v38->listener;
      v38->listener = 0;
    }

    awdl_service_resolver = v38->awdl_service_resolver;
    if (awdl_service_resolver)
    {
      nw_resolver_cancel(awdl_service_resolver);
      v6 = v38->awdl_service_resolver;
      v38->awdl_service_resolver = 0;
    }

    service_resolver = v38->service_resolver;
    if (service_resolver)
    {
      nw_resolver_cancel(service_resolver);
      v8 = v38->service_resolver;
      v38->service_resolver = 0;
    }

    hostname_resolvers = v38->hostname_resolvers;
    if (hostname_resolvers)
    {
      v10 = [(NSMutableDictionary *)hostname_resolvers allValues];
      v11 = v38->hostname_resolvers;
      v38->hostname_resolvers = 0;

      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v12 = v10;
      v13 = [v12 countByEnumeratingWithState:&v39 objects:v45 count:16];
      if (v13)
      {
        v14 = *v40;
        do
        {
          v15 = 0;
          do
          {
            if (*v40 != v14)
            {
              objc_enumerationMutation(v12);
            }

            v16 = *(*(&v39 + 1) + 8 * v15);
            if (__nwlog_candidate_manager_log::onceToken != -1)
            {
              dispatch_once(&__nwlog_candidate_manager_log::onceToken, &__block_literal_global_24_47429);
            }

            v17 = gcandidate_managerLogObj;
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              v18 = v38->log_id;
              *buf = 136446722;
              v47 = "nw_candidate_manager_cancel";
              v48 = 2048;
              v49 = v18;
              v50 = 2112;
              v51 = v16;
              _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_DEBUG, "%{public}s [CM%zu] Removed %@", buf, 0x20u);
            }

            nw_resolver_cancel(v16);
            ++v15;
          }

          while (v13 != v15);
          v13 = [v12 countByEnumeratingWithState:&v39 objects:v45 count:16];
        }

        while (v13);
      }
    }

    p_super = &v38->connection->super;
    if (p_super)
    {
      nw_connection_cancel(p_super);
      connection = v38->connection;
      v38->connection = 0;
    }

    v21 = v38;
    monitored_connection = v38->monitored_connection;
    if (monitored_connection)
    {
      v38->monitored_connection = 0;

      v21 = v38;
    }

    nw_candidate_manager_stop_ids(v21);
    candidates = v21->candidates;
    v21->candidates = 0;

    state_handler = v38->state_handler;
    v38->state_handler = 0;

    new_connection_handler = v38->new_connection_handler;
    v38->new_connection_handler = 0;

    parameters = v38->parameters;
    v38->parameters = 0;

    add_eligible_details = v38->add_eligible_details;
    v38->add_eligible_details = 0;

    remove_eligible_details = v38->remove_eligible_details;
    v38->remove_eligible_details = 0;

    modify_ids_parameters = v38->modify_ids_parameters;
    v38->modify_ids_parameters = 0;

    goto LABEL_30;
  }

  v30 = __nwlog_obj();
  *buf = 136446210;
  v47 = "nw_candidate_manager_cancel";
  v31 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v43 = 0;
  if (__nwlog_fault(v31, &type, &v43))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v32 = __nwlog_obj();
      v33 = type;
      if (os_log_type_enabled(v32, type))
      {
        *buf = 136446210;
        v47 = "nw_candidate_manager_cancel";
        _os_log_impl(&dword_181A37000, v32, v33, "%{public}s called with null candidate_manager", buf, 0xCu);
      }
    }

    else if (v43 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v32 = __nwlog_obj();
      v35 = type;
      v36 = os_log_type_enabled(v32, type);
      if (backtrace_string)
      {
        if (v36)
        {
          *buf = 136446466;
          v47 = "nw_candidate_manager_cancel";
          v48 = 2082;
          v49 = backtrace_string;
          _os_log_impl(&dword_181A37000, v32, v35, "%{public}s called with null candidate_manager, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_47;
      }

      if (v36)
      {
        *buf = 136446210;
        v47 = "nw_candidate_manager_cancel";
        _os_log_impl(&dword_181A37000, v32, v35, "%{public}s called with null candidate_manager, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v32 = __nwlog_obj();
      v37 = type;
      if (os_log_type_enabled(v32, type))
      {
        *buf = 136446210;
        v47 = "nw_candidate_manager_cancel";
        _os_log_impl(&dword_181A37000, v32, v37, "%{public}s called with null candidate_manager, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_47:
  if (v31)
  {
    free(v31);
  }

LABEL_30:
}

void nw_candidate_manager_stop_ids(NWConcrete_nw_candidate_manager *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1->ids_path_evaluator)
  {
    if (__nwlog_candidate_manager_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_candidate_manager_log::onceToken, &__block_literal_global_24_47429);
    }

    v2 = gcandidate_managerLogObj;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      log_id = v1->log_id;
      *buf = 136446466;
      v10 = "nw_candidate_manager_stop_ids";
      v11 = 2048;
      v12 = log_id;
      _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s [CM%zu] Stopping IDS path evaluator", buf, 0x16u);
    }

    nw_path_evaluator_cancel(v1->ids_path_evaluator);
    ids_path_evaluator = v1->ids_path_evaluator;
    v1->ids_path_evaluator = 0;
  }

  ids_resolve_registrations = v1->ids_resolve_registrations;
  if (ids_resolve_registrations)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = ___ZL29nw_candidate_manager_stop_idsP31NWConcrete_nw_candidate_manager_block_invoke;
    v7[3] = &unk_1E6A39A98;
    v8 = v1;
    nw_dictionary_apply(ids_resolve_registrations, v7);
  }

  ids_endpoint = v1->ids_endpoint;
  v1->ids_endpoint = 0;
}

uint64_t ___ZL29nw_candidate_manager_stop_idsP31NWConcrete_nw_candidate_manager_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (__nwlog_candidate_manager_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_candidate_manager_log::onceToken, &__block_literal_global_24_47429);
  }

  v6 = gcandidate_managerLogObj;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(*(a1 + 32) + 8);
    v9 = 136446722;
    v10 = "nw_candidate_manager_stop_ids_block_invoke";
    v11 = 2048;
    v12 = v7;
    v13 = 2082;
    v14 = a2;
    _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_INFO, "%{public}s [CM%zu] closed resolver flow to %{public}s", &v9, 0x20u);
  }

  nw_path_flow_registration_close(v5);
  return 1;
}

void nw_candidate_manager_handle_ids_path(void *a1, void *a2)
{
  v91 = *MEMORY[0x1E69E9840];
  v56 = a1;
  v57 = a2;
  if (v56)
  {
    if (__nwlog_candidate_manager_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_candidate_manager_log::onceToken, &__block_literal_global_24_47429);
    }

    v3 = gcandidate_managerLogObj;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = v56[1];
      *buf = 136446722;
      v86 = "nw_candidate_manager_handle_ids_path";
      v87 = 2048;
      v88 = v4;
      v89 = 2112;
      v90 = v57;
      _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_INFO, "%{public}s [CM%zu] path: %@", buf, 0x20u);
    }

    v62 = 0;
    v63 = &v62;
    v64 = 0x3032000000;
    v65 = __Block_byref_object_copy__3380;
    v66 = __Block_byref_object_dispose__3381;
    v67 = 0;
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = ___ZL36nw_candidate_manager_handle_ids_pathP31NWConcrete_nw_candidate_managerPU21objcproto10OS_nw_path8NSObject_block_invoke;
    v59[3] = &unk_1E6A2BD00;
    v61 = &v62;
    v5 = v56;
    v60 = v5;
    nw_path_enumerate_resolve_options(v57, v59);
    objc_storeStrong(v5 + 3, v63[5]);
    v6 = nw_path_copy_resolved_endpoints(v57);
    v7 = v5;
    v58 = v6;
    if (__nwlog_candidate_manager_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_candidate_manager_log::onceToken, &__block_literal_global_24_47429);
    }

    v8 = gcandidate_managerLogObj;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v7[1];
      *buf = 136446722;
      v86 = "nw_candidate_manager_handle_ids_endpoints";
      v87 = 2048;
      v88 = v9;
      v89 = 2112;
      v90 = v58;
      _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s [CM%zu] endpoints: %@", buf, 0x20u);
    }

    v10 = v7[4];
    if (v10)
    {
      v11 = MEMORY[0x1E695DF70];
      v12 = [v10 allKeys];
      v13 = [v11 arrayWithArray:v12];
    }

    else
    {
      if (!v58 || _nw_array_is_empty(v58))
      {
LABEL_56:

        _Block_object_dispose(&v62, 8);
        goto LABEL_57;
      }

      v39 = [MEMORY[0x1E695DF90] dictionary];
      v13 = 0;
      v12 = v7[4];
      v7[4] = v39;
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = ___ZL41nw_candidate_manager_handle_ids_endpointsP31NWConcrete_nw_candidate_managerPU22objcproto11OS_nw_array8NSObject_block_invoke;
    aBlock[3] = &unk_1E6A35E80;
    v14 = v13;
    v75 = v14;
    v15 = v7;
    v76 = v15;
    if (v58)
    {
      _nw_array_apply(v58, aBlock);
    }

    v72 = 0u;
    v73 = 0u;
    *v70 = 0u;
    v71 = 0u;
    v16 = v14;
    v17 = [v16 countByEnumeratingWithState:v70 objects:buf count:16];
    if (v17)
    {
      v18 = *v71;
      do
      {
        v19 = 0;
        do
        {
          if (*v71 != v18)
          {
            objc_enumerationMutation(v16);
          }

          v20 = *(*&v70[8] + 8 * v19);
          v21 = [v7[4] objectForKeyedSubscript:{v20, v49, v50}];
          [v7[4] removeObjectForKey:v20];
          if (v21)
          {
            if (nw_array_remove_object(v15->candidates, v21) && (*(v21 + 40) & 8) != 0)
            {
              nw_candidate_manager_remove(v15, v21);
            }
          }

          else
          {
            if (__nwlog_candidate_manager_log::onceToken != -1)
            {
              dispatch_once(&__nwlog_candidate_manager_log::onceToken, &__block_literal_global_24_47429);
            }

            v22 = gcandidate_managerLogObj;
            log_id = v15->log_id;
            *v77 = 136446722;
            v78 = "nw_candidate_manager_handle_ids_endpoints";
            v79 = 2048;
            v80 = log_id;
            v81 = 2112;
            v82 = v20;
            LODWORD(v50) = 32;
            v49 = v77;
            v55 = _os_log_send_and_compose_impl();

            type = OS_LOG_TYPE_ERROR;
            v68 = 0;
            if (!__nwlog_fault(v55, &type, &v68))
            {
              goto LABEL_34;
            }

            if (type == OS_LOG_TYPE_FAULT)
            {
              v54 = v5;
              if (__nwlog_candidate_manager_log::onceToken != -1)
              {
                dispatch_once(&__nwlog_candidate_manager_log::onceToken, &__block_literal_global_24_47429);
              }

              v24 = gcandidate_managerLogObj;
              v25 = type;
              if (os_log_type_enabled(v24, type))
              {
                v26 = v15->log_id;
                *v77 = 136446722;
                v78 = "nw_candidate_manager_handle_ids_endpoints";
                v79 = 2048;
                v80 = v26;
                v81 = 2112;
                v82 = v20;
                _os_log_impl(&dword_181A37000, v24, v25, "%{public}s [CM%zu] No resolver for %@", v77, 0x20u);
              }

              v5 = v54;
LABEL_34:
              v27 = v55;
              if (!v55)
              {
                goto LABEL_23;
              }

LABEL_35:
              free(v27);
              goto LABEL_23;
            }

            if (v68 != 1)
            {
              if (__nwlog_candidate_manager_log::onceToken != -1)
              {
                dispatch_once(&__nwlog_candidate_manager_log::onceToken, &__block_literal_global_24_47429);
              }

              v32 = gcandidate_managerLogObj;
              v33 = type;
              loga = v32;
              if (os_log_type_enabled(v32, type))
              {
                v34 = v15->log_id;
                *v77 = 136446722;
                v78 = "nw_candidate_manager_handle_ids_endpoints";
                v79 = 2048;
                v80 = v34;
                v81 = 2112;
                v82 = v20;
                _os_log_impl(&dword_181A37000, loga, v33, "%{public}s [CM%zu] No resolver for %@, backtrace limit exceeded", v77, 0x20u);
              }

              goto LABEL_48;
            }

            backtrace_string = __nw_create_backtrace_string();
            if (!backtrace_string)
            {
              if (__nwlog_candidate_manager_log::onceToken != -1)
              {
                dispatch_once(&__nwlog_candidate_manager_log::onceToken, &__block_literal_global_24_47429);
              }

              v35 = gcandidate_managerLogObj;
              v36 = type;
              loga = v35;
              if (os_log_type_enabled(v35, type))
              {
                v37 = v15->log_id;
                *v77 = 136446722;
                v78 = "nw_candidate_manager_handle_ids_endpoints";
                v79 = 2048;
                v80 = v37;
                v81 = 2112;
                v82 = v20;
                _os_log_impl(&dword_181A37000, loga, v36, "%{public}s [CM%zu] No resolver for %@, no backtrace", v77, 0x20u);
              }

LABEL_48:

              goto LABEL_34;
            }

            v51 = backtrace_string;
            if (__nwlog_candidate_manager_log::onceToken != -1)
            {
              dispatch_once(&__nwlog_candidate_manager_log::onceToken, &__block_literal_global_24_47429);
            }

            v29 = gcandidate_managerLogObj;
            v30 = type;
            log = v29;
            if (os_log_type_enabled(v29, type))
            {
              v31 = v15->log_id;
              *v77 = 136446978;
              v78 = "nw_candidate_manager_handle_ids_endpoints";
              v79 = 2048;
              v80 = v31;
              v81 = 2112;
              v82 = v20;
              v83 = 2082;
              v84 = v51;
              _os_log_impl(&dword_181A37000, log, v30, "%{public}s [CM%zu] No resolver for %@, dumping backtrace:%{public}s", v77, 0x2Au);
            }

            free(v51);
            v27 = v55;
            if (v55)
            {
              goto LABEL_35;
            }
          }

LABEL_23:

          ++v19;
        }

        while (v17 != v19);
        v38 = [v16 countByEnumeratingWithState:v70 objects:buf count:16];
        v17 = v38;
      }

      while (v38);
    }

    goto LABEL_56;
  }

  v40 = __nwlog_obj();
  *buf = 136446210;
  v86 = "nw_candidate_manager_handle_ids_path";
  v41 = _os_log_send_and_compose_impl();

  v70[0] = OS_LOG_TYPE_ERROR;
  LOBYTE(aBlock[0]) = 0;
  if (__nwlog_fault(v41, v70, aBlock))
  {
    if (v70[0] == OS_LOG_TYPE_FAULT)
    {
      v42 = __nwlog_obj();
      v43 = v70[0];
      if (os_log_type_enabled(v42, v70[0]))
      {
        *buf = 136446210;
        v86 = "nw_candidate_manager_handle_ids_path";
        _os_log_impl(&dword_181A37000, v42, v43, "%{public}s called with null manager", buf, 0xCu);
      }
    }

    else
    {
      if (LOBYTE(aBlock[0]) == 1)
      {
        v44 = __nw_create_backtrace_string();
        v45 = __nwlog_obj();
        v46 = v70[0];
        v47 = os_log_type_enabled(v45, v70[0]);
        if (v44)
        {
          if (v47)
          {
            *buf = 136446466;
            v86 = "nw_candidate_manager_handle_ids_path";
            v87 = 2082;
            v88 = v44;
            _os_log_impl(&dword_181A37000, v45, v46, "%{public}s called with null manager, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v44);
        }

        else
        {
          if (v47)
          {
            *buf = 136446210;
            v86 = "nw_candidate_manager_handle_ids_path";
            _os_log_impl(&dword_181A37000, v45, v46, "%{public}s called with null manager, no backtrace", buf, 0xCu);
          }
        }

        goto LABEL_77;
      }

      v42 = __nwlog_obj();
      v48 = v70[0];
      if (os_log_type_enabled(v42, v70[0]))
      {
        *buf = 136446210;
        v86 = "nw_candidate_manager_handle_ids_path";
        _os_log_impl(&dword_181A37000, v42, v48, "%{public}s called with null manager, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_77:
  if (v41)
  {
    free(v41);
  }

LABEL_57:
}

void sub_1823557A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, id a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, id a51, id a52)
{
  _Block_object_dispose(&a32, 8);

  _Unwind_Resume(a1);
}

void ___ZL36nw_candidate_manager_handle_ids_pathP31NWConcrete_nw_candidate_managerPU21objcproto10OS_nw_path8NSObject_block_invoke(uint64_t a1, unsigned __int8 *uu)
{
  v27 = *MEMORY[0x1E69E9840];
  memset(out, 0, 37);
  uuid_unparse(uu, out);
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v4 = nw_dictionary_create();
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  v7 = *(a1 + 32);
  v8 = *(v7 + 24);
  if (v8)
  {
    v9 = nw_dictionary_copy_value(v8, out);
    if (v9)
    {
      v10 = v9;
      nw_dictionary_set_value(*(*(*(a1 + 40) + 8) + 40), out, v9);

      return;
    }

    v7 = *(a1 + 32);
  }

  v17 = 0;
  v11 = nw_path_evaluator_create_flow_inner(*(v7 + 184), 0, 0, 0, 1, uu, 0, 0, 0, 0, &v17);
  v12 = v11;
  if (v17 || !v11)
  {
    if (__nwlog_candidate_manager_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_candidate_manager_log::onceToken, &__block_literal_global_24_47429);
    }

    v15 = gcandidate_managerLogObj;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = *(*(a1 + 32) + 8);
      *buf = 136446722;
      v19 = "nw_candidate_manager_handle_ids_path_block_invoke";
      v20 = 2048;
      v21 = v16;
      v22 = 1024;
      v23 = v17;
      _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_ERROR, "%{public}s [CM%zu] nw_path_evaluator_create_flow failed: %{darwin.errno}d", buf, 0x1Cu);
    }
  }

  else
  {
    if (__nwlog_candidate_manager_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_candidate_manager_log::onceToken, &__block_literal_global_24_47429);
    }

    v13 = gcandidate_managerLogObj;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = *(*(a1 + 32) + 8);
      *buf = 136446978;
      v19 = "nw_candidate_manager_handle_ids_path_block_invoke";
      v20 = 2048;
      v21 = v14;
      v22 = 1040;
      v23 = 16;
      v24 = 2096;
      v25 = uu;
      _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_INFO, "%{public}s [CM%zu] created resolver flow to %{uuid_t}.16P", buf, 0x26u);
    }

    nw_dictionary_set_value(*(*(*(a1 + 40) + 8) + 40), out, v12);
  }
}

uint64_t ___ZL41nw_candidate_manager_handle_ids_endpointsP31NWConcrete_nw_candidate_managerPU22objcproto11OS_nw_array8NSObject_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v104[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  endpoint = v4;
  if ([*(a1 + 32) containsObject:v4])
  {
    [*(a1 + 32) removeObject:v4];
    goto LABEL_52;
  }

  v89 = *(a1 + 40);
  v5 = nw_endpoint_copy_txt_record(v4);
  v6 = v5;
  v88 = a1;
  if (!v5)
  {
    v34 = 0;
    v39 = __nwlog_obj();
    *access_value = 136446210;
    *&access_value[4] = "nw_candidate_manager_candidate_for_ids_resolved_endpoint";
    v40 = _os_log_send_and_compose_impl();

    LOBYTE(v104[0]) = 16;
    LOBYTE(v103) = 0;
    if (__nwlog_fault(v40, v104, &v103))
    {
      if (LOBYTE(v104[0]) == 17)
      {
        v41 = __nwlog_obj();
        v42 = v104[0];
        if (os_log_type_enabled(v41, v104[0]))
        {
          *access_value = 136446210;
          *&access_value[4] = "nw_candidate_manager_candidate_for_ids_resolved_endpoint";
          _os_log_impl(&dword_181A37000, v41, v42, "%{public}s called with null metadata", access_value, 0xCu);
        }
      }

      else if (v103 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v41 = __nwlog_obj();
        v62 = v104[0];
        v63 = os_log_type_enabled(v41, v104[0]);
        if (backtrace_string)
        {
          if (v63)
          {
            *access_value = 136446466;
            *&access_value[4] = "nw_candidate_manager_candidate_for_ids_resolved_endpoint";
            *&access_value[12] = 2082;
            *&access_value[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v41, v62, "%{public}s called with null metadata, dumping backtrace:%{public}s", access_value, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_136;
        }

        if (v63)
        {
          *access_value = 136446210;
          *&access_value[4] = "nw_candidate_manager_candidate_for_ids_resolved_endpoint";
          _os_log_impl(&dword_181A37000, v41, v62, "%{public}s called with null metadata, no backtrace", access_value, 0xCu);
        }
      }

      else
      {
        v41 = __nwlog_obj();
        v78 = v104[0];
        if (os_log_type_enabled(v41, v104[0]))
        {
          *access_value = 136446210;
          *&access_value[4] = "nw_candidate_manager_candidate_for_ids_resolved_endpoint";
          _os_log_impl(&dword_181A37000, v41, v78, "%{public}s called with null metadata, backtrace limit exceeded", access_value, 0xCu);
        }
      }
    }

LABEL_136:
    if (v40)
    {
      free(v40);
    }

    v21 = 0;
    goto LABEL_44;
  }

  v94 = 0;
  v87 = v5;
  if (!nw_txt_record_get_key_data_value(v5, "lcid", &v94))
  {
    v43 = __nwlog_obj();
    *access_value = 136446210;
    *&access_value[4] = "nw_candidate_manager_candidate_for_ids_resolved_endpoint";
    v44 = _os_log_send_and_compose_impl();

    LOBYTE(v104[0]) = 16;
    LOBYTE(v103) = 0;
    if (__nwlog_fault(v44, v104, &v103))
    {
      if (LOBYTE(v104[0]) == 17)
      {
        v45 = __nwlog_obj();
        v46 = v104[0];
        if (os_log_type_enabled(v45, v104[0]))
        {
          *access_value = 136446210;
          *&access_value[4] = "nw_candidate_manager_candidate_for_ids_resolved_endpoint";
          _os_log_impl(&dword_181A37000, v45, v46, "%{public}s called with null nw_txt_record_get_key_data_value(metadata, kIDSKeyLocalCID, &lcid)", access_value, 0xCu);
        }
      }

      else if (v103 == 1)
      {
        v64 = __nw_create_backtrace_string();
        v45 = __nwlog_obj();
        v65 = v104[0];
        v66 = os_log_type_enabled(v45, v104[0]);
        if (v64)
        {
          if (v66)
          {
            *access_value = 136446466;
            *&access_value[4] = "nw_candidate_manager_candidate_for_ids_resolved_endpoint";
            *&access_value[12] = 2082;
            *&access_value[14] = v64;
            _os_log_impl(&dword_181A37000, v45, v65, "%{public}s called with null nw_txt_record_get_key_data_value(metadata, kIDSKeyLocalCID, &lcid), dumping backtrace:%{public}s", access_value, 0x16u);
          }

          free(v64);
          goto LABEL_142;
        }

        if (v66)
        {
          *access_value = 136446210;
          *&access_value[4] = "nw_candidate_manager_candidate_for_ids_resolved_endpoint";
          _os_log_impl(&dword_181A37000, v45, v65, "%{public}s called with null nw_txt_record_get_key_data_value(metadata, kIDSKeyLocalCID, &lcid), no backtrace", access_value, 0xCu);
        }
      }

      else
      {
        v45 = __nwlog_obj();
        v79 = v104[0];
        if (os_log_type_enabled(v45, v104[0]))
        {
          *access_value = 136446210;
          *&access_value[4] = "nw_candidate_manager_candidate_for_ids_resolved_endpoint";
          _os_log_impl(&dword_181A37000, v45, v79, "%{public}s called with null nw_txt_record_get_key_data_value(metadata, kIDSKeyLocalCID, &lcid), backtrace limit exceeded", access_value, 0xCu);
        }
      }
    }

LABEL_142:
    if (v44)
    {
      free(v44);
    }

    v21 = 0;
    goto LABEL_43;
  }

  v93 = 0;
  if (!nw_txt_record_get_key_data_value(v6, "rcid", &v93))
  {
    v47 = __nwlog_obj();
    *access_value = 136446210;
    *&access_value[4] = "nw_candidate_manager_candidate_for_ids_resolved_endpoint";
    v48 = _os_log_send_and_compose_impl();

    LOBYTE(v104[0]) = 16;
    LOBYTE(v103) = 0;
    if (!__nwlog_fault(v48, v104, &v103))
    {
      goto LABEL_154;
    }

    if (LOBYTE(v104[0]) == 17)
    {
      v49 = __nwlog_obj();
      v50 = v104[0];
      if (os_log_type_enabled(v49, v104[0]))
      {
        *access_value = 136446210;
        *&access_value[4] = "nw_candidate_manager_candidate_for_ids_resolved_endpoint";
        _os_log_impl(&dword_181A37000, v49, v50, "%{public}s called with null nw_txt_record_get_key_data_value(metadata, kIDSKeyRemoteCID, &rcid)", access_value, 0xCu);
      }
    }

    else if (v103 == 1)
    {
      v67 = __nw_create_backtrace_string();
      v49 = __nwlog_obj();
      v68 = v104[0];
      v69 = os_log_type_enabled(v49, v104[0]);
      if (v67)
      {
        if (v69)
        {
          *access_value = 136446466;
          *&access_value[4] = "nw_candidate_manager_candidate_for_ids_resolved_endpoint";
          *&access_value[12] = 2082;
          *&access_value[14] = v67;
          _os_log_impl(&dword_181A37000, v49, v68, "%{public}s called with null nw_txt_record_get_key_data_value(metadata, kIDSKeyRemoteCID, &rcid), dumping backtrace:%{public}s", access_value, 0x16u);
        }

        free(v67);
LABEL_154:
        if (!v48)
        {
LABEL_156:
          v21 = 0;
          goto LABEL_42;
        }

LABEL_155:
        free(v48);
        goto LABEL_156;
      }

      if (v69)
      {
        *access_value = 136446210;
        *&access_value[4] = "nw_candidate_manager_candidate_for_ids_resolved_endpoint";
        _os_log_impl(&dword_181A37000, v49, v68, "%{public}s called with null nw_txt_record_get_key_data_value(metadata, kIDSKeyRemoteCID, &rcid), no backtrace", access_value, 0xCu);
      }
    }

    else
    {
      v49 = __nwlog_obj();
      v80 = v104[0];
      if (os_log_type_enabled(v49, v104[0]))
      {
        *access_value = 136446210;
        *&access_value[4] = "nw_candidate_manager_candidate_for_ids_resolved_endpoint";
        _os_log_impl(&dword_181A37000, v49, v80, "%{public}s called with null nw_txt_record_get_key_data_value(metadata, kIDSKeyRemoteCID, &rcid), backtrace limit exceeded", access_value, 0xCu);
      }
    }

    goto LABEL_154;
  }

  v92 = 0;
  *access_value = MEMORY[0x1E69E9820];
  *&access_value[8] = 3221225472;
  *&access_value[16] = ___ZL34nw_txt_record_get_key_uint64_valuePU27objcproto16OS_nw_txt_record8NSObjectPKcPy_block_invoke;
  *v96 = &__block_descriptor_40_e19_B36__0r_8i16r_20Q28l;
  *&v96[8] = &v92;
  if (!nw_txt_record_access_key(v6, "rift", access_value))
  {
    v51 = __nwlog_obj();
    *access_value = 136446210;
    *&access_value[4] = "nw_candidate_manager_candidate_for_ids_resolved_endpoint";
    v48 = _os_log_send_and_compose_impl();

    LOBYTE(v104[0]) = 16;
    LOBYTE(v103) = 0;
    if (!__nwlog_fault(v48, v104, &v103))
    {
      goto LABEL_154;
    }

    if (LOBYTE(v104[0]) == 17)
    {
      v52 = __nwlog_obj();
      v53 = v104[0];
      if (os_log_type_enabled(v52, v104[0]))
      {
        *access_value = 136446210;
        *&access_value[4] = "nw_candidate_manager_candidate_for_ids_resolved_endpoint";
        _os_log_impl(&dword_181A37000, v52, v53, "%{public}s called with null nw_txt_record_get_key_uint64_value(metadata, kIDSKeyRemoteInterfaceType, &rift)", access_value, 0xCu);
      }
    }

    else if (v103 == 1)
    {
      v70 = __nw_create_backtrace_string();
      v52 = __nwlog_obj();
      v71 = v104[0];
      v72 = os_log_type_enabled(v52, v104[0]);
      if (v70)
      {
        if (v72)
        {
          *access_value = 136446466;
          *&access_value[4] = "nw_candidate_manager_candidate_for_ids_resolved_endpoint";
          *&access_value[12] = 2082;
          *&access_value[14] = v70;
          _os_log_impl(&dword_181A37000, v52, v71, "%{public}s called with null nw_txt_record_get_key_uint64_value(metadata, kIDSKeyRemoteInterfaceType, &rift), dumping backtrace:%{public}s", access_value, 0x16u);
        }

        goto LABEL_108;
      }

      if (v72)
      {
        *access_value = 136446210;
        *&access_value[4] = "nw_candidate_manager_candidate_for_ids_resolved_endpoint";
        _os_log_impl(&dword_181A37000, v52, v71, "%{public}s called with null nw_txt_record_get_key_uint64_value(metadata, kIDSKeyRemoteInterfaceType, &rift), no backtrace", access_value, 0xCu);
      }
    }

    else
    {
      v52 = __nwlog_obj();
      v81 = v104[0];
      if (os_log_type_enabled(v52, v104[0]))
      {
        *access_value = 136446210;
        *&access_value[4] = "nw_candidate_manager_candidate_for_ids_resolved_endpoint";
        _os_log_impl(&dword_181A37000, v52, v81, "%{public}s called with null nw_txt_record_get_key_uint64_value(metadata, kIDSKeyRemoteInterfaceType, &rift), backtrace limit exceeded", access_value, 0xCu);
      }
    }

    goto LABEL_154;
  }

  v104[0] = 0;
  v104[1] = 0;
  *access_value = MEMORY[0x1E69E9820];
  *&access_value[8] = 3221225472;
  *&access_value[16] = ___ZL32nw_txt_record_get_key_uuid_valuePU27objcproto16OS_nw_txt_record8NSObjectPKcPh_block_invoke;
  *v96 = &__block_descriptor_40_e19_B36__0r_8i16r_20Q28l;
  *&v96[8] = v104;
  if (!nw_txt_record_access_key(v6, "eval", access_value))
  {
    v54 = __nwlog_obj();
    *access_value = 136446210;
    *&access_value[4] = "nw_candidate_manager_candidate_for_ids_resolved_endpoint";
    v48 = _os_log_send_and_compose_impl();

    LOBYTE(v103) = 16;
    v91 = 0;
    if (!__nwlog_fault(v48, &v103, &v91))
    {
      goto LABEL_154;
    }

    if (v103 == 17)
    {
      v55 = __nwlog_obj();
      v56 = v103;
      if (os_log_type_enabled(v55, v103))
      {
        *access_value = 136446210;
        *&access_value[4] = "nw_candidate_manager_candidate_for_ids_resolved_endpoint";
        _os_log_impl(&dword_181A37000, v55, v56, "%{public}s called with null nw_txt_record_get_key_uuid_value(metadata, kIDSKeyEvaluatorUUID, evaluator_id)", access_value, 0xCu);
      }

LABEL_153:

      goto LABEL_154;
    }

    if (v91 != 1)
    {
      v55 = __nwlog_obj();
      v82 = v103;
      if (os_log_type_enabled(v55, v103))
      {
        *access_value = 136446210;
        *&access_value[4] = "nw_candidate_manager_candidate_for_ids_resolved_endpoint";
        _os_log_impl(&dword_181A37000, v55, v82, "%{public}s called with null nw_txt_record_get_key_uuid_value(metadata, kIDSKeyEvaluatorUUID, evaluator_id), backtrace limit exceeded", access_value, 0xCu);
      }

      goto LABEL_153;
    }

    v70 = __nw_create_backtrace_string();
    v55 = __nwlog_obj();
    v73 = v103;
    v74 = os_log_type_enabled(v55, v103);
    if (!v70)
    {
      if (v74)
      {
        *access_value = 136446210;
        *&access_value[4] = "nw_candidate_manager_candidate_for_ids_resolved_endpoint";
        _os_log_impl(&dword_181A37000, v55, v73, "%{public}s called with null nw_txt_record_get_key_uuid_value(metadata, kIDSKeyEvaluatorUUID, evaluator_id), no backtrace", access_value, 0xCu);
      }

      goto LABEL_153;
    }

    if (v74)
    {
      *access_value = 136446466;
      *&access_value[4] = "nw_candidate_manager_candidate_for_ids_resolved_endpoint";
      *&access_value[12] = 2082;
      *&access_value[14] = v70;
      _os_log_impl(&dword_181A37000, v55, v73, "%{public}s called with null nw_txt_record_get_key_uuid_value(metadata, kIDSKeyEvaluatorUUID, evaluator_id), dumping backtrace:%{public}s", access_value, 0x16u);
    }

LABEL_108:
    free(v70);
    if (!v48)
    {
      goto LABEL_156;
    }

    goto LABEL_155;
  }

  if (__nwlog_candidate_manager_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_candidate_manager_log::onceToken, &__block_literal_global_24_47429);
  }

  v7 = gcandidate_managerLogObj;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = v89[1];
    *access_value = 136446978;
    *&access_value[4] = "nw_candidate_manager_candidate_for_ids_resolved_endpoint";
    *&access_value[12] = 2048;
    *&access_value[14] = v8;
    *&access_value[22] = 1040;
    *v96 = 16;
    *&v96[4] = 2096;
    *&v96[6] = v104;
    _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEBUG, "%{public}s [CM%zu] looking up evaluator for %{uuid_t}.16P", access_value, 0x26u);
  }

  v9 = nw_parameters_copy_context(v89[10]);
  evaluator_for_client_id = nw_path_create_evaluator_for_client_id(v104, v9);

  if (!evaluator_for_client_id)
  {
    v57 = __nwlog_obj();
    *access_value = 136446210;
    *&access_value[4] = "nw_candidate_manager_candidate_for_ids_resolved_endpoint";
    v58 = _os_log_send_and_compose_impl();

    LOBYTE(v103) = 16;
    v91 = 0;
    if (__nwlog_fault(v58, &v103, &v91))
    {
      if (v103 == 17)
      {
        v59 = __nwlog_obj();
        v60 = v103;
        if (os_log_type_enabled(v59, v103))
        {
          *access_value = 136446210;
          *&access_value[4] = "nw_candidate_manager_candidate_for_ids_resolved_endpoint";
          _os_log_impl(&dword_181A37000, v59, v60, "%{public}s called with null evaluator", access_value, 0xCu);
        }
      }

      else if (v91 == 1)
      {
        v75 = __nw_create_backtrace_string();
        v59 = __nwlog_obj();
        v76 = v103;
        v77 = os_log_type_enabled(v59, v103);
        if (v75)
        {
          if (v77)
          {
            *access_value = 136446466;
            *&access_value[4] = "nw_candidate_manager_candidate_for_ids_resolved_endpoint";
            *&access_value[12] = 2082;
            *&access_value[14] = v75;
            _os_log_impl(&dword_181A37000, v59, v76, "%{public}s called with null evaluator, dumping backtrace:%{public}s", access_value, 0x16u);
          }

          free(v75);
          goto LABEL_160;
        }

        if (v77)
        {
          *access_value = 136446210;
          *&access_value[4] = "nw_candidate_manager_candidate_for_ids_resolved_endpoint";
          _os_log_impl(&dword_181A37000, v59, v76, "%{public}s called with null evaluator, no backtrace", access_value, 0xCu);
        }
      }

      else
      {
        v59 = __nwlog_obj();
        v83 = v103;
        if (os_log_type_enabled(v59, v103))
        {
          *access_value = 136446210;
          *&access_value[4] = "nw_candidate_manager_candidate_for_ids_resolved_endpoint";
          _os_log_impl(&dword_181A37000, v59, v83, "%{public}s called with null evaluator, backtrace limit exceeded", access_value, 0xCu);
        }
      }
    }

LABEL_160:
    if (v58)
    {
      free(v58);
    }

    v21 = 0;
    goto LABEL_41;
  }

  v11 = evaluator_for_client_id;
  os_unfair_lock_lock(evaluator_for_client_id + 24);
  v12 = v11[6];
  os_unfair_lock_unlock(evaluator_for_client_id + 24);

  if (v12)
  {
    v13 = v12;
    v14 = _nw_path_copy_effective_remote_endpoint(v13);

    if (v14)
    {
      v103 = 0uLL;
      v15 = v13;
      _nw_path_get_nexus_agent_uuid_check_assertion(v15, &v103, 0);

      v16 = v92;
      v17 = _nw_path_uses_interface_type(v15, 2u);
      v18 = nw_path_copy_interface(v15);
      if (v16 == 2)
      {
        v19 = -6;
      }

      else
      {
        v19 = -5;
      }

      v86 = v18;
      v20 = nw_interface_option_details_create(v18, &v103, v14, v19 - v17, 0, -1);
      nw_interface_option_details_set_local_cid(v20, v94);
      nw_interface_option_details_set_remote_cid(v20, v93);
      nw_interface_option_details_set_evaluator(v20, v11);
      v21 = nw_candidate_create(v89, v20, v11);
      if (__nwlog_candidate_manager_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_candidate_manager_log::onceToken, &__block_literal_global_24_47429);
      }

      v22 = gcandidate_managerLogObj;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v84 = v89[1];
        v23 = v15;
        v24 = _nw_path_copy_effective_local_endpoint(v23);

        v85 = v24;
        v25 = v23;
        v26 = _nw_path_copy_effective_remote_endpoint(v25);

        v27 = v26;
        if (v86 && (type = _nw_interface_get_type(v86), type <= 4))
        {
          v29 = off_1E6A357B8[type];
        }

        else
        {
          v29 = "unknown";
        }

        if (v92 > 4)
        {
          v33 = "unknown";
        }

        else
        {
          v33 = off_1E6A357B8[v92 & 7];
        }

        *access_value = 136447746;
        *&access_value[4] = "nw_candidate_manager_candidate_for_ids_resolved_endpoint";
        *&access_value[12] = 2048;
        *&access_value[14] = v84;
        *&access_value[22] = 2112;
        *v96 = v85;
        *&v96[8] = 2112;
        *&v96[10] = v27;
        v97 = 2080;
        v98 = v29;
        v99 = 2080;
        v100 = v33;
        v101 = 2112;
        v102 = v21;
        _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_DEFAULT, "%{public}s [CM%zu] %@<->%@ %s<->%s %@", access_value, 0x48u);
      }
    }

    else
    {
      if (__nwlog_candidate_manager_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_candidate_manager_log::onceToken, &__block_literal_global_24_47429);
      }

      v31 = gcandidate_managerLogObj;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = v89[1];
        *access_value = 136446722;
        *&access_value[4] = "nw_candidate_manager_candidate_for_ids_resolved_endpoint";
        *&access_value[12] = 2048;
        *&access_value[14] = v32;
        *&access_value[22] = 2112;
        *v96 = v13;
        _os_log_impl(&dword_181A37000, v31, OS_LOG_TYPE_ERROR, "%{public}s [CM%zu] %@ has no effective remote endpoint", access_value, 0x20u);
      }

      v14 = 0;
      v21 = 0;
    }
  }

  else
  {
    if (__nwlog_candidate_manager_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_candidate_manager_log::onceToken, &__block_literal_global_24_47429);
    }

    v14 = gcandidate_managerLogObj;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v30 = v89[1];
      *access_value = 136446722;
      *&access_value[4] = "nw_candidate_manager_candidate_for_ids_resolved_endpoint";
      *&access_value[12] = 2048;
      *&access_value[14] = v30;
      *&access_value[22] = 2112;
      *v96 = v11;
      _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_ERROR, "%{public}s [CM%zu] %@ has no path", access_value, 0x20u);
    }

    v21 = 0;
  }

LABEL_41:
LABEL_42:

LABEL_43:
  v34 = v87;
LABEL_44:

  if (nw_candidate_manager_process_candidate_internal(*(v88 + 40), v21))
  {
    [*(*(v88 + 40) + 32) setObject:v21 forKeyedSubscript:endpoint];
  }

  else
  {
    if (__nwlog_candidate_manager_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_candidate_manager_log::onceToken, &__block_literal_global_24_47429);
    }

    v35 = gcandidate_managerLogObj;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = *(*(v88 + 40) + 8);
      v37 = nw_endpoint_copy_txt_record(endpoint);
      *access_value = 136446978;
      *&access_value[4] = "nw_candidate_manager_handle_ids_endpoints_block_invoke";
      *&access_value[12] = 2048;
      *&access_value[14] = v36;
      *&access_value[22] = 2112;
      *v96 = endpoint;
      *&v96[8] = 2112;
      *&v96[10] = v37;
      _os_log_impl(&dword_181A37000, v35, OS_LOG_TYPE_ERROR, "%{public}s [CM%zu] duplicate endpoint: %@, metadata:%@", access_value, 0x2Au);
    }
  }

  v4 = endpoint;
LABEL_52:

  return 1;
}

BOOL nw_txt_record_get_key_data_value(void *a1, const char *a2, void **a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a1;
  if (a2)
  {
    if (a3)
    {
      v6 = *a3;
      *a3 = 0;

      access_value[0] = MEMORY[0x1E69E9820];
      access_value[1] = 3221225472;
      access_value[2] = ___ZL32nw_txt_record_get_key_data_valuePU27objcproto16OS_nw_txt_record8NSObjectPKcPU8__strongPU27objcproto16OS_dispatch_dataS__block_invoke;
      access_value[3] = &__block_descriptor_40_e19_B36__0r_8i16r_20Q28l;
      access_value[4] = a3;
      v7 = nw_txt_record_access_key(v5, a2, access_value);
      goto LABEL_4;
    }

    v13 = __nwlog_obj();
    *buf = 136446210;
    v26 = "nw_txt_record_get_key_data_value";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (__nwlog_fault(v10, &type, &v23))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v11 = __nwlog_obj();
        v14 = type;
        if (os_log_type_enabled(v11, type))
        {
          *buf = 136446210;
          v26 = "nw_txt_record_get_key_data_value";
          _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null out_value", buf, 0xCu);
        }

LABEL_36:

        goto LABEL_37;
      }

      if (v23 != 1)
      {
        v11 = __nwlog_obj();
        v21 = type;
        if (os_log_type_enabled(v11, type))
        {
          *buf = 136446210;
          v26 = "nw_txt_record_get_key_data_value";
          _os_log_impl(&dword_181A37000, v11, v21, "%{public}s called with null out_value, backtrace limit exceeded", buf, 0xCu);
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
          v26 = "nw_txt_record_get_key_data_value";
          _os_log_impl(&dword_181A37000, v11, v18, "%{public}s called with null out_value, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v19)
      {
        *buf = 136446466;
        v26 = "nw_txt_record_get_key_data_value";
        v27 = 2082;
        v28 = backtrace_string;
        _os_log_impl(&dword_181A37000, v11, v18, "%{public}s called with null out_value, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_24;
    }
  }

  else
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    v26 = "nw_txt_record_get_key_data_value";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (__nwlog_fault(v10, &type, &v23))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v11 = __nwlog_obj();
        v12 = type;
        if (os_log_type_enabled(v11, type))
        {
          *buf = 136446210;
          v26 = "nw_txt_record_get_key_data_value";
          _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null key", buf, 0xCu);
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
          v26 = "nw_txt_record_get_key_data_value";
          _os_log_impl(&dword_181A37000, v11, v20, "%{public}s called with null key, backtrace limit exceeded", buf, 0xCu);
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
          v26 = "nw_txt_record_get_key_data_value";
          _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null key, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v17)
      {
        *buf = 136446466;
        v26 = "nw_txt_record_get_key_data_value";
        v27 = 2082;
        v28 = backtrace_string;
        _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null key, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_24:

      free(backtrace_string);
    }
  }

LABEL_37:
  if (v10)
  {
    free(v10);
  }

  v7 = 0;
LABEL_4:

  return v7;
}

BOOL ___ZL34nw_txt_record_get_key_uint64_valuePU27objcproto16OS_nw_txt_record8NSObjectPKcPy_block_invoke(uint64_t a1, uint64_t a2, int a3, const char *a4, uint64_t a5)
{
  result = 0;
  v11[2] = *MEMORY[0x1E69E9840];
  *__str = 0;
  v11[0] = 0;
  *(v11 + 5) = 0;
  if (a3 == 4 && a4)
  {
    v7 = a1;
    if (snprintf(__str, 0x15uLL, "%.*s", a5, a4) <= 20)
    {
      __endptr = 0;
      **(v7 + 32) = strtoull(__str, &__endptr, 0);
      return __endptr - __str == a5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL ___ZL32nw_txt_record_get_key_uuid_valuePU27objcproto16OS_nw_txt_record8NSObjectPKcPh_block_invoke(uint64_t a1, uint64_t a2, int a3, const char *a4, int a5)
{
  result = 0;
  v10 = *MEMORY[0x1E69E9840];
  if (a3 == 4 && a4)
  {
    v7 = a1;
    *__str = 0u;
    memset(v9, 0, sizeof(v9));
    return snprintf(__str, 0x25uLL, "%.*s", a5, a4) <= 36 && uuid_parse(__str, *(v7 + 32)) == 0;
  }

  return result;
}

uint64_t ___ZL32nw_txt_record_get_key_data_valuePU27objcproto16OS_nw_txt_record8NSObjectPKcPU8__strongPU27objcproto16OS_dispatch_dataS__block_invoke(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unint64_t a5)
{
  result = 0;
  v29 = *MEMORY[0x1E69E9840];
  if (a3 != 4 || !a4 || a5 < 2 || (a5 & 1) != 0)
  {
    return result;
  }

  v9 = malloc_type_calloc(1uLL, a5 >> 1, 0x12C7DCC9uLL);
  if (!v9)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    *buf = 136446722;
    v24 = "nw_txt_record_get_key_data_value_block_invoke";
    v25 = 2048;
    v26 = 1;
    v27 = 2048;
    v28 = a5 >> 1;
    v11 = _os_log_send_and_compose_impl();

    result = __nwlog_should_abort(v11);
    if (result)
    {
      __break(1u);
      return result;
    }

    free(v11);
    v9 = 0;
  }

  v12 = 0;
  while (1)
  {
    v14 = *(a4 + v12);
    v15 = v14 - 48;
    if ((v14 - 48) < 0xA)
    {
      goto LABEL_14;
    }

    if ((v14 - 97) <= 5)
    {
      v15 = v14 - 87;
LABEL_14:
      v16 = v12 >> 1;
      if ((v12 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_9;
    }

    if ((v14 - 65) > 5)
    {
      break;
    }

    v15 = v14 - 55;
    v16 = v12 >> 1;
    if ((v12 & 1) == 0)
    {
LABEL_15:
      v13 = 16 * v15;
      goto LABEL_10;
    }

LABEL_9:
    v13 = v9[v16] | v15;
LABEL_10:
    v9[v16] = v13;
    if (a5 == ++v12)
    {
      v17 = dispatch_data_create(v9, a5 >> 1, 0, *MEMORY[0x1E69E9648]);
      v18 = *(a1 + 32);
      v19 = *v18;
      *v18 = v17;

      return 1;
    }
  }

  v20 = v9;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v21 = gLogObj;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v22 = *(a4 + v12);
    *buf = 136446466;
    v24 = "nw_txt_record_get_key_data_value_block_invoke";
    v25 = 1024;
    LODWORD(v26) = v22;
    _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_ERROR, "%{public}s Not hex character: %c", buf, 0x12u);
  }

  result = v20;
  if (v20)
  {
    free(v20);
    return 0;
  }

  return result;
}

void ___ZL35nw_candidate_manager_set_connectionP31NWConcrete_nw_candidate_managerP24NWConcrete_nw_connection_block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (__nwlog_candidate_manager_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_candidate_manager_log::onceToken, &__block_literal_global_24_47429);
  }

  v4 = gcandidate_managerLogObj;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v6 = *(*(a1 + 32) + 8);
    v7 = 136446978;
    v8 = "nw_candidate_manager_set_connection_block_invoke";
    v9 = 2048;
    v10 = v6;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s [CM%zu] Injecting %@ into %@", &v7, 0x2Au);
  }

  nw_connection_add_extra_interface_option(*(a1 + 40), v3);
}

void ___ZL35nw_candidate_manager_set_connectionP31NWConcrete_nw_candidate_managerP24NWConcrete_nw_connection_block_invoke_154(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (__nwlog_candidate_manager_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_candidate_manager_log::onceToken, &__block_literal_global_24_47429);
  }

  v4 = gcandidate_managerLogObj;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v6 = *(*(a1 + 32) + 8);
    *buf = 136446978;
    *&buf[4] = "nw_candidate_manager_set_connection_block_invoke";
    *&buf[12] = 2048;
    *&buf[14] = v6;
    *&buf[22] = 2112;
    *&buf[24] = v3;
    LOWORD(v31) = 2112;
    *(&v31 + 2) = v5;
    _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s [CM%zu] Removing %@ from %@", buf, 0x2Au);
  }

  v7 = *(a1 + 40);
  v8 = v3;
  v9 = v8;
  if (!v7)
  {
    v14 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_connection_remove_extra_interface_option";
    v15 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v15, &type, &v28))
    {
      goto LABEL_49;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v16 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_remove_extra_interface_option";
        _os_log_impl(&dword_181A37000, v16, v17, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (v28 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v16 = __nwlog_obj();
      v21 = type;
      v22 = os_log_type_enabled(v16, type);
      if (backtrace_string)
      {
        if (v22)
        {
          *buf = 136446466;
          *&buf[4] = "nw_connection_remove_extra_interface_option";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v16, v21, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_49:
        if (!v15)
        {
          goto LABEL_15;
        }

LABEL_50:
        free(v15);
        goto LABEL_15;
      }

      if (v22)
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_remove_extra_interface_option";
        _os_log_impl(&dword_181A37000, v16, v21, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v16 = __nwlog_obj();
      v26 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_remove_extra_interface_option";
        _os_log_impl(&dword_181A37000, v16, v26, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_48:

    goto LABEL_49;
  }

  if (v8)
  {
    v10 = v7[2];
    if (v10 && !_nw_parameters_get_logging_disabled(v10))
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v11 = gconnectionLogObj;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = *(v7 + 112);
        *buf = 136446722;
        *&buf[4] = "nw_connection_remove_extra_interface_option";
        *&buf[12] = 1024;
        *&buf[14] = v12;
        *&buf[18] = 2112;
        *&buf[20] = v9;
        _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_INFO, "%{public}s [C%u] Removing interface option details %@", buf, 0x1Cu);
      }
    }

    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __nw_connection_remove_extra_interface_option_block_invoke;
    *&buf[24] = &unk_1E6A3D760;
    v13 = v7;
    *&v31 = v13;
    *(&v31 + 1) = v9;
    nw_connection_async_if_needed(v13, buf);

    goto LABEL_15;
  }

  v18 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_connection_remove_extra_interface_option";
  v15 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v28 = 0;
  if (!__nwlog_fault(v15, &type, &v28))
  {
    goto LABEL_49;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v16 = __nwlog_obj();
    v19 = type;
    if (os_log_type_enabled(v16, type))
    {
      *buf = 136446210;
      *&buf[4] = "nw_connection_remove_extra_interface_option";
      _os_log_impl(&dword_181A37000, v16, v19, "%{public}s called with null details", buf, 0xCu);
    }

    goto LABEL_48;
  }

  if (v28 != 1)
  {
    v16 = __nwlog_obj();
    v27 = type;
    if (os_log_type_enabled(v16, type))
    {
      *buf = 136446210;
      *&buf[4] = "nw_connection_remove_extra_interface_option";
      _os_log_impl(&dword_181A37000, v16, v27, "%{public}s called with null details, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_48;
  }

  v23 = __nw_create_backtrace_string();
  v16 = __nwlog_obj();
  v24 = type;
  v25 = os_log_type_enabled(v16, type);
  if (!v23)
  {
    if (v25)
    {
      *buf = 136446210;
      *&buf[4] = "nw_connection_remove_extra_interface_option";
      _os_log_impl(&dword_181A37000, v16, v24, "%{public}s called with null details, no backtrace", buf, 0xCu);
    }

    goto LABEL_48;
  }

  if (v25)
  {
    *buf = 136446466;
    *&buf[4] = "nw_connection_remove_extra_interface_option";
    *&buf[12] = 2082;
    *&buf[14] = v23;
    _os_log_impl(&dword_181A37000, v16, v24, "%{public}s called with null details, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v23);
  if (v15)
  {
    goto LABEL_50;
  }

LABEL_15:
}

id nw_candidate_manager_create_with_monitored_connection(void *a1, void *a2, void *a3)
{
  v58 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (!v5 || (v8 = v5, v9 = _nw_endpoint_get_type(v8), v8, v9 != 3))
  {
    v18 = __nwlog_obj();
    *buf = 136446210;
    v47 = "nw_candidate_manager_create_with_monitored_connection";
    v19 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v44 = 0;
    if (!__nwlog_fault(v19, &type, &v44))
    {
      goto LABEL_76;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v20 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v20, type))
      {
        *buf = 136446210;
        v47 = "nw_candidate_manager_create_with_monitored_connection";
        _os_log_impl(&dword_181A37000, v20, v21, "%{public}s called with null (bonjour_endpoint && nw_endpoint_type_bonjour_service == nw_endpoint_get_type(bonjour_endpoint))", buf, 0xCu);
      }

      goto LABEL_75;
    }

    if (v44 != 1)
    {
      v20 = __nwlog_obj();
      v33 = type;
      if (os_log_type_enabled(v20, type))
      {
        *buf = 136446210;
        v47 = "nw_candidate_manager_create_with_monitored_connection";
        _os_log_impl(&dword_181A37000, v20, v33, "%{public}s called with null (bonjour_endpoint && nw_endpoint_type_bonjour_service == nw_endpoint_get_type(bonjour_endpoint)), backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_75;
    }

    backtrace_string = __nw_create_backtrace_string();
    v20 = __nwlog_obj();
    v23 = type;
    v24 = os_log_type_enabled(v20, type);
    if (!backtrace_string)
    {
      if (v24)
      {
        *buf = 136446210;
        v47 = "nw_candidate_manager_create_with_monitored_connection";
        _os_log_impl(&dword_181A37000, v20, v23, "%{public}s called with null (bonjour_endpoint && nw_endpoint_type_bonjour_service == nw_endpoint_get_type(bonjour_endpoint)), no backtrace", buf, 0xCu);
      }

      goto LABEL_75;
    }

    if (v24)
    {
      *buf = 136446466;
      v47 = "nw_candidate_manager_create_with_monitored_connection";
      v48 = 2082;
      v49 = backtrace_string;
      _os_log_impl(&dword_181A37000, v20, v23, "%{public}s called with null (bonjour_endpoint && nw_endpoint_type_bonjour_service == nw_endpoint_get_type(bonjour_endpoint)), dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_52:

    free(backtrace_string);
    goto LABEL_76;
  }

  if (!v6)
  {
    v25 = __nwlog_obj();
    *buf = 136446210;
    v47 = "nw_candidate_manager_create_with_monitored_connection";
    v19 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v44 = 0;
    if (!__nwlog_fault(v19, &type, &v44))
    {
      goto LABEL_76;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v20 = __nwlog_obj();
      v26 = type;
      if (os_log_type_enabled(v20, type))
      {
        *buf = 136446210;
        v47 = "nw_candidate_manager_create_with_monitored_connection";
        _os_log_impl(&dword_181A37000, v20, v26, "%{public}s called with null parameters", buf, 0xCu);
      }

      goto LABEL_75;
    }

    if (v44 != 1)
    {
      v20 = __nwlog_obj();
      v40 = type;
      if (os_log_type_enabled(v20, type))
      {
        *buf = 136446210;
        v47 = "nw_candidate_manager_create_with_monitored_connection";
        _os_log_impl(&dword_181A37000, v20, v40, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_75;
    }

    backtrace_string = __nw_create_backtrace_string();
    v20 = __nwlog_obj();
    v34 = type;
    v35 = os_log_type_enabled(v20, type);
    if (!backtrace_string)
    {
      if (v35)
      {
        *buf = 136446210;
        v47 = "nw_candidate_manager_create_with_monitored_connection";
        _os_log_impl(&dword_181A37000, v20, v34, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
      }

      goto LABEL_75;
    }

    if (v35)
    {
      *buf = 136446466;
      v47 = "nw_candidate_manager_create_with_monitored_connection";
      v48 = 2082;
      v49 = backtrace_string;
      _os_log_impl(&dword_181A37000, v20, v34, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_52;
  }

  if (v7)
  {
    v10 = v6;
    v11 = [[NWConcrete_nw_candidate_manager alloc] init:v10];

    nw_candidate_manager_set_bonjour_service(v11, v8);
    v12 = v11;
    v13 = v7;
    if (v12)
    {
      objc_storeStrong(v12 + 18, a3);
LABEL_7:

      v14 = _nw_parameters_copy_extended_description(*(v12 + 10));
      if (__nwlog_candidate_manager_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_candidate_manager_log::onceToken, &__block_literal_global_24_47429);
      }

      v15 = gcandidate_managerLogObj;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(v12 + 1);
        *buf = 136447490;
        v47 = "nw_candidate_manager_create_with_monitored_connection";
        v48 = 2048;
        v49 = v16;
        v50 = 2112;
        v51 = v12;
        v52 = 2112;
        v53 = v13;
        v54 = 2112;
        v55 = v8;
        v56 = 2082;
        v57 = v14;
        _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_DEFAULT, "%{public}s [CM%zu] Creating monitoring candidate_manager %@ for %@ to %@ with parameters %{public}s", buf, 0x3Eu);
      }

      if (v14)
      {
        free(v14);
      }

      nw_candidate_manager_set_state(v12, 2);
      goto LABEL_14;
    }

    v29 = __nwlog_obj();
    *buf = 136446210;
    v47 = "nw_candidate_manager_set_monitored_connection";
    v30 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v44 = 0;
    if (__nwlog_fault(v30, &type, &v44))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v31 = __nwlog_obj();
        v32 = type;
        if (os_log_type_enabled(v31, type))
        {
          *buf = 136446210;
          v47 = "nw_candidate_manager_set_monitored_connection";
          _os_log_impl(&dword_181A37000, v31, v32, "%{public}s called with null manager", buf, 0xCu);
        }
      }

      else if (v44 == 1)
      {
        v38 = __nw_create_backtrace_string();
        v31 = __nwlog_obj();
        v43 = type;
        v39 = os_log_type_enabled(v31, type);
        if (v38)
        {
          if (v39)
          {
            *buf = 136446466;
            v47 = "nw_candidate_manager_set_monitored_connection";
            v48 = 2082;
            v49 = v38;
            _os_log_impl(&dword_181A37000, v31, v43, "%{public}s called with null manager, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v38);
          goto LABEL_82;
        }

        if (v39)
        {
          *buf = 136446210;
          v47 = "nw_candidate_manager_set_monitored_connection";
          _os_log_impl(&dword_181A37000, v31, v43, "%{public}s called with null manager, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v31 = __nwlog_obj();
        v42 = type;
        if (os_log_type_enabled(v31, type))
        {
          *buf = 136446210;
          v47 = "nw_candidate_manager_set_monitored_connection";
          _os_log_impl(&dword_181A37000, v31, v42, "%{public}s called with null manager, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_82:
    if (v30)
    {
      free(v30);
    }

    goto LABEL_7;
  }

  v27 = __nwlog_obj();
  *buf = 136446210;
  v47 = "nw_candidate_manager_create_with_monitored_connection";
  v19 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v44 = 0;
  if (__nwlog_fault(v19, &type, &v44))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v20 = __nwlog_obj();
      v28 = type;
      if (os_log_type_enabled(v20, type))
      {
        *buf = 136446210;
        v47 = "nw_candidate_manager_create_with_monitored_connection";
        _os_log_impl(&dword_181A37000, v20, v28, "%{public}s called with null monitored_connection", buf, 0xCu);
      }

LABEL_75:

      goto LABEL_76;
    }

    if (v44 != 1)
    {
      v20 = __nwlog_obj();
      v41 = type;
      if (os_log_type_enabled(v20, type))
      {
        *buf = 136446210;
        v47 = "nw_candidate_manager_create_with_monitored_connection";
        _os_log_impl(&dword_181A37000, v20, v41, "%{public}s called with null monitored_connection, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_75;
    }

    backtrace_string = __nw_create_backtrace_string();
    v20 = __nwlog_obj();
    v36 = type;
    v37 = os_log_type_enabled(v20, type);
    if (!backtrace_string)
    {
      if (v37)
      {
        *buf = 136446210;
        v47 = "nw_candidate_manager_create_with_monitored_connection";
        _os_log_impl(&dword_181A37000, v20, v36, "%{public}s called with null monitored_connection, no backtrace", buf, 0xCu);
      }

      goto LABEL_75;
    }

    if (v37)
    {
      *buf = 136446466;
      v47 = "nw_candidate_manager_create_with_monitored_connection";
      v48 = 2082;
      v49 = backtrace_string;
      _os_log_impl(&dword_181A37000, v20, v36, "%{public}s called with null monitored_connection, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_52;
  }

LABEL_76:
  if (v19)
  {
    free(v19);
  }

  v12 = 0;
LABEL_14:

  return v12;
}

const char *nw_candidate_manager_state_to_string(unsigned int a1)
{
  if (a1 > 4)
  {
    return "unknown-state";
  }

  else
  {
    return off_1E6A2BD88[a1];
  }
}

void nw_candidate_manager_set_state_changed_handler(void *a1, void *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      if (*(v3 + 40) != 4)
      {
        v12 = _Block_copy(v4);
        v13 = v3[21];
        v3[21] = v12;

        goto LABEL_34;
      }

      if (__nwlog_candidate_manager_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_candidate_manager_log::onceToken, &__block_literal_global_24_47429);
      }

      v6 = gcandidate_managerLogObj;
      v7 = v3[1];
      *buf = 136446466;
      v37 = "nw_candidate_manager_set_state_changed_handler";
      v38 = 2048;
      v39 = v7;
      v8 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v34 = 0;
      if (!__nwlog_fault(v8, &type, &v34))
      {
        goto LABEL_32;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        if (__nwlog_candidate_manager_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_candidate_manager_log::onceToken, &__block_literal_global_24_47429);
        }

        v9 = gcandidate_managerLogObj;
        v10 = type;
        if (os_log_type_enabled(v9, type))
        {
          v11 = v3[1];
          *buf = 136446466;
          v37 = "nw_candidate_manager_set_state_changed_handler";
          v38 = 2048;
          v39 = v11;
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s [CM%zu] Cannot set state changed handler after cancel", buf, 0x16u);
        }
      }

      else if (v34 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        if (backtrace_string)
        {
          v15 = backtrace_string;
          if (__nwlog_candidate_manager_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_candidate_manager_log::onceToken, &__block_literal_global_24_47429);
          }

          v16 = gcandidate_managerLogObj;
          v17 = type;
          if (os_log_type_enabled(v16, type))
          {
            v18 = v3[1];
            *buf = 136446722;
            v37 = "nw_candidate_manager_set_state_changed_handler";
            v38 = 2048;
            v39 = v18;
            v40 = 2082;
            v41 = v15;
            _os_log_impl(&dword_181A37000, v16, v17, "%{public}s [CM%zu] Cannot set state changed handler after cancel, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(v15);
          if (v8)
          {
            goto LABEL_33;
          }

          goto LABEL_34;
        }

        if (__nwlog_candidate_manager_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_candidate_manager_log::onceToken, &__block_literal_global_24_47429);
        }

        v9 = gcandidate_managerLogObj;
        v21 = type;
        if (os_log_type_enabled(v9, type))
        {
          v22 = v3[1];
          *buf = 136446466;
          v37 = "nw_candidate_manager_set_state_changed_handler";
          v38 = 2048;
          v39 = v22;
          _os_log_impl(&dword_181A37000, v9, v21, "%{public}s [CM%zu] Cannot set state changed handler after cancel, no backtrace", buf, 0x16u);
        }
      }

      else
      {
        if (__nwlog_candidate_manager_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_candidate_manager_log::onceToken, &__block_literal_global_24_47429);
        }

        v9 = gcandidate_managerLogObj;
        v19 = type;
        if (os_log_type_enabled(v9, type))
        {
          v20 = v3[1];
          *buf = 136446466;
          v37 = "nw_candidate_manager_set_state_changed_handler";
          v38 = 2048;
          v39 = v20;
          _os_log_impl(&dword_181A37000, v9, v19, "%{public}s [CM%zu] Cannot set state changed handler after cancel, backtrace limit exceeded", buf, 0x16u);
        }
      }

      goto LABEL_31;
    }

    v25 = __nwlog_obj();
    *buf = 136446210;
    v37 = "nw_candidate_manager_set_state_changed_handler";
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v34 = 0;
    if (__nwlog_fault(v8, &type, &v34))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v9 = __nwlog_obj();
        v26 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v37 = "nw_candidate_manager_set_state_changed_handler";
          _os_log_impl(&dword_181A37000, v9, v26, "%{public}s called with null handler", buf, 0xCu);
        }

LABEL_31:

        goto LABEL_32;
      }

      if (v34 != 1)
      {
        v9 = __nwlog_obj();
        v33 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v37 = "nw_candidate_manager_set_state_changed_handler";
          _os_log_impl(&dword_181A37000, v9, v33, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_31;
      }

      v27 = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v30 = type;
      v31 = os_log_type_enabled(v9, type);
      if (!v27)
      {
        if (v31)
        {
          *buf = 136446210;
          v37 = "nw_candidate_manager_set_state_changed_handler";
          _os_log_impl(&dword_181A37000, v9, v30, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }

        goto LABEL_31;
      }

      if (v31)
      {
        *buf = 136446466;
        v37 = "nw_candidate_manager_set_state_changed_handler";
        v38 = 2082;
        v39 = v27;
        _os_log_impl(&dword_181A37000, v9, v30, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_54:

      free(v27);
      if (!v8)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }
  }

  else
  {
    v23 = __nwlog_obj();
    *buf = 136446210;
    v37 = "nw_candidate_manager_set_state_changed_handler";
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v34 = 0;
    if (__nwlog_fault(v8, &type, &v34))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v9 = __nwlog_obj();
        v24 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v37 = "nw_candidate_manager_set_state_changed_handler";
          _os_log_impl(&dword_181A37000, v9, v24, "%{public}s called with null candidate_manager", buf, 0xCu);
        }

        goto LABEL_31;
      }

      if (v34 != 1)
      {
        v9 = __nwlog_obj();
        v32 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v37 = "nw_candidate_manager_set_state_changed_handler";
          _os_log_impl(&dword_181A37000, v9, v32, "%{public}s called with null candidate_manager, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_31;
      }

      v27 = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v28 = type;
      v29 = os_log_type_enabled(v9, type);
      if (!v27)
      {
        if (v29)
        {
          *buf = 136446210;
          v37 = "nw_candidate_manager_set_state_changed_handler";
          _os_log_impl(&dword_181A37000, v9, v28, "%{public}s called with null candidate_manager, no backtrace", buf, 0xCu);
        }

        goto LABEL_31;
      }

      if (v29)
      {
        *buf = 136446466;
        v37 = "nw_candidate_manager_set_state_changed_handler";
        v38 = 2082;
        v39 = v27;
        _os_log_impl(&dword_181A37000, v9, v28, "%{public}s called with null candidate_manager, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_54;
    }
  }

LABEL_32:
  if (v8)
  {
LABEL_33:
    free(v8);
  }

LABEL_34:
}

void nw_candidate_manager_set_add_block(void *a1, const void *a2)
{
  v3 = a1;
  v4 = _Block_copy(a2);
  v5 = v3[14];
  v3[14] = v4;
}

void nw_candidate_manager_set_remove_block(void *a1, const void *a2)
{
  v3 = a1;
  v4 = _Block_copy(a2);
  v5 = v3[15];
  v3[15] = v4;
}

void nw_candidate_manager_set_modify_ids_parameters_block(void *a1, const void *a2)
{
  v3 = a1;
  v4 = _Block_copy(a2);
  v5 = v3[16];
  v3[16] = v4;
}

void nw_candidate_manager_set_new_connection_handler(void *a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v27 = "nw_candidate_manager_set_new_connection_handler";
    v11 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (!__nwlog_fault(v11, &type, &v24))
    {
      goto LABEL_44;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v27 = "nw_candidate_manager_set_new_connection_handler";
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null candidate_manager", buf, 0xCu);
      }
    }

    else if (v24 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v17 = type;
      v18 = os_log_type_enabled(v12, type);
      if (backtrace_string)
      {
        if (v18)
        {
          *buf = 136446466;
          v27 = "nw_candidate_manager_set_new_connection_handler";
          v28 = 2082;
          v29 = backtrace_string;
          _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null candidate_manager, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_44:
        if (!v11)
        {
          goto LABEL_10;
        }

LABEL_45:
        free(v11);
        goto LABEL_10;
      }

      if (v18)
      {
        *buf = 136446210;
        v27 = "nw_candidate_manager_set_new_connection_handler";
        _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null candidate_manager, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v12 = __nwlog_obj();
      v22 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v27 = "nw_candidate_manager_set_new_connection_handler";
        _os_log_impl(&dword_181A37000, v12, v22, "%{public}s called with null candidate_manager, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_43:

    goto LABEL_44;
  }

  if (v4)
  {
    if (*(v3 + 40) == 4)
    {
      if (__nwlog_candidate_manager_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_candidate_manager_log::onceToken, &__block_literal_global_24_47429);
      }

      v6 = gcandidate_managerLogObj;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = v3[1];
        *buf = 136446466;
        v27 = "nw_candidate_manager_set_new_connection_handler";
        v28 = 2048;
        v29 = v7;
        _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_ERROR, "%{public}s [CM%zu] Cannot set new connection handler after cancel", buf, 0x16u);
      }
    }

    else
    {
      v8 = _Block_copy(v4);
      v9 = v3[22];
      v3[22] = v8;
    }

    goto LABEL_10;
  }

  v14 = __nwlog_obj();
  *buf = 136446210;
  v27 = "nw_candidate_manager_set_new_connection_handler";
  v11 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v24 = 0;
  if (!__nwlog_fault(v11, &type, &v24))
  {
    goto LABEL_44;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v12 = __nwlog_obj();
    v15 = type;
    if (os_log_type_enabled(v12, type))
    {
      *buf = 136446210;
      v27 = "nw_candidate_manager_set_new_connection_handler";
      _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null handler", buf, 0xCu);
    }

    goto LABEL_43;
  }

  if (v24 != 1)
  {
    v12 = __nwlog_obj();
    v23 = type;
    if (os_log_type_enabled(v12, type))
    {
      *buf = 136446210;
      v27 = "nw_candidate_manager_set_new_connection_handler";
      _os_log_impl(&dword_181A37000, v12, v23, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_43;
  }

  v19 = __nw_create_backtrace_string();
  v12 = __nwlog_obj();
  v20 = type;
  v21 = os_log_type_enabled(v12, type);
  if (!v19)
  {
    if (v21)
    {
      *buf = 136446210;
      v27 = "nw_candidate_manager_set_new_connection_handler";
      _os_log_impl(&dword_181A37000, v12, v20, "%{public}s called with null handler, no backtrace", buf, 0xCu);
    }

    goto LABEL_43;
  }

  if (v21)
  {
    *buf = 136446466;
    v27 = "nw_candidate_manager_set_new_connection_handler";
    v28 = 2082;
    v29 = v19;
    _os_log_impl(&dword_181A37000, v12, v20, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v19);
  if (v11)
  {
    goto LABEL_45;
  }

LABEL_10:
}

BOOL nw_candidate_manager_start_client(void *a1, int a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_candidate_manager_start_client";
    v11 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (__nwlog_fault(v11, &type, &v18))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v12 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v21 = "nw_candidate_manager_start_client";
          _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null candidate_manager", buf, 0xCu);
        }
      }

      else if (v18 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v12 = __nwlog_obj();
        v15 = type;
        v16 = os_log_type_enabled(v12, type);
        if (backtrace_string)
        {
          if (v16)
          {
            *buf = 136446466;
            v21 = "nw_candidate_manager_start_client";
            v22 = 2082;
            v23 = backtrace_string;
            _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null candidate_manager, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_32;
        }

        if (v16)
        {
          *buf = 136446210;
          v21 = "nw_candidate_manager_start_client";
          _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null candidate_manager, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v12 = __nwlog_obj();
        v17 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v21 = "nw_candidate_manager_start_client";
          _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null candidate_manager, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_32:
    if (v11)
    {
      free(v11);
    }

    goto LABEL_10;
  }

  if (v3[7] || v3[9] || v3[6])
  {
    if (__nwlog_candidate_manager_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_candidate_manager_log::onceToken, &__block_literal_global_24_47429);
    }

    v5 = gcandidate_managerLogObj;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = v4[1];
      *buf = 136446466;
      v21 = "nw_candidate_manager_start_client";
      v22 = 2048;
      v23 = v6;
      _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_ERROR, "%{public}s [CM%zu] Cannot start an already started candidate_manager", buf, 0x16u);
    }

LABEL_10:
    v7 = 0;
    goto LABEL_11;
  }

  if (a2)
  {
    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  *(v3 + 192) = v3[24] & 0xFD | v9;
  nw_candidate_manager_start_bonjour_service_resolve(v3);
  v7 = v4[6] != 0;
LABEL_11:

  return v7;
}

void nw_candidate_manager_start_bonjour_service_resolve(void *a1)
{
  v43 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v17 = __nwlog_obj();
    *buf = 136446210;
    v36 = "nw_candidate_manager_start_bonjour_service_resolve";
    v18 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v33 = 0;
    if (!__nwlog_fault(v18, &type, &v33))
    {
      goto LABEL_51;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v19 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        v36 = "nw_candidate_manager_start_bonjour_service_resolve";
        _os_log_impl(&dword_181A37000, v19, v20, "%{public}s called with null manager", buf, 0xCu);
      }
    }

    else if (v33 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v19 = __nwlog_obj();
      v24 = type;
      v25 = os_log_type_enabled(v19, type);
      if (backtrace_string)
      {
        if (v25)
        {
          *buf = 136446466;
          v36 = "nw_candidate_manager_start_bonjour_service_resolve";
          v37 = 2082;
          v38 = backtrace_string;
          _os_log_impl(&dword_181A37000, v19, v24, "%{public}s called with null manager, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_51:
        if (!v18)
        {
          goto LABEL_17;
        }

LABEL_52:
        free(v18);
        goto LABEL_17;
      }

      if (v25)
      {
        *buf = 136446210;
        v36 = "nw_candidate_manager_start_bonjour_service_resolve";
        _os_log_impl(&dword_181A37000, v19, v24, "%{public}s called with null manager, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v19 = __nwlog_obj();
      v29 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        v36 = "nw_candidate_manager_start_bonjour_service_resolve";
        _os_log_impl(&dword_181A37000, v19, v29, "%{public}s called with null manager, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_50:

    goto LABEL_51;
  }

  if (v1[5])
  {
    if (v1[6])
    {
      if (__nwlog_candidate_manager_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_candidate_manager_log::onceToken, &__block_literal_global_24_47429);
      }

      v3 = gcandidate_managerLogObj;
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = v2[1];
        *buf = 136446466;
        v36 = "nw_candidate_manager_start_bonjour_service_resolve";
        v37 = 2048;
        v38 = v4;
        _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_INFO, "%{public}s [CM%zu] service resolver already running", buf, 0x16u);
      }
    }

    else
    {
      v5 = _nw_parameters_copy(v1[10]);
      nw_parameters_set_include_peer_to_peer(v5, 0);
      evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint(v2[5], v5);
      v7 = evaluator_for_endpoint;
      if (evaluator_for_endpoint)
      {
        v8 = evaluator_for_endpoint;
        os_unfair_lock_lock(v7 + 24);
        v9 = v8[6];
        os_unfair_lock_unlock(v7 + 24);
      }

      else
      {
        v9 = 0;
      }

      v10 = nw_resolver_create_with_path(v9);
      v11 = v2[6];
      v2[6] = v10;

      if (__nwlog_candidate_manager_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_candidate_manager_log::onceToken, &__block_literal_global_24_47429);
      }

      v12 = gcandidate_managerLogObj;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v2[1];
        v15 = v2[5];
        v14 = v2[6];
        *buf = 136446978;
        v36 = "nw_candidate_manager_start_bonjour_service_resolve";
        v37 = 2048;
        v38 = v13;
        v39 = 2112;
        v40 = v14;
        v41 = 2112;
        v42 = v15;
        _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEFAULT, "%{public}s [CM%zu] Created service resolver %@ for %@", buf, 0x2Au);
      }

      v16 = v2[6];
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __nw_candidate_manager_start_bonjour_service_resolve_block_invoke;
      v31[3] = &unk_1E6A2BC88;
      v32 = v2;
      nw_resolver_set_update_handler(v16, 0, v31);
    }

    goto LABEL_17;
  }

  v21 = __nwlog_obj();
  *buf = 136446210;
  v36 = "nw_candidate_manager_start_bonjour_service_resolve";
  v18 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v33 = 0;
  if (!__nwlog_fault(v18, &type, &v33))
  {
    goto LABEL_51;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v19 = __nwlog_obj();
    v22 = type;
    if (os_log_type_enabled(v19, type))
    {
      *buf = 136446210;
      v36 = "nw_candidate_manager_start_bonjour_service_resolve";
      _os_log_impl(&dword_181A37000, v19, v22, "%{public}s called with null manager->service", buf, 0xCu);
    }

    goto LABEL_50;
  }

  if (v33 != 1)
  {
    v19 = __nwlog_obj();
    v30 = type;
    if (os_log_type_enabled(v19, type))
    {
      *buf = 136446210;
      v36 = "nw_candidate_manager_start_bonjour_service_resolve";
      _os_log_impl(&dword_181A37000, v19, v30, "%{public}s called with null manager->service, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_50;
  }

  v26 = __nw_create_backtrace_string();
  v19 = __nwlog_obj();
  v27 = type;
  v28 = os_log_type_enabled(v19, type);
  if (!v26)
  {
    if (v28)
    {
      *buf = 136446210;
      v36 = "nw_candidate_manager_start_bonjour_service_resolve";
      _os_log_impl(&dword_181A37000, v19, v27, "%{public}s called with null manager->service, no backtrace", buf, 0xCu);
    }

    goto LABEL_50;
  }

  if (v28)
  {
    *buf = 136446466;
    v36 = "nw_candidate_manager_start_bonjour_service_resolve";
    v37 = 2082;
    v38 = v26;
    _os_log_impl(&dword_181A37000, v19, v27, "%{public}s called with null manager->service, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v26);
  if (v18)
  {
    goto LABEL_52;
  }

LABEL_17:
}

void __nw_candidate_manager_start_bonjour_service_resolve_block_invoke(uint64_t a1, int a2, void *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (__nwlog_candidate_manager_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_candidate_manager_log::onceToken, &__block_literal_global_24_47429);
  }

  v6 = gcandidate_managerLogObj;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = *(v7 + 8);
    v9 = *(v7 + 40);
    v10 = "invalid";
    v31 = "nw_candidate_manager_start_bonjour_service_resolve_block_invoke";
    if (a2 == 2)
    {
      v10 = "complete";
    }

    v32 = 2048;
    *buf = 136447234;
    if (a2 == 1)
    {
      v10 = "in-progress";
    }

    v33 = v8;
    v34 = 2112;
    v35 = v9;
    v36 = 2082;
    v37 = v10;
    v38 = 2112;
    v39 = v5;
    _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s [CM%zu] %@ %{public}s resolves to %@", buf, 0x34u);
  }

  v11 = *(a1 + 32);
  v12 = v5;
  v13 = v11[11];
  if (!v13)
  {
    v17 = [MEMORY[0x1E695DF90] dictionary];
    v18 = v11[11];
    v11[11] = v17;

    v16 = 0;
    if (!v12)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v14 = MEMORY[0x1E695DF70];
  v15 = [v13 allKeys];
  v16 = [v14 arrayWithArray:v15];

  if (v11[8] && [v16 containsObject:?])
  {
    [v16 removeObject:v11[8]];
  }

  if (v12)
  {
LABEL_16:
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = ___ZL54nw_candidate_manager_handle_service_resolved_endpointsP31NWConcrete_nw_candidate_managerPU22objcproto11OS_nw_array8NSObject_block_invoke;
    aBlock[3] = &unk_1E6A35E80;
    v28 = v16;
    v29 = v11;
    _nw_array_apply(v12, aBlock);
  }

LABEL_17:
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v19 = v16;
  v20 = [v19 countByEnumeratingWithState:&v23 objects:buf count:16];
  if (v20)
  {
    v21 = *v24;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v24 != v21)
        {
          objc_enumerationMutation(v19);
        }

        nw_candidate_manager_remove_hostname_resolver(v11, *(*(&v23 + 1) + 8 * i));
      }

      v20 = [v19 countByEnumeratingWithState:&v23 objects:buf count:16];
    }

    while (v20);
  }
}

uint64_t ___ZL54nw_candidate_manager_handle_service_resolved_endpointsP31NWConcrete_nw_candidate_managerPU22objcproto11OS_nw_array8NSObject_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([*(a1 + 32) containsObject:v4])
  {
    [*(a1 + 32) removeObject:v4];
  }

  else
  {
    v5 = nw_candidate_manager_resolver_for_service_resolved_endpoint(*(a1 + 40), v4);
    [*(*(a1 + 40) + 88) setObject:v5 forKeyedSubscript:v4];
  }

  return 1;
}

uint64_t nw_candidate_manager_start_advertise(void *a1, int a2)
{
  v71 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v27 = __nwlog_obj();
    *buf = 136446210;
    v65 = "nw_candidate_manager_start_advertise";
    v28 = _os_log_send_and_compose_impl();

    __str[0] = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v28, __str, &type))
    {
      if (__str[0] == 17)
      {
        v29 = __nwlog_obj();
        v30 = __str[0];
        if (os_log_type_enabled(v29, __str[0]))
        {
          *buf = 136446210;
          v65 = "nw_candidate_manager_start_advertise";
          _os_log_impl(&dword_181A37000, v29, v30, "%{public}s called with null candidate_manager", buf, 0xCu);
        }
      }

      else if (type == OS_LOG_TYPE_INFO)
      {
        backtrace_string = __nw_create_backtrace_string();
        v29 = __nwlog_obj();
        v32 = __str[0];
        v33 = os_log_type_enabled(v29, __str[0]);
        if (backtrace_string)
        {
          if (v33)
          {
            *buf = 136446466;
            v65 = "nw_candidate_manager_start_advertise";
            v66 = 2082;
            v67 = backtrace_string;
            _os_log_impl(&dword_181A37000, v29, v32, "%{public}s called with null candidate_manager, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_45;
        }

        if (v33)
        {
          *buf = 136446210;
          v65 = "nw_candidate_manager_start_advertise";
          _os_log_impl(&dword_181A37000, v29, v32, "%{public}s called with null candidate_manager, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v29 = __nwlog_obj();
        v34 = __str[0];
        if (os_log_type_enabled(v29, __str[0]))
        {
          *buf = 136446210;
          v65 = "nw_candidate_manager_start_advertise";
          _os_log_impl(&dword_181A37000, v29, v34, "%{public}s called with null candidate_manager, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_45:
    if (v28)
    {
      free(v28);
    }

    goto LABEL_15;
  }

  if (!v3[22])
  {
    if (__nwlog_candidate_manager_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_candidate_manager_log::onceToken, &__block_literal_global_24_47429);
    }

    v5 = gcandidate_managerLogObj;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = v4[1];
      *buf = 136446466;
      v65 = "nw_candidate_manager_start_advertise";
      v66 = 2048;
      v67 = v7;
      _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_ERROR, "%{public}s [CM%zu] Cannot advertise without a new connection handler", buf, 0x16u);
    }

    goto LABEL_14;
  }

  if (v3[6] || v3[9])
  {
    if (__nwlog_candidate_manager_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_candidate_manager_log::onceToken, &__block_literal_global_24_47429);
    }

    v5 = gcandidate_managerLogObj;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = v4[1];
      *buf = 136446466;
      v65 = "nw_candidate_manager_start_advertise";
      v66 = 2048;
      v67 = v6;
      _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_ERROR, "%{public}s [CM%zu] Cannot start an already started candidate_manager", buf, 0x16u);
    }

LABEL_14:

LABEL_15:
    v8 = 0;
    goto LABEL_16;
  }

  snprintf(__str, 0x10uLL, "%d", a2);
  v10 = nw_listener_create_with_port(__str, v4[10]);
  bonjour_service_name = nw_endpoint_get_bonjour_service_name(v4[5]);
  bonjour_service_type = nw_endpoint_get_bonjour_service_type(v4[5]);
  bonjour_service_domain = nw_endpoint_get_bonjour_service_domain(v4[5]);
  bonjour_service = nw_advertise_descriptor_create_bonjour_service(bonjour_service_name, bonjour_service_type, bonjour_service_domain);
  nw_listener_set_advertise_descriptor(v10, bonjour_service);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __nw_candidate_manager_start_advertise_block_invoke;
  handler[3] = &unk_1E6A2CC48;
  v15 = v4;
  v61 = v15;
  nw_listener_set_new_connection_handler(v10, handler);
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = __nw_candidate_manager_start_advertise_block_invoke_143;
  v57[3] = &unk_1E6A3D958;
  v16 = v10;
  v58 = v16;
  v17 = v15;
  v59 = v17;
  nw_listener_set_state_changed_handler(v16, v57);
  objc_storeStrong(v4 + 9, v10);
  v18 = v17;
  v19 = v4[10];
  v20 = v19;
  if (!v19)
  {
    v35 = __nwlog_obj();
    *buf = 136446210;
    v65 = "nw_candidate_manager_copy_workloop";
    v36 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v62 = 0;
    if (__nwlog_fault(v36, &type, &v62))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v37 = __nwlog_obj();
        v38 = type;
        if (os_log_type_enabled(v37, type))
        {
          *buf = 136446210;
          v65 = "nw_candidate_manager_copy_workloop";
          _os_log_impl(&dword_181A37000, v37, v38, "%{public}s called with null parameters", buf, 0xCu);
        }
      }

      else if (v62 == 1)
      {
        v45 = __nw_create_backtrace_string();
        v37 = __nwlog_obj();
        v46 = type;
        v47 = os_log_type_enabled(v37, type);
        if (v45)
        {
          if (v47)
          {
            *buf = 136446466;
            v65 = "nw_candidate_manager_copy_workloop";
            v66 = 2082;
            v67 = v45;
            _os_log_impl(&dword_181A37000, v37, v46, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v45);
          goto LABEL_90;
        }

        if (v47)
        {
          *buf = 136446210;
          v65 = "nw_candidate_manager_copy_workloop";
          _os_log_impl(&dword_181A37000, v37, v46, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v37 = __nwlog_obj();
        v52 = type;
        if (os_log_type_enabled(v37, type))
        {
          *buf = 136446210;
          v65 = "nw_candidate_manager_copy_workloop";
          _os_log_impl(&dword_181A37000, v37, v52, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_90:
    if (v36)
    {
      free(v36);
    }

    v23 = 0;
    goto LABEL_24;
  }

  v21 = _nw_parameters_copy_context(v19);
  v22 = v21;
  if (!v21)
  {
    v39 = __nwlog_obj();
    *buf = 136446210;
    v65 = "nw_candidate_manager_copy_workloop";
    v40 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v62 = 0;
    if (!__nwlog_fault(v40, &type, &v62))
    {
      goto LABEL_99;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v41 = __nwlog_obj();
      v42 = type;
      if (os_log_type_enabled(v41, type))
      {
        *buf = 136446210;
        v65 = "nw_candidate_manager_copy_workloop";
        _os_log_impl(&dword_181A37000, v41, v42, "%{public}s called with null context", buf, 0xCu);
      }
    }

    else if (v62 == 1)
    {
      v48 = __nw_create_backtrace_string();
      v41 = __nwlog_obj();
      v55 = type;
      v49 = os_log_type_enabled(v41, type);
      if (v48)
      {
        if (v49)
        {
          *buf = 136446466;
          v65 = "nw_candidate_manager_copy_workloop";
          v66 = 2082;
          v67 = v48;
          _os_log_impl(&dword_181A37000, v41, v55, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v48);
        if (!v40)
        {
          goto LABEL_101;
        }

        goto LABEL_100;
      }

      if (v49)
      {
        *buf = 136446210;
        v65 = "nw_candidate_manager_copy_workloop";
        _os_log_impl(&dword_181A37000, v41, v55, "%{public}s called with null context, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v41 = __nwlog_obj();
      v53 = type;
      if (os_log_type_enabled(v41, type))
      {
        *buf = 136446210;
        v65 = "nw_candidate_manager_copy_workloop";
        _os_log_impl(&dword_181A37000, v41, v53, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_98;
  }

  v23 = nw_context_copy_workloop(v21);
  if (v23)
  {
    goto LABEL_23;
  }

  if (nw_context_copy_implicit_context::onceToken[0] != -1)
  {
    dispatch_once(nw_context_copy_implicit_context::onceToken, &__block_literal_global_18);
  }

  v24 = nw_context_copy_implicit_context::implicit_context;
  v23 = nw_context_copy_workloop(v24);

  if (v23)
  {
    goto LABEL_23;
  }

  v43 = __nwlog_obj();
  *buf = 136446210;
  v65 = "nw_candidate_manager_copy_workloop";
  v40 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v62 = 0;
  if (__nwlog_fault(v40, &type, &v62))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v41 = __nwlog_obj();
      v44 = type;
      if (os_log_type_enabled(v41, type))
      {
        *buf = 136446210;
        v65 = "nw_candidate_manager_copy_workloop";
        _os_log_impl(&dword_181A37000, v41, v44, "%{public}s called with null workloop", buf, 0xCu);
      }

LABEL_98:

      goto LABEL_99;
    }

    if (v62 != 1)
    {
      v41 = __nwlog_obj();
      v54 = type;
      if (os_log_type_enabled(v41, type))
      {
        *buf = 136446210;
        v65 = "nw_candidate_manager_copy_workloop";
        _os_log_impl(&dword_181A37000, v41, v54, "%{public}s called with null workloop, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_98;
    }

    v50 = __nw_create_backtrace_string();
    v41 = __nwlog_obj();
    v56 = type;
    v51 = os_log_type_enabled(v41, type);
    if (!v50)
    {
      if (v51)
      {
        *buf = 136446210;
        v65 = "nw_candidate_manager_copy_workloop";
        _os_log_impl(&dword_181A37000, v41, v56, "%{public}s called with null workloop, no backtrace", buf, 0xCu);
      }

      goto LABEL_98;
    }

    if (v51)
    {
      *buf = 136446466;
      v65 = "nw_candidate_manager_copy_workloop";
      v66 = 2082;
      v67 = v50;
      _os_log_impl(&dword_181A37000, v41, v56, "%{public}s called with null workloop, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v50);
  }

LABEL_99:
  if (v40)
  {
LABEL_100:
    free(v40);
  }

LABEL_101:
  v23 = 0;
LABEL_23:

LABEL_24:
  nw_listener_set_queue(v16, v23);

  nw_listener_start(v16);
  if (__nwlog_candidate_manager_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_candidate_manager_log::onceToken, &__block_literal_global_24_47429);
  }

  v25 = gcandidate_managerLogObj;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v26 = v18[1];
    *buf = 136446722;
    v65 = "nw_candidate_manager_start_advertise";
    v66 = 2048;
    v67 = v26;
    v68 = 2112;
    v69 = v16;
    _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_INFO, "%{public}s [CM%zu] Created listener %@", buf, 0x20u);
  }

  v8 = 1;
LABEL_16:

  return v8;
}

void __nw_candidate_manager_start_advertise_block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __nw_candidate_manager_start_advertise_block_invoke_2;
  v9[3] = &unk_1E6A3D958;
  v10 = *(a1 + 32);
  v4 = v3;
  v11 = v4;
  nw_connection_set_state_changed_handler(&v4->super, v9);
  if (__nwlog_candidate_manager_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_candidate_manager_log::onceToken, &__block_literal_global_24_47429);
  }

  v5 = gcandidate_managerLogObj;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(*(a1 + 32) + 8);
    *buf = 136446722;
    v13 = "nw_candidate_manager_start_advertise_block_invoke";
    v14 = 2048;
    v15 = v6;
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_INFO, "%{public}s [CM%zu] Received incoming connection %@", buf, 0x20u);
  }

  v7 = *(a1 + 32);
  if (v7->connection)
  {
    new_connection_handler = v7->new_connection_handler;
    if (!new_connection_handler)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  nw_candidate_manager_set_connection(v7, v4);
  new_connection_handler = *(*(a1 + 32) + 176);
  if (new_connection_handler)
  {
LABEL_9:
    new_connection_handler[2](new_connection_handler, v4);
  }

LABEL_10:
}

void __nw_candidate_manager_start_advertise_block_invoke_143(uint64_t a1, int a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (a2 == 2)
  {
    port = nw_listener_get_port(*(a1 + 32));
    if (__nwlog_candidate_manager_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_candidate_manager_log::onceToken, &__block_literal_global_24_47429);
    }

    v8 = gcandidate_managerLogObj;
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_12;
    }

    v9 = *(*(a1 + 40) + 8);
    v14 = 136446722;
    v15 = "nw_candidate_manager_start_advertise_block_invoke";
    v16 = 2048;
    v17 = v9;
    v18 = 1024;
    LODWORD(v19) = port;
    v10 = "%{public}s [CM%zu] Listener entered ready state, using port %d";
    v11 = v8;
    v12 = 28;
LABEL_11:
    _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_INFO, v10, &v14, v12);
LABEL_12:

    goto LABEL_13;
  }

  if (v5)
  {
    if (__nwlog_candidate_manager_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_candidate_manager_log::onceToken, &__block_literal_global_24_47429);
    }

    v8 = gcandidate_managerLogObj;
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_12;
    }

    v13 = *(*(a1 + 40) + 8);
    v14 = 136446722;
    v15 = "nw_candidate_manager_start_advertise_block_invoke";
    v16 = 2048;
    v17 = v13;
    v18 = 2112;
    v19 = v6;
    v10 = "%{public}s [CM%zu] Listener failed with error '%@'";
    v11 = v8;
    v12 = 32;
    goto LABEL_11;
  }

LABEL_13:
}

void __nw_candidate_manager_start_advertise_block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (a2 == 3)
  {
    if (__nwlog_candidate_manager_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_candidate_manager_log::onceToken, &__block_literal_global_24_47429);
    }

    v7 = gcandidate_managerLogObj;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 40);
      v9 = *(*(a1 + 32) + 8);
      v17 = 136446722;
      v18 = "nw_candidate_manager_start_advertise_block_invoke_2";
      v19 = 2048;
      v20 = v9;
      v21 = 2112;
      v22 = v8;
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_INFO, "%{public}s [CM%zu] Incoming connection %@ entered ready state", &v17, 0x20u);
    }

    v10 = *(a1 + 40);
    if (nw_protocol_copy_quic_stream_definition_onceToken != -1)
    {
      dispatch_once(&nw_protocol_copy_quic_stream_definition_onceToken, &__block_literal_global_63);
    }

    v11 = nw_protocol_copy_quic_stream_definition_quic_definition;
    v12 = nw_connection_copy_protocol_metadata(v10, v11);

    if (v12 && _nw_protocol_metadata_is_quic(v12))
    {
      v13 = nw_quic_stream_copy_connection_metadata(v12);
      nw_quic_connection_set_keepalive(v13, 0xAu);
    }

    nw_candidate_manager_set_state(*(a1 + 32), 2);
  }

  else if (v5)
  {
    if (__nwlog_candidate_manager_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_candidate_manager_log::onceToken, &__block_literal_global_24_47429);
    }

    v14 = gcandidate_managerLogObj;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = *(a1 + 40);
      v16 = *(*(a1 + 32) + 8);
      v17 = 136446978;
      v18 = "nw_candidate_manager_start_advertise_block_invoke";
      v19 = 2048;
      v20 = v16;
      v21 = 2112;
      v22 = v15;
      v23 = 2112;
      v24 = v6;
      _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_INFO, "%{public}s [CM%zu] Incoming connection %@ failed with error '%@'", &v17, 0x2Au);
    }

    nw_candidate_manager_cancel(*(a1 + 32));
  }
}

void nw_candidate_manager_set_internet_fallback(void *a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    if (nw_parameters_get_local_only(*(v3 + 10)))
    {
      if (__nwlog_candidate_manager_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_candidate_manager_log::onceToken, &__block_literal_global_24_47429);
      }

      v5 = gcandidate_managerLogObj;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = *(v3 + 1);
        *buf = 136446466;
        v18 = "nw_candidate_manager_set_internet_fallback";
        v19 = 2048;
        v20 = v6;
        _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_ERROR, "%{public}s [CM%zu] Can't set Internet fallback with local only parameters", buf, 0x16u);
      }
    }

    if (v4)
    {
      if (nw_parameters_get_server_mode(*(v3 + 10)))
      {
        nw_candidate_manager_start_ids_internal(v3, v4);
      }

      else
      {
        objc_storeStrong(v3 + 2, a2);
        nw_candidate_manager_monitor_interface_use(v3);
      }
    }

    else
    {
      nw_candidate_manager_stop_ids(v3);
    }

    goto LABEL_13;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  v18 = "nw_candidate_manager_set_internet_fallback";
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
        v18 = "nw_candidate_manager_set_internet_fallback";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null candidate_manager", buf, 0xCu);
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
          v18 = "nw_candidate_manager_set_internet_fallback";
          v19 = 2082;
          v20 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null candidate_manager, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_30;
      }

      if (v13)
      {
        *buf = 136446210;
        v18 = "nw_candidate_manager_set_internet_fallback";
        _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null candidate_manager, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v18 = "nw_candidate_manager_set_internet_fallback";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null candidate_manager, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_30:
  if (v8)
  {
    free(v8);
  }

LABEL_13:
}

void nw_candidate_manager_set_original_path(void *a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_candidate_manager_set_original_path";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v9, &type, &v22))
    {
      goto LABEL_42;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v25 = "nw_candidate_manager_set_original_path";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null candidate_manager", buf, 0xCu);
      }
    }

    else if (v22 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v15 = type;
      v16 = os_log_type_enabled(v10, type);
      if (backtrace_string)
      {
        if (v16)
        {
          *buf = 136446466;
          v25 = "nw_candidate_manager_set_original_path";
          v26 = 2082;
          v27 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null candidate_manager, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_42:
        if (!v9)
        {
          goto LABEL_8;
        }

LABEL_43:
        free(v9);
        goto LABEL_8;
      }

      if (v16)
      {
        *buf = 136446210;
        v25 = "nw_candidate_manager_set_original_path";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null candidate_manager, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v25 = "nw_candidate_manager_set_original_path";
        _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null candidate_manager, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_41:

    goto LABEL_42;
  }

  if (v4)
  {
    if (__nwlog_candidate_manager_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_candidate_manager_log::onceToken, &__block_literal_global_24_47429);
    }

    v6 = gcandidate_managerLogObj;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(v3 + 1);
      *buf = 136446722;
      v25 = "nw_candidate_manager_set_original_path";
      v26 = 2048;
      v27 = v7;
      v28 = 2112;
      v29 = v5;
      _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_INFO, "%{public}s [CM%zu] Setting original remote endpoint %@", buf, 0x20u);
    }

    objc_storeStrong(v3 + 13, a2);
    goto LABEL_8;
  }

  v12 = __nwlog_obj();
  *buf = 136446210;
  v25 = "nw_candidate_manager_set_original_path";
  v9 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v22 = 0;
  if (!__nwlog_fault(v9, &type, &v22))
  {
    goto LABEL_42;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v10 = __nwlog_obj();
    v13 = type;
    if (os_log_type_enabled(v10, type))
    {
      *buf = 136446210;
      v25 = "nw_candidate_manager_set_original_path";
      _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null original_remote_endpoint", buf, 0xCu);
    }

    goto LABEL_41;
  }

  if (v22 != 1)
  {
    v10 = __nwlog_obj();
    v21 = type;
    if (os_log_type_enabled(v10, type))
    {
      *buf = 136446210;
      v25 = "nw_candidate_manager_set_original_path";
      _os_log_impl(&dword_181A37000, v10, v21, "%{public}s called with null original_remote_endpoint, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_41;
  }

  v17 = __nw_create_backtrace_string();
  v10 = __nwlog_obj();
  v18 = type;
  v19 = os_log_type_enabled(v10, type);
  if (!v17)
  {
    if (v19)
    {
      *buf = 136446210;
      v25 = "nw_candidate_manager_set_original_path";
      _os_log_impl(&dword_181A37000, v10, v18, "%{public}s called with null original_remote_endpoint, no backtrace", buf, 0xCu);
    }

    goto LABEL_41;
  }

  if (v19)
  {
    *buf = 136446466;
    v25 = "nw_candidate_manager_set_original_path";
    v26 = 2082;
    v27 = v17;
    _os_log_impl(&dword_181A37000, v10, v18, "%{public}s called with null original_remote_endpoint, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v17);
  if (v9)
  {
    goto LABEL_43;
  }

LABEL_8:
}

void nw_candidate_manager_remove_injected_paths(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    if (__nwlog_candidate_manager_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_candidate_manager_log::onceToken, &__block_literal_global_24_47429);
    }

    v2 = gcandidate_managerLogObj;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      log_id = v1->log_id;
      *buf = 136446466;
      v15 = "nw_candidate_manager_remove_injected_paths";
      v16 = 2048;
      v17 = log_id;
      _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_INFO, "%{public}s [CM%zu] Removing injected paths", buf, 0x16u);
    }

    nw_candidate_manager_stop_ids(v1);
    nw_connection_remove_all_interface_options(v1->connection);
    goto LABEL_7;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_candidate_manager_remove_injected_paths";
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
        v15 = "nw_candidate_manager_remove_injected_paths";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null candidate_manager", buf, 0xCu);
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
          v15 = "nw_candidate_manager_remove_injected_paths";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null candidate_manager, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_24;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_candidate_manager_remove_injected_paths";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null candidate_manager, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_candidate_manager_remove_injected_paths";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null candidate_manager, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_24:
  if (v5)
  {
    free(v5);
  }

LABEL_7:
}

void *nw_candidate_manager_encode_ids_path(void *a1, void *a2, void *a3, void *a4)
{
  v38 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (v7)
  {
    v11 = v7;
    v12 = _nw_path_copy_effective_remote_endpoint(v11);

    if (v12)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v35 = "nw_candidate_manager_encode_ids_path";
        _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_ERROR, "%{public}s Not supported", buf, 0xCu);
      }

      v14 = v12;
LABEL_6:

      goto LABEL_7;
    }

    v20 = __nwlog_obj();
    *buf = 136446210;
    v35 = "nw_candidate_manager_encode_ids_path";
    v21 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (__nwlog_fault(v21, &type, &v32))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v22 = __nwlog_obj();
        v23 = type;
        if (os_log_type_enabled(v22, type))
        {
          *buf = 136446210;
          v35 = "nw_candidate_manager_encode_ids_path";
          _os_log_impl(&dword_181A37000, v22, v23, "%{public}s called with null endpoint", buf, 0xCu);
        }
      }

      else if (v32 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v22 = __nwlog_obj();
        v28 = type;
        v29 = os_log_type_enabled(v22, type);
        if (backtrace_string)
        {
          if (v29)
          {
            *buf = 136446466;
            v35 = "nw_candidate_manager_encode_ids_path";
            v36 = 2082;
            v37 = backtrace_string;
            _os_log_impl(&dword_181A37000, v22, v28, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_43;
        }

        if (v29)
        {
          *buf = 136446210;
          v35 = "nw_candidate_manager_encode_ids_path";
          _os_log_impl(&dword_181A37000, v22, v28, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v22 = __nwlog_obj();
        v31 = type;
        if (os_log_type_enabled(v22, type))
        {
          *buf = 136446210;
          v35 = "nw_candidate_manager_encode_ids_path";
          _os_log_impl(&dword_181A37000, v22, v31, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_43:
    if (v21)
    {
      free(v21);
    }

    goto LABEL_6;
  }

  v16 = __nwlog_obj();
  *buf = 136446210;
  v35 = "nw_candidate_manager_encode_ids_path";
  v17 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v32 = 0;
  if (__nwlog_fault(v17, &type, &v32))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v18, type))
      {
        *buf = 136446210;
        v35 = "nw_candidate_manager_encode_ids_path";
        _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null path", buf, 0xCu);
      }
    }

    else if (v32 == 1)
    {
      v24 = __nw_create_backtrace_string();
      v18 = __nwlog_obj();
      v25 = type;
      v26 = os_log_type_enabled(v18, type);
      if (v24)
      {
        if (v26)
        {
          *buf = 136446466;
          v35 = "nw_candidate_manager_encode_ids_path";
          v36 = 2082;
          v37 = v24;
          _os_log_impl(&dword_181A37000, v18, v25, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v24);
        goto LABEL_37;
      }

      if (v26)
      {
        *buf = 136446210;
        v35 = "nw_candidate_manager_encode_ids_path";
        _os_log_impl(&dword_181A37000, v18, v25, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v18 = __nwlog_obj();
      v30 = type;
      if (os_log_type_enabled(v18, type))
      {
        *buf = 136446210;
        v35 = "nw_candidate_manager_encode_ids_path";
        _os_log_impl(&dword_181A37000, v18, v30, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_37:
  if (v17)
  {
    free(v17);
  }

  v12 = 0;
LABEL_7:

  return v12;
}

uint64_t nw_candidate_endpoint_for_ids_connection(void *a1, void *a2, void *a3, void *a4, unsigned int a5, void *a6)
{
  __str[4] = *MEMORY[0x1E69E9840];
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v177 = a4;
  v175 = v11;
  v176 = a6;
  v173 = v13;
  v174 = v12;
  if (!v11)
  {
    v113 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_candidate_endpoint_for_ids_connection";
    v114 = _os_log_send_and_compose_impl();

    type[0] = 16;
    LOBYTE(__str[0]) = 0;
    if (!__nwlog_fault(v114, type, __str))
    {
      goto LABEL_314;
    }

    if (type[0] == 17)
    {
      v115 = __nwlog_obj();
      v116 = type[0];
      if (os_log_type_enabled(v115, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_candidate_endpoint_for_ids_connection";
        _os_log_impl(&dword_181A37000, v115, v116, "%{public}s called with null connection", buf, 0xCu);
      }

      goto LABEL_313;
    }

    if (LOBYTE(__str[0]) != 1)
    {
      v115 = __nwlog_obj();
      v161 = type[0];
      if (os_log_type_enabled(v115, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_candidate_endpoint_for_ids_connection";
        _os_log_impl(&dword_181A37000, v115, v161, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_313;
    }

    backtrace_string = __nw_create_backtrace_string();
    v115 = __nwlog_obj();
    v138 = type[0];
    v139 = os_log_type_enabled(v115, type[0]);
    if (!backtrace_string)
    {
      if (v139)
      {
        *buf = 136446210;
        *&buf[4] = "nw_candidate_endpoint_for_ids_connection";
        _os_log_impl(&dword_181A37000, v115, v138, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }

      goto LABEL_313;
    }

    if (v139)
    {
      *buf = 136446466;
      *&buf[4] = "nw_candidate_endpoint_for_ids_connection";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v115, v138, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_244;
  }

  if (!v12)
  {
    v117 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_candidate_endpoint_for_ids_connection";
    v114 = _os_log_send_and_compose_impl();

    type[0] = 16;
    LOBYTE(__str[0]) = 0;
    if (!__nwlog_fault(v114, type, __str))
    {
      goto LABEL_314;
    }

    if (type[0] == 17)
    {
      v115 = __nwlog_obj();
      v118 = type[0];
      if (os_log_type_enabled(v115, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_candidate_endpoint_for_ids_connection";
        _os_log_impl(&dword_181A37000, v115, v118, "%{public}s called with null client_parameters", buf, 0xCu);
      }

      goto LABEL_313;
    }

    if (LOBYTE(__str[0]) != 1)
    {
      v115 = __nwlog_obj();
      v162 = type[0];
      if (os_log_type_enabled(v115, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_candidate_endpoint_for_ids_connection";
        _os_log_impl(&dword_181A37000, v115, v162, "%{public}s called with null client_parameters, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_313;
    }

    backtrace_string = __nw_create_backtrace_string();
    v115 = __nwlog_obj();
    v140 = type[0];
    v141 = os_log_type_enabled(v115, type[0]);
    if (!backtrace_string)
    {
      if (v141)
      {
        *buf = 136446210;
        *&buf[4] = "nw_candidate_endpoint_for_ids_connection";
        _os_log_impl(&dword_181A37000, v115, v140, "%{public}s called with null client_parameters, no backtrace", buf, 0xCu);
      }

      goto LABEL_313;
    }

    if (v141)
    {
      *buf = 136446466;
      *&buf[4] = "nw_candidate_endpoint_for_ids_connection";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v115, v140, "%{public}s called with null client_parameters, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_244;
  }

  if (!v13)
  {
    v119 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_candidate_endpoint_for_ids_connection";
    v114 = _os_log_send_and_compose_impl();

    type[0] = 16;
    LOBYTE(__str[0]) = 0;
    if (!__nwlog_fault(v114, type, __str))
    {
      goto LABEL_314;
    }

    if (type[0] == 17)
    {
      v115 = __nwlog_obj();
      v120 = type[0];
      if (os_log_type_enabled(v115, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_candidate_endpoint_for_ids_connection";
        _os_log_impl(&dword_181A37000, v115, v120, "%{public}s called with null lcid", buf, 0xCu);
      }

      goto LABEL_313;
    }

    if (LOBYTE(__str[0]) != 1)
    {
      v115 = __nwlog_obj();
      v163 = type[0];
      if (os_log_type_enabled(v115, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_candidate_endpoint_for_ids_connection";
        _os_log_impl(&dword_181A37000, v115, v163, "%{public}s called with null lcid, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_313;
    }

    backtrace_string = __nw_create_backtrace_string();
    v115 = __nwlog_obj();
    v142 = type[0];
    v143 = os_log_type_enabled(v115, type[0]);
    if (!backtrace_string)
    {
      if (v143)
      {
        *buf = 136446210;
        *&buf[4] = "nw_candidate_endpoint_for_ids_connection";
        _os_log_impl(&dword_181A37000, v115, v142, "%{public}s called with null lcid, no backtrace", buf, 0xCu);
      }

      goto LABEL_313;
    }

    if (v143)
    {
      *buf = 136446466;
      *&buf[4] = "nw_candidate_endpoint_for_ids_connection";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v115, v142, "%{public}s called with null lcid, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_244;
  }

  if (!v177)
  {
    v121 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_candidate_endpoint_for_ids_connection";
    v114 = _os_log_send_and_compose_impl();

    type[0] = 16;
    LOBYTE(__str[0]) = 0;
    if (!__nwlog_fault(v114, type, __str))
    {
      goto LABEL_314;
    }

    if (type[0] == 17)
    {
      v115 = __nwlog_obj();
      v122 = type[0];
      if (os_log_type_enabled(v115, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_candidate_endpoint_for_ids_connection";
        _os_log_impl(&dword_181A37000, v115, v122, "%{public}s called with null rcid", buf, 0xCu);
      }

      goto LABEL_313;
    }

    if (LOBYTE(__str[0]) != 1)
    {
      v115 = __nwlog_obj();
      v164 = type[0];
      if (os_log_type_enabled(v115, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_candidate_endpoint_for_ids_connection";
        _os_log_impl(&dword_181A37000, v115, v164, "%{public}s called with null rcid, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_313;
    }

    backtrace_string = __nw_create_backtrace_string();
    v115 = __nwlog_obj();
    v144 = type[0];
    v145 = os_log_type_enabled(v115, type[0]);
    if (!backtrace_string)
    {
      if (v145)
      {
        *buf = 136446210;
        *&buf[4] = "nw_candidate_endpoint_for_ids_connection";
        _os_log_impl(&dword_181A37000, v115, v144, "%{public}s called with null rcid, no backtrace", buf, 0xCu);
      }

      goto LABEL_313;
    }

    if (v145)
    {
      *buf = 136446466;
      *&buf[4] = "nw_candidate_endpoint_for_ids_connection";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v115, v144, "%{public}s called with null rcid, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_244:

    free(backtrace_string);
    if (!v114)
    {
      goto LABEL_316;
    }

    goto LABEL_315;
  }

  if (!v176)
  {
    v123 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_candidate_endpoint_for_ids_connection";
    v114 = _os_log_send_and_compose_impl();

    type[0] = 16;
    LOBYTE(__str[0]) = 0;
    if (!__nwlog_fault(v114, type, __str))
    {
      goto LABEL_314;
    }

    if (type[0] == 17)
    {
      v115 = __nwlog_obj();
      v124 = type[0];
      if (os_log_type_enabled(v115, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_candidate_endpoint_for_ids_connection";
        _os_log_impl(&dword_181A37000, v115, v124, "%{public}s called with null completion", buf, 0xCu);
      }
    }

    else if (LOBYTE(__str[0]) == 1)
    {
      v146 = __nw_create_backtrace_string();
      v115 = __nwlog_obj();
      v147 = type[0];
      v148 = os_log_type_enabled(v115, type[0]);
      if (v146)
      {
        if (v148)
        {
          *buf = 136446466;
          *&buf[4] = "nw_candidate_endpoint_for_ids_connection";
          *&buf[12] = 2082;
          *&buf[14] = v146;
          _os_log_impl(&dword_181A37000, v115, v147, "%{public}s called with null completion, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v146);
LABEL_314:
        if (!v114)
        {
LABEL_316:
          v94 = 0;
          goto LABEL_179;
        }

LABEL_315:
        free(v114);
        goto LABEL_316;
      }

      if (v148)
      {
        *buf = 136446210;
        *&buf[4] = "nw_candidate_endpoint_for_ids_connection";
        _os_log_impl(&dword_181A37000, v115, v147, "%{public}s called with null completion, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v115 = __nwlog_obj();
      v165 = type[0];
      if (os_log_type_enabled(v115, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_candidate_endpoint_for_ids_connection";
        _os_log_impl(&dword_181A37000, v115, v165, "%{public}s called with null completion, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_313:

    goto LABEL_314;
  }

  v14 = nw_connection_copy_connected_path(v11);
  if (!v14)
  {
    v111 = 0;
    v125 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_candidate_endpoint_for_ids_connection";
    v126 = _os_log_send_and_compose_impl();

    type[0] = 16;
    LOBYTE(__str[0]) = 0;
    if (__nwlog_fault(v126, type, __str))
    {
      if (type[0] == 17)
      {
        v127 = __nwlog_obj();
        v128 = type[0];
        if (os_log_type_enabled(v127, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_candidate_endpoint_for_ids_connection";
          _os_log_impl(&dword_181A37000, v127, v128, "%{public}s called with null path", buf, 0xCu);
        }
      }

      else if (LOBYTE(__str[0]) == 1)
      {
        v149 = __nw_create_backtrace_string();
        v127 = __nwlog_obj();
        v150 = type[0];
        v151 = os_log_type_enabled(v127, type[0]);
        if (v149)
        {
          if (v151)
          {
            *buf = 136446466;
            *&buf[4] = "nw_candidate_endpoint_for_ids_connection";
            *&buf[12] = 2082;
            *&buf[14] = v149;
            _os_log_impl(&dword_181A37000, v127, v150, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v149);
          goto LABEL_320;
        }

        if (v151)
        {
          *buf = 136446210;
          *&buf[4] = "nw_candidate_endpoint_for_ids_connection";
          _os_log_impl(&dword_181A37000, v127, v150, "%{public}s called with null path, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v127 = __nwlog_obj();
        v166 = type[0];
        if (os_log_type_enabled(v127, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_candidate_endpoint_for_ids_connection";
          _os_log_impl(&dword_181A37000, v127, v166, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_320:
    if (v126)
    {
      free(v126);
    }

    v94 = 0;
    goto LABEL_178;
  }

  v172 = v14;
  v15 = _nw_parameters_copy(v12);
  nw_parameters_set_required_netagent_classes(v15, 0, 0);
  v16 = nw_path_copy_interface(v14);
  nw_parameters_require_interface(v15, v16);

  v17 = v14;
  v18 = _nw_path_copy_effective_local_endpoint(v17);

  nw_parameters_set_local_endpoint(v15, v18);
  nw_parameters_set_reuse_local_address(v15, 1);
  v19 = v13;
  size = dispatch_data_get_size(v19);
  v171 = a5;
  if (!size)
  {
    v129 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_candidate_manager_ids_quic_demux";
    v22 = _os_log_send_and_compose_impl();

    type[0] = 16;
    LOBYTE(__str[0]) = 0;
    if (!__nwlog_fault(v22, type, __str))
    {
      goto LABEL_35;
    }

    if (type[0] == 17)
    {
      v23 = __nwlog_obj();
      v130 = type[0];
      if (os_log_type_enabled(v23, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_candidate_manager_ids_quic_demux";
        _os_log_impl(&dword_181A37000, v23, v130, "%{public}s called with null dispatch_data_get_size(dst_cid)", buf, 0xCu);
      }

      goto LABEL_325;
    }

    if (LOBYTE(__str[0]) != 1)
    {
      v23 = __nwlog_obj();
      v167 = type[0];
      if (os_log_type_enabled(v23, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_candidate_manager_ids_quic_demux";
        _os_log_impl(&dword_181A37000, v23, v167, "%{public}s called with null dispatch_data_get_size(dst_cid), backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_325;
    }

    v152 = __nw_create_backtrace_string();
    v23 = __nwlog_obj();
    v153 = type[0];
    v154 = os_log_type_enabled(v23, type[0]);
    if (!v152)
    {
      if (v154)
      {
        *buf = 136446210;
        *&buf[4] = "nw_candidate_manager_ids_quic_demux";
        _os_log_impl(&dword_181A37000, v23, v153, "%{public}s called with null dispatch_data_get_size(dst_cid), no backtrace", buf, 0xCu);
      }

      goto LABEL_325;
    }

    if (v154)
    {
      *buf = 136446466;
      *&buf[4] = "nw_candidate_manager_ids_quic_demux";
      *&buf[12] = 2082;
      *&buf[14] = v152;
      _os_log_impl(&dword_181A37000, v23, v153, "%{public}s called with null dispatch_data_get_size(dst_cid), dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v152);
    goto LABEL_35;
  }

  *&uu[9] = 0;
  *&uu[1] = 0;
  v185 = 0;
  *&v182[9] = 0;
  *&v182[1] = 0;
  v183 = 0;
  if (size >= 0x15)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v21 = gLogObj;
    *buf = 136446722;
    *&buf[4] = "nw_candidate_manager_ids_quic_demux";
    *&buf[12] = 2048;
    *&buf[14] = dispatch_data_get_size(v19);
    *&buf[22] = 1024;
    *&buf[24] = 20;
    v22 = _os_log_send_and_compose_impl();

    type[0] = 16;
    LOBYTE(__str[0]) = 0;
    if (!__nwlog_fault(v22, type, __str))
    {
      goto LABEL_35;
    }

    if (type[0] == 17)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v23 = gLogObj;
      v24 = type[0];
      if (os_log_type_enabled(v23, type[0]))
      {
        v25 = dispatch_data_get_size(v19);
        *buf = 136446722;
        *&buf[4] = "nw_candidate_manager_ids_quic_demux";
        *&buf[12] = 2048;
        *&buf[14] = v25;
        *&buf[22] = 1024;
        *&buf[24] = 20;
        _os_log_impl(&dword_181A37000, v23, v24, "%{public}s connection id length %zu is too large (> %d)", buf, 0x1Cu);
      }

LABEL_325:

      goto LABEL_35;
    }

    if (LOBYTE(__str[0]) != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v23 = gLogObj;
      v36 = type[0];
      if (os_log_type_enabled(v23, type[0]))
      {
        v37 = dispatch_data_get_size(v19);
        *buf = 136446722;
        *&buf[4] = "nw_candidate_manager_ids_quic_demux";
        *&buf[12] = 2048;
        *&buf[14] = v37;
        *&buf[22] = 1024;
        *&buf[24] = 20;
        _os_log_impl(&dword_181A37000, v23, v36, "%{public}s connection id length %zu is too large (> %d), backtrace limit exceeded", buf, 0x1Cu);
      }

      goto LABEL_325;
    }

    v28 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v29 = gLogObj;
    v30 = type[0];
    v31 = os_log_type_enabled(v29, type[0]);
    if (v28)
    {
      if (v31)
      {
        v32 = dispatch_data_get_size(v19);
        *buf = 136446978;
        *&buf[4] = "nw_candidate_manager_ids_quic_demux";
        *&buf[12] = 2048;
        *&buf[14] = v32;
        *&buf[22] = 1024;
        *&buf[24] = 20;
        *&buf[28] = 2082;
        *&buf[30] = v28;
        _os_log_impl(&dword_181A37000, v29, v30, "%{public}s connection id length %zu is too large (> %d), dumping backtrace:%{public}s", buf, 0x26u);
      }

      free(v28);
      if (!v22)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    }

    if (v31)
    {
      v38 = dispatch_data_get_size(v19);
      *buf = 136446722;
      *&buf[4] = "nw_candidate_manager_ids_quic_demux";
      *&buf[12] = 2048;
      *&buf[14] = v38;
      *&buf[22] = 1024;
      *&buf[24] = 20;
      _os_log_impl(&dword_181A37000, v29, v30, "%{public}s connection id length %zu is too large (> %d), no backtrace", buf, 0x1Cu);
    }

LABEL_35:
    if (!v22)
    {
LABEL_37:
      options = 0;
      goto LABEL_38;
    }

LABEL_36:
    free(v22);
    goto LABEL_37;
  }

  if (nw_protocol_demux_copy_definition::onceToken[0] != -1)
  {
    dispatch_once(nw_protocol_demux_copy_definition::onceToken, &__block_literal_global_8_26041);
  }

  if (nw_protocol_demux_copy_definition::definition)
  {
    v26 = os_retain(nw_protocol_demux_copy_definition::definition);
    options = nw_protocol_create_options(v26);
    if (v26)
    {
      os_release(v26);
    }
  }

  else
  {
    options = nw_protocol_create_options(0);
  }

  uu[0] = -64;
  v182[0] = 64;
  v33 = dispatch_data_get_size(v19);
  v34 = v33 + 1;
  v35 = (v33 + 1);
  if (v35 >= 2)
  {
    memset(&uu[1], 255, v33);
  }

  *type = 0;
  *&type[8] = type;
  *&type[16] = 0x2000000000;
  v181[0] = 0;
  __str[0] = 0;
  __str[1] = __str;
  __str[2] = 0x2000000000;
  __str[3] = &v182[1];
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 0x40000000;
  *&buf[16] = __nw_dispatch_data_copyout_block_invoke;
  *&buf[24] = &unk_1E6A34348;
  *&buf[40] = __str;
  v187 = v34 - 1;
  *&buf[32] = type;
  dispatch_data_apply(v19, buf);
  _Block_object_dispose(__str, 8);
  _Block_object_dispose(type, 8);
  nw_demux_options_add_pattern(options, 0, v35, v182, uu);
LABEL_38:

  nw_parameters_set_channel_demux_options(v15, options);
  pid = _nw_parameters_get_pid(v12);
  v40 = pid;
  if (!pid)
  {
    goto LABEL_61;
  }

  v187 = 0;
  memset(buf, 0, sizeof(buf));
  if (proc_pidinfo(pid, 17, 1uLL, buf, 56) != 56)
  {
    v41 = v40;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v42 = gLogObj;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v44 = **(StatusReg + 8);
    *type = 136446722;
    *&type[4] = "nw_candidate_endpoint_for_ids_connection";
    *&type[12] = 2048;
    *&type[14] = v41;
    *&type[22] = 1024;
    LODWORD(v181[0]) = v44;
    v45 = _os_log_send_and_compose_impl();

    LOBYTE(__str[0]) = 16;
    uu[0] = 0;
    if (!__nwlog_fault(v45, __str, uu))
    {
      goto LABEL_58;
    }

    if (LOBYTE(__str[0]) == 17)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v46 = gLogObj;
      v47 = __str[0];
      if (os_log_type_enabled(v46, __str[0]))
      {
        v48 = **(StatusReg + 8);
        *type = 136446722;
        *&type[4] = "nw_candidate_endpoint_for_ids_connection";
        *&type[12] = 2048;
        *&type[14] = v41;
        *&type[22] = 1024;
        LODWORD(v181[0]) = v48;
        _os_log_impl(&dword_181A37000, v46, v47, "%{public}s proc_pidinfo PROC_PIDUNIQIDENTIFIERINFO for %llu failed: %{darwin.errno}d", type, 0x1Cu);
      }
    }

    else
    {
      if (uu[0] == 1)
      {
        v49 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v50 = gLogObj;
        v51 = __str[0];
        v52 = os_log_type_enabled(v50, __str[0]);
        if (v49)
        {
          if (v52)
          {
            v53 = **(StatusReg + 8);
            *type = 136446978;
            *&type[4] = "nw_candidate_endpoint_for_ids_connection";
            *&type[12] = 2048;
            *&type[14] = v41;
            *&type[22] = 1024;
            LODWORD(v181[0]) = v53;
            WORD2(v181[0]) = 2082;
            *(v181 + 6) = v49;
            _os_log_impl(&dword_181A37000, v50, v51, "%{public}s proc_pidinfo PROC_PIDUNIQIDENTIFIERINFO for %llu failed: %{darwin.errno}d, dumping backtrace:%{public}s", type, 0x26u);
          }

          free(v49);
          if (!v45)
          {
            goto LABEL_60;
          }

          goto LABEL_59;
        }

        if (v52)
        {
          v56 = **(StatusReg + 8);
          *type = 136446722;
          *&type[4] = "nw_candidate_endpoint_for_ids_connection";
          *&type[12] = 2048;
          *&type[14] = v41;
          *&type[22] = 1024;
          LODWORD(v181[0]) = v56;
          _os_log_impl(&dword_181A37000, v50, v51, "%{public}s proc_pidinfo PROC_PIDUNIQIDENTIFIERINFO for %llu failed: %{darwin.errno}d, no backtrace", type, 0x1Cu);
        }

LABEL_58:
        if (!v45)
        {
          goto LABEL_60;
        }

LABEL_59:
        free(v45);
        goto LABEL_60;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v46 = gLogObj;
      v54 = __str[0];
      if (os_log_type_enabled(v46, __str[0]))
      {
        v55 = **(StatusReg + 8);
        *type = 136446722;
        *&type[4] = "nw_candidate_endpoint_for_ids_connection";
        *&type[12] = 2048;
        *&type[14] = v41;
        *&type[22] = 1024;
        LODWORD(v181[0]) = v55;
        _os_log_impl(&dword_181A37000, v46, v54, "%{public}s proc_pidinfo PROC_PIDUNIQIDENTIFIERINFO for %llu failed: %{darwin.errno}d, backtrace limit exceeded", type, 0x1Cu);
      }
    }

    goto LABEL_58;
  }

  v41 = *&buf[16];
LABEL_60:
  nw_parameters_set_delegated_unique_pid(v15, v41);
LABEL_61:
  *uu = 0;
  *&uu[8] = 0;
  v57 = v17;
  _nw_path_get_client_id(v57, uu);

  if (!uuid_is_null(uu))
  {
    nw_parameters_set_parent_id(v15, uu);
  }

  nw_parameters_set_preferred_interface_subtypes(v15, 0);
  nw_parameters_set_multipath_service(v15, nw_multipath_service_disabled);
  v58 = v57;
  v59 = _nw_path_copy_effective_remote_endpoint(v58);

  evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint(v59, v15);
  v61 = v58;
  v62 = _nw_path_copy_effective_remote_endpoint(v61);

  if (!v62)
  {
    v131 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_candidate_endpoint_for_ids_connection";
    v132 = _os_log_send_and_compose_impl();

    type[0] = 16;
    LOBYTE(__str[0]) = 0;
    if (!__nwlog_fault(v132, type, __str))
    {
      goto LABEL_332;
    }

    if (type[0] == 17)
    {
      v133 = __nwlog_obj();
      v134 = type[0];
      if (os_log_type_enabled(v133, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_candidate_endpoint_for_ids_connection";
        _os_log_impl(&dword_181A37000, v133, v134, "%{public}s called with null endpoint", buf, 0xCu);
      }
    }

    else if (LOBYTE(__str[0]) == 1)
    {
      v155 = __nw_create_backtrace_string();
      v133 = __nwlog_obj();
      v156 = type[0];
      v157 = os_log_type_enabled(v133, type[0]);
      if (v155)
      {
        if (v157)
        {
          *buf = 136446466;
          *&buf[4] = "nw_candidate_endpoint_for_ids_connection";
          *&buf[12] = 2082;
          *&buf[14] = v155;
          _os_log_impl(&dword_181A37000, v133, v156, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v155);
        if (!v132)
        {
          goto LABEL_334;
        }

        goto LABEL_333;
      }

      if (v157)
      {
        *buf = 136446210;
        *&buf[4] = "nw_candidate_endpoint_for_ids_connection";
        _os_log_impl(&dword_181A37000, v133, v156, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v133 = __nwlog_obj();
      v168 = type[0];
      if (os_log_type_enabled(v133, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_candidate_endpoint_for_ids_connection";
        _os_log_impl(&dword_181A37000, v133, v168, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_331;
  }

  v63 = [v62 copy];

  if (!v63)
  {
    v135 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_candidate_endpoint_for_ids_connection";
    v132 = _os_log_send_and_compose_impl();

    type[0] = 16;
    LOBYTE(__str[0]) = 0;
    if (!__nwlog_fault(v132, type, __str))
    {
      goto LABEL_332;
    }

    if (type[0] == 17)
    {
      v133 = __nwlog_obj();
      v136 = type[0];
      if (os_log_type_enabled(v133, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_candidate_endpoint_for_ids_connection";
        _os_log_impl(&dword_181A37000, v133, v136, "%{public}s called with null endpoint", buf, 0xCu);
      }
    }

    else if (LOBYTE(__str[0]) == 1)
    {
      v158 = __nw_create_backtrace_string();
      v133 = __nwlog_obj();
      v159 = type[0];
      v160 = os_log_type_enabled(v133, type[0]);
      if (v158)
      {
        if (v160)
        {
          *buf = 136446466;
          *&buf[4] = "nw_candidate_endpoint_for_ids_connection";
          *&buf[12] = 2082;
          *&buf[14] = v158;
          _os_log_impl(&dword_181A37000, v133, v159, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v158);
LABEL_332:
        if (!v132)
        {
LABEL_334:
          v94 = 0;
          goto LABEL_177;
        }

LABEL_333:
        free(v132);
        goto LABEL_334;
      }

      if (v160)
      {
        *buf = 136446210;
        *&buf[4] = "nw_candidate_endpoint_for_ids_connection";
        _os_log_impl(&dword_181A37000, v133, v159, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v133 = __nwlog_obj();
      v169 = type[0];
      if (os_log_type_enabled(v133, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_candidate_endpoint_for_ids_connection";
        _os_log_impl(&dword_181A37000, v133, v169, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_331:

    goto LABEL_332;
  }

  dictionary_with_initial_length = nw_txt_record_create_dictionary_with_initial_length(0x100uLL);
  *v182 = 0;
  *&v182[8] = 0;
  if (!nw_path_evaluator_get_client_id(evaluator_for_endpoint, v182))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v73 = gLogObj;
    *buf = 136446210;
    *&buf[4] = "nw_candidate_endpoint_for_ids_connection";
    v74 = _os_log_send_and_compose_impl();

    type[0] = 16;
    LOBYTE(__str[0]) = 0;
    if (!__nwlog_fault(v74, type, __str))
    {
      goto LABEL_173;
    }

    if (type[0] == 17)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v75 = gLogObj;
      v76 = type[0];
      if (os_log_type_enabled(v75, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_candidate_endpoint_for_ids_connection";
        _os_log_impl(&dword_181A37000, v75, v76, "%{public}s nw_path_evaluator_get_client_id failed", buf, 0xCu);
      }
    }

    else if (LOBYTE(__str[0]) == 1)
    {
      v80 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v75 = gLogObj;
      v81 = type[0];
      v82 = os_log_type_enabled(v75, type[0]);
      if (v80)
      {
        if (v82)
        {
          *buf = 136446466;
          *&buf[4] = "nw_candidate_endpoint_for_ids_connection";
          *&buf[12] = 2082;
          *&buf[14] = v80;
          _os_log_impl(&dword_181A37000, v75, v81, "%{public}s nw_path_evaluator_get_client_id failed, dumping backtrace:%{public}s", buf, 0x16u);
        }

LABEL_129:
        free(v80);
        if (!v74)
        {
          goto LABEL_175;
        }

        goto LABEL_174;
      }

      if (v82)
      {
        *buf = 136446210;
        *&buf[4] = "nw_candidate_endpoint_for_ids_connection";
        _os_log_impl(&dword_181A37000, v75, v81, "%{public}s nw_path_evaluator_get_client_id failed, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v75 = gLogObj;
      v85 = type[0];
      if (os_log_type_enabled(v75, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_candidate_endpoint_for_ids_connection";
        _os_log_impl(&dword_181A37000, v75, v85, "%{public}s nw_path_evaluator_get_client_id failed, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_173;
  }

  memset(buf, 0, 37);
  uuid_unparse(v182, buf);
  if (!nw_txt_record_set_key(dictionary_with_initial_length, "eval", buf, 0x24uLL))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v77 = gLogObj;
    *type = 136446210;
    *&type[4] = "nw_candidate_endpoint_for_ids_connection";
    v74 = _os_log_send_and_compose_impl();

    LOBYTE(__str[0]) = 16;
    v179 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v74, __str, &v179))
    {
      goto LABEL_173;
    }

    if (LOBYTE(__str[0]) == 17)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v78 = gLogObj;
      v79 = __str[0];
      if (os_log_type_enabled(v78, __str[0]))
      {
        *type = 136446210;
        *&type[4] = "nw_candidate_endpoint_for_ids_connection";
        _os_log_impl(&dword_181A37000, v78, v79, "%{public}s failed to add kIDSKeyPathUUID", type, 0xCu);
      }

      goto LABEL_150;
    }

    if (v179 != OS_LOG_TYPE_INFO)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v78 = gLogObj;
      v90 = __str[0];
      if (os_log_type_enabled(v78, __str[0]))
      {
        *type = 136446210;
        *&type[4] = "nw_candidate_endpoint_for_ids_connection";
        _os_log_impl(&dword_181A37000, v78, v90, "%{public}s failed to add kIDSKeyPathUUID, backtrace limit exceeded", type, 0xCu);
      }

      goto LABEL_150;
    }

    v80 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v78 = gLogObj;
    v86 = __str[0];
    v87 = os_log_type_enabled(v78, __str[0]);
    if (!v80)
    {
      if (v87)
      {
        *type = 136446210;
        *&type[4] = "nw_candidate_endpoint_for_ids_connection";
        _os_log_impl(&dword_181A37000, v78, v86, "%{public}s failed to add kIDSKeyPathUUID, no backtrace", type, 0xCu);
      }

      goto LABEL_150;
    }

    if (v87)
    {
      *type = 136446466;
      *&type[4] = "nw_candidate_endpoint_for_ids_connection";
      *&type[12] = 2082;
      *&type[14] = v80;
      _os_log_impl(&dword_181A37000, v78, v86, "%{public}s failed to add kIDSKeyPathUUID, dumping backtrace:%{public}s", type, 0x16u);
    }

LABEL_128:

    goto LABEL_129;
  }

  if ((nw_txt_record_set_key_data_value(dictionary_with_initial_length, "lcid", v19) & 1) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v83 = gLogObj;
    *type = 136446210;
    *&type[4] = "nw_candidate_endpoint_for_ids_connection";
    v74 = _os_log_send_and_compose_impl();

    LOBYTE(__str[0]) = 16;
    v179 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v74, __str, &v179))
    {
      goto LABEL_173;
    }

    if (LOBYTE(__str[0]) == 17)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v78 = gLogObj;
      v84 = __str[0];
      if (os_log_type_enabled(v78, __str[0]))
      {
        *type = 136446210;
        *&type[4] = "nw_candidate_endpoint_for_ids_connection";
        _os_log_impl(&dword_181A37000, v78, v84, "%{public}s failed to add kIDSKeyLocalCID", type, 0xCu);
      }

      goto LABEL_150;
    }

    if (v179 != OS_LOG_TYPE_INFO)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v78 = gLogObj;
      v95 = __str[0];
      if (os_log_type_enabled(v78, __str[0]))
      {
        *type = 136446210;
        *&type[4] = "nw_candidate_endpoint_for_ids_connection";
        _os_log_impl(&dword_181A37000, v78, v95, "%{public}s failed to add kIDSKeyLocalCID, backtrace limit exceeded", type, 0xCu);
      }

      goto LABEL_150;
    }

    v80 = __nw_create_backtrace_string();
    v78 = __nwlog_obj();
    v91 = __str[0];
    v92 = os_log_type_enabled(v78, __str[0]);
    if (!v80)
    {
      if (v92)
      {
        *type = 136446210;
        *&type[4] = "nw_candidate_endpoint_for_ids_connection";
        _os_log_impl(&dword_181A37000, v78, v91, "%{public}s failed to add kIDSKeyLocalCID, no backtrace", type, 0xCu);
      }

      goto LABEL_150;
    }

    if (v92)
    {
      *type = 136446466;
      *&type[4] = "nw_candidate_endpoint_for_ids_connection";
      *&type[12] = 2082;
      *&type[14] = v80;
      _os_log_impl(&dword_181A37000, v78, v91, "%{public}s failed to add kIDSKeyLocalCID, dumping backtrace:%{public}s", type, 0x16u);
    }

    goto LABEL_128;
  }

  if ((nw_txt_record_set_key_data_value(dictionary_with_initial_length, "rcid", v177) & 1) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v88 = gLogObj;
    *type = 136446210;
    *&type[4] = "nw_candidate_endpoint_for_ids_connection";
    v74 = _os_log_send_and_compose_impl();

    LOBYTE(__str[0]) = 16;
    v179 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v74, __str, &v179))
    {
      goto LABEL_173;
    }

    if (LOBYTE(__str[0]) == 17)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v78 = gLogObj;
      v89 = __str[0];
      if (os_log_type_enabled(v78, __str[0]))
      {
        *type = 136446210;
        *&type[4] = "nw_candidate_endpoint_for_ids_connection";
        _os_log_impl(&dword_181A37000, v78, v89, "%{public}s failed to add kIDSKeyRemoteCID", type, 0xCu);
      }

LABEL_150:

      goto LABEL_173;
    }

    if (v179 != OS_LOG_TYPE_INFO)
    {
      v78 = __nwlog_obj();
      v102 = __str[0];
      if (os_log_type_enabled(v78, __str[0]))
      {
        *type = 136446210;
        *&type[4] = "nw_candidate_endpoint_for_ids_connection";
        _os_log_impl(&dword_181A37000, v78, v102, "%{public}s failed to add kIDSKeyRemoteCID, backtrace limit exceeded", type, 0xCu);
      }

      goto LABEL_150;
    }

    v80 = __nw_create_backtrace_string();
    v78 = __nwlog_obj();
    v96 = __str[0];
    v97 = os_log_type_enabled(v78, __str[0]);
    if (!v80)
    {
      if (v97)
      {
        *type = 136446210;
        *&type[4] = "nw_candidate_endpoint_for_ids_connection";
        _os_log_impl(&dword_181A37000, v78, v96, "%{public}s failed to add kIDSKeyRemoteCID, no backtrace", type, 0xCu);
      }

      goto LABEL_150;
    }

    if (v97)
    {
      *type = 136446466;
      *&type[4] = "nw_candidate_endpoint_for_ids_connection";
      *&type[12] = 2082;
      *&type[14] = v80;
      _os_log_impl(&dword_181A37000, v78, v96, "%{public}s failed to add kIDSKeyRemoteCID, dumping backtrace:%{public}s", type, 0x16u);
    }

    goto LABEL_128;
  }

  v65 = dictionary_with_initial_length;
  v66 = snprintf(__str, 0x15uLL, "%llu", v171);
  v67 = v66;
  if (v66 >= 0x15)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v68 = gLogObj;
    v69 = v67 - 20;
    *type = 136446466;
    *&type[4] = "nw_txt_record_set_key_uint64_value";
    *&type[12] = 2048;
    *&type[14] = v67 - 20;
    v70 = _os_log_send_and_compose_impl();

    v179 = OS_LOG_TYPE_ERROR;
    v178 = 0;
    if (__nwlog_fault(v70, &v179, &v178))
    {
      if (v179 == OS_LOG_TYPE_FAULT)
      {
        v71 = __nwlog_obj();
        v72 = v179;
        if (os_log_type_enabled(v71, v179))
        {
          *type = 136446466;
          *&type[4] = "nw_txt_record_set_key_uint64_value";
          *&type[12] = 2048;
          *&type[14] = v69;
          _os_log_impl(&dword_181A37000, v71, v72, "%{public}s buffer was too small by %lu bytes", type, 0x16u);
        }
      }

      else
      {
        if (v178 == 1)
        {
          v98 = __nw_create_backtrace_string();
          v99 = __nwlog_obj();
          v100 = v179;
          log = v99;
          v101 = os_log_type_enabled(v99, v179);
          if (v98)
          {
            if (v101)
            {
              *type = 136446722;
              *&type[4] = "nw_txt_record_set_key_uint64_value";
              *&type[12] = 2048;
              *&type[14] = v69;
              *&type[22] = 2082;
              v181[0] = v98;
              _os_log_impl(&dword_181A37000, log, v100, "%{public}s buffer was too small by %lu bytes, dumping backtrace:%{public}s", type, 0x20u);
            }

            free(v98);
          }

          else
          {
            if (v101)
            {
              *type = 136446466;
              *&type[4] = "nw_txt_record_set_key_uint64_value";
              *&type[12] = 2048;
              *&type[14] = v69;
              _os_log_impl(&dword_181A37000, log, v100, "%{public}s buffer was too small by %lu bytes, no backtrace", type, 0x16u);
            }
          }

          goto LABEL_154;
        }

        v71 = __nwlog_obj();
        v103 = v179;
        if (os_log_type_enabled(v71, v179))
        {
          *type = 136446466;
          *&type[4] = "nw_txt_record_set_key_uint64_value";
          *&type[12] = 2048;
          *&type[14] = v69;
          _os_log_impl(&dword_181A37000, v71, v103, "%{public}s buffer was too small by %lu bytes, backtrace limit exceeded", type, 0x16u);
        }
      }
    }

LABEL_154:
    if (v70)
    {
      free(v70);
    }

LABEL_157:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v104 = gLogObj;
    *type = 136446210;
    *&type[4] = "nw_candidate_endpoint_for_ids_connection";
    v74 = _os_log_send_and_compose_impl();

    LOBYTE(__str[0]) = 16;
    v179 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v74, __str, &v179))
    {
      goto LABEL_173;
    }

    if (LOBYTE(__str[0]) == 17)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v105 = gLogObj;
      v106 = __str[0];
      if (os_log_type_enabled(v105, __str[0]))
      {
        *type = 136446210;
        *&type[4] = "nw_candidate_endpoint_for_ids_connection";
        _os_log_impl(&dword_181A37000, v105, v106, "%{public}s failed to add kIDSKeyRemoteInterfaceType", type, 0xCu);
      }
    }

    else if (v179 == OS_LOG_TYPE_INFO)
    {
      v107 = __nw_create_backtrace_string();
      v105 = __nwlog_obj();
      v108 = __str[0];
      v109 = os_log_type_enabled(v105, __str[0]);
      if (v107)
      {
        if (v109)
        {
          *type = 136446466;
          *&type[4] = "nw_candidate_endpoint_for_ids_connection";
          *&type[12] = 2082;
          *&type[14] = v107;
          _os_log_impl(&dword_181A37000, v105, v108, "%{public}s failed to add kIDSKeyRemoteInterfaceType, dumping backtrace:%{public}s", type, 0x16u);
        }

        free(v107);
LABEL_173:
        if (!v74)
        {
LABEL_175:
          v94 = 0;
          goto LABEL_176;
        }

LABEL_174:
        free(v74);
        goto LABEL_175;
      }

      if (v109)
      {
        *type = 136446210;
        *&type[4] = "nw_candidate_endpoint_for_ids_connection";
        _os_log_impl(&dword_181A37000, v105, v108, "%{public}s failed to add kIDSKeyRemoteInterfaceType, no backtrace", type, 0xCu);
      }
    }

    else
    {
      v105 = __nwlog_obj();
      v110 = __str[0];
      if (os_log_type_enabled(v105, __str[0]))
      {
        *type = 136446210;
        *&type[4] = "nw_candidate_endpoint_for_ids_connection";
        _os_log_impl(&dword_181A37000, v105, v110, "%{public}s failed to add kIDSKeyRemoteInterfaceType, backtrace limit exceeded", type, 0xCu);
      }
    }

    goto LABEL_173;
  }

  v93 = nw_txt_record_set_key(v65, "rift", __str, v66);

  if (!v93)
  {
    goto LABEL_157;
  }

  nw_endpoint_set_txt_record(v63, v65);
  v176[2](v176, evaluator_for_endpoint, v63);
  v94 = 1;
LABEL_176:

LABEL_177:
  v111 = v172;
LABEL_178:

LABEL_179:
  return v94;
}