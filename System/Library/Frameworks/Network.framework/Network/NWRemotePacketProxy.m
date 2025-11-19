@interface NWRemotePacketProxy
- (BOOL)receiveRemotePacket:(id)a3;
- (NWRemotePacketProxy)initWithDelegate:(id)a3;
- (NWRemotePacketProxyDelegate)delegate;
- (nw_protocol)outputHandlerForPacket:(id)a3 inbound:(BOOL)a4;
- (void)dealloc;
- (void)setOutputProtocolHandler:(nw_protocol *)a3 local:(id)a4 remote:(id)a5 ipProtocol:(unsigned __int8)a6;
- (void)setReceiveWindowPacketCount:(unsigned int)a3;
@end

@implementation NWRemotePacketProxy

- (NWRemotePacketProxyDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)receiveRemotePacket:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v15 = __nwlog_obj();
    *buf = 136446210;
    v26 = "[NWRemotePacketProxy receiveRemotePacket:]";
    v16 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (__nwlog_fault(v16, &type, &v23))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v17 = __nwlog_obj();
        v18 = type;
        if (os_log_type_enabled(v17, type))
        {
          *buf = 136446210;
          v26 = "[NWRemotePacketProxy receiveRemotePacket:]";
          _os_log_impl(&dword_181A37000, v17, v18, "%{public}s called with null packet", buf, 0xCu);
        }
      }

      else if (v23 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v17 = __nwlog_obj();
        v20 = type;
        v21 = os_log_type_enabled(v17, type);
        if (backtrace_string)
        {
          if (v21)
          {
            *buf = 136446466;
            v26 = "[NWRemotePacketProxy receiveRemotePacket:]";
            v27 = 2082;
            v28 = backtrace_string;
            _os_log_impl(&dword_181A37000, v17, v20, "%{public}s called with null packet, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_28;
        }

        if (v21)
        {
          *buf = 136446210;
          v26 = "[NWRemotePacketProxy receiveRemotePacket:]";
          _os_log_impl(&dword_181A37000, v17, v20, "%{public}s called with null packet, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v17 = __nwlog_obj();
        v22 = type;
        if (os_log_type_enabled(v17, type))
        {
          *buf = 136446210;
          v26 = "[NWRemotePacketProxy receiveRemotePacket:]";
          _os_log_impl(&dword_181A37000, v17, v22, "%{public}s called with null packet, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_28:
    if (v16)
    {
      free(v16);
    }

    goto LABEL_11;
  }

  v5 = [(NWRemotePacketProxy *)self outputHandlerForPacket:v4 inbound:1];
  v6 = [(NWRemotePacketProxy *)self writeRequests];
  objc_sync_enter(v6);
  while (1)
  {
    v7 = [(NWRemotePacketProxy *)self writeRequests];
    v8 = [v7 count];

    if (!v8)
    {
      break;
    }

    v9 = [(NWRemotePacketProxy *)self writeRequests];
    v10 = [v9 firstObject];

    if (!nw_remote_director_write_request([(NWRemotePacketProxy *)self packetProtocol], v5, v10))
    {

      break;
    }

    v11 = [(NWRemotePacketProxy *)self writeRequests];
    [v11 removeObjectAtIndex:0];
  }

  v12 = [[NWRemoteConnectionWriteRequest alloc] initWithData:v4 clientID:0];
  if (v8 || !nw_remote_director_write_request([(NWRemotePacketProxy *)self packetProtocol], v5, v12))
  {
    v13 = [(NWRemotePacketProxy *)self writeRequests];
    [v13 addObject:v12];
  }

  objc_sync_exit(v6);
LABEL_11:

  return v4 != 0;
}

- (void)setOutputProtocolHandler:(nw_protocol *)a3 local:(id)a4 remote:(id)a5 ipProtocol:(unsigned __int8)a6
{
  v41 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v12 = malloc_type_calloc(1uLL, 0x3CuLL, 0x1000040C2DCA394uLL);
  if (v12)
  {
    v13 = v12;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v10 address])
    {
      __memcpy_chk();
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v11 address])
    {
      __memcpy_chk();
    }

    v13[56] = a6;
    v14 = [(NWRemotePacketProxy *)self packetHashTable];
    node = nw_hash_table_get_node(v14, v13, 60);
    v16 = node;
    if (!a3)
    {
      if (node)
      {
        nw_hash_table_remove_node(v14, node);
      }

      goto LABEL_30;
    }

    if (node || (v16 = nw_hash_table_add_object(v14, v13, 0)) != 0)
    {
      *(v16 + 32) = a3;
LABEL_30:
      free(v13);
      goto LABEL_31;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v26 = gLogObj;
    *buf = 136446210;
    v36 = "[NWRemotePacketProxy setOutputProtocolHandler:local:remote:ipProtocol:]";
    v27 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v33 = 0;
    if (!__nwlog_fault(v27, &type, &v33))
    {
LABEL_49:
      if (v27)
      {
        free(v27);
      }

      goto LABEL_30;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v28 = gLogObj;
      v29 = type;
      if (os_log_type_enabled(v28, type))
      {
        *buf = 136446210;
        v36 = "[NWRemotePacketProxy setOutputProtocolHandler:local:remote:ipProtocol:]";
        v30 = "%{public}s nw_hash_table_add_object failed";
LABEL_47:
        _os_log_impl(&dword_181A37000, v28, v29, v30, buf, 0xCu);
      }
    }

    else
    {
      if (v33 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v28 = __nwlog_obj();
        v29 = type;
        v32 = os_log_type_enabled(v28, type);
        if (backtrace_string)
        {
          if (v32)
          {
            *buf = 136446466;
            v36 = "[NWRemotePacketProxy setOutputProtocolHandler:local:remote:ipProtocol:]";
            v37 = 2082;
            v38 = backtrace_string;
            _os_log_impl(&dword_181A37000, v28, v29, "%{public}s nw_hash_table_add_object failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_49;
        }

        if (!v32)
        {
          goto LABEL_48;
        }

        *buf = 136446210;
        v36 = "[NWRemotePacketProxy setOutputProtocolHandler:local:remote:ipProtocol:]";
        v30 = "%{public}s nw_hash_table_add_object failed, no backtrace";
        goto LABEL_47;
      }

      v28 = __nwlog_obj();
      v29 = type;
      if (os_log_type_enabled(v28, type))
      {
        *buf = 136446210;
        v36 = "[NWRemotePacketProxy setOutputProtocolHandler:local:remote:ipProtocol:]";
        v30 = "%{public}s nw_hash_table_add_object failed, backtrace limit exceeded";
        goto LABEL_47;
      }
    }

LABEL_48:

    goto LABEL_49;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v17 = gLogObj;
  *buf = 136446466;
  v36 = "[NWRemotePacketProxy setOutputProtocolHandler:local:remote:ipProtocol:]";
  v37 = 2048;
  v38 = 60;
  v13 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v33 = 0;
  if (!__nwlog_fault(v13, &type, &v33))
  {
    goto LABEL_29;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v18 = gLogObj;
    v19 = type;
    if (os_log_type_enabled(v18, type))
    {
      *buf = 136446466;
      v36 = "[NWRemotePacketProxy setOutputProtocolHandler:local:remote:ipProtocol:]";
      v37 = 2048;
      v38 = 60;
      v20 = "%{public}s calloc(%zu) failed";
LABEL_26:
      v24 = v18;
      v25 = v19;
LABEL_27:
      _os_log_impl(&dword_181A37000, v24, v25, v20, buf, 0x16u);
    }
  }

  else
  {
    if (v33 == 1)
    {
      v21 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v18 = gLogObj;
      v22 = type;
      v23 = os_log_type_enabled(v18, type);
      if (v21)
      {
        if (v23)
        {
          *buf = 136446722;
          v36 = "[NWRemotePacketProxy setOutputProtocolHandler:local:remote:ipProtocol:]";
          v37 = 2048;
          v38 = 60;
          v39 = 2082;
          v40 = v21;
          _os_log_impl(&dword_181A37000, v18, v22, "%{public}s calloc(%zu) failed, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(v21);
        if (v13)
        {
          goto LABEL_30;
        }

        goto LABEL_31;
      }

      if (!v23)
      {
        goto LABEL_28;
      }

      *buf = 136446466;
      v36 = "[NWRemotePacketProxy setOutputProtocolHandler:local:remote:ipProtocol:]";
      v37 = 2048;
      v38 = 60;
      v20 = "%{public}s calloc(%zu) failed, no backtrace";
      v24 = v18;
      v25 = v22;
      goto LABEL_27;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v18 = gLogObj;
    v19 = type;
    if (os_log_type_enabled(v18, type))
    {
      *buf = 136446466;
      v36 = "[NWRemotePacketProxy setOutputProtocolHandler:local:remote:ipProtocol:]";
      v37 = 2048;
      v38 = 60;
      v20 = "%{public}s calloc(%zu) failed, backtrace limit exceeded";
      goto LABEL_26;
    }
  }

LABEL_28:

LABEL_29:
  if (v13)
  {
    goto LABEL_30;
  }

LABEL_31:
}

- (nw_protocol)outputHandlerForPacket:(id)a3 inbound:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(NWRemotePacketProxy *)self packetHashTable];
  if (!nw_hash_table_count(v7, v8))
  {
    goto LABEL_37;
  }

  *&v25[8] = 0u;
  v9 = [v6 length];
  v10 = [v6 bytes];
  if (!v10 || !v9)
  {
    goto LABEL_37;
  }

  v11 = *v10 & 0xF0;
  if (v11 == 96)
  {
    v22 = 7708;
    *v21 = 7708;
    if (v9 <= 0x27)
    {
      goto LABEL_37;
    }

    v16 = 8;
    if (v4)
    {
      v17 = 24;
    }

    else
    {
      v17 = 8;
    }

    if (!v4)
    {
      v16 = 24;
    }

    *&v21[8] = *(v10 + v17);
    *v25 = *(v10 + v16);
    v25[20] = *(v10 + 6);
    if (v25[20] == 17)
    {
      if (v9 <= 0x2F)
      {
        goto LABEL_37;
      }

      if (v4)
      {
        goto LABEL_27;
      }
    }

    else
    {
      if (v25[20] != 6)
      {
        goto LABEL_35;
      }

      if (v9 <= 0x3B)
      {
        goto LABEL_37;
      }

      if (v4)
      {
LABEL_27:
        *&v21[2] = *(v10 + 42);
        v15 = *(v10 + 40);
        goto LABEL_34;
      }
    }

    *&v21[2] = *(v10 + 40);
    v15 = *(v10 + 42);
    goto LABEL_34;
  }

  if (v11 != 64)
  {
    goto LABEL_37;
  }

  v22 = 528;
  *v21 = 528;
  if (v9 <= 0x13)
  {
    goto LABEL_37;
  }

  v12 = 12;
  if (v4)
  {
    v13 = 16;
  }

  else
  {
    v13 = 12;
  }

  if (!v4)
  {
    v12 = 16;
  }

  v14 = *(v10 + v12);
  *&v21[4] = *(v10 + v13);
  v24 = v14;
  v25[20] = *(v10 + 9);
  if (v25[20] == 17)
  {
    if (v9 > 0x1B)
    {
      if (v4)
      {
        goto LABEL_16;
      }

LABEL_30:
      *&v21[2] = *(v10 + 20);
      v15 = *(v10 + 22);
      goto LABEL_34;
    }

LABEL_37:
    v19 = [(NWRemotePacketProxy *)self defaultOutputHandler];
    goto LABEL_38;
  }

  if (v25[20] != 6)
  {
    goto LABEL_35;
  }

  if (v9 <= 0x27)
  {
    goto LABEL_37;
  }

  if (!v4)
  {
    goto LABEL_30;
  }

LABEL_16:
  *&v21[2] = *(v10 + 22);
  v15 = *(v10 + 20);
LABEL_34:
  v23 = v15;
LABEL_35:
  node = nw_hash_table_get_node([(NWRemotePacketProxy *)self packetHashTable:*v21], v21, 60);
  if (!node)
  {
    goto LABEL_37;
  }

  v19 = *(node + 32);
LABEL_38:

  return v19;
}

- (void)setReceiveWindowPacketCount:(unsigned int)a3
{
  v4 = self;
  objc_sync_enter(v4);
  receiveWindowPacketCount = v4->_receiveWindowPacketCount;
  v4->_receiveWindowPacketCount = a3;
  objc_sync_exit(v4);

  if (a3)
  {
    if (!receiveWindowPacketCount)
    {
      nw_remote_packet_input_available([(NWRemotePacketProxy *)v4 packetProtocol], [(NWRemotePacketProxy *)v4 defaultOutputHandler]);
      v6 = [(NWRemotePacketProxy *)v4 packetHashTable];
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __51__NWRemotePacketProxy_setReceiveWindowPacketCount___block_invoke;
      v7[3] = &unk_1E6A3CDF8;
      v7[4] = v4;
      nw_hash_table_apply(v6, v7);
    }
  }
}

uint64_t __51__NWRemotePacketProxy_setReceiveWindowPacketCount___block_invoke(uint64_t a1, uint64_t a2)
{
  extra = nw_hash_node_get_extra(a2);
  nw_remote_packet_input_available([*(a1 + 32) packetProtocol], *extra);
  return 1;
}

- (void)dealloc
{
  if ([(NWRemotePacketProxy *)self packetProtocol])
  {
    free([(NWRemotePacketProxy *)self packetProtocol]);
    [(NWRemotePacketProxy *)self setPacketProtocol:0];
  }

  if ([(NWRemotePacketProxy *)self packetHashTable]&& [(NWRemotePacketProxy *)self packetHashTable])
  {
    v3 = [(NWRemotePacketProxy *)self packetHashTable];
    _nw_hash_table_release(v3, v4);
    [(NWRemotePacketProxy *)self setPacketHashTable:0];
  }

  v5.receiver = self;
  v5.super_class = NWRemotePacketProxy;
  [(NWRemotePacketProxy *)&v5 dealloc];
}

- (NWRemotePacketProxy)initWithDelegate:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v28 = __nwlog_obj();
    *buf = 136446210;
    v42 = "[NWRemotePacketProxy initWithDelegate:]";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v39 = 0;
    if (__nwlog_fault(v12, &type, &v39))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v13 = __nwlog_obj();
        v17 = type;
        if (!os_log_type_enabled(v13, type))
        {
          goto LABEL_36;
        }

        *buf = 136446210;
        v42 = "[NWRemotePacketProxy initWithDelegate:]";
        v15 = "%{public}s called with null delegate";
      }

      else if (v39 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v13 = __nwlog_obj();
        v17 = type;
        v35 = os_log_type_enabled(v13, type);
        if (backtrace_string)
        {
          if (v35)
          {
            *buf = 136446466;
            v42 = "[NWRemotePacketProxy initWithDelegate:]";
            v43 = 2082;
            v44 = backtrace_string;
            _os_log_impl(&dword_181A37000, v13, v17, "%{public}s called with null delegate, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          if (!v12)
          {
            goto LABEL_39;
          }

          goto LABEL_38;
        }

        if (!v35)
        {
          goto LABEL_36;
        }

        *buf = 136446210;
        v42 = "[NWRemotePacketProxy initWithDelegate:]";
        v15 = "%{public}s called with null delegate, no backtrace";
      }

      else
      {
        v13 = __nwlog_obj();
        v17 = type;
        if (!os_log_type_enabled(v13, type))
        {
          goto LABEL_36;
        }

        *buf = 136446210;
        v42 = "[NWRemotePacketProxy initWithDelegate:]";
        v15 = "%{public}s called with null delegate, backtrace limit exceeded";
      }

      goto LABEL_33;
    }

    goto LABEL_37;
  }

  v38.receiver = self;
  v38.super_class = NWRemotePacketProxy;
  v5 = [(NWRemotePacketProxy *)&v38 init];
  if (!v5)
  {
    v29 = __nwlog_obj();
    *buf = 136446210;
    v42 = "[NWRemotePacketProxy initWithDelegate:]";
    v30 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v39 = 0;
    if (!__nwlog_fault(v30, &type, &v39))
    {
      goto LABEL_75;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v31 = __nwlog_obj();
      v32 = type;
      if (os_log_type_enabled(v31, type))
      {
        *buf = 136446210;
        v42 = "[NWRemotePacketProxy initWithDelegate:]";
        v33 = "%{public}s [super init] failed";
LABEL_73:
        _os_log_impl(&dword_181A37000, v31, v32, v33, buf, 0xCu);
      }
    }

    else
    {
      if (v39 == 1)
      {
        v36 = __nw_create_backtrace_string();
        v31 = __nwlog_obj();
        v32 = type;
        v37 = os_log_type_enabled(v31, type);
        if (v36)
        {
          if (v37)
          {
            *buf = 136446466;
            v42 = "[NWRemotePacketProxy initWithDelegate:]";
            v43 = 2082;
            v44 = v36;
            _os_log_impl(&dword_181A37000, v31, v32, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v36);
          goto LABEL_75;
        }

        if (!v37)
        {
          goto LABEL_74;
        }

        *buf = 136446210;
        v42 = "[NWRemotePacketProxy initWithDelegate:]";
        v33 = "%{public}s [super init] failed, no backtrace";
        goto LABEL_73;
      }

      v31 = __nwlog_obj();
      v32 = type;
      if (os_log_type_enabled(v31, type))
      {
        *buf = 136446210;
        v42 = "[NWRemotePacketProxy initWithDelegate:]";
        v33 = "%{public}s [super init] failed, backtrace limit exceeded";
        goto LABEL_73;
      }
    }

LABEL_74:

LABEL_75:
    if (v30)
    {
      free(v30);
    }

    goto LABEL_40;
  }

  self = v5;
  v5->_receiveWindowPacketCount = 16;
  objc_storeWeak(&v5->_delegate, v4);
  v6 = [MEMORY[0x1E695DF70] array];
  writeRequests = self->_writeRequests;
  self->_writeRequests = v6;

  v8 = malloc_type_calloc(1uLL, 0x40uLL, 0x10A0040C9AB51B7uLL);
  self->_packetProtocol = v8;
  if (!v8)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    *buf = 136446466;
    v42 = "[NWRemotePacketProxy initWithDelegate:]";
    v43 = 2048;
    v44 = 64;
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v39 = 0;
    if (!__nwlog_fault(v12, &type, &v39))
    {
      goto LABEL_37;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v14 = type;
      if (!os_log_type_enabled(v13, type))
      {
        goto LABEL_36;
      }

      *buf = 136446466;
      v42 = "[NWRemotePacketProxy initWithDelegate:]";
      v43 = 2048;
      v44 = 64;
      v15 = "%{public}s calloc(%zu) failed";
    }

    else
    {
      if (v39 == 1)
      {
        v18 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v13 = gLogObj;
        v19 = type;
        v20 = os_log_type_enabled(v13, type);
        if (v18)
        {
          if (v20)
          {
            *buf = 136446722;
            v42 = "[NWRemotePacketProxy initWithDelegate:]";
            v43 = 2048;
            v44 = 64;
            v45 = 2082;
            v46 = v18;
            _os_log_impl(&dword_181A37000, v13, v19, "%{public}s calloc(%zu) failed, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(v18);
          if (!v12)
          {
            goto LABEL_39;
          }

          goto LABEL_38;
        }

        if (!v20)
        {
          goto LABEL_36;
        }

        *buf = 136446466;
        v42 = "[NWRemotePacketProxy initWithDelegate:]";
        v43 = 2048;
        v44 = 64;
        v15 = "%{public}s calloc(%zu) failed, no backtrace";
        v24 = v13;
        v25 = v19;
        goto LABEL_30;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v14 = type;
      if (!os_log_type_enabled(v13, type))
      {
        goto LABEL_36;
      }

      *buf = 136446466;
      v42 = "[NWRemotePacketProxy initWithDelegate:]";
      v43 = 2048;
      v44 = 64;
      v15 = "%{public}s calloc(%zu) failed, backtrace limit exceeded";
    }

    v24 = v13;
    v25 = v14;
LABEL_30:
    v26 = 22;
LABEL_35:
    _os_log_impl(&dword_181A37000, v24, v25, v15, buf, v26);
    goto LABEL_36;
  }

  if (initWithDelegate__packetProtocolOnceToken != -1)
  {
    dispatch_once(&initWithDelegate__packetProtocolOnceToken, &__block_literal_global_18516);
  }

  packetProtocol = self->_packetProtocol;
  packetProtocol->identifier = &initWithDelegate__NWRemotePacketProtocolIdentifier;
  packetProtocol->callbacks = &initWithDelegate__NWRemotePacketProtocolCallbacks;
  packetProtocol->handle = self;
  internal = nw_hash_table_create_internal(0x11u, 60, nw_packet_get_key, nw_packet_key_hash, nw_packet_matches_key, nw_packet_release, 0);
  if (!internal)
  {
    self->_packetHashTable = 0;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v16 = gLogObj;
    *buf = 136446210;
    v42 = "[NWRemotePacketProxy initWithDelegate:]";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v39 = 0;
    if (!__nwlog_fault(v12, &type, &v39))
    {
      goto LABEL_37;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v17 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v42 = "[NWRemotePacketProxy initWithDelegate:]";
        v15 = "%{public}s nw_packet_hash_table_create failed";
LABEL_33:
        v24 = v13;
        v25 = v17;
LABEL_34:
        v26 = 12;
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    if (v39 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v17 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v42 = "[NWRemotePacketProxy initWithDelegate:]";
        v15 = "%{public}s nw_packet_hash_table_create failed, backtrace limit exceeded";
        goto LABEL_33;
      }

LABEL_36:

      goto LABEL_37;
    }

    v21 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v13 = gLogObj;
    v22 = type;
    v23 = os_log_type_enabled(v13, type);
    if (!v21)
    {
      if (!v23)
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v42 = "[NWRemotePacketProxy initWithDelegate:]";
      v15 = "%{public}s nw_packet_hash_table_create failed, no backtrace";
      v24 = v13;
      v25 = v22;
      goto LABEL_34;
    }

    if (v23)
    {
      *buf = 136446466;
      v42 = "[NWRemotePacketProxy initWithDelegate:]";
      v43 = 2082;
      v44 = v21;
      _os_log_impl(&dword_181A37000, v13, v22, "%{public}s nw_packet_hash_table_create failed, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v21);
LABEL_37:
    if (!v12)
    {
LABEL_39:

LABEL_40:
      self = 0;
      goto LABEL_41;
    }

LABEL_38:
    free(v12);
    goto LABEL_39;
  }

  *(internal + 56) &= ~2u;
  self->_packetHashTable = internal;
LABEL_41:

  return self;
}

double __40__NWRemotePacketProxy_initWithDelegate___block_invoke()
{
  initWithDelegate__NWRemotePacketProtocolIdentifier = 0u;
  unk_1EA8419E8 = 0u;
  *&result = 0x100000004;
  qword_1EA8419F8 = 0x100000004;
  initWithDelegate__NWRemotePacketProtocolCallbacks = nw_protocol_default_add_input_handler;
  qword_1EA841A10 = nw_protocol_default_replace_input_handler;
  qword_1EA841A08 = nw_protocol_default_remove_input_handler;
  qword_1EA841AB8 = nw_protocol_default_input_finished;
  qword_1EA841AC0 = nw_protocol_default_output_finished;
  qword_1EA841B08 = nw_protocol_default_input_flush;
  qword_1EA841A50 = nw_protocol_default_get_input_frames;
  qword_1EA841A58 = nw_protocol_default_get_output_frames;
  qword_1EA841A60 = nw_protocol_default_finalize_output_frames;
  qword_1EA841AF8 = nw_protocol_default_get_message_properties;
  qword_1EA841A68 = nw_protocol_default_link_state;
  qword_1EA841A70 = nw_protocol_default_get_parameters;
  qword_1EA841A80 = nw_protocol_default_get_local;
  qword_1EA841A88 = nw_protocol_default_get_remote;
  qword_1EA841A78 = nw_protocol_default_get_path;
  qword_1EA841AA8 = nw_protocol_default_updated_path;
  qword_1EA841AC8 = nw_protocol_default_get_output_local;
  qword_1EA841AD0 = nw_protocol_default_get_output_interface;
  qword_1EA841A18 = nw_protocol_default_connect;
  qword_1EA841A20 = nw_protocol_default_disconnect;
  qword_1EA841A28 = nw_protocol_default_connected;
  qword_1EA841A30 = nw_protocol_default_disconnected;
  qword_1EA841A38 = nw_protocol_default_error;
  qword_1EA841B00 = nw_protocol_default_reset;
  qword_1EA841AB0 = nw_protocol_default_supports_external_data;
  qword_1EA841AD8 = nw_protocol_default_waiting_for_output;
  qword_1EA841AE0 = nw_protocol_default_copy_info;
  qword_1EA841A90 = nw_protocol_default_register_notification;
  qword_1EA841A98 = nw_protocol_default_unregister_notification;
  qword_1EA841AA0 = nw_protocol_default_notify;
  qword_1EA841AE8 = nw_protocol_default_add_listen_handler;
  qword_1EA841AF0 = nw_protocol_default_remove_listen_handler;
  qword_1EA841A40 = nw_remote_packet_input_available;
  qword_1EA841A48 = nw_remote_packet_output_available;
  return result;
}

@end