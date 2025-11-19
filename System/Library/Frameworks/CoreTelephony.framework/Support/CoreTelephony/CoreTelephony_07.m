BOOL rest::CompressTextResult::isValid(rest::CompressTextResult *this)
{
  if ((*(this + 31) & 0x8000000000000000) != 0)
  {
    if (!*(this + 2))
    {
      return 0;
    }
  }

  else if (!*(this + 31))
  {
    return 0;
  }

  if (*this)
  {
    return *(this + 4) != *(this + 5);
  }

  return 0;
}

void rest::write_rest_value(const void **this@<X0>, xpc_object_t *a2@<X8>)
{
  v5 = xpc_dictionary_create(0, 0, 0);
  v6 = v5;
  if (v5)
  {
    v15 = v5;
  }

  else
  {
    v6 = xpc_null_create();
    v15 = v6;
    if (!v6)
    {
      v7 = xpc_null_create();
      v6 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2383CC760](v6) == MEMORY[0x277D86468])
  {
    xpc_retain(v6);
    goto LABEL_9;
  }

  v7 = xpc_null_create();
LABEL_8:
  v15 = v7;
LABEL_9:
  xpc_release(v6);
  rest::write_rest_value(this, &v13);
  v11 = &v15;
  v12 = "CodecInfo";
  xpc::dict::object_proxy::operator=(&v11, &v13, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v13);
  v13 = 0;
  v9 = xpc_data_create(this[4], this[5] - this[4]);
  if (!v9)
  {
    v9 = xpc_null_create();
  }

  v11 = &v15;
  v12 = "CompressedInput";
  xpc::dict::object_proxy::operator=(&v11, &v9, &v10);
  xpc_release(v10);
  v10 = 0;
  xpc_release(v9);
  v9 = 0;
  v8 = v15;
  *a2 = v15;
  if (v8)
  {
    xpc_retain(v8);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v15);
}

{
  v5 = xpc_dictionary_create(0, 0, 0);
  v6 = v5;
  if (v5)
  {
    v15 = v5;
  }

  else
  {
    v6 = xpc_null_create();
    v15 = v6;
    if (!v6)
    {
      v7 = xpc_null_create();
      v6 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2383CC760](v6) == MEMORY[0x277D86468])
  {
    xpc_retain(v6);
    goto LABEL_9;
  }

  v7 = xpc_null_create();
LABEL_8:
  v15 = v7;
LABEL_9:
  xpc_release(v6);
  rest::write_rest_value(this, &v13);
  v11 = &v15;
  v12 = "CodecInfo";
  xpc::dict::object_proxy::operator=(&v11, &v13, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v13);
  v13 = 0;
  v9 = xpc_data_create(this[4], this[5] - this[4]);
  if (!v9)
  {
    v9 = xpc_null_create();
  }

  v11 = &v15;
  v12 = "OriginalInput";
  xpc::dict::object_proxy::operator=(&v11, &v9, &v10);
  xpc_release(v10);
  v10 = 0;
  xpc_release(v9);
  v9 = 0;
  v8 = v15;
  *a2 = v15;
  if (v8)
  {
    xpc_retain(v8);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v15);
}

double rest::DecompressTextArg::DecompressTextArg(rest::DecompressTextArg *this)
{
  *(this + 6) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  return result;
}

{
  *(this + 6) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  return result;
}

std::string *rest::DecompressTextArg::DecompressTextArg(std::string *this, __int128 *a2, uint64_t a3, std::string::size_type a4)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v7 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v7;
  }

  this[1].__r_.__value_.__r.__words[0] = 0;
  this[1].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__r.__words[2] = 0;
  *&this[1].__r_.__value_.__l.__data_ = *a3;
  this[1].__r_.__value_.__r.__words[2] = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  this[2].__r_.__value_.__r.__words[0] = a4;
  return this;
}

BOOL rest::DecompressTextArg::isValid(rest::DecompressTextArg *this)
{
  if ((*(this + 23) & 0x8000000000000000) != 0)
  {
    if (!*(this + 1))
    {
      return 0;
    }
  }

  else if (!*(this + 23))
  {
    return 0;
  }

  if (*(this + 3) != *(this + 4))
  {
    return *(this + 6) != 0;
  }

  return 0;
}

void sub_2374413B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t a11, xpc_object_t a12, xpc_object_t object, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

double rest::DecompressTextResult::DecompressTextResult(rest::DecompressTextResult *this)
{
  *this = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

{
  *this = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

__n128 rest::DecompressTextResult::DecompressTextResult(uint64_t a1, uint64_t a2, __n128 *a3)
{
  *a1 = *a2;
  v3 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v3;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  result = *a3;
  *(a1 + 32) = *a3;
  *(a1 + 48) = a3[1].n128_u64[0];
  a3->n128_u64[0] = 0;
  a3->n128_u64[1] = 0;
  a3[1].n128_u64[0] = 0;
  return result;
}

{
  *a1 = *a2;
  v3 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v3;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  result = *a3;
  *(a1 + 32) = *a3;
  *(a1 + 48) = a3[1].n128_u64[0];
  a3->n128_u64[0] = 0;
  a3->n128_u64[1] = 0;
  a3[1].n128_u64[0] = 0;
  return result;
}

BOOL rest::DecompressTextResult::isValid(rest::DecompressTextResult *this)
{
  if ((*(this + 31) & 0x8000000000000000) != 0)
  {
    if (!*(this + 2))
    {
      return 0;
    }
  }

  else if (!*(this + 31))
  {
    return 0;
  }

  if (*this)
  {
    return *(this + 4) != *(this + 5);
  }

  return 0;
}

uint64_t rest::GetCompressionCodecIdsArgs::GetCompressionCodecIdsArgs(uint64_t this)
{
  *this = 0;
  *(this + 8) = 0;
  *(this + 24) = 0;
  *(this + 16) = 0;
  return this;
}

{
  *this = 0;
  *(this + 8) = 0;
  *(this + 24) = 0;
  *(this + 16) = 0;
  return this;
}

uint64_t rest::GetCompressionCodecIdsArgs::GetCompressionCodecIdsArgs(uint64_t a1, uint64_t *a2, char a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a1, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  *(a1 + 24) = a3;
  return a1;
}

{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a1, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  *(a1 + 24) = a3;
  return a1;
}

__n128 rest::GetCompressionCodecIdsArgs::GetCompressionCodecIdsArgs(uint64_t a1, __n128 *a2, char a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  *(a1 + 24) = a3;
  return result;
}

{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  *(a1 + 24) = a3;
  return result;
}

uint64_t rest::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *a2;
  if ((v5 - *a1) == (*(a2 + 8) - *a2))
  {
    if (v4 == v5)
    {
      LODWORD(result) = 1;
    }

    else
    {
      do
      {
        LODWORD(result) = std::__equal_to::operator()[abi:ne200100]<std::string,std::string>(&v8, v4, v6);
        if (!result)
        {
          break;
        }

        v4 += 3;
        v6 += 3;
      }

      while (v4 != v5);
    }
  }

  else
  {
    LODWORD(result) = 0;
  }

  if (*(a1 + 24) == *(a2 + 24))
  {
    return result;
  }

  else
  {
    return 0;
  }
}

void sub_237441DF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, xpc_object_t a13, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(a13);
  _Unwind_Resume(a1);
}

double rest::GetPreferencesSettingArg::GetPreferencesSettingArg(rest::GetPreferencesSettingArg *this)
{
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  return result;
}

{
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  return result;
}

std::string *rest::GetPreferencesSettingArg::GetPreferencesSettingArg(std::string *this, __int128 *a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    this[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this[1].__r_.__value_.__l.__data_ = v6;
  }

  return this;
}

void sub_237442084(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void rest::read_rest_value(void **this, void **a2, const object *a3)
{
  v4 = *a2;
  v9 = v4;
  v5 = MEMORY[0x277D86468];
  if (v4 && MEMORY[0x2383CC760](v4) == v5)
  {
    xpc_retain(v4);
  }

  else
  {
    v9 = xpc_null_create();
  }

  if (MEMORY[0x2383CC760]() == v5)
  {
    v6 = &v9;
    v7 = "DomainName";
    xpc::dict::object_proxy::operator xpc::object(&v6, &object);
    __p = 0;
    v13 = 0;
    v14 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p);
    }

    if (*(this + 23) < 0)
    {
      operator delete(*this);
    }

    *this = v10;
    this[2] = v11;
    xpc_release(object);
    v6 = &v9;
    v7 = "KeyName";
    xpc::dict::object_proxy::operator xpc::object(&v6, &object);
    __p = 0;
    v13 = 0;
    v14 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p);
    }

    if (*(this + 47) < 0)
    {
      operator delete(this[3]);
    }

    *(this + 3) = v10;
    this[5] = v11;
    xpc_release(object);
  }

  else
  {
    if (*(this + 23) < 0)
    {
      operator delete(*this);
    }

    *this = 0;
    this[1] = 0;
    this[2] = 0;
    if (*(this + 47) < 0)
    {
      operator delete(this[3]);
    }

    this[3] = 0;
    this[4] = 0;
    this[5] = 0;
  }

  xpc_release(v9);
}

{
  v4 = *a2;
  v9 = v4;
  v5 = MEMORY[0x277D86468];
  if (v4 && MEMORY[0x2383CC760](v4) == v5)
  {
    xpc_retain(v4);
  }

  else
  {
    v9 = xpc_null_create();
  }

  if (MEMORY[0x2383CC760]() == v5)
  {
    v6 = &v9;
    v7 = "Usecase";
    xpc::dict::object_proxy::operator xpc::object(&v6, &object);
    __p = 0;
    v13 = 0;
    v14 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p);
    }

    if (*(this + 23) < 0)
    {
      operator delete(*this);
    }

    *this = v10;
    this[2] = v11;
    xpc_release(object);
    v6 = &v9;
    v7 = "Query";
    xpc::dict::object_proxy::operator xpc::object(&v6, &object);
    __p = 0;
    v13 = 0;
    v14 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p);
    }

    if (*(this + 47) < 0)
    {
      operator delete(this[3]);
    }

    *(this + 3) = v10;
    this[5] = v11;
    xpc_release(object);
  }

  else
  {
    if (*(this + 23) < 0)
    {
      operator delete(*this);
    }

    *this = 0;
    this[1] = 0;
    this[2] = 0;
    if (*(this + 47) < 0)
    {
      operator delete(this[3]);
    }

    this[3] = 0;
    this[4] = 0;
    this[5] = 0;
  }

  xpc_release(v9);
}

{
  v4 = *a2;
  v9 = v4;
  v5 = MEMORY[0x277D86468];
  if (v4 && MEMORY[0x2383CC760](v4) == v5)
  {
    xpc_retain(v4);
  }

  else
  {
    v9 = xpc_null_create();
  }

  if (MEMORY[0x2383CC760]() == v5)
  {
    v6 = &v9;
    v7 = "domain";
    xpc::dict::object_proxy::operator xpc::object(&v6, &object);
    __p = 0;
    v13 = 0;
    v14 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p);
    }

    if (*(this + 23) < 0)
    {
      operator delete(*this);
    }

    *this = v10;
    this[2] = v11;
    xpc_release(object);
    v6 = &v9;
    v7 = "key";
    xpc::dict::object_proxy::operator xpc::object(&v6, &object);
    __p = 0;
    v13 = 0;
    v14 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p);
    }

    if (*(this + 47) < 0)
    {
      operator delete(this[3]);
    }

    *(this + 3) = v10;
    this[5] = v11;
    xpc_release(object);
  }

  else
  {
    if (*(this + 23) < 0)
    {
      operator delete(*this);
    }

    *this = 0;
    this[1] = 0;
    this[2] = 0;
    if (*(this + 47) < 0)
    {
      operator delete(this[3]);
    }

    this[3] = 0;
    this[4] = 0;
    this[5] = 0;
  }

  xpc_release(v9);
}

{
  v4 = *a2;
  v17 = v4;
  v5 = MEMORY[0x277D86468];
  if (v4 && MEMORY[0x2383CC760](v4) == v5)
  {
    xpc_retain(v4);
  }

  else
  {
    v17 = xpc_null_create();
  }

  if (MEMORY[0x2383CC760]() == v5)
  {
    v14 = &v17;
    v15 = "identifier";
    xpc::dict::object_proxy::operator xpc::object(&v14, &object);
    __p = 0;
    v21 = 0;
    v22 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v22) < 0)
    {
      operator delete(__p);
    }

    if (*(this + 31) < 0)
    {
      operator delete(this[1]);
    }

    *(this + 1) = *v18;
    this[3] = v19;
    xpc_release(object);
    v14 = &v17;
    v15 = "device_name";
    xpc::dict::object_proxy::operator xpc::object(&v14, &object);
    __p = 0;
    v21 = 0;
    v22 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v22) < 0)
    {
      operator delete(__p);
    }

    if (*(this + 127) < 0)
    {
      operator delete(this[13]);
    }

    *(this + 13) = *v18;
    this[15] = v19;
    xpc_release(object);
    v14 = &v17;
    v15 = "csn";
    xpc::dict::object_proxy::operator xpc::object(&v14, &object);
    __p = 0;
    v21 = 0;
    v22 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v22) < 0)
    {
      operator delete(__p);
    }

    if (*(this + 55) < 0)
    {
      operator delete(this[4]);
    }

    *(this + 2) = *v18;
    this[6] = v19;
    xpc_release(object);
    v14 = &v17;
    v15 = "imei";
    xpc::dict::object_proxy::operator xpc::object(&v14, &object);
    __p = 0;
    v21 = 0;
    v22 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v22) < 0)
    {
      operator delete(__p);
    }

    if (*(this + 79) < 0)
    {
      operator delete(this[7]);
    }

    *(this + 7) = *v18;
    this[9] = v19;
    xpc_release(object);
    v14 = &v17;
    v15 = "meid";
    xpc::dict::object_proxy::operator xpc::object(&v14, &object);
    __p = 0;
    v21 = 0;
    v22 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v22) < 0)
    {
      operator delete(__p);
    }

    if (*(this + 103) < 0)
    {
      operator delete(this[10]);
    }

    *(this + 5) = *v18;
    this[12] = v19;
    xpc_release(object);
    __p = &v17;
    v21 = "device_state";
    xpc::dict::object_proxy::operator xpc::object(&__p, v18);
    v6 = MEMORY[0x2383CC760](v18[0]);
    v8 = MEMORY[0x277D864C0];
    v9 = MEMORY[0x277D86448];
    if (v6 == MEMORY[0x277D864C0])
    {
      LOBYTE(v14) = *(this + 177);
      ctu::rest::detail::read_enum_string_value(&v14, v18, v7);
      *(this + 177) = v14;
    }

    else if (v6 == MEMORY[0x277D86448] || v6 == MEMORY[0x277D86498] || v6 == MEMORY[0x277D864C8])
    {
      *(this + 177) = xpc::dyn_cast_or_default(v18, 0);
    }

    xpc_release(v18[0]);
    __p = &v17;
    v21 = "mode";
    xpc::dict::object_proxy::operator xpc::object(&__p, v18);
    v10 = MEMORY[0x2383CC760](v18[0]);
    if (v10 == v8)
    {
      LOBYTE(v14) = *this;
      ctu::rest::detail::read_enum_string_value(&v14, v18, v11);
      *this = v14;
    }

    else if (v10 == v9 || v10 == MEMORY[0x277D86498] || v10 == MEMORY[0x277D864C8])
    {
      *this = xpc::dyn_cast_or_default(v18, 0);
    }

    xpc_release(v18[0]);
    v14 = &v17;
    v15 = "os_version";
    xpc::dict::object_proxy::operator xpc::object(&v14, &object);
    __p = 0;
    v21 = 0;
    v22 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v22) < 0)
    {
      operator delete(__p);
    }

    if (*(this + 151) < 0)
    {
      operator delete(this[16]);
    }

    *(this + 8) = *v18;
    this[18] = v19;
    xpc_release(object);
    v14 = &v17;
    v15 = "model_identifier";
    xpc::dict::object_proxy::operator xpc::object(&v14, &object);
    __p = 0;
    v21 = 0;
    v22 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v22) < 0)
    {
      operator delete(__p);
    }

    if (*(this + 175) < 0)
    {
      operator delete(this[19]);
    }

    *(this + 19) = *v18;
    this[21] = v19;
    xpc_release(object);
    __p = &v17;
    v21 = "cellular_supported";
    xpc::dict::object_proxy::operator xpc::object(&__p, v18);
    *(this + 176) = xpc::dyn_cast_or_default(v18, 0);
    xpc_release(v18[0]);
    v14 = &v17;
    v15 = "radio_sku";
    xpc::dict::object_proxy::operator xpc::object(&v14, &object);
    __p = 0;
    v21 = 0;
    v22 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v22) < 0)
    {
      operator delete(__p);
    }

    if (*(this + 207) < 0)
    {
      operator delete(this[23]);
    }

    *(this + 23) = *v18;
    this[25] = v19;
    xpc_release(object);
    __p = &v17;
    v21 = "ids_connection_state";
    xpc::dict::object_proxy::operator xpc::object(&__p, v18);
    v12 = MEMORY[0x2383CC760](v18[0]);
    if (v12 == v8)
    {
      LOBYTE(v14) = *(this + 208);
      ctu::rest::detail::read_enum_string_value(&v14, v18, v13);
      *(this + 208) = v14;
    }

    else if (v12 == v9 || v12 == MEMORY[0x277D86498] || v12 == MEMORY[0x277D864C8])
    {
      *(this + 208) = xpc::dyn_cast_or_default(v18, 0);
    }

    xpc_release(v18[0]);
  }

  xpc_release(v17);
}

void sub_237442318(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

_DWORD *rest::GetPreferencesSettingResult::GetPreferencesSettingResult(_DWORD *this)
{
  *this = -1;
  return this;
}

{
  *this = -1;
  return this;
}

_DWORD *rest::GetPreferencesSettingResult::GetPreferencesSettingResult(_DWORD *this, int a2)
{
  *this = a2;
  return this;
}

{
  *this = a2;
  return this;
}

void sub_237442654(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12)
{
  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

BOOL rest::FlightInfo::isValid(rest::FlightInfo *this)
{
  if (*(this + 20) <= 0.0 || *(this + 23) <= 0.0)
  {
    return 0;
  }

  if ((*(this + 71) & 0x8000000000000000) != 0)
  {
    if (!*(this + 7))
    {
      return 0;
    }
  }

  else if (!*(this + 71))
  {
    return 0;
  }

  if ((*(this + 119) & 0x8000000000000000) != 0)
  {
    if (*(this + 13))
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (!*(this + 119))
  {
    return 0;
  }

LABEL_9:
  v1 = *(this + 239);
  if (v1 < 0)
  {
    v1 = *(this + 28);
  }

  return v1 != 0;
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a1, a2);
  }

  else
  {
    std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(a1, a2);
    result = v3 + 1;
  }

  *(a1 + 8) = result;
  return result;
}

void sub_237443834(_Unwind_Exception *a1)
{
  xpc_release(v1);
  xpc_release(v2);
  xpc_release(*(v3 - 56));
  _Unwind_Resume(a1);
}

double rest::MegadomeEventsQueryArg::MegadomeEventsQueryArg(rest::MegadomeEventsQueryArg *this)
{
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  return result;
}

{
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  return result;
}

std::string *rest::MegadomeEventsQueryArg::MegadomeEventsQueryArg(std::string *this, __int128 *a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    this[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this[1].__r_.__value_.__l.__data_ = v6;
  }

  return this;
}

void sub_237443900(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_237443AB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

void *rest::MegadomeEventsQueryResult::MegadomeEventsQueryResult(void *this)
{
  *this = 0;
  this[1] = 0;
  this[2] = 0;
  return this;
}

{
  *this = 0;
  this[1] = 0;
  this[2] = 0;
  return this;
}

void *rest::MegadomeEventsQueryResult::MegadomeEventsQueryResult(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<rest::FlightInfo>::__init_with_size[abi:ne200100]<rest::FlightInfo*,rest::FlightInfo*>(a1, *a2, a2[1], 0xEEEEEEEEEEEEEEEFLL * ((a2[1] - *a2) >> 4));
  return a1;
}

{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<rest::FlightInfo>::__init_with_size[abi:ne200100]<rest::FlightInfo*,rest::FlightInfo*>(a1, *a2, a2[1], 0xEEEEEEEEEEEEEEEFLL * ((a2[1] - *a2) >> 4));
  return a1;
}

void sub_237444248(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, uint64_t a11, uint64_t a12, xpc_object_t a13, xpc_object_t a14, uint64_t a15, uint64_t a16, xpc_object_t a17, xpc_object_t a18, xpc_object_t object, uint64_t a20, xpc_object_t a21)
{
  xpc_release(object);
  xpc_release(a14);
  xpc_release(a10);
  xpc_release(a13);
  xpc_release(a17);
  _Unwind_Resume(a1);
}

void rest::write_rest_value(rest **this@<X0>, xpc_object_t *a2@<X8>)
{
  v5 = xpc_dictionary_create(0, 0, 0);
  v6 = v5;
  if (v5)
  {
    v17 = v5;
  }

  else
  {
    v6 = xpc_null_create();
    v17 = v6;
    if (!v6)
    {
      v7 = xpc_null_create();
      v6 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2383CC760](v6) != MEMORY[0x277D86468])
  {
    v7 = xpc_null_create();
LABEL_8:
    v17 = v7;
    goto LABEL_9;
  }

  xpc_retain(v6);
LABEL_9:
  xpc_release(v6);
  v8 = xpc_array_create(0, 0);
  if (v8 || (v8 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x2383CC760](v8) == MEMORY[0x277D86440])
    {
      xpc_retain(v8);
      v9 = v8;
    }

    else
    {
      v9 = xpc_null_create();
    }
  }

  else
  {
    v9 = xpc_null_create();
    v8 = 0;
  }

  xpc_release(v8);
  v10 = *this;
  v11 = this[1];
  while (v10 != v11)
  {
    rest::write_rest_value(v10, value);
    v12 = value[0];
    xpc_array_append_value(v9, value[0]);
    xpc_release(v12);
    v10 = (v10 + 240);
  }

  v15 = v9;
  if (v9)
  {
    xpc_retain(v9);
  }

  else
  {
    v15 = xpc_null_create();
  }

  xpc_release(v9);
  value[0] = &v17;
  value[1] = "FlightInfo";
  xpc::dict::object_proxy::operator=(value, &v15, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v15);
  v15 = 0;
  v13 = v17;
  *a2 = v17;
  if (v13)
  {
    xpc_retain(v13);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v17);
}

void sub_237444504(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, xpc_object_t object)
{
  xpc_release(v14);
  xpc_release(object);
  _Unwind_Resume(a1);
}

void *rest::GetContactsSettingsArg::GetContactsSettingsArg(void *this)
{
  *this = 0;
  this[1] = 0;
  this[2] = 0;
  return this;
}

{
  *this = 0;
  this[1] = 0;
  this[2] = 0;
  return this;
}

void *rest::GetContactsSettingsArg::GetContactsSettingsArg(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a1, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  return a1;
}

{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a1, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  return a1;
}

void sub_2374446DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, xpc_object_t a13, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(a13);
  _Unwind_Resume(a1);
}

void *rest::GetContactsSettingsResult::GetContactsSettingsResult(void *this)
{
  *this = 0;
  this[1] = 0;
  this[2] = 0;
  return this;
}

{
  *this = 0;
  this[1] = 0;
  this[2] = 0;
  return this;
}

void *rest::GetContactsSettingsResult::GetContactsSettingsResult(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a1, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  return a1;
}

{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a1, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  return a1;
}

void sub_237444B44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, xpc_object_t a13, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(a13);
  _Unwind_Resume(a1);
}

double rest::GetIdsServerBagArg::GetIdsServerBagArg(rest::GetIdsServerBagArg *this)
{
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  return result;
}

{
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  return result;
}

std::string *rest::GetIdsServerBagArg::GetIdsServerBagArg(std::string *this, __int128 *a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    this[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this[1].__r_.__value_.__l.__data_ = v6;
  }

  return this;
}

void sub_237444C20(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_237444EB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

_DWORD *rest::GetIdsServerBagResult::GetIdsServerBagResult(_DWORD *this)
{
  *this = -1;
  return this;
}

{
  *this = -1;
  return this;
}

_DWORD *rest::GetIdsServerBagResult::GetIdsServerBagResult(_DWORD *this, int a2)
{
  *this = a2;
  return this;
}

{
  *this = a2;
  return this;
}

void sub_2374451F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12)
{
  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

void sub_237445804(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, xpc_object_t object, xpc_object_t a15)
{
  xpc_release(object);
  xpc_release(a15);
  _Unwind_Resume(a1);
}

void sub_237445BCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

void *ctu::SharedRef<__CFArray const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFArray const>::SharedRef(void *a1, CFTypeRef cf)
{
  *a1 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<LASDDatabaseType,std::string>,std::__unordered_map_hasher<LASDDatabaseType,std::__hash_value_type<LASDDatabaseType,std::string>,std::hash<LASDDatabaseType>,std::equal_to<LASDDatabaseType>,true>,std::__unordered_map_equal<LASDDatabaseType,std::__hash_value_type<LASDDatabaseType,std::string>,std::equal_to<LASDDatabaseType>,std::hash<LASDDatabaseType>,true>,std::allocator<std::__hash_value_type<LASDDatabaseType,std::string>>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  std::__hash_table<std::__hash_value_type<LASDDatabaseType,std::string>,std::__unordered_map_hasher<LASDDatabaseType,std::__hash_value_type<LASDDatabaseType,std::string>,std::hash<LASDDatabaseType>,std::equal_to<LASDDatabaseType>,true>,std::__unordered_map_equal<LASDDatabaseType,std::__hash_value_type<LASDDatabaseType,std::string>,std::equal_to<LASDDatabaseType>,std::hash<LASDDatabaseType>,true>,std::allocator<std::__hash_value_type<LASDDatabaseType,std::string>>>::clear(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

void std::__hash_table<std::__hash_value_type<LASDDatabaseType,std::string>,std::__unordered_map_hasher<LASDDatabaseType,std::__hash_value_type<LASDDatabaseType,std::string>,std::hash<LASDDatabaseType>,std::equal_to<LASDDatabaseType>,true>,std::__unordered_map_equal<LASDDatabaseType,std::__hash_value_type<LASDDatabaseType,std::string>,std::equal_to<LASDDatabaseType>,std::hash<LASDDatabaseType>,true>,std::allocator<std::__hash_value_type<LASDDatabaseType,std::string>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<LASDDatabaseType,std::string>,std::__unordered_map_hasher<LASDDatabaseType,std::__hash_value_type<LASDDatabaseType,std::string>,std::hash<LASDDatabaseType>,std::equal_to<LASDDatabaseType>,true>,std::__unordered_map_equal<LASDDatabaseType,std::__hash_value_type<LASDDatabaseType,std::string>,std::equal_to<LASDDatabaseType>,std::hash<LASDDatabaseType>,true>,std::allocator<std::__hash_value_type<LASDDatabaseType,std::string>>>::__deallocate_node(*(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void std::__hash_table<std::__hash_value_type<LASDDatabaseType,std::string>,std::__unordered_map_hasher<LASDDatabaseType,std::__hash_value_type<LASDDatabaseType,std::string>,std::hash<LASDDatabaseType>,std::equal_to<LASDDatabaseType>,true>,std::__unordered_map_equal<LASDDatabaseType,std::__hash_value_type<LASDDatabaseType,std::string>,std::equal_to<LASDDatabaseType>,std::hash<LASDDatabaseType>,true>,std::allocator<std::__hash_value_type<LASDDatabaseType,std::string>>>::__deallocate_node(void **__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = *v1;
      if (*(v1 + 47) < 0)
      {
        operator delete(v1[3]);
      }

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void std::__destroy_at[abi:ne200100]<rest::CloudSyncParams,0>(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

__n128 std::__optional_storage_base<rest::CellularPlanBlacklistAdditionalProperties,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<rest::CellularPlanBlacklistAdditionalProperties,false>>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) == *(a2 + 48))
  {
    if (*(a1 + 48))
    {
      *a1 = *a2;
      if (*(a1 + 39) < 0)
      {
        operator delete(*(a1 + 16));
      }

      result = *(a2 + 16);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 16) = result;
      *(a2 + 39) = 0;
      *(a2 + 16) = 0;
      *(a1 + 40) = *(a2 + 40);
    }
  }

  else if (*(a1 + 48))
  {
    if (*(a1 + 39) < 0)
    {
      operator delete(*(a1 + 16));
    }

    *(a1 + 48) = 0;
  }

  else
  {
    *a1 = *a2;
    result = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = result;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 16) = 0;
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 48) = 1;
  }

  return result;
}

void std::vector<rest::CellularPlanBlacklistParams>::__vdeallocate(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v1;
    if (v3 != v1)
    {
      do
      {
        rest::CellularPlanBlacklistParams::~CellularPlanBlacklistParams(v3 - 25);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void rest::CellularPlanBlacklistParams::~CellularPlanBlacklistParams(void **this)
{
  if (*(this + 192) == 1 && *(this + 183) < 0)
  {
    operator delete(this[20]);
  }

  if (*(this + 143) < 0)
  {
    operator delete(this[15]);
  }

  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void std::allocator_traits<std::allocator<rest::DeleteCloudCellularPlanBlacklistRecord>>::destroy[abi:ne200100]<rest::DeleteCloudCellularPlanBlacklistRecord,void,0>(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::vector<rest::CellularPlanBlacklistParams>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        rest::CellularPlanBlacklistParams::~CellularPlanBlacklistParams(v4 - 25);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::__tree<std::__value_type<std::string,rest::ICCIDPolicy>,std::__map_value_compare<std::string,std::__value_type<std::string,rest::ICCIDPolicy>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,rest::ICCIDPolicy>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,rest::ICCIDPolicy>,std::__map_value_compare<std::string,std::__value_type<std::string,rest::ICCIDPolicy>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,rest::ICCIDPolicy>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,rest::ICCIDPolicy>,std::__map_value_compare<std::string,std::__value_type<std::string,rest::ICCIDPolicy>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,rest::ICCIDPolicy>>>::destroy(*(a1 + 1));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

uint64_t std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void std::vector<std::string>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, a2);
  }

  std::vector<DataConnectionType>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 1);
    v1 -= 3;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

BOOL std::__equal_to::operator()[abi:ne200100]<std::string,std::string>(uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

void rest::FlightInfo::~FlightInfo(void **this)
{
  if (*(this + 239) < 0)
  {
    operator delete(this[27]);
  }

  v2 = this + 24;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 143) < 0)
  {
    operator delete(this[15]);
  }

  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  *(a1 + 8) = v3 + 24;
}

void std::vector<rest::FlightInfo>::__init_with_size[abi:ne200100]<rest::FlightInfo*,rest::FlightInfo*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x111111111111112)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<rest::FlightInfo>>(a4);
    }

    std::vector<DataConnectionType>::__throw_length_error[abi:ne200100]();
  }
}

void sub_237446760(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<rest::FlightInfo>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<rest::FlightInfo>>(unint64_t a1)
{
  if (a1 < 0x111111111111112)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<rest::FlightInfo>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        rest::FlightInfo::~FlightInfo(v4 - 30);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void ctu::rest::detail::read_rest_value_impl<xpc::array>(void **a1, xpc_object_t *a2)
{
  v4 = xpc_null_create();
  v5 = *a2;
  v6 = MEMORY[0x277D86440];
  if (v5 && MEMORY[0x2383CC760](v5) == v6)
  {
    xpc_retain(v5);
  }

  else
  {
    v5 = xpc_null_create();
  }

  if (MEMORY[0x2383CC760](v5) != v6)
  {
    if (v4)
    {
      xpc_retain(v4);
      v7 = v4;
    }

    else
    {
      v7 = xpc_null_create();
    }

    xpc_release(v5);
    v5 = v7;
  }

  xpc_release(v4);
  v8 = xpc_null_create();
  v9 = *a1;
  *a1 = v5;
  xpc_release(v9);
  xpc_release(v8);
}

void sub_237446A1C(_Unwind_Exception *a1)
{
  xpc_release(v2);
  xpc_release(v1);
  _Unwind_Resume(a1);
}

uint64_t std::unordered_map<LASDDatabaseType,std::string>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<LASDDatabaseType,std::string>,std::__unordered_map_hasher<LASDDatabaseType,std::__hash_value_type<LASDDatabaseType,std::string>,std::hash<LASDDatabaseType>,std::equal_to<LASDDatabaseType>,true>,std::__unordered_map_equal<LASDDatabaseType,std::__hash_value_type<LASDDatabaseType,std::string>,std::equal_to<LASDDatabaseType>,std::hash<LASDDatabaseType>,true>,std::allocator<std::__hash_value_type<LASDDatabaseType,std::string>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    v5 = *(i + 4);
    v6 = *(a1 + 8);
    if (!*&v6)
    {
      goto LABEL_19;
    }

    v7 = vcnt_s8(v6);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      v8 = *(i + 4);
      if (*&v6 <= v5)
      {
        v8 = v5 % *&v6;
      }
    }

    else
    {
      v8 = (*&v6 - 1) & v5;
    }

    v9 = *(*a1 + 8 * v8);
    if (!v9 || (v10 = *v9) == 0)
    {
LABEL_19:
      operator new();
    }

    while (1)
    {
      v11 = v10[1];
      if (v11 == v5)
      {
        break;
      }

      if (v7.u32[0] > 1uLL)
      {
        if (v11 >= *&v6)
        {
          v11 %= *&v6;
        }
      }

      else
      {
        v11 &= *&v6 - 1;
      }

      if (v11 != v8)
      {
        goto LABEL_19;
      }

LABEL_18:
      v10 = *v10;
      if (!v10)
      {
        goto LABEL_19;
      }
    }

    if (*(v10 + 4) != v5)
    {
      goto LABEL_18;
    }
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<LASDDatabaseType,std::string>,std::__unordered_map_hasher<LASDDatabaseType,std::__hash_value_type<LASDDatabaseType,std::string>,std::hash<LASDDatabaseType>,std::equal_to<LASDDatabaseType>,true>,std::__unordered_map_equal<LASDDatabaseType,std::__hash_value_type<LASDDatabaseType,std::string>,std::equal_to<LASDDatabaseType>,std::hash<LASDDatabaseType>,true>,std::allocator<std::__hash_value_type<LASDDatabaseType,std::string>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
      if (prime)
      {
        goto LABEL_6;
      }

      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        operator delete(v8);
      }

      *(a1 + 8) = 0;
    }
  }
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<LASDDatabaseType,std::string>,void *>>>::operator()[abi:ne200100](char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 47) < 0)
    {
      operator delete(__p[3]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t std::__hash_table<std::__hash_value_type<LASDDatabaseType,std::string>,std::__unordered_map_hasher<LASDDatabaseType,std::__hash_value_type<LASDDatabaseType,std::string>,std::hash<LASDDatabaseType>,std::equal_to<LASDDatabaseType>,true>,std::__unordered_map_equal<LASDDatabaseType,std::__hash_value_type<LASDDatabaseType,std::string>,std::equal_to<LASDDatabaseType>,std::hash<LASDDatabaseType>,true>,std::allocator<std::__hash_value_type<LASDDatabaseType,std::string>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<LASDDatabaseType,std::string>,std::__unordered_map_hasher<LASDDatabaseType,std::__hash_value_type<LASDDatabaseType,std::string>,std::hash<LASDDatabaseType>,std::equal_to<LASDDatabaseType>,true>,std::__unordered_map_equal<LASDDatabaseType,std::__hash_value_type<LASDDatabaseType,std::string>,std::equal_to<LASDDatabaseType>,std::hash<LASDDatabaseType>,true>,std::allocator<std::__hash_value_type<LASDDatabaseType,std::string>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void ctu::rest::write_rest_value<std::string const,std::string>(uint64_t a1@<X0>, xpc_object_t *a2@<X8>)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v19 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v19 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2383CC760](v5) == MEMORY[0x277D86468])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v19 = v6;
LABEL_9:
  xpc_release(v5);
  if (*(a1 + 23) >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  v17 = xpc_string_create(v7);
  if (!v17)
  {
    v17 = xpc_null_create();
  }

  v15 = &v19;
  v16 = "first";
  xpc::dict::object_proxy::operator=(&v15, &v17, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v17);
  v17 = 0;
  v10 = *(a1 + 24);
  v9 = a1 + 24;
  v8 = v10;
  if (*(v9 + 23) >= 0)
  {
    v11 = v9;
  }

  else
  {
    v11 = v8;
  }

  v13 = xpc_string_create(v11);
  if (!v13)
  {
    v13 = xpc_null_create();
  }

  v15 = &v19;
  v16 = "second";
  xpc::dict::object_proxy::operator=(&v15, &v13, &v14);
  xpc_release(v14);
  v14 = 0;
  xpc_release(v13);
  v13 = 0;
  v12 = v19;
  *a2 = v19;
  if (v12)
  {
    xpc_retain(v12);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v19);
}

void ctu::rest::read_rest_value<std::string,std::string>(uint64_t a1, void **a2)
{
  v3 = *a2;
  v8 = v3;
  v4 = MEMORY[0x277D86468];
  if (v3 && MEMORY[0x2383CC760](v3) == v4)
  {
    xpc_retain(v3);
  }

  else
  {
    v8 = xpc_null_create();
  }

  if (MEMORY[0x2383CC760]() == v4)
  {
    v5 = &v8;
    v6 = "first";
    xpc::dict::object_proxy::operator xpc::object(&v5, &object);
    __p = 0;
    v12 = 0;
    v13 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p);
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *a1 = v9;
    *(a1 + 16) = v10;
    xpc_release(object);
    v5 = &v8;
    v6 = "second";
    xpc::dict::object_proxy::operator xpc::object(&v5, &object);
    __p = 0;
    v12 = 0;
    v13 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p);
    }

    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    *(a1 + 24) = v9;
    *(a1 + 40) = v10;
    xpc_release(object);
  }

  xpc_release(v8);
}

void sub_2374472B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::pair<std::string,std::string>>(uint64_t a1, void **a2)
{
  v4 = 0;
  v2 = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(uint64_t a1, void *a2, void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, (v4 + 32)) & 0x80) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v7 + 4, a3) & 0x80) == 0)
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::string>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t AttachApnModuleInterface::pushAttachAPNSettings(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v5, a2);
  (*(*a1 + 72))(a1, 1, 0, v5);
  result = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v5);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2374475F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t subscriber::getSimCardForSimApp(int a1)
{
  if ((a1 - 1) > 4)
  {
    return 0;
  }

  else
  {
    return qword_2374B50F8[a1 - 1] | 0x100000000;
  }
}

uint64_t subscriber::isSimInTransientState(unsigned int a1)
{
  if (a1 >= 0xC)
  {
    __TUAssertTrigger();
    LOBYTE(v1) = 0;
  }

  else
  {
    v1 = 0x401u >> a1;
  }

  return v1 & 1;
}

uint64_t subscriber::isSimInserted(unsigned int a1)
{
  if (a1 >= 0xC)
  {
    __TUAssertTrigger();
    LOBYTE(v1) = 0;
  }

  else
  {
    v1 = 0xFFCu >> a1;
  }

  return v1 & 1;
}

BOOL subscriber::isPhySimDisabled(int a1, uint64_t a2)
{
  if (a1 != 8)
  {
    return 0;
  }

  v2 = *(a2 + 23);
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 8);
  }

  return v2 != 0;
}

uint64_t subscriber::isSimReady(unsigned int a1)
{
  if (a1 >= 0xC)
  {
    __TUAssertTrigger();
    LOBYTE(v1) = 0;
  }

  else
  {
    v1 = 0x20u >> a1;
  }

  return v1 & 1;
}

uint64_t subscriber::isSimSettled(unsigned int a1)
{
  if (a1 >= 0xC)
  {
    __TUAssertTrigger();
    LOBYTE(v1) = 0;
  }

  else
  {
    v1 = 0xBFAu >> a1;
  }

  return v1 & 1;
}

uint64_t subscriber::isSimLocked(unsigned int a1)
{
  if (a1 >= 0xC)
  {
    __TUAssertTrigger();
    LOBYTE(v1) = 0;
  }

  else
  {
    v1 = 0x18u >> a1;
  }

  return v1 & 1;
}

uint64_t subscriber::isSimReadyOrLocked(unsigned int a1)
{
  if (a1 >= 0xC)
  {
    __TUAssertTrigger();
    LOBYTE(v1) = 0;
  }

  else
  {
    v1 = 0x38u >> a1;
  }

  return v1 & 1;
}

uint64_t subscriber::isSimPermanentlyBlocked(unsigned int a1)
{
  if (a1 >= 0xC)
  {
    __TUAssertTrigger();
    LOBYTE(v1) = 0;
  }

  else
  {
    v1 = 0x40u >> a1;
  }

  return v1 & 1;
}

uint64_t subscriber::isSimPresentAndValid(unsigned int a1)
{
  if (a1 >= 0xC)
  {
    __TUAssertTrigger();
    LOBYTE(v1) = 0;
  }

  else
  {
    v1 = 0x7Cu >> a1;
  }

  return v1 & 1;
}

uint64_t subscriber::simTypeToCard(int a1)
{
  if ((a1 - 3) > 2)
  {
    return 1;
  }

  else
  {
    return dword_2374B5120[a1 - 3];
  }
}

std::string *subscriber::asString@<X0>(std::string *result@<X0>, std::string *a2@<X8>)
{
  v2 = result->__r_.__value_.__r.__words[0];
  size = result->__r_.__value_.__l.__size_;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  a2->__r_.__value_.__r.__words[0] = 0;
  if (v2 != size)
  {
    v5 = subscriber::asString(*v2);
    result = std::string::__assign_external(a2, v5);
    v6 = v2 + 1;
    while (v6 != size)
    {
      v11 = 2;
      strcpy(__s, ", ");
      std::string::append(a2, __s, 2uLL);
      if (v11 < 0)
      {
        operator delete(*__s);
      }

      v7 = *v6++;
      v8 = subscriber::asString(v7);
      v9 = strlen(v8);
      result = std::string::append(a2, v8, v9);
    }
  }

  return result;
}

void sub_2374479B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void *subscriber::operator<<(void *a1, _DWORD *a2)
{
  v3 = *a2 - 1;
  if (v3 > 2)
  {
    v4 = "kUnknown";
  }

  else
  {
    v4 = off_278A2FEB0[v3];
  }

  v5 = strlen(v4);

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v4, v5);
}

{
  v3 = *a2 - 1;
  if (v3 > 2)
  {
    v4 = "kUnknown";
  }

  else
  {
    v4 = off_278A2FEC8[v3];
  }

  v5 = strlen(v4);

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v4, v5);
}

const void **subscriber::generateUuidStrFromSlotId@<X0>(int a1@<W0>, CFStringRef *a2@<X8>)
{
  if (a1 == 1)
  {
    *&v3.byte8 = 0x100000000000000;
  }

  else
  {
    *&v3.byte8 = (a1 == 2) << 57;
  }

  *&v3.byte0 = 0;
  v5 = CFUUIDCreateFromUUIDBytes(0, v3);
  *a2 = CFUUIDCreateString(0, v5);
  return ctu::SharedRef<__CFUUID const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFUUID const>::~SharedRef(&v5);
}

void sub_237447BA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::SharedRef<__CFUUID const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFUUID const>::~SharedRef(va);
  _Unwind_Resume(a1);
}

unint64_t subscriber::getSlotIdFromUuidStr(CFStringRef theString, const __CFString *a2)
{
  v2 = theString;
  if (theString)
  {
    if (CFStringGetLength(theString))
    {
      v5 = CFUUIDCreateFromString(0, v2);
      v3 = CFUUIDGetUUIDBytes(v5).byte8 >> 56;
      if (v3 == 1)
      {
        v2 = 1;
      }

      else
      {
        v2 = 2 * (v3 == 2);
      }

      ctu::SharedRef<__CFUUID const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFUUID const>::~SharedRef(&v5);
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

void sub_237447C30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::SharedRef<__CFUUID const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFUUID const>::~SharedRef(va);
  _Unwind_Resume(a1);
}

void *subscriber::operator<<(void *a1, unsigned int a2)
{
  if (a2 > 3)
  {
    v3 = "????";
  }

  else
  {
    v3 = off_278A2FF78[a2];
  }

  v4 = strlen(v3);

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v3, v4);
}

uint64_t subscriber::asString@<X0>(_DWORD *a1@<X0>, _BYTE *a2@<X8>)
{
  v22 = 0;
  v20 = 0u;
  memset(v21, 0, sizeof(v21));
  *__p = 0u;
  v19 = 0u;
  v16 = 0u;
  memset(v17, 0, sizeof(v17));
  v15 = 0u;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v15);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "NpAppInfo(", 10);
  if (*a1)
  {
    v5 = "???";
  }

  else
  {
    v5 = "kISim";
  }

  if (*a1)
  {
    v6 = 3;
  }

  else
  {
    v6 = 5;
  }

  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v5, v6);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ":", 1);
  v9 = a1[8];
  if (v9 > 4)
  {
    v10 = "???";
  }

  else
  {
    v10 = off_278A2FF98[v9];
  }

  v11 = strlen(v10);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v10, v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ")", 1);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](&v15, a2);
  *&v15 = *MEMORY[0x277D82818];
  v13 = *(MEMORY[0x277D82818] + 72);
  *(&v15 + *(v15 - 24)) = *(MEMORY[0x277D82818] + 64);
  *&v16 = v13;
  *(&v16 + 1) = MEMORY[0x277D82878] + 16;
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v16 + 1) = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v17);
  std::iostream::~basic_iostream();
  return MEMORY[0x2383CBE70](v21);
}

uint64_t subscriber::asShortString@<X0>(_DWORD *a1@<X0>, _BYTE *a2@<X8>)
{
  v20 = 0;
  v18 = 0u;
  memset(v19, 0, sizeof(v19));
  *__p = 0u;
  v17 = 0u;
  v14 = 0u;
  memset(v15, 0, sizeof(v15));
  v13 = 0u;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v13);
  if (*a1)
  {
    v4 = "???";
  }

  else
  {
    v4 = "kISim";
  }

  if (*a1)
  {
    v5 = 3;
  }

  else
  {
    v5 = 5;
  }

  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, v4, v5);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ":", 1);
  v8 = a1[8];
  if (v8 > 4)
  {
    v9 = "???";
  }

  else
  {
    v9 = off_278A2FF98[v8];
  }

  v10 = strlen(v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v9, v10);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](&v13, a2);
  *&v13 = *MEMORY[0x277D82818];
  v11 = *(MEMORY[0x277D82818] + 72);
  *(&v13 + *(v13 - 24)) = *(MEMORY[0x277D82818] + 64);
  *&v14 = v11;
  *(&v14 + 1) = MEMORY[0x277D82878] + 16;
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v14 + 1) = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v15);
  std::iostream::~basic_iostream();
  return MEMORY[0x2383CBE70](v19);
}

BOOL subscriber::operator==(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v5 = a1 + 8;
  v4 = *(a1 + 8);
  v6 = *(v5 + 8) - v4;
  v8 = a2 + 8;
  v7 = *(a2 + 8);
  return v6 == *(v8 + 8) - v7 && !memcmp(v4, v7, v6) && *(a1 + 32) == *(a2 + 32);
}

uint64_t subscriber::getAuthTypeFromClientKey(subscriber *this, const __CFString *a2)
{
  if (this)
  {
    if (CFEqual(this, @"kCTSimSupportUICCAuthenticationTypeEAPAKA"))
    {
      v3 = 0x100000000;
      v4 = 2;
    }

    else
    {
      v4 = CFEqual(this, @"kCTSimSupportUICCAuthenticationTypeEAPSIM") != 0;
      v3 = v4 << 32;
    }
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  return v4 | v3;
}

uint64_t subscriber::clientKeyFromAuthType(int a1)
{
  if (a1 == 1)
  {
    v1 = &kCTSimSupportUICCAuthenticationTypeEAPSIM;
    return *v1;
  }

  if (a1 == 2)
  {
    v1 = &kCTSimSupportUICCAuthenticationTypeEAPAKA;
    return *v1;
  }

  return 0;
}

uint64_t subscriber::getAuthInfoTypeFromClientKey(subscriber *this, const __CFString *a2)
{
  if (this)
  {
    if (CFEqual(this, @"kCTSimSupportUICCAuthenticationRandKey"))
    {
      v3 = 0;
      v4 = 0x100000000;
    }

    else if (CFEqual(this, @"kCTSimSupportUICCAuthenticationAutnKey"))
    {
      v4 = 0x100000000;
      v3 = 1;
    }

    else if (CFEqual(this, @"kCTSimSupportUICCAuthenticationNafIdKey"))
    {
      v4 = 0x100000000;
      v3 = 2;
    }

    else if (CFEqual(this, @"kCTSimSupportUICCAuthenticationResKey"))
    {
      v4 = 0x100000000;
      v3 = 5;
    }

    else if (CFEqual(this, @"kCTSimSupportUICCAuthenticationAutsKey"))
    {
      v4 = 0x100000000;
      v3 = 9;
    }

    else if (CFEqual(this, @"kCTSimSupportUICCAuthenticationSresKey"))
    {
      v4 = 0x100000000;
      v3 = 3;
    }

    else if (CFEqual(this, @"kCTSimSupportUICCAuthenticationKcKey"))
    {
      v4 = 0x100000000;
      v3 = 4;
    }

    else if (CFEqual(this, @"kCTSimSupportUICCAuthenticationCkKey"))
    {
      v4 = 0x100000000;
      v3 = 6;
    }

    else if (CFEqual(this, @"kCTSimSupportUICCAuthenticationIkKey"))
    {
      v4 = 0x100000000;
      v3 = 7;
    }

    else
    {
      v5 = CFEqual(this, @"kCTSimSupportUICCAuthenticationKsExtNafKey") != 0;
      v4 = v5 << 32;
      v3 = 8 * v5;
    }
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  return v3 | v4;
}

uint64_t subscriber::clientKeyFromAuthInfoType(int a1)
{
  result = 0;
  if (a1 > 4)
  {
    if (a1 <= 6)
    {
      if (a1 == 5)
      {
        v3 = &kCTSimSupportUICCAuthenticationResKey;
      }

      else
      {
        v3 = &kCTSimSupportUICCAuthenticationCkKey;
      }
    }

    else
    {
      switch(a1)
      {
        case 7:
          v3 = &kCTSimSupportUICCAuthenticationIkKey;
          break;
        case 8:
          v3 = &kCTSimSupportUICCAuthenticationKsExtNafKey;
          break;
        case 9:
          v3 = &kCTSimSupportUICCAuthenticationAutsKey;
          break;
        default:
          return result;
      }
    }
  }

  else if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        return result;
      }

      v3 = &kCTSimSupportUICCAuthenticationAutnKey;
    }

    else
    {
      v3 = &kCTSimSupportUICCAuthenticationRandKey;
    }
  }

  else if (a1 == 2)
  {
    v3 = &kCTSimSupportUICCAuthenticationNafIdKey;
  }

  else if (a1 == 3)
  {
    v3 = &kCTSimSupportUICCAuthenticationSresKey;
  }

  else
  {
    v3 = &kCTSimSupportUICCAuthenticationKcKey;
  }

  return *v3;
}

const char *subscriber::asString(_DWORD *a1)
{
  v1 = *a1 - 1;
  if (v1 > 2)
  {
    return "kUnknown";
  }

  else
  {
    return off_278A30028[v1];
  }
}

uint64_t subscriber::SimCardInfo::SimCardInfo(uint64_t result, int a2, int a3, int a4, int a5)
{
  *result = a2;
  *(result + 4) = a3;
  *(result + 8) = a4;
  *(result + 12) = a5;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  return result;
}

{
  *result = a2;
  *(result + 4) = a3;
  *(result + 8) = a4;
  *(result + 12) = a5;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  return result;
}

uint64_t subscriber::SimCardInfo::SimCardInfo(uint64_t a1, int a2, int a3, int a4, int a5, uint64_t *a6)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  *(a1 + 8) = a4;
  *(a1 + 12) = a5;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a1 + 16, *a6, a6[1], a6[1] - *a6);
  return a1;
}

{
  *a1 = a2;
  *(a1 + 4) = a3;
  *(a1 + 8) = a4;
  *(a1 + 12) = a5;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a1 + 16, *a6, a6[1], a6[1] - *a6);
  return a1;
}

BOOL subscriber::SimCardInfo::operator==(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 4) == *(a2 + 4) && *(a1 + 8) == *(a2 + 8) && *(a1 + 12) == *(a2 + 12) && (v3 = a1 + 16, v2 = *(a1 + 16), v4 = *(v3 + 8) - v2, v6 = a2 + 16, v5 = *(a2 + 16), v4 == *(v6 + 8) - v5))
  {
    return memcmp(v2, v5, v4) == 0;
  }

  else
  {
    return 0;
  }
}

BOOL BasicSimInfo::isSimTypePresent(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  while (v3 != v2)
  {
    if (*v3 == a2)
    {
      return v2 != v3;
    }

    ++v3;
  }

  v3 = *(a1 + 24);
  return v2 != v3;
}

uint64_t BasicSimInfo::getSimTypeForCard(uint64_t a1, int a2)
{
  switch(a2)
  {
    case 3:
      v9 = *(a1 + 16);
      v8 = *(a1 + 24);
      while (v9 != v8)
      {
        if (*v9 == 5)
        {
          if (v9 == v8)
          {
            return 0;
          }

          return 5;
        }

        ++v9;
      }

      break;
    case 2:
      v6 = *(a1 + 16);
      v5 = *(a1 + 24);
      if (v6 != v5)
      {
        v7 = *(a1 + 16);
        do
        {
          if (*v7 == 3)
          {
            if (v7 == v5)
            {
              break;
            }

            return 3;
          }

          ++v7;
        }

        while (v7 != v5);
        while (*v6 != 4)
        {
          if (++v6 == v5)
          {
            return 0;
          }
        }

        if (v6 != v5)
        {
          return 4;
        }
      }

      break;
    case 1:
      v3 = *(a1 + 16);
      v2 = *(a1 + 24);
      if (v3 != v2)
      {
        v4 = *(a1 + 16);
        do
        {
          if (*v4 == 2)
          {
            if (v4 == v2)
            {
              break;
            }

            return 2;
          }

          ++v4;
        }

        while (v4 != v2);
        while (*v3 != 1)
        {
          if (++v3 == v2)
          {
            return 0;
          }
        }

        if (v3 != v2)
        {
          return 1;
        }
      }

      break;
  }

  return 0;
}

uint64_t BasicSimInfo::isEmptyEsimCapableCard(BasicSimInfo *this)
{
  if ((*(this + 16) - 2) > 3)
  {
    LOBYTE(v2) = 0;
  }

  else
  {
    v1 = *(this + 2);
    if (v1 >= 0xC)
    {
      __TUAssertTrigger();
      LOBYTE(v2) = 0;
    }

    else
    {
      v2 = 0x102u >> v1;
    }
  }

  return v2 & 1;
}

BOOL BasicSimInfo::operator==(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  if (*(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  if (*(a1 + 12) != *(a2 + 12))
  {
    return 0;
  }

  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a2 + 16);
  if (v4 - v5 != *(a2 + 24) - v6)
  {
    return 0;
  }

  while (v5 != v4)
  {
    if (*v5 != *v6)
    {
      return 0;
    }

    v5 += 4;
    ++v6;
  }

  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a2 + 40);
  if (v8 - v7 != *(a2 + 48) - v9)
  {
    return 0;
  }

  while (v7 != v8)
  {
    if (!subscriber::operator==(v7, v9))
    {
      return 0;
    }

    v7 += 40;
    v9 += 40;
  }

  if (*(a1 + 64) != *(a2 + 64))
  {
    return 0;
  }

  v10 = *(a1 + 69);
  v11 = *(a2 + 69);
  if (v10 == v11 && *(a1 + 69))
  {
    v10 = *(a1 + 68);
    v11 = *(a2 + 68);
  }

  if (v10 != v11 || !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 72), (a2 + 72)) || !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 96), (a2 + 96)) || !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 120), (a2 + 120)))
  {
    return 0;
  }

  return std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 144), (a2 + 144));
}

const void **BasicSimInfo::createBundleCriteria@<X0>(BasicSimInfo *this@<X0>, void *a2@<X8>)
{
  *v17 = 0;
  if ((*(this + 119) & 0x8000000000000000) != 0)
  {
    if (!*(this + 13))
    {
      goto LABEL_75;
    }
  }

  else if (!*(this + 119))
  {
    goto LABEL_75;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v5 = *v17;
    *v17 = Mutable;
    v20.__r_.__value_.__r.__words[0] = v5;
    ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(&v20.__r_.__value_.__l.__data_);
  }

  if (*(this + 119) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, *(this + 12), *(this + 13));
  }

  else
  {
    v15 = *(this + 4);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v19, v15.__r_.__value_.__l.__data_, v15.__r_.__value_.__l.__size_);
  }

  else
  {
    v19 = v15;
  }

  v18 = 0;
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v20, v19.__r_.__value_.__l.__data_, v19.__r_.__value_.__l.__size_);
  }

  else
  {
    v20 = v19;
  }

  v21 = 0;
  if (ctu::cf::convert_copy())
  {
    v6 = v18;
    v18 = v21;
    v22 = v6;
    ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v22);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  v16 = v18;
  v18 = 0;
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v18);
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  ctu::cf::insert<__CFString const*,__CFString const*>(*v17, @"InternationalMobileSubscriberIdentity", v16);
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v16);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (*(this + 143) < 0)
  {
    std::string::__init_copy_ctor_external(&v14, *(this + 15), *(this + 16));
  }

  else
  {
    v14 = *(this + 5);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v19, v14.__r_.__value_.__l.__data_, v14.__r_.__value_.__l.__size_);
  }

  else
  {
    v19 = v14;
  }

  v18 = 0;
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v20, v19.__r_.__value_.__l.__data_, v19.__r_.__value_.__l.__size_);
  }

  else
  {
    v20 = v19;
  }

  v21 = 0;
  if (ctu::cf::convert_copy())
  {
    v7 = v18;
    v18 = v21;
    v22 = v7;
    ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v22);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  v16 = v18;
  v18 = 0;
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v18);
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  ctu::cf::insert<__CFString const*,__CFString const*>(*v17, @"GID1", v16);
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v16);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (*(this + 167) < 0)
  {
    std::string::__init_copy_ctor_external(&v13, *(this + 18), *(this + 19));
  }

  else
  {
    v13 = *(this + 6);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v19, v13.__r_.__value_.__l.__data_, v13.__r_.__value_.__l.__size_);
  }

  else
  {
    v19 = v13;
  }

  v18 = 0;
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v20, v19.__r_.__value_.__l.__data_, v19.__r_.__value_.__l.__size_);
  }

  else
  {
    v20 = v19;
  }

  v21 = 0;
  if (ctu::cf::convert_copy())
  {
    v8 = v18;
    v18 = v21;
    v22 = v8;
    ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v22);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  v16 = v18;
  v18 = 0;
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v18);
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  ctu::cf::insert<__CFString const*,__CFString const*>(*v17, @"GID2", v16);
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v16);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (*(this + 95) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(this + 9), *(this + 10));
  }

  else
  {
    __p = *(this + 3);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v19, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v19 = __p;
  }

  v18 = 0;
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v20, v19.__r_.__value_.__l.__data_, v19.__r_.__value_.__l.__size_);
  }

  else
  {
    v20 = v19;
  }

  v21 = 0;
  if (ctu::cf::convert_copy())
  {
    v9 = v18;
    v18 = v21;
    v22 = v9;
    ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v22);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  v10 = v18;
  v16 = v18;
  v18 = 0;
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v18);
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  ctu::cf::insert<__CFString const*,__CFString const*>(*v17, @"IntegratedCircuitCardIdentity", v10);
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v16);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_75:
  ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef<__CFDictionary,void>(a2, v17);
  return ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(v17);
}

void sub_237449138(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36, int a37, const void *a38)
{
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef((v38 - 120));
  if (*(v38 - 89) < 0)
  {
    operator delete(*(v38 - 112));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(&a38);
  _Unwind_Resume(a1);
}

const void **ctu::SharedRef<__CFUUID const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFUUID const>::~SharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_237449364(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *persistentCopyValue@<X0>(CFStringRef applicationID@<X0>, CFStringRef key@<X1>, const void *a3@<X2>, void *a4@<X8>)
{
  result = CFPreferencesCopyValue(key, applicationID, *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  if (result)
  {
    *a4 = result;
  }

  else if (a3)
  {

    return ctu::cf::CFSharedRef<void const>::CFSharedRef(a4, a3);
  }

  else
  {
    *a4 = 0;
  }

  return result;
}

void *ctu::cf::CFSharedRef<void const>::CFSharedRef(void *a1, CFTypeRef cf)
{
  *a1 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  return a1;
}

const void **persistentCopyValue@<X0>(uint64_t a1@<X0>, const void *a2@<X3>, void *a3@<X8>)
{
  v8 = 0;
  v5 = *MEMORY[0x277CBF040];
  v6 = *MEMORY[0x277CBF010];
  (*(**a1 + 40))(&v8);
  if (v8)
  {
    *a3 = v8;
    v8 = 0;
  }

  else if (a2)
  {
    ctu::cf::CFSharedRef<void const>::CFSharedRef(a3, a2);
  }

  else
  {
    *a3 = 0;
  }

  return ctu::SharedRef<void const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,void const>::~SharedRef(&v8);
}

uint64_t persistentSaveValue(CFStringRef applicationID, CFStringRef key, CFPropertyListRef value)
{
  v4 = *MEMORY[0x277CBF040];
  v5 = *MEMORY[0x277CBF010];
  CFPreferencesSetValue(key, value, applicationID, *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);

  return CFPreferencesSynchronize(applicationID, v4, v5);
}

uint64_t persistentSaveValue(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(**a1 + 16))(*a1, a3, a4, a2, *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  v5 = *(**a1 + 48);

  return v5();
}

uint64_t DevicePersistentSaveValue(const __CFString *a1, CFPropertyListRef *a2)
{
  v2 = *MEMORY[0x277CBF040];
  v3 = *MEMORY[0x277CBF010];
  CFPreferencesSetValue(a1, *a2, @"com.apple.commcenter.device_specific_nobackup", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);

  return CFPreferencesSynchronize(@"com.apple.commcenter.device_specific_nobackup", v2, v3);
}

uint64_t DevicePersistentSaveValue(const __CFString *a1, const void *a2)
{
  v2 = *MEMORY[0x277CBF040];
  v3 = *MEMORY[0x277CBF010];
  CFPreferencesSetValue(a1, a2, @"com.apple.commcenter.device_specific_nobackup", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);

  return CFPreferencesSynchronize(@"com.apple.commcenter.device_specific_nobackup", v2, v3);
}

uint64_t AttachAPNDevicePersistentSaveValue(const __CFString *a1, CFPropertyListRef *a2)
{
  v4 = *MEMORY[0x277CBF040];
  v5 = *MEMORY[0x277CBF010];
  CFPreferencesSetValue(@"Placeholder", @"PlaceholderValue", @"com.apple.commcenter.attach_apn", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  CFPreferencesSynchronize(@"com.apple.commcenter.attach_apn", v4, v5);
  CFPreferencesSetValue(a1, *a2, @"com.apple.commcenter.attach_apn", v4, v5);

  return CFPreferencesSynchronize(@"com.apple.commcenter.attach_apn", v4, v5);
}

uint64_t AttachAPNDevicePersistentSaveValue(const __CFString *a1, const void *a2)
{
  v2 = *MEMORY[0x277CBF040];
  v3 = *MEMORY[0x277CBF010];
  CFPreferencesSetValue(a1, a2, @"com.apple.commcenter.attach_apn", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);

  return CFPreferencesSynchronize(@"com.apple.commcenter.attach_apn", v2, v3);
}

uint64_t CarrierBundleDevicePersistentSaveValue(const __CFString *a1, CFPropertyListRef *a2)
{
  v4 = *MEMORY[0x277CBF040];
  v5 = *MEMORY[0x277CBF010];
  CFPreferencesSetValue(@"Placeholder", @"PlaceholderValue", @"com.apple.commcenter.carrier_bundle", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  CFPreferencesSynchronize(@"com.apple.commcenter.carrier_bundle", v4, v5);
  CFPreferencesSetValue(a1, *a2, @"com.apple.commcenter.carrier_bundle", v4, v5);

  return CFPreferencesSynchronize(@"com.apple.commcenter.carrier_bundle", v4, v5);
}

uint64_t CarrierBundleDevicePersistentSaveValue(const __CFString *a1, const void *a2)
{
  v2 = *MEMORY[0x277CBF040];
  v3 = *MEMORY[0x277CBF010];
  CFPreferencesSetValue(a1, a2, @"com.apple.commcenter.carrier_bundle", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);

  return CFPreferencesSynchronize(@"com.apple.commcenter.carrier_bundle", v2, v3);
}

uint64_t CountryBundleDevicePersistentSaveValue(const __CFString *a1, CFPropertyListRef *a2)
{
  v2 = *MEMORY[0x277CBF040];
  v3 = *MEMORY[0x277CBF010];
  CFPreferencesSetValue(a1, *a2, @"com.apple.commcenter.country_bundle", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);

  return CFPreferencesSynchronize(@"com.apple.commcenter.country_bundle", v2, v3);
}

uint64_t CountryBundleDevicePersistentSaveValue(const __CFString *a1, const void *a2)
{
  v2 = *MEMORY[0x277CBF040];
  v3 = *MEMORY[0x277CBF010];
  CFPreferencesSetValue(a1, a2, @"com.apple.commcenter.country_bundle", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);

  return CFPreferencesSynchronize(@"com.apple.commcenter.country_bundle", v2, v3);
}

uint64_t CFPreferencesPersistValueForCurrentUserAnyHost(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (result)
  {
    (*(*result + 16))(result, a2, a3, a4, *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
    v6 = *(**a1 + 48);

    return v6();
  }

  return result;
}

uint64_t CFPreferencesCopyValueForCurrentUserAnyHost@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = *a1;
  if (result)
  {
    return (*(*result + 40))(result, a2, a3, *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  }

  *a4 = 0;
  return result;
}

uint64_t WirelessTechnologyAsString@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if (result <= 7)
  {
    if (result > 1)
    {
      if (result == 2)
      {
        *(a2 + 23) = 8;
        v2 = 0x7373656C65726977;
      }

      else
      {
        if (result != 4)
        {
LABEL_24:
          *(a2 + 23) = 3;
          *a2 = 16191;
          v3 = 63;
          goto LABEL_25;
        }

        *(a2 + 23) = 8;
        v2 = 0x53544D552F4D5347;
      }
    }

    else
    {
      if (!result)
      {
        *(a2 + 23) = 7;
        *a2 = 1852534389;
        *(a2 + 3) = 1853321070;
        return result;
      }

      if (result != 1)
      {
        goto LABEL_24;
      }

      *(a2 + 23) = 8;
      v2 = 0x646E616265736162;
    }

    *a2 = v2;
    return result;
  }

  if (result > 39)
  {
    switch(result)
    {
      case 0x28:
        *(a2 + 23) = 5;
        *a2 = 1414297649;
        v4 = 69;
        break;
      case 0x40:
        *(a2 + 23) = 5;
        *a2 = 1397641806;
        v4 = 65;
        break;
      case 0x80:
        *(a2 + 23) = 2;
        *a2 = 21070;
        return result;
      default:
        goto LABEL_24;
    }

    *(a2 + 4) = v4;
    return result;
  }

  if (result == 8)
  {
    *(a2 + 23) = 4;
    *a2 = 1095582787;
    return result;
  }

  if (result != 32)
  {
    goto LABEL_24;
  }

  *(a2 + 23) = 3;
  *a2 = 21580;
  v3 = 69;
LABEL_25:
  *(a2 + 2) = v3;
  return result;
}

std::string *WirelessTechnologyList::asString@<X0>(WirelessTechnologyList *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *this;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 23) = 1;
  *a2 = 40;
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      if (v3)
      {
        if (v5)
        {
          std::string::append(a2, ", ", 2uLL);
        }

        WirelessTechnologyAsString((1 << v4), __p);
        if ((v11 & 0x80u) == 0)
        {
          v6 = __p;
        }

        else
        {
          v6 = __p[0];
        }

        if ((v11 & 0x80u) == 0)
        {
          v7 = v11;
        }

        else
        {
          v7 = __p[1];
        }

        std::string::append(a2, v6, v7);
        if (v11 < 0)
        {
          operator delete(__p[0]);
        }

        ++v5;
      }

      ++v4;
      v8 = v3 >= 2;
      v3 >>= 1;
    }

    while (v8);
  }

  else
  {
    std::string::append(a2, "nothing", 7uLL);
  }

  return std::string::append(a2, ")", 1uLL);
}

void sub_237449F30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CTStopwatch::CTStopwatch(uint64_t result, void *a2)
{
  v2 = a2[1];
  *result = *a2;
  *(result + 8) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

{
  v2 = a2[1];
  *result = *a2;
  *(result + 8) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t CTStopwatch::reset(uint64_t this)
{
  if (*(this + 24) == 1)
  {
    *(this + 24) = 0;
  }

  return this;
}

void CTStopwatch::start(CTStopwatch *this)
{
  v2 = *(*this + 24);
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = (**v3)(v3);
  if ((*(this + 24) & 1) == 0)
  {
    *(this + 24) = 1;
  }

  *(this + 2) = v5;
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_23744A068(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void CTStopwatch::startIfNeeded(CTStopwatch *this)
{
  if ((*(this + 24) & 1) == 0)
  {
    CTStopwatch::start(this);
  }
}

uint64_t CTStopwatch::getStartTime(CTStopwatch *this)
{
  if (*(this + 24) == 1)
  {
    return *(this + 2) / 1000000;
  }

  else
  {
    return 0;
  }
}

uint64_t CTStopwatch::sample(CTStopwatch *this)
{
  if (*(this + 24) != 1)
  {
    return 0;
  }

  v2 = *(*this + 24);
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = (**v3)(v3);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return (v5 - *(this + 2)) / 1000000;
}

void sub_23744A188(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CTStopwatch::stop(CTStopwatch *this)
{
  result = CTStopwatch::sample(this);
  if (*(this + 24) == 1)
  {
    *(this + 24) = 0;
  }

  return result;
}

void sub_23744A2FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12)
{
  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

void write_rest_value(const SubscriptionSlotConfiguration *a1@<X0>, xpc_object_t *a2@<X8>)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v14 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v14 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2383CC760](v5) == MEMORY[0x277D86468])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v14 = v6;
LABEL_9:
  xpc_release(v5);
  v12 = xpc_int64_create(*a1);
  if (!v12)
  {
    v12 = xpc_null_create();
  }

  v10 = &v14;
  v11 = "primary";
  xpc::dict::object_proxy::operator=(&v10, &v12, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v12);
  v12 = 0;
  v8 = xpc_int64_create(*(a1 + 1));
  if (!v8)
  {
    v8 = xpc_null_create();
  }

  v10 = &v14;
  v11 = "secondary";
  xpc::dict::object_proxy::operator=(&v10, &v8, &v9);
  xpc_release(v9);
  v9 = 0;
  xpc_release(v8);
  v8 = 0;
  v7 = v14;
  *a2 = v14;
  if (v7)
  {
    xpc_retain(v7);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v14);
}

const char *CSIBOOLAsString(int a1)
{
  if (a1)
  {
    return "true";
  }

  else
  {
    return "false";
  }
}

uint64_t getSmsTypeBundleReference(int a1)
{
  if ((a1 - 1) > 4)
  {
    return 0;
  }

  else
  {
    return *(&off_278A303A0 + (a1 - 1));
  }
}

uint64_t getBroadcastLanguageFromLocale(const char *__s2)
{
  v8 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&_MergedGlobals_1, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_1))
  {
    memcpy(__dst, &off_278A30148, sizeof(__dst));
    std::map<char const*,BroadcastLanguage,getBroadcastLanguageFromLocale(char const*)::cmp_str,std::allocator<std::pair<char const* const,BroadcastLanguage>>>::map[abi:ne200100](__dst, 32);
    __cxa_atexit(std::map<char const*,BroadcastLanguage,getBroadcastLanguageFromLocale(char const*)::cmp_str,std::allocator<std::pair<char const* const,BroadcastLanguage>>>::~map[abi:ne200100], &qword_280CE8358, &dword_2373EA000);
    __cxa_guard_release(&_MergedGlobals_1);
  }

  v2 = qword_280CE8360;
  if (!qword_280CE8360)
  {
    goto LABEL_9;
  }

  v3 = &qword_280CE8360;
  do
  {
    v4 = strcmp(*(v2 + 32), __s2);
    if (v4 >= 0)
    {
      v3 = v2;
    }

    v2 = *(v2 + ((v4 >> 28) & 8));
  }

  while (v2);
  if (v3 == &qword_280CE8360 || strcmp(__s2, v3[4]) < 0)
  {
LABEL_9:
    result = 15;
  }

  else
  {
    result = *(v3 + 10);
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::map<char const*,BroadcastLanguage,getBroadcastLanguageFromLocale(char const*)::cmp_str,std::allocator<std::pair<char const* const,BroadcastLanguage>>>::map[abi:ne200100](uint64_t result, uint64_t a2)
{
  qword_280CE8368 = 0;
  qword_280CE8360 = 0;
  qword_280CE8358 = &qword_280CE8360;
  if (a2)
  {
    v2 = result;
    do
    {
      if (!qword_280CE8360)
      {
        operator new();
      }

      v2 += 16;
    }

    while (v2 != result + 16 * a2);
  }

  return result;
}

void CSIPhoneNumber::CSIPhoneNumber(CSIPhoneNumber *this, __int128 *a2)
{
  *this = 0x8100000001;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((this + 32), *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    *(this + 6) = *(a2 + 2);
    *(this + 2) = v3;
  }

  *(this + 56) = 0;
  *(this + 60) = 0;
  *(this + 8) = 0;
  *(this + 92) = 0;
  *(this + 48) = 0;
  *(this + 104) = 0u;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 88) = 0;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 38) = 4;
  CSIPhoneNumber::convertLettersToPhoneNumber(this);
}

void sub_23744AA7C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

std::string *CSIPhoneNumber::convertLettersToPhoneNumber(CSIPhoneNumber *this)
{
  v1 = this + 32;
  if (*(this + 55) < 0)
  {
    v1 = *(this + 4);
  }

  v14 = (this + 32);
  v2 = *v1 == 43;
  if (*v1 == 43)
  {
    v3 = 145;
  }

  else
  {
    v3 = 129;
  }

  *(this + 1) = v3;
  v4 = (this + 8);
  if (*(this + 31) < 0)
  {
    *(this + 2) = 0;
    v5 = *(this + 1);
  }

  else
  {
    *(this + 31) = 0;
    v5 = this + 8;
  }

  *v5 = 0;
  LOBYTE(v6) = v1[v2];
  if (v6)
  {
    v7 = &v1[v2 + 1];
    v8 = MEMORY[0x277D85DE0];
    while ((v6 & 0x80) == 0)
    {
      v9 = *(v8 + 4 * v6 + 60);
      if ((v9 & 0x100) != 0)
      {
        goto LABEL_16;
      }

      if ((v9 & 0x400) == 0)
      {
        goto LABEL_18;
      }

LABEL_27:
      std::string::push_back(v4, v6);
LABEL_28:
      v12 = *v7++;
      LOBYTE(v6) = v12;
      if (!v12)
      {
        goto LABEL_29;
      }
    }

    if (!__maskrune(v6, 0x100uLL))
    {
LABEL_18:
      if (v6 > 0x3Fu || ((1 << v6) & 0x88001C0800000000) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }

LABEL_16:
    v10 = __toupper(v6);
    if (v10 > 79)
    {
      if (v10 < 0x57)
      {
        v11 = 56;
      }

      else
      {
        v11 = 57;
      }

      if (v10 >= 0x54)
      {
        LOBYTE(v6) = v11;
      }

      else
      {
        LOBYTE(v6) = 55;
      }
    }

    else
    {
      v6 = ((21846 * (v10 - 65)) >> 16) + ((21846 * (v10 - 65)) >> 31) + 50;
    }

    goto LABEL_27;
  }

LABEL_29:

  return std::string::operator=(v14, v4);
}

void CSIPhoneNumber::CSIPhoneNumber(CSIPhoneNumber *this)
{
  CSIPhoneNumber::CSIPhoneNumber(this, &str_2_5);
}

{
  CSIPhoneNumber::CSIPhoneNumber(this, &str_2_5);
}

void CSIPhoneNumber::CSIPhoneNumber(CSIPhoneNumber *this, char *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  CSIPhoneNumber::CSIPhoneNumber(this, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

{
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  CSIPhoneNumber::CSIPhoneNumber(this, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_23744ACC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23744AD40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CSIPhoneNumber::CSIPhoneNumber(CSIPhoneNumber *a1, __int128 *a2, int a3)
{
  CSIPhoneNumber::CSIPhoneNumber(a1, a2);
  *v4 = a3;
}

{
  CSIPhoneNumber::CSIPhoneNumber(a1, a2);
  *v4 = a3;
}

uint64_t CSIPhoneNumber::CSIPhoneNumber(uint64_t a1, int a2, __int128 *a3)
{
  *a1 = 1;
  *(a1 + 4) = a2;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 8), *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    *(a1 + 24) = *(a3 + 2);
    *(a1 + 8) = v5;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    *(a1 + 48) = *(a3 + 2);
    *(a1 + 32) = v6;
  }

  *(a1 + 56) = 0;
  *(a1 + 60) = 0;
  *(a1 + 92) = 0;
  *(a1 + 96) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 88) = 0;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 4;
  return a1;
}

void sub_23744AE60(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

BOOL CSIPhoneNumber::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 31);
  if (v2 >= 0)
  {
    v3 = *(a1 + 31);
  }

  else
  {
    v3 = *(a1 + 16);
  }

  v4 = *(a2 + 31);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 16);
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 >= 0)
  {
    v8 = (a1 + 8);
  }

  else
  {
    v8 = *(a1 + 8);
  }

  if (v5 >= 0)
  {
    v9 = (a2 + 8);
  }

  else
  {
    v9 = *(a2 + 8);
  }

  return !memcmp(v8, v9, v3) && *a1 == *a2 && *(a1 + 4) == *(a2 + 4);
}

BOOL CSIPhoneNumber::operator!=(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 31);
  if (v2 >= 0)
  {
    v3 = *(a1 + 31);
  }

  else
  {
    v3 = *(a1 + 16);
  }

  v4 = *(a2 + 31);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 16);
  }

  if (v3 != v4)
  {
    return 1;
  }

  if (v2 >= 0)
  {
    v8 = (a1 + 8);
  }

  else
  {
    v8 = *(a1 + 8);
  }

  if (v5 >= 0)
  {
    v9 = (a2 + 8);
  }

  else
  {
    v9 = *(a2 + 8);
  }

  return memcmp(v8, v9, v3) || *a1 != *a2 || *(a1 + 4) != *(a2 + 4);
}

BOOL CSIPhoneNumber::hasSameBaseNumber(CSIPhoneNumber *this, const CSIPhoneNumber *a2)
{
  v2 = *(this + 31);
  if (v2 >= 0)
  {
    v3 = *(this + 31);
  }

  else
  {
    v3 = *(this + 2);
  }

  v4 = *(a2 + 31);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 2);
  }

  if (v3 != v4)
  {
    return 0;
  }

  v8 = *(this + 1);
  v6 = this + 8;
  v7 = v8;
  if (v2 < 0)
  {
    v6 = v7;
  }

  v11 = *(a2 + 1);
  v9 = a2 + 8;
  v10 = v11;
  if (v5 < 0)
  {
    v9 = v10;
  }

  return memcmp(v6, v9, v3) == 0;
}

void CSIPhoneNumber::getFormatted(CSIPhoneNumber *this@<X0>, std::string *a2@<X8>)
{
  v4 = (this + 8);
  v5 = *(this + 31);
  if ((v5 & 0x8000000000000000) != 0)
  {
    v5 = *(this + 2);
    if (v5 > 0xA)
    {
      v6 = *v4;

      std::string::__init_copy_ctor_external(a2, v6, v5);
      return;
    }
  }

  else if (v5 >= 0xB)
  {
    *&a2->__r_.__value_.__l.__data_ = *v4;
    a2->__r_.__value_.__r.__words[2] = *(this + 3);
    return;
  }

  v7 = 0;
  if (v5 <= 7)
  {
    v8 = "nnn-nnnn";
  }

  else
  {
    v8 = "(nnn) nnn-nnnn";
  }

  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  while (1)
  {
    while (1)
    {
      v10 = *v8++;
      v9 = v10;
      if (v10 == 110)
      {
        break;
      }

      if (!v9)
      {
        return;
      }

      std::string::push_back(a2, v9);
    }

    v11 = v4;
    if (*(this + 31) < 0)
    {
      v11 = *v4;
    }

    if (!v11[v7])
    {
      break;
    }

    v12 = v4;
    if (*(this + 31) < 0)
    {
      v12 = *v4;
    }

    std::string::push_back(a2, v12[v7++]);
  }
}

void sub_23744B188(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void CSIPhoneNumber::getFullNumberHelper(std::string *__s@<X1>, uint64_t a2@<X0>, std::string *a3@<X8>)
{
  if ((*(a2 + 4) & 0x70) != 0x10)
  {
    goto LABEL_39;
  }

  v5 = SHIBYTE(__s->__r_.__value_.__r.__words[2]);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (*(&__s->__r_.__value_.__s + 23))
    {
      v6 = __s;
      size = SHIBYTE(__s->__r_.__value_.__r.__words[2]);
      goto LABEL_7;
    }

LABEL_39:
    *&a3->__r_.__value_.__l.__data_ = *&__s->__r_.__value_.__l.__data_;
    a3->__r_.__value_.__r.__words[2] = __s->__r_.__value_.__r.__words[2];
    __s->__r_.__value_.__l.__size_ = 0;
    __s->__r_.__value_.__r.__words[2] = 0;
    __s->__r_.__value_.__r.__words[0] = 0;
    return;
  }

  size = __s->__r_.__value_.__l.__size_;
  if (!size)
  {
    goto LABEL_39;
  }

  v6 = __s->__r_.__value_.__r.__words[0];
LABEL_7:
  if (size >= 4)
  {
    v8 = v6 + size;
    v9 = v6;
    do
    {
      v10 = memchr(v9, 43, size - 3);
      if (!v10)
      {
        break;
      }

      if (LODWORD(v10->__r_.__value_.__l.__data_) == 825307179)
      {
        if (v10 != v6)
        {
          break;
        }

        if ((v5 & 0x80000000) != 0)
        {
          v5 = __s->__r_.__value_.__l.__size_;
        }

        v17 = v5 - 1;
        v18 = __s;
        v19 = 4;
LABEL_33:
        std::string::basic_string(&v23, v18, v19, v17, &v24);
        if (SHIBYTE(__s->__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__s->__r_.__value_.__l.__data_);
        }

        *__s = v23;
        goto LABEL_36;
      }

      v9 = (&v10->__r_.__value_.__l.__data_ + 1);
      size = v8 - v9;
    }

    while (v8 - v9 >= 4);
  }

  if ((v5 & 0x80000000) != 0)
  {
    v11 = __s->__r_.__value_.__r.__words[0];
    v12 = __s->__r_.__value_.__l.__size_;
  }

  else
  {
    v11 = __s;
    v12 = v5;
  }

  if (v12 >= 3)
  {
    v13 = v11 + v12;
    v14 = v11;
    do
    {
      v15 = memchr(v14, 48, v12 - 2);
      if (!v15)
      {
        break;
      }

      if (LOWORD(v15->__r_.__value_.__l.__data_) == 12592 && v15->__r_.__value_.__s.__data_[2] == 49)
      {
        if (v15 != v11)
        {
          break;
        }

        if ((v5 & 0x80000000) != 0)
        {
          v5 = __s->__r_.__value_.__l.__size_;
        }

        v17 = v5 - 1;
        v18 = __s;
        v19 = 3;
        goto LABEL_33;
      }

      v14 = (&v15->__r_.__value_.__l.__data_ + 1);
      v12 = v13 - v14;
    }

    while (v13 - v14 >= 3);
  }

LABEL_36:
  v20 = __s;
  if (SHIBYTE(__s->__r_.__value_.__r.__words[2]) < 0)
  {
    v20 = __s->__r_.__value_.__r.__words[0];
  }

  if (v20->__r_.__value_.__s.__data_[0] == 43)
  {
    goto LABEL_39;
  }

  v21 = std::string::insert(__s, 0, "+", 1uLL);
  if (SHIBYTE(v21->__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(a3, v21->__r_.__value_.__l.__data_, v21->__r_.__value_.__l.__size_);
  }

  else
  {
    v22 = *&v21->__r_.__value_.__l.__data_;
    a3->__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
    *&a3->__r_.__value_.__l.__data_ = v22;
  }
}

void CSIPhoneNumber::getFullNumber(CSIPhoneNumber *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(this + 1), *(this + 2));
  }

  else
  {
    __p = *(this + 8);
  }

  CSIPhoneNumber::getFullNumberHelper(&__p, this, a2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_23744B424(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CSIPhoneNumber::getFullOriginalNumber(CSIPhoneNumber *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 55) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(this + 4), *(this + 5));
  }

  else
  {
    __p = *(this + 32);
  }

  CSIPhoneNumber::getFullNumberHelper(&__p, this, a2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_23744B4B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CSIPhoneNumber::getFullNumberNoPauseDigits(CSIPhoneNumber *this@<X0>, std::string *a2@<X8>)
{
  v4 = std::string::find((this + 8), 44, 0);
  std::string::basic_string(&__p, (this + 8), 0, v4, &v6);
  CSIPhoneNumber::getFullNumberHelper(&__p, this, a2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_23744B598(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CSIPhoneNumber::getBaseNumber(CSIPhoneNumber *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 31) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 1), *(this + 2));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 8);
    a2->__r_.__value_.__r.__words[2] = *(this + 3);
  }
}

void CSIPhoneNumber::getDtmfString(CSIPhoneNumber *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 127) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 13), *(this + 14));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 104);
    a2->__r_.__value_.__r.__words[2] = *(this + 15);
  }
}

uint64_t CSIPhoneNumber::setEmergencyCategory(uint64_t this, int a2)
{
  *(this + 56) = a2;
  *(this + 60) = 1;
  return this;
}

uint64_t CSIPhoneNumber::getEmergencyCategory(CSIPhoneNumber *this)
{
  if (*(this + 60) == 1)
  {
    return *(this + 14);
  }

  else
  {
    return 0;
  }
}

uint64_t CSIPhoneNumber::setMatchedEmMetricListType(uint64_t result, int a2)
{
  *(result + 88) = a2;
  *(result + 92) = 1;
  return result;
}

void CSIPhoneNumber::getEmergencyCategoryURN(CSIPhoneNumber *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 87) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 8), *(this + 9));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 4);
    a2->__r_.__value_.__r.__words[2] = *(this + 10);
  }
}

BOOL CSIPhoneNumber::getIsMMI(CSIPhoneNumber *this)
{
  v1 = *(this + 31);
  v2 = this + 8;
  if (v1 < 0)
  {
    v2 = *(this + 1);
  }

  v3 = 0;
  v4 = 0;
  v5 = 0;
  while (1)
  {
    v6 = this + 8;
    v7 = *(this + 31);
    if ((v1 & 0x80000000) != 0)
    {
      v6 = *(this + 1);
      v7 = *(this + 2);
    }

    v8 = &v6[v7];
    if (v2 == v8)
    {
      return v2 == v8 && v5 == 6;
    }

    if (v5 <= 2)
    {
      if (v5)
      {
        if (v5 == 1)
        {
          v14 = *v2;
          if ((v14 & 0x8000000000000000) == 0 && (*(MEMORY[0x277D85DE0] + 4 * v14 + 60) & 0x400) != 0)
          {
            goto LABEL_35;
          }

          v5 = 3;
          if (v14 != 35 && *v2 != 42)
          {
            v5 = 1;
            return v2 == v8 && v5 == 6;
          }
        }

        else
        {
          v10 = *v2;
          if (v10 < 0)
          {
            goto LABEL_49;
          }

          if ((*(MEMORY[0x277D85DE0] + 4 * v10 + 60) & 0x400) != 0)
          {
            goto LABEL_35;
          }

          if (v10 != 35)
          {
LABEL_49:
            v5 = 2;
            return v2 == v8 && v5 == 6;
          }

          v5 = 3;
        }
      }

      else
      {
        v13 = *v2;
        if (v13 == 35)
        {
          v5 = 2;
        }

        else
        {
          if (v13 != 42)
          {
            v5 = 0;
            return v2 == v8 && v5 == 6;
          }

          v5 = 1;
        }
      }
    }

    else if (v5 > 4)
    {
      if (v5 != 5)
      {
        return v2 == v8 && v5 == 6;
      }

      v11 = *v2;
      if (v11 == 35)
      {
        goto LABEL_36;
      }

      if (v11 == 42)
      {
        ++v4;
        v5 = 5;
        if (v4 == 4)
        {
          return v2 == v8 && v5 == 6;
        }
      }

      else
      {
        v5 = 5;
        if ((v11 & 0x80) != 0 || v11 != 43 && (*(MEMORY[0x277D85DE0] + 4 * v11 + 60) & 0x400) == 0)
        {
          return v2 == v8 && v5 == 6;
        }
      }
    }

    else
    {
      if (v5 == 3)
      {
        v12 = *v2;
        if (v12 < 0 || (*(MEMORY[0x277D85DE0] + 4 * v12 + 60) & 0x400) == 0)
        {
          v5 = 3;
          return v2 == v8 && v5 == 6;
        }

LABEL_35:
        --v2;
        v5 = 4;
        goto LABEL_47;
      }

      v9 = *v2;
      if (v9 == 35)
      {
LABEL_36:
        v5 = 6;
        goto LABEL_47;
      }

      if (v9 == 42)
      {
        v5 = 5;
      }

      else
      {
        if ((v9 & 0x80) != 0)
        {
          v5 = 4;
          return v2 == v8 && v5 == 6;
        }

        v15 = *(MEMORY[0x277D85DE0] + 4 * v9 + 60);
        v5 = 4;
        if ((v15 & 0x400) == 0)
        {
          return v2 == v8 && v5 == 6;
        }

        if (++v3 == 4)
        {
          return v2 == v8 && v5 == 6;
        }
      }
    }

LABEL_47:
    ++v2;
  }
}

BOOL CSIPhoneNumber::getIsUSSD(CSIPhoneNumber *this)
{
  v2 = (this + 8);
  LODWORD(v3) = *(this + 31);
  if (*(this + 31) < 0)
  {
    v7 = *(this + 1);
    v6 = *(this + 2);
    if (v6 == 5)
    {
      if (*v7 == 909124394 && v7[4] == 35)
      {
        return 1;
      }

      if (*v7 == 925901610 && v7[4] == 35)
      {
        return 1;
      }

      v6 = 5;
    }
  }

  else
  {
    if (v3 == 5)
    {
      if (LODWORD(v2->__r_.__value_.__l.__data_) == 909124394 && *(this + 12) == 35)
      {
        return 1;
      }

      if (LODWORD(v2->__r_.__value_.__l.__data_) == 925901610 && *(this + 12) == 35)
      {
        return 1;
      }
    }

    v6 = *(this + 31);
    v7 = this + 8;
  }

  if (v7[v6 - 1] == 35)
  {
    v10 = std::string::find((this + 8), 59, 0);
    v11 = std::string::find(v2, 44, 0);
    if (v10 == -1 && v11 == -1)
    {
      return 1;
    }

    LODWORD(v3) = *(this + 31);
  }

  if ((v3 & 0x80) != 0)
  {
    v3 = *(this + 2);
    if (v3 < 3)
    {
      v14 = v2->__r_.__value_.__r.__words[0];
      if (v3 == 1)
      {
        v15 = *v14;
        if (v15 == 48)
        {
          return 0;
        }
      }

      else
      {
        if (v3 == 2 && *v14 == 12336)
        {
          return 0;
        }

        result = 0;
        v15 = *v14;
        if (v15 == 35 || v15 == 42)
        {
          return result;
        }
      }

      if (v15 == 49)
      {
        return v3 != 2;
      }

      return 1;
    }

    return 0;
  }

  if (v3 >= 3)
  {
    return 0;
  }

  if (v3 == 1)
  {
    v13 = v2->__r_.__value_.__s.__data_[0];
    if (v13 != 48)
    {
      goto LABEL_43;
    }

    return 0;
  }

  if (v3 == 2 && LOWORD(v2->__r_.__value_.__l.__data_) == 12336)
  {
    return 0;
  }

  result = 0;
  v13 = v2->__r_.__value_.__s.__data_[0];
  if (v13 != 35 && v13 != 42)
  {
LABEL_43:
    if (v13 == 49)
    {
      v3 = v3;
      return v3 != 2;
    }

    return 1;
  }

  return result;
}

BOOL CSIPhoneNumber::isOriginalNumberSame(CSIPhoneNumber *this, const CSIPhoneNumber *a2)
{
  v2 = *(this + 55);
  if (v2 < 0)
  {
    v3 = *(this + 5);
  }

  else
  {
    v3 = *(this + 55);
  }

  v4 = *(a2 + 55);
  if (v4 >= 0)
  {
    v5 = *(a2 + 55);
  }

  else
  {
    v5 = *(a2 + 5);
  }

  if (v5 >= v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (v6 < 5)
  {
    return 0;
  }

  v8 = this + 32;
  v9 = a2 + 32;
  if (v5 >= v3)
  {
    if (v4 >= 0)
    {
      v23 = a2 + 32;
    }

    else
    {
      v23 = *v9;
    }

    if (v2 >= 0)
    {
      v24 = this + 32;
    }

    else
    {
      v24 = *(this + 4);
    }

    if (v2 >= 0)
    {
      v25 = *(this + 55);
    }

    else
    {
      v25 = *(this + 5);
    }

    v26 = &v23[v5];
    if (v25)
    {
      v29 = *v24;
      v27 = v24 + 1;
      v28 = v29;
      v30 = v23;
      v31 = v26;
      do
      {
        v32 = v30 + 1;
        while (*v30 != v28)
        {
          ++v30;
          ++v32;
          if (v30 == v26)
          {
            goto LABEL_59;
          }
        }

        v33 = v25 - 1;
        v34 = v27;
        while (v33)
        {
          if (v32 == v26)
          {
            goto LABEL_59;
          }

          v36 = *v32++;
          v35 = v36;
          v37 = *v34++;
          --v33;
          if (v35 != v37)
          {
            goto LABEL_52;
          }
        }

        v31 = v30;
LABEL_52:
        ++v30;
      }

      while (v30 != v26);
    }

    else
    {
      v31 = &v23[v5];
    }

LABEL_59:
    v40 = v31 - v23;
    if (v25)
    {
      v41 = v31 == v26;
    }

    else
    {
      v41 = 0;
    }

    v39 = v41 || v40 == -1;
  }

  else
  {
    if ((v2 & 0x80000000) != 0)
    {
      v8 = *(this + 4);
      v2 = *(this + 5);
    }

    if (v4 < 0)
    {
      v9 = *v9;
    }

    v10 = &v8[v2];
    if (v2)
    {
      v13 = *v9;
      v11 = v9 + 1;
      v12 = v13;
      v14 = v5 - 1;
      v15 = v8;
      v16 = v10;
      do
      {
        v17 = v15 + 1;
        while (*v15 != v12)
        {
          ++v15;
          ++v17;
          if (v15 == v10)
          {
            goto LABEL_55;
          }
        }

        v18 = v14;
        v19 = v11;
        while (v18)
        {
          if (v17 == v10)
          {
            goto LABEL_55;
          }

          v21 = *v17++;
          v20 = v21;
          v22 = *v19++;
          --v18;
          if (v20 != v22)
          {
            goto LABEL_29;
          }
        }

        v16 = v15;
LABEL_29:
        ++v15;
      }

      while (v15 != v10);
    }

    else
    {
      v16 = v8;
    }

LABEL_55:
    v38 = v16 - v8;
    v39 = v16 == v10 || v38 == -1;
  }

  return !v39;
}

void copyURLForPath(CFURLRef *a1@<X8>)
{
  v7 = 0uLL;
  v8 = 0;
  ctu::cf::assign();
  v6 = 0;
  *__p = 0uLL;
  *a1 = 0;
  if (v6 >= 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if (v6 >= 0)
  {
    v4 = HIBYTE(v6);
  }

  else
  {
    v4 = __p[1];
  }

  *a1 = CFURLCreateFromFileSystemRepresentation(*MEMORY[0x277CBECE8], v3, v4, 1u);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_23744BDA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **copyURLForPath@<X0>(uint64_t a1@<X0>, CFURLRef *a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a1, *(a1 + 8));
  }

  else
  {
    __p = *a1;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v9 = __p;
  }

  v8 = 0;
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, v9.__r_.__value_.__l.__data_, v9.__r_.__value_.__l.__size_);
  }

  else
  {
    v10 = v9;
  }

  v11 = 0;
  v3 = *MEMORY[0x277CBECE8];
  if (ctu::cf::convert_copy())
  {
    v4 = v8;
    v8 = v11;
    v12 = v4;
    ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v12);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v7 = v8;
  v8 = 0;
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v8);
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  copyURLForPath(a2);
  return ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v7);
}

void sub_23744BF10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, int a17, const void *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&a18);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

const void **copyURLAsString@<X0>(const void **result@<X0>, CFStringRef *a2@<X8>)
{
  *a2 = 0;
  if (result)
  {
    v3 = CFURLCopyAbsoluteURL(result);
    v4 = v3;
    if (v3)
    {
      *a2 = CFURLCopyFileSystemPath(v3, kCFURLPOSIXPathStyle);
      v5 = 0;
      ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v5);
    }

    return ctu::SharedRef<__CFURL const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFURL const>::~SharedRef(&v4);
  }

  return result;
}

void sub_23744BFD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  ctu::SharedRef<__CFURL const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFURL const>::~SharedRef(&a9);
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(v9);
  _Unwind_Resume(a1);
}

const void **copyBundleIdentifier@<X0>(const void **bundleURL@<X0>, CFStringRef *a2@<X8>)
{
  *a2 = 0;
  if (bundleURL)
  {
    v3 = CFBundleCreate(*MEMORY[0x277CBECE8], bundleURL);
    v6 = v3;
    if (v3)
    {
      Identifier = CFBundleGetIdentifier(v3);
      v5 = Identifier;
      if (Identifier)
      {
        CFRetain(Identifier);
      }

      *a2 = v5;
      v7 = 0;
      ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v7);
    }

    return ctu::SharedRef<__CFBundle,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFBundle>::~SharedRef(&v6);
  }

  return bundleURL;
}

void sub_23744C078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  ctu::SharedRef<__CFBundle,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFBundle>::~SharedRef(&a9);
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(v9);
  _Unwind_Resume(a1);
}

const void **copyBundleIdentifier@<X0>(const void **result@<X0>, const void **a2@<X8>)
{
  *a2 = 0;
  if (result)
  {
    bundleURL = 0;
    copyURLForPath(&bundleURL);
    if (bundleURL)
    {
      copyBundleIdentifier(bundleURL, &v3);
      if (&v3 != a2)
      {
        v5 = *a2;
        *a2 = v3;
        v3 = 0;
        ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v5);
      }

      ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v3);
    }

    return ctu::SharedRef<__CFURL const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFURL const>::~SharedRef(&bundleURL);
  }

  return result;
}

void sub_23744C120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::SharedRef<__CFURL const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFURL const>::~SharedRef(va);
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(v3);
  _Unwind_Resume(a1);
}

const void **copyBundleIdentifier@<X0>(uint64_t a1@<X0>, const void **a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a1, *(a1 + 8));
  }

  else
  {
    __p = *a1;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v10 = __p;
  }

  v9 = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v11, v10.__r_.__value_.__l.__data_, v10.__r_.__value_.__l.__size_);
  }

  else
  {
    v11 = v10;
  }

  v12 = 0;
  v3 = *MEMORY[0x277CBECE8];
  if (ctu::cf::convert_copy())
  {
    v4 = v9;
    v9 = v12;
    v13 = v4;
    ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v13);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  v5 = v9;
  v8 = v9;
  v9 = 0;
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v9);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  copyBundleIdentifier(v5, a2);
  return ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v8);
}

void sub_23744C27C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, int a17, const void *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&a18);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

void appendDeviceTypeCarrierBundleFolderLocation(capabilities::ct *a1, os_log_t *a2, std::string *a3)
{
  CarrierBundleBaseDir = capabilities::ct::getCarrierBundleBaseDir(a1);
  if (CarrierBundleBaseDir <= 1)
  {
    if (CarrierBundleBaseDir)
    {
      if (CarrierBundleBaseDir != 1)
      {
        return;
      }

      v6 = "iPad/";
      v7 = a3;
      v8 = 5;
    }

    else
    {
      v6 = "iPhone/";
      v7 = a3;
      v8 = 7;
    }

    goto LABEL_12;
  }

  if (CarrierBundleBaseDir == 2)
  {
    v6 = "Watch/";
    v7 = a3;
    v8 = 6;
LABEL_12:

    std::string::append(v7, v6, v8);
    return;
  }

  if (CarrierBundleBaseDir == 3)
  {
    v9 = *a2;
    if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_2373EA000, v9, OS_LOG_TYPE_DEFAULT, "#N Carrier Bundles not supported on this device", v10, 2u);
    }
  }
}

const void **ctu::SharedRef<__CFURL const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFURL const>::~SharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **ctu::SharedRef<__CFBundle,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFBundle>::~SharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const char *EmCallTypeAsString(unsigned int a1)
{
  if (a1 > 5)
  {
    return "Unknown";
  }

  else
  {
    return off_278A30520[a1];
  }
}

const char *callSourceModeAsString(unsigned int a1)
{
  if (a1 > 3)
  {
    return "Unknown";
  }

  else
  {
    return off_278A30550[a1];
  }
}

const char *TTYTypeAsString(unsigned int a1)
{
  if (a1 > 2)
  {
    return "Unknown";
  }

  else
  {
    return off_278A30570[a1];
  }
}

std::string *subscriber::encodeIccid@<X0>(std::string *this@<X0>, void *a2@<X8>)
{
  v2 = this;
  v4 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((v4 & 0x8000000000000000) == 0)
  {
    if (v4 != 19)
    {
      size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
      goto LABEL_6;
    }

LABEL_5:
    std::string::append(this, "f", 1uLL);
    LOBYTE(v4) = *(&v2->__r_.__value_.__s + 23);
    goto LABEL_7;
  }

  size = this->__r_.__value_.__l.__size_;
  if (size == 19)
  {
    goto LABEL_5;
  }

LABEL_6:
  if (size != 20)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    return this;
  }

LABEL_7:
  v4 = v4;
  if ((v4 & 0x80u) == 0)
  {
    v6 = v2;
  }

  else
  {
    v6 = v2->__r_.__value_.__r.__words[0];
  }

  if ((v4 & 0x80u) != 0)
  {
    v4 = v2->__r_.__value_.__l.__size_;
  }

  if (v4)
  {
    v7 = &v6->__r_.__value_.__s.__data_[1];
    do
    {
      if (v4 == 1)
      {
        break;
      }

      v8 = *(v7 - 1);
      *(v7 - 1) = *v7;
      *v7 = v8;
      v7 += 2;
      v4 -= 2;
    }

    while (v4);
  }

  return ctu::parse_hex();
}

void QosFlowsContainer::~QosFlowsContainer(QosFlowsContainer *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  if (v3 == v2)
  {
    v4 = (this + 40);
    v3 = *(this + 1);
  }

  else
  {
    v4 = (this + 40);
    v5 = *(this + 4);
    v6 = &v2[v5 / 0x19];
    v7 = *v6 + 160 * (v5 % 0x19);
    v8 = v2[(*(this + 5) + v5) / 0x19] + 160 * ((*(this + 5) + v5) % 0x19);
    if (v7 != v8)
    {
      do
      {
        if (*(v7 + 144) == 1 && *(v7 + 136) == 1)
        {
          v15 = (v7 + 112);
          std::vector<DataIPFilter>::__destroy_vector::operator()[abi:ne200100](&v15);
        }

        if (*(v7 + 80) == 1 && *(v7 + 72) == 1)
        {
          v15 = (v7 + 48);
          std::vector<DataIPFilter>::__destroy_vector::operator()[abi:ne200100](&v15);
        }

        v7 += 160;
        if (v7 - *v6 == 4000)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v2 = *(this + 1);
      v3 = *(this + 2);
    }
  }

  *v4 = 0;
  v10 = v3 - v2;
  if (v10 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(this + 2);
      v2 = (*(this + 1) + 8);
      *(this + 1) = v2;
      v10 = v3 - v2;
    }

    while (v10 > 2);
  }

  if (v10 == 1)
  {
    v11 = 12;
    goto LABEL_20;
  }

  if (v10 == 2)
  {
    v11 = 25;
LABEL_20:
    *(this + 4) = v11;
  }

  if (v2 != v3)
  {
    do
    {
      v12 = *v2++;
      operator delete(v12);
    }

    while (v2 != v3);
    v14 = *(this + 1);
    v13 = *(this + 2);
    if (v13 != v14)
    {
      *(this + 2) = v13 + ((v14 - v13 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*this)
  {
    operator delete(*this);
  }
}

uint64_t *sGetEmptyAddrs(void)
{
  if ((atomic_load_explicit(&qword_280CE8378, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280CE8378))
  {
    qword_280CE8388 = 0;
    unk_280CE8390 = 0;
    qword_280CE8398 = 0;
    __cxa_guard_release(&qword_280CE8378);
  }

  return &qword_280CE8388;
}

uint64_t *sGetEmptyPDPMetricInfo(void)
{
  if ((atomic_load_explicit(&qword_280CE8380, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280CE8380))
  {
    qword_280CE8468 = 0;
    unk_280CE8470 = 0;
    qword_280CE83D0 = &unk_284A73ED0;
    unk_280CE83D8 = 0u;
    unk_280CE83E8 = 0u;
    unk_280CE83F8 = 0u;
    unk_280CE8408 = 0u;
    unk_280CE8418 = 0u;
    unk_280CE8428 = 0u;
    unk_280CE8438 = 0u;
    unk_280CE8448 = 0u;
    unk_280CE8458 = 0u;
    qword_280CE8478 = 0;
    __cxa_guard_release(&qword_280CE8380);
  }

  return &qword_280CE83D0;
}

uint64_t isDataConectionAllowedOverSatelliteSystem(int a1, char a2)
{
  v2 = &dword_2374B5648;
  v3 = 32;
  do
  {
    v4 = *v2 == a1 && *(v2 - 4) <= a2;
    v5 = v4;
    if (v4)
    {
      break;
    }

    v6 = v3;
    v3 -= 8;
    v2 += 2;
  }

  while (v6);
  return v5;
}

void std::vector<DataIPFilter>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        if (*(v4 - 24) == 1 && *(v4 - 48) == 1 && *(v4 - 49) < 0)
        {
          operator delete(*(v4 - 9));
        }

        if (*(v4 - 80) == 1 && *(v4 - 104) == 1 && *(v4 - 105) < 0)
        {
          operator delete(*(v4 - 16));
        }

        v4 -= 20;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__tree<TrafficDescriptor>::destroy(void **a1)
{
  if (a1)
  {
    std::__tree<TrafficDescriptor>::destroy(*a1);
    std::__tree<TrafficDescriptor>::destroy(a1[1]);
    TrafficDescriptor::~TrafficDescriptor(a1 + 4);

    operator delete(a1);
  }
}

uint64_t _GLOBAL__sub_I_DataConsts_cpp()
{
  qword_280CE8618 = 0;
  qword_280CE8610 = 0;
  kEmptyTrafficDescriptorsSet = &qword_280CE8610;
  return __cxa_atexit(std::set<TrafficDescriptor>::~set[abi:ne200100], &kEmptyTrafficDescriptorsSet, &dword_2373EA000);
}

void sub_23744CB3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t read_rest_value(int *a1, int *a2)
{
  result = MEMORY[0x2383CC760](*a2);
  if (result == MEMORY[0x277D864C0])
  {
    v8 = *a1;
    result = ctu::rest::detail::read_enum_string_value(&v8, a2, v5);
    *a1 = v8;
  }

  else if (result == MEMORY[0x277D86448] || result == MEMORY[0x277D86498] || result == MEMORY[0x277D864C8])
  {
    result = xpc::dyn_cast_or_default(a2, 0);
    *a1 = result;
  }

  return result;
}

uint64_t *write_rest_value@<X0>(unsigned int *a1@<X0>, const char *a2@<X2>, uint64_t *a3@<X8>)
{
  v3 = *a1;
  if (v3 > 4)
  {
    v4 = "???";
  }

  else
  {
    v4 = off_278A306A0[v3];
  }

  return ctu::rest::detail::write_enum_string_value(a3, v3, v4, a2);
}

void UMTSProvisioningInfo::UMTSProvisioningInfo(UMTSProvisioningInfo *this)
{
  *this = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 56) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 8) = 0;
  *(this + 88) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 12) = 0;
  *(this + 120) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 16) = 0;
  *(this + 152) = 0;
  *(this + 164) = 0;
  *(this + 40) = 0;
  *(this + 6) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 166) = 0;
  *(this + 176) = 0;
  *(this + 27) = 0;
  *(this + 28) = 0;
  *(this + 26) = 0;
  *(this + 232) = 0;
  *(this + 31) = 0;
  *(this + 32) = 0;
  *(this + 30) = 0;
  *(this + 264) = 0;
  *(this + 296) = 0;
  *(this + 34) = 0;
  *(this + 35) = 0;
  *(this + 36) = 0;
  *(this + 38) = 0;
  *(this + 39) = 0;
  *(this + 328) = 0;
  *(this + 40) = 0;
  *(this + 340) = 0;
  *(this + 84) = 0;
  *(this + 23) = 0;
  *(this + 24) = 0;
  *(this + 50) = 0;
  *(this + 342) = 0;
  *(this + 352) = 0;
}

{
  *this = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 56) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 8) = 0;
  *(this + 88) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 12) = 0;
  *(this + 120) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 16) = 0;
  *(this + 152) = 0;
  *(this + 164) = 0;
  *(this + 40) = 0;
  *(this + 6) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 166) = 0;
  *(this + 176) = 0;
  *(this + 27) = 0;
  *(this + 28) = 0;
  *(this + 26) = 0;
  *(this + 232) = 0;
  *(this + 31) = 0;
  *(this + 32) = 0;
  *(this + 30) = 0;
  *(this + 264) = 0;
  *(this + 296) = 0;
  *(this + 34) = 0;
  *(this + 35) = 0;
  *(this + 36) = 0;
  *(this + 38) = 0;
  *(this + 39) = 0;
  *(this + 328) = 0;
  *(this + 40) = 0;
  *(this + 340) = 0;
  *(this + 84) = 0;
  *(this + 23) = 0;
  *(this + 24) = 0;
  *(this + 50) = 0;
  *(this + 342) = 0;
  *(this + 352) = 0;
}

void UMTSProvisioningInfo::dumpState(UMTSProvisioningInfo *this, os_log_t *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
  {
    if (*this)
    {
      v5 = "true";
    }

    else
    {
      v5 = "false";
    }

    v7 = 136315138;
    v8 = v5;
    _os_log_impl(&dword_2373EA000, v4, OS_LOG_TYPE_DEFAULT, "#I fImsiOverride = %s", &v7, 0xCu);
  }

  if (*(this + 176) == 1)
  {
    UMTSProvisioningSlotInfo::dumpState((this + 8), a2);
  }

  if (*(this + 352) == 1)
  {
    UMTSProvisioningSlotInfo::dumpState((this + 184), a2);
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t ES10TapeLoadBoundProfilePackage::ES10TapeLoadBoundProfilePackage(uint64_t a1, __n128 *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  std::vector<unsigned char>::__move_assign(a1, a2);
  v3 = *a1;
  v4 = *(a1 + 8);
  if (v4 == *a1 || (v13 = 0, v14 = 0, v12 = (v4 - v3), DERDecoderInitialize(&v12 + 4, v3, &v12, v12)) || DERDecoderParseSequence((&v12 + 4), 1, v5, v6, v7, v8, v9, v10, 1))
  {
    *(a1 + 40) = 0;
  }

  else
  {
    DERDecoderGetCount((a1 + 32), (a1 + 48));
    *(a1 + 24) = 0;
    *(a1 + 52) = 0;
    *(a1 + 72) = 0;
  }

  return a1;
}

void sub_23744D4FC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL ES10TapeLoadBoundProfilePackage::getNextPayload(uint64_t *a1, uint64_t a2)
{
  if (!*(a1 + 10))
  {
    return 1;
  }

  v18 = 0;
  v17 = 0;
  v4 = *(a1 + 19);
  v5 = a1 + 9;
  if (v4 != *(a1 + 18))
  {
    if (!DERDecoderGetEncodingAt((a1 + 7), v4, 0, 0, 0, 0, 0, &v18, &v17))
    {
      v7 = *(a1 + 6);
      v8 = *a1;
      if (a1[1] - *a1 <= v7)
      {
        goto LABEL_29;
      }

      v10 = &v18[-v8 - v7 + v17];
      ++*(a1 + 19);
      goto LABEL_17;
    }

    return 1;
  }

  if (DERDecoderGetEncodingAt((a1 + 4), *(a1 + 13), 0, 0, 0, &v18, &v17, 0, 0))
  {
    return 1;
  }

  if (!*(a1 + 13))
  {
    v7 = *(a1 + 6);
    v8 = *a1;
    if (a1[1] - *a1 <= v7)
    {
      goto LABEL_29;
    }

    v10 = &v18[-v8 - v7 + v17];
    goto LABEL_17;
  }

  if (DERDecoderInitialize((a1 + 7), v18, &v17, v17))
  {
    return 1;
  }

  *(a1 + 19) = 0;
  if (DERDecoderGetEncodingAt((a1 + 7), 0, 0, 0, 0, &v18, &v17, 0, 0))
  {
    return 1;
  }

  DERDecoderGetCount(a1 + 7, v5);
  v6 = a1[7];
  v7 = *(a1 + 6);
  v8 = *a1;
  v9 = a1[1] - *a1;
  if (*v6 == 135)
  {
    if (v9 > v7)
    {
      v10 = &v18[-v8 - v7 + v17];
      ++*(a1 + 19);
      goto LABEL_17;
    }

LABEL_29:
    std::vector<unsigned char>::__throw_out_of_range[abi:ne200100]();
  }

  if (v9 <= v7)
  {
    goto LABEL_29;
  }

  v10 = &v6[-v8 - v7];
LABEL_17:
  v12 = *a2;
  v13 = *(a2 + 8) - *a2;
  if (v10 <= v13)
  {
    if (v10 < v13)
    {
      *(a2 + 8) = &v10[v12];
    }

    if (!v10)
    {
      goto LABEL_24;
    }

    v14 = (a1 + 3);
  }

  else
  {
    std::vector<unsigned char>::__append(a2, &v10[-v13]);
    v8 = *a1;
    v14 = (a1 + 3);
    v7 = *(a1 + 6);
    v12 = *a2;
  }

  memmove(v12, (v8 + v7), v10);
  v7 = *v14;
LABEL_24:
  *(a1 + 6) = v7 + v10;
  if (*(a1 + 19) != *(a1 + 18))
  {
    return 0;
  }

  a1[9] = 0;
  v15 = *(a1 + 12);
  v16 = *(a1 + 13) + 1;
  *(a1 + 13) = v16;
  return v16 == v15;
}

BOOL TapeProfileMetadata::operator==(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 216;
  v2 = *(a1 + 216);
  v4 = *(v3 + 8) - v2;
  v6 = a2 + 216;
  v5 = *(a2 + 216);
  return v4 == *(v6 + 8) - v5 && memcmp(v2, v5, v4) == 0;
}

BOOL TapeProfileMetadata::operator!=(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 216;
  v2 = *(a1 + 216);
  v4 = *(v3 + 8) - v2;
  v6 = a2 + 216;
  v5 = *(a2 + 216);
  return v4 != *(v6 + 8) - v5 || memcmp(v2, v5, v4) != 0;
}

void sCreateSupportedIndicationDict(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    *a2 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2383CC760](v5) == MEMORY[0x277D86468])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  *a2 = v6;
LABEL_9:
  xpc_release(v5);
  v63 = xpc_BOOL_create(0);
  if (!v63)
  {
    v63 = xpc_null_create();
  }

  v65 = 0uLL;
  v66 = 0;
  ctu::cf::assign();
  v59 = 0u;
  v60 = 0;
  v61 = a2;
  v62 = &v59;
  xpc::dict::object_proxy::operator=(&v61, &v63, &v64);
  xpc_release(v64);
  v64 = 0;
  if (SHIBYTE(v60) < 0)
  {
    operator delete(v59);
  }

  xpc_release(v63);
  v63 = 0;
  v57 = xpc_BOOL_create(0);
  if (!v57)
  {
    v57 = xpc_null_create();
  }

  v65 = 0uLL;
  v66 = 0;
  ctu::cf::assign();
  v59 = v65;
  v60 = v66;
  v61 = a2;
  v7 = v65;
  if (v66 >= 0)
  {
    v7 = &v59;
  }

  v62 = v7;
  xpc::dict::object_proxy::operator=(&v61, &v57, &v58);
  xpc_release(v58);
  v58 = 0;
  if (SHIBYTE(v60) < 0)
  {
    operator delete(v59);
  }

  xpc_release(v57);
  v57 = 0;
  object = xpc_BOOL_create(0);
  if (!object)
  {
    object = xpc_null_create();
  }

  v65 = 0uLL;
  v66 = 0;
  ctu::cf::assign();
  v59 = v65;
  v60 = v66;
  v61 = a2;
  v8 = v65;
  if (v66 >= 0)
  {
    v8 = &v59;
  }

  v62 = v8;
  xpc::dict::object_proxy::operator=(&v61, &object, &v56);
  xpc_release(v56);
  v56 = 0;
  if (SHIBYTE(v60) < 0)
  {
    operator delete(v59);
  }

  xpc_release(object);
  object = 0;
  v53 = xpc_BOOL_create(0);
  if (!v53)
  {
    v53 = xpc_null_create();
  }

  v65 = 0uLL;
  v66 = 0;
  ctu::cf::assign();
  v59 = v65;
  v60 = v66;
  v61 = a2;
  v9 = v65;
  if (v66 >= 0)
  {
    v9 = &v59;
  }

  v62 = v9;
  xpc::dict::object_proxy::operator=(&v61, &v53, &v54);
  xpc_release(v54);
  v54 = 0;
  if (SHIBYTE(v60) < 0)
  {
    operator delete(v59);
  }

  xpc_release(v53);
  v53 = 0;
  v51 = xpc_BOOL_create(0);
  if (!v51)
  {
    v51 = xpc_null_create();
  }

  v65 = 0uLL;
  v66 = 0;
  ctu::cf::assign();
  v59 = v65;
  v60 = v66;
  v61 = a2;
  v10 = v65;
  if (v66 >= 0)
  {
    v10 = &v59;
  }

  v62 = v10;
  xpc::dict::object_proxy::operator=(&v61, &v51, &v52);
  xpc_release(v52);
  v52 = 0;
  if (SHIBYTE(v60) < 0)
  {
    operator delete(v59);
  }

  xpc_release(v51);
  v51 = 0;
  v49 = xpc_BOOL_create(0);
  if (!v49)
  {
    v49 = xpc_null_create();
  }

  v65 = 0uLL;
  v66 = 0;
  ctu::cf::assign();
  v59 = v65;
  v60 = v66;
  v61 = a2;
  v11 = v65;
  if (v66 >= 0)
  {
    v11 = &v59;
  }

  v62 = v11;
  xpc::dict::object_proxy::operator=(&v61, &v49, &v50);
  xpc_release(v50);
  v50 = 0;
  if (SHIBYTE(v60) < 0)
  {
    operator delete(v59);
  }

  xpc_release(v49);
  v49 = 0;
  v47 = xpc_BOOL_create(0);
  if (!v47)
  {
    v47 = xpc_null_create();
  }

  v65 = 0uLL;
  v66 = 0;
  ctu::cf::assign();
  v59 = v65;
  v60 = v66;
  v61 = a2;
  v12 = v65;
  if (v66 >= 0)
  {
    v12 = &v59;
  }

  v62 = v12;
  xpc::dict::object_proxy::operator=(&v61, &v47, &v48);
  xpc_release(v48);
  v48 = 0;
  if (SHIBYTE(v60) < 0)
  {
    operator delete(v59);
  }

  xpc_release(v47);
  v47 = 0;
  v45 = xpc_BOOL_create(0);
  if (!v45)
  {
    v45 = xpc_null_create();
  }

  v65 = 0uLL;
  v66 = 0;
  ctu::cf::assign();
  v59 = v65;
  v60 = v66;
  v61 = a2;
  v13 = v65;
  if (v66 >= 0)
  {
    v13 = &v59;
  }

  v62 = v13;
  xpc::dict::object_proxy::operator=(&v61, &v45, &v46);
  xpc_release(v46);
  v46 = 0;
  if (SHIBYTE(v60) < 0)
  {
    operator delete(v59);
  }

  xpc_release(v45);
  v45 = 0;
  v16 = *a1;
  v14 = a1 + 1;
  v15 = v16;
  if (v16 != v14)
  {
    do
    {
      v17 = *(v15 + 7);
      if (v17 > 20)
      {
        if (v17 > 22)
        {
          if (v17 == 23)
          {
            v31 = xpc_BOOL_create(1);
            if (!v31)
            {
              v31 = xpc_null_create();
            }

            v65 = 0uLL;
            v66 = 0;
            ctu::cf::assign();
            v59 = v65;
            v60 = v66;
            v61 = a2;
            v25 = v65;
            if (v66 >= 0)
            {
              v25 = &v59;
            }

            v62 = v25;
            xpc::dict::object_proxy::operator=(&v61, &v31, &v32);
            xpc_release(v32);
            v32 = 0;
            if (SHIBYTE(v60) < 0)
            {
              operator delete(v59);
            }

            xpc_release(v31);
            v31 = 0;
          }

          else if (v17 == 24)
          {
            v29 = xpc_BOOL_create(1);
            if (!v29)
            {
              v29 = xpc_null_create();
            }

            v65 = 0uLL;
            v66 = 0;
            ctu::cf::assign();
            v59 = v65;
            v60 = v66;
            v61 = a2;
            v21 = v65;
            if (v66 >= 0)
            {
              v21 = &v59;
            }

            v62 = v21;
            xpc::dict::object_proxy::operator=(&v61, &v29, &v30);
            xpc_release(v30);
            v30 = 0;
            if (SHIBYTE(v60) < 0)
            {
              operator delete(v59);
            }

            xpc_release(v29);
            v29 = 0;
          }
        }

        else if (v17 == 21)
        {
          v35 = xpc_BOOL_create(1);
          if (!v35)
          {
            v35 = xpc_null_create();
          }

          v65 = 0uLL;
          v66 = 0;
          ctu::cf::assign();
          v59 = v65;
          v60 = v66;
          v61 = a2;
          v23 = v65;
          if (v66 >= 0)
          {
            v23 = &v59;
          }

          v62 = v23;
          xpc::dict::object_proxy::operator=(&v61, &v35, &v36);
          xpc_release(v36);
          v36 = 0;
          if (SHIBYTE(v60) < 0)
          {
            operator delete(v59);
          }

          xpc_release(v35);
          v35 = 0;
        }

        else
        {
          v33 = xpc_BOOL_create(1);
          if (!v33)
          {
            v33 = xpc_null_create();
          }

          v65 = 0uLL;
          v66 = 0;
          ctu::cf::assign();
          v59 = v65;
          v60 = v66;
          v61 = a2;
          v19 = v65;
          if (v66 >= 0)
          {
            v19 = &v59;
          }

          v62 = v19;
          xpc::dict::object_proxy::operator=(&v61, &v33, &v34);
          xpc_release(v34);
          v34 = 0;
          if (SHIBYTE(v60) < 0)
          {
            operator delete(v59);
          }

          xpc_release(v33);
          v33 = 0;
        }
      }

      else if (v17 > 17)
      {
        if (v17 == 18)
        {
          v39 = xpc_BOOL_create(1);
          if (!v39)
          {
            v39 = xpc_null_create();
          }

          v65 = 0uLL;
          v66 = 0;
          ctu::cf::assign();
          v59 = v65;
          v60 = v66;
          v61 = a2;
          v24 = v65;
          if (v66 >= 0)
          {
            v24 = &v59;
          }

          v62 = v24;
          xpc::dict::object_proxy::operator=(&v61, &v39, &v40);
          xpc_release(v40);
          v40 = 0;
          if (SHIBYTE(v60) < 0)
          {
            operator delete(v59);
          }

          xpc_release(v39);
          v39 = 0;
        }

        else if (v17 == 19)
        {
          v37 = xpc_BOOL_create(1);
          if (!v37)
          {
            v37 = xpc_null_create();
          }

          v65 = 0uLL;
          v66 = 0;
          ctu::cf::assign();
          v59 = v65;
          v60 = v66;
          v61 = a2;
          v20 = v65;
          if (v66 >= 0)
          {
            v20 = &v59;
          }

          v62 = v20;
          xpc::dict::object_proxy::operator=(&v61, &v37, &v38);
          xpc_release(v38);
          v38 = 0;
          if (SHIBYTE(v60) < 0)
          {
            operator delete(v59);
          }

          xpc_release(v37);
          v37 = 0;
        }
      }

      else if (v17 == 16)
      {
        v43 = xpc_BOOL_create(1);
        if (!v43)
        {
          v43 = xpc_null_create();
        }

        v65 = 0uLL;
        v66 = 0;
        ctu::cf::assign();
        v59 = v65;
        v60 = v66;
        v61 = a2;
        v22 = v65;
        if (v66 >= 0)
        {
          v22 = &v59;
        }

        v62 = v22;
        xpc::dict::object_proxy::operator=(&v61, &v43, &v44);
        xpc_release(v44);
        v44 = 0;
        if (SHIBYTE(v60) < 0)
        {
          operator delete(v59);
        }

        xpc_release(v43);
        v43 = 0;
      }

      else if (v17 == 17)
      {
        v41 = xpc_BOOL_create(1);
        if (!v41)
        {
          v41 = xpc_null_create();
        }

        v65 = 0uLL;
        v66 = 0;
        ctu::cf::assign();
        v59 = v65;
        v60 = v66;
        v61 = a2;
        v18 = v65;
        if (v66 >= 0)
        {
          v18 = &v59;
        }

        v62 = v18;
        xpc::dict::object_proxy::operator=(&v61, &v41, &v42);
        xpc_release(v42);
        v42 = 0;
        if (SHIBYTE(v60) < 0)
        {
          operator delete(v59);
        }

        xpc_release(v41);
        v41 = 0;
      }

      v26 = v15[1];
      if (v26)
      {
        do
        {
          v27 = v26;
          v26 = *v26;
        }

        while (v26);
      }

      else
      {
        do
        {
          v27 = v15[2];
          v28 = *v27 == v15;
          v15 = v27;
        }

        while (!v28);
      }

      v15 = v27;
    }

    while (v27 != v14);
  }
}

void sub_23744E360(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, uint64_t a10, xpc_object_t a11, uint64_t a12, xpc_object_t a13, uint64_t a14, xpc_object_t a15, uint64_t a16, xpc_object_t a17, uint64_t a18, xpc_object_t a19, uint64_t a20, xpc_object_t a21, uint64_t a22, xpc_object_t a23, uint64_t a24, xpc_object_t object, uint64_t a26, xpc_object_t a27, uint64_t a28, xpc_object_t a29, uint64_t a30, xpc_object_t a31, uint64_t a32, xpc_object_t a33, uint64_t a34, xpc_object_t a35)
{
  if (*(v36 - 97) < 0)
  {
    operator delete(*(v36 - 120));
  }

  xpc_release(object);
  xpc::dict::~dict(v35);
  _Unwind_Resume(a1);
}

void xpc::dict::~dict(xpc_object_t *this)
{
  xpc_release(*this);
  *this = 0;
}

{
  xpc_release(*this);
  *this = 0;
}

__CFString *kCTDataConnectionServiceTypeFromIndex(unsigned int a1)
{
  if (a1 <= 0x23)
  {
    return *(&kDataConnectionTypeMap + a1);
  }

  else
  {
    return @"Err";
  }
}

uint64_t kCTDataConnectionTypeFromString(CFStringRef theString1)
{
  if (!theString1)
  {
    return 36;
  }

  for (i = 0; i != 36; ++i)
  {
    if (CFStringCompare(theString1, *(&kDataConnectionTypeMap + i), 1uLL) == kCFCompareEqualTo)
    {
      break;
    }
  }

  return i;
}

uint64_t BasebandSettingsInterface::copySupportedAndActiveBands(uint64_t a1, uint64_t *a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v6[0] = &unk_284A6AB20;
  v6[1] = v3;
  v6[2] = v2;
  v6[3] = v6;
  (*(*a1 + 128))(a1, 1, v6);
  result = std::__function::__value_func<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>::~__value_func[abi:ne200100](v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23744E9D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__function::__func<BasebandSettingsInterface::copySupportedAndActiveBands(xpc::auto_reply)::$_0,std::allocator<BasebandSettingsInterface::copySupportedAndActiveBands(xpc::auto_reply)::$_0>,void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>::~__func(void *a1)
{
  *a1 = &unk_284A6AB20;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<BasebandSettingsInterface::copySupportedAndActiveBands(xpc::auto_reply)::$_0,std::allocator<BasebandSettingsInterface::copySupportedAndActiveBands(xpc::auto_reply)::$_0>,void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>::~__func(void *a1)
{
  *a1 = &unk_284A6AB20;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2383CBEF0);
}

uint64_t std::__function::__func<BasebandSettingsInterface::copySupportedAndActiveBands(xpc::auto_reply)::$_0,std::allocator<BasebandSettingsInterface::copySupportedAndActiveBands(xpc::auto_reply)::$_0>,void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_284A6AB20;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<BasebandSettingsInterface::copySupportedAndActiveBands(xpc::auto_reply)::$_0,std::allocator<BasebandSettingsInterface::copySupportedAndActiveBands(xpc::auto_reply)::$_0>,void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__function::__func<BasebandSettingsInterface::copySupportedAndActiveBands(xpc::auto_reply)::$_0,std::allocator<BasebandSettingsInterface::copySupportedAndActiveBands(xpc::auto_reply)::$_0>,void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

const void **std::__function::__func<BasebandSettingsInterface::copySupportedAndActiveBands(xpc::auto_reply)::$_0,std::allocator<BasebandSettingsInterface::copySupportedAndActiveBands(xpc::auto_reply)::$_0>,void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>::operator()(uint64_t a1, const void **a2)
{
  v5 = *a2;
  v3 = v5;
  *a2 = 0;
  ctu::cf_to_xpc(&object, v3, a2);
  v6[0] = *(a1 + 8);
  v6[1] = "kRegistrationBands";
  xpc::dict::object_proxy::operator=(v6, &object, &v8);
  xpc_release(v8);
  v8 = 0;
  xpc_release(object);
  return ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&v5);
}

void sub_23744EC14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<BasebandSettingsInterface::copySupportedAndActiveBands(xpc::auto_reply)::$_0,std::allocator<BasebandSettingsInterface::copySupportedAndActiveBands(xpc::auto_reply)::$_0>,void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>::~__value_func[abi:ne200100](uint64_t a1)
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

void CTWakingTimerInterface::createOneShotWakingTimer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, NSObject **a5, void **a6)
{
  *__p = *a2;
  v10 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v6 = *a5;
  *a5 = 0;
  aBlock = *a6;
  object = v6;
  *a6 = 0;
  (*(*a1 + 80))(a1, __p, a3, a4, 0, &object, &aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_23744EDB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *aBlock, dispatch_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CTWakingTimerInterface::createOneShotWakingTimer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20[4] = *MEMORY[0x277D85DE8];
  global_queue = dispatch_get_global_queue(0, 0);
  v11 = global_queue;
  if (global_queue)
  {
    dispatch_retain(global_queue);
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN22CTWakingTimerInterface24createOneShotWakingTimerENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEENS0_5tupleIJN3ctu8TimeTypeENS0_6chrono8durationIxNS0_5ratioILl1ELl1000000EEEEEEEENS0_8functionIFvvEEE_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_5;
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v20, a5);
  v12 = _Block_copy(aBlock);
  *__p = *a2;
  v18 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v15 = v12;
  object = v11;
  (*(*a1 + 80))(a1, __p, a3, a4, 0, &object, &v15);
  if (v15)
  {
    _Block_release(v15);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }

  result = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v20);
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23744EF6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *aBlock, dispatch_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN22CTWakingTimerInterface24createOneShotWakingTimerENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEENS0_5tupleIJN3ctu8TimeTypeENS0_6chrono8durationIxNS0_5ratioILl1ELl1000000EEEEEEEENS0_8functionIFvvEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

void CTWakingTimerInterface::createPeriodicWakingTimer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, NSObject **a5, void **a6)
{
  *__p = *a2;
  v10 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v6 = *a5;
  *a5 = 0;
  aBlock = *a6;
  object = v6;
  *a6 = 0;
  (*(*a1 + 88))(a1, __p, a3, a4, 0, &object, &aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_23744F0CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *aBlock, dispatch_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CTWakingTimerInterface::createPeriodicWakingTimer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20[4] = *MEMORY[0x277D85DE8];
  global_queue = dispatch_get_global_queue(0, 0);
  v11 = global_queue;
  if (global_queue)
  {
    dispatch_retain(global_queue);
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN22CTWakingTimerInterface25createPeriodicWakingTimerENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEENS0_5tupleIJN3ctu8TimeTypeENS0_6chrono8durationIxNS0_5ratioILl1ELl1000000EEEEEEEENS0_8functionIFvvEEE_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_3;
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v20, a5);
  v12 = _Block_copy(aBlock);
  *__p = *a2;
  v18 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v15 = v12;
  object = v11;
  (*(*a1 + 88))(a1, __p, a3, a4, 0, &object, &v15);
  if (v15)
  {
    _Block_release(v15);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }

  result = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v20);
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23744F288(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *aBlock, dispatch_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN22CTWakingTimerInterface25createPeriodicWakingTimerENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEENS0_5tupleIJN3ctu8TimeTypeENS0_6chrono8durationIxNS0_5ratioILl1ELl1000000EEEEEEEENS0_8functionIFvvEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

void sub_23744FD34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, xpc_object_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v20);
  xpc_release(a13);
  _Unwind_Resume(a1);
}

void sub_237450380(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, xpc_object_t a18, xpc_object_t a19, xpc_object_t a20, xpc_object_t a21, uint64_t a22, xpc_object_t a23, uint64_t a24, xpc_object_t a25)
{
  xpc_release(object);
  xpc_release(a23);
  xpc_release(v25);
  xpc_release(a18);
  xpc_release(a19);
  _Unwind_Resume(a1);
}

void sub_2374509D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object)
{
  xpc_release(v13);
  xpc_release(v12);
  xpc_release(object);
  _Unwind_Resume(a1);
}

void rest::read_rest_value(char **a1, xpc_object_t *a2)
{
  v3 = *a2;
  v52 = v3;
  v4 = MEMORY[0x277D86468];
  if (v3 && MEMORY[0x2383CC760](v3) == v4)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
    v52 = v3;
  }

  if (MEMORY[0x2383CC760](v3) == v4)
  {
    v50[0] = &v52;
    v50[1] = "carrier-identifiers";
    xpc::dict::object_proxy::operator xpc::object(v50, &v51);
    v8 = v51;
    v9 = MEMORY[0x277D86440];
    if (v51 && MEMORY[0x2383CC760](v51) == v9)
    {
      xpc_retain(v8);
    }

    else
    {
      v8 = xpc_null_create();
    }

    v11 = *a1;
    for (i = a1[1]; i != v11; std::allocator_traits<std::allocator<rest::CarrierIdentifier>>::destroy[abi:ne200100]<rest::CarrierIdentifier,void,0>(i))
    {
      i -= 144;
    }

    a1[1] = v11;
    if (MEMORY[0x2383CC760](v8) == v9)
    {
      v64 = v8;
      if (v8)
      {
        xpc_retain(v8);
      }

      else
      {
        v64 = xpc_null_create();
      }

      xpc::array::iterator::iterator(&v56, &v64, 0);
      xpc_release(v64);
      v64 = v8;
      if (v8)
      {
        xpc_retain(v8);
      }

      else
      {
        v64 = xpc_null_create();
      }

      if (MEMORY[0x2383CC760](v8) == v9)
      {
        count = xpc_array_get_count(v8);
      }

      else
      {
        count = 0;
      }

      xpc::array::iterator::iterator(v55, &v64, count);
      xpc_release(v64);
      for (j = v57; j != v55[1] || v56 != v55[0]; j = ++v57)
      {
        v54[0] = &v56;
        v54[1] = j;
        v15 = a1[1];
        v14 = a1[2];
        if (v15 >= v14)
        {
          v17 = *a1;
          v18 = v15 - *a1;
          v19 = 0x8E38E38E38E38E39 * (v18 >> 4) + 1;
          if (v19 > 0x1C71C71C71C71C7)
          {
            std::vector<DataConnectionType>::__throw_length_error[abi:ne200100]();
          }

          v20 = 0x8E38E38E38E38E39 * ((v14 - v17) >> 4);
          if (2 * v20 > v19)
          {
            v19 = 2 * v20;
          }

          if (v20 >= 0xE38E38E38E38E3)
          {
            v21 = 0x1C71C71C71C71C7;
          }

          else
          {
            v21 = v19;
          }

          if (v21)
          {
            if (v21 <= 0x1C71C71C71C71C7)
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v22 = (16 * (v18 >> 4));
          v22[7] = 0u;
          v22[8] = 0u;
          v22[5] = 0u;
          v22[6] = 0u;
          v22[3] = 0u;
          v22[4] = 0u;
          v22[1] = 0u;
          v22[2] = 0u;
          *v22 = 0u;
          v23 = v22 - v18;
          if (v17 != v15)
          {
            v24 = v17;
            v25 = v23;
            do
            {
              v26 = *v24;
              *(v25 + 2) = *(v24 + 2);
              *v25 = v26;
              *(v24 + 1) = 0;
              *(v24 + 2) = 0;
              *v24 = 0;
              v27 = *(v24 + 24);
              *(v25 + 5) = *(v24 + 5);
              *(v25 + 24) = v27;
              *(v24 + 4) = 0;
              *(v24 + 5) = 0;
              *(v24 + 3) = 0;
              v28 = *(v24 + 3);
              *(v25 + 8) = *(v24 + 8);
              *(v25 + 3) = v28;
              *(v24 + 7) = 0;
              *(v24 + 8) = 0;
              *(v24 + 6) = 0;
              v29 = *(v24 + 72);
              *(v25 + 11) = *(v24 + 11);
              *(v25 + 72) = v29;
              *(v24 + 9) = 0;
              *(v24 + 10) = 0;
              *(v24 + 11) = 0;
              v30 = *(v24 + 6);
              *(v25 + 14) = *(v24 + 14);
              *(v25 + 6) = v30;
              *(v24 + 12) = 0;
              *(v24 + 13) = 0;
              *(v24 + 14) = 0;
              v31 = *(v24 + 120);
              *(v25 + 17) = *(v24 + 17);
              *(v25 + 120) = v31;
              *(v24 + 15) = 0;
              *(v24 + 16) = 0;
              *(v24 + 17) = 0;
              v24 += 144;
              v25 += 144;
            }

            while (v24 != v15);
            do
            {
              std::allocator_traits<std::allocator<rest::CarrierIdentifier>>::destroy[abi:ne200100]<rest::CarrierIdentifier,void,0>(v17);
              v17 += 144;
            }

            while (v17 != v15);
            v17 = *a1;
          }

          v16 = (v22 + 9);
          *a1 = v23;
          a1[1] = v16;
          a1[2] = 0;
          if (v17)
          {
            operator delete(v17);
          }
        }

        else
        {
          *(v15 + 7) = 0u;
          *(v15 + 8) = 0u;
          *(v15 + 5) = 0u;
          *(v15 + 6) = 0u;
          *(v15 + 3) = 0u;
          *(v15 + 4) = 0u;
          *(v15 + 1) = 0u;
          *(v15 + 2) = 0u;
          v16 = v15 + 144;
          *v15 = 0u;
        }

        a1[1] = v16;
        xpc::array::object_proxy::operator xpc::object(v54, &v53);
        v32 = v53;
        v61 = v53;
        if (v53 && MEMORY[0x2383CC760](v53) == v4)
        {
          xpc_retain(v32);
        }

        else
        {
          v61 = xpc_null_create();
        }

        v33 = (v16 - 144);
        if (MEMORY[0x2383CC760]() == v4)
        {
          v58 = &v61;
          v59 = "iccid";
          xpc::dict::object_proxy::operator xpc::object(&v58, &object);
          v64 = 0;
          v65 = 0;
          v66 = 0;
          xpc::dyn_cast_or_default();
          if (SHIBYTE(v66) < 0)
          {
            operator delete(v64);
          }

          if (*(v16 - 121) < 0)
          {
            operator delete(*v33);
          }

          v39 = v62;
          *(v16 - 16) = v63;
          *v33 = v39;
          xpc_release(object);
          v58 = &v61;
          v59 = "mcc";
          xpc::dict::object_proxy::operator xpc::object(&v58, &object);
          v64 = 0;
          v65 = 0;
          v66 = 0;
          xpc::dyn_cast_or_default();
          if (SHIBYTE(v66) < 0)
          {
            operator delete(v64);
          }

          v40 = (v16 - 120);
          if (*(v16 - 97) < 0)
          {
            operator delete(*v40);
          }

          v41 = v62;
          *(v16 - 13) = v63;
          *v40 = v41;
          xpc_release(object);
          v58 = &v61;
          v59 = "mnc";
          xpc::dict::object_proxy::operator xpc::object(&v58, &object);
          v64 = 0;
          v65 = 0;
          v66 = 0;
          xpc::dyn_cast_or_default();
          if (SHIBYTE(v66) < 0)
          {
            operator delete(v64);
          }

          v42 = (v16 - 96);
          if (*(v16 - 73) < 0)
          {
            operator delete(*v42);
          }

          v43 = v62;
          *(v16 - 10) = v63;
          *v42 = v43;
          xpc_release(object);
          v58 = &v61;
          v59 = "gid1";
          xpc::dict::object_proxy::operator xpc::object(&v58, &object);
          v64 = 0;
          v65 = 0;
          v66 = 0;
          xpc::dyn_cast_or_default();
          if (SHIBYTE(v66) < 0)
          {
            operator delete(v64);
          }

          v44 = (v16 - 72);
          if (*(v16 - 49) < 0)
          {
            operator delete(*v44);
          }

          v45 = v62;
          *(v16 - 7) = v63;
          *v44 = v45;
          xpc_release(object);
          v58 = &v61;
          v59 = "gid2";
          xpc::dict::object_proxy::operator xpc::object(&v58, &object);
          v64 = 0;
          v65 = 0;
          v66 = 0;
          xpc::dyn_cast_or_default();
          if (SHIBYTE(v66) < 0)
          {
            operator delete(v64);
          }

          v46 = (v16 - 48);
          if (*(v16 - 25) < 0)
          {
            operator delete(*v46);
          }

          v47 = v62;
          *(v16 - 4) = v63;
          *v46 = v47;
          xpc_release(object);
          v58 = &v61;
          v59 = "imsi";
          xpc::dict::object_proxy::operator xpc::object(&v58, &object);
          v64 = 0;
          v65 = 0;
          v66 = 0;
          xpc::dyn_cast_or_default();
          if (SHIBYTE(v66) < 0)
          {
            operator delete(v64);
          }

          v48 = (v16 - 24);
          if (*(v16 - 1) < 0)
          {
            operator delete(*v48);
          }

          v49 = v62;
          *(v16 - 1) = v63;
          *v48 = v49;
          xpc_release(object);
        }

        else
        {
          if (*(v16 - 121) < 0)
          {
            operator delete(*v33);
          }

          v34 = (v16 - 120);
          *v33 = 0;
          *(v16 - 17) = 0;
          *(v16 - 16) = 0;
          if (*(v16 - 97) < 0)
          {
            operator delete(*v34);
          }

          v35 = (v16 - 96);
          *v34 = 0;
          *(v16 - 14) = 0;
          *(v16 - 13) = 0;
          if (*(v16 - 73) < 0)
          {
            operator delete(*v35);
          }

          v36 = (v16 - 72);
          *v35 = 0;
          *(v16 - 11) = 0;
          *(v16 - 10) = 0;
          if (*(v16 - 49) < 0)
          {
            operator delete(*v36);
          }

          v37 = (v16 - 48);
          *v36 = 0;
          *(v16 - 8) = 0;
          *(v16 - 7) = 0;
          if (*(v16 - 25) < 0)
          {
            operator delete(*v37);
          }

          v38 = (v16 - 24);
          *v37 = 0;
          *(v16 - 5) = 0;
          *(v16 - 4) = 0;
          if (*(v16 - 1) < 0)
          {
            operator delete(*v38);
          }

          *v38 = 0;
          *(v16 - 2) = 0;
          *(v16 - 1) = 0;
        }

        xpc_release(v61);
        xpc_release(v53);
      }

      xpc_release(v55[0]);
      xpc_release(v56);
    }

    xpc_release(v8);
    xpc_release(v51);
    v3 = v52;
  }

  else
  {
    v5 = *a1;
    if (*a1)
    {
      v6 = a1[1];
      v7 = *a1;
      if (v6 != v5)
      {
        do
        {
          v6 -= 144;
          std::allocator_traits<std::allocator<rest::CarrierIdentifier>>::destroy[abi:ne200100]<rest::CarrierIdentifier,void,0>(v6);
        }

        while (v6 != v5);
        v7 = *a1;
      }

      a1[1] = v5;
      operator delete(v7);
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  xpc_release(v3);
}

void sub_237451244(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, uint64_t a11, uint64_t a12, xpc_object_t a13, xpc_object_t a14, xpc_object_t a15, uint64_t a16, uint64_t a17, xpc_object_t a18, uint64_t a19, xpc_object_t object, uint64_t a21, uint64_t a22, uint64_t a23, xpc_object_t a24, xpc_object_t a25)
{
  xpc_release(*(v25 - 112));
  *(v25 - 112) = 0;
  xpc_release(object);
  xpc_release(a10);
  xpc_release(a13);
  xpc_release(a14);
  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::__map_value_compare<subscriber::AuthInfo,std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::less<subscriber::AuthInfo>,true>,std::allocator<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::__map_value_compare<subscriber::AuthInfo,std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::less<subscriber::AuthInfo>,true>,std::allocator<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::__map_value_compare<subscriber::AuthInfo,std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::less<subscriber::AuthInfo>,true>,std::allocator<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>>>::destroy(a1, a2[1]);
    v4 = a2[5];
    if (v4)
    {
      a2[6] = v4;
      operator delete(v4);
    }

    operator delete(a2);
  }
}

void std::allocator_traits<std::allocator<rest::CarrierIdentifier>>::destroy[abi:ne200100]<rest::CarrierIdentifier,void,0>(uint64_t a1)
{
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void DaemonFactory::DaemonFactory(DaemonFactory *this)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_284A6ADE0;
}

void DaemonFactory::~DaemonFactory(DaemonFactory *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void AutoStartTimer::create(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_2374518A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, void *aBlock, dispatch_object_t object, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  std::__shared_weak_count::__release_weak(v24);
  std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  _Unwind_Resume(a1);
}

void *AutoStartTimer::AutoStartTimer(void *result, void *a2, void *a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  result[3] = *a2;
  result[4] = *a3;
  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  result[3] = *a2;
  result[4] = *a3;
  return result;
}

void ctu::TimerService::createOneShotTimer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, NSObject **a5, void **a6)
{
  v10 = *(a2 + 16);
  *__p = *a2;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v6 = *a5;
  *a5 = 0;
  aBlock = *a6;
  object = v6;
  *a6 = 0;
  (*(*a1 + 16))(a1, __p, a3, a4, 0, &object, &aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_237451A10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *aBlock, dispatch_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN14AutoStartTimer6createERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERKN8dispatch5queueERKNS0_10shared_ptrIN3ctu12TimerServiceEEERKNS0_6chrono8durationIxNS0_5ratioILl1ELl1000EEEEEONS0_8functionIFvvEEE_block_invoke(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = a1[4];
      if (v5)
      {
        (*(**(v5 + 16) + 16))(*(v5 + 16));
        v6 = *(a1[6] + 24);
        if (!v6)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        (*(*v6 + 48))(v6);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void *__copy_helper_block_e8_32c39_ZTSNSt3__18weak_ptrI14AutoStartTimerEE48c45_ZTSNSt3__110shared_ptrINS_8functionIFvvEEEEE(void *result, void *a2)
{
  v2 = a2[5];
  result[4] = a2[4];
  result[5] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v3 = a2[7];
  result[6] = a2[6];
  result[7] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c39_ZTSNSt3__18weak_ptrI14AutoStartTimerEE48c45_ZTSNSt3__110shared_ptrINS_8functionIFvvEEEEE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void AutoStartTimer::~AutoStartTimer(AutoStartTimer *this)
{
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }
}

AutoStartTimer **std::unique_ptr<AutoStartTimer>::~unique_ptr[abi:ne200100](AutoStartTimer **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    AutoStartTimer::~AutoStartTimer(v2);
    MEMORY[0x2383CBEF0]();
  }

  return a1;
}

void std::__shared_ptr_pointer<AutoStartTimer *,std::shared_ptr<AutoStartTimer>::__shared_ptr_default_delete<AutoStartTimer,AutoStartTimer>,std::allocator<AutoStartTimer>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383CBEF0);
}

AutoStartTimer *std::__shared_ptr_pointer<AutoStartTimer *,std::shared_ptr<AutoStartTimer>::__shared_ptr_default_delete<AutoStartTimer,AutoStartTimer>,std::allocator<AutoStartTimer>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    AutoStartTimer::~AutoStartTimer(result);

    JUMPOUT(0x2383CBEF0);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<AutoStartTimer *,std::shared_ptr<AutoStartTimer>::__shared_ptr_default_delete<AutoStartTimer,AutoStartTimer>,std::allocator<AutoStartTimer>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<std::function<void ()(void)>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284A6AF28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383CBEF0);
}

void rest::read_rest_value(rest *this, rest::PairedDeviceInfoList *a2, const object *a3)
{
  v4 = *a2;
  v5 = MEMORY[0x277D86440];
  if (*a2 && MEMORY[0x2383CC760](*a2) == v5)
  {
    xpc_retain(v4);
  }

  else
  {
    v4 = xpc_null_create();
  }

  v7 = *this;
    ;
  }

  *(this + 1) = v7;
  if (MEMORY[0x2383CC760](v4) == v5)
  {
    object[0] = v4;
    if (v4)
    {
      xpc_retain(v4);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    xpc::array::iterator::iterator(&v35, object, 0);
    xpc_release(object[0]);
    v33[0] = v4;
    if (v4)
    {
      xpc_retain(v4);
    }

    else
    {
      v33[0] = xpc_null_create();
    }

    if (MEMORY[0x2383CC760](v4) == v5)
    {
      count = xpc_array_get_count(v4);
    }

    else
    {
      count = 0;
    }

    xpc::array::iterator::iterator(object, v33, count);
    xpc_release(v33[0]);
    for (j = v36; j != object[1] || v35 != object[0]; j = ++v36)
    {
      v33[0] = &v35;
      v33[1] = j;
      v11 = *(this + 1);
      v10 = *(this + 2);
      if (v11 >= v10)
      {
        v13 = *this;
        v14 = v11 - *this;
        v15 = 0x84BDA12F684BDA13 * (v14 >> 3) + 1;
        if (v15 > 0x12F684BDA12F684)
        {
          std::vector<DataConnectionType>::__throw_length_error[abi:ne200100]();
        }

        v16 = 0x84BDA12F684BDA13 * ((v10 - v13) >> 3);
        if (2 * v16 > v15)
        {
          v15 = 2 * v16;
        }

        if (v16 >= 0x97B425ED097B42)
        {
          v17 = 0x12F684BDA12F684;
        }

        else
        {
          v17 = v15;
        }

        if (v17)
        {
          if (v17 <= 0x12F684BDA12F684)
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v18 = 8 * (v14 >> 3);
        *(v18 + 208) = 0;
        *(v18 + 176) = 0u;
        *(v18 + 192) = 0u;
        *(v18 + 144) = 0u;
        *(v18 + 160) = 0u;
        *(v18 + 112) = 0u;
        *(v18 + 128) = 0u;
        *(v18 + 80) = 0u;
        *(v18 + 96) = 0u;
        *(v18 + 48) = 0u;
        *(v18 + 64) = 0u;
        *(v18 + 16) = 0u;
        *(v18 + 32) = 0u;
        v19 = v18 - v14;
        *v18 = 0u;
        if (v13 != v11)
        {
          v20 = v13;
          v21 = v19;
          do
          {
            *v21 = *v20;
            v22 = *(v20 + 1);
            *(v21 + 24) = v20[3];
            *(v21 + 8) = v22;
            v20[2] = 0;
            v20[3] = 0;
            v20[1] = 0;
            v23 = *(v20 + 2);
            *(v21 + 48) = v20[6];
            *(v21 + 32) = v23;
            v20[5] = 0;
            v20[6] = 0;
            v20[4] = 0;
            v24 = *(v20 + 7);
            *(v21 + 72) = v20[9];
            *(v21 + 56) = v24;
            v20[8] = 0;
            v20[9] = 0;
            v20[7] = 0;
            v25 = *(v20 + 5);
            *(v21 + 96) = v20[12];
            *(v21 + 80) = v25;
            v20[10] = 0;
            v20[11] = 0;
            v20[12] = 0;
            v26 = *(v20 + 13);
            *(v21 + 120) = v20[15];
            *(v21 + 104) = v26;
            v20[13] = 0;
            v20[14] = 0;
            v20[15] = 0;
            v27 = *(v20 + 8);
            *(v21 + 144) = v20[18];
            *(v21 + 128) = v27;
            v20[16] = 0;
            v20[17] = 0;
            v20[18] = 0;
            v28 = *(v20 + 19);
            *(v21 + 168) = v20[21];
            *(v21 + 152) = v28;
            v20[19] = 0;
            v20[20] = 0;
            v20[21] = 0;
            *(v21 + 176) = *(v20 + 88);
            v29 = *(v20 + 23);
            *(v21 + 200) = v20[25];
            *(v21 + 184) = v29;
            v20[24] = 0;
            v20[25] = 0;
            v20[23] = 0;
            *(v21 + 208) = *(v20 + 208);
            v20 += 27;
            v21 += 216;
          }

          while (v20 != v11);
          do
          {
            rest::NanoRegistryDeviceInfo::~NanoRegistryDeviceInfo(v13);
            v13 = (v30 + 216);
          }

          while (v13 != v11);
          v13 = *this;
        }

        v12 = v18 + 216;
        *this = v19;
        *(this + 1) = v12;
        *(this + 2) = 0;
        if (v13)
        {
          operator delete(v13);
        }
      }

      else
      {
        *(v11 + 208) = 0;
        *(v11 + 176) = 0u;
        *(v11 + 192) = 0u;
        *(v11 + 144) = 0u;
        *(v11 + 160) = 0u;
        *(v11 + 112) = 0u;
        *(v11 + 128) = 0u;
        *(v11 + 80) = 0u;
        *(v11 + 96) = 0u;
        *(v11 + 48) = 0u;
        *(v11 + 64) = 0u;
        *(v11 + 16) = 0u;
        *(v11 + 32) = 0u;
        *v11 = 0u;
        v12 = v11 + 216;
      }

      *(this + 1) = v12;
      xpc::array::object_proxy::operator xpc::object(v33, &v32);
      rest::read_rest_value((v12 - 216), &v32, v31);
      xpc_release(v32);
    }

    xpc_release(object[0]);
    xpc_release(v35);
  }

  xpc_release(v4);
}

void sub_2374533E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, xpc_object_t a10, xpc_object_t object, uint64_t a12, xpc_object_t a13, uint64_t a14, xpc_object_t a15)
{
  xpc_release(object);
  xpc_release(a15);
  xpc_release(a9);
  _Unwind_Resume(a1);
}

double rest::PairedDeviceInfoList::getActiveDevice@<D0>(rest::PairedDeviceInfoList *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *this;
  v3 = *(this + 1);
  if (*this != v3)
  {
    v4 = *this;
    do
    {
      if (*(v4 + 177) == 2)
      {
        if (v4 == v3)
        {
          break;
        }

        v5 = a2;
        v2 = v4;
        goto LABEL_8;
      }

      v4 += 216;
    }

    while (v4 != v3);
    while (*(v2 + 177) != 1)
    {
      v2 += 216;
      if (v2 == v3)
      {
        goto LABEL_13;
      }
    }
  }

  if (v2 == v3)
  {
LABEL_13:
    *a2 = 0;
    result = 0.0;
    *(a2 + 8) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 72) = 0u;
    *(a2 + 88) = 0u;
    *(a2 + 104) = 0u;
    *(a2 + 120) = 0u;
    *(a2 + 136) = 0u;
    *(a2 + 152) = 0u;
    *(a2 + 162) = 0u;
    *(a2 + 192) = 0;
    *(a2 + 200) = 0;
    *(a2 + 184) = 0;
    *(a2 + 208) = 0;
  }

  else
  {
    v5 = a2;
LABEL_8:
    rest::NanoRegistryDeviceInfo::NanoRegistryDeviceInfo(v5, v2);
  }

  return result;
}

BOOL rest::PairedDeviceInfoList::isAnyDeviceInState(void *a1, int a2)
{
  v2 = a1[1];
  if (*a1 == v2)
  {
    return 0;
  }

  v3 = *a1 + 216;
  do
  {
    v4 = *(v3 - 39);
    result = v4 == a2;
    v6 = v4 == a2 || v3 == v2;
    v3 += 216;
  }

  while (!v6);
  return result;
}

void rest::PairedDeviceInfoList::getDeviceNameForCsn(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = 0u;
  memset(v4, 0, sizeof(v4));
  rest::PairedDeviceInfoList::getDeviceForCsn(a1, a2, v4);
  if (BYTE8(v5) != 1)
  {
    *(a3 + 23) = 0;
    *a3 = 0;
    return;
  }

  if (SHIBYTE(v4[7]) < 0)
  {
    std::string::__init_copy_ctor_external(a3, *(&v4[6] + 1), *&v4[7]);
    if ((BYTE8(v5) & 1) == 0)
    {
      return;
    }
  }

  else
  {
    *a3 = *(&v4[6] + 8);
    *(a3 + 16) = *(&v4[7] + 1);
  }

  rest::NanoRegistryDeviceInfo::~NanoRegistryDeviceInfo(v4);
}

void sub_2374535F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  if (a36 == 1)
  {
    rest::NanoRegistryDeviceInfo::~NanoRegistryDeviceInfo(&a9);
  }

  _Unwind_Resume(exception_object);
}

void rest::PairedDeviceInfoList::getDeviceForCsn(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v7 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if (v6 == v5)
  {
    v5 = v6;
LABEL_22:
    if (v7 < 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v10 = v6 + 32;
    while (1)
    {
      v11 = *(v10 + 23);
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(v10 + 8);
      }

      if (v11 == size)
      {
        v13 = v12 >= 0 ? v10 : *v10;
        if (!memcmp(v13, p_p, size))
        {
          break;
        }
      }

      v14 = v10 + 184;
      v10 += 216;
      if (v14 == v5)
      {
        goto LABEL_22;
      }
    }

    v5 = v10 - 32;
    if (v7 < 0)
    {
LABEL_23:
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (v5 == a1[1])
  {
    v15 = 0;
    *a3 = 0;
  }

  else
  {
    rest::NanoRegistryDeviceInfo::NanoRegistryDeviceInfo(a3, v5);
    v15 = 1;
  }

  a3[216] = v15;
}

uint64_t rest::PairedDeviceInfoList::hasDeviceWithIdentifier(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v4 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if (v2 == v3)
  {
LABEL_19:
    v10 = 0;
    if (v4 < 0)
    {
LABEL_20:
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    while (1)
    {
      v7 = *(v2 + 31);
      v8 = v7;
      if ((v7 & 0x80u) != 0)
      {
        v7 = *(v2 + 16);
      }

      if (v7 == size)
      {
        v9 = v8 >= 0 ? (v2 + 8) : *(v2 + 8);
        if (!memcmp(v9, p_p, size))
        {
          break;
        }
      }

      v2 += 216;
      if (v2 == v3)
      {
        goto LABEL_19;
      }
    }

    v10 = 1;
    if (v4 < 0)
    {
      goto LABEL_20;
    }
  }

  return v10;
}

uint64_t rest::NanoRegistryDeviceInfo::NanoRegistryDeviceInfo(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 8), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
  }

  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v5 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v5;
  }

  if (*(a2 + 79) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 56), *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v6 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v6;
  }

  if (*(a2 + 103) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 80), *(a2 + 80), *(a2 + 88));
  }

  else
  {
    v7 = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 80) = v7;
  }

  if (*(a2 + 127) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 104), *(a2 + 104), *(a2 + 112));
  }

  else
  {
    v8 = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 104) = v8;
  }

  if (*(a2 + 151) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 128), *(a2 + 128), *(a2 + 136));
  }

  else
  {
    v9 = *(a2 + 128);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 128) = v9;
  }

  if (*(a2 + 175) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 152), *(a2 + 152), *(a2 + 160));
  }

  else
  {
    v10 = *(a2 + 152);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 152) = v10;
  }

  *(a1 + 176) = *(a2 + 176);
  if (*(a2 + 207) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 184), *(a2 + 184), *(a2 + 192));
  }

  else
  {
    v11 = *(a2 + 184);
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 184) = v11;
  }

  *(a1 + 208) = *(a2 + 208);
  return a1;
}

void sub_2374539BC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 175) < 0)
  {
    operator delete(*(v1 + 152));
  }

  if (*(v1 + 151) < 0)
  {
    operator delete(*(v1 + 128));
  }

  if (*(v1 + 127) < 0)
  {
    operator delete(*(v1 + 104));
  }

  if (*(v1 + 103) < 0)
  {
    operator delete(*(v1 + 80));
  }

  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void rest::NanoRegistryDeviceInfo::~NanoRegistryDeviceInfo(void **this)
{
  if (*(this + 207) < 0)
  {
    operator delete(this[23]);
  }

  if (*(this + 175) < 0)
  {
    operator delete(this[19]);
  }

  if (*(this + 151) < 0)
  {
    operator delete(this[16]);
  }

  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  if (*(this + 103) < 0)
  {
    operator delete(this[10]);
  }

  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

void NetworkListOperator::NetworkListOperator(NetworkListOperator *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 6) = 11;
  *(this + 16) = -1;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 5) = 0;
  *(this + 32) = -1;
  *(this + 16) = 0;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 30) = 0;
}

{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 6) = 11;
  *(this + 16) = -1;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 5) = 0;
  *(this + 32) = -1;
  *(this + 16) = 0;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 30) = 0;
}

void NetworkListOperator::NetworkListOperator(std::string *this, __int128 *a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v11 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v11;
  }

  LODWORD(this[1].__r_.__value_.__l.__data_) = a3;
  LOWORD(this[1].__r_.__value_.__r.__words[1]) = *a4;
  if (*(a4 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((this + 40), *(a4 + 8), *(a4 + 16));
  }

  else
  {
    v12 = *(a4 + 8);
    this[2].__r_.__value_.__l.__size_ = *(a4 + 24);
    *&this[1].__r_.__value_.__r.__words[2] = v12;
  }

  LOWORD(this[2].__r_.__value_.__r.__words[2]) = *a5;
  if (*(a5 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(this + 3, *(a5 + 8), *(a5 + 16));
  }

  else
  {
    v13 = *(a5 + 8);
    this[3].__r_.__value_.__r.__words[2] = *(a5 + 24);
    *&this[3].__r_.__value_.__l.__data_ = v13;
  }

  this[4].__r_.__value_.__r.__words[0] = 0;
  this[4].__r_.__value_.__l.__size_ = 0;
  this[4].__r_.__value_.__r.__words[2] = 0;
  LODWORD(this[5].__r_.__value_.__l.__data_) = a6;
  this[5].__r_.__value_.__l.__size_ = 0;
}

void sub_237453C70(_Unwind_Exception *exception_object)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t NetworkListOperator::decodeKey(const std::string *a1, std::string *a2)
{
  memset(v6, 0, sizeof(v6));
  ctu::tokenize();
  std::string::operator=(a2 + 4, a1);
  v5 = v6;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v5);
  return 0;
}

void sub_237453E5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  a9 = &a16;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void NetworkListOperator::getKey(uint64_t a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v9 = *(a1 + 8);
  }

  std::string::push_back(&v9, 45);
  v10 = v9;
  memset(&v9, 0, sizeof(v9));
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    __p = *(a2 + 8);
  }

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

  v7 = std::string::append(&v10, p_p, size);
  *a3 = *v7;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

void sub_237453FAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 - 25) < 0)
  {
    operator delete(*(v21 - 48));
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void NetworkListOperator::getKey(NetworkListOperator *this@<X0>, std::string *a2@<X8>)
{
  v8 = *(this + 16);
  if (*(this + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, *(this + 5), *(this + 6));
  }

  else
  {
    v9 = *(this + 40);
  }

  v6 = *(this + 32);
  if (*(this + 95) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(this + 9), *(this + 10));
  }

  else
  {
    __p = *(this + 3);
  }

  memset(&v10, 0, sizeof(v10));
  NetworkListOperator::getKey(&v8, &v6, &v10);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  v4 = SHIBYTE(v10.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v10.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) == 1)
    {
      v5 = &v10;
      goto LABEL_16;
    }

LABEL_19:
    *a2 = v10;
    return;
  }

  if (v10.__r_.__value_.__l.__size_ != 1)
  {
    goto LABEL_19;
  }

  v5 = v10.__r_.__value_.__r.__words[0];
LABEL_16:
  if (v5->__r_.__value_.__s.__data_[0] != 45)
  {
    goto LABEL_19;
  }

  if (*(this + 119) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 12), *(this + 13));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 6);
    a2->__r_.__value_.__r.__words[2] = *(this + 14);
  }

  if (v4 < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }
}

void sub_237454148(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (v23 < 0)
  {
    operator delete(*(v24 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t NetworkListOperator::getCompositeName@<X0>(NetworkListOperator *this@<X0>, _BYTE *a2@<X8>)
{
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  v16 = 0u;
  v17 = 0u;
  *v15 = 0u;
  memset(v14, 0, sizeof(v14));
  v13 = 0u;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v13);
  v4 = *(this + 23);
  if (v4 < 0)
  {
    if (*(this + 1))
    {
LABEL_3:
      if (v4 >= 0)
      {
        v5 = this;
      }

      else
      {
        v5 = *this;
      }

      if (v4 >= 0)
      {
        v6 = *(this + 23);
      }

      else
      {
        v6 = *(this + 1);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, v5, v6);
      v7 = *(this + 16);
      if (v7)
      {
        v8 = strlen(v7);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, v7, v8);
      }

      goto LABEL_20;
    }
  }

  else if (*(this + 23))
  {
    goto LABEL_3;
  }

  NetworkListOperator::getKey(this, &__p);
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

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_20:
  std::ostringstream::str[abi:ne200100](&v13, a2);
  *&v13 = *MEMORY[0x277D82828];
  *(&v14[-1] + *(v13 - 24)) = *(MEMORY[0x277D82828] + 24);
  *(&v13 + 1) = MEMORY[0x277D82878] + 16;
  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[1]);
  }

  *(&v13 + 1) = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v14);
  std::ostream::~ostream();
  return MEMORY[0x2383CBE70](v18);
}

void sub_237454390(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a16);
  _Unwind_Resume(a1);
}

void NetworkListOperator::getLocalizedCompositeName(NetworkListOperator *this@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  if (!*a2)
  {

    NetworkListOperator::getCompositeName(this, a4);
    return;
  }

  Registry::throwIfNotInitialized(*a2);
  v8 = *(v6 + 24);
  v9 = off_284A710A8;
  if ((off_284A710A8 & 0x8000000000000000) != 0)
  {
    v10 = (off_284A710A8 & 0x7FFFFFFFFFFFFFFFLL);
    v11 = 5381;
    do
    {
      v9 = v11;
      v12 = *v10++;
      v11 = (33 * v11) ^ v12;
    }

    while (v12);
  }

  std::mutex::lock(v8 + 3);
  v24[0] = v9;
  v13 = std::__hash_table<std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::shared_ptr<void>>>>::find<unsigned long>(&v8[4].__m_.__sig, v24);
  if (v13)
  {
    v15 = v13[3];
    v14 = v13[4];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v8 + 3);
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      v16 = 0;
      if (!v15)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v15 = 0;
  }

  std::mutex::unlock(v8 + 3);
  v14 = 0;
  v16 = 1;
  if (!v15)
  {
LABEL_8:
    NetworkListOperator::getCompositeName(this, a4);
    if (v16)
    {
      return;
    }

    goto LABEL_9;
  }

LABEL_16:
  theDict = 0;
  (*(*v15 + 80))(v24, v15, a3, 5, @"InterCarrierRoamingDisplayNames", 0, 0);
  ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef<void const,void>(&theDict, v24);
  ctu::SharedRef<void const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,void const>::~SharedRef(v24);
  if (!theDict)
  {
    NetworkListOperator::getCompositeName(this, a4);
    goto LABEL_41;
  }

  MCCAndMNC::MCCAndMNC(v24, this + 32, this + 64);
  MCCAndMNC::getStringValue(v24, &v29);
  v17 = SHIBYTE(v29.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v33, v29.__r_.__value_.__l.__data_, v29.__r_.__value_.__l.__size_);
  }

  else
  {
    v33 = v29;
  }

  v32 = 0;
  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v34, v33.__r_.__value_.__l.__data_, v33.__r_.__value_.__l.__size_);
  }

  else
  {
    v34 = v33;
  }

  v35 = 0;
  v18 = *MEMORY[0x277CBECE8];
  if (ctu::cf::convert_copy())
  {
    v19 = v32;
    v32 = v35;
    v36 = v19;
    ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v36);
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  v20 = v32;
  v30 = v32;
  v32 = 0;
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v32);
  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
    if ((v17 & 0x80000000) == 0)
    {
      goto LABEL_30;
    }
  }

  else if ((v17 & 0x80000000) == 0)
  {
    goto LABEL_30;
  }

  operator delete(v29.__r_.__value_.__l.__data_);
LABEL_30:
  if (v28 < 0)
  {
    operator delete(__p);
  }

  if (v26 < 0)
  {
    operator delete(v24[1]);
  }

  v34.__r_.__value_.__r.__words[0] = 0;
  Value = CFDictionaryGetValue(theDict, v20);
  v22 = Value;
  if (!Value || (v23 = CFGetTypeID(Value), v23 != CFStringGetTypeID()))
  {
    v34.__r_.__value_.__r.__words[0] = 0;
    goto LABEL_39;
  }

  v34.__r_.__value_.__r.__words[0] = v22;
  CFRetain(v22);
  if (!v34.__r_.__value_.__r.__words[0])
  {
LABEL_39:
    NetworkListOperator::getCompositeName(this, a4);
    goto LABEL_40;
  }

  v24[0] = 0;
  v24[1] = 0;
  v25 = 0;
  ctu::cf::assign();
  *a4 = *v24;
  *(a4 + 16) = v25;
LABEL_40:
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v34.__r_.__value_.__l.__data_);
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v30);
LABEL_41:
  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&theDict);
  if ((v16 & 1) == 0)
  {
LABEL_9:
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }
}