void sub_1DE6DF360(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, char a37, uint64_t a38, char a39)
{
  boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Connection_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Wire_Connection_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Connection_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::~multi_index_container(v39 - 152);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (*(a11 + 23) < 0)
  {
    operator delete(*a11);
  }

  _Unwind_Resume(a1);
}

void AMCP::string_to_enum<AMCP::Resampler_Type>()
{
  v1[4] = *MEMORY[0x1E69E9840];
  AMCP::get_enum_string_bimap<AMCP::Resampler_Type>();
  v0 = v1;
  boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Resampler_Type const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Resampler_Type,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Resampler_Type const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::multi_index_container();
}

void AMCP::string_to_enum<AMCP::Resampler_Quality>()
{
  v1[4] = *MEMORY[0x1E69E9840];
  AMCP::get_enum_string_bimap<AMCP::Resampler_Quality>();
  v0 = v1;
  boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Resampler_Quality const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Resampler_Quality,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Resampler_Quality const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::multi_index_container();
}

uint64_t AMCP::parse_json<AMCP::Graph_Description>(_OWORD *a1, minijson::istream_context *this)
{
  v21 = *MEMORY[0x1E69E9840];
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  v3 = *(this + 1);
  if (v3 >= 0x21)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = &unk_1F598C548;
    v19 = *(this + 3);
    v14 = v19 != 0;
    v15 = v19 - 1;
    if (!v14)
    {
      v15 = 0;
    }

    v16 = 12;
LABEL_27:
    exception[1] = v15;
    *(exception + 4) = v16;
  }

  v20 = 0;
  if (*this <= 2u)
  {
    v4 = 8 * (*this & 3);
    HIBYTE(v20) = 0x5B7B00u >> v4;
    LOBYTE(v20) = 1u >> v4;
  }

  v5 = 0;
  *this = 0;
  v6 = HIBYTE(v20);
  v7 = MEMORY[0x1E69E9830];
  v8 = v20;
  while (1)
  {
    do
    {
      if (*(this + 1) != v3)
      {
        exception = __cxa_allocate_exception(0x18uLL);
        *exception = &unk_1F598C548;
        v17 = *(this + 3);
        v14 = v17 != 0;
        v15 = v17 - 1;
        if (!v14)
        {
          v15 = 0;
        }

        v16 = 11;
        goto LABEL_27;
      }

      if (v8)
      {
        v6 = minijson::istream_context::read(this);
      }

      if (v6 < 0)
      {
        result = __maskrune(v6, 0x4000uLL);
      }

      else
      {
        result = *(v7 + 4 * v6 + 60) & 0x4000;
      }

      v8 = 1;
    }

    while (result);
    if (v5)
    {
      break;
    }

    v5 = 1;
    if (v6 != 123)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = &unk_1F598C548;
      v18 = *(this + 3);
      v14 = v18 != 0;
      v15 = v18 - 1;
      if (!v14)
      {
        v15 = 0;
      }

      v16 = 8;
      goto LABEL_27;
    }
  }

  LOBYTE(v20) = 1;
  HIBYTE(v20) = v6;
  if (v6 == 34)
  {
    operator new();
  }

  if (v6 != 125)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = &unk_1F598C548;
    v13 = *(this + 3);
    v14 = v13 != 0;
    v15 = v13 - 1;
    if (!v14)
    {
      v15 = 0;
    }

    v16 = 1;
    goto LABEL_27;
  }

  v10 = *(this + 1);
  if (v10)
  {
    *(this + 1) = v10 - 1;
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE6E37C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Connection_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Wire_Connection_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Connection_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::~multi_index_container(&STACK[0x2C8]);
  if (SLOBYTE(STACK[0x20F]) < 0)
  {
    operator delete(__p);
  }

  STACK[0x278] = a18;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x278]);
  if (a56)
  {
    operator delete(a56);
  }

  if (a53)
  {
    operator delete(a53);
  }

  if (a50 < 0)
  {
    operator delete(a45);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  AMCP::Graph_Description::~Graph_Description(a23);
  _Unwind_Resume(a1);
}

void AMCP::Extended_Graph_Description::~Extended_Graph_Description(void **this)
{
  v2 = this + 6;
  std::vector<AMCP::Wire_Connection_Properties>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this + 3;
  std::vector<AMCP::Wire_Description>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this;
  std::vector<AMCP::Node_Description>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void sub_1DE6E4178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::__list_imp<std::vector<char>>::clear((v9 + 32));
  std::istringstream::~istringstream(va);
  _Unwind_Resume(a1);
}

uint64_t std::istringstream::basic_istringstream[abi:ne200100](uint64_t a1, const std::string *a2)
{
  *(a1 + 168) = 0;
  v4 = MEMORY[0x1E69E5568] + 64;
  *(a1 + 120) = MEMORY[0x1E69E5568] + 64;
  v5 = a1 + 16;
  v6 = *(MEMORY[0x1E69E54E0] + 16);
  v7 = *(MEMORY[0x1E69E54E0] + 8);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  *(a1 + 8) = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, (a1 + 16));
  v9 = MEMORY[0x1E69E5568] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  *a1 = v9;
  *(a1 + 120) = v4;
  *(a1 + 16) = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x1E12C14A0](a1 + 24);
  *(a1 + 80) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 16) = MEMORY[0x1E69E5548] + 16;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 8;
  std::string::operator=((a1 + 80), a2);
  std::stringbuf::__init_buf_ptrs[abi:ne200100](v5);
  return a1;
}

void minijson::istream_context::istream_context(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = a1 + 32;
  *(a1 + 40) = a1 + 32;
  *(a1 + 48) = 0;
  operator new();
}

void std::__list_imp<std::vector<char>>::clear(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    while (v2 != a1)
    {
      v6 = v2[1];
      v5 = v2[2];
      if (v5)
      {
        v2[3] = v5;
        operator delete(v5);
      }

      operator delete(v2);
      v2 = v6;
    }
  }
}

uint64_t std::istringstream::~istringstream(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54E0];
  v3 = *MEMORY[0x1E69E54E0];
  *a1 = *MEMORY[0x1E69E54E0];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 16) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  *(a1 + 16) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 24));
  std::istream::~istream();
  MEMORY[0x1E12C15F0](a1 + 120);
  return a1;
}

void AMCP::DSP_Node::~DSP_Node(AMCP::DSP_Node *this)
{
  *this = &unk_1F5964268;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5964268;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

{
  *this = &unk_1F5964268;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

AMCP::DSP_Node *AMCP::DSP_Node::DSP_Node(AMCP::DSP_Node *this, AMCP::System_Context *a2, unsigned int a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = AMCP::Node::Node(this, a2, a3);
  *v4 = &unk_1F598C590;
  v5 = AMCP::Object::constructed_correct_class(v4, 0x6473706E);
  if ((v5 & 1) == 0)
  {
    v8 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v8 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v5);
    }

    v10 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v9 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      v11 = *v10;
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    else
    {
      v11 = *v10;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315650;
      v13 = "DSP_Node.cpp";
      v14 = 1024;
      v15 = 19;
      v16 = 2080;
      v17 = "constructed_correct_class(k_class_id_dsp_node)";
      _os_log_error_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s the core is not of the proper class", &v12, 0x1Cu);
    }

    abort();
  }

  v6 = *MEMORY[0x1E69E9840];
  return this;
}

void sub_1DE6E571C(_Unwind_Exception *a1)
{
  *v1 = &unk_1F5964268;
  v2 = v1[3];
  if (v2)
  {
    v3 = a1;
    std::__shared_weak_count::__release_weak(v2);
    a1 = v3;
  }

  _Unwind_Resume(a1);
}

AMCP::Object *AMCP::DSP_Node::DSP_Node(AMCP::Object *a1, uint64_t a2, CFTypeRef *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  cf = *a3;
  *a3 = 0;
  AMCP::Node::Node(a1, a2, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  *a1 = &unk_1F598C590;
  v4 = AMCP::Object::constructed_correct_class(a1, 0x6473706E);
  if ((v4 & 1) == 0)
  {
    v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v7 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v4);
    }

    v9 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v8 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      v10 = *v9;
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    else
    {
      v10 = *v9;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v13 = "DSP_Node.cpp";
      v14 = 1024;
      v15 = 26;
      v16 = 2080;
      v17 = "constructed_correct_class(k_class_id_dsp_node)";
      _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s the core is not of the proper class", buf, 0x1Cu);
    }

    abort();
  }

  v5 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1DE6E58B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, char a10)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void HALS_Graph_Manager::get_clock_device_list(HALS_Graph_Manager *this@<X0>, uint64_t a2@<X8>)
{
  v12[4] = *MEMORY[0x1E69E9840];
  v4 = *(this + 53);
  v5 = *(this + 54);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = (*(*v4 + 16))(v4);
  v12[0] = &unk_1F598CE78;
  v12[3] = v12;
  AMCP::Core::Broker::fetch_cores_if (v10, v6, v12);
  std::__function::__value_func<BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::~__value_func[abi:ne200100](v12);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v7 = v10[0];
  v8 = v10[1];
  v12[0] = a2;
  while (v7 != v8)
  {
    v11 = **v7;
    std::back_insert_iterator<std::vector<unsigned int>>::operator=[abi:ne200100](v12, &v11);
    v7 += 2;
  }

  v12[0] = v10;
  std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](v12);
  v9 = *MEMORY[0x1E69E9840];
}

void sub_1DE6E5AF0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t *std::back_insert_iterator<std::vector<unsigned int>>::operator=[abi:ne200100](uint64_t *a1, _DWORD *a2)
{
  v4 = *a1;
  v6 = *(*a1 + 8);
  v5 = *(*a1 + 16);
  if (v6 >= v5)
  {
    v8 = *v4;
    v9 = v6 - *v4;
    v10 = (v9 >> 2) + 1;
    if (v10 >> 62)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v11 = v5 - v8;
    if (v11 >> 1 > v10)
    {
      v10 = v11 >> 1;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v12 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v12);
    }

    v13 = (4 * (v9 >> 2));
    *v13 = *a2;
    v7 = v13 + 1;
    memcpy(0, v8, v9);
    v14 = *v4;
    *v4 = 0;
    *(v4 + 8) = v7;
    *(v4 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v6 = *a2;
    v7 = v6 + 1;
  }

  *(v4 + 8) = v7;
  return a1;
}

uint64_t std::__function::__func<HALS_Graph_Manager::get_clock_device_list(void)::$_0,std::allocator<HALS_Graph_Manager::get_clock_device_list(void)::$_0>,BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZNK18HALS_Graph_Manager21get_clock_device_listEvE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<HALS_Graph_Manager::get_clock_device_list(void)::$_0,std::allocator<HALS_Graph_Manager::get_clock_device_list(void)::$_0>,BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::operator()(uint64_t a1, AMCP::Core::Core **a2)
{
  simple_required = AMCP::Core::Core::get_simple_required_property<1668047219u>(*a2);

  return AMCP::is_base_of(0x61646576, simple_required);
}

void HALS_Graph_Manager::get_device_list(HALS_Graph_Manager *this@<X0>, uint64_t a2@<X8>)
{
  v12[4] = *MEMORY[0x1E69E9840];
  v4 = *(this + 53);
  v5 = *(this + 54);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = (*(*v4 + 16))(v4);
  v12[0] = &unk_1F598CDF8;
  v12[3] = v12;
  AMCP::Core::Broker::fetch_cores_if (v10, v6, v12);
  std::__function::__value_func<BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::~__value_func[abi:ne200100](v12);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v7 = v10[0];
  v8 = v10[1];
  v12[0] = a2;
  while (v7 != v8)
  {
    v11 = **v7;
    std::back_insert_iterator<std::vector<unsigned int>>::operator=[abi:ne200100](v12, &v11);
    v7 += 2;
  }

  v12[0] = v10;
  std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](v12);
  v9 = *MEMORY[0x1E69E9840];
}

void sub_1DE6E5E18(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__func<HALS_Graph_Manager::get_device_list(void)::$_0,std::allocator<HALS_Graph_Manager::get_device_list(void)::$_0>,BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZNK18HALS_Graph_Manager15get_device_listEvE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<HALS_Graph_Manager::get_device_list(void)::$_0,std::allocator<HALS_Graph_Manager::get_device_list(void)::$_0>,BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::operator()(uint64_t a1, AMCP::Core::Core **a2)
{
  simple_required = AMCP::Core::Core::get_simple_required_property<1668047219u>(*a2);

  return AMCP::is_base_of(0x61646576, simple_required);
}

void HALS_Graph_Manager::enqueue_config_change(uint64_t a1, int a2, int a3, int a4, uint64_t a5)
{
  queue[42] = *MEMORY[0x1E69E9840];
  AMCP::Utility::Dispatch_Queue::Dispatch_Queue(queue, (a1 + 440));
  v11 = a1;
  v12 = a3;
  v13 = a2;
  v14 = a4;
  v15 = a5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN10applesauce8dispatch2v19sync_implIZN18HALS_Graph_Manager21enqueue_config_changeEjjjRKNSt3__18functionIFvvEEEE3__0EEvP16dispatch_queue_sOT_NS4_17integral_constantIbLb1EEE_block_invoke;
  block[3] = &__block_descriptor_tmp_196;
  block[4] = &v11;
  dispatch_sync(queue[0], block);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(queue);
  v10 = *MEMORY[0x1E69E9840];
}

void ___ZN10applesauce8dispatch2v19sync_implIZN18HALS_Graph_Manager21enqueue_config_changeEjjjRKNSt3__18functionIFvvEEEE3__0EEvP16dispatch_queue_sOT_NS4_17integral_constantIbLb1EEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *v1;
  memset(v12, 0, sizeof(v12));
  v11[0] = 0;
  v11[1] = 0;
  v10 = v11;
  v3 = (v1 + 8);
  AMCP::IO_Core::Graph_Manager::prepare_graph_for_config_change(&__p, v2, *(v1 + 16), *(v1 + 8), v12, &v10);
  v4 = *(*(v1 + 24) + 24);
  if (v4)
  {
    (*(*v4 + 48))(v4);
    v8[0] = 0;
    v8[1] = 0;
    v7 = v8;
    std::__tree<DSP_Host_Types::AudioProcessingType>::__emplace_unique_key_args<DSP_Host_Types::AudioProcessingType,DSP_Host_Types::AudioProcessingType>(&v7, *(v1 + 12));
    std::__tree<DSP_Host_Types::AudioProcessingType>::__emplace_unique_key_args<DSP_Host_Types::AudioProcessingType,DSP_Host_Types::AudioProcessingType>(&v7, *v3);
    v5 = *v3;
    std::set<unsigned int>::set[abi:ne200100](&v6, &v7);
    AMCP::IO_Core::Graph_Manager::update_graph_after_config_change(v2, v5, &v6, *(v1 + 16), &__p);
  }

  std::__throw_bad_function_call[abi:ne200100]();
}

void sub_1DE6E617C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void **a15)
{
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(a10);
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(a13);
  std::pair<std::vector<unsigned int>,std::vector<std::string>>::~pair(&a15);
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(*(v15 - 72));
  a15 = (v15 - 56);
  std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

uint64_t std::pair<std::vector<unsigned int>,std::vector<std::string>>::~pair(uint64_t a1)
{
  v4 = (a1 + 24);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
  v2 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t HALS_Graph_Manager::get_graph_host@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 432);
  *a2 = *(this + 424);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void HALS_Graph_Manager::~HALS_Graph_Manager(HALS_Graph_Manager *this)
{
  *this = &unk_1F598C5F8;
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((this + 440));
  v2 = *(this + 54);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  AMCP::IO_Core::Graph_Manager::~Graph_Manager(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F598C5F8;
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((this + 440));
  v2 = *(this + 54);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  AMCP::IO_Core::Graph_Manager::~Graph_Manager(this);
}

AMCP::Log::AMCP_Scope_Registry *HALS_IOContext_Manager_Graph_Host::simple_property_changed_async(AMCP::Log::AMCP_Scope_Registry *this, unsigned int a2, const AMCP::Address *a3, const AMCP::Thing *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  if (*a3 != 1718839674)
  {
    v5 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v5 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(this);
    }

    v7 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v6 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v8 = *v7;
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    else
    {
      v8 = *v7;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v20 = "HALS_IOContext_Manager_Impl.cpp";
      v21 = 1024;
      v22 = 45;
      v23 = 2080;
      v24 = "not (in_changed_property.m_selector == k_iocontext_property_buffer_frame_size)";
      _os_log_error_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s simple_property_changed_async only supports changing buffer size", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v18);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("simple_property_changed_async only supports changing buffer size", &v10);
    std::logic_error::logic_error(&v11, &v10);
    v11.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v12, &v11);
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = -1;
    v12.__vftable = &unk_1F5991430;
    v13 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v12);
    v25 = "virtual void HALS_IOContext_Manager_Graph_Host::simple_property_changed_async(Object_ID, const Address &, const Thing &)";
    v26 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IO/HALS_IOContext_Manager_Impl.cpp";
    v27 = 45;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v9);
  }

  v4 = *MEMORY[0x1E69E9840];
  return this;
}

void sub_1DE6E6584(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__shared_ptr_pointer<HALS_IOContext_Manager_Graph_Host *,std::shared_ptr<AMCP::Graph::Graph_Host>::__shared_ptr_default_delete<AMCP::Graph::Graph_Host,HALS_IOContext_Manager_Graph_Host>,std::allocator<HALS_IOContext_Manager_Graph_Host>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrIN4AMCP5Graph10Graph_HostEE27__shared_ptr_default_deleteIS3_33HALS_IOContext_Manager_Graph_HostEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<HALS_IOContext_Manager_Graph_Host *,std::shared_ptr<AMCP::Graph::Graph_Host>::__shared_ptr_default_delete<AMCP::Graph::Graph_Host,HALS_IOContext_Manager_Graph_Host>,std::allocator<HALS_IOContext_Manager_Graph_Host>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<HALS_IOContext_Manager_Graph_Host *,std::shared_ptr<AMCP::Graph::Graph_Host>::__shared_ptr_default_delete<AMCP::Graph::Graph_Host,HALS_IOContext_Manager_Graph_Host>,std::allocator<HALS_IOContext_Manager_Graph_Host>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<HALS_Graph_Manager>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F598C7E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t HALS_IOContext_Manager_Impl::Object_Map::find_mcp_object(HALS_IOContext_Manager_Impl::Object_Map *this, unsigned int a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (*(this + 8) != *(this + 3))
  {
    v4 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v4 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(this);
    }

    v6 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v5 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      v7 = *v6;
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    else
    {
      v7 = *v6;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315650;
      v9 = "HALS_IOContext_Manager_Impl.cpp";
      v10 = 1024;
      v11 = 847;
      v12 = 2080;
      v13 = "m_hal_object_to_mcp_object_map.size() == m_mcp_object_to_hal_object_map.size()";
      _os_log_error_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s ", &v8, 0x1Cu);
    }

    abort();
  }

  result = std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>(this + 5, a2);
  if (result)
  {
    result = *(result + 20) | 0x100000000;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void HALS_IOContext_Manager_Impl::find_wires_for_context(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 112);
  v4 = *(a3 + 23);
  if (v4 >= 0)
  {
    v5 = a3;
  }

  else
  {
    v5 = *a3;
  }

  if (v5)
  {
    if (v4 >= 0)
    {
      v6 = *(a3 + 23);
    }

    else
    {
      v6 = *(a3 + 8);
    }

    cf[0] = CFStringCreateWithBytes(0, v5, v6, 0x8000100u, 0);
    if (!cf[0])
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    cf[0] = 0;
  }

  AMCP::IO_Core::Graph_Manager::get_node_id(v3, cf);
}

void sub_1DE6E6B28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

uint64_t *HALS_IOContext_Manager_Impl::Object_Map::add_object(HALS_IOContext_Manager_Impl::Object_Map *this, unsigned int a2, unsigned int a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v18 = a3;
  v19 = a2;
  if (*(this + 8) != *(this + 3))
  {
    v14 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v14 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(this);
    }

    v16 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v15 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      v17 = *v16;
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    else
    {
      v17 = *v16;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "HALS_IOContext_Manager_Impl.cpp";
      v21 = 1024;
      v22 = 796;
      v23 = 2080;
      v24 = "m_hal_object_to_mcp_object_map.size() == m_mcp_object_to_hal_object_map.size()";
      _os_log_error_impl(&dword_1DE1F9000, v17, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s ", buf, 0x1Cu);
    }

    abort();
  }

  v6 = std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>(this, a2);
  if (v6)
  {
    v7 = *(v6 + 5);
    v8 = this;
    v9 = a2;
LABEL_6:
    HALS_IOContext_Manager_Impl::Object_Map::remove_object(v8, v9, v7);
    goto LABEL_7;
  }

  v10 = std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>(this + 5, a3);
  if (v10)
  {
    v9 = *(v10 + 5);
    v8 = this;
    v7 = a3;
    goto LABEL_6;
  }

LABEL_7:
  *buf = &v19;
  *(std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this, a2) + 5) = a3;
  v11 = v19;
  *buf = &v18;
  result = std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 5, a3);
  *(result + 5) = v11;
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

void HALS_IOContext_Manager_Impl::Object_Map::remove_object(HALS_IOContext_Manager_Impl::Object_Map *this, unsigned int a2, unsigned int a3)
{
  v31 = *MEMORY[0x1E69E9840];
  if (*(this + 8) != *(this + 3))
  {
    v15 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v15 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(this);
    }

    v17 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v16 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      v13 = *v17;
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    else
    {
      v13 = *v17;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v25 = 136315650;
      v26 = "HALS_IOContext_Manager_Impl.cpp";
      v27 = 1024;
      v28 = 821;
      v29 = 2080;
      v30 = "m_hal_object_to_mcp_object_map.size() == m_mcp_object_to_hal_object_map.size()";
      v18 = "%32s:%-5d Assertion Failed: %s ";
LABEL_29:
      _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, v18, &v25, 0x1Cu);
    }

LABEL_30:
    abort();
  }

  v6 = std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>(this, a2);
  v7 = std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>(this + 5, a3);
  v8 = v7;
  if (v6)
  {
    if (*(v7 + 5) != a2 || *(v6 + 5) != a3)
    {
      v22 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v22 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v7);
      }

      v24 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v23 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        v13 = *v24;
        std::__shared_weak_count::__release_shared[abi:ne200100](v23);
      }

      else
      {
        v13 = *v24;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v25 = 136315650;
        v26 = "HALS_IOContext_Manager_Impl.cpp";
        v27 = 1024;
        v28 = 838;
        v29 = 2080;
        v30 = "false";
        v18 = "%32s:%-5d Assertion Failed: %s Invalid state in Object_Map";
        goto LABEL_29;
      }

      goto LABEL_30;
    }

    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::erase(this, v6);
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::erase(this + 5, v8);
    if (*(this + 8) != *(this + 3))
    {
      v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v10 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v9);
      }

      v12 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v11 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        v13 = *v12;
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }

      else
      {
        v13 = *v12;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v25 = 136315650;
        v26 = "HALS_IOContext_Manager_Impl.cpp";
        v27 = 1024;
        v28 = 840;
        v29 = 2080;
        v30 = "m_hal_object_to_mcp_object_map.size() == m_mcp_object_to_hal_object_map.size()";
        v18 = "%32s:%-5d Assertion Failed: %s ";
        goto LABEL_29;
      }

      goto LABEL_30;
    }
  }

  else if (v7)
  {
    v19 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v19 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v7);
    }

    v21 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v20 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      v13 = *v21;
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

    else
    {
      v13 = *v21;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v25 = 136315650;
      v26 = "HALS_IOContext_Manager_Impl.cpp";
      v27 = 1024;
      v28 = 827;
      v29 = 2080;
      v30 = "hal_found == m_hal_object_to_mcp_object_map.end()";
      v18 = "%32s:%-5d Assertion Failed: %s Invalid state in Object_Map";
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

uint64_t std::__function::__func<HALS_IOContext_Manager_Impl::create_context_core_for_hal_object_id(unsigned int,unsigned int,applesauce::CF::DictionaryRef,AMCP::Node_Description &,std::array<unsigned int,2ul> const&,std::vector<BOOL> const&,std::vector<BOOL> const&)::$_0,std::allocator<HALS_IOContext_Manager_Impl::create_context_core_for_hal_object_id(unsigned int,unsigned int,applesauce::CF::DictionaryRef,AMCP::Node_Description &,std::array<unsigned int,2ul> const&,std::vector<BOOL> const&,std::vector<BOOL> const&)::$_0>,BOOL ()(unsigned int)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN27HALS_IOContext_Manager_Impl37create_context_core_for_hal_object_idEjjN10applesauce2CF13DictionaryRefERN4AMCP16Node_DescriptionERKNSt3__15arrayIjLm2EEERKNS6_6vectorIbNS6_9allocatorIbEEEESG_E3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL std::__function::__func<HALS_IOContext_Manager_Impl::create_context_core_for_hal_object_id(unsigned int,unsigned int,applesauce::CF::DictionaryRef,AMCP::Node_Description &,std::array<unsigned int,2ul> const&,std::vector<BOOL> const&,std::vector<BOOL> const&)::$_0,std::allocator<HALS_IOContext_Manager_Impl::create_context_core_for_hal_object_id(unsigned int,unsigned int,applesauce::CF::DictionaryRef,AMCP::Node_Description &,std::array<unsigned int,2ul> const&,std::vector<BOOL> const&,std::vector<BOOL> const&)::$_0>,BOOL ()(unsigned int)>::operator()(uint64_t a1, unsigned int *a2)
{
  v3 = std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>(*(a1 + 8), *a2);
  if (v3)
  {
    v4 = *(v3 + 5);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 20);
  v6 = HALS_ObjectMap::CopyObjectByObjectID(*(a1 + 16));
  v7 = HALS_ObjectMap::CopyObjectByObjectID(v5);
  v8 = HALS_ObjectMap::CopyObjectByObjectID(v4);
  v10 = v8;
  if (v8)
  {
    ReferenceStreamStateForClient = 1;
    if (*(v8 + 52) == 1 && v7 && (*(v8 + 56) == 1 || HALS_Stream::IsHardwareReferenceStream(v8)))
    {
      ReferenceStreamStateForClient = HALS_ReferenceStreamStateManager::GetReferenceStreamStateForClient(v6[56], v7[4]);
    }
  }

  else
  {
    ReferenceStreamStateForClient = 0;
  }

  HALS_ObjectMap::ReleaseObject(v10, v9);
  HALS_ObjectMap::ReleaseObject(v7, v12);
  HALS_ObjectMap::ReleaseObject(v6, v13);
  return ReferenceStreamStateForClient;
}

void sub_1DE6E7404(_Unwind_Exception *a1, HALS_Object *a2)
{
  HALS_ObjectMap::ReleaseObject(v4, a2);
  HALS_ObjectMap::ReleaseObject(v3, v6);
  HALS_ObjectMap::ReleaseObject(v2, v7);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<HALS_IOContext_Manager_Impl::create_context_core_for_hal_object_id(unsigned int,unsigned int,applesauce::CF::DictionaryRef,AMCP::Node_Description &,std::array<unsigned int,2ul> const&,std::vector<BOOL> const&,std::vector<BOOL> const&)::$_0,std::allocator<HALS_IOContext_Manager_Impl::create_context_core_for_hal_object_id(unsigned int,unsigned int,applesauce::CF::DictionaryRef,AMCP::Node_Description &,std::array<unsigned int,2ul> const&,std::vector<BOOL> const&,std::vector<BOOL> const&)::$_0>,BOOL ()(unsigned int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F598C830;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void ___ZN27HALS_IOContext_Manager_Impl38destroy_context_core_for_hal_object_idEj_block_invoke(void *a1)
{
  v7[7] = *MEMORY[0x1E69E9840];
  v3 = a1[4];
  v2 = a1[5];
  if (v2)
  {
    __p[0] = 0x676C6F6270617573;
    LODWORD(__p[1]) = 0;
    AMCP::Core::Core::call_operation_function<void,AMCP::Pause_Behavior>(v2, __p, 1);
  }

  v4 = a1[7];
  if (v4)
  {
    applesauce::CF::convert_to<std::string,0>(__p, v4);
    HALS_IOContext_Manager_Impl::find_wires_for_context(v7, v3, __p);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  applesauce::CF::construct_error(exception);
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void sub_1DE6E7714(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  __cxa_free_exception(v20);
  AMCP::Graph_Description::~Graph_Description(&__p);
  __p = (v21 - 96);
  std::vector<AMCP::Wire_Identifier>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void __destroy_helper_block_e8_40c43_ZTSNSt3__110shared_ptrIN4AMCP4Core4CoreEEE56c31_ZTSN10applesauce2CF9StringRefE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void *__copy_helper_block_e8_40c43_ZTSNSt3__110shared_ptrIN4AMCP4Core4CoreEEE56c31_ZTSN10applesauce2CF9StringRefE(void *result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 48);
  result[5] = *(a2 + 40);
  result[6] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a2 + 56);
  if (v4)
  {
    result = CFRetain(*(a2 + 56));
  }

  v2[7] = v4;
  return result;
}

unint64_t HALS_IOContext_Manager_Impl::demand_driver_object_for_id(AMCP::Core::Broker **this, unsigned int a2)
{
  v5 = *MEMORY[0x1E69E9840];
  result = HALS_IOContext_Manager_Impl::Object_Map::find_mcp_object((this + 2), a2);
  if (!HIDWORD(result))
  {
    AMCP::Core::Broker::reserve_id(this[12]);
    AMCP::Core::Operation_Utilities::make_typed_property<unsigned int,std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<unsigned int>(AMCP::Address const&,unsigned int const&)::{lambda(void)#1}>();
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE6E7B24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  std::__hash_table<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>>>::~__hash_table(&a11);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<HALS_IOContext_Manager_Impl::create_device_object(unsigned int,unsigned int,applesauce::CF::StringRef,std::vector<HALS_IOContext_Manager_Impl::Stream_Info> const&,BOOL)::$_0,std::allocator<HALS_IOContext_Manager_Impl::create_device_object(unsigned int,unsigned int,applesauce::CF::StringRef,std::vector<HALS_IOContext_Manager_Impl::Stream_Info> const&,BOOL)::$_0>,std::shared_ptr<AMCP::Core::Engine> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN27HALS_IOContext_Manager_Impl20create_device_objectEjjN10applesauce2CF9StringRefERKNSt3__16vectorINS_11Stream_InfoENS3_9allocatorIS5_EEEEbE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<HALS_IOContext_Manager_Impl::create_device_object(unsigned int,unsigned int,applesauce::CF::StringRef,std::vector<HALS_IOContext_Manager_Impl::Stream_Info> const&,BOOL)::$_0,std::allocator<HALS_IOContext_Manager_Impl::create_device_object(unsigned int,unsigned int,applesauce::CF::StringRef,std::vector<HALS_IOContext_Manager_Impl::Stream_Info> const&,BOOL)::$_0>,std::shared_ptr<AMCP::Core::Engine> ()(void)>::operator()@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<HALS_IOContext_Manager_Impl::create_device_object(unsigned int,unsigned int,applesauce::CF::StringRef,std::vector<HALS_IOContext_Manager_Impl::Stream_Info> const&,BOOL)::$_0,std::allocator<HALS_IOContext_Manager_Impl::create_device_object(unsigned int,unsigned int,applesauce::CF::StringRef,std::vector<HALS_IOContext_Manager_Impl::Stream_Info> const&,BOOL)::$_0>,std::shared_ptr<AMCP::Core::Engine> ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<HALS_IOContext_Manager_Impl::create_device_object(unsigned int,unsigned int,applesauce::CF::StringRef,std::vector<HALS_IOContext_Manager_Impl::Stream_Info> const&,BOOL)::$_0,std::allocator<HALS_IOContext_Manager_Impl::create_device_object(unsigned int,unsigned int,applesauce::CF::StringRef,std::vector<HALS_IOContext_Manager_Impl::Stream_Info> const&,BOOL)::$_0>,std::shared_ptr<AMCP::Core::Engine> ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<HALS_IOContext_Manager_Impl::create_device_object(unsigned int,unsigned int,applesauce::CF::StringRef,std::vector<HALS_IOContext_Manager_Impl::Stream_Info> const&,BOOL)::$_0,std::allocator<HALS_IOContext_Manager_Impl::create_device_object(unsigned int,unsigned int,applesauce::CF::StringRef,std::vector<HALS_IOContext_Manager_Impl::Stream_Info> const&,BOOL)::$_0>,std::shared_ptr<AMCP::Core::Engine> ()(void)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F598CA98;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<HALS_IOContext_Manager_Impl::create_device_object(unsigned int,unsigned int,applesauce::CF::StringRef,std::vector<HALS_IOContext_Manager_Impl::Stream_Info> const&,BOOL)::$_0,std::allocator<HALS_IOContext_Manager_Impl::create_device_object(unsigned int,unsigned int,applesauce::CF::StringRef,std::vector<HALS_IOContext_Manager_Impl::Stream_Info> const&,BOOL)::$_0>,std::shared_ptr<AMCP::Core::Engine> ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F598CA98;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<HALS_IOContext_Manager_Impl::create_device_object(unsigned int,unsigned int,applesauce::CF::StringRef,std::vector<HALS_IOContext_Manager_Impl::Stream_Info> const&,BOOL)::$_0,std::allocator<HALS_IOContext_Manager_Impl::create_device_object(unsigned int,unsigned int,applesauce::CF::StringRef,std::vector<HALS_IOContext_Manager_Impl::Stream_Info> const&,BOOL)::$_0>,std::shared_ptr<AMCP::Core::Engine> ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F598CA98;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void HALS_IOContext_Manager_Impl::create_stream_info_for_device(HALS_IOContext_Manager_Impl *this, const HALS_IODevice *a2)
{
  v2 = 0;
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  v3 = 1;
  do
  {
    v10 = v2;
    NumberStreams = HALS_IODevice::GetNumberStreams(a2, v3 & 1);
    if (NumberStreams)
    {
      for (i = 0; i != NumberStreams; ++i)
      {
        v6 = HALS_IODevice::CopyStreamByIndex(a2, v3 & 1, i);
        v8 = v6;
        if (v6)
        {
          v9 = *(v6 + 4);
          (*(*v6 + 208))(v6);
          if (*(v8 + 14) != 1)
          {
            HALS_Stream::IsHardwareReferenceStream(v8);
          }

          std::allocator<HALS_IOContext_Manager_Impl::Stream_Info>::allocate_at_least[abi:ne200100](1uLL);
        }

        HALS_ObjectMap::ReleaseObject(v6, v7);
      }
    }

    v3 = 0;
    v2 = 1;
  }

  while ((v10 & 1) == 0);
}

void sub_1DE6E7F6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p)
{
  if (__p)
  {
    *(a12 + 8) = __p;
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::allocator<HALS_IOContext_Manager_Impl::Stream_Info>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void HALS_IOContext_Manager_Impl::device_arrived(uint64_t a1, unsigned int a2, unsigned int a3, const __CFString **a4, void *a5)
{
  v30 = *MEMORY[0x1E69E9840];
  v22 = a3;
  v23 = a2;
  std::mutex::lock((a1 + 168));
  v11 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v11 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v10);
  }

  v13 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v12 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    v14 = *v13;
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  else
  {
    v14 = *v13;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    if (!*a4)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    applesauce::CF::convert_to<std::string,0>(__p, *a4);
    if (v21 >= 0)
    {
      v18 = __p;
    }

    else
    {
      v18 = __p[0];
    }

    *buf = 136315650;
    v25 = "HALS_IOContext_Manager_Impl.cpp";
    v26 = 1024;
    v27 = 465;
    v28 = 2080;
    v29 = v18;
    _os_log_debug_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_DEBUG, "%32s:%-5d device_arrived: %s", buf, 0x1Cu);
    if (SHIBYTE(v21) < 0)
    {
      operator delete(__p[0]);
    }
  }

  __p[0] = 0;
  __p[1] = 0;
  v21 = 0;
  v15 = a5[1] - *a5;
  if (v15)
  {
    if (!((v15 >> 4) >> 60))
    {
      std::allocator<HALS_IOContext_Manager_Impl::Stream_Info>::allocate_at_least[abi:ne200100](v15 >> 4);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  HALS_IOContext_Manager_Impl::demand_driver_object_for_id(a1, a3);
  HALS_IOContext_Manager_Impl::Object_Map::find_mcp_object((a1 + 16), a2);
  v16 = *(a1 + 112);
  v17 = *a4;
  if (v17)
  {
    CFRetain(v17);
  }

  operator new();
}

void sub_1DE6E82F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  __cxa_free_exception(v17);
  std::mutex::unlock((v16 + 168));
  _Unwind_Resume(a1);
}

void HALS_IOContext_Manager_Impl::garbage_collect(HALS_IOContext_Manager_Impl *this)
{
  v10[4] = *MEMORY[0x1E69E9840];
  v2 = *(this + 12);
  v10[0] = &unk_1F598CD28;
  v10[3] = v10;
  AMCP::Core::Broker::fetch_object_ids_if (&v9, v2, v10);
  std::__function::__value_func<BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::~__value_func[abi:ne200100](v10);
  begin = v9.__begin_;
  end = v9.__end_;
  if (v9.__begin_ != v9.__end_)
  {
    v5 = v9.__begin_;
    do
    {
      v6 = std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>(this + 2, *v5);
      if (v6)
      {
        v7 = *(v6 + 5);
        if ((HALS_ObjectMap::IsObjectMapped(v7) & 1) == 0)
        {
          HALS_IOContext_Manager_Impl::Object_Map::remove_object((this + 16), *v5, v7);
          AMCP::Core::Broker::destroy_core(*(this + 12), *v5);
          if (std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>(this + 16, v7))
          {
            HALS_IOContext_Manager_Impl::destroy_engine_for_device(this, v7);
          }
        }
      }

      ++v5;
    }

    while (v5 != end);
  }

  if (begin)
  {
    operator delete(begin);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1DE6E8478(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_IOContext_Manager_Impl::device_arrived(unsigned int,unsigned int,applesauce::CF::StringRef,std::vector<HALS_IOContext_Manager_Impl::Stream_Info> const&,BOOL)::$_0::~$_0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void HALS_IOContext_Manager_Impl::destroy_engine_for_device(HALS_IOContext_Manager_Impl *this, unsigned int a2)
{
  v3 = std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>(this + 16, a2);
  if (v3)
  {

    std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<AMCP::Core::Engine>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<AMCP::Core::Engine>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<AMCP::Core::Engine>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<AMCP::Core::Engine>>>>::erase(this + 16, v3);
  }
}

uint64_t std::__function::__func<HALS_IOContext_Manager_Impl::garbage_collect(void)::$_0,std::allocator<HALS_IOContext_Manager_Impl::garbage_collect(void)::$_0>,BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN27HALS_IOContext_Manager_Impl15garbage_collectEvE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<HALS_IOContext_Manager_Impl::garbage_collect(void)::$_0,std::allocator<HALS_IOContext_Manager_Impl::garbage_collect(void)::$_0>,BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::operator()(uint64_t a1, AMCP::Core::Core **a2)
{
  v2 = *a2;
  v5 = 0x676C6F6262636C73;
  v6 = 0;
  v3 = AMCP::Core::Core::get_typed_property_value<unsigned int,std::enable_if<true,void>>(v2, &v5, &AMCP::k_class_id_unknown);
  return AMCP::is_base_of(0x696F636E, v3) ^ 1;
}

uint64_t std::__function::__func<HALS_IOContext_Manager_Impl::device_arrived(unsigned int,unsigned int,applesauce::CF::StringRef,std::vector<HALS_IOContext_Manager_Impl::Stream_Info> const&,BOOL)::$_0,std::allocator<HALS_IOContext_Manager_Impl::device_arrived(unsigned int,unsigned int,applesauce::CF::StringRef,std::vector<HALS_IOContext_Manager_Impl::Stream_Info> const&,BOOL)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN27HALS_IOContext_Manager_Impl14device_arrivedEjjN10applesauce2CF9StringRefERKNSt3__16vectorINS_11Stream_InfoENS3_9allocatorIS5_EEEEbE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<HALS_IOContext_Manager_Impl::device_arrived(unsigned int,unsigned int,applesauce::CF::StringRef,std::vector<HALS_IOContext_Manager_Impl::Stream_Info> const&,BOOL)::$_0,std::allocator<HALS_IOContext_Manager_Impl::device_arrived(unsigned int,unsigned int,applesauce::CF::StringRef,std::vector<HALS_IOContext_Manager_Impl::Stream_Info> const&,BOOL)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8);
  v3 = **(a1 + 16);
  v4 = **(a1 + 24);
  if (*(a1 + 32))
  {
    CFRetain(*(a1 + 32));
  }

  v5 = *(a1 + 40);
  v24 = *(a1 + 48);
  mcp_object = HALS_IOContext_Manager_Impl::Object_Map::find_mcp_object((v2 + 16), v3);
  v7 = mcp_object;
  if (HIDWORD(mcp_object))
  {
    v8 = *(v2 + 96);
    v39 = 0;
    v40 = 0;
    v38 = 0;
    LODWORD(v26.__r_.__value_.__l.__data_) = mcp_object;
    __p[1] = 0;
    v30[0] = 0;
    __p[0] = 0;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(__p, &v26, v26.__r_.__value_.__r.__words + 4, 1uLL);
    AMCP::Core::Broker::gather_directly_owned_objects(buf, v8, __p);
    if (__p[0])
    {
      operator delete(__p[0]);
    }

    v9 = *buf;
    v10 = *&buf[8];
    if (*buf != *&buf[8])
    {
      v11 = *buf;
      do
      {
        AMCP::Core::Broker::fetch_core(__p, v8, *v11);
        if (__p[0])
        {
          std::vector<std::shared_ptr<AMCP::Meta::Stream>>::push_back[abi:ne200100](&v38, __p);
        }

        if (__p[1])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](__p[1]);
        }

        ++v11;
      }

      while (v11 != v10);
    }

    if (v9)
    {
      operator delete(v9);
    }

    v12 = v38;
    v13 = v39;
    while (v12 != v13)
    {
      v14 = **v12;
      v15 = std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>((v2 + 16), v14);
      if (v15)
      {
        v16 = *(v15 + 5);
      }

      else
      {
        v16 = 0;
      }

      HALS_IOContext_Manager_Impl::Object_Map::remove_object((v2 + 16), v14, v16);
      AMCP::Core::Broker::destroy_core(*(v2 + 96), v14);
      v12 += 2;
    }

    *buf = &v38;
    std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](buf);
    AMCP::Core::Broker::destroy_core(*(v2 + 96), v7);
    HALS_IOContext_Manager_Impl::Object_Map::remove_object((v2 + 16), v7, v3);
  }

  v17 = AMCP::Core::Broker::reserve_id(*(v2 + 96));
  v18 = HALS_IOContext_Manager_Impl::Object_Map::find_mcp_object((v2 + 16), v4);
  if (HIDWORD(v18))
  {
    if (*v5 != v5[1])
    {
      v19 = AMCP::Core::Broker::reserve_id(*(v2 + 96));
      memset(buf, 0, sizeof(buf));
      LODWORD(v35) = 1065353216;
      v38 = 0x676C6F6269646E74;
      LODWORD(v39) = 0;
      LODWORD(v26.__r_.__value_.__l.__data_) = v19;
      AMCP::Core::Operation_Utilities::make_typed_property<unsigned int,std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<unsigned int>(AMCP::Address const&,unsigned int const&)::{lambda(void)#1}>();
    }

    *__p = 0u;
    *v30 = 0u;
    LODWORD(v31) = 1065353216;
    if (std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>((v2 + 128), v3))
    {
      strcpy(buf, "ngnebolg");
      buf[9] = 0;
      *&buf[10] = 0;
      std::allocate_shared[abi:ne200100]<AMCP::Core::Operation,std::allocator<AMCP::Core::Operation>,AMCP::Address,0>();
    }

    v38 = 0x676C6F6269646E74;
    LODWORD(v39) = 0;
    LODWORD(v26.__r_.__value_.__l.__data_) = v17;
    AMCP::Core::Operation_Utilities::make_typed_property<unsigned int,std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<unsigned int>(AMCP::Address const&,unsigned int const&)::{lambda(void)#1}>();
  }

  v20 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v20 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v18);
  }

  v22 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v21 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    v23 = *v22;
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  else
  {
    v23 = *v22;
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    *&buf[4] = "HALS_IOContext_Manager_Impl.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 373;
    *&buf[18] = 2080;
    *&buf[20] = "not (owner_id)";
    _os_log_error_impl(&dword_1DE1F9000, v23, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
  }

  AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v28);
  __cxa_allocate_exception(0x40uLL);
  caulk::make_string("", &v26);
  std::logic_error::logic_error(&v27, &v26);
  v27.__vftable = (MEMORY[0x1E69E55A8] + 16);
  std::logic_error::logic_error(__p, &v27);
  v30[1] = 0;
  v31 = 0;
  v32 = 0;
  v33 = -1;
  __p[0] = &unk_1F5991430;
  v30[0] = &unk_1F5991458;
  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, __p);
  v35 = "void HALS_IOContext_Manager_Impl::create_device_object(AudioObjectID, AudioObjectID, CF::String, const std::vector<Stream_Info> &, BOOL)";
  v36 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IO/HALS_IOContext_Manager_Impl.cpp";
  v37 = 373;
  applesauce::backtrace::snapshot_N<64>::snapshot_N(&v25);
}

void sub_1DE6E9420(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<HALS_IOContext_Manager_Impl::device_arrived(unsigned int,unsigned int,applesauce::CF::StringRef,std::vector<HALS_IOContext_Manager_Impl::Stream_Info> const&,BOOL)::$_0,std::allocator<HALS_IOContext_Manager_Impl::device_arrived(unsigned int,unsigned int,applesauce::CF::StringRef,std::vector<HALS_IOContext_Manager_Impl::Stream_Info> const&,BOOL)::$_0>,void ()(void)>::destroy_deallocate(const void **a1)
{
  std::__function::__alloc_func<HALS_IOContext_Manager_Impl::device_arrived(unsigned int,unsigned int,applesauce::CF::StringRef,std::vector<HALS_IOContext_Manager_Impl::Stream_Info> const&,BOOL)::$_0,std::allocator<HALS_IOContext_Manager_Impl::device_arrived(unsigned int,unsigned int,applesauce::CF::StringRef,std::vector<HALS_IOContext_Manager_Impl::Stream_Info> const&,BOOL)::$_0>,void ()(void)>::destroy[abi:ne200100](a1[4]);

  operator delete(a1);
}

void std::__function::__alloc_func<HALS_IOContext_Manager_Impl::device_arrived(unsigned int,unsigned int,applesauce::CF::StringRef,std::vector<HALS_IOContext_Manager_Impl::Stream_Info> const&,BOOL)::$_0,std::allocator<HALS_IOContext_Manager_Impl::device_arrived(unsigned int,unsigned int,applesauce::CF::StringRef,std::vector<HALS_IOContext_Manager_Impl::Stream_Info> const&,BOOL)::$_0>,void ()(void)>::destroy[abi:ne200100](const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

char *std::__function::__func<HALS_IOContext_Manager_Impl::device_arrived(unsigned int,unsigned int,applesauce::CF::StringRef,std::vector<HALS_IOContext_Manager_Impl::Stream_Info> const&,BOOL)::$_0,std::allocator<HALS_IOContext_Manager_Impl::device_arrived(unsigned int,unsigned int,applesauce::CF::StringRef,std::vector<HALS_IOContext_Manager_Impl::Stream_Info> const&,BOOL)::$_0>,void ()(void)>::__clone(char *result, uint64_t a2)
{
  v3 = result;
  *a2 = &unk_1F598CC28;
  v4 = *(result + 8);
  *(a2 + 24) = *(result + 3);
  *(a2 + 8) = v4;
  v5 = *(result + 4);
  if (v5)
  {
    result = CFRetain(*(result + 4));
  }

  *(a2 + 32) = v5;
  v6 = *(v3 + 5);
  *(a2 + 48) = v3[48];
  *(a2 + 40) = v6;
  *(a2 + 49) = 0;
  *(a2 + 52) = 0;
  return result;
}

void std::__function::__func<HALS_IOContext_Manager_Impl::device_arrived(unsigned int,unsigned int,applesauce::CF::StringRef,std::vector<HALS_IOContext_Manager_Impl::Stream_Info> const&,BOOL)::$_0,std::allocator<HALS_IOContext_Manager_Impl::device_arrived(unsigned int,unsigned int,applesauce::CF::StringRef,std::vector<HALS_IOContext_Manager_Impl::Stream_Info> const&,BOOL)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F598CC28;
  v1 = a1[4];
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<HALS_IOContext_Manager_Impl::device_arrived(unsigned int,unsigned int,applesauce::CF::StringRef,std::vector<HALS_IOContext_Manager_Impl::Stream_Info> const&,BOOL)::$_0,std::allocator<HALS_IOContext_Manager_Impl::device_arrived(unsigned int,unsigned int,applesauce::CF::StringRef,std::vector<HALS_IOContext_Manager_Impl::Stream_Info> const&,BOOL)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F598CC28;
  v2 = a1[4];
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t std::__function::__func<HALS_IOContext_Manager_Impl::device_died(unsigned int,unsigned int,applesauce::CF::StringRef)::$_0,std::allocator<HALS_IOContext_Manager_Impl::device_died(unsigned int,unsigned int,applesauce::CF::StringRef)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN27HALS_IOContext_Manager_Impl11device_diedEjjN10applesauce2CF9StringRefEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<HALS_IOContext_Manager_Impl::device_died(unsigned int,unsigned int,applesauce::CF::StringRef)::$_0,std::allocator<HALS_IOContext_Manager_Impl::device_died(unsigned int,unsigned int,applesauce::CF::StringRef)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  HALS_IOContext_Manager_Impl::Object_Map::remove_object((v2 + 16), *(a1 + 16), *(a1 + 20));
  v3 = *(v2 + 96);
  v4 = *(a1 + 16);

  AMCP::Core::Broker::destroy_core(v3, v4);
}

__n128 std::__function::__func<HALS_IOContext_Manager_Impl::device_died(unsigned int,unsigned int,applesauce::CF::StringRef)::$_0,std::allocator<HALS_IOContext_Manager_Impl::device_died(unsigned int,unsigned int,applesauce::CF::StringRef)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F598CCA8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void HALS_IOContext_Manager_Impl::create_engine_for_device(int8x8_t *this, const HALS_IODevice *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v24 = 0;
  v25 = &v24;
  v26 = 0x3802000000;
  v27 = __Block_byref_object_copy__19089;
  v29 = 0;
  v30 = 0;
  v28 = __Block_byref_object_dispose__19090;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 0x40000000;
  v23[2] = ___ZN27HALS_IOContext_Manager_Impl24create_engine_for_deviceEPK13HALS_IODevice_block_invoke;
  v23[3] = &unk_1E86787D0;
  v23[4] = &v24;
  v23[5] = a2;
  v4 = (*(*a2 + 64))(a2);
  HALB_CommandGate::ExecuteCommand(v4, v23);
  v5 = v25[5];
  if (!v5)
  {
    goto LABEL_31;
  }

  v6 = *(a2 + 4);
  v7 = this[17];
  if (!*&v7)
  {
    goto LABEL_19;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = *(a2 + 4);
    if (*&v7 <= v6)
    {
      v9 = v6 % v7.i32[0];
    }
  }

  else
  {
    v9 = (v7.i32[0] - 1) & v6;
  }

  v10 = *(*&this[16] + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v6)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v12 >= *&v7)
      {
        v12 %= *&v7;
      }
    }

    else
    {
      v12 &= *&v7 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_19;
    }

LABEL_18:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_19;
    }
  }

  if (*(v11 + 4) != v6)
  {
    goto LABEL_18;
  }

  v13 = v25[6];
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v14 = v11[4];
  v11[3] = v5;
  v11[4] = v13;
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  v15 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v15 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v14);
  }

  v17 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v16 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    v18 = *v17;
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  else
  {
    v18 = *v17;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v20 = (*(*a2 + 224))(a2);
    v21 = *(a2 + 4);
    v22 = v25[5];
    *buf = 136316162;
    v32 = "HALS_IOContext_Manager_Impl.cpp";
    v33 = 1024;
    v34 = 559;
    v35 = 2080;
    v36 = v20;
    v37 = 1024;
    v38 = v21;
    v39 = 2048;
    v40 = v22;
    _os_log_debug_impl(&dword_1DE1F9000, v18, OS_LOG_TYPE_DEBUG, "%32s:%-5d create_engine_for_device: %s (%u)  %p", buf, 0x2Cu);
  }

LABEL_31:
  _Block_object_dispose(&v24, 8);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  v19 = *MEMORY[0x1E69E9840];
}

void sub_1DE6E9DC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,void *>>>::operator()[abi:ne200100](1, v22);
  _Block_object_dispose(&a16, 8);
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__19089(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  return result;
}

void __Block_byref_object_dispose__19090(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void ___ZN27HALS_IOContext_Manager_Impl24create_engine_for_deviceEPK13HALS_IODevice_block_invoke(uint64_t a1)
{
  (*(**(a1 + 40) + 264))(&v5);
  v2 = *(*(a1 + 32) + 8);
  v3 = v5;
  v5 = 0uLL;
  v4 = *(v2 + 48);
  *(v2 + 40) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    if (*(&v5 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v5 + 1));
    }
  }
}

uint64_t **HALS_IOContext_Manager_Impl::get_hal_object_id_for_device_uid(uint64_t **result, const void **a2)
{
  if (result)
  {
    v3 = result;
    while (1)
    {
      v4 = v3[3];
      v5 = v3[4];
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v4 + 16))(&cf);
      if (!cf)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      applesauce::CF::convert_to<std::string,0>(__p, cf);
      v6 = v16;
      if ((v16 & 0x80u) == 0)
      {
        v7 = v16;
      }

      else
      {
        v7 = __p[1];
      }

      v8 = *(a2 + 23);
      v9 = v8;
      if (v8 < 0)
      {
        v8 = a2[1];
      }

      if (v7 != v8)
      {
        break;
      }

      if ((v16 & 0x80u) == 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = __p[0];
      }

      if (v9 >= 0)
      {
        v11 = a2;
      }

      else
      {
        v11 = *a2;
      }

      v12 = memcmp(v10, v11, v7) == 0;
      if (v6 < 0)
      {
        goto LABEL_21;
      }

LABEL_22:
      if (cf)
      {
        CFRelease(cf);
      }

      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }

      if (v12)
      {
        return *(v3 + 4);
      }

      v3 = *v3;
      if (!v3)
      {
        return 0;
      }
    }

    v12 = 0;
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

LABEL_21:
    operator delete(__p[0]);
    goto LABEL_22;
  }

  return result;
}

void sub_1DE6EA020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  applesauce::CF::StringRef::~StringRef(&a9);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  _Unwind_Resume(a1);
}

void HALS_IOContext_Manager_Impl::find_contexts_and_devices_with_timebases(HALS_IOContext_Manager_Impl *this, const AMCP::Graph::Timebase_Set *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  __p = 0;
  v6 = 0;
  v7 = 0;
  v2 = 0;
  v3 = 0;
  v4 = 0;
  v8 = 0;
  operator new();
}

void sub_1DE6EA374(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  __p = &a11;
  std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (a14)
  {
    a15 = a14;
    operator delete(a14);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<HALS_IOContext_Manager_Impl::find_contexts_and_devices_with_timebases(AMCP::Graph::Timebase_Set const&)::$_0,std::allocator<HALS_IOContext_Manager_Impl::find_contexts_and_devices_with_timebases(AMCP::Graph::Timebase_Set const&)::$_0>,void ()(std::shared_ptr<AMCP::Graph::Timebase>)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN27HALS_IOContext_Manager_Impl40find_contexts_and_devices_with_timebasesERKN4AMCP5Graph12Timebase_SetEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<HALS_IOContext_Manager_Impl::find_contexts_and_devices_with_timebases(AMCP::Graph::Timebase_Set const&)::$_0,std::allocator<HALS_IOContext_Manager_Impl::find_contexts_and_devices_with_timebases(AMCP::Graph::Timebase_Set const&)::$_0>,void ()(std::shared_ptr<AMCP::Graph::Timebase>)>::operator()(uint64_t a1, void *a2)
{
  v4 = a2[1];
  *&v8 = *a2;
  v3 = v8;
  *(&v8 + 1) = v4;
  *a2 = 0;
  a2[1] = 0;
  v5 = *(a1 + 8);
  (*(*v3 + 24))(__p);
  v6 = v11;
  v7 = v11;
  if ((v11 & 0x80u) != 0)
  {
    v6 = __p[1];
  }

  if (v6)
  {
    hal_object_id_for_device_uid = HALS_IOContext_Manager_Impl::get_hal_object_id_for_device_uid(*(v5 + 144), __p);
    std::vector<unsigned int>::push_back[abi:ne200100](*(a1 + 16), &hal_object_id_for_device_uid);
    std::vector<std::shared_ptr<AHAL_DSP::IAudioStream>>::push_back[abi:ne200100](*(a1 + 24), &v8);
    v7 = v11;
  }

  if ((v7 & 0x80) != 0)
  {
    operator delete(__p[0]);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1DE6EA514(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<HALS_IOContext_Manager_Impl::find_contexts_and_devices_with_timebases(AMCP::Graph::Timebase_Set const&)::$_0,std::allocator<HALS_IOContext_Manager_Impl::find_contexts_and_devices_with_timebases(AMCP::Graph::Timebase_Set const&)::$_0>,void ()(std::shared_ptr<AMCP::Graph::Timebase>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F598CEF8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void ___ZN27HALS_IOContext_Manager_Impl22hog_mode_owner_changedEP13HALS_IODevicei_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  while (v1 != v2)
  {
    v3 = HALS_ObjectMap::CopyObjectByObjectID(*v1);
    v5 = v3;
    if (v3)
    {
      v6 = HALS_ObjectMap::CopyObjectByObjectID(**(v3 + 72));
      v8 = v6;
      if (v6)
      {
        if (*(v6 + 240))
        {
          (*(**(v5 + 104) + 536))(*(v5 + 104), *(v5 + 144));
        }
      }

      HALS_ObjectMap::ReleaseObject(v8, v7);
    }

    HALS_ObjectMap::ReleaseObject(v5, v4);
    ++v1;
  }
}

void sub_1DE6EA6A0(_Unwind_Exception *a1, HALS_Object *a2)
{
  HALS_ObjectMap::ReleaseObject(v3, a2);
  HALS_ObjectMap::ReleaseObject(v2, v5);
  _Unwind_Resume(a1);
}

void __destroy_helper_block_e8_32c39_ZTSNSt3__16vectorIjNS_9allocatorIjEEEE(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }
}

uint64_t __copy_helper_block_e8_32c39_ZTSNSt3__16vectorIjNS_9allocatorIjEEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v2 = a1 + 32;
  *(v2 + 16) = 0;
  return std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v2, *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 2);
}

void AMCP::Node::~Node(AMCP::Node *this)
{
  *this = &unk_1F5964268;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5964268;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

{
  *this = &unk_1F5964268;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

AMCP::Node *AMCP::Node::Node(AMCP::Node *this, AMCP::System_Context *a2, unsigned int a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = AMCP::Object::Object(this, a2, a3);
  *v4 = &unk_1F598CF88;
  v5 = AMCP::Object::constructed_correct_class(v4, 0x616E6F64);
  if ((v5 & 1) == 0)
  {
    v8 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v8 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v5);
    }

    v10 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v9 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      v11 = *v10;
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    else
    {
      v11 = *v10;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315650;
      v13 = "Node.cpp";
      v14 = 1024;
      v15 = 29;
      v16 = 2080;
      v17 = "constructed_correct_class(k_class_id_node)";
      _os_log_error_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s the core is not of the proper class", &v12, 0x1Cu);
    }

    abort();
  }

  v6 = *MEMORY[0x1E69E9840];
  return this;
}

void sub_1DE6EA900(_Unwind_Exception *a1)
{
  *v1 = &unk_1F5964268;
  v2 = v1[3];
  if (v2)
  {
    v3 = a1;
    std::__shared_weak_count::__release_weak(v2);
    a1 = v3;
  }

  _Unwind_Resume(a1);
}

uint64_t AMCP::Node::Node(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = *(**a2 + 16);
  *buf = &unk_1F598D408;
  *&buf[8] = a3;
  *&v19[4] = buf;
  AMCP::Core::Broker::fetch_first_core_if (v16, v5, buf);
  *a1 = &unk_1F5964268;
  v6 = v16[0];
  if (v16[0])
  {
    v7 = *v16[0];
  }

  else
  {
    v7 = 0;
  }

  *(a1 + 8) = v7;
  v8 = v16[1];
  *(a1 + 16) = v6;
  *(a1 + 24) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *(a1 + 32) = a2;
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  else
  {
    *(a1 + 32) = a2;
  }

  std::__function::__value_func<BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::~__value_func[abi:ne200100](buf);
  *a1 = &unk_1F598CF88;
  v9 = AMCP::Object::constructed_correct_class(a1, 0x616E6F64);
  if ((v9 & 1) == 0)
  {
    v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v12 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v9);
    }

    v14 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v13 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      v15 = *v14;
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    else
    {
      v15 = *v14;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Node.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 45;
      v18 = 2080;
      *v19 = "constructed_correct_class(k_class_id_node)";
      _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s the core is not of the proper class", buf, 0x1Cu);
    }

    abort();
  }

  v10 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1DE6EAB2C(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[3];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<AMCP::Node::Node(AMCP::System_Context &,applesauce::CF::StringRef)::$_0,std::allocator<AMCP::Node::Node(AMCP::System_Context &,applesauce::CF::StringRef)::$_0>,BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4NodeC1ERNS_14System_ContextEN10applesauce2CF9StringRefEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL std::__function::__func<AMCP::Node::Node(AMCP::System_Context &,applesauce::CF::StringRef)::$_0,std::allocator<AMCP::Node::Node(AMCP::System_Context &,applesauce::CF::StringRef)::$_0>,BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::operator()(uint64_t a1, AMCP::Core::Core **a2)
{
  simple_required = AMCP::Core::Core::get_simple_required_property<1650682995u>(*a2);
  if (!AMCP::is_base_of(0x616E6F64, simple_required))
  {
    return 0;
  }

  AMCP::Core::Core::get_simple_required_property<1853188452u>(&cf, *a2);
  v5 = applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(**(a1 + 8), &cf) == kCFCompareEqualTo;
  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

uint64_t std::__function::__func<AMCP::Node::Node(AMCP::System_Context &,applesauce::CF::StringRef)::$_0,std::allocator<AMCP::Node::Node(AMCP::System_Context &,applesauce::CF::StringRef)::$_0>,BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F598D408;
  a2[1] = v2;
  return result;
}

void AMCP::Node::get_client_io_handler(AMCP::Node *this@<X0>, uint64_t a2@<X8>)
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = *(this + 3);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 2);
    if (v7)
    {
      v27 = 0x676C6F626E64696FLL;
      v28 = 0;
      operation = AMCP::Core::Core::find_operation(&v29, v7, &v27);
      v9 = v29;
      if (!v29)
      {
        v19 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v19 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(operation);
        }

        v21 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v20 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v20)
        {
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
          v22 = *v21;
          std::__shared_weak_count::__release_shared[abi:ne200100](v20);
        }

        else
        {
          v22 = *v21;
        }

        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "Core.h";
          v42 = 1024;
          v43 = 202;
          _os_log_error_impl(&dword_1DE1F9000, v22, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v40);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("Operation does not have requested function", &v32);
        std::runtime_error::runtime_error(&v33, &v32);
        std::runtime_error::runtime_error(&v34, &v33);
        v36 = 0;
        v37 = 0;
        v38 = 0;
        v39 = -1;
        v34.__vftable = &unk_1F5992170;
        v35 = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v34);
        v44 = "Return_Type AMCP::Core::Core::call_operation_function(const Address &, Argument_Types...) const [Return_Type = std::function<void (unsigned int, const AMCP::Proc_Cycle_Info &, unsigned long, AMCP::Proc_Stream *, unsigned long, AMCP::Proc_Stream *)>, Argument_Types = <>]";
        v45 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Core.h";
        v46 = 202;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v31);
      }

      v10 = AMCP::Implementation::get_type_marker<std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> ()(void)>>();
      v11 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v9, v10);
      if (!v11)
      {
        v23 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v23 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(0);
        }

        v25 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v24 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v24)
        {
          atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
          v26 = *v25;
          std::__shared_weak_count::__release_shared[abi:ne200100](v24);
        }

        else
        {
          v26 = *v25;
        }

        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "Operation.h";
          v42 = 1024;
          v43 = 154;
          _os_log_error_impl(&dword_1DE1F9000, v26, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v40);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("Operation does not have requested function", &v32);
        std::runtime_error::runtime_error(&v33, &v32);
        std::runtime_error::runtime_error(&v34, &v33);
        v36 = 0;
        v37 = 0;
        v38 = 0;
        v39 = -1;
        v34.__vftable = &unk_1F5992170;
        v35 = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v34);
        v44 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = std::function<void (unsigned int, const AMCP::Proc_Cycle_Info &, unsigned long, AMCP::Proc_Stream *, unsigned long, AMCP::Proc_Stream *)>, Argument_Types = <>]";
        v45 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
        v46 = 154;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v31);
      }

      v12 = v11;
      if (!*(v11 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> ()(void)>>(), (v11 = (*(v12 + 7))(4, v12 + 24, 0, buf)) == 0))
      {
        v15 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v15 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v11);
        }

        v17 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v16 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
          v18 = *v17;
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        }

        else
        {
          v18 = *v17;
        }

        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "Operation.h";
          v42 = 1024;
          v43 = 161;
          _os_log_error_impl(&dword_1DE1F9000, v18, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v40);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("Invalid cast", &v32);
        std::runtime_error::runtime_error(&v33, &v32);
        std::runtime_error::runtime_error(&v34, &v33);
        v36 = 0;
        v37 = 0;
        v38 = 0;
        v39 = -1;
        v34.__vftable = &unk_1F5992170;
        v35 = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v34);
        v44 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = std::function<void (unsigned int, const AMCP::Proc_Cycle_Info &, unsigned long, AMCP::Proc_Stream *, unsigned long, AMCP::Proc_Stream *)>, Argument_Types = <>]";
        v45 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
        v46 = 161;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v31);
      }

      v13 = *(v11 + 3);
      if (!v13)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v13 + 48))(v13);
      if (v30)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v30);
      }
    }

    else
    {
      *(a2 + 24) = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    *(a2 + 24) = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
}

void sub_1DE6EB3D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, std::runtime_error a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v30 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a27);
  std::runtime_error::~runtime_error(&a26);
  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (v29)
  {
    __cxa_free_exception(v28);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v30 - 129));
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  _Unwind_Resume(a1);
}

uint64_t AMCP::Node::set_client_io_handler(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 24);
  if (v3 && (v5 = std::__shared_weak_count::lock(v3)) != 0)
  {
    v6 = v5;
    v7 = *(a1 + 16);
    if (v7)
    {
      v11 = 0x676C6F626E64696FLL;
      v12 = 0;
      std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::__value_func[abi:ne200100](v13, a2);
      AMCP::Core::Core::call_operation_function<void,std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>>(v7, &v11, v13);
      std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__value_func[abi:ne200100](v13);
      v8 = 1;
    }

    else
    {
      v8 = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

void sub_1DE6EB5A8(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DE6EB5B0);
  }

  __clang_call_terminate(a1);
}

void AMCP::Node::get_io_overload_handler(AMCP::Node *this@<X0>, AMCP::Log::AMCP_Scope_Registry *a2@<X8>)
{
  v4 = *(this + 3);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 2);
    if (v7)
    {
      v8 = 0x676C6F626F766572;
      v9 = 0;
      AMCP::Core::Core::call_operation_function<std::function<void ()>>(a2, v7, &v8);
    }

    else
    {
      *(a2 + 3) = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    *(a2 + 3) = 0;
  }
}

void AMCP::Core::Core::call_operation_function<std::function<void ()(unsigned int)>>(AMCP::Log::AMCP_Scope_Registry *a1, int8x8_t *a2, unsigned int *a3)
{
  v48 = *MEMORY[0x1E69E9840];
  if (*a3 == 707406378 || a3[1] == 707406378 || a3[2] == -1)
  {
    v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v12 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v14 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v13 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      v15 = *v14;
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    else
    {
      v15 = *v14;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Core.h";
      v41 = 1024;
      v42 = 198;
      v43 = 2080;
      v44 = "!in_address.has_wildcards()";
      _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s ", buf, 0x1Cu);
    }

    abort();
  }

  operation = AMCP::Core::Core::find_operation(&v28, a2, a3);
  v6 = v28;
  if (!v28)
  {
    v20 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v20 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(operation);
    }

    v22 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v21 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      v23 = *v22;
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }

    else
    {
      v23 = *v22;
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Core.h";
      v41 = 1024;
      v42 = 202;
      _os_log_error_impl(&dword_1DE1F9000, v23, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v39);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Operation does not have requested function", &v31);
    std::runtime_error::runtime_error(&v32, &v31);
    std::runtime_error::runtime_error(&v33, &v32);
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = -1;
    v33.__vftable = &unk_1F5992170;
    v34 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v33);
    v45 = "Return_Type AMCP::Core::Core::call_operation_function(const Address &, Argument_Types...) const [Return_Type = std::function<void >, Argument_Types = <>]";
    v46 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Core.h";
    v47 = 202;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v30);
  }

  v7 = AMCP::Implementation::get_type_marker<std::function<std::function<void ()> ()(void)>>();
  v8 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v6, v7);
  if (!v8)
  {
    v24 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v24 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
    }

    v26 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v25 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      v27 = *v26;
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    }

    else
    {
      v27 = *v26;
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v41 = 1024;
      v42 = 154;
      _os_log_error_impl(&dword_1DE1F9000, v27, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v39);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Operation does not have requested function", &v31);
    std::runtime_error::runtime_error(&v32, &v31);
    std::runtime_error::runtime_error(&v33, &v32);
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = -1;
    v33.__vftable = &unk_1F5992170;
    v34 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v33);
    v45 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = std::function<void >, Argument_Types = <>]";
    v46 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v47 = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v30);
  }

  v9 = v8;
  if (!*(v8 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<std::function<void ()> ()(void)>>(), (v8 = (*(v9 + 7))(4, v9 + 24, 0, buf)) == 0))
  {
    v16 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v16 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v8);
    }

    v18 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v17 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      v19 = *v18;
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    else
    {
      v19 = *v18;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v41 = 1024;
      v42 = 161;
      _os_log_error_impl(&dword_1DE1F9000, v19, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v39);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Invalid cast", &v31);
    std::runtime_error::runtime_error(&v32, &v31);
    std::runtime_error::runtime_error(&v33, &v32);
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = -1;
    v33.__vftable = &unk_1F5992170;
    v34 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v33);
    v45 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = std::function<void >, Argument_Types = <>]";
    v46 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v47 = 161;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v30);
  }

  v10 = *(v8 + 3);
  if (!v10)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v10 + 48))(v10);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void sub_1DE6EBDD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::runtime_error a24, char a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a11)
  {
    operator delete(a11);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v27 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a25);
  std::runtime_error::~runtime_error(&a24);
  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (v26)
  {
    __cxa_free_exception(v25);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v27 - 129));
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

uint64_t AMCP::Node::set_io_overload_handler(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 24);
  if (v3 && (v5 = std::__shared_weak_count::lock(v3)) != 0)
  {
    v6 = v5;
    v7 = *(a1 + 16);
    if (v7)
    {
      v11 = 0x676C6F626F766572;
      v12 = 0;
      std::__function::__value_func<void ()>::__value_func[abi:ne200100](v13, a2);
      AMCP::Core::Core::call_operation_function<void,std::function<void ()>>(v7, &v11, v13);
      std::__function::__value_func<void ()>::~__value_func[abi:ne200100](v13);
      v8 = 1;
    }

    else
    {
      v8 = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

void sub_1DE6EBF9C(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DE6EBFA4);
  }

  __clang_call_terminate(a1);
}

void AMCP::Node::get_required_input_samples_for_output_samples_handler(AMCP::Node *this@<X0>, uint64_t a2@<X8>)
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = *(this + 3);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 2);
    if (v7)
    {
      v27 = 0x676C6F626973666FLL;
      v28 = 0;
      operation = AMCP::Core::Core::find_operation(&v29, v7, &v27);
      v9 = v29;
      if (!v29)
      {
        v19 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v19 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(operation);
        }

        v21 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v20 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v20)
        {
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
          v22 = *v21;
          std::__shared_weak_count::__release_shared[abi:ne200100](v20);
        }

        else
        {
          v22 = *v21;
        }

        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "Core.h";
          v42 = 1024;
          v43 = 202;
          _os_log_error_impl(&dword_1DE1F9000, v22, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v40);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("Operation does not have requested function", &v32);
        std::runtime_error::runtime_error(&v33, &v32);
        std::runtime_error::runtime_error(&v34, &v33);
        v36 = 0;
        v37 = 0;
        v38 = 0;
        v39 = -1;
        v34.__vftable = &unk_1F5992170;
        v35 = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v34);
        v44 = "Return_Type AMCP::Core::Core::call_operation_function(const Address &, Argument_Types...) const [Return_Type = std::function<unsigned long long (unsigned long long)>, Argument_Types = <>]";
        v45 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Core.h";
        v46 = 202;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v31);
      }

      v10 = AMCP::Implementation::get_type_marker<std::function<std::function<unsigned long long ()(unsigned long long)> ()(void)>>();
      v11 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v9, v10);
      if (!v11)
      {
        v23 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v23 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(0);
        }

        v25 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v24 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v24)
        {
          atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
          v26 = *v25;
          std::__shared_weak_count::__release_shared[abi:ne200100](v24);
        }

        else
        {
          v26 = *v25;
        }

        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "Operation.h";
          v42 = 1024;
          v43 = 154;
          _os_log_error_impl(&dword_1DE1F9000, v26, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v40);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("Operation does not have requested function", &v32);
        std::runtime_error::runtime_error(&v33, &v32);
        std::runtime_error::runtime_error(&v34, &v33);
        v36 = 0;
        v37 = 0;
        v38 = 0;
        v39 = -1;
        v34.__vftable = &unk_1F5992170;
        v35 = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v34);
        v44 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = std::function<unsigned long long (unsigned long long)>, Argument_Types = <>]";
        v45 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
        v46 = 154;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v31);
      }

      v12 = v11;
      if (!*(v11 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<std::function<unsigned long long ()(unsigned long long)> ()(void)>>(), (v11 = (*(v12 + 7))(4, v12 + 24, 0, buf)) == 0))
      {
        v15 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v15 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v11);
        }

        v17 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v16 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
          v18 = *v17;
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        }

        else
        {
          v18 = *v17;
        }

        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "Operation.h";
          v42 = 1024;
          v43 = 161;
          _os_log_error_impl(&dword_1DE1F9000, v18, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v40);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("Invalid cast", &v32);
        std::runtime_error::runtime_error(&v33, &v32);
        std::runtime_error::runtime_error(&v34, &v33);
        v36 = 0;
        v37 = 0;
        v38 = 0;
        v39 = -1;
        v34.__vftable = &unk_1F5992170;
        v35 = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v34);
        v44 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = std::function<unsigned long long (unsigned long long)>, Argument_Types = <>]";
        v45 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
        v46 = 161;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v31);
      }

      v13 = *(v11 + 3);
      if (!v13)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v13 + 48))(v13);
      if (v30)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v30);
      }
    }

    else
    {
      *(a2 + 24) = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    *(a2 + 24) = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
}

void sub_1DE6EC688(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, std::runtime_error a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v30 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a27);
  std::runtime_error::~runtime_error(&a26);
  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (v29)
  {
    __cxa_free_exception(v28);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v30 - 129));
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  _Unwind_Resume(a1);
}

uint64_t AMCP::Node::set_required_input_samples_for_output_samples_handler(uint64_t a1, uint64_t a2)
{
  v52 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 24);
  if (v3 && (v5 = std::__shared_weak_count::lock(v3)) != 0)
  {
    v6 = v5;
    v7 = *(a1 + 16);
    if (v7)
    {
      v30 = 0x676C6F626973666FLL;
      LODWORD(v31) = 0;
      std::__function::__value_func<unsigned long long ()(unsigned long long)>::__value_func[abi:ne200100](v44, a2);
      operation = AMCP::Core::Core::find_operation(&v32, v7, &v30);
      v9 = v32;
      if (!v32)
      {
        v20 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v20 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(operation);
        }

        v22 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v21 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v21)
        {
          atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
          v23 = *v22;
          std::__shared_weak_count::__release_shared[abi:ne200100](v21);
        }

        else
        {
          v23 = *v22;
        }

        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "Core.h";
          v47 = 1024;
          v48 = 202;
          _os_log_error_impl(&dword_1DE1F9000, v23, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v36);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("Operation does not have requested function", &v45, v30, v31);
        std::runtime_error::runtime_error(&v34, &v45);
        std::runtime_error::runtime_error(&v37, &v34);
        v39 = 0;
        v40 = 0;
        v41 = 0;
        v42 = -1;
        v37.__vftable = &unk_1F5992170;
        v38 = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v37);
        v49 = "Return_Type AMCP::Core::Core::call_operation_function(const Address &, Argument_Types...) const [Return_Type = void, Argument_Types = <std::function<unsigned long long (unsigned long long)>>]";
        v50 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Core.h";
        v51 = 202;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v35);
      }

      std::__function::__value_func<unsigned long long ()(unsigned long long)>::__value_func[abi:ne200100](&v45, v44);
      v10 = AMCP::Implementation::get_type_marker<std::function<void ()(std::function<unsigned long long ()(unsigned long long)>)>>();
      v11 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v9, v10);
      if (!v11)
      {
        v24 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v24 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(0);
        }

        v26 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v25 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v25)
        {
          atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
          v27 = *v26;
          std::__shared_weak_count::__release_shared[abi:ne200100](v25);
        }

        else
        {
          v27 = *v26;
        }

        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "Operation.h";
          v47 = 1024;
          v48 = 154;
          _os_log_error_impl(&dword_1DE1F9000, v27, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v43);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("Operation does not have requested function", &v35, v30, v31);
        std::runtime_error::runtime_error(&v36, &v35);
        std::runtime_error::runtime_error(&v37, &v36);
        v39 = 0;
        v40 = 0;
        v41 = 0;
        v42 = -1;
        v37.__vftable = &unk_1F5992170;
        v38 = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v37);
        v49 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = void, Argument_Types = <std::function<unsigned long long (unsigned long long)>>]";
        v50 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
        v51 = 154;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v34);
      }

      v12 = v11;
      if (!*(v11 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<void ()(std::function<unsigned long long ()(unsigned long long)>)>>(), v11 = (*(v12 + 7))(4, v12 + 24, 0, buf), (v13 = v11) == 0))
      {
        v16 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v16 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v11);
        }

        v18 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v17 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v17)
        {
          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
          v19 = *v18;
          std::__shared_weak_count::__release_shared[abi:ne200100](v17);
        }

        else
        {
          v19 = *v18;
        }

        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "Operation.h";
          v47 = 1024;
          v48 = 161;
          _os_log_error_impl(&dword_1DE1F9000, v19, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v43);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("Invalid cast", &v35, v30, v31);
        std::runtime_error::runtime_error(&v36, &v35);
        std::runtime_error::runtime_error(&v37, &v36);
        v39 = 0;
        v40 = 0;
        v41 = 0;
        v42 = -1;
        v37.__vftable = &unk_1F5992170;
        v38 = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v37);
        v49 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = void, Argument_Types = <std::function<unsigned long long (unsigned long long)>>]";
        v50 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
        v51 = 161;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v34);
      }

      std::__function::__value_func<unsigned long long ()(unsigned long long)>::__value_func[abi:ne200100](buf, &v45);
      v14 = *(v13 + 3);
      if (!v14)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v14 + 48))(v14, buf);
      std::__function::__value_func<unsigned long long ()(unsigned long long)>::~__value_func[abi:ne200100](buf);
      std::__function::__value_func<unsigned long long ()(unsigned long long)>::~__value_func[abi:ne200100](&v45);
      if (v33)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v33);
      }

      std::__function::__value_func<unsigned long long ()(unsigned long long)>::~__value_func[abi:ne200100](v44);
      v15 = 1;
    }

    else
    {
      v15 = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    v15 = 0;
  }

  v28 = *MEMORY[0x1E69E9840];
  return v15;
}

void AMCP::Node::get_expected_output_samples_for_input_samples_handler(AMCP::Node *this@<X0>, uint64_t a2@<X8>)
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = *(this + 3);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 2);
    if (v7)
    {
      v27 = 0x676C6F626F736669;
      v28 = 0;
      operation = AMCP::Core::Core::find_operation(&v29, v7, &v27);
      v9 = v29;
      if (!v29)
      {
        v19 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v19 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(operation);
        }

        v21 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v20 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v20)
        {
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
          v22 = *v21;
          std::__shared_weak_count::__release_shared[abi:ne200100](v20);
        }

        else
        {
          v22 = *v21;
        }

        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "Core.h";
          v42 = 1024;
          v43 = 202;
          _os_log_error_impl(&dword_1DE1F9000, v22, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v40);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("Operation does not have requested function", &v32);
        std::runtime_error::runtime_error(&v33, &v32);
        std::runtime_error::runtime_error(&v34, &v33);
        v36 = 0;
        v37 = 0;
        v38 = 0;
        v39 = -1;
        v34.__vftable = &unk_1F5992170;
        v35 = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v34);
        v44 = "Return_Type AMCP::Core::Core::call_operation_function(const Address &, Argument_Types...) const [Return_Type = std::function<unsigned long long (unsigned long long, unsigned long long &)>, Argument_Types = <>]";
        v45 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Core.h";
        v46 = 202;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v31);
      }

      v10 = AMCP::Implementation::get_type_marker<std::function<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> ()(void)>>();
      v11 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v9, v10);
      if (!v11)
      {
        v23 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v23 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(0);
        }

        v25 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v24 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v24)
        {
          atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
          v26 = *v25;
          std::__shared_weak_count::__release_shared[abi:ne200100](v24);
        }

        else
        {
          v26 = *v25;
        }

        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "Operation.h";
          v42 = 1024;
          v43 = 154;
          _os_log_error_impl(&dword_1DE1F9000, v26, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v40);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("Operation does not have requested function", &v32);
        std::runtime_error::runtime_error(&v33, &v32);
        std::runtime_error::runtime_error(&v34, &v33);
        v36 = 0;
        v37 = 0;
        v38 = 0;
        v39 = -1;
        v34.__vftable = &unk_1F5992170;
        v35 = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v34);
        v44 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = std::function<unsigned long long (unsigned long long, unsigned long long &)>, Argument_Types = <>]";
        v45 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
        v46 = 154;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v31);
      }

      v12 = v11;
      if (!*(v11 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> ()(void)>>(), (v11 = (*(v12 + 7))(4, v12 + 24, 0, buf)) == 0))
      {
        v15 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v15 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v11);
        }

        v17 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v16 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
          v18 = *v17;
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        }

        else
        {
          v18 = *v17;
        }

        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "Operation.h";
          v42 = 1024;
          v43 = 161;
          _os_log_error_impl(&dword_1DE1F9000, v18, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v40);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("Invalid cast", &v32);
        std::runtime_error::runtime_error(&v33, &v32);
        std::runtime_error::runtime_error(&v34, &v33);
        v36 = 0;
        v37 = 0;
        v38 = 0;
        v39 = -1;
        v34.__vftable = &unk_1F5992170;
        v35 = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v34);
        v44 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = std::function<unsigned long long (unsigned long long, unsigned long long &)>, Argument_Types = <>]";
        v45 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
        v46 = 161;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v31);
      }

      v13 = *(v11 + 3);
      if (!v13)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v13 + 48))(v13);
      if (v30)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v30);
      }
    }

    else
    {
      *(a2 + 24) = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    *(a2 + 24) = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
}

void sub_1DE6ED788(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, std::runtime_error a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v30 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a27);
  std::runtime_error::~runtime_error(&a26);
  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (v29)
  {
    __cxa_free_exception(v28);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v30 - 129));
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  _Unwind_Resume(a1);
}

uint64_t AMCP::Node::set_expected_output_samples_for_input_samples_handler(uint64_t a1, uint64_t a2)
{
  v52 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 24);
  if (v3 && (v5 = std::__shared_weak_count::lock(v3)) != 0)
  {
    v6 = v5;
    v7 = *(a1 + 16);
    if (v7)
    {
      v30 = 0x676C6F626F736669;
      LODWORD(v31) = 0;
      std::__function::__value_func<unsigned long long ()(unsigned long long,unsigned long long &)>::__value_func[abi:ne200100](v44, a2);
      operation = AMCP::Core::Core::find_operation(&v32, v7, &v30);
      v9 = v32;
      if (!v32)
      {
        v20 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v20 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(operation);
        }

        v22 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v21 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v21)
        {
          atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
          v23 = *v22;
          std::__shared_weak_count::__release_shared[abi:ne200100](v21);
        }

        else
        {
          v23 = *v22;
        }

        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "Core.h";
          v47 = 1024;
          v48 = 202;
          _os_log_error_impl(&dword_1DE1F9000, v23, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v36);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("Operation does not have requested function", &v45, v30, v31);
        std::runtime_error::runtime_error(&v34, &v45);
        std::runtime_error::runtime_error(&v37, &v34);
        v39 = 0;
        v40 = 0;
        v41 = 0;
        v42 = -1;
        v37.__vftable = &unk_1F5992170;
        v38 = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v37);
        v49 = "Return_Type AMCP::Core::Core::call_operation_function(const Address &, Argument_Types...) const [Return_Type = void, Argument_Types = <std::function<unsigned long long (unsigned long long, unsigned long long &)>>]";
        v50 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Core.h";
        v51 = 202;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v35);
      }

      std::__function::__value_func<unsigned long long ()(unsigned long long,unsigned long long &)>::__value_func[abi:ne200100](&v45, v44);
      v10 = AMCP::Implementation::get_type_marker<std::function<void ()(std::function<unsigned long long ()(unsigned long long,unsigned long long &)>)>>();
      v11 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v9, v10);
      if (!v11)
      {
        v24 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v24 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(0);
        }

        v26 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v25 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v25)
        {
          atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
          v27 = *v26;
          std::__shared_weak_count::__release_shared[abi:ne200100](v25);
        }

        else
        {
          v27 = *v26;
        }

        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "Operation.h";
          v47 = 1024;
          v48 = 154;
          _os_log_error_impl(&dword_1DE1F9000, v27, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v43);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("Operation does not have requested function", &v35, v30, v31);
        std::runtime_error::runtime_error(&v36, &v35);
        std::runtime_error::runtime_error(&v37, &v36);
        v39 = 0;
        v40 = 0;
        v41 = 0;
        v42 = -1;
        v37.__vftable = &unk_1F5992170;
        v38 = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v37);
        v49 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = void, Argument_Types = <std::function<unsigned long long (unsigned long long, unsigned long long &)>>]";
        v50 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
        v51 = 154;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v34);
      }

      v12 = v11;
      if (!*(v11 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<void ()(std::function<unsigned long long ()(unsigned long long,unsigned long long &)>)>>(), v11 = (*(v12 + 7))(4, v12 + 24, 0, buf), (v13 = v11) == 0))
      {
        v16 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v16 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v11);
        }

        v18 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v17 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v17)
        {
          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
          v19 = *v18;
          std::__shared_weak_count::__release_shared[abi:ne200100](v17);
        }

        else
        {
          v19 = *v18;
        }

        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "Operation.h";
          v47 = 1024;
          v48 = 161;
          _os_log_error_impl(&dword_1DE1F9000, v19, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v43);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("Invalid cast", &v35, v30, v31);
        std::runtime_error::runtime_error(&v36, &v35);
        std::runtime_error::runtime_error(&v37, &v36);
        v39 = 0;
        v40 = 0;
        v41 = 0;
        v42 = -1;
        v37.__vftable = &unk_1F5992170;
        v38 = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v37);
        v49 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = void, Argument_Types = <std::function<unsigned long long (unsigned long long, unsigned long long &)>>]";
        v50 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
        v51 = 161;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v34);
      }

      std::__function::__value_func<unsigned long long ()(unsigned long long,unsigned long long &)>::__value_func[abi:ne200100](buf, &v45);
      v14 = *(v13 + 3);
      if (!v14)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v14 + 48))(v14, buf);
      std::__function::__value_func<unsigned long long ()(unsigned long long,unsigned long long &)>::~__value_func[abi:ne200100](buf);
      std::__function::__value_func<unsigned long long ()(unsigned long long,unsigned long long &)>::~__value_func[abi:ne200100](&v45);
      if (v33)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v33);
      }

      std::__function::__value_func<unsigned long long ()(unsigned long long,unsigned long long &)>::~__value_func[abi:ne200100](v44);
      v15 = 1;
    }

    else
    {
      v15 = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    v15 = 0;
  }

  v28 = *MEMORY[0x1E69E9840];
  return v15;
}

void AMCP::Node::get_register_client_handler(AMCP::Node *this@<X0>, AMCP::Log::AMCP_Scope_Registry *a2@<X8>)
{
  v4 = *(this + 3);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 2);
    if (v7)
    {
      v8 = 0x676C6F627265636CLL;
      v9 = 0;
      AMCP::Core::Core::call_operation_function<std::function<void ()>>(a2, v7, &v8);
    }

    else
    {
      *(a2 + 3) = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    *(a2 + 3) = 0;
  }
}

uint64_t AMCP::Node::set_register_client_handler(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 24);
  if (v3 && (v5 = std::__shared_weak_count::lock(v3)) != 0)
  {
    v6 = v5;
    v7 = *(a1 + 16);
    if (v7)
    {
      v11 = 0x676C6F627265636CLL;
      v12 = 0;
      std::__function::__value_func<void ()>::__value_func[abi:ne200100](v13, a2);
      AMCP::Core::Core::call_operation_function<void,std::function<void ()>>(v7, &v11, v13);
      std::__function::__value_func<void ()>::~__value_func[abi:ne200100](v13);
      v8 = 1;
    }

    else
    {
      v8 = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

void sub_1DE6EE370(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DE6EE378);
  }

  __clang_call_terminate(a1);
}

void AMCP::Node::get_begin_processing_handler(AMCP::Node *this@<X0>, AMCP::Log::AMCP_Scope_Registry *a2@<X8>)
{
  v4 = *(this + 3);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 2);
    if (v7)
    {
      v8 = 0x676C6F626E646270;
      v9 = 0;
      AMCP::Core::Core::call_operation_function<std::function<void ()>>(a2, v7, &v8);
    }

    else
    {
      *(a2 + 3) = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    *(a2 + 3) = 0;
  }
}

uint64_t AMCP::Node::set_begin_processing_handler(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 24);
  if (v3 && (v5 = std::__shared_weak_count::lock(v3)) != 0)
  {
    v6 = v5;
    v7 = *(a1 + 16);
    if (v7)
    {
      v11 = 0x676C6F626E646270;
      v12 = 0;
      std::__function::__value_func<void ()>::__value_func[abi:ne200100](v13, a2);
      AMCP::Core::Core::call_operation_function<void,std::function<void ()>>(v7, &v11, v13);
      std::__function::__value_func<void ()>::~__value_func[abi:ne200100](v13);
      v8 = 1;
    }

    else
    {
      v8 = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

void sub_1DE6EE534(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DE6EE53CLL);
  }

  __clang_call_terminate(a1);
}

void AMCP::Node::get_begin_cycle_handler(AMCP::Node *this@<X0>, AMCP::Log::AMCP_Scope_Registry *a2@<X8>)
{
  v4 = *(this + 3);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 2);
    if (v7)
    {
      v8 = 0x676C6F626E646263;
      v9 = 0;
      AMCP::Core::Core::call_operation_function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>>(a2, v7, &v8);
    }

    else
    {
      *(a2 + 3) = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    *(a2 + 3) = 0;
  }
}

void AMCP::Core::Core::call_operation_function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>>(AMCP::Log::AMCP_Scope_Registry *a1, int8x8_t *a2, unsigned int *a3)
{
  v48 = *MEMORY[0x1E69E9840];
  if (*a3 == 707406378 || a3[1] == 707406378 || a3[2] == -1)
  {
    v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v12 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v14 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v13 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      v15 = *v14;
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    else
    {
      v15 = *v14;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Core.h";
      v41 = 1024;
      v42 = 198;
      v43 = 2080;
      v44 = "!in_address.has_wildcards()";
      _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s ", buf, 0x1Cu);
    }

    abort();
  }

  operation = AMCP::Core::Core::find_operation(&v28, a2, a3);
  v6 = v28;
  if (!v28)
  {
    v20 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v20 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(operation);
    }

    v22 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v21 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      v23 = *v22;
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }

    else
    {
      v23 = *v22;
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Core.h";
      v41 = 1024;
      v42 = 202;
      _os_log_error_impl(&dword_1DE1F9000, v23, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v39);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Operation does not have requested function", &v31);
    std::runtime_error::runtime_error(&v32, &v31);
    std::runtime_error::runtime_error(&v33, &v32);
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = -1;
    v33.__vftable = &unk_1F5992170;
    v34 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v33);
    v45 = "Return_Type AMCP::Core::Core::call_operation_function(const Address &, Argument_Types...) const [Return_Type = std::function<void (unsigned int, const AMCP::Proc_Cycle_Info &)>, Argument_Types = <>]";
    v46 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Core.h";
    v47 = 202;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v30);
  }

  v7 = AMCP::Implementation::get_type_marker<std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> ()(void)>>();
  v8 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v6, v7);
  if (!v8)
  {
    v24 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v24 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
    }

    v26 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v25 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      v27 = *v26;
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    }

    else
    {
      v27 = *v26;
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v41 = 1024;
      v42 = 154;
      _os_log_error_impl(&dword_1DE1F9000, v27, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v39);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Operation does not have requested function", &v31);
    std::runtime_error::runtime_error(&v32, &v31);
    std::runtime_error::runtime_error(&v33, &v32);
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = -1;
    v33.__vftable = &unk_1F5992170;
    v34 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v33);
    v45 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = std::function<void (unsigned int, const AMCP::Proc_Cycle_Info &)>, Argument_Types = <>]";
    v46 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v47 = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v30);
  }

  v9 = v8;
  if (!*(v8 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> ()(void)>>(), (v8 = (*(v9 + 7))(4, v9 + 24, 0, buf)) == 0))
  {
    v16 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v16 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v8);
    }

    v18 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v17 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      v19 = *v18;
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    else
    {
      v19 = *v18;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v41 = 1024;
      v42 = 161;
      _os_log_error_impl(&dword_1DE1F9000, v19, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v39);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Invalid cast", &v31);
    std::runtime_error::runtime_error(&v32, &v31);
    std::runtime_error::runtime_error(&v33, &v32);
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = -1;
    v33.__vftable = &unk_1F5992170;
    v34 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v33);
    v45 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = std::function<void (unsigned int, const AMCP::Proc_Cycle_Info &)>, Argument_Types = <>]";
    v46 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v47 = 161;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v30);
  }

  v10 = *(v8 + 3);
  if (!v10)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v10 + 48))(v10);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void sub_1DE6EED60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::runtime_error a24, char a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a11)
  {
    operator delete(a11);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v27 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a25);
  std::runtime_error::~runtime_error(&a24);
  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (v26)
  {
    __cxa_free_exception(v25);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v27 - 129));
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

uint64_t AMCP::Node::set_begin_cycle_handler(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 24);
  if (v3 && (v5 = std::__shared_weak_count::lock(v3)) != 0)
  {
    v6 = v5;
    v7 = *(a1 + 16);
    if (v7)
    {
      v11 = 0x676C6F626E646263;
      v12 = 0;
      std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::__value_func[abi:ne200100](v13, a2);
      AMCP::Core::Core::call_operation_function<void,std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>>(v7, &v11, v13);
      std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::~__value_func[abi:ne200100](v13);
      v8 = 1;
    }

    else
    {
      v8 = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

void sub_1DE6EEF28(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DE6EEF30);
  }

  __clang_call_terminate(a1);
}

void AMCP::Core::Core::call_operation_function<void,std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>>(AMCP::Address *a1, unsigned int *a2, uint64_t a3)
{
  v51 = *MEMORY[0x1E69E9840];
  if (*a2 == 707406378 || a2[1] == 707406378 || a2[2] == -1)
  {
    v14 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v14 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v16 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v15 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      v17 = *v16;
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    else
    {
      v17 = *v16;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Core.h";
      v44 = 1024;
      v45 = 198;
      v46 = 2080;
      v47 = "!in_address.has_wildcards()";
      _os_log_error_impl(&dword_1DE1F9000, v17, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s ", buf, 0x1Cu);
    }

    abort();
  }

  operation = AMCP::Core::Core::find_operation(&v30, a1, a2);
  v7 = v30;
  if (!v30)
  {
    v22 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v22 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(operation);
    }

    v24 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v23 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      v25 = *v24;
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    else
    {
      v25 = *v24;
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Core.h";
      v44 = 1024;
      v45 = 202;
      _os_log_error_impl(&dword_1DE1F9000, v25, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v41);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Operation does not have requested function", &v33);
    std::runtime_error::runtime_error(&v34, &v33);
    std::runtime_error::runtime_error(&v35, &v34);
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = -1;
    v35.__vftable = &unk_1F5992170;
    v36 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v35);
    v48 = "Return_Type AMCP::Core::Core::call_operation_function(const Address &, Argument_Types...) const [Return_Type = void, Argument_Types = <std::function<void (unsigned int, const AMCP::Proc_Cycle_Info &)>>]";
    v49 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Core.h";
    v50 = 202;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v32);
  }

  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::__value_func[abi:ne200100](v42, a3);
  v8 = AMCP::Implementation::get_type_marker<std::function<void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>)>>();
  v9 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v7, v8);
  if (!v9)
  {
    v26 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v26 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
    }

    v28 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v27 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      v29 = *v28;
      std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    }

    else
    {
      v29 = *v28;
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v44 = 1024;
      v45 = 154;
      _os_log_error_impl(&dword_1DE1F9000, v29, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v41);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Operation does not have requested function", &v33);
    std::runtime_error::runtime_error(&v34, &v33);
    std::runtime_error::runtime_error(&v35, &v34);
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = -1;
    v35.__vftable = &unk_1F5992170;
    v36 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v35);
    v48 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = void, Argument_Types = <std::function<void (unsigned int, const AMCP::Proc_Cycle_Info &)>>]";
    v49 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v50 = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v32);
  }

  v10 = v9;
  if (!*(v9 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>)>>(), v9 = (*(v10 + 7))(4, v10 + 24, 0, buf), (v11 = v9) == 0))
  {
    v18 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v18 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v9);
    }

    v20 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v19 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      v21 = *v20;
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    else
    {
      v21 = *v20;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v44 = 1024;
      v45 = 161;
      _os_log_error_impl(&dword_1DE1F9000, v21, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v41);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Invalid cast", &v33);
    std::runtime_error::runtime_error(&v34, &v33);
    std::runtime_error::runtime_error(&v35, &v34);
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = -1;
    v35.__vftable = &unk_1F5992170;
    v36 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v35);
    v48 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = void, Argument_Types = <std::function<void (unsigned int, const AMCP::Proc_Cycle_Info &)>>]";
    v49 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v50 = 161;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v32);
  }

  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::__value_func[abi:ne200100](buf, v42);
  v12 = *(v11 + 3);
  if (!v12)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v12 + 48))(v12, buf);
  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::~__value_func[abi:ne200100](buf);
  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::~__value_func[abi:ne200100](v42);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void sub_1DE6EF6D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::runtime_error a24, char a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a11)
  {
    operator delete(a11);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v27 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a25);
  std::runtime_error::~runtime_error(&a24);
  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (v26)
  {
    __cxa_free_exception(v25);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v27 - 161));
  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::~__value_func[abi:ne200100](v27 - 160);
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void AMCP::Node::get_end_cycle_handler(AMCP::Node *this@<X0>, AMCP::Log::AMCP_Scope_Registry *a2@<X8>)
{
  v4 = *(this + 3);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 2);
    if (v7)
    {
      v8 = 0x676C6F626E646563;
      v9 = 0;
      AMCP::Core::Core::call_operation_function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>>(a2, v7, &v8);
    }

    else
    {
      *(a2 + 3) = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    *(a2 + 3) = 0;
  }
}

uint64_t AMCP::Node::set_end_cycle_handler(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 24);
  if (v3 && (v5 = std::__shared_weak_count::lock(v3)) != 0)
  {
    v6 = v5;
    v7 = *(a1 + 16);
    if (v7)
    {
      v11 = 0x676C6F626E646563;
      v12 = 0;
      std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::__value_func[abi:ne200100](v13, a2);
      AMCP::Core::Core::call_operation_function<void,std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>>(v7, &v11, v13);
      std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::~__value_func[abi:ne200100](v13);
      v8 = 1;
    }

    else
    {
      v8 = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

void sub_1DE6EFA60(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DE6EFA68);
  }

  __clang_call_terminate(a1);
}

void AMCP::Node::get_end_processing_handler(AMCP::Node *this@<X0>, AMCP::Log::AMCP_Scope_Registry *a2@<X8>)
{
  v4 = *(this + 3);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 2);
    if (v7)
    {
      v8 = 0x676C6F626E646570;
      v9 = 0;
      AMCP::Core::Core::call_operation_function<std::function<void ()>>(a2, v7, &v8);
    }

    else
    {
      *(a2 + 3) = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    *(a2 + 3) = 0;
  }
}

uint64_t AMCP::Node::set_end_processing_handler(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 24);
  if (v3 && (v5 = std::__shared_weak_count::lock(v3)) != 0)
  {
    v6 = v5;
    v7 = *(a1 + 16);
    if (v7)
    {
      v11 = 0x676C6F626E646570;
      v12 = 0;
      std::__function::__value_func<void ()>::__value_func[abi:ne200100](v13, a2);
      AMCP::Core::Core::call_operation_function<void,std::function<void ()>>(v7, &v11, v13);
      std::__function::__value_func<void ()>::~__value_func[abi:ne200100](v13);
      v8 = 1;
    }

    else
    {
      v8 = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

void sub_1DE6EFC24(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DE6EFC2CLL);
  }

  __clang_call_terminate(a1);
}

void AMCP::Node::get_unregister_client_handler(AMCP::Node *this@<X0>, AMCP::Log::AMCP_Scope_Registry *a2@<X8>)
{
  v4 = *(this + 3);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 2);
    if (v7)
    {
      v8 = 0x676C6F62756E636CLL;
      v9 = 0;
      AMCP::Core::Core::call_operation_function<std::function<void ()>>(a2, v7, &v8);
    }

    else
    {
      *(a2 + 3) = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    *(a2 + 3) = 0;
  }
}

uint64_t AMCP::Node::set_unregister_client_handler(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 24);
  if (v3 && (v5 = std::__shared_weak_count::lock(v3)) != 0)
  {
    v6 = v5;
    v7 = *(a1 + 16);
    if (v7)
    {
      v11 = 0x676C6F62756E636CLL;
      v12 = 0;
      std::__function::__value_func<void ()>::__value_func[abi:ne200100](v13, a2);
      AMCP::Core::Core::call_operation_function<void,std::function<void ()>>(v7, &v11, v13);
      std::__function::__value_func<void ()>::~__value_func[abi:ne200100](v13);
      v8 = 1;
    }

    else
    {
      v8 = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

void sub_1DE6EFDE8(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DE6EFDF0);
  }

  __clang_call_terminate(a1);
}

void AMCP::Node::get_latency_handler(AMCP::Node *this@<X0>, uint64_t a2@<X8>)
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = *(this + 3);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 2);
    if (v7)
    {
      v27 = 0x676C6F626E646C61;
      v28 = 0;
      operation = AMCP::Core::Core::find_operation(&v29, v7, &v27);
      v9 = v29;
      if (!v29)
      {
        v19 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v19 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(operation);
        }

        v21 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v20 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v20)
        {
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
          v22 = *v21;
          std::__shared_weak_count::__release_shared[abi:ne200100](v20);
        }

        else
        {
          v22 = *v21;
        }

        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "Core.h";
          v42 = 1024;
          v43 = 202;
          _os_log_error_impl(&dword_1DE1F9000, v22, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v40);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("Operation does not have requested function", &v32);
        std::runtime_error::runtime_error(&v33, &v32);
        std::runtime_error::runtime_error(&v34, &v33);
        v36 = 0;
        v37 = 0;
        v38 = 0;
        v39 = -1;
        v34.__vftable = &unk_1F5992170;
        v35 = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v34);
        v44 = "Return_Type AMCP::Core::Core::call_operation_function(const Address &, Argument_Types...) const [Return_Type = std::function<long long ()>, Argument_Types = <>]";
        v45 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Core.h";
        v46 = 202;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v31);
      }

      v10 = AMCP::Implementation::get_type_marker<std::function<std::function<long long ()(void)> ()(void)>>();
      v11 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v9, v10);
      if (!v11)
      {
        v23 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v23 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(0);
        }

        v25 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v24 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v24)
        {
          atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
          v26 = *v25;
          std::__shared_weak_count::__release_shared[abi:ne200100](v24);
        }

        else
        {
          v26 = *v25;
        }

        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "Operation.h";
          v42 = 1024;
          v43 = 154;
          _os_log_error_impl(&dword_1DE1F9000, v26, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v40);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("Operation does not have requested function", &v32);
        std::runtime_error::runtime_error(&v33, &v32);
        std::runtime_error::runtime_error(&v34, &v33);
        v36 = 0;
        v37 = 0;
        v38 = 0;
        v39 = -1;
        v34.__vftable = &unk_1F5992170;
        v35 = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v34);
        v44 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = std::function<long long ()>, Argument_Types = <>]";
        v45 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
        v46 = 154;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v31);
      }

      v12 = v11;
      if (!*(v11 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<std::function<long long ()(void)> ()(void)>>(), (v11 = (*(v12 + 7))(4, v12 + 24, 0, buf)) == 0))
      {
        v15 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v15 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v11);
        }

        v17 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v16 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
          v18 = *v17;
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        }

        else
        {
          v18 = *v17;
        }

        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "Operation.h";
          v42 = 1024;
          v43 = 161;
          _os_log_error_impl(&dword_1DE1F9000, v18, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v40);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("Invalid cast", &v32);
        std::runtime_error::runtime_error(&v33, &v32);
        std::runtime_error::runtime_error(&v34, &v33);
        v36 = 0;
        v37 = 0;
        v38 = 0;
        v39 = -1;
        v34.__vftable = &unk_1F5992170;
        v35 = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v34);
        v44 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = std::function<long long ()>, Argument_Types = <>]";
        v45 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
        v46 = 161;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v31);
      }

      v13 = *(v11 + 3);
      if (!v13)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v13 + 48))(v13);
      if (v30)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v30);
      }
    }

    else
    {
      *(a2 + 24) = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    *(a2 + 24) = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
}

void sub_1DE6F04D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, std::runtime_error a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v30 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a27);
  std::runtime_error::~runtime_error(&a26);
  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (v29)
  {
    __cxa_free_exception(v28);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v30 - 129));
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  _Unwind_Resume(a1);
}

uint64_t AMCP::Node::set_latency_handler(uint64_t a1, uint64_t a2)
{
  v52 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 24);
  if (v3 && (v5 = std::__shared_weak_count::lock(v3)) != 0)
  {
    v6 = v5;
    v7 = *(a1 + 16);
    if (v7)
    {
      v30 = 0x676C6F626E646C61;
      LODWORD(v31) = 0;
      std::__function::__value_func<long long ()(void)>::__value_func[abi:ne200100](v44, a2);
      operation = AMCP::Core::Core::find_operation(&v32, v7, &v30);
      v9 = v32;
      if (!v32)
      {
        v20 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v20 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(operation);
        }

        v22 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v21 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v21)
        {
          atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
          v23 = *v22;
          std::__shared_weak_count::__release_shared[abi:ne200100](v21);
        }

        else
        {
          v23 = *v22;
        }

        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "Core.h";
          v47 = 1024;
          v48 = 202;
          _os_log_error_impl(&dword_1DE1F9000, v23, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v36);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("Operation does not have requested function", &v45, v30, v31);
        std::runtime_error::runtime_error(&v34, &v45);
        std::runtime_error::runtime_error(&v37, &v34);
        v39 = 0;
        v40 = 0;
        v41 = 0;
        v42 = -1;
        v37.__vftable = &unk_1F5992170;
        v38 = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v37);
        v49 = "Return_Type AMCP::Core::Core::call_operation_function(const Address &, Argument_Types...) const [Return_Type = void, Argument_Types = <std::function<long long ()>>]";
        v50 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Core.h";
        v51 = 202;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v35);
      }

      std::__function::__value_func<long long ()(void)>::__value_func[abi:ne200100](&v45, v44);
      v10 = AMCP::Implementation::get_type_marker<std::function<void ()(std::function<long long ()(void)>)>>();
      v11 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v9, v10);
      if (!v11)
      {
        v24 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v24 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(0);
        }

        v26 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v25 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v25)
        {
          atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
          v27 = *v26;
          std::__shared_weak_count::__release_shared[abi:ne200100](v25);
        }

        else
        {
          v27 = *v26;
        }

        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "Operation.h";
          v47 = 1024;
          v48 = 154;
          _os_log_error_impl(&dword_1DE1F9000, v27, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v43);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("Operation does not have requested function", &v35, v30, v31);
        std::runtime_error::runtime_error(&v36, &v35);
        std::runtime_error::runtime_error(&v37, &v36);
        v39 = 0;
        v40 = 0;
        v41 = 0;
        v42 = -1;
        v37.__vftable = &unk_1F5992170;
        v38 = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v37);
        v49 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = void, Argument_Types = <std::function<long long ()>>]";
        v50 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
        v51 = 154;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v34);
      }

      v12 = v11;
      if (!*(v11 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<void ()(std::function<long long ()(void)>)>>(), v11 = (*(v12 + 7))(4, v12 + 24, 0, buf), (v13 = v11) == 0))
      {
        v16 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v16 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v11);
        }

        v18 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v17 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v17)
        {
          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
          v19 = *v18;
          std::__shared_weak_count::__release_shared[abi:ne200100](v17);
        }

        else
        {
          v19 = *v18;
        }

        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "Operation.h";
          v47 = 1024;
          v48 = 161;
          _os_log_error_impl(&dword_1DE1F9000, v19, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v43);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("Invalid cast", &v35, v30, v31);
        std::runtime_error::runtime_error(&v36, &v35);
        std::runtime_error::runtime_error(&v37, &v36);
        v39 = 0;
        v40 = 0;
        v41 = 0;
        v42 = -1;
        v37.__vftable = &unk_1F5992170;
        v38 = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v37);
        v49 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = void, Argument_Types = <std::function<long long ()>>]";
        v50 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
        v51 = 161;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v34);
      }

      std::__function::__value_func<long long ()(void)>::__value_func[abi:ne200100](buf, &v45);
      v14 = *(v13 + 3);
      if (!v14)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v14 + 48))(v14, buf);
      std::__function::__value_func<long long ()(void)>::~__value_func[abi:ne200100](buf);
      std::__function::__value_func<long long ()(void)>::~__value_func[abi:ne200100](&v45);
      if (v33)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v33);
      }

      std::__function::__value_func<long long ()(void)>::~__value_func[abi:ne200100](v44);
      v15 = 1;
    }

    else
    {
      v15 = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    v15 = 0;
  }

  v28 = *MEMORY[0x1E69E9840];
  return v15;
}

void AMCP::Node::get_uid(AMCP::Node *this@<X0>, void *a2@<X8>)
{
  v4 = *(this + 3);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 2);
    if (v7)
    {
      AMCP::Core::Core::get_simple_required_property<1853188452u>(a2, v7);
    }

    else
    {
      *a2 = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    *a2 = 0;
  }
}

void AMCP::Node::get_description(AMCP::Node *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 3);
  if (!v4)
  {
    v5 = 0;
    goto LABEL_6;
  }

  v5 = std::__shared_weak_count::lock(v4);
  if (!v5 || (v6 = *(this + 2)) == 0)
  {
LABEL_6:
    *a2 = 1;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0x100000000;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 72) = 0u;
    *(a2 + 88) = 0u;
    *(a2 + 104) = 0u;
    if (!v5)
    {
      return;
    }

    goto LABEL_7;
  }

  AMCP::Core::Core::get_simple_required_property<1852073061u>(a2, v6);
LABEL_7:

  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
}

AMCP::Core::Core *AMCP::Node::get_type(AMCP::Node *this)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 2);
      if (!v5)
      {
LABEL_19:
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
        goto LABEL_20;
      }

      v21 = 0x676C6F626E647470;
      v22 = 0;
      has_property = AMCP::Core::Core::has_property(v5, &v21);
      if (!has_property)
      {
LABEL_21:
        v14 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v14 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(has_property);
        }

        v16 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v15 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
          v17 = *v16;
          std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        }

        else
        {
          v17 = *v16;
        }

        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v20 = 4;
          strcpy(&__p, "ndtp");
          *buf = 136316418;
          v24 = "Core.h";
          v25 = 1024;
          v26 = 391;
          v27 = 2080;
          v28 = "optional_value.operator BOOL() == true";
          v29 = 2080;
          *v30 = &__p;
          *&v30[8] = 1024;
          v31 = 1735159650;
          v32 = 1024;
          v33 = 0;
          _os_log_error_impl(&dword_1DE1F9000, v17, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
          if (v20 < 0)
          {
            operator delete(__p);
          }
        }

        abort();
      }

      AMCP::Core::Core::find_operation(&__p, v5, &v21);
      v7 = __p;
      if (__p)
      {
        v8 = AMCP::Implementation::get_type_marker<std::function<AMCP::Node_Type ()(void)>>();
        if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v7, v8))
        {
          LODWORD(v7) = AMCP::Core::Operation::call_function<AMCP::Node_Type>(v7);
LABEL_8:
          v9 = 0;
          v10 = v7 & 0xFFFFFF00;
          goto LABEL_15;
        }

        v11 = AMCP::Implementation::get_type_marker<std::function<AMCP::Thing ()(void)>>();
        if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v7, v11))
        {
          AMCP::Core::Operation::call_function<AMCP::Thing>(buf, v7);
          LODWORD(v7) = AMCP::Thing::convert_to<AMCP::Node_Type>(buf);
          if (*&v30[2])
          {
            (*&v30[2])(0, buf, 0, 0);
          }

          goto LABEL_8;
        }

        LOBYTE(v7) = 0;
      }

      v10 = 0;
      v9 = 1;
LABEL_15:
      has_property = v19;
      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }

      if ((v9 & 1) == 0)
      {
        v5 = (v10 | v7);
        goto LABEL_19;
      }

      goto LABEL_21;
    }
  }

  v5 = 0;
LABEL_20:
  v12 = *MEMORY[0x1E69E9840];
  return v5;
}

void sub_1DE6F12A0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t AMCP::Node::is_connected(AMCP::Node *this)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
  if (v2 && (v3 = std::__shared_weak_count::lock(v2)) != 0)
  {
    v4 = v3;
    v5 = *(this + 2);
    if (v5)
    {
      strcpy(buf, "tcdnbolg");
      buf[9] = 0;
      *&buf[10] = 0;
      v6 = AMCP::Core::Core::get_typed_property_value<BOOL,std::enable_if<true,void>>(v5, buf);
      if (v6 <= 0xFFu)
      {
        v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v10 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v6);
        }

        v12 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v11 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
          v13 = *v12;
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }

        else
        {
          v13 = *v12;
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v15 = 4;
          strcpy(__p, "ndct");
          *buf = 136316418;
          *&buf[4] = "Core.h";
          v17 = 1024;
          v18 = 391;
          v19 = 2080;
          v20 = "optional_value.operator BOOL() == true";
          v21 = 2080;
          v22 = __p;
          v23 = 1024;
          v24 = 1735159650;
          v25 = 1024;
          v26 = 0;
          _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
          if (v15 < 0)
          {
            operator delete(__p[0]);
          }
        }

        abort();
      }

      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7 & 1;
}

void sub_1DE6F1470(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

unint64_t AMCP::Node::get_clock(AMCP::Node *this)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
  if (v2 && (v3 = std::__shared_weak_count::lock(v2)) != 0)
  {
    v4 = v3;
    v5 = *(this + 2);
    if (v5)
    {
      strcpy(buf, "lcdnbolg");
      buf[9] = 0;
      *&buf[10] = 0;
      v6 = AMCP::Core::Core::get_typed_property_value<unsigned int,std::enable_if<true,void>>(v5, buf);
      if (!HIDWORD(v6))
      {
        v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v10 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v6);
        }

        v12 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v11 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
          v13 = *v12;
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }

        else
        {
          v13 = *v12;
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v15 = 4;
          strcpy(__p, "ndcl");
          *buf = 136316418;
          *&buf[4] = "Core.h";
          v17 = 1024;
          v18 = 391;
          v19 = 2080;
          v20 = "optional_value.operator BOOL() == true";
          v21 = 2080;
          v22 = __p;
          v23 = 1024;
          v24 = 1735159650;
          v25 = 1024;
          v26 = 0;
          _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
          if (v15 < 0)
          {
            operator delete(__p[0]);
          }
        }

        abort();
      }

      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

void sub_1DE6F1630(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void AMCP::Node::get_current_time(AMCP::Node *this@<X0>, _BYTE *a2@<X8>)
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = *(this + 3);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 2);
    if (v7)
    {
      v27 = 0x676C6F626374696DLL;
      v28 = 0;
      operation = AMCP::Core::Core::find_operation(&v29, v7, &v27);
      v9 = v29;
      if (!v29)
      {
        v18 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v18 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(operation);
        }

        v20 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v19 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
          v21 = *v20;
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
        }

        else
        {
          v21 = *v20;
        }

        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "Core.h";
          v42 = 1024;
          v43 = 202;
          _os_log_error_impl(&dword_1DE1F9000, v21, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v40);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("Operation does not have requested function", &v32);
        std::runtime_error::runtime_error(&v33, &v32);
        std::runtime_error::runtime_error(&v34, &v33);
        v36 = 0;
        v37 = 0;
        v38 = 0;
        v39 = -1;
        v34.__vftable = &unk_1F5992170;
        v35 = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v34);
        v44 = "Return_Type AMCP::Core::Core::call_operation_function(const Address &, Argument_Types...) const [Return_Type = std::optional<CA::TimeStamp>, Argument_Types = <>]";
        v45 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Core.h";
        v46 = 202;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(v31);
      }

      v10 = AMCP::Implementation::get_type_marker<std::function<std::optional<CA::TimeStamp> ()(void)>>();
      v11 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v9, v10);
      if (!v11)
      {
        v22 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v22 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(0);
        }

        v24 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v23 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
          v25 = *v24;
          std::__shared_weak_count::__release_shared[abi:ne200100](v23);
        }

        else
        {
          v25 = *v24;
        }

        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "Operation.h";
          v42 = 1024;
          v43 = 154;
          _os_log_error_impl(&dword_1DE1F9000, v25, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v40);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("Operation does not have requested function", &v32);
        std::runtime_error::runtime_error(&v33, &v32);
        std::runtime_error::runtime_error(&v34, &v33);
        v36 = 0;
        v37 = 0;
        v38 = 0;
        v39 = -1;
        v34.__vftable = &unk_1F5992170;
        v35 = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v34);
        v44 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = std::optional<CA::TimeStamp>, Argument_Types = <>]";
        v45 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
        v46 = 154;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(v31);
      }

      v12 = v11;
      if (!*(v11 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<std::optional<CA::TimeStamp> ()(void)>>(), (v11 = (*(v12 + 7))(4, v12 + 24, 0, buf)) == 0))
      {
        v14 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v14 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v11);
        }

        v16 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v15 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
          v17 = *v16;
          std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        }

        else
        {
          v17 = *v16;
        }

        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "Operation.h";
          v42 = 1024;
          v43 = 161;
          _os_log_error_impl(&dword_1DE1F9000, v17, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v40);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("Invalid cast", &v32);
        std::runtime_error::runtime_error(&v33, &v32);
        std::runtime_error::runtime_error(&v34, &v33);
        v36 = 0;
        v37 = 0;
        v38 = 0;
        v39 = -1;
        v34.__vftable = &unk_1F5992170;
        v35 = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v34);
        v44 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = std::optional<CA::TimeStamp>, Argument_Types = <>]";
        v45 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
        v46 = 161;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(v31);
      }

      v13 = *(v11 + 3);
      if (!v13)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v13 + 48))(v13);
      if (v30)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v30);
      }
    }

    else
    {
      *a2 = 0;
      a2[64] = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    *a2 = 0;
    a2[64] = 0;
  }

  v26 = *MEMORY[0x1E69E9840];
}

void AMCP::Node::translate_time(uint64_t a1@<X0>, _OWORD *a2@<X1>, AMCP::Log::AMCP_Scope_Registry *a3@<X8>)
{
  v5 = *(a1 + 24);
  if (v5 && (v7 = std::__shared_weak_count::lock(v5)) != 0)
  {
    v8 = v7;
    v9 = *(a1 + 16);
    if (v9)
    {
      v13 = 0x676C6F6274726E74;
      v14 = 0;
      v10 = a2[1];
      v12[0] = *a2;
      v12[1] = v10;
      v11 = a2[3];
      v12[2] = a2[2];
      v12[3] = v11;
      AMCP::Core::Core::call_operation_function<std::optional<CA::TimeStamp>,CA::TimeStamp>(a3, v9, &v13, v12);
    }

    else
    {
      *a3 = 0;
      *(a3 + 64) = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  else
  {
    *a3 = 0;
    *(a3 + 64) = 0;
  }
}

void AMCP::Node::get_io_thread_error_handler(AMCP::Node *this@<X0>, uint64_t a2@<X8>)
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = *(this + 3);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 2);
    if (v7)
    {
      v27 = 0x676C6F6274686572;
      v28 = 0;
      operation = AMCP::Core::Core::find_operation(&v29, v7, &v27);
      v9 = v29;
      if (!v29)
      {
        v19 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v19 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(operation);
        }

        v21 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v20 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v20)
        {
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
          v22 = *v21;
          std::__shared_weak_count::__release_shared[abi:ne200100](v20);
        }

        else
        {
          v22 = *v21;
        }

        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "Core.h";
          v42 = 1024;
          v43 = 202;
          _os_log_error_impl(&dword_1DE1F9000, v22, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v40);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("Operation does not have requested function", &v32);
        std::runtime_error::runtime_error(&v33, &v32);
        std::runtime_error::runtime_error(&v34, &v33);
        v36 = 0;
        v37 = 0;
        v38 = 0;
        v39 = -1;
        v34.__vftable = &unk_1F5992170;
        v35 = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v34);
        v44 = "Return_Type AMCP::Core::Core::call_operation_function(const Address &, Argument_Types...) const [Return_Type = std::function<void ()>, Argument_Types = <>]";
        v45 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Core.h";
        v46 = 202;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v31);
      }

      v10 = AMCP::Implementation::get_type_marker<std::function<std::function<void ()(void)> ()(void)>>();
      v11 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v9, v10);
      if (!v11)
      {
        v23 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v23 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(0);
        }

        v25 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v24 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v24)
        {
          atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
          v26 = *v25;
          std::__shared_weak_count::__release_shared[abi:ne200100](v24);
        }

        else
        {
          v26 = *v25;
        }

        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "Operation.h";
          v42 = 1024;
          v43 = 154;
          _os_log_error_impl(&dword_1DE1F9000, v26, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v40);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("Operation does not have requested function", &v32);
        std::runtime_error::runtime_error(&v33, &v32);
        std::runtime_error::runtime_error(&v34, &v33);
        v36 = 0;
        v37 = 0;
        v38 = 0;
        v39 = -1;
        v34.__vftable = &unk_1F5992170;
        v35 = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v34);
        v44 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = std::function<void ()>, Argument_Types = <>]";
        v45 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
        v46 = 154;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v31);
      }

      v12 = v11;
      if (!*(v11 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<std::function<void ()(void)> ()(void)>>(), (v11 = (*(v12 + 7))(4, v12 + 24, 0, buf)) == 0))
      {
        v15 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v15 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v11);
        }

        v17 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v16 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
          v18 = *v17;
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        }

        else
        {
          v18 = *v17;
        }

        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "Operation.h";
          v42 = 1024;
          v43 = 161;
          _os_log_error_impl(&dword_1DE1F9000, v18, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v40);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("Invalid cast", &v32);
        std::runtime_error::runtime_error(&v33, &v32);
        std::runtime_error::runtime_error(&v34, &v33);
        v36 = 0;
        v37 = 0;
        v38 = 0;
        v39 = -1;
        v34.__vftable = &unk_1F5992170;
        v35 = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v34);
        v44 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = std::function<void ()>, Argument_Types = <>]";
        v45 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
        v46 = 161;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v31);
      }

      v13 = *(v11 + 3);
      if (!v13)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v13 + 48))(v13);
      if (v30)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v30);
      }
    }

    else
    {
      *(a2 + 24) = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    *(a2 + 24) = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
}

void sub_1DE6F25B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, std::runtime_error a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v30 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a27);
  std::runtime_error::~runtime_error(&a26);
  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (v29)
  {
    __cxa_free_exception(v28);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v30 - 129));
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  _Unwind_Resume(a1);
}

uint64_t AMCP::Node::set_io_thread_error_handler(uint64_t a1, uint64_t a2)
{
  v52 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 24);
  if (v3 && (v5 = std::__shared_weak_count::lock(v3)) != 0)
  {
    v6 = v5;
    v7 = *(a1 + 16);
    if (v7)
    {
      v30 = 0x676C6F6274686572;
      LODWORD(v31) = 0;
      std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v44, a2);
      operation = AMCP::Core::Core::find_operation(&v32, v7, &v30);
      v9 = v32;
      if (!v32)
      {
        v20 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v20 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(operation);
        }

        v22 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v21 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v21)
        {
          atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
          v23 = *v22;
          std::__shared_weak_count::__release_shared[abi:ne200100](v21);
        }

        else
        {
          v23 = *v22;
        }

        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "Core.h";
          v47 = 1024;
          v48 = 202;
          _os_log_error_impl(&dword_1DE1F9000, v23, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v36);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("Operation does not have requested function", &v45, v30, v31);
        std::runtime_error::runtime_error(&v34, &v45);
        std::runtime_error::runtime_error(&v37, &v34);
        v39 = 0;
        v40 = 0;
        v41 = 0;
        v42 = -1;
        v37.__vftable = &unk_1F5992170;
        v38 = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v37);
        v49 = "Return_Type AMCP::Core::Core::call_operation_function(const Address &, Argument_Types...) const [Return_Type = void, Argument_Types = <std::function<void ()>>]";
        v50 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Core.h";
        v51 = 202;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v35);
      }

      std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](&v45, v44);
      v10 = AMCP::Implementation::get_type_marker<std::function<void ()(std::function<void ()(void)>)>>();
      v11 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v9, v10);
      if (!v11)
      {
        v24 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v24 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(0);
        }

        v26 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v25 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v25)
        {
          atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
          v27 = *v26;
          std::__shared_weak_count::__release_shared[abi:ne200100](v25);
        }

        else
        {
          v27 = *v26;
        }

        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "Operation.h";
          v47 = 1024;
          v48 = 154;
          _os_log_error_impl(&dword_1DE1F9000, v27, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v43);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("Operation does not have requested function", &v35, v30, v31);
        std::runtime_error::runtime_error(&v36, &v35);
        std::runtime_error::runtime_error(&v37, &v36);
        v39 = 0;
        v40 = 0;
        v41 = 0;
        v42 = -1;
        v37.__vftable = &unk_1F5992170;
        v38 = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v37);
        v49 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = void, Argument_Types = <std::function<void ()>>]";
        v50 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
        v51 = 154;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v34);
      }

      v12 = v11;
      if (!*(v11 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<void ()(std::function<void ()(void)>)>>(), v11 = (*(v12 + 7))(4, v12 + 24, 0, buf), (v13 = v11) == 0))
      {
        v16 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v16 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v11);
        }

        v18 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v17 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v17)
        {
          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
          v19 = *v18;
          std::__shared_weak_count::__release_shared[abi:ne200100](v17);
        }

        else
        {
          v19 = *v18;
        }

        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "Operation.h";
          v47 = 1024;
          v48 = 161;
          _os_log_error_impl(&dword_1DE1F9000, v19, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v43);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("Invalid cast", &v35, v30, v31);
        std::runtime_error::runtime_error(&v36, &v35);
        std::runtime_error::runtime_error(&v37, &v36);
        v39 = 0;
        v40 = 0;
        v41 = 0;
        v42 = -1;
        v37.__vftable = &unk_1F5992170;
        v38 = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v37);
        v49 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = void, Argument_Types = <std::function<void ()>>]";
        v50 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
        v51 = 161;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v34);
      }

      std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](buf, &v45);
      v14 = *(v13 + 3);
      if (!v14)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v14 + 48))(v14, buf);
      std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](buf);
      std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](&v45);
      if (v33)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v33);
      }

      std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v44);
      v15 = 1;
    }

    else
    {
      v15 = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    v15 = 0;
  }

  v28 = *MEMORY[0x1E69E9840];
  return v15;
}

void AMCP::IOAudio1::Device_Sub_Object::~Device_Sub_Object(AMCP::IOAudio1::Device_Sub_Object *this)
{
  AMCP::IOAudio1::Device_Sub_Object::~Device_Sub_Object(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F598D7B8;
  AMCP::Core::Broker::destroy_core(*(*(*(*(this + 1) + 16) + 32) + 16), *(this + 4));
  v2 = *(this + 5);
  if (v2)
  {
    IOObjectRelease(v2);
  }
}

void SincKernel::SincKernel(SincKernel *this, int a2, int a3, double a4, double a5)
{
  *this = 0;
  *(this + 2) = 0;
  *(this + 3) = a2;
  *(this + 4) = a3;
  *(this + 5) = 0;
  *(this + 3) = a4;
  *(this + 4) = a5;
  *this = malloc_type_calloc(a2 + a2 * a3, 4uLL, 0x100004052888210uLL);
  v6 = *(this + 4);
  *(this + 3);
  *(this + 4);
  operator new[]();
}

void sub_1DE6F34D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<ADS::ObjectManager::ObjectInfo>::~__split_buffer(va);
  os_unfair_lock_unlock(&GetKaiser(unsigned int,double)::sKaiserWindows);
  _Unwind_Resume(a1);
}

unint64_t DSP_Host_Types::IDSP_Host_DictionaryData::hashed_description(DSP_Host_Types::IDSP_Host_DictionaryData *this)
{
  (*(*this + 16))(__p);
  v1 = std::__string_hash<char>::operator()[abi:ne200100](__p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return v1;
}

uint64_t std::__function::__func<DSP_Host_Types::StringLookup_StreamSemantic::StringLookup_StreamSemantic(void)::$_1,std::allocator<DSP_Host_Types::StringLookup_StreamSemantic::StringLookup_StreamSemantic(void)::$_1>,char const* ()(DSP_Host_Types::StreamSemanticType)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN14DSP_Host_Types27StringLookup_StreamSemanticC1EvE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

const char *std::__function::__func<DSP_Host_Types::StringLookup_StreamSemantic::StringLookup_StreamSemantic(void)::$_1,std::allocator<DSP_Host_Types::StringLookup_StreamSemantic::StringLookup_StreamSemantic(void)::$_1>,char const* ()(DSP_Host_Types::StreamSemanticType)>::operator()(uint64_t a1, _DWORD *a2)
{
  v2 = 0;
  result = "uninitialized";
  while (DSP_Host_Types::StringLookup_StreamSemantic::StringLookup_StreamSemantic(void)::kThisLookup[v2] != *a2)
  {
    v2 += 4;
    if (v2 == 12)
    {
      return result;
    }
  }

  return *&DSP_Host_Types::StringLookup_StreamSemantic::StringLookup_StreamSemantic(void)::kThisLookup[v2 + 2];
}

uint64_t std::__function::__func<DSP_Host_Types::StringLookup_StreamSemantic::StringLookup_StreamSemantic(void)::$_0,std::allocator<DSP_Host_Types::StringLookup_StreamSemantic::StringLookup_StreamSemantic(void)::$_0>,DSP_Host_Types::StreamSemanticType ()(char const*)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN14DSP_Host_Types27StringLookup_StreamSemanticC1EvE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<DSP_Host_Types::StringLookup_StreamSemantic::StringLookup_StreamSemantic(void)::$_0,std::allocator<DSP_Host_Types::StringLookup_StreamSemantic::StringLookup_StreamSemantic(void)::$_0>,DSP_Host_Types::StreamSemanticType ()(char const*)>::operator()(uint64_t a1, const char **a2)
{
  v2 = 0;
  v3 = *a2;
  while (strcmp(*&DSP_Host_Types::StringLookup_StreamSemantic::StringLookup_StreamSemantic(void)::kThisLookup[v2 + 2], v3))
  {
    v2 += 4;
    if (v2 == 12)
    {
      return 0;
    }
  }

  return DSP_Host_Types::StringLookup_StreamSemantic::StringLookup_StreamSemantic(void)::kThisLookup[v2];
}

uint64_t std::__function::__func<DSP_Host_Types::StringLookup_AudioProcessing::StringLookup_AudioProcessing(void)::$_1,std::allocator<DSP_Host_Types::StringLookup_AudioProcessing::StringLookup_AudioProcessing(void)::$_1>,char const* ()(DSP_Host_Types::AudioProcessingType)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN14DSP_Host_Types28StringLookup_AudioProcessingC1EvE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

const char *std::__function::__func<DSP_Host_Types::StringLookup_AudioProcessing::StringLookup_AudioProcessing(void)::$_1,std::allocator<DSP_Host_Types::StringLookup_AudioProcessing::StringLookup_AudioProcessing(void)::$_1>,char const* ()(DSP_Host_Types::AudioProcessingType)>::operator()(uint64_t a1, _DWORD *a2)
{
  v2 = 0;
  result = "uninitialized";
  while (DSP_Host_Types::StringLookup_AudioProcessing::StringLookup_AudioProcessing(void)::kThisLookup[v2] != *a2)
  {
    v2 += 4;
    if (v2 == 44)
    {
      return result;
    }
  }

  return *&DSP_Host_Types::StringLookup_AudioProcessing::StringLookup_AudioProcessing(void)::kThisLookup[v2 + 2];
}

uint64_t std::__function::__func<DSP_Host_Types::StringLookup_AudioProcessing::StringLookup_AudioProcessing(void)::$_0,std::allocator<DSP_Host_Types::StringLookup_AudioProcessing::StringLookup_AudioProcessing(void)::$_0>,DSP_Host_Types::AudioProcessingType ()(char const*)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN14DSP_Host_Types28StringLookup_AudioProcessingC1EvE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<DSP_Host_Types::StringLookup_AudioProcessing::StringLookup_AudioProcessing(void)::$_0,std::allocator<DSP_Host_Types::StringLookup_AudioProcessing::StringLookup_AudioProcessing(void)::$_0>,DSP_Host_Types::AudioProcessingType ()(char const*)>::operator()(uint64_t a1, const char **a2)
{
  v2 = 0;
  v3 = *a2;
  while (strcmp(*&DSP_Host_Types::StringLookup_AudioProcessing::StringLookup_AudioProcessing(void)::kThisLookup[v2 + 2], v3))
  {
    v2 += 4;
    if (v2 == 44)
    {
      return 0;
    }
  }

  return DSP_Host_Types::StringLookup_AudioProcessing::StringLookup_AudioProcessing(void)::kThisLookup[v2];
}

DSP_Host_Types::StringLookup_AudioProcessing *DSP_Host_Types::StringLookup_AudioProcessing::StringLookup_AudioProcessing(DSP_Host_Types::StringLookup_AudioProcessing *this)
{
  v7[3] = *MEMORY[0x1E69E9840];
  *(this + 3) = 0;
  *(this + 7) = 0;
  {
    qword_1ECDAEA48 = "uninitialized";
    dword_1ECDAEA50 = 1;
    qword_1ECDAEA58 = "general";
    dword_1ECDAEA60 = 2;
    qword_1ECDAEA68 = "voice isolation conferencing";
    dword_1ECDAEA70 = 3;
    qword_1ECDAEA78 = "voice isolation";
    dword_1ECDAEA80 = 4;
    qword_1ECDAEA88 = "spatial channel virtualization only";
    dword_1ECDAEA90 = 5;
    qword_1ECDAEA98 = "spatial playback";
    dword_1ECDAEAA0 = 6;
    qword_1ECDAEAA8 = "voice activity detection";
    dword_1ECDAEAB0 = 7;
    qword_1ECDAEAB8 = "isolated audio";
    dword_1ECDAEAC0 = 8;
    DSP_Host_Types::StringLookup_AudioProcessing::StringLookup_AudioProcessing(void)::kThisLookup[0] = 0;
    qword_1ECDAEAC8 = "dsp offload";
    dword_1ECDAEAD0 = 10;
    qword_1ECDAEAD8 = "content creation recording";
    dword_1ECDAEAE0 = 9;
    qword_1ECDAEAE8 = "INTERNAL_kAuProcClientUnprocessedStream";
  }

  v5[0] = &unk_1F598D908;
  v6 = v5;
  if (v5 != this)
  {
    if (*(this + 3) == this)
    {
      std::__function::__func<DSP_Host_Types::StringLookup_AudioProcessing::StringLookup_AudioProcessing(void)::$_0,std::allocator<DSP_Host_Types::StringLookup_AudioProcessing::StringLookup_AudioProcessing(void)::$_0>,DSP_Host_Types::AudioProcessingType ()(char const*)>::__clone(v5, v7);
      (*(*v6 + 32))(v6);
      v6 = 0;
      (*(**(this + 3) + 24))(*(this + 3), v5);
      (*(**(this + 3) + 32))(*(this + 3));
      *(this + 3) = 0;
      v6 = v5;
      (*(v7[0] + 24))(v7, this);
      (*(v7[0] + 32))(v7);
    }

    else
    {
      std::__function::__func<DSP_Host_Types::StringLookup_AudioProcessing::StringLookup_AudioProcessing(void)::$_0,std::allocator<DSP_Host_Types::StringLookup_AudioProcessing::StringLookup_AudioProcessing(void)::$_0>,DSP_Host_Types::AudioProcessingType ()(char const*)>::__clone(v5, this);
      (*(*v6 + 32))(v6);
      v6 = *(this + 3);
    }

    *(this + 3) = this;
  }

  std::__function::__value_func<DSP_Host_Types::AudioProcessingType ()(char const*)>::~__value_func[abi:ne200100](v5);
  v2 = this + 32;
  v5[0] = &unk_1F598D998;
  v6 = v5;
  if ((this + 32) != v5)
  {
    if (*(this + 7) == v2)
    {
      std::__function::__func<DSP_Host_Types::StringLookup_AudioProcessing::StringLookup_AudioProcessing(void)::$_1,std::allocator<DSP_Host_Types::StringLookup_AudioProcessing::StringLookup_AudioProcessing(void)::$_1>,char const* ()(DSP_Host_Types::AudioProcessingType)>::__clone(v5, v7);
      (*(*v6 + 32))(v6);
      v6 = 0;
      (*(**(this + 7) + 24))(*(this + 7), v5);
      (*(**(this + 7) + 32))(*(this + 7));
      *(this + 7) = 0;
      v6 = v5;
      (*(v7[0] + 24))(v7, this + 32);
      (*(v7[0] + 32))(v7);
    }

    else
    {
      std::__function::__func<DSP_Host_Types::StringLookup_AudioProcessing::StringLookup_AudioProcessing(void)::$_1,std::allocator<DSP_Host_Types::StringLookup_AudioProcessing::StringLookup_AudioProcessing(void)::$_1>,char const* ()(DSP_Host_Types::AudioProcessingType)>::__clone(v5, this + 4);
      (*(*v6 + 32))(v6);
      v6 = *(this + 7);
    }

    *(this + 7) = v2;
  }

  std::__function::__value_func<char const* ()(DSP_Host_Types::AudioProcessingType)>::~__value_func[abi:ne200100](v5);
  v3 = *MEMORY[0x1E69E9840];
  return this;
}

void sub_1DE6F3EB4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<DSP_Host_Types::StringLookup_CustomPropertyDataType::StringLookup_CustomPropertyDataType(void)::$_1,std::allocator<DSP_Host_Types::StringLookup_CustomPropertyDataType::StringLookup_CustomPropertyDataType(void)::$_1>,char const* ()(DSP_Host_Types::CustomPropertyDataType)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN14DSP_Host_Types35StringLookup_CustomPropertyDataTypeC1EvE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

const char *std::__function::__func<DSP_Host_Types::StringLookup_CustomPropertyDataType::StringLookup_CustomPropertyDataType(void)::$_1,std::allocator<DSP_Host_Types::StringLookup_CustomPropertyDataType::StringLookup_CustomPropertyDataType(void)::$_1>,char const* ()(DSP_Host_Types::CustomPropertyDataType)>::operator()(uint64_t a1, _DWORD *a2)
{
  v2 = 0;
  result = "uninitialized";
  while (DSP_Host_Types::StringLookup_CustomPropertyDataType::StringLookup_CustomPropertyDataType(void)::kThisLookup[v2] != *a2)
  {
    v2 += 4;
    if (v2 == 32)
    {
      return result;
    }
  }

  return *&DSP_Host_Types::StringLookup_CustomPropertyDataType::StringLookup_CustomPropertyDataType(void)::kThisLookup[v2 + 2];
}

uint64_t std::__function::__func<DSP_Host_Types::StringLookup_CustomPropertyDataType::StringLookup_CustomPropertyDataType(void)::$_0,std::allocator<DSP_Host_Types::StringLookup_CustomPropertyDataType::StringLookup_CustomPropertyDataType(void)::$_0>,DSP_Host_Types::CustomPropertyDataType ()(char const*)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN14DSP_Host_Types35StringLookup_CustomPropertyDataTypeC1EvE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<DSP_Host_Types::StringLookup_CustomPropertyDataType::StringLookup_CustomPropertyDataType(void)::$_0,std::allocator<DSP_Host_Types::StringLookup_CustomPropertyDataType::StringLookup_CustomPropertyDataType(void)::$_0>,DSP_Host_Types::CustomPropertyDataType ()(char const*)>::operator()(uint64_t a1, const char **a2)
{
  v2 = 0;
  v3 = *a2;
  while (strcmp(*&DSP_Host_Types::StringLookup_CustomPropertyDataType::StringLookup_CustomPropertyDataType(void)::kThisLookup[v2 + 2], v3))
  {
    v2 += 4;
    if (v2 == 32)
    {
      return 0;
    }
  }

  return DSP_Host_Types::StringLookup_CustomPropertyDataType::StringLookup_CustomPropertyDataType(void)::kThisLookup[v2];
}

void HALS_ObjectMap::MapObject(HALS_ObjectMap *this, uint64_t a2, HALS_Object *a3)
{
  v4 = this;
  pthread_once(&HALS_ObjectMap::sObjectInfoListInitialized, HALS_ObjectMap::Initialize);
  if (v4 && a2)
  {
    v19 = HALS_ObjectMap::sObjectInfoListMutex;
    v20 = HALB_Mutex::Lock(HALS_ObjectMap::sObjectInfoListMutex);
    v5 = HALS_ObjectMap::sObjectInfoList;
    v6 = *HALS_ObjectMap::sObjectInfoList;
    v7 = *(HALS_ObjectMap::sObjectInfoList + 8);
    v8 = *HALS_ObjectMap::sObjectInfoList;
    if (*HALS_ObjectMap::sObjectInfoList != v7)
    {
      while (*(v8 + 16) != v4)
      {
        v8 += 24;
        if (v8 == v7)
        {
          goto LABEL_8;
        }
      }
    }

    if (v8 == v7)
    {
LABEL_8:
      v9 = *(HALS_ObjectMap::sObjectInfoList + 16);
      if (v7 >= v9)
      {
        v11 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 3);
        v12 = v11 + 1;
        if (v11 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<void *>::__throw_length_error[abi:ne200100]();
        }

        v13 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v6) >> 3);
        if (2 * v13 > v12)
        {
          v12 = 2 * v13;
        }

        if (v13 >= 0x555555555555555)
        {
          v14 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v14 = v12;
        }

        if (v14)
        {
          std::allocator<HALS_ObjectMap::ObjectInfo>::allocate_at_least[abi:ne200100](v14);
        }

        v15 = 24 * v11;
        *v15 = 1;
        *(v15 + 8) = a2;
        *(v15 + 16) = v4;
        v10 = 24 * v11 + 24;
        v16 = *(v5 + 8) - *v5;
        v17 = (24 * v11 - v16);
        memcpy(v17, *v5, v16);
        v18 = *v5;
        *v5 = v17;
        *(v5 + 8) = v10;
        *(v5 + 16) = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        *v7 = 1;
        *(v7 + 8) = a2;
        *(v7 + 16) = v4;
        v10 = v7 + 24;
      }

      *(v5 + 8) = v10;
    }

    HALB_Mutex::Locker::~Locker(&v19);
  }
}

void std::allocator<HALS_ObjectMap::ObjectInfo>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::vector<HALS_ObjectMap::ObjectInfo>::reserve(void *result)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) <= 0x1FF)
  {
    v1 = result[1] - *result;
    operator new();
  }

  return result;
}

void HALS_ObjectMap::_UnmapObject(HALS_ObjectMap *this)
{
  if (this)
  {
    v1 = HALS_ObjectMap::sObjectInfoList;
    if (HALS_ObjectMap::sObjectInfoList)
    {
      v3 = *HALS_ObjectMap::sObjectInfoList;
      v2 = *(HALS_ObjectMap::sObjectInfoList + 8);
      if (*HALS_ObjectMap::sObjectInfoList != v2)
      {
        while (*(v3 + 4) != this)
        {
          v3 += 24;
          if (v3 == v2)
          {
            v3 = *(HALS_ObjectMap::sObjectInfoList + 8);
            break;
          }
        }
      }

      if (v2 != v3)
      {
        v4 = v2 - (v3 + 24);
        if (v2 != v3 + 24)
        {
          this = memmove(v3, v3 + 24, v4 - 4);
        }

        *(v1 + 8) = &v3[v4];

        HALS_ObjectMap::_ReclaimSpace(this);
      }
    }
  }
}

void HALS_ObjectMap::_ReclaimSpace(HALS_ObjectMap *this)
{
  v1 = HALS_ObjectMap::sObjectInfoList;
  v2 = *HALS_ObjectMap::sObjectInfoList;
  v3 = *(HALS_ObjectMap::sObjectInfoList + 16) - *HALS_ObjectMap::sObjectInfoList;
  v4 = 0xAAAAAAAAAAAAAAABLL * (v3 >> 3);
  if (v4 >= 0x201)
  {
    v5 = *(HALS_ObjectMap::sObjectInfoList + 8);
    v6 = (v5 - v2) >> 3;
    if (v4 + 0x5555555555555555 * v6 >= 0x15 && v3 > (v5 - v2))
    {
      if (v5 != v2)
      {
        std::allocator<HALS_ObjectMap::ObjectInfo>::allocate_at_least[abi:ne200100](0xAAAAAAAAAAAAAAABLL * v6);
      }

      v8 = 8 * v6;
      v9 = *(HALS_ObjectMap::sObjectInfoList + 8) - v2;
      v10 = (8 * v6 - v9);
      memcpy(v10, v2, v9);
      v11 = *v1;
      *v1 = v10;
      *(v1 + 8) = v8;
      *(v1 + 16) = 0;
      if (v11)
      {

        operator delete(v11);
      }
    }
  }
}

void sub_1DE6F4648(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE6F45A0);
}

unint64_t HALS_ObjectMap::IsObjectMapped(unint64_t this)
{
  pthread_once(&HALS_ObjectMap::sObjectInfoListInitialized, HALS_ObjectMap::Initialize);
  if (this)
  {
    v5 = HALS_ObjectMap::sObjectInfoListMutex;
    v6 = HALB_Mutex::Lock(HALS_ObjectMap::sObjectInfoListMutex);
    if (HALS_ObjectMap::sObjectInfoList)
    {
      v2 = *HALS_ObjectMap::sObjectInfoList;
      v3 = *(HALS_ObjectMap::sObjectInfoList + 8);
      if (*HALS_ObjectMap::sObjectInfoList != v3)
      {
        while (*(v2 + 16) != this)
        {
          v2 += 24;
          if (v2 == v3)
          {
            v2 = *(HALS_ObjectMap::sObjectInfoList + 8);
            break;
          }
        }
      }

      this = v2 != v3;
    }

    else
    {
      this = 0;
    }

    HALB_Mutex::Locker::~Locker(&v5);
  }

  return this;
}

unint64_t HALS_ObjectMap::IsObjectMapped(unint64_t this, const HALS_Object *a2)
{
  pthread_once(&HALS_ObjectMap::sObjectInfoListInitialized, HALS_ObjectMap::Initialize);
  if (this)
  {
    v6 = HALS_ObjectMap::sObjectInfoListMutex;
    v7 = HALB_Mutex::Lock(HALS_ObjectMap::sObjectInfoListMutex);
    if (HALS_ObjectMap::sObjectInfoList)
    {
      v3 = *HALS_ObjectMap::sObjectInfoList;
      v4 = *(HALS_ObjectMap::sObjectInfoList + 8);
      if (*HALS_ObjectMap::sObjectInfoList != v4)
      {
        while (*(v3 + 8) != this)
        {
          v3 += 24;
          if (v3 == v4)
          {
            v3 = *(HALS_ObjectMap::sObjectInfoList + 8);
            break;
          }
        }
      }

      this = v3 != v4;
    }

    else
    {
      this = 0;
    }

    HALB_Mutex::Locker::~Locker(&v6);
  }

  return this;
}

uint64_t HALS_ObjectMap::CopyObjectByObjectID(HALS_ObjectMap *this)
{
  v1 = this;
  pthread_once(&HALS_ObjectMap::sObjectInfoListInitialized, HALS_ObjectMap::Initialize);
  if (!v1)
  {
    return 0;
  }

  v6 = HALS_ObjectMap::sObjectInfoListMutex;
  v7 = HALB_Mutex::Lock(HALS_ObjectMap::sObjectInfoListMutex);
  if (!HALS_ObjectMap::sObjectInfoList)
  {
    goto LABEL_10;
  }

  v2 = *HALS_ObjectMap::sObjectInfoList;
  v3 = *(HALS_ObjectMap::sObjectInfoList + 8);
  if (*HALS_ObjectMap::sObjectInfoList != v3)
  {
    while (*(v2 + 16) != v1)
    {
      v2 += 24;
      if (v2 == v3)
      {
        goto LABEL_10;
      }
    }
  }

  if (v2 == v3)
  {
LABEL_10:
    v4 = 0;
  }

  else
  {
    v4 = *(v2 + 8);
    ++*v2;
  }

  HALB_Mutex::Locker::~Locker(&v6);
  return v4;
}

void HALS_ObjectMap::RetainObject(HALS_ObjectMap *this, HALS_Object *a2)
{
  pthread_once(&HALS_ObjectMap::sObjectInfoListInitialized, HALS_ObjectMap::Initialize);
  if (this)
  {
    v5 = HALS_ObjectMap::sObjectInfoListMutex;
    v6 = HALB_Mutex::Lock(HALS_ObjectMap::sObjectInfoListMutex);
    if (HALS_ObjectMap::sObjectInfoList)
    {
      v3 = *HALS_ObjectMap::sObjectInfoList;
      v4 = *(HALS_ObjectMap::sObjectInfoList + 8);
      if (*HALS_ObjectMap::sObjectInfoList != v4)
      {
        while (*(v3 + 8) != this)
        {
          v3 += 24;
          if (v3 == v4)
          {
            goto LABEL_9;
          }
        }
      }

      if (v3 != v4)
      {
        ++*v3;
      }
    }

LABEL_9:
    HALB_Mutex::Locker::~Locker(&v5);
  }
}

void HALS_ObjectMap::ReleaseObject(HALS_ObjectMap *this, HALS_Object *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  pthread_once(&HALS_ObjectMap::sObjectInfoListInitialized, HALS_ObjectMap::Initialize);
  if (this)
  {
    v16 = HALS_ObjectMap::sObjectInfoListMutex;
    v17 = HALB_Mutex::Lock(HALS_ObjectMap::sObjectInfoListMutex);
    if (HALS_ObjectMap::sObjectInfoList)
    {
      v4 = *HALS_ObjectMap::sObjectInfoList;
      v3 = *(HALS_ObjectMap::sObjectInfoList + 8);
      if (*HALS_ObjectMap::sObjectInfoList != v3)
      {
        while (*(v4 + 8) != this)
        {
          v4 += 24;
          if (v4 == v3)
          {
            goto LABEL_24;
          }
        }
      }

      if (v4 != v3)
      {
        if (*v4)
        {
          v5 = *v4 - 1;
          *v4 = v5;
          if (!v5)
          {
            v6 = (*(*this + 40))(this);
            if (v6)
            {
              v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
              if ((v7 & 1) == 0)
              {
                AMCP::Log::AMCP_Scope_Registry::initialize(v6);
              }

              v9 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
              v8 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
              if (v8)
              {
                atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
                v10 = *v9;
                std::__shared_weak_count::__release_shared[abi:ne200100](v8);
              }

              else
              {
                v10 = *v9;
              }

              v6 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
              if (v6)
              {
                *buf = 136315394;
                *&buf[4] = "HALS_ObjectMap.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 348;
                _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d HALS_ObjectMap::_ReleaseObject: Destroying an active object.", buf, 0x12u);
              }
            }

            v11 = HALS_ObjectMap::sObjectInfoList;
            v12 = *(HALS_ObjectMap::sObjectInfoList + 8);
            v13 = v12 - (v4 + 24);
            if (v12 != v4 + 24)
            {
              v6 = memmove(v4, (v4 + 24), v13 - 4);
            }

            *(v11 + 8) = v4 + v13;
            HALS_ObjectMap::_ReclaimSpace(v6);
            HALS_NotificationManager::ObjectIsDead(*(this + 4));
            if ((*(*this + 40))(this) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
            {
              v14 = *(this + 4);
              *buf = 136315906;
              *&buf[4] = "HALS_ObjectMap.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 357;
              *&buf[18] = 1024;
              *&buf[20] = v14;
              LOWORD(v19) = 2048;
              *(&v19 + 2) = this;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_ObjectMap::_ReleaseObject: an active object (%d, %p) is being destroyed. This is probably a bug.", buf, 0x22u);
            }

            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 0x40000000;
            *&buf[16] = ___ZN14HALS_ObjectMap14_ReleaseObjectEP11HALS_Object_block_invoke;
            *&v19 = &__block_descriptor_tmp_19369;
            *(&v19 + 1) = this;
            AMCP::Utility::Dispatch_Queue::async(HALS_ObjectMap::sNormalPriorityQueue, buf);
          }
        }
      }
    }

LABEL_24:
    HALB_Mutex::Locker::~Locker(&v16);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void sub_1DE6F4C08(_Unwind_Exception *exception_object, int a2, ...)
{
  va_start(va, a2);
  if (a2)
  {
    HALB_Mutex::Locker::~Locker(va);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DE6F4B88);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN14HALS_ObjectMap14_ReleaseObjectEP11HALS_Object_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

void HALS_ObjectMap::ReleaseObject_LongTerm(HALS_ObjectMap *this, HALS_Object *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  pthread_once(&HALS_ObjectMap::sObjectInfoListInitialized, HALS_ObjectMap::Initialize);
  if (this)
  {
    v16 = HALS_ObjectMap::sObjectInfoListMutex;
    v17 = HALB_Mutex::Lock(HALS_ObjectMap::sObjectInfoListMutex);
    if (HALS_ObjectMap::sObjectInfoList)
    {
      v4 = *HALS_ObjectMap::sObjectInfoList;
      v3 = *(HALS_ObjectMap::sObjectInfoList + 8);
      if (*HALS_ObjectMap::sObjectInfoList != v3)
      {
        while (*(v4 + 8) != this)
        {
          v4 += 24;
          if (v4 == v3)
          {
            goto LABEL_24;
          }
        }
      }

      if (v4 != v3)
      {
        if (*v4)
        {
          v5 = *v4 - 1;
          *v4 = v5;
          if (!v5)
          {
            v6 = (*(*this + 40))(this);
            if (v6)
            {
              v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
              if ((v7 & 1) == 0)
              {
                AMCP::Log::AMCP_Scope_Registry::initialize(v6);
              }

              v9 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
              v8 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
              if (v8)
              {
                atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
                v10 = *v9;
                std::__shared_weak_count::__release_shared[abi:ne200100](v8);
              }

              else
              {
                v10 = *v9;
              }

              v6 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
              if (v6)
              {
                *buf = 136315394;
                *&buf[4] = "HALS_ObjectMap.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 430;
                _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d HALS_ObjectMap::_ReleaseObject_LongTerm: Destroying an active object.", buf, 0x12u);
              }
            }

            v11 = HALS_ObjectMap::sObjectInfoList;
            v12 = *(HALS_ObjectMap::sObjectInfoList + 8);
            v13 = v12 - (v4 + 24);
            if (v12 != v4 + 24)
            {
              v6 = memmove(v4, (v4 + 24), v13 - 4);
            }

            *(v11 + 8) = v4 + v13;
            HALS_ObjectMap::_ReclaimSpace(v6);
            HALS_NotificationManager::ObjectIsDead(*(this + 4));
            if ((*(*this + 40))(this) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
            {
              v14 = *(this + 4);
              *buf = 136315906;
              *&buf[4] = "HALS_ObjectMap.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 439;
              *&buf[18] = 1024;
              *&buf[20] = v14;
              LOWORD(v19) = 2048;
              *(&v19 + 2) = this;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_ObjectMap::_ReleaseObject_LongTerm: an active object (%d, %p) is being destroyed. This is probably a bug.", buf, 0x22u);
            }

            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 0x40000000;
            *&buf[16] = ___ZN14HALS_ObjectMap23_ReleaseObject_LongTermEP11HALS_Objectj_block_invoke;
            *&v19 = &__block_descriptor_tmp_3_19379;
            *(&v19 + 1) = this;
            AMCP::Utility::Dispatch_Queue::async(HALS_ObjectMap::sNormalPriorityQueue, buf);
          }
        }
      }
    }

LABEL_24:
    HALB_Mutex::Locker::~Locker(&v16);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void sub_1DE6F4F5C(_Unwind_Exception *exception_object, int a2, ...)
{
  va_start(va, a2);
  if (a2)
  {
    HALB_Mutex::Locker::~Locker(va);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DE6F4EDCLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN14HALS_ObjectMap23_ReleaseObject_LongTermEP11HALS_Objectj_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

void HALS_ObjectMap::ObjectIsDead(HALS_ObjectMap *this, HALS_Object *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  pthread_once(&HALS_ObjectMap::sObjectInfoListInitialized, HALS_ObjectMap::Initialize);
  if (this)
  {
    v11 = HALS_ObjectMap::sObjectInfoListMutex;
    v3 = HALB_Mutex::Lock(HALS_ObjectMap::sObjectInfoListMutex);
    v12 = v3;
    v4 = HALS_ObjectMap::sObjectInfoList;
    if (HALS_ObjectMap::sObjectInfoList)
    {
      v6 = *HALS_ObjectMap::sObjectInfoList;
      v5 = *(HALS_ObjectMap::sObjectInfoList + 8);
      if (*HALS_ObjectMap::sObjectInfoList != v5)
      {
        while (*(v6 + 8) != this)
        {
          v6 += 24;
          if (v6 == v5)
          {
            v6 = *(HALS_ObjectMap::sObjectInfoList + 8);
            break;
          }
        }
      }

      if (v5 != v6)
      {
        if (*v6)
        {
          v7 = *v6 - 1;
          *v6 = v7;
          if (!v7)
          {
            v8 = v5 - (v6 + 24);
            if (v5 != v6 + 24)
            {
              v3 = memmove(v6, (v6 + 24), v8 - 4);
            }

            *(v4 + 8) = v6 + v8;
            HALS_ObjectMap::_ReclaimSpace(v3);
            HALS_NotificationManager::ObjectIsDead(*(this + 4));
            if ((*(*this + 40))(this) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
            {
              v9 = *(this + 4);
              *buf = 136315906;
              *&buf[4] = "HALS_ObjectMap.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 474;
              *&buf[18] = 1024;
              *&buf[20] = v9;
              LOWORD(v14) = 2048;
              *(&v14 + 2) = this;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_ObjectMap::_ObjectIsDead: an active object (%d, %p) is being destroyed. This is probably a bug.", buf, 0x22u);
            }

            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 0x40000000;
            *&buf[16] = ___ZN14HALS_ObjectMap13_ObjectIsDeadEP11HALS_Object_block_invoke;
            *&v14 = &__block_descriptor_tmp_4_19383;
            *(&v14 + 1) = this;
            AMCP::Utility::Dispatch_Queue::async(HALS_ObjectMap::sNormalPriorityQueue, buf);
          }
        }
      }
    }

    HALB_Mutex::Locker::~Locker(&v11);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1DE6F51D8(_Unwind_Exception *exception_object, int a2, ...)
{
  va_start(va, a2);
  if (a2)
  {
    HALB_Mutex::Locker::~Locker(va);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DE6F51A8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN14HALS_ObjectMap13_ObjectIsDeadEP11HALS_Object_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

void HALS_ObjectMap::ObjectIsDead(HALS_ObjectMap *this)
{
  v15 = *MEMORY[0x1E69E9840];
  pthread_once(&HALS_ObjectMap::sObjectInfoListInitialized, HALS_ObjectMap::Initialize);
  if (this)
  {
    v11 = HALS_ObjectMap::sObjectInfoListMutex;
    v2 = HALB_Mutex::Lock(HALS_ObjectMap::sObjectInfoListMutex);
    v12 = v2;
    v3 = HALS_ObjectMap::sObjectInfoList;
    if (HALS_ObjectMap::sObjectInfoList)
    {
      v5 = *HALS_ObjectMap::sObjectInfoList;
      v4 = *(HALS_ObjectMap::sObjectInfoList + 8);
      if (*HALS_ObjectMap::sObjectInfoList != v4)
      {
        while (*(v5 + 16) != this)
        {
          v5 += 24;
          if (v5 == v4)
          {
            v5 = *(HALS_ObjectMap::sObjectInfoList + 8);
            break;
          }
        }
      }

      if (v4 != v5)
      {
        if (*v5)
        {
          v6 = *(v5 + 8);
          v7 = *v5 - 1;
          *v5 = v7;
          if (!v7)
          {
            v8 = v4 - (v5 + 24);
            if (v4 != v5 + 24)
            {
              v2 = memmove(v5, (v5 + 24), v8 - 4);
            }

            *(v3 + 8) = v5 + v8;
            HALS_ObjectMap::_ReclaimSpace(v2);
            HALS_NotificationManager::ObjectIsDead(this);
            if ((*(*v6 + 40))(v6) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
            {
              v9 = v6[4];
              *buf = 136315906;
              *&buf[4] = "HALS_ObjectMap.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 510;
              *&buf[18] = 1024;
              *&buf[20] = v9;
              LOWORD(v14) = 2048;
              *(&v14 + 2) = v6;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_ObjectMap::_ObjectIsDead: an active object (%d, %p) is being destroyed. This is probably a bug.", buf, 0x22u);
            }

            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 0x40000000;
            *&buf[16] = ___ZN14HALS_ObjectMap13_ObjectIsDeadEj_block_invoke;
            *&v14 = &__block_descriptor_tmp_5_19387;
            *(&v14 + 1) = v6;
            AMCP::Utility::Dispatch_Queue::async(HALS_ObjectMap::sNormalPriorityQueue, buf);
          }
        }
      }
    }

    HALB_Mutex::Locker::~Locker(&v11);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1DE6F5460(_Unwind_Exception *exception_object, int a2, ...)
{
  va_start(va, a2);
  if (a2)
  {
    HALB_Mutex::Locker::~Locker(va);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DE6F542CLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN14HALS_ObjectMap13_ObjectIsDeadEj_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

void HALS_ObjectMap::Dump(HALS_ObjectMap *this)
{
  v30 = *MEMORY[0x1E69E9840];
  pthread_once(&HALS_ObjectMap::sObjectInfoListInitialized, HALS_ObjectMap::Initialize);
  v14 = HALS_ObjectMap::sObjectInfoListMutex;
  v15 = HALB_Mutex::Lock(HALS_ObjectMap::sObjectInfoListMutex);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v19 = "HALS_ObjectMap.cpp";
    v20 = 1024;
    v21 = 529;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  \nHALS_ObjectMap::_Dump: ->", buf, 0x12u);
  }

  v1 = HALS_ObjectMap::sObjectInfoList;
  if (!HALS_ObjectMap::sObjectInfoList)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    *buf = 136315394;
    v19 = "HALS_ObjectMap.cpp";
    v20 = 1024;
    v21 = 565;
    v5 = MEMORY[0x1E69E9C10];
    v6 = "%25s:%-5d    No Object List";
LABEL_11:
    _os_log_impl(&dword_1DE1F9000, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 0x12u);
    goto LABEL_20;
  }

  v3 = *HALS_ObjectMap::sObjectInfoList;
  v2 = *(HALS_ObjectMap::sObjectInfoList + 8);
  v4 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
  if (v3 == v2)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    *buf = 136315394;
    v19 = "HALS_ObjectMap.cpp";
    v20 = 1024;
    v21 = 560;
    v5 = MEMORY[0x1E69E9C10];
    v6 = "%25s:%-5d    No Objects";
    goto LABEL_11;
  }

  if (v4)
  {
    *buf = 136315650;
    v19 = "HALS_ObjectMap.cpp";
    v20 = 1024;
    v21 = 542;
    v22 = 1024;
    v23 = -1431655765 * ((v2 - v3) >> 3);
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d    %d Objects", buf, 0x18u);
    v1 = HALS_ObjectMap::sObjectInfoList;
    v3 = *HALS_ObjectMap::sObjectInfoList;
    v2 = *(HALS_ObjectMap::sObjectInfoList + 8);
  }

  if (v3 != v2)
  {
    v7 = MEMORY[0x1E69E9C10];
    do
    {
      v8 = *(v3 + 1);
      v9 = v8[5];
      BaseClass = v8[6];
      v11 = v8[4];
      if (BaseClass == v9)
      {
        BaseClass = HALB_Info::GetBaseClass(v8[6]);
      }

      v12 = *v3;
      if (!HALB_Info::IsSubClass(v9, 1633907820))
      {
        v17[0] = HIBYTE(BaseClass);
        v17[1] = BYTE2(BaseClass);
        v17[2] = BYTE1(BaseClass);
        v17[3] = BaseClass;
        v17[4] = 0;
        v16[0] = BYTE3(v9);
        v16[1] = BYTE2(v9);
        v16[2] = BYTE1(v9);
        v16[3] = v9;
        v16[4] = 0;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316418;
          v19 = "HALS_ObjectMap.cpp";
          v20 = 1024;
          v21 = 554;
          v22 = 1024;
          v23 = v11;
          v24 = 2080;
          v25 = v16;
          v26 = 2080;
          v27 = v17;
          v28 = 2048;
          v29 = v12;
          _os_log_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d    Object ID: %4d | Class: '%s' | Base Class: '%s' | Ref: %4llu", buf, 0x36u);
          v1 = HALS_ObjectMap::sObjectInfoList;
        }
      }

      v3 += 24;
    }

    while (v3 != *(v1 + 8));
  }

LABEL_20:
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v19 = "HALS_ObjectMap.cpp";
    v20 = 1024;
    v21 = 567;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_ObjectMap::_Dump: <-\n", buf, 0x12u);
  }

  HALB_Mutex::Locker::~Locker(&v14);
  v13 = *MEMORY[0x1E69E9840];
}

void std::vector<HALS_ObjectMap::ObjectInfo>::__init_with_size[abi:ne200100]<HALS_ObjectMap::ObjectInfo*,HALS_ObjectMap::ObjectInfo*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0xAAAAAAAAAAAAAABLL)
    {
      std::allocator<HALS_ObjectMap::ObjectInfo>::allocate_at_least[abi:ne200100](a4);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }
}

void sub_1DE6F5950(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN14HALS_ObjectMap17DestroyAllObjectsEv_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t ___ZN14HALS_ObjectMap17DestroyAllObjectsEv_block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

void MutationItinerary::Reset(MutationItinerary *this)
{
  *this = 0;
  v2 = *(this + 4);
  for (i = *(this + 5); i != v2; i -= 48)
  {
    v4 = *(i - 48);
    std::__destroy_at[abi:ne200100]<MutationItinerary::Device,0>(v4);
  }

  v6 = *(this + 2);
  v5 = (this + 16);
  v5[3] = v2;
  std::__tree<std::__value_type<applesauce::CF::StringRef,BOOL>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,BOOL>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,BOOL>>>::destroy(v6);
  *v5 = 0;
  v5[1] = 0;
  *(v5 - 1) = v5;
  v5[6] = v5[5];
}

uint64_t MutationItinerary::LoadFromNegotiateResponse_util(const __CFString ***this, const DSP_Host_Types::NegotiateResponse *a2, char a3)
{
  v76 = *MEMORY[0x1E69E9840];
  MutationItinerary::Reset(this);
  v7 = *(a2 + 12);
  *this = v7 == 0;
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = a3;
  }

  *(this + 1) = v8;
  if (v7)
  {
    v9 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v9 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v6);
    }

    v11 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v10 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      v12 = *v11;
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    else
    {
      v12 = *v11;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "HALS_MutationItinerary.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 41;
      _os_log_error_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_ERROR, "%32s:%-5d Negotiate response failed", buf, 0x12u);
    }

    v45 = 0;
  }

  else
  {
    v61 = a3;
    v14 = *(a2 + 9);
    v13 = *(a2 + 10);
    for (i = a2; v14 != v13; v14 += 2)
    {
      v15 = *v14;
      if ((*v14)[64])
      {
        *buf = 0;
        buf[8] = 0;
        buf[16] = 0;
        LOBYTE(v66) = 0;
        v67 = 0;
        LOBYTE(v68) = 0;
        v69 = 0;
        LOBYTE(v70) = 0;
        v71 = 0;
        if (v15[63] < 0)
        {
          std::string::__init_copy_ctor_external(&v63, *(v15 + 5), *(v15 + 6));
        }

        else
        {
          v63 = *(v15 + 40);
        }

        if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v16 = &v63;
        }

        else
        {
          v16 = v63.__r_.__value_.__r.__words[0];
        }

        if (v16)
        {
          if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v63.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v63.__r_.__value_.__l.__size_;
          }

          v18 = CFStringCreateWithBytes(0, v16, size, 0x8000100u, 0);
          cf = v18;
          if (!v18)
          {
            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Could not construct");
            __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          *buf = v18;
          CFRetain(v18);
        }

        else
        {
          cf = 0;
          *buf = 0;
        }

        v19 = *v14;
        v20 = this[5];
        v21 = this[6];
        *&buf[8] = *(*v14 + 11);
        buf[16] = v19[96];
        v66 = *(v19 + 56);
        v67 = v19[228];
        v68 = *(v19 + 50);
        v69 = v19[204];
        v71 = v19[180];
        v70 = *(v19 + 44);
        if (v20 >= v21)
        {
          v23 = this[4];
          v24 = 0xAAAAAAAAAAAAAAABLL * ((v20 - v23) >> 4);
          v25 = v24 + 1;
          if (v24 + 1 > 0x555555555555555)
          {
            std::vector<void *>::__throw_length_error[abi:ne200100]();
          }

          v26 = 0xAAAAAAAAAAAAAAABLL * ((v21 - v23) >> 4);
          if (2 * v26 > v25)
          {
            v25 = 2 * v26;
          }

          if (v26 >= 0x2AAAAAAAAAAAAAALL)
          {
            v27 = 0x555555555555555;
          }

          else
          {
            v27 = v25;
          }

          if (v27)
          {
            std::allocator<MutationItinerary::Device>::allocate_at_least[abi:ne200100](v27);
          }

          v28 = 48 * v24;
          std::construct_at[abi:ne200100]<MutationItinerary::Device,MutationItinerary::Device const&,MutationItinerary::Device*>(48 * v24, buf);
          v30 = this[4];
          v29 = this[5];
          v31 = 48 * v24 + v30 - v29;
          if (v29 != v30)
          {
            v32 = this[4];
            v33 = (v28 + v30 - v29);
            do
            {
              *v33 = *v32;
              *v32 = 0;
              v34 = *(v32 + 1);
              v35 = *(v32 + 3);
              *(v33 + 37) = *(v32 + 37);
              *(v33 + 24) = v35;
              *(v33 + 8) = v34;
              v32 += 6;
              v33 += 48;
            }

            while (v32 != v29);
            do
            {
              v36 = *v30;
              v30 += 6;
              std::__destroy_at[abi:ne200100]<MutationItinerary::Device,0>(v36);
            }

            while (v30 != v29);
            v30 = this[4];
          }

          v22 = v28 + 48;
          this[4] = v31;
          this[5] = (v28 + 48);
          this[6] = 0;
          if (v30)
          {
            operator delete(v30);
          }
        }

        else
        {
          v22 = std::construct_at[abi:ne200100]<MutationItinerary::Device,MutationItinerary::Device const&,MutationItinerary::Device*>(v20, buf) + 48;
        }

        this[5] = v22;
        v37 = *v14;
        if ((*v14)[121] == 1)
        {
          v38 = v37[120];
        }

        else
        {
          v38 = 0;
        }

        if (v37[145] == 1)
        {
          v39 = v37[144];
        }

        else
        {
          v39 = 0;
        }

        if ((v38 | v39))
        {
          v40 = *std::__tree<std::__value_type<applesauce::CF::StringRef,BOOL>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,BOOL>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,BOOL>>>::__find_equal<applesauce::CF::StringRef>((this + 1), &v64, &cf);
          if (!v40)
          {
            operator new();
          }

          LOBYTE(v40[1].info) = 1;
        }

        if (cf)
        {
          CFRelease(cf);
        }

        if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v63.__r_.__value_.__l.__data_);
        }

        v6 = *buf;
        if (*buf)
        {
          CFRelease(*buf);
        }
      }

      else
      {
        v6 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
        if (v6)
        {
          *buf = 136315394;
          *&buf[4] = "HALS_MutationItinerary.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 49;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  Skipping DSP configuration change request entry because the provided device has no UID.", buf, 0x12u);
        }
      }
    }

    if (*(i + 3) != *(i + 4) && *(i + 6) != *(i + 7))
    {
      v41 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v41 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v6);
      }

      v43 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v42 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v42)
      {
        atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
        v44 = *v43;
        std::__shared_weak_count::__release_shared[abi:ne200100](v42);
      }

      else
      {
        v44 = *v43;
      }

      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_MutationItinerary.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 83;
        _os_log_debug_impl(&dword_1DE1F9000, v44, OS_LOG_TYPE_DEBUG, "%32s:%-5d [hal_dsp] DSP configuration change contains client formats for both input and output at the same time which is not supported.", buf, 0x12u);
      }
    }

    if (this[3])
    {
      goto LABEL_74;
    }

    v54 = this[4];
    v53 = this[5];
    if (v54 == v53)
    {
      v56 = 0;
    }

    else
    {
      v55 = v54 + 6;
      do
      {
        v56 = *(v55 - 20) | *(v55 - 32) | *(v55 - 12) | *(v55 - 4);
        if (v56)
        {
          break;
        }

        v47 = v55 == v53;
        v55 += 6;
      }

      while (!v47);
    }

    if ((v56 & 1) != 0 || this[7] != this[8])
    {
LABEL_74:
      std::map<applesauce::CF::StringRef,BOOL>::map[abi:ne200100](buf, this + 1);
      MutationItinerary::Reset(this);
      v47 = *(i + 12) == 0;
      *this = v47;
      if (v47)
      {
        v48 = v61;
      }

      else
      {
        v48 = 0;
      }

      *(this + 1) = v48;
      if (*&buf[16])
      {
        if (this + 1 != buf)
        {
          std::__tree<std::__value_type<applesauce::CF::StringRef,BOOL>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,BOOL>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,BOOL>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<applesauce::CF::StringRef,BOOL>,std::__tree_node<std::__value_type<applesauce::CF::StringRef,BOOL>,void *> *,long>>((this + 1), *buf, &buf[8]);
        }

        v49 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v49 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v46);
        }

        v51 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v50 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v50)
        {
          atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
          v52 = *v51;
          std::__shared_weak_count::__release_shared[abi:ne200100](v50);
        }

        else
        {
          v52 = *v51;
        }

        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
        {
          v72 = 136315394;
          v73 = "HALS_MutationItinerary.cpp";
          v74 = 1024;
          v75 = 110;
          _os_log_debug_impl(&dword_1DE1F9000, v52, OS_LOG_TYPE_DEBUG, "%32s:%-5d [hal_dsp][reference] DSP negotiate requests for reference stream(s) will be retained; other requests are unsupported.", &v72, 0x12u);
        }
      }

      std::__tree<std::__value_type<applesauce::CF::StringRef,BOOL>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,BOOL>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,BOOL>>>::destroy(*&buf[8]);
    }

    v45 = *this;
  }

  v57 = *MEMORY[0x1E69E9840];
  return v45 & 1;
}

void MutationItinerary::Device::~Device(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t std::construct_at[abi:ne200100]<MutationItinerary::Device,MutationItinerary::Device const&,MutationItinerary::Device*>(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  *a1 = v4;
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);
  *(a1 + 37) = *(a2 + 37);
  *(a1 + 24) = v6;
  *(a1 + 8) = v5;
  return a1;
}

std::string *MutationItinerary::util_ChangeBitmaskToString(std::string *this, int a2)
{
  this->__r_.__value_.__r.__words[0] = 0;
  this->__r_.__value_.__l.__size_ = 0;
  this->__r_.__value_.__r.__words[2] = 0;
  result = std::string::append(this, "Changes: ", 9uLL);
  if (!a2)
  {
    v5 = "<none>";
    v6 = 6;
    return std::string::append(this, v5, v6);
  }

  if ((a2 & 2) != 0)
  {
    result = std::string::append(this, "context format / ", 0x11uLL);
  }

  if ((a2 & 8) != 0)
  {
    result = std::string::append(this, "missing device / ", 0x11uLL);
  }

  if (a2)
  {
    result = std::string::append(this, "device sample rate / ", 0x15uLL);
  }

  if ((a2 & 4) != 0)
  {
    v5 = "reference stream / ";
    v6 = 19;
    return std::string::append(this, v5, v6);
  }

  return result;
}

void sub_1DE6F6390(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL MutationItinerary::AreChangesReconciled(MutationItinerary *this, const DSP_Host_Types::ConfigurationChangeRequest *a2, int *a3)
{
  DSP_Host_Types::ConfigurationChangeRequest::ConfigurationChangeRequest(&v77, a2);
  v4 = *(this + 1);
  v68 = this;
  v69 = (this + 16);
  if (v4 == (this + 16))
  {
    v5 = 0;
    goto LABEL_69;
  }

  v5 = 0;
  do
  {
    if (v5)
    {
      break;
    }

    v6 = v84;
    v71 = v85;
    if (v84 == v85)
    {
      v32 = *(v4 + 40) == 0;
      goto LABEL_55;
    }

    while (1)
    {
      if (*(*v6 + 64) != 1)
      {
        goto LABEL_50;
      }

      DSP_Dictionariable::SingleKvp<std::string>::value(v90, *v6 + 24);
      v7 = v4[4];
      if (!v7)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      applesauce::CF::convert_to<std::string,0>(&v86, v7);
      v8 = v88;
      v10 = v86;
      v9 = v87;
      size = HIBYTE(v90[0].__r_.__value_.__r.__words[2]);
      v12 = SHIBYTE(v90[0].__r_.__value_.__r.__words[2]);
      v13 = v90[0].__r_.__value_.__r.__words[0];
      if ((v90[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = v90;
      }

      else
      {
        size = v90[0].__r_.__value_.__l.__size_;
        v14 = v90[0].__r_.__value_.__r.__words[0];
      }

      if (v88 < 0)
      {
        v15 = v86;
      }

      else
      {
        v9 = v88;
        v15 = &v86;
      }

      if (v9 >= size)
      {
        v16 = size;
      }

      else
      {
        v16 = v9;
      }

      v17 = v9 == size;
      if (memcmp(v14, v15, v16))
      {
        v17 = 0;
      }

      if ((v8 & 0x8000000000000000) == 0)
      {
        if ((v12 & 0x80000000) == 0)
        {
          break;
        }

        goto LABEL_23;
      }

      operator delete(v10);
      if ((v12 & 0x80000000) == 0)
      {
        break;
      }

LABEL_23:
      operator delete(v13);
      if (v17)
      {
        goto LABEL_24;
      }

LABEL_50:
      v6 += 16;
      if (v6 == v71)
      {
        v31 = 0;
        goto LABEL_53;
      }
    }

    if (!v17)
    {
      goto LABEL_50;
    }

LABEL_24:
    v18 = *(*v6 + 712);
    v73 = *(*v6 + 720);
    if (v18 == v73)
    {
      goto LABEL_50;
    }

    v19 = v83;
    while (1)
    {
      v20 = v82[65];
      v22 = *v18;
      v21 = v18[1];
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      while (v20 != v19)
      {
        if (*(v22 + 304) == 1)
        {
          DSP_Dictionariable::SingleKvp<std::string>::value(v90, v22 + 264);
          v23 = *(v20 + 23);
          v24 = SHIBYTE(v90[0].__r_.__value_.__r.__words[2]);
          v25 = v90[0].__r_.__value_.__l.__size_;
          v26 = v90[0].__r_.__value_.__r.__words[0];
          if ((v90[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v27 = v90[0].__r_.__value_.__r.__words[0];
          }

          else
          {
            v25 = SHIBYTE(v90[0].__r_.__value_.__r.__words[2]);
            v27 = v90;
          }

          if ((v23 & 0x80u) == 0)
          {
            v28 = v20;
          }

          else
          {
            v23 = v20[1];
            v28 = *v20;
          }

          if (v23 >= v25)
          {
            v29 = v25;
          }

          else
          {
            v29 = v23;
          }

          v30 = v23 == v25;
          if (memcmp(v27, v28, v29))
          {
            v30 = 0;
          }

          if (v24 < 0)
          {
            operator delete(v26);
          }

          if (v30)
          {
            v19 = v20;
            break;
          }
        }

        v20 += 3;
      }

      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
      }

      if (v19 != v83)
      {
        break;
      }

      v18 += 2;
      v19 = v83;
      if (v18 == v73)
      {
        goto LABEL_50;
      }
    }

    v31 = 1;
LABEL_53:
    v32 = *(v4 + 40) == v31;
LABEL_55:
    if (v32)
    {
      v5 = 0;
    }

    else
    {
      v5 = 4;
    }

    v34 = v4[1];
    if (v34)
    {
      do
      {
        v35 = v34;
        v34 = v34->isa;
      }

      while (v34);
    }

    else
    {
      do
      {
        v35 = v4[2];
        v32 = *v35 == v4;
        v4 = v35;
      }

      while (!v32);
    }

    v4 = v35;
  }

  while (v35 != v69);
LABEL_69:
  v72 = v5;
  v36 = *(v68 + 4);
  v74 = *(v68 + 5);
  if (v36 == v74)
  {
    v37 = a2;
    goto LABEL_121;
  }

  v37 = a2;
  while (2)
  {
    v38 = *(v37 + 84);
    v39 = *(v37 + 85);
    v40 = *v36;
    if (*v36)
    {
      CFRetain(*v36);
    }

    v75 = *(v36 + 8);
    *v76 = *(v36 + 24);
    *&v76[13] = *(v36 + 37);
    if (v38 == v39)
    {
LABEL_95:
      if (v40)
      {
        goto LABEL_98;
      }

      goto LABEL_99;
    }

    while (2)
    {
      if (*(*v38 + 64) != 1)
      {
        goto LABEL_93;
      }

      DSP_Dictionariable::SingleKvp<std::string>::value(v90, *v38 + 24);
      if (!v40)
      {
        v65 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v65, "Could not construct");
        __cxa_throw(v65, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      applesauce::CF::convert_to<std::string,0>(&v86, v40);
      v41 = v88;
      v43 = v86;
      v42 = v87;
      v44 = HIBYTE(v90[0].__r_.__value_.__r.__words[2]);
      v45 = SHIBYTE(v90[0].__r_.__value_.__r.__words[2]);
      v46 = v90[0].__r_.__value_.__r.__words[0];
      if ((v90[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v47 = v90;
      }

      else
      {
        v44 = v90[0].__r_.__value_.__l.__size_;
        v47 = v90[0].__r_.__value_.__r.__words[0];
      }

      if (v88 < 0)
      {
        v48 = v86;
      }

      else
      {
        v42 = v88;
        v48 = &v86;
      }

      if (v42 >= v44)
      {
        v49 = v44;
      }

      else
      {
        v49 = v42;
      }

      v50 = v42 == v44;
      if (memcmp(v47, v48, v49))
      {
        v50 = 0;
      }

      if (v41 < 0)
      {
        operator delete(v43);
        if ((v45 & 0x80000000) == 0)
        {
          goto LABEL_89;
        }
      }

      else if ((v45 & 0x80000000) == 0)
      {
LABEL_89:
        if (v50)
        {
          break;
        }

        goto LABEL_93;
      }

      operator delete(v46);
      if (!v50)
      {
LABEL_93:
        v38 += 16;
        if (v38 == v39)
        {
          v38 = v39;
          v37 = a2;
          goto LABEL_95;
        }

        continue;
      }

      break;
    }

    v37 = a2;
LABEL_98:
    CFRelease(v40);
LABEL_99:
    if (v38 == *(v37 + 85))
    {
      v52 = v69;
      v53 = *v69;
      if (!*v69)
      {
        goto LABEL_110;
      }

      do
      {
        v54 = applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(v53[4], v36);
        if (v54 <= kCFCompareGreaterThan)
        {
          v52 = v53;
        }

        v53 = v53[v54 > kCFCompareGreaterThan];
      }

      while (v53);
      if (v52 != v69 && applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(*v36, v52 + 4) <= kCFCompareGreaterThan)
      {
        v55 = *(v52 + 40);
      }

      else
      {
LABEL_110:
        v55 = 0;
      }

      if (*(v36 + 16) & 1) != 0 || (*(v36 + 28) & 1) != 0 || (*(v36 + 36) & 1) != 0 || ((*(v36 + 44) | v55))
      {
        v51 = v72 | 8;
LABEL_116:
        v72 = v51;
      }
    }

    else if (*(v36 + 16) == 1 && *(*v38 + 272) == 1 && *(v36 + 8) != *(*v38 + 264))
    {
      v51 = v72 | 1;
      goto LABEL_116;
    }

    v36 += 48;
    if (v36 != v74)
    {
      continue;
    }

    break;
  }

LABEL_121:
  v56 = *(v68 + 7);
  v57 = *(v68 + 8);
  v58 = v72;
  if (v56 != v57)
  {
    LOBYTE(v59) = 0;
    while ((v59 & 1) == 0)
    {
      v60 = *v56;
      DSP_Host_Types::FormatDescription::get_asbd(v90, v37 + 120);
      if (v60 == *&v90[0].__r_.__value_.__l.__data_ && (v61 = *(v56 + 28), DSP_Host_Types::FormatDescription::get_asbd(&v86, a2 + 120), v32 = v61 == v89, v37 = a2, v32))
      {
        v56 += 40;
        LOBYTE(v59) = 1;
        if (v56 == v57)
        {
          break;
        }
      }

      else
      {
        v62 = *v56;
        DSP_Host_Types::FormatDescription::get_asbd(v90, v37 + 272);
        if (v62 == *&v90[0].__r_.__value_.__l.__data_)
        {
          v63 = *(v56 + 28);
          DSP_Host_Types::FormatDescription::get_asbd(&v86, a2 + 272);
          v32 = v63 == v89;
          v37 = a2;
          v59 = v32;
        }

        else
        {
          v59 = 0;
        }

        v56 += 40;
        if (v56 == v57)
        {
          if (!v59)
          {
            v58 = v72 | 2;
          }

          break;
        }
      }
    }
  }

  if (a3)
  {
    *a3 = v58;
  }

  v77 = &unk_1F598DC40;
  v90[0].__r_.__value_.__r.__words[0] = &v84;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](v90);
  DSP_Host_Types::IOContextDescription::~IOContextDescription(v82);
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(&v81);
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(&v80);
  v77 = &unk_1F598DC90;
  if (v79 == 1 && cf)
  {
    CFRelease(cf);
  }

  return v58 == 0;
}

void sub_1DE6F6A2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  if (*(v13 - 121) < 0)
  {
    operator delete(*(v13 - 144));
  }

  MutationItinerary::AreChangesReconciled(DSP_Host_Types::ConfigurationChangeRequest const&,int *)const::$_0::~$_0(va);
  _Unwind_Resume(a1);
}

const void **MutationItinerary::AreChangesReconciled(DSP_Host_Types::ConfigurationChangeRequest const&,int *)const::$_1::~$_1(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t DSP_Host_Types::FormatDescription::get_asbd(uint64_t this, uint64_t a2)
{
  if (*(a2 + 124) == 1)
  {
    v2 = *(a2 + 120);
  }

  else
  {
    v2 = 0;
  }

  if (*(a2 + 48) == 1)
  {
    v3 = *(a2 + 40);
  }

  else
  {
    v3 = 48000.0;
  }

  if (*(a2 + 76) == 1)
  {
    v4 = *(a2 + 72);
  }

  else
  {
    v4 = 1;
  }

  if (*(a2 + 97) == 1)
  {
    v5 = *(a2 + 96);
  }

  else
  {
    v5 = 1;
  }

  v6 = 0.0;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v26 = (v5 & 1) == 0;
      if (v5)
      {
        v12 = 3084;
      }

      else
      {
        v12 = 3116;
      }

      v13 = 4 * v4;
      if (v26)
      {
        v13 = 4;
      }

      v15 = 32;
    }

    else
    {
      if (v2 != 4)
      {
        v7 = (v5 & 1) == 0;
        if (v5)
        {
          v8 = 12;
        }

        else
        {
          v8 = 44;
        }

        v9 = 4 * v4;
        if (v7)
        {
          v9 = 4;
        }

        v10 = v2 == 5;
        if (v2 == 5)
        {
          v11 = 1819304813;
        }

        else
        {
          v3 = 0.0;
          v11 = 0;
        }

        if (v2 == 5)
        {
          v12 = v8;
        }

        else
        {
          v12 = 0;
        }

        if (v10)
        {
          v13 = v9;
        }

        else
        {
          v13 = 0;
        }

        v14 = v10;
        if (v10)
        {
          v15 = 32;
        }

        else
        {
          v4 = 0;
          v15 = 0;
        }

        goto LABEL_89;
      }

      v27 = (v5 & 1) == 0;
      if (v5)
      {
        v12 = 9;
      }

      else
      {
        v12 = 41;
      }

      v13 = 8 * v4;
      if (v27)
      {
        v13 = 8;
      }

      v15 = 64;
    }

    v14 = 1;
    v11 = 1819304813;
    goto LABEL_89;
  }

  if (v5)
  {
    v16 = 9;
  }

  else
  {
    v16 = 41;
  }

  v17 = 4 * v4;
  if ((v5 & 1) == 0)
  {
    v17 = 4;
  }

  v18 = (v5 & 1) == 0;
  if (v5)
  {
    v19 = 12;
  }

  else
  {
    v19 = 44;
  }

  v20 = 2 * v4;
  if (v18)
  {
    v20 = 2;
  }

  if (v2 == 2)
  {
    v6 = v3;
    v21 = 1819304813;
  }

  else
  {
    v21 = 0;
  }

  if (v2 != 2)
  {
    v19 = 0;
    v20 = 0;
  }

  v22 = v2 == 2;
  if (v2 == 2)
  {
    v23 = v4;
  }

  else
  {
    v23 = 0;
  }

  if (v2 == 2)
  {
    v24 = 16;
  }

  else
  {
    v24 = 0;
  }

  v25 = v2 == 1;
  if (v2 == 1)
  {
    v11 = 1819304813;
  }

  else
  {
    v3 = v6;
    v11 = v21;
  }

  if (v2 == 1)
  {
    v12 = v16;
  }

  else
  {
    v12 = v19;
  }

  if (v25)
  {
    v13 = v17;
  }

  else
  {
    v13 = v20;
  }

  v14 = v25 || v22;
  if (v25)
  {
    v15 = 32;
  }

  else
  {
    v4 = v23;
    v15 = v24;
  }

LABEL_89:
  *this = v3;
  *(this + 8) = v11;
  *(this + 12) = v12;
  *(this + 16) = v13;
  *(this + 20) = v14;
  *(this + 24) = v13;
  *(this + 28) = v4;
  *(this + 32) = v15;
  *(this + 36) = 0;
  return this;
}

uint64_t MutationItinerary::AreChangesReconciled(DSP_Host_Types::ConfigurationChangeRequest const&,int *)const::$_0::~$_0(uint64_t a1)
{
  *a1 = &unk_1F598DC40;
  v4 = (a1 + 672);
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&v4);
  DSP_Host_Types::IOContextDescription::~IOContextDescription((a1 + 72));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((a1 + 48));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((a1 + 24));
  *a1 = &unk_1F598DC90;
  if (*(a1 + 16) == 1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

uint64_t HALS_Device::ExecuteWorkSyncOnConfigChangeQueue(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v4 = *(*v3 + 48);

  return v4();
}

void HALS_Device::PerformNonDriverConfigChange(HALS_Device *this)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v1 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(this);
  }

  v3 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v2 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v3;
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  else
  {
    v4 = *v3;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315394;
    v7 = "HALS_Device.cpp";
    v8 = 1024;
    v9 = 6164;
    _os_log_error_impl(&dword_1DE1F9000, v4, OS_LOG_TYPE_ERROR, "%32s:%-5d PerformNonDriverConfigChange() remains unimplemented for this type of device", &v6, 0x12u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t *HALS_Device::CopyDSPSettingsForClient@<X0>(HALS_Device *this@<X0>, HALS_Client *a2@<X2>, char a3@<W1>, void *a4@<X8>)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3002000000;
  v13 = __Block_byref_object_copy__296;
  v14 = __Block_byref_object_dispose__297;
  v15 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = ___ZNK11HALS_Device24CopyDSPSettingsForClientEbP11HALS_Client_block_invoke;
  v8[3] = &unk_1E8679318;
  v8[4] = &v10;
  v8[5] = this;
  v9 = a3;
  v8[6] = a2;
  v5 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v5, v8);
  v6 = v11[5];
  v11[5] = 0;
  *a4 = v6;
  _Block_object_dispose(&v10, 8);
  return std::unique_ptr<DSP_Host_OffloadDictionary>::reset[abi:ne200100](&v15, 0);
}

void sub_1DE6F6FB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  std::unique_ptr<DSP_Host_OffloadDictionary>::reset[abi:ne200100]((v9 + 40), 0);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__296(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  return result;
}

uint64_t *___ZNK11HALS_Device24CopyDSPSettingsForClientEbP11HALS_Client_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 632);
  if (v2)
  {
    HALS_Device_HostedDSP::CopyDSPSettingsForClient(&v6, *v2, *(a1 + 56), *(a1 + 48));
    v3 = v6;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(*(a1 + 32) + 8);
  v6 = 0;
  std::unique_ptr<DSP_Host_OffloadDictionary>::reset[abi:ne200100]((v4 + 40), v3);
  return std::unique_ptr<DSP_Host_OffloadDictionary>::reset[abi:ne200100](&v6, 0);
}

void sub_1DE6F7068(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t HALS_Device::HandleHostedDSPConfigurationChange(HALS_Device *this, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v4 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(this);
  }

  v6 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v5 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v7 = *v6;
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  else
  {
    v7 = *v6;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(this + 4);
    v11 = 136315906;
    v12 = "HALS_Device.cpp";
    v13 = 1024;
    v14 = 5809;
    v15 = 1024;
    v16 = v10;
    v17 = 1024;
    v18 = a2;
    _os_log_debug_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_DEBUG, "%32s:%-5d [ahal_dsp] Hosted DSP changed (Device ID: %d) (Client ID: %d).", &v11, 0x1Eu);
  }

  result = (*(*this + 992))(this, 1, a2);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void HALS_Device::GetDefaultChannelLayoutPropertyData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, uint64_t a11, unsigned int a12)
{
  v12 = a12;
  *a6 = 0;
  *(a6 + 8) = a12;
  if (a12)
  {
    v13 = (a6 + 16);
    do
    {
      *(v13 - 1) = -1;
      *v13 = 0;
      v13[1] = 0;
      v13 = (v13 + 20);
      --v12;
    }

    while (v12);
  }

  *a5 = a10;
}

void HALS_Device::GetNearestStartTime(HALS_Device *this, AudioTimeStamp *a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  if (((*(*this + 840))(this) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "HALS_Device.cpp";
      v15 = 1024;
      v16 = 2512;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::GetNearestStartTime: no IO context", &v13, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1970171760;
  }

  InternalIOContextID = HALS_Device::GetInternalIOContextID(this);
  v7 = HALS_ObjectMap::CopyObjectByObjectID(InternalIOContextID);
  v8 = v7;
  if (!v7)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "HALS_Device.cpp";
      v15 = 1024;
      v16 = 2514;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::GetNearestStartTime: couldn't find the IO context", &v13, 0x12u);
    }

    v12 = __cxa_allocate_exception(0x10uLL);
    *v12 = off_1F5991DD8;
    v12[2] = 1852797029;
  }

  (*(**(v7 + 104) + 520))(*(v7 + 104), a2, a3);
  HALS_ObjectMap::ReleaseObject(v8, v9);
  v10 = *MEMORY[0x1E69E9840];
}

void sub_1DE6F7464(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t HALS_Device::GetInternalIOContextID(HALS_Device *this)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  if ((*(*this + 840))(this))
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 0x40000000;
    v5[2] = ___ZNK11HALS_Device22GetInternalIOContextIDEv_block_invoke;
    v5[3] = &unk_1E8678C38;
    v5[4] = &v6;
    v5[5] = this;
    v2 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v2, v5);
  }

  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void sub_1DE6F759C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void HALS_Device::TranslateTime(HALS_Device *this, const AudioTimeStamp *a2, AudioTimeStamp *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  if (((*(*this + 840))(this) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "HALS_Device.cpp";
      v15 = 1024;
      v16 = 2504;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::TranslateTime: no IO context", &v13, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1970171760;
  }

  InternalIOContextID = HALS_Device::GetInternalIOContextID(this);
  v7 = HALS_ObjectMap::CopyObjectByObjectID(InternalIOContextID);
  v8 = v7;
  if (!v7)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "HALS_Device.cpp";
      v15 = 1024;
      v16 = 2506;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::TranslateTime: couldn't find the IO context", &v13, 0x12u);
    }

    v12 = __cxa_allocate_exception(0x10uLL);
    *v12 = off_1F5991DD8;
    v12[2] = 1852797029;
  }

  (*(**(v7 + 104) + 512))(*(v7 + 104), a2, a3);
  HALS_ObjectMap::ReleaseObject(v8, v9);
  v10 = *MEMORY[0x1E69E9840];
}

void sub_1DE6F7818(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void HALS_Device::GetCurrentTime(HALS_Device *this, AudioTimeStamp *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (((*(*this + 840))(this) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "HALS_Device.cpp";
      v13 = 1024;
      v14 = 2496;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::GetCurrentTime: no IO context", &v11, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1970171760;
  }

  InternalIOContextID = HALS_Device::GetInternalIOContextID(this);
  v5 = HALS_ObjectMap::CopyObjectByObjectID(InternalIOContextID);
  v6 = v5;
  if (!v5)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "HALS_Device.cpp";
      v13 = 1024;
      v14 = 2498;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::GetCurrentTime: couldn't find the IO context", &v11, 0x12u);
    }

    v10 = __cxa_allocate_exception(0x10uLL);
    *v10 = off_1F5991DD8;
    v10[2] = 1852797029;
  }

  (*(**(v5 + 104) + 504))(*(v5 + 104), a2);
  HALS_ObjectMap::ReleaseObject(v6, v7);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1DE6F7A8C(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void HALS_Device::Server_Internal_StopIOProcID(HALS_Device *this, int (*a2)(unsigned int, const AudioTimeStamp *, const AudioBufferList *, const AudioTimeStamp *, AudioBufferList *, const AudioTimeStamp *, void *))
{
  v15 = *MEMORY[0x1E69E9840];
  if (((*(*this + 840))(this) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "HALS_Device.cpp";
      v13 = 1024;
      v14 = 2488;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::Server_Internal_StopIOProcID: no IO context", &v11, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1970171760;
  }

  InternalIOContextID = HALS_Device::GetInternalIOContextID(this);
  v5 = HALS_ObjectMap::CopyObjectByObjectID(InternalIOContextID);
  v6 = v5;
  if (!v5)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "HALS_Device.cpp";
      v13 = 1024;
      v14 = 2490;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::Server_Internal_StopIOProcID: couldn't find the IO context", &v11, 0x12u);
    }

    v10 = __cxa_allocate_exception(0x10uLL);
    *v10 = off_1F5991DD8;
    v10[2] = 1852797029;
  }

  (*(**(v5 + 104) + 536))(*(v5 + 104), a2);
  HALS_ObjectMap::ReleaseObject(v6, v7);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1DE6F7D00(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void HALS_Device::Server_Internal_StartIOProcIDAtTime(HALS_Device *this, int (*a2)(unsigned int, const AudioTimeStamp *, const AudioBufferList *, const AudioTimeStamp *, AudioBufferList *, const AudioTimeStamp *, void *), AudioTimeStamp *a3, uint64_t a4)
{
  v19 = *MEMORY[0x1E69E9840];
  if (((*(*this + 840))(this) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = 136315394;
      v16 = "HALS_Device.cpp";
      v17 = 1024;
      v18 = 2480;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::Server_Internal_StartIOProcIDAtTime: no IO context", &v15, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1970171760;
  }

  InternalIOContextID = HALS_Device::GetInternalIOContextID(this);
  v9 = HALS_ObjectMap::CopyObjectByObjectID(InternalIOContextID);
  v10 = v9;
  if (!v9)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = 136315394;
      v16 = "HALS_Device.cpp";
      v17 = 1024;
      v18 = 2482;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::Server_Internal_StartIOProcIDAtTime: couldn't find the IO context", &v15, 0x12u);
    }

    v14 = __cxa_allocate_exception(0x10uLL);
    *v14 = off_1F5991DD8;
    v14[2] = 1852797029;
  }

  HALS_IOContext::Server_Internal_StartIOProcID(v9, a2, a3, a4);
  HALS_ObjectMap::ReleaseObject(v10, v11);
  v12 = *MEMORY[0x1E69E9840];
}

void sub_1DE6F7F64(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void HALS_Device::Server_Internal_StartIOProcID(HALS_Device *this, int (*a2)(unsigned int, const AudioTimeStamp *, const AudioBufferList *, const AudioTimeStamp *, AudioBufferList *, const AudioTimeStamp *, void *))
{
  v15 = *MEMORY[0x1E69E9840];
  if (((*(*this + 840))(this) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "HALS_Device.cpp";
      v13 = 1024;
      v14 = 2472;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::Server_Internal_StartIOProcID: no IO context", &v11, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1970171760;
  }

  InternalIOContextID = HALS_Device::GetInternalIOContextID(this);
  v5 = HALS_ObjectMap::CopyObjectByObjectID(InternalIOContextID);
  v6 = v5;
  if (!v5)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "HALS_Device.cpp";
      v13 = 1024;
      v14 = 2474;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::Server_Internal_StartIOProcID: couldn't find the IO context", &v11, 0x12u);
    }

    v10 = __cxa_allocate_exception(0x10uLL);
    *v10 = off_1F5991DD8;
    v10[2] = 1852797029;
  }

  HALS_IOContext::Server_Internal_StartIOProcID(v5, a2, 0, 0);
  HALS_ObjectMap::ReleaseObject(v6, v7);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1DE6F81B8(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void HALS_Device::Server_Internal_RemoveIOProc(HALS_Device *this, int (*a2)(unsigned int, const AudioTimeStamp *, const AudioBufferList *, const AudioTimeStamp *, AudioBufferList *, const AudioTimeStamp *, void *))
{
  v12 = *MEMORY[0x1E69E9840];
  if (((*(*this + 840))(this) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v11 = 136315394;
      *&v11[4] = "HALS_Device.cpp";
      *&v11[12] = 1024;
      *&v11[14] = 2464;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::RemoveIOProc: no IO context", v11, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1970171760;
  }

  InternalIOContextID = HALS_Device::GetInternalIOContextID(this);
  v5 = HALS_ObjectMap::CopyObjectByObjectID(InternalIOContextID);
  v6 = v5;
  if (!v5)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v11 = 136315394;
      *&v11[4] = "HALS_Device.cpp";
      *&v11[12] = 1024;
      *&v11[14] = 2466;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::RemoveIOProc: couldn't find the IO context", v11, 0x12u);
    }

    v10 = __cxa_allocate_exception(0x10uLL);
    *v10 = off_1F5991DD8;
    v10[2] = 1852797029;
  }

  *v11 = v5;
  *&v11[8] = a2;
  (*(**(v5 + 104) + 376))(*(v5 + 104), caulk::function_ref<void ()(void)>::functor_invoker<HALS_IOContext::Server_Internal_RemoveIOProc(int (*)(unsigned int,AudioTimeStamp const*,AudioBufferList const*,AudioTimeStamp const*,AudioBufferList*,AudioTimeStamp const*,void *))::$_0>, v11);
  HALS_ObjectMap::ReleaseObject(v6, v7);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1DE6F8440(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}