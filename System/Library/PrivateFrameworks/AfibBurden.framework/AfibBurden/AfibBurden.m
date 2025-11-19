id ab_get_framework_log()
{
  if (ab_get_framework_log_onceToken != -1)
  {
    ab_get_framework_log_cold_1();
  }

  v1 = ab_get_framework_log_log;

  return v1;
}

uint64_t __ab_get_framework_log_block_invoke()
{
  ab_get_framework_log_log = os_log_create("com.apple.Health.AFibBurden", "hid-framework");

  return MEMORY[0x2821F96F8]();
}

void sub_23E83F20C(_Unwind_Exception *a1)
{
  v3 = v2;
  MEMORY[0x23EF15D50](v3, 0x1020C40C76FD9F3);

  _Unwind_Resume(a1);
}

void sub_23E83F608(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28)
{
  if (__p)
  {
    a28 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&a15, 8);
  if (a21)
  {
    a22 = a21;
    operator delete(a21);
  }

  _Block_object_dispose((v31 - 152), 8);
  std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](&a15);
  *(v31 - 152) = &a24;
  std::vector<Tellurium::tellurium_input_t>::__destroy_vector::operator()[abi:ne200100]((v31 - 152));

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy_(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  result = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 72) = result;
  return result;
}

__n128 __Block_byref_object_copy__317(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void __Block_byref_object_dispose__318(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

uint64_t std::vector<std::vector<double>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<double>>::__emplace_back_slow_path<std::vector<double> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<double>>::__construct_one_at_end[abi:ne200100]<std::vector<double> const&>(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t std::vector<Tellurium::tellurium_input_t>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<Tellurium::tellurium_input_t>::__emplace_back_slow_path<Tellurium::tellurium_input_t const&>(a1, a2);
  }

  else
  {
    std::vector<Tellurium::tellurium_input_t>::__construct_one_at_end[abi:ne200100]<Tellurium::tellurium_input_t const&>(a1, a2);
    result = v3 + 48;
  }

  *(a1 + 8) = result;
  return result;
}

void sub_23E83FDF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a19);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a21);
  std::ofstream::~ofstream(&a38, MEMORY[0x277D82810]);
  MEMORY[0x23EF15CC0](&STACK[0x240]);
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::ofstream::basic_ofstream(uint64_t *a1, uint64_t *a2)
{
  a1[58] = 0;
  v4 = MEMORY[0x277D82860] + 64;
  a1[52] = MEMORY[0x277D82860] + 64;
  v5 = *(MEMORY[0x277D82810] + 16);
  v6 = *(MEMORY[0x277D82810] + 8);
  *a1 = v6;
  *(a1 + *(v6 - 24)) = v5;
  v7 = (a1 + *(*a1 - 24));
  std::ios_base::init(v7, a1 + 1);
  v8 = MEMORY[0x277D82860] + 24;
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  *a1 = v8;
  a1[52] = v4;
  MEMORY[0x23EF15BF0](a1 + 1);
  if (*(a2 + 23) < 0)
  {
    v9 = *a2;
  }

  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_23E8400C0(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x23EF15CC0](v1);
  _Unwind_Resume(a1);
}

uint64_t nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::emplace_back<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(uint64_t a1, uint64_t a2)
{
  if (!*a1)
  {
    *a1 = 2;
    operator new();
  }

  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v9 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::type_name(a1);
    std::string::basic_string[abi:ne200100]<0>(&v12, v9);
    v10 = std::string::insert(&v12, 0, "cannot use emplace_back() with ");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v14 = v10->__r_.__value_.__r.__words[2];
    v13 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    nlohmann::detail::type_error::create(311, &v13, exception);
  }

  v4 = *(a1 + 8);
  v5 = *(v4 + 8);
  if (v5 >= *(v4 + 16))
  {
    v6 = std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(v4, a2);
  }

  else
  {
    *v5 = *a2;
    *(v5 + 8) = *(a2 + 8);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2);
    *a2 = 0;
    *(a2 + 8) = 0;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v5);
    v6 = v5 + 16;
  }

  *(v4 + 8) = v6;
  return v6 - 16;
}

void sub_23E840250(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

unsigned __int8 *nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(unsigned __int8 *a1)
{
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a1);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(a1 + 1, *a1);
  return a1;
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::emplace<char const(&)[5],char const*>(uint64_t a1)
{
  if (!*a1)
  {
    *a1 = 1;
    operator new();
  }

  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__emplace_unique_impl<char const(&)[5],char const*>();
  }

  exception = __cxa_allocate_exception(0x20uLL);
  v4 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::type_name(a1);
  std::string::basic_string[abi:ne200100]<0>(&v9, v4);
  v5 = std::string::insert(&v9, 0, "cannot use emplace() with ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v8 = v5->__r_.__value_.__r.__words[2];
  v7 = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  nlohmann::detail::type_error::create(311, &v7, exception);
}

void sub_23E840444(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
    if ((v23 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v22);
  goto LABEL_8;
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::emplace<char const(&)[10],double>(uint64_t a1)
{
  if (!*a1)
  {
    *a1 = 1;
    operator new();
  }

  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__emplace_unique_impl<char const(&)[10],double>();
  }

  exception = __cxa_allocate_exception(0x20uLL);
  v4 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::type_name(a1);
  std::string::basic_string[abi:ne200100]<0>(&v9, v4);
  v5 = std::string::insert(&v9, 0, "cannot use emplace() with ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v8 = v5->__r_.__value_.__r.__words[2];
  v7 = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  nlohmann::detail::type_error::create(311, &v7, exception);
}

void sub_23E840604(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
    if ((v23 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v22);
  goto LABEL_8;
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::emplace<char const(&)[13],BOOL>(uint64_t a1)
{
  if (!*a1)
  {
    *a1 = 1;
    operator new();
  }

  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__emplace_unique_impl<char const(&)[13],BOOL>();
  }

  exception = __cxa_allocate_exception(0x20uLL);
  v4 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::type_name(a1);
  std::string::basic_string[abi:ne200100]<0>(&v9, v4);
  v5 = std::string::insert(&v9, 0, "cannot use emplace() with ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v8 = v5->__r_.__value_.__r.__words[2];
  v7 = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  nlohmann::detail::type_error::create(311, &v7, exception);
}

void sub_23E8407C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
    if ((v23 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v22);
  goto LABEL_8;
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::emplace<char const(&)[15],nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(uint64_t a1)
{
  if (!*a1)
  {
    *a1 = 1;
    operator new();
  }

  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__emplace_unique_impl<char const(&)[15],nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>();
  }

  exception = __cxa_allocate_exception(0x20uLL);
  v4 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::type_name(a1);
  std::string::basic_string[abi:ne200100]<0>(&v9, v4);
  v5 = std::string::insert(&v9, 0, "cannot use emplace() with ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v8 = v5->__r_.__value_.__r.__words[2];
  v7 = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  nlohmann::detail::type_error::create(311, &v7, exception);
}

void sub_23E840984(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
    if ((v23 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v22);
  goto LABEL_8;
}

void nlohmann::operator<<(void *a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = a1 + *(*a1 - 24);
  v2 = *(v1 + 3);
  *(v1 + 3) = 0;
  operator new();
}

void sub_23E840BB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::locale a11, char a12)
{
  std::locale::~locale(&a11);
  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  _Unwind_Resume(a1);
}

void std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<double>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::vector<double>>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

uint64_t std::ofstream::~ofstream(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  MEMORY[0x23EF15C00](a1 + 1);

  return std::ostream::~ostream();
}

unsigned __int8 *nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(unsigned __int8 *result)
{
  v1 = *result;
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      if (*(result + 1))
      {
        return result;
      }

      v2 = "m_type != value_t::string or m_value.string != nullptr";
      v3 = 1222;
    }

    else
    {
      if (v1 != 8 || *(result + 1))
      {
        return result;
      }

      v2 = "m_type != value_t::binary or m_value.binary != nullptr";
      v3 = 1223;
    }

LABEL_15:
    __assert_rtn("assert_invariant", "json.hpp", v3, v2);
  }

  if (v1 == 1)
  {
    if (*(result + 1))
    {
      return result;
    }

    v2 = "m_type != value_t::object or m_value.object != nullptr";
    v3 = 1220;
    goto LABEL_15;
  }

  if (v1 == 2 && !*(result + 1))
  {
    v2 = "m_type != value_t::array or m_value.array != nullptr";
    v3 = 1221;
    goto LABEL_15;
  }

  return result;
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(uint64_t *a1, int a2)
{
  v29 = 0;
  v30 = 0;
  v31 = 0;
  if (a2 == 1)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::reserve(&v29, *(*a1 + 16));
    v6 = *a1 + 8;
    v7 = **a1;
    if (v7 != v6)
    {
      v8 = v30;
      do
      {
        if (v8 >= v31)
        {
          v8 = std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(&v29, v7 + 7);
        }

        else
        {
          *v8 = *(v7 + 56);
          *(v8 + 8) = v7[8];
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v7 + 56);
          *(v7 + 56) = 0;
          v7[8] = 0;
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v8);
          v8 += 16;
        }

        v30 = v8;
        v9 = v7[1];
        if (v9)
        {
          do
          {
            v10 = v9;
            v9 = *v9;
          }

          while (v9);
        }

        else
        {
          do
          {
            v10 = v7[2];
            v11 = *v10 == v7;
            v7 = v10;
          }

          while (!v11);
        }

        v7 = v10;
      }

      while (v10 != v6);
    }
  }

  else if (a2 == 2)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::reserve(&v29, (*(*a1 + 8) - **a1) >> 4);
    v4 = **a1;
    v5 = *(*a1 + 8);
    while (v4 != v5)
    {
      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::push_back[abi:ne200100](&v29, v4);
      v4 += 16;
    }
  }

  for (i = v30; v29 != v30; i = v30)
  {
    v14 = *(i - 16);
    v13 = i - 16;
    LOBYTE(v27) = v14;
    v28 = *(v13 + 8);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v13);
    *v13 = 0;
    *(v13 + 8) = 0;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v27);
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__base_destruct_at_end[abi:ne200100](&v29, (v30 - 16));
    if (v27 == 1)
    {
      v18 = v28;
      v19 = (v28 + 1);
      v20 = *v28;
      if (*v28 != (v28 + 1))
      {
        v21 = v30;
        do
        {
          if (v21 >= v31)
          {
            v21 = std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(&v29, v20 + 56);
          }

          else
          {
            *v21 = v20[56];
            *(v21 + 8) = *(v20 + 8);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v20 + 56);
            v20[56] = 0;
            *(v20 + 8) = 0;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
            v21 += 16;
          }

          v30 = v21;
          v22 = *(v20 + 1);
          if (v22)
          {
            do
            {
              v23 = v22;
              v22 = *v22;
            }

            while (v22);
          }

          else
          {
            do
            {
              v23 = *(v20 + 2);
              v11 = *v23 == v20;
              v20 = v23;
            }

            while (!v11);
          }

          v20 = v23;
        }

        while (v23 != v19);
        v18 = v28;
      }

      std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::destroy(v18, *(v18 + 8));
      *v18 = v18 + 8;
      *(v18 + 16) = 0;
      *(v18 + 8) = 0;
    }

    else if (v27 == 2)
    {
      v15 = v28;
      v16 = *v28;
      v17 = v28[1];
      if (*v28 != v17)
      {
        do
        {
          std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::push_back[abi:ne200100](&v29, v16);
          v16 += 16;
        }

        while (v16 != v17);
        v15 = v28;
        v16 = *v28;
      }

      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__base_destruct_at_end[abi:ne200100](v15, v16);
    }

    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v27);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v28, v27);
  }

  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v24 = *a1;
      if (*(*a1 + 23) < 0)
      {
        v26 = *v24;
        goto LABEL_49;
      }
    }

    else
    {
      if (a2 != 8)
      {
        goto LABEL_52;
      }

      v24 = *a1;
      v25 = **a1;
      if (v25)
      {
        v24[1] = v25;
        v26 = v25;
LABEL_49:
        operator delete(v26);
        goto LABEL_50;
      }
    }

LABEL_51:
    operator delete(v24);
    goto LABEL_52;
  }

  if (a2 == 1)
  {
    std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::destroy(*a1, *(*a1 + 8));
    goto LABEL_50;
  }

  if (a2 == 2)
  {
    v27 = *a1;
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&v27);
LABEL_50:
    v24 = *a1;
    goto LABEL_51;
  }

LABEL_52:
  v27 = &v29;
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&v27);
}

void *std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(result, a2);
    }

    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_23E841250(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 16))
  {
    result = std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(a1, a2);
  }

  else
  {
    *v4 = *a2;
    *(v4 + 8) = *(a2 + 8);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2);
    *a2 = 0;
    *(a2 + 8) = 0;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v4);
    result = v4 + 16;
  }

  *(a1 + 8) = result;
  return result;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278C5CB38, MEMORY[0x277D825F0]);
}

{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278C5CB38, MEMORY[0x277D825F0]);
}

{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278C5CB38, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v4 = a4;
    v6 = a2;
    v7 = a2;
    do
    {
      *v4 = *v7;
      *(v4 + 8) = *(v7 + 1);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v7);
      *v7 = 0;
      *(v7 + 1) = 0;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v4);
      v7 += 16;
      v4 = v14 + 16;
      v14 += 16;
    }

    while (v7 != a3);
    v12 = 1;
    if (v6 != a3)
    {
      v8 = v6;
      do
      {
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v6);
        v9 = *v8;
        v8 += 16;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v6 + 1, v9);
        v6 = v8;
      }

      while (v8 != a3);
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>>::~__exception_guard_exceptions[abi:ne200100](v11);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::__allocator_destroy[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::reverse_iterator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>,std::reverse_iterator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>>(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void std::__allocator_destroy[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::reverse_iterator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>,std::reverse_iterator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>>(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, unsigned __int8 *a5)
{
  if (a3 != a5)
  {
    v6 = a3 - 16;
    v7 = a3 - 16;
    do
    {
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v6);
      v8 = *v7;
      v7 -= 16;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v6 + 1, v8);
      v9 = v6 == a5;
      v6 = v7;
    }

    while (!v9);
  }
}

uint64_t std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 16;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((i - 16));
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(i - 8, *(i - 16));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(uint64_t a1, uint64_t a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(a1, v7);
  }

  v8 = 16 * v2;
  v15 = 0;
  v16 = v8;
  *(&v17 + 1) = 0;
  *v8 = *a2;
  *(v8 + 8) = *(a2 + 8);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2);
  *a2 = 0;
  *(a2 + 8) = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v8);
  *&v17 = v8 + 16;
  v9 = *(a1 + 8);
  v10 = v8 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(&v15);
  return v14;
}

void sub_23E841700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__base_destruct_at_end[abi:ne200100](uint64_t result, unsigned __int8 *a2)
{
  v3 = result;
  v4 = *(result + 8);
  if (v4 != a2)
  {
    v5 = v4 - 16;
    v6 = v4 - 16;
    do
    {
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v5);
      v7 = *v6;
      v6 -= 16;
      result = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v5 + 8, v7);
      v8 = v5 == a2;
      v5 = v6;
    }

    while (!v8);
  }

  *(v3 + 8) = a2;
  return result;
}

void std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::destroy(a1, *(a2 + 1));
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2 + 56);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(a2 + 64, a2[56]);
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

id **std::unique_ptr<Tellurium::tellurium_classifier_t>::reset[abi:ne200100](id ***a1, id **a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    Tellurium::tellurium_classifier_t::~tellurium_classifier_t(result);

    JUMPOUT(0x23EF15D50);
  }

  return result;
}

void Tellurium::tellurium_classifier_t::~tellurium_classifier_t(id **this)
{
  Tellurium::PredictorWrapper_t::~PredictorWrapper_t(this + 8);
  v2 = this[2];
  if (v2)
  {
    this[3] = v2;
    operator delete(v2);
  }
}

void std::vector<Tellurium::tellurium_input_t>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 6;
        v6 = v4;
        std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

uint64_t std::vector<std::vector<double>>::__construct_one_at_end[abi:ne200100]<std::vector<double> const&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(v3, *a2, a2[1], (a2[1] - *a2) >> 3);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t std::vector<std::vector<double>>::__emplace_back_slow_path<std::vector<double> const&>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<double>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 3);
  v8 = v16 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  std::__split_buffer<std::vector<double>>::~__split_buffer(&v14);
  return v8;
}

void sub_23E841AB0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<double>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<double>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_23E841B24(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<double>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, a2);
  }

  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
}

{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, a2);
  }

  std::vector<double>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<double>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::vector<double>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::vector<double>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<double>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

__n128 std::vector<Tellurium::tellurium_input_t>::__construct_one_at_end[abi:ne200100]<Tellurium::tellurium_input_t const&>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  std::vector<std::vector<double>>::__init_with_size[abi:ne200100]<std::vector<double>*,std::vector<double>*>(v4, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3));
  result = *(a2 + 24);
  *(v4 + 40) = *(a2 + 40);
  *(v4 + 24) = result;
  *(a1 + 8) = v4 + 48;
  return result;
}

uint64_t std::vector<Tellurium::tellurium_input_t>::__emplace_back_slow_path<Tellurium::tellurium_input_t const&>(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<Tellurium::tellurium_input_t>>(a1, v6);
  }

  v7 = 48 * v2;
  v15 = 0;
  v16 = v7;
  v17 = v7;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<std::vector<double>>::__init_with_size[abi:ne200100]<std::vector<double>*,std::vector<double>*>(v7, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3));
  v8 = *(a2 + 24);
  *(v7 + 40) = *(a2 + 40);
  *(v7 + 24) = v8;
  *&v17 = v17 + 48;
  v9 = *(a1 + 8);
  v10 = v16 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<Tellurium::tellurium_input_t>,Tellurium::tellurium_input_t*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<Tellurium::tellurium_input_t>::~__split_buffer(&v15);
  return v14;
}

void sub_23E841E78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<Tellurium::tellurium_input_t>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::vector<double>>::__init_with_size[abi:ne200100]<std::vector<double>*,std::vector<double>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<double>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_23E841EF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::vector<double>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<double>>>(a1, a2);
  }

  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<double>>,std::vector<double>*,std::vector<double>*,std::vector<double>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(v4, *v6, v6[1], (v6[1] - *v6) >> 3);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<double>>,std::vector<double>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<double>>,std::vector<double>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<double>>,std::vector<double>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<double>>,std::vector<double>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 24);
      v3 -= 24;
      v4 = v5;
      if (v5)
      {
        *(v1 - 16) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<Tellurium::tellurium_input_t>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<Tellurium::tellurium_input_t>,Tellurium::tellurium_input_t*>(uint64_t a1, void **a2, void **a3, uint64_t a4)
{
  v12 = a4;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *a4 = *v6;
      *(a4 + 16) = v6[2];
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
      v7 = *(v6 + 3);
      *(a4 + 40) = v6[5];
      *(a4 + 24) = v7;
      v6 += 6;
      a4 += 48;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      v13 = v5;
      std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](&v13);
      v5 += 6;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<Tellurium::tellurium_input_t>,Tellurium::tellurium_input_t*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<Tellurium::tellurium_input_t>,Tellurium::tellurium_input_t*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<Tellurium::tellurium_input_t>,Tellurium::tellurium_input_t*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<Tellurium::tellurium_input_t>,Tellurium::tellurium_input_t*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v1 -= 6;
    v3 = v1;
    std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](&v3);
  }
}

void **std::__split_buffer<Tellurium::tellurium_input_t>::~__split_buffer(void **a1)
{
  std::__split_buffer<Tellurium::tellurium_input_t>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<Tellurium::tellurium_input_t>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 48);
    *(a1 + 16) = v4;
    v5 = v4;
    std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](&v5);
  }
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(uint64_t a1, uint64_t a2, uint64_t a3, char a4, int a5)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  if (a3)
  {
    v9 = 32 * a3;
    v10 = (a2 + 16);
    while (1)
    {
      v11 = *v10;
      if (**v10 != 2 || *(*(v11 + 1) + 8) - **(v11 + 1) != 32 || *nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v11, 0) != 3)
      {
        break;
      }

      v10 += 4;
      v9 -= 32;
      if (!v9)
      {
        goto LABEL_7;
      }
    }

    v12 = 0;
    if ((a4 & 1) == 0)
    {
LABEL_11:
      if (a5 == 2)
      {
        v13 = 0;
      }

      else
      {
        v13 = v12;
      }

      if (a5 != 1)
      {
        LOBYTE(v12) = 1;
      }

      if ((v12 & 1) == 0)
      {
        exception = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(&v15, "cannot create object from initializer list");
        nlohmann::detail::type_error::create(301, &v15, exception);
      }

      if (!v13)
      {
LABEL_18:
        *a1 = 2;
        v15 = a2;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::create<std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::detail::json_ref<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>> const*,nlohmann::detail::json_ref<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>> const*>();
      }

LABEL_9:
      *a1 = 1;
      operator new();
    }
  }

  else
  {
LABEL_7:
    v12 = 1;
    if ((a4 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  if (!v12)
  {
    goto LABEL_18;
  }

  goto LABEL_9;
}

void nlohmann::detail::type_error::create(int a1@<W0>, uint64_t a2@<X1>, nlohmann::detail::exception *a3@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "type_error");
  nlohmann::detail::exception::name(a1, &v14);
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = *(a2 + 8);
  }

  v9 = std::string::append(&v14, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v16 = v9->__r_.__value_.__r.__words[2];
  *v15 = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (v13 < 0)
  {
    operator delete(__p);
  }

  if (v16 >= 0)
  {
    v11 = v15;
  }

  else
  {
    v11 = v15[0];
  }

  nlohmann::detail::exception::exception(a3, a1, v11);
  *a3 = &unk_2851187F8;
  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }
}

void sub_23E8425F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void nlohmann::detail::type_error::~type_error(std::exception *this)
{
  this->__vftable = &unk_285118820;
  MEMORY[0x23EF15B80](&this[2]);

  std::exception::~exception(this);
}

{
  this->__vftable = &unk_285118820;
  MEMORY[0x23EF15B80](&this[2]);
  std::exception::~exception(this);

  JUMPOUT(0x23EF15D50);
}

uint64_t nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](uint64_t a1, uint64_t a2)
{
  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v5 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::type_name(a1);
    std::string::basic_string[abi:ne200100]<0>(&v8, v5);
    v6 = std::string::insert(&v8, 0, "cannot use operator[] with a numeric argument with ");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v10 = v6->__r_.__value_.__r.__words[2];
    v9 = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    nlohmann::detail::type_error::create(305, &v9, exception);
  }

  return **(a1 + 8) + 16 * a2;
}

void sub_23E842894(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

const char *nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::type_name(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 > 9)
  {
    return "number";
  }

  else
  {
    return off_278C5CB90[v1];
  }
}

void nlohmann::detail::exception::name(int a1@<W1>, std::string *a2@<X8>)
{
  std::operator+<char>();
  v4 = std::string::append(&v12, ".");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v13.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v13.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&__p, a1);
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

  v8 = std::string::append(&v13, p_p, size);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v14.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v14.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = std::string::append(&v14, "] ");
  *a2 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }
}

void sub_23E842A3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (*(v26 - 41) < 0)
  {
    operator delete(*(v26 - 64));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

nlohmann::detail::exception *nlohmann::detail::exception::exception(nlohmann::detail::exception *this, int a2, const char *a3)
{
  *this = &unk_285118820;
  *(this + 2) = a2;
  MEMORY[0x23EF15B70](this + 16, a3);
  return this;
}

void nlohmann::detail::exception::~exception(std::exception *this)
{
  this->__vftable = &unk_285118820;
  MEMORY[0x23EF15B80](&this[2]);

  std::exception::~exception(this);
}

{
  this->__vftable = &unk_285118820;
  MEMORY[0x23EF15B80](&this[2]);
  std::exception::~exception(this);

  JUMPOUT(0x23EF15D50);
}

unsigned __int8 *nlohmann::detail::json_ref<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::moved_or_copied@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (*(a1 + 24) == 1)
  {
    *a2 = *v3;
    *(a2 + 8) = *(v3 + 8);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v3);
    *v3 = 0;
    *(v3 + 8) = 0;

    return nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2);
  }

  else
  {

    return nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(a2, v3);
  }
}

unsigned __int8 *nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(unsigned __int8 *a1, unsigned __int8 *a2)
{
  *a1 = *a2;
  *(a1 + 1) = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2);
  v4 = *a1;
  if (v4 > 4)
  {
    if (*a1 > 6u)
    {
      if (v4 != 7)
      {
        if (v4 == 8)
        {
          v7 = *(a2 + 1);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::create<nlohmann::byte_container_with_subtype<std::vector<unsigned char>>,nlohmann::byte_container_with_subtype<std::vector<unsigned char>> const&>();
        }

        goto LABEL_20;
      }
    }

    else if (v4 != 5 && v4 != 6)
    {
      goto LABEL_20;
    }

    v6 = *(a2 + 1);
    goto LABEL_19;
  }

  if (*a1 <= 2u)
  {
    if (v4 == 1)
    {
      v8 = *(a2 + 1);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::create<std::map<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::map<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>> const&>();
    }

    if (v4 == 2)
    {
      v5 = *(a2 + 1);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::create<std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>> const&>();
    }

    goto LABEL_20;
  }

  if (v4 == 3)
  {
    v9 = *(a2 + 1);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::create<std::string,std::string const&>();
  }

  if (v4 == 4)
  {
    v6 = a2[8];
LABEL_19:
    *(a1 + 1) = v6;
  }

LABEL_20:
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a1);
  return a1;
}

void *std::map<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::map[abi:ne200100](void *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__tree_node<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,void *> *,long>>>(a1, *a2, a2 + 1);
  return a1;
}

uint64_t std::map<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__tree_node<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,void *> *,long>>>(uint64_t result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>> const&>(v5, (v5 + 1), v4 + 4);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>> const&>(void *a1, uint64_t a2, const void **a3)
{
  result = *std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__find_equal<std::string>(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__construct_node<std::pair<std::string const,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>> const&>();
  }

  return result;
}

uint64_t std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__find_equal<std::string>(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, const void **a5)
{
  v9 = (a1 + 1);
  if (a1 + 1 != a2 && !std::less<void>::operator()[abi:ne200100]<std::string const&,std::string const&>(a1, a5, (a2 + 32)))
  {
    if (!std::less<void>::operator()[abi:ne200100]<std::string const&,std::string const&>(a1, (a2 + 32), a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = (a2 + 8);
    v13 = *(a2 + 8);
    if (v13)
    {
      v14 = *(a2 + 8);
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!std::less<void>::operator()[abi:ne200100]<std::string const&,std::string const&>(a1, a5, v15 + 4))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return v12 + 8;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = *(v11 + 8);
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = *(v16 + 16);
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (std::less<void>::operator()[abi:ne200100]<std::string const&,std::string const&>(a1, (v12 + 32), a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__find_equal<std::string>(a1, a3, a5);
}

void sub_23E843190(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__find_equal<std::string>(uint64_t a1, uint64_t *a2, const void **a3)
{
  v5 = a1 + 8;
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!std::less<void>::operator()[abi:ne200100]<std::string const&,std::string const&>(a1, a3, (v4 + 32)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!std::less<void>::operator()[abi:ne200100]<std::string const&,std::string const&>(a1, (v8 + 32), a3))
      {
        break;
      }

      v5 = v8 + 8;
      v4 = *(v8 + 8);
    }

    while (v4);
  }

  else
  {
    v8 = a1 + 8;
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

BOOL std::less<void>::operator()[abi:ne200100]<std::string const&,std::string const&>(uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a3 + 23);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v4 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v3 >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = a3[1];
  }

  if (v3 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if (v7 >= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  v10 = memcmp(v6, v8, v9);
  if (v10)
  {
    return v10 < 0;
  }

  else
  {
    return v5 < v7;
  }
}

std::string *std::pair<std::string const,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::pair[abi:ne200100](std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(&this[1], a2 + 24);
  return this;
}

void sub_23E843368(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,void *>>>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((a2 + 56));
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy((a2 + 64), *(a2 + 56));
    if (*(a2 + 55) < 0)
    {
      operator delete(*(a2 + 32));
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__init_with_size[abi:ne200100]<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_23E843710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(a1, a2);
  }

  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(v4, v6);
      v6 += 16;
      v4 = v11 + 16;
      v11 += 16;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_23E84395C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned char>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__emplace_unique_key_args<std::string,std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(uint64_t a1, const void **a2)
{
  result = *std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__find_equal<std::string>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__construct_node<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>();
  }

  return result;
}

uint64_t std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__init_with_size[abi:ne200100]<nlohmann::detail::json_ref<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>> const*,nlohmann::detail::json_ref<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>> const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_23E843B58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::detail::json_ref<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>> const*,nlohmann::detail::json_ref<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>> const*,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<nlohmann::detail::json_ref<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,0>(v4, v6);
      v6 += 32;
      v4 = v11 + 16;
      v11 += 16;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<nlohmann::detail::json_ref<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,0>(uint64_t a1, uint64_t a2)
{
  nlohmann::detail::json_ref<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::moved_or_copied(a2, v4);
  *a1 = v4[0];
  *(a1 + 8) = v5;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v4);
  v4[0] = 0;
  v5 = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a1);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v4);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v5, v4[0]);
  return a1;
}

void nlohmann::detail::external_constructor<(nlohmann::detail::value_t)2>::construct<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,std::vector<double>,0>(_BYTE *a1, uint64_t *a2)
{
  *a1 = 2;
  v2 = a2[1];
  v3 = *a2;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::create<std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__wrap_iter<double const*>,std::__wrap_iter<double const*>>();
}

uint64_t std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__init_with_size[abi:ne200100]<std::__wrap_iter<double const*>,std::__wrap_iter<double const*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_23E843DC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,double const*,double const*,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v4 = a4;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *(v4 + 8) = 0;
      v7 = *v6++;
      *v4 = 7;
      *(v4 + 8) = v7;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v4);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v4);
      v4 = v12 + 16;
      v12 += 16;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

void sub_23E843F10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a10)
  {
    std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,void *>>>::operator()[abi:ne200100](&a11, a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_23E843FB4(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void sub_23E844008(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const*,char const*,0>(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::create<std::string,char const* const&>();
}

unsigned __int8 **nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::set_begin(unsigned __int8 **result)
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

void *nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::iter_impl(void *result, uint64_t a2)
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

void sub_23E844230(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a10)
  {
    std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,void *>>>::operator()[abi:ne200100](&a11, a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_23E8442F0(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void sub_23E844394(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a10)
  {
    std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,void *>>>::operator()[abi:ne200100](&a11, a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_23E844454(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void sub_23E8444F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a10)
  {
    std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,void *>>>::operator()[abi:ne200100](&a11, a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_23E8445C0(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(void (****a1)(void), uint64_t **a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a2;
  if (v10 <= 4)
  {
    if (*a2 > 1u)
    {
      if (v10 != 2)
      {
        if (v10 != 3)
        {
          if (v10 == 4)
          {
            v12 = *a1;
            v13 = (**a1)[1];
            *(a2 + 8);
            goto LABEL_71;
          }

LABEL_148:
          nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump();
        }

        v25 = *a1;
        (***a1)();
        nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_escaped(a1, a2[1], a4);
        v13 = ***a1;
LABEL_134:

        return v13();
      }

      v33 = *a1;
      v34 = **a1;
      if (*a2[1] != a2[1][1])
      {
        if (!a3)
        {
          (*v34)();
          v56 = a2[1];
          v58 = *v56;
          v57 = v56[1];
          if (v58 != v57 - 16)
          {
            do
            {
              nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(a1, v58, 0, a4, a5, a6);
              (***a1)();
              v58 += 16;
              v59 = a2[1];
              v57 = v59[1];
            }

            while (v58 != v57 - 16);
            v58 = *v59;
          }

          if (v58 == v57)
          {
            nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump();
          }

          nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(a1, v57 - 16, 0, a4, a5, a6);
          goto LABEL_117;
        }

        v34[1]();
        v35 = a6 + a5;
        v36 = a1 + 76;
        v37 = *(a1 + 631);
        if ((v37 & 0x80000000) != 0)
        {
          v38 = a1[77];
          if (v38 < v35)
          {
            goto LABEL_144;
          }
        }

        else if (v35 > v37)
        {
          v38 = *(a1 + 631);
LABEL_144:
          std::string::resize((a1 + 76), 2 * v38, 32);
        }

        v78 = a2[1];
        v80 = *v78;
        v79 = v78[1];
        if (v80 != v79 - 16)
        {
          do
          {
            v81 = a1 + 76;
            if (*(a1 + 631) < 0)
            {
              v81 = *v36;
            }

            ((**a1)[1])(*a1, v81, (a6 + a5));
            nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(a1, v80, 1, a4, a5, (a6 + a5));
            ((**a1)[1])(*a1, ",\n", 2);
            v80 += 16;
            v82 = a2[1];
            v79 = v82[1];
          }

          while (v80 != v79 - 16);
          v80 = *v82;
        }

        if (v80 == v79)
        {
          nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump();
        }

        v83 = a1 + 76;
        if (*(a1 + 631) < 0)
        {
          v83 = *v36;
        }

        ((**a1)[1])(*a1, v83, (a6 + a5));
        nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(a1, a2[1][1] - 16, 1, a4, a5, (a6 + a5));
        (***a1)();
        if (*(a1 + 631) < 0)
        {
          v36 = *v36;
        }

        ((**a1)[1])(*a1, v36, a6);
LABEL_117:
        v13 = ***a1;
        goto LABEL_134;
      }

      v44 = v34[1];
      goto LABEL_45;
    }

    if (*a2)
    {
      v15 = *a1;
      v16 = **a1;
      if (!a2[1][2])
      {
        v44 = v16[1];
LABEL_45:

        return v44();
      }

      if (!a3)
      {
        (*v16)();
        v47 = a2[1];
        v48 = *v47;
        if (v47[2] != 1)
        {
          v49 = 0;
          do
          {
            (***a1)(*a1, 34);
            nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_escaped(a1, v48 + 4, a4);
            ((**a1)[1])(*a1, ":", 2);
            nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(a1, v48 + 7, 0, a4, a5, a6);
            (***a1)();
            v50 = v48[1];
            v51 = v48;
            if (v50)
            {
              do
              {
                v48 = v50;
                v50 = *v50;
              }

              while (v50);
            }

            else
            {
              do
              {
                v48 = v51[2];
                v52 = *v48 == v51;
                v51 = v48;
              }

              while (!v52);
            }

            ++v49;
            v47 = a2[1];
          }

          while (v49 < v47[2] - 1);
        }

        v53 = v47 + 1;
        if (v48 == v53)
        {
          nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump();
        }

        v54 = v48[1];
        if (v54)
        {
          do
          {
            v55 = v54;
            v54 = *v54;
          }

          while (v54);
        }

        else
        {
          v84 = v48;
          do
          {
            v55 = v84[2];
            v52 = *v55 == v84;
            v84 = v55;
          }

          while (!v52);
        }

        if (v55 != v53)
        {
          nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump();
        }

        (***a1)(*a1, 34);
        nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_escaped(a1, v48 + 4, a4);
        ((**a1)[1])(*a1, ":", 2);
        nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(a1, v48 + 7, 0, a4, a5, a6);
        goto LABEL_133;
      }

      v16[1]();
      v17 = a6 + a5;
      v18 = a1 + 76;
      v19 = *(a1 + 631);
      if ((v19 & 0x80000000) != 0)
      {
        v20 = a1[77];
        if (v20 < v17)
        {
          goto LABEL_142;
        }
      }

      else if (v17 > v19)
      {
        v20 = *(a1 + 631);
LABEL_142:
        std::string::resize((a1 + 76), 2 * v20, 32);
      }

      v69 = a2[1];
      v70 = *v69;
      if (v69[2] == 1)
      {
        v71 = *v69;
      }

      else
      {
        v72 = 0;
        do
        {
          v73 = a1 + 76;
          if (*(a1 + 631) < 0)
          {
            v73 = *v18;
          }

          ((**a1)[1])(*a1, v73, (a6 + a5));
          (***a1)();
          nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_escaped(a1, v70 + 4, a4);
          ((**a1)[1])(*a1, ": ", 3);
          nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(a1, v70 + 7, 1, a4, a5, (a6 + a5));
          ((**a1)[1])(*a1, ",\n", 2);
          v74 = v70[1];
          if (v74)
          {
            do
            {
              v71 = v74;
              v74 = *v74;
            }

            while (v74);
          }

          else
          {
            do
            {
              v71 = v70[2];
              v52 = *v71 == v70;
              v70 = v71;
            }

            while (!v52);
          }

          ++v72;
          v69 = a2[1];
          v70 = v71;
        }

        while (v72 < v69[2] - 1);
      }

      v75 = v69 + 1;
      if (v71 == v75)
      {
        nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump();
      }

      v76 = v71[1];
      if (v76)
      {
        do
        {
          v77 = v76;
          v76 = *v76;
        }

        while (v76);
      }

      else
      {
        v85 = v71;
        do
        {
          v77 = v85[2];
          v52 = *v77 == v85;
          v85 = v77;
        }

        while (!v52);
      }

      if (v77 != v75)
      {
        nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump();
      }

      v86 = a1 + 76;
      if (*(a1 + 631) < 0)
      {
        v86 = *v18;
      }

      ((**a1)[1])(*a1, v86, (a6 + a5));
      (***a1)();
      nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_escaped(a1, v71 + 4, a4);
      ((**a1)[1])(*a1, ": ", 3);
      nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(a1, v71 + 7, 1, a4, a5, (a6 + a5));
      (***a1)();
      if (*(a1 + 631) < 0)
      {
        v87 = *v18;
      }

      v68 = (**a1)[1];
LABEL_132:
      v68();
LABEL_133:
      v13 = ***a1;
      goto LABEL_134;
    }

    v23 = *a1;
    v13 = (**a1)[1];
LABEL_71:

    return v13();
  }

  if (*a2 <= 6u)
  {
    if (v10 == 5)
    {
      v24 = a2[1];

      return nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<long long,0>(a1, v24);
    }

    else
    {
      if (v10 != 6)
      {
        goto LABEL_148;
      }

      v21 = a2[1];

      return nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned long long,0>(a1, v21);
    }
  }

  else
  {
    switch(v10)
    {
      case 7u:
        v39 = *(a2 + 1);

        return nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_float(a1, v39);
      case 8u:
        v26 = *a1;
        v27 = (**a1)[1];
        if (a3)
        {
          v27();
          v28 = (a6 + a5);
          v29 = a1 + 76;
          v30 = *(a1 + 631);
          if ((v30 & 0x80000000) != 0)
          {
            v60 = a1[77];
            if (v60 >= v28)
            {
              v31 = *a1;
LABEL_76:
              v32 = *v29;
              goto LABEL_77;
            }
          }

          else
          {
            if (v28 <= v30)
            {
              v31 = *a1;
              v32 = a1 + 76;
LABEL_77:
              ((*v31)[1])(v31, v32, v28);
              ((**a1)[1])(*a1, "bytes: [", 10);
              v61 = *a2[1];
              v62 = a2[1][1];
              v63 = *a2[1];
              if (v63 != v62)
              {
                for (; v63 != v62 - 1; v62 = a2[1][1])
                {
                  v64 = *v63++;
                  nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned char,0>(a1, v64);
                  ((**a1)[1])(*a1, ", ", 2);
                }

                nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned char,0>(a1, *(v62 - 1));
              }

              ((**a1)[1])(*a1, "],\n", 3);
              v65 = a1 + 76;
              if (*(a1 + 631) < 0)
              {
                v65 = *v29;
              }

              ((**a1)[1])(*a1, v65, v28);
              ((**a1)[1])(*a1, "subtype: ", 11);
              v66 = a2[1];
              if (*(v66 + 25) == 1)
              {
                nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned char,0>(a1, *(v66 + 24));
              }

              else
              {
                ((**a1)[1])(*a1, "null", 4);
              }

              (***a1)(*a1, 10);
              if (*(a1 + 631) < 0)
              {
                v67 = *v29;
              }

              v68 = (**a1)[1];
              goto LABEL_132;
            }

            v60 = *(a1 + 631);
          }

          std::string::resize((a1 + 76), 2 * v60, 32);
          v31 = *a1;
          v32 = a1 + 76;
          if ((*(a1 + 631) & 0x80000000) == 0)
          {
            goto LABEL_77;
          }

          goto LABEL_76;
        }

        v27();
        v40 = *a2[1];
        v41 = a2[1][1];
        v42 = *a2[1];
        if (v42 != v41)
        {
          while (v42 != v41 - 1)
          {
            v43 = *v42++;
            nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned char,0>(a1, v43);
            (***a1)(*a1, 44);
            v41 = a2[1][1];
          }

          nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned char,0>(a1, *(v41 - 1));
        }

        ((**a1)[1])(*a1, "],subtype:", 12);
        v45 = a2[1];
        if (*(v45 + 25) != 1)
        {
          v13 = (**a1)[1];
          goto LABEL_71;
        }

        nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned char,0>(a1, *(v45 + 24));
        v46 = ***a1;

        return v46();
      case 9u:
        v14 = *a1;
        v13 = (**a1)[1];
        goto LABEL_71;
      default:
        goto LABEL_148;
    }
  }
}

void std::__shared_ptr_emplace<nlohmann::detail::output_stream_adapter<char>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285118848;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EF15D50);
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::serializer(uint64_t a1, uint64_t a2, char a3)
{
  *a1 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  v5 = localeconv();
  *(a1 + 80) = v5;
  thousands_sep = v5->thousands_sep;
  if (thousands_sep)
  {
    LOBYTE(thousands_sep) = *thousands_sep;
  }

  *(a1 + 88) = thousands_sep;
  decimal_point = v5->decimal_point;
  if (v5->decimal_point)
  {
    LOBYTE(decimal_point) = *decimal_point;
  }

  *(a1 + 90) = 0u;
  *(a1 + 89) = decimal_point;
  *(a1 + 106) = 0u;
  *(a1 + 122) = 0u;
  *(a1 + 138) = 0u;
  *(a1 + 154) = 0u;
  *(a1 + 170) = 0u;
  *(a1 + 186) = 0u;
  *(a1 + 202) = 0u;
  *(a1 + 218) = 0u;
  *(a1 + 234) = 0u;
  *(a1 + 250) = 0u;
  *(a1 + 266) = 0u;
  *(a1 + 282) = 0u;
  *(a1 + 298) = 0u;
  *(a1 + 314) = 0u;
  *(a1 + 330) = 0u;
  *(a1 + 346) = 0u;
  *(a1 + 362) = 0u;
  *(a1 + 378) = 0u;
  *(a1 + 394) = 0u;
  *(a1 + 410) = 0u;
  *(a1 + 426) = 0u;
  *(a1 + 442) = 0u;
  *(a1 + 458) = 0u;
  *(a1 + 474) = 0u;
  *(a1 + 490) = 0u;
  *(a1 + 506) = 0u;
  *(a1 + 522) = 0u;
  *(a1 + 538) = 0u;
  *(a1 + 554) = 0u;
  *(a1 + 570) = 0u;
  *(a1 + 586) = 0u;
  *(a1 + 602) = a3;
  operator new();
}

void sub_23E8458CC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::string::basic_string[abi:ne200100](_BYTE *__b, size_t __len, int __c)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __b[23] = __len;
  if (__len)
  {
    memset(__b, __c, __len);
  }

  __b[__len] = 0;
  return __b;
}

uint64_t nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_escaped(uint64_t result, uint64_t *a2, int a3)
{
  v46 = 0;
  v3 = *(a2 + 23);
  v4 = a2[1];
  if ((v3 & 0x80000000) == 0)
  {
    v4 = *(a2 + 23);
  }

  if (!v4)
  {
    return result;
  }

  v7 = result;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = v3 >> 63;
  v47[0] = 0;
  v13 = result + 90;
  do
  {
    v14 = *a2;
    if ((v12 & 1) == 0)
    {
      v14 = a2;
    }

    v15 = *(v14 + v9);
    result = nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::decode(&v46, v47, v15);
    if (result == 1)
    {
      v17 = *(v7 + 158);
      if ((v17 - 1) >= 2)
      {
        if (!v17)
        {
          v45 = 3;
          *__str = 0;
          snprintf(__str, 3uLL, "%.2X", v15);
          exception = __cxa_allocate_exception(0x20uLL);
          std::to_string(&v38, v9);
          v28 = std::string::insert(&v38, 0, "invalid UTF-8 byte at index ");
          v29 = *&v28->__r_.__value_.__l.__data_;
          v39.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
          *&v39.__r_.__value_.__l.__data_ = v29;
          v28->__r_.__value_.__l.__size_ = 0;
          v28->__r_.__value_.__r.__words[2] = 0;
          v28->__r_.__value_.__r.__words[0] = 0;
          v30 = std::string::append(&v39, ": 0x");
          v31 = *&v30->__r_.__value_.__l.__data_;
          v40.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
          *&v40.__r_.__value_.__l.__data_ = v31;
          v30->__r_.__value_.__l.__size_ = 0;
          v30->__r_.__value_.__r.__words[2] = 0;
          v30->__r_.__value_.__r.__words[0] = 0;
          if (v45 >= 0)
          {
            v32 = __str;
          }

          else
          {
            v32 = *__str;
          }

          if (v45 >= 0)
          {
            v33 = v45;
          }

          else
          {
            v33 = v44;
          }

          v34 = std::string::append(&v40, v32, v33);
          v35 = *&v34->__r_.__value_.__l.__data_;
          v42 = v34->__r_.__value_.__r.__words[2];
          v41 = v35;
          v34->__r_.__value_.__l.__size_ = 0;
          v34->__r_.__value_.__r.__words[2] = 0;
          v34->__r_.__value_.__r.__words[0] = 0;
          nlohmann::detail::type_error::create(316, &v41, exception);
        }

        nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_escaped();
      }

      v18 = v10 != 0;
      if (v17 == 1)
      {
        v19 = v13 + v11;
        if (a3)
        {
          *v19 = 1717990748;
          *(v19 + 4) = 25702;
          v11 += 6;
        }

        else
        {
          v11 += 3;
          *v19 = -16401;
          *(v19 + 2) = -67;
        }

        if ((v11 - 500) <= 0xC)
        {
          result = (*(**v7 + 8))(*v7, v13, v11);
          v11 = 0;
        }
      }

      v10 = 0;
      v9 -= v18;
      v46 = 0;
LABEL_52:
      v8 = v11;
      goto LABEL_53;
    }

    if (!result)
    {
      if (v47[0] <= 11)
      {
        switch(v47[0])
        {
          case 8u:
            v16 = 25180;
            goto LABEL_48;
          case 9u:
            v16 = 29788;
            goto LABEL_48;
          case 0xAu:
            v16 = 28252;
            goto LABEL_48;
        }
      }

      else if (v47[0] > 33)
      {
        if (v47[0] == 34)
        {
          v16 = 8796;
          goto LABEL_48;
        }

        if (v47[0] == 92)
        {
          v16 = 23644;
          goto LABEL_48;
        }
      }

      else
      {
        if (v47[0] == 12)
        {
          v16 = 26204;
          goto LABEL_48;
        }

        if (v47[0] == 13)
        {
          v16 = 29276;
LABEL_48:
          *(v13 + v8) = v16;
          v11 = v8 + 2;
LABEL_49:
          if ((v11 - 500) <= 0xC)
          {
            result = (*(**v7 + 8))(*v7, v13, v11);
            v11 = 0;
            v10 = 0;
            v8 = 0;
            goto LABEL_53;
          }

          v10 = 0;
          goto LABEL_52;
        }
      }

      if (v47[0] > 0x7E)
      {
        v21 = a3;
      }

      else
      {
        v21 = 0;
      }

      if (v47[0] < 0x20 || v21)
      {
        if (HIWORD(v47[0]))
        {
          result = snprintf((v13 + v8), 0xDuLL, "\\u%04x\\u%04x", ((v47[0] >> 10) - 10304), v47[0] & 0x3FF | 0xDC00);
          v11 = v8 + 12;
        }

        else
        {
          result = snprintf((v13 + v8), 7uLL, "\\u%04x", v47[0]);
          v11 = v8 + 6;
        }
      }

      else
      {
        if (*(a2 + 23) >= 0)
        {
          v22 = a2;
        }

        else
        {
          v22 = *a2;
        }

        v11 = v8 + 1;
        *(v13 + v8) = *(v22 + v9);
      }

      goto LABEL_49;
    }

    if ((a3 & 1) == 0)
    {
      if (*(a2 + 23) >= 0)
      {
        v20 = a2;
      }

      else
      {
        v20 = *a2;
      }

      *(v13 + v8++) = *(v20 + v9);
    }

    ++v10;
LABEL_53:
    ++v9;
    v23 = *(a2 + 23);
    v12 = v23 >> 63;
    v24 = a2[1];
    if ((v23 & 0x80000000) == 0)
    {
      v24 = *(a2 + 23);
    }
  }

  while (v9 < v24);
  if (v46)
  {
    v26 = *(v7 + 158);
    switch(v26)
    {
      case 1:
        (*(**v7 + 8))(*v7, v13, v11);
        v25 = *(**v7 + 8);
        break;
      case 2:
        v25 = *(**v7 + 8);
        break;
      case 0:
        v45 = 3;
        *__str = 0;
        if ((v23 & 0x80000000) == 0)
        {
          v36 = a2;
        }

        else
        {
          v36 = *a2;
        }

        snprintf(__str, 3uLL, "%.2X", *(v36 + v24 - 1));
        v37 = __cxa_allocate_exception(0x20uLL);
        std::operator+<char>();
        nlohmann::detail::type_error::create(316, &v41, v37);
      default:
        nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_escaped();
    }

    return v25();
  }

  else if (v8)
  {
    v25 = *(**v7 + 8);
    return v25();
  }

  return result;
}

void sub_23E845F40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a39 < 0)
  {
    operator delete(__p);
    if ((v40 & 1) == 0)
    {
LABEL_6:
      if (*(v41 - 97) < 0)
      {
        operator delete(*(v41 - 120));
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v40)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v39);
  goto LABEL_6;
}

uint64_t nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned char,0>(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return (***a1)(*a1, 48);
  }

  LOBYTE(v2) = a2;
  if (a2 >= 0xA)
  {
    if (a2 >= 0x64)
    {
      *(a1 + 17) = nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned char,0>(unsigned char)::digits_to_99[(a2 - 100 * ((41 * a2) >> 12))];
      v5 = a1 + 17;
      v2 = (41 * a2) >> 12;
      goto LABEL_10;
    }

    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  v5 = a1 + 16 + v3;
  if (a2 < 0xA)
  {
LABEL_10:
    *(v5 - 1) = v2 | 0x30;
    return (*(**a1 + 8))();
  }

  *(v5 - 2) = nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned char,0>(unsigned char)::digits_to_99[a2];
  return (*(**a1 + 8))();
}

uint64_t nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<long long,0>(uint64_t (****a1)(void), unint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = a1 + 2;
    if ((v2 & 0x8000000000000000) != 0)
    {
      *v3 = 45;
      v2 = -v2;
      if (v2 >= 0xA)
      {
        v7 = 4;
        v11 = v2;
        while (1)
        {
          if (v11 <= 0x63)
          {
            v7 -= 2;
            goto LABEL_26;
          }

          if (v11 <= 0x3E7)
          {
            break;
          }

          if (v11 >> 4 < 0x271)
          {
            goto LABEL_26;
          }

          v7 += 4;
          v10 = v11 >= 0x186A0;
          v11 /= 0x2710uLL;
          if (!v10)
          {
            v7 -= 3;
            goto LABEL_26;
          }
        }

        --v7;
      }

      else
      {
        v7 = 1;
      }

LABEL_26:
      v8 = v7 + 1;
    }

    else
    {
      if (v2 < 0xA)
      {
        v4 = a1 + 17;
        goto LABEL_35;
      }

      v8 = 4;
      v9 = v2;
      while (1)
      {
        if (v9 <= 0x63)
        {
          v8 -= 2;
          goto LABEL_27;
        }

        if (v9 <= 0x3E7)
        {
          break;
        }

        if (v9 >> 4 < 0x271)
        {
          goto LABEL_27;
        }

        v8 += 4;
        v10 = v9 >= 0x186A0;
        v9 /= 0x2710uLL;
        if (!v10)
        {
          v8 -= 3;
          goto LABEL_27;
        }
      }

      --v8;
    }

LABEL_27:
    if (v8 >= 0x3F)
    {
      nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<long long,0>();
    }

    v4 = &v3[v8];
    if (v2 < 0x64)
    {
      v12 = v2;
    }

    else
    {
      do
      {
        v12 = v2 / 0x64;
        *(v4 - 1) = nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<long long,0>(long long)::digits_to_99[v2 % 0x64];
        v4 -= 2;
        v13 = v2 >> 4;
        v2 /= 0x64uLL;
      }

      while (v13 > 0x270);
    }

    if (v12 >= 0xA)
    {
      *(v4 - 1) = nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<long long,0>(long long)::digits_to_99[v12];
LABEL_36:
      v14 = (**a1)[1];

      return v14();
    }

    LOBYTE(v2) = v12;
LABEL_35:
    *(v4 - 1) = v2 | 0x30;
    goto LABEL_36;
  }

  v5 = ***a1;

  return v5();
}

uint64_t nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned long long,0>(uint64_t (****a1)(void), unint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    if (a2 >= 0xA)
    {
      v6 = 4;
      v7 = a2;
      while (1)
      {
        if (v7 <= 0x63)
        {
          v6 -= 2;
          goto LABEL_15;
        }

        if (v7 <= 0x3E7)
        {
          break;
        }

        if (v7 >> 4 < 0x271)
        {
          goto LABEL_15;
        }

        v8 = v7 >> 5;
        v7 /= 0x2710uLL;
        v6 += 4;
        if (v8 <= 0xC34)
        {
          v6 -= 3;
          goto LABEL_15;
        }
      }

      --v6;
LABEL_15:
      if (v6 >= 0x3F)
      {
        nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<long long,0>();
      }

      v3 = a1 + v6 + 16;
      if (a2 < 0x64)
      {
        v9 = a2;
      }

      else
      {
        do
        {
          v9 = v2 / 0x64;
          *(v3 - 2) = nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned long long,0>(unsigned long long)::digits_to_99[v2 % 0x64];
          v3 -= 2;
          v10 = v2 >> 4;
          v2 /= 0x64uLL;
        }

        while (v10 > 0x270);
      }

      if (v9 >= 0xA)
      {
        *(v3 - 2) = nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned long long,0>(unsigned long long)::digits_to_99[v9];
LABEL_24:
        v11 = (**a1)[1];

        return v11();
      }

      LOBYTE(v2) = v9;
    }

    else
    {
      v3 = a1 + 17;
    }

    *(v3 - 1) = v2 | 0x30;
    goto LABEL_24;
  }

  v4 = ***a1;

  return v4();
}

uint64_t nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_float(_BYTE *a1, double a2)
{
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    nlohmann::detail::to_chars<double>(a1 + 16, (a1 + 80), a2);
  }

  else
  {
    v3 = *a1;
  }

  v4 = *(**a1 + 8);

  return v4();
}

uint64_t nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::decode(_BYTE *a1, unsigned int *a2, int a3)
{
  v3 = nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::decode(unsigned char &,unsigned int &,unsigned char)::utf8d[a3];
  if (*a1)
  {
    v4 = a3 & 0x3F | (*a2 << 6);
  }

  else
  {
    v4 = (0xFFu >> v3) & a3;
  }

  *a2 = v4;
  v5 = 16 * *a1 + v3 + 256;
  if (v5 >= 0x190)
  {
    __assert_rtn("decode", "serializer.hpp", 892, "index < 400");
  }

  v6 = nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::decode(unsigned char &,unsigned int &,unsigned char)::utf8d[v5];
  *a1 = v6;
  return v6;
}

uint64_t nlohmann::detail::to_chars<double>(_BYTE *a1, uint64_t a2, double a3)
{
  if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    nlohmann::detail::to_chars<double>();
  }

  v3 = a1;
  if ((*&a3 & 0x8000000000000000) != 0)
  {
    a3 = -a3;
    *a1 = 45;
    v3 = (a1 + 1);
  }

  if (a3 == 0.0)
  {
    *v3 = 11824;
    result = v3 + 3;
    *(v3 + 2) = 48;
  }

  else
  {
    v5 = a2 - v3;
    if (a2 - v3 <= 16)
    {
      nlohmann::detail::to_chars<double>();
    }

    v6 = 0;
    nlohmann::detail::dtoa_impl::grisu2<double>(v3, &v6 + 1, &v6, a3);
    if (SHIDWORD(v6) >= 18)
    {
      nlohmann::detail::to_chars<double>();
    }

    if (v5 <= 0x15)
    {
      nlohmann::detail::to_chars<double>();
    }

    if (v5 == 22)
    {
      nlohmann::detail::to_chars<double>();
    }

    return nlohmann::detail::dtoa_impl::format_buffer(v3, HIDWORD(v6), v6, -4, 15);
  }

  return result;
}

uint64_t nlohmann::detail::dtoa_impl::grisu2<double>(uint64_t a1, unsigned int *a2, _DWORD *a3, double a4)
{
  if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    nlohmann::detail::dtoa_impl::grisu2<double>();
  }

  if (a4 <= 0.0)
  {
    nlohmann::detail::dtoa_impl::grisu2<double>();
  }

  nlohmann::detail::dtoa_impl::compute_boundaries<double>(v9, a4);
  return nlohmann::detail::dtoa_impl::grisu2(a1, a2, a3, v9[2], v9[3], v9[0], v9[1], v7, v9[4], v9[5]);
}

uint64_t nlohmann::detail::dtoa_impl::format_buffer(nlohmann::detail::dtoa_impl *this, char *a2, int a3, int a4, int a5)
{
  if ((a4 & 0x80000000) == 0)
  {
    nlohmann::detail::dtoa_impl::format_buffer();
  }

  if (a5 <= 0)
  {
    nlohmann::detail::dtoa_impl::format_buffer();
  }

  v5 = this;
  v6 = a2;
  v7 = a3 + a2;
  if ((a3 & 0x80000000) == 0 && v7 <= a5)
  {
    memset(this + a2, 48, a3);
    *(v5 + v7) = 12334;
    return v5 + v7 + 2;
  }

  if (v7 < 1 || v7 > a5)
  {
    if (v7 > a4 && v7 <= 0)
    {
      v10 = -v7;
      memmove(this + v10 + 2, this, a2);
      *v5 = 11824;
      memset(v5 + 2, 48, v10);
      return v5 + v10 + v6 + 2;
    }

    if (a2 != 1)
    {
      memmove(this + 2, this + 1, a2 - 1);
      *(v5 + 1) = 46;
      v5 = (v5 + v6);
    }

    *(v5 + 1) = 101;
    if (v7 <= -999)
    {
      nlohmann::detail::dtoa_impl::format_buffer();
    }

    if (v7 >= 1001)
    {
      nlohmann::detail::dtoa_impl::format_buffer();
    }

    if (v7 >= 1)
    {
      v11 = 43;
    }

    else
    {
      v11 = 45;
    }

    if (v7 - 1 >= 0)
    {
      v12 = v7 - 1;
    }

    else
    {
      v12 = 1 - v7;
    }

    *(v5 + 2) = v11;
    if (v12 > 9)
    {
      if (v12 > 0x63)
      {
        *(v5 + 3) = v12 / 0x64u + 48;
        v15 = v12 % 0x64u;
        v13 = v5 + 5;
        *(v5 + 4) = (v15 / 0xAu) | 0x30;
        LOBYTE(v12) = v15 % 0xAu;
        v14 = 4;
        goto LABEL_29;
      }

      v13 = v5 + 4;
      *(v5 + 3) = (v12 / 0xAu) | 0x30;
      LOBYTE(v12) = v12 % 0xAu;
    }

    else
    {
      v13 = v5 + 4;
      *(v5 + 3) = 48;
    }

    v14 = 3;
LABEL_29:
    result = v5 + v14 + 2;
    *v13 = v12 | 0x30;
    return result;
  }

  if ((a3 & 0x80000000) == 0)
  {
    nlohmann::detail::dtoa_impl::format_buffer();
  }

  v9 = this + v7;
  memmove(v9 + 1, v9, a2 - v7);
  *v9 = 46;
  return v5 + v6 + 1;
}

uint64_t nlohmann::detail::dtoa_impl::compute_boundaries<double>@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    nlohmann::detail::dtoa_impl::compute_boundaries<double>();
  }

  if (a2 <= 0.0)
  {
    nlohmann::detail::dtoa_impl::compute_boundaries<double>();
  }

  v3 = 4294966221;
  v4 = *&a2 & 0xFFFFFFFFFFFFFLL;
  if (!(*&a2 >> 52))
  {
    v5 = 2 * *&a2;
    v6 = (2 * (*&a2 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
    v7 = 4294966222;
    v8 = -1075;
LABEL_9:
    v9 = v5 - 1;
    goto LABEL_10;
  }

  v7 = (*&a2 >> 52) - 1075;
  v5 = 2 * (v4 | 0x10000000000000);
  v6 = (2 * (*&a2 & 0xFFFFFFFFFFFFFLL | 0x10000000000000)) | 1;
  v3 = (*&a2 >> 52) - 1076;
  v8 = (*&a2 >> 52) - 1076;
  if (!(*&a2 >> 53) || v4)
  {
    v4 |= 0x10000000000000uLL;
    goto LABEL_9;
  }

  v8 = (*&a2 >> 52) - 1077;
  v4 = 0x10000000000000;
  v9 = 0x3FFFFFFFFFFFFFLL;
LABEL_10:
  v18 = v9;
  v19 = v8;
  v10 = nlohmann::detail::dtoa_impl::diyfp::normalize(v6, v3);
  v12 = v11;
  v13 = nlohmann::detail::dtoa_impl::diyfp::normalize_to(&v18, v11);
  v15 = v14;
  result = nlohmann::detail::dtoa_impl::diyfp::normalize(v4, v7);
  *a1 = result;
  *(a1 + 8) = v17;
  *(a1 + 16) = v13;
  *(a1 + 24) = v15;
  *(a1 + 32) = v10;
  *(a1 + 40) = v12;
  return result;
}

uint64_t nlohmann::detail::dtoa_impl::grisu2(uint64_t a1, unsigned int *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, nlohmann::detail::dtoa_impl *a10)
{
  v31[0] = a4;
  v31[1] = a5;
  v30[0] = a6;
  v30[1] = a7;
  v29[0] = a9;
  v29[1] = a10;
  if (a10 != a5)
  {
    nlohmann::detail::dtoa_impl::grisu2();
  }

  if (a10 != a7)
  {
    nlohmann::detail::dtoa_impl::grisu2();
  }

  cached_power_for_binary_exponent = nlohmann::detail::dtoa_impl::get_cached_power_for_binary_exponent(a10);
  v15 = v14;
  v27 = cached_power_for_binary_exponent;
  v28 = v16;
  v17 = nlohmann::detail::dtoa_impl::diyfp::mul(v30, &v27);
  v19 = v18;
  v20 = nlohmann::detail::dtoa_impl::diyfp::mul(v31, &v27);
  v22 = v21;
  v23 = nlohmann::detail::dtoa_impl::diyfp::mul(v29, &v27);
  *a3 = -v15;
  return nlohmann::detail::dtoa_impl::grisu2_digit_gen(a1, a2, a3, v20 + 1, v22, v17, v19, v25, v23 - 1, v24);
}

uint64_t nlohmann::detail::dtoa_impl::diyfp::normalize(uint64_t result, unint64_t a2)
{
  if (!result)
  {
    __assert_rtn("normalize", "to_chars.hpp", 143, "x.f != 0");
  }

  for (; (result & 0x8000000000000000) == 0; a2 = (a2 - 1) | a2 & 0xFFFFFFFF00000000)
  {
    result *= 2;
  }

  return result;
}

unint64_t nlohmann::detail::dtoa_impl::diyfp::normalize_to(uint64_t *a1, int a2)
{
  v2 = *(a1 + 2) - a2;
  if (v2 < 0)
  {
    v5 = "delta >= 0";
    v6 = 162;
    goto LABEL_6;
  }

  v3 = *a1;
  result = *a1 << v2;
  if (result >> v2 != v3)
  {
    v5 = "((x.f << delta) >> delta) == x.f";
    v6 = 163;
LABEL_6:
    __assert_rtn("normalize_to", "to_chars.hpp", v6, v5);
  }

  return result;
}

uint64_t nlohmann::detail::dtoa_impl::get_cached_power_for_binary_exponent(nlohmann::detail::dtoa_impl *this)
{
  if (this <= -1501)
  {
    nlohmann::detail::dtoa_impl::get_cached_power_for_binary_exponent();
  }

  if (this >= 1501)
  {
    nlohmann::detail::dtoa_impl::get_cached_power_for_binary_exponent();
  }

  v1 = 78913 * (-61 - this) / 0x40000;
  if (this < -61)
  {
    ++v1;
  }

  if (v1 <= -315)
  {
    nlohmann::detail::dtoa_impl::get_cached_power_for_binary_exponent();
  }

  v2 = ((v1 + 307 + (((v1 + 307) >> 28) & 7)) << 16) >> 19;
  if (v2 >= 0x4F)
  {
    nlohmann::detail::dtoa_impl::get_cached_power_for_binary_exponent();
  }

  v3 = (&nlohmann::detail::dtoa_impl::get_cached_power_for_binary_exponent(int)::kCachedPowers + 16 * v2);
  v4 = v3[1] + this;
  if (v4 <= -125)
  {
    nlohmann::detail::dtoa_impl::get_cached_power_for_binary_exponent();
  }

  if (v4 >= -95)
  {
    nlohmann::detail::dtoa_impl::get_cached_power_for_binary_exponent();
  }

  return *v3;
}

unint64_t nlohmann::detail::dtoa_impl::diyfp::mul(uint64_t a1, uint64_t a2)
{
  v2 = HIDWORD(*a1);
  v3 = HIDWORD(*a2);
  v4 = v3 * *a1;
  v5 = *a2 * v2;
  v6 = ((*a2 * *a1) >> 32) + v4 + v5;
  v7 = (*(a1 + 8) + *(a2 + 8) + 64);
  return HIDWORD(v5) + v3 * v2 + HIDWORD(v4) + ((v6 + 0x80000000) >> 32);
}

uint64_t nlohmann::detail::dtoa_impl::grisu2_digit_gen(uint64_t a1, unsigned int *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10)
{
  v47[0] = a4;
  v47[1] = a5;
  v46[0] = a6;
  v46[1] = a7;
  v44 = a9;
  v45 = a10;
  if (a10 <= -61)
  {
    nlohmann::detail::dtoa_impl::grisu2_digit_gen();
  }

  if (a10 >= -31)
  {
    nlohmann::detail::dtoa_impl::grisu2_digit_gen();
  }

  v13 = nlohmann::detail::dtoa_impl::diyfp::sub(&v44, v47);
  v14 = nlohmann::detail::dtoa_impl::diyfp::sub(&v44, v46);
  v15 = -v45;
  v16 = v44 >> -v45;
  if (!v16)
  {
    nlohmann::detail::dtoa_impl::grisu2_digit_gen();
  }

  v17 = v14;
  v18 = 1 << v15;
  v19 = (1 << v15) - 1;
  v20 = v19 & v44;
  if (v16 <= 0x3B9AC9FF)
  {
    if (v16 <= 0x5F5E0FF)
    {
      if (v16 <= 0x98967F)
      {
        if (v16 <= 0xF423F)
        {
          v23 = v16 >> 5;
          v24 = v16 >> 4;
          if (v16 <= 9)
          {
            v25 = 1;
          }

          else
          {
            v25 = 10;
          }

          if (v16 <= 9)
          {
            v26 = 1;
          }

          else
          {
            v26 = 2;
          }

          if (v16 <= 0x63)
          {
            v27 = v26;
          }

          else
          {
            v27 = 3;
          }

          if (v16 <= 0x63)
          {
            v28 = v25;
          }

          else
          {
            v28 = 100;
          }

          if (v16 <= 0x3E7)
          {
            v29 = v27;
          }

          else
          {
            v29 = 4;
          }

          if (v16 <= 0x3E7)
          {
            v30 = v28;
          }

          else
          {
            v30 = 1000;
          }

          if (v24 <= 0x270)
          {
            v31 = v29;
          }

          else
          {
            v31 = 5;
          }

          if (v24 <= 0x270)
          {
            v32 = v30;
          }

          else
          {
            v32 = 10000;
          }

          if (v23 <= 0xC34)
          {
            v22 = v31;
          }

          else
          {
            v22 = 6;
          }

          if (v23 > 0xC34)
          {
            v21 = 100000;
          }

          else
          {
            v21 = v32;
          }
        }

        else
        {
          v21 = 1000000;
          v22 = 7;
        }
      }

      else
      {
        v21 = 10000000;
        v22 = 8;
      }
    }

    else
    {
      v21 = 100000000;
      v22 = 9;
    }
  }

  else
  {
    v21 = 1000000000;
    v22 = 10;
  }

  v33 = v22 + 1;
  do
  {
    v34 = v16 / v21;
    if (v16 / v21 >= 0xA)
    {
      nlohmann::detail::dtoa_impl::grisu2_digit_gen();
    }

    v16 = v16 % v21;
    v35 = *a2;
    *a2 = v35 + 1;
    *(a1 + v35) = v34 | 0x30;
    if ((v16 << v15) + v20 <= v13)
    {
      *a3 = *a3 + v33 - 2;
      v18 = v21 << v15;
      v40 = *a2;
      v41 = a1;
      v42 = v13;
      v20 += v16 << v15;
      return nlohmann::detail::dtoa_impl::grisu2_round(v41, v40, v17, v42, v20, v18);
    }

    v21 /= 0xAu;
    --v33;
  }

  while (v33 > 1);
  if (v20 <= v13)
  {
    nlohmann::detail::dtoa_impl::grisu2_digit_gen();
  }

  v36 = 0;
  do
  {
    if (v20 >= 0x199999999999999ALL)
    {
      nlohmann::detail::dtoa_impl::grisu2_digit_gen();
    }

    v37 = (10 * v20) >> v15;
    if (v37 >= 0xA)
    {
      nlohmann::detail::dtoa_impl::grisu2_digit_gen();
    }

    v38 = *a2;
    *a2 = v38 + 1;
    *(a1 + v38) = v37 | 0x30;
    v39 = 5 * v13;
    v20 = (10 * v20) & v19;
    v13 *= 10;
    v17 *= 10;
    --v36;
  }

  while (v20 > 2 * v39);
  *a3 += v36;
  v40 = *a2;
  v41 = a1;
  v42 = v13;
  return nlohmann::detail::dtoa_impl::grisu2_round(v41, v40, v17, v42, v20, v18);
}

uint64_t nlohmann::detail::dtoa_impl::diyfp::sub(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != *(a2 + 8))
  {
    v4 = "x.e == y.e";
    v5 = 66;
LABEL_6:
    __assert_rtn("sub", "to_chars.hpp", v5, v4);
  }

  v2 = *a1 >= *a2;
  result = *a1 - *a2;
  if (!v2)
  {
    v4 = "x.f >= y.f";
    v5 = 67;
    goto LABEL_6;
  }

  return result;
}

uint64_t nlohmann::detail::dtoa_impl::grisu2_round(uint64_t this, char *a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  if (a2 <= 0)
  {
    nlohmann::detail::dtoa_impl::grisu2_round();
  }

  if (a3 > a4)
  {
    nlohmann::detail::dtoa_impl::grisu2_round();
  }

  if (a4 < a5)
  {
    nlohmann::detail::dtoa_impl::grisu2_round();
  }

  if (!a6)
  {
    nlohmann::detail::dtoa_impl::grisu2_round();
  }

  v6 = a3 - a5;
  if (a3 > a5 && a4 - a5 >= a6)
  {
    v7 = this - 1;
    v8 = a6 + a5;
    v9 = a4 - (a6 + a5);
    do
    {
      if (v8 >= a3 && v6 <= v8 - a3)
      {
        break;
      }

      v10 = *(v7 + a2);
      if (v10 == 48)
      {
        nlohmann::detail::dtoa_impl::grisu2_round();
      }

      *(v7 + a2) = v10 - 1;
      if (v8 >= a3)
      {
        break;
      }

      v6 -= a6;
      v8 += a6;
      v11 = v9 >= a6;
      v9 -= a6;
    }

    while (v11);
  }

  return this;
}

uint64_t nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~serializer(uint64_t a1)
{
  if (*(a1 + 631) < 0)
  {
    operator delete(*(a1 + 608));
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x23EF15C30](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x23EF15C40](v13);
  return a1;
}

void sub_23E847250(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x23EF15C40](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x23E847230);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      std::string::basic_string[abi:ne200100](__p, v12, __c);
      v13 = v18 >= 0 ? __p : __p[0];
      v14 = (*(*v6 + 96))(v6, v13, v12);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_23E847424(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23E8485D0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t std::vector<BOOL>::push_back(uint64_t result, _BYTE *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 == v5 << 6)
  {
    if ((v4 + 1) < 0)
    {
      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
    }

    v6 = v5 << 7;
    if (v6 <= (v4 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v6 = (v4 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v4 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    result = std::vector<BOOL>::reserve(result, v7);
    v4 = v3[1];
  }

  v3[1] = v4 + 1;
  v8 = *v3;
  v9 = v4 >> 6;
  v10 = 1 << v4;
  if (*a2 == 1)
  {
    v11 = *(v8 + 8 * v9) | v10;
  }

  else
  {
    v11 = *(v8 + 8 * v9) & ~v10;
  }

  *(v8 + 8 * v9) = v11;
  return result;
}

{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 == v5 << 6)
  {
    if ((v4 + 1) < 0)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v6 = v5 << 7;
    if (v6 <= (v4 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v6 = (v4 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v4 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    result = std::vector<BOOL>::reserve(result, v7);
    v4 = v3[1];
  }

  v3[1] = v4 + 1;
  v8 = *v3;
  v9 = v4 >> 6;
  v10 = 1 << v4;
  if (*a2 == 1)
  {
    v11 = *(v8 + 8 * v9) | v10;
  }

  else
  {
    v11 = *(v8 + 8 * v9) & ~v10;
  }

  *(v8 + 8 * v9) = v11;
  return result;
}

void sub_23E848DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, void *__p, uint64_t a49, int a50, __int16 a51, char a52, char a53, void *a54, uint64_t a55, int a56, __int16 a57, char a58, char a59)
{
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a43);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a46);
  std::ofstream::~ofstream(&STACK[0x280], MEMORY[0x277D82810]);
  MEMORY[0x23EF15CC0](&STACK[0x420]);
  if (a53 < 0)
  {
    operator delete(__p);
  }

  if (a59 < 0)
  {
    operator delete(a54);
  }

  _Unwind_Resume(a1);
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::emplace<char const(&)[12],int &>(uint64_t a1)
{
  if (!*a1)
  {
    *a1 = 1;
    operator new();
  }

  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__emplace_unique_impl<char const(&)[12],int &>();
  }

  exception = __cxa_allocate_exception(0x20uLL);
  v4 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::type_name(a1);
  std::string::basic_string[abi:ne200100]<0>(&v9, v4);
  v5 = std::string::insert(&v9, 0, "cannot use emplace() with ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v8 = v5->__r_.__value_.__r.__words[2];
  v7 = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  nlohmann::detail::type_error::create(311, &v7, exception);
}

void sub_23E8490EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
    if ((v23 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v22);
  goto LABEL_8;
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::emplace<char const(&)[20],nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(uint64_t a1)
{
  if (!*a1)
  {
    *a1 = 1;
    operator new();
  }

  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__emplace_unique_impl<char const(&)[15],nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>();
  }

  exception = __cxa_allocate_exception(0x20uLL);
  v4 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::type_name(a1);
  std::string::basic_string[abi:ne200100]<0>(&v9, v4);
  v5 = std::string::insert(&v9, 0, "cannot use emplace() with ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v8 = v5->__r_.__value_.__r.__words[2];
  v7 = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  nlohmann::detail::type_error::create(311, &v7, exception);
}

void sub_23E8492AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
    if ((v23 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v22);
  goto LABEL_8;
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::emplace<char const(&)[20],float>(uint64_t a1)
{
  if (!*a1)
  {
    *a1 = 1;
    operator new();
  }

  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__emplace_unique_impl<char const(&)[20],float>();
  }

  exception = __cxa_allocate_exception(0x20uLL);
  v4 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::type_name(a1);
  std::string::basic_string[abi:ne200100]<0>(&v9, v4);
  v5 = std::string::insert(&v9, 0, "cannot use emplace() with ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v8 = v5->__r_.__value_.__r.__words[2];
  v7 = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  nlohmann::detail::type_error::create(311, &v7, exception);
}

void sub_23E84946C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
    if ((v23 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v22);
  goto LABEL_8;
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::emplace<char const(&)[15],float &>(uint64_t a1)
{
  if (!*a1)
  {
    *a1 = 1;
    operator new();
  }

  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__emplace_unique_impl<char const(&)[20],float>();
  }

  exception = __cxa_allocate_exception(0x20uLL);
  v4 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::type_name(a1);
  std::string::basic_string[abi:ne200100]<0>(&v9, v4);
  v5 = std::string::insert(&v9, 0, "cannot use emplace() with ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v8 = v5->__r_.__value_.__r.__words[2];
  v7 = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  nlohmann::detail::type_error::create(311, &v7, exception);
}

void sub_23E84962C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
    if ((v23 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v22);
  goto LABEL_8;
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::emplace<char const(&)[21],ABUnavailabilityReason>(uint64_t a1)
{
  if (!*a1)
  {
    *a1 = 1;
    operator new();
  }

  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__emplace_unique_impl<char const(&)[21],ABUnavailabilityReason>();
  }

  exception = __cxa_allocate_exception(0x20uLL);
  v4 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::type_name(a1);
  std::string::basic_string[abi:ne200100]<0>(&v9, v4);
  v5 = std::string::insert(&v9, 0, "cannot use emplace() with ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v8 = v5->__r_.__value_.__r.__words[2];
  v7 = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  nlohmann::detail::type_error::create(311, &v7, exception);
}

void sub_23E8497EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
    if ((v23 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v22);
  goto LABEL_8;
}

void std::__throw_bad_variant_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82900] + 16;
  __cxa_throw(exception, MEMORY[0x277D82768], std::bad_variant_access::~bad_variant_access);
}

uint64_t **std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<beryllium::overloaded<-[ABAfibBurdenAnalyzer processResults:withAlgsAnalytics:]::$_0,-[ABAfibBurdenAnalyzer processResults:withAlgsAnalytics:]::$_1>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,beryllium::output_t,beryllium::ReasonForNoOutput> &>(uint64_t **result, int *a2)
{
  v2 = **result;
  v3 = *a2;
  if ((*(v2 + 4) & 1) == 0)
  {
    *(v2 + 4) = 1;
  }

  *v2 = v3;
  return result;
}

void std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<beryllium::overloaded<-[ABAfibBurdenAnalyzer processResults:withAlgsAnalytics:]::$_0,-[ABAfibBurdenAnalyzer processResults:withAlgsAnalytics:]::$_1>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,beryllium::output_t,beryllium::ReasonForNoOutput> &>(uint64_t *a1, int *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a2 > 1)
  {
    if (v3 == 2)
    {
      v4 = *(v2 + 8);
      v5 = 3;
      goto LABEL_15;
    }

    if (v3 == 3)
    {
      v6 = *(v2 + 8);
      if (*(v6 + 8) == 1)
      {
        *(v6 + 8) = 0;
      }

      v7 = ab_get_framework_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<beryllium::overloaded<-[ABAfibBurdenAnalyzer processResults:withAlgsAnalytics:]::$_0,-[ABAfibBurdenAnalyzer processResults:withAlgsAnalytics:]::$_1>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,beryllium::output_t,beryllium::ReasonForNoOutput> &>(v7);
      }
    }
  }

  else
  {
    if (!v3)
    {
      v8 = *(v2 + 8);
      *v8 = 1;
      *(v8 + 8) = 1;
      return;
    }

    if (v3 == 1)
    {
      v4 = *(v2 + 8);
      v5 = 2;
LABEL_15:
      *v4 = v5;
      *(v4 + 8) = 1;
    }
  }
}

void std::__throw_bad_optional_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82908] + 16;
  __cxa_throw(exception, MEMORY[0x277D82770], MEMORY[0x277D82618]);
}

void PerBucketClassification::~PerBucketClassification(PerBucketClassification *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *this;
  if (*this)
  {
    *(this + 1) = v3;
    operator delete(v3);
  }
}

void beryllium::input_t::~input_t(void **this)
{
  v2 = this + 3;
  std::vector<std::vector<BOOL>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this;
  std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void std::vector<std::vector<BOOL>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<BOOL>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::vector<BOOL>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 24)
  {
    v5 = *(i - 24);
    v4 = v5;
    if (v5)
    {
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

uint64_t std::vector<BOOL>::reserve(uint64_t result, unint64_t a2)
{
  if (a2 > *(result + 16) << 6)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = 0;
      v3 = 0uLL;
      std::vector<BOOL>::__vallocate[abi:ne200100](&v2, a2);
    }

    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

{
  if (a2 > *(result + 16) << 6)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = 0;
      v3 = 0uLL;
      std::vector<BOOL>::__vallocate[abi:ne200100](&v2, a2);
    }

    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_23E84A1E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<BOOL>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, v2);
  }

  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
}

{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, v2);
  }

  std::vector<double>::__throw_length_error[abi:ne200100]();
}

void std::vector<BOOL>::__construct_at_end<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[1];
  v7 = v6 + a4;
  a1[1] = v6 + a4;
  if (!v6 || ((v7 - 1) ^ (v6 - 1)) >= 0x40)
  {
    if (v7 >= 0x41)
    {
      v8 = (v7 - 1) >> 6;
    }

    else
    {
      v8 = 0;
    }

    *(*a1 + 8 * v8) = 0;
  }

  v20 = v4;
  v21 = v5;
  v9 = *(a2 + 8);
  v10 = *a3;
  v11 = *(a3 + 8);
  v12 = *a1 + 8 * (v6 >> 6);
  v18 = *a2;
  v19 = v9;
  v16 = v10;
  v17 = v11;
  v14 = v12;
  v15 = v6 & 0x3F;
  std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,0>(&v18, &v16, &v14, &v13);
}

void std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 2);
  v6 = *a2;
  v7 = *(a2 + 2);
  v16 = *a1;
  v17 = v5;
  v14 = v6;
  v15 = v7;
  v8 = *(a3 + 2);
  v12 = *a3;
  v13 = v8;
  std::__copy_impl::operator()[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(&v16, &v14, &v12, &v18);
  v9 = v19;
  v10 = v20;
  v11 = v21;
  *a4 = v18;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10;
  *(a4 + 24) = v11;
}

void std::__copy_impl::operator()[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a3 + 8);
  if (*a1 != *a2 || v5 != *(a2 + 8))
  {
    do
    {
      v8 = *a3;
      v9 = 1 << v6;
      if ((*v4 >> v5))
      {
        v10 = *v8 | v9;
      }

      else
      {
        v10 = *v8 & ~v9;
      }

      *v8 = v10;
      if (v5 == 63)
      {
        v11 = 0;
        *a1 = ++v4;
      }

      else
      {
        v11 = v5 + 1;
      }

      *(a1 + 8) = v11;
      v12 = *(a3 + 8);
      if (v12 == 63)
      {
        v6 = 0;
        *a3 += 8;
        v4 = *a1;
      }

      else
      {
        v6 = v12 + 1;
      }

      *(a3 + 8) = v6;
      v5 = *(a1 + 8);
    }

    while (v4 != *a2 || v5 != *(a2 + 8));
  }

  *a4 = v4;
  *(a4 + 8) = v5;
  *(a4 + 16) = *a3;
  *(a4 + 24) = v6;
}

uint64_t std::vector<std::vector<BOOL>>::__emplace_back_slow_path<std::vector<BOOL> const&>(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<BOOL>>>(a1, v6);
  }

  v13 = 0;
  v14 = 24 * v2;
  std::vector<BOOL>::vector((24 * v2), a2);
  v15 = 24 * v2 + 24;
  v7 = *(a1 + 8);
  v8 = 24 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::vector<BOOL>>,std::vector<BOOL>*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<std::vector<BOOL>>::~__split_buffer(&v13);
  return v12;
}

void sub_23E84A560(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::vector<BOOL>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::vector<BOOL>::vector(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = *(a2 + 8);
  if (v2)
  {
    std::vector<BOOL>::__vallocate[abi:ne200100](result, v2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = *(a2 + 8);
  if (v2)
  {
    std::vector<BOOL>::__vallocate[abi:ne200100](result, v2);
  }

  return result;
}

void std::vector<BOOL>::__construct_at_end<std::__bit_iterator<std::vector<BOOL>,true,0ul>,std::__bit_iterator<std::vector<BOOL>,true,0ul>>(void *a1, void *a2, unsigned int a3, void *a4, int a5, uint64_t a6)
{
  v8 = a1[1];
  v9 = v8 + a6;
  a1[1] = v8 + a6;
  if (!v8 || ((v9 - 1) ^ (v8 - 1)) >= 0x40)
  {
    if (v9 >= 0x41)
    {
      v10 = (v9 - 1) >> 6;
    }

    else
    {
      v10 = 0;
    }

    *(*a1 + 8 * v10) = 0;
  }

  v14 = v6;
  v15 = v7;
  v11 = *a1 + 8 * (v8 >> 6);
  v12 = v8 & 0x3F;
  std::__copy_impl::operator()[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,true,0ul>,std::__bit_iterator<std::vector<BOOL>,true,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(a2, a3, a4, a5, &v11, v13);
}

void std::__copy_impl::operator()[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,true,0ul>,std::__bit_iterator<std::vector<BOOL>,true,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(void *a1@<X1>, unint64_t a2@<X2>, void *a3@<X3>, int a4@<W4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  LODWORD(v6) = a2;
  v7 = *a5;
  v8 = *(a5 + 8);
  if (a1 != a3 || a2 != a4)
  {
    do
    {
      v9 = 1 << v8;
      if ((*a1 >> a2))
      {
        v10 = *v7 | v9;
      }

      else
      {
        v10 = *v7 & ~v9;
      }

      *v7 = v10;
      v11 = v6 == 63;
      v12 = v6 == 63;
      v6 = (a2 + 1);
      if (v11)
      {
        v6 = 0;
      }

      if (v8 == 63)
      {
        v8 = 0;
        *a5 = ++v7;
      }

      else
      {
        ++v8;
      }

      a1 += v12;
      a2 = v6 | a2 & 0xFFFFFFFF00000000;
    }

    while (a1 != a3 || v6 != a4);
    *(a5 + 8) = v8;
  }

  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = v7;
  *(a6 + 24) = v8;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<BOOL>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::vector<BOOL>>,std::vector<BOOL>*>(uint64_t a1, void **a2, void **a3, uint64_t a4)
{
  v11 = a4;
  v10 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  if (a2 == a3)
  {
    v9 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      *(a4 + 8) = *(v6 + 1);
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
      v6 += 3;
      a4 += 24;
    }

    while (v6 != a3);
    v11 = a4;
    v9 = 1;
    while (v5 != a3)
    {
      if (*v5)
      {
        operator delete(*v5);
      }

      v5 += 3;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<BOOL>>,std::vector<BOOL>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<BOOL>>,std::vector<BOOL>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<BOOL>>,std::vector<BOOL>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<BOOL>>,std::vector<BOOL>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v4 = *(v1 - 24);
    v1 -= 24;
    v3 = v4;
    if (v4)
    {
      operator delete(v3);
    }
  }
}

void **std::__split_buffer<std::vector<BOOL>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::vector<BOOL>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<BOOL>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    v5 = *(v1 - 24);
    v1 -= 24;
    v4 = v5;
    *(a1 + 16) = v1;
    if (v5)
    {
      operator delete(v4);
      v1 = *(a1 + 16);
    }
  }
}

void sub_23E84A980(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a10)
  {
    std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,void *>>>::operator()[abi:ne200100](&a11, a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_23E84AA40(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void sub_23E84AAE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a10)
  {
    std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,void *>>>::operator()[abi:ne200100](&a11, a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_23E84ABA8(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void sub_23E84AC4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a10)
  {
    std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,void *>>>::operator()[abi:ne200100](&a11, a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_23E84AD0C(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t beryllium::process(beryllium *this, core_analytics_t *a2, core_analytics_t *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  if (algs_get_log())
  {
    log = algs_get_log();
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = "1.0.8.4";
      _os_log_impl(&dword_23E83E000, log, OS_LOG_TYPE_DEFAULT, "Beryllium Alg Version: %s", &v9, 0xCu);
    }
  }

  beryllium::BerylliumProcessor::BerylliumProcessor(&v9);
  v6 = beryllium::BerylliumProcessor::beryllium_process(&v9, this, a2);
  beryllium::BerylliumProcessor::~BerylliumProcessor(&v9);
  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

void beryllium::BerylliumProcessor::~BerylliumProcessor(beryllium::BerylliumProcessor *this)
{
  v2 = *(this + 27);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(this + 24);
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 21);
  if (v4)
  {
    *(this + 22) = v4;
    operator delete(v4);
  }

  v5 = *(this + 18);
  if (v5)
  {
    operator delete(v5);
  }

  v6 = *(this + 15);
  if (v6)
  {
    *(this + 16) = v6;
    operator delete(v6);
  }

  v7 = *(this + 12);
  if (v7)
  {
    operator delete(v7);
  }

  v8 = *(this + 9);
  if (v8)
  {
    *(this + 10) = v8;
    operator delete(v8);
  }

  v9 = *(this + 6);
  if (v9)
  {
    operator delete(v9);
  }

  v10 = *(this + 3);
  if (v10)
  {
    *(this + 4) = v10;
    operator delete(v10);
  }

  v11 = *this;
  if (*this)
  {
    *(this + 1) = v11;
    operator delete(v11);
  }
}

uint64_t algs_get_log()
{
  if (algs_get_log_onceToken != -1)
  {
    algs_get_log_cold_1();
  }

  return algs_get_log_log;
}

os_log_t __algs_get_log_block_invoke()
{
  result = os_log_create("com.apple.Health.AFibBurden", "hid-algs-burden-computation");
  algs_get_log_log = result;
  return result;
}

double beryllium::BerylliumProcessor::BerylliumProcessor(beryllium::BerylliumProcessor *this)
{
  result = 0.0;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  return result;
}

{
  result = 0.0;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  return result;
}

unint64_t beryllium::BerylliumProcessor::check_input_validity(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = v3 - *a2;
  v5 = a2[3];
  if (v4 == a2[4] - v5)
  {
    if (v3 == v2)
    {
      v6 = 0;
LABEL_11:
      v9 = 0;
    }

    else
    {
      v6 = 0xAAAAAAAAAAAAAAABLL * (v4 >> 3);
      if (v6 <= 1)
      {
        v6 = 1;
      }

      v7 = (v5 + 8);
      v8 = (v2 + 8);
      v9 = 3;
      while (1)
      {
        v10 = *v7;
        v7 += 3;
        if (v10 != (*v8 - *(v8 - 1)) >> 3)
        {
          break;
        }

        v8 += 3;
        if (!--v6)
        {
          goto LABEL_11;
        }
      }

      v6 = 0x100000000;
    }
  }

  else
  {
    v6 = 0x100000000;
    v9 = 3;
  }

  return v9 | v6;
}

uint64_t beryllium::BerylliumProcessor::check_min_tacho_condition(uint64_t a1, uint64_t *a2)
{
  v3 = beryllium::BerylliumProcessor::check_input_validity(a1, a2);
  if ((v3 & 0x100000000) != 0)
  {
    v5 = v3 & 0xFFFFFF00;
    v13 = v3;
LABEL_31:
    v19 = 0x100000000;
    return v13 | v19 | v5;
  }

  v4 = *a2;
  v5 = a2[1] - *a2;
  if (!v5)
  {
    v13 = 0;
    goto LABEL_31;
  }

  v6 = 0;
  v7 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
  if (v7 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  v9 = (v4 + 8);
  v10 = 1;
  v11 = v8;
  do
  {
    v12 = *(v9 - 1);
    if (*v9 != v12)
    {
      v6 += (*v9 - v12) >> 3;
      if (*(*v9 - 1) - *v12 > 14400.0)
      {
        v10 = 0;
      }
    }

    v9 += 3;
    --v11;
  }

  while (v11);
  v13 = v6 > 69;
  if (v6 < 70)
  {
    v5 = 0;
    goto LABEL_31;
  }

  v14 = 0;
  v15 = (v4 + 8);
  do
  {
    if (*v15 - *(v15 - 1) > 0x20uLL)
    {
      ++v14;
    }

    v15 += 3;
    --v8;
  }

  while (v8);
  v16 = v7 < 0x14;
  v17 = (v10 & v16) == 0;
  if ((v10 & v16) != 0)
  {
    v18 = 0x100000000;
  }

  else
  {
    v18 = 0;
  }

  if (v17)
  {
    v13 = 0;
  }

  else
  {
    v13 = 2;
  }

  if (v14 >= 5)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0x100000000;
  }

  if (v14 < 5)
  {
    v13 = 1;
  }

  v5 = 0;
  return v13 | v19 | v5;
}

uint64_t beryllium::BerylliumProcessor::interpolate_Tachograms_and_calc_AFibBurden(beryllium::BerylliumProcessor *this, const beryllium::input_t *a2, output_t *a3)
{
  v111 = *MEMORY[0x277D85DE8];
  __p = 0;
  v104 = 0;
  v105 = 0;
  __src = 0;
  v101 = 0;
  v102 = 0;
  v6 = beryllium::BerylliumProcessor::check_min_tacho_condition(this, a2);
  if ((v6 & 0x100000000) != 0)
  {
    v25 = v6 & 0xFFFFFF00;
    v26 = v6;
    v27 = 0x100000000;
    goto LABEL_96;
  }

  v7 = *a2;
  if (*(a2 + 1) != *a2)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      std::vector<double>::__insert_with_size[abi:ne200100]<std::__wrap_iter<double const*>,std::__wrap_iter<double const*>>(this + 21, *(this + 22), *(v7 + v8), *(v7 + v8 + 8), (*(v7 + v8 + 8) - *(v7 + v8)) >> 3);
      v10 = *(a2 + 3) + v8;
      std::vector<BOOL>::__insert_with_size[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,true,0ul>,std::__bit_iterator<std::vector<BOOL>,true,0ul>>(this + 192, *(this + 24) + 8 * (*(this + 25) >> 6), *(this + 25) & 0x3F, *v10, 0, (*v10 + 8 * (*(v10 + 8) >> 6)), *(v10 + 8) & 0x3F, *(v10 + 8), buf);
      ++v9;
      v7 = *a2;
      v8 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1) - *a2) >> 3) > v9);
  }

  v11 = *(this + 21);
  if (*(this + 22) == v11)
  {
    v24 = 0;
  }

  else
  {
    v12 = 0;
    v13 = v101;
    do
    {
      if (v13 >= v102)
      {
        v14 = __src;
        v15 = v13 - __src;
        v16 = (v13 - __src) >> 3;
        v17 = v16 + 1;
        if ((v16 + 1) >> 61)
        {
          std::vector<double>::__throw_length_error[abi:ne200100]();
        }

        v18 = v102 - __src;
        if ((v102 - __src) >> 2 > v17)
        {
          v17 = v18 >> 2;
        }

        if (v18 >= 0x7FFFFFFFFFFFFFF8)
        {
          v19 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v19 = v17;
        }

        if (v19)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(&__src, v19);
        }

        v20 = v16;
        v21 = (8 * v16);
        v22 = &v21[-v20];
        *v21 = v12;
        v13 = (v21 + 1);
        memcpy(v22, v14, v15);
        v23 = __src;
        __src = v22;
        v101 = v13;
        v102 = 0;
        if (v23)
        {
          operator delete(v23);
        }
      }

      else
      {
        *v13 = v12;
        v13 += 8;
      }

      v101 = v13;
      ++v12;
      v11 = *(this + 21);
      v24 = (*(this + 22) - v11) >> 3;
    }

    while (v24 > v12);
  }

  vDSP_vsortiD(v11, __src, 0, v24, 1);
  vDSP_vsortD(*(this + 21), (*(this + 22) - *(this + 21)) >> 3, 1);
  if (*(this + 25))
  {
    v28 = 0;
    do
    {
      buf[0] = (*(*(this + 24) + ((*(__src + v28) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> *(__src + v28)) & 1;
      std::vector<BOOL>::push_back(this + 216, buf);
      ++v28;
    }

    while (v28 < *(this + 25));
  }

  v29 = (*(this + 22) - *(this + 21)) >> 3;
  *buf = 0;
  std::vector<double>::assign(this, v29, buf);
  v30 = *(this + 21);
  v31 = *(this + 22);
  v32 = *this;
  if (v30 != v31)
  {
    v34 = *v30;
    v33 = v30 + 1;
    v35 = v34;
    *v32 = v34;
    if (v33 != v31)
    {
      v36 = v32 + 1;
      do
      {
        v37 = *v33++;
        *v36++ = v37 - v35;
        v35 = v37;
      }

      while (v33 != v31);
    }
  }

  v38 = *(this + 1);
  v39 = v38 - (v32 + 1);
  if (v38 != (v32 + 1))
  {
    memmove(v32, v32 + 1, v38 - (v32 + 1));
  }

  v98 = a3;
  *(this + 1) = v32 + v39;
  *buf = 0;
  std::vector<double>::push_back[abi:ne200100](&__p, buf);
  v40 = *this;
  v41 = *(this + 1);
  if (*this != v41)
  {
    v42 = 0;
    LODWORD(v39) = 0;
    do
    {
      v43 = *v40 < 0.0;
      if (*v40 > 14400.0)
      {
        *buf = v42;
        std::vector<double>::push_back[abi:ne200100](&__p, buf);
      }

      v39 = v43 | v39;
      ++v42;
      ++v40;
    }

    while (v40 != v41);
    if (v39)
    {
      v25 = 0;
      v27 = 0x100000000;
      v26 = 3;
      goto LABEL_96;
    }
  }

  v44 = __p;
  if (v104 != __p)
  {
    v45 = 0;
    v46 = (v104 - __p) >> 3;
    do
    {
      *(this + 4) = *(this + 3);
      *(this + 7) = 0;
      if (v46 - 1 <= v45)
      {
        v47 = (((*(this + 22) - *(this + 21)) >> 3) - 1);
        if (!v45)
        {
LABEL_45:
          v48 = *v44;
          goto LABEL_46;
        }
      }

      else
      {
        v47 = v44[v45 + 1];
        if (!v45)
        {
          goto LABEL_45;
        }
      }

      v48 = v44[v45] + 1.0;
LABEL_46:
      v49 = v47;
      v50 = v48;
      v51 = v47 + 1;
      v52 = v51 - v48;
      *buf = 0;
      std::vector<double>::assign(this + 3, v52, buf);
      buf[0] = 0;
      std::vector<BOOL>::assign(this + 6, v52, buf);
      v53 = 8 * v49 + 8;
      if (v53 != 8 * v50)
      {
        memmove(*(this + 3), (8 * v50 + *(this + 21)), v53 - 8 * v50);
      }

      v54 = *(this + 27);
      v55 = v50 >> 6;
      if (v50 < 0)
      {
        v55 = -((63 - v50) >> 6);
      }

      v56 = v54 + 8 * v55;
      v57 = v49 >> 6;
      if (v49 < 0)
      {
        v57 = -((63 - v49) >> 6);
      }

      v58 = v54 + 8 * v57 + 8 * (((v49 & 0x3Fu) + 1) >> 6);
      v59 = *(this + 6);
      *buf = v56;
      if ((v50 & 0x3F) != 0)
      {
        *&buf[8] = v50 & 0x3F;
        v108 = v58;
        v109 = v51 & 0x3F;
        v106 = v59;
        v107 = 0;
        std::__copy_unaligned[abi:ne200100]<std::vector<BOOL>,false>(buf, &v108, &v106, v99);
      }

      else
      {
        *&buf[8] = 0;
        v108 = v58;
        v109 = v51 & 0x3F;
        v106 = v59;
        v107 = 0;
        std::__copy_aligned[abi:ne200100]<std::vector<BOOL>,false>(buf, &v108, &v106, v99);
      }

      if (algs_get_log() && *(this + 4) != *(this + 3))
      {
        v60 = 0;
        do
        {
          log = algs_get_log();
          if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
          {
            v62 = *(*(this + 3) + 8 * v60);
            *buf = 134217984;
            *&buf[4] = v62;
            _os_log_debug_impl(&dword_23E83E000, log, OS_LOG_TYPE_DEBUG, "\nPre-Interpolation Trigger Time: %f", buf, 0xCu);
          }

          ++v60;
        }

        while (v60 < (*(this + 4) - *(this + 3)) >> 3);
      }

      if (*(this + 7) == 1)
      {
        std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(this + 9, *(this + 3), *(this + 4), (*(this + 4) - *(this + 3)) >> 3);
        std::vector<BOOL>::operator=(this + 96, this + 48);
      }

      else
      {
        v63 = vcvtpd_s64_f64((*(*(this + 4) - 8) - **(this + 3)) / 600.0);
        *buf = 0x4082C00000000000;
        v64 = v63;
        v108 = 0;
        std::vector<double>::assign(this + 9, v63, &v108);
        vDSP_vrampD(*(this + 3), buf, *(this + 9), 1, v64);
        LOBYTE(v108) = 0;
        std::vector<BOOL>::assign(this + 12, v64, &v108);
        v65 = *(this + 9);
        v66 = *(this + 10);
        v67 = v66 - v65;
        if (v66 != v65)
        {
          v68 = 0;
          v69 = v67 >> 3;
          v70 = *(this + 3);
          v71 = (*(this + 4) - v70) >> 3;
          if (v69 <= 1)
          {
            v69 = 1;
          }

          do
          {
            if (v71 >= 2)
            {
              v72 = 0;
              v73 = *(v65 + 8 * v68);
              while (1)
              {
                v74 = *(v70 + 8 + 8 * v72);
                if (v74 > v73)
                {
                  break;
                }

                if (v71 - 1 == ++v72)
                {
                  goto LABEL_77;
                }
              }

              if (vabdd_f64(v73, v74) < vabdd_f64(v73, *(v70 + 8 * v72)))
              {
                LODWORD(v72) = v72 + 1;
              }

              v75 = v72;
              v76 = (v72 >> 3) & 0x1FFFFFFFFFFFFFF8;
              v77 = *(this + 12);
              v78 = v68 >> 6;
              v79 = 1 << v68;
              if ((*(*(this + 6) + v76) >> v75))
              {
                v80 = *(v77 + 8 * v78) | v79;
              }

              else
              {
                v80 = *(v77 + 8 * v78) & ~v79;
              }

              *(v77 + 8 * v78) = v80;
            }

LABEL_77:
            ++v68;
          }

          while (v68 != v69);
        }
      }

      v81 = *(this + 16);
      if (v81 == *(this + 15))
      {
        std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(this + 15, *(this + 9), *(this + 10), (*(this + 10) - *(this + 9)) >> 3);
        std::vector<BOOL>::operator=(this + 144, this + 96);
      }

      else
      {
        std::vector<double>::__insert_with_size[abi:ne200100]<std::__wrap_iter<double *>,std::__wrap_iter<double *>>(this + 120, v81, *(this + 9), *(this + 10), (*(this + 10) - *(this + 9)) >> 3);
        v82 = *(this + 18) + 8 * (*(this + 19) >> 6);
        v39 = v39 & 0xFFFFFFFF00000000 | *(this + 19) & 0x3FLL;
        v83 = *(this + 13);
        v84 = *(this + 12) + 8 * (v83 >> 6);
        *buf = *(this + 12);
        *&buf[8] = 0;
        v108 = v84;
        v109 = v83 & 0x3F;
        std::vector<BOOL>::__insert_with_size[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(this + 144, v82, v39, buf, &v108, v83, &v106);
      }

      ++v45;
      v44 = __p;
      v46 = (v104 - __p) >> 3;
    }

    while (v46 > v45);
  }

  v85 = *(this + 19);
  *buf = *(this + 18);
  *&buf[8] = 0;
  v98->Afib_burden = (std::__count_BOOL[abi:ne200100]<true,std::vector<BOOL>,false>(buf, v85) / *(this + 19)) * 100.0;
  v86 = *(this + 28);
  *buf = *(this + 27);
  *&buf[8] = 0;
  v87 = std::__count_BOOL[abi:ne200100]<true,std::vector<BOOL>,false>(buf, v86);
  v88 = *(this + 28);
  if (algs_get_log())
  {
    if (*(this + 16) != *(this + 15))
    {
      v89 = 0;
      do
      {
        v90 = algs_get_log();
        if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
        {
          v91 = *(*(this + 15) + 8 * v89);
          *buf = 134217984;
          *&buf[4] = v91;
          _os_log_debug_impl(&dword_23E83E000, v90, OS_LOG_TYPE_DEBUG, "\nInterpolated Trigger Time: %f", buf, 0xCu);
        }

        ++v89;
      }

      while (v89 < (*(this + 16) - *(this + 15)) >> 3);
    }

    if (*(this + 19))
    {
      v92 = 0;
      do
      {
        v93 = algs_get_log();
        if (os_log_type_enabled(v93, OS_LOG_TYPE_DEBUG))
        {
          v94 = (*(*(this + 18) + ((v92 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v92) & 1;
          *buf = 67109120;
          *&buf[4] = v94;
          _os_log_debug_impl(&dword_23E83E000, v93, OS_LOG_TYPE_DEBUG, "\nInterpolated Classification: %u", buf, 8u);
        }

        ++v92;
      }

      while (*(this + 19) > v92);
    }

    v95 = algs_get_log();
    if (os_log_type_enabled(v95, OS_LOG_TYPE_DEBUG))
    {
      beryllium::BerylliumProcessor::interpolate_Tachograms_and_calc_AFibBurden(v95, (v87 / v88) * 100.0);
    }
  }

  v27 = 0;
  v26 = 0;
  v25 = 0;
LABEL_96:
  if (__src)
  {
    v101 = __src;
    operator delete(__src);
  }

  if (__p)
  {
    v104 = __p;
    operator delete(__p);
  }

  v96 = *MEMORY[0x277D85DE8];
  return v26 | v27 | v25;
}

void *std::vector<double>::assign(void *a1, unint64_t a2, uint64_t *a3)
{
  v5 = a1[2];
  result = *a1;
  if (a2 > (v5 - result) >> 3)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v5 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a2 >> 61))
    {
      v7 = v5 >> 2;
      if (v5 >> 2 <= a2)
      {
        v7 = a2;
      }

      if (v5 >= 0x7FFFFFFFFFFFFFF8)
      {
        v8 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v8 = v7;
      }

      std::vector<double>::__vallocate[abi:ne200100](a1, v8);
    }

    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  v9 = a1[1];
  v10 = (v9 - result) >> 3;
  if (v10 >= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = (v9 - result) >> 3;
  }

  if (v11)
  {
    v12 = 0;
    v13 = *a3;
    v14 = (v11 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v15 = vdupq_n_s64(v11 - 1);
    v16 = result + 1;
    do
    {
      v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v12), xmmword_23E85A600)));
      if (v17.i8[0])
      {
        *(v16 - 1) = v13;
      }

      if (v17.i8[4])
      {
        *v16 = v13;
      }

      v12 += 2;
      v16 += 2;
    }

    while (v14 != v12);
  }

  v18 = a2 >= v10;
  v19 = a2 - v10;
  if (v19 != 0 && v18)
  {
    v20 = 0;
    v21 = v9 + 8 * v19;
    v22 = *a3;
    v23 = (8 * a2 - (v9 - result) - 8) >> 3;
    v24 = vdupq_n_s64(v23);
    v25 = (v9 + 8);
    do
    {
      v26 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(vdupq_n_s64(v20), xmmword_23E85A600)));
      if (v26.i8[0])
      {
        *(v25 - 1) = v22;
      }

      if (v26.i8[4])
      {
        *v25 = v22;
      }

      v20 += 2;
      v25 += 2;
    }

    while (((v23 + 2) & 0x3FFFFFFFFFFFFFFELL) != v20);
    a1[1] = v21;
  }

  else
  {
    a1[1] = &result[a2];
  }

  return result;
}

void std::vector<double>::push_back[abi:ne200100](const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void std::vector<BOOL>::assign(void *a1, unint64_t a2, _BYTE *a3)
{
  a1[1] = 0;
  if (a2)
  {
    v6 = a1[2];
    v7 = v6 << 6;
    if (v6 << 6 >= a2)
    {
      a1[1] = a2;
    }

    else
    {
      v15 = 0;
      v16 = 0uLL;
      if ((a2 & 0x8000000000000000) != 0)
      {
        std::vector<double>::__throw_length_error[abi:ne200100]();
      }

      v8 = v6 << 7;
      if (v8 <= ((a2 + 63) & 0xFFFFFFFFFFFFFFC0))
      {
        v8 = (a2 + 63) & 0xFFFFFFFFFFFFFFC0;
      }

      if (v7 <= 0x3FFFFFFFFFFFFFFELL)
      {
        v9 = v8;
      }

      else
      {
        v9 = 0x7FFFFFFFFFFFFFFFLL;
      }

      std::vector<BOOL>::reserve(&v15, v9);
      v11 = v15;
      v12 = *(&v16 + 1);
      v15 = *a1;
      v10 = v15;
      v13 = *(a1 + 1);
      *a1 = v11;
      a1[1] = a2;
      a1[2] = v12;
      v16 = v13;
      if (v10)
      {
        operator delete(v10);
      }
    }

    v14 = *a1;
    if (*a3 == 1)
    {
      v15 = *a1;
      LODWORD(v16) = 0;
      std::__fill_n_BOOL[abi:ne200100]<true,std::vector<BOOL>>(&v15, a2);
    }

    else
    {
      v15 = *a1;
      LODWORD(v16) = 0;
      std::__fill_n_BOOL[abi:ne200100]<false,std::vector<BOOL>>(&v15, a2);
    }
  }
}

void sub_23E84BFD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<BOOL>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a2 + 8);
    if (v4)
    {
      if (v4 > *(a1 + 16) << 6)
      {
        v5 = *a1;
        if (*a1)
        {
          operator delete(v5);
          *a1 = 0;
          *(a1 + 8) = 0;
          *(a1 + 16) = 0;
          v4 = *(a2 + 8);
        }

        std::vector<BOOL>::__vallocate[abi:ne200100](a1, v4);
      }

      memmove(*a1, *a2, (((v4 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8) + 8);
      v6 = *(a2 + 8);
    }

    else
    {
      v6 = 0;
    }

    *(a1 + 8) = v6;
  }

  return a1;
}

void beryllium::BerylliumProcessor::calculateAFdensity(uint64_t a1, double **a2, void *a3)
{
  v52 = 0;
  v53 = 0;
  v54 = 0;
  v49 = 0;
  v50 = 0;
  v51 = 0;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  __C = 0;
  v41 = 0;
  v42 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v6 = *(a1 + 224);
  __p = *(a1 + 216);
  LODWORD(v29) = 0;
  v7 = std::__count_BOOL[abi:ne200100]<true,std::vector<BOOL>,false>(&__p, v6);
  v8 = *(a1 + 224);
  v9 = *(a2[1] - 1) - **a2;
  v10 = fmod(v9, 600.0);
  v11 = ceil(v9 / 600.0);
  if (v10 == 0.0)
  {
    v12 = v9 / 600.0 + 1.0;
  }

  else
  {
    v12 = v11;
  }

  __B = 600.0;
  v13 = v12;
  __p = 0;
  std::vector<double>::assign(&v52, v13, &__p);
  __p = 0;
  std::vector<double>::assign(&v49, v13, &__p);
  __p = 0;
  std::vector<double>::assign(&v46, v13, &__p);
  vDSP_vrampD(*a2, &__B, v52, 1, v13);
  v32 = **a2;
  vDSP_vsubD(&v32, 0, v52, 1, v49, 1, v53 - v52);
  v31 = *(a2[1] - 1) - **a2;
  vDSP_vsdivD(v49, 1, &v31, v46, 1, v50 - v49);
  v50 = v49;
  __p = 0;
  std::vector<double>::push_back[abi:ne200100](&v43, &__p);
  v14 = (v7 / v8);
  if ((v53 - v52) >= 9)
  {
    v15 = 1;
    do
    {
      v38 = v37;
      v35 = 0;
      LODWORD(__p) = 0;
      v17 = *a2;
      v16 = a2[1];
      if (v16 == *a2)
      {
        v20 = 0;
      }

      else
      {
        v18 = 0;
        v19 = 0;
        do
        {
          if (v17[v19] < v52[v15])
          {
            std::vector<int>::push_back[abi:ne200100](&v37, &__p);
            LOBYTE(v30) = (*(*a3 + ((__p >> 3) & 0x1FFFFFFFFFFFFFF8)) >> __p) & 1;
            std::vector<BOOL>::push_back(&v34, &v30);
            v18 = __p;
            v17 = *a2;
            v16 = a2[1];
          }

          LODWORD(__p) = ++v18;
          v19 = v18;
        }

        while (v18 < (v16 - v17));
        v20 = v35;
      }

      __p = v34;
      LODWORD(v29) = 0;
      v30 = 1.0 / v14 * std::__count_BOOL[abi:ne200100]<true,std::vector<BOOL>,false>(&__p, v20) / a3[1];
      std::vector<double>::push_back[abi:ne200100](&v43, &v30);
      ++v15;
    }

    while (v15 < v53 - v52);
  }

  vDSP_vsubD(v43, 1, v46, 1, v43, 1, (v44 - v43) >> 3);
  std::vector<double>::vector[abi:ne200100](&__p, (v44 - v43) >> 3);
  v21 = v43;
  v22 = v44;
  v23 = __p;
  if (v43 != v44)
  {
    v24 = __p;
    do
    {
      v25 = *v21++;
      *v24++ = fabs(v25);
    }

    while (v21 != v22);
  }

  v30 = v46[1] - *v46;
  v27 = 0;
  std::vector<double>::assign(&__C, (v29 - v23) >> 3, &v27);
  vDSP_vtrapzD(__p, 1, &v30, __C, 1, (v29 - __p) >> 3);
  v26 = *(v41 - 1);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  if (v34)
  {
    operator delete(v34);
  }

  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }

  if (__C)
  {
    v41 = __C;
    operator delete(__C);
  }

  if (v43)
  {
    v44 = v43;
    operator delete(v43);
  }

  if (v46)
  {
    v47 = v46;
    operator delete(v46);
  }

  if (v49)
  {
    v50 = v49;
    operator delete(v49);
  }

  if (v52)
  {
    v53 = v52;
    operator delete(v52);
  }
}

void sub_23E84C4A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  if (a21)
  {
    operator delete(a21);
  }

  if (a24)
  {
    operator delete(a24);
  }

  if (a27)
  {
    operator delete(a27);
  }

  v30 = *(v28 - 136);
  if (v30)
  {
    *(v28 - 128) = v30;
    operator delete(v30);
  }

  v31 = *(v28 - 112);
  if (v31)
  {
    *(v28 - 104) = v31;
    operator delete(v31);
  }

  v32 = *(v28 - 88);
  if (v32)
  {
    *(v28 - 80) = v32;
    operator delete(v32);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<int>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

float beryllium::BerylliumProcessor::TachAFdensity(double **this, const beryllium::input_t *a2, const output_t *a3)
{
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v43 = 0;
  __dst = 0;
  v45 = 0;
  __src = 0;
  v41 = 0;
  v42 = 0;
  if (a3->Afib_burden < 2.0)
  {
    v3 = -1.0;
    goto LABEL_4;
  }

  v3 = 1.0;
  if (a3->Afib_burden <= 95.0)
  {
    v39 = 0;
    v6 = *this;
    v7 = this[1];
    if (*this == v7)
    {
      v11 = 0;
      v10 = 0;
      v9 = (this + 21);
      v12 = ((this[22] - this[21]) >> 3) - 1;
    }

    else
    {
      v8 = 0;
      do
      {
        if (*v6 > 14400.0)
        {
          std::vector<int>::push_back[abi:ne200100](&__src, &v39);
          v8 = v39;
        }

        v39 = ++v8;
        ++v6;
      }

      while (v6 != v7);
      v9 = (this + 21);
      v11 = v41;
      v10 = v42;
      v12 = ((this[22] - this[21]) >> 3) - 1;
      if (v41 < v42)
      {
        *v41 = v12;
        v13 = v11 + 4;
LABEL_25:
        v41 = v13;
        std::vector<double>::__insert_with_size[abi:ne200100]<std::__wrap_iter<double *>,std::__wrap_iter<double *>>(&v43, __dst, *v9, &(*v9)[8 * *__src + 8], (8 * *__src + 8) >> 3);
        v25 = __src;
        if (v41 - __src != 4)
        {
          v26 = 0;
          do
          {
            v27 = &v25[4 * v26];
            v28 = *v27;
            v29 = *(__dst - 1);
            v30 = *&(*v9)[8 * v28 + 8];
            v31 = (*v9 + 8);
            v32 = 8 * *(v27 + 1);
            __C = 0;
            v37 = 0;
            v38 = 0;
            std::vector<double>::__init_with_size[abi:ne200100]<std::__wrap_iter<double const*>,std::__wrap_iter<double const*>>(&__C, v31 + 8 * v28, v31 + v32, (v32 - 8 * v28) >> 3);
            v35 = v29 + 600.0 - v30;
            std::vector<double>::assign(&v46, v37 - __C, &v35);
            vDSP_vaddD(__C, 1, v46, 1, __C, 1, v47 - v46);
            std::vector<double>::__insert_with_size[abi:ne200100]<std::__wrap_iter<double *>,std::__wrap_iter<double *>>(&v43, __dst, __C, v37, v37 - __C);
            if (__C)
            {
              v37 = __C;
              operator delete(__C);
            }

            ++v26;
            v25 = __src;
          }

          while (((v41 - __src) >> 2) - 1 > v26);
        }

        __C = *v43;
        vDSP_vsubD(&__C, 0, v43, 1, v43, 1, (__dst - v43) >> 3);
        std::vector<BOOL>::vector(__p, (this + 27));
        beryllium::BerylliumProcessor::calculateAFdensity(this, &v43, __p);
        v3 = v33;
        if (__p[0])
        {
          operator delete(__p[0]);
        }

        if (__src)
        {
          v41 = __src;
          operator delete(__src);
        }

        goto LABEL_34;
      }
    }

    v14 = __src;
    v15 = v11 - __src;
    v16 = (v11 - __src) >> 2;
    v17 = v16 + 1;
    if ((v16 + 1) >> 62)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v18 = v10 - __src;
    if (v18 >> 1 > v17)
    {
      v17 = v18 >> 1;
    }

    v19 = v18 >= 0x7FFFFFFFFFFFFFFCLL;
    v20 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v19)
    {
      v20 = v17;
    }

    if (v20)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&__src, v20);
    }

    v21 = (v11 - __src) >> 2;
    v22 = (4 * v16);
    v23 = (4 * v16 - 4 * v21);
    *v22 = v12;
    v13 = (v22 + 1);
    memcpy(v23, v14, v15);
    v24 = __src;
    __src = v23;
    v41 = v13;
    v42 = 0;
    if (v24)
    {
      operator delete(v24);
    }

    goto LABEL_25;
  }

LABEL_34:
  if (v43)
  {
    __dst = v43;
    operator delete(v43);
  }

LABEL_4:
  if (v46)
  {
    v47 = v46;
    operator delete(v46);
  }

  return v3;
}

void sub_23E84C9B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  if (a21)
  {
    operator delete(a21);
  }

  v24 = *(v22 - 104);
  if (v24)
  {
    *(v22 - 96) = v24;
    operator delete(v24);
  }

  _Unwind_Resume(exception_object);
}

float beryllium::BerylliumProcessor::median(beryllium::BerylliumProcessor *this, double *a2, int a3)
{
  if (a3 <= 0)
  {
    beryllium::BerylliumProcessor::median();
  }

  v3 = a2;
  if (!a2)
  {
    beryllium::BerylliumProcessor::median();
  }

  v4 = a3;
  __p = 0;
  v20 = 0;
  v5 = a3;
  v21 = 0;
  std::vector<double>::reserve(&__p, a3);
  v6 = 8 * v5;
  do
  {
    std::vector<double>::push_back[abi:ne200100](&__p, v3++);
    v6 -= 8;
  }

  while (v6);
  v8 = __p;
  v9 = v20;
  v10 = (v20 - __p) >> 1;
  if (v4)
  {
    v16 = (v10 - 4) & 0xFFFFFFFFFFFFFFF8;
    v17 = (__p + v16);
    if (__p + v16 != v20)
    {
      std::__nth_element[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<double *>>(__p, (__p + v16), v20, v7);
    }

    v15 = *v17;
  }

  else
  {
    v11 = v10 & 0xFFFFFFFFFFFFFFF8;
    v12 = (__p + v11 - 8);
    if (v12 != v20)
    {
      std::__nth_element[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<double *>>(__p, (__p + v11 - 8), v20, v7);
      v8 = __p;
      v9 = v20;
      v11 = ((v20 - __p) >> 1) & 0xFFFFFFFFFFFFFFF8;
    }

    v13 = *v12;
    v14 = (v8 + v11);
    if ((v8 + v11) != v9)
    {
      std::__nth_element[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<double *>>(v8, (v8 + v11), v9, v7);
    }

    v15 = (v13 + *v14) * 0.5;
  }

  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }

  return v15;
}

void sub_23E84CB58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<double>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(result, a2);
    }

    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(result, a2);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

float beryllium::BerylliumProcessor::calc_tacho_times_diff_median(beryllium::BerylliumProcessor *this, const beryllium::input_t *a2)
{
  v21 = 0;
  __dst = 0;
  v23 = 0;
  __p = 0;
  v19 = 0;
  v20 = 0;
  v2 = *a2;
  if (*(a2 + 1) == *a2)
  {
    goto LABEL_13;
  }

  v4 = 0;
  do
  {
    v5 = *(v2 + 24 * v4 + 8) - *(v2 + 24 * v4);
    if (v5)
    {
      v17 = 0;
      this = std::vector<double>::assign(&__p, v5 >> 3, &v17);
      v2 = *a2;
      v6 = *a2 + 24 * v4;
      v7 = *v6;
      v8 = *(v6 + 8);
      v9 = __p;
      if (v7 != v8)
      {
        v11 = *v7;
        v10 = v7 + 1;
        v12 = v11;
        *__p = v11;
        if (v10 != v8)
        {
          v13 = (v9 + 8);
          do
          {
            v14 = *v10++;
            *v13++ = v14 - v12;
            v12 = v14;
          }

          while (v10 != v8);
        }
      }

      if (v19 != v9)
      {
        this = std::vector<double>::__insert_with_size[abi:ne200100]<std::__wrap_iter<double *>,std::__wrap_iter<double *>>(&v21, __dst, v9 + 8, v19, (v19 - (v9 + 8)) >> 3);
        v2 = *a2;
      }
    }

    ++v4;
  }

  while (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1) - v2) >> 3) > v4);
  if (__dst == v21)
  {
LABEL_13:
    v15 = -1.0;
  }

  else
  {
    v15 = beryllium::BerylliumProcessor::median(this, v21, (__dst - v21) >> 3);
  }

  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  if (v21)
  {
    __dst = v21;
    operator delete(v21);
  }

  return v15;
}

void sub_23E84CD78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

void beryllium::BerylliumProcessor::calc_timezone_shift(beryllium::BerylliumProcessor *this, const beryllium::input_t *a2, core_analytics_t *a3)
{
  __p = 0;
  v28 = 0;
  v29 = 0;
  __dst = 0;
  v25 = 0;
  v26 = 0;
  __C = 0.0;
  std::vector<double>::push_back[abi:ne200100](&__p, (*(*a2 + 8) - 8));
  v5 = *a2;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1) - *a2) >> 3) >= 2)
  {
    v6 = 0;
    v7 = 1;
    do
    {
      std::vector<double>::push_back[abi:ne200100](&__p, *(v5 + v6 + 24));
      std::vector<double>::push_back[abi:ne200100](&__p, (*(*a2 + v6 + 32) - 8));
      ++v7;
      v5 = *a2;
      v6 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1) - *a2) >> 3) > v7);
  }

  v22 = 0;
  std::vector<double>::assign(&__dst, (v28 - __p) >> 3, &v22);
  v8 = v28;
  v9 = __dst;
  if (__p != v28)
  {
    v10 = (__p + 8);
    v11 = *__p;
    *__dst = *__p;
    if (v10 != v8)
    {
      v12 = (v9 + 8);
      do
      {
        v13 = *v10++;
        *v12++ = v13 - v11;
        v11 = v13;
      }

      while (v10 != v8);
    }
  }

  v14 = v9;
  v15 = v25 - (v9 + 8);
  if (v25 != v9 + 8)
  {
    memmove(v9, v9 + 8, v25 - (v9 + 8));
    v14 = __dst;
  }

  v25 = &v9[v15];
  vDSP_minvD(v14, 1, &__C, (&v9[v15] - v14) >> 3);
  v16 = __dst;
  v17 = 0.0;
  v18 = 0.0;
  if (__dst != v25)
  {
    v19 = __dst;
    do
    {
      v20 = *v19++;
      if (v20 < 0.0)
      {
        v18 = v18 + 1.0;
      }
    }

    while (v19 != v25);
  }

  v21 = fabs(__C);
  if (__C < 0.0)
  {
    v17 = v21;
  }

  a3->var2 = v18;
  a3->var3 = v17;
  if (v16)
  {
    v25 = v16;
    operator delete(v16);
  }

  if (__p)
  {
    v28 = __p;
    operator delete(__p);
  }
}

void sub_23E84CF78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t beryllium::BerylliumProcessor::beryllium_process(beryllium::BerylliumProcessor *this, const beryllium::input_t *a2, core_analytics_t *a3)
{
  a3->var0 = nanf("");
  a3->var1 = nanf("");
  a3->var2 = nanf("");
  a3->var3 = nanf("");
  a3->var0 = beryllium::BerylliumProcessor::calc_tacho_times_diff_median(v6, a2);
  beryllium::BerylliumProcessor::calc_timezone_shift(v7, a2, a3);
  v8 = beryllium::BerylliumProcessor::interpolate_Tachograms_and_calc_AFibBurden(this, a2, &v13);
  if ((v8 & 0x100000000) != 0)
  {
    v11 = 0x100000000;
  }

  else
  {
    v10 = beryllium::BerylliumProcessor::TachAFdensity(this, v9, &v13);
    v11 = 0;
    a3->var1 = v10;
    LODWORD(v8) = v13;
  }

  return v11 | v8;
}

char *std::vector<double>::__insert_with_size[abi:ne200100]<std::__wrap_iter<double const*>,std::__wrap_iter<double const*>>(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 3)
  {
    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 3);
    if (v12 >> 61)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 2 > v12)
    {
      v12 = v14 >> 2;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 3;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, v15);
    }

    v33 = 8 * v16;
    v34 = 8 * a5;
    v35 = (8 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 8;
    }

    while (v34);
    memcpy((v33 + 8 * a5), v5, a1[1] - v5);
    v37 = *a1;
    v38 = v33 + 8 * a5 + a1[1] - v5;
    a1[1] = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    a1[1] = v38;
    a1[2] = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (8 * v16);
  }

  v17 = (v10 - __dst) >> 3;
  if (v17 >= a5)
  {
    v22 = &__dst[8 * a5];
    v23 = &v10[-8 * a5];
    v24 = a1[1];
    while (v23 < v10)
    {
      v25 = *v23;
      v23 += 8;
      *v24++ = v25;
    }

    a1[1] = v24;
    if (v10 != v22)
    {
      memmove(&__dst[8 * a5], __dst, v10 - v22);
    }

    v30 = 8 * a5;
    v31 = v5;
    v32 = v7;
    goto LABEL_34;
  }

  v18 = &__src[v10 - __dst];
  v19 = a1[1];
  v20 = v19;
  while (v18 != a4)
  {
    v21 = *v18;
    v18 += 8;
    *v20 = v21;
    v20 += 8;
    v19 += 8;
  }

  a1[1] = v19;
  if (v17 >= 1)
  {
    v26 = &__dst[8 * a5];
    v27 = &v19[-8 * a5];
    v28 = v19;
    while (v27 < v10)
    {
      v29 = *v27;
      v27 += 8;
      *v28 = v29;
      v28 += 8;
    }

    a1[1] = v28;
    if (v20 != v26)
    {
      memmove(&__dst[8 * a5], __dst, v19 - v26);
    }

    if (v10 != v5)
    {
      v31 = v5;
      v32 = v7;
      v30 = v10 - v5;
LABEL_34:
      memmove(v31, v32, v30);
    }
  }

  return v5;
}

void std::vector<BOOL>::__insert_with_size[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,true,0ul>,std::__bit_iterator<std::vector<BOOL>,true,0ul>>(uint64_t a1@<X0>, unint64_t a2@<X1>, unsigned int a3@<W2>, void *a4@<X3>, unsigned int a5@<W4>, void *a6@<X5>, int a7@<W6>, unint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = 0;
  *(a9 + 8) = 0;
  v19 = *(a1 + 8);
  v18 = *(a1 + 16);
  if (v18 << 6 < a8 || v19 > (v18 << 6) - a8)
  {
    v43 = 0;
    v44 = 0uLL;
    v21 = v19 + a8;
    if (v21 < 0)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    if ((v18 << 6) > 0x3FFFFFFFFFFFFFFELL)
    {
      v24 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v18 << 7;
      v23 = (v21 + 63) & 0xFFFFFFFFFFFFFFC0;
      if (v22 <= v23)
      {
        v24 = v23;
      }

      else
      {
        v24 = v22;
      }
    }

    std::vector<BOOL>::reserve(&v43, v24);
    v30 = *a1;
    *&v44 = *(a1 + 8) + a8;
    v41 = v43;
    v42 = 0;
    std::__copy_aligned[abi:ne200100]<std::vector<BOOL>,true>(v30, 0, a2, a3, &v41, &v39);
    v31 = v39;
    *a9 = v39;
    v32 = v40;
    *(a9 + 8) = v40;
    v33 = *(a1 + 8);
    v34 = (*a1 + 8 * (v33 >> 6));
    v35 = v33 & 0x3F;
    v41 = &v43[v44 >> 6];
    v42 = v44 & 0x3F;
    if (v42 == v35)
    {
      std::__copy_backward_aligned[abi:ne200100]<std::vector<BOOL>,true>(a2, a3, v34, v35, &v41, &v39);
    }

    else
    {
      std::__copy_backward_unaligned[abi:ne200100]<std::vector<BOOL>,true>(a2, a3, v34, v35, &v41, &v39);
    }

    v36 = *a1;
    *a1 = v43;
    v43 = v36;
    v37 = *(a1 + 8);
    *(a1 + 8) = v44;
    v44 = v37;
    if (v36)
    {
      operator delete(v36);
    }
  }

  else
  {
    v25 = *a1;
    v26 = (*a1 + 8 * (v19 >> 6));
    v27 = *(a1 + 8) & 0x3FLL;
    *(a1 + 8) = v19 + a8;
    v43 = &v25[(v19 + a8) >> 6];
    if (((v19 + a8) & 0x3F) == v27)
    {
      LODWORD(v44) = v27;
      std::__copy_backward_aligned[abi:ne200100]<std::vector<BOOL>,true>(a2, a3, v26, v19 & 0x3F, &v43, &v41);
    }

    else
    {
      LODWORD(v44) = (v19 + a8) & 0x3F;
      std::__copy_backward_unaligned[abi:ne200100]<std::vector<BOOL>,true>(a2, a3, v26, v19 & 0x3F, &v43, &v41);
    }

    v28 = 8 * (a2 - *a1) + a3;
    if (v28 < 0)
    {
      v38 = v28 - 63;
      if (v28 - 63 < 0)
      {
        v38 = 8 * (a2 - *a1) + a3;
      }

      v29 = v38 >> 6;
    }

    else
    {
      v29 = v28 >> 6;
    }

    v31 = *a1 + 8 * v29;
    v32 = v28 & 0x3F;
    *a9 = v31;
    *(a9 + 8) = v32;
  }

  v41 = v31;
  v42 = v32;
  std::__copy_impl::operator()[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,true,0ul>,std::__bit_iterator<std::vector<BOOL>,true,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(a4, a5, a6, a7, &v41, &v43);
}

void sub_23E84D55C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23E84D620(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__copy_backward_aligned[abi:ne200100]<std::vector<BOOL>,true>@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, void *a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = a4 - a2 + 8 * (a3 - a1);
  result = *a5;
  if (v8 >= 1)
  {
    if (a4)
    {
      if (v8 >= a4)
      {
        v10 = a4;
      }

      else
      {
        v10 = v8;
      }

      v8 -= v10;
      v11 = (-1 << (a4 - v10)) & (0xFFFFFFFFFFFFFFFFLL >> -a4);
      *result = *result & ~v11 | *a3 & v11;
      *(a5 + 8) = (*(a5 + 8) - v10) & 0x3F;
    }

    if (v8 >= 0)
    {
      v12 = v8;
    }

    else
    {
      v12 = v8 + 63;
    }

    v13 = v12 >> 6;
    result -= v12 >> 6;
    *a5 = result;
    v14 = &a3[-(v12 >> 6)];
    if ((v8 + 63) >= 0x7F)
    {
      memmove(result, v14, 8 * v13);
      result = *a5;
    }

    if (v8 - (v13 << 6) >= 1)
    {
      v15 = -1 << ((v13 << 6) - v8);
      v16 = *(v14 - 1) & v15;
      v17 = *--result;
      *a5 = result;
      *result = v17 & ~v15 | v16;
      *(a5 + 8) = -v8 & 0x3F;
    }
  }

  *a6 = result;
  *(a6 + 8) = *(a5 + 8);
  return result;
}

unint64_t std::__copy_backward_unaligned[abi:ne200100]<std::vector<BOOL>,true>@<X0>(unint64_t result@<X0>, unsigned int a2@<W1>, void *a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = a4 - a2 + 8 * (a3 - result);
  if (v6 <= 0)
  {
    v11 = *a5;
    LODWORD(v9) = *(a5 + 8);
  }

  else
  {
    if (a4)
    {
      if (v6 >= a4)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 - a2 + 8 * (a3 - result);
      }

      v6 -= v7;
      v8 = (-1 << (a4 - v7)) & (0xFFFFFFFFFFFFFFFFLL >> -a4) & *a3;
      v9 = *(a5 + 8);
      if (v7 >= v9)
      {
        v10 = *(a5 + 8);
      }

      else
      {
        v10 = v7;
      }

      v11 = *a5;
      if (v10)
      {
        v12 = v8 >> (a4 - v9);
        if (v9 > a4)
        {
          v12 = v8 << (v9 - a4);
        }

        *v11 = *v11 & ~((-1 << (v9 - v10)) & (0xFFFFFFFFFFFFFFFFLL >> -v9)) | v12;
        LODWORD(v9) = (v9 - v10) & 0x3F;
        *(a5 + 8) = v9;
        v7 -= v10;
      }

      if (v7 >= 1)
      {
        v13 = *--v11;
        *a5 = v11;
        LODWORD(v9) = -v7 & 0x3F;
        *(a5 + 8) = v9;
        *v11 = v13 & ~(-1 << -v7) | (v8 << (v7 + v10 - a4 + (-v7 & 0x3F)));
      }
    }

    else
    {
      LODWORD(v9) = *(a5 + 8);
      v11 = *a5;
    }

    v14 = 64 - v9;
    v15 = 0xFFFFFFFFFFFFFFFFLL >> -v9;
    if (v6 >= 64)
    {
      v16 = *v11;
      do
      {
        v17 = v6;
        v19 = *--a3;
        v18 = v19;
        result = v19 >> v14;
        *v11 = v16 & ~v15 | (v19 >> v14);
        v20 = *--v11;
        v16 = v20 & v15 | (v18 << v9);
        *v11 = v16;
        v6 = v17 - 64;
      }

      while (v17 > 0x7F);
      *a5 = v11;
    }

    if (v6 >= 1)
    {
      v21 = *(a3 - 1) & (-1 << -v6);
      if (v6 >= v9)
      {
        v22 = v9;
      }

      else
      {
        v22 = v6;
      }

      *v11 = *v11 & ~((-1 << (v9 - v22)) & v15) | (v21 >> v14);
      LODWORD(v9) = (v9 - v22) & 0x3F;
      *(a5 + 8) = v9;
      if (v6 - v22 >= 1)
      {
        v23 = *--v11;
        *a5 = v11;
        *(a5 + 8) = (v22 - v6) & 0x3F;
        *v11 = v23 & ~(-1 << (v22 - v6)) | (v21 << (v6 + ((v22 - v6) & 0x3F)));
        LODWORD(v9) = (v22 - v6) & 0x3F;
      }
    }
  }

  *a6 = v11;
  *(a6 + 8) = v9;
  return result;
}

unint64_t *std::__copy_aligned[abi:ne200100]<std::vector<BOOL>,true>@<X0>(unint64_t *__src@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = a4 - a2 + 8 * (a3 - __src);
  if (v8 <= 0)
  {
    v16 = *a5;
  }

  else
  {
    v9 = __src;
    __src = *a5;
    if (a2)
    {
      if (v8 >= (64 - a2))
      {
        v10 = 64 - a2;
      }

      else
      {
        v10 = v8;
      }

      v8 -= v10;
      v11 = *v9++;
      *__src = *__src & ~((0xFFFFFFFFFFFFFFFFLL >> (64 - a2 - v10)) & (-1 << a2)) | v11 & (0xFFFFFFFFFFFFFFFFLL >> (64 - a2 - v10)) & (-1 << a2);
      v12 = v10 + *(a5 + 8);
      __src = (__src + ((v12 >> 3) & 0x3FFFFFF8));
      *a5 = __src;
      *(a5 + 8) = v12 & 0x3F;
    }

    if (v8 >= 0)
    {
      v13 = v8;
    }

    else
    {
      v13 = v8 + 63;
    }

    v14 = v13 >> 6;
    if ((v8 + 63) >= 0x7F)
    {
      memmove(__src, v9, 8 * v14);
      __src = *a5;
    }

    v15 = v8 - (v14 << 6);
    v16 = &__src[v14];
    *a5 = v16;
    if (v15 >= 1)
    {
      *v16 = *v16 & ~(0xFFFFFFFFFFFFFFFFLL >> ((v14 << 6) - v8)) | v9[v14] & (0xFFFFFFFFFFFFFFFFLL >> ((v14 << 6) - v8));
      *(a5 + 8) = v15;
    }
  }

  *a6 = v16;
  *(a6 + 8) = *(a5 + 8);
  return __src;
}

void *std::__fill_n_BOOL[abi:ne200100]<true,std::vector<BOOL>>(void *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = *(result + 2);
  v5 = *result;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ |= (0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4);
    v2 = a2 - v6;
    *result = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    result = memset(v5, 255, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *v3 = v8;
    *v8 |= 0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F);
  }

  return result;
}

void std::__fill_n_BOOL[abi:ne200100]<false,std::vector<BOOL>>(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

void *std::__copy_aligned[abi:ne200100]<std::vector<BOOL>,false>@<X0>(void *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a2;
  v8 = *result;
  v9 = *(a2 + 2) + 8 * (v7 - *result);
  v10 = *(result + 2);
  v11 = v9 - v10;
  if (v9 - v10 <= 0)
  {
    v19 = *a3;
  }

  else
  {
    v12 = result;
    if (v10)
    {
      if (v11 >= (64 - v10))
      {
        v13 = (64 - v10);
      }

      else
      {
        v13 = v9 - v10;
      }

      v11 -= v13;
      v14 = *a3;
      *v14 = **a3 & ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v10 - v13)) & (-1 << v10)) | *v8 & (0xFFFFFFFFFFFFFFFFLL >> (64 - v10 - v13)) & (-1 << v10);
      v15 = v13 + *(a3 + 8);
      *a3 = v14 + ((v15 >> 3) & 0x3FFFFFF8);
      *(a3 + 8) = v15 & 0x3F;
      v8 = (*result + 8);
      *result = v8;
    }

    if (v11 >= 0)
    {
      v16 = v11;
    }

    else
    {
      v16 = v11 + 63;
    }

    v17 = v16 >> 6;
    if ((v11 + 63) >= 0x7F)
    {
      result = memmove(*a3, v8, 8 * v17);
    }

    v18 = v11 - (v17 << 6);
    v19 = (*a3 + 8 * v17);
    *a3 = v19;
    if (v18 >= 1)
    {
      v20 = (*v12 + 8 * v17);
      *v12 = v20;
      v21 = 0xFFFFFFFFFFFFFFFFLL >> ((v17 << 6) - v11);
      v22 = *v20 & v21;
      v19 = *a3;
      **a3 = **a3 & ~v21 | v22;
      *(a3 + 8) = v18;
    }
  }

  *a4 = v19;
  *(a4 + 8) = *(a3 + 8);
  return result;
}

unsigned int *std::__copy_unaligned[abi:ne200100]<std::vector<BOOL>,false>@<X0>(unsigned int *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  v5 = result[2];
  v6 = *(a2 + 8) + 8 * (*a2 - *result) - v5;
  if (v6 <= 0)
  {
    v20 = *a3;
    v18 = *(a3 + 8);
  }

  else
  {
    if (v5)
    {
      if (v6 >= (64 - v5))
      {
        v7 = (64 - v5);
      }

      else
      {
        v7 = *(a2 + 8) + 8 * (*a2 - *result) - v5;
      }

      v6 -= v7;
      v8 = (0xFFFFFFFFFFFFFFFFLL >> (64 - v5 - v7)) & (-1 << v5) & *v4;
      v9 = *(a3 + 8);
      if (v7 >= (64 - v9))
      {
        v10 = (64 - v9);
      }

      else
      {
        v10 = v7;
      }

      v11 = *a3;
      v12 = v8 >> (v5 - v9);
      v13 = v9 >= v5;
      v15 = v9 - v5;
      v14 = v15 != 0 && v13;
      v16 = v8 << v15;
      if (!v14)
      {
        v16 = v12;
      }

      *v11 = **a3 & ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v9 - v10)) & (-1 << v9)) | v16;
      v17 = (v11 + (((v10 + v9) >> 3) & 0x3FFFFFF8));
      *a3 = v17;
      v18 = (v9 + v10) & 0x3F;
      *(a3 + 8) = v18;
      v19 = v7 - v10;
      if (v19 >= 1)
      {
        *v17 = (v8 >> (v10 + result[2])) | *v17 & ~(0xFFFFFFFFFFFFFFFFLL >> -v19);
        *(a3 + 8) = v19;
        v18 = v19;
      }

      v4 = (*result + 8);
      *result = v4;
    }

    else
    {
      v18 = *(a3 + 8);
    }

    v21 = 64 - v18;
    v22 = -1 << v18;
    if (v6 < 64)
    {
      v26 = v6;
    }

    else
    {
      do
      {
        v23 = *v4;
        v24 = *a3;
        *v24 = **a3 & ~v22 | (v23 << v18);
        v25 = v24[1];
        *a3 = ++v24;
        *v24 = v25 & v22 | (v23 >> v21);
        v26 = v6 - 64;
        v4 = (*result + 8);
        *result = v4;
        v14 = v6 > 0x7F;
        v6 -= 64;
      }

      while (v14);
    }

    v20 = *a3;
    if (v26 >= 1)
    {
      v27 = *v4 & (0xFFFFFFFFFFFFFFFFLL >> -v26);
      if (v26 >= v21)
      {
        v28 = 64 - v18;
      }

      else
      {
        v28 = v26;
      }

      *v20 = *v20 & ~((0xFFFFFFFFFFFFFFFFLL >> (v21 - v28)) & v22) | (v27 << v18);
      v20 = (v20 + (((v28 + v18) >> 3) & 0x3FFFFFF8));
      *a3 = v20;
      v18 = (v18 + v28) & 0x3F;
      *(a3 + 8) = v18;
      if (v26 - v28 >= 1)
      {
        *v20 = *v20 & ~(0xFFFFFFFFFFFFFFFFLL >> (v28 - v26)) | (v27 >> v28);
        *(a3 + 8) = v26 - v28;
        v18 = v26 - v28;
      }
    }
  }

  *a4 = v20;
  *(a4 + 8) = v18;
  return result;
}

void *std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<double>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

char *std::vector<double>::__insert_with_size[abi:ne200100]<std::__wrap_iter<double *>,std::__wrap_iter<double *>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 3)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 3);
    if (v12 >> 61)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 2 > v12)
    {
      v12 = v14 >> 2;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 3;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, v15);
    }

    v33 = 8 * v16;
    v34 = 8 * a5;
    v35 = (8 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 8;
    }

    while (v34);
    memcpy((v33 + 8 * a5), v5, *(a1 + 8) - v5);
    v37 = *a1;
    v38 = v33 + 8 * a5 + *(a1 + 8) - v5;
    *(a1 + 8) = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    *(a1 + 8) = v38;
    *(a1 + 16) = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (8 * v16);
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 3;
  if (v18 >= a5)
  {
    v29 = &__dst[8 * a5];
    v30 = (v10 - 8 * a5);
    v31 = *(a1 + 8);
    while (v30 < v10)
    {
      v32 = *v30++;
      *v31++ = v32;
    }

    *(a1 + 8) = v31;
    if (v10 != v29)
    {
      memmove(&__dst[8 * a5], __dst, v10 - v29);
    }

    v28 = 8 * a5;
    v26 = v5;
    v27 = v7;
    goto LABEL_29;
  }

  v20 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    memmove(*(a1 + 8), &__src[v17], a4 - &__src[v17]);
  }

  v21 = (v10 + v20);
  *(a1 + 8) = v10 + v20;
  if (v18 >= 1)
  {
    v22 = &v5[8 * a5];
    v23 = v10 + v20;
    if (&v21[-8 * a5] < v10)
    {
      v24 = &v5[a4];
      v25 = &v5[a4 + -8 * a5];
      do
      {
        *(v24 - v7) = *(v25 - v7);
        v25 += 8;
        v24 += 8;
      }

      while (v25 - v7 < v10);
      v23 = v24 - v7;
    }

    *(a1 + 8) = v23;
    if (v21 != v22)
    {
      memmove(&v5[8 * a5], v5, v21 - v22);
    }

    if (v10 != v5)
    {
      v26 = v5;
      v27 = v7;
      v28 = v10 - v5;
LABEL_29:
      memmove(v26, v27, v28);
    }
  }

  return v5;
}

void std::vector<BOOL>::__insert_with_size[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(uint64_t a1@<X0>, unint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = 0;
  *(a7 + 8) = 0;
  v15 = *(a1 + 8);
  v14 = *(a1 + 16);
  if (v14 << 6 < a6 || v15 > (v14 << 6) - a6)
  {
    v38 = 0;
    v39 = 0uLL;
    v17 = v15 + a6;
    if (v17 < 0)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    if ((v14 << 6) > 0x3FFFFFFFFFFFFFFELL)
    {
      v20 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v18 = v14 << 7;
      v19 = (v17 + 63) & 0xFFFFFFFFFFFFFFC0;
      if (v18 <= v19)
      {
        v20 = v19;
      }

      else
      {
        v20 = v18;
      }
    }

    std::vector<BOOL>::reserve(&v38, v20);
    v26 = *a1;
    *&v39 = *(a1 + 8) + a6;
    v44 = v38;
    v45 = 0;
    std::__copy_aligned[abi:ne200100]<std::vector<BOOL>,true>(v26, 0, a2, a3, &v44, &v42);
    v27 = v42;
    *a7 = v42;
    v28 = v43;
    *(a7 + 8) = v43;
    v29 = *(a1 + 8);
    v30 = (*a1 + 8 * (v29 >> 6));
    v31 = v29 & 0x3F;
    v44 = v38 + 8 * (v39 >> 6);
    v45 = v39 & 0x3F;
    if (v45 == v31)
    {
      std::__copy_backward_aligned[abi:ne200100]<std::vector<BOOL>,true>(a2, a3, v30, v31, &v44, &v42);
    }

    else
    {
      std::__copy_backward_unaligned[abi:ne200100]<std::vector<BOOL>,true>(a2, a3, v30, v31, &v44, &v42);
    }

    v32 = *a1;
    *a1 = v38;
    v38 = v32;
    v33 = *(a1 + 8);
    *(a1 + 8) = v39;
    v39 = v33;
    if (v32)
    {
      operator delete(v32);
    }
  }

  else
  {
    v21 = *a1;
    v22 = (*a1 + 8 * (v15 >> 6));
    v23 = *(a1 + 8) & 0x3FLL;
    *(a1 + 8) = v15 + a6;
    v38 = &v21[(v15 + a6) >> 6];
    if (((v15 + a6) & 0x3F) == v23)
    {
      LODWORD(v39) = v23;
      std::__copy_backward_aligned[abi:ne200100]<std::vector<BOOL>,true>(a2, a3, v22, v15 & 0x3F, &v38, &v44);
    }

    else
    {
      LODWORD(v39) = (v15 + a6) & 0x3F;
      std::__copy_backward_unaligned[abi:ne200100]<std::vector<BOOL>,true>(a2, a3, v22, v15 & 0x3F, &v38, &v44);
    }

    v24 = 8 * (a2 - *a1) + a3;
    if (v24 < 0)
    {
      v34 = v24 - 63;
      if (v24 - 63 < 0)
      {
        v34 = 8 * (a2 - *a1) + a3;
      }

      v25 = v34 >> 6;
    }

    else
    {
      v25 = v24 >> 6;
    }

    v27 = *a1 + 8 * v25;
    v28 = v24 & 0x3F;
    *a7 = v27;
    *(a7 + 8) = v28;
  }

  v35 = *(a4 + 8);
  v36 = *a5;
  v37 = *(a5 + 8);
  v44 = *a4;
  v45 = v35;
  v42 = v36;
  v43 = v37;
  v40 = v27;
  v41 = v28;
  std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,0>(&v44, &v42, &v40, &v38);
}

void sub_23E84E5C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__count_BOOL[abi:ne200100]<true,std::vector<BOOL>,false>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    if ((64 - v2) >= a2)
    {
      v3 = a2;
    }

    else
    {
      v3 = (64 - v2);
    }

    v4 = vcnt_s8(((0xFFFFFFFFFFFFFFFFLL >> (64 - v2 - v3)) & (-1 << v2) & **a1));
    v4.i16[0] = vaddlv_u8(v4);
    v5 = v4.u32[0];
    a2 -= v3;
    *a1 += 8;
  }

  else
  {
    v5 = 0;
  }

  if (a2 >= 0x40)
  {
    v6 = *a1;
    do
    {
      v7 = *v6++;
      v8 = vcnt_s8(v7);
      v8.i16[0] = vaddlv_u8(v8);
      v5 += v8.u32[0];
      a2 -= 64;
    }

    while (a2 > 0x3F);
    *a1 = v6;
  }

  if (a2)
  {
    v9 = vcnt_s8((**a1 & (0xFFFFFFFFFFFFFFFFLL >> -a2)));
    v9.i16[0] = vaddlv_u8(v9);
    v5 += v9.u32[0];
  }

  return v5;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::vector<double>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<double>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_23E84E748(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<double>::__init_with_size[abi:ne200100]<std::__wrap_iter<double const*>,std::__wrap_iter<double const*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<double>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_23E84E7BC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__nth_element[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<double *>>(double *a1, double *a2, double *a3, double a4)
{
  while (a3 != a2)
  {
    v4 = a3 - a1;
    if (v4 < 2)
    {
      break;
    }

    if (v4 == 3)
    {
      v37 = a1[1];
      v38 = *(a3 - 1);
      if (v37 < v38)
      {
        v39 = *(a1 + 1);
      }

      else
      {
        v39 = *(a3 - 1);
      }

      if (v37 < v38)
      {
        v37 = *(a3 - 1);
      }

      *(a3 - 1) = v37;
      *(a1 + 1) = v39;
      v40 = *(a3 - 1);
      if (v40 < *a1)
      {
        v41 = *(a3 - 1);
      }

      else
      {
        v41 = *a1;
      }

      if (v40 < *a1)
      {
        v40 = *a1;
      }

      *(a3 - 1) = v40;
      v42 = a1[1];
      if (v41 < v42)
      {
        v41 = a1[1];
      }

      else
      {
        *a1 = v42;
      }

      a1[1] = v41;
      return;
    }

    if (v4 == 2)
    {
      v43 = *(a3 - 1);
      v44 = *a1;
      if (v43 < *a1)
      {
        *a1 = v43;
        *(a3 - 1) = v44;
      }

      return;
    }

    if (v4 <= 7)
    {
      std::__selection_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<double *>>(a1, a3, a4);
      return;
    }

    v5 = &a1[(a3 - a1) >> 4];
    v6 = a3 - 1;
    v7 = *(a3 - 1);
    v8 = *v5;
    if (*v5 < v7)
    {
      v9 = *v5;
    }

    else
    {
      v9 = *(a3 - 1);
    }

    if (*v5 < v7)
    {
      v10 = *(a3 - 1);
    }

    else
    {
      v10 = *v5;
    }

    *v6 = v10;
    *v5 = v9;
    v11 = *v6;
    v12 = *a1;
    if (*v6 < *a1)
    {
      v13 = *v6;
    }

    else
    {
      v13 = *a1;
    }

    if (*v6 < *a1)
    {
      v14 = *a1;
    }

    else
    {
      v14 = *v6;
    }

    *v6 = v14;
    v15 = *v5;
    v16 = *v5;
    if (v13 >= *v5)
    {
      *a1 = v15;
      v16 = v13;
    }

    v17 = v11 >= v12;
    if (v13 >= v15)
    {
      v17 = 1;
    }

    *v5 = v16;
    if (v8 >= v7)
    {
      v17 = 1;
    }

    a4 = *a1;
    if (*a1 >= v16)
    {
      v18 = a3 - 1;
      while (--v18 != a1)
      {
        if (*v18 < v16)
        {
          *a1 = *v18;
          *v18 = a4;
          if (v17)
          {
            v17 = 2;
          }

          else
          {
            v17 = 1;
          }

          goto LABEL_33;
        }
      }

      v28 = a1 + 1;
      if (a4 >= *v6)
      {
        while (v28 != v6)
        {
          v29 = *v28;
          if (a4 < *v28)
          {
            *v28++ = *v6;
            *v6 = v29;
            goto LABEL_65;
          }

          ++v28;
        }

        return;
      }

LABEL_65:
      if (v28 == v6)
      {
        return;
      }

      while (1)
      {
        v32 = *a1;
        do
        {
          v33 = *v28++;
          a4 = v33;
        }

        while (v32 >= v33);
        v34 = v28 - 1;
        do
        {
          v35 = *--v6;
          v36 = v35;
        }

        while (v32 < v35);
        if (v34 >= v6)
        {
          break;
        }

        *v34 = v36;
        *v6 = a4;
      }

      a1 = v28 - 1;
      if (v34 > a2)
      {
        return;
      }
    }

    else
    {
      v18 = a3 - 1;
LABEL_33:
      v19 = a1 + 1;
      if (a1 + 1 >= v18)
      {
        v23 = a1 + 1;
      }

      else
      {
        v20 = a1 + 1;
        while (1)
        {
          v21 = *v5;
          do
          {
            v22 = *v20++;
            a4 = v22;
          }

          while (v22 < v21);
          v23 = v20 - 1;
          do
          {
            v24 = *--v18;
            v25 = v24;
          }

          while (v24 >= v21);
          if (v23 >= v18)
          {
            break;
          }

          *v23 = v25;
          *v18 = a4;
          ++v17;
          if (v23 == v5)
          {
            v5 = v18;
          }
        }
      }

      if (v23 != v5)
      {
        a4 = *v5;
        v26 = *v23;
        if (*v5 < *v23)
        {
          *v23 = a4;
          *v5 = v26;
          ++v17;
        }
      }

      if (v23 == a2)
      {
        return;
      }

      if (!v17)
      {
        if (v23 <= a2)
        {
          v30 = v23 + 1;
          while (v30 != a3)
          {
            v31 = *(v30 - 1);
            a4 = *v30++;
            if (a4 < v31)
            {
              goto LABEL_49;
            }
          }
        }

        else
        {
          while (v19 != v23)
          {
            v27 = *(v19 - 1);
            a4 = *v19++;
            if (a4 < v27)
            {
              goto LABEL_49;
            }
          }
        }

        return;
      }

LABEL_49:
      if (v23 <= a2)
      {
        a1 = v23 + 1;
      }

      else
      {
        a3 = v23;
      }
    }
  }
}

double std::__selection_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<double *>>(double *a1, double *a2, double result)
{
  while (a1 != a2 - 1)
  {
    v3 = a1++;
    if (v3 != a2 && a1 != a2)
    {
      result = *v3;
      v4 = a1;
      v5 = v3;
      v6 = a1;
      do
      {
        v7 = *v6++;
        v8 = v7;
        if (v7 < result)
        {
          result = v8;
          v5 = v4;
        }

        v4 = v6;
      }

      while (v6 != a2);
      if (v5 != v3)
      {
        result = *v3;
        *v3 = *v5;
        *v5 = result;
      }
    }
  }

  return result;
}

void beryllium::BerylliumProcessor::interpolate_Tachograms_and_calc_AFibBurden(os_log_t log, float a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a2;
  _os_log_debug_impl(&dword_23E83E000, log, OS_LOG_TYPE_DEBUG, "\nAfib burden without interpolation: %f", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void beryllium::BerylliumProcessor::median()
{
  __assert_rtn("median", "beryllium_core.cpp", 430, "x != NULL");
}

{
  __assert_rtn("median", "beryllium_core.cpp", 429, "N > 0");
}

float stats::mean(stats *this, const float *a2)
{
  if (a2 <= 0)
  {
    stats::mean();
  }

  if (!this)
  {
    stats::mean();
  }

  v3 = 0.0;
  vDSP_meanv_wrapper(this->cp_time, 1, &v3, a2);
  return v3;
}

float stats::variance(stats *this, const float *a2, int a3)
{
  if (a2 <= 0)
  {
    stats::variance();
  }

  if (!this)
  {
    stats::variance();
  }

  v5 = a2;
  v11 = 0;
  __C = 0;
  __B = 0;
  v10 = 0;
  v6 = a2;
  std::vector<float>::resize(&__B, a2);
  vDSP_meanv_wrapper(this->cp_time, 1, &__C + 1, v6);
  MEMORY[0x23EF16340](this, 1, &__C + 4, 0, __B, 1, v6);
  vDSP_dotpr(__B, 1, __B, 1, &__C, v6);
  v7 = *&__C / (v5 - (a3 ^ 1u));
  *&__C = v7;
  if (__B)
  {
    v10 = __B;
    operator delete(__B);
  }

  return v7;
}

void sub_23E850A28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<float>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 2;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 4 * a2;
    }
  }

  else
  {
    std::vector<float>::__append(a1, a2 - v2);
  }
}

float stats::covariance(stats *this, const float *a2, const float *a3, const float *a4, int a5)
{
  if (a2 <= 0)
  {
    stats::covariance();
  }

  v5 = a2;
  if (a4 != a2)
  {
    stats::covariance();
  }

  if (!this)
  {
    stats::covariance();
  }

  if (!a3)
  {
    stats::covariance();
  }

  v18 = 0;
  __C = 0.0;
  __A = 0;
  v15 = 0;
  v16 = 0;
  __B = 0;
  v12 = 0;
  v13 = 0;
  std::vector<float>::resize(&__A, a2);
  std::vector<float>::resize(&__B, v5);
  vDSP_meanv_wrapper(this->cp_time, 1, &v18 + 1, v5);
  MEMORY[0x23EF16340](this, 1, &v18 + 4, 0, __A, 1, v5);
  vDSP_meanv_wrapper(a3, 1, &v18, v5);
  MEMORY[0x23EF16340](a3, 1, &v18, 0, __B, 1, v5);
  vDSP_dotpr(__A, 1, __B, 1, &__C, v5);
  v9 = __C / (v5 - (a5 ^ 1));
  __C = v9;
  if (__B)
  {
    v12 = __B;
    operator delete(__B);
  }

  if (__A)
  {
    v15 = __A;
    operator delete(__A);
  }

  return v9;
}

void sub_23E850BDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}