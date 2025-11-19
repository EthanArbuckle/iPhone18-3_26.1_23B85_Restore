void *nw_printf_write_sockaddr(void *result, uint64_t a2, sockaddr *a3)
{
  v56 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v7 = "<NULL>";
    v8 = 6;
    goto LABEL_10;
  }

  if ((*(a2 + 24) & 1) == 0)
  {
    v7 = "<fail decode - size not specified>";
    v8 = 34;
    goto LABEL_10;
  }

  v3 = *(a2 + 16);
  if (v3 <= 1)
  {
    v4 = result;
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(result, "<fail decode - size> ", 21);
    if (*(a2 + 24))
    {
      v6 = MEMORY[0x1865DC430](v4, *(a2 + 16));
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v6, " < ", 3);

      JUMPOUT(0x1865DC430);
    }

LABEL_56:
    std::__throw_bad_optional_access[abi:nn200100]();
    return nw_printf_write_data();
  }

  sa_len = a3->sa_len;
  if (v3 < sa_len)
  {
    v11 = a3;
    v12 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(result, "<fail decode - size> ", 21);
    __s[0] = v11->sa_len;
    v13 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v12, __s, 1);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v13, " > ", 3);
    if (*(a2 + 24))
    {
      return MEMORY[0x1865DC430](v13, *(a2 + 16));
    }

    goto LABEL_56;
  }

  sa_family = a3->sa_family;
  v15 = a3;
  if (sa_family <= 0x11)
  {
    if (sa_family != 1)
    {
      if (sa_family == 2)
      {
        if (sa_len <= 0xF)
        {
          v16 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(result, "<fail decode - size> ", 21);
          __s[0] = v15->sa_len;
          v17 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v16, __s, 1);
          v18 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v17, " < ", 3);
          return MEMORY[0x1865DC430](v18, 16);
        }

        v40 = result;
        v41 = a3;
        v42 = 16;
        goto LABEL_34;
      }

      goto LABEL_25;
    }

    v22 = result;
    v23 = a3;
    v24 = strnlen(a3->sa_data, sa_len - 2);
    v25 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v22, "AF_UNIX:", 9);
    result = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v25, v23->sa_data, v24);
    v26 = 34;
    goto LABEL_31;
  }

  if (sa_family != 18)
  {
    if (sa_family == 30)
    {
      if (sa_len <= 0x1B)
      {
        v19 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(result, "<fail decode - size> ", 21);
        __s[0] = v15->sa_len;
        v20 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v19, __s, 1);
        v21 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v20, " < ", 3);
        return MEMORY[0x1865DC430](v21, 28);
      }

      v40 = result;
      v41 = a3;
      v42 = 70;
LABEL_34:
      v43 = getnameinfo(v41, sa_len, __s, v42, v54, 6u, 10);
      if (v43)
      {
        v44 = v43;
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v40, "<failed conversion> ", 20);
        v45 = gai_strerror(v44);
        v39 = strlen(v45);
        result = v40;
        v38 = v45;
      }

      else
      {
        v52 = *v15->sa_data;
        v53 = strlen(__s);
        result = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v40, __s, v53);
        if (!v52)
        {
          return result;
        }

        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v40, ":", 1);
        v39 = strlen(v54);
        v38 = v54;
        result = v40;
      }

      return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(result, v38, v39);
    }

LABEL_25:
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(result, "<fail decode - address family> ", 31);

    JUMPOUT(0x1865DC410);
  }

  v27 = a3->sa_data[3];
  v28 = a3->sa_data[4];
  if (v27 + v28 + a3->sa_data[5] + 8 > sa_len)
  {
    v29 = a3;
    v30 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(result, "<fail decode - size> ", 21);
    __s[0] = v29->sa_len;
    v31 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v30, __s, 1);
    v32 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v31, " < ", 3);
    v33 = MEMORY[0x1865DC430](v32, 8);
    v34 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v33, " + ", 3);
    __s[0] = v29->sa_data[3];
    v35 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v34, __s, 1);
    v36 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v35, " + ", 3);
    __s[0] = v29->sa_data[4];
    v37 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v36, __s, 1);
    result = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v37, " + ", 3);
    v26 = v29->sa_data[5];
LABEL_31:
    __s[0] = v26;
    v38 = __s;
    v39 = 1;
    return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(result, v38, v39);
  }

  if (!(v28 | v27))
  {
    if (*a3->sa_data)
    {
      goto LABEL_46;
    }

    v7 = "<fail decode - no information>";
    v8 = 30;
LABEL_10:

    return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(result, v7, v8);
  }

  if (a3->sa_data[4])
  {
    *(result + *(*result - 24) + 8) = *(result + *(*result - 24) + 8) & 0xFFFFFFB5 | 8;
    __s[0] = a3->sa_data[v27 + 6];
    v46 = result;
    result = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(result, __s, 1);
    v47 = v15;
    if (v15->sa_data[4] >= 2u)
    {
      v48 = &v15->sa_data[v27 + 7];
      v49 = 1;
      do
      {
        v50 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v46, ":", 1);
        v51 = *v48++;
        __s[0] = v51;
        result = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v50, __s, 1);
        v47 = v15;
        ++v49;
      }

      while (v49 < v15->sa_data[4]);
    }

    *(v46 + *(*v46 - 24) + 8) = *(v46 + *(*v46 - 24) + 8) & 0xFFFFFFB5 | 2;
    if (v47->sa_data[3])
    {
      result = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v46, "%", 1);
      a3 = v15;
      v27 = v15->sa_data[3];
LABEL_47:
      v38 = &a3->sa_data[6];
      v39 = v27;
      return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(result, v38, v39);
    }

    if (*v47->sa_data)
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v46, "%", 1);
      return MEMORY[0x1865DC440]();
    }

    return result;
  }

LABEL_46:
  if (a3->sa_data[3])
  {
    goto LABEL_47;
  }

  if (*a3->sa_data)
  {
    return MEMORY[0x1865DC440]();
  }

  return result;
}

void *nw_printf_write_data(void *a1, uint64_t a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  if (a3 && (*(a2 + 24) & 1) != 0 && (v4 = *(a2 + 16)) != 0)
  {
    v5 = 0;
    *v24 = 0;
    v25 = 0;
    v26 = 0;
    *&v6 = 0x2020202020202020;
    *(&v6 + 1) = 0x2020202020202020;
    *__s = v6;
    *v28 = v6;
    *&v28[15] = v6;
    v29 = 0;
    do
    {
      if (v5)
      {
        std::ios_base::getloc((a1 + *(*a1 - 24)));
        v7 = std::locale::use_facet(&v23, MEMORY[0x1E69E5318]);
        (v7->__vftable[2].~facet_0)(v7, 10);
        std::locale::~locale(&v23);
        std::ostream::put();
        std::ostream::flush();
      }

      if (v4 - v5 >= 0x10)
      {
        v8 = 16;
      }

      else
      {
        v8 = v4 - v5;
      }

      if (v4 != v5)
      {
        v13 = &__s[1];
        v14 = (a3 + v5);
        v15 = v8 - 1;
        if (v8 <= 1)
        {
          v16 = 1;
        }

        else
        {
          v16 = v8;
        }

        v17 = v24;
        do
        {
          v19 = *v14++;
          v18 = v19;
          if (v19 - 32 >= 0x5F)
          {
            v20 = 46;
          }

          else
          {
            v20 = v18;
          }

          v21 = nw_printf_write_data::hex_chars[v18 >> 4];
          *v17 = v20;
          *(v13 - 1) = v21;
          *v13 = nw_printf_write_data::hex_chars[v18 & 0xF];
          if (!v15)
          {
            v24[v8] = 0;
          }

          --v15;
          v13 += 3;
          ++v17;
          --v16;
        }

        while (v16);
      }

      if (v4 - v5 < 0x10)
      {
        memset(&__s[3 * v8], 32, 3 * (16 - v8) - 1);
      }

      *(a1 + *(*a1 - 24) + 24) = 4;
      v9 = MEMORY[0x1865DC430](a1, v5);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v9, "   ", 3);
      v10 = strlen(__s);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v9, __s, v10);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v9, "   ", 3);
      v11 = strlen(v24);
      result = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v9, v24, v11);
      v5 += v8;
    }

    while (v5 < v4);
  }

  else
  {

    return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a1, "<NULL>", 6);
  }

  return result;
}

void nw_printf_write_foundation(void *a1, uint64_t a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 description];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 lengthOfBytesUsingEncoding:4];
      memset(v23, 0, sizeof(v23));
      if (v8)
      {
        v9 = 0;
        do
        {
          if (v8 >= 0x200)
          {
            v10 = 512;
          }

          else
          {
            v10 = v8;
          }

          v14 = 0;
          [v7 getBytes:v23 maxLength:512 usedLength:&v14 encoding:4 options:0 range:v9 remainingRange:{v10, 0}];
          std::ostream::write();
          v11 = v8 >= v14;
          v8 -= v14;
          if (!v11)
          {
            if (gLogDatapath == 1)
            {
              loga = __nwlog_obj();
              if (os_log_type_enabled(loga, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136446978;
                v16 = "nw_printf_write_foundation";
                v17 = 2082;
                v18 = "bytes_to_write";
                v19 = 2048;
                v20 = v14;
                v21 = 2048;
                v22 = v8;
                _os_log_impl(&dword_181A37000, loga, OS_LOG_TYPE_DEBUG, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 0x2Au);
              }

              v8 = 0;
              v11 = __CFADD__(v9, v14);
              v9 += v14;
              if (!v11)
              {
                continue;
              }

LABEL_20:
              if (gLogDatapath == 1)
              {
                log = __nwlog_obj();
                if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136446978;
                  v16 = "nw_printf_write_foundation";
                  v17 = 2082;
                  v18 = "range.location";
                  v19 = 2048;
                  v20 = v14;
                  v21 = 2048;
                  v22 = v9;
                  _os_log_impl(&dword_181A37000, log, OS_LOG_TYPE_DEBUG, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, 0x2Au);
                }
              }

              v9 = 0xFFFFFFFFLL;
              continue;
            }

            v8 = 0;
          }

          v11 = __CFADD__(v9, v14);
          v9 += v14;
          if (v11)
          {
            goto LABEL_20;
          }
        }

        while (v8);
      }
    }

    else
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a1, "(null)", 6);
    }
  }

  else
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a1, "(null)", 6);
  }
}

uint64_t nw_printf_write_uuid()
{
  for (i = 0; i != 16; ++i)
  {
    std::ostream::put();
    result = std::ostream::put();
    if ((i & 0xB) == 3 || i == 9 || i == 5)
    {
      result = std::ostream::put();
    }
  }

  return result;
}

void nw_printf_internal_error(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v4 = gLogObj;
  *buf = 136446722;
  v17 = "nw_printf_internal_error";
  v18 = 2080;
  v19 = a1;
  v20 = 2080;
  v21 = a2;
  v5 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (!__nwlog_fault(v5, &type, &v14))
  {
    goto LABEL_10;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    v7 = type;
    if (!os_log_type_enabled(v6, type))
    {
      goto LABEL_17;
    }

    *buf = 136446722;
    v17 = "nw_printf_internal_error";
    v18 = 2080;
    v19 = a1;
    v20 = 2080;
    v21 = a2;
    v8 = "%{public}s %s %s";
LABEL_15:
    v12 = v6;
    v13 = v7;
LABEL_16:
    _os_log_impl(&dword_181A37000, v12, v13, v8, buf, 0x20u);
    goto LABEL_17;
  }

  if (v14 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    v7 = type;
    if (!os_log_type_enabled(v6, type))
    {
      goto LABEL_17;
    }

    *buf = 136446722;
    v17 = "nw_printf_internal_error";
    v18 = 2080;
    v19 = a1;
    v20 = 2080;
    v21 = a2;
    v8 = "%{public}s %s %s, backtrace limit exceeded";
    goto LABEL_15;
  }

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
      *buf = 136446978;
      v17 = "nw_printf_internal_error";
      v18 = 2080;
      v19 = a1;
      v20 = 2080;
      v21 = a2;
      v22 = 2082;
      v23 = backtrace_string;
      _os_log_impl(&dword_181A37000, v6, v10, "%{public}s %s %s, dumping backtrace:%{public}s", buf, 0x2Au);
    }

    free(backtrace_string);
LABEL_10:
    if (!v5)
    {
      return;
    }

    goto LABEL_11;
  }

  if (v11)
  {
    *buf = 136446722;
    v17 = "nw_printf_internal_error";
    v18 = 2080;
    v19 = a1;
    v20 = 2080;
    v21 = a2;
    v8 = "%{public}s %s %s, no backtrace";
    v12 = v6;
    v13 = v10;
    goto LABEL_16;
  }

LABEL_17:

  if (v5)
  {
LABEL_11:
    free(v5);
  }
}

const char *tcp_connection_event_to_string(int a1)
{
  if (a1 <= 0x40000000)
  {
    if (a1 > 4)
    {
      if (a1 <= 6)
      {
        if (a1 == 5)
        {
          return "TCP_CONNECTION_EVENT_BETTER_ROUTE";
        }

        else
        {
          return "TCP_CONNECTION_EVENT_VIABILITY_CHANGED";
        }
      }

      if (a1 == 7)
      {
        return "TCP_CONNECTION_EVENT_WAITING";
      }

      if (a1 == 8)
      {
        return "TCP_CONNECTION_EVENT_TLS_HANDSHAKE_COMPLETE";
      }
    }

    else
    {
      if (a1 > 2)
      {
        if (a1 == 3)
        {
          return "TCP_CONNECTION_EVENT_DISCONNECTED";
        }

        else
        {
          return "TCP_CONNECTION_EVENT_WRITE_CLOSE";
        }
      }

      if (a1 == 1)
      {
        return "TCP_CONNECTION_EVENT_CONNECTED";
      }

      if (a1 == 2)
      {
        return "TCP_CONNECTION_EVENT_READ_CLOSE";
      }
    }

    return "UNKNOWN";
  }

  if (a1 <= 1073741828)
  {
    if (a1 > 1073741826)
    {
      if (a1 == 1073741827)
      {
        return "TCP_CONNECTION_EVENT_DNSSEC";
      }

      else
      {
        return "TCP_CONNECTION_EVENT_ADAPTIVE_READ_TIMEOUT";
      }
    }

    else if (a1 == 1073741825)
    {
      return "TCP_CONNECTION_EVENT_KEEPALIVE";
    }

    else
    {
      return "TCP_CONNECTION_EVENT_CONDITIONS_CHANGED";
    }
  }

  else
  {
    if (a1 > 1073741830)
    {
      switch(a1)
      {
        case 1073741831:
          return "TCP_CONNECTION_EVENT_BETTER_ROUTE_CHANGED";
        case 1073741832:
          return "TCP_CONNECTION_EVENT_CONNECTION_ATTEMPT_TIMEOUT";
        case 1073741833:
          return "TCP_CONNECTION_EVENT_CONNECTION_QUALITY_CHANGED";
      }

      return "UNKNOWN";
    }

    if (a1 == 1073741829)
    {
      return "TCP_CONNECTION_EVENT_ADAPTIVE_WRITE_TIMEOUT";
    }

    else
    {
      return "TCP_CONNECTION_EVENT_LOW_THROUGHPUT";
    }
  }
}

char *tcp_connection_create_with_endpoint_and_parameters(void *a1, void *a2, void *a3)
{
  v66 = *MEMORY[0x1E69E9840];
  v6 = a1;
  v7 = a2;
  v8 = a3;
  nw_allow_use_of_dispatch_internal();
  if (v6)
  {
    if (v8)
    {
      v9 = [[NWConcrete_tcp_connection alloc] initWithParameters:v7];
      v10 = v9;
      if (v9)
      {
        objc_storeStrong(v9 + 7, a3);
        *(v10 + 12) = nw_endpoint_handler_get_next_top_id();
        objc_storeStrong(v10 + 5, a1);
        if (nw_parameters_get_allow_socket_access(*(v10 + 6)))
        {
          v11 = 0x80;
        }

        else
        {
          v11 = 0;
        }

        v10[158] = v11 & 0x80 | v10[158] & 0x7F;
        v12 = v6;
        v13 = _nw_endpoint_get_type(v12);

        switch(v13)
        {
          case 1:
            v10[157] = 3;
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v14 = gLogObj;
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              v32 = *(v10 + 12);
              v33 = v12;
              logging_description = _nw_endpoint_get_logging_description(v33);

              *buf = 136446722;
              v57 = "tcp_connection_create_with_endpoint_and_parameters";
              v58 = 2048;
              v59 = v32;
              v60 = 2082;
              v61 = logging_description;
              _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEBUG, "%{public}s %llu %{public}s", buf, 0x20u);
            }

            break;
          case 3:
            v10[157] = 1;
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v14 = gLogObj;
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              v26 = *(v10 + 12);
              v27 = v12;
              bonjour_service_name = _nw_endpoint_get_bonjour_service_name(v27);

              v28 = v27;
              bonjour_service_type = _nw_endpoint_get_bonjour_service_type(v28);

              v30 = v28;
              bonjour_service_domain = _nw_endpoint_get_bonjour_service_domain(v30);

              *buf = 136447234;
              v57 = "tcp_connection_create_with_endpoint_and_parameters";
              v58 = 2048;
              v59 = v26;
              v60 = 2082;
              v61 = bonjour_service_name;
              v62 = 2082;
              v63 = bonjour_service_type;
              v64 = 2082;
              v65 = bonjour_service_domain;
              _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEBUG, "%{public}s %llu %{public}s %{public}s %{public}s", buf, 0x34u);
            }

            break;
          case 2:
            v10[157] = 2;
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v14 = gLogObj;
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              v15 = *(v10 + 12);
              v16 = v12;
              hostname = _nw_endpoint_get_hostname(v16);

              v18 = v16;
              LODWORD(v16) = _nw_endpoint_get_port(v18);

              *buf = 136446978;
              v57 = "tcp_connection_create_with_endpoint_and_parameters";
              v58 = 2048;
              v59 = v15;
              v60 = 2082;
              v61 = hostname;
              v62 = 1024;
              LODWORD(v63) = v16;
              _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEBUG, "%{public}s %llu %{public}s %d", buf, 0x26u);
            }

            break;
          default:
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v35 = gLogObj;
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
            {
              v36 = *(v10 + 12);
              *buf = 136446722;
              v57 = "tcp_connection_create_with_endpoint_and_parameters";
              v58 = 2048;
              v59 = v36;
              v60 = 1024;
              LODWORD(v61) = v13;
              _os_log_impl(&dword_181A37000, v35, OS_LOG_TYPE_DEBUG, "%{public}s %llu Custom endpoint type: %u", buf, 0x1Cu);
            }

            v10[157] = 0;
            goto LABEL_33;
        }

LABEL_33:
        v37 = v10;
LABEL_42:

        goto LABEL_43;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v19 = gLogObj;
      *buf = 136446210;
      v57 = "tcp_connection_create_with_endpoint_and_parameters";
      v20 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v54 = 0;
      if (__nwlog_fault(v20, &type, &v54))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v21 = gLogObj;
          v22 = type;
          if (os_log_type_enabled(v21, type))
          {
            *buf = 136446210;
            v57 = "tcp_connection_create_with_endpoint_and_parameters";
            _os_log_impl(&dword_181A37000, v21, v22, "%{public}s [tcp_connection initWithParameters:] failed", buf, 0xCu);
          }
        }

        else if (v54 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v21 = gLogObj;
          v24 = type;
          v25 = os_log_type_enabled(v21, type);
          if (backtrace_string)
          {
            if (v25)
            {
              *buf = 136446466;
              v57 = "tcp_connection_create_with_endpoint_and_parameters";
              v58 = 2082;
              v59 = backtrace_string;
              _os_log_impl(&dword_181A37000, v21, v24, "%{public}s [tcp_connection initWithParameters:] failed, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(backtrace_string);
            if (!v20)
            {
              goto LABEL_42;
            }

            goto LABEL_41;
          }

          if (v25)
          {
            *buf = 136446210;
            v57 = "tcp_connection_create_with_endpoint_and_parameters";
            _os_log_impl(&dword_181A37000, v21, v24, "%{public}s [tcp_connection initWithParameters:] failed, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v21 = gLogObj;
          v38 = type;
          if (os_log_type_enabled(v21, type))
          {
            *buf = 136446210;
            v57 = "tcp_connection_create_with_endpoint_and_parameters";
            _os_log_impl(&dword_181A37000, v21, v38, "%{public}s [tcp_connection initWithParameters:] failed, backtrace limit exceeded", buf, 0xCu);
          }
        }
      }

      if (!v20)
      {
        goto LABEL_42;
      }

LABEL_41:
      free(v20);
      goto LABEL_42;
    }

    v44 = __nwlog_obj();
    *buf = 136446210;
    v57 = "tcp_connection_create_with_endpoint_and_parameters";
    v41 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v54 = 0;
    if (__nwlog_fault(v41, &type, &v54))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v42 = __nwlog_obj();
        v45 = type;
        if (os_log_type_enabled(v42, type))
        {
          *buf = 136446210;
          v57 = "tcp_connection_create_with_endpoint_and_parameters";
          _os_log_impl(&dword_181A37000, v42, v45, "%{public}s called with null queue", buf, 0xCu);
        }

LABEL_75:

        goto LABEL_76;
      }

      if (v54 != 1)
      {
        v42 = __nwlog_obj();
        v52 = type;
        if (os_log_type_enabled(v42, type))
        {
          *buf = 136446210;
          v57 = "tcp_connection_create_with_endpoint_and_parameters";
          _os_log_impl(&dword_181A37000, v42, v52, "%{public}s called with null queue, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_75;
      }

      v46 = __nw_create_backtrace_string();
      v42 = __nwlog_obj();
      v49 = type;
      v50 = os_log_type_enabled(v42, type);
      if (!v46)
      {
        if (v50)
        {
          *buf = 136446210;
          v57 = "tcp_connection_create_with_endpoint_and_parameters";
          _os_log_impl(&dword_181A37000, v42, v49, "%{public}s called with null queue, no backtrace", buf, 0xCu);
        }

        goto LABEL_75;
      }

      if (v50)
      {
        *buf = 136446466;
        v57 = "tcp_connection_create_with_endpoint_and_parameters";
        v58 = 2082;
        v59 = v46;
        _os_log_impl(&dword_181A37000, v42, v49, "%{public}s called with null queue, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_63;
    }
  }

  else
  {
    v40 = __nwlog_obj();
    *buf = 136446210;
    v57 = "tcp_connection_create_with_endpoint_and_parameters";
    v41 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v54 = 0;
    if (__nwlog_fault(v41, &type, &v54))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v42 = __nwlog_obj();
        v43 = type;
        if (os_log_type_enabled(v42, type))
        {
          *buf = 136446210;
          v57 = "tcp_connection_create_with_endpoint_and_parameters";
          _os_log_impl(&dword_181A37000, v42, v43, "%{public}s called with null endpoint", buf, 0xCu);
        }

        goto LABEL_75;
      }

      if (v54 != 1)
      {
        v42 = __nwlog_obj();
        v51 = type;
        if (os_log_type_enabled(v42, type))
        {
          *buf = 136446210;
          v57 = "tcp_connection_create_with_endpoint_and_parameters";
          _os_log_impl(&dword_181A37000, v42, v51, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_75;
      }

      v46 = __nw_create_backtrace_string();
      v42 = __nwlog_obj();
      v47 = type;
      v48 = os_log_type_enabled(v42, type);
      if (!v46)
      {
        if (v48)
        {
          *buf = 136446210;
          v57 = "tcp_connection_create_with_endpoint_and_parameters";
          _os_log_impl(&dword_181A37000, v42, v47, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
        }

        goto LABEL_75;
      }

      if (v48)
      {
        *buf = 136446466;
        v57 = "tcp_connection_create_with_endpoint_and_parameters";
        v58 = 2082;
        v59 = v46;
        _os_log_impl(&dword_181A37000, v42, v47, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_63:

      free(v46);
    }
  }

LABEL_76:
  if (v41)
  {
    free(v41);
  }

  v10 = 0;
LABEL_43:

  return v10;
}

id tcp_connection_copy_endpoint(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    *buf = 136446210;
    v18 = "tcp_connection_copy_endpoint";
    v5 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (__nwlog_fault(v5, &type, &v15))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v6 = gLogObj;
        v7 = type;
        if (!os_log_type_enabled(v6, type))
        {
          goto LABEL_20;
        }

        *buf = 136446210;
        v18 = "tcp_connection_copy_endpoint";
        v8 = "%{public}s called with null connection";
LABEL_18:
        v13 = v6;
        v14 = v7;
        goto LABEL_19;
      }

      if (v15 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v6 = gLogObj;
        v7 = type;
        if (!os_log_type_enabled(v6, type))
        {
          goto LABEL_20;
        }

        *buf = 136446210;
        v18 = "tcp_connection_copy_endpoint";
        v8 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_18;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      v10 = type;
      v11 = os_log_type_enabled(v6, type);
      if (!backtrace_string)
      {
        if (!v11)
        {
LABEL_20:

          if (!v5)
          {
            goto LABEL_14;
          }

          goto LABEL_13;
        }

        *buf = 136446210;
        v18 = "tcp_connection_copy_endpoint";
        v8 = "%{public}s called with null connection, no backtrace";
        v13 = v6;
        v14 = v10;
LABEL_19:
        _os_log_impl(&dword_181A37000, v13, v14, v8, buf, 0xCu);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446466;
        v18 = "tcp_connection_copy_endpoint";
        v19 = 2082;
        v20 = backtrace_string;
        _os_log_impl(&dword_181A37000, v6, v10, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v5)
    {
LABEL_14:
      v3 = 0;
      goto LABEL_15;
    }

LABEL_13:
    free(v5);
    goto LABEL_14;
  }

  os_unfair_lock_lock(v1 + 30);
  v3 = *&v2[10]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(v2 + 30);
LABEL_15:

  return v3;
}

id tcp_connection_copy_parameters(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    *buf = 136446210;
    v18 = "tcp_connection_copy_parameters";
    v5 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (__nwlog_fault(v5, &type, &v15))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v6 = gLogObj;
        v7 = type;
        if (!os_log_type_enabled(v6, type))
        {
          goto LABEL_20;
        }

        *buf = 136446210;
        v18 = "tcp_connection_copy_parameters";
        v8 = "%{public}s called with null connection";
LABEL_18:
        v13 = v6;
        v14 = v7;
        goto LABEL_19;
      }

      if (v15 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v6 = gLogObj;
        v7 = type;
        if (!os_log_type_enabled(v6, type))
        {
          goto LABEL_20;
        }

        *buf = 136446210;
        v18 = "tcp_connection_copy_parameters";
        v8 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_18;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      v10 = type;
      v11 = os_log_type_enabled(v6, type);
      if (!backtrace_string)
      {
        if (!v11)
        {
LABEL_20:

          if (!v5)
          {
            goto LABEL_14;
          }

          goto LABEL_13;
        }

        *buf = 136446210;
        v18 = "tcp_connection_copy_parameters";
        v8 = "%{public}s called with null connection, no backtrace";
        v13 = v6;
        v14 = v10;
LABEL_19:
        _os_log_impl(&dword_181A37000, v13, v14, v8, buf, 0xCu);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446466;
        v18 = "tcp_connection_copy_parameters";
        v19 = 2082;
        v20 = backtrace_string;
        _os_log_impl(&dword_181A37000, v6, v10, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v5)
    {
LABEL_14:
      v3 = 0;
      goto LABEL_15;
    }

LABEL_13:
    free(v5);
    goto LABEL_14;
  }

  os_unfair_lock_lock(v1 + 30);
  v3 = *&v2[12]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(v2 + 30);
LABEL_15:

  return v3;
}

char *tcp_connection_create_with_sockaddr(void *a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  nw_allow_use_of_dispatch_internal();
  if (v3)
  {
    if (a1)
    {
      address = _nw_endpoint_create_address(a1);
      v5 = address;
      if (address)
      {
        v6 = tcp_connection_create_with_endpoint_and_parameters(address, 0, v3);
      }

      else
      {
        v6 = 0;
      }

      goto LABEL_7;
    }

    v13 = __nwlog_obj();
    *buf = 136446210;
    v21 = "tcp_connection_create_with_sockaddr";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (__nwlog_fault(v9, &type, &v18))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v21 = "tcp_connection_create_with_sockaddr";
          v12 = "%{public}s called with null sa";
          goto LABEL_34;
        }

        goto LABEL_35;
      }

      if (v18 != 1)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v21 = "tcp_connection_create_with_sockaddr";
          v12 = "%{public}s called with null sa, backtrace limit exceeded";
          goto LABEL_34;
        }

        goto LABEL_35;
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
          v21 = "tcp_connection_create_with_sockaddr";
          v12 = "%{public}s called with null sa, no backtrace";
          goto LABEL_34;
        }

        goto LABEL_35;
      }

      if (!v17)
      {
        goto LABEL_25;
      }

      *buf = 136446466;
      v21 = "tcp_connection_create_with_sockaddr";
      v22 = 2082;
      v23 = backtrace_string;
      v16 = "%{public}s called with null sa, dumping backtrace:%{public}s";
LABEL_24:
      _os_log_impl(&dword_181A37000, v10, v11, v16, buf, 0x16u);
LABEL_25:

      free(backtrace_string);
    }
  }

  else
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v21 = "tcp_connection_create_with_sockaddr";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (__nwlog_fault(v9, &type, &v18))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v21 = "tcp_connection_create_with_sockaddr";
          v12 = "%{public}s called with null queue";
LABEL_34:
          _os_log_impl(&dword_181A37000, v10, v11, v12, buf, 0xCu);
        }

LABEL_35:

        goto LABEL_36;
      }

      if (v18 != 1)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v21 = "tcp_connection_create_with_sockaddr";
          v12 = "%{public}s called with null queue, backtrace limit exceeded";
          goto LABEL_34;
        }

        goto LABEL_35;
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
          v21 = "tcp_connection_create_with_sockaddr";
          v12 = "%{public}s called with null queue, no backtrace";
          goto LABEL_34;
        }

        goto LABEL_35;
      }

      if (!v15)
      {
        goto LABEL_25;
      }

      *buf = 136446466;
      v21 = "tcp_connection_create_with_sockaddr";
      v22 = 2082;
      v23 = backtrace_string;
      v16 = "%{public}s called with null queue, dumping backtrace:%{public}s";
      goto LABEL_24;
    }
  }

LABEL_36:
  if (v9)
  {
    free(v9);
  }

  v6 = 0;
LABEL_7:

  return v6;
}

char *tcp_connection_create_with_connected_fd(int a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a2;
  nw_allow_use_of_dispatch_internal();
  if (!v4)
  {
    v20 = __nwlog_obj();
    *buf = 136446210;
    v29 = "tcp_connection_create_with_connected_fd";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v9, &type, &v26))
    {
      goto LABEL_16;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v21 = __nwlog_obj();
      v22 = type;
      if (os_log_type_enabled(v21, type))
      {
        *buf = 136446210;
        v29 = "tcp_connection_create_with_connected_fd";
        v23 = "%{public}s called with null queue";
LABEL_41:
        _os_log_impl(&dword_181A37000, v21, v22, v23, buf, 0xCu);
      }
    }

    else
    {
      if (v26 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v21 = __nwlog_obj();
        v22 = type;
        v25 = os_log_type_enabled(v21, type);
        if (backtrace_string)
        {
          if (v25)
          {
            *buf = 136446466;
            v29 = "tcp_connection_create_with_connected_fd";
            v30 = 2082;
            v31 = backtrace_string;
            _os_log_impl(&dword_181A37000, v21, v22, "%{public}s called with null queue, dumping backtrace:%{public}s", buf, 0x16u);
          }

          v16 = backtrace_string;
LABEL_15:
          free(v16);
          goto LABEL_16;
        }

        if (!v25)
        {
          goto LABEL_42;
        }

        *buf = 136446210;
        v29 = "tcp_connection_create_with_connected_fd";
        v23 = "%{public}s called with null queue, no backtrace";
        goto LABEL_41;
      }

      v21 = __nwlog_obj();
      v22 = type;
      if (os_log_type_enabled(v21, type))
      {
        *buf = 136446210;
        v29 = "tcp_connection_create_with_connected_fd";
        v23 = "%{public}s called with null queue, backtrace limit exceeded";
        goto LABEL_41;
      }
    }

LABEL_42:

LABEL_16:
    if (!v9)
    {
LABEL_18:
      v6 = 0;
      goto LABEL_19;
    }

LABEL_17:
    free(v9);
    goto LABEL_18;
  }

  if (a1 < 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    *buf = 136446210;
    v29 = "tcp_connection_create_with_connected_fd";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v9, &type, &v26))
    {
      goto LABEL_16;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_24;
      }

      *buf = 136446210;
      v29 = "tcp_connection_create_with_connected_fd";
      v12 = "%{public}s called with null fd";
LABEL_22:
      v18 = v10;
      v19 = v11;
      goto LABEL_23;
    }

    if (v26 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_24;
      }

      *buf = 136446210;
      v29 = "tcp_connection_create_with_connected_fd";
      v12 = "%{public}s called with null fd, backtrace limit exceeded";
      goto LABEL_22;
    }

    v13 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    v14 = type;
    v15 = os_log_type_enabled(v10, type);
    if (!v13)
    {
      if (!v15)
      {
LABEL_24:

        if (!v9)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }

      *buf = 136446210;
      v29 = "tcp_connection_create_with_connected_fd";
      v12 = "%{public}s called with null fd, no backtrace";
      v18 = v10;
      v19 = v14;
LABEL_23:
      _os_log_impl(&dword_181A37000, v18, v19, v12, buf, 0xCu);
      goto LABEL_24;
    }

    if (v15)
    {
      *buf = 136446466;
      v29 = "tcp_connection_create_with_connected_fd";
      v30 = 2082;
      v31 = v13;
      _os_log_impl(&dword_181A37000, v10, v14, "%{public}s called with null fd, dumping backtrace:%{public}s", buf, 0x16u);
    }

    v16 = v13;
    goto LABEL_15;
  }

  v5 = tcp_connection_create_with_connected_fd_inner(a1);
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(v5 + 7, a2);
    nw_connection_set_queue(*(v6 + 2), *(v6 + 7));
    v6[157] = 6;
    v7 = v6;
  }

LABEL_19:
  return v6;
}

char *tcp_connection_create_with_connected_fd_inner(int a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = [[NWConcrete_tcp_connection alloc] initWithParameters:?];
  v3 = v2;
  if (!v2)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v13 = gLogObj;
    *buf = 136446210;
    v25 = "tcp_connection_create_with_connected_fd_inner";
    v14 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (__nwlog_fault(v14, &type, &v22))
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
          v25 = "tcp_connection_create_with_connected_fd_inner";
          _os_log_impl(&dword_181A37000, v15, v16, "%{public}s [tcp_connection initWithParameters:] failed", buf, 0xCu);
        }
      }

      else if (v22 == 1)
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
            v25 = "tcp_connection_create_with_connected_fd_inner";
            v26 = 2082;
            v27 = backtrace_string;
            _os_log_impl(&dword_181A37000, v15, v19, "%{public}s [tcp_connection initWithParameters:] failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          if (!v14)
          {
            goto LABEL_11;
          }

          goto LABEL_10;
        }

        if (v20)
        {
          *buf = 136446210;
          v25 = "tcp_connection_create_with_connected_fd_inner";
          _os_log_impl(&dword_181A37000, v15, v19, "%{public}s [tcp_connection initWithParameters:] failed, no backtrace", buf, 0xCu);
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
          v25 = "tcp_connection_create_with_connected_fd_inner";
          _os_log_impl(&dword_181A37000, v15, v21, "%{public}s [tcp_connection initWithParameters:] failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v14)
    {
LABEL_11:
      v12 = 0;
      goto LABEL_14;
    }

LABEL_10:
    free(v14);
    goto LABEL_11;
  }

  v2[157] = 4;
  v4 = _nw_parameters_create();
  nw_parameters_set_data_mode(v4, 2);
  nw_parameters_set_server_mode(v4);
  nw_parameters_set_allow_socket_access(v4, 1);
  v5 = nw_connection_create_with_connected_socket_and_parameters(a1, v4);
  v6 = *(v3 + 2);
  *(v3 + 2) = v5;

  v7 = *(v3 + 2);
  if (v7)
  {
    v8 = v7;
    v9 = v8[112];

    *(v3 + 12) = v9;
    v10 = nw_connection_copy_endpoint(*(v3 + 2));
    v11 = *(v3 + 5);
    *(v3 + 5) = v10;

    v12 = v3;
  }

  else
  {
    v12 = 0;
  }

LABEL_14:
  return v12;
}

void tcp_connection_set_cellular_service(void *a1, char *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v5 = nw_parameters_copy_required_netagent_domains(v3[6]);
    v6 = nw_parameters_copy_required_netagent_types(v4[6]);
    v7 = v6;
    if (!a2)
    {
      if (v5)
      {
        v13 = v6 == 0;
      }

      else
      {
        v13 = 1;
      }

      if (!v13 && xpc_array_get_count(v5))
      {
        v14 = xpc_array_create(0, 0);
        v15 = xpc_array_create(0, 0);
        applier[0] = MEMORY[0x1E69E9820];
        applier[1] = 3221225472;
        applier[2] = __tcp_connection_set_cellular_service_block_invoke;
        applier[3] = &unk_1E6A31300;
        v16 = v14;
        v27 = v16;
        v28 = v7;
        v17 = v15;
        v29 = v17;
        xpc_array_apply(v5, applier);
        v18 = v16;

        v7 = v17;
        v5 = v18;
      }

      goto LABEL_37;
    }

    if (v5)
    {
      if (v6)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v5 = xpc_array_create(0, 0);
      if (v7)
      {
LABEL_5:
        if (!v5)
        {
          goto LABEL_37;
        }

        goto LABEL_26;
      }
    }

    v7 = xpc_array_create(0, 0);
    if (!v5)
    {
LABEL_37:
      nw_parameters_set_required_netagent_classes(v4[6], v5, v7);

      goto LABEL_38;
    }

LABEL_26:
    if (v7)
    {
      xpc_array_set_string(v5, 0xFFFFFFFFFFFFFFFFLL, "Cellular");
      if (strstr(a2, "kCTDataConnectionServiceType"))
      {
        v22 = a2 + 28;
        v23 = v7;
      }

      else
      {
        v23 = v7;
        v22 = a2;
      }

      xpc_array_set_string(v23, 0xFFFFFFFFFFFFFFFFLL, v22);
    }

    goto LABEL_37;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v8 = gLogObj;
  *buf = 136446210;
  v33 = "tcp_connection_set_cellular_service";
  v9 = _os_log_send_and_compose_impl();

  v31 = OS_LOG_TYPE_ERROR;
  v30 = 0;
  if (!__nwlog_fault(v9, &v31, &v30))
  {
    goto LABEL_22;
  }

  if (v31 == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    v11 = v31;
    if (!os_log_type_enabled(v10, v31))
    {
      goto LABEL_33;
    }

    *buf = 136446210;
    v33 = "tcp_connection_set_cellular_service";
    v12 = "%{public}s called with null connection";
LABEL_31:
    v24 = v10;
    v25 = v11;
LABEL_32:
    _os_log_impl(&dword_181A37000, v24, v25, v12, buf, 0xCu);
    goto LABEL_33;
  }

  if (v30 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    v11 = v31;
    if (!os_log_type_enabled(v10, v31))
    {
      goto LABEL_33;
    }

    *buf = 136446210;
    v33 = "tcp_connection_set_cellular_service";
    v12 = "%{public}s called with null connection, backtrace limit exceeded";
    goto LABEL_31;
  }

  backtrace_string = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v10 = gLogObj;
  v20 = v31;
  v21 = os_log_type_enabled(v10, v31);
  if (backtrace_string)
  {
    if (v21)
    {
      *buf = 136446466;
      v33 = "tcp_connection_set_cellular_service";
      v34 = 2082;
      v35 = backtrace_string;
      _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
LABEL_22:
    if (!v9)
    {
      goto LABEL_38;
    }

    goto LABEL_34;
  }

  if (v21)
  {
    *buf = 136446210;
    v33 = "tcp_connection_set_cellular_service";
    v12 = "%{public}s called with null connection, no backtrace";
    v24 = v10;
    v25 = v20;
    goto LABEL_32;
  }

LABEL_33:

  if (v9)
  {
LABEL_34:
    free(v9);
  }

LABEL_38:
}

uint64_t __tcp_connection_set_cellular_service_block_invoke(xpc_object_t *a1, size_t a2, void *a3)
{
  v5 = a3;
  if (object_getClass(v5) == MEMORY[0x1E69E9F10])
  {
    string_ptr = xpc_string_get_string_ptr(v5);
    if (strncmp(string_ptr, "Cellular", 0x20uLL))
    {
      xpc_array_append_value(a1[4], v5);
      v7 = xpc_array_get_value(a1[5], a2);
      if (v7)
      {
        xpc_array_append_value(a1[6], v7);
      }
    }
  }

  return 1;
}

void tcp_connection_set_no_cellular(void *a1, int a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    *buf = 136446210;
    v24 = "tcp_connection_set_no_cellular";
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (__nwlog_fault(v8, &type, &v21))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = type;
        if (!os_log_type_enabled(v9, type))
        {
          goto LABEL_26;
        }

        *buf = 136446210;
        v24 = "tcp_connection_set_no_cellular";
        v11 = "%{public}s called with null connection";
LABEL_24:
        v17 = v9;
        v18 = v10;
        goto LABEL_25;
      }

      if (v21 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = type;
        if (!os_log_type_enabled(v9, type))
        {
          goto LABEL_26;
        }

        *buf = 136446210;
        v24 = "tcp_connection_set_no_cellular";
        v11 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_24;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      v13 = type;
      v14 = os_log_type_enabled(v9, type);
      if (!backtrace_string)
      {
        if (!v14)
        {
LABEL_26:

          if (!v8)
          {
            goto LABEL_28;
          }

LABEL_27:
          free(v8);
          goto LABEL_28;
        }

        *buf = 136446210;
        v24 = "tcp_connection_set_no_cellular";
        v11 = "%{public}s called with null connection, no backtrace";
        v17 = v9;
        v18 = v13;
LABEL_25:
        _os_log_impl(&dword_181A37000, v17, v18, v11, buf, 0xCu);
        goto LABEL_26;
      }

      if (v14)
      {
        *buf = 136446466;
        v24 = "tcp_connection_set_no_cellular";
        v25 = 2082;
        v26 = backtrace_string;
        _os_log_impl(&dword_181A37000, v9, v13, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v8)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  if (nw_parameters_get_prohibit_cellular(*(v3 + 6)) != a2)
  {
    v5 = nw_parameters_copy_prohibited_interface_types(v4[6]);
    v6 = v5;
    if (!a2)
    {
      if (v5)
      {
        v15 = xpc_array_create(0, 0);
        if (v15)
        {
          applier[0] = MEMORY[0x1E69E9820];
          applier[1] = 3221225472;
          applier[2] = __tcp_connection_set_no_cellular_block_invoke;
          applier[3] = &unk_1E6A3D300;
          v20 = v15;
          v16 = v15;
          xpc_array_apply(v6, applier);

          nw_parameters_set_prohibited_interface_types(v4[6], v16);
        }
      }

      goto LABEL_21;
    }

    if (v5 || (v6 = xpc_array_create(0, 0)) != 0)
    {
      xpc_array_set_uint64(v6, 0xFFFFFFFFFFFFFFFFLL, 2uLL);
      nw_parameters_set_prohibited_interface_types(v4[6], v6);
LABEL_21:
    }
  }

LABEL_28:
}

uint64_t __tcp_connection_set_no_cellular_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (object_getClass(v4) == MEMORY[0x1E69E9F18] && xpc_uint64_get_value(v4) != 2)
  {
    xpc_array_append_value(*(a1 + 32), v4);
  }

  return 1;
}

void tcp_connection_set_no_expensive(uint64_t a1, BOOL a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    *buf = 136446210;
    v16 = "tcp_connection_set_no_expensive";
    v4 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (__nwlog_fault(v4, &type, &v13))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v6 = type;
        if (!os_log_type_enabled(v5, type))
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v16 = "tcp_connection_set_no_expensive";
        v7 = "%{public}s called with null connection";
LABEL_19:
        v11 = v5;
        v12 = v6;
        goto LABEL_20;
      }

      if (v13 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v6 = type;
        if (!os_log_type_enabled(v5, type))
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v16 = "tcp_connection_set_no_expensive";
        v7 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_19;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v9 = type;
      v10 = os_log_type_enabled(v5, type);
      if (!backtrace_string)
      {
        if (!v10)
        {
LABEL_21:

          if (!v4)
          {
            return;
          }

LABEL_15:
          free(v4);
          return;
        }

        *buf = 136446210;
        v16 = "tcp_connection_set_no_expensive";
        v7 = "%{public}s called with null connection, no backtrace";
        v11 = v5;
        v12 = v9;
LABEL_20:
        _os_log_impl(&dword_181A37000, v11, v12, v7, buf, 0xCu);
        goto LABEL_21;
      }

      if (v10)
      {
        *buf = 136446466;
        v16 = "tcp_connection_set_no_expensive";
        v17 = 2082;
        v18 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v9, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v4)
    {
      return;
    }

    goto LABEL_15;
  }

  v2 = *(a1 + 48);

  nw_parameters_set_prohibit_expensive(v2, a2);
}

void tcp_connection_set_url(uint64_t a1, _BYTE *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    *buf = 136446210;
    v16 = "tcp_connection_set_url";
    v4 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (__nwlog_fault(v4, &type, &v13))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v6 = type;
        if (!os_log_type_enabled(v5, type))
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v16 = "tcp_connection_set_url";
        v7 = "%{public}s called with null connection";
LABEL_19:
        v11 = v5;
        v12 = v6;
        goto LABEL_20;
      }

      if (v13 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v6 = type;
        if (!os_log_type_enabled(v5, type))
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v16 = "tcp_connection_set_url";
        v7 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_19;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v9 = type;
      v10 = os_log_type_enabled(v5, type);
      if (!backtrace_string)
      {
        if (!v10)
        {
LABEL_21:

          if (!v4)
          {
            return;
          }

LABEL_15:
          free(v4);
          return;
        }

        *buf = 136446210;
        v16 = "tcp_connection_set_url";
        v7 = "%{public}s called with null connection, no backtrace";
        v11 = v5;
        v12 = v9;
LABEL_20:
        _os_log_impl(&dword_181A37000, v11, v12, v7, buf, 0xCu);
        goto LABEL_21;
      }

      if (v10)
      {
        *buf = 136446466;
        v16 = "tcp_connection_set_url";
        v17 = 2082;
        v18 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v9, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v4)
    {
      return;
    }

    goto LABEL_15;
  }

  v2 = *(a1 + 48);

  nw_parameters_set_url(v2, a2);
}

void tcp_connection_set_proxies(void *a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    *buf = 136446210;
    v21 = "tcp_connection_set_proxies";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (__nwlog_fault(v9, &type, &v18))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v11 = type;
        if (!os_log_type_enabled(v10, type))
        {
          goto LABEL_23;
        }

        *buf = 136446210;
        v21 = "tcp_connection_set_proxies";
        v12 = "%{public}s called with null connection";
LABEL_21:
        v16 = v10;
        v17 = v11;
        goto LABEL_22;
      }

      if (v18 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v11 = type;
        if (!os_log_type_enabled(v10, type))
        {
          goto LABEL_23;
        }

        *buf = 136446210;
        v21 = "tcp_connection_set_proxies";
        v12 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_21;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      v14 = type;
      v15 = os_log_type_enabled(v10, type);
      if (!backtrace_string)
      {
        if (!v15)
        {
LABEL_23:

          if (!v9)
          {
            goto LABEL_25;
          }

LABEL_24:
          free(v9);
          goto LABEL_25;
        }

        *buf = 136446210;
        v21 = "tcp_connection_set_proxies";
        v12 = "%{public}s called with null connection, no backtrace";
        v16 = v10;
        v17 = v14;
LABEL_22:
        _os_log_impl(&dword_181A37000, v16, v17, v12, buf, 0xCu);
        goto LABEL_23;
      }

      if (v15)
      {
        *buf = 136446466;
        v21 = "tcp_connection_set_proxies";
        v22 = 2082;
        v23 = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v14, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v9)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (v4)
  {
    if (object_getClass(v4) == MEMORY[0x1E69E9E80] && !xpc_dictionary_get_count(v5))
    {
      nw_parameters_set_no_proxy(v3[6], 1);
      goto LABEL_25;
    }

    v6 = v3[6];
    v7 = v5;
  }

  else
  {
    nw_parameters_set_no_proxy(v3[6], 0);
    v6 = v3[6];
    v7 = 0;
  }

  nw_parameters_set_proxy_configuration(v6, v7);
LABEL_25:
}

void tcp_connection_set_persistent(void *a1, int a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v5 = nw_parameters_copy_preferred_netagent_domains(v3[6]);
    v6 = nw_parameters_copy_preferred_netagent_types(v4[6]);
    v7 = v6;
    if (!a2)
    {
      if (v5)
      {
        v13 = v6 == 0;
      }

      else
      {
        v13 = 1;
      }

      if (!v13 && xpc_array_get_count(v5))
      {
        v14 = xpc_array_create(0, 0);
        v15 = xpc_array_create(0, 0);
        applier[0] = MEMORY[0x1E69E9820];
        applier[1] = 3221225472;
        applier[2] = __tcp_connection_set_persistent_block_invoke;
        applier[3] = &unk_1E6A31300;
        v35 = v7;
        v16 = v14;
        v36 = v16;
        v17 = v15;
        v37 = v17;
        xpc_array_apply(v5, applier);
        v18 = v16;

        v7 = v17;
        v5 = v18;
      }

      goto LABEL_50;
    }

    if (v5)
    {
      if (v6)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v5 = xpc_array_create(0, 0);
      if (v7)
      {
LABEL_5:
        if (!v5)
        {
          goto LABEL_28;
        }

        goto LABEL_26;
      }
    }

    v7 = xpc_array_create(0, 0);
    if (!v5)
    {
      goto LABEL_28;
    }

LABEL_26:
    if (v7)
    {
      xpc_array_set_string(v5, 0xFFFFFFFFFFFFFFFFLL, "Persistent");
      xpc_array_set_string(v7, 0xFFFFFFFFFFFFFFFFLL, "Persistent");
LABEL_50:
      nw_parameters_set_preferred_netagent_classes(v4[6], v5, v7);

      goto LABEL_51;
    }

LABEL_28:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v22 = gLogObj;
    *buf = 136446210;
    v41 = "tcp_connection_set_persistent";
    v23 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v38 = 0;
    if (!__nwlog_fault(v23, &type, &v38))
    {
      goto LABEL_48;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v24 = gLogObj;
      v25 = type;
      if (os_log_type_enabled(v24, type))
      {
        *buf = 136446210;
        v41 = "tcp_connection_set_persistent";
        v26 = "%{public}s xpc_array_create failed";
LABEL_45:
        v32 = v24;
        v33 = v25;
LABEL_46:
        _os_log_impl(&dword_181A37000, v32, v33, v26, buf, 0xCu);
      }
    }

    else
    {
      if (v38 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v24 = gLogObj;
        v30 = type;
        v31 = os_log_type_enabled(v24, type);
        if (backtrace_string)
        {
          if (v31)
          {
            *buf = 136446466;
            v41 = "tcp_connection_set_persistent";
            v42 = 2082;
            v43 = backtrace_string;
            _os_log_impl(&dword_181A37000, v24, v30, "%{public}s xpc_array_create failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_48;
        }

        if (!v31)
        {
          goto LABEL_47;
        }

        *buf = 136446210;
        v41 = "tcp_connection_set_persistent";
        v26 = "%{public}s xpc_array_create failed, no backtrace";
        v32 = v24;
        v33 = v30;
        goto LABEL_46;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v24 = gLogObj;
      v25 = type;
      if (os_log_type_enabled(v24, type))
      {
        *buf = 136446210;
        v41 = "tcp_connection_set_persistent";
        v26 = "%{public}s xpc_array_create failed, backtrace limit exceeded";
        goto LABEL_45;
      }
    }

LABEL_47:

LABEL_48:
    if (v23)
    {
      free(v23);
    }

    goto LABEL_50;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v8 = gLogObj;
  *buf = 136446210;
  v41 = "tcp_connection_set_persistent";
  v9 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v38 = 0;
  if (!__nwlog_fault(v9, &type, &v38))
  {
    goto LABEL_22;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    v11 = type;
    if (!os_log_type_enabled(v10, type))
    {
      goto LABEL_36;
    }

    *buf = 136446210;
    v41 = "tcp_connection_set_persistent";
    v12 = "%{public}s called with null connection";
LABEL_34:
    v27 = v10;
    v28 = v11;
LABEL_35:
    _os_log_impl(&dword_181A37000, v27, v28, v12, buf, 0xCu);
    goto LABEL_36;
  }

  if (v38 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    v11 = type;
    if (!os_log_type_enabled(v10, type))
    {
      goto LABEL_36;
    }

    *buf = 136446210;
    v41 = "tcp_connection_set_persistent";
    v12 = "%{public}s called with null connection, backtrace limit exceeded";
    goto LABEL_34;
  }

  v19 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v10 = gLogObj;
  v20 = type;
  v21 = os_log_type_enabled(v10, type);
  if (v19)
  {
    if (v21)
    {
      *buf = 136446466;
      v41 = "tcp_connection_set_persistent";
      v42 = 2082;
      v43 = v19;
      _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v19);
LABEL_22:
    if (!v9)
    {
      goto LABEL_51;
    }

    goto LABEL_37;
  }

  if (v21)
  {
    *buf = 136446210;
    v41 = "tcp_connection_set_persistent";
    v12 = "%{public}s called with null connection, no backtrace";
    v27 = v10;
    v28 = v20;
    goto LABEL_35;
  }

LABEL_36:

  if (v9)
  {
LABEL_37:
    free(v9);
  }

LABEL_51:
}

uint64_t __tcp_connection_set_persistent_block_invoke(xpc_object_t *a1, size_t a2, void *a3)
{
  v5 = a3;
  v6 = xpc_array_get_value(a1[4], a2);
  Class = object_getClass(v5);
  v8 = MEMORY[0x1E69E9F10];
  if (Class == MEMORY[0x1E69E9F10] && object_getClass(v6) == v8)
  {
    string_ptr = xpc_string_get_string_ptr(v5);
    if (strncmp(string_ptr, "Persistent", 0x20uLL) || (v10 = xpc_string_get_string_ptr(v5), strncmp(v10, "Persistent", 0x20uLL)))
    {
      xpc_array_append_value(a1[5], v5);
      xpc_array_append_value(a1[6], v6);
    }
  }

  return 1;
}

void tcp_connection_set_opportunistic(void *a1, int a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    *buf = 136446210;
    v16 = "tcp_connection_set_opportunistic";
    v4 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (__nwlog_fault(v4, &type, &v13))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v6 = type;
        if (!os_log_type_enabled(v5, type))
        {
          goto LABEL_24;
        }

        *buf = 136446210;
        v16 = "tcp_connection_set_opportunistic";
        v7 = "%{public}s called with null connection";
LABEL_22:
        v11 = v5;
        v12 = v6;
        goto LABEL_23;
      }

      if (v13 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v6 = type;
        if (!os_log_type_enabled(v5, type))
        {
          goto LABEL_24;
        }

        *buf = 136446210;
        v16 = "tcp_connection_set_opportunistic";
        v7 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_22;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v9 = type;
      v10 = os_log_type_enabled(v5, type);
      if (!backtrace_string)
      {
        if (!v10)
        {
LABEL_24:

          if (!v4)
          {
            return;
          }

LABEL_18:
          free(v4);
          return;
        }

        *buf = 136446210;
        v16 = "tcp_connection_set_opportunistic";
        v7 = "%{public}s called with null connection, no backtrace";
        v11 = v5;
        v12 = v9;
LABEL_23:
        _os_log_impl(&dword_181A37000, v11, v12, v7, buf, 0xCu);
        goto LABEL_24;
      }

      if (v10)
      {
        *buf = 136446466;
        v16 = "tcp_connection_set_opportunistic";
        v17 = 2082;
        v18 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v9, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v4)
    {
      return;
    }

    goto LABEL_18;
  }

  if (a2)
  {
    v2 = 100;
  }

  else
  {
    v2 = 0;
  }

  tcp_connection_set_traffic_class(a1, v2);
}

void tcp_connection_set_traffic_class(void *a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    *buf = 136446210;
    v19 = "tcp_connection_set_traffic_class";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (__nwlog_fault(v7, &type, &v16))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v9 = type;
        if (!os_log_type_enabled(v8, type))
        {
          goto LABEL_23;
        }

        *buf = 136446210;
        v19 = "tcp_connection_set_traffic_class";
        v10 = "%{public}s called with null connection";
LABEL_21:
        v14 = v8;
        v15 = v9;
        goto LABEL_22;
      }

      if (v16 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v9 = type;
        if (!os_log_type_enabled(v8, type))
        {
          goto LABEL_23;
        }

        *buf = 136446210;
        v19 = "tcp_connection_set_traffic_class";
        v10 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_21;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v12 = type;
      v13 = os_log_type_enabled(v8, type);
      if (!backtrace_string)
      {
        if (!v13)
        {
LABEL_23:

          if (!v7)
          {
            goto LABEL_25;
          }

LABEL_24:
          free(v7);
          goto LABEL_25;
        }

        *buf = 136446210;
        v19 = "tcp_connection_set_traffic_class";
        v10 = "%{public}s called with null connection, no backtrace";
        v14 = v8;
        v15 = v12;
LABEL_22:
        _os_log_impl(&dword_181A37000, v14, v15, v10, buf, 0xCu);
        goto LABEL_23;
      }

      if (v13)
      {
        *buf = 136446466;
        v19 = "tcp_connection_set_traffic_class";
        v20 = 2082;
        v21 = backtrace_string;
        _os_log_impl(&dword_181A37000, v8, v12, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v7)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  os_unfair_lock_lock(v3 + 30);
  if (nw_parameters_get_traffic_class(*&v4[12]._os_unfair_lock_opaque) != a2)
  {
    v5 = *&v4[4]._os_unfair_lock_opaque;
    if (v5)
    {
      nw_connection_reset_traffic_class(v5, a2);
    }

    else if (LOBYTE(v4[39]._os_unfair_lock_opaque) - 1 >= 2)
    {
      nw_parameters_set_traffic_class(*&v4[12]._os_unfair_lock_opaque, a2);
    }
  }

  os_unfair_lock_unlock(v4 + 30);
LABEL_25:
}

void tcp_connection_set_no_fallback(uint64_t a1, char a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    *buf = 136446210;
    v16 = "tcp_connection_set_no_fallback";
    v4 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (__nwlog_fault(v4, &type, &v13))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v6 = type;
        if (!os_log_type_enabled(v5, type))
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v16 = "tcp_connection_set_no_fallback";
        v7 = "%{public}s called with null connection";
LABEL_19:
        v11 = v5;
        v12 = v6;
        goto LABEL_20;
      }

      if (v13 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v6 = type;
        if (!os_log_type_enabled(v5, type))
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v16 = "tcp_connection_set_no_fallback";
        v7 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_19;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v9 = type;
      v10 = os_log_type_enabled(v5, type);
      if (!backtrace_string)
      {
        if (!v10)
        {
LABEL_21:

          if (!v4)
          {
            return;
          }

LABEL_15:
          free(v4);
          return;
        }

        *buf = 136446210;
        v16 = "tcp_connection_set_no_fallback";
        v7 = "%{public}s called with null connection, no backtrace";
        v11 = v5;
        v12 = v9;
LABEL_20:
        _os_log_impl(&dword_181A37000, v11, v12, v7, buf, 0xCu);
        goto LABEL_21;
      }

      if (v10)
      {
        *buf = 136446466;
        v16 = "tcp_connection_set_no_fallback";
        v17 = 2082;
        v18 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v9, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v4)
    {
      return;
    }

    goto LABEL_15;
  }

  v2 = *(a1 + 48);

  nw_parameters_set_no_fallback(v2, a2);
}

void tcp_connection_set_fallback_fast()
{
  v3 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v0 = gLogObj;
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    v1 = 136446210;
    v2 = "tcp_connection_set_fallback_fast";
    _os_log_impl(&dword_181A37000, v0, OS_LOG_TYPE_ERROR, "%{public}s tcp_connection_set_fallback_fast is deprecated", &v1, 0xCu);
  }
}

void tcp_connection_set_usage_model(void *a1, int a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    *buf = 136446210;
    v20 = "tcp_connection_set_usage_model";
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (__nwlog_fault(v8, &type, &v17))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = type;
        if (!os_log_type_enabled(v9, type))
        {
          goto LABEL_25;
        }

        *buf = 136446210;
        v20 = "tcp_connection_set_usage_model";
        v11 = "%{public}s called with null connection";
LABEL_23:
        v15 = v9;
        v16 = v10;
        goto LABEL_24;
      }

      if (v17 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = type;
        if (!os_log_type_enabled(v9, type))
        {
          goto LABEL_25;
        }

        *buf = 136446210;
        v20 = "tcp_connection_set_usage_model";
        v11 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_23;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      v13 = type;
      v14 = os_log_type_enabled(v9, type);
      if (!backtrace_string)
      {
        if (!v14)
        {
LABEL_25:

          if (!v8)
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }

        *buf = 136446210;
        v20 = "tcp_connection_set_usage_model";
        v11 = "%{public}s called with null connection, no backtrace";
        v15 = v9;
        v16 = v13;
LABEL_24:
        _os_log_impl(&dword_181A37000, v15, v16, v11, buf, 0xCu);
        goto LABEL_25;
      }

      if (v14)
      {
        *buf = 136446466;
        v20 = "tcp_connection_set_usage_model";
        v21 = 2082;
        v22 = backtrace_string;
        _os_log_impl(&dword_181A37000, v9, v13, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v8)
    {
      goto LABEL_20;
    }

LABEL_19:
    free(v8);
    goto LABEL_20;
  }

  v3[31] = a2;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v5 = gLogObj;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(v4 + 12);
    *buf = 136446722;
    v20 = "tcp_connection_set_usage_model";
    v21 = 2048;
    v22 = v6;
    v23 = 1024;
    v24 = a2;
    _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_DEBUG, "%{public}s %llu setting usage model to %d", buf, 0x1Cu);
  }

  if (*(v4 + 31) == 1)
  {
    if (tcp_connection_is_first_party_onceToken != -1)
    {
      dispatch_once(&tcp_connection_is_first_party_onceToken, &__block_literal_global_34688);
    }

    if ((tcp_connection_is_first_party_is_first_party & 1) == 0)
    {
      nw_parameters_set_no_fallback(*(v4 + 6), 1);
    }
  }

LABEL_20:
}

__CFBundle *__tcp_connection_is_first_party_block_invoke()
{
  result = CFBundleGetMainBundle();
  if (!result || (result = CFBundleGetValueForInfoDictionaryKey(result, *MEMORY[0x1E695E4F0])) == 0 || (result = CFStringHasPrefix(result, @"com.apple."), result))
  {
    tcp_connection_is_first_party_is_first_party = 1;
  }

  return result;
}

void tcp_connection_add_event_excessive_keepalives(uint64_t a1, int a2, int a3, int a4)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    *buf = 136446210;
    v18 = "tcp_connection_add_event_excessive_keepalives";
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (__nwlog_fault(v6, &type, &v15))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        v8 = type;
        if (!os_log_type_enabled(v7, type))
        {
          goto LABEL_24;
        }

        *buf = 136446210;
        v18 = "tcp_connection_add_event_excessive_keepalives";
        v9 = "%{public}s called with null connection";
LABEL_22:
        v13 = v7;
        v14 = v8;
        goto LABEL_23;
      }

      if (v15 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        v8 = type;
        if (!os_log_type_enabled(v7, type))
        {
          goto LABEL_24;
        }

        *buf = 136446210;
        v18 = "tcp_connection_add_event_excessive_keepalives";
        v9 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_22;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v11 = type;
      v12 = os_log_type_enabled(v7, type);
      if (!backtrace_string)
      {
        if (!v12)
        {
LABEL_24:

          if (!v6)
          {
            return;
          }

LABEL_18:
          free(v6);
          return;
        }

        *buf = 136446210;
        v18 = "tcp_connection_add_event_excessive_keepalives";
        v9 = "%{public}s called with null connection, no backtrace";
        v13 = v7;
        v14 = v11;
LABEL_23:
        _os_log_impl(&dword_181A37000, v13, v14, v9, buf, 0xCu);
        goto LABEL_24;
      }

      if (v12)
      {
        *buf = 136446466;
        v18 = "tcp_connection_add_event_excessive_keepalives";
        v19 = 2082;
        v20 = backtrace_string;
        _os_log_impl(&dword_181A37000, v7, v11, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v6)
    {
      return;
    }

    goto LABEL_18;
  }

  if (a2)
  {
    v4 = 32;
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 159) = *(a1 + 159) & 0xDF | v4;
  *(a1 + 136) = a4;
  *(a1 + 140) = a3;

  tcp_connection_set_keepalive_handler_on_nw_connection(a1);
}

void tcp_connection_set_keepalive_handler_on_nw_connection(void *a1)
{
  v1 = a1;
  v2 = v1;
  v3 = *(v1 + 2);
  if (v3)
  {
    v5 = *(v1 + 34);
    v4 = *(v1 + 35);
    if ((*(v1 + 159) & 0x20) != 0)
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __tcp_connection_set_keepalive_handler_on_nw_connection_block_invoke;
      v6[3] = &unk_1E6A3D868;
      v7 = v1;
      nw_connection_set_excessive_keepalive_handler(v3, v4, v5, v6);
    }

    else
    {
      nw_connection_set_excessive_keepalive_handler(*(v1 + 2), *(v1 + 35), *(v1 + 34), 0);
    }
  }
}

void tcp_connection_send_event_unlocked(void *a1, int a2, const void *a3, size_t a4, uint64_t a5)
{
  v14 = a1;
  v15 = 0;
  v16 = 0;
  os_unfair_lock_lock(v14 + 30);
  if ((tcp_connection_fillout_event_locked(v14, &v15, a2, a3, a4, a5) & 1) == 0)
  {
    os_unfair_lock_unlock(v14 + 30);
    goto LABEL_10;
  }

  v9 = _Block_copy(*(v14 + 8));
  os_unfair_lock_unlock(v14 + 30);
  v10 = v14;
  v11 = v9;
  v12 = v11;
  if (v11 && v10[156] != 255)
  {
    v13 = v15;
    (*(v11 + 2))(v11, v16, v15);
    if (!v13)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v13 = v15;
  if (v15)
  {
LABEL_8:
    free(v13);
  }

LABEL_9:

LABEL_10:
}

uint64_t tcp_connection_fillout_event_locked(void *a1, uint64_t a2, int a3, const void *a4, size_t a5, uint64_t a6)
{
  v39 = *MEMORY[0x1E69E9840];
  v11 = a1;
  v12 = v11;
  if (*(v11 + 156) == 255)
  {
    goto LABEL_73;
  }

  if (a3 == 3)
  {
    *(v11 + 156) = 3;
    *(v11 + 158) |= 0x30u;
  }

  if (!v11[8])
  {
    v14 = 0;
    if (a3 != 7)
    {
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  v13 = v11;
  v14 = 1;
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      if ((v13[158] & 8) == 0)
      {
        v16 = v13[158] | 8;
        goto LABEL_20;
      }
    }

    else
    {
      if (a3 != 4)
      {
        goto LABEL_23;
      }

      if ((v13[158] & 2) == 0)
      {
        v16 = v13[158] | 2;
        goto LABEL_20;
      }
    }

    goto LABEL_21;
  }

  if (a3 == 1)
  {
    if ((v13[158] & 4) == 0)
    {
      v16 = v13[158] | 4;
      goto LABEL_20;
    }

LABEL_21:
    v14 = 0;
    goto LABEL_23;
  }

  if (a3 != 2)
  {
    goto LABEL_23;
  }

  v15 = v13[158];
  if ((v15 & 1) == 0)
  {
    v16 = v15 | 1;
LABEL_20:
    v13[158] = v16;
    goto LABEL_23;
  }

  v14 = v15 ^ 1;
LABEL_23:

  if (a3 != 7)
  {
LABEL_24:
    if (a3 != 1)
    {
      goto LABEL_27;
    }
  }

LABEL_25:
  v17 = v12[10];
  if (v17)
  {
    dispatch_source_cancel(v17);
    v18 = v12[10];
    v12[10] = 0;
  }

LABEL_27:
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v19 = gLogObj;
  if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_66;
  }

  v20 = v12[12];
  if (a3 <= 0x40000000)
  {
    if (a3 > 4)
    {
      if (a3 <= 6)
      {
        if (a3 == 5)
        {
          v21 = "TCP_CONNECTION_EVENT_BETTER_ROUTE";
        }

        else
        {
          v21 = "TCP_CONNECTION_EVENT_VIABILITY_CHANGED";
        }

        goto LABEL_65;
      }

      if (a3 == 7)
      {
        v21 = "TCP_CONNECTION_EVENT_WAITING";
        goto LABEL_65;
      }

      if (a3 == 8)
      {
        v21 = "TCP_CONNECTION_EVENT_TLS_HANDSHAKE_COMPLETE";
        goto LABEL_65;
      }
    }

    else
    {
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v21 = "TCP_CONNECTION_EVENT_DISCONNECTED";
        }

        else
        {
          v21 = "TCP_CONNECTION_EVENT_WRITE_CLOSE";
        }

        goto LABEL_65;
      }

      if (a3 == 1)
      {
        v21 = "TCP_CONNECTION_EVENT_CONNECTED";
        goto LABEL_65;
      }

      if (a3 == 2)
      {
        v21 = "TCP_CONNECTION_EVENT_READ_CLOSE";
        goto LABEL_65;
      }
    }

LABEL_64:
    v21 = "UNKNOWN";
    goto LABEL_65;
  }

  if (a3 <= 1073741828)
  {
    if (a3 > 1073741826)
    {
      if (a3 == 1073741827)
      {
        v21 = "TCP_CONNECTION_EVENT_DNSSEC";
      }

      else
      {
        v21 = "TCP_CONNECTION_EVENT_ADAPTIVE_READ_TIMEOUT";
      }
    }

    else if (a3 == 1073741825)
    {
      v21 = "TCP_CONNECTION_EVENT_KEEPALIVE";
    }

    else
    {
      v21 = "TCP_CONNECTION_EVENT_CONDITIONS_CHANGED";
    }

    goto LABEL_65;
  }

  if (a3 <= 1073741830)
  {
    if (a3 == 1073741829)
    {
      v21 = "TCP_CONNECTION_EVENT_ADAPTIVE_WRITE_TIMEOUT";
    }

    else
    {
      v21 = "TCP_CONNECTION_EVENT_LOW_THROUGHPUT";
    }

    goto LABEL_65;
  }

  if (a3 == 1073741831)
  {
    v21 = "TCP_CONNECTION_EVENT_BETTER_ROUTE_CHANGED";
    goto LABEL_65;
  }

  if (a3 == 1073741832)
  {
    v21 = "TCP_CONNECTION_EVENT_CONNECTION_ATTEMPT_TIMEOUT";
    goto LABEL_65;
  }

  if (a3 != 1073741833)
  {
    goto LABEL_64;
  }

  v21 = "TCP_CONNECTION_EVENT_CONNECTION_QUALITY_CHANGED";
LABEL_65:
  *buf = 136447234;
  v30 = "tcp_connection_fillout_event_locked";
  v31 = 2048;
  v32 = v20;
  v33 = 2082;
  v34 = v21;
  v35 = 2082;
  v36 = a6;
  v37 = 1024;
  v38 = v14 & 1;
  _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_DEBUG, "%{public}s %llu event: %{public}s, reason: %{public}s, should deliver: %{BOOL}d", buf, 0x30u);
LABEL_66:

  if ((v14 & 1) == 0)
  {
LABEL_73:
    v26 = 0;
LABEL_76:

    return v26;
  }

  if (!a4)
  {
    v22 = 0;
    goto LABEL_75;
  }

  if (!a5)
  {
    v27 = __nwlog_obj();
    os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
    *buf = 136446210;
    v30 = "tcp_connection_fillout_event_locked";
    v28 = _os_log_send_and_compose_impl();

    result = __nwlog_should_abort(v28);
    if (result)
    {
      goto LABEL_79;
    }

    free(v28);
  }

  v22 = malloc_type_malloc(a5, 0x81E3EAC1uLL);
  if (v22)
  {
LABEL_72:
    memcpy(v22, a4, a5);
LABEL_75:
    *(a2 + 8) = a3;
    *a2 = v22;
    v26 = 1;
    goto LABEL_76;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v23 = gLogObj;
  os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
  *buf = 136446210;
  v30 = "tcp_connection_fillout_event_locked";
  v24 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v24);
  if (!result)
  {
    free(v24);
    goto LABEL_72;
  }

LABEL_79:
  __break(1u);
  return result;
}

void tcp_connection_add_event_adaptive_read_timeout(uint64_t a1, int a2, int a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    *buf = 136446210;
    v17 = "tcp_connection_add_event_adaptive_read_timeout";
    v5 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v14 = 0;
    if (__nwlog_fault(v5, &type, &v14))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v6 = gLogObj;
        v7 = type;
        if (!os_log_type_enabled(v6, type))
        {
          goto LABEL_24;
        }

        *buf = 136446210;
        v17 = "tcp_connection_add_event_adaptive_read_timeout";
        v8 = "%{public}s called with null connection";
LABEL_22:
        v12 = v6;
        v13 = v7;
        goto LABEL_23;
      }

      if (v14 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v6 = gLogObj;
        v7 = type;
        if (!os_log_type_enabled(v6, type))
        {
          goto LABEL_24;
        }

        *buf = 136446210;
        v17 = "tcp_connection_add_event_adaptive_read_timeout";
        v8 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_22;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      v10 = type;
      v11 = os_log_type_enabled(v6, type);
      if (!backtrace_string)
      {
        if (!v11)
        {
LABEL_24:

          if (!v5)
          {
            return;
          }

LABEL_18:
          free(v5);
          return;
        }

        *buf = 136446210;
        v17 = "tcp_connection_add_event_adaptive_read_timeout";
        v8 = "%{public}s called with null connection, no backtrace";
        v12 = v6;
        v13 = v10;
LABEL_23:
        _os_log_impl(&dword_181A37000, v12, v13, v8, buf, 0xCu);
        goto LABEL_24;
      }

      if (v11)
      {
        *buf = 136446466;
        v17 = "tcp_connection_add_event_adaptive_read_timeout";
        v18 = 2082;
        v19 = backtrace_string;
        _os_log_impl(&dword_181A37000, v6, v10, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v5)
    {
      return;
    }

    goto LABEL_18;
  }

  if (a2)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(a1 + 159) = *(a1 + 159) & 0xBF | v3;
  *(a1 + 144) = a3;

  tcp_connection_set_adaptive_read_handler_on_nw_connection(a1);
}

void tcp_connection_set_adaptive_read_handler_on_nw_connection(void *a1)
{
  v1 = a1;
  v2 = v1;
  v3 = *(v1 + 2);
  if (v3)
  {
    v4 = *(v1 + 36);
    if ((*(v1 + 159) & 0x40) != 0)
    {
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __tcp_connection_set_adaptive_read_handler_on_nw_connection_block_invoke;
      v5[3] = &unk_1E6A3D868;
      v6 = v1;
      nw_connection_set_adaptive_read_handler(v3, v4, v5);
    }

    else
    {
      nw_connection_set_adaptive_read_handler(*(v1 + 2), *(v1 + 36), 0);
    }
  }
}

void tcp_connection_add_event_adaptive_write_timeout(uint64_t a1, int a2, int a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    *buf = 136446210;
    v17 = "tcp_connection_add_event_adaptive_write_timeout";
    v5 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v14 = 0;
    if (__nwlog_fault(v5, &type, &v14))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v6 = gLogObj;
        v7 = type;
        if (!os_log_type_enabled(v6, type))
        {
          goto LABEL_24;
        }

        *buf = 136446210;
        v17 = "tcp_connection_add_event_adaptive_write_timeout";
        v8 = "%{public}s called with null connection";
LABEL_22:
        v12 = v6;
        v13 = v7;
        goto LABEL_23;
      }

      if (v14 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v6 = gLogObj;
        v7 = type;
        if (!os_log_type_enabled(v6, type))
        {
          goto LABEL_24;
        }

        *buf = 136446210;
        v17 = "tcp_connection_add_event_adaptive_write_timeout";
        v8 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_22;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      v10 = type;
      v11 = os_log_type_enabled(v6, type);
      if (!backtrace_string)
      {
        if (!v11)
        {
LABEL_24:

          if (!v5)
          {
            return;
          }

LABEL_18:
          free(v5);
          return;
        }

        *buf = 136446210;
        v17 = "tcp_connection_add_event_adaptive_write_timeout";
        v8 = "%{public}s called with null connection, no backtrace";
        v12 = v6;
        v13 = v10;
LABEL_23:
        _os_log_impl(&dword_181A37000, v12, v13, v8, buf, 0xCu);
        goto LABEL_24;
      }

      if (v11)
      {
        *buf = 136446466;
        v17 = "tcp_connection_add_event_adaptive_write_timeout";
        v18 = 2082;
        v19 = backtrace_string;
        _os_log_impl(&dword_181A37000, v6, v10, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v5)
    {
      return;
    }

    goto LABEL_18;
  }

  if (a2)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *(a1 + 159) = v3 & 0x80 | *(a1 + 159) & 0x7F;
  *(a1 + 148) = a3;

  tcp_connection_set_adaptive_write_handler_on_nw_connection(a1);
}

void tcp_connection_set_adaptive_write_handler_on_nw_connection(void *a1)
{
  v1 = a1;
  v2 = v1;
  v3 = *(v1 + 2);
  if (v3)
  {
    v4 = *(v1 + 37);
    if (v1[159] < 0)
    {
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __tcp_connection_set_adaptive_write_handler_on_nw_connection_block_invoke;
      v5[3] = &unk_1E6A3D868;
      v6 = v1;
      nw_connection_set_adaptive_write_handler(v3, v4, v5);
    }

    else
    {
      nw_connection_set_adaptive_write_handler(*(v1 + 2), *(v1 + 37), 0);
    }
  }
}

uint64_t tcp_connection_did_fallback(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    *buf = 136446210;
    v20 = "tcp_connection_did_fallback";
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (__nwlog_fault(v6, &type, &v17))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        v8 = type;
        if (!os_log_type_enabled(v7, type))
        {
          goto LABEL_24;
        }

        *buf = 136446210;
        v20 = "tcp_connection_did_fallback";
        v9 = "%{public}s called with null connection";
LABEL_22:
        v15 = v7;
        v16 = v8;
        goto LABEL_23;
      }

      if (v17 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        v8 = type;
        if (!os_log_type_enabled(v7, type))
        {
          goto LABEL_24;
        }

        *buf = 136446210;
        v20 = "tcp_connection_did_fallback";
        v9 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_22;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v12 = type;
      v13 = os_log_type_enabled(v7, type);
      if (!backtrace_string)
      {
        if (!v13)
        {
LABEL_24:

          if (!v6)
          {
            goto LABEL_18;
          }

          goto LABEL_17;
        }

        *buf = 136446210;
        v20 = "tcp_connection_did_fallback";
        v9 = "%{public}s called with null connection, no backtrace";
        v15 = v7;
        v16 = v12;
LABEL_23:
        _os_log_impl(&dword_181A37000, v15, v16, v9, buf, 0xCu);
        goto LABEL_24;
      }

      if (v13)
      {
        *buf = 136446466;
        v20 = "tcp_connection_did_fallback";
        v21 = 2082;
        v22 = backtrace_string;
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v6)
    {
LABEL_18:
      v4 = 0;
      goto LABEL_19;
    }

LABEL_17:
    free(v6);
    goto LABEL_18;
  }

  v3 = *(v1 + 2);
  if (!v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v20 = "tcp_connection_did_fallback";
      _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_ERROR, "%{public}s API Misuse: Function must be called after tcp_connection_start", buf, 0xCu);
    }

    goto LABEL_18;
  }

  v4 = nw_connection_used_fallback(v3);
LABEL_19:

  return v4;
}

void tcp_connection_set_source_application(uint64_t a1, _OWORD *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 48);
    v3 = a2[1];
    *buf = *a2;
    *&buf[16] = v3;
    nw_parameters_set_source_application(v2, buf);
    return;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v4 = gLogObj;
  *buf = 136446210;
  *&buf[4] = "tcp_connection_set_source_application";
  v5 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (!__nwlog_fault(v5, &type, &v14))
  {
LABEL_12:
    if (!v5)
    {
      return;
    }

    goto LABEL_13;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    v7 = type;
    if (!os_log_type_enabled(v6, type))
    {
      goto LABEL_19;
    }

    *buf = 136446210;
    *&buf[4] = "tcp_connection_set_source_application";
    v8 = "%{public}s called with null connection";
LABEL_17:
    v12 = v6;
    v13 = v7;
LABEL_18:
    _os_log_impl(&dword_181A37000, v12, v13, v8, buf, 0xCu);
    goto LABEL_19;
  }

  if (v14 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    v7 = type;
    if (!os_log_type_enabled(v6, type))
    {
      goto LABEL_19;
    }

    *buf = 136446210;
    *&buf[4] = "tcp_connection_set_source_application";
    v8 = "%{public}s called with null connection, backtrace limit exceeded";
    goto LABEL_17;
  }

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
      *&buf[4] = "tcp_connection_set_source_application";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v6, v10, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
    goto LABEL_12;
  }

  if (v11)
  {
    *buf = 136446210;
    *&buf[4] = "tcp_connection_set_source_application";
    v8 = "%{public}s called with null connection, no backtrace";
    v12 = v6;
    v13 = v10;
    goto LABEL_18;
  }

LABEL_19:

  if (v5)
  {
LABEL_13:
    free(v5);
  }
}

void tcp_connection_set_source_application_by_bundle(uint64_t a1, char *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    *buf = 136446210;
    v16 = "tcp_connection_set_source_application_by_bundle";
    v4 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (__nwlog_fault(v4, &type, &v13))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v6 = type;
        if (!os_log_type_enabled(v5, type))
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v16 = "tcp_connection_set_source_application_by_bundle";
        v7 = "%{public}s called with null connection";
LABEL_19:
        v11 = v5;
        v12 = v6;
        goto LABEL_20;
      }

      if (v13 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v6 = type;
        if (!os_log_type_enabled(v5, type))
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v16 = "tcp_connection_set_source_application_by_bundle";
        v7 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_19;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v9 = type;
      v10 = os_log_type_enabled(v5, type);
      if (!backtrace_string)
      {
        if (!v10)
        {
LABEL_21:

          if (!v4)
          {
            return;
          }

LABEL_15:
          free(v4);
          return;
        }

        *buf = 136446210;
        v16 = "tcp_connection_set_source_application_by_bundle";
        v7 = "%{public}s called with null connection, no backtrace";
        v11 = v5;
        v12 = v9;
LABEL_20:
        _os_log_impl(&dword_181A37000, v11, v12, v7, buf, 0xCu);
        goto LABEL_21;
      }

      if (v10)
      {
        *buf = 136446466;
        v16 = "tcp_connection_set_source_application_by_bundle";
        v17 = 2082;
        v18 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v9, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v4)
    {
      return;
    }

    goto LABEL_15;
  }

  v2 = *(a1 + 48);

  nw_parameters_set_source_application_by_bundle_id_internal(v2, a2);
}

void tcp_connection_set_account_identifier(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    *buf = 136446210;
    v16 = "tcp_connection_set_account_identifier";
    v4 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (__nwlog_fault(v4, &type, &v13))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v6 = type;
        if (!os_log_type_enabled(v5, type))
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v16 = "tcp_connection_set_account_identifier";
        v7 = "%{public}s called with null connection";
LABEL_19:
        v11 = v5;
        v12 = v6;
        goto LABEL_20;
      }

      if (v13 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v6 = type;
        if (!os_log_type_enabled(v5, type))
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v16 = "tcp_connection_set_account_identifier";
        v7 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_19;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v9 = type;
      v10 = os_log_type_enabled(v5, type);
      if (!backtrace_string)
      {
        if (!v10)
        {
LABEL_21:

          if (!v4)
          {
            return;
          }

LABEL_15:
          free(v4);
          return;
        }

        *buf = 136446210;
        v16 = "tcp_connection_set_account_identifier";
        v7 = "%{public}s called with null connection, no backtrace";
        v11 = v5;
        v12 = v9;
LABEL_20:
        _os_log_impl(&dword_181A37000, v11, v12, v7, buf, 0xCu);
        goto LABEL_21;
      }

      if (v10)
      {
        *buf = 136446466;
        v16 = "tcp_connection_set_account_identifier";
        v17 = 2082;
        v18 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v9, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v4)
    {
      return;
    }

    goto LABEL_15;
  }

  v2 = *(a1 + 48);

  nw_parameters_set_account_id(v2, a2);
}

void tcp_connection_set_no_delay(uint64_t a1, char a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    *buf = 136446210;
    v16 = "tcp_connection_set_no_delay";
    v4 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (__nwlog_fault(v4, &type, &v13))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v6 = type;
        if (!os_log_type_enabled(v5, type))
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v16 = "tcp_connection_set_no_delay";
        v7 = "%{public}s called with null connection";
LABEL_19:
        v11 = v5;
        v12 = v6;
        goto LABEL_20;
      }

      if (v13 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v6 = type;
        if (!os_log_type_enabled(v5, type))
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v16 = "tcp_connection_set_no_delay";
        v7 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_19;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v9 = type;
      v10 = os_log_type_enabled(v5, type);
      if (!backtrace_string)
      {
        if (!v10)
        {
LABEL_21:

          if (!v4)
          {
            return;
          }

LABEL_15:
          free(v4);
          return;
        }

        *buf = 136446210;
        v16 = "tcp_connection_set_no_delay";
        v7 = "%{public}s called with null connection, no backtrace";
        v11 = v5;
        v12 = v9;
LABEL_20:
        _os_log_impl(&dword_181A37000, v11, v12, v7, buf, 0xCu);
        goto LABEL_21;
      }

      if (v10)
      {
        *buf = 136446466;
        v16 = "tcp_connection_set_no_delay";
        v17 = 2082;
        v18 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v9, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v4)
    {
      return;
    }

    goto LABEL_15;
  }

  v2 = *(a1 + 48);

  nw_parameters_set_no_delay(v2, a2);
}

uint64_t tcp_connection_is_sleep_proxied(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    *buf = 136446210;
    v20 = "tcp_connection_is_sleep_proxied";
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (__nwlog_fault(v6, &type, &v17))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        v8 = type;
        if (!os_log_type_enabled(v7, type))
        {
          goto LABEL_24;
        }

        *buf = 136446210;
        v20 = "tcp_connection_is_sleep_proxied";
        v9 = "%{public}s called with null connection";
LABEL_22:
        v15 = v7;
        v16 = v8;
        goto LABEL_23;
      }

      if (v17 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        v8 = type;
        if (!os_log_type_enabled(v7, type))
        {
          goto LABEL_24;
        }

        *buf = 136446210;
        v20 = "tcp_connection_is_sleep_proxied";
        v9 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_22;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v12 = type;
      v13 = os_log_type_enabled(v7, type);
      if (!backtrace_string)
      {
        if (!v13)
        {
LABEL_24:

          if (!v6)
          {
            goto LABEL_18;
          }

          goto LABEL_17;
        }

        *buf = 136446210;
        v20 = "tcp_connection_is_sleep_proxied";
        v9 = "%{public}s called with null connection, no backtrace";
        v15 = v7;
        v16 = v12;
LABEL_23:
        _os_log_impl(&dword_181A37000, v15, v16, v9, buf, 0xCu);
        goto LABEL_24;
      }

      if (v13)
      {
        *buf = 136446466;
        v20 = "tcp_connection_is_sleep_proxied";
        v21 = 2082;
        v22 = backtrace_string;
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v6)
    {
LABEL_18:
      v4 = 0;
      goto LABEL_19;
    }

LABEL_17:
    free(v6);
    goto LABEL_18;
  }

  v3 = *(v1 + 2);
  if (!v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v20 = "tcp_connection_is_sleep_proxied";
      _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_ERROR, "%{public}s API Misuse: Function must be called after tcp_connection_start", buf, 0xCu);
    }

    goto LABEL_18;
  }

  v4 = nw_connection_uses_sleep_proxy(v3);
LABEL_19:

  return v4;
}

void tcp_connection_set_sleep_idle_interval(uint64_t a1, unsigned int a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    *buf = 136446210;
    v16 = "tcp_connection_set_sleep_idle_interval";
    v4 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (__nwlog_fault(v4, &type, &v13))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v6 = type;
        if (!os_log_type_enabled(v5, type))
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v16 = "tcp_connection_set_sleep_idle_interval";
        v7 = "%{public}s called with null connection";
LABEL_19:
        v11 = v5;
        v12 = v6;
        goto LABEL_20;
      }

      if (v13 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v6 = type;
        if (!os_log_type_enabled(v5, type))
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v16 = "tcp_connection_set_sleep_idle_interval";
        v7 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_19;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v9 = type;
      v10 = os_log_type_enabled(v5, type);
      if (!backtrace_string)
      {
        if (!v10)
        {
LABEL_21:

          if (!v4)
          {
            return;
          }

LABEL_15:
          free(v4);
          return;
        }

        *buf = 136446210;
        v16 = "tcp_connection_set_sleep_idle_interval";
        v7 = "%{public}s called with null connection, no backtrace";
        v11 = v5;
        v12 = v9;
LABEL_20:
        _os_log_impl(&dword_181A37000, v11, v12, v7, buf, 0xCu);
        goto LABEL_21;
      }

      if (v10)
      {
        *buf = 136446466;
        v16 = "tcp_connection_set_sleep_idle_interval";
        v17 = 2082;
        v18 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v9, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v4)
    {
      return;
    }

    goto LABEL_15;
  }

  v2 = *(a1 + 48);

  nw_parameters_set_sleep_keepalive_interval(v2, a2);
}

void tcp_connection_set_keepalive(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = v7;
  if (!v7)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    *buf = 136446210;
    v22 = "tcp_connection_set_keepalive";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (__nwlog_fault(v10, &type, &v19))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        v12 = type;
        if (!os_log_type_enabled(v11, type))
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v22 = "tcp_connection_set_keepalive";
        v13 = "%{public}s called with null connection";
LABEL_17:
        v17 = v11;
        v18 = v12;
        goto LABEL_18;
      }

      if (v19 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        v12 = type;
        if (!os_log_type_enabled(v11, type))
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v22 = "tcp_connection_set_keepalive";
        v13 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_17;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      v15 = type;
      v16 = os_log_type_enabled(v11, type);
      if (!backtrace_string)
      {
        if (!v16)
        {
LABEL_19:

          if (!v10)
          {
            goto LABEL_14;
          }

          goto LABEL_13;
        }

        *buf = 136446210;
        v22 = "tcp_connection_set_keepalive";
        v13 = "%{public}s called with null connection, no backtrace";
        v17 = v11;
        v18 = v15;
LABEL_18:
        _os_log_impl(&dword_181A37000, v17, v18, v13, buf, 0xCu);
        goto LABEL_19;
      }

      if (v16)
      {
        *buf = 136446466;
        v22 = "tcp_connection_set_keepalive";
        v23 = 2082;
        v24 = backtrace_string;
        _os_log_impl(&dword_181A37000, v11, v15, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v10)
    {
      goto LABEL_14;
    }

LABEL_13:
    free(v10);
    goto LABEL_14;
  }

  nw_parameters_set_keepalive_enabled(v7[6], a2);
  nw_parameters_set_keepalive_idle_time(v8[6], a3);
  nw_parameters_set_keepalive_interval(v8[6], a4);
LABEL_14:
}

void tcp_connection_set_keepalive_offload(uint64_t a1, char a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    *buf = 136446210;
    v16 = "tcp_connection_set_keepalive_offload";
    v4 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (__nwlog_fault(v4, &type, &v13))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v6 = type;
        if (!os_log_type_enabled(v5, type))
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v16 = "tcp_connection_set_keepalive_offload";
        v7 = "%{public}s called with null connection";
LABEL_19:
        v11 = v5;
        v12 = v6;
        goto LABEL_20;
      }

      if (v13 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v6 = type;
        if (!os_log_type_enabled(v5, type))
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v16 = "tcp_connection_set_keepalive_offload";
        v7 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_19;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v9 = type;
      v10 = os_log_type_enabled(v5, type);
      if (!backtrace_string)
      {
        if (!v10)
        {
LABEL_21:

          if (!v4)
          {
            return;
          }

LABEL_15:
          free(v4);
          return;
        }

        *buf = 136446210;
        v16 = "tcp_connection_set_keepalive_offload";
        v7 = "%{public}s called with null connection, no backtrace";
        v11 = v5;
        v12 = v9;
LABEL_20:
        _os_log_impl(&dword_181A37000, v11, v12, v7, buf, 0xCu);
        goto LABEL_21;
      }

      if (v10)
      {
        *buf = 136446466;
        v16 = "tcp_connection_set_keepalive_offload";
        v17 = 2082;
        v18 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v9, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v4)
    {
      return;
    }

    goto LABEL_15;
  }

  v2 = *(a1 + 48);

  nw_parameters_set_keepalive_offload(v2, a2);
}

BOOL tcp_connection_conditions_met(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    *buf = 136446210;
    v19 = "tcp_connection_conditions_met";
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (__nwlog_fault(v8, &type, &v16))
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
          v19 = "tcp_connection_conditions_met";
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null connection", buf, 0xCu);
        }
      }

      else if (v16 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v13 = type;
        v14 = os_log_type_enabled(v9, type);
        if (backtrace_string)
        {
          if (v14)
          {
            *buf = 136446466;
            v19 = "tcp_connection_conditions_met";
            v20 = 2082;
            v21 = backtrace_string;
            _os_log_impl(&dword_181A37000, v9, v13, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          if (!v8)
          {
            goto LABEL_11;
          }

          goto LABEL_10;
        }

        if (v14)
        {
          *buf = 136446210;
          v19 = "tcp_connection_conditions_met";
          _os_log_impl(&dword_181A37000, v9, v13, "%{public}s called with null connection, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v15 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v19 = "tcp_connection_conditions_met";
          _os_log_impl(&dword_181A37000, v9, v15, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v8)
    {
LABEL_11:
      v6 = 0;
      goto LABEL_14;
    }

LABEL_10:
    free(v8);
    goto LABEL_11;
  }

  os_unfair_lock_lock(v1 + 30);
  v3 = *&v2[8]._os_unfair_lock_opaque;
  if (v3)
  {
    v4 = v3;
    status = _nw_path_get_status(v4);

    v6 = status == 1;
  }

  else
  {
    v6 = 0;
  }

  os_unfair_lock_unlock(v2 + 30);
LABEL_14:

  return v6;
}

uint64_t tcp_connection_conditions_get_unmet_reason(void *a1)
{
  *&v32[13] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    *buf = 136446210;
    v30 = "tcp_connection_conditions_get_unmet_reason";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (__nwlog_fault(v12, &type, &v27))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v13 = gLogObj;
        v14 = type;
        if (!os_log_type_enabled(v13, type))
        {
          goto LABEL_41;
        }

        *buf = 136446210;
        v30 = "tcp_connection_conditions_get_unmet_reason";
        v15 = "%{public}s called with null connection";
LABEL_39:
        v25 = v13;
        v26 = v14;
        goto LABEL_40;
      }

      if (v27 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v13 = gLogObj;
        v14 = type;
        if (!os_log_type_enabled(v13, type))
        {
          goto LABEL_41;
        }

        *buf = 136446210;
        v30 = "tcp_connection_conditions_get_unmet_reason";
        v15 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_39;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v20 = type;
      v21 = os_log_type_enabled(v13, type);
      if (!backtrace_string)
      {
        if (!v21)
        {
LABEL_41:

          if (!v12)
          {
            goto LABEL_29;
          }

          goto LABEL_28;
        }

        *buf = 136446210;
        v30 = "tcp_connection_conditions_get_unmet_reason";
        v15 = "%{public}s called with null connection, no backtrace";
        v25 = v13;
        v26 = v20;
LABEL_40:
        _os_log_impl(&dword_181A37000, v25, v26, v15, buf, 0xCu);
        goto LABEL_41;
      }

      if (v21)
      {
        *buf = 136446466;
        v30 = "tcp_connection_conditions_get_unmet_reason";
        v31 = 2082;
        *v32 = backtrace_string;
        _os_log_impl(&dword_181A37000, v13, v20, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v12)
    {
LABEL_29:
      v5 = 0;
      goto LABEL_30;
    }

LABEL_28:
    free(v12);
    goto LABEL_29;
  }

  os_unfair_lock_lock(v1 + 30);
  reason = nw_path_get_reason(*&v2[8]._os_unfair_lock_opaque);
  v4 = reason;
  if (reason >= 0x21 || ((0x1FFBFFFFFuLL >> reason) & 1) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    *buf = 136446466;
    v30 = "tcp_connection_reason_code_from_path";
    v31 = 1024;
    *v32 = v4;
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (__nwlog_fault(v7, &type, &v27))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v9 = type;
        if (!os_log_type_enabled(v8, type))
        {
          goto LABEL_35;
        }

        *buf = 136446466;
        v30 = "tcp_connection_reason_code_from_path";
        v31 = 1024;
        *v32 = v4;
        v10 = "%{public}s Unknown nw_path_reason_t %u";
LABEL_33:
        v23 = v8;
        v24 = v9;
        goto LABEL_34;
      }

      if (v27 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v9 = type;
        if (!os_log_type_enabled(v8, type))
        {
          goto LABEL_35;
        }

        *buf = 136446466;
        v30 = "tcp_connection_reason_code_from_path";
        v31 = 1024;
        *v32 = v4;
        v10 = "%{public}s Unknown nw_path_reason_t %u, backtrace limit exceeded";
        goto LABEL_33;
      }

      v16 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v17 = type;
      v18 = os_log_type_enabled(v8, type);
      if (!v16)
      {
        if (!v18)
        {
LABEL_35:

          if (!v7)
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }

        *buf = 136446466;
        v30 = "tcp_connection_reason_code_from_path";
        v31 = 1024;
        *v32 = v4;
        v10 = "%{public}s Unknown nw_path_reason_t %u, no backtrace";
        v23 = v8;
        v24 = v17;
LABEL_34:
        _os_log_impl(&dword_181A37000, v23, v24, v10, buf, 0x12u);
        goto LABEL_35;
      }

      if (v18)
      {
        *buf = 136446722;
        v30 = "tcp_connection_reason_code_from_path";
        v31 = 1024;
        *v32 = v4;
        v32[2] = 2082;
        *&v32[3] = v16;
        _os_log_impl(&dword_181A37000, v8, v17, "%{public}s Unknown nw_path_reason_t %u, dumping backtrace:%{public}s", buf, 0x1Cu);
      }

      free(v16);
    }

    if (!v7)
    {
LABEL_20:
      v5 = 10000;
      goto LABEL_21;
    }

LABEL_19:
    free(v7);
    goto LABEL_20;
  }

  v5 = qword_182B0B848[reason];
LABEL_21:
  os_unfair_lock_unlock(v2 + 30);
LABEL_30:

  return v5;
}

void tcp_connection_set_queue(void *a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    *buf = 136446210;
    v22 = "tcp_connection_set_queue";
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
        if (!os_log_type_enabled(v9, type))
        {
          goto LABEL_25;
        }

        *buf = 136446210;
        v22 = "tcp_connection_set_queue";
        v11 = "%{public}s called with null connection";
LABEL_23:
        v17 = v9;
        v18 = v10;
        goto LABEL_24;
      }

      if (v19 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = type;
        if (!os_log_type_enabled(v9, type))
        {
          goto LABEL_25;
        }

        *buf = 136446210;
        v22 = "tcp_connection_set_queue";
        v11 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_23;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      v15 = type;
      v16 = os_log_type_enabled(v9, type);
      if (!backtrace_string)
      {
        if (!v16)
        {
LABEL_25:

          if (!v8)
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }

        *buf = 136446210;
        v22 = "tcp_connection_set_queue";
        v11 = "%{public}s called with null connection, no backtrace";
        v17 = v9;
        v18 = v15;
LABEL_24:
        _os_log_impl(&dword_181A37000, v17, v18, v11, buf, 0xCu);
        goto LABEL_25;
      }

      if (v16)
      {
        *buf = 136446466;
        v22 = "tcp_connection_set_queue";
        v23 = 2082;
        v24 = backtrace_string;
        _os_log_impl(&dword_181A37000, v9, v15, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v8)
    {
      goto LABEL_20;
    }

LABEL_19:
    free(v8);
    goto LABEL_20;
  }

  if (v4)
  {
    os_unfair_lock_lock(v3 + 30);
    objc_storeStrong(v3 + 7, a2);
    v6 = *(v3 + 2);
    if (v6)
    {
      nw_connection_set_queue(v6, *(v3 + 7));
    }

    os_unfair_lock_unlock(v3 + 30);
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v12 = gLogObj;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = *(v3 + 12);
      *buf = 136446466;
      v22 = "tcp_connection_set_queue";
      v23 = 2048;
      v24 = v13;
      _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_ERROR, "%{public}s %llu client specified nil dispatch queue - not supported", buf, 0x16u);
    }
  }

LABEL_20:
}

uint64_t tcp_connection_id(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    *buf = 136446210;
    v18 = "tcp_connection_id";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (__nwlog_fault(v7, &type, &v15))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v9 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446210;
          v18 = "tcp_connection_id";
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null connection", buf, 0xCu);
        }
      }

      else if (v15 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v12 = type;
        v13 = os_log_type_enabled(v8, type);
        if (backtrace_string)
        {
          if (v13)
          {
            *buf = 136446466;
            v18 = "tcp_connection_id";
            v19 = 2082;
            v20 = backtrace_string;
            _os_log_impl(&dword_181A37000, v8, v12, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          if (!v7)
          {
            goto LABEL_11;
          }

          goto LABEL_10;
        }

        if (v13)
        {
          *buf = 136446210;
          v18 = "tcp_connection_id";
          _os_log_impl(&dword_181A37000, v8, v12, "%{public}s called with null connection, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v14 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446210;
          v18 = "tcp_connection_id";
          _os_log_impl(&dword_181A37000, v8, v14, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v7)
    {
LABEL_11:
      v5 = 0;
      goto LABEL_13;
    }

LABEL_10:
    free(v7);
    goto LABEL_11;
  }

  v3 = *(v1 + 2);
  if (v3)
  {
    v4 = v3;
    v5 = v4[112];
  }

  else
  {
    v5 = *(v1 + 12);
  }

LABEL_13:

  return v5;
}

void tcp_connection_set_minimum_throughput(void *a1, int a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    *buf = 136446210;
    *&buf[4] = "tcp_connection_set_minimum_throughput";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (__nwlog_fault(v10, &type, &v19))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        v12 = type;
        if (!os_log_type_enabled(v11, type))
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        *&buf[4] = "tcp_connection_set_minimum_throughput";
        v13 = "%{public}s called with null connection";
LABEL_19:
        v17 = v11;
        v18 = v12;
        goto LABEL_20;
      }

      if (v19 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        v12 = type;
        if (!os_log_type_enabled(v11, type))
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        *&buf[4] = "tcp_connection_set_minimum_throughput";
        v13 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_19;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      v15 = type;
      v16 = os_log_type_enabled(v11, type);
      if (!backtrace_string)
      {
        if (!v16)
        {
LABEL_21:

          if (!v10)
          {
            goto LABEL_16;
          }

          goto LABEL_15;
        }

        *buf = 136446210;
        *&buf[4] = "tcp_connection_set_minimum_throughput";
        v13 = "%{public}s called with null connection, no backtrace";
        v17 = v11;
        v18 = v15;
LABEL_20:
        _os_log_impl(&dword_181A37000, v17, v18, v13, buf, 0xCu);
        goto LABEL_21;
      }

      if (v16)
      {
        *buf = 136446466;
        *&buf[4] = "tcp_connection_set_minimum_throughput";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v11, v15, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v10)
    {
      goto LABEL_16;
    }

LABEL_15:
    free(v10);
    goto LABEL_16;
  }

  v3[38] = a2;
  v5 = v3;
  v6 = v5;
  v7 = v5[2];
  if (v7)
  {
    v8 = v4[38];
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __tcp_connection_set_minimum_throughput_on_nw_connection_block_invoke;
    v22 = &unk_1E6A31398;
    v23 = v5;
    nw_connection_set_low_throughput_handler(v7, v8, buf);
  }

LABEL_16:
}

void tcp_connection_override_obscure(void *a1, uint64_t a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = v5;
  if (!v5)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    *buf = 136446210;
    v20 = "tcp_connection_override_obscure";
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (__nwlog_fault(v8, &type, &v17))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = type;
        if (!os_log_type_enabled(v9, type))
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v20 = "tcp_connection_override_obscure";
        v11 = "%{public}s called with null connection";
LABEL_17:
        v15 = v9;
        v16 = v10;
        goto LABEL_18;
      }

      if (v17 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = type;
        if (!os_log_type_enabled(v9, type))
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v20 = "tcp_connection_override_obscure";
        v11 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_17;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      v13 = type;
      v14 = os_log_type_enabled(v9, type);
      if (!backtrace_string)
      {
        if (!v14)
        {
LABEL_19:

          if (!v8)
          {
            goto LABEL_14;
          }

          goto LABEL_13;
        }

        *buf = 136446210;
        v20 = "tcp_connection_override_obscure";
        v11 = "%{public}s called with null connection, no backtrace";
        v15 = v9;
        v16 = v13;
LABEL_18:
        _os_log_impl(&dword_181A37000, v15, v16, v11, buf, 0xCu);
        goto LABEL_19;
      }

      if (v14)
      {
        *buf = 136446466;
        v20 = "tcp_connection_override_obscure";
        v21 = 2082;
        v22 = backtrace_string;
        _os_log_impl(&dword_181A37000, v9, v13, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v8)
    {
      goto LABEL_14;
    }

LABEL_13:
    free(v8);
    goto LABEL_14;
  }

  nw_parameters_set_use_awdl(v5[6], a2);
  nw_parameters_set_use_p2p(v6[6], a3);
LABEL_14:
}

BOOL tcp_connection_is_viable(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    *buf = 136446210;
    v18 = "tcp_connection_is_viable";
    v5 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (__nwlog_fault(v5, &type, &v15))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v6 = gLogObj;
        v7 = type;
        if (!os_log_type_enabled(v6, type))
        {
          goto LABEL_23;
        }

        *buf = 136446210;
        v18 = "tcp_connection_is_viable";
        v8 = "%{public}s called with null connection";
LABEL_21:
        v13 = v6;
        v14 = v7;
        goto LABEL_22;
      }

      if (v15 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v6 = gLogObj;
        v7 = type;
        if (!os_log_type_enabled(v6, type))
        {
          goto LABEL_23;
        }

        *buf = 136446210;
        v18 = "tcp_connection_is_viable";
        v8 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_21;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      v10 = type;
      v11 = os_log_type_enabled(v6, type);
      if (!backtrace_string)
      {
        if (!v11)
        {
LABEL_23:

          if (!v5)
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        }

        *buf = 136446210;
        v18 = "tcp_connection_is_viable";
        v8 = "%{public}s called with null connection, no backtrace";
        v13 = v6;
        v14 = v10;
LABEL_22:
        _os_log_impl(&dword_181A37000, v13, v14, v8, buf, 0xCu);
        goto LABEL_23;
      }

      if (v11)
      {
        *buf = 136446466;
        v18 = "tcp_connection_is_viable";
        v19 = 2082;
        v20 = backtrace_string;
        _os_log_impl(&dword_181A37000, v6, v10, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v5)
    {
LABEL_17:
      v3 = 0;
      goto LABEL_18;
    }

LABEL_16:
    free(v5);
    goto LABEL_17;
  }

  os_unfair_lock_lock(v1 + 30);
  v3 = (v2[39]._os_unfair_lock_opaque & 0x1000000) != 0 && (v2[39]._os_unfair_lock_opaque & 0x200000) == 0;
  os_unfair_lock_unlock(v2 + 30);
LABEL_18:

  return v3;
}

uint64_t tcp_connection_has_better_route(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    *buf = 136446210;
    v18 = "tcp_connection_has_better_route";
    v5 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (__nwlog_fault(v5, &type, &v15))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v6 = gLogObj;
        v7 = type;
        if (!os_log_type_enabled(v6, type))
        {
          goto LABEL_23;
        }

        *buf = 136446210;
        v18 = "tcp_connection_has_better_route";
        v8 = "%{public}s called with null connection";
LABEL_21:
        v13 = v6;
        v14 = v7;
        goto LABEL_22;
      }

      if (v15 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v6 = gLogObj;
        v7 = type;
        if (!os_log_type_enabled(v6, type))
        {
          goto LABEL_23;
        }

        *buf = 136446210;
        v18 = "tcp_connection_has_better_route";
        v8 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_21;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      v10 = type;
      v11 = os_log_type_enabled(v6, type);
      if (!backtrace_string)
      {
        if (!v11)
        {
LABEL_23:

          if (!v5)
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        }

        *buf = 136446210;
        v18 = "tcp_connection_has_better_route";
        v8 = "%{public}s called with null connection, no backtrace";
        v13 = v6;
        v14 = v10;
LABEL_22:
        _os_log_impl(&dword_181A37000, v13, v14, v8, buf, 0xCu);
        goto LABEL_23;
      }

      if (v11)
      {
        *buf = 136446466;
        v18 = "tcp_connection_has_better_route";
        v19 = 2082;
        v20 = backtrace_string;
        _os_log_impl(&dword_181A37000, v6, v10, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v5)
    {
LABEL_17:
      v3 = 0;
      goto LABEL_18;
    }

LABEL_16:
    free(v5);
    goto LABEL_17;
  }

  os_unfair_lock_lock(v1 + 30);
  if ((v2[39]._os_unfair_lock_opaque & 0x1000000) != 0)
  {
    v3 = nw_connection_better_path_available(*&v2[4]._os_unfair_lock_opaque);
  }

  else
  {
    v3 = 1;
  }

  os_unfair_lock_unlock(v2 + 30);
LABEL_18:

  return v3;
}

uint64_t tcp_connection_get_connection_quality(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    *buf = 136446210;
    v18 = "tcp_connection_get_connection_quality";
    v5 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (__nwlog_fault(v5, &type, &v15))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v6 = gLogObj;
        v7 = type;
        if (!os_log_type_enabled(v6, type))
        {
          goto LABEL_23;
        }

        *buf = 136446210;
        v18 = "tcp_connection_get_connection_quality";
        v8 = "%{public}s called with null connection";
LABEL_21:
        v13 = v6;
        v14 = v7;
        goto LABEL_22;
      }

      if (v15 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v6 = gLogObj;
        v7 = type;
        if (!os_log_type_enabled(v6, type))
        {
          goto LABEL_23;
        }

        *buf = 136446210;
        v18 = "tcp_connection_get_connection_quality";
        v8 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_21;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      v10 = type;
      v11 = os_log_type_enabled(v6, type);
      if (!backtrace_string)
      {
        if (!v11)
        {
LABEL_23:

          if (!v5)
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        }

        *buf = 136446210;
        v18 = "tcp_connection_get_connection_quality";
        v8 = "%{public}s called with null connection, no backtrace";
        v13 = v6;
        v14 = v10;
LABEL_22:
        _os_log_impl(&dword_181A37000, v13, v14, v8, buf, 0xCu);
        goto LABEL_23;
      }

      if (v11)
      {
        *buf = 136446466;
        v18 = "tcp_connection_get_connection_quality";
        v19 = 2082;
        v20 = backtrace_string;
        _os_log_impl(&dword_181A37000, v6, v10, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v5)
    {
LABEL_17:
      v3 = 0;
      goto LABEL_18;
    }

LABEL_16:
    free(v5);
    goto LABEL_17;
  }

  os_unfair_lock_lock(v1 + 30);
  if (*&v2[8]._os_unfair_lock_opaque)
  {
    v3 = *&v2[32]._os_unfair_lock_opaque;
  }

  else
  {
    v3 = 0;
  }

  os_unfair_lock_unlock(v2 + 30);
LABEL_18:

  return v3;
}

id tcp_connection_copy_proxy(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    *buf = 136446210;
    v22 = "tcp_connection_copy_proxy";
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
        if (!os_log_type_enabled(v9, type))
        {
          goto LABEL_28;
        }

        *buf = 136446210;
        v22 = "tcp_connection_copy_proxy";
        v11 = "%{public}s called with null connection";
LABEL_26:
        v17 = v9;
        v18 = v10;
        goto LABEL_27;
      }

      if (v19 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = type;
        if (!os_log_type_enabled(v9, type))
        {
          goto LABEL_28;
        }

        *buf = 136446210;
        v22 = "tcp_connection_copy_proxy";
        v11 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_26;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      v14 = type;
      v15 = os_log_type_enabled(v9, type);
      if (!backtrace_string)
      {
        if (!v15)
        {
LABEL_28:

          if (!v8)
          {
            goto LABEL_22;
          }

          goto LABEL_21;
        }

        *buf = 136446210;
        v22 = "tcp_connection_copy_proxy";
        v11 = "%{public}s called with null connection, no backtrace";
        v17 = v9;
        v18 = v14;
LABEL_27:
        _os_log_impl(&dword_181A37000, v17, v18, v11, buf, 0xCu);
        goto LABEL_28;
      }

      if (v15)
      {
        *buf = 136446466;
        v22 = "tcp_connection_copy_proxy";
        v23 = 2082;
        v24 = backtrace_string;
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v8)
    {
LABEL_22:
      v6 = 0;
      goto LABEL_23;
    }

LABEL_21:
    free(v8);
    goto LABEL_22;
  }

  v3 = *(v1 + 2);
  if (v3)
  {
    v4 = nw_connection_copy_proxy_settings(v3);
    v5 = v4;
    if (v4 && network_proxy_get_type(v4))
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v12 = gLogObj;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v22 = "tcp_connection_copy_proxy";
      _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_ERROR, "%{public}s API Misuse: Function must be called after tcp_connection_start", buf, 0xCu);
    }

    v6 = 0;
  }

LABEL_23:

  return v6;
}

void tcp_connection_set_connection_pool()
{
  v3 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v0 = gLogObj;
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    v1 = 136446210;
    v2 = "tcp_connection_set_connection_pool";
    _os_log_impl(&dword_181A37000, v0, OS_LOG_TYPE_ERROR, "%{public}s tcp_connection_set_connection_pool is deprecated", &v1, 0xCu);
  }
}

void tcp_connection_set_multipath_service(uint64_t a1, nw_multipath_service_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    *buf = 136446210;
    v16 = "tcp_connection_set_multipath_service";
    v4 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (__nwlog_fault(v4, &type, &v13))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v6 = type;
        if (!os_log_type_enabled(v5, type))
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v16 = "tcp_connection_set_multipath_service";
        v7 = "%{public}s called with null connection";
LABEL_19:
        v11 = v5;
        v12 = v6;
        goto LABEL_20;
      }

      if (v13 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v6 = type;
        if (!os_log_type_enabled(v5, type))
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v16 = "tcp_connection_set_multipath_service";
        v7 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_19;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v9 = type;
      v10 = os_log_type_enabled(v5, type);
      if (!backtrace_string)
      {
        if (!v10)
        {
LABEL_21:

          if (!v4)
          {
            return;
          }

LABEL_15:
          free(v4);
          return;
        }

        *buf = 136446210;
        v16 = "tcp_connection_set_multipath_service";
        v7 = "%{public}s called with null connection, no backtrace";
        v11 = v5;
        v12 = v9;
LABEL_20:
        _os_log_impl(&dword_181A37000, v11, v12, v7, buf, 0xCu);
        goto LABEL_21;
      }

      if (v10)
      {
        *buf = 136446466;
        v16 = "tcp_connection_set_multipath_service";
        v17 = 2082;
        v18 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v9, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v4)
    {
      return;
    }

    goto LABEL_15;
  }

  v2 = *(a1 + 48);

  nw_parameters_set_multipath_service(v2, a2);
}

uint64_t tcp_connection_is_multipath(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    *buf = 136446210;
    v20 = "tcp_connection_is_multipath";
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (__nwlog_fault(v6, &type, &v17))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        v8 = type;
        if (!os_log_type_enabled(v7, type))
        {
          goto LABEL_24;
        }

        *buf = 136446210;
        v20 = "tcp_connection_is_multipath";
        v9 = "%{public}s called with null connection";
LABEL_22:
        v15 = v7;
        v16 = v8;
        goto LABEL_23;
      }

      if (v17 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        v8 = type;
        if (!os_log_type_enabled(v7, type))
        {
          goto LABEL_24;
        }

        *buf = 136446210;
        v20 = "tcp_connection_is_multipath";
        v9 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_22;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v12 = type;
      v13 = os_log_type_enabled(v7, type);
      if (!backtrace_string)
      {
        if (!v13)
        {
LABEL_24:

          if (!v6)
          {
            goto LABEL_18;
          }

          goto LABEL_17;
        }

        *buf = 136446210;
        v20 = "tcp_connection_is_multipath";
        v9 = "%{public}s called with null connection, no backtrace";
        v15 = v7;
        v16 = v12;
LABEL_23:
        _os_log_impl(&dword_181A37000, v15, v16, v9, buf, 0xCu);
        goto LABEL_24;
      }

      if (v13)
      {
        *buf = 136446466;
        v20 = "tcp_connection_is_multipath";
        v21 = 2082;
        v22 = backtrace_string;
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v6)
    {
LABEL_18:
      v4 = 0;
      goto LABEL_19;
    }

LABEL_17:
    free(v6);
    goto LABEL_18;
  }

  v3 = *(v1 + 2);
  if (!v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v20 = "tcp_connection_is_multipath";
      _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_ERROR, "%{public}s API Misuse: Function must be called after tcp_connection_start", buf, 0xCu);
    }

    goto LABEL_18;
  }

  v4 = nw_connection_uses_multipath(v3);
LABEL_19:

  return v4;
}

uint64_t tcp_connection_multipath_get_subflow_count(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    *buf = 136446210;
    v20 = "tcp_connection_multipath_get_subflow_count";
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (__nwlog_fault(v6, &type, &v17))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        v8 = type;
        if (!os_log_type_enabled(v7, type))
        {
          goto LABEL_24;
        }

        *buf = 136446210;
        v20 = "tcp_connection_multipath_get_subflow_count";
        v9 = "%{public}s called with null connection";
LABEL_22:
        v15 = v7;
        v16 = v8;
        goto LABEL_23;
      }

      if (v17 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        v8 = type;
        if (!os_log_type_enabled(v7, type))
        {
          goto LABEL_24;
        }

        *buf = 136446210;
        v20 = "tcp_connection_multipath_get_subflow_count";
        v9 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_22;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v12 = type;
      v13 = os_log_type_enabled(v7, type);
      if (!backtrace_string)
      {
        if (!v13)
        {
LABEL_24:

          if (!v6)
          {
            goto LABEL_18;
          }

          goto LABEL_17;
        }

        *buf = 136446210;
        v20 = "tcp_connection_multipath_get_subflow_count";
        v9 = "%{public}s called with null connection, no backtrace";
        v15 = v7;
        v16 = v12;
LABEL_23:
        _os_log_impl(&dword_181A37000, v15, v16, v9, buf, 0xCu);
        goto LABEL_24;
      }

      if (v13)
      {
        *buf = 136446466;
        v20 = "tcp_connection_multipath_get_subflow_count";
        v21 = 2082;
        v22 = backtrace_string;
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v6)
    {
LABEL_18:
      subflow_count = 0;
      goto LABEL_19;
    }

LABEL_17:
    free(v6);
    goto LABEL_18;
  }

  v3 = *(v1 + 2);
  if (!v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v20 = "tcp_connection_multipath_get_subflow_count";
      _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_ERROR, "%{public}s API Misuse: Function must be called after tcp_connection_start", buf, 0xCu);
    }

    goto LABEL_18;
  }

  subflow_count = nw_connection_multipath_get_subflow_count(v3);
LABEL_19:

  return subflow_count;
}

uint64_t tcp_connection_multipath_get_primary_subflow_ifindex(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    *buf = 136446210;
    v19 = "tcp_connection_multipath_get_primary_subflow_ifindex";
    v5 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (__nwlog_fault(v5, &type, &v16))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v6 = gLogObj;
        v7 = type;
        if (!os_log_type_enabled(v6, type))
        {
          goto LABEL_24;
        }

        *buf = 136446210;
        v19 = "tcp_connection_multipath_get_primary_subflow_ifindex";
        v8 = "%{public}s called with null connection";
LABEL_22:
        v14 = v6;
        v15 = v7;
        goto LABEL_23;
      }

      if (v16 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v6 = gLogObj;
        v7 = type;
        if (!os_log_type_enabled(v6, type))
        {
          goto LABEL_24;
        }

        *buf = 136446210;
        v19 = "tcp_connection_multipath_get_primary_subflow_ifindex";
        v8 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_22;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      v11 = type;
      v12 = os_log_type_enabled(v6, type);
      if (!backtrace_string)
      {
        if (!v12)
        {
LABEL_24:

          if (!v5)
          {
            goto LABEL_18;
          }

          goto LABEL_17;
        }

        *buf = 136446210;
        v19 = "tcp_connection_multipath_get_primary_subflow_ifindex";
        v8 = "%{public}s called with null connection, no backtrace";
        v14 = v6;
        v15 = v11;
LABEL_23:
        _os_log_impl(&dword_181A37000, v14, v15, v8, buf, 0xCu);
        goto LABEL_24;
      }

      if (v12)
      {
        *buf = 136446466;
        v19 = "tcp_connection_multipath_get_primary_subflow_ifindex";
        v20 = 2082;
        v21 = backtrace_string;
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v5)
    {
LABEL_18:
      interface = 0;
      goto LABEL_19;
    }

LABEL_17:
    free(v5);
    goto LABEL_18;
  }

  if (!v1[2])
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v19 = "tcp_connection_multipath_get_primary_subflow_ifindex";
      _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_ERROR, "%{public}s API Misuse: Function must be called after tcp_connection_start", buf, 0xCu);
    }

    goto LABEL_18;
  }

  interface = tcp_connection_get_interface(v1);
LABEL_19:

  return interface;
}

uint64_t tcp_connection_get_interface(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    *buf = 136446210;
    v22 = "tcp_connection_get_interface";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (__nwlog_fault(v9, &type, &v19))
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
          v22 = "tcp_connection_get_interface";
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null connection", buf, 0xCu);
        }
      }

      else if (v19 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v14 = type;
        v15 = os_log_type_enabled(v10, type);
        if (backtrace_string)
        {
          if (v15)
          {
            *buf = 136446466;
            v22 = "tcp_connection_get_interface";
            v23 = 2082;
            v24 = backtrace_string;
            _os_log_impl(&dword_181A37000, v10, v14, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          if (!v9)
          {
            goto LABEL_16;
          }

          goto LABEL_12;
        }

        if (v15)
        {
          *buf = 136446210;
          v22 = "tcp_connection_get_interface";
          _os_log_impl(&dword_181A37000, v10, v14, "%{public}s called with null connection, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v18 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v22 = "tcp_connection_get_interface";
          _os_log_impl(&dword_181A37000, v10, v18, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v9)
    {
LABEL_16:
      routed_interface_index = 0;
      goto LABEL_29;
    }

LABEL_12:
    free(v9);
    goto LABEL_16;
  }

  v3 = *(v1 + 2);
  if (!v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v12 = gLogObj;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v22 = "tcp_connection_get_interface";
      _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_ERROR, "%{public}s API Misuse: Function must be called after tcp_connection_start", buf, 0xCu);
    }

    goto LABEL_16;
  }

  v4 = nw_connection_copy_connected_path(v3);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    if (_nw_path_network_is_satisfied(v6))
    {
      routed_interface_index = _nw_path_get_routed_interface_index(v6);
    }

    else
    {
      routed_interface_index = 0;
    }
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v16 = gLogObj;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v22 = "tcp_connection_get_interface";
      _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_ERROR, "%{public}s No connected path", buf, 0xCu);
    }

    routed_interface_index = 0;
  }

LABEL_29:
  return routed_interface_index;
}

id tcp_connection_multipath_copy_subflow_switch_counts(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    *buf = 136446210;
    v20 = "tcp_connection_multipath_copy_subflow_switch_counts";
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (__nwlog_fault(v6, &type, &v17))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        v8 = type;
        if (!os_log_type_enabled(v7, type))
        {
          goto LABEL_24;
        }

        *buf = 136446210;
        v20 = "tcp_connection_multipath_copy_subflow_switch_counts";
        v9 = "%{public}s called with null connection";
LABEL_22:
        v15 = v7;
        v16 = v8;
        goto LABEL_23;
      }

      if (v17 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        v8 = type;
        if (!os_log_type_enabled(v7, type))
        {
          goto LABEL_24;
        }

        *buf = 136446210;
        v20 = "tcp_connection_multipath_copy_subflow_switch_counts";
        v9 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_22;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v12 = type;
      v13 = os_log_type_enabled(v7, type);
      if (!backtrace_string)
      {
        if (!v13)
        {
LABEL_24:

          if (!v6)
          {
            goto LABEL_18;
          }

          goto LABEL_17;
        }

        *buf = 136446210;
        v20 = "tcp_connection_multipath_copy_subflow_switch_counts";
        v9 = "%{public}s called with null connection, no backtrace";
        v15 = v7;
        v16 = v12;
LABEL_23:
        _os_log_impl(&dword_181A37000, v15, v16, v9, buf, 0xCu);
        goto LABEL_24;
      }

      if (v13)
      {
        *buf = 136446466;
        v20 = "tcp_connection_multipath_copy_subflow_switch_counts";
        v21 = 2082;
        v22 = backtrace_string;
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v6)
    {
LABEL_18:
      v4 = 0;
      goto LABEL_19;
    }

LABEL_17:
    free(v6);
    goto LABEL_18;
  }

  v3 = *(v1 + 2);
  if (!v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v20 = "tcp_connection_multipath_copy_subflow_switch_counts";
      _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_ERROR, "%{public}s API Misuse: Function must be called after tcp_connection_start", buf, 0xCu);
    }

    goto LABEL_18;
  }

  v4 = nw_connection_multipath_copy_subflow_counts(v3);
LABEL_19:

  return v4;
}

id tcp_connection_copy_tcp_info(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    *buf = 136446210;
    v20 = "tcp_connection_copy_tcp_info";
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (__nwlog_fault(v6, &type, &v17))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        v8 = type;
        if (!os_log_type_enabled(v7, type))
        {
          goto LABEL_24;
        }

        *buf = 136446210;
        v20 = "tcp_connection_copy_tcp_info";
        v9 = "%{public}s called with null connection";
LABEL_22:
        v15 = v7;
        v16 = v8;
        goto LABEL_23;
      }

      if (v17 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        v8 = type;
        if (!os_log_type_enabled(v7, type))
        {
          goto LABEL_24;
        }

        *buf = 136446210;
        v20 = "tcp_connection_copy_tcp_info";
        v9 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_22;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v12 = type;
      v13 = os_log_type_enabled(v7, type);
      if (!backtrace_string)
      {
        if (!v13)
        {
LABEL_24:

          if (!v6)
          {
            goto LABEL_18;
          }

          goto LABEL_17;
        }

        *buf = 136446210;
        v20 = "tcp_connection_copy_tcp_info";
        v9 = "%{public}s called with null connection, no backtrace";
        v15 = v7;
        v16 = v12;
LABEL_23:
        _os_log_impl(&dword_181A37000, v15, v16, v9, buf, 0xCu);
        goto LABEL_24;
      }

      if (v13)
      {
        *buf = 136446466;
        v20 = "tcp_connection_copy_tcp_info";
        v21 = 2082;
        v22 = backtrace_string;
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v6)
    {
LABEL_18:
      v4 = 0;
      goto LABEL_19;
    }

LABEL_17:
    free(v6);
    goto LABEL_18;
  }

  v3 = *(v1 + 2);
  if (!v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v20 = "tcp_connection_copy_tcp_info";
      _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_ERROR, "%{public}s API Misuse: Function must be called after tcp_connection_start", buf, 0xCu);
    }

    goto LABEL_18;
  }

  v4 = nw_connection_copy_tcp_info(v3);
LABEL_19:

  return v4;
}

void tcp_connection_set_tls(void *a1, int a2, size_t *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = v5;
  if (v5)
  {
    nw_parameters_set_tls(v5[6], a2);
    if (!a2)
    {
      goto LABEL_48;
    }

    if (!a3)
    {
      goto LABEL_45;
    }

    v7 = a3[1];
    if (!v7 || !*a3)
    {
      goto LABEL_44;
    }

    a3 = xpc_data_create(v7, *a3);
    if (a3)
    {
LABEL_45:
      nw_parameters_set_tls_session_id(v6[6]);
      v24 = v6[2];
      if (v24)
      {
        v25 = v24;
        v26 = a3;
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __nw_connection_start_tls_block_invoke;
        v32 = &unk_1E6A3D760;
        v27 = v25;
        v33 = v27;
        v28 = v26;
        v34 = v28;
        nw_connection_async_if_needed(v27, buf);
      }

      goto LABEL_48;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    *buf = 136446210;
    *&buf[4] = "tcp_connection_set_tls";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v29 = 0;
    if (__nwlog_fault(v9, &type, &v29))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "tcp_connection_set_tls";
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s xpc_data_create failed", buf, 0xCu);
        }
      }

      else if (v29 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v10 = __nwlog_obj();
        v21 = type;
        v22 = os_log_type_enabled(v10, type);
        if (backtrace_string)
        {
          if (v22)
          {
            *buf = 136446466;
            *&buf[4] = "tcp_connection_set_tls";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v10, v21, "%{public}s xpc_data_create failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_42;
        }

        if (v22)
        {
          *buf = 136446210;
          *&buf[4] = "tcp_connection_set_tls";
          _os_log_impl(&dword_181A37000, v10, v21, "%{public}s xpc_data_create failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v10 = __nwlog_obj();
        v23 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "tcp_connection_set_tls";
          _os_log_impl(&dword_181A37000, v10, v23, "%{public}s xpc_data_create failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_42:
    if (v9)
    {
      free(v9);
    }

LABEL_44:
    a3 = 0;
    goto LABEL_45;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v12 = gLogObj;
  *buf = 136446210;
  *&buf[4] = "tcp_connection_set_tls";
  v13 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v29 = 0;
  if (!__nwlog_fault(v13, &type, &v29))
  {
    goto LABEL_17;
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
      *&buf[4] = "tcp_connection_set_tls";
      _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null connection", buf, 0xCu);
    }

LABEL_16:

LABEL_17:
    if (!v13)
    {
      goto LABEL_48;
    }

LABEL_18:
    free(v13);
    goto LABEL_48;
  }

  if (v29 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v14 = gLogObj;
    v19 = type;
    if (os_log_type_enabled(v14, type))
    {
      *buf = 136446210;
      *&buf[4] = "tcp_connection_set_tls";
      _os_log_impl(&dword_181A37000, v14, v19, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_16;
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
      *&buf[4] = "tcp_connection_set_tls";
      _os_log_impl(&dword_181A37000, v14, v17, "%{public}s called with null connection, no backtrace", buf, 0xCu);
    }

    goto LABEL_16;
  }

  if (v18)
  {
    *buf = 136446466;
    *&buf[4] = "tcp_connection_set_tls";
    *&buf[12] = 2082;
    *&buf[14] = v16;
    _os_log_impl(&dword_181A37000, v14, v17, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v16);
  if (v13)
  {
    goto LABEL_18;
  }

LABEL_48:
}

void tcp_connection_set_tls_prepare()
{
  v16 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v0 = gLogObj;
  *buf = 136446210;
  v13 = "tcp_connection_set_tls_prepare";
  v1 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v10 = 0;
  if (!__nwlog_fault(v1, &type, &v10))
  {
    goto LABEL_10;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v2 = gLogObj;
    v3 = type;
    if (!os_log_type_enabled(v2, type))
    {
      goto LABEL_17;
    }

    *buf = 136446210;
    v13 = "tcp_connection_set_tls_prepare";
    v4 = "%{public}s tcp_connection_set_tls_prepare is deprecated";
LABEL_15:
    v8 = v2;
    v9 = v3;
LABEL_16:
    _os_log_impl(&dword_181A37000, v8, v9, v4, buf, 0xCu);
    goto LABEL_17;
  }

  if (v10 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v2 = gLogObj;
    v3 = type;
    if (!os_log_type_enabled(v2, type))
    {
      goto LABEL_17;
    }

    *buf = 136446210;
    v13 = "tcp_connection_set_tls_prepare";
    v4 = "%{public}s tcp_connection_set_tls_prepare is deprecated, backtrace limit exceeded";
    goto LABEL_15;
  }

  backtrace_string = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v2 = gLogObj;
  v6 = type;
  v7 = os_log_type_enabled(v2, type);
  if (backtrace_string)
  {
    if (v7)
    {
      *buf = 136446466;
      v13 = "tcp_connection_set_tls_prepare";
      v14 = 2082;
      v15 = backtrace_string;
      _os_log_impl(&dword_181A37000, v2, v6, "%{public}s tcp_connection_set_tls_prepare is deprecated, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
LABEL_10:
    if (!v1)
    {
      return;
    }

    goto LABEL_11;
  }

  if (v7)
  {
    *buf = 136446210;
    v13 = "tcp_connection_set_tls_prepare";
    v4 = "%{public}s tcp_connection_set_tls_prepare is deprecated, no backtrace";
    v8 = v2;
    v9 = v6;
    goto LABEL_16;
  }

LABEL_17:

  if (v1)
  {
LABEL_11:
    free(v1);
  }
}

void tcp_connection_set_tls_handshake_message_handler()
{
  v16 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v0 = gLogObj;
  *buf = 136446210;
  v13 = "tcp_connection_set_tls_handshake_message_handler";
  v1 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v10 = 0;
  if (!__nwlog_fault(v1, &type, &v10))
  {
    goto LABEL_10;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v2 = gLogObj;
    v3 = type;
    if (!os_log_type_enabled(v2, type))
    {
      goto LABEL_17;
    }

    *buf = 136446210;
    v13 = "tcp_connection_set_tls_handshake_message_handler";
    v4 = "%{public}s tcp_connection_set_tls_handshake_message_handler is deprecated";
LABEL_15:
    v8 = v2;
    v9 = v3;
LABEL_16:
    _os_log_impl(&dword_181A37000, v8, v9, v4, buf, 0xCu);
    goto LABEL_17;
  }

  if (v10 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v2 = gLogObj;
    v3 = type;
    if (!os_log_type_enabled(v2, type))
    {
      goto LABEL_17;
    }

    *buf = 136446210;
    v13 = "tcp_connection_set_tls_handshake_message_handler";
    v4 = "%{public}s tcp_connection_set_tls_handshake_message_handler is deprecated, backtrace limit exceeded";
    goto LABEL_15;
  }

  backtrace_string = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v2 = gLogObj;
  v6 = type;
  v7 = os_log_type_enabled(v2, type);
  if (backtrace_string)
  {
    if (v7)
    {
      *buf = 136446466;
      v13 = "tcp_connection_set_tls_handshake_message_handler";
      v14 = 2082;
      v15 = backtrace_string;
      _os_log_impl(&dword_181A37000, v2, v6, "%{public}s tcp_connection_set_tls_handshake_message_handler is deprecated, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
LABEL_10:
    if (!v1)
    {
      return;
    }

    goto LABEL_11;
  }

  if (v7)
  {
    *buf = 136446210;
    v13 = "tcp_connection_set_tls_handshake_message_handler";
    v4 = "%{public}s tcp_connection_set_tls_handshake_message_handler is deprecated, no backtrace";
    v8 = v2;
    v9 = v6;
    goto LABEL_16;
  }

LABEL_17:

  if (v1)
  {
LABEL_11:
    free(v1);
  }
}

char *tcp_connection_create(const char *a1, unsigned int a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (a1)
  {
    if (v5)
    {
      host_with_numeric_port = nw_endpoint_create_host_with_numeric_port(a1, __rev16(a2));
      v8 = host_with_numeric_port;
      if (host_with_numeric_port)
      {
        v9 = tcp_connection_create_with_endpoint_and_parameters(host_with_numeric_port, 0, v6);
      }

      else
      {
        v9 = 0;
      }

      goto LABEL_7;
    }

    v16 = __nwlog_obj();
    *buf = 136446210;
    v24 = "tcp_connection_create";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (__nwlog_fault(v12, &type, &v21))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v13 = __nwlog_obj();
        v14 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v24 = "tcp_connection_create";
          v15 = "%{public}s called with null queue";
          goto LABEL_34;
        }

        goto LABEL_35;
      }

      if (v21 != 1)
      {
        v13 = __nwlog_obj();
        v14 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v24 = "tcp_connection_create";
          v15 = "%{public}s called with null queue, backtrace limit exceeded";
          goto LABEL_34;
        }

        goto LABEL_35;
      }

      backtrace_string = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v14 = type;
      v20 = os_log_type_enabled(v13, type);
      if (!backtrace_string)
      {
        if (v20)
        {
          *buf = 136446210;
          v24 = "tcp_connection_create";
          v15 = "%{public}s called with null queue, no backtrace";
          goto LABEL_34;
        }

        goto LABEL_35;
      }

      if (!v20)
      {
        goto LABEL_25;
      }

      *buf = 136446466;
      v24 = "tcp_connection_create";
      v25 = 2082;
      v26 = backtrace_string;
      v19 = "%{public}s called with null queue, dumping backtrace:%{public}s";
LABEL_24:
      _os_log_impl(&dword_181A37000, v13, v14, v19, buf, 0x16u);
LABEL_25:

      free(backtrace_string);
    }
  }

  else
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v24 = "tcp_connection_create";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (__nwlog_fault(v12, &type, &v21))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v13 = __nwlog_obj();
        v14 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v24 = "tcp_connection_create";
          v15 = "%{public}s called with null hostname";
LABEL_34:
          _os_log_impl(&dword_181A37000, v13, v14, v15, buf, 0xCu);
        }

LABEL_35:

        goto LABEL_36;
      }

      if (v21 != 1)
      {
        v13 = __nwlog_obj();
        v14 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v24 = "tcp_connection_create";
          v15 = "%{public}s called with null hostname, backtrace limit exceeded";
          goto LABEL_34;
        }

        goto LABEL_35;
      }

      backtrace_string = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v14 = type;
      v18 = os_log_type_enabled(v13, type);
      if (!backtrace_string)
      {
        if (v18)
        {
          *buf = 136446210;
          v24 = "tcp_connection_create";
          v15 = "%{public}s called with null hostname, no backtrace";
          goto LABEL_34;
        }

        goto LABEL_35;
      }

      if (!v18)
      {
        goto LABEL_25;
      }

      *buf = 136446466;
      v24 = "tcp_connection_create";
      v25 = 2082;
      v26 = backtrace_string;
      v19 = "%{public}s called with null hostname, dumping backtrace:%{public}s";
      goto LABEL_24;
    }
  }

LABEL_36:
  if (v12)
  {
    free(v12);
  }

  v9 = 0;
LABEL_7:

  return v9;
}

char *tcp_connection_create_with_service(const char *a1, const char *a2, const char *a3, void *a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = a4;
  nw_allow_use_of_dispatch_internal();
  if (!a1)
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    v29 = "tcp_connection_create_with_service";
    v13 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v13, &type, &v26))
    {
      goto LABEL_62;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v26 != 1)
      {
        v14 = __nwlog_obj();
        v15 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          v29 = "tcp_connection_create_with_service";
          v16 = "%{public}s called with null name, backtrace limit exceeded";
          goto LABEL_60;
        }

        goto LABEL_61;
      }

      backtrace_string = __nw_create_backtrace_string();
      v14 = __nwlog_obj();
      v15 = type;
      v21 = os_log_type_enabled(v14, type);
      if (!backtrace_string)
      {
        if (v21)
        {
          *buf = 136446210;
          v29 = "tcp_connection_create_with_service";
          v16 = "%{public}s called with null name, no backtrace";
          goto LABEL_60;
        }

        goto LABEL_61;
      }

      if (!v21)
      {
        goto LABEL_43;
      }

      *buf = 136446466;
      v29 = "tcp_connection_create_with_service";
      v30 = 2082;
      v31 = backtrace_string;
      v22 = "%{public}s called with null name, dumping backtrace:%{public}s";
      goto LABEL_42;
    }

    v14 = __nwlog_obj();
    v15 = type;
    if (!os_log_type_enabled(v14, type))
    {
      goto LABEL_61;
    }

    *buf = 136446210;
    v29 = "tcp_connection_create_with_service";
    v16 = "%{public}s called with null name";
LABEL_60:
    _os_log_impl(&dword_181A37000, v14, v15, v16, buf, 0xCu);
    goto LABEL_61;
  }

  if (!a2)
  {
    v17 = __nwlog_obj();
    *buf = 136446210;
    v29 = "tcp_connection_create_with_service";
    v13 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v13, &type, &v26))
    {
      goto LABEL_62;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v26 != 1)
      {
        v14 = __nwlog_obj();
        v15 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          v29 = "tcp_connection_create_with_service";
          v16 = "%{public}s called with null type, backtrace limit exceeded";
          goto LABEL_60;
        }

        goto LABEL_61;
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
          v29 = "tcp_connection_create_with_service";
          v16 = "%{public}s called with null type, no backtrace";
          goto LABEL_60;
        }

        goto LABEL_61;
      }

      if (!v23)
      {
        goto LABEL_43;
      }

      *buf = 136446466;
      v29 = "tcp_connection_create_with_service";
      v30 = 2082;
      v31 = backtrace_string;
      v22 = "%{public}s called with null type, dumping backtrace:%{public}s";
      goto LABEL_42;
    }

    v14 = __nwlog_obj();
    v15 = type;
    if (!os_log_type_enabled(v14, type))
    {
      goto LABEL_61;
    }

    *buf = 136446210;
    v29 = "tcp_connection_create_with_service";
    v16 = "%{public}s called with null type";
    goto LABEL_60;
  }

  if (!a3)
  {
    v18 = __nwlog_obj();
    *buf = 136446210;
    v29 = "tcp_connection_create_with_service";
    v13 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v13, &type, &v26))
    {
      goto LABEL_62;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      v29 = "tcp_connection_create_with_service";
      v16 = "%{public}s called with null domain";
      goto LABEL_60;
    }

    if (v26 != 1)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v29 = "tcp_connection_create_with_service";
        v16 = "%{public}s called with null domain, backtrace limit exceeded";
        goto LABEL_60;
      }

      goto LABEL_61;
    }

    backtrace_string = __nw_create_backtrace_string();
    v14 = __nwlog_obj();
    v15 = type;
    v24 = os_log_type_enabled(v14, type);
    if (!backtrace_string)
    {
      if (v24)
      {
        *buf = 136446210;
        v29 = "tcp_connection_create_with_service";
        v16 = "%{public}s called with null domain, no backtrace";
        goto LABEL_60;
      }

      goto LABEL_61;
    }

    if (!v24)
    {
      goto LABEL_43;
    }

    *buf = 136446466;
    v29 = "tcp_connection_create_with_service";
    v30 = 2082;
    v31 = backtrace_string;
    v22 = "%{public}s called with null domain, dumping backtrace:%{public}s";
LABEL_42:
    _os_log_impl(&dword_181A37000, v14, v15, v22, buf, 0x16u);
LABEL_43:

    free(backtrace_string);
    goto LABEL_62;
  }

  if (v7)
  {
    bonjour_service = nw_endpoint_create_bonjour_service(a1, a2, a3);
    v9 = bonjour_service;
    if (bonjour_service)
    {
      v10 = tcp_connection_create_with_endpoint_and_parameters(bonjour_service, 0, v7);
    }

    else
    {
      v10 = 0;
    }

    goto LABEL_9;
  }

  v19 = __nwlog_obj();
  *buf = 136446210;
  v29 = "tcp_connection_create_with_service";
  v13 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v26 = 0;
  if (__nwlog_fault(v13, &type, &v26))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v29 = "tcp_connection_create_with_service";
        v16 = "%{public}s called with null queue";
        goto LABEL_60;
      }

LABEL_61:

      goto LABEL_62;
    }

    if (v26 != 1)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v29 = "tcp_connection_create_with_service";
        v16 = "%{public}s called with null queue, backtrace limit exceeded";
        goto LABEL_60;
      }

      goto LABEL_61;
    }

    backtrace_string = __nw_create_backtrace_string();
    v14 = __nwlog_obj();
    v15 = type;
    v25 = os_log_type_enabled(v14, type);
    if (!backtrace_string)
    {
      if (v25)
      {
        *buf = 136446210;
        v29 = "tcp_connection_create_with_service";
        v16 = "%{public}s called with null queue, no backtrace";
        goto LABEL_60;
      }

      goto LABEL_61;
    }

    if (!v25)
    {
      goto LABEL_43;
    }

    *buf = 136446466;
    v29 = "tcp_connection_create_with_service";
    v30 = 2082;
    v31 = backtrace_string;
    v22 = "%{public}s called with null queue, dumping backtrace:%{public}s";
    goto LABEL_42;
  }

LABEL_62:
  if (v13)
  {
    free(v13);
  }

  v10 = 0;
LABEL_9:

  return v10;
}

void tcp_connection_set_event_handler(void *a1, const void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    *buf = 136446210;
    v19 = "tcp_connection_set_event_handler";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (__nwlog_fault(v7, &type, &v16))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v9 = type;
        if (!os_log_type_enabled(v8, type))
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v19 = "tcp_connection_set_event_handler";
        v10 = "%{public}s called with null connection";
LABEL_17:
        v14 = v8;
        v15 = v9;
        goto LABEL_18;
      }

      if (v16 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v9 = type;
        if (!os_log_type_enabled(v8, type))
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v19 = "tcp_connection_set_event_handler";
        v10 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_17;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v12 = type;
      v13 = os_log_type_enabled(v8, type);
      if (!backtrace_string)
      {
        if (!v13)
        {
LABEL_19:

          if (!v7)
          {
            goto LABEL_14;
          }

          goto LABEL_13;
        }

        *buf = 136446210;
        v19 = "tcp_connection_set_event_handler";
        v10 = "%{public}s called with null connection, no backtrace";
        v14 = v8;
        v15 = v12;
LABEL_18:
        _os_log_impl(&dword_181A37000, v14, v15, v10, buf, 0xCu);
        goto LABEL_19;
      }

      if (v13)
      {
        *buf = 136446466;
        v19 = "tcp_connection_set_event_handler";
        v20 = 2082;
        v21 = backtrace_string;
        _os_log_impl(&dword_181A37000, v8, v12, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v7)
    {
      goto LABEL_14;
    }

LABEL_13:
    free(v7);
    goto LABEL_14;
  }

  v4 = _Block_copy(a2);
  v5 = v3[8];
  v3[8] = v4;

LABEL_14:
}

void tcp_connection_set_cancel_handler(void *a1, const void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    *buf = 136446210;
    v19 = "tcp_connection_set_cancel_handler";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (__nwlog_fault(v7, &type, &v16))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v9 = type;
        if (!os_log_type_enabled(v8, type))
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v19 = "tcp_connection_set_cancel_handler";
        v10 = "%{public}s called with null connection";
LABEL_17:
        v14 = v8;
        v15 = v9;
        goto LABEL_18;
      }

      if (v16 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v9 = type;
        if (!os_log_type_enabled(v8, type))
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v19 = "tcp_connection_set_cancel_handler";
        v10 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_17;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v12 = type;
      v13 = os_log_type_enabled(v8, type);
      if (!backtrace_string)
      {
        if (!v13)
        {
LABEL_19:

          if (!v7)
          {
            goto LABEL_14;
          }

          goto LABEL_13;
        }

        *buf = 136446210;
        v19 = "tcp_connection_set_cancel_handler";
        v10 = "%{public}s called with null connection, no backtrace";
        v14 = v8;
        v15 = v12;
LABEL_18:
        _os_log_impl(&dword_181A37000, v14, v15, v10, buf, 0xCu);
        goto LABEL_19;
      }

      if (v13)
      {
        *buf = 136446466;
        v19 = "tcp_connection_set_cancel_handler";
        v20 = 2082;
        v21 = backtrace_string;
        _os_log_impl(&dword_181A37000, v8, v12, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v7)
    {
      goto LABEL_14;
    }

LABEL_13:
    free(v7);
    goto LABEL_14;
  }

  v4 = _Block_copy(a2);
  v5 = v3[9];
  v3[9] = v4;

LABEL_14:
}

void tcp_connection_set_event_handler_f(void *a1, uint64_t a2, uint64_t a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a1;
  if (!v5)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    *buf = 136446210;
    v22 = "tcp_connection_set_event_handler_f";
    v9 = _os_log_send_and_compose_impl();

    v20 = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (__nwlog_fault(v9, &v20, &v19))
    {
      if (v20 == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v11 = v20;
        if (!os_log_type_enabled(v10, v20))
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v22 = "tcp_connection_set_event_handler_f";
        v12 = "%{public}s called with null connection";
LABEL_17:
        v16 = v10;
        v17 = v11;
        goto LABEL_18;
      }

      if (v19 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v11 = v20;
        if (!os_log_type_enabled(v10, v20))
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v22 = "tcp_connection_set_event_handler_f";
        v12 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_17;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      v14 = v20;
      v15 = os_log_type_enabled(v10, v20);
      if (!backtrace_string)
      {
        if (!v15)
        {
LABEL_19:

          if (!v9)
          {
            goto LABEL_14;
          }

          goto LABEL_13;
        }

        *buf = 136446210;
        v22 = "tcp_connection_set_event_handler_f";
        v12 = "%{public}s called with null connection, no backtrace";
        v16 = v10;
        v17 = v14;
LABEL_18:
        _os_log_impl(&dword_181A37000, v16, v17, v12, buf, 0xCu);
        goto LABEL_19;
      }

      if (v15)
      {
        *buf = 136446466;
        v22 = "tcp_connection_set_event_handler_f";
        v23 = 2082;
        v24 = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v14, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v9)
    {
      goto LABEL_14;
    }

LABEL_13:
    free(v9);
    goto LABEL_14;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __tcp_connection_set_event_handler_f_block_invoke;
  aBlock[3] = &__block_descriptor_48_e13_v20__0I8r_v12l;
  aBlock[4] = a3;
  aBlock[5] = a2;
  v6 = _Block_copy(aBlock);
  v7 = v5[8];
  v5[8] = v6;

LABEL_14:
}

void tcp_connection_set_interface_by_index(void *a1, int a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    *buf = 136446210;
    v21 = "tcp_connection_set_interface_by_index";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (__nwlog_fault(v7, &type, &v18))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v9 = type;
        if (!os_log_type_enabled(v8, type))
        {
          goto LABEL_25;
        }

        *buf = 136446210;
        v21 = "tcp_connection_set_interface_by_index";
        v10 = "%{public}s called with null connection";
LABEL_23:
        v16 = v8;
        v17 = v9;
        goto LABEL_24;
      }

      if (v18 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v9 = type;
        if (!os_log_type_enabled(v8, type))
        {
          goto LABEL_25;
        }

        *buf = 136446210;
        v21 = "tcp_connection_set_interface_by_index";
        v10 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_23;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v14 = type;
      v15 = os_log_type_enabled(v8, type);
      if (!backtrace_string)
      {
        if (!v15)
        {
LABEL_25:

          if (!v7)
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }

        *buf = 136446210;
        v21 = "tcp_connection_set_interface_by_index";
        v10 = "%{public}s called with null connection, no backtrace";
        v16 = v8;
        v17 = v14;
LABEL_24:
        _os_log_impl(&dword_181A37000, v16, v17, v10, buf, 0xCu);
        goto LABEL_25;
      }

      if (v15)
      {
        *buf = 136446466;
        v21 = "tcp_connection_set_interface_by_index";
        v22 = 2082;
        v23 = backtrace_string;
        _os_log_impl(&dword_181A37000, v8, v14, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v7)
    {
      goto LABEL_20;
    }

LABEL_19:
    free(v7);
    goto LABEL_20;
  }

  v4 = nw_interface_create_with_index(a2);
  if (v4)
  {
    nw_parameters_require_interface(v3[6], v4);
    name = _nw_interface_get_name(v4);
    if (!strcasecmp("awdl0", name))
    {
      nw_parameters_set_use_awdl(v3[6], 1);
    }
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = v3[12];
      *buf = 136446722;
      v21 = "tcp_connection_set_interface_by_index";
      v22 = 2048;
      v23 = v12;
      v24 = 1024;
      v25 = a2;
      _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_ERROR, "%{public}s %llu could not set interface with index %d", buf, 0x1Cu);
    }
  }

LABEL_20:
}

BOOL tcp_connection_set_interface_by_name(void *a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    *buf = 136446210;
    v22 = "tcp_connection_set_interface_by_name";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (__nwlog_fault(v7, &type, &v19))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v9 = type;
        if (!os_log_type_enabled(v8, type))
        {
          goto LABEL_25;
        }

        *buf = 136446210;
        v22 = "tcp_connection_set_interface_by_name";
        v10 = "%{public}s called with null connection";
LABEL_23:
        v17 = v8;
        v18 = v9;
        goto LABEL_24;
      }

      if (v19 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v9 = type;
        if (!os_log_type_enabled(v8, type))
        {
          goto LABEL_25;
        }

        *buf = 136446210;
        v22 = "tcp_connection_set_interface_by_name";
        v10 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_23;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v14 = type;
      v15 = os_log_type_enabled(v8, type);
      if (!backtrace_string)
      {
        if (!v15)
        {
LABEL_25:

          if (!v7)
          {
            goto LABEL_19;
          }

          goto LABEL_18;
        }

        *buf = 136446210;
        v22 = "tcp_connection_set_interface_by_name";
        v10 = "%{public}s called with null connection, no backtrace";
        v17 = v8;
        v18 = v14;
LABEL_24:
        _os_log_impl(&dword_181A37000, v17, v18, v10, buf, 0xCu);
        goto LABEL_25;
      }

      if (v15)
      {
        *buf = 136446466;
        v22 = "tcp_connection_set_interface_by_name";
        v23 = 2082;
        v24 = backtrace_string;
        _os_log_impl(&dword_181A37000, v8, v14, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v7)
    {
LABEL_19:
      v5 = 0;
      goto LABEL_20;
    }

LABEL_18:
    free(v7);
    goto LABEL_19;
  }

  v4 = nw_interface_create_with_name(a2);
  v5 = v4 != 0;
  if (v4)
  {
    nw_parameters_require_interface(v3[6], v4);
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = v3[12];
      *buf = 136446722;
      v22 = "tcp_connection_set_interface_by_name";
      v23 = 2048;
      v24 = v12;
      v25 = 2082;
      v26 = a2;
      _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_ERROR, "%{public}s %llu could not set interface with name %{public}s", buf, 0x20u);
    }
  }

LABEL_20:
  return v5;
}

void tcp_connection_set_indefinite(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v2 = gLogObj;
    *buf = 136446210;
    v15 = "tcp_connection_set_indefinite";
    v3 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v12 = 0;
    if (__nwlog_fault(v3, &type, &v12))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v4 = gLogObj;
        v5 = type;
        if (!os_log_type_enabled(v4, type))
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v15 = "tcp_connection_set_indefinite";
        v6 = "%{public}s called with null connection";
LABEL_19:
        v10 = v4;
        v11 = v5;
        goto LABEL_20;
      }

      if (v12 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v4 = gLogObj;
        v5 = type;
        if (!os_log_type_enabled(v4, type))
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v15 = "tcp_connection_set_indefinite";
        v6 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_19;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v4 = gLogObj;
      v8 = type;
      v9 = os_log_type_enabled(v4, type);
      if (!backtrace_string)
      {
        if (!v9)
        {
LABEL_21:

          if (!v3)
          {
            return;
          }

LABEL_15:
          free(v3);
          return;
        }

        *buf = 136446210;
        v15 = "tcp_connection_set_indefinite";
        v6 = "%{public}s called with null connection, no backtrace";
        v10 = v4;
        v11 = v8;
LABEL_20:
        _os_log_impl(&dword_181A37000, v10, v11, v6, buf, 0xCu);
        goto LABEL_21;
      }

      if (v9)
      {
        *buf = 136446466;
        v15 = "tcp_connection_set_indefinite";
        v16 = 2082;
        v17 = backtrace_string;
        _os_log_impl(&dword_181A37000, v4, v8, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v3)
    {
      return;
    }

    goto LABEL_15;
  }

  v1 = *(a1 + 48);

  nw_parameters_set_indefinite(v1);
}

uint64_t tcp_connection_set_context(void *a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    *buf = 136446210;
    v22 = "tcp_connection_set_context";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (__nwlog_fault(v9, &type, &v19))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v11 = type;
        if (!os_log_type_enabled(v10, type))
        {
          goto LABEL_24;
        }

        *buf = 136446210;
        v22 = "tcp_connection_set_context";
        v12 = "%{public}s called with null connection";
LABEL_22:
        v17 = v10;
        v18 = v11;
        goto LABEL_23;
      }

      if (v19 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v11 = type;
        if (!os_log_type_enabled(v10, type))
        {
          goto LABEL_24;
        }

        *buf = 136446210;
        v22 = "tcp_connection_set_context";
        v12 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_22;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      v14 = type;
      v15 = os_log_type_enabled(v10, type);
      if (!backtrace_string)
      {
        if (!v15)
        {
LABEL_24:

          if (!v9)
          {
            goto LABEL_18;
          }

          goto LABEL_17;
        }

        *buf = 136446210;
        v22 = "tcp_connection_set_context";
        v12 = "%{public}s called with null connection, no backtrace";
        v17 = v10;
        v18 = v14;
LABEL_23:
        _os_log_impl(&dword_181A37000, v17, v18, v12, buf, 0xCu);
        goto LABEL_24;
      }

      if (v15)
      {
        *buf = 136446466;
        v22 = "tcp_connection_set_context";
        v23 = 2082;
        v24 = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v14, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v9)
    {
LABEL_18:
      v6 = 0;
      goto LABEL_19;
    }

LABEL_17:
    free(v9);
    goto LABEL_18;
  }

  if (!v4)
  {
    os_unfair_lock_lock(v3 + 30);
    v7 = *&v3[2]._os_unfair_lock_opaque;
    *&v3[2]._os_unfair_lock_opaque = 0;
    goto LABEL_10;
  }

  v6 = xpc_copy(v4);
  if (v6)
  {
    os_unfair_lock_lock(v3 + 30);
    v7 = *&v3[2]._os_unfair_lock_opaque;
    *&v3[2]._os_unfair_lock_opaque = v6;
LABEL_10:

    os_unfair_lock_unlock(v3 + 30);
    v6 = 1;
  }

LABEL_19:

  return v6;
}

void tcp_connection_set_low_latency(uint64_t a1, char a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    *buf = 136446210;
    v16 = "tcp_connection_set_low_latency";
    v4 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (__nwlog_fault(v4, &type, &v13))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v6 = type;
        if (!os_log_type_enabled(v5, type))
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v16 = "tcp_connection_set_low_latency";
        v7 = "%{public}s called with null connection";
LABEL_19:
        v11 = v5;
        v12 = v6;
        goto LABEL_20;
      }

      if (v13 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v6 = type;
        if (!os_log_type_enabled(v5, type))
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v16 = "tcp_connection_set_low_latency";
        v7 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_19;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v9 = type;
      v10 = os_log_type_enabled(v5, type);
      if (!backtrace_string)
      {
        if (!v10)
        {
LABEL_21:

          if (!v4)
          {
            return;
          }

LABEL_15:
          free(v4);
          return;
        }

        *buf = 136446210;
        v16 = "tcp_connection_set_low_latency";
        v7 = "%{public}s called with null connection, no backtrace";
        v11 = v5;
        v12 = v9;
LABEL_20:
        _os_log_impl(&dword_181A37000, v11, v12, v7, buf, 0xCu);
        goto LABEL_21;
      }

      if (v10)
      {
        *buf = 136446466;
        v16 = "tcp_connection_set_low_latency";
        v17 = 2082;
        v18 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v9, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v4)
    {
      return;
    }

    goto LABEL_15;
  }

  v2 = *(a1 + 48);

  nw_parameters_set_reduce_buffering(v2, a2);
}

xpc_object_t tcp_connection_copy_context(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    *buf = 136446210;
    v19 = "tcp_connection_copy_context";
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
        if (!os_log_type_enabled(v7, type))
        {
          goto LABEL_23;
        }

        *buf = 136446210;
        v19 = "tcp_connection_copy_context";
        v9 = "%{public}s called with null connection";
LABEL_21:
        v14 = v7;
        v15 = v8;
        goto LABEL_22;
      }

      if (v16 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        v8 = type;
        if (!os_log_type_enabled(v7, type))
        {
          goto LABEL_23;
        }

        *buf = 136446210;
        v19 = "tcp_connection_copy_context";
        v9 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_21;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v11 = type;
      v12 = os_log_type_enabled(v7, type);
      if (!backtrace_string)
      {
        if (!v12)
        {
LABEL_23:

          if (!v6)
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        }

        *buf = 136446210;
        v19 = "tcp_connection_copy_context";
        v9 = "%{public}s called with null connection, no backtrace";
        v14 = v7;
        v15 = v11;
LABEL_22:
        _os_log_impl(&dword_181A37000, v14, v15, v9, buf, 0xCu);
        goto LABEL_23;
      }

      if (v12)
      {
        *buf = 136446466;
        v19 = "tcp_connection_copy_context";
        v20 = 2082;
        v21 = backtrace_string;
        _os_log_impl(&dword_181A37000, v7, v11, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v6)
    {
LABEL_17:
      v4 = 0;
      goto LABEL_18;
    }

LABEL_16:
    free(v6);
    goto LABEL_17;
  }

  os_unfair_lock_lock(v1 + 30);
  v3 = *&v2[2]._os_unfair_lock_opaque;
  if (v3)
  {
    v4 = xpc_copy(v3);
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock(v2 + 30);
LABEL_18:

  return v4;
}

uint64_t tcp_connection_get_error(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 112);
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v2 = gLogObj;
  *buf = 136446210;
  v15 = "tcp_connection_get_error";
  v3 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v12 = 0;
  if (__nwlog_fault(v3, &type, &v12))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v4 = gLogObj;
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_19;
      }

      *buf = 136446210;
      v15 = "tcp_connection_get_error";
      v6 = "%{public}s called with null connection";
LABEL_17:
      v10 = v4;
      v11 = v5;
      goto LABEL_18;
    }

    if (v12 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v4 = gLogObj;
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_19;
      }

      *buf = 136446210;
      v15 = "tcp_connection_get_error";
      v6 = "%{public}s called with null connection, backtrace limit exceeded";
      goto LABEL_17;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    v8 = type;
    v9 = os_log_type_enabled(v4, type);
    if (!backtrace_string)
    {
      if (!v9)
      {
LABEL_19:

        if (!v3)
        {
          return 0xFFFFFFFFLL;
        }

        goto LABEL_13;
      }

      *buf = 136446210;
      v15 = "tcp_connection_get_error";
      v6 = "%{public}s called with null connection, no backtrace";
      v10 = v4;
      v11 = v8;
LABEL_18:
      _os_log_impl(&dword_181A37000, v10, v11, v6, buf, 0xCu);
      goto LABEL_19;
    }

    if (v9)
    {
      *buf = 136446466;
      v15 = "tcp_connection_get_error";
      v16 = 2082;
      v17 = backtrace_string;
      _os_log_impl(&dword_181A37000, v4, v8, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
  }

  if (v3)
  {
LABEL_13:
    free(v3);
  }

  return 0xFFFFFFFFLL;
}

CFErrorRef nw_tcp_connection_copy_error(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    *buf = 136446210;
    v19 = "nw_tcp_connection_copy_error";
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
        if (!os_log_type_enabled(v7, type))
        {
          goto LABEL_23;
        }

        *buf = 136446210;
        v19 = "nw_tcp_connection_copy_error";
        v9 = "%{public}s called with null connection";
LABEL_21:
        v14 = v7;
        v15 = v8;
        goto LABEL_22;
      }

      if (v16 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        v8 = type;
        if (!os_log_type_enabled(v7, type))
        {
          goto LABEL_23;
        }

        *buf = 136446210;
        v19 = "nw_tcp_connection_copy_error";
        v9 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_21;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v11 = type;
      v12 = os_log_type_enabled(v7, type);
      if (!backtrace_string)
      {
        if (!v12)
        {
LABEL_23:

          if (!v6)
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        }

        *buf = 136446210;
        v19 = "nw_tcp_connection_copy_error";
        v9 = "%{public}s called with null connection, no backtrace";
        v14 = v7;
        v15 = v11;
LABEL_22:
        _os_log_impl(&dword_181A37000, v14, v15, v9, buf, 0xCu);
        goto LABEL_23;
      }

      if (v12)
      {
        *buf = 136446466;
        v19 = "nw_tcp_connection_copy_error";
        v20 = 2082;
        v21 = backtrace_string;
        _os_log_impl(&dword_181A37000, v7, v11, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v6)
    {
LABEL_17:
      v4 = 0;
      goto LABEL_18;
    }

LABEL_16:
    free(v6);
    goto LABEL_17;
  }

  os_unfair_lock_lock(v1 + 30);
  v3 = *&v2[6]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(v2 + 30);
  if (v3)
  {
    v4 = nw_error_copy_cf_error(v3);
  }

  else
  {
    v4 = 0;
  }

LABEL_18:
  return v4;
}

uint64_t tcp_connection_get_socket(void *a1, int a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    *buf = 136446210;
    v26 = "tcp_connection_get_socket";
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (__nwlog_fault(v8, &type, &v23))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = type;
        if (!os_log_type_enabled(v9, type))
        {
          goto LABEL_27;
        }

        *buf = 136446210;
        v26 = "tcp_connection_get_socket";
        v11 = "%{public}s called with null connection";
LABEL_25:
        v16 = v9;
        v17 = v10;
        goto LABEL_26;
      }

      if (v23 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = type;
        if (!os_log_type_enabled(v9, type))
        {
          goto LABEL_27;
        }

        *buf = 136446210;
        v26 = "tcp_connection_get_socket";
        v11 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_25;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      v14 = type;
      v15 = os_log_type_enabled(v9, type);
      if (!backtrace_string)
      {
        if (!v15)
        {
LABEL_27:

          if (!v8)
          {
            goto LABEL_22;
          }

          goto LABEL_21;
        }

        *buf = 136446210;
        v26 = "tcp_connection_get_socket";
        v11 = "%{public}s called with null connection, no backtrace";
        v16 = v9;
        v17 = v14;
LABEL_26:
        _os_log_impl(&dword_181A37000, v16, v17, v11, buf, 0xCu);
        goto LABEL_27;
      }

      if (v15)
      {
        *buf = 136446466;
        v26 = "tcp_connection_get_socket";
        v27 = 2082;
        v28 = backtrace_string;
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v8)
    {
LABEL_22:
      os_unfair_lock_opaque = 0xFFFFFFFFLL;
      goto LABEL_37;
    }

LABEL_21:
    free(v8);
    goto LABEL_22;
  }

  if (*&v3[4]._os_unfair_lock_opaque)
  {
    os_unfair_lock_lock(v3 + 30);
    os_unfair_lock_opaque = v4[29]._os_unfair_lock_opaque;
    if (os_unfair_lock_opaque == -1)
    {
      if (SBYTE2(v4[39]._os_unfair_lock_opaque) < 0)
      {
        connected_socket = nw_connection_get_connected_socket(*&v4[4]._os_unfair_lock_opaque);
        if (connected_socket >= -1)
        {
          os_unfair_lock_opaque = dup(connected_socket);
          v4[29]._os_unfair_lock_opaque = os_unfair_lock_opaque;
          goto LABEL_31;
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v6 = gLogObj;
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446210;
          v26 = "tcp_connection_get_socket";
          _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_ERROR, "%{public}s Cannot get socket on a connection for which client socket access is disallowed.", buf, 0xCu);
        }
      }

      os_unfair_lock_opaque = 0xFFFFFFFFLL;
    }

LABEL_31:
    if (a2)
    {
      v19 = 8;
    }

    else
    {
      v19 = 0;
    }

    HIBYTE(v4[39]._os_unfair_lock_opaque) = HIBYTE(v4[39]._os_unfair_lock_opaque) & 0xF7 | v19;
    os_unfair_lock_unlock(v4 + 30);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v20 = gLogObj;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v21 = *&v4[24]._os_unfair_lock_opaque;
      *buf = 136446978;
      v26 = "tcp_connection_get_socket";
      v27 = 2048;
      v28 = v21;
      v29 = 1024;
      v30 = os_unfair_lock_opaque;
      v31 = 1024;
      v32 = a2;
      _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_DEBUG, "%{public}s %llu dupfd: %d, takeownership: %{BOOL}d", buf, 0x22u);
    }

    goto LABEL_37;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v12 = gLogObj;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446210;
    v26 = "tcp_connection_get_socket";
    _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_ERROR, "%{public}s API Misuse: Function must be called after tcp_connection_start", buf, 0xCu);
  }

  os_unfair_lock_opaque = 0xFFFFFFFFLL;
LABEL_37:

  return os_unfair_lock_opaque;
}