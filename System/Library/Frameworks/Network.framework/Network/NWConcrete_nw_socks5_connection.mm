@interface NWConcrete_nw_socks5_connection
- (NSString)description;
- (void)dealloc;
@end

@implementation NWConcrete_nw_socks5_connection

- (NSString)description
{
  v35 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  if (!selfCopy)
  {
    v21 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_socks5_connection_copy_description";
    v22 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (__nwlog_fault(v22, type, &v31))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v23 = __nwlog_obj();
        v24 = type[0];
        if (os_log_type_enabled(v23, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_socks5_connection_copy_description";
          _os_log_impl(&dword_181A37000, v23, v24, "%{public}s called with null socksConnection", buf, 0xCu);
        }
      }

      else if (v31 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v23 = __nwlog_obj();
        v26 = type[0];
        v27 = os_log_type_enabled(v23, type[0]);
        if (backtrace_string)
        {
          if (v27)
          {
            *buf = 136446466;
            *&buf[4] = "nw_socks5_connection_copy_description";
            v33 = 2082;
            v34 = backtrace_string;
            _os_log_impl(&dword_181A37000, v23, v26, "%{public}s called with null socksConnection, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_60;
        }

        if (v27)
        {
          *buf = 136446210;
          *&buf[4] = "nw_socks5_connection_copy_description";
          _os_log_impl(&dword_181A37000, v23, v26, "%{public}s called with null socksConnection, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v23 = __nwlog_obj();
        v28 = type[0];
        if (os_log_type_enabled(v23, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_socks5_connection_copy_description";
          _os_log_impl(&dword_181A37000, v23, v28, "%{public}s called with null socksConnection, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_60:
    if (v22)
    {
      free(v22);
    }

    goto LABEL_62;
  }

  v3 = selfCopy;
  *buf = 0;
  if (*(selfCopy + 160) < 0)
  {
    sc_in_udp_associated_tcp_connection = selfCopy->sc_in_udp_associated_tcp_connection;
    if (sc_in_udp_associated_tcp_connection)
    {
      v5 = sc_in_udp_associated_tcp_connection;
      top_id = v5->top_id;
    }

    else
    {
      top_id = 0;
    }

    asprintf(buf, "(udp)/C%llu(tcp)", top_id);
  }

  *type = 0;
  sc_id = v3->sc_id;
  sc_state = v3->sc_state;
  v9 = "invalid";
  switch(v3->sc_state)
  {
    case 0u:
      break;
    case 1u:
      v9 = "initial";
      break;
    case 2u:
      v9 = "connected";
      break;
    case 3u:
      v9 = "got_vers";
      break;
    case 4u:
      v9 = "got_methods";
      break;
    case 5u:
      v9 = "got_address_type";
      break;
    case 6u:
      v9 = "got_address";
      break;
    case 7u:
      v9 = "got_request";
      break;
    case 8u:
      v9 = "out_connected";
      break;
    case 9u:
    case 0xAu:
    case 0xBu:
    case 0xCu:
    case 0xDu:
    case 0xEu:
    case 0xFu:
    case 0x10u:
    case 0x11u:
    case 0x12u:
    case 0x13u:
    case 0x14u:
    case 0x15u:
    case 0x16u:
    case 0x17u:
    case 0x18u:
    case 0x19u:
    case 0x1Au:
    case 0x1Bu:
    case 0x1Cu:
    case 0x1Du:
    case 0x1Eu:
    case 0x1Fu:
    case 0x20u:
    case 0x21u:
    case 0x22u:
    case 0x23u:
    case 0x24u:
    case 0x25u:
    case 0x26u:
    case 0x27u:
    case 0x28u:
    case 0x29u:
    case 0x2Au:
    case 0x2Bu:
    case 0x2Cu:
    case 0x2Du:
    case 0x2Eu:
    case 0x2Fu:
    case 0x30u:
    case 0x31u:
    case 0x32u:
    case 0x33u:
    case 0x34u:
    case 0x35u:
    case 0x36u:
    case 0x37u:
    case 0x38u:
    case 0x39u:
    case 0x3Au:
    case 0x3Bu:
    case 0x3Cu:
    case 0x3Du:
    case 0x3Eu:
    case 0x3Fu:
    case 0x40u:
    case 0x41u:
    case 0x42u:
    case 0x43u:
    case 0x44u:
    case 0x45u:
    case 0x46u:
    case 0x47u:
    case 0x48u:
    case 0x49u:
    case 0x4Au:
    case 0x4Bu:
    case 0x4Cu:
    case 0x4Du:
    case 0x4Eu:
    case 0x4Fu:
    case 0x50u:
    case 0x51u:
    case 0x52u:
    case 0x53u:
    case 0x54u:
    case 0x55u:
    case 0x56u:
    case 0x57u:
    case 0x58u:
    case 0x59u:
    case 0x5Au:
    case 0x5Bu:
    case 0x5Cu:
    case 0x5Du:
    case 0x5Eu:
    case 0x5Fu:
    case 0x60u:
    case 0x61u:
    case 0x62u:
    case 0x63u:
    case 0x64u:
      goto LABEL_12;
    case 0x65u:
      v9 = "shoes_initial";
      break;
    case 0x66u:
      v9 = "shoes_connected";
      break;
    case 0x67u:
      v9 = "shoes_got_length";
      break;
    case 0x68u:
      v9 = "shoes_got_request";
      break;
    case 0x69u:
      v9 = "shoes_out_connected";
      break;
    default:
      if (sc_state == 200)
      {
        v9 = "ready";
      }

      else if (sc_state == 255)
      {
        v9 = "cancelled";
      }

      else
      {
LABEL_12:
        v9 = "unknown";
      }

      break;
  }

  v10 = "";
  if ((*(v3 + 160) & 0x20) != 0)
  {
    v11 = " udp";
  }

  else
  {
    v11 = "";
  }

  if (*(v3 + 160) < 0)
  {
    v12 = "-associate";
  }

  else
  {
    v12 = "";
  }

  sc_in_connection = v3->sc_in_connection;
  if (sc_in_connection)
  {
    v14 = sc_in_connection;
    v15 = v14->top_id;
  }

  else
  {
    v15 = 0;
  }

  if (*buf)
  {
    v10 = *buf;
  }

  sc_out_connection = v3->sc_out_connection;
  if (sc_out_connection)
  {
    v17 = sc_out_connection;
    v18 = v17->top_id;
  }

  else
  {
    v18 = 0;
  }

  asprintf(type, "[SPC%llu %s%s%s in[C%llu%s] out[C%llu]]", sc_id, v9, v11, v12, v15, v10, v18);
  if (*buf)
  {
    free(*buf);
  }

  v19 = *type;

  if (v19)
  {
    v20 = CFStringCreateWithCStringNoCopy(*MEMORY[0x1E695E480], v19, 0x8000100u, *MEMORY[0x1E695E488]);
    goto LABEL_63;
  }

LABEL_62:
  v20 = 0;
LABEL_63:

  return v20;
}

- (void)dealloc
{
  v39 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v3 = gLogObj;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446466;
    v32 = "[NWConcrete_nw_socks5_connection dealloc]";
    v33 = 2114;
    selfCopy6 = self;
    _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@", buf, 0x16u);
  }

  byte_pointer = self->sc_out_address.byte_pointer;
  if (byte_pointer)
  {
    free(byte_pointer);
    self->sc_out_address.byte_pointer = 0;
  }

  if (self->sc_internally_retained_object)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    *buf = 136446210;
    v32 = "[NWConcrete_nw_socks5_connection dealloc]";
    v27 = 12;
    v26 = buf;
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v29 = 0;
    if (!__nwlog_fault(v6, &type, &v29))
    {
      goto LABEL_11;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v32 = "[NWConcrete_nw_socks5_connection dealloc]";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s over-release of nw_socks5_connection. Object should not be internally retained while deallocating", buf, 0xCu);
      }

LABEL_10:

LABEL_11:
      if (!v6)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    if (v29 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v22 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v32 = "[NWConcrete_nw_socks5_connection dealloc]";
        _os_log_impl(&dword_181A37000, v7, v22, "%{public}s over-release of nw_socks5_connection. Object should not be internally retained while deallocating, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_10;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    v16 = type;
    v17 = os_log_type_enabled(v7, type);
    if (!backtrace_string)
    {
      if (v17)
      {
        *buf = 136446210;
        v32 = "[NWConcrete_nw_socks5_connection dealloc]";
        _os_log_impl(&dword_181A37000, v7, v16, "%{public}s over-release of nw_socks5_connection. Object should not be internally retained while deallocating, no backtrace", buf, 0xCu);
      }

      goto LABEL_10;
    }

    if (v17)
    {
      *buf = 136446466;
      v32 = "[NWConcrete_nw_socks5_connection dealloc]";
      v33 = 2082;
      selfCopy6 = backtrace_string;
      _os_log_impl(&dword_181A37000, v7, v16, "%{public}s over-release of nw_socks5_connection. Object should not be internally retained while deallocating, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
    if (v6)
    {
LABEL_12:
      free(v6);
    }
  }

LABEL_13:
  nw_socks5_connection_remove_prefer_wifi_request(self);
  if (!self->sc_busy_counter)
  {
    goto LABEL_21;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v9 = gLogObj;
  sc_busy_counter = self->sc_busy_counter;
  *buf = 136446722;
  v32 = "[NWConcrete_nw_socks5_connection dealloc]";
  v33 = 2112;
  selfCopy6 = self;
  v35 = 2048;
  v36 = sc_busy_counter;
  v27 = 32;
  v26 = buf;
  v11 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v29 = 0;
  if (__nwlog_fault(v11, &type, &v29))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v12 = gLogObj;
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        v14 = self->sc_busy_counter;
        *buf = 136446722;
        v32 = "[NWConcrete_nw_socks5_connection dealloc]";
        v33 = 2112;
        selfCopy6 = self;
        v35 = 2048;
        v36 = v14;
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s %@ dealloc while busy count is %llu, not zero", buf, 0x20u);
      }
    }

    else if (v29 == 1)
    {
      v18 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v12 = gLogObj;
      v19 = type;
      v20 = os_log_type_enabled(v12, type);
      if (v18)
      {
        if (v20)
        {
          v21 = self->sc_busy_counter;
          *buf = 136446978;
          v32 = "[NWConcrete_nw_socks5_connection dealloc]";
          v33 = 2112;
          selfCopy6 = self;
          v35 = 2048;
          v36 = v21;
          v37 = 2082;
          v38 = v18;
          _os_log_impl(&dword_181A37000, v12, v19, "%{public}s %@ dealloc while busy count is %llu, not zero, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v18);
        if (v11)
        {
          goto LABEL_20;
        }

        goto LABEL_21;
      }

      if (v20)
      {
        v25 = self->sc_busy_counter;
        *buf = 136446722;
        v32 = "[NWConcrete_nw_socks5_connection dealloc]";
        v33 = 2112;
        selfCopy6 = self;
        v35 = 2048;
        v36 = v25;
        _os_log_impl(&dword_181A37000, v12, v19, "%{public}s %@ dealloc while busy count is %llu, not zero, no backtrace", buf, 0x20u);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v12 = gLogObj;
      v23 = type;
      if (os_log_type_enabled(v12, type))
      {
        v24 = self->sc_busy_counter;
        *buf = 136446722;
        v32 = "[NWConcrete_nw_socks5_connection dealloc]";
        v33 = 2112;
        selfCopy6 = self;
        v35 = 2048;
        v36 = v24;
        _os_log_impl(&dword_181A37000, v12, v23, "%{public}s %@ dealloc while busy count is %llu, not zero, backtrace limit exceeded", buf, 0x20u);
      }
    }
  }

  if (v11)
  {
LABEL_20:
    free(v11);
  }

LABEL_21:
  v28.receiver = self;
  v28.super_class = NWConcrete_nw_socks5_connection;
  [(NWConcrete_nw_socks5_connection *)&v28 dealloc:v26];
}

@end