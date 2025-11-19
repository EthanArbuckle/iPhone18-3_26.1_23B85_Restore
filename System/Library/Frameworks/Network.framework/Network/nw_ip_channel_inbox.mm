@interface nw_ip_channel_inbox
- (BOOL)cancel;
- (id)description;
- (id)initWithPath:(void *)a3 flow:(void *)a4 parameters:(void *)a5 delegate:;
@end

@implementation nw_ip_channel_inbox

- (id)description
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__55666;
  v10 = __Block_byref_object_dispose__55667;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__nw_ip_channel_inbox_description__block_invoke;
  v5[3] = &unk_1E6A3D738;
  v5[4] = self;
  v5[5] = &v6;
  os_unfair_lock_lock(&self->super._lock);
  __34__nw_ip_channel_inbox_description__block_invoke(v5);
  os_unfair_lock_unlock(&self->super._lock);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)cancel
{
  p_protocol = &self->_protocol;
  output_handler = self->_protocol.output_handler;
  if (output_handler)
  {
    (output_handler->callbacks->remove_input_handler)();
  }

  handle = p_protocol->handle;
  if (handle)
  {
    p_protocol->handle = 0;
  }

  return 0;
}

- (id)initWithPath:(void *)a3 flow:(void *)a4 parameters:(void *)a5 delegate:
{
  v146 = *MEMORY[0x1E69E9840];
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = v13;
  if (!a1)
  {
    goto LABEL_100;
  }

  if (!v10)
  {
    v80 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "[nw_ip_channel_inbox initWithPath:flow:parameters:delegate:]";
    v81 = _os_log_send_and_compose_impl();

    uu[0] = 16;
    LOBYTE(v140) = 0;
    if (__nwlog_fault(v81, uu, &v140))
    {
      if (uu[0] == 17)
      {
        v82 = __nwlog_obj();
        v83 = uu[0];
        if (os_log_type_enabled(v82, uu[0]))
        {
          *buf = 136446210;
          *&buf[4] = "[nw_ip_channel_inbox initWithPath:flow:parameters:delegate:]";
          _os_log_impl(&dword_181A37000, v82, v83, "%{public}s called with null path", buf, 0xCu);
        }
      }

      else if (v140 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v82 = __nwlog_obj();
        v97 = uu[0];
        v98 = os_log_type_enabled(v82, uu[0]);
        if (backtrace_string)
        {
          if (v98)
          {
            *buf = 136446466;
            *&buf[4] = "[nw_ip_channel_inbox initWithPath:flow:parameters:delegate:]";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v82, v97, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_188;
        }

        if (v98)
        {
          *buf = 136446210;
          *&buf[4] = "[nw_ip_channel_inbox initWithPath:flow:parameters:delegate:]";
          _os_log_impl(&dword_181A37000, v82, v97, "%{public}s called with null path, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v82 = __nwlog_obj();
        v120 = uu[0];
        if (os_log_type_enabled(v82, uu[0]))
        {
          *buf = 136446210;
          *&buf[4] = "[nw_ip_channel_inbox initWithPath:flow:parameters:delegate:]";
          _os_log_impl(&dword_181A37000, v82, v120, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_188:
    if (v81)
    {
      free(v81);
    }

    goto LABEL_208;
  }

  if (!v11)
  {
    v84 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "[nw_ip_channel_inbox initWithPath:flow:parameters:delegate:]";
    v85 = _os_log_send_and_compose_impl();

    uu[0] = 16;
    LOBYTE(v140) = 0;
    if (__nwlog_fault(v85, uu, &v140))
    {
      if (uu[0] == 17)
      {
        v86 = __nwlog_obj();
        v87 = uu[0];
        if (os_log_type_enabled(v86, uu[0]))
        {
          *buf = 136446210;
          *&buf[4] = "[nw_ip_channel_inbox initWithPath:flow:parameters:delegate:]";
          _os_log_impl(&dword_181A37000, v86, v87, "%{public}s called with null flow", buf, 0xCu);
        }
      }

      else if (v140 == 1)
      {
        v99 = __nw_create_backtrace_string();
        v86 = __nwlog_obj();
        v100 = uu[0];
        v101 = os_log_type_enabled(v86, uu[0]);
        if (v99)
        {
          if (v101)
          {
            *buf = 136446466;
            *&buf[4] = "[nw_ip_channel_inbox initWithPath:flow:parameters:delegate:]";
            *&buf[12] = 2082;
            *&buf[14] = v99;
            _os_log_impl(&dword_181A37000, v86, v100, "%{public}s called with null flow, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v99);
          goto LABEL_194;
        }

        if (v101)
        {
          *buf = 136446210;
          *&buf[4] = "[nw_ip_channel_inbox initWithPath:flow:parameters:delegate:]";
          _os_log_impl(&dword_181A37000, v86, v100, "%{public}s called with null flow, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v86 = __nwlog_obj();
        v121 = uu[0];
        if (os_log_type_enabled(v86, uu[0]))
        {
          *buf = 136446210;
          *&buf[4] = "[nw_ip_channel_inbox initWithPath:flow:parameters:delegate:]";
          _os_log_impl(&dword_181A37000, v86, v121, "%{public}s called with null flow, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_194:
    if (v85)
    {
      free(v85);
    }

    goto LABEL_208;
  }

  if (!v12)
  {
    v88 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "[nw_ip_channel_inbox initWithPath:flow:parameters:delegate:]";
    v89 = _os_log_send_and_compose_impl();

    uu[0] = 16;
    LOBYTE(v140) = 0;
    if (__nwlog_fault(v89, uu, &v140))
    {
      if (uu[0] == 17)
      {
        v90 = __nwlog_obj();
        v91 = uu[0];
        if (os_log_type_enabled(v90, uu[0]))
        {
          *buf = 136446210;
          *&buf[4] = "[nw_ip_channel_inbox initWithPath:flow:parameters:delegate:]";
          _os_log_impl(&dword_181A37000, v90, v91, "%{public}s called with null parameters", buf, 0xCu);
        }
      }

      else if (v140 == 1)
      {
        v102 = __nw_create_backtrace_string();
        v90 = __nwlog_obj();
        v103 = uu[0];
        v104 = os_log_type_enabled(v90, uu[0]);
        if (v102)
        {
          if (v104)
          {
            *buf = 136446466;
            *&buf[4] = "[nw_ip_channel_inbox initWithPath:flow:parameters:delegate:]";
            *&buf[12] = 2082;
            *&buf[14] = v102;
            _os_log_impl(&dword_181A37000, v90, v103, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v102);
          goto LABEL_200;
        }

        if (v104)
        {
          *buf = 136446210;
          *&buf[4] = "[nw_ip_channel_inbox initWithPath:flow:parameters:delegate:]";
          _os_log_impl(&dword_181A37000, v90, v103, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v90 = __nwlog_obj();
        v122 = uu[0];
        if (os_log_type_enabled(v90, uu[0]))
        {
          *buf = 136446210;
          *&buf[4] = "[nw_ip_channel_inbox initWithPath:flow:parameters:delegate:]";
          _os_log_impl(&dword_181A37000, v90, v122, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_200:
    if (v89)
    {
      free(v89);
    }

    goto LABEL_208;
  }

  if (!v13)
  {
    v92 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "[nw_ip_channel_inbox initWithPath:flow:parameters:delegate:]";
    v93 = _os_log_send_and_compose_impl();

    uu[0] = 16;
    LOBYTE(v140) = 0;
    if (__nwlog_fault(v93, uu, &v140))
    {
      if (uu[0] == 17)
      {
        v94 = __nwlog_obj();
        v95 = uu[0];
        if (os_log_type_enabled(v94, uu[0]))
        {
          *buf = 136446210;
          *&buf[4] = "[nw_ip_channel_inbox initWithPath:flow:parameters:delegate:]";
          _os_log_impl(&dword_181A37000, v94, v95, "%{public}s called with null delegate", buf, 0xCu);
        }
      }

      else if (v140 == 1)
      {
        v105 = __nw_create_backtrace_string();
        v94 = __nwlog_obj();
        v106 = uu[0];
        v107 = os_log_type_enabled(v94, uu[0]);
        if (v105)
        {
          if (v107)
          {
            *buf = 136446466;
            *&buf[4] = "[nw_ip_channel_inbox initWithPath:flow:parameters:delegate:]";
            *&buf[12] = 2082;
            *&buf[14] = v105;
            _os_log_impl(&dword_181A37000, v94, v106, "%{public}s called with null delegate, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v105);
          goto LABEL_206;
        }

        if (v107)
        {
          *buf = 136446210;
          *&buf[4] = "[nw_ip_channel_inbox initWithPath:flow:parameters:delegate:]";
          _os_log_impl(&dword_181A37000, v94, v106, "%{public}s called with null delegate, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v94 = __nwlog_obj();
        v123 = uu[0];
        if (os_log_type_enabled(v94, uu[0]))
        {
          *buf = 136446210;
          *&buf[4] = "[nw_ip_channel_inbox initWithPath:flow:parameters:delegate:]";
          _os_log_impl(&dword_181A37000, v94, v123, "%{public}s called with null delegate, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_206:
    if (v93)
    {
      free(v93);
    }

LABEL_208:

    goto LABEL_99;
  }

  v139.receiver = a1;
  v139.super_class = nw_ip_channel_inbox;
  v15 = objc_msgSendSuper2(&v139, sel_initWithDelegate_, v13);
  a1 = v15;
  if (!v15)
  {
    goto LABEL_100;
  }

  v16 = v15;
  objc_storeStrong(v15 + 8, a2);
  objc_storeStrong(a1 + 9, a3);
  objc_storeStrong(a1 + 6, a4);
  v17 = v11;
  v18 = _nw_path_flow_copy_interface(v17);

  v19 = a1[5];
  a1[5] = v18;

  v20 = v17;
  v21 = _nw_path_flow_copy_local_endpoint(v20);

  v22 = a1[4];
  a1[4] = v21;

  if (!a1[4])
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v29 = gLogObj;
    *buf = 136446466;
    *&buf[4] = "[nw_ip_channel_inbox initWithPath:flow:parameters:delegate:]";
    *&buf[12] = 2114;
    *&buf[14] = v20;
    v30 = _os_log_send_and_compose_impl();

    uu[0] = 16;
    LOBYTE(v140) = 0;
    if (__nwlog_fault(v30, uu, &v140))
    {
      if (uu[0] == 17)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v31 = gLogObj;
        v32 = uu[0];
        if (os_log_type_enabled(v31, uu[0]))
        {
          *buf = 136446466;
          *&buf[4] = "[nw_ip_channel_inbox initWithPath:flow:parameters:delegate:]";
          *&buf[12] = 2114;
          *&buf[14] = v20;
          _os_log_impl(&dword_181A37000, v31, v32, "%{public}s flow (%{public}@) does not specify local endpoint", buf, 0x16u);
        }
      }

      else if (v140 == 1)
      {
        v56 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v31 = gLogObj;
        v57 = uu[0];
        v58 = os_log_type_enabled(v31, uu[0]);
        if (v56)
        {
          if (v58)
          {
            *buf = 136446722;
            *&buf[4] = "[nw_ip_channel_inbox initWithPath:flow:parameters:delegate:]";
            *&buf[12] = 2114;
            *&buf[14] = v20;
            v142 = 2082;
            v143 = v56;
            _os_log_impl(&dword_181A37000, v31, v57, "%{public}s flow (%{public}@) does not specify local endpoint, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(v56);
          if (!v30)
          {
            goto LABEL_98;
          }

          goto LABEL_82;
        }

        if (v58)
        {
          *buf = 136446466;
          *&buf[4] = "[nw_ip_channel_inbox initWithPath:flow:parameters:delegate:]";
          *&buf[12] = 2114;
          *&buf[14] = v20;
          _os_log_impl(&dword_181A37000, v31, v57, "%{public}s flow (%{public}@) does not specify local endpoint, no backtrace", buf, 0x16u);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v31 = gLogObj;
        v70 = uu[0];
        if (os_log_type_enabled(v31, uu[0]))
        {
          *buf = 136446466;
          *&buf[4] = "[nw_ip_channel_inbox initWithPath:flow:parameters:delegate:]";
          *&buf[12] = 2114;
          *&buf[14] = v20;
          _os_log_impl(&dword_181A37000, v31, v70, "%{public}s flow (%{public}@) does not specify local endpoint, backtrace limit exceeded", buf, 0x16u);
        }
      }
    }

    if (!v30)
    {
      goto LABEL_98;
    }

LABEL_82:
    free(v30);
    goto LABEL_98;
  }

  v23 = v20;
  protocol_level = _nw_path_flow_get_protocol_level(v23);

  *(a1 + 14) = protocol_level;
  if (!protocol_level)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v25 = gLogObj;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      *&buf[4] = "[nw_ip_channel_inbox initWithPath:flow:parameters:delegate:]";
      _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_ERROR, "%{public}s flow level undefined, using internet-level", buf, 0xCu);
    }

    *(a1 + 14) = 2;
  }

  address = nw_endpoint_get_address(a1[4]);
  a1[19] = address;
  if (!address)
  {
    v108 = __nwlog_obj();
    v109 = a1[4];
    *buf = 136446466;
    *&buf[4] = "[nw_ip_channel_inbox initWithPath:flow:parameters:delegate:]";
    *&buf[12] = 2112;
    *&buf[14] = v109;
    v110 = _os_log_send_and_compose_impl();

    uu[0] = 16;
    LOBYTE(v140) = 0;
    if (__nwlog_fault(v110, uu, &v140))
    {
      if (uu[0] == 17)
      {
        v111 = __nwlog_obj();
        v112 = uu[0];
        if (os_log_type_enabled(v111, uu[0]))
        {
          v113 = v16[4];
          *buf = 136446466;
          *&buf[4] = "[nw_ip_channel_inbox initWithPath:flow:parameters:delegate:]";
          *&buf[12] = 2112;
          *&buf[14] = v113;
          _os_log_impl(&dword_181A37000, v111, v112, "%{public}s endpoint %@ is not an address", buf, 0x16u);
        }
      }

      else if (v140 == 1)
      {
        v124 = __nw_create_backtrace_string();
        v111 = __nwlog_obj();
        v125 = uu[0];
        v126 = os_log_type_enabled(v111, uu[0]);
        if (v124)
        {
          if (v126)
          {
            v127 = v16[4];
            *buf = 136446722;
            *&buf[4] = "[nw_ip_channel_inbox initWithPath:flow:parameters:delegate:]";
            *&buf[12] = 2112;
            *&buf[14] = v127;
            v142 = 2082;
            v143 = v124;
            _os_log_impl(&dword_181A37000, v111, v125, "%{public}s endpoint %@ is not an address, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(v124);
          goto LABEL_220;
        }

        if (v126)
        {
          v137 = v16[4];
          *buf = 136446466;
          *&buf[4] = "[nw_ip_channel_inbox initWithPath:flow:parameters:delegate:]";
          *&buf[12] = 2112;
          *&buf[14] = v137;
          _os_log_impl(&dword_181A37000, v111, v125, "%{public}s endpoint %@ is not an address, no backtrace", buf, 0x16u);
        }
      }

      else
      {
        v111 = __nwlog_obj();
        v134 = uu[0];
        if (os_log_type_enabled(v111, uu[0]))
        {
          v135 = v16[4];
          *buf = 136446466;
          *&buf[4] = "[nw_ip_channel_inbox initWithPath:flow:parameters:delegate:]";
          *&buf[12] = 2112;
          *&buf[14] = v135;
          _os_log_impl(&dword_181A37000, v111, v134, "%{public}s endpoint %@ is not an address, backtrace limit exceeded", buf, 0x16u);
        }
      }
    }

LABEL_220:
    if (v110)
    {
      free(v110);
    }

    goto LABEL_98;
  }

  sa_family = address->sa_family;
  if (sa_family == 2)
  {
    v33 = 4;
    goto LABEL_25;
  }

  if (sa_family != 30)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v46 = gLogObj;
    v47 = a1[4];
    *buf = 136446466;
    *&buf[4] = "[nw_ip_channel_inbox initWithPath:flow:parameters:delegate:]";
    *&buf[12] = 2112;
    *&buf[14] = v47;
    v48 = _os_log_send_and_compose_impl();

    uu[0] = 16;
    LOBYTE(v140) = 0;
    if (__nwlog_fault(v48, uu, &v140))
    {
      if (uu[0] == 17)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v49 = gLogObj;
        v50 = uu[0];
        if (os_log_type_enabled(v49, uu[0]))
        {
          v51 = v16[4];
          *buf = 136446466;
          *&buf[4] = "[nw_ip_channel_inbox initWithPath:flow:parameters:delegate:]";
          *&buf[12] = 2112;
          *&buf[14] = v51;
          _os_log_impl(&dword_181A37000, v49, v50, "%{public}s endpoint %@ is not IPv4 or IPv6 address", buf, 0x16u);
        }
      }

      else if (v140 == 1)
      {
        v65 = __nw_create_backtrace_string();
        if (v65)
        {
          v66 = v65;
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v67 = gLogObj;
          v68 = uu[0];
          if (os_log_type_enabled(v67, uu[0]))
          {
            v69 = v16[4];
            *buf = 136446722;
            *&buf[4] = "[nw_ip_channel_inbox initWithPath:flow:parameters:delegate:]";
            *&buf[12] = 2112;
            *&buf[14] = v69;
            v142 = 2082;
            v143 = v66;
            _os_log_impl(&dword_181A37000, v67, v68, "%{public}s endpoint %@ is not IPv4 or IPv6 address, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(v66);
          if (!v48)
          {
            goto LABEL_98;
          }

          goto LABEL_91;
        }

        v49 = __nwlog_obj();
        v77 = uu[0];
        if (os_log_type_enabled(v49, uu[0]))
        {
          v78 = v16[4];
          *buf = 136446466;
          *&buf[4] = "[nw_ip_channel_inbox initWithPath:flow:parameters:delegate:]";
          *&buf[12] = 2112;
          *&buf[14] = v78;
          _os_log_impl(&dword_181A37000, v49, v77, "%{public}s endpoint %@ is not IPv4 or IPv6 address, no backtrace", buf, 0x16u);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v49 = gLogObj;
        v74 = uu[0];
        if (os_log_type_enabled(v49, uu[0]))
        {
          v75 = v16[4];
          *buf = 136446466;
          *&buf[4] = "[nw_ip_channel_inbox initWithPath:flow:parameters:delegate:]";
          *&buf[12] = 2112;
          *&buf[14] = v75;
          _os_log_impl(&dword_181A37000, v49, v74, "%{public}s endpoint %@ is not IPv4 or IPv6 address, backtrace limit exceeded", buf, 0x16u);
        }
      }
    }

    if (!v48)
    {
      goto LABEL_98;
    }

LABEL_91:
    free(v48);
    goto LABEL_98;
  }

  if (*&address->sa_data[6] || *&address->sa_data[10] || *&address[1].sa_len)
  {
    v28 = 1;
    goto LABEL_26;
  }

  v33 = 20;
LABEL_25:
  v28 = *(&address->sa_len + v33) != 0;
LABEL_26:
  *(a1 + 167) = *(a1 + 167) & 0xFE | v28;
  *(a1 + 82) = *(a1[19] + 1);
  v34 = _nw_parameters_copy_context(v12);
  if (!v34)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_channel_create_with_nexus_flow";
    v114 = _os_log_send_and_compose_impl();
    uu[0] = 16;
    LOBYTE(v140) = 0;
    v115 = v114;
    if (!__nwlog_fault(v114, uu, &v140))
    {
      goto LABEL_215;
    }

    if (uu[0] == 17)
    {
      v116 = __nwlog_obj();
      v117 = uu[0];
      if (!os_log_type_enabled(v116, uu[0]))
      {
        goto LABEL_215;
      }

      *buf = 136446210;
      *&buf[4] = "nw_channel_create_with_nexus_flow";
      v118 = "%{public}s called with null context";
LABEL_213:
      v136 = v116;
LABEL_214:
      _os_log_impl(&dword_181A37000, v136, v117, v118, buf, 0xCu);
      goto LABEL_215;
    }

    if (v140 != 1)
    {
      v116 = __nwlog_obj();
      v117 = uu[0];
      if (!os_log_type_enabled(v116, uu[0]))
      {
        goto LABEL_215;
      }

      *buf = 136446210;
      *&buf[4] = "nw_channel_create_with_nexus_flow";
      v118 = "%{public}s called with null context, backtrace limit exceeded";
      goto LABEL_213;
    }

    v128 = __nw_create_backtrace_string();
    v129 = __nwlog_obj();
    v117 = uu[0];
    log = v129;
    v130 = os_log_type_enabled(v129, uu[0]);
    if (v128)
    {
      if (v130)
      {
        *buf = 136446466;
        *&buf[4] = "nw_channel_create_with_nexus_flow";
        *&buf[12] = 2082;
        *&buf[14] = v128;
        v131 = "%{public}s called with null context, dumping backtrace:%{public}s";
LABEL_180:
        _os_log_impl(&dword_181A37000, log, v117, v131, buf, 0x16u);
      }

LABEL_181:
      free(v128);
      goto LABEL_215;
    }

    if (v130)
    {
      *buf = 136446210;
      *&buf[4] = "nw_channel_create_with_nexus_flow";
      v118 = "%{public}s called with null context, no backtrace";
LABEL_227:
      v136 = log;
      goto LABEL_214;
    }

LABEL_215:
    if (v115)
    {
      free(v115);
    }

    goto LABEL_40;
  }

  v35 = a1[9];
  if (!v35)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_channel_create_with_nexus_flow";
    v119 = _os_log_send_and_compose_impl();
    uu[0] = 16;
    LOBYTE(v140) = 0;
    v115 = v119;
    if (!__nwlog_fault(v119, uu, &v140))
    {
      goto LABEL_215;
    }

    if (uu[0] == 17)
    {
      v116 = __nwlog_obj();
      v117 = uu[0];
      if (!os_log_type_enabled(v116, uu[0]))
      {
        goto LABEL_215;
      }

      *buf = 136446210;
      *&buf[4] = "nw_channel_create_with_nexus_flow";
      v118 = "%{public}s called with null flow";
      goto LABEL_213;
    }

    if (v140 != 1)
    {
      v116 = __nwlog_obj();
      v117 = uu[0];
      if (!os_log_type_enabled(v116, uu[0]))
      {
        goto LABEL_215;
      }

      *buf = 136446210;
      *&buf[4] = "nw_channel_create_with_nexus_flow";
      v118 = "%{public}s called with null flow, backtrace limit exceeded";
      goto LABEL_213;
    }

    v128 = __nw_create_backtrace_string();
    v132 = __nwlog_obj();
    v117 = uu[0];
    log = v132;
    v133 = os_log_type_enabled(v132, uu[0]);
    if (v128)
    {
      if (v133)
      {
        *buf = 136446466;
        *&buf[4] = "nw_channel_create_with_nexus_flow";
        *&buf[12] = 2082;
        *&buf[14] = v128;
        v131 = "%{public}s called with null flow, dumping backtrace:%{public}s";
        goto LABEL_180;
      }

      goto LABEL_181;
    }

    if (v133)
    {
      *buf = 136446210;
      *&buf[4] = "nw_channel_create_with_nexus_flow";
      v118 = "%{public}s called with null flow, no backtrace";
      goto LABEL_227;
    }

    goto LABEL_215;
  }

  *uu = 0;
  v145 = 0;
  v140 = 0;
  v36 = v35;
  nexus_instance = _nw_path_flow_get_nexus_instance(v36, uu, &v140);

  if ((nexus_instance & 1) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v52 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      *&buf[4] = "nw_channel_create_with_nexus_flow";
      *&buf[12] = 2114;
      *&buf[14] = v36;
      _os_log_impl(&dword_181A37000, v52, OS_LOG_TYPE_ERROR, "%{public}s nw_path_flow_get_nexus_instance for %{public}@ returned false", buf, 0x16u);
    }

LABEL_40:
    v45 = 0;
    goto LABEL_41;
  }

  *buf = 0;
  *&buf[8] = 0;
  v38 = v36;
  can_support_user_packet_pool = _nw_path_flow_nexus_can_support_user_packet_pool(v38);

  v40 = v38;
  should_use_event_ring = _nw_path_flow_nexus_should_use_event_ring(v40);

  if (should_use_event_ring)
  {
    v42 = 2;
  }

  else
  {
    v42 = 0;
  }

  buf[12] = v42 | can_support_user_packet_pool;
  v43 = v40;
  nexus_key = _nw_path_flow_get_nexus_key(v43, &buf[8]);

  *buf = nexus_key;
  v45 = nw_channel_create_with_attributes(v34, uu, v140, buf);
LABEL_41:
  v53 = a1[10];
  a1[10] = v45;

  if (!a1[10])
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v59 = gLogObj;
    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      v60 = v16[9];
      *buf = 136446722;
      *&buf[4] = "[nw_ip_channel_inbox initWithPath:flow:parameters:delegate:]";
      *&buf[12] = 2114;
      *&buf[14] = v14;
      v142 = 2114;
      v143 = v60;
      _os_log_impl(&dword_181A37000, v59, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ nw_channel_create_with_nexus_flow for %{public}@ failed", buf, 0x20u);
    }

    goto LABEL_99;
  }

  a1[13] = nw_ip_channel_inbox_protocol_identifier;
  a1[14] = &nw_ip_channel_inbox_protocol_callbacks;
  a1[16] = a1;
  nw_path_flow_get_id(a1[9], a1 + 88);
  nw_channel_set_close_automatically(a1[10], 1);
  nw_channel_set_defer_input_available(a1[10], 1);
  nw_channel_set_protocol_level(a1[10], *(a1 + 14));
  protocol_handler = nw_channel_get_protocol_handler(a1[10]);
  if (((**(protocol_handler + 24))(protocol_handler, (a1 + 11)) & 1) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v61 = gLogObj;
    *buf = 136446210;
    *&buf[4] = "[nw_ip_channel_inbox initWithPath:flow:parameters:delegate:]";
    v62 = _os_log_send_and_compose_impl();

    uu[0] = 16;
    LOBYTE(v140) = 0;
    if (__nwlog_fault(v62, uu, &v140))
    {
      if (uu[0] == 17)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v63 = gLogObj;
        v64 = uu[0];
        if (os_log_type_enabled(v63, uu[0]))
        {
          *buf = 136446210;
          *&buf[4] = "[nw_ip_channel_inbox initWithPath:flow:parameters:delegate:]";
          _os_log_impl(&dword_181A37000, v63, v64, "%{public}s channel protocol add_input_handler failed", buf, 0xCu);
        }
      }

      else if (v140 == 1)
      {
        v71 = __nw_create_backtrace_string();
        v63 = __nwlog_obj();
        v72 = uu[0];
        v73 = os_log_type_enabled(v63, uu[0]);
        if (v71)
        {
          if (v73)
          {
            *buf = 136446466;
            *&buf[4] = "[nw_ip_channel_inbox initWithPath:flow:parameters:delegate:]";
            *&buf[12] = 2082;
            *&buf[14] = v71;
            _os_log_impl(&dword_181A37000, v63, v72, "%{public}s channel protocol add_input_handler failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v71);
          if (!v62)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        }

        if (v73)
        {
          *buf = 136446210;
          *&buf[4] = "[nw_ip_channel_inbox initWithPath:flow:parameters:delegate:]";
          _os_log_impl(&dword_181A37000, v63, v72, "%{public}s channel protocol add_input_handler failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v63 = gLogObj;
        v76 = uu[0];
        if (os_log_type_enabled(v63, uu[0]))
        {
          *buf = 136446210;
          *&buf[4] = "[nw_ip_channel_inbox initWithPath:flow:parameters:delegate:]";
          _os_log_impl(&dword_181A37000, v63, v76, "%{public}s channel protocol add_input_handler failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v62)
    {
LABEL_98:

LABEL_99:
      a1 = 0;
      goto LABEL_100;
    }

LABEL_97:
    free(v62);
    goto LABEL_98;
  }

  (*(*(protocol_handler + 24) + 24))(protocol_handler, a1 + 11);
  *(a1 + 166) = nw_parameters_get_ip_protocol(v12);
  v55 = a1[5];
  if (v55)
  {
    LODWORD(v55) = _nw_interface_get_index(v55);
  }

  *(a1 + 40) = v55;
  a1 = a1;
  a1[16] = a1;
LABEL_100:

  return a1;
}

@end