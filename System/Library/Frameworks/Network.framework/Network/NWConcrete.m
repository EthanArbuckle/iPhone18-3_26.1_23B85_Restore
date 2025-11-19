@interface NWConcrete
@end

@implementation NWConcrete

uint64_t __37__NWConcrete_nw_activity_description__block_invoke@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v59 = *MEMORY[0x1E69E9840];
  std::ostringstream::basic_ostringstream[abi:nn200100](&v47);
  memset(out, 0, 37);
  if (!uuid_is_null((*(a1 + 32) + 8)))
  {
    uuid_unparse((*(a1 + 32) + 8), out);
  }

  v46 = 0;
  v4 = *(a1 + 32);
  if (*(v4 + 24))
  {
    asprintf(&v46, " (investigation %llu)", *(v4 + 24));
    v4 = *(a1 + 32);
  }

  v45 = 0;
  v5 = *(v4 + 72);
  if (v5)
  {
    asprintf(&v45, " (underlying error %s:%d)", v5, *(v4 + 128));
  }

  else
  {
    v7 = *(v4 + 124);
    v6 = *(v4 + 128);
    if (v7 | v6)
    {
      asprintf(&v45, " (underlying error %d:%d)", v7, v6);
    }
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v47, "<nw_activity ", 13);
  v8 = MEMORY[0x1865DC420](&v47, *(*(a1 + 32) + 116));
  v9 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v8, ":", 1);
  v10 = MEMORY[0x1865DC420](v9, *(*(a1 + 32) + 112));
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v10, " [", 2);
  if (uuid_is_null((*(a1 + 32) + 8)))
  {
    v11 = "No UUID";
  }

  else
  {
    v11 = out;
  }

  v12 = strlen(v11);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v10, v11, v12);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v10, "]", 1);
  if ((*(*(a1 + 32) + 140) & 2) != 0)
  {
    v13 = " (lightweight)";
  }

  else
  {
    v13 = "";
  }

  if ((*(*(a1 + 32) + 140) & 2) != 0)
  {
    v14 = 14;
  }

  else
  {
    v14 = 0;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v10, v13, v14);
  if (*(*(a1 + 32) + 140))
  {
    v15 = " (retry)";
  }

  else
  {
    v15 = "";
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v10, v15, 8 * (*(*(a1 + 32) + 140) & 1));
  is_global_parent = nw_activity_is_global_parent(*(a1 + 32));
  if (is_global_parent)
  {
    v17 = " (global parent)";
  }

  else
  {
    v17 = "";
  }

  if (is_global_parent)
  {
    v18 = 16;
  }

  else
  {
    v18 = 0;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v10, v17, v18);
  v19 = *(*(a1 + 32) + 56);
  if (v19)
  {
    if (nw_activity_is_global_parent(v19))
    {
      v20 = " (parent is global)";
    }

    else
    {
      v20 = "";
    }
  }

  else
  {
    v20 = "";
  }

  v21 = strlen(v20);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v10, v20, v21);
  is_selected_for_reporting = nw_activity_is_selected_for_reporting(*(a1 + 32));
  if (is_selected_for_reporting)
  {
    v23 = " reported";
  }

  else
  {
    v23 = "";
  }

  if (is_selected_for_reporting)
  {
    v24 = 9;
  }

  else
  {
    v24 = 0;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v10, v23, v24);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v10, " (reporting strategy ", 21);
  v25 = *(*(a1 + 32) + 132);
  if (v25 > 3)
  {
    v26 = "invalid";
  }

  else
  {
    v26 = off_1E6A361E0[v25];
  }

  v27 = strlen(v26);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v10, v26, v27);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v10, ")", 1);
  if (v46)
  {
    v28 = v46;
  }

  else
  {
    v28 = "";
  }

  v29 = strlen(v28);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v10, v28, v29);
  if ((*(*(a1 + 32) + 140) & 8) != 0)
  {
    v30 = " complete (reason ";
  }

  else
  {
    v30 = "";
  }

  if ((*(*(a1 + 32) + 140) & 8) != 0)
  {
    v31 = 18;
  }

  else
  {
    v31 = 0;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v10, v30, v31);
  v32 = *(a1 + 32);
  v33 = "";
  if ((*(v32 + 140) & 8) != 0)
  {
    v34 = *(v32 + 136) - 1;
    if (v34 > 3)
    {
      v33 = "invalid";
    }

    else
    {
      v33 = off_1E6A378D0[v34];
    }
  }

  v35 = strlen(v33);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v10, v33, v35);
  v36 = *(*(a1 + 32) + 140);
  if ((v36 & 8) != 0)
  {
    v37 = ")";
  }

  else
  {
    v37 = "";
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v10, v37, (v36 >> 3) & 1);
  if (v45)
  {
    v38 = v45;
  }

  else
  {
    v38 = "";
  }

  v39 = strlen(v38);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v10, v38, v39);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v10, ">", 1);
  if (v19)
  {
  }

  if (v46)
  {
    free(v46);
    v46 = 0;
  }

  if (v45)
  {
    free(v45);
    v45 = 0;
  }

  if ((v56 & 0x10) != 0)
  {
    v41 = v55;
    if (v55 < v52)
    {
      v55 = v52;
      v41 = v52;
    }

    v42 = &v51;
  }

  else
  {
    if ((v56 & 8) == 0)
    {
      v40 = 0;
      a2[23] = 0;
      goto LABEL_79;
    }

    v42 = v50;
    v41 = v50[2];
  }

  v43 = *v42;
  v40 = v41 - *v42;
  if (v40 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (v40 >= 0x17)
  {
    operator new();
  }

  a2[23] = v40;
  if (v40)
  {
    memmove(a2, v43, v40);
  }

LABEL_79:
  a2[v40] = 0;
  v47 = *MEMORY[0x1E69E54E8];
  *(&v47 + *(v47 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v48 = MEMORY[0x1E69E5548] + 16;
  if (v54 < 0)
  {
    operator delete(__p);
  }

  v48 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v49);
  std::ostream::~ostream();
  return MEMORY[0x1865DC4F0](&v57);
}

uint64_t __36__NWConcrete_nw_association_dealloc__block_invoke(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = nw_hash_node_get_object(a2);
  extra = nw_hash_node_get_extra(a2);
  v6 = extra[5];
  if (v6)
  {
    nw_protocol_definition_deallocate_cache_entry(v4, v6);
  }

  nw_context_remove_cache_entry(*(a1 + 32), extra);
  if (nw_hash_table_remove_node(*(*(*(a1 + 40) + 8) + 24), a2))
  {
    goto LABEL_11;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v7 = gLogObj;
  *buf = 136446466;
  v19 = "[NWConcrete_nw_association dealloc]_block_invoke";
  v20 = 2048;
  v21 = a2;
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
        *buf = 136446466;
        v19 = "[NWConcrete_nw_association dealloc]_block_invoke";
        v20 = 2048;
        v21 = a2;
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s Association failed to remove cache entry for node %p", buf, 0x16u);
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
          *buf = 136446722;
          v19 = "[NWConcrete_nw_association dealloc]_block_invoke";
          v20 = 2048;
          v21 = a2;
          v22 = 2082;
          v23 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v13, "%{public}s Association failed to remove cache entry for node %p, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(backtrace_string);
        if (v8)
        {
          goto LABEL_10;
        }

        goto LABEL_11;
      }

      if (v14)
      {
        *buf = 136446466;
        v19 = "[NWConcrete_nw_association dealloc]_block_invoke";
        v20 = 2048;
        v21 = a2;
        _os_log_impl(&dword_181A37000, v9, v13, "%{public}s Association failed to remove cache entry for node %p, no backtrace", buf, 0x16u);
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
        *buf = 136446466;
        v19 = "[NWConcrete_nw_association dealloc]_block_invoke";
        v20 = 2048;
        v21 = a2;
        _os_log_impl(&dword_181A37000, v9, v15, "%{public}s Association failed to remove cache entry for node %p, backtrace limit exceeded", buf, 0x16u);
      }
    }
  }

  if (v8)
  {
LABEL_10:
    free(v8);
  }

LABEL_11:

  return 1;
}

void __35__NWConcrete_nw_connection_dealloc__block_invoke(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (__nwlog_connection_log::onceToken[0] != -1)
  {
    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
  }

  v4 = gconnectionLogObj;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = *(v5 + 448);
    v7 = *(v5 + 8);
    v8 = v7;
    if (v7)
    {
      logging_description = _nw_endpoint_get_logging_description(v7);
    }

    else
    {
      logging_description = "<NULL>";
    }

    v10[0] = 67109634;
    v10[1] = v6;
    v11 = 2082;
    v12 = logging_description;
    v13 = 2082;
    v14 = a2;
    _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_INFO, "[C%u %{public}s %{public}s] dealloc", v10, 0x1Cu);
  }
}

const char *__42__NWConcrete_nw_listener_copyPeerDeviceID__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 232);
  if (result)
  {
    result = strdup(result);
    if (!result)
    {
      v3 = __nwlog_obj();
      os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
      v4 = _os_log_send_and_compose_impl();

      result = __nwlog_should_abort(v4);
      if (result)
      {
        __break(1u);
        return result;
      }

      free(v4);
      result = 0;
    }

    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  return result;
}

void __43__NWConcrete_nw_listener_copyPeerTXTRecord__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 240);
  if (v1)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v1);
  }
}

uint64_t __44__NWConcrete_nw_resolver_config_description__block_invoke(uint64_t a1, char *__s)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = strlen(__s);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>((v3 + 48), __s, v4);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>((v3 + 48), " ", 1);
  return 1;
}

uint64_t __58__NWConcrete_nw_ethernet_channel_updateClientState_error___block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 40) + 8) + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48), *(a1 + 32));
  }

  return result;
}

void __47__NWConcrete_nw_ethernet_channel_createChannel__block_invoke(uint64_t a1)
{
  v170 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2 && *(v2 + 152))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_8;
    }

    v4 = *(a1 + 32);
    v5 = *(v4 + 24);
    v6 = v4 + 115;
    LODWORD(v4) = *(v4 + 168);
    *buf = 136447234;
    *&buf[4] = "[NWConcrete_nw_ethernet_channel createChannel]_block_invoke";
    *&buf[12] = 2080;
    *&buf[14] = v5;
    *&buf[22] = 1042;
    LODWORD(v162) = 16;
    WORD2(v162) = 2098;
    *(&v162 + 6) = v6;
    HIWORD(v162) = 1024;
    *v163 = v4;
    v7 = "%{public}s [%s: nexus instance %{public,uuid_t}.16P <fd %d>] INPUT SOURCE: READ EVENT";
    v8 = v3;
    v9 = 44;
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_8;
    }

    v10 = *(a1 + 32);
    *buf = 136446466;
    *&buf[4] = "[NWConcrete_nw_ethernet_channel createChannel]_block_invoke";
    *&buf[12] = 2114;
    *&buf[14] = v10;
    v7 = "%{public}s [%{public}@] INPUT SOURCE: READ EVENT";
    v8 = v3;
    v9 = 22;
  }

  _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEBUG, v7, buf, v9);
LABEL_8:

  v11 = *(a1 + 32);
  if (v11[112] != 1)
  {
    v11[112] = 1;
    nw_queue_suspend_source(*(*(a1 + 32) + 104));
    v12 = *(a1 + 32);
    if (v12)
    {
      goto LABEL_11;
    }

    v63 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "receiveFramesfromRings";
    v64 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(block[0]) = 0;
    if (__nwlog_fault(v64, type, block))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v65 = __nwlog_obj();
        v66 = type[0];
        if (os_log_type_enabled(v65, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "receiveFramesfromRings";
          _os_log_impl(&dword_181A37000, v65, v66, "%{public}s called with null ethernet_channel", buf, 0xCu);
        }
      }

      else if (LOBYTE(block[0]) == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v65 = __nwlog_obj();
        v68 = type[0];
        v69 = os_log_type_enabled(v65, type[0]);
        if (backtrace_string)
        {
          if (v69)
          {
            *buf = 136446466;
            *&buf[4] = "receiveFramesfromRings";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v65, v68, "%{public}s called with null ethernet_channel, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_90;
        }

        if (v69)
        {
          *buf = 136446210;
          *&buf[4] = "receiveFramesfromRings";
          _os_log_impl(&dword_181A37000, v65, v68, "%{public}s called with null ethernet_channel, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v65 = __nwlog_obj();
        v70 = type[0];
        if (os_log_type_enabled(v65, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "receiveFramesfromRings";
          _os_log_impl(&dword_181A37000, v65, v70, "%{public}s called with null ethernet_channel, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_90:
    if (v64)
    {
      free(v64);
    }

    goto LABEL_66;
  }

  v12 = v11;
LABEL_11:
  os_unfair_lock_lock(v12 + 2);
  if (!*(v12 + 7) || !*(v12 + 19) || !*(v12 + 22) || (v13 = os_channel_available_slot_count()) == 0)
  {
    os_unfair_lock_unlock(v12 + 2);

    goto LABEL_66;
  }

  v14 = *(v12 + 19);
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v15 = gLogObj;
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
  if (v14)
  {
    if (v16)
    {
      v17 = *(v12 + 3);
      v18 = *(v12 + 42);
      *buf = 136447490;
      *&buf[4] = "receiveFramesfromRings";
      *&buf[12] = 2080;
      *&buf[14] = v17;
      *&buf[22] = 1042;
      LODWORD(v162) = 16;
      WORD2(v162) = 2098;
      *(&v162 + 6) = v12 + 115;
      HIWORD(v162) = 1024;
      *v163 = v18;
      *&v163[4] = 1024;
      *&v163[6] = v13;
      v19 = "%{public}s [%s: nexus instance %{public,uuid_t}.16P <fd %d>] receiveDatafromRing: avail slots %u";
      v20 = v15;
      v21 = 50;
LABEL_21:
      _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_DEBUG, v19, buf, v21);
    }
  }

  else if (v16)
  {
    *buf = 136446722;
    *&buf[4] = "receiveFramesfromRings";
    *&buf[12] = 2114;
    *&buf[14] = v12;
    *&buf[22] = 1024;
    LODWORD(v162) = v13;
    v19 = "%{public}s [%{public}@] receiveDatafromRing: avail slots %u";
    v20 = v15;
    v21 = 28;
    goto LABEL_21;
  }

  v23 = v12 + 115;
  v24 = &v162 + 8;
  v25 = v152;
  v26 = 1;
  while (1)
  {
    if (!v26)
    {
      goto LABEL_65;
    }

    v147 = v24;
    v148 = v25;
    v149 = v23;
    v150 = v12;
    v159 = 0u;
    v160 = 0u;
    *type = 0u;
    v158 = 0u;
    if (!os_channel_get_next_slot())
    {
      v52 = *(v12 + 19);
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v53 = gLogObj;
      v54 = os_log_type_enabled(v53, OS_LOG_TYPE_ERROR);
      if (v52)
      {
        if (!v54)
        {
          goto LABEL_60;
        }

        v55 = *(v12 + 3);
        v56 = *(v12 + 42);
        *buf = 136447490;
        *&buf[4] = "receiveOneFramefromRing_locked";
        *&buf[12] = 2080;
        *&buf[14] = v55;
        *&buf[22] = 1042;
        LODWORD(v162) = 16;
        WORD2(v162) = 2098;
        *(&v162 + 6) = v149;
        HIWORD(v162) = 1024;
        *v163 = v56;
        *&v163[4] = 2112;
        *&v163[6] = @"NULL RX next slot";
        v57 = "%{public}s [%s: nexus instance %{public,uuid_t}.16P <fd %d>]  %@";
        v58 = v53;
        v59 = 54;
      }

      else
      {
        if (!v54)
        {
          goto LABEL_60;
        }

        *buf = 136446722;
        *&buf[4] = "receiveOneFramefromRing_locked";
        *&buf[12] = 2114;
        *&buf[14] = v12;
        *&buf[22] = 2112;
        *&v162 = @"NULL RX next slot";
        v57 = "%{public}s [%{public}@]  %@";
        v58 = v53;
        v59 = 32;
      }

      _os_log_impl(&dword_181A37000, v58, OS_LOG_TYPE_ERROR, v57, buf, v59);
LABEL_60:

      v60 = v150;
      if (!*(v12 + 19))
      {
        goto LABEL_64;
      }

LABEL_61:
      is_defunct = os_channel_is_defunct();
      goto LABEL_62;
    }

    if (!v158)
    {
      v71 = *(v12 + 19);
      v72 = __nwlog_obj();
      v73 = os_log_type_enabled(v72, OS_LOG_TYPE_ERROR);
      if (v71)
      {
        if (!v73)
        {
          goto LABEL_95;
        }

        v74 = *(v12 + 3);
        v75 = *(v12 + 42);
        *buf = 136447490;
        *&buf[4] = "receiveOneFramefromRing_locked";
        *&buf[12] = 2080;
        *&buf[14] = v74;
        *&buf[22] = 1042;
        LODWORD(v162) = 16;
        WORD2(v162) = 2098;
        *(&v162 + 6) = v149;
        HIWORD(v162) = 1024;
        *v163 = v75;
        *&v163[4] = 2112;
        *&v163[6] = @"NULL RX prop buf";
        v76 = "%{public}s [%s: nexus instance %{public,uuid_t}.16P <fd %d>]  %@";
        v77 = v72;
        v78 = 54;
      }

      else
      {
        if (!v73)
        {
          goto LABEL_95;
        }

        *buf = 136446722;
        *&buf[4] = "receiveOneFramefromRing_locked";
        *&buf[12] = 2114;
        *&buf[14] = v12;
        *&buf[22] = 2112;
        *&v162 = @"NULL RX prop buf";
        v76 = "%{public}s [%{public}@]  %@";
        v77 = v72;
        v78 = 32;
      }

      _os_log_impl(&dword_181A37000, v77, OS_LOG_TYPE_ERROR, v76, buf, v78);
LABEL_95:

      v60 = v150;
      if (!*(v12 + 19))
      {
        goto LABEL_64;
      }

      goto LABEL_61;
    }

    if (!os_channel_slot_get_packet())
    {
      v79 = *(v12 + 19);
      v80 = __nwlog_obj();
      v81 = os_log_type_enabled(v80, OS_LOG_TYPE_ERROR);
      if (v79)
      {
        if (!v81)
        {
          goto LABEL_103;
        }

        v82 = *(v12 + 3);
        v83 = *(v12 + 42);
        *buf = 136447490;
        *&buf[4] = "receiveOneFramefromRing_locked";
        *&buf[12] = 2080;
        *&buf[14] = v82;
        *&buf[22] = 1042;
        LODWORD(v162) = 16;
        WORD2(v162) = 2098;
        *(&v162 + 6) = v149;
        HIWORD(v162) = 1024;
        *v163 = v83;
        *&v163[4] = 2112;
        *&v163[6] = @"Bad RX pkt";
        v84 = "%{public}s [%s: nexus instance %{public,uuid_t}.16P <fd %d>]  %@";
        v85 = v80;
        v86 = 54;
      }

      else
      {
        if (!v81)
        {
          goto LABEL_103;
        }

        *buf = 136446722;
        *&buf[4] = "receiveOneFramefromRing_locked";
        *&buf[12] = 2114;
        *&buf[14] = v12;
        *&buf[22] = 2112;
        *&v162 = @"Bad RX pkt";
        v84 = "%{public}s [%{public}@]  %@";
        v85 = v80;
        v86 = 32;
      }

      _os_log_impl(&dword_181A37000, v85, OS_LOG_TYPE_ERROR, v84, buf, v86);
LABEL_103:

      v60 = v150;
      if (!*(v12 + 19))
      {
        goto LABEL_64;
      }

      goto LABEL_61;
    }

    if (os_channel_slot_detach_packet())
    {
      v87 = *(v12 + 19);
      v88 = __nwlog_obj();
      v89 = os_log_type_enabled(v88, OS_LOG_TYPE_ERROR);
      if (v87)
      {
        if (!v89)
        {
          goto LABEL_130;
        }

        v90 = *(v12 + 3);
        v91 = *(v12 + 42);
        *buf = 136447490;
        *&buf[4] = "receiveOneFramefromRing_locked";
        *&buf[12] = 2080;
        *&buf[14] = v90;
        *&buf[22] = 1042;
        LODWORD(v162) = 16;
        WORD2(v162) = 2098;
        *(&v162 + 6) = v149;
        HIWORD(v162) = 1024;
        *v163 = v91;
        *&v163[4] = 2112;
        *&v163[6] = @"Bad RX detach";
        v92 = "%{public}s [%s: nexus instance %{public,uuid_t}.16P <fd %d>]  %@";
        v93 = v88;
        v94 = 54;
      }

      else
      {
        if (!v89)
        {
          goto LABEL_130;
        }

        *buf = 136446722;
        *&buf[4] = "receiveOneFramefromRing_locked";
        *&buf[12] = 2114;
        *&buf[14] = v12;
        *&buf[22] = 2112;
        *&v162 = @"Bad RX detach";
        v92 = "%{public}s [%{public}@]  %@";
        v93 = v88;
        v94 = 32;
      }

      _os_log_impl(&dword_181A37000, v93, OS_LOG_TYPE_ERROR, v92, buf, v94);
LABEL_130:

      v60 = v150;
      if (*(v12 + 19))
      {
        goto LABEL_161;
      }

      goto LABEL_64;
    }

    if (!os_packet_get_next_buflet())
    {
      v102 = *(v12 + 19);
      v103 = __nwlog_obj();
      v104 = os_log_type_enabled(v103, OS_LOG_TYPE_ERROR);
      if (v102)
      {
        if (!v104)
        {
          goto LABEL_140;
        }

        v105 = *(v12 + 3);
        v106 = *(v12 + 42);
        *buf = 136447490;
        *&buf[4] = "receiveOneFramefromRing_locked";
        *&buf[12] = 2080;
        *&buf[14] = v105;
        *&buf[22] = 1042;
        LODWORD(v162) = 16;
        WORD2(v162) = 2098;
        *(&v162 + 6) = v149;
        HIWORD(v162) = 1024;
        *v163 = v106;
        *&v163[4] = 2112;
        *&v163[6] = @"Bad RX buflet";
        v107 = "%{public}s [%s: nexus instance %{public,uuid_t}.16P <fd %d>]  %@";
        v108 = v103;
        v109 = 54;
      }

      else
      {
        if (!v104)
        {
          goto LABEL_140;
        }

        *buf = 136446722;
        *&buf[4] = "receiveOneFramefromRing_locked";
        *&buf[12] = 2114;
        *&buf[14] = v12;
        *&buf[22] = 2112;
        *&v162 = @"Bad RX buflet";
        v107 = "%{public}s [%{public}@]  %@";
        v108 = v103;
        v109 = 32;
      }

      _os_log_impl(&dword_181A37000, v108, OS_LOG_TYPE_ERROR, v107, buf, v109);
LABEL_140:

      v60 = v150;
      if (*(v12 + 19))
      {
        goto LABEL_161;
      }

      goto LABEL_64;
    }

    data_offset = os_buflet_get_data_offset();
    object_address = os_buflet_get_object_address();
    if (!object_address)
    {
      v110 = *(v12 + 19);
      v111 = __nwlog_obj();
      v112 = os_log_type_enabled(v111, OS_LOG_TYPE_ERROR);
      if (v110)
      {
        if (!v112)
        {
          goto LABEL_145;
        }

        v113 = *(v12 + 3);
        v114 = *(v12 + 42);
        *buf = 136447490;
        *&buf[4] = "receiveOneFramefromRing_locked";
        *&buf[12] = 2080;
        *&buf[14] = v113;
        *&buf[22] = 1042;
        LODWORD(v162) = 16;
        WORD2(v162) = 2098;
        *(&v162 + 6) = v149;
        HIWORD(v162) = 1024;
        *v163 = v114;
        *&v163[4] = 2112;
        *&v163[6] = @"Bad RX address";
        v115 = "%{public}s [%s: nexus instance %{public,uuid_t}.16P <fd %d>]  %@";
        v116 = v111;
        v117 = 54;
      }

      else
      {
        if (!v112)
        {
          goto LABEL_145;
        }

        *buf = 136446722;
        *&buf[4] = "receiveOneFramefromRing_locked";
        *&buf[12] = 2114;
        *&buf[14] = v12;
        *&buf[22] = 2112;
        *&v162 = @"Bad RX address";
        v115 = "%{public}s [%{public}@]  %@";
        v116 = v111;
        v117 = 32;
      }

      _os_log_impl(&dword_181A37000, v116, OS_LOG_TYPE_ERROR, v115, buf, v117);
LABEL_145:

      v60 = v150;
      if (*(v12 + 19))
      {
        goto LABEL_161;
      }

      goto LABEL_64;
    }

    size = os_packet_get_data_length();
    if (!size)
    {
      v118 = *(v12 + 19);
      v119 = __nwlog_obj();
      v120 = os_log_type_enabled(v119, OS_LOG_TYPE_ERROR);
      if (v118)
      {
        if (!v120)
        {
          goto LABEL_150;
        }

        v121 = *(v12 + 3);
        v122 = *(v12 + 42);
        *buf = 136447490;
        *&buf[4] = "receiveOneFramefromRing_locked";
        *&buf[12] = 2080;
        *&buf[14] = v121;
        *&buf[22] = 1042;
        LODWORD(v162) = 16;
        WORD2(v162) = 2098;
        *(&v162 + 6) = v149;
        HIWORD(v162) = 1024;
        *v163 = v122;
        *&v163[4] = 2112;
        *&v163[6] = @"Bad RX frame length";
        v123 = "%{public}s [%s: nexus instance %{public,uuid_t}.16P <fd %d>]  %@";
        v124 = v119;
        v125 = 54;
      }

      else
      {
        if (!v120)
        {
          goto LABEL_150;
        }

        *buf = 136446722;
        *&buf[4] = "receiveOneFramefromRing_locked";
        *&buf[12] = 2114;
        *&buf[14] = v12;
        *&buf[22] = 2112;
        *&v162 = @"Bad RX frame length";
        v123 = "%{public}s [%{public}@]  %@";
        v124 = v119;
        v125 = 32;
      }

      _os_log_impl(&dword_181A37000, v124, OS_LOG_TYPE_ERROR, v123, buf, v125);
LABEL_150:

      v60 = v150;
      if (*(v12 + 19))
      {
        goto LABEL_161;
      }

      goto LABEL_64;
    }

    v27 = os_channel_advance_slot();
    v28 = *(v12 + 19);
    if (v27)
    {
      v95 = __nwlog_obj();
      v96 = os_log_type_enabled(v95, OS_LOG_TYPE_ERROR);
      if (v28)
      {
        if (!v96)
        {
          goto LABEL_135;
        }

        v97 = *(v12 + 3);
        v98 = *(v12 + 42);
        *buf = 136447490;
        *&buf[4] = "receiveOneFramefromRing_locked";
        *&buf[12] = 2080;
        *&buf[14] = v97;
        *&buf[22] = 1042;
        LODWORD(v162) = 16;
        WORD2(v162) = 2098;
        *(&v162 + 6) = v149;
        HIWORD(v162) = 1024;
        *v163 = v98;
        *&v163[4] = 2112;
        *&v163[6] = @"Failed to advance RX slot";
        v99 = "%{public}s [%s: nexus instance %{public,uuid_t}.16P <fd %d>]  %@";
        v100 = v95;
        v101 = 54;
      }

      else
      {
        if (!v96)
        {
          goto LABEL_135;
        }

        *buf = 136446722;
        *&buf[4] = "receiveOneFramefromRing_locked";
        *&buf[12] = 2114;
        *&buf[14] = v12;
        *&buf[22] = 2112;
        *&v162 = @"Failed to advance RX slot";
        v99 = "%{public}s [%{public}@]  %@";
        v100 = v95;
        v101 = 32;
      }

      _os_log_impl(&dword_181A37000, v100, OS_LOG_TYPE_ERROR, v99, buf, v101);
LABEL_135:

      v60 = v150;
      if (*(v12 + 19))
      {
        goto LABEL_161;
      }

      goto LABEL_64;
    }

    v29 = os_channel_sync();
    v30 = *(v12 + 19);
    oslog = __nwlog_obj();
    if (v29)
    {
      v126 = os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR);
      if (v30)
      {
        if (!v126)
        {
          goto LABEL_155;
        }

        v127 = *(v12 + 3);
        v128 = *(v12 + 42);
        *buf = 136447490;
        *&buf[4] = "receiveOneFramefromRing_locked";
        *&buf[12] = 2080;
        *&buf[14] = v127;
        *&buf[22] = 1042;
        LODWORD(v162) = 16;
        WORD2(v162) = 2098;
        *(&v162 + 6) = v149;
        HIWORD(v162) = 1024;
        *v163 = v128;
        *&v163[4] = 2112;
        *&v163[6] = @"Failed to sync RX";
        v129 = "%{public}s [%s: nexus instance %{public,uuid_t}.16P <fd %d>]  %@";
        v130 = oslog;
        v131 = 54;
      }

      else
      {
        if (!v126)
        {
          goto LABEL_155;
        }

        *buf = 136446722;
        *&buf[4] = "receiveOneFramefromRing_locked";
        *&buf[12] = 2114;
        *&buf[14] = v12;
        *&buf[22] = 2112;
        *&v162 = @"Failed to sync RX";
        v129 = "%{public}s [%{public}@]  %@";
        v130 = oslog;
        v131 = 32;
      }

      _os_log_impl(&dword_181A37000, v130, OS_LOG_TYPE_ERROR, v129, buf, v131);
LABEL_155:

      v60 = v150;
      if (*(v12 + 19))
      {
        goto LABEL_161;
      }

      goto LABEL_64;
    }

    v31 = os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG);
    if (v30)
    {
      if (!v31)
      {
        goto LABEL_39;
      }

      v32 = *(v12 + 3);
      v33 = *(v12 + 42);
      *buf = 136447490;
      *&buf[4] = "receiveOneFramefromRing_locked";
      *&buf[12] = 2080;
      *&buf[14] = v32;
      *&buf[22] = 1042;
      LODWORD(v162) = 16;
      WORD2(v162) = 2098;
      *(&v162 + 6) = v149;
      HIWORD(v162) = 1024;
      *v163 = v33;
      *&v163[4] = 1024;
      *&v163[6] = size;
      v34 = oslog;
      v35 = "%{public}s [%s: nexus instance %{public,uuid_t}.16P <fd %d>] receiveDatafromRing: frame len %d";
      v36 = 50;
    }

    else
    {
      if (!v31)
      {
        goto LABEL_39;
      }

      *buf = 136446722;
      *&buf[4] = "receiveOneFramefromRing_locked";
      *&buf[12] = 2114;
      *&buf[14] = v12;
      *&buf[22] = 1024;
      LODWORD(v162) = size;
      v34 = oslog;
      v35 = "%{public}s [%{public}@] receiveDatafromRing: frame len %d";
      v36 = 28;
    }

    _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_DEBUG, v35, buf, v36);
LABEL_39:

    if ((size - 1519) <= 0xFFFFFA4C)
    {
      v132 = *(v12 + 19);
      v133 = __nwlog_obj();
      v134 = os_log_type_enabled(v133, OS_LOG_TYPE_ERROR);
      if (v132)
      {
        if (!v134)
        {
          goto LABEL_160;
        }

        v135 = *(v12 + 3);
        v136 = *(v12 + 42);
        *buf = 136447490;
        *&buf[4] = "receiveOneFramefromRing_locked";
        *&buf[12] = 2080;
        *&buf[14] = v135;
        *&buf[22] = 1042;
        LODWORD(v162) = 16;
        WORD2(v162) = 2098;
        *(&v162 + 6) = v149;
        HIWORD(v162) = 1024;
        *v163 = v136;
        *&v163[4] = 2112;
        *&v163[6] = @"frame size len is invalid";
        v137 = "%{public}s [%s: nexus instance %{public,uuid_t}.16P <fd %d>]  %@";
        v138 = v133;
        v139 = 54;
      }

      else
      {
        if (!v134)
        {
          goto LABEL_160;
        }

        *buf = 136446722;
        *&buf[4] = "receiveOneFramefromRing_locked";
        *&buf[12] = 2114;
        *&buf[14] = v12;
        *&buf[22] = 2112;
        *&v162 = @"frame size len is invalid";
        v137 = "%{public}s [%{public}@]  %@";
        v138 = v133;
        v139 = 32;
      }

      _os_log_impl(&dword_181A37000, v138, OS_LOG_TYPE_ERROR, v137, buf, v139);
LABEL_160:

      v60 = v150;
      if (*(v12 + 19))
      {
LABEL_161:
        os_channel_packet_free();
        is_defunct = os_channel_is_defunct();
LABEL_62:
        if (is_defunct)
        {
          [(NWConcrete_nw_ethernet_channel *)v60 closeChannel:?];
        }
      }

LABEL_64:

      goto LABEL_65;
    }

    sizea = (size - 14);
    v37 = object_address + data_offset;
    v38 = *(v37 + 12);
    if (v38 == 129)
    {
      osloga = bswap32(*(v37 + 14)) >> 16;
      v142 = bswap32(*(v37 + 16)) >> 16;
      v39 = (v37 + 18);
      sizea -= 4;
    }

    else
    {
      osloga = 0;
      v39 = (v37 + 14);
      v142 = __rev16(v38);
    }

    v40 = dispatch_data_create(v39, sizea, 0, 0);
    v41 = *(v12 + 19);
    if (!v40)
    {
      goto LABEL_53;
    }

    v42 = __nwlog_obj();
    v43 = os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG);
    if (v41)
    {
      if (!v43)
      {
        goto LABEL_50;
      }

      v44 = *(v12 + 3);
      v45 = *(v12 + 42);
      *buf = 136449026;
      *&buf[4] = "receiveOneFramefromRing_locked";
      *&buf[12] = 2080;
      *&buf[14] = v44;
      *&buf[22] = 1042;
      LODWORD(v162) = 16;
      WORD2(v162) = 2098;
      *(&v162 + 6) = v149;
      HIWORD(v162) = 1024;
      *v163 = v45;
      *&v163[4] = 1024;
      *&v163[6] = v142;
      *&v163[10] = 1024;
      *&v163[12] = osloga;
      *&v163[16] = 1042;
      *&v163[18] = 6;
      *&v163[22] = 2098;
      *&v163[24] = v37;
      v164 = 1042;
      v165 = 6;
      v166 = 2098;
      v167 = v37 + 6;
      v168 = 1024;
      v169 = sizea;
      v46 = v42;
      v47 = "%{public}s [%s: nexus instance %{public,uuid_t}.16P <fd %d>] receiveDatafromRing: ethertype %X vlantag %X local %{public,nw_ethernet_address_t}.6P remote %{public,nw_ethernet_address_t}.6P data size %d";
      v48 = 94;
    }

    else
    {
      if (!v43)
      {
        goto LABEL_50;
      }

      *buf = 136448258;
      *&buf[4] = "receiveOneFramefromRing_locked";
      *&buf[12] = 2114;
      *&buf[14] = v12;
      *&buf[22] = 1024;
      LODWORD(v162) = v142;
      WORD2(v162) = 1024;
      *(&v162 + 6) = osloga;
      WORD5(v162) = 1042;
      HIDWORD(v162) = 6;
      *v163 = 2098;
      *&v163[2] = v37;
      *&v163[10] = 1042;
      *&v163[12] = 6;
      *&v163[16] = 2098;
      *&v163[18] = v37 + 6;
      *&v163[26] = 1024;
      *&v163[28] = sizea;
      v46 = v42;
      v47 = "%{public}s [%{public}@] receiveDatafromRing: ethertype %X vlantag %X local %{public,nw_ethernet_address_t}.6P remote %{public,nw_ethernet_address_t}.6P data size %d";
      v48 = 72;
    }

    _os_log_impl(&dword_181A37000, v46, OS_LOG_TYPE_DEBUG, v47, buf, v48);
LABEL_50:

    v49 = *(v12 + 5);
    if (v49)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x4012000000;
      *&v162 = __Block_byref_object_copy__138;
      *(&v162 + 1) = __Block_byref_object_dispose__139;
      *v163 = &unk_182E7191A;
      v50 = *v37;
      *&v163[14] = *(v37 + 6);
      *&v163[8] = v50;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      v152[0] = ___ZL30receiveOneFramefromRing_lockedP30NWConcrete_nw_ethernet_channel_block_invoke;
      v152[1] = &unk_1E6A2BC38;
      v153 = v150;
      v51 = v40;
      v156 = osloga;
      v154 = v51;
      v155 = buf;
      dispatch_async(v49, block);

      _Block_object_dispose(buf, 8);
      goto LABEL_53;
    }

    os_unfair_lock_unlock(v12 + 2);
    (*(*(v12 + 7) + 16))();
    os_unfair_lock_lock(v12 + 2);
    if (!*(v12 + 19))
    {
      break;
    }

LABEL_53:
    os_channel_packet_free();

    v26 = os_channel_available_slot_count();
    v23 = v149;
    v24 = v147;
    v25 = v148;
  }

LABEL_65:
  os_unfair_lock_unlock(v12 + 2);

LABEL_66:
  v62 = *(a1 + 32);
  if (*(v62 + 112) == 1)
  {
    *(v62 + 112) = 0;
    nw_queue_resume_source(*(*(a1 + 32) + 104), v22);
    v62 = *(a1 + 32);
  }

  if (*(v62 + 114) == 1)
  {
    nw_ethernet_channel_cancel(v62);
  }
}

uint64_t __67__NWConcrete_nw_resolver_initWithEndpoint_parameters_path_log_str___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = nw_resolver_config_get_class(v4);
  if (v5)
  {
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 24);
    if (v7)
    {
      v8 = v5 < v7;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      *(v6 + 24) = v5;
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    }
  }

  return 1;
}

uint64_t __49__NWConcrete_nw_establishment_report_description__block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = ", ";
  }

  else
  {
    v4 = "";
  }

  CFStringAppendFormat(v3, 0, @"%s%@", v4, a2);
  *(*(*(a1 + 32) + 8) + 24) = 1;
  return 1;
}

BOOL __75__NWConcrete_nw_connection_group_initWithDescriptor_connection_parameters___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (nw_endpoint_get_type(v3) == nw_endpoint_type_address)
  {
    *(*(*(a1 + 32) + 8) + 24) = nw_endpoint_get_port(v3);
    *(*(*(a1 + 40) + 8) + 24) = nw_endpoint_copy_port_string(v3);
  }

  v4 = *(*(*(a1 + 40) + 8) + 24) == 0;

  return v4;
}

uint64_t __42__NWConcrete_nw_protocol_instance_destroy__block_invoke_57(uint64_t a1, uint64_t a2)
{
  v35 = *MEMORY[0x1E69E9840];
  extra = nw_hash_node_get_extra(a2);
  if (!*(extra + 32))
  {
    goto LABEL_9;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v4 = gLogObj;
  v5 = *(extra + 32);
  v6 = *(a1 + 32);
  *buf = 136446978;
  v26 = "[NWConcrete_nw_protocol_instance destroy]_block_invoke";
  v27 = 2048;
  v28 = extra;
  v29 = 2048;
  v30 = v5;
  v31 = 2048;
  v32 = v6;
  v7 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v23 = 0;
  if (__nwlog_fault(v7, &type, &v23))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        v10 = *(extra + 32);
        v11 = *(a1 + 32);
        *buf = 136446978;
        v26 = "[NWConcrete_nw_protocol_instance destroy]_block_invoke";
        v27 = 2048;
        v28 = extra;
        v29 = 2048;
        v30 = v10;
        v31 = 2048;
        v32 = v11;
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s Path state %p has an output handler %p when protocol instance %p is deallocated", buf, 0x2Au);
      }
    }

    else if (v23 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v14 = type;
      v15 = os_log_type_enabled(v8, type);
      if (backtrace_string)
      {
        if (v15)
        {
          v16 = *(extra + 32);
          v17 = *(a1 + 32);
          *buf = 136447234;
          v26 = "[NWConcrete_nw_protocol_instance destroy]_block_invoke";
          v27 = 2048;
          v28 = extra;
          v29 = 2048;
          v30 = v16;
          v31 = 2048;
          v32 = v17;
          v33 = 2082;
          v34 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v14, "%{public}s Path state %p has an output handler %p when protocol instance %p is deallocated, dumping backtrace:%{public}s", buf, 0x34u);
        }

        free(backtrace_string);
        if (v7)
        {
          goto LABEL_8;
        }

        goto LABEL_9;
      }

      if (v15)
      {
        v21 = *(extra + 32);
        v22 = *(a1 + 32);
        *buf = 136446978;
        v26 = "[NWConcrete_nw_protocol_instance destroy]_block_invoke";
        v27 = 2048;
        v28 = extra;
        v29 = 2048;
        v30 = v21;
        v31 = 2048;
        v32 = v22;
        _os_log_impl(&dword_181A37000, v8, v14, "%{public}s Path state %p has an output handler %p when protocol instance %p is deallocated, no backtrace", buf, 0x2Au);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v18 = type;
      if (os_log_type_enabled(v8, type))
      {
        v19 = *(extra + 32);
        v20 = *(a1 + 32);
        *buf = 136446978;
        v26 = "[NWConcrete_nw_protocol_instance destroy]_block_invoke";
        v27 = 2048;
        v28 = extra;
        v29 = 2048;
        v30 = v19;
        v31 = 2048;
        v32 = v20;
        _os_log_impl(&dword_181A37000, v8, v18, "%{public}s Path state %p has an output handler %p when protocol instance %p is deallocated, backtrace limit exceeded", buf, 0x2Au);
      }
    }
  }

  if (v7)
  {
LABEL_8:
    free(v7);
  }

LABEL_9:
  nw_protocol_path_state_dispose(*(a1 + 32), extra);
  return 1;
}

void __43__NWConcrete_nw_listener_getIDSInformation__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 224);
  if (v2)
  {
    v3 = _nw_array_copy(v2);
  }

  else
  {
    v3 = _nw_array_create();
  }

  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __59__NWConcrete_nw_listener_updateParametersForNewConnection___block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (nw_protocol_options_is_quic(v3))
  {
    v4 = *(*(a1 + 32) + 16);
    if (v4 && !_nw_parameters_get_logging_disabled(v4))
    {
      if (__nwlog_listener_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
      }

      v5 = glistenerLogObj;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        id_string = nw_listener_get_id_string(*(a1 + 32));
        v7 = *(*(*(a1 + 40) + 8) + 40);
        v11 = 136446722;
        v12 = "[NWConcrete_nw_listener updateParametersForNewConnection:]_block_invoke_2";
        v13 = 2082;
        v14 = id_string;
        v15 = 2114;
        v16 = v7;
        _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_DEBUG, "%{public}s [%{public}s] Setting trusted_peer_keys: %{public}@ for new connection", &v11, 0x20u);
      }
    }

    v8 = *(*(*(a1 + 40) + 8) + 40);
    v9 = nw_parameters_copy_context(*(*(a1 + 32) + 16));
    v10 = nw_context_copy_workloop(v9);
    nw_quic_connection_set_trusted_peer_keys(v3, v8, v10);
  }
}

void __78__NWConcrete_nw_listener_handleInboundPacket_length_from_to_interface_socket___block_invoke(void *a1)
{
  v2 = _Block_copy(*(a1[4] + 112));
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1[4] + 64);
  v6 = (*(a1[6] + 8) + 40);

  objc_storeStrong(v6, v5);
}

void __57__NWConcrete_nw_listener_handleInbound_addProtocolInbox___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(v1 + 104);
  if (v2 != -1)
  {
    if (v2)
    {
      *(v1 + 104) = v2 - 1;
      v11 = *(*(a1 + 32) + 16);
      if (v11 && !_nw_parameters_get_logging_disabled(v11))
      {
        if (__nwlog_listener_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
        }

        v5 = glistenerLogObj;
        if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          goto LABEL_16;
        }

        id_string = nw_listener_get_id_string(*(a1 + 32));
        v13 = *(*(a1 + 32) + 104);
        v14 = 136446722;
        v15 = "[NWConcrete_nw_listener handleInbound:addProtocolInbox:]_block_invoke";
        v16 = 2082;
        v17 = id_string;
        v18 = 1024;
        v19 = v13;
        v7 = "%{public}s [%{public}s] New connection limit is %u";
        v8 = v5;
        v9 = OS_LOG_TYPE_INFO;
        v10 = 28;
        goto LABEL_15;
      }
    }

    else
    {
      v4 = *(v1 + 16);
      if (v4 && !_nw_parameters_get_logging_disabled(v4))
      {
        if (__nwlog_listener_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
        }

        v5 = glistenerLogObj;
        if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_16;
        }

        v6 = nw_listener_get_id_string(*(a1 + 32));
        v14 = 136446466;
        v15 = "[NWConcrete_nw_listener handleInbound:addProtocolInbox:]_block_invoke";
        v16 = 2082;
        v17 = v6;
        v7 = "%{public}s [%{public}s] Unexpected connection notification";
        v8 = v5;
        v9 = OS_LOG_TYPE_ERROR;
        v10 = 22;
LABEL_15:
        _os_log_impl(&dword_181A37000, v8, v9, v7, &v14, v10);
LABEL_16:
      }
    }
  }
}

void __57__NWConcrete_nw_listener_handleInbound_addProtocolInbox___block_invoke_41(uint64_t a1, int a2, int a3, void *a4, void *a5)
{
  v41 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a5;
  v11 = *(*(a1 + 32) + 16);
  if (v11 && !_nw_parameters_get_logging_disabled(v11))
  {
    if (__nwlog_listener_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
    }

    v12 = glistenerLogObj;
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      goto LABEL_12;
    }

    id_string = nw_listener_get_id_string(*(a1 + 32));
    v14 = *(a1 + 40);
    if (v9)
    {
      name = _nw_interface_get_name(v9);
      if (v10)
      {
LABEL_8:
        v16 = _nw_interface_get_name(v10);
LABEL_11:
        v27 = 136447746;
        v28 = "[NWConcrete_nw_listener handleInbound:addProtocolInbox:]_block_invoke";
        v29 = 2082;
        v30 = id_string;
        v31 = 2112;
        v32 = v14;
        v33 = 1024;
        v34 = a2;
        v35 = 1024;
        v36 = a3;
        v37 = 2080;
        v38 = name;
        v39 = 2080;
        v40 = v16;
        _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_INFO, "%{public}s [%{public}s] Connection %@ initial:%{BOOL}d cancelling:%{BOOL}d (%s) -> (%s)", &v27, 0x40u);
LABEL_12:

        goto LABEL_13;
      }
    }

    else
    {
      name = 0;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    v16 = 0;
    goto LABEL_11;
  }

LABEL_13:
  if (v9 || (a2 & 1) != 0)
  {
    if (!v10 && (a3 & 1) == 0)
    {
      nw_listener_adjust_awdl_usage_on_queue(*(a1 + 32), 1);
      v23 = *(*(a1 + 32) + 16);
      if (v23)
      {
        if (!_nw_parameters_get_logging_disabled(v23))
        {
          if (__nwlog_listener_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
          }

          v18 = glistenerLogObj;
          if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_30;
          }

          v24 = nw_listener_get_id_string(*(a1 + 32));
          id = nw_connection_get_id(*(a1 + 40));
          v26 = *(*(a1 + 32) + 248);
          v27 = 136446978;
          v28 = "[NWConcrete_nw_listener handleInbound:addProtocolInbox:]_block_invoke";
          v29 = 2082;
          v30 = v24;
          v31 = 2048;
          v32 = id;
          v33 = 1024;
          v34 = v26;
          v22 = "%{public}s [%{public}s] Connection [C%llu] now needs AWDL, updated AWDL usage count=%u";
          goto LABEL_29;
        }
      }
    }
  }

  else
  {
    nw_listener_adjust_awdl_usage_on_queue(*(a1 + 32), 0);
    v17 = *(*(a1 + 32) + 16);
    if (v17 && !_nw_parameters_get_logging_disabled(v17))
    {
      if (__nwlog_listener_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
      }

      v18 = glistenerLogObj;
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_30;
      }

      v19 = nw_listener_get_id_string(*(a1 + 32));
      v20 = nw_connection_get_id(*(a1 + 40));
      v21 = *(*(a1 + 32) + 248);
      v27 = 136446978;
      v28 = "[NWConcrete_nw_listener handleInbound:addProtocolInbox:]_block_invoke";
      v29 = 2082;
      v30 = v19;
      v31 = 2048;
      v32 = v20;
      v33 = 1024;
      v34 = v21;
      v22 = "%{public}s [%{public}s] Connection [C%llu] no longer needs AWDL, updated AWDL usage count=%u";
LABEL_29:
      _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_DEFAULT, v22, &v27, 0x26u);
LABEL_30:
    }
  }
}

void __57__NWConcrete_nw_listener_handleInbound_addProtocolInbox___block_invoke_43(void *a1)
{
  *(*(a1[5] + 8) + 24) = (*(a1[4] + 310) & 4) != 0;
  objc_storeStrong((*(a1[6] + 8) + 40), *(a1[4] + 64));
  v2 = _Block_copy(*(a1[4] + 88));
  v3 = *(a1[7] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = _Block_copy(*(a1[4] + 96));
  v6 = *(a1[8] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = _nw_parameters_copy(*(a1[4] + 16));
  v9 = *(a1[9] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

uint64_t __49__NWConcrete_nw_listener_canHandleNewConnection___block_invoke(void *a1)
{
  *(*(a1[5] + 8) + 24) = *(a1[4] + 104) == 0;
  *(*(a1[6] + 8) + 24) = (*(a1[4] + 310) & 8) != 0;
  result = [*(a1[4] + 216) count];
  *(*(a1[7] + 8) + 24) = result != 0;
  return result;
}

uint64_t __49__NWConcrete_nw_endpoint_proxy_startWithHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (nw_proxy_config_has_fallback_proxy_agent(v4) || nw_proxy_config_has_fallback_proxy_config(v4))
  {
    v5 = 0;
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

uint64_t __49__NWConcrete_nw_endpoint_proxy_startWithHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    _nw_array_append(v5, v4);
  }

  generation = nw_proxy_config_get_generation(v4);
  *v15 = 0uLL;
  nw_proxy_config_copy_fallback_proxy_agent(v4, v15);
  v8 = nw_proxy_config_copy_fallback_proxy_config(v4);
  v9 = 0;
  while (v8)
  {
    if (v9 >= 8)
    {
      goto LABEL_18;
    }

LABEL_14:
    uuid_clear(v15);
    if (v8)
    {
      v10 = v8;
      v10[171] |= 0x20u;

      v11 = *(a1 + 32);
      if (v11)
      {
        _nw_array_append(v11, v10);
      }

      v12 = v10;
      *v15 = *(v12 + 72);

      v13 = v12;
      v8 = v13[11];
    }

    ++v9;
  }

  v8 = 0;
  if (!uuid_is_null(v15) && v9 < 8)
  {
    v8 = nw_path_copy_proxy_config_for_agent_uuid(v15, generation, *(a1 + 40));
    goto LABEL_14;
  }

LABEL_18:

  return 1;
}

uint64_t __49__NWConcrete_nw_endpoint_proxy_startWithHandler___block_invoke_3(id *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  generation = nw_proxy_config_get_generation(v4);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__NWConcrete_nw_endpoint_proxy_startWithHandler___block_invoke_4;
  v8[3] = &unk_1E6A2F230;
  v12 = generation;
  v9 = a1[4];
  v10 = a1[5];
  v11 = a1[6];
  nw_proxy_config_enumerate_alternate_agents(v4, v8);
  v6 = a1[6];
  if (v6 && v4)
  {
    _nw_array_append(v6, v4);
  }

  return 1;
}

void __49__NWConcrete_nw_endpoint_proxy_startWithHandler___block_invoke_4(uint64_t a1, _OWORD *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  *v18 = *a2;
  v3 = nw_path_copy_proxy_config_for_agent_uuid(v18, *(a1 + 56), *(a1 + 32));
  if (v3)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __49__NWConcrete_nw_endpoint_proxy_startWithHandler___block_invoke_5;
    v7[3] = &unk_1E6A39660;
    v9 = &v10;
    v8 = *(a1 + 40);
    nw_proxy_config_enumerate_preferred_domains(v3, v7);
    if (*(v11 + 24) == 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v4 = gLogObj;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        v5 = *(a1 + 40);
        *buf = 136446466;
        v15 = "[NWConcrete_nw_endpoint_proxy startWithHandler:]_block_invoke_4";
        v16 = 2112;
        v17 = v5;
        _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEBUG, "%{public}s Endpoint %@ matches preferred domain of alternate proxy", buf, 0x16u);
      }

      v6 = *(a1 + 48);
      if (v6)
      {
        _nw_array_append(v6, v3);
      }
    }

    _Block_object_dispose(&v10, 8);
  }
}

void __49__NWConcrete_nw_endpoint_proxy_startWithHandler___block_invoke_5(uint64_t a1, uint64_t a2)
{
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = nw_endpoint_proxy_match_pattern_to_endpoint(*(a1 + 32), a2);
    if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
    {
      v4 = nw_endpoint_copy_cname_array(*(a1 + 32));
      v5 = v4;
      if (v4)
      {
        if (_nw_array_get_count(v4))
        {
          v6[0] = MEMORY[0x1E69E9820];
          v6[1] = 3221225472;
          v6[2] = __49__NWConcrete_nw_endpoint_proxy_startWithHandler___block_invoke_6;
          v6[3] = &unk_1E6A3D890;
          v6[4] = *(a1 + 40);
          v6[5] = a2;
          _nw_array_apply(v5, v6);
        }
      }
    }
  }
}

BOOL __49__NWConcrete_nw_endpoint_proxy_startWithHandler___block_invoke_6(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  *(*(*(a1 + 32) + 8) + 24) = nw_endpoint_proxy_match_pattern_to_endpoint(v4, *(a1 + 40));
  LOBYTE(a1) = *(*(*(a1 + 32) + 8) + 24);

  return (a1 & 1) == 0;
}

uint64_t __52__NWConcrete_nw_endpoint_resolver_startWithHandler___block_invoke(uint64_t a1, unsigned __int8 *uuid)
{
  v3 = xpc_uuid_create(uuid);
  v4 = v3;
  if (v3 && object_getClass(v3) == MEMORY[0x1E69E9F20])
  {
    xpc_array_append_value(*(a1 + 32), v4);
  }

  return 1;
}

void __52__NWConcrete_nw_endpoint_resolver_startWithHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v187 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = nw_endpoint_handler_copy_resolver(*(a1 + 32));
  v8 = *(a1 + 32);
  v9 = *(v7 + 1);
  v10 = v8;
  v164 = v9;
  v165 = v5;
  v166 = v6;
  v162 = v7;
  v163 = v10;
  if (!v10)
  {
    v119 = __nwlog_obj();
    *buf = 136446210;
    v170 = "nw_endpoint_resolver_handle_alternative";
    v120 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v167 = 0;
    if (__nwlog_fault(v120, &type, &v167))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v121 = __nwlog_obj();
        v122 = type;
        if (os_log_type_enabled(v121, type))
        {
          *buf = 136446210;
          v170 = "nw_endpoint_resolver_handle_alternative";
          _os_log_impl(&dword_181A37000, v121, v122, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v167 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v121 = __nwlog_obj();
        v124 = type;
        v125 = os_log_type_enabled(v121, type);
        if (backtrace_string)
        {
          if (v125)
          {
            *buf = 136446466;
            v170 = "nw_endpoint_resolver_handle_alternative";
            v171 = 2082;
            v172 = backtrace_string;
            _os_log_impl(&dword_181A37000, v121, v124, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_180;
        }

        if (v125)
        {
          *buf = 136446210;
          v170 = "nw_endpoint_resolver_handle_alternative";
          _os_log_impl(&dword_181A37000, v121, v124, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v121 = __nwlog_obj();
        v132 = type;
        if (os_log_type_enabled(v121, type))
        {
          *buf = 136446210;
          v170 = "nw_endpoint_resolver_handle_alternative";
          _os_log_impl(&dword_181A37000, v121, v132, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_180:
    if (v120)
    {
      free(v120);
    }

    goto LABEL_142;
  }

  v11 = v10;
  v12 = v11[29];

  if (v12 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v25 = gLogObj;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      if (v12 > 5)
      {
        v26 = "unknown-mode";
      }

      else
      {
        v26 = off_1E6A31018[v12];
      }

      *buf = 136446722;
      v170 = "nw_endpoint_resolver_handle_alternative";
      v171 = 2082;
      v172 = v26;
      v173 = 2082;
      v174 = "resolver";
      _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_DEFAULT, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
    }

LABEL_29:

    goto LABEL_142;
  }

  v13 = v11;
  v14 = *(v13 + 284);

  if (!v166)
  {
    if ((v14 & 0x20) != 0)
    {
      if ((nw_endpoint_handler_get_logging_disabled(v13) & 1) == 0)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v17 = gconnectionLogObj;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          id_string = nw_endpoint_handler_get_id_string(v13);
          v141 = nw_endpoint_handler_dry_run_string(v13);
          v142 = nw_endpoint_handler_copy_endpoint(v13);
          logging_description = nw_endpoint_get_logging_description(v142);
          v144 = nw_endpoint_handler_state_string(v13);
          v145 = nw_endpoint_handler_mode_string(v13);
          v146 = nw_endpoint_handler_copy_current_path(v13);
          *buf = 136448002;
          v170 = "nw_endpoint_resolver_handle_alternative";
          v171 = 2082;
          v172 = id_string;
          v173 = 2082;
          v174 = v141;
          v175 = 2082;
          v176 = logging_description;
          v177 = 2082;
          v178 = v144;
          v179 = 2082;
          v180 = v145;
          v181 = 2114;
          v182 = v146;
          v183 = 2082;
          v184 = nw_endpoint_get_logging_description(v165);
          _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Discovered alternative %{public}s", buf, 0x52u);
        }

        goto LABEL_75;
      }

      goto LABEL_76;
    }

    v27 = v13;
    v28 = *(v13 + 284);

    if ((v28 & 0x40) != 0)
    {
      goto LABEL_76;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v17 = gconnectionLogObj;
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      goto LABEL_75;
    }

    v29 = v27;

    v30 = v29;
    v31 = *(v13 + 284);

    if (v31)
    {
      v32 = "dry-run ";
    }

    else
    {
      v32 = "";
    }

    v33 = nw_endpoint_handler_copy_endpoint(v30);
    v34 = v33;
    if (v33)
    {
      v35 = _nw_endpoint_get_logging_description(v33);
    }

    else
    {
      v35 = "<NULL>";
    }

    v44 = v30;
    v45 = v44;
    v46 = v44[30];
    if (v46 > 5)
    {
      v47 = "unknown-state";
    }

    else
    {
      v47 = off_1E6A31048[v46];
    }

    v48 = v45;
    v49 = v48;
    v50 = v11[29];
    v157 = v47;
    v159 = v35;
    if (v50 > 2)
    {
      switch(v50)
      {
        case 3:
          v51 = "proxy";
          break;
        case 4:
          v51 = "fallback";
          break;
        case 5:
          v51 = "transform";
          break;
        default:
LABEL_67:
          v51 = "unknown-mode";
          break;
      }
    }

    else
    {
      if (v50)
      {
        if (v50 == 1)
        {
          v51 = "resolver";
          goto LABEL_70;
        }

        if (v50 == 2)
        {
          v155 = nw_endpoint_flow_mode_string(v48[33]);
LABEL_71:

          v58 = v49;
          os_unfair_lock_lock(v58 + 28);
          v59 = v58[8];
          os_unfair_lock_unlock(v58 + 28);

          v60 = v59;
          v61 = v165;
          v62 = v61;
          if (v61)
          {
            v63 = _nw_endpoint_get_logging_description(v61);
            v64 = v32;
          }

          else
          {
            v64 = v32;
            v63 = "<NULL>";
          }

          *buf = 136448002;
          v170 = "nw_endpoint_resolver_handle_alternative";
          v171 = 2082;
          v172 = v29 + 184;
          v173 = 2082;
          v174 = v64;
          v175 = 2082;
          v176 = v159;
          v177 = 2082;
          v178 = v157;
          v179 = 2082;
          v180 = v155;
          v181 = 2114;
          v182 = v60;
          v183 = 2082;
          v184 = v63;
          _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Discovered alternative %{public}s", buf, 0x52u);

          goto LABEL_75;
        }

        goto LABEL_67;
      }

      v51 = "path";
    }

LABEL_70:
    v155 = v51;
    goto LABEL_71;
  }

  if ((v14 & 0x20) == 0)
  {
    v15 = v13;
    v16 = *(v13 + 284);

    if ((v16 & 0x40) != 0)
    {
      goto LABEL_76;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v17 = gconnectionLogObj;
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      goto LABEL_75;
    }

    v158 = v17;
    v18 = v15;

    v19 = v18;
    v20 = *(v13 + 284);

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
    if (v22)
    {
      v24 = _nw_endpoint_get_logging_description(v22);
    }

    else
    {
      v24 = "<NULL>";
    }

    v36 = v19;
    v37 = v36;
    v38 = v36[30];
    if (v38 > 5)
    {
      v39 = "unknown-state";
    }

    else
    {
      v39 = off_1E6A31048[v38];
    }

    v40 = v37;
    v41 = v40;
    v42 = v11[29];
    v156 = v39;
    if (v42 > 2)
    {
      switch(v42)
      {
        case 3:
          v43 = "proxy";
          goto LABEL_61;
        case 4:
          v43 = "fallback";
          goto LABEL_61;
        case 5:
          v43 = "transform";
          goto LABEL_61;
      }
    }

    else
    {
      switch(v42)
      {
        case 0:
          v43 = "path";
          goto LABEL_61;
        case 1:
          v43 = "resolver";
          goto LABEL_61;
        case 2:
          v43 = nw_endpoint_flow_mode_string(v40[33]);
LABEL_61:

          v52 = v41;
          os_unfair_lock_lock(v52 + 28);
          v53 = v52[8];
          os_unfair_lock_unlock(v52 + 28);

          v54 = v53;
          v55 = v165;
          v56 = v55;
          if (v55)
          {
            v57 = _nw_endpoint_get_logging_description(v55);
          }

          else
          {
            v57 = "<NULL>";
          }

          *buf = 136448258;
          v170 = "nw_endpoint_resolver_handle_alternative";
          v171 = 2082;
          v172 = v18 + 184;
          v173 = 2082;
          v174 = v21;
          v175 = 2082;
          v176 = v24;
          v177 = 2082;
          v17 = v158;
          v178 = v156;
          v179 = 2082;
          v180 = v43;
          v181 = 2114;
          v182 = v54;
          v183 = 2082;
          v184 = v57;
          v185 = 2112;
          v186 = v166;
          _os_log_impl(&dword_181A37000, v158, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Discovered alternative %{public}s using %@", buf, 0x5Cu);

LABEL_75:
          goto LABEL_76;
      }
    }

    v43 = "unknown-mode";
    goto LABEL_61;
  }

  if ((nw_endpoint_handler_get_logging_disabled(v13) & 1) == 0)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v17 = gconnectionLogObj;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v160 = nw_endpoint_handler_get_id_string(v13);
      v126 = nw_endpoint_handler_dry_run_string(v13);
      v127 = nw_endpoint_handler_copy_endpoint(v13);
      v128 = nw_endpoint_get_logging_description(v127);
      v129 = nw_endpoint_handler_state_string(v13);
      v130 = nw_endpoint_handler_mode_string(v13);
      v131 = nw_endpoint_handler_copy_current_path(v13);
      *buf = 136448258;
      v170 = "nw_endpoint_resolver_handle_alternative";
      v171 = 2082;
      v172 = v160;
      v173 = 2082;
      v174 = v126;
      v175 = 2082;
      v176 = v128;
      v177 = 2082;
      v178 = v129;
      v179 = 2082;
      v180 = v130;
      v181 = 2114;
      v182 = v131;
      v183 = 2082;
      v184 = nw_endpoint_get_logging_description(v165);
      v185 = 2112;
      v186 = v166;
      _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Discovered alternative %{public}s using %@", buf, 0x5Cu);
    }

    goto LABEL_75;
  }

LABEL_76:
  v65 = v13;
  v66 = (v65->state & 0xFFFFFFFE) == 4;

  if (!v66)
  {
    v79 = nw_endpoint_handler_copy_resolver(v65);
    v80 = v79;
    if (*(v79 + 1) == v164)
    {
      v92 = *(v79 + 13);
      if (!v92)
      {
        v93 = nw_endpoint_handler_copy_endpoint(v65);
        v94 = nw_endpoint_copy(v93);
        v95 = *(v80 + 13);
        *(v80 + 13) = v94;

        v92 = *(v80 + 13);
      }

      nw_endpoint_add_alternative(v92, v165, v166);
      v65->event = 524290;
      nw_endpoint_handler_report(v65, 0, &v65->event.domain, 0);
      goto LABEL_141;
    }

    v81 = v65;
    v82 = (v13[71] & 0x20) == 0;

    if (!v82)
    {
      if (nw_endpoint_handler_get_logging_disabled(v81))
      {
        goto LABEL_141;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v85 = gconnectionLogObj;
      if (os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
      {
        v147 = nw_endpoint_handler_get_id_string(v81);
        v148 = nw_endpoint_handler_dry_run_string(v81);
        v149 = nw_endpoint_handler_copy_endpoint(v81);
        v150 = nw_endpoint_get_logging_description(v149);
        v151 = nw_endpoint_handler_state_string(v81);
        v152 = nw_endpoint_handler_mode_string(v81);
        v153 = nw_endpoint_handler_copy_current_path(v81);
        v154 = *(v80 + 1);
        *buf = 136448258;
        v170 = "nw_endpoint_resolver_handle_alternative";
        v171 = 2082;
        v172 = v147;
        v173 = 2082;
        v174 = v148;
        v175 = 2082;
        v176 = v150;
        v177 = 2082;
        v178 = v151;
        v179 = 2082;
        v180 = v152;
        v181 = 2114;
        v182 = v153;
        v183 = 2048;
        v184 = v154;
        v185 = 2048;
        v186 = v164;
        _os_log_impl(&dword_181A37000, v85, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] ignoring update from old resolver object (%p != %p)", buf, 0x5Cu);
      }

      goto LABEL_140;
    }

    v83 = v81;
    v84 = (v13[71] & 0x40) == 0;

    if (!v84)
    {
LABEL_141:

      goto LABEL_142;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v85 = gconnectionLogObj;
    if (!os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
    {
LABEL_140:

      goto LABEL_141;
    }

    v86 = v83;

    v87 = v86;
    v88 = (v13[71] & 1) == 0;

    if (v88)
    {
      v89 = "";
    }

    else
    {
      v89 = "dry-run ";
    }

    v90 = nw_endpoint_handler_copy_endpoint(v87);
    v91 = v90;
    if (v90)
    {
      v161 = _nw_endpoint_get_logging_description(v90);
    }

    else
    {
      v161 = "<NULL>";
    }

    v104 = v87;
    v105 = v104;
    state = v65->state;
    if (state > 5)
    {
      v107 = "unknown-state";
    }

    else
    {
      v107 = off_1E6A31048[state];
    }

    v108 = v105;
    v109 = v108;
    v110 = v11[29];
    if (v110 > 2)
    {
      switch(v110)
      {
        case 3:
          v111 = "proxy";
          goto LABEL_139;
        case 4:
          v111 = "fallback";
          goto LABEL_139;
        case 5:
          v111 = "transform";
          goto LABEL_139;
      }
    }

    else
    {
      switch(v110)
      {
        case 0:
          v111 = "path";
          goto LABEL_139;
        case 1:
          v111 = "resolver";
          goto LABEL_139;
        case 2:
          v111 = nw_endpoint_flow_mode_string(v108[33]);
LABEL_139:

          v115 = v89;
          v116 = v109;
          os_unfair_lock_lock(v116 + 28);
          v117 = v116[8];
          os_unfair_lock_unlock(v116 + 28);

          v118 = *(v80 + 1);
          *buf = 136448258;
          v170 = "nw_endpoint_resolver_handle_alternative";
          v171 = 2082;
          v172 = v86 + 184;
          v173 = 2082;
          v174 = v115;
          v175 = 2082;
          v176 = v161;
          v177 = 2082;
          v178 = v107;
          v179 = 2082;
          v180 = v111;
          v181 = 2114;
          v182 = v117;
          v183 = 2048;
          v184 = v118;
          v185 = 2048;
          v186 = v164;
          _os_log_impl(&dword_181A37000, v85, OS_LOG_TYPE_DEFAULT, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] ignoring update from old resolver object (%p != %p)", buf, 0x5Cu);

          goto LABEL_140;
      }
    }

    v111 = "unknown-mode";
    goto LABEL_139;
  }

  v67 = v65;
  v68 = (v13[71] & 0x20) == 0;

  if (!v68)
  {
    if (nw_endpoint_handler_get_logging_disabled(v67))
    {
      goto LABEL_142;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v25 = gconnectionLogObj;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      v133 = nw_endpoint_handler_get_id_string(v67);
      v134 = nw_endpoint_handler_dry_run_string(v67);
      v135 = nw_endpoint_handler_copy_endpoint(v67);
      v136 = nw_endpoint_get_logging_description(v135);
      v137 = nw_endpoint_handler_state_string(v67);
      v138 = nw_endpoint_handler_mode_string(v67);
      v139 = nw_endpoint_handler_copy_current_path(v67);
      *buf = 136447746;
      v170 = "nw_endpoint_resolver_handle_alternative";
      v171 = 2082;
      v172 = v133;
      v173 = 2082;
      v174 = v134;
      v175 = 2082;
      v176 = v136;
      v177 = 2082;
      v178 = v137;
      v179 = 2082;
      v180 = v138;
      v181 = 2114;
      v182 = v139;
      _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Ignoring resolver alternative", buf, 0x48u);
    }

    goto LABEL_29;
  }

  v69 = v67;
  v70 = (v13[71] & 0x40) == 0;

  if (v70)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v71 = gconnectionLogObj;
    if (!os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
    {
      goto LABEL_133;
    }

    v72 = v69;

    v73 = v72;
    v74 = (v13[71] & 1) == 0;

    if (v74)
    {
      v75 = "";
    }

    else
    {
      v75 = "dry-run ";
    }

    v76 = nw_endpoint_handler_copy_endpoint(v73);
    v77 = v76;
    if (v76)
    {
      v78 = _nw_endpoint_get_logging_description(v76);
    }

    else
    {
      v78 = "<NULL>";
    }

    v96 = v73;
    v97 = v96;
    v98 = v65->state;
    if (v98 > 5)
    {
      v99 = "unknown-state";
    }

    else
    {
      v99 = off_1E6A31048[v98];
    }

    v100 = v97;
    v101 = v100;
    v102 = v11[29];
    if (v102 > 2)
    {
      switch(v102)
      {
        case 3:
          v103 = "proxy";
          goto LABEL_132;
        case 4:
          v103 = "fallback";
          goto LABEL_132;
        case 5:
          v103 = "transform";
          goto LABEL_132;
      }
    }

    else
    {
      switch(v102)
      {
        case 0:
          v103 = "path";
          goto LABEL_132;
        case 1:
          v103 = "resolver";
          goto LABEL_132;
        case 2:
          v103 = nw_endpoint_flow_mode_string(v100[33]);
LABEL_132:

          v112 = v75;
          v113 = v101;
          os_unfair_lock_lock(v113 + 28);
          v114 = v113[8];
          os_unfair_lock_unlock(v113 + 28);

          *buf = 136447746;
          v170 = "nw_endpoint_resolver_handle_alternative";
          v171 = 2082;
          v172 = v72 + 184;
          v173 = 2082;
          v174 = v112;
          v175 = 2082;
          v176 = v78;
          v177 = 2082;
          v178 = v99;
          v179 = 2082;
          v180 = v103;
          v181 = 2114;
          v182 = v114;
          _os_log_impl(&dword_181A37000, v71, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Ignoring resolver alternative", buf, 0x48u);

LABEL_133:
          goto LABEL_142;
      }
    }

    v103 = "unknown-mode";
    goto LABEL_132;
  }

LABEL_142:
}

void __52__NWConcrete_nw_endpoint_resolver_startWithHandler___block_invoke_3(uint64_t a1, unsigned int a2, void *a3)
{
  v7 = a3;
  v6 = nw_endpoint_handler_copy_resolver(*(a1 + 32));
  objc_storeStrong(v6 + 12, a3);
  nw_endpoint_resolver_update(*(a1 + 32), *(a1 + 40), a2);
}

NWConcrete_nw_protocol_definition *__nw_protocol_copy_ethernet_definition_block_invoke()
{
  if (nw_protocol_ethernet_identifier::onceToken != -1)
  {
    dispatch_once(&nw_protocol_ethernet_identifier::onceToken, &__block_literal_global_34135);
  }

  result = nw_protocol_definition_create_with_identifier(&g_ethernet_protocol_identifier);
  nw_protocol_copy_ethernet_definition::ethernet_definition = result;
  return result;
}

uint64_t __41__NWConcrete_nw_proxy_config_description__block_invoke(uint64_t a1, int a2, nw_protocol_stack_t stack)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__NWConcrete_nw_proxy_config_description__block_invoke_2;
  v5[3] = &unk_1E6A32318;
  v3 = *(a1 + 48);
  v6 = *(a1 + 32);
  v7 = v3;
  nw_protocol_stack_iterate_application_protocols(stack, v5);
  return 0;
}

void __41__NWConcrete_nw_proxy_config_description__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v4 = nw_protocol_options_copy_definition(v3);
    if ((*(*(a1 + 32) + 171) & 0x20) != 0)
    {
      v5 = "Fallback ";
    }

    else
    {
      v5 = "";
    }

    CFStringAppendFormat(*(a1 + 56), 0, @"%@ %sProxy: ", v4, v5);
    *(*(*(a1 + 40) + 8) + 24) = 1;

    v3 = v8;
  }

  v6 = nw_protocol_options_copy_proxy_endpoint(v3);
  if (v6)
  {
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v7 = ", ";
    }

    else
    {
      v7 = "";
    }

    CFStringAppendFormat(*(a1 + 56), 0, @"%s%@", v7, v6);
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

uint64_t __44__NWConcrete_nw_resolver_config_description__block_invoke_2(uint64_t a1, char *__s)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = strlen(__s);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>((v3 + 48), __s, v4);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>((v3 + 48), " ", 1);
  return 1;
}

void __66__NWConcrete_nw_http_proxy_server_initWithParameters_clientQueue___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((nw_protocol_options_is_http1(v3) & 1) != 0 || nw_protocol_options_is_http_messaging(v3))
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

@end