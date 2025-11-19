void sub_1DE4EB720(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, std::runtime_error a20, char a21)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a12);
  if (*(v23 - 121) < 0)
  {
    operator delete(*(v23 - 144));
  }

  applesauce::CF::StringRef::~StringRef(v22);
  v25 = *(v21 + 64);
  if (v25)
  {
    std::__shared_weak_count::__release_weak(v25);
  }

  applesauce::CF::DictionaryRef::~DictionaryRef((v21 + 48));
  v26 = *(v21 + 32);
  if (v26)
  {
    std::__shared_weak_count::__release_weak(v26);
  }

  *v21 = &unk_1F59748E8;
  v27 = *(v21 + 16);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<AMCP::Null::Object>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F59775F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void sub_1DE4ECE5C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __clang_call_terminate(a1);
}

uint64_t std::__optional_destruct_base<AMCP::Thing,false>::__optional_destruct_base[abi:ne200100]<AMCP::Thing>(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v3 = *(a2 + 32);
  if (v3)
  {
    v3(2);
  }

  *(a1 + 40) = 1;
  return a1;
}

void AMCP::Null::make_properties<1953653102u>(CFDictionaryRef *a1, void *a2, uint64_t a3)
{
  strcpy(v14, "nartbolg");
  BYTE1(v14[2]) = 0;
  HIWORD(v14[2]) = 0;
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  if (!*a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  AMCP::Address::to_string(&bytes, v14, 0);
  size = SHIBYTE(bytes.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(bytes.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    p_bytes = bytes.__r_.__value_.__r.__words[0];
    if (!bytes.__r_.__value_.__r.__words[0])
    {
      v21[0] = 0;
      applesauce::CF::details::find_at_key_or_optional<applesauce::CF::TypeRef,applesauce::CF::StringRef>(&cf, *a1, 0);
      goto LABEL_8;
    }

    size = bytes.__r_.__value_.__l.__size_;
  }

  else
  {
    p_bytes = &bytes;
  }

  v8 = CFStringCreateWithBytes(0, p_bytes, size, 0x8000100u, 0);
  v21[0] = v8;
  if (!v8)
  {
    v13 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v13, "Could not construct");
    __cxa_throw(v13, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::TypeRef,applesauce::CF::StringRef>(&cf, *a1, v8);
  CFRelease(v8);
LABEL_8:
  if (SHIBYTE(bytes.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(bytes.__r_.__value_.__l.__data_);
  }

  v10 = v18;
  if (v18 == 1)
  {
    AMCP::make_thing_from_description(&bytes, &cf);
    AMCP::swap(&bytes, v19, v11);
    if (v16)
    {
      v16(0, &bytes, 0, 0);
    }
  }

  else if (*(a3 + 40) == 1)
  {
    AMCP::Thing::operator=(v19, a3, v9);
  }

  if (v20)
  {
    LODWORD(v21[0]) = 1953653102;
    *(v21 + 4) = *&v14[1];
    AMCP::Core::Operation_Utilities::make_generic_constant_property<unsigned int>(&bytes, v21, v19);
  }

  *&bytes.__r_.__value_.__l.__data_ = 0uLL;
  if (v10 && cf)
  {
    CFRelease(cf);
  }

  if (v20)
  {
    v20(0, v19, 0, 0);
  }

  if (bytes.__r_.__value_.__r.__words[0])
  {
    std::unordered_map<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,std::shared_ptr<AMCP::Core::Operation>>>>::insert_or_assign[abi:ne200100]<std::shared_ptr<AMCP::Core::Operation> const&>(a2, (bytes.__r_.__value_.__r.__words[0] + 40), &bytes);
  }

  if (bytes.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](bytes.__r_.__value_.__l.__size_);
  }
}

void AMCP::Core::Operation_Utilities::make_generic_constant_property<BOOL>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  v3 = *(a3 + 32);
  if (v3)
  {
    v3(1, a3, v4, 0);
  }

  std::allocate_shared[abi:ne200100]<AMCP::Core::Operation,std::allocator<AMCP::Core::Operation>,AMCP::Address const&,0>();
}

void sub_1DE4ED454(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void AMCP::Core::Operation_Utilities::make_generic_constant_property<unsigned int>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  v3 = *(a3 + 32);
  if (v3)
  {
    v3(1, a3, v4, 0);
  }

  std::allocate_shared[abi:ne200100]<AMCP::Core::Operation,std::allocator<AMCP::Core::Operation>,AMCP::Address const&,0>();
}

void sub_1DE4ED68C(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void AMCP::Core::Operation_Utilities::make_generic_constant_property<std::vector<unsigned int>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  v3 = *(a3 + 32);
  if (v3)
  {
    v3(1, a3, v4, 0);
  }

  std::allocate_shared[abi:ne200100]<AMCP::Core::Operation,std::allocator<AMCP::Core::Operation>,AMCP::Address const&,0>();
}

void sub_1DE4ED8C4(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t AMCP::Core::Operation_Utilities::make_generic_constant_property<std::vector<unsigned int>>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}::~Thing(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2(0, a1, 0, 0);
  }

  return a1;
}

void AMCP::Core::Operation_Utilities::add_specific_property_getter<std::vector<unsigned int>>(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(&v5, a1);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v18 = AMCP::Implementation::get_type_marker<std::function<std::vector<unsigned int> ()(void)>>();
  v2 = v5;
  v3 = v6;
  v5 = 0;
  v6 = 0;
  v12 = v2;
  v13 = v3;
  v14[0] = v7;
  v14[1] = v8;
  v15 = v9;
  if (v8)
  {
    v4 = *(v7 + 8);
    if ((v3 & (v3 - 1)) != 0)
    {
      if (v4 >= v3)
      {
        v4 %= v3;
      }
    }

    else
    {
      v4 &= v3 - 1;
    }

    *(v2 + 8 * v4) = v14;
    v7 = 0;
    v8 = 0;
  }

  v16 = v10;
  v17 = v11;
  v19 = 0;
  operator new();
}

void sub_1DE4EDB14(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<std::vector<unsigned int>>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<std::vector<unsigned int>>(AMCP::Core::Operation &)::{lambda(void)#1}>,std::vector<unsigned int> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities28add_specific_property_getterINSt3__16vectorIjNS3_9allocatorIjEEEEEEvRNS0_9OperationEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<std::vector<unsigned int>>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<std::vector<unsigned int>>(AMCP::Core::Operation &)::{lambda(void)#1}>,std::vector<unsigned int> ()(void)>::operator()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  AMCP::Core::Operation::call_function<AMCP::Thing>(v4, (a1 + 8));
  result = AMCP::Thing::convert_to<std::vector<unsigned int>>(a2, v4);
  if (v5)
  {
    return v5(0, v4, 0, 0);
  }

  return result;
}

void sub_1DE4EDBD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<std::vector<unsigned int>>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<std::vector<unsigned int>>(AMCP::Core::Operation &)::{lambda(void)#1}>,std::vector<unsigned int> ()(void)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

double std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<std::vector<unsigned int>>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<std::vector<unsigned int>>(AMCP::Core::Operation &)::{lambda(void)#1}>,std::vector<unsigned int> ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5975788;
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(a2 + 8, a1 + 8);
  result = *(a1 + 48);
  *(a2 + 48) = result;
  *(a2 + 56) = *(a1 + 56);
  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<std::vector<unsigned int>>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<std::vector<unsigned int>>(AMCP::Core::Operation &)::{lambda(void)#1}>,std::vector<unsigned int> ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5975788;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<std::vector<unsigned int>>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<std::vector<unsigned int>>(AMCP::Core::Operation &)::{lambda(void)#1}>,std::vector<unsigned int> ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5975788;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));
  return a1;
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<std::vector<unsigned int>>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<std::vector<unsigned int>>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities30make_generic_constant_propertyINSt3__16vectorIjNS3_9allocatorIjEEEEEENS3_10shared_ptrINS0_9OperationEEERKNS_7AddressERKNS_5ThingEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<std::vector<unsigned int>>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<std::vector<unsigned int>>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::operator()@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v2 = *(result + 40);
  if (v2)
  {
    return v2(1, result + 8, a2, 0);
  }

  return result;
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<std::vector<unsigned int>>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<std::vector<unsigned int>>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[5];
  if (v2)
  {
    v2(0, __p + 1, 0, 0);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<std::vector<unsigned int>>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<std::vector<unsigned int>>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    return v1(0, result + 8, 0, 0);
  }

  return result;
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<std::vector<unsigned int>>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<std::vector<unsigned int>>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5975708;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0;
  *(a2 + 8) = 0u;
  v2 = *(result + 40);
  if (v2)
  {
    return v2(1, result + 8, a2 + 8, 0);
  }

  return result;
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<std::vector<unsigned int>>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<std::vector<unsigned int>>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5975708;
  v1 = a1[5];
  if (v1)
  {
    v1(0, a1 + 1, 0, 0);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<std::vector<unsigned int>>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<std::vector<unsigned int>>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5975708;
  v2 = a1[5];
  if (v2)
  {
    v2(0, a1 + 1, 0, 0);
  }

  return a1;
}

uint64_t AMCP::Core::Operation_Utilities::make_generic_constant_property<unsigned int>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}::~Thing(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2(0, a1, 0, 0);
  }

  return a1;
}

void AMCP::Core::Operation_Utilities::add_specific_property_getter<unsigned int>(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(&v5, a1);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v18 = AMCP::Implementation::get_type_marker<std::function<unsigned int ()(void)>>();
  v2 = v5;
  v3 = v6;
  v5 = 0;
  v6 = 0;
  v12 = v2;
  v13 = v3;
  v14[0] = v7;
  v14[1] = v8;
  v15 = v9;
  if (v8)
  {
    v4 = *(v7 + 8);
    if ((v3 & (v3 - 1)) != 0)
    {
      if (v4 >= v3)
      {
        v4 %= v3;
      }
    }

    else
    {
      v4 &= v3 - 1;
    }

    *(v2 + 8 * v4) = v14;
    v7 = 0;
    v8 = 0;
  }

  v16 = v10;
  v17 = v11;
  v19 = 0;
  operator new();
}

void sub_1DE4EE26C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<unsigned int>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<unsigned int>(AMCP::Core::Operation &)::{lambda(void)#1}>,unsigned int ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities28add_specific_property_getterIjEEvRNS0_9OperationEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<unsigned int>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<unsigned int>(AMCP::Core::Operation &)::{lambda(void)#1}>,unsigned int ()(void)>::operator()(uint64_t a1)
{
  AMCP::Core::Operation::call_function<AMCP::Thing>(v3, (a1 + 8));
  v1 = AMCP::Thing::convert_to<unsigned int>(v3);
  if (v4)
  {
    v4(0, v3, 0, 0);
  }

  return v1;
}

void sub_1DE4EE330(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<unsigned int>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<unsigned int>(AMCP::Core::Operation &)::{lambda(void)#1}>,unsigned int ()(void)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

double std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<unsigned int>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<unsigned int>(AMCP::Core::Operation &)::{lambda(void)#1}>,unsigned int ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5975588;
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(a2 + 8, a1 + 8);
  result = *(a1 + 48);
  *(a2 + 48) = result;
  *(a2 + 56) = *(a1 + 56);
  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<unsigned int>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<unsigned int>(AMCP::Core::Operation &)::{lambda(void)#1}>,unsigned int ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5975588;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<unsigned int>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<unsigned int>(AMCP::Core::Operation &)::{lambda(void)#1}>,unsigned int ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5975588;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));
  return a1;
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<unsigned int>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<unsigned int>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities30make_generic_constant_propertyIjEENSt3__110shared_ptrINS0_9OperationEEERKNS_7AddressERKNS_5ThingEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<unsigned int>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<unsigned int>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::operator()@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v2 = *(result + 40);
  if (v2)
  {
    return v2(1, result + 8, a2, 0);
  }

  return result;
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<unsigned int>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<unsigned int>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[5];
  if (v2)
  {
    v2(0, __p + 1, 0, 0);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<unsigned int>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<unsigned int>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    return v1(0, result + 8, 0, 0);
  }

  return result;
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<unsigned int>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<unsigned int>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5975508;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0;
  *(a2 + 8) = 0u;
  v2 = *(result + 40);
  if (v2)
  {
    return v2(1, result + 8, a2 + 8, 0);
  }

  return result;
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<unsigned int>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<unsigned int>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5975508;
  v1 = a1[5];
  if (v1)
  {
    v1(0, a1 + 1, 0, 0);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<unsigned int>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<unsigned int>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5975508;
  v2 = a1[5];
  if (v2)
  {
    v2(0, a1 + 1, 0, 0);
  }

  return a1;
}

uint64_t AMCP::Core::Operation_Utilities::make_generic_constant_property<BOOL>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}::~Thing(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2(0, a1, 0, 0);
  }

  return a1;
}

void AMCP::Core::Operation_Utilities::add_specific_property_getter<BOOL>(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(&v5, a1);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v18 = AMCP::Implementation::get_type_marker<std::function<BOOL ()(void)>>();
  v2 = v5;
  v3 = v6;
  v5 = 0;
  v6 = 0;
  v12 = v2;
  v13 = v3;
  v14[0] = v7;
  v14[1] = v8;
  v15 = v9;
  if (v8)
  {
    v4 = *(v7 + 8);
    if ((v3 & (v3 - 1)) != 0)
    {
      if (v4 >= v3)
      {
        v4 %= v3;
      }
    }

    else
    {
      v4 &= v3 - 1;
    }

    *(v2 + 8 * v4) = v14;
    v7 = 0;
    v8 = 0;
  }

  v16 = v10;
  v17 = v11;
  v19 = 0;
  operator new();
}

void sub_1DE4EE9C4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<BOOL>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<BOOL>(AMCP::Core::Operation &)::{lambda(void)#1}>,BOOL ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities28add_specific_property_getterIbEEvRNS0_9OperationEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<BOOL>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<BOOL>(AMCP::Core::Operation &)::{lambda(void)#1}>,BOOL ()(void)>::operator()(uint64_t a1)
{
  AMCP::Core::Operation::call_function<AMCP::Thing>(v3, (a1 + 8));
  v1 = AMCP::Thing::convert_to<BOOL>(v3);
  if (v4)
  {
    v4(0, v3, 0, 0);
  }

  return v1;
}

void sub_1DE4EEA88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<BOOL>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<BOOL>(AMCP::Core::Operation &)::{lambda(void)#1}>,BOOL ()(void)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

double std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<BOOL>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<BOOL>(AMCP::Core::Operation &)::{lambda(void)#1}>,BOOL ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5975688;
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(a2 + 8, a1 + 8);
  result = *(a1 + 48);
  *(a2 + 48) = result;
  *(a2 + 56) = *(a1 + 56);
  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<BOOL>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<BOOL>(AMCP::Core::Operation &)::{lambda(void)#1}>,BOOL ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5975688;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<BOOL>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<BOOL>(AMCP::Core::Operation &)::{lambda(void)#1}>,BOOL ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5975688;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));
  return a1;
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<BOOL>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<BOOL>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities30make_generic_constant_propertyIbEENSt3__110shared_ptrINS0_9OperationEEERKNS_7AddressERKNS_5ThingEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<BOOL>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<BOOL>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::operator()@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v2 = *(result + 40);
  if (v2)
  {
    return v2(1, result + 8, a2, 0);
  }

  return result;
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<BOOL>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<BOOL>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[5];
  if (v2)
  {
    v2(0, __p + 1, 0, 0);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<BOOL>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<BOOL>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    return v1(0, result + 8, 0, 0);
  }

  return result;
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<BOOL>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<BOOL>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5975608;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0;
  *(a2 + 8) = 0u;
  v2 = *(result + 40);
  if (v2)
  {
    return v2(1, result + 8, a2 + 8, 0);
  }

  return result;
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<BOOL>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<BOOL>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5975608;
  v1 = a1[5];
  if (v1)
  {
    v1(0, a1 + 1, 0, 0);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<BOOL>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<BOOL>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5975608;
  v2 = a1[5];
  if (v2)
  {
    v2(0, a1 + 1, 0, 0);
  }

  return a1;
}

void AMCP::Null::Object::build_cores(AMCP::Null::Object *this)
{
  v56 = *MEMORY[0x1E69E9840];
  if (*(this + 22))
  {
    v35 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v35 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(this);
    }

    v37 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v36 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v36)
    {
      atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
      v38 = *v37;
      std::__shared_weak_count::__release_shared[abi:ne200100](v36);
    }

    else
    {
      v38 = *v37;
    }

    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Null_Object.cpp";
      v54 = 1024;
      *v55 = 252;
      *&v55[4] = 2080;
      *&v55[6] = "m_core_id == k_object_id_unknown";
      _os_log_error_impl(&dword_1DE1F9000, v38, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s this Object already has a core", buf, 0x1Cu);
    }

    abort();
  }

  *(this + 22) = AMCP::Core::Broker::reserve_id(*(*(this + 1) + 16));
  is_base_of = AMCP::is_base_of(0x61636C6B, *(this + 21));
  if (is_base_of)
  {
    v3 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v3 & 1) == 0)
    {
      is_base_of = AMCP::Log::AMCP_Scope_Registry::initialize(is_base_of);
    }

    v4 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v5 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v6 = *(v4 + 16);
    switch(v6)
    {
      case 3:
        v15 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v15 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(is_base_of);
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

        if (!os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          goto LABEL_43;
        }

        v21 = *(this + 22);
        AMCP::make_string_for_class_id(*(this + 20), &__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 136315906;
        *&buf[4] = "Null_Object.cpp";
        v54 = 1024;
        *v55 = 256;
        *&v55[4] = 1024;
        *&v55[6] = v21;
        *&v55[10] = 2080;
        *&v55[12] = p_p;
        v23 = v18;
        v24 = OS_LOG_TYPE_INFO;
        break;
      case 2:
        v11 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v11 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(is_base_of);
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

        if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_43;
        }

        v19 = *(this + 22);
        AMCP::make_string_for_class_id(*(this + 20), &__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v20 = &__p;
        }

        else
        {
          v20 = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 136315906;
        *&buf[4] = "Null_Object.cpp";
        v54 = 1024;
        *v55 = 256;
        *&v55[4] = 1024;
        *&v55[6] = v19;
        *&v55[10] = 2080;
        *&v55[12] = v20;
        _os_log_debug_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_DEBUG, "%32s:%-5d Building Core %u for %s", buf, 0x22u);
        goto LABEL_41;
      case 1:
        v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v7 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(is_base_of);
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

        if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_43;
        }

        v25 = *(this + 22);
        AMCP::make_string_for_class_id(*(this + 20), &__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v26 = &__p;
        }

        else
        {
          v26 = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 136315906;
        *&buf[4] = "Null_Object.cpp";
        v54 = 1024;
        *v55 = 256;
        *&v55[4] = 1024;
        *&v55[6] = v25;
        *&v55[10] = 2080;
        *&v55[12] = v26;
        v23 = v10;
        v24 = OS_LOG_TYPE_DEFAULT;
        break;
      default:
        goto LABEL_43;
    }

    _os_log_impl(&dword_1DE1F9000, v23, v24, "%32s:%-5d Building Core %u for %s", buf, 0x22u);
LABEL_41:
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

LABEL_43:
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  v27 = AMCP::Null::calculate_max_element(this + 6, *(this + 21));
  (*(*this + 48))(buf, this, v27);
  AMCP::Core::Broker::make_core(&v47, *(*(this + 1) + 16), buf, *(this + 22));
  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  if (!*(this + 6))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v41 = 0x676C6F626374726CLL;
  LODWORD(v42) = 0;
  AMCP::Address::to_string(&__p, &v41, 0x676C6F626374726CLL);
  size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    v29 = __p.__r_.__value_.__r.__words[0];
    if (!__p.__r_.__value_.__r.__words[0])
    {
      v50 = 0;
      applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,applesauce::CF::StringRef>(&cf, *(this + 6), 0);
      goto LABEL_54;
    }

    size = __p.__r_.__value_.__l.__size_;
  }

  else
  {
    v29 = &__p;
  }

  v30 = CFStringCreateWithBytes(0, v29, size, 0x8000100u, 0);
  v50 = v30;
  if (!v30)
  {
    v40 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v40, "Could not construct");
    __cxa_throw(v40, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,applesauce::CF::StringRef>(&cf, *(this + 6), v30);
  CFRelease(v30);
LABEL_54:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v46 == 1)
  {
    v31 = *(this + 2);
    v44[2] = *(this + 1);
    v44[3] = v31;
    if (v31)
    {
      atomic_fetch_add_explicit(v31 + 1, 1uLL, memory_order_relaxed);
    }

    v32 = *(this + 10);
    std::shared_ptr<AMCP::IO_Core::IOContext_Core>::shared_ptr[abi:ne200100]<AMCP::IO_Core::IOContext_Core,0>(v44, *(this + 3), *(this + 4));
    v51 = 1633907820;
    v52 = 1;
    v42 = 0;
    v43 = 0;
    v41 = 0;
    std::vector<std::tuple<unsigned int,AMCP::Null::Expected_Class_Is_Subclass>>::__init_with_size[abi:ne200100]<std::tuple<unsigned int,AMCP::Null::Expected_Class_Is_Subclass> const*,std::tuple<unsigned int,AMCP::Null::Expected_Class_Is_Subclass> const*>();
  }

  std::__hash_table<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>>>::__deallocate_node(*&v55[2]);
  v33 = *buf;
  *buf = 0;
  if (v33)
  {
    operator delete(v33);
  }

  v34 = *MEMORY[0x1E69E9840];
}

void sub_1DE4EF600(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE4EF6C8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Null::make_object_list(const void **a1, void *a2, int a3, void *a4, CFArrayRef *a5, unsigned int **a6)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (!*a5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  Count = CFArrayGetCount(*a5);
  if (Count)
  {
    v12 = 0;
    while (1)
    {
      if (!*a5)
      {
        v34 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v34, "Could not construct");
        __cxa_throw(v34, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      applesauce::CF::details::at_as<applesauce::CF::DictionaryRef>(&v49, *a5, v12);
      if (v50 == 1)
      {
        break;
      }

LABEL_50:
      if (v50 == 1)
      {
        if (v49)
        {
          CFRelease(v49);
        }
      }

      if (++v12 == Count)
      {
        return;
      }
    }

    if (!v49)
    {
      v35 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v35, "Could not construct");
      __cxa_throw(v35, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v44 = 0x676C6F62636C6173;
    v45 = 0;
    AMCP::Address::to_string(&numBytes, &v44, v13);
    size = SHIBYTE(numBytes.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(numBytes.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      p_numBytes = numBytes.__r_.__value_.__r.__words[0];
      if (!numBytes.__r_.__value_.__r.__words[0])
      {
        v47 = 0;
LABEL_12:
        valuePtr = 0;
        v43 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
        if (!v43)
        {
          v36 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v36, "Could not construct");
          __cxa_throw(v36, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        applesauce::CF::at_or<applesauce::CF::NumberRef,applesauce::CF::StringRef>(&cf, v49, v47, &v43);
        if (!cf)
        {
          v37 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v37, "Could not construct");
          __cxa_throw(v37, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        v16 = applesauce::CF::convert_to<unsigned int,0>(cf);
        if (cf)
        {
          CFRelease(cf);
        }

        if (v43)
        {
          CFRelease(v43);
        }

        if (v47)
        {
          CFRelease(v47);
        }

        if (SHIBYTE(numBytes.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(numBytes.__r_.__value_.__l.__data_);
        }

        stock_class_id = AMCP::Null::get_stock_class_id(&v49, v16);
        v18 = *a6;
        v19 = a6[1];
        if (*a6 == v19)
        {
          goto LABEL_30;
        }

        do
        {
          v20 = *v18;
          if (v18[1])
          {
            if (AMCP::is_base_of(v20, stock_class_id))
            {
              goto LABEL_29;
            }
          }

          else if (v20 == stock_class_id)
          {
            goto LABEL_29;
          }

          v18 += 2;
        }

        while (v18 != v19);
        v18 = v19;
LABEL_29:
        if (v18 != a6[1])
        {
LABEL_30:
          v21 = a2[1];
          v42[0] = *a2;
          v42[1] = v21;
          if (v21)
          {
            atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v22 = a4[1];
          v41[0] = *a4;
          v41[1] = v22;
          if (v22)
          {
            atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          AMCP::Null::make_object(&numBytes, v42, a3, v41, &v49, stock_class_id);
          if (v22)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v22);
          }

          if (v21)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v21);
          }

          v24 = a1[1];
          v23 = a1[2];
          if (v24 >= v23)
          {
            v26 = *a1;
            v27 = v24 - *a1;
            v28 = v27 >> 4;
            v29 = (v27 >> 4) + 1;
            if (v29 >> 60)
            {
              std::vector<void *>::__throw_length_error[abi:ne200100]();
            }

            v30 = v23 - v26;
            if (v30 >> 3 > v29)
            {
              v29 = v30 >> 3;
            }

            if (v30 >= 0x7FFFFFFFFFFFFFF0)
            {
              v31 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v31 = v29;
            }

            v52[4] = a1;
            if (v31)
            {
              std::allocator<std::shared_ptr<DSP_Host_Types::FormatDescription>>::allocate_at_least[abi:ne200100](v31);
            }

            *(16 * v28) = *&numBytes.__r_.__value_.__l.__data_;
            v25 = 16 * v28 + 16;
            memcpy(0, v26, v27);
            v32 = *a1;
            *a1 = 0;
            a1[1] = v25;
            v33 = a1[2];
            a1[2] = 0;
            v52[2] = v32;
            v52[3] = v33;
            v52[0] = v32;
            v52[1] = v32;
            std::__split_buffer<std::shared_ptr<DSP_Host_Types::FormatDescription>>::~__split_buffer(v52);
          }

          else
          {
            *v24 = *&numBytes.__r_.__value_.__l.__data_;
            v25 = (v24 + 16);
          }

          a1[1] = v25;
        }

        goto LABEL_50;
      }

      size = numBytes.__r_.__value_.__l.__size_;
    }

    else
    {
      p_numBytes = &numBytes;
    }

    v47 = CFStringCreateWithBytes(0, p_numBytes, size, 0x8000100u, 0);
    if (!v47)
    {
      v38 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v38, "Could not construct");
      __cxa_throw(v38, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    goto LABEL_12;
  }
}

void AMCP::Null::Box::~Box(std::__shared_weak_count **this)
{
  AMCP::Null::Object::~Object(this);

  JUMPOUT(0x1E12C1730);
}

void AMCP::Null::Object::~Object(std::__shared_weak_count **this)
{
  *this = &unk_1F5974AE0;
  AMCP::Null::Object::destroy_cores(this);
  v7 = (this + 12);
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&v7);
  v2 = this[9];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = this[8];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = this[6];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = this[4];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  *this = &unk_1F59748E8;
  v6 = this[2];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

{
  AMCP::Null::Object::~Object(this);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<AMCP::Null::Box>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F59775A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void *AMCP::Null::Clock::Clock(void *a1, uint64_t a2, uint64_t a3, int a4, void *a5, CFTypeRef *a6)
{
  *&v10 = a2;
  *(&v10 + 1) = a3;
  if (a3)
  {
    atomic_fetch_add_explicit((a3 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = a5[1];
  v9[0] = *a5;
  v9[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  AMCP::Null::Object::Object(a1, &v10, a4, v9, a6);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (*(&v10 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v10 + 1));
  }

  *a1 = &unk_1F5974BE0;
  return a1;
}

void sub_1DE4EFEE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AMCP::Null::Clock::do_set_property(AMCP::Null::Clock *this, int a2, const AMCP::Address *a3, const AMCP::Thing *a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v8 = *(this + 8);
  if (v8)
  {
    v9 = std::__shared_weak_count::lock(v8);
    if (v9)
    {
      v10 = *(this + 7);
      if (v10)
      {
        v11 = (v10 + 88);
        goto LABEL_7;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = (this + 40);
LABEL_7:
  if (*a3 == 1853059700)
  {
    v12 = *v11;
    operator new();
  }

  v13 = AMCP::Null::Object::do_set_property(this, a2, a3, a4);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

void sub_1DE4F01A4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AMCP::Null::Clock::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_0,std::allocator<AMCP::Null::Clock::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Null5Clock15do_set_propertyEjRKNS_7AddressERKNS_5ThingEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Null::Clock::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_0,std::allocator<AMCP::Null::Clock::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_0>,void ()(void)>::operator()(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = a1[1];
      if (!v5)
      {
LABEL_19:
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
        return;
      }

      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v5[6]);
      v16[1] = MutableCopy;
      AMCP::make_description_from_thing(v16, (a1 + 7));
      v7 = v16[0];
      if (!v16[0])
      {
        if (MutableCopy)
        {
          CFRelease(MutableCopy);
        }

        goto LABEL_19;
      }

      v12 = 0x676C6F626E737274;
      v13 = 0;
      AMCP::Address::to_string(&bytes, &v12, 0x676C6F626E737274);
      size = SHIBYTE(bytes.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(bytes.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        p_bytes = bytes.__r_.__value_.__r.__words[0];
        if (!bytes.__r_.__value_.__r.__words[0])
        {
          v15 = 0;
          mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::TypeRef>(MutableCopy, 0, v7);
LABEL_13:
          if (SHIBYTE(bytes.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(bytes.__r_.__value_.__l.__data_);
          }

          mcp_applesauce::CF::Dictionary_Builder::copy_dictionary(&bytes, MutableCopy);
          (*(*v5 + 3))(v5, &bytes);
          if (bytes.__r_.__value_.__r.__words[0])
          {
            CFRelease(bytes.__r_.__value_.__l.__data_);
          }

          CFRelease(v7);
          if (MutableCopy)
          {
            CFRelease(MutableCopy);
          }

          goto LABEL_19;
        }

        size = bytes.__r_.__value_.__l.__size_;
      }

      else
      {
        p_bytes = &bytes;
      }

      v10 = CFStringCreateWithBytes(0, p_bytes, size, 0x8000100u, 0);
      v15 = v10;
      if (!v10)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::TypeRef>(MutableCopy, v10, v7);
      CFRelease(v10);
      goto LABEL_13;
    }
  }
}

void sub_1DE4F03C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, const void *a17, const void *a18, const void *a19)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a17);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  applesauce::CF::TypeRef::~TypeRef(&a18);
  mcp_applesauce::CF::Dictionary_Builder::~Dictionary_Builder(&a19);
  std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::Null::Clock::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_0,std::allocator<AMCP::Null::Clock::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_0>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[11];
  if (v2)
  {
    v2(0, __p + 7, 0, 0);
  }

  v3 = __p[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = __p[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::Null::Clock::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_0,std::allocator<AMCP::Null::Clock::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_0>,void ()(void)>::destroy(void *a1)
{
  v2 = a1[11];
  if (v2)
  {
    v2(0, a1 + 7, 0, 0);
  }

  v3 = a1[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = a1[2];
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

uint64_t std::__function::__func<AMCP::Null::Clock::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_0,std::allocator<AMCP::Null::Clock::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_0>,void ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F5975C58;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 40) = *(result + 40);
  v5 = *(result + 48);
  *(a2 + 56) = 0u;
  *(a2 + 48) = v5;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0;
  v6 = *(result + 88);
  if (v6)
  {
    return v6(1, result + 56);
  }

  return result;
}

void sub_1DE4F05B8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(v1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE4F06A4(_Unwind_Exception *a1)
{
  v3 = v1[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = v1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::Null::Clock::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_0,std::allocator<AMCP::Null::Clock::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5975C58;
  v2 = a1[11];
  if (v2)
  {
    v2(0, a1 + 7, 0, 0);
  }

  v3 = a1[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = a1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Null::Clock::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_0,std::allocator<AMCP::Null::Clock::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5975C58;
  v2 = a1[11];
  if (v2)
  {
    v2(0, a1 + 7, 0, 0);
  }

  v3 = a1[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = a1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void sub_1DE4F20F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t std::__function::__func<AMCP::Null::Clock::populate_core(unsigned int)::$_5,std::allocator<AMCP::Null::Clock::populate_core(unsigned int)::$_5>,std::shared_ptr<AMCP::Core::Engine> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Null5Clock13populate_coreEjE3$_5"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Null::Clock::populate_core(unsigned int)::$_5,std::allocator<AMCP::Null::Clock::populate_core(unsigned int)::$_5>,std::shared_ptr<AMCP::Core::Engine> ()(void)>::operator()(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v38 = *MEMORY[0x1E69E9840];
  AMCP::Core::Broker::fetch_core(&v25, *(*(a1 + 16) + 16), *(a1 + 8));
  v4 = v25;
  if (v25)
  {
    AMCP::Core::Core::get_simple_required_property<1969841184u>(&cf, v25);
    AMCP::Core::Core::get_simple_required_property<1853059700u>(v4);
    AMCP::Core::Core::get_simple_required_property<1668049764u>(v4);
    *buf = 0;
    strcpy(v27, "tfastpni");
    v27[9] = 0;
    *&v27[10] = 0;
    AMCP::Core::Core::get_typed_property_value<unsigned int,std::enable_if<true,void>>(v4, v27, buf);
    *buf = 0;
    strcpy(v27, "tfasptuo");
    v27[9] = 0;
    *&v27[10] = 0;
    AMCP::Core::Core::get_typed_property_value<unsigned int,std::enable_if<true,void>>(v4, v27, buf);
    *buf = 0;
    strcpy(v27, "cntltpni");
    v27[9] = 0;
    *&v27[10] = 0;
    AMCP::Core::Core::get_typed_property_value<unsigned int,std::enable_if<true,void>>(v4, v27, buf);
    *buf = 0;
    strcpy(v27, "cntlptuo");
    v27[9] = 0;
    *&v27[10] = 0;
    AMCP::Core::Core::get_typed_property_value<unsigned int,std::enable_if<true,void>>(v4, v27, buf);
    AMCP::Null::make_stream_info_list(&v23, *(*(a1 + 16) + 16), &v25, 0x696E7074u);
    AMCP::Null::make_stream_info_list(&v22, *(*(a1 + 16) + 16), &v25, 0x6F757470u);
    *buf = 0;
    strcpy(v27, "lflnbolg");
    v27[9] = 0;
    *&v27[10] = 0;
    AMCP::Core::Core::get_typed_property_value<applesauce::CF::StringRef,std::enable_if<true,void>>(&v21, v4, v27, buf);
    strcpy(v27, "dsrnbolg");
    v27[9] = 0;
    *&v27[10] = 0;
    v5 = AMCP::Core::Core::get_typed_property_value<BOOL,std::enable_if<true,void>>(v4, v27);
    if (v5 <= 0xFFu)
    {
      v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v10 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v5);
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
        HIBYTE(v37) = 4;
        strcpy(buf, "nrsd");
        *v27 = 136316418;
        *&v27[4] = "Core.h";
        *&v27[12] = 1024;
        *&v27[14] = 391;
        goto LABEL_31;
      }
    }

    else
    {
      strcpy(v27, "fcrnbolg");
      v27[9] = 0;
      *&v27[10] = 0;
      v6 = AMCP::Core::Core::get_typed_property_value<BOOL,std::enable_if<true,void>>(v4, v27);
      if (v6 <= 0xFFu)
      {
        v14 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v14 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v6);
        }

        v16 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v15 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
          v13 = *v16;
          std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        }

        else
        {
          v13 = *v16;
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          HIBYTE(v37) = 4;
          v20 = 1717793390;
LABEL_30:
          *buf = v20;
          buf[4] = 0;
          *v27 = 136316418;
          *&v27[4] = "Core.h";
          *&v27[12] = 1024;
          *&v27[14] = 391;
LABEL_31:
          v28 = 2080;
          v29 = "optional_value.operator BOOL() == true";
          v30 = 2080;
          v31 = buf;
          v32 = 1024;
          v33 = 1735159650;
          v34 = 1024;
          v35 = 0;
          _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", v27, 0x32u);
          if (SHIBYTE(v37) < 0)
          {
            operator delete(*buf);
          }
        }
      }

      else
      {
        strcpy(v27, "enotbolg");
        v27[9] = 0;
        *&v27[10] = 0;
        v7 = AMCP::Core::Core::get_typed_property_value<BOOL,std::enable_if<true,void>>(v4, v27);
        if (v7 > 0xFFu)
        {
          AMCP::Utility::Dispatch_Queue::Dispatch_Queue(v27, (*(*(a1 + 16) + 32) + 704));
          operator new();
        }

        v17 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v17 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v7);
        }

        v19 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v18 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v18)
        {
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
          v13 = *v19;
          std::__shared_weak_count::__release_shared[abi:ne200100](v18);
        }

        else
        {
          v13 = *v19;
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          HIBYTE(v37) = 4;
          v20 = 1701736308;
          goto LABEL_30;
        }
      }
    }

    abort();
  }

  v8 = 0uLL;
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
    v8 = 0uLL;
  }

  *a2 = v8;
  v9 = *MEMORY[0x1E69E9840];
}

void sub_1DE4F37D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, const void *a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, const void *a29, uint64_t a30, uint64_t a31, const void *a32, const void *a33, uint64_t a34, void *__p, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *a61, uint64_t a62, uint64_t a63)
{
  v71 = v69[5];
  if (v71)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v71);
  }

  a56 = v69;
  std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&a56);
  MEMORY[0x1E12C1730](v69, 0x1020C40E3AF47BELL);
  if (__p)
  {
    operator delete(__p);
  }

  v72 = *(a18 + 784);
  *(a18 + 784) = 0;
  if (v72)
  {
    std::default_delete<AMCP::Tone_Generator_Buffer>::operator()[abi:ne200100](v72);
  }

  std::unique_ptr<AMCP::Null::Null_Engine_Reflector>::reset[abi:ne200100](a16, 0);
  applesauce::CF::StringRef::~StringRef((a18 + 760));
  AMCP::IO_Clock::~IO_Clock((a18 + 600));
  AMCP::Core::Implementation::Simple_Engine_IO_State::~Simple_Engine_IO_State((a18 + 144));
  AMCP::Core::Implementation::Simple_Engine_Data::~Simple_Engine_Data((a18 + 48));
  v73 = *(a18 + 40);
  if (v73)
  {
    std::__shared_weak_count::__release_weak(v73);
  }

  applesauce::CF::StringRef::~StringRef(&a32);
  applesauce::CF::StringRef::~StringRef(&a33);
  std::__shared_weak_count::~__shared_weak_count(a18);
  operator delete(v74);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(&a69);
  applesauce::CF::StringRef::~StringRef(&a22);
  if (a23)
  {
    operator delete(a23);
  }

  if (a26)
  {
    operator delete(a26);
  }

  applesauce::CF::StringRef::~StringRef(&a29);
  if (a31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a31);
  }

  _Unwind_Resume(a1);
}

void AMCP::Null::make_stream_info_list(void **a1, std::__shared_mutex_base *a2, AMCP::Core::Core **a3, unsigned int a4)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v8 = *a3;
  LODWORD(v32) = 1937009955;
  HIDWORD(v32) = a4;
  LODWORD(v33) = 0;
  if (AMCP::Core::Core::has_property(v8, &v32))
  {
    AMCP::Core::Core::get_simple_required_property<1937009955u>(&v32, *a3, a4);
    v9 = v32;
    v10 = v33;
    __p = v32;
    std::vector<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info>::reserve(a1, v33 - v32);
    if (v9 != v10)
    {
      v11 = __p;
      do
      {
        AMCP::Core::Broker::fetch_core(&v30, a2, *v11);
        v12 = v30;
        if (v30)
        {
          simple_required = AMCP::Core::Core::get_simple_required_property<1935894638u>(v30);
          AMCP::Core::Core::get_simple_required_property<1718444404u>(&v27, v12);
          v14 = a1[1];
          v15 = a1[2];
          if (v14 >= v15)
          {
            v18 = *a1;
            v19 = v14 - *a1;
            v20 = 0x6DB6DB6DB6DB6DB7 * (v19 >> 3) + 1;
            if (v20 > 0x492492492492492)
            {
              std::vector<void *>::__throw_length_error[abi:ne200100]();
            }

            v21 = 0x6DB6DB6DB6DB6DB7 * ((v15 - v18) >> 3);
            if (2 * v21 > v20)
            {
              v20 = 2 * v21;
            }

            if (v21 >= 0x249249249249249)
            {
              v22 = 0x492492492492492;
            }

            else
            {
              v22 = v20;
            }

            if (v22)
            {
              std::allocator<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info>::allocate_at_least[abi:ne200100](v22);
            }

            v23 = 8 * (v19 >> 3);
            *(v23 + 4) = 0;
            *(v23 + 8) = 0;
            *v23 = simple_required;
            v24 = v28;
            *(v23 + 16) = v27;
            *(v23 + 32) = v24;
            *(v23 + 48) = v29;
            v17 = v23 + 56;
            v25 = v23 - v19;
            memcpy((v23 - v19), v18, v19);
            *a1 = v25;
            a1[1] = v17;
            a1[2] = 0;
            if (v18)
            {
              operator delete(v18);
            }
          }

          else
          {
            *(v14 + 1) = 0;
            *(v14 + 2) = 0;
            *v14 = simple_required;
            v16 = v28;
            *(v14 + 1) = v27;
            *(v14 + 2) = v16;
            *(v14 + 6) = v29;
            v17 = (v14 + 56);
          }

          a1[1] = v17;
        }

        if (v31)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v31);
        }

        ++v11;
      }

      while (v11 != v10);
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_1DE4F3D50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  v19 = *v17;
  if (*v17)
  {
    *(v17 + 8) = v19;
    operator delete(v19);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<AMCP::Null::Engine>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5975BF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__function::__func<AMCP::Null::Clock::populate_core(unsigned int)::$_5,std::allocator<AMCP::Null::Clock::populate_core(unsigned int)::$_5>,std::shared_ptr<AMCP::Core::Engine> ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::Null::Clock::populate_core(unsigned int)::$_5,std::allocator<AMCP::Null::Clock::populate_core(unsigned int)::$_5>,std::shared_ptr<AMCP::Core::Engine> ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::Null::Clock::populate_core(unsigned int)::$_5,std::allocator<AMCP::Null::Clock::populate_core(unsigned int)::$_5>,std::shared_ptr<AMCP::Core::Engine> ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5975B88;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 16) = *(result + 16);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::Null::Clock::populate_core(unsigned int)::$_5,std::allocator<AMCP::Null::Clock::populate_core(unsigned int)::$_5>,std::shared_ptr<AMCP::Core::Engine> ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5975B88;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Null::Clock::populate_core(unsigned int)::$_5,std::allocator<AMCP::Null::Clock::populate_core(unsigned int)::$_5>,std::shared_ptr<AMCP::Core::Engine> ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5975B88;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::Null::Clock::populate_core(unsigned int)::$_1,std::allocator<AMCP::Null::Clock::populate_core(unsigned int)::$_1>,CA::ValueRangeList ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Null5Clock13populate_coreEjE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Null::Clock::populate_core(unsigned int)::$_1,std::allocator<AMCP::Null::Clock::populate_core(unsigned int)::$_1>,CA::ValueRangeList ()(void)>::operator()(uint64_t a1@<X0>, void *a2@<X8>)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  v4 = *(*(v3 + 8) + 16);
  numBytes[0] = &unk_1F5975AF8;
  numBytes[1] = v3;
  *(&v31 + 1) = numBytes;
  AMCP::Core::Broker::fetch_first_core_if (&v28, v4, numBytes);
  std::__function::__value_func<BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::~__value_func[abi:ne200100](numBytes);
  if (v28)
  {
    AMCP::Core::Core::get_simple_required_property<1718449187u>(numBytes, v28);
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    v5 = numBytes[0];
    v6 = numBytes[1];
    while (v5 != v6)
    {
      v7 = *v5;
      v8 = *(v5 + 8);
      while (v7 != v8)
      {
        CA::ValueRangeList::AddRange(a2, v7);
        v7 += 2;
      }

      v5 += 64;
    }

    cf = numBytes;
    std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__destroy_vector::operator()[abi:ne200100](&cf);
    goto LABEL_37;
  }

  if (!*(v3 + 48))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v23 = 0x676C6F626E737223;
  v24 = 0;
  AMCP::Address::to_string(numBytes, &v23, 0x676C6F626E737223);
  v9 = SBYTE7(v31);
  if ((SBYTE7(v31) & 0x8000000000000000) != 0)
  {
    v10 = numBytes[0];
    if (!numBytes[0])
    {
      v25 = 0;
      applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,applesauce::CF::StringRef>(&cf, *(v3 + 48), 0);
      goto LABEL_16;
    }

    v9 = numBytes[1];
  }

  else
  {
    v10 = numBytes;
  }

  v11 = CFStringCreateWithBytes(0, v10, v9, 0x8000100u, 0);
  v25 = v11;
  if (!v11)
  {
    v18 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v18, "Could not construct");
    __cxa_throw(v18, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,applesauce::CF::StringRef>(&cf, *(v3 + 48), v11);
  CFRelease(v11);
LABEL_16:
  if (SBYTE7(v31) < 0)
  {
    operator delete(numBytes[0]);
  }

  if (v27 == 1)
  {
    v32 = 0;
    *numBytes = 0u;
    v31 = 0u;
    AMCP::Implementation::In_Place_Storage<applesauce::CF::ArrayRef>::construct<applesauce::CF::ArrayRef&>(numBytes, &cf);
    AMCP::Thing::convert_to<CA::ValueRangeList>(a2, numBytes);
    if (v32)
    {
      v32(0, numBytes, 0, 0);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    goto LABEL_37;
  }

  if (!*(v3 + 48))
  {
    v19 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v19, "Could not construct");
    __cxa_throw(v19, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v23 = 0x676C6F626E737274;
  v24 = 0;
  AMCP::Address::to_string(numBytes, &v23, 0x676C6F626E737274);
  v12 = SBYTE7(v31);
  if ((SBYTE7(v31) & 0x8000000000000000) == 0)
  {
    v13 = numBytes;
    goto LABEL_28;
  }

  v13 = numBytes[0];
  if (numBytes[0])
  {
    v12 = numBytes[1];
LABEL_28:
    v14 = CFStringCreateWithBytes(0, v13, v12, 0x8000100u, 0);
    v22 = v14;
    if (!v14)
    {
      v21 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v21, "Could not construct");
      __cxa_throw(v21, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    goto LABEL_29;
  }

  v14 = 0;
  v22 = 0;
LABEL_29:
  applesauce::CF::details::find_at_key<applesauce::CF::NumberRef,applesauce::CF::StringRef>(&v25, *(v3 + 48), v14);
  if (!v25)
  {
    v20 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v20, "Could not construct");
    __cxa_throw(v20, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v15 = applesauce::CF::convert_to<double,0>(v25);
  if (v25)
  {
    CFRelease(v25);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (SBYTE7(v31) < 0)
  {
    operator delete(numBytes[0]);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  numBytes[0] = v15;
  numBytes[1] = v15;
  CA::ValueRangeList::AddRange(a2, numBytes);
LABEL_37:
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void sub_1DE4F4440(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a9);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  std::optional<applesauce::CF::ArrayRef>::~optional(&a13);
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(a1);
}

void *applesauce::CF::details::find_at_key<applesauce::CF::NumberRef,applesauce::CF::StringRef>(void *a1, CFDictionaryRef theDict, const void *a3)
{
  v4 = applesauce::CF::details::at_key<applesauce::CF::StringRef>(theDict, a3);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::not_found(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return applesauce::CF::NumberRef::from_get(a1, v4);
}

uint64_t _ZNKSt3__110__function6__funcIZZN4AMCP4Null5Clock13populate_coreEjENK3__1clEvEUlRKT_E_NS_9allocatorIS9_EEFbRKNS_10shared_ptrINS2_4Core4CoreEEEEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZZN4AMCP4Null5Clock13populate_coreEjENK3$_1clEvEUlRKT_E_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL _ZNSt3__110__function6__funcIZZN4AMCP4Null5Clock13populate_coreEjENK3__1clEvEUlRKT_E_NS_9allocatorIS9_EEFbRKNS_10shared_ptrINS2_4Core4CoreEEEEEclESH_(uint64_t a1, AMCP::Core::Core **a2)
{
  v3 = *(a1 + 8);
  simple_required = AMCP::Core::Core::get_simple_required_property<1870098034u>(*a2);
  v5 = AMCP::Core::Core::get_simple_required_property<1650682995u>(*a2);
  return *(v3 + 88) == simple_required && v5 == 1634956402;
}

uint64_t _ZNKSt3__110__function6__funcIZZN4AMCP4Null5Clock13populate_coreEjENK3__1clEvEUlRKT_E_NS_9allocatorIS9_EEFbRKNS_10shared_ptrINS2_4Core4CoreEEEEE7__cloneEPNS0_6__baseISI_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5975AF8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AMCP::Null::Clock::populate_core(unsigned int)::$_1,std::allocator<AMCP::Null::Clock::populate_core(unsigned int)::$_1>,CA::ValueRangeList ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5975A88;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AMCP::Null::Clock::populate_core(unsigned int)::$_4,std::allocator<AMCP::Null::Clock::populate_core(unsigned int)::$_4>,void ()(double const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Null5Clock13populate_coreEjE3$_4"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Null::Clock::populate_core(unsigned int)::$_4,std::allocator<AMCP::Null::Clock::populate_core(unsigned int)::$_4>,void ()(double const&)>::operator()(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  if (!v3 || (v3 = std::__shared_weak_count::lock(v3), (v5 = v3) == 0) || (v3 = *(a1 + 8)) == 0)
  {
    v14 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v14 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v3);
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
      *&buf[4] = "Null_Object.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 816;
      *&buf[18] = 2080;
      *&buf[20] = "object_ptr.operator BOOL() == false";
      _os_log_error_impl(&dword_1DE1F9000, v17, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s no model object", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v26);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v19, "no model object");
    std::runtime_error::runtime_error(&v20, &v19);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = -1;
    v20.__vftable = &unk_1F5992170;
    v21 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v20);
    v28 = "auto AMCP::Null::Clock::populate_core(Address::Element)::(anonymous class)::operator()(const Sample_Rate &) const";
    v29 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Null/Null_Object.cpp";
    v30 = 816;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v18);
  }

  v6 = v3[22];
  v20.__vftable = 0x676C6F626E737274;
  LODWORD(v20.__imp_.__imp_) = 0;
  memset(&buf[8], 0, 24);
  *buf = *a2;
  v28 = AMCP::Implementation::In_Place_Storage<double>::dispatch;
  v7 = (*(*v3 + 40))(v3, v6, &v20, buf);
  v8 = v7;
  if (v28)
  {
    v7 = v28(0, buf, 0, 0);
  }

  if ((v8 & 1) == 0)
  {
    v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v10 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v7);
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
      *buf = 136315650;
      *&buf[4] = "Null_Object.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 818;
      *&buf[18] = 2080;
      *&buf[20] = "was_handled == Object::Was_Handled::no";
      _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s not handled", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v26);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v19, "not handled");
    std::runtime_error::runtime_error(&v20, &v19);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = -1;
    v20.__vftable = &unk_1F5992170;
    v21 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v20);
    v28 = "auto AMCP::Null::Clock::populate_core(Address::Element)::(anonymous class)::operator()(const Sample_Rate &) const";
    v29 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Null/Null_Object.cpp";
    v30 = 818;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v18);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  v9 = *MEMORY[0x1E69E9840];
}

void sub_1DE4F4D1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, std::runtime_error a17, char a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v21 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a18);
  std::runtime_error::~runtime_error(&a17);
  if (v20)
  {
    __cxa_free_exception(v19);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v21 - 129));
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::Null::Clock::populate_core(unsigned int)::$_4,std::allocator<AMCP::Null::Clock::populate_core(unsigned int)::$_4>,void ()(double const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::Null::Clock::populate_core(unsigned int)::$_4,std::allocator<AMCP::Null::Clock::populate_core(unsigned int)::$_4>,void ()(double const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<AMCP::Null::Clock::populate_core(unsigned int)::$_4,std::allocator<AMCP::Null::Clock::populate_core(unsigned int)::$_4>,void ()(double const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F5975A08;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::Null::Clock::populate_core(unsigned int)::$_4,std::allocator<AMCP::Null::Clock::populate_core(unsigned int)::$_4>,void ()(double const&)>::~__func(void *a1)
{
  *a1 = &unk_1F5975A08;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Null::Clock::populate_core(unsigned int)::$_4,std::allocator<AMCP::Null::Clock::populate_core(unsigned int)::$_4>,void ()(double const&)>::~__func(void *a1)
{
  *a1 = &unk_1F5975A08;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::Null::Clock::populate_core(unsigned int)::$_0,std::allocator<AMCP::Null::Clock::populate_core(unsigned int)::$_0>,double ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Null5Clock13populate_coreEjE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double std::__function::__func<AMCP::Null::Clock::populate_core(unsigned int)::$_0,std::allocator<AMCP::Null::Clock::populate_core(unsigned int)::$_0>,double ()(void)>::operator()(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  v2 = *(*(v1 + 8) + 16);
  v3 = *(v1 + 88);
  v23 = &unk_1F5975978;
  v25 = &v23;
  memset(valuePtr, 0, sizeof(valuePtr));
  LODWORD(v17) = v3;
  memset(__p, 0, sizeof(__p));
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(__p, &v17, &v17 + 4, 1uLL);
  AMCP::Core::Broker::gather_directly_owned_objects(&bytes, v2, __p);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  v4 = *&bytes.__r_.__value_.__l.__data_;
  if (bytes.__r_.__value_.__r.__words[0] == bytes.__r_.__value_.__l.__size_)
  {
LABEL_11:
    v18 = 0;
    v19 = 0;
  }

  else
  {
    v5 = bytes.__r_.__value_.__r.__words[0];
    while (1)
    {
      AMCP::Core::Broker::fetch_core(&v18, v2, *v5);
      if (v18)
      {
        if (!v25)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        if ((*(*v25 + 48))(v25, &v18))
        {
          break;
        }
      }

      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }

      if (++v5 == *(&v4 + 1))
      {
        goto LABEL_11;
      }
    }
  }

  if (v4)
  {
    operator delete(v4);
  }

  bytes.__r_.__value_.__r.__words[0] = valuePtr;
  std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&bytes);
  std::__function::__value_func<BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::~__value_func[abi:ne200100](&v23);
  if (v18)
  {
    AMCP::Core::Core::get_simple_required_property<1718444404u>(&bytes, v18);
    v6 = *&bytes.__r_.__value_.__l.__data_;
    goto LABEL_30;
  }

  if (!*(v1 + 48))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v23 = 0x676C6F626E737274;
  v24 = 0;
  AMCP::Address::to_string(&bytes, &v23, 0x676C6F626E737274);
  size = SHIBYTE(bytes.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(bytes.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    p_bytes = &bytes;
    goto LABEL_21;
  }

  p_bytes = bytes.__r_.__value_.__r.__words[0];
  if (bytes.__r_.__value_.__r.__words[0])
  {
    size = bytes.__r_.__value_.__l.__size_;
LABEL_21:
    v17 = CFStringCreateWithBytes(0, p_bytes, size, 0x8000100u, 0);
    if (!v17)
    {
      v15 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v15, "Could not construct");
      __cxa_throw(v15, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    goto LABEL_22;
  }

  v17 = 0;
LABEL_22:
  valuePtr[0] = 0x40E5888000000000;
  cf = CFNumberCreate(0, kCFNumberDoubleType, valuePtr);
  if (!cf)
  {
    v13 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v13, "Could not construct");
    __cxa_throw(v13, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::at_or<applesauce::CF::NumberRef,applesauce::CF::StringRef>(__p, *(v1 + 48), v17, &cf);
  v9 = __p[0];
  if (!__p[0])
  {
    v14 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v14, "Could not construct");
    __cxa_throw(v14, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v6 = applesauce::CF::convert_to<double,0>(__p[0]);
  CFRelease(v9);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (SHIBYTE(bytes.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(bytes.__r_.__value_.__l.__data_);
  }

LABEL_30:
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v6;
}

void sub_1DE4F53A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a10);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZZN4AMCP4Null5Clock13populate_coreEjENK3__0clEvEUlRKT_E_NS_9allocatorIS9_EEFbRKNS_10shared_ptrINS2_4Core4CoreEEEEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZZN4AMCP4Null5Clock13populate_coreEjENK3$_0clEvEUlRKT_E_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNSt3__110__function6__funcIZZN4AMCP4Null5Clock13populate_coreEjENK3__0clEvEUlRKT_E_NS_9allocatorIS9_EEFbRKNS_10shared_ptrINS2_4Core4CoreEEEEEclESH_(uint64_t a1, AMCP::Core::Core **a2)
{
  simple_required = AMCP::Core::Core::get_simple_required_property<1650682995u>(*a2);

  return AMCP::is_base_of(0x61737472, simple_required);
}

uint64_t std::__function::__func<AMCP::Null::Clock::populate_core(unsigned int)::$_0,std::allocator<AMCP::Null::Clock::populate_core(unsigned int)::$_0>,double ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5975908;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AMCP::Null::Clock::populate_core(unsigned int)::$_3,std::allocator<AMCP::Null::Clock::populate_core(unsigned int)::$_3>,void ()(applesauce::CF::StringRef const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Null5Clock13populate_coreEjE3$_3"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Null::Clock::populate_core(unsigned int)::$_3,std::allocator<AMCP::Null::Clock::populate_core(unsigned int)::$_3>,void ()(applesauce::CF::StringRef const&)>::operator()(uint64_t a1, CFTypeRef *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  if (!v3 || (v3 = std::__shared_weak_count::lock(v3), (v5 = v3) == 0) || (v6 = *(a1 + 8)) == 0)
  {
    v15 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v15 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v3);
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
      *buf = 136315650;
      *&buf[4] = "Null_Object.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 783;
      *&buf[18] = 2080;
      *&buf[20] = "object_ptr.operator BOOL() == false";
      _os_log_error_impl(&dword_1DE1F9000, v18, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s no model object", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v27);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v20, "no model object");
    std::runtime_error::runtime_error(&v21, &v20);
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = -1;
    v21.__vftable = &unk_1F5992170;
    v22 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v21);
    v29 = "auto AMCP::Null::Clock::populate_core(Address::Element)::(anonymous class)::operator()(const CF::String &) const";
    v30 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Null/Null_Object.cpp";
    v31 = 783;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v19);
  }

  v7 = v6[22];
  v21.__vftable = 0x676C6F626E6C666CLL;
  LODWORD(v21.__imp_.__imp_) = 0;
  v29 = 0;
  memset(buf, 0, sizeof(buf));
  AMCP::Implementation::In_Place_Storage<applesauce::CF::StringRef>::construct<applesauce::CF::StringRef const&>(buf, a2);
  v8 = (*(*v6 + 40))(v6, v7, &v21, buf);
  v9 = v8;
  if (v29)
  {
    v8 = (v29)(0, buf, 0, 0);
  }

  if ((v9 & 1) == 0)
  {
    v11 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v11 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v8);
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

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Null_Object.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 785;
      *&buf[18] = 2080;
      *&buf[20] = "was_handled == Object::Was_Handled::no";
      _os_log_error_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s not handled", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v27);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v20, "not handled");
    std::runtime_error::runtime_error(&v21, &v20);
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = -1;
    v21.__vftable = &unk_1F5992170;
    v22 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v21);
    v29 = "auto AMCP::Null::Clock::populate_core(Address::Element)::(anonymous class)::operator()(const CF::String &) const";
    v30 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Null/Null_Object.cpp";
    v31 = 785;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v19);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  v10 = *MEMORY[0x1E69E9840];
}

void sub_1DE4F5B48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, std::runtime_error a17, char a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v21 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a18);
  std::runtime_error::~runtime_error(&a17);
  if (v20)
  {
    __cxa_free_exception(v19);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v21 - 129));
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::Null::Clock::populate_core(unsigned int)::$_3,std::allocator<AMCP::Null::Clock::populate_core(unsigned int)::$_3>,void ()(applesauce::CF::StringRef const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::Null::Clock::populate_core(unsigned int)::$_3,std::allocator<AMCP::Null::Clock::populate_core(unsigned int)::$_3>,void ()(applesauce::CF::StringRef const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<AMCP::Null::Clock::populate_core(unsigned int)::$_3,std::allocator<AMCP::Null::Clock::populate_core(unsigned int)::$_3>,void ()(applesauce::CF::StringRef const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F5975888;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::Null::Clock::populate_core(unsigned int)::$_3,std::allocator<AMCP::Null::Clock::populate_core(unsigned int)::$_3>,void ()(applesauce::CF::StringRef const&)>::~__func(void *a1)
{
  *a1 = &unk_1F5975888;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Null::Clock::populate_core(unsigned int)::$_3,std::allocator<AMCP::Null::Clock::populate_core(unsigned int)::$_3>,void ()(applesauce::CF::StringRef const&)>::~__func(void *a1)
{
  *a1 = &unk_1F5975888;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::Null::Clock::populate_core(unsigned int)::$_2,std::allocator<AMCP::Null::Clock::populate_core(unsigned int)::$_2>,applesauce::CF::StringRef ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Null5Clock13populate_coreEjE3$_2"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Null::Clock::populate_core(unsigned int)::$_2,std::allocator<AMCP::Null::Clock::populate_core(unsigned int)::$_2>,applesauce::CF::StringRef ()(void)>::operator()(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  if (!*(v3 + 48))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v10 = 0x676C6F626E6C666CLL;
  v11 = 0;
  AMCP::Address::to_string(&bytes, &v10, 0x676C6F626E6C666CLL);
  size = SHIBYTE(bytes.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(bytes.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    p_bytes = bytes.__r_.__value_.__r.__words[0];
    if (!bytes.__r_.__value_.__r.__words[0])
    {
      v6 = 0;
      v13 = 0;
      goto LABEL_7;
    }

    size = bytes.__r_.__value_.__l.__size_;
  }

  else
  {
    p_bytes = &bytes;
  }

  v6 = CFStringCreateWithBytes(0, p_bytes, size, 0x8000100u, 0);
  v13 = v6;
  if (!v6)
  {
    v8 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v8, "Could not construct");
    __cxa_throw(v8, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

LABEL_7:
  cf = 0;
  applesauce::CF::at_or<applesauce::CF::StringRef,applesauce::CF::StringRef>(a2, *(v3 + 48), v6, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (SHIBYTE(bytes.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(bytes.__r_.__value_.__l.__data_);
  }
}

void sub_1DE4F5F98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef((v18 - 40));
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AMCP::Null::Clock::populate_core(unsigned int)::$_2,std::allocator<AMCP::Null::Clock::populate_core(unsigned int)::$_2>,applesauce::CF::StringRef ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5975808;
  a2[1] = v2;
  return result;
}

void AMCP::Null::Clock::~Clock(std::__shared_weak_count **this)
{
  AMCP::Null::Object::~Object(this);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<AMCP::Null::Clock>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5977558;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void sub_1DE4F820C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t AMCP::Core::Operation_Utilities::make_generic_constant_property<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}::~Thing(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2(0, a1, 0, 0);
  }

  return a1;
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(AMCP::Core::Operation &)::{lambda(void)#1}>,std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities28add_specific_property_getterINSt3__16vectorINS3_5tupleIJN2CA14ValueRangeListENS6_17StreamDescriptionEEEENS3_9allocatorIS9_EEEEEEvRNS0_9OperationEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(AMCP::Core::Operation &)::{lambda(void)#1}>,std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>> ()(void)>::operator()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  AMCP::Core::Operation::call_function<AMCP::Thing>(v4, (a1 + 8));
  result = AMCP::Thing::convert_to<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(a2, v4);
  if (v5)
  {
    return v5(0, v4, 0, 0);
  }

  return result;
}

void sub_1DE4F862C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(AMCP::Core::Operation &)::{lambda(void)#1}>,std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>> ()(void)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

double std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(AMCP::Core::Operation &)::{lambda(void)#1}>,std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>> ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F59765D8;
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(a2 + 8, a1 + 8);
  result = *(a1 + 48);
  *(a2 + 48) = result;
  *(a2 + 56) = *(a1 + 56);
  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(AMCP::Core::Operation &)::{lambda(void)#1}>,std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>> ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F59765D8;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(AMCP::Core::Operation &)::{lambda(void)#1}>,std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>> ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F59765D8;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));
  return a1;
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities30make_generic_constant_propertyINSt3__16vectorINS3_5tupleIJN2CA14ValueRangeListENS6_17StreamDescriptionEEEENS3_9allocatorIS9_EEEEEENS3_10shared_ptrINS0_9OperationEEERKNS_7AddressERKNS_5ThingEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::operator()@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v2 = *(result + 40);
  if (v2)
  {
    return v2(1, result + 8, a2, 0);
  }

  return result;
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[5];
  if (v2)
  {
    v2(0, __p + 1, 0, 0);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    return v1(0, result + 8, 0, 0);
  }

  return result;
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5976558;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0;
  *(a2 + 8) = 0u;
  v2 = *(result + 40);
  if (v2)
  {
    return v2(1, result + 8, a2 + 8, 0);
  }

  return result;
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5976558;
  v1 = a1[5];
  if (v1)
  {
    v1(0, a1 + 1, 0, 0);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5976558;
  v2 = a1[5];
  if (v2)
  {
    v2(0, a1 + 1, 0, 0);
  }

  return a1;
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_setter<CA::StreamDescription>(AMCP::Core::Operation &)::{lambda(CA::StreamDescription const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_setter<CA::StreamDescription>(AMCP::Core::Operation &)::{lambda(CA::StreamDescription const&)#1}>,void ()(CA::StreamDescription const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities28add_specific_property_setterIN2CA17StreamDescriptionEEEvRNS0_9OperationEEUlRKS4_E_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_setter<CA::StreamDescription>(AMCP::Core::Operation &)::{lambda(CA::StreamDescription const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_setter<CA::StreamDescription>(AMCP::Core::Operation &)::{lambda(CA::StreamDescription const&)#1}>,void ()(CA::StreamDescription const&)>::operator()()
{
  v0 = 0;
  v1 = 0;
  v2 = 0;
  v3 = AMCP::Implementation::Outboard_Storage<CA::StreamDescription>::dispatch;
  operator new();
}

void sub_1DE4F8BB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_setter<CA::StreamDescription>(AMCP::Core::Operation &)::{lambda(CA::StreamDescription const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_setter<CA::StreamDescription>(AMCP::Core::Operation &)::{lambda(CA::StreamDescription const&)#1}>,void ()(CA::StreamDescription const&)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

double std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_setter<CA::StreamDescription>(AMCP::Core::Operation &)::{lambda(CA::StreamDescription const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_setter<CA::StreamDescription>(AMCP::Core::Operation &)::{lambda(CA::StreamDescription const&)#1}>,void ()(CA::StreamDescription const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F59764D8;
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(a2 + 8, a1 + 8);
  result = *(a1 + 48);
  *(a2 + 48) = result;
  *(a2 + 56) = *(a1 + 56);
  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_setter<CA::StreamDescription>(AMCP::Core::Operation &)::{lambda(CA::StreamDescription const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_setter<CA::StreamDescription>(AMCP::Core::Operation &)::{lambda(CA::StreamDescription const&)#1}>,void ()(CA::StreamDescription const&)>::~__func(void *a1)
{
  *a1 = &unk_1F59764D8;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_setter<CA::StreamDescription>(AMCP::Core::Operation &)::{lambda(CA::StreamDescription const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_setter<CA::StreamDescription>(AMCP::Core::Operation &)::{lambda(CA::StreamDescription const&)#1}>,void ()(CA::StreamDescription const&)>::~__func(void *a1)
{
  *a1 = &unk_1F59764D8;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));
  return a1;
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1718444404u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1718444404u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4NullL22make_settable_propertyILj1718444404EEENSt3__110shared_ptrINS_4Core9OperationEEENS3_INS0_6ObjectEEERKNS_7AddressERKN10applesauce2CF13DictionaryRefERKNS2_8optionalINS_5ThingEEEEUlRKSI_E_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1718444404u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1718444404u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  if (!v3 || (v3 = std::__shared_weak_count::lock(v3), (v5 = v3) == 0) || (v3 = *(a1 + 8)) == 0)
  {
    v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v12 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v3);
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
      v26 = "Null_Object.cpp";
      v27 = 1024;
      v28 = 59;
      v29 = 2080;
      v30 = "object_ptr.operator BOOL() == false";
      _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s no model object", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v24);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v17, "no model object");
    std::runtime_error::runtime_error(&v18, &v17);
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = -1;
    v18.__vftable = &unk_1F5992170;
    v19 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v18);
    v31 = "auto AMCP::Null::make_settable_property(Object_Ptr, const Address &, const CF::Dictionary &, const std::optional<Thing> &)::(anonymous class)::operator()(const Thing &) const";
    v32 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Null/Null_Object.cpp";
    v33 = 59;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v16);
  }

  v6 = (*(*v3 + 40))(v3, v3[22], a1 + 24, a2);
  if ((v6 & 1) == 0)
  {
    v8 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v8 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v6);
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
      *buf = 136315650;
      v26 = "Null_Object.cpp";
      v27 = 1024;
      v28 = 61;
      v29 = 2080;
      v30 = "was_handled == Object::Was_Handled::no";
      _os_log_error_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s not handled", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v24);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v17, "not handled");
    std::runtime_error::runtime_error(&v18, &v17);
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = -1;
    v18.__vftable = &unk_1F5992170;
    v19 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v18);
    v31 = "auto AMCP::Null::make_settable_property(Object_Ptr, const Address &, const CF::Dictionary &, const std::optional<Thing> &)::(anonymous class)::operator()(const Thing &) const";
    v32 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Null/Null_Object.cpp";
    v33 = 61;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v16);
  }

  v7 = *MEMORY[0x1E69E9840];

  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
}

void sub_1DE4F927C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, std::runtime_error a17, char a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v21 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a18);
  std::runtime_error::~runtime_error(&a17);
  if (v20)
  {
    __cxa_free_exception(v19);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v21 - 129));
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1718444404u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1718444404u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1718444404u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1718444404u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

double std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1718444404u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1718444404u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::__clone(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F5976458;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  *(a2 + 32) = *(a1 + 32);
  return result;
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1718444404u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1718444404u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::~__func(void *a1)
{
  *a1 = &unk_1F5976458;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1718444404u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1718444404u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::~__func(void *a1)
{
  *a1 = &unk_1F5976458;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<CA::StreamDescription>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<CA::StreamDescription>(AMCP::Core::Operation &)::{lambda(void)#1}>,CA::StreamDescription ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities28add_specific_property_getterIN2CA17StreamDescriptionEEEvRNS0_9OperationEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<CA::StreamDescription>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<CA::StreamDescription>(AMCP::Core::Operation &)::{lambda(void)#1}>,CA::StreamDescription ()(void)>::operator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AMCP::Core::Operation::call_function<AMCP::Thing>(v4, (a1 + 8));
  result = AMCP::Thing::convert_to<CA::StreamDescription>(a2, v4);
  if (v5)
  {
    return v5(0, v4, 0, 0);
  }

  return result;
}

void sub_1DE4F95F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<CA::StreamDescription>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<CA::StreamDescription>(AMCP::Core::Operation &)::{lambda(void)#1}>,CA::StreamDescription ()(void)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

double std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<CA::StreamDescription>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<CA::StreamDescription>(AMCP::Core::Operation &)::{lambda(void)#1}>,CA::StreamDescription ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F59763D8;
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(a2 + 8, a1 + 8);
  result = *(a1 + 48);
  *(a2 + 48) = result;
  *(a2 + 56) = *(a1 + 56);
  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<CA::StreamDescription>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<CA::StreamDescription>(AMCP::Core::Operation &)::{lambda(void)#1}>,CA::StreamDescription ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F59763D8;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<CA::StreamDescription>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<CA::StreamDescription>(AMCP::Core::Operation &)::{lambda(void)#1}>,CA::StreamDescription ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F59763D8;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));
  return a1;
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1718444404u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1718444404u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4NullL22make_settable_propertyILj1718444404EEENSt3__110shared_ptrINS_4Core9OperationEEENS3_INS0_6ObjectEEERKNS_7AddressERKN10applesauce2CF13DictionaryRefERKNS2_8optionalINS_5ThingEEEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1718444404u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1718444404u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::operator()@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v2 = *(result + 40);
  if (v2)
  {
    return v2(1, result + 8, a2, 0);
  }

  return result;
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1718444404u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1718444404u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[5];
  if (v2)
  {
    v2(0, __p + 1, 0, 0);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1718444404u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1718444404u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    return v1(0, result + 8, 0, 0);
  }

  return result;
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1718444404u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1718444404u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5976358;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0;
  *(a2 + 8) = 0u;
  v2 = *(result + 40);
  if (v2)
  {
    return v2(1, result + 8, a2 + 8, 0);
  }

  return result;
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1718444404u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1718444404u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5976358;
  v1 = a1[5];
  if (v1)
  {
    v1(0, a1 + 1, 0, 0);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1718444404u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1718444404u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5976358;
  v2 = a1[5];
  if (v2)
  {
    v2(0, a1 + 1, 0, 0);
  }

  return a1;
}

uint64_t AMCP::Core::Operation_Utilities::make_generic_constant_property<int>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}::~Thing(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2(0, a1, 0, 0);
  }

  return a1;
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<int>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<int>(AMCP::Core::Operation &)::{lambda(void)#1}>,int ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities28add_specific_property_getterIiEEvRNS0_9OperationEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<int>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<int>(AMCP::Core::Operation &)::{lambda(void)#1}>,int ()(void)>::operator()(uint64_t a1)
{
  AMCP::Core::Operation::call_function<AMCP::Thing>(v3, (a1 + 8));
  v1 = AMCP::Thing::convert_to<int>(v3);
  if (v4)
  {
    v4(0, v3, 0, 0);
  }

  return v1;
}

void sub_1DE4F9B8C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<int>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<int>(AMCP::Core::Operation &)::{lambda(void)#1}>,int ()(void)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

double std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<int>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<int>(AMCP::Core::Operation &)::{lambda(void)#1}>,int ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F59762D8;
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(a2 + 8, a1 + 8);
  result = *(a1 + 48);
  *(a2 + 48) = result;
  *(a2 + 56) = *(a1 + 56);
  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<int>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<int>(AMCP::Core::Operation &)::{lambda(void)#1}>,int ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F59762D8;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<int>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<int>(AMCP::Core::Operation &)::{lambda(void)#1}>,int ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F59762D8;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));
  return a1;
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<int>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<int>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities30make_generic_constant_propertyIiEENSt3__110shared_ptrINS0_9OperationEEERKNS_7AddressERKNS_5ThingEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<int>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<int>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::operator()@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v2 = *(result + 40);
  if (v2)
  {
    return v2(1, result + 8, a2, 0);
  }

  return result;
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<int>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<int>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[5];
  if (v2)
  {
    v2(0, __p + 1, 0, 0);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<int>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<int>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    return v1(0, result + 8, 0, 0);
  }

  return result;
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<int>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<int>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5976258;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0;
  *(a2 + 8) = 0u;
  v2 = *(result + 40);
  if (v2)
  {
    return v2(1, result + 8, a2 + 8, 0);
  }

  return result;
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<int>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<int>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5976258;
  v1 = a1[5];
  if (v1)
  {
    v1(0, a1 + 1, 0, 0);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<int>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<int>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5976258;
  v2 = a1[5];
  if (v2)
  {
    v2(0, a1 + 1, 0, 0);
  }

  return a1;
}

uint64_t AMCP::Core::Operation_Utilities::make_generic_constant_property<AMCP::Direction>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}::~Thing(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2(0, a1, 0, 0);
  }

  return a1;
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<AMCP::Direction>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<AMCP::Direction>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Direction ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities28add_specific_property_getterINS_9DirectionEEEvRNS0_9OperationEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<AMCP::Direction>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<AMCP::Direction>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Direction ()(void)>::operator()(uint64_t a1)
{
  AMCP::Core::Operation::call_function<AMCP::Thing>(v3, (a1 + 8));
  v1 = AMCP::Thing::convert_to<AMCP::Direction>(v3);
  if (v4)
  {
    v4(0, v3, 0, 0);
  }

  return v1;
}

void sub_1DE4FA124(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<AMCP::Direction>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<AMCP::Direction>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Direction ()(void)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

double std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<AMCP::Direction>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<AMCP::Direction>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Direction ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F59761D8;
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(a2 + 8, a1 + 8);
  result = *(a1 + 48);
  *(a2 + 48) = result;
  *(a2 + 56) = *(a1 + 56);
  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<AMCP::Direction>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<AMCP::Direction>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Direction ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F59761D8;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<AMCP::Direction>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<AMCP::Direction>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Direction ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F59761D8;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));
  return a1;
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<AMCP::Direction>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<AMCP::Direction>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities30make_generic_constant_propertyINS_9DirectionEEENSt3__110shared_ptrINS0_9OperationEEERKNS_7AddressERKNS_5ThingEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<AMCP::Direction>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<AMCP::Direction>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::operator()@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v2 = *(result + 40);
  if (v2)
  {
    return v2(1, result + 8, a2, 0);
  }

  return result;
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<AMCP::Direction>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<AMCP::Direction>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[5];
  if (v2)
  {
    v2(0, __p + 1, 0, 0);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<AMCP::Direction>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<AMCP::Direction>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    return v1(0, result + 8, 0, 0);
  }

  return result;
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<AMCP::Direction>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<AMCP::Direction>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5976158;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0;
  *(a2 + 8) = 0u;
  v2 = *(result + 40);
  if (v2)
  {
    return v2(1, result + 8, a2 + 8, 0);
  }

  return result;
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<AMCP::Direction>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<AMCP::Direction>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5976158;
  v1 = a1[5];
  if (v1)
  {
    v1(0, a1 + 1, 0, 0);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<AMCP::Direction>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<AMCP::Direction>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5976158;
  v2 = a1[5];
  if (v2)
  {
    v2(0, a1 + 1, 0, 0);
  }

  return a1;
}

void AMCP::Null::Stream::~Stream(std::__shared_weak_count **this)
{
  AMCP::Null::Object::~Object(this);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<AMCP::Null::Stream>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5977508;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void *AMCP::Null::Control::Control(void *a1, uint64_t a2, uint64_t a3, int a4, void *a5, CFTypeRef *a6)
{
  *&v10 = a2;
  *(&v10 + 1) = a3;
  if (a3)
  {
    atomic_fetch_add_explicit((a3 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = a5[1];
  v9[0] = *a5;
  v9[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  AMCP::Null::Object::Object(a1, &v10, a4, v9, a6);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (*(&v10 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v10 + 1));
  }

  *a1 = &unk_1F5974D18;
  return a1;
}

void sub_1DE4FA74C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE4FAE28(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __clang_call_terminate(a1);
}

void AMCP::Null::Control::~Control(std::__shared_weak_count **this)
{
  AMCP::Null::Object::~Object(this);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<AMCP::Null::Control>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F59774B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t AMCP::Null::Device::do_set_property(AMCP::Null::Device *this, int a2, const AMCP::Address *a3, const AMCP::Thing *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = *(this + 8);
  if (v8)
  {
    v9 = std::__shared_weak_count::lock(v8);
    if (v9)
    {
      v10 = *(this + 7);
      if (v10)
      {
        v11 = (v10 + 88);
        goto LABEL_7;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = (this + 40);
LABEL_7:
  v12 = *v11;
  v13 = *a3;
  if (*a3 == 1718444404)
  {
    operator new();
  }

  if (v13 == 1852597868)
  {
    if (*(this + 22) == a2)
    {
      operator new();
    }
  }

  else if (v13 == 1853059700 && *(this + 22) == a2)
  {
    operator new();
  }

  v14 = AMCP::Null::Object::do_set_property(this, a2, a3, a4);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

void sub_1DE4FB5B0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AMCP::Null::Device::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_2,std::allocator<AMCP::Null::Device::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_2>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Null6Device15do_set_propertyEjRKNS_7AddressERKNS_5ThingEE3$_2"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Null::Device::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_2,std::allocator<AMCP::Null::Device::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_2>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (!v5)
      {
LABEL_19:
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
        return;
      }

      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v5[6]);
      v16[1] = MutableCopy;
      AMCP::Thing::convert_to<applesauce::CF::StringRef>(v16, a1 + 56);
      v7 = v16[0];
      if (!v16[0])
      {
        if (MutableCopy)
        {
          CFRelease(MutableCopy);
        }

        goto LABEL_19;
      }

      v12 = 0x676C6F626E6C666CLL;
      v13 = 0;
      AMCP::Address::to_string(&bytes, &v12, 0x676C6F626E6C666CLL);
      size = SHIBYTE(bytes.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(bytes.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        p_bytes = bytes.__r_.__value_.__r.__words[0];
        if (!bytes.__r_.__value_.__r.__words[0])
        {
          v15 = 0;
          mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::StringRef>(MutableCopy, 0, v7);
LABEL_13:
          if (SHIBYTE(bytes.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(bytes.__r_.__value_.__l.__data_);
          }

          mcp_applesauce::CF::Dictionary_Builder::copy_dictionary(&bytes, MutableCopy);
          (*(*v5 + 3))(v5, &bytes);
          if (bytes.__r_.__value_.__r.__words[0])
          {
            CFRelease(bytes.__r_.__value_.__l.__data_);
          }

          CFRelease(v7);
          if (MutableCopy)
          {
            CFRelease(MutableCopy);
          }

          goto LABEL_19;
        }

        size = bytes.__r_.__value_.__l.__size_;
      }

      else
      {
        p_bytes = &bytes;
      }

      v10 = CFStringCreateWithBytes(0, p_bytes, size, 0x8000100u, 0);
      v15 = v10;
      if (!v10)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::StringRef>(MutableCopy, v10, v7);
      CFRelease(v10);
      goto LABEL_13;
    }
  }
}

void sub_1DE4FB7F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, const void *a17, const void *a18, const void *a19)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a17);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  applesauce::CF::StringRef::~StringRef(&a18);
  mcp_applesauce::CF::Dictionary_Builder::~Dictionary_Builder(&a19);
  std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::Null::Device::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_2,std::allocator<AMCP::Null::Device::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_2>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[11];
  if (v2)
  {
    v2(0, __p + 7, 0, 0);
  }

  v3 = __p[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = __p[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::Null::Device::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_2,std::allocator<AMCP::Null::Device::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_2>,void ()(void)>::destroy(void *a1)
{
  v2 = a1[11];
  if (v2)
  {
    v2(0, a1 + 7, 0, 0);
  }

  v3 = a1[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = a1[2];
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

uint64_t std::__function::__func<AMCP::Null::Device::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_2,std::allocator<AMCP::Null::Device::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_2>,void ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F59760D8;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 40) = *(result + 40);
  v5 = *(result + 48);
  *(a2 + 56) = 0u;
  *(a2 + 48) = v5;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0;
  v6 = *(result + 88);
  if (v6)
  {
    return v6(1, result + 56);
  }

  return result;
}

void sub_1DE4FB9EC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(v1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE4FBAD8(_Unwind_Exception *a1)
{
  v3 = v1[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = v1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::Null::Device::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_2,std::allocator<AMCP::Null::Device::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_2>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F59760D8;
  v2 = a1[11];
  if (v2)
  {
    v2(0, a1 + 7, 0, 0);
  }

  v3 = a1[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = a1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Null::Device::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_2,std::allocator<AMCP::Null::Device::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_2>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F59760D8;
  v2 = a1[11];
  if (v2)
  {
    v2(0, a1 + 7, 0, 0);
  }

  v3 = a1[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = a1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::Null::Device::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_1,std::allocator<AMCP::Null::Device::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_1>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Null6Device15do_set_propertyEjRKNS_7AddressERKNS_5ThingEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void AMCP::Null::Device::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_1::operator()(uint64_t *a1)
{
  v123 = *MEMORY[0x1E69E9840];
  v2 = a1[1];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *a1;
      if (!*a1)
      {
LABEL_146:
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
        goto LABEL_147;
      }

      v6 = *(a1 + 8);
      for (i = *(v5 + 120); i != *(v5 + 128); i += 2)
      {
        if (*(*i + 88) == v6)
        {
          v8 = 1768845428;
          goto LABEL_14;
        }
      }

      for (i = *(v5 + 144); ; i += 2)
      {
        if (i == *(v5 + 152))
        {
          goto LABEL_146;
        }

        if (*(*i + 88) == v6)
        {
          break;
        }
      }

      v8 = 1869968496;
LABEL_14:
      AMCP::Thing::convert_to<CA::StreamDescription>(v119, (a1 + 5));
      v117 = 0x676C6F627363686ELL;
      v118 = 0;
      v115 = 0x676C6F62666D6174;
      v116 = 0;
      v114[0] = 1937009955;
      v114[1] = v8;
      v114[2] = 0;
      v9 = *i;
      v91 = v4;
      if (!*(v9 + 48))
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      AMCP::Address::to_string(valuePtr, &v117, 0x676C6F62666D6174);
      v10 = valuePtr[23];
      if ((valuePtr[23] & 0x8000000000000000) != 0)
      {
        v11 = *valuePtr;
        if (!*valuePtr)
        {
          v12 = 0;
          v109[0] = 0;
          goto LABEL_20;
        }

        v10 = *&valuePtr[8];
      }

      else
      {
        v11 = valuePtr;
      }

      v12 = CFStringCreateWithBytes(0, v11, v10, 0x8000100u, 0);
      v109[0] = v12;
      if (!v12)
      {
        v87 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v87, "Could not construct");
        __cxa_throw(v87, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

LABEL_20:
      applesauce::CF::details::find_at_key<applesauce::CF::NumberRef,applesauce::CF::StringRef>(cf, *(v9 + 48), v12);
      if (!cf[0])
      {
        v83 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v83, "Could not construct");
        __cxa_throw(v83, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      v13 = applesauce::CF::convert_to<unsigned int,0>(cf[0]);
      if (cf[0])
      {
        CFRelease(cf[0]);
      }

      if (v109[0])
      {
        CFRelease(v109[0]);
      }

      if ((valuePtr[23] & 0x80000000) != 0)
      {
        operator delete(*valuePtr);
      }

      if (!*(v5 + 48))
      {
        v84 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v84, "Could not construct");
        __cxa_throw(v84, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      AMCP::Address::to_string(valuePtr, v114, v14);
      v15 = valuePtr[23];
      if ((valuePtr[23] & 0x8000000000000000) != 0)
      {
        v16 = *valuePtr;
        if (!*valuePtr)
        {
          cf[0] = 0;
LABEL_33:
          v17 = applesauce::CF::details::at_key<applesauce::CF::StringRef>(*(v5 + 48), v16);
          if (!v17)
          {
            v85 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v85, "Could not find item");
            __cxa_throw(v85, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          v18 = v17;
          CFRetain(v17);
          theArray = v18;
          v19 = CFGetTypeID(v18);
          if (v19 != CFArrayGetTypeID())
          {
            v86 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v86, "Could not construct");
            __cxa_throw(v86, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          if (cf[0])
          {
            CFRelease(cf[0]);
          }

          if ((valuePtr[23] & 0x80000000) != 0)
          {
            operator delete(*valuePtr);
          }

          MutableCopy = CFDictionaryCreateMutableCopy(0, 0, *(v5 + 48));
          Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
          v111 = Mutable;
          v22 = theArray;
          if (!theArray)
          {
LABEL_123:
            AMCP::Address::to_string(valuePtr, v114, v21);
            v61 = valuePtr[23];
            if ((valuePtr[23] & 0x8000000000000000) != 0)
            {
              v62 = *valuePtr;
              if (!*valuePtr)
              {
                cf[0] = 0;
LABEL_128:
                mcp_applesauce::CF::Array_Builder::copy_array(v109, Mutable);
                v63 = MutableCopy;
                v64 = cf[0];
                mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::ArrayRef>(MutableCopy, cf[0], v109[0]);
                if (v109[0])
                {
                  CFRelease(v109[0]);
                }

                v4 = v91;
                if (v64)
                {
                  CFRelease(v64);
                }

                if ((valuePtr[23] & 0x80000000) != 0)
                {
                  operator delete(*valuePtr);
                }

                mcp_applesauce::CF::Dictionary_Builder::copy_dictionary(valuePtr, v63);
                (*(*v5 + 24))(v5, valuePtr);
                if (*valuePtr)
                {
                  CFRelease(*valuePtr);
                }

                if (v111)
                {
                  CFRelease(v111);
                }

                if (v63)
                {
                  CFRelease(v63);
                }

                if (theArray)
                {
                  CFRelease(theArray);
                }

                goto LABEL_146;
              }

              v61 = *&valuePtr[8];
            }

            else
            {
              v62 = valuePtr;
            }

            cf[0] = CFStringCreateWithBytes(0, v62, v61, 0x8000100u, 0);
            if (!cf[0])
            {
              v89 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v89, "Could not construct");
              __cxa_throw(v89, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }

            goto LABEL_128;
          }

          Count = CFArrayGetCount(theArray);
          v24 = Count;
          v25 = theArray;
          if (theArray)
          {
            v92 = CFArrayGetCount(theArray);
            if (!v24)
            {
              goto LABEL_123;
            }
          }

          else
          {
            v92 = 0;
            if (!Count)
            {
              goto LABEL_123;
            }
          }

          v26 = 0;
          while (1)
          {
            if (v22 == v25 && v26 == v92)
            {
              goto LABEL_123;
            }

            applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(&theDict, v22, v26);
            if (!theDict)
            {
              v74 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v74, "Could not construct");
              __cxa_throw(v74, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }

            AMCP::Address::to_string(valuePtr, &v117, v27);
            v28 = valuePtr[23];
            if ((valuePtr[23] & 0x8000000000000000) != 0)
            {
              v29 = *valuePtr;
              if (!*valuePtr)
              {
                v30 = 0;
                v109[0] = 0;
                goto LABEL_53;
              }

              v28 = *&valuePtr[8];
            }

            else
            {
              v29 = valuePtr;
            }

            v30 = CFStringCreateWithBytes(0, v29, v28, 0x8000100u, 0);
            v109[0] = v30;
            if (!v30)
            {
              v76 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v76, "Could not construct");
              __cxa_throw(v76, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }

LABEL_53:
            applesauce::CF::details::find_at_key<applesauce::CF::NumberRef,applesauce::CF::StringRef>(cf, theDict, v30);
            if (!cf[0])
            {
              v75 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v75, "Could not construct");
              __cxa_throw(v75, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }

            v31 = applesauce::CF::convert_to<unsigned int,0>(cf[0]);
            if (cf[0])
            {
              CFRelease(cf[0]);
            }

            if (v109[0])
            {
              CFRelease(v109[0]);
            }

            if ((valuePtr[23] & 0x80000000) != 0)
            {
              operator delete(*valuePtr);
            }

            if (v31 == v13)
            {
              if (!theDict)
              {
                v78 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v78, "Could not construct");
                __cxa_throw(v78, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
              }

              AMCP::Address::to_string(valuePtr, &v115, v32);
              v33 = valuePtr[23];
              if ((valuePtr[23] & 0x8000000000000000) != 0)
              {
                v34 = *valuePtr;
                if (*valuePtr)
                {
                  v33 = *&valuePtr[8];
                  goto LABEL_67;
                }

                v35 = 0;
                *&v106 = 0;
              }

              else
              {
                v34 = valuePtr;
LABEL_67:
                v35 = CFStringCreateWithBytes(0, v34, v33, 0x8000100u, 0);
                *&v106 = v35;
                if (!v35)
                {
                  v80 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v80, "Could not construct");
                  __cxa_throw(v80, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }
              }

              applesauce::CF::details::find_at_key<applesauce::CF::DictionaryRef,applesauce::CF::StringRef>(cf, theDict, v35);
              memset(&v109[1], 0, 24);
              v109[0] = cf[0];
              cf[0] = 0;
              v109[4] = AMCP::Implementation::In_Place_Storage<applesauce::CF::DictionaryRef>::dispatch;
              if (v106)
              {
                CFRelease(v106);
              }

              if ((valuePtr[23] & 0x80000000) != 0)
              {
                operator delete(*valuePtr);
              }

              AMCP::Thing::convert_to<CA::StreamDescription>(&v106, v109);
              memset(__p, 0, sizeof(__p));
              if (!theDict)
              {
                v77 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v77, "Could not construct");
                __cxa_throw(v77, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
              }

              cf[0] = 0x676C6F62666D7423;
              LODWORD(cf[1]) = 0;
              AMCP::Address::to_string(valuePtr, cf, v36);
              v37 = valuePtr[23];
              if ((valuePtr[23] & 0x8000000000000000) == 0)
              {
                v38 = valuePtr;
                goto LABEL_77;
              }

              v38 = *valuePtr;
              if (*valuePtr)
              {
                v37 = *&valuePtr[8];
LABEL_77:
                v39 = CFStringCreateWithBytes(0, v38, v37, 0x8000100u, 0);
                v94 = v39;
                if (!v39)
                {
                  v79 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v79, "Could not construct");
                  __cxa_throw(v79, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                applesauce::CF::details::find_at_key_or_optional<applesauce::CF::TypeRef,applesauce::CF::StringRef>(&v103, theDict, v39);
                CFRelease(v39);
              }

              else
              {
                v94 = 0;
                applesauce::CF::details::find_at_key_or_optional<applesauce::CF::TypeRef,applesauce::CF::StringRef>(&v103, theDict, 0);
              }

              if ((valuePtr[23] & 0x80000000) != 0)
              {
                operator delete(*valuePtr);
              }

              if (v104 == 1)
              {
                AMCP::make_thing_from_description(valuePtr, &v103);
                AMCP::Thing::convert_to<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(cf, valuePtr);
                v40 = __p[0];
                if (__p[0])
                {
                  v41 = __p[1];
                  v42 = __p[0];
                  if (__p[1] != __p[0])
                  {
                    v43 = __p[1];
                    do
                    {
                      v45 = *(v43 - 8);
                      v43 -= 64;
                      v44 = v45;
                      if (v45)
                      {
                        *(v41 - 7) = v44;
                        operator delete(v44);
                      }

                      v41 = v43;
                    }

                    while (v43 != v40);
                    v42 = __p[0];
                  }

                  __p[1] = v40;
                  operator delete(v42);
                }

                *__p = *cf;
                __p[2] = v98;
                cf[1] = 0;
                *&v98 = 0;
                cf[0] = 0;
                v94 = cf;
                std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__destroy_vector::operator()[abi:ne200100](&v94);
                if (*&valuePtr[32])
                {
                  v46 = (*&valuePtr[32])(0, valuePtr, 0, 0);
                }
              }

              else
              {
                v94 = 0;
                v95 = 0uLL;
                *valuePtr = v106;
                *&valuePtr[8] = v106;
                CA::ValueRangeList::AddRange(&v94, valuePtr);
                memset(valuePtr, 0, 24);
                std::vector<CA::ValueRange>::__init_with_size[abi:ne200100]<CA::ValueRange*,CA::ValueRange*>(valuePtr, v94, v95, (v95 - v94) >> 4);
                *&valuePtr[24] = v106;
                v121 = v107;
                v122 = v108;
                v47 = __p[1];
                if (__p[1] >= __p[2])
                {
                  v50 = (__p[1] - __p[0]) >> 6;
                  if ((v50 + 1) >> 58)
                  {
                    std::vector<void *>::__throw_length_error[abi:ne200100]();
                  }

                  v51 = (__p[2] - __p[0]) >> 5;
                  if (v51 <= v50 + 1)
                  {
                    v51 = v50 + 1;
                  }

                  if ((__p[2] - __p[0]) >= 0x7FFFFFFFFFFFFFC0)
                  {
                    v52 = 0x3FFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v52 = v51;
                  }

                  v99 = __p;
                  if (v52)
                  {
                    std::allocator<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::allocate_at_least[abi:ne200100](v52);
                  }

                  v53 = (v50 << 6);
                  cf[0] = 0;
                  cf[1] = v53;
                  v98 = v53;
                  *v53 = 0;
                  v53[1] = 0;
                  v53[2] = 0;
                  std::vector<CA::ValueRange>::__init_with_size[abi:ne200100]<CA::ValueRange*,CA::ValueRange*>(v53, *valuePtr, *&valuePtr[8], (*&valuePtr[8] - *valuePtr) >> 4);
                  v53[7] = v122;
                  *(v53 + 5) = v121;
                  *(v53 + 3) = *&valuePtr[24];
                  *&v98 = v98 + 64;
                  v54 = cf[1] + __p[0] - __p[1];
                  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::tuple<CA::ValueRangeList,CA::StreamDescription>>,std::tuple<CA::ValueRangeList,CA::StreamDescription>*>(__p, __p[0], __p[1], v54);
                  v55 = __p[0];
                  v56 = __p[2];
                  __p[0] = v54;
                  v90 = v98;
                  *&__p[1] = v98;
                  *&v98 = v55;
                  *(&v98 + 1) = v56;
                  cf[0] = v55;
                  cf[1] = v55;
                  std::__split_buffer<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::~__split_buffer(cf);
                  v49 = v90;
                  v48 = *valuePtr;
                }

                else
                {
                  *__p[1] = 0;
                  *(v47 + 1) = 0;
                  *(v47 + 2) = 0;
                  v48 = *valuePtr;
                  std::vector<CA::ValueRange>::__init_with_size[abi:ne200100]<CA::ValueRange*,CA::ValueRange*>(v47, *valuePtr, *&valuePtr[8], (*&valuePtr[8] - *valuePtr) >> 4);
                  *(v47 + 24) = v106;
                  *(v47 + 40) = v107;
                  *(v47 + 7) = v108;
                  v49 = v47 + 64;
                }

                __p[1] = v49;
                if (v48)
                {
                  operator delete(v48);
                }

                v46 = v94;
                if (v94)
                {
                  operator delete(v94);
                }
              }

              if (__p[1] == __p[0])
              {
                v66 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
                if ((v66 & 1) == 0)
                {
                  AMCP::Log::AMCP_Scope_Registry::initialize(v46);
                }

                v68 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
                v67 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
                if (v67)
                {
                  atomic_fetch_add_explicit(&v67->__shared_owners_, 1uLL, memory_order_relaxed);
                  v69 = *v68;
                  std::__shared_weak_count::__release_shared[abi:ne200100](v67);
                }

                else
                {
                  v69 = *v68;
                }

                if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
                {
                  *valuePtr = 136315650;
                  *&valuePtr[4] = "Null_Object.cpp";
                  *&valuePtr[12] = 1024;
                  *&valuePtr[14] = 1186;
                  *&valuePtr[18] = 2080;
                  *&valuePtr[20] = "(available_formats.size()) == false";
                  _os_log_error_impl(&dword_1DE1F9000, v69, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s failed to get a valid list of available formats", valuePtr, 0x1Cu);
                }

                AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v102);
                __cxa_allocate_exception(0x40uLL);
                std::runtime_error::runtime_error(&v96, "failed to get a valid list of available formats");
                std::runtime_error::runtime_error(cf, &v96);
                *(&v98 + 1) = 0;
                v99 = 0;
                v100 = 0;
                v101 = -1;
                cf[0] = &unk_1F5992170;
                *&v98 = &unk_1F5992198;
                boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(valuePtr, cf);
                *&valuePtr[32] = "auto AMCP::Null::Device::do_set_property(Object_ID, const Address &, const Thing &)::(anonymous class)::operator()() const";
                *&v121 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Null/Null_Object.cpp";
                DWORD2(v121) = 1186;
                applesauce::backtrace::snapshot_N<64>::snapshot_N(v93);
              }

              is_an_available_format = AMCP::Utility::Stream_Format::format_is_an_available_format(v119, __p[0], __p[1]);
              if (!is_an_available_format)
              {
                v70 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
                if ((v70 & 1) == 0)
                {
                  AMCP::Log::AMCP_Scope_Registry::initialize(is_an_available_format);
                }

                v72 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
                v71 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
                if (v71)
                {
                  atomic_fetch_add_explicit(&v71->__shared_owners_, 1uLL, memory_order_relaxed);
                  v73 = *v72;
                  std::__shared_weak_count::__release_shared[abi:ne200100](v71);
                }

                else
                {
                  v73 = *v72;
                }

                if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
                {
                  *valuePtr = 136315650;
                  *&valuePtr[4] = "Null_Object.cpp";
                  *&valuePtr[12] = 1024;
                  *&valuePtr[14] = 1189;
                  *&valuePtr[18] = 2080;
                  *&valuePtr[20] = "(format_is_valid) == false";
                  _os_log_error_impl(&dword_1DE1F9000, v73, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s failed to set stream format", valuePtr, 0x1Cu);
                }

                AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v102);
                __cxa_allocate_exception(0x40uLL);
                std::runtime_error::runtime_error(&v96, "failed to set stream format");
                std::runtime_error::runtime_error(cf, &v96);
                *(&v98 + 1) = 0;
                v99 = 0;
                v100 = 0;
                v101 = -1;
                cf[0] = &unk_1F5992170;
                *&v98 = &unk_1F5992198;
                boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(valuePtr, cf);
                *&valuePtr[32] = "auto AMCP::Null::Device::do_set_property(Object_ID, const Address &, const Thing &)::(anonymous class)::operator()() const";
                *&v121 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Null/Null_Object.cpp";
                DWORD2(v121) = 1189;
                applesauce::backtrace::snapshot_N<64>::snapshot_N(v93);
              }

              v94 = CFDictionaryCreateMutableCopy(0, 0, theDict);
              AMCP::Address::to_string(cf, &v115, v58);
              v59 = SBYTE7(v98);
              if ((SBYTE7(v98) & 0x8000000000000000) != 0)
              {
                v60 = cf[0];
                if (cf[0])
                {
                  v59 = cf[1];
                  goto LABEL_116;
                }

                v93[0] = 0;
              }

              else
              {
                v60 = cf;
LABEL_116:
                if (!CFStringCreateWithBytes(0, v60, v59, 0x8000100u, 0))
                {
                  v81 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v81, "Could not construct");
                  __cxa_throw(v81, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }
              }

              memset(valuePtr, 0, 32);
              *&valuePtr[32] = AMCP::Implementation::Outboard_Storage<CA::StreamDescription>::dispatch;
              operator new();
            }

            mcp_applesauce::CF::Array_Builder::append_value<applesauce::CF::DictionaryRef>(Mutable, theDict);
            if (theDict)
            {
              CFRelease(theDict);
            }

            if (++v26 == v24)
            {
              goto LABEL_123;
            }
          }
        }

        v15 = *&valuePtr[8];
      }

      else
      {
        v16 = valuePtr;
      }

      v16 = CFStringCreateWithBytes(0, v16, v15, 0x8000100u, 0);
      cf[0] = v16;
      if (!v16)
      {
        v88 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v88, "Could not construct");
        __cxa_throw(v88, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      goto LABEL_33;
    }
  }

LABEL_147:
  v65 = *MEMORY[0x1E69E9840];
}

void sub_1DE4FD3F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, void *a18, uint64_t a19, uint64_t a20, std::runtime_error a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36, uint64_t a37, const void *a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, int a52, const void *a53, const void *a54, const void *a55)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a13);
  if (*(v55 - 169) < 0)
  {
    operator delete(*(v55 - 192));
  }

  applesauce::CF::ArrayRef::~ArrayRef(&a38);
  std::optional<applesauce::CF::ArrayRef>::~optional(&a46);
  std::optional<applesauce::CF::ArrayRef>::~optional(&a22);
  applesauce::CF::NumberRef::~NumberRef(&__p);
  mcp_applesauce::CF::Array_Builder::~Array_Builder(&a53);
  mcp_applesauce::CF::Dictionary_Builder::~Dictionary_Builder(&a54);
  applesauce::CF::ArrayRef::~ArrayRef(&a55);
  std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  _Unwind_Resume(a1);
}

CFTypeID applesauce::CF::details::find_at_key<applesauce::CF::DictionaryRef,applesauce::CF::StringRef>(void *a1, CFDictionaryRef theDict, const void *a3)
{
  v4 = applesauce::CF::details::at_key<applesauce::CF::StringRef>(theDict, a3);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::not_found(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v5 = v4;
  CFRetain(v4);
  *a1 = v5;
  v6 = CFGetTypeID(v5);
  result = CFDictionaryGetTypeID();
  if (v6 != result)
  {
    v9 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v9, "Could not construct");
    __cxa_throw(v9, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return result;
}

void sub_1DE4FDB10(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

void AMCP::Null::change_sample_rates(AMCP::Null *this, CFArrayRef *a2, const void **a3)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
  v36[1] = Mutable;
  v6 = *a2;
  if (!*a2)
  {
    goto LABEL_45;
  }

  Count = CFArrayGetCount(*a2);
  v8 = Count;
  v9 = *a2;
  if (!*a2)
  {
    v10 = 0;
    if (!Count)
    {
      goto LABEL_45;
    }

    goto LABEL_6;
  }

  v10 = CFArrayGetCount(*a2);
  if (v8)
  {
LABEL_6:
    for (i = 0; v8 != i; ++i)
    {
      if (v6 == v9 && v10 == i)
      {
        break;
      }

      applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(v36, v6, i);
      if (!v36[0])
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      v31 = 0x676C6F62666D6174;
      v32 = 0;
      AMCP::Address::to_string(&bytes, &v31, v12);
      size = SHIBYTE(bytes.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(bytes.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        p_bytes = bytes.__r_.__value_.__r.__words[0];
        if (!bytes.__r_.__value_.__r.__words[0])
        {
          v15 = 0;
          cf = 0;
          goto LABEL_15;
        }

        size = bytes.__r_.__value_.__l.__size_;
      }

      else
      {
        p_bytes = &bytes;
      }

      v15 = CFStringCreateWithBytes(0, p_bytes, size, 0x8000100u, 0);
      cf = v15;
      if (!v15)
      {
        v25 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v25, "Could not construct");
        __cxa_throw(v25, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

LABEL_15:
      applesauce::CF::details::find_at_key<applesauce::CF::DictionaryRef,applesauce::CF::StringRef>(&theDict, v36[0], v15);
      if (cf)
      {
        CFRelease(cf);
      }

      if (SHIBYTE(bytes.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(bytes.__r_.__value_.__l.__data_);
      }

      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
      cf = MutableCopy;
      v17 = CFStringCreateWithBytes(0, "sample rate", 11, 0x8000100u, 0);
      bytes.__r_.__value_.__r.__words[0] = v17;
      if (!v17)
      {
        v24 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v24, "Could not construct");
        __cxa_throw(v24, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(MutableCopy, v17, *a3);
      CFRelease(v17);
      v18 = CFDictionaryCreateMutableCopy(0, 0, v36[0]);
      v30 = v18;
      v31 = 0x676C6F62666D6174;
      v32 = 0;
      AMCP::Address::to_string(&bytes, &v31, v19);
      v20 = SHIBYTE(bytes.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(bytes.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
      {
        v21 = &bytes;
        goto LABEL_24;
      }

      v21 = bytes.__r_.__value_.__r.__words[0];
      if (bytes.__r_.__value_.__r.__words[0])
      {
        v20 = bytes.__r_.__value_.__l.__size_;
LABEL_24:
        v22 = CFStringCreateWithBytes(0, v21, v20, 0x8000100u, 0);
        v29 = v22;
        if (!v22)
        {
          v26 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v26, "Could not construct");
          __cxa_throw(v26, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        goto LABEL_25;
      }

      v22 = 0;
      v29 = 0;
LABEL_25:
      mcp_applesauce::CF::Dictionary_Builder::copy_dictionary(&v28, MutableCopy);
      mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::DictionaryRef>(v18, v22, v28);
      if (v28)
      {
        CFRelease(v28);
      }

      if (v22)
      {
        CFRelease(v22);
      }

      if (SHIBYTE(bytes.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(bytes.__r_.__value_.__l.__data_);
      }

      mcp_applesauce::CF::Dictionary_Builder::copy_dictionary(&bytes, v18);
      mcp_applesauce::CF::Array_Builder::append_value<applesauce::CF::DictionaryRef>(Mutable, bytes.__r_.__value_.__l.__data_);
      if (bytes.__r_.__value_.__r.__words[0])
      {
        CFRelease(bytes.__r_.__value_.__l.__data_);
      }

      if (v18)
      {
        CFRelease(v18);
      }

      if (MutableCopy)
      {
        CFRelease(MutableCopy);
      }

      if (theDict)
      {
        CFRelease(theDict);
      }

      if (v36[0])
      {
        CFRelease(v36[0]);
      }
    }
  }

LABEL_45:
  mcp_applesauce::CF::Array_Builder::copy_array(this, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void sub_1DE4FDF3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12, const void *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, const void *a22, const void *a23, const void *a24, const void *a25)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a12);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  mcp_applesauce::CF::Dictionary_Builder::~Dictionary_Builder(&a13);
  mcp_applesauce::CF::Dictionary_Builder::~Dictionary_Builder(&a22);
  applesauce::CF::DictionaryRef::~DictionaryRef(&a23);
  applesauce::CF::DictionaryRef::~DictionaryRef(&a24);
  mcp_applesauce::CF::Array_Builder::~Array_Builder(&a25);
  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::Null::Device::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_1,std::allocator<AMCP::Null::Device::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_1>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[10];
  if (v2)
  {
    v2(0, __p + 6, 0, 0);
  }

  v3 = __p[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = __p[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::Null::Device::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_1,std::allocator<AMCP::Null::Device::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_1>,void ()(void)>::destroy(void *a1)
{
  v2 = a1[10];
  if (v2)
  {
    v2(0, a1 + 6, 0, 0);
  }

  v3 = a1[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = a1[2];
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

uint64_t std::__function::__func<AMCP::Null::Device::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_1,std::allocator<AMCP::Null::Device::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_1>,void ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F5976058;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(result + 40);
  *(a2 + 48) = 0u;
  *(a2 + 40) = v5;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0;
  v6 = *(result + 80);
  if (v6)
  {
    return v6(1, result + 48);
  }

  return result;
}

void sub_1DE4FE1DC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(v1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE4FE2C0(_Unwind_Exception *a1)
{
  v3 = v1[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = v1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::Null::Device::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_1,std::allocator<AMCP::Null::Device::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_1>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5976058;
  v2 = a1[10];
  if (v2)
  {
    v2(0, a1 + 6, 0, 0);
  }

  v3 = a1[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = a1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Null::Device::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_1,std::allocator<AMCP::Null::Device::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_1>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5976058;
  v2 = a1[10];
  if (v2)
  {
    v2(0, a1 + 6, 0, 0);
  }

  v3 = a1[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = a1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::Null::Device::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_0,std::allocator<AMCP::Null::Device::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Null6Device15do_set_propertyEjRKNS_7AddressERKNS_5ThingEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Null::Device::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_0,std::allocator<AMCP::Null::Device::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (!v5)
      {
LABEL_65:
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
        return;
      }

      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v5[6]);
      v44[1] = MutableCopy;
      valuePtr.__r_.__value_.__r.__words[0] = AMCP::Thing::convert_to<double>(a1 + 56);
      v44[0] = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
      if (!v44[0])
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      v41 = 0x676C6F626E737274;
      v42 = 0;
      AMCP::Address::to_string(&valuePtr, &v41, 0x676C6F626E737274);
      size = SHIBYTE(valuePtr.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(valuePtr.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        p_valuePtr = valuePtr.__r_.__value_.__r.__words[0];
        if (!valuePtr.__r_.__value_.__r.__words[0])
        {
          v38 = 0;
          mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(MutableCopy, 0, v44[0]);
          goto LABEL_11;
        }

        size = valuePtr.__r_.__value_.__l.__size_;
      }

      else
      {
        p_valuePtr = &valuePtr;
      }

      v9 = CFStringCreateWithBytes(0, p_valuePtr, size, 0x8000100u, 0);
      v38 = v9;
      if (!v9)
      {
        v31 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v31, "Could not construct");
        __cxa_throw(v31, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(MutableCopy, v9, v44[0]);
      CFRelease(v9);
LABEL_11:
      if (SHIBYTE(valuePtr.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(valuePtr.__r_.__value_.__l.__data_);
      }

      if (!v5[6])
      {
        v29 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v29, "Could not construct");
        __cxa_throw(v29, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      v38 = 0x696E707473746D23;
      v39 = 0;
      AMCP::Address::to_string(&valuePtr, &v38, v10);
      v11 = SHIBYTE(valuePtr.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(valuePtr.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        v12 = valuePtr.__r_.__value_.__r.__words[0];
        if (!valuePtr.__r_.__value_.__r.__words[0])
        {
          cf = 0;
          applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,applesauce::CF::StringRef>(&v41, v5[6], 0);
          goto LABEL_20;
        }

        v11 = valuePtr.__r_.__value_.__l.__size_;
      }

      else
      {
        v12 = &valuePtr;
      }

      v13 = CFStringCreateWithBytes(0, v12, v11, 0x8000100u, 0);
      cf = v13;
      if (!v13)
      {
        v32 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v32, "Could not construct");
        __cxa_throw(v32, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,applesauce::CF::StringRef>(&v41, v5[6], v13);
      CFRelease(v13);
LABEL_20:
      if (SHIBYTE(valuePtr.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(valuePtr.__r_.__value_.__l.__data_);
      }

      v15 = v42;
      if (v42 != 1)
      {
LABEL_33:
        if (!v5[6])
        {
          v30 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v30, "Could not construct");
          __cxa_throw(v30, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        cf = 0x6F75747073746D23;
        v37 = 0;
        AMCP::Address::to_string(&valuePtr, &cf, v14);
        v20 = SHIBYTE(valuePtr.__r_.__value_.__r.__words[2]);
        if ((SHIBYTE(valuePtr.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
        {
          v21 = valuePtr.__r_.__value_.__r.__words[0];
          if (!valuePtr.__r_.__value_.__r.__words[0])
          {
            v40 = 0;
            applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,applesauce::CF::StringRef>(&v38, v5[6], 0);
            goto LABEL_40;
          }

          v20 = valuePtr.__r_.__value_.__l.__size_;
        }

        else
        {
          v21 = &valuePtr;
        }

        v22 = CFStringCreateWithBytes(0, v21, v20, 0x8000100u, 0);
        v40 = v22;
        if (!v22)
        {
          v33 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v33, "Could not construct");
          __cxa_throw(v33, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,applesauce::CF::StringRef>(&v38, v5[6], v22);
        CFRelease(v22);
LABEL_40:
        if (SHIBYTE(valuePtr.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(valuePtr.__r_.__value_.__l.__data_);
        }

        v23 = v39;
        if (v39 != 1)
        {
          goto LABEL_53;
        }

        AMCP::Null::change_sample_rates(&v40, &v38, v44);
        cf = 0x6F75747073746D23;
        v37 = 0;
        AMCP::Address::to_string(&valuePtr, &cf, v24);
        v25 = SHIBYTE(valuePtr.__r_.__value_.__r.__words[2]);
        if ((SHIBYTE(valuePtr.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
        {
          v26 = valuePtr.__r_.__value_.__r.__words[0];
          if (!valuePtr.__r_.__value_.__r.__words[0])
          {
            mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::ArrayRef>(MutableCopy, 0, v40);
LABEL_49:
            if (SHIBYTE(valuePtr.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(valuePtr.__r_.__value_.__l.__data_);
            }

            if (v40)
            {
              CFRelease(v40);
            }

LABEL_53:
            mcp_applesauce::CF::Dictionary_Builder::copy_dictionary(&valuePtr, MutableCopy);
            (*(*v5 + 3))(v5, &valuePtr);
            if (valuePtr.__r_.__value_.__r.__words[0])
            {
              CFRelease(valuePtr.__r_.__value_.__l.__data_);
            }

            if (v23 && v38)
            {
              CFRelease(v38);
            }

            if (v15 && v41)
            {
              CFRelease(v41);
            }

            if (v44[0])
            {
              CFRelease(v44[0]);
            }

            if (MutableCopy)
            {
              CFRelease(MutableCopy);
            }

            goto LABEL_65;
          }

          v25 = valuePtr.__r_.__value_.__l.__size_;
        }

        else
        {
          v26 = &valuePtr;
        }

        v27 = CFStringCreateWithBytes(0, v26, v25, 0x8000100u, 0);
        if (!v27)
        {
          v35 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v35, "Could not construct");
          __cxa_throw(v35, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::ArrayRef>(MutableCopy, v27, v40);
        CFRelease(v27);
        goto LABEL_49;
      }

      AMCP::Null::change_sample_rates(&cf, &v41, v44);
      v38 = 0x696E707473746D23;
      v39 = 0;
      AMCP::Address::to_string(&valuePtr, &v38, v16);
      v17 = SHIBYTE(valuePtr.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(valuePtr.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        v18 = valuePtr.__r_.__value_.__r.__words[0];
        if (!valuePtr.__r_.__value_.__r.__words[0])
        {
          v40 = 0;
          mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::ArrayRef>(MutableCopy, 0, cf);
LABEL_29:
          if (SHIBYTE(valuePtr.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(valuePtr.__r_.__value_.__l.__data_);
          }

          if (cf)
          {
            CFRelease(cf);
          }

          goto LABEL_33;
        }

        v17 = valuePtr.__r_.__value_.__l.__size_;
      }

      else
      {
        v18 = &valuePtr;
      }

      v19 = CFStringCreateWithBytes(0, v18, v17, 0x8000100u, 0);
      v40 = v19;
      if (!v19)
      {
        v34 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v34, "Could not construct");
        __cxa_throw(v34, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::ArrayRef>(MutableCopy, v19, cf);
      CFRelease(v19);
      goto LABEL_29;
    }
  }
}

void sub_1DE4FEA7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, __int16 a11, char a12, char a13, uint64_t a14, char a15, uint64_t a16, const void *a17, __int16 a18, char a19, char a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a10);
  if (a27 < 0)
  {
    operator delete(__p);
  }

  applesauce::CF::ArrayRef::~ArrayRef(&a17);
  std::optional<applesauce::CF::ArrayRef>::~optional(&a15);
  std::optional<applesauce::CF::ArrayRef>::~optional(&a18);
  applesauce::CF::NumberRef::~NumberRef((v28 - 80));
  mcp_applesauce::CF::Dictionary_Builder::~Dictionary_Builder((v28 - 72));
  std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::Null::Device::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_0,std::allocator<AMCP::Null::Device::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_0>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[11];
  if (v2)
  {
    v2(0, __p + 7, 0, 0);
  }

  v3 = __p[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = __p[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::Null::Device::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_0,std::allocator<AMCP::Null::Device::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_0>,void ()(void)>::destroy(void *a1)
{
  v2 = a1[11];
  if (v2)
  {
    v2(0, a1 + 7, 0, 0);
  }

  v3 = a1[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = a1[2];
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

uint64_t std::__function::__func<AMCP::Null::Device::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_0,std::allocator<AMCP::Null::Device::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_0>,void ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F5975FD8;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 40) = *(result + 40);
  v5 = *(result + 48);
  *(a2 + 56) = 0u;
  *(a2 + 48) = v5;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0;
  v6 = *(result + 88);
  if (v6)
  {
    return v6(1, result + 56);
  }

  return result;
}

void sub_1DE4FEDDC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(v1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE4FEEC8(_Unwind_Exception *a1)
{
  v3 = v1[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = v1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::Null::Device::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_0,std::allocator<AMCP::Null::Device::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5975FD8;
  v2 = a1[11];
  if (v2)
  {
    v2(0, a1 + 7, 0, 0);
  }

  v3 = a1[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = a1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Null::Device::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_0,std::allocator<AMCP::Null::Device::do_set_property(unsigned int,AMCP::Address const&,AMCP::Thing const&)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5975FD8;
  v2 = a1[11];
  if (v2)
  {
    v2(0, a1 + 7, 0, 0);
  }

  v3 = a1[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = a1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void sub_1DE500748(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t std::__function::__func<AMCP::Null::Device::populate_core(unsigned int)::$_1,std::allocator<AMCP::Null::Device::populate_core(unsigned int)::$_1>,void ()(applesauce::CF::DictionaryRef const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Null6Device13populate_coreEjE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Null::Device::populate_core(unsigned int)::$_1,std::allocator<AMCP::Null::Device::populate_core(unsigned int)::$_1>,void ()(applesauce::CF::DictionaryRef const&)>::operator()(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 168);
  v4 = *a2;
  *(v2 + 168) = *a2;
  if (v4)
  {
    CFRetain(v4);
  }

  if (v3)
  {
    CFRelease(v3);
  }
}

uint64_t std::__function::__func<AMCP::Null::Device::populate_core(unsigned int)::$_1,std::allocator<AMCP::Null::Device::populate_core(unsigned int)::$_1>,void ()(applesauce::CF::DictionaryRef const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5975F58;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AMCP::Null::Device::populate_core(unsigned int)::$_0,std::allocator<AMCP::Null::Device::populate_core(unsigned int)::$_0>,applesauce::CF::DictionaryRef ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Null6Device13populate_coreEjE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<AMCP::Null::Device::populate_core(unsigned int)::$_0,std::allocator<AMCP::Null::Device::populate_core(unsigned int)::$_0>,applesauce::CF::DictionaryRef ()(void)>::operator()@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v3 = result[1];
  v4 = *(v3 + 168);
  if (v4)
  {
    result = CFRetain(*(v3 + 168));
  }

  *a2 = v4;
  return result;
}

uint64_t std::__function::__func<AMCP::Null::Device::populate_core(unsigned int)::$_0,std::allocator<AMCP::Null::Device::populate_core(unsigned int)::$_0>,applesauce::CF::DictionaryRef ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5975ED8;
  a2[1] = v2;
  return result;
}

uint64_t AMCP::Core::Operation_Utilities::make_generic_constant_property<applesauce::CF::DictionaryRef>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}::~Thing(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2(0, a1, 0, 0);
  }

  return a1;
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<applesauce::CF::DictionaryRef>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<applesauce::CF::DictionaryRef>(AMCP::Core::Operation &)::{lambda(void)#1}>,applesauce::CF::DictionaryRef ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities28add_specific_property_getterIN10applesauce2CF13DictionaryRefEEEvRNS0_9OperationEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

CFTypeRef *std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<applesauce::CF::DictionaryRef>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<applesauce::CF::DictionaryRef>(AMCP::Core::Operation &)::{lambda(void)#1}>,applesauce::CF::DictionaryRef ()(void)>::operator()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  AMCP::Core::Operation::call_function<AMCP::Thing>(v4, (a1 + 8));
  result = AMCP::Thing::convert_to<applesauce::CF::DictionaryRef>(a2, v4);
  if (v5)
  {
    return v5(0, v4, 0, 0);
  }

  return result;
}

void sub_1DE500CEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<applesauce::CF::DictionaryRef>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<applesauce::CF::DictionaryRef>(AMCP::Core::Operation &)::{lambda(void)#1}>,applesauce::CF::DictionaryRef ()(void)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

double std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<applesauce::CF::DictionaryRef>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<applesauce::CF::DictionaryRef>(AMCP::Core::Operation &)::{lambda(void)#1}>,applesauce::CF::DictionaryRef ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5975E58;
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(a2 + 8, a1 + 8);
  result = *(a1 + 48);
  *(a2 + 48) = result;
  *(a2 + 56) = *(a1 + 56);
  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<applesauce::CF::DictionaryRef>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<applesauce::CF::DictionaryRef>(AMCP::Core::Operation &)::{lambda(void)#1}>,applesauce::CF::DictionaryRef ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5975E58;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<applesauce::CF::DictionaryRef>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<applesauce::CF::DictionaryRef>(AMCP::Core::Operation &)::{lambda(void)#1}>,applesauce::CF::DictionaryRef ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5975E58;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));
  return a1;
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<applesauce::CF::DictionaryRef>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<applesauce::CF::DictionaryRef>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities30make_generic_constant_propertyIN10applesauce2CF13DictionaryRefEEENSt3__110shared_ptrINS0_9OperationEEERKNS_7AddressERKNS_5ThingEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<applesauce::CF::DictionaryRef>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<applesauce::CF::DictionaryRef>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::operator()@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v2 = *(result + 40);
  if (v2)
  {
    return v2(1, result + 8, a2, 0);
  }

  return result;
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<applesauce::CF::DictionaryRef>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<applesauce::CF::DictionaryRef>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[5];
  if (v2)
  {
    v2(0, __p + 1, 0, 0);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<applesauce::CF::DictionaryRef>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<applesauce::CF::DictionaryRef>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    return v1(0, result + 8, 0, 0);
  }

  return result;
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<applesauce::CF::DictionaryRef>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<applesauce::CF::DictionaryRef>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5975DD8;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0;
  *(a2 + 8) = 0u;
  v2 = *(result + 40);
  if (v2)
  {
    return v2(1, result + 8, a2 + 8, 0);
  }

  return result;
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<applesauce::CF::DictionaryRef>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<applesauce::CF::DictionaryRef>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5975DD8;
  v1 = a1[5];
  if (v1)
  {
    v1(0, a1 + 1, 0, 0);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<applesauce::CF::DictionaryRef>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<applesauce::CF::DictionaryRef>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5975DD8;
  v2 = a1[5];
  if (v2)
  {
    v2(0, a1 + 1, 0, 0);
  }

  return a1;
}

uint64_t AMCP::Core::Operation_Utilities::make_generic_constant_property<CA::ChannelLayout>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}::~Thing(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2(0, a1, 0, 0);
  }

  return a1;
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<CA::ChannelLayout>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<CA::ChannelLayout>(AMCP::Core::Operation &)::{lambda(void)#1}>,CA::ChannelLayout ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities28add_specific_property_getterIN2CA13ChannelLayoutEEEvRNS0_9OperationEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<CA::ChannelLayout>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<CA::ChannelLayout>(AMCP::Core::Operation &)::{lambda(void)#1}>,CA::ChannelLayout ()(void)>::operator()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  AMCP::Core::Operation::call_function<AMCP::Thing>(v4, (a1 + 8));
  result = AMCP::Thing::convert_to<CA::ChannelLayout>(a2, v4);
  if (v5)
  {
    return v5(0, v4, 0, 0);
  }

  return result;
}

void sub_1DE501284(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<CA::ChannelLayout>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<CA::ChannelLayout>(AMCP::Core::Operation &)::{lambda(void)#1}>,CA::ChannelLayout ()(void)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

double std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<CA::ChannelLayout>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<CA::ChannelLayout>(AMCP::Core::Operation &)::{lambda(void)#1}>,CA::ChannelLayout ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5975D58;
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(a2 + 8, a1 + 8);
  result = *(a1 + 48);
  *(a2 + 48) = result;
  *(a2 + 56) = *(a1 + 56);
  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<CA::ChannelLayout>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<CA::ChannelLayout>(AMCP::Core::Operation &)::{lambda(void)#1}>,CA::ChannelLayout ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5975D58;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<CA::ChannelLayout>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<CA::ChannelLayout>(AMCP::Core::Operation &)::{lambda(void)#1}>,CA::ChannelLayout ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5975D58;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));
  return a1;
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<CA::ChannelLayout>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<CA::ChannelLayout>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities30make_generic_constant_propertyIN2CA13ChannelLayoutEEENSt3__110shared_ptrINS0_9OperationEEERKNS_7AddressERKNS_5ThingEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<CA::ChannelLayout>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<CA::ChannelLayout>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::operator()@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v2 = *(result + 40);
  if (v2)
  {
    return v2(1, result + 8, a2, 0);
  }

  return result;
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<CA::ChannelLayout>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<CA::ChannelLayout>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[5];
  if (v2)
  {
    v2(0, __p + 1, 0, 0);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<CA::ChannelLayout>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<CA::ChannelLayout>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    return v1(0, result + 8, 0, 0);
  }

  return result;
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<CA::ChannelLayout>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<CA::ChannelLayout>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5975CD8;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0;
  *(a2 + 8) = 0u;
  v2 = *(result + 40);
  if (v2)
  {
    return v2(1, result + 8, a2 + 8, 0);
  }

  return result;
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<CA::ChannelLayout>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<CA::ChannelLayout>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5975CD8;
  v1 = a1[5];
  if (v1)
  {
    v1(0, a1 + 1, 0, 0);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<CA::ChannelLayout>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<CA::ChannelLayout>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5975CD8;
  v2 = a1[5];
  if (v2)
  {
    v2(0, a1 + 1, 0, 0);
  }

  return a1;
}

void AMCP::Null::Device::destroy_cores(AMCP::Null::Device *this)
{
  v2 = *(this + 18);
  v3 = *(this + 19);
  while (v2 != v3)
  {
    v4 = *v2;
    v2 += 2;
    (*(*v4 + 32))(v4);
  }

  v5 = *(this + 15);
  v6 = *(this + 16);
  while (v5 != v6)
  {
    v7 = *v5;
    v5 += 2;
    (*(*v7 + 32))(v7);
  }

  AMCP::Null::Object::destroy_cores(this);
}

void AMCP::Null::Device::update_cores(AMCP::Null::Device *this, CFDictionaryRef *a2, int8x8_t a3)
{
  if (!*(this + 6))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    goto LABEL_58;
  }

  v36 = 0x696E707473746D23;
  v37 = 0;
  AMCP::Address::to_string(&bytes, &v36, a3);
  size = SHIBYTE(bytes.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(bytes.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    p_bytes = bytes.__r_.__value_.__r.__words[0];
    if (!bytes.__r_.__value_.__r.__words[0])
    {
      v34 = 0;
      applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,applesauce::CF::StringRef>(&v39, *(this + 6), 0);
      goto LABEL_8;
    }

    size = bytes.__r_.__value_.__l.__size_;
  }

  else
  {
    p_bytes = &bytes;
  }

  v7 = CFStringCreateWithBytes(0, p_bytes, size, 0x8000100u, 0);
  v34 = v7;
  if (!v7)
  {
    v25 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v25, "Could not construct");
    __cxa_throw(v25, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,applesauce::CF::StringRef>(&v39, *(this + 6), v7);
  CFRelease(v7);
LABEL_8:
  if (SHIBYTE(bytes.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(bytes.__r_.__value_.__l.__data_);
  }

  if (!*(this + 6))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    goto LABEL_58;
  }

  v34 = 0x6F75747073746D23;
  v35 = 0;
  AMCP::Address::to_string(&bytes, &v34, v8);
  v9 = SHIBYTE(bytes.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(bytes.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    v10 = bytes.__r_.__value_.__r.__words[0];
    if (!bytes.__r_.__value_.__r.__words[0])
    {
      cf = 0;
      applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,applesauce::CF::StringRef>(&v36, *(this + 6), 0);
      goto LABEL_17;
    }

    v9 = bytes.__r_.__value_.__l.__size_;
  }

  else
  {
    v10 = &bytes;
  }

  v11 = CFStringCreateWithBytes(0, v10, v9, 0x8000100u, 0);
  cf = v11;
  if (!v11)
  {
    v26 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v26, "Could not construct");
    __cxa_throw(v26, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,applesauce::CF::StringRef>(&v36, *(this + 6), v11);
  CFRelease(v11);
LABEL_17:
  if (SHIBYTE(bytes.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(bytes.__r_.__value_.__l.__data_);
  }

  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    goto LABEL_58;
  }

  cf = 0x696E707473746D23;
  v33 = 0;
  AMCP::Address::to_string(&bytes, &cf, v12);
  v13 = SHIBYTE(bytes.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(bytes.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    v14 = bytes.__r_.__value_.__r.__words[0];
    if (!bytes.__r_.__value_.__r.__words[0])
    {
      v29 = 0;
      applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,applesauce::CF::StringRef>(&v34, *a2, 0);
      goto LABEL_26;
    }

    v13 = bytes.__r_.__value_.__l.__size_;
  }

  else
  {
    v14 = &bytes;
  }

  v15 = CFStringCreateWithBytes(0, v14, v13, 0x8000100u, 0);
  v29 = v15;
  if (!v15)
  {
    v27 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v27, "Could not construct");
    __cxa_throw(v27, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,applesauce::CF::StringRef>(&v34, *a2, v15);
  CFRelease(v15);
LABEL_26:
  if (SHIBYTE(bytes.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(bytes.__r_.__value_.__l.__data_);
  }

  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
LABEL_58:
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v29 = 0x6F75747073746D23;
  v30 = 0;
  AMCP::Address::to_string(&bytes, &v29, v16);
  v17 = SHIBYTE(bytes.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(bytes.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    v18 = bytes.__r_.__value_.__r.__words[0];
    if (!bytes.__r_.__value_.__r.__words[0])
    {
      v31 = 0;
      applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,applesauce::CF::StringRef>(&cf, *a2, 0);
      goto LABEL_35;
    }

    v17 = bytes.__r_.__value_.__l.__size_;
  }

  else
  {
    v18 = &bytes;
  }

  v19 = CFStringCreateWithBytes(0, v18, v17, 0x8000100u, 0);
  v31 = v19;
  if (!v19)
  {
    v28 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v28, "Could not construct");
    __cxa_throw(v28, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,applesauce::CF::StringRef>(&cf, *a2, v19);
  CFRelease(v19);
LABEL_35:
  if (SHIBYTE(bytes.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(bytes.__r_.__value_.__l.__data_);
  }

  AMCP::Null::Object::update_cores(this, a2);
  v20 = v39;
  v21 = v40;
  AMCP::Null::Device::update_stream_list(this, this + 15, v39, v40, &v34);
  v22 = v36;
  v23 = v37;
  AMCP::Null::Device::update_stream_list(this, this + 18, v36, v37, &cf);
  if (v33 == 1 && cf)
  {
    CFRelease(cf);
  }

  if (v35 == 1 && v34)
  {
    CFRelease(v34);
  }

  if (v23 && v22)
  {
    CFRelease(v22);
  }

  if (v21)
  {
    if (v20)
    {
      CFRelease(v20);
    }
  }
}

void sub_1DE501CB0(void *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __clang_call_terminate(a1);
}

void AMCP::Null::Device::update_stream_list(uint64_t a1, size_t *a2, CFTypeRef cf, char a4, uint64_t a5)
{
  if (a4)
  {
    if (cf)
    {
      CFRetain(cf);
    }

    v42 = cf;
  }

  else
  {
    v9 = CFArrayCreate(0, 0, 0, MEMORY[0x1E695E9C8]);
    v42 = v9;
    if (v9)
    {
      v10 = CFGetTypeID(v9);
      if (v10 != CFArrayGetTypeID())
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }
    }
  }

  if (*(a5 + 8) != 1)
  {
    v12 = CFArrayCreate(0, 0, 0, MEMORY[0x1E695E9C8]);
    v11 = v12;
    theArray = v12;
    if (v12)
    {
      v13 = CFGetTypeID(v12);
      if (v13 != CFArrayGetTypeID())
      {
        v33 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v33, "Could not construct");
        __cxa_throw(v33, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      goto LABEL_12;
    }

LABEL_58:
    v32 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v32, "Could not construct");
LABEL_54:
    __cxa_throw(v32, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v11 = *a5;
  if (!v11)
  {
    theArray = 0;
    goto LABEL_58;
  }

  CFRetain(v11);
  theArray = v11;
LABEL_12:
  Count = CFArrayGetCount(v11);
  v15 = *a2;
  if (Count < (a2[1] - *a2) >> 4)
  {
    v16 = CFArrayGetCount(v11);
    v17 = v15 + 16 * v16;
    if (v17 != a2[1])
    {
      v18 = -v15 - 16 * v16;
      v19 = (v15 + 16 * v16);
      do
      {
        v20 = *v19;
        v19 += 2;
        (*(*v20 + 32))(v20);
        v21 = a2[1];
        v18 -= 16;
      }

      while (v19 != v21);
      while (v21 != v17)
      {
        v22 = *(v21 - 1);
        if (v22)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v22);
        }

        v21 -= 2;
      }

      a2[1] = v17;
    }
  }

  v23 = 0;
  for (i = 0; ; ++i)
  {
    v25 = CFArrayGetCount(v11);
    v26 = (a2[1] - *a2) >> 4;
    if (i >= v25 || i >= v26)
    {
      break;
    }

    v11 = theArray;
    if (!theArray)
    {
      goto LABEL_53;
    }

    applesauce::CF::details::at_as<applesauce::CF::DictionaryRef>(&cfa, theArray, i);
    if (v40 == 1)
    {
      if (i >= (a2[1] - *a2) >> 4)
      {
        std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
      }

      (*(**(*a2 + v23) + 24))(*(*a2 + v23), &cfa);
      if (v40)
      {
        if (cfa)
        {
          CFRelease(cfa);
        }
      }
    }

    v23 += 16;
  }

  v27 = theArray;
  if (!theArray)
  {
LABEL_53:
    v32 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v32, "Could not construct");
    goto LABEL_54;
  }

  if (v26 < CFArrayGetCount(theArray))
  {
    for (j = (a2[1] - *a2) >> 4; j < CFArrayGetCount(v27); ++j)
    {
      applesauce::CF::details::at_as<applesauce::CF::DictionaryRef>(&cfa, v27, j);
      if (v40 == 1)
      {
        v29 = *(a1 + 16);
        v37[0] = *(a1 + 8);
        v37[1] = v29;
        if (v29)
        {
          atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v30 = *(a1 + 40);
        std::shared_ptr<AMCP::IO_Core::IOContext_Core>::shared_ptr[abi:ne200100]<AMCP::IO_Core::IOContext_Core,0>(&v35, *(a1 + 24), *(a1 + 32));
        AMCP::Null::make_object(&v38, v37, v30, &v35, &cfa, 0);
        if (v36)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v36);
        }

        if (v29)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v29);
        }

        v31 = v38;
        if (v38)
        {
          std::vector<std::shared_ptr<AHAL_DSP::IAudioStream>>::push_back[abi:ne200100](a2, &v38);
          (*(*v31 + 16))(v31);
        }

        if (*(&v38 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v38 + 1));
        }

        if (cfa)
        {
          CFRelease(cfa);
        }
      }
    }
  }

  CFRelease(v27);
  if (v42)
  {
    CFRelease(v42);
  }
}

void sub_1DE502218(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, int a18, const void *a19)
{
  __cxa_free_exception(v19);
  applesauce::CF::ObjectRef<__CFArray const*>::~ObjectRef(&a19);
  __clang_call_terminate(a1);
}

void AMCP::Null::Device::build_cores(AMCP::Null::Device *this)
{
  v37 = *MEMORY[0x1E69E9840];
  AMCP::Null::Object::build_cores(this);
  if (!*(this + 6))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    goto LABEL_44;
  }

  __p = 0x696E707473746D23;
  LODWORD(v28) = 0;
  AMCP::Address::to_string(&numBytes, &__p, 0x696E707473746D23);
  size = SHIBYTE(numBytes.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(numBytes.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    p_numBytes = numBytes.__r_.__value_.__r.__words[0];
    if (!numBytes.__r_.__value_.__r.__words[0])
    {
      cf = 0;
      applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,applesauce::CF::StringRef>(&v32, *(this + 6), 0);
      goto LABEL_8;
    }

    size = numBytes.__r_.__value_.__l.__size_;
  }

  else
  {
    p_numBytes = &numBytes;
  }

  v4 = CFStringCreateWithBytes(0, p_numBytes, size, 0x8000100u, 0);
  cf = v4;
  if (!v4)
  {
    v22 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v22, "Could not construct");
    __cxa_throw(v22, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,applesauce::CF::StringRef>(&v32, *(this + 6), v4);
  CFRelease(v4);
LABEL_8:
  if (SHIBYTE(numBytes.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(numBytes.__r_.__value_.__l.__data_);
  }

  v5 = v33;
  if (v33 == 1)
  {
    v6 = *(this + 2);
    v30[2] = *(this + 1);
    v30[3] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = *(this + 10);
    std::shared_ptr<AMCP::IO_Core::IOContext_Core>::shared_ptr[abi:ne200100]<AMCP::IO_Core::IOContext_Core,0>(v30, *(this + 3), *(this + 4));
    LODWORD(v36) = 1634956402;
    BYTE4(v36) = 1;
    v28 = 0;
    v29 = 0;
    __p = 0;
    std::vector<std::tuple<unsigned int,AMCP::Null::Expected_Class_Is_Subclass>>::__init_with_size[abi:ne200100]<std::tuple<unsigned int,AMCP::Null::Expected_Class_Is_Subclass> const*,std::tuple<unsigned int,AMCP::Null::Expected_Class_Is_Subclass> const*>();
  }

  if (!*(this + 6))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
LABEL_44:
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  __p = 0x6F75747073746D23;
  LODWORD(v28) = 0;
  AMCP::Address::to_string(&numBytes, &__p, 0x6F75747073746D23);
  v8 = SHIBYTE(numBytes.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(numBytes.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    v9 = numBytes.__r_.__value_.__r.__words[0];
    if (!numBytes.__r_.__value_.__r.__words[0])
    {
      v36 = 0;
      applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,applesauce::CF::StringRef>(&cf, *(this + 6), 0);
      goto LABEL_21;
    }

    v8 = numBytes.__r_.__value_.__l.__size_;
  }

  else
  {
    v9 = &numBytes;
  }

  v10 = CFStringCreateWithBytes(0, v9, v8, 0x8000100u, 0);
  v36 = v10;
  if (!v10)
  {
    v23 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v23, "Could not construct");
    __cxa_throw(v23, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,applesauce::CF::StringRef>(&cf, *(this + 6), v10);
  CFRelease(v10);
LABEL_21:
  if (SHIBYTE(numBytes.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(numBytes.__r_.__value_.__l.__data_);
  }

  v11 = v26;
  if (v26 == 1)
  {
    v12 = *(this + 2);
    v24[2] = *(this + 1);
    v24[3] = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
    }

    v13 = *(this + 10);
    std::shared_ptr<AMCP::IO_Core::IOContext_Core>::shared_ptr[abi:ne200100]<AMCP::IO_Core::IOContext_Core,0>(v24, *(this + 3), *(this + 4));
    v34 = 1634956402;
    v35 = 1;
    v28 = 0;
    v29 = 0;
    __p = 0;
    std::vector<std::tuple<unsigned int,AMCP::Null::Expected_Class_Is_Subclass>>::__init_with_size[abi:ne200100]<std::tuple<unsigned int,AMCP::Null::Expected_Class_Is_Subclass> const*,std::tuple<unsigned int,AMCP::Null::Expected_Class_Is_Subclass> const*>();
  }

  v14 = *(this + 15);
  v15 = *(this + 16);
  while (v14 != v15)
  {
    v16 = *v14;
    v14 += 2;
    (*(*v16 + 16))(v16);
  }

  v18 = *(this + 18);
  v17 = *(this + 19);
  while (v18 != v17)
  {
    v19 = *v18;
    v18 += 2;
    (*(*v19 + 16))(v19);
  }

  if (v11 && cf)
  {
    CFRelease(cf);
  }

  if (v5 && v32)
  {
    CFRelease(v32);
  }

  v20 = *MEMORY[0x1E69E9840];
}

void sub_1DE502770(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void AMCP::Null::Device::~Device(AMCP::Null::Device *this)
{
  *this = &unk_1F5974C48;
  v2 = *(this + 21);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = (this + 144);
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 120);
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&v3);
  AMCP::Null::Object::~Object(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5974C48;
  v2 = *(this + 21);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = (this + 144);
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 120);
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&v3);

  AMCP::Null::Object::~Object(this);
}

void std::__shared_ptr_emplace<AMCP::Null::Device>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5977468;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t AMCP::Null::Slider_Control::do_set_property(AMCP::Null::Slider_Control *this, int a2, const AMCP::Address *a3, const AMCP::Thing *a4)
{
  if (*a3 == 1935962742)
  {
    if (!*(this + 6))
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v31 = 0x676C6F6273647272;
    v32 = 0;
    AMCP::Address::to_string(numBytes, &v31, 0x676C6F6273647272);
    v6 = SBYTE7(v39);
    if ((SBYTE7(v39) & 0x8000000000000000) != 0)
    {
      v7 = numBytes[0];
      if (!numBytes[0])
      {
        v37 = 0;
        applesauce::CF::details::find_at_key_or_optional<applesauce::CF::TypeRef,applesauce::CF::StringRef>(&cf, *(this + 6), 0);
        goto LABEL_12;
      }

      v6 = numBytes[1];
    }

    else
    {
      v7 = numBytes;
    }

    v9 = CFStringCreateWithBytes(0, v7, v6, 0x8000100u, 0);
    v37 = v9;
    if (!v9)
    {
      v28 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v28, "Could not construct");
      __cxa_throw(v28, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    applesauce::CF::details::find_at_key_or_optional<applesauce::CF::TypeRef,applesauce::CF::StringRef>(&cf, *(this + 6), v9);
    CFRelease(v9);
LABEL_12:
    if (SBYTE7(v39) < 0)
    {
      operator delete(numBytes[0]);
    }

    v10 = v35;
    if (v35 == 1)
    {
      AMCP::make_thing_from_description(&v31, &cf);
      v30 = 0;
      if (v33)
      {
        v11 = AMCP::Implementation::get_type_marker<std::tuple<unsigned int,unsigned int>>();
        v12 = v33;
        numBytes[0] = 0;
        if (v33)
        {
          v33(3, &v31, 0, numBytes);
          v12 = numBytes[0];
        }

        if (v12 == v11)
        {
          numBytes[0] = v11;
          v13 = (v33)(4, &v31, 0, numBytes);
          v14 = &v30;
          if (v13)
          {
            v14 = v13;
          }

          v15 = *v14;
          v16 = v14[1];
        }

        else
        {
          v37 = AMCP::Implementation::get_type_marker<std::tuple<unsigned int,unsigned int>>();
          *numBytes = 0u;
          v39 = 0u;
          v40 = 0;
          v33(6, &v31, numBytes, &v37);
          if (v40)
          {
            v37 = v11;
            v17 = v40(4, numBytes, 0, &v37);
            if (v17)
            {
              v15 = *v17;
              v16 = v17[1];
            }

            else
            {
              v15 = 0;
              v16 = 0;
            }

            if (v40)
            {
              v40(0, numBytes, 0, 0);
            }
          }

          else
          {
            v16 = 0;
            v15 = 0;
          }
        }

        if (v33)
        {
          v33(0, &v31, 0, 0);
        }
      }

      else
      {
        v16 = 0;
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
      v16 = 0;
    }

    v18 = AMCP::Thing::convert_to<unsigned int>(a4);
    if (v18 >= v16)
    {
      v19 = v16;
    }

    else
    {
      v19 = v18;
    }

    if (v15 <= v19)
    {
      v20 = v19;
    }

    else
    {
      v20 = v15;
    }

    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, *(this + 6));
    v31 = 0x676C6F6273647276;
    v32 = 0;
    AMCP::Address::to_string(numBytes, &v31, 0x676C6F6273647276);
    v22 = SBYTE7(v39);
    if ((SBYTE7(v39) & 0x8000000000000000) != 0)
    {
      v23 = numBytes[0];
      if (!numBytes[0])
      {
        v24 = 0;
        v37 = 0;
LABEL_45:
        valuePtr = v20;
        v25 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
        v30 = v25;
        if (!v25)
        {
          v27 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v27, "Could not construct");
          __cxa_throw(v27, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(MutableCopy, v24, v25);
        CFRelease(v25);
        if (v24)
        {
          CFRelease(v24);
        }

        if (SBYTE7(v39) < 0)
        {
          operator delete(numBytes[0]);
        }

        mcp_applesauce::CF::Dictionary_Builder::copy_dictionary(numBytes, MutableCopy);
        (*(*this + 24))(this, numBytes);
        if (numBytes[0])
        {
          CFRelease(numBytes[0]);
        }

        AMCP::Core::Conductor::notify_control_value_observers(*(*(this + 1) + 32), *(this + 22));
        if (MutableCopy)
        {
          CFRelease(MutableCopy);
        }

        if (v10)
        {
          if (cf)
          {
            CFRelease(cf);
          }
        }

        return 257;
      }

      v22 = numBytes[1];
    }

    else
    {
      v23 = numBytes;
    }

    v24 = CFStringCreateWithBytes(0, v23, v22, 0x8000100u, 0);
    v37 = v24;
    if (!v24)
    {
      v29 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v29, "Could not construct");
      __cxa_throw(v29, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    goto LABEL_45;
  }

  return AMCP::Null::Object::do_set_property(this, a2, a3, a4);
}

void sub_1DE502E6C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  AMCP::Thing::~Thing(va);
  __clang_call_terminate(a1);
}

void sub_1DE503764(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void AMCP::Core::Operation_Utilities::make_generic_constant_property<std::tuple<unsigned int,unsigned int>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  v3 = *(a3 + 32);
  if (v3)
  {
    v3(1, a3, v4, 0);
  }

  std::allocate_shared[abi:ne200100]<AMCP::Core::Operation,std::allocator<AMCP::Core::Operation>,AMCP::Address const&,0>();
}

void sub_1DE503B74(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t AMCP::Core::Operation_Utilities::make_generic_constant_property<std::tuple<unsigned int,unsigned int>>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}::~Thing(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2(0, a1, 0, 0);
  }

  return a1;
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<std::tuple<unsigned int,unsigned int>>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<std::tuple<unsigned int,unsigned int>>(AMCP::Core::Operation &)::{lambda(void)#1}>,std::tuple<unsigned int,unsigned int> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities28add_specific_property_getterINSt3__15tupleIJjjEEEEEvRNS0_9OperationEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<std::tuple<unsigned int,unsigned int>>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<std::tuple<unsigned int,unsigned int>>(AMCP::Core::Operation &)::{lambda(void)#1}>,std::tuple<unsigned int,unsigned int> ()(void)>::operator()(uint64_t a1)
{
  AMCP::Core::Operation::call_function<AMCP::Thing>(v3, (a1 + 8));
  v1 = AMCP::Thing::convert_to<std::tuple<unsigned int,unsigned int>>(v3);
  if (v4)
  {
    v4(0, v3, 0, 0);
  }

  return v1;
}

void sub_1DE503CD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<std::tuple<unsigned int,unsigned int>>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<std::tuple<unsigned int,unsigned int>>(AMCP::Core::Operation &)::{lambda(void)#1}>,std::tuple<unsigned int,unsigned int> ()(void)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

double std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<std::tuple<unsigned int,unsigned int>>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<std::tuple<unsigned int,unsigned int>>(AMCP::Core::Operation &)::{lambda(void)#1}>,std::tuple<unsigned int,unsigned int> ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5976858;
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(a2 + 8, a1 + 8);
  result = *(a1 + 48);
  *(a2 + 48) = result;
  *(a2 + 56) = *(a1 + 56);
  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<std::tuple<unsigned int,unsigned int>>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<std::tuple<unsigned int,unsigned int>>(AMCP::Core::Operation &)::{lambda(void)#1}>,std::tuple<unsigned int,unsigned int> ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5976858;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<std::tuple<unsigned int,unsigned int>>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<std::tuple<unsigned int,unsigned int>>(AMCP::Core::Operation &)::{lambda(void)#1}>,std::tuple<unsigned int,unsigned int> ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5976858;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));
  return a1;
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<std::tuple<unsigned int,unsigned int>>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<std::tuple<unsigned int,unsigned int>>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities30make_generic_constant_propertyINSt3__15tupleIJjjEEEEENS3_10shared_ptrINS0_9OperationEEERKNS_7AddressERKNS_5ThingEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<std::tuple<unsigned int,unsigned int>>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<std::tuple<unsigned int,unsigned int>>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::operator()@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v2 = *(result + 40);
  if (v2)
  {
    return v2(1, result + 8, a2, 0);
  }

  return result;
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<std::tuple<unsigned int,unsigned int>>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<std::tuple<unsigned int,unsigned int>>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[5];
  if (v2)
  {
    v2(0, __p + 1, 0, 0);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<std::tuple<unsigned int,unsigned int>>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<std::tuple<unsigned int,unsigned int>>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    return v1(0, result + 8, 0, 0);
  }

  return result;
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<std::tuple<unsigned int,unsigned int>>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<std::tuple<unsigned int,unsigned int>>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F59767D8;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0;
  *(a2 + 8) = 0u;
  v2 = *(result + 40);
  if (v2)
  {
    return v2(1, result + 8, a2 + 8, 0);
  }

  return result;
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<std::tuple<unsigned int,unsigned int>>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<std::tuple<unsigned int,unsigned int>>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F59767D8;
  v1 = a1[5];
  if (v1)
  {
    v1(0, a1 + 1, 0, 0);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<std::tuple<unsigned int,unsigned int>>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<std::tuple<unsigned int,unsigned int>>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F59767D8;
  v2 = a1[5];
  if (v2)
  {
    v2(0, a1 + 1, 0, 0);
  }

  return a1;
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_setter<unsigned int>(AMCP::Core::Operation &)::{lambda(unsigned int const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_setter<unsigned int>(AMCP::Core::Operation &)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities28add_specific_property_setterIjEEvRNS0_9OperationEEUlRKjE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_setter<unsigned int>(AMCP::Core::Operation &)::{lambda(unsigned int const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_setter<unsigned int>(AMCP::Core::Operation &)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::operator()(uint64_t a1, _DWORD *a2)
{
  memset(v3, 0, sizeof(v3));
  LODWORD(v3[0]) = *a2;
  v4 = AMCP::Implementation::In_Place_Storage<unsigned int>::dispatch;
  result = AMCP::Core::Operation::call_function<void,AMCP::Thing const&>((a1 + 8), v3);
  if (v4)
  {
    return v4(0, v3, 0, 0);
  }

  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_setter<unsigned int>(AMCP::Core::Operation &)::{lambda(unsigned int const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_setter<unsigned int>(AMCP::Core::Operation &)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

double std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_setter<unsigned int>(AMCP::Core::Operation &)::{lambda(unsigned int const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_setter<unsigned int>(AMCP::Core::Operation &)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5976758;
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(a2 + 8, a1 + 8);
  result = *(a1 + 48);
  *(a2 + 48) = result;
  *(a2 + 56) = *(a1 + 56);
  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_setter<unsigned int>(AMCP::Core::Operation &)::{lambda(unsigned int const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_setter<unsigned int>(AMCP::Core::Operation &)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_1F5976758;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_setter<unsigned int>(AMCP::Core::Operation &)::{lambda(unsigned int const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_setter<unsigned int>(AMCP::Core::Operation &)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_1F5976758;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));
  return a1;
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1935962742u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1935962742u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4NullL22make_settable_propertyILj1935962742EEENSt3__110shared_ptrINS_4Core9OperationEEENS3_INS0_6ObjectEEERKNS_7AddressERKN10applesauce2CF13DictionaryRefERKNS2_8optionalINS_5ThingEEEEUlRKSI_E_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1935962742u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1935962742u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  if (!v3 || (v3 = std::__shared_weak_count::lock(v3), (v5 = v3) == 0) || (v3 = *(a1 + 8)) == 0)
  {
    v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v12 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v3);
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
      v26 = "Null_Object.cpp";
      v27 = 1024;
      v28 = 59;
      v29 = 2080;
      v30 = "object_ptr.operator BOOL() == false";
      _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s no model object", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v24);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v17, "no model object");
    std::runtime_error::runtime_error(&v18, &v17);
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = -1;
    v18.__vftable = &unk_1F5992170;
    v19 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v18);
    v31 = "auto AMCP::Null::make_settable_property(Object_Ptr, const Address &, const CF::Dictionary &, const std::optional<Thing> &)::(anonymous class)::operator()(const Thing &) const";
    v32 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Null/Null_Object.cpp";
    v33 = 59;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v16);
  }

  v6 = (*(*v3 + 40))(v3, v3[22], a1 + 24, a2);
  if ((v6 & 1) == 0)
  {
    v8 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v8 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v6);
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
      *buf = 136315650;
      v26 = "Null_Object.cpp";
      v27 = 1024;
      v28 = 61;
      v29 = 2080;
      v30 = "was_handled == Object::Was_Handled::no";
      _os_log_error_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s not handled", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v24);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v17, "not handled");
    std::runtime_error::runtime_error(&v18, &v17);
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = -1;
    v18.__vftable = &unk_1F5992170;
    v19 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v18);
    v31 = "auto AMCP::Null::make_settable_property(Object_Ptr, const Address &, const CF::Dictionary &, const std::optional<Thing> &)::(anonymous class)::operator()(const Thing &) const";
    v32 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Null/Null_Object.cpp";
    v33 = 61;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v16);
  }

  v7 = *MEMORY[0x1E69E9840];

  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
}

void sub_1DE5048F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, std::runtime_error a17, char a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v21 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a18);
  std::runtime_error::~runtime_error(&a17);
  if (v20)
  {
    __cxa_free_exception(v19);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v21 - 129));
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1935962742u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1935962742u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1935962742u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1935962742u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

double std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1935962742u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1935962742u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::__clone(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F59766D8;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  *(a2 + 32) = *(a1 + 32);
  return result;
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1935962742u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1935962742u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::~__func(void *a1)
{
  *a1 = &unk_1F59766D8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1935962742u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1935962742u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::~__func(void *a1)
{
  *a1 = &unk_1F59766D8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1935962742u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1935962742u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4NullL22make_settable_propertyILj1935962742EEENSt3__110shared_ptrINS_4Core9OperationEEENS3_INS0_6ObjectEEERKNS_7AddressERKN10applesauce2CF13DictionaryRefERKNS2_8optionalINS_5ThingEEEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1935962742u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1935962742u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::operator()@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v2 = *(result + 40);
  if (v2)
  {
    return v2(1, result + 8, a2, 0);
  }

  return result;
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1935962742u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1935962742u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[5];
  if (v2)
  {
    v2(0, __p + 1, 0, 0);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1935962742u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1935962742u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    return v1(0, result + 8, 0, 0);
  }

  return result;
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1935962742u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1935962742u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5976658;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0;
  *(a2 + 8) = 0u;
  v2 = *(result + 40);
  if (v2)
  {
    return v2(1, result + 8, a2 + 8, 0);
  }

  return result;
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1935962742u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1935962742u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5976658;
  v1 = a1[5];
  if (v1)
  {
    v1(0, a1 + 1, 0, 0);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1935962742u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1935962742u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5976658;
  v2 = a1[5];
  if (v2)
  {
    v2(0, a1 + 1, 0, 0);
  }

  return a1;
}

void AMCP::Null::Slider_Control::~Slider_Control(std::__shared_weak_count **this)
{
  AMCP::Null::Object::~Object(this);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<AMCP::Null::Slider_Control>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5977418;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t AMCP::Null::Level_Control::do_set_property(AMCP::Null::Level_Control *this, int a2, const AMCP::Address *a3, const AMCP::Thing *a4)
{
  if (*a3 == 1818453110)
  {
    if (!*(this + 6))
    {
      goto LABEL_96;
    }

    v60 = 0x676C6F626C636472;
    LODWORD(v61) = 0;
    AMCP::Address::to_string(&bytes, &v60, 0x676C6F626C636472);
    v8 = v64;
    if ((v64 & 0x8000000000000000) != 0)
    {
      p_bytes = bytes;
      if (!bytes)
      {
        valuePtr = 0.0;
        applesauce::CF::details::find_at_key_or_optional<applesauce::CF::TypeRef,applesauce::CF::StringRef>(&cf, *(this + 6), 0);
        goto LABEL_27;
      }

      v8 = numBytes;
    }

    else
    {
      p_bytes = &bytes;
    }

    *&v20 = COERCE_DOUBLE(CFStringCreateWithBytes(0, p_bytes, v8, 0x8000100u, 0));
    valuePtr = *&v20;
    if (*&v20 == 0.0)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    applesauce::CF::details::find_at_key_or_optional<applesauce::CF::TypeRef,applesauce::CF::StringRef>(&cf, *(this + 6), v20);
    CFRelease(v20);
LABEL_27:
    if (v64 < 0)
    {
      operator delete(bytes);
    }

    v21 = v67;
    v22 = 0.0;
    v23 = 0.0;
    if (v67 == 1)
    {
      AMCP::make_thing_from_description(&bytes, &cf);
      v60 = 0;
      v61 = 0;
      v23 = AMCP::Thing::convert_or<CA::ValueRange>(&bytes, &v60);
      v22 = v24;
      if (v65)
      {
        v65(0, &bytes, 0, 0);
      }
    }

    v25 = AMCP::Thing::convert_to<float>(a4);
    v26 = v22;
    if (v25 >= v26)
    {
      v25 = v22;
    }

    v27 = v23;
    if (v25 <= v27)
    {
      v28 = v23;
    }

    else
    {
      v28 = v25;
    }

    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, *(this + 6));
    v60 = 0x676C6F626C637376;
    LODWORD(v61) = 0;
    AMCP::Address::to_string(&bytes, &v60, 0x676C6F626C637376);
    v30 = v64;
    if ((v64 & 0x8000000000000000) != 0)
    {
      v31 = bytes;
      if (!bytes)
      {
        *&v37 = 0.0;
        valuePtr = 0.0;
        goto LABEL_52;
      }

      v30 = numBytes;
    }

    else
    {
      v31 = &bytes;
    }

    *&v37 = COERCE_DOUBLE(CFStringCreateWithBytes(0, v31, v30, 0x8000100u, 0));
    valuePtr = *&v37;
    if (*&v37 == 0.0)
    {
      v55 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v55, "Could not construct");
      __cxa_throw(v55, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

LABEL_52:
    v38 = v22 - v23;
    *&v58 = (v28 - v27) / v38;
    v39 = CFNumberCreate(0, kCFNumberFloatType, &v58);
    v59 = v39;
    if (!v39)
    {
      v49 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v49, "Could not construct");
      __cxa_throw(v49, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(MutableCopy, v37, v39);
    CFRelease(v39);
    if (*&v37 != 0.0)
    {
      CFRelease(v37);
    }

    if (v64 < 0)
    {
      operator delete(bytes);
    }

    v60 = 0x676C6F626C636476;
    LODWORD(v61) = 0;
    AMCP::Address::to_string(&bytes, &v60, 0x676C6F626C636476);
    v40 = v64;
    if ((v64 & 0x8000000000000000) != 0)
    {
      v41 = bytes;
      if (!bytes)
      {
        *&v45 = 0.0;
        valuePtr = 0.0;
        goto LABEL_77;
      }

      v40 = numBytes;
    }

    else
    {
      v41 = &bytes;
    }

    *&v45 = COERCE_DOUBLE(CFStringCreateWithBytes(0, v41, v40, 0x8000100u, 0));
    valuePtr = *&v45;
    if (*&v45 == 0.0)
    {
      v57 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v57, "Could not construct");
      __cxa_throw(v57, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

LABEL_77:
    *&v58 = v28;
    v46 = CFNumberCreate(0, kCFNumberFloatType, &v58);
    v59 = v46;
    if (!v46)
    {
      v51 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v51, "Could not construct");
      __cxa_throw(v51, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(MutableCopy, v45, v46);
    CFRelease(v46);
    if (*&v45 != 0.0)
    {
      CFRelease(v45);
    }

    if (v64 < 0)
    {
      operator delete(bytes);
    }

    mcp_applesauce::CF::Dictionary_Builder::copy_dictionary(&bytes, MutableCopy);
    (*(*this + 24))(this, &bytes);
    if (bytes)
    {
      CFRelease(bytes);
    }

    AMCP::Core::Conductor::notify_control_value_observers(*(*(this + 1) + 32), *(this + 22));
    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }

    if (!v21)
    {
      return 257;
    }

    v44 = cf;
    if (!cf)
    {
      return 257;
    }

LABEL_88:
    CFRelease(v44);
    return 257;
  }

  if (*a3 == 1818456950)
  {
    if (*(this + 6))
    {
      v60 = 0x676C6F626C636472;
      LODWORD(v61) = 0;
      AMCP::Address::to_string(&bytes, &v60, 0x676C6F626C636472);
      v6 = v64;
      if ((v64 & 0x8000000000000000) != 0)
      {
        v7 = bytes;
        if (!bytes)
        {
          valuePtr = 0.0;
          applesauce::CF::details::find_at_key_or_optional<applesauce::CF::TypeRef,applesauce::CF::StringRef>(&cf, *(this + 6), 0);
          goto LABEL_16;
        }

        v6 = numBytes;
      }

      else
      {
        v7 = &bytes;
      }

      *&v11 = COERCE_DOUBLE(CFStringCreateWithBytes(0, v7, v6, 0x8000100u, 0));
      valuePtr = *&v11;
      if (*&v11 == 0.0)
      {
        v52 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v52, "Could not construct");
        __cxa_throw(v52, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      applesauce::CF::details::find_at_key_or_optional<applesauce::CF::TypeRef,applesauce::CF::StringRef>(&cf, *(this + 6), v11);
      CFRelease(v11);
LABEL_16:
      if (v64 < 0)
      {
        operator delete(bytes);
      }

      v12 = v67;
      v13 = 0.0;
      v14 = 0.0;
      if (v67 == 1)
      {
        AMCP::make_thing_from_description(&bytes, &cf);
        v60 = 0;
        v61 = 0;
        v14 = AMCP::Thing::convert_or<CA::ValueRange>(&bytes, &v60);
        v13 = v15;
        if (v65)
        {
          v65(0, &bytes, 0, 0);
        }
      }

      v16 = AMCP::Thing::convert_to<float>(a4);
      v17 = CFDictionaryCreateMutableCopy(0, 0, *(this + 6));
      v60 = 0x676C6F626C637376;
      LODWORD(v61) = 0;
      AMCP::Address::to_string(&bytes, &v60, 0x676C6F626C637376);
      v18 = v64;
      if ((v64 & 0x8000000000000000) != 0)
      {
        v19 = bytes;
        if (!bytes)
        {
          *&v32 = 0.0;
          valuePtr = 0.0;
          goto LABEL_42;
        }

        v18 = numBytes;
      }

      else
      {
        v19 = &bytes;
      }

      *&v32 = COERCE_DOUBLE(CFStringCreateWithBytes(0, v19, v18, 0x8000100u, 0));
      valuePtr = *&v32;
      if (*&v32 == 0.0)
      {
        v54 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v54, "Could not construct");
        __cxa_throw(v54, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

LABEL_42:
      v33 = fmaxf(fminf(v16, 1.0), 0.0);
      *&v58 = v33;
      v34 = CFNumberCreate(0, kCFNumberFloatType, &v58);
      v59 = v34;
      if (!v34)
      {
        v48 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v48, "Could not construct");
        __cxa_throw(v48, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(v17, v32, v34);
      CFRelease(v34);
      if (*&v32 != 0.0)
      {
        CFRelease(v32);
      }

      if (v64 < 0)
      {
        operator delete(bytes);
      }

      v60 = 0x676C6F626C636476;
      LODWORD(v61) = 0;
      AMCP::Address::to_string(&bytes, &v60, 0x676C6F626C636476);
      v35 = v64;
      if ((v64 & 0x8000000000000000) != 0)
      {
        v36 = bytes;
        if (!bytes)
        {
          v42 = 0;
          v59 = 0;
          goto LABEL_62;
        }

        v35 = numBytes;
      }

      else
      {
        v36 = &bytes;
      }

      v42 = CFStringCreateWithBytes(0, v36, v35, 0x8000100u, 0);
      v59 = v42;
      if (!v42)
      {
        v56 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v56, "Could not construct");
        __cxa_throw(v56, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

LABEL_62:
      valuePtr = v14 + v33 * (v13 - v14);
      v43 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
      v58 = v43;
      if (!v43)
      {
        v50 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v50, "Could not construct");
        __cxa_throw(v50, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(v17, v42, v43);
      CFRelease(v43);
      if (v42)
      {
        CFRelease(v42);
      }

      if (v64 < 0)
      {
        operator delete(bytes);
      }

      mcp_applesauce::CF::Dictionary_Builder::copy_dictionary(&bytes, v17);
      (*(*this + 24))(this, &bytes);
      if (bytes)
      {
        CFRelease(bytes);
      }

      AMCP::Core::Conductor::notify_control_value_observers(*(*(this + 1) + 32), *(this + 22));
      if (v17)
      {
        CFRelease(v17);
      }

      if (!v12)
      {
        return 257;
      }

      v44 = cf;
      if (!cf)
      {
        return 257;
      }

      goto LABEL_88;
    }

LABEL_96:
    v47 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v47, "Could not construct");
    __cxa_throw(v47, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return AMCP::Null::Object::do_set_property(this, a2, a3, a4);
}

void sub_1DE5058F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __clang_call_terminate(a1);
}

double AMCP::Thing::convert_or<CA::ValueRange>(uint64_t a1, double *a2)
{
  if (!*(a1 + 32))
  {
    goto LABEL_15;
  }

  v4 = AMCP::Implementation::get_type_marker<CA::ValueRange>();
  v5 = *(a1 + 32);
  *&v16[0] = 0;
  if (v5)
  {
    v5(3, a1, 0, v16);
    v5 = *&v16[0];
  }

  if (v5 == v4)
  {
    *&v16[0] = v4;
    v6 = (*(a1 + 32))(4, a1, 0, v16);
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = a2;
    }

    v9 = *v7;
    v8 = *(v7 + 1);
    return v9;
  }

  v15 = AMCP::Implementation::get_type_marker<CA::ValueRange>();
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  (*(a1 + 32))(6, a1, v16, &v15);
  if (!v17)
  {
LABEL_15:
    v9 = *a2;
    v13 = *(a2 + 1);
    return v9;
  }

  v15 = v4;
  v10 = v17(4, v16, 0, &v15);
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = a2;
  }

  v9 = *v11;
  v12 = *(v11 + 1);
  if (v17)
  {
    v17(0, v16, 0, 0);
  }

  return v9;
}

void sub_1DE505B2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

void sub_1DE506CA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void AMCP::Core::Operation_Utilities::add_specific_property_getter<float>(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(&v5, a1);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v18 = AMCP::Implementation::get_type_marker<std::function<float ()(void)>>();
  v2 = v5;
  v3 = v6;
  v5 = 0;
  v6 = 0;
  v12 = v2;
  v13 = v3;
  v14[0] = v7;
  v14[1] = v8;
  v15 = v9;
  if (v8)
  {
    v4 = *(v7 + 8);
    if ((v3 & (v3 - 1)) != 0)
    {
      if (v4 >= v3)
      {
        v4 %= v3;
      }
    }

    else
    {
      v4 &= v3 - 1;
    }

    *(v2 + 8 * v4) = v14;
    v7 = 0;
    v8 = 0;
  }

  v16 = v10;
  v17 = v11;
  v19 = 0;
  operator new();
}

void sub_1DE50700C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void AMCP::Core::Operation_Utilities::add_specific_property_setter<float>(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(&v5, a1);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v18 = AMCP::Implementation::get_type_marker<std::function<void ()(float const&)>>();
  v2 = v5;
  v3 = v6;
  v5 = 0;
  v6 = 0;
  v12 = v2;
  v13 = v3;
  v14[0] = v7;
  v14[1] = v8;
  v15 = v9;
  if (v8)
  {
    v4 = *(v7 + 8);
    if ((v3 & (v3 - 1)) != 0)
    {
      if (v4 >= v3)
      {
        v4 %= v3;
      }
    }

    else
    {
      v4 &= v3 - 1;
    }

    *(v2 + 8 * v4) = v14;
    v7 = 0;
    v8 = 0;
  }

  v16 = v10;
  v17 = v11;
  v19 = 0;
  operator new();
}

void sub_1DE5071CC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<float ()(float,BOOL)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t std::__function::__value_func<float ()(float,BOOL)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t AMCP::Implementation::In_Place_Storage<std::function<float ()(float,BOOL)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<float ()(float,BOOL)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<float ()(float,BOOL)>>())
        {
          return a2;
        }

        else
        {
          return 0;
        }

      case 6:
        v12 = 0;
        memset(v11, 0, sizeof(v11));
        AMCP::swap(v11, a3, a3);
        if (v12)
        {
          v12(0, v11, 0, 0);
        }

        return 0;
    }
  }

  else
  {
    if (!a1)
    {
LABEL_6:
      std::__function::__value_func<float ()(float,BOOL)>::~__value_func[abi:ne200100](a2);
      result = 0;
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    if (a1 != 1)
    {
      if (a1 != 2)
      {
        return result;
      }

      *a3 = 0u;
      *(a3 + 1) = 0u;
      std::__function::__value_func<float ()(float,BOOL)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<float ()(float,BOOL)>>::dispatch;
      goto LABEL_6;
    }

    *a3 = 0u;
    *(a3 + 1) = 0u;
    v10 = *(a2 + 24);
    if (v10)
    {
      if (v10 == a2)
      {
        *(a3 + 3) = a3;
        (*(**(a2 + 24) + 24))(*(a2 + 24), a3);
      }

      else
      {
        *(a3 + 3) = (*(*v10 + 16))(v10);
      }
    }

    result = 0;
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<float ()(float,BOOL)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<AMCP::Null::Level_Control::populate_core(unsigned int)::$_1,std::allocator<AMCP::Null::Level_Control::populate_core(unsigned int)::$_1>,float ()(float,BOOL)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Null13Level_Control13populate_coreEjE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

float std::__function::__func<AMCP::Null::Level_Control::populate_core(unsigned int)::$_1,std::allocator<AMCP::Null::Level_Control::populate_core(unsigned int)::$_1>,float ()(float,BOOL)>::operator()(uint64_t a1, float *a2)
{
  v2 = *a2;
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = v3;
  if (*a2 >= v5)
  {
    v2 = v3;
  }

  v6 = v4;
  if (v2 <= v6)
  {
    v2 = v4;
  }

  v7 = v3 - v4;
  return (v2 - v6) / v7;
}

__n128 std::__function::__func<AMCP::Null::Level_Control::populate_core(unsigned int)::$_1,std::allocator<AMCP::Null::Level_Control::populate_core(unsigned int)::$_1>,float ()(float,BOOL)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5976D58;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t AMCP::Implementation::In_Place_Storage<std::function<float ()(float)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<float ()(float)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<float ()(float)>>())
        {
          return a2;
        }

        else
        {
          return 0;
        }

      case 6:
        v12 = 0;
        memset(v11, 0, sizeof(v11));
        AMCP::swap(v11, a3, a3);
        if (v12)
        {
          v12(0, v11, 0, 0);
        }

        return 0;
    }
  }

  else
  {
    if (!a1)
    {
LABEL_6:
      std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](a2);
      result = 0;
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    if (a1 != 1)
    {
      if (a1 != 2)
      {
        return result;
      }

      *a3 = 0u;
      *(a3 + 1) = 0u;
      std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<float ()(float)>>::dispatch;
      goto LABEL_6;
    }

    *a3 = 0u;
    *(a3 + 1) = 0u;
    v10 = *(a2 + 24);
    if (v10)
    {
      if (v10 == a2)
      {
        *(a3 + 3) = a3;
        (*(**(a2 + 24) + 24))(*(a2 + 24), a3);
      }

      else
      {
        *(a3 + 3) = (*(*v10 + 16))(v10);
      }
    }

    result = 0;
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<float ()(float)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<AMCP::Null::Level_Control::populate_core(unsigned int)::$_0,std::allocator<AMCP::Null::Level_Control::populate_core(unsigned int)::$_0>,float ()(float)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Null13Level_Control13populate_coreEjE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<AMCP::Null::Level_Control::populate_core(unsigned int)::$_0,std::allocator<AMCP::Null::Level_Control::populate_core(unsigned int)::$_0>,float ()(float)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5976CD8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t AMCP::Core::Operation_Utilities::make_generic_constant_property<CA::ValueRange>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}::~Thing(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2(0, a1, 0, 0);
  }

  return a1;
}

uint64_t std::__function::__value_func<CA::ValueRange ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t std::__function::__value_func<CA::ValueRange ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t AMCP::Implementation::In_Place_Storage<std::function<CA::ValueRange ()(void)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<CA::ValueRange ()(void)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<CA::ValueRange ()(void)>>())
        {
          return a2;
        }

        else
        {
          return 0;
        }

      case 6:
        v12 = 0;
        memset(v11, 0, sizeof(v11));
        AMCP::swap(v11, a3, a3);
        if (v12)
        {
          v12(0, v11, 0, 0);
        }

        return 0;
    }
  }

  else
  {
    if (!a1)
    {
LABEL_6:
      std::__function::__value_func<CA::ValueRange ()(void)>::~__value_func[abi:ne200100](a2);
      result = 0;
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    if (a1 != 1)
    {
      if (a1 != 2)
      {
        return result;
      }

      *a3 = 0u;
      *(a3 + 1) = 0u;
      std::__function::__value_func<CA::ValueRange ()(void)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<CA::ValueRange ()(void)>>::dispatch;
      goto LABEL_6;
    }

    *a3 = 0u;
    *(a3 + 1) = 0u;
    v10 = *(a2 + 24);
    if (v10)
    {
      if (v10 == a2)
      {
        *(a3 + 3) = a3;
        (*(**(a2 + 24) + 24))(*(a2 + 24), a3);
      }

      else
      {
        *(a3 + 3) = (*(*v10 + 16))(v10);
      }
    }

    result = 0;
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<CA::ValueRange ()(void)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<CA::ValueRange>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<CA::ValueRange>(AMCP::Core::Operation &)::{lambda(void)#1}>,CA::ValueRange ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities28add_specific_property_getterIN2CA10ValueRangeEEEvRNS0_9OperationEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<CA::ValueRange>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<CA::ValueRange>(AMCP::Core::Operation &)::{lambda(void)#1}>,CA::ValueRange ()(void)>::operator()(uint64_t a1)
{
  AMCP::Core::Operation::call_function<AMCP::Thing>(v3, (a1 + 8));
  v1 = AMCP::Thing::convert_to<CA::ValueRange>(v3);
  if (v4)
  {
    v4(0, v3, 0, 0);
  }

  return v1;
}

void sub_1DE507D08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<CA::ValueRange>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<CA::ValueRange>(AMCP::Core::Operation &)::{lambda(void)#1}>,CA::ValueRange ()(void)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

double std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<CA::ValueRange>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<CA::ValueRange>(AMCP::Core::Operation &)::{lambda(void)#1}>,CA::ValueRange ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5976C58;
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(a2 + 8, a1 + 8);
  result = *(a1 + 48);
  *(a2 + 48) = result;
  *(a2 + 56) = *(a1 + 56);
  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<CA::ValueRange>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<CA::ValueRange>(AMCP::Core::Operation &)::{lambda(void)#1}>,CA::ValueRange ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5976C58;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_getter<CA::ValueRange>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_getter<CA::ValueRange>(AMCP::Core::Operation &)::{lambda(void)#1}>,CA::ValueRange ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5976C58;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));
  return a1;
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<CA::ValueRange>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<CA::ValueRange>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities30make_generic_constant_propertyIN2CA10ValueRangeEEENSt3__110shared_ptrINS0_9OperationEEERKNS_7AddressERKNS_5ThingEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<CA::ValueRange>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<CA::ValueRange>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::operator()@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v2 = *(result + 40);
  if (v2)
  {
    return v2(1, result + 8, a2, 0);
  }

  return result;
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<CA::ValueRange>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<CA::ValueRange>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[5];
  if (v2)
  {
    v2(0, __p + 1, 0, 0);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<CA::ValueRange>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<CA::ValueRange>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    return v1(0, result + 8, 0, 0);
  }

  return result;
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<CA::ValueRange>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<CA::ValueRange>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5976BD8;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0;
  *(a2 + 8) = 0u;
  v2 = *(result + 40);
  if (v2)
  {
    return v2(1, result + 8, a2 + 8, 0);
  }

  return result;
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<CA::ValueRange>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<CA::ValueRange>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5976BD8;
  v1 = a1[5];
  if (v1)
  {
    v1(0, a1 + 1, 0, 0);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<CA::ValueRange>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_generic_constant_property<CA::ValueRange>(AMCP::Address const&,AMCP::Thing const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5976BD8;
  v2 = a1[5];
  if (v2)
  {
    v2(0, a1 + 1, 0, 0);
  }

  return a1;
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1818453110u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1818453110u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4NullL22make_settable_propertyILj1818453110EEENSt3__110shared_ptrINS_4Core9OperationEEENS3_INS0_6ObjectEEERKNS_7AddressERKN10applesauce2CF13DictionaryRefERKNS2_8optionalINS_5ThingEEEEUlRKSI_E_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1818453110u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1818453110u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  if (!v3 || (v3 = std::__shared_weak_count::lock(v3), (v5 = v3) == 0) || (v3 = *(a1 + 8)) == 0)
  {
    v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v12 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v3);
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
      v26 = "Null_Object.cpp";
      v27 = 1024;
      v28 = 59;
      v29 = 2080;
      v30 = "object_ptr.operator BOOL() == false";
      _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s no model object", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v24);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v17, "no model object");
    std::runtime_error::runtime_error(&v18, &v17);
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = -1;
    v18.__vftable = &unk_1F5992170;
    v19 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v18);
    v31 = "auto AMCP::Null::make_settable_property(Object_Ptr, const Address &, const CF::Dictionary &, const std::optional<Thing> &)::(anonymous class)::operator()(const Thing &) const";
    v32 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Null/Null_Object.cpp";
    v33 = 59;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v16);
  }

  v6 = (*(*v3 + 40))(v3, v3[22], a1 + 24, a2);
  if ((v6 & 1) == 0)
  {
    v8 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v8 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v6);
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
      *buf = 136315650;
      v26 = "Null_Object.cpp";
      v27 = 1024;
      v28 = 61;
      v29 = 2080;
      v30 = "was_handled == Object::Was_Handled::no";
      _os_log_error_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s not handled", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v24);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v17, "not handled");
    std::runtime_error::runtime_error(&v18, &v17);
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = -1;
    v18.__vftable = &unk_1F5992170;
    v19 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v18);
    v31 = "auto AMCP::Null::make_settable_property(Object_Ptr, const Address &, const CF::Dictionary &, const std::optional<Thing> &)::(anonymous class)::operator()(const Thing &) const";
    v32 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Null/Null_Object.cpp";
    v33 = 61;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v16);
  }

  v7 = *MEMORY[0x1E69E9840];

  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
}

void sub_1DE508694(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, std::runtime_error a17, char a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v21 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a18);
  std::runtime_error::~runtime_error(&a17);
  if (v20)
  {
    __cxa_free_exception(v19);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v21 - 129));
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1818453110u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1818453110u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1818453110u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1818453110u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

double std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1818453110u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1818453110u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::__clone(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F5976B58;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  *(a2 + 32) = *(a1 + 32);
  return result;
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1818453110u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1818453110u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::~__func(void *a1)
{
  *a1 = &unk_1F5976B58;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1818453110u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1818453110u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::~__func(void *a1)
{
  *a1 = &unk_1F5976B58;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1818453110u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1818453110u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4NullL22make_settable_propertyILj1818453110EEENSt3__110shared_ptrINS_4Core9OperationEEENS3_INS0_6ObjectEEERKNS_7AddressERKN10applesauce2CF13DictionaryRefERKNS2_8optionalINS_5ThingEEEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1818453110u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1818453110u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::operator()@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v2 = *(result + 40);
  if (v2)
  {
    return v2(1, result + 8, a2, 0);
  }

  return result;
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1818453110u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1818453110u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[5];
  if (v2)
  {
    v2(0, __p + 1, 0, 0);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1818453110u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1818453110u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    return v1(0, result + 8, 0, 0);
  }

  return result;
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1818453110u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1818453110u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5976AD8;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0;
  *(a2 + 8) = 0u;
  v2 = *(result + 40);
  if (v2)
  {
    return v2(1, result + 8, a2 + 8, 0);
  }

  return result;
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1818453110u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1818453110u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5976AD8;
  v1 = a1[5];
  if (v1)
  {
    v1(0, a1 + 1, 0, 0);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1818453110u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Null::make_settable_property<1818453110u>(std::shared_ptr<AMCP::Null::Object>,AMCP::Address const&,applesauce::CF::DictionaryRef const&,std::optional<AMCP::Thing> const&)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5976AD8;
  v2 = a1[5];
  if (v2)
  {
    v2(0, a1 + 1, 0, 0);
  }

  return a1;
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_setter<float>(AMCP::Core::Operation &)::{lambda(float const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_setter<float>(AMCP::Core::Operation &)::{lambda(float const&)#1}>,void ()(float const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities28add_specific_property_setterIfEEvRNS0_9OperationEEUlRKfE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_setter<float>(AMCP::Core::Operation &)::{lambda(float const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_setter<float>(AMCP::Core::Operation &)::{lambda(float const&)#1}>,void ()(float const&)>::operator()(uint64_t a1, _DWORD *a2)
{
  memset(v3, 0, sizeof(v3));
  LODWORD(v3[0]) = *a2;
  v4 = AMCP::Implementation::In_Place_Storage<float>::dispatch;
  result = AMCP::Core::Operation::call_function<void,AMCP::Thing const&>((a1 + 8), v3);
  if (v4)
  {
    return v4(0, v3, 0, 0);
  }

  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_setter<float>(AMCP::Core::Operation &)::{lambda(float const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_setter<float>(AMCP::Core::Operation &)::{lambda(float const&)#1}>,void ()(float const&)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

double std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_setter<float>(AMCP::Core::Operation &)::{lambda(float const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_setter<float>(AMCP::Core::Operation &)::{lambda(float const&)#1}>,void ()(float const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5976A58;
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(a2 + 8, a1 + 8);
  result = *(a1 + 48);
  *(a2 + 48) = result;
  *(a2 + 56) = *(a1 + 56);
  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_specific_property_setter<float>(AMCP::Core::Operation &)::{lambda(float const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_specific_property_setter<float>(AMCP::Core::Operation &)::{lambda(float const&)#1}>,void ()(float const&)>::~__func(void *a1)
{
  *a1 = &unk_1F5976A58;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));

  JUMPOUT(0x1E12C1730);
}