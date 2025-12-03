@interface NWConcrete_nw_ethernet_channel
- (uint64_t)createChannel;
- (unsigned)initWithEtherType:(void *)type interface:(void *)interface parameters:;
- (void)close;
- (void)closeChannel:(uint64_t)channel;
- (void)dealloc;
- (void)updateClientState:(void *)state error:;
@end

@implementation NWConcrete_nw_ethernet_channel

- (void)dealloc
{
  v20 = *MEMORY[0x1E69E9840];
  if (self && *(self + 19))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = *(self + 3);
      v5 = *(self + 42);
      *buf = 136447234;
      v11 = "[NWConcrete_nw_ethernet_channel dealloc]";
      v12 = 2080;
      selfCopy = v4;
      v14 = 1042;
      v15 = 16;
      v16 = 2098;
      v17 = self + 115;
      v18 = 1024;
      v19 = v5;
      v6 = "%{public}s [%s: nexus instance %{public,uuid_t}.16P <fd %d>] dealloc";
      v7 = v3;
      v8 = 44;
LABEL_7:
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEBUG, v6, buf, v8);
    }
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v11 = "[NWConcrete_nw_ethernet_channel dealloc]";
      v12 = 2114;
      selfCopy = self;
      v6 = "%{public}s [%{public}@] dealloc";
      v7 = v3;
      v8 = 22;
      goto LABEL_7;
    }
  }

  [(NWConcrete_nw_ethernet_channel *)self close];
  v9.receiver = self;
  v9.super_class = NWConcrete_nw_ethernet_channel;
  [(NWConcrete_nw_ethernet_channel *)&v9 dealloc];
}

- (void)close
{
  v27 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return;
  }

  v2 = *(self + 152);
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v3 = gLogObj;
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
  if (v2)
  {
    if (v4)
    {
      v5 = *(self + 24);
      v6 = *(self + 168);
      v17 = 136447234;
      v18 = "[NWConcrete_nw_ethernet_channel close]";
      v19 = 2080;
      selfCopy = v5;
      v21 = 1042;
      v22 = 16;
      v23 = 2098;
      v24 = self + 115;
      v25 = 1024;
      v26 = v6;
      v7 = "%{public}s [%s: nexus instance %{public,uuid_t}.16P <fd %d>] close";
      v8 = v3;
      v9 = 44;
LABEL_7:
      _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEBUG, v7, &v17, v9);
    }
  }

  else if (v4)
  {
    v17 = 136446466;
    v18 = "[NWConcrete_nw_ethernet_channel close]";
    v19 = 2114;
    selfCopy = self;
    v7 = "%{public}s [%{public}@] close";
    v8 = v3;
    v9 = 22;
    goto LABEL_7;
  }

  v10 = *(self + 40);
  *(self + 40) = 0;

  v11 = *(self + 56);
  *(self + 56) = 0;

  v12 = *(self + 64);
  *(self + 64) = 0;

  [(NWConcrete_nw_ethernet_channel *)self closeChannel:?];
  v13 = *(self + 72);
  if (v13)
  {
    nw_path_evaluator_cancel(v13);
    v14 = *(self + 72);
    *(self + 72) = 0;
  }

  v15 = *(self + 80);
  if (v15)
  {
    nw_path_flow_registration_close(v15);
    v16 = *(self + 80);
    *(self + 80) = 0;
  }
}

- (void)closeChannel:(uint64_t)channel
{
  v37 = *MEMORY[0x1E69E9840];
  if (!channel)
  {
    return;
  }

  v4 = *(channel + 152);
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v5 = gLogObj;
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (v4)
  {
    if (!v6)
    {
      goto LABEL_8;
    }

    v7 = *(channel + 24);
    v8 = *(channel + 168);
    v27 = 136447234;
    v28 = "[NWConcrete_nw_ethernet_channel closeChannel:]";
    v29 = 2080;
    channelCopy2 = v7;
    v31 = 1042;
    v32 = 16;
    v33 = 2098;
    v34 = channel + 115;
    v35 = 1024;
    v36 = v8;
    v9 = "%{public}s [%s: nexus instance %{public,uuid_t}.16P <fd %d>] closeChannel";
    v10 = v5;
    v11 = 44;
  }

  else
  {
    if (!v6)
    {
      goto LABEL_8;
    }

    v27 = 136446466;
    v28 = "[NWConcrete_nw_ethernet_channel closeChannel:]";
    v29 = 2114;
    channelCopy2 = channel;
    v9 = "%{public}s [%{public}@] closeChannel";
    v10 = v5;
    v11 = 22;
  }

  _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_DEBUG, v9, &v27, v11);
LABEL_8:

  if ((*(channel + 113) & 1) == 0)
  {
    if (a2)
    {
      posix_error = nw_error_create_posix_error(a2);
    }

    else
    {
      posix_error = 0;
    }

    [(NWConcrete_nw_ethernet_channel *)channel updateClientState:posix_error error:?];
  }

  if (!*(channel + 104))
  {
    goto LABEL_21;
  }

  v13 = *(channel + 152);
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v14 = gLogObj;
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);
  if (v13)
  {
    if (v15)
    {
      v16 = *(channel + 24);
      v17 = *(channel + 168);
      v27 = 136447234;
      v28 = "[NWConcrete_nw_ethernet_channel closeChannel:]";
      v29 = 2080;
      channelCopy2 = v16;
      v31 = 1042;
      v32 = 16;
      v33 = 2098;
      v34 = channel + 115;
      v35 = 1024;
      v36 = v17;
      v18 = "%{public}s [%s: nexus instance %{public,uuid_t}.16P <fd %d>] close: cancel input";
      v19 = v14;
      v20 = 44;
LABEL_19:
      _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_DEBUG, v18, &v27, v20);
    }
  }

  else if (v15)
  {
    v27 = 136446466;
    v28 = "[NWConcrete_nw_ethernet_channel closeChannel:]";
    v29 = 2114;
    channelCopy2 = channel;
    v18 = "%{public}s [%{public}@] close: cancel input";
    v19 = v14;
    v20 = 22;
    goto LABEL_19;
  }

  nw_queue_cancel_source(*(channel + 104), v21);
  *(channel + 104) = 0;
  *(channel + 112) = 0;
LABEL_21:
  if (*(channel + 152))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v22 = gLogObj;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v23 = *(channel + 24);
      v24 = *(channel + 168);
      v27 = 136447234;
      v28 = "[NWConcrete_nw_ethernet_channel closeChannel:]";
      v29 = 2080;
      channelCopy2 = v23;
      v31 = 1042;
      v32 = 16;
      v33 = 2098;
      v34 = channel + 115;
      v35 = 1024;
      v36 = v24;
      _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_DEBUG, "%{public}s [%s: nexus instance %{public,uuid_t}.16P <fd %d>] close: cancel channel", &v27, 0x2Cu);
    }

    os_channel_destroy();
    *(channel + 152) = 0;
  }

  *(channel + 168) = -1;
  *(channel + 176) = 0;
  *(channel + 184) = 0;
  if (*(channel + 160))
  {
    os_channel_attr_destroy();
    *(channel + 160) = 0;
  }

  v25 = *(channel + 16);
  *(channel + 16) = 0;

  *(channel + 132) = 0;
  uuid_clear((channel + 115));
  uuid_clear((channel + 136));
  v26 = *(channel + 88);
  *(channel + 88) = 0;

  *(channel + 100) = 0;
  *(channel + 96) = 0;
}

- (void)updateClientState:(void *)state error:
{
  stateCopy = state;
  v6 = *(self + 48);
  if (v6 && *(self + 40))
  {
    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x3032000000;
    v12[3] = __Block_byref_object_copy__2559;
    v12[4] = __Block_byref_object_dispose__2560;
    v13 = _Block_copy(v6);
    v7 = *(self + 40);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__NWConcrete_nw_ethernet_channel_updateClientState_error___block_invoke;
    block[3] = &unk_1E6A3C060;
    v10 = v12;
    v11 = a2;
    v9 = stateCopy;
    dispatch_async(v7, block);

    _Block_object_dispose(v12, 8);
  }
}

- (unsigned)initWithEtherType:(void *)type interface:(void *)interface parameters:
{
  v69 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  interfaceCopy = interface;
  if (!self)
  {
    goto LABEL_18;
  }

  v54.receiver = self;
  v54.super_class = NWConcrete_nw_ethernet_channel;
  v10 = objc_msgSendSuper2(&v54, sel_init);
  v11 = v10;
  if (!v10)
  {
    v36 = __nwlog_obj();
    *buf = 136446210;
    v56 = "[NWConcrete_nw_ethernet_channel initWithEtherType:interface:parameters:]";
    v37 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v52 = 0;
    if (__nwlog_fault(v37, &type, &v52))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v38 = __nwlog_obj();
        typeCopy2 = type;
        if (os_log_type_enabled(v38, type))
        {
          *buf = 136446210;
          v56 = "[NWConcrete_nw_ethernet_channel initWithEtherType:interface:parameters:]";
          _os_log_impl(&dword_181A37000, v38, typeCopy2, "%{public}s [super init] failed", buf, 0xCu);
        }
      }

      else if (v52 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v38 = __nwlog_obj();
        typeCopy3 = type;
        v42 = os_log_type_enabled(v38, type);
        if (backtrace_string)
        {
          if (v42)
          {
            *buf = 136446466;
            v56 = "[NWConcrete_nw_ethernet_channel initWithEtherType:interface:parameters:]";
            v57 = 2082;
            v58 = backtrace_string;
            _os_log_impl(&dword_181A37000, v38, typeCopy3, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_65;
        }

        if (v42)
        {
          *buf = 136446210;
          v56 = "[NWConcrete_nw_ethernet_channel initWithEtherType:interface:parameters:]";
          _os_log_impl(&dword_181A37000, v38, typeCopy3, "%{public}s [super init] failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v38 = __nwlog_obj();
        typeCopy4 = type;
        if (os_log_type_enabled(v38, type))
        {
          *buf = 136446210;
          v56 = "[NWConcrete_nw_ethernet_channel initWithEtherType:interface:parameters:]";
          _os_log_impl(&dword_181A37000, v38, typeCopy4, "%{public}s [super init] failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_65:
    if (v37)
    {
      free(v37);
    }

    goto LABEL_18;
  }

  *(v10 + 6) = a2;
  objc_storeStrong(v10 + 2, type);
  if (typeCopy)
  {
    name = _nw_interface_get_name(typeCopy);
  }

  else
  {
    name = 0;
  }

  v11[3] = name;
  v13 = v11[8];
  v11[8] = 0;

  v14 = v11[5];
  v11[5] = 0;

  *(v11 + 113) = 0;
  if (*(v11 + 6) && v11[2])
  {
    if (interfaceCopy)
    {
      v15 = _nw_parameters_copy_context(interfaceCopy);
      v16 = v11[8];
      v11[8] = v15;

      v17 = v11[8];
      if (v17)
      {
        goto LABEL_23;
      }
    }

    else
    {
      interfaceCopy = _nw_parameters_create();
    }

    if (nw_context_copy_implicit_context::onceToken[0] != -1)
    {
      dispatch_once(nw_context_copy_implicit_context::onceToken, &__block_literal_global_18);
    }

    v17 = nw_context_copy_implicit_context::implicit_context;
    nw_parameters_set_context(interfaceCopy, v17);
LABEL_23:
    if (!nw_context_is_inline(v17))
    {
      nw_parameters_require_interface(interfaceCopy, v11[2]);
      evaluator_for_custom_ether = nw_path_create_evaluator_for_custom_ether(interfaceCopy, *(v11 + 6));
      v25 = v11[9];
      v11[9] = evaluator_for_custom_ether;

      if (v11[9])
      {
        v23 = v11;
LABEL_34:

        goto LABEL_35;
      }

      v26 = v11[19];
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v27 = gLogObj;
      v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
      if (v26)
      {
        if (v28)
        {
          v29 = *(v11 + 42);
          v30 = *(v11 + 6);
          v32 = v11[2];
          v31 = v11[3];
          *buf = 136447746;
          v56 = "[NWConcrete_nw_ethernet_channel initWithEtherType:interface:parameters:]";
          v57 = 2080;
          v58 = v31;
          v59 = 1042;
          v60 = 16;
          v61 = 2098;
          v62 = v11 + 115;
          v63 = 1024;
          v64 = v29;
          v65 = 1024;
          v66 = v30;
          v67 = 2112;
          v68 = v32;
          _os_log_impl(&dword_181A37000, v27, OS_LOG_TYPE_ERROR, "%{public}s [%s: nexus instance %{public,uuid_t}.16P <fd %d>] initWithEtherType: failed to create evaluator for ethertype %X interface %@", buf, 0x3Cu);
        }
      }

      else if (v28)
      {
        v33 = *(v11 + 6);
        v34 = v11[2];
        *buf = 136446978;
        v56 = "[NWConcrete_nw_ethernet_channel initWithEtherType:interface:parameters:]";
        v57 = 2114;
        v58 = v11;
        v59 = 1024;
        v60 = v33;
        v61 = 2112;
        v62 = v34;
        _os_log_impl(&dword_181A37000, v27, OS_LOG_TYPE_ERROR, "%{public}s [%{public}@] initWithEtherType: failed to create evaluator for ethertype %X interface %@", buf, 0x26u);
      }

LABEL_33:
      v23 = 0;
      goto LABEL_34;
    }

    v43 = __nwlog_obj();
    *buf = 136446210;
    v56 = "[NWConcrete_nw_ethernet_channel initWithEtherType:interface:parameters:]";
    v44 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v52 = 0;
    if (__nwlog_fault(v44, &type, &v52))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v45 = __nwlog_obj();
        typeCopy5 = type;
        if (os_log_type_enabled(v45, type))
        {
          *buf = 136446210;
          v56 = "[NWConcrete_nw_ethernet_channel initWithEtherType:interface:parameters:]";
          _os_log_impl(&dword_181A37000, v45, typeCopy5, "%{public}s Cannot use nw_ethernet_channel on inline contexts", buf, 0xCu);
        }
      }

      else if (v52 == 1)
      {
        v48 = __nw_create_backtrace_string();
        v45 = __nwlog_obj();
        typeCopy6 = type;
        v50 = os_log_type_enabled(v45, type);
        if (v48)
        {
          if (v50)
          {
            *buf = 136446466;
            v56 = "[NWConcrete_nw_ethernet_channel initWithEtherType:interface:parameters:]";
            v57 = 2082;
            v58 = v48;
            _os_log_impl(&dword_181A37000, v45, typeCopy6, "%{public}s Cannot use nw_ethernet_channel on inline contexts, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v48);
          goto LABEL_70;
        }

        if (v50)
        {
          *buf = 136446210;
          v56 = "[NWConcrete_nw_ethernet_channel initWithEtherType:interface:parameters:]";
          _os_log_impl(&dword_181A37000, v45, typeCopy6, "%{public}s Cannot use nw_ethernet_channel on inline contexts, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v45 = __nwlog_obj();
        typeCopy7 = type;
        if (os_log_type_enabled(v45, type))
        {
          *buf = 136446210;
          v56 = "[NWConcrete_nw_ethernet_channel initWithEtherType:interface:parameters:]";
          _os_log_impl(&dword_181A37000, v45, typeCopy7, "%{public}s Cannot use nw_ethernet_channel on inline contexts, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_70:
    if (v44)
    {
      free(v44);
    }

    goto LABEL_33;
  }

  v18 = v11[19];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v19 = gLogObj;
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
  if (v18)
  {
    if (v20)
    {
      v21 = v11[3];
      v22 = *(v11 + 42);
      *buf = 136447234;
      v56 = "[NWConcrete_nw_ethernet_channel initWithEtherType:interface:parameters:]";
      v57 = 2080;
      v58 = v21;
      v59 = 1042;
      v60 = 16;
      v61 = 2098;
      v62 = v11 + 115;
      v63 = 1024;
      v64 = v22;
      _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_ERROR, "%{public}s [%s: nexus instance %{public,uuid_t}.16P <fd %d>] initWithEtherType: must specify ethertype and interface", buf, 0x2Cu);
    }
  }

  else if (v20)
  {
    *buf = 136446466;
    v56 = "[NWConcrete_nw_ethernet_channel initWithEtherType:interface:parameters:]";
    v57 = 2114;
    v58 = v11;
    _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_ERROR, "%{public}s [%{public}@] initWithEtherType: must specify ethertype and interface", buf, 0x16u);
  }

LABEL_18:
  v23 = 0;
LABEL_35:

  return v23;
}

- (uint64_t)createChannel
{
  v139 = *MEMORY[0x1E69E9840];
  v129 = 0;
  if (!*(self + 152))
  {
    v6 = *(self + 88);
    if (!v6)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v21 = gLogObj;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v131 = "[NWConcrete_nw_ethernet_channel createChannel]";
        v132 = 2114;
        *v133 = self;
        _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_ERROR, "%{public}s [%{public}@] createChannel: no flow", buf, 0x16u);
      }

      return 0;
    }

    v7 = v6;
    nexus_instance = _nw_path_flow_get_nexus_instance(v7, (self + 115), (self + 132));

    if (nexus_instance)
    {
      if (nw_path_flow_get_id(*(self + 88), (self + 136)))
      {
        nexus_key = nw_path_flow_get_nexus_key(*(self + 88), &v129);
        v10 = v129;
        v11 = *(self + 152);
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v12 = gLogObj;
        v13 = v12;
        if (!nexus_key || !v10)
        {
          v31 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
          if (v11)
          {
            if (v31)
            {
              v32 = *(self + 24);
              v33 = *(self + 168);
              *buf = 136447234;
              v131 = "[NWConcrete_nw_ethernet_channel createChannel]";
              v132 = 2080;
              *v133 = v32;
              *&v133[8] = 1042;
              *&v133[10] = 16;
              *&v133[14] = 2098;
              *&v133[16] = self + 115;
              *&v133[24] = 1024;
              *&v133[26] = v33;
              _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_ERROR, "%{public}s [%s: nexus instance %{public,uuid_t}.16P <fd %d>] createChannel: no flow key or key length", buf, 0x2Cu);
            }
          }

          else if (v31)
          {
            *buf = 136446466;
            v131 = "[NWConcrete_nw_ethernet_channel createChannel]";
            v132 = 2114;
            *v133 = self;
            _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_ERROR, "%{public}s [%{public}@] createChannel: no flow key or key length", buf, 0x16u);
          }

          return 0;
        }

        v14 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
        if (v11)
        {
          if (!v14)
          {
            goto LABEL_40;
          }

          v15 = *(self + 24);
          v16 = *(self + 168);
          v17 = *(self + 132);
          *buf = 136448514;
          v131 = "[NWConcrete_nw_ethernet_channel createChannel]";
          v132 = 2080;
          *v133 = v15;
          *&v133[8] = 1042;
          *&v133[10] = 16;
          *&v133[14] = 2098;
          *&v133[16] = self + 115;
          *&v133[24] = 1024;
          *&v133[26] = v16;
          LOWORD(v134) = 1042;
          *(&v134 + 2) = 16;
          WORD3(v134) = 2098;
          *(&v134 + 1) = self + 136;
          v135 = 1042;
          *v136 = 16;
          *&v136[4] = 2098;
          *&v136[6] = self + 115;
          v137 = 1024;
          v138 = v17;
          v18 = "%{public}s [%s: nexus instance %{public,uuid_t}.16P <fd %d>] Establishing channel for flow id %{public, uuid_t}.16P nexus instance %{public, uuid_t}.16P port %u";
          v19 = v13;
          v20 = 82;
        }

        else
        {
          if (!v14)
          {
            goto LABEL_40;
          }

          v34 = *(self + 132);
          *buf = 136447746;
          v131 = "[NWConcrete_nw_ethernet_channel createChannel]";
          v132 = 2114;
          *v133 = self;
          *&v133[8] = 1042;
          *&v133[10] = 16;
          *&v133[14] = 2098;
          *&v133[16] = self + 136;
          *&v133[24] = 1042;
          *&v133[26] = 16;
          LOWORD(v134) = 2098;
          *(&v134 + 2) = self + 115;
          WORD5(v134) = 1024;
          HIDWORD(v134) = v34;
          v18 = "%{public}s [%{public}@] Establishing channel for flow id %{public, uuid_t}.16P nexus instance %{public, uuid_t}.16P port %u";
          v19 = v13;
          v20 = 60;
        }

        _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_DEBUG, v18, buf, v20);
LABEL_40:

        v35 = os_channel_attr_create();
        *(self + 160) = v35;
        if (v35)
        {
          v36 = os_channel_attr_set_key();
          if (v36)
          {
            v37 = __nwlog_obj();
            *buf = 136446722;
            v131 = "[NWConcrete_nw_ethernet_channel createChannel]";
            v132 = 2112;
            *v133 = self;
            *&v133[8] = 1024;
            *&v133[10] = v36;
            v38 = _os_log_send_and_compose_impl();

            type[0] = OS_LOG_TYPE_ERROR;
            v128 = OS_LOG_TYPE_DEFAULT;
            if (!__nwlog_fault(v38, type, &v128))
            {
              goto LABEL_112;
            }

            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              v39 = __nwlog_obj();
              v40 = type[0];
              if (os_log_type_enabled(v39, type[0]))
              {
                *buf = 136446722;
                v131 = "[NWConcrete_nw_ethernet_channel createChannel]";
                v132 = 2112;
                *v133 = self;
                *&v133[8] = 1024;
                *&v133[10] = v36;
                _os_log_impl(&dword_181A37000, v39, v40, "%{public}s %@: createChannel failed to set key <err %d> ", buf, 0x1Cu);
              }

LABEL_111:

              goto LABEL_112;
            }

            if (v128 != OS_LOG_TYPE_INFO)
            {
              v39 = __nwlog_obj();
              v52 = type[0];
              if (os_log_type_enabled(v39, type[0]))
              {
                *buf = 136446722;
                v131 = "[NWConcrete_nw_ethernet_channel createChannel]";
                v132 = 2112;
                *v133 = self;
                *&v133[8] = 1024;
                *&v133[10] = v36;
                _os_log_impl(&dword_181A37000, v39, v52, "%{public}s %@: createChannel failed to set key <err %d> , backtrace limit exceeded", buf, 0x1Cu);
              }

              goto LABEL_111;
            }

            backtrace_string = __nw_create_backtrace_string();
            v39 = __nwlog_obj();
            v47 = type[0];
            v48 = os_log_type_enabled(v39, type[0]);
            if (!backtrace_string)
            {
              if (v48)
              {
                *buf = 136446722;
                v131 = "[NWConcrete_nw_ethernet_channel createChannel]";
                v132 = 2112;
                *v133 = self;
                *&v133[8] = 1024;
                *&v133[10] = v36;
                _os_log_impl(&dword_181A37000, v39, v47, "%{public}s %@: createChannel failed to set key <err %d> , no backtrace", buf, 0x1Cu);
              }

              goto LABEL_111;
            }

            if (v48)
            {
              *buf = 136446978;
              v131 = "[NWConcrete_nw_ethernet_channel createChannel]";
              v132 = 2112;
              *v133 = self;
              *&v133[8] = 1024;
              *&v133[10] = v36;
              *&v133[14] = 2082;
              *&v133[16] = backtrace_string;
              _os_log_impl(&dword_181A37000, v39, v47, "%{public}s %@: createChannel failed to set key <err %d> , dumping backtrace:%{public}s", buf, 0x26u);
            }

LABEL_84:

            free(backtrace_string);
            goto LABEL_112;
          }

          v43 = os_channel_attr_set();
          if (v43)
          {
            v44 = __nwlog_obj();
            *buf = 136446722;
            v131 = "[NWConcrete_nw_ethernet_channel createChannel]";
            v132 = 2112;
            *v133 = self;
            *&v133[8] = 1024;
            *&v133[10] = v43;
            v38 = _os_log_send_and_compose_impl();

            type[0] = OS_LOG_TYPE_ERROR;
            v128 = OS_LOG_TYPE_DEFAULT;
            if (!__nwlog_fault(v38, type, &v128))
            {
              goto LABEL_112;
            }

            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              v39 = __nwlog_obj();
              v45 = type[0];
              if (os_log_type_enabled(v39, type[0]))
              {
                *buf = 136446722;
                v131 = "[NWConcrete_nw_ethernet_channel createChannel]";
                v132 = 2112;
                *v133 = self;
                *&v133[8] = 1024;
                *&v133[10] = v43;
                _os_log_impl(&dword_181A37000, v39, v45, "%{public}s %@: createChannel failed to set user-packet-pool attribute <err %d> ", buf, 0x1Cu);
              }

              goto LABEL_111;
            }

            if (v128 != OS_LOG_TYPE_INFO)
            {
              v39 = __nwlog_obj();
              v66 = type[0];
              if (os_log_type_enabled(v39, type[0]))
              {
                *buf = 136446722;
                v131 = "[NWConcrete_nw_ethernet_channel createChannel]";
                v132 = 2112;
                *v133 = self;
                *&v133[8] = 1024;
                *&v133[10] = v43;
                _os_log_impl(&dword_181A37000, v39, v66, "%{public}s %@: createChannel failed to set user-packet-pool attribute <err %d> , backtrace limit exceeded", buf, 0x1Cu);
              }

              goto LABEL_111;
            }

            backtrace_string = __nw_create_backtrace_string();
            v39 = __nwlog_obj();
            v64 = type[0];
            v65 = os_log_type_enabled(v39, type[0]);
            if (!backtrace_string)
            {
              if (v65)
              {
                *buf = 136446722;
                v131 = "[NWConcrete_nw_ethernet_channel createChannel]";
                v132 = 2112;
                *v133 = self;
                *&v133[8] = 1024;
                *&v133[10] = v43;
                _os_log_impl(&dword_181A37000, v39, v64, "%{public}s %@: createChannel failed to set user-packet-pool attribute <err %d> , no backtrace", buf, 0x1Cu);
              }

              goto LABEL_111;
            }

            if (v65)
            {
              *buf = 136446978;
              v131 = "[NWConcrete_nw_ethernet_channel createChannel]";
              v132 = 2112;
              *v133 = self;
              *&v133[8] = 1024;
              *&v133[10] = v43;
              *&v133[14] = 2082;
              *&v133[16] = backtrace_string;
              _os_log_impl(&dword_181A37000, v39, v64, "%{public}s %@: createChannel failed to set user-packet-pool attribute <err %d> , dumping backtrace:%{public}s", buf, 0x26u);
            }

            goto LABEL_84;
          }

          if (*(self + 132) < 0x10000u)
          {
            extended = os_channel_create_extended();
            *(self + 152) = extended;
            if (extended)
            {
              fd = os_channel_get_fd();
              *(self + 168) = fd;
              if ((fd & 0x80000000) == 0)
              {
                v56 = *(self + 152);
                v57 = __nwlog_obj();
                v58 = os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG);
                if (v56)
                {
                  if (v58)
                  {
                    v59 = *(self + 24);
                    v60 = *(self + 168);
                    *buf = 136447234;
                    v131 = "[NWConcrete_nw_ethernet_channel createChannel]";
                    v132 = 2080;
                    *v133 = v59;
                    *&v133[8] = 1042;
                    *&v133[10] = 16;
                    *&v133[14] = 2098;
                    *&v133[16] = self + 115;
                    *&v133[24] = 1024;
                    *&v133[26] = v60;
                    v61 = "%{public}s [%s: nexus instance %{public,uuid_t}.16P <fd %d>] createChannel: created channel";
                    v62 = v57;
                    v63 = 44;
LABEL_118:
                    _os_log_impl(&dword_181A37000, v62, OS_LOG_TYPE_DEBUG, v61, buf, v63);
                  }
                }

                else if (v58)
                {
                  *buf = 136446466;
                  v131 = "[NWConcrete_nw_ethernet_channel createChannel]";
                  v132 = 2114;
                  *v133 = self;
                  v61 = "%{public}s [%{public}@] createChannel: created channel";
                  v62 = v57;
                  v63 = 22;
                  goto LABEL_118;
                }

                *(self + 176) = os_channel_rx_ring();
                v82 = os_channel_tx_ring();
                *(self + 184) = v82;
                if (*(self + 176) && v82)
                {
                  os_channel_read_attr();
                  *type = 0;
                  os_channel_attr_get();
                  *(self + 172) = 0;
                  v101 = __nwlog_obj();
                  *buf = 136446466;
                  v131 = "[NWConcrete_nw_ethernet_channel createChannel]";
                  v132 = 2112;
                  *v133 = self;
                  v102 = _os_log_send_and_compose_impl();

                  v128 = OS_LOG_TYPE_ERROR;
                  v126 = 0;
                  if (__nwlog_fault(v102, &v128, &v126))
                  {
                    if (v128 == OS_LOG_TYPE_FAULT)
                    {
                      v103 = __nwlog_obj();
                      v104 = v128;
                      if (os_log_type_enabled(v103, v128))
                      {
                        *buf = 136446466;
                        v131 = "[NWConcrete_nw_ethernet_channel createChannel]";
                        v132 = 2112;
                        *v133 = self;
                        _os_log_impl(&dword_181A37000, v103, v104, "%{public}s %@: createChannel: channel slot size 0, clean up channel", buf, 0x16u);
                      }
                    }

                    else if (v126 == 1)
                    {
                      v109 = __nw_create_backtrace_string();
                      v103 = __nwlog_obj();
                      v110 = v128;
                      v111 = os_log_type_enabled(v103, v128);
                      if (v109)
                      {
                        if (v111)
                        {
                          *buf = 136446722;
                          v131 = "[NWConcrete_nw_ethernet_channel createChannel]";
                          v132 = 2112;
                          *v133 = self;
                          *&v133[8] = 2082;
                          *&v133[10] = v109;
                          _os_log_impl(&dword_181A37000, v103, v110, "%{public}s %@: createChannel: channel slot size 0, clean up channel, dumping backtrace:%{public}s", buf, 0x20u);
                        }

                        free(v109);
                        goto LABEL_180;
                      }

                      if (v111)
                      {
                        *buf = 136446466;
                        v131 = "[NWConcrete_nw_ethernet_channel createChannel]";
                        v132 = 2112;
                        *v133 = self;
                        _os_log_impl(&dword_181A37000, v103, v110, "%{public}s %@: createChannel: channel slot size 0, clean up channel, no backtrace", buf, 0x16u);
                      }
                    }

                    else
                    {
                      v103 = __nwlog_obj();
                      v115 = v128;
                      if (os_log_type_enabled(v103, v128))
                      {
                        *buf = 136446466;
                        v131 = "[NWConcrete_nw_ethernet_channel createChannel]";
                        v132 = 2112;
                        *v133 = self;
                        _os_log_impl(&dword_181A37000, v103, v115, "%{public}s %@: createChannel: channel slot size 0, clean up channel, backtrace limit exceeded", buf, 0x16u);
                      }
                    }
                  }

LABEL_180:
                  if (v102)
                  {
                    free(v102);
                  }

                  [(NWConcrete_nw_ethernet_channel *)self closeChannel:?];
                  return 0;
                }

                v83 = __nwlog_obj();
                v84 = *(self + 176);
                v85 = *(self + 184);
                *buf = 136446978;
                v131 = "[NWConcrete_nw_ethernet_channel createChannel]";
                v132 = 2112;
                *v133 = self;
                *&v133[8] = 2048;
                *&v133[10] = v84;
                *&v133[18] = 2048;
                *&v133[20] = v85;
                v86 = _os_log_send_and_compose_impl();

                type[0] = OS_LOG_TYPE_ERROR;
                v128 = OS_LOG_TYPE_DEFAULT;
                if (!__nwlog_fault(v86, type, &v128))
                {
                  goto LABEL_171;
                }

                if (type[0] == OS_LOG_TYPE_FAULT)
                {
                  v87 = __nwlog_obj();
                  v88 = type[0];
                  if (os_log_type_enabled(v87, type[0]))
                  {
                    v89 = *(self + 176);
                    v90 = *(self + 184);
                    *buf = 136446978;
                    v131 = "[NWConcrete_nw_ethernet_channel createChannel]";
                    v132 = 2112;
                    *v133 = self;
                    *&v133[8] = 2048;
                    *&v133[10] = v89;
                    *&v133[18] = 2048;
                    *&v133[20] = v90;
                    _os_log_impl(&dword_181A37000, v87, v88, "%{public}s %@: createChannel failed to get input / output rings (%lX %lX)", buf, 0x2Au);
                  }
                }

                else if (v128 == OS_LOG_TYPE_INFO)
                {
                  v94 = __nw_create_backtrace_string();
                  v87 = __nwlog_obj();
                  v95 = type[0];
                  v96 = os_log_type_enabled(v87, type[0]);
                  if (v94)
                  {
                    if (v96)
                    {
                      v97 = *(self + 176);
                      v98 = *(self + 184);
                      *buf = 136447234;
                      v131 = "[NWConcrete_nw_ethernet_channel createChannel]";
                      v132 = 2112;
                      *v133 = self;
                      *&v133[8] = 2048;
                      *&v133[10] = v97;
                      *&v133[18] = 2048;
                      *&v133[20] = v98;
                      *&v133[28] = 2082;
                      *&v134 = v94;
                      _os_log_impl(&dword_181A37000, v87, v95, "%{public}s %@: createChannel failed to get input / output rings (%lX %lX), dumping backtrace:%{public}s", buf, 0x34u);
                    }

                    free(v94);
                    goto LABEL_171;
                  }

                  if (v96)
                  {
                    v113 = *(self + 176);
                    v114 = *(self + 184);
                    *buf = 136446978;
                    v131 = "[NWConcrete_nw_ethernet_channel createChannel]";
                    v132 = 2112;
                    *v133 = self;
                    *&v133[8] = 2048;
                    *&v133[10] = v113;
                    *&v133[18] = 2048;
                    *&v133[20] = v114;
                    _os_log_impl(&dword_181A37000, v87, v95, "%{public}s %@: createChannel failed to get input / output rings (%lX %lX), no backtrace", buf, 0x2Au);
                  }
                }

                else
                {
                  v87 = __nwlog_obj();
                  v106 = type[0];
                  if (os_log_type_enabled(v87, type[0]))
                  {
                    v107 = *(self + 176);
                    v108 = *(self + 184);
                    *buf = 136446978;
                    v131 = "[NWConcrete_nw_ethernet_channel createChannel]";
                    v132 = 2112;
                    *v133 = self;
                    *&v133[8] = 2048;
                    *&v133[10] = v107;
                    *&v133[18] = 2048;
                    *&v133[20] = v108;
                    _os_log_impl(&dword_181A37000, v87, v106, "%{public}s %@: createChannel failed to get input / output rings (%lX %lX), backtrace limit exceeded", buf, 0x2Au);
                  }
                }

LABEL_171:
                if (v86)
                {
                  free(v86);
                }

LABEL_173:
                [(NWConcrete_nw_ethernet_channel *)self closeChannel:?];
                return 0;
              }

              v73 = __nwlog_obj();
              *buf = 136446466;
              v131 = "[NWConcrete_nw_ethernet_channel createChannel]";
              v132 = 2112;
              *v133 = self;
              v74 = _os_log_send_and_compose_impl();

              type[0] = OS_LOG_TYPE_ERROR;
              v128 = OS_LOG_TYPE_DEFAULT;
              if (__nwlog_fault(v74, type, &v128))
              {
                if (type[0] == OS_LOG_TYPE_FAULT)
                {
                  v75 = __nwlog_obj();
                  v76 = type[0];
                  if (os_log_type_enabled(v75, type[0]))
                  {
                    *buf = 136446466;
                    v131 = "[NWConcrete_nw_ethernet_channel createChannel]";
                    v132 = 2112;
                    *v133 = self;
                    _os_log_impl(&dword_181A37000, v75, v76, "%{public}s %@: createChannel failed to get channel fd", buf, 0x16u);
                  }
                }

                else if (v128 == OS_LOG_TYPE_INFO)
                {
                  v91 = __nw_create_backtrace_string();
                  v75 = __nwlog_obj();
                  v92 = type[0];
                  v93 = os_log_type_enabled(v75, type[0]);
                  if (v91)
                  {
                    if (v93)
                    {
                      *buf = 136446722;
                      v131 = "[NWConcrete_nw_ethernet_channel createChannel]";
                      v132 = 2112;
                      *v133 = self;
                      *&v133[8] = 2082;
                      *&v133[10] = v91;
                      _os_log_impl(&dword_181A37000, v75, v92, "%{public}s %@: createChannel failed to get channel fd, dumping backtrace:%{public}s", buf, 0x20u);
                    }

                    free(v91);
                    goto LABEL_165;
                  }

                  if (v93)
                  {
                    *buf = 136446466;
                    v131 = "[NWConcrete_nw_ethernet_channel createChannel]";
                    v132 = 2112;
                    *v133 = self;
                    _os_log_impl(&dword_181A37000, v75, v92, "%{public}s %@: createChannel failed to get channel fd, no backtrace", buf, 0x16u);
                  }
                }

                else
                {
                  v75 = __nwlog_obj();
                  v105 = type[0];
                  if (os_log_type_enabled(v75, type[0]))
                  {
                    *buf = 136446466;
                    v131 = "[NWConcrete_nw_ethernet_channel createChannel]";
                    v132 = 2112;
                    *v133 = self;
                    _os_log_impl(&dword_181A37000, v75, v105, "%{public}s %@: createChannel failed to get channel fd, backtrace limit exceeded", buf, 0x16u);
                  }
                }
              }

LABEL_165:
              if (v74)
              {
                free(v74);
              }

              goto LABEL_173;
            }

            v67 = __nwlog_obj();
            v68 = *(self + 132);
            *buf = 136447746;
            v131 = "[NWConcrete_nw_ethernet_channel createChannel]";
            v132 = 2112;
            *v133 = self;
            *&v133[8] = 1042;
            *&v133[10] = 16;
            *&v133[14] = 2098;
            *&v133[16] = self + 136;
            *&v133[24] = 1042;
            *&v133[26] = 16;
            LOWORD(v134) = 2098;
            *(&v134 + 2) = self + 115;
            WORD5(v134) = 1024;
            HIDWORD(v134) = v68;
            v69 = _os_log_send_and_compose_impl();

            type[0] = OS_LOG_TYPE_ERROR;
            v128 = OS_LOG_TYPE_DEFAULT;
            if (__nwlog_fault(v69, type, &v128))
            {
              if (type[0] == OS_LOG_TYPE_FAULT)
              {
                v70 = __nwlog_obj();
                v71 = type[0];
                if (os_log_type_enabled(v70, type[0]))
                {
                  v72 = *(self + 132);
                  *buf = 136447746;
                  v131 = "[NWConcrete_nw_ethernet_channel createChannel]";
                  v132 = 2112;
                  *v133 = self;
                  *&v133[8] = 1042;
                  *&v133[10] = 16;
                  *&v133[14] = 2098;
                  *&v133[16] = self + 136;
                  *&v133[24] = 1042;
                  *&v133[26] = 16;
                  LOWORD(v134) = 2098;
                  *(&v134 + 2) = self + 115;
                  WORD5(v134) = 1024;
                  HIDWORD(v134) = v72;
                  _os_log_impl(&dword_181A37000, v70, v71, "%{public}s %@: Failed to create channel for flow id %{public, uuid_t}.16P nexus instance %{public, uuid_t}.16P port %u", buf, 0x3Cu);
                }
              }

              else if (v128 == OS_LOG_TYPE_INFO)
              {
                v77 = __nw_create_backtrace_string();
                v70 = __nwlog_obj();
                v78 = type[0];
                v79 = os_log_type_enabled(v70, type[0]);
                if (v77)
                {
                  if (v79)
                  {
                    v80 = *(self + 132);
                    *buf = 136448002;
                    v131 = "[NWConcrete_nw_ethernet_channel createChannel]";
                    v132 = 2112;
                    *v133 = self;
                    *&v133[8] = 1042;
                    *&v133[10] = 16;
                    *&v133[14] = 2098;
                    *&v133[16] = self + 136;
                    *&v133[24] = 1042;
                    *&v133[26] = 16;
                    LOWORD(v134) = 2098;
                    *(&v134 + 2) = self + 115;
                    WORD5(v134) = 1024;
                    HIDWORD(v134) = v80;
                    v135 = 2082;
                    *v136 = v77;
                    _os_log_impl(&dword_181A37000, v70, v78, "%{public}s %@: Failed to create channel for flow id %{public, uuid_t}.16P nexus instance %{public, uuid_t}.16P port %u, dumping backtrace:%{public}s", buf, 0x46u);
                  }

                  free(v77);
                  goto LABEL_159;
                }

                if (v79)
                {
                  v112 = *(self + 132);
                  *buf = 136447746;
                  v131 = "[NWConcrete_nw_ethernet_channel createChannel]";
                  v132 = 2112;
                  *v133 = self;
                  *&v133[8] = 1042;
                  *&v133[10] = 16;
                  *&v133[14] = 2098;
                  *&v133[16] = self + 136;
                  *&v133[24] = 1042;
                  *&v133[26] = 16;
                  LOWORD(v134) = 2098;
                  *(&v134 + 2) = self + 115;
                  WORD5(v134) = 1024;
                  HIDWORD(v134) = v112;
                  _os_log_impl(&dword_181A37000, v70, v78, "%{public}s %@: Failed to create channel for flow id %{public, uuid_t}.16P nexus instance %{public, uuid_t}.16P port %u, no backtrace", buf, 0x3Cu);
                }
              }

              else
              {
                v70 = __nwlog_obj();
                v99 = type[0];
                if (os_log_type_enabled(v70, type[0]))
                {
                  v100 = *(self + 132);
                  *buf = 136447746;
                  v131 = "[NWConcrete_nw_ethernet_channel createChannel]";
                  v132 = 2112;
                  *v133 = self;
                  *&v133[8] = 1042;
                  *&v133[10] = 16;
                  *&v133[14] = 2098;
                  *&v133[16] = self + 136;
                  *&v133[24] = 1042;
                  *&v133[26] = 16;
                  LOWORD(v134) = 2098;
                  *(&v134 + 2) = self + 115;
                  WORD5(v134) = 1024;
                  HIDWORD(v134) = v100;
                  _os_log_impl(&dword_181A37000, v70, v99, "%{public}s %@: Failed to create channel for flow id %{public, uuid_t}.16P nexus instance %{public, uuid_t}.16P port %u, backtrace limit exceeded", buf, 0x3Cu);
                }
              }
            }

LABEL_159:
            if (v69)
            {
              free(v69);
            }

            goto LABEL_173;
          }

          v116 = __nwlog_obj();
          v117 = *(self + 132);
          *buf = 136446466;
          v131 = "[NWConcrete_nw_ethernet_channel createChannel]";
          v132 = 1024;
          *v133 = v117;
          v38 = _os_log_send_and_compose_impl();

          type[0] = OS_LOG_TYPE_ERROR;
          v128 = OS_LOG_TYPE_DEFAULT;
          if (!__nwlog_fault(v38, type, &v128))
          {
LABEL_112:
            if (v38)
            {
              free(v38);
            }

            return 0;
          }

          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v39 = __nwlog_obj();
            v118 = type[0];
            if (os_log_type_enabled(v39, type[0]))
            {
              v119 = *(self + 132);
              *buf = 136446466;
              v131 = "[NWConcrete_nw_ethernet_channel createChannel]";
              v132 = 1024;
              *v133 = v119;
              _os_log_impl(&dword_181A37000, v39, v118, "%{public}s port %u > NEXUS_PORT_MAX", buf, 0x12u);
            }

            goto LABEL_111;
          }

          if (v128 != OS_LOG_TYPE_INFO)
          {
            v39 = __nwlog_obj();
            v123 = type[0];
            if (os_log_type_enabled(v39, type[0]))
            {
              v124 = *(self + 132);
              *buf = 136446466;
              v131 = "[NWConcrete_nw_ethernet_channel createChannel]";
              v132 = 1024;
              *v133 = v124;
              _os_log_impl(&dword_181A37000, v39, v123, "%{public}s port %u > NEXUS_PORT_MAX, backtrace limit exceeded", buf, 0x12u);
            }

            goto LABEL_111;
          }

          v49 = __nw_create_backtrace_string();
          v39 = __nwlog_obj();
          v120 = type[0];
          v121 = os_log_type_enabled(v39, type[0]);
          if (!v49)
          {
            if (v121)
            {
              v125 = *(self + 132);
              *buf = 136446466;
              v131 = "[NWConcrete_nw_ethernet_channel createChannel]";
              v132 = 1024;
              *v133 = v125;
              _os_log_impl(&dword_181A37000, v39, v120, "%{public}s port %u > NEXUS_PORT_MAX, no backtrace", buf, 0x12u);
            }

            goto LABEL_111;
          }

          if (v121)
          {
            v122 = *(self + 132);
            *buf = 136446722;
            v131 = "[NWConcrete_nw_ethernet_channel createChannel]";
            v132 = 1024;
            *v133 = v122;
            *&v133[4] = 2082;
            *&v133[6] = v49;
            _os_log_impl(&dword_181A37000, v39, v120, "%{public}s port %u > NEXUS_PORT_MAX, dumping backtrace:%{public}s", buf, 0x1Cu);
          }
        }

        else
        {
          v41 = __nwlog_obj();
          *buf = 136446466;
          v131 = "[NWConcrete_nw_ethernet_channel createChannel]";
          v132 = 2112;
          *v133 = self;
          v38 = _os_log_send_and_compose_impl();

          type[0] = OS_LOG_TYPE_ERROR;
          v128 = OS_LOG_TYPE_DEFAULT;
          if (!__nwlog_fault(v38, type, &v128))
          {
            goto LABEL_112;
          }

          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v39 = __nwlog_obj();
            v42 = type[0];
            if (os_log_type_enabled(v39, type[0]))
            {
              *buf = 136446466;
              v131 = "[NWConcrete_nw_ethernet_channel createChannel]";
              v132 = 2112;
              *v133 = self;
              _os_log_impl(&dword_181A37000, v39, v42, "%{public}s %@: createChannel failed to create channel attributes", buf, 0x16u);
            }

            goto LABEL_111;
          }

          if (v128 != OS_LOG_TYPE_INFO)
          {
            v39 = __nwlog_obj();
            v53 = type[0];
            if (os_log_type_enabled(v39, type[0]))
            {
              *buf = 136446466;
              v131 = "[NWConcrete_nw_ethernet_channel createChannel]";
              v132 = 2112;
              *v133 = self;
              _os_log_impl(&dword_181A37000, v39, v53, "%{public}s %@: createChannel failed to create channel attributes, backtrace limit exceeded", buf, 0x16u);
            }

            goto LABEL_111;
          }

          v49 = __nw_create_backtrace_string();
          v39 = __nwlog_obj();
          v50 = type[0];
          v51 = os_log_type_enabled(v39, type[0]);
          if (!v49)
          {
            if (v51)
            {
              *buf = 136446466;
              v131 = "[NWConcrete_nw_ethernet_channel createChannel]";
              v132 = 2112;
              *v133 = self;
              _os_log_impl(&dword_181A37000, v39, v50, "%{public}s %@: createChannel failed to create channel attributes, no backtrace", buf, 0x16u);
            }

            goto LABEL_111;
          }

          if (v51)
          {
            *buf = 136446722;
            v131 = "[NWConcrete_nw_ethernet_channel createChannel]";
            v132 = 2112;
            *v133 = self;
            *&v133[8] = 2082;
            *&v133[10] = v49;
            _os_log_impl(&dword_181A37000, v39, v50, "%{public}s %@: createChannel failed to create channel attributes, dumping backtrace:%{public}s", buf, 0x20u);
          }
        }

        free(v49);
        goto LABEL_112;
      }

      v27 = *(self + 152);
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v23 = gLogObj;
      v28 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
      if (v27)
      {
        if (v28)
        {
          v29 = *(self + 24);
          v30 = *(self + 168);
          *buf = 136447234;
          v131 = "[NWConcrete_nw_ethernet_channel createChannel]";
          v132 = 2080;
          *v133 = v29;
          *&v133[8] = 1042;
          *&v133[10] = 16;
          *&v133[14] = 2098;
          *&v133[16] = self + 115;
          *&v133[24] = 1024;
          *&v133[26] = v30;
          _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_ERROR, "%{public}s [%s: nexus instance %{public,uuid_t}.16P <fd %d>] createChannel: no flow id", buf, 0x2Cu);
        }
      }

      else if (v28)
      {
        *buf = 136446466;
        v131 = "[NWConcrete_nw_ethernet_channel createChannel]";
        v132 = 2114;
        *v133 = self;
        _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_ERROR, "%{public}s [%{public}@] createChannel: no flow id", buf, 0x16u);
      }
    }

    else
    {
      v22 = *(self + 152);
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v23 = gLogObj;
      v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
      if (v22)
      {
        if (v24)
        {
          v25 = *(self + 24);
          v26 = *(self + 168);
          *buf = 136447234;
          v131 = "[NWConcrete_nw_ethernet_channel createChannel]";
          v132 = 2080;
          *v133 = v25;
          *&v133[8] = 1042;
          *&v133[10] = 16;
          *&v133[14] = 2098;
          *&v133[16] = self + 115;
          *&v133[24] = 1024;
          *&v133[26] = v26;
          _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_ERROR, "%{public}s [%s: nexus instance %{public,uuid_t}.16P <fd %d>] createChannel: no nexus instance / port", buf, 0x2Cu);
        }
      }

      else if (v24)
      {
        *buf = 136446466;
        v131 = "[NWConcrete_nw_ethernet_channel createChannel]";
        v132 = 2114;
        *v133 = self;
        _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_ERROR, "%{public}s [%{public}@] createChannel: no nexus instance / port", buf, 0x16u);
      }
    }

    return 0;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v2 = gLogObj;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(self + 24);
    v4 = *(self + 168);
    *buf = 136447234;
    v131 = "[NWConcrete_nw_ethernet_channel createChannel]";
    v132 = 2080;
    *v133 = v3;
    *&v133[8] = 1042;
    *&v133[10] = 16;
    *&v133[14] = 2098;
    *&v133[16] = self + 115;
    *&v133[24] = 1024;
    *&v133[26] = v4;
    _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_DEBUG, "%{public}s [%s: nexus instance %{public,uuid_t}.16P <fd %d>] createChannel: channel already exists", buf, 0x2Cu);
  }

  return 1;
}

@end