void sub_237236F44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char **a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, int a27, __int16 a28, char a29, char a30, int a31, __int16 a32, char a33, char a34)
{
  __cxa_free_exception(v34);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::string>::destroy(*a10);
  _Unwind_Resume(a1);
}

uint64_t MIDICI::Device::profile(uint64_t a1, uint64_t a2, void *__s2, size_t __n)
{
  v5 = a1;
  if (a1 != a2)
  {
    while (1)
    {
      v8 = *(*v5 + 88);
      if (*(*v5 + 96) - v8 == __n && !memcmp(v8, __s2, __n))
      {
        break;
      }

      v5 += 8;
      if (v5 == a2)
      {
        return 0;
      }
    }
  }

  if (v5 == a2)
  {
    return 0;
  }

  else
  {
    return *v5;
  }
}

uint64_t *std::unique_ptr<MIDICI::Profile>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 88);
    if (v3)
    {
      *(v2 + 96) = v3;
      operator delete(v3);
    }

    if (*(v2 + 87) < 0)
    {
      operator delete(*(v2 + 64));
    }

    *v2 = &unk_284A46EC0;
    XCFObject<__CFDictionary const*>::~XCFObject(v2 + 24);
    BaseOpaqueObject::~BaseOpaqueObject(v2);

    JUMPOUT(0x2383C8250);
  }

  return result;
}

uint64_t *std::unique_ptr<PropertyExchange::RequestManager>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::__tree<std::__value_type<std::pair<unsigned int,unsigned char>,PropertyExchange::Request>,std::__map_value_compare<std::pair<unsigned int,unsigned char>,std::__value_type<std::pair<unsigned int,unsigned char>,PropertyExchange::Request>,std::less<std::pair<unsigned int,unsigned char>>,true>,std::allocator<std::__value_type<std::pair<unsigned int,unsigned char>,PropertyExchange::Request>>>::destroy(*(v2 + 8));

    JUMPOUT(0x2383C8250);
  }

  return result;
}

uint64_t MIDICI::Device::makeGetResourceListInquiryMessage(MIDICI::Device *this, uint64_t a2, unsigned int a3)
{
  v47 = *MEMORY[0x277D85DE8];
  v42[0] = &unk_284A48BA8;
  v42[1] = a2;
  v42[3] = v42;
  v6 = *(a2 + 184);
  *(a2 + 184) = (v6 + 1) & 0x7F;
  v7 = *(a2 + 176);
  std::__function::__value_func<void ()(caulk::expected<std::span<unsigned char const,18446744073709551615ul>,PropertyExchange::RequestError>)>::__value_func[abi:ne200100](v43, v42);
  v8 = *(v7 + 8);
  if (!v8)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v9 = v8;
      v10 = *(v8 + 8);
      if (v10 == a3)
      {
        break;
      }

      if (v10 > a3)
      {
        goto LABEL_12;
      }

      if (v10 >= a3)
      {
        v14 = 1;
      }

      else
      {
        v14 = -1;
      }

      if ((v14 & 0x80) == 0)
      {
        goto LABEL_20;
      }

LABEL_18:
      v8 = v9[1];
      if (!v8)
      {
        goto LABEL_19;
      }
    }

    v11 = *(v9 + 36);
    if (v6 >= v11)
    {
      break;
    }

LABEL_12:
    v8 = *v9;
    if (!*v9)
    {
      goto LABEL_19;
    }
  }

  v12 = v11 == v6;
  if (v11 >= v6)
  {
    v13 = 1;
  }

  else
  {
    v13 = -1;
  }

  if (v12)
  {
    v13 = 0;
  }

  if (v13 < 0)
  {
    goto LABEL_18;
  }

LABEL_20:
  *(v9 + 22) = 0;
  *(v9 + 46) = v6;
  std::__function::__value_func<void ()(caulk::expected<std::span<unsigned char const,18446744073709551615ul>,PropertyExchange::RequestError>)>::__value_func[abi:ne200100](&v44, v43);
  v15 = v9 + 9;
  if (v9 + 9 != &v44)
  {
    v16 = v45;
    v17 = v9[12];
    if (v45 == &v44)
    {
      if (v17 == v15)
      {
        (*(v45->__r_.__value_.__r.__words[0] + 24))(v45, &__src);
        (*(v45->__r_.__value_.__r.__words[0] + 32))(v45);
        v45 = 0;
        (*(*v9[12] + 24))(v9[12], &v44);
        (*(*v9[12] + 32))(v9[12]);
        v9[12] = 0;
        v45 = &v44;
        (*(__src.__r_.__value_.__r.__words[0] + 24))(&__src, v9 + 9);
        (*(__src.__r_.__value_.__r.__words[0] + 32))(&__src);
      }

      else
      {
        (*(v45->__r_.__value_.__r.__words[0] + 24))(v45, v9 + 9);
        (*(v45->__r_.__value_.__r.__words[0] + 32))(v45);
        v45 = v9[12];
      }

      v9[12] = v15;
    }

    else if (v17 == v15)
    {
      (*(*v17 + 24))(v9[12], &v44);
      (*(*v9[12] + 32))(v9[12]);
      v9[12] = v45;
      v45 = &v44;
    }

    else
    {
      v45 = v9[12];
      v9[12] = v16;
    }
  }

  std::__function::__value_func<void ()(caulk::expected<std::span<unsigned char const,18446744073709551615ul>,PropertyExchange::RequestError>)>::~__value_func[abi:ne200100](&v44);
  std::__function::__value_func<void ()(caulk::expected<std::span<unsigned char const,18446744073709551615ul>,PropertyExchange::RequestError>)>::~__value_func[abi:ne200100](v43);
  v18 = *(a2 + 64);
  std::string::basic_string[abi:ne200100]<0>(&v40, "{");
  v39 = 8;
  strcpy(__s, "resource");
  v19 = std::string::append(&v40, __s, 8uLL);
  v20 = *&v19->__r_.__value_.__l.__data_;
  v41.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
  *&v41.__r_.__value_.__l.__data_ = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  v21 = std::string::append(&v41, ":", 3uLL);
  v22 = *&v21->__r_.__value_.__l.__data_;
  __src.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
  *&__src.__r_.__value_.__l.__data_ = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  v37 = 12;
  strcpy(v36, "ResourceList");
  v23 = std::string::append(&__src, v36, 0xCuLL);
  v24 = *&v23->__r_.__value_.__l.__data_;
  v44.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
  *&v44.__r_.__value_.__l.__data_ = v24;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  v25 = std::string::append(&v44, "}", 2uLL);
  v26 = *&v25->__r_.__value_.__l.__data_;
  v35 = v25->__r_.__value_.__r.__words[2];
  *__p = v26;
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  if (v37 < 0)
  {
    operator delete(v36[0]);
  }

  if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__src.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  if (v39 < 0)
  {
    operator delete(*__s);
  }

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  if (v35 >= 0)
  {
    v27 = __p;
  }

  else
  {
    v27 = __p[0];
  }

  if (v35 >= 0)
  {
    v28 = HIBYTE(v35);
  }

  else
  {
    v28 = __p[1];
  }

  midi::ci::message::make_with_payload_size(&v44, v28 + 9, 52, a3, v18, 127);
  if (v28 && !v27)
  {
    v30 = "!header.size || header.data";
    v31 = 264;
    v32 = "capability_inquiry.cpp";
    v33 = "make_property_data_message";
    goto LABEL_61;
  }

  if ((v6 & 0x80) != 0)
  {
    v30 = "value <= uint7_max";
    v31 = 208;
    v32 = "sysex.h";
    v33 = "add_uint7";
    goto LABEL_61;
  }

  __src.__r_.__value_.__s.__data_[0] = v6;
  std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&v44.__r_.__value_.__l.__size_, v44.__r_.__value_.__r.__words[2], &__src, &__src.__r_.__value_.__s.__data_[1], 1);
  if ((v28 & 0xC000) != 0)
  {
    v30 = "value <= uint14_max";
    v31 = 224;
    v32 = "sysex.h";
    v33 = "add_uint14";
    goto LABEL_61;
  }

  __src.__r_.__value_.__s.__data_[0] = v28 & 0x7F;
  __src.__r_.__value_.__s.__data_[1] = v28 >> 7;
  std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&v44.__r_.__value_.__l.__size_, v44.__r_.__value_.__r.__words[2], &__src, &__src.__r_.__value_.__s.__data_[2], 2);
  if (!v28)
  {
    goto LABEL_54;
  }

  if (!v27)
  {
    v30 = "d";
    v31 = 216;
    v32 = "sysex.h";
    v33 = "add_data";
LABEL_61:
    __assert_rtn(v33, v32, v31, v30);
  }

  std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&v44.__r_.__value_.__l.__size_, v44.__r_.__value_.__r.__words[2], v27, &v27[v28], v28);
LABEL_54:
  LOWORD(__src.__r_.__value_.__l.__data_) = 1;
  std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&v44.__r_.__value_.__l.__size_, v44.__r_.__value_.__r.__words[2], &__src, &__src.__r_.__value_.__s.__data_[2], 2);
  LOWORD(__src.__r_.__value_.__l.__data_) = 1;
  std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&v44.__r_.__value_.__l.__size_, v44.__r_.__value_.__r.__words[2], &__src, &__src.__r_.__value_.__s.__data_[2], 2);
  LOWORD(__src.__r_.__value_.__l.__data_) = 0;
  std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&v44.__r_.__value_.__l.__size_, v44.__r_.__value_.__r.__words[2], &__src, &__src.__r_.__value_.__s.__data_[2], 2);
  if (SHIBYTE(v35) < 0)
  {
    operator delete(__p[0]);
  }

  *this = v44.__r_.__value_.__l.__data_;
  *(this + 8) = *&v44.__r_.__value_.__r.__words[1];
  *(this + 3) = v45;
  return std::__function::__value_func<void ()(caulk::expected<std::span<unsigned char const,18446744073709551615ul>,PropertyExchange::RequestError>)>::~__value_func[abi:ne200100](v42);
}

void sub_237237B84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<MIDICI::Device::makeGetResourceListInquiryMessage(int)::$_0,std::allocator<MIDICI::Device::makeGetResourceListInquiryMessage(int)::$_0>,void ()(caulk::expected<std::span<unsigned char const,18446744073709551615ul>,PropertyExchange::RequestError>)>::operator()(uint64_t a1, uint64_t *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  if (a2[2])
  {
    v2 = *a2;
    v3 = a2[1];
    v4 = *(a1 + 8);
    v14 = 0;
    LOBYTE(v11) = 0;
    v12 = 0;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v11);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v11);
    std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::__value_func[abi:ne200100](v15, v13);
    std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::__value_func[abi:ne200100](v31, v15);
    std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::__value_func[abi:ne200100](v16, v31);
    v17 = 0;
    v18[0] = v2;
    v18[1] = v2 + v3;
    v18[2] = -1;
    v19 = 0;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0;
    v25 = "";
    v27 = 0;
    v28 = 0;
    v26 = 0;
    v5 = localeconv();
    if (!v5)
    {
      __assert_rtn("get_decimal_point", "lexer.hpp", 136, "loc != nullptr");
    }

    if (v5->decimal_point)
    {
      v6 = *v5->decimal_point;
    }

    else
    {
      v6 = 46;
    }

    v29 = v6;
    v30 = 0;
    v17 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::scan(v18);
    std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](v31);
    nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::parse(v16, &v11);
    nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::~lexer(v18);
    std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](v16);
    std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](v15);
    std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](v13);
    if (v11 == 9)
    {
      v7 = 0;
    }

    else
    {
      v7 = ConvertJSONToCFType(&v11);
    }

    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v11);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v12, v11);
    v16[0] = v7;
    if (v7)
    {
      v8 = CFGetTypeID(v7);
      if (v8 != CFArrayGetTypeID())
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383C7ED0](exception, "Could not construct");
      }
    }

    v9 = *(v4 + 192);
    *(v4 + 192) = v7;
    v16[0] = v9;
    if (v9)
    {
      CFRelease(v9);
    }
  }
}

void sub_237237E88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, const void *a20)
{
  __cxa_free_exception(v20);
  applesauce::CF::ObjectRef<__CFArray const*>::~ObjectRef(&a20);
  _Unwind_Resume(a1);
}

CFNumberRef ConvertJSONToCFType(const std::string **a1)
{
  v2 = *a1;
  if (v2 == 2)
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    *&valuePtr.__r_.__value_.__l.__data_ = a1;
    valuePtr.__r_.__value_.__r.__words[2] = 0;
    v29 = 0;
    v30 = 0x8000000000000000;
    nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::set_begin(&valuePtr);
    *&v21.__r_.__value_.__l.__data_ = a1;
    v21.__r_.__value_.__r.__words[2] = 0;
    v22 = 0;
    v23 = 0x8000000000000000;
    nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::set_end(&v21);
    while (!nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator==(&valuePtr, &v21))
    {
      v11 = nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator*(&valuePtr);
      v12 = ConvertJSONToCFType(v11);
      CFArrayAppendValue(Mutable, v12);
      CFRelease(v12);
      nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator++(&valuePtr);
    }
  }

  else if (v2 == 1)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::iter_impl(&v21, a1);
    nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::set_begin(&v21);
    nlohmann::detail::iteration_proxy_value<nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>>::iteration_proxy_value(&valuePtr, &v21);
    v4 = nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::iter_impl(&v36, a1);
    nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::set_end(v4);
    nlohmann::detail::iteration_proxy_value<nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>>::iteration_proxy_value(&v21, &v36);
    while (!nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator==(&valuePtr, &v21))
    {
      if (!valuePtr.__r_.__value_.__r.__words[0])
      {
        __assert_rtn("key", "iteration_proxy.hpp", 75, "anchor.m_object != nullptr");
      }

      v5 = *valuePtr.__r_.__value_.__l.__data_;
      if (v5 == 1)
      {
        p_p = (valuePtr.__r_.__value_.__l.__size_ + 32);
      }

      else
      {
        p_p = &v34;
        if (v5 == 2)
        {
          p_p = &__p;
          if (v31 != v32)
          {
            std::to_string(&v36, v31);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            __p = v36;
            v32 = v31;
            p_p = &__p;
          }
        }
      }

      v7 = nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator*(&valuePtr);
      if ((p_p->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v8 = p_p;
      }

      else
      {
        v8 = p_p->__r_.__value_.__r.__words[0];
      }

      v9 = CFStringCreateWithCString(0, v8, 0x8000100u);
      v10 = ConvertJSONToCFType(v7);
      CFDictionarySetValue(Mutable, v9, v10);
      CFRelease(v9);
      CFRelease(v10);
      nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator++(&valuePtr);
      ++v31;
    }

    if (v27 < 0)
    {
      operator delete(v26);
    }

    if (v25 < 0)
    {
      operator delete(v24);
    }

    if (v35 < 0)
    {
      operator delete(v34);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      v14 = __p.__r_.__value_.__r.__words[0];
LABEL_33:
      operator delete(v14);
    }
  }

  else if ((v2 - 5) > 2)
  {
    if (v2 == 4)
    {
      v16 = MEMORY[0x277CBED28];
      if (!*(a1 + 8))
      {
        v16 = MEMORY[0x277CBED10];
      }

      return *v16;
    }

    else
    {
      if (v2 != 3)
      {
        return 0;
      }

      memset(&valuePtr, 0, sizeof(valuePtr));
      std::string::operator=(&valuePtr, a1[1]);
      if ((valuePtr.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_valuePtr = &valuePtr;
      }

      else
      {
        p_valuePtr = valuePtr.__r_.__value_.__r.__words[0];
      }

      Mutable = CFStringCreateWithCString(0, p_valuePtr, 0x8000100u);
      if (SHIBYTE(valuePtr.__r_.__value_.__r.__words[2]) < 0)
      {
        v14 = valuePtr.__r_.__value_.__r.__words[0];
        goto LABEL_33;
      }
    }
  }

  else
  {
    switch(v2)
    {
      case 5:
        v13 = a1[1];
        break;
      case 7:
        v13 = *(a1 + 1);
        break;
      case 6:
        v13 = a1[1];
        break;
      default:
        exception = __cxa_allocate_exception(0x20uLL);
        v19 = *a1;
        if (v19 > 9)
        {
          v20 = "number";
        }

        else
        {
          v20 = off_278A289F8[v19];
        }

        std::string::basic_string[abi:ne200100]<0>(&v21, v20);
        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&valuePtr, "type must be number, but is ", &v21);
        nlohmann::detail::type_error::create(exception, 302, &valuePtr);
    }

    *&valuePtr.__r_.__value_.__l.__data_ = v13;
    return CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
  }

  return Mutable;
}

void sub_237238330(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v32 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v32)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v31);
  goto LABEL_8;
}

BOOL nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator==(unsigned __int8 **a1, unsigned __int8 **a2)
{
  v2 = *a1;
  if (*a1 != *a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v8, "cannot compare iterators of different containers");
    nlohmann::detail::invalid_iterator::create(exception, 212, v8);
  }

  if (!v2)
  {
    __assert_rtn("operator==", "iter_impl.hpp", 405, "m_object != nullptr");
  }

  v3 = *v2;
  if (v3 == 2)
  {
    v4 = a1[2];
    v5 = a2[2];
  }

  else if (v3 == 1)
  {
    v4 = a1[1];
    v5 = a2[1];
  }

  else
  {
    v4 = a1[4];
    v5 = a2[4];
  }

  return v4 == v5;
}

void sub_2372384CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

unsigned __int8 *nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator*(unsigned __int8 **a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "iter_impl.hpp", 242, "m_object != nullptr");
  }

  v3 = *result;
  if (v3 == 1)
  {
    v6 = a1[1];
    if (v6 == (*(result + 1) + 8))
    {
      __assert_rtn("operator*", "iter_impl.hpp", 248, "m_it.object_iterator != m_object->m_value.object->end()");
    }

    return v6 + 56;
  }

  else if (v3 == 2)
  {
    v5 = *(*(result + 1) + 8);
    result = a1[2];
    if (result == v5)
    {
      __assert_rtn("operator*", "iter_impl.hpp", 254, "m_it.array_iterator != m_object->m_value.array->end()");
    }
  }

  else
  {
    if (!*result)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(v8, "cannot get value");
      nlohmann::detail::invalid_iterator::create(exception, 214, v8);
    }

    if (a1[4])
    {
      v4 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(v8, "cannot get value");
      nlohmann::detail::invalid_iterator::create(v4, 214, v8);
    }
  }

  return result;
}

void sub_237238698(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v16)
  {
    __cxa_free_exception(v15);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 **nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator++(unsigned __int8 **result)
{
  if (!*result)
  {
    __assert_rtn("operator++", "iter_impl.hpp", 324, "m_object != nullptr");
  }

  v1 = **result;
  if (v1 == 2)
  {
    result[2] += 16;
  }

  else if (v1 == 1)
  {
    v2 = result[1];
    v3 = *(v2 + 1);
    if (v3)
    {
      do
      {
        v4 = v3;
        v3 = *v3;
      }

      while (v3);
    }

    else
    {
      do
      {
        v4 = *(v2 + 2);
        v5 = *v4 == v2;
        v2 = v4;
      }

      while (!v5);
    }

    result[1] = v4;
  }

  else
  {
    ++result[4];
  }

  return result;
}

uint64_t nlohmann::detail::iteration_proxy_value<nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>>::~iteration_proxy_value(uint64_t a1)
{
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  return a1;
}

void *nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::iter_impl(void *result, uint64_t a2)
{
  *result = a2;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  result[4] = 0x8000000000000000;
  if (!a2)
  {
    __assert_rtn("iter_impl", "iter_impl.hpp", 88, "m_object != nullptr");
  }

  return result;
}

unsigned __int8 **nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::set_begin(unsigned __int8 **result)
{
  v1 = *result;
  if (!*result)
  {
    __assert_rtn("set_begin", "iter_impl.hpp", 174, "m_object != nullptr");
  }

  v2 = *v1;
  if (*v1)
  {
    if (v2 == 2)
    {
      result[2] = **(v1 + 1);
    }

    else if (v2 == 1)
    {
      result[1] = **(v1 + 1);
    }

    else
    {
      result[4] = 0;
    }
  }

  else
  {
    result[4] = 1;
  }

  return result;
}

unsigned __int8 **nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::set_end(unsigned __int8 **result)
{
  v1 = *result;
  if (!*result)
  {
    __assert_rtn("set_end", "iter_impl.hpp", 211, "m_object != nullptr");
  }

  v2 = *v1;
  if (v2 == 2)
  {
    result[2] = *(*(v1 + 1) + 8);
  }

  else if (v2 == 1)
  {
    result[1] = (*(v1 + 1) + 8);
  }

  else
  {
    result[4] = 1;
  }

  return result;
}

uint64_t nlohmann::detail::iteration_proxy_value<nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>>::iteration_proxy_value(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v3;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 56), "0");
  std::string::basic_string[abi:ne200100]<0>((a1 + 80), "");
  return a1;
}

void nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::parse(uint64_t a1, unsigned __int8 *a2)
{
  v58 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 24))
  {
    v14 = *(a1 + 184);
    v52 = a2;
    v53 = 0u;
    v54 = 0u;
    v55 = 0;
    v56 = v14;
    memset(&__p, 0, sizeof(__p));
    while (1)
    {
      v15 = *(a1 + 32);
      if (v15 <= 5)
      {
        if (v15 <= 2)
        {
          if (v15 == 1)
          {
            LOBYTE(v47.__vftable) = 1;
            nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<BOOL &>(&v52, &v47);
          }

          else
          {
            if (v15 != 2)
            {
              goto LABEL_125;
            }

            LOBYTE(v47.__vftable) = 0;
            nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<BOOL &>(&v52, &v47);
          }
        }

        else if (v15 == 3)
        {
          nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<decltype(nullptr)>(&v52);
        }

        else
        {
          if (v15 == 4)
          {
            nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<std::string&>(&v52);
          }

          v47.__vftable = *(a1 + 160);
          nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<unsigned long long &>(&v52, &v47);
        }

        goto LABEL_68;
      }

      if (v15 <= 7)
      {
        if (v15 == 6)
        {
          v47.__vftable = *(a1 + 152);
          nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<long long &>(&v52, &v47);
        }

        else
        {
          if ((*(a1 + 168) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
          {
            nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::get_token_string(&v49, *(a1 + 96), *(a1 + 104));
            nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::get_token_string(&v44, *(a1 + 96), *(a1 + 104));
            std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v45, "number overflow parsing '", &v44);
            std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v46, &v45, "'");
            nlohmann::detail::out_of_range::create(&v47, &v46);
            nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(&v52, &v47);
            nlohmann::detail::out_of_range::~out_of_range(&v47);
            if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v46.__r_.__value_.__l.__data_);
            }

            goto LABEL_127;
          }

          v47.__vftable = *(a1 + 168);
          nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<double &>(&v52, &v47);
        }

        goto LABEL_68;
      }

      if (v15 != 8)
      {
        break;
      }

      v49.__r_.__value_.__s.__data_[0] = 2;
      v47.__vftable = nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>(&v52, &v49);
      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *,std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *>>::push_back[abi:ne200100](&v53, &v47);
      v20 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::scan(a1 + 40);
      *(a1 + 32) = v20;
      if (v20 == 10)
      {
LABEL_65:
        *(&v53 + 1) -= 8;
LABEL_68:
        size = __p.__r_.__value_.__l.__size_;
        if (!__p.__r_.__value_.__l.__size_)
        {
LABEL_84:
          if (__p.__r_.__value_.__r.__words[0])
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2);
          v30 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::scan(a1 + 40);
          *(a1 + 32) = v30;
          if (v30 != 15)
          {
            nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::get_token_string(&__p, *(a1 + 96), *(a1 + 104));
            v49 = *(a1 + 72);
            std::string::basic_string[abi:ne200100]<0>(&v45, "value");
            nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::exception_message(&v46, a1, 0xFu, &v45);
            nlohmann::detail::parse_error::create(&v47, &v49, &v46);
            nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(&v52, &v47);
            v47.__vftable = &unk_284A48C48;
            std::runtime_error::~runtime_error(&v48);
            std::exception::~exception(&v47);
            if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v46.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v45.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }

          if (v55 == 1)
          {
            v38[0] = 9;
            v39 = 0;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v38);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v38);
            v31 = *a2;
            *a2 = 9;
            v38[0] = v31;
            v32 = *(a2 + 1);
            *(a2 + 1) = 0;
            v39 = v32;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v38);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v39, v31);
          }

          if (v53)
          {
            operator delete(v53);
          }

          return;
        }

        v22 = __p.__r_.__value_.__r.__words[0];
        v23 = *(&v53 + 1);
        while (1)
        {
          v24 = size - 1;
          if (((*(v22 + (((size - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (size - 1)) & 1) == 0)
          {
            break;
          }

          v25 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::scan(a1 + 40);
          *(a1 + 32) = v25;
          if (v25 == 13)
          {
            *(&v53 + 1) = v23;
            __p.__r_.__value_.__l.__size_ = size;
            v19 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::scan(a1 + 40);
            goto LABEL_82;
          }

          if (v25 != 10)
          {
            *(&v53 + 1) = v23;
            nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::get_token_string(&v49, *(a1 + 96), *(a1 + 104));
            v46 = *(a1 + 72);
            std::string::basic_string[abi:ne200100]<0>(&v44, "array");
            nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::exception_message(&v45, a1, 0xAu, &v44);
            nlohmann::detail::parse_error::create(&v47, &v46, &v45);
            nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(&v52, &v47);
            goto LABEL_140;
          }

LABEL_76:
          v23 -= 8;
          --size;
          if (!v24)
          {
            *(&v53 + 1) = v23;
            goto LABEL_84;
          }
        }

        v26 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::scan(a1 + 40);
        *(a1 + 32) = v26;
        if (v26 != 13)
        {
          if (v26 != 11)
          {
            *(&v53 + 1) = v23;
            nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::get_token_string(&v49, *(a1 + 96), *(a1 + 104));
            v46 = *(a1 + 72);
            std::string::basic_string[abi:ne200100]<0>(&v44, "object");
            nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::exception_message(&v45, a1, 0xBu, &v44);
            nlohmann::detail::parse_error::create(&v47, &v46, &v45);
            nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(&v52, &v47);
            goto LABEL_140;
          }

          goto LABEL_76;
        }

        *(&v53 + 1) = v23;
        __p.__r_.__value_.__l.__size_ = size;
        v27 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::scan(a1 + 40);
        *(a1 + 32) = v27;
        if (v27 != 4)
        {
          goto LABEL_138;
        }

        v28 = *(*(v23 - 8) + 8);
        v47.__vftable = (a1 + 120);
        *(&v54 + 1) = std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v28, (a1 + 120)) + 56;
        v29 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::scan(a1 + 40);
        *(a1 + 32) = v29;
        if (v29 != 12)
        {
          goto LABEL_139;
        }

        v19 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::scan(a1 + 40);
LABEL_82:
        *(a1 + 32) = v19;
      }

      else
      {
        LOBYTE(v47.__vftable) = 1;
        std::vector<BOOL>::push_back(&__p, &v47);
      }
    }

    if (v15 != 9)
    {
      if (v15 == 14)
      {
        nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::get_token_string(&v49, *(a1 + 96), *(a1 + 104));
        v46 = *(a1 + 72);
        std::string::basic_string[abi:ne200100]<0>(&v44, "value");
        nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::exception_message(&v45, a1, 0, &v44);
        nlohmann::detail::parse_error::create(&v47, &v46, &v45);
        nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(&v52, &v47);
      }

      else
      {
LABEL_125:
        nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::get_token_string(&v49, *(a1 + 96), *(a1 + 104));
        v46 = *(a1 + 72);
        std::string::basic_string[abi:ne200100]<0>(&v44, "value");
        nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::exception_message(&v45, a1, 0x10u, &v44);
        nlohmann::detail::parse_error::create(&v47, &v46, &v45);
        nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(&v52, &v47);
      }

      v47.__vftable = &unk_284A48C48;
      std::runtime_error::~runtime_error(&v48);
      std::exception::~exception(&v47);
      goto LABEL_127;
    }

    v49.__r_.__value_.__s.__data_[0] = 1;
    v47.__vftable = nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>(&v52, &v49);
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *,std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *>>::push_back[abi:ne200100](&v53, &v47);
    v16 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::scan(a1 + 40);
    *(a1 + 32) = v16;
    if (v16 != 11)
    {
      if (v16 == 4)
      {
        v17 = *(*(*(&v53 + 1) - 8) + 8);
        v47.__vftable = (a1 + 120);
        *(&v54 + 1) = std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v17, (a1 + 120)) + 56;
        v18 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::scan(a1 + 40);
        *(a1 + 32) = v18;
        if (v18 == 12)
        {
          LOBYTE(v47.__vftable) = 0;
          std::vector<BOOL>::push_back(&__p, &v47);
          v19 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::scan(a1 + 40);
          goto LABEL_82;
        }

LABEL_139:
        nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::get_token_string(&v49, *(a1 + 96), *(a1 + 104));
        v46 = *(a1 + 72);
        std::string::basic_string[abi:ne200100]<0>(&v44, "object separator");
        nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::exception_message(&v45, a1, 0xCu, &v44);
        nlohmann::detail::parse_error::create(&v47, &v46, &v45);
        nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(&v52, &v47);
      }

      else
      {
LABEL_138:
        nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::get_token_string(&v49, *(a1 + 96), *(a1 + 104));
        v46 = *(a1 + 72);
        std::string::basic_string[abi:ne200100]<0>(&v44, "object key");
        nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::exception_message(&v45, a1, 4u, &v44);
        nlohmann::detail::parse_error::create(&v47, &v46, &v45);
        nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(&v52, &v47);
      }

LABEL_140:
      nlohmann::detail::parse_error::~parse_error(&v47);
LABEL_127:
      if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v45.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v44.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v49.__r_.__value_.__l.__data_);
      }

      goto LABEL_84;
    }

    goto LABEL_65;
  }

  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::__value_func[abi:ne200100](v51, a1);
  nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::json_sax_dom_callback_parser(&v52, a2, v51, *(a1 + 184));
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](v51);
  memset(&__p, 0, sizeof(__p));
  while (1)
  {
LABEL_3:
    v4 = *(a1 + 32);
    if (v4 <= 5)
    {
      if (v4 > 2)
      {
        if (v4 == 3)
        {
          nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<decltype(nullptr)>(&v52);
        }

        else if (v4 == 4)
        {
          nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<std::string&>(&v52);
        }

        else
        {
          nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<unsigned long long &>(&v52, *(a1 + 160));
        }

        goto LABEL_26;
      }

      if (v4 == 1)
      {
        v6 = 1;
      }

      else
      {
        if (v4 != 2)
        {
          goto LABEL_99;
        }

        v6 = 0;
      }

      nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<BOOL &>(&v52, v6);
      goto LABEL_26;
    }

    if (v4 <= 7)
    {
      break;
    }

    if (v4 != 8)
    {
      if (v4 == 9)
      {
        nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::start_object(&v52);
        v5 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::scan(a1 + 40);
        *(a1 + 32) = v5;
        if (v5 != 11)
        {
          if (v5 == 4)
          {
            nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::key();
          }

          goto LABEL_135;
        }

        nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::end_object(&v52);
        goto LABEL_26;
      }

      if (v4 == 14)
      {
        nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::get_token_string(&v49, *(a1 + 96), *(a1 + 104));
        v46 = *(a1 + 72);
        std::string::basic_string[abi:ne200100]<0>(&v44, "value");
        nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::exception_message(&v45, a1, 0, &v44);
        nlohmann::detail::parse_error::create(&v47, &v46, &v45);
        nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(&v52, &v47);
LABEL_100:
        v47.__vftable = &unk_284A48C48;
        std::runtime_error::~runtime_error(&v48);
        std::exception::~exception(&v47);
        goto LABEL_101;
      }

LABEL_99:
      nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::get_token_string(&v49, *(a1 + 96), *(a1 + 104));
      v46 = *(a1 + 72);
      std::string::basic_string[abi:ne200100]<0>(&v44, "value");
      nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::exception_message(&v45, a1, 0x10u, &v44);
      nlohmann::detail::parse_error::create(&v47, &v46, &v45);
      nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(&v52, &v47);
      goto LABEL_100;
    }

    nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::start_array(&v52);
    v7 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::scan(a1 + 40);
    *(a1 + 32) = v7;
    if (v7 == 10)
    {
      nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::end_array(&v52);
      goto LABEL_26;
    }

    LOBYTE(v47.__vftable) = 1;
    std::vector<BOOL>::push_back(&__p, &v47);
  }

  if (v4 == 6)
  {
    nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<long long &>(&v52, *(a1 + 152));
  }

  else
  {
    if ((*(a1 + 168) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::get_token_string(&v49, *(a1 + 96), *(a1 + 104));
      nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::get_token_string(&v44, *(a1 + 96), *(a1 + 104));
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v45, "number overflow parsing '", &v44);
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v46, &v45, "'");
      nlohmann::detail::out_of_range::create(&v47, &v46);
      nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(&v52, &v47);
      nlohmann::detail::out_of_range::~out_of_range(&v47);
      if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v46.__r_.__value_.__l.__data_);
      }

      goto LABEL_101;
    }

    nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<double &>(&v52, *(a1 + 168));
  }

LABEL_26:
  v8 = __p.__r_.__value_.__l.__size_;
  if (!__p.__r_.__value_.__l.__size_)
  {
    goto LABEL_107;
  }

  v9 = __p.__r_.__value_.__r.__words[0];
  while (1)
  {
    v10 = v8 - 1;
    if ((*(v9 + (((v8 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v8 - 1)))
    {
      v11 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::scan(a1 + 40);
      *(a1 + 32) = v11;
      if (v11 == 13)
      {
        __p.__r_.__value_.__l.__size_ = v8;
        *(a1 + 32) = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::scan(a1 + 40);
        goto LABEL_3;
      }

      if (v11 != 10)
      {
        __p.__r_.__value_.__l.__size_ = v8;
        nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::get_token_string(&v49, *(a1 + 96), *(a1 + 104));
        v46 = *(a1 + 72);
        std::string::basic_string[abi:ne200100]<0>(&v44, "array");
        nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::exception_message(&v45, a1, 0xAu, &v44);
        nlohmann::detail::parse_error::create(&v47, &v46, &v45);
        nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(&v52, &v47);
        goto LABEL_136;
      }

      nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::end_array(&v52);
      goto LABEL_35;
    }

    v12 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::scan(a1 + 40);
    *(a1 + 32) = v12;
    if (v12 == 13)
    {
      break;
    }

    if (v12 != 11)
    {
      __p.__r_.__value_.__l.__size_ = v8;
      nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::get_token_string(&v49, *(a1 + 96), *(a1 + 104));
      v46 = *(a1 + 72);
      std::string::basic_string[abi:ne200100]<0>(&v44, "object");
      nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::exception_message(&v45, a1, 0xBu, &v44);
      nlohmann::detail::parse_error::create(&v47, &v46, &v45);
      nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(&v52, &v47);
      goto LABEL_136;
    }

    nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::end_object(&v52);
LABEL_35:
    --v8;
    if (!v10)
    {
      goto LABEL_107;
    }
  }

  __p.__r_.__value_.__l.__size_ = v8;
  v13 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::scan(a1 + 40);
  *(a1 + 32) = v13;
  if (v13 == 4)
  {
    nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::key();
  }

LABEL_135:
  nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::get_token_string(&v49, *(a1 + 96), *(a1 + 104));
  v46 = *(a1 + 72);
  std::string::basic_string[abi:ne200100]<0>(&v44, "object key");
  nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::exception_message(&v45, a1, 4u, &v44);
  nlohmann::detail::parse_error::create(&v47, &v46, &v45);
  nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(&v52, &v47);
LABEL_136:
  nlohmann::detail::parse_error::~parse_error(&v47);
LABEL_101:
  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

LABEL_107:
  if (__p.__r_.__value_.__r.__words[0])
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2);
  v33 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::scan(a1 + 40);
  *(a1 + 32) = v33;
  if (v33 != 15)
  {
    nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::get_token_string(&__p, *(a1 + 96), *(a1 + 104));
    v49 = *(a1 + 72);
    std::string::basic_string[abi:ne200100]<0>(&v45, "value");
    nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::exception_message(&v46, a1, 0xFu, &v45);
    nlohmann::detail::parse_error::create(&v47, &v49, &v46);
    nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(&v52, &v47);
    v47.__vftable = &unk_284A48C48;
    std::runtime_error::~runtime_error(&v48);
    std::exception::~exception(&v47);
    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v45.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (v57 == 1)
  {
    v42[0] = 9;
    v43 = 0;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v42);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v42);
    v34 = *a2;
    *a2 = 9;
    v42[0] = v34;
    v35 = *(a2 + 1);
    *(a2 + 1) = 0;
    v43 = v35;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v42);
    v36 = &v43;
    goto LABEL_120;
  }

  if (*a2 == 9)
  {
    v40[0] = 0;
    v41 = 0;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v40);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v40);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v40);
    v34 = *a2;
    *a2 = 0;
    v40[0] = v34;
    v37 = *(a2 + 1);
    *(a2 + 1) = 0;
    v41 = v37;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v40);
    v36 = &v41;
LABEL_120:
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v36, v34);
  }

  nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~json_sax_dom_callback_parser(&v52);
}

void sub_237239A64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, std::runtime_error a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, void *a54)
{
  nlohmann::detail::parse_error::~parse_error(&a33);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  if (a43)
  {
    operator delete(a43);
  }

  if (a54)
  {
    operator delete(a54);
  }

  _Unwind_Resume(a1);
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::~lexer(uint64_t a1)
{
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::scan(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 32))
  {
    if (nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::get(a1) != 239)
    {
      nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::unget(a1);
      goto LABEL_7;
    }

    if (nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::get(a1) != 187 || nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::get(a1) != 191)
    {
      v2 = "invalid BOM; must be 0xEF 0xBB 0xBF if given";
      goto LABEL_150;
    }
  }

  while (1)
  {
    while (1)
    {
LABEL_7:
      while (1)
      {
        nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::get(a1);
        v3 = *(a1 + 16);
        if (v3 > 12)
        {
          break;
        }

        if ((v3 - 9) >= 2)
        {
          if ((v3 + 1) < 2)
          {
            return 15;
          }

          goto LABEL_147;
        }
      }

      if (v3 > 31)
      {
        break;
      }

      if (v3 != 13)
      {
        goto LABEL_147;
      }
    }

    if (v3 > 43)
    {
      break;
    }

    if (v3 != 32)
    {
      if (v3 == 34)
      {
        nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::reset(a1);
        if (*(a1 + 16) != 34)
        {
          __assert_rtn("scan_string", "lexer.hpp", 250, "current == '\\'");
        }

        while (1)
        {
          v15 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::get(a1) + 1;
          result = 4;
          v2 = "invalid string: missing closing quote";
          switch(v15)
          {
            case 0:
              goto LABEL_150;
            case 1:
              v2 = "invalid string: control character U+0000 (NUL) must be escaped to \\u0000";
              goto LABEL_150;
            case 2:
              v2 = "invalid string: control character U+0001 (SOH) must be escaped to \\u0001";
              goto LABEL_150;
            case 3:
              v2 = "invalid string: control character U+0002 (STX) must be escaped to \\u0002";
              goto LABEL_150;
            case 4:
              v2 = "invalid string: control character U+0003 (ETX) must be escaped to \\u0003";
              goto LABEL_150;
            case 5:
              v2 = "invalid string: control character U+0004 (EOT) must be escaped to \\u0004";
              goto LABEL_150;
            case 6:
              v2 = "invalid string: control character U+0005 (ENQ) must be escaped to \\u0005";
              goto LABEL_150;
            case 7:
              v2 = "invalid string: control character U+0006 (ACK) must be escaped to \\u0006";
              goto LABEL_150;
            case 8:
              v2 = "invalid string: control character U+0007 (BEL) must be escaped to \\u0007";
              goto LABEL_150;
            case 9:
              v2 = "invalid string: control character U+0008 (BS) must be escaped to \\u0008 or \\b";
              goto LABEL_150;
            case 10:
              v2 = "invalid string: control character U+0009 (HT) must be escaped to \\u0009 or \\t";
              goto LABEL_150;
            case 11:
              v2 = "invalid string: control character U+000A (LF) must be escaped to \\u000A or \\n";
              goto LABEL_150;
            case 12:
              v2 = "invalid string: control character U+000B (VT) must be escaped to \\u000B";
              goto LABEL_150;
            case 13:
              v2 = "invalid string: control character U+000C (FF) must be escaped to \\u000C or \\f";
              goto LABEL_150;
            case 14:
              v2 = "invalid string: control character U+000D (CR) must be escaped to \\u000D or \\r";
              goto LABEL_150;
            case 15:
              v2 = "invalid string: control character U+000E (SO) must be escaped to \\u000E";
              goto LABEL_150;
            case 16:
              v2 = "invalid string: control character U+000F (SI) must be escaped to \\u000F";
              goto LABEL_150;
            case 17:
              v2 = "invalid string: control character U+0010 (DLE) must be escaped to \\u0010";
              goto LABEL_150;
            case 18:
              v2 = "invalid string: control character U+0011 (DC1) must be escaped to \\u0011";
              goto LABEL_150;
            case 19:
              v2 = "invalid string: control character U+0012 (DC2) must be escaped to \\u0012";
              goto LABEL_150;
            case 20:
              v2 = "invalid string: control character U+0013 (DC3) must be escaped to \\u0013";
              goto LABEL_150;
            case 21:
              v2 = "invalid string: control character U+0014 (DC4) must be escaped to \\u0014";
              goto LABEL_150;
            case 22:
              v2 = "invalid string: control character U+0015 (NAK) must be escaped to \\u0015";
              goto LABEL_150;
            case 23:
              v2 = "invalid string: control character U+0016 (SYN) must be escaped to \\u0016";
              goto LABEL_150;
            case 24:
              v2 = "invalid string: control character U+0017 (ETB) must be escaped to \\u0017";
              goto LABEL_150;
            case 25:
              v2 = "invalid string: control character U+0018 (CAN) must be escaped to \\u0018";
              goto LABEL_150;
            case 26:
              v2 = "invalid string: control character U+0019 (EM) must be escaped to \\u0019";
              goto LABEL_150;
            case 27:
              v2 = "invalid string: control character U+001A (SUB) must be escaped to \\u001A";
              goto LABEL_150;
            case 28:
              v2 = "invalid string: control character U+001B (ESC) must be escaped to \\u001B";
              goto LABEL_150;
            case 29:
              v2 = "invalid string: control character U+001C (FS) must be escaped to \\u001C";
              goto LABEL_150;
            case 30:
              v2 = "invalid string: control character U+001D (GS) must be escaped to \\u001D";
              goto LABEL_150;
            case 31:
              v2 = "invalid string: control character U+001E (RS) must be escaped to \\u001E";
              goto LABEL_150;
            case 32:
              v2 = "invalid string: control character U+001F (US) must be escaped to \\u001F";
              goto LABEL_150;
            case 33:
            case 34:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 45:
            case 46:
            case 47:
            case 48:
            case 49:
            case 50:
            case 51:
            case 52:
            case 53:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 59:
            case 60:
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 66:
            case 67:
            case 68:
            case 69:
            case 70:
            case 71:
            case 72:
            case 73:
            case 74:
            case 75:
            case 76:
            case 77:
            case 78:
            case 79:
            case 80:
            case 81:
            case 82:
            case 83:
            case 84:
            case 85:
            case 86:
            case 87:
            case 88:
            case 89:
            case 90:
            case 91:
            case 92:
            case 94:
            case 95:
            case 96:
            case 97:
            case 98:
            case 99:
            case 100:
            case 101:
            case 102:
            case 103:
            case 104:
            case 105:
            case 106:
            case 107:
            case 108:
            case 109:
            case 110:
            case 111:
            case 112:
            case 113:
            case 114:
            case 115:
            case 116:
            case 117:
            case 118:
            case 119:
            case 120:
            case 121:
            case 122:
            case 123:
            case 124:
            case 125:
            case 126:
            case 127:
            case 128:
              LOBYTE(v16) = *(a1 + 16);
              goto LABEL_65;
            case 35:
              return result;
            case 93:
              v18 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::get(a1);
              v2 = "invalid string: forbidden character after backslash";
              if (v18 <= 101)
              {
                if (v18 > 91)
                {
                  if (v18 == 92)
                  {
                    LOBYTE(v16) = 92;
                  }

                  else
                  {
                    if (v18 != 98)
                    {
                      goto LABEL_150;
                    }

                    LOBYTE(v16) = 8;
                  }
                }

                else if (v18 == 34)
                {
                  LOBYTE(v16) = 34;
                }

                else
                {
                  if (v18 != 47)
                  {
                    goto LABEL_150;
                  }

                  LOBYTE(v16) = 47;
                }
              }

              else if (v18 <= 113)
              {
                if (v18 == 102)
                {
                  LOBYTE(v16) = 12;
                }

                else
                {
                  if (v18 != 110)
                  {
                    goto LABEL_150;
                  }

                  LOBYTE(v16) = 10;
                }
              }

              else
              {
                switch(v18)
                {
                  case 'r':
                    LOBYTE(v16) = 13;
                    break;
                  case 't':
                    LOBYTE(v16) = 9;
                    break;
                  case 'u':
                    codepoint = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::get_codepoint(a1);
                    v16 = codepoint;
                    if (codepoint == -1)
                    {
LABEL_192:
                      v2 = "invalid string: '\\u' must be followed by 4 hex digits";
                      goto LABEL_150;
                    }

                    if ((codepoint & 0xFFFFFC00) == 0xD800)
                    {
                      if (nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::get(a1) != 92 || nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::get(a1) != 117)
                      {
                        goto LABEL_193;
                      }

                      v20 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::get_codepoint(a1);
                      v21 = v20;
                      if (v20 == -1)
                      {
                        goto LABEL_192;
                      }

                      if (v20 >> 10 != 55)
                      {
LABEL_193:
                        v2 = "invalid string: surrogate U+D800..U+DBFF must be followed by U+DC00..U+DFFF";
                        goto LABEL_150;
                      }

                      v22 = v20 + (v16 << 10) - 56613888;
                      std::string::push_back((a1 + 80), (v22 >> 18) | 0xF0);
                      std::string::push_back((a1 + 80), (v22 >> 12) & 0x3F | 0x80);
                      std::string::push_back((a1 + 80), (v22 >> 6) & 0x3F | 0x80);
                      LOBYTE(v16) = v21 & 0x3F | 0x80;
                    }

                    else
                    {
                      if ((codepoint & 0xFFFFFC00) == 0xDC00)
                      {
                        v2 = "invalid string: surrogate U+DC00..U+DFFF must follow U+D800..U+DBFF";
                        goto LABEL_150;
                      }

                      if (codepoint > 0x7F)
                      {
                        if (codepoint > 0x7FF)
                        {
                          std::string::push_back((a1 + 80), (codepoint >> 12) | 0xE0);
                          std::string::push_back((a1 + 80), (v16 >> 6) & 0x3F | 0x80);
                        }

                        else
                        {
                          std::string::push_back((a1 + 80), (codepoint >> 6) | 0xC0);
                        }

                        LOBYTE(v16) = v16 & 0x3F | 0x80;
                      }
                    }

                    break;
                  default:
                    goto LABEL_150;
                }
              }

LABEL_65:
              std::string::push_back((a1 + 80), v16);
              break;
            case 195:
            case 196:
            case 197:
            case 198:
            case 199:
            case 200:
            case 201:
            case 202:
            case 203:
            case 204:
            case 205:
            case 206:
            case 207:
            case 208:
            case 209:
            case 210:
            case 211:
            case 212:
            case 213:
            case 214:
            case 215:
            case 216:
            case 217:
            case 218:
            case 219:
            case 220:
            case 221:
            case 222:
            case 223:
            case 224:
              v35 = xmmword_23726C460;
              byte_in_range = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::next_byte_in_range(a1, &v35, 2uLL);
              goto LABEL_68;
            case 225:
              v35 = xmmword_23726C6E8;
              v36 = unk_23726C6F8;
              byte_in_range = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::next_byte_in_range(a1, &v35, 4uLL);
              goto LABEL_68;
            case 226:
            case 227:
            case 228:
            case 229:
            case 230:
            case 231:
            case 232:
            case 233:
            case 234:
            case 235:
            case 236:
            case 237:
            case 239:
            case 240:
              v35 = xmmword_23726C708;
              v36 = unk_23726C718;
              byte_in_range = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::next_byte_in_range(a1, &v35, 4uLL);
              goto LABEL_68;
            case 238:
              v35 = xmmword_23726C728;
              v36 = unk_23726C738;
              byte_in_range = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::next_byte_in_range(a1, &v35, 4uLL);
              goto LABEL_68;
            case 241:
              v35 = xmmword_23726C748;
              v36 = unk_23726C758;
              v37 = xmmword_23726C768;
              byte_in_range = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::next_byte_in_range(a1, &v35, 6uLL);
              goto LABEL_68;
            case 242:
            case 243:
            case 244:
              v35 = xmmword_23726C778;
              v36 = unk_23726C788;
              v37 = xmmword_23726C798;
              byte_in_range = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::next_byte_in_range(a1, &v35, 6uLL);
              goto LABEL_68;
            case 245:
              v35 = xmmword_23726C7A8;
              v36 = unk_23726C7B8;
              v37 = xmmword_23726C7C8;
              byte_in_range = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::next_byte_in_range(a1, &v35, 6uLL);
LABEL_68:
              if ((byte_in_range & 1) == 0)
              {
                return 14;
              }

              continue;
            default:
              v2 = "invalid string: ill-formed UTF-8 byte";
              goto LABEL_150;
          }
        }
      }

      goto LABEL_147;
    }
  }

  if (v3 <= 57)
  {
    if ((v3 - 48) >= 0xA)
    {
      if (v3 == 44)
      {
        return 13;
      }

      if (v3 != 45)
      {
LABEL_147:
        v2 = "invalid literal";
        goto LABEL_150;
      }
    }

    nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::reset(a1);
    v4 = *(a1 + 16);
    if ((v4 - 49) < 9)
    {
      v5 = (a1 + 80);
      v6 = 5;
LABEL_20:
      std::string::push_back(v5, v4);
      v7 = (a1 + 80);
      while (1)
      {
        v8 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::get(a1);
        if ((v8 - 48) >= 0xA)
        {
          break;
        }

        std::string::push_back((a1 + 80), *(a1 + 16));
      }

      if (v8 != 46)
      {
        if (v8 == 69 || v8 == 101)
        {
          goto LABEL_26;
        }

        goto LABEL_130;
      }

      goto LABEL_118;
    }

    if (v4 == 48)
    {
      std::string::push_back((a1 + 80), 48);
      v6 = 5;
    }

    else
    {
      if (v4 != 45)
      {
        __assert_rtn("scan_number", "lexer.hpp", 928, "false");
      }

      v5 = (a1 + 80);
      std::string::push_back((a1 + 80), 45);
      v14 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::get(a1);
      if ((v14 - 49) < 9)
      {
        v4 = *(a1 + 16);
        v6 = 6;
        goto LABEL_20;
      }

      if (v14 != 48)
      {
        v2 = "invalid number; expected digit after '-'";
        goto LABEL_150;
      }

      std::string::push_back((a1 + 80), *(a1 + 16));
      v6 = 6;
    }

    v23 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::get(a1);
    if (v23 == 101 || v23 == 69)
    {
      v7 = (a1 + 80);
LABEL_26:
      std::string::push_back(v7, *(a1 + 16));
      v9 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::get(a1);
      if ((v9 - 48) < 0xA)
      {
        v10 = (a1 + 80);
LABEL_28:
        v11 = *(a1 + 16);
        for (i = v10; ; i = (a1 + 80))
        {
          std::string::push_back(i, v11);
          if ((nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::get(a1) - 48) > 9)
          {
            break;
          }

          v11 = *(a1 + 16);
        }

LABEL_123:
        nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::unget(a1);
        *&v35 = 0;
        *__error() = 0;
LABEL_124:
        v25 = (a1 + 80);
        v26 = (a1 + 80);
        if (*(a1 + 103) < 0)
        {
          v26 = *v25;
        }

        *(a1 + 128) = strtod(v26, &v35);
        v27 = *(a1 + 103);
        if (v27 < 0)
        {
          v25 = *(a1 + 80);
          v27 = *(a1 + 88);
        }

        if (v35 != (v25 + v27))
        {
          __assert_rtn("scan_number", "lexer.hpp", 1208, "endptr == token_buffer.data() + token_buffer.size()");
        }

        return 7;
      }

      if (v9 == 45 || v9 == 43)
      {
        v10 = (a1 + 80);
        std::string::push_back((a1 + 80), *(a1 + 16));
        if ((nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::get(a1) - 48) >= 0xA)
        {
          v2 = "invalid number; expected digit after exponent sign";
          goto LABEL_150;
        }

        goto LABEL_28;
      }

      v2 = "invalid number; expected '+', '-', or digit after exponent";
LABEL_150:
      *(a1 + 104) = v2;
      return 14;
    }

    if (v23 != 46)
    {
LABEL_130:
      nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::unget(a1);
      *&v35 = 0;
      *__error() = 0;
      v28 = (a1 + 80);
      v29 = *(a1 + 103);
      v30 = (a1 + 80);
      if (v6 == 5)
      {
        if (v29 < 0)
        {
          v30 = *v28;
        }

        v31 = strtoull(v30, &v35, 10);
        v32 = *(a1 + 103);
        if (v32 < 0)
        {
          v28 = *(a1 + 80);
          v32 = *(a1 + 88);
        }

        if (v35 != (v28 + v32))
        {
          __assert_rtn("scan_number", "lexer.hpp", 1175, "endptr == token_buffer.data() + token_buffer.size()");
        }

        if (*__error())
        {
          goto LABEL_124;
        }

        result = 5;
        v33 = 120;
      }

      else
      {
        if (v29 < 0)
        {
          v30 = *v28;
        }

        v31 = strtoll(v30, &v35, 10);
        v34 = *(a1 + 103);
        if (v34 < 0)
        {
          v28 = *(a1 + 80);
          v34 = *(a1 + 88);
        }

        if (v35 != (v28 + v34))
        {
          __assert_rtn("scan_number", "lexer.hpp", 1191, "endptr == token_buffer.data() + token_buffer.size()");
        }

        if (*__error())
        {
          goto LABEL_124;
        }

        result = 6;
        v33 = 112;
      }

      *(a1 + v33) = v31;
      return result;
    }

    v7 = (a1 + 80);
LABEL_118:
    std::string::push_back(v7, *(a1 + 136));
    if ((nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::get(a1) - 48) > 9)
    {
      v2 = "invalid number; expected digit after '.'";
      goto LABEL_150;
    }

    v7 = (a1 + 80);
    do
    {
      std::string::push_back((a1 + 80), *(a1 + 16));
      v24 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::get(a1);
    }

    while ((v24 - 48) < 0xA);
    if (v24 != 101 && v24 != 69)
    {
      goto LABEL_123;
    }

    goto LABEL_26;
  }

  if (v3 > 109)
  {
    if (v3 > 122)
    {
      if (v3 == 123)
      {
        return 9;
      }

      if (v3 == 125)
      {
        return 11;
      }
    }

    else
    {
      if (v3 == 110)
      {
        LODWORD(v35) = 1819047278;
        return nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::scan_literal(a1, &v35, 4, 3);
      }

      if (v3 == 116)
      {
        LODWORD(v35) = 1702195828;
        return nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::scan_literal(a1, &v35, 4, 1);
      }
    }

    goto LABEL_147;
  }

  if (v3 <= 92)
  {
    if (v3 == 58)
    {
      return 12;
    }

    if (v3 == 91)
    {
      return 8;
    }

    goto LABEL_147;
  }

  if (v3 == 93)
  {
    return 10;
  }

  if (v3 != 102)
  {
    goto LABEL_147;
  }

  return nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::scan_literal(a1, "false", 5, 2);
}

void sub_23723A960(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::get_token_string(std::string *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      v6 = *v4;
      if (v6 > 0x1F)
      {
        std::string::push_back(this, v6);
      }

      else
      {
        v9 = 0;
        *__str = 0;
        snprintf(__str, 9uLL, "<U+%.4X>", v6);
        v7 = strlen(__str);
        std::string::append(this, __str, v7);
      }

      ++v4;
    }

    while (v4 != a3);
  }
}

void sub_23723AA40(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::exception_message(std::string *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  std::string::basic_string[abi:ne200100]<0>(a1, "syntax error ");
  v8 = *(a4 + 23);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a4 + 8);
  }

  if (v8)
  {
    std::operator+<char>();
    v9 = std::string::append(&v38, " ", 1uLL);
    v10 = *&v9->__r_.__value_.__l.__data_;
    v40 = v9->__r_.__value_.__r.__words[2];
    v39 = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    if (v40 >= 0)
    {
      v11 = &v39;
    }

    else
    {
      v11 = v39;
    }

    if (v40 >= 0)
    {
      v12 = HIBYTE(v40);
    }

    else
    {
      v12 = *(&v39 + 1);
    }

    std::string::append(a1, v11, v12);
    if (SHIBYTE(v40) < 0)
    {
      operator delete(v39);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }
  }

  std::string::append(a1, "- ", 2uLL);
  v13 = *(a2 + 32);
  if (v13 == 14)
  {
    std::string::basic_string[abi:ne200100]<0>(&v36, *(a2 + 144));
    v14 = std::string::append(&v36, "; last read: '", 0xEuLL);
    v15 = *&v14->__r_.__value_.__l.__data_;
    v37.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v37.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::get_token_string(&__p, *(a2 + 96), *(a2 + 104));
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

    v18 = std::string::append(&v37, p_p, size);
    v19 = *&v18->__r_.__value_.__l.__data_;
    v38.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
    *&v38.__r_.__value_.__l.__data_ = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    v20 = std::string::append(&v38, "'", 1uLL);
    v21 = *&v20->__r_.__value_.__l.__data_;
    v40 = v20->__r_.__value_.__r.__words[2];
    v39 = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    if (v40 >= 0)
    {
      v22 = &v39;
    }

    else
    {
      v22 = v39;
    }

    if (v40 >= 0)
    {
      v23 = HIBYTE(v40);
    }

    else
    {
      v23 = *(&v39 + 1);
    }

    std::string::append(a1, v22, v23);
    if (SHIBYTE(v40) < 0)
    {
      operator delete(v39);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      v24 = v36.__r_.__value_.__r.__words[0];
      goto LABEL_52;
    }

LABEL_49:
    if (!a3)
    {
      return;
    }

    goto LABEL_53;
  }

  if (v13 > 0x10)
  {
    v25 = "unknown token";
  }

  else
  {
    v25 = off_278A28A48[v13];
  }

  std::string::basic_string[abi:ne200100]<0>(&v38, v25);
  v26 = std::string::insert(&v38, 0, "unexpected ", 0xBuLL);
  v27 = *&v26->__r_.__value_.__l.__data_;
  v40 = v26->__r_.__value_.__r.__words[2];
  v39 = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  if (v40 >= 0)
  {
    v28 = &v39;
  }

  else
  {
    v28 = v39;
  }

  if (v40 >= 0)
  {
    v29 = HIBYTE(v40);
  }

  else
  {
    v29 = *(&v39 + 1);
  }

  std::string::append(a1, v28, v29);
  if (SHIBYTE(v40) < 0)
  {
    operator delete(v39);
  }

  if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_49;
  }

  v24 = v38.__r_.__value_.__r.__words[0];
LABEL_52:
  operator delete(v24);
  if (!a3)
  {
    return;
  }

LABEL_53:
  if (a3 > 0x10)
  {
    v30 = "unknown token";
  }

  else
  {
    v30 = off_278A28A48[a3];
  }

  std::string::basic_string[abi:ne200100]<0>(&v38, v30);
  v31 = std::string::insert(&v38, 0, "; expected ", 0xBuLL);
  v32 = *&v31->__r_.__value_.__l.__data_;
  v40 = v31->__r_.__value_.__r.__words[2];
  v39 = v32;
  v31->__r_.__value_.__l.__size_ = 0;
  v31->__r_.__value_.__r.__words[2] = 0;
  v31->__r_.__value_.__r.__words[0] = 0;
  if (v40 >= 0)
  {
    v33 = &v39;
  }

  else
  {
    v33 = v39;
  }

  if (v40 >= 0)
  {
    v34 = HIBYTE(v40);
  }

  else
  {
    v34 = *(&v39 + 1);
  }

  std::string::append(a1, v33, v34);
  if (SHIBYTE(v40) < 0)
  {
    operator delete(v39);
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }
}

void sub_23723ADC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v34 - 41) < 0)
  {
    operator delete(*(v34 - 64));
  }

  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (*(v33 + 23) < 0)
  {
    operator delete(*v33);
  }

  _Unwind_Resume(exception_object);
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::get(int64x2_t *a1)
{
  a1[2] = vaddq_s64(a1[2], vdupq_n_s64(1uLL));
  if (a1[1].i8[8] == 1)
  {
    a1[1].i8[8] = 0;
    v2 = a1[1].i64[0];
  }

  else
  {
    v3 = a1->i64[0];
    if (a1->i64[0] == a1->i64[1])
    {
      v2 = -1;
    }

    else
    {
      v2 = *v3;
      a1->i64[0] = (v3 + 1);
    }

    a1[1].i64[0] = v2;
  }

  if (v2 == -1)
  {
    return -1;
  }

  v6 = v2;
  std::vector<unsigned char>::push_back[abi:ne200100](&a1[3].i64[1], &v6);
  result = a1[1].i64[0];
  if (result == 10)
  {
    v5 = a1[3].i64[0] + 1;
    a1[2].i64[1] = 0;
    a1[3].i64[0] = v5;
  }

  return result;
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::scan_literal(int64x2_t *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  if (*a2 != a1[1].u8[0])
  {
    __assert_rtn("scan_literal", "lexer.hpp", 1222, "char_traits<char_type>::to_char_type(current) == literal_text[0]");
  }

  v6 = a2 + 1;
  v7 = a3 - 1;
  while (1)
  {
    v8 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::get(a1);
    v9 = *v6++;
    if (v9 != v8)
    {
      break;
    }

    if (!--v7)
    {
      return a4;
    }
  }

  a1[6].i64[1] = "invalid literal";
  return 14;
}

void nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::reset(uint64_t a1)
{
  if (*(a1 + 103) < 0)
  {
    **(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  else
  {
    *(a1 + 80) = 0;
    *(a1 + 103) = 0;
  }

  v2 = *(a1 + 56);
  v1 = a1 + 56;
  *(v1 + 8) = v2;
  v3 = *(v1 - 40);
  std::vector<unsigned char>::push_back[abi:ne200100](v1, &v3);
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::unget(uint64_t result)
{
  v1 = (result + 40);
  v2 = *(result + 40);
  *(result + 24) = 1;
  --*(result + 32);
  if (v2 || (v1 = (result + 48), (v2 = *(result + 48)) != 0))
  {
    *v1 = v2 - 1;
  }

  if (*(result + 16) != -1)
  {
    v3 = *(result + 64);
    if (*(result + 56) == v3)
    {
      __assert_rtn("unget", "lexer.hpp", 1314, "not token_string.empty()");
    }

    *(result + 64) = v3 - 1;
  }

  return result;
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::get_codepoint(int64x2_t *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (a1[1].i64[0] != 117)
  {
    __assert_rtn("get_codepoint", "lexer.hpp", 162, "current == 'u'");
  }

  LODWORD(v2) = 0;
  v3 = 0;
  v8 = xmmword_23726C440;
  do
  {
    v4 = *(&v8 + v3);
    nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::get(a1);
    v5 = a1[1].i64[0];
    if ((v5 - 48) >= 0xA)
    {
      if ((v5 - 65) >= 6)
      {
        if ((v5 - 97) > 5)
        {
          return 0xFFFFFFFFLL;
        }

        v6 = -87;
      }

      else
      {
        v6 = -55;
      }
    }

    else
    {
      v6 = -48;
    }

    v2 = (((v6 + v5) << v4) + v2);
    v3 += 4;
  }

  while (v3 != 16);
  if (v2 >= 0x10000)
  {
    __assert_rtn("get_codepoint", "lexer.hpp", 188, "0x0000 <= codepoint and codepoint <= 0xFFFF");
  }

  return v2;
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::next_byte_in_range(uint64_t a1, unint64_t *a2, unint64_t a3)
{
  if (a3 > 6 || ((1 << a3) & 0x54) == 0)
  {
    __assert_rtn("next_byte_in_range", "lexer.hpp", 209, "ranges.size() == 2 or ranges.size() == 4 or ranges.size() == 6");
  }

  std::string::push_back((a1 + 80), *(a1 + 16));
  v6 = &a2[a3];
  while (1)
  {
    nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::get(a1);
    v7 = *(a1 + 16);
    if (*a2 > v7 || v7 > a2[1])
    {
      break;
    }

    std::string::push_back((a1 + 80), v7);
    a2 += 2;
    if (a2 == v6)
    {
      return 1;
    }
  }

  result = 0;
  *(a1 + 104) = "invalid string: ill-formed UTF-8 byte";
  return result;
}

uint64_t std::__function::__func<MIDICI::Device::makeGetResourceListInquiryMessage(int)::$_0,std::allocator<MIDICI::Device::makeGetResourceListInquiryMessage(int)::$_0>,void ()(caulk::expected<std::span<unsigned char const,18446744073709551615ul>,PropertyExchange::RequestError>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284A48BA8;
  a2[1] = v2;
  return result;
}

void MIDICI::Device::handleGetProperty(MIDICI::Device *this, const get_property_data_view *a2)
{
  v53 = *MEMORY[0x277D85DE8];
  if (this)
  {
    v3 = *(a2->var0 + 1);
    v4 = *(a2->var0 + 2) - v3;
    if (v4 <= 0xB)
    {
      __assert_rtn("make_uint28", "sysex.h", 249, "data_pos + 3 < data.size()");
    }

    v6 = v3[12];
    v7 = v3[8] | (v3[9] << 7) | (v3[10] << 14) | (v3[11] << 21);
    v8 = std::__tree<std::__value_type<std::pair<unsigned int,unsigned char>,PropertyExchange::Request>,std::__map_value_compare<std::pair<unsigned int,unsigned char>,std::__value_type<std::pair<unsigned int,unsigned char>,PropertyExchange::Request>,std::less<std::pair<unsigned int,unsigned char>>,true>,std::allocator<std::__value_type<std::pair<unsigned int,unsigned char>,PropertyExchange::Request>>>::find<std::pair<unsigned int,unsigned char>>(this, v7, v6);
    if ((this + 8) != v8)
    {
      if (v4 <= 0xE)
      {
        __assert_rtn("make_uint14", "sysex.h", 232, "data_pos + 1 < data.size()");
      }

      v9 = v8;
      v10 = v3[13] | (v3[14] << 7);
      v52 = 0;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::parse<char const*>(v46, (v3 + 15), &v3[v10 + 15], v51);
      std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](v51);
      if (v46[0] != 1)
      {
        goto LABEL_13;
      }

      v11 = v47;
      v12 = v47 + 1;
      v13 = v47[1];
      if (!v13)
      {
        goto LABEL_13;
      }

      v14 = v47 + 1;
      do
      {
        v15 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((v13 + 32), "status");
        if ((v15 & 0x80u) == 0)
        {
          v14 = v13;
        }

        v13 = *(v13 + ((v15 >> 4) & 8));
      }

      while (v13);
      if (v14 == v12 || std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v14 + 4, "status") >= 1)
      {
LABEL_13:
        LODWORD(v49.__r_.__value_.__l.__data_) = 2;
        v49.__r_.__value_.__s.__data_[16] = 0;
        v16 = *(v9 + 12);
        if (!v16)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

LABEL_14:
        (*(*v16 + 48))(v16, &v49);
        std::__tree<std::__value_type<std::pair<unsigned int,unsigned char>,PropertyExchange::Request>,std::__map_value_compare<std::pair<unsigned int,unsigned char>,std::__value_type<std::pair<unsigned int,unsigned char>,PropertyExchange::Request>,std::less<std::pair<unsigned int,unsigned char>>,true>,std::allocator<std::__value_type<std::pair<unsigned int,unsigned char>,PropertyExchange::Request>>>::__erase_unique<std::pair<unsigned int,unsigned char>>(this, v7, v6);
LABEL_15:
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v46);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v47, v46[0]);
        return;
      }

      v17 = std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::find<char const*>(v11, "status");
      if (v12 == v17)
      {
        v41 = "m_value.object->find(key) != m_value.object->end()";
        v42 = 3713;
        v43 = "json.hpp";
        v44 = "operator[]";
        goto LABEL_56;
      }

      v18 = v17;
      v19 = *(v17 + 56);
      if (v19 > 5)
      {
        if (v19 == 7)
        {
          v20 = *(v17 + 64);
LABEL_27:
          if (v20 == 200)
          {
            if ((*(v9 + 42) & 1) == 0)
            {
              v24 = *(a2->var0 + 1);
              v25 = *(a2->var0 + 2) - v24;
              if (v25 < 0xF || (v26 = *(v24 + 13) | (*(v24 + 14) << 7), v26 + 16 >= v25))
              {
                __assert_rtn("make_uint14", "sysex.h", 232, "data_pos + 1 < data.size()");
              }

              *(v9 + 20) = *(v24 + v26 + 15) | (*(v24 + v26 + 16) << 7);
              *(v9 + 42) = 1;
            }

            v27 = *(a2->var0 + 1);
            v28 = *(a2->var0 + 2) - v27;
            if (v28 < 0xF || (v29 = *(v27 + 13) | (*(v27 + 14) << 7), v29 + 20 >= v28))
            {
              __assert_rtn("make_uint14", "sysex.h", 232, "data_pos + 1 < data.size()");
            }

            v30 = *(v27 + v29 + 19) | (*(v27 + v29 + 20) << 7);
            std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(v9 + 48, *(v9 + 6), (v27 + v29 + 21), (v27 + v29 + 21 + v30), v30);
            v31 = *(v9 + 22) + 1;
            *(v9 + 22) = v31;
            var0 = a2->var0;
            if (*(v9 + 42))
            {
              v33 = *(var0 + 1);
              v34 = *(var0 + 2) - v33;
              if (v34 < 0xF || (v35 = v33[13] | (v33[14] << 7), v35 + 16 >= v34))
              {
LABEL_55:
                v41 = "data_pos + 1 < data.size()";
                v42 = 232;
                v43 = "sysex.h";
                v44 = "make_uint14";
LABEL_56:
                __assert_rtn(v44, v43, v42, v41);
              }

              if ((v33[v35 + 15] | (v33[v35 + 16] << 7)) != v31)
              {
                LODWORD(v49.__r_.__value_.__l.__data_) = 3;
                v49.__r_.__value_.__s.__data_[16] = 0;
                v16 = *(v9 + 12);
                if (!v16)
                {
                  std::__throw_bad_function_call[abi:ne200100]();
                }

                goto LABEL_14;
              }
            }

            else
            {
              v33 = *(var0 + 1);
            }

            if (v33[12] != *(v9 + 46))
            {
              goto LABEL_15;
            }

            v36 = *(var0 + 2) - v33;
            if (v36 >= 0xF)
            {
              v37 = v33[13] | (v33[14] << 7);
              if (v37 + 16 < v36)
              {
                if ((v33[v37 + 15] | (v33[v37 + 16] << 7)) == v31)
                {
                  v38 = *(v9 + 6);
                  v39 = *(v9 + 7);
                  v50 = 0;
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::parse<char const*>(v45, v38, v39, &v49);
                  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](&v49);
                  if (v45[0] == 9)
                  {
                    LODWORD(v48.__r_.__value_.__l.__data_) = 3;
                    v48.__r_.__value_.__s.__data_[16] = 0;
                  }

                  else
                  {
                    v40 = *(v9 + 7) - *(v9 + 6);
                    v48.__r_.__value_.__r.__words[0] = *(v9 + 6);
                    v48.__r_.__value_.__l.__size_ = v40;
                    v48.__r_.__value_.__s.__data_[16] = 1;
                  }

                  std::function<void ()(caulk::expected<std::span<unsigned char const,18446744073709551615ul>,PropertyExchange::RequestError>)>::operator()(*(v9 + 12));
                  std::__tree<std::__value_type<std::pair<unsigned int,unsigned char>,PropertyExchange::Request>,std::__map_value_compare<std::pair<unsigned int,unsigned char>,std::__value_type<std::pair<unsigned int,unsigned char>,PropertyExchange::Request>,std::less<std::pair<unsigned int,unsigned char>>,true>,std::allocator<std::__value_type<std::pair<unsigned int,unsigned char>,PropertyExchange::Request>>>::__erase_unique<std::pair<unsigned int,unsigned char>>(this, v7, v6);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v45);
                }

                goto LABEL_15;
              }
            }

            goto LABEL_55;
          }

LABEL_40:
          LODWORD(v49.__r_.__value_.__l.__data_) = 2;
          v49.__r_.__value_.__s.__data_[16] = 0;
          v16 = *(v9 + 12);
          if (!v16)
          {
            std::__throw_bad_function_call[abi:ne200100]();
          }

          goto LABEL_14;
        }

        if (v19 == 6)
        {
LABEL_21:
          v20 = *(v17 + 64);
          goto LABEL_27;
        }
      }

      else
      {
        if (v19 == 4)
        {
          goto LABEL_40;
        }

        if (v19 == 5)
        {
          goto LABEL_21;
        }
      }

      exception = __cxa_allocate_exception(0x20uLL);
      v22 = *(v18 + 56);
      if (v22 > 9)
      {
        v23 = "number";
      }

      else
      {
        v23 = off_278A289F8[v22];
      }

      std::string::basic_string[abi:ne200100]<0>(&v48, v23);
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v49, "type must be number, but is ", &v48);
      nlohmann::detail::type_error::create(exception, 302, &v49);
    }
  }
}

void sub_23723B95C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, char a26)
{
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a9);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a11);
  _Unwind_Resume(a1);
}

void MIDIDevice::FromPList(MIDIDevice *this, __CFDictionary *a2)
{
  if (!a2)
  {
    return;
  }

  v4 = DictGetAndDelete(a2, @"entities");
  MIDIObject::FromDictionary(this, a2);
  v15 = 0;
  if (MIDIObject::GetStringProperty(this, kMIDIPropertyDriverOwner, &v15))
  {
    if (!v4)
    {
      return;
    }

    goto LABEL_17;
  }

  v5 = v15;
  XCFObject<__CFString const*>::Set(this + 48, v15);
  if (!v5 || (v7 = MIDIServer::defaultInstance(v6)[33], v8 = *(v7 + 16), v9 = *(v7 + 24), v8 == v9))
  {
LABEL_14:
    v13 = 0;
  }

  else
  {
    while (1)
    {
      v10 = *v8;
      v16 = 0;
      v11 = MIDIObject::GetStringProperty(v10, kMIDIPropertyName, &v16) ? 0 : v16;
      if (CFEqual(v11, v5))
      {
        break;
      }

      v12 = *(v10 + 6);
      if (v12)
      {
        if (CFEqual(v12, v5))
        {
          break;
        }
      }

      if (++v8 == v9)
      {
        goto LABEL_14;
      }
    }

    v13 = *v8;
  }

  *(this + 8) = v13;
  CFRelease(v5);
  if (v4)
  {
LABEL_17:
    Count = CFArrayGetCount(v4);
    if (Count > ((*(this + 12) - *(this + 10)) >> 3))
    {
      if (!(Count >> 61))
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<ClientProcess *>>(Count);
      }

      std::vector<CADeprecated::XMachServer::Client *>::__throw_length_error[abi:ne200100]();
    }

    if (Count >= 1)
    {
      CFArrayGetValueAtIndex(v4, 0);
      operator new();
    }

    CFRelease(v4);
  }
}

void MIDIEntity::FromPList(MIDIEntity *this, CFDictionaryRef theDict)
{
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, kMIDIPropertyProtocolID);
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberSInt32Type, this + 56);
    }

    v4 = DictGetAndDelete(theDict, @"sources");
    if (v4)
    {
      v5 = v4;
      Count = CFArrayGetCount(v4);
      std::vector<MIDIDevice *>::reserve(this + 9, Count);
      if (Count >= 1)
      {
        CFArrayGetValueAtIndex(v5, 0);
        operator new();
      }

      CFRelease(v5);
    }

    v7 = DictGetAndDelete(theDict, @"destinations");
    v8 = v7;
    if (v7)
    {
      v9 = CFArrayGetCount(v7);
      std::vector<MIDIDevice *>::reserve(this + 13, v9);
      if (v9 >= 1)
      {
        CFArrayGetValueAtIndex(v8, 0);
        operator new();
      }

      CFRelease(v8);
    }

    MIDIObject::FromDictionary(this, theDict);
  }
}

uint64_t OwnedPtrVector<MIDIDestination *>::~OwnedPtrVector(uint64_t a1)
{
  *a1 = &unk_284A46A30;
  OwnedPtrVector<MIDISource *>::erase(a1, *(a1 + 8), *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t OwnedPtrVector<MIDISource *>::~OwnedPtrVector(uint64_t a1)
{
  *a1 = &unk_284A46A90;
  OwnedPtrVector<MIDISource *>::erase(a1, *(a1 + 8), *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  return a1;
}

void *OwnedPtrVector<MIDISource *>::erase(void *result, uint64_t *__dst, uint64_t *__src)
{
  if (__src != __dst)
  {
    v5 = result;
    v6 = __dst;
    do
    {
      result = *v6;
      if (*v6)
      {
        result = (*(*result + 8))(result);
      }

      ++v6;
    }

    while (v6 != __src);
    v7 = v5[2];
    v8 = v7 - __src;
    if (v7 != __src)
    {
      result = memmove(__dst, __src, v7 - __src);
    }

    v5[2] = __dst + v8;
  }

  return result;
}

void MIDIEndpoint::MIDIEndpoint(MIDIEndpoint *this, MIDIDriverPlugin *a2, MIDIEntity *a3, const __CFDictionary *a4)
{
  BaseOpaqueObject::BaseOpaqueObject(this);
  *(v8 + 16) = a3;
  *(v8 + 24) = 0;
  *(v8 + 32) = 1;
  *(v8 + 40) = 0;
  *v8 = &unk_284A46D48;
  *(v8 + 44) = *(a3 + 14);
  *(v8 + 48) = 0;
  *(v8 + 52) = 0;
  *(v8 + 56) = 0;
  *(v8 + 64) = a2;
  *(v8 + 100) = 0;
  *(v8 + 95) = 0;
  *(v8 + 72) = a3;
  *(v8 + 80) = 0;
  *(v8 + 88) = 0;
  MIDIObject::FromDictionary(v8, a4);
  MIDIEndpoint::SetIsVirtual(this);
}

void gMIDIDeviceTableLog(void)
{
  {
    gMIDIDeviceTableLog(void)::dtable = os_log_create("com.apple.coremidi", "dtable");
  }
}

uint64_t MIDIDestination::Init(uint64_t this)
{
  v2[7] = *MEMORY[0x277D85DE8];
  v1 = *(this + 64);
  if (v1)
  {
    if (*(v1 + 64) >= 3)
    {
      MIDI::EventListDeliverer::create(v2, *(this + 44));
    }

    operator new();
  }

  if (*(this + 56))
  {
    if (*(this + 888))
    {
      operator new();
    }

    if (*(this + 896))
    {
      MIDI::EventListDeliverer::create(v2, *(this + 44));
    }
  }

  return this;
}

void sub_23723C7A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t *caulk::inplace_function_detail::rt_vtable<void,MIDI::LegacyPacketList const*>::rt_vtable<MIDIDestination::Init(void)::$_1>(caulk::inplace_function_detail::wrapper<MIDIDestination::Init(void)::$_1>)::{lambda(void *,MIDI::LegacyPacketList const*&&)#1}::__invoke(MIDIServer *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  result = MIDIServer::defaultInstance(a1);
  if (*result[33] == 1)
  {
    return (*(**(v3 + 64) + 104))(*(v3 + 64), v2, *(v3 + 80), *(v3 + 88));
  }

  return result;
}

uint64_t *caulk::inplace_function_detail::rt_vtable<void,MIDI::EventList const*>::rt_vtable<MIDIDestination::Init(void)::$_0>(caulk::inplace_function_detail::wrapper<MIDIDestination::Init(void)::$_0>)::{lambda(void *,MIDI::EventList const*&&)#1}::__invoke(MIDIServer *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  result = MIDIServer::defaultInstance(a1);
  if (*result[33] == 1)
  {
    return (*(**(v3 + 64) + 144))(*(v3 + 64), v2, *(v3 + 80), *(v3 + 88));
  }

  return result;
}

uint64_t MIDIDestination::UpdateProtocol(uint64_t this, MIDIProtocolID a2)
{
  if (*(this + 44) != a2)
  {
    *(this + 44) = a2;
    return MIDIDestination::Init(this);
  }

  return this;
}

uint64_t MIDIDestination::ObjectType(MIDIDestination *this)
{
  v1 = *(this + 9);
  result = 3;
  if (v1)
  {
    if (*(*(v1 + 48) + 48))
    {
      return 3;
    }

    else
    {
      return 19;
    }
  }

  return result;
}

uint64_t MIDIDestination::SetProperty(MIDIDestination *this, const __CFString *a2, const __CFNumber *a3)
{
  v5 = MIDIEndpoint::SetProperty(this, a2, a3);
  if (v5 && CFEqual(a2, kMIDIPropertyAdvanceScheduleTimeMuSec))
  {
    MIDIObject::GetIntegerProperty(this, a2, this + 219);
  }

  return v5;
}

uint64_t MIDIEndpoint::SetProperty(MIDIEndpoint *this, const __CFString *cf1, const __CFNumber *a3)
{
  v6 = CFEqual(cf1, kMIDIPropertyAssociatedEndpoint);
  if (v6)
  {
    valuePtr = 0;
    v7 = *SetupManager::instance(v6);
    if (v7)
    {
      if (CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr))
      {
        ObjectByUniqueID = MIDISetup::FindObjectByUniqueID(v7, valuePtr, 0);
        if (ObjectByUniqueID)
        {
          v9 = *(ObjectByUniqueID + 2);
          if ((*(this + 52) & 1) == 0)
          {
            *(this + 52) = 1;
          }

          *(this + 12) = v9;
        }
      }
    }
  }

  return MIDIObject::SetProperty(this, cf1, a3);
}

uint64_t MIDIEndpoint::GetProperty(MIDIObjectRef *this, const __CFString *cf1, const void **a3, int a4)
{
  if (!CFEqual(cf1, kMIDIPropertyDisplayName))
  {
    if (CFEqual(cf1, kMIDIPropertyProtocolID))
    {
      v21 = CFNumberCreate(0, kCFNumberSInt32Type, this + 11);
      result = 0;
      *a3 = v21;
      return result;
    }

    v20 = this;
    v19 = cf1;
    goto LABEL_24;
  }

  v8 = *(this + 9);
  if (!v8 || (v9 = *(v8 + 48)) == 0)
  {
    v19 = kMIDIPropertyName;
    v20 = this;
LABEL_24:

    return MIDIObject::GetProperty(v20, v19, a3, a4);
  }

  if (!*(v9 + 48))
  {
    v22 = this[2];
    v23 = 1;
    goto LABEL_31;
  }

  Mutable = CFStringCreateMutable(0, 0);
  theData = 0;
  str = 0;
  MIDIObject::GetIntegerOrDataProperty(this, kMIDIPropertyConnectionUniqueID, &theData, 0);
  if (!theData)
  {
    goto LABEL_30;
  }

  v11 = CFDataGetLength(theData) >> 2;
  v12 = theData;
  if (!v11)
  {
LABEL_29:
    CFRelease(v12);
    goto LABEL_30;
  }

  BytePtr = CFDataGetBytePtr(theData);
  if (v11 < 1)
  {
    v12 = theData;
    goto LABEL_29;
  }

  v14 = BytePtr;
  v15 = 0;
  do
  {
    v16 = bswap32(*v14);
    *outObjectType = 0;
    if (MIDIObjectFindByUniqueID(v16, &outObjectType[1], outObjectType))
    {
      goto LABEL_17;
    }

    if ((outObjectType[0] & 0xFFFFFFFE) == 0x12)
    {
      v17 = EndpointName(outObjectType[1], 1);
      str = v17;
      if (!v17)
      {
        goto LABEL_17;
      }
    }

    else
    {
      str = 0;
      MIDIObjectGetStringProperty(outObjectType[1], kMIDIPropertyName, &str);
      v17 = str;
      if (!str)
      {
        goto LABEL_17;
      }
    }

    if (v15)
    {
      CheckLocalizeStrings();
      CFStringAppend(Mutable, sMultipleEndpointSeparator);
      v17 = str;
    }

    CFStringAppend(Mutable, v17);
    CFRelease(str);
    v15 = 1;
LABEL_17:
    ++v14;
    LODWORD(v11) = v11 - 1;
  }

  while (v11);
  CFRelease(theData);
  if (v15)
  {
    result = 0;
    *a3 = Mutable;
    return result;
  }

LABEL_30:
  CFRelease(Mutable);
  v22 = this[2];
  v23 = 0;
LABEL_31:
  v24 = EndpointName(v22, v23);
  *a3 = v24;
  if (v24)
  {
    return 0;
  }

  else
  {
    return 4294956461;
  }
}

CFStringRef EndpointName(MIDIObjectRef a1, int a2)
{
  Mutable = CFStringCreateMutable(0, 0);
  str = 0;
  MIDIObjectGetStringProperty(a1, kMIDIPropertyName, &str);
  if (str)
  {
    CFStringAppend(Mutable, str);
    CFRelease(str);
  }

  outEntity = 0;
  MIDIEndpointGetEntity(a1, &outEntity);
  if (outEntity)
  {
    if (!CFStringGetLength(Mutable))
    {
      str = 0;
      MIDIObjectGetStringProperty(outEntity, kMIDIPropertyName, &str);
      if (str)
      {
        CFStringAppend(Mutable, str);
        CFRelease(str);
      }
    }

    obj = 0;
    MIDIEntityGetDevice(outEntity, &obj);
    if (obj)
    {
      str = 0;
      MIDIObjectGetStringProperty(obj, kMIDIPropertyName, &str);
      v5 = str;
      if (str)
      {
        if (a2)
        {
          if (MIDIDeviceGetNumberOfEntities(obj) < 2)
          {
            CFRelease(Mutable);
            return str;
          }

          v5 = str;
        }

        v10.length = CFStringGetLength(v5);
        v10.location = 0;
        if (CFStringCompareWithOptions(v5, Mutable, v10, 0))
        {
          if (CFStringGetLength(Mutable) >= 1)
          {
            CheckLocalizeStrings();
            CFStringInsert(Mutable, 0, sDeviceEntitySeparator);
          }

          CFStringInsert(Mutable, 0, str);
        }

        CFRelease(str);
      }
    }
  }

  return Mutable;
}

void CheckLocalizeStrings(void)
{
  if ((sLocalized & 1) == 0)
  {
    BundleWithIdentifier = CFBundleGetBundleWithIdentifier(@"com.apple.audio.midi.CoreMIDI");
    sStringsBundle = BundleWithIdentifier;
    if (BundleWithIdentifier)
    {
      CFRetain(BundleWithIdentifier);
      sDeviceEntitySeparator = CFBundleCopyLocalizedString(sStringsBundle, sDeviceEntitySeparator, sDeviceEntitySeparator, @"MIDIServerLocalizable");
      sMultipleEndpointSeparator = CFBundleCopyLocalizedString(sStringsBundle, sMultipleEndpointSeparator, sMultipleEndpointSeparator, @"MIDIServerLocalizable");
      sLocalized = 1;
    }
  }
}

uint64_t MIDIDestination::PrintObject(MIDIDestination *this, __sFILE *a2)
{
  fprintf(a2, "<%s 0x%x [%p]>", "MIDIEndpointRef", *(this + 2), this);
  fprintf(a2, " parent=0x%X", *(this + 2));

  return fputc(10, a2);
}

void MIDIDestination::~MIDIDestination(MIDIDestination *this)
{
  MIDIDestination::~MIDIDestination(this);

  JUMPOUT(0x2383C8250);
}

{
  *this = &unk_284A46958;
  Scheduler::FlushEndpoint(gScheduler, *(this + 2));
  _Block_release(*(this + 111));
  _Block_release(*(this + 112));
  v2 = *(this + 110);
  *(this + 110) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  for (i = 848; i != 464; i -= 24)
  {
    std::__list_imp<MergeQueueElem>::clear((this + i));
  }

  *this = &unk_284A46EC0;
  XCFObject<__CFDictionary const*>::~XCFObject(this + 24);

  BaseOpaqueObject::~BaseOpaqueObject(this);
}

MIDIObject *MIDIEndpoint::SetIsVirtual(MIDIEndpoint *this)
{
  result = *(this + 8);
  if (result)
  {
    v7 = 0;
    if (MIDIObject::GetStringProperty(result, kMIDIPropertyName, &v7))
    {
      v3 = 0;
    }

    else
    {
      v3 = v7;
    }

    *(this + 97) = CFStringCompare(v3, @"com.apple.AppleMIDIIACDriver", 0) == kCFCompareEqualTo;
    v4 = *(this + 8);
    v7 = 0;
    if (MIDIObject::GetStringProperty(v4, kMIDIPropertyName, &v7))
    {
      v5 = 0;
    }

    else
    {
      v5 = v7;
    }

    result = CFStringCompare(v5, @"com.apple.AppleMIDIUSBDriver", 0);
    *(this + 98) = result == 0;
  }

  if (*(this + 7))
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    v6 = *(this + 8);
    if (v6)
    {
      LOBYTE(v6) = *(this + 97);
    }
  }

  *(this + 96) = v6;
  return result;
}

void sub_23723D3A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  std::__function::__value_func<void ()(unsigned char,BOOL)>::~__value_func[abi:ne200100](v5);
  std::__function::__value_func<void ()(MIDI::UniversalPacket const&,unsigned long long)>::~__value_func[abi:ne200100](v4);
  v7 = *v2;
  *v2 = 0;
  if (v7)
  {
    MEMORY[0x2383C8250](v7, 0x1000C408516A477);
  }

  std::__function::__value_func<void ()(unsigned char,BOOL)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<void ()(MIDI::UniversalPacket const&,unsigned long long)>::~__value_func[abi:ne200100](va1);
  MEMORY[0x2383C8250](v2, v3);
  _Unwind_Resume(a1);
}

uint64_t **std::unique_ptr<MIDICISniffer>::reset[abi:ne200100](uint64_t **result, uint64_t *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::__function::__value_func<void ()(unsigned char,BOOL)>::~__value_func[abi:ne200100]((v2 + 5));
    std::__function::__value_func<void ()(MIDI::UniversalPacket const&,unsigned long long)>::~__value_func[abi:ne200100]((v2 + 1));
    v3 = *v2;
    *v2 = 0;
    if (v3)
    {
      MEMORY[0x2383C8250](v3, 0x1000C408516A477);
    }

    JUMPOUT(0x2383C8250);
  }

  return result;
}

uint64_t std::__function::__func<MIDISource::CreateCISniffer(void)::$_0,std::allocator<MIDISource::CreateCISniffer(void)::$_0>,void ()(MIDI::UniversalPacket const&,unsigned long long)>::operator()(MIDIServer *a1, unsigned int *a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = *(a1 + 1);
  v6 = MIDIServer::defaultInstance(a1);
  v7 = *(v5 + 8);
  v8 = v6[86] + 96;

  return AsyncMessenger::push(v8, 1, v7, v4, a2);
}

uint64_t std::__function::__func<MIDISource::CreateCISniffer(void)::$_0,std::allocator<MIDISource::CreateCISniffer(void)::$_0>,void ()(MIDI::UniversalPacket const&,unsigned long long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284A48DE8;
  a2[1] = v2;
  return result;
}

uint64_t MIDISource::UpdateProtocol(uint64_t this, MIDIProtocolID a2)
{
  if (*(this + 44) != a2)
  {
    *(this + 44) = a2;
  }

  return this;
}

uint64_t MIDISource::ObjectType(MIDISource *this)
{
  v1 = *(this + 9);
  result = 2;
  if (v1)
  {
    if (*(*(v1 + 48) + 48))
    {
      return 2;
    }

    else
    {
      return 18;
    }
  }

  return result;
}

uint64_t MIDISource::PrintObject(MIDISource *this, __sFILE *a2)
{
  fprintf(a2, "<%s 0x%x [%p]>", "MIDIEndpointRef", *(this + 2), this);
  fprintf(a2, " parent=0x%X", *(this + 2));

  return fputc(10, a2);
}

void MIDISource::~MIDISource(uint64_t **this)
{
  MIDISource::~MIDISource(this);

  JUMPOUT(0x2383C8250);
}

{
  *this = &unk_284A46E48;
  MIDISource::CloseInputConnections(this);
  v2 = this[20];
  if (v2)
  {
    MEMORY[0x2383C8250](v2, 0x1000C40A4C6D0EALL);
  }

  std::unique_ptr<MIDICISniffer>::reset[abi:ne200100](this + 22, 0);
  v3 = this[19];
  this[19] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = this[16];
  if (v4)
  {
    this[17] = v4;
    operator delete(v4);
  }

  v5 = this[13];
  if (v5)
  {
    this[14] = v5;
    operator delete(v5);
  }

  *this = &unk_284A46EC0;
  XCFObject<__CFDictionary const*>::~XCFObject((this + 3));

  BaseOpaqueObject::~BaseOpaqueObject(this);
}

uint64_t MIDISource::CloseInputConnections(MIDISource *this)
{
  v2 = MIDIServer::defaultInstance(this) + 13;
  result = (*(*v2 + 16))(v2);
  v4 = result;
  v5 = *(this + 14);
  v6 = *(this + 13);
  if (v6 != v5)
  {
    do
    {
      MIDIInputPort::RemoveConnectedSource(*v6++, this);
    }

    while (v6 != v5);
    *(this + 14) = *(this + 13);
    result = *(this + 8);
    if (result)
    {
      result = (*(*result + 112))(result, *(this + 2), 0);
    }
  }

  if (v4)
  {
    return (*(*v2 + 24))(v2);
  }

  return result;
}

void OwnedPtrVector<MIDIDestination *>::~OwnedPtrVector(uint64_t a1)
{
  OwnedPtrVector<MIDIDestination *>::~OwnedPtrVector(a1);

  JUMPOUT(0x2383C8250);
}

void OwnedPtrVector<MIDISource *>::~OwnedPtrVector(uint64_t a1)
{
  OwnedPtrVector<MIDISource *>::~OwnedPtrVector(a1);

  JUMPOUT(0x2383C8250);
}

uint64_t MIDIEntity::ObjectType(MIDIEntity *this)
{
  if (*(*(this + 6) + 48))
  {
    return 1;
  }

  else
  {
    return 17;
  }
}

__CFDictionary *MIDIEntity::ToPList(CFDictionaryRef *this)
{
  v2 = MIDIObject::ToDictionary(this[3]);
  Mutable = CFArrayCreateMutable(0, (this[10] - this[9]) >> 3, MEMORY[0x277CBF128]);
  v4 = this[9];
  while (v4 != this[10])
  {
    v5 = *v4++;
    v6 = MIDIObject::ToDictionary(*(v5 + 24));
    CFArrayAppendValue(Mutable, v6);
    CFRelease(v6);
  }

  CFDictionarySetValue(v2, @"sources", Mutable);
  CFRelease(Mutable);
  v7 = CFArrayCreateMutable(0, (this[14] - this[13]) >> 3, MEMORY[0x277CBF128]);
  v8 = this[13];
  while (v8 != this[14])
  {
    v9 = *v8++;
    v10 = MIDIObject::ToDictionary(*(v9 + 24));
    CFArrayAppendValue(v7, v10);
    CFRelease(v10);
  }

  CFDictionarySetValue(v2, @"destinations", v7);
  CFRelease(v7);
  v11 = CFNumberCreate(0, kCFNumberSInt32Type, this + 7);
  CFDictionarySetValue(v2, kMIDIPropertyProtocolID, v11);
  CFRelease(v11);
  return v2;
}

uint64_t MIDIEntity::PrintObject(MIDIEntity *this, __sFILE *a2)
{
  fprintf(a2, "<%s 0x%x [%p]>", "MIDIEntityRef", *(this + 2), this);
  fprintf(a2, " parent=0x%X", *(this + 2));

  return fputc(10, a2);
}

void MIDIEntity::~MIDIEntity(uint64_t **this)
{
  MIDIEntity::~MIDIEntity(this);

  JUMPOUT(0x2383C8250);
}

{
  *this = &unk_284A46F20;
  v2 = MIDIServer::defaultInstance(this) + 13;
  v3 = (*(*v2 + 16))(v2);
  OwnedPtrVector<MIDISource *>::erase(this + 8, this[9], this[10]);
  OwnedPtrVector<MIDISource *>::erase(this + 12, this[13], this[14]);
  if (v3)
  {
    (*(*v2 + 24))(v2);
  }

  OwnedPtrVector<MIDIDestination *>::~OwnedPtrVector((this + 12));
  OwnedPtrVector<MIDISource *>::~OwnedPtrVector((this + 8));
  *this = &unk_284A46EC0;
  XCFObject<__CFDictionary const*>::~XCFObject((this + 3));

  BaseOpaqueObject::~BaseOpaqueObject(this);
}

__CFDictionary *MIDIDevice::ToPList(CFDictionaryRef *this)
{
  v2 = MIDIObject::ToDictionary(this[3]);
  Mutable = CFArrayCreateMutable(0, (this[11] - this[10]) >> 3, MEMORY[0x277CBF128]);
  v4 = this[10];
  while (v4 != this[11])
  {
    v5 = *v4++;
    v6 = (*(*v5 + 56))(v5);
    CFArrayAppendValue(Mutable, v6);
    CFRelease(v6);
  }

  CFDictionarySetValue(v2, @"entities", Mutable);
  CFRelease(Mutable);
  return v2;
}

uint64_t MIDIDevice::PrintObject(MIDIDevice *this, __sFILE *a2)
{
  fprintf(a2, "<%s 0x%x [%p]>", "MIDIDeviceRef", *(this + 2), this);
  fprintf(a2, " parent=0x%X", *(this + 2));

  return fputc(10, a2);
}

void MIDIDevice::~MIDIDevice(MIDIDevice *this)
{
  MIDIDevice::~MIDIDevice(this);

  JUMPOUT(0x2383C8250);
}

{
  *this = &unk_284A46F80;
  v2 = this + 48;
  OwnedPtrVector<MIDIEntity *>::~OwnedPtrVector(this + 9);
  XCFObject<__CFString const*>::~XCFObject(v2);
  *this = &unk_284A46EC0;
  XCFObject<__CFDictionary const*>::~XCFObject(this + 24);

  BaseOpaqueObject::~BaseOpaqueObject(this);
}

void *OwnedPtrVector<MIDIEntity *>::~OwnedPtrVector(void *a1)
{
  *a1 = &unk_284A46AB0;
  v2 = a1[1];
  v3 = a1[2];
  if (v2 != v3)
  {
    v4 = a1[1];
    do
    {
      if (*v4)
      {
        (*(**v4 + 8))(*v4);
      }

      v4 += 8;
    }

    while (v4 != v3);
    v5 = a1[2];
    v6 = v5 - v3;
    if (v5 != v3)
    {
      memmove(v2, v3, v5 - v3);
    }

    v7 = a1[1];
    a1[2] = &v2[v6];
    v2 = v7;
  }

  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void OwnedPtrVector<MIDIEntity *>::~OwnedPtrVector(void *a1)
{
  OwnedPtrVector<MIDIEntity *>::~OwnedPtrVector(a1);

  JUMPOUT(0x2383C8250);
}

uint64_t DeviceList::PrintObject(DeviceList *this, __sFILE *a2)
{
  fprintf(a2, "<%s 0x%x [%p]>", "MIDIDeviceListRef", *(this + 2), this);

  return fputc(10, a2);
}

__CFArray *DeviceList::ToPList(DeviceList *this)
{
  Mutable = CFArrayCreateMutable(0, (*(this + 3) - *(this + 2)) >> 3, MEMORY[0x277CBF128]);
  v3 = *(this + 2);
  while (v3 != *(this + 3))
  {
    v4 = *v3++;
    v5 = (*(*v4 + 56))(v4);
    CFArrayAppendValue(Mutable, v5);
    CFRelease(v5);
  }

  return Mutable;
}

void *DeviceList::FromPList(void *this, CFArrayRef theArray)
{
  v3 = this;
  v6 = this[2];
  v4 = this[3];
  v5 = this + 2;
  if (v6 != v4)
  {
    do
    {
      this = *v6;
      if (*v6)
      {
        this = (*(*this + 8))(this);
        v4 = v3[3];
      }

      ++v6;
    }

    while (v6 != v4);
    v6 = *v5;
  }

  if (v6 != v4)
  {
    v3[3] = v6;
  }

  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    this = std::vector<MIDIDevice *>::reserve(v5, Count);
    if (Count >= 1)
    {
      CFArrayGetValueAtIndex(theArray, 0);
      operator new();
    }
  }

  return this;
}

void MIDIDevice::MIDIDevice(MIDIDevice *this, MIDIDriverPlugin *a2, const __CFString *a3, const __CFString *a4, const __CFString *a5)
{
  MIDIObject::MIDIObject(this, 0, a3);
  v9 = &unk_284A46F80;
  *v10 = &unk_284A46F80;
  *(v10 + 48) = 0;
  v11 = v10 + 48;
  *(v10 + 56) = 1;
  *(v10 + 88) = 0;
  *(v10 + 96) = 0;
  *(v10 + 72) = &unk_284A46AB0;
  *(v10 + 80) = 0;
  *(v10 + 64) = a2;
  if (a2)
  {
    v13 = 0;
    if (MIDIObject::GetStringProperty(a2, kMIDIPropertyName, &v13))
    {
      v12 = 0;
    }

    else
    {
      v12 = v13;
    }

    XCFObject<__CFString const*>::Set(v11, v12);
    v9 = *this;
    if (*(this + 6))
    {
      v9[5](this, kMIDIPropertyDriverOwner);
      v9 = *this;
    }
  }

  else
  {
    *(this + 6) = 0;
    *(this + 57) = 0;
  }

  (v9[5])(this, kMIDIPropertyManufacturer, a4);
  (*(*this + 40))(this, kMIDIPropertyModel, a5);
  *(this + 2) = *(this + 8);
}

void sub_23723E5A8(_Unwind_Exception *a1)
{
  OwnedPtrVector<MIDIEntity *>::~OwnedPtrVector(v3);
  XCFObject<__CFString const*>::~XCFObject(v2);
  MIDIObject::~MIDIObject(v1);
  _Unwind_Resume(a1);
}

void MIDISource::MIDISource(MIDISource *this, MIDIDriverPlugin *a2, MIDIEntity *a3, MIDIProtocolID a4, const __CFString *a5)
{
  v26 = *MEMORY[0x277D85DE8];
  v11 = a3;
  MIDIEndpoint::MIDIEndpoint(this, 0, a2, a3, a4, 0);
  *v8 = &unk_284A46E48;
  *(v8 + 104) = 0u;
  *(v8 + 168) = 0;
  *(v8 + 176) = 0;
  *(v8 + 184) = 0;
  *(v8 + 120) = 0u;
  *(v8 + 136) = 0u;
  *(v8 + 152) = 0;
  gMIDIDeviceTableLog();
  v9 = gMIDIDeviceTableLog(void)::dtable;
  if (os_log_type_enabled(gMIDIDeviceTableLog(void)::dtable, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(this + 2);
    *buf = 136316674;
    v13 = "DeviceTable.cpp";
    v14 = 1024;
    v15 = 759;
    v16 = 2048;
    v17 = v10;
    v18 = 2048;
    v19 = a2;
    v20 = 2048;
    v21 = &v11;
    v22 = 1024;
    v23 = a4;
    v24 = 2112;
    v25 = 0;
    _os_log_impl(&dword_2371C2000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d MIDISource(ref 0x%lx)::MIDISource() - driver:%p entity:%p protocol:%d name:%@", buf, 0x40u);
  }

  MIDISource::CreateCISniffer(this);
}

void sub_23723E78C(_Unwind_Exception *a1)
{
  std::unique_ptr<MIDICISniffer>::reset[abi:ne200100](v2, 0);
  v5 = *(v1 + 19);
  *(v1 + 19) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(v1 + 16);
  if (v6)
  {
    *(v1 + 17) = v6;
    operator delete(v6);
  }

  v7 = *v3;
  if (*v3)
  {
    *(v1 + 14) = v7;
    operator delete(v7);
  }

  MIDIObject::~MIDIObject(v1);
  _Unwind_Resume(a1);
}

void MIDIDestination::MIDIDestination(MIDIDestination *this, MIDIDriverPlugin *a2, MIDIEntity *a3, MIDIProtocolID a4, const __CFString *a5)
{
  v32 = *MEMORY[0x277D85DE8];
  MIDIEndpoint::MIDIEndpoint(this, 0, a2, a3, a4, 0);
  v9 = 0;
  *v10 = &unk_284A46958;
  do
  {
    v11 = this + v9;
    *(v11 + 26) = 0;
    *(v11 + 14) = 0;
    *(v11 + 15) = 0;
    v9 += 24;
  }

  while (v9 != 384);
  v12 = -384;
  v13 = 0uLL;
  do
  {
    *&v14 = this + v12 + 872;
    *(&v14 + 1) = this + v12 + 896;
    v15 = v14;
    vst3q_f64(v14, *(&v13 - 2));
    v12 += 48;
  }

  while (v12);
  *(this + 218) = 3125;
  *(this + 225) = 0;
  *(this + 884) = 0;
  *(this + 892) = 0;
  *(this + 876) = 0;
  gMIDIDeviceTableLog();
  v16 = gMIDIDeviceTableLog(void)::dtable;
  if (os_log_type_enabled(gMIDIDeviceTableLog(void)::dtable, OS_LOG_TYPE_DEBUG))
  {
    v17 = *(this + 2);
    v18 = 136316674;
    v19 = "DeviceTable.cpp";
    v20 = 1024;
    v21 = 1028;
    v22 = 2048;
    v23 = v17;
    v24 = 2048;
    v25 = a2;
    v26 = 2048;
    v27 = a3;
    v28 = 1024;
    v29 = a4;
    v30 = 2112;
    v31 = 0;
    _os_log_impl(&dword_2371C2000, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d [*] MIDIDestination(ref 0x%lx)::MIDIDestination() - driver:%p entity:%p protocol:%d name:%@", &v18, 0x40u);
  }

  MIDIDestination::Init(this);
}

void sub_23723E9A8(_Unwind_Exception *a1)
{
  v3 = v1[110];
  v1[110] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = v1 + 106;
  v5 = -384;
  do
  {
    std::__list_imp<MergeQueueElem>::clear(v4);
    v4 -= 3;
    v5 += 24;
  }

  while (v5);
  MIDIObject::~MIDIObject(v1);
  _Unwind_Resume(a1);
}

void MIDIEndpoint::MIDIEndpoint(MIDIEndpoint *this, MIDIClient *a2, MIDIDriverPlugin *a3, MIDIEntity *a4, MIDIProtocolID a5, const __CFString *a6)
{
  MIDIObject::MIDIObject(this, a4, a6);
  *v10 = &unk_284A46D48;
  *(v10 + 44) = a5;
  *(v10 + 48) = 0;
  *(v10 + 52) = 0;
  *(v10 + 56) = a2;
  *(v10 + 64) = a3;
  *(v10 + 100) = 0;
  *(v10 + 80) = 0;
  *(v10 + 88) = 0;
  *(v10 + 72) = a4;
  *(v10 + 95) = 0;
  MIDIEndpoint::SetIsVirtual(v10);
}

BOOL MIDIEndpoint::IsPartOfLegacyDevice(MIDIEndpoint *this)
{
  if (!*(this + 8))
  {
    return 0;
  }

  v1 = *(this + 9);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 48);
  v5 = 0;
  if (MIDIObject::GetIntegerProperty(v2, @"UMP Enabled", &v5))
  {
    v3 = 0;
  }

  else
  {
    v3 = v5 == 1;
  }

  return !v3;
}

BOOL MIDIEndpoint::IsPartOfUMPDevice(MIDIEndpoint *this)
{
  if (!*(this + 8))
  {
    return 0;
  }

  v1 = *(this + 9);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 48);
  v5 = 0;
  return !MIDIObject::GetIntegerProperty(v2, @"UMP Enabled", &v5) && v5 == 1;
}

MIDIObject *MIDIEndpoint::IsPartOfPhantomEntity(MIDIObject *this)
{
  if (this)
  {
    v2 = 0;
    return (!MIDIObject::GetIntegerProperty(this, kMIDIPropertyUMPCanTransmitGroupless, &v2) && v2 == 1);
  }

  return this;
}

BOOL MIDIEndpoint::GetDeviceTopology(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 72);
  if (v3)
  {
    v4 = *(*(v3 + 48) + 80);
    if (*(*(v3 + 48) + 88) != v4)
    {
      v8 = 0;
      do
      {
        v9 = *(v4 + 8 * v8);
        v10 = v9[9];
        if (v9[10] != v10)
        {
          v11 = 0;
          v12 = 0;
          do
          {
            v18 = *(*(v10 + (v11 >> 29)) + 8);
            std::vector<unsigned int>::push_back[abi:ne200100](a2, &v18);
            ++v12;
            v10 = v9[9];
            v11 += 0x100000000;
          }

          while (v12 < (v9[10] - v10) >> 3);
        }

        v13 = v9[13];
        if (v9[14] != v13)
        {
          v14 = 0;
          v15 = 0;
          do
          {
            v17 = *(*(v13 + (v14 >> 29)) + 8);
            std::vector<unsigned int>::push_back[abi:ne200100](a3, &v17);
            ++v15;
            v13 = v9[13];
            v14 += 0x100000000;
          }

          while (v15 < (v9[14] - v13) >> 3);
        }

        ++v8;
        v4 = *(*(*(a1 + 72) + 48) + 80);
      }

      while (v8 < (*(*(*(a1 + 72) + 48) + 88) - v4) >> 3);
    }
  }

  return v3 != 0;
}

uint64_t MIDIEndpoint::GetPairedEndpoint(MIDIEndpoint *this)
{
  if (*(this + 52) == 1)
  {
    return *(this + 12);
  }

  v2 = *(this + 9);
  if (!v2)
  {
    return 0;
  }

  v3 = v2[9];
  if (v2[10] == v3)
  {
    return 0;
  }

  v5 = v2 + 13;
  v4 = v2[13];
  if (v5[1] == v4)
  {
    return 0;
  }

  v6 = *v3;
  if (v6 == this)
  {
    return *(*v4 + 8);
  }

  else
  {
    return v6[2];
  }
}

uint64_t MIDISource::DisconnectPort(MIDIInputPort ***this, MIDIInputPort *a2)
{
  v4 = MIDIServer::defaultInstance(this) + 13;
  v5 = (*(*v4 + 16))(v4);
  v6 = v5;
  v7 = this[13];
  v8 = this[14];
  if (v7 == v8)
  {
LABEL_5:
    v10 = 4294956463;
    if (!v5)
    {
      return v10;
    }

    goto LABEL_13;
  }

  v9 = this[13];
  while (*v9 != a2)
  {
    if (++v9 == v8)
    {
      goto LABEL_5;
    }
  }

  v11 = v8 - (v9 + 1);
  if (v8 != v9 + 1)
  {
    memmove(v9, v9 + 1, v8 - (v9 + 1));
    v7 = this[13];
  }

  this[14] = (v9 + v11);
  if (v7 == (v9 + v11))
  {
    v12 = this[8];
    if (v12)
    {
      (*(*v12 + 14))(v12, *(this + 2), 0);
    }
  }

  MIDIInputPort::RemoveConnectedSource(a2, this);
  v10 = 0;
  if (v6)
  {
LABEL_13:
    (*(*v4 + 24))(v4);
  }

  return v10;
}

uint64_t caulk::inplace_function_detail::rt_vtable<void,MIDI::EventList const*>::rt_vtable<MIDISource::AddThruConnection(MIDIConnection *)::$_0>(caulk::inplace_function_detail::wrapper<MIDISource::AddThruConnection(MIDIConnection *)::$_0>)::{lambda(void *,MIDI::EventList const*&&)#1}::__invoke(uint64_t result, _DWORD **a2)
{
  v89[128] = *MEMORY[0x277D85DE8];
  v2 = *(*result + 128);
  v3 = *(*result + 136);
  if (v2 == v3)
  {
    return result;
  }

  v4 = *a2;
  v69 = (*a2 + 2);
  v67 = *a2;
  v68 = *(*result + 136);
  do
  {
    if (*v4 != 1)
    {
      goto LABEL_141;
    }

    v5 = *v2;
    if (*(*v2 + 14412))
    {
      goto LABEL_139;
    }

    v6 = *(v5 + 40);
    if (!v6)
    {
      goto LABEL_139;
    }

    *(v5 + 14412) = 1;
    v85 = caulk::inplace_function<void ()(MIDI::EventList const*),48ul,8ul,caulk::inplace_function_detail::rt_vtable>::k_wrapper_vtable<ConnectionEmitter::ConnectionEmitter(MIDIConnection *)::{lambda(MIDI::EventList const*)#1}>;
    v86 = &v85;
    v88 = 1;
    v87 = v89;
    v89[127] = v5;
    if (v4[1] < 1)
    {
      goto LABEL_138;
    }

    v7 = v4[1];
    v70 = v5;
    v71 = v2;
    v80 = v6 + 140;
    v81 = v5 + 72;
    v74 = v5 + 7240;
    v72 = (v6 + 210);
    v8 = v69;
    do
    {
      v9 = *(v8 + 8);
      if (v9)
      {
        v79 = v7;
        v10 = (v8 + 12);
        v11 = v8 + 12 + 4 * v9;
        while (1)
        {
          v12 = *v10;
          v13 = v12 >> 28;
          if (((*v10 >> 28) - 1) >= 2)
          {
            if (v13 == 3 && !*(v6 + 184))
            {
              for (i = 0; i != 2; ++i)
              {
                MIDI::Packetizer::add(&v85, *v8, v10[i]);
              }

              MIDI::StreamState::update_with_v1_packets(v81, v10, 2);
              v10 += 2;
            }

            goto LABEL_131;
          }

          v14 = v6;
          v15 = v12 & 0xFF000000;
          v16 = BYTE2(*v10);
          v17 = BYTE2(v12);
          v18 = BYTE1(v12);
          v19 = *v10;
          v20 = BYTE2(v12) >> 4;
          if (v20 > 0xB)
          {
            if (BYTE2(v12) >> 4 <= 0xDu)
            {
              if (v20 == 12)
              {
                v6 = v14;
                v36 = *(v14 + 176);
                if (v36 == 1)
                {
                  goto LABEL_131;
                }

                v46 = *(v80 + ((v12 >> 16) & 0xF));
                if (v46 > 0xF)
                {
                  goto LABEL_131;
                }

                v17 = BYTE2(v12) & 0xF0 | v46;
                if (v36 < 8)
                {
                  goto LABEL_120;
                }

                v82[1] = BYTE1(v12);
                v38 = v12 & 0xFF000000;
                v39 = v19;
                v40 = v14;
                v41 = *(v14 + 178);
              }

              else
              {
                v6 = v14;
                if (v20 != 13)
                {
                  goto LABEL_131;
                }

                v36 = *(v14 + 172);
                if (v36 == 1)
                {
                  goto LABEL_131;
                }

                v37 = *(v80 + ((v12 >> 16) & 0xF));
                if (v37 > 0xF)
                {
                  goto LABEL_131;
                }

                v17 = BYTE2(v12) & 0xF0 | v37;
                if (v36 < 8)
                {
                  goto LABEL_120;
                }

                v82[1] = BYTE1(v12);
                v38 = v12 & 0xFF000000;
                v39 = v19;
                v40 = v14;
                v41 = *(v14 + 174);
              }

              TransformValue(v40, v36, v41, &v82[1], 0);
              v19 = v39;
              v15 = v38;
              v18 = v82[1];
              goto LABEL_120;
            }

            if (v20 == 14)
            {
              v6 = v14;
              v47 = *(v14 + 180);
              if (v47 == 1)
              {
                goto LABEL_131;
              }

              v48 = *(v80 + ((v12 >> 16) & 0xF));
              if (v48 > 0xF)
              {
                goto LABEL_131;
              }

              v17 = BYTE2(v12) & 0xF0 | v48;
              if (v47 >= 8)
              {
                v82[1] = BYTE1(v12) + (v19 << 7);
                TransformValue(v14, v47, *(v14 + 182), &v82[1], 1);
                v15 = v12 & 0xFF000000;
                v19 = v82[1] >> 7;
                v18 = v82[1] & 0x7F;
              }
            }

            else
            {
              if (v20 != 15)
              {
                goto LABEL_130;
              }

              if (BYTE2(v12) > 0xF5u)
              {
                if (BYTE2(v12) - 250 < 3)
                {
                  goto LABEL_144;
                }

                if (BYTE2(v12) == 246)
                {
                  if (*(v14 + 187))
                  {
                    goto LABEL_130;
                  }

                  v17 = 246;
                  goto LABEL_120;
                }

                if (BYTE2(v12) == 248)
                {
LABEL_144:
                  if (*(v14 + 186))
                  {
                    goto LABEL_130;
                  }
                }
              }

              else
              {
                switch(BYTE2(v12))
                {
                  case 0xF1u:
                    if (*(v14 + 185))
                    {
                      goto LABEL_130;
                    }

                    v17 = 241;
                    break;
                  case 0xF2u:
                    if (*(v14 + 186))
                    {
                      goto LABEL_130;
                    }

                    v17 = 242;
                    break;
                  case 0xF3u:
                    if (*(v14 + 186))
                    {
                      goto LABEL_130;
                    }

                    v17 = 243;
                    break;
                }
              }
            }

LABEL_120:
            LODWORD(v83) = (v17 << 16) | (v18 << 8) | v19 | v15;
            MIDI::Packetizer::add(&v85, *v8, v83);
            MIDI::StreamState::update_with_v1_packets(v81, &v83, 1);
            v6 = v14;
            goto LABEL_131;
          }

          if (v20 - 8 < 2)
          {
            v6 = v14;
            v42 = *(v14 + 160);
            if (v42 == 1)
            {
              goto LABEL_131;
            }

            v43 = *(v14 + 164);
            if (v43 == 1)
            {
              goto LABEL_131;
            }

            v44 = *(v14 + 158);
            v45 = *(v14 + 159);
            if (v44 <= v45)
            {
              if (BYTE1(v12) < v44)
              {
                goto LABEL_131;
              }
            }

            else if (BYTE1(v12) >= v44)
            {
              goto LABEL_92;
            }

            if (BYTE1(v12) > v45)
            {
              goto LABEL_131;
            }

LABEL_92:
            v52 = *(v80 + ((v12 >> 16) & 0xF));
            if (v52 > 0xF)
            {
              goto LABEL_131;
            }

            if (v42 >= 8)
            {
              v82[1] = v18;
              v78 = v15;
              v54 = v19;
              TransformValue(v14, v42, *(v14 + 162), &v82[1], 0);
              v19 = v54;
              v15 = v78;
              v18 = v82[1];
            }

            v55 = v16 & 0xF0;
            v17 = v55 | v52;
            v56 = *(v14 + 156);
            v57 = *(v14 + 157);
            if (!(v57 | v56))
            {
              goto LABEL_115;
            }

            if (v19 && v55 == 144)
            {
              if (v19 < v56 || v19 > v57)
              {
                goto LABEL_130;
              }

              goto LABEL_118;
            }

            if (v18 < 0x80)
            {
              if (!*(v81 + 448 * v52 + v18 + 4))
              {
                goto LABEL_130;
              }

LABEL_115:
              if (!v19 && v55 != 128)
              {
                v19 = 0;
                goto LABEL_120;
              }

LABEL_118:
              if (v43 >= 8)
              {
                v82[1] = v19;
                v58 = v15;
                TransformValue(v14, v43, *(v14 + 166), &v82[1], 0);
                v15 = v58;
                v19 = v82[1];
              }

              goto LABEL_120;
            }

LABEL_141:
            std::terminate();
          }

          v6 = v14;
          if (v20 == 10)
          {
            v49 = *(v14 + 168);
            if (v49 == 1)
            {
              goto LABEL_131;
            }

            v50 = *(v14 + 158);
            v51 = *(v14 + 159);
            if (v50 <= v51)
            {
              if (BYTE1(v12) < v50)
              {
                goto LABEL_131;
              }
            }

            else if (BYTE1(v12) >= v50)
            {
              goto LABEL_96;
            }

            if (BYTE1(v12) > v51)
            {
              goto LABEL_131;
            }

LABEL_96:
            v53 = *(v80 + ((v12 >> 16) & 0xF));
            if (v53 > 0xF)
            {
              goto LABEL_131;
            }

            v17 = BYTE2(v12) & 0xF0 | v53;
            if (v49 >= 8)
            {
              v82[1] = *v10;
              TransformValue(v14, v49, *(v14 + 170), &v82[1], 0);
              v15 = v12 & 0xFF000000;
              v19 = v82[1];
            }

            goto LABEL_120;
          }

          if (v20 != 11)
          {
            goto LABEL_131;
          }

          if (*(v14 + 191))
          {
            goto LABEL_131;
          }

          v21 = *(v80 + ((v12 >> 16) & 0xF));
          if (v21 > 0xF)
          {
            goto LABEL_131;
          }

          v76 = *v10;
          v77 = v12 & 0xFF000000;
          *v82 = 0;
          if (MIDI::ControlState::interpret_control((v74 + 448 * ((v12 >> 16) & 0xF) + 296), BYTE1(v12), v12, &v82[1], v82))
          {
            goto LABEL_130;
          }

          v17 = BYTE2(v12) & 0xF0 | v21;
          v19 = v12;
          v15 = v12 & 0xFF000000;
          if (!*(v14 + 192))
          {
            goto LABEL_120;
          }

          v22 = 0;
          v23 = 0;
          v24 = v82[1];
          v25 = (v12 >> 8) & 0x3F;
          v26 = *(v14 + 192) + 1;
          v27 = v72;
          v73 = v25;
          do
          {
            v28 = *(v27 - 6);
            if (v28 > 3)
            {
              if (v28 - 4 >= 2 || (v24 & 0x8000) == 0)
              {
                goto LABEL_42;
              }

              v29 = v24 & 0x3FFF;
            }

            else
            {
              if (v28 - 2 >= 2)
              {
                if (*(v27 - 6))
                {
                  if (v28 != 1 || v25 != *(v27 - 2))
                  {
                    goto LABEL_42;
                  }
                }

                else if (v18 != *(v27 - 2))
                {
                  goto LABEL_42;
                }

                goto LABEL_34;
              }

              if ((v24 & 0x4000) == 0)
              {
                goto LABEL_42;
              }

              v29 = v24 & 0x3FFF;
            }

            if (v29 != *(v27 - 2))
            {
              goto LABEL_42;
            }

LABEL_34:
            v30 = *(v27 - 1);
            if (*(v27 - 1))
            {
              if (v30 == 2)
              {
                v23 = *(v27 - 5);
                v31 = (v23 & 4) << 13;
                if ((v23 & 2) != 0)
                {
                  v31 = 0x4000;
                }

                v24 = *v27 | v31;
                v22 = 1;
              }

              else
              {
                if (v30 == 1)
                {
                  goto LABEL_130;
                }

                v75 = v24;
                TransformValue(v14, v30, *v27, v82, 1);
                v22 = 1;
                v25 = v73;
                v24 = v75;
                v19 = v76;
                v23 = v28;
                v15 = v77;
              }
            }

            else
            {
              v23 = *(v27 - 6);
            }

LABEL_42:
            --v26;
            v27 += 4;
          }

          while (v26 > 1);
          if ((v22 & 1) == 0)
          {
            goto LABEL_120;
          }

          if ((v23 & 2) != 0)
          {
            v32 = v15 | (v17 << 16);
            v59 = v32 | (v24 >> 7) & 0x7F | 0x6500;
            v60 = v24 & 0x7F;
            v61 = 25600;
          }

          else
          {
            if ((v23 & 4) == 0)
            {
              v32 = v15 | (v17 << 16);
              v33 = v24 << 8;
              v34 = &v83;
              goto LABEL_124;
            }

            v32 = v15 | (v17 << 16);
            v59 = v32 | (v24 >> 7) & 0x7F | 0x6300;
            v60 = v24 & 0x7F;
            v61 = 25088;
          }

          LODWORD(v83) = v59;
          HIDWORD(v83) = v32 | v60 | v61;
          v33 = 1536;
          v34 = &v84;
LABEL_124:
          v62 = v82[0];
          *v34 = v33 | v32 | (v82[0] >> 7) & 0x7F;
          v63 = v34 + 1;
          if (v23)
          {
            v63 = (v34 + 1);
            *(v34 + 1) = (v33 + (v62 & 0x7F) + 0x2000) | v32;
          }

          if (v63 != &v83)
          {
            v64 = &v83;
            do
            {
              MIDI::Packetizer::add(&v85, *v8, *v64++);
            }

            while (v64 != v63);
          }

          MIDI::StreamState::update_with_v1_packets(v81, &v83, (v63 - &v83) >> 2);
LABEL_130:
          v6 = v14;
LABEL_131:
          v10 += MIDI::UniversalPacket::word_sizes[v13];
          if (v10 >= v11)
          {
            v65 = *(v8 + 8);
            v7 = v79;
            goto LABEL_134;
          }
        }
      }

      v65 = 0;
LABEL_134:
      v8 += 4 * v65 + 12;
    }

    while (v7-- > 1);
    v5 = v70;
    v2 = v71;
    v4 = v67;
    v3 = v68;
    if (HIDWORD(v88))
    {
      v83 = &v88;
      (*v85)(&v86, &v83);
    }

LABEL_138:
    HIDWORD(v88) = 0;
    v87 = v89;
    *(v5 + 14412) = 0;
    result = MIDI::PacketizerBase<MIDI::EventList>::~PacketizerBase(&v85);
LABEL_139:
    ++v2;
  }

  while (v2 != v3);
  return result;
}

void sub_23723F784(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  MIDI::PacketizerBase<MIDI::EventList>::~PacketizerBase(&a28);
  __clang_call_terminate(exception_object);
}

uint64_t MIDISource::ReceivedPacketList(MIDISource *this, MIDIEventPacket *a2)
{
  v76 = *MEMORY[0x277D85DE8];
  if (*(this + 169) == 1)
  {
    if (*(this + 168))
    {
      goto LABEL_16;
    }

LABEL_6:
    MIDISource::SchedulePacketList(this, a2);
    return 0;
  }

  if (*(this + 97) == 1)
  {
    *(this + 84) = 256;
    goto LABEL_6;
  }

  if ((!MIDIEndpoint::IsPartOfLegacyDevice(this) || !MIDIEndpoint::GetPairedEndpoint(this)) && (!MIDIEndpoint::IsPartOfUMPDevice(this) || !MIDIEndpoint::IsPartOfPhantomEntity(*(this + 9))))
  {
    v5 = *(this + 7);
    if (v5)
    {
      v6 = 257;
    }

    else
    {
      v6 = 256;
    }

    *(this + 84) = v6;
    if (v5)
    {
      goto LABEL_16;
    }

    goto LABEL_6;
  }

  *(this + 84) = 257;
LABEL_16:
  v7 = atomic_load(this + 92);
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      if ((v7 >> v9))
      {
        v10 = *(this + 22);
        MIDICISniffer::clearStateForGroup(v10, v9, 0, 0);
        *(*v10 + v8) = 0;
      }

      ++v9;
      v8 += 20;
    }

    while (v8 != 320);
    atomic_store(0, this + 92);
  }

  v56 = 0;
  v70[0] = this;
  v70[1] = &v56;
  v73 = v71;
  v74 = 276;
  timeStamp_high = HIDWORD(a2->timeStamp);
  v71[0] = a2->timeStamp;
  v71[1] = 0;
  v75 = v72;
  v72[2] = 0;
  v57 = a2;
  v58 = this;
  v59 = 0u;
  v60 = 0u;
  v61 = 0;
  v68 = 0;
  v69 = &v58;
  v64 = 0;
  v65 = 0;
  v66 = timeStamp_high;
  if (timeStamp_high)
  {
    v64 = *&a2->wordCount;
    v65 = &a2->words[2];
    v68 = &a2->words[a2->words[1] + 2];
  }

  std::ranges::__find_if_impl[abi:ne200100]<MIDI::event_iterator<MIDI::detail::event_accessor>,MIDI::event_iterator<MIDI::detail::event_accessor>::sentinel,std::reference_wrapper<MIDISource::ReceivedPacketList(MIDI::EventList const*)::$_0>,std::identity>(&v62, &v64, &v69);
  v59 = v62;
  v60 = v63;
  LOBYTE(v61) = 1;
  v12 = *(&v63 + 1);
  v14 = v63;
  v13 = DWORD1(v63);
  v15 = *(&v62 + 1);
  v16 = v62;
  while (1)
  {
    if (v15 == v12)
    {
      if (v14 < 2)
      {
        break;
      }

      --v14;
      v16 = *v12;
      v15 = v12 + 3;
      v12 += v12[2] + 3;
    }

    if (v15 == v12)
    {
      break;
    }

    v17 = *v15;
    v18 = MIDI::UniversalPacket::word_sizes[v17 >> 28];
    v19 = v75;
    if (!MIDI::UniversalPacket::word_sizes[v17 >> 28])
    {
      if (v75)
      {
        LODWORD(v18) = 0;
        goto LABEL_119;
      }

      goto LABEL_59;
    }

    v20 = &v73[v74 / 4];
    v21 = v17 & 0xF0000000;
    v22 = v73[1];
    if (v75 && v22)
    {
      v23 = v75[2];
      v24 = v23 >= 2;
      v25 = v23 - 2;
      if (v24 && v75[3] >> 28 == 3)
      {
        v26 = v75[v25 + 3];
        if (v26 >> 28 == 3)
        {
          v27 = (v26 >> 20) & 0xF;
        }

        else
        {
          v27 = 255;
        }

        if (v27)
        {
          v28 = v27 == 3;
        }

        else
        {
          v28 = 1;
        }

        v29 = v28;
        v30 = 1;
      }

      else
      {
LABEL_49:
        v30 = 0;
        v29 = 0;
      }

      if ((v17 & 0xF0E00000) != 0x30000000 && (((v21 == 805306368) ^ v30) & 1) == 0 && *v75 == v16 && (v29 & 1) == 0)
      {
LABEL_54:
        v31 = v75[2];
        if (&v75[v31 + 3 + v18] <= v20)
        {
          goto LABEL_76;
        }

        goto LABEL_59;
      }

      goto LABEL_57;
    }

    if (!v22)
    {
      goto LABEL_58;
    }

    if (v75)
    {
      goto LABEL_49;
    }

    if (v21 != 805306368)
    {
      goto LABEL_54;
    }

LABEL_57:
    v19 = &v75[v75[2] + 3];
LABEL_58:
    if (v19 + 4 * v18 + 12 <= v20)
    {
      v31 = 0;
      v73[1] = v22 + 1;
      *v19 = v16;
      *(v19 + 8) = 0;
LABEL_76:
      v43 = (v19 + 4 * v31 + 12);
      if (v18 > 2)
      {
        if (v18 == 3)
        {
          v46 = v15;
        }

        else
        {
          if (v18 != 4)
          {
            goto LABEL_94;
          }

          v46 = v15 + 1;
          *v43 = *v15;
          v43 = (v19 + 4 * v31 + 16);
        }

        v49 = *v46;
        v44 = v46 + 1;
        *v43++ = v49;
LABEL_98:
        v50 = *v44;
        v48 = v44 + 1;
        *v43++ = v50;
      }

      else
      {
        if (v18 != 1)
        {
          if (v18 != 2)
          {
            goto LABEL_94;
          }

          v44 = v15;
          goto LABEL_98;
        }

        v48 = v15;
      }

      *v43 = *v48;
      goto LABEL_117;
    }

LABEL_59:
    MIDI::ChunkedEventListEmitter<MIDISource::ReceivedPacketList(MIDI::EventList const*)::$_1>::flush(v70);
    v32 = *v15;
    v18 = MIDI::UniversalPacket::word_sizes[v32 >> 28];
    v19 = v75;
    if (!MIDI::UniversalPacket::word_sizes[v32 >> 28])
    {
      v45 = 0;
      if (v75)
      {
        goto LABEL_118;
      }

      goto LABEL_119;
    }

    v33 = &v73[v74 / 4];
    v34 = v32 & 0xF0000000;
    v35 = v73[1];
    if (v75 && v35)
    {
      v36 = v75[2];
      v24 = v36 >= 2;
      v37 = v36 - 2;
      if (v24 && v75[3] >> 28 == 3)
      {
        v38 = v75[v37 + 3];
        if (v38 >> 28 == 3)
        {
          v39 = (v38 >> 20) & 0xF;
        }

        else
        {
          v39 = 255;
        }

        if (v39)
        {
          v40 = v39 == 3;
        }

        else
        {
          v40 = 1;
        }

        v41 = v40;
        v42 = 1;
      }

      else
      {
LABEL_87:
        v42 = 0;
        v41 = 0;
      }

      if (v32 & 0xF0E00000) == 0x30000000 || (((v34 == 805306368) ^ v42) & 1) != 0 || *v75 != v16 || (v41)
      {
LABEL_101:
        v19 = &v75[v75[2] + 3];
LABEL_102:
        if (v19 + 4 * v18 + 12 > v33)
        {
          goto LABEL_119;
        }

        v47 = 0;
        v73[1] = v35 + 1;
        *v19 = v16;
        *(v19 + 8) = 0;
LABEL_104:
        v43 = (v19 + 4 * v47 + 12);
        if (v18 > 2)
        {
          if (v18 == 3)
          {
            v52 = v15;
          }

          else
          {
            if (v18 != 4)
            {
              goto LABEL_94;
            }

            v52 = v15 + 1;
            *v43 = *v15;
            v43 = (v19 + 4 * v47 + 16);
          }

          v54 = *v52;
          v51 = v52 + 1;
          *v43++ = v54;
LABEL_115:
          v55 = *v51;
          v53 = v51 + 1;
          *v43++ = v55;
        }

        else
        {
          if (v18 != 1)
          {
            if (v18 == 2)
            {
              v51 = v15;
              goto LABEL_115;
            }

LABEL_94:
            memmove(v43, v15, 4 * v18);
LABEL_117:
            *(v19 + 8) += v18;
            v45 = MIDI::UniversalPacket::word_sizes[*v15 >> 28];
LABEL_118:
            v75 = v19;
            LODWORD(v18) = v45;
            goto LABEL_119;
          }

          v53 = v15;
        }

        *v43 = *v53;
        goto LABEL_117;
      }

      goto LABEL_92;
    }

    if (!v35)
    {
      goto LABEL_102;
    }

    if (v75)
    {
      goto LABEL_87;
    }

    if (v34 == 805306368)
    {
      goto LABEL_101;
    }

LABEL_92:
    v47 = v75[2];
    if (&v75[v47 + 3 + v18] <= v33)
    {
      goto LABEL_104;
    }

LABEL_119:
    v64 = v16;
    v65 = &v15[v18];
    v66 = v14;
    v67 = v13;
    v68 = v12;
    v69 = &v58;
    std::ranges::__find_if_impl[abi:ne200100]<MIDI::event_iterator<MIDI::detail::event_accessor>,MIDI::event_iterator<MIDI::detail::event_accessor>::sentinel,std::reference_wrapper<MIDISource::ReceivedPacketList(MIDI::EventList const*)::$_0>,std::identity>(&v62, &v64, &v69);
    v15 = *(&v62 + 1);
    v16 = v62;
    v14 = v63;
    v13 = DWORD1(v63);
    v12 = *(&v63 + 1);
  }

  MIDI::ChunkedEventListEmitter<MIDISource::ReceivedPacketList(MIDI::EventList const*)::$_1>::flush(v70);
  return v56;
}

void sub_23723FD94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void MIDISource::SchedulePacketList(MIDISource *this, MIDIEventPacket *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  if (!HIDWORD(a2->timeStamp))
  {
    return;
  }

  v4 = *(this + 20);
  if (!v4)
  {
    goto LABEL_33;
  }

  v28 = mach_absolute_time();
  mach_absolute_time();
  v5 = __udivti3();
  v6 = v5;
  v7 = *(v4 + 64);
  if (v7)
  {
    v8 = (v5 - v7) / 0x3B9ACA00uLL;
    if (v8 < 8)
    {
      v29 = 0;
      goto LABEL_16;
    }

    if (v8 <= 0x10)
    {
      v9 = v8 - 7;
      v10 = *(v4 + 56);
      v11 = v9;
      do
      {
        *(v4 + 16 + 4 * v10) = 0;
        v12 = *(v4 + 56);
        if (v12 == 9)
        {
          v10 = 0;
        }

        else
        {
          v10 = v12 + 1;
        }

        *(v4 + 56) = v10;
        --v11;
      }

      while (v11);
      v7 += 1000000000 * v9;
    }

    else
    {
      *v4 = 0;
      v7 = v5 - 7000000000;
      *(v4 + 16) = 0u;
      *(v4 + 32) = 0u;
      *(v4 + 44) = 0u;
    }
  }

  else
  {
    *(v4 + 56) = 0;
    v7 = v5 - 7000000000;
  }

  *(v4 + 64) = v7;
  v29 = 1;
LABEL_16:
  timeStamp_high = HIDWORD(a2->timeStamp);
  if (timeStamp_high)
  {
    p_wordCount = &a2->wordCount;
    do
    {
      v15 = v6;
      if (*p_wordCount)
      {
        v15 = __udivti3();
      }

      v16 = (v15 - v7) / 0x3B9ACA00uLL;
      if (v16 <= 9)
      {
        *(v4 + 16 + 4 * ((*(v4 + 56) + v16) % 10)) += 4 * p_wordCount[2];
      }

      p_wordCount += p_wordCount[2] + 3;
      --timeStamp_high;
    }

    while (timeStamp_high);
  }

  if (*v4 == 1)
  {
    if (v28 < *(v4 + 8))
    {
      return;
    }

    *v4 = 0;
  }

  if (!v29)
  {
    goto LABEL_33;
  }

  v17 = 0;
  v18 = *(v4 + 56);
  v19 = 6;
  do
  {
    v17 += *(v4 + 16 + 4 * v18);
    if (v18 == 9)
    {
      v18 = 0;
    }

    else
    {
      ++v18;
    }

    --v19;
  }

  while (v19);
  if (v17 < 0x15F96)
  {
LABEL_33:
    v20 = *(this + 19);
    if (v20)
    {
      (*(*v20 + 16))(v20, a2);
    }

    v21 = &a2->wordCount;
    v22 = *(this + 2);
    if (Scheduler::CheckSchedulePacket(gScheduler, this, v22, LODWORD(a2->timeStamp), &a2->wordCount))
    {
      if (HIDWORD(a2->timeStamp) >= 2)
      {
        v23 = 1;
        do
        {
          v21 = (v21 + 4 * v21->wordCount + 12);
          Scheduler::SchedulePacket(gScheduler, this, v22, a2->timeStamp, v21);
          ++v23;
        }

        while (v23 < HIDWORD(a2->timeStamp));
      }
    }

    else
    {
      v24 = *(this + 13);
      v25 = *(this + 14);
      while (v24 != v25)
      {
        v26 = *v24++;
        MIDIInputPort::DeliverPacketsToInputPort(v26, a2, *(this + 2));
      }
    }

    return;
  }

  *v4 = 1;
  *(v4 + 8) = v28 + 288000000;
  gMIDIDeviceTableLog();
  v27 = gMIDIDeviceTableLog(void)::dtable;
  if (os_log_type_enabled(gMIDIDeviceTableLog(void)::dtable, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v31 = "DeviceTable.cpp";
    v32 = 1024;
    v33 = 972;
    v34 = 2048;
    v35 = this;
    _os_log_impl(&dword_2371C2000, v27, OS_LOG_TYPE_ERROR, "%25s:%-5d feedback loop from MIDI source %p\n", buf, 0x1Cu);
  }
}

void sub_237240188(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

__n128 std::ranges::__find_if_impl[abi:ne200100]<MIDI::event_iterator<MIDI::detail::event_accessor>,MIDI::event_iterator<MIDI::detail::event_accessor>::sentinel,std::reference_wrapper<MIDISource::ReceivedPacketList(MIDI::EventList const*)::$_0>,std::identity>(MIDIServer *a1, uint64_t a2, uint64_t **a3)
{
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);
  if (v5 == v6)
  {
    v7 = *(a2 + 16);
    if (v7 < 2)
    {
      goto LABEL_81;
    }

    *(a2 + 16) = v7 - 1;
    v5 = v6 + 3;
    *a2 = *v6;
    *(a2 + 8) = v6 + 3;
    v6 += v6[2] + 3;
    *(a2 + 24) = v6;
  }

  if (v5 != v6)
  {
    v8 = *a2;
    v9 = **a3;
    v10 = *v5;
    v11 = v10 >> 28;
    if (v10 >> 28 == 15)
    {
      v12 = MIDIServer::defaultInstance(a1);
      AsyncMessenger::push(v12[110] + 96, 0, *(v9 + 8), v8, v5);
      goto LABEL_81;
    }

    if (v11 && v11 != 15)
    {
      v14 = *(v9 + 176);
      v15 = BYTE3(v10) & 0xF;
      v16 = *v14 + 20 * ((v10 >> 24) & 0xF);
      if (*v16 == 1)
      {
        std::function<void ()(MIDI::UniversalPacket const&,unsigned long long)>::operator()(v14[4], v5, *a2);
        LODWORD(v10) = *v5;
      }

      else
      {
        v17 = *(v16 + 4);
        if (v17 >= 1)
        {
          if ((v10 & 0xF0F80000) == 0x10F80000)
          {
            goto LABEL_81;
          }

          if (v11 != 3 && (v17 - 4) >= 0xFFFFFFFD)
          {
            v18 = v14;
            v19 = BYTE3(v10) & 0xF;
            v20 = 0;
LABEL_80:
            MIDICISniffer::clearStateForGroup(v18, v19, 0, v20);
            goto LABEL_81;
          }
        }
      }

      v21 = v10 & 0xF0000;
      if ((v10 & 0xF0E0FF00) == 0x30007E00 && v21 > 0x20000 && (v10 & 0xC0000) != 0 && (v22 = v5[1], (v22 & 0xFF000000) == 0xD000000))
      {
        if (BYTE2(v22) == 68)
        {
          v23 = 5;
        }

        else
        {
          v23 = 3;
        }

        if (BYTE2(v22) == 67)
        {
          v24 = 4;
        }

        else
        {
          v24 = v23;
        }

        v25 = v14;
        v26 = v15;
      }

      else
      {
        if ((v10 & 0xF0E00000) != 0x30000000)
        {
          goto LABEL_35;
        }

        if (!v21 || (v10 & 0xFF00) != 0x7E00)
        {
          *(v16 + 4) = 1;
LABEL_35:
          v27 = *(v16 + 4);
          if (v27 < 3)
          {
            if ((v27 - 1) <= 1)
            {
              v28 = *v5;
              if ((*v5 & 0xF0000) != 0)
              {
                v29 = 0;
                v30 = 0;
                do
                {
                  if (v30 <= 5)
                  {
                    if (v30 >= 2)
                    {
                      v32 = 40;
                    }

                    else
                    {
                      v32 = 8;
                    }

                    v31 = v5[v30 > 1] >> (v32 + v29);
                  }

                  else
                  {
                    LOBYTE(v31) = 0;
                  }

                  v33 = *(v16 + 18);
                  if (v33 >= 0xA)
                  {
                    __assert_rtn("push_back", "MIDICISniffer.cpp", 34, "mSize < kMaxLen");
                  }

                  *(v16 + 18) = v33 + 1;
                  *(v16 + 8 + v33) = v31;
                  ++v30;
                  v28 = *v5;
                  v29 -= 8;
                }

                while ((HIWORD(*v5) & 0xF) > v30);
              }

              if (*(v16 + 18) > 3u)
              {
                if (*(v16 + 8) == 126 && *(v16 + 10) == 13)
                {
                  v34 = *(v16 + 11);
                  if (v34 == 68)
                  {
                    v35 = 5;
                  }

                  else
                  {
                    v35 = 3;
                  }

                  if (v34 == 67)
                  {
                    v36 = 4;
                  }

                  else
                  {
                    v36 = v35;
                  }

                  v37 = (v15 << 24) | 0x30000000 | *(v16 + 9) & 0x7F | 0x147E00;
                  v56 = 0;
                  v53 = v36;
                  v54 = v37;
                  v55 = ((v34 & 0x7F) << 16) | 0xD000000u;
                  std::function<void ()(MIDI::UniversalPacket const&,unsigned long long)>::operator()(v14[4], &v54, v8);
                  v38 = *(v16 + 18);
                  if (v38 >= 5)
                  {
                    v39 = v28 & 0xF00000;
                    v40 = v38 - 4;
                    if (v40 >= 6)
                    {
                      v40 = 6;
                    }

                    else
                    {
                      v40 = v40;
                    }

                    v41 = *(v16 + 12);
                    v42 = *(v16 + 13);
                    v43 = *(v16 + 14);
                    v44 = *(v16 + 15);
                    v45 = *(v16 + 16);
                    v46 = *(v16 + 17);
                    if (v28 >> 28 != 3)
                    {
                      v39 = 267386880;
                    }

                    v56 = 0;
                    v54 = v39 & 0xFFFF8080 | (v40 << 16) | ((v41 & 0x7F) << 8) | v42 & 0x7F | (v15 << 24) | 0x30000000;
                    v55 = v46 & 0x7F | ((v45 & 0x7F) << 8) | ((v43 & 0x7F) << 24) | ((v44 & 0x7F) << 16);
                    std::function<void ()(MIDI::UniversalPacket const&,unsigned long long)>::operator()(v14[4], &v54, v8);
                  }

                  *(v16 + 15) = 0;
                  *(v16 + 8) = 0;
                  *(v16 + 4) = v53;
                }

                else
                {
                  MIDICISniffer::clearStateForGroup(v14, v15, 0, 0);
                }
              }
            }
          }

          else if ((*v16 & 1) == 0)
          {
            std::function<void ()(MIDI::UniversalPacket const&,unsigned long long)>::operator()(v14[4], v5, v8);
          }

          v47 = (*v5 >> 20) & 0xF;
          if (*v5 >> 28 != 3)
          {
            v47 = -1;
          }

          if (v47 != 3 && v47 != 0)
          {
            goto LABEL_81;
          }

          v49 = *(v16 + 4);
          if (v49 == 4)
          {
            v50 = 1;
          }

          else
          {
            if (v49 != 5)
            {
LABEL_79:
              v20 = v49 > 2;
              v18 = v14;
              v19 = v15;
              goto LABEL_80;
            }

            v50 = 0;
          }

          *v16 = v50;
          goto LABEL_79;
        }

        v25 = v14;
        v26 = v15;
        v24 = 2;
      }

      MIDICISniffer::clearStateForGroup(v25, v26, v24, 0);
      goto LABEL_35;
    }
  }

LABEL_81:
  result = *a2;
  v52 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 1) = v52;
  return result;
}

void MIDI::ChunkedEventListEmitter<MIDISource::ReceivedPacketList(MIDI::EventList const*)::$_1>::flush(uint64_t a1)
{
  v1 = *(a1 + 296);
  if (*(v1 + 4))
  {
    if (!**(a1 + 8))
    {
      MIDISource::SchedulePacketList(*a1, v1);
      **(a1 + 8) = 0;
      v1 = *(a1 + 296);
    }

    *(v1 + 4) = 0;
    *(a1 + 312) = v1 + 8;
    *(v1 + 16) = 0;
  }
}

uint64_t MIDIDestination::SendPacketList(uint64_t this, void *a2, const MIDI::EventList *a3)
{
  v15[127] = *MEMORY[0x277D85DE8];
  v8 = a2;
  if (*(a3 + 1))
  {
    v4 = this;
    if (*(this + 876))
    {

      return MIDIDestination::SendPacketsNow(this, a2, a3);
    }

    else
    {
      v5 = 0;
      v7 = (a3 + 8);
      v6 = *a3;
      v10 = caulk::inplace_function<void ()(MIDI::EventList const*),48ul,8ul,caulk::inplace_function_detail::rt_vtable>::k_wrapper_vtable<MIDIDestination::SendPacketList(void *,MIDI::EventList const*)::$_0>;
      v11[0] = this;
      v13 = v6;
      v14 = 0;
      v11[1] = &v8;
      v12 = v15;
      do
      {
        if (v7->wordCount && (Scheduler::CheckSchedulePacket(gScheduler, v8, *(v4 + 8), *a3, v7) & 1) == 0)
        {
          if (!v5 && *(a3 + 1) == 1)
          {
            MIDIDestination::SendPacketsNow(v4, v8, a3);
            return MIDI::PacketizerBase<MIDI::EventList>::~PacketizerBase(&v10);
          }

          MIDI::Packetizer::add(&v10, v7);
        }

        v7 = (v7 + 4 * v7->wordCount + 12);
        ++v5;
      }

      while (v5 < *(a3 + 1));
      if (v14)
      {
        v9 = &v13;
        (*v10)(v11, &v9);
      }

      v14 = 0;
      v12 = v15;
      return MIDI::PacketizerBase<MIDI::EventList>::~PacketizerBase(&v10);
    }
  }

  return this;
}

void sub_23724083C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  MIDI::PacketizerBase<MIDI::EventList>::~PacketizerBase(va);
  _Unwind_Resume(a1);
}

uint64_t MIDIDestination::SendPacketsNow(uint64_t this, void *a2, const MIDI::EventList *a3)
{
  v47[2] = *MEMORY[0x277D85DE8];
  v3 = *(a3 + 1);
  if (!v3)
  {
    return this;
  }

  v6 = this;
  v7 = 0;
  v47[0] = 0;
  v47[1] = 0;
  v8 = this + 104;
  p_s = &__s;
  __s = 0uLL;
  do
  {
    if ((*(this + v7 + 104) - 1) <= 1)
    {
      *p_s = *(this + v7 + 112) != a2;
    }

    v7 += 24;
    ++p_s;
  }

  while (v7 != 384);
  v10 = memchr(&__s, 1, 0x10uLL);
  v32 = a2;
  if (!v10 || v10 == v42)
  {
    v11 = 0;
    LOBYTE(v45) = 0;
  }

  else
  {
    v45 = __s;
    v11 = 1;
  }

  v46 = v11;
  v12 = 104;
  __s = 0uLL;
  do
  {
    if (*(v6 + v12) == 2)
    {
      *(v6 + v12) = 1;
    }

    v12 += 24;
  }

  while (v12 != 488);
  v29 = v6;
  v30 = a3;
  if (v11)
  {
    v13 = &v45;
  }

  else
  {
    v13 = v47;
  }

  v39 = 0;
  v40 = 0;
  v14 = a3 + 8;
  v31 = v13;
  do
  {
    v15 = v14 + 12;
    v16 = *(v14 + 2);
    if (v16)
    {
      v17 = &v15[4 * v16];
      v18 = (v14 + 12);
      while (1)
      {
        v19 = *v18;
        v20 = *v18 >> 28;
        if (v20 && v20 != 15 && (BYTE2(v19) - 248 > 7 || ((1 << (BYTE2(v19) + 8)) & 0xDD) == 0))
        {
          break;
        }

LABEL_28:
        v18 += MIDI::UniversalPacket::word_sizes[*v18 >> 28];
        if (v18 == v17)
        {
          v27 = *(v14 + 2);
          goto LABEL_47;
        }
      }

      LODWORD(v23) = HIBYTE(v19) & 0xF;
      if (v20 != 3 || (*(v13 + v23) & 1) != 0)
      {
LABEL_40:
        if (v20 == 15)
        {
          v23 = 255;
        }

        else
        {
          v23 = v23;
        }

        if (*(v13 + v23) == 1)
        {
          mach_absolute_time();
          if (__udivti3() <= 0x1DCD64FF)
          {
            v42[v23 - 16] = 1;
          }
        }

        goto LABEL_28;
      }

      v24 = (v19 >> 20) & 0xF;
      if (v24 == 3)
      {
        if (*(&v39 + v23) == 1)
        {
          *(&v39 + v23) = 0;
          *(v8 + 24 * v23) = 0;
        }

        goto LABEL_40;
      }

      if (v24 != 2)
      {
        if (v24 != 1)
        {
          goto LABEL_40;
        }

        *(&v39 + v23) = 1;
      }

      *(v8 + 24 * v23) = 2;
      v25 = mach_absolute_time();
      v26 = v8 + 24 * v23;
      *(v26 + 8) = v32;
      *(v26 + 16) = v25;
      v13 = v31;
      goto LABEL_40;
    }

    v27 = 0;
LABEL_47:
    v14 = &v15[4 * v27];
    --v3;
  }

  while (v3);
  v28 = memchr(&__s, 1, 0x10uLL);
  if (!v28 || v28 == v42)
  {
    return MIDIDestination::DeliverAndDequeueIfNecessary(v29, v30, v32);
  }

  v43 = __s;
  v44 = 1;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 0x40000000;
  v34[2] = ___ZN15MIDIDestination14SendPacketsNowEPvPKN4MIDI9EventListE_block_invoke;
  v34[3] = &__block_descriptor_tmp_3046;
  v34[4] = v29;
  v34[5] = v32;
  *&__s = caulk::inplace_function<void ()(MIDIProtocolID,MIDIEventPacket const*),32ul,8ul,caulk::inplace_function_detail::rt_vtable>::k_wrapper_vtable<void({block_pointer})(MIDIProtocolID,MIDIEventPacket const*)>;
  *(&__s + 1) = v34;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 0x40000000;
  v33[2] = ___ZN15MIDIDestination14SendPacketsNowEPvPKN4MIDI9EventListE_block_invoke_26;
  v33[3] = &__block_descriptor_tmp_28;
  v33[4] = v29;
  v33[5] = v32;
  v39 = caulk::inplace_function<void ()(MIDI::EventList const*),32ul,8ul,caulk::inplace_function_detail::rt_vtable>::k_wrapper_vtable<void({block_pointer})(MIDI::EventList const*)>;
  v40 = v33;
  v37 = caulk::inplace_function<void ()(MIDI::EventList const*),32ul,8ul,caulk::inplace_function_detail::rt_vtable>::k_wrapper_vtable<void({block_pointer})(MIDI::EventList const*)>;
  v38 = v33;
  v35 = caulk::inplace_function<void ()(MIDIProtocolID,MIDIEventPacket const*),32ul,8ul,caulk::inplace_function_detail::rt_vtable>::k_wrapper_vtable<void({block_pointer})(MIDIProtocolID,MIDIEventPacket const*)>;
  v36 = v34;
  MIDI::sendOrDeferEventsOnActiveSysExGroups(v30, &v43, 16, &v37, &v35);
  (v35[3])(&v36);
  (v37[3])(&v38);
  (v39[3])(&v40);
  return (*(__s + 24))(&__s + 8);
}

void sub_237240CA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

_DWORD *MIDI::Packetizer::add(_DWORD *this, const MIDIEventPacket *a2)
{
  v2 = this;
  timeStamp = a2->timeStamp;
  words = a2->words;
  wordCount = a2->wordCount;
  v6 = *(this + 7);
  if (wordCount)
  {
    v7 = (this + 272);
    v8 = *words & 0xF0000000;
    v9 = this[17];
    if (v6)
    {
      v10 = v9 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      if (!v9)
      {
        goto LABEL_34;
      }

      if (!v6)
      {
        if (v8 != 805306368)
        {
          goto LABEL_31;
        }

LABEL_33:
        v6 += v6[2] + 3;
LABEL_34:
        if (&v6[wordCount + 3] <= v7)
        {
          LODWORD(v20) = 0;
          this[17] = v9 + 1;
          *v6 = timeStamp;
          v6[2] = 0;
          goto LABEL_37;
        }

        goto LABEL_35;
      }
    }

    else
    {
      v11 = v6[2];
      v12 = v11 >= 2;
      v13 = v11 - 2;
      if (v12 && v6[3] >> 28 == 3)
      {
        v14 = v6[v13 + 3];
        if (v14 >> 28 == 3)
        {
          v15 = (v14 >> 20) & 0xF;
        }

        else
        {
          v15 = 255;
        }

        if (v15)
        {
          v16 = v15 == 3;
        }

        else
        {
          v16 = 1;
        }

        v17 = v16;
        v18 = 1;
LABEL_27:
        v19 = v8 == 805306368;
        if (*v6 == timeStamp && ((v19 ^ v18) & 1) == 0 && (*words & 0xF0E00000) != 0x30000000 && (v17 & 1) == 0)
        {
LABEL_31:
          v20 = v6[2];
          if (&v6[v20 + 3 + wordCount] <= v7)
          {
LABEL_37:
            this = &v6[v20 + 3];
            if (wordCount > 2)
            {
              if (wordCount != 3)
              {
                if (wordCount != 4)
                {
LABEL_49:
                  this = memmove(this, a2->words, 4 * wordCount);
                  goto LABEL_47;
                }

                words = &a2->words[1];
                *this = a2->words[0];
                this = &v6[v20 + 4];
              }

              v21 = *words++;
              *this++ = v21;
            }

            else
            {
              if (wordCount == 1)
              {
LABEL_46:
                *this = *words;
LABEL_47:
                v6[2] += wordCount;
                goto LABEL_48;
              }

              if (wordCount != 2)
              {
                goto LABEL_49;
              }
            }

            v22 = *words++;
            *this++ = v22;
            goto LABEL_46;
          }

          goto LABEL_35;
        }

        goto LABEL_33;
      }
    }

    v18 = 0;
    v17 = 0;
    goto LABEL_27;
  }

  if (!v6)
  {
LABEL_35:
    this = MIDI::PacketizerBase<MIDI::EventList>::begin_new_packet(this, a2->timeStamp, words, wordCount);
    v6 = this;
  }

LABEL_48:
  *(v2 + 7) = v6;
  return this;
}

__n128 caulk::inplace_function_detail::rt_vtable<void,MIDI::EventList const*>::rt_vtable<MIDIDestination::SendPacketList(void *,MIDI::EventList const*)::$_0>(caulk::inplace_function_detail::wrapper<MIDIDestination::SendPacketList(void *,MIDI::EventList const*)::$_0>)::{lambda(void *,void *)#2}::__invoke(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 caulk::inplace_function_detail::rt_vtable<void,MIDI::EventList const*>::rt_vtable<MIDIDestination::SendPacketList(void *,MIDI::EventList const*)::$_0>(caulk::inplace_function_detail::wrapper<MIDIDestination::SendPacketList(void *,MIDI::EventList const*)::$_0>)::{lambda(void *,void *)#1}::__invoke(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void ___ZN15MIDIDestination14SendPacketsNowEPvPKN4MIDI9EventListE_block_invoke(uint64_t a1, int a2, uint64_t *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  gMIDIDeviceTableLog();
  v6 = gMIDIDeviceTableLog(void)::dtable;
  if (os_log_type_enabled(gMIDIDeviceTableLog(void)::dtable, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a3 + 2);
    v8 = *(a1 + 40);
    *buf = 136315906;
    v15 = "DeviceTable.cpp";
    v16 = 1024;
    v17 = 1171;
    v18 = 1024;
    v19 = v7;
    v20 = 2048;
    v21 = v8;
    _os_log_impl(&dword_2371C2000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d      !!! deferring %u word(s) from port %p", buf, 0x22u);
  }

  v9 = *(a3 + 3) >> 28;
  if (v9)
  {
    v10 = v9 == 15;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v11 = *a3;
    v12 = *(a3 + 2);
    v13 = malloc_type_malloc(4 * v12 + 20, 0xC3A25D3EuLL);
    *v13 = a2;
    v13[1] = 1;
    *(v13 + 1) = v11;
    v13[4] = v12;
    if (v12)
    {
      memmove(v13 + 5, a3 + 12, 4 * v12);
    }

    operator new();
  }

  std::terminate();
}

uint64_t MIDIDestination::DeliverAndDequeueIfNecessary(MIDIDestination *this, const MIDI::EventList *a2, void *a3)
{
  v54 = *MEMORY[0x277D85DE8];
  v4 = this + 104;
  v5 = *(a2 + 1);
  if (v5)
  {
    v6 = a2 + 8;
    do
    {
      v8 = v6 + 12;
      v7 = *(v6 + 3);
      if (v7 >> 28 == 3)
      {
        if ((*&v4[24 * ((v7 >> 24) & 0xF)] - 1) <= 1 && (v8[*(v6 + 2) - 2] & 0xF0F00000) == 808452096)
        {
          gSysExUtilitiesLog();
          v10 = gSysExUtilitiesLog(void)::sysexu;
          if (os_log_type_enabled(gSysExUtilitiesLog(void)::sysexu, OS_LOG_TYPE_DEBUG))
          {
            v11 = *v8 >> 28;
            v12 = 255;
            if (v11 && v11 != 15)
            {
              v12 = HIBYTE(*v8) & 0xF;
            }

            *buf = 136315650;
            *&buf[4] = "MIDISysExUtilities.cpp";
            v48 = 1024;
            v49 = 135;
            v50 = 1024;
            LODWORD(v51) = v12;
            _os_log_impl(&dword_2371C2000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d [?] SysExStateMonitor::MaintainSysExState() - leaving SysEx on group %d", buf, 0x18u);
          }

          v13 = *v8;
          v14 = v13 >> 28;
          v15 = (v13 >> 24) & 0xF;
          if (v14 == 15)
          {
            LODWORD(v15) = 255;
          }

          if (!v14)
          {
            LODWORD(v15) = 255;
          }

          *&v4[24 * v15] = 3;
        }
      }

      else
      {
        v16 = 0;
        while ((*&v4[v16] - 1) >= 2)
        {
          v16 += 24;
          if (v16 == 384)
          {
            goto LABEL_41;
          }
        }

        v17 = *(v6 + 2);
        if (v17)
        {
          v18 = &v6[4 * v17 + 12];
          v19 = v6 + 12;
          do
          {
            v20 = *v19;
            v21 = v20 >> 28;
            if (*v19 >> 28)
            {
              v22 = v21 == 15;
            }

            else
            {
              v22 = 1;
            }

            if (!v22)
            {
              v23 = BYTE3(v20) & 0xF;
              if (v21 == 15)
              {
                v23 = 255;
              }

              v24 = &v4[24 * v23];
              if ((*v24 - 1) <= 1)
              {
                v25 = BYTE2(v20) - 248;
                v26 = v25 > 7;
                v27 = (1 << v25) & 0xDD;
                if (v26 || v27 == 0)
                {
                  *v24 = 3;
                }
              }
            }

            v19 += MIDI::UniversalPacket::word_sizes[v21];
          }

          while (v19 != v18);
        }
      }

LABEL_41:
      v6 = &v8[*(v6 + 2)];
      --v5;
    }

    while (v5);
  }

  result = MIDIDestination::DeliverPacketsToDestination(this, a2);
  for (i = 0; i != 384; i += 24)
  {
    if (*&v4[i] == 3)
    {
      gMIDIDeviceTableLog();
      v31 = gMIDIDeviceTableLog(void)::dtable;
      if (os_log_type_enabled(gMIDIDeviceTableLog(void)::dtable, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        *&buf[4] = "DeviceTable.cpp";
        v48 = 1024;
        v49 = 1193;
        _os_log_impl(&dword_2371C2000, v31, OS_LOG_TYPE_DEBUG, "%25s:%-5d      !!! preparing to dequeue...", buf, 0x12u);
      }

      v32 = 0;
      v45 = caulk::inplace_function<void ()(MIDI::EventList const*,void *),32ul,8ul,caulk::inplace_function_detail::rt_vtable>::k_wrapper_vtable<MIDIDestination::DeliverAndDequeueIfNecessary(MIDI::EventList const*,void *)::$_0>;
      v46[0] = this;
      while (1)
      {
        v33 = &v4[24 * v32];
        if (*v33 == 3)
        {
          break;
        }

LABEL_59:
        if (++v32 == 16)
        {
          return (v45[3])(v46);
        }
      }

      *v33 = 0;
      v34 = this + 24 * v32 + 488;
      v35 = *(v34 + 1);
      while (1)
      {
        if (v35 == v34)
        {
          goto LABEL_59;
        }

        if ((*v33 - 1) > 1 || *(v35 + 4) == *(v33 + 1))
        {
          *buf = *(v35 + 2);
          v44 = a3;
          (*v45)(v46, buf, &v44);
          v40 = *v35;
          v41 = *(v35 + 1);
          *(v40 + 8) = v41;
          *v41 = v40;
          --*(v34 + 2);
          std::__list_imp<MergeQueueElem>::__delete_node[abi:ne200100](v35);
          v39 = (v34 + 8);
          v35 = v41;
          if (*v33 == 3)
          {
            goto LABEL_58;
          }
        }

        else
        {
          gSysExUtilitiesLog();
          v36 = gSysExUtilitiesLog(void)::sysexu;
          if (os_log_type_enabled(gSysExUtilitiesLog(void)::sysexu, OS_LOG_TYPE_DEBUG))
          {
            v37 = *(v35 + 4);
            v38 = *(v33 + 1);
            *buf = 136315906;
            *&buf[4] = "MIDISysExUtilities.cpp";
            v48 = 1024;
            v49 = 179;
            v50 = 2048;
            v51 = v37;
            v52 = 2048;
            v53 = v38;
            _os_log_impl(&dword_2371C2000, v36, OS_LOG_TYPE_DEBUG, "%25s:%-5d [?] SysExStateMonitor::dequeue() - port %p != %p, leaving enqueued", buf, 0x26u);
          }

          v39 = (v35 + 8);
LABEL_58:
          v35 = *v39;
        }
      }
    }
  }

  return result;
}

void sub_2372415FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t MIDIDestination::DeliverPacketsToDestination(MIDIDestination *this, const MIDI::EventList *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *(MIDIServer::defaultInstance(this, a2) + 264);
  v13 = *(this + 2);
  v5 = *(v4 + 40);
  for (i = *(v4 + 48); v5 != i; ++v5)
  {
    v7 = *v5;
    v12 = v7;
    if (v7[16] < 3)
    {
      v14 = caulk::inplace_function<void ()(MIDI::LegacyPacketList const*),48ul,8ul,caulk::inplace_function_detail::rt_vtable>::k_wrapper_vtable<MIDIDriverMgr::DoMonitoring(unsigned int,MIDIEventList const*)::{lambda(MIDIPacketList const*)#1}>;
      v15 = &v12;
      v16 = &v13;
      operator new();
    }

    (*(*v7 + 136))(v7, v13, a2);
  }

  result = *(this + 110);
  if (result)
  {
    v9 = *(*result + 16);

    return v9();
  }

  else
  {
    v10 = *(this + 7);
    if (v10)
    {
      result = *(v10 + 48);
      if (result)
      {
        v11 = *(this + 2);

        return ClientProcess::DeliverPacketsToClient(result, v11, v11, a2);
      }
    }
  }

  return result;
}

__n128 caulk::inplace_function_detail::rt_vtable<void,MIDI::LegacyPacketList const*>::rt_vtable<MIDIDriverMgr::DoMonitoring(unsigned int,MIDIEventList const*)::{lambda(MIDIPacketList const*)#1}>(caulk::inplace_function_detail::wrapper<MIDIDriverMgr::DoMonitoring(unsigned int,MIDIEventList const*)::{lambda(MIDIPacketList const*)#1}>)::{lambda(void *,void *)#2}::__invoke(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 caulk::inplace_function_detail::rt_vtable<void,MIDI::LegacyPacketList const*>::rt_vtable<MIDIDriverMgr::DoMonitoring(unsigned int,MIDIEventList const*)::{lambda(MIDIPacketList const*)#1}>(caulk::inplace_function_detail::wrapper<MIDIDriverMgr::DoMonitoring(unsigned int,MIDIEventList const*)::{lambda(MIDIPacketList const*)#1}>)::{lambda(void *,void *)#1}::__invoke(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t ClientProcessMIG::Notify(uint64_t a1, CFDataRef *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  v3 = *(a1 + 12);
  BytePtr = CFDataGetBytePtr(*a2);
  v5 = *a2;
  if (!*a2)
  {
    v11 = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(v11);
  }

  v14 = BytePtr;
  v15 = 16777472;
  Length = CFDataGetLength(v5);
  v17 = *MEMORY[0x277D85EF8];
  v18 = Length;
  *v12 = 2147483667;
  *&v12[8] = v3;
  *name = xmmword_23726C470;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(v12);
  }

  v6 = mach_msg(v12, 17, 0x38u, 0, 0, 0x493E0u, 0);
  v7 = v6;
  if (v6 == 268435460)
  {
    if ((*v12 & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x277D85F48], name[0]);
    }

    mach_msg_destroy(v12);
  }

  else if (!v6)
  {
    return v7;
  }

  gServerClientProcessLog();
  v8 = gServerClientProcessLog(void)::cliprc;
  if (os_log_type_enabled(gServerClientProcessLog(void)::cliprc, OS_LOG_TYPE_ERROR))
  {
    *v12 = 136315650;
    *&v12[4] = "ClientProcess.cpp";
    LOWORD(name[0]) = 1024;
    *(name + 2) = 245;
    HIWORD(name[1]) = 1024;
    name[2] = v7;
    _os_log_impl(&dword_2371C2000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d MIDIClientCallbackSender_Notify returned error %d", v12, 0x18u);
  }

  return v7;
}

void gServerClientProcessLog(void)
{
  {
    gServerClientProcessLog(void)::cliprc = os_log_create("com.apple.coremidi", "cliprc");
  }
}

void non-virtual thunk toClientProcessMIG::~ClientProcessMIG(mach_port_name_t *this)
{
  ClientProcessMIG::~ClientProcessMIG(this - 4);

  JUMPOUT(0x2383C8250);
}

{
  ClientProcessMIG::~ClientProcessMIG(this - 4);
}

void ClientProcessMIG::~ClientProcessMIG(mach_port_name_t *this)
{
  ClientProcess::~ClientProcess((this + 4));
  *this = &unk_284A46678;
  CADeprecated::XMachPortSendRight::~XMachPortSendRight(this + 3);

  BaseOpaqueObject::~BaseOpaqueObject(this);
}

{
  ClientProcessMIG::~ClientProcessMIG(this);

  JUMPOUT(0x2383C8250);
}

void ClientProcess::~ClientProcess(ClientProcess *this)
{
  *this = &unk_284A46CD0;
  NotificationQueue::~NotificationQueue((this + 296));
  if (*(this + 288) == 1)
  {
    MIDIRingBuffer::~MIDIRingBuffer((this + 184));
  }

  if (*(this + 176) == 1)
  {
    *(this + 3) = &unk_284A467F8;
    v2 = *(this + 16);
    if (v2)
    {
      *(this + 17) = v2;
      operator delete(v2);
    }

    MIDIRingBuffer::~MIDIRingBuffer((this + 24));
  }

  if (*(this + 20) == 1)
  {
    XClientMachPort::~XClientMachPort(this + 4);
  }
}

void CADeprecated::XMachServer::Client::~Client(mach_port_name_t *this)
{
  *this = &unk_284A46678;
  CADeprecated::XMachPortSendRight::~XMachPortSendRight(this + 3);
  BaseOpaqueObject::~BaseOpaqueObject(this);

  JUMPOUT(0x2383C8250);
}

{
  *this = &unk_284A46678;
  CADeprecated::XMachPortSendRight::~XMachPortSendRight(this + 3);

  BaseOpaqueObject::~BaseOpaqueObject(this);
}

{
  *this = &unk_284A46678;
  CADeprecated::XMachPortSendRight::~XMachPortSendRight(this + 3);

  BaseOpaqueObject::~BaseOpaqueObject(this);
}

uint64_t ClientProcessMIG::PrintObject(ClientProcessMIG *this, __sFILE *a2)
{
  fprintf(a2, "<%s 0x%x [%p]>", "ClientProcessLegacy", *(this + 2), this);

  return fputc(10, a2);
}

void ClientProcess::DeliverNotifications(ClientProcess *this)
{
  *(this + 320) = 1;
  Mutable = CFDataCreateMutable(0, 0);
  for (i = *(this + 38); i != (this + 296); i = *(i + 8))
  {
    ClientNotification::serialize((i + 16), Mutable);
  }

  NotificationQueue::eraseall(this + 37);
  v8 = 0u;
  v9 = 0u;
  *bytes = 0x800000001;
  ClientNotification::serialize(bytes, Mutable);
  cf = Mutable;
  if (Mutable)
  {
    v4 = CFGetTypeID(Mutable);
    if (v4 != CFDataGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383C7ED0](exception, "Could not construct");
    }
  }

  (*(*this + 40))(this, &cf);
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_237242198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  __cxa_free_exception(v9);
  applesauce::CF::ObjectRef<__CFData const*>::~ObjectRef(&a9);
  _Unwind_Resume(a1);
}

void ClientProcess::setupIO(mach_port_name_t *this, mach_port_name_t a2, int a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = (*(*this + 32))(this);
  if (*(this + 20) == 1)
  {
    XClientMachPort::~XClientMachPort(this + 4);
  }

  this[4] = a2;
  *(this + 20) = 1;
  if (a3)
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  if (*(this + 176) == 1)
  {
    *(this + 3) = &unk_284A467F8;
    v8 = *(this + 16);
    if (v8)
    {
      *(this + 17) = v8;
      operator delete(v8);
    }

    MIDIRingBuffer::~MIDIRingBuffer((this + 6));
  }

  *(this + 5) = 0;
  *(this + 6) = 0;
  this[15] = 0;
  *(this + 64) = 0;
  v9 = 0uLL;
  *(this + 17) = 0u;
  *(this + 21) = 0u;
  *(this + 14) = 0;
  this[30] = v7 | 2;
  *(this + 3) = &unk_284A467F8;
  *(this + 4) = 0;
  *(this + 21) = 0;
  *(this + 31) = 0u;
  *(this + 35) = 0u;
  *(this + 39) = 0;
  *(this + 176) = 1;
  if (*(this + 288) == 1)
  {
    MIDIRingBuffer::~MIDIRingBuffer((this + 46));
    v9 = 0uLL;
  }

  *(this + 24) = 0;
  *(this + 25) = 0;
  *(this + 26) = 0;
  this[55] = 0;
  *(this + 224) = 0;
  *(this + 57) = v9;
  *(this + 61) = v9;
  *(this + 34) = 0;
  this[70] = v7;
  *(this + 23) = &unk_284A46818;
  *(this + 288) = 1;
  *(this + 12) = a3;
  snprintf(__str, 0x40uLL, "Apple MIDI %s %d", "in", this[2]);
  MIDIIORingBufferBase::Init((this + 6), v6, __str);
  snprintf(__str, 0x40uLL, "Apple MIDI %s %d", "out", this[2]);
  MIDIIORingBufferBase::Init((this + 46), v6, __str);
}

uint64_t ClientProcess::DeliverPacketsToClient(uint64_t this, unsigned int a2, unsigned int a3, const MIDI::EventList *a4)
{
  v9 = *MEMORY[0x277D85DE8];
  if ((*(this + 13) & 1) == 0)
  {
    v4 = this;
    v6 = __PAIR64__(a3, a2);
    this = MIDIIORingBufferWriter::writePacketList<MIDI::EventList>(this + 24, &v6, *a4, a4);
    if (this)
    {
      v5 = *(v4 + 16);
      *msg = 0x2400000013;
      *&msg[8] = v5;
      *&msg[20] = 0;
      *&msg[12] = 0;
      v8 = 1;
      return mach_msg(msg, 1, 0x24u, 0, 0, 0, 0);
    }
  }

  return this;
}

void gMIDIClientLog(void)
{
  {
    gMIDIClientLog(void)::clilib = os_log_create("com.apple.coremidi", "client");
  }
}

OSStatus MIDIObjectSetIntegerProperty(MIDIObjectRef obj, CFStringRef propertyID, SInt32 value)
{
  v3 = *&value;
  v5 = *&obj;
  v31 = *MEMORY[0x277D85DE8];
  gMIDIClientLog();
  v6 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316674;
    v8 = @"(null)";
    v18 = "MIDIClientLib.cpp";
    v19 = 1024;
    if (propertyID)
    {
      v8 = propertyID;
    }

    v20 = 217;
    v21 = 2080;
    v22 = "MIDIObjectSetIntegerProperty";
    v23 = 2048;
    v24 = v5;
    v25 = 2112;
    v26 = v8;
    v27 = 1024;
    v28 = v3;
    v29 = 1024;
    v30 = v3;
    _os_log_impl(&dword_2371C2000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d ->%s(%p) %@ = %d (0x%x)", buf, 0x3Cu);
  }

  if (gInMIDIServer)
  {
    v9 = _MIDIObjectSetIntegerProperty(v5, propertyID, v3);
  }

  else
  {
    v15 = 0;
    v10 = MIDIProcess::CheckInitialization(&v15, v7);
    v11 = v15;
    if (v15)
    {
      goto LABEL_10;
    }

    v12 = ClientInterface::global(v10);
    v9 = ((*v12)[11])(v12, v5, propertyID, v3);
  }

  v11 = v9;
LABEL_10:
  gMIDIClientLog();
  v13 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
  {
    ErrorFormatter::ErrorFormatter(v16, v11);
    *buf = 136315906;
    v18 = "MIDIClientLib.cpp";
    v19 = 1024;
    v20 = 224;
    v21 = 2080;
    v22 = "MIDIObjectSetIntegerProperty";
    v23 = 2080;
    v24 = v16;
    _os_log_impl(&dword_2371C2000, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d <-%s%s", buf, 0x26u);
  }

  return v11;
}

OSStatus MIDIObjectGetIntegerProperty(MIDIObjectRef obj, CFStringRef propertyID, SInt32 *outValue)
{
  v26 = *MEMORY[0x277D85DE8];
  if (!outValue)
  {
    return -50;
  }

  v5 = *&obj;
  v16 = 0;
  gMIDIClientLog();
  v6 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316162;
    v8 = @"(null)";
    v19 = "MIDIClientLib.cpp";
    if (propertyID)
    {
      v8 = propertyID;
    }

    v20 = 1024;
    v21 = 232;
    v22 = 2080;
    v23 = "MIDIObjectGetIntegerProperty";
    v24 = 2048;
    *v25 = v5;
    *&v25[8] = 2112;
    *&v25[10] = v8;
    _os_log_impl(&dword_2371C2000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d ->%s(%p) %@", buf, 0x30u);
  }

  *outValue = 0;
  if (gInMIDIServer)
  {
    IntegerProperty = _MIDIObjectGetIntegerProperty(v5, propertyID, outValue);
  }

  else
  {
    v11 = MIDIProcess::CheckInitialization(&v16, v7);
    v10 = v16;
    if (v16)
    {
      goto LABEL_12;
    }

    v12 = ClientInterface::global(v11);
    IntegerProperty = ((*v12)[10])(v12, v5, propertyID, outValue);
  }

  v10 = IntegerProperty;
LABEL_12:
  gMIDIClientLog();
  v13 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
  {
    v14 = *outValue;
    ErrorFormatter::ErrorFormatter(v17, v10);
    *buf = 136316162;
    v19 = "MIDIClientLib.cpp";
    v20 = 1024;
    v21 = 240;
    v22 = 2080;
    v23 = "MIDIObjectGetIntegerProperty";
    v24 = 1024;
    *v25 = v14;
    *&v25[4] = 2080;
    *&v25[6] = v17;
    _os_log_impl(&dword_2371C2000, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d <-%s = %d%s", buf, 0x2Cu);
  }

  return v10;
}

OSStatus MIDIObjectSetStringProperty(MIDIObjectRef obj, CFStringRef propertyID, CFStringRef str)
{
  v5 = *&obj;
  v30 = *MEMORY[0x277D85DE8];
  gMIDIClientLog();
  v6 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316418;
    v8 = @"(null)";
    v19 = "MIDIClientLib.cpp";
    v20 = 1024;
    if (propertyID)
    {
      v9 = propertyID;
    }

    else
    {
      v9 = @"(null)";
    }

    v21 = 247;
    v22 = 2080;
    if (str)
    {
      v8 = str;
    }

    v23 = "MIDIObjectSetStringProperty";
    v24 = 2048;
    v25 = v5;
    v26 = 2112;
    v27 = v9;
    v28 = 2112;
    v29 = v8;
    _os_log_impl(&dword_2371C2000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d ->%s(%p) %@ = %@", buf, 0x3Au);
  }

  if (gInMIDIServer)
  {
    v10 = _MIDIObjectSetStringProperty(v5, propertyID, str);
  }

  else
  {
    v16 = 0;
    v11 = MIDIProcess::CheckInitialization(&v16, v7);
    v12 = v16;
    if (v16)
    {
      goto LABEL_13;
    }

    v13 = ClientInterface::global(v11);
    v10 = ((*v13)[13])(v13, v5, propertyID, str);
  }

  v12 = v10;
LABEL_13:
  gMIDIClientLog();
  v14 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
  {
    ErrorFormatter::ErrorFormatter(v17, v12);
    *buf = 136315906;
    v19 = "MIDIClientLib.cpp";
    v20 = 1024;
    v21 = 254;
    v22 = 2080;
    v23 = "MIDIObjectSetStringProperty";
    v24 = 2080;
    v25 = v17;
    _os_log_impl(&dword_2371C2000, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d <-%s%s", buf, 0x26u);
  }

  return v12;
}

OSStatus MIDIObjectGetStringProperty(MIDIObjectRef obj, CFStringRef propertyID, CFStringRef *str)
{
  v28 = *MEMORY[0x277D85DE8];
  if (!str)
  {
    return -50;
  }

  v5 = *&obj;
  v16 = 0;
  *str = 0;
  gMIDIClientLog();
  v6 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316162;
    if (propertyID)
    {
      v8 = propertyID;
    }

    else
    {
      v8 = @"(null)";
    }

    v19 = "MIDIClientLib.cpp";
    v20 = 1024;
    v21 = 263;
    v22 = 2080;
    v23 = "MIDIObjectGetStringProperty";
    v24 = 2048;
    v25 = v5;
    v26 = 2112;
    v27 = v8;
    _os_log_impl(&dword_2371C2000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d ->%s(%p) %@", buf, 0x30u);
  }

  if (gInMIDIServer)
  {
    StringProperty = _MIDIObjectGetStringProperty(v5, propertyID, str);
  }

  else
  {
    v11 = MIDIProcess::CheckInitialization(&v16, v7);
    v10 = v16;
    if (v16)
    {
      goto LABEL_13;
    }

    v12 = ClientInterface::global(v11);
    StringProperty = ((*v12)[12])(v12, v5, propertyID, str);
  }

  v10 = StringProperty;
LABEL_13:
  gMIDIClientLog();
  v13 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
  {
    if (*str)
    {
      v14 = *str;
    }

    else
    {
      v14 = @"(null)";
    }

    ErrorFormatter::ErrorFormatter(v17, v10);
    *buf = 136316162;
    v19 = "MIDIClientLib.cpp";
    v20 = 1024;
    v21 = 270;
    v22 = 2080;
    v23 = "MIDIObjectGetStringProperty";
    v24 = 2112;
    v25 = v14;
    v26 = 2080;
    v27 = v17;
    _os_log_impl(&dword_2371C2000, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d <-%s = %@%s", buf, 0x30u);
  }

  return v10;
}

OSStatus MIDIObjectSetDataProperty(MIDIObjectRef obj, CFStringRef propertyID, CFDataRef data)
{
  v5 = *&obj;
  v30 = *MEMORY[0x277D85DE8];
  gMIDIClientLog();
  v6 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316418;
    v8 = @"(null)";
    v19 = "MIDIClientLib.cpp";
    v20 = 1024;
    if (propertyID)
    {
      v9 = propertyID;
    }

    else
    {
      v9 = @"(null)";
    }

    v21 = 277;
    v22 = 2080;
    if (data)
    {
      v8 = data;
    }

    v23 = "MIDIObjectSetDataProperty";
    v24 = 2048;
    v25 = v5;
    v26 = 2112;
    v27 = v9;
    v28 = 2112;
    v29 = v8;
    _os_log_impl(&dword_2371C2000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d ->%s(%p) %@ = %@", buf, 0x3Au);
  }

  if (gInMIDIServer)
  {
    v10 = _MIDIObjectSetDataProperty(v5, propertyID, data);
  }

  else
  {
    v16 = 0;
    v11 = MIDIProcess::CheckInitialization(&v16, v7);
    v12 = v16;
    if (v16)
    {
      goto LABEL_13;
    }

    v13 = ClientInterface::global(v11);
    v10 = ((*v13)[15])(v13, v5, propertyID, data);
  }

  v12 = v10;
LABEL_13:
  gMIDIClientLog();
  v14 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
  {
    ErrorFormatter::ErrorFormatter(v17, v12);
    *buf = 136315906;
    v19 = "MIDIClientLib.cpp";
    v20 = 1024;
    v21 = 284;
    v22 = 2080;
    v23 = "MIDIObjectSetDataProperty";
    v24 = 2080;
    v25 = v17;
    _os_log_impl(&dword_2371C2000, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d <-%s%s", buf, 0x26u);
  }

  return v12;
}

OSStatus MIDIObjectGetDataProperty(MIDIObjectRef obj, CFStringRef propertyID, CFDataRef *outData)
{
  v28 = *MEMORY[0x277D85DE8];
  if (!outData)
  {
    return -50;
  }

  v5 = *&obj;
  v16 = 0;
  *outData = 0;
  gMIDIClientLog();
  v6 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316162;
    if (propertyID)
    {
      v8 = propertyID;
    }

    else
    {
      v8 = @"(null)";
    }

    v19 = "MIDIClientLib.cpp";
    v20 = 1024;
    v21 = 293;
    v22 = 2080;
    v23 = "MIDIObjectGetDataProperty";
    v24 = 2048;
    v25 = v5;
    v26 = 2112;
    v27 = v8;
    _os_log_impl(&dword_2371C2000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d ->%s(%p) %@", buf, 0x30u);
  }

  if (gInMIDIServer)
  {
    DataProperty = _MIDIObjectGetDataProperty(v5, propertyID, outData);
  }

  else
  {
    v11 = MIDIProcess::CheckInitialization(&v16, v7);
    v10 = v16;
    if (v16)
    {
      goto LABEL_13;
    }

    v12 = ClientInterface::global(v11);
    DataProperty = ((*v12)[14])(v12, v5, propertyID, outData);
  }

  v10 = DataProperty;
LABEL_13:
  gMIDIClientLog();
  v13 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
  {
    if (*outData)
    {
      v14 = *outData;
    }

    else
    {
      v14 = @"(null)";
    }

    ErrorFormatter::ErrorFormatter(v17, v10);
    *buf = 136316162;
    v19 = "MIDIClientLib.cpp";
    v20 = 1024;
    v21 = 300;
    v22 = 2080;
    v23 = "MIDIObjectGetDataProperty";
    v24 = 2112;
    v25 = v14;
    v26 = 2080;
    v27 = v17;
    _os_log_impl(&dword_2371C2000, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d <-%s = %@%s", buf, 0x30u);
  }

  return v10;
}

OSStatus MIDIObjectSetDictionaryProperty(MIDIObjectRef obj, CFStringRef propertyID, CFDictionaryRef dict)
{
  v5 = *&obj;
  v30 = *MEMORY[0x277D85DE8];
  gMIDIClientLog();
  v6 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316418;
    v8 = @"(null)";
    v19 = "MIDIClientLib.cpp";
    v20 = 1024;
    if (propertyID)
    {
      v9 = propertyID;
    }

    else
    {
      v9 = @"(null)";
    }

    v21 = 307;
    v22 = 2080;
    if (dict)
    {
      v8 = dict;
    }

    v23 = "MIDIObjectSetDictionaryProperty";
    v24 = 2048;
    v25 = v5;
    v26 = 2112;
    v27 = v9;
    v28 = 2112;
    v29 = v8;
    _os_log_impl(&dword_2371C2000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d ->%s(%p) %@ = %@", buf, 0x3Au);
  }

  if (gInMIDIServer)
  {
    v10 = _MIDIObjectSetDictionaryProperty(v5, propertyID, dict);
  }

  else
  {
    v16 = 0;
    v11 = MIDIProcess::CheckInitialization(&v16, v7);
    v12 = v16;
    if (v16)
    {
      goto LABEL_13;
    }

    v13 = ClientInterface::global(v11);
    v10 = ((*v13)[17])(v13, v5, propertyID, dict);
  }

  v12 = v10;
LABEL_13:
  gMIDIClientLog();
  v14 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
  {
    ErrorFormatter::ErrorFormatter(v17, v12);
    *buf = 136315906;
    v19 = "MIDIClientLib.cpp";
    v20 = 1024;
    v21 = 314;
    v22 = 2080;
    v23 = "MIDIObjectSetDictionaryProperty";
    v24 = 2080;
    v25 = v17;
    _os_log_impl(&dword_2371C2000, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d <-%s%s", buf, 0x26u);
  }

  return v12;
}

OSStatus MIDIObjectGetDictionaryProperty(MIDIObjectRef obj, CFStringRef propertyID, CFDictionaryRef *outDict)
{
  v28 = *MEMORY[0x277D85DE8];
  if (!outDict)
  {
    return -50;
  }

  v5 = *&obj;
  v16 = 0;
  *outDict = 0;
  gMIDIClientLog();
  v6 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316162;
    if (propertyID)
    {
      v8 = propertyID;
    }

    else
    {
      v8 = @"(null)";
    }

    v19 = "MIDIClientLib.cpp";
    v20 = 1024;
    v21 = 323;
    v22 = 2080;
    v23 = "MIDIObjectGetDictionaryProperty";
    v24 = 2048;
    v25 = v5;
    v26 = 2112;
    v27 = v8;
    _os_log_impl(&dword_2371C2000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d ->%s(%p) %@", buf, 0x30u);
  }

  if (gInMIDIServer)
  {
    DictionaryProperty = _MIDIObjectGetDictionaryProperty(v5, propertyID, outDict);
  }

  else
  {
    v11 = MIDIProcess::CheckInitialization(&v16, v7);
    v10 = v16;
    if (v16)
    {
      goto LABEL_13;
    }

    v12 = ClientInterface::global(v11);
    DictionaryProperty = ((*v12)[16])(v12, v5, propertyID, outDict);
  }

  v10 = DictionaryProperty;
LABEL_13:
  gMIDIClientLog();
  v13 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
  {
    if (*outDict)
    {
      v14 = *outDict;
    }

    else
    {
      v14 = @"(null)";
    }

    ErrorFormatter::ErrorFormatter(v17, v10);
    *buf = 136316162;
    v19 = "MIDIClientLib.cpp";
    v20 = 1024;
    v21 = 330;
    v22 = 2080;
    v23 = "MIDIObjectGetDictionaryProperty";
    v24 = 2112;
    v25 = v14;
    v26 = 2080;
    v27 = v17;
    _os_log_impl(&dword_2371C2000, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d <-%s = %@%s", buf, 0x30u);
  }

  return v10;
}

OSStatus MIDIObjectRemoveProperty(MIDIObjectRef obj, CFStringRef propertyID)
{
  v3 = *&obj;
  v25 = *MEMORY[0x277D85DE8];
  gMIDIClientLog();
  v4 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316162;
    v6 = @"(null)";
    v16 = "MIDIClientLib.cpp";
    v17 = 1024;
    if (propertyID)
    {
      v6 = propertyID;
    }

    v18 = 338;
    v19 = 2080;
    v20 = "MIDIObjectRemoveProperty";
    v21 = 2048;
    v22 = v3;
    v23 = 2112;
    v24 = v6;
    _os_log_impl(&dword_2371C2000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d ->%s(%p) %@", buf, 0x30u);
  }

  if (gInMIDIServer)
  {
    v7 = _MIDIObjectRemoveProperty(v3, propertyID);
  }

  else
  {
    v13 = 0;
    v8 = MIDIProcess::CheckInitialization(&v13, v5);
    v9 = v13;
    if (v13)
    {
      goto LABEL_10;
    }

    v10 = ClientInterface::global(v8);
    v7 = ((*v10)[19])(v10, v3, propertyID);
  }

  v9 = v7;
LABEL_10:
  gMIDIClientLog();
  v11 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
  {
    ErrorFormatter::ErrorFormatter(v14, v9);
    *buf = 136315906;
    v16 = "MIDIClientLib.cpp";
    v17 = 1024;
    v18 = 345;
    v19 = 2080;
    v20 = "MIDIObjectRemoveProperty";
    v21 = 2080;
    v22 = v14;
    _os_log_impl(&dword_2371C2000, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d <-%s%s", buf, 0x26u);
  }

  return v9;
}

ItemCount MIDIGetNumberOfDevices(void)
{
  if (gInMIDIServer)
  {
    return _MIDIGetNumberOfDevices(v0);
  }

  v10 = 0;
  v3 = MIDIProcess::CheckInitialization(&v10, v1);
  if (v10)
  {
    return 0;
  }

  v9 = 0;
  ObjectTreeCache::ObjectTreeAccessor::ObjectTreeAccessor(&v7, v3 + 36, v3, &v9, v4);
  v5 = v9;
  v2 = v9 ? 0 : **(v7 + 16);
  if (v8 == 1)
  {
    CADeprecated::CAMutex::Unlock(v7);
  }

  if (v5)
  {
    return 0;
  }

  return v2;
}

ObjectTreeCache::ObjectTreeAccessor *ObjectTreeCache::ObjectTreeAccessor::ObjectTreeAccessor(ObjectTreeCache::ObjectTreeAccessor *this, CFMutableDictionaryRef *a2, const __CFData *(*a3)(void *, int *), int *a4, int *a5)
{
  v32 = *MEMORY[0x277D85DE8];
  *this = a2;
  *(this + 8) = CADeprecated::CAMutex::Lock(a2);
  if (a2[11])
  {
LABEL_2:
    *a4 = 0;
    return this;
  }

  v10 = (*(*a3 + 56))(a3, a4);
  v11 = *a4;
  if (!*a4)
  {
    v12 = v10;
    v13 = a2[11];
    if (v13)
    {
      CFRelease(v13);
    }

    a2[11] = v12;
    CFDictionaryRemoveAllValues(a2[13]);
    CFDictionaryRemoveAllValues(a2[15]);
    BytePtr = CFDataGetBytePtr(v12);
    a2[16] = BytePtr;
    v15 = *BytePtr;
    v16 = &BytePtr[4 * v15 + 4];
    if (v15)
    {
      v17 = 0;
      do
      {
        v16 = ObjectTreeCache::ParseDeviceChildren(a2, *&BytePtr[4 * v17++ + 4], v16);
        BytePtr = a2[16];
      }

      while (v17 < *BytePtr);
    }

    v18 = &v16[*v16];
    v19 = v18[1];
    ++v18;
    a2[17] = v16;
    a2[18] = v18;
    v20 = &v18[v19];
    v23 = v20[1];
    v21 = (v20 + 1);
    v22 = v23;
    a2[19] = v21;
    if (v23)
    {
      v24 = 0;
      v25 = (v21 + 4 * v22 + 4);
      do
      {
        v25 = ObjectTreeCache::ParseDeviceChildren(a2, *(v21 + ++v24), v25);
        v21 = a2[19];
      }

      while (v24 < *v21);
    }

    goto LABEL_2;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v26 = 136315650;
    v27 = "ObjectTreeCache.h";
    v28 = 1024;
    v29 = 54;
    v30 = 1024;
    v31 = v11;
    _os_log_impl(&dword_2371C2000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d ObjectTreeCache: refresh status %d", &v26, 0x18u);
  }

  return this;
}

MIDIDeviceRef MIDIGetDevice(ItemCount deviceIndex0)
{
  v2 = deviceIndex0;
  if (gInMIDIServer)
  {
    return _MIDIGetDevice(deviceIndex0);
  }

  v12 = 0;
  v4 = MIDIProcess::CheckInitialization(&v12, v1);
  if (v12)
  {
    return 0;
  }

  v11 = 0;
  ObjectTreeCache::ObjectTreeAccessor::ObjectTreeAccessor(&v9, v4 + 36, v4, &v11, v5);
  v6 = v11;
  if (v11 || (v7 = *(v9 + 16), *v7 <= v2))
  {
    v3 = 0;
  }

  else
  {
    v3 = v7[v2 + 1];
  }

  if (v10 == 1)
  {
    CADeprecated::CAMutex::Unlock(v9);
  }

  if (v6)
  {
    return 0;
  }

  return v3;
}

ItemCount MIDIGetNumberOfExternalDevices(void)
{
  if (gInMIDIServer)
  {
    return _MIDIGetNumberOfExternalDevices(v0);
  }

  v10 = 0;
  v3 = MIDIProcess::CheckInitialization(&v10, v1);
  if (v10)
  {
    return 0;
  }

  v9 = 0;
  ObjectTreeCache::ObjectTreeAccessor::ObjectTreeAccessor(&v7, v3 + 36, v3, &v9, v4);
  v5 = v9;
  v2 = v9 ? 0 : **(v7 + 19);
  if (v8 == 1)
  {
    CADeprecated::CAMutex::Unlock(v7);
  }

  if (v5)
  {
    return 0;
  }

  return v2;
}

MIDIDeviceRef MIDIGetExternalDevice(ItemCount deviceIndex0)
{
  v2 = deviceIndex0;
  if (gInMIDIServer)
  {
    return _MIDIGetExternalDevice(deviceIndex0);
  }

  v12 = 0;
  v4 = MIDIProcess::CheckInitialization(&v12, v1);
  if (v12)
  {
    return 0;
  }

  v11 = 0;
  ObjectTreeCache::ObjectTreeAccessor::ObjectTreeAccessor(&v9, v4 + 36, v4, &v11, v5);
  v6 = v11;
  if (v11 || (v7 = *(v9 + 19), *v7 <= v2))
  {
    v3 = 0;
  }

  else
  {
    v3 = v7[v2 + 1];
  }

  if (v10 == 1)
  {
    CADeprecated::CAMutex::Unlock(v9);
  }

  if (v6)
  {
    return 0;
  }

  return v3;
}

ItemCount MIDIGetNumberOfSources(void)
{
  if (gInMIDIServer)
  {
    return _MIDIGetNumberOfSources(v0);
  }

  v10 = 0;
  v3 = MIDIProcess::CheckInitialization(&v10, v1);
  if (v10)
  {
    return 0;
  }

  v9 = 0;
  ObjectTreeCache::ObjectTreeAccessor::ObjectTreeAccessor(&v7, v3 + 36, v3, &v9, v4);
  v5 = v9;
  v2 = v9 ? 0 : **(v7 + 17);
  if (v8 == 1)
  {
    CADeprecated::CAMutex::Unlock(v7);
  }

  if (v5)
  {
    return 0;
  }

  return v2;
}

MIDIEndpointRef MIDIGetSource(ItemCount sourceIndex0)
{
  v2 = sourceIndex0;
  if (gInMIDIServer)
  {
    return _MIDIGetSource(sourceIndex0);
  }

  v12 = 0;
  v4 = MIDIProcess::CheckInitialization(&v12, v1);
  if (v12)
  {
    return 0;
  }

  v11 = 0;
  ObjectTreeCache::ObjectTreeAccessor::ObjectTreeAccessor(&v9, v4 + 36, v4, &v11, v5);
  v6 = v11;
  if (v11 || (v7 = *(v9 + 17), *v7 <= v2))
  {
    v3 = 0;
  }

  else
  {
    v3 = v7[v2 + 1];
  }

  if (v10 == 1)
  {
    CADeprecated::CAMutex::Unlock(v9);
  }

  if (v6)
  {
    return 0;
  }

  return v3;
}

ItemCount MIDIGetNumberOfDestinations(void)
{
  if (gInMIDIServer)
  {
    return _MIDIGetNumberOfDestinations(v0);
  }

  v10 = 0;
  v3 = MIDIProcess::CheckInitialization(&v10, v1);
  if (v10)
  {
    return 0;
  }

  v9 = 0;
  ObjectTreeCache::ObjectTreeAccessor::ObjectTreeAccessor(&v7, v3 + 36, v3, &v9, v4);
  v5 = v9;
  v2 = v9 ? 0 : **(v7 + 18);
  if (v8 == 1)
  {
    CADeprecated::CAMutex::Unlock(v7);
  }

  if (v5)
  {
    return 0;
  }

  return v2;
}

MIDIEndpointRef MIDIGetDestination(ItemCount destIndex0)
{
  v2 = destIndex0;
  if (gInMIDIServer)
  {
    return _MIDIGetDestination(destIndex0);
  }

  v12 = 0;
  v4 = MIDIProcess::CheckInitialization(&v12, v1);
  if (v12)
  {
    return 0;
  }

  v11 = 0;
  ObjectTreeCache::ObjectTreeAccessor::ObjectTreeAccessor(&v9, v4 + 36, v4, &v11, v5);
  v6 = v11;
  if (v11 || (v7 = *(v9 + 18), *v7 <= v2))
  {
    v3 = 0;
  }

  else
  {
    v3 = v7[v2 + 1];
  }

  if (v10 == 1)
  {
    CADeprecated::CAMutex::Unlock(v9);
  }

  if (v6)
  {
    return 0;
  }

  return v3;
}

ItemCount MIDIDeviceGetNumberOfEntities(MIDIDeviceRef device)
{
  if (gInMIDIServer)
  {
    return _MIDIDeviceGetNumberOfEntities(*&device);
  }

  else
  {
    return CountChildrenOfNode(device, 0);
  }
}

uint64_t CountChildrenOfNode(unsigned int a1, int *a2)
{
  v2 = a2;
  v12 = 0;
  v4 = MIDIProcess::CheckInitialization(&v12, a2);
  if (v12)
  {
    return 0;
  }

  v11 = 0;
  ObjectTreeCache::ObjectTreeAccessor::ObjectTreeAccessor(&v9, v4 + 36, v4, &v11, v5);
  if (v11 || (Value = CFDictionaryGetValue(*(v9 + 13), a1)) == 0)
  {
    v6 = 0;
  }

  else
  {
    if (v2)
    {
      Value += *Value + 1;
    }

    v6 = *Value;
  }

  if (v10 == 1)
  {
    CADeprecated::CAMutex::Unlock(v9);
  }

  return v6;
}

void sub_237244104(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ObjectTreeCache::ObjectTreeAccessor::~ObjectTreeAccessor(va);
  _Unwind_Resume(a1);
}

void ObjectTreeCache::ObjectTreeAccessor::~ObjectTreeAccessor(CADeprecated::CAMutex **this)
{
  if (*(this + 8) == 1)
  {
    CADeprecated::CAMutex::Unlock(*this);
  }
}

MIDIEntityRef MIDIDeviceGetEntity(MIDIDeviceRef device, ItemCount entityIndex0)
{
  if (gInMIDIServer)
  {
    return _MIDIDeviceGetEntity(*&device, entityIndex0);
  }

  else
  {
    return GetChildOfNode(device, entityIndex0, 0);
  }
}

uint64_t GetChildOfNode(unsigned int a1, int *a2, int a3)
{
  v4 = a2;
  v14 = 0;
  v6 = MIDIProcess::CheckInitialization(&v14, a2);
  v8 = 0;
  if (!v14)
  {
    v13 = 0;
    ObjectTreeCache::ObjectTreeAccessor::ObjectTreeAccessor(&v11, v6 + 36, v6, &v13, v7);
    if (v13)
    {
      goto LABEL_3;
    }

    Value = CFDictionaryGetValue(*(v11 + 13), a1);
    if (!Value)
    {
      goto LABEL_3;
    }

    if (a3)
    {
      Value += *Value + 1;
    }

    if (*Value <= v4)
    {
LABEL_3:
      v8 = 0;
    }

    else
    {
      v8 = Value[v4 + 1];
    }

    if (v12 == 1)
    {
      CADeprecated::CAMutex::Unlock(v11);
    }
  }

  return v8;
}

void sub_237244238(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ObjectTreeCache::ObjectTreeAccessor::~ObjectTreeAccessor(va);
  _Unwind_Resume(a1);
}

ItemCount MIDIEntityGetNumberOfSources(MIDIEntityRef entity)
{
  if (gInMIDIServer)
  {
    return _MIDIEntityGetNumberOfSources(*&entity);
  }

  else
  {
    return CountChildrenOfNode(entity, 0);
  }
}

MIDIEndpointRef MIDIEntityGetSource(MIDIEntityRef entity, ItemCount sourceIndex0)
{
  if (gInMIDIServer)
  {
    return _MIDIEntityGetSource(*&entity, sourceIndex0);
  }

  else
  {
    return GetChildOfNode(entity, sourceIndex0, 0);
  }
}

ItemCount MIDIEntityGetNumberOfDestinations(MIDIEntityRef entity)
{
  if (gInMIDIServer)
  {
    return _MIDIEntityGetNumberOfDestinations(*&entity);
  }

  else
  {
    return CountChildrenOfNode(entity, 1);
  }
}

MIDIEndpointRef MIDIEntityGetDestination(MIDIEntityRef entity, ItemCount destIndex0)
{
  if (gInMIDIServer)
  {
    return _MIDIEntityGetDestination(*&entity, destIndex0);
  }

  else
  {
    return GetChildOfNode(entity, destIndex0, 1);
  }
}

OSStatus MIDIEntityGetDevice(MIDIEntityRef inEntity, MIDIDeviceRef *outDevice)
{
  v2 = outDevice;
  if (gInMIDIServer)
  {
    v4 = MIDIServer::defaultInstance(*&inEntity) + 2;
    v5 = (*(*v4 + 16))(v4);
    if (v2)
    {
      v6 = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<MIDIEntity>::sRTTI, inEntity);
      if (v6)
      {
        v7 = *(v6 + 16);
        *v2 = 0;
        if (v7)
        {
          v8 = 0;
          *v2 = *(v7 + 8);
        }

        else
        {
          v8 = -10842;
        }

        LOBYTE(v2) = 1;
        if (!v5)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }

      LOBYTE(v2) = 0;
    }

    v8 = 0;
    if (!v5)
    {
LABEL_21:
      if ((v2 & 1) == 0)
      {
        return -50;
      }

      return v8;
    }

LABEL_20:
    (*(*v4 + 24))(v4);
    goto LABEL_21;
  }

  v17 = 0;
  v9 = MIDIProcess::CheckInitialization(&v17, outDevice);
  if (v17)
  {
    return 0;
  }

  v16 = 0;
  ObjectTreeCache::ObjectTreeAccessor::ObjectTreeAccessor(&v14, v9 + 36, v9, &v16, v10);
  v8 = 0;
  v11 = v16;
  if (!v16)
  {
    Value = CFDictionaryGetValue(*(v14 + 15), inEntity);
    *v2 = Value;
    if (Value)
    {
      v8 = 0;
    }

    else
    {
      v8 = -10842;
    }
  }

  if (v15 == 1)
  {
    CADeprecated::CAMutex::Unlock(v14);
  }

  if (v11)
  {
    return 0;
  }

  return v8;
}

void sub_237244428(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ObjectTreeCache::ObjectTreeAccessor::~ObjectTreeAccessor(va);
  _Unwind_Resume(a1);
}

OSStatus MIDIEndpointGetEntity(MIDIEndpointRef inEndpoint, MIDIEntityRef *outEntity)
{
  v2 = outEntity;
  if (gInMIDIServer)
  {
    v4 = MIDIServer::defaultInstance(*&inEndpoint) + 2;
    v5 = (*(*v4 + 16))(v4);
    if (v2)
    {
      v6 = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<MIDIEndpoint>::sRTTI, inEndpoint);
      if (v6)
      {
        v7 = *(v6 + 16);
        *v2 = 0;
        if (v7)
        {
          v8 = 0;
          *v2 = *(v7 + 8);
        }

        else
        {
          v8 = -10842;
        }

        LOBYTE(v2) = 1;
        if (!v5)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }

      LOBYTE(v2) = 0;
    }

    v8 = 0;
    if (!v5)
    {
LABEL_21:
      if ((v2 & 1) == 0)
      {
        return -50;
      }

      return v8;
    }

LABEL_20:
    (*(*v4 + 24))(v4);
    goto LABEL_21;
  }

  v17 = 0;
  v9 = MIDIProcess::CheckInitialization(&v17, outEntity);
  if (v17)
  {
    return 0;
  }

  v16 = 0;
  ObjectTreeCache::ObjectTreeAccessor::ObjectTreeAccessor(&v14, v9 + 36, v9, &v16, v10);
  v8 = 0;
  v11 = v16;
  if (!v16)
  {
    Value = CFDictionaryGetValue(*(v14 + 15), inEndpoint);
    *v2 = Value;
    if (Value)
    {
      v8 = 0;
    }

    else
    {
      v8 = -10842;
    }
  }

  if (v15 == 1)
  {
    CADeprecated::CAMutex::Unlock(v14);
  }

  if (v11)
  {
    return 0;
  }

  return v8;
}

void sub_237244638(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ObjectTreeCache::ObjectTreeAccessor::~ObjectTreeAccessor(va);
  _Unwind_Resume(a1);
}

OSStatus MIDIClientCreate(CFStringRef name, MIDINotifyProc notifyProc, void *notifyRefCon, MIDIClientRef *outClient)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = __MIDIClientCreate_block_invoke;
  v5[3] = &__block_descriptor_tmp_3165;
  v5[4] = notifyProc;
  v5[5] = notifyRefCon;
  return MIDIClientCreateWithBlockInternal(name, outClient, v5);
}

uint64_t __MIDIClientCreate_block_invoke(uint64_t result, uint64_t a2)
{
  v2 = *(result + 32);
  if (v2)
  {
    return v2(a2, *(result + 40));
  }

  return result;
}

uint64_t MIDIClientCreateWithBlockInternal(uint64_t a1, int *a2, uint64_t a3)
{
  v29 = *MEMORY[0x277D85DE8];
  gMIDIClientLog();
  v6 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316162;
    *&buf[4] = "MIDIClientLib.cpp";
    v23 = 1024;
    v24 = 663;
    v25 = 2080;
    v26 = "MIDIClientCreateWithBlockInternal";
    v27 = 2112;
    *v28 = a1;
    *&v28[8] = 2048;
    *&v28[10] = a3;
    _os_log_impl(&dword_2371C2000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d ->%s %@, block %p", buf, 0x30u);
  }

  if (gInMIDIServer)
  {
    v8 = _MIDIClientCreate(0, a1, a2);
    if (!a2)
    {
LABEL_11:
      gMIDIClientLog();
      v13 = gMIDIClientLog(void)::clilib;
      if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
      {
        ErrorFormatter::ErrorFormatter(v21, v8);
        *buf = 136315906;
        *&buf[4] = "MIDIClientLib.cpp";
        v23 = 1024;
        v24 = 679;
        v25 = 2080;
        v26 = "MIDIClientCreateWithBlockInternal";
        v27 = 2080;
        *v28 = v21;
        v14 = "%25s:%-5d <-%s: (null ptr)%s";
        v15 = v13;
        v16 = 38;
LABEL_15:
        _os_log_impl(&dword_2371C2000, v15, OS_LOG_TYPE_DEBUG, v14, buf, v16);
        return v8;
      }

      return v8;
    }
  }

  else
  {
    if (!a2)
    {
      v8 = 4294967246;
      goto LABEL_11;
    }

    v20 = 0;
    v9 = MIDIProcess::CheckInitialization(&v20, v7);
    v8 = v20;
    if (!v20)
    {
      v10 = v9;
      v11 = ClientInterface::global(v9);
      v8 = ((*v11)[2])(v11, a1, a2);
      v20 = v8;
      if (!v8)
      {
        v12 = v10[7];
        *buf = v10 + 7;
        buf[8] = (*(v12 + 16))(v10 + 7);
        operator new();
      }
    }
  }

  gMIDIClientLog();
  v17 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
  {
    v18 = *a2;
    ErrorFormatter::ErrorFormatter(v21, v8);
    *buf = 136316162;
    *&buf[4] = "MIDIClientLib.cpp";
    v23 = 1024;
    v24 = 679;
    v25 = 2080;
    v26 = "MIDIClientCreateWithBlockInternal";
    v27 = 1024;
    *v28 = v18;
    *&v28[4] = 2080;
    *&v28[6] = v21;
    v14 = "%25s:%-5d <-%s: 0x%x%s";
    v15 = v17;
    v16 = 44;
    goto LABEL_15;
  }

  return v8;
}

void sub_237244BB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

OSStatus MIDIClientDispose(MIDIClientRef client)
{
  v1 = *&client;
  v41 = *MEMORY[0x277D85DE8];
  gMIDIClientLog();
  v2 = &unk_27DE98000;
  v3 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    *&buf[4] = "MIDIClientLib.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 688;
    *&buf[18] = 2080;
    *&buf[20] = "MIDIClientDispose";
    v39 = 1024;
    LODWORD(v40) = v1;
    _os_log_impl(&dword_2371C2000, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d ->%s 0x%x", buf, 0x22u);
  }

  if (gInMIDIServer)
  {
    v5 = _MIDIClientDispose(v1);
    goto LABEL_55;
  }

  v36 = 0;
  v6 = MIDIProcess::CheckInitialization(&v36, v4);
  v5 = v36;
  if (!v36)
  {
    v7 = v6;
    v8 = (v6 + 7);
    v9 = (*(v6[7] + 16))(v6 + 7);
    v11 = v7[18];
    v10 = v7[19];
    if (v11 != v10)
    {
      while (**v11 != v1)
      {
        v11 += 16;
        if (v11 == v10)
        {
          v11 = v7[19];
          break;
        }
      }
    }

    if (v10 != v11)
    {
      if (v11 + 16 == v10)
      {
        v14 = v11;
      }

      else
      {
        do
        {
          v12 = *(v11 + 16);
          *(v11 + 16) = 0;
          *(v11 + 24) = 0;
          v13 = *(v11 + 8);
          *v11 = v12;
          if (v13)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v13);
          }

          v14 = v11 + 16;
          v15 = v11 + 32;
          v11 += 16;
        }

        while (v15 != v10);
        v10 = v7[19];
      }

      while (v10 != v14)
      {
        v16 = *(v10 - 8);
        if (v16)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        }

        v10 -= 16;
      }

      v7[19] = v14;
    }

    if (v9)
    {
      ((*v8)[3])(v8);
    }

    v18 = v7 + 24;
    v17 = v7[24];
    *buf = v7 + 24;
    v19 = (*(v17 + 16))(v7 + 24);
    buf[8] = v19;
    v20 = v7[22] - v7[21];
    if ((v20 >> 3) < 1)
    {
      if (!v19)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v21 = (v20 >> 3) & 0x7FFFFFFF;
      do
      {
        v22 = (v7[21] + 8 * (v21 - 1));
        v23 = *v22;
        if (**v22 == v1)
        {
          atomic_fetch_add(v7 + 70, 1u);
          while (*(v7 + 71))
          {
            usleep(0x1F4u);
          }

          v24 = v7[22];
          v25 = v24 - (v22 + 1);
          if (v24 != (v22 + 1))
          {
            memmove(v22, v22 + 1, v24 - (v22 + 1));
          }

          v7[22] = v22 + v25;
          LocalMIDIReceiver::~LocalMIDIReceiver(v23);
          v19 = MEMORY[0x2383C8250]();
          atomic_fetch_add(v7 + 70, 0xFFFFFFFF);
        }
      }

      while (v21-- > 1);
      v2 = &unk_27DE98000;
      if ((buf[8] & 1) == 0)
      {
        goto LABEL_39;
      }

      v18 = *buf;
    }

    v19 = (*(*v18 + 24))(v18);
LABEL_39:
    v27 = ClientInterface::global(v19);
    v5 = ((*v27)[3])(v27, v1);
    memset(buf, 0, 24);
    LocalClientList::Copy(v8, buf);
    if (*&buf[8] - *buf == 16)
    {
      v28 = **v7[18];
      v37[0] = buf;
      std::vector<std::shared_ptr<LocalMIDIClient>>::__destroy_vector::operator()[abi:ne200100](v37);
      if (v28)
      {
        v29 = gClientState == v28;
      }

      else
      {
        v29 = 0;
      }

      if (v29)
      {
        gSysexSender();
        v30 = gSysexSender(void)::ssxsnd;
        if (os_log_type_enabled(gSysexSender(void)::ssxsnd, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          *&buf[4] = "SysexSender.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 233;
          _os_log_impl(&dword_2371C2000, v30, OS_LOG_TYPE_DEBUG, "%25s:%-5d [?] SysexSenderShutDown()", buf, 0x12u);
        }

        gAborting = 1;
        std::mutex::lock(&stru_27DE96DE8);
        v31 = SysexSender<MIDISysexSendRequest,false>::sInstance;
        if (SysexSender<MIDISysexSendRequest,false>::sInstance)
        {
          std::mutex::lock(&gCreateDisposeLock);
          *(v31 + 123) = 1;
          CADeprecated::XThread::Stop(v31);
          SysexSender<MIDISysexSendRequest,false>::sInstance = 0;
          std::mutex::unlock(&gCreateDisposeLock);
        }

        v32 = SysexSender<MIDISysexSendRequestUMP,false>::sInstance;
        if (SysexSender<MIDISysexSendRequestUMP,false>::sInstance)
        {
          std::mutex::lock(&gCreateDisposeLockUMP);
          *(v32 + 123) = 1;
          CADeprecated::XThread::Stop(v32);
          SysexSender<MIDISysexSendRequestUMP,false>::sInstance = 0;
          std::mutex::unlock(&gCreateDisposeLockUMP);
        }

        v33 = SysexSender<MIDISysexSendRequestUMP,true>::sInstance;
        if (SysexSender<MIDISysexSendRequestUMP,true>::sInstance)
        {
          std::mutex::lock(&gCreateDisposeLockUMP8);
          *(v33 + 123) = 1;
          CADeprecated::XThread::Stop(v33);
          SysexSender<MIDISysexSendRequestUMP,true>::sInstance = 0;
          std::mutex::unlock(&gCreateDisposeLockUMP8);
        }

        MIDIPortDispose(dword_27DE96DE4);
        dword_27DE96DE4 = 0;
        MIDIClientDispose(gClientState);
        gClientState = 0;
        gAborting = 0;
        std::mutex::unlock(&stru_27DE96DE8);
      }
    }

    else
    {
      v37[0] = buf;
      std::vector<std::shared_ptr<LocalMIDIClient>>::__destroy_vector::operator()[abi:ne200100](v37);
    }
  }

LABEL_55:
  gMIDIClientLog();
  v34 = *(v2 + 103);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
  {
    ErrorFormatter::ErrorFormatter(v37, v5);
    *buf = 136315906;
    *&buf[4] = "MIDIClientLib.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 701;
    *&buf[18] = 2080;
    *&buf[20] = "MIDIClientDispose";
    v39 = 2080;
    v40 = v37;
    _os_log_impl(&dword_2371C2000, v34, OS_LOG_TYPE_DEBUG, "%25s:%-5d <-%s%s", buf, 0x26u);
  }

  return v5;
}

void sub_2372451E8(_Unwind_Exception *a1)
{
  std::mutex::unlock(&gCreateDisposeLockUMP8);
  std::mutex::unlock(&stru_27DE96DE8);
  _Unwind_Resume(a1);
}

uint64_t MIDICapabilityGetDiscoveryMUID(MIDIServer *a1, int *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v9 = 0;
  if (gInMIDIServer)
  {
    DiscoveryMUID = _MIDICapabilityGetDiscoveryMUID(a1);
    v3 = 0;
  }

  else
  {
    v4 = MIDIProcess::CheckInitialization(&v9, a2);
    v3 = v9;
    if (v9)
    {
      DiscoveryMUID = 0;
    }

    else
    {
      v5 = ClientInterface::global(v4);
      v6 = ((*v5)[23])(v5);
      if ((v6 & 0x100000000) != 0)
      {
        v3 = 0;
      }

      else
      {
        v3 = v6;
      }

      if ((v6 & 0x100000000) != 0)
      {
        DiscoveryMUID = v6;
      }

      else
      {
        DiscoveryMUID = 0;
      }
    }
  }

  gMIDIClientLog();
  v7 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
  {
    ErrorFormatter::ErrorFormatter(v10, v3);
    *buf = 136315906;
    v12 = "MIDIClientLib.cpp";
    v13 = 1024;
    v14 = 720;
    v15 = 2080;
    v16 = "MIDICapabilityGetDiscoveryMUID";
    v17 = 2080;
    v18 = v10;
    _os_log_impl(&dword_2371C2000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d <-%s%s", buf, 0x26u);
  }

  return DiscoveryMUID;
}

uint64_t MIDICapabilityMUIDCollides(MIDIServer *a1, int *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v10 = 0;
  if (gInMIDIServer)
  {
    v3 = _MIDICapabilityMUIDCollides(a1);
    v4 = 0;
  }

  else
  {
    v5 = MIDIProcess::CheckInitialization(&v10, a2);
    v4 = v10;
    if (v10)
    {
      v3 = 0;
    }

    else
    {
      v6 = ClientInterface::global(v5);
      v7 = ((*v6)[24])(v6, a1);
      if ((v7 & 0x100000000) != 0)
      {
        v4 = 0;
      }

      else
      {
        v4 = v7;
      }

      v3 = (v7 & 0x100000000) != 0 && v7 != 0;
    }
  }

  gMIDIClientLog();
  v8 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
  {
    ErrorFormatter::ErrorFormatter(v11, v4);
    *buf = 136315906;
    v13 = "MIDIClientLib.cpp";
    v14 = 1024;
    v15 = 739;
    v16 = 2080;
    v17 = "MIDICapabilityMUIDCollides";
    v18 = 2080;
    v19 = v11;
    _os_log_impl(&dword_2371C2000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d <-%s%s", buf, 0x26u);
  }

  return v3;
}

OSStatus MIDIInputPortCreate(MIDIClientRef client, CFStringRef portName, MIDIReadProc readProc, void *refCon, MIDIPortRef *outPort)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 0x40000000;
  v6[2] = __MIDIInputPortCreate_block_invoke;
  v6[3] = &__block_descriptor_tmp_5;
  v6[4] = readProc;
  v6[5] = refCon;
  return MIDIInputPortCreateInternal(*&client, portName, 1, outPort, v6);
}

uint64_t MIDIInputPortCreateInternal(MIDIServer *a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5)
{
  v35 = *MEMORY[0x277D85DE8];
  gMIDIClientLog();
  v10 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316418;
    v26 = "MIDIClientLib.cpp";
    v27 = 1024;
    v28 = 749;
    v29 = 2080;
    v30 = "MIDIInputPortCreateInternal";
    v31 = 1024;
    *v32 = a1;
    *&v32[4] = 2112;
    *&v32[6] = a2;
    v33 = 2048;
    v34 = a5;
    _os_log_impl(&dword_2371C2000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d ->%s 0x%x %@, block %p", buf, 0x36u);
  }

  if (gInMIDIServer)
  {
    v12 = _MIDIInputPortCreate(a1);
    if (!a4)
    {
LABEL_13:
      gMIDIClientLog();
      v21 = gMIDIClientLog(void)::clilib;
      if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
      {
        ErrorFormatter::ErrorFormatter(v24, v12);
        *buf = 136315906;
        v26 = "MIDIClientLib.cpp";
        v27 = 1024;
        v28 = 759;
        v29 = 2080;
        v30 = "MIDIInputPortCreateInternal";
        v31 = 2080;
        *v32 = v24;
        v18 = "%25s:%-5d <-%s: (null ptr)%s";
        v19 = v21;
        v20 = 38;
        goto LABEL_15;
      }

      return v12;
    }
  }

  else
  {
    if (!a4)
    {
      v12 = 4294967246;
      goto LABEL_13;
    }

    v23 = 0;
    v13 = MIDIProcess::CheckInitialization(&v23, v11);
    v12 = v23;
    if (!v23)
    {
      v14 = v13;
      v15 = ClientInterface::global(v13);
      v12 = ((*v15)[42])(v15, a1, a2, a3, a4);
      if (!v12)
      {
        LocalMIDIReceiverList::Add((v14 + 21));
      }
    }
  }

  gMIDIClientLog();
  v16 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
  {
    v17 = *a4;
    ErrorFormatter::ErrorFormatter(v24, v12);
    *buf = 136316162;
    v26 = "MIDIClientLib.cpp";
    v27 = 1024;
    v28 = 759;
    v29 = 2080;
    v30 = "MIDIInputPortCreateInternal";
    v31 = 1024;
    *v32 = v17;
    *&v32[4] = 2080;
    *&v32[6] = v24;
    v18 = "%25s:%-5d <-%s: 0x%x%s";
    v19 = v16;
    v20 = 44;
LABEL_15:
    _os_log_impl(&dword_2371C2000, v19, OS_LOG_TYPE_DEBUG, v18, buf, v20);
  }

  return v12;
}

OSStatus MIDIOutputPortCreate(MIDIClientRef client, CFStringRef portName, MIDIPortRef *outPort)
{
  v5 = *&client;
  *&v27[13] = *MEMORY[0x277D85DE8];
  gMIDIClientLog();
  v6 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316162;
    v21 = "MIDIClientLib.cpp";
    v22 = 1024;
    v23 = 790;
    v24 = 2080;
    v25 = "MIDIOutputPortCreate";
    v26 = 1024;
    *v27 = v5;
    v27[2] = 2112;
    *&v27[3] = portName;
    _os_log_impl(&dword_2371C2000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d ->%s 0x%x %@", buf, 0x2Cu);
  }

  if (gInMIDIServer)
  {
    v8 = _MIDIOutputPortCreate(v5);
    if (!outPort)
    {
LABEL_12:
      gMIDIClientLog();
      v16 = gMIDIClientLog(void)::clilib;
      if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
      {
        ErrorFormatter::ErrorFormatter(v19, v8);
        *buf = 136315906;
        v21 = "MIDIClientLib.cpp";
        v22 = 1024;
        v23 = 798;
        v24 = 2080;
        v25 = "MIDIOutputPortCreate";
        v26 = 2080;
        *v27 = v19;
        v13 = "%25s:%-5d <-%s: (null ptr)%s";
        v14 = v16;
        v15 = 38;
        goto LABEL_14;
      }

      return v8;
    }
  }

  else
  {
    if (!outPort)
    {
      v8 = -50;
      goto LABEL_12;
    }

    v18 = 0;
    v9 = MIDIProcess::CheckInitialization(&v18, v7);
    v8 = v18;
    if (!v18)
    {
      v10 = ClientInterface::global(v9);
      v8 = ((*v10)[4])(v10, v5, portName, outPort);
    }
  }

  gMIDIClientLog();
  v11 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
  {
    v12 = *outPort;
    ErrorFormatter::ErrorFormatter(v19, v8);
    *buf = 136316162;
    v21 = "MIDIClientLib.cpp";
    v22 = 1024;
    v23 = 798;
    v24 = 2080;
    v25 = "MIDIOutputPortCreate";
    v26 = 1024;
    *v27 = v12;
    v27[2] = 2080;
    *&v27[3] = v19;
    v13 = "%25s:%-5d <-%s: 0x%x%s";
    v14 = v11;
    v15 = 44;
LABEL_14:
    _os_log_impl(&dword_2371C2000, v14, OS_LOG_TYPE_DEBUG, v13, buf, v15);
  }

  return v8;
}

OSStatus MIDIPortDispose(MIDIPortRef port)
{
  v1 = *&port;
  v21 = *MEMORY[0x277D85DE8];
  gMIDIClientLog();
  v2 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v14 = "MIDIClientLib.cpp";
    v15 = 1024;
    v16 = 805;
    v17 = 2080;
    v18 = "MIDIPortDispose";
    v19 = 1024;
    LODWORD(v20) = v1;
    _os_log_impl(&dword_2371C2000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d ->%s 0x%x", buf, 0x22u);
  }

  if (gInMIDIServer)
  {
    v4 = _MIDIPortDispose(v1);
  }

  else
  {
    v11 = 0;
    v5 = MIDIProcess::CheckInitialization(&v11, v3);
    v6 = v11;
    if (v11)
    {
      goto LABEL_8;
    }

    v7 = LocalMIDIReceiverList::Remove((v5 + 21), v1);
    v8 = ClientInterface::global(v7);
    v4 = ((*v8)[5])(v8, v1);
  }

  v6 = v4;
LABEL_8:
  gMIDIClientLog();
  v9 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
  {
    ErrorFormatter::ErrorFormatter(v12, v6);
    *buf = 136315906;
    v14 = "MIDIClientLib.cpp";
    v15 = 1024;
    v16 = 813;
    v17 = 2080;
    v18 = "MIDIPortDispose";
    v19 = 2080;
    v20 = v12;
    _os_log_impl(&dword_2371C2000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d <-%s%s", buf, 0x26u);
  }

  return v6;
}

OSStatus MIDIPortConnectSource(MIDIPortRef port, MIDIEndpointRef source, void *connRefCon)
{
  v4 = *&source;
  v5 = *&port;
  v26 = *MEMORY[0x277D85DE8];
  gMIDIClientLog();
  v6 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316418;
    v17 = "MIDIClientLib.cpp";
    v18 = 1024;
    v19 = 820;
    v20 = 2080;
    v21 = "MIDIPortConnectSource";
    v22 = 1024;
    *v23 = v5;
    *&v23[4] = 1024;
    *&v23[6] = v4;
    v24 = 2048;
    v25 = connRefCon;
    _os_log_impl(&dword_2371C2000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d ->%s 0x%x src 0x%x, connRefCon %p", buf, 0x32u);
  }

  if (gInMIDIServer)
  {
    v8 = _MIDIPortConnectSource(v5, v4, connRefCon);
  }

  else
  {
    v14 = 0;
    v9 = MIDIProcess::CheckInitialization(&v14, v7);
    v8 = v14;
    if (!v14)
    {
      v10 = v9;
      v11 = ClientInterface::global(v9);
      v8 = ((*v11)[6])(v11, v5, v4, connRefCon);
      if (!v8)
      {
        LocalMIDIReceiverList::ReceiverConnectEndpoint((v10 + 21), v5, v4, connRefCon, 1);
      }
    }
  }

  gMIDIClientLog();
  v12 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
  {
    ErrorFormatter::ErrorFormatter(v15, v8);
    *buf = 136315906;
    v17 = "MIDIClientLib.cpp";
    v18 = 1024;
    v19 = 829;
    v20 = 2080;
    v21 = "MIDIPortConnectSource";
    v22 = 2080;
    *v23 = v15;
    _os_log_impl(&dword_2371C2000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d <-%s%s", buf, 0x26u);
  }

  return v8;
}

OSStatus MIDIPortDisconnectSource(MIDIPortRef port, MIDIEndpointRef source)
{
  v2 = *&source;
  v3 = *&port;
  *&v22[5] = *MEMORY[0x277D85DE8];
  gMIDIClientLog();
  v4 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316162;
    v16 = "MIDIClientLib.cpp";
    v17 = 1024;
    v18 = 836;
    v19 = 2080;
    v20 = "MIDIPortDisconnectSource";
    v21 = 1024;
    *v22 = v3;
    v22[2] = 1024;
    *&v22[3] = v2;
    _os_log_impl(&dword_2371C2000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d ->%s 0x%x 0x%x", buf, 0x28u);
  }

  if (gInMIDIServer)
  {
    v6 = _MIDIPortDisconnectSource(v3, v2);
  }

  else
  {
    v13 = 0;
    v7 = MIDIProcess::CheckInitialization(&v13, v5);
    v8 = v13;
    if (v13)
    {
      goto LABEL_8;
    }

    v9 = LocalMIDIReceiverList::ReceiverConnectEndpoint((v7 + 21), v3, v2, 0, 0);
    v10 = ClientInterface::global(v9);
    v6 = ((*v10)[7])(v10, v3, v2);
  }

  v8 = v6;
LABEL_8:
  gMIDIClientLog();
  v11 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
  {
    ErrorFormatter::ErrorFormatter(v14, v8);
    *buf = 136315906;
    v16 = "MIDIClientLib.cpp";
    v17 = 1024;
    v18 = 844;
    v19 = 2080;
    v20 = "MIDIPortDisconnectSource";
    v21 = 2080;
    *v22 = v14;
    _os_log_impl(&dword_2371C2000, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d <-%s%s", buf, 0x26u);
  }

  return v8;
}