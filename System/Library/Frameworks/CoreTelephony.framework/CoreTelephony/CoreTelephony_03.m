uint64_t _CTServerConnectionSelectPhonebook(void *a1, unsigned int a2, uint64_t a3)
{
  if (!a1)
  {
    return 0x1600000001;
  }

  xpc::dict_creator::dict_creator(&object);
  xpc::dict_creator::operator()<char const*>("kPhoneBookSelect", &object, "kRequest", &v15);
  xpc_release(object);
  v6 = v15;
  object = v15;
  v15 = xpc_null_create();
  xpc_release(v15);
  if (!a3)
  {
    v7 = xpc_string_create("");
    if (v7)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v7 = _CFXPCCreateXPCObjectFromCFObject();
  if (!v7)
  {
LABEL_4:
    v7 = xpc_null_create();
  }

LABEL_5:
  v8 = v7;
  xpc_dictionary_set_value(v6, "kPhoneBookPassword", v7);
  v9 = xpc_null_create();
  xpc_release(v8);
  xpc_release(v9);
  v10 = xpc_int64_create(a2);
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  xpc_dictionary_set_value(v6, "kPhoneBookName", v10);
  v11 = xpc_null_create();
  xpc_release(v10);
  xpc_release(v11);
  v13 = SendXpcMessage(a1, &object, 0, v12);
  xpc_release(object);
  return v13;
}

uint64_t _CTServerConnectionSavePhonebookEntry(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 0x1600000001;
  }

  xpc::dict_creator::dict_creator(&object);
  xpc::dict_creator::operator()<char const*>("kPhoneBookSaveContact", &object, "kRequest", &v20);
  xpc_release(object);
  v8 = v20;
  object = v20;
  v20 = xpc_null_create();
  xpc_release(v20);
  v9 = xpc_int64_create(a2);
  if (!v9)
  {
    v9 = xpc_null_create();
  }

  xpc_dictionary_set_value(v8, "kPhoneBookEntryIndex", v9);
  v10 = xpc_null_create();
  xpc_release(v9);
  xpc_release(v10);
  if (a3)
  {
    v11 = _CFXPCCreateXPCObjectFromCFObject();
    if (v11)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v11 = xpc_string_create("");
  if (!v11)
  {
LABEL_6:
    v11 = xpc_null_create();
  }

LABEL_7:
  v12 = v11;
  xpc_dictionary_set_value(v8, "kPhoneBookContactName", v11);
  v13 = xpc_null_create();
  xpc_release(v12);
  xpc_release(v13);
  if (!a4)
  {
    v14 = xpc_string_create("");
    if (v14)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v14 = _CFXPCCreateXPCObjectFromCFObject();
  if (!v14)
  {
LABEL_9:
    v14 = xpc_null_create();
  }

LABEL_10:
  v15 = v14;
  xpc_dictionary_set_value(v8, "kPhoneBookContactNumber", v14);
  v16 = xpc_null_create();
  xpc_release(v15);
  xpc_release(v16);
  v18 = SendXpcMessage(a1, &object, 0, v17);
  xpc_release(object);
  return v18;
}

uint64_t _CTServerConnectionFetchPhonebook(void *a1)
{
  if (!a1)
  {
    return 0x1600000001;
  }

  xpc::dict_creator::dict_creator(&object);
  xpc::dict_creator::operator()<char const*>("kPhoneBookFetch", &object, "kRequest", &v5);
  xpc_release(object);
  object = v5;
  v5 = xpc_null_create();
  xpc_release(v5);
  v3 = SendXpcMessage(a1, &object, 0, v2);
  xpc_release(object);
  return v3;
}

uint64_t _CTServerConnectionCopyPhoneBookEntry(uint64_t a1, _BYTE *a2, int a3, void *a4)
{
  v4 = 0x1600000001;
  if (a1 && a2 && a4)
  {
    xpc::dict_creator::dict_creator(&object);
    xpc::dict_creator::operator()<char const*>("kPhoneBookGetEntry", &object, "kRequest", &xdict);
    xpc_release(object);
    v9 = xdict;
    object = xdict;
    xdict = xpc_null_create();
    xpc_release(xdict);
    v10 = xpc_int64_create(a3);
    if (!v10)
    {
      v10 = xpc_null_create();
    }

    xpc_dictionary_set_value(v9, "kPhoneBookEntryIndex", v10);
    v11 = xpc_null_create();
    xpc_release(v10);
    xpc_release(v11);
    xdict = xpc_null_create();
    v4 = SendXpcMessage(a1, &object, &xdict);
    *a2 = 0;
    *a4 = 0;
    if (MEMORY[0x1865E16C0](xdict) == MEMORY[0x1E69E9E80] && xpc_dictionary_get_count(xdict))
    {
      v14 = 0;
      v13 = _CFXPCCreateCFObjectFromXPCObject();
      ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef<void const,void>(&v14, &v13);
      *a4 = v14;
      *a2 = 1;
    }

    xpc_release(xdict);
    xpc_release(object);
  }

  return v4;
}

uint64_t _CTServerConnectionGetPhonebookEntryCount(uint64_t a1, _DWORD *a2)
{
  v2 = 0x1600000001;
  if (a1 && a2)
  {
    xpc::dict_creator::dict_creator(&object);
    xpc::dict_creator::operator()<char const*>("kPhoneBookGetProperty", &object, "kRequest", &v10);
    xpc_release(object);
    v11 = v10;
    v10 = xpc_null_create();
    xpc_release(v10);
    object = &v11;
    v8 = "kPhoneBookEntryCount";
    xpc::dict::object_proxy::operator=(&object, &v9);
    xpc_release(v9);
    v9 = 0;
    v10 = xpc_null_create();
    v2 = SendXpcMessage(a1, &v11, &v10);
    *a2 = 0;
    if (MEMORY[0x1865E16C0](v10) == MEMORY[0x1E69E9E80])
    {
      object = &v10;
      v8 = "kPhoneBookEntryCount";
      xpc::dict::object_proxy::operator xpc::object(&object, &v6);
      *a2 = xpc::dyn_cast_or_default(&v6, 0);
      xpc_release(v6);
    }

    xpc_release(v10);
    xpc_release(v11);
  }

  return v2;
}

uint64_t MMSHeaderContainer::contentTypeEncoding(MMSHeaderContainer *this)
{
  result = MMSHeaderContainer::_contentTypeEncoding;
  if (!MMSHeaderContainer::_contentTypeEncoding)
  {
    operator new();
  }

  return result;
}

void MMSHeaderContainer::MMSHeaderContainer(MMSHeaderContainer *this)
{
  *this = &unk_1EF013928;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  *(this + 16) = 1065353216;
}

void MMSHeaderContainer::MMSHeaderContainer(MMSHeaderContainer *this, const MMSHeaderContainer *a2)
{
  *this = &unk_1EF013928;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  *(this + 16) = 1065353216;
  MMSHeaderContainer::addHeaders(this, a2);
}

void MMSHeaderContainer::addHeaders(MMSHeaderContainer *this, const MMSHeaderContainer *a2)
{
  v2 = *(a2 + 1);
  if (*(a2 + 2) != v2)
  {
    v5 = 0;
    v6 = 1;
    do
    {
      v7 = (*(**(v2 + 8 * v5) + 80))(*(v2 + 8 * v5));
      MMSHeaderContainer::addHeader(this, v7, 1);
      v5 = v6;
      v2 = *(a2 + 1);
      ++v6;
    }

    while (v5 < (*(a2 + 2) - v2) >> 3);
  }
}

void MMSHeaderContainer::~MMSHeaderContainer(MMSHeaderContainer *this)
{
  *this = &unk_1EF013928;
  v3 = *(this + 1);
  v2 = *(this + 2);
  if (v2 != v3)
  {
    v4 = 0;
    v5 = 1;
    do
    {
      v6 = *(v3 + 8 * v4);
      if (v6)
      {
        (*(*v6 + 8))(v6);
        v3 = *(this + 1);
        v2 = *(this + 2);
      }

      v4 = v5++;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  std::__hash_table<std::__hash_value_type<std::string,MMSHeader *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MMSHeader *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MMSHeader *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MMSHeader *>>>::~__hash_table(this + 32);
  v7 = *(this + 1);
  if (v7)
  {
    *(this + 2) = v7;
    operator delete(v7);
  }
}

void MMSHeaderContainer::addHeader(MMSHeaderContainer *this, MMSHeader *a2, char a3)
{
  v15[0] = a2;
  if (a3)
  {
    goto LABEL_11;
  }

  v4 = *(this + 1);
  if (*(this + 2) == v4)
  {
    goto LABEL_11;
  }

  v5 = a2;
  v6 = 0;
  v7 = 1;
  while (1)
  {
    v8 = (*(**(v4 + 8 * v6) + 64))(*(v4 + 8 * v6));
    v9 = (*(*v5 + 64))(v5);
    if (!strcmp(v8, v9))
    {
      break;
    }

    v6 = v7;
    v4 = *(this + 1);
    ++v7;
    if (v6 >= (*(this + 2) - v4) >> 3)
    {
      goto LABEL_11;
    }
  }

  if (!v7)
  {
LABEL_11:
    std::vector<MMSMimePart *>::push_back[abi:nn200100](this + 8, v15);
    v5 = v15[0];
  }

  else
  {
    v10 = *(this + 1);
    v11 = *(v10 + 8 * (v7 - 1));
    if (v11)
    {
      (*(*v11 + 8))(v11);
      v10 = *(this + 1);
    }

    *(v10 + 8 * (v7 - 1)) = v5;
  }

  v12 = (*(*v5 + 64))(v5);
  std::string::basic_string[abi:nn200100]<0>(__p, v12);
  v15[2] = __p;
  std::__hash_table<std::__hash_value_type<std::string,MMSHeader *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MMSHeader *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MMSHeader *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MMSHeader *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 4, __p)[5] = v5;
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }
}

uint64_t MMSHeaderContainer::createHeader(MMSHeaderContainer *this, const char *a2)
{
  v3 = (*(*this + 16))(this);

  return MMSHeaderEncodingMap::createHeader(v3, a2);
}

MMSHeader *MMSHeaderContainer::addHeader(MMSHeaderContainer *this, const char *a2, const char *a3, char a4)
{
  v8 = (*(*this + 16))(this);
  Header = MMSHeaderEncodingMap::createHeader(v8, a2);
  v10 = Header;
  if (Header)
  {
    if ((*(*Header + 16))(Header, a3))
    {
      MMSHeaderContainer::addHeader(this, v10, a4);
    }

    else
    {
      (*(*v10 + 8))(v10);
      return 0;
    }
  }

  return v10;
}

const void *MMSHeaderContainer::headerWithName(MMSHeaderContainer *this, char *a2)
{
  std::string::basic_string[abi:nn200100]<0>(__p, a2);
  v3 = std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::find<std::string>(this + 4, __p);
  v4 = v3;
  if (v7 < 0)
  {
    operator delete(__p[0]);
    if (v4)
    {
      return v4[5];
    }
  }

  else if (v3)
  {
    return v4[5];
  }

  return 0;
}

{
  std::string::basic_string[abi:nn200100]<0>(__p, a2);
  v3 = std::__hash_table<std::__hash_value_type<std::string,MMSHeaderEncoding const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MMSHeaderEncoding const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MMSHeaderEncoding const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MMSHeaderEncoding const*>>>::find<std::string>(this + 4, __p);
  v4 = v3;
  if (v7 < 0)
  {
    operator delete(__p[0]);
    if (v4)
    {
      return v4[5];
    }
  }

  else if (v3)
  {
    return v4[5];
  }

  return 0;
}

void MMSHeaderContainer::allHeadersWithName(uint64_t a1, const char *a2, void *a3)
{
  a3[1] = *a3;
  v3 = *(a1 + 8);
  if (*(a1 + 16) != v3)
  {
    v7 = 0;
    v8 = 1;
    do
    {
      v9 = (*(**(v3 + 8 * v7) + 64))(*(v3 + 8 * v7));
      if (!strcmp(v9, a2))
      {
        std::vector<MMSMimePart *>::push_back[abi:nn200100](a3, (*(a1 + 8) + 8 * v7));
      }

      v7 = v8;
      v3 = *(a1 + 8);
      ++v8;
    }

    while (v7 < (*(a1 + 16) - v3) >> 3);
  }
}

const void *MMSHeaderContainer::contentTypeHeader(MMSHeaderContainer *this)
{
  return MMSHeaderContainer::headerWithName(this, "Content-Type");
}

{
  return MMSHeaderContainer::headerWithName(this, "Content-Type");
}

void *MMSHeaderContainer::contentType(MMSHeaderContainer *this)
{
  result = MMSHeaderContainer::headerWithName(this, "Content-Type");
  if (result)
  {
    return result[3];
  }

  return result;
}

{
  result = MMSHeaderContainer::headerWithName(this, "Content-Type");
  if (result)
  {
    return result[3];
  }

  return result;
}

uint64_t MMSHeaderContainer::setContentType(uint64_t a1, void *a2)
{
  if (*a2)
  {
    operator new();
  }

  return 0;
}

const void *MMSHeaderContainer::headerValueAsString(MMSHeaderContainer *a1, char *a2)
{
  result = MMSHeaderContainer::headerWithName(a1, a2);
  if (result)
  {
    v3 = *(*result + 72);

    return v3();
  }

  return result;
}

char *MMSHeaderContainer::valueForStringHeader(MMSHeaderContainer *this, char *a2)
{
  result = MMSHeaderContainer::headerWithName(this, a2);
  if (result)
  {
    v3 = result;
    result += 24;
    if (v3[47] < 0)
    {
      return *result;
    }
  }

  return result;
}

std::string *MMSHeaderContainer::prettyHeaders@<X0>(std::string *this@<X0>, int a2@<W1>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  a4->__r_.__value_.__r.__words[0] = 0;
  a4->__r_.__value_.__l.__size_ = 0;
  a4->__r_.__value_.__r.__words[2] = 0;
  size = this->__r_.__value_.__l.__size_;
  if (this->__r_.__value_.__r.__words[2] != size)
  {
    v8 = this;
    v9 = 0;
    v10 = 1;
    do
    {
      v11 = *(size + 8 * v9);
      this = (*(*v11 + 56))(v11);
      if (this == a2)
      {
        (*(*v11 + 48))(__p, v11, a3);
        if ((v15 & 0x80u) == 0)
        {
          v12 = __p;
        }

        else
        {
          v12 = __p[0];
        }

        if ((v15 & 0x80u) == 0)
        {
          v13 = v15;
        }

        else
        {
          v13 = __p[1];
        }

        std::string::append(a4, v12, v13);
        if (v15 < 0)
        {
          operator delete(__p[0]);
        }

        this = std::string::append(a4, "\n", 1uLL);
      }

      v9 = v10;
      size = v8->__r_.__value_.__l.__size_;
      ++v10;
    }

    while (v9 < (v8->__r_.__value_.__r.__words[2] - size) >> 3);
  }

  return this;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,MMSHeader *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MMSHeader *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MMSHeader *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MMSHeader *>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,MMSHeader *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MMSHeader *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MMSHeader *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MMSHeader *>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,MMSHeader *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MMSHeader *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MMSHeader *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MMSHeader *>>>::__deallocate_node(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,MMSHeader *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MMSHeader *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MMSHeader *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MMSHeader *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](&v16, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_21;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_21:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_21;
    }

LABEL_20:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_21;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:nn200100](a1, v13 + 2, v2))
  {
    goto LABEL_20;
  }

  return v13;
}

uint64_t MMSContentDispositionHeader::parseValue(MMSContentDispositionHeader *this, char *__s)
{
  memset(&v15, 0, sizeof(v15));
  __p = 0;
  v13 = 0;
  v14 = 0;
  v4 = strchr(__s, 59);
  if (v4)
  {
    v5 = v4;
    std::string::__assign_external(&v15, __s, (v4 - __s));
    p_p = &__p;
    v7 = v5 + 1;
  }

  else
  {
    p_p = &v15;
    v7 = __s;
  }

  std::string::__assign_external(p_p, v7);
  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v15;
  }

  else
  {
    v8 = v15.__r_.__value_.__r.__words[0];
  }

  v9 = MMSEnumerationHeader::parseValue(this, v8);
  if (v9)
  {
    if (SHIBYTE(v14) < 0)
    {
      if (!v13)
      {
        goto LABEL_14;
      }

      v10 = __p;
    }

    else
    {
      if (!HIBYTE(v14))
      {
        goto LABEL_14;
      }

      v10 = &__p;
    }

    MMSParameterContainer::parseParameters((this + 32), v10);
  }

LABEL_14:
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  return v9;
}

uint64_t MMSContentDispositionHeader::valueAsString(uint64_t a1, std::string *a2)
{
  v4 = MMSEnumerationHeader::valueAsString(a1, a2);
  if (v4)
  {
    MMSParameterContainer::toString((a1 + 32), a2);
  }

  return v4;
}

uint64_t MMSContentDispositionHeader::decodeValue(MMSContentDispositionHeader *this, MMSPduDecoder *a2)
{
  v10 = 0;
  if (*(this + 104))
  {
    __p[0] = 0;
    __p[1] = 0;
    *v8 = 0;
    MMSPduDecoder::decodeString(a2, __p, 0xFFFFFFFF);
    if ((v8[1] & 0x80000000) == 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    v5 = (*(*this + 16))(this, v4);
    if (SHIBYTE(v8[1]) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else if (MMSPduDecoder::decodeWspValueLength(a2, &v10) && v10 <= *(a2 + 4) - *(a2 + 5) && MMSPduDecoder::decodeByte(a2, this + 17))
  {
    --v10;
    v9 = 0;
    *__p = 0u;
    *v8 = 0u;
    MMSPduDecoder::MMSPduDecoder(__p, a2, v10);
    v5 = MMSParameterContainer::decode((this + 32), __p);
    if (v5)
    {
      MMSPduDecoder::skip(a2, v8[1]);
    }

    MEMORY[0x1865E04F0](__p);
  }

  else
  {
    return 0;
  }

  return v5;
}

BOOL MMSContentDispositionHeader::encodeName(MMSContentDispositionHeader *this, MMSPduEncoder *a2)
{
  v2 = *(this + 1);
  if (v2)
  {
    MMSPduEncoder::encodeByte(a2, gContentDispositionEncodingByte | 0x80);
  }

  return v2 != 0;
}

BOOL MMSContentDispositionHeader::encodeValue(MMSContentDispositionHeader *this, MMSPduEncoder *a2)
{
  v9 = 0;
  *__p = 0u;
  v8 = 0u;
  MMSPduEncoder::MMSPduEncoder(__p, *a2);
  MMSPduEncoder::encodeByte(__p, *(this + 17));
  v4 = MMSParameterContainer::encode((this + 32), __p);
  if (v4)
  {
    if (v8 >= 0)
    {
      v5 = HIBYTE(v8);
    }

    else
    {
      v5 = v8;
    }

    MMSPduEncoder::encodeWspValueLength(a2, v5);
    MMSPduEncoder::append(a2, __p);
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[1]);
  }

  return v4;
}

void MMSContentDispositionHeader::~MMSContentDispositionHeader(MMSContentDispositionHeader *this)
{
  *this = &unk_1EF013960;
  MMSParameterContainer::~MMSParameterContainer((this + 32));

  MMSEnumerationHeader::~MMSEnumerationHeader(this);
}

{
  *this = &unk_1EF013960;
  MMSParameterContainer::~MMSParameterContainer((this + 32));
  MMSEnumerationHeader::~MMSEnumerationHeader(this);

  JUMPOUT(0x1865E0880);
}

void sub_182F8E89C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v8 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_182F8ED94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *MMSFromHeader::MMSFromHeader(void *a1, uint64_t a2)
{
  ctu::OsLogLogger::OsLogLogger((a1 + 7), "com.apple.telephony", "msg.mms.pdu.from.hdr");
  result = MMSSensitiveEncodedStringHeader::MMSSensitiveEncodedStringHeader(a1, a2, 0);
  *a1 = &unk_1EF0139F0;
  return result;
}

uint64_t MMSFromHeader::parseValue(MMSFromHeader *this, const char *__s1)
{
  v4 = strcmp(__s1, "<insert address>");
  v5 = (this + 24);
  if (v4)
  {
    std::string::__assign_external(v5, __s1);
  }

  else
  {
    if (*(this + 47) < 0)
    {
      *(this + 4) = 0;
      v5 = *(this + 3);
    }

    else
    {
      *(this + 47) = 0;
    }

    v5->__r_.__value_.__s.__data_[0] = 0;
  }

  return 1;
}

uint64_t MMSFromHeader::valueAsString(uint64_t a1, std::string *this)
{
  v2 = this;
  if ((*(a1 + 47) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  else if (*(a1 + 47))
  {
LABEL_3:
    std::string::operator=(this, (a1 + 24));
    return 1;
  }

  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    this->__r_.__value_.__l.__size_ = 16;
    v2 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = 16;
  }

  strcpy(v2, "<insert address>");
  return 1;
}

uint64_t MMSFromHeader::decodeValue(MMSFromHeader *this, MMSPduDecoder *a2)
{
  if (*(a2 + 4) == *(a2 + 5))
  {
    return 0;
  }

  v13 = v2;
  v14 = v3;
  v12 = 0;
  if (MMSPduDecoder::decodeWspValueLength(a2, &v12))
  {
    if (*(a2 + 4) - *(a2 + 5) >= v12)
    {
      v11 = 0;
      result = MMSPduDecoder::decodeByte(a2, &v11);
      if (result)
      {
        v9 = v11;
        if (v11 == 129)
        {
          return 1;
        }

        else if (v11 == 128)
        {
          return MMSPduDecoder::decodeEncodedString(a2, this + 1, this + 12, 0);
        }

        else
        {
          v10 = *(this + 7);
          result = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
          if (result)
          {
            MMSFromHeader::decodeValue(v9, v10);
            return 0;
          }
        }
      }
    }

    else
    {
      v7 = *(this + 7);
      result = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
      if (result)
      {
        MMSFromHeader::decodeValue(v7);
        return 0;
      }
    }
  }

  else
  {
    v8 = *(this + 7);
    result = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (result)
    {
      MMSFromHeader::decodeValue(v8);
      return 0;
    }
  }

  return result;
}

uint64_t MMSFromHeader::encodeValue(MMSFromHeader *this, MMSPduEncoder *a2)
{
  v4 = *(this + 47);
  if (v4 < 0)
  {
    v4 = *(this + 4);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    MMSPduEncoder::encodeByte(a2, 1);
    MMSPduEncoder::encodeByte(a2, 129);
    return 1;
  }

  if (!*(this + 47))
  {
    goto LABEL_5;
  }

LABEL_3:
  MMSPduEncoder::encodeWspValueLength(a2, v4 + 2);
  MMSPduEncoder::encodeByte(a2, 128);
  MMSPduEncoder::encodeEncodedString(a2, this + 24, *(this + 12));
  return 1;
}

void MMSFromHeader::~MMSFromHeader(void **this)
{
  *this = &unk_1EF013150;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  MMSBinaryHeader::~MMSBinaryHeader(this);
  MEMORY[0x1865E04F0](this + 7);
}

{
  *this = &unk_1EF013150;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  MMSBinaryHeader::~MMSBinaryHeader(this);
  MEMORY[0x1865E04F0](this + 7);

  JUMPOUT(0x1865E0880);
}

uint64_t MMSEnumerationHeader::MMSEnumerationHeader(uint64_t a1, uint64_t a2, char a3)
{
  result = MMSBinaryHeader::MMSBinaryHeader(a1, a2);
  *result = &unk_1EF013AB0;
  *(result + 17) = a3;
  *(result + 24) = 0;
  v5 = *(result + 8);
  if (v5)
  {
    v5 = *(v5 + 32);
    if (v5)
    {
      v5 = *(v5 + 24);
    }
  }

  *(result + 24) = v5;
  return result;
}

void MMSEnumerationHeader::~MMSEnumerationHeader(MMSEnumerationHeader *this)
{
  *this = &unk_1EF013AB0;
  if (*(this + 16) == 1)
  {
    v2 = *(this + 3);
    if (v2)
    {
      v3 = *(this + 3);
      std::vector<MMSEnumerationValue>::__destroy_vector::operator()[abi:nn200100](&v3);
      MEMORY[0x1865E0880](v2, 0x20C40960023A9);
    }
  }

  MMSBinaryHeader::~MMSBinaryHeader(this);
}

{
  MMSEnumerationHeader::~MMSEnumerationHeader(this);

  JUMPOUT(0x1865E0880);
}

void MMSEnumerationHeader::addNameForValue(MMSEnumerationHeader *this, const char *a2, char a3)
{
  v4 = *(this + 3);
  if (!v4)
  {
    operator new();
  }

  memset(&__p, 0, sizeof(__p));
  if (!a2)
  {
    a2 = "";
  }

  std::string::__assign_external(&__p, a2);
  v5 = v4[1];
  v6 = v4[2];
  if (v5 >= v6)
  {
    v8 = (v5 - *v4) >> 5;
    v9 = v8 + 1;
    if ((v8 + 1) >> 59)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = v6 - *v4;
    if (v10 >> 4 > v9)
    {
      v9 = v10 >> 4;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v21[4] = v4;
    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<MMSEnumerationValue>>(v4, v11);
    }

    v12 = 32 * v8;
    *v12 = a3;
    v13 = *&__p.__r_.__value_.__l.__data_;
    *(v12 + 24) = *(&__p.__r_.__value_.__l + 2);
    *(v12 + 8) = v13;
    memset(&__p, 0, sizeof(__p));
    v14 = 32 * v8 + 32;
    v15 = v4[1];
    v16 = 32 * v8 + *v4 - v15;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<MMSEnumerationValue>,MMSEnumerationValue*>(v4, *v4, v15, v12 + *v4 - v15);
    v17 = *v4;
    *v4 = v16;
    v21[0] = v17;
    v21[1] = v17;
    v4[1] = v14;
    v21[2] = v17;
    v18 = v4[2];
    v4[2] = 0;
    v21[3] = v18;
    std::__split_buffer<MMSEnumerationValue>::~__split_buffer(v21);
    v19 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    v4[1] = v14;
    if (v19 < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *v5 = a3;
    v7 = *&__p.__r_.__value_.__l.__data_;
    *(v5 + 24) = *(&__p.__r_.__value_.__l + 2);
    *(v5 + 8) = v7;
    v4[1] = v5 + 32;
  }
}

uint64_t MMSEnumerationHeader::parseValue(MMSEnumerationHeader *this, char *a2)
{
  if ((MMSEnumerationHeader::parseNamedValue(this, a2) & 1) == 0)
  {
    *(this + 17) = strtoul(a2, 0, 0);
  }

  return 1;
}

uint64_t MMSEnumerationHeader::parseNamedValue(MMSEnumerationHeader *this, std::string::value_type *__s)
{
  v2 = *(this + 3);
  if (!v2)
  {
    return 0;
  }

  v3 = *v2;
  if (*(*(this + 3) + 8) == v3)
  {
    return 0;
  }

  v6 = 0;
  v7 = 1;
  while (std::string::compare((v3 + 32 * v6 + 8), __s))
  {
    v6 = v7;
    v3 = **(this + 3);
    ++v7;
    if (v6 >= (*(*(this + 3) + 8) - v3) >> 5)
    {
      return 0;
    }
  }

  *(this + 17) = *(**(this + 3) + 32 * v6);
  return 1;
}

uint64_t MMSEnumerationHeader::valueAsString(uint64_t a1, std::string *this)
{
  v4 = *(a1 + 24);
  if (!v4 || (v5 = *v4, v6 = *(*(a1 + 24) + 8), v7 = v6 - v5, v6 == v5))
  {
LABEL_6:
    v26 = 0;
    memset(v25, 0, sizeof(v25));
    v23 = 0u;
    v24 = 0u;
    *__src = 0u;
    *__p = 0u;
    v19 = 0u;
    v20 = 0u;
    v18 = 0u;
    std::ostringstream::basic_ostringstream[abi:nn200100](&v18);
    MEMORY[0x1865E0770](&v18, *(a1 + 17));
    if ((BYTE8(v24) & 0x10) != 0)
    {
      v13 = v24;
      if (v24 < __src[1])
      {
        *&v24 = __src[1];
        v13 = __src[1];
      }

      v14 = __src[0];
    }

    else
    {
      if ((BYTE8(v24) & 8) == 0)
      {
        v12 = 0;
        HIBYTE(v17) = 0;
LABEL_19:
        *(&__dst + v12) = 0;
        if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(this->__r_.__value_.__l.__data_);
        }

        *&this->__r_.__value_.__l.__data_ = __dst;
        this->__r_.__value_.__r.__words[2] = v17;
        *&v18 = *MEMORY[0x1E69E54E8];
        *(&v18 + *(v18 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
        *(&v18 + 1) = MEMORY[0x1E69E5548] + 16;
        if (SHIBYTE(v23) < 0)
        {
          operator delete(__p[1]);
        }

        *(&v18 + 1) = MEMORY[0x1E69E5538] + 16;
        std::locale::~locale(&v19);
        std::ostream::~ostream();
        MEMORY[0x1865E0820](v25);
        return 1;
      }

      v14 = *(&v19 + 1);
      v13 = *(&v20 + 1);
    }

    v12 = v13 - v14;
    if ((v13 - v14) >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    if (v12 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v17) = v13 - v14;
    if (v12)
    {
      memmove(&__dst, v14, v12);
    }

    goto LABEL_19;
  }

  v8 = 0;
  v9 = v7 >> 5;
  v10 = 1;
  while (*(v5 + 32 * v8) != *(a1 + 17))
  {
    v8 = v10;
    if (v9 <= v10++)
    {
      goto LABEL_6;
    }
  }

  std::string::operator=(this, (v5 + 32 * v8 + 8));
  return 1;
}

void MMSYesNoHeader::~MMSYesNoHeader(MMSYesNoHeader *this)
{
  MMSEnumerationHeader::~MMSEnumerationHeader(this);

  JUMPOUT(0x1865E0880);
}

void std::vector<MMSEnumerationValue>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<MMSEnumerationValue>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<MMSEnumerationValue>::clear[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 32)
  {
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
    }
  }

  a1[1] = v2;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<MMSEnumerationValue>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<MMSEnumerationValue>,MMSEnumerationValue*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      v7 = *(v6 + 8);
      *(a4 + 24) = *(v6 + 24);
      *(a4 + 8) = v7;
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      *(v6 + 8) = 0;
      v6 += 32;
      a4 += 32;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      if (*(v5 + 31) < 0)
      {
        operator delete(*(v5 + 8));
      }

      v5 += 32;
    }
  }
}

uint64_t std::__split_buffer<MMSEnumerationValue>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<MMSEnumerationValue>::__destruct_at_end[abi:nn200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<MMSEnumerationValue>::__destruct_at_end[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 32;
      *(a1 + 16) = v2 - 32;
      if (*(v2 - 1) < 0)
      {
        operator delete(*(v2 - 24));
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void sub_182F90244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v18 = v17;

  _Unwind_Resume(a1);
}

void sub_182F90348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v17 = v16;

  _Unwind_Resume(a1);
}

void sub_182F90558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose(&a16, 8);

  _Block_object_dispose((v23 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_182F906F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v17 = v16;

  _Unwind_Resume(a1);
}

void sub_182F907F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v17 = v16;

  _Unwind_Resume(a1);
}

void sub_182F90A00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose(&a16, 8);

  _Block_object_dispose((v23 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_182F90C60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);

  _Block_object_dispose((v10 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_182F90E7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_182F90F90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v17 = v16;

  _Unwind_Resume(a1);
}

void sub_182F91128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_182F91324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose(&a16, 8);

  _Block_object_dispose((v22 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_182F9156C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_182F91738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

uint64_t MMSMMFlagsHeader::MMSMMFlagsHeader(uint64_t a1, uint64_t a2, char a3, const char *a4)
{
  v7 = MMSBinaryHeader::MMSBinaryHeader(a1, a2);
  *v7 = &unk_1EF013BD0;
  *(v7 + 17) = a3;
  *(v7 + 20) = 0;
  if (a4)
  {
    v8 = a4;
  }

  else
  {
    v8 = "";
  }

  v9 = strlen(v8);
  if (v9 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v10 = v9;
  if (v9 >= 0x17)
  {
    operator new();
  }

  v11 = (a1 + 24);
  *(a1 + 47) = v9;
  if (v9)
  {
    memmove(v11, v8, v9);
  }

  *(v11 + v10) = 0;
  return a1;
}

void MMSMMFlagsHeader::~MMSMMFlagsHeader(void **this)
{
  *this = &unk_1EF013BD0;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  MMSBinaryHeader::~MMSBinaryHeader(this);
}

{
  MMSMMFlagsHeader::~MMSMMFlagsHeader(this);

  JUMPOUT(0x1865E0880);
}

BOOL MMSMMFlagsHeader::parseValue(std::string *this, char *__s)
{
  v4 = strchr(__s, 32);
  if (v4)
  {
    if (*__s == 97 && __s[1] == 100 && __s[2] == 100)
    {
      v5 = 0x80;
    }

    else if (!strncmp(__s, "remove", 6uLL))
    {
      v5 = -127;
    }

    else
    {
      if (strncmp(__s, "filter", 6uLL))
      {
LABEL_11:
        std::string::__assign_external(this + 1, v4 + 1);
        return v4 != 0;
      }

      v5 = -126;
    }

    this->__r_.__value_.__s.__data_[17] = v5;
    goto LABEL_11;
  }

  return v4 != 0;
}

uint64_t MMSMMFlagsHeader::decodeValue(MMSMMFlagsHeader *this, MMSPduDecoder *a2)
{
  v5 = 0;
  result = MMSPduDecoder::decodeWspValueLength(a2, &v5);
  if (result)
  {
    result = MMSPduDecoder::decodeByte(a2, this + 17);
    if (result)
    {
      return MMSPduDecoder::decodeEncodedString(a2, this + 1, this + 5, 0);
    }
  }

  return result;
}

uint64_t MMSMMFlagsHeader::encodeValue(MMSMMFlagsHeader *this, MMSPduEncoder *a2)
{
  v8 = 0;
  *__p = 0u;
  v7 = 0u;
  MMSPduEncoder::MMSPduEncoder(__p, *a2);
  MMSPduEncoder::encodeByte(__p, *(this + 17));
  MMSPduEncoder::encodeEncodedString(__p, this + 24, *(this + 5));
  if (v7 >= 0)
  {
    v4 = HIBYTE(v7);
  }

  else
  {
    v4 = v7;
  }

  MMSPduEncoder::encodeWspValueLength(a2, v4);
  MMSPduEncoder::append(a2, __p);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[1]);
  }

  return 1;
}

uint64_t MMSMMFlagsHeader::valueAsString(uint64_t a1, std::string *this)
{
  v2 = *(a1 + 17);
  if (v2 == 130)
  {
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = 7;
      v4 = this->__r_.__value_.__r.__words[0];
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = 7;
      v4 = this;
    }

    *(v4->__r_.__value_.__r.__words + 3) = 544367988;
    v6 = 1953261926;
    goto LABEL_15;
  }

  if (v2 == 129)
  {
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = 7;
      v4 = this->__r_.__value_.__r.__words[0];
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = 7;
      v4 = this;
    }

    *(v4->__r_.__value_.__r.__words + 3) = 543520367;
    v6 = 1869440370;
LABEL_15:
    LODWORD(v4->__r_.__value_.__l.__data_) = v6;
    v7 = &v4->__r_.__value_.__s.__data_[7];
    goto LABEL_18;
  }

  if (v2 != 128)
  {
    return 0;
  }

  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    this->__r_.__value_.__l.__size_ = 4;
    v3 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = 4;
    v3 = this;
  }

  LODWORD(v3->__r_.__value_.__l.__data_) = 543450209;
  v7 = &v3->__r_.__value_.__s.__data_[4];
LABEL_18:
  *v7 = 0;
  v10 = *(a1 + 24);
  v8 = a1 + 24;
  v9 = v10;
  if (*(v8 + 23) < 0)
  {
    v11 = *(v8 + 8);
  }

  else
  {
    v9 = v8;
    v11 = *(v8 + 23);
  }

  std::string::append(this, v9, v11);
  return 1;
}

uint64_t _CTServerConnectionGetRegistrationCauseCode(uint64_t a1, int *a2)
{
  v2 = 0x1600000001;
  if (a1 && a2)
  {
    xpc::dict_creator::dict_creator(&object);
    xpc::dict_creator::operator()<char const*>("kRegistrationGetProperty", &object, "kRequest", &v11);
    xpc_release(object);
    v12 = v11;
    v11 = xpc_null_create();
    xpc_release(v11);
    object = &v12;
    v9 = "kRegistrationCauseCode";
    xpc::dict::object_proxy::operator=(&object, &v10);
    xpc_release(v10);
    v10 = 0;
    v11 = xpc_null_create();
    v2 = SendXpcMessage(a1, &v12, &v11);
    *a2 = -1;
    if (MEMORY[0x1865E16C0](v11) == MEMORY[0x1E69E9E80])
    {
      object = &v11;
      v9 = "kRegistrationCauseCode";
      xpc::dict::object_proxy::operator xpc::object(&object, &v7);
      *a2 = xpc::dyn_cast_or_default(&v7, 0xFFFFFFFFLL);
      xpc_release(v7);
      v5 = CTLogRegistration();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        _CTServerConnectionGetRegistrationCauseCode_cold_1(a2, v5);
      }
    }

    xpc_release(v11);
    xpc_release(v12);
  }

  return v2;
}

uint64_t _CTServerConnectionGetRadioAccessTechnology(uint64_t a1, __CFString **a2)
{
  v2 = 0x1600000001;
  if (a1 && a2)
  {
    xpc::dict_creator::dict_creator(&object);
    xpc::dict_creator::operator()<char const*>("kRegistrationGetProperty", &object, "kRequest", &v11);
    xpc_release(object);
    v12 = v11;
    v11 = xpc_null_create();
    xpc_release(v11);
    object = &v12;
    v9 = "kRegistrationRAT";
    xpc::dict::object_proxy::operator=(&object, &v10);
    xpc_release(v10);
    v10 = 0;
    v11 = xpc_null_create();
    v2 = SendXpcMessage(a1, &v12, &v11);
    if (MEMORY[0x1865E16C0](v11) == MEMORY[0x1E69E9E80])
    {
      object = &v11;
      v9 = "kRegistrationRAT";
      xpc::dict::object_proxy::operator xpc::object(&object, &v7);
      v5 = xpc::dyn_cast_or_default(&v7, 0xB);
      xpc_release(v7);
    }

    else
    {
      v5 = 11;
    }

    *a2 = RadioAccessTechnologyToRadioAccessTechnologyString(v5);
    xpc_release(v11);
    xpc_release(v12);
  }

  return v2;
}

uint64_t _CTServerConnectionSetRATSelection(void *a1, const __CFString *a2, __CFString *a3)
{
  v3 = 0x1600000001;
  if (a1 && a2)
  {
    xpc::dict_creator::dict_creator(&object);
    xpc::dict_creator::operator()<char const*>("kRegistrationSetProperty", &object, "kRequest", &v17);
    xpc_release(object);
    v7 = v17;
    object = v17;
    v17 = xpc_null_create();
    xpc_release(v17);
    v8 = toRatSelection(a2);
    v9 = xpc_int64_create(v8);
    if (!v9)
    {
      v9 = xpc_null_create();
    }

    xpc_dictionary_set_value(v7, "kRegistrationRAT", v9);
    v10 = xpc_null_create();
    xpc_release(v9);
    xpc_release(v10);
    if (CFEqual(a2, @"kCTRegistrationRATSelectionUMTS") || CFEqual(a2, @"kCTRegistrationRATSelectionGSM") || CFEqual(a2, @"kCTRegistrationRATSelectionDual") && (!a3 || (v16 = CFEqual(a3, @"kCTRegistrationRATSelectionGSM"), a3 = @"kCTRegistrationRATSelectionGSM", !v16)))
    {
      a3 = @"kCTRegistrationRATSelectionUMTS";
    }

    if (a3)
    {
      v12 = toRatSelection(a3);
      v13 = xpc_int64_create(v12);
      if (!v13)
      {
        v13 = xpc_null_create();
      }

      xpc_dictionary_set_value(v7, "kRegistrationPreferredRAT", v13);
      v14 = xpc_null_create();
      xpc_release(v13);
      xpc_release(v14);
    }

    v3 = SendXpcMessage(a1, &object, 0, v11);
    xpc_release(object);
  }

  return v3;
}

uint64_t _CTServerConnectionGetRATSelection(uint64_t a1, const __CFString **a2, const __CFString **a3)
{
  v3 = 0x1600000001;
  if (a1 && a2 && a3)
  {
    xpc::dict_creator::dict_creator(&object);
    xpc::dict_creator::operator()<char const*>("kRegistrationGetProperty", &object, "kRequest", &v14);
    xpc_release(object);
    v15 = v14;
    v14 = xpc_null_create();
    xpc_release(v14);
    object = &v15;
    v12 = "kRegistrationRATSelection";
    xpc::dict::object_proxy::operator=(&object, &v13);
    xpc_release(v13);
    v13 = 0;
    v14 = xpc_null_create();
    v3 = SendXpcMessage(a1, &v15, &v14);
    *a2 = @"kCTRegistrationRATSelectionUnknown";
    *a3 = @"kCTRegistrationRATSelectionUnknown";
    if (MEMORY[0x1865E16C0](v14) == MEMORY[0x1E69E9E80])
    {
      object = &v14;
      v12 = "kRegistrationRATSelection";
      xpc::dict::object_proxy::operator xpc::object(&object, &v10);
      v7 = xpc::dyn_cast_or_default(&v10, 0);
      xpc_release(v10);
      object = &v14;
      v12 = "kRegistrationPreferredRAT";
      xpc::dict::object_proxy::operator xpc::object(&object, &v10);
      v8 = xpc::dyn_cast_or_default(&v10, 0);
      xpc_release(v10);
      convertRatAndPreferred(v7, v8, a2, a3);
    }

    xpc_release(v14);
    xpc_release(v15);
  }

  return v3;
}

uint64_t _CTServerConnectionIsInHomeCountry(uint64_t a1, _BYTE *a2)
{
  v2 = 0x1600000001;
  if (a1 && a2)
  {
    xpc::dict_creator::dict_creator(&object);
    xpc::dict_creator::operator()<char const*>("kRegistrationGetProperty", &object, "kRequest", &v10);
    xpc_release(object);
    v11 = v10;
    v10 = xpc_null_create();
    xpc_release(v10);
    object = &v11;
    v8 = "kRegistrationIsInHomeCountry";
    xpc::dict::object_proxy::operator=(&object, &v9);
    xpc_release(v9);
    v9 = 0;
    v10 = xpc_null_create();
    v2 = SendXpcMessage(a1, &v11, &v10);
    *a2 = 0;
    if (MEMORY[0x1865E16C0](v10) == MEMORY[0x1E69E9E80])
    {
      object = &v10;
      v8 = "kRegistrationIsInHomeCountry";
      xpc::dict::object_proxy::operator xpc::object(&object, &v6);
      *a2 = xpc::dyn_cast_or_default(&v6, 0);
      xpc_release(v6);
    }

    xpc_release(v10);
    xpc_release(v11);
  }

  return v2;
}

uint64_t _CTServerConnectionGetSignalStrength(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  v4 = 0x1600000001;
  if (a1 && a2 && a3 && a4)
  {
    xpc::dict_creator::dict_creator(&object);
    xpc::dict_creator::operator()<char const*>("kRegistrationGetProperty", &object, "kRequest", &v14);
    xpc_release(object);
    v15 = v14;
    v14 = xpc_null_create();
    xpc_release(v14);
    object = &v15;
    v12 = "kRegistrationSignalStrength";
    xpc::dict::object_proxy::operator=(&object, &v13);
    xpc_release(v13);
    v13 = 0;
    v14 = xpc_null_create();
    v4 = SendXpcMessage(a1, &v15, &v14);
    *a2 = 0;
    *a3 = 100;
    *a4 = 0;
    if (MEMORY[0x1865E16C0](v14) == MEMORY[0x1E69E9E80])
    {
      object = &v14;
      v12 = "kRegistrationSignalStrength";
      xpc::dict::object_proxy::operator xpc::object(&object, &v10);
      *a4 = xpc::dyn_cast_or_default(&v10, 0);
      xpc_release(v10);
    }

    xpc_release(v14);
    xpc_release(v15);
  }

  return v4;
}

uint64_t _CTServerConnectionGetSignalStrengthDisplayValue(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v3 = 0x1600000001;
  if (a1 && a2 && a3)
  {
    xpc::dict_creator::dict_creator(&object);
    xpc::dict_creator::operator()<char const*>("kRegistrationGetSignalStrengthDisplayValue", &object, "kRequest", &v11);
    xpc_release(object);
    v12 = v11;
    v11 = xpc_null_create();
    xpc_release(v11);
    v11 = xpc_null_create();
    v3 = SendXpcMessage(a1, &v12, &v11);
    *a2 = 0;
    *a3 = 0;
    if (MEMORY[0x1865E16C0](v11) == MEMORY[0x1E69E9E80])
    {
      object = &v11;
      v9 = "kRegistrationSignalStrengthDisplayValue";
      xpc::dict::object_proxy::operator xpc::object(&object, &v10);
      *a2 = xpc::dyn_cast_or_default(&v10, 0);
      xpc_release(v10);
      object = &v11;
      v9 = "kRegistrationSignalStrengthMaxDisplayValue";
      xpc::dict::object_proxy::operator xpc::object(&object, &v10);
      *a3 = xpc::dyn_cast_or_default(&v10, 0);
      xpc_release(v10);
    }

    xpc_release(v11);
    xpc_release(v12);
  }

  return v3;
}

uint64_t _CTServerConnectionIsDataAttached(uint64_t a1, _BYTE *a2)
{
  v2 = 0x1600000001;
  if (a1 && a2)
  {
    xpc::dict_creator::dict_creator(&object);
    xpc::dict_creator::operator()<char const*>("kRegistrationGetProperty", &object, "kRequest", &v10);
    xpc_release(object);
    v11 = v10;
    v10 = xpc_null_create();
    xpc_release(v10);
    object = &v11;
    v8 = "kRegistrationIsDataAttached";
    xpc::dict::object_proxy::operator=(&object, &v9);
    xpc_release(v9);
    v9 = 0;
    v10 = xpc_null_create();
    v2 = SendXpcMessage(a1, &v11, &v10);
    *a2 = 0;
    if (MEMORY[0x1865E16C0](v10) == MEMORY[0x1E69E9E80])
    {
      object = &v10;
      v8 = "kRegistrationIsDataAttached";
      xpc::dict::object_proxy::operator xpc::object(&object, &v6);
      *a2 = xpc::dyn_cast_or_default(&v6, 0);
      xpc_release(v6);
    }

    xpc_release(v10);
    xpc_release(v11);
  }

  return v2;
}

uint64_t _CTServerConnectionCopyCurrentOperatorName(uint64_t a1, uint64_t *a2, const void *a3)
{
  v3 = 0x1600000001;
  if (a1 && a2 && a3)
  {
    xpc::dict_creator::dict_creator(&object);
    xpc::dict_creator::operator()<char const*>("kRegistrationGetProperty", &object, "kRequest", &xdict);
    xpc_release(object);
    v21 = xdict;
    xdict = xpc_null_create();
    xpc_release(xdict);
    object = &v21;
    v18 = "kRegistrationOperatorName";
    xpc::dict::object_proxy::operator=(&object, &v19);
    xpc_release(v19);
    v19 = 0;
    v7 = CFEqual(a3, *MEMORY[0x1E695E4D0]);
    v8 = xpc_int64_create(v7);
    if (!v8)
    {
      v8 = xpc_null_create();
    }

    xpc_dictionary_set_value(v21, "kRegistrationLocalize", v8);
    v9 = xpc_null_create();
    xpc_release(v8);
    xpc_release(v9);
    xdict = xpc_null_create();
    v3 = SendXpcMessage(a1, &v21, &xdict);
    *a2 = 0;
    if (MEMORY[0x1865E16C0](xdict) == MEMORY[0x1E69E9E80] && xpc_dictionary_get_value(xdict, "kRegistrationOperatorName"))
    {
      v16 = 0;
      object = &xdict;
      v18 = "kRegistrationOperatorName";
      xpc::dict::object_proxy::operator xpc::object(&object, &v14);
      xpc::bridge(&cf, &v14, v11);
      ctu::cf::CFSharedRef<__CFString const>::CFSharedRef<void const,void>(&v16, &cf);
      if (cf)
      {
        CFRelease(cf);
      }

      xpc_release(v14);
      v12 = v16;
      v16 = 0;
      *a2 = v12;
      v13 = CTLogRegistration();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        _CTServerConnectionCopyCurrentOperatorName(a2);
      }

      if (v16)
      {
        CFRelease(v16);
      }
    }

    xpc_release(xdict);
    xpc_release(v21);
  }

  return v3;
}

uint64_t _CTServerConnectionCopyAbbreviatedOperatorName(uint64_t a1, void *a2)
{
  v2 = 0x1600000001;
  if (a1 && a2)
  {
    xpc::dict_creator::dict_creator(object);
    xpc::dict_creator::operator()<char const*>("kRegistrationGetProperty", object, "kRequest", &v9);
    xpc_release(object[0]);
    v10 = v9;
    v9 = xpc_null_create();
    xpc_release(v9);
    object[0] = &v10;
    object[1] = "kRegistrationAbbrevOperatorName";
    xpc::dict::object_proxy::operator=(object, &v8);
    xpc_release(v8);
    v8 = 0;
    object[0] = xpc_null_create();
    v2 = SendXpcMessage(a1, &v10, object);
    *a2 = 0;
    if (MEMORY[0x1865E16C0](object[0]) == MEMORY[0x1E69E9E80] && xpc_dictionary_get_value(object[0], "kRegistrationAbbrevOperatorName"))
    {
      v9 = 0;
      xpc_dictionary_get_value(object[0], "kRegistrationAbbrevOperatorName");
      v6 = _CFXPCCreateCFObjectFromXPCObject();
      ctu::cf::CFSharedRef<__CFString const>::CFSharedRef<void const,void>(&v9, &v6);
      *a2 = v9;
    }

    xpc_release(object[0]);
    xpc_release(v10);
  }

  return v2;
}

uint64_t _CTServerConnectionCopyProviderNameUsingCarrierBundle(uint64_t a1, void *a2)
{
  v2 = 0x1600000001;
  if (a1 && a2)
  {
    xpc::dict_creator::dict_creator(&object);
    xpc::dict_creator::operator()<char const*>("kRegistrationProviderName", &object, "kRequest", &xdict);
    xpc_release(object);
    v5 = xdict;
    object = xdict;
    xdict = xpc_null_create();
    xpc_release(xdict);
    v6 = xpc_BOOL_create(1);
    if (!v6)
    {
      v6 = xpc_null_create();
    }

    xpc_dictionary_set_value(v5, "kRegistrationUseCarrierBundle", v6);
    v7 = xpc_null_create();
    xpc_release(v6);
    xpc_release(v7);
    xdict = xpc_null_create();
    v2 = SendXpcMessage(a1, &object, &xdict);
    *a2 = 0;
    if (MEMORY[0x1865E16C0](xdict) == MEMORY[0x1E69E9E80] && xpc_dictionary_get_value(xdict, "kRegistrationProviderName"))
    {
      v10 = 0;
      xpc_dictionary_get_value(xdict, "kRegistrationProviderName");
      v9 = _CFXPCCreateCFObjectFromXPCObject();
      ctu::cf::CFSharedRef<__CFString const>::CFSharedRef<void const,void>(&v10, &v9);
      *a2 = v10;
    }

    xpc_release(xdict);
    xpc_release(object);
  }

  return v2;
}

uint64_t _CTServerConnectionFetchNetworkList(void *a1)
{
  if (!a1)
  {
    return 0x1600000001;
  }

  v2 = CTLogRegistration();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_182E9B000, v2, OS_LOG_TYPE_DEFAULT, "Fetching network list", buf, 2u);
  }

  xpc::dict_creator::dict_creator(buf);
  xpc::dict_creator::operator()<char const*>("kRegistrationFetchNetworkList", buf, "kRequest", &v6);
  xpc_release(*buf);
  *buf = v6;
  v6 = xpc_null_create();
  xpc_release(v6);
  v4 = SendXpcMessage(a1, buf, 0, v3);
  xpc_release(*buf);
  return v4;
}

uint64_t _CTServerConnectionCopyNetworkList(uint64_t a1, void *a2)
{
  v51 = *MEMORY[0x1E69E9840];
  v2 = 0x1600000001;
  if (a1 && a2)
  {
    v5 = xpc::dict_creator::dict_creator(buf);
    xpc::dict_creator::operator()<char const*>("kRegistrationGetProperty", v5, "kRequest", v39);
    xpc_release(*buf);
    v45 = v39[0];
    v39[0] = xpc_null_create();
    xpc_release(v39[0]);
    *buf = &v45;
    *&buf[8] = "kRegistrationNetworkList";
    xpc::dict::object_proxy::operator=(buf, &object);
    xpc_release(object);
    object = 0;
    xdict = xpc_null_create();
    v2 = SendXpcMessage(a1, &v45, &xdict);
    *a2 = 0;
    v6 = MEMORY[0x1865E16C0](xdict);
    v7 = MEMORY[0x1E69E9E80];
    if (v6 == MEMORY[0x1E69E9E80] && xpc_dictionary_get_value(xdict, "kRegistrationNetworkList"))
    {
      xarray = 0;
      *buf = &xdict;
      *&buf[8] = "kRegistrationNetworkList";
      xpc::dict::object_proxy::operator xpc::array(buf, &xarray);
      v16 = MEMORY[0x1865E16C0](xarray);
      v17 = MEMORY[0x1E69E9E50];
      if (v16 == MEMORY[0x1E69E9E50])
      {
        v18 = 0;
        v19 = @"kCTRegistrationNetworkCode";
        v20 = 1;
        do
        {
          if (xpc_array_get_count(xarray) <= v18)
          {
            break;
          }

          v41 = 0;
          *buf = &xarray;
          *&buf[8] = v18;
          xpc::array::object_proxy::operator xpc::dict(buf, &v41);
          if (MEMORY[0x1865E16C0](v41) == v7)
          {
            v39[0] = 0;
            v39[1] = 0;
            v40 = 0;
            memset(buf, 0, 24);
            ctu::cf::assign();
            *__p = *buf;
            v38 = *&buf[16];
            v21 = *buf;
            if (buf[23] >= 0)
            {
              v21 = __p;
            }

            v33[0] = &v41;
            v33[1] = v21;
            xpc::dict::object_proxy::operator xpc::object(v33, v35);
            memset(buf, 0, 24);
            xpc::dyn_cast_or_default();
            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }

            xpc_release(v35[0]);
            v35[0] = 0;
            if (SHIBYTE(v38) < 0)
            {
              operator delete(__p[0]);
            }

            __p[0] = 0;
            __p[1] = 0;
            v38 = 0;
            memset(buf, 0, 24);
            ctu::cf::assign();
            *v33 = *buf;
            v34 = *&buf[16];
            v35[0] = &v41;
            v22 = *buf;
            if (buf[23] >= 0)
            {
              v22 = v33;
            }

            v35[1] = v22;
            xpc::dict::object_proxy::operator xpc::object(v35, &v36);
            memset(buf, 0, 24);
            xpc::dyn_cast_or_default();
            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }

            xpc_release(v36);
            v36 = 0;
            if (SHIBYTE(v34) < 0)
            {
              operator delete(v33[0]);
            }

            memset(buf, 0, 24);
            ctu::cf::assign();
            *v33 = *buf;
            v34 = *&buf[16];
            v23 = *buf;
            if (buf[23] >= 0)
            {
              v23 = v33;
            }

            *buf = &v41;
            *&buf[8] = v23;
            xpc::dict::object_proxy::operator xpc::object(buf, v35);
            v24 = xpc::dyn_cast_or_default(v35, 0);
            xpc_release(v35[0]);
            v35[0] = 0;
            if (SHIBYTE(v34) < 0)
            {
              operator delete(v33[0]);
            }

            RadioAccessTechnologyToRadioAccessTechnologyString(v24);
            v25 = CTLogRegistration();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              v26 = v19;
              if (MEMORY[0x1865E16C0](xarray) == v17)
              {
                count = xpc_array_get_count(xarray);
              }

              else
              {
                count = 0;
              }

              if (v40 >= 0)
              {
                v28 = v39;
              }

              else
              {
                v28 = v39[0];
              }

              if (v38 >= 0)
              {
                v29 = __p;
              }

              else
              {
                v29 = __p[0];
              }

              memset(buf, 0, 24);
              ctu::cf::assign();
              *v33 = *buf;
              v34 = *&buf[16];
              v30 = *buf;
              if (buf[23] >= 0)
              {
                v30 = v33;
              }

              *buf = 67110146;
              *&buf[4] = v20 - 1;
              *&buf[8] = 2048;
              *&buf[10] = count;
              *&buf[18] = 2080;
              *&buf[20] = v28;
              v47 = 2080;
              v48 = v29;
              v49 = 2080;
              v50 = v30;
              _os_log_impl(&dword_182E9B000, v25, OS_LOG_TYPE_DEFAULT, "Network list %d of %zu: %s (%s) (%s)", buf, 0x30u);
              if (SHIBYTE(v34) < 0)
              {
                operator delete(v33[0]);
              }

              v17 = MEMORY[0x1E69E9E50];
              v19 = v26;
              v7 = MEMORY[0x1E69E9E80];
            }

            if (SHIBYTE(v38) < 0)
            {
              operator delete(__p[0]);
            }

            if (SHIBYTE(v40) < 0)
            {
              operator delete(v39[0]);
            }
          }

          xpc_release(v41);
          v18 = v20++;
        }

        while (MEMORY[0x1865E16C0](xarray) == v17);
      }

      *buf = 0;
      v39[0] = _CFXPCCreateCFObjectFromXPCObject();
      ctu::cf::CFSharedRef<__CFArray const>::CFSharedRef<void const,void>(buf, v39);
      *a2 = *buf;
      xpc_release(xarray);
    }

    else
    {
      v8 = CTLogRegistration();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        _CTServerConnectionCopyNetworkList_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
      }
    }

    xpc_release(xdict);
    xpc_release(v45);
  }

  v31 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t _CTServerConnectionCopyManualNetworkSelection(uint64_t a1, void *a2)
{
  v2 = 0x1600000001;
  if (a1 && a2)
  {
    xpc::dict_creator::dict_creator(object);
    xpc::dict_creator::operator()<char const*>("kRegistrationGetProperty", object, "kRequest", &v9);
    xpc_release(object[0]);
    v10 = v9;
    v9 = xpc_null_create();
    xpc_release(v9);
    object[0] = &v10;
    object[1] = "kRegistrationCurrentNetworkSelection";
    xpc::dict::object_proxy::operator=(object, &v8);
    xpc_release(v8);
    v8 = 0;
    object[0] = xpc_null_create();
    v2 = SendXpcMessage(a1, &v10, object);
    *a2 = 0;
    if (MEMORY[0x1865E16C0](object[0]) == MEMORY[0x1E69E9E80] && xpc_dictionary_get_value(object[0], "kRegistrationCurrentNetworkSelection"))
    {
      v9 = 0;
      xpc_dictionary_get_value(object[0], "kRegistrationCurrentNetworkSelection");
      v6 = _CFXPCCreateCFObjectFromXPCObject();
      ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef<void const,void>(&v9, &v6);
      *a2 = v9;
    }

    xpc_release(object[0]);
    xpc_release(v10);
  }

  return v2;
}

uint64_t _CTServerConnectionSelectNetwork(uint64_t a1, CFDictionaryRef theDict)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = 0x1600000001;
  if (a1)
  {
    if (theDict)
    {
      CFDictionaryGetValue(theDict, @"kCTRegistrationNetworkCode");
      memset(buf, 0, sizeof(buf));
      v25 = 0;
      ctu::cf::assign();
      v23 = 0;
      *__p = 0u;
      v3 = CTLogRegistration();
      v4 = v3;
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        _CTServerConnectionSelectNetwork_cold_1(v4, v13, v14, v15, v16, v17, v18, v19);
      }
    }

    else
    {
      v5 = CTLogRegistration();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        _CTServerConnectionSelectNetwork_cold_2(v5, v6, v7, v8, v9, v10, v11, v12);
      }

      v2 = 0;
    }
  }

  v20 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t _CTServerConnectionAutomaticallySelectNetwork(void *a1)
{
  if (!a1)
  {
    return 0x1600000001;
  }

  xpc::dict_creator::dict_creator(&object);
  xpc::dict_creator::operator()<char const*>("kRegistrationSetProperty", &object, "kRequest", &v8);
  xpc_release(object);
  v2 = v8;
  object = v8;
  v8 = xpc_null_create();
  xpc_release(v8);
  v3 = xpc_BOOL_create(1);
  if (!v3)
  {
    v3 = xpc_null_create();
  }

  xpc_dictionary_set_value(v2, "kRegistrationAutomaticNetworkSelection", v3);
  v4 = xpc_null_create();
  xpc_release(v3);
  xpc_release(v4);
  v6 = SendXpcMessage(a1, &object, 0, v5);
  xpc_release(object);
  return v6;
}

uint64_t _CTServerConnectionGetNetworkSelectionMode(uint64_t a1, uint64_t *a2)
{
  v2 = 0x1600000001;
  if (a1 && a2)
  {
    xpc::dict_creator::dict_creator(&object);
    xpc::dict_creator::operator()<char const*>("kRegistrationGetProperty", &object, "kRequest", &xdict);
    xpc_release(object);
    v13 = xdict;
    xdict = xpc_null_create();
    xpc_release(xdict);
    object = &v13;
    v10 = "kRegistrationNetworkSelectionMode";
    xpc::dict::object_proxy::operator=(&object, &v11);
    xpc_release(v11);
    v11 = 0;
    xdict = xpc_null_create();
    v2 = SendXpcMessage(a1, &v13, &xdict);
    *a2 = @"kCTRegistrationNetworkSelectionModeAutomatic";
    if (MEMORY[0x1865E16C0](xdict) == MEMORY[0x1E69E9E80])
    {
      if (xpc_dictionary_get_value(xdict, "kRegistrationNetworkSelectionMode"))
      {
        object = &xdict;
        v10 = "kRegistrationNetworkSelectionMode";
        xpc::dict::object_proxy::operator xpc::object(&object, &v8);
        v5 = xpc::dyn_cast_or_default(&v8, 0);
        xpc_release(v8);
        *a2 = networkSelectionModeToNetworkSelectionModeString(v5);
        v6 = CTLogRegistration();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          _CTServerConnectionGetNetworkSelectionMode_cold_1(a2);
        }
      }
    }

    xpc_release(xdict);
    xpc_release(v13);
  }

  return v2;
}

uint64_t _CTServerConnectionGetNetworkSelectionState(uint64_t a1, uint64_t *a2)
{
  v2 = 0x1600000001;
  if (a1 && a2)
  {
    xpc::dict_creator::dict_creator(&object);
    xpc::dict_creator::operator()<char const*>("kRegistrationGetProperty", &object, "kRequest", &xdict);
    xpc_release(object);
    v13 = xdict;
    xdict = xpc_null_create();
    xpc_release(xdict);
    object = &v13;
    v10 = "kRegistrationNetworkSelectionState";
    xpc::dict::object_proxy::operator=(&object, &v11);
    xpc_release(v11);
    v11 = 0;
    xdict = xpc_null_create();
    v2 = SendXpcMessage(a1, &v13, &xdict);
    *a2 = @"kCTRegistrationNetworkSelectionStateUnknown";
    if (MEMORY[0x1865E16C0](xdict) == MEMORY[0x1E69E9E80])
    {
      if (xpc_dictionary_get_value(xdict, "kRegistrationNetworkSelectionState"))
      {
        object = &xdict;
        v10 = "kRegistrationNetworkSelectionState";
        xpc::dict::object_proxy::operator xpc::object(&object, &v8);
        v5 = xpc::dyn_cast_or_default(&v8, 0);
        xpc_release(v8);
        *a2 = networkSelectionStateToNetworkSelectionStateString(v5);
        v6 = CTLogRegistration();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          _CTServerConnectionGetNetworkSelectionState_cold_1(a2);
        }
      }
    }

    xpc_release(xdict);
    xpc_release(v13);
  }

  return v2;
}

uint64_t _CTServerConnectionCopyServingPLMN(uint64_t a1, void *a2)
{
  v2 = 0x1600000001;
  if (a1 && a2)
  {
    xpc::dict_creator::dict_creator(object);
    xpc::dict_creator::operator()<char const*>("kRegistrationGetProperty", object, "kRequest", &v9);
    xpc_release(object[0]);
    v10 = v9;
    v9 = xpc_null_create();
    xpc_release(v9);
    object[0] = &v10;
    object[1] = "kRegistrationServingPLMN";
    xpc::dict::object_proxy::operator=(object, &v8);
    xpc_release(v8);
    v8 = 0;
    object[0] = xpc_null_create();
    v2 = SendXpcMessage(a1, &v10, object);
    *a2 = 0;
    if (MEMORY[0x1865E16C0](object[0]) == MEMORY[0x1E69E9E80] && xpc_dictionary_get_value(object[0], "kRegistrationServingPLMN"))
    {
      v9 = 0;
      xpc_dictionary_get_value(object[0], "kRegistrationServingPLMN");
      v6 = _CFXPCCreateCFObjectFromXPCObject();
      ctu::cf::CFSharedRef<__CFString const>::CFSharedRef<void const,void>(&v9, &v6);
      *a2 = v9;
    }

    xpc_release(object[0]);
    xpc_release(v10);
  }

  return v2;
}

uint64_t _CTServerConnectionCopyMobileCountryCode(uint64_t a1, void *a2)
{
  v2 = 0x1600000001;
  if (a1 && a2)
  {
    xpc::dict_creator::dict_creator(object);
    xpc::dict_creator::operator()<char const*>("kRegistrationGetProperty", object, "kRequest", &v9);
    xpc_release(object[0]);
    v10 = v9;
    v9 = xpc_null_create();
    xpc_release(v9);
    object[0] = &v10;
    object[1] = "kRegistrationMCC";
    xpc::dict::object_proxy::operator=(object, &v8);
    xpc_release(v8);
    v8 = 0;
    object[0] = xpc_null_create();
    v2 = SendXpcMessage(a1, &v10, object);
    *a2 = 0;
    if (MEMORY[0x1865E16C0](object[0]) == MEMORY[0x1E69E9E80] && xpc_dictionary_get_value(object[0], "kRegistrationMCC"))
    {
      v9 = 0;
      xpc_dictionary_get_value(object[0], "kRegistrationMCC");
      v6 = _CFXPCCreateCFObjectFromXPCObject();
      ctu::cf::CFSharedRef<__CFString const>::CFSharedRef<void const,void>(&v9, &v6);
      *a2 = v9;
    }

    xpc_release(object[0]);
    xpc_release(v10);
  }

  return v2;
}

uint64_t _CTServerConnectionCopyLastKnownCountryCode(uint64_t a1, uint64_t *a2)
{
  v2 = 0x1600000001;
  if (a1 && a2)
  {
    xpc::dict_creator::dict_creator(object);
    xpc::dict_creator::operator()<char const*>("kRegistrationGetProperty", object, "kRequest", &cf);
    xpc_release(object[0]);
    v12 = cf;
    cf = xpc_null_create();
    xpc_release(cf);
    object[0] = &v12;
    object[1] = "kRegistrationLastMCC";
    xpc::dict::object_proxy::operator=(object, &v10);
    xpc_release(v10);
    v10 = 0;
    object[0] = xpc_null_create();
    v2 = SendXpcMessage(a1, &v12, object);
    *a2 = 0;
    if (MEMORY[0x1865E16C0](object[0]) == MEMORY[0x1E69E9E80] && xpc_dictionary_get_value(object[0], "kRegistrationLastMCC"))
    {
      cf = 0;
      xpc_dictionary_get_value(object[0], "kRegistrationLastMCC");
      v8 = _CFXPCCreateCFObjectFromXPCObject();
      ctu::cf::CFSharedRef<__CFString const>::CFSharedRef<void const,void>(&cf, &v8);
      v6 = cf;
      cf = 0;
      *a2 = v6;
      v7 = CTLogRegistration();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        _CTServerConnectionCopyLastKnownCountryCode_cold_1(a2);
      }

      if (cf)
      {
        CFRelease(cf);
      }
    }

    xpc_release(object[0]);
    xpc_release(v12);
  }

  return v2;
}

uint64_t _CTServerConnectionCopyMobileNetworkCode(uint64_t a1, void *a2)
{
  v2 = 0x1600000001;
  if (a1 && a2)
  {
    xpc::dict_creator::dict_creator(object);
    xpc::dict_creator::operator()<char const*>("kRegistrationGetProperty", object, "kRequest", &v9);
    xpc_release(object[0]);
    v10 = v9;
    v9 = xpc_null_create();
    xpc_release(v9);
    object[0] = &v10;
    object[1] = "kRegistrationMNC";
    xpc::dict::object_proxy::operator=(object, &v8);
    xpc_release(v8);
    v8 = 0;
    object[0] = xpc_null_create();
    v2 = SendXpcMessage(a1, &v10, object);
    *a2 = 0;
    if (MEMORY[0x1865E16C0](object[0]) == MEMORY[0x1E69E9E80] && xpc_dictionary_get_value(object[0], "kRegistrationMNC"))
    {
      v9 = 0;
      xpc_dictionary_get_value(object[0], "kRegistrationMNC");
      v6 = _CFXPCCreateCFObjectFromXPCObject();
      ctu::cf::CFSharedRef<__CFString const>::CFSharedRef<void const,void>(&v9, &v6);
      *a2 = v9;
    }

    xpc_release(object[0]);
    xpc_release(v10);
  }

  return v2;
}

uint64_t _CTServerConnectionGetLocationAreaCode(uint64_t a1, _DWORD *a2)
{
  v2 = 0x1600000001;
  if (a1 && a2)
  {
    xpc::dict_creator::dict_creator(&object);
    xpc::dict_creator::operator()<char const*>("kRegistrationGetProperty", &object, "kRequest", &xdict);
    xpc_release(object);
    v11 = xdict;
    xdict = xpc_null_create();
    xpc_release(xdict);
    object = &v11;
    v8 = "kRegistrationLAC";
    xpc::dict::object_proxy::operator=(&object, &v9);
    xpc_release(v9);
    v9 = 0;
    xdict = xpc_null_create();
    v2 = SendXpcMessage(a1, &v11, &xdict);
    *a2 = 0;
    if (MEMORY[0x1865E16C0](xdict) == MEMORY[0x1E69E9E80] && xpc_dictionary_get_value(xdict, "kRegistrationLAC"))
    {
      object = &xdict;
      v8 = "kRegistrationLAC";
      xpc::dict::object_proxy::operator xpc::object(&object, &v6);
      *a2 = xpc::dyn_cast_or_default(&v6, 0);
      xpc_release(v6);
    }

    xpc_release(xdict);
    xpc_release(v11);
  }

  return v2;
}

uint64_t _CTServerConnectionGetCellID(uint64_t a1, _DWORD *a2)
{
  v2 = 0x1600000001;
  if (a1 && a2)
  {
    xpc::dict_creator::dict_creator(&object);
    xpc::dict_creator::operator()<char const*>("kRegistrationGetProperty", &object, "kRequest", &xdict);
    xpc_release(object);
    v11 = xdict;
    xdict = xpc_null_create();
    xpc_release(xdict);
    object = &v11;
    v8 = "kRegistrationCellId";
    xpc::dict::object_proxy::operator=(&object, &v9);
    xpc_release(v9);
    v9 = 0;
    xdict = xpc_null_create();
    v2 = SendXpcMessage(a1, &v11, &xdict);
    *a2 = 0;
    if (MEMORY[0x1865E16C0](xdict) == MEMORY[0x1E69E9E80] && xpc_dictionary_get_value(xdict, "kRegistrationCellId"))
    {
      object = &xdict;
      v8 = "kRegistrationCellId";
      xpc::dict::object_proxy::operator xpc::object(&object, &v6);
      *a2 = xpc::dyn_cast_or_default(&v6, 0);
      xpc_release(v6);
    }

    xpc_release(xdict);
    xpc_release(v11);
  }

  return v2;
}

uint64_t _CTServerConnectionDisableRegistration(void *a1)
{
  if (!a1)
  {
    return 0x1600000001;
  }

  xpc::dict_creator::dict_creator(&object);
  xpc::dict_creator::operator()<char const*>("kRegistrationSetProperty", &object, "kRequest", &v8);
  xpc_release(object);
  v2 = v8;
  object = v8;
  v8 = xpc_null_create();
  xpc_release(v8);
  v3 = xpc_BOOL_create(1);
  if (!v3)
  {
    v3 = xpc_null_create();
  }

  xpc_dictionary_set_value(v2, "kRegistrationBrickMode", v3);
  v4 = xpc_null_create();
  xpc_release(v3);
  xpc_release(v4);
  v6 = SendXpcMessage(a1, &object, 0, v5);
  xpc_release(object);
  return v6;
}

uint64_t _CTServerConnectionEnableRegistration(void *a1)
{
  if (!a1)
  {
    return 0x1600000001;
  }

  xpc::dict_creator::dict_creator(&object);
  xpc::dict_creator::operator()<char const*>("kRegistrationSetProperty", &object, "kRequest", &v8);
  xpc_release(object);
  v2 = v8;
  object = v8;
  v8 = xpc_null_create();
  xpc_release(v8);
  v3 = xpc_BOOL_create(0);
  if (!v3)
  {
    v3 = xpc_null_create();
  }

  xpc_dictionary_set_value(v2, "kRegistrationBrickMode", v3);
  v4 = xpc_null_create();
  xpc_release(v3);
  xpc_release(v4);
  v6 = SendXpcMessage(a1, &object, 0, v5);
  xpc_release(object);
  return v6;
}

uint64_t _CTServerConnectionGetEmergencyCallBackMode(uint64_t a1, _BYTE *a2)
{
  v2 = 0x1600000001;
  if (a1 && a2)
  {
    xpc::dict_creator::dict_creator(&object);
    xpc::dict_creator::operator()<char const*>("kRegistrationGetProperty", &object, "kRequest", &xdict);
    xpc_release(object);
    v11 = xdict;
    xdict = xpc_null_create();
    xpc_release(xdict);
    object = &v11;
    v8 = "kRegistrationEmergencyCallBackMode";
    xpc::dict::object_proxy::operator=(&object, &v9);
    xpc_release(v9);
    v9 = 0;
    xdict = xpc_null_create();
    v2 = SendXpcMessage(a1, &v11, &xdict);
    *a2 = 0;
    if (MEMORY[0x1865E16C0](xdict) == MEMORY[0x1E69E9E80] && xpc_dictionary_get_value(xdict, "kRegistrationEmergencyCallBackMode"))
    {
      object = &xdict;
      v8 = "kRegistrationEmergencyCallBackMode";
      xpc::dict::object_proxy::operator xpc::object(&object, &v6);
      *a2 = xpc::dyn_cast_or_default(&v6, 0);
      xpc_release(v6);
    }

    xpc_release(xdict);
    xpc_release(v11);
  }

  return v2;
}

uint64_t _CTServerConnectionGetActiveWirelessTechnology(uint64_t a1, __CFString **a2)
{
  v2 = 0x1600000001;
  if (a1 && a2)
  {
    xpc::dict_creator::dict_creator(&object);
    xpc::dict_creator::operator()<char const*>("kRegistrationGetProperty", &object, "kRequest", &xdict);
    xpc_release(object);
    v12 = xdict;
    xdict = xpc_null_create();
    xpc_release(xdict);
    object = &v12;
    v9 = "kRegistrationActiveWirelessTech";
    xpc::dict::object_proxy::operator=(&object, &v10);
    xpc_release(v10);
    v10 = 0;
    xdict = xpc_null_create();
    v2 = SendXpcMessage(a1, &v12, &xdict);
    *a2 = @"kCTWirelessTechnologyUnknown";
    if (MEMORY[0x1865E16C0](xdict) == MEMORY[0x1E69E9E80] && xpc_dictionary_get_value(xdict, "kRegistrationActiveWirelessTech"))
    {
      object = &xdict;
      v9 = "kRegistrationActiveWirelessTech";
      xpc::dict::object_proxy::operator xpc::object(&object, &v7);
      v5 = xpc::dyn_cast_or_default(&v7, 0);
      xpc_release(v7);
      *a2 = wirelessTechnologyToWirelessTechnologyString(v5);
    }

    xpc_release(xdict);
    xpc_release(v12);
  }

  return v2;
}

uint64_t _CTServerConnectionSetEnableOnlyHomeNetwork(void *a1, int a2)
{
  if (!a1)
  {
    return 0x1600000001;
  }

  xpc::dict_creator::dict_creator(&object);
  xpc::dict_creator::operator()<char const*>("kRegistrationSetProperty", &object, "kRequest", &v10);
  xpc_release(object);
  v4 = v10;
  object = v10;
  v10 = xpc_null_create();
  xpc_release(v10);
  v5 = xpc_BOOL_create(a2 != 0);
  if (!v5)
  {
    v5 = xpc_null_create();
  }

  xpc_dictionary_set_value(v4, "kRegistrationOnlyHomeNetwork", v5);
  v6 = xpc_null_create();
  xpc_release(v5);
  xpc_release(v6);
  v8 = SendXpcMessage(a1, &object, 0, v7);
  xpc_release(object);
  return v8;
}

uint64_t _CTServerConnectionGetEnableOnlyHomeNetwork(uint64_t a1, _BYTE *a2)
{
  v2 = 0x1600000001;
  if (a1 && a2)
  {
    xpc::dict_creator::dict_creator(&object);
    xpc::dict_creator::operator()<char const*>("kRegistrationGetProperty", &object, "kRequest", &xdict);
    xpc_release(object);
    v11 = xdict;
    xdict = xpc_null_create();
    xpc_release(xdict);
    object = &v11;
    v8 = "kRegistrationOnlyHomeNetwork";
    xpc::dict::object_proxy::operator=(&object, &v9);
    xpc_release(v9);
    v9 = 0;
    xdict = xpc_null_create();
    v2 = SendXpcMessage(a1, &v11, &xdict);
    *a2 = 1;
    if (MEMORY[0x1865E16C0](xdict) == MEMORY[0x1E69E9E80] && xpc_dictionary_get_value(xdict, "kRegistrationOnlyHomeNetwork"))
    {
      object = &xdict;
      v8 = "kRegistrationOnlyHomeNetwork";
      xpc::dict::object_proxy::operator xpc::object(&object, &v6);
      *a2 = xpc::dyn_cast_or_default(&v6, 1);
      xpc_release(v6);
    }

    xpc_release(xdict);
    xpc_release(v11);
  }

  return v2;
}

uint64_t _CTServerConnectionIsCDMAInternationalRoamingSettingAllowed(uint64_t a1, _BYTE *a2)
{
  v2 = 0x1600000001;
  if (a1 && a2)
  {
    xpc::dict_creator::dict_creator(&object);
    xpc::dict_creator::operator()<char const*>("kRegistrationGetProperty", &object, "kRequest", &xdict);
    xpc_release(object);
    v11 = xdict;
    xdict = xpc_null_create();
    xpc_release(xdict);
    object = &v11;
    v8 = "kRegistrationIsCDMAInternationalRoamingSettingAllowed";
    xpc::dict::object_proxy::operator=(&object, &v9);
    xpc_release(v9);
    v9 = 0;
    xdict = xpc_null_create();
    v2 = SendXpcMessage(a1, &v11, &xdict);
    *a2 = 0;
    if (MEMORY[0x1865E16C0](xdict) == MEMORY[0x1E69E9E80] && xpc_dictionary_get_value(xdict, "kRegistrationIsCDMAInternationalRoamingSettingAllowed"))
    {
      object = &xdict;
      v8 = "kRegistrationIsCDMAInternationalRoamingSettingAllowed";
      xpc::dict::object_proxy::operator xpc::object(&object, &v6);
      *a2 = xpc::dyn_cast_or_default(&v6, 0);
      xpc_release(v6);
    }

    xpc_release(xdict);
    xpc_release(v11);
  }

  return v2;
}

uint64_t _CTServerConnectionGetCDMAInternationalRoaming(uint64_t a1, _BYTE *a2)
{
  v2 = 0x1600000001;
  if (a1 && a2)
  {
    xpc::dict_creator::dict_creator(&object);
    xpc::dict_creator::operator()<char const*>("kRegistrationGetProperty", &object, "kRequest", &xdict);
    xpc_release(object);
    v11 = xdict;
    xdict = xpc_null_create();
    xpc_release(xdict);
    object = &v11;
    v8 = "kRegistrationCDMAInternationalRoaming";
    xpc::dict::object_proxy::operator=(&object, &v9);
    xpc_release(v9);
    v9 = 0;
    xdict = xpc_null_create();
    v2 = SendXpcMessage(a1, &v11, &xdict);
    *a2 = 0;
    if (MEMORY[0x1865E16C0](xdict) == MEMORY[0x1E69E9E80] && xpc_dictionary_get_value(xdict, "kRegistrationCDMAInternationalRoaming"))
    {
      object = &xdict;
      v8 = "kRegistrationCDMAInternationalRoaming";
      xpc::dict::object_proxy::operator xpc::object(&object, &v6);
      *a2 = xpc::dyn_cast_or_default(&v6, 0);
      xpc_release(v6);
    }

    xpc_release(xdict);
    xpc_release(v11);
  }

  return v2;
}

uint64_t _CTServerConnectionSetCDMAInternationalRoaming(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  if (!a1)
  {
    return 0x1600000001;
  }

  xpc::dict_creator::dict_creator(object);
  xpc::dict_creator::operator()<char const*>("kRegistrationSetPropertySync", object, "kRequest", &xdict);
  xpc_release(object[0]);
  v6 = xdict;
  v14 = xdict;
  xdict = xpc_null_create();
  xpc_release(xdict);
  v7 = xpc_int64_create(a2);
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  xpc_dictionary_set_value(v6, "kRegistrationCDMAInternationalRoaming", v7);
  v8 = xpc_null_create();
  xpc_release(v7);
  xpc_release(v8);
  xdict = xpc_null_create();
  v9 = SendXpcMessage(a1, &v14, &xdict);
  if (a3)
  {
    *a3 = 0;
    if (MEMORY[0x1865E16C0](xdict) == MEMORY[0x1E69E9E80])
    {
      if (xpc_dictionary_get_value(xdict, "kRegistrationCDMAInternationalRoaming"))
      {
        object[0] = &xdict;
        object[1] = "kRegistrationCDMAInternationalRoaming";
        xpc::dict::object_proxy::operator xpc::object(object, &v12);
        *a3 = xpc::dyn_cast_or_default(&v12, 0);
        xpc_release(v12);
      }
    }
  }

  xpc_release(xdict);
  xpc_release(v14);
  return v9;
}

uint64_t _CTServerConnectionCopySupportedDataRates(uint64_t a1, __CFArray **a2)
{
  v2 = 0x1600000001;
  if (a1 && a2)
  {
    xpc::dict_creator::dict_creator(&object);
    xpc::dict_creator::operator()<char const*>("kRegistrationGetProperty", &object, "kRequest", &xdict);
    xpc_release(object);
    v17 = xdict;
    xdict = xpc_null_create();
    xpc_release(xdict);
    object = &v17;
    v14 = "kRegistrationSupportedDataRates";
    xpc::dict::object_proxy::operator=(&object, &v15);
    xpc_release(v15);
    v15 = 0;
    xdict = xpc_null_create();
    v2 = SendXpcMessage(a1, &v17, &xdict);
    *a2 = 0;
    if (MEMORY[0x1865E16C0](xdict) == MEMORY[0x1E69E9E80] && xpc_dictionary_get_value(xdict, "kRegistrationSupportedDataRates"))
    {
      xarray = 0;
      object = &xdict;
      v14 = "kRegistrationSupportedDataRates";
      xpc::dict::object_proxy::operator xpc::array(&object, &xarray);
      if (MEMORY[0x1865E16C0](xarray) == MEMORY[0x1E69E9E50])
      {
        count = xpc_array_get_count(xarray);
        Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], count, MEMORY[0x1E695E9C0]);
        if (count)
        {
          for (i = 0; i != count; ++i)
          {
            object = &xarray;
            v14 = i;
            xpc::array::object_proxy::operator xpc::object(&object, &v11);
            v8 = xpc::dyn_cast_or_default(&v11, 0);
            xpc_release(v11);
            DataRateString = getDataRateString(v8);
            CFArrayAppendValue(Mutable, DataRateString);
          }
        }

        *a2 = Mutable;
      }

      xpc_release(xarray);
    }

    xpc_release(xdict);
    xpc_release(v17);
  }

  return v2;
}

uint64_t _CTServerConnectionShouldDiscourageDisableLteDataRate(uint64_t a1, _BYTE *a2)
{
  v2 = 0x1600000001;
  if (a1 && a2)
  {
    xpc::dict_creator::dict_creator(&object);
    xpc::dict_creator::operator()<char const*>("kRegistrationGetProperty", &object, "kRequest", &xdict);
    xpc_release(object);
    v11 = xdict;
    xdict = xpc_null_create();
    xpc_release(xdict);
    object = &v11;
    v8 = "kRegistrationDiscourageDisableLteDataRate";
    xpc::dict::object_proxy::operator=(&object, &v9);
    xpc_release(v9);
    v9 = 0;
    xdict = xpc_null_create();
    v2 = SendXpcMessage(a1, &v11, &xdict);
    *a2 = 0;
    if (MEMORY[0x1865E16C0](xdict) == MEMORY[0x1E69E9E80] && xpc_dictionary_get_value(xdict, "kRegistrationDiscourageDisableLteDataRate"))
    {
      object = &xdict;
      v8 = "kRegistrationDiscourageDisableLteDataRate";
      xpc::dict::object_proxy::operator xpc::object(&object, &v6);
      *a2 = xpc::dyn_cast_or_default(&v6, 0);
      xpc_release(v6);
    }

    xpc_release(xdict);
    xpc_release(v11);
  }

  return v2;
}

uint64_t _CTServerConnectionShouldWarnDisabledLteMayImpactService(uint64_t a1, _BYTE *a2)
{
  v2 = 0x1600000001;
  if (a1 && a2)
  {
    xpc::dict_creator::dict_creator(&object);
    xpc::dict_creator::operator()<char const*>("kRegistrationGetProperty", &object, "kRequest", &xdict);
    xpc_release(object);
    v11 = xdict;
    xdict = xpc_null_create();
    xpc_release(xdict);
    object = &v11;
    v8 = "kRegistrationShouldWarnLteDisabled";
    xpc::dict::object_proxy::operator=(&object, &v9);
    xpc_release(v9);
    v9 = 0;
    xdict = xpc_null_create();
    v2 = SendXpcMessage(a1, &v11, &xdict);
    *a2 = 0;
    if (MEMORY[0x1865E16C0](xdict) == MEMORY[0x1E69E9E80] && xpc_dictionary_get_value(xdict, "kRegistrationShouldWarnLteDisabled"))
    {
      object = &xdict;
      v8 = "kRegistrationShouldWarnLteDisabled";
      xpc::dict::object_proxy::operator xpc::object(&object, &v6);
      *a2 = xpc::dyn_cast_or_default(&v6, 0);
      xpc_release(v6);
    }

    xpc_release(xdict);
    xpc_release(v11);
  }

  return v2;
}

uint64_t _CTServerConnectionFetchTimeFromNetwork(uint64_t a1, unsigned int a2, int *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = 0x1600000001;
  if (a1 && a2 - 1 <= 1 && a3)
  {
    *a3 = 2;
    xpc::dict_creator::dict_creator(&object);
    xpc::dict_creator::operator()<char const*>("kFetchTimeFromNetwork", &object, "kRequest", &xdict);
    xpc_release(object);
    v7 = xdict;
    v16 = xdict;
    xdict = xpc_null_create();
    xpc_release(xdict);
    v8 = xpc_int64_create(a2);
    if (!v8)
    {
      v8 = xpc_null_create();
    }

    xpc_dictionary_set_value(v7, "kNetworkTimeFetchRequestType", v8);
    v9 = xpc_null_create();
    xpc_release(v8);
    xpc_release(v9);
    xdict = xpc_null_create();
    v3 = SendXpcMessage(a1, &v16, &xdict);
    if (MEMORY[0x1865E16C0](xdict) == MEMORY[0x1E69E9E80] && xpc_dictionary_get_value(xdict, "kNetworkTimeFetchResult"))
    {
      object = &xdict;
      v18 = "kNetworkTimeFetchResult";
      xpc::dict::object_proxy::operator xpc::object(&object, &v14);
      *a3 = xpc::dyn_cast_or_default(&v14, 2);
      xpc_release(v14);
    }

    v10 = CTLogRegistration();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *a3;
      LODWORD(object) = 67109376;
      HIDWORD(object) = a2;
      LOWORD(v18) = 1024;
      *(&v18 + 2) = v11;
      _os_log_impl(&dword_182E9B000, v10, OS_LOG_TYPE_DEFAULT, "Fetching time from network (%d) result was: %d", &object, 0xEu);
    }

    xpc_release(xdict);
    xpc_release(v16);
  }

  v12 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t _CTServerConnectionSetTimeCacheValidityPeriod(void *a1, int a2)
{
  if (!a1)
  {
    return 0x1600000001;
  }

  xpc::dict_creator::dict_creator(&object);
  xpc::dict_creator::operator()<char const*>("kSetTimeCacheValidityPeriod", &object, "kRequest", &v10);
  xpc_release(object);
  v4 = v10;
  object = v10;
  v10 = xpc_null_create();
  xpc_release(v10);
  v5 = xpc_int64_create(a2);
  if (!v5)
  {
    v5 = xpc_null_create();
  }

  xpc_dictionary_set_value(v4, "kValidityPeriod", v5);
  v6 = xpc_null_create();
  xpc_release(v5);
  xpc_release(v6);
  v8 = SendXpcMessage(a1, &object, 0, v7);
  xpc_release(object);
  return v8;
}

uint64_t _CTServerConnectionSetCapabilityExtended(uint64_t a1, CFTypeRef cf1, int a3, uint64_t a4)
{
  v4 = 0x1600000001;
  if (a1 && cf1 && (CFEqual(cf1, @"kCTCapabilityVoLTE") || CFEqual(cf1, @"kCTCapabilityWiFiCalling") || CFEqual(cf1, @"kCTCapabilityPhoneServices")))
  {
    xpc::dict_creator::dict_creator(&object);
    xpc::dict_creator::operator()<char const*>("kRegistrationSetPropertySync", &object, "kRequest", &v17);
    xpc_release(object);
    v9 = v17;
    object = v17;
    v17 = xpc_null_create();
    xpc_release(v17);
    v10 = _CFXPCCreateXPCObjectFromCFObject();
    if (!v10)
    {
      v10 = xpc_null_create();
    }

    xpc_dictionary_set_value(v9, "kTelephonyCapability", v10);
    v11 = xpc_null_create();
    xpc_release(v10);
    xpc_release(v11);
    v12 = xpc_BOOL_create(a3 != 0);
    if (!v12)
    {
      v12 = xpc_null_create();
    }

    xpc_dictionary_set_value(v9, "kTelephonyCapabilityStatus", v12);
    v13 = xpc_null_create();
    xpc_release(v12);
    xpc_release(v13);
    if (a4)
    {
      v14 = _CFXPCCreateXPCObjectFromCFObject();
      if (!v14)
      {
        v14 = xpc_null_create();
      }

      xpc_dictionary_set_value(v9, "kTelephonyCapabilityInformation", v14);
      v15 = xpc_null_create();
      xpc_release(v14);
      xpc_release(v15);
    }

    v17 = xpc_null_create();
    v4 = SendXpcMessage(a1, &object, &v17);
    xpc_release(v17);
    xpc_release(object);
  }

  return v4;
}

unint64_t _CTServerConnectionGetCapabilityStatus(uint64_t a1, const void *a2, _BYTE *a3)
{
  cf = 0;
  CapabilityStatusExtended = _CTServerConnectionGetCapabilityStatusExtended(a1, a2, a3, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  return CapabilityStatusExtended;
}

unint64_t _CTServerConnectionGetCapabilityStatusExtended(uint64_t a1, CFTypeRef cf1, _BYTE *a3, xpc_object_t *a4)
{
  v4 = 0x1600000000;
  v5 = 1;
  if (cf1 && a1 && a3)
  {
    if (!CFEqual(cf1, @"kCTCapabilityVoLTE") && !CFEqual(cf1, @"kCTCapabilityWiFiCalling") && !CFEqual(cf1, @"kCTCapabilityPhoneServices"))
    {
      v5 = 1;
      return v4 | v5;
    }

    xpc::dict_creator::dict_creator(&object);
    xpc::dict_creator::operator()<char const*>("kRegistrationGetProperty", &object, "kRequest", &xdict);
    xpc_release(object);
    v10 = xdict;
    v24 = xdict;
    xdict = xpc_null_create();
    xpc_release(xdict);
    v11 = _CFXPCCreateXPCObjectFromCFObject();
    if (!v11)
    {
      v11 = xpc_null_create();
    }

    xpc_dictionary_set_value(v10, "kTelephonyCapability", v11);
    v12 = xpc_null_create();
    xpc_release(v11);
    xpc_release(v12);
    object = &v24;
    v21 = "kTelephonyCapabilityStatus";
    xpc::dict::object_proxy::operator=(&object, &v22);
    xpc_release(v22);
    v22 = 0;
    xdict = xpc_null_create();
    v13 = SendXpcMessageWithCaching(a1, &v24, &xdict);
    if (MEMORY[0x1865E16C0](xdict) == MEMORY[0x1E69E9E80])
    {
      *a3 = 0;
      if (!xpc_dictionary_get_value(xdict, "kTelephonyCapabilityStatus"))
      {
        v4 = 0x2300000000;
        v5 = 1;
        goto LABEL_11;
      }

      object = &xdict;
      v21 = "kTelephonyCapabilityStatus";
      xpc::dict::object_proxy::operator xpc::object(&object, &v19);
      *a3 = xpc::dyn_cast_or_default(&v19, 0);
      xpc_release(v19);
      value = xpc_dictionary_get_value(xdict, "kTelephonyCapabilityInformation");
      if (a4 && value)
      {
        v19 = 0;
        object = &xdict;
        v21 = "kTelephonyCapabilityInformation";
        xpc::dict::object_proxy::operator xpc::object(&object, &v17);
        xpc::bridge(&cf, &v17, v16);
        ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef<void const,void>(&v19, &cf);
        if (cf)
        {
          CFRelease(cf);
        }

        xpc_release(v17);
        *a4 = v19;
      }
    }

    v4 = v13 & 0xFFFFFFFF00000000;
    v5 = v13;
LABEL_11:
    xpc_release(xdict);
    xpc_release(v24);
  }

  return v4 | v5;
}

unint64_t _CTServerConnectionCanSetCapability(uint64_t a1, const void *a2, _BYTE *a3)
{
  cf = 0;
  CanSetCapabilityExtended = _CTServerConnectionCanSetCapabilityExtended(a1, a2, a3, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  return CanSetCapabilityExtended;
}

unint64_t _CTServerConnectionCanSetCapabilityExtended(uint64_t a1, CFTypeRef cf1, _BYTE *a3, xpc_object_t *a4)
{
  v4 = 0x1600000000;
  v5 = 1;
  if (cf1 && a1 && a3)
  {
    if (!CFEqual(cf1, @"kCTCapabilityVoLTE") && !CFEqual(cf1, @"kCTCapabilityWiFiCalling") && !CFEqual(cf1, @"kCTCapabilityPhoneServices"))
    {
      v5 = 1;
      return v4 | v5;
    }

    xpc::dict_creator::dict_creator(&object);
    xpc::dict_creator::operator()<char const*>("kRegistrationGetProperty", &object, "kRequest", &xdict);
    xpc_release(object);
    v10 = xdict;
    v24 = xdict;
    xdict = xpc_null_create();
    xpc_release(xdict);
    v11 = _CFXPCCreateXPCObjectFromCFObject();
    if (!v11)
    {
      v11 = xpc_null_create();
    }

    xpc_dictionary_set_value(v10, "kTelephonyCapability", v11);
    v12 = xpc_null_create();
    xpc_release(v11);
    xpc_release(v12);
    object = &v24;
    v21 = "kTelephonyCapabilityCanSet";
    xpc::dict::object_proxy::operator=(&object, &v22);
    xpc_release(v22);
    v22 = 0;
    xdict = xpc_null_create();
    v13 = SendXpcMessageWithCaching(a1, &v24, &xdict);
    if (MEMORY[0x1865E16C0](xdict) == MEMORY[0x1E69E9E80])
    {
      *a3 = 0;
      if (!xpc_dictionary_get_value(xdict, "kTelephonyCapabilityCanSet"))
      {
        v4 = 0x2300000000;
        v5 = 1;
        goto LABEL_11;
      }

      object = &xdict;
      v21 = "kTelephonyCapabilityCanSet";
      xpc::dict::object_proxy::operator xpc::object(&object, &v19);
      *a3 = xpc::dyn_cast_or_default(&v19, 0);
      xpc_release(v19);
      value = xpc_dictionary_get_value(xdict, "kTelephonyCapabilityInformation");
      if (a4 && value)
      {
        v19 = 0;
        object = &xdict;
        v21 = "kTelephonyCapabilityInformation";
        xpc::dict::object_proxy::operator xpc::object(&object, &v17);
        xpc::bridge(&cf, &v17, v16);
        ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef<void const,void>(&v19, &cf);
        if (cf)
        {
          CFRelease(cf);
        }

        xpc_release(v17);
        *a4 = v19;
      }
    }

    v4 = v13 & 0xFFFFFFFF00000000;
    v5 = v13;
LABEL_11:
    xpc_release(xdict);
    xpc_release(v24);
  }

  return v4 | v5;
}

uint64_t _CTServerConnectionPhoneServicesAccountStatusChanged(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0x1600000001;
  }

  xpc::dict_creator::dict_creator(&object);
  xpc::dict_creator::operator()<char const*>("kRegistrationUpdateRegisteredLocationStatus", &object, "kRequest", &v10);
  xpc_release(object);
  v4 = v10;
  object = v10;
  v10 = xpc_null_create();
  xpc_release(v10);
  if (a2)
  {
    v6 = _CFXPCCreateXPCObjectFromCFObject();
    if (!v6)
    {
      v6 = xpc_null_create();
    }

    xpc_dictionary_set_value(v4, "kTelephonyCapabilityInformation", v6);
    v7 = xpc_null_create();
    xpc_release(v6);
    xpc_release(v7);
  }

  v8 = SendXpcMessage(a1, &object, 0, v5);
  xpc_release(object);
  return v8;
}

unint64_t _CTServerConnectionRegistrationNotificationAssertionCreate(CFTypeRef cf, uint64_t a2, void *a3)
{
  result = 0x1600000001;
  if (cf)
  {
    if (a3)
    {
      *a3 = 0;
      v7 = CFGetAllocator(cf);
      if (result)
      {
        v8 = result;
        xpc::dict_creator::dict_creator(&object);
        xpc::dict_creator::operator()<char const*>("kRegistrationAddNotificationAssertion", &object, "kRequest", &xdict);
        xpc_release(object);
        v9 = xdict;
        object = xdict;
        xdict = xpc_null_create();
        xpc_release(xdict);
        if (a2)
        {
          v10 = _CFXPCCreateXPCObjectFromCFObject();
          if (!v10)
          {
            v10 = xpc_null_create();
          }

          xpc_dictionary_set_value(v9, "kRegistrationAssertionName", v10);
          v11 = xpc_null_create();
          xpc_release(v10);
          xpc_release(v11);
        }

        xdict = xpc_null_create();
        v12 = SendXpcMessage(cf, &object, &xdict);
        v13 = v12;
        v14 = v12 & 0xFFFFFFFF00000000;
        if (MEMORY[0x1865E16C0](xdict) == MEMORY[0x1E69E9E80] && xpc_dictionary_get_value(xdict, "kRegistrationAddNotificationAssertion"))
        {
          *a3 = v8;
          v15 = v13;
        }

        else
        {
          CFRelease(v8);
          v15 = 2;
        }

        xpc_release(xdict);
        xpc_release(object);
        return v15 | v14;
      }
    }
  }

  return result;
}

uint64_t _CTServerConnectionCopyISOForMCC(uint64_t a1, ctu *a2, void *a3)
{
  v3 = 0x1600000001;
  if (a1 && a2 && a3)
  {
    xpc::dict_creator::dict_creator(object);
    xpc::dict_creator::operator()<char const*>("kRegistrationGetProperty", object, "kRequest", &xdict);
    xpc_release(object[0]);
    v7 = xdict;
    v18 = xdict;
    xdict = xpc_null_create();
    xpc_release(xdict);
    ctu::cf_to_xpc(&value, a2, v8);
    xpc_dictionary_set_value(v7, "kRegistrationISOForMCC", value);
    v9 = value;
    value = xpc_null_create();
    xpc_release(v9);
    xpc_release(value);
    value = 0;
    xdict = xpc_null_create();
    v3 = SendXpcMessage(a1, &v18, &xdict);
    *a3 = 0;
    if (MEMORY[0x1865E16C0](xdict) == MEMORY[0x1E69E9E80] && xpc_dictionary_get_value(xdict, "kRegistrationISOForMCC"))
    {
      v15 = 0;
      object[0] = &xdict;
      object[1] = "kRegistrationISOForMCC";
      xpc::dict::object_proxy::operator xpc::object(object, &v13);
      xpc::bridge(&cf, &v13, v10);
      ctu::cf::CFSharedRef<__CFString const>::CFSharedRef<void const,void>(&v15, &cf);
      if (cf)
      {
        CFRelease(cf);
      }

      xpc_release(v13);
      *a3 = v15;
    }

    xpc_release(xdict);
    xpc_release(v18);
  }

  return v3;
}

uint64_t _CTServerConnectionEnableEmergencyCallBackMode(void *a1, int a2)
{
  if (!a1)
  {
    return 0x1600000001;
  }

  xpc::dict_creator::dict_creator(&object);
  xpc::dict_creator::operator()<char const*>("kRegistrationSetProperty", &object, "kRequest", &v10);
  xpc_release(object);
  v4 = v10;
  object = v10;
  v10 = xpc_null_create();
  xpc_release(v10);
  v5 = xpc_BOOL_create(a2 != 0);
  if (!v5)
  {
    v5 = xpc_null_create();
  }

  xpc_dictionary_set_value(v4, "kRegistrationEmergencyCallBackMode", v5);
  v6 = xpc_null_create();
  xpc_release(v5);
  xpc_release(v6);
  v8 = SendXpcMessage(a1, &object, 0, v7);
  xpc_release(object);
  return v8;
}

uint64_t _CTServerConnectionAddVictimFreq(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
  if (!a1)
  {
    return 0x1600000001;
  }

  xpc::dict_creator::dict_creator(object);
  xpc::dict_creator::operator()<char const*>("kRegistrationSetPropertySync", object, "kRequest", &v22);
  xpc_release(object[0]);
  xdict = v22;
  v22 = xpc_null_create();
  xpc_release(v22);
  object[0] = &xdict;
  object[1] = "kRegistrationAdd";
  xpc::dict::object_proxy::operator=(object, &v21);
  xpc_release(v21);
  v21 = 0;
  v10 = xpc_int64_create(a2);
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, "kRegistrationDesenseClient", v10);
  v11 = xpc_null_create();
  xpc_release(v10);
  xpc_release(v11);
  v12 = xpc_uint64_create(a3);
  if (!v12)
  {
    v12 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, "kRegistrationVictimFreq", v12);
  v13 = xpc_null_create();
  xpc_release(v12);
  xpc_release(v13);
  v14 = xpc_int64_create(a4);
  if (!v14)
  {
    v14 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, "kRegistrationBandwidth", v14);
  v15 = xpc_null_create();
  xpc_release(v14);
  xpc_release(v15);
  v16 = xpc_int64_create(a5);
  if (!v16)
  {
    v16 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, "kRegistrationPriority", v16);
  v17 = xpc_null_create();
  xpc_release(v16);
  xpc_release(v17);
  object[0] = xpc_null_create();
  v18 = SendXpcMessage(a1, &xdict, object);
  xpc_release(object[0]);
  xpc_release(xdict);
  return v18;
}

uint64_t _CTServerConnectionRemoveVictimFreq(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (!a1)
  {
    return 0x1600000001;
  }

  xpc::dict_creator::dict_creator(object);
  xpc::dict_creator::operator()<char const*>("kRegistrationSetPropertySync", object, "kRequest", &v14);
  xpc_release(object[0]);
  xdict = v14;
  v14 = xpc_null_create();
  xpc_release(v14);
  object[0] = &xdict;
  object[1] = "kRegistrationRemove";
  xpc::dict::object_proxy::operator=(object, &v13);
  xpc_release(v13);
  v13 = 0;
  v6 = xpc_int64_create(a2);
  if (!v6)
  {
    v6 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, "kRegistrationDesenseClient", v6);
  v7 = xpc_null_create();
  xpc_release(v6);
  xpc_release(v7);
  v8 = xpc_uint64_create(a3);
  if (!v8)
  {
    v8 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, "kRegistrationVictimFreq", v8);
  v9 = xpc_null_create();
  xpc_release(v8);
  xpc_release(v9);
  object[0] = xpc_null_create();
  v10 = SendXpcMessage(a1, &xdict, object);
  xpc_release(object[0]);
  xpc_release(xdict);
  return v10;
}

uint64_t _CTServerConnectionClearVictimFreq(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    return 0x1600000001;
  }

  xpc::dict_creator::dict_creator(&object);
  xpc::dict_creator::operator()<char const*>("kRegistrationSetPropertySync", &object, "kRequest", &v12);
  xpc_release(object);
  xdict = v12;
  v12 = xpc_null_create();
  xpc_release(v12);
  object = &xdict;
  v10 = "kRegistrationClear";
  xpc::dict::object_proxy::operator=(&object, &v11);
  xpc_release(v11);
  v11 = 0;
  v4 = xpc_int64_create(a2);
  if (!v4)
  {
    v4 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, "kRegistrationDesenseClient", v4);
  v5 = xpc_null_create();
  xpc_release(v4);
  xpc_release(v5);
  object = &xdict;
  v10 = "kRegistrationVictimFreq";
  xpc::dict::object_proxy::operator=(&object, &v8);
  xpc_release(v8);
  v8 = 0;
  object = xpc_null_create();
  v6 = SendXpcMessage(a1, &xdict, &object);
  xpc_release(object);
  xpc_release(xdict);
  return v6;
}

uint64_t _CTServerConnectionBlockBBFreqReport(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 0x1600000001;
  }

  xpc::dict_creator::dict_creator(&object);
  xpc::dict_creator::operator()<char const*>("kRegistrationSetPropertySync", &object, "kRequest", &v9);
  xpc_release(object);
  v4 = v9;
  object = v9;
  v9 = xpc_null_create();
  xpc_release(v9);
  v5 = xpc_BOOL_create(a2 != 0);
  if (!v5)
  {
    v5 = xpc_null_create();
  }

  xpc_dictionary_set_value(v4, "kRegistrationBlockBBFreqReport", v5);
  v6 = xpc_null_create();
  xpc_release(v5);
  xpc_release(v6);
  v9 = xpc_null_create();
  v7 = SendXpcMessage(a1, &object, &v9);
  xpc_release(v9);
  xpc_release(object);
  return v7;
}

uint64_t _CTServerConnectionCopyListVictimFreq(uint64_t a1, void *a2)
{
  v2 = 0x1600000001;
  if (a1 && a2)
  {
    xpc::dict_creator::dict_creator(object);
    xpc::dict_creator::operator()<char const*>("kRegistrationGetProperty", object, "kRequest", &v9);
    xpc_release(object[0]);
    v10 = v9;
    v9 = xpc_null_create();
    xpc_release(v9);
    object[0] = &v10;
    object[1] = "kRegistrationVictimFreq";
    xpc::dict::object_proxy::operator=(object, &v8);
    xpc_release(v8);
    v8 = 0;
    object[0] = xpc_null_create();
    v2 = SendXpcMessage(a1, &v10, object);
    *a2 = 0;
    if (MEMORY[0x1865E16C0](object[0]) == MEMORY[0x1E69E9E80] && xpc_dictionary_get_value(object[0], "kRegistrationVictimFreq"))
    {
      v9 = 0;
      xpc_dictionary_get_value(object[0], "kRegistrationVictimFreq");
      v6 = _CFXPCCreateCFObjectFromXPCObject();
      ctu::cf::CFSharedRef<__CFString const>::CFSharedRef<void const,void>(&v9, &v6);
      *a2 = v9;
    }

    xpc_release(object[0]);
    xpc_release(v10);
  }

  return v2;
}

uint64_t _CTServerConnectionGetUplinkFreq(uint64_t a1, uint64_t *a2, _DWORD *a3)
{
  v3 = 0x1600000001;
  if (a1 && a2 && a3)
  {
    xpc::dict_creator::dict_creator(&object);
    xpc::dict_creator::operator()<char const*>("kRegistrationGetProperty", &object, "kRequest", &xdict);
    xpc_release(object);
    v13 = xdict;
    xdict = xpc_null_create();
    xpc_release(xdict);
    object = &v13;
    v10 = "kRegistrationUplinkFreq";
    xpc::dict::object_proxy::operator=(&object, &v11);
    xpc_release(v11);
    v11 = 0;
    xdict = xpc_null_create();
    v3 = SendXpcMessage(a1, &v13, &xdict);
    *a2 = 0;
    *a3 = 0;
    if (MEMORY[0x1865E16C0](xdict) == MEMORY[0x1E69E9E80] && xpc_dictionary_get_value(xdict, "kRegistrationUplinkFreq") && xpc_dictionary_get_value(xdict, "kRegistrationBandwidth"))
    {
      object = &xdict;
      v10 = "kRegistrationUplinkFreq";
      xpc::dict::object_proxy::operator xpc::object(&object, &v8);
      *a2 = xpc::dyn_cast_or_default(&v8, 0);
      xpc_release(v8);
      object = &xdict;
      v10 = "kRegistrationBandwidth";
      xpc::dict::object_proxy::operator xpc::object(&object, &v8);
      *a3 = xpc::dyn_cast_or_default(&v8, 0);
      xpc_release(v8);
    }

    xpc_release(xdict);
    xpc_release(v13);
  }

  return v3;
}

uint64_t _CTServerConnectionCopyRegistrationInfo(const void *a1, __CFDictionary **a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v2 = 0x1600000001;
  if (a1 && a2)
  {
    v40 = 0;
    xpc::dict_creator::dict_creator(&object);
    xpc::dict_creator::operator()<char const*>("kRegistrationCopyInfo", &object, "kRequest", &xdict);
    xpc_release(object);
    v40 = xdict;
    xdict = xpc_null_create();
    xpc_release(xdict);
    *&object = &v40;
    *(&object + 1) = "kRegistrationStatus";
    xpc::dict::object_proxy::operator=(&object, &v38);
    xpc_release(v38);
    v38 = 0;
    *&object = &v40;
    *(&object + 1) = "kRegistrationDisplayStatus";
    xpc::dict::object_proxy::operator=(&object, &v37);
    xpc_release(v37);
    v37 = 0;
    *&object = &v40;
    *(&object + 1) = "kRegistrationIsInHomeCountry";
    xpc::dict::object_proxy::operator=(&object, &v36);
    xpc_release(v36);
    v36 = 0;
    *&object = &v40;
    *(&object + 1) = "kRegistrationIsForcedRegisteredHome";
    xpc::dict::object_proxy::operator=(&object, &v35);
    xpc_release(v35);
    v35 = 0;
    *&object = &v40;
    *(&object + 1) = "kRegistrationCampOnly";
    xpc::dict::object_proxy::operator=(&object, &v34);
    xpc_release(v34);
    v34 = 0;
    *&object = &v40;
    *(&object + 1) = "kRegistrationAgentStatus";
    xpc::dict::object_proxy::operator=(&object, &v33);
    xpc_release(v33);
    v33 = 0;
    *&object = &v40;
    *(&object + 1) = "kRegistrationIMSContext";
    xpc::dict::object_proxy::operator=(&object, &v32);
    xpc_release(v32);
    v32 = 0;
    xdict = 0;
    xdict = xpc_null_create();
    v2 = SendXpcMessage(a1, &v40, &xdict);
    *a2 = 0;
    if (MEMORY[0x1865E16C0](xdict) == MEMORY[0x1E69E9E80])
    {
      v5 = CFGetAllocator(a1);
      Mutable = CFDictionaryCreateMutable(v5, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (Mutable)
      {
        v7 = Mutable;
        if (xpc_dictionary_get_value(xdict, "kRegistrationStatus"))
        {
          *&object = &xdict;
          *(&object + 1) = "kRegistrationStatus";
          xpc::dict::object_proxy::operator xpc::object(&object, &v31);
          v8 = xpc::dyn_cast_or_default(&v31, 0);
          xpc_release(v31);
          v9 = registrationStatusToRegistrationStatusString(v8);
          v10 = CTLogRegistration();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(object) = 138412290;
            *(&object + 4) = v9;
            _os_log_impl(&dword_182E9B000, v10, OS_LOG_TYPE_DEFAULT, "Registration status: %@", &object, 0xCu);
          }

          CFDictionaryAddValue(v7, @"kCTRegistrationStatus", v9);
        }

        if (xpc_dictionary_get_value(xdict, "kRegistrationDisplayStatus"))
        {
          *&object = &xdict;
          *(&object + 1) = "kRegistrationDisplayStatus";
          xpc::dict::object_proxy::operator xpc::object(&object, &v31);
          v11 = xpc::dyn_cast_or_default(&v31, 0);
          xpc_release(v31);
          v12 = registrationStatusToRegistrationStatusString(v11);
          v13 = CTLogRegistration();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(object) = 138412290;
            *(&object + 4) = v12;
            _os_log_impl(&dword_182E9B000, v13, OS_LOG_TYPE_DEFAULT, "Registration display status: %@", &object, 0xCu);
          }

          CFDictionaryAddValue(v7, @"kCTRegistrationDisplayStatus", v12);
        }

        value = xpc_dictionary_get_value(xdict, "kRegistrationIsInHomeCountry");
        v15 = MEMORY[0x1E695E4D0];
        v16 = MEMORY[0x1E695E4C0];
        if (value)
        {
          *&object = &xdict;
          *(&object + 1) = "kRegistrationIsInHomeCountry";
          xpc::dict::object_proxy::operator xpc::object(&object, &v31);
          v17 = xpc::dyn_cast_or_default(&v31, 0);
          xpc_release(v31);
          if (v17)
          {
            v18 = v15;
          }

          else
          {
            v18 = v16;
          }

          v19 = *v18;
          v20 = CTLogRegistration();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(object) = 138412290;
            *(&object + 4) = v19;
            _os_log_impl(&dword_182E9B000, v20, OS_LOG_TYPE_DEFAULT, "In Home Country: %@", &object, 0xCu);
          }

          CFDictionaryAddValue(v7, @"kCTRegistrationInHomeCountry", v19);
        }

        if (xpc_dictionary_get_value(xdict, "kRegistrationIsForcedRegisteredHome"))
        {
          *&object = &xdict;
          *(&object + 1) = "kRegistrationIsForcedRegisteredHome";
          xpc::dict::object_proxy::operator xpc::object(&object, &v31);
          v21 = xpc::dyn_cast_or_default(&v31, 0);
          xpc_release(v31);
          if (v21)
          {
            v22 = v15;
          }

          else
          {
            v22 = v16;
          }

          v23 = *v22;
          v24 = CTLogRegistration();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(object) = 138412290;
            *(&object + 4) = v23;
            _os_log_impl(&dword_182E9B000, v24, OS_LOG_TYPE_DEFAULT, "Forced registered home: %@", &object, 0xCu);
          }

          CFDictionaryAddValue(v7, @"kCTRegistrationIsForcedRegisteredHome", v23);
        }

        if (xpc_dictionary_get_value(xdict, "kRegistrationCampOnly"))
        {
          *&object = &xdict;
          *(&object + 1) = "kRegistrationCampOnly";
          xpc::dict::object_proxy::operator xpc::object(&object, &v31);
          v25 = xpc::dyn_cast_or_default(&v31, 0);
          xpc_release(v31);
          if (v25)
          {
            v26 = v15;
          }

          else
          {
            v26 = v16;
          }

          v27 = *v26;
          v28 = CTLogRegistration();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(object) = 138412290;
            *(&object + 4) = v27;
            _os_log_impl(&dword_182E9B000, v28, OS_LOG_TYPE_DEFAULT, "Camp only: %@", &object, 0xCu);
          }

          CFDictionaryAddValue(v7, @"kCTCampOnly", v27);
        }

        if (xpc_dictionary_get_value(xdict, "kRegistrationAgentStatus"))
        {
          *&object = 0;
          xpc_dictionary_get_value(xdict, "kRegistrationAgentStatus");
          v31 = _CFXPCCreateCFObjectFromXPCObject();
          ctu::cf::CFSharedRef<__CFArray const>::CFSharedRef<void const,void>(&object, &v31);
          CFDictionaryAddValue(v7, @"kCTRegistrationIMSStatus", object);
          if (object)
          {
            CFRelease(object);
          }
        }

        if (xpc_dictionary_get_value(xdict, "kRegistrationIMSContext"))
        {
          *&object = 0;
          xpc_dictionary_get_value(xdict, "kRegistrationIMSContext");
          v31 = _CFXPCCreateCFObjectFromXPCObject();
          ctu::cf::CFSharedRef<__CFString const>::CFSharedRef<void const,void>(&object, &v31);
          CFDictionaryAddValue(v7, @"kCTRegistrationIMSContext", object);
          if (object)
          {
            CFRelease(object);
          }
        }

        if (xpc_dictionary_get_value(xdict, "kRegistrationIMSTransportType"))
        {
          *&object = 0;
          xpc_dictionary_get_value(xdict, "kRegistrationIMSTransportType");
          v31 = _CFXPCCreateCFObjectFromXPCObject();
          ctu::cf::CFSharedRef<__CFString const>::CFSharedRef<void const,void>(&object, &v31);
          CFDictionaryAddValue(v7, @"kCTRegistrationIMSTransportType", object);
          if (object)
          {
            CFRelease(object);
          }
        }

        *a2 = v7;
      }
    }

    xpc_release(xdict);
    xpc_release(v40);
  }

  v29 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t _CTServerConnectionCopyBandInfo(uint64_t a1, void *a2)
{
  v2 = 0x1600000001;
  if (a1 && a2)
  {
    xpc::dict_creator::dict_creator(&object);
    xpc::dict_creator::operator()<char const*>("kRegistrationCopyBandInfo", &object, "kRequest", &xdict);
    xpc_release(object);
    v14 = xdict;
    xdict = xpc_null_create();
    xpc_release(xdict);
    object = &v14;
    v11 = "kRegistrationBands";
    xpc::dict::object_proxy::operator=(&object, &v12);
    xpc_release(v12);
    v12 = 0;
    xdict = xpc_null_create();
    v2 = SendXpcMessage(a1, &v14, &xdict);
    *a2 = 0;
    if (MEMORY[0x1865E16C0](xdict) == MEMORY[0x1E69E9E80] && xpc_dictionary_get_value(xdict, "kRegistrationBands"))
    {
      v9 = 0;
      object = &xdict;
      v11 = "kRegistrationBands";
      xpc::dict::object_proxy::operator xpc::object(&object, &v7);
      xpc::bridge(&cf, &v7, v5);
      ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef<void const,void>(&v9, &cf);
      if (cf)
      {
        CFRelease(cf);
      }

      xpc_release(v7);
      *a2 = v9;
    }

    xpc_release(xdict);
    xpc_release(v14);
  }

  return v2;
}

uint64_t _CTServerConnectionSetBandInfo(void *a1, ctu *a2)
{
  v2 = 0x1600000001;
  if (a1 && a2)
  {
    xpc::dict_creator::dict_creator(&object);
    xpc::dict_creator::operator()<char const*>("kRegistrationSetBandInfo", &object, "kRequest", &v11);
    xpc_release(object);
    v5 = v11;
    object = v11;
    v11 = xpc_null_create();
    xpc_release(v11);
    ctu::cf_to_xpc(&value, a2, v6);
    xpc_dictionary_set_value(v5, "kRegistrationBands", value);
    v7 = value;
    value = xpc_null_create();
    xpc_release(v7);
    xpc_release(value);
    value = 0;
    v2 = SendXpcMessage(a1, &object, 0, v8);
    xpc_release(object);
  }

  return v2;
}

uint64_t _CTServerConnectionSetCivicInfoBasedOnCurrentLocation(void *a1, uint64_t a2)
{
  v2 = 0x1600000001;
  if (a1 && a2)
  {
    xpc::dict_creator::dict_creator(&object);
    xpc::dict_creator::operator()<char const*>("kSetCivicInfoBasedOnCurrentLocation", &object, "kRequest", &v15);
    xpc_release(object);
    v4 = v15;
    object = v15;
    v15 = xpc_null_create();
    xpc_release(v15);
    v5 = _CFXPCCreateXPCObjectFromCFObject();
    if (!v5)
    {
      v5 = xpc_null_create();
    }

    xpc_dictionary_set_value(v4, "kCountryCodeBasedOnCurrentLocation", v5);
    v6 = xpc_null_create();
    xpc_release(v5);
    xpc_release(v6);
    v7 = _CFXPCCreateXPCObjectFromCFObject();
    if (!v7)
    {
      v7 = xpc_null_create();
    }

    xpc_dictionary_set_value(v4, "kStateBasedOnCurrentLocation", v7);
    v8 = xpc_null_create();
    xpc_release(v7);
    xpc_release(v8);
    v9 = _CFXPCCreateXPCObjectFromCFObject();
    if (!v9)
    {
      v9 = xpc_null_create();
    }

    xpc_dictionary_set_value(v4, "kCityBasedOnCurrentLocation", v9);
    v10 = xpc_null_create();
    xpc_release(v9);
    xpc_release(v10);
    v11 = _CFXPCCreateXPCObjectFromCFObject();
    if (!v11)
    {
      v11 = xpc_null_create();
    }

    xpc_dictionary_set_value(v4, "kPostalCodeBasedOnCurrentLocation", v11);
    v12 = xpc_null_create();
    xpc_release(v11);
    xpc_release(v12);
    v2 = SendXpcMessage(a1, &object, 0, v13);
    xpc_release(object);
  }

  return v2;
}

uint64_t _CTServerConnectionPhoneServicesGetDeviceList(uint64_t a1, ctu *a2, void *a3)
{
  result = 0x1600000001;
  if (a1 && a2 && a3)
  {
    xpc::dict_creator::dict_creator(object);
    xpc::dict_creator::operator()<char const*>("kPhoneServicesGetDeviceList", object, "kRequest", &xdict);
    xpc_release(object[0]);
    v7 = xdict;
    v19 = xdict;
    xdict = xpc_null_create();
    xpc_release(xdict);
    ctu::cf_to_xpc(&value, a2, v8);
    xpc_dictionary_set_value(v7, "kTelephonyCapability", value);
    v9 = value;
    value = xpc_null_create();
    xpc_release(v9);
    xpc_release(value);
    value = 0;
    xdict = xpc_null_create();
    v10 = SendXpcMessage(a1, &v19, &xdict);
    if (MEMORY[0x1865E16C0](xdict) == MEMORY[0x1E69E9E80])
    {
      if (!xpc_dictionary_get_value(xdict, "kPhoneServicesGetDeviceList"))
      {
        v12 = 0x2300000000;
        v10 = 1;
        goto LABEL_10;
      }

      v16 = 0;
      object[0] = &xdict;
      object[1] = "kPhoneServicesGetDeviceList";
      xpc::dict::object_proxy::operator xpc::object(object, &v14);
      xpc::bridge(&cf, &v14, v11);
      ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef<void const,void>(&v16, &cf);
      if (cf)
      {
        CFRelease(cf);
      }

      xpc_release(v14);
      *a3 = v16;
    }

    v12 = v10 & 0xFFFFFFFF00000000;
    v10 = v10;
LABEL_10:
    xpc_release(xdict);
    xpc_release(v19);
    return v12 | v10;
  }

  return result;
}

uint64_t _CTServerConnectionPhoneServicesGetDeviceInfo(uint64_t a1, ctu *a2, void *a3)
{
  result = 0x1600000001;
  if (a1 && a2 && a3)
  {
    xpc::dict_creator::dict_creator(object);
    xpc::dict_creator::operator()<char const*>("kPhoneServicesGetDeviceInfo", object, "kRequest", &xdict);
    xpc_release(object[0]);
    v7 = xdict;
    v19 = xdict;
    xdict = xpc_null_create();
    xpc_release(xdict);
    ctu::cf_to_xpc(&value, a2, v8);
    xpc_dictionary_set_value(v7, "kTelephonyCapability", value);
    v9 = value;
    value = xpc_null_create();
    xpc_release(v9);
    xpc_release(value);
    value = 0;
    xdict = xpc_null_create();
    v10 = SendXpcMessage(a1, &v19, &xdict);
    if (MEMORY[0x1865E16C0](xdict) == MEMORY[0x1E69E9E80])
    {
      if (!xpc_dictionary_get_value(xdict, "kPhoneServicesGetDeviceInfo"))
      {
        v12 = 0x2300000000;
        v10 = 1;
        goto LABEL_10;
      }

      v16 = 0;
      object[0] = &xdict;
      object[1] = "kPhoneServicesGetDeviceInfo";
      xpc::dict::object_proxy::operator xpc::object(object, &v14);
      xpc::bridge(&cf, &v14, v11);
      ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef<void const,void>(&v16, &cf);
      if (cf)
      {
        CFRelease(cf);
      }

      xpc_release(v14);
      *a3 = v16;
    }

    v12 = v10 & 0xFFFFFFFF00000000;
    v10 = v10;
LABEL_10:
    xpc_release(xdict);
    xpc_release(v19);
    return v12 | v10;
  }

  return result;
}

uint64_t _CTServerConnectionPhoneServicesAddDevice(void *a1, ctu *a2, ctu *a3, ctu *a4)
{
  v4 = 0x1600000001;
  if (a1 && a2 && a4)
  {
    xpc::dict_creator::dict_creator(&object);
    xpc::dict_creator::operator()<char const*>("kPhoneServicesAddDevice", &object, "kRequest", &v21);
    xpc_release(object);
    v9 = v21;
    object = v21;
    v21 = xpc_null_create();
    xpc_release(v21);
    ctu::cf_to_xpc(&value, a2, v10);
    xpc_dictionary_set_value(v9, "kTelephonyCapability", value);
    v11 = value;
    value = xpc_null_create();
    xpc_release(v11);
    xpc_release(value);
    value = 0;
    if (a3)
    {
      ctu::cf_to_xpc(&v19, a3, v12);
      xpc_dictionary_set_value(v9, "kPhoneServicesAccountId", v19);
      v13 = v19;
      v19 = xpc_null_create();
      xpc_release(v13);
      xpc_release(v19);
      v19 = 0;
    }

    ctu::cf_to_xpc(&v18, a4, v12);
    xpc_dictionary_set_value(v9, "kPhoneServicesDeviceId", v18);
    v14 = v18;
    v18 = xpc_null_create();
    xpc_release(v14);
    xpc_release(v18);
    v18 = 0;
    v15 = xpc_null_create();
    v4 = SendXpcMessage(a1, &object, 0, v16);
    xpc_release(v15);
    xpc_release(object);
  }

  return v4;
}

uint64_t _CTServerConnectionPhoneServicesRemoveDevice(void *a1, ctu *a2, ctu *a3, ctu *a4)
{
  v4 = 0x1600000001;
  if (a1 && a2 && a4)
  {
    xpc::dict_creator::dict_creator(&object);
    xpc::dict_creator::operator()<char const*>("kPhoneServicesRemoveDevice", &object, "kRequest", &v21);
    xpc_release(object);
    v9 = v21;
    object = v21;
    v21 = xpc_null_create();
    xpc_release(v21);
    ctu::cf_to_xpc(&value, a2, v10);
    xpc_dictionary_set_value(v9, "kTelephonyCapability", value);
    v11 = value;
    value = xpc_null_create();
    xpc_release(v11);
    xpc_release(value);
    value = 0;
    if (a3)
    {
      ctu::cf_to_xpc(&v19, a3, v12);
      xpc_dictionary_set_value(v9, "kPhoneServicesAccountId", v19);
      v13 = v19;
      v19 = xpc_null_create();
      xpc_release(v13);
      xpc_release(v19);
      v19 = 0;
    }

    ctu::cf_to_xpc(&v18, a4, v12);
    xpc_dictionary_set_value(v9, "kPhoneServicesDeviceId", v18);
    v14 = v18;
    v18 = xpc_null_create();
    xpc_release(v14);
    xpc_release(v18);
    v18 = 0;
    v15 = xpc_null_create();
    v4 = SendXpcMessage(a1, &object, 0, v16);
    xpc_release(v15);
    xpc_release(object);
  }

  return v4;
}

uint64_t _CTServerConnectionPhoneServicesEnableDevice(void *a1, ctu *a2, ctu *a3, ctu *a4)
{
  v4 = 0x1600000001;
  if (a1 && a2 && a4)
  {
    xpc::dict_creator::dict_creator(&object);
    xpc::dict_creator::operator()<char const*>("kPhoneServicesEnableDevice", &object, "kRequest", &v21);
    xpc_release(object);
    v9 = v21;
    object = v21;
    v21 = xpc_null_create();
    xpc_release(v21);
    ctu::cf_to_xpc(&value, a2, v10);
    xpc_dictionary_set_value(v9, "kTelephonyCapability", value);
    v11 = value;
    value = xpc_null_create();
    xpc_release(v11);
    xpc_release(value);
    value = 0;
    if (a3)
    {
      ctu::cf_to_xpc(&v19, a3, v12);
      xpc_dictionary_set_value(v9, "kPhoneServicesAccountId", v19);
      v13 = v19;
      v19 = xpc_null_create();
      xpc_release(v13);
      xpc_release(v19);
      v19 = 0;
    }

    ctu::cf_to_xpc(&v18, a4, v12);
    xpc_dictionary_set_value(v9, "kPhoneServicesDeviceId", v18);
    v14 = v18;
    v18 = xpc_null_create();
    xpc_release(v14);
    xpc_release(v18);
    v18 = 0;
    v15 = xpc_null_create();
    v4 = SendXpcMessage(a1, &object, 0, v16);
    xpc_release(v15);
    xpc_release(object);
  }

  return v4;
}

uint64_t _CTServerConnectionPhoneServicesDisableDevice(void *a1, ctu *a2, ctu *a3, ctu *a4)
{
  v4 = 0x1600000001;
  if (a1 && a2 && a4)
  {
    xpc::dict_creator::dict_creator(&object);
    xpc::dict_creator::operator()<char const*>("kPhoneServicesDisableDevice", &object, "kRequest", &v21);
    xpc_release(object);
    v9 = v21;
    object = v21;
    v21 = xpc_null_create();
    xpc_release(v21);
    ctu::cf_to_xpc(&value, a2, v10);
    xpc_dictionary_set_value(v9, "kTelephonyCapability", value);
    v11 = value;
    value = xpc_null_create();
    xpc_release(v11);
    xpc_release(value);
    value = 0;
    if (a3)
    {
      ctu::cf_to_xpc(&v19, a3, v12);
      xpc_dictionary_set_value(v9, "kPhoneServicesAccountId", v19);
      v13 = v19;
      v19 = xpc_null_create();
      xpc_release(v13);
      xpc_release(v19);
      v19 = 0;
    }

    ctu::cf_to_xpc(&v18, a4, v12);
    xpc_dictionary_set_value(v9, "kPhoneServicesDeviceId", v18);
    v14 = v18;
    v18 = xpc_null_create();
    xpc_release(v14);
    xpc_release(v18);
    v18 = 0;
    v15 = xpc_null_create();
    v4 = SendXpcMessage(a1, &object, 0, v16);
    xpc_release(v15);
    xpc_release(object);
  }

  return v4;
}

uint64_t _CTServerConnectionIsEncryptedIdentitySupported(uint64_t a1, ctu *a2, _BYTE *a3)
{
  v3 = 0x1600000001;
  if (a2 && a1 && a3)
  {
    xpc::dict_creator::dict_creator(object);
    xpc::dict_creator::operator()<char const*>("kGetIdentityProtectionSupport", object, "kRequest", &xdict);
    xpc_release(object[0]);
    v7 = xdict;
    v15 = xdict;
    xdict = xpc_null_create();
    xpc_release(xdict);
    ctu::cf_to_xpc(&value, a2, v8);
    xpc_dictionary_set_value(v7, "kIdentityProtectionType", value);
    v9 = value;
    value = xpc_null_create();
    xpc_release(v9);
    xpc_release(value);
    value = 0;
    xdict = xpc_null_create();
    v3 = SendXpcMessage(a1, &v15, &xdict);
    *a3 = 0;
    if (MEMORY[0x1865E16C0](xdict) == MEMORY[0x1E69E9E80] && xpc_dictionary_get_value(xdict, "kIdentityProtectionSupport"))
    {
      object[0] = &xdict;
      object[1] = "kIdentityProtectionSupport";
      xpc::dict::object_proxy::operator xpc::object(object, &v12);
      *a3 = xpc::dyn_cast_or_default(&v12, 0);
      xpc_release(v12);
    }

    xpc_release(xdict);
    xpc_release(v15);
  }

  return v3;
}

void NetworkNotification::NetworkNotification(NetworkNotification *this, CFStringRef theString)
{
  *this = 0;
  *(this + 4) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 6) = 0;
  *(this + 1) = CFStringCreateMutableCopy(0, 0, theString);
  NetworkNotification::_parseNotificationString(this);
  if (!*(this + 6))
  {
    v3 = CFURLCreateWithString(*MEMORY[0x1E695E480], *(this + 1), 0);
    *(this + 2) = v3;
    if (v3)
    {
      *(this + 6) = 1;
    }
  }
}

void NetworkNotification::_parseNotificationString(NetworkNotification *this)
{
  v2 = *(this + 1);
  if (!v2)
  {
    return;
  }

  Length = CFStringGetLength(v2);
  if (!Length)
  {
    return;
  }

  v4 = Length;
  v5 = CFStringFind(*(this + 1), @"?", 0);
  if (v5.location == -1)
  {
    v6.length = v4;
  }

  else
  {
    v6.length = v5.location;
  }

  v6.location = 0;
  v7 = CFStringCreateWithSubstring(0, *(this + 1), v6);
  v8 = v7;
  if (!v7)
  {
    goto LABEL_41;
  }

  TypeForName = NetworkNotification::_GetTypeForName(v7, v7);
  *(this + 6) = TypeForName;
  if (TypeForName > 1)
  {
    if (TypeForName == 3)
    {
      v10 = &kCTPhoneNumberRegistrationTypeKey;
    }

    else
    {
      v10 = &kCTCellularDataPlanStatusTypeKey;
    }

LABEL_13:
    v11 = *v10;
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *(this + 4) = Mutable;
    CFDictionarySetValue(Mutable, v11, v8);
    if (v5.location != -1)
    {
      v13 = v5.location + v5.length;
      if (v5.location + v5.length != -1)
      {
        v14.length = v4 - v13;
        if (v4 - v13 >= 1)
        {
          while (1)
          {
            result = xmmword_18304E0D0;
            v14.location = v13;
            v15 = CFStringFindWithOptions(*(this + 1), @";", v14, 0, &result);
            location = result.location;
            v16 = result.length;
            v18 = v15 ? result.location : v4;
            if (v18 - v13 >= 1)
            {
              break;
            }

LABEL_31:
            v13 = v16 + location;
            v14.length = v4 - (v16 + location);
            if (v15)
            {
              v24 = v13 == -1;
            }

            else
            {
              v24 = 1;
            }

            if (v24 || v4 - (v16 + location) <= 0)
            {
              goto LABEL_41;
            }
          }

          v27 = xmmword_18304E0D0;
          v29.location = v13;
          v29.length = v18 - v13;
          if (!CFStringFindWithOptions(*(this + 1), @"=", v29, 0, &v27) || v27.location == v13 || (v19 = v27.length + v27.location, (v20 = v18 - (v27.length + v27.location)) == 0))
          {
            *(this + 6) = 0;
            goto LABEL_41;
          }

          v30.location = v13;
          v30.length = v27.location - v13;
          v21 = CFStringCreateWithSubstring(0, *(this + 1), v30);
          v31.location = v19;
          v31.length = v20;
          v22 = CFStringCreateWithSubstring(0, *(this + 1), v31);
          v23 = v22;
          if (v21 && v22)
          {
            if (NetworkNotification::_NotificationKeyIsValidForType(this, v21))
            {
              NetworkNotification::setValueForKey(this, v23, v21, 0);
            }
          }

          else if (!v21)
          {
            goto LABEL_29;
          }

          CFRelease(v21);
LABEL_29:
          if (v23)
          {
            CFRelease(v23);
          }

          goto LABEL_31;
        }
      }
    }

    goto LABEL_41;
  }

  if (TypeForName)
  {
    v10 = &kVMNotificationNameKey;
    goto LABEL_13;
  }

LABEL_41:
  if (!*(this + 6))
  {
    v26 = *(this + 4);
    if (v26)
    {
      CFRelease(v26);
      *(this + 4) = 0;
    }
  }

  if (v8)
  {
    CFRelease(v8);
  }
}

NetworkNotification *NetworkNotification::NetworkNotification(NetworkNotification *a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v7, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v7 = __p;
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v8, v7.__r_.__value_.__l.__data_, v7.__r_.__value_.__l.__size_);
  }

  else
  {
    v8 = v7;
  }

  v9 = 0;
  v3 = *MEMORY[0x1E695E480];
  if (ctu::cf::convert_copy())
  {
    v4 = v9;
  }

  else
  {
    v4 = 0;
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  NetworkNotification::NetworkNotification(a1, v4);
  if (v4)
  {
    CFRelease(v4);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return a1;
}

{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v7, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v7 = __p;
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v8, v7.__r_.__value_.__l.__data_, v7.__r_.__value_.__l.__size_);
  }

  else
  {
    v8 = v7;
  }

  v9 = 0;
  v3 = *MEMORY[0x1E695E480];
  if (ctu::cf::convert_copy())
  {
    v4 = v9;
  }

  else
  {
    v4 = 0;
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  NetworkNotification::NetworkNotification(a1, v4);
  if (v4)
  {
    CFRelease(v4);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return a1;
}

void NetworkNotification::~NetworkNotification(NetworkNotification *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    CFRelease(v4);
  }
}

const void *NetworkNotification::name(NetworkNotification *this)
{
  v2 = *(this + 4);
  if (v2 && (v3 = *(this + 6) - 1, v3 <= 2))
  {
    return CFDictionaryGetValue(v2, *off_1E6A485F0[v3]);
  }

  else
  {
    return 0;
  }
}

uint64_t NetworkNotification::notificationString(NetworkNotification *this)
{
  if (*this == 1)
  {
    v2 = NetworkNotification::name(this);
    if (v2)
    {
      v3 = v2;
      CFRelease(*(this + 1));
      *(this + 1) = CFStringCreateMutableCopy(0, 0, v3);
      if (CFDictionaryGetCount(*(this + 4)) >= 2)
      {
        v5[0] = *(this + 1);
        v5[1] = 0;
        CFStringAppend(v5[0], @"?");
        CFDictionaryApplyFunction(*(this + 4), _AppendKeyValueToString, v5);
      }
    }
  }

  return *(this + 1);
}

void _AppendKeyValueToString(const void *a1, const void *a2, int *a3)
{
  if (!CFEqual(a1, @"notification"))
  {
    v6 = *a3;
    if (a3[2] < 1)
    {
      CFStringAppendFormat(v6, 0, @"%@%@%@", a1, @"=", a2);
    }

    else
    {
      CFStringAppendFormat(v6, 0, @"%@%@%@%@", @";", a1, @"=", a2);
    }

    ++a3[2];
  }
}

uint64_t NetworkNotification::setValueForKey(NetworkNotification *this, __CFString *a2, CFStringRef theString1, int a4)
{
  result = 0;
  if (a2 && theString1 && *(this + 4))
  {
    v8 = *(this + 6);
    if (v8 == 3)
    {
      goto LABEL_7;
    }

    if (v8 != 2)
    {
      if (v8 == 1)
      {
LABEL_7:
        CFDictionarySetValue(*(this + 4), theString1, a2);
        result = 1;
        if (a4 == 1)
        {
          *this = 1;
        }

        return result;
      }

      return 0;
    }

    value = 0;
    FinalFormForValue = NetworkNotification::_GetFinalFormForValue(this, theString1, a2, &value);
    v10 = value;
    if (!value)
    {
      return 0;
    }

    v11 = FinalFormForValue;
    CFDictionarySetValue(*(this + 4), theString1, value);
    if (v11)
    {
      CFRelease(v10);
    }

    if (a4 == 1)
    {
      *this = 1;
    }

    return 1;
  }

  return result;
}

BOOL NetworkNotification::_GetFinalFormForValue(NetworkNotification *this, CFStringRef theString1, const __CFString *a3, CFNumberRef *a4)
{
  v7 = CFStringCompare(theString1, @"success", 0);
  if (v7 && (v7 = CFStringCompare(theString1, @"autorenew", 0)) != 0 && (v7 = CFStringCompare(theString1, @"intl", 0)) != 0 && (v7 = CFStringCompare(theString1, @"stacking", 0)) != 0)
  {
    v8 = CFStringCompare(theString1, @"last-updated", 0);
    if (v8 && (v8 = CFStringCompare(theString1, @"end", 0)) != 0 && (v8 = CFStringCompare(theString1, @"expiry", 0)) != 0)
    {
      v9 = CFStringCompare(theString1, @"used", 0);
      if (v9 && (v9 = CFStringCompare(theString1, @"delay", 0)) != 0 && (v9 = CFStringCompare(theString1, @"bucket", 0)) != 0 && (v9 = CFStringCompare(theString1, @"allowed", 0)) != 0)
      {
        *a4 = a3;
        return 0;
      }

      else
      {

        return NetworkNotification::_ConvertToNumber(v9, a3, a4);
      }
    }

    else
    {

      return NetworkNotification::_ConvertToDate(v8, a3, a4);
    }
  }

  else
  {

    return NetworkNotification::_ConvertToBool(v7, a3, a4);
  }
}

BOOL NetworkNotification::_ConvertToBool(NetworkNotification *this, CFStringRef theString, const void **a3)
{
  v9.length = CFStringGetLength(theString);
  v9.location = 0;
  if (CFStringCompareWithOptions(@"yes", theString, v9, 1uLL) == kCFCompareEqualTo)
  {
    v7 = MEMORY[0x1E695E4D0];
    goto LABEL_5;
  }

  v10.length = CFStringGetLength(theString);
  v10.location = 0;
  v5 = CFStringCompareWithOptions(@"no", theString, v10, 1uLL);
  v6 = 0;
  if (v5 == kCFCompareEqualTo)
  {
    v7 = MEMORY[0x1E695E4C0];
LABEL_5:
    v6 = CFRetain(*v7);
  }

  *a3 = v6;
  return v6 != 0;
}

BOOL NetworkNotification::_ConvertToDate(NetworkNotification *this, CFStringRef string, CFDateRef *a3)
{
  v5 = NetworkNotification::_ConvertToDate(__CFString const*,void const*&)::customDateFormatter;
  v6 = *MEMORY[0x1E695E480];
  if (!NetworkNotification::_ConvertToDate(__CFString const*,void const*&)::customDateFormatter)
  {
    NetworkNotification::_ConvertToDate(__CFString const*,void const*&)::customDateFormatter = CFDateFormatterCreate(v6, 0, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
    CFDateFormatterSetFormat(NetworkNotification::_ConvertToDate(__CFString const*,void const*&)::customDateFormatter, @"MM:dd:yyyy:HH:mm:ss");
    v5 = NetworkNotification::_ConvertToDate(__CFString const*,void const*&)::customDateFormatter;
  }

  DateFromString = CFDateFormatterCreateDateFromString(v6, v5, string, 0);
  if (!DateFromString)
  {
    return *a3 != 0;
  }

  *a3 = DateFromString;
  return 1;
}

BOOL NetworkNotification::_ConvertToNumber(NetworkNotification *this, CFStringRef string, CFNumberRef *a3)
{
  v5 = NetworkNotification::_ConvertToNumber(__CFString const*,void const*&)::numberFormatter;
  v6 = *MEMORY[0x1E695E480];
  if (!NetworkNotification::_ConvertToNumber(__CFString const*,void const*&)::numberFormatter)
  {
    v5 = CFNumberFormatterCreate(v6, 0, kCFNumberFormatterNoStyle);
    NetworkNotification::_ConvertToNumber(__CFString const*,void const*&)::numberFormatter = v5;
  }

  NumberFromString = CFNumberFormatterCreateNumberFromString(v6, v5, string, 0, 1uLL);
  if (!NumberFromString)
  {
    return *a3 != 0;
  }

  *a3 = NumberFromString;
  return 1;
}

uint64_t NetworkNotification::_GetTypeForName(NetworkNotification *this, const __CFString *a2)
{
  pthread_once(&__NotificationInit, _NotificationNameDictionaryInit);
  result = CFSetContainsValue(__ValidVMNotificationNames, a2);
  if (result != 1)
  {
    if (CFSetContainsValue(__ValidDPNotificationNames, a2) == 1)
    {
      return 2;
    }

    else if (CFSetContainsValue(__ValidPNRNotificationNames, a2) == 1)
    {
      return 3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

CFSetRef _NotificationNameDictionaryInit(void)
{
  values[5] = *MEMORY[0x1E69E9840];
  values[0] = @"STATE";
  values[1] = @"MBOXUPDATE";
  values[2] = @"GREETINGCHANGED";
  values[3] = @"SERVERCHANGED";
  values[4] = @"UNRECOGNIZED";
  v7[0] = @"DATA-ACTIVATION";
  v7[1] = @"DATA-USAGE";
  v6[0] = @"REG-REQ";
  v6[1] = @"REG-RESP";
  v0 = MEMORY[0x1E695E9F8];
  __ValidVMNotificationNames = CFSetCreate(0, values, 5, MEMORY[0x1E695E9F8]);
  __ValidDPNotificationNames = CFSetCreate(0, v7, 2, v0);
  __ValidPNRNotificationNames = CFSetCreate(0, v6, 2, v0);
  v5[0] = @"state";
  v5[1] = @"name";
  v5[2] = @"pw";
  v5[3] = @"server";
  v5[4] = @"port";
  v5[5] = @"m";
  v5[6] = @"cmd";
  v5[7] = @"_timestamp";
  v4[0] = @"notification";
  v4[1] = @"success";
  v4[2] = @"MSISDN";
  v4[3] = @"plan";
  v4[4] = @"used";
  v4[5] = @"delay";
  v4[6] = @"last-updated";
  v4[7] = @"autorenew";
  v4[8] = @"intl";
  v4[9] = @"end";
  v4[10] = @"bucket";
  v4[11] = @"allowed";
  v4[12] = @"expiry";
  v4[13] = @"stacking";
  v3[0] = @"notification";
  v3[1] = @"t";
  v3[2] = @"n";
  v3[3] = @"s";
  v3[4] = @"r";
  v3[5] = @"u";
  v3[6] = @"v";
  __ValidVMNotificationKeys = CFSetCreate(0, v5, 8, v0);
  __ValidDPNotificationKeys = CFSetCreate(0, v4, 14, v0);
  result = CFSetCreate(0, v3, 7, v0);
  __ValidPNRNotificationKeys = result;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t NetworkNotification::_NotificationKeyIsValidForType(NetworkNotification *this, const __CFString *a2)
{
  pthread_once(&__NotificationInit, _NotificationNameDictionaryInit);
  v4 = *(this + 6) - 1;
  if (v4 > 2)
  {
    return 0;
  }

  v5 = *off_1E6A48608[v4];

  return CFSetContainsValue(v5, a2);
}

const char *asString(unsigned int a1)
{
  if (a1 > 3)
  {
    return "INVALID NOTIFICATION";
  }

  else
  {
    return off_1E6A48620[a1];
  }
}

const char *CTEsimCapabilityAsString(unint64_t a1)
{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_1E6A48640[a1];
  }
}

__CFString *wirelessTechnologyToWirelessTechnologyString(int a1)
{
  v1 = kCTWirelessTechnologyUnknown;
  if (a1 <= 39)
  {
    if (a1 == 4)
    {
      v1 = kCTWirelessTechnologyUMTS;
      return *v1;
    }

    if (a1 == 8)
    {
      v1 = kCTWirelessTechnologyCDMA2000;
      return *v1;
    }

    if (a1 != 32)
    {
      return *v1;
    }

    goto LABEL_11;
  }

  if (a1 == 40 || a1 == 64)
  {
LABEL_11:
    v1 = kCTWirelessTechnologyLTE;
    return *v1;
  }

  if (a1 == 128)
  {
    v1 = kCTWirelessTechnologyNR;
  }

  return *v1;
}

__CFString *networkSelectionModeToNetworkSelectionModeString(int a1)
{
  v1 = kCTRegistrationNetworkSelectionModeAutomatic;
  v2 = kCTRegistrationNetworkSelectionModeManual;
  if (a1 != 1)
  {
    v2 = kCTRegistrationNetworkSelectionModeDisabled;
  }

  if (a1)
  {
    v1 = v2;
  }

  return *v1;
}

uint64_t toRatSelection(const __CFString *a1)
{
  if (a1)
  {
    if (CFEqual(a1, @"kCTRegistrationRATSelectionGSM"))
    {
      return 1;
    }

    else if (CFEqual(a1, @"kCTRegistrationRATSelectionUMTS"))
    {
      return 2;
    }

    else if (CFEqual(a1, @"kCTRegistrationRATSelectionDual"))
    {
      return 3;
    }

    else if (CFEqual(a1, @"kCTRegistrationRATSelectionCDMA1x"))
    {
      return 4;
    }

    else if (CFEqual(a1, @"kCTRegistrationRATSelectionCDMA1xEVDO"))
    {
      return 8;
    }

    else if (CFEqual(a1, @"kCTRegistrationRATSelectionCDMAHybrid"))
    {
      return 12;
    }

    else if (CFEqual(a1, @"kCTRegistrationRATSelectionLTE"))
    {
      return 16;
    }

    else if (CFEqual(a1, @"kCTRegistrationRATSelectionTDSCDMA"))
    {
      return 32;
    }

    else if (CFEqual(a1, @"kCTRegistrationRATSelectionNR"))
    {
      return -48;
    }

    else if (CFEqual(a1, @"kCTRegistrationRATSelectionNRStandAlone"))
    {
      return 80;
    }

    else if (CFEqual(a1, @"kCTRegistrationRATSelectionNRNonStandAlone"))
    {
      return -112;
    }

    else if (CFEqual(a1, @"kCTRegistrationRATSelectionAutomatic"))
    {
      return -1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 0;
  }
}

__CFString *getDataRateString(int a1)
{
  if ((a1 - 1) > 7)
  {
    v1 = kCTRegistrationDataRateUnknown;
  }

  else
  {
    v1 = off_1E6A486C0[a1 - 1];
  }

  return *v1;
}

__CFString *networkSelectionStateToNetworkSelectionStateString(int a1)
{
  result = 0;
  if (a1 <= 2)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v3 = kCTRegistrationNetworkSelectionStateIdle;
      }

      else
      {
        if (a1 != 2)
        {
          return result;
        }

        v3 = kCTRegistrationNetworkSelectionStateScanning;
      }
    }

    else
    {
      v3 = kCTRegistrationNetworkSelectionStateUnknown;
    }
  }

  else if (a1 > 4)
  {
    if (a1 == 5)
    {
      v3 = kCTRegistrationNetworkSelectionStateJoining;
    }

    else
    {
      if (a1 != 6)
      {
        return result;
      }

      v3 = kCTRegistrationNetworkSelectionStateJoinedOnManual;
    }
  }

  else if (a1 == 3)
  {
    v3 = kCTRegistrationNetworkSelectionStateScanned;
  }

  else
  {
    v3 = kCTRegistrationNetworkSelectionStateChosen;
  }

  return *v3;
}

void convertRatAndPreferred(int a1, int a2, const __CFString **a3, const __CFString **a4)
{
  *a3 = @"kCTRegistrationRATSelectionUnknown";
  *a4 = @"kCTRegistrationRATSelectionUnknown";
  if (a1 <= 17)
  {
    if (a1 > 7)
    {
      if (a1 > 14)
      {
        if (a1 == 15)
        {
          goto LABEL_5;
        }

        if (a1 == 16)
        {
          v6 = kCTRegistrationRATSelection6;
          goto LABEL_6;
        }
      }

      else
      {
        if (a1 == 8)
        {
          v6 = kCTRegistrationRATSelection4;
          goto LABEL_6;
        }

        if (a1 == 12)
        {
          v6 = kCTRegistrationRATSelection5;
          goto LABEL_6;
        }
      }
    }

    else if (a1 > 2)
    {
      if (a1 == 3)
      {
        *a3 = @"kCTRegistrationRATSelectionDual";
        if (a2 == 2)
        {
          v8 = kCTRegistrationRATSelection1;
        }

        else
        {
          if (a2 != 1)
          {
            return;
          }

          v8 = kCTRegistrationRATSelection0;
        }

        v7 = *v8;
        goto LABEL_7;
      }

      if (a1 == 4)
      {
        v6 = kCTRegistrationRATSelection3;
        goto LABEL_6;
      }
    }

    else
    {
      if (a1 == 1)
      {
        v6 = kCTRegistrationRATSelection0;
        goto LABEL_6;
      }

      if (a1 == 2)
      {
        v6 = kCTRegistrationRATSelection1;
        goto LABEL_6;
      }
    }
  }

  else if (a1 > 127)
  {
    if (a1 <= 191)
    {
      if (a1 == 128 || a1 == 144)
      {
        v6 = kCTRegistrationRATSelection10;
        goto LABEL_6;
      }

      if (a1 == 147)
      {
        goto LABEL_5;
      }
    }

    else if (a1 > 210)
    {
      if (a1 == 211 || a1 == 255)
      {
        goto LABEL_5;
      }
    }

    else if (a1 == 192 || a1 == 208)
    {
      v6 = kCTRegistrationRATSelection11;
      goto LABEL_6;
    }
  }

  else
  {
    v5 = (a1 - 18);
    if (v5 <= 0x3E)
    {
      if (((1 << (a1 - 18)) & 0x200200002003) != 0)
      {
LABEL_5:
        v6 = kCTRegistrationRATSelection7;
LABEL_6:
        v7 = *v6;
        *a3 = v7;
LABEL_7:
        *a4 = v7;
        return;
      }

      if (((1 << (a1 - 18)) & 0x4000400000000000) != 0)
      {
        v6 = kCTRegistrationRATSelection9;
        goto LABEL_6;
      }

      if (v5 == 14)
      {
        v6 = kCTRegistrationRATSelection8;
        goto LABEL_6;
      }
    }
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    convertRatAndPreferred(a1);
  }
}

uint64_t _CTServerConnectionGetSIMSubscriptionStatus(void *a1, NSObject *a2, uint64_t a3)
{
  result = 0x1600000001;
  if (a1 && a2 && a3)
  {
    v7 = xpc::dict_creator::dict_creator(&v11);
    xpc::dict_creator::operator()<char const*>("kCPGetSIMSubscriptionStatus", v7, "kRequest", &v10);
    xpc_release(v11);
    v11 = v10;
    v10 = xpc_null_create();
    xpc_release(v10);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v9[2] = ___CTServerConnectionGetSIMSubscriptionStatus_block_invoke;
    v9[3] = &unk_1E6A48738;
    v9[4] = a3;
    v8 = SendXpcMessageAsync(a1, &v11, a2, v9);
    xpc_release(v11);
    if (v8)
    {
      return 0;
    }

    else
    {
      return 0x500000002;
    }
  }

  return result;
}

uint64_t _CTServerConnectionProbeSIMConnectivityStatus(void *a1, NSObject *a2, uint64_t a3)
{
  result = 0x1600000001;
  if (a1 && a2 && a3)
  {
    v7 = xpc::dict_creator::dict_creator(&v11);
    xpc::dict_creator::operator()<char const*>("kCPProbeSIMConnectivity", v7, "kRequest", &v10);
    xpc_release(v11);
    v11 = v10;
    v10 = xpc_null_create();
    xpc_release(v10);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v9[2] = ___CTServerConnectionProbeSIMConnectivityStatus_block_invoke;
    v9[3] = &unk_1E6A48760;
    v9[4] = a3;
    v8 = SendXpcMessageAsync(a1, &v11, a2, v9);
    xpc_release(v11);
    if (v8)
    {
      return 0;
    }

    else
    {
      return 0x500000002;
    }
  }

  return result;
}

const void **ctu::cf::CFSharedRef<__CFError>::operator=<void const,void>(const void **a1, CFTypeRef *a2)
{
  v5 = 0;
  ctu::cf::CFSharedRef<__CFError>::CFSharedRef<void const,void>(&v5, a2);
  v3 = *a1;
  *a1 = v5;
  v5 = v3;
  if (v3)
  {
    CFRelease(v3);
  }

  return a1;
}

uint64_t _CTServerConnectionCopyRemoteMobileEquipmentInfo(void *a1, ctu *a2, NSObject *a3, uint64_t a4)
{
  result = 0x1600000001;
  if (a1 && a2 && a3 && a4)
  {
    xpc::dict_creator::dict_creator(&object);
    xpc::dict_creator::operator()<char const*>("kCPCopyRemoteMobileEquipmentInfo", &object, "kRequest", &v15);
    xpc_release(object);
    v9 = v15;
    object = v15;
    v15 = xpc_null_create();
    xpc_release(v15);
    ctu::cf_to_xpc(&value, a2, v10);
    xpc_dictionary_set_value(v9, "kCPRemoteMobileEquipmentInfoDeviceId", value);
    v11 = value;
    value = xpc_null_create();
    xpc_release(v11);
    xpc_release(value);
    v13[4] = a4;
    value = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 0x40000000;
    v13[2] = ___CTServerConnectionCopyRemoteMobileEquipmentInfo_block_invoke;
    v13[3] = &unk_1E6A48788;
    v12 = SendXpcMessageAsync(a1, &object, a3, v13);
    xpc_release(object);
    if (v12)
    {
      return 0;
    }

    else
    {
      return 0x500000002;
    }
  }

  return result;
}

uint64_t _CTServerConnectionGetNumberOfDeletablePlansInstalled(uint64_t a1, void *a2)
{
  result = 0x1600000001;
  if (a1 && a2)
  {
    *a2 = 0;
    xpc::dict_creator::dict_creator(object);
    xpc::dict_creator::operator()<char const*>("kCPGetNumberOfDeletablePlansInstalled", object, "kRequest", &xdict);
    xpc_release(object[0]);
    v14 = xdict;
    xdict = xpc_null_create();
    xpc_release(xdict);
    xdict = xpc_null_create();
    v5 = SendXpcMessage(a1, &v14, &xdict);
    if (MEMORY[0x1865E16C0](xdict) == MEMORY[0x1E69E9E80] && xpc_dictionary_get_value(xdict, "kCPNumberOfDeletablePlansInstalled"))
    {
      v6 = v5 & 0xFFFFFFFF00000000;
      v12 = 0;
      object[0] = &xdict;
      object[1] = "kCPNumberOfDeletablePlansInstalled";
      xpc::dict::object_proxy::operator xpc::object(object, &v10);
      xpc::bridge(&cf, &v10, v8);
      ctu::cf::CFSharedRef<__CFNumber const>::CFSharedRef<void const,void>(&v12, &cf);
      if (cf)
      {
        CFRelease(cf);
      }

      xpc_release(v10);
      *a2 = v12;
      v7 = v5;
    }

    else
    {
      v6 = 0x2300000000;
      v7 = 1;
    }

    xpc_release(xdict);
    xpc_release(v14);
    return v6 | v7;
  }

  return result;
}

uint64_t _CTServerConnectionReprovisionSim(void *a1)
{
  if (!a1)
  {
    return 0x1600000001;
  }

  xpc::dict_creator::dict_creator(&object);
  xpc::dict_creator::operator()<char const*>("kCPReprovisionSim", &object, "kRequest", &v5);
  xpc_release(object);
  object = v5;
  v5 = xpc_null_create();
  xpc_release(v5);
  v3 = SendXpcMessage(a1, &object, 0, v2);
  xpc_release(object);
  return v3;
}

uint64_t _CTServerConnectionDebugResetSim(void *a1)
{
  if (!a1)
  {
    return 0x1600000001;
  }

  xpc::dict_creator::dict_creator(&object);
  xpc::dict_creator::operator()<char const*>("kCPResetSim", &object, "kRequest", &v5);
  xpc_release(object);
  object = v5;
  v5 = xpc_null_create();
  xpc_release(v5);
  v3 = SendXpcMessage(a1, &object, 0, v2);
  xpc_release(object);
  return v3;
}

uint64_t _CTServerConnectionStandaloneSetSelectionOverride(void *a1, uint64_t a2, ctu *a3, uint64_t a4, uint64_t a5)
{
  if (!a1)
  {
    return 0x1600000001;
  }

  xpc::dict_creator::dict_creator(&object);
  xpc::dict_creator::operator()<char const*>("kCPStandaloneOverrideSelection", &object, "kRequest", &v18);
  xpc_release(object);
  object = v18;
  v18 = xpc_null_create();
  xpc_release(v18);
  v8 = xpc_dictionary_create(0, 0, 0);
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = xpc_null_create();
    if (!v9)
    {
LABEL_7:
      v11 = xpc_null_create();
      goto LABEL_9;
    }
  }

  if (MEMORY[0x1865E16C0](v9) != MEMORY[0x1E69E9E80])
  {
    goto LABEL_7;
  }

  xpc_retain(v9);
  v11 = v9;
LABEL_9:
  xpc_release(v9);
  ctu::cf_to_xpc(&value, a3, v12);
  xpc_dictionary_set_value(object, "kCPStandaloneIccid", value);
  v13 = value;
  value = xpc_null_create();
  xpc_release(v13);
  xpc_release(value);
  value = 0;
  global_queue = dispatch_get_global_queue(0, 0);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 0x40000000;
  v16[2] = ___CTServerConnectionStandaloneSetSelectionOverride_block_invoke;
  v16[3] = &unk_1E6A487B0;
  v16[4] = a5;
  v15 = SendXpcMessageAsync(a1, &object, global_queue, v16);
  xpc_release(v11);
  xpc_release(object);
  if (v15)
  {
    return 0;
  }

  else
  {
    return 0x500000002;
  }
}

BOOL xpc::operator==<BOOL>(uint64_t a1, BOOL *a2)
{
  object1 = 0;
  xpc::dict::object_proxy::operator xpc::object(a1, &object1);
  v3 = xpc_BOOL_create(*a2);
  if (!v3)
  {
    v3 = xpc_null_create();
  }

  v4 = xpc_equal(object1, v3);
  xpc_release(v3);
  xpc_release(object1);
  return v4;
}

uint64_t _CTServerConnectionStandaloneSetSelectionOverrideNonEsim(void *a1, ctu *a2)
{
  if (!a1)
  {
    return 0x1600000001;
  }

  xpc::dict_creator::dict_creator(&object);
  xpc::dict_creator::operator()<char const*>("kCPStandaloneOverrideSelectionLegacy", &object, "kRequest", &v11);
  xpc_release(object);
  v4 = v11;
  object = v11;
  v11 = xpc_null_create();
  xpc_release(v11);
  ctu::cf_to_xpc(&value, a2, v5);
  xpc_dictionary_set_value(v4, "kCPStandaloneIccid", value);
  v6 = value;
  value = xpc_null_create();
  xpc_release(v6);
  xpc_release(value);
  value = 0;
  v8 = SendXpcMessage(a1, &object, 0, v7);
  xpc_release(object);
  return v8;
}

uint64_t _CTServerConnectionStandaloneResetSelectionOverride(void *a1)
{
  if (!a1)
  {
    return 0x1600000001;
  }

  xpc::dict_creator::dict_creator(&object);
  xpc::dict_creator::operator()<char const*>("kCPStandaloneOverrideSelectionReset", &object, "kRequest", &v5);
  xpc_release(object);
  object = v5;
  v5 = xpc_null_create();
  xpc_release(v5);
  v3 = SendXpcMessage(a1, &object, 0, v2);
  xpc_release(object);
  return v3;
}

uint64_t _CTServerConnectionStandaloneDownloadProfile(void *a1, ctu *a2, ctu *a3, uint64_t a4)
{
  result = 0x1600000001;
  if (a1 && a2 && a3 && a4)
  {
    v9 = xpc::dict_creator::dict_creator(&v21);
    xpc::dict_creator::operator()<char const*>("kCPStandaloneDownloadProfile", v9, "kRequest", &v20);
    xpc_release(v21);
    v10 = v20;
    v21 = v20;
    v20 = xpc_null_create();
    xpc_release(v20);
    ctu::cf_to_xpc(&value, a2, v11);
    xpc_dictionary_set_value(v10, "kCPStandaloneCsn", value);
    v12 = value;
    value = xpc_null_create();
    xpc_release(v12);
    xpc_release(value);
    value = 0;
    ctu::cf_to_xpc(&object, a3, v13);
    xpc_dictionary_set_value(v10, "kCPStandaloneProfileServer", object);
    v14 = object;
    object = xpc_null_create();
    xpc_release(v14);
    xpc_release(object);
    object = 0;
    global_queue = dispatch_get_global_queue(0, 0);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 0x40000000;
    v17[2] = ___CTServerConnectionStandaloneDownloadProfile_block_invoke;
    v17[3] = &unk_1E6A487D8;
    v17[4] = a4;
    v16 = SendXpcMessageAsync(a1, &v21, global_queue, v17);
    xpc_release(v21);
    if (v16)
    {
      return 0;
    }

    else
    {
      return 0x500000002;
    }
  }

  return result;
}

uint64_t _CTServerConnectionStandaloneGetCachedVinylInfo(uint64_t a1, uint64_t a2)
{
  result = 0x1600000001;
  if (!a1 || !a2)
  {
    return result;
  }

  xpc::dict_creator::dict_creator(&object);
  xpc::dict_creator::operator()<char const*>("kCPStandaloneGetCacheVinylInfo", &object, "kRequest", &xdict);
  xpc_release(object);
  object = xdict;
  xdict = xpc_null_create();
  xpc_release(xdict);
  v5 = xpc_dictionary_create(0, 0, 0);
  if (v5)
  {
    v6 = v5;
    xdict = v5;
  }

  else
  {
    v6 = xpc_null_create();
    xdict = v6;
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  if (MEMORY[0x1865E16C0](v6) == MEMORY[0x1E69E9E80])
  {
    xpc_retain(v6);
    goto LABEL_9;
  }

LABEL_7:
  xdict = xpc_null_create();
LABEL_9:
  xpc_release(v6);
  SendXpcMessage(a1, &object, &xdict);
  cf = 0;
  xpc_dictionary_get_value(xdict, "kCPStandaloneCachedVinylInfoResult");
  v7 = _CFXPCCreateCFObjectFromXPCObject();
  ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef<void const,void>(&cf, &v7);
  (*(a2 + 16))(a2, cf != 0);
  if (cf)
  {
    CFRelease(cf);
  }

  xpc_release(xdict);
  xpc_release(object);
  return 0;
}

void *ctu::cf::CFSharedRef<__CFError>::CFSharedRef<void const,void>(void *a1, CFTypeRef *a2)
{
  v4 = *a2;
  if (*a2 && (v5 = CFGetTypeID(*a2), v5 == CFErrorGetTypeID()))
  {
    *a1 = v4;
  }

  else
  {
    *a1 = 0;
    if (*a2)
    {
      CFRelease(*a2);
    }
  }

  return a1;
}

void *ctu::cf::CFSharedRef<__CFNumber const>::CFSharedRef<void const,void>(void *a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2 && (v4 = CFGetTypeID(*a2), v4 == CFNumberGetTypeID()))
  {
    *a1 = v3;
    CFRetain(v3);
  }

  else
  {
    *a1 = 0;
  }

  return a1;
}

const char *MMSCharsetHeader::charsetNameForMibEnum(MMSCharsetHeader *this)
{
  v3 = this;
  if (!_mibEnumToCharsetMap)
  {
    initCharsetMaps();
  }

  v1 = std::__hash_table<std::__hash_value_type<unsigned int,MMSCharset *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,MMSCharset *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,MMSCharset *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,MMSCharset *>>>::find<unsigned int>(_mibEnumToCharsetMap, &v3);
  if (v1)
  {
    return *(v1[3] + 8);
  }

  else
  {
    return "UNKNOWN";
  }
}

uint64_t MMSCharsetHeader::cfEncodingForMibEnum(MMSCharsetHeader *this)
{
  v3 = this;
  if (!_mibEnumToCharsetMap)
  {
    initCharsetMaps();
  }

  v1 = std::__hash_table<std::__hash_value_type<unsigned int,MMSCharset *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,MMSCharset *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,MMSCharset *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,MMSCharset *>>>::find<unsigned int>(_mibEnumToCharsetMap, &v3);
  if (v1)
  {
    return *(v1[3] + 4);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t MMSCharsetHeader::mibEnumForCharsetName(MMSCharsetHeader *this, const char *a2)
{
  v2 = _nameToCharsetMap;
  if (!_nameToCharsetMap)
  {
    initCharsetMaps();
  }

  std::string::basic_string[abi:nn200100]<0>(__p, this);
  v3 = std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::find<std::string>(v2, __p);
  v4 = v3;
  if (v7 < 0)
  {
    operator delete(__p[0]);
    if (v4)
    {
      return *v4[5];
    }
  }

  else if (v3)
  {
    return *v4[5];
  }

  return 0;
}

void *MMSCharsetHeader::MMSCharsetHeader(uint64_t a1, uint64_t a2, int a3)
{
  result = MMSIntegerHeader::MMSIntegerHeader(a1, a2, a3);
  *result = &unk_1EF013C60;
  return result;
}

BOOL MMSCharsetHeader::parseValue(MMSCharsetHeader *this, MMSCharsetHeader *a2)
{
  v3 = MMSCharsetHeader::mibEnumForCharsetName(a2, a2);
  *(this + 5) = v3;
  return v3 != 0;
}

uint64_t MMSCharsetHeader::valueAsString(uint64_t a1, std::string *a2)
{
  v3 = MMSCharsetHeader::charsetNameForMibEnum(*(a1 + 20));
  if (v3)
  {
    std::string::__assign_external(a2, v3);
  }

  else
  {
    if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
    {
      a2->__r_.__value_.__l.__size_ = 0;
      a2 = a2->__r_.__value_.__r.__words[0];
    }

    else
    {
      *(&a2->__r_.__value_.__s + 23) = 0;
    }

    a2->__r_.__value_.__s.__data_[0] = 0;
  }

  return 1;
}

void MMSCharsetHeader::~MMSCharsetHeader(MMSCharsetHeader *this)
{
  MMSBinaryHeader::~MMSBinaryHeader(this);

  JUMPOUT(0x1865E0880);
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,MMSCharset *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,MMSCharset *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,MMSCharset *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,MMSCharset *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,MMSCharset *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,MMSCharset *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,MMSCharset *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,MMSCharset *>>>::find<unsigned int>(void *a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % v2.i32[0];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_182F9EA48(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_182F9ECEC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id CTThrowingCastIfClass<CTRegistrationDisplayStatus>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 stringWithFormat:@"Type mismatch when casting object, expected %@", v5];

    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v6 userInfo:0];
    objc_exception_throw(v7);
  }

  return v1;
}

void sub_182F9F1B0(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_182F9F4DC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_182F9F780(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_182F9FAAC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_182F9FD50(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_182F9FDF0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182FA0138(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_182FA01D8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182FA0388(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182FA0940(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_182FA0BE4(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id CTThrowingCastIfClass<CTNRStatus>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 stringWithFormat:@"Type mismatch when casting object, expected %@", v5];

    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v6 userInfo:0];
    objc_exception_throw(v7);
  }

  return v1;
}

void sub_182FA10C8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_182FA1168(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182FA1318(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182FA17F0(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_182FA1B28(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_182FA1E60(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id CTThrowingCastIfClass<CTRatSelection>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 stringWithFormat:@"Type mismatch when casting object, expected %@", v5];

    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v6 userInfo:0];
    objc_exception_throw(v7);
  }

  return v1;
}

void sub_182FA2498(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_182FA284C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182FA2D58(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_182FA2E3C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id CTThrowingCastIfClass<CTBandInfo>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 stringWithFormat:@"Type mismatch when casting object, expected %@", v5];

    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v6 userInfo:0];
    objc_exception_throw(v7);
  }

  return v1;
}

void sub_182FA329C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_182FA33E8(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_182FA38C8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182FA39EC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182FA3E04(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182FA3F8C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id CTThrowingCastIfClass<CTSignalStrengthInfo>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 stringWithFormat:@"Type mismatch when casting object, expected %@", v5];

    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v6 userInfo:0];
    objc_exception_throw(v7);
  }

  return v1;
}

void sub_182FA42B8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182FA471C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id CTThrowingCastIfClass<CTSignalStrengthMeasurements>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 stringWithFormat:@"Type mismatch when casting object, expected %@", v5];

    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v6 userInfo:0];
    objc_exception_throw(v7);
  }

  return v1;
}

void sub_182FA4BE0(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id CTThrowingCastIfClass<CTVoiceLinkQualityMetric>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 stringWithFormat:@"Type mismatch when casting object, expected %@", v5];

    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v6 userInfo:0];
    objc_exception_throw(v7);
  }

  return v1;
}

void sub_182FA50A4(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id CTThrowingCastIfClass<CTEnhancedLinkQualityMetric>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 stringWithFormat:@"Type mismatch when casting object, expected %@", v5];

    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v6 userInfo:0];
    objc_exception_throw(v7);
  }

  return v1;
}

void sub_182FA5568(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_182FA5930(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id CTThrowingCastIfClass<CTIMSRegistrationStatus>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 stringWithFormat:@"Type mismatch when casting object, expected %@", v5];

    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v6 userInfo:0];
    objc_exception_throw(v7);
  }

  return v1;
}

void sub_182FA5DF4(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id CTThrowingCastIfClass<CTIMSRegistrationTransportInfo>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 stringWithFormat:@"Type mismatch when casting object, expected %@", v5];

    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v6 userInfo:0];
    objc_exception_throw(v7);
  }

  return v1;
}

void sub_182FA62B8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id CTThrowingCastIfClass<CTSupportedMaxDataRates>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 stringWithFormat:@"Type mismatch when casting object, expected %@", v5];

    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v6 userInfo:0];
    objc_exception_throw(v7);
  }

  return v1;
}

void sub_182FA677C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_182FA681C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182FA69CC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182FA6FC0(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id CTThrowingCastIfClass<CTNetworkList>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 stringWithFormat:@"Type mismatch when casting object, expected %@", v5];

    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v6 userInfo:0];
    objc_exception_throw(v7);
  }

  return v1;
}

void sub_182FA780C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id CTThrowingCastIfClass<CTNetwork>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 stringWithFormat:@"Type mismatch when casting object, expected %@", v5];

    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v6 userInfo:0];
    objc_exception_throw(v7);
  }

  return v1;
}

void sub_182FA7CD0(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_182FA7D70(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182FA80B8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id CTThrowingCastIfClass<CTNetworkSelectionInfo>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 stringWithFormat:@"Type mismatch when casting object, expected %@", v5];

    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v6 userInfo:0];
    objc_exception_throw(v7);
  }

  return v1;
}

void sub_182FA857C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_182FA861C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182FA8964(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id CTThrowingCastIfClass<CTEncryptionStatusInfo>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 stringWithFormat:@"Type mismatch when casting object, expected %@", v5];

    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v6 userInfo:0];
    objc_exception_throw(v7);
  }

  return v1;
}

void sub_182FA8E1C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_182FA90C0(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id CTThrowingCastIfClass<CTRoamingStatus>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 stringWithFormat:@"Type mismatch when casting object, expected %@", v5];

    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v6 userInfo:0];
    objc_exception_throw(v7);
  }

  return v1;
}

void sub_182FA93D4(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_182FA97B0(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_182FA9850(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182FA9B5C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_182FA9BFC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182FA9D94(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_182FAA250(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_182FAA2F0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182FAA638(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_182FAA6D8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182FAA888(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182FAAF54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_182FAB4EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_182FAB82C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_182FABB6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_182FABE4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_182FAC0B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_182FAC4B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_182FAC6D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v8 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_182FACA4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v8 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_182FACDA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v8 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_182FAD0E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v10 - 96), 8);

  _Unwind_Resume(a1);
}

void sub_182FAD3A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_182FAD8FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_182FADA1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v17 = v16;

  _Unwind_Resume(a1);
}

void sub_182FADB24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v17 = v16;

  _Unwind_Resume(a1);
}

void sub_182FADC08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v16 = v15;

  _Unwind_Resume(a1);
}

void sub_182FADDFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  v23 = v22;

  _Unwind_Resume(a1);
}

void sub_182FAF140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  objc_destroyWeak((v15 + 48));
  objc_destroyWeak((v16 - 40));

  _Unwind_Resume(a1);
}

void sub_182FAF994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  v25 = v23;

  _Block_object_dispose(&a16, 8);
  _Block_object_dispose((v24 - 112), 8);

  _Unwind_Resume(a1);
}

void sub_182FAFF50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  v25 = v23;

  _Block_object_dispose(&a16, 8);
  _Block_object_dispose((v24 - 112), 8);

  _Unwind_Resume(a1);
}

uint64_t MMSPduEncoder::MMSPduEncoder(uint64_t result, int a2)
{
  *result = a2;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 8) = 0;
  *(result + 32) = 0;
  return result;
}

void MMSPduEncoder::MMSPduEncoder(MMSPduEncoder *this)
{
  *this = 1;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 1) = 0;
  *(this + 8) = 0;
}

void MMSPduEncoder::encodeString(MMSPduEncoder *this, const char *a2)
{
  if (a2)
  {
    LOBYTE(v4) = *a2;
    if (*a2)
    {
      v5 = 1;
      do
      {
        std::string::push_back((this + 8), v4);
        v4 = a2[v5++];
      }

      while (v4);
    }
  }

  std::string::push_back((this + 8), 0);
}

void MMSPduEncoder::encodeWspLongInteger(MMSPduEncoder *this, unsigned int a2)
{
  v3 = 3;
  while (!(a2 >> (8 * v3)))
  {
    if (!--v3)
    {
      v4 = (this + 8);
      v5 = 1;
      std::string::push_back((this + 8), 1);
      goto LABEL_6;
    }
  }

  v6 = v3 + 1;
  v5 = v3 + 1;
  v4 = (this + 8);
  std::string::push_back((this + 8), v3 + 1);
  if ((v6 & 0x100) != 0)
  {
    return;
  }

LABEL_6:
  v7 = v5;
  v8 = v5 + 1;
  v9 = 8 * v7 - 8;
  do
  {
    std::string::push_back(v4, a2 >> v9);
    --v8;
    v9 -= 8;
  }

  while (v8 > 1);
}

void MMSPduEncoder::encodeWspIntegerValue(MMSPduEncoder *this, unsigned int a2)
{
  if (a2 > 0x7F)
  {
    MMSPduEncoder::encodeWspLongInteger(this, a2);
  }

  else
  {
    std::string::push_back((this + 8), a2 | 0x80);
  }
}

void MMSPduEncoder::encodeWspUintvarInteger(MMSPduEncoder *this, unsigned int a2)
{
  if (a2)
  {
    v4 = 1;
    for (i = 28; i != -7; i -= 7)
    {
      v6 = (a2 >> i) & 0x7F;
      v4 &= v6 == 0;
      if ((v4 & 1) == 0)
      {
        std::string::push_back((this + 8), v6 | ((i != 0) << 7));
      }
    }
  }

  else
  {
    v7 = (this + 8);

    std::string::push_back(v7, 0);
  }
}

void MMSPduEncoder::encodeWspValueLength(MMSPduEncoder *this, unsigned int a2)
{
  if (a2 > 0x1E)
  {
    std::string::push_back((this + 8), 31);

    MMSPduEncoder::encodeWspUintvarInteger(this, a2);
  }

  else
  {
    v4 = (this + 8);

    std::string::push_back(v4, a2);
  }
}

void MMSPduEncoder::encodeWspTextString(MMSPduEncoder *this, const char *a2)
{
  if (a2 && *a2 < 0)
  {
    std::string::push_back((this + 8), 127);
  }

  MMSPduEncoder::encodeString(this, a2);
}

void MMSPduEncoder::encodeEncodedString(MMSPduEncoder *this, uint64_t a2, MMSCharsetHeader *a3)
{
  v3 = a2;
  v6 = (a2 + 23);
  v5 = *(a2 + 23);
  if (a3 == 3 || (v5 >= 0 ? (v7 = *(a2 + 23)) : (v7 = *(a2 + 8)), !v7))
  {
    if (v5 < 0)
    {
      a2 = *a2;
    }

    MMSPduEncoder::encodeString(this, a2);
  }

  else
  {
    v8 = a3;
    v20[0] = 0;
    v20[1] = 0;
    v21 = 0;
    v9 = *(this + 8);
    v10 = v9 == a3 || v9 == 0;
    if (!v10 && MMSPduDecoder::convertStringToTargetCharset(a2, v20, a3, v9))
    {
      v6 = &v21 + 7;
      v8 = *(this + 8);
      v3 = v20;
    }

    if (v8 == 106)
    {
      v11 = v3;
      if (*v6 < 0)
      {
        v11 = *v3;
      }

      do
      {
        v12 = *v11++;
        v13 = v12 == 0;
      }

      while (v12 > 0);
      if (v13)
      {
        v8 = 3;
      }
    }

    *__p = 0u;
    v18 = 0u;
    LODWORD(__p[0]) = *this;
    v19 = 0;
    __p[1] = 0;
    v18 = 0uLL;
    LODWORD(v19) = *(this + 8);
    MMSPduEncoder::encodeWspIntegerValue(__p, v8);
    if (*v6 < 0)
    {
      v3 = *v3;
    }

    MMSPduEncoder::encodeWspTextString(__p, v3);
    if (v18 >= 0)
    {
      v14 = HIBYTE(v18);
    }

    else
    {
      v14 = v18;
    }

    MMSPduEncoder::encodeWspValueLength(this, v14);
    if (v18 >= 0)
    {
      v15 = &__p[1];
    }

    else
    {
      v15 = __p[1];
    }

    if (v18 >= 0)
    {
      v16 = HIBYTE(v18);
    }

    else
    {
      v16 = v18;
    }

    std::string::append((this + 8), v15, v16);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p[1]);
    }

    if (SHIBYTE(v21) < 0)
    {
      operator delete(v20[0]);
    }
  }
}

std::string *MMSPduEncoder::append(MMSPduEncoder *this, MMSPduEncoder *a2)
{
  v4 = *(a2 + 1);
  v2 = a2 + 8;
  v3 = v4;
  v5 = *(v2 + 1);
  if (v2[23] >= 0)
  {
    v6 = v2[23];
  }

  else
  {
    v2 = v3;
    v6 = v5;
  }

  return std::string::append((this + 8), v2, v6);
}

BOOL MMSPduEncoder::encodeHeaders(MMSPduEncoder *this, const MMSHeaderContainer *a2)
{
  v4 = MMSHeaderContainer::headerWithName(a2, "Content-Type");
  v5 = MMSHeaderContainer::headerWithName(a2, "X-Mms-Message-Type");
  v6 = MMSHeaderContainer::headerWithName(a2, "X-Mms-Transaction-ID");
  v7 = MMSHeaderContainer::headerWithName(a2, "X-Mms-MMS-Version");
  if (v5 && (MMSHeader::encode(v5, this) & 1) == 0)
  {
    v12 = sMmsPduLog();
    result = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    MMSPduEncoder::encodeHeaders(v12, v13, v14, v15, v16, v17, v18, v19);
    return 0;
  }

  if (v6 && (MMSHeader::encode(v6, this) & 1) == 0)
  {
    v20 = sMmsPduLog();
    result = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    MMSPduEncoder::encodeHeaders(v20, v21, v22, v23, v24, v25, v26, v27);
    return 0;
  }

  if (v7 && (MMSHeader::encode(v7, this) & 1) == 0)
  {
    v28 = sMmsPduLog();
    result = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    MMSPduEncoder::encodeHeaders(v28, v29, v30, v31, v32, v33, v34, v35);
    return 0;
  }

  if (!MMSHeaderContainer::headerCount(a2))
  {
    return 1;
  }

  LODWORD(v8) = 0;
  while (1)
  {
    v9 = MMSHeaderEncodingMap::encodingForNumber(a2, v8);
    if (v9 != v4)
    {
      v10 = v9;
      if (v9 != v5 && v9 != v6 && v9 != v7 && (MMSHeader::encode(v9, this) & 1) == 0)
      {
        break;
      }
    }

    v8 = (v8 + 1);
    if (MMSHeaderContainer::headerCount(a2) <= v8)
    {
      return 1;
    }
  }

  v36 = sMmsPduLog();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    MMSPduEncoder::encodeHeaders(v10, v36);
  }

  v37 = sMmsPduLog();
  result = os_log_type_enabled(v37, OS_LOG_TYPE_ERROR);
  if (result)
  {
    MMSPduEncoder::encodeHeaders(v10, v37);
    return 0;
  }

  return result;
}

BOOL MMSPduEncoder::_encodeMimePart(MMSPduEncoder *this, const MMSMimePart *a2)
{
  memset(&v26, 0, sizeof(v26));
  v4 = *(a2 + 9);
  v5 = *(a2 + 24);
  v6 = MMSHeaderContainer::contentType(a2);
  v7 = v6;
  if (v6)
  {
    v8 = (*(*v6 + 16))(v6);
    if (!strcmp(v8, "text"))
    {
      v14 = MMSParameterContainer::charset((v7 + 1));
      std::string::__assign_external(&v26, v4, v5);
      v15 = *(this + 8);
      if (v15)
      {
        v16 = v14 == v15;
      }

      else
      {
        v16 = 1;
      }

      if (!v16 && v14 != 0)
      {
        MMSPduDecoder::convertStringToTargetCharsetInPlace(&v26, v14, v15);
        v18 = *(this + 8);
        operator new();
      }

      v9 = v7;
      if (v15 == 106)
      {
        v19 = &v26;
        if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v19 = v26.__r_.__value_.__r.__words[0];
        }

        do
        {
          v21 = v19->__r_.__value_.__s.__data_[0];
          v19 = (v19 + 1);
          v20 = v21;
        }

        while (v21 > 0);
        if (!v20)
        {
          operator new();
        }
      }

      if (!a2)
      {
        if (v14)
        {
          v22 = MMSHeaderContainer::headerWithName(0, "Content-Disposition");
          if (v22)
          {
            MMSParameterContainer::setCharset((v22 + 32), v14);
          }
        }
      }
    }

    else
    {
      v9 = v7;
    }

    *__p = 0u;
    v24 = 0u;
    LODWORD(__p[0]) = *this;
    v25 = 0;
    __p[1] = 0;
    v24 = 0uLL;
    LODWORD(v25) = *(this + 8);
    (*(*v9 + 40))(v9, __p);
    MMSPduEncoder::encodeHeaders(__p, a2);
    if (v24 >= 0)
    {
      v10 = HIBYTE(v24);
    }

    else
    {
      v10 = v24;
    }

    MMSPduEncoder::encodeWspUintvarInteger(this, v10);
    MMSPduEncoder::encodeWspUintvarInteger(this, v5);
    if (v24 >= 0)
    {
      v11 = &__p[1];
    }

    else
    {
      v11 = __p[1];
    }

    if (v24 >= 0)
    {
      v12 = HIBYTE(v24);
    }

    else
    {
      v12 = v24;
    }

    std::string::append((this + 8), v11, v12);
    if (v5)
    {
      std::string::append((this + 8), v4, v5);
    }

    if (SHIBYTE(v24) < 0)
    {
      operator delete(__p[1]);
    }
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  return v7 != 0;
}