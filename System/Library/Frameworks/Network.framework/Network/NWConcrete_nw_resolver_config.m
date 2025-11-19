@interface NWConcrete_nw_resolver_config
- (NSString)description;
- (NWConcrete_nw_resolver_config)init;
- (id).cxx_construct;
- (void)dealloc;
@end

@implementation NWConcrete_nw_resolver_config

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 16) &= ~1u;
  *(self + 5) = 0;
  *(self + 48) &= ~1u;
  *(self + 7) = 0;
  *(self + 64) &= ~1u;
  *(self + 9) = 0;
  *(self + 80) &= ~1u;
  *(self + 22) = 0;
  return self;
}

- (NWConcrete_nw_resolver_config)init
{
  v21 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = NWConcrete_nw_resolver_config;
  v2 = [(NWConcrete_nw_resolver_config *)&v16 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v18 = "[NWConcrete_nw_resolver_config init]";
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
        v18 = "[NWConcrete_nw_resolver_config init]";
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
          v18 = "[NWConcrete_nw_resolver_config init]";
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
        v18 = "[NWConcrete_nw_resolver_config init]";
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
        v18 = "[NWConcrete_nw_resolver_config init]";
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

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = NWConcrete_nw_resolver_config;
  [(NWConcrete_nw_resolver_config *)&v2 dealloc];
}

- (NSString)description
{
  v32 = 0;
  v33 = &v32;
  v34 = 0x13812000000;
  v35 = __Block_byref_object_copy__56246;
  v36 = __Block_byref_object_dispose__56247;
  v37 = &unk_182E7191A;
  std::ostringstream::basic_ostringstream[abi:nn200100](&v38);
  v3 = v33;
  v4 = nw_resolver_config_get_class(self);
  if (v4 > 4)
  {
    v5 = "unknown";
  }

  else
  {
    v5 = off_1E6A35B40[v4];
  }

  v6 = strlen(v5);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v3 + 6, v5, v6);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v3 + 6, " ", 1);
  protocol = nw_resolver_config_get_protocol(self);
  if (protocol > 3)
  {
    v8 = "unknown";
  }

  else
  {
    v8 = off_1E6A35B68[protocol];
  }

  v9 = strlen(v8);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v3 + 6, v8, v9);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v33 + 6, "servers = [ ", 12);
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __44__NWConcrete_nw_resolver_config_description__block_invoke;
  v31[3] = &unk_1E6A38768;
  v31[4] = &v32;
  nw_resolver_config_enumerate_name_servers(self, v31);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v33 + 6, "] domains = [ ", 14);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __44__NWConcrete_nw_resolver_config_description__block_invoke_2;
  v30[3] = &unk_1E6A38768;
  v30[4] = &v32;
  nw_resolver_config_enumerate_search_domains(self, v30);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v33 + 6, "]", 1);
  port = nw_resolver_config_get_port(self);
  if (port)
  {
    v11 = v33;
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v33 + 6, " port = ", 8);
    MEMORY[0x1865DC440](v11 + 6, port);
  }

  provider_name = nw_resolver_config_get_provider_name(self);
  provider_path = nw_resolver_config_get_provider_path(self);
  if (provider_name)
  {
    v14 = provider_path;
    v15 = v33;
    if (provider_path)
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v33 + 6, " provider = ", 12);
      v16 = strlen(provider_name);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v15 + 6, provider_name, v16);
    }

    else
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v33 + 6, " provider = ", 12);
      v14 = provider_name;
    }

    v17 = strlen(v14);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v15 + 6, v14, v17);
  }

  v18 = v33;
  v19 = *(v33 + 38);
  if ((v19 & 0x10) != 0)
  {
    v21 = v33[18];
    v22 = v33[13];
    if (v21 < v22)
    {
      v33[18] = v22;
      v21 = v22;
    }

    v23 = (v18 + 12);
  }

  else
  {
    if ((v19 & 8) == 0)
    {
      v20 = 0;
      v29 = 0;
      goto LABEL_27;
    }

    v23 = (v33 + 9);
    v21 = v33[11];
  }

  v24 = *v23;
  v20 = v21 - *v23;
  if (v20 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (v20 >= 0x17)
  {
    operator new();
  }

  v29 = v21 - *v23;
  if (v20)
  {
    memmove(&__p, v24, v20);
  }

LABEL_27:
  *(&__p + v20) = 0;
  if (v29 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  v26 = CFStringCreateWithCString(0, p_p, 0x8000100u);
  if (v29 < 0)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&v32, 8);
  v38 = *MEMORY[0x1E69E54E8];
  *(&v38 + *(v38 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v39 = MEMORY[0x1E69E5548] + 16;
  if (v41 < 0)
  {
    operator delete(v40[7].__locale_);
  }

  v39 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v40);
  std::ostream::~ostream();
  MEMORY[0x1865DC4F0](&v42);

  return v26;
}

@end