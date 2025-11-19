@interface NWConcrete_nw_connection_group
- (NSString)description;
- (id)redactedDescription;
- (void)dealloc;
- (void)initWithDescriptor:(void *)a3 connection:(void *)a4 parameters:;
@end

@implementation NWConcrete_nw_connection_group

- (id)redactedDescription
{
  v2 = *MEMORY[0x1E695E480];
  description = nw_connection_group_get_description(self);
  v4 = CFStringCreateWithCString(v2, description, 0x8000100u);

  return v4;
}

- (NSString)description
{
  v2 = *MEMORY[0x1E695E480];
  description = nw_connection_group_get_description(self);
  v4 = CFStringCreateWithCString(v2, description, 0x8000100u);

  return v4;
}

- (void)dealloc
{
  v23 = *MEMORY[0x1E69E9840];
  if (!*(self + 3))
  {
    v3 = *(self + 20);
    if (v3)
    {
      free(v3);
      *(self + 20) = 0;
    }

    v4 = *(self + 21);
    if (v4)
    {
      free(v4);
      *(self + 21) = 0;
    }

    v5 = *(self + 10);
    *(self + 10) = 0;

    goto LABEL_7;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v20 = "[NWConcrete_nw_connection_group dealloc]";
  v15 = 12;
  v14 = buf;
  v7 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v17 = 0;
  if (__nwlog_fault(v7, &type, &v17))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v20 = "[NWConcrete_nw_connection_group dealloc]";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s over-release of nw_connection_group_t! Object should not be internally retained and deallocating", buf, 0xCu);
      }
    }

    else if (v17 == 1)
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
          v20 = "[NWConcrete_nw_connection_group dealloc]";
          v21 = 2082;
          v22 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s over-release of nw_connection_group_t! Object should not be internally retained and deallocating, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_24;
      }

      if (v12)
      {
        *buf = 136446210;
        v20 = "[NWConcrete_nw_connection_group dealloc]";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s over-release of nw_connection_group_t! Object should not be internally retained and deallocating, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v20 = "[NWConcrete_nw_connection_group dealloc]";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s over-release of nw_connection_group_t! Object should not be internally retained and deallocating, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_24:
  if (v7)
  {
    free(v7);
  }

LABEL_7:
  v16.receiver = self;
  v16.super_class = NWConcrete_nw_connection_group;
  [(NWConcrete_nw_connection_group *)&v16 dealloc:v14];
}

- (void)initWithDescriptor:(void *)a3 connection:(void *)a4 parameters:
{
  v166 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!a1)
  {
    goto LABEL_101;
  }

  if (v7)
  {
    v159.receiver = a1;
    v159.super_class = NWConcrete_nw_connection_group;
    v10 = objc_msgSendSuper2(&v159, sel_init);
    v11 = v10;
    if (v10)
    {
      a1 = v10;
      v10[44] = nw_connection_group_get_next_log_id();
      os_unfair_lock_lock(&nw_uuid_generate_insecure(unsigned char *)::uuid_lock);
      if (uuid_is_null(&nw_uuid_generate_insecure(unsigned char *)::last_used_uuid))
      {
        goto LABEL_9;
      }

      if (nw_uuid_generate_insecure(unsigned char *)::last_used_uuid != -1)
      {
        *&nw_uuid_generate_insecure(unsigned char *)::last_used_uuid = nw_uuid_generate_insecure(unsigned char *)::last_used_uuid + 1;
        goto LABEL_10;
      }

      if (*(&nw_uuid_generate_insecure(unsigned char *)::last_used_uuid + 1) == -1)
      {
LABEL_9:
        uuid_generate_random(&nw_uuid_generate_insecure(unsigned char *)::last_used_uuid);
        BYTE9(nw_uuid_generate_insecure(unsigned char *)::last_used_uuid) = -1;
      }

      else
      {
        ++*(&nw_uuid_generate_insecure(unsigned char *)::last_used_uuid + 1);
      }

LABEL_10:
      *(v11 + 8) = nw_uuid_generate_insecure(unsigned char *)::last_used_uuid;
      os_unfair_lock_unlock(&nw_uuid_generate_insecure(unsigned char *)::uuid_lock);
      if (v9)
      {
        v12 = _nw_parameters_copy_context(v9);
        is_inline = nw_context_is_inline(v12);

        if (is_inline)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v14 = gLogObj;
          *buf = 136446210;
          v161 = "[NWConcrete_nw_connection_group initWithDescriptor:connection:parameters:]";
          v15 = _os_log_send_and_compose_impl();

          type[0] = OS_LOG_TYPE_ERROR;
          LOBYTE(v151) = 0;
          if (!__nwlog_fault(v15, type, &v151))
          {
            goto LABEL_99;
          }

          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v16 = gLogObj;
            v17 = type[0];
            if (os_log_type_enabled(v16, type[0]))
            {
              *buf = 136446210;
              v161 = "[NWConcrete_nw_connection_group initWithDescriptor:connection:parameters:]";
              _os_log_impl(&dword_181A37000, v16, v17, "%{public}s Cannot use nw_connection_group on inline contexts", buf, 0xCu);
            }

LABEL_98:

            goto LABEL_99;
          }

          if (v151 != 1)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v16 = gLogObj;
            v58 = type[0];
            if (os_log_type_enabled(v16, type[0]))
            {
              *buf = 136446210;
              v161 = "[NWConcrete_nw_connection_group initWithDescriptor:connection:parameters:]";
              _os_log_impl(&dword_181A37000, v16, v58, "%{public}s Cannot use nw_connection_group on inline contexts, backtrace limit exceeded", buf, 0xCu);
            }

            goto LABEL_98;
          }

          backtrace_string = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v16 = gLogObj;
          v29 = type[0];
          v30 = os_log_type_enabled(v16, type[0]);
          if (!backtrace_string)
          {
            if (v30)
            {
              *buf = 136446210;
              v161 = "[NWConcrete_nw_connection_group initWithDescriptor:connection:parameters:]";
              _os_log_impl(&dword_181A37000, v16, v29, "%{public}s Cannot use nw_connection_group on inline contexts, no backtrace", buf, 0xCu);
            }

            goto LABEL_98;
          }

          if (v30)
          {
            *buf = 136446466;
            v161 = "[NWConcrete_nw_connection_group initWithDescriptor:connection:parameters:]";
            v162 = 2082;
            *v163 = backtrace_string;
            _os_log_impl(&dword_181A37000, v16, v29, "%{public}s Cannot use nw_connection_group on inline contexts, dumping backtrace:%{public}s", buf, 0x16u);
          }

LABEL_25:

          free(backtrace_string);
          if (!v15)
          {
            goto LABEL_101;
          }

          goto LABEL_100;
        }
      }

      v18 = _nw_array_create();
      v19 = *(v11 + 14);
      *(v11 + 14) = v18;

      v20 = *(v11 + 18);
      *(v11 + 18) = 0;

      v21 = *(v11 + 19);
      *(v11 + 19) = 0;

      *(v11 + 48) = -1;
      *(v11 + 23) = 0x40000000000;
      *(v11 + 198) &= 0x25u;
      *(v11 + 10) = 0;
      v22 = *(v11 + 6);
      *(v11 + 6) = 0;

      if (v8)
      {
        v23 = v8;
        v24 = v23[2];

        v25 = _nw_parameters_copy(v24);
        v26 = *(v11 + 7);
        *(v11 + 7) = v25;

        *(v11 + 198) |= 4u;
      }

      else
      {
        if (v9)
        {
          v27 = _nw_parameters_copy(v9);
        }

        else
        {
          v27 = _nw_parameters_create();
        }

        v24 = *(v11 + 7);
        *(v11 + 7) = v27;
      }

      nw_parameters_set_reuse_local_address(*(v11 + 7), 1);
      v31 = nw_group_descriptor_copy(v7);
      v32 = *(v11 + 8);
      *(v11 + 8) = v31;

      v33 = *(v11 + 8);
      if (v33)
      {
        v34 = v33;
        v35 = v34[2] == 1;

        if (v35 && nw_parameters_get_data_mode(*(v11 + 7)) == 2)
        {
          if (nw_parameters_get_logging_disabled(*(v11 + 7)))
          {
            goto LABEL_101;
          }

          if (__nwlog_connection_group_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
          }

          v36 = gconnection_groupLogObj;
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            v37 = *(v11 + 44);
            *buf = 136446466;
            v161 = "[NWConcrete_nw_connection_group initWithDescriptor:connection:parameters:]";
            v162 = 1024;
            *v163 = v37;
            _os_log_impl(&dword_181A37000, v36, OS_LOG_TYPE_ERROR, "%{public}s [G%u] cannot create multicast connection group with stream mode parameters", buf, 0x12u);
          }

LABEL_37:

          goto LABEL_101;
        }

        v38 = *(v11 + 8);
        if (v38)
        {
          v39 = v38;
          v40 = v39[2] == 2;

          if (v40 && (nw_parameters_has_multiplexed_protocol_in_stack(*(v11 + 7)) & 1) == 0)
          {
            if (nw_parameters_get_logging_disabled(*(v11 + 7)))
            {
              goto LABEL_101;
            }

            if (__nwlog_connection_group_log::onceToken != -1)
            {
              dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
            }

            v36 = gconnection_groupLogObj;
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              v84 = *(v11 + 44);
              *buf = 136446466;
              v161 = "[NWConcrete_nw_connection_group initWithDescriptor:connection:parameters:]";
              v162 = 1024;
              *v163 = v84;
              _os_log_impl(&dword_181A37000, v36, OS_LOG_TYPE_ERROR, "%{public}s [G%u] cannot create multiplex connection group with non-multiplex parameters", buf, 0x12u);
            }

            goto LABEL_37;
          }
        }
      }

      v41 = nw_parameters_copy_local_endpoint(*(v11 + 7));
      v42 = v41;
      if (v41)
      {
        v43 = v41;
        port = _nw_endpoint_get_port(v43);

        *(v11 + 98) = port;
      }

      v45 = *(v11 + 8);
      if (!v45)
      {
        goto LABEL_109;
      }

      v46 = v45;
      v47 = v46[2] == 1;

      if (v47)
      {
        *type = 0;
        v156 = type;
        v157 = 0x2020000000;
        v158 = 0;
        v151 = 0;
        v152 = &v151;
        v153 = 0x2020000000;
        v154 = 0;
        v48 = *(v11 + 8);
        enumerate_block[0] = MEMORY[0x1E69E9820];
        enumerate_block[1] = 3221225472;
        enumerate_block[2] = __75__NWConcrete_nw_connection_group_initWithDescriptor_connection_parameters___block_invoke;
        enumerate_block[3] = &unk_1E6A2C9D0;
        enumerate_block[4] = type;
        enumerate_block[5] = &v151;
        nw_group_descriptor_enumerate_endpoints(v48, enumerate_block);
        if (!nw_parameters_get_logging_disabled(*(v11 + 7)) && gLogDatapath == 1)
        {
          if (__nwlog_connection_group_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
          }

          v138 = gconnection_groupLogObj;
          if (os_log_type_enabled(v138, OS_LOG_TYPE_DEBUG))
          {
            v139 = *(a1 + 44);
            v140 = v152[3];
            if (!v140)
            {
              v140 = "<ephemeral>";
            }

            *buf = 136446722;
            v161 = "[NWConcrete_nw_connection_group initWithDescriptor:connection:parameters:]";
            v162 = 1024;
            *v163 = v139;
            *&v163[4] = 2080;
            *&v163[6] = v140;
            _os_log_impl(&dword_181A37000, v138, OS_LOG_TYPE_DEBUG, "%{public}s [G%u] using port %s for connection group listener", buf, 0x1Cu);
          }
        }

        v49 = _nw_parameters_copy(a1[7]);
        v50 = v49;
        if (*(v156 + 12))
        {
          nw_parameters_set_local_endpoint(v49, 0);
        }

        else
        {
          *(v156 + 12) = *(a1 + 98);
        }

        multicast = nw_listener_create_multicast(a1[8], v50, v152[3]);
        v60 = a1[12];
        a1[12] = multicast;

        v61 = v152[3];
        if (v61)
        {
          free(v61);
          v152[3] = 0;
        }

        v62 = a1[12];
        if (v62)
        {
          if (*(a1 + 98) == *(v156 + 12))
          {
            goto LABEL_77;
          }

          nw_parameters_set_allow_socket_access(v50, 1);
          nw_parameters_set_reuse_local_address(v50, 1);
          if (v42)
          {
            nw_parameters_set_local_endpoint(v50, v42);
          }

          v63 = nw_listener_create(v50);
          v64 = a1[13];
          a1[13] = v63;

          if (nw_parameters_get_logging_disabled(a1[7]))
          {
LABEL_77:

            _Block_object_dispose(&v151, 8);
            _Block_object_dispose(type, 8);
            if (!v62)
            {
LABEL_78:
              v75 = 0;
LABEL_142:

              goto LABEL_143;
            }

            goto LABEL_128;
          }

          if (__nwlog_connection_group_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
          }

          v65 = gconnection_groupLogObj;
          if (!os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
          {
LABEL_76:

            goto LABEL_77;
          }

          v66 = *(a1 + 44);
          v67 = a1[13];
          *buf = 136446722;
          v161 = "[NWConcrete_nw_connection_group initWithDescriptor:connection:parameters:]";
          v162 = 1024;
          *v163 = v66;
          *&v163[4] = 2114;
          *&v163[6] = v67;
          v68 = "%{public}s [G%u] creating unicast listener: %{public}@";
          v69 = v65;
          v70 = OS_LOG_TYPE_INFO;
          v71 = 28;
        }

        else
        {
          if (nw_parameters_get_logging_disabled(a1[7]))
          {
            goto LABEL_77;
          }

          if (__nwlog_connection_group_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
          }

          v65 = gconnection_groupLogObj;
          if (!os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_76;
          }

          v72 = *(a1 + 44);
          v74 = a1[7];
          v73 = a1[8];
          *buf = 136446978;
          v161 = "[NWConcrete_nw_connection_group initWithDescriptor:connection:parameters:]";
          v162 = 1024;
          *v163 = v72;
          *&v163[4] = 2112;
          *&v163[6] = v73;
          *&v163[14] = 2112;
          *&v163[16] = v74;
          v68 = "%{public}s [G%u] failed to create listener with descriptor %@, and parameters %@";
          v69 = v65;
          v70 = OS_LOG_TYPE_ERROR;
          v71 = 38;
        }

        _os_log_impl(&dword_181A37000, v69, v70, v68, buf, v71);
        goto LABEL_76;
      }

      v51 = *(v11 + 8);
      if (!v51)
      {
        goto LABEL_109;
      }

      v52 = v51;
      v53 = v52[2] == 2;

      v54 = *(v11 + 8);
      if (v53)
      {
        v55 = nw_group_descriptor_copy_member(v54);
        v56 = *(v11 + 7);
        if (v8)
        {
          if (!nw_parameters_get_logging_disabled(v56) && gLogDatapath == 1)
          {
            if (__nwlog_connection_group_log::onceToken != -1)
            {
              dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
            }

            v141 = gconnection_groupLogObj;
            if (os_log_type_enabled(v141, OS_LOG_TYPE_DEBUG))
            {
              v142 = *(v11 + 44);
              v143 = *(v11 + 7);
              *buf = 136447234;
              v161 = "[NWConcrete_nw_connection_group initWithDescriptor:connection:parameters:]";
              v162 = 1024;
              *v163 = v142;
              *&v163[4] = 2112;
              *&v163[6] = v8;
              *&v163[14] = 2112;
              *&v163[16] = v55;
              v164 = 2112;
              v165 = v143;
              _os_log_impl(&dword_181A37000, v141, OS_LOG_TYPE_DEBUG, "%{public}s [G%u] using provided connection (%@) for multiplex endpoint (%@) and parameters (%@)", buf, 0x30u);
            }
          }

          v57 = v8;
        }

        else
        {
          if (!nw_parameters_get_logging_disabled(v56) && gLogDatapath == 1)
          {
            if (__nwlog_connection_group_log::onceToken != -1)
            {
              dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
            }

            v144 = gconnection_groupLogObj;
            if (os_log_type_enabled(v144, OS_LOG_TYPE_DEBUG))
            {
              v145 = *(v11 + 44);
              v146 = *(v11 + 7);
              *buf = 136446978;
              v161 = "[NWConcrete_nw_connection_group initWithDescriptor:connection:parameters:]";
              v162 = 1024;
              *v163 = v145;
              *&v163[4] = 2112;
              *&v163[6] = v55;
              *&v163[14] = 2112;
              *&v163[16] = v146;
              _os_log_impl(&dword_181A37000, v144, OS_LOG_TYPE_DEBUG, "%{public}s [G%u] creating connection for multiplex endpoint (%@) and parameters (%@)", buf, 0x26u);
            }
          }

          v57 = nw_connection_create(v55, *(v11 + 7));
        }

        v85 = v57;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __75__NWConcrete_nw_connection_group_initWithDescriptor_connection_parameters___block_invoke_12;
        aBlock[3] = &unk_1E6A3D760;
        v148 = v11;
        v149 = v85;
        v86 = v85;
        v87 = _Block_copy(aBlock);
        os_unfair_lock_lock(v11 + 45);
        v87[2](v87);
        os_unfair_lock_unlock(v11 + 45);

        goto LABEL_128;
      }

      if (!v54)
      {
        goto LABEL_109;
      }

      v76 = v54;
      v77 = v76[2] == 3;

      if (v77)
      {
        goto LABEL_128;
      }

      v78 = a1[8];
      if (!v78)
      {
        goto LABEL_109;
      }

      if (nw_group_descriptor_get_type(v78) == 4)
      {
        v79 = nw_listener_create(a1[7]);
        v80 = a1[12];
        a1[12] = v79;

        if (!a1[12])
        {
          if (!nw_parameters_get_logging_disabled(a1[7]))
          {
            if (__nwlog_connection_group_log::onceToken != -1)
            {
              dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
            }

            v81 = gconnection_groupLogObj;
            if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
            {
              v82 = *(a1 + 44);
              v83 = a1[7];
              *buf = 136446722;
              v161 = "[NWConcrete_nw_connection_group initWithDescriptor:connection:parameters:]";
              v162 = 1024;
              *v163 = v82;
              *&v163[4] = 2112;
              *&v163[6] = v83;
              _os_log_impl(&dword_181A37000, v81, OS_LOG_TYPE_ERROR, "%{public}s [G%u] failed to create listener with parameters %@", buf, 0x1Cu);
            }
          }

          goto LABEL_78;
        }

LABEL_128:
        v99 = a1[7];
        if (a1[12])
        {
          if (!nw_parameters_get_logging_disabled(v99))
          {
            if (__nwlog_connection_group_log::onceToken != -1)
            {
              dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
            }

            v100 = gconnection_groupLogObj;
            if (!os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_140;
            }

            v101 = *(a1 + 44);
            v103 = a1[7];
            v102 = a1[8];
            id_string = nw_listener_get_id_string(a1[12]);
            *buf = 136447234;
            v161 = "[NWConcrete_nw_connection_group initWithDescriptor:connection:parameters:]";
            v162 = 1024;
            *v163 = v101;
            *&v163[4] = 2112;
            *&v163[6] = v102;
            *&v163[14] = 2112;
            *&v163[16] = v103;
            v164 = 2080;
            v165 = id_string;
            v105 = "%{public}s [G%u] create with descriptor: %@, parameters: %@, listener: [%s]";
            v106 = v100;
            v107 = 48;
LABEL_139:
            _os_log_impl(&dword_181A37000, v106, OS_LOG_TYPE_DEFAULT, v105, buf, v107);
LABEL_140:
          }
        }

        else if (!nw_parameters_get_logging_disabled(v99))
        {
          if (__nwlog_connection_group_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
          }

          v100 = gconnection_groupLogObj;
          if (!os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_140;
          }

          v108 = *(a1 + 44);
          v110 = a1[7];
          v109 = a1[8];
          *buf = 136446978;
          v161 = "[NWConcrete_nw_connection_group initWithDescriptor:connection:parameters:]";
          v162 = 1024;
          *v163 = v108;
          *&v163[4] = 2112;
          *&v163[6] = v109;
          *&v163[14] = 2112;
          *&v163[16] = v110;
          v105 = "%{public}s [G%u] create with descriptor: %@, parameters: %@";
          v106 = v100;
          v107 = 38;
          goto LABEL_139;
        }

        v75 = a1;
        goto LABEL_142;
      }

      if (!a1[8])
      {
LABEL_109:
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v91 = gLogObj;
        *buf = 136446210;
        v161 = "[NWConcrete_nw_connection_group initWithDescriptor:connection:parameters:]";
        v92 = _os_log_send_and_compose_impl();

        type[0] = OS_LOG_TYPE_ERROR;
        LOBYTE(v151) = 0;
        if (!__nwlog_fault(v92, type, &v151))
        {
          goto LABEL_126;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v93 = gLogObj;
          v94 = type[0];
          if (os_log_type_enabled(v93, type[0]))
          {
            *buf = 136446210;
            v161 = "[NWConcrete_nw_connection_group initWithDescriptor:connection:parameters:]";
            _os_log_impl(&dword_181A37000, v93, v94, "%{public}s Group descriptor is not set", buf, 0xCu);
          }
        }

        else if (v151 == 1)
        {
          v95 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v93 = gLogObj;
          v96 = type[0];
          v97 = os_log_type_enabled(v93, type[0]);
          if (v95)
          {
            if (v97)
            {
              *buf = 136446466;
              v161 = "[NWConcrete_nw_connection_group initWithDescriptor:connection:parameters:]";
              v162 = 2082;
              *v163 = v95;
              _os_log_impl(&dword_181A37000, v93, v96, "%{public}s Group descriptor is not set, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v95);
            if (!v92)
            {
              goto LABEL_128;
            }

LABEL_127:
            free(v92);
            goto LABEL_128;
          }

          if (v97)
          {
            *buf = 136446210;
            v161 = "[NWConcrete_nw_connection_group initWithDescriptor:connection:parameters:]";
            _os_log_impl(&dword_181A37000, v93, v96, "%{public}s Group descriptor is not set, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v93 = gLogObj;
          v98 = type[0];
          if (os_log_type_enabled(v93, type[0]))
          {
            *buf = 136446210;
            v161 = "[NWConcrete_nw_connection_group initWithDescriptor:connection:parameters:]";
            _os_log_impl(&dword_181A37000, v93, v98, "%{public}s Group descriptor is not set, backtrace limit exceeded", buf, 0xCu);
          }
        }

        goto LABEL_125;
      }

      v88 = __nwlog_obj();
      v89 = nw_group_descriptor_get_type(a1[8]);
      if (v89 > 4)
      {
        v90 = "unknown";
      }

      else
      {
        v90 = off_1E6A2CCD0[v89];
      }

      *buf = 136446466;
      v161 = "[NWConcrete_nw_connection_group initWithDescriptor:connection:parameters:]";
      v162 = 2080;
      *v163 = v90;
      v92 = _os_log_send_and_compose_impl();

      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v151) = 0;
      if (__nwlog_fault(v92, type, &v151))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v93 = __nwlog_obj();
          v112 = type[0];
          if (os_log_type_enabled(v93, type[0]))
          {
            v113 = nw_group_descriptor_get_type(a1[8]);
            if (v113 > 4)
            {
              v114 = "unknown";
            }

            else
            {
              v114 = off_1E6A2CCD0[v113];
            }

            *buf = 136446466;
            v161 = "[NWConcrete_nw_connection_group initWithDescriptor:connection:parameters:]";
            v162 = 2080;
            *v163 = v114;
            _os_log_impl(&dword_181A37000, v93, v112, "%{public}s Unsupported group descriptor type: %s", buf, 0x16u);
          }

LABEL_125:

          goto LABEL_126;
        }

        if (v151 != 1)
        {
          v93 = __nwlog_obj();
          v120 = type[0];
          if (os_log_type_enabled(v93, type[0]))
          {
            v121 = nw_group_descriptor_get_type(a1[8]);
            if (v121 > 4)
            {
              v122 = "unknown";
            }

            else
            {
              v122 = off_1E6A2CCD0[v121];
            }

            *buf = 136446466;
            v161 = "[NWConcrete_nw_connection_group initWithDescriptor:connection:parameters:]";
            v162 = 2080;
            *v163 = v122;
            _os_log_impl(&dword_181A37000, v93, v120, "%{public}s Unsupported group descriptor type: %s, backtrace limit exceeded", buf, 0x16u);
          }

          goto LABEL_125;
        }

        v115 = __nw_create_backtrace_string();
        v93 = __nwlog_obj();
        v116 = type[0];
        v117 = os_log_type_enabled(v93, type[0]);
        if (!v115)
        {
          if (v117)
          {
            v129 = nw_group_descriptor_get_type(a1[8]);
            if (v129 > 4)
            {
              v130 = "unknown";
            }

            else
            {
              v130 = off_1E6A2CCD0[v129];
            }

            *buf = 136446466;
            v161 = "[NWConcrete_nw_connection_group initWithDescriptor:connection:parameters:]";
            v162 = 2080;
            *v163 = v130;
            _os_log_impl(&dword_181A37000, v93, v116, "%{public}s Unsupported group descriptor type: %s, no backtrace", buf, 0x16u);
          }

          goto LABEL_125;
        }

        if (v117)
        {
          v118 = nw_group_descriptor_get_type(a1[8]);
          if (v118 > 4)
          {
            v119 = "unknown";
          }

          else
          {
            v119 = off_1E6A2CCD0[v118];
          }

          *buf = 136446722;
          v161 = "[NWConcrete_nw_connection_group initWithDescriptor:connection:parameters:]";
          v162 = 2080;
          *v163 = v119;
          *&v163[8] = 2082;
          *&v163[10] = v115;
          _os_log_impl(&dword_181A37000, v93, v116, "%{public}s Unsupported group descriptor type: %s, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(v115);
      }

LABEL_126:
      if (!v92)
      {
        goto LABEL_128;
      }

      goto LABEL_127;
    }

    v125 = __nwlog_obj();
    *buf = 136446210;
    v161 = "[NWConcrete_nw_connection_group initWithDescriptor:connection:parameters:]";
    v126 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v151) = 0;
    if (__nwlog_fault(v126, type, &v151))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v127 = __nwlog_obj();
        v128 = type[0];
        if (os_log_type_enabled(v127, type[0]))
        {
          *buf = 136446210;
          v161 = "[NWConcrete_nw_connection_group initWithDescriptor:connection:parameters:]";
          _os_log_impl(&dword_181A37000, v127, v128, "%{public}s [super init] failed", buf, 0xCu);
        }
      }

      else if (v151 == 1)
      {
        v133 = __nw_create_backtrace_string();
        v127 = __nwlog_obj();
        v134 = type[0];
        v135 = os_log_type_enabled(v127, type[0]);
        if (v133)
        {
          if (v135)
          {
            *buf = 136446466;
            v161 = "[NWConcrete_nw_connection_group initWithDescriptor:connection:parameters:]";
            v162 = 2082;
            *v163 = v133;
            _os_log_impl(&dword_181A37000, v127, v134, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v133);
          goto LABEL_213;
        }

        if (v135)
        {
          *buf = 136446210;
          v161 = "[NWConcrete_nw_connection_group initWithDescriptor:connection:parameters:]";
          _os_log_impl(&dword_181A37000, v127, v134, "%{public}s [super init] failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v127 = __nwlog_obj();
        v137 = type[0];
        if (os_log_type_enabled(v127, type[0]))
        {
          *buf = 136446210;
          v161 = "[NWConcrete_nw_connection_group initWithDescriptor:connection:parameters:]";
          _os_log_impl(&dword_181A37000, v127, v137, "%{public}s [super init] failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_213:
    if (v126)
    {
      free(v126);
    }

    a1 = 0;
    goto LABEL_101;
  }

  v123 = __nwlog_obj();
  *buf = 136446210;
  v161 = "[NWConcrete_nw_connection_group initWithDescriptor:connection:parameters:]";
  v15 = _os_log_send_and_compose_impl();

  type[0] = OS_LOG_TYPE_ERROR;
  LOBYTE(v151) = 0;
  if (__nwlog_fault(v15, type, &v151))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v16 = __nwlog_obj();
      v124 = type[0];
      if (os_log_type_enabled(v16, type[0]))
      {
        *buf = 136446210;
        v161 = "[NWConcrete_nw_connection_group initWithDescriptor:connection:parameters:]";
        _os_log_impl(&dword_181A37000, v16, v124, "%{public}s called with null _descriptor", buf, 0xCu);
      }

      goto LABEL_98;
    }

    if (v151 != 1)
    {
      v16 = __nwlog_obj();
      v136 = type[0];
      if (os_log_type_enabled(v16, type[0]))
      {
        *buf = 136446210;
        v161 = "[NWConcrete_nw_connection_group initWithDescriptor:connection:parameters:]";
        _os_log_impl(&dword_181A37000, v16, v136, "%{public}s called with null _descriptor, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_98;
    }

    backtrace_string = __nw_create_backtrace_string();
    v16 = __nwlog_obj();
    v131 = type[0];
    v132 = os_log_type_enabled(v16, type[0]);
    if (!backtrace_string)
    {
      if (v132)
      {
        *buf = 136446210;
        v161 = "[NWConcrete_nw_connection_group initWithDescriptor:connection:parameters:]";
        _os_log_impl(&dword_181A37000, v16, v131, "%{public}s called with null _descriptor, no backtrace", buf, 0xCu);
      }

      goto LABEL_98;
    }

    if (v132)
    {
      *buf = 136446466;
      v161 = "[NWConcrete_nw_connection_group initWithDescriptor:connection:parameters:]";
      v162 = 2082;
      *v163 = backtrace_string;
      _os_log_impl(&dword_181A37000, v16, v131, "%{public}s called with null _descriptor, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_25;
  }

LABEL_99:
  if (v15)
  {
LABEL_100:
    free(v15);
  }

LABEL_101:
  v75 = 0;
LABEL_143:

  return v75;
}

@end