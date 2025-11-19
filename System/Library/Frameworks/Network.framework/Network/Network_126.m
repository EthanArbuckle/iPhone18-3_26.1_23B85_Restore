id nw_protocol_copy_aop2_offload_definition()
{
  if (nw_protocol_setup_aop2_offload_definition(void)::onceToken != -1)
  {
    dispatch_once(&nw_protocol_setup_aop2_offload_definition(void)::onceToken, &__block_literal_global);
  }

  v1 = g_aop2_offload_definition;

  return v1;
}

void std::__split_buffer<void (nw::object::**)(void),nw::c_allocator<void (nw::object::**)(void)>>::emplace_back<void (nw::object::**&)(void)>(void *a1, void *a2)
{
  v4 = a1[2];
  if (v4 != a1[3])
  {
LABEL_21:
    *v4 = *a2;
    a1[2] += 8;
    return;
  }

  v5 = a1[1];
  v6 = &v5[-*a1];
  if (v5 > *a1)
  {
    v7 = ((v6 >> 3) + 1) / 2;
    v8 = ((v6 >> 3) + 1) / -2;
    v9 = &v5[-8 * v7];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v7], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v8];
    a1[2] = &v9[v10];
    goto LABEL_21;
  }

  if (v4 == *a1)
  {
    v11 = 1;
  }

  else
  {
    v11 = &v4[-*a1] >> 2;
  }

  v12 = malloc_type_calloc(v11, 8uLL, 0x80040B8603338uLL);
  if (v12)
  {
    v13 = &v12[8 * (v11 >> 2)];
    v14 = a1[1];
    v4 = v13;
    v15 = a1[2] - v14;
    if (!v15)
    {
      goto LABEL_19;
    }

    v4 = &v13[v15];
    v16 = v15 - 8;
    if (v16 >= 0x38)
    {
      v18 = &v12[8 * (v11 >> 2)];
      v17 = v18;
      if ((v18 - v14) >= 0x20)
      {
        v19 = (v16 >> 3) + 1;
        v20 = 8 * (v19 & 0x3FFFFFFFFFFFFFFCLL);
        v17 = &v13[v20];
        v21 = (v14 + 2);
        v22 = v18 + 16;
        v23 = v19 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v24 = *v21;
          *(v22 - 1) = *(v21 - 1);
          *v22 = v24;
          v21 += 2;
          v22 += 2;
          v23 -= 4;
        }

        while (v23);
        if (v19 == (v19 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_19:
          v26 = *a1;
          *a1 = v12;
          a1[1] = v13;
          a1[2] = v4;
          a1[3] = &v12[8 * v11];
          if (v26)
          {
            free(v26);
            v4 = a1[2];
          }

          goto LABEL_21;
        }

        v14 = (v14 + v20);
      }
    }

    else
    {
      v17 = &v12[8 * (v11 >> 2)];
    }

    do
    {
      v25 = *v14++;
      *v17 = v25;
      v17 += 8;
    }

    while (v17 != v4);
    goto LABEL_19;
  }

  __break(1u);
}

void std::__split_buffer<void (nw::object::**)(void),nw::c_allocator<void (nw::object::**)(void)>>::emplace_front<void (nw::object::**)(void)>(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 != *a1)
  {
    v5 = a1[1];
LABEL_22:
    *(v5 - 1) = *a2;
    a1[1] = a1[1] - 8;
    return;
  }

  v6 = a1[2];
  v7 = a1[3];
  if (v6 < v7)
  {
    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = &v6[8 * v8];
    goto LABEL_22;
  }

  if (v7 == v4)
  {
    v9 = 1;
  }

  else
  {
    v9 = (v7 - v4) >> 2;
  }

  v10 = malloc_type_calloc(v9, 8uLL, 0x80040B8603338uLL);
  if (v10)
  {
    v11 = (v9 + 3) >> 2;
    v5 = &v10[8 * v11];
    v12 = a1[1];
    v13 = v5;
    v14 = a1[2] - v12;
    if (!v14)
    {
      goto LABEL_20;
    }

    v13 = &v5[v14];
    v15 = v14 - 8;
    if (v15 >= 0x38)
    {
      v16 = &v10[8 * v11];
      v17 = v16;
      if ((v16 - v12) >= 0x20)
      {
        v18 = (v15 >> 3) + 1;
        v19 = 8 * (v18 & 0x3FFFFFFFFFFFFFFCLL);
        v16 = &v5[v19];
        v20 = (v12 + 2);
        v21 = v17 + 16;
        v22 = v18 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v23 = *v20;
          *(v21 - 1) = *(v20 - 1);
          *v21 = v23;
          v20 += 2;
          v21 += 2;
          v22 -= 4;
        }

        while (v22);
        if (v18 == (v18 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_20:
          v25 = *a1;
          *a1 = v10;
          a1[1] = v5;
          a1[2] = v13;
          a1[3] = &v10[8 * v9];
          if (v25)
          {
            free(v25);
            v5 = a1[1];
          }

          goto LABEL_22;
        }

        v12 = (v12 + v19);
      }
    }

    else
    {
      v16 = &v10[8 * v11];
    }

    do
    {
      v24 = *v12++;
      *v16 = v24;
      v16 += 8;
    }

    while (v16 != v13);
    goto LABEL_20;
  }

  __break(1u);
}

void nw::object::_destroy(nw::object *this)
{
  v17 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v1 = gLogObj;
  *buf = 136446210;
  v14 = "_destroy";
  v2 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (!__nwlog_fault(v2, &type, &v11))
  {
    goto LABEL_10;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    v4 = type;
    if (!os_log_type_enabled(v3, type))
    {
      goto LABEL_17;
    }

    *buf = 136446210;
    v14 = "_destroy";
    v5 = "%{public}s nw::object::_destroy should never be called";
LABEL_15:
    v9 = v3;
    v10 = v4;
LABEL_16:
    _os_log_impl(&dword_181A37000, v9, v10, v5, buf, 0xCu);
    goto LABEL_17;
  }

  if (v11 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    v4 = type;
    if (!os_log_type_enabled(v3, type))
    {
      goto LABEL_17;
    }

    *buf = 136446210;
    v14 = "_destroy";
    v5 = "%{public}s nw::object::_destroy should never be called, backtrace limit exceeded";
    goto LABEL_15;
  }

  backtrace_string = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v3 = gLogObj;
  v7 = type;
  v8 = os_log_type_enabled(v3, type);
  if (backtrace_string)
  {
    if (v8)
    {
      *buf = 136446466;
      v14 = "_destroy";
      v15 = 2082;
      v16 = backtrace_string;
      _os_log_impl(&dword_181A37000, v3, v7, "%{public}s nw::object::_destroy should never be called, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
LABEL_10:
    if (!v2)
    {
      return;
    }

    goto LABEL_11;
  }

  if (v8)
  {
    *buf = 136446210;
    v14 = "_destroy";
    v5 = "%{public}s nw::object::_destroy should never be called, no backtrace";
    v9 = v3;
    v10 = v7;
    goto LABEL_16;
  }

LABEL_17:

  if (v2)
  {
LABEL_11:
    free(v2);
  }
}

id nw::object::_redacted_description(uint64_t **this)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = nw::object::cls(this[2]);
  v4 = nw::object::class_def::lookup_method(v2, nw::object::__description_def_instance, qword_1ED4119A0);
  if (v3)
  {
    v5 = (v3 & 1 | v4) == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  if (v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6 == 0;
  }

  if (!v7)
  {
    v8 = (this + (v3 >> 1));
    if (v3)
    {
      (*(*v8 + v4))();
    }

    else
    {
      (v4)(v8);
    }
    v9 = ;
    goto LABEL_27;
  }

  nw::object::cls(this[2]);
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v10 = gLogObj;
  *buf = 136446466;
  v24 = "bad_method_lookup";
  v25 = 2080;
  v26 = "object::description";
  v11 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v21 = 0;
  if (__nwlog_fault(v11, &type, &v21))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v12 = gLogObj;
      v13 = type;
      if (!os_log_type_enabled(v12, type))
      {
        goto LABEL_34;
      }

      *buf = 136446466;
      v24 = "bad_method_lookup";
      v25 = 2080;
      v26 = "object::description";
      v14 = "%{public}s unable to lookup %s";
LABEL_32:
      v19 = v12;
      v20 = v13;
      goto LABEL_33;
    }

    if (v21 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v12 = gLogObj;
      v13 = type;
      if (!os_log_type_enabled(v12, type))
      {
        goto LABEL_34;
      }

      *buf = 136446466;
      v24 = "bad_method_lookup";
      v25 = 2080;
      v26 = "object::description";
      v14 = "%{public}s unable to lookup %s, backtrace limit exceeded";
      goto LABEL_32;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v12 = gLogObj;
    v16 = type;
    v17 = os_log_type_enabled(v12, type);
    if (!backtrace_string)
    {
      if (!v17)
      {
LABEL_34:

        if (!v11)
        {
          goto LABEL_26;
        }

        goto LABEL_25;
      }

      *buf = 136446466;
      v24 = "bad_method_lookup";
      v25 = 2080;
      v26 = "object::description";
      v14 = "%{public}s unable to lookup %s, no backtrace";
      v19 = v12;
      v20 = v16;
LABEL_33:
      _os_log_impl(&dword_181A37000, v19, v20, v14, buf, 0x16u);
      goto LABEL_34;
    }

    if (v17)
    {
      *buf = 136446722;
      v24 = "bad_method_lookup";
      v25 = 2080;
      v26 = "object::description";
      v27 = 2082;
      v28 = backtrace_string;
      _os_log_impl(&dword_181A37000, v12, v16, "%{public}s unable to lookup %s, dumping backtrace:%{public}s", buf, 0x20u);
    }

    free(backtrace_string);
  }

  if (v11)
  {
LABEL_25:
    free(v11);
  }

LABEL_26:
  v9 = 0;
LABEL_27:

  return v9;
}

uint64_t *nw::object::cls(uint64_t *this)
{
  v15 = *MEMORY[0x1E69E9840];
  if (this)
  {
    return this;
  }

  v1 = __nwlog_obj();
  *buf = 136446210;
  v12 = "cls";
  v2 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  v3 = __nwlog_fault(v2, &type, &v9);
  if (v3)
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "cls";
        v6 = "%{public}s called with null m_cls";
LABEL_15:
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
            v12 = "cls";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null m_cls, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_17;
        }

        if (!v8)
        {
          goto LABEL_16;
        }

        *buf = 136446210;
        v12 = "cls";
        v6 = "%{public}s called with null m_cls, no backtrace";
        goto LABEL_15;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "cls";
        v6 = "%{public}s called with null m_cls, backtrace limit exceeded";
        goto LABEL_15;
      }
    }

LABEL_16:
  }

LABEL_17:
  if (v2)
  {
    free(v2);
  }

  nw::object::_class(v3);
  return &nw::object::_class(void)::instance;
}

uint64_t nw::object::class_def::lookup_method(void *a1, unint64_t a2, char a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (a1[13] > a2)
    {
      return *(*(a1[9] + (((a1[12] + a2) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 96) + a2));
    }

    v9 = __nwlog_obj();
    *buf = 136446210;
    v17 = "lookup_method";
    v5 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v14 = 0;
    if (__nwlog_fault(v5, &type, &v14))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v6 = __nwlog_obj();
        v7 = type;
        if (os_log_type_enabled(v6, type))
        {
          *buf = 136446210;
          v17 = "lookup_method";
          v8 = "%{public}s called with null (def.slot().value() < m_method_table.size())";
          goto LABEL_31;
        }
      }

      else
      {
        if (v14 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v6 = __nwlog_obj();
          v7 = type;
          v13 = os_log_type_enabled(v6, type);
          if (backtrace_string)
          {
            if (v13)
            {
              *buf = 136446466;
              v17 = "lookup_method";
              v18 = 2082;
              v19 = backtrace_string;
              _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null (def.slot().value() < m_method_table.size()), dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(backtrace_string);
            if (!v5)
            {
              return 0;
            }

            goto LABEL_34;
          }

          if (!v13)
          {
            goto LABEL_32;
          }

          *buf = 136446210;
          v17 = "lookup_method";
          v8 = "%{public}s called with null (def.slot().value() < m_method_table.size()), no backtrace";
          goto LABEL_31;
        }

        v6 = __nwlog_obj();
        v7 = type;
        if (os_log_type_enabled(v6, type))
        {
          *buf = 136446210;
          v17 = "lookup_method";
          v8 = "%{public}s called with null (def.slot().value() < m_method_table.size()), backtrace limit exceeded";
          goto LABEL_31;
        }
      }

      goto LABEL_32;
    }
  }

  else
  {
    v4 = __nwlog_obj();
    *buf = 136446210;
    v17 = "lookup_method";
    v5 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v14 = 0;
    if (!__nwlog_fault(v5, &type, &v14))
    {
      goto LABEL_33;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v17 = "lookup_method";
        v8 = "%{public}s called with null (def.slot())";
LABEL_31:
        _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
      }

LABEL_32:

      goto LABEL_33;
    }

    if (v14 != 1)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v17 = "lookup_method";
        v8 = "%{public}s called with null (def.slot()), backtrace limit exceeded";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    v10 = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = type;
    v11 = os_log_type_enabled(v6, type);
    if (!v10)
    {
      if (v11)
      {
        *buf = 136446210;
        v17 = "lookup_method";
        v8 = "%{public}s called with null (def.slot()), no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v11)
    {
      *buf = 136446466;
      v17 = "lookup_method";
      v18 = 2082;
      v19 = v10;
      _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null (def.slot()), dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v10);
  }

LABEL_33:
  if (v5)
  {
LABEL_34:
    free(v5);
  }

  return 0;
}

__CFString *nw::object::_description(nw::object *this)
{
  std::ostringstream::basic_ostringstream[abi:nn200100](&v12);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v12, "<nw::object ", 12);
  v2 = MEMORY[0x1865DC400](&v12, this);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v2, ">", 1);
  if ((v21 & 0x10) != 0)
  {
    v4 = v20;
    if (v20 < v17)
    {
      v20 = v17;
      v4 = v17;
    }

    v5 = &v16;
  }

  else
  {
    if ((v21 & 8) == 0)
    {
      v3 = 0;
      v11 = 0;
      goto LABEL_14;
    }

    v5 = v15;
    v4 = v15[2];
  }

  v6 = *v5;
  v3 = v4 - *v5;
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (v3 >= 0x17)
  {
    operator new();
  }

  v11 = v4 - *v5;
  if (v3)
  {
    memmove(&__p, v6, v3);
  }

LABEL_14:
  *(&__p + v3) = 0;
  if (v11 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  v8 = CFStringCreateWithCString(0, p_p, 0x8000100u);
  if (v11 < 0)
  {
    operator delete(__p);
  }

  v12 = *MEMORY[0x1E69E54E8];
  *(&v12 + *(v12 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v13 = MEMORY[0x1E69E5548] + 16;
  if (v19 < 0)
  {
    operator delete(v18);
  }

  v13 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v14);
  std::ostream::~ostream();
  MEMORY[0x1865DC4F0](&v22);

  return v8;
}

void sub_1822D6F7C(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  std::ostringstream::~ostringstream(&a8);
  MEMORY[0x1865DC4F0](va);
  _Unwind_Resume(a1);
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54E8];
  v3 = *MEMORY[0x1E69E54E8];
  *a1 = *MEMORY[0x1E69E54E8];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

{
  v2 = MEMORY[0x1E69E54E8];
  v3 = *MEMORY[0x1E69E54E8];
  *a1 = *MEMORY[0x1E69E54E8];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x1865DC4F0](a1 + 112);
  return a1;
}

uint64_t nw_protocol_aop2_offload_create(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  if (nw_protocol_aop2_offload_identifier::onceToken != -1)
  {
    dispatch_once(&nw_protocol_aop2_offload_identifier::onceToken, &__block_literal_global_25);
  }

  if (nw_protocol_aop2_offload_callbacks(void)::onceToken != -1)
  {
    dispatch_once(&nw_protocol_aop2_offload_callbacks(void)::onceToken, &__block_literal_global_13);
  }

  v9 = nw_protocol_new(280, v8, nw_protocol_aop2_offload_identifier::identifier, nw_protocol_aop2_offload_callbacks(void)::callbacks);
  *v9 = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 40) = 0;
  *(v9 + 48) = 0;
  v10 = v9 - 96;

  return v10;
}

void ___ZL34nw_protocol_aop2_offload_callbacksv_block_invoke()
{
  nw_protocol_aop2_offload_callbacks(void)::callbacks = nw_protocol_one_to_one_callbacks_new();
  nw_protocol_callbacks_set_add_input_handler(nw_protocol_aop2_offload_callbacks(void)::callbacks, nw_protocol_aop2_offload_add_input_handler);
  nw_protocol_callbacks_set_remove_input_handler(nw_protocol_aop2_offload_callbacks(void)::callbacks, nw_protocol_aop2_offload_remove_input_handler);
  nw_protocol_callbacks_set_get_input_frames(nw_protocol_aop2_offload_callbacks(void)::callbacks, nw_protocol_aop2_offload_get_input_frames);
  nw_protocol_callbacks_set_get_output_frames(nw_protocol_aop2_offload_callbacks(void)::callbacks, nw_protocol_aop2_offload_get_output_frames);
  nw_protocol_callbacks_set_finalize_output_frames(nw_protocol_aop2_offload_callbacks(void)::callbacks, nw_protocol_aop2_offload_finalize_output_frames);
  nw_protocol_callbacks_set_connect(nw_protocol_aop2_offload_callbacks(void)::callbacks, nw_protocol_aop2_offload_connect);
  nw_protocol_callbacks_set_connected(nw_protocol_aop2_offload_callbacks(void)::callbacks, nw_protocol_aop2_offload_connected);
  nw_protocol_callbacks_set_disconnect(nw_protocol_aop2_offload_callbacks(void)::callbacks, nw_protocol_aop2_offload_disconnect);
  nw_protocol_callbacks_set_disconnected(nw_protocol_aop2_offload_callbacks(void)::callbacks, nw_protocol_aop2_offload_disconnected);
  nw_protocol_callbacks_set_reset(nw_protocol_aop2_offload_callbacks(void)::callbacks, nw_protocol_aop2_offload_reset);
  nw_protocol_callbacks_set_updated_path(nw_protocol_aop2_offload_callbacks(void)::callbacks, nw_protocol_aop2_offload_updated_path);
  nw_protocol_callbacks_set_copy_info(nw_protocol_aop2_offload_callbacks(void)::callbacks, nw_protocol_aop2_offload_copy_info);
  v0 = nw_protocol_aop2_offload_callbacks(void)::callbacks;

  nw_protocol_callbacks_set_error(v0, nw_protocol_aop2_offload_error);
}

void nw_protocol_aop2_offload_error(nw_protocol *a1, nw_protocol *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    v3 = a1;
    if (handle != &nw_protocol_ref_counted_handle)
    {
      if (handle != &nw_protocol_ref_counted_additional_handle)
      {
        LOBYTE(v3) = 0;
        v4 = 1;
        goto LABEL_9;
      }

      v3 = *a1[1].flow_id;
      if (!v3)
      {
        v4 = 1;
        goto LABEL_9;
      }
    }

    callbacks = v3[1].callbacks;
    v4 = 0;
    if (callbacks)
    {
      v3[1].callbacks = (&callbacks->add_input_handler + 1);
    }

    LOBYTE(v3) = -1;
LABEL_9:
    *v24 = a1;
    v25 = v3;
    v6 = a1->handle;
    if (v6 == &nw_protocol_ref_counted_handle || v6 == &nw_protocol_ref_counted_additional_handle)
    {
      if (a1->default_input_handler)
      {
        nw_protocol_common_error(a1, a2);
      }

      goto LABEL_20;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    *buf = 136446210;
    v28 = "nw_protocol_aop2_offload_error";
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (__nwlog_fault(v8, &type, &v23))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v28 = "nw_protocol_aop2_offload_error";
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null aop2_offload", buf, 0xCu);
        }
      }

      else if (v23 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v12 = type;
        v13 = os_log_type_enabled(v9, type);
        if (backtrace_string)
        {
          if (v13)
          {
            *buf = 136446466;
            v28 = "nw_protocol_aop2_offload_error";
            v29 = 2082;
            v30 = backtrace_string;
            _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null aop2_offload, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          if (!v8)
          {
            goto LABEL_20;
          }

LABEL_17:
          free(v8);
LABEL_20:
          if ((v4 & 1) == 0)
          {
            nw::release_if_needed<nw_protocol *>(v24);
          }

          return;
        }

        if (v13)
        {
          *buf = 136446210;
          v28 = "nw_protocol_aop2_offload_error";
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null aop2_offload, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v14 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v28 = "nw_protocol_aop2_offload_error";
          _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null aop2_offload, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v8)
    {
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  v15 = __nwlog_obj();
  *buf = 136446210;
  v28 = "nw_protocol_aop2_offload_error";
  v16 = _os_log_send_and_compose_impl();

  v24[0] = OS_LOG_TYPE_ERROR;
  type = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v16, v24, &type))
  {
    if (v24[0] == OS_LOG_TYPE_FAULT)
    {
      v17 = __nwlog_obj();
      v18 = v24[0];
      if (os_log_type_enabled(v17, v24[0]))
      {
        *buf = 136446210;
        v28 = "nw_protocol_aop2_offload_error";
        _os_log_impl(&dword_181A37000, v17, v18, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (type == OS_LOG_TYPE_INFO)
    {
      v19 = __nw_create_backtrace_string();
      v17 = __nwlog_obj();
      v20 = v24[0];
      v21 = os_log_type_enabled(v17, v24[0]);
      if (v19)
      {
        if (v21)
        {
          *buf = 136446466;
          v28 = "nw_protocol_aop2_offload_error";
          v29 = 2082;
          v30 = v19;
          _os_log_impl(&dword_181A37000, v17, v20, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v19);
        goto LABEL_52;
      }

      if (v21)
      {
        *buf = 136446210;
        v28 = "nw_protocol_aop2_offload_error";
        _os_log_impl(&dword_181A37000, v17, v20, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v17 = __nwlog_obj();
      v22 = v24[0];
      if (os_log_type_enabled(v17, v24[0]))
      {
        *buf = 136446210;
        v28 = "nw_protocol_aop2_offload_error";
        _os_log_impl(&dword_181A37000, v17, v22, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_52:
  if (v16)
  {
    free(v16);
  }
}

uint64_t nw::retained_ptr<void({block_pointer} {__strong})(void)>::~retained_ptr(uint64_t a1)
{
  v2 = *a1;
  if ((*(a1 + 8) & 1) != 0 && v2)
  {
    *a1 = 0;

    v2 = *a1;
  }

  *a1 = 0;

  return a1;
}

uint64_t nw_protocol_aop2_offload_copy_info(uint64_t a1, int a2, void *a3)
{
  v74 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v38 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_aop2_offload_copy_info";
    v39 = _os_log_send_and_compose_impl();

    v48[0] = OS_LOG_TYPE_ERROR;
    type[0] = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v39, v48, type))
    {
      if (v48[0] == OS_LOG_TYPE_FAULT)
      {
        v40 = __nwlog_obj();
        v41 = v48[0];
        if (os_log_type_enabled(v40, v48[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_aop2_offload_copy_info";
          _os_log_impl(&dword_181A37000, v40, v41, "%{public}s called with null protocol", buf, 0xCu);
        }
      }

      else if (type[0] == OS_LOG_TYPE_INFO)
      {
        backtrace_string = __nw_create_backtrace_string();
        v40 = __nwlog_obj();
        v43 = v48[0];
        v44 = os_log_type_enabled(v40, v48[0]);
        if (backtrace_string)
        {
          if (v44)
          {
            *buf = 136446466;
            *&buf[4] = "nw_protocol_aop2_offload_copy_info";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v40, v43, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_107;
        }

        if (v44)
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_aop2_offload_copy_info";
          _os_log_impl(&dword_181A37000, v40, v43, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v40 = __nwlog_obj();
        v45 = v48[0];
        if (os_log_type_enabled(v40, v48[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_aop2_offload_copy_info";
          _os_log_impl(&dword_181A37000, v40, v45, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_107:
    if (v39)
    {
      free(v39);
    }

    return 0;
  }

  v4 = *(a1 + 40);
  v5 = a1;
  if (v4 == &nw_protocol_ref_counted_handle)
  {
    goto LABEL_6;
  }

  if (v4 != &nw_protocol_ref_counted_additional_handle)
  {
    v6 = 0;
    goto LABEL_10;
  }

  v5 = *(a1 + 64);
  if (v5)
  {
LABEL_6:
    v7 = *(v5 + 88);
    if (v7)
    {
      *(v5 + 88) = v7 + 1;
    }

    v6 = -1;
  }

  else
  {
    v6 = 0;
  }

  v4 = *(a1 + 40);
LABEL_10:
  *v48 = a1;
  v49 = v6;
  v8 = a1;
  if (v4 != &nw_protocol_ref_counted_handle)
  {
    if (v4 != &nw_protocol_ref_counted_additional_handle)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      *buf = 136446210;
      *&buf[4] = "nw_protocol_aop2_offload_copy_info";
      v10 = _os_log_send_and_compose_impl();

      type[0] = OS_LOG_TYPE_ERROR;
      v47 = 0;
      if (__nwlog_fault(v10, type, &v47))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v11 = gLogObj;
          v12 = type[0];
          if (os_log_type_enabled(v11, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_protocol_aop2_offload_copy_info";
            _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null aop2_offload", buf, 0xCu);
          }
        }

        else if (v47 == 1)
        {
          v18 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v11 = gLogObj;
          v19 = type[0];
          v20 = os_log_type_enabled(v11, type[0]);
          if (v18)
          {
            if (v20)
            {
              *buf = 136446466;
              *&buf[4] = "nw_protocol_aop2_offload_copy_info";
              *&buf[12] = 2082;
              *&buf[14] = v18;
              _os_log_impl(&dword_181A37000, v11, v19, "%{public}s called with null aop2_offload, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v18);
            if (!v10)
            {
              goto LABEL_87;
            }

            goto LABEL_86;
          }

          if (v20)
          {
            *buf = 136446210;
            *&buf[4] = "nw_protocol_aop2_offload_copy_info";
            _os_log_impl(&dword_181A37000, v11, v19, "%{public}s called with null aop2_offload, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v11 = gLogObj;
          v36 = type[0];
          if (os_log_type_enabled(v11, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_protocol_aop2_offload_copy_info";
            _os_log_impl(&dword_181A37000, v11, v36, "%{public}s called with null aop2_offload, backtrace limit exceeded", buf, 0xCu);
          }
        }
      }

      if (v10)
      {
LABEL_86:
        free(v10);
      }

LABEL_87:
      v10 = 0;
      goto LABEL_88;
    }

    v8 = *(a1 + 64);
  }

  if (a2 > 253)
  {
    if (a2 == 254)
    {
      v10 = _nw_array_create();
      v29 = *(v8 + 287);
      if ((v29 & 2) != 0)
      {
        v30 = *(v8 + 248);
        if (nw_protocol_setup_tcp_definition_onceToken != -1)
        {
          dispatch_once(&nw_protocol_setup_tcp_definition_onceToken, &__block_literal_global_415);
        }

        v31 = g_tcp_definition;
        v32 = nw_protocol_establishment_report_create(v31, v30, v30);

        if (v10 && v32)
        {
          _nw_array_append(v10, v32);
        }

        v29 = *(v8 + 287);
      }

      if (v29)
      {
        v33 = *(v8 + 200);
        v34 = nw_protocol_boringssl_copy_definition();
        v35 = nw_protocol_establishment_report_create(v34, v33, v33);

        if (v10 && v35)
        {
          _nw_array_append(v10, v35);
        }
      }

      goto LABEL_88;
    }

    if (a2 == 255)
    {
      v17 = nw_protocol_copy_info_quiet(*(a1 + 32));
      v10 = v17;
      if (v17 && (*(v8 + 287) & 1) != 0)
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        *&buf[24] = __Block_byref_object_copy__55;
        *&v53 = __Block_byref_object_dispose__56;
        *(&v53 + 1) = 0;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = ___ZL34nw_protocol_aop2_offload_copy_infoP11nw_protocol23nw_protocol_info_type_tPm_block_invoke;
        aBlock[3] = &unk_1E6A39B60;
        aBlock[4] = buf;
        _nw_array_apply(v17, aBlock);
        if (*(*&buf[8] + 40))
        {
          sec_protocol_metadata_set_negotiated_tls_protocol_version();
          sec_protocol_metadata_set_negotiated_protocol();
          v6 = v49;
        }

        _Block_object_dispose(buf, 8);
      }

      goto LABEL_88;
    }

    goto LABEL_41;
  }

  if (a2 == 1)
  {
    if ((*(v8 + 287) & 2) == 0)
    {
      goto LABEL_87;
    }

    v10 = malloc_type_malloc(0x1A8uLL, 0x67A7014EuLL);
    if (!v10)
    {
      v27 = __nwlog_obj();
      os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
      *buf = 136446210;
      *&buf[4] = "nw_protocol_aop2_offload_copy_info";
      v28 = _os_log_send_and_compose_impl();

      result = __nwlog_should_abort(v28);
      if (result)
      {
        goto LABEL_110;
      }

      free(v28);
    }

    if (nw_path_get_tcp_flow_statistics(*(v8 + 120), v10))
    {
      if (a3)
      {
        *a3 = 424;
      }

      goto LABEL_88;
    }

    goto LABEL_80;
  }

  if (a2 != 2)
  {
LABEL_41:
    v22 = nw_protocol_copy_info_quiet(*(a1 + 32));
    v10 = v22;
    if (a2 != 5)
    {
      if (gLogDatapath == 1)
      {
        v37 = __nwlog_obj();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446722;
          *&buf[4] = "nw_protocol_aop2_offload_copy_info";
          *&buf[12] = 2082;
          *&buf[14] = v8 + 288;
          *&buf[22] = 1024;
          *&buf[24] = a2;
          _os_log_impl(&dword_181A37000, v37, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s unknown protocol info type %d", buf, 0x1Cu);
        }
      }

      goto LABEL_88;
    }

    if (!v22)
    {
      v10 = malloc_type_calloc(1uLL, 0xE0uLL, 0x298F4064uLL);
      if (!v10)
      {
        v23 = __nwlog_obj();
        os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
        *buf = 136446722;
        *&buf[4] = "nw_protocol_aop2_offload_copy_info";
        *&buf[12] = 2048;
        *&buf[14] = 1;
        *&buf[22] = 2048;
        *&buf[24] = 224;
        v24 = _os_log_send_and_compose_impl();

        result = __nwlog_should_abort(v24);
        if (result)
        {
          goto LABEL_110;
        }

        free(v24);
        v10 = 0;
      }
    }

    v73 = 0;
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v66 = 0u;
    v64 = 0u;
    memset(v65, 0, sizeof(v65));
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v57 = 0u;
    memset(v56, 0, sizeof(v56));
    memset(v55, 0, sizeof(v55));
    v53 = 0u;
    v54 = 0u;
    memset(buf, 0, sizeof(buf));
    if (nw_path_get_tcp_flow_statistics(*(v8 + 120), buf))
    {
      *(v10 + 72) = *(v55 + 12);
      *(v10 + 48) = *(v56 + 12);
      *(v10 + 64) = *(&v56[1] + 12);
      *(v10 + 80) = *(&v55[1] + 4);
      v25.i64[0] = *&buf[28];
      v25.i64[1] = v53;
      v26 = v25;
      v25.i64[0] = *&buf[20];
      v25.i64[1] = *&buf[24];
      *(v10 + 136) = vzip1q_s64(v25, v26);
      *(v10 + 120) = vzip2q_s64(v25, v26);
      v25.i64[0] = DWORD1(v53);
      v25.i64[1] = DWORD2(v53);
      *(v10 + 152) = vextq_s8(v25, v25, 8uLL);
      if (!*(v10 + 8))
      {
        *(v10 + 8) = *(v56 + 4);
      }

      if (!*(v10 + 40))
      {
        *(v10 + 40) = *(v55 + 4);
      }

      *(v10 + 88) = v66;
      *(v10 + 104) = v67;
      if (a3)
      {
        *a3 = 224;
      }
    }

    goto LABEL_88;
  }

  if ((*(v8 + 287) & 2) == 0)
  {
    goto LABEL_87;
  }

  v73 = 0;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v66 = 0u;
  v64 = 0u;
  memset(v65, 0, sizeof(v65));
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v57 = 0u;
  memset(v56, 0, sizeof(v56));
  memset(v55, 0, sizeof(v55));
  v53 = 0u;
  v54 = 0u;
  memset(buf, 0, sizeof(buf));
  v10 = malloc_type_malloc(0x70uLL, 0x81312322uLL);
  if (v10)
  {
    goto LABEL_25;
  }

  v13 = __nwlog_obj();
  os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
  *type = 136446210;
  v51 = "nw_protocol_aop2_offload_copy_info";
  v14 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v14);
  if (!result)
  {
    free(v14);
LABEL_25:
    if (nw_path_get_tcp_flow_statistics(*(v8 + 120), buf))
    {
      bzero(v10, 0x70uLL);
      *v10 = buf[0];
      *(v10 + 4) = buf[1];
      *(v10 + 1) = *&buf[2];
      *(v10 + 8) = *&buf[4];
      *(v10 + 20) = *(&v53 + 4);
      *(v10 + 28) = v54;
      v16 = *&buf[28];
      *(v10 + 32) = v55[0];
      *(v10 + 40) = *&buf[20];
      *(v10 + 48) = v16;
      *(v10 + 56) = *(v55 + 4);
      *(v10 + 72) = *(&v55[1] + 4);
      *(v10 + 104) = *(v65 + 12);
      *(v10 + 80) = *(v56 + 4);
      *(v10 + 96) = *(&v56[1] + 12);
      if (a3)
      {
        *a3 = 112;
      }

      goto LABEL_88;
    }

LABEL_80:
    if (!v10)
    {
LABEL_88:
      if (v6)
      {
        nw::release_if_needed<nw_protocol *>(v48);
      }

      return v10;
    }

    goto LABEL_86;
  }

LABEL_110:
  __break(1u);
  return result;
}

void sub_1822D8518(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  if (v30)
  {
    nw::release_if_needed<nw_protocol *>(&a19);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __Block_byref_object_copy__55(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t ___ZL34nw_protocol_aop2_offload_copy_infoP11nw_protocol23nw_protocol_info_type_tPm_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (nw_protocol_metadata_is_tls(v5))
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  }

  return 1;
}

uint64_t nw_protocol_aop2_offload_updated_path(uint64_t a1, uint64_t a2, void *a3)
{
  v67 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (!a1)
  {
    v38 = __nwlog_obj();
    *buf = 136446210;
    v60 = "nw_protocol_aop2_offload_updated_path";
    v39 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v54) = 0;
    if (__nwlog_fault(v39, type, &v54))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v40 = __nwlog_obj();
        v41 = type[0];
        if (os_log_type_enabled(v40, type[0]))
        {
          *buf = 136446210;
          v60 = "nw_protocol_aop2_offload_updated_path";
          _os_log_impl(&dword_181A37000, v40, v41, "%{public}s called with null protocol", buf, 0xCu);
        }
      }

      else if (v54 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v40 = __nwlog_obj();
        v45 = type[0];
        v46 = os_log_type_enabled(v40, type[0]);
        if (backtrace_string)
        {
          if (v46)
          {
            *buf = 136446466;
            v60 = "nw_protocol_aop2_offload_updated_path";
            v61 = 2082;
            v62 = backtrace_string;
            _os_log_impl(&dword_181A37000, v40, v45, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_110;
        }

        if (v46)
        {
          *buf = 136446210;
          v60 = "nw_protocol_aop2_offload_updated_path";
          _os_log_impl(&dword_181A37000, v40, v45, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v40 = __nwlog_obj();
        v49 = type[0];
        if (os_log_type_enabled(v40, type[0]))
        {
          *buf = 136446210;
          v60 = "nw_protocol_aop2_offload_updated_path";
          _os_log_impl(&dword_181A37000, v40, v49, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_110:
    if (v39)
    {
      free(v39);
    }

    v19 = 0;
    goto LABEL_58;
  }

  v7 = *(a1 + 40);
  v8 = a1;
  if (v7 == &nw_protocol_ref_counted_handle)
  {
    goto LABEL_6;
  }

  if (v7 != &nw_protocol_ref_counted_additional_handle)
  {
    LOBYTE(v8) = 0;
    v9 = 1;
    goto LABEL_10;
  }

  v8 = *(a1 + 64);
  if (v8)
  {
LABEL_6:
    v10 = *(v8 + 88);
    v9 = 0;
    if (v10)
    {
      *(v8 + 88) = v10 + 1;
    }

    LOBYTE(v8) = -1;
  }

  else
  {
    v9 = 1;
  }

  v7 = *(a1 + 40);
LABEL_10:
  v54 = a1;
  v55 = v8;
  v11 = a1;
  if (v7 != &nw_protocol_ref_counted_handle)
  {
    if (v7 != &nw_protocol_ref_counted_additional_handle)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v12 = gLogObj;
      *buf = 136446210;
      v60 = "nw_protocol_aop2_offload_updated_path";
      v13 = _os_log_send_and_compose_impl();

      type[0] = OS_LOG_TYPE_ERROR;
      BYTE4(v53) = 0;
      if (!__nwlog_fault(v13, type, &v53 + 4))
      {
        goto LABEL_53;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v14 = gLogObj;
        v15 = type[0];
        if (os_log_type_enabled(v14, type[0]))
        {
          *buf = 136446210;
          v60 = "nw_protocol_aop2_offload_updated_path";
          _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null aop2_offload", buf, 0xCu);
        }

LABEL_52:

        goto LABEL_53;
      }

      if (BYTE4(v53) != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v14 = gLogObj;
        v30 = type[0];
        if (os_log_type_enabled(v14, type[0]))
        {
          *buf = 136446210;
          v60 = "nw_protocol_aop2_offload_updated_path";
          _os_log_impl(&dword_181A37000, v14, v30, "%{public}s called with null aop2_offload, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_52;
      }

      v27 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v14 = gLogObj;
      v28 = type[0];
      v29 = os_log_type_enabled(v14, type[0]);
      if (!v27)
      {
        if (v29)
        {
          *buf = 136446210;
          v60 = "nw_protocol_aop2_offload_updated_path";
          _os_log_impl(&dword_181A37000, v14, v28, "%{public}s called with null aop2_offload, no backtrace", buf, 0xCu);
        }

        goto LABEL_52;
      }

      if (v29)
      {
        *buf = 136446466;
        v60 = "nw_protocol_aop2_offload_updated_path";
        v61 = 2082;
        v62 = v27;
        _os_log_impl(&dword_181A37000, v14, v28, "%{public}s called with null aop2_offload, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_44:

      free(v27);
      if (!v13)
      {
        goto LABEL_55;
      }

      goto LABEL_54;
    }

    v11 = *(a1 + 64);
  }

  if (!v5)
  {
    v42 = __nwlog_obj();
    *buf = 136446210;
    v60 = "nw_protocol_aop2_offload_updated_path";
    v13 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    BYTE4(v53) = 0;
    if (!__nwlog_fault(v13, type, &v53 + 4))
    {
LABEL_53:
      if (!v13)
      {
LABEL_55:
        v19 = 0;
        goto LABEL_56;
      }

LABEL_54:
      free(v13);
      goto LABEL_55;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v43 = type[0];
      if (os_log_type_enabled(v14, type[0]))
      {
        *buf = 136446210;
        v60 = "nw_protocol_aop2_offload_updated_path";
        _os_log_impl(&dword_181A37000, v14, v43, "%{public}s called with null path", buf, 0xCu);
      }

      goto LABEL_52;
    }

    if (BYTE4(v53) != 1)
    {
      v14 = __nwlog_obj();
      v50 = type[0];
      if (os_log_type_enabled(v14, type[0]))
      {
        *buf = 136446210;
        v60 = "nw_protocol_aop2_offload_updated_path";
        _os_log_impl(&dword_181A37000, v14, v50, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_52;
    }

    v27 = __nw_create_backtrace_string();
    v14 = __nwlog_obj();
    v47 = type[0];
    v48 = os_log_type_enabled(v14, type[0]);
    if (!v27)
    {
      if (v48)
      {
        *buf = 136446210;
        v60 = "nw_protocol_aop2_offload_updated_path";
        _os_log_impl(&dword_181A37000, v14, v47, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }

      goto LABEL_52;
    }

    if (v48)
    {
      *buf = 136446466;
      v60 = "nw_protocol_aop2_offload_updated_path";
      v61 = 2082;
      v62 = v27;
      _os_log_impl(&dword_181A37000, v14, v47, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_44;
  }

  objc_storeStrong((v11 + 104), a3);
  if ((nw_path_get_status(*(v11 + 104)) != nw_path_status_satisfied || (nw_path_is_viable(*(v11 + 104)) & 1) == 0) && *(v11 + 276) == 4 && nw_aop2_offload_aon_net_remove_flow(a1))
  {
    nw_protocol_aop2_offload_disconnected(a1, v16);
  }

  v17 = *(v11 + 32);
  if (!v17)
  {
    goto LABEL_79;
  }

  v18 = *(v17 + 24);
  if (!v18)
  {
    goto LABEL_79;
  }

  v19 = 1;
  if (v11)
  {
    if (*(v18 + 168))
    {
      v20 = *(v11 + 104);
      if (v20)
      {
        v21 = *(v11 + 120);
        if (v21)
        {
          v53 = 0;
          v52 = 0;
          if (nw_path_flow_registration_get_ctl_command(v20, v21, &v53 + 1, &v53, &v52))
          {
            if (gLogDatapath == 1)
            {
              v51 = __nwlog_obj();
              if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136446978;
                v60 = "nw_protocol_aop2_offload_updated_path";
                v61 = 2082;
                v62 = (v11 + 288);
                v63 = 1024;
                v64 = HIDWORD(v53);
                v65 = 1024;
                v66 = v53;
                _os_log_impl(&dword_181A37000, v51, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s protocol event %u=%u", buf, 0x22u);
              }
            }

            if (HIDWORD(v53) == 5)
            {
              nw::share(type, a1);
              v22 = *(a1 + 40);
              if (v22 != &nw_protocol_ref_counted_handle)
              {
                if (v22 != &nw_protocol_ref_counted_additional_handle)
                {
                  v23 = __nwlog_obj();
                  *buf = 136446210;
                  v60 = "nw_aop2_offload_aon_net_update_path_mtu";
                  v24 = _os_log_send_and_compose_impl();

                  v57 = OS_LOG_TYPE_ERROR;
                  v56 = 0;
                  if (__nwlog_fault(v24, &v57, &v56))
                  {
                    if (v57 == OS_LOG_TYPE_FAULT)
                    {
                      v25 = __nwlog_obj();
                      v26 = v57;
                      if (os_log_type_enabled(v25, v57))
                      {
                        *buf = 136446210;
                        v60 = "nw_aop2_offload_aon_net_update_path_mtu";
                        _os_log_impl(&dword_181A37000, v25, v26, "%{public}s called with null aop2_offload", buf, 0xCu);
                      }
                    }

                    else if (v56 == 1)
                    {
                      v34 = __nw_create_backtrace_string();
                      v25 = __nwlog_obj();
                      v35 = v57;
                      v36 = os_log_type_enabled(v25, v57);
                      if (v34)
                      {
                        if (v36)
                        {
                          *buf = 136446466;
                          v60 = "nw_aop2_offload_aon_net_update_path_mtu";
                          v61 = 2082;
                          v62 = v34;
                          _os_log_impl(&dword_181A37000, v25, v35, "%{public}s called with null aop2_offload, dumping backtrace:%{public}s", buf, 0x16u);
                        }

                        free(v34);
                        goto LABEL_75;
                      }

                      if (v36)
                      {
                        *buf = 136446210;
                        v60 = "nw_aop2_offload_aon_net_update_path_mtu";
                        _os_log_impl(&dword_181A37000, v25, v35, "%{public}s called with null aop2_offload, no backtrace", buf, 0xCu);
                      }
                    }

                    else
                    {
                      v25 = __nwlog_obj();
                      v37 = v57;
                      if (os_log_type_enabled(v25, v57))
                      {
                        *buf = 136446210;
                        v60 = "nw_aop2_offload_aon_net_update_path_mtu";
                        _os_log_impl(&dword_181A37000, v25, v37, "%{public}s called with null aop2_offload, backtrace limit exceeded", buf, 0xCu);
                      }
                    }
                  }

LABEL_75:
                  if (v24)
                  {
                    free(v24);
                  }

LABEL_77:
                  if (type[8])
                  {
                    nw::release_if_needed<nw_protocol *>(type);
                  }

                  goto LABEL_79;
                }

                a1 = *(a1 + 64);
              }

              v32 = aon_net_path_update();
              if (v32)
              {
                v33 = __nwlog_obj();
                if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136446722;
                  v60 = "nw_aop2_offload_aon_net_update_path_mtu";
                  v61 = 2082;
                  v62 = (a1 + 288);
                  v63 = 1024;
                  v64 = v32;
                  _os_log_impl(&dword_181A37000, v33, OS_LOG_TYPE_ERROR, "%{public}s %{public}s aon networking path update failed with error %u", buf, 0x1Cu);
                }
              }

              goto LABEL_77;
            }
          }

LABEL_79:
          v19 = 1;
          if (v9)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        }
      }
    }
  }

LABEL_56:
  if ((v9 & 1) == 0)
  {
LABEL_57:
    nw::release_if_needed<nw_protocol *>(&v54);
  }

LABEL_58:

  return v19;
}

void sub_1822D920C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a20)
  {
    nw::release_if_needed<nw_protocol *>(&a19);
  }

  if ((v21 & 1) == 0)
  {
    nw::release_if_needed<nw_protocol *>(&a16);
  }

  _Unwind_Resume(a1);
}

uint64_t nw_aop2_offload_aon_net_remove_flow(nw_protocol *a1)
{
  v35 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = a1;
    handle = a1->handle;
    v3 = a1;
    if (handle == &nw_protocol_ref_counted_handle)
    {
      goto LABEL_6;
    }

    if (handle != &nw_protocol_ref_counted_additional_handle)
    {
      LOBYTE(v3) = 0;
      v4 = 1;
      goto LABEL_10;
    }

    v3 = *a1[1].flow_id;
    if (v3)
    {
LABEL_6:
      callbacks = v3[1].callbacks;
      v4 = 0;
      if (callbacks)
      {
        v3[1].callbacks = (&callbacks->add_input_handler + 1);
      }

      LOBYTE(v3) = -1;
    }

    else
    {
      v4 = 1;
    }

    handle = a1->handle;
LABEL_10:
    *v26 = a1;
    v27 = v3;
    if (handle != &nw_protocol_ref_counted_handle)
    {
      if (handle != &nw_protocol_ref_counted_additional_handle)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v6 = gLogObj;
        *buf = 136446210;
        v30 = "nw_aop2_offload_aon_net_remove_flow";
        v7 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v25 = 0;
        if (__nwlog_fault(v7, &type, &v25))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v8 = gLogObj;
            v9 = type;
            if (os_log_type_enabled(v8, type))
            {
              *buf = 136446210;
              v30 = "nw_aop2_offload_aon_net_remove_flow";
              _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null aop2_offload", buf, 0xCu);
            }
          }

          else if (v25 == 1)
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
                *buf = 136446466;
                v30 = "nw_aop2_offload_aon_net_remove_flow";
                v31 = 2082;
                p_output_handler = backtrace_string;
                _os_log_impl(&dword_181A37000, v8, v14, "%{public}s called with null aop2_offload, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
              if (!v7)
              {
                goto LABEL_19;
              }

              goto LABEL_18;
            }

            if (v15)
            {
              *buf = 136446210;
              v30 = "nw_aop2_offload_aon_net_remove_flow";
              _os_log_impl(&dword_181A37000, v8, v14, "%{public}s called with null aop2_offload, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v8 = gLogObj;
            v16 = type;
            if (os_log_type_enabled(v8, type))
            {
              *buf = 136446210;
              v30 = "nw_aop2_offload_aon_net_remove_flow";
              _os_log_impl(&dword_181A37000, v8, v16, "%{public}s called with null aop2_offload, backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

        if (!v7)
        {
LABEL_19:
          v10 = 22;
LABEL_25:
          if ((v4 & 1) == 0)
          {
            nw::release_if_needed<nw_protocol *>(v26);
          }

          return v10;
        }

LABEL_18:
        free(v7);
        goto LABEL_19;
      }

      v1 = *a1[1].flow_id;
    }

    v10 = aon_net_remove_flow();
    if (v10)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v30 = "nw_aop2_offload_aon_net_remove_flow";
        v31 = 2082;
        p_output_handler = &v1[4].output_handler;
        v33 = 1024;
        v34 = v10;
        _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_ERROR, "%{public}s %{public}s aon remove flow failed with error %u", buf, 0x1Cu);
      }
    }

    goto LABEL_25;
  }

  v17 = __nwlog_obj();
  *buf = 136446210;
  v30 = "nw_aop2_offload_aon_net_remove_flow";
  v18 = _os_log_send_and_compose_impl();

  v26[0] = OS_LOG_TYPE_ERROR;
  type = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v18, v26, &type))
  {
    if (v26[0] == OS_LOG_TYPE_FAULT)
    {
      v19 = __nwlog_obj();
      v20 = v26[0];
      if (os_log_type_enabled(v19, v26[0]))
      {
        *buf = 136446210;
        v30 = "nw_aop2_offload_aon_net_remove_flow";
        _os_log_impl(&dword_181A37000, v19, v20, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (type == OS_LOG_TYPE_INFO)
    {
      v21 = __nw_create_backtrace_string();
      v19 = __nwlog_obj();
      v22 = v26[0];
      v23 = os_log_type_enabled(v19, v26[0]);
      if (v21)
      {
        if (v23)
        {
          *buf = 136446466;
          v30 = "nw_aop2_offload_aon_net_remove_flow";
          v31 = 2082;
          p_output_handler = v21;
          _os_log_impl(&dword_181A37000, v19, v22, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v21);
        goto LABEL_57;
      }

      if (v23)
      {
        *buf = 136446210;
        v30 = "nw_aop2_offload_aon_net_remove_flow";
        _os_log_impl(&dword_181A37000, v19, v22, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v19 = __nwlog_obj();
      v24 = v26[0];
      if (os_log_type_enabled(v19, v26[0]))
      {
        *buf = 136446210;
        v30 = "nw_aop2_offload_aon_net_remove_flow";
        _os_log_impl(&dword_181A37000, v19, v24, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_57:
  if (v18)
  {
    free(v18);
  }

  return 22;
}

void sub_1822D989C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if ((v14 & 1) == 0)
  {
    nw::release_if_needed<nw_protocol *>(&a14);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void nw_protocol_aop2_offload_disconnected(nw_protocol *a1, nw_protocol *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    v4 = a1;
    if (handle == &nw_protocol_ref_counted_handle)
    {
      goto LABEL_6;
    }

    if (handle != &nw_protocol_ref_counted_additional_handle)
    {
      LOBYTE(v4) = 0;
      v5 = 1;
      goto LABEL_10;
    }

    v4 = *a1[1].flow_id;
    if (v4)
    {
LABEL_6:
      callbacks = v4[1].callbacks;
      v5 = 0;
      if (callbacks)
      {
        v4[1].callbacks = (&callbacks->add_input_handler + 1);
      }

      LOBYTE(v4) = -1;
    }

    else
    {
      v5 = 1;
    }

    handle = a1->handle;
LABEL_10:
    *v30 = a1;
    v31 = v4;
    v7 = a1;
    if (handle != &nw_protocol_ref_counted_handle)
    {
      if (handle != &nw_protocol_ref_counted_additional_handle)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        *buf = 136446210;
        v34 = "nw_protocol_aop2_offload_disconnected";
        v9 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v29 = 0;
        if (__nwlog_fault(v9, &type, &v29))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v10 = gLogObj;
            v11 = type;
            if (os_log_type_enabled(v10, type))
            {
              *buf = 136446210;
              v34 = "nw_protocol_aop2_offload_disconnected";
              _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null aop2_offload", buf, 0xCu);
            }
          }

          else if (v29 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v10 = gLogObj;
            v18 = type;
            v19 = os_log_type_enabled(v10, type);
            if (backtrace_string)
            {
              if (v19)
              {
                *buf = 136446466;
                v34 = "nw_protocol_aop2_offload_disconnected";
                v35 = 2082;
                p_output_handler = backtrace_string;
                _os_log_impl(&dword_181A37000, v10, v18, "%{public}s called with null aop2_offload, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
              if (!v9)
              {
                goto LABEL_32;
              }

LABEL_18:
              free(v9);
LABEL_32:
              if ((v5 & 1) == 0)
              {
                nw::release_if_needed<nw_protocol *>(v30);
              }

              return;
            }

            if (v19)
            {
              *buf = 136446210;
              v34 = "nw_protocol_aop2_offload_disconnected";
              _os_log_impl(&dword_181A37000, v10, v18, "%{public}s called with null aop2_offload, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v10 = gLogObj;
            v20 = type;
            if (os_log_type_enabled(v10, type))
            {
              *buf = 136446210;
              v34 = "nw_protocol_aop2_offload_disconnected";
              _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null aop2_offload, backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

        if (!v9)
        {
          goto LABEL_32;
        }

        goto LABEL_18;
      }

      v7 = *a1[1].flow_id;
    }

    identifier_high = HIDWORD(v7[4].identifier);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v13 = gLogObj;
    v14 = v13;
    if (identifier_high == 5)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v34 = "nw_protocol_aop2_offload_disconnected";
        v35 = 2082;
        p_output_handler = &v7[4].output_handler;
        _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_ERROR, "%{public}s %{public}s ignoring disconnected, aop2_offload state is already disconnected", buf, 0x16u);
      }
    }

    else
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *&v7[4].flow_id[12];
        *buf = 136446722;
        v34 = "nw_protocol_aop2_offload_disconnected";
        v35 = 2082;
        p_output_handler = &v7[4].output_handler;
        v37 = 1024;
        v38 = v15;
        _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s disconnected flow tag 0x%x", buf, 0x1Cu);
      }

      if (_nw_signposts_once != -1)
      {
        dispatch_once(&_nw_signposts_once, &__block_literal_global_61);
      }

      if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
      {
        kdebug_trace();
      }

      HIDWORD(v7[4].identifier) = 5;
      input_handler = nw_protocol_get_input_handler(a1);
      nw_protocol_disconnected_quiet(input_handler, a1);
    }

    goto LABEL_32;
  }

  v21 = __nwlog_obj();
  *buf = 136446210;
  v34 = "nw_protocol_aop2_offload_disconnected";
  v22 = _os_log_send_and_compose_impl();

  v30[0] = OS_LOG_TYPE_ERROR;
  type = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v22, v30, &type))
  {
    if (v30[0] == OS_LOG_TYPE_FAULT)
    {
      v23 = __nwlog_obj();
      v24 = v30[0];
      if (os_log_type_enabled(v23, v30[0]))
      {
        *buf = 136446210;
        v34 = "nw_protocol_aop2_offload_disconnected";
        _os_log_impl(&dword_181A37000, v23, v24, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (type == OS_LOG_TYPE_INFO)
    {
      v25 = __nw_create_backtrace_string();
      v23 = __nwlog_obj();
      v26 = v30[0];
      v27 = os_log_type_enabled(v23, v30[0]);
      if (v25)
      {
        if (v27)
        {
          *buf = 136446466;
          v34 = "nw_protocol_aop2_offload_disconnected";
          v35 = 2082;
          p_output_handler = v25;
          _os_log_impl(&dword_181A37000, v23, v26, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v25);
        goto LABEL_64;
      }

      if (v27)
      {
        *buf = 136446210;
        v34 = "nw_protocol_aop2_offload_disconnected";
        _os_log_impl(&dword_181A37000, v23, v26, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v23 = __nwlog_obj();
      v28 = v30[0];
      if (os_log_type_enabled(v23, v30[0]))
      {
        *buf = 136446210;
        v34 = "nw_protocol_aop2_offload_disconnected";
        _os_log_impl(&dword_181A37000, v23, v28, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_64:
  if (v22)
  {
    free(v22);
  }
}

void sub_1822D9FE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if ((v14 & 1) == 0)
  {
    nw::release_if_needed<nw_protocol *>(&a14);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL ___ZL24__nw_signpost_is_enabledv_block_invoke()
{
  result = networkd_settings_get_BOOL(nw_setting_enable_signposts);
  _nw_signposts_enabled = result;
  return result;
}

uint64_t nw_protocol_aop2_offload_reset(nw_protocol *a1, nw_protocol *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v3 = gLogObj;
  *buf = 136446722;
  v17 = "nw_protocol_aop2_offload_reset";
  v18 = 1042;
  v19 = 16;
  v20 = 2098;
  v21 = a2;
  v4 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (__nwlog_fault(v4, &type, &v14))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_17;
      }

      *buf = 136446722;
      v17 = "nw_protocol_aop2_offload_reset";
      v18 = 1042;
      v19 = 16;
      v20 = 2098;
      v21 = a2;
      v7 = "%{public}s nw_protocol_aop2_offload_reset called for %{public,uuid_t}.16P";
LABEL_15:
      v12 = v5;
      v13 = v6;
      goto LABEL_16;
    }

    if (v14 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_17;
      }

      *buf = 136446722;
      v17 = "nw_protocol_aop2_offload_reset";
      v18 = 1042;
      v19 = 16;
      v20 = 2098;
      v21 = a2;
      v7 = "%{public}s nw_protocol_aop2_offload_reset called for %{public,uuid_t}.16P, backtrace limit exceeded";
      goto LABEL_15;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    v9 = type;
    v10 = os_log_type_enabled(v5, type);
    if (!backtrace_string)
    {
      if (!v10)
      {
LABEL_17:

        if (!v4)
        {
          return 1;
        }

        goto LABEL_11;
      }

      *buf = 136446722;
      v17 = "nw_protocol_aop2_offload_reset";
      v18 = 1042;
      v19 = 16;
      v20 = 2098;
      v21 = a2;
      v7 = "%{public}s nw_protocol_aop2_offload_reset called for %{public,uuid_t}.16P, no backtrace";
      v12 = v5;
      v13 = v9;
LABEL_16:
      _os_log_impl(&dword_181A37000, v12, v13, v7, buf, 0x1Cu);
      goto LABEL_17;
    }

    if (v10)
    {
      *buf = 136446978;
      v17 = "nw_protocol_aop2_offload_reset";
      v18 = 1042;
      v19 = 16;
      v20 = 2098;
      v21 = a2;
      v22 = 2082;
      v23 = backtrace_string;
      _os_log_impl(&dword_181A37000, v5, v9, "%{public}s nw_protocol_aop2_offload_reset called for %{public,uuid_t}.16P, dumping backtrace:%{public}s", buf, 0x26u);
    }

    free(backtrace_string);
  }

  if (v4)
  {
LABEL_11:
    free(v4);
  }

  return 1;
}

void nw_protocol_aop2_offload_disconnect(nw_protocol *a1, nw_protocol *a2)
{
  v57 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    v4 = a1;
    if (handle == &nw_protocol_ref_counted_handle)
    {
      goto LABEL_6;
    }

    if (handle != &nw_protocol_ref_counted_additional_handle)
    {
      LOBYTE(v4) = 0;
      v5 = 1;
      goto LABEL_10;
    }

    v4 = *a1[1].flow_id;
    if (v4)
    {
LABEL_6:
      callbacks = v4[1].callbacks;
      v5 = 0;
      if (callbacks)
      {
        v4[1].callbacks = (&callbacks->add_input_handler + 1);
      }

      LOBYTE(v4) = -1;
    }

    else
    {
      v5 = 1;
    }

    handle = a1->handle;
LABEL_10:
    v45 = a1;
    v46 = v4;
    v7 = a1;
    if (handle != &nw_protocol_ref_counted_handle)
    {
      if (handle != &nw_protocol_ref_counted_additional_handle)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        *buf = 136446210;
        v52 = "nw_protocol_aop2_offload_disconnect";
        v9 = _os_log_send_and_compose_impl();

        type[0] = OS_LOG_TYPE_ERROR;
        v48 = OS_LOG_TYPE_DEFAULT;
        if (__nwlog_fault(v9, type, &v48))
        {
          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v10 = gLogObj;
            v11 = type[0];
            if (os_log_type_enabled(v10, type[0]))
            {
              *buf = 136446210;
              v52 = "nw_protocol_aop2_offload_disconnect";
              _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null aop2_offload", buf, 0xCu);
            }
          }

          else if (v48 == OS_LOG_TYPE_INFO)
          {
            backtrace_string = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v10 = gLogObj;
            v21 = type[0];
            v22 = os_log_type_enabled(v10, type[0]);
            if (backtrace_string)
            {
              if (v22)
              {
                *buf = 136446466;
                v52 = "nw_protocol_aop2_offload_disconnect";
                v53 = 2082;
                p_output_handler = backtrace_string;
                _os_log_impl(&dword_181A37000, v10, v21, "%{public}s called with null aop2_offload, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
              if (!v9)
              {
                goto LABEL_87;
              }

LABEL_18:
              free(v9);
              goto LABEL_87;
            }

            if (v22)
            {
              *buf = 136446210;
              v52 = "nw_protocol_aop2_offload_disconnect";
              _os_log_impl(&dword_181A37000, v10, v21, "%{public}s called with null aop2_offload, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v10 = gLogObj;
            v23 = type[0];
            if (os_log_type_enabled(v10, type[0]))
            {
              *buf = 136446210;
              v52 = "nw_protocol_aop2_offload_disconnect";
              _os_log_impl(&dword_181A37000, v10, v23, "%{public}s called with null aop2_offload, backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

        if (!v9)
        {
          goto LABEL_87;
        }

        goto LABEL_18;
      }

      v7 = *a1[1].flow_id;
    }

    identifier_high = HIDWORD(v7[4].identifier);
    if (_nw_signposts_once != -1)
    {
      dispatch_once(&_nw_signposts_once, &__block_literal_global_61);
    }

    if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
    {
      kdebug_trace();
    }

    HIDWORD(v7[4].identifier) = 4;
    if (identifier_high >= 2)
    {
      if (nw_path_get_status(v7[1].handle) == nw_path_status_satisfied && (nw_path_is_viable(v7[1].handle) & 1) != 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v13 = gLogObj;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = *&v7[4].flow_id[12];
          *buf = 136446722;
          v52 = "nw_protocol_aop2_offload_disconnect";
          v53 = 2082;
          p_output_handler = &v7[4].output_handler;
          v55 = 1024;
          v56 = v14;
          _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s disconnect flow tag 0x%x", buf, 0x1Cu);
        }

        v15 = a1->handle;
        v16 = a1;
        if (v15 == &nw_protocol_ref_counted_handle)
        {
          goto LABEL_51;
        }

        if (v15 != &nw_protocol_ref_counted_additional_handle)
        {
          LOBYTE(v16) = 0;
          v17 = 1;
          goto LABEL_55;
        }

        v16 = *a1[1].flow_id;
        if (v16)
        {
LABEL_51:
          v24 = v16[1].callbacks;
          v17 = 0;
          if (v24)
          {
            v16[1].callbacks = (&v24->add_input_handler + 1);
          }

          LOBYTE(v16) = -1;
        }

        else
        {
          v17 = 1;
        }

        v15 = a1->handle;
LABEL_55:
        *type = a1;
        v50 = v16;
        v25 = a1;
        if (v15 != &nw_protocol_ref_counted_handle)
        {
          if (v15 != &nw_protocol_ref_counted_additional_handle)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v26 = gLogObj;
            *buf = 136446210;
            v52 = "nw_aop2_offload_aon_net_disconnect_flow";
            v27 = _os_log_send_and_compose_impl();

            v48 = OS_LOG_TYPE_ERROR;
            v47 = 0;
            if (__nwlog_fault(v27, &v48, &v47))
            {
              if (v48 == OS_LOG_TYPE_FAULT)
              {
                v28 = __nwlog_obj();
                v29 = v48;
                if (os_log_type_enabled(v28, v48))
                {
                  *buf = 136446210;
                  v52 = "nw_aop2_offload_aon_net_disconnect_flow";
                  _os_log_impl(&dword_181A37000, v28, v29, "%{public}s called with null aop2_offload", buf, 0xCu);
                }
              }

              else if (v47 == 1)
              {
                v33 = __nw_create_backtrace_string();
                v28 = __nwlog_obj();
                v34 = v48;
                v35 = os_log_type_enabled(v28, v48);
                if (v33)
                {
                  if (v35)
                  {
                    *buf = 136446466;
                    v52 = "nw_aop2_offload_aon_net_disconnect_flow";
                    v53 = 2082;
                    p_output_handler = v33;
                    _os_log_impl(&dword_181A37000, v28, v34, "%{public}s called with null aop2_offload, dumping backtrace:%{public}s", buf, 0x16u);
                  }

                  free(v33);
                  goto LABEL_80;
                }

                if (v35)
                {
                  *buf = 136446210;
                  v52 = "nw_aop2_offload_aon_net_disconnect_flow";
                  _os_log_impl(&dword_181A37000, v28, v34, "%{public}s called with null aop2_offload, no backtrace", buf, 0xCu);
                }
              }

              else
              {
                v28 = __nwlog_obj();
                v36 = v48;
                if (os_log_type_enabled(v28, v48))
                {
                  *buf = 136446210;
                  v52 = "nw_aop2_offload_aon_net_disconnect_flow";
                  _os_log_impl(&dword_181A37000, v28, v36, "%{public}s called with null aop2_offload, backtrace limit exceeded", buf, 0xCu);
                }
              }
            }

LABEL_80:
            if (v27)
            {
              free(v27);
            }

            goto LABEL_82;
          }

          v25 = *a1[1].flow_id;
        }

        v30 = aon_net_disconnect_flow();
        if (!v30)
        {
          v32 = 1;
          goto LABEL_83;
        }

        v31 = __nwlog_obj();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          v52 = "nw_aop2_offload_aon_net_disconnect_flow";
          v53 = 2082;
          p_output_handler = &v25[4].output_handler;
          v55 = 1024;
          v56 = v30;
          _os_log_impl(&dword_181A37000, v31, OS_LOG_TYPE_ERROR, "%{public}s %{public}s aon disconnect flow failed with error %u", buf, 0x1Cu);
        }

LABEL_82:
        v32 = 0;
LABEL_83:
        if ((v17 & 1) == 0)
        {
          nw::release_if_needed<nw_protocol *>(type);
        }

        if (v32)
        {
          goto LABEL_87;
        }

        goto LABEL_86;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v18 = gLogObj;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *&v7[4].flow_id[12];
        *buf = 136446722;
        v52 = "nw_protocol_aop2_offload_disconnect";
        v53 = 2082;
        p_output_handler = &v7[4].output_handler;
        v55 = 1024;
        v56 = v19;
        _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s remove flow tag 0x%x", buf, 0x1Cu);
      }

      if (!nw_aop2_offload_aon_net_remove_flow(a1))
      {
        goto LABEL_87;
      }
    }

LABEL_86:
    nw_protocol_aop2_offload_disconnected(a1, a2);
LABEL_87:
    if ((v5 & 1) == 0)
    {
      nw::release_if_needed<nw_protocol *>(&v45);
    }

    return;
  }

  v37 = __nwlog_obj();
  *buf = 136446210;
  v52 = "nw_protocol_aop2_offload_disconnect";
  v38 = _os_log_send_and_compose_impl();

  type[0] = OS_LOG_TYPE_ERROR;
  LOBYTE(v45) = 0;
  if (__nwlog_fault(v38, type, &v45))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v39 = __nwlog_obj();
      v40 = type[0];
      if (os_log_type_enabled(v39, type[0]))
      {
        *buf = 136446210;
        v52 = "nw_protocol_aop2_offload_disconnect";
        _os_log_impl(&dword_181A37000, v39, v40, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v45 == 1)
    {
      v41 = __nw_create_backtrace_string();
      v39 = __nwlog_obj();
      v42 = type[0];
      v43 = os_log_type_enabled(v39, type[0]);
      if (v41)
      {
        if (v43)
        {
          *buf = 136446466;
          v52 = "nw_protocol_aop2_offload_disconnect";
          v53 = 2082;
          p_output_handler = v41;
          _os_log_impl(&dword_181A37000, v39, v42, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v41);
        goto LABEL_106;
      }

      if (v43)
      {
        *buf = 136446210;
        v52 = "nw_protocol_aop2_offload_disconnect";
        _os_log_impl(&dword_181A37000, v39, v42, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v39 = __nwlog_obj();
      v44 = type[0];
      if (os_log_type_enabled(v39, type[0]))
      {
        *buf = 136446210;
        v52 = "nw_protocol_aop2_offload_disconnect";
        _os_log_impl(&dword_181A37000, v39, v44, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_106:
  if (v38)
  {
    free(v38);
  }
}

void sub_1822DAE68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if ((v18 & 1) == 0)
  {
    nw::release_if_needed<nw_protocol *>(&a17);
  }

  if (v17)
  {
    _Unwind_Resume(exception_object);
  }

  nw::release_if_needed<nw_protocol *>(&a14);
  _Unwind_Resume(exception_object);
}

void nw_protocol_aop2_offload_connected(nw_protocol *a1, nw_protocol *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    v4 = a1;
    if (handle == &nw_protocol_ref_counted_handle)
    {
      goto LABEL_6;
    }

    if (handle != &nw_protocol_ref_counted_additional_handle)
    {
      LOBYTE(v4) = 0;
      v5 = 1;
      goto LABEL_10;
    }

    v4 = *a1[1].flow_id;
    if (v4)
    {
LABEL_6:
      callbacks = v4[1].callbacks;
      v5 = 0;
      if (callbacks)
      {
        v4[1].callbacks = (&callbacks->add_input_handler + 1);
      }

      LOBYTE(v4) = -1;
    }

    else
    {
      v5 = 1;
    }

    handle = a1->handle;
LABEL_10:
    *v33 = a1;
    v34 = v4;
    v7 = a1;
    if (handle != &nw_protocol_ref_counted_handle)
    {
      if (handle != &nw_protocol_ref_counted_additional_handle)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        *buf = 136446210;
        v37 = "nw_protocol_aop2_offload_connected";
        v9 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v32 = 0;
        if (__nwlog_fault(v9, &type, &v32))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v10 = gLogObj;
            v11 = type;
            if (os_log_type_enabled(v10, type))
            {
              *buf = 136446210;
              v37 = "nw_protocol_aop2_offload_connected";
              _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null aop2_offload", buf, 0xCu);
            }
          }

          else if (v32 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v10 = gLogObj;
            v18 = type;
            v19 = os_log_type_enabled(v10, type);
            if (backtrace_string)
            {
              if (v19)
              {
                *buf = 136446466;
                v37 = "nw_protocol_aop2_offload_connected";
                v38 = 2082;
                p_output_handler = backtrace_string;
                _os_log_impl(&dword_181A37000, v10, v18, "%{public}s called with null aop2_offload, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
              if (!v9)
              {
                goto LABEL_49;
              }

LABEL_18:
              free(v9);
LABEL_49:
              if ((v5 & 1) == 0)
              {
                nw::release_if_needed<nw_protocol *>(v33);
              }

              return;
            }

            if (v19)
            {
              *buf = 136446210;
              v37 = "nw_protocol_aop2_offload_connected";
              _os_log_impl(&dword_181A37000, v10, v18, "%{public}s called with null aop2_offload, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v10 = gLogObj;
            v23 = type;
            if (os_log_type_enabled(v10, type))
            {
              *buf = 136446210;
              v37 = "nw_protocol_aop2_offload_connected";
              _os_log_impl(&dword_181A37000, v10, v23, "%{public}s called with null aop2_offload, backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

        if (!v9)
        {
          goto LABEL_49;
        }

        goto LABEL_18;
      }

      v7 = *a1[1].flow_id;
    }

    default_input_handler = a1->default_input_handler;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v13 = gLogObj;
    v14 = v13;
    if (default_input_handler)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *&v7[4].flow_id[12];
        *buf = 136446722;
        v37 = "nw_protocol_aop2_offload_connected";
        v38 = 2082;
        p_output_handler = &v7[4].output_handler;
        v40 = 1024;
        LODWORD(v41) = v15;
        _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s connected flow tag 0x%x", buf, 0x1Cu);
      }

      if (_nw_signposts_once != -1)
      {
        dispatch_once(&_nw_signposts_once, &__block_literal_global_61);
      }

      if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
      {
        kdebug_trace();
      }

      if (HIDWORD(v7[4].identifier) == 2)
      {
        HIDWORD(v7[4].identifier) = 3;
        input_handler = nw_protocol_get_input_handler(a1);
        nw_protocol_connected(input_handler, a1);
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v20 = gLogObj;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          identifier_high = HIDWORD(v7[4].identifier);
          if (identifier_high > 5)
          {
            v22 = "unknown";
          }

          else
          {
            v22 = off_1E6A2B0E8[identifier_high];
          }

          *buf = 136446722;
          v37 = "nw_protocol_aop2_offload_connected";
          v38 = 2082;
          p_output_handler = &v7[4].output_handler;
          v40 = 2080;
          v41 = v22;
          _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_ERROR, "%{public}s %{public}s ignoring connected, aop2_offload state %s", buf, 0x20u);
        }
      }
    }

    else
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v37 = "nw_protocol_aop2_offload_connected";
        v38 = 2082;
        p_output_handler = &v7[4].output_handler;
        _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_ERROR, "%{public}s %{public}s No input handler found, ignoring connected call", buf, 0x16u);
      }
    }

    goto LABEL_49;
  }

  v24 = __nwlog_obj();
  *buf = 136446210;
  v37 = "nw_protocol_aop2_offload_connected";
  v25 = _os_log_send_and_compose_impl();

  v33[0] = OS_LOG_TYPE_ERROR;
  type = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v25, v33, &type))
  {
    if (v33[0] == OS_LOG_TYPE_FAULT)
    {
      v26 = __nwlog_obj();
      v27 = v33[0];
      if (os_log_type_enabled(v26, v33[0]))
      {
        *buf = 136446210;
        v37 = "nw_protocol_aop2_offload_connected";
        _os_log_impl(&dword_181A37000, v26, v27, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (type == OS_LOG_TYPE_INFO)
    {
      v28 = __nw_create_backtrace_string();
      v26 = __nwlog_obj();
      v29 = v33[0];
      v30 = os_log_type_enabled(v26, v33[0]);
      if (v28)
      {
        if (v30)
        {
          *buf = 136446466;
          v37 = "nw_protocol_aop2_offload_connected";
          v38 = 2082;
          p_output_handler = v28;
          _os_log_impl(&dword_181A37000, v26, v29, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v28);
        goto LABEL_71;
      }

      if (v30)
      {
        *buf = 136446210;
        v37 = "nw_protocol_aop2_offload_connected";
        _os_log_impl(&dword_181A37000, v26, v29, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v26 = __nwlog_obj();
      v31 = v33[0];
      if (os_log_type_enabled(v26, v33[0]))
      {
        *buf = 136446210;
        v37 = "nw_protocol_aop2_offload_connected";
        _os_log_impl(&dword_181A37000, v26, v31, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_71:
  if (v25)
  {
    free(v25);
  }
}

void sub_1822DB68C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if ((v14 & 1) == 0)
  {
    nw::release_if_needed<nw_protocol *>(&a14);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t nw_protocol_aop2_offload_connect(nw_protocol *a1, nw_protocol *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v22 = __nwlog_obj();
    *buf = 136446210;
    v35 = "nw_protocol_aop2_offload_connect";
    v23 = _os_log_send_and_compose_impl();

    v31[0] = OS_LOG_TYPE_ERROR;
    type = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v23, v31, &type))
    {
      if (v31[0] == OS_LOG_TYPE_FAULT)
      {
        v24 = __nwlog_obj();
        v25 = v31[0];
        if (os_log_type_enabled(v24, v31[0]))
        {
          *buf = 136446210;
          v35 = "nw_protocol_aop2_offload_connect";
          _os_log_impl(&dword_181A37000, v24, v25, "%{public}s called with null protocol", buf, 0xCu);
        }
      }

      else if (type == OS_LOG_TYPE_INFO)
      {
        backtrace_string = __nw_create_backtrace_string();
        v24 = __nwlog_obj();
        v27 = v31[0];
        v28 = os_log_type_enabled(v24, v31[0]);
        if (backtrace_string)
        {
          if (v28)
          {
            *buf = 136446466;
            v35 = "nw_protocol_aop2_offload_connect";
            v36 = 2082;
            p_output_handler = backtrace_string;
            _os_log_impl(&dword_181A37000, v24, v27, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_69;
        }

        if (v28)
        {
          *buf = 136446210;
          v35 = "nw_protocol_aop2_offload_connect";
          _os_log_impl(&dword_181A37000, v24, v27, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v24 = __nwlog_obj();
        v29 = v31[0];
        if (os_log_type_enabled(v24, v31[0]))
        {
          *buf = 136446210;
          v35 = "nw_protocol_aop2_offload_connect";
          _os_log_impl(&dword_181A37000, v24, v29, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_69:
    if (v23)
    {
      free(v23);
    }

    return 0;
  }

  handle = a1->handle;
  v4 = a1;
  if (handle == &nw_protocol_ref_counted_handle)
  {
    goto LABEL_6;
  }

  if (handle == &nw_protocol_ref_counted_additional_handle)
  {
    v4 = *a1[1].flow_id;
    if (!v4)
    {
      v5 = 1;
LABEL_9:
      handle = a1->handle;
      goto LABEL_10;
    }

LABEL_6:
    callbacks = v4[1].callbacks;
    v5 = 0;
    if (callbacks)
    {
      v4[1].callbacks = (&callbacks->add_input_handler + 1);
    }

    LOBYTE(v4) = -1;
    goto LABEL_9;
  }

  LOBYTE(v4) = 0;
  v5 = 1;
LABEL_10:
  *v31 = a1;
  v32 = v4;
  v7 = a1;
  if (handle != &nw_protocol_ref_counted_handle)
  {
    if (handle != &nw_protocol_ref_counted_additional_handle)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      *buf = 136446210;
      v35 = "nw_protocol_aop2_offload_connect";
      v9 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v30 = 0;
      if (!__nwlog_fault(v9, &type, &v30))
      {
        goto LABEL_17;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v35 = "nw_protocol_aop2_offload_connect";
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null aop2_offload", buf, 0xCu);
        }

LABEL_16:

LABEL_17:
        if (!v9)
        {
          goto LABEL_33;
        }

        goto LABEL_18;
      }

      if (v30 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v21 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v35 = "nw_protocol_aop2_offload_connect";
          _os_log_impl(&dword_181A37000, v10, v21, "%{public}s called with null aop2_offload, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_16;
      }

      v18 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      v19 = type;
      v20 = os_log_type_enabled(v10, type);
      if (!v18)
      {
        if (v20)
        {
          *buf = 136446210;
          v35 = "nw_protocol_aop2_offload_connect";
          _os_log_impl(&dword_181A37000, v10, v19, "%{public}s called with null aop2_offload, no backtrace", buf, 0xCu);
        }

        goto LABEL_16;
      }

      if (v20)
      {
        *buf = 136446466;
        v35 = "nw_protocol_aop2_offload_connect";
        v36 = 2082;
        p_output_handler = v18;
        _os_log_impl(&dword_181A37000, v10, v19, "%{public}s called with null aop2_offload, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v18);
      if (v9)
      {
LABEL_18:
        free(v9);
      }

LABEL_33:
      v16 = 0;
      if (v5)
      {
        return v16;
      }

      goto LABEL_36;
    }

    v7 = *a1[1].flow_id;
  }

  output_handler_context = a2->output_handler_context;
  if (!output_handler_context)
  {
    __assert_rtn("nw_protocol_aop2_offload_connect", "protocol_aop2_offload.mm", 1932, "node");
  }

  output_handler_context[93] |= 1u;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v13 = gLogObj;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *&v7[4].flow_id[12];
    *buf = 136446722;
    v35 = "nw_protocol_aop2_offload_connect";
    v36 = 2082;
    p_output_handler = &v7[4].output_handler;
    v38 = 1024;
    v39 = v14;
    _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s connect flow tag 0x%x", buf, 0x1Cu);
  }

  if (_nw_signposts_once != -1)
  {
    dispatch_once(&_nw_signposts_once, &__block_literal_global_61);
  }

  if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
  {
    kdebug_trace();
  }

  if (HIDWORD(v7[4].identifier) != 1)
  {
    __assert_rtn("nw_protocol_aop2_offload_connect", "protocol_aop2_offload.mm", 1941, "aop2_offload->state == nw_aop2_offload_state_initial");
  }

  HIDWORD(v7[4].identifier) = 2;
  if (nw_aop2_offload_aon_net_connect_flow(a1))
  {
    nw_protocol_error_quiet(v7->default_input_handler->flow_id, v7);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v15 = gLogObj;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v35 = "nw_protocol_aop2_offload_connect";
      v36 = 2082;
      p_output_handler = &v7[4].output_handler;
      v38 = 1042;
      v39 = 16;
      v40 = 2098;
      v41 = a1;
      _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_ERROR, "%{public}s %{public}s failed to connect for %{public,uuid_t}.16P", buf, 0x26u);
    }

    goto LABEL_33;
  }

  v16 = 1;
  if ((v5 & 1) == 0)
  {
LABEL_36:
    nw::release_if_needed<nw_protocol *>(v31);
  }

  return v16;
}

void sub_1822DBE98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  if (v6)
  {
    _Unwind_Resume(a1);
  }

  nw::release_if_needed<nw_protocol *>(va);
  _Unwind_Resume(a1);
}

uint64_t nw_aop2_offload_aon_net_connect_flow(nw_protocol *a1)
{
  v170 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v96 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_aop2_offload_aon_net_connect_flow";
    v97 = _os_log_send_and_compose_impl();

    v165[0] = 16;
    LOBYTE(v147) = 0;
    if (__nwlog_fault(v97, v165, &v147))
    {
      if (v165[0] == 17)
      {
        v98 = __nwlog_obj();
        v99 = v165[0];
        if (os_log_type_enabled(v98, v165[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_aop2_offload_aon_net_connect_flow";
          _os_log_impl(&dword_181A37000, v98, v99, "%{public}s called with null protocol", buf, 0xCu);
        }
      }

      else if (v147 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v98 = __nwlog_obj();
        v105 = v165[0];
        v106 = os_log_type_enabled(v98, v165[0]);
        if (backtrace_string)
        {
          if (v106)
          {
            *buf = 136446466;
            *&buf[4] = "nw_aop2_offload_aon_net_connect_flow";
            v151 = 2082;
            *v152 = backtrace_string;
            _os_log_impl(&dword_181A37000, v98, v105, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_235;
        }

        if (v106)
        {
          *buf = 136446210;
          *&buf[4] = "nw_aop2_offload_aon_net_connect_flow";
          _os_log_impl(&dword_181A37000, v98, v105, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v98 = __nwlog_obj();
        v112 = v165[0];
        if (os_log_type_enabled(v98, v165[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_aop2_offload_aon_net_connect_flow";
          _os_log_impl(&dword_181A37000, v98, v112, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_235:
    if (v97)
    {
      free(v97);
    }

    return 22;
  }

  v1 = a1;
  handle = a1->handle;
  v3 = a1;
  if (handle == &nw_protocol_ref_counted_handle)
  {
    goto LABEL_6;
  }

  if (handle != &nw_protocol_ref_counted_additional_handle)
  {
    v4 = 0;
    goto LABEL_10;
  }

  v3 = *a1[1].flow_id;
  if (v3)
  {
LABEL_6:
    callbacks = v3[1].callbacks;
    if (callbacks)
    {
      v3[1].callbacks = (&callbacks->add_input_handler + 1);
    }

    v4 = -1;
  }

  else
  {
    v4 = 0;
  }

  handle = a1->handle;
LABEL_10:
  v143 = a1;
  v144 = v4;
  if (handle != &nw_protocol_ref_counted_handle)
  {
    if (handle != &nw_protocol_ref_counted_additional_handle)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      *buf = 136446210;
      *&buf[4] = "nw_aop2_offload_aon_net_connect_flow";
      v7 = _os_log_send_and_compose_impl();

      v165[0] = 16;
      LOBYTE(v147) = 0;
      if (__nwlog_fault(v7, v165, &v147))
      {
        if (v165[0] == 17)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v8 = gLogObj;
          v9 = v165[0];
          if (os_log_type_enabled(v8, v165[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_aop2_offload_aon_net_connect_flow";
            _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null aop2_offload", buf, 0xCu);
          }
        }

        else if (v147 == 1)
        {
          v21 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v8 = gLogObj;
          v22 = v165[0];
          v23 = os_log_type_enabled(v8, v165[0]);
          if (v21)
          {
            if (v23)
            {
              *buf = 136446466;
              *&buf[4] = "nw_aop2_offload_aon_net_connect_flow";
              v151 = 2082;
              *v152 = v21;
              _os_log_impl(&dword_181A37000, v8, v22, "%{public}s called with null aop2_offload, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v21);
            if (!v7)
            {
LABEL_118:
              v11 = 22;
              if ((v4 & 1) == 0)
              {
                return v11;
              }

              goto LABEL_131;
            }

LABEL_117:
            free(v7);
            goto LABEL_118;
          }

          if (v23)
          {
            *buf = 136446210;
            *&buf[4] = "nw_aop2_offload_aon_net_connect_flow";
            _os_log_impl(&dword_181A37000, v8, v22, "%{public}s called with null aop2_offload, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v8 = gLogObj;
          v24 = v165[0];
          if (os_log_type_enabled(v8, v165[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_aop2_offload_aon_net_connect_flow";
            _os_log_impl(&dword_181A37000, v8, v24, "%{public}s called with null aop2_offload, backtrace limit exceeded", buf, 0xCu);
          }
        }
      }

      if (!v7)
      {
        goto LABEL_118;
      }

      goto LABEL_117;
    }

    v1 = *a1[1].flow_id;
  }

  bzero(&buf[8], 0x228uLL);
  v149 = 0;
  v147 = 0u;
  v148 = 0u;
  *buf = 1;
  v156 = 1;
  v142 = v1[1].output_handler;
  if (!v142)
  {
    v100 = __nwlog_obj();
    *v165 = 136446210;
    *&v165[4] = "nw_aop2_offload_aon_net_setup_security_layer";
    v101 = _os_log_send_and_compose_impl();

    v168[0] = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v101, v168, &type))
    {
      goto LABEL_257;
    }

    if (v168[0] == 17)
    {
      v102 = __nwlog_obj();
      v103 = v168[0];
      if (os_log_type_enabled(v102, v168[0]))
      {
        *v165 = 136446210;
        *&v165[4] = "nw_aop2_offload_aon_net_setup_security_layer";
        _os_log_impl(&dword_181A37000, v102, v103, "%{public}s called with null parameters", v165, 0xCu);
      }
    }

    else if (type == OS_LOG_TYPE_INFO)
    {
      v107 = __nw_create_backtrace_string();
      v102 = __nwlog_obj();
      v108 = v168[0];
      v109 = os_log_type_enabled(v102, v168[0]);
      if (v107)
      {
        if (v109)
        {
          *v165 = 136446466;
          *&v165[4] = "nw_aop2_offload_aon_net_setup_security_layer";
          *&v165[12] = 2082;
          *&v165[14] = v107;
          _os_log_impl(&dword_181A37000, v102, v108, "%{public}s called with null parameters, dumping backtrace:%{public}s", v165, 0x16u);
        }

        free(v107);
        if (!v101)
        {
          goto LABEL_259;
        }

        goto LABEL_258;
      }

      if (v109)
      {
        *v165 = 136446210;
        *&v165[4] = "nw_aop2_offload_aon_net_setup_security_layer";
        _os_log_impl(&dword_181A37000, v102, v108, "%{public}s called with null parameters, no backtrace", v165, 0xCu);
      }
    }

    else
    {
      v102 = __nwlog_obj();
      v113 = v168[0];
      if (os_log_type_enabled(v102, v168[0]))
      {
        *v165 = 136446210;
        *&v165[4] = "nw_aop2_offload_aon_net_setup_security_layer";
        _os_log_impl(&dword_181A37000, v102, v113, "%{public}s called with null parameters, backtrace limit exceeded", v165, 0xCu);
      }
    }

    goto LABEL_256;
  }

  if ((HIBYTE(v1[4].callbacks) & 1) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v165 = 136446466;
      *&v165[4] = "nw_aop2_offload_aon_net_setup_security_layer";
      *&v165[12] = 2082;
      *&v165[14] = v1 + 288;
      _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_ERROR, "%{public}s %{public}s aop2_offload protocol stack is missing TLS protocol", v165, 0x16u);
    }

    v11 = 45;
    goto LABEL_23;
  }

  v12 = nw_protocol_boringssl_copy_definition();
  v13 = nw_parameters_copy_protocol_options_for_definition(v142, v12);

  if (!v13)
  {
    v110 = __nwlog_obj();
    *v165 = 136446210;
    *&v165[4] = "nw_aop2_offload_aon_net_setup_security_layer";
    v101 = _os_log_send_and_compose_impl();

    v168[0] = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v101, v168, &type))
    {
      goto LABEL_257;
    }

    if (v168[0] == 17)
    {
      v102 = __nwlog_obj();
      v111 = v168[0];
      if (os_log_type_enabled(v102, v168[0]))
      {
        *v165 = 136446210;
        *&v165[4] = "nw_aop2_offload_aon_net_setup_security_layer";
        _os_log_impl(&dword_181A37000, v102, v111, "%{public}s called with null tls_options", v165, 0xCu);
      }
    }

    else if (type == OS_LOG_TYPE_INFO)
    {
      v114 = __nw_create_backtrace_string();
      v102 = __nwlog_obj();
      v115 = v168[0];
      v116 = os_log_type_enabled(v102, v168[0]);
      if (v114)
      {
        if (v116)
        {
          *v165 = 136446466;
          *&v165[4] = "nw_aop2_offload_aon_net_setup_security_layer";
          *&v165[12] = 2082;
          *&v165[14] = v114;
          _os_log_impl(&dword_181A37000, v102, v115, "%{public}s called with null tls_options, dumping backtrace:%{public}s", v165, 0x16u);
        }

        free(v114);
LABEL_257:
        if (!v101)
        {
LABEL_259:
          v11 = 22;
LABEL_23:

          goto LABEL_126;
        }

LABEL_258:
        free(v101);
        goto LABEL_259;
      }

      if (v116)
      {
        *v165 = 136446210;
        *&v165[4] = "nw_aop2_offload_aon_net_setup_security_layer";
        _os_log_impl(&dword_181A37000, v102, v115, "%{public}s called with null tls_options, no backtrace", v165, 0xCu);
      }
    }

    else
    {
      v102 = __nwlog_obj();
      v121 = v168[0];
      if (os_log_type_enabled(v102, v168[0]))
      {
        *v165 = 136446210;
        *&v165[4] = "nw_aop2_offload_aon_net_setup_security_layer";
        _os_log_impl(&dword_181A37000, v102, v121, "%{public}s called with null tls_options, backtrace limit exceeded", v165, 0xCu);
      }
    }

LABEL_256:

    goto LABEL_257;
  }

  v140 = v13;
  v14 = sec_protocol_options_get_session_update_block();
  v15 = *&v1[2].flow_id[8];
  *&v1[2].flow_id[8] = v14;

  v16 = sec_protocol_options_get_session_update_queue();
  identifier = v1[2].identifier;
  v1[2].identifier = v16;

  v18 = sec_protocol_options_get_tls_ciphersuites();
  v139 = v18;
  if (!v18)
  {
    goto LABEL_38;
  }

  uint64 = xpc_array_get_uint64(v18, 0);
  v20 = uint64;
  if (uint64 - 4865 < 2)
  {
    v157 = uint64;
    goto LABEL_38;
  }

  if (!uint64)
  {
LABEL_38:
    v141 = sec_protocol_options_get_sec_session_ticket_info();
    if (!v141)
    {
      goto LABEL_46;
    }

    v25 = [v141 psk];

    if (v25)
    {
      v26 = [v141 psk];
      if ([v26 length] > 0x40)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v73 = gLogObj;
        if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
        {
          v74 = [v26 length];
          *v165 = 136446722;
          *&v165[4] = "nw_aop2_offload_aon_net_setup_security_layer";
          *&v165[12] = 2082;
          *&v165[14] = v1 + 288;
          *&v165[22] = 2048;
          v166 = v74;
          v75 = "%{public}s %{public}s psk length(%zu) too big";
LABEL_122:
          _os_log_impl(&dword_181A37000, v73, OS_LOG_TYPE_ERROR, v75, v165, 0x20u);
        }

LABEL_123:
        v11 = 7;
        goto LABEL_124;
      }

      memcpy(v158, [v26 bytes], objc_msgSend(v26, "length"));
      *&v158[70] = [v26 length];
    }

    v27 = [v141 psk_id];

    if (!v27)
    {
LABEL_45:
      v159[33] = [v141 ticket_lifetime];
      v160 = [v141 ticket_age_add];
      *v165 = 0;
      *&v165[8] = 0;
      gettimeofday(v165, 0);
      v28 = *v165;
      v161 = v28 - [v141 ticket_creation_time];
LABEL_46:
      v29 = sec_protocol_options_copy_transport_specific_application_protocol();
      v26 = v29;
      if (v29)
      {
        count = xpc_array_get_count(v29);
        if (count >= 5)
        {
          v31 = 5;
        }

        else
        {
          v31 = count;
        }

        if (count)
        {
          v32 = 0;
          v33 = 0;
          do
          {
            string = xpc_array_get_string(v26, v32);
            if (strlen(string) > 0x20)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v68 = gLogObj;
              if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
              {
                v69 = strlen(string);
                *v165 = 136446722;
                *&v165[4] = "nw_aop2_offload_aon_net_setup_security_layer";
                *&v165[12] = 2082;
                *&v165[14] = v1 + 288;
                *&v165[22] = 2048;
                v166 = v69;
                _os_log_impl(&dword_181A37000, v68, OS_LOG_TYPE_ERROR, "%{public}s %{public}s alpn length(%zu) too big", v165, 0x20u);
              }
            }

            else
            {
              if (!string)
              {
                v138 = __nwlog_obj();
                os_log_type_enabled(v138, OS_LOG_TYPE_ERROR);
                *v165 = 136446210;
                *&v165[4] = "_strict_strlcpy";
                v70 = _os_log_send_and_compose_impl();

                result = __nwlog_should_abort(v70);
                if (result)
                {
                  goto LABEL_289;
                }

                free(v70);
              }

              v35 = &v163[33 * v33];
              v36 = *string;
              *v35 = v36;
              if (v36)
              {
                v37 = *(string + 1);
                v35[1] = v37;
                if (v37)
                {
                  v38 = *(string + 2);
                  v35[2] = v38;
                  if (v38)
                  {
                    v39 = *(string + 3);
                    v35[3] = v39;
                    if (v39)
                    {
                      v40 = *(string + 4);
                      v35[4] = v40;
                      if (v40)
                      {
                        v41 = *(string + 5);
                        v35[5] = v41;
                        if (v41)
                        {
                          v42 = *(string + 6);
                          v35[6] = v42;
                          if (v42)
                          {
                            v43 = *(string + 7);
                            v35[7] = v43;
                            if (v43)
                            {
                              v44 = *(string + 8);
                              v35[8] = v44;
                              if (v44)
                              {
                                v45 = *(string + 9);
                                v35[9] = v45;
                                if (v45)
                                {
                                  v46 = *(string + 10);
                                  v35[10] = v46;
                                  if (v46)
                                  {
                                    v47 = *(string + 11);
                                    v35[11] = v47;
                                    if (v47)
                                    {
                                      v48 = *(string + 12);
                                      v35[12] = v48;
                                      if (v48)
                                      {
                                        v49 = *(string + 13);
                                        v35[13] = v49;
                                        if (v49)
                                        {
                                          v50 = *(string + 14);
                                          v35[14] = v50;
                                          if (v50)
                                          {
                                            v51 = *(string + 15);
                                            v35[15] = v51;
                                            if (v51)
                                            {
                                              v52 = *(string + 16);
                                              v35[16] = v52;
                                              if (v52)
                                              {
                                                v53 = *(string + 17);
                                                v35[17] = v53;
                                                if (v53)
                                                {
                                                  v54 = *(string + 18);
                                                  v35[18] = v54;
                                                  if (v54)
                                                  {
                                                    v55 = *(string + 19);
                                                    v35[19] = v55;
                                                    if (v55)
                                                    {
                                                      v56 = *(string + 20);
                                                      v35[20] = v56;
                                                      if (v56)
                                                      {
                                                        v57 = *(string + 21);
                                                        v35[21] = v57;
                                                        if (v57)
                                                        {
                                                          v58 = *(string + 22);
                                                          v35[22] = v58;
                                                          if (v58)
                                                          {
                                                            v59 = *(string + 23);
                                                            v35[23] = v59;
                                                            if (v59)
                                                            {
                                                              v60 = *(string + 24);
                                                              v35[24] = v60;
                                                              if (v60)
                                                              {
                                                                v61 = *(string + 25);
                                                                v35[25] = v61;
                                                                if (v61)
                                                                {
                                                                  v62 = *(string + 26);
                                                                  v35[26] = v62;
                                                                  if (v62)
                                                                  {
                                                                    v63 = *(string + 27);
                                                                    v35[27] = v63;
                                                                    if (v63)
                                                                    {
                                                                      v64 = *(string + 28);
                                                                      v35[28] = v64;
                                                                      if (v64)
                                                                      {
                                                                        v65 = *(string + 29);
                                                                        v35[29] = v65;
                                                                        if (v65)
                                                                        {
                                                                          v66 = *(string + 30);
                                                                          v35[30] = v66;
                                                                          if (v66)
                                                                          {
                                                                            v67 = *(string + 31);
                                                                            v35[31] = v67;
                                                                            if (v67)
                                                                            {
                                                                              v35[32] = 0;
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }

              ++v33;
            }

            ++v32;
          }

          while (v31 != v32);
          v164 = v33;
        }

        else
        {
          v164 = 0;
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v72 = gLogObj;
        if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
        {
          *v165 = 136446210;
          *&v165[4] = "nw_aop2_offload_aon_net_setup_security_layer";
          _os_log_impl(&dword_181A37000, v72, OS_LOG_TYPE_INFO, "%{public}s x_application_protocols is nil", v165, 0xCu);
        }
      }

      v162 = 1;
      output_handler = v1[1].output_handler;
      if (nw_protocol_setup_aop2_offload_definition(void)::onceToken != -1)
      {
        dispatch_once(&nw_protocol_setup_aop2_offload_definition(void)::onceToken, &__block_literal_global);
      }

      v78 = g_aop2_offload_definition;
      v79 = nw_parameters_copy_protocol_options_for_definition(output_handler, v78);

      if (!v79)
      {
        v73 = 0;
LABEL_112:
        v11 = 0;
LABEL_124:

        goto LABEL_125;
      }

      v73 = v79;
      if (nw_protocol_options_is_aop2_offload(v73))
      {
        *v168 = 0;
        *&v168[8] = v168;
        *&v168[16] = 0x2020000000;
        v169 = 0;
        *v165 = MEMORY[0x1E69E9820];
        *&v165[8] = 3221225472;
        *&v165[16] = __nw_aop2_offload_options_get_psk_binder_algorithm_block_invoke;
        v166 = &unk_1E6A3A858;
        v167 = v168;
        nw_protocol_options_access_handle(v73, v165);
        v80 = *(*&v168[8] + 24);
        _Block_object_dispose(v168, 8);

        v11 = 0;
        if (v80 == 2)
        {
          v162 = 0;
        }

        goto LABEL_124;
      }

      v117 = __nwlog_obj();
      *v168 = 136446210;
      *&v168[4] = "nw_aop2_offload_options_get_psk_binder_algorithm";
      v118 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v145 = 0;
      if (__nwlog_fault(v118, &type, &v145))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v119 = __nwlog_obj();
          v120 = type;
          if (os_log_type_enabled(v119, type))
          {
            *v168 = 136446210;
            *&v168[4] = "nw_aop2_offload_options_get_psk_binder_algorithm";
            _os_log_impl(&dword_181A37000, v119, v120, "%{public}s called with null nw_protocol_options_is_aop2_offload(options)", v168, 0xCu);
          }
        }

        else if (v145 == 1)
        {
          v122 = __nw_create_backtrace_string();
          v119 = __nwlog_obj();
          v123 = type;
          v124 = os_log_type_enabled(v119, type);
          if (v122)
          {
            if (v124)
            {
              *v168 = 136446466;
              *&v168[4] = "nw_aop2_offload_options_get_psk_binder_algorithm";
              *&v168[12] = 2082;
              *&v168[14] = v122;
              _os_log_impl(&dword_181A37000, v119, v123, "%{public}s called with null nw_protocol_options_is_aop2_offload(options), dumping backtrace:%{public}s", v168, 0x16u);
            }

            free(v122);
            goto LABEL_275;
          }

          if (v124)
          {
            *v168 = 136446210;
            *&v168[4] = "nw_aop2_offload_options_get_psk_binder_algorithm";
            _os_log_impl(&dword_181A37000, v119, v123, "%{public}s called with null nw_protocol_options_is_aop2_offload(options), no backtrace", v168, 0xCu);
          }
        }

        else
        {
          v119 = __nwlog_obj();
          v129 = type;
          if (os_log_type_enabled(v119, type))
          {
            *v168 = 136446210;
            *&v168[4] = "nw_aop2_offload_options_get_psk_binder_algorithm";
            _os_log_impl(&dword_181A37000, v119, v129, "%{public}s called with null nw_protocol_options_is_aop2_offload(options), backtrace limit exceeded", v168, 0xCu);
          }
        }
      }

LABEL_275:
      if (v118)
      {
        free(v118);
      }

      goto LABEL_112;
    }

    v26 = [v141 psk_id];
    if ([v26 length] <= 0x100)
    {
      memcpy(v159, [v26 bytes], objc_msgSend(v26, "length"));
      v159[32] = [v26 length];

      goto LABEL_45;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v73 = gLogObj;
    if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      v81 = [v26 length];
      *v165 = 136446722;
      *&v165[4] = "nw_aop2_offload_aon_net_setup_security_layer";
      *&v165[12] = 2082;
      *&v165[14] = v1 + 288;
      *&v165[22] = 2048;
      v166 = v81;
      v75 = "%{public}s %{public}s psk id length(%zu) too big";
      goto LABEL_122;
    }

    goto LABEL_123;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v76 = gLogObj;
  v141 = v76;
  if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
  {
    *v165 = 136446722;
    *&v165[4] = "nw_aop2_offload_aon_net_setup_security_layer";
    *&v165[12] = 2082;
    *&v165[14] = v1 + 288;
    *&v165[22] = 1024;
    LODWORD(v166) = v20;
    _os_log_impl(&dword_181A37000, v76, OS_LOG_TYPE_ERROR, "%{public}s %{public}s unsupported cipher option %u", v165, 0x1Cu);
  }

  v11 = 45;
LABEL_125:

  if (v11)
  {
LABEL_126:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v82 = gLogObj;
    if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
    {
      *v165 = 136446210;
      *&v165[4] = "nw_aop2_offload_aon_net_connect_flow";
      v83 = "%{public}s failed to setup security layer";
      v84 = v82;
      v85 = 12;
LABEL_128:
      _os_log_impl(&dword_181A37000, v84, OS_LOG_TYPE_ERROR, v83, v165, v85);
      goto LABEL_129;
    }

    goto LABEL_129;
  }

  if ((HIBYTE(v1[4].callbacks) & 2) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v86 = gLogObj;
    if (os_log_type_enabled(v86, OS_LOG_TYPE_INFO))
    {
      *v165 = 136446466;
      *&v165[4] = "nw_aop2_offload_aon_net_setup_transport_layer";
      *&v165[12] = 2082;
      *&v165[14] = v1 + 288;
      _os_log_impl(&dword_181A37000, v86, OS_LOG_TYPE_INFO, "%{public}s %{public}s aop2_offload stack contains UDP options", v165, 0x16u);
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v82 = gLogObj;
    if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
    {
      *v165 = 136446210;
      *&v165[4] = "nw_aop2_offload_aon_net_connect_flow";
      _os_log_impl(&dword_181A37000, v82, OS_LOG_TYPE_ERROR, "%{public}s failed to setup transport layer", v165, 0xCu);
    }

    v11 = 45;
    goto LABEL_129;
  }

  *&buf[8] = bswap32(LOWORD(v1[4].callbacks)) >> 16;
  *&buf[10] = bswap32(WORD1(v1[4].callbacks)) >> 16;
  v87 = BYTE6(v1[4].callbacks);
  if (v87 == 30)
  {
    *&v152[2] = 2;
    mtu = nw_path_get_mtu(v1[1].handle);
    v154 = *&v1[2].callbacks;
    v155 = *&v1[2].handle;
  }

  else
  {
    if (v87 != 2)
    {
      v93 = __nwlog_obj();
      if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
      {
        v94 = BYTE6(v1[4].callbacks);
        *v165 = 136446722;
        *&v165[4] = "nw_aop2_offload_aon_net_setup_ip_layer";
        *&v165[12] = 2082;
        *&v165[14] = v1 + 288;
        *&v165[22] = 1024;
        LODWORD(v166) = v94;
        _os_log_impl(&dword_181A37000, v93, OS_LOG_TYPE_ERROR, "%{public}s %{public}s invalid ip family %u", v165, 0x1Cu);
      }

      v82 = __nwlog_obj();
      if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
      {
        *v165 = 136446210;
        *&v165[4] = "nw_aop2_offload_aon_net_connect_flow";
LABEL_166:
        _os_log_impl(&dword_181A37000, v82, OS_LOG_TYPE_ERROR, "%{public}s failed to setup security layer", v165, 0xCu);
        v11 = 22;
        goto LABEL_129;
      }

LABEL_288:
      v11 = 22;
      goto LABEL_129;
    }

    *&v152[2] = 1;
    mtu = nw_path_get_mtu(v1[1].handle);
    LODWORD(v154) = v1[2].callbacks;
    DWORD1(v154) = v1[2].handle;
  }

  v88 = nw_path_copy_interface(v1[1].handle);
  v89 = v88;
  if (!v88)
  {
    v125 = __nwlog_obj();
    *v165 = 136446210;
    *&v165[4] = "nw_aop2_offload_aon_net_setup_ethernet_layer";
    v126 = _os_log_send_and_compose_impl();

    v168[0] = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v126, v168, &type))
    {
      goto LABEL_284;
    }

    if (v168[0] == 17)
    {
      v127 = __nwlog_obj();
      v128 = v168[0];
      if (os_log_type_enabled(v127, v168[0]))
      {
        *v165 = 136446210;
        *&v165[4] = "nw_aop2_offload_aon_net_setup_ethernet_layer";
        _os_log_impl(&dword_181A37000, v127, v128, "%{public}s called with null interface", v165, 0xCu);
      }
    }

    else if (type == OS_LOG_TYPE_INFO)
    {
      v130 = __nw_create_backtrace_string();
      v127 = __nwlog_obj();
      v131 = v168[0];
      v132 = os_log_type_enabled(v127, v168[0]);
      if (v130)
      {
        if (v132)
        {
          *v165 = 136446466;
          *&v165[4] = "nw_aop2_offload_aon_net_setup_ethernet_layer";
          *&v165[12] = 2082;
          *&v165[14] = v130;
          _os_log_impl(&dword_181A37000, v127, v131, "%{public}s called with null interface, dumping backtrace:%{public}s", v165, 0x16u);
        }

        free(v130);
LABEL_284:
        if (v126)
        {
          free(v126);
        }

        v82 = __nwlog_obj();
        if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
        {
          *v165 = 136446210;
          *&v165[4] = "nw_aop2_offload_aon_net_connect_flow";
          goto LABEL_166;
        }

        goto LABEL_288;
      }

      if (v132)
      {
        *v165 = 136446210;
        *&v165[4] = "nw_aop2_offload_aon_net_setup_ethernet_layer";
        _os_log_impl(&dword_181A37000, v127, v131, "%{public}s called with null interface, no backtrace", v165, 0xCu);
      }
    }

    else
    {
      v127 = __nwlog_obj();
      v137 = v168[0];
      if (os_log_type_enabled(v127, v168[0]))
      {
        *v165 = 136446210;
        *&v165[4] = "nw_aop2_offload_aon_net_setup_ethernet_layer";
        _os_log_impl(&dword_181A37000, v127, v137, "%{public}s called with null interface, backtrace limit exceeded", v165, 0xCu);
      }
    }

    goto LABEL_284;
  }

  if (_nw_interface_get_type(v88) != 1)
  {
    WORD4(v147) = _nw_interface_get_mtu(v89);
    name = _nw_interface_get_name(v89);
    if (!name)
    {
      v135 = __nwlog_obj();
      os_log_type_enabled(v135, OS_LOG_TYPE_ERROR);
      *v165 = 136446210;
      *&v165[4] = "_strict_strlcpy";
      v136 = _os_log_send_and_compose_impl();

      result = __nwlog_should_abort(v136);
      if (result)
      {
        goto LABEL_289;
      }

      free(v136);
      name = 0;
    }

    BYTE10(v147) = *name;
    if (BYTE10(v147))
    {
      BYTE11(v147) = name[1];
      if (BYTE11(v147))
      {
        BYTE12(v147) = name[2];
        if (BYTE12(v147))
        {
          BYTE13(v147) = name[3];
          if (BYTE13(v147))
          {
            BYTE14(v147) = name[4];
            if (BYTE14(v147))
            {
              HIBYTE(v147) = name[5];
              if (HIBYTE(v147))
              {
                LOBYTE(v148) = name[6];
                if (v148)
                {
                  BYTE1(v148) = name[7];
                  if (BYTE1(v148))
                  {
                    BYTE2(v148) = name[8];
                    if (BYTE2(v148))
                    {
                      BYTE3(v148) = name[9];
                      if (BYTE3(v148))
                      {
                        BYTE4(v148) = name[10];
                        if (BYTE4(v148))
                        {
                          BYTE5(v148) = name[11];
                          if (BYTE5(v148))
                          {
                            BYTE6(v148) = name[12];
                            if (BYTE6(v148))
                            {
                              BYTE7(v148) = name[13];
                              if (BYTE7(v148))
                              {
                                BYTE8(v148) = name[14];
                                v91 = 2;
                                if (!BYTE8(v148))
                                {
                                  goto LABEL_187;
                                }

                                v92 = &v148 + 9;
                                goto LABEL_184;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    v91 = 2;
LABEL_187:
    *&v147 = v91;

    v11 = aon_net_connect_flow_with_telemetry_slot();
    if (!v11)
    {
LABEL_130:
      if ((v144 & 1) == 0)
      {
        return v11;
      }

LABEL_131:
      nw::release_if_needed<nw_protocol *>(&v143);
      return v11;
    }

    v82 = __nwlog_obj();
    if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
    {
      *v165 = 136446722;
      *&v165[4] = "nw_aop2_offload_aon_net_connect_flow";
      *&v165[12] = 2082;
      *&v165[14] = v1 + 288;
      *&v165[22] = 1024;
      LODWORD(v166) = v11;
      v83 = "%{public}s %{public}s connect flow failed with error %u";
      v84 = v82;
      v85 = 28;
      goto LABEL_128;
    }

LABEL_129:

    goto LABEL_130;
  }

  *(&v147 + 10) = *v1[4].flow_id;
  HIWORD(v147) = *&v1[4].flow_id[4];
  WORD2(v148) = *&v1[4].flow_id[10];
  LODWORD(v148) = *&v1[4].flow_id[6];
  WORD4(v147) = _nw_interface_get_mtu(v89);
  v90 = _nw_interface_get_name(v89);
  if (v90)
  {
    goto LABEL_146;
  }

  v133 = __nwlog_obj();
  os_log_type_enabled(v133, OS_LOG_TYPE_ERROR);
  *v165 = 136446210;
  *&v165[4] = "_strict_strlcpy";
  v134 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v134);
  if (!result)
  {
    free(v134);
    v90 = 0;
LABEL_146:
    BYTE6(v148) = *v90;
    if (BYTE6(v148))
    {
      BYTE7(v148) = v90[1];
      if (BYTE7(v148))
      {
        BYTE8(v148) = v90[2];
        if (BYTE8(v148))
        {
          BYTE9(v148) = v90[3];
          if (BYTE9(v148))
          {
            BYTE10(v148) = v90[4];
            if (BYTE10(v148))
            {
              BYTE11(v148) = v90[5];
              if (BYTE11(v148))
              {
                BYTE12(v148) = v90[6];
                if (BYTE12(v148))
                {
                  BYTE13(v148) = v90[7];
                  if (BYTE13(v148))
                  {
                    BYTE14(v148) = v90[8];
                    if (BYTE14(v148))
                    {
                      HIBYTE(v148) = v90[9];
                      if (HIBYTE(v148))
                      {
                        LOBYTE(v149) = v90[10];
                        if (v149)
                        {
                          BYTE1(v149) = v90[11];
                          if (BYTE1(v149))
                          {
                            BYTE2(v149) = v90[12];
                            if (BYTE2(v149))
                            {
                              BYTE3(v149) = v90[13];
                              if (BYTE3(v149))
                              {
                                BYTE4(v149) = v90[14];
                                v91 = 1;
                                if (!BYTE4(v149))
                                {
                                  goto LABEL_187;
                                }

                                v92 = &v149 + 5;
LABEL_184:
                                *v92 = 0;
                                goto LABEL_187;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    v91 = 1;
    goto LABEL_187;
  }

LABEL_289:
  __break(1u);
  return result;
}

void sub_1822DDDC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, char a17, uint64_t a18, uint64_t a19, void *a20, void *a21, void *a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (a17)
  {
    nw::release_if_needed<nw_protocol *>(&a27);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t nw_protocol_aop2_offload_finalize_output_frames(nw_protocol *a1, nw_frame_array_s *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    v3 = a1;
    if (handle == &nw_protocol_ref_counted_handle)
    {
      goto LABEL_6;
    }

    if (handle != &nw_protocol_ref_counted_additional_handle)
    {
      LOBYTE(v3) = 0;
      v4 = 1;
      goto LABEL_9;
    }

    v3 = *a1[1].flow_id;
    if (v3)
    {
LABEL_6:
      callbacks = v3[1].callbacks;
      v4 = 0;
      if (callbacks)
      {
        v3[1].callbacks = (&callbacks->add_input_handler + 1);
      }

      LOBYTE(v3) = -1;
    }

    else
    {
      v4 = 1;
    }

LABEL_9:
    v34 = a1;
    v35 = v3;
    v6 = a1->handle;
    v7 = v6 == &nw_protocol_ref_counted_handle || v6 == &nw_protocol_ref_counted_additional_handle;
    v8 = v7;
    if (v7)
    {
      tqh_first = a2->tqh_first;
      if (a2->tqh_first)
      {
        *(tqh_first + 5) = type;
        tqh_last = a2->tqh_last;
        *type = tqh_first;
        v37 = tqh_last;
        a2->tqh_first = 0;
        a2->tqh_last = &a2->tqh_first;
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
        v39 = &__block_descriptor_tmp_21_49595;
        v40 = 1;
        do
        {
          v11 = *type;
          if (!*type)
          {
            break;
          }

          v12 = *(*type + 32);
          v13 = *(*type + 40);
          v14 = (v12 + 40);
          if (!v12)
          {
            v14 = &v37;
          }

          *v14 = v13;
          *v13 = v12;
          *(v11 + 32) = 0;
          *(v11 + 40) = 0;
        }

        while (((*&buf[16])(buf) & 1) != 0);
      }

      goto LABEL_31;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v15 = gLogObj;
    *buf = 136446210;
    *&buf[4] = "nw_protocol_aop2_offload_finalize_output_frames";
    v16 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v33 = 0;
    if (__nwlog_fault(v16, type, &v33))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v19 = type[0];
        if (os_log_type_enabled(v18, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_aop2_offload_finalize_output_frames";
          _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null aop2_offload", buf, 0xCu);
        }
      }

      else if (v33 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v22 = type[0];
        v23 = os_log_type_enabled(v18, type[0]);
        if (backtrace_string)
        {
          if (v23)
          {
            *buf = 136446466;
            *&buf[4] = "nw_protocol_aop2_offload_finalize_output_frames";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v18, v22, "%{public}s called with null aop2_offload, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          if (!v16)
          {
            goto LABEL_31;
          }

LABEL_30:
          free(v16);
LABEL_31:
          if ((v4 & 1) == 0)
          {
            nw::release_if_needed<nw_protocol *>(&v34);
          }

          return v8;
        }

        if (v23)
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_aop2_offload_finalize_output_frames";
          _os_log_impl(&dword_181A37000, v18, v22, "%{public}s called with null aop2_offload, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v24 = type[0];
        if (os_log_type_enabled(v18, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_aop2_offload_finalize_output_frames";
          _os_log_impl(&dword_181A37000, v18, v24, "%{public}s called with null aop2_offload, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v16)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  v25 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_aop2_offload_finalize_output_frames";
  v26 = _os_log_send_and_compose_impl();

  type[0] = OS_LOG_TYPE_ERROR;
  LOBYTE(v34) = 0;
  if (__nwlog_fault(v26, type, &v34))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v27 = __nwlog_obj();
      v28 = type[0];
      if (os_log_type_enabled(v27, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_aop2_offload_finalize_output_frames";
        _os_log_impl(&dword_181A37000, v27, v28, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v34 == 1)
    {
      v29 = __nw_create_backtrace_string();
      v27 = __nwlog_obj();
      v30 = type[0];
      v31 = os_log_type_enabled(v27, type[0]);
      if (v29)
      {
        if (v31)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_aop2_offload_finalize_output_frames";
          *&buf[12] = 2082;
          *&buf[14] = v29;
          _os_log_impl(&dword_181A37000, v27, v30, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v29);
        goto LABEL_63;
      }

      if (v31)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_aop2_offload_finalize_output_frames";
        _os_log_impl(&dword_181A37000, v27, v30, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v27 = __nwlog_obj();
      v32 = type[0];
      if (os_log_type_enabled(v27, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_aop2_offload_finalize_output_frames";
        _os_log_impl(&dword_181A37000, v27, v32, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_63:
  if (v26)
  {
    free(v26);
  }

  return 0;
}

uint64_t nw_protocol_aop2_offload_get_output_frames(nw_protocol *a1, nw_protocol *a2, unsigned int a3, unsigned int a4, unsigned int a5, nw_frame_array_s *a6)
{
  v66 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v46 = __nwlog_obj();
    *buf = 136446210;
    v61 = "nw_protocol_aop2_offload_get_output_frames";
    v47 = _os_log_send_and_compose_impl();

    v57[0] = OS_LOG_TYPE_ERROR;
    type = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v47, v57, &type))
    {
      if (v57[0] == OS_LOG_TYPE_FAULT)
      {
        v48 = __nwlog_obj();
        v49 = v57[0];
        if (os_log_type_enabled(v48, v57[0]))
        {
          *buf = 136446210;
          v61 = "nw_protocol_aop2_offload_get_output_frames";
          _os_log_impl(&dword_181A37000, v48, v49, "%{public}s called with null protocol", buf, 0xCu);
        }
      }

      else if (type == OS_LOG_TYPE_INFO)
      {
        backtrace_string = __nw_create_backtrace_string();
        v48 = __nwlog_obj();
        v51 = v57[0];
        v52 = os_log_type_enabled(v48, v57[0]);
        if (backtrace_string)
        {
          if (v52)
          {
            *buf = 136446466;
            v61 = "nw_protocol_aop2_offload_get_output_frames";
            v62 = 2082;
            *v63 = backtrace_string;
            _os_log_impl(&dword_181A37000, v48, v51, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_90;
        }

        if (v52)
        {
          *buf = 136446210;
          v61 = "nw_protocol_aop2_offload_get_output_frames";
          _os_log_impl(&dword_181A37000, v48, v51, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v48 = __nwlog_obj();
        v54 = v57[0];
        if (os_log_type_enabled(v48, v57[0]))
        {
          *buf = 136446210;
          v61 = "nw_protocol_aop2_offload_get_output_frames";
          _os_log_impl(&dword_181A37000, v48, v54, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_90:
    if (v47)
    {
      free(v47);
    }

    return 0;
  }

  v10 = a1;
  handle = a1->handle;
  v12 = a1;
  if (handle == &nw_protocol_ref_counted_handle)
  {
    goto LABEL_6;
  }

  if (handle == &nw_protocol_ref_counted_additional_handle)
  {
    v12 = *a1[1].flow_id;
    if (!v12)
    {
LABEL_9:
      handle = a1->handle;
      goto LABEL_10;
    }

LABEL_6:
    callbacks = v12[1].callbacks;
    if (callbacks)
    {
      v12[1].callbacks = (&callbacks->add_input_handler + 1);
    }

    LOBYTE(v12) = -1;
    goto LABEL_9;
  }

  LOBYTE(v12) = 0;
LABEL_10:
  *v57 = a1;
  v55 = v12;
  v58 = v12;
  if (handle != &nw_protocol_ref_counted_handle)
  {
    if (handle != &nw_protocol_ref_counted_additional_handle)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v14 = gLogObj;
      *buf = 136446210;
      v61 = "nw_protocol_aop2_offload_get_output_frames";
      v15 = _os_log_send_and_compose_impl();

      v16 = v55;
      type = OS_LOG_TYPE_ERROR;
      v56 = 0;
      if (!__nwlog_fault(v15, &type, &v56))
      {
        goto LABEL_17;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v17 = gLogObj;
        v18 = type;
        if (os_log_type_enabled(v17, type))
        {
          *buf = 136446210;
          v61 = "nw_protocol_aop2_offload_get_output_frames";
          _os_log_impl(&dword_181A37000, v17, v18, "%{public}s called with null aop2_offload", buf, 0xCu);
        }

LABEL_16:

LABEL_17:
        if (!v15)
        {
          goto LABEL_36;
        }

        goto LABEL_18;
      }

      if (v56 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v17 = gLogObj;
        v45 = type;
        if (os_log_type_enabled(v17, type))
        {
          *buf = 136446210;
          v61 = "nw_protocol_aop2_offload_get_output_frames";
          _os_log_impl(&dword_181A37000, v17, v45, "%{public}s called with null aop2_offload, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_16;
      }

      v41 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v17 = gLogObj;
      v42 = type;
      v43 = os_log_type_enabled(v17, type);
      if (!v41)
      {
        if (v43)
        {
          *buf = 136446210;
          v61 = "nw_protocol_aop2_offload_get_output_frames";
          _os_log_impl(&dword_181A37000, v17, v42, "%{public}s called with null aop2_offload, no backtrace", buf, 0xCu);
        }

        goto LABEL_16;
      }

      if (v43)
      {
        *buf = 136446466;
        v61 = "nw_protocol_aop2_offload_get_output_frames";
        v62 = 2082;
        *v63 = v41;
        _os_log_impl(&dword_181A37000, v17, v42, "%{public}s called with null aop2_offload, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v41);
      if (v15)
      {
LABEL_18:
        free(v15);
      }

LABEL_36:
      v28 = 0;
      if ((v16 & 1) == 0)
      {
        return v28;
      }

      goto LABEL_60;
    }

    v10 = *a1[1].flow_id;
  }

  if (nw_aop2_offload_get_offload_manager(void)::onceToken != -1)
  {
    dispatch_once(&nw_aop2_offload_get_offload_manager(void)::onceToken, &__block_literal_global_19);
  }

  v19 = nw_aop2_offload_get_offload_manager(void)::aop2_offload_manager;
  a6->tqh_first = 0;
  a6->tqh_last = &a6->tqh_first;
  tx_buffer_size = aon_net_get_tx_buffer_size();
  if (!tx_buffer_size)
  {
    __assert_rtn("nw_protocol_aop2_offload_get_output_frames", "protocol_aop2_offload.mm", 1855, "buffer_size != 0");
  }

  if (a4 / tx_buffer_size <= 1)
  {
    v21 = 1;
  }

  else
  {
    v21 = a4 / tx_buffer_size;
  }

  if (a4 / tx_buffer_size >= a5)
  {
    v22 = a5;
  }

  else
  {
    v22 = v21;
  }

  v23 = *(v19 + 600);
  if (v22 >= v23)
  {
    v24 = v23;
  }

  else
  {
    v24 = v22;
  }

  v25 = v24 * tx_buffer_size;
  if (v24 * tx_buffer_size < a3)
  {
    v26 = tx_buffer_size;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v27 = gLogObj;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136447234;
      v61 = "nw_protocol_aop2_offload_get_output_frames";
      v62 = 1024;
      *v63 = v26;
      *&v63[4] = 1024;
      *&v63[6] = v24;
      *v64 = 1024;
      *&v64[2] = v25;
      LOWORD(v65[0]) = 1024;
      *(v65 + 2) = a3;
      _os_log_impl(&dword_181A37000, v27, OS_LOG_TYPE_DEFAULT, "%{public}s total bytes (%u * %u = %u) > minimum bytes (%u)", buf, 0x24u);
    }

    v16 = v55;
    goto LABEL_36;
  }

  v29 = *(v19 + 608);
  v28 = 0;
  if (v24)
  {
    do
    {
      v35 = v29;
      if (!v29)
      {
        nw_aop2_offload_manager_allocate_frames(v19);
        v35 = *(v19 + 608);
        if (!v35)
        {
          v29 = 0;
          goto LABEL_58;
        }
      }

      v36 = aon_net_alloc_tx_buffer();
      if ((aon_net_tx_buffer_is_valid() & 1) == 0)
      {
        __assert_rtn("nw_protocol_aop2_offload_get_output_frames", "protocol_aop2_offload.mm", 1886, "aon_net_tx_buffer_is_valid(client, net_buffer)");
      }

      buffer_address = aon_net_tx_get_buffer_address();
      v38 = aon_net_get_tx_buffer_size();
      nw_frame_reset(v35, buffer_address, v38, nw_aop2_offload_manager_output_frame_finalize, v19);
      aon_net_set_tx_flow_id();
      if ((*(v35 + 102) & 4) == 0)
      {
        __assert_rtn("nw_protocol_aop2_offload_get_output_frames", "protocol_aop2_offload.mm", 1897, "frame_info");
      }

      v40 = v35 + 16;
      v39 = *(v35 + 2);
      *(v35 + 104) = v36;
      if (!v39 && !*(v35 + 3))
      {
        v39 = 0;
      }

      v29 = v39;
      v30 = *(v35 + 2);
      v31 = *(v35 + 3);
      v32 = (v30 + 24);
      if (!v30)
      {
        v32 = (v19 + 616);
      }

      *v32 = v31;
      *v31 = v30;
      *v40 = 0;
      *(v35 + 3) = 0;
      v33 = *(v19 + 632);
      *(v35 + 3) = v33;
      *v33 = v35;
      *(v19 + 632) = v40;
      ++*(v19 + 680);
      *(v35 + 4) = 0;
      tqh_last = a6->tqh_last;
      *(v35 + 5) = tqh_last;
      *tqh_last = v35;
      a6->tqh_last = (v35 + 32);

      v28 = (v28 + 1);
    }

    while (v24 != v28);
    v28 = v24;
  }

LABEL_58:
  *(v19 + 600) -= v28;
  if (gLogDatapath == 1)
  {
    v53 = __nwlog_obj();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446978;
      v61 = "nw_protocol_aop2_offload_get_output_frames";
      v62 = 2082;
      *v63 = v10 + 288;
      *&v63[8] = 1024;
      *v64 = v24;
      *&v64[4] = 1024;
      v65[0] = v28;
      _os_log_impl(&dword_181A37000, v53, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s output frames requested %u returned %u", buf, 0x22u);
    }
  }

  if (v58)
  {
LABEL_60:
    nw::release_if_needed<nw_protocol *>(v57);
  }

  return v28;
}

void sub_1822DEE58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  if ((a6 & 1) == 0)
  {
    _Unwind_Resume(a1);
  }

  nw::release_if_needed<nw_protocol *>(va);
  _Unwind_Resume(a1);
}

void nw_aop2_offload_manager_allocate_frames(void *a1)
{
  v48 = *MEMORY[0x1E69E9840];
  v2 = a1[84];
  v3 = a1[83];
  v4 = v2 - v3;
  if (v2 <= v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v29 = gLogObj;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = a1[83];
      v31 = a1[84];
      *buf = 136446722;
      v43 = "nw_aop2_offload_manager_allocate_frames";
      v44 = 2048;
      v45 = v30;
      v46 = 2048;
      v47 = v31;
      _os_log_impl(&dword_181A37000, v29, OS_LOG_TYPE_DEFAULT, "%{public}s aop: skip allocation, total frame count %llu num frames %llu", buf, 0x20u);
    }
  }

  else
  {
    v5 = nw_frame_create(2, 0, 0, 0, 0);
    if (v5)
    {
      v6 = v5;
      v6[2] = 0;
      v7 = a1[77];
      v6[3] = v7;
      *v7 = v6;
      a1[77] = v6 + 2;
      ++a1[83];

      if (v4 < 2)
      {
        return;
      }

      v8 = nw_frame_create(2, 0, 0, 0, 0);
      if (v8)
      {
        v9 = v8;
        v9[2] = 0;
        v10 = a1[77];
        v9[3] = v10;
        *v10 = v9;
        a1[77] = v9 + 2;
        ++a1[83];

        if (v4 == 2)
        {
          return;
        }

        v11 = nw_frame_create(2, 0, 0, 0, 0);
        if (v11)
        {
          v12 = v11;
          v12[2] = 0;
          v13 = a1[77];
          v12[3] = v13;
          *v13 = v12;
          a1[77] = v12 + 2;
          ++a1[83];

          if (v4 == 3)
          {
            return;
          }

          v14 = nw_frame_create(2, 0, 0, 0, 0);
          if (v14)
          {
            v15 = v14;
            v15[2] = 0;
            v16 = a1[77];
            v15[3] = v16;
            *v16 = v15;
            a1[77] = v15 + 2;
            ++a1[83];

            if (v4 == 4)
            {
              return;
            }

            v17 = nw_frame_create(2, 0, 0, 0, 0);
            if (v17)
            {
              v18 = v17;
              v18[2] = 0;
              v19 = a1[77];
              v18[3] = v19;
              *v19 = v18;
              a1[77] = v18 + 2;
              ++a1[83];

              if (v4 == 5)
              {
                return;
              }

              v20 = nw_frame_create(2, 0, 0, 0, 0);
              if (v20)
              {
                v21 = v20;
                v21[2] = 0;
                v22 = a1[77];
                v21[3] = v22;
                *v22 = v21;
                a1[77] = v21 + 2;
                ++a1[83];

                if (v4 == 6)
                {
                  return;
                }

                v23 = nw_frame_create(2, 0, 0, 0, 0);
                if (v23)
                {
                  v24 = v23;
                  v24[2] = 0;
                  v25 = a1[77];
                  v24[3] = v25;
                  *v25 = v24;
                  a1[77] = v24 + 2;
                  ++a1[83];

                  if (v4 == 7)
                  {
                    return;
                  }

                  v26 = nw_frame_create(2, 0, 0, 0, 0);
                  if (v26)
                  {
                    v27 = v26;
                    v27[2] = 0;
                    v28 = a1[77];
                    v27[3] = v28;
                    *v28 = v27;
                    a1[77] = v27 + 2;
                    ++a1[83];

                    return;
                  }
                }
              }
            }
          }
        }
      }
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v32 = gLogObj;
    *buf = 136446210;
    v43 = "nw_aop2_offload_create_frame";
    v33 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v40 = 0;
    if (!__nwlog_fault(v33, &type, &v40))
    {
      goto LABEL_28;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v34 = gLogObj;
      v35 = type;
      if (os_log_type_enabled(v34, type))
      {
        *buf = 136446210;
        v43 = "nw_aop2_offload_create_frame";
        _os_log_impl(&dword_181A37000, v34, v35, "%{public}s nw_frame_create failed", buf, 0xCu);
      }

LABEL_27:

LABEL_28:
      if (!v33)
      {
        return;
      }

      goto LABEL_29;
    }

    if (v40 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v34 = gLogObj;
      v39 = type;
      if (os_log_type_enabled(v34, type))
      {
        *buf = 136446210;
        v43 = "nw_aop2_offload_create_frame";
        _os_log_impl(&dword_181A37000, v34, v39, "%{public}s nw_frame_create failed, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_27;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v34 = gLogObj;
    v37 = type;
    v38 = os_log_type_enabled(v34, type);
    if (!backtrace_string)
    {
      if (v38)
      {
        *buf = 136446210;
        v43 = "nw_aop2_offload_create_frame";
        _os_log_impl(&dword_181A37000, v34, v37, "%{public}s nw_frame_create failed, no backtrace", buf, 0xCu);
      }

      goto LABEL_27;
    }

    if (v38)
    {
      *buf = 136446466;
      v43 = "nw_aop2_offload_create_frame";
      v44 = 2082;
      v45 = backtrace_string;
      _os_log_impl(&dword_181A37000, v34, v37, "%{public}s nw_frame_create failed, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
    if (v33)
    {
LABEL_29:
      free(v33);
    }
  }
}

void nw_aop2_offload_manager_output_frame_finalize(void *a1, int a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a1;
  if (!nw_frame_get_metadata(v5))
  {
    __assert_rtn("nw_aop2_offload_manager_output_frame_finalize", "protocol_aop2_offload.mm", 692, "frame_info");
  }

  aon_net_tx_buffer_is_valid();
  v6 = nw_frame_effective_length(v5);
  aon_net_set_tx_length();
  if (gLogDatapath == 1)
  {
    v12 = __nwlog_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      if (a2)
      {
        v13 = v6;
      }

      else
      {
        v13 = 0;
      }

      v14 = 136446466;
      v15 = "nw_aop2_offload_manager_output_frame_finalize";
      v16 = 1024;
      v17 = v13;
      _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEBUG, "%{public}s aop enqueue buffer with length %u", &v14, 0x12u);
    }
  }

  aon_net_tx_enqueue_buffer();
  v7 = (a3 + 632);
  v8 = v5 + 2;
  v9 = v5[2];
  v10 = v5[3];
  if (v9)
  {
    v7 = (v9 + 24);
  }

  *v7 = v10;
  *v10 = v9;
  v5[3] = 0;
  *v8 = 0;
  --*(a3 + 680);
  v11 = *(a3 + 616);
  v5[3] = v11;
  *v11 = v5;
  *(a3 + 616) = v8;
  if (!*(a3 + 624))
  {
    aon_net_tx_ring_sync();
  }
}

void *___ZL35nw_aop2_offload_get_offload_managerv_block_invoke()
{
  result = malloc_type_calloc(1uLL, 0x2C8uLL, 0xDF5AA44FuLL);
  if (result)
  {
    goto LABEL_4;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v1 = gLogObj;
  os_log_type_enabled(v1, OS_LOG_TYPE_ERROR);
  v2 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v2);
  if (!result)
  {
    free(v2);
    result = 0;
LABEL_4:
    nw_aop2_offload_get_offload_manager(void)::aop2_offload_manager = result;
    result[76] = 0;
    result[77] = result + 76;
    result[80] = 0;
    result[81] = result + 80;
    result[78] = 0;
    result[79] = result + 78;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t nw_protocol_aop2_offload_get_input_frames(nw_protocol *a1, nw_protocol *a2, unsigned int a3, int a4, int a5, nw_frame_array_s *a6)
{
  v69 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v27 = __nwlog_obj();
    *buf = 136446210;
    v64 = "nw_protocol_aop2_offload_get_input_frames";
    v28 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v53) = 0;
    if (__nwlog_fault(v28, type, &v53))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v29 = __nwlog_obj();
        v30 = type[0];
        if (os_log_type_enabled(v29, type[0]))
        {
          *buf = 136446210;
          v64 = "nw_protocol_aop2_offload_get_input_frames";
          _os_log_impl(&dword_181A37000, v29, v30, "%{public}s called with null protocol", buf, 0xCu);
        }
      }

      else if (v53 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v29 = __nwlog_obj();
        v34 = type[0];
        v35 = os_log_type_enabled(v29, type[0]);
        if (backtrace_string)
        {
          if (v35)
          {
            *buf = 136446466;
            v64 = "nw_protocol_aop2_offload_get_input_frames";
            v65 = 2082;
            *v66 = backtrace_string;
            _os_log_impl(&dword_181A37000, v29, v34, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_79;
        }

        if (v35)
        {
          *buf = 136446210;
          v64 = "nw_protocol_aop2_offload_get_input_frames";
          _os_log_impl(&dword_181A37000, v29, v34, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v29 = __nwlog_obj();
        v42 = type[0];
        if (os_log_type_enabled(v29, type[0]))
        {
          *buf = 136446210;
          v64 = "nw_protocol_aop2_offload_get_input_frames";
          _os_log_impl(&dword_181A37000, v29, v42, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_79:
    if (v28)
    {
      free(v28);
    }

    return 0;
  }

  handle = a1->handle;
  v7 = a1;
  if (handle == &nw_protocol_ref_counted_handle)
  {
    goto LABEL_6;
  }

  if (handle != &nw_protocol_ref_counted_additional_handle)
  {
    LOBYTE(v7) = 0;
    v8 = 1;
    goto LABEL_10;
  }

  v7 = *a1[1].flow_id;
  if (v7)
  {
LABEL_6:
    callbacks = v7[1].callbacks;
    v8 = 0;
    if (callbacks)
    {
      v7[1].callbacks = (&callbacks->add_input_handler + 1);
    }

    LOBYTE(v7) = -1;
  }

  else
  {
    v8 = 1;
  }

  handle = a1->handle;
LABEL_10:
  v61 = a1;
  v62 = v7;
  if (handle == &nw_protocol_ref_counted_handle)
  {
LABEL_18:
    a6->tqh_first = 0;
    a6->tqh_last = &a6->tqh_first;
    if (!a2)
    {
      v31 = __nwlog_obj();
      *buf = 136446210;
      v64 = "nw_protocol_aop2_offload_get_input_frames";
      v11 = _os_log_send_and_compose_impl();

      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v53) = 0;
      if (__nwlog_fault(v11, type, &v53))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v12 = __nwlog_obj();
          v32 = type[0];
          if (os_log_type_enabled(v12, type[0]))
          {
            *buf = 136446210;
            v64 = "nw_protocol_aop2_offload_get_input_frames";
            _os_log_impl(&dword_181A37000, v12, v32, "%{public}s called with null input_protocol", buf, 0xCu);
          }

          goto LABEL_41;
        }

        if (v53 != 1)
        {
          v12 = __nwlog_obj();
          v43 = type[0];
          if (os_log_type_enabled(v12, type[0]))
          {
            *buf = 136446210;
            v64 = "nw_protocol_aop2_offload_get_input_frames";
            _os_log_impl(&dword_181A37000, v12, v43, "%{public}s called with null input_protocol, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_41;
        }

        v39 = __nw_create_backtrace_string();
        v12 = __nwlog_obj();
        v40 = type[0];
        v41 = os_log_type_enabled(v12, type[0]);
        if (!v39)
        {
          if (v41)
          {
            *buf = 136446210;
            v64 = "nw_protocol_aop2_offload_get_input_frames";
            _os_log_impl(&dword_181A37000, v12, v40, "%{public}s called with null input_protocol, no backtrace", buf, 0xCu);
          }

          goto LABEL_41;
        }

        if (v41)
        {
          *buf = 136446466;
          v64 = "nw_protocol_aop2_offload_get_input_frames";
          v65 = 2082;
          *v66 = v39;
          _os_log_impl(&dword_181A37000, v12, v40, "%{public}s called with null input_protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v39);
      }

LABEL_42:
      if (!v11)
      {
        goto LABEL_44;
      }

      goto LABEL_43;
    }

    output_handler_context = a2->output_handler_context;
    if (output_handler_context)
    {
      v15 = a1;
      *type = 0;
      v58 = type;
      v59 = 0x2020000000;
      v60 = 0;
      v53 = 0;
      v54 = &v53;
      v55 = 0x2020000000;
      v56 = 0;
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v45 = ___ZL41nw_protocol_aop2_offload_get_input_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke;
      v46 = &unk_1E6A2B0C8;
      v47 = type;
      v48 = &v53;
      v51 = a5;
      v52 = a4;
      v16 = output_handler_context[4];
      v49 = (output_handler_context + 4);
      v50 = a6;
      do
      {
        if (!v16)
        {
          break;
        }

        v17 = *(v16 + 32);
        v18 = (v45)(v44);
        v16 = v17;
      }

      while ((v18 & 1) != 0);
      if (gLogDatapath == 1)
      {
        v36 = __nwlog_obj();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
        {
          v37 = *(v58 + 6);
          v38 = *(v54 + 6);
          *buf = 136446978;
          v64 = "nw_protocol_aop2_offload_get_input_frames";
          v65 = 2082;
          *v66 = v15 + 288;
          *&v66[8] = 1024;
          *&v66[10] = v37;
          v67 = 1024;
          v68 = v38;
          _os_log_impl(&dword_181A37000, v36, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s returned input frames count %u with total bytes %u", buf, 0x22u);
        }
      }

      v19 = *(v58 + 6);
      _Block_object_dispose(&v53, 8);
      _Block_object_dispose(type, 8);
      if ((v8 & 1) == 0)
      {
        goto LABEL_45;
      }

      return v19;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v21 = gLogObj;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v64 = "nw_protocol_aop2_offload_get_input_frames";
      v65 = 1042;
      *v66 = 16;
      *&v66[4] = 2098;
      *&v66[6] = a2;
      _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_ERROR, "%{public}s Can't find hash table entry for %{public,uuid_t}.16P", buf, 0x1Cu);
    }

    goto LABEL_44;
  }

  if (handle == &nw_protocol_ref_counted_additional_handle)
  {
    a1 = *a1[1].flow_id;
    goto LABEL_18;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v10 = gLogObj;
  *buf = 136446210;
  v64 = "nw_protocol_aop2_offload_get_input_frames";
  v11 = _os_log_send_and_compose_impl();

  type[0] = OS_LOG_TYPE_ERROR;
  LOBYTE(v53) = 0;
  if (!__nwlog_fault(v11, type, &v53))
  {
    goto LABEL_42;
  }

  if (type[0] == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v12 = gLogObj;
    v13 = type[0];
    if (os_log_type_enabled(v12, type[0]))
    {
      *buf = 136446210;
      v64 = "nw_protocol_aop2_offload_get_input_frames";
      _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null aop2_offload", buf, 0xCu);
    }

LABEL_41:

    goto LABEL_42;
  }

  if (v53 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v12 = gLogObj;
    v25 = type[0];
    if (os_log_type_enabled(v12, type[0]))
    {
      *buf = 136446210;
      v64 = "nw_protocol_aop2_offload_get_input_frames";
      _os_log_impl(&dword_181A37000, v12, v25, "%{public}s called with null aop2_offload, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_41;
  }

  v22 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v12 = gLogObj;
  v23 = type[0];
  v24 = os_log_type_enabled(v12, type[0]);
  if (!v22)
  {
    if (v24)
    {
      *buf = 136446210;
      v64 = "nw_protocol_aop2_offload_get_input_frames";
      _os_log_impl(&dword_181A37000, v12, v23, "%{public}s called with null aop2_offload, no backtrace", buf, 0xCu);
    }

    goto LABEL_41;
  }

  if (v24)
  {
    *buf = 136446466;
    v64 = "nw_protocol_aop2_offload_get_input_frames";
    v65 = 2082;
    *v66 = v22;
    _os_log_impl(&dword_181A37000, v12, v23, "%{public}s called with null aop2_offload, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v22);
  if (v11)
  {
LABEL_43:
    free(v11);
  }

LABEL_44:
  v19 = 0;
  if ((v8 & 1) == 0)
  {
LABEL_45:
    nw::release_if_needed<nw_protocol *>(&v61);
  }

  return v19;
}

uint64_t ___ZL41nw_protocol_aop2_offload_get_input_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 24);
  if (v5 >= *(a1 + 64) || *(*(*(a1 + 40) + 8) + 24) >= *(a1 + 68))
  {
    v15 = 0;
  }

  else
  {
    *(v4 + 24) = v5 + 1;
    v6 = v3;
    v7 = nw_frame_unclaimed_length(v3);
    v3 = v6;
    v8 = *(a1 + 48);
    *(*(*(a1 + 40) + 8) + 24) += v7;
    v9 = (v8 + 8);
    v10 = v6 + 8;
    v11 = *(v6 + 4);
    v12 = *(v6 + 5);
    if (v11)
    {
      v9 = (v11 + 40);
    }

    *v9 = v12;
    *v12 = v11;
    *(v6 + 5) = 0;
    *v10 = 0;
    v13 = *(a1 + 56);
    v14 = *(v13 + 8);
    *(v6 + 5) = v14;
    *v14 = v6;
    *(v13 + 8) = v10;
    v15 = 1;
  }

  return v15;
}

uint64_t nw_protocol_aop2_offload_remove_input_handler(nw_protocol *a1, nw_protocol *a2, int a3)
{
  v73 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v40 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_aop2_offload_remove_input_handler";
    v41 = _os_log_send_and_compose_impl();

    LOBYTE(type) = 16;
    LOBYTE(v67) = 0;
    if (__nwlog_fault(v41, &type, &v67))
    {
      if (type == 17)
      {
        v42 = __nwlog_obj();
        v43 = type;
        if (os_log_type_enabled(v42, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_aop2_offload_remove_input_handler";
          _os_log_impl(&dword_181A37000, v42, v43, "%{public}s called with null protocol", buf, 0xCu);
        }
      }

      else if (v67 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v42 = __nwlog_obj();
        v54 = type;
        v55 = os_log_type_enabled(v42, type);
        if (backtrace_string)
        {
          if (v55)
          {
            *buf = 136446466;
            *&buf[4] = "nw_protocol_aop2_offload_remove_input_handler";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v42, v54, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_123;
        }

        if (v55)
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_aop2_offload_remove_input_handler";
          _os_log_impl(&dword_181A37000, v42, v54, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v42 = __nwlog_obj();
        v60 = type;
        if (os_log_type_enabled(v42, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_aop2_offload_remove_input_handler";
          _os_log_impl(&dword_181A37000, v42, v60, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_123:
    if (v41)
    {
      free(v41);
    }

    return 0;
  }

  handle = a1->handle;
  v7 = a1;
  if (handle == &nw_protocol_ref_counted_handle)
  {
    goto LABEL_6;
  }

  if (handle != &nw_protocol_ref_counted_additional_handle)
  {
    v8 = 0;
    goto LABEL_10;
  }

  v7 = *a1[1].flow_id;
  if (v7)
  {
LABEL_6:
    callbacks = v7[1].callbacks;
    if (callbacks)
    {
      v7[1].callbacks = (&callbacks->add_input_handler + 1);
    }

    v8 = -1;
  }

  else
  {
    v8 = 0;
  }

  handle = a1->handle;
LABEL_10:
  v67 = a1;
  v68 = v8;
  v10 = a1;
  if (handle == &nw_protocol_ref_counted_handle)
  {
    goto LABEL_18;
  }

  if (handle == &nw_protocol_ref_counted_additional_handle)
  {
    v10 = *a1[1].flow_id;
LABEL_18:
    if (nw_aop2_offload_get_offload_manager(void)::onceToken == -1)
    {
      if (a2)
      {
        goto LABEL_20;
      }
    }

    else
    {
      dispatch_once(&nw_aop2_offload_get_offload_manager(void)::onceToken, &__block_literal_global_19);
      if (a2)
      {
LABEL_20:
        v15 = nw_aop2_offload_get_offload_manager(void)::aop2_offload_manager;
        if ((HIDWORD(v10[4].identifier) | 4) != 5)
        {
          nw_aop2_offload_aon_net_remove_flow(a1);
        }

        *v10[2].flow_id = 0;
        if (v15)
        {
          output_handler_context = a2->output_handler_context;
          if (output_handler_context)
          {
            a2->output_handler_context = 0;
            a2->output_handler = 0;
            v17 = output_handler_context[4];
            if (v17)
            {
              *(v17 + 40) = &type;
              v18 = output_handler_context[5];
              *&type = v17;
              *(&type + 1) = v18;
              output_handler_context[4] = 0;
              output_handler_context[5] = output_handler_context + 4;
              *buf = MEMORY[0x1E69E9820];
              *&buf[8] = 0x40000000;
              *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
              *&v71 = &__block_descriptor_tmp_21_49595;
              BYTE8(v71) = 0;
              do
              {
                v19 = type;
                if (!type)
                {
                  break;
                }

                v20 = *(type + 32);
                v21 = *(type + 40);
                v22 = (v20 + 40);
                if (!v20)
                {
                  v22 = &type + 1;
                }

                *v22 = v21;
                *v21 = v20;
                *(v19 + 32) = 0;
                *(v19 + 40) = 0;
              }

              while (((*&buf[16])(buf) & 1) != 0);
            }

            v23 = v15[82];
            if (!v23 || !*(v23 + 48))
            {
LABEL_36:
              if (a2->output_handler == a1)
              {
                nw_protocol_set_output_handler(a2, 0);
              }

              if (_nw_signposts_once != -1)
              {
                dispatch_once(&_nw_signposts_once, &__block_literal_global_61);
              }

              if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
              {
                kdebug_trace();
              }

              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v29 = gLogObj;
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
              {
                v30 = *&v10[4].flow_id[12];
                *buf = 136446722;
                *&buf[4] = "nw_protocol_aop2_offload_remove_input_handler";
                *&buf[12] = 2082;
                *&buf[14] = v10 + 288;
                *&buf[22] = 1024;
                LODWORD(v71) = v30;
                _os_log_impl(&dword_181A37000, v29, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s remove input handler for flow tag 0x%x", buf, 0x1Cu);
              }

              if (nw_protocol_get_input_handler(a1) == a2)
              {
                nw_protocol_set_input_handler(a1, 0);
                output_handler = nw_protocol_get_output_handler(a1);
                nw_protocol_remove_input_handler(output_handler, a1);
                if (a3)
                {

                  nw_protocol_destroy(&v10[1].output_handler, 0);
                  v8 = v68;
                }

                v32 = 1;
                if (v8)
                {
                  goto LABEL_97;
                }

                return v32;
              }

              goto LABEL_96;
            }

            if (nw_hash_table_remove_node(v23, output_handler_context))
            {
              if (!nw_hash_table_count(v15[82], v24))
              {
                v25 = v15[86];
                *buf = MEMORY[0x1E69E9820];
                *&buf[8] = 3221225472;
                *&buf[16] = ___ZL37nw_aop2_offload_manager_remove_clientP23nw_aop2_offload_managerPv_block_invoke;
                *&v71 = &__block_descriptor_40_e5_v8__0l;
                *(&v71 + 1) = v15;
                source = nw_queue_context_create_source(v25, 2, 3, 0, buf, 0);
                if (!source)
                {
                  __assert_rtn("nw_aop2_offload_manager_remove_client", "protocol_aop2_offload.mm", 593, "timer");
                }

                v27 = dispatch_time(0x8000000000000000, 10000000000);
                nw_queue_set_timer_values(source, v27, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
                nw_queue_activate_source(source, v28);
                v15[87] = source;
              }

              goto LABEL_36;
            }

            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v37 = gLogObj;
            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              LODWORD(type) = 136446210;
              *(&type + 4) = "nw_aop2_offload_manager_remove_client";
              _os_log_impl(&dword_181A37000, v37, OS_LOG_TYPE_ERROR, "%{public}s nw_hash_table_remove_node failed", &type, 0xCu);
            }

            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v38 = gLogObj;
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446210;
              *&buf[4] = "nw_aop2_offload_remove_input_handler";
              _os_log_impl(&dword_181A37000, v38, OS_LOG_TYPE_ERROR, "%{public}s failed to remove client from aop2_offload manager table", buf, 0xCu);
            }
          }

LABEL_65:
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v39 = gLogObj;
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446978;
            *&buf[4] = "nw_protocol_aop2_offload_remove_input_handler";
            *&buf[12] = 2082;
            *&buf[14] = v10 + 288;
            *&buf[22] = 1042;
            LODWORD(v71) = 16;
            WORD2(v71) = 2098;
            *(&v71 + 6) = a2;
            _os_log_impl(&dword_181A37000, v39, OS_LOG_TYPE_ERROR, "%{public}s %{public}s aop2_offload does not have input handler registered for %{public,uuid_t}.16P", buf, 0x26u);
          }

          goto LABEL_96;
        }

        v56 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_aop2_offload_remove_input_handler";
        v57 = _os_log_send_and_compose_impl();

        LOBYTE(type) = 16;
        v69 = 0;
        if (__nwlog_fault(v57, &type, &v69))
        {
          if (type == 17)
          {
            v58 = __nwlog_obj();
            v59 = type;
            if (os_log_type_enabled(v58, type))
            {
              *buf = 136446210;
              *&buf[4] = "nw_aop2_offload_remove_input_handler";
              _os_log_impl(&dword_181A37000, v58, v59, "%{public}s called with null aop2_offload_manager", buf, 0xCu);
            }
          }

          else
          {
            v66 = v8;
            if (v69 == 1)
            {
              v61 = __nw_create_backtrace_string();
              v62 = __nwlog_obj();
              v63 = type;
              v64 = os_log_type_enabled(v62, type);
              if (v61)
              {
                if (v64)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_aop2_offload_remove_input_handler";
                  *&buf[12] = 2082;
                  *&buf[14] = v61;
                  _os_log_impl(&dword_181A37000, v62, v63, "%{public}s called with null aop2_offload_manager, dumping backtrace:%{public}s", buf, 0x16u);
                }

                v8 = v66;
                free(v61);
                goto LABEL_129;
              }

              if (v64)
              {
                *buf = 136446210;
                *&buf[4] = "nw_aop2_offload_remove_input_handler";
                _os_log_impl(&dword_181A37000, v62, v63, "%{public}s called with null aop2_offload_manager, no backtrace", buf, 0xCu);
              }
            }

            else
            {
              v62 = __nwlog_obj();
              v65 = type;
              if (os_log_type_enabled(v62, type))
              {
                *buf = 136446210;
                *&buf[4] = "nw_aop2_offload_remove_input_handler";
                _os_log_impl(&dword_181A37000, v62, v65, "%{public}s called with null aop2_offload_manager, backtrace limit exceeded", buf, 0xCu);
              }
            }

            v8 = v66;
          }
        }

LABEL_129:
        if (v57)
        {
          free(v57);
        }

        goto LABEL_65;
      }
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v44 = gLogObj;
    *buf = 136446210;
    *&buf[4] = "nw_protocol_aop2_offload_remove_input_handler";
    v12 = _os_log_send_and_compose_impl();

    LOBYTE(type) = 16;
    v69 = 0;
    if (!__nwlog_fault(v12, &type, &v69))
    {
      goto LABEL_94;
    }

    if (type == 17)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v45 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_aop2_offload_remove_input_handler";
        _os_log_impl(&dword_181A37000, v13, v45, "%{public}s called with null input_protocol", buf, 0xCu);
      }

      goto LABEL_93;
    }

    if (v69 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v50 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_aop2_offload_remove_input_handler";
        _os_log_impl(&dword_181A37000, v13, v50, "%{public}s called with null input_protocol, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_93;
    }

    v46 = __nw_create_backtrace_string();
    if (!v46)
    {
      v13 = __nwlog_obj();
      v51 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_aop2_offload_remove_input_handler";
        _os_log_impl(&dword_181A37000, v13, v51, "%{public}s called with null input_protocol, no backtrace", buf, 0xCu);
      }

      goto LABEL_93;
    }

    v47 = v46;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v48 = gLogObj;
    v49 = type;
    if (os_log_type_enabled(v48, type))
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_aop2_offload_remove_input_handler";
      *&buf[12] = 2082;
      *&buf[14] = v47;
      _os_log_impl(&dword_181A37000, v48, v49, "%{public}s called with null input_protocol, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v47);
    if (!v12)
    {
      goto LABEL_96;
    }

LABEL_95:
    free(v12);
    goto LABEL_96;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v11 = gLogObj;
  *buf = 136446210;
  *&buf[4] = "nw_protocol_aop2_offload_remove_input_handler";
  v12 = _os_log_send_and_compose_impl();

  LOBYTE(type) = 16;
  v69 = 0;
  if (!__nwlog_fault(v12, &type, &v69))
  {
    goto LABEL_94;
  }

  if (type == 17)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v13 = gLogObj;
    v14 = type;
    if (os_log_type_enabled(v13, type))
    {
      *buf = 136446210;
      *&buf[4] = "nw_protocol_aop2_offload_remove_input_handler";
      _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null aop2_offload", buf, 0xCu);
    }

LABEL_93:

LABEL_94:
    if (!v12)
    {
      goto LABEL_96;
    }

    goto LABEL_95;
  }

  if (v69 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v13 = gLogObj;
    v36 = type;
    if (os_log_type_enabled(v13, type))
    {
      *buf = 136446210;
      *&buf[4] = "nw_protocol_aop2_offload_remove_input_handler";
      _os_log_impl(&dword_181A37000, v13, v36, "%{public}s called with null aop2_offload, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_93;
  }

  v33 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v13 = gLogObj;
  v34 = type;
  v35 = os_log_type_enabled(v13, type);
  if (!v33)
  {
    if (v35)
    {
      *buf = 136446210;
      *&buf[4] = "nw_protocol_aop2_offload_remove_input_handler";
      _os_log_impl(&dword_181A37000, v13, v34, "%{public}s called with null aop2_offload, no backtrace", buf, 0xCu);
    }

    goto LABEL_93;
  }

  if (v35)
  {
    *buf = 136446466;
    *&buf[4] = "nw_protocol_aop2_offload_remove_input_handler";
    *&buf[12] = 2082;
    *&buf[14] = v33;
    _os_log_impl(&dword_181A37000, v13, v34, "%{public}s called with null aop2_offload, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v33);
  if (v12)
  {
    goto LABEL_95;
  }

LABEL_96:
  v32 = 0;
  if (v8)
  {
LABEL_97:
    nw::release_if_needed<nw_protocol *>(&v67);
  }

  return v32;
}

void sub_1822E127C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if ((v14 & 1) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  nw::release_if_needed<nw_protocol *>(&a14);
  _Unwind_Resume(exception_object);
}

double ___ZL37nw_aop2_offload_manager_remove_clientP23nw_aop2_offload_managerPv_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 696))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v2 = gLogObj;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v5 = 136446210;
      v6 = "nw_aop2_offload_manager_remove_client_block_invoke";
      _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_INFO, "%{public}s Cleaning up aop2_offload manager after inactivity", &v5, 0xCu);
    }

    return nw_aop2_offload_manager_cleanup(*(a1 + 32), v3);
  }

  return result;
}

double nw_aop2_offload_manager_cleanup(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 512);
  if (*(a1 + 680))
  {
    if (v3)
    {
      for (i = *(a1 + 624); i; i = *(a1 + 624))
      {
        v5 = i;
        nw_frame_get_metadata(v5);
        aon_net_set_tx_length();
        aon_net_tx_enqueue_buffer();
        v6 = v5[2];
        v7 = v5[3];
        v8 = (v6 + 24);
        if (!v6)
        {
          v8 = (a1 + 632);
        }

        *v8 = v7;
        *v7 = v6;
        v5[2] = 0;
        v5[3] = 0;
      }
    }

    else
    {
      while (1)
      {
        v29 = *(a1 + 624);
        if (!v29)
        {
          break;
        }

        v24 = v29;
        v25 = v24;
        v26 = v24[2];
        v27 = v24[3];
        v28 = (v26 + 24);
        if (!v26)
        {
          v28 = (a1 + 632);
        }

        *v28 = v27;
        *v27 = v26;
        v24[2] = 0;
        v24[3] = 0;
      }
    }
  }

  if (v3)
  {
    aon_net_tx_ring_sync();
    *(a1 + 680) = 0;
    if (!*(a1 + 684))
    {
LABEL_14:
      aon_net_rx_ring_sync();
      goto LABEL_15;
    }

    for (j = *(a1 + 640); j; j = *(a1 + 640))
    {
      v10 = j;
      nw_frame_get_metadata(v10);
      aon_net_dealloc_rx_buffer();
      v11 = v10[2];
      v12 = v10[3];
      v13 = (v11 + 24);
      if (!v11)
      {
        v13 = (a1 + 648);
      }

      *v13 = v12;
      *v12 = v11;
      v10[2] = 0;
      v10[3] = 0;
    }

LABEL_13:
    if (!v3)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  *(a1 + 680) = 0;
  if (*(a1 + 684))
  {
    for (k = *(a1 + 640); k; k = *(a1 + 640))
    {
      v31 = k;
      v32 = v31;
      v33 = v31[2];
      v34 = v31[3];
      v35 = (v33 + 24);
      if (!v33)
      {
        v35 = (a1 + 648);
      }

      *v35 = v34;
      *v34 = v33;
      v31[2] = 0;
      v31[3] = 0;
    }

    goto LABEL_13;
  }

LABEL_15:
  *(a1 + 684) = 0;
  for (m = *(a1 + 608); m; m = *(a1 + 608))
  {
    v15 = m;
    v16 = v15;
    v17 = v15[2];
    v18 = v15[3];
    v19 = (v17 + 24);
    if (!v17)
    {
      v19 = (a1 + 616);
    }

    *v19 = v18;
    *v18 = v17;
    v15[2] = 0;
    v15[3] = 0;
  }

  if (*(a1 + 512))
  {
    aon_net_service_destroy();
    *(a1 + 512) = 0;
  }

  v20 = *(a1 + 656);
  if (v20)
  {
    if (v20[12]._os_unfair_lock_opaque)
    {
      __assert_rtn("nw_aop2_offload_manager_cleanup", "protocol_aop2_offload.mm", 465, "nw_aop2_offload_hash_table_get_count(aop2_offload_manager->input_clients) == 0");
    }

    _nw_hash_table_release(v20, a2);
    *(a1 + 656) = 0;
  }

  v21 = *(a1 + 696);
  if (v21)
  {
    nw_queue_cancel_source(v21, a2);
    *(a1 + 696) = 0;
  }

  v22 = *(a1 + 688);
  *(a1 + 688) = 0;

  *(a1 + 704) = 0;
  result = 0.0;
  *(a1 + 664) = 0u;
  return result;
}

uint64_t nw_protocol_aop2_offload_add_input_handler(nw_protocol *a1, nw_protocol *a2)
{
  v286 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    v5 = a1;
    if (handle == &nw_protocol_ref_counted_handle)
    {
      goto LABEL_6;
    }

    if (handle != &nw_protocol_ref_counted_additional_handle)
    {
      v6 = 0;
      goto LABEL_10;
    }

    v5 = *a1[1].flow_id;
    if (v5)
    {
LABEL_6:
      callbacks = v5[1].callbacks;
      if (callbacks)
      {
        v5[1].callbacks = (&callbacks->add_input_handler + 1);
      }

      v6 = -1;
    }

    else
    {
      v6 = 0;
    }

    handle = a1->handle;
LABEL_10:
    v252 = a1;
    v253 = v6;
    v8 = a1;
    if (handle != &nw_protocol_ref_counted_handle)
    {
      if (handle != &nw_protocol_ref_counted_additional_handle)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        *buf = 136446210;
        *&buf[4] = "nw_protocol_aop2_offload_add_input_handler";
        v10 = _os_log_send_and_compose_impl();

        type[0] = OS_LOG_TYPE_ERROR;
        LOBYTE(v269[0]) = 0;
        if (!__nwlog_fault(v10, type, v269))
        {
          goto LABEL_136;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v11 = gLogObj;
          v12 = type[0];
          if (os_log_type_enabled(v11, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_protocol_aop2_offload_add_input_handler";
            _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null aop2_offload", buf, 0xCu);
          }

LABEL_135:

          goto LABEL_136;
        }

        if (LOBYTE(v269[0]) != 1)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v11 = gLogObj;
          v52 = type[0];
          if (os_log_type_enabled(v11, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_protocol_aop2_offload_add_input_handler";
            _os_log_impl(&dword_181A37000, v11, v52, "%{public}s called with null aop2_offload, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_135;
        }

        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        v27 = type[0];
        v28 = os_log_type_enabled(v11, type[0]);
        if (!backtrace_string)
        {
          if (v28)
          {
            *buf = 136446210;
            *&buf[4] = "nw_protocol_aop2_offload_add_input_handler";
            _os_log_impl(&dword_181A37000, v11, v27, "%{public}s called with null aop2_offload, no backtrace", buf, 0xCu);
          }

          goto LABEL_135;
        }

        if (v28)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_aop2_offload_add_input_handler";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v11, v27, "%{public}s called with null aop2_offload, dumping backtrace:%{public}s", buf, 0x16u);
        }

LABEL_37:

        free(backtrace_string);
        if (!v10)
        {
          goto LABEL_138;
        }

        goto LABEL_137;
      }

      v8 = *a1[1].flow_id;
    }

    if (!a2)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v24 = gLogObj;
      *buf = 136446210;
      *&buf[4] = "nw_protocol_aop2_offload_add_input_handler";
      v10 = _os_log_send_and_compose_impl();

      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v269[0]) = 0;
      if (!__nwlog_fault(v10, type, v269))
      {
        goto LABEL_136;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        v25 = type[0];
        if (os_log_type_enabled(v11, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_aop2_offload_add_input_handler";
          _os_log_impl(&dword_181A37000, v11, v25, "%{public}s called with null input_protocol", buf, 0xCu);
        }
      }

      else if (LOBYTE(v269[0]) == 1)
      {
        v48 = __nw_create_backtrace_string();
        if (v48)
        {
          v49 = v48;
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v50 = gLogObj;
          v51 = type[0];
          if (os_log_type_enabled(v50, type[0]))
          {
            *buf = 136446466;
            *&buf[4] = "nw_protocol_aop2_offload_add_input_handler";
            *&buf[12] = 2082;
            *&buf[14] = v49;
            _os_log_impl(&dword_181A37000, v50, v51, "%{public}s called with null input_protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v49);
          if (!v10)
          {
            goto LABEL_138;
          }

          goto LABEL_137;
        }

        v11 = __nwlog_obj();
        v96 = type[0];
        if (os_log_type_enabled(v11, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_aop2_offload_add_input_handler";
          _os_log_impl(&dword_181A37000, v11, v96, "%{public}s called with null input_protocol, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        v94 = type[0];
        if (os_log_type_enabled(v11, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_aop2_offload_add_input_handler";
          _os_log_impl(&dword_181A37000, v11, v94, "%{public}s called with null input_protocol, backtrace limit exceeded", buf, 0xCu);
        }
      }

      goto LABEL_135;
    }

    if (HIDWORD(v8[4].identifier))
    {
      __assert_rtn("nw_protocol_aop2_offload_add_input_handler", "protocol_aop2_offload.mm", 1594, "aop2_offload->state == nw_aop2_offload_state_invalid");
    }

    HIDWORD(v8[4].identifier) = 1;
    v13 = nw_protocol_get_parameters(a2);
    output_handler = v8[1].output_handler;
    v8[1].output_handler = v13;

    if (v8[1].output_handler)
    {
      v15 = nw_protocol_get_path(a2);
      v16 = v8[1].handle;
      v8[1].handle = v15;

      if (v8[1].handle)
      {
        v17 = nw_parameters_copy_context(v8[1].output_handler);
        default_input_handler = v8[1].default_input_handler;
        v8[1].default_input_handler = v17;

        if (v8[1].default_input_handler)
        {
          v19 = nw_path_copy_interface(v8[1].handle);
          v20 = v19;
          if (v19)
          {
            v21 = _nw_interface_get_type(v19);
            if (v21 - 3 <= 0xFFFFFFFD)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v22 = gLogObj;
              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                if (v21 > 4)
                {
                  v23 = "unknown";
                }

                else
                {
                  v23 = off_1E6A357B8[v21];
                }

                *buf = 136446722;
                *&buf[4] = "nw_protocol_aop2_offload_add_input_handler";
                *&buf[12] = 2082;
                *&buf[14] = v8 + 288;
                *&buf[22] = 2080;
                *&buf[24] = v23;
                _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_ERROR, "%{public}s %{public}s interface type is %s", buf, 0x20u);
              }

              v95 = 0;
              goto LABEL_210;
            }

            v249 = v20;
            v251 = nw_parameters_copy_default_protocol_stack(v8[1].output_handler);
            v29 = nw_protocol_boringssl_copy_definition();
            v30 = nw_protocol_stack_includes_protocol(v251, v29);

            if (v30)
            {
              HIBYTE(v8[4].callbacks) |= 1u;
            }

            if (nw_protocol_setup_tcp_definition_onceToken != -1)
            {
              dispatch_once(&nw_protocol_setup_tcp_definition_onceToken, &__block_literal_global_415);
            }

            v31 = g_tcp_definition;
            v32 = nw_protocol_stack_includes_protocol(v251, v31);

            if (v32)
            {
              HIBYTE(v8[4].callbacks) |= 2u;
            }

            if (nw_protocol_setup_udp_definition_onceToken != -1)
            {
              dispatch_once(&nw_protocol_setup_udp_definition_onceToken, &__block_literal_global_5_47888);
            }

            v33 = g_udp_definition;
            v34 = nw_protocol_stack_includes_protocol(v251, v33);

            if (v34)
            {
              HIBYTE(v8[4].callbacks) |= 4u;
            }

            v35 = nw_protocol_get_local_endpoint(a2);
            v36 = v35;
            if (v35)
            {
              v37 = v35;
              v38 = _nw_endpoint_get_type(v37);

              if (v38 == 1)
              {
                v250 = nw_protocol_get_remote_endpoint(a2);
                v248 = v36;
                if (v250 && (v39 = v250, v247 = v39, v40 = _nw_endpoint_get_type(v39), v39, v40 == 1))
                {
                  v41 = v37;
                  address_family = _nw_endpoint_get_address_family(v41);

                  BYTE6(v8[4].callbacks) = address_family;
                  v43 = v41;
                  v44 = v43;
                  if (address_family == 2)
                  {
                    address = _nw_endpoint_get_address(v43);

                    LODWORD(v8[2].callbacks) = *(address + 4);
                    v46 = v39;
                    v47 = _nw_endpoint_get_address(v46);

                    LODWORD(v8[2].handle) = *(v47 + 4);
                  }

                  else
                  {
                    v53 = _nw_endpoint_get_address(v43);

                    *&v8[2].callbacks = *(v53 + 8);
                    v54 = v39;
                    v55 = _nw_endpoint_get_address(v54);

                    *&v8[2].handle = *(v55 + 8);
                  }

                  v56 = v44;
                  port = _nw_endpoint_get_port(v56);

                  LOWORD(v8[4].callbacks) = __rev16(port);
                  v58 = v247;
                  v59 = _nw_endpoint_get_port(v58);
                  v244 = v58;

                  WORD1(v8[4].callbacks) = __rev16(v59);
                  if (v21 != 1)
                  {
LABEL_69:
                    nw_protocol_set_input_handler(a1, a2);
                    *v8->flow_id = *a2->flow_id;
                    if (!a2->output_handler)
                    {
                      a2->output_handler = v8;
                    }

                    v66 = nw_path_copy_flow_registration(v8[1].default_input_handler, a1);
                    output_handler_context = v8[1].output_handler_context;
                    v8[1].output_handler_context = v66;

                    v68 = v8[1].output_handler_context;
                    if (v68)
                    {
                      nw_path_flow_registration_get_unique_flow_tag(v8[1].handle, v68, &v8[4].flow_id[12]);
                      nw_path_flow_registration_get_flow_stats_index(v8[1].handle, v8[1].output_handler_context, &v8[4].identifier);
                      v69 = v8[1].output_handler;
                      v243 = v56;
                      if (nw_protocol_setup_aop2_offload_definition(void)::onceToken != -1)
                      {
                        dispatch_once(&nw_protocol_setup_aop2_offload_definition(void)::onceToken, &__block_literal_global);
                      }

                      v70 = g_aop2_offload_definition;
                      v71 = nw_parameters_copy_protocol_options_for_definition(v69, v70);

                      v246 = v71;
                      if (!v71)
                      {
                        v78 = 0;
                        v75 = 0;
                        __s1 = 0;
LABEL_86:
                        if (nw_aop2_offload_get_offload_manager(void)::onceToken != -1)
                        {
                          dispatch_once(&nw_aop2_offload_get_offload_manager(void)::onceToken, &__block_literal_global_19);
                        }

                        v79 = nw_aop2_offload_get_offload_manager(void)::aop2_offload_manager;
                        if (!nw_aop2_offload_get_offload_manager(void)::aop2_offload_manager)
                        {
                          __assert_rtn("nw_protocol_aop2_offload_add_input_handler", "protocol_aop2_offload.mm", 1686, "aop2_offload_manager");
                        }

                        *v8[2].flow_id = nw_aop2_offload_get_offload_manager(void)::aop2_offload_manager;
                        v80 = v8[1].default_input_handler;
                        v81 = v80;
                        if (v81)
                        {
                          v82 = (v79 + 688);
                          if (*(v79 + 704))
                          {
                            if (*v82 != v81)
                            {
                              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                              networkd_settings_init();
                              v83 = gLogObj;
                              if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
                              {
                                *buf = 136446210;
                                *&buf[4] = "nw_aop2_offload_manager_add_client";
                                _os_log_impl(&dword_181A37000, v83, OS_LOG_TYPE_ERROR, "%{public}s context mismatch", buf, 0xCu);
                              }

LABEL_219:

                              goto LABEL_206;
                            }

                            if (__s1 && *__s1 && strncmp(__s1, v79, 0x80uLL))
                            {
                              v83 = __nwlog_obj();
                              if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
                              {
                                *buf = 136446210;
                                *&buf[4] = "nw_aop2_offload_manager_add_client";
                                _os_log_impl(&dword_181A37000, v83, OS_LOG_TYPE_ERROR, "%{public}s tightbeam client name mismatch", buf, 0xCu);
                              }

                              goto LABEL_219;
                            }

                            if (v75 && *v75 && strncmp(v75, (v79 + 128), 0x80uLL))
                            {
                              v83 = __nwlog_obj();
                              if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
                              {
                                *buf = 136446210;
                                *&buf[4] = "nw_aop2_offload_manager_add_client";
                                _os_log_impl(&dword_181A37000, v83, OS_LOG_TYPE_ERROR, "%{public}s tightbeam server name mismatch", buf, 0xCu);
                              }

                              goto LABEL_219;
                            }

                            if (v71 && *v71 && strncmp(v71, (v79 + 256), 0x80uLL))
                            {
                              v83 = __nwlog_obj();
                              if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
                              {
                                *buf = 136446210;
                                *&buf[4] = "nw_aop2_offload_manager_add_client";
                                _os_log_impl(&dword_181A37000, v83, OS_LOG_TYPE_ERROR, "%{public}s shared memory tx name mismatch", buf, 0xCu);
                              }

                              goto LABEL_219;
                            }

                            if (v78 && *v78 && strncmp(v78, (v79 + 384), 0x80uLL))
                            {
                              v83 = __nwlog_obj();
                              if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
                              {
                                *buf = 136446210;
                                *&buf[4] = "nw_aop2_offload_manager_add_client";
                                _os_log_impl(&dword_181A37000, v83, OS_LOG_TYPE_ERROR, "%{public}s shared memory rx name mismatch", buf, 0xCu);
                              }

                              goto LABEL_219;
                            }

                            v133 = *(v79 + 656);
                            if (v133)
                            {
                              type[0] = OS_LOG_TYPE_DEFAULT;
                              v134 = nw_hash_table_add_object(v133, &v8[1].output_handler, type);
                              if (type[0])
                              {
                                v95 = v134;
                                v136 = *(v79 + 696);
                                if (v136)
                                {
                                  nw_queue_cancel_source(v136, v135);
                                  *(v79 + 696) = 0;
                                }
                              }

                              else
                              {
                                v137 = __nwlog_obj();
                                if (os_log_type_enabled(v137, OS_LOG_TYPE_ERROR))
                                {
                                  *buf = 136446210;
                                  *&buf[4] = "nw_aop2_offload_manager_add_client";
                                  _os_log_impl(&dword_181A37000, v137, OS_LOG_TYPE_ERROR, "%{public}s client addition to aop2_offload manager failed", buf, 0xCu);
                                }

                                v95 = 0;
                              }

                              goto LABEL_189;
                            }

                            v238 = 556;
LABEL_463:
                            __assert_rtn("nw_aop2_offload_manager_add_client", "protocol_aop2_offload.mm", v238, "aop2_offload_manager->input_clients");
                          }

                          objc_storeStrong(v82, v80);
                          v285 = 0u;
                          v283 = 0u;
                          v284 = 0u;
                          v281 = 0u;
                          v282 = 0u;
                          v279 = 0u;
                          v280 = 0u;
                          v277 = 0u;
                          v278 = 0u;
                          v275 = 0u;
                          v276 = 0u;
                          v273 = 0u;
                          v274 = 0u;
                          v271 = 0u;
                          memset(buf, 0, sizeof(buf));
                          v270 = 0u;
                          memset(v269, 0, sizeof(v269));
                          v267 = 0u;
                          v268 = 0u;
                          memset(v266, 0, sizeof(v266));
                          memset(v265, 0, sizeof(v265));
                          *type = 0u;
                          v84 = getpid();
                          if (v84)
                          {
                            proc_name(v84, type, 0x100u);
                          }

                          if (__s1 && *__s1)
                          {
                            *v79 = *__s1;
                            v85 = (v79 + 1);
                            v86 = (__s1 + 1);
                            v87 = 127;
                            while (1)
                            {
                              v88 = v87-- > 1;
                              if (!v88)
                              {
                                break;
                              }

                              v89 = *v86++;
                              *v85++ = v89;
                              if (!v89)
                              {
                                goto LABEL_105;
                              }
                            }

                            *v85 = 0;
                            if (!v75)
                            {
                              goto LABEL_146;
                            }
                          }

                          else
                          {
                            snprintf(v79, 0x80uLL, "com.apple.aop2.ulpn.%s.default.ap.client", type);
LABEL_105:
                            if (!v75)
                            {
                              goto LABEL_146;
                            }
                          }

                          if (*v75)
                          {
                            *(v79 + 128) = *v75;
                            v90 = (v75 + 1);
                            v91 = (v79 + 129);
                            v92 = 127;
                            while (1)
                            {
                              v88 = v92-- > 1;
                              if (!v88)
                              {
                                break;
                              }

                              v93 = *v90++;
                              *v91++ = v93;
                              if (!v93)
                              {
                                goto LABEL_147;
                              }
                            }

                            *v91 = 0;
                            if (!v71)
                            {
                              goto LABEL_155;
                            }

                            goto LABEL_148;
                          }

LABEL_146:
                          snprintf((v79 + 128), 0x80uLL, "com.apple.aop2.ulpn.%s.default", type);
LABEL_147:
                          if (!v71)
                          {
                            goto LABEL_155;
                          }

LABEL_148:
                          if (*v71)
                          {
                            *(v79 + 256) = *v71;
                            v97 = (v71 + 1);
                            v98 = (v79 + 257);
                            v99 = 127;
                            while (1)
                            {
                              v88 = v99-- > 1;
                              if (!v88)
                              {
                                break;
                              }

                              v100 = *v97++;
                              *v98++ = v100;
                              if (!v100)
                              {
                                goto LABEL_156;
                              }
                            }

                            *v98 = 0;
                            if (!v78)
                            {
                              goto LABEL_164;
                            }

                            goto LABEL_157;
                          }

LABEL_155:
                          snprintf((v79 + 256), 0x80uLL, "aop2.ulpn.%s.tx.default", type);
LABEL_156:
                          if (!v78)
                          {
                            goto LABEL_164;
                          }

LABEL_157:
                          if (*v78)
                          {
                            *(v79 + 384) = *v78;
                            v101 = (v78 + 1);
                            v102 = (v79 + 385);
                            v103 = 127;
                            while (1)
                            {
                              v88 = v103-- > 1;
                              if (!v88)
                              {
                                break;
                              }

                              v104 = *v101++;
                              *v102++ = v104;
                              if (!v104)
                              {
                                goto LABEL_165;
                              }
                            }

                            *v102 = 0;
LABEL_165:
                            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                            networkd_settings_init();
                            v105 = gLogObj;
                            if (os_log_type_enabled(v105, OS_LOG_TYPE_DEBUG))
                            {
                              *v254 = 136447234;
                              v255 = "nw_aop2_offload_setup_aon_net_service";
                              v256 = 2080;
                              v257 = v79;
                              v258 = 2080;
                              v259 = v79 + 128;
                              v260 = 2080;
                              v261 = v79 + 256;
                              v262 = 2080;
                              v263 = v79 + 384;
                              _os_log_impl(&dword_181A37000, v105, OS_LOG_TYPE_DEBUG, "%{public}s setting up aon net service, tb %s<->%s shm %s<->%s", v254, 0x34u);
                            }

                            v106 = *(v79 + 552);
                            *(v79 + 552) = &__block_literal_global_27;

                            v107 = *(v79 + 560);
                            *(v79 + 560) = &__block_literal_global_31;

                            v108 = *(v79 + 576);
                            *(v79 + 576) = &__block_literal_global_35;

                            v109 = *(v79 + 544);
                            *(v79 + 544) = &__block_literal_global_39;

                            v110 = *(v79 + 568);
                            *(v79 + 568) = &__block_literal_global_43;

                            v111 = 0;
                            while (1)
                            {
                              v112 = *(v79 + v111);
                              buf[v111] = v112;
                              if (!v112)
                              {
                                break;
                              }

                              if (++v111 == 127)
                              {
                                HIBYTE(v277) = 0;
                                break;
                              }
                            }

                            v113 = 128;
                            while (1)
                            {
                              v114 = *(v79 + v113);
                              buf[v113] = v114;
                              if (!v114)
                              {
                                break;
                              }

                              if (++v113 == 255)
                              {
                                HIBYTE(v285) = 0;
                                break;
                              }
                            }

                            v115 = 0;
                            while (1)
                            {
                              v116 = *(v79 + v115 + 256);
                              *(v269 + v115) = v116;
                              if (!v116)
                              {
                                break;
                              }

                              if (++v115 == 127)
                              {
                                HIBYTE(v270) = 0;
                                break;
                              }
                            }

                            v117 = 0;
                            v271 = xmmword_182B08CF0;
                            while (1)
                            {
                              v118 = *(v79 + v117 + 384);
                              *(v266 + v117) = v118;
                              if (!v118)
                              {
                                break;
                              }

                              if (++v117 == 127)
                              {
                                HIBYTE(v267) = 0;
                                break;
                              }
                            }

                            v268 = xmmword_182B08CF0;
                            v119 = aon_net_service_init();
                            *(v79 + 512) = v119;
                            if (v119)
                            {
                              *(v79 + 600) = aon_net_get_num_tx_buffers();
                              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                              networkd_settings_init();
                              v120 = gLogObj;
                              if (os_log_type_enabled(v120, OS_LOG_TYPE_DEBUG))
                              {
                                *v254 = 136447234;
                                v255 = "nw_aop2_offload_setup_aon_net_service";
                                v256 = 2080;
                                v257 = v79;
                                v258 = 2080;
                                v259 = v79 + 128;
                                v260 = 2080;
                                v261 = v79 + 256;
                                v262 = 2080;
                                v263 = v79 + 384;
                                _os_log_impl(&dword_181A37000, v120, OS_LOG_TYPE_DEBUG, "%{public}s aon net service setup completed, tb %s<->%s shm %s<->%s", v254, 0x34u);
                              }

                              num_tx_buffers = aon_net_get_num_tx_buffers();
                              *(v79 + 672) = aon_net_get_num_rx_buffers() + num_tx_buffers;
                              internal = nw_hash_table_create_internal(0x11u, 64, nw_aop2_offload_hash_table_get_key, nw_aop2_offload_hash_table_key_hash, nw_aop2_offload_hash_table_matches_key, 0, 0);
                              if (!internal)
                              {
                                *(v79 + 656) = 0;
                                v238 = 506;
                                goto LABEL_463;
                              }

                              *(internal + 56) &= ~2u;
                              *(v79 + 656) = internal;
                              *(v79 + 704) = 1;
                              type[0] = OS_LOG_TYPE_DEFAULT;
                              v123 = nw_hash_table_add_object(internal, &v8[1].output_handler, type);
                              if (type[0])
                              {
                                v95 = v123;
LABEL_189:

                                if (v95)
                                {
                                  *(v95 + 32) = 0;
                                  *(v95 + 40) = v95 + 32;
                                  *(v95 + 48) = a2;
                                  uuid_unparse(a2->flow_id, (v95 + 56));
                                  a2->output_handler_context = v95;
                                  nw_protocol_notify(a2, a1, 28);
                                  *type = 0u;
                                  memset(v265, 0, 21);
                                  uuid_unparse(&v8[2].output_handler_context, type);
                                  v124 = __nwlog_obj();
                                  if (os_log_type_enabled(v124, OS_LOG_TYPE_INFO))
                                  {
                                    v125 = *&v8[4].flow_id[12];
                                    description = nw_endpoint_get_description(v243);
                                    v127 = nw_endpoint_get_description(v244);
                                    *buf = 136447490;
                                    *&buf[4] = "nw_protocol_aop2_offload_add_input_handler";
                                    *&buf[12] = 2082;
                                    *&buf[14] = v8 + 288;
                                    *&buf[22] = 2080;
                                    *&buf[24] = type;
                                    *&buf[32] = 1024;
                                    *&buf[34] = v125;
                                    *&buf[38] = 2080;
                                    *&buf[40] = description;
                                    LOWORD(v273) = 2080;
                                    *(&v273 + 2) = v127;
                                    _os_log_impl(&dword_181A37000, v124, OS_LOG_TYPE_INFO, "%{public}s %{public}s Connection UUID %s flow tag 0x%x, %s <-> %s", buf, 0x3Au);
                                  }

                                  if (_nw_signposts_once != -1)
                                  {
                                    dispatch_once(&_nw_signposts_once, &__block_literal_global_61);
                                  }

                                  if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
                                  {
                                    kdebug_trace();
                                  }

                                  v128 = __nwlog_obj();
                                  if (os_log_type_enabled(v128, OS_LOG_TYPE_INFO))
                                  {
                                    *buf = 136446978;
                                    *&buf[4] = "nw_protocol_aop2_offload_add_input_handler";
                                    *&buf[12] = 2082;
                                    *&buf[14] = v8 + 288;
                                    *&buf[22] = 1042;
                                    *&buf[24] = 16;
                                    *&buf[28] = 2098;
                                    *&buf[30] = a2;
                                    _os_log_impl(&dword_181A37000, v128, OS_LOG_TYPE_INFO, "%{public}s %{public}s added input handler for %{public,uuid_t}.16P", buf, 0x26u);
                                  }

                                  v95 = 1;
                                }

                                goto LABEL_207;
                              }

                              v129 = __nwlog_obj();
                              if (os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
                              {
                                *buf = 136446210;
                                *&buf[4] = "nw_aop2_offload_manager_add_client";
                                _os_log_impl(&dword_181A37000, v129, OS_LOG_TYPE_ERROR, "%{public}s client addition to aop2_offload manager failed", buf, 0xCu);
                              }
                            }

                            else
                            {
                              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                              networkd_settings_init();
                              v129 = gLogObj;
                              if (os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
                              {
                                *v254 = 136447234;
                                v255 = "nw_aop2_offload_setup_aon_net_service";
                                v256 = 2080;
                                v257 = v79;
                                v258 = 2080;
                                v259 = v79 + 128;
                                v260 = 2080;
                                v261 = v79 + 256;
                                v262 = 2080;
                                v263 = v79 + 384;
                                _os_log_impl(&dword_181A37000, v129, OS_LOG_TYPE_ERROR, "%{public}s aon_net_service_init failed for tb client[%s]<->tb server[%s] shm tx[%s]<->rx[%s]", v254, 0x34u);
                              }
                            }

                            nw_aop2_offload_manager_cleanup(v79, v130);
LABEL_206:

                            v95 = 0;
LABEL_207:

                            v6 = v253;
LABEL_208:

                            v131 = v248;
LABEL_209:

                            v20 = v249;
LABEL_210:

LABEL_211:
                            if (v6)
                            {
                              nw::release_if_needed<nw_protocol *>(&v252);
                            }

                            return v95;
                          }

LABEL_164:
                          snprintf((v79 + 384), 0x80uLL, "aop2.ulpn.%s.rx.default", type);
                          goto LABEL_165;
                        }

                        v181 = __nwlog_obj();
                        *buf = 136446210;
                        *&buf[4] = "nw_aop2_offload_manager_add_client";
                        v182 = _os_log_send_and_compose_impl();

                        type[0] = OS_LOG_TYPE_ERROR;
                        LOBYTE(v269[0]) = 0;
                        if (__nwlog_fault(v182, type, v269))
                        {
                          if (type[0] == OS_LOG_TYPE_FAULT)
                          {
                            v183 = __nwlog_obj();
                            v184 = type[0];
                            if (os_log_type_enabled(v183, type[0]))
                            {
                              *buf = 136446210;
                              *&buf[4] = "nw_aop2_offload_manager_add_client";
                              _os_log_impl(&dword_181A37000, v183, v184, "%{public}s called with null context", buf, 0xCu);
                            }
                          }

                          else if (LOBYTE(v269[0]) == 1)
                          {
                            v212 = __nw_create_backtrace_string();
                            v183 = __nwlog_obj();
                            v213 = type[0];
                            v214 = os_log_type_enabled(v183, type[0]);
                            if (v212)
                            {
                              if (v214)
                              {
                                *buf = 136446466;
                                *&buf[4] = "nw_aop2_offload_manager_add_client";
                                *&buf[12] = 2082;
                                *&buf[14] = v212;
                                _os_log_impl(&dword_181A37000, v183, v213, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
                              }

                              free(v212);
                              goto LABEL_460;
                            }

                            if (v214)
                            {
                              *buf = 136446210;
                              *&buf[4] = "nw_aop2_offload_manager_add_client";
                              _os_log_impl(&dword_181A37000, v183, v213, "%{public}s called with null context, no backtrace", buf, 0xCu);
                            }
                          }

                          else
                          {
                            v183 = __nwlog_obj();
                            v230 = type[0];
                            if (os_log_type_enabled(v183, type[0]))
                            {
                              *buf = 136446210;
                              *&buf[4] = "nw_aop2_offload_manager_add_client";
                              _os_log_impl(&dword_181A37000, v183, v230, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
                            }
                          }
                        }

LABEL_460:
                        if (v182)
                        {
                          free(v182);
                        }

                        goto LABEL_206;
                      }

                      v72 = v71;
                      _nw_protocol_options_get_log_id_str(v72, &v8[4].output_handler);

                      WORD2(v8[4].callbacks) = _nw_protocol_options_get_log_id_num(v72);
                      v73 = v72;
                      if (nw_protocol_options_is_aop2_offload(v73))
                      {
                        *type = 0;
                        *&type[8] = type;
                        v265[0] = 0x2020000000uLL;
                        *buf = MEMORY[0x1E69E9820];
                        *&buf[8] = 3221225472;
                        *&buf[16] = __nw_aop2_offload_options_get_control_client_name_block_invoke;
                        *&buf[24] = &unk_1E6A3A858;
                        *&buf[32] = type;
                        nw_protocol_options_access_handle(v73, buf);
                        __s1 = *(*&type[8] + 24);
                        _Block_object_dispose(type, 8);
                        goto LABEL_77;
                      }

                      v185 = __nwlog_obj();
                      *buf = 136446210;
                      *&buf[4] = "nw_aop2_offload_options_get_control_client_name";
                      v186 = _os_log_send_and_compose_impl();

                      type[0] = OS_LOG_TYPE_ERROR;
                      LOBYTE(v269[0]) = 0;
                      if (__nwlog_fault(v186, type, v269))
                      {
                        if (type[0] == OS_LOG_TYPE_FAULT)
                        {
                          v187 = __nwlog_obj();
                          v188 = type[0];
                          if (os_log_type_enabled(v187, type[0]))
                          {
                            *buf = 136446210;
                            *&buf[4] = "nw_aop2_offload_options_get_control_client_name";
                            _os_log_impl(&dword_181A37000, v187, v188, "%{public}s called with null nw_protocol_options_is_aop2_offload(options)", buf, 0xCu);
                          }
                        }

                        else if (LOBYTE(v269[0]) == 1)
                        {
                          v215 = __nw_create_backtrace_string();
                          v187 = __nwlog_obj();
                          v242 = type[0];
                          v216 = os_log_type_enabled(v187, type[0]);
                          if (v215)
                          {
                            if (v216)
                            {
                              *buf = 136446466;
                              *&buf[4] = "nw_aop2_offload_options_get_control_client_name";
                              *&buf[12] = 2082;
                              *&buf[14] = v215;
                              _os_log_impl(&dword_181A37000, v187, v242, "%{public}s called with null nw_protocol_options_is_aop2_offload(options), dumping backtrace:%{public}s", buf, 0x16u);
                            }

                            free(v215);
                            goto LABEL_467;
                          }

                          if (v216)
                          {
                            *buf = 136446210;
                            *&buf[4] = "nw_aop2_offload_options_get_control_client_name";
                            _os_log_impl(&dword_181A37000, v187, v242, "%{public}s called with null nw_protocol_options_is_aop2_offload(options), no backtrace", buf, 0xCu);
                          }
                        }

                        else
                        {
                          v187 = __nwlog_obj();
                          v231 = type[0];
                          if (os_log_type_enabled(v187, type[0]))
                          {
                            *buf = 136446210;
                            *&buf[4] = "nw_aop2_offload_options_get_control_client_name";
                            _os_log_impl(&dword_181A37000, v187, v231, "%{public}s called with null nw_protocol_options_is_aop2_offload(options), backtrace limit exceeded", buf, 0xCu);
                          }
                        }
                      }

LABEL_467:
                      if (v186)
                      {
                        free(v186);
                      }

                      __s1 = 0;
LABEL_77:

                      v74 = v73;
                      if (nw_protocol_options_is_aop2_offload(v74))
                      {
                        *type = 0;
                        *&type[8] = type;
                        v265[0] = 0x2020000000uLL;
                        *buf = MEMORY[0x1E69E9820];
                        *&buf[8] = 3221225472;
                        *&buf[16] = __nw_aop2_offload_options_get_control_server_name_block_invoke;
                        *&buf[24] = &unk_1E6A3A858;
                        *&buf[32] = type;
                        nw_protocol_options_access_handle(v74, buf);
                        v75 = *(*&type[8] + 24);
                        _Block_object_dispose(type, 8);
                        goto LABEL_79;
                      }

                      v189 = __nwlog_obj();
                      *buf = 136446210;
                      *&buf[4] = "nw_aop2_offload_options_get_control_server_name";
                      v190 = _os_log_send_and_compose_impl();

                      type[0] = OS_LOG_TYPE_ERROR;
                      LOBYTE(v269[0]) = 0;
                      if (__nwlog_fault(v190, type, v269))
                      {
                        if (type[0] == OS_LOG_TYPE_FAULT)
                        {
                          v191 = __nwlog_obj();
                          v192 = type[0];
                          if (os_log_type_enabled(v191, type[0]))
                          {
                            *buf = 136446210;
                            *&buf[4] = "nw_aop2_offload_options_get_control_server_name";
                            _os_log_impl(&dword_181A37000, v191, v192, "%{public}s called with null nw_protocol_options_is_aop2_offload(options)", buf, 0xCu);
                          }
                        }

                        else if (LOBYTE(v269[0]) == 1)
                        {
                          v217 = __nw_create_backtrace_string();
                          v191 = __nwlog_obj();
                          v240 = type[0];
                          v218 = os_log_type_enabled(v191, type[0]);
                          if (v217)
                          {
                            if (v218)
                            {
                              *buf = 136446466;
                              *&buf[4] = "nw_aop2_offload_options_get_control_server_name";
                              *&buf[12] = 2082;
                              *&buf[14] = v217;
                              _os_log_impl(&dword_181A37000, v191, v240, "%{public}s called with null nw_protocol_options_is_aop2_offload(options), dumping backtrace:%{public}s", buf, 0x16u);
                            }

                            free(v217);
                            goto LABEL_473;
                          }

                          if (v218)
                          {
                            *buf = 136446210;
                            *&buf[4] = "nw_aop2_offload_options_get_control_server_name";
                            _os_log_impl(&dword_181A37000, v191, v240, "%{public}s called with null nw_protocol_options_is_aop2_offload(options), no backtrace", buf, 0xCu);
                          }
                        }

                        else
                        {
                          v191 = __nwlog_obj();
                          v232 = type[0];
                          if (os_log_type_enabled(v191, type[0]))
                          {
                            *buf = 136446210;
                            *&buf[4] = "nw_aop2_offload_options_get_control_server_name";
                            _os_log_impl(&dword_181A37000, v191, v232, "%{public}s called with null nw_protocol_options_is_aop2_offload(options), backtrace limit exceeded", buf, 0xCu);
                          }
                        }
                      }

LABEL_473:
                      if (v190)
                      {
                        free(v190);
                      }

                      v75 = 0;
LABEL_79:

                      v76 = v74;
                      if (nw_protocol_options_is_aop2_offload(v76))
                      {
                        *type = 0;
                        *&type[8] = type;
                        v265[0] = 0x2020000000uLL;
                        *buf = MEMORY[0x1E69E9820];
                        *&buf[8] = 3221225472;
                        *&buf[16] = __nw_aop2_offload_options_get_data_tx_name_block_invoke;
                        *&buf[24] = &unk_1E6A3A858;
                        *&buf[32] = type;
                        nw_protocol_options_access_handle(v76, buf);
                        v71 = *(*&type[8] + 24);
                        _Block_object_dispose(type, 8);
                        goto LABEL_81;
                      }

                      v193 = __nwlog_obj();
                      *buf = 136446210;
                      *&buf[4] = "nw_aop2_offload_options_get_data_tx_name";
                      v241 = _os_log_send_and_compose_impl();

                      type[0] = OS_LOG_TYPE_ERROR;
                      LOBYTE(v269[0]) = 0;
                      if (__nwlog_fault(v241, type, v269))
                      {
                        if (type[0] == OS_LOG_TYPE_FAULT)
                        {
                          v194 = __nwlog_obj();
                          v195 = type[0];
                          if (os_log_type_enabled(v194, type[0]))
                          {
                            *buf = 136446210;
                            *&buf[4] = "nw_aop2_offload_options_get_data_tx_name";
                            _os_log_impl(&dword_181A37000, v194, v195, "%{public}s called with null nw_protocol_options_is_aop2_offload(options)", buf, 0xCu);
                          }
                        }

                        else
                        {
                          if (LOBYTE(v269[0]) != 1)
                          {
                            v233 = __nwlog_obj();
                            v234 = type[0];
                            if (os_log_type_enabled(v233, type[0]))
                            {
                              *buf = 136446210;
                              *&buf[4] = "nw_aop2_offload_options_get_data_tx_name";
                              _os_log_impl(&dword_181A37000, v233, v234, "%{public}s called with null nw_protocol_options_is_aop2_offload(options), backtrace limit exceeded", buf, 0xCu);
                            }

                            goto LABEL_479;
                          }

                          v219 = __nw_create_backtrace_string();
                          v194 = __nwlog_obj();
                          v239 = type[0];
                          v220 = os_log_type_enabled(v194, type[0]);
                          if (v219)
                          {
                            if (v220)
                            {
                              *buf = 136446466;
                              *&buf[4] = "nw_aop2_offload_options_get_data_tx_name";
                              *&buf[12] = 2082;
                              *&buf[14] = v219;
                              _os_log_impl(&dword_181A37000, v194, v239, "%{public}s called with null nw_protocol_options_is_aop2_offload(options), dumping backtrace:%{public}s", buf, 0x16u);
                            }

                            free(v219);
                            goto LABEL_479;
                          }

                          if (v220)
                          {
                            *buf = 136446210;
                            *&buf[4] = "nw_aop2_offload_options_get_data_tx_name";
                            _os_log_impl(&dword_181A37000, v194, v239, "%{public}s called with null nw_protocol_options_is_aop2_offload(options), no backtrace", buf, 0xCu);
                          }
                        }
                      }

LABEL_479:
                      if (v241)
                      {
                        free(v241);
                      }

                      v71 = 0;
LABEL_81:

                      v77 = v76;
                      if (nw_protocol_options_is_aop2_offload(v77))
                      {
                        *type = 0;
                        *&type[8] = type;
                        v265[0] = 0x2020000000uLL;
                        *buf = MEMORY[0x1E69E9820];
                        *&buf[8] = 3221225472;
                        *&buf[16] = __nw_aop2_offload_options_get_data_rx_name_block_invoke;
                        *&buf[24] = &unk_1E6A3A858;
                        *&buf[32] = type;
                        nw_protocol_options_access_handle(v77, buf);
                        v78 = *(*&type[8] + 24);
                        _Block_object_dispose(type, 8);
LABEL_83:

                        goto LABEL_86;
                      }

                      v196 = __nwlog_obj();
                      *buf = 136446210;
                      *&buf[4] = "nw_aop2_offload_options_get_data_rx_name";
                      v197 = _os_log_send_and_compose_impl();

                      type[0] = OS_LOG_TYPE_ERROR;
                      LOBYTE(v269[0]) = 0;
                      if (__nwlog_fault(v197, type, v269))
                      {
                        if (type[0] == OS_LOG_TYPE_FAULT)
                        {
                          v198 = __nwlog_obj();
                          v199 = type[0];
                          if (os_log_type_enabled(v198, type[0]))
                          {
                            *buf = 136446210;
                            *&buf[4] = "nw_aop2_offload_options_get_data_rx_name";
                            _os_log_impl(&dword_181A37000, v198, v199, "%{public}s called with null nw_protocol_options_is_aop2_offload(options)", buf, 0xCu);
                          }
                        }

                        else
                        {
                          if (LOBYTE(v269[0]) == 1)
                          {
                            v221 = __nw_create_backtrace_string();
                            v222 = __nwlog_obj();
                            v223 = type[0];
                            v224 = os_log_type_enabled(v222, type[0]);
                            if (v221)
                            {
                              if (v224)
                              {
                                *buf = 136446466;
                                *&buf[4] = "nw_aop2_offload_options_get_data_rx_name";
                                *&buf[12] = 2082;
                                *&buf[14] = v221;
                                _os_log_impl(&dword_181A37000, v222, v223, "%{public}s called with null nw_protocol_options_is_aop2_offload(options), dumping backtrace:%{public}s", buf, 0x16u);
                              }

                              free(v221);
                            }

                            else
                            {
                              if (v224)
                              {
                                *buf = 136446210;
                                *&buf[4] = "nw_aop2_offload_options_get_data_rx_name";
                                _os_log_impl(&dword_181A37000, v222, v223, "%{public}s called with null nw_protocol_options_is_aop2_offload(options), no backtrace", buf, 0xCu);
                              }
                            }

                            goto LABEL_485;
                          }

                          v198 = __nwlog_obj();
                          v235 = type[0];
                          if (os_log_type_enabled(v198, type[0]))
                          {
                            *buf = 136446210;
                            *&buf[4] = "nw_aop2_offload_options_get_data_rx_name";
                            _os_log_impl(&dword_181A37000, v198, v235, "%{public}s called with null nw_protocol_options_is_aop2_offload(options), backtrace limit exceeded", buf, 0xCu);
                          }
                        }
                      }

LABEL_485:
                      if (v197)
                      {
                        free(v197);
                      }

                      v78 = 0;
                      goto LABEL_83;
                    }

                    v179 = __nwlog_obj();
                    *buf = 136446210;
                    *&buf[4] = "nw_protocol_aop2_offload_add_input_handler";
                    v160 = _os_log_send_and_compose_impl();

                    type[0] = OS_LOG_TYPE_ERROR;
                    LOBYTE(v269[0]) = 0;
                    if (__nwlog_fault(v160, type, v269))
                    {
                      if (type[0] == OS_LOG_TYPE_FAULT)
                      {
                        v161 = __nwlog_obj();
                        v180 = type[0];
                        if (os_log_type_enabled(v161, type[0]))
                        {
                          *buf = 136446210;
                          *&buf[4] = "nw_protocol_aop2_offload_add_input_handler";
                          _os_log_impl(&dword_181A37000, v161, v180, "%{public}s called with null aop2_offload->flow_registration", buf, 0xCu);
                        }

LABEL_493:

                        goto LABEL_494;
                      }

                      if (LOBYTE(v269[0]) != 1)
                      {
                        v161 = __nwlog_obj();
                        v227 = type[0];
                        if (os_log_type_enabled(v161, type[0]))
                        {
                          *buf = 136446210;
                          *&buf[4] = "nw_protocol_aop2_offload_add_input_handler";
                          _os_log_impl(&dword_181A37000, v161, v227, "%{public}s called with null aop2_offload->flow_registration, backtrace limit exceeded", buf, 0xCu);
                        }

                        goto LABEL_493;
                      }

                      v176 = __nw_create_backtrace_string();
                      v161 = __nwlog_obj();
                      v210 = type[0];
                      v211 = os_log_type_enabled(v161, type[0]);
                      if (!v176)
                      {
                        if (v211)
                        {
                          *buf = 136446210;
                          *&buf[4] = "nw_protocol_aop2_offload_add_input_handler";
                          _os_log_impl(&dword_181A37000, v161, v210, "%{public}s called with null aop2_offload->flow_registration, no backtrace", buf, 0xCu);
                        }

                        goto LABEL_493;
                      }

                      if (v211)
                      {
                        *buf = 136446466;
                        *&buf[4] = "nw_protocol_aop2_offload_add_input_handler";
                        *&buf[12] = 2082;
                        *&buf[14] = v176;
                        _os_log_impl(&dword_181A37000, v161, v210, "%{public}s called with null aop2_offload->flow_registration, dumping backtrace:%{public}s", buf, 0x16u);
                      }

                      goto LABEL_408;
                    }

LABEL_494:
                    if (v160)
                    {
                      free(v160);
                    }

                    v95 = 0;
                    goto LABEL_208;
                  }

                  v60 = v56;
                  ethernet_address = _nw_endpoint_get_ethernet_address(v60);

                  if (ethernet_address)
                  {
                    v62 = *ethernet_address;
                    *&v8[4].flow_id[4] = *(ethernet_address + 4);
                    *v8[4].flow_id = v62;
                    v63 = v58;
                    v64 = _nw_endpoint_get_ethernet_address(v63);

                    if (v64)
                    {
                      v65 = *v64;
                      *&v8[4].flow_id[10] = *(v64 + 4);
                      *&v8[4].flow_id[6] = v65;
                      goto LABEL_69;
                    }

                    v208 = __nwlog_obj();
                    *buf = 136446210;
                    *&buf[4] = "nw_protocol_aop2_offload_add_input_handler";
                    v160 = _os_log_send_and_compose_impl();

                    type[0] = OS_LOG_TYPE_ERROR;
                    LOBYTE(v269[0]) = 0;
                    if (!__nwlog_fault(v160, type, v269))
                    {
                      goto LABEL_494;
                    }

                    if (type[0] == OS_LOG_TYPE_FAULT)
                    {
                      v161 = __nwlog_obj();
                      v209 = type[0];
                      if (os_log_type_enabled(v161, type[0]))
                      {
                        *buf = 136446210;
                        *&buf[4] = "nw_protocol_aop2_offload_add_input_handler";
                        _os_log_impl(&dword_181A37000, v161, v209, "%{public}s called with null remote_ether", buf, 0xCu);
                      }

                      goto LABEL_493;
                    }

                    if (LOBYTE(v269[0]) != 1)
                    {
                      v161 = __nwlog_obj();
                      v237 = type[0];
                      if (os_log_type_enabled(v161, type[0]))
                      {
                        *buf = 136446210;
                        *&buf[4] = "nw_protocol_aop2_offload_add_input_handler";
                        _os_log_impl(&dword_181A37000, v161, v237, "%{public}s called with null remote_ether, backtrace limit exceeded", buf, 0xCu);
                      }

                      goto LABEL_493;
                    }

                    v176 = __nw_create_backtrace_string();
                    v161 = __nwlog_obj();
                    v228 = type[0];
                    v229 = os_log_type_enabled(v161, type[0]);
                    if (!v176)
                    {
                      if (v229)
                      {
                        *buf = 136446210;
                        *&buf[4] = "nw_protocol_aop2_offload_add_input_handler";
                        _os_log_impl(&dword_181A37000, v161, v228, "%{public}s called with null remote_ether, no backtrace", buf, 0xCu);
                      }

                      goto LABEL_493;
                    }

                    if (v229)
                    {
                      *buf = 136446466;
                      *&buf[4] = "nw_protocol_aop2_offload_add_input_handler";
                      *&buf[12] = 2082;
                      *&buf[14] = v176;
                      _os_log_impl(&dword_181A37000, v161, v228, "%{public}s called with null remote_ether, dumping backtrace:%{public}s", buf, 0x16u);
                    }
                  }

                  else
                  {
                    v206 = __nwlog_obj();
                    *buf = 136446210;
                    *&buf[4] = "nw_protocol_aop2_offload_add_input_handler";
                    v160 = _os_log_send_and_compose_impl();

                    type[0] = OS_LOG_TYPE_ERROR;
                    LOBYTE(v269[0]) = 0;
                    if (!__nwlog_fault(v160, type, v269))
                    {
                      goto LABEL_494;
                    }

                    if (type[0] == OS_LOG_TYPE_FAULT)
                    {
                      v161 = __nwlog_obj();
                      v207 = type[0];
                      if (os_log_type_enabled(v161, type[0]))
                      {
                        *buf = 136446210;
                        *&buf[4] = "nw_protocol_aop2_offload_add_input_handler";
                        _os_log_impl(&dword_181A37000, v161, v207, "%{public}s called with null local_ether", buf, 0xCu);
                      }

                      goto LABEL_493;
                    }

                    if (LOBYTE(v269[0]) != 1)
                    {
                      v161 = __nwlog_obj();
                      v236 = type[0];
                      if (os_log_type_enabled(v161, type[0]))
                      {
                        *buf = 136446210;
                        *&buf[4] = "nw_protocol_aop2_offload_add_input_handler";
                        _os_log_impl(&dword_181A37000, v161, v236, "%{public}s called with null local_ether, backtrace limit exceeded", buf, 0xCu);
                      }

                      goto LABEL_493;
                    }

                    v176 = __nw_create_backtrace_string();
                    v161 = __nwlog_obj();
                    v225 = type[0];
                    v226 = os_log_type_enabled(v161, type[0]);
                    if (!v176)
                    {
                      if (v226)
                      {
                        *buf = 136446210;
                        *&buf[4] = "nw_protocol_aop2_offload_add_input_handler";
                        _os_log_impl(&dword_181A37000, v161, v225, "%{public}s called with null local_ether, no backtrace", buf, 0xCu);
                      }

                      goto LABEL_493;
                    }

                    if (v226)
                    {
                      *buf = 136446466;
                      *&buf[4] = "nw_protocol_aop2_offload_add_input_handler";
                      *&buf[12] = 2082;
                      *&buf[14] = v176;
                      _os_log_impl(&dword_181A37000, v161, v225, "%{public}s called with null local_ether, dumping backtrace:%{public}s", buf, 0x16u);
                    }
                  }
                }

                else
                {
                  v159 = __nwlog_obj();
                  *buf = 136446210;
                  *&buf[4] = "nw_protocol_aop2_offload_add_input_handler";
                  v160 = _os_log_send_and_compose_impl();

                  type[0] = OS_LOG_TYPE_ERROR;
                  LOBYTE(v269[0]) = 0;
                  if (!__nwlog_fault(v160, type, v269))
                  {
                    goto LABEL_494;
                  }

                  if (type[0] == OS_LOG_TYPE_FAULT)
                  {
                    v161 = __nwlog_obj();
                    v162 = type[0];
                    if (os_log_type_enabled(v161, type[0]))
                    {
                      *buf = 136446210;
                      *&buf[4] = "nw_protocol_aop2_offload_add_input_handler";
                      _os_log_impl(&dword_181A37000, v161, v162, "%{public}s called with null (remote_address && nw_endpoint_get_type(remote_address) == nw_endpoint_type_address)", buf, 0xCu);
                    }

                    goto LABEL_493;
                  }

                  if (LOBYTE(v269[0]) != 1)
                  {
                    v161 = __nwlog_obj();
                    v205 = type[0];
                    if (os_log_type_enabled(v161, type[0]))
                    {
                      *buf = 136446210;
                      *&buf[4] = "nw_protocol_aop2_offload_add_input_handler";
                      _os_log_impl(&dword_181A37000, v161, v205, "%{public}s called with null (remote_address && nw_endpoint_get_type(remote_address) == nw_endpoint_type_address), backtrace limit exceeded", buf, 0xCu);
                    }

                    goto LABEL_493;
                  }

                  v176 = __nw_create_backtrace_string();
                  v161 = __nwlog_obj();
                  v177 = type[0];
                  v178 = os_log_type_enabled(v161, type[0]);
                  if (!v176)
                  {
                    if (v178)
                    {
                      *buf = 136446210;
                      *&buf[4] = "nw_protocol_aop2_offload_add_input_handler";
                      _os_log_impl(&dword_181A37000, v161, v177, "%{public}s called with null (remote_address && nw_endpoint_get_type(remote_address) == nw_endpoint_type_address), no backtrace", buf, 0xCu);
                    }

                    goto LABEL_493;
                  }

                  if (v178)
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_protocol_aop2_offload_add_input_handler";
                    *&buf[12] = 2082;
                    *&buf[14] = v176;
                    _os_log_impl(&dword_181A37000, v161, v177, "%{public}s called with null (remote_address && nw_endpoint_get_type(remote_address) == nw_endpoint_type_address), dumping backtrace:%{public}s", buf, 0x16u);
                  }
                }

LABEL_408:

                free(v176);
                goto LABEL_494;
              }
            }

            v131 = v36;
            v155 = __nwlog_obj();
            *buf = 136446210;
            *&buf[4] = "nw_protocol_aop2_offload_add_input_handler";
            v156 = _os_log_send_and_compose_impl();

            type[0] = OS_LOG_TYPE_ERROR;
            LOBYTE(v269[0]) = 0;
            if (__nwlog_fault(v156, type, v269))
            {
              if (type[0] == OS_LOG_TYPE_FAULT)
              {
                v157 = __nwlog_obj();
                v158 = type[0];
                if (os_log_type_enabled(v157, type[0]))
                {
                  *buf = 136446210;
                  *&buf[4] = "nw_protocol_aop2_offload_add_input_handler";
                  _os_log_impl(&dword_181A37000, v157, v158, "%{public}s called with null (local_address && nw_endpoint_get_type(local_address) == nw_endpoint_type_address)", buf, 0xCu);
                }
              }

              else if (LOBYTE(v269[0]) == 1)
              {
                v173 = __nw_create_backtrace_string();
                v157 = __nwlog_obj();
                v174 = type[0];
                v175 = os_log_type_enabled(v157, type[0]);
                if (v173)
                {
                  if (v175)
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_protocol_aop2_offload_add_input_handler";
                    *&buf[12] = 2082;
                    *&buf[14] = v173;
                    _os_log_impl(&dword_181A37000, v157, v174, "%{public}s called with null (local_address && nw_endpoint_get_type(local_address) == nw_endpoint_type_address), dumping backtrace:%{public}s", buf, 0x16u);
                  }

                  free(v173);
                  goto LABEL_430;
                }

                if (v175)
                {
                  *buf = 136446210;
                  *&buf[4] = "nw_protocol_aop2_offload_add_input_handler";
                  _os_log_impl(&dword_181A37000, v157, v174, "%{public}s called with null (local_address && nw_endpoint_get_type(local_address) == nw_endpoint_type_address), no backtrace", buf, 0xCu);
                }
              }

              else
              {
                v157 = __nwlog_obj();
                v204 = type[0];
                if (os_log_type_enabled(v157, type[0]))
                {
                  *buf = 136446210;
                  *&buf[4] = "nw_protocol_aop2_offload_add_input_handler";
                  _os_log_impl(&dword_181A37000, v157, v204, "%{public}s called with null (local_address && nw_endpoint_get_type(local_address) == nw_endpoint_type_address), backtrace limit exceeded", buf, 0xCu);
                }
              }
            }

LABEL_430:
            if (v156)
            {
              free(v156);
            }

            v95 = 0;
            goto LABEL_209;
          }

          v151 = __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_protocol_aop2_offload_add_input_handler";
          v152 = _os_log_send_and_compose_impl();

          type[0] = OS_LOG_TYPE_ERROR;
          LOBYTE(v269[0]) = 0;
          if (__nwlog_fault(v152, type, v269))
          {
            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              v153 = __nwlog_obj();
              v154 = type[0];
              if (os_log_type_enabled(v153, type[0]))
              {
                *buf = 136446210;
                *&buf[4] = "nw_protocol_aop2_offload_add_input_handler";
                _os_log_impl(&dword_181A37000, v153, v154, "%{public}s called with null interface", buf, 0xCu);
              }
            }

            else if (LOBYTE(v269[0]) == 1)
            {
              v170 = __nw_create_backtrace_string();
              v153 = __nwlog_obj();
              v171 = type[0];
              v172 = os_log_type_enabled(v153, type[0]);
              if (v170)
              {
                if (v172)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_protocol_aop2_offload_add_input_handler";
                  *&buf[12] = 2082;
                  *&buf[14] = v170;
                  _os_log_impl(&dword_181A37000, v153, v171, "%{public}s called with null interface, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v170);
                goto LABEL_424;
              }

              if (v172)
              {
                *buf = 136446210;
                *&buf[4] = "nw_protocol_aop2_offload_add_input_handler";
                _os_log_impl(&dword_181A37000, v153, v171, "%{public}s called with null interface, no backtrace", buf, 0xCu);
              }
            }

            else
            {
              v153 = __nwlog_obj();
              v203 = type[0];
              if (os_log_type_enabled(v153, type[0]))
              {
                *buf = 136446210;
                *&buf[4] = "nw_protocol_aop2_offload_add_input_handler";
                _os_log_impl(&dword_181A37000, v153, v203, "%{public}s called with null interface, backtrace limit exceeded", buf, 0xCu);
              }
            }
          }

LABEL_424:
          if (v152)
          {
            free(v152);
          }

          v95 = 0;
          v20 = 0;
          goto LABEL_210;
        }

        v149 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_protocol_aop2_offload_add_input_handler";
        v10 = _os_log_send_and_compose_impl();

        type[0] = OS_LOG_TYPE_ERROR;
        LOBYTE(v269[0]) = 0;
        if (__nwlog_fault(v10, type, v269))
        {
          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v11 = __nwlog_obj();
            v150 = type[0];
            if (os_log_type_enabled(v11, type[0]))
            {
              *buf = 136446210;
              *&buf[4] = "nw_protocol_aop2_offload_add_input_handler";
              _os_log_impl(&dword_181A37000, v11, v150, "%{public}s called with null aop2_offload->context", buf, 0xCu);
            }

            goto LABEL_135;
          }

          if (LOBYTE(v269[0]) != 1)
          {
            v11 = __nwlog_obj();
            v202 = type[0];
            if (os_log_type_enabled(v11, type[0]))
            {
              *buf = 136446210;
              *&buf[4] = "nw_protocol_aop2_offload_add_input_handler";
              _os_log_impl(&dword_181A37000, v11, v202, "%{public}s called with null aop2_offload->context, backtrace limit exceeded", buf, 0xCu);
            }

            goto LABEL_135;
          }

          backtrace_string = __nw_create_backtrace_string();
          v11 = __nwlog_obj();
          v168 = type[0];
          v169 = os_log_type_enabled(v11, type[0]);
          if (!backtrace_string)
          {
            if (v169)
            {
              *buf = 136446210;
              *&buf[4] = "nw_protocol_aop2_offload_add_input_handler";
              _os_log_impl(&dword_181A37000, v11, v168, "%{public}s called with null aop2_offload->context, no backtrace", buf, 0xCu);
            }

            goto LABEL_135;
          }

          if (v169)
          {
            *buf = 136446466;
            *&buf[4] = "nw_protocol_aop2_offload_add_input_handler";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v11, v168, "%{public}s called with null aop2_offload->context, dumping backtrace:%{public}s", buf, 0x16u);
          }

          goto LABEL_37;
        }
      }

      else
      {
        v147 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_protocol_aop2_offload_add_input_handler";
        v10 = _os_log_send_and_compose_impl();

        type[0] = OS_LOG_TYPE_ERROR;
        LOBYTE(v269[0]) = 0;
        if (__nwlog_fault(v10, type, v269))
        {
          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v11 = __nwlog_obj();
            v148 = type[0];
            if (os_log_type_enabled(v11, type[0]))
            {
              *buf = 136446210;
              *&buf[4] = "nw_protocol_aop2_offload_add_input_handler";
              _os_log_impl(&dword_181A37000, v11, v148, "%{public}s called with null aop2_offload->path", buf, 0xCu);
            }

            goto LABEL_135;
          }

          if (LOBYTE(v269[0]) != 1)
          {
            v11 = __nwlog_obj();
            v201 = type[0];
            if (os_log_type_enabled(v11, type[0]))
            {
              *buf = 136446210;
              *&buf[4] = "nw_protocol_aop2_offload_add_input_handler";
              _os_log_impl(&dword_181A37000, v11, v201, "%{public}s called with null aop2_offload->path, backtrace limit exceeded", buf, 0xCu);
            }

            goto LABEL_135;
          }

          backtrace_string = __nw_create_backtrace_string();
          v11 = __nwlog_obj();
          v166 = type[0];
          v167 = os_log_type_enabled(v11, type[0]);
          if (!backtrace_string)
          {
            if (v167)
            {
              *buf = 136446210;
              *&buf[4] = "nw_protocol_aop2_offload_add_input_handler";
              _os_log_impl(&dword_181A37000, v11, v166, "%{public}s called with null aop2_offload->path, no backtrace", buf, 0xCu);
            }

            goto LABEL_135;
          }

          if (v167)
          {
            *buf = 136446466;
            *&buf[4] = "nw_protocol_aop2_offload_add_input_handler";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v11, v166, "%{public}s called with null aop2_offload->path, dumping backtrace:%{public}s", buf, 0x16u);
          }

          goto LABEL_37;
        }
      }
    }

    else
    {
      v145 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_protocol_aop2_offload_add_input_handler";
      v10 = _os_log_send_and_compose_impl();

      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v269[0]) = 0;
      if (__nwlog_fault(v10, type, v269))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v11 = __nwlog_obj();
          v146 = type[0];
          if (os_log_type_enabled(v11, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_protocol_aop2_offload_add_input_handler";
            _os_log_impl(&dword_181A37000, v11, v146, "%{public}s called with null aop2_offload->parameters", buf, 0xCu);
          }

          goto LABEL_135;
        }

        if (LOBYTE(v269[0]) != 1)
        {
          v11 = __nwlog_obj();
          v200 = type[0];
          if (os_log_type_enabled(v11, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_protocol_aop2_offload_add_input_handler";
            _os_log_impl(&dword_181A37000, v11, v200, "%{public}s called with null aop2_offload->parameters, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_135;
        }

        backtrace_string = __nw_create_backtrace_string();
        v11 = __nwlog_obj();
        v164 = type[0];
        v165 = os_log_type_enabled(v11, type[0]);
        if (!backtrace_string)
        {
          if (v165)
          {
            *buf = 136446210;
            *&buf[4] = "nw_protocol_aop2_offload_add_input_handler";
            _os_log_impl(&dword_181A37000, v11, v164, "%{public}s called with null aop2_offload->parameters, no backtrace", buf, 0xCu);
          }

          goto LABEL_135;
        }

        if (v165)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_aop2_offload_add_input_handler";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v11, v164, "%{public}s called with null aop2_offload->parameters, dumping backtrace:%{public}s", buf, 0x16u);
        }

        goto LABEL_37;
      }
    }

LABEL_136:
    if (!v10)
    {
LABEL_138:
      v95 = 0;
      goto LABEL_211;
    }

LABEL_137:
    free(v10);
    goto LABEL_138;
  }

  v138 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_aop2_offload_add_input_handler";
  v139 = _os_log_send_and_compose_impl();

  type[0] = OS_LOG_TYPE_ERROR;
  LOBYTE(v269[0]) = 0;
  if (__nwlog_fault(v139, type, v269))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v140 = __nwlog_obj();
      v141 = type[0];
      if (os_log_type_enabled(v140, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_aop2_offload_add_input_handler";
        _os_log_impl(&dword_181A37000, v140, v141, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (LOBYTE(v269[0]) == 1)
    {
      v142 = __nw_create_backtrace_string();
      v140 = __nwlog_obj();
      v143 = type[0];
      v144 = os_log_type_enabled(v140, type[0]);
      if (v142)
      {
        if (v144)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_aop2_offload_add_input_handler";
          *&buf[12] = 2082;
          *&buf[14] = v142;
          _os_log_impl(&dword_181A37000, v140, v143, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v142);
        goto LABEL_373;
      }

      if (v144)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_aop2_offload_add_input_handler";
        _os_log_impl(&dword_181A37000, v140, v143, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v140 = __nwlog_obj();
      v163 = type[0];
      if (os_log_type_enabled(v140, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_aop2_offload_add_input_handler";
        _os_log_impl(&dword_181A37000, v140, v163, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_373:
  if (v139)
  {
    free(v139);
  }

  return 0;
}