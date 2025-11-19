uint64_t nw_context_get_identifier(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1[2];
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_context_get_identifier";
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
        v15 = "nw_context_get_identifier";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null context", buf, 0xCu);
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
          v15 = "nw_context_get_identifier";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_context_get_identifier";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null context, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_context_get_identifier";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
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

uint64_t sub_181B48EB4()
{
  privacy_level = nw_context_get_privacy_level(*(v0 + 16));
  if (privacy_level >= 5)
  {
    return 0;
  }

  else
  {
    return (0x302010000uLL >> (8 * privacy_level));
  }
}

void sub_181B48EF4(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v4 >> 61;
  if ((v4 >> 61) <= 2)
  {
    if (!v5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838710);
      swift_allocObject();
      *a1 = sub_181D0D8AC(v3);
      a1[1] = 0;
      return;
    }

    if (v5 == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0);
      swift_allocObject();
      v6 = sub_181B00FA8(v3);
      v7 = 0x2000000000000000;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838AB0);
      swift_allocObject();
      v6 = sub_181CC4ED8(v3);
      v7 = 0x4000000000000000;
    }

    goto LABEL_13;
  }

  if (v5 <= 4)
  {
    if (v5 == 3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
      swift_allocObject();
      v6 = sub_181B41150(v3);
      v7 = 0x6000000000000000;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DD0);
      swift_allocObject();
      v6 = sub_181D0D8AC(v3);
      v7 = 0x8000000000000000;
    }

LABEL_13:
    *a1 = v6;
    a1[1] = v7;
    return;
  }

  if (v5 == 5)
  {
    ObjectType = swift_getObjectType();
    v9[1] = v3;
    (*(*((v4 & 0x1FFFFFFFFFFFFFFFLL) + 8) + 32))(v9, ObjectType);
    *a1 = v9[0];
    a1[1] = v4 & 0x1FFFFFFFFFFFFFFFLL | 0xA000000000000000;
  }

  else
  {
    *a1 = v3;
    a1[1] = v4;
  }
}

const char *nw_endpoint_handler_get_id_string(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1 + 184;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_endpoint_handler_get_id_string";
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
        v15 = "nw_endpoint_handler_get_id_string";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null handler", buf, 0xCu);
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
          v15 = "nw_endpoint_handler_get_id_string";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_endpoint_handler_get_id_string";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null handler, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_endpoint_handler_get_id_string";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

  v2 = "";
  v1 = 0;
LABEL_3:

  return v2;
}

uint64_t sub_181B4934C(char *a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC7Network7NWArray_deque;
  v5 = a1;
  v6 = swift_beginAccess();
  v7 = *&a1[v4];
  v8 = v7[4];
  v9 = v7[3] + v8;
  if (v7[2] < v9)
  {
    v9 = v7[2];
  }

  v13 = v7[4];
  v14 = v9;
  v10 = v7;
  while (v8 != v14)
  {
LABEL_4:
    v11 = &v10[v8++];
    v13 = v8;
    if (v11[5] == a2)
    {

      return 1;
    }
  }

  v6 = sub_181AC81FC(v6);
  if (v6)
  {
    v10 = v7;
    v8 = v13;
    goto LABEL_4;
  }

  return 0;
}

void nw_association_register_internal(void *a1, void *a2, void *a3, int a4, int a5, void *a6)
{
  v137 = *MEMORY[0x1E69E9840];
  v10 = a1;
  v123 = a2;
  v11 = a3;
  v12 = a6;
  if (!v10)
  {
    v96 = v12;
    v97 = __nwlog_obj();
    *buf = 136446210;
    v128 = "nw_association_register_internal";
    v98 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v125 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v98, &type, &v125))
    {
      goto LABEL_193;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v99 = __nwlog_obj();
      v100 = type;
      if (os_log_type_enabled(v99, type))
      {
        *buf = 136446210;
        v128 = "nw_association_register_internal";
        _os_log_impl(&dword_181A37000, v99, v100, "%{public}s called with null association", buf, 0xCu);
      }

      goto LABEL_183;
    }

    if (v125 != OS_LOG_TYPE_INFO)
    {
      v99 = __nwlog_obj();
      v118 = type;
      if (os_log_type_enabled(v99, type))
      {
        *buf = 136446210;
        v128 = "nw_association_register_internal";
        _os_log_impl(&dword_181A37000, v99, v118, "%{public}s called with null association, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_183;
    }

    backtrace_string = __nw_create_backtrace_string();
    v108 = __nwlog_obj();
    v109 = type;
    v110 = os_log_type_enabled(v108, type);
    if (backtrace_string)
    {
      if (v110)
      {
        *buf = 136446466;
        v128 = "nw_association_register_internal";
        v129 = 2082;
        v130 = backtrace_string;
        _os_log_impl(&dword_181A37000, v108, v109, "%{public}s called with null association, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
LABEL_193:
      if (!v98)
      {
        goto LABEL_146;
      }

LABEL_194:
      free(v98);
      goto LABEL_146;
    }

    if (v110)
    {
      *buf = 136446210;
      v128 = "nw_association_register_internal";
      _os_log_impl(&dword_181A37000, v108, v109, "%{public}s called with null association, no backtrace", buf, 0xCu);
    }

LABEL_192:

    goto LABEL_193;
  }

  if (v11)
  {
    aBlock = v12;
    if (v12)
    {
      v13 = nw_path_parameters_copy_context(*(v10 + 2));
      nw_context_assert_queue(v13);

      if (!*(v10 + 5))
      {
        internal = nw_hash_table_create_internal(7u, 16, nw_association_get_key, nw_association_key_hash, nw_association_matches_key, nw_association_release, 0);
        if (internal)
        {
          *(internal + 56) &= ~2u;
        }

        *(v10 + 5) = internal;
      }

      nw_association_activate(v10, v123, a5, 0);
      node = nw_hash_table_get_node(*(v10 + 5), v11, 0);
      if (!node)
      {
        goto LABEL_93;
      }

      v16 = node;
      if (nw_path_parameters_get_logging_disabled(*(v10 + 2)))
      {
        goto LABEL_54;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v17 = gconnectionLogObj;
      v18 = *(v10 + 1);
      v19 = v18;
      if (v18)
      {
        logging_description = _nw_endpoint_get_logging_description(v18);
      }

      else
      {
        logging_description = "<NULL>";
      }

      *buf = 136446722;
      v128 = "nw_association_register_internal";
      v129 = 2082;
      v130 = logging_description;
      v131 = 2048;
      v132 = v11;
      v21 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v125 = OS_LOG_TYPE_DEFAULT;
      if (__nwlog_fault(v21, &type, &v125))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v22 = gconnectionLogObj;
          v23 = type;
          if (os_log_type_enabled(v22, type))
          {
            v24 = *(v10 + 1);
            v25 = v24;
            if (v24)
            {
              v26 = _nw_endpoint_get_logging_description(v24);
            }

            else
            {
              v26 = "<NULL>";
            }

            *buf = 136446722;
            v128 = "nw_association_register_internal";
            v129 = 2082;
            v130 = v26;
            v131 = 2048;
            v132 = v11;
            _os_log_impl(&dword_181A37000, v22, v23, "%{public}s <nw_association %{public}s> already has handle %p registered", buf, 0x20u);
          }
        }

        else if (v125 == OS_LOG_TYPE_INFO)
        {
          v27 = __nw_create_backtrace_string();
          if (v27)
          {
            v28 = v27;
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v29 = gconnectionLogObj;
            v30 = type;
            if (os_log_type_enabled(v29, type))
            {
              v31 = *(v10 + 1);
              v32 = v31;
              if (v31)
              {
                v33 = _nw_endpoint_get_logging_description(v31);
              }

              else
              {
                v33 = "<NULL>";
              }

              *buf = 136446978;
              v128 = "nw_association_register_internal";
              v129 = 2082;
              v130 = v33;
              v131 = 2048;
              v132 = v11;
              v133 = 2082;
              v134 = v28;
              _os_log_impl(&dword_181A37000, v29, v30, "%{public}s <nw_association %{public}s> already has handle %p registered, dumping backtrace:%{public}s", buf, 0x2Au);
            }

            free(v28);
            if (v21)
            {
              goto LABEL_53;
            }

            goto LABEL_54;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v22 = gconnectionLogObj;
          v38 = type;
          if (os_log_type_enabled(v22, type))
          {
            v39 = *(v10 + 1);
            v40 = v39;
            if (v39)
            {
              v41 = _nw_endpoint_get_logging_description(v39);
            }

            else
            {
              v41 = "<NULL>";
            }

            *buf = 136446722;
            v128 = "nw_association_register_internal";
            v129 = 2082;
            v130 = v41;
            v131 = 2048;
            v132 = v11;
            _os_log_impl(&dword_181A37000, v22, v38, "%{public}s <nw_association %{public}s> already has handle %p registered, no backtrace", buf, 0x20u);
          }
        }

        else
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v22 = gconnectionLogObj;
          v34 = type;
          if (os_log_type_enabled(v22, type))
          {
            v35 = *(v10 + 1);
            v36 = v35;
            if (v35)
            {
              v37 = _nw_endpoint_get_logging_description(v35);
            }

            else
            {
              v37 = "<NULL>";
            }

            *buf = 136446722;
            v128 = "nw_association_register_internal";
            v129 = 2082;
            v130 = v37;
            v131 = 2048;
            v132 = v11;
            _os_log_impl(&dword_181A37000, v22, v34, "%{public}s <nw_association %{public}s> already has handle %p registered, backtrace limit exceeded", buf, 0x20u);
          }
        }
      }

      if (v21)
      {
LABEL_53:
        free(v21);
      }

LABEL_54:
      if (nw_hash_table_remove_node(*(v10 + 5), v16) & 1) != 0 || (nw_path_parameters_get_logging_disabled(*(v10 + 2)))
      {
        goto LABEL_93;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v42 = gconnectionLogObj;
      v43 = *(v10 + 1);
      v44 = v43;
      if (v43)
      {
        v45 = _nw_endpoint_get_logging_description(v43);
      }

      else
      {
        v45 = "<NULL>";
      }

      *buf = 136446722;
      v128 = "nw_association_register_internal";
      v129 = 2082;
      v130 = v45;
      v131 = 2048;
      v132 = v16;
      v46 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v125 = OS_LOG_TYPE_DEFAULT;
      if (__nwlog_fault(v46, &type, &v125))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v47 = gconnectionLogObj;
          v48 = type;
          if (os_log_type_enabled(v47, type))
          {
            v49 = *(v10 + 1);
            v50 = v49;
            if (v49)
            {
              v51 = _nw_endpoint_get_logging_description(v49);
            }

            else
            {
              v51 = "<NULL>";
            }

            *buf = 136446722;
            v128 = "nw_association_register_internal";
            v129 = 2082;
            v130 = v51;
            v131 = 2048;
            v132 = v16;
            _os_log_impl(&dword_181A37000, v47, v48, "%{public}s <nw_association %{public}s> failed to remove handle for node %p", buf, 0x20u);
          }
        }

        else if (v125 == OS_LOG_TYPE_INFO)
        {
          v52 = __nw_create_backtrace_string();
          if (v52)
          {
            v53 = v52;
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v54 = gconnectionLogObj;
            v55 = type;
            if (os_log_type_enabled(v54, type))
            {
              v56 = *(v10 + 1);
              v57 = v56;
              if (v56)
              {
                v58 = _nw_endpoint_get_logging_description(v56);
              }

              else
              {
                v58 = "<NULL>";
              }

              *buf = 136446978;
              v128 = "nw_association_register_internal";
              v129 = 2082;
              v130 = v58;
              v131 = 2048;
              v132 = v16;
              v133 = 2082;
              v134 = v53;
              _os_log_impl(&dword_181A37000, v54, v55, "%{public}s <nw_association %{public}s> failed to remove handle for node %p, dumping backtrace:%{public}s", buf, 0x2Au);
            }

            free(v53);
            if (v46)
            {
              goto LABEL_92;
            }

            goto LABEL_93;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v47 = gconnectionLogObj;
          v63 = type;
          if (os_log_type_enabled(v47, type))
          {
            v64 = nw_endpoint_get_logging_description(*(v10 + 1));
            *buf = 136446722;
            v128 = "nw_association_register_internal";
            v129 = 2082;
            v130 = v64;
            v131 = 2048;
            v132 = v16;
            _os_log_impl(&dword_181A37000, v47, v63, "%{public}s <nw_association %{public}s> failed to remove handle for node %p, no backtrace", buf, 0x20u);
          }
        }

        else
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v47 = gconnectionLogObj;
          v59 = type;
          if (os_log_type_enabled(v47, type))
          {
            v60 = *(v10 + 1);
            v61 = v60;
            if (v60)
            {
              v62 = _nw_endpoint_get_logging_description(v60);
            }

            else
            {
              v62 = "<NULL>";
            }

            *buf = 136446722;
            v128 = "nw_association_register_internal";
            v129 = 2082;
            v130 = v62;
            v131 = 2048;
            v132 = v16;
            _os_log_impl(&dword_181A37000, v47, v59, "%{public}s <nw_association %{public}s> failed to remove handle for node %p, backtrace limit exceeded", buf, 0x20u);
          }
        }
      }

      if (v46)
      {
LABEL_92:
        free(v46);
      }

LABEL_93:
      type = OS_LOG_TYPE_DEFAULT;
      v65 = *(v10 + 5);
      v66 = v11;
      v67 = nw_hash_table_add_object(v65, v66, &type);
      if (type & 1) != 0 || (nw_path_parameters_get_logging_disabled(*(v10 + 2)))
      {
LABEL_143:
        extra = nw_hash_node_get_extra(v67);
        v94 = _Block_copy(aBlock);
        v95 = *extra;
        *extra = v94;

        *(extra + 8) = *(extra + 8) & 0xFE | a4;
        if (a4)
        {
          ++*(v10 + 18);
        }

LABEL_145:
        v96 = aBlock;
        goto LABEL_146;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v68 = gconnectionLogObj;
      v69 = *(v10 + 1);
      v70 = v69;
      if (v69)
      {
        v71 = _nw_endpoint_get_logging_description(v69);
      }

      else
      {
        v71 = "<NULL>";
      }

      *buf = 136446978;
      v128 = "nw_association_register_internal";
      v129 = 2082;
      v130 = v71;
      v131 = 2048;
      v132 = v66;
      v133 = 2048;
      v134 = v67;
      v72 = _os_log_send_and_compose_impl();

      v125 = OS_LOG_TYPE_ERROR;
      v124 = 0;
      if (__nwlog_fault(v72, &v125, &v124))
      {
        if (v125 == OS_LOG_TYPE_FAULT)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v73 = gconnectionLogObj;
          v74 = v125;
          if (os_log_type_enabled(v73, v125))
          {
            v75 = *(v10 + 1);
            v76 = v75;
            if (v75)
            {
              v77 = _nw_endpoint_get_logging_description(v75);
            }

            else
            {
              v77 = "<NULL>";
            }

            *buf = 136446978;
            v128 = "nw_association_register_internal";
            v129 = 2082;
            v130 = v77;
            v131 = 2048;
            v132 = v66;
            v133 = 2048;
            v134 = v67;
            _os_log_impl(&dword_181A37000, v73, v74, "%{public}s <nw_association %{public}s> failed to add new handle for %p (node %p)", buf, 0x2Au);
          }
        }

        else if (v124 == 1)
        {
          v78 = __nw_create_backtrace_string();
          if (v78)
          {
            v79 = v78;
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v80 = gconnectionLogObj;
            v81 = v125;
            if (os_log_type_enabled(v80, v125))
            {
              v82 = *(v10 + 1);
              v83 = v82;
              if (v82)
              {
                v84 = _nw_endpoint_get_logging_description(v82);
              }

              else
              {
                v84 = "<NULL>";
              }

              *buf = 136447234;
              v128 = "nw_association_register_internal";
              v129 = 2082;
              v130 = v84;
              v131 = 2048;
              v132 = v66;
              v133 = 2048;
              v134 = v67;
              v135 = 2082;
              v136 = v79;
              _os_log_impl(&dword_181A37000, v80, v81, "%{public}s <nw_association %{public}s> failed to add new handle for %p (node %p), dumping backtrace:%{public}s", buf, 0x34u);
            }

            free(v79);
            if (!v72)
            {
              goto LABEL_143;
            }

LABEL_142:
            free(v72);
            goto LABEL_143;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v73 = gconnectionLogObj;
          v89 = v125;
          if (os_log_type_enabled(v73, v125))
          {
            v90 = *(v10 + 1);
            v91 = v90;
            if (v90)
            {
              v92 = _nw_endpoint_get_logging_description(v90);
            }

            else
            {
              v92 = "<NULL>";
            }

            *buf = 136446978;
            v128 = "nw_association_register_internal";
            v129 = 2082;
            v130 = v92;
            v131 = 2048;
            v132 = v66;
            v133 = 2048;
            v134 = v67;
            _os_log_impl(&dword_181A37000, v73, v89, "%{public}s <nw_association %{public}s> failed to add new handle for %p (node %p), no backtrace", buf, 0x2Au);
          }
        }

        else
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v73 = gconnectionLogObj;
          v85 = v125;
          if (os_log_type_enabled(v73, v125))
          {
            v86 = *(v10 + 1);
            v87 = v86;
            if (v86)
            {
              v88 = _nw_endpoint_get_logging_description(v86);
            }

            else
            {
              v88 = "<NULL>";
            }

            *buf = 136446978;
            v128 = "nw_association_register_internal";
            v129 = 2082;
            v130 = v88;
            v131 = 2048;
            v132 = v66;
            v133 = 2048;
            v134 = v67;
            _os_log_impl(&dword_181A37000, v73, v85, "%{public}s <nw_association %{public}s> failed to add new handle for %p (node %p), backtrace limit exceeded", buf, 0x2Au);
          }
        }
      }

      if (!v72)
      {
        goto LABEL_143;
      }

      goto LABEL_142;
    }

    v103 = __nwlog_obj();
    *buf = 136446210;
    v128 = "nw_association_register_internal";
    v104 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v125 = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v104, &type, &v125))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v105 = __nwlog_obj();
        v106 = type;
        if (os_log_type_enabled(v105, type))
        {
          *buf = 136446210;
          v128 = "nw_association_register_internal";
          _os_log_impl(&dword_181A37000, v105, v106, "%{public}s called with null update_handler", buf, 0xCu);
        }
      }

      else
      {
        if (v125 == OS_LOG_TYPE_INFO)
        {
          v114 = __nw_create_backtrace_string();
          v115 = __nwlog_obj();
          v116 = type;
          v117 = os_log_type_enabled(v115, type);
          if (v114)
          {
            if (v117)
            {
              *buf = 136446466;
              v128 = "nw_association_register_internal";
              v129 = 2082;
              v130 = v114;
              _os_log_impl(&dword_181A37000, v115, v116, "%{public}s called with null update_handler, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v114);
          }

          else
          {
            if (v117)
            {
              *buf = 136446210;
              v128 = "nw_association_register_internal";
              _os_log_impl(&dword_181A37000, v115, v116, "%{public}s called with null update_handler, no backtrace", buf, 0xCu);
            }
          }

          goto LABEL_198;
        }

        v105 = __nwlog_obj();
        v120 = type;
        if (os_log_type_enabled(v105, type))
        {
          *buf = 136446210;
          v128 = "nw_association_register_internal";
          _os_log_impl(&dword_181A37000, v105, v120, "%{public}s called with null update_handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_198:
    if (v104)
    {
      free(v104);
    }

    goto LABEL_145;
  }

  v96 = v12;
  v101 = __nwlog_obj();
  *buf = 136446210;
  v128 = "nw_association_register_internal";
  v98 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v125 = OS_LOG_TYPE_DEFAULT;
  if (!__nwlog_fault(v98, &type, &v125))
  {
    goto LABEL_193;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v99 = __nwlog_obj();
    v102 = type;
    if (os_log_type_enabled(v99, type))
    {
      *buf = 136446210;
      v128 = "nw_association_register_internal";
      _os_log_impl(&dword_181A37000, v99, v102, "%{public}s called with null handle", buf, 0xCu);
    }

LABEL_183:

    goto LABEL_193;
  }

  if (v125 != OS_LOG_TYPE_INFO)
  {
    v99 = __nwlog_obj();
    v119 = type;
    if (os_log_type_enabled(v99, type))
    {
      *buf = 136446210;
      v128 = "nw_association_register_internal";
      _os_log_impl(&dword_181A37000, v99, v119, "%{public}s called with null handle, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_183;
  }

  v111 = __nw_create_backtrace_string();
  v108 = __nwlog_obj();
  v112 = type;
  v113 = os_log_type_enabled(v108, type);
  if (!v111)
  {
    if (v113)
    {
      *buf = 136446210;
      v128 = "nw_association_register_internal";
      _os_log_impl(&dword_181A37000, v108, v112, "%{public}s called with null handle, no backtrace", buf, 0xCu);
    }

    goto LABEL_192;
  }

  if (v113)
  {
    *buf = 136446466;
    v128 = "nw_association_register_internal";
    v129 = 2082;
    v130 = v111;
    _os_log_impl(&dword_181A37000, v108, v112, "%{public}s called with null handle, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v111);
  if (v98)
  {
    goto LABEL_194;
  }

LABEL_146:
}

void nw_association_activate(void *a1, void *a2, int a3, int a4)
{
  v7 = a1;
  v9 = a2;
  v10 = *(v7 + 8);
  if (v10)
  {
    nw_queue_cancel_source(v10, v8);
    *(v7 + 8) = 0;
  }

  if (*(v7 + 76))
  {
    *(v7 + 76) &= ~1u;
    evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint(*(v7 + 1), v9);
    v12 = *(v7 + 3);
    *(v7 + 3) = evaluator_for_endpoint;

    v13 = *(v7 + 3);
    if (v13)
    {
      v14 = v13;
      os_unfair_lock_lock(v13 + 24);
      v15 = v14[6];
      os_unfair_lock_unlock(v13 + 24);

      if (v15)
      {
        v16 = nw_path_copy_without_parameters(v15);
        v17 = *(v7 + 4);
        *(v7 + 4) = v16;
      }
    }

    else
    {
      v15 = 0;
    }

    nw_path_evaluator_set_logging(*(v7 + 3));
    v18 = *(v7 + 3);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = ___ZL23nw_association_activateP25NWConcrete_nw_associationPU27objcproto16OS_nw_parameters8NSObjectbb_block_invoke;
    v20[3] = &unk_1E6A3CD80;
    v19 = v7;
    v21 = v19;
    nw_path_evaluator_set_update_handler(v18, 0, v20);
    if (a4)
    {
      nw_association_schedule_deactivation(v19);
    }
  }

  else if (a3)
  {
    nw_path_evaluator_force_update(*(v7 + 3), 0);
  }
}

uint64_t nw_protocol_options_matches_definition(void *a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      v6 = _nw_protocol_options_matches_definition(v3, v4);
      goto LABEL_4;
    }

    v13 = __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_protocol_options_matches_definition";
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
          v21 = "nw_protocol_options_matches_definition";
          v12 = "%{public}s called with null definition";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      if (v18 != 1)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v21 = "nw_protocol_options_matches_definition";
          v12 = "%{public}s called with null definition, backtrace limit exceeded";
          goto LABEL_31;
        }

        goto LABEL_32;
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
          v21 = "nw_protocol_options_matches_definition";
          v12 = "%{public}s called with null definition, no backtrace";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      if (!v17)
      {
        goto LABEL_22;
      }

      *buf = 136446466;
      v21 = "nw_protocol_options_matches_definition";
      v22 = 2082;
      v23 = backtrace_string;
      v16 = "%{public}s called with null definition, dumping backtrace:%{public}s";
LABEL_21:
      _os_log_impl(&dword_181A37000, v10, v11, v16, buf, 0x16u);
LABEL_22:

      free(backtrace_string);
    }
  }

  else
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_protocol_options_matches_definition";
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
          v21 = "nw_protocol_options_matches_definition";
          v12 = "%{public}s called with null options";
LABEL_31:
          _os_log_impl(&dword_181A37000, v10, v11, v12, buf, 0xCu);
        }

LABEL_32:

        goto LABEL_33;
      }

      if (v18 != 1)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v21 = "nw_protocol_options_matches_definition";
          v12 = "%{public}s called with null options, backtrace limit exceeded";
          goto LABEL_31;
        }

        goto LABEL_32;
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
          v21 = "nw_protocol_options_matches_definition";
          v12 = "%{public}s called with null options, no backtrace";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      if (!v15)
      {
        goto LABEL_22;
      }

      *buf = 136446466;
      v21 = "nw_protocol_options_matches_definition";
      v22 = 2082;
      v23 = backtrace_string;
      v16 = "%{public}s called with null options, dumping backtrace:%{public}s";
      goto LABEL_21;
    }
  }

LABEL_33:
  if (v9)
  {
    free(v9);
  }

  v6 = 0;
LABEL_4:

  return v6;
}

BOOL _nw_protocol_options_is_udp(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838710);
  v2 = sub_181B4B228(a1, &unk_1EA838DF0, &unk_182AE7590, ProtocolOptions<>.udpOptions()) != 0;

  return v2;
}

uint64_t sub_181B4B228(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  sub_181AA847C(a1);
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    sub_181AA847C(a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    if (swift_dynamicCastClass())
    {
      a4();
      swift_unknownObjectRelease();
      result = swift_dynamicCastClass();
      if (result)
      {
        return result;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return 0;
  }

  return result;
}

uint64_t sub_181B4B2EC(void *a1, void *a2)
{
  v3 = v2;
  v87 = *MEMORY[0x1E69E9840];
  v4 = *(v2 + OBJC_IVAR____TtC7Network8Endpoint_context);
  if (!v4)
  {
    return 1;
  }

  swift_unknownObjectRetain();
  v7 = nw_parameters_copy_context(a1);
  if (!v7)
  {
    goto LABEL_14;
  }

  v8 = v7;
  if ((nw_context_caches_are_shared(v7, v4) & 1) == 0)
  {
    if (qword_1ED40FE10 != -1)
    {
LABEL_23:
      swift_once();
    }

    v49 = sub_182AD2698();
    __swift_project_value_buffer(v49, qword_1ED411BA0);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v50 = sub_182AD2678();
    v51 = sub_182AD38B8();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (!os_log_type_enabled(v50, v51))
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return 1;
    }

    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    *&v85[0] = v53;
    *v52 = 136315394;
    *&v86[0] = 0;
    *(&v86[0] + 1) = 0xE000000000000000;
    *&v84[0] = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838AA0);
    sub_182AD3E18();
    v54 = sub_181C64FFC(*&v86[0], *(&v86[0] + 1), v85);

    *(v52 + 4) = v54;
    *(v52 + 12) = 2080;
    *&v86[0] = 0;
    *(&v86[0] + 1) = 0xE000000000000000;
    *&v84[0] = v4;
    sub_182AD3E18();
    v55 = sub_181C64FFC(*&v86[0], *(&v86[0] + 1), v85);

    *(v52 + 14) = v55;
    _os_log_impl(&dword_181A37000, v50, v51, "nw_context_caches_are_shared(context (%s), endpoint->context (%s) is false", v52, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v53, -1, -1);
    MEMORY[0x1865DF520](v52, -1, -1);

    swift_unknownObjectRelease();
LABEL_14:
    swift_unknownObjectRelease();
    return 1;
  }

  v58 = a2;
  v9 = nw_parameters_copy_path_parameters(a1);
  v10 = OBJC_IVAR____TtC7Network8Endpoint_associations;
  swift_beginAccess();
  v8 = *(v3 + v10);
  v11 = *(v8 + 2);
  v12 = OBJC_IVAR____TtC7Network18__NWPathParameters_parameters;
  v57 = v9;

  if (v11)
  {
    v13 = 0;
    v14 = &v9[v12];
    v15 = (v8 + 40);
    while (1)
    {
      if (v13 >= *(v8 + 2))
      {
        __break(1u);
        goto LABEL_23;
      }

      v16 = *v15;
      v17 = (*(v15 - 1) + OBJC_IVAR____TtC7Network18__NWPathParameters_parameters);
      v19 = v17[1];
      v18 = v17[2];
      v83[0] = *v17;
      v83[1] = v19;
      v83[2] = v18;
      v20 = v17[6];
      v22 = v17[3];
      v21 = v17[4];
      v83[5] = v17[5];
      v83[6] = v20;
      v83[3] = v22;
      v83[4] = v21;
      v23 = v17[10];
      v25 = v17[7];
      v24 = v17[8];
      v83[9] = v17[9];
      v83[10] = v23;
      v83[7] = v25;
      v83[8] = v24;
      v26 = v17[8];
      v27 = v17[9];
      v28 = v17[6];
      v79 = v17[7];
      v80 = v26;
      v29 = v17[10];
      v81 = v27;
      v82 = v29;
      v30 = v17[4];
      v31 = v17[5];
      v32 = v17[2];
      v75 = v17[3];
      v76 = v30;
      v77 = v31;
      v78 = v28;
      v33 = *v17;
      v73 = v17[1];
      v74 = v32;
      v34 = *v14;
      v35 = *(v14 + 2);
      v84[1] = *(v14 + 1);
      v84[2] = v35;
      v84[0] = v34;
      v36 = *(v14 + 3);
      v37 = *(v14 + 4);
      v38 = *(v14 + 6);
      v84[5] = *(v14 + 5);
      v84[6] = v38;
      v84[3] = v36;
      v84[4] = v37;
      v39 = *(v14 + 7);
      v40 = *(v14 + 8);
      v41 = *(v14 + 10);
      v84[9] = *(v14 + 9);
      v84[10] = v41;
      v84[7] = v39;
      v84[8] = v40;
      v42 = *(v14 + 9);
      v69 = *(v14 + 8);
      v70 = v42;
      v71 = *(v14 + 10);
      v72 = v33;
      v43 = *(v14 + 5);
      v65 = *(v14 + 4);
      v66 = v43;
      v44 = *(v14 + 7);
      v67 = *(v14 + 6);
      v68 = v44;
      v45 = *(v14 + 1);
      v61 = *v14;
      v62 = v45;
      v46 = *(v14 + 3);
      v63 = *(v14 + 2);
      v64 = v46;
      v59 = 1;
      swift_unknownObjectRetain();
      sub_181A41E20(v83, v60);
      sub_181A41E20(v84, v60);
      v47 = sub_181B02888(&v61, &v59);
      v85[8] = v69;
      v85[9] = v70;
      v85[10] = v71;
      v85[4] = v65;
      v85[5] = v66;
      v85[6] = v67;
      v85[7] = v68;
      v85[0] = v61;
      v85[1] = v62;
      v85[2] = v63;
      v85[3] = v64;
      sub_181A41E7C(v85);
      v86[8] = v80;
      v86[9] = v81;
      v86[10] = v82;
      v86[4] = v76;
      v86[5] = v77;
      v86[6] = v78;
      v86[7] = v79;
      v86[0] = v72;
      v86[1] = v73;
      v86[2] = v74;
      v86[3] = v75;
      sub_181A41E7C(v86);
      if (v47)
      {
        break;
      }

      swift_unknownObjectRelease();
      ++v13;
      v15 += 2;
      if (v11 == v13)
      {
        goto LABEL_9;
      }
    }

    if (v58 && v16)
    {
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      nw_association_update_with_evaluator(v16, v58);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
LABEL_9:

    v48 = swift_unknownObjectRetain();
    v16 = nw_association_create_with_evaluator(v48, v57, v58);
    sub_181B4DAA0(v16, v57);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return v16;
}

unint64_t _nw_endpoint_copy_association_with_evaluator(void *a1, void *a2, void *a3)
{
  v5 = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v6 = sub_181B4B2EC(a2, a3);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v6 >= 2)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_181B4B8F0()
{
  type metadata accessor for URLEndpoint();
  v0 = sub_182AD1F98();
  v1 = nw_utilities_copy_sanitized_url(v0);

  if (!v1)
  {
    return 0;
  }

  sub_182AD3158();
  sub_181AC2364();
  v2 = sub_182AD3A28();

  free(v1);
  return v2;
}

const char *nw_endpoint_handler_dry_run_string(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    if (v1[284])
    {
      v2 = "dry-run ";
    }

    else
    {
      v2 = "";
    }

    goto LABEL_5;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_endpoint_handler_dry_run_string";
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
        v15 = "nw_endpoint_handler_dry_run_string";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null handler", buf, 0xCu);
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
          v15 = "nw_endpoint_handler_dry_run_string";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_endpoint_handler_dry_run_string";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null handler, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_endpoint_handler_dry_run_string";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_22:
  if (v5)
  {
    free(v5);
  }

  v2 = "";
  v1 = 0;
LABEL_5:

  return v2;
}

id *nw_association_create_with_evaluator(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [[NWConcrete_nw_association alloc] initWithEndpoint:v5 parameters:v6];
  v9 = v8;
  if (v7)
  {
    objc_storeStrong(v8 + 3, a3);
    *(v9 + 76) &= ~1u;
    v10 = v9[3];
    if (v10)
    {
      v11 = v10;
      os_unfair_lock_lock(v10 + 24);
      v12 = v11[6];
      os_unfair_lock_unlock(v10 + 24);
    }

    else
    {
      v12 = 0;
    }

    v13 = nw_path_copy_without_parameters(v12);
    v14 = v9[4];
    v9[4] = v13;

    v15 = v9[3];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __nw_association_create_with_evaluator_block_invoke;
    v17[3] = &unk_1E6A3CD80;
    v18 = v9;
    nw_path_evaluator_set_update_handler(v15, 0, v17);
  }

  return v9;
}

unint64_t nw_endpoint_copy_association_with_evaluator(void *a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v5)
  {
    if (v6)
    {
      v8 = _nw_endpoint_copy_association_with_evaluator(v5, v6, v7);
      goto LABEL_4;
    }

    v14 = __nwlog_obj();
    *buf = 136446210;
    v26 = "nw_endpoint_copy_association_with_evaluator";
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
          v26 = "nw_endpoint_copy_association_with_evaluator";
          _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null parameters", buf, 0xCu);
        }

LABEL_36:

        goto LABEL_37;
      }

      if (v23 != 1)
      {
        v12 = __nwlog_obj();
        v22 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v26 = "nw_endpoint_copy_association_with_evaluator";
          _os_log_impl(&dword_181A37000, v12, v22, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
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
          v26 = "nw_endpoint_copy_association_with_evaluator";
          _os_log_impl(&dword_181A37000, v12, v19, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v20)
      {
        *buf = 136446466;
        v26 = "nw_endpoint_copy_association_with_evaluator";
        v27 = 2082;
        v28 = backtrace_string;
        _os_log_impl(&dword_181A37000, v12, v19, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_24;
    }
  }

  else
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v26 = "nw_endpoint_copy_association_with_evaluator";
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
          v26 = "nw_endpoint_copy_association_with_evaluator";
          _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null endpoint", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v23 != 1)
      {
        v12 = __nwlog_obj();
        v21 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v26 = "nw_endpoint_copy_association_with_evaluator";
          _os_log_impl(&dword_181A37000, v12, v21, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
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
          v26 = "nw_endpoint_copy_association_with_evaluator";
          _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v18)
      {
        *buf = 136446466;
        v26 = "nw_endpoint_copy_association_with_evaluator";
        v27 = 2082;
        v28 = backtrace_string;
        _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_24:

      free(backtrace_string);
    }
  }

LABEL_37:
  if (v11)
  {
    free(v11);
  }

  v8 = 0;
LABEL_4:

  return v8;
}

BOOL _nw_protocol_options_is_tcp(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0);
  v2 = sub_181AA8420(a1) != 0;

  return v2;
}

uint64_t sub_181B4C354(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v9 = sub_181A41ED0(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = v10;
  if (v8[3] < v14)
  {
    sub_181AB2960(v14, isUniquelyReferenced_nonNull_native);
    v9 = sub_181A41ED0(a2);
    if ((v3 & 1) == (v15 & 1))
    {
      goto LABEL_6;
    }

    v9 = sub_182AD4408();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v18 = v9;
    sub_182254CDC();
    v9 = v18;
    if (v3)
    {
      goto LABEL_7;
    }

LABEL_10:
    sub_181B536D4(v9, a2, a1, v8);
    v17 = 0;
    goto LABEL_11;
  }

LABEL_6:
  if ((v3 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v16 = v8[7];
  v17 = *(v16 + 8 * v9);
  *(v16 + 8 * v9) = a1;
LABEL_11:
  *v4 = v8;
  return v17;
}

uint64_t nw_hash_table_add_object(uint64_t a1, uint64_t a2, char *a3)
{
  v51 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj(0, a2);
    *buf = 136446210;
    v46 = "nw_hash_table_add_object";
    v18 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v43 = 0;
    v19 = __nwlog_fault(v18, &type, &v43);
    if (!v19)
    {
      goto LABEL_70;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v43 != 1)
      {
        v21 = __nwlog_obj(v19, v20);
        v22 = type;
        if (!os_log_type_enabled(v21, type))
        {
          goto LABEL_70;
        }

        *buf = 136446210;
        v46 = "nw_hash_table_add_object";
        v23 = "%{public}s called with null table, backtrace limit exceeded";
        goto LABEL_69;
      }

      backtrace_string = __nw_create_backtrace_string();
      v21 = __nwlog_obj(backtrace_string, v35);
      v22 = type;
      v36 = os_log_type_enabled(v21, type);
      if (!backtrace_string)
      {
        if (!v36)
        {
          goto LABEL_70;
        }

        *buf = 136446210;
        v46 = "nw_hash_table_add_object";
        v23 = "%{public}s called with null table, no backtrace";
        goto LABEL_69;
      }

      if (v36)
      {
        *buf = 136446466;
        v46 = "nw_hash_table_add_object";
        v47 = 2082;
        v48 = backtrace_string;
        v37 = "%{public}s called with null table, dumping backtrace:%{public}s";
LABEL_45:
        _os_log_impl(&dword_181A37000, v21, v22, v37, buf, 0x16u);
      }

LABEL_46:
      free(backtrace_string);
      goto LABEL_70;
    }

    v21 = __nwlog_obj(v19, v20);
    v22 = type;
    if (!os_log_type_enabled(v21, type))
    {
      goto LABEL_70;
    }

    *buf = 136446210;
    v46 = "nw_hash_table_add_object";
    v23 = "%{public}s called with null table";
LABEL_69:
    _os_log_impl(&dword_181A37000, v21, v22, v23, buf, 0xCu);
LABEL_70:
    if (v18)
    {
      free(v18);
    }

    return 0;
  }

  v3 = a2;
  if (!a2)
  {
    __nwlog_obj(a1, 0);
    *buf = 136446210;
    v46 = "nw_hash_table_add_object";
    v18 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v43 = 0;
    v24 = __nwlog_fault(v18, &type, &v43);
    if (!v24)
    {
      goto LABEL_70;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v21 = __nwlog_obj(v24, v25);
      v22 = type;
      if (!os_log_type_enabled(v21, type))
      {
        goto LABEL_70;
      }

      *buf = 136446210;
      v46 = "nw_hash_table_add_object";
      v23 = "%{public}s called with null object";
      goto LABEL_69;
    }

    if (v43 != 1)
    {
      v21 = __nwlog_obj(v24, v25);
      v22 = type;
      if (!os_log_type_enabled(v21, type))
      {
        goto LABEL_70;
      }

      *buf = 136446210;
      v46 = "nw_hash_table_add_object";
      v23 = "%{public}s called with null object, backtrace limit exceeded";
      goto LABEL_69;
    }

    backtrace_string = __nw_create_backtrace_string();
    v21 = __nwlog_obj(backtrace_string, v38);
    v22 = type;
    v39 = os_log_type_enabled(v21, type);
    if (backtrace_string)
    {
      if (v39)
      {
        *buf = 136446466;
        v46 = "nw_hash_table_add_object";
        v47 = 2082;
        v48 = backtrace_string;
        v37 = "%{public}s called with null object, dumping backtrace:%{public}s";
        goto LABEL_45;
      }

      goto LABEL_46;
    }

    if (!v39)
    {
      goto LABEL_70;
    }

    *buf = 136446210;
    v46 = "nw_hash_table_add_object";
    v23 = "%{public}s called with null object, no backtrace";
    goto LABEL_69;
  }

  if (*(a1 + 40))
  {
    v6 = *(a1 + 56);
    if ((v6 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v26 = __nwlog_obj(a1, a2);
  os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
  *buf = 136446210;
  v46 = "nw_hash_table_lock";
  v27 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort(v27);
  if (result)
  {
    goto LABEL_80;
  }

  free(v27);
  v6 = *(a1 + 56);
  if ((v6 & 2) != 0)
  {
LABEL_5:
    os_unfair_lock_lock((a1 + 60));
    v6 = *(a1 + 56);
  }

LABEL_6:
  if ((v6 & 1) == 0)
  {
    __nwlog_obj(a1, a2);
    *buf = 136446210;
    v46 = "nw_hash_table_add_object";
    v28 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v43 = 0;
    v29 = __nwlog_fault(v28, &type, &v43);
    if (!v29)
    {
      goto LABEL_75;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v31 = __nwlog_obj(v29, v30);
      v32 = type;
      if (!os_log_type_enabled(v31, type))
      {
        goto LABEL_75;
      }

      *buf = 136446210;
      v46 = "nw_hash_table_add_object";
      v33 = "%{public}s called with invalid hash table";
    }

    else if (v43 == 1)
    {
      v40 = __nw_create_backtrace_string();
      v31 = __nwlog_obj(v40, v41);
      v32 = type;
      v42 = os_log_type_enabled(v31, type);
      if (v40)
      {
        if (v42)
        {
          *buf = 136446466;
          v46 = "nw_hash_table_add_object";
          v47 = 2082;
          v48 = v40;
          _os_log_impl(&dword_181A37000, v31, v32, "%{public}s called with invalid hash table, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v40);
LABEL_75:
        if (v28)
        {
          free(v28);
        }

        if ((*(a1 + 56) & 2) != 0)
        {
          os_unfair_lock_unlock((a1 + 60));
          return 0;
        }

        return 0;
      }

      if (!v42)
      {
        goto LABEL_75;
      }

      *buf = 136446210;
      v46 = "nw_hash_table_add_object";
      v33 = "%{public}s called with invalid hash table, no backtrace";
    }

    else
    {
      v31 = __nwlog_obj(v29, v30);
      v32 = type;
      if (!os_log_type_enabled(v31, type))
      {
        goto LABEL_75;
      }

      *buf = 136446210;
      v46 = "nw_hash_table_add_object";
      v33 = "%{public}s called with invalid hash table, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v31, v32, v33, buf, 0xCu);
    goto LABEL_75;
  }

  *buf = 0;
  v7 = (*a1)(v3, buf);
  v8 = (*(a1 + 8))(v7, *buf) % *(a1 + 40);
  if (_nw_signposts_once != -1)
  {
    dispatch_once(&_nw_signposts_once, &__block_literal_global_65913);
  }

  v9 = a1 + 16 * v8;
  if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
  {
    kdebug_trace();
    v10 = *(v9 + 64);
    if (v10)
    {
      goto LABEL_50;
    }
  }

  else
  {
    v10 = *(v9 + 64);
    if (v10)
    {
LABEL_50:
      while (v10[30] != 1 || *(v10 + 2) != v3)
      {
        v10 = *v10;
        if (!v10)
        {
          goto LABEL_12;
        }
      }

      v17 = 0;
      if (!a3)
      {
        goto LABEL_19;
      }

LABEL_18:
      *a3 = v17;
LABEL_19:
      if ((*(a1 + 56) & 2) != 0)
      {
        os_unfair_lock_unlock((a1 + 60));
      }

      return v10;
    }
  }

LABEL_12:
  v11 = *(a1 + 44) + 32;
  v10 = malloc_type_calloc(1uLL, v11, 0xB0921438uLL);
  if (v10)
  {
LABEL_15:
    *(v10 + 6) = v8;
    *(v10 + 2) = v3;
    v15 = *(a1 + 32);
    if (v15)
    {
      v3 = v15(v3);
    }

    *(v10 + 2) = v3;
    *v10 = 0;
    v16 = *(v9 + 72);
    *(v10 + 1) = v16;
    *v16 = v10;
    *(v9 + 72) = v10;
    v17 = 1;
    v10[30] = 1;
    ++*(a1 + 48);
    if (!a3)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v12 = pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init(v12);
  os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  v46 = "nw_hash_table_add_object";
  v47 = 2048;
  v48 = 1;
  v49 = 2048;
  v50 = v11;
  v13 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort(v13);
  if (!result)
  {
    free(v13);
    goto LABEL_15;
  }

LABEL_80:
  __break(1u);
  return result;
}

uint64_t _nw_endpoint_get_known_tracker_name(void *a1)
{
  v1 = a1;
  v2 = sub_181B53584(19);

  return v2;
}

void nw_endpoint_get_agent_identifier(void *a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    _nw_endpoint_get_agent_identifier(v3, a2);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_get_agent_identifier";
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
        v16 = "nw_endpoint_get_agent_identifier";
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
          v16 = "nw_endpoint_get_agent_identifier";
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
        v16 = "nw_endpoint_get_agent_identifier";
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
        v16 = "nw_endpoint_get_agent_identifier";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

LABEL_3:
}

uint64_t _nw_endpoint_copy_public_keys_0(char *a1)
{
  v1 = *(*&a1[OBJC_IVAR____TtC7Network8Endpoint__publicKeys] + 16);
  v2 = a1;
  if (v1)
  {

    v1 = sub_182AD33B8();
  }

  return v1;
}

uint64_t HostEndpoint.hashValue.getter()
{
  v1 = *v0;
  sub_182AD44E8();
  if (v1)
  {
    sub_182AD44E8();
    v2 = *(v1 + 184);
    v3 = *(v1 + 185);
    MEMORY[0x1865DB070](*(v1 + 16));

    sub_182AD30E8();
    MEMORY[0x1865DB070](qword_182AFBC40[v2]);
    MEMORY[0x1865DB070](qword_182AFBC68[v3]);
    v4 = sub_182AD4558();
    MEMORY[0x1865DB070](v4);
  }

  sub_182AD30E8();
  sub_182AD4528();
  return sub_182AD4558();
}

void nw_connection_add_timestamp_locked_on_nw_queue(void *a1, _OWORD *a2)
{
  *&v43[5] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v17 = __nwlog_obj();
    *buf = 136446210;
    v41 = "nw_connection_add_timestamp_locked_on_nw_queue";
    v18 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v38 = 0;
    if (!__nwlog_fault(v18, &type, &v38))
    {
      goto LABEL_76;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v19 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        v41 = "nw_connection_add_timestamp_locked_on_nw_queue";
        _os_log_impl(&dword_181A37000, v19, v20, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (v38 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v19 = __nwlog_obj();
      v26 = type;
      v27 = os_log_type_enabled(v19, type);
      if (backtrace_string)
      {
        if (v27)
        {
          *buf = 136446466;
          v41 = "nw_connection_add_timestamp_locked_on_nw_queue";
          v42 = 2082;
          *v43 = backtrace_string;
          _os_log_impl(&dword_181A37000, v19, v26, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_76:
        if (!v18)
        {
          goto LABEL_24;
        }

LABEL_77:
        free(v18);
        goto LABEL_24;
      }

      if (v27)
      {
        *buf = 136446210;
        v41 = "nw_connection_add_timestamp_locked_on_nw_queue";
        _os_log_impl(&dword_181A37000, v19, v26, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v19 = __nwlog_obj();
      v33 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        v41 = "nw_connection_add_timestamp_locked_on_nw_queue";
        _os_log_impl(&dword_181A37000, v19, v33, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_75:

    goto LABEL_76;
  }

  if (!a2)
  {
    v21 = __nwlog_obj();
    *buf = 136446210;
    v41 = "nw_connection_add_timestamp_locked_on_nw_queue";
    v18 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v38 = 0;
    if (!__nwlog_fault(v18, &type, &v38))
    {
      goto LABEL_76;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v19 = __nwlog_obj();
      v22 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        v41 = "nw_connection_add_timestamp_locked_on_nw_queue";
        _os_log_impl(&dword_181A37000, v19, v22, "%{public}s called with null timestamp", buf, 0xCu);
      }

      goto LABEL_75;
    }

    if (v38 != 1)
    {
      v19 = __nwlog_obj();
      v34 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        v41 = "nw_connection_add_timestamp_locked_on_nw_queue";
        _os_log_impl(&dword_181A37000, v19, v34, "%{public}s called with null timestamp, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_75;
    }

    v28 = __nw_create_backtrace_string();
    v19 = __nwlog_obj();
    v29 = type;
    v30 = os_log_type_enabled(v19, type);
    if (!v28)
    {
      if (v30)
      {
        *buf = 136446210;
        v41 = "nw_connection_add_timestamp_locked_on_nw_queue";
        _os_log_impl(&dword_181A37000, v19, v29, "%{public}s called with null timestamp, no backtrace", buf, 0xCu);
      }

      goto LABEL_75;
    }

    if (v30)
    {
      *buf = 136446466;
      v41 = "nw_connection_add_timestamp_locked_on_nw_queue";
      v42 = 2082;
      *v43 = v28;
      _os_log_impl(&dword_181A37000, v19, v29, "%{public}s called with null timestamp, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_54;
  }

  if (!v3[39])
  {
    v23 = __nwlog_obj();
    *buf = 136446210;
    v41 = "nw_connection_add_timestamp_locked_on_nw_queue";
    v18 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v38 = 0;
    if (!__nwlog_fault(v18, &type, &v38))
    {
      goto LABEL_76;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v19 = __nwlog_obj();
      v24 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        v41 = "nw_connection_add_timestamp_locked_on_nw_queue";
        _os_log_impl(&dword_181A37000, v19, v24, "%{public}s called with null connection->timestamps", buf, 0xCu);
      }

      goto LABEL_75;
    }

    if (v38 != 1)
    {
      v19 = __nwlog_obj();
      v35 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        v41 = "nw_connection_add_timestamp_locked_on_nw_queue";
        _os_log_impl(&dword_181A37000, v19, v35, "%{public}s called with null connection->timestamps, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_75;
    }

    v28 = __nw_create_backtrace_string();
    v19 = __nwlog_obj();
    v31 = type;
    v32 = os_log_type_enabled(v19, type);
    if (!v28)
    {
      if (v32)
      {
        *buf = 136446210;
        v41 = "nw_connection_add_timestamp_locked_on_nw_queue";
        _os_log_impl(&dword_181A37000, v19, v31, "%{public}s called with null connection->timestamps, no backtrace", buf, 0xCu);
      }

      goto LABEL_75;
    }

    if (v32)
    {
      *buf = 136446466;
      v41 = "nw_connection_add_timestamp_locked_on_nw_queue";
      v42 = 2082;
      *v43 = v28;
      _os_log_impl(&dword_181A37000, v19, v31, "%{public}s called with null connection->timestamps, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_54:

    free(v28);
    if (!v18)
    {
      goto LABEL_24;
    }

    goto LABEL_77;
  }

  nw_context_assert_queue(v3[3]);
  v5 = *(v4 + 161);
  if (v5 >= 0x40)
  {
    if ((*(v4 + 108) & 0x10) == 0)
    {
      *(v4 + 108) |= 0x10u;
      v6 = v4[2];
      if (v6)
      {
        if (!_nw_parameters_get_logging_disabled(v6))
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v7 = gconnectionLogObj;
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            v8 = *(v4 + 112);
            *buf = 136446466;
            v41 = "nw_connection_add_timestamp_locked_on_nw_queue";
            v42 = 1024;
            *v43 = v8;
            _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s [C%u] Hit maximum timestamp count, will start dropping events", buf, 0x12u);
          }
        }
      }
    }

    memmove(v4[39] + 880, v4[39] + 896, 0x80uLL);
    *(v4[39] + 63) = *a2;
    goto LABEL_24;
  }

  v9 = *(v4 + 160);
  if (v5 > v9 || (v9 & 0xF) != 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    v11 = *(v4 + 160);
    v12 = *(v4 + 161);
    *buf = 136446722;
    v41 = "nw_connection_add_timestamp_locked_on_nw_queue";
    v42 = 1024;
    *v43 = v11;
    v43[2] = 1024;
    *&v43[3] = v12;
    v13 = _os_log_send_and_compose_impl();

    if (__nwlog_should_abort(v13))
    {
      goto LABEL_78;
    }

    free(v13);
    v5 = *(v4 + 161);
    v9 = *(v4 + 160);
  }

  v14 = v4[39];
  if (v5 != v9)
  {
LABEL_23:
    v14[v5] = *a2;
    ++*(v4 + 161);
LABEL_24:

    return;
  }

  v15 = v9 + 16;
  if (v9 > 0x30)
  {
    v15 = 64;
  }

  *(v4 + 160) = v15;
  v16 = 16 * v15;
  v14 = reallocf(v14, v16);
  if (v14)
  {
LABEL_22:
    v4[39] = v14;
    v5 = *(v4 + 161);
    goto LABEL_23;
  }

  v36 = __nwlog_obj();
  os_log_type_enabled(v36, OS_LOG_TYPE_ERROR);
  *buf = 136446466;
  v41 = "nw_connection_add_timestamp_locked_on_nw_queue";
  v42 = 2048;
  *v43 = v16;
  v37 = _os_log_send_and_compose_impl();

  if (!__nwlog_should_abort(v37))
  {
    free(v37);
    v14 = 0;
    goto LABEL_22;
  }

LABEL_78:
  __break(1u);
}

uint64_t sub_181B4DAA0(uint64_t a1, char *a2)
{
  v3 = v2;
  v4 = OBJC_IVAR____TtC7Network8Endpoint_associations;
  swift_beginAccess();
  v42 = v4;
  v5 = *(v3 + v4);
  v6 = *(v5 + 16);
  v7 = OBJC_IVAR____TtC7Network18__NWPathParameters_parameters;

  if (v6)
  {
    v8 = 0;
    v9 = 0;
    v10 = &a2[v7];
    v11 = 1;
    while (1)
    {
      if (v9 >= *(v5 + 16))
      {
        __break(1u);
        goto LABEL_15;
      }

      v12 = (*(v5 + v8 + 32) + OBJC_IVAR____TtC7Network18__NWPathParameters_parameters);
      v14 = v12[1];
      v13 = v12[2];
      v69[0] = *v12;
      v69[1] = v14;
      v69[2] = v13;
      v15 = v12[6];
      v17 = v12[3];
      v16 = v12[4];
      v69[5] = v12[5];
      v69[6] = v15;
      v69[3] = v17;
      v69[4] = v16;
      v18 = v12[10];
      v20 = v12[7];
      v19 = v12[8];
      v69[9] = v12[9];
      v69[10] = v18;
      v69[7] = v20;
      v69[8] = v19;
      v65 = v12[7];
      v66 = v12[8];
      v67 = v12[9];
      v68 = v12[10];
      v61 = v12[3];
      v62 = v12[4];
      v63 = v12[5];
      v64 = v12[6];
      v21 = *(v10 + 10);
      v58 = *v12;
      v59 = v12[1];
      v60 = v12[2];
      v22 = *(v10 + 1);
      v70[0] = *v10;
      v70[1] = v22;
      v23 = *(v10 + 3);
      v24 = *(v10 + 5);
      v73 = *(v10 + 4);
      v74 = v24;
      v25 = *(v10 + 3);
      v26 = *v10;
      v27 = *(v10 + 1);
      v71 = *(v10 + 2);
      v72 = v25;
      v28 = *(v10 + 9);
      v79 = *(v10 + 10);
      v29 = *(v10 + 7);
      v30 = *(v10 + 9);
      v77 = *(v10 + 8);
      v78 = v30;
      v31 = *(v10 + 5);
      v32 = *(v10 + 7);
      v75 = *(v10 + 6);
      v76 = v32;
      v55 = v77;
      v56 = v28;
      v57 = v21;
      v51 = v73;
      v52 = v31;
      v53 = v75;
      v54 = v29;
      v47 = v26;
      v48 = v27;
      v49 = v71;
      v50 = v23;
      v46 = 1;
      sub_181A41E20(v69, v45);
      sub_181A41E20(v70, v45);
      v7 = sub_181B02888(&v47, &v46);
      v80[8] = v55;
      v80[9] = v56;
      v80[10] = v57;
      v80[4] = v51;
      v80[5] = v52;
      v80[6] = v53;
      v80[7] = v54;
      v80[0] = v47;
      v80[1] = v48;
      v80[2] = v49;
      v80[3] = v50;
      sub_181A41E7C(v80);
      v81[8] = v66;
      v81[9] = v67;
      v81[10] = v68;
      v81[4] = v62;
      v81[5] = v63;
      v81[6] = v64;
      v81[7] = v65;
      v81[0] = v58;
      v81[1] = v59;
      v81[2] = v60;
      v81[3] = v61;
      sub_181A41E7C(v81);
      if (v7)
      {
        break;
      }

      ++v9;
      v8 += 16;
      if (v6 == v9)
      {
        goto LABEL_6;
      }
    }

    swift_beginAccess();
    v38 = *(v3 + v42);
    swift_unknownObjectRetain();
    v39 = a2;
    result = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v42) = v38;
    if ((result & 1) == 0)
    {
      result = sub_181BE0B28(v38);
      v38 = result;
      *(v3 + v42) = result;
    }

    if (v9 >= v38[2])
    {
      __break(1u);
    }

    else
    {
      v40 = v38 + v8;
      v41 = *(v38 + v8 + 32);
      *(v40 + 4) = v39;
      *(v40 + 5) = a1;
      *(v3 + v42) = v38;
      swift_endAccess();

      return swift_unknownObjectRelease();
    }
  }

  else
  {
LABEL_6:

    v8 = v42;
    swift_beginAccess();
    v7 = *(v3 + v42);
    v11 = a1;
    swift_unknownObjectRetain();
    v10 = a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v42) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_15:
      v7 = sub_181B025F4(0, *(v7 + 16) + 1, 1, v7);
      *(v3 + v8) = v7;
    }

    v35 = *(v7 + 16);
    v34 = *(v7 + 24);
    if (v35 >= v34 >> 1)
    {
      v7 = sub_181B025F4((v34 > 1), v35 + 1, 1, v7);
    }

    *(v7 + 16) = v35 + 1;
    v36 = v7 + 16 * v35;
    *(v36 + 32) = v10;
    *(v36 + 40) = v11;
    *(v3 + v8) = v7;
    return swift_endAccess();
  }

  return result;
}

void *nw_context_endpoint_table_get_key(os_unfair_lock_s *a1, unsigned int *a2)
{
  some_node = nw_hash_table_get_some_node(a1);
  v3 = nw_hash_node_get_object(some_node);

  return v3;
}

uint64_t nw_parameters_get_proxy_applied(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_proxy_applied(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_proxy_applied";
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
        v12 = "nw_parameters_get_proxy_applied";
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
            v12 = "nw_parameters_get_proxy_applied";
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
        v12 = "nw_parameters_get_proxy_applied";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_proxy_applied";
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

uint64_t _nw_endpoint_get_sanitized_url_0(void *a1)
{
  v2 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URLEndpoint();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC7Network8Endpoint_type;
  v9 = a1;
  swift_beginAccess();
  sub_181A546E0(a1 + v8, v4, type metadata accessor for Endpoint.EndpointType);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_181B2BEE4(v4, v7);
    v10 = OBJC_IVAR____TtC7Network8Endpoint_storageLock;
    os_unfair_lock_lock((*&v9[OBJC_IVAR____TtC7Network8Endpoint_storageLock] + 16));
    sub_181B4E4E8(v9, 21, &v13);
    os_unfair_lock_unlock((*&v9[v10] + 16));

    v11 = v13;
    sub_181A5513C(v7, type metadata accessor for URLEndpoint);
  }

  else
  {

    sub_181A5513C(v4, type metadata accessor for Endpoint.EndpointType);
    return 0;
  }

  return v11;
}

uint64_t _nw_endpoint_get_url_scheme_0(void *a1)
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
    v10 = sub_182AD2038();
    v12 = v11;
    v13 = OBJC_IVAR____TtC7Network8Endpoint_storageLock;
    os_unfair_lock_lock((*&v9[OBJC_IVAR____TtC7Network8Endpoint_storageLock] + 16));
    sub_181AB2BF0(v9, 16, v10, v12, &v15);

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

uint64_t sub_181B4E4E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = OBJC_IVAR____TtC7Network8Endpoint_storage;
  swift_beginAccess();
  if (*(*(a1 + v6) + 16) && (sub_181A41ED0(a2), (v7 & 1) != 0))
  {
    swift_endAccess();
    swift_beginAccess();
    sub_18224FFEC(a2);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  result = sub_181B4B8F0();
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = sub_181AB284C(result, v9);

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(a1 + v6);
  *(a1 + v6) = 0x8000000000000000;
  sub_181AB36FC(v10, a2, isUniquelyReferenced_nonNull_native);
  *(a1 + v6) = v14;
  result = swift_endAccess();
  v12 = *(v14 + 16);
  if (v12)
  {
    result = sub_181A41ED0(a2);
    if (v13)
    {
      v12 = *(*(v14 + 56) + 8 * result) + 24;
      goto LABEL_10;
    }

LABEL_9:
    v12 = 0;
  }

LABEL_10:
  *a3 = v12;
  return result;
}

void *sub_181B4E648(void *__src, void *__dst, uint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      result = (HIBYTE(a4) & 0xF);
    }

    else
    {
      result = (a3 & 0xFFFFFFFFFFFFLL);
    }

    v6 = result + 1;
    if (!__OFADD__(result, 1))
    {
      goto LABEL_6;
    }

LABEL_11:
    __break(1u);
    return result;
  }

  v7 = __dst;
  result = sub_182AD3168();
  __dst = v7;
  v6 = result + 1;
  if (__OFADD__(result, 1))
  {
    goto LABEL_11;
  }

LABEL_6:

  return memcpy(__dst, __src, v6);
}

char *nw_utilities_copy_sanitized_url(CFURLRef url)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!url)
  {
    v9 = __nwlog_obj();
    *v19 = 136446210;
    *&v19[4] = "nw_utilities_copy_sanitized_url";
    v3 = _os_log_send_and_compose_impl();

    LOBYTE(rangeIncludingSeparators.location) = 16;
    v18 = 0;
    if (!__nwlog_fault(v3, &rangeIncludingSeparators, &v18))
    {
      goto LABEL_38;
    }

    if (LOBYTE(rangeIncludingSeparators.location) == 17)
    {
      v10 = __nwlog_obj();
      location = rangeIncludingSeparators.location;
      if (os_log_type_enabled(v10, rangeIncludingSeparators.location))
      {
        *v19 = 136446210;
        *&v19[4] = "nw_utilities_copy_sanitized_url";
        v12 = "%{public}s called with null absolute_url";
LABEL_36:
        _os_log_impl(&dword_181A37000, v10, location, v12, v19, 0xCu);
      }
    }

    else
    {
      if (v18 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v10 = __nwlog_obj();
        location = rangeIncludingSeparators.location;
        v16 = os_log_type_enabled(v10, rangeIncludingSeparators.location);
        if (backtrace_string)
        {
          if (v16)
          {
            *v19 = 136446466;
            *&v19[4] = "nw_utilities_copy_sanitized_url";
            *&v19[12] = 2082;
            *&v19[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v10, location, "%{public}s called with null absolute_url, dumping backtrace:%{public}s", v19, 0x16u);
          }

          free(backtrace_string);
          if (!v3)
          {
            return 0;
          }

          goto LABEL_12;
        }

        if (!v16)
        {
          goto LABEL_37;
        }

        *v19 = 136446210;
        *&v19[4] = "nw_utilities_copy_sanitized_url";
        v12 = "%{public}s called with null absolute_url, no backtrace";
        goto LABEL_36;
      }

      v10 = __nwlog_obj();
      location = rangeIncludingSeparators.location;
      if (os_log_type_enabled(v10, rangeIncludingSeparators.location))
      {
        *v19 = 136446210;
        *&v19[4] = "nw_utilities_copy_sanitized_url";
        v12 = "%{public}s called with null absolute_url, backtrace limit exceeded";
        goto LABEL_36;
      }
    }

LABEL_37:

LABEL_38:
    if (!v3)
    {
      return 0;
    }

    goto LABEL_12;
  }

  if (gLogDatapath == 1)
  {
    v13 = __nwlog_obj();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *v19 = 136446467;
      *&v19[4] = "nw_utilities_copy_sanitized_url";
      *&v19[12] = 2117;
      *&v19[14] = url;
      _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_DEBUG, "%{public}s Sanitizing URL: %{sensitive}@", v19, 0x16u);
    }
  }

  v2 = CFURLGetBytes(url, 0, 0);
  v3 = nw_calloc_type<unsigned char>(v2 + 1);
  CFURLGetBytes(url, v3, v2);
  CFURLGetByteRangeForComponent(url, kCFURLComponentQuery, &rangeIncludingSeparators);
  v4 = rangeIncludingSeparators.location;
  if (rangeIncludingSeparators.location != -1 || (CFURLGetByteRangeForComponent(url, kCFURLComponentFragment, v19), v4 = *v19, *v19 != -1))
  {
    v3[v4] = 0;
  }

  v5 = CFURLGetByteRangeForComponent(url, kCFURLComponentUser, 0);
  v6 = CFURLGetByteRangeForComponent(url, kCFURLComponentPassword, 0);
  if (v5.location != -1)
  {
    v7 = v5.location + v5.length;
    if (v6.location != -1)
    {
      v7 = v6.location + v6.length;
    }

    memmove(&v3[v5.location], &v3[v7 + 1], v2 - v7);
  }

  if (gLogDatapath == 1)
  {
    v14 = __nwlog_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *v19 = 136446466;
      *&v19[4] = "nw_utilities_copy_sanitized_url";
      *&v19[12] = 2082;
      *&v19[14] = v3;
      _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEBUG, "%{public}s Sanitized URL: %{public}s", v19, 0x16u);
    }

    if (!*v3)
    {
      goto LABEL_12;
    }
  }

  else if (!*v3)
  {
LABEL_12:
    free(v3);
    return 0;
  }

  return v3;
}

BOOL nw_connection_endpoint_report_on_nw_queue(void *a1, int a2, int a3, uint64_t a4, void *a5, void *a6)
{
  v11 = a1;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  if (v13)
  {
    nw_context_assert_queue(*(v13 + 3));
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = ___ZL41nw_connection_endpoint_report_on_nw_queuePU33objcproto22OS_nw_endpoint_handler8NSObject26nw_endpoint_handler_mode_t21nw_connection_state_tP27nw_endpoint_handler_event_sPU22objcproto11OS_nw_errorS_PU23objcproto12OS_nw_objectS__block_invoke;
    v16[3] = &unk_1E6A3B760;
    v17 = v14;
    v20 = a4;
    v18 = v11;
    v19 = v12;
    v21 = a3;
    v22 = a2;
    os_unfair_lock_lock(v14 + 34);
    ___ZL41nw_connection_endpoint_report_on_nw_queuePU33objcproto22OS_nw_endpoint_handler8NSObject26nw_endpoint_handler_mode_t21nw_connection_state_tP27nw_endpoint_handler_event_sPU22objcproto11OS_nw_errorS_PU23objcproto12OS_nw_objectS__block_invoke(v16);
    os_unfair_lock_unlock(v14 + 34);
  }

  return v14 != 0;
}

uint64_t _nw_array_contains_objectTm(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  swift_unknownObjectRetain();
  LOBYTE(a3) = a3(a1, a2);
  swift_unknownObjectRelease();
  return a3 & 1;
}

uint64_t nw_endpoint_handler_is_dry_run(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1[284] & 1;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_endpoint_handler_is_dry_run";
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
        v15 = "nw_endpoint_handler_is_dry_run";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null handler", buf, 0xCu);
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
          v15 = "nw_endpoint_handler_is_dry_run";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_endpoint_handler_is_dry_run";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null handler, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_endpoint_handler_is_dry_run";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
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

void nw_endpoint_handler_initialize_association(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1[7])
  {
    v3 = nw_context_copy_registered_endpoint(v1[5], v1[3]);
    v4 = v2[3];
    v2[3] = v3;

    v5 = nw_endpoint_copy_association_with_evaluator(v2[3], v2[4], v2[34]);
    v6 = v2[7];
    v2[7] = v5;

    v7 = v2[7];
    if (v7)
    {
      v8 = v2[4];
      v9 = *(v2 + 284);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __nw_endpoint_handler_initialize_association_block_invoke;
      v13[3] = &unk_1E6A30E88;
      v10 = v2;
      v14 = v10;
      nw_association_register_internal(v7, v8, v10, v9 & 1, 1, v13);
      v11 = nw_association_copy_current_path(v2[7], v2[4]);
      os_unfair_lock_lock(v10 + 28);
      v12 = *&v10[16]._os_unfair_lock_opaque;
      *&v10[16]._os_unfair_lock_opaque = v11;

      os_unfair_lock_unlock(v10 + 28);
    }

    *(v2 + 284) |= 4u;
  }
}

id nw_context_copy_registered_endpoint(void *a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      if ((v3[19] & 8) == 0)
      {
        dispatch_assert_queue_V2(v3[1]);
      }

      v6 = nw_context_copy_registered_endpoint_internal(v3, v5, 0);
      goto LABEL_6;
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_context_copy_registered_endpoint";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (__nwlog_fault(v9, &type, &v21))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v24 = "nw_context_copy_registered_endpoint";
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null endpoint", buf, 0xCu);
        }

LABEL_38:

        goto LABEL_39;
      }

      if (v21 != 1)
      {
        v10 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v24 = "nw_context_copy_registered_endpoint";
          _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_38;
      }

      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v17 = type;
      v18 = os_log_type_enabled(v10, type);
      if (!backtrace_string)
      {
        if (v18)
        {
          *buf = 136446210;
          v24 = "nw_context_copy_registered_endpoint";
          _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
        }

        goto LABEL_38;
      }

      if (v18)
      {
        *buf = 136446466;
        v24 = "nw_context_copy_registered_endpoint";
        v25 = 2082;
        v26 = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_26;
    }
  }

  else
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_context_copy_registered_endpoint";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (__nwlog_fault(v9, &type, &v21))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v24 = "nw_context_copy_registered_endpoint";
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null context", buf, 0xCu);
        }

        goto LABEL_38;
      }

      if (v21 != 1)
      {
        v10 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v24 = "nw_context_copy_registered_endpoint";
          _os_log_impl(&dword_181A37000, v10, v19, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_38;
      }

      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v15 = type;
      v16 = os_log_type_enabled(v10, type);
      if (!backtrace_string)
      {
        if (v16)
        {
          *buf = 136446210;
          v24 = "nw_context_copy_registered_endpoint";
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null context, no backtrace", buf, 0xCu);
        }

        goto LABEL_38;
      }

      if (v16)
      {
        *buf = 136446466;
        v24 = "nw_context_copy_registered_endpoint";
        v25 = 2082;
        v26 = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_26:

      free(backtrace_string);
    }
  }

LABEL_39:
  if (v9)
  {
    free(v9);
  }

  v6 = 0;
LABEL_6:

  return v6;
}

uint64_t nw_context_endpoint_key_hash(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    hash = _nw_endpoint_get_hash(v1);
  }

  else
  {
    hash = 0;
  }

  return hash;
}

uint64_t _s7Network8EndpointC4hashSivg_0()
{
  v1 = type metadata accessor for URLEndpoint();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC7Network8Endpoint_type;
  swift_beginAccess();
  sub_181ACC828(v0 + v7, v6, type metadata accessor for Endpoint.EndpointType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v18 = *v6;
      v19 = *(v6 + 3);
      v20 = *(v6 + 8);
      v21 = *(v6 + 18);
      v23[0] = *(v6 + 8);
      v28 = v23[0];
      v27 = v18;
      v29 = v19;
      v30 = v20;
      v31 = v21;
      v12 = HostEndpoint.hashValue.getter();
    }

    else
    {
      if (EnumCaseMultiPayload != 4)
      {
        sub_181AA91BC(v6, v3, type metadata accessor for URLEndpoint);
        v17 = URLEndpoint.hashValue.getter();
        sub_181A5513C(v3, type metadata accessor for URLEndpoint);
        return v17;
      }

      v10 = *v6;
      v11 = *(v6 + 3);
      v23[0] = *(v6 + 8);
      v28 = v23[0];
      v27 = v10;
      v29 = v11;
      v12 = SRVEndpoint.hashValue.getter();
    }

    v17 = v12;
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v27 = *v6;
      v9 = ApplicationServiceEndpoint1.hashValue.getter();
    }

    else
    {
      *&v25[0] = *v6;
      sub_182AD44E8();
      BonjourEndpoint1.hash(into:)();
      v9 = sub_182AD4558();
    }

    v17 = v9;
  }

  else
  {
    v13 = *(v6 + 1);
    v25[0] = *v6;
    v25[1] = v13;
    v15 = *v6;
    v14 = *(v6 + 1);
    v26[0] = *(v6 + 2);
    *(v26 + 12) = *(v6 + 44);
    v23[1] = v15;
    v16 = *(v6 + 2);
    v23[2] = v14;
    v24[0] = v16;
    *(v24 + 12) = *(v6 + 44);
    sub_182AD44E8();
    AddressEndpoint.hash(into:)();
    v17 = sub_182AD4558();
    sub_181AA57B4(v25);
  }

  return v17;
}

uint64_t nw_hash_table_get_some_node(os_unfair_lock_s *a1)
{
  v28 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_hash_table_get_some_node";
    v8 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v8, &type, &v22))
    {
      goto LABEL_45;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_45;
      }

      *buf = 136446210;
      v25 = "nw_hash_table_get_some_node";
      v11 = "%{public}s called with null table";
    }

    else if (v22 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v10 = type;
      v19 = os_log_type_enabled(v9, type);
      if (backtrace_string)
      {
        if (v19)
        {
          *buf = 136446466;
          v25 = "nw_hash_table_get_some_node";
          v26 = 2082;
          v27 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null table, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_45;
      }

      if (!v19)
      {
LABEL_45:
        if (v8)
        {
          free(v8);
        }

        return 0;
      }

      *buf = 136446210;
      v25 = "nw_hash_table_get_some_node";
      v11 = "%{public}s called with null table, no backtrace";
    }

    else
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_45;
      }

      *buf = 136446210;
      v25 = "nw_hash_table_get_some_node";
      v11 = "%{public}s called with null table, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0xCu);
    goto LABEL_45;
  }

  if (a1[10]._os_unfair_lock_opaque)
  {
    os_unfair_lock_opaque = a1[14]._os_unfair_lock_opaque;
    if ((os_unfair_lock_opaque & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v12 = __nwlog_obj();
  os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
  *buf = 136446210;
  v25 = "nw_hash_table_lock";
  v13 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort(v13);
  if (!result)
  {
    free(v13);
    os_unfair_lock_opaque = a1[14]._os_unfair_lock_opaque;
    if ((os_unfair_lock_opaque & 2) == 0)
    {
LABEL_5:
      if (os_unfair_lock_opaque)
      {
        v3 = a1[10]._os_unfair_lock_opaque;
        if (v3)
        {
          v4 = 0;
          v5 = a1 + 16;
          do
          {
            v6 = v5;
            while (1)
            {
              v6 = *&v6->_os_unfair_lock_opaque;
              if (!v6)
              {
                break;
              }

              if (BYTE2(v6[7]._os_unfair_lock_opaque) == 1)
              {
                goto LABEL_14;
              }
            }

            ++v4;
            v5 += 4;
          }

          while (v4 != v3);
        }

        v6 = 0;
LABEL_14:
        if ((os_unfair_lock_opaque & 2) != 0)
        {
          os_unfair_lock_unlock(a1 + 15);
        }

        return v6;
      }

      __nwlog_obj();
      *buf = 136446210;
      v25 = "nw_hash_table_get_some_node";
      v14 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v22 = 0;
      if (__nwlog_fault(v14, &type, &v22))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v15 = __nwlog_obj();
          v16 = type;
          if (!os_log_type_enabled(v15, type))
          {
            goto LABEL_50;
          }

          *buf = 136446210;
          v25 = "nw_hash_table_get_some_node";
          v17 = "%{public}s called with invalid hash table";
LABEL_49:
          _os_log_impl(&dword_181A37000, v15, v16, v17, buf, 0xCu);
          goto LABEL_50;
        }

        if (v22 != 1)
        {
          v15 = __nwlog_obj();
          v16 = type;
          if (!os_log_type_enabled(v15, type))
          {
            goto LABEL_50;
          }

          *buf = 136446210;
          v25 = "nw_hash_table_get_some_node";
          v17 = "%{public}s called with invalid hash table, backtrace limit exceeded";
          goto LABEL_49;
        }

        v20 = __nw_create_backtrace_string();
        v15 = __nwlog_obj();
        v16 = type;
        v21 = os_log_type_enabled(v15, type);
        if (!v20)
        {
          if (!v21)
          {
            goto LABEL_50;
          }

          *buf = 136446210;
          v25 = "nw_hash_table_get_some_node";
          v17 = "%{public}s called with invalid hash table, no backtrace";
          goto LABEL_49;
        }

        if (v21)
        {
          *buf = 136446466;
          v25 = "nw_hash_table_get_some_node";
          v26 = 2082;
          v27 = v20;
          _os_log_impl(&dword_181A37000, v15, v16, "%{public}s called with invalid hash table, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v20);
      }

LABEL_50:
      if (v14)
      {
        free(v14);
      }

      if ((a1[14]._os_unfair_lock_opaque & 2) != 0)
      {
        os_unfair_lock_unlock(a1 + 15);
        return 0;
      }

      return 0;
    }

LABEL_4:
    os_unfair_lock_lock(a1 + 15);
    os_unfair_lock_opaque = a1[14]._os_unfair_lock_opaque;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t _nw_endpoint_get_hash(void *a1)
{
  v1 = a1;
  v2 = _s7Network8EndpointC4hashSivg_0();

  return v2;
}

uint64_t nw_context_caches_are_shared(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3 == v4)
  {
    goto LABEL_12;
  }

  if (nw_context_get_isolate_protocol_cache(v3))
  {
    v5 = v3[152];
    if ((v5 & 4) == 0)
    {
      goto LABEL_7;
    }
  }

  if (!nw_context_get_isolate_protocol_cache(v4) || (v4[152] & 4) != 0)
  {
LABEL_12:
    v6 = 1;
    goto LABEL_13;
  }

  v5 = v3[152];
LABEL_7:
  if ((v5 & 0x20) != 0 && *(v4 + 5) == v3 || (v4[152] & 0x20) != 0 && *(v3 + 5) == v4)
  {
    goto LABEL_12;
  }

  v6 = 0;
LABEL_13:

  return v6;
}

id nw_parameters_copy_path_parameters(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_copy_path_parameters(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_copy_path_parameters";
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
        v12 = "nw_parameters_copy_path_parameters";
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
            v12 = "nw_parameters_copy_path_parameters";
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
        v12 = "nw_parameters_copy_path_parameters";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_copy_path_parameters";
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

id _nw_parameters_copy_path_parameters(void *a1)
{
  v1 = a1;
  sub_1821F3074(v12);

  v2 = type metadata accessor for __NWPathParameters();
  v3 = objc_allocWithZone(v2);
  v4 = &v3[OBJC_IVAR____TtC7Network18__NWPathParameters_parameters];
  v5 = v12[9];
  *(v4 + 8) = v12[8];
  *(v4 + 9) = v5;
  *(v4 + 10) = v12[10];
  v6 = v12[5];
  *(v4 + 4) = v12[4];
  *(v4 + 5) = v6;
  v7 = v12[7];
  *(v4 + 6) = v12[6];
  *(v4 + 7) = v7;
  v8 = v12[1];
  *v4 = v12[0];
  *(v4 + 1) = v8;
  v9 = v12[3];
  *(v4 + 2) = v12[2];
  *(v4 + 3) = v9;
  v11.receiver = v3;
  v11.super_class = v2;
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t sub_181B5048C()
{
  v1 = v0;
  v2 = *(v0 + 24);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = v2;
  v4 = *(v1 + 16);
  swift_unknownObjectRetain();
  if (v4)
  {
    v5 = swift_unknownObjectRetain();
    options_copy = nw_protocol_definition_get_options_copy(v5);
    if (options_copy)
    {
      v7 = options_copy(v2, v4);
      swift_unknownObjectRelease();
      *(v3 + 16) = v7;
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return v3;
}

uint64_t nw_proxy_copy_options(void *a1, uint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!a2)
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_proxy_copy_options";
    v13 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (__nwlog_fault(v13, &type, &v22))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v14 = __nwlog_obj();
        v15 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          v25 = "nw_proxy_copy_options";
          _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null existing_handle", buf, 0xCu);
        }
      }

      else if (v22 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v14 = __nwlog_obj();
        v19 = type;
        v20 = os_log_type_enabled(v14, type);
        if (backtrace_string)
        {
          if (v20)
          {
            *buf = 136446466;
            v25 = "nw_proxy_copy_options";
            v26 = 2082;
            v27 = backtrace_string;
            _os_log_impl(&dword_181A37000, v14, v19, "%{public}s called with null existing_handle, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_27;
        }

        if (v20)
        {
          *buf = 136446210;
          v25 = "nw_proxy_copy_options";
          _os_log_impl(&dword_181A37000, v14, v19, "%{public}s called with null existing_handle, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v14 = __nwlog_obj();
        v21 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          v25 = "nw_proxy_copy_options";
          _os_log_impl(&dword_181A37000, v14, v21, "%{public}s called with null existing_handle, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_27:
    if (v13)
    {
      free(v13);
    }

    v4 = 0;
    goto LABEL_8;
  }

  v4 = malloc_type_calloc(1uLL, 0x10uLL, 0xD5175950uLL);
  if (!v4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    *buf = 136446722;
    v25 = "nw_proxy_copy_options";
    v26 = 2048;
    v27 = 1;
    v28 = 2048;
    v29 = 16;
    v6 = _os_log_send_and_compose_impl();

    result = __nwlog_should_abort(v6);
    if (result)
    {
      goto LABEL_30;
    }

    free(v6);
  }

  v8 = _Block_copy(*a2);
  v9 = *v4;
  *v4 = v8;

  v10 = *(a2 + 8);
  if (!v10)
  {
LABEL_8:

    return v4;
  }

  v11 = strdup(v10);
  if (v11)
  {
LABEL_7:
    v4[1] = v11;
    goto LABEL_8;
  }

  v16 = __nwlog_obj();
  os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
  *buf = 136446210;
  v25 = "strict_strdup";
  v17 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v17);
  if (!result)
  {
    free(v17);
    v11 = 0;
    goto LABEL_7;
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t nw_protocol_definition_get_options_copy(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1[12];
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_protocol_definition_get_options_copy";
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
        v15 = "nw_protocol_definition_get_options_copy";
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
          v15 = "nw_protocol_definition_get_options_copy";
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
        v15 = "nw_protocol_definition_get_options_copy";
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
        v15 = "nw_protocol_definition_get_options_copy";
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

uint64_t _nw_endpoint_set_context(char *a1, uint64_t a2)
{
  *&a1[OBJC_IVAR____TtC7Network8Endpoint_context] = a2;
  v2 = a1;
  swift_unknownObjectRetain();

  return swift_unknownObjectRelease();
}

void nw_endpoint_set_context(void *a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v23 = "nw_endpoint_set_context";
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
        v23 = "nw_endpoint_set_context";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null endpoint", buf, 0xCu);
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
          v23 = "nw_endpoint_set_context";
          v24 = 2082;
          v25 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
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
        v23 = "nw_endpoint_set_context";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v23 = "nw_endpoint_set_context";
        _os_log_impl(&dword_181A37000, v8, v18, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (v4)
  {
    _nw_endpoint_set_context(v3, v4);
    goto LABEL_4;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v23 = "nw_endpoint_set_context";
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
      v23 = "nw_endpoint_set_context";
      _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null context", buf, 0xCu);
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
      v23 = "nw_endpoint_set_context";
      _os_log_impl(&dword_181A37000, v8, v19, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
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
      v23 = "nw_endpoint_set_context";
      _os_log_impl(&dword_181A37000, v8, v16, "%{public}s called with null context, no backtrace", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v17)
  {
    *buf = 136446466;
    v23 = "nw_endpoint_set_context";
    v24 = 2082;
    v25 = v15;
    _os_log_impl(&dword_181A37000, v8, v16, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v15);
  if (v7)
  {
    goto LABEL_39;
  }

LABEL_4:
}

void nw_endpoint_set_is_registered(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    _nw_endpoint_set_is_registered(v1, 1);
    goto LABEL_3;
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_endpoint_set_is_registered";
  v4 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v4, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v14 = "nw_endpoint_set_is_registered";
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null endpoint", buf, 0xCu);
      }
    }

    else if (v11 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v5 = __nwlog_obj();
      v8 = type;
      v9 = os_log_type_enabled(v5, type);
      if (backtrace_string)
      {
        if (v9)
        {
          *buf = 136446466;
          v14 = "nw_endpoint_set_is_registered";
          v15 = 2082;
          v16 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v8, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v9)
      {
        *buf = 136446210;
        v14 = "nw_endpoint_set_is_registered";
        _os_log_impl(&dword_181A37000, v5, v8, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v5 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v14 = "nw_endpoint_set_is_registered";
        _os_log_impl(&dword_181A37000, v5, v10, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v4)
  {
    free(v4);
  }

LABEL_3:
}

void sub_181B51430(void *a1, char a2)
{
  v3 = a1;
  v4 = *&v3[OBJC_IVAR____TtC7Network8Endpoint_flags];
  if (a2)
  {
    if ((v4 & 0x10) != 0)
    {
      goto LABEL_7;
    }

    v5 = v4 | 0x10;
  }

  else
  {
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    v5 = v4 & 0xFFEF;
  }

  *&v3[OBJC_IVAR____TtC7Network8Endpoint_flags] = v5;
LABEL_7:
}

uint64_t nw_path_get_client_id(void *a1, unsigned __int8 *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    client_id = _nw_path_get_client_id(v3, a2);
    goto LABEL_3;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  v18 = "nw_path_get_client_id";
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
        v18 = "nw_path_get_client_id";
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
          v18 = "nw_path_get_client_id";
          v19 = 2082;
          v20 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v13)
      {
        *buf = 136446210;
        v18 = "nw_path_get_client_id";
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
        v18 = "nw_path_get_client_id";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v8)
  {
    free(v8);
  }

  client_id = 0;
LABEL_3:

  return client_id;
}

id nw_context_copy_proxy_configs(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ((v1[152] & 0x48) == 0x40 && !dispatch_workloop_is_current())
    {
      os_unfair_lock_lock(v2 + 22);
      v6 = *(v2 + 7);
      if (v6 && !_nw_array_is_empty(v6))
      {
        v5 = *(v2 + 7);
      }

      else
      {
        v7 = nw_context_copy_globals_context(v2);
        v5 = *(v7 + 7);
      }

      os_unfair_lock_unlock(v2 + 22);
    }

    else
    {
      v3 = *(v2 + 7);
      if (v3 && !_nw_array_is_empty(v3))
      {
        v5 = *(v2 + 7);
      }

      else
      {
        v4 = nw_context_copy_globals_context(v2);
        v5 = *(v4 + 7);
      }
    }

    goto LABEL_13;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v20 = "nw_context_copy_proxy_configs";
  v10 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v17 = 0;
  if (__nwlog_fault(v10, &type, &v17))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v20 = "nw_context_copy_proxy_configs";
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null context", buf, 0xCu);
      }
    }

    else if (v17 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v11 = __nwlog_obj();
      v14 = type;
      v15 = os_log_type_enabled(v11, type);
      if (backtrace_string)
      {
        if (v15)
        {
          *buf = 136446466;
          v20 = "nw_context_copy_proxy_configs";
          v21 = 2082;
          v22 = backtrace_string;
          _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_30;
      }

      if (v15)
      {
        *buf = 136446210;
        v20 = "nw_context_copy_proxy_configs";
        _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null context, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v11 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v20 = "nw_context_copy_proxy_configs";
        _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_30:
  if (v10)
  {
    free(v10);
  }

  v5 = 0;
LABEL_13:

  return v5;
}

uint64_t nw_endpoint_get_device_id(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    device_id = _nw_endpoint_get_device_id(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_get_device_id";
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
        v16 = "nw_endpoint_get_device_id";
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
          v16 = "nw_endpoint_get_device_id";
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
        v16 = "nw_endpoint_get_device_id";
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
        v16 = "nw_endpoint_get_device_id";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  device_id = 0;
LABEL_3:

  return device_id;
}

uint64_t nw_path_struct_size_for_endpoint_and_metadata(void *a1, unint64_t *a2, char a3)
{
  v50 = *MEMORY[0x1E69E9840];
  v5 = a1;
  type = nw_endpoint_get_type(v5);
  v7 = nw_endpoint_copy_txt_record(v5);
  v8 = 28;
  if (type <= nw_endpoint_type_bonjour_service)
  {
    if (type != nw_endpoint_type_address)
    {
      if (type != nw_endpoint_type_host)
      {
        if (type != nw_endpoint_type_bonjour_service)
        {
          goto LABEL_53;
        }

        bonjour_service_name = nw_endpoint_get_bonjour_service_name(v5);
        bonjour_service_type = nw_endpoint_get_bonjour_service_type(v5);
        bonjour_service_domain = nw_endpoint_get_bonjour_service_domain(v5);
        if (bonjour_service_name)
        {
          v12 = strlen(bonjour_service_name) + 9;
          if (bonjour_service_type)
          {
            goto LABEL_7;
          }
        }

        else
        {
          v12 = 9;
          if (bonjour_service_type)
          {
LABEL_7:
            v13 = strlen(bonjour_service_type) + 1;
            if (bonjour_service_domain)
            {
              goto LABEL_8;
            }

            goto LABEL_38;
          }
        }

        v13 = 1;
        if (bonjour_service_domain)
        {
LABEL_8:
          v14 = strlen(bonjour_service_domain) + 1;
          if (v7)
          {
LABEL_9:
            isa = v7[2].isa;
LABEL_40:
            v32 = v13 + v12;
            goto LABEL_48;
          }

LABEL_39:
          isa = 0;
          goto LABEL_40;
        }

LABEL_38:
        v14 = 1;
        if (v7)
        {
          goto LABEL_9;
        }

        goto LABEL_39;
      }

      goto LABEL_20;
    }

    address = nw_endpoint_get_address(v5);
    if (a2)
    {
      if (address)
      {
        sa_len = address->sa_len;
      }

      else
      {
        sa_len = 0;
      }

      *a2 = sa_len;
    }

    if (address)
    {
      v28 = address->sa_len;
      if (!v7)
      {
        goto LABEL_79;
      }
    }

    else
    {
      v28 = 0;
      if (!v7)
      {
LABEL_79:
        if (a2)
        {
          goto LABEL_49;
        }

        goto LABEL_50;
      }
    }

    v28 = v7[2].isa + 28;
    goto LABEL_79;
  }

  if (type == nw_endpoint_type_url)
  {
    url = nw_endpoint_get_url(v5);
    if (url)
    {
      v28 = strlen(url) + 9;
      if (a2)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v28 = 9;
      if (a2)
      {
        goto LABEL_49;
      }
    }

    goto LABEL_50;
  }

  if (type != (nw_endpoint_type_url|nw_endpoint_type_address))
  {
    if (type != (nw_endpoint_type_url|nw_endpoint_type_host))
    {
      goto LABEL_53;
    }

    application_service_alias = nw_endpoint_get_application_service_alias(v5);
    application_service_name = nw_endpoint_get_application_service_name(v5);
    *uu = 0;
    v49 = 0;
    nw_endpoint_get_service_identifier(v5, uu);
    device_name = nw_endpoint_get_device_name(v5);
    device_model = nw_endpoint_get_device_model(v5);
    contact_id = nw_endpoint_get_contact_id(v5);
    if (application_service_alias)
    {
      v21 = strlen(application_service_alias) + 33;
      if (application_service_name)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v21 = 33;
      if (application_service_name)
      {
LABEL_15:
        v22 = strlen(application_service_name) + 1;
        if (device_name)
        {
          goto LABEL_16;
        }

        goto LABEL_43;
      }
    }

    v22 = 1;
    if (device_name)
    {
LABEL_16:
      v23 = strlen(device_name) + 1;
      if (device_model)
      {
        goto LABEL_17;
      }

      goto LABEL_44;
    }

LABEL_43:
    v23 = 1;
    if (device_model)
    {
LABEL_17:
      v24 = strlen(device_model) + 1;
      if (contact_id)
      {
        goto LABEL_18;
      }

      goto LABEL_45;
    }

LABEL_44:
    v24 = 1;
    if (contact_id)
    {
LABEL_18:
      v14 = strlen(contact_id) + 1;
      if (v7)
      {
LABEL_19:
        isa = v7[2].isa;
LABEL_47:
        v32 = v21 + v22 + v23 + v24;
LABEL_48:
        v28 = isa + v14 + v32;
        if (!a2)
        {
          goto LABEL_50;
        }

        goto LABEL_49;
      }

LABEL_46:
      isa = 0;
      goto LABEL_47;
    }

LABEL_45:
    v14 = 1;
    if (v7)
    {
      goto LABEL_19;
    }

    goto LABEL_46;
  }

LABEL_20:
  v25 = v5;
  if (v25 && (v26 = v25, domain_for_policy = _nw_endpoint_get_domain_for_policy(v25), v26, domain_for_policy))
  {
    v28 = strlen(domain_for_policy) + 9;
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v28 = 9;
    if (!v7)
    {
LABEL_23:
      if (!a2)
      {
        goto LABEL_50;
      }

LABEL_49:
      *a2 = v28;
      goto LABEL_50;
    }
  }

  v28 += v7[2].isa;
  if (a2)
  {
    goto LABEL_49;
  }

LABEL_50:
  if (v28 <= 0x1C)
  {
    v8 = 28;
  }

  else
  {
    v8 = v28;
  }

LABEL_53:

  v33 = v8 + 5;
  if (a3)
  {
    *uu = 0;
    v49 = 0;
    nw_endpoint_get_agent_identifier(v5, uu);
    *v46 = 0;
    v47 = 0;
    nw_endpoint_get_preferred_agent_identifier(v5, v46);
    if (!uuid_is_null(uu))
    {
      v33 = v8 + 27;
      if ((a3 & 2) == 0)
      {
        goto LABEL_62;
      }

      goto LABEL_58;
    }

    if (!uuid_is_null(v46))
    {
      v33 = v8 + 27;
    }
  }

  if ((a3 & 2) == 0)
  {
    goto LABEL_62;
  }

LABEL_58:
  device_id = nw_endpoint_get_device_id(v5);
  if (device_id)
  {
    v35 = strlen(device_id) + 5;
  }

  else
  {
    v35 = 0;
  }

  v33 += v35;
LABEL_62:
  if ((a3 & 4) != 0)
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v36 = nw_endpoint_copy_public_keys(v5);
    v37 = [v36 countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v37)
    {
      v38 = *v42;
      do
      {
        v39 = 0;
        do
        {
          if (*v42 != v38)
          {
            objc_enumerationMutation(v36);
          }

          v33 += [*(*(&v41 + 1) + 8 * v39++) length] + 5;
        }

        while (v37 != v39);
        v37 = [v36 countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v37);
    }
  }

  return v33;
}

uint64_t sub_181B52244()
{
  v1 = type metadata accessor for URLEndpoint();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC7Network8Endpoint_type;
  swift_beginAccess();
  sub_181ACC828(v0 + v7, v6, type metadata accessor for Endpoint.EndpointType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v12 = *(v6 + 1);
      v13 = *(v6 + 2);
      v14 = *(v6 + 3);
      v15 = *(v6 + 4);
      v16 = *(v6 + 20);
      v17 = v6[42];
      if (v12)
      {
        v10 = *(v12 + 32);

        sub_181AD1DE4(v13, v14, v15, v16, v17);
        return v10;
      }

      sub_181AD1DE4(v13, v14, v15, v16, v17);
      return 0;
    }

    v9 = *(*v6 + 24);

    if (v9)
    {
      v10 = *(v9 + 32);

LABEL_9:

      return v10;
    }

LABEL_16:

    return 0;
  }

  if (EnumCaseMultiPayload == 3 || EnumCaseMultiPayload == 4)
  {
    v11 = *(v6 + 1);
    if (v11)
    {
      v10 = *(v11 + 32);

      goto LABEL_9;
    }

    goto LABEL_16;
  }

  sub_181AA91BC(v6, v3, type metadata accessor for URLEndpoint);
  v18 = *(v3 + 1);
  if (v18)
  {
    v10 = *(v18 + 32);
  }

  else
  {
    v10 = 0;
  }

  sub_181A5513C(v3, type metadata accessor for URLEndpoint);
  return v10;
}

uint64_t nw_endpoint_copy_public_keys(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_endpoint_copy_public_keys(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_copy_public_keys";
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
        v16 = "nw_endpoint_copy_public_keys";
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
          v16 = "nw_endpoint_copy_public_keys";
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
        v16 = "nw_endpoint_copy_public_keys";
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
        v16 = "nw_endpoint_copy_public_keys";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
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

Swift::String __swiftcall HostEndpoint.descriptionInternal(redacted:)(Swift::Bool redacted)
{
  v18 = *(v1 + 16);
  v19 = *(v1 + 24);

  MEMORY[0x1865D9CA0](58, 0xE100000000000000);
  v3 = sub_182AD41B8();
  v5 = v4;

  MEMORY[0x1865D9CA0](v3, v5);

  v6 = v18;
  v7 = v19;
  if (redacted)
  {
    v8 = swift_slowAlloc();
    v9 = sub_182AD3048();
    __nwlog_create_hash_from_private_string((v9 + 32), v8);

    v10 = sub_182AD3158();
    v12 = v11;
    MEMORY[0x1865DF520](v8, -1, -1);

    MEMORY[0x1865D9CA0](v10, v12);

    MEMORY[0x1865D9CA0](58, 0xE100000000000000);

    v13 = sub_182AD41B8();
    v15 = v14;

    MEMORY[0x1865D9CA0](v13, v15);

    v6 = 0x656D616E74736F48;
    v7 = 0xE900000000000023;
  }

  v16 = v7;
  result._object = v16;
  result._countAndFlagsBits = v6;
  return result;
}

uint64_t nw_parameters_get_sensitive_redacted(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_parameters_copy_context(v1);
    v4 = v3;
    if (v3 && (v5 = v3[33], (v5 - 2) >= 2))
    {
      if (v5 != 1)
      {

LABEL_16:
        v7 = 1;
LABEL_17:

        goto LABEL_18;
      }
    }

    else
    {
      if (nwlog_get_sensitive_redacted::onceToken != -1)
      {
        dispatch_once(&nwlog_get_sensitive_redacted::onceToken, &__block_literal_global_83);
      }

      v6 = nwlog_get_sensitive_redacted::sensitiveRedacted;

      if (v6)
      {
        goto LABEL_16;
      }
    }

    if (_nw_parameters_get_internal_attribution(v2) - 1 > 1)
    {
      v7 = 0;
    }

    else
    {
      if (nwlog_get_sensitive_redacted::onceToken != -1)
      {
        dispatch_once(&nwlog_get_sensitive_redacted::onceToken, &__block_literal_global_83);
      }

      v7 = nwlog_get_sensitive_redacted::sensitiveRedacted;
    }

    goto LABEL_17;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v20 = "nw_parameters_get_sensitive_redacted";
  v10 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v17 = 0;
  if (__nwlog_fault(v10, &type, &v17))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v20 = "nw_parameters_get_sensitive_redacted";
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null parameters", buf, 0xCu);
      }
    }

    else if (v17 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v11 = __nwlog_obj();
      v14 = type;
      v15 = os_log_type_enabled(v11, type);
      if (backtrace_string)
      {
        if (v15)
        {
          *buf = 136446466;
          v20 = "nw_parameters_get_sensitive_redacted";
          v21 = 2082;
          v22 = backtrace_string;
          _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_35;
      }

      if (v15)
      {
        *buf = 136446210;
        v20 = "nw_parameters_get_sensitive_redacted";
        _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v11 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v20 = "nw_parameters_get_sensitive_redacted";
        _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_35:
  if (v10)
  {
    free(v10);
  }

  v7 = 1;
LABEL_18:

  return v7 & 1;
}

const void *_nw_endpoint_get_signature(char *a1, size_t *a2)
{
  v3 = *&a1[OBJC_IVAR____TtC7Network8Endpoint_signature];
  v4 = a1;
  v5 = v4;
  if (v3)
  {
    v6 = swift_unknownObjectRetain();
    *a2 = xpc_data_get_length(v6);
    bytes_ptr = xpc_data_get_bytes_ptr(v3);

    swift_unknownObjectRelease();
    return bytes_ptr;
  }

  else
  {
    *a2 = 0;

    return 0;
  }
}

unint64_t sub_181B52D70()
{
  v1 = type metadata accessor for URLEndpoint();
  MEMORY[0x1EEE9AC00](v1);
  v3 = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC7Network8Endpoint_type;
  swift_beginAccess();
  sub_181ACC828(v0 + v7, v6, type metadata accessor for Endpoint.EndpointType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v14 = *(v6 + 3);
      v15 = *(v6 + 8);
      v16 = *(v6 + 18);
      *v27 = *v6;
      v25[0] = *(v6 + 8);
      *&v27[8] = v25[0];
      *&v27[24] = v14;
      LODWORD(v28[0]) = v15;
      WORD2(v28[0]) = v16;
      countAndFlagsBits = HostEndpoint.descriptionInternal(redacted:)(1)._countAndFlagsBits;
    }

    else if (EnumCaseMultiPayload == 4)
    {

      return 0;
    }

    else
    {
      sub_181AA91BC(v6, v3, type metadata accessor for URLEndpoint);
      v17 = sub_182AD1F98();
      v18 = CFURLGetBytes(v17, 0, 0);
      MEMORY[0x1EEE9AC00](v18);
      *&v25[-1] = v17;
      sub_182AD30D8();

      v19 = swift_slowAlloc();
      v20 = sub_182AD3048();
      __nwlog_create_hash_from_private_string((v20 + 32), v19);

      v21 = sub_182AD3158();
      v23 = v22;
      MEMORY[0x1865DF520](v19, -1, -1);

      *v27 = 592204373;
      *&v27[8] = 0xE400000000000000;
      MEMORY[0x1865D9CA0](v21, v23);

      countAndFlagsBits = *v27;
      sub_181A5513C(v3, type metadata accessor for URLEndpoint);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    *v27 = *v6;
    if (EnumCaseMultiPayload == 1)
    {
      v9 = ApplicationServiceEndpoint1.descriptionInternal(redacted:)(1)._countAndFlagsBits;
    }

    else
    {
      v9 = BonjourEndpoint1.descriptionInternal(redacted:)(1)._countAndFlagsBits;
    }

    countAndFlagsBits = v9;
  }

  else
  {
    v11 = *(v6 + 1);
    *v27 = *v6;
    *&v27[16] = v11;
    v13 = *v6;
    v12 = *(v6 + 1);
    v28[0] = *(v6 + 2);
    *(v28 + 12) = *(v6 + 44);
    v25[1] = v13;
    v25[2] = v12;
    v26[0] = *(v6 + 2);
    *(v26 + 12) = *(v6 + 44);
    countAndFlagsBits = sub_181B84248();
    sub_181AA57B4(v27);
  }

  return countAndFlagsBits;
}

uint64_t __nwlog_create_hash_from_private_string(const char *a1, char *a2)
{
  v4 = strlen(a1);
  __nwlog_salted_hash(a1, v4, a2);
  return 1;
}

id sub_181B5313C(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_182AD2F58();

  return v5;
}

void _nw_endpoint_get_agent_identifier_0(char *a1, unsigned __int8 *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *&a1[OBJC_IVAR____TtC7Network8Endpoint_flags];
  v4 = a1;
  if (v3 & 0x100) != 0 || (sub_181B532CC(&v7), (v9))
  {
    v7 = 0;
    v8 = 0;
    v5 = &v7;
  }

  else
  {
    v6[0] = v7;
    v6[1] = v8;
    v5 = v6;
  }

  uuid_copy(a2, v5);
}

uint64_t sub_181B532CC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for URLEndpoint();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC7Network8Endpoint_type;
  swift_beginAccess();
  sub_181ACC828(v1 + v9, v8, type metadata accessor for Endpoint.EndpointType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v18 = *(v8 + 1);
      v19 = *(v8 + 2);
      v20 = *(v8 + 3);
      v21 = *(v8 + 4);
      v22 = *(v8 + 20);
      v23 = v8[42];
      if (v18)
      {
        v24 = *(v18 + 48);
        v25 = *(v18 + 56);
        v26 = *(v18 + 64);

        result = sub_181AD1DE4(v19, v20, v21, v22, v23);
        *a1 = v24;
        *(a1 + 8) = v25;
        *(a1 + 16) = v26;
        return result;
      }

      result = sub_181AD1DE4(v19, v20, v21, v22, v23);
      goto LABEL_17;
    }

    v11 = *(*v8 + 24);

    if (v11)
    {
      v12 = *(v11 + 48);
      v13 = *(v11 + 56);
      v14 = *(v11 + 64);

      *a1 = v12;
LABEL_9:
      *(a1 + 8) = v13;
      *(a1 + 16) = v14;
      return result;
    }

LABEL_16:

LABEL_17:
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;
    return result;
  }

  if (EnumCaseMultiPayload == 3 || EnumCaseMultiPayload == 4)
  {
    v16 = *(v8 + 1);
    if (v16)
    {
      v17 = *(v16 + 48);
      v13 = *(v16 + 56);
      v14 = *(v16 + 64);

      *a1 = v17;
      goto LABEL_9;
    }

    goto LABEL_16;
  }

  sub_181AA91BC(v8, v5, type metadata accessor for URLEndpoint);
  v27 = *(v5 + 1);
  if (v27)
  {
    v28 = *(v27 + 48);
    v29 = *(v27 + 64);
  }

  else
  {
    v28 = 0uLL;
    v29 = 1;
  }

  *a1 = v28;
  *(a1 + 16) = v29;
  return sub_181A5513C(v5, type metadata accessor for URLEndpoint);
}

uint64_t sub_181B53584(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC7Network8Endpoint_storageLock);
  os_unfair_lock_lock(v3 + 4);
  v4 = OBJC_IVAR____TtC7Network8Endpoint_storage;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (*(v5 + 16) && (v6 = sub_181A41ED0(a1), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
    swift_endAccess();
    v9 = v8 + 24;
  }

  else
  {
    swift_endAccess();
    v9 = 0;
  }

  os_unfair_lock_unlock(v3 + 4);
  return v9;
}

uint64_t _nw_endpoint_get_device_idTm(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  v5 = a1;
  v6 = a2();
  v8 = v7;
  v9 = OBJC_IVAR____TtC7Network8Endpoint_storageLock;
  os_unfair_lock_lock((*&v5[OBJC_IVAR____TtC7Network8Endpoint_storageLock] + 16));
  sub_181AB2BF0(v5, a3, v6, v8, &v11);

  os_unfair_lock_unlock((*&v5[v9] + 16));

  return v11;
}

unint64_t sub_181B536D4(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_181B53718()
{
  v1 = sub_182AD3008();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = type metadata accessor for URLEndpoint();
  MEMORY[0x1EEE9AC00](v2);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = OBJC_IVAR____TtC7Network8Endpoint_type;
  swift_beginAccess();
  sub_181ACC828(v0 + v8, v7, type metadata accessor for Endpoint.EndpointType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v12 = *(*v7 + 80);

      goto LABEL_15;
    }

    if (EnumCaseMultiPayload != 3)
    {
LABEL_12:
      sub_181A5513C(v7, type metadata accessor for Endpoint.EndpointType);
      v15 = *(v0 + OBJC_IVAR____TtC7Network8Endpoint_parentEndpoint);
      if (!v15)
      {
        return 0;
      }

      v16 = v15;
      v12 = sub_181B53718();

      return v12;
    }

LABEL_11:
    v12 = v7[2];

LABEL_15:

    return v12;
  }

  if (EnumCaseMultiPayload == 4)
  {
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload != 5)
  {
    goto LABEL_12;
  }

  sub_181AA91BC(v7, v4, type metadata accessor for URLEndpoint);
  v10 = sub_182AD1FE8();
  if (v11)
  {
    v18[1] = v10;
    v18[2] = v11;
    sub_182AD2FE8();
    sub_18217E730();
    v12 = sub_182AD2FB8();
    v14 = v13;

    if (!v14)
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  sub_181A5513C(v4, type metadata accessor for URLEndpoint);
  return v12;
}

uint64_t _nw_endpoint_get_tracker_owner(void *a1)
{
  v1 = a1;
  v2 = sub_181B53584(20);

  return v2;
}

void nw_endpoint_handler_get_client_id(void *a1, unsigned __int8 *a2)
{
  v75 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v30 = __nwlog_obj();
    *buf = 136446210;
    v58 = "nw_endpoint_handler_get_client_id";
    v31 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v55 = 0;
    if (__nwlog_fault(v31, &type, &v55))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v32 = __nwlog_obj();
        v33 = type;
        if (os_log_type_enabled(v32, type))
        {
          *buf = 136446210;
          v58 = "nw_endpoint_handler_get_client_id";
          _os_log_impl(&dword_181A37000, v32, v33, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v55 == 1)
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
            v58 = "nw_endpoint_handler_get_client_id";
            v59 = 2082;
            v60 = backtrace_string;
            _os_log_impl(&dword_181A37000, v32, v35, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_95;
        }

        if (v36)
        {
          *buf = 136446210;
          v58 = "nw_endpoint_handler_get_client_id";
          _os_log_impl(&dword_181A37000, v32, v35, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v32 = __nwlog_obj();
        v51 = type;
        if (os_log_type_enabled(v32, type))
        {
          *buf = 136446210;
          v58 = "nw_endpoint_handler_get_client_id";
          _os_log_impl(&dword_181A37000, v32, v51, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_95:
    if (v31)
    {
      free(v31);
    }

    goto LABEL_66;
  }

  if (*(v3 + 29) != 2 || !nw_endpoint_flow_should_not_use_path(v3[33]))
  {
    if (v4[7])
    {
      nw_path_get_client_id(v4[8], a2);
      goto LABEL_66;
    }

    if ((*(v4 + 284) & 0x20) != 0)
    {
      if (nw_endpoint_handler_get_logging_disabled(v4))
      {
        goto LABEL_66;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v10 = gconnectionLogObj;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        id_string = nw_endpoint_handler_get_id_string(v4);
        v38 = nw_endpoint_handler_dry_run_string(v4);
        v39 = nw_endpoint_handler_copy_endpoint(v4);
        logging_description = nw_endpoint_get_logging_description(v39);
        v41 = nw_endpoint_handler_state_string(v4);
        v42 = nw_endpoint_handler_mode_string(v4);
        v43 = nw_endpoint_handler_copy_current_path(v4);
        *buf = 136447746;
        v58 = "nw_endpoint_handler_get_client_id";
        v59 = 2082;
        v60 = id_string;
        v61 = 2082;
        v62 = v38;
        v63 = 2082;
        v64 = logging_description;
        v65 = 2082;
        v66 = v41;
        v67 = 2082;
        v68 = v42;
        v69 = 2114;
        v70 = v43;
        _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Failed to find association, no client ID", buf, 0x48u);
      }

      goto LABEL_58;
    }

    if ((*(v4 + 284) & 0x40) != 0)
    {
      goto LABEL_66;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v10 = gconnectionLogObj;
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
LABEL_58:

      goto LABEL_66;
    }

    if (*(v4 + 284))
    {
      v11 = "dry-run ";
    }

    else
    {
      v11 = "";
    }

    v12 = nw_endpoint_handler_copy_endpoint(v4);
    v13 = v12;
    if (v12)
    {
      v14 = _nw_endpoint_get_logging_description(v12);
    }

    else
    {
      v14 = "<NULL>";
    }

    v15 = *(v4 + 30);
    if (v15 > 5)
    {
      v16 = "unknown-state";
    }

    else
    {
      v16 = off_1E6A31048[v15];
    }

    v17 = v4;
    v18 = v17;
    v19 = *(v4 + 29);
    v53 = v11;
    if (v19 > 2)
    {
      switch(v19)
      {
        case 3:
          v20 = "proxy";
          goto LABEL_57;
        case 4:
          v20 = "fallback";
          goto LABEL_57;
        case 5:
          v20 = "transform";
          goto LABEL_57;
      }
    }

    else
    {
      switch(v19)
      {
        case 0:
          v20 = "path";
          goto LABEL_57;
        case 1:
          v20 = "resolver";
          goto LABEL_57;
        case 2:
          v20 = nw_endpoint_flow_mode_string(*(v17 + 33));
LABEL_57:

          v26 = v18;
          os_unfair_lock_lock(v18 + 28);
          v27 = v26[8];
          os_unfair_lock_unlock(v18 + 28);

          *buf = 136447746;
          v58 = "nw_endpoint_handler_get_client_id";
          v59 = 2082;
          v60 = v4 + 23;
          v61 = 2082;
          v62 = v53;
          v63 = 2082;
          v64 = v14;
          v65 = 2082;
          v66 = v16;
          v67 = 2082;
          v68 = v20;
          v69 = 2114;
          v70 = v27;
          _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Failed to find association, no client ID", buf, 0x48u);

          goto LABEL_58;
      }
    }

    v20 = "unknown-mode";
    goto LABEL_57;
  }

  uuid_generate_random(a2);
  if ((*(v4 + 284) & 0x20) != 0)
  {
    if (nw_endpoint_handler_get_logging_disabled(v4))
    {
      goto LABEL_66;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v5 = gconnectionLogObj;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v44 = nw_endpoint_handler_get_id_string(v4);
      v45 = nw_endpoint_handler_dry_run_string(v4);
      v46 = nw_endpoint_handler_copy_endpoint(v4);
      v47 = nw_endpoint_get_logging_description(v46);
      v48 = nw_endpoint_handler_state_string(v4);
      v49 = nw_endpoint_handler_mode_string(v4);
      v50 = nw_endpoint_handler_copy_current_path(v4);
      *buf = 136448258;
      v58 = "nw_endpoint_handler_get_client_id";
      v59 = 2082;
      v60 = v44;
      v61 = 2082;
      v62 = v45;
      v63 = 2082;
      v64 = v47;
      v65 = 2082;
      v66 = v48;
      v67 = 2082;
      v68 = v49;
      v69 = 2114;
      v70 = v50;
      v71 = 1042;
      v72 = 16;
      v73 = 2098;
      v74 = a2;
      _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Generated client ID %{public,uuid_t}.16P for non-path based handler", buf, 0x58u);
    }

    goto LABEL_65;
  }

  if ((*(v4 + 284) & 0x40) == 0)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v5 = gconnectionLogObj;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      goto LABEL_65;
    }

    if (*(v4 + 284))
    {
      v6 = "dry-run ";
    }

    else
    {
      v6 = "";
    }

    v7 = nw_endpoint_handler_copy_endpoint(v4);
    v8 = v7;
    if (v7)
    {
      v9 = _nw_endpoint_get_logging_description(v7);
    }

    else
    {
      v9 = "<NULL>";
    }

    v21 = *(v4 + 30);
    if (v21 > 5)
    {
      v22 = "unknown-state";
    }

    else
    {
      v22 = off_1E6A31048[v21];
    }

    v23 = v4;
    v24 = *(v4 + 29);
    v52 = v22;
    v54 = v9;
    if (v24 > 2)
    {
      switch(v24)
      {
        case 3:
          v25 = "proxy";
          goto LABEL_64;
        case 4:
          v25 = "fallback";
          goto LABEL_64;
        case 5:
          v25 = "transform";
          goto LABEL_64;
      }
    }

    else
    {
      switch(v24)
      {
        case 0:
          v25 = "path";
          goto LABEL_64;
        case 1:
          v25 = "resolver";
          goto LABEL_64;
        case 2:
          v25 = nw_endpoint_flow_mode_string(v4[33]);
LABEL_64:

          v28 = v23;
          os_unfair_lock_lock(v23 + 28);
          v29 = v28[8];
          os_unfair_lock_unlock(v23 + 28);

          *buf = 136448258;
          v58 = "nw_endpoint_handler_get_client_id";
          v59 = 2082;
          v60 = v4 + 23;
          v61 = 2082;
          v62 = v6;
          v63 = 2082;
          v64 = v54;
          v65 = 2082;
          v66 = v52;
          v67 = 2082;
          v68 = v25;
          v69 = 2114;
          v70 = v29;
          v71 = 1042;
          v72 = 16;
          v73 = 2098;
          v74 = a2;
          _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Generated client ID %{public,uuid_t}.16P for non-path based handler", buf, 0x58u);

LABEL_65:
          goto LABEL_66;
      }
    }

    v25 = "unknown-mode";
    goto LABEL_64;
  }

LABEL_66:
}

const char *nw_endpoint_get_logging_description(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    logging_description = _nw_endpoint_get_logging_description(v1);
  }

  else
  {
    logging_description = "<NULL>";
  }

  return logging_description;
}

uint64_t nw_endpoint_handler_get_logging_disabled(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = (v1[284] >> 6) & 1;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_endpoint_handler_get_logging_disabled";
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
        v15 = "nw_endpoint_handler_get_logging_disabled";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null handler", buf, 0xCu);
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
          v15 = "nw_endpoint_handler_get_logging_disabled";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_endpoint_handler_get_logging_disabled";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null handler, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_endpoint_handler_get_logging_disabled";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

  v2 = 1;
  v1 = 0;
LABEL_3:

  return v2;
}

void nw_endpoint_handler_path_change(NWConcrete_nw_endpoint_handler *a1)
{
  buf[11] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v475 = v1;
  if (!v1)
  {
    v301 = __nwlog_obj();
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_endpoint_handler_path_change";
    v302 = _os_log_send_and_compose_impl();

    LOBYTE(v488[0]) = 16;
    LOBYTE(v484) = 0;
    if (!__nwlog_fault(v302, v488, &v484))
    {
      goto LABEL_507;
    }

    if (LOBYTE(v488[0]) == 17)
    {
      v303 = __nwlog_obj();
      v304 = v488[0];
      if (os_log_type_enabled(v303, v488[0]))
      {
        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "nw_endpoint_handler_path_change";
        _os_log_impl(&dword_181A37000, v303, v304, "%{public}s called with null handler", buf, 0xCu);
      }

      goto LABEL_506;
    }

    if (v484 != 1)
    {
      v303 = __nwlog_obj();
      v326 = v488[0];
      if (os_log_type_enabled(v303, v488[0]))
      {
        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "nw_endpoint_handler_path_change";
        _os_log_impl(&dword_181A37000, v303, v326, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_506;
    }

    backtrace_string = __nw_create_backtrace_string();
    v303 = __nwlog_obj();
    v321 = v488[0];
    v322 = os_log_type_enabled(v303, v488[0]);
    if (!backtrace_string)
    {
      if (v322)
      {
        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "nw_endpoint_handler_path_change";
        _os_log_impl(&dword_181A37000, v303, v321, "%{public}s called with null handler, no backtrace", buf, 0xCu);
      }

      goto LABEL_506;
    }

    if (v322)
    {
      LODWORD(buf[0]) = 136446466;
      *(buf + 4) = "nw_endpoint_handler_path_change";
      WORD2(buf[1]) = 2082;
      *(&buf[1] + 6) = backtrace_string;
      _os_log_impl(&dword_181A37000, v303, v321, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_455;
  }

  p_isa = &v1->super.isa;
  current_path = v1->current_path;
  if (!current_path)
  {
    v305 = __nwlog_obj();
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_endpoint_handler_path_change";
    v302 = _os_log_send_and_compose_impl();

    LOBYTE(v488[0]) = 16;
    LOBYTE(v484) = 0;
    if (!__nwlog_fault(v302, v488, &v484))
    {
      goto LABEL_507;
    }

    if (LOBYTE(v488[0]) == 17)
    {
      v303 = __nwlog_obj();
      v306 = v488[0];
      if (os_log_type_enabled(v303, v488[0]))
      {
        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "nw_endpoint_handler_path_change";
        _os_log_impl(&dword_181A37000, v303, v306, "%{public}s called with null handler->current_path", buf, 0xCu);
      }

LABEL_506:

LABEL_507:
      p_isa = &v475->super.isa;
      if (v302)
      {
        free(v302);
      }

      goto LABEL_342;
    }

    if (v484 != 1)
    {
      v303 = __nwlog_obj();
      v327 = v488[0];
      if (os_log_type_enabled(v303, v488[0]))
      {
        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "nw_endpoint_handler_path_change";
        _os_log_impl(&dword_181A37000, v303, v327, "%{public}s called with null handler->current_path, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_506;
    }

    backtrace_string = __nw_create_backtrace_string();
    v303 = __nwlog_obj();
    v323 = v488[0];
    v324 = os_log_type_enabled(v303, v488[0]);
    if (!backtrace_string)
    {
      if (v324)
      {
        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "nw_endpoint_handler_path_change";
        _os_log_impl(&dword_181A37000, v303, v323, "%{public}s called with null handler->current_path, no backtrace", buf, 0xCu);
      }

      goto LABEL_506;
    }

    if (v324)
    {
      LODWORD(buf[0]) = 136446466;
      *(buf + 4) = "nw_endpoint_handler_path_change";
      WORD2(buf[1]) = 2082;
      *(&buf[1] + 6) = backtrace_string;
      _os_log_impl(&dword_181A37000, v303, v323, "%{public}s called with null handler->current_path, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_455:

    free(backtrace_string);
    goto LABEL_507;
  }

  v4 = current_path;
  status = _nw_path_get_status(v4);

  v6 = p_isa;
  v7 = *(v6 + 284);

  v476 = v6;
  if ((v7 & 0x40) != 0)
  {
    goto LABEL_32;
  }

  if (__nwlog_connection_log::onceToken[0] != -1)
  {
    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
  }

  v8 = gconnectionLogObj;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = v6;

    v10 = v9;
    v11 = *(v6 + 284);

    if (v11)
    {
      v12 = "dry-run ";
    }

    else
    {
      v12 = "";
    }

    v13 = nw_endpoint_handler_copy_endpoint(v10);
    v14 = v13;
    if (v13)
    {
      logging_description = _nw_endpoint_get_logging_description(v13);
    }

    else
    {
      logging_description = "<NULL>";
    }

    v16 = (v9 + 23);

    v17 = v10;
    v18 = v17;
    v19 = v17[30];
    if (v19 > 5)
    {
      v20 = "unknown-state";
    }

    else
    {
      v20 = off_1E6A31048[v19];
    }

    v21 = v18;
    v22 = v21;
    v23 = v21[29];
    if (v23 > 2)
    {
      switch(v23)
      {
        case 3:
          v24 = "proxy";
          goto LABEL_30;
        case 4:
          v24 = "fallback";
          goto LABEL_30;
        case 5:
          v24 = "transform";
          goto LABEL_30;
      }
    }

    else
    {
      switch(v23)
      {
        case 0:
          v24 = "path";
          goto LABEL_30;
        case 1:
          v24 = "resolver";
          goto LABEL_30;
        case 2:
          v24 = nw_endpoint_flow_mode_string(*(v21 + 33));
LABEL_30:

          v25 = v22;
          os_unfair_lock_lock(v25 + 28);
          v26 = v475->current_path;
          os_unfair_lock_unlock(v25 + 28);

          v27 = v26;
          LODWORD(buf[0]) = 136447746;
          *(buf + 4) = "nw_endpoint_handler_path_change";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = v16;
          HIWORD(buf[2]) = 2082;
          buf[3] = v12;
          LOWORD(buf[4]) = 2082;
          *(&buf[4] + 2) = logging_description;
          WORD1(buf[5]) = 2082;
          *(&buf[5] + 4) = v20;
          WORD2(buf[6]) = 2082;
          *(&buf[6] + 6) = v24;
          HIWORD(buf[7]) = 2114;
          buf[8] = v27;
          _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] ", buf, 0x48u);

          goto LABEL_31;
      }
    }

    v24 = "unknown-mode";
    goto LABEL_30;
  }

LABEL_31:

  p_isa = &v475->super.isa;
  v6 = v476;
LABEL_32:
  v28 = *(v6 + 30);
  v29 = *(v6 + 284);
  if (v28 == 2 || (v29 &= ~8u, *(v6 + 284) = v29, (v28 & 0xFFFFFFFE) != 4))
  {
    if ((v29 & 2) == 0)
    {
      if (status != 3)
      {
        *(v6 + 284) = v29;
        v30 = v6[11];
        v6[11] = 0;
        v31 = v6;

        v32 = v31[12];
        v31[12] = 0;

        v33 = v31[13];
        v31[13] = 0;

        p_isa = &v475->super.isa;
        v6 = v476;
      }

LABEL_38:
      if (*(v6 + 29) == 2 && nw_endpoint_flow_should_ignore_path_result(v6[33]))
      {
        v34 = 0;
        v484 = 0;
        v485 = &v484;
        v486 = 0x2020000000;
        v487 = 0;
        status = 1;
LABEL_54:
        if (nw_parameters_get_attribution(v6[4]) == nw_parameters_attribution_developer && nw_endpoint_get_type(v6[3]) == nw_endpoint_type_host)
        {
          memset(buf, 0, 88);
          nw_parameters_to_ne_app_context(v6[4], buf);
          nw_endpoint_get_hostname(v6[3]);
          if (ne_tracker_check_is_hostname_blocked() == 1)
          {
            if ((*(v6 + 284) & 0x40) != 0)
            {
LABEL_326:
              nw_endpoint_handler_handle_failure(v6);
              v221 = [[NWConcrete_nw_error alloc] initWithDomain:50 code:?];
              *(v6 + 20) = 589825;
              nw_endpoint_handler_report(v6, 0, v6 + 40, v221);

              goto LABEL_340;
            }

            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v41 = gconnectionLogObj;
            if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
            {
LABEL_325:

              v6 = v476;
              goto LABEL_326;
            }

            v42 = v476;

            v43 = v42;
            v44 = (*(v476 + 284) & 1) == 0;

            if (v44)
            {
              v45 = "";
            }

            else
            {
              v45 = "dry-run ";
            }

            v46 = nw_endpoint_handler_copy_endpoint(v43);
            v47 = v46;
            if (v46)
            {
              v48 = _nw_endpoint_get_logging_description(v46);
            }

            else
            {
              v48 = "<NULL>";
            }

            v189 = v43;
            v190 = v189;
            v191 = *(v476 + 30);
            if (v191 > 5)
            {
              v192 = "unknown-state";
            }

            else
            {
              v192 = off_1E6A31048[v191];
            }

            v193 = v190;
            v194 = v193;
            v195 = *(v476 + 29);
            if (v195 > 2)
            {
              switch(v195)
              {
                case 3:
                  v196 = "proxy";
                  goto LABEL_324;
                case 4:
                  v196 = "fallback";
                  goto LABEL_324;
                case 5:
                  v196 = "transform";
                  goto LABEL_324;
              }
            }

            else
            {
              switch(v195)
              {
                case 0:
                  v196 = "path";
                  goto LABEL_324;
                case 1:
                  v196 = "resolver";
                  goto LABEL_324;
                case 2:
                  v196 = nw_endpoint_flow_mode_string(v193[33]);
LABEL_324:

                  v219 = v194;
                  os_unfair_lock_lock(v219 + 28);
                  v220 = v475->current_path;
                  os_unfair_lock_unlock(v219 + 28);

                  LODWORD(v488[0]) = 136447746;
                  *(v488 + 4) = "nw_endpoint_handler_path_change";
                  WORD2(v488[1]) = 2082;
                  *(&v488[1] + 6) = v42 + 23;
                  HIWORD(v488[2]) = 2082;
                  v489 = v45;
                  v490 = 2082;
                  v491 = v48;
                  v492 = 2082;
                  v493 = v192;
                  v494 = 2082;
                  v495 = v196;
                  v496 = 2114;
                  v497 = v220;
                  _os_log_impl(&dword_181A37000, v41, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] blocked tracker", v488, 0x48u);

                  goto LABEL_325;
              }
            }

            v196 = "unknown-mode";
            goto LABEL_324;
          }
        }

        if (nw_parameters_get_block_trackers(v6[4]) && nw_parameters_get_is_known_tracker(v6[4]) && nw_endpoint_get_can_block_request(v6[3]) && (nw_endpoint_hostname_matches_tracker(v6[3]) & 1) == 0)
        {
          goto LABEL_326;
        }

        has_custom_proxy_configs = nw_parameters_has_custom_proxy_configs(v6[4]);
        if (status == 3)
        {
          if (nw_endpoint_handler_triggered_agents_updated(v6))
          {
            if ((*(v6 + 284) & 0x20) != 0)
            {
              if (nw_endpoint_handler_get_logging_disabled(v6))
              {
                goto LABEL_303;
              }

              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v50 = gconnectionLogObj;
              if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
              {
                id_string = nw_endpoint_handler_get_id_string(v476);
                v364 = nw_endpoint_handler_dry_run_string(v476);
                v365 = nw_endpoint_handler_copy_endpoint(v476);
                v366 = nw_endpoint_get_logging_description(v365);
                v367 = nw_endpoint_handler_state_string(v476);
                v368 = nw_endpoint_handler_mode_string(v476);
                v369 = nw_endpoint_handler_copy_current_path(v476);
                LODWORD(buf[0]) = 136447746;
                *(buf + 4) = "nw_endpoint_handler_path_change";
                WORD2(buf[1]) = 2082;
                *(&buf[1] + 6) = id_string;
                HIWORD(buf[2]) = 2082;
                buf[3] = v364;
                LOWORD(buf[4]) = 2082;
                *(&buf[4] + 2) = v366;
                WORD1(buf[5]) = 2082;
                *(&buf[5] + 4) = v367;
                WORD2(buf[6]) = 2082;
                *(&buf[6] + 6) = v368;
                HIWORD(buf[7]) = 2114;
                buf[8] = v369;
                _os_log_impl(&dword_181A37000, v50, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] agents failed to become active", buf, 0x48u);
              }

              goto LABEL_302;
            }

            if ((*(v6 + 284) & 0x40) != 0)
            {
LABEL_303:
              if (*(v6 + 30) != 1 || *(v6 + 29))
              {
                goto LABEL_341;
              }

              goto LABEL_305;
            }

            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v50 = gconnectionLogObj;
            if (!os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
            {
LABEL_302:

              p_isa = &v475->super.isa;
              v6 = v476;
              goto LABEL_303;
            }

            v51 = v6;
            if (*(v6 + 284))
            {
              v52 = "dry-run ";
            }

            else
            {
              v52 = "";
            }

            v53 = nw_endpoint_handler_copy_endpoint(v51);
            v54 = v53;
            if (v53)
            {
              v55 = _nw_endpoint_get_logging_description(v53);
            }

            else
            {
              v55 = "<NULL>";
            }

            v170 = *(v476 + 30);
            if (v170 > 5)
            {
              v171 = "unknown-state";
            }

            else
            {
              v171 = off_1E6A31048[v170];
            }

            v172 = v476;
            v173 = v172;
            v174 = *(v476 + 29);
            if (v174 > 2)
            {
              switch(v174)
              {
                case 3:
                  v175 = "proxy";
                  goto LABEL_301;
                case 4:
                  v175 = "fallback";
                  goto LABEL_301;
                case 5:
                  v175 = "transform";
                  goto LABEL_301;
              }
            }

            else
            {
              switch(v174)
              {
                case 0:
                  v175 = "path";
                  goto LABEL_301;
                case 1:
                  v175 = "resolver";
                  goto LABEL_301;
                case 2:
                  v175 = nw_endpoint_flow_mode_string(v172[33]);
LABEL_301:

                  v202 = v173;
                  os_unfair_lock_lock(v173 + 28);
                  v203 = v475->current_path;
                  os_unfair_lock_unlock(v173 + 28);

                  LODWORD(buf[0]) = 136447746;
                  *(buf + 4) = "nw_endpoint_handler_path_change";
                  WORD2(buf[1]) = 2082;
                  *(&buf[1] + 6) = v476 + 23;
                  HIWORD(buf[2]) = 2082;
                  buf[3] = v52;
                  LOWORD(buf[4]) = 2082;
                  *(&buf[4] + 2) = v55;
                  WORD1(buf[5]) = 2082;
                  *(&buf[5] + 4) = v171;
                  WORD2(buf[6]) = 2082;
                  *(&buf[6] + 6) = v175;
                  HIWORD(buf[7]) = 2114;
                  buf[8] = v203;
                  _os_log_impl(&dword_181A37000, v50, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] agents failed to become active", buf, 0x48u);

                  goto LABEL_302;
              }
            }

            v175 = "unknown-mode";
            goto LABEL_301;
          }

          if (*(v6 + 29) == 2 && nw_endpoint_flow_get_is_leaf_handler(v6[33]))
          {
            v88 = *(v6 + 30);
            minimize_logging = nw_endpoint_handler_get_minimize_logging(v6);
            logging_disabled = nw_endpoint_handler_get_logging_disabled(v6);
            if (v88 == 3)
            {
              if (minimize_logging)
              {
                if (logging_disabled)
                {
                  goto LABEL_395;
                }

                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v91 = gconnectionLogObj;
                if (os_log_type_enabled(v91, OS_LOG_TYPE_DEBUG))
                {
                  v377 = nw_endpoint_handler_get_id_string(v476);
                  v378 = nw_endpoint_handler_dry_run_string(v476);
                  v379 = nw_endpoint_handler_copy_endpoint(v476);
                  v380 = nw_endpoint_get_logging_description(v379);
                  v381 = nw_endpoint_handler_state_string(v476);
                  v382 = nw_endpoint_handler_mode_string(v476);
                  v383 = nw_endpoint_handler_copy_current_path(v476);
                  LODWORD(buf[0]) = 136447746;
                  *(buf + 4) = "nw_endpoint_handler_path_change";
                  WORD2(buf[1]) = 2082;
                  *(&buf[1] + 6) = v377;
                  HIWORD(buf[2]) = 2082;
                  buf[3] = v378;
                  LOWORD(buf[4]) = 2082;
                  *(&buf[4] + 2) = v380;
                  WORD1(buf[5]) = 2082;
                  *(&buf[5] + 4) = v381;
                  WORD2(buf[6]) = 2082;
                  *(&buf[6] + 6) = v382;
                  HIWORD(buf[7]) = 2114;
                  buf[8] = v383;
                  _os_log_impl(&dword_181A37000, v91, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] flow was ready previously, handling updated path", buf, 0x48u);
                }

                goto LABEL_146;
              }

              if ((logging_disabled & 1) == 0)
              {
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v91 = gconnectionLogObj;
                if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
                {
                  v92 = nw_endpoint_handler_get_id_string(v6);
                  v93 = nw_endpoint_handler_dry_run_string(v6);
                  v94 = nw_endpoint_handler_copy_endpoint(v6);
                  v95 = nw_endpoint_get_logging_description(v94);
                  v96 = nw_endpoint_handler_state_string(v6);
                  v97 = nw_endpoint_handler_mode_string(v6);
                  v98 = v6;
                  v99 = v97;
                  v100 = nw_endpoint_handler_copy_current_path(v98);
                  LODWORD(buf[0]) = 136447746;
                  *(buf + 4) = "nw_endpoint_handler_path_change";
                  WORD2(buf[1]) = 2082;
                  *(&buf[1] + 6) = v92;
                  HIWORD(buf[2]) = 2082;
                  buf[3] = v93;
                  LOWORD(buf[4]) = 2082;
                  *(&buf[4] + 2) = v95;
                  WORD1(buf[5]) = 2082;
                  *(&buf[5] + 4) = v96;
                  WORD2(buf[6]) = 2082;
                  *(&buf[6] + 6) = v99;
                  HIWORD(buf[7]) = 2114;
                  buf[8] = v100;
                  _os_log_impl(&dword_181A37000, v91, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] flow was ready previously, handling updated path", buf, 0x48u);
                }

LABEL_146:

                v6 = v476;
              }

LABEL_395:
              v282 = v6[33];
              [v282 updatePathWithHandler:v6];

              goto LABEL_340;
            }

            if (!minimize_logging)
            {
              if (logging_disabled)
              {
LABEL_305:
                nw_endpoint_handler_handle_failure(v6);
                nw_endpoint_handler_report(v6, 0, 0, 0);
                goto LABEL_341;
              }

              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v179 = gconnectionLogObj;
              if (!os_log_type_enabled(v179, OS_LOG_TYPE_INFO))
              {
LABEL_269:

                p_isa = &v475->super.isa;
                v6 = v476;
                goto LABEL_305;
              }

LABEL_268:
              v180 = nw_endpoint_handler_get_id_string(v6);
              v181 = nw_endpoint_handler_dry_run_string(v6);
              v182 = nw_endpoint_handler_copy_endpoint(v6);
              v183 = nw_endpoint_get_logging_description(v182);
              v184 = nw_endpoint_handler_state_string(v6);
              v185 = nw_endpoint_handler_mode_string(v6);
              v186 = v6;
              v187 = v185;
              v188 = nw_endpoint_handler_copy_current_path(v186);
              LODWORD(buf[0]) = 136447746;
              *(buf + 4) = "nw_endpoint_handler_path_change";
              WORD2(buf[1]) = 2082;
              *(&buf[1] + 6) = v180;
              HIWORD(buf[2]) = 2082;
              buf[3] = v181;
              LOWORD(buf[4]) = 2082;
              *(&buf[4] + 2) = v183;
              WORD1(buf[5]) = 2082;
              *(&buf[5] + 4) = v184;
              WORD2(buf[6]) = 2082;
              *(&buf[6] + 6) = v187;
              HIWORD(buf[7]) = 2114;
              buf[8] = v188;
              _os_log_impl(&dword_181A37000, v179, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] flow is no longer satisfied", buf, 0x48u);

              goto LABEL_269;
            }

            if (logging_disabled)
            {
              goto LABEL_305;
            }

            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v179 = gconnectionLogObj;
            if (!os_log_type_enabled(v179, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_269;
            }

            goto LABEL_529;
          }

          if (*(v6 + 30) <= 2)
          {
            if ((*(v6 + 284) & 0x20) != 0)
            {
              if (nw_endpoint_handler_get_logging_disabled(v6))
              {
LABEL_156:
                if (nw_endpoint_handler_trigger_agents(v6, 0))
                {
                  goto LABEL_341;
                }

                goto LABEL_305;
              }

              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v101 = gconnectionLogObj;
              if (os_log_type_enabled(v101, OS_LOG_TYPE_DEBUG))
              {
                v370 = nw_endpoint_handler_get_id_string(v476);
                v371 = nw_endpoint_handler_dry_run_string(v476);
                v372 = nw_endpoint_handler_copy_endpoint(v476);
                v373 = nw_endpoint_get_logging_description(v372);
                v374 = nw_endpoint_handler_state_string(v476);
                v375 = nw_endpoint_handler_mode_string(v476);
                v376 = nw_endpoint_handler_copy_current_path(v476);
                LODWORD(buf[0]) = 136447746;
                *(buf + 4) = "nw_endpoint_handler_path_change";
                WORD2(buf[1]) = 2082;
                *(&buf[1] + 6) = v370;
                HIWORD(buf[2]) = 2082;
                buf[3] = v371;
                LOWORD(buf[4]) = 2082;
                *(&buf[4] + 2) = v373;
                WORD1(buf[5]) = 2082;
                *(&buf[5] + 4) = v374;
                WORD2(buf[6]) = 2082;
                *(&buf[6] + 6) = v375;
                HIWORD(buf[7]) = 2114;
                buf[8] = v376;
                _os_log_impl(&dword_181A37000, v101, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] trying to satisfy agents", buf, 0x48u);
              }
            }

            else
            {
              if ((*(v6 + 284) & 0x40) != 0)
              {
                goto LABEL_156;
              }

              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v101 = gconnectionLogObj;
              if (os_log_type_enabled(v101, OS_LOG_TYPE_INFO))
              {
                v102 = nw_endpoint_handler_get_id_string(v6);
                v103 = nw_endpoint_handler_dry_run_string(v6);
                v104 = nw_endpoint_handler_copy_endpoint(v6);
                v105 = nw_endpoint_get_logging_description(v104);
                v106 = nw_endpoint_handler_state_string(v6);
                v107 = nw_endpoint_handler_mode_string(v6);
                v108 = v6;
                v109 = v107;
                v110 = nw_endpoint_handler_copy_current_path(v108);
                LODWORD(buf[0]) = 136447746;
                *(buf + 4) = "nw_endpoint_handler_path_change";
                WORD2(buf[1]) = 2082;
                *(&buf[1] + 6) = v102;
                HIWORD(buf[2]) = 2082;
                buf[3] = v103;
                LOWORD(buf[4]) = 2082;
                *(&buf[4] + 2) = v105;
                WORD1(buf[5]) = 2082;
                *(&buf[5] + 4) = v106;
                WORD2(buf[6]) = 2082;
                *(&buf[6] + 6) = v109;
                HIWORD(buf[7]) = 2114;
                buf[8] = v110;
                _os_log_impl(&dword_181A37000, v101, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] trying to satisfy agents", buf, 0x48u);
              }
            }

            p_isa = &v475->super.isa;
            v6 = v476;
            goto LABEL_156;
          }

LABEL_341:
          _Block_object_dispose(&v484, 8);
          goto LABEL_342;
        }

        v62 = has_custom_proxy_configs;
        v63 = *(v6 + 30);
        if (v63 == 1 && *(v6 + 29) == 2 && v6[33])
        {
          if (status != 1 && *(v485 + 24) != 1)
          {
            if (v34)
            {
              *(v6 + 20) = 393217;
              nw_endpoint_handler_report(v6, 0, v6 + 40, 0);
            }

            goto LABEL_293;
          }

          *(v6 + 20) = 196609;
          nw_endpoint_handler_report(v6, 0, v6 + 40, 0);
          v64 = v6;
          if (*(v6 + 30) != 1 || (v65 = *(v6 + 29)) != 0 && (v65 != 2 || (nw_endpoint_flow_get_is_leaf_handler(v6[33]) & 1) != 0) || (*(v6 + 284) & 1) != 0)
          {

            v67 = v475;
            v6 = v476;
          }

          else
          {
            should_fallback = nw_path_should_fallback(p_isa[8], 0);

            v67 = v475;
            v6 = v476;
            if (should_fallback)
            {
LABEL_293:
              v200 = mach_continuous_time();
              if (v200 <= 1)
              {
                v201 = 1;
              }

              else
              {
                v201 = v200;
              }

LABEL_339:
              v6[16] = v201;
              v225 = v6[33];
              [v225 startWithHandler:v6];

              goto LABEL_340;
            }
          }

          if (!nw_endpoint_handler_should_transform(v64[3], v6[4]) && (nw_endpoint_proxy_handler_should_use_proxy(v64, v67->current_path, v62) & 1) == 0 && !nw_parameters_has_persistent_protocol_in_stack(v6[4]) && nw_path_can_support_endpoint(v67->current_path, v64[3]))
          {
            nw_endpoint_flow_reset_is_leaf_handler(v6[33], 1);
          }

          goto LABEL_293;
        }

        if (status == 1 || *(v485 + 24) == 1)
        {
          v68 = *(v6 + 29);
          if (v63 == 1 && !v68)
          {
            *(v6 + 20) = 196609;
            nw_endpoint_handler_report(v6, 0, v6 + 40, 0);
            if (*(v6 + 30) == 5)
            {
              goto LABEL_341;
            }

            os_unfair_lock_lock(v6 + 28);
            if (*(v6 + 284) & 1) != 0 || !nw_endpoint_handler_has_persistent_application_protocols(v6) || (nw_path_can_support_endpoint(p_isa[8], v6[3]))
            {
              v69 = v6;
              v70 = v69;
              if (*(v6 + 30) != 1 || (v71 = *(v6 + 29)) != 0 && (v71 != 2 || (nw_endpoint_flow_get_is_leaf_handler(v69[33]) & 1) != 0) || (*(v6 + 284) & 1) != 0)
              {
              }

              else
              {
                v72 = nw_path_should_fallback(p_isa[8], 0);

                if (v72)
                {
                  v6 = v476;
                  if ((*(v476 + 284) & 1) != 0 || v70[9])
                  {
                    v73 = off_1E6A28550;
                    v74 = 4;
LABEL_262:
                    *(v6 + 29) = v74;
                    v178 = objc_alloc_init(*v73);
LABEL_335:
                    v223 = v6[33];
                    v6[33] = v178;

                    v6 = v476;
LABEL_336:
                    os_unfair_lock_unlock(v6 + 28);
                    v224 = mach_continuous_time();
                    if (v224 <= 1)
                    {
                      v201 = 1;
                    }

                    else
                    {
                      v201 = v224;
                    }

                    goto LABEL_339;
                  }

                  goto LABEL_333;
                }
              }

              v6 = v476;
              if (nw_endpoint_handler_should_transform(v70[3], v476[4]))
              {
                if ((*(v476 + 284) & 1) != 0 || v70[9])
                {
                  v73 = off_1E6A28568;
                  v74 = 5;
                  goto LABEL_262;
                }

                goto LABEL_333;
              }

              if (nw_endpoint_proxy_handler_should_use_proxy(v70, v475->current_path, v62))
              {
                if ((*(v476 + 284) & 1) != 0 || v70[9])
                {
                  v73 = off_1E6A28558;
                  v74 = 3;
                  goto LABEL_262;
                }

                goto LABEL_333;
              }

              if (!nw_path_can_support_endpoint(v475->current_path, v70[3]))
              {
                if (!_nw_path_can_resolve_endpoint(v475->current_path, v70[3]))
                {
                  goto LABEL_336;
                }

                if ((*(v476 + 284) & 1) != 0 || v70[9])
                {
                  v73 = off_1E6A28560;
                  v74 = 1;
                  goto LABEL_262;
                }

LABEL_333:
                v204 = 0;
                *(v6 + 29) = 2;
                v222 = 1;
                goto LABEL_334;
              }

              v204 = 2;
              *(v476 + 29) = 2;
              v205 = v70[9];
            }

            else
            {
              v204 = 0;
              *(v6 + 29) = 2;
              v205 = v6[9];
            }

            v222 = v205 == 0;
LABEL_334:
            v178 = objc_alloc_init(NWConcrete_nw_endpoint_flow);
            *(v178 + 32) = v204 | v222 | *(v178 + 32) & 0xFC;
            *v178->connection_uuid = *(v6 + 148);
            goto LABEL_335;
          }

          if (v68 != 2 || nw_path_changed_from_previous(p_isa[8]))
          {
            *(v6 + 20) = 327681;
            nw_endpoint_handler_report(v6, 0, v6 + 40, 0);
            if (*(v6 + 30) == 5)
            {
              goto LABEL_341;
            }
          }

          if (!nw_endpoint_handler_should_reset_for_fallback(v6) || v6[17] || ((v111 = mach_continuous_time(), v111 <= 1) ? (v112 = 1) : (v112 = v111), v113 = v6[16], v112 < v113))
          {
LABEL_486:
            v344 = v6[33];
            [v344 updatePathWithHandler:v6];

            p_isa = &v475->super.isa;
            v345 = v476;
            if (*(v476 + 30) != 3 || !_nw_path_get_custom_metadata_length(v475->current_path))
            {
              goto LABEL_341;
            }

            v346 = nw_endpoint_handler_get_minimize_logging(v476);
            v347 = nw_endpoint_handler_get_logging_disabled(v476);
            if (v346)
            {
              if (v347)
              {
                goto LABEL_495;
              }

              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v348 = gconnectionLogObj;
              if (os_log_type_enabled(v348, OS_LOG_TYPE_DEBUG))
              {
                v391 = nw_endpoint_handler_get_id_string(v476);
                v392 = nw_endpoint_handler_dry_run_string(v476);
                v393 = nw_endpoint_handler_copy_endpoint(v476);
                v394 = nw_endpoint_get_logging_description(v393);
                v395 = nw_endpoint_handler_state_string(v476);
                v396 = nw_endpoint_handler_mode_string(v476);
                v397 = nw_endpoint_handler_copy_current_path(v476);
                LODWORD(buf[0]) = 136447746;
                *(buf + 4) = "nw_endpoint_handler_path_change";
                WORD2(buf[1]) = 2082;
                *(&buf[1] + 6) = v391;
                HIWORD(buf[2]) = 2082;
                buf[3] = v392;
                LOWORD(buf[4]) = 2082;
                *(&buf[4] + 2) = v394;
                WORD1(buf[5]) = 2082;
                *(&buf[5] + 4) = v395;
                WORD2(buf[6]) = 2082;
                *(&buf[6] + 6) = v396;
                HIWORD(buf[7]) = 2114;
                buf[8] = v397;
                _os_log_impl(&dword_181A37000, v348, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] custom metadata is present on the path", buf, 0x48u);
              }
            }

            else
            {
              if (v347)
              {
LABEL_495:
                *(v345 + 20) = 720897;
                nw_endpoint_handler_report(v345, 0, v345 + 40, 0);
                goto LABEL_341;
              }

              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v348 = gconnectionLogObj;
              if (os_log_type_enabled(v348, OS_LOG_TYPE_INFO))
              {
                v349 = nw_endpoint_handler_get_id_string(v476);
                v350 = nw_endpoint_handler_dry_run_string(v476);
                v351 = nw_endpoint_handler_copy_endpoint(v476);
                v352 = nw_endpoint_get_logging_description(v351);
                v353 = nw_endpoint_handler_state_string(v476);
                v354 = nw_endpoint_handler_mode_string(v476);
                v355 = nw_endpoint_handler_copy_current_path(v476);
                LODWORD(buf[0]) = 136447746;
                *(buf + 4) = "nw_endpoint_handler_path_change";
                WORD2(buf[1]) = 2082;
                *(&buf[1] + 6) = v349;
                HIWORD(buf[2]) = 2082;
                buf[3] = v350;
                LOWORD(buf[4]) = 2082;
                *(&buf[4] + 2) = v352;
                WORD1(buf[5]) = 2082;
                *(&buf[5] + 4) = v353;
                WORD2(buf[6]) = 2082;
                *(&buf[6] + 6) = v354;
                HIWORD(buf[7]) = 2114;
                buf[8] = v355;
                _os_log_impl(&dword_181A37000, v348, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] custom metadata is present on the path", buf, 0x48u);
              }
            }

            p_isa = &v475->super.isa;
            v345 = v476;
            goto LABEL_495;
          }

          v114 = nw_delta_nanos(v113, v112);
          timeout_nanos_for_path = nw_endpoint_fallback_get_timeout_nanos_for_path(p_isa[8]);
          v116 = timeout_nanos_for_path - v114;
          if (timeout_nanos_for_path > v114)
          {
            v117 = v6[5];
            v478[0] = MEMORY[0x1E69E9820];
            v478[1] = 3221225472;
            v478[2] = ___ZL31nw_endpoint_handler_path_changeP30NWConcrete_nw_endpoint_handler_block_invoke_143;
            v478[3] = &unk_1E6A3D868;
            v118 = v6;
            v479 = v118;
            v6[17] = nw_queue_context_create_source(v117, 2, 3, 0, v478, 0);
            LODWORD(v117) = nw_endpoint_handler_get_minimize_logging(v118);
            v119 = nw_endpoint_handler_get_logging_disabled(v118);
            if (v117)
            {
              if (v119)
              {
LABEL_175:
                v128 = v6[17];
                if (v128)
                {
                  v129 = dispatch_time(0x8000000000000000, v116);
                  nw_queue_set_timer_values(v128, v129, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
                  nw_queue_activate_source(v6[17], v130);
LABEL_485:

                  v6 = v476;
                  goto LABEL_486;
                }

                v297 = __nwlog_obj();
                LODWORD(buf[0]) = 136446210;
                *(buf + 4) = "nw_endpoint_handler_path_change";
                v298 = _os_log_send_and_compose_impl();

                LOBYTE(v488[0]) = 16;
                v477 = 0;
                if (__nwlog_fault(v298, v488, &v477))
                {
                  if (LOBYTE(v488[0]) == 17)
                  {
                    v299 = __nwlog_obj();
                    v300 = v488[0];
                    if (os_log_type_enabled(v299, v488[0]))
                    {
                      LODWORD(buf[0]) = 136446210;
                      *(buf + 4) = "nw_endpoint_handler_path_change";
                      _os_log_impl(&dword_181A37000, v299, v300, "%{public}s nw_queue_context_create_source(timer) failed", buf, 0xCu);
                    }
                  }

                  else if (v477 == 1)
                  {
                    v317 = __nw_create_backtrace_string();
                    v299 = __nwlog_obj();
                    v318 = v488[0];
                    v319 = os_log_type_enabled(v299, v488[0]);
                    if (v317)
                    {
                      if (v319)
                      {
                        LODWORD(buf[0]) = 136446466;
                        *(buf + 4) = "nw_endpoint_handler_path_change";
                        WORD2(buf[1]) = 2082;
                        *(&buf[1] + 6) = v317;
                        _os_log_impl(&dword_181A37000, v299, v318, "%{public}s nw_queue_context_create_source(timer) failed, dumping backtrace:%{public}s", buf, 0x16u);
                      }

                      free(v317);
                      goto LABEL_483;
                    }

                    if (v319)
                    {
                      LODWORD(buf[0]) = 136446210;
                      *(buf + 4) = "nw_endpoint_handler_path_change";
                      _os_log_impl(&dword_181A37000, v299, v318, "%{public}s nw_queue_context_create_source(timer) failed, no backtrace", buf, 0xCu);
                    }
                  }

                  else
                  {
                    v299 = __nwlog_obj();
                    v325 = v488[0];
                    if (os_log_type_enabled(v299, v488[0]))
                    {
                      LODWORD(buf[0]) = 136446210;
                      *(buf + 4) = "nw_endpoint_handler_path_change";
                      _os_log_impl(&dword_181A37000, v299, v325, "%{public}s nw_queue_context_create_source(timer) failed, backtrace limit exceeded", buf, 0xCu);
                    }
                  }
                }

LABEL_483:
                if (v298)
                {
                  free(v298);
                }

                goto LABEL_485;
              }

              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v120 = gconnectionLogObj;
              if (os_log_type_enabled(v120, OS_LOG_TYPE_DEBUG))
              {
                v419 = nw_endpoint_handler_get_id_string(v118);
                v420 = nw_endpoint_handler_dry_run_string(v118);
                v421 = nw_endpoint_handler_copy_endpoint(v118);
                v422 = nw_endpoint_get_logging_description(v421);
                v423 = nw_endpoint_handler_state_string(v118);
                v424 = nw_endpoint_handler_mode_string(v118);
                v425 = nw_endpoint_handler_copy_current_path(v118);
                LODWORD(buf[0]) = 136448002;
                *(buf + 4) = "nw_endpoint_handler_path_change";
                WORD2(buf[1]) = 2082;
                *(&buf[1] + 6) = v419;
                HIWORD(buf[2]) = 2082;
                buf[3] = v420;
                LOWORD(buf[4]) = 2082;
                *(&buf[4] + 2) = v422;
                WORD1(buf[5]) = 2082;
                *(&buf[5] + 4) = v423;
                WORD2(buf[6]) = 2082;
                *(&buf[6] + 6) = v424;
                HIWORD(buf[7]) = 2114;
                buf[8] = v425;
                LOWORD(buf[9]) = 2048;
                *(&buf[9] + 2) = v116 / 0xF4240;
                _os_log_impl(&dword_181A37000, v120, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] fallback became enabled on path, setting timer for %llums before resetting", buf, 0x52u);
              }
            }

            else
            {
              if (v119)
              {
                goto LABEL_175;
              }

              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v120 = gconnectionLogObj;
              if (os_log_type_enabled(v120, OS_LOG_TYPE_INFO))
              {
                v121 = nw_endpoint_handler_get_id_string(v118);
                v122 = nw_endpoint_handler_dry_run_string(v118);
                v123 = nw_endpoint_handler_copy_endpoint(v118);
                v124 = nw_endpoint_get_logging_description(v123);
                v125 = nw_endpoint_handler_state_string(v118);
                v126 = nw_endpoint_handler_mode_string(v118);
                v127 = nw_endpoint_handler_copy_current_path(v118);
                LODWORD(buf[0]) = 136448002;
                *(buf + 4) = "nw_endpoint_handler_path_change";
                WORD2(buf[1]) = 2082;
                *(&buf[1] + 6) = v121;
                HIWORD(buf[2]) = 2082;
                buf[3] = v122;
                LOWORD(buf[4]) = 2082;
                *(&buf[4] + 2) = v124;
                WORD1(buf[5]) = 2082;
                *(&buf[5] + 4) = v125;
                WORD2(buf[6]) = 2082;
                *(&buf[6] + 6) = v126;
                HIWORD(buf[7]) = 2114;
                buf[8] = v127;
                LOWORD(buf[9]) = 2048;
                *(&buf[9] + 2) = v116 / 0xF4240;
                _os_log_impl(&dword_181A37000, v120, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] fallback became enabled on path, setting timer for %llums before resetting", buf, 0x52u);
              }
            }

            v6 = v476;
            goto LABEL_175;
          }

          v241 = nw_endpoint_handler_get_minimize_logging(v6);
          v242 = nw_endpoint_handler_get_logging_disabled(v6);
          if (v241)
          {
            if (v242)
            {
              goto LABEL_364;
            }

            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v243 = gconnectionLogObj;
            if (os_log_type_enabled(v243, OS_LOG_TYPE_DEBUG))
            {
              v412 = nw_endpoint_handler_get_id_string(v476);
              v413 = nw_endpoint_handler_dry_run_string(v476);
              v414 = nw_endpoint_handler_copy_endpoint(v476);
              v415 = nw_endpoint_get_logging_description(v414);
              v416 = nw_endpoint_handler_state_string(v476);
              v417 = nw_endpoint_handler_mode_string(v476);
              v418 = nw_endpoint_handler_copy_current_path(v476);
              LODWORD(buf[0]) = 136447746;
              *(buf + 4) = "nw_endpoint_handler_path_change";
              WORD2(buf[1]) = 2082;
              *(&buf[1] + 6) = v412;
              HIWORD(buf[2]) = 2082;
              buf[3] = v413;
              LOWORD(buf[4]) = 2082;
              *(&buf[4] + 2) = v415;
              WORD1(buf[5]) = 2082;
              *(&buf[5] + 4) = v416;
              WORD2(buf[6]) = 2082;
              *(&buf[6] + 6) = v417;
              HIWORD(buf[7]) = 2114;
              buf[8] = v418;
              _os_log_impl(&dword_181A37000, v243, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] fallback became enabled on path and timeout has already passed, resetting", buf, 0x48u);
            }
          }

          else
          {
            if (v242)
            {
LABEL_364:
              nw_endpoint_handler_reset_mode(v6, 1);
              goto LABEL_486;
            }

            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v243 = gconnectionLogObj;
            if (os_log_type_enabled(v243, OS_LOG_TYPE_INFO))
            {
              v244 = nw_endpoint_handler_get_id_string(v6);
              v245 = nw_endpoint_handler_dry_run_string(v6);
              v246 = nw_endpoint_handler_copy_endpoint(v6);
              v247 = nw_endpoint_get_logging_description(v246);
              v248 = nw_endpoint_handler_state_string(v6);
              v249 = nw_endpoint_handler_mode_string(v6);
              v250 = v6;
              v251 = v249;
              v252 = nw_endpoint_handler_copy_current_path(v250);
              LODWORD(buf[0]) = 136447746;
              *(buf + 4) = "nw_endpoint_handler_path_change";
              WORD2(buf[1]) = 2082;
              *(&buf[1] + 6) = v244;
              HIWORD(buf[2]) = 2082;
              buf[3] = v245;
              LOWORD(buf[4]) = 2082;
              *(&buf[4] + 2) = v247;
              WORD1(buf[5]) = 2082;
              *(&buf[5] + 4) = v248;
              WORD2(buf[6]) = 2082;
              *(&buf[6] + 6) = v251;
              HIWORD(buf[7]) = 2114;
              buf[8] = v252;
              _os_log_impl(&dword_181A37000, v243, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] fallback became enabled on path and timeout has already passed, resetting", buf, 0x48u);
            }
          }

          v6 = v476;
          goto LABEL_364;
        }

        if (!v34)
        {
          if ((nw_endpoint_handler_get_logging_disabled(v6) & 1) == 0)
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v154 = gconnectionLogObj;
            if (os_log_type_enabled(v154, OS_LOG_TYPE_ERROR))
            {
              v155 = nw_endpoint_handler_get_id_string(v6);
              v156 = nw_endpoint_handler_dry_run_string(v6);
              v157 = nw_endpoint_handler_copy_endpoint(v6);
              v158 = nw_endpoint_get_logging_description(v157);
              v159 = nw_endpoint_handler_state_string(v6);
              v160 = nw_endpoint_handler_mode_string(v6);
              v161 = v6;
              v162 = v160;
              v163 = nw_endpoint_handler_copy_current_path(v161);
              LODWORD(buf[0]) = 136448002;
              *(buf + 4) = "nw_endpoint_handler_path_change";
              WORD2(buf[1]) = 2082;
              *(&buf[1] + 6) = v155;
              HIWORD(buf[2]) = 2082;
              buf[3] = v156;
              LOWORD(buf[4]) = 2082;
              *(&buf[4] + 2) = v158;
              WORD1(buf[5]) = 2082;
              *(&buf[5] + 4) = v159;
              WORD2(buf[6]) = 2082;
              *(&buf[6] + 6) = v162;
              HIWORD(buf[7]) = 2114;
              buf[8] = v163;
              LOWORD(buf[9]) = 1024;
              *(&buf[9] + 2) = status;
              _os_log_impl(&dword_181A37000, v154, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] endpoint handler path in unknown state: %d", buf, 0x4Eu);
            }

            goto LABEL_340;
          }

          goto LABEL_341;
        }

        *(v6 + 20) = 393217;
        nw_endpoint_handler_report(v6, 0, v6 + 40, 0);
        if (*(v6 + 30) == 5)
        {
          goto LABEL_341;
        }

        if (nw_endpoint_handler_should_start_fallback(v6))
        {
          v131 = nw_endpoint_handler_get_minimize_logging(v6);
          v132 = nw_endpoint_handler_get_logging_disabled(v6);
          if (v131)
          {
            if (v132)
            {
LABEL_188:
              os_unfair_lock_lock(v6 + 28);
              if ((*(v6 + 284) & 1) != 0 || v6[9])
              {
                *(v6 + 29) = 4;
                v143 = objc_alloc_init(NWConcrete_nw_endpoint_fallback);
              }

              else
              {
                *(v6 + 29) = 2;
                v143 = objc_alloc_init(NWConcrete_nw_endpoint_flow);
                LOBYTE(v143->primary_child) = v143->primary_child & 0xFC | 1;
                *&v143[9].fallback_timer = *(v6 + 148);
              }

              v144 = v6[33];
              v6[33] = v143;

              v145 = v476;
              os_unfair_lock_unlock(v476 + 28);
              v146 = mach_continuous_time();
              if (v146 <= 1)
              {
                v147 = 1;
              }

              else
              {
                v147 = v146;
              }

LABEL_415:
              v145[16] = v147;
              v296 = v145[33];
              [v296 startWithHandler:v145];

              goto LABEL_340;
            }

            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v133 = gconnectionLogObj;
            if (os_log_type_enabled(v133, OS_LOG_TYPE_DEBUG))
            {
              v398 = nw_endpoint_handler_get_id_string(v476);
              v399 = nw_endpoint_handler_dry_run_string(v476);
              v400 = nw_endpoint_handler_copy_endpoint(v476);
              v401 = nw_endpoint_get_logging_description(v400);
              v402 = nw_endpoint_handler_state_string(v476);
              v403 = nw_endpoint_handler_mode_string(v476);
              v404 = nw_endpoint_handler_copy_current_path(v476);
              LODWORD(buf[0]) = 136447746;
              *(buf + 4) = "nw_endpoint_handler_path_change";
              WORD2(buf[1]) = 2082;
              *(&buf[1] + 6) = v398;
              HIWORD(buf[2]) = 2082;
              buf[3] = v399;
              LOWORD(buf[4]) = 2082;
              *(&buf[4] + 2) = v401;
              WORD1(buf[5]) = 2082;
              *(&buf[5] + 4) = v402;
              WORD2(buf[6]) = 2082;
              *(&buf[6] + 6) = v403;
              HIWORD(buf[7]) = 2114;
              buf[8] = v404;
              _os_log_impl(&dword_181A37000, v133, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] trying fallback with unsatisfied path", buf, 0x48u);
            }
          }

          else
          {
            if (v132)
            {
              goto LABEL_188;
            }

            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v133 = gconnectionLogObj;
            if (os_log_type_enabled(v133, OS_LOG_TYPE_INFO))
            {
              v134 = nw_endpoint_handler_get_id_string(v6);
              v135 = nw_endpoint_handler_dry_run_string(v6);
              v136 = nw_endpoint_handler_copy_endpoint(v6);
              v137 = nw_endpoint_get_logging_description(v136);
              v138 = nw_endpoint_handler_state_string(v6);
              v139 = nw_endpoint_handler_mode_string(v6);
              v140 = v6;
              v141 = v139;
              v142 = nw_endpoint_handler_copy_current_path(v140);
              LODWORD(buf[0]) = 136447746;
              *(buf + 4) = "nw_endpoint_handler_path_change";
              WORD2(buf[1]) = 2082;
              *(&buf[1] + 6) = v134;
              HIWORD(buf[2]) = 2082;
              buf[3] = v135;
              LOWORD(buf[4]) = 2082;
              *(&buf[4] + 2) = v137;
              WORD1(buf[5]) = 2082;
              *(&buf[5] + 4) = v138;
              WORD2(buf[6]) = 2082;
              *(&buf[6] + 6) = v141;
              HIWORD(buf[7]) = 2114;
              buf[8] = v142;
              _os_log_impl(&dword_181A37000, v133, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] trying fallback with unsatisfied path", buf, 0x48u);
            }
          }

          v6 = v476;
          goto LABEL_188;
        }

        v206 = *(v6 + 29);
        if (v206)
        {
LABEL_309:
          if (v206 == 2)
          {
            if (*(v6 + 30) == 3 || !nw_endpoint_flow_get_is_leaf_handler(v6[33]))
            {
              v270 = nw_endpoint_handler_get_minimize_logging(v6);
              v271 = nw_endpoint_handler_get_logging_disabled(v6);
              if (v270)
              {
                if (v271)
                {
                  goto LABEL_395;
                }

                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v272 = gconnectionLogObj;
                if (os_log_type_enabled(v272, OS_LOG_TYPE_DEBUG))
                {
                  v433 = nw_endpoint_handler_get_id_string(v476);
                  v434 = nw_endpoint_handler_dry_run_string(v476);
                  v435 = nw_endpoint_handler_copy_endpoint(v476);
                  v436 = nw_endpoint_get_logging_description(v435);
                  v437 = nw_endpoint_handler_state_string(v476);
                  v438 = nw_endpoint_handler_mode_string(v476);
                  v439 = nw_endpoint_handler_copy_current_path(v476);
                  LODWORD(buf[0]) = 136447746;
                  *(buf + 4) = "nw_endpoint_handler_path_change";
                  WORD2(buf[1]) = 2082;
                  *(&buf[1] + 6) = v433;
                  HIWORD(buf[2]) = 2082;
                  buf[3] = v434;
                  LOWORD(buf[4]) = 2082;
                  *(&buf[4] + 2) = v436;
                  WORD1(buf[5]) = 2082;
                  *(&buf[5] + 4) = v437;
                  WORD2(buf[6]) = 2082;
                  *(&buf[6] + 6) = v438;
                  HIWORD(buf[7]) = 2114;
                  buf[8] = v439;
                  _os_log_impl(&dword_181A37000, v272, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] flow handling updated path", buf, 0x48u);
                }
              }

              else
              {
                if (v271)
                {
                  goto LABEL_395;
                }

                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v272 = gconnectionLogObj;
                if (os_log_type_enabled(v272, OS_LOG_TYPE_INFO))
                {
                  v273 = nw_endpoint_handler_get_id_string(v6);
                  v274 = nw_endpoint_handler_dry_run_string(v6);
                  v275 = nw_endpoint_handler_copy_endpoint(v6);
                  v276 = nw_endpoint_get_logging_description(v275);
                  v277 = nw_endpoint_handler_state_string(v6);
                  v278 = nw_endpoint_handler_mode_string(v6);
                  v279 = v6;
                  v280 = v278;
                  v281 = nw_endpoint_handler_copy_current_path(v279);
                  LODWORD(buf[0]) = 136447746;
                  *(buf + 4) = "nw_endpoint_handler_path_change";
                  WORD2(buf[1]) = 2082;
                  *(&buf[1] + 6) = v273;
                  HIWORD(buf[2]) = 2082;
                  buf[3] = v274;
                  LOWORD(buf[4]) = 2082;
                  *(&buf[4] + 2) = v276;
                  WORD1(buf[5]) = 2082;
                  *(&buf[5] + 4) = v277;
                  WORD2(buf[6]) = 2082;
                  *(&buf[6] + 6) = v280;
                  HIWORD(buf[7]) = 2114;
                  buf[8] = v281;
                  _os_log_impl(&dword_181A37000, v272, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] flow handling updated path", buf, 0x48u);
                }
              }

              v6 = v476;
              goto LABEL_395;
            }

            v253 = nw_endpoint_handler_get_minimize_logging(v6);
            v254 = nw_endpoint_handler_get_logging_disabled(v6);
            if (!v253)
            {
              if (v254)
              {
                goto LABEL_305;
              }

              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v179 = gconnectionLogObj;
              if (!os_log_type_enabled(v179, OS_LOG_TYPE_INFO))
              {
                goto LABEL_269;
              }

              goto LABEL_268;
            }

            if (v254)
            {
              goto LABEL_305;
            }

            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v179 = gconnectionLogObj;
            if (!os_log_type_enabled(v179, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_269;
            }

LABEL_529:
            v384 = nw_endpoint_handler_get_id_string(v476);
            v385 = nw_endpoint_handler_dry_run_string(v476);
            v386 = nw_endpoint_handler_copy_endpoint(v476);
            v387 = nw_endpoint_get_logging_description(v386);
            v388 = nw_endpoint_handler_state_string(v476);
            v389 = nw_endpoint_handler_mode_string(v476);
            v390 = nw_endpoint_handler_copy_current_path(v476);
            LODWORD(buf[0]) = 136447746;
            *(buf + 4) = "nw_endpoint_handler_path_change";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = v384;
            HIWORD(buf[2]) = 2082;
            buf[3] = v385;
            LOWORD(buf[4]) = 2082;
            *(&buf[4] + 2) = v387;
            WORD1(buf[5]) = 2082;
            *(&buf[5] + 4) = v388;
            WORD2(buf[6]) = 2082;
            *(&buf[6] + 6) = v389;
            HIWORD(buf[7]) = 2114;
            buf[8] = v390;
            _os_log_impl(&dword_181A37000, v179, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] flow is no longer satisfied", buf, 0x48u);

            goto LABEL_269;
          }

          if (v206 == 3)
          {
            v207 = nw_endpoint_handler_get_minimize_logging(v6);
            v208 = nw_endpoint_handler_get_logging_disabled(v6);
            if (v207)
            {
              if (v208)
              {
                goto LABEL_395;
              }

              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v209 = gconnectionLogObj;
              if (os_log_type_enabled(v209, OS_LOG_TYPE_DEBUG))
              {
                v426 = nw_endpoint_handler_get_id_string(v476);
                v427 = nw_endpoint_handler_dry_run_string(v476);
                v428 = nw_endpoint_handler_copy_endpoint(v476);
                v429 = nw_endpoint_get_logging_description(v428);
                v430 = nw_endpoint_handler_state_string(v476);
                v431 = nw_endpoint_handler_mode_string(v476);
                v432 = nw_endpoint_handler_copy_current_path(v476);
                LODWORD(buf[0]) = 136447746;
                *(buf + 4) = "nw_endpoint_handler_path_change";
                WORD2(buf[1]) = 2082;
                *(&buf[1] + 6) = v426;
                HIWORD(buf[2]) = 2082;
                buf[3] = v427;
                LOWORD(buf[4]) = 2082;
                *(&buf[4] + 2) = v429;
                WORD1(buf[5]) = 2082;
                *(&buf[5] + 4) = v430;
                WORD2(buf[6]) = 2082;
                *(&buf[6] + 6) = v431;
                HIWORD(buf[7]) = 2114;
                buf[8] = v432;
                _os_log_impl(&dword_181A37000, v209, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] handling unsatisfied updated path for proxy", buf, 0x48u);
              }
            }

            else
            {
              if (v208)
              {
                goto LABEL_395;
              }

              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v209 = gconnectionLogObj;
              if (os_log_type_enabled(v209, OS_LOG_TYPE_INFO))
              {
                v210 = nw_endpoint_handler_get_id_string(v6);
                v211 = nw_endpoint_handler_dry_run_string(v6);
                v212 = nw_endpoint_handler_copy_endpoint(v6);
                v213 = nw_endpoint_get_logging_description(v212);
                v214 = nw_endpoint_handler_state_string(v6);
                v215 = nw_endpoint_handler_mode_string(v6);
                v216 = v6;
                v217 = v215;
                v218 = nw_endpoint_handler_copy_current_path(v216);
                LODWORD(buf[0]) = 136447746;
                *(buf + 4) = "nw_endpoint_handler_path_change";
                WORD2(buf[1]) = 2082;
                *(&buf[1] + 6) = v210;
                HIWORD(buf[2]) = 2082;
                buf[3] = v211;
                LOWORD(buf[4]) = 2082;
                *(&buf[4] + 2) = v213;
                WORD1(buf[5]) = 2082;
                *(&buf[5] + 4) = v214;
                WORD2(buf[6]) = 2082;
                *(&buf[6] + 6) = v217;
                HIWORD(buf[7]) = 2114;
                buf[8] = v218;
                _os_log_impl(&dword_181A37000, v209, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] handling unsatisfied updated path for proxy", buf, 0x48u);
              }
            }

            v6 = v476;
            goto LABEL_395;
          }

          if (!nw_endpoint_handler_should_perform_CrazyIvan46(v6) && !nw_endpoint_handler_should_do_local_only_resolution(v6))
          {
            if (*(v6 + 29))
            {
              v307 = nw_endpoint_handler_get_minimize_logging(v6);
              v308 = nw_endpoint_handler_get_logging_disabled(v6);
              if (v307)
              {
                if (v308)
                {
                  goto LABEL_341;
                }

                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v309 = gconnectionLogObj;
                if (os_log_type_enabled(v309, OS_LOG_TYPE_DEBUG))
                {
                  v454 = nw_endpoint_handler_get_id_string(v476);
                  v455 = nw_endpoint_handler_dry_run_string(v476);
                  v456 = nw_endpoint_handler_copy_endpoint(v476);
                  v457 = nw_endpoint_get_logging_description(v456);
                  v458 = nw_endpoint_handler_state_string(v476);
                  v459 = nw_endpoint_handler_mode_string(v476);
                  v460 = nw_endpoint_handler_copy_current_path(v476);
                  LODWORD(buf[0]) = 136447746;
                  *(buf + 4) = "nw_endpoint_handler_path_change";
                  WORD2(buf[1]) = 2082;
                  *(&buf[1] + 6) = v454;
                  HIWORD(buf[2]) = 2082;
                  buf[3] = v455;
                  LOWORD(buf[4]) = 2082;
                  *(&buf[4] + 2) = v457;
                  WORD1(buf[5]) = 2082;
                  *(&buf[5] + 4) = v458;
                  WORD2(buf[6]) = 2082;
                  *(&buf[6] + 6) = v459;
                  HIWORD(buf[7]) = 2114;
                  buf[8] = v460;
                  _os_log_impl(&dword_181A37000, v309, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] ignoring unsatisfied path", buf, 0x48u);
                }
              }

              else
              {
                if (v308)
                {
                  goto LABEL_341;
                }

                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v309 = gconnectionLogObj;
                if (os_log_type_enabled(v309, OS_LOG_TYPE_INFO))
                {
                  v310 = nw_endpoint_handler_get_id_string(v6);
                  v311 = nw_endpoint_handler_dry_run_string(v6);
                  v312 = nw_endpoint_handler_copy_endpoint(v6);
                  v313 = nw_endpoint_get_logging_description(v312);
                  v314 = nw_endpoint_handler_state_string(v476);
                  v315 = nw_endpoint_handler_mode_string(v476);
                  v316 = nw_endpoint_handler_copy_current_path(v476);
                  LODWORD(buf[0]) = 136447746;
                  *(buf + 4) = "nw_endpoint_handler_path_change";
                  WORD2(buf[1]) = 2082;
                  *(&buf[1] + 6) = v310;
                  HIWORD(buf[2]) = 2082;
                  buf[3] = v311;
                  LOWORD(buf[4]) = 2082;
                  *(&buf[4] + 2) = v313;
                  WORD1(buf[5]) = 2082;
                  *(&buf[5] + 4) = v314;
                  WORD2(buf[6]) = 2082;
                  *(&buf[6] + 6) = v315;
                  HIWORD(buf[7]) = 2114;
                  buf[8] = v316;
                  _os_log_impl(&dword_181A37000, v309, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] ignoring unsatisfied path", buf, 0x48u);
                }
              }

              goto LABEL_340;
            }

            if (!nw_path_trigger_inactive_cellular_agent_if_necessary(p_isa[8]))
            {
              goto LABEL_305;
            }

            v328 = nw_endpoint_handler_get_minimize_logging(v6);
            v329 = nw_endpoint_handler_get_logging_disabled(v6);
            if (v328)
            {
              if (v329)
              {
                goto LABEL_305;
              }

              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v179 = gconnectionLogObj;
              if (os_log_type_enabled(v179, OS_LOG_TYPE_DEBUG))
              {
                v461 = nw_endpoint_handler_get_id_string(v476);
                v462 = nw_endpoint_handler_dry_run_string(v476);
                v463 = nw_endpoint_handler_copy_endpoint(v476);
                v464 = nw_endpoint_get_logging_description(v463);
                v465 = nw_endpoint_handler_state_string(v476);
                v466 = nw_endpoint_handler_mode_string(v476);
                v467 = nw_endpoint_handler_copy_current_path(v476);
                LODWORD(buf[0]) = 136447746;
                *(buf + 4) = "nw_endpoint_handler_path_change";
                WORD2(buf[1]) = 2082;
                *(&buf[1] + 6) = v461;
                HIWORD(buf[2]) = 2082;
                buf[3] = v462;
                LOWORD(buf[4]) = 2082;
                *(&buf[4] + 2) = v464;
                WORD1(buf[5]) = 2082;
                *(&buf[5] + 4) = v465;
                WORD2(buf[6]) = 2082;
                *(&buf[6] + 6) = v466;
                HIWORD(buf[7]) = 2114;
                buf[8] = v467;
                _os_log_impl(&dword_181A37000, v179, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] triggering cell", buf, 0x48u);
              }
            }

            else
            {
              if (v329)
              {
                goto LABEL_305;
              }

              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v179 = gconnectionLogObj;
              if (os_log_type_enabled(v179, OS_LOG_TYPE_INFO))
              {
                v330 = nw_endpoint_handler_get_id_string(v476);
                v331 = nw_endpoint_handler_dry_run_string(v476);
                v332 = nw_endpoint_handler_copy_endpoint(v476);
                v333 = nw_endpoint_get_logging_description(v332);
                v334 = nw_endpoint_handler_state_string(v476);
                v335 = nw_endpoint_handler_mode_string(v476);
                v336 = nw_endpoint_handler_copy_current_path(v476);
                LODWORD(buf[0]) = 136447746;
                *(buf + 4) = "nw_endpoint_handler_path_change";
                WORD2(buf[1]) = 2082;
                *(&buf[1] + 6) = v330;
                HIWORD(buf[2]) = 2082;
                buf[3] = v331;
                LOWORD(buf[4]) = 2082;
                *(&buf[4] + 2) = v333;
                WORD1(buf[5]) = 2082;
                *(&buf[5] + 4) = v334;
                WORD2(buf[6]) = 2082;
                *(&buf[6] + 6) = v335;
                HIWORD(buf[7]) = 2114;
                buf[8] = v336;
                _os_log_impl(&dword_181A37000, v179, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] triggering cell", buf, 0x48u);
              }
            }

            goto LABEL_269;
          }

          v255 = nw_endpoint_handler_get_minimize_logging(v6);
          v256 = nw_endpoint_handler_get_logging_disabled(v6);
          if (v255)
          {
            if (v256)
            {
LABEL_382:
              os_unfair_lock_lock(v6 + 28);
              if ((*(v6 + 284) & 1) != 0 || v6[9])
              {
                *(v6 + 29) = 1;
                v267 = objc_alloc_init(NWConcrete_nw_endpoint_resolver);
              }

              else
              {
                *(v6 + 29) = 2;
                v267 = objc_alloc_init(NWConcrete_nw_endpoint_flow);
                LOBYTE(v267->connected_child) = v267->connected_child & 0xFC | 1;
                *&v267[8].child_timer = *(v6 + 148);
              }

              v268 = v6[33];
              v6[33] = v267;

              v145 = v476;
              os_unfair_lock_unlock(v476 + 28);
              v269 = mach_continuous_time();
              if (v269 <= 1)
              {
                v147 = 1;
              }

              else
              {
                v147 = v269;
              }

              goto LABEL_415;
            }

            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v257 = gconnectionLogObj;
            if (os_log_type_enabled(v257, OS_LOG_TYPE_DEBUG))
            {
              v440 = nw_endpoint_handler_get_id_string(v476);
              v441 = nw_endpoint_handler_dry_run_string(v476);
              v442 = nw_endpoint_handler_copy_endpoint(v476);
              v443 = nw_endpoint_get_logging_description(v442);
              v444 = nw_endpoint_handler_state_string(v476);
              v445 = nw_endpoint_handler_mode_string(v476);
              v446 = nw_endpoint_handler_copy_current_path(v476);
              LODWORD(buf[0]) = 136447746;
              *(buf + 4) = "nw_endpoint_handler_path_change";
              WORD2(buf[1]) = 2082;
              *(&buf[1] + 6) = v440;
              HIWORD(buf[2]) = 2082;
              buf[3] = v441;
              LOWORD(buf[4]) = 2082;
              *(&buf[4] + 2) = v443;
              WORD1(buf[5]) = 2082;
              *(&buf[5] + 4) = v444;
              WORD2(buf[6]) = 2082;
              *(&buf[6] + 6) = v445;
              HIWORD(buf[7]) = 2114;
              buf[8] = v446;
              _os_log_impl(&dword_181A37000, v257, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] trying resolution with unsatisfied path", buf, 0x48u);
            }
          }

          else
          {
            if (v256)
            {
              goto LABEL_382;
            }

            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v257 = gconnectionLogObj;
            if (os_log_type_enabled(v257, OS_LOG_TYPE_INFO))
            {
              v258 = nw_endpoint_handler_get_id_string(v6);
              v259 = nw_endpoint_handler_dry_run_string(v6);
              v260 = nw_endpoint_handler_copy_endpoint(v6);
              v261 = nw_endpoint_get_logging_description(v260);
              v262 = nw_endpoint_handler_state_string(v6);
              v263 = nw_endpoint_handler_mode_string(v6);
              v264 = v6;
              v265 = v263;
              v266 = nw_endpoint_handler_copy_current_path(v264);
              LODWORD(buf[0]) = 136447746;
              *(buf + 4) = "nw_endpoint_handler_path_change";
              WORD2(buf[1]) = 2082;
              *(&buf[1] + 6) = v258;
              HIWORD(buf[2]) = 2082;
              buf[3] = v259;
              LOWORD(buf[4]) = 2082;
              *(&buf[4] + 2) = v261;
              WORD1(buf[5]) = 2082;
              *(&buf[5] + 4) = v262;
              WORD2(buf[6]) = 2082;
              *(&buf[6] + 6) = v265;
              HIWORD(buf[7]) = 2114;
              buf[8] = v266;
              _os_log_impl(&dword_181A37000, v257, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] trying resolution with unsatisfied path", buf, 0x48u);
            }
          }

          v6 = v476;
          goto LABEL_382;
        }

        if (nw_endpoint_handler_should_transform(v6[3], v6[4]))
        {
          v226 = nw_endpoint_handler_get_minimize_logging(v6);
          v227 = nw_endpoint_handler_get_logging_disabled(v6);
          if (v226)
          {
            if (v227)
            {
LABEL_351:
              os_unfair_lock_lock(v6 + 28);
              if ((*(v6 + 284) & 1) != 0 || v6[9])
              {
                *(v6 + 29) = 5;
                v238 = objc_alloc_init(NWConcrete_nw_endpoint_transform);
              }

              else
              {
                *(v6 + 29) = 2;
                v238 = objc_alloc_init(NWConcrete_nw_endpoint_flow);
                LOBYTE(v238->blocked_protocols) = v238->blocked_protocols & 0xFC | 1;
                *&v238[10].next_child_endpoint_index = *(v6 + 148);
              }

              v239 = v6[33];
              v6[33] = v238;

              v145 = v476;
              os_unfair_lock_unlock(v476 + 28);
              v240 = mach_continuous_time();
              if (v240 <= 1)
              {
                v147 = 1;
              }

              else
              {
                v147 = v240;
              }

              goto LABEL_415;
            }

            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v228 = gconnectionLogObj;
            if (os_log_type_enabled(v228, OS_LOG_TYPE_DEBUG))
            {
              v447 = nw_endpoint_handler_get_id_string(v476);
              v448 = nw_endpoint_handler_dry_run_string(v476);
              v449 = nw_endpoint_handler_copy_endpoint(v476);
              v450 = nw_endpoint_get_logging_description(v449);
              v451 = nw_endpoint_handler_state_string(v476);
              v452 = nw_endpoint_handler_mode_string(v476);
              v453 = nw_endpoint_handler_copy_current_path(v476);
              LODWORD(buf[0]) = 136447746;
              *(buf + 4) = "nw_endpoint_handler_path_change";
              WORD2(buf[1]) = 2082;
              *(&buf[1] + 6) = v447;
              HIWORD(buf[2]) = 2082;
              buf[3] = v448;
              LOWORD(buf[4]) = 2082;
              *(&buf[4] + 2) = v450;
              WORD1(buf[5]) = 2082;
              *(&buf[5] + 4) = v451;
              WORD2(buf[6]) = 2082;
              *(&buf[6] + 6) = v452;
              HIWORD(buf[7]) = 2114;
              buf[8] = v453;
              _os_log_impl(&dword_181A37000, v228, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] trying transform with unsatisfied path", buf, 0x48u);
            }
          }

          else
          {
            if (v227)
            {
              goto LABEL_351;
            }

            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v228 = gconnectionLogObj;
            if (os_log_type_enabled(v228, OS_LOG_TYPE_INFO))
            {
              v229 = nw_endpoint_handler_get_id_string(v6);
              v230 = nw_endpoint_handler_dry_run_string(v6);
              v231 = nw_endpoint_handler_copy_endpoint(v6);
              v232 = nw_endpoint_get_logging_description(v231);
              v233 = nw_endpoint_handler_state_string(v6);
              v234 = nw_endpoint_handler_mode_string(v6);
              v235 = v6;
              v236 = v234;
              v237 = nw_endpoint_handler_copy_current_path(v235);
              LODWORD(buf[0]) = 136447746;
              *(buf + 4) = "nw_endpoint_handler_path_change";
              WORD2(buf[1]) = 2082;
              *(&buf[1] + 6) = v229;
              HIWORD(buf[2]) = 2082;
              buf[3] = v230;
              LOWORD(buf[4]) = 2082;
              *(&buf[4] + 2) = v232;
              WORD1(buf[5]) = 2082;
              *(&buf[5] + 4) = v233;
              WORD2(buf[6]) = 2082;
              *(&buf[6] + 6) = v236;
              HIWORD(buf[7]) = 2114;
              buf[8] = v237;
              _os_log_impl(&dword_181A37000, v228, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] trying transform with unsatisfied path", buf, 0x48u);
            }
          }

          v6 = v476;
          goto LABEL_351;
        }

        v206 = *(v6 + 29);
        if (v206)
        {
          goto LABEL_309;
        }

        if ((v62 & 1) == 0 && !nw_path_has_proxy_settings(p_isa[8]) || (nw_parameters_get_proxy_applied(v6[4]) & 1) != 0 || (nw_parameters_get_no_proxy(v6[4]) & 1) != 0 || !nw_endpoint_proxy_unsatisfied_handler_should_use_proxy(p_isa[8]))
        {
          v206 = *(v6 + 29);
          goto LABEL_309;
        }

        v283 = nw_endpoint_handler_get_minimize_logging(v6);
        v284 = nw_endpoint_handler_get_logging_disabled(v6);
        if (v283)
        {
          if (v284)
          {
LABEL_409:
            os_unfair_lock_lock(v476 + 28);
            if ((*(v476 + 284) & 1) != 0 || v476[9])
            {
              *(v476 + 29) = 3;
              v293 = objc_alloc_init(NWConcrete_nw_endpoint_proxy);
            }

            else
            {
              *(v476 + 29) = 2;
              v293 = objc_alloc_init(NWConcrete_nw_endpoint_flow);
              LOBYTE(v293->connected_child) = v293->connected_child & 0xFC | 1;
              *&v293[10].custom_proxy_configs = *(v476 + 148);
            }

            v294 = v476[33];
            v476[33] = v293;

            v145 = v476;
            os_unfair_lock_unlock(v476 + 28);
            v295 = mach_continuous_time();
            if (v295 <= 1)
            {
              v147 = 1;
            }

            else
            {
              v147 = v295;
            }

            goto LABEL_415;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v285 = gconnectionLogObj;
          if (os_log_type_enabled(v285, OS_LOG_TYPE_DEBUG))
          {
            v468 = nw_endpoint_handler_get_id_string(v476);
            v469 = nw_endpoint_handler_dry_run_string(v476);
            v470 = nw_endpoint_handler_copy_endpoint(v476);
            v471 = nw_endpoint_get_logging_description(v470);
            v472 = nw_endpoint_handler_state_string(v476);
            v473 = nw_endpoint_handler_mode_string(v476);
            v474 = nw_endpoint_handler_copy_current_path(v476);
            LODWORD(buf[0]) = 136447746;
            *(buf + 4) = "nw_endpoint_handler_path_change";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = v468;
            HIWORD(buf[2]) = 2082;
            buf[3] = v469;
            LOWORD(buf[4]) = 2082;
            *(&buf[4] + 2) = v471;
            WORD1(buf[5]) = 2082;
            *(&buf[5] + 4) = v472;
            WORD2(buf[6]) = 2082;
            *(&buf[6] + 6) = v473;
            HIWORD(buf[7]) = 2114;
            buf[8] = v474;
            _os_log_impl(&dword_181A37000, v285, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] trying proxy with unsatisfied path", buf, 0x48u);
          }
        }

        else
        {
          if (v284)
          {
            goto LABEL_409;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v285 = gconnectionLogObj;
          if (os_log_type_enabled(v285, OS_LOG_TYPE_INFO))
          {
            v286 = nw_endpoint_handler_get_id_string(v476);
            v287 = nw_endpoint_handler_dry_run_string(v476);
            v288 = nw_endpoint_handler_copy_endpoint(v476);
            v289 = nw_endpoint_get_logging_description(v288);
            v290 = nw_endpoint_handler_state_string(v476);
            v291 = nw_endpoint_handler_mode_string(v476);
            v292 = nw_endpoint_handler_copy_current_path(v476);
            LODWORD(buf[0]) = 136447746;
            *(buf + 4) = "nw_endpoint_handler_path_change";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = v286;
            HIWORD(buf[2]) = 2082;
            buf[3] = v287;
            LOWORD(buf[4]) = 2082;
            *(&buf[4] + 2) = v289;
            WORD1(buf[5]) = 2082;
            *(&buf[5] + 4) = v290;
            WORD2(buf[6]) = 2082;
            *(&buf[6] + 6) = v291;
            HIWORD(buf[7]) = 2114;
            buf[8] = v292;
            _os_log_impl(&dword_181A37000, v285, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] trying proxy with unsatisfied path", buf, 0x48u);
          }
        }

        goto LABEL_409;
      }

      v484 = 0;
      v485 = &v484;
      v486 = 0x2020000000;
      v487 = 0;
      if (status != 2)
      {
        v34 = 0;
        goto LABEL_54;
      }

      if (nw_path_policy_abort(p_isa[8]))
      {
        if ((*(v6 + 284) & 0x20) != 0)
        {
          if (nw_endpoint_handler_get_logging_disabled(v6))
          {
            goto LABEL_290;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v35 = gconnectionLogObj;
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
          {
            v356 = nw_endpoint_handler_get_id_string(v476);
            v357 = nw_endpoint_handler_dry_run_string(v476);
            v358 = nw_endpoint_handler_copy_endpoint(v476);
            v359 = nw_endpoint_get_logging_description(v358);
            v360 = nw_endpoint_handler_state_string(v476);
            v361 = nw_endpoint_handler_mode_string(v476);
            v362 = nw_endpoint_handler_copy_current_path(v476);
            LODWORD(buf[0]) = 136447746;
            *(buf + 4) = "nw_endpoint_handler_path_change";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = v356;
            HIWORD(buf[2]) = 2082;
            buf[3] = v357;
            LOWORD(buf[4]) = 2082;
            *(&buf[4] + 2) = v359;
            WORD1(buf[5]) = 2082;
            *(&buf[5] + 4) = v360;
            WORD2(buf[6]) = 2082;
            *(&buf[6] + 6) = v361;
            HIWORD(buf[7]) = 2114;
            buf[8] = v362;
            _os_log_impl(&dword_181A37000, v35, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] received policy abort", buf, 0x48u);
          }

          goto LABEL_289;
        }

        if ((*(v6 + 284) & 0x40) != 0)
        {
LABEL_290:
          nw_endpoint_handler_handle_failure(v6);
          v199 = [[NWConcrete_nw_error alloc] initWithDomain:53 code:?];
          *(v6 + 20) = 786433;
          nw_endpoint_handler_report(v6, 0, v6 + 40, v199);

LABEL_340:
          p_isa = &v475->super.isa;
          goto LABEL_341;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v35 = gconnectionLogObj;
        if (!os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
LABEL_289:

          v6 = v476;
          goto LABEL_290;
        }

        v36 = v6;
        if (*(v6 + 284))
        {
          v37 = "dry-run ";
        }

        else
        {
          v37 = "";
        }

        v38 = nw_endpoint_handler_copy_endpoint(v36);
        v39 = v38;
        if (v38)
        {
          v40 = _nw_endpoint_get_logging_description(v38);
        }

        else
        {
          v40 = "<NULL>";
        }

        v164 = *(v476 + 30);
        if (v164 > 5)
        {
          v165 = "unknown-state";
        }

        else
        {
          v165 = off_1E6A31048[v164];
        }

        v166 = v476;
        v167 = v166;
        v168 = *(v476 + 29);
        if (v168 > 2)
        {
          switch(v168)
          {
            case 3:
              v169 = "proxy";
              goto LABEL_288;
            case 4:
              v169 = "fallback";
              goto LABEL_288;
            case 5:
              v169 = "transform";
              goto LABEL_288;
          }
        }

        else
        {
          switch(v168)
          {
            case 0:
              v169 = "path";
              goto LABEL_288;
            case 1:
              v169 = "resolver";
              goto LABEL_288;
            case 2:
              v169 = nw_endpoint_flow_mode_string(v166[33]);
LABEL_288:

              v197 = v167;
              os_unfair_lock_lock(v167 + 28);
              v198 = v475->current_path;
              os_unfair_lock_unlock(v167 + 28);

              LODWORD(buf[0]) = 136447746;
              *(buf + 4) = "nw_endpoint_handler_path_change";
              WORD2(buf[1]) = 2082;
              *(&buf[1] + 6) = v476 + 23;
              HIWORD(buf[2]) = 2082;
              buf[3] = v37;
              LOWORD(buf[4]) = 2082;
              *(&buf[4] + 2) = v40;
              WORD1(buf[5]) = 2082;
              *(&buf[5] + 4) = v165;
              WORD2(buf[6]) = 2082;
              *(&buf[6] + 6) = v169;
              HIWORD(buf[7]) = 2114;
              buf[8] = v198;
              _os_log_impl(&dword_181A37000, v35, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] received policy abort", buf, 0x48u);

              goto LABEL_289;
          }
        }

        v169 = "unknown-mode";
        goto LABEL_288;
      }

      if (!_nw_path_may_span_multiple_interfaces(p_isa[8]))
      {
        status = 2;
        v34 = 1;
        goto LABEL_54;
      }

      v488[0] = 0;
      v488[1] = v488;
      v488[2] = 0x2020000000;
      LOBYTE(v489) = 0;
      v75 = p_isa[8];
      enumerate_block[0] = MEMORY[0x1E69E9820];
      enumerate_block[1] = 3221225472;
      enumerate_block[2] = ___ZL31nw_endpoint_handler_path_changeP30NWConcrete_nw_endpoint_handler_block_invoke;
      enumerate_block[3] = &unk_1E6A30F78;
      v76 = v6;
      v481 = v76;
      v482 = v488;
      v483 = &v484;
      nw_path_enumerate_interfaces(v75, enumerate_block);
      if ((v485[3] & 1) != 0 || (*(v488[1] + 24) & 1) != 0 || !nw_parameters_get_use_awdl(v76[4]))
      {
LABEL_136:

        _Block_object_dispose(v488, 8);
        status = 2;
        v34 = 1;
        p_isa = &v475->super.isa;
        v6 = v476;
        goto LABEL_54;
      }

      v77 = _nw_interface_create_with_name("awdl0");
      if (!v77 || (nw_path_interface_prohibited_by_parameters(p_isa[8], v77) & 1) != 0)
      {
LABEL_135:

        goto LABEL_136;
      }

      v78 = nw_endpoint_handler_get_minimize_logging(v76);
      v79 = nw_endpoint_handler_get_logging_disabled(v76);
      if (v78)
      {
        if (v79)
        {
          goto LABEL_134;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v80 = gconnectionLogObj;
        if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
        {
          v405 = nw_endpoint_handler_get_id_string(v76);
          v406 = nw_endpoint_handler_dry_run_string(v76);
          v407 = nw_endpoint_handler_copy_endpoint(v76);
          v408 = nw_endpoint_get_logging_description(v407);
          v409 = nw_endpoint_handler_state_string(v76);
          v410 = nw_endpoint_handler_mode_string(v76);
          v411 = nw_endpoint_handler_copy_current_path(v76);
          LODWORD(buf[0]) = 136447746;
          *(buf + 4) = "nw_endpoint_handler_path_change";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = v405;
          HIWORD(buf[2]) = 2082;
          buf[3] = v406;
          LOWORD(buf[4]) = 2082;
          *(&buf[4] + 2) = v408;
          WORD1(buf[5]) = 2082;
          *(&buf[5] + 4) = v409;
          WORD2(buf[6]) = 2082;
          *(&buf[6] + 6) = v410;
          HIWORD(buf[7]) = 2114;
          buf[8] = v411;
          _os_log_impl(&dword_181A37000, v80, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] overriding unsatisfied, awdl eligible", buf, 0x48u);
        }
      }

      else
      {
        if (v79)
        {
LABEL_134:
          *(v485 + 24) = 1;
          goto LABEL_135;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v80 = gconnectionLogObj;
        if (os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
        {
          v81 = nw_endpoint_handler_get_id_string(v76);
          v82 = nw_endpoint_handler_dry_run_string(v76);
          v83 = nw_endpoint_handler_copy_endpoint(v76);
          v84 = nw_endpoint_get_logging_description(v83);
          v85 = nw_endpoint_handler_state_string(v76);
          v86 = nw_endpoint_handler_mode_string(v76);
          v87 = nw_endpoint_handler_copy_current_path(v76);
          LODWORD(buf[0]) = 136447746;
          *(buf + 4) = "nw_endpoint_handler_path_change";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = v81;
          HIWORD(buf[2]) = 2082;
          buf[3] = v82;
          LOWORD(buf[4]) = 2082;
          *(&buf[4] + 2) = v84;
          WORD1(buf[5]) = 2082;
          *(&buf[5] + 4) = v85;
          WORD2(buf[6]) = 2082;
          *(&buf[6] + 6) = v86;
          HIWORD(buf[7]) = 2114;
          buf[8] = v87;
          _os_log_impl(&dword_181A37000, v80, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] overriding unsatisfied, awdl eligible", buf, 0x48u);
        }
      }

      goto LABEL_134;
    }

    if (nw_endpoint_handler_triggered_agents_updated(v6))
    {
      goto LABEL_38;
    }

    if ((*(v6 + 284) & 0x20) != 0)
    {
      if (nw_endpoint_handler_get_logging_disabled(v6))
      {
        goto LABEL_342;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v56 = gconnectionLogObj;
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
      {
        v337 = nw_endpoint_handler_get_id_string(v476);
        v338 = nw_endpoint_handler_dry_run_string(v476);
        v339 = nw_endpoint_handler_copy_endpoint(v476);
        v340 = nw_endpoint_get_logging_description(v339);
        v341 = nw_endpoint_handler_state_string(v476);
        v342 = nw_endpoint_handler_mode_string(v476);
        v343 = nw_endpoint_handler_copy_current_path(v476);
        LODWORD(buf[0]) = 136447746;
        *(buf + 4) = "nw_endpoint_handler_path_change";
        WORD2(buf[1]) = 2082;
        *(&buf[1] + 6) = v337;
        HIWORD(buf[2]) = 2082;
        buf[3] = v338;
        LOWORD(buf[4]) = 2082;
        *(&buf[4] + 2) = v340;
        WORD1(buf[5]) = 2082;
        *(&buf[5] + 4) = v341;
        WORD2(buf[6]) = 2082;
        *(&buf[6] + 6) = v342;
        HIWORD(buf[7]) = 2114;
        buf[8] = v343;
        _os_log_impl(&dword_181A37000, v56, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] triggered agents have not yet updated", buf, 0x48u);
      }

      goto LABEL_257;
    }

    if ((*(v6 + 284) & 0x40) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v56 = gconnectionLogObj;
      if (!os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
      {
        goto LABEL_257;
      }

      v57 = v6;
      if (*(v6 + 284))
      {
        v58 = "dry-run ";
      }

      else
      {
        v58 = "";
      }

      v59 = nw_endpoint_handler_copy_endpoint(v57);
      v60 = v59;
      if (v59)
      {
        v61 = _nw_endpoint_get_logging_description(v59);
      }

      else
      {
        v61 = "<NULL>";
      }

      v148 = *(v476 + 30);
      if (v148 > 5)
      {
        v149 = "unknown-state";
      }

      else
      {
        v149 = off_1E6A31048[v148];
      }

      v150 = v476;
      v151 = v150;
      v152 = *(v150 + 29);
      if (v152 > 2)
      {
        switch(v152)
        {
          case 3:
            v153 = "proxy";
            goto LABEL_256;
          case 4:
            v153 = "fallback";
            goto LABEL_256;
          case 5:
            v153 = "transform";
            goto LABEL_256;
        }
      }

      else
      {
        switch(v152)
        {
          case 0:
            v153 = "path";
            goto LABEL_256;
          case 1:
            v153 = "resolver";
            goto LABEL_256;
          case 2:
            v153 = nw_endpoint_flow_mode_string(v150[33]);
LABEL_256:

            v176 = v151;
            os_unfair_lock_lock(v151 + 28);
            v177 = v475->current_path;
            os_unfair_lock_unlock(v151 + 28);

            LODWORD(buf[0]) = 136447746;
            *(buf + 4) = "nw_endpoint_handler_path_change";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = v476 + 23;
            HIWORD(buf[2]) = 2082;
            buf[3] = v58;
            LOWORD(buf[4]) = 2082;
            *(&buf[4] + 2) = v61;
            WORD1(buf[5]) = 2082;
            *(&buf[5] + 4) = v149;
            WORD2(buf[6]) = 2082;
            *(&buf[6] + 6) = v153;
            HIWORD(buf[7]) = 2114;
            buf[8] = v177;
            _os_log_impl(&dword_181A37000, v56, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] triggered agents have not yet updated", buf, 0x48u);

LABEL_257:
            p_isa = &v475->super.isa;
            goto LABEL_342;
        }
      }

      v153 = "unknown-mode";
      goto LABEL_256;
    }
  }

LABEL_342:
}