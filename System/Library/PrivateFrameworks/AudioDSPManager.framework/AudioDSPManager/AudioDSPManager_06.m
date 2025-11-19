caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<void adm::util::RTLogger::doLog<unsigned int &,float &,audiodsputility_parametererror_s const&,char const*>(adm::util::RTLogLevel,char const*,unsigned int &,float &,audiodsputility_parametererror_s const&,char const* &&)::{lambda(void)#1}>::rt_cleanup::~rt_cleanup(caulk::concurrent::message **a1)
{
  v2 = *a1;
  caulk::concurrent::message::~message(*a1);
  result = *MEMORY[0x277D7F098];
  if (*MEMORY[0x277D7F098])
  {
    caulk::rt_safe_memory_resource::rt_deallocate(result, v2);
    return a1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void caulk::concurrent::details::rt_message_call<void adm::util::RTLogger::doLog<unsigned int &,float &,audiodsputility_parametererror_s const&,char const*>(adm::util::RTLogLevel,char const*,unsigned int &,float &,audiodsputility_parametererror_s const&,char const* &&)::{lambda(void)#1}>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x223DF43A0);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<void adm::util::RTLogger::doLog<unsigned int &,float &,tb_error_t &>(adm::util::RTLogLevel,char const*,unsigned int &,float &,tb_error_t &)::{lambda(void)#1}>::perform(caulk::concurrent::message *a1)
{
  v2 = a1;
  adm::util::RTLogger::doLog<unsigned int &,float &,adm::exclaves::ParameterID const&>(adm::util::RTLogLevel,char const*,unsigned int &,float &,adm::exclaves::ParameterID const&)::{lambda(void)#1}::operator()(a1 + 24);
  return caulk::concurrent::details::rt_message_call<adm::CustomPropertyManager::onGraphParameterUpdate(adm::CustomPropertyManager::ParameterMapping const&,float)::$_0>::rt_cleanup::~rt_cleanup(&v2);
}

void caulk::concurrent::details::rt_message_call<void adm::util::RTLogger::doLog<unsigned int &,float &,tb_error_t &>(adm::util::RTLogLevel,char const*,unsigned int &,float &,tb_error_t &)::{lambda(void)#1}>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x223DF43A0);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<void adm::util::RTLogger::doLog<unsigned int &,float &>(adm::util::RTLogLevel,char const*,unsigned int &,float &)::{lambda(void)#1}>::perform(caulk::concurrent::message *a1)
{
  v2 = a1;
  adm::util::RTLogger::doLog<unsigned int &,float &>(adm::util::RTLogLevel,char const*,unsigned int &,float &)::{lambda(void)#1}::operator()(a1 + 24);
  return caulk::concurrent::details::rt_message_call<adm::CustomPropertyManager::onGraphParameterUpdate(adm::CustomPropertyManager::ParameterMapping const&,float)::$_0>::rt_cleanup::~rt_cleanup(&v2);
}

void adm::util::RTLogger::doLog<unsigned int &,float &>(adm::util::RTLogLevel,char const*,unsigned int &,float &)::{lambda(void)#1}::operator()(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  caulk::make_string(*(a1 + 8), __p, *(a1 + 20), *(a1 + 24));
  v2 = *a1;
  adm_log_object = get_adm_log_object();
  v4 = adm_log_object;
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      if (!os_log_type_enabled(adm_log_object, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      v11 = __p;
      if (v17 < 0)
      {
        v11 = __p[0];
      }

      goto LABEL_25;
    }

    if (v2 != 3)
    {
LABEL_14:
      if (!os_log_type_enabled(adm_log_object, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      v11 = __p;
      if (v17 < 0)
      {
        v11 = __p[0];
      }

LABEL_25:
      v14 = *(a1 + 16);
      *buf = 136315394;
      v19 = v11;
      v20 = 1024;
      v21 = v14;
      v7 = v4;
      v8 = OS_LOG_TYPE_DEFAULT;
LABEL_26:
      _os_log_impl(&dword_223B4A000, v7, v8, "%s. Log counter = %u", buf, 0x12u);
      goto LABEL_27;
    }

    if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_ERROR))
    {
      v9 = __p;
      if (v17 < 0)
      {
        v9 = __p[0];
      }

      v10 = *(a1 + 16);
      *buf = 136315394;
      v19 = v9;
      v20 = 1024;
      v21 = v10;
      _os_log_error_impl(&dword_223B4A000, v4, OS_LOG_TYPE_ERROR, "!!! ADM realtime error: %s. Log counter = %u", buf, 0x12u);
    }
  }

  else
  {
    if (v2)
    {
      if (v2 == 1)
      {
        if (!os_log_type_enabled(adm_log_object, OS_LOG_TYPE_INFO))
        {
          goto LABEL_27;
        }

        v5 = __p;
        if (v17 < 0)
        {
          v5 = __p[0];
        }

        v6 = *(a1 + 16);
        *buf = 136315394;
        v19 = v5;
        v20 = 1024;
        v21 = v6;
        v7 = v4;
        v8 = OS_LOG_TYPE_INFO;
        goto LABEL_26;
      }

      goto LABEL_14;
    }

    if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_DEBUG))
    {
      v12 = __p;
      if (v17 < 0)
      {
        v12 = __p[0];
      }

      v13 = *(a1 + 16);
      *buf = 136315394;
      v19 = v12;
      v20 = 1024;
      v21 = v13;
      _os_log_debug_impl(&dword_223B4A000, v4, OS_LOG_TYPE_DEBUG, "%s. Log counter = %u", buf, 0x12u);
    }
  }

LABEL_27:
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void caulk::concurrent::details::rt_message_call<void adm::util::RTLogger::doLog<unsigned int &,float &>(adm::util::RTLogLevel,char const*,unsigned int &,float &)::{lambda(void)#1}>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x223DF43A0);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<void adm::util::RTLogger::doLog<unsigned int &,float &,adm::exclaves::ParameterID const&>(adm::util::RTLogLevel,char const*,unsigned int &,float &,adm::exclaves::ParameterID const&)::{lambda(void)#1}>::perform(caulk::concurrent::message *a1)
{
  v2 = a1;
  adm::util::RTLogger::doLog<unsigned int &,float &,adm::exclaves::ParameterID const&>(adm::util::RTLogLevel,char const*,unsigned int &,float &,adm::exclaves::ParameterID const&)::{lambda(void)#1}::operator()(a1 + 24);
  return caulk::concurrent::details::rt_message_call<adm::CustomPropertyManager::onGraphParameterUpdate(adm::CustomPropertyManager::ParameterMapping const&,float)::$_0>::rt_cleanup::~rt_cleanup(&v2);
}

void adm::util::RTLogger::doLog<unsigned int &,float &,adm::exclaves::ParameterID const&>(adm::util::RTLogLevel,char const*,unsigned int &,float &,adm::exclaves::ParameterID const&)::{lambda(void)#1}::operator()(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  caulk::make_string(*(a1 + 8), __p, *(a1 + 20), *(a1 + 24), *(a1 + 28));
  v2 = *a1;
  adm_log_object = get_adm_log_object();
  v4 = adm_log_object;
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      if (!os_log_type_enabled(adm_log_object, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      v11 = __p;
      if (v17 < 0)
      {
        v11 = __p[0];
      }

      goto LABEL_25;
    }

    if (v2 != 3)
    {
LABEL_14:
      if (!os_log_type_enabled(adm_log_object, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      v11 = __p;
      if (v17 < 0)
      {
        v11 = __p[0];
      }

LABEL_25:
      v14 = *(a1 + 16);
      *buf = 136315394;
      v19 = v11;
      v20 = 1024;
      v21 = v14;
      v7 = v4;
      v8 = OS_LOG_TYPE_DEFAULT;
LABEL_26:
      _os_log_impl(&dword_223B4A000, v7, v8, "%s. Log counter = %u", buf, 0x12u);
      goto LABEL_27;
    }

    if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_ERROR))
    {
      v9 = __p;
      if (v17 < 0)
      {
        v9 = __p[0];
      }

      v10 = *(a1 + 16);
      *buf = 136315394;
      v19 = v9;
      v20 = 1024;
      v21 = v10;
      _os_log_error_impl(&dword_223B4A000, v4, OS_LOG_TYPE_ERROR, "!!! ADM realtime error: %s. Log counter = %u", buf, 0x12u);
    }
  }

  else
  {
    if (v2)
    {
      if (v2 == 1)
      {
        if (!os_log_type_enabled(adm_log_object, OS_LOG_TYPE_INFO))
        {
          goto LABEL_27;
        }

        v5 = __p;
        if (v17 < 0)
        {
          v5 = __p[0];
        }

        v6 = *(a1 + 16);
        *buf = 136315394;
        v19 = v5;
        v20 = 1024;
        v21 = v6;
        v7 = v4;
        v8 = OS_LOG_TYPE_INFO;
        goto LABEL_26;
      }

      goto LABEL_14;
    }

    if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_DEBUG))
    {
      v12 = __p;
      if (v17 < 0)
      {
        v12 = __p[0];
      }

      v13 = *(a1 + 16);
      *buf = 136315394;
      v19 = v12;
      v20 = 1024;
      v21 = v13;
      _os_log_debug_impl(&dword_223B4A000, v4, OS_LOG_TYPE_DEBUG, "%s. Log counter = %u", buf, 0x12u);
    }
  }

LABEL_27:
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void caulk::concurrent::details::rt_message_call<void adm::util::RTLogger::doLog<unsigned int &,float &,adm::exclaves::ParameterID const&>(adm::util::RTLogLevel,char const*,unsigned int &,float &,adm::exclaves::ParameterID const&)::{lambda(void)#1}>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x223DF43A0);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<void adm::util::RTLogger::doLog<adm::graph::ExclaveDSPControllerClientImpl *,unsigned int &,float &>(adm::util::RTLogLevel,char const*,adm::graph::ExclaveDSPControllerClientImpl *,unsigned int &,float &)::{lambda(void)#1}>::perform(caulk::concurrent::message *a1)
{
  v2 = a1;
  adm::util::RTLogger::doLog<adm::graph::ExclaveDSPControllerClientImpl *,unsigned int &,float &>(adm::util::RTLogLevel,char const*,adm::graph::ExclaveDSPControllerClientImpl *,unsigned int &,float &)::{lambda(void)#1}::operator()(a1 + 24);
  return caulk::concurrent::details::rt_message_call<void adm::util::RTLogger::doLog<int &,unsigned char,unsigned long &>(adm::util::RTLogLevel,char const*,int &,unsigned char,unsigned long &)::{lambda(void)#1}>::rt_cleanup::~rt_cleanup(&v2);
}

void adm::util::RTLogger::doLog<adm::graph::ExclaveDSPControllerClientImpl *,unsigned int &,float &>(adm::util::RTLogLevel,char const*,adm::graph::ExclaveDSPControllerClientImpl *,unsigned int &,float &)::{lambda(void)#1}::operator()(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  caulk::make_string(*(a1 + 8), __p, *(a1 + 24), *(a1 + 32), *(a1 + 36));
  v2 = *a1;
  adm_log_object = get_adm_log_object();
  v4 = adm_log_object;
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      if (!os_log_type_enabled(adm_log_object, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      v11 = __p;
      if (v17 < 0)
      {
        v11 = __p[0];
      }

      goto LABEL_25;
    }

    if (v2 != 3)
    {
LABEL_14:
      if (!os_log_type_enabled(adm_log_object, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      v11 = __p;
      if (v17 < 0)
      {
        v11 = __p[0];
      }

LABEL_25:
      v14 = *(a1 + 16);
      *buf = 136315394;
      v19 = v11;
      v20 = 1024;
      v21 = v14;
      v7 = v4;
      v8 = OS_LOG_TYPE_DEFAULT;
LABEL_26:
      _os_log_impl(&dword_223B4A000, v7, v8, "%s. Log counter = %u", buf, 0x12u);
      goto LABEL_27;
    }

    if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_ERROR))
    {
      v9 = __p;
      if (v17 < 0)
      {
        v9 = __p[0];
      }

      v10 = *(a1 + 16);
      *buf = 136315394;
      v19 = v9;
      v20 = 1024;
      v21 = v10;
      _os_log_error_impl(&dword_223B4A000, v4, OS_LOG_TYPE_ERROR, "!!! ADM realtime error: %s. Log counter = %u", buf, 0x12u);
    }
  }

  else
  {
    if (v2)
    {
      if (v2 == 1)
      {
        if (!os_log_type_enabled(adm_log_object, OS_LOG_TYPE_INFO))
        {
          goto LABEL_27;
        }

        v5 = __p;
        if (v17 < 0)
        {
          v5 = __p[0];
        }

        v6 = *(a1 + 16);
        *buf = 136315394;
        v19 = v5;
        v20 = 1024;
        v21 = v6;
        v7 = v4;
        v8 = OS_LOG_TYPE_INFO;
        goto LABEL_26;
      }

      goto LABEL_14;
    }

    if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_DEBUG))
    {
      v12 = __p;
      if (v17 < 0)
      {
        v12 = __p[0];
      }

      v13 = *(a1 + 16);
      *buf = 136315394;
      v19 = v12;
      v20 = 1024;
      v21 = v13;
      _os_log_debug_impl(&dword_223B4A000, v4, OS_LOG_TYPE_DEBUG, "%s. Log counter = %u", buf, 0x12u);
    }
  }

LABEL_27:
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void caulk::concurrent::details::rt_message_call<void adm::util::RTLogger::doLog<adm::graph::ExclaveDSPControllerClientImpl *,unsigned int &,float &>(adm::util::RTLogLevel,char const*,adm::graph::ExclaveDSPControllerClientImpl *,unsigned int &,float &)::{lambda(void)#1}>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x223DF43A0);
}

void adm::graph::ExclaveDSPControllerClientImpl::getParameter(std::chrono::system_clock::time_point *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v68[13] = *MEMORY[0x277D85DE8];
  v55 = a2;
  rep = this[2].__d_.__rep_;
  if (!rep)
  {
    v9 = 0;
    goto LABEL_9;
  }

  v9 = std::__shared_weak_count::lock(rep);
  if (!v9 || (v4 = this[1].__d_.__rep_) == 0)
  {
LABEL_9:
    v12 = this[10].__d_.__rep_;
    if (v12 >= 0x65)
    {
      if (std::chrono::system_clock::now().__d_.__rep_ - this[11].__d_.__rep_ <= 500999)
      {
        goto LABEL_14;
      }

      v12 = this[10].__d_.__rep_;
    }

    v13 = MEMORY[0x277D7F098];
    if (!*MEMORY[0x277D7F098])
    {
      goto LABEL_81;
    }

    v14 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x277D7F098]);
    *(v14 + 16) = 0;
    *(v14 + 24) = 2;
    *(v14 + 32) = "ControllerClient(%p) getParameter(%d): EK unavailable";
    *(v14 + 40) = v12;
    *(v14 + 48) = this;
    *(v14 + 56) = a2;
    *v14 = &unk_28371B210;
    *(v14 + 8) = 0;
    caulk::concurrent::messenger::enqueue(&this[12], v14);
    this[11].__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
LABEL_14:
    v15 = this[10].__d_.__rep_;
    if (v15 != -1)
    {
      LODWORD(this[10].__d_.__rep_) = v15 + 1;
    }

    v16 = 1970431354;
LABEL_23:
    *a3 = v16;
    *(a3 + 16) = 0;
    if (!v9)
    {
LABEL_25:
      v19 = *MEMORY[0x277D85DE8];
      return;
    }

LABEL_24:
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    goto LABEL_25;
  }

  v10 = this[6].__d_.__rep_;
  v11 = this[7].__d_.__rep_;
  if (v10 != v11)
  {
    while (*v10 != a2)
    {
      if (++v10 == v11)
      {
        goto LABEL_20;
      }
    }
  }

  if (v10 == v11)
  {
LABEL_20:
    v18 = "getParameter(%d): parameter not supported";
    goto LABEL_21;
  }

  v17 = adm::exclaves::utility::convert_to<std::optional<adm::exclaves::ParameterID>,unsigned int>(a2);
  if (!HIDWORD(v17))
  {
    v18 = "getParameter(%d): converting id to ex id failed";
LABEL_21:
    adm::util::RTLogger::log<unsigned int &>(this + 10, v18, &v55);
LABEL_22:
    v16 = 1651536493;
    goto LABEL_23;
  }

  v3 = v17;
  v20 = adm::exclaves::utility::convert_to<std::optional<audiodsputility_parameterid_s>,adm::exclaves::ParameterID>(v17);
  if ((v21 & 1) == 0)
  {
    v25 = this[10].__d_.__rep_;
    if (v25 >= 0x65)
    {
      if (std::chrono::system_clock::now().__d_.__rep_ - this[11].__d_.__rep_ <= 500999)
      {
        goto LABEL_34;
      }

      v25 = this[10].__d_.__rep_;
    }

    v13 = MEMORY[0x277D7F098];
    if (*MEMORY[0x277D7F098])
    {
      v26 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x277D7F098]);
      *(v26 + 16) = 0;
      *(v26 + 24) = 3;
      *(v26 + 32) = "getParameter(%d): converting ex id %d to tb failed";
      *(v26 + 40) = v25;
      *(v26 + 44) = a2;
      *(v26 + 48) = v3;
      *v26 = &unk_28371B370;
      *(v26 + 8) = 0;
      caulk::concurrent::messenger::enqueue(&this[12], v26);
      this[11].__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
LABEL_34:
      v27 = this[10].__d_.__rep_;
      if (v27 != -1)
      {
        LODWORD(this[10].__d_.__rep_) = v27 + 1;
      }

      goto LABEL_22;
    }

LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v22 = v20;
  v3 = &v58;
  v50 = 0;
  v51 = &v50;
  v52 = 0x4002000000;
  v53 = __Block_byref_object_copy__85;
  v54 = __Block_byref_object_dispose__86;
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 0x40000000;
  v46 = ___ZNK3adm5graph30ExclaveDSPControllerClientImpl12getParameterEj_block_invoke;
  v47 = &unk_2784F0778;
  v48 = &v50;
  v67 = 0;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v62 = 0u;
  memset(v68, 0, 104);
  v23 = *v4;
  v24 = tb_client_connection_message_construct();
  if (v24)
  {
    v49 = v24;
LABEL_54:
    adm::util::RTLogger::log<unsigned int &,tb_error_t &>(this + 10, &v55, &v49);
    goto LABEL_55;
  }

  tb_message_precheck_encoding();
  tb_message_raw_encode_u64();
  tb_message_raw_encode_u64();
  if (v22 > 0xE2E55DD580132637)
  {
    if (v22 > 0x49534BEB5B166B7ALL)
    {
      if (v22 == 0x49534BEB5B166B7BLL || v22 == 0x6F7ACC7D3D83C1A8)
      {
        goto LABEL_52;
      }

      v28 = 0x722B4C09C3EA568FLL;
    }

    else
    {
      if (v22 == 0xE2E55DD580132638 || v22 == 0xE95D2CBE682F3546)
      {
        goto LABEL_52;
      }

      v28 = 0xFCE7912C58C9DED8;
    }
  }

  else if (v22 > 0xB2828DE17EE871DDLL)
  {
    if (v22 == 0xB2828DE17EE871DELL || v22 == 0xB36663373B8DBD3ELL)
    {
      goto LABEL_52;
    }

    v28 = 0xD651CBD5B1375569;
  }

  else
  {
    if (v22 == 0x8410829DB500FB3CLL || v22 == 0x8A4D9A6CD80AC7E5)
    {
      goto LABEL_52;
    }

    v28 = 0xA743B5FF2B4E9891;
  }

  if (v22 == v28)
  {
LABEL_52:
    tb_message_complete();
    v61 = 0;
    v29 = *v4;
    v30 = tb_connection_send_query();
    if ((v30 & 0xFFFFFFF7) != 0)
    {
LABEL_53:
      v31 = *v4;
      tb_client_connection_message_destruct();
      v49 = v30;
      goto LABEL_54;
    }

    if (!v61)
    {
      v30 = 4;
      goto LABEL_53;
    }

    v58 = 0;
    v59 = 0;
    v60 = 0;
    tb_message_decode_u8();
    if (v58)
    {
      if (v58 != 1)
      {
LABEL_74:
        v36 = *v4;
        tb_client_connection_message_destruct();
        v49 = 7;
        goto LABEL_54;
      }

      tb_message_decode_u64();
      v33 = v59;
      if (v59 > 0x15AAC3129EA7047DLL)
      {
        if (v59 == 0x15AAC3129EA7047ELL)
        {
          goto LABEL_94;
        }

        v34 = 0x3A8875D359853A61;
      }

      else
      {
        if (v59 == 0xF57D459A0697D042)
        {
          goto LABEL_94;
        }

        v34 = 0xB36710F1590EB0BLL;
      }

      goto LABEL_73;
    }

    tb_message_decode_u64();
    v13 = v59;
    if (v59 > 0xE9CAC24E271E100FLL)
    {
      if (v59 > 0x23580A01CC35D89DLL)
      {
        if (v59 != 0x23580A01CC35D89ELL && v59 != 0x67D58230E14B515BLL)
        {
          if (v59 != 0x7F1E21C17219CAE8)
          {
            goto LABEL_74;
          }

          tb_message_decode_u64();
          v33 = v60;
          if (v60 <= 0xB941EFAD2C01A1F6)
          {
            if (v60 == 0x8D3025BDD0206734 || v60 == 0x966DBF642921EE02)
            {
              goto LABEL_94;
            }

            v34 = 0x996B795339B4732BLL;
          }

          else if (v60 > 0xE69699D348D1431)
          {
            if (v60 == 0xE69699D348D1432)
            {
              goto LABEL_94;
            }

            v34 = 0x2C1A98D65FB58883;
          }

          else
          {
            if (v60 == 0xB941EFAD2C01A1F7)
            {
              goto LABEL_94;
            }

            v34 = 0xF7C7674340E151C8;
          }

LABEL_73:
          if (v33 != v34)
          {
            goto LABEL_74;
          }

LABEL_94:
          v56 = *v3;
          v57 = v60;
          v46(v45, &v56);
          v37 = *v4;
          tb_client_connection_message_destruct();
          v49 = 0;
          v38 = *(v51 + 40);
          if (v38 == 1)
          {
            v39 = v51 + 6;
          }

          else
          {
            v39 = 0;
          }

          if (v38 != 1)
          {
            if (*(v51 + 40))
            {
              v42 = 0;
            }

            else
            {
              v42 = (v51 + 6);
            }

            v43 = adm::exclaves::utility::convert_to<std::optional<float>,audiodsputility_parametervalue_s>(v42);
            if (!HIDWORD(v43))
            {
              adm::util::RTLogger::log<unsigned int &>(this + 10, "getParameter(%d): value conversion failed", &v55);
              _Block_object_dispose(&v50, 8);
              goto LABEL_22;
            }

            *a3 = v43;
            *(a3 + 16) = 1;
LABEL_57:
            _Block_object_dispose(&v50, 8);
            if (!v9)
            {
              goto LABEL_25;
            }

            goto LABEL_24;
          }

          v40 = *v39;
          if (*v39 == 0xB36710F1590EB0BLL)
          {
            v41 = "PARAMETERERROR_INVALIDSCOPE";
          }

          else
          {
            switch(v40)
            {
              case 0x15AAC3129EA7047ELL:
                v41 = "PARAMETERERROR_INVALIDPARAMETER";
                break;
              case 0x3A8875D359853A61:
                v41 = "PARAMETERERROR_INVALIDELEMENT";
                break;
              case 0xF57D459A0697D042:
                v41 = "PARAMETERERROR_UNKNOWN";
                break;
              default:
                v41 = "<unknown>";
                break;
            }
          }

          v68[0] = v41;
          adm::util::RTLogger::log<unsigned int &,audiodsputility_parametererror_s const&,char const*>(this + 10, &v55, v39, v68);
          v44 = *v39;
          if (*v39 == 0xB36710F1590EB0BLL)
          {
            v32 = 1651729264;
            goto LABEL_56;
          }

          if (v44 == 0x15AAC3129EA7047ELL)
          {
            v32 = 1651536493;
            goto LABEL_56;
          }

          if (v44 == 0x3A8875D359853A61)
          {
            v32 = 1650814324;
            goto LABEL_56;
          }

LABEL_55:
          v32 = 1970170734;
LABEL_56:
          *a3 = v32;
          *(a3 + 16) = 0;
          goto LABEL_57;
        }

        goto LABEL_93;
      }

      if (v59 == 0xE9CAC24E271E1010)
      {
        goto LABEL_93;
      }

      if (v59 != 0xF64FC5679D8C50C8)
      {
        v35 = 0xF876E807C3E4A3E7;
LABEL_79:
        if (v59 != v35)
        {
          goto LABEL_74;
        }

        goto LABEL_93;
      }

LABEL_85:
      tb_message_decode_u8();
      goto LABEL_94;
    }

    if (v59 <= 0xBE1AC77697E53FFBLL)
    {
      if (v59 != 0x8695345E04E75645 && v59 != 0xB2A314BCFDE57EE2)
      {
        v35 = 0xBA94426FF040F022;
        goto LABEL_79;
      }

LABEL_93:
      tb_message_decode_BOOL();
      goto LABEL_94;
    }

LABEL_82:
    if (v13 == 0xBE1AC77697E53FFCLL)
    {
      tb_message_decode_u32();
      goto LABEL_94;
    }

    if (v13 == 0xC83C98BC329601F9)
    {
      goto LABEL_93;
    }

    if (v13 != 0xE1D8FF437BB62643)
    {
      goto LABEL_74;
    }

    goto LABEL_85;
  }

  printf("TB_FATAL: invalid value: unexpected case value, %llx (%s:%d)\n", v22, "/Library/Caches/com.apple.xbs/Binaries/AudioDSPManager/install/TempContent/Objects/AudioDSPManager.build/AudioDSPManager.build/DerivedSources/AudioDSPManager_c.c", 1789);
  _os_crash();
  __break(1u);
}

__n128 __Block_byref_object_copy__85(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  return result;
}

__n128 ___ZNK3adm5graph30ExclaveDSPControllerClientImpl12getParameterEj_block_invoke(uint64_t a1, __n128 *a2)
{
  v2 = *(*(a1 + 32) + 8);
  result = *a2;
  *(v2 + 56) = a2[1].n128_u64[0];
  *(v2 + 40) = result;
  return result;
}

std::chrono::system_clock::time_point adm::util::RTLogger::log<unsigned int &,tb_error_t &>(std::chrono::system_clock::time_point *a1, int *a2, int *a3)
{
  rep = a1->__d_.__rep_;
  if (LODWORD(a1->__d_.__rep_) >= 0x65)
  {
    result.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    if (result.__d_.__rep_ - a1[1].__d_.__rep_ < 501000)
    {
      goto LABEL_6;
    }

    rep = a1->__d_.__rep_;
  }

  result.__d_.__rep_ = *MEMORY[0x277D7F098];
  if (!*MEMORY[0x277D7F098])
  {
    __break(1u);
    return result;
  }

  v8 = *a3;
  v9 = *a2;
  v10 = caulk::rt_safe_memory_resource::rt_allocate(result.__d_.__rep_);
  *(v10 + 16) = 0;
  *(v10 + 24) = 3;
  *(v10 + 32) = "getParameter(%d): tb call failed: tbError=%d";
  *(v10 + 40) = rep;
  *(v10 + 44) = v9;
  *(v10 + 48) = v8;
  *v10 = &unk_28371B268;
  *(v10 + 8) = 0;
  caulk::concurrent::messenger::enqueue(&a1[2], v10);
  result.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  a1[1].__d_.__rep_ = result.__d_.__rep_;
LABEL_6:
  if (LODWORD(a1->__d_.__rep_) != -1)
  {
    ++LODWORD(a1->__d_.__rep_);
  }

  return result;
}

std::chrono::system_clock::time_point adm::util::RTLogger::log<unsigned int &,audiodsputility_parametererror_s const&,char const*>(std::chrono::system_clock::time_point *a1, int *a2, uint64_t *a3, uint64_t *a4)
{
  rep = a1->__d_.__rep_;
  if (LODWORD(a1->__d_.__rep_) >= 0x65)
  {
    result.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    if (result.__d_.__rep_ - a1[1].__d_.__rep_ < 501000)
    {
      goto LABEL_6;
    }

    rep = a1->__d_.__rep_;
  }

  result.__d_.__rep_ = *MEMORY[0x277D7F098];
  if (!*MEMORY[0x277D7F098])
  {
    __break(1u);
    return result;
  }

  v10 = *a4;
  v11 = *a3;
  v12 = *a2;
  v13 = caulk::rt_safe_memory_resource::rt_allocate(result.__d_.__rep_);
  *(v13 + 16) = 0;
  *(v13 + 24) = 3;
  *(v13 + 32) = "getParameter(%d): tb call failed: failure=%d, %s";
  *(v13 + 40) = rep;
  *(v13 + 44) = v12;
  *(v13 + 48) = v11;
  *(v13 + 56) = v10;
  *v13 = &unk_28371B2C0;
  *(v13 + 8) = 0;
  caulk::concurrent::messenger::enqueue(&a1[2], v13);
  result.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  a1[1].__d_.__rep_ = result.__d_.__rep_;
LABEL_6:
  if (LODWORD(a1->__d_.__rep_) != -1)
  {
    ++LODWORD(a1->__d_.__rep_);
  }

  return result;
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<void adm::util::RTLogger::doLog<unsigned int &,adm::exclaves::ParameterID const&>(adm::util::RTLogLevel,char const*,unsigned int &,adm::exclaves::ParameterID const&)::{lambda(void)#1}>::perform(caulk::concurrent::message *a1)
{
  v2 = a1;
  adm::util::RTLogger::doLog<unsigned int &,tb_error_t &>(adm::util::RTLogLevel,char const*,unsigned int &,tb_error_t &)::{lambda(void)#1}::operator()(a1 + 24);
  return caulk::concurrent::details::rt_message_call<adm::CustomPropertyManager::onGraphParameterUpdate(adm::CustomPropertyManager::ParameterMapping const&,float)::$_0>::rt_cleanup::~rt_cleanup(&v2);
}

void caulk::concurrent::details::rt_message_call<void adm::util::RTLogger::doLog<unsigned int &,adm::exclaves::ParameterID const&>(adm::util::RTLogLevel,char const*,unsigned int &,adm::exclaves::ParameterID const&)::{lambda(void)#1}>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x223DF43A0);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<void adm::util::RTLogger::doLog<unsigned int &,audiodsputility_parametererror_s const&,char const*>(adm::util::RTLogLevel,char const*,unsigned int &,audiodsputility_parametererror_s const&,char const* &&)::{lambda(void)#1}>::perform(caulk::concurrent::message *a1)
{
  v2 = a1;
  adm::util::RTLogger::doLog<unsigned int &,audiodsputility_parametererror_s const&,char const*>(adm::util::RTLogLevel,char const*,unsigned int &,audiodsputility_parametererror_s const&,char const* &&)::{lambda(void)#1}::operator()(a1 + 24);
  return caulk::concurrent::details::rt_message_call<void adm::util::RTLogger::doLog<int &,unsigned char,unsigned long &>(adm::util::RTLogLevel,char const*,int &,unsigned char,unsigned long &)::{lambda(void)#1}>::rt_cleanup::~rt_cleanup(&v2);
}

void adm::util::RTLogger::doLog<unsigned int &,audiodsputility_parametererror_s const&,char const*>(adm::util::RTLogLevel,char const*,unsigned int &,audiodsputility_parametererror_s const&,char const* &&)::{lambda(void)#1}::operator()(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  caulk::make_string(*(a1 + 8), __p, *(a1 + 20), *(a1 + 24), *(a1 + 32));
  v2 = *a1;
  adm_log_object = get_adm_log_object();
  v4 = adm_log_object;
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      if (!os_log_type_enabled(adm_log_object, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      v11 = __p;
      if (v17 < 0)
      {
        v11 = __p[0];
      }

      goto LABEL_25;
    }

    if (v2 != 3)
    {
LABEL_14:
      if (!os_log_type_enabled(adm_log_object, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      v11 = __p;
      if (v17 < 0)
      {
        v11 = __p[0];
      }

LABEL_25:
      v14 = *(a1 + 16);
      *buf = 136315394;
      v19 = v11;
      v20 = 1024;
      v21 = v14;
      v7 = v4;
      v8 = OS_LOG_TYPE_DEFAULT;
LABEL_26:
      _os_log_impl(&dword_223B4A000, v7, v8, "%s. Log counter = %u", buf, 0x12u);
      goto LABEL_27;
    }

    if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_ERROR))
    {
      v9 = __p;
      if (v17 < 0)
      {
        v9 = __p[0];
      }

      v10 = *(a1 + 16);
      *buf = 136315394;
      v19 = v9;
      v20 = 1024;
      v21 = v10;
      _os_log_error_impl(&dword_223B4A000, v4, OS_LOG_TYPE_ERROR, "!!! ADM realtime error: %s. Log counter = %u", buf, 0x12u);
    }
  }

  else
  {
    if (v2)
    {
      if (v2 == 1)
      {
        if (!os_log_type_enabled(adm_log_object, OS_LOG_TYPE_INFO))
        {
          goto LABEL_27;
        }

        v5 = __p;
        if (v17 < 0)
        {
          v5 = __p[0];
        }

        v6 = *(a1 + 16);
        *buf = 136315394;
        v19 = v5;
        v20 = 1024;
        v21 = v6;
        v7 = v4;
        v8 = OS_LOG_TYPE_INFO;
        goto LABEL_26;
      }

      goto LABEL_14;
    }

    if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_DEBUG))
    {
      v12 = __p;
      if (v17 < 0)
      {
        v12 = __p[0];
      }

      v13 = *(a1 + 16);
      *buf = 136315394;
      v19 = v12;
      v20 = 1024;
      v21 = v13;
      _os_log_debug_impl(&dword_223B4A000, v4, OS_LOG_TYPE_DEBUG, "%s. Log counter = %u", buf, 0x12u);
    }
  }

LABEL_27:
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void caulk::concurrent::details::rt_message_call<void adm::util::RTLogger::doLog<unsigned int &,audiodsputility_parametererror_s const&,char const*>(adm::util::RTLogLevel,char const*,unsigned int &,audiodsputility_parametererror_s const&,char const* &&)::{lambda(void)#1}>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x223DF43A0);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<void adm::util::RTLogger::doLog<unsigned int &,tb_error_t &>(adm::util::RTLogLevel,char const*,unsigned int &,tb_error_t &)::{lambda(void)#1}>::perform(caulk::concurrent::message *a1)
{
  v2 = a1;
  adm::util::RTLogger::doLog<unsigned int &,tb_error_t &>(adm::util::RTLogLevel,char const*,unsigned int &,tb_error_t &)::{lambda(void)#1}::operator()(a1 + 24);
  return caulk::concurrent::details::rt_message_call<adm::CustomPropertyManager::onGraphParameterUpdate(adm::CustomPropertyManager::ParameterMapping const&,float)::$_0>::rt_cleanup::~rt_cleanup(&v2);
}

void adm::util::RTLogger::doLog<unsigned int &,tb_error_t &>(adm::util::RTLogLevel,char const*,unsigned int &,tb_error_t &)::{lambda(void)#1}::operator()(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  caulk::make_string(*(a1 + 8), __p, *(a1 + 20), *(a1 + 24));
  v2 = *a1;
  adm_log_object = get_adm_log_object();
  v4 = adm_log_object;
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      if (!os_log_type_enabled(adm_log_object, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      v11 = __p;
      if (v17 < 0)
      {
        v11 = __p[0];
      }

      goto LABEL_25;
    }

    if (v2 != 3)
    {
LABEL_14:
      if (!os_log_type_enabled(adm_log_object, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      v11 = __p;
      if (v17 < 0)
      {
        v11 = __p[0];
      }

LABEL_25:
      v14 = *(a1 + 16);
      *buf = 136315394;
      v19 = v11;
      v20 = 1024;
      v21 = v14;
      v7 = v4;
      v8 = OS_LOG_TYPE_DEFAULT;
LABEL_26:
      _os_log_impl(&dword_223B4A000, v7, v8, "%s. Log counter = %u", buf, 0x12u);
      goto LABEL_27;
    }

    if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_ERROR))
    {
      v9 = __p;
      if (v17 < 0)
      {
        v9 = __p[0];
      }

      v10 = *(a1 + 16);
      *buf = 136315394;
      v19 = v9;
      v20 = 1024;
      v21 = v10;
      _os_log_error_impl(&dword_223B4A000, v4, OS_LOG_TYPE_ERROR, "!!! ADM realtime error: %s. Log counter = %u", buf, 0x12u);
    }
  }

  else
  {
    if (v2)
    {
      if (v2 == 1)
      {
        if (!os_log_type_enabled(adm_log_object, OS_LOG_TYPE_INFO))
        {
          goto LABEL_27;
        }

        v5 = __p;
        if (v17 < 0)
        {
          v5 = __p[0];
        }

        v6 = *(a1 + 16);
        *buf = 136315394;
        v19 = v5;
        v20 = 1024;
        v21 = v6;
        v7 = v4;
        v8 = OS_LOG_TYPE_INFO;
        goto LABEL_26;
      }

      goto LABEL_14;
    }

    if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_DEBUG))
    {
      v12 = __p;
      if (v17 < 0)
      {
        v12 = __p[0];
      }

      v13 = *(a1 + 16);
      *buf = 136315394;
      v19 = v12;
      v20 = 1024;
      v21 = v13;
      _os_log_debug_impl(&dword_223B4A000, v4, OS_LOG_TYPE_DEBUG, "%s. Log counter = %u", buf, 0x12u);
    }
  }

LABEL_27:
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void caulk::concurrent::details::rt_message_call<void adm::util::RTLogger::doLog<unsigned int &,tb_error_t &>(adm::util::RTLogLevel,char const*,unsigned int &,tb_error_t &)::{lambda(void)#1}>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x223DF43A0);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<void adm::util::RTLogger::doLog<adm::graph::ExclaveDSPControllerClientImpl const*,unsigned int &>(adm::util::RTLogLevel,char const*,adm::graph::ExclaveDSPControllerClientImpl const*,unsigned int &)::{lambda(void)#1}>::perform(caulk::concurrent::message *a1)
{
  v2 = a1;
  adm::util::RTLogger::doLog<adm::graph::ExclaveDSPControllerClientImpl const*,unsigned int &>(adm::util::RTLogLevel,char const*,adm::graph::ExclaveDSPControllerClientImpl const*,unsigned int &)::{lambda(void)#1}::operator()(a1 + 24);
  return caulk::concurrent::details::rt_message_call<void adm::util::RTLogger::doLog<int &,unsigned char,unsigned long &>(adm::util::RTLogLevel,char const*,int &,unsigned char,unsigned long &)::{lambda(void)#1}>::rt_cleanup::~rt_cleanup(&v2);
}

void adm::util::RTLogger::doLog<adm::graph::ExclaveDSPControllerClientImpl const*,unsigned int &>(adm::util::RTLogLevel,char const*,adm::graph::ExclaveDSPControllerClientImpl const*,unsigned int &)::{lambda(void)#1}::operator()(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  caulk::make_string(*(a1 + 8), __p, *(a1 + 24), *(a1 + 32));
  v2 = *a1;
  adm_log_object = get_adm_log_object();
  v4 = adm_log_object;
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      if (!os_log_type_enabled(adm_log_object, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      v11 = __p;
      if (v17 < 0)
      {
        v11 = __p[0];
      }

      goto LABEL_25;
    }

    if (v2 != 3)
    {
LABEL_14:
      if (!os_log_type_enabled(adm_log_object, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      v11 = __p;
      if (v17 < 0)
      {
        v11 = __p[0];
      }

LABEL_25:
      v14 = *(a1 + 16);
      *buf = 136315394;
      v19 = v11;
      v20 = 1024;
      v21 = v14;
      v7 = v4;
      v8 = OS_LOG_TYPE_DEFAULT;
LABEL_26:
      _os_log_impl(&dword_223B4A000, v7, v8, "%s. Log counter = %u", buf, 0x12u);
      goto LABEL_27;
    }

    if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_ERROR))
    {
      v9 = __p;
      if (v17 < 0)
      {
        v9 = __p[0];
      }

      v10 = *(a1 + 16);
      *buf = 136315394;
      v19 = v9;
      v20 = 1024;
      v21 = v10;
      _os_log_error_impl(&dword_223B4A000, v4, OS_LOG_TYPE_ERROR, "!!! ADM realtime error: %s. Log counter = %u", buf, 0x12u);
    }
  }

  else
  {
    if (v2)
    {
      if (v2 == 1)
      {
        if (!os_log_type_enabled(adm_log_object, OS_LOG_TYPE_INFO))
        {
          goto LABEL_27;
        }

        v5 = __p;
        if (v17 < 0)
        {
          v5 = __p[0];
        }

        v6 = *(a1 + 16);
        *buf = 136315394;
        v19 = v5;
        v20 = 1024;
        v21 = v6;
        v7 = v4;
        v8 = OS_LOG_TYPE_INFO;
        goto LABEL_26;
      }

      goto LABEL_14;
    }

    if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_DEBUG))
    {
      v12 = __p;
      if (v17 < 0)
      {
        v12 = __p[0];
      }

      v13 = *(a1 + 16);
      *buf = 136315394;
      v19 = v12;
      v20 = 1024;
      v21 = v13;
      _os_log_debug_impl(&dword_223B4A000, v4, OS_LOG_TYPE_DEBUG, "%s. Log counter = %u", buf, 0x12u);
    }
  }

LABEL_27:
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void caulk::concurrent::details::rt_message_call<void adm::util::RTLogger::doLog<adm::graph::ExclaveDSPControllerClientImpl const*,unsigned int &>(adm::util::RTLogLevel,char const*,adm::graph::ExclaveDSPControllerClientImpl const*,unsigned int &)::{lambda(void)#1}>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x223DF43A0);
}

uint64_t adm::graph::ExclaveDSPControllerClientImpl::getOutputParameterIDs@<X0>(adm::graph::ExclaveDSPControllerClientImpl *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a2, *(this + 6), *(this + 7), (*(this + 7) - *(this + 6)) >> 2);
}

uint64_t adm::graph::ExclaveDSPControllerClientImpl::getInputParameterIDs@<X0>(adm::graph::ExclaveDSPControllerClientImpl *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a2, *(this + 3), *(this + 4), (*(this + 4) - *(this + 3)) >> 2);
}

BOOL adm::graph::ExclaveDSPControllerClientImpl::hasOutputParameter(adm::graph::ExclaveDSPControllerClientImpl *this, int a2)
{
  v2 = *(this + 6);
  v3 = *(this + 7);
  if (v2 != v3)
  {
    while (*v2 != a2)
    {
      if (++v2 == v3)
      {
        v2 = *(this + 7);
        return v2 != v3;
      }
    }
  }

  return v2 != v3;
}

BOOL adm::graph::ExclaveDSPControllerClientImpl::hasInputParameter(adm::graph::ExclaveDSPControllerClientImpl *this, int a2)
{
  v2 = *(this + 3);
  v3 = *(this + 4);
  if (v2 != v3)
  {
    while (*v2 != a2)
    {
      if (++v2 == v3)
      {
        v2 = *(this + 4);
        return v2 != v3;
      }
    }
  }

  return v2 != v3;
}

uint64_t adm::graph::ExclaveDSPControllerClientImpl::ioStopped(adm::graph::ExclaveDSPControllerClientImpl *this)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = *(this + 2);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(this + 1);
      if (v4)
      {
        adm_log_object = get_adm_log_object();
        if (os_signpost_enabled(adm_log_object))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_223B4A000, adm_log_object, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ADM::TBCall::IOStopped", &unk_223C17543, buf, 2u);
        }

        v23 = 0;
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        *buf = 0u;
        v18 = 0u;
        v6 = *v4;
        v7 = tb_client_connection_message_construct();
        if (!v7)
        {
          tb_message_precheck_encoding();
          tb_message_raw_encode_u64();
          tb_message_complete();
          v8 = *v4;
          v7 = tb_connection_send_query();
          v9 = *v4;
          tb_client_connection_message_destruct();
        }

        v10 = get_adm_log_object();
        if (os_signpost_enabled(v10))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_223B4A000, v10, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ADM::TBCall::IOStopped", &unk_223C17543, buf, 2u);
        }

        v11 = get_adm_log_object();
        v12 = v11;
        if (v7)
        {
          v13 = 1970170734;
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            *&buf[4] = v7;
            _os_log_error_impl(&dword_223B4A000, v12, OS_LOG_TYPE_ERROR, "tb call to iostopped failed: %d", buf, 8u);
          }
        }

        else
        {
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_223B4A000, v12, OS_LOG_TYPE_DEFAULT, "ioStopped() completed", buf, 2u);
          }

          v13 = 0;
        }

LABEL_17:
        std::__shared_weak_count::__release_shared[abi:ne200100](v3);
        goto LABEL_18;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v14 = get_adm_log_object();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = this;
    _os_log_impl(&dword_223B4A000, v14, OS_LOG_TYPE_DEFAULT, "ControllerClient(%p) ioStopped: EK unavailable", buf, 0xCu);
  }

  v13 = 0;
  if (v3)
  {
    goto LABEL_17;
  }

LABEL_18:
  v15 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t adm::graph::ExclaveDSPControllerClientImpl::process(uint64_t a1, uint64_t a2)
{
  v58[13] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = *(a1 + 8);
      if (v6)
      {
        if (a2)
        {
          if (!*(a1 + 72))
          {
LABEL_26:
            v23 = 1970170734;
            adm::util::RTLogger::log<>(a1 + 80, "copyDataFromABLToInboundBuffer failed.");
            goto LABEL_37;
          }

          v7 = *(a2 + 72);
          if (*v7)
          {
            v8 = 0;
            v9 = 0;
            v10 = v7 + 3;
            do
            {
              v11 = *(v10 + 1);
              v12 = *v10;
              v13 = *(a1 + 72);
              if (exclaves_inbound_buffer_copyin())
              {
                goto LABEL_26;
              }

              v14 = *v10;
              v10 += 4;
              v9 += v14;
            }

            while (++v8 < *v7);
          }

          v15 = (a2 + 64);
          if (*(a2 + 64) != *(a1 + 76))
          {
            v23 = 1970170734;
            adm::util::RTLogger::log<unsigned int const&,unsigned int &>((a1 + 80), "IO proc block size %u doesn't match the block size of the ExclaveDSPControllerClient %u", v15, (a1 + 76));
            goto LABEL_37;
          }

          if (*(v6 + 16) == 1)
          {
            v16 = *(a2 + 8);
            audiodspcontrollerdebug_audiodspcontroldebug_sethosttime(v6 + 1);
          }
        }

        v44 = 0;
        v45 = &v44;
        v46 = 0x3802000000;
        v47 = __Block_byref_object_copy__57;
        v48 = __Block_byref_object_dispose__58;
        v40[0] = MEMORY[0x277D85DD0];
        v40[1] = 0x40000000;
        v41 = ___ZN3adm5graph30ExclaveDSPControllerClientImpl7processEPKN4AMCP11Proc_StreamE_block_invoke;
        v42 = &unk_2784F0750;
        v43 = &v44;
        v57 = 0;
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v52 = 0u;
        memset(v58, 0, 104);
        v17 = *v6;
        v18 = tb_client_connection_message_construct();
        if (v18)
        {
          v19 = v18;
LABEL_29:
          v26 = *(a1 + 80);
          if (v26 >= 0x65)
          {
            if (std::chrono::system_clock::now().__d_.__rep_ - *(a1 + 88) <= 500999)
            {
              goto LABEL_34;
            }

            v26 = *(a1 + 80);
          }

          if (*MEMORY[0x277D7F098])
          {
            v27 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x277D7F098]);
            *(v27 + 16) = 0;
            *(v27 + 24) = 3;
            *(v27 + 32) = "tb call to process failed: tbError=%d";
            *(v27 + 40) = v26;
            *(v27 + 44) = v19;
            *v27 = &unk_28371B160;
            *(v27 + 8) = 0;
            caulk::concurrent::messenger::enqueue((a1 + 96), v27);
            *(a1 + 88) = std::chrono::system_clock::now();
LABEL_34:
            v23 = 1970170734;
            v28 = *(a1 + 80);
            if (v28 != -1)
            {
              *(a1 + 80) = v28 + 1;
            }

LABEL_36:
            _Block_object_dispose(&v44, 8);
            goto LABEL_37;
          }

LABEL_71:
          __break(1u);
        }

        tb_message_precheck_encoding();
        tb_message_raw_encode_u64();
        tb_message_complete();
        v51 = 0;
        v24 = *v6;
        v19 = tb_connection_send_query();
        if ((v19 & 0xFFFFFFF7) != 0)
        {
LABEL_28:
          v25 = *v6;
          tb_client_connection_message_destruct();
          goto LABEL_29;
        }

        if (!v51)
        {
          v19 = 4;
          goto LABEL_28;
        }

        v49 = 0;
        v50 = 0;
        tb_message_decode_u8();
        if (v49 != 1)
        {
          if (!v49)
          {
            v31 = v50;
            goto LABEL_51;
          }

LABEL_60:
          v38 = *v6;
          tb_client_connection_message_destruct();
          v19 = 7;
          goto LABEL_29;
        }

        tb_message_decode_u64();
        v31 = v50;
        if (v50 > 0xF0BC6BC4DC856BF3)
        {
          if (v50 == 0xF0BC6BC4DC856BF4)
          {
            goto LABEL_51;
          }

          v32 = 0x5C86F7F42A29C41BLL;
        }

        else
        {
          if (v50 == 0xB2C107004910703DLL)
          {
            goto LABEL_51;
          }

          v32 = 0xD0513AF3527449BDLL;
        }

        if (v50 != v32)
        {
          goto LABEL_60;
        }

LABEL_51:
        v41(v40, v49, v31);
        v33 = *v6;
        tb_client_connection_message_destruct();
        v34 = *(v45 + 40);
        if (v34 == 1)
        {
          v35 = v45 + 6;
        }

        else
        {
          v35 = 0;
        }

        if (v34 == 1)
        {
          v23 = 1634627437;
          v36 = *v35;
          if (*v35 != 0xB2C107004910703DLL)
          {
            if (v36 == 0x5C86F7F42A29C41BLL)
            {
              v37 = "PROCESSERROR_UNINITIALIZED";
            }

            else if (v36 == 0xD0513AF3527449BDLL)
            {
              v37 = "PROCESSERROR_FORMATNOTSUPPORTED";
            }

            else
            {
              v37 = v36 == 0xF0BC6BC4DC856BF4 ? "PROCESSERROR_UNKNOWN" : "<unknown>";
            }

            v58[0] = v37;
            adm::util::RTLogger::log<audiodsputility_processerror_s const&,char const*>((a1 + 80), v35, v58);
            v39 = *v35;
            if (*v35 != 0xB2C107004910703DLL)
            {
              if (v39 == 0xD0513AF3527449BDLL)
              {
                v23 = 1969646964;
              }

              else if (v39 == 0x5C86F7F42A29C41BLL)
              {
                v23 = 1768843636;
              }

              else
              {
                v23 = 1970170734;
              }
            }
          }
        }

        else
        {
          v23 = 0;
        }

        goto LABEL_36;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v20 = *(a1 + 80);
  if (v20 >= 0x65)
  {
    if (std::chrono::system_clock::now().__d_.__rep_ - *(a1 + 88) <= 500999)
    {
      goto LABEL_21;
    }

    v20 = *(a1 + 80);
  }

  if (!*MEMORY[0x277D7F098])
  {
    goto LABEL_71;
  }

  v21 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x277D7F098]);
  *(v21 + 16) = 0;
  *(v21 + 24) = 2;
  *(v21 + 32) = "ControllerClient(%p) process: EK unavailable";
  *(v21 + 40) = v20;
  *(v21 + 48) = a1;
  *v21 = &unk_28371B0B0;
  *(v21 + 8) = 0;
  caulk::concurrent::messenger::enqueue((a1 + 96), v21);
  *(a1 + 88) = std::chrono::system_clock::now();
LABEL_21:
  v22 = *(a1 + 80);
  if (v22 == -1)
  {
    v23 = 0;
    if (!v5)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v23 = 0;
    *(a1 + 80) = v22 + 1;
    if (!v5)
    {
      goto LABEL_38;
    }
  }

LABEL_37:
  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
LABEL_38:
  v29 = *MEMORY[0x277D85DE8];
  return v23;
}

void sub_223BB67BC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

__n128 __Block_byref_object_copy__57(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

uint64_t ___ZN3adm5graph30ExclaveDSPControllerClientImpl7processEPKN4AMCP11Proc_StreamE_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 32) + 8);
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return result;
}

std::chrono::system_clock::time_point adm::util::RTLogger::log<audiodsputility_processerror_s const&,char const*>(std::chrono::system_clock::time_point *a1, uint64_t *a2, uint64_t *a3)
{
  rep = a1->__d_.__rep_;
  if (LODWORD(a1->__d_.__rep_) >= 0x65)
  {
    result.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    if (result.__d_.__rep_ - a1[1].__d_.__rep_ < 501000)
    {
      goto LABEL_6;
    }

    rep = a1->__d_.__rep_;
  }

  result.__d_.__rep_ = *MEMORY[0x277D7F098];
  if (!*MEMORY[0x277D7F098])
  {
    __break(1u);
    return result;
  }

  v8 = *a3;
  v9 = *a2;
  v10 = caulk::rt_safe_memory_resource::rt_allocate(result.__d_.__rep_);
  *(v10 + 16) = 0;
  *(v10 + 24) = 3;
  *(v10 + 32) = "tb call to process failed: failure=%d, %s";
  *(v10 + 40) = rep;
  *(v10 + 48) = v9;
  *(v10 + 56) = v8;
  *v10 = &unk_28371B1B8;
  *(v10 + 8) = 0;
  caulk::concurrent::messenger::enqueue(&a1[2], v10);
  result.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  a1[1].__d_.__rep_ = result.__d_.__rep_;
LABEL_6:
  if (LODWORD(a1->__d_.__rep_) != -1)
  {
    ++LODWORD(a1->__d_.__rep_);
  }

  return result;
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<void adm::util::RTLogger::doLog<audiodsputility_processerror_s const&,char const*>(adm::util::RTLogLevel,char const*,audiodsputility_processerror_s const&,char const* &&)::{lambda(void)#1}>::perform(caulk::concurrent::message *a1)
{
  v2 = a1;
  adm::util::RTLogger::doLog<audiodsputility_processerror_s const&,char const*>(adm::util::RTLogLevel,char const*,audiodsputility_processerror_s const&,char const* &&)::{lambda(void)#1}::operator()(a1 + 24);
  return caulk::concurrent::details::rt_message_call<void adm::util::RTLogger::doLog<int &,unsigned char,unsigned long &>(adm::util::RTLogLevel,char const*,int &,unsigned char,unsigned long &)::{lambda(void)#1}>::rt_cleanup::~rt_cleanup(&v2);
}

void adm::util::RTLogger::doLog<audiodsputility_processerror_s const&,char const*>(adm::util::RTLogLevel,char const*,audiodsputility_processerror_s const&,char const* &&)::{lambda(void)#1}::operator()(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  caulk::make_string(*(a1 + 8), __p, *(a1 + 24), *(a1 + 32));
  v2 = *a1;
  adm_log_object = get_adm_log_object();
  v4 = adm_log_object;
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      if (!os_log_type_enabled(adm_log_object, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      v11 = __p;
      if (v17 < 0)
      {
        v11 = __p[0];
      }

      goto LABEL_25;
    }

    if (v2 != 3)
    {
LABEL_14:
      if (!os_log_type_enabled(adm_log_object, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      v11 = __p;
      if (v17 < 0)
      {
        v11 = __p[0];
      }

LABEL_25:
      v14 = *(a1 + 16);
      *buf = 136315394;
      v19 = v11;
      v20 = 1024;
      v21 = v14;
      v7 = v4;
      v8 = OS_LOG_TYPE_DEFAULT;
LABEL_26:
      _os_log_impl(&dword_223B4A000, v7, v8, "%s. Log counter = %u", buf, 0x12u);
      goto LABEL_27;
    }

    if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_ERROR))
    {
      v9 = __p;
      if (v17 < 0)
      {
        v9 = __p[0];
      }

      v10 = *(a1 + 16);
      *buf = 136315394;
      v19 = v9;
      v20 = 1024;
      v21 = v10;
      _os_log_error_impl(&dword_223B4A000, v4, OS_LOG_TYPE_ERROR, "!!! ADM realtime error: %s. Log counter = %u", buf, 0x12u);
    }
  }

  else
  {
    if (v2)
    {
      if (v2 == 1)
      {
        if (!os_log_type_enabled(adm_log_object, OS_LOG_TYPE_INFO))
        {
          goto LABEL_27;
        }

        v5 = __p;
        if (v17 < 0)
        {
          v5 = __p[0];
        }

        v6 = *(a1 + 16);
        *buf = 136315394;
        v19 = v5;
        v20 = 1024;
        v21 = v6;
        v7 = v4;
        v8 = OS_LOG_TYPE_INFO;
        goto LABEL_26;
      }

      goto LABEL_14;
    }

    if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_DEBUG))
    {
      v12 = __p;
      if (v17 < 0)
      {
        v12 = __p[0];
      }

      v13 = *(a1 + 16);
      *buf = 136315394;
      v19 = v12;
      v20 = 1024;
      v21 = v13;
      _os_log_debug_impl(&dword_223B4A000, v4, OS_LOG_TYPE_DEBUG, "%s. Log counter = %u", buf, 0x12u);
    }
  }

LABEL_27:
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void caulk::concurrent::details::rt_message_call<void adm::util::RTLogger::doLog<audiodsputility_processerror_s const&,char const*>(adm::util::RTLogLevel,char const*,audiodsputility_processerror_s const&,char const* &&)::{lambda(void)#1}>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x223DF43A0);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<void adm::util::RTLogger::doLog<tb_error_t &>(adm::util::RTLogLevel,char const*,tb_error_t &)::{lambda(void)#1}>::perform(caulk::concurrent::message *a1)
{
  v2 = a1;
  adm::util::RTLogger::doLog<tb_error_t &>(adm::util::RTLogLevel,char const*,tb_error_t &)::{lambda(void)#1}::operator()(a1 + 24);
  return caulk::concurrent::details::rt_message_call<void adm::util::RTLogger::doLog<int &>(adm::util::RTLogLevel,char const*,int &)::{lambda(void)#1}>::rt_cleanup::~rt_cleanup(&v2);
}

void adm::util::RTLogger::doLog<tb_error_t &>(adm::util::RTLogLevel,char const*,tb_error_t &)::{lambda(void)#1}::operator()(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  caulk::make_string(*(a1 + 8), __p, *(a1 + 20));
  v2 = *a1;
  adm_log_object = get_adm_log_object();
  v4 = adm_log_object;
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      if (!os_log_type_enabled(adm_log_object, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      v11 = __p;
      if (v17 < 0)
      {
        v11 = __p[0];
      }

      goto LABEL_25;
    }

    if (v2 != 3)
    {
LABEL_14:
      if (!os_log_type_enabled(adm_log_object, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      v11 = __p;
      if (v17 < 0)
      {
        v11 = __p[0];
      }

LABEL_25:
      v14 = *(a1 + 16);
      *buf = 136315394;
      v19 = v11;
      v20 = 1024;
      v21 = v14;
      v7 = v4;
      v8 = OS_LOG_TYPE_DEFAULT;
LABEL_26:
      _os_log_impl(&dword_223B4A000, v7, v8, "%s. Log counter = %u", buf, 0x12u);
      goto LABEL_27;
    }

    if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_ERROR))
    {
      v9 = __p;
      if (v17 < 0)
      {
        v9 = __p[0];
      }

      v10 = *(a1 + 16);
      *buf = 136315394;
      v19 = v9;
      v20 = 1024;
      v21 = v10;
      _os_log_error_impl(&dword_223B4A000, v4, OS_LOG_TYPE_ERROR, "!!! ADM realtime error: %s. Log counter = %u", buf, 0x12u);
    }
  }

  else
  {
    if (v2)
    {
      if (v2 == 1)
      {
        if (!os_log_type_enabled(adm_log_object, OS_LOG_TYPE_INFO))
        {
          goto LABEL_27;
        }

        v5 = __p;
        if (v17 < 0)
        {
          v5 = __p[0];
        }

        v6 = *(a1 + 16);
        *buf = 136315394;
        v19 = v5;
        v20 = 1024;
        v21 = v6;
        v7 = v4;
        v8 = OS_LOG_TYPE_INFO;
        goto LABEL_26;
      }

      goto LABEL_14;
    }

    if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_DEBUG))
    {
      v12 = __p;
      if (v17 < 0)
      {
        v12 = __p[0];
      }

      v13 = *(a1 + 16);
      *buf = 136315394;
      v19 = v12;
      v20 = 1024;
      v21 = v13;
      _os_log_debug_impl(&dword_223B4A000, v4, OS_LOG_TYPE_DEBUG, "%s. Log counter = %u", buf, 0x12u);
    }
  }

LABEL_27:
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void caulk::concurrent::details::rt_message_call<void adm::util::RTLogger::doLog<tb_error_t &>(adm::util::RTLogLevel,char const*,tb_error_t &)::{lambda(void)#1}>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x223DF43A0);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<void adm::util::RTLogger::doLog<adm::graph::ExclaveDSPControllerClientImpl *>(adm::util::RTLogLevel,char const*,adm::graph::ExclaveDSPControllerClientImpl * &&)::{lambda(void)#1}>::perform(caulk::concurrent::message *a1)
{
  v2 = a1;
  adm::util::RTLogger::doLog<adm::graph::ExclaveDSPControllerClientImpl *>(adm::util::RTLogLevel,char const*,adm::graph::ExclaveDSPControllerClientImpl * &&)::{lambda(void)#1}::operator()(a1 + 24);
  return caulk::concurrent::details::rt_message_call<adm::CustomPropertyManager::onGraphParameterUpdate(adm::CustomPropertyManager::ParameterMapping const&,float)::$_0>::rt_cleanup::~rt_cleanup(&v2);
}

void adm::util::RTLogger::doLog<adm::graph::ExclaveDSPControllerClientImpl *>(adm::util::RTLogLevel,char const*,adm::graph::ExclaveDSPControllerClientImpl * &&)::{lambda(void)#1}::operator()(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  caulk::make_string(*(a1 + 8), __p, *(a1 + 24));
  v2 = *a1;
  adm_log_object = get_adm_log_object();
  v4 = adm_log_object;
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      if (!os_log_type_enabled(adm_log_object, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      v11 = __p;
      if (v17 < 0)
      {
        v11 = __p[0];
      }

      goto LABEL_25;
    }

    if (v2 != 3)
    {
LABEL_14:
      if (!os_log_type_enabled(adm_log_object, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      v11 = __p;
      if (v17 < 0)
      {
        v11 = __p[0];
      }

LABEL_25:
      v14 = *(a1 + 16);
      *buf = 136315394;
      v19 = v11;
      v20 = 1024;
      v21 = v14;
      v7 = v4;
      v8 = OS_LOG_TYPE_DEFAULT;
LABEL_26:
      _os_log_impl(&dword_223B4A000, v7, v8, "%s. Log counter = %u", buf, 0x12u);
      goto LABEL_27;
    }

    if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_ERROR))
    {
      v9 = __p;
      if (v17 < 0)
      {
        v9 = __p[0];
      }

      v10 = *(a1 + 16);
      *buf = 136315394;
      v19 = v9;
      v20 = 1024;
      v21 = v10;
      _os_log_error_impl(&dword_223B4A000, v4, OS_LOG_TYPE_ERROR, "!!! ADM realtime error: %s. Log counter = %u", buf, 0x12u);
    }
  }

  else
  {
    if (v2)
    {
      if (v2 == 1)
      {
        if (!os_log_type_enabled(adm_log_object, OS_LOG_TYPE_INFO))
        {
          goto LABEL_27;
        }

        v5 = __p;
        if (v17 < 0)
        {
          v5 = __p[0];
        }

        v6 = *(a1 + 16);
        *buf = 136315394;
        v19 = v5;
        v20 = 1024;
        v21 = v6;
        v7 = v4;
        v8 = OS_LOG_TYPE_INFO;
        goto LABEL_26;
      }

      goto LABEL_14;
    }

    if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_DEBUG))
    {
      v12 = __p;
      if (v17 < 0)
      {
        v12 = __p[0];
      }

      v13 = *(a1 + 16);
      *buf = 136315394;
      v19 = v12;
      v20 = 1024;
      v21 = v13;
      _os_log_debug_impl(&dword_223B4A000, v4, OS_LOG_TYPE_DEBUG, "%s. Log counter = %u", buf, 0x12u);
    }
  }

LABEL_27:
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void caulk::concurrent::details::rt_message_call<void adm::util::RTLogger::doLog<adm::graph::ExclaveDSPControllerClientImpl *>(adm::util::RTLogLevel,char const*,adm::graph::ExclaveDSPControllerClientImpl * &&)::{lambda(void)#1}>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x223DF43A0);
}

uint64_t adm::graph::ExclaveDSPControllerClientImpl::ioStarting(adm::graph::ExclaveDSPControllerClientImpl *this)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = *(this + 2);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(this + 1);
      if (v4)
      {
        adm_log_object = get_adm_log_object();
        if (os_signpost_enabled(adm_log_object))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_223B4A000, adm_log_object, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ADM::TBCall::IOStarting", &unk_223C17543, buf, 2u);
        }

        v23 = 0;
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        *buf = 0u;
        v18 = 0u;
        v6 = *v4;
        v7 = tb_client_connection_message_construct();
        if (!v7)
        {
          tb_message_precheck_encoding();
          tb_message_raw_encode_u64();
          tb_message_complete();
          v8 = *v4;
          v7 = tb_connection_send_query();
          v9 = *v4;
          tb_client_connection_message_destruct();
        }

        v10 = get_adm_log_object();
        if (os_signpost_enabled(v10))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_223B4A000, v10, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ADM::TBCall::IOStarting", &unk_223C17543, buf, 2u);
        }

        v11 = get_adm_log_object();
        v12 = v11;
        if (v7)
        {
          v13 = 1970170734;
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            *&buf[4] = v7;
            _os_log_error_impl(&dword_223B4A000, v12, OS_LOG_TYPE_ERROR, "tb call to iostarting failed: %d", buf, 8u);
          }
        }

        else
        {
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_223B4A000, v12, OS_LOG_TYPE_DEFAULT, "ioStarting() completed", buf, 2u);
          }

          v13 = 0;
        }

LABEL_17:
        std::__shared_weak_count::__release_shared[abi:ne200100](v3);
        goto LABEL_18;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v14 = get_adm_log_object();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = this;
    _os_log_impl(&dword_223B4A000, v14, OS_LOG_TYPE_DEFAULT, "ControllerClient(%p) ioStarting: EK unavailable", buf, 0xCu);
  }

  v13 = 0;
  if (v3)
  {
    goto LABEL_17;
  }

LABEL_18:
  v15 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t adm::graph::ExclaveDSPControllerClientImpl::configure(uint64_t a1, uint64_t a2, int a3)
{
  v54 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 16);
  if (v4)
  {
    v6 = std::__shared_weak_count::lock(v4);
    if (v6)
    {
      v7 = *(a1 + 8);
      if (v7)
      {
        v40 = adm::exclaves::utility::convert_to<std::optional<audiodsputility_outputport_s>,adm::exclaves::OutputPort>(a3);
        v41 = v8;
        if ((v8 & 1) == 0)
        {
          v16 = 1651536493;
          adm_log_object = get_adm_log_object();
          if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_ERROR))
          {
            LOWORD(buf) = 0;
            _os_log_error_impl(&dword_223B4A000, adm_log_object, OS_LOG_TYPE_ERROR, "failed to convert output port", &buf, 2u);
          }

          goto LABEL_35;
        }

        v35 = 0;
        v36 = &v35;
        v37 = 0x3802000000;
        v38 = __Block_byref_object_copy__50;
        v39 = __Block_byref_object_dispose__51;
        v9 = get_adm_log_object();
        if (os_signpost_enabled(v9))
        {
          LOWORD(buf) = 0;
          _os_signpost_emit_with_name_impl(&dword_223B4A000, v9, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ADM::TBCall::PrepareForIO", &unk_223C17543, &buf, 2u);
        }

        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 0x40000000;
        v32 = ___ZN3adm5graph30ExclaveDSPControllerClientImpl9configureEjNS_8exclaves10OutputPortE_block_invoke;
        v33 = &unk_2784F0728;
        v34 = &v35;
        v46 = 0;
        memset(v45, 0, sizeof(v45));
        v53 = 0;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        buf = 0u;
        v48 = 0u;
        v10 = *v7;
        v11 = tb_client_connection_message_construct();
        if (!v11)
        {
          tb_message_precheck_encoding();
          tb_message_raw_encode_u64();
          tb_message_raw_encode_u32();
          audiodsputility_outputport__raw_encode(v45, &v40);
          tb_message_complete();
          v44 = 0;
          v12 = *v7;
          v13 = tb_connection_send_query();
          if ((v13 & 0xFFFFFFF7) != 0)
          {
            v11 = v13;
LABEL_10:
            v14 = *v7;
            tb_client_connection_message_destruct();
            goto LABEL_11;
          }

          if (v44)
          {
            v42 = 0;
            v43 = 0;
            tb_message_decode_u8();
            if (v42 == 1)
            {
              tb_message_decode_u64();
              v11 = 7;
              v26 = v43;
              if (v43 <= 0x721C3F2F787AA9CLL)
              {
                if (v43 == 0xA79E13CA15F5775CLL || v43 == 0xAD6FFC2BEEE2EB53)
                {
                  goto LABEL_67;
                }

                v28 = 0xF9A9592E1248F97ALL;
              }

              else if (v43 > 0x33D96A0AB5A284C1)
              {
                if (v43 == 0x7F9919C7ACD04D39)
                {
                  goto LABEL_67;
                }

                v28 = 0x33D96A0AB5A284C2;
              }

              else
              {
                if (v43 == 0x721C3F2F787AA9DLL)
                {
                  goto LABEL_67;
                }

                v28 = 0xB6B27F51290F905;
              }

              if (v43 != v28)
              {
                goto LABEL_10;
              }
            }

            else
            {
              if (v42)
              {
                v11 = 7;
                goto LABEL_10;
              }

              v26 = v43;
            }

LABEL_67:
            v32(v31, v42, v26);
            v11 = 0;
            goto LABEL_10;
          }

          v27 = *v7;
          tb_client_connection_message_destruct();
          v11 = 4;
        }

LABEL_11:
        v15 = get_adm_log_object();
        if (os_signpost_enabled(v15))
        {
          LOWORD(buf) = 0;
          _os_signpost_emit_with_name_impl(&dword_223B4A000, v15, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ADM::TBCall::PrepareForIO", &unk_223C17543, &buf, 2u);
        }

        if (v11)
        {
          v16 = 1970170734;
          v17 = get_adm_log_object();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf) = 67109120;
            DWORD1(buf) = v11;
            _os_log_error_impl(&dword_223B4A000, v17, OS_LOG_TYPE_ERROR, "tb call to configure failed: tbError=%d", &buf, 8u);
          }

          goto LABEL_34;
        }

        v20 = *(v36 + 40);
        if (v20 == 1)
        {
          v21 = v36 + 6;
        }

        else
        {
          v21 = 0;
        }

        if (v20 != 1)
        {
          v16 = 0;
LABEL_34:
          _Block_object_dispose(&v35, 8);
LABEL_35:
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
          goto LABEL_36;
        }

        v22 = get_adm_log_object();
        if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
LABEL_29:
          v23 = *v21;
          if (*v21 > 0x721C3F2F787AA9CLL)
          {
            switch(v23)
            {
              case 0x721C3F2F787AA9DLL:
                v16 = 1684498798;
                goto LABEL_34;
              case 0xB6B27F51290F905:
                v16 = 1684496757;
                goto LABEL_34;
              case 0x33D96A0AB5A284C2:
                v16 = 1684500595;
                goto LABEL_34;
            }
          }

          else
          {
            switch(v23)
            {
              case 0xA79E13CA15F5775CLL:
                v16 = 1684497264;
                goto LABEL_34;
              case 0xAD6FFC2BEEE2EB53:
                v16 = 1970431354;
                goto LABEL_34;
              case 0xF9A9592E1248F97ALL:
                v16 = 1969646964;
                goto LABEL_34;
            }
          }

          v16 = 1970170734;
          goto LABEL_34;
        }

        v29 = *v21;
        if (*v21 > 0x721C3F2F787AA9CLL)
        {
          switch(v29)
          {
            case 0x721C3F2F787AA9DLL:
              v30 = "SETUPERROR_INITIALIZING";
              goto LABEL_79;
            case 0xB6B27F51290F905:
              v30 = "SETUPERROR_SETTINGAUSTRIP";
              goto LABEL_79;
            case 0x33D96A0AB5A284C2:
              v30 = "SETUPERROR_SETTINGPROPSTRIP";
              goto LABEL_79;
          }
        }

        else
        {
          switch(v29)
          {
            case 0xA79E13CA15F5775CLL:
              v30 = "SETUPERROR_COMPILINGGRAPH";
              goto LABEL_79;
            case 0xAD6FFC2BEEE2EB53:
              v30 = "SETUPERROR_PARSINGDATABASE";
              goto LABEL_79;
            case 0xF9A9592E1248F97ALL:
              v30 = "SETUPERROR_FORMATNOTSUPPORTED";
LABEL_79:
              LODWORD(buf) = 136315138;
              *(&buf + 4) = v30;
              _os_log_error_impl(&dword_223B4A000, v22, OS_LOG_TYPE_ERROR, "tb call to configure failed: failure=%s", &buf, 0xCu);
              goto LABEL_29;
          }
        }

        if (v29 == 0x7F9919C7ACD04D39)
        {
          v30 = "SETUPERROR_UNKNOWN";
        }

        else
        {
          v30 = "<unknown>";
        }

        goto LABEL_79;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  v18 = get_adm_log_object();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = a1;
    _os_log_impl(&dword_223B4A000, v18, OS_LOG_TYPE_DEFAULT, "ControllerClient(%p) configure: EK unavailable", &buf, 0xCu);
  }

  v16 = 1970431354;
  if (v6)
  {
    goto LABEL_35;
  }

LABEL_36:
  v24 = *MEMORY[0x277D85DE8];
  return v16;
}

{
  v55 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 16);
  if (v4)
  {
    v6 = std::__shared_weak_count::lock(v4);
    if (v6)
    {
      v7 = *(a1 + 8);
      if (v7)
      {
        if (a3 != 1886216809)
        {
          v15 = 1651536493;
          adm_log_object = get_adm_log_object();
          if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_ERROR))
          {
            LOWORD(buf) = 0;
            _os_log_error_impl(&dword_223B4A000, adm_log_object, OS_LOG_TYPE_ERROR, "failed to convert input port", &buf, 2u);
          }

          goto LABEL_35;
        }

        v34 = 0;
        v35 = &v34;
        v36 = 0x3802000000;
        v37 = __Block_byref_object_copy__46;
        v38 = __Block_byref_object_dispose__47;
        v8 = get_adm_log_object();
        if (os_signpost_enabled(v8))
        {
          LOWORD(buf) = 0;
          _os_signpost_emit_with_name_impl(&dword_223B4A000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ADM::TBCall::PrepareForIO", &unk_223C17543, &buf, 2u);
        }

        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 0x40000000;
        v31 = ___ZN3adm5graph30ExclaveDSPControllerClientImpl9configureEjNS_8exclaves9InputPortE_block_invoke;
        v32 = &unk_2784F0700;
        v33 = &v34;
        v47 = 0;
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v42 = 0u;
        v54 = 0;
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        buf = 0u;
        v49 = 0u;
        v9 = *v7;
        v10 = tb_client_connection_message_construct();
        if (!v10)
        {
          tb_message_precheck_encoding();
          tb_message_raw_encode_u64();
          tb_message_raw_encode_u32();
          tb_message_raw_encode_u64();
          tb_message_complete();
          v41 = 0;
          v11 = *v7;
          v12 = tb_connection_send_query();
          if ((v12 & 0xFFFFFFF7) != 0)
          {
            v10 = v12;
LABEL_10:
            v13 = *v7;
            tb_client_connection_message_destruct();
            goto LABEL_11;
          }

          if (v41)
          {
            v39 = 0;
            v40 = 0;
            tb_message_decode_u8();
            if (v39 == 1)
            {
              tb_message_decode_u64();
              v10 = 7;
              v25 = v40;
              if (v40 <= 0x721C3F2F787AA9CLL)
              {
                if (v40 == 0xA79E13CA15F5775CLL || v40 == 0xAD6FFC2BEEE2EB53)
                {
                  goto LABEL_67;
                }

                v27 = 0xF9A9592E1248F97ALL;
              }

              else if (v40 > 0x33D96A0AB5A284C1)
              {
                if (v40 == 0x7F9919C7ACD04D39)
                {
                  goto LABEL_67;
                }

                v27 = 0x33D96A0AB5A284C2;
              }

              else
              {
                if (v40 == 0x721C3F2F787AA9DLL)
                {
                  goto LABEL_67;
                }

                v27 = 0xB6B27F51290F905;
              }

              if (v40 != v27)
              {
                goto LABEL_10;
              }
            }

            else
            {
              if (v39)
              {
                v10 = 7;
                goto LABEL_10;
              }

              v25 = v40;
            }

LABEL_67:
            v31(v30, v39, v25);
            v10 = 0;
            goto LABEL_10;
          }

          v26 = *v7;
          tb_client_connection_message_destruct();
          v10 = 4;
        }

LABEL_11:
        v14 = get_adm_log_object();
        if (os_signpost_enabled(v14))
        {
          LOWORD(buf) = 0;
          _os_signpost_emit_with_name_impl(&dword_223B4A000, v14, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ADM::TBCall::PrepareForIO", &unk_223C17543, &buf, 2u);
        }

        if (v10)
        {
          v15 = 1970170734;
          v16 = get_adm_log_object();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf) = 67109120;
            DWORD1(buf) = v10;
            _os_log_error_impl(&dword_223B4A000, v16, OS_LOG_TYPE_ERROR, "tb call to configure failed: tbError=%d", &buf, 8u);
          }

          goto LABEL_34;
        }

        v19 = *(v35 + 40);
        if (v19 == 1)
        {
          v20 = v35 + 6;
        }

        else
        {
          v20 = 0;
        }

        if (v19 != 1)
        {
          v15 = 0;
LABEL_34:
          _Block_object_dispose(&v34, 8);
LABEL_35:
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
          goto LABEL_36;
        }

        v21 = get_adm_log_object();
        if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
LABEL_29:
          v22 = *v20;
          if (*v20 > 0x721C3F2F787AA9CLL)
          {
            switch(v22)
            {
              case 0x721C3F2F787AA9DLL:
                v15 = 1684498798;
                goto LABEL_34;
              case 0xB6B27F51290F905:
                v15 = 1684496757;
                goto LABEL_34;
              case 0x33D96A0AB5A284C2:
                v15 = 1684500595;
                goto LABEL_34;
            }
          }

          else
          {
            switch(v22)
            {
              case 0xA79E13CA15F5775CLL:
                v15 = 1684497264;
                goto LABEL_34;
              case 0xAD6FFC2BEEE2EB53:
                v15 = 1970431354;
                goto LABEL_34;
              case 0xF9A9592E1248F97ALL:
                v15 = 1969646964;
                goto LABEL_34;
            }
          }

          v15 = 1970170734;
          goto LABEL_34;
        }

        v28 = *v20;
        if (*v20 > 0x721C3F2F787AA9CLL)
        {
          switch(v28)
          {
            case 0x721C3F2F787AA9DLL:
              v29 = "SETUPERROR_INITIALIZING";
              goto LABEL_79;
            case 0xB6B27F51290F905:
              v29 = "SETUPERROR_SETTINGAUSTRIP";
              goto LABEL_79;
            case 0x33D96A0AB5A284C2:
              v29 = "SETUPERROR_SETTINGPROPSTRIP";
              goto LABEL_79;
          }
        }

        else
        {
          switch(v28)
          {
            case 0xA79E13CA15F5775CLL:
              v29 = "SETUPERROR_COMPILINGGRAPH";
              goto LABEL_79;
            case 0xAD6FFC2BEEE2EB53:
              v29 = "SETUPERROR_PARSINGDATABASE";
              goto LABEL_79;
            case 0xF9A9592E1248F97ALL:
              v29 = "SETUPERROR_FORMATNOTSUPPORTED";
LABEL_79:
              LODWORD(buf) = 136315138;
              *(&buf + 4) = v29;
              _os_log_error_impl(&dword_223B4A000, v21, OS_LOG_TYPE_ERROR, "tb call to configure failed: failure=%s", &buf, 0xCu);
              goto LABEL_29;
          }
        }

        if (v28 == 0x7F9919C7ACD04D39)
        {
          v29 = "SETUPERROR_UNKNOWN";
        }

        else
        {
          v29 = "<unknown>";
        }

        goto LABEL_79;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  v17 = get_adm_log_object();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = a1;
    _os_log_impl(&dword_223B4A000, v17, OS_LOG_TYPE_DEFAULT, "ControllerClient(%p) configure: EK unavailable", &buf, 0xCu);
  }

  v15 = 1970431354;
  if (v6)
  {
    goto LABEL_35;
  }

LABEL_36:
  v23 = *MEMORY[0x277D85DE8];
  return v15;
}

__n128 __Block_byref_object_copy__50(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

uint64_t ___ZN3adm5graph30ExclaveDSPControllerClientImpl9configureEjNS_8exclaves10OutputPortE_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 32) + 8);
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return result;
}

__n128 __Block_byref_object_copy__46(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

uint64_t ___ZN3adm5graph30ExclaveDSPControllerClientImpl9configureEjNS_8exclaves9InputPortE_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 32) + 8);
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return result;
}

uint64_t adm::graph::ExclaveDSPControllerClientImpl::configure(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8)
{
  v57 = *MEMORY[0x277D85DE8];
  v9 = *(a1 + 16);
  if (v9)
  {
    v17 = std::__shared_weak_count::lock(v9);
    if (v17)
    {
      v18 = *(a1 + 8);
      if (v18)
      {
        *(a1 + 76) = a5;
        adm::exclaves::utility::convert_to<std::optional<audiodsptypes_streamdescription_s>,CA::StreamDescription>(v49, a2);
        adm::exclaves::utility::convert_to<std::optional<audiodsptypes_streamdescription_s>,CA::StreamDescription>(v47, a3);
        adm::exclaves::utility::convert_to<std::optional<audiodsptypes_streamdescription_s>,CA::StreamDescription>(v45, a4);
        if (a6 == 1)
        {
          v19 = 0x3DF307DCB5382200;
          v20 = 243;
        }

        else
        {
          if (a6)
          {
            v19 = 0;
            v25 = 0;
            v20 = 0;
LABEL_16:
            v43 = v20 | v19;
            v44 = v25;
            v26 = 0x29D9165411843273;
            if (a7 != 1886216809)
            {
              v26 = 0;
            }

            v41 = v26;
            v42 = a7 == 1886216809;
            v39 = adm::exclaves::utility::convert_to<std::optional<audiodsputility_outputport_s>,adm::exclaves::OutputPort>(a8);
            v40 = v27;
            if (v50)
            {
              if (v48)
              {
                if (v46)
                {
                  if (a7 == 1886216809)
                  {
                    if (v27)
                    {
                      if (v25)
                      {
                        if (*(a1 + 72))
                        {
                          *&buf = 0;
                          *(&buf + 1) = &buf;
                          v54 = 0x3802000000;
                          v55 = __Block_byref_object_copy__42;
                          v56 = __Block_byref_object_dispose__43;
                          adm::ScopedSignpostTBCallPrepareForIO::ScopedSignpostTBCallPrepareForIO(v38);
                          v28 = audiodspcontroller_audiodspcontrol_prepareforio(v18, a5, v49, v47, v45, &v43, &v41, &v39);
                          adm::ScopedSignpostTBCallPrepareForIO::closeNow(v38);
                          if (v28)
                          {
                            v22 = 1970170734;
                            adm_log_object = get_adm_log_object();
                            if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_ERROR))
                            {
                              *v51 = 67109120;
                              LODWORD(v52) = v28;
                              _os_log_error_impl(&dword_223B4A000, adm_log_object, OS_LOG_TYPE_ERROR, "tb call to configure failed: tbError=%d", v51, 8u);
                            }

                            goto LABEL_54;
                          }

                          v32 = *(*(&buf + 1) + 40);
                          if (v32 == 1)
                          {
                            v33 = (*(&buf + 1) + 48);
                          }

                          else
                          {
                            v33 = 0;
                          }

                          if (v32 != 1)
                          {
                            v22 = 0;
LABEL_54:
                            adm::ScopedSignpostTBCallPrepareForIO::~ScopedSignpostTBCallPrepareForIO(v38);
                            _Block_object_dispose(&buf, 8);
                            goto LABEL_11;
                          }

                          v34 = get_adm_log_object();
                          if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                          {
LABEL_49:
                            v35 = *v33;
                            if (*v33 > 0x721C3F2F787AA9CLL)
                            {
                              switch(v35)
                              {
                                case 0x721C3F2F787AA9DLL:
                                  v22 = 1684498798;
                                  goto LABEL_54;
                                case 0xB6B27F51290F905:
                                  v22 = 1684496757;
                                  goto LABEL_54;
                                case 0x33D96A0AB5A284C2:
                                  v22 = 1684500595;
                                  goto LABEL_54;
                              }
                            }

                            else
                            {
                              switch(v35)
                              {
                                case 0xA79E13CA15F5775CLL:
                                  v22 = 1684497264;
                                  goto LABEL_54;
                                case 0xAD6FFC2BEEE2EB53:
                                  v22 = 1970431354;
                                  goto LABEL_54;
                                case 0xF9A9592E1248F97ALL:
                                  v22 = 1969646964;
                                  goto LABEL_54;
                              }
                            }

                            v22 = 1970170734;
                            goto LABEL_54;
                          }

                          v36 = *v33;
                          if (*v33 > 0x721C3F2F787AA9CLL)
                          {
                            switch(v36)
                            {
                              case 0x721C3F2F787AA9DLL:
                                v37 = "SETUPERROR_INITIALIZING";
                                goto LABEL_80;
                              case 0xB6B27F51290F905:
                                v37 = "SETUPERROR_SETTINGAUSTRIP";
                                goto LABEL_80;
                              case 0x33D96A0AB5A284C2:
                                v37 = "SETUPERROR_SETTINGPROPSTRIP";
                                goto LABEL_80;
                            }
                          }

                          else
                          {
                            switch(v36)
                            {
                              case 0xA79E13CA15F5775CLL:
                                v37 = "SETUPERROR_COMPILINGGRAPH";
                                goto LABEL_80;
                              case 0xAD6FFC2BEEE2EB53:
                                v37 = "SETUPERROR_PARSINGDATABASE";
                                goto LABEL_80;
                              case 0xF9A9592E1248F97ALL:
                                v37 = "SETUPERROR_FORMATNOTSUPPORTED";
LABEL_80:
                                *v51 = 136315138;
                                v52 = v37;
                                _os_log_error_impl(&dword_223B4A000, v34, OS_LOG_TYPE_ERROR, "tb call to configure failed: failure=%s", v51, 0xCu);
                                goto LABEL_49;
                            }
                          }

                          if (v36 == 0x7F9919C7ACD04D39)
                          {
                            v37 = "SETUPERROR_UNKNOWN";
                          }

                          else
                          {
                            v37 = "<unknown>";
                          }

                          goto LABEL_80;
                        }

                        v22 = 1768843636;
                        v30 = get_adm_log_object();
                        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                        {
                          LOWORD(buf) = 0;
                          v31 = "failed to create refStreamInboundBuffer";
                          goto LABEL_42;
                        }

LABEL_11:
                        std::__shared_weak_count::__release_shared[abi:ne200100](v17);
                        goto LABEL_12;
                      }

                      v22 = 1651536493;
                      v30 = get_adm_log_object();
                      if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_11;
                      }

                      LOWORD(buf) = 0;
                      v31 = "failed to convert latency";
                    }

                    else
                    {
                      v22 = 1651536493;
                      v30 = get_adm_log_object();
                      if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_11;
                      }

                      LOWORD(buf) = 0;
                      v31 = "failed to convert output port";
                    }
                  }

                  else
                  {
                    v22 = 1651536493;
                    v30 = get_adm_log_object();
                    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_11;
                    }

                    LOWORD(buf) = 0;
                    v31 = "failed to convert input port";
                  }
                }

                else
                {
                  v22 = 1651536493;
                  v30 = get_adm_log_object();
                  if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_11;
                  }

                  LOWORD(buf) = 0;
                  v31 = "failed to convert out format";
                }
              }

              else
              {
                v22 = 1651536493;
                v30 = get_adm_log_object();
                if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_11;
                }

                LOWORD(buf) = 0;
                v31 = "failed to convert ref format";
              }
            }

            else
            {
              v22 = 1651536493;
              v30 = get_adm_log_object();
              if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_11;
              }

              LOWORD(buf) = 0;
              v31 = "failed to convert mic format";
            }

LABEL_42:
            _os_log_error_impl(&dword_223B4A000, v30, OS_LOG_TYPE_ERROR, v31, &buf, 2u);
            goto LABEL_11;
          }

          v19 = 0x8C3BC6B79890B00;
          v20 = 133;
        }

        v25 = 1;
        goto LABEL_16;
      }
    }
  }

  else
  {
    v17 = 0;
  }

  v21 = get_adm_log_object();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = a1;
    _os_log_impl(&dword_223B4A000, v21, OS_LOG_TYPE_DEFAULT, "ControllerClient(%p) configure: EK unavailable", &buf, 0xCu);
  }

  v22 = 1970431354;
  if (v17)
  {
    goto LABEL_11;
  }

LABEL_12:
  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

__n128 __Block_byref_object_copy__42(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

uint64_t adm::ScopedSignpostTBCallPrepareForIO::ScopedSignpostTBCallPrepareForIO(uint64_t a1)
{
  *a1 = 1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  adm_log_object = get_adm_log_object();
  if (os_signpost_enabled(adm_log_object))
  {
    *v4 = 0;
    _os_signpost_emit_with_name_impl(&dword_223B4A000, adm_log_object, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ADM::TBCall::PrepareForIO", &unk_223C17543, v4, 2u);
  }

  return a1;
}

uint64_t ___ZN3adm5graph30ExclaveDSPControllerClientImpl9configureERKN2CA17StreamDescriptionES5_S5_jNS_8exclaves17MicRefLatencyTypeENS6_9InputPortENS6_10OutputPortE_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 32) + 8);
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return result;
}

void adm::ScopedSignpostTBCallPrepareForIO::closeNow(adm::ScopedSignpostTBCallPrepareForIO *this)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*this == 1)
  {
    *this = 0;
    v2 = *(this + 16);
    adm_log_object = get_adm_log_object();
    v4 = os_signpost_enabled(adm_log_object);
    if (v2)
    {
      if (v4)
      {
        v5 = *(this + 1);
        v10 = 136315138;
        v11 = v5;
        v6 = "%s";
        v7 = adm_log_object;
        v8 = 12;
LABEL_7:
        _os_signpost_emit_with_name_impl(&dword_223B4A000, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ADM::TBCall::PrepareForIO", v6, &v10, v8);
      }
    }

    else if (v4)
    {
      LOWORD(v10) = 0;
      v6 = &unk_223C17543;
      v7 = adm_log_object;
      v8 = 2;
      goto LABEL_7;
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void adm::ScopedSignpostTBCallPrepareForIO::~ScopedSignpostTBCallPrepareForIO(adm::ScopedSignpostTBCallPrepareForIO *this)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*this == 1)
  {
    *this = 0;
    v2 = *(this + 16);
    adm_log_object = get_adm_log_object();
    v4 = os_signpost_enabled(adm_log_object);
    if (v2)
    {
      if (v4)
      {
        v5 = *(this + 1);
        v10 = 136315138;
        v11 = v5;
        v6 = "%s";
        v7 = adm_log_object;
        v8 = 12;
LABEL_7:
        _os_signpost_emit_with_name_impl(&dword_223B4A000, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ADM::TBCall::PrepareForIO", v6, &v10, v8);
      }
    }

    else if (v4)
    {
      LOWORD(v10) = 0;
      v6 = &unk_223C17543;
      v7 = adm_log_object;
      v8 = 2;
      goto LABEL_7;
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void adm::graph::ExclaveDSPControllerClientImpl::~ExclaveDSPControllerClientImpl(adm::graph::ExclaveDSPControllerClientImpl *this)
{
  adm::graph::ExclaveDSPControllerClientImpl::~ExclaveDSPControllerClientImpl(this);

  JUMPOUT(0x223DF43A0);
}

{
  v54 = *MEMORY[0x277D85DE8];
  *this = &unk_28371B008;
  adm_log_object = get_adm_log_object();
  if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = this;
    _os_log_impl(&dword_223B4A000, adm_log_object, OS_LOG_TYPE_DEFAULT, "ControllerClient(%p) destroyed", &buf, 0xCu);
  }

  v3 = *(this + 2);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = *(this + 1);
      if (v5)
      {
        v33 = 0;
        v34 = &v33;
        v35 = 0x3802000000;
        v36 = __Block_byref_object_copy_;
        v37 = __Block_byref_object_dispose_;
        v6 = get_adm_log_object();
        if (os_signpost_enabled(v6))
        {
          LOWORD(buf) = 0;
          _os_signpost_emit_with_name_impl(&dword_223B4A000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ADM::TBCall::Unconfigure", &unk_223C17543, &buf, 2u);
        }

        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 0x40000000;
        v30 = ___ZN3adm5graph30ExclaveDSPControllerClientImpl11unconfigureEv_block_invoke;
        v31 = &unk_2784F06B0;
        v32 = &v33;
        v46 = 0;
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v41 = 0u;
        v53 = 0;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        buf = 0u;
        v48 = 0u;
        v7 = *v5;
        v8 = tb_client_connection_message_construct();
        if (!v8)
        {
          tb_message_precheck_encoding();
          tb_message_raw_encode_u64();
          tb_message_complete();
          v40 = 0;
          v9 = *v5;
          v10 = tb_connection_send_query();
          if ((v10 & 0xFFFFFFF7) != 0)
          {
            v8 = v10;
LABEL_11:
            v11 = *v5;
            tb_client_connection_message_destruct();
            goto LABEL_12;
          }

          if (v40)
          {
            v38 = 0;
            v39 = 0;
            tb_message_decode_u8();
            if (v38 == 1)
            {
              tb_message_decode_u64();
              v8 = 7;
              v22 = v39;
              if (v39 <= 0x721C3F2F787AA9CLL)
              {
                if (v39 == 0xA79E13CA15F5775CLL || v39 == 0xAD6FFC2BEEE2EB53)
                {
                  goto LABEL_45;
                }

                v24 = 0xF9A9592E1248F97ALL;
              }

              else if (v39 > 0x33D96A0AB5A284C1)
              {
                if (v39 == 0x7F9919C7ACD04D39)
                {
                  goto LABEL_45;
                }

                v24 = 0x33D96A0AB5A284C2;
              }

              else
              {
                if (v39 == 0x721C3F2F787AA9DLL)
                {
                  goto LABEL_45;
                }

                v24 = 0xB6B27F51290F905;
              }

              if (v39 != v24)
              {
                goto LABEL_11;
              }
            }

            else
            {
              if (v38)
              {
                v8 = 7;
                goto LABEL_11;
              }

              v22 = v39;
            }

LABEL_45:
            v30(v29, v38, v22);
            v8 = 0;
            goto LABEL_11;
          }

          v23 = *v5;
          tb_client_connection_message_destruct();
          v8 = 4;
        }

LABEL_12:
        v12 = get_adm_log_object();
        if (os_signpost_enabled(v12))
        {
          LOWORD(buf) = 0;
          _os_signpost_emit_with_name_impl(&dword_223B4A000, v12, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ADM::TBCall::Unconfigure", &unk_223C17543, &buf, 2u);
        }

        if (v8)
        {
          v13 = get_adm_log_object();
          if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
LABEL_59:
            _Block_object_dispose(&v33, 8);
LABEL_60:
            std::__shared_weak_count::__release_shared[abi:ne200100](v4);
            goto LABEL_61;
          }

          LODWORD(buf) = 67109120;
          DWORD1(buf) = v8;
          v14 = "tb call to unconfigure failed: tbError=%d";
          v15 = v13;
          v16 = 8;
LABEL_58:
          _os_log_error_impl(&dword_223B4A000, v15, OS_LOG_TYPE_ERROR, v14, &buf, v16);
          goto LABEL_59;
        }

        v18 = v34;
        if (*(v34 + 40) != 1)
        {
          goto LABEL_59;
        }

        v19 = get_adm_log_object();
        if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_59;
        }

        v20 = v18[6];
        if (v20 > 0x721C3F2F787AA9CLL)
        {
          switch(v20)
          {
            case 0x721C3F2F787AA9DLL:
              v21 = "SETUPERROR_INITIALIZING";
              goto LABEL_57;
            case 0xB6B27F51290F905:
              v21 = "SETUPERROR_SETTINGAUSTRIP";
              goto LABEL_57;
            case 0x33D96A0AB5A284C2:
              v21 = "SETUPERROR_SETTINGPROPSTRIP";
              goto LABEL_57;
          }
        }

        else
        {
          switch(v20)
          {
            case 0xA79E13CA15F5775CLL:
              v21 = "SETUPERROR_COMPILINGGRAPH";
              goto LABEL_57;
            case 0xAD6FFC2BEEE2EB53:
              v21 = "SETUPERROR_PARSINGDATABASE";
              goto LABEL_57;
            case 0xF9A9592E1248F97ALL:
              v21 = "SETUPERROR_FORMATNOTSUPPORTED";
LABEL_57:
              LODWORD(buf) = 136315138;
              *(&buf + 4) = v21;
              v14 = "tb call to unconfigure failed: failure=%s";
              v15 = v19;
              v16 = 12;
              goto LABEL_58;
          }
        }

        if (v20 == 0x7F9919C7ACD04D39)
        {
          v21 = "SETUPERROR_UNKNOWN";
        }

        else
        {
          v21 = "<unknown>";
        }

        goto LABEL_57;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  v17 = get_adm_log_object();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = this;
    _os_log_impl(&dword_223B4A000, v17, OS_LOG_TYPE_DEFAULT, "ControllerClient(%p) unconfigure: EK unavailable", &buf, 0xCu);
  }

  if (v4)
  {
    goto LABEL_60;
  }

LABEL_61:
  MEMORY[0x223DF3E50](this + 96);
  caulk::mach::mach_port::~mach_port(this + 18);
  v25 = *(this + 6);
  if (v25)
  {
    *(this + 7) = v25;
    operator delete(v25);
  }

  v26 = *(this + 3);
  if (v26)
  {
    *(this + 4) = v26;
    operator delete(v26);
  }

  v27 = *(this + 2);
  if (v27)
  {
    std::__shared_weak_count::__release_weak(v27);
  }

  v28 = *MEMORY[0x277D85DE8];
}

__n128 __Block_byref_object_copy_(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

uint64_t ___ZN3adm5graph30ExclaveDSPControllerClientImpl11unconfigureEv_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 32) + 8);
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return result;
}

uint64_t std::__shared_ptr_pointer<anonymous namespace::ControllerContext *,anonymous namespace::getControllerEK(unsigned long long,anonymous namespace::ServiceNames const&)::$_0,std::allocator<anonymous namespace::ControllerContext>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN12_GLOBAL__N_115getControllerEKEyRKNS_12ServiceNamesEE3$_0"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<anonymous namespace::ControllerContext *,anonymous namespace::getControllerEK(unsigned long long,anonymous namespace::ServiceNames const&)::$_0,std::allocator<anonymous namespace::ControllerContext>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x223DF43A0);
}

void non-virtual thunk toadm::graph::ExclaveKernel::getOutputPropertyIDs(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void non-virtual thunk toadm::graph::ExclaveKernel::getInputPropertyIDs(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void non-virtual thunk toadm::graph::ExclaveKernel::setProperty(uint64_t a1@<X8>)
{
  *a1 = 1853122148;
  *(a1 + 16) = 0;
}

void non-virtual thunk toadm::graph::ExclaveKernel::getProperty(void *a1@<X4>, uint64_t a2@<X8>)
{
  *a1 = 0;
  *a2 = 1853122148;
  *(a2 + 16) = 0;
}

uint64_t non-virtual thunk toadm::graph::ExclaveKernel::setParameter@<X0>(adm::graph::ExclaveKernel *this@<X0>, float a2@<S0>, uint64_t a3@<X8>)
{
  result = (*(**(this + 43) + 104))(*(this + 43), a2);
  if (result)
  {
    v5 = 0;
    *a3 = result;
  }

  else
  {
    v5 = 1;
  }

  *(a3 + 16) = v5;
  return result;
}

uint64_t adm::graph::ExclaveKernel::setParameter@<X0>(adm::graph::ExclaveKernel *this@<X0>, float a2@<S0>, uint64_t a3@<X8>)
{
  result = (*(**(this + 46) + 104))(*(this + 46), a2);
  if (result)
  {
    v5 = 0;
    *a3 = result;
  }

  else
  {
    v5 = 1;
  }

  *(a3 + 16) = v5;
  return result;
}

uint64_t adm::graph::ExclaveKernel::hasParameter(adm::graph::ExclaveKernel *this)
{
  if ((*(**(this + 46) + 64))(*(this + 46)))
  {
    return 1;
  }

  v3 = *(**(this + 46) + 72);

  return v3();
}

void non-virtual thunk toadm::graph::ExclaveKernel::~ExclaveKernel(adm::graph::ExclaveKernel *this)
{
  adm::graph::ExclaveKernel::~ExclaveKernel((this - 24));

  JUMPOUT(0x223DF43A0);
}

{
  adm::graph::ExclaveKernel::~ExclaveKernel((this - 24));
}

void adm::graph::ExclaveKernel::~ExclaveKernel(adm::graph::ExclaveKernel *this)
{
  v2 = *(this + 46);
  *(this + 46) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  adm::graph::KernelConfiguration::~KernelConfiguration((this + 184));
  *this = &unk_28371D0B8;
  *(this + 3) = &unk_28371D188;
  adm::graph::AudioIssueDetectorClient::IDOwner::clear((this + 168));
  MEMORY[0x223DF3E50](this + 144);
  v3 = (this + 104);
  std::vector<CA::AudioBuffersDeprecated>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 80);
  std::vector<CA::AudioBuffersDeprecated>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 56);
  std::vector<std::unique_ptr<OpaqueAudioConverter,applesauce::raii::v1::detail::opaque_deletion_functor<OpaqueAudioConverter*,&(AudioConverterDispose)>>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 32);
  std::vector<std::unique_ptr<OpaqueAudioConverter,applesauce::raii::v1::detail::opaque_deletion_functor<OpaqueAudioConverter*,&(AudioConverterDispose)>>>::__destroy_vector::operator()[abi:ne200100](&v3);
  *this = &unk_28371D218;
  adm::utility::synchronized_pointer<adm::graph::KernelHostInterface>::~synchronized_pointer(this + 1);
}

{
  adm::graph::ExclaveKernel::~ExclaveKernel(this);

  JUMPOUT(0x223DF43A0);
}

void adm::graph::ExclaveKernel::getOutputPropertyIDs(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void adm::graph::ExclaveKernel::getInputPropertyIDs(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void adm::graph::ExclaveKernel::setProperty(uint64_t a1@<X8>)
{
  *a1 = 1853122148;
  *(a1 + 16) = 0;
}

void adm::graph::ExclaveKernel::getProperty(void *a1@<X4>, uint64_t a2@<X8>)
{
  *a1 = 0;
  *a2 = 1853122148;
  *(a2 + 16) = 0;
}

void adm::graph::ExclaveKernel::doEndProcessing(adm::graph::ExclaveKernel *this)
{
  (*(**(this + 46) + 56))(*(this + 46));

  adm::graph::DSPKernel::doEndProcessing(this);
}

uint64_t adm::graph::ExclaveKernel::doClientIO(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 384) == 1)
  {
    adm::graph::AudioIssueDetectorClient::performDetection((a1 + 160), 1, a5 + 80 * *(a1 + 376), 1, a3, (a1 + 128));
  }

  v6 = *(**(a1 + 368) + 48);

  return v6();
}

uint64_t adm::graph::ExclaveKernel::operator==(uint64_t a1, char **lpsrc)
{
  v3 = **lpsrc;
  if (result)
  {
    v5 = result;
    result = adm::graph::KernelConfiguration::operator==(a1 + 184, result + 184);
    if (result)
    {
      if (*(a1 + 336) != *(v5 + 336))
      {
        return 0;
      }

      v6 = *(a1 + 344);
      v7 = *(v5 + 344);
      if (v6 == v7 && v6 != 0)
      {
        v6 = *(a1 + 340);
        v7 = *(v5 + 340);
      }

      if (v6 != v7)
      {
        return 0;
      }

      v9 = *(a1 + 352);
      v10 = *(v5 + 352);
      if (v9 == v10 && v9 != 0)
      {
        v9 = *(a1 + 348);
        v10 = *(v5 + 348);
      }

      if (v9 != v10)
      {
        return 0;
      }

      v12 = *(a1 + 360);
      v13 = *(v5 + 360);
      if (v12 == v13 && *(a1 + 360))
      {
        v12 = *(a1 + 356);
        v13 = *(v5 + 356);
      }

      return v12 == v13 && *(a1 + 364) == *(v5 + 364) && *(a1 + 368) == *(v5 + 368);
    }
  }

  return result;
}

BOOL adm::graph::KernelConfiguration::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  if (*a1)
  {
    CFRetain(*a1);
    v5 = *a2;
    if (!*a2)
    {
      v6 = kCFCompareGreaterThan;
LABEL_9:
      CFRelease(v4);
      goto LABEL_10;
    }
  }

  else
  {
    v5 = *a2;
    if (!*a2)
    {
      goto LABEL_11;
    }
  }

  CFRetain(v5);
  if (v4)
  {
    v6 = CFStringCompare(v4, v5, 0);
  }

  else
  {
    v6 = kCFCompareLessThan;
  }

  CFRelease(v5);
  if (v4)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (v6)
  {
    return 0;
  }

LABEL_11:
  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  v9 = *(a2 + 8);
  if (v7 - v8 != *(a2 + 16) - v9)
  {
    return 0;
  }

  while (v8 != v7)
  {
    if (*v8 != *v9 || *(v8 + 8) != *(v9 + 8) || *(v8 + 12) != *(v9 + 12) || *(v8 + 16) != *(v9 + 16) || *(v8 + 20) != *(v9 + 20) || *(v8 + 24) != *(v9 + 24) || *(v8 + 28) != *(v9 + 28) || *(v8 + 32) != *(v9 + 32))
    {
      return 0;
    }

    v8 += 40;
    v9 += 40;
  }

  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  v12 = *(a2 + 32);
  if (v10 - v11 != *(a2 + 40) - v12)
  {
    return 0;
  }

  while (v11 != v10)
  {
    if (*v11 != *v12 || *(v11 + 8) != *(v12 + 8) || *(v11 + 12) != *(v12 + 12) || *(v11 + 16) != *(v12 + 16) || *(v11 + 20) != *(v12 + 20) || *(v11 + 24) != *(v12 + 24) || *(v11 + 28) != *(v12 + 28) || *(v11 + 32) != *(v12 + 32))
    {
      return 0;
    }

    v11 += 40;
    v12 += 40;
  }

  v14 = *(a1 + 56);
  v13 = *(a1 + 64);
  v15 = *(a2 + 56);
  if (v13 - v14 != *(a2 + 64) - v15)
  {
    return 0;
  }

  while (v14 != v13)
  {
    if (*v14 != *v15)
    {
      return 0;
    }

    v14 += 8;
    v15 += 2;
  }

  v17 = *(a1 + 80);
  v16 = *(a1 + 88);
  v18 = *(a2 + 80);
  if (v16 - v17 != *(a2 + 88) - v18)
  {
    return 0;
  }

  while (v17 != v16)
  {
    if (*v17 != *v18)
    {
      return 0;
    }

    v17 += 8;
    v18 += 2;
  }

  v20 = *(a1 + 104);
  v19 = *(a1 + 112);
  v21 = *(a2 + 104);
  if (v19 - v20 != *(a2 + 112) - v21)
  {
    return 0;
  }

  while (v20 != v19)
  {
    if (*v20 != *v21 || *(v20 + 4) != *(v21 + 4))
    {
      return 0;
    }

    v20 += 8;
    v21 += 8;
  }

  v24 = *(a1 + 128);
  v23 = *(a1 + 136);
  v25 = *(a2 + 128);
  if (v23 - v24 != *(a2 + 136) - v25)
  {
    return 0;
  }

  if (v24 == v23)
  {
    return 1;
  }

  v26 = v24 + 16;
  do
  {
    v27 = *v25;
    v25 += 2;
    result = *(v26 - 16) == v27;
    v29 = *(v26 - 16) != v27 || v26 == v23;
    v26 += 16;
  }

  while (!v29);
  return result;
}

uint64_t anonymous namespace::getReferenceTerminalIndex(uint64_t **a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    while (1)
    {
      v5 = *v2;
      if (adm::graph::SemanticSet::contains(&v5, 1))
      {
        break;
      }

      if (++v2 == v3)
      {
        v2 = v3;
        break;
      }
    }

    v3 = a1[1];
  }

  if (v2 == v3)
  {
    return 0;
  }

  else
  {
    return v2 - *a1;
  }
}

void adm::graph::ExclaveKernelConfiguration::~ExclaveKernelConfiguration(adm::graph::ExclaveKernelConfiguration *this)
{
  v2 = *(this + 23);
  *(this + 23) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  adm::graph::KernelConfiguration::~KernelConfiguration(this);
}

const void **adm::dsp::v2::Graph::connect(uint64_t a1)
{
  v11 = 0;
  v2 = *(a1 + 8);
  RemoteProcessingBlockHost = CADSPGraphCreateRemoteProcessingBlockHost();
  if (RemoteProcessingBlockHost)
  {
    v12 = 0;
    cf = RemoteProcessingBlockHost;
    v9 = 1;
    CA::DSP::ReferenceCounted<__RPBHost *>::~ReferenceCounted(&v12);
    CA::DSP::ReferenceCounted<__RPBHost *>::~ReferenceCounted((a1 + 40));
    v4 = cf;
    *(a1 + 40) = cf;
    CFRetain(v4);
    RPBServerGetSharedInstance();
    v5 = *(a1 + 40);
    RPBServerAddHost();
    if (v9)
    {
      return CA::DSP::ReferenceCounted<__RPBHost *>::~ReferenceCounted(&cf);
    }
  }

  else
  {
    v7 = *MEMORY[0x277CBED08];
    v11 = CADSPErrorCreate();
    v10 = 0;
    v12 = 0;
    cf = v11;
    CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v12);
    v9 = 0;
    CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v10);
  }

  return CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&cf);
}

const void **CA::DSP::ReferenceCounted<__RPBHost *>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **adm::dsp::v2::Graph::getLatencyInSamples@<X0>(adm::dsp::v2::Graph *this@<X0>, uint64_t a2@<X8>)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = *(this + 1);
  v19 = 0;
  v17 = 0;
  v5 = 0;
  if (CADSPGraphGetLatency())
  {
    v6 = 0;
  }

  else
  {
    v6 = v17 == 0;
  }

  if (v6)
  {
    v5 = CADSPRealTimeErrorCreateWithRealTimeSafeAllocator();
    v17 = v5;
  }

  v16 = v5;
  if (v5)
  {
    v16 = 0;
    v15 = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v16);
    v14 = 0;
    v18 = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v18);
    v13 = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v14);
    v12 = 0;
    v18 = v5;
    LOBYTE(v19) = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v12);
    *a2 = 1685287015;
    *(a2 + 16) = 0;
    result = CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v18);
  }

  else
  {
    v7 = v19;
    v15 = 1;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v16);
    v12 = v7;
    v13 = 1;
    v8 = *(this + 1);
    CA::DSP::Graph::GetModel(&v18);
    v9 = vcvtpd_s64_f64(*&v7 * (MEMORY[0x223DF3910](v18) >> 32));
    result = CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&v18);
    *a2 = v9;
    *(a2 + 16) = 1;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_223BBA38C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

const void **CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **CA::DSP::Graph::GetModel(CA::DSP::Graph *this)
{
  Model = CADSPGraphGetModel();
  v3 = Model;
  if (Model)
  {
    CFRetain(Model);
  }

  v5 = 0;
  *this = v3;
  return CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&v5);
}

const void **CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **adm::dsp::v2::Graph::setProperty@<X0>(void *a1@<X1>, uint64_t a2@<X0>, uint64_t a3@<X8>)
{
  result = CA::DSP::Graph::SetProperty(&v5, *(a2 + 8), a1);
  if (v6)
  {
    *(a3 + 16) = 1;
  }

  else
  {
    *a3 = 1685287015;
    *(a3 + 16) = 0;
    return CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v5);
  }

  return result;
}

const void **CA::DSP::Graph::SetProperty(CA::DSP::Graph *this, unsigned int a2, const void *a3)
{
  v9 = 0;
  v4 = 0;
  if (!CADSPGraphSetProperty())
  {
    v4 = CADSPRealTimeErrorCreateWithRealTimeSafeAllocator();
    v9 = v4;
  }

  v8 = v4;
  if (v4)
  {
    v8 = 0;
    v7 = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v8);
    v6 = 0;
    v9 = 0;
    *this = v4;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v9);
    *(this + 8) = 0;
    return CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v6);
  }

  else
  {
    v7 = 1;
    result = CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v8);
    *(this + 8) = 1;
  }

  return result;
}

const void **adm::dsp::v2::Graph::getProperty@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v13 = a2[1];
  v6 = *(a1 + 8);
  v11 = 0;
  v7 = 0;
  if (CADSPGraphGetProperty())
  {
    v8 = 0;
  }

  else
  {
    v8 = v11 == 0;
  }

  if (v8)
  {
    v7 = CADSPRealTimeErrorCreateWithRealTimeSafeAllocator();
    v11 = v7;
  }

  v16 = v7;
  if (v7)
  {
    v16 = 0;
    v15 = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v16);
    v14 = 0;
    v16 = 0;
    v11 = v7;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v16);
    v12 = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v14);
    *a3 = 1685287015;
    *(a3 + 16) = 0;
    return CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v11);
  }

  else
  {
    v15 = 1;
    result = CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v16);
    v12 = 1;
    v10 = v13;
    *a2 = v5;
    a2[1] = v10;
    *(a3 + 16) = 1;
  }

  return result;
}

const void **adm::dsp::v2::Graph::getPropertyInfo@<X0>(adm::dsp::v2::Graph *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(this + 1);
  v17 = 0;
  v15 = 0;
  v4 = 0;
  if (CADSPGraphGetPropertyInfo())
  {
    v5 = 0;
  }

  else
  {
    v5 = v15 == 0;
  }

  if (v5)
  {
    v4 = CADSPRealTimeErrorCreateWithRealTimeSafeAllocator();
    v15 = v4;
  }

  v14 = v4;
  if (v4)
  {
    v14 = 0;
    v13 = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v14);
    v12 = 0;
    v16 = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v16);
    v10 = v4;
    v11 = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v12);
    result = CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v10);
    v7 = 0;
    v9 = 1685287015;
  }

  else
  {
    v6 = v17;
    v7 = 1;
    v13 = 1;
    result = CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v14);
    v10 = v6;
    v11 = 1;
    v9 = HIDWORD(v6);
    *(a2 + 8) = (v6 & 2) != 0;
  }

  *a2 = v9;
  *(a2 + 16) = v7;
  return result;
}

BOOL adm::dsp::v2::Graph::hasProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x100000000) == 0 || a3)
  {
    if ((a3 & 0x100000000) == 0 || a3 != 1)
    {
      v6 = *(a1 + 8);
      return CADSPGraphHasProperty() != 0;
    }

    CA::DSP::Graph::GetPropertyDirection(&v8, *(a1 + 8), a2);
    v3 = v9;
    v4 = v8 == 1;
  }

  else
  {
    CA::DSP::Graph::GetPropertyDirection(&v8, *(a1 + 8), a2);
    v3 = v9;
    v4 = v8 == 0;
  }

  if (v4)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  if ((v3 & 1) == 0)
  {
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v8);
  }

  return v5;
}

const void **CA::DSP::Graph::GetPropertyDirection(CA::DSP::Graph *this, uint64_t a2, uint64_t a3)
{
  result = CA::DSP::C::API::Call<unsigned char ()(__CADSPGraph *,unsigned int,CADSPDirection *,__CADSPRealTimeError **)>::operator()<__CADSPGraph *,unsigned int &,CA::DSP::C::API::Tags::Result<CADSPDirection> const&>(&v7, MEMORY[0x277CEFA60], a2, a3);
  v5 = v8;
  if (v8 == 1)
  {
    *this = v7;
    *(this + 8) = v5;
  }

  else
  {
    v6 = v7;
    v7 = 0;
    v9 = 0;
    *this = v6;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v9);
    *(this + 8) = v5;
    return CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v7);
  }

  return result;
}

const void **CA::DSP::C::API::Call<unsigned char ()(__CADSPGraph *,unsigned int,CADSPDirection *,__CADSPRealTimeError **)>::operator()<__CADSPGraph *,unsigned int &,CA::DSP::C::API::Tags::Result<CADSPDirection> const&>(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, int *, const void **), uint64_t a3, uint64_t a4)
{
  v12 = 0;
  v11 = 0;
  v5 = a2(a3, a4, &v12, &v11);
  v6 = v11;
  if (v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = v11 == 0;
  }

  if (v7)
  {
    v6 = CADSPRealTimeErrorCreateWithRealTimeSafeAllocator();
    v11 = v6;
  }

  v10 = v6;
  if (v6)
  {
    v8 = 0;
    v10 = 0;
    *a1 = v6;
  }

  else
  {
    *a1 = v12;
    v8 = 1;
  }

  *(a1 + 8) = v8;
  return CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v10);
}

uint64_t adm::dsp::v2::Graph::getPropertyIDs@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v9 = a2 != 0;
  v8[0] = a1;
  v8[1] = &v9;
  v8[2] = a3;
  v4 = *(a1 + 8);
  v10 = MEMORY[0x277D85DD0];
  v11 = 0x40000000;
  v12 = ___ZNK2CA3DSP5Graph19EnumeratePropertiesIZNK3adm3dsp2v25Graph14getPropertyIDsENS4_9DirectionEE3__0EEvOT__block_invoke;
  v13 = &__block_descriptor_tmp_26;
  v14 = v8;
  CADSPGraphEnumerateProperties();
  v5 = *a3;
  v6 = a3[1];
  return std::__sort<std::__less<unsigned int,unsigned int> &,unsigned int *>();
}

uint64_t ___ZNK2CA3DSP5Graph19EnumeratePropertiesIZNK3adm3dsp2v25Graph14getPropertyIDsENS4_9DirectionEE3__0EEvOT__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 32);
  CA::DSP::Graph::GetPropertyDirection(&v17, *(*v3 + 8), a2);
  if (v17 == **(v3 + 8))
  {
    v4 = v18;
  }

  else
  {
    v4 = 0;
  }

  if ((v18 & 1) == 0)
  {
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v17);
  }

  if (v4)
  {
    v5 = *(v3 + 16);
    v7 = *(v5 + 8);
    v6 = *(v5 + 16);
    if (v7 >= v6)
    {
      v9 = *v5;
      v10 = v7 - *v5;
      v11 = v10 >> 2;
      v12 = (v10 >> 2) + 1;
      if (v12 >> 62)
      {
        std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
      }

      v13 = v6 - v9;
      if (v13 >> 1 > v12)
      {
        v12 = v13 >> 1;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v14 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v12;
      }

      if (v14)
      {
        std::allocator<float>::allocate_at_least[abi:ne200100](v14);
      }

      *(4 * v11) = v2;
      v8 = 4 * v11 + 4;
      memcpy(0, v9, v10);
      v15 = *v5;
      *v5 = 0;
      *(v5 + 8) = v8;
      *(v5 + 16) = 0;
      if (v15)
      {
        operator delete(v15);
      }
    }

    else
    {
      *v7 = v2;
      v8 = (v7 + 1);
    }

    *(v5 + 8) = v8;
  }

  return 0;
}

const void **adm::dsp::v2::Graph::setParameter@<X0>(adm::dsp::v2::Graph *this@<X0>, float a2@<S0>, uint64_t a3@<X8>)
{
  v4 = *(this + 1);
  result = CA::DSP::Graph::SetParameter(&v7, a2);
  v6 = v8;
  if (v8 != 1)
  {
    result = CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v7);
    v6 = 0;
    *a3 = 1685287015;
  }

  *(a3 + 16) = v6;
  return result;
}

const void **CA::DSP::Graph::SetParameter(CA::DSP::Graph *this, float a2)
{
  v8 = 0;
  v3 = 0;
  if (!CADSPGraphSetParameter())
  {
    v3 = CADSPRealTimeErrorCreateWithRealTimeSafeAllocator();
    v8 = v3;
  }

  v7 = v3;
  if (v3)
  {
    v7 = 0;
    v6 = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v7);
    v5 = 0;
    v8 = 0;
    *this = v3;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v8);
    *(this + 8) = 0;
    return CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v5);
  }

  else
  {
    v6 = 1;
    result = CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v7);
    *(this + 8) = 1;
  }

  return result;
}

const void **adm::dsp::v2::Graph::getParameter@<X0>(adm::dsp::v2::Graph *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(this + 1);
  v18 = 0;
  v16 = 0;
  Parameter = CADSPGraphGetParameter();
  v5 = 0;
  if (Parameter)
  {
    v6 = 0;
  }

  else
  {
    v6 = v16 == 0;
  }

  if (v6)
  {
    v5 = CADSPRealTimeErrorCreateWithRealTimeSafeAllocator();
    v16 = v5;
  }

  v15 = v5;
  if (v5)
  {
    v15 = 0;
    v13 = v5;
    v14 = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v15);
    v10 = v13;
    v13 = 0;
    v17 = 0;
    v11 = v10;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v17);
    v12 = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v13);
    result = CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v11);
    v8 = 0;
    *a2 = 1685287015;
  }

  else
  {
    v7 = v18;
    LODWORD(v13) = v18;
    v8 = 1;
    v14 = 1;
    result = CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v15);
    LODWORD(v11) = v7;
    v12 = 1;
    *a2 = v7;
  }

  *(a2 + 16) = v8;
  return result;
}

uint64_t adm::dsp::v2::Graph::hasParameter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  if (!CADSPGraphHasParameter())
  {
    return 0;
  }

  if ((a3 & 0x100000000) == 0)
  {
    return 1;
  }

  if (a3 == 1)
  {
    CA::DSP::Graph::GetParameterDirection(&v11, *(a1 + 8), a2);
    v7 = v12;
    v8 = v11 == 1;
    goto LABEL_9;
  }

  if (a3)
  {
    return 1;
  }

  CA::DSP::Graph::GetParameterDirection(&v11, *(a1 + 8), a2);
  v7 = v12;
  v8 = v11 == 0;
LABEL_9:
  if (v8)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  if ((v7 & 1) == 0)
  {
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v11);
  }

  return v9;
}

const void **CA::DSP::Graph::GetParameterDirection(CA::DSP::Graph *this, uint64_t a2, uint64_t a3)
{
  result = CA::DSP::C::API::Call<unsigned char ()(__CADSPGraph *,unsigned int,CADSPDirection *,__CADSPRealTimeError **)>::operator()<__CADSPGraph *,unsigned int &,CA::DSP::C::API::Tags::Result<CADSPDirection> const&>(&v7, MEMORY[0x277CEFA50], a2, a3);
  v5 = v8;
  if (v8 == 1)
  {
    *this = v7;
    *(this + 8) = v5;
  }

  else
  {
    v6 = v7;
    v7 = 0;
    v9 = 0;
    *this = v6;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v9);
    *(this + 8) = v5;
    return CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v7);
  }

  return result;
}

uint64_t adm::dsp::v2::Graph::getParameterIDs@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v9 = a2 != 0;
  v8[0] = a1;
  v8[1] = &v9;
  v8[2] = a3;
  v4 = *(a1 + 8);
  v10 = MEMORY[0x277D85DD0];
  v11 = 0x40000000;
  v12 = ___ZNK2CA3DSP5Graph19EnumerateParametersIZNK3adm3dsp2v25Graph15getParameterIDsENS4_9DirectionEE3__0EEvOT__block_invoke;
  v13 = &__block_descriptor_tmp_516;
  v14 = v8;
  CADSPGraphEnumerateParameters();
  v5 = *a3;
  v6 = a3[1];
  return std::__sort<std::__less<unsigned int,unsigned int> &,unsigned int *>();
}

uint64_t ___ZNK2CA3DSP5Graph19EnumerateParametersIZNK3adm3dsp2v25Graph15getParameterIDsENS4_9DirectionEE3__0EEvOT__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 32);
  CA::DSP::Graph::GetParameterDirection(&v17, *(*v3 + 8), a2);
  if (v17 == **(v3 + 8))
  {
    v4 = v18;
  }

  else
  {
    v4 = 0;
  }

  if ((v18 & 1) == 0)
  {
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v17);
  }

  if (v4)
  {
    v5 = *(v3 + 16);
    v7 = *(v5 + 8);
    v6 = *(v5 + 16);
    if (v7 >= v6)
    {
      v9 = *v5;
      v10 = v7 - *v5;
      v11 = v10 >> 2;
      v12 = (v10 >> 2) + 1;
      if (v12 >> 62)
      {
        std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
      }

      v13 = v6 - v9;
      if (v13 >> 1 > v12)
      {
        v12 = v13 >> 1;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v14 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v12;
      }

      if (v14)
      {
        std::allocator<float>::allocate_at_least[abi:ne200100](v14);
      }

      *(4 * v11) = v2;
      v8 = 4 * v11 + 4;
      memcpy(0, v9, v10);
      v15 = *v5;
      *v5 = 0;
      *(v5 + 8) = v8;
      *(v5 + 16) = 0;
      if (v15)
      {
        operator delete(v15);
      }
    }

    else
    {
      *v7 = v2;
      v8 = (v7 + 1);
    }

    *(v5 + 8) = v8;
  }

  return 0;
}

const void **adm::dsp::v2::Graph::process@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, unsigned int a6@<W5>, uint64_t a7@<X8>)
{
  v76[1] = *MEMORY[0x277D85DE8];
  result = (*(*a1 + 32))(a1, 0);
  if (a3 == result)
  {
    v15 = result;
    result = (*(*a1 + 32))(a1, 1);
    if (a5 == result)
    {
      v16 = MEMORY[0x28223BE20](result);
      v18 = &v67[-v17];
      v19 = MEMORY[0x28223BE20](v16);
      v21 = &v67[-v20];
      v22 = *(a1 + 28);
      v69 = v23;
      if (v22 == 2)
      {
        if (v15)
        {
          v42 = (a3 + 3) & 0xFFFFFFFFFFFFFFFCLL;
          v43 = vdupq_n_s64(a3 - 1);
          v44 = (v18 + 2);
          v45 = 1;
          do
          {
            v46 = vdupq_n_s64(v45 - 1);
            v47 = vmovn_s64(vcgeq_u64(v43, vorrq_s8(v46, xmmword_223BFC2E0)));
            if (vuzp1_s16(v47, *v43.i8).u8[0])
            {
              *(v44 - 2) = a6;
            }

            if (vuzp1_s16(v47, *&v43).i8[2])
            {
              *(v44 - 1) = a6;
            }

            if (vuzp1_s16(*&v43, vmovn_s64(vcgeq_u64(v43, vorrq_s8(v46, xmmword_223BFC2D0)))).i32[1])
            {
              *v44 = a6;
              v44[1] = a6;
            }

            v45 += 4;
            v44 += 4;
            v42 -= 4;
          }

          while (v42);
        }

        v68 = v19;
        v72 = a6 | (*(a1 + 32) << 32);
        v73 = 1;
        CA::DSP::C::API::Call<unsigned char ()(__CADSPGraph *,unsigned int *,unsigned long,unsigned int *,unsigned long,CADSPAudioSliceDuration const*,unsigned int,__CADSPRealTimeError **)>::operator()<__CADSPGraph *,unsigned int *&,unsigned long &,unsigned int *&,unsigned long &,CADSPAudioSliceDuration const*&,unsigned int>(&v74, MEMORY[0x277CEFA28], *(a1 + 8), v18, a3, v21, a5, &v72, 0);
      }

      else
      {
        if (v22 != 1)
        {
          if (!v22)
          {
            if (v15)
            {
              v24 = (a3 + 3) & 0xFFFFFFFFFFFFFFFCLL;
              v25 = vdupq_n_s64(a3 - 1);
              v26 = (v18 + 2);
              v27 = 1;
              do
              {
                v28 = vdupq_n_s64(v27 - 1);
                v29 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(v28, xmmword_223BFC2E0)));
                if (vuzp1_s16(v29, *v25.i8).u8[0])
                {
                  *(v26 - 2) = a6;
                }

                if (vuzp1_s16(v29, *&v25).i8[2])
                {
                  *(v26 - 1) = a6;
                }

                if (vuzp1_s16(*&v25, vmovn_s64(vcgeq_u64(v25, vorrq_s8(v28, xmmword_223BFC2D0)))).i32[1])
                {
                  *v26 = a6;
                  v26[1] = a6;
                }

                v27 += 4;
                v26 += 4;
                v24 -= 4;
              }

              while (v24);
            }

            if (v19)
            {
              v30 = (a5 + 3) & 0xFFFFFFFFFFFFFFFCLL;
              v31 = vdupq_n_s64(a5 - 1);
              v32 = (v21 + 2);
              v33 = 1;
              do
              {
                v34 = vdupq_n_s64(v33 - 1);
                v35 = vmovn_s64(vcgeq_u64(v31, vorrq_s8(v34, xmmword_223BFC2E0)));
                if (vuzp1_s16(v35, *v31.i8).u8[0])
                {
                  *(v32 - 2) = a6;
                }

                if (vuzp1_s16(v35, *&v31).i8[2])
                {
                  *(v32 - 1) = a6;
                }

                if (vuzp1_s16(*&v31, vmovn_s64(vcgeq_u64(v31, vorrq_s8(v34, xmmword_223BFC2D0)))).i32[1])
                {
                  *v32 = a6;
                  v32[1] = a6;
                }

                v33 += 4;
                v32 += 4;
                v30 -= 4;
              }

              while (v30);
            }
          }

          goto LABEL_48;
        }

        if (v19)
        {
          v36 = (a5 + 3) & 0xFFFFFFFFFFFFFFFCLL;
          v37 = vdupq_n_s64(a5 - 1);
          v38 = (v21 + 2);
          v39 = 1;
          do
          {
            v40 = vdupq_n_s64(v39 - 1);
            v41 = vmovn_s64(vcgeq_u64(v37, vorrq_s8(v40, xmmword_223BFC2E0)));
            if (vuzp1_s16(v41, *v37.i8).u8[0])
            {
              *(v38 - 2) = a6;
            }

            if (vuzp1_s16(v41, *&v37).i8[2])
            {
              *(v38 - 1) = a6;
            }

            if (vuzp1_s16(*&v37, vmovn_s64(vcgeq_u64(v37, vorrq_s8(v40, xmmword_223BFC2D0)))).i32[1])
            {
              *v38 = a6;
              v38[1] = a6;
            }

            v39 += 4;
            v38 += 4;
            v36 -= 4;
          }

          while (v36);
        }

        v68 = v19;
        v72 = a6 | (*(a1 + 32) << 32);
        v73 = 1;
        CA::DSP::C::API::Call<unsigned char ()(__CADSPGraph *,unsigned int *,unsigned long,unsigned int *,unsigned long,CADSPAudioSliceDuration const*,unsigned int,__CADSPRealTimeError **)>::operator()<__CADSPGraph *,unsigned int *&,unsigned long &,unsigned int *&,unsigned long &,CADSPAudioSliceDuration const*&,unsigned int>(&v74, MEMORY[0x277CEFA38], *(a1 + 8), v18, a3, v21, a5, &v72, 0);
      }

      v48 = v75;
      if ((v75 & 1) == 0)
      {
        v65 = v74;
        v74 = 0;
        v76[0] = 0;
        v70 = v65;
        CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(v76);
        v71 = v48;
        goto LABEL_62;
      }

      v19 = v68;
LABEL_48:
      v49 = MEMORY[0x28223BE20](v19);
      if (v15)
      {
        v51 = &v67[-((v50 + 15) & 0xFFFFFFFFFFFFFFF0) + 16];
        v52 = a3;
        do
        {
          v53 = *v18++;
          *v51 = v53;
          v54 = *a2;
          a2 = (a2 + 24);
          *(v51 - 1) = v54;
          v51 += 6;
          --v52;
        }

        while (v52);
      }

      if (MEMORY[0x28223BE20](v49))
      {
        v56 = &v67[-((v55 + 15) & 0xFFFFFFFFFFFFFFF0) + 16];
        v57 = a5;
        do
        {
          v58 = *v21++;
          *v56 = v58;
          v59 = *a4;
          a4 = (a4 + 24);
          *(v56 - 1) = v59;
          v56 += 6;
          --v57;
        }

        while (v57);
      }

      v60 = *(a1 + 8);
      v72 = 0;
      v61 = CADSPGraphProcessPCMData();
      v62 = v72;
      if (v61)
      {
        v63 = 0;
      }

      else
      {
        v63 = v72 == 0;
      }

      if (v63)
      {
        v62 = CADSPRealTimeErrorCreateWithRealTimeSafeAllocator();
        v72 = v62;
      }

      v76[0] = v62;
      if (!v62)
      {
        v64 = 1;
        v75 = 1;
        result = CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(v76);
LABEL_63:
        *(a7 + 16) = v64;
        goto LABEL_64;
      }

      v76[0] = 0;
      v75 = 0;
      CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(v76);
      v74 = 0;
      v72 = 0;
      v70 = v62;
      CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v72);
      v71 = 0;
LABEL_62:
      CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v74);
      result = CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v70);
      v64 = 0;
      *a7 = 1685287015;
      goto LABEL_63;
    }
  }

  *a7 = 1970171760;
  *(a7 + 16) = 0;
LABEL_64:
  v66 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_223BBB6E0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

const void **CA::DSP::C::API::Call<unsigned char ()(__CADSPGraph *,unsigned int *,unsigned long,unsigned int *,unsigned long,CADSPAudioSliceDuration const*,unsigned int,__CADSPRealTimeError **)>::operator()<__CADSPGraph *,unsigned int *&,unsigned long &,unsigned int *&,unsigned long &,CADSPAudioSliceDuration const*&,unsigned int>(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void, const void **), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  v16 = 0;
  v10 = a2(a3, a4, a5, a6, a7, a8, a9, &v16);
  v11 = v16;
  if (v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = v16 == 0;
  }

  if (v12)
  {
    v11 = CADSPRealTimeErrorCreateWithRealTimeSafeAllocator();
    v16 = v11;
  }

  v15 = v11;
  if (v11)
  {
    v13 = 0;
    v15 = 0;
    *a1 = v11;
  }

  else
  {
    v13 = 1;
  }

  *(a1 + 8) = v13;
  return CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v15);
}

const void **adm::dsp::v2::Graph::reset@<X0>(adm::dsp::v2::Graph *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(this + 1);
  v8 = 0;
  v4 = 0;
  if (CADSPGraphReset())
  {
    v5 = 0;
  }

  else
  {
    v5 = v8 == 0;
  }

  if (v5)
  {
    v4 = CADSPRealTimeErrorCreateWithRealTimeSafeAllocator();
    v8 = v4;
  }

  v12 = v4;
  if (v4)
  {
    v12 = 0;
    v11 = 0;
    v7 = CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v12);
    v10 = 0;
    v12 = 0;
    v8 = v4;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(v7);
    v9 = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v10);
    *a2 = 1685287015;
    *(a2 + 16) = 0;
    return CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v8);
  }

  else
  {
    v11 = 1;
    result = CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v12);
    v9 = 1;
    *(a2 + 16) = 1;
  }

  return result;
}

const void **adm::dsp::v2::Graph::getExpectedOutputFrameCount@<X0>(adm::dsp::v2::Graph *this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v41[1] = *MEMORY[0x277D85DE8];
  v6 = *(this + 1);
  CA::DSP::Graph::GetModel(&v36);
  CanVary = CADSPGraphModelGetSliceDurationCanVary();
  result = CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&v36);
  if (CanVary)
  {
    v9 = (*(*this + 32))(this, 0);
    v10 = MEMORY[0x28223BE20](v9);
    v12 = &v33 - v11;
    v13 = v10;
    if (v10)
    {
      v14 = (v10 + 3) & 0x1FFFFFFFCLL;
      v15 = vdupq_n_s64(v10 - 1);
      v16 = (v12 + 8);
      v17 = 1;
      do
      {
        v18 = vdupq_n_s64(v17 - 1);
        v19 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v18, xmmword_223BFC2E0)));
        if (vuzp1_s16(v19, *v15.i8).u8[0])
        {
          *(v16 - 2) = a2;
        }

        if (vuzp1_s16(v19, *&v15).i8[2])
        {
          *(v16 - 1) = a2;
        }

        if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v18, xmmword_223BFC2D0)))).i32[1])
        {
          *v16 = a2;
          v16[1] = a2;
        }

        v17 += 4;
        v16 += 4;
        v14 -= 4;
      }

      while (v14);
    }

    v20 = (*(*this + 32))(this, 1);
    v21 = MEMORY[0x28223BE20](v20);
    v23 = (&v33 - v22);
    v24 = v21;
    v39 = a2 | (*(this + 8) << 32);
    v40 = 1;
    result = CA::DSP::C::API::Call<unsigned char ()(__CADSPGraph *,unsigned int *,unsigned long,unsigned int *,unsigned long,CADSPAudioSliceDuration const*,unsigned int,__CADSPRealTimeError **)>::operator()<__CADSPGraph *,unsigned int *&,unsigned long &,unsigned int *&,unsigned long &,CADSPAudioSliceDuration const*&,unsigned int>(&v37, MEMORY[0x277CEFA28], *(this + 1), v12, v13, &v33 - v22, v21, &v39, 0);
    v25 = v38;
    if (v38)
    {
      v26 = *v23;
      if (v24 != 1)
      {
        v27 = v23 + 1;
        v28 = 4 * v24 - 4;
        do
        {
          v30 = *v27++;
          v29 = v30;
          if (v30 < v26)
          {
            v26 = v29;
          }

          v28 -= 4;
        }

        while (v28);
      }

      *a3 = v26;
      *(a3 + 16) = 1;
    }

    else
    {
      v31 = v37;
      v37 = 0;
      v41[0] = 0;
      v34 = v31;
      CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(v41);
      v35 = v25;
      CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v37);
      *a3 = 1685287015;
      *(a3 + 16) = 0;
      result = CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v34);
    }
  }

  else
  {
    *a3 = 1970171760;
    *(a3 + 16) = 0;
  }

  v32 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_223BBBB7C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

const void **adm::dsp::v2::Graph::getRequiredInputFrameCount@<X0>(adm::dsp::v2::Graph *this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v40[1] = *MEMORY[0x277D85DE8];
  v6 = *(this + 1);
  CA::DSP::Graph::GetModel(&v35);
  CanVary = CADSPGraphModelGetSliceDurationCanVary();
  result = CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&v35);
  if (CanVary)
  {
    v9 = (*(*this + 32))(this, 0);
    v10 = MEMORY[0x28223BE20](v9);
    v12 = (&v32 - v11);
    v13 = v10;
    v14 = (*(*this + 32))(this, 1);
    v15 = MEMORY[0x28223BE20](v14);
    v17 = &v32 - v16;
    if (v15)
    {
      v18 = (v15 + 3) & 0x1FFFFFFFCLL;
      v19 = vdupq_n_s64(v15 - 1);
      v20 = (v17 + 8);
      v21 = 1;
      do
      {
        v22 = vdupq_n_s64(v21 - 1);
        v23 = vmovn_s64(vcgeq_u64(v19, vorrq_s8(v22, xmmword_223BFC2E0)));
        if (vuzp1_s16(v23, *v19.i8).u8[0])
        {
          *(v20 - 2) = a2;
        }

        if (vuzp1_s16(v23, *&v19).i8[2])
        {
          *(v20 - 1) = a2;
        }

        if (vuzp1_s16(*&v19, vmovn_s64(vcgeq_u64(v19, vorrq_s8(v22, xmmword_223BFC2D0)))).i32[1])
        {
          *v20 = a2;
          v20[1] = a2;
        }

        v21 += 4;
        v20 += 4;
        v18 -= 4;
      }

      while (v18);
    }

    v38 = a2 | (*(this + 8) << 32);
    v39 = 1;
    result = CA::DSP::C::API::Call<unsigned char ()(__CADSPGraph *,unsigned int *,unsigned long,unsigned int *,unsigned long,CADSPAudioSliceDuration const*,unsigned int,__CADSPRealTimeError **)>::operator()<__CADSPGraph *,unsigned int *&,unsigned long &,unsigned int *&,unsigned long &,CADSPAudioSliceDuration const*&,unsigned int>(&v36, MEMORY[0x277CEFA38], *(this + 1), v12, v13, v17, v15, &v38, 0);
    v24 = v37;
    if (v37)
    {
      v25 = *v12;
      if (v13 != 1)
      {
        v26 = v12 + 1;
        v27 = 4 * v13 - 4;
        do
        {
          v29 = *v26++;
          v28 = v29;
          if (v25 <= v29)
          {
            v25 = v28;
          }

          v27 -= 4;
        }

        while (v27);
      }

      *a3 = v25;
      *(a3 + 16) = 1;
    }

    else
    {
      v30 = v36;
      v36 = 0;
      v40[0] = 0;
      v33 = v30;
      CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(v40);
      v34 = v24;
      CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v36);
      *a3 = 1685287015;
      *(a3 + 16) = 0;
      result = CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v33);
    }
  }

  else
  {
    *a3 = 1970171760;
    *(a3 + 16) = 0;
  }

  v31 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_223BBBE70(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

const void **adm::dsp::v2::Graph::getTerminalName@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a3;
  v33[2] = *MEMORY[0x277D85DE8];
  result = (*(*a1 + 32))(a1, a3);
  if (result <= a2)
  {
    *a4 = 1651536493;
    *(a4 + 24) = 0;
    goto LABEL_21;
  }

  v9 = a1[1];
  CA::DSP::Graph::GetModel(&v31);
  v10 = CADSPGraphModelCopyPorts();
  v28[0] = 0;
  v32 = v10;
  CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(v28);
  CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&v31);
  ValueAtIndex = CFArrayGetValueAtIndex(v10, a2);
  v12 = ValueAtIndex;
  if (ValueAtIndex)
  {
    CFRetain(ValueAtIndex);
  }

  v28[0] = 0;
  v26 = v12;
  CA::DSP::ReferenceCounted<__CADSPPortModel const*>::~ReferenceCounted(v28);
  v13 = CADSPPortModelCopyName();
  v27 = v13;
  v28[0] = 0;
  CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(v28);
  if (!v13)
  {
LABEL_23:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  CFRetain(v13);
  v14 = CFGetTypeID(v13);
  if (v14 != CFStringGetTypeID())
  {
    CFRelease(v13);
    goto LABEL_23;
  }

  applesauce::CF::convert_as<std::string,0>(v28, v13);
  if (v4)
  {
    v15 = "output-%u";
  }

  else
  {
    v15 = "input-%u";
  }

  caulk::make_string(v15, __p, a2);
  v16 = v30;
  if (v30)
  {
    v17 = v28;
  }

  else
  {
    v17 = __p;
  }

  v18 = *v17;
  v33[0] = v17[1];
  *(v33 + 7) = *(v17 + 15);
  v19 = &v29;
  if (!v30)
  {
    v19 = &v25;
  }

  v20 = *v19;
  *v17 = 0;
  v17[1] = 0;
  v17[2] = 0;
  *(a4 + 15) = *(v33 + 7);
  v21 = v33[0];
  *a4 = v18;
  *(a4 + 8) = v21;
  *(a4 + 23) = v20;
  v33[0] = 0;
  *(v33 + 7) = 0;
  *(a4 + 24) = 1;
  if (v25 < 0)
  {
    operator delete(__p[0]);
  }

  if (v16 && v29 < 0)
  {
    operator delete(v28[0]);
  }

  CFRelease(v13);
  CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v27);
  CA::DSP::ReferenceCounted<__CADSPPortModel const*>::~ReferenceCounted(&v26);
  result = CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(&v32);
LABEL_21:
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_223BBC0F0(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

const void **CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **CA::DSP::ReferenceCounted<__CADSPPortModel const*>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

double applesauce::CF::convert_as<std::string,0>(uint64_t a1, const __CFString *a2)
{
  if (!a2 || (TypeID = CFStringGetTypeID(), TypeID != CFGetTypeID(a2)))
  {
    *a1 = 0;
    *(a1 + 24) = 0;
    return result;
  }

  CStringPtr = CFStringGetCStringPtr(a2, 0x8000100u);
  v7 = CStringPtr;
  if (!CStringPtr)
  {
    Length = CFStringGetLength(a2);
    maxBufLen = 0;
    v16.location = 0;
    v16.length = Length;
    CFStringGetBytes(a2, v16, 0x8000100u, 0, 0, 0, 0, &maxBufLen);
    v11 = maxBufLen;
    if (maxBufLen <= 0x7FFFFFFFFFFFFFF7)
    {
      if (maxBufLen >= 0x17)
      {
        operator new();
      }

      HIBYTE(v14) = maxBufLen;
      if (maxBufLen)
      {
        bzero(&__dst, maxBufLen);
      }

      *(&__dst + v11) = 0;
      if (v14 >= 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = __dst;
      }

      v17.location = 0;
      v17.length = Length;
      CFStringGetBytes(a2, v17, 0x8000100u, 0, 0, p_dst, maxBufLen, &maxBufLen);
      goto LABEL_22;
    }

LABEL_23:
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = strlen(CStringPtr);
  if (v8 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_23;
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v14) = v8;
  if (v8)
  {
    memmove(&__dst, v7, v8);
  }

  *(&__dst + v9) = 0;
LABEL_22:
  result = *&__dst;
  *a1 = __dst;
  *(a1 + 16) = v14;
  *(a1 + 24) = 1;
  return result;
}

uint64_t adm::dsp::v2::Graph::getTerminalFormat@<X0>(uint64_t result@<X0>, unsigned int a2@<W2>, uint64_t a3@<X8>)
{
  if (a2 <= 1)
  {
    v4 = *(result + 8);
    result = CA::DSP::Graph::GetStreamDescription(v7);
  }

  if (v9)
  {
    v5 = v7[1];
    *a3 = v7[0];
    *(a3 + 16) = v5;
    *(a3 + 32) = v8;
    v6 = 1;
  }

  else
  {
    v6 = 0;
    *a3 = 1685287015;
  }

  *(a3 + 40) = v6;
  return result;
}

uint64_t CA::DSP::Graph::GetStreamDescription(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  result = CADSPGraphGetStreamDescription();
  if (result)
  {
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0;
    v3 = 1;
  }

  else
  {
    v3 = 0;
    *a1 = 0;
  }

  *(a1 + 40) = v3;
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_223BBC52C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t adm::dsp::v2::Graph::getTerminalCount(uint64_t result, int a2)
{
  if (a2 == 1)
  {
    return *(result + 20);
  }

  if (!a2)
  {
    return *(result + 16);
  }

  return result;
}

void adm::dsp::v2::Graph::~Graph(adm::dsp::v2::Graph *this)
{
  adm::dsp::v2::Graph::~Graph(this);

  JUMPOUT(0x223DF43A0);
}

{
  *this = &unk_28371B768;
  v2 = (this + 40);
  if (*(this + 5))
  {
    RPBServerGetSharedInstance();
    v3 = *v2;
    RPBServerRemoveHost();
    CA::DSP::ReferenceCounted<__RPBHost *>::~ReferenceCounted(v2);
    *v2 = 0;
  }

  CA::DSP::ReferenceCounted<__RPBHost *>::~ReferenceCounted(v2);
  CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(this + 1);
}

const void **CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1ELm1EEE10__dispatchB8ne200100IOZNS0_12__assignmentINS0_8__traitsIJN10applesauce2CF9StringRefENS_4__fs10filesystem4pathEEEEE16__generic_assignB8ne200100INS0_17__move_assignmentISE_LNS0_6_TraitE1EEEEEvOT_EUlRSK_OT0_E_JRNS0_6__baseILSI_1EJSA_SD_EEEOSS_EEEDcSK_DpT0_(uint64_t *a1, uint64_t a2, __n128 *a3)
{
  v4 = *a1;
  if (*(*a1 + 24) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    result = *a3;
    *(a2 + 16) = a3[1].n128_u64[0];
    *a2 = result;
    a3[1].n128_u8[7] = 0;
    a3->n128_u8[0] = 0;
  }

  else
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<applesauce::CF::StringRef,std::__fs::filesystem::path>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](*a1);
    result = *a3;
    v4[1].n128_u64[0] = a3[1].n128_u64[0];
    *v4 = result;
    a3->n128_u64[0] = 0;
    a3->n128_u64[1] = 0;
    a3[1].n128_u64[0] = 0;
    v4[1].n128_u32[2] = 1;
  }

  return result;
}

uint64_t adm::dsp::GraphAsset<applesauce::CF::DictionaryRef>::empty(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v4 = &v3;
  return (off_28371B850[v1])(&v4, a1);
}

uint64_t std::__variant_detail::__move_constructor<std::__variant_detail::__traits<applesauce::CF::DictionaryRef,std::__fs::filesystem::path>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = -1;
  std::__variant_detail::__dtor<std::__variant_detail::__traits<applesauce::CF::DictionaryRef,std::__fs::filesystem::path>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
  v4 = *(a2 + 24);
  if (v4 != -1)
  {
    v6 = a1;
    (off_28371B840[v4])(&v6, a2);
    *(a1 + 24) = v4;
  }

  return a1;
}

uint64_t std::vector<adm::dsp::GraphAsset<applesauce::CF::DictionaryRef>>::__emplace_back_slow_path<adm::dsp::GraphAsset<applesauce::CF::DictionaryRef>>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 4 > v3)
  {
    v3 = v5 >> 4;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFE0)
  {
    v6 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 59))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v7 = 32 * v2;
  std::__variant_detail::__move_constructor<std::__variant_detail::__traits<applesauce::CF::DictionaryRef,std::__fs::filesystem::path>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](32 * v2, a2);
  v8 = 32 * v2 + 32;
  v9 = *a1;
  v10 = a1[1];
  v11 = v7 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v11;
    do
    {
      v14 = std::__variant_detail::__move_constructor<std::__variant_detail::__traits<applesauce::CF::DictionaryRef,std::__fs::filesystem::path>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](v13, v12);
      v12 += 32;
      v13 = v14 + 32;
    }

    while (v12 != v10);
    do
    {
      std::__variant_detail::__dtor<std::__variant_detail::__traits<applesauce::CF::DictionaryRef,std::__fs::filesystem::path>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v9);
      v9 += 32;
    }

    while (v9 != v10);
  }

  v15 = *a1;
  *a1 = v11;
  *(a1 + 1) = v8;
  if (v15)
  {
    operator delete(v15);
  }

  return v8;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<applesauce::CF::DictionaryRef,std::__fs::filesystem::path>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<applesauce::CF::DictionaryRef,std::__fs::filesystem::path>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<applesauce::CF::DictionaryRef,std::__fs::filesystem::path>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<applesauce::CF::DictionaryRef,std::__fs::filesystem::path>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<applesauce::CF::DictionaryRef,std::__fs::filesystem::path>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,applesauce::CF::DictionaryRef,std::__fs::filesystem::path> &&>(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  a2->n128_u64[0] = 0;
  return result;
}

void **std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<applesauce::CF::DictionaryRef,std::__fs::filesystem::path>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<applesauce::CF::DictionaryRef,std::__fs::filesystem::path>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<applesauce::CF::DictionaryRef,std::__fs::filesystem::path>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<applesauce::CF::DictionaryRef,std::__fs::filesystem::path>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<applesauce::CF::DictionaryRef,std::__fs::filesystem::path>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,applesauce::CF::DictionaryRef,std::__fs::filesystem::path> &&>(void **result, void *a2)
{
  **result = *a2;
  *a2 = 0;
  return result;
}

BOOL _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IONS1_9__variant15__value_visitorIZNK3adm3dsp10GraphAssetIN10applesauce2CF13DictionaryRefEE5emptyEvEUlOT_E_EEJRKNS0_6__baseILNS0_6_TraitE1EJSD_NS_4__fs10filesystem4pathEEEEEEEDcSF_DpT0_(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 23);
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 8);
  }

  return v2 == 0;
}

void *adm::dsp::GraphBuilder::setProperty(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    if ((a4 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
  }

  v5 = a1[28];
  v6 = a1[29];
  if (v5 >= v6)
  {
    v8 = a1[27];
    v9 = v5 - v8;
    v10 = (v5 - v8) >> 5;
    v11 = v10 + 1;
    if ((v10 + 1) >> 59)
    {
      std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
    }

    v12 = v6 - v8;
    if (v12 >> 4 > v11)
    {
      v11 = v12 >> 4;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFE0)
    {
      v13 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      if (!(v13 >> 59))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v14 = v10;
    v15 = 32 * v10;
    *v15 = a2;
    *(v15 + 8) = 0uLL;
    *(v15 + 24) = 0;
    v7 = 32 * v10 + 32;
    v16 = (v15 - 32 * v14);
    memcpy(v16, v8, v9);
    a1[27] = v16;
    a1[28] = v7;
    a1[29] = 0;
    if (v8)
    {
      operator delete(v8);
    }
  }

  else
  {
    *v5 = a2;
    *(v5 + 8) = 0uLL;
    v7 = v5 + 32;
    *(v5 + 24) = 0;
  }

  a1[28] = v7;
  return a1;
}

const void **adm::dsp::v2::GraphBuilder::build@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v272[1] = *MEMORY[0x277D85DE8];
  v250 = 0;
  v8 = *MEMORY[0x277CBECE8];
  buf[0].__r_.__value_.__r.__words[0] = 0;
  cf = CADSPGraphModelCreateMutable();
  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&buf[0].__r_.__value_.__l.__data_);
  alloc = v8;
  v9 = CADSPLanguageV1InterpreterCreate();
  v223 = a4;
  v224 = a3;
  v229 = a1;
  buf[0].__r_.__value_.__r.__words[0] = 0;
  v248 = v9;
  CA::DSP::ReferenceCounted<__CADSPLanguageV1Interpreter *>::~ReferenceCounted(&buf[0].__r_.__value_.__l.__data_);
  v269 = 0u;
  v268 = 0u;
  LODWORD(v270) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>>>::__rehash<true>(&v268, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    v11 = std::__string_hash<char>::operator()[abi:ne200100]((i + 2));
    v12 = v11;
    v13 = *(&v268 + 1);
    if (!*(&v268 + 1))
    {
      goto LABEL_18;
    }

    v14 = vcnt_s8(*(&v268 + 8));
    v14.i16[0] = vaddlv_u8(v14);
    v15 = v14.u32[0];
    if (v14.u32[0] > 1uLL)
    {
      v16 = v11;
      if (v11 >= *(&v268 + 1))
      {
        v16 = v11 % *(&v268 + 1);
      }
    }

    else
    {
      v16 = (*(&v268 + 1) - 1) & v11;
    }

    v17 = *(v268 + 8 * v16);
    if (!v17 || (v18 = *v17) == 0)
    {
LABEL_18:
      operator new();
    }

    while (1)
    {
      v19 = v18[1];
      if (v19 == v12)
      {
        break;
      }

      if (v15 > 1)
      {
        if (v19 >= v13)
        {
          v19 %= v13;
        }
      }

      else
      {
        v19 &= v13 - 1;
      }

      if (v19 != v16)
      {
        goto LABEL_18;
      }

LABEL_17:
      v18 = *v18;
      if (!v18)
      {
        goto LABEL_18;
      }
    }

    if (!std::equal_to<std::string>::operator()[abi:ne200100](v18 + 2, i + 2))
    {
      goto LABEL_17;
    }
  }

  theArray = 0;
  v252 = 0uLL;
  v20 = v224;
  if (*(&v269 + 1))
  {
    if (!(*(&v269 + 1) >> 60))
    {
      buf[1].__r_.__value_.__l.__size_ = &theArray;
      std::allocator<applesauce::CF::TypeRefPair>::allocate_at_least[abi:ne200100](*(&v269 + 1));
    }

    std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
  }

  v21 = v269;
  for (j = v252; v21; v21 = *v21)
  {
    if (j >= *(&v252 + 1))
    {
      v23 = (j - theArray) >> 4;
      if ((v23 + 1) >> 60)
      {
        std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
      }

      v24 = (*(&v252 + 1) - theArray) >> 3;
      if (v24 <= v23 + 1)
      {
        v24 = v23 + 1;
      }

      if (*(&v252 + 1) - theArray >= 0x7FFFFFFFFFFFFFF0uLL)
      {
        v25 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v25 = v24;
      }

      buf[1].__r_.__value_.__l.__size_ = &theArray;
      if (v25)
      {
        std::allocator<applesauce::CF::TypeRefPair>::allocate_at_least[abi:ne200100](v25);
      }

      buf[0].__r_.__value_.__r.__words[0] = 0;
      buf[0].__r_.__value_.__l.__size_ = 16 * v23;
      buf[0].__r_.__value_.__r.__words[2] = 16 * v23;
      buf[1].__r_.__value_.__r.__words[0] = 0;
      applesauce::CF::TypeRefPair::TypeRefPair<std::string const&,std::string const&>((16 * v23), v21 + 16, (v21 + 40));
      buf[0].__r_.__value_.__r.__words[2] += 16;
      v26 = (theArray + buf[0].__r_.__value_.__l.__size_ - v252);
      std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<applesauce::CF::TypeRefPair>,applesauce::CF::TypeRefPair*>(&theArray, theArray, v252, v26);
      v27 = theArray;
      v28 = *(&v252 + 1);
      theArray = v26;
      v226 = buf[0].__r_.__value_.__r.__words[2];
      v252 = *&buf[0].__r_.__value_.__r.__words[2];
      buf[0].__r_.__value_.__r.__words[2] = v27;
      buf[1].__r_.__value_.__r.__words[0] = v28;
      buf[0].__r_.__value_.__r.__words[0] = v27;
      buf[0].__r_.__value_.__l.__size_ = v27;
      std::__split_buffer<applesauce::CF::TypeRefPair>::~__split_buffer(buf);
      j = v226;
    }

    else
    {
      applesauce::CF::TypeRefPair::TypeRefPair<std::string const&,std::string const&>(j, v21 + 16, (v21 + 40));
      j += 2;
    }

    *&v252 = j;
  }

  v29 = (j - theArray) >> 4;
  memset(buf, 0, 24);
  std::vector<void const*>::reserve(buf, v29);
  __p = 0uLL;
  *&v254 = 0;
  std::vector<void const*>::reserve(&__p, v29);
  v30 = theArray;
  v31 = buf[0].__r_.__value_.__r.__words[0];
  v32 = __p;
  v225 = v252;
  if (theArray != v252)
  {
    v222 = v29;
    v34 = buf[0].__r_.__value_.__r.__words[2];
    size = buf[0].__r_.__value_.__l.__size_;
    v35 = *(&__p + 1);
    v227 = v254;
    do
    {
      v36 = *v30;
      if (!*v30 || !*(v30 + 1))
      {
        buf[0].__r_.__value_.__l.__size_ = size;
        buf[0].__r_.__value_.__r.__words[2] = v34;
        buf[0].__r_.__value_.__r.__words[0] = v31;
        *(&__p + 1) = v35;
        *&v254 = v227;
        *&__p = v32;
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      if (size >= v34)
      {
        v37 = v32;
        v38 = size - v31;
        v39 = (size - v31) >> 3;
        v40 = v39 + 1;
        if ((v39 + 1) >> 61)
        {
          buf[0].__r_.__value_.__l.__size_ = size;
          buf[0].__r_.__value_.__r.__words[2] = v34;
          buf[0].__r_.__value_.__r.__words[0] = v31;
          *(&__p + 1) = v35;
          *&v254 = v227;
          *&__p = v32;
          std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
        }

        if ((v34 - v31) >> 2 > v40)
        {
          v40 = (v34 - v31) >> 2;
        }

        if (v34 - v31 >= 0x7FFFFFFFFFFFFFF8)
        {
          v41 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v41 = v40;
        }

        if (v41)
        {
          std::allocator<void const*>::allocate_at_least[abi:ne200100](v41);
        }

        v34 = 0;
        *(8 * v39) = v36;
        size = (8 * v39 + 8);
        memcpy(0, v31, v38);
        if (v31)
        {
          operator delete(v31);
        }

        v31 = 0;
        v32 = v37;
      }

      else
      {
        *size = v36;
        size += 8;
      }

      v42 = *(v30 + 1);
      if (v35 >= v227)
      {
        v43 = v35 - v32;
        v44 = (v35 - v32) >> 3;
        v45 = v44 + 1;
        if ((v44 + 1) >> 61)
        {
          buf[0].__r_.__value_.__l.__size_ = size;
          buf[0].__r_.__value_.__r.__words[2] = v34;
          buf[0].__r_.__value_.__r.__words[0] = v31;
          *(&__p + 1) = v35;
          *&v254 = v227;
          *&__p = v32;
          std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
        }

        v46 = v32;
        if ((v227 - v32) >> 2 > v45)
        {
          v45 = (v227 - v32) >> 2;
        }

        if (v227 - v32 >= 0x7FFFFFFFFFFFFFF8)
        {
          v47 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v47 = v45;
        }

        if (v47)
        {
          std::allocator<void const*>::allocate_at_least[abi:ne200100](v47);
        }

        v227 = 0;
        *(8 * v44) = v42;
        v35 = (8 * v44 + 8);
        memcpy(0, v32, v43);
        if (v46)
        {
          operator delete(v46);
        }

        v32 = 0;
      }

      else
      {
        *v35 = v42;
        v35 += 8;
      }

      v30 = (v30 + 16);
    }

    while (v30 != v225);
    buf[0].__r_.__value_.__l.__size_ = size;
    buf[0].__r_.__value_.__r.__words[2] = v34;
    buf[0].__r_.__value_.__r.__words[0] = v31;
    *(&__p + 1) = v35;
    *&v254 = v227;
    *&__p = v32;
    v20 = v224;
    v29 = v222;
  }

  v48 = CFDictionaryCreate(0, v31, v32, v29, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v48)
  {
    v207 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v207, "Could not construct");
    __cxa_throw(v207, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (buf[0].__r_.__value_.__r.__words[0])
  {
    operator delete(buf[0].__r_.__value_.__l.__data_);
  }

  buf[0].__r_.__value_.__r.__words[0] = &theArray;
  std::vector<applesauce::CF::TypeRefPair>::__destroy_vector::operator()[abi:ne200100](buf);
  CADSPLanguageV1InterpreterSetPreprocessorMacroDefinitions();
  CFRelease(v48);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(&v268);
  v247 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v246 = v248;
  if (v248)
  {
    CFRetain(v248);
  }

  v49 = *(v229 + 40);
  if (v49 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  buf[0].__r_.__value_.__r.__words[0] = &v268;
  (off_28371B8D8[v49])(&v267, buf, v229 + 16);
  v50 = v267;
  adm_log_object = get_adm_log_object();
  v52 = adm_log_object;
  if (!v50)
  {
    if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&dword_223B4A000, v52, OS_LOG_TYPE_ERROR, "failed to build DSP graph - graph file path and graph text are missing", buf, 2u);
    }

    v208 = __cxa_allocate_exception(0x20uLL);
    __cxa_throw(v208, MEMORY[0x277D82718], MEMORY[0x277D82650]);
  }

  if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_223B4A000, v52, OS_LOG_TYPE_DEFAULT, "compiling text", buf, 2u);
  }

  v53 = get_adm_log_object();
  v54 = v229;
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
  {
    if (!v267)
    {
      v218 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v218, "Could not construct");
      __cxa_throw(v218, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    applesauce::CF::convert_to<std::string,0>(&v268, v267);
    v55 = 0;
    v56 = 0;
    if ((SBYTE7(v269) & 0x80u) == 0)
    {
      v57 = &v268;
    }

    else
    {
      v57 = v268;
    }

    if ((SBYTE7(v269) & 0x80u) == 0)
    {
      v58 = BYTE7(v269);
    }

    else
    {
      v58 = *(&v268 + 1);
    }

    v59 = v58 + v57;
LABEL_90:
    if ((v58 - v56) >= 1)
    {
      v60 = v58 - v56;
      v61 = v57 + v56;
      do
      {
        v62 = memchr(v61, 10, v60);
        if (!v62)
        {
          break;
        }

        if (*v62 == 10)
        {
          if (v62 != v59)
          {
            v63 = v62 - v57;
            if (v62 - v57 != -1)
            {
              v64 = get_adm_log_object();
              if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
              {
                v65 = v63 - v56;
                LODWORD(buf[0].__r_.__value_.__l.__data_) = 134218498;
                if (v58 - v56 < v63 - v56)
                {
                  v65 = v58 - v56;
                }

                *(buf[0].__r_.__value_.__r.__words + 4) = v55++;
                WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1040;
                *(&buf[0].__r_.__value_.__r.__words[1] + 6) = v65;
                WORD1(buf[0].__r_.__value_.__r.__words[2]) = 2080;
                *(&buf[0].__r_.__value_.__r.__words[2] + 4) = v57 + v56;
                _os_log_debug_impl(&dword_223B4A000, v64, OS_LOG_TYPE_DEBUG, "compiling line %2lu - %.*s", buf, 0x1Cu);
              }

              v56 = v63 + 1;
              if (v63 < v58)
              {
                goto LABEL_90;
              }
            }
          }

          break;
        }

        v61 = v62 + 1;
        v60 = v59 - v61;
      }

      while (v59 - v61 >= 1);
    }

    if (SBYTE7(v269) < 0)
    {
      operator delete(v268);
    }

    v54 = v229;
    v20 = v224;
  }

  v266 = v247;
  if (v247)
  {
    CFRetain(v247);
  }

  *&__p = 0;
  v66 = CADSPLanguageV1InterpreterInterpretString();
  v67 = __p;
  if (!v66 && !__p)
  {
    v191 = *MEMORY[0x277CBED08];
    v67 = CADSPErrorCreate();
    *&__p = v67;
  }

  theArray = v67;
  if (v67)
  {
    v68 = 0;
    theArray = 0;
    buf[0].__r_.__value_.__r.__words[0] = v67;
  }

  else
  {
    v68 = 1;
  }

  buf[0].__r_.__value_.__s.__data_[8] = v68;
  CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&theArray);
  v69 = buf[0].__r_.__value_.__s.__data_[8];
  if ((buf[0].__r_.__value_.__s.__data_[8] & 1) == 0)
  {
    v209 = buf[0].__r_.__value_.__r.__words[0];
    buf[0].__r_.__value_.__r.__words[0] = 0;
    *&__p = 0;
    *&v268 = v209;
    CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&__p);
    BYTE8(v268) = v69;
    if ((buf[0].__r_.__value_.__s.__data_[8] & 1) == 0)
    {
      CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&buf[0].__r_.__value_.__l.__data_);
    }

    CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v266);
    v210 = get_adm_log_object();
    if (os_log_type_enabled(v210, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf[0].__r_.__value_.__l.__data_) = 138412290;
      *(buf[0].__r_.__value_.__r.__words + 4) = v209;
      _os_log_error_impl(&dword_223B4A000, v210, OS_LOG_TYPE_ERROR, "failed to interpret DSP graph: %@", buf, 0xCu);
    }

    v211 = __cxa_allocate_exception(0x20uLL);
    __cxa_throw(v211, MEMORY[0x277D82718], MEMORY[0x277D82650]);
  }

  BYTE8(v268) = buf[0].__r_.__value_.__s.__data_[8];
  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v266);
  if (v267)
  {
    CFRelease(v267);
  }

  CA::DSP::ReferenceCounted<__CADSPLanguageV1Interpreter *>::~ReferenceCounted(&v246);
  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v247);
  v245 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (*(v54 + 8))
  {
    buf[0].__r_.__value_.__r.__words[0] = v245;
    if (v245)
    {
      CFRetain(v245);
      v70 = *(v54 + 8);
    }

    CADSPGraphModelSetName();
    CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&buf[0].__r_.__value_.__l.__data_);
  }

  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v245);
  v244 = cf;
  if (cf)
  {
    CFRetain(cf);
    v267 = v244;
    CFRetain(v244);
  }

  else
  {
    v267 = 0;
  }

  v71 = CADSPGraphModelCopyAudioStreamConfigurationNames();
  buf[0].__r_.__value_.__r.__words[0] = 0;
  theArray = v71;
  CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(&buf[0].__r_.__value_.__l.__data_);
  CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&v267);
  v72 = theArray;
  Count = CFArrayGetCount(theArray);
  v74 = theArray;
  if (v72 != theArray || Count)
  {
    v75 = 0;
    v76 = Count - 1;
    do
    {
      v77 = v75;
      ValueAtIndex = CFArrayGetValueAtIndex(v72, v75);
      v79 = ValueAtIndex;
      if (ValueAtIndex)
      {
        CFRetain(ValueAtIndex);
      }

      buf[0].__r_.__value_.__r.__words[0] = 0;
      v266 = v79;
      CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&buf[0].__r_.__value_.__l.__data_);
      v265 = v244;
      if (v244)
      {
        CFRetain(v244);
      }

      if (CADSPGraphModelGetAudioStreamConfigurationForName())
      {
        *&buf[0].__r_.__value_.__l.__data_ = v268;
        *&buf[0].__r_.__value_.__r.__words[2] = v269;
        *&buf[1].__r_.__value_.__r.__words[1] = v270;
        v80 = 1;
      }

      else
      {
        v80 = 0;
        buf[0].__r_.__value_.__s.__data_[0] = 0;
      }

      buf[2].__r_.__value_.__s.__data_[0] = v80;
      CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&v265);
      if (buf[2].__r_.__value_.__s.__data_[0] == 1)
      {
        v81 = v266;
        if (v266)
        {
          CFRetain(v266);
          v264 = v81;
          v82 = CFGetTypeID(v81);
          if (v82 != CFStringGetTypeID())
          {
            v206 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v206, "Could not construct");
            __cxa_throw(v206, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }
        }

        else
        {
          v264 = 0;
        }

        v254 = *&buf[0].__r_.__value_.__r.__words[2];
        v255 = buf[1].__r_.__value_.__l.__size_;
        __p = *&buf[0].__r_.__value_.__l.__data_;
        (*(*v20 + 16))(&v268, v20, &v264, &__p);
        *&buf[0].__r_.__value_.__l.__data_ = v268;
        *&buf[0].__r_.__value_.__r.__words[2] = v269;
        buf[1].__r_.__value_.__l.__size_ = v270;
        if (v264)
        {
          CFRelease(v264);
        }

        v263 = v244;
        if (v244)
        {
          CFRetain(v244);
        }

        CADSPGraphModelSetAudioStreamConfigurationForName();
        CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v263);
      }

      CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v266);
      v75 = v77 + 1;
    }

    while (v72 != v74 || v76 != v77);
  }

  CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(&theArray);
  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v244);
  v243 = cf;
  if (cf)
  {
    CFRetain(cf);
    *&v268 = v243;
    CFRetain(v243);
  }

  else
  {
    *&v268 = 0;
  }

  memset(&buf[1], 0, 44);
  if (CADSPGraphGetAudioStreamConfigurationForPort())
  {
    v83 = *&buf[1].__r_.__value_.__l.__data_ | 0x100000000;
  }

  else
  {
    v83 = 0;
  }

  if ((v83 & 0x100000000) != 0)
  {
    v84 = v83;
  }

  else
  {
    v84 = 0;
  }

  CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&v268);
  theArray = v243;
  if (v243)
  {
    CFRetain(v243);
  }

  v85 = CADSPGraphModelCopyPorts();
  buf[0].__r_.__value_.__r.__words[0] = 0;
  *&__p = v85;
  CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(&buf[0].__r_.__value_.__l.__data_);
  v86 = CFArrayGetCount(__p);
  CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(&__p);
  CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&theArray);
  if (v86 >= 2)
  {
    v87 = v86 - 1;
    while (1)
    {
      v267 = v243;
      if (v243)
      {
        CFRetain(v243);
      }

      memset(&buf[1], 0, 44);
      v88 = CADSPGraphGetAudioStreamConfigurationForPort() ? *&buf[1].__r_.__value_.__l.__data_ | 0x100000000 : 0;
      v89 = (v88 & 0x100000000) != 0 ? v88 : 0;
      CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&v267);
      if (v84 != v89)
      {
        break;
      }

      if (!--v87)
      {
        goto LABEL_172;
      }
    }

    v194 = get_adm_log_object();
    if (os_log_type_enabled(v194, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&dword_223B4A000, v194, OS_LOG_TYPE_ERROR, "failed to build DSP graph - all input bus sample rates must be equal", buf, 2u);
    }

    goto LABEL_436;
  }

LABEL_172:
  v266 = v243;
  if (v243)
  {
    CFRetain(v243);
  }

  memset(&buf[1], 0, 44);
  if (CADSPGraphGetAudioStreamConfigurationForPort())
  {
    v90 = *&buf[1].__r_.__value_.__l.__data_ | 0x100000000;
  }

  else
  {
    v90 = 0;
  }

  if ((v90 & 0x100000000) != 0)
  {
    v91 = v90;
  }

  else
  {
    v91 = 0;
  }

  CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&v266);
  v265 = v243;
  if (v243)
  {
    CFRetain(v243);
  }

  v92 = CADSPGraphModelCopyPorts();
  buf[0].__r_.__value_.__r.__words[0] = 0;
  *&__p = v92;
  CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(&buf[0].__r_.__value_.__l.__data_);
  v93 = CFArrayGetCount(__p);
  CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(&__p);
  CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&v265);
  if (v93 >= 2)
  {
    v94 = v93 - 1;
    while (1)
    {
      v264 = v243;
      if (v243)
      {
        CFRetain(v243);
      }

      memset(&buf[1], 0, 44);
      v95 = CADSPGraphGetAudioStreamConfigurationForPort() ? *&buf[1].__r_.__value_.__l.__data_ | 0x100000000 : 0;
      v96 = (v95 & 0x100000000) != 0 ? v95 : 0;
      CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&v264);
      if (v91 != v96)
      {
        break;
      }

      if (!--v94)
      {
        goto LABEL_194;
      }
    }

    v195 = get_adm_log_object();
    if (os_log_type_enabled(v195, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&dword_223B4A000, v195, OS_LOG_TYPE_ERROR, "failed to build DSP graph - all output bus sample rates must be equal", buf, 2u);
    }

    goto LABEL_436;
  }

LABEL_194:
  if (!*(v229 + 184))
  {
    v212 = get_adm_log_object();
    if (os_log_type_enabled(v212, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&dword_223B4A000, v212, OS_LOG_TYPE_ERROR, "failed to build DSP graph - block size information is missing", buf, 2u);
    }

    v196 = __cxa_allocate_exception(0x20uLL);
LABEL_437:
    __cxa_throw(v196, MEMORY[0x277D82718], MEMORY[0x277D82650]);
  }

  v97 = *(v229 + 188);
  if (v97 == 2)
  {
    v106 = get_adm_log_object();
    if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
    {
      v107 = *(v229 + 184);
      LODWORD(buf[0].__r_.__value_.__l.__data_) = 67109376;
      HIDWORD(buf[0].__r_.__value_.__r.__words[0]) = v107;
      LOWORD(buf[0].__r_.__value_.__r.__words[1]) = 1024;
      *(&buf[0].__r_.__value_.__r.__words[1] + 2) = v84;
      _os_log_impl(&dword_223B4A000, v106, OS_LOG_TYPE_DEFAULT, "setting variable slice duration using block size %u and input sample rate %u", buf, 0xEu);
    }

    v108 = *(v229 + 184);
    v260 = v243;
    if (v243)
    {
      CFRetain(v243);
    }

    CADSPGraphModelSetSliceDuration();
    CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v260);
    v259 = v243;
    if (v243)
    {
      CFRetain(v243);
    }

    CADSPGraphModelSetSliceDurationCanVary();
    p_appendedString = &v259;
  }

  else if (v97 == 1)
  {
    v103 = get_adm_log_object();
    if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
    {
      v104 = *(v229 + 184);
      LODWORD(buf[0].__r_.__value_.__l.__data_) = 67109376;
      HIDWORD(buf[0].__r_.__value_.__r.__words[0]) = v104;
      LOWORD(buf[0].__r_.__value_.__r.__words[1]) = 1024;
      *(&buf[0].__r_.__value_.__r.__words[1] + 2) = v91;
      _os_log_impl(&dword_223B4A000, v103, OS_LOG_TYPE_DEFAULT, "setting variable slice duration using block size %u and output sample rate %u", buf, 0xEu);
    }

    v105 = *(v229 + 184);
    v261 = v243;
    if (v243)
    {
      CFRetain(v243);
    }

    CADSPGraphModelSetSliceDuration();
    CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v261);
    v272[0] = v243;
    if (v243)
    {
      CFRetain(v243);
    }

    CADSPGraphModelSetSliceDurationCanVary();
    p_appendedString = v272;
  }

  else
  {
    if (v97)
    {
      goto LABEL_221;
    }

    v98 = get_adm_log_object();
    v99 = v98;
    if (v84 != v91)
    {
      if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
        _os_log_error_impl(&dword_223B4A000, v99, OS_LOG_TYPE_ERROR, "failed to build DSP graph - I/O bus sample rates of fixed block size graphs must be equal", buf, 2u);
      }

LABEL_436:
      v196 = __cxa_allocate_exception(0x20uLL);
      goto LABEL_437;
    }

    if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
    {
      v100 = *(v229 + 184);
      LODWORD(buf[0].__r_.__value_.__l.__data_) = 67109376;
      HIDWORD(buf[0].__r_.__value_.__r.__words[0]) = v100;
      LOWORD(buf[0].__r_.__value_.__r.__words[1]) = 1024;
      *(&buf[0].__r_.__value_.__r.__words[1] + 2) = v84;
      _os_log_impl(&dword_223B4A000, v99, OS_LOG_TYPE_DEFAULT, "setting fixed slice duration using block size %u and sample rate %u", buf, 0xEu);
    }

    v101 = *(v229 + 184);
    v263 = v243;
    if (v243)
    {
      CFRetain(v243);
    }

    CADSPGraphModelSetSliceDuration();
    CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v263);
    appendedString = v243;
    if (v243)
    {
      CFRetain(v243);
    }

    CADSPGraphModelSetSliceDurationCanVary();
    p_appendedString = &appendedString;
  }

  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(p_appendedString);
LABEL_221:
  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v243);
  v242 = cf;
  if (cf)
  {
    CFRetain(cf);
    buf[0].__r_.__value_.__r.__words[0] = v242;
    v109 = v229;
    CFRetain(v242);
  }

  else
  {
    buf[0].__r_.__value_.__r.__words[0] = 0;
    v109 = v229;
  }

  MEMORY[0x223DF3900]();
  CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&buf[0].__r_.__value_.__l.__data_);
  *(v109 + 257);
  *&v268 = v242;
  if (v242)
  {
    CFRetain(v242);
  }

  CADSPGraphModelSetOptions();
  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v268);
  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v242);
  v241 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (*(v109 + 244) == 1)
  {
    v110 = get_adm_log_object();
    if (os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
    {
      v111 = *(v109 + 240);
      LODWORD(buf[0].__r_.__value_.__l.__data_) = 67109120;
      HIDWORD(buf[0].__r_.__value_.__r.__words[0]) = v111;
      _os_log_impl(&dword_223B4A000, v110, OS_LOG_TYPE_DEFAULT, "setting sample rate conversion algorithm to %u", buf, 8u);
    }

    buf[0].__r_.__value_.__r.__words[0] = v241;
    if (v241)
    {
      CFRetain(v241);
    }

    v112 = *(v109 + 240);
    CADSPGraphModelSetSampleRateConversionAlgorithm();
    CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&buf[0].__r_.__value_.__l.__data_);
  }

  if (*(v109 + 252) == 1)
  {
    v113 = get_adm_log_object();
    if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
    {
      v114 = *(v109 + 248);
      LODWORD(v268) = 67109120;
      DWORD1(v268) = v114;
      _os_log_impl(&dword_223B4A000, v113, OS_LOG_TYPE_DEFAULT, "setting sample rate conversion quality to %u", &v268, 8u);
    }

    *&v268 = v241;
    if (v241)
    {
      CFRetain(v241);
    }

    v115 = *(v109 + 248);
    CADSPGraphModelSetSampleRateConversionQuality();
    CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v268);
  }

  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v241);
  v240 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (*(v109 + 256) == 1 && *(v109 + 104) == 1)
  {
    v116 = v109 + 80;
    LODWORD(v268) = 0;
    *(&v268 + 1) = std::system_category();
    std::__fs::filesystem::__create_directories((v109 + 80), &v268);
    v117 = 0;
    v272[0] = 0x100000000;
    do
    {
      v118 = *(v272 + v117);
      v259 = v240;
      if (v240)
      {
        CFRetain(v240);
      }

      v119 = CADSPGraphModelCopyPorts();
      v228 = v117;
      buf[0].__r_.__value_.__r.__words[0] = 0;
      v260 = v119;
      CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(&buf[0].__r_.__value_.__l.__data_);
      CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&v259);
      v120 = v260;
      v121 = CFArrayGetCount(v260);
      v122 = v260;
      if (v120 != v260 || v121)
      {
        v123 = 0;
        v124 = v121 - 1;
        do
        {
          v125 = v123;
          v126 = CFArrayGetValueAtIndex(v120, v123);
          v127 = v126;
          if (v126)
          {
            CFRetain(v126);
          }

          buf[0].__r_.__value_.__r.__words[0] = 0;
          v258 = v127;
          CA::DSP::ReferenceCounted<__CADSPPortModel const*>::~ReferenceCounted(&buf[0].__r_.__value_.__l.__data_);
          v257 = v240;
          if (v240)
          {
            CFRetain(v240);
          }

          Mutable = CADSPRecorderTapPointModelCreateMutable();
          buf[0].__r_.__value_.__r.__words[0] = 0;
          v256 = Mutable;
          CA::DSP::ReferenceCounted<__CADSPRecorderTapPointModel *>::~ReferenceCounted(&buf[0].__r_.__value_.__l.__data_);
          v267 = v256;
          if (v256)
          {
            CFRetain(v256);
          }

          v266 = v258;
          if (v258)
          {
            CFRetain(v258);
          }

          v129 = CADSPPortModelCopyName();
          buf[0].__r_.__value_.__r.__words[0] = 0;
          *&__p = v129;
          CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&buf[0].__r_.__value_.__l.__data_);
          CADSPRecorderTapPointModelSetBoxName();
          CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&__p);
          CA::DSP::ReferenceCounted<__CADSPPortModel const*>::~ReferenceCounted(&v266);
          CA::DSP::ReferenceCounted<__CADSPRecorderTapPointModel *>::~ReferenceCounted(&v267);
          v263 = v240;
          if (v240)
          {
            CFRetain(v240);
          }

          v130 = CADSPGraphModelCopyName();
          buf[0].__r_.__value_.__r.__words[0] = 0;
          v264 = v130;
          CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&buf[0].__r_.__value_.__l.__data_);
          v261 = v258;
          if (v258)
          {
            CFRetain(v258);
          }

          v131 = CADSPPortModelCopyName();
          buf[0].__r_.__value_.__r.__words[0] = 0;
          appendedString = v131;
          CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&buf[0].__r_.__value_.__l.__data_);
          v132 = CFStringCreateMutable(alloc, 256);
          *&__p = v132;
          if (*(v229 + 103) >= 0)
          {
            v133 = v116;
          }

          else
          {
            v133 = *(v229 + 80);
          }

          CFStringAppendFormat(v132, 0, @"%s/adm.", v133);
          memset(buf, 0, 64);
          v134 = localtime((v229 + 264));
          strftime(buf, 0x40uLL, "%Y%m%d.%H%M%S.", v134);
          CFStringAppendCString(__p, buf, 0x600u);
          if (v264)
          {
            if (CFStringGetLength(v264))
            {
              CFStringAppend(__p, v264);
              CFStringAppendCString(__p, ".", 0x600u);
            }

            if (v264 && CFStringGetLength(v264))
            {
              CFStringAppend(__p, appendedString);
              CFStringAppendCString(__p, ".", 0x600u);
            }
          }

          CFStringAppendCString(__p, "caf", 0x600u);
          v135 = __p;
          *&__p = 0;
          theArray = 0;
          v265 = v135;
          CA::DSP::ReferenceCounted<__CFString *>::~ReferenceCounted(&theArray);
          CA::DSP::ReferenceCounted<__CFString *>::~ReferenceCounted(&__p);
          CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&appendedString);
          CA::DSP::ReferenceCounted<__CADSPPortModel const*>::~ReferenceCounted(&v261);
          CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v264);
          CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&v263);
          buf[0].__r_.__value_.__r.__words[0] = v256;
          if (v256)
          {
            CFRetain(v256);
          }

          CADSPRecorderTapPointModelSetAudioFilePath();
          CA::DSP::ReferenceCounted<__CADSPRecorderTapPointModel *>::~ReferenceCounted(&buf[0].__r_.__value_.__l.__data_);
          CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v265);
          v136 = v256;
          v256 = 0;
          CADSPGraphModelAddRecorderTapPoint();
          if (v136)
          {
            CFRelease(v136);
          }

          CA::DSP::ReferenceCounted<__CADSPRecorderTapPointModel *>::~ReferenceCounted(&v256);
          CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v257);
          CA::DSP::ReferenceCounted<__CADSPPortModel const*>::~ReferenceCounted(&v258);
          v123 = v125 + 1;
        }

        while (v120 != v122 || v124 != v125);
      }

      CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(&v260);
      v117 = v228 + 4;
      v109 = v229;
    }

    while (v228 != 4);
  }

  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v240);
  v239 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  *&__p = 0;
  v137 = CADSPGraphCreateWithModel();
  if (v137)
  {
    theArray = 0;
    *&v268 = 0;
    buf[0].__r_.__value_.__r.__words[0] = v137;
    CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&v268);
    buf[0].__r_.__value_.__s.__data_[8] = 1;
    CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&theArray);
  }

  else
  {
    v190 = __p;
    if (!__p)
    {
      v221 = *MEMORY[0x277CBED08];
      v190 = CADSPErrorCreate();
      *&__p = v190;
    }

    theArray = 0;
    *&v268 = 0;
    buf[0].__r_.__value_.__r.__words[0] = v190;
    CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v268);
    buf[0].__r_.__value_.__s.__data_[8] = 0;
    CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&theArray);
  }

  CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&v239);
  if (buf[0].__r_.__value_.__s.__data_[8] != 1)
  {
    v213 = get_adm_log_object();
    if (os_log_type_enabled(v213, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v268) = 138412290;
      *(&v268 + 4) = buf[0].__r_.__value_.__r.__words[0];
      _os_log_error_impl(&dword_223B4A000, v213, OS_LOG_TYPE_ERROR, "failed to build DSP graph - compilation error: %@", &v268, 0xCu);
    }

    v214 = __cxa_allocate_exception(0x20uLL);
    __cxa_throw(v214, MEMORY[0x277D82718], MEMORY[0x277D82650]);
  }

  CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&v250);
  v138 = buf[0].__r_.__value_.__r.__words[0];
  buf[0].__r_.__value_.__r.__words[0] = 0;
  v250 = v138;
  if (buf[0].__r_.__value_.__s.__data_[8] == 1)
  {
    CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&buf[0].__r_.__value_.__l.__data_);
  }

  else
  {
    CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&buf[0].__r_.__value_.__l.__data_);
  }

  v238 = v250;
  if (v250)
  {
    CFRetain(v250);
  }

  CA::DSP::Graph::GetStreamDescription(buf);
  data = buf[0].__r_.__value_.__l.__data_;
  v140 = 1;
  while (1)
  {
    CA::DSP::Graph::GetModel(&__p);
    v141 = CADSPGraphModelCopyPorts();
    buf[0].__r_.__value_.__r.__words[0] = 0;
    *&v268 = v141;
    CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(&buf[0].__r_.__value_.__l.__data_);
    v142 = CFArrayGetCount(v268);
    CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(&v268);
    CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&__p);
    if (v142 <= v140)
    {
      break;
    }

    CA::DSP::Graph::GetStreamDescription(buf);
    ++v140;
    if (*&data != *&buf[0].__r_.__value_.__l.__data_)
    {
      v143 = get_adm_log_object();
      if (os_log_type_enabled(v143, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
        _os_log_error_impl(&dword_223B4A000, v143, OS_LOG_TYPE_ERROR, "failed to validate DSP graph invariants - all input bus sample rates must be equal", buf, 2u);
      }

      goto LABEL_299;
    }
  }

  v144 = 1;
  CA::DSP::Graph::GetStreamDescription(buf);
  v145 = buf[0].__r_.__value_.__l.__data_;
  while (1)
  {
    CA::DSP::Graph::GetModel(&theArray);
    v146 = CADSPGraphModelCopyPorts();
    buf[0].__r_.__value_.__r.__words[0] = 0;
    *&v268 = v146;
    CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(&buf[0].__r_.__value_.__l.__data_);
    v147 = CFArrayGetCount(v268);
    CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(&v268);
    CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&theArray);
    if (v147 <= v144)
    {
      break;
    }

    CA::DSP::Graph::GetStreamDescription(buf);
    ++v144;
    if (*&v145 != *&buf[0].__r_.__value_.__l.__data_)
    {
      v148 = get_adm_log_object();
      if (os_log_type_enabled(v148, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
        _os_log_error_impl(&dword_223B4A000, v148, OS_LOG_TYPE_ERROR, "failed to validate DSP graph invariants - all output bus sample rates must be equal", buf, 2u);
      }

LABEL_299:
      v149 = __cxa_allocate_exception(0x20uLL);
      __cxa_throw(v149, MEMORY[0x277D82718], MEMORY[0x277D82650]);
    }
  }

  CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&v238);
  v237 = v250;
  if (v250)
  {
    CFRetain(v250);
  }

  v150 = 0;
  *&__p = 0;
  if (*(v109 + 72) == 1)
  {
    if (*(v109 + 71) < 0)
    {
      std::string::__init_copy_ctor_external(buf, *(v109 + 48), *(v109 + 56));
    }

    else
    {
      buf[0] = *(v109 + 48);
    }

    v151 = HIBYTE(buf[0].__r_.__value_.__r.__words[2]);
    if ((buf[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v152 = buf;
    }

    else
    {
      v152 = buf[0].__r_.__value_.__r.__words[0];
    }

    if (v152)
    {
      if ((buf[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v153 = HIBYTE(buf[0].__r_.__value_.__r.__words[2]);
      }

      else
      {
        v153 = buf[0].__r_.__value_.__l.__size_;
      }

      v150 = CFStringCreateWithBytes(0, v152, v153, 0x8000100u, 0);
      *&v268 = v150;
      if (!v150)
      {
        v219 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v219, "Could not construct");
        __cxa_throw(v219, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v151 = HIBYTE(buf[0].__r_.__value_.__r.__words[2]);
    }

    else
    {
      v150 = 0;
    }

    *&__p = v150;
    if (v151 < 0)
    {
      operator delete(buf[0].__r_.__value_.__l.__data_);
    }
  }

  v155 = *(v109 + 136);
  for (k = *(v109 + 144); v155 != k; v155 += 32)
  {
    adm::dsp::GraphAsset<applesauce::CF::DictionaryRef>::load(&theArray, v155);
    v156 = theArray;
    v157 = get_adm_log_object();
    v158 = v157;
    if (v156)
    {
      if (os_log_type_enabled(v157, OS_LOG_TYPE_DEFAULT))
      {
        adm::dsp::GraphAsset<applesauce::CF::DictionaryRef>::str(buf, v155);
        v159 = (buf[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? buf : buf[0].__r_.__value_.__r.__words[0];
        LODWORD(v268) = 136315138;
        *(&v268 + 4) = v159;
        _os_log_impl(&dword_223B4A000, v158, OS_LOG_TYPE_DEFAULT, "setting %s", &v268, 0xCu);
        if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf[0].__r_.__value_.__l.__data_);
        }
      }

      CA::DSP::Graph::LoadStripWithResourcePath(buf);
      if ((buf[0].__r_.__value_.__s.__data_[8] & 1) == 0)
      {
        v197 = get_adm_log_object();
        if (os_log_type_enabled(v197, OS_LOG_TYPE_ERROR))
        {
          LODWORD(v268) = 138412290;
          *(&v268 + 4) = buf[0].__r_.__value_.__r.__words[0];
          _os_log_error_impl(&dword_223B4A000, v197, OS_LOG_TYPE_ERROR, "failed to set property strip on DSP graph: %@", &v268, 0xCu);
        }

        v199 = __cxa_allocate_exception(0x20uLL);
        __cxa_throw(v199, MEMORY[0x277D82718], MEMORY[0x277D82650]);
      }
    }

    else if (os_log_type_enabled(v157, OS_LOG_TYPE_ERROR))
    {
      adm::dsp::GraphAsset<applesauce::CF::DictionaryRef>::str(buf, v155);
      v160 = (buf[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? buf : buf[0].__r_.__value_.__r.__words[0];
      LODWORD(v268) = 136315138;
      *(&v268 + 4) = v160;
      _os_log_error_impl(&dword_223B4A000, v158, OS_LOG_TYPE_ERROR, "failed to load %s", &v268, 0xCu);
      if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf[0].__r_.__value_.__l.__data_);
      }
    }

    if (theArray)
    {
      CFRelease(theArray);
    }
  }

  if (v150)
  {
    CFRelease(v150);
  }

  CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&v237);
  v236 = v250;
  if (v250)
  {
    CFRetain(v250);
  }

  v162 = *(v229 + 112);
  v161 = *(v229 + 120);
  if (v162 != v161)
  {
    v163 = *MEMORY[0x277CBED08];
    do
    {
      adm::dsp::GraphAsset<applesauce::CF::DictionaryRef>::load(&v267, v162);
      v164 = v267;
      v165 = get_adm_log_object();
      v166 = v165;
      if (v164)
      {
        if (os_log_type_enabled(v165, OS_LOG_TYPE_DEFAULT))
        {
          adm::dsp::GraphAsset<applesauce::CF::DictionaryRef>::str(buf, v162);
          v167 = (buf[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? buf : buf[0].__r_.__value_.__r.__words[0];
          LODWORD(v268) = 136315138;
          *(&v268 + 4) = v167;
          _os_log_impl(&dword_223B4A000, v166, OS_LOG_TYPE_DEFAULT, "setting %s", &v268, 0xCu);
          if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf[0].__r_.__value_.__l.__data_);
          }
        }

        *&__p = 0;
        Strip = CADSPGraphLoadStrip();
        v169 = __p;
        if (!Strip && !__p)
        {
          v169 = CADSPErrorCreate();
          *&__p = v169;
        }

        theArray = v169;
        if (v169)
        {
          v170 = 0;
          theArray = 0;
          buf[0].__r_.__value_.__r.__words[0] = v169;
        }

        else
        {
          v170 = 1;
        }

        buf[0].__r_.__value_.__s.__data_[8] = v170;
        CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&theArray);
        v171 = buf[0].__r_.__value_.__s.__data_[8];
        if ((buf[0].__r_.__value_.__s.__data_[8] & 1) == 0)
        {
          v200 = buf[0].__r_.__value_.__r.__words[0];
          buf[0].__r_.__value_.__r.__words[0] = 0;
          *&__p = 0;
          *&v268 = v200;
          CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&__p);
          BYTE8(v268) = v171;
          if ((buf[0].__r_.__value_.__s.__data_[8] & 1) == 0)
          {
            CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&buf[0].__r_.__value_.__l.__data_);
          }

          v201 = get_adm_log_object();
          if (os_log_type_enabled(v201, OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf[0].__r_.__value_.__l.__data_) = 138412290;
            *(buf[0].__r_.__value_.__r.__words + 4) = v200;
            _os_log_error_impl(&dword_223B4A000, v201, OS_LOG_TYPE_ERROR, "failed to set AU strip on DSP graph: %@", buf, 0xCu);
          }

          v202 = __cxa_allocate_exception(0x20uLL);
          __cxa_throw(v202, MEMORY[0x277D82718], MEMORY[0x277D82650]);
        }
      }

      else if (os_log_type_enabled(v165, OS_LOG_TYPE_ERROR))
      {
        adm::dsp::GraphAsset<applesauce::CF::DictionaryRef>::str(buf, v162);
        v172 = (buf[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? buf : buf[0].__r_.__value_.__r.__words[0];
        LODWORD(v268) = 136315138;
        *(&v268 + 4) = v172;
        _os_log_error_impl(&dword_223B4A000, v166, OS_LOG_TYPE_ERROR, "failed to load %s", &v268, 0xCu);
        if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf[0].__r_.__value_.__l.__data_);
        }
      }

      if (v267)
      {
        CFRelease(v267);
      }

      v162 += 32;
    }

    while (v162 != v161);
  }

  CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&v236);
  v235 = v250;
  if (v250)
  {
    CFRetain(v250);
  }

  v173 = 0;
  *&__p = 0;
  if (*(v229 + 72) == 1)
  {
    if (*(v229 + 71) < 0)
    {
      std::string::__init_copy_ctor_external(buf, *(v229 + 48), *(v229 + 56));
    }

    else
    {
      buf[0] = *(v229 + 48);
    }

    v174 = HIBYTE(buf[0].__r_.__value_.__r.__words[2]);
    if ((buf[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v175 = buf;
    }

    else
    {
      v175 = buf[0].__r_.__value_.__r.__words[0];
    }

    if (v175)
    {
      if ((buf[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v176 = HIBYTE(buf[0].__r_.__value_.__r.__words[2]);
      }

      else
      {
        v176 = buf[0].__r_.__value_.__l.__size_;
      }

      v173 = CFStringCreateWithBytes(0, v175, v176, 0x8000100u, 0);
      *&v268 = v173;
      if (!v173)
      {
        v220 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v220, "Could not construct");
        __cxa_throw(v220, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v174 = HIBYTE(buf[0].__r_.__value_.__r.__words[2]);
    }

    else
    {
      v173 = 0;
    }

    *&__p = v173;
    if (v174 < 0)
    {
      operator delete(buf[0].__r_.__value_.__l.__data_);
    }
  }

  v178 = *(v229 + 160);
  for (m = *(v229 + 168); v178 != m; v178 += 32)
  {
    adm::dsp::GraphAsset<applesauce::CF::DictionaryRef>::load(&theArray, v178);
    v179 = theArray;
    v180 = get_adm_log_object();
    v181 = v180;
    if (v179)
    {
      if (os_log_type_enabled(v180, OS_LOG_TYPE_DEFAULT))
      {
        adm::dsp::GraphAsset<applesauce::CF::DictionaryRef>::str(buf, v178);
        v182 = (buf[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? buf : buf[0].__r_.__value_.__r.__words[0];
        LODWORD(v268) = 136315138;
        *(&v268 + 4) = v182;
        _os_log_impl(&dword_223B4A000, v181, OS_LOG_TYPE_DEFAULT, "setting %s", &v268, 0xCu);
        if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf[0].__r_.__value_.__l.__data_);
        }
      }

      CA::DSP::Graph::LoadStripWithResourcePath(buf);
      if ((buf[0].__r_.__value_.__s.__data_[8] & 1) == 0)
      {
        v203 = get_adm_log_object();
        if (os_log_type_enabled(v203, OS_LOG_TYPE_ERROR))
        {
          LODWORD(v268) = 138412290;
          *(&v268 + 4) = buf[0].__r_.__value_.__r.__words[0];
          _os_log_error_impl(&dword_223B4A000, v203, OS_LOG_TYPE_ERROR, "failed to set property strip override on DSP graph: %@", &v268, 0xCu);
        }

        v205 = __cxa_allocate_exception(0x20uLL);
        __cxa_throw(v205, MEMORY[0x277D82718], MEMORY[0x277D82650]);
      }
    }

    else if (os_log_type_enabled(v180, OS_LOG_TYPE_ERROR))
    {
      adm::dsp::GraphAsset<applesauce::CF::DictionaryRef>::str(buf, v178);
      v183 = (buf[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? buf : buf[0].__r_.__value_.__r.__words[0];
      LODWORD(v268) = 136315138;
      *(&v268 + 4) = v183;
      _os_log_error_impl(&dword_223B4A000, v181, OS_LOG_TYPE_ERROR, "failed to load %s", &v268, 0xCu);
      if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf[0].__r_.__value_.__l.__data_);
      }
    }

    if (theArray)
    {
      CFRelease(theArray);
    }
  }

  if (v173)
  {
    CFRelease(v173);
  }

  CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&v235);
  v234 = v250;
  if (v250)
  {
    CFRetain(v250);
  }

  *&v268 = &v234;
  *(&v268 + 1) = v229;
  buf[0].__r_.__value_.__r.__words[0] = MEMORY[0x277D85DD0];
  buf[0].__r_.__value_.__l.__size_ = 0x40000000;
  buf[0].__r_.__value_.__r.__words[2] = ___ZNK2CA3DSP5Graph19EnumerateParametersIZNK3adm3dsp2v212GraphBuilder20doSetParameterValuesENS0_9ReferenceIS1_EEE3__0EEvOT__block_invoke;
  buf[1].__r_.__value_.__r.__words[0] = &__block_descriptor_tmp_555;
  buf[1].__r_.__value_.__l.__size_ = &v268;
  CADSPGraphEnumerateParameters();
  CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&v234);
  v233 = v250;
  if (v250)
  {
    CFRetain(v250);
  }

  *&v268 = &v233;
  *(&v268 + 1) = v229;
  buf[0].__r_.__value_.__r.__words[0] = MEMORY[0x277D85DD0];
  buf[0].__r_.__value_.__l.__size_ = 0x40000000;
  buf[0].__r_.__value_.__r.__words[2] = ___ZNK2CA3DSP5Graph19EnumeratePropertiesIZNK3adm3dsp2v212GraphBuilder19doSetPropertyValuesENS0_9ReferenceIS1_EEE3__0EEvOT__block_invoke;
  buf[1].__r_.__value_.__r.__words[0] = &__block_descriptor_tmp_28;
  buf[1].__r_.__value_.__l.__size_ = &v268;
  CADSPGraphEnumerateProperties();
  CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&v233);
  v232 = v250;
  if (v250)
  {
    CFRetain(v250);
  }

  *&__p = 0;
  v184 = CADSPGraphInitialize();
  v185 = __p;
  if (!v184 && !__p)
  {
    v192 = *MEMORY[0x277CBED08];
    v185 = CADSPErrorCreate();
    *&__p = v185;
  }

  theArray = v185;
  if (v185)
  {
    v186 = 0;
    theArray = 0;
    buf[0].__r_.__value_.__r.__words[0] = v185;
  }

  else
  {
    v186 = 1;
  }

  buf[0].__r_.__value_.__s.__data_[8] = v186;
  CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&theArray);
  v187 = buf[0].__r_.__value_.__s.__data_[8];
  if ((buf[0].__r_.__value_.__s.__data_[8] & 1) == 0)
  {
    v215 = buf[0].__r_.__value_.__r.__words[0];
    buf[0].__r_.__value_.__r.__words[0] = 0;
    *&__p = 0;
    *&v268 = v215;
    CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&__p);
    BYTE8(v268) = v187;
    if ((buf[0].__r_.__value_.__s.__data_[8] & 1) == 0)
    {
      CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&buf[0].__r_.__value_.__l.__data_);
    }

    v216 = get_adm_log_object();
    if (os_log_type_enabled(v216, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf[0].__r_.__value_.__l.__data_) = 138412290;
      *(buf[0].__r_.__value_.__r.__words + 4) = v215;
      _os_log_error_impl(&dword_223B4A000, v216, OS_LOG_TYPE_ERROR, "failed to initialize DSP graph: %@", buf, 0xCu);
    }

    v217 = __cxa_allocate_exception(0x20uLL);
    __cxa_throw(v217, MEMORY[0x277D82718], MEMORY[0x277D82650]);
  }

  CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&v232);
  v231 = v250;
  if (v250)
  {
    CFRetain(v250);
    if (*(v229 + 188) <= 2u)
    {
      operator new();
    }
  }

  *v223 = 0;
  *(v223 + 16) = 1;
  CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&v231);
  CA::DSP::ReferenceCounted<__CADSPLanguageV1Interpreter *>::~ReferenceCounted(&v248);
  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&cf);
  result = CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&v250);
  v189 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_223BBF47C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

CFStringRef *applesauce::CF::TypeRefPair::TypeRefPair<std::string const&,std::string const&>(CFStringRef *a1, const UInt8 *a2, uint64_t a3)
{
  v5 = *(a2 + 1);
  if (*(a2 + 23) >= 0)
  {
    v6 = a2[23];
  }

  else
  {
    a2 = *a2;
    v6 = v5;
  }

  v7 = CFStringCreateWithBytes(0, a2, v6, 0x8000100u, 0);
  *a1 = v7;
  if (!v7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v8 = *(a3 + 23);
  if (v8 >= 0)
  {
    v9 = a3;
  }

  else
  {
    v9 = *a3;
  }

  if (v8 >= 0)
  {
    v10 = *(a3 + 23);
  }

  else
  {
    v10 = *(a3 + 8);
  }

  v11 = CFStringCreateWithBytes(0, v9, v10, 0x8000100u, 0);
  a1[1] = v11;
  if (!v11)
  {
    v14 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v14, "Could not construct");
    __cxa_throw(v14, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return a1;
}

void sub_223BBFD3C(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

void std::vector<applesauce::CF::TypeRefPair>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    for (i = v1[1]; i != v2; std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::destroy[abi:ne200100]<applesauce::CF::TypeRefPair,void,0>(i))
    {
      i -= 16;
    }

    v1[1] = v2;
    v5 = **a1;

    operator delete(v5);
  }
}

const void **CA::DSP::ReferenceCounted<__CADSPLanguageV1Interpreter *>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **std::expected<CA::DSP::Reference<CA::DSP::Graph>,CA::DSP::Reference<CA::DSP::Error>>::~expected[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    return CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(a1);
  }

  else
  {
    return CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(a1);
  }
}

uint64_t ___ZNK2CA3DSP5Graph19EnumeratePropertiesIZNK3adm3dsp2v212GraphBuilder19doSetPropertyValuesENS0_9ReferenceIS1_EEE3__0EEvOT__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v21 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  CA::DSP::Graph::GetPropertyDirection(&v18, **v3, a2);
  if (LODWORD(v18.__r_.__value_.__l.__data_))
  {
    v5 = 0;
  }

  else
  {
    v5 = v18.__r_.__value_.__s.__data_[8];
  }

  if ((v18.__r_.__value_.__s.__data_[8] & 1) == 0)
  {
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v18.__r_.__value_.__l.__data_);
  }

  if (v5)
  {
    for (i = *(v4 + 216); i != *(v4 + 224); i += 8)
    {
      if (*i == v2)
      {
        adm_log_object = get_adm_log_object();
        if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_DEFAULT))
        {
          v8 = *i;
          v9 = bswap32(*i);
          *&buf[1] = v9;
          if ((v9 - 32) > 0x5E || ((v9 >> 8) - 32) > 0x5E || ((v9 << 8 >> 24) - 32) > 0x5E || ((v9 >> 24) - 32) > 0x5E)
          {
            std::to_string(&v18, v8);
          }

          else
          {
            strcpy(&buf[5], "'");
            buf[0] = 39;
            std::string::basic_string[abi:ne200100]<0>(&v18, buf);
          }

          v10 = &v18;
          if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v10 = v18.__r_.__value_.__r.__words[0];
          }

          *buf = 136315138;
          *&buf[4] = v10;
          _os_log_impl(&dword_223B4A000, adm_log_object, OS_LOG_TYPE_DEFAULT, "setting property %s", buf, 0xCu);
          if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v18.__r_.__value_.__l.__data_);
          }
        }

        v11 = i[4] - *(i + 1);
        CA::DSP::Graph::SetProperty(buf, **v3, *i);
        if ((buf[8] & 1) == 0)
        {
          v12 = get_adm_log_object();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            v15 = *i;
            v16 = bswap32(*i);
            *&v19[1] = v16;
            if ((v16 - 32) > 0x5E || ((v16 >> 8) - 32) > 0x5E || ((v16 << 8 >> 24) - 32) > 0x5E || ((v16 >> 24) - 32) > 0x5E)
            {
              std::to_string(&v18, v15);
            }

            else
            {
              strcpy(&v19[5], "'");
              v19[0] = 39;
              std::string::basic_string[abi:ne200100]<0>(&v18, v19);
            }

            v17 = &v18;
            if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v17 = v18.__r_.__value_.__r.__words[0];
            }

            *v19 = 136315138;
            *&v19[4] = v17;
            _os_log_error_impl(&dword_223B4A000, v12, OS_LOG_TYPE_ERROR, "failed to set property %s", v19, 0xCu);
            if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v18.__r_.__value_.__l.__data_);
            }
          }

          CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(buf);
        }

        break;
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_223BC014C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t ___ZNK2CA3DSP5Graph19EnumerateParametersIZNK3adm3dsp2v212GraphBuilder20doSetParameterValuesENS0_9ReferenceIS1_EEE3__0EEvOT__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v23 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = v3[1];
  CA::DSP::Graph::GetParameterDirection(&v19, **v3, a2);
  if (LODWORD(v19.__r_.__value_.__l.__data_))
  {
    v5 = 0;
  }

  else
  {
    v5 = v19.__r_.__value_.__s.__data_[8];
  }

  if ((v19.__r_.__value_.__s.__data_[8] & 1) == 0)
  {
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v19.__r_.__value_.__l.__data_);
  }

  if (v5)
  {
    for (i = v4[24]; i != v4[25]; i += 8)
    {
      if (*i == v2)
      {
        v7 = *(i + 4);
        adm_log_object = get_adm_log_object();
        if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_DEFAULT))
        {
          v9 = bswap32(v2);
          *&buf[1] = v9;
          if ((v9 - 32) > 0x5E || ((v9 >> 8) - 32) > 0x5E || ((v9 << 8 >> 24) - 32) > 0x5E || ((v9 >> 24) - 32) > 0x5E)
          {
            std::to_string(&v19, v2);
          }

          else
          {
            strcpy(&buf[5], "'");
            buf[0] = 39;
            std::string::basic_string[abi:ne200100]<0>(&v19, buf);
          }

          v10 = &v19;
          if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v10 = v19.__r_.__value_.__r.__words[0];
          }

          *buf = 136315394;
          *&buf[4] = v10;
          v21 = 2048;
          v22 = v7;
          _os_log_impl(&dword_223B4A000, adm_log_object, OS_LOG_TYPE_DEFAULT, "setting parameter %s to %f", buf, 0x16u);
          if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v19.__r_.__value_.__l.__data_);
          }
        }

        v11 = **v3;
        CA::DSP::Graph::SetParameter(&v17, v7);
        if ((v18 & 1) == 0)
        {
          v12 = get_adm_log_object();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            v15 = bswap32(v2);
            *&buf[1] = v15;
            if ((v15 - 32) > 0x5E || ((v15 >> 8) - 32) > 0x5E || ((v15 << 8 >> 24) - 32) > 0x5E || ((v15 >> 24) - 32) > 0x5E)
            {
              std::to_string(&v19, v2);
            }

            else
            {
              strcpy(&buf[5], "'");
              buf[0] = 39;
              std::string::basic_string[abi:ne200100]<0>(&v19, buf);
            }

            v16 = &v19;
            if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v16 = v19.__r_.__value_.__r.__words[0];
            }

            *buf = 136315394;
            *&buf[4] = v16;
            v21 = 2048;
            v22 = v7;
            _os_log_error_impl(&dword_223B4A000, v12, OS_LOG_TYPE_ERROR, "failed to set parameter %s to %f", buf, 0x16u);
            if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v19.__r_.__value_.__l.__data_);
            }
          }

          CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v17);
        }

        break;
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_223BC0424(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t adm::dsp::GraphAsset<applesauce::CF::DictionaryRef>::load(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v5 = &v4;
  return (off_28371B8E8[v2])(&v5);
}

uint64_t adm::dsp::GraphAsset<applesauce::CF::DictionaryRef>::str(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v5 = &v4;
  return (*(&off_28371B8F8 + v2))(&v5);
}

const void **CA::DSP::Graph::LoadStripWithResourcePath(uint64_t a1)
{
  v8 = 0;
  v2 = 0;
  if (!CADSPGraphLoadStripWithResourcePath())
  {
    v4 = *MEMORY[0x277CBED08];
    v2 = CADSPErrorCreate();
    v8 = v2;
  }

  v7 = v2;
  if (v2)
  {
    v7 = 0;
    v6 = 0;
    CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v7);
    v5 = 0;
    v8 = 0;
    *a1 = v2;
    CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v8);
    *(a1 + 8) = 0;
    return CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v5);
  }

  else
  {
    v6 = 1;
    result = CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v7);
    *(a1 + 8) = 1;
  }

  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IONS1_9__variant15__value_visitorIZNK3adm3dsp10GraphAssetIN10applesauce2CF13DictionaryRefEE3strEvEUlOT_E_EEJRKNS0_6__baseILNS0_6_TraitE1EJSD_NS_4__fs10filesystem4pathEEEEEEEDcSF_DpT0_(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = *a1;
  }

  caulk::make_string("%s", a2, v2);
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IONS1_9__variant15__value_visitorIZNK3adm3dsp10GraphAssetIN10applesauce2CF13DictionaryRefEE3strEvEUlOT_E_EEJRKNS0_6__baseILNS0_6_TraitE1EJSD_NS_4__fs10filesystem4pathEEEEEEEDcSF_DpT0_(CFDictionaryRef *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    Count = CFDictionaryGetCount(*a1);
    caulk::make_string("[dictionary at %p, size %lu]", a2, v3, Count);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(a2, "(null)");
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IONS1_9__variant15__value_visitorIZNK3adm3dsp10GraphAssetIN10applesauce2CF13DictionaryRefEE4loadEvEUlOT_E_EEJRKNS0_6__baseILNS0_6_TraitE1EJSD_NS_4__fs10filesystem4pathEEEEEEEDcSF_DpT0_(char *a1@<X1>, applesauce::CF *a2@<X8>)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, a1);
  applesauce::CF::make_DataRef(&cf, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  applesauce::CF::make_DictionaryRef(a2, cf);
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_223BC0728(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  applesauce::CF::DataRef::~DataRef(&a9);
  __cxa_begin_catch(a1);
  *v15 = 0;
  __cxa_end_catch();
  JUMPOUT(0x223BC0714);
}

uint64_t applesauce::CF::make_DataRef(CFDataRef *a1, uint64_t a2)
{
  v13[4] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  v4 = fopen(v3, "rb");
  v11[0] = &unk_28371CAC0;
  v11[1] = MEMORY[0x277D85E28];
  v11[3] = v11;
  __stream = v4;
  v13[3] = v13;
  std::__function::__func<int (*)(__sFILE *),std::allocator<int (*)(__sFILE *)>,int ()(__sFILE *)>::__clone(v11, v13);
  std::__function::__value_func<int ()(__sFILE *)>::~__value_func[abi:ne200100](v11);
  if (!__stream)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  fseek(__stream, 0, 2);
  v5 = MEMORY[0x223DF46B0](__stream);
  if (v5)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
  }

  fseek(__stream, 0, 0);
  fread(0, 1uLL, 0, __stream);
  v6 = CFDataCreate(0, 0, 0);
  *a1 = v6;
  if (!v6)
  {
    v10 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v10, "Could not construct");
    __cxa_throw(v10, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  std::unique_ptr<__sFILE,std::function<int ()(__sFILE*)>>::reset[abi:ne200100](&__stream);
  result = std::__function::__value_func<int ()(__sFILE *)>::~__value_func[abi:ne200100](v13);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_223BC0974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  applesauce::CF::ObjectRef<__CFData const*>::~ObjectRef(v6);
  if (v7)
  {
    operator delete(v7);
  }

  std::unique_ptr<__sFILE,std::function<int ()(__sFILE*)>>::reset[abi:ne200100](va);
  std::__function::__value_func<int ()(__sFILE *)>::~__value_func[abi:ne200100](v5);
  _Unwind_Resume(a1);
}

CFTypeID applesauce::CF::make_DictionaryRef(applesauce::CF *this, const applesauce::CF::DataRef *a2)
{
  if (!a2)
  {
    goto LABEL_10;
  }

  v3 = CFPropertyListCreateWithData(0, a2, 0, 0, 0);
  if (!v3)
  {
    result = CFDictionaryGetTypeID();
    if (!result)
    {
      *this = 0;
      return result;
    }

LABEL_10:
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v4 = v3;
  v5 = CFGetTypeID(v3);
  if (v5 != CFDictionaryGetTypeID())
  {
    CFRelease(v4);
    goto LABEL_10;
  }

  *this = v4;
  v6 = CFGetTypeID(v4);
  result = CFDictionaryGetTypeID();
  if (v6 != result)
  {
    v8 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v8, "Could not construct");
    __cxa_throw(v8, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

void sub_223BC0AD0(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<int ()(__sFILE *)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t *std::unique_ptr<__sFILE,std::function<int ()(__sFILE*)>>::reset[abi:ne200100](uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v3 = v1;
    v2 = result[4];
    if (!v2)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    return (*(*v2 + 48))(v2, &v3);
  }

  return result;
}

void std::vector<unsigned char>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__function::__func<int (*)(__sFILE *),std::allocator<int (*)(__sFILE *)>,int ()(__sFILE *)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "PFiP7__sFILEE"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<int (*)(__sFILE *),std::allocator<int (*)(__sFILE *)>,int ()(__sFILE *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28371CAC0;
  a2[1] = v2;
  return result;
}

CFTypeRef _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IONS1_9__variant15__value_visitorIZNK3adm3dsp10GraphAssetIN10applesauce2CF13DictionaryRefEE4loadEvEUlOT_E_EEJRKNS0_6__baseILNS0_6_TraitE1EJSD_NS_4__fs10filesystem4pathEEEEEEEDcSF_DpT0_@<X0>(CFTypeRef *a1@<X1>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    result = CFRetain(*a1);
  }

  *a2 = v3;
  return result;
}

const void **CA::DSP::ReferenceCounted<__CADSPRecorderTapPointModel *>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **CA::DSP::ReferenceCounted<__CFString *>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

FILE *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IONS1_9__variant15__value_visitorIZNK3adm3dsp10GraphAssetIN10applesauce2CF9StringRefEE4loadEvEUlOT_E_EEJRKNS0_6__baseILNS0_6_TraitE1EJSD_NS_4__fs10filesystem4pathEEEEEEEDcSF_DpT0_@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  result = fopen(v3, "rb");
  v5 = result;
  if (result)
  {
    fseek(result, 0, 2);
    MEMORY[0x223DF46B0](v5);
    operator new[]();
  }

  *a2 = 0;
  return result;
}

void sub_223BC0F7C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  fclose(v17);
  __cxa_begin_catch(a1);
  *v16 = 0;

  __cxa_end_catch();
}

CFTypeRef _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IONS1_9__variant15__value_visitorIZNK3adm3dsp10GraphAssetIN10applesauce2CF9StringRefEE4loadEvEUlOT_E_EEJRKNS0_6__baseILNS0_6_TraitE1EJSD_NS_4__fs10filesystem4pathEEEEEEEDcSF_DpT0_@<X0>(CFTypeRef *a1@<X1>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    result = CFRetain(*a1);
  }

  *a2 = v3;
  return result;
}

void std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::destroy[abi:ne200100]<applesauce::CF::TypeRefPair,void,0>(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }
}

void std::allocator<applesauce::CF::TypeRefPair>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<applesauce::CF::TypeRefPair>,applesauce::CF::TypeRefPair*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      *v6 = 0;
      a4[1] = v6[1];
      v6[1] = 0;
      v6 += 2;
      a4 += 2;
    }

    while (v6 != a3);
    do
    {
      std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::destroy[abi:ne200100]<applesauce::CF::TypeRefPair,void,0>(v5);
      v5 += 16;
    }

    while (v5 != a3);
  }
}

uint64_t std::__split_buffer<applesauce::CF::TypeRefPair>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    *(a1 + 16) = v3 - 16;
    std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::destroy[abi:ne200100]<applesauce::CF::TypeRefPair,void,0>(v3 - 16);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void adm::dsp::v2::GraphBuilder::~GraphBuilder(adm::dsp::v2::GraphBuilder *this)
{
  adm::dsp::GraphBuilder::~GraphBuilder(this);

  JUMPOUT(0x223DF43A0);
}

void adm::dsp::GraphBuilder::~GraphBuilder(adm::dsp::GraphBuilder *this)
{
  *this = &unk_28371B8C0;
  v2 = *(this + 27);
  if (v2)
  {
    v3 = *(this + 28);
    v4 = *(this + 27);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 24);
        if (v5)
        {
          *(v3 - 16) = v5;
          operator delete(v5);
        }

        v3 -= 32;
      }

      while (v3 != v2);
      v4 = *(this + 27);
    }

    *(this + 28) = v2;
    operator delete(v4);
  }

  v6 = *(this + 24);
  if (v6)
  {
    *(this + 25) = v6;
    operator delete(v6);
  }

  v8 = (this + 160);
  std::vector<adm::dsp::GraphAsset<applesauce::CF::DictionaryRef>>::__destroy_vector::operator()[abi:ne200100](&v8);
  v8 = (this + 136);
  std::vector<adm::dsp::GraphAsset<applesauce::CF::DictionaryRef>>::__destroy_vector::operator()[abi:ne200100](&v8);
  v8 = (this + 112);
  std::vector<adm::dsp::GraphAsset<applesauce::CF::DictionaryRef>>::__destroy_vector::operator()[abi:ne200100](&v8);
  if (*(this + 104) == 1 && *(this + 103) < 0)
  {
    operator delete(*(this + 10));
  }

  if (*(this + 72) == 1 && *(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  std::__variant_detail::__dtor<std::__variant_detail::__traits<applesauce::CF::StringRef,std::__fs::filesystem::path>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](this + 16);
  v7 = *(this + 1);
  if (v7)
  {
    CFRelease(v7);
  }
}

void std::vector<adm::dsp::GraphAsset<applesauce::CF::DictionaryRef>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 32;
        std::__variant_detail::__dtor<std::__variant_detail::__traits<applesauce::CF::DictionaryRef,std::__fs::filesystem::path>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void adm::graph::GraphBuilder::buildGraph(adm::graph::GraphBuilder *this, const adm::ConfigurationChangeRequest *a2, uint64_t a3)
{
  v121 = *MEMORY[0x277D85DE8];
  if (adm::config_policy::isExclaveUseCase(a3 + 8))
  {
    if (*(a2 + 287) >= 0)
    {
      v6 = *(a2 + 287);
    }

    else
    {
      v6 = *(a2 + 34);
    }

    std::string::basic_string[abi:ne200100](&v102, v6 + 1);
    if ((v102.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &v102;
    }

    else
    {
      v7 = v102.__r_.__value_.__r.__words[0];
    }

    if (v6)
    {
      if (*(a2 + 287) >= 0)
      {
        v8 = a2 + 264;
      }

      else
      {
        v8 = *(a2 + 33);
      }

      memmove(v7, v8, v6);
    }

    *(&v7->__r_.__value_.__l.__data_ + v6) = 95;
    v9 = *(a2 + 311);
    if (v9 >= 0)
    {
      v10 = a2 + 288;
    }

    else
    {
      v10 = *(a2 + 36);
    }

    if (v9 >= 0)
    {
      v11 = *(a2 + 311);
    }

    else
    {
      v11 = *(a2 + 37);
    }

    v12 = std::string::append(&v102, v10, v11);
    v13 = *&v12->__r_.__value_.__l.__data_;
    *&v117[16] = *(&v12->__r_.__value_.__l + 2);
    *v117 = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    v14 = std::string::append(v117, "_", 1uLL);
    v15 = *&v14->__r_.__value_.__l.__data_;
    v108.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v108.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v18 = std::string::append(&v108, p_p, size);
    v19 = v18->__r_.__value_.__l.__size_;
    __s = v18->__r_.__value_.__r.__words[0];
    v107[0] = v18->__r_.__value_.__r.__words[2];
    *(v107 + 3) = *(&v18->__r_.__value_.__r.__words[2] + 3);
    v20 = SHIBYTE(v18->__r_.__value_.__r.__words[2]);
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v108.__r_.__value_.__l.__data_);
    }

    if ((v117[23] & 0x80000000) != 0)
    {
      operator delete(*v117);
    }

    if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v102.__r_.__value_.__l.__data_);
      if ((v20 & 0x80000000) == 0)
      {
        goto LABEL_33;
      }
    }

    else if ((v20 & 0x80000000) == 0)
    {
LABEL_33:
      v102.__r_.__value_.__r.__words[0] = __s;
      v102.__r_.__value_.__l.__size_ = v19;
      LODWORD(v102.__r_.__value_.__r.__words[2]) = v107[0];
      *(&v102.__r_.__value_.__r.__words[2] + 3) = *(v107 + 3);
      *(&v102.__r_.__value_.__s + 23) = v20;
      goto LABEL_42;
    }

    std::string::__init_copy_ctor_external(&v102, __s, v19);
LABEL_42:
    if (*(a3 + 164))
    {
      v22 = *(a3 + 160);
    }

    else
    {
      v22 = 1024;
    }

    LODWORD(v103) = 1;
    HIDWORD(v103) = v22;
    std::string::basic_string[abi:ne200100]<0>(&v104, "");
    memset(&__p, 0, sizeof(__p));
    adm::config_policy::getActiveStreamInfo(&v100, a3);
    v88 = a2;
    v89 = this;
    v24 = v100;
    v23 = v101;
    v96 = a3;
    v90 = v100;
    if (v100 != v101)
    {
      v25 = 0;
      v94 = 0;
      v26 = 0;
      v27 = 0;
      v93 = 0;
      while (1)
      {
        std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&v108, v24[1] + 32, "general");
        if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
        {
          if (v108.__r_.__value_.__l.__size_ == 7)
          {
            v30 = *v108.__r_.__value_.__l.__data_ != 1701733735 || *(v108.__r_.__value_.__r.__words[0] + 3) != 1818325605;
            operator delete(v108.__r_.__value_.__l.__data_);
            if (!v30)
            {
LABEL_63:
              v118.__r_.__value_.__r.__words[0] = 0;
              memset(v117, 0, sizeof(v117));
              v31 = *(v24 + 16);
              v32 = v24[1] + 64;
              if (*(v24 + 16))
              {
                v33 = *(v24[1] + 80);
                *v117 = *v32;
                *&v117[16] = v33;
                v118.__r_.__value_.__r.__words[0] = *(v32 + 32);
                if (*(a3 + 72))
                {
                  v32 = a3 + 32;
                }
              }

              else
              {
                v40 = a3 + 80;
                if (!*(a3 + 120))
                {
                  v40 = v24[1] + 64;
                }

                v41 = *(v40 + 16);
                *v117 = *v40;
                *&v117[16] = v41;
                v118.__r_.__value_.__r.__words[0] = *(v40 + 32);
              }

              v42 = *(v32 + 16);
              *&v118.__r_.__value_.__r.__words[1] = *v32;
              v119 = v42;
              v120 = *(v32 + 32);
              if (v27)
              {
                if ((v20 & 0x80000000) == 0)
                {
                  goto LABEL_87;
                }

LABEL_101:
                std::string::__init_copy_ctor_external(&v108, __s, v19);
              }

              else
              {
                v43 = *v24;
                v44 = v31 == 0;
                if (!v31)
                {
                  v26 = *v24;
                }

                v45 = v93;
                if (!v44)
                {
                  v45 = *v24;
                }

                v93 = v45;
                if (v20 < 0)
                {
                  std::string::__init_copy_ctor_external(&v108, __s, v19);
                }

                else
                {
                  v108.__r_.__value_.__r.__words[0] = __s;
                  v108.__r_.__value_.__l.__size_ = v19;
                  LODWORD(v108.__r_.__value_.__r.__words[2]) = v107[0];
                  *(&v108.__r_.__value_.__r.__words[2] + 3) = *(v107 + 3);
                  *(&v108.__r_.__value_.__s + 23) = v20;
                }

                LODWORD(v109) = 1;
                v110 = *&v118.__r_.__value_.__r.__words[1];
                *v111 = v119;
                *&v111[16] = v120;
                *&v111[24] = 0;
                *v112 = v94;
                *&v112[4] = 1;
                v112[16] = 0;
                v113.__r_.__value_.__s.__data_[8] = 0;
                v113.__r_.__value_.__s.__data_[16] = 0;
                std::vector<adm::graph::TerminalDescription>::push_back[abi:ne200100](&__p, &v108);
                if (v113.__r_.__value_.__s.__data_[8] == 1 && v113.__r_.__value_.__s.__data_[7] < 0)
                {
                  operator delete(*&v112[16]);
                }

                if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v108.__r_.__value_.__l.__data_);
                }

                ++v94;
                if (v20 < 0)
                {
                  goto LABEL_101;
                }

LABEL_87:
                v108.__r_.__value_.__r.__words[0] = __s;
                v108.__r_.__value_.__l.__size_ = v19;
                LODWORD(v108.__r_.__value_.__r.__words[2]) = v107[0];
                *(&v108.__r_.__value_.__r.__words[2] + 3) = *(v107 + 3);
                *(&v108.__r_.__value_.__s + 23) = v20;
              }

              LODWORD(v109) = 0;
              v110 = *v117;
              *v111 = *&v117[16];
              *&v111[16] = v118.__r_.__value_.__r.__words[0];
              *&v111[24] = 0;
              *v112 = v25;
              *&v112[4] = 1;
              v112[16] = 0;
              v113.__r_.__value_.__s.__data_[8] = 0;
              v113.__r_.__value_.__s.__data_[16] = 0;
              std::vector<adm::graph::TerminalDescription>::push_back[abi:ne200100](&__p, &v108);
              if (v113.__r_.__value_.__s.__data_[8] == 1 && v113.__r_.__value_.__s.__data_[7] < 0)
              {
                operator delete(*&v112[16]);
              }

              if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v108.__r_.__value_.__l.__data_);
              }

              ++v27;
              goto LABEL_108;
            }
          }

          else
          {
            operator delete(v108.__r_.__value_.__l.__data_);
          }
        }

        else if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) == 7 && LODWORD(v108.__r_.__value_.__l.__data_) == 1701733735 && *(v108.__r_.__value_.__r.__words + 3) == 1818325605)
        {
          goto LABEL_63;
        }

        if (std::operator==[abi:ne200100]<std::string,char [10]>(v24[1] + 32, "reference"))
        {
          v26 = *v24;
          if (v20 < 0)
          {
            std::string::__init_copy_ctor_external(&v108, __s, v19);
          }

          else
          {
            v108.__r_.__value_.__r.__words[0] = __s;
            v108.__r_.__value_.__l.__size_ = v19;
            LODWORD(v108.__r_.__value_.__r.__words[2]) = v107[0];
            *(&v108.__r_.__value_.__r.__words[2] + 3) = *(v107 + 3);
            *(&v108.__r_.__value_.__s + 23) = v20;
          }

          LODWORD(v109) = 0;
          v34 = v24[1];
          v36 = *(v34 + 64);
          v35 = *(v34 + 80);
          *&v111[16] = *(v34 + 96);
          v110 = v36;
          *v111 = v35;
          *v117 = 1;
          adm::graph::SemanticSet::SemanticSet(&v111[24], v117, 1);
          *v112 = v25;
          *&v112[4] = 1;
          v112[16] = 0;
          v113.__r_.__value_.__s.__data_[8] = 0;
          v113.__r_.__value_.__s.__data_[16] = 0;
          std::vector<adm::graph::TerminalDescription>::push_back[abi:ne200100](&__p, &v108);
        }

        else
        {
          if (v20 < 0)
          {
            std::string::__init_copy_ctor_external(&v108, __s, v19);
          }

          else
          {
            v108.__r_.__value_.__r.__words[0] = __s;
            v108.__r_.__value_.__l.__size_ = v19;
            LODWORD(v108.__r_.__value_.__r.__words[2]) = v107[0];
            *(&v108.__r_.__value_.__r.__words[2] + 3) = *(v107 + 3);
            *(&v108.__r_.__value_.__s + 23) = v20;
          }

          LODWORD(v109) = 0;
          v37 = v24[1];
          v39 = *(v37 + 64);
          v38 = *(v37 + 80);
          *&v111[16] = *(v37 + 96);
          v110 = v39;
          *v111 = v38;
          *v117 = 2;
          adm::graph::SemanticSet::SemanticSet(&v111[24], v117, 1);
          *v112 = v25;
          *&v112[4] = 1;
          v112[16] = 0;
          v113.__r_.__value_.__s.__data_[8] = 0;
          v113.__r_.__value_.__s.__data_[16] = 0;
          std::vector<adm::graph::TerminalDescription>::push_back[abi:ne200100](&__p, &v108);
        }

        if (v113.__r_.__value_.__s.__data_[8] == 1 && v113.__r_.__value_.__s.__data_[7] < 0)
        {
          operator delete(*&v112[16]);
        }

        if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v108.__r_.__value_.__l.__data_);
        }

LABEL_108:
        ++v25;
        v24 += 3;
        if (v24 == v23)
        {
          goto LABEL_111;
        }
      }
    }

    v26 = 0;
    v93 = 0;
LABEL_111:
    std::string::basic_string[abi:ne200100]<0>(&v108, "isolated audio siri");
    v46 = a3;
    v47 = v26;
    v48 = std::__tree<std::string>::find<std::string>(a3 + 8, &v108);
    if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v108.__r_.__value_.__l.__data_);
    }

    if (a3 + 16 != v48)
    {
      v49 = 0;
      v50 = 1;
      goto LABEL_150;
    }

    std::string::basic_string[abi:ne200100]<0>(&v108, "isolated audio muted talker detection");
    v51 = std::__tree<std::string>::find<std::string>(a3 + 8, &v108);
    if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v108.__r_.__value_.__l.__data_);
    }

    if (v48 == v51)
    {
      std::string::basic_string[abi:ne200100]<0>(&v108, "isolated audio sound analysis");
      v52 = std::__tree<std::string>::find<std::string>(v96 + 8, &v108);
      if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v108.__r_.__value_.__l.__data_);
      }

      if (v48 == v52)
      {
        std::string::basic_string[abi:ne200100]<0>(&v108, "isolated audio perception");
        v53 = std::__tree<std::string>::find<std::string>(v96 + 8, &v108);
        if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v108.__r_.__value_.__l.__data_);
        }

        if (v48 == v53)
        {
          std::string::basic_string[abi:ne200100]<0>(&v108, "isolated audio shared DSP");
          v54 = std::__tree<std::string>::find<std::string>(v96 + 8, &v108);
          if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v108.__r_.__value_.__l.__data_);
          }

          if (v48 == v54)
          {
            std::string::basic_string[abi:ne200100]<0>(&v108, "isolated audio historical audio");
            v55 = std::__tree<std::string>::find<std::string>(v96 + 8, &v108);
            if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v108.__r_.__value_.__l.__data_);
            }

            if (v48 == v55)
            {
              std::string::basic_string[abi:ne200100]<0>(&v108, "isolated audio audio pairing");
              v56 = std::__tree<std::string>::find<std::string>(v96 + 8, &v108);
              if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v108.__r_.__value_.__l.__data_);
              }

              if (v48 == v56)
              {
                adm_log_object = get_adm_log_object();
                v46 = v96;
                if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_ERROR))
                {
                  LOWORD(v108.__r_.__value_.__l.__data_) = 0;
                  _os_log_error_impl(&dword_223B4A000, adm_log_object, OS_LOG_TYPE_ERROR, "unsupported configuration: useCase", &v108, 2u);
                }

                v50 = 0;
                v49 = 1;
LABEL_150:
                v63 = adm::config_policy::exclaveUseCaseRequiresRefStream(v46 + 8);
                v64 = 1886216704;
                if (v93)
                {
                  {
                    v65 = 0x100000000;
                    v64 = 1886216809;
                    goto LABEL_158;
                  }

                  v66 = get_adm_log_object();
                  if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
                  {
                    LOWORD(v108.__r_.__value_.__l.__data_) = 0;
                    _os_log_error_impl(&dword_223B4A000, v66, OS_LOG_TYPE_ERROR, "unsupported configuration: inputPort", &v108, 2u);
                  }
                }

                v65 = 0;
LABEL_158:
                v95 = v63;
                v97 = v50;
                v91 = v65;
                v92 = v64;
                if (!v26)
                {
LABEL_184:
                  v69 = 0;
                  v71 = 0;
                  v70 = 0;
                  v68 = 1;
LABEL_185:
                  v74 = v70 | v71;
                  if (!v47)
                  {
                    goto LABEL_212;
                  }

                  if (v68)
                  {
                    goto LABEL_212;
                  }

                  v76 = get_adm_log_object();
                  if (!os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_212;
                  }

                  v77 = v47;
                  if (*(v47 + 23) < 0)
                  {
                    v77 = *v47;
                  }

                  v78 = (v47 + 24);
                  if (*(v47 + 47) < 0)
                  {
                    v78 = *v78;
                  }

                  v79 = *(v47 + 64);
                  v80 = bswap32(v79);
                  *(&v108.__r_.__value_.__l.__data_ + 1) = v80;
                  if ((v80 - 32) > 0x5E || ((v80 >> 8) - 32) > 0x5E || ((v80 << 8 >> 24) - 32) > 0x5E || ((v80 >> 24) - 32) > 0x5E)
                  {
                    std::to_string(v117, v79);
                  }

                  else
                  {
                    *(v108.__r_.__value_.__r.__words + 5) = 39;
                    v108.__r_.__value_.__s.__data_[0] = 39;
                    std::string::basic_string[abi:ne200100]<0>(v117, &v108);
                  }

                  if (v117[23] >= 0)
                  {
                    v81 = v117;
                  }

                  else
                  {
                    v81 = *v117;
                  }

                  v82 = *(v47 + 72);
                  v83 = bswap32(v74);
                  *(&v108.__r_.__value_.__l.__data_ + 1) = v83;
                  if ((v83 & 0x70) - 32 > 0x5E || BYTE1(v83) - 32 > 0x5E || BYTE2(v83) - 32 > 0x5E || HIBYTE(v83) - 32 > 0x5Eu)
                  {
                    std::to_string(&v99, v74);
                  }

                  else
                  {
                    *(v108.__r_.__value_.__r.__words + 5) = 39;
                    v108.__r_.__value_.__s.__data_[0] = 39;
                    std::string::basic_string[abi:ne200100]<0>(&v99, &v108);
                  }

                  v84 = &v99;
                  if ((v99.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    v84 = v99.__r_.__value_.__r.__words[0];
                  }

                  LODWORD(v108.__r_.__value_.__l.__data_) = 136316162;
                  *(v108.__r_.__value_.__r.__words + 4) = v77;
                  WORD2(v108.__r_.__value_.__r.__words[1]) = 2080;
                  *(&v108.__r_.__value_.__r.__words[1] + 6) = v78;
                  HIWORD(v108.__r_.__value_.__r.__words[2]) = 2080;
                  v109 = v81;
                  LOWORD(v110) = 1024;
                  *(&v110 + 2) = v82;
                  WORD3(v110) = 2080;
                  *(&v110 + 1) = v84;
                  _os_log_impl(&dword_223B4A000, v76, OS_LOG_TYPE_DEFAULT, "mapped { deviceUID '%s', modelUID '%s', transportType %s, outputDataSource %d } -> output port type %s", &v108, 0x30u);
                  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v99.__r_.__value_.__l.__data_);
                  }

                  if ((v117[23] & 0x80000000) != 0)
                  {
                    operator delete(*v117);
                    if (v49)
                    {
                      goto LABEL_213;
                    }
                  }

                  else
                  {
LABEL_212:
                    if (v49)
                    {
LABEL_213:
                      v85 = v90;
                      *v89 = 1969448551;
                      *(v89 + 392) = 0;
                      goto LABEL_222;
                    }
                  }

                  v117[0] = v95;
                  *&v117[4] = v97;
                  *&v117[8] = v91 | v92;
                  v117[12] = (v91 | v92) >> 32;
                  *&v117[16] = v74 | v69;
                  v117[20] = (v74 | v69) >> 32;
                  *&v117[24] = isHighLatencyRoute;
                  v117[28] = 1;
                  if (*(v88 + 255) < 0)
                  {
                    std::string::__init_copy_ctor_external(&v118, *(v88 + 29), *(v88 + 30));
                  }

                  else
                  {
                    v118 = *(v88 + 232);
                  }

                  LODWORD(v119) = *(v88 + 64);
                  BYTE4(v119) = *(v88 + 260);
                  *&v108.__r_.__value_.__l.__data_ = *&v102.__r_.__value_.__l.__data_;
                  memset(&v102, 0, sizeof(v102));
                  v108.__r_.__value_.__r.__words[2] = v102.__r_.__value_.__r.__words[2];
                  v109 = v103;
                  v110 = v104;
                  v86 = v105;
                  v104 = 0uLL;
                  v105 = 0;
                  *&v111[8] = __p;
                  *v111 = v86;
                  memset(&__p, 0, sizeof(__p));
                  *&v112[13] = *&v117[13];
                  *v112 = *v117;
                  v113 = v118;
                  memset(&v118, 0, sizeof(v118));
                  v115 = BYTE4(v119);
                  v114 = v119;
                  v116 = 2;
                  std::expected<adm::graph::GraphDescription,std::error_code>::expected[abi:ne200100]<adm::graph::GraphDescription>(v89, &v108);
                  std::__variant_detail::__dtor<std::__variant_detail::__traits<adm::graph::DSPGraphConfiguration,adm::vp::Configuration,adm::graph::ExclaveNodeConfiguration>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v112);
                  v99.__r_.__value_.__r.__words[0] = &v111[8];
                  std::vector<adm::graph::TerminalDescription>::__destroy_vector::operator()[abi:ne200100](&v99);
                  v85 = v90;
                  if ((v111[7] & 0x80000000) != 0)
                  {
                    operator delete(v110);
                  }

                  if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v108.__r_.__value_.__l.__data_);
                  }

LABEL_222:
                  if (v85)
                  {
                    operator delete(v85);
                  }

                  v108.__r_.__value_.__r.__words[0] = &__p;
                  std::vector<adm::graph::TerminalDescription>::__destroy_vector::operator()[abi:ne200100](&v108);
                  if (SHIBYTE(v105) < 0)
                  {
                    operator delete(v104);
                  }

                  if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v102.__r_.__value_.__l.__data_);
                    if ((v20 & 0x80000000) == 0)
                    {
                      goto LABEL_228;
                    }
                  }

                  else if ((v20 & 0x80000000) == 0)
                  {
                    goto LABEL_228;
                  }

                  operator delete(__s);
                  goto LABEL_228;
                }

                v67 = *(v26 + 64);
                if (v67 <= 1651275108)
                {
                  if (v67 == 1634300528)
                  {
                    v68 = 0;
                    v69 = 0x100000000;
                    v70 = 1885433856;
                    v71 = 115;
                    goto LABEL_185;
                  }

                  if (v67 != 1651271009)
                  {
                    if (v67 == 1651274862)
                    {
                      v70 = 1886613504;
                      v72 = *(v26 + 72);
                      {
                        v68 = 0;
                        v69 = 0x100000000;
                        v71 = 107;
                        goto LABEL_185;
                      }

                      if (v72 == 1751412846)
                      {
                        v68 = 0;
                        v70 = 1885892608;
                        v69 = 0x100000000;
                        v71 = 119;
                        goto LABEL_185;
                      }

                      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v26, "Receiver"))
                      {
                        v68 = 0;
                        v69 = 0x100000000;
                        v70 = 1886545152;
                        v71 = 99;
                        goto LABEL_185;
                      }
                    }

                    goto LABEL_182;
                  }

                  v68 = 0;
                  v69 = 0x100000000;
                  v70 = 1886151936;
                }

                else
                {
                  if (v67 <= 1751412072)
                  {
                    if (v67 == 1651275109)
                    {
                      v68 = 0;
                      v69 = 0x100000000;
                      v71 = 66;
                      v70 = 1885892608;
                      goto LABEL_185;
                    }

                    if (v67 == 1685090932)
                    {
                      v68 = 0;
                      v69 = 0x100000000;
                      v70 = 1885631232;
                      v71 = 112;
                      goto LABEL_185;
                    }

LABEL_182:
                    v73 = get_adm_log_object();
                    if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
                    {
                      LOWORD(v108.__r_.__value_.__l.__data_) = 0;
                      _os_log_error_impl(&dword_223B4A000, v73, OS_LOG_TYPE_ERROR, "unsupported configuration: outputPort", &v108, 2u);
                    }

                    goto LABEL_184;
                  }

                  if (v67 == 1751412073)
                  {
                    v68 = 0;
                    v70 = 1885889536;
                    v69 = 0x100000000;
                    v71 = 109;
                    goto LABEL_185;
                  }

                  if (v67 != 1970496032)
                  {
                    goto LABEL_182;
                  }

                  v68 = 0;
                  v69 = 0x100000000;
                  v70 = 1886745344;
                }

                v71 = 111;
                goto LABEL_185;
              }

              v49 = 0;
              v50 = 6;
            }

            else
            {
              v49 = 0;
              v50 = 5;
            }
          }

          else
          {
            v49 = 0;
            v50 = 4;
          }
        }

        else
        {
          v49 = 0;
          v50 = 3;
        }
      }

      else
      {
        v49 = 0;
        v50 = 2;
      }
    }

    else
    {
      v49 = 0;
      v50 = 0;
    }

    v46 = v96;
    goto LABEL_150;
  }

  std::string::basic_string[abi:ne200100]<0>(&v108, "voice isolation conferencing");
  v21 = std::__tree<std::string>::find<std::string>(a3 + 8, &v108);
  if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v108.__r_.__value_.__l.__data_);
  }

  if (a3 + 16 != v21)
  {
    goto LABEL_37;
  }

  if (adm::config_policy::isAirPodsMicOffloadUseCase(a3 + 8))
  {
    goto LABEL_39;
  }

  std::string::basic_string[abi:ne200100]<0>(&v108, "content creation recording");
  v58 = std::__tree<std::string>::find<std::string>(a3 + 8, &v108);
  if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v108.__r_.__value_.__l.__data_);
  }

  if (v21 == v58 || (DeviceDescription = adm::config_policy::getDeviceDescription(a3, 1), v60 = adm::config_policy::getDeviceDescription(a3, 0), !adm::config_policy::contentCreationRequiresEC((a3 + 8), DeviceDescription, v60, v61)))
  {
LABEL_39:
    adm::graph::GraphBuilder::createDSPGraphAggNodeDesc(this, a2, a3);
  }

  else
  {
LABEL_37:
    adm::graph::GraphBuilder::createVPAggNodeDesc(this, a2, a3);
  }

LABEL_228:
  v87 = *MEMORY[0x277D85DE8];
}