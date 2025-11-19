@interface NWConcrete_nw_protocol_instance
- (NWConcrete_nw_protocol_instance)init;
- (nw_protocol)getProtocolStructure;
- (void)destroy;
@end

@implementation NWConcrete_nw_protocol_instance

- (NWConcrete_nw_protocol_instance)init
{
  v21 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = NWConcrete_nw_protocol_instance;
  v2 = [(NWConcrete_nw_protocol_instance *)&v16 init];
  v3 = v2;
  if (v2)
  {
    v2->empty_frame_pool.tqh_first = 0;
    v2->empty_frame_pool.tqh_last = &v2->empty_frame_pool.tqh_first;
    v2->pending_inbound_frames.tqh_last = 0;
    *&v2->pending_inbound_frame_count = &v2->pending_inbound_frames.tqh_last;
    v2->handle = 0;
    v2->context = &v2->handle;
    v2->inbound_frames.tqh_first = 0;
    v2->inbound_frames.tqh_last = &v2->inbound_frames.tqh_first;
    v2->outbound_frames.tqh_last = 0;
    *&v2->empty_frame_pool_count = &v2->outbound_frames.tqh_last;
    LODWORD(v2->outbound_frames.tqh_first) = 0;
    v4 = v2;
    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v18 = "[NWConcrete_nw_protocol_instance init]";
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
        v18 = "[NWConcrete_nw_protocol_instance init]";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s [super init] failed", buf, 0xCu);
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
          v18 = "[NWConcrete_nw_protocol_instance init]";
          v19 = 2082;
          v20 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v12)
      {
        *buf = 136446210;
        v18 = "[NWConcrete_nw_protocol_instance init]";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s [super init] failed, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v18 = "[NWConcrete_nw_protocol_instance init]";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s [super init] failed, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v7)
  {
    free(v7);
  }

LABEL_3:

  return v3;
}

- (void)destroy
{
  v98 = *MEMORY[0x1E69E9840];
  tqh_last = self->outbound_frames.tqh_last;
  do
  {
    if (!tqh_last)
    {
      break;
    }

    v4 = tqh_last[2];
    v5 = __42__NWConcrete_nw_protocol_instance_destroy__block_invoke(&__block_literal_global_12009, tqh_last);
    tqh_last = v4;
  }

  while ((v5 & 1) != 0);
  v6 = self->pending_outbound_frames.tqh_last;
  if (v6)
  {
    os_unfair_lock_opaque = v6[12]._os_unfair_lock_opaque;
    if (!os_unfair_lock_opaque)
    {
LABEL_14:
      _nw_hash_table_release(v6, tqh_last);
      self->pending_outbound_frames.tqh_last = 0;
      goto LABEL_15;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    *buf = 136446722;
    v89 = "[NWConcrete_nw_protocol_instance destroy]";
    v90 = 1024;
    *v91 = os_unfair_lock_opaque;
    *&v91[4] = 2048;
    *&v91[6] = self;
    v9 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v84) = 0;
    if (__nwlog_fault(v9, type, &v84))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v11 = type[0];
        if (os_log_type_enabled(v10, type[0]))
        {
          *buf = 136446722;
          v89 = "[NWConcrete_nw_protocol_instance destroy]";
          v90 = 1024;
          *v91 = os_unfair_lock_opaque;
          *&v91[4] = 2048;
          *&v91[6] = self;
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s Flow table is not empty (%u) when protocol instance %p is deallocated", buf, 0x1Cu);
        }
      }

      else if (v84 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v34 = type[0];
        v35 = os_log_type_enabled(v10, type[0]);
        if (backtrace_string)
        {
          if (v35)
          {
            *buf = 136446978;
            v89 = "[NWConcrete_nw_protocol_instance destroy]";
            v90 = 1024;
            *v91 = os_unfair_lock_opaque;
            *&v91[4] = 2048;
            *&v91[6] = self;
            *&v91[14] = 2082;
            *&v91[16] = backtrace_string;
            _os_log_impl(&dword_181A37000, v10, v34, "%{public}s Flow table is not empty (%u) when protocol instance %p is deallocated, dumping backtrace:%{public}s", buf, 0x26u);
          }

          free(backtrace_string);
          if (!v9)
          {
LABEL_13:
            v6 = self->pending_outbound_frames.tqh_last;
            if (!v6)
            {
              goto LABEL_15;
            }

            goto LABEL_14;
          }

LABEL_12:
          free(v9);
          goto LABEL_13;
        }

        if (v35)
        {
          *buf = 136446722;
          v89 = "[NWConcrete_nw_protocol_instance destroy]";
          v90 = 1024;
          *v91 = os_unfair_lock_opaque;
          *&v91[4] = 2048;
          *&v91[6] = self;
          _os_log_impl(&dword_181A37000, v10, v34, "%{public}s Flow table is not empty (%u) when protocol instance %p is deallocated, no backtrace", buf, 0x1Cu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v55 = type[0];
        if (os_log_type_enabled(v10, type[0]))
        {
          *buf = 136446722;
          v89 = "[NWConcrete_nw_protocol_instance destroy]";
          v90 = 1024;
          *v91 = os_unfair_lock_opaque;
          *&v91[4] = 2048;
          *&v91[6] = self;
          _os_log_impl(&dword_181A37000, v10, v55, "%{public}s Flow table is not empty (%u) when protocol instance %p is deallocated, backtrace limit exceeded", buf, 0x1Cu);
        }
      }
    }

    if (!v9)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_15:
  outbound_data_requests = self->outbound_data_requests;
  if (outbound_data_requests)
  {
    _nw_hash_table_release(outbound_data_requests, tqh_last);
    self->outbound_data_requests = 0;
  }

  flow_registration = self->flow_registration;
  if (flow_registration)
  {
    v81[0] = MEMORY[0x1E69E9820];
    v81[1] = 3221225472;
    v81[2] = __42__NWConcrete_nw_protocol_instance_destroy__block_invoke_57;
    v81[3] = &unk_1E6A3CDF8;
    v81[4] = self;
    nw_hash_table_apply(flow_registration, v81);
    v15 = self->flow_registration;
    if (v15)
    {
      _nw_hash_table_release(v15, v14);
      self->flow_registration = 0;
    }
  }

  v16 = *&self[-1].log_str[25];
  if (v16)
  {
    if (SBYTE5(self->flow_in_connected) < 0)
    {
LABEL_36:
      v25 = v16[5];
      v26 = v16;
      if (v25 == &nw_protocol_ref_counted_handle)
      {
        goto LABEL_61;
      }

      if (v25 != &nw_protocol_ref_counted_additional_handle)
      {
        LOBYTE(v26) = 0;
        v27 = 1;
        goto LABEL_64;
      }

      v26 = v16[8];
      if (v26)
      {
LABEL_61:
        v39 = v26[11];
        v27 = 0;
        if (v39)
        {
          v26[11] = v39 + 1;
        }

        LOBYTE(v26) = -1;
      }

      else
      {
        v27 = 1;
      }

LABEL_64:
      *type = v16;
      v87 = v26;
      v40 = *&self[-1].log_str[33];
      p_paths_log_id_num = &self[-1].paths_log_id_num;
      if (v40 != &nw_protocol_ref_counted_handle)
      {
        if (v40 != &nw_protocol_ref_counted_additional_handle)
        {
          LOBYTE(p_paths_log_id_num) = 0;
          v42 = 1;
          goto LABEL_71;
        }

        p_paths_log_id_num = *&self[-1].log_str[57];
        if (!p_paths_log_id_num)
        {
          v42 = 1;
          goto LABEL_71;
        }
      }

      v43 = *(p_paths_log_id_num + 11);
      v42 = 0;
      if (v43)
      {
        *(p_paths_log_id_num + 11) = v43 + 1;
      }

      LOBYTE(p_paths_log_id_num) = -1;
LABEL_71:
      v84 = &self[-1].paths_log_id_num;
      v85 = p_paths_log_id_num;
      v44 = v16[3];
      if (v44)
      {
        v45 = *(v44 + 8);
        if (v45)
        {
          v46 = v45(v16, &self[-1].paths_log_id_num);
          if (v42)
          {
            goto LABEL_75;
          }

          goto LABEL_74;
        }
      }

      v58 = v16;
      v59 = __nwlog_obj();
      v60 = v58[2];
      if (!v60)
      {
        v60 = "invalid";
      }

      *buf = 136446722;
      v89 = "__nw_protocol_remove_input_handler";
      v90 = 2082;
      *v91 = v60;
      *&v91[8] = 2048;
      v61 = v58;
      *&v91[10] = v58;
      v62 = _os_log_send_and_compose_impl();

      v83 = OS_LOG_TYPE_ERROR;
      v82 = 0;
      if (__nwlog_fault(v62, &v83, &v82))
      {
        if (v83 == OS_LOG_TYPE_FAULT)
        {
          v63 = __nwlog_obj();
          v64 = v83;
          if (os_log_type_enabled(v63, v83))
          {
            v65 = v61[2];
            if (!v65)
            {
              v65 = "invalid";
            }

            *buf = 136446722;
            v89 = "__nw_protocol_remove_input_handler";
            v90 = 2082;
            *v91 = v65;
            *&v91[8] = 2048;
            *&v91[10] = v61;
            _os_log_impl(&dword_181A37000, v63, v64, "%{public}s protocol %{public}s (%p) has invalid remove_input_handler callback", buf, 0x20u);
          }

LABEL_151:

          goto LABEL_152;
        }

        if (v82 != 1)
        {
          v63 = __nwlog_obj();
          v76 = v83;
          if (os_log_type_enabled(v63, v83))
          {
            v77 = v61[2];
            if (!v77)
            {
              v77 = "invalid";
            }

            *buf = 136446722;
            v89 = "__nw_protocol_remove_input_handler";
            v90 = 2082;
            *v91 = v77;
            *&v91[8] = 2048;
            *&v91[10] = v61;
            _os_log_impl(&dword_181A37000, v63, v76, "%{public}s protocol %{public}s (%p) has invalid remove_input_handler callback, backtrace limit exceeded", buf, 0x20u);
          }

          goto LABEL_151;
        }

        v70 = __nw_create_backtrace_string();
        v63 = __nwlog_obj();
        v80 = v83;
        v71 = os_log_type_enabled(v63, v83);
        if (!v70)
        {
          if (v71)
          {
            v79 = v61[2];
            if (!v79)
            {
              v79 = "invalid";
            }

            *buf = 136446722;
            v89 = "__nw_protocol_remove_input_handler";
            v90 = 2082;
            *v91 = v79;
            *&v91[8] = 2048;
            *&v91[10] = v61;
            _os_log_impl(&dword_181A37000, v63, v80, "%{public}s protocol %{public}s (%p) has invalid remove_input_handler callback, no backtrace", buf, 0x20u);
          }

          goto LABEL_151;
        }

        if (v71)
        {
          v72 = v61[2];
          if (!v72)
          {
            v72 = "invalid";
          }

          *buf = 136446978;
          v89 = "__nw_protocol_remove_input_handler";
          v90 = 2082;
          *v91 = v72;
          *&v91[8] = 2048;
          *&v91[10] = v61;
          *&v91[18] = 2082;
          *&v91[20] = v70;
          _os_log_impl(&dword_181A37000, v63, v80, "%{public}s protocol %{public}s (%p) has invalid remove_input_handler callback, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v70);
      }

LABEL_152:
      if (v62)
      {
        free(v62);
      }

      v46 = 0;
      if (v42)
      {
LABEL_75:
        if (v27)
        {
          if (v46)
          {
LABEL_83:
            v48 = *&self[-1].log_str[25];
            if (v48)
            {
              v49 = *(v48 + 40);
              if (v49 == &nw_protocol_ref_counted_handle || v49 == &nw_protocol_ref_counted_additional_handle && (v48 = *(v48 + 64)) != 0)
              {
                v50 = *(v48 + 88);
                if (v50)
                {
                  v51 = v50 - 1;
                  *(v48 + 88) = v51;
                  if (!v51)
                  {
                    v52 = *(v48 + 64);
                    if (v52)
                    {
                      *(v48 + 64) = 0;
                      v52[2](v52);
                      _Block_release(v52);
                    }

                    if (*(v48 + 72))
                    {
                      v53 = *(v48 + 64);
                      if (v53)
                      {
                        _Block_release(v53);
                      }
                    }

                    free(v48);
                  }
                }
              }

              *&self[-1].log_str[25] = 0;
            }

            goto LABEL_96;
          }
        }

        else
        {
          nw::release_if_needed<nw_protocol *>(type);
          if (v46)
          {
            goto LABEL_83;
          }
        }

LABEL_79:
        if ((SBYTE5(self->flow_in_connected) & 0x80000000) == 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v47 = gLogObj;
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446722;
            v89 = "[NWConcrete_nw_protocol_instance destroy]";
            v90 = 2082;
            *v91 = &self->flow_in_connected + 7;
            *&v91[8] = 2080;
            *&v91[10] = " ";
            _os_log_impl(&dword_181A37000, v47, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sUnable to remove output handler", buf, 0x20u);
          }
        }

        goto LABEL_83;
      }

LABEL_74:
      nw::release_if_needed<nw_protocol *>(&v84);
      goto LABEL_75;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v17 = gLogObj;
    v18 = *&self[-1].log_str[25];
    v19 = "invalid";
    if (v18 && *(v18 + 16))
    {
      v19 = *(v18 + 16);
    }

    *buf = 136447490;
    v89 = "[NWConcrete_nw_protocol_instance destroy]";
    v90 = 2082;
    *v91 = &self->flow_in_connected + 7;
    *&v91[8] = 2080;
    *&v91[10] = " ";
    *&v91[18] = 2080;
    *&v91[20] = v19;
    v92 = 2048;
    v93 = v18;
    v94 = 2048;
    v95 = self;
    v20 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v84) = 0;
    if (__nwlog_fault(v20, type, &v84))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v21 = gLogObj;
        v22 = type[0];
        if (os_log_type_enabled(v21, type[0]))
        {
          v23 = *&self[-1].log_str[25];
          v24 = "invalid";
          if (v23 && *(v23 + 16))
          {
            v24 = *(v23 + 16);
          }

          *buf = 136447490;
          v89 = "[NWConcrete_nw_protocol_instance destroy]";
          v90 = 2082;
          *v91 = &self->flow_in_connected + 7;
          *&v91[8] = 2080;
          *&v91[10] = " ";
          *&v91[18] = 2080;
          *&v91[20] = v24;
          v92 = 2048;
          v93 = v23;
          v94 = 2048;
          v95 = self;
          _os_log_impl(&dword_181A37000, v21, v22, "%{public}s %{public}s%sOutput handler %s:%p is not null when protocol instance %p is deallocated", buf, 0x3Eu);
        }
      }

      else if (v84 == 1)
      {
        v28 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v21 = gLogObj;
        v29 = type[0];
        v30 = os_log_type_enabled(v21, type[0]);
        if (v28)
        {
          if (v30)
          {
            v31 = *&self[-1].log_str[25];
            v32 = "invalid";
            if (v31 && *(v31 + 16))
            {
              v32 = *(v31 + 16);
            }

            *buf = 136447746;
            v89 = "[NWConcrete_nw_protocol_instance destroy]";
            v90 = 2082;
            *v91 = &self->flow_in_connected + 7;
            *&v91[8] = 2080;
            *&v91[10] = " ";
            *&v91[18] = 2080;
            *&v91[20] = v32;
            v92 = 2048;
            v93 = v31;
            v94 = 2048;
            v95 = self;
            v96 = 2082;
            v97 = v28;
            _os_log_impl(&dword_181A37000, v21, v29, "%{public}s %{public}s%sOutput handler %s:%p is not null when protocol instance %p is deallocated, dumping backtrace:%{public}s", buf, 0x48u);
          }

          free(v28);
          if (!v20)
          {
LABEL_35:
            v16 = *&self[-1].log_str[25];
            if (v16)
            {
              goto LABEL_36;
            }

            v66 = __nwlog_obj();
            *buf = 136446210;
            v89 = "__nw_protocol_remove_input_handler";
            v67 = _os_log_send_and_compose_impl();

            type[0] = OS_LOG_TYPE_ERROR;
            LOBYTE(v84) = 0;
            if (__nwlog_fault(v67, type, &v84))
            {
              if (type[0] == OS_LOG_TYPE_FAULT)
              {
                v68 = __nwlog_obj();
                v69 = type[0];
                if (os_log_type_enabled(v68, type[0]))
                {
                  *buf = 136446210;
                  v89 = "__nw_protocol_remove_input_handler";
                  _os_log_impl(&dword_181A37000, v68, v69, "%{public}s called with null protocol", buf, 0xCu);
                }
              }

              else if (v84 == 1)
              {
                v73 = __nw_create_backtrace_string();
                v68 = __nwlog_obj();
                v74 = type[0];
                v75 = os_log_type_enabled(v68, type[0]);
                if (v73)
                {
                  if (v75)
                  {
                    *buf = 136446466;
                    v89 = "__nw_protocol_remove_input_handler";
                    v90 = 2082;
                    *v91 = v73;
                    _os_log_impl(&dword_181A37000, v68, v74, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
                  }

                  free(v73);
                  goto LABEL_159;
                }

                if (v75)
                {
                  *buf = 136446210;
                  v89 = "__nw_protocol_remove_input_handler";
                  _os_log_impl(&dword_181A37000, v68, v74, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
                }
              }

              else
              {
                v68 = __nwlog_obj();
                v78 = type[0];
                if (os_log_type_enabled(v68, type[0]))
                {
                  *buf = 136446210;
                  v89 = "__nw_protocol_remove_input_handler";
                  _os_log_impl(&dword_181A37000, v68, v78, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
                }
              }
            }

LABEL_159:
            if (v67)
            {
              free(v67);
            }

            goto LABEL_79;
          }

LABEL_34:
          free(v20);
          goto LABEL_35;
        }

        if (v30)
        {
          v56 = *&self[-1].log_str[25];
          v57 = "invalid";
          if (v56 && *(v56 + 16))
          {
            v57 = *(v56 + 16);
          }

          *buf = 136447490;
          v89 = "[NWConcrete_nw_protocol_instance destroy]";
          v90 = 2082;
          *v91 = &self->flow_in_connected + 7;
          *&v91[8] = 2080;
          *&v91[10] = " ";
          *&v91[18] = 2080;
          *&v91[20] = v57;
          v92 = 2048;
          v93 = v56;
          v94 = 2048;
          v95 = self;
          _os_log_impl(&dword_181A37000, v21, v29, "%{public}s %{public}s%sOutput handler %s:%p is not null when protocol instance %p is deallocated, no backtrace", buf, 0x3Eu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v21 = gLogObj;
        v36 = type[0];
        if (os_log_type_enabled(v21, type[0]))
        {
          v37 = *&self[-1].log_str[25];
          v38 = "invalid";
          if (v37 && *(v37 + 16))
          {
            v38 = *(v37 + 16);
          }

          *buf = 136447490;
          v89 = "[NWConcrete_nw_protocol_instance destroy]";
          v90 = 2082;
          *v91 = &self->flow_in_connected + 7;
          *&v91[8] = 2080;
          *&v91[10] = " ";
          *&v91[18] = 2080;
          *&v91[20] = v38;
          v92 = 2048;
          v93 = v37;
          v94 = 2048;
          v95 = self;
          _os_log_impl(&dword_181A37000, v21, v36, "%{public}s %{public}s%sOutput handler %s:%p is not null when protocol instance %p is deallocated, backtrace limit exceeded", buf, 0x3Eu);
        }
      }
    }

    if (!v20)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

LABEL_96:
  parameters = self->parameters;
  if (parameters)
  {
    nw_association_unregister(parameters, self);
  }
}

- (nw_protocol)getProtocolStructure
{
  if (self)
  {
    return &self[-1].paths_log_id_num;
  }

  else
  {
    return 0;
  }
}

@end