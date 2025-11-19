void sub_1DE280318(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFData const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

const void **applesauce::CF::ObjectRef<__CFData const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t AMCP::Implementation::In_Place_Storage<applesauce::CF::StringRef>::dispatch(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (result <= 2)
  {
    if (result)
    {
      if (result == 1)
      {
        AMCP::Implementation::In_Place_Storage<applesauce::CF::StringRef>::construct<applesauce::CF::StringRef const&>(a3, a2);
        return 0;
      }

      if (result != 2)
      {
        return result;
      }

      *a3 = 0u;
      *(a3 + 16) = 0u;
      *a3 = *a2;
      *a2 = 0;
      *(a3 + 32) = AMCP::Implementation::In_Place_Storage<applesauce::CF::StringRef>::dispatch;
    }

    AMCP::Implementation::In_Place_Storage<applesauce::CF::StringRef>::destruct(a2);
    return 0;
  }

  if (result > 4)
  {
    if (result == 5)
    {
      v9 = AMCP::Implementation::get_type_marker<applesauce::CF::StringRef>();
      v10 = *(a2 + 32);
      v25[0] = 0;
      if (v10)
      {
        v10(3, a2, 0, v25);
        v10 = v25[0];
      }

      if (v10 != v9)
      {
        goto LABEL_35;
      }

      v11 = *(a3 + 32);
      cf[0] = 0;
      if (v11)
      {
        v11(3, a3, 0, cf);
        v11 = cf[0];
      }

      if (v11 == v9)
      {
        if (*(a2 + 32))
        {
          v25[0] = AMCP::Implementation::get_type_marker<applesauce::CF::StringRef>();
          v12 = (*(a2 + 32))(4, a2, 0, v25);
        }

        else
        {
          v12 = 0;
        }

        v25[0] = AMCP::Implementation::get_type_marker<applesauce::CF::StringRef>();
        v20 = (*(a3 + 32))(4, a3, 0, v25);
        if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(*v12, v20))
        {
          return 0;
        }
      }

      else
      {
LABEL_35:
        AMCP::Thing::convert_to<applesauce::CF::StringRef>(v25, a2);
        AMCP::Thing::convert_to<applesauce::CF::StringRef>(cf, a3);
        v13 = v25[0];
        v14 = applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(v25[0], cf);
        if (cf[0])
        {
          CFRelease(cf[0]);
        }

        if (v13)
        {
          CFRelease(v13);
        }

        if (v14)
        {
          return 0;
        }
      }

      return 1;
    }

    if (result != 6)
    {
      return result;
    }

    if ((*a4 == AMCP::Implementation::get_type_marker<mcp_applesauce::CF::PropertyListRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::StringRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::DataRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::NumberRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::BooleanRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::DateRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::DictionaryRef>()) && *a4 == AMCP::Implementation::get_type_marker<mcp_applesauce::CF::PropertyListRef>())
    {
      if (*(a2 + 32))
      {
        v25[0] = AMCP::Implementation::get_type_marker<applesauce::CF::StringRef>();
        v7 = (*(a2 + 32))(4, a2, 0, v25);
      }

      else
      {
        v7 = 0;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<mcp_applesauce::CF::PropertyListRef>())
      {
        if (v7)
        {
          mcp_applesauce::CF::PropertyListRef::from_get(v25, *v7);
          v24 = 0;
          *cf = 0u;
          v23 = 0u;
          AMCP::Implementation::In_Place_Storage<mcp_applesauce::CF::PropertyListRef>::construct<mcp_applesauce::CF::PropertyListRef&>(cf, v25);
          if (v25[0])
          {
            CFRelease(v25[0]);
          }

          if (v24)
          {
            goto LABEL_75;
          }

LABEL_57:
          if (*a4 == AMCP::Implementation::get_type_marker<std::string>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::StringRef>())
          {
            if (*(a2 + 32))
            {
              v25[0] = AMCP::Implementation::get_type_marker<applesauce::CF::StringRef>();
              v17 = (*(a2 + 32))(4, a2, 0, v25);
            }

            else
            {
              v17 = 0;
            }

            if (*a4 == AMCP::Implementation::get_type_marker<std::string>())
            {
              if (v17)
              {
                if (!*v17)
                {
                  exception = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(exception, "Could not construct");
                  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                applesauce::CF::convert_to<std::string,0>(&v28, *v17);
                *v25 = v28;
                v26 = v29;
                v18 = AMCP::Implementation::In_Place_Storage<std::string>::dispatch;
LABEL_71:
                v27 = v18;
                goto LABEL_73;
              }

              goto LABEL_83;
            }

            if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::StringRef>())
            {
              if (v17)
              {
                v19 = *v17;
                if (v19)
                {
                  CFRetain(v19);
                }

                v26 = 0uLL;
                v25[0] = v19;
                v25[1] = 0;
                v18 = AMCP::Implementation::In_Place_Storage<applesauce::CF::StringRef>::dispatch;
                goto LABEL_71;
              }

LABEL_83:
              __assert_rtn("create_string_from", "Thing.h", 1254, "in_value_ptr != nullptr");
            }
          }

          v27 = 0;
          *v25 = 0u;
          v26 = 0u;
LABEL_73:
          AMCP::swap(v25, cf, v16);
          if (v27)
          {
            v27(0, v25, 0, 0);
          }

LABEL_75:
          AMCP::swap(cf, a3, v15);
          if (v24)
          {
            v24(0, cf, 0, 0);
          }

          return 0;
        }

LABEL_82:
        __assert_rtn("create_cf_plist_from", "Thing.h", 2434, "in_value_ptr != nullptr");
      }

      if ((*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::StringRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::DataRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::NumberRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::BooleanRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::DateRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::DictionaryRef>()) && !v7)
      {
        goto LABEL_82;
      }
    }

    v24 = 0;
    *cf = 0u;
    v23 = 0u;
    goto LABEL_57;
  }

  if (result == 3)
  {
    v8 = AMCP::Implementation::get_type_marker<applesauce::CF::StringRef>();
    result = 0;
    *a4 = v8;
  }

  else if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::StringRef>())
  {
    return a2;
  }

  else
  {
    return 0;
  }

  return result;
}

double AMCP::Implementation::In_Place_Storage<applesauce::CF::StringRef>::destruct(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t AMCP::Implementation::In_Place_Storage<applesauce::CF::StringRef>::construct<applesauce::CF::StringRef const&>(uint64_t a1, CFTypeRef *a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v3 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  *a1 = v3;
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<applesauce::CF::StringRef>::dispatch;
  return a1;
}

uint64_t AMCP::Implementation::get_type_marker<std::string>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[507];
}

BOOL AMCP::Implementation::In_Place_Storage<std::string>::dispatch(_BOOL8 result, uint64_t a2, std::string *this, uint64_t *a4)
{
  if (result > 2)
  {
    if (result <= 4)
    {
      if (result == 3)
      {
        v11 = AMCP::Implementation::get_type_marker<std::string>();
        result = 0;
        *a4 = v11;
      }

      else if (*a4 == AMCP::Implementation::get_type_marker<std::string>())
      {
        return a2;
      }

      else
      {
        return 0;
      }

      return result;
    }

    if (result != 5)
    {
      if (result != 6)
      {
        return result;
      }

      if (*a4 != AMCP::Implementation::get_type_marker<std::string>() && *a4 != AMCP::Implementation::get_type_marker<applesauce::CF::StringRef>())
      {
        goto LABEL_66;
      }

      if (*(a2 + 32))
      {
        v34[0] = AMCP::Implementation::get_type_marker<std::string>();
        v10 = (*(a2 + 32))(4, a2, 0, v34);
      }

      else
      {
        v10 = 0;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::string>())
      {
        if (v10)
        {
          if (v10[23] < 0)
          {
            std::string::__init_copy_ctor_external(&__p, *v10, *(v10 + 1));
          }

          else
          {
            __p = *v10;
          }

          *v34 = *&__p.__r_.__value_.__l.__data_;
          v35 = __p.__r_.__value_.__r.__words[2];
          v25 = AMCP::Implementation::In_Place_Storage<std::string>::dispatch;
          goto LABEL_71;
        }

LABEL_95:
        __assert_rtn("create_string_from", "Thing.h", 1254, "in_value_ptr != nullptr");
      }

      if (*a4 != AMCP::Implementation::get_type_marker<applesauce::CF::StringRef>())
      {
LABEL_66:
        v36 = 0;
        *v34 = 0u;
        v35 = 0u;
        goto LABEL_72;
      }

      if (!v10)
      {
        goto LABEL_95;
      }

      v9 = v10[23];
      if (v9 < 0)
      {
        if (!*v10)
        {
          v24 = 0;
LABEL_65:
          v35 = 0uLL;
          v34[0] = v24;
          v34[1] = 0;
          v25 = AMCP::Implementation::In_Place_Storage<applesauce::CF::StringRef>::dispatch;
LABEL_71:
          v36 = v25;
LABEL_72:
          AMCP::swap(v34, this, v9);
          if (v36)
          {
            (v36)(0, v34, 0, 0);
          }

          return 0;
        }

        v9 = *(v10 + 1);
        v10 = *v10;
      }

      v24 = CFStringCreateWithBytes(0, v10, v9, 0x8000100u, 0);
      __p.__r_.__value_.__r.__words[0] = v24;
      if (!v24)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      goto LABEL_65;
    }

    v12 = AMCP::Implementation::get_type_marker<std::string>();
    v13 = *(a2 + 32);
    v34[0] = 0;
    if (v13)
    {
      v13(3, a2, 0, v34);
      v13 = v34[0];
    }

    if (v13 == v12)
    {
      size = this[1].__r_.__value_.__l.__size_;
      __p.__r_.__value_.__r.__words[0] = 0;
      if (size)
      {
        size(3, this, 0, &__p);
        size = __p.__r_.__value_.__r.__words[0];
      }

      if (size == v12)
      {
        if (*(a2 + 32))
        {
          v34[0] = AMCP::Implementation::get_type_marker<std::string>();
          v15 = (*(a2 + 32))(4, a2, 0, v34);
        }

        else
        {
          v15 = 0;
        }

        if (this[1].__r_.__value_.__l.__size_)
        {
          v34[0] = AMCP::Implementation::get_type_marker<std::string>();
          v26 = (this[1].__r_.__value_.__l.__size_)(4, this, 0, v34);
        }

        else
        {
          v26 = 0;
        }

        v27 = *(v15 + 23);
        if (v27 >= 0)
        {
          v28 = *(v15 + 23);
        }

        else
        {
          v28 = *(v15 + 8);
        }

        v29 = *(v26 + 23);
        v30 = v29;
        if ((v29 & 0x80u) != 0)
        {
          v29 = *(v26 + 8);
        }

        if (v28 != v29)
        {
          return 0;
        }

        v31 = v27 >= 0 ? v15 : *v15;
        v32 = v30 >= 0 ? v26 : *v26;
        return !memcmp(v31, v32, v28);
      }
    }

    AMCP::Thing::convert_to<std::string>(v34, a2);
    AMCP::Thing::convert_to<std::string>(&__p, this);
    v17 = SBYTE7(v35);
    if ((SBYTE7(v35) & 0x80u) == 0)
    {
      v18 = BYTE7(v35);
    }

    else
    {
      v18 = v34[1];
    }

    v19 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    v20 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v19 = __p.__r_.__value_.__l.__size_;
    }

    if (v18 == v19)
    {
      if ((SBYTE7(v35) & 0x80u) == 0)
      {
        v21 = v34;
      }

      else
      {
        v21 = v34[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      v23 = memcmp(v21, p_p, v18) == 0;
      if ((v20 & 0x80000000) == 0)
      {
LABEL_51:
        if (v17 < 0)
        {
          operator delete(v34[0]);
          if (v23)
          {
            return 1;
          }
        }

        else if (v23)
        {
          return 1;
        }

        return 0;
      }
    }

    else
    {
      v23 = 0;
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_51;
      }
    }

    operator delete(__p.__r_.__value_.__l.__data_);
    goto LABEL_51;
  }

  if (result)
  {
    if (result)
    {
      *&this->__r_.__value_.__l.__data_ = 0u;
      *&this->__r_.__value_.__r.__words[2] = 0u;
      if (*(a2 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(this, *a2, *(a2 + 8));
      }

      else
      {
        v16 = *a2;
        this->__r_.__value_.__r.__words[2] = *(a2 + 16);
        *&this->__r_.__value_.__l.__data_ = v16;
      }

      result = 0;
      this[1].__r_.__value_.__l.__size_ = AMCP::Implementation::In_Place_Storage<std::string>::dispatch;
    }

    else if (result == 2)
    {
      v7 = 0uLL;
      *&this->__r_.__value_.__l.__data_ = 0u;
      *&this->__r_.__value_.__r.__words[2] = 0u;
      v8 = *a2;
      this->__r_.__value_.__r.__words[2] = *(a2 + 16);
      *&this->__r_.__value_.__l.__data_ = v8;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      this[1].__r_.__value_.__l.__size_ = AMCP::Implementation::In_Place_Storage<std::string>::dispatch;
      if (*(a2 + 23) < 0)
      {
        operator delete(*a2);
        v7 = 0uLL;
      }

      result = 0;
      *(a2 + 32) = 0;
      *a2 = v7;
      *(a2 + 16) = v7;
    }
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    result = 0;
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

void AMCP::Thing::convert_to<std::string>(std::string *a1, uint64_t a2)
{
  if (!*(a2 + 32))
  {
    goto LABEL_17;
  }

  v4 = AMCP::Implementation::get_type_marker<std::string>();
  v5 = *(a2 + 32);
  v17 = 0;
  if (v5)
  {
    v5(3, a2, 0, &v17);
    v5 = v17;
  }

  if (v5 == v4)
  {
    *&v15[0] = v4;
    v6 = (*(a2 + 32))(4, a2, 0, v15);
    if (v6)
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(a1, *v6, *(v6 + 8));
      }

      else
      {
        *&a1->__r_.__value_.__l.__data_ = *v6;
        a1->__r_.__value_.__r.__words[2] = *(v6 + 16);
      }

      return;
    }

LABEL_17:
    exception = __cxa_allocate_exception(8uLL);
    v9 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v9, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v14 = AMCP::Implementation::get_type_marker<std::string>();
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  (*(a2 + 32))(6, a2, v15, &v14);
  if (!v16)
  {
    v10 = __cxa_allocate_exception(8uLL);
    v11 = std::bad_cast::bad_cast(v10);
    __cxa_throw(v11, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v14 = v4;
  v7 = v16(4, v15, 0, &v14);
  if (!v7)
  {
    v12 = __cxa_allocate_exception(8uLL);
    v13 = std::bad_cast::bad_cast(v12);
    __cxa_throw(v13, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  if (*(v7 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a1, *v7, *(v7 + 8));
  }

  else
  {
    *&a1->__r_.__value_.__l.__data_ = *v7;
    a1->__r_.__value_.__r.__words[2] = *(v7 + 16);
  }

  if (v16)
  {
    v16(0, v15, 0, 0);
  }
}

void sub_1DE281164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

uint64_t applesauce::CF::details::handle_case<float,unsigned char>(const __CFNumber *a1, CFNumberType a2)
{
  valuePtr = 0.0;
  Value = CFNumberGetValue(a1, a2, &valuePtr);
  v3 = valuePtr;
  if (!Value)
  {
    v3 = 0;
  }

  return v3 | ((Value != 0) << 8);
}

uint64_t applesauce::CF::details::handle_case<double,unsigned char>(const __CFNumber *a1, CFNumberType a2)
{
  valuePtr = 0.0;
  Value = CFNumberGetValue(a1, a2, &valuePtr);
  v3 = valuePtr;
  if (!Value)
  {
    v3 = 0;
  }

  return v3 | ((Value != 0) << 8);
}

uint64_t applesauce::CF::details::handle_case<float,char>(const __CFNumber *a1, CFNumberType a2)
{
  valuePtr = 0.0;
  Value = CFNumberGetValue(a1, a2, &valuePtr);
  v3 = valuePtr;
  if (!Value)
  {
    LOBYTE(v3) = 0;
  }

  return v3 | ((Value != 0) << 8);
}

uint64_t applesauce::CF::details::handle_case<double,char>(const __CFNumber *a1, CFNumberType a2)
{
  valuePtr = 0.0;
  Value = CFNumberGetValue(a1, a2, &valuePtr);
  v3 = valuePtr;
  if (!Value)
  {
    LOBYTE(v3) = 0;
  }

  return v3 | ((Value != 0) << 8);
}

uint64_t applesauce::CF::convert_as<BOOL,0>(const __CFNumber *a1)
{
  TypeID = CFNumberGetTypeID();
  if (TypeID == CFGetTypeID(a1))
  {
    return applesauce::CF::details::number_convert_as<BOOL>(a1);
  }

  v4 = CFBooleanGetTypeID();
  if (v4 == CFGetTypeID(a1))
  {
    v5 = CFBooleanGetValue(a1) != 0;
    v6 = 1;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  return v5 | (v6 << 8);
}

uint64_t AMCP::Implementation::In_Place_Storage<AMCP::Direction>::dispatch(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (result <= 2)
  {
    if (result)
    {
      if (result == 1)
      {
        result = 0;
        *a3 = 0u;
        *(a3 + 16) = 0u;
        *a3 = *a2;
        *(a3 + 32) = AMCP::Implementation::In_Place_Storage<AMCP::Direction>::dispatch;
        return result;
      }

      if (result != 2)
      {
        return result;
      }

      result = 0;
      v7 = 0uLL;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *a3 = *a2;
      *(a3 + 32) = AMCP::Implementation::In_Place_Storage<AMCP::Direction>::dispatch;
      *(a2 + 32) = 0;
    }

    else
    {
      result = 0;
      *(a2 + 32) = 0;
      v7 = 0uLL;
    }

    *a2 = v7;
    *(a2 + 16) = v7;
    return result;
  }

  if (result > 4)
  {
    if (result == 5)
    {
      v11 = AMCP::Implementation::get_type_marker<AMCP::Direction>();
      v12 = *(a2 + 32);
      *&v32 = 0;
      if (v12)
      {
        v12(3, a2, 0, &v32);
        v12 = v32;
      }

      if (v12 != v11)
      {
        goto LABEL_28;
      }

      v13 = *(a3 + 32);
      v35 = 0;
      if (v13)
      {
        v13(3, a3, 0, &v35);
        v13 = v35;
      }

      if (v13 == v11)
      {
        if (*(a2 + 32))
        {
          *&v32 = AMCP::Implementation::get_type_marker<AMCP::Direction>();
          v14 = (*(a2 + 32))(4, a2, 0, &v32);
        }

        else
        {
          v14 = 0;
        }

        *&v32 = AMCP::Implementation::get_type_marker<AMCP::Direction>();
        if (*v14 != *(*(a3 + 32))(4, a3, 0, &v32))
        {
          return 0;
        }
      }

      else
      {
LABEL_28:
        v15 = AMCP::Thing::convert_to<AMCP::Direction>(a2);
        if (v15 != AMCP::Thing::convert_to<AMCP::Direction>(a3))
        {
          return 0;
        }
      }

      return 1;
    }

    if (result != 6)
    {
      return result;
    }

    if (!AMCP::is_one_of<BOOL,char,signed char,unsigned char,short,unsigned short,int,unsigned int,long,unsigned long,long long,unsigned long long,float,double,long double,AMCP::Direction,applesauce::CF::BooleanRef,applesauce::CF::NumberRef>(a4))
    {
      goto LABEL_88;
    }

    if (*(a2 + 32))
    {
      *&v32 = AMCP::Implementation::get_type_marker<AMCP::Direction>();
      v9 = (*(a2 + 32))(4, a2, 0, &v32);
    }

    else
    {
      v9 = 0;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<BOOL>())
    {
      if (v9)
      {
        v16 = *v9 != 0;
        v32 = 0u;
        v33 = 0u;
        LOBYTE(v32) = v16;
        v17 = AMCP::Implementation::In_Place_Storage<BOOL>::dispatch;
LABEL_82:
        v34 = v17;
        goto LABEL_89;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<char>())
    {
      if (v9)
      {
        v18 = *v9;
        v32 = 0u;
        v33 = 0u;
        LOBYTE(v32) = v18;
        v17 = AMCP::Implementation::In_Place_Storage<char>::dispatch;
        goto LABEL_82;
      }

LABEL_83:
      __assert_rtn("create_number_from", "Thing.h", 978, "in_value_ptr != nullptr");
    }

    if (*a4 == AMCP::Implementation::get_type_marker<signed char>())
    {
      if (v9)
      {
        v19 = *v9;
        v32 = 0u;
        v33 = 0u;
        LOBYTE(v32) = v19;
        v17 = AMCP::Implementation::In_Place_Storage<signed char>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<unsigned char>())
    {
      if (v9)
      {
        v20 = *v9;
        v32 = 0u;
        v33 = 0u;
        LOBYTE(v32) = v20;
        v17 = AMCP::Implementation::In_Place_Storage<unsigned char>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<short>())
    {
      if (v9)
      {
        v21 = *v9;
        v32 = 0u;
        v33 = 0u;
        LOWORD(v32) = v21;
        v17 = AMCP::Implementation::In_Place_Storage<short>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<unsigned short>())
    {
      if (v9)
      {
        v22 = *v9;
        v32 = 0u;
        v33 = 0u;
        LOWORD(v32) = v22;
        v17 = AMCP::Implementation::In_Place_Storage<unsigned short>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<int>())
    {
      if (v9)
      {
        v23 = *v9;
        v32 = 0u;
        v33 = 0u;
        LODWORD(v32) = v23;
        v17 = AMCP::Implementation::In_Place_Storage<int>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<unsigned int>())
    {
      if (v9)
      {
        v24 = *v9;
        v32 = 0u;
        v33 = 0u;
        LODWORD(v32) = v24;
        v17 = AMCP::Implementation::In_Place_Storage<unsigned int>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<long>())
    {
      if (v9)
      {
        v25 = *v9;
        v33 = 0uLL;
        v32 = v25;
        v17 = AMCP::Implementation::In_Place_Storage<long>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<unsigned long>())
    {
      if (v9)
      {
        v26 = *v9;
        v33 = 0uLL;
        v32 = v26;
        v17 = AMCP::Implementation::In_Place_Storage<unsigned long>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<long long>())
    {
      if (v9)
      {
        v27 = *v9;
        v33 = 0uLL;
        v32 = v27;
        v17 = AMCP::Implementation::In_Place_Storage<long long>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<unsigned long long>())
    {
      if (v9)
      {
        v28 = *v9;
        v33 = 0uLL;
        v32 = v28;
        v17 = AMCP::Implementation::In_Place_Storage<unsigned long long>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<float>())
    {
      if (v9)
      {
        v29 = *v9;
        v32 = 0u;
        v33 = 0u;
        *&v32 = v29;
        v17 = AMCP::Implementation::In_Place_Storage<float>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<double>())
    {
      if (v9)
      {
        LODWORD(v30) = *v9;
        v33 = 0uLL;
        v32 = COERCE_UNSIGNED_INT64(v30);
        v17 = AMCP::Implementation::In_Place_Storage<double>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<long double>())
    {
      if (v9)
      {
        LODWORD(v31) = *v9;
        v33 = 0uLL;
        v32 = COERCE_UNSIGNED_INT64(v31);
        v17 = AMCP::Implementation::In_Place_Storage<long double>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<AMCP::Direction>())
    {
      if (v9)
      {
        v32 = 0u;
        v33 = 0u;
        LODWORD(v32) = *v9;
        v17 = AMCP::Implementation::In_Place_Storage<AMCP::Direction>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::BooleanRef>())
    {
      AMCP::Implementation::create_number_from<int,applesauce::CF::BooleanRef>(&v32, v9);
      goto LABEL_89;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::NumberRef>())
    {
      AMCP::Implementation::create_number_from<AMCP::Direction,applesauce::CF::NumberRef>(&v32, v9);
    }

    else
    {
LABEL_88:
      v34 = 0;
      v32 = 0u;
      v33 = 0u;
    }

LABEL_89:
    AMCP::swap(&v32, a3, v8);
    if (v34)
    {
      v34(0, &v32, 0, 0);
    }

    return 0;
  }

  if (result == 3)
  {
    v10 = AMCP::Implementation::get_type_marker<AMCP::Direction>();
    result = 0;
    *a4 = v10;
  }

  else if (*a4 == AMCP::Implementation::get_type_marker<AMCP::Direction>())
  {
    return a2;
  }

  else
  {
    return 0;
  }

  return result;
}

void sub_1DE28194C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE28191CLL);
}

uint64_t AMCP::Thing::convert_to<AMCP::Direction>(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    goto LABEL_12;
  }

  v2 = AMCP::Implementation::get_type_marker<AMCP::Direction>();
  v3 = *(a1 + 32);
  v17 = 0;
  if (v3)
  {
    v3(3, a1, 0, &v17);
    v3 = v17;
  }

  if (v3 == v2)
  {
    *&v15[0] = v2;
    v4 = (*(a1 + 32))(4, a1, 0, v15);
    if (v4)
    {
      return *v4;
    }

LABEL_12:
    exception = __cxa_allocate_exception(8uLL);
    v9 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v9, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v14 = AMCP::Implementation::get_type_marker<AMCP::Direction>();
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  (*(a1 + 32))(6, a1, v15, &v14);
  if (!v16)
  {
    v10 = __cxa_allocate_exception(8uLL);
    v11 = std::bad_cast::bad_cast(v10);
    __cxa_throw(v11, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v14 = v2;
  v6 = v16(4, v15, 0, &v14);
  if (!v6)
  {
    v12 = __cxa_allocate_exception(8uLL);
    v13 = std::bad_cast::bad_cast(v12);
    __cxa_throw(v13, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v5 = *v6;
  if (v16)
  {
    v16(0, v15, 0, 0);
  }

  return v5;
}

void sub_1DE281AE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

CFNumberRef AMCP::Implementation::create_number_from<AMCP::Direction,applesauce::CF::NumberRef>(CFNumberRef *a1, _DWORD *a2)
{
  if (!a2)
  {
    __assert_rtn("create_number_from", "Thing.h", 978, "in_value_ptr != nullptr");
  }

  valuePtr = *a2 != 0;
  result = CFNumberCreate(0, kCFNumberCharType, &valuePtr);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  a1[2] = 0;
  a1[3] = 0;
  *a1 = result;
  a1[1] = 0;
  a1[4] = AMCP::Implementation::In_Place_Storage<applesauce::CF::NumberRef>::dispatch;
  return result;
}

uint64_t AMCP::Implementation::In_Place_Storage<unsigned long long>::dispatch(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (result <= 2)
  {
    if (result)
    {
      if (result == 1)
      {
        result = 0;
        *a3 = 0u;
        *(a3 + 16) = 0u;
        *a3 = *a2;
        *(a3 + 32) = AMCP::Implementation::In_Place_Storage<unsigned long long>::dispatch;
        return result;
      }

      if (result != 2)
      {
        return result;
      }

      result = 0;
      v7 = 0uLL;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *a3 = *a2;
      *(a3 + 32) = AMCP::Implementation::In_Place_Storage<unsigned long long>::dispatch;
      *(a2 + 32) = 0;
    }

    else
    {
      result = 0;
      *(a2 + 32) = 0;
      v7 = 0uLL;
    }

    *a2 = v7;
    *(a2 + 16) = v7;
    return result;
  }

  if (result > 4)
  {
    if (result == 5)
    {
      type = AMCP::Implementation::get_type_marker<unsigned long long>();
      v12 = *(a2 + 32);
      *&v32 = 0;
      if (v12)
      {
        v12(3, a2, 0, &v32);
        v12 = v32;
      }

      if (v12 != type)
      {
        goto LABEL_28;
      }

      v13 = *(a3 + 32);
      v35 = 0;
      if (v13)
      {
        v13(3, a3, 0, &v35);
        v13 = v35;
      }

      if (v13 == type)
      {
        if (*(a2 + 32))
        {
          *&v32 = AMCP::Implementation::get_type_marker<unsigned long long>();
          v14 = (*(a2 + 32))(4, a2, 0, &v32);
        }

        else
        {
          v14 = 0;
        }

        *&v32 = AMCP::Implementation::get_type_marker<unsigned long long>();
        if (*v14 != *(*(a3 + 32))(4, a3, 0, &v32))
        {
          return 0;
        }
      }

      else
      {
LABEL_28:
        v15 = AMCP::Thing::convert_to<unsigned long long>(a2);
        if (v15 != AMCP::Thing::convert_to<unsigned long long>(a3))
        {
          return 0;
        }
      }

      return 1;
    }

    if (result != 6)
    {
      return result;
    }

    if (!AMCP::is_one_of<BOOL,char,signed char,unsigned char,short,unsigned short,int,unsigned int,long,unsigned long,long long,unsigned long long,float,double,long double,AMCP::Direction,applesauce::CF::BooleanRef,applesauce::CF::NumberRef>(a4))
    {
      goto LABEL_88;
    }

    if (*(a2 + 32))
    {
      *&v32 = AMCP::Implementation::get_type_marker<unsigned long long>();
      v9 = (*(a2 + 32))(4, a2, 0, &v32);
    }

    else
    {
      v9 = 0;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<BOOL>())
    {
      if (v9)
      {
        v16 = *v9 != 0;
        v32 = 0u;
        v33 = 0u;
        LOBYTE(v32) = v16;
        v17 = AMCP::Implementation::In_Place_Storage<BOOL>::dispatch;
LABEL_82:
        v34 = v17;
        goto LABEL_89;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<char>())
    {
      if (v9)
      {
        v18 = *v9;
        v32 = 0u;
        v33 = 0u;
        LOBYTE(v32) = v18;
        v17 = AMCP::Implementation::In_Place_Storage<char>::dispatch;
        goto LABEL_82;
      }

LABEL_83:
      __assert_rtn("create_number_from", "Thing.h", 978, "in_value_ptr != nullptr");
    }

    if (*a4 == AMCP::Implementation::get_type_marker<signed char>())
    {
      if (v9)
      {
        v19 = *v9;
        v32 = 0u;
        v33 = 0u;
        LOBYTE(v32) = v19;
        v17 = AMCP::Implementation::In_Place_Storage<signed char>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<unsigned char>())
    {
      if (v9)
      {
        v20 = *v9;
        v32 = 0u;
        v33 = 0u;
        LOBYTE(v32) = v20;
        v17 = AMCP::Implementation::In_Place_Storage<unsigned char>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<short>())
    {
      if (v9)
      {
        v21 = *v9;
        v32 = 0u;
        v33 = 0u;
        LOWORD(v32) = v21;
        v17 = AMCP::Implementation::In_Place_Storage<short>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<unsigned short>())
    {
      if (v9)
      {
        v22 = *v9;
        v32 = 0u;
        v33 = 0u;
        LOWORD(v32) = v22;
        v17 = AMCP::Implementation::In_Place_Storage<unsigned short>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<int>())
    {
      if (v9)
      {
        v23 = *v9;
        v32 = 0u;
        v33 = 0u;
        LODWORD(v32) = v23;
        v17 = AMCP::Implementation::In_Place_Storage<int>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<unsigned int>())
    {
      if (v9)
      {
        v24 = *v9;
        v32 = 0u;
        v33 = 0u;
        LODWORD(v32) = v24;
        v17 = AMCP::Implementation::In_Place_Storage<unsigned int>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<long>())
    {
      if (v9)
      {
        v25 = *v9;
        v33 = 0uLL;
        v32 = v25;
        v17 = AMCP::Implementation::In_Place_Storage<long>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<unsigned long>())
    {
      if (v9)
      {
        v26 = *v9;
        v33 = 0uLL;
        v32 = v26;
        v17 = AMCP::Implementation::In_Place_Storage<unsigned long>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<long long>())
    {
      if (v9)
      {
        v27 = *v9;
        v33 = 0uLL;
        v32 = v27;
        v17 = AMCP::Implementation::In_Place_Storage<long long>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<unsigned long long>())
    {
      if (v9)
      {
        *(&v32 + 1) = 0;
        v33 = 0uLL;
        *&v32 = *v9;
        v17 = AMCP::Implementation::In_Place_Storage<unsigned long long>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<float>())
    {
      if (v9)
      {
        v28 = *v9;
        v32 = 0u;
        v33 = 0u;
        *&v32 = v28;
        v17 = AMCP::Implementation::In_Place_Storage<float>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<double>())
    {
      if (v9)
      {
        *&v29 = *v9;
        v33 = 0uLL;
        v32 = v29;
        v17 = AMCP::Implementation::In_Place_Storage<double>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<long double>())
    {
      if (v9)
      {
        *&v30 = *v9;
        v33 = 0uLL;
        v32 = v30;
        v17 = AMCP::Implementation::In_Place_Storage<long double>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<AMCP::Direction>())
    {
      if (v9)
      {
        v31 = *v9 != 0;
        v32 = 0u;
        v33 = 0u;
        LODWORD(v32) = v31;
        v17 = AMCP::Implementation::In_Place_Storage<AMCP::Direction>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::BooleanRef>())
    {
      AMCP::Implementation::create_number_from<long,applesauce::CF::BooleanRef>(&v32, v9);
      goto LABEL_89;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::NumberRef>())
    {
      AMCP::Implementation::create_number_from<unsigned long long,applesauce::CF::NumberRef>(&v32, v9);
    }

    else
    {
LABEL_88:
      v34 = 0;
      v32 = 0u;
      v33 = 0u;
    }

LABEL_89:
    AMCP::swap(&v32, a3, v8);
    if (v34)
    {
      v34(0, &v32, 0, 0);
    }

    return 0;
  }

  if (result == 3)
  {
    v10 = AMCP::Implementation::get_type_marker<unsigned long long>();
    result = 0;
    *a4 = v10;
  }

  else if (*a4 == AMCP::Implementation::get_type_marker<unsigned long long>())
  {
    return a2;
  }

  else
  {
    return 0;
  }

  return result;
}

void sub_1DE282234(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE282204);
}

uint64_t AMCP::Thing::convert_to<unsigned long long>(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    goto LABEL_12;
  }

  type = AMCP::Implementation::get_type_marker<unsigned long long>();
  v3 = *(a1 + 32);
  v17 = 0;
  if (v3)
  {
    v3(3, a1, 0, &v17);
    v3 = v17;
  }

  if (v3 == type)
  {
    *&v15[0] = type;
    v4 = (*(a1 + 32))(4, a1, 0, v15);
    if (v4)
    {
      return *v4;
    }

LABEL_12:
    exception = __cxa_allocate_exception(8uLL);
    v9 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v9, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v14 = AMCP::Implementation::get_type_marker<unsigned long long>();
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  (*(a1 + 32))(6, a1, v15, &v14);
  if (!v16)
  {
    v10 = __cxa_allocate_exception(8uLL);
    v11 = std::bad_cast::bad_cast(v10);
    __cxa_throw(v11, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v14 = type;
  v6 = v16(4, v15, 0, &v14);
  if (!v6)
  {
    v12 = __cxa_allocate_exception(8uLL);
    v13 = std::bad_cast::bad_cast(v12);
    __cxa_throw(v13, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v5 = *v6;
  if (v16)
  {
    v16(0, v15, 0, 0);
  }

  return v5;
}

void sub_1DE2823CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

void AMCP::Implementation::create_number_from<unsigned long long,applesauce::CF::NumberRef>(uint64_t a1, uint64_t *a2)
{
  if (!a2)
  {
    __assert_rtn("create_number_from", "Thing.h", 978, "in_value_ptr != nullptr");
  }

  valuePtr = *a2;
  v3 = CFNumberCreate(0, kCFNumberLongLongType, &valuePtr);
  v6 = v3;
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v4 = v3;
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  AMCP::Implementation::In_Place_Storage<applesauce::CF::NumberRef>::construct<applesauce::CF::NumberRef&>(a1, &v6);
  CFRelease(v4);
}

uint64_t AMCP::Implementation::In_Place_Storage<long long>::dispatch(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (result <= 2)
  {
    if (result)
    {
      if (result == 1)
      {
        result = 0;
        *a3 = 0u;
        *(a3 + 16) = 0u;
        *a3 = *a2;
        *(a3 + 32) = AMCP::Implementation::In_Place_Storage<long long>::dispatch;
        return result;
      }

      if (result != 2)
      {
        return result;
      }

      result = 0;
      v7 = 0uLL;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *a3 = *a2;
      *(a3 + 32) = AMCP::Implementation::In_Place_Storage<long long>::dispatch;
      *(a2 + 32) = 0;
    }

    else
    {
      result = 0;
      *(a2 + 32) = 0;
      v7 = 0uLL;
    }

    *a2 = v7;
    *(a2 + 16) = v7;
    return result;
  }

  if (result > 4)
  {
    if (result == 5)
    {
      type = AMCP::Implementation::get_type_marker<long long>();
      v12 = *(a2 + 32);
      *&v32 = 0;
      if (v12)
      {
        v12(3, a2, 0, &v32);
        v12 = v32;
      }

      if (v12 != type)
      {
        goto LABEL_28;
      }

      v13 = *(a3 + 32);
      v35 = 0;
      if (v13)
      {
        v13(3, a3, 0, &v35);
        v13 = v35;
      }

      if (v13 == type)
      {
        if (*(a2 + 32))
        {
          *&v32 = AMCP::Implementation::get_type_marker<long long>();
          v14 = (*(a2 + 32))(4, a2, 0, &v32);
        }

        else
        {
          v14 = 0;
        }

        *&v32 = AMCP::Implementation::get_type_marker<long long>();
        if (*v14 != *(*(a3 + 32))(4, a3, 0, &v32))
        {
          return 0;
        }
      }

      else
      {
LABEL_28:
        v15 = AMCP::Thing::convert_to<long long>(a2);
        if (v15 != AMCP::Thing::convert_to<long long>(a3))
        {
          return 0;
        }
      }

      return 1;
    }

    if (result != 6)
    {
      return result;
    }

    if (!AMCP::is_one_of<BOOL,char,signed char,unsigned char,short,unsigned short,int,unsigned int,long,unsigned long,long long,unsigned long long,float,double,long double,AMCP::Direction,applesauce::CF::BooleanRef,applesauce::CF::NumberRef>(a4))
    {
      goto LABEL_88;
    }

    if (*(a2 + 32))
    {
      *&v32 = AMCP::Implementation::get_type_marker<long long>();
      v9 = (*(a2 + 32))(4, a2, 0, &v32);
    }

    else
    {
      v9 = 0;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<BOOL>())
    {
      if (v9)
      {
        v16 = *v9 != 0;
        v32 = 0u;
        v33 = 0u;
        LOBYTE(v32) = v16;
        v17 = AMCP::Implementation::In_Place_Storage<BOOL>::dispatch;
LABEL_82:
        v34 = v17;
        goto LABEL_89;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<char>())
    {
      if (v9)
      {
        v18 = *v9;
        v32 = 0u;
        v33 = 0u;
        LOBYTE(v32) = v18;
        v17 = AMCP::Implementation::In_Place_Storage<char>::dispatch;
        goto LABEL_82;
      }

LABEL_83:
      __assert_rtn("create_number_from", "Thing.h", 978, "in_value_ptr != nullptr");
    }

    if (*a4 == AMCP::Implementation::get_type_marker<signed char>())
    {
      if (v9)
      {
        v19 = *v9;
        v32 = 0u;
        v33 = 0u;
        LOBYTE(v32) = v19;
        v17 = AMCP::Implementation::In_Place_Storage<signed char>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<unsigned char>())
    {
      if (v9)
      {
        v20 = *v9;
        v32 = 0u;
        v33 = 0u;
        LOBYTE(v32) = v20;
        v17 = AMCP::Implementation::In_Place_Storage<unsigned char>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<short>())
    {
      if (v9)
      {
        v21 = *v9;
        v32 = 0u;
        v33 = 0u;
        LOWORD(v32) = v21;
        v17 = AMCP::Implementation::In_Place_Storage<short>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<unsigned short>())
    {
      if (v9)
      {
        v22 = *v9;
        v32 = 0u;
        v33 = 0u;
        LOWORD(v32) = v22;
        v17 = AMCP::Implementation::In_Place_Storage<unsigned short>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<int>())
    {
      if (v9)
      {
        v23 = *v9;
        v32 = 0u;
        v33 = 0u;
        LODWORD(v32) = v23;
        v17 = AMCP::Implementation::In_Place_Storage<int>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<unsigned int>())
    {
      if (v9)
      {
        v24 = *v9;
        v32 = 0u;
        v33 = 0u;
        LODWORD(v32) = v24;
        v17 = AMCP::Implementation::In_Place_Storage<unsigned int>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<long>())
    {
      if (v9)
      {
        v25 = *v9;
        v33 = 0uLL;
        v32 = v25;
        v17 = AMCP::Implementation::In_Place_Storage<long>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<unsigned long>())
    {
      if (v9)
      {
        v26 = *v9;
        v33 = 0uLL;
        v32 = v26;
        v17 = AMCP::Implementation::In_Place_Storage<unsigned long>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<long long>())
    {
      if (v9)
      {
        *(&v32 + 1) = 0;
        v33 = 0uLL;
        *&v32 = *v9;
        v17 = AMCP::Implementation::In_Place_Storage<long long>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<unsigned long long>())
    {
      if (v9)
      {
        v27 = *v9;
        v33 = 0uLL;
        v32 = v27;
        v17 = AMCP::Implementation::In_Place_Storage<unsigned long long>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<float>())
    {
      if (v9)
      {
        v28 = *v9;
        v32 = 0u;
        v33 = 0u;
        *&v32 = v28;
        v17 = AMCP::Implementation::In_Place_Storage<float>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<double>())
    {
      if (v9)
      {
        *&v29 = *v9;
        v33 = 0uLL;
        v32 = v29;
        v17 = AMCP::Implementation::In_Place_Storage<double>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<long double>())
    {
      if (v9)
      {
        *&v30 = *v9;
        v33 = 0uLL;
        v32 = v30;
        v17 = AMCP::Implementation::In_Place_Storage<long double>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<AMCP::Direction>())
    {
      if (v9)
      {
        v31 = *v9 != 0;
        v32 = 0u;
        v33 = 0u;
        LODWORD(v32) = v31;
        v17 = AMCP::Implementation::In_Place_Storage<AMCP::Direction>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::BooleanRef>())
    {
      AMCP::Implementation::create_number_from<long,applesauce::CF::BooleanRef>(&v32, v9);
      goto LABEL_89;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::NumberRef>())
    {
      AMCP::Implementation::create_number_from<long long,applesauce::CF::NumberRef>(&v32, v9);
    }

    else
    {
LABEL_88:
      v34 = 0;
      v32 = 0u;
      v33 = 0u;
    }

LABEL_89:
    AMCP::swap(&v32, a3, v8);
    if (v34)
    {
      v34(0, &v32, 0, 0);
    }

    return 0;
  }

  if (result == 3)
  {
    v10 = AMCP::Implementation::get_type_marker<long long>();
    result = 0;
    *a4 = v10;
  }

  else if (*a4 == AMCP::Implementation::get_type_marker<long long>())
  {
    return a2;
  }

  else
  {
    return 0;
  }

  return result;
}

void sub_1DE282B24(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE282AF4);
}

uint64_t AMCP::Thing::convert_to<long long>(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    goto LABEL_12;
  }

  type = AMCP::Implementation::get_type_marker<long long>();
  v3 = *(a1 + 32);
  v17 = 0;
  if (v3)
  {
    v3(3, a1, 0, &v17);
    v3 = v17;
  }

  if (v3 == type)
  {
    *&v15[0] = type;
    v4 = (*(a1 + 32))(4, a1, 0, v15);
    if (v4)
    {
      return *v4;
    }

LABEL_12:
    exception = __cxa_allocate_exception(8uLL);
    v9 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v9, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v14 = AMCP::Implementation::get_type_marker<long long>();
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  (*(a1 + 32))(6, a1, v15, &v14);
  if (!v16)
  {
    v10 = __cxa_allocate_exception(8uLL);
    v11 = std::bad_cast::bad_cast(v10);
    __cxa_throw(v11, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v14 = type;
  v6 = v16(4, v15, 0, &v14);
  if (!v6)
  {
    v12 = __cxa_allocate_exception(8uLL);
    v13 = std::bad_cast::bad_cast(v12);
    __cxa_throw(v13, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v5 = *v6;
  if (v16)
  {
    v16(0, v15, 0, 0);
  }

  return v5;
}

void sub_1DE282CBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

void AMCP::Implementation::create_number_from<long long,applesauce::CF::NumberRef>(uint64_t a1, uint64_t *a2)
{
  if (!a2)
  {
    __assert_rtn("create_number_from", "Thing.h", 978, "in_value_ptr != nullptr");
  }

  valuePtr = *a2;
  v3 = CFNumberCreate(0, kCFNumberLongLongType, &valuePtr);
  v6 = v3;
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v4 = v3;
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  AMCP::Implementation::In_Place_Storage<applesauce::CF::NumberRef>::construct<applesauce::CF::NumberRef&>(a1, &v6);
  CFRelease(v4);
}

uint64_t AMCP::Implementation::In_Place_Storage<unsigned long>::dispatch(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (result <= 2)
  {
    if (result)
    {
      if (result == 1)
      {
        result = 0;
        *a3 = 0u;
        *(a3 + 16) = 0u;
        *a3 = *a2;
        *(a3 + 32) = AMCP::Implementation::In_Place_Storage<unsigned long>::dispatch;
        return result;
      }

      if (result != 2)
      {
        return result;
      }

      result = 0;
      v7 = 0uLL;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *a3 = *a2;
      *(a3 + 32) = AMCP::Implementation::In_Place_Storage<unsigned long>::dispatch;
      *(a2 + 32) = 0;
    }

    else
    {
      result = 0;
      *(a2 + 32) = 0;
      v7 = 0uLL;
    }

    *a2 = v7;
    *(a2 + 16) = v7;
    return result;
  }

  if (result > 4)
  {
    if (result == 5)
    {
      type = AMCP::Implementation::get_type_marker<unsigned long>();
      v12 = *(a2 + 32);
      *&v32 = 0;
      if (v12)
      {
        v12(3, a2, 0, &v32);
        v12 = v32;
      }

      if (v12 != type)
      {
        goto LABEL_28;
      }

      v13 = *(a3 + 32);
      v35 = 0;
      if (v13)
      {
        v13(3, a3, 0, &v35);
        v13 = v35;
      }

      if (v13 == type)
      {
        if (*(a2 + 32))
        {
          *&v32 = AMCP::Implementation::get_type_marker<unsigned long>();
          v14 = (*(a2 + 32))(4, a2, 0, &v32);
        }

        else
        {
          v14 = 0;
        }

        *&v32 = AMCP::Implementation::get_type_marker<unsigned long>();
        if (*v14 != *(*(a3 + 32))(4, a3, 0, &v32))
        {
          return 0;
        }
      }

      else
      {
LABEL_28:
        v15 = AMCP::Thing::convert_to<unsigned long>(a2);
        if (v15 != AMCP::Thing::convert_to<unsigned long>(a3))
        {
          return 0;
        }
      }

      return 1;
    }

    if (result != 6)
    {
      return result;
    }

    if (!AMCP::is_one_of<BOOL,char,signed char,unsigned char,short,unsigned short,int,unsigned int,long,unsigned long,long long,unsigned long long,float,double,long double,AMCP::Direction,applesauce::CF::BooleanRef,applesauce::CF::NumberRef>(a4))
    {
      goto LABEL_88;
    }

    if (*(a2 + 32))
    {
      *&v32 = AMCP::Implementation::get_type_marker<unsigned long>();
      v9 = (*(a2 + 32))(4, a2, 0, &v32);
    }

    else
    {
      v9 = 0;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<BOOL>())
    {
      if (v9)
      {
        v16 = *v9 != 0;
        v32 = 0u;
        v33 = 0u;
        LOBYTE(v32) = v16;
        v17 = AMCP::Implementation::In_Place_Storage<BOOL>::dispatch;
LABEL_82:
        v34 = v17;
        goto LABEL_89;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<char>())
    {
      if (v9)
      {
        v18 = *v9;
        v32 = 0u;
        v33 = 0u;
        LOBYTE(v32) = v18;
        v17 = AMCP::Implementation::In_Place_Storage<char>::dispatch;
        goto LABEL_82;
      }

LABEL_83:
      __assert_rtn("create_number_from", "Thing.h", 978, "in_value_ptr != nullptr");
    }

    if (*a4 == AMCP::Implementation::get_type_marker<signed char>())
    {
      if (v9)
      {
        v19 = *v9;
        v32 = 0u;
        v33 = 0u;
        LOBYTE(v32) = v19;
        v17 = AMCP::Implementation::In_Place_Storage<signed char>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<unsigned char>())
    {
      if (v9)
      {
        v20 = *v9;
        v32 = 0u;
        v33 = 0u;
        LOBYTE(v32) = v20;
        v17 = AMCP::Implementation::In_Place_Storage<unsigned char>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<short>())
    {
      if (v9)
      {
        v21 = *v9;
        v32 = 0u;
        v33 = 0u;
        LOWORD(v32) = v21;
        v17 = AMCP::Implementation::In_Place_Storage<short>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<unsigned short>())
    {
      if (v9)
      {
        v22 = *v9;
        v32 = 0u;
        v33 = 0u;
        LOWORD(v32) = v22;
        v17 = AMCP::Implementation::In_Place_Storage<unsigned short>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<int>())
    {
      if (v9)
      {
        v23 = *v9;
        v32 = 0u;
        v33 = 0u;
        LODWORD(v32) = v23;
        v17 = AMCP::Implementation::In_Place_Storage<int>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<unsigned int>())
    {
      if (v9)
      {
        v24 = *v9;
        v32 = 0u;
        v33 = 0u;
        LODWORD(v32) = v24;
        v17 = AMCP::Implementation::In_Place_Storage<unsigned int>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<long>())
    {
      if (v9)
      {
        v25 = *v9;
        v33 = 0uLL;
        v32 = v25;
        v17 = AMCP::Implementation::In_Place_Storage<long>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<unsigned long>())
    {
      if (v9)
      {
        *(&v32 + 1) = 0;
        v33 = 0uLL;
        *&v32 = *v9;
        v17 = AMCP::Implementation::In_Place_Storage<unsigned long>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<long long>())
    {
      if (v9)
      {
        v26 = *v9;
        v33 = 0uLL;
        v32 = v26;
        v17 = AMCP::Implementation::In_Place_Storage<long long>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<unsigned long long>())
    {
      if (v9)
      {
        v27 = *v9;
        v33 = 0uLL;
        v32 = v27;
        v17 = AMCP::Implementation::In_Place_Storage<unsigned long long>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<float>())
    {
      if (v9)
      {
        v28 = *v9;
        v32 = 0u;
        v33 = 0u;
        *&v32 = v28;
        v17 = AMCP::Implementation::In_Place_Storage<float>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<double>())
    {
      if (v9)
      {
        *&v29 = *v9;
        v33 = 0uLL;
        v32 = v29;
        v17 = AMCP::Implementation::In_Place_Storage<double>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<long double>())
    {
      if (v9)
      {
        *&v30 = *v9;
        v33 = 0uLL;
        v32 = v30;
        v17 = AMCP::Implementation::In_Place_Storage<long double>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<AMCP::Direction>())
    {
      if (v9)
      {
        v31 = *v9 != 0;
        v32 = 0u;
        v33 = 0u;
        LODWORD(v32) = v31;
        v17 = AMCP::Implementation::In_Place_Storage<AMCP::Direction>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::BooleanRef>())
    {
      AMCP::Implementation::create_number_from<long,applesauce::CF::BooleanRef>(&v32, v9);
      goto LABEL_89;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::NumberRef>())
    {
      AMCP::Implementation::create_number_from<unsigned long,applesauce::CF::NumberRef>(&v32, v9);
    }

    else
    {
LABEL_88:
      v34 = 0;
      v32 = 0u;
      v33 = 0u;
    }

LABEL_89:
    AMCP::swap(&v32, a3, v8);
    if (v34)
    {
      v34(0, &v32, 0, 0);
    }

    return 0;
  }

  if (result == 3)
  {
    v10 = AMCP::Implementation::get_type_marker<unsigned long>();
    result = 0;
    *a4 = v10;
  }

  else if (*a4 == AMCP::Implementation::get_type_marker<unsigned long>())
  {
    return a2;
  }

  else
  {
    return 0;
  }

  return result;
}

void sub_1DE283414(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE2833E4);
}

uint64_t AMCP::Thing::convert_to<unsigned long>(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    goto LABEL_12;
  }

  type = AMCP::Implementation::get_type_marker<unsigned long>();
  v3 = *(a1 + 32);
  v17 = 0;
  if (v3)
  {
    v3(3, a1, 0, &v17);
    v3 = v17;
  }

  if (v3 == type)
  {
    *&v15[0] = type;
    v4 = (*(a1 + 32))(4, a1, 0, v15);
    if (v4)
    {
      return *v4;
    }

LABEL_12:
    exception = __cxa_allocate_exception(8uLL);
    v9 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v9, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v14 = AMCP::Implementation::get_type_marker<unsigned long>();
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  (*(a1 + 32))(6, a1, v15, &v14);
  if (!v16)
  {
    v10 = __cxa_allocate_exception(8uLL);
    v11 = std::bad_cast::bad_cast(v10);
    __cxa_throw(v11, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v14 = type;
  v6 = v16(4, v15, 0, &v14);
  if (!v6)
  {
    v12 = __cxa_allocate_exception(8uLL);
    v13 = std::bad_cast::bad_cast(v12);
    __cxa_throw(v13, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v5 = *v6;
  if (v16)
  {
    v16(0, v15, 0, 0);
  }

  return v5;
}

void sub_1DE2835AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

void AMCP::Implementation::create_number_from<unsigned long,applesauce::CF::NumberRef>(uint64_t a1, uint64_t *a2)
{
  if (!a2)
  {
    __assert_rtn("create_number_from", "Thing.h", 978, "in_value_ptr != nullptr");
  }

  valuePtr = *a2;
  v3 = CFNumberCreate(0, kCFNumberLongType, &valuePtr);
  v6 = v3;
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v4 = v3;
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  AMCP::Implementation::In_Place_Storage<applesauce::CF::NumberRef>::construct<applesauce::CF::NumberRef&>(a1, &v6);
  CFRelease(v4);
}

uint64_t AMCP::Implementation::In_Place_Storage<long>::dispatch(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (result <= 2)
  {
    if (result)
    {
      if (result == 1)
      {
        result = 0;
        *a3 = 0u;
        *(a3 + 16) = 0u;
        *a3 = *a2;
        *(a3 + 32) = AMCP::Implementation::In_Place_Storage<long>::dispatch;
        return result;
      }

      if (result != 2)
      {
        return result;
      }

      result = 0;
      v7 = 0uLL;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *a3 = *a2;
      *(a3 + 32) = AMCP::Implementation::In_Place_Storage<long>::dispatch;
      *(a2 + 32) = 0;
    }

    else
    {
      result = 0;
      *(a2 + 32) = 0;
      v7 = 0uLL;
    }

    *a2 = v7;
    *(a2 + 16) = v7;
    return result;
  }

  if (result > 4)
  {
    if (result == 5)
    {
      type = AMCP::Implementation::get_type_marker<long>();
      v12 = *(a2 + 32);
      *&v32 = 0;
      if (v12)
      {
        v12(3, a2, 0, &v32);
        v12 = v32;
      }

      if (v12 != type)
      {
        goto LABEL_28;
      }

      v13 = *(a3 + 32);
      v35 = 0;
      if (v13)
      {
        v13(3, a3, 0, &v35);
        v13 = v35;
      }

      if (v13 == type)
      {
        if (*(a2 + 32))
        {
          *&v32 = AMCP::Implementation::get_type_marker<long>();
          v14 = (*(a2 + 32))(4, a2, 0, &v32);
        }

        else
        {
          v14 = 0;
        }

        *&v32 = AMCP::Implementation::get_type_marker<long>();
        if (*v14 != *(*(a3 + 32))(4, a3, 0, &v32))
        {
          return 0;
        }
      }

      else
      {
LABEL_28:
        v15 = AMCP::Thing::convert_to<long>(a2);
        if (v15 != AMCP::Thing::convert_to<long>(a3))
        {
          return 0;
        }
      }

      return 1;
    }

    if (result != 6)
    {
      return result;
    }

    if (!AMCP::is_one_of<BOOL,char,signed char,unsigned char,short,unsigned short,int,unsigned int,long,unsigned long,long long,unsigned long long,float,double,long double,AMCP::Direction,applesauce::CF::BooleanRef,applesauce::CF::NumberRef>(a4))
    {
      goto LABEL_88;
    }

    if (*(a2 + 32))
    {
      *&v32 = AMCP::Implementation::get_type_marker<long>();
      v9 = (*(a2 + 32))(4, a2, 0, &v32);
    }

    else
    {
      v9 = 0;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<BOOL>())
    {
      if (v9)
      {
        v16 = *v9 != 0;
        v32 = 0u;
        v33 = 0u;
        LOBYTE(v32) = v16;
        v17 = AMCP::Implementation::In_Place_Storage<BOOL>::dispatch;
LABEL_82:
        v34 = v17;
        goto LABEL_89;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<char>())
    {
      if (v9)
      {
        v18 = *v9;
        v32 = 0u;
        v33 = 0u;
        LOBYTE(v32) = v18;
        v17 = AMCP::Implementation::In_Place_Storage<char>::dispatch;
        goto LABEL_82;
      }

LABEL_83:
      __assert_rtn("create_number_from", "Thing.h", 978, "in_value_ptr != nullptr");
    }

    if (*a4 == AMCP::Implementation::get_type_marker<signed char>())
    {
      if (v9)
      {
        v19 = *v9;
        v32 = 0u;
        v33 = 0u;
        LOBYTE(v32) = v19;
        v17 = AMCP::Implementation::In_Place_Storage<signed char>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<unsigned char>())
    {
      if (v9)
      {
        v20 = *v9;
        v32 = 0u;
        v33 = 0u;
        LOBYTE(v32) = v20;
        v17 = AMCP::Implementation::In_Place_Storage<unsigned char>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<short>())
    {
      if (v9)
      {
        v21 = *v9;
        v32 = 0u;
        v33 = 0u;
        LOWORD(v32) = v21;
        v17 = AMCP::Implementation::In_Place_Storage<short>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<unsigned short>())
    {
      if (v9)
      {
        v22 = *v9;
        v32 = 0u;
        v33 = 0u;
        LOWORD(v32) = v22;
        v17 = AMCP::Implementation::In_Place_Storage<unsigned short>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<int>())
    {
      if (v9)
      {
        v23 = *v9;
        v32 = 0u;
        v33 = 0u;
        LODWORD(v32) = v23;
        v17 = AMCP::Implementation::In_Place_Storage<int>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<unsigned int>())
    {
      if (v9)
      {
        v24 = *v9;
        v32 = 0u;
        v33 = 0u;
        LODWORD(v32) = v24;
        v17 = AMCP::Implementation::In_Place_Storage<unsigned int>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<long>())
    {
      if (v9)
      {
        *(&v32 + 1) = 0;
        v33 = 0uLL;
        *&v32 = *v9;
        v17 = AMCP::Implementation::In_Place_Storage<long>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<unsigned long>())
    {
      if (v9)
      {
        v25 = *v9;
        v33 = 0uLL;
        v32 = v25;
        v17 = AMCP::Implementation::In_Place_Storage<unsigned long>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<long long>())
    {
      if (v9)
      {
        v26 = *v9;
        v33 = 0uLL;
        v32 = v26;
        v17 = AMCP::Implementation::In_Place_Storage<long long>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<unsigned long long>())
    {
      if (v9)
      {
        v27 = *v9;
        v33 = 0uLL;
        v32 = v27;
        v17 = AMCP::Implementation::In_Place_Storage<unsigned long long>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<float>())
    {
      if (v9)
      {
        v28 = *v9;
        v32 = 0u;
        v33 = 0u;
        *&v32 = v28;
        v17 = AMCP::Implementation::In_Place_Storage<float>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<double>())
    {
      if (v9)
      {
        *&v29 = *v9;
        v33 = 0uLL;
        v32 = v29;
        v17 = AMCP::Implementation::In_Place_Storage<double>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<long double>())
    {
      if (v9)
      {
        *&v30 = *v9;
        v33 = 0uLL;
        v32 = v30;
        v17 = AMCP::Implementation::In_Place_Storage<long double>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<AMCP::Direction>())
    {
      if (v9)
      {
        v31 = *v9 != 0;
        v32 = 0u;
        v33 = 0u;
        LODWORD(v32) = v31;
        v17 = AMCP::Implementation::In_Place_Storage<AMCP::Direction>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::BooleanRef>())
    {
      AMCP::Implementation::create_number_from<long,applesauce::CF::BooleanRef>(&v32, v9);
      goto LABEL_89;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::NumberRef>())
    {
      AMCP::Implementation::create_number_from<long,applesauce::CF::NumberRef>(&v32, v9);
    }

    else
    {
LABEL_88:
      v34 = 0;
      v32 = 0u;
      v33 = 0u;
    }

LABEL_89:
    AMCP::swap(&v32, a3, v8);
    if (v34)
    {
      v34(0, &v32, 0, 0);
    }

    return 0;
  }

  if (result == 3)
  {
    v10 = AMCP::Implementation::get_type_marker<long>();
    result = 0;
    *a4 = v10;
  }

  else if (*a4 == AMCP::Implementation::get_type_marker<long>())
  {
    return a2;
  }

  else
  {
    return 0;
  }

  return result;
}

void sub_1DE283D04(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE283CD4);
}

uint64_t AMCP::Thing::convert_to<long>(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    goto LABEL_12;
  }

  type = AMCP::Implementation::get_type_marker<long>();
  v3 = *(a1 + 32);
  v17 = 0;
  if (v3)
  {
    v3(3, a1, 0, &v17);
    v3 = v17;
  }

  if (v3 == type)
  {
    *&v15[0] = type;
    v4 = (*(a1 + 32))(4, a1, 0, v15);
    if (v4)
    {
      return *v4;
    }

LABEL_12:
    exception = __cxa_allocate_exception(8uLL);
    v9 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v9, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v14 = AMCP::Implementation::get_type_marker<long>();
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  (*(a1 + 32))(6, a1, v15, &v14);
  if (!v16)
  {
    v10 = __cxa_allocate_exception(8uLL);
    v11 = std::bad_cast::bad_cast(v10);
    __cxa_throw(v11, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v14 = type;
  v6 = v16(4, v15, 0, &v14);
  if (!v6)
  {
    v12 = __cxa_allocate_exception(8uLL);
    v13 = std::bad_cast::bad_cast(v12);
    __cxa_throw(v13, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v5 = *v6;
  if (v16)
  {
    v16(0, v15, 0, 0);
  }

  return v5;
}

void sub_1DE283E9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

void *AMCP::Implementation::create_number_from<long,applesauce::CF::BooleanRef>(void *result, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_number_from", "Thing.h", 978, "in_value_ptr != nullptr");
  }

  if (*a2)
  {
    v2 = MEMORY[0x1E695E4C8];
  }

  else
  {
    v2 = MEMORY[0x1E695E4B8];
  }

  v3 = *v2;
  result[2] = 0;
  result[3] = 0;
  *result = v3;
  result[1] = 0;
  result[4] = AMCP::Implementation::In_Place_Storage<applesauce::CF::BooleanRef>::dispatch;
  return result;
}

void AMCP::Implementation::create_number_from<long,applesauce::CF::NumberRef>(uint64_t a1, uint64_t *a2)
{
  if (!a2)
  {
    __assert_rtn("create_number_from", "Thing.h", 978, "in_value_ptr != nullptr");
  }

  valuePtr = *a2;
  v3 = CFNumberCreate(0, kCFNumberLongType, &valuePtr);
  v6 = v3;
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v4 = v3;
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  AMCP::Implementation::In_Place_Storage<applesauce::CF::NumberRef>::construct<applesauce::CF::NumberRef&>(a1, &v6);
  CFRelease(v4);
}

uint64_t AMCP::Implementation::In_Place_Storage<unsigned int>::dispatch(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (result <= 2)
  {
    if (result)
    {
      if (result == 1)
      {
        result = 0;
        *a3 = 0u;
        *(a3 + 16) = 0u;
        *a3 = *a2;
        *(a3 + 32) = AMCP::Implementation::In_Place_Storage<unsigned int>::dispatch;
        return result;
      }

      if (result != 2)
      {
        return result;
      }

      result = 0;
      v7 = 0uLL;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *a3 = *a2;
      *(a3 + 32) = AMCP::Implementation::In_Place_Storage<unsigned int>::dispatch;
      *(a2 + 32) = 0;
    }

    else
    {
      result = 0;
      *(a2 + 32) = 0;
      v7 = 0uLL;
    }

    *a2 = v7;
    *(a2 + 16) = v7;
    return result;
  }

  if (result > 4)
  {
    if (result == 5)
    {
      type = AMCP::Implementation::get_type_marker<unsigned int>();
      v12 = *(a2 + 32);
      *&v32 = 0;
      if (v12)
      {
        v12(3, a2, 0, &v32);
        v12 = v32;
      }

      if (v12 != type)
      {
        goto LABEL_28;
      }

      v13 = *(a3 + 32);
      v35 = 0;
      if (v13)
      {
        v13(3, a3, 0, &v35);
        v13 = v35;
      }

      if (v13 == type)
      {
        if (*(a2 + 32))
        {
          *&v32 = AMCP::Implementation::get_type_marker<unsigned int>();
          v14 = (*(a2 + 32))(4, a2, 0, &v32);
        }

        else
        {
          v14 = 0;
        }

        *&v32 = AMCP::Implementation::get_type_marker<unsigned int>();
        if (*v14 != *(*(a3 + 32))(4, a3, 0, &v32))
        {
          return 0;
        }
      }

      else
      {
LABEL_28:
        v15 = AMCP::Thing::convert_to<unsigned int>(a2);
        if (v15 != AMCP::Thing::convert_to<unsigned int>(a3))
        {
          return 0;
        }
      }

      return 1;
    }

    if (result != 6)
    {
      return result;
    }

    if (!AMCP::is_one_of<BOOL,char,signed char,unsigned char,short,unsigned short,int,unsigned int,long,unsigned long,long long,unsigned long long,float,double,long double,AMCP::Direction,applesauce::CF::BooleanRef,applesauce::CF::NumberRef>(a4))
    {
      goto LABEL_88;
    }

    if (*(a2 + 32))
    {
      *&v32 = AMCP::Implementation::get_type_marker<unsigned int>();
      v9 = (*(a2 + 32))(4, a2, 0, &v32);
    }

    else
    {
      v9 = 0;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<BOOL>())
    {
      if (v9)
      {
        v16 = *v9 != 0;
        v32 = 0u;
        v33 = 0u;
        LOBYTE(v32) = v16;
        v17 = AMCP::Implementation::In_Place_Storage<BOOL>::dispatch;
LABEL_82:
        v34 = v17;
        goto LABEL_89;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<char>())
    {
      if (v9)
      {
        v18 = *v9;
        v32 = 0u;
        v33 = 0u;
        LOBYTE(v32) = v18;
        v17 = AMCP::Implementation::In_Place_Storage<char>::dispatch;
        goto LABEL_82;
      }

LABEL_83:
      __assert_rtn("create_number_from", "Thing.h", 978, "in_value_ptr != nullptr");
    }

    if (*a4 == AMCP::Implementation::get_type_marker<signed char>())
    {
      if (v9)
      {
        v19 = *v9;
        v32 = 0u;
        v33 = 0u;
        LOBYTE(v32) = v19;
        v17 = AMCP::Implementation::In_Place_Storage<signed char>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<unsigned char>())
    {
      if (v9)
      {
        v20 = *v9;
        v32 = 0u;
        v33 = 0u;
        LOBYTE(v32) = v20;
        v17 = AMCP::Implementation::In_Place_Storage<unsigned char>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<short>())
    {
      if (v9)
      {
        v21 = *v9;
        v32 = 0u;
        v33 = 0u;
        LOWORD(v32) = v21;
        v17 = AMCP::Implementation::In_Place_Storage<short>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<unsigned short>())
    {
      if (v9)
      {
        v22 = *v9;
        v32 = 0u;
        v33 = 0u;
        LOWORD(v32) = v22;
        v17 = AMCP::Implementation::In_Place_Storage<unsigned short>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<int>())
    {
      if (v9)
      {
        v23 = *v9;
        v32 = 0u;
        v33 = 0u;
        LODWORD(v32) = v23;
        v17 = AMCP::Implementation::In_Place_Storage<int>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<unsigned int>())
    {
      if (v9)
      {
        v32 = 0u;
        v33 = 0u;
        LODWORD(v32) = *v9;
        v17 = AMCP::Implementation::In_Place_Storage<unsigned int>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<long>())
    {
      if (v9)
      {
        v24 = *v9;
        v33 = 0uLL;
        v32 = v24;
        v17 = AMCP::Implementation::In_Place_Storage<long>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<unsigned long>())
    {
      if (v9)
      {
        v25 = *v9;
        v33 = 0uLL;
        v32 = v25;
        v17 = AMCP::Implementation::In_Place_Storage<unsigned long>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<long long>())
    {
      if (v9)
      {
        v26 = *v9;
        v33 = 0uLL;
        v32 = v26;
        v17 = AMCP::Implementation::In_Place_Storage<long long>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<unsigned long long>())
    {
      if (v9)
      {
        v27 = *v9;
        v33 = 0uLL;
        v32 = v27;
        v17 = AMCP::Implementation::In_Place_Storage<unsigned long long>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<float>())
    {
      if (v9)
      {
        v28 = *v9;
        v32 = 0u;
        v33 = 0u;
        *&v32 = v28;
        v17 = AMCP::Implementation::In_Place_Storage<float>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<double>())
    {
      if (v9)
      {
        LODWORD(v29) = *v9;
        v33 = 0uLL;
        v32 = COERCE_UNSIGNED_INT64(v29);
        v17 = AMCP::Implementation::In_Place_Storage<double>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<long double>())
    {
      if (v9)
      {
        LODWORD(v30) = *v9;
        v33 = 0uLL;
        v32 = COERCE_UNSIGNED_INT64(v30);
        v17 = AMCP::Implementation::In_Place_Storage<long double>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<AMCP::Direction>())
    {
      if (v9)
      {
        v31 = *v9 != 0;
        v32 = 0u;
        v33 = 0u;
        LODWORD(v32) = v31;
        v17 = AMCP::Implementation::In_Place_Storage<AMCP::Direction>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::BooleanRef>())
    {
      AMCP::Implementation::create_number_from<int,applesauce::CF::BooleanRef>(&v32, v9);
      goto LABEL_89;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::NumberRef>())
    {
      AMCP::Implementation::create_number_from<unsigned int,applesauce::CF::NumberRef>(&v32, v9);
    }

    else
    {
LABEL_88:
      v34 = 0;
      v32 = 0u;
      v33 = 0u;
    }

LABEL_89:
    AMCP::swap(&v32, a3, v8);
    if (v34)
    {
      v34(0, &v32, 0, 0);
    }

    return 0;
  }

  if (result == 3)
  {
    v10 = AMCP::Implementation::get_type_marker<unsigned int>();
    result = 0;
    *a4 = v10;
  }

  else if (*a4 == AMCP::Implementation::get_type_marker<unsigned int>())
  {
    return a2;
  }

  else
  {
    return 0;
  }

  return result;
}

void sub_1DE28465C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE28462CLL);
}

void AMCP::Implementation::create_number_from<unsigned int,applesauce::CF::NumberRef>(uint64_t a1, int *a2)
{
  if (!a2)
  {
    __assert_rtn("create_number_from", "Thing.h", 978, "in_value_ptr != nullptr");
  }

  valuePtr = *a2;
  v3 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  v6 = v3;
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v4 = v3;
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  AMCP::Implementation::In_Place_Storage<applesauce::CF::NumberRef>::construct<applesauce::CF::NumberRef&>(a1, &v6);
  CFRelease(v4);
}

uint64_t AMCP::Implementation::In_Place_Storage<int>::dispatch(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (result <= 2)
  {
    if (result)
    {
      if (result == 1)
      {
        result = 0;
        *a3 = 0u;
        *(a3 + 16) = 0u;
        *a3 = *a2;
        *(a3 + 32) = AMCP::Implementation::In_Place_Storage<int>::dispatch;
        return result;
      }

      if (result != 2)
      {
        return result;
      }

      result = 0;
      v7 = 0uLL;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *a3 = *a2;
      *(a3 + 32) = AMCP::Implementation::In_Place_Storage<int>::dispatch;
      *(a2 + 32) = 0;
    }

    else
    {
      result = 0;
      *(a2 + 32) = 0;
      v7 = 0uLL;
    }

    *a2 = v7;
    *(a2 + 16) = v7;
    return result;
  }

  if (result > 4)
  {
    if (result == 5)
    {
      type = AMCP::Implementation::get_type_marker<int>();
      v12 = *(a2 + 32);
      *&v32 = 0;
      if (v12)
      {
        v12(3, a2, 0, &v32);
        v12 = v32;
      }

      if (v12 != type)
      {
        goto LABEL_28;
      }

      v13 = *(a3 + 32);
      v35 = 0;
      if (v13)
      {
        v13(3, a3, 0, &v35);
        v13 = v35;
      }

      if (v13 == type)
      {
        if (*(a2 + 32))
        {
          *&v32 = AMCP::Implementation::get_type_marker<int>();
          v14 = (*(a2 + 32))(4, a2, 0, &v32);
        }

        else
        {
          v14 = 0;
        }

        *&v32 = AMCP::Implementation::get_type_marker<int>();
        if (*v14 != *(*(a3 + 32))(4, a3, 0, &v32))
        {
          return 0;
        }
      }

      else
      {
LABEL_28:
        v15 = AMCP::Thing::convert_to<int>(a2);
        if (v15 != AMCP::Thing::convert_to<int>(a3))
        {
          return 0;
        }
      }

      return 1;
    }

    if (result != 6)
    {
      return result;
    }

    if (!AMCP::is_one_of<BOOL,char,signed char,unsigned char,short,unsigned short,int,unsigned int,long,unsigned long,long long,unsigned long long,float,double,long double,AMCP::Direction,applesauce::CF::BooleanRef,applesauce::CF::NumberRef>(a4))
    {
      goto LABEL_88;
    }

    if (*(a2 + 32))
    {
      *&v32 = AMCP::Implementation::get_type_marker<int>();
      v9 = (*(a2 + 32))(4, a2, 0, &v32);
    }

    else
    {
      v9 = 0;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<BOOL>())
    {
      if (v9)
      {
        v16 = *v9 != 0;
        v32 = 0u;
        v33 = 0u;
        LOBYTE(v32) = v16;
        v17 = AMCP::Implementation::In_Place_Storage<BOOL>::dispatch;
LABEL_82:
        v34 = v17;
        goto LABEL_89;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<char>())
    {
      if (v9)
      {
        v18 = *v9;
        v32 = 0u;
        v33 = 0u;
        LOBYTE(v32) = v18;
        v17 = AMCP::Implementation::In_Place_Storage<char>::dispatch;
        goto LABEL_82;
      }

LABEL_83:
      __assert_rtn("create_number_from", "Thing.h", 978, "in_value_ptr != nullptr");
    }

    if (*a4 == AMCP::Implementation::get_type_marker<signed char>())
    {
      if (v9)
      {
        v19 = *v9;
        v32 = 0u;
        v33 = 0u;
        LOBYTE(v32) = v19;
        v17 = AMCP::Implementation::In_Place_Storage<signed char>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<unsigned char>())
    {
      if (v9)
      {
        v20 = *v9;
        v32 = 0u;
        v33 = 0u;
        LOBYTE(v32) = v20;
        v17 = AMCP::Implementation::In_Place_Storage<unsigned char>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<short>())
    {
      if (v9)
      {
        v21 = *v9;
        v32 = 0u;
        v33 = 0u;
        LOWORD(v32) = v21;
        v17 = AMCP::Implementation::In_Place_Storage<short>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<unsigned short>())
    {
      if (v9)
      {
        v22 = *v9;
        v32 = 0u;
        v33 = 0u;
        LOWORD(v32) = v22;
        v17 = AMCP::Implementation::In_Place_Storage<unsigned short>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<int>())
    {
      if (v9)
      {
        v32 = 0u;
        v33 = 0u;
        LODWORD(v32) = *v9;
        v17 = AMCP::Implementation::In_Place_Storage<int>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<unsigned int>())
    {
      if (v9)
      {
        v23 = *v9;
        v32 = 0u;
        v33 = 0u;
        LODWORD(v32) = v23;
        v17 = AMCP::Implementation::In_Place_Storage<unsigned int>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<long>())
    {
      if (v9)
      {
        v24 = *v9;
        v33 = 0uLL;
        v32 = v24;
        v17 = AMCP::Implementation::In_Place_Storage<long>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<unsigned long>())
    {
      if (v9)
      {
        v25 = *v9;
        v33 = 0uLL;
        v32 = v25;
        v17 = AMCP::Implementation::In_Place_Storage<unsigned long>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<long long>())
    {
      if (v9)
      {
        v26 = *v9;
        v33 = 0uLL;
        v32 = v26;
        v17 = AMCP::Implementation::In_Place_Storage<long long>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<unsigned long long>())
    {
      if (v9)
      {
        v27 = *v9;
        v33 = 0uLL;
        v32 = v27;
        v17 = AMCP::Implementation::In_Place_Storage<unsigned long long>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<float>())
    {
      if (v9)
      {
        v28 = *v9;
        v32 = 0u;
        v33 = 0u;
        *&v32 = v28;
        v17 = AMCP::Implementation::In_Place_Storage<float>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<double>())
    {
      if (v9)
      {
        v29 = *v9;
        v33 = 0uLL;
        *(&v32 + 1) = 0;
        *&v32 = v29;
        v17 = AMCP::Implementation::In_Place_Storage<double>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<long double>())
    {
      if (v9)
      {
        v30 = *v9;
        v33 = 0uLL;
        *(&v32 + 1) = 0;
        *&v32 = v30;
        v17 = AMCP::Implementation::In_Place_Storage<long double>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<AMCP::Direction>())
    {
      if (v9)
      {
        v31 = *v9 != 0;
        v32 = 0u;
        v33 = 0u;
        LODWORD(v32) = v31;
        v17 = AMCP::Implementation::In_Place_Storage<AMCP::Direction>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::BooleanRef>())
    {
      AMCP::Implementation::create_number_from<int,applesauce::CF::BooleanRef>(&v32, v9);
      goto LABEL_89;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::NumberRef>())
    {
      AMCP::Implementation::create_number_from<int,applesauce::CF::NumberRef>(&v32, v9);
    }

    else
    {
LABEL_88:
      v34 = 0;
      v32 = 0u;
      v33 = 0u;
    }

LABEL_89:
    AMCP::swap(&v32, a3, v8);
    if (v34)
    {
      v34(0, &v32, 0, 0);
    }

    return 0;
  }

  if (result == 3)
  {
    v10 = AMCP::Implementation::get_type_marker<int>();
    result = 0;
    *a4 = v10;
  }

  else if (*a4 == AMCP::Implementation::get_type_marker<int>())
  {
    return a2;
  }

  else
  {
    return 0;
  }

  return result;
}

void sub_1DE284DA4(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE284D74);
}

uint64_t AMCP::Thing::convert_to<int>(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    goto LABEL_12;
  }

  type = AMCP::Implementation::get_type_marker<int>();
  v3 = *(a1 + 32);
  v17 = 0;
  if (v3)
  {
    v3(3, a1, 0, &v17);
    v3 = v17;
  }

  if (v3 == type)
  {
    *&v15[0] = type;
    v4 = (*(a1 + 32))(4, a1, 0, v15);
    if (v4)
    {
      return *v4;
    }

LABEL_12:
    exception = __cxa_allocate_exception(8uLL);
    v9 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v9, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v14 = AMCP::Implementation::get_type_marker<int>();
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  (*(a1 + 32))(6, a1, v15, &v14);
  if (!v16)
  {
    v10 = __cxa_allocate_exception(8uLL);
    v11 = std::bad_cast::bad_cast(v10);
    __cxa_throw(v11, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v14 = type;
  v6 = v16(4, v15, 0, &v14);
  if (!v6)
  {
    v12 = __cxa_allocate_exception(8uLL);
    v13 = std::bad_cast::bad_cast(v12);
    __cxa_throw(v13, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v5 = *v6;
  if (v16)
  {
    v16(0, v15, 0, 0);
  }

  return v5;
}

void sub_1DE284F3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

void *AMCP::Implementation::create_number_from<int,applesauce::CF::BooleanRef>(void *result, _DWORD *a2)
{
  if (!a2)
  {
    __assert_rtn("create_number_from", "Thing.h", 978, "in_value_ptr != nullptr");
  }

  if (*a2)
  {
    v2 = MEMORY[0x1E695E4C8];
  }

  else
  {
    v2 = MEMORY[0x1E695E4B8];
  }

  v3 = *v2;
  result[2] = 0;
  result[3] = 0;
  *result = v3;
  result[1] = 0;
  result[4] = AMCP::Implementation::In_Place_Storage<applesauce::CF::BooleanRef>::dispatch;
  return result;
}

void AMCP::Implementation::create_number_from<int,applesauce::CF::NumberRef>(uint64_t a1, int *a2)
{
  if (!a2)
  {
    __assert_rtn("create_number_from", "Thing.h", 978, "in_value_ptr != nullptr");
  }

  valuePtr = *a2;
  v3 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  v6 = v3;
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v4 = v3;
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  AMCP::Implementation::In_Place_Storage<applesauce::CF::NumberRef>::construct<applesauce::CF::NumberRef&>(a1, &v6);
  CFRelease(v4);
}

uint64_t AMCP::Implementation::In_Place_Storage<unsigned short>::dispatch(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (result <= 2)
  {
    if (result)
    {
      if (result == 1)
      {
        result = 0;
        *a3 = 0u;
        *(a3 + 16) = 0u;
        *a3 = *a2;
        *(a3 + 32) = AMCP::Implementation::In_Place_Storage<unsigned short>::dispatch;
        return result;
      }

      if (result != 2)
      {
        return result;
      }

      result = 0;
      v7 = 0uLL;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *a3 = *a2;
      *(a3 + 32) = AMCP::Implementation::In_Place_Storage<unsigned short>::dispatch;
      *(a2 + 32) = 0;
    }

    else
    {
      result = 0;
      *(a2 + 32) = 0;
      v7 = 0uLL;
    }

    *a2 = v7;
    *(a2 + 16) = v7;
    return result;
  }

  if (result > 4)
  {
    if (result == 5)
    {
      type = AMCP::Implementation::get_type_marker<unsigned short>();
      v12 = *(a2 + 32);
      *&v32 = 0;
      if (v12)
      {
        v12(3, a2, 0, &v32);
        v12 = v32;
      }

      if (v12 != type)
      {
        goto LABEL_28;
      }

      v13 = *(a3 + 32);
      v35 = 0;
      if (v13)
      {
        v13(3, a3, 0, &v35);
        v13 = v35;
      }

      if (v13 == type)
      {
        if (*(a2 + 32))
        {
          *&v32 = AMCP::Implementation::get_type_marker<unsigned short>();
          v14 = (*(a2 + 32))(4, a2, 0, &v32);
        }

        else
        {
          v14 = 0;
        }

        *&v32 = AMCP::Implementation::get_type_marker<unsigned short>();
        if (*v14 != *(*(a3 + 32))(4, a3, 0, &v32))
        {
          return 0;
        }
      }

      else
      {
LABEL_28:
        v15 = AMCP::Thing::convert_to<unsigned short>(a2);
        if (v15 != AMCP::Thing::convert_to<unsigned short>(a3))
        {
          return 0;
        }
      }

      return 1;
    }

    if (result != 6)
    {
      return result;
    }

    if (!AMCP::is_one_of<BOOL,char,signed char,unsigned char,short,unsigned short,int,unsigned int,long,unsigned long,long long,unsigned long long,float,double,long double,AMCP::Direction,applesauce::CF::BooleanRef,applesauce::CF::NumberRef>(a4))
    {
      goto LABEL_88;
    }

    if (*(a2 + 32))
    {
      *&v32 = AMCP::Implementation::get_type_marker<unsigned short>();
      v9 = (*(a2 + 32))(4, a2, 0, &v32);
    }

    else
    {
      v9 = 0;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<BOOL>())
    {
      if (v9)
      {
        v16 = *v9 != 0;
        v32 = 0u;
        v33 = 0u;
        LOBYTE(v32) = v16;
        v17 = AMCP::Implementation::In_Place_Storage<BOOL>::dispatch;
LABEL_82:
        v34 = v17;
        goto LABEL_89;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<char>())
    {
      if (v9)
      {
        v18 = *v9;
        v32 = 0u;
        v33 = 0u;
        LOBYTE(v32) = v18;
        v17 = AMCP::Implementation::In_Place_Storage<char>::dispatch;
        goto LABEL_82;
      }

LABEL_83:
      __assert_rtn("create_number_from", "Thing.h", 978, "in_value_ptr != nullptr");
    }

    if (*a4 == AMCP::Implementation::get_type_marker<signed char>())
    {
      if (v9)
      {
        v19 = *v9;
        v32 = 0u;
        v33 = 0u;
        LOBYTE(v32) = v19;
        v17 = AMCP::Implementation::In_Place_Storage<signed char>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<unsigned char>())
    {
      if (v9)
      {
        v20 = *v9;
        v32 = 0u;
        v33 = 0u;
        LOBYTE(v32) = v20;
        v17 = AMCP::Implementation::In_Place_Storage<unsigned char>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<short>())
    {
      if (v9)
      {
        v21 = *v9;
        v32 = 0u;
        v33 = 0u;
        LOWORD(v32) = v21;
        v17 = AMCP::Implementation::In_Place_Storage<short>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<unsigned short>())
    {
      if (v9)
      {
        v32 = 0u;
        v33 = 0u;
        LOWORD(v32) = *v9;
        v17 = AMCP::Implementation::In_Place_Storage<unsigned short>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<int>())
    {
      if (v9)
      {
        v22 = *v9;
        v32 = 0u;
        v33 = 0u;
        LODWORD(v32) = v22;
        v17 = AMCP::Implementation::In_Place_Storage<int>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<unsigned int>())
    {
      if (v9)
      {
        v23 = *v9;
        v32 = 0u;
        v33 = 0u;
        LODWORD(v32) = v23;
        v17 = AMCP::Implementation::In_Place_Storage<unsigned int>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<long>())
    {
      if (v9)
      {
        v24 = *v9;
        v33 = 0uLL;
        v32 = v24;
        v17 = AMCP::Implementation::In_Place_Storage<long>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<unsigned long>())
    {
      if (v9)
      {
        v25 = *v9;
        v33 = 0uLL;
        v32 = v25;
        v17 = AMCP::Implementation::In_Place_Storage<unsigned long>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<long long>())
    {
      if (v9)
      {
        v26 = *v9;
        v33 = 0uLL;
        v32 = v26;
        v17 = AMCP::Implementation::In_Place_Storage<long long>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<unsigned long long>())
    {
      if (v9)
      {
        v27 = *v9;
        v33 = 0uLL;
        v32 = v27;
        v17 = AMCP::Implementation::In_Place_Storage<unsigned long long>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<float>())
    {
      if (v9)
      {
        LOWORD(v28) = *v9;
        v32 = 0u;
        v33 = 0u;
        *&v32 = v28;
        v17 = AMCP::Implementation::In_Place_Storage<float>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<double>())
    {
      if (v9)
      {
        LOWORD(v29) = *v9;
        v33 = 0uLL;
        v32 = COERCE_UNSIGNED_INT64(v29);
        v17 = AMCP::Implementation::In_Place_Storage<double>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<long double>())
    {
      if (v9)
      {
        LOWORD(v30) = *v9;
        v33 = 0uLL;
        v32 = COERCE_UNSIGNED_INT64(v30);
        v17 = AMCP::Implementation::In_Place_Storage<long double>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<AMCP::Direction>())
    {
      if (v9)
      {
        v31 = *v9 != 0;
        v32 = 0u;
        v33 = 0u;
        LODWORD(v32) = v31;
        v17 = AMCP::Implementation::In_Place_Storage<AMCP::Direction>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::BooleanRef>())
    {
      AMCP::Implementation::create_number_from<short,applesauce::CF::BooleanRef>(&v32, v9);
      goto LABEL_89;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::NumberRef>())
    {
      AMCP::Implementation::create_number_from<unsigned short,applesauce::CF::NumberRef>(&v32, v9);
    }

    else
    {
LABEL_88:
      v34 = 0;
      v32 = 0u;
      v33 = 0u;
    }

LABEL_89:
    AMCP::swap(&v32, a3, v8);
    if (v34)
    {
      v34(0, &v32, 0, 0);
    }

    return 0;
  }

  if (result == 3)
  {
    v10 = AMCP::Implementation::get_type_marker<unsigned short>();
    result = 0;
    *a4 = v10;
  }

  else if (*a4 == AMCP::Implementation::get_type_marker<unsigned short>())
  {
    return a2;
  }

  else
  {
    return 0;
  }

  return result;
}

void sub_1DE2856FC(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE2856CCLL);
}

uint64_t AMCP::Thing::convert_to<unsigned short>(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    goto LABEL_12;
  }

  type = AMCP::Implementation::get_type_marker<unsigned short>();
  v3 = *(a1 + 32);
  v17 = 0;
  if (v3)
  {
    v3(3, a1, 0, &v17);
    v3 = v17;
  }

  if (v3 == type)
  {
    *&v15[0] = type;
    v4 = (*(a1 + 32))(4, a1, 0, v15);
    if (v4)
    {
      return *v4;
    }

LABEL_12:
    exception = __cxa_allocate_exception(8uLL);
    v9 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v9, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v14 = AMCP::Implementation::get_type_marker<unsigned short>();
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  (*(a1 + 32))(6, a1, v15, &v14);
  if (!v16)
  {
    v10 = __cxa_allocate_exception(8uLL);
    v11 = std::bad_cast::bad_cast(v10);
    __cxa_throw(v11, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v14 = type;
  v6 = v16(4, v15, 0, &v14);
  if (!v6)
  {
    v12 = __cxa_allocate_exception(8uLL);
    v13 = std::bad_cast::bad_cast(v12);
    __cxa_throw(v13, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v5 = *v6;
  if (v16)
  {
    v16(0, v15, 0, 0);
  }

  return v5;
}

void sub_1DE285894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

void AMCP::Implementation::create_number_from<unsigned short,applesauce::CF::NumberRef>(uint64_t a1, __int16 *a2)
{
  if (!a2)
  {
    __assert_rtn("create_number_from", "Thing.h", 978, "in_value_ptr != nullptr");
  }

  valuePtr = *a2;
  v3 = CFNumberCreate(0, kCFNumberShortType, &valuePtr);
  v6 = v3;
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v4 = v3;
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  AMCP::Implementation::In_Place_Storage<applesauce::CF::NumberRef>::construct<applesauce::CF::NumberRef&>(a1, &v6);
  CFRelease(v4);
}

uint64_t AMCP::Implementation::In_Place_Storage<short>::dispatch(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (result <= 2)
  {
    if (result)
    {
      if (result == 1)
      {
        result = 0;
        *a3 = 0u;
        *(a3 + 16) = 0u;
        *a3 = *a2;
        *(a3 + 32) = AMCP::Implementation::In_Place_Storage<short>::dispatch;
        return result;
      }

      if (result != 2)
      {
        return result;
      }

      result = 0;
      v7 = 0uLL;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *a3 = *a2;
      *(a3 + 32) = AMCP::Implementation::In_Place_Storage<short>::dispatch;
      *(a2 + 32) = 0;
    }

    else
    {
      result = 0;
      *(a2 + 32) = 0;
      v7 = 0uLL;
    }

    *a2 = v7;
    *(a2 + 16) = v7;
    return result;
  }

  if (result > 4)
  {
    if (result == 5)
    {
      type = AMCP::Implementation::get_type_marker<short>();
      v12 = *(a2 + 32);
      *&v32 = 0;
      if (v12)
      {
        v12(3, a2, 0, &v32);
        v12 = v32;
      }

      if (v12 != type)
      {
        goto LABEL_28;
      }

      v13 = *(a3 + 32);
      v35 = 0;
      if (v13)
      {
        v13(3, a3, 0, &v35);
        v13 = v35;
      }

      if (v13 == type)
      {
        if (*(a2 + 32))
        {
          *&v32 = AMCP::Implementation::get_type_marker<short>();
          v14 = (*(a2 + 32))(4, a2, 0, &v32);
        }

        else
        {
          v14 = 0;
        }

        *&v32 = AMCP::Implementation::get_type_marker<short>();
        if (*v14 != *(*(a3 + 32))(4, a3, 0, &v32))
        {
          return 0;
        }
      }

      else
      {
LABEL_28:
        v15 = AMCP::Thing::convert_to<short>(a2);
        if (v15 != AMCP::Thing::convert_to<short>(a3))
        {
          return 0;
        }
      }

      return 1;
    }

    if (result != 6)
    {
      return result;
    }

    if (!AMCP::is_one_of<BOOL,char,signed char,unsigned char,short,unsigned short,int,unsigned int,long,unsigned long,long long,unsigned long long,float,double,long double,AMCP::Direction,applesauce::CF::BooleanRef,applesauce::CF::NumberRef>(a4))
    {
      goto LABEL_88;
    }

    if (*(a2 + 32))
    {
      *&v32 = AMCP::Implementation::get_type_marker<short>();
      v9 = (*(a2 + 32))(4, a2, 0, &v32);
    }

    else
    {
      v9 = 0;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<BOOL>())
    {
      if (v9)
      {
        v16 = *v9 != 0;
        v32 = 0u;
        v33 = 0u;
        LOBYTE(v32) = v16;
        v17 = AMCP::Implementation::In_Place_Storage<BOOL>::dispatch;
LABEL_82:
        v34 = v17;
        goto LABEL_89;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<char>())
    {
      if (v9)
      {
        v18 = *v9;
        v32 = 0u;
        v33 = 0u;
        LOBYTE(v32) = v18;
        v17 = AMCP::Implementation::In_Place_Storage<char>::dispatch;
        goto LABEL_82;
      }

LABEL_83:
      __assert_rtn("create_number_from", "Thing.h", 978, "in_value_ptr != nullptr");
    }

    if (*a4 == AMCP::Implementation::get_type_marker<signed char>())
    {
      if (v9)
      {
        v19 = *v9;
        v32 = 0u;
        v33 = 0u;
        LOBYTE(v32) = v19;
        v17 = AMCP::Implementation::In_Place_Storage<signed char>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<unsigned char>())
    {
      if (v9)
      {
        v20 = *v9;
        v32 = 0u;
        v33 = 0u;
        LOBYTE(v32) = v20;
        v17 = AMCP::Implementation::In_Place_Storage<unsigned char>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<short>())
    {
      if (v9)
      {
        v32 = 0u;
        v33 = 0u;
        LOWORD(v32) = *v9;
        v17 = AMCP::Implementation::In_Place_Storage<short>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<unsigned short>())
    {
      if (v9)
      {
        v21 = *v9;
        v32 = 0u;
        v33 = 0u;
        LOWORD(v32) = v21;
        v17 = AMCP::Implementation::In_Place_Storage<unsigned short>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<int>())
    {
      if (v9)
      {
        v22 = *v9;
        v32 = 0u;
        v33 = 0u;
        LODWORD(v32) = v22;
        v17 = AMCP::Implementation::In_Place_Storage<int>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<unsigned int>())
    {
      if (v9)
      {
        v23 = *v9;
        v32 = 0u;
        v33 = 0u;
        LODWORD(v32) = v23;
        v17 = AMCP::Implementation::In_Place_Storage<unsigned int>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<long>())
    {
      if (v9)
      {
        v24 = *v9;
        v33 = 0uLL;
        v32 = v24;
        v17 = AMCP::Implementation::In_Place_Storage<long>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<unsigned long>())
    {
      if (v9)
      {
        v25 = *v9;
        v33 = 0uLL;
        v32 = v25;
        v17 = AMCP::Implementation::In_Place_Storage<unsigned long>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<long long>())
    {
      if (v9)
      {
        v26 = *v9;
        v33 = 0uLL;
        v32 = v26;
        v17 = AMCP::Implementation::In_Place_Storage<long long>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<unsigned long long>())
    {
      if (v9)
      {
        v27 = *v9;
        v33 = 0uLL;
        v32 = v27;
        v17 = AMCP::Implementation::In_Place_Storage<unsigned long long>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<float>())
    {
      if (v9)
      {
        v28 = *v9;
        v32 = 0u;
        v33 = 0u;
        *&v32 = v28;
        v17 = AMCP::Implementation::In_Place_Storage<float>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<double>())
    {
      if (v9)
      {
        v29 = *v9;
        v33 = 0uLL;
        *(&v32 + 1) = 0;
        *&v32 = v29;
        v17 = AMCP::Implementation::In_Place_Storage<double>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<long double>())
    {
      if (v9)
      {
        v30 = *v9;
        v33 = 0uLL;
        *(&v32 + 1) = 0;
        *&v32 = v30;
        v17 = AMCP::Implementation::In_Place_Storage<long double>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<AMCP::Direction>())
    {
      if (v9)
      {
        v31 = *v9 != 0;
        v32 = 0u;
        v33 = 0u;
        LODWORD(v32) = v31;
        v17 = AMCP::Implementation::In_Place_Storage<AMCP::Direction>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::BooleanRef>())
    {
      AMCP::Implementation::create_number_from<short,applesauce::CF::BooleanRef>(&v32, v9);
      goto LABEL_89;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::NumberRef>())
    {
      AMCP::Implementation::create_number_from<short,applesauce::CF::NumberRef>(&v32, v9);
    }

    else
    {
LABEL_88:
      v34 = 0;
      v32 = 0u;
      v33 = 0u;
    }

LABEL_89:
    AMCP::swap(&v32, a3, v8);
    if (v34)
    {
      v34(0, &v32, 0, 0);
    }

    return 0;
  }

  if (result == 3)
  {
    v10 = AMCP::Implementation::get_type_marker<short>();
    result = 0;
    *a4 = v10;
  }

  else if (*a4 == AMCP::Implementation::get_type_marker<short>())
  {
    return a2;
  }

  else
  {
    return 0;
  }

  return result;
}

void sub_1DE285FE8(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE285FB8);
}

uint64_t AMCP::Thing::convert_to<short>(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    goto LABEL_12;
  }

  type = AMCP::Implementation::get_type_marker<short>();
  v3 = *(a1 + 32);
  v17 = 0;
  if (v3)
  {
    v3(3, a1, 0, &v17);
    v3 = v17;
  }

  if (v3 == type)
  {
    *&v15[0] = type;
    v4 = (*(a1 + 32))(4, a1, 0, v15);
    if (v4)
    {
      return *v4;
    }

LABEL_12:
    exception = __cxa_allocate_exception(8uLL);
    v9 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v9, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v14 = AMCP::Implementation::get_type_marker<short>();
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  (*(a1 + 32))(6, a1, v15, &v14);
  if (!v16)
  {
    v10 = __cxa_allocate_exception(8uLL);
    v11 = std::bad_cast::bad_cast(v10);
    __cxa_throw(v11, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v14 = type;
  v6 = v16(4, v15, 0, &v14);
  if (!v6)
  {
    v12 = __cxa_allocate_exception(8uLL);
    v13 = std::bad_cast::bad_cast(v12);
    __cxa_throw(v13, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v5 = *v6;
  if (v16)
  {
    v16(0, v15, 0, 0);
  }

  return v5;
}

void sub_1DE286180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

void *AMCP::Implementation::create_number_from<short,applesauce::CF::BooleanRef>(void *result, _WORD *a2)
{
  if (!a2)
  {
    __assert_rtn("create_number_from", "Thing.h", 978, "in_value_ptr != nullptr");
  }

  if (*a2)
  {
    v2 = MEMORY[0x1E695E4C8];
  }

  else
  {
    v2 = MEMORY[0x1E695E4B8];
  }

  v3 = *v2;
  result[2] = 0;
  result[3] = 0;
  *result = v3;
  result[1] = 0;
  result[4] = AMCP::Implementation::In_Place_Storage<applesauce::CF::BooleanRef>::dispatch;
  return result;
}

void AMCP::Implementation::create_number_from<short,applesauce::CF::NumberRef>(uint64_t a1, __int16 *a2)
{
  if (!a2)
  {
    __assert_rtn("create_number_from", "Thing.h", 978, "in_value_ptr != nullptr");
  }

  valuePtr = *a2;
  v3 = CFNumberCreate(0, kCFNumberShortType, &valuePtr);
  v6 = v3;
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v4 = v3;
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  AMCP::Implementation::In_Place_Storage<applesauce::CF::NumberRef>::construct<applesauce::CF::NumberRef&>(a1, &v6);
  CFRelease(v4);
}

uint64_t AMCP::Implementation::In_Place_Storage<unsigned char>::dispatch(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (result <= 2)
  {
    if (result)
    {
      if (result == 1)
      {
        result = 0;
        *a3 = 0u;
        *(a3 + 16) = 0u;
        *a3 = *a2;
        *(a3 + 32) = AMCP::Implementation::In_Place_Storage<unsigned char>::dispatch;
        return result;
      }

      if (result != 2)
      {
        return result;
      }

      result = 0;
      v7 = 0uLL;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *a3 = *a2;
      *(a3 + 32) = AMCP::Implementation::In_Place_Storage<unsigned char>::dispatch;
      *(a2 + 32) = 0;
    }

    else
    {
      result = 0;
      *(a2 + 32) = 0;
      v7 = 0uLL;
    }

    *a2 = v7;
    *(a2 + 16) = v7;
    return result;
  }

  if (result > 4)
  {
    if (result == 5)
    {
      type = AMCP::Implementation::get_type_marker<unsigned char>();
      v12 = *(a2 + 32);
      *&v32 = 0;
      if (v12)
      {
        v12(3, a2, 0, &v32);
        v12 = v32;
      }

      if (v12 != type)
      {
        goto LABEL_28;
      }

      v13 = *(a3 + 32);
      v35 = 0;
      if (v13)
      {
        v13(3, a3, 0, &v35);
        v13 = v35;
      }

      if (v13 == type)
      {
        if (*(a2 + 32))
        {
          *&v32 = AMCP::Implementation::get_type_marker<unsigned char>();
          v14 = (*(a2 + 32))(4, a2, 0, &v32);
        }

        else
        {
          v14 = 0;
        }

        *&v32 = AMCP::Implementation::get_type_marker<unsigned char>();
        if (*v14 != *(*(a3 + 32))(4, a3, 0, &v32))
        {
          return 0;
        }
      }

      else
      {
LABEL_28:
        v15 = AMCP::Thing::convert_to<unsigned char>(a2);
        if (v15 != AMCP::Thing::convert_to<unsigned char>(a3))
        {
          return 0;
        }
      }

      return 1;
    }

    if (result != 6)
    {
      return result;
    }

    if (!AMCP::is_one_of<BOOL,char,signed char,unsigned char,short,unsigned short,int,unsigned int,long,unsigned long,long long,unsigned long long,float,double,long double,AMCP::Direction,applesauce::CF::BooleanRef,applesauce::CF::NumberRef>(a4))
    {
      goto LABEL_88;
    }

    if (*(a2 + 32))
    {
      *&v32 = AMCP::Implementation::get_type_marker<unsigned char>();
      v9 = (*(a2 + 32))(4, a2, 0, &v32);
    }

    else
    {
      v9 = 0;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<BOOL>())
    {
      if (v9)
      {
        v16 = *v9 != 0;
        v32 = 0u;
        v33 = 0u;
        LOBYTE(v32) = v16;
        v17 = AMCP::Implementation::In_Place_Storage<BOOL>::dispatch;
LABEL_82:
        v34 = v17;
        goto LABEL_89;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<char>())
    {
      if (v9)
      {
        v18 = *v9;
        v32 = 0u;
        v33 = 0u;
        LOBYTE(v32) = v18;
        v17 = AMCP::Implementation::In_Place_Storage<char>::dispatch;
        goto LABEL_82;
      }

LABEL_83:
      __assert_rtn("create_number_from", "Thing.h", 978, "in_value_ptr != nullptr");
    }

    if (*a4 == AMCP::Implementation::get_type_marker<signed char>())
    {
      if (v9)
      {
        v19 = *v9;
        v32 = 0u;
        v33 = 0u;
        LOBYTE(v32) = v19;
        v17 = AMCP::Implementation::In_Place_Storage<signed char>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<unsigned char>())
    {
      if (v9)
      {
        v32 = 0u;
        v33 = 0u;
        LOBYTE(v32) = *v9;
        v17 = AMCP::Implementation::In_Place_Storage<unsigned char>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<short>())
    {
      if (v9)
      {
        v20 = *v9;
        v32 = 0u;
        v33 = 0u;
        LOWORD(v32) = v20;
        v17 = AMCP::Implementation::In_Place_Storage<short>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<unsigned short>())
    {
      if (v9)
      {
        v21 = *v9;
        v32 = 0u;
        v33 = 0u;
        LOWORD(v32) = v21;
        v17 = AMCP::Implementation::In_Place_Storage<unsigned short>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<int>())
    {
      if (v9)
      {
        v22 = *v9;
        v32 = 0u;
        v33 = 0u;
        LODWORD(v32) = v22;
        v17 = AMCP::Implementation::In_Place_Storage<int>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<unsigned int>())
    {
      if (v9)
      {
        v23 = *v9;
        v32 = 0u;
        v33 = 0u;
        LODWORD(v32) = v23;
        v17 = AMCP::Implementation::In_Place_Storage<unsigned int>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<long>())
    {
      if (v9)
      {
        v24 = *v9;
        v33 = 0uLL;
        v32 = v24;
        v17 = AMCP::Implementation::In_Place_Storage<long>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<unsigned long>())
    {
      if (v9)
      {
        v25 = *v9;
        v33 = 0uLL;
        v32 = v25;
        v17 = AMCP::Implementation::In_Place_Storage<unsigned long>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<long long>())
    {
      if (v9)
      {
        v26 = *v9;
        v33 = 0uLL;
        v32 = v26;
        v17 = AMCP::Implementation::In_Place_Storage<long long>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<unsigned long long>())
    {
      if (v9)
      {
        v27 = *v9;
        v33 = 0uLL;
        v32 = v27;
        v17 = AMCP::Implementation::In_Place_Storage<unsigned long long>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<float>())
    {
      if (v9)
      {
        LOBYTE(v28) = *v9;
        v32 = 0u;
        v33 = 0u;
        *&v32 = v28;
        v17 = AMCP::Implementation::In_Place_Storage<float>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<double>())
    {
      if (v9)
      {
        LOBYTE(v29) = *v9;
        v33 = 0uLL;
        v32 = COERCE_UNSIGNED_INT64(v29);
        v17 = AMCP::Implementation::In_Place_Storage<double>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<long double>())
    {
      if (v9)
      {
        LOBYTE(v30) = *v9;
        v33 = 0uLL;
        v32 = COERCE_UNSIGNED_INT64(v30);
        v17 = AMCP::Implementation::In_Place_Storage<long double>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<AMCP::Direction>())
    {
      if (v9)
      {
        v31 = *v9 != 0;
        v32 = 0u;
        v33 = 0u;
        LODWORD(v32) = v31;
        v17 = AMCP::Implementation::In_Place_Storage<AMCP::Direction>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::BooleanRef>())
    {
      AMCP::Implementation::create_number_from<char,applesauce::CF::BooleanRef>(&v32, v9);
      goto LABEL_89;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::NumberRef>())
    {
      AMCP::Implementation::create_number_from<unsigned char,applesauce::CF::NumberRef>(&v32, v9);
    }

    else
    {
LABEL_88:
      v34 = 0;
      v32 = 0u;
      v33 = 0u;
    }

LABEL_89:
    AMCP::swap(&v32, a3, v8);
    if (v34)
    {
      v34(0, &v32, 0, 0);
    }

    return 0;
  }

  if (result == 3)
  {
    v10 = AMCP::Implementation::get_type_marker<unsigned char>();
    result = 0;
    *a4 = v10;
  }

  else if (*a4 == AMCP::Implementation::get_type_marker<unsigned char>())
  {
    return a2;
  }

  else
  {
    return 0;
  }

  return result;
}

void sub_1DE286940(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE286910);
}

uint64_t AMCP::Thing::convert_to<unsigned char>(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    goto LABEL_12;
  }

  type = AMCP::Implementation::get_type_marker<unsigned char>();
  v3 = *(a1 + 32);
  v17 = 0;
  if (v3)
  {
    v3(3, a1, 0, &v17);
    v3 = v17;
  }

  if (v3 == type)
  {
    *&v15[0] = type;
    v4 = (*(a1 + 32))(4, a1, 0, v15);
    if (v4)
    {
      return *v4;
    }

LABEL_12:
    exception = __cxa_allocate_exception(8uLL);
    v9 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v9, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v14 = AMCP::Implementation::get_type_marker<unsigned char>();
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  (*(a1 + 32))(6, a1, v15, &v14);
  if (!v16)
  {
    v10 = __cxa_allocate_exception(8uLL);
    v11 = std::bad_cast::bad_cast(v10);
    __cxa_throw(v11, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v14 = type;
  v6 = v16(4, v15, 0, &v14);
  if (!v6)
  {
    v12 = __cxa_allocate_exception(8uLL);
    v13 = std::bad_cast::bad_cast(v12);
    __cxa_throw(v13, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v5 = *v6;
  if (v16)
  {
    v16(0, v15, 0, 0);
  }

  return v5;
}

void sub_1DE286AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

void AMCP::Implementation::create_number_from<unsigned char,applesauce::CF::NumberRef>(uint64_t a1, char *a2)
{
  if (!a2)
  {
    __assert_rtn("create_number_from", "Thing.h", 978, "in_value_ptr != nullptr");
  }

  valuePtr = *a2;
  v3 = CFNumberCreate(0, kCFNumberCharType, &valuePtr);
  v6 = v3;
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v4 = v3;
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  AMCP::Implementation::In_Place_Storage<applesauce::CF::NumberRef>::construct<applesauce::CF::NumberRef&>(a1, &v6);
  CFRelease(v4);
}

uint64_t AMCP::Implementation::In_Place_Storage<signed char>::dispatch(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (result <= 2)
  {
    if (result)
    {
      if (result == 1)
      {
        result = 0;
        *a3 = 0u;
        *(a3 + 16) = 0u;
        *a3 = *a2;
        *(a3 + 32) = AMCP::Implementation::In_Place_Storage<signed char>::dispatch;
        return result;
      }

      if (result != 2)
      {
        return result;
      }

      result = 0;
      v7 = 0uLL;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *a3 = *a2;
      *(a3 + 32) = AMCP::Implementation::In_Place_Storage<signed char>::dispatch;
      *(a2 + 32) = 0;
    }

    else
    {
      result = 0;
      *(a2 + 32) = 0;
      v7 = 0uLL;
    }

    *a2 = v7;
    *(a2 + 16) = v7;
    return result;
  }

  if (result > 4)
  {
    if (result == 5)
    {
      type = AMCP::Implementation::get_type_marker<signed char>();
      v12 = *(a2 + 32);
      *&v32 = 0;
      if (v12)
      {
        v12(3, a2, 0, &v32);
        v12 = v32;
      }

      if (v12 != type)
      {
        goto LABEL_28;
      }

      v13 = *(a3 + 32);
      v35 = 0;
      if (v13)
      {
        v13(3, a3, 0, &v35);
        v13 = v35;
      }

      if (v13 == type)
      {
        if (*(a2 + 32))
        {
          *&v32 = AMCP::Implementation::get_type_marker<signed char>();
          v14 = (*(a2 + 32))(4, a2, 0, &v32);
        }

        else
        {
          v14 = 0;
        }

        *&v32 = AMCP::Implementation::get_type_marker<signed char>();
        if (*v14 != *(*(a3 + 32))(4, a3, 0, &v32))
        {
          return 0;
        }
      }

      else
      {
LABEL_28:
        v15 = AMCP::Thing::convert_to<signed char>(a2);
        if (v15 != AMCP::Thing::convert_to<signed char>(a3))
        {
          return 0;
        }
      }

      return 1;
    }

    if (result != 6)
    {
      return result;
    }

    if (!AMCP::is_one_of<BOOL,char,signed char,unsigned char,short,unsigned short,int,unsigned int,long,unsigned long,long long,unsigned long long,float,double,long double,AMCP::Direction,applesauce::CF::BooleanRef,applesauce::CF::NumberRef>(a4))
    {
      goto LABEL_88;
    }

    if (*(a2 + 32))
    {
      *&v32 = AMCP::Implementation::get_type_marker<signed char>();
      v9 = (*(a2 + 32))(4, a2, 0, &v32);
    }

    else
    {
      v9 = 0;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<BOOL>())
    {
      if (v9)
      {
        v16 = *v9 != 0;
        v32 = 0u;
        v33 = 0u;
        LOBYTE(v32) = v16;
        v17 = AMCP::Implementation::In_Place_Storage<BOOL>::dispatch;
LABEL_82:
        v34 = v17;
        goto LABEL_89;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<char>())
    {
      if (v9)
      {
        v18 = *v9;
        v32 = 0u;
        v33 = 0u;
        LOBYTE(v32) = v18;
        v17 = AMCP::Implementation::In_Place_Storage<char>::dispatch;
        goto LABEL_82;
      }

LABEL_83:
      __assert_rtn("create_number_from", "Thing.h", 978, "in_value_ptr != nullptr");
    }

    if (*a4 == AMCP::Implementation::get_type_marker<signed char>())
    {
      if (v9)
      {
        v32 = 0u;
        v33 = 0u;
        LOBYTE(v32) = *v9;
        v17 = AMCP::Implementation::In_Place_Storage<signed char>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<unsigned char>())
    {
      if (v9)
      {
        v19 = *v9;
        v32 = 0u;
        v33 = 0u;
        LOBYTE(v32) = v19;
        v17 = AMCP::Implementation::In_Place_Storage<unsigned char>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<short>())
    {
      if (v9)
      {
        v20 = *v9;
        v32 = 0u;
        v33 = 0u;
        LOWORD(v32) = v20;
        v17 = AMCP::Implementation::In_Place_Storage<short>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<unsigned short>())
    {
      if (v9)
      {
        v21 = *v9;
        v32 = 0u;
        v33 = 0u;
        LOWORD(v32) = v21;
        v17 = AMCP::Implementation::In_Place_Storage<unsigned short>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<int>())
    {
      if (v9)
      {
        v22 = *v9;
        v32 = 0u;
        v33 = 0u;
        LODWORD(v32) = v22;
        v17 = AMCP::Implementation::In_Place_Storage<int>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<unsigned int>())
    {
      if (v9)
      {
        v23 = *v9;
        v32 = 0u;
        v33 = 0u;
        LODWORD(v32) = v23;
        v17 = AMCP::Implementation::In_Place_Storage<unsigned int>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<long>())
    {
      if (v9)
      {
        v24 = *v9;
        v33 = 0uLL;
        v32 = v24;
        v17 = AMCP::Implementation::In_Place_Storage<long>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<unsigned long>())
    {
      if (v9)
      {
        v25 = *v9;
        v33 = 0uLL;
        v32 = v25;
        v17 = AMCP::Implementation::In_Place_Storage<unsigned long>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<long long>())
    {
      if (v9)
      {
        v26 = *v9;
        v33 = 0uLL;
        v32 = v26;
        v17 = AMCP::Implementation::In_Place_Storage<long long>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<unsigned long long>())
    {
      if (v9)
      {
        v27 = *v9;
        v33 = 0uLL;
        v32 = v27;
        v17 = AMCP::Implementation::In_Place_Storage<unsigned long long>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<float>())
    {
      if (v9)
      {
        v28 = *v9;
        v32 = 0u;
        v33 = 0u;
        *&v32 = v28;
        v17 = AMCP::Implementation::In_Place_Storage<float>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<double>())
    {
      if (v9)
      {
        v29 = *v9;
        v33 = 0uLL;
        *(&v32 + 1) = 0;
        *&v32 = v29;
        v17 = AMCP::Implementation::In_Place_Storage<double>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<long double>())
    {
      if (v9)
      {
        v30 = *v9;
        v33 = 0uLL;
        *(&v32 + 1) = 0;
        *&v32 = v30;
        v17 = AMCP::Implementation::In_Place_Storage<long double>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<AMCP::Direction>())
    {
      if (v9)
      {
        v31 = *v9 != 0;
        v32 = 0u;
        v33 = 0u;
        LODWORD(v32) = v31;
        v17 = AMCP::Implementation::In_Place_Storage<AMCP::Direction>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::BooleanRef>())
    {
      AMCP::Implementation::create_number_from<char,applesauce::CF::BooleanRef>(&v32, v9);
      goto LABEL_89;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::NumberRef>())
    {
      AMCP::Implementation::create_number_from<signed char,applesauce::CF::NumberRef>(&v32, v9);
    }

    else
    {
LABEL_88:
      v34 = 0;
      v32 = 0u;
      v33 = 0u;
    }

LABEL_89:
    AMCP::swap(&v32, a3, v8);
    if (v34)
    {
      v34(0, &v32, 0, 0);
    }

    return 0;
  }

  if (result == 3)
  {
    v10 = AMCP::Implementation::get_type_marker<signed char>();
    result = 0;
    *a4 = v10;
  }

  else if (*a4 == AMCP::Implementation::get_type_marker<signed char>())
  {
    return a2;
  }

  else
  {
    return 0;
  }

  return result;
}

void sub_1DE28722C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE2871FCLL);
}

uint64_t AMCP::Thing::convert_to<signed char>(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    goto LABEL_12;
  }

  type = AMCP::Implementation::get_type_marker<signed char>();
  v3 = *(a1 + 32);
  v17 = 0;
  if (v3)
  {
    v3(3, a1, 0, &v17);
    v3 = v17;
  }

  if (v3 == type)
  {
    *&v15[0] = type;
    v4 = (*(a1 + 32))(4, a1, 0, v15);
    if (v4)
    {
      return *v4;
    }

LABEL_12:
    exception = __cxa_allocate_exception(8uLL);
    v9 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v9, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v14 = AMCP::Implementation::get_type_marker<signed char>();
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  (*(a1 + 32))(6, a1, v15, &v14);
  if (!v16)
  {
    v10 = __cxa_allocate_exception(8uLL);
    v11 = std::bad_cast::bad_cast(v10);
    __cxa_throw(v11, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v14 = type;
  v6 = v16(4, v15, 0, &v14);
  if (!v6)
  {
    v12 = __cxa_allocate_exception(8uLL);
    v13 = std::bad_cast::bad_cast(v12);
    __cxa_throw(v13, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v5 = *v6;
  if (v16)
  {
    v16(0, v15, 0, 0);
  }

  return v5;
}

void sub_1DE2873C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

void AMCP::Implementation::create_number_from<signed char,applesauce::CF::NumberRef>(uint64_t a1, char *a2)
{
  if (!a2)
  {
    __assert_rtn("create_number_from", "Thing.h", 978, "in_value_ptr != nullptr");
  }

  valuePtr = *a2;
  v3 = CFNumberCreate(0, kCFNumberCharType, &valuePtr);
  v6 = v3;
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v4 = v3;
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  AMCP::Implementation::In_Place_Storage<applesauce::CF::NumberRef>::construct<applesauce::CF::NumberRef&>(a1, &v6);
  CFRelease(v4);
}

uint64_t AMCP::Implementation::In_Place_Storage<char>::dispatch(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (result <= 2)
  {
    if (result)
    {
      if (result == 1)
      {
        result = 0;
        *a3 = 0u;
        *(a3 + 16) = 0u;
        *a3 = *a2;
        *(a3 + 32) = AMCP::Implementation::In_Place_Storage<char>::dispatch;
        return result;
      }

      if (result != 2)
      {
        return result;
      }

      result = 0;
      v7 = 0uLL;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *a3 = *a2;
      *(a3 + 32) = AMCP::Implementation::In_Place_Storage<char>::dispatch;
      *(a2 + 32) = 0;
    }

    else
    {
      result = 0;
      *(a2 + 32) = 0;
      v7 = 0uLL;
    }

    *a2 = v7;
    *(a2 + 16) = v7;
    return result;
  }

  if (result > 4)
  {
    if (result == 5)
    {
      type = AMCP::Implementation::get_type_marker<char>();
      v12 = *(a2 + 32);
      *&v32 = 0;
      if (v12)
      {
        v12(3, a2, 0, &v32);
        v12 = v32;
      }

      if (v12 != type)
      {
        goto LABEL_28;
      }

      v13 = *(a3 + 32);
      v35 = 0;
      if (v13)
      {
        v13(3, a3, 0, &v35);
        v13 = v35;
      }

      if (v13 == type)
      {
        if (*(a2 + 32))
        {
          *&v32 = AMCP::Implementation::get_type_marker<char>();
          v14 = (*(a2 + 32))(4, a2, 0, &v32);
        }

        else
        {
          v14 = 0;
        }

        *&v32 = AMCP::Implementation::get_type_marker<char>();
        if (*v14 != *(*(a3 + 32))(4, a3, 0, &v32))
        {
          return 0;
        }
      }

      else
      {
LABEL_28:
        v15 = AMCP::Thing::convert_to<char>(a2);
        if (v15 != AMCP::Thing::convert_to<char>(a3))
        {
          return 0;
        }
      }

      return 1;
    }

    if (result != 6)
    {
      return result;
    }

    if (!AMCP::is_one_of<BOOL,char,signed char,unsigned char,short,unsigned short,int,unsigned int,long,unsigned long,long long,unsigned long long,float,double,long double,AMCP::Direction,applesauce::CF::BooleanRef,applesauce::CF::NumberRef>(a4))
    {
      goto LABEL_88;
    }

    if (*(a2 + 32))
    {
      *&v32 = AMCP::Implementation::get_type_marker<char>();
      v9 = (*(a2 + 32))(4, a2, 0, &v32);
    }

    else
    {
      v9 = 0;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<BOOL>())
    {
      if (v9)
      {
        v16 = *v9 != 0;
        v32 = 0u;
        v33 = 0u;
        LOBYTE(v32) = v16;
        v17 = AMCP::Implementation::In_Place_Storage<BOOL>::dispatch;
LABEL_82:
        v34 = v17;
        goto LABEL_89;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<char>())
    {
      if (v9)
      {
        v32 = 0u;
        v33 = 0u;
        LOBYTE(v32) = *v9;
        v17 = AMCP::Implementation::In_Place_Storage<char>::dispatch;
        goto LABEL_82;
      }

LABEL_83:
      __assert_rtn("create_number_from", "Thing.h", 978, "in_value_ptr != nullptr");
    }

    if (*a4 == AMCP::Implementation::get_type_marker<signed char>())
    {
      if (v9)
      {
        v18 = *v9;
        v32 = 0u;
        v33 = 0u;
        LOBYTE(v32) = v18;
        v17 = AMCP::Implementation::In_Place_Storage<signed char>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<unsigned char>())
    {
      if (v9)
      {
        v19 = *v9;
        v32 = 0u;
        v33 = 0u;
        LOBYTE(v32) = v19;
        v17 = AMCP::Implementation::In_Place_Storage<unsigned char>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<short>())
    {
      if (v9)
      {
        v20 = *v9;
        v32 = 0u;
        v33 = 0u;
        LOWORD(v32) = v20;
        v17 = AMCP::Implementation::In_Place_Storage<short>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<unsigned short>())
    {
      if (v9)
      {
        v21 = *v9;
        v32 = 0u;
        v33 = 0u;
        LOWORD(v32) = v21;
        v17 = AMCP::Implementation::In_Place_Storage<unsigned short>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<int>())
    {
      if (v9)
      {
        v22 = *v9;
        v32 = 0u;
        v33 = 0u;
        LODWORD(v32) = v22;
        v17 = AMCP::Implementation::In_Place_Storage<int>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<unsigned int>())
    {
      if (v9)
      {
        v23 = *v9;
        v32 = 0u;
        v33 = 0u;
        LODWORD(v32) = v23;
        v17 = AMCP::Implementation::In_Place_Storage<unsigned int>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<long>())
    {
      if (v9)
      {
        v24 = *v9;
        v33 = 0uLL;
        v32 = v24;
        v17 = AMCP::Implementation::In_Place_Storage<long>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<unsigned long>())
    {
      if (v9)
      {
        v25 = *v9;
        v33 = 0uLL;
        v32 = v25;
        v17 = AMCP::Implementation::In_Place_Storage<unsigned long>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<long long>())
    {
      if (v9)
      {
        v26 = *v9;
        v33 = 0uLL;
        v32 = v26;
        v17 = AMCP::Implementation::In_Place_Storage<long long>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<unsigned long long>())
    {
      if (v9)
      {
        v27 = *v9;
        v33 = 0uLL;
        v32 = v27;
        v17 = AMCP::Implementation::In_Place_Storage<unsigned long long>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<float>())
    {
      if (v9)
      {
        v28 = *v9;
        v32 = 0u;
        v33 = 0u;
        *&v32 = v28;
        v17 = AMCP::Implementation::In_Place_Storage<float>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<double>())
    {
      if (v9)
      {
        v29 = *v9;
        v33 = 0uLL;
        *(&v32 + 1) = 0;
        *&v32 = v29;
        v17 = AMCP::Implementation::In_Place_Storage<double>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<long double>())
    {
      if (v9)
      {
        v30 = *v9;
        v33 = 0uLL;
        *(&v32 + 1) = 0;
        *&v32 = v30;
        v17 = AMCP::Implementation::In_Place_Storage<long double>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<AMCP::Direction>())
    {
      if (v9)
      {
        v31 = *v9 != 0;
        v32 = 0u;
        v33 = 0u;
        LODWORD(v32) = v31;
        v17 = AMCP::Implementation::In_Place_Storage<AMCP::Direction>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::BooleanRef>())
    {
      AMCP::Implementation::create_number_from<char,applesauce::CF::BooleanRef>(&v32, v9);
      goto LABEL_89;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::NumberRef>())
    {
      AMCP::Implementation::create_number_from<char,applesauce::CF::NumberRef>(&v32, v9);
    }

    else
    {
LABEL_88:
      v34 = 0;
      v32 = 0u;
      v33 = 0u;
    }

LABEL_89:
    AMCP::swap(&v32, a3, v8);
    if (v34)
    {
      (v34)(0, &v32, 0, 0);
    }

    return 0;
  }

  if (result == 3)
  {
    v10 = AMCP::Implementation::get_type_marker<char>();
    result = 0;
    *a4 = v10;
  }

  else if (*a4 == AMCP::Implementation::get_type_marker<char>())
  {
    return a2;
  }

  else
  {
    return 0;
  }

  return result;
}

void sub_1DE287B18(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE287AE8);
}

uint64_t AMCP::Thing::convert_to<char>(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    goto LABEL_12;
  }

  type = AMCP::Implementation::get_type_marker<char>();
  v3 = *(a1 + 32);
  v17 = 0;
  if (v3)
  {
    v3(3, a1, 0, &v17);
    v3 = v17;
  }

  if (v3 == type)
  {
    *&v15[0] = type;
    v4 = (*(a1 + 32))(4, a1, 0, v15);
    if (v4)
    {
      return *v4;
    }

LABEL_12:
    exception = __cxa_allocate_exception(8uLL);
    v9 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v9, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v14 = AMCP::Implementation::get_type_marker<char>();
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  (*(a1 + 32))(6, a1, v15, &v14);
  if (!v16)
  {
    v10 = __cxa_allocate_exception(8uLL);
    v11 = std::bad_cast::bad_cast(v10);
    __cxa_throw(v11, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v14 = type;
  v6 = v16(4, v15, 0, &v14);
  if (!v6)
  {
    v12 = __cxa_allocate_exception(8uLL);
    v13 = std::bad_cast::bad_cast(v12);
    __cxa_throw(v13, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v5 = *v6;
  if (v16)
  {
    v16(0, v15, 0, 0);
  }

  return v5;
}

void sub_1DE287CB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

void *AMCP::Implementation::create_number_from<char,applesauce::CF::BooleanRef>(void *result, _BYTE *a2)
{
  if (!a2)
  {
    __assert_rtn("create_number_from", "Thing.h", 978, "in_value_ptr != nullptr");
  }

  if (*a2)
  {
    v2 = MEMORY[0x1E695E4C8];
  }

  else
  {
    v2 = MEMORY[0x1E695E4B8];
  }

  v3 = *v2;
  result[2] = 0;
  result[3] = 0;
  *result = v3;
  result[1] = 0;
  result[4] = AMCP::Implementation::In_Place_Storage<applesauce::CF::BooleanRef>::dispatch;
  return result;
}

void AMCP::Implementation::create_number_from<char,applesauce::CF::NumberRef>(uint64_t a1, char *a2)
{
  if (!a2)
  {
    __assert_rtn("create_number_from", "Thing.h", 978, "in_value_ptr != nullptr");
  }

  valuePtr = *a2;
  v3 = CFNumberCreate(0, kCFNumberCharType, &valuePtr);
  v6 = v3;
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v4 = v3;
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  AMCP::Implementation::In_Place_Storage<applesauce::CF::NumberRef>::construct<applesauce::CF::NumberRef&>(a1, &v6);
  CFRelease(v4);
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<BOOL>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<BOOL>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

double std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<BOOL>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<BOOL>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5989B18;
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(a2 + 8, a1 + 8);
  result = *(a1 + 48);
  *(a2 + 48) = result;
  *(a2 + 56) = *(a1 + 56);
  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<BOOL>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<BOOL>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5989B18;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<BOOL>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<BOOL>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5989B18;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));
  return a1;
}

uint64_t std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_21,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_21>,BOOL ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core14IOContext_Core11update_coreERNS_4Core13Operation_SetEE4$_21"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_21,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_21>,BOOL ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5961CE8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_setter<caulk::mach::os_workgroup_interval_managed>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_setter<caulk::mach::os_workgroup_interval_managed>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities27add_generic_property_setterIN5caulk4mach29os_workgroup_interval_managedEEEvRNS0_9OperationEEUlRKNS_5ThingEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_setter<caulk::mach::os_workgroup_interval_managed>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_setter<caulk::mach::os_workgroup_interval_managed>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x1E69E9840];
  AMCP::Thing::convert_to<caulk::mach::os_workgroup_interval_managed>(v4, a2);
  AMCP::Core::Operation::call_function<void,caulk::mach::os_workgroup_interval_managed const&>((a1 + 8), v4);
  caulk::mach::os_workgroup_interval_managed::~os_workgroup_interval_managed(v4);
  v3 = *MEMORY[0x1E69E9840];
}

void sub_1DE288240(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  caulk::mach::os_workgroup_interval_managed::~os_workgroup_interval_managed(va);
  _Unwind_Resume(a1);
}

uint64_t AMCP::Thing::convert_to<caulk::mach::os_workgroup_interval_managed>(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 32))
  {
    goto LABEL_12;
  }

  v4 = AMCP::Implementation::get_type_marker<caulk::mach::os_workgroup_interval_managed>();
  v5 = *(a2 + 32);
  v26 = 0;
  if (v5)
  {
    v5(3, a2, 0, &v26);
    v5 = v26;
  }

  if (v5 == v4)
  {
    *&v24[0] = v4;
    v6 = (*(a2 + 32))(4, a2, 0, v24);
    if (v6)
    {
      v8 = v6;
      *a1 = MEMORY[0x1E69E3C18] + 16;
      result = caulk::mach::details::retain_os_object(*(v6 + 8), v7);
      *(a1 + 8) = result;
      v10 = *(v8 + 41);
      v11 = *(v8 + 32);
      *(a1 + 16) = *(v8 + 16);
      *(a1 + 32) = v11;
      *(a1 + 41) = v10;
      *a1 = MEMORY[0x1E69E3C20] + 16;
      *(a1 + 57) = *(v8 + 57);
      return result;
    }

LABEL_12:
    exception = __cxa_allocate_exception(8uLL);
    v18 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v18, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v23 = AMCP::Implementation::get_type_marker<caulk::mach::os_workgroup_interval_managed>();
  memset(v24, 0, sizeof(v24));
  v25 = 0;
  (*(a2 + 32))(6, a2, v24, &v23);
  if (!v25)
  {
    v19 = __cxa_allocate_exception(8uLL);
    v20 = std::bad_cast::bad_cast(v19);
    __cxa_throw(v20, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v23 = v4;
  v12 = v25(4, v24, 0, &v23);
  v14 = v12;
  if (!v12)
  {
    v21 = __cxa_allocate_exception(8uLL);
    v22 = std::bad_cast::bad_cast(v21);
    __cxa_throw(v22, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  *a1 = MEMORY[0x1E69E3C18] + 16;
  result = caulk::mach::details::retain_os_object(*(v12 + 8), v13);
  *(a1 + 8) = result;
  v15 = *(v14 + 41);
  v16 = *(v14 + 32);
  *(a1 + 16) = *(v14 + 16);
  *(a1 + 32) = v16;
  *(a1 + 41) = v15;
  *a1 = MEMORY[0x1E69E3C20] + 16;
  *(a1 + 57) = *(v14 + 57);
  if (v25)
  {
    return v25(0, v24, 0, 0);
  }

  return result;
}

void sub_1DE2884A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

uint64_t AMCP::Core::Operation::call_function<void,caulk::mach::os_workgroup_interval_managed const&>(void *a1, uint64_t a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = AMCP::Implementation::get_type_marker<std::function<void ()(caulk::mach::os_workgroup_interval_managed const&)>>();
  v5 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(a1, v4);
  if (!v5)
  {
    v14 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v14 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
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
      v29 = 1024;
      v30 = 154;
      _os_log_error_impl(&dword_1DE1F9000, v17, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v27);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Operation does not have requested function", &v19);
    std::runtime_error::runtime_error(&v20, &v19);
    std::runtime_error::runtime_error(&v21, &v20);
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = -1;
    v21.__vftable = &unk_1F5992170;
    v22 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v21);
    v31 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = void, Argument_Types = <const caulk::mach::os_workgroup_interval_managed &>]";
    v32 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v33 = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v18);
  }

  v6 = v5;
  if (!*(v5 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<void ()(caulk::mach::os_workgroup_interval_managed const&)>>(), (v5 = (*(v6 + 7))(4, v6 + 24, 0, buf)) == 0))
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
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v29 = 1024;
      v30 = 161;
      _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v27);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Invalid cast", &v19);
    std::runtime_error::runtime_error(&v20, &v19);
    std::runtime_error::runtime_error(&v21, &v20);
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = -1;
    v21.__vftable = &unk_1F5992170;
    v22 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v21);
    v31 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = void, Argument_Types = <const caulk::mach::os_workgroup_interval_managed &>]";
    v32 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v33 = 161;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v18);
  }

  v7 = *(v5 + 3);
  if (!v7)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  result = (*(*v7 + 48))(v7, a2);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE288958(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, std::runtime_error a22, char a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v25 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a23);
  std::runtime_error::~runtime_error(&a22);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (v24)
  {
    __cxa_free_exception(v23);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v25 - 129));
  _Unwind_Resume(a1);
}

uint64_t AMCP::Implementation::get_type_marker<caulk::mach::os_workgroup_interval_managed>()
{
  v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
  {
    v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
    if (v2)
    {
      AMCP::Implementation::get_type_marker<caulk::mach::os_workgroup_interval_managed>(void)::s_type_marker = AMCP::Implementation::generate_type_marker(MEMORY[0x1E69E3C10], v3);
      v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
    }
  }

  return *(v0 + 75);
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_setter<caulk::mach::os_workgroup_interval_managed>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_setter<caulk::mach::os_workgroup_interval_managed>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

double std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_setter<caulk::mach::os_workgroup_interval_managed>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_setter<caulk::mach::os_workgroup_interval_managed>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5961C68;
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(a2 + 8, a1 + 8);
  result = *(a1 + 48);
  *(a2 + 48) = result;
  *(a2 + 56) = *(a1 + 56);
  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_setter<caulk::mach::os_workgroup_interval_managed>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_setter<caulk::mach::os_workgroup_interval_managed>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::~__func(void *a1)
{
  *a1 = &unk_1F5961C68;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_setter<caulk::mach::os_workgroup_interval_managed>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_setter<caulk::mach::os_workgroup_interval_managed>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::~__func(void *a1)
{
  *a1 = &unk_1F5961C68;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));
  return a1;
}

uint64_t AMCP::Implementation::In_Place_Storage<std::function<void ()(caulk::mach::os_workgroup_interval_managed const&)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<void ()(caulk::mach::os_workgroup_interval_managed const&)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<void ()(caulk::mach::os_workgroup_interval_managed const&)>>())
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
      std::__function::__value_func<void ()(caulk::mach::os_workgroup_interval_managed const&)>::~__value_func[abi:ne200100](a2);
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
      std::__function::__value_func<void ()(caulk::mach::os_workgroup_interval_managed const&)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<void ()(caulk::mach::os_workgroup_interval_managed const&)>>::dispatch;
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
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<void ()(caulk::mach::os_workgroup_interval_managed const&)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_20,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_20>,void ()(caulk::mach::os_workgroup_interval_managed const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core14IOContext_Core11update_coreERNS_4Core13Operation_SetEE4$_20"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_20,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_20>,void ()(caulk::mach::os_workgroup_interval_managed const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v11[0] = MEMORY[0x1E69E3C18] + 16;
  v4 = caulk::mach::details::retain_os_object(*(a2 + 8), a2);
  v5 = *(a2 + 32);
  v12 = *(a2 + 16);
  *v13 = v5;
  *&v13[9] = *(a2 + 41);
  v11[0] = MEMORY[0x1E69E3C20] + 16;
  v11[1] = v4;
  v14 = *(a2 + 57);
  v6 = *(a1 + 8);
  v8 = caulk::mach::details::retain_os_object(v4, v7);
  v17 = v12;
  *v18 = *v13;
  *&v18[9] = *&v13[9];
  v15 = MEMORY[0x1E69E3C20] + 16;
  v16 = v8;
  v19 = v14;
  if ((v6 + 64) != &v15)
  {
    caulk::mach::details::holder::operator=((v6 + 72), &v16);
    v9 = *v18;
    *(v6 + 80) = v17;
    *(v6 + 96) = v9;
    *(v6 + 105) = *&v18[9];
    *(v6 + 121) = v19;
  }

  AMCP::IO_Core::IOContext_Core::maybe_enqueue_execution_context(v6);
  caulk::mach::os_workgroup_interval_managed::~os_workgroup_interval_managed(&v15);
  caulk::mach::os_workgroup_interval_managed::~os_workgroup_interval_managed(v11);
  v10 = *MEMORY[0x1E69E9840];
}

void sub_1DE288F94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a2)
  {
    caulk::mach::os_workgroup_interval_managed::~os_workgroup_interval_managed(&a18);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DE288F5CLL);
  }

  _Unwind_Resume(exception_object);
}

caulk::mach::details **caulk::mach::details::holder::operator=(caulk::mach::details **a1, caulk::mach::details **a2)
{
  if (a1 != a2)
  {
    caulk::mach::details::release_os_object(*a1, a2);
    *a1 = caulk::mach::details::retain_os_object(*a2, v4);
  }

  return a1;
}

void AMCP::IO_Core::IOContext_Core::maybe_enqueue_execution_context(AMCP::IO_Core::IOContext_Core *this)
{
  v13 = *MEMORY[0x1E69E9840];
  std::mutex::lock((this + 200));
  if (*(this + 16))
  {
    v2 = *(this + 20);
    if (v2)
    {
      if (caulk::concurrent::atomic_value<AMCP::IO_Core::Thread_Control_State::State,2,6>::load(*(v2 + 32)))
      {
        AMCP::IO_Core::IOContext_Core::create_execution_context(v12, this, v3, v4);
        v5 = caulk::concurrent::atomic_value<AMCP::IO_Core::Thread_Control_State::State,2,6>::load(*(*(this + 20) + 32));
        v6 = *(this + 18);
        v10.__vftable = 0;
        v10.__imp_.__imp_ = 0;
        AMCP::IO_Core::Play_State_Manager::get_state_snapshot(&__p, (*(this + 20) + 16));
        *&v9 = 0;
        *(&v9 + 1) = 1;
        AMCP::Graph::Manifest_Queue::enqueue_manifest(v6, &v10, v5, v5, &__p, v12, 2, v7, v9);
      }
    }
  }

  std::mutex::unlock((this + 200));
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1DE289338(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  AMCP::Graph::Manifest_Execution_Context::~Manifest_Execution_Context((v38 - 176));
  std::mutex::unlock((v37 + 200));
  _Unwind_Resume(a1);
}

void AMCP::IO_Core::IOContext_Core::create_execution_context(AMCP::IO_Core::IOContext_Core *this, uint64_t a2, double a3, double a4)
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 128);
  if (!v4)
  {
    v18 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v18 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(this);
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
      *buf = 136315650;
      v37 = "IOContext_Core.cpp";
      v38 = 1024;
      v39 = 593;
      v40 = 2080;
      v41 = "not (m_inventory)";
      _os_log_error_impl(&dword_1DE1F9000, v21, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v35);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v27);
    std::logic_error::logic_error(&v28, &v27);
    v28.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v29, &v28);
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = -1;
    v29.__vftable = &unk_1F5991430;
    v30 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v29);
    v42 = "Graph::Manifest_Execution_Context AMCP::IO_Core::IOContext_Core::create_execution_context()";
    v43 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/IOContext_Core.cpp";
    v44 = 593;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v26);
  }

  v8 = *(v4 + 96);
  v7 = *(v4 + 104);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (!v8)
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
      v25 = *v24;
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    else
    {
      v25 = *v24;
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v37 = "IOContext_Core.cpp";
      v38 = 1024;
      v39 = 594;
      v40 = 2080;
      v41 = "not (m_inventory->get_master_timebase())";
      _os_log_error_impl(&dword_1DE1F9000, v25, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v35);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v27);
    std::logic_error::logic_error(&v28, &v27);
    v28.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v29, &v28);
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = -1;
    v29.__vftable = &unk_1F5991430;
    v30 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v29);
    v42 = "Graph::Manifest_Execution_Context AMCP::IO_Core::IOContext_Core::create_execution_context()";
    v43 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/IOContext_Core.cpp";
    v44 = 594;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v26);
  }

  *this = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 1065353216;
  v9 = MEMORY[0x1E69E3C20] + 16;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 13) = 0;
  *(this + 6) = v9;
  *(this + 56) = 0;
  v10 = *(a2 + 608);
  LODWORD(a4) = *(a2 + 624);
  v11 = *&a4;
  v12 = round(v10);
  if (v12 < v11 || (LODWORD(v11) = *(a2 + 628), v11 = *&v11, v12 > v11))
  {
    v10 = v11;
  }

  v13 = *(*(a2 + 128) + 96);
  v14 = *(*(a2 + 128) + 104);
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
    v15 = *(this + 4);
    *this = 2;
    *(this + 1) = v10;
    *(this + 2) = 0;
    *(this + 24) = v13;
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }
  }

  else
  {
    *this = 2;
    *(this + 1) = v10;
    *(this + 2) = 0;
    *(this + 24) = v13;
  }

  *(this + 10) = *(a2 + 616);
  if ((this + 48) != (a2 + 64))
  {
    caulk::mach::details::holder::operator=(this + 7, (a2 + 72));
    v16 = *(a2 + 96);
    *(this + 4) = *(a2 + 80);
    *(this + 5) = v16;
    *(this + 89) = *(a2 + 105);
    *(this + 105) = *(a2 + 121);
  }

  *(this + 113) = *(a2 + 620);
  v17 = *MEMORY[0x1E69E9840];
}

void sub_1DE2899C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v28 - 128);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a27);
  MEMORY[0x1E12C0F00](&a25);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a11)
  {
    __cxa_free_exception(v27);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v28 - 129));
  _Unwind_Resume(a1);
}

void AMCP::Graph::Manifest_Execution_Context::~Manifest_Execution_Context(AMCP::Graph::Manifest_Execution_Context *this)
{
  caulk::mach::os_workgroup_interval_managed::~os_workgroup_interval_managed((this + 48));
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

uint64_t std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_20,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_20>,void ()(caulk::mach::os_workgroup_interval_managed const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5961BD8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<caulk::mach::os_workgroup_interval_managed>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<caulk::mach::os_workgroup_interval_managed>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities27add_generic_property_getterIN5caulk4mach29os_workgroup_interval_managedEEEvRNS0_9OperationEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<caulk::mach::os_workgroup_interval_managed>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<caulk::mach::os_workgroup_interval_managed>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::operator()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x1E69E9840];
  AMCP::Core::Operation::call_function<caulk::mach::os_workgroup_interval_managed>(v3, (a1 + 8));
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  AMCP::Implementation::Outboard_Storage<caulk::mach::os_workgroup_interval_managed>::construct<caulk::mach::os_workgroup_interval_managed&>(a2);
}

void sub_1DE289C04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  caulk::mach::os_workgroup_interval_managed::~os_workgroup_interval_managed(va);
  _Unwind_Resume(a1);
}

uint64_t AMCP::Core::Operation::call_function<caulk::mach::os_workgroup_interval_managed>(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = AMCP::Implementation::get_type_marker<std::function<caulk::mach::os_workgroup_interval_managed ()(void)>>();
  v4 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(a2, v3);
  if (!v4)
  {
    v13 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v13 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
    }

    v15 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v14 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = *v15;
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    else
    {
      v16 = *v15;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v28 = 1024;
      v29 = 154;
      _os_log_error_impl(&dword_1DE1F9000, v16, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v26);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Operation does not have requested function", &v18);
    std::runtime_error::runtime_error(&v19, &v18);
    std::runtime_error::runtime_error(&v20, &v19);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = -1;
    v20.__vftable = &unk_1F5992170;
    v21 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v20);
    v30 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = caulk::mach::os_workgroup_interval_managed, Argument_Types = <>]";
    v31 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v32 = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v17);
  }

  v5 = v4;
  if (!*(v4 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<caulk::mach::os_workgroup_interval_managed ()(void)>>(), (v4 = (*(v5 + 7))(4, v5 + 24, 0, buf)) == 0))
  {
    v9 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v9 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v4);
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
      *&buf[4] = "Operation.h";
      v28 = 1024;
      v29 = 161;
      _os_log_error_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v26);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Invalid cast", &v18);
    std::runtime_error::runtime_error(&v19, &v18);
    std::runtime_error::runtime_error(&v20, &v19);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = -1;
    v20.__vftable = &unk_1F5992170;
    v21 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v20);
    v30 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = caulk::mach::os_workgroup_interval_managed, Argument_Types = <>]";
    v31 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v32 = 161;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v17);
  }

  v6 = *(v4 + 3);
  if (!v6)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  result = (*(*v6 + 48))(v6);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE28A0B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, std::runtime_error a22, char a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v25 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a23);
  std::runtime_error::~runtime_error(&a22);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (v24)
  {
    __cxa_free_exception(v23);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v25 - 129));
  _Unwind_Resume(a1);
}

void AMCP::Implementation::Outboard_Storage<caulk::mach::os_workgroup_interval_managed>::construct<caulk::mach::os_workgroup_interval_managed&>(uint64_t a1)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = AMCP::Implementation::Outboard_Storage<caulk::mach::os_workgroup_interval_managed>::dispatch;
  operator new();
}

uint64_t AMCP::Implementation::Outboard_Storage<caulk::mach::os_workgroup_interval_managed>::dispatch(uint64_t result, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  if (result > 2)
  {
    if (result <= 4)
    {
      if (result == 3)
      {
        v10 = AMCP::Implementation::get_type_marker<caulk::mach::os_workgroup_interval_managed>();
        result = 0;
        *a4 = v10;
      }

      else if (*a4 == AMCP::Implementation::get_type_marker<caulk::mach::os_workgroup_interval_managed>())
      {
        result = *a2;
      }

      else
      {
        result = 0;
      }

      goto LABEL_44;
    }

    if (result == 5)
    {
      v11 = AMCP::Implementation::get_type_marker<caulk::mach::os_workgroup_interval_managed>();
      v12 = *(a2 + 32);
      *&v22[0] = 0;
      if (v12)
      {
        v12(3, a2, 0, v22);
        v12 = *&v22[0];
      }

      if (v12 != v11)
      {
        goto LABEL_30;
      }

      v13 = *(a3 + 4);
      v19[0] = 0;
      if (v13)
      {
        v13(3, a3, 0, v19);
        v13 = v19[0];
      }

      if (v13 == v11)
      {
        if (*(a2 + 32))
        {
          *&v22[0] = AMCP::Implementation::get_type_marker<caulk::mach::os_workgroup_interval_managed>();
          v14 = (*(a2 + 32))(4, a2, 0, v22);
        }

        else
        {
          v14 = 0;
        }

        if (*(a3 + 4))
        {
          *&v22[0] = AMCP::Implementation::get_type_marker<caulk::mach::os_workgroup_interval_managed>();
          v17 = (*(a3 + 4))(4, a3, 0, v22);
        }

        else
        {
          v17 = 0;
        }

        if (*(v14 + 8) != *(v17 + 8) || *(v14 + 56) != *(v17 + 56) || *(v14 + 57) != *(v17 + 57))
        {
          goto LABEL_43;
        }
      }

      else
      {
LABEL_30:
        AMCP::Thing::convert_to<caulk::mach::os_workgroup_interval_managed>(v22, a2);
        AMCP::Thing::convert_to<caulk::mach::os_workgroup_interval_managed>(v19, a3);
        if (*(&v22[0] + 1) != v19[1] || v24 != v20)
        {
          caulk::mach::os_workgroup_interval_managed::~os_workgroup_interval_managed(v19);
          caulk::mach::os_workgroup_interval_managed::~os_workgroup_interval_managed(v22);
          goto LABEL_43;
        }

        v15 = v25;
        v16 = v21;
        caulk::mach::os_workgroup_interval_managed::~os_workgroup_interval_managed(v19);
        caulk::mach::os_workgroup_interval_managed::~os_workgroup_interval_managed(v22);
        if (v15 != v16)
        {
          goto LABEL_43;
        }
      }

      result = 1;
      goto LABEL_44;
    }

    if (result != 6)
    {
      goto LABEL_44;
    }

    v23 = 0;
    memset(v22, 0, sizeof(v22));
    AMCP::swap(v22, a3, a3);
    if (v23)
    {
      v23(0, v22, 0, 0);
    }

LABEL_43:
    result = 0;
    goto LABEL_44;
  }

  if (result)
  {
    if (result == 1)
    {
      AMCP::Implementation::Outboard_Storage<caulk::mach::os_workgroup_interval_managed>::construct<caulk::mach::os_workgroup_interval_managed&>(a3, *a2);
      goto LABEL_43;
    }

    if (result != 2)
    {
      goto LABEL_44;
    }

    v7 = *a2;
    *a2 = 0;
    v8 = *a3;
    *a3 = v7;
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    *(a3 + 4) = AMCP::Implementation::Outboard_Storage<caulk::mach::os_workgroup_interval_managed>::dispatch;
  }

  v9 = *a2;
  *a2 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  result = 0;
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
LABEL_44:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<caulk::mach::os_workgroup_interval_managed>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<caulk::mach::os_workgroup_interval_managed>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

double std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<caulk::mach::os_workgroup_interval_managed>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<caulk::mach::os_workgroup_interval_managed>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5961B58;
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(a2 + 8, a1 + 8);
  result = *(a1 + 48);
  *(a2 + 48) = result;
  *(a2 + 56) = *(a1 + 56);
  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<caulk::mach::os_workgroup_interval_managed>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<caulk::mach::os_workgroup_interval_managed>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5961B58;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<caulk::mach::os_workgroup_interval_managed>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<caulk::mach::os_workgroup_interval_managed>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5961B58;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));
  return a1;
}

uint64_t AMCP::Implementation::In_Place_Storage<std::function<caulk::mach::os_workgroup_interval_managed ()(void)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<caulk::mach::os_workgroup_interval_managed ()(void)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<caulk::mach::os_workgroup_interval_managed ()(void)>>())
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
      std::__function::__value_func<caulk::mach::os_workgroup_interval_managed ()(void)>::~__value_func[abi:ne200100](a2);
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
      std::__function::__value_func<caulk::mach::os_workgroup_interval_managed ()(void)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<caulk::mach::os_workgroup_interval_managed ()(void)>>::dispatch;
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
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<caulk::mach::os_workgroup_interval_managed ()(void)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_19,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_19>,caulk::mach::os_workgroup_interval_managed ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core14IOContext_Core11update_coreERNS_4Core13Operation_SetEE4$_19"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_19,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_19>,caulk::mach::os_workgroup_interval_managed ()(void)>::operator()@<Q0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 8);
  *a3 = MEMORY[0x1E69E3C18] + 16;
  *(a3 + 8) = caulk::mach::details::retain_os_object(*(v4 + 72), a2);
  result = *(v4 + 105);
  v6 = *(v4 + 96);
  *(a3 + 16) = *(v4 + 80);
  *(a3 + 32) = v6;
  *(a3 + 41) = result;
  *a3 = MEMORY[0x1E69E3C20] + 16;
  *(a3 + 57) = *(v4 + 121);
  return result;
}

uint64_t std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_19,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_19>,caulk::mach::os_workgroup_interval_managed ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5961AC8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_18,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_18>,unsigned int ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core14IOContext_Core11update_coreERNS_4Core13Operation_SetEE4$_18"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

std::__shared_weak_count *std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_18,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_18>,unsigned int ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(v1 + 24);
  if (v2)
  {
    v3 = *(v1 + 16);
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v4 = std::__shared_weak_count::lock(v2);
    std::__shared_weak_count::__release_weak(v2);
    if (v4)
    {
      if (v3)
      {
        v2 = *(v3 + 168);
      }

      else
      {
        v2 = 0;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_18,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_18>,unsigned int ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5961A48;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_17,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_17>,unsigned int ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core14IOContext_Core11update_coreERNS_4Core13Operation_SetEE4$_17"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

std::__shared_weak_count *std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_17,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_17>,unsigned int ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(v1 + 24);
  if (v2)
  {
    v3 = *(v1 + 16);
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v4 = std::__shared_weak_count::lock(v2);
    std::__shared_weak_count::__release_weak(v2);
    if (v4)
    {
      if (v3)
      {
        v2 = *(v3 + 164);
      }

      else
      {
        v2 = 0;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_17,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_17>,unsigned int ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F59619C8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<double>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<double>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities27add_generic_property_getterIdEEvRNS0_9OperationEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<double>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<double>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::operator()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = AMCP::Core::Operation::call_function<double>((a1 + 8));
  a2[2] = 0;
  a2[3] = 0;
  a2[1] = 0;
  *a2 = v4;
  a2[4] = AMCP::Implementation::In_Place_Storage<double>::dispatch;
  return result;
}

uint64_t AMCP::Core::Operation::call_function<double>(void *a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = AMCP::Implementation::get_type_marker<std::function<double ()(void)>>();
  v3 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(a1, v2);
  if (!v3)
  {
    v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v12 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
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
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v27 = 1024;
      v28 = 154;
      _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v25);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Operation does not have requested function", &v17);
    std::runtime_error::runtime_error(&v18, &v17);
    std::runtime_error::runtime_error(&v19, &v18);
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = -1;
    v19.__vftable = &unk_1F5992170;
    v20 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v19);
    v29 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = double, Argument_Types = <>]";
    v30 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v31 = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v16);
  }

  v4 = v3;
  if (!*(v3 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<double ()(void)>>(), (v3 = (*(v4 + 7))(4, v4 + 24, 0, buf)) == 0))
  {
    v8 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v8 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v3);
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
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v27 = 1024;
      v28 = 161;
      _os_log_error_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v25);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Invalid cast", &v17);
    std::runtime_error::runtime_error(&v18, &v17);
    std::runtime_error::runtime_error(&v19, &v18);
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = -1;
    v19.__vftable = &unk_1F5992170;
    v20 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v19);
    v29 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = double, Argument_Types = <>]";
    v30 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v31 = 161;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v16);
  }

  v5 = *(v3 + 3);
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  result = (*(*v5 + 48))(v5);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE28B244(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, std::runtime_error a22, char a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v25 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a23);
  std::runtime_error::~runtime_error(&a22);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (v24)
  {
    __cxa_free_exception(v23);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v25 - 129));
  _Unwind_Resume(a1);
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<double>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<double>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

double std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<double>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<double>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5980208;
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(a2 + 8, a1 + 8);
  result = *(a1 + 48);
  *(a2 + 48) = result;
  *(a2 + 56) = *(a1 + 56);
  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<double>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<double>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5980208;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<double>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<double>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5980208;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));
  return a1;
}

uint64_t AMCP::Implementation::In_Place_Storage<std::function<double ()(void)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<double ()(void)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<double ()(void)>>())
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
      std::__function::__value_func<double ()(void)>::~__value_func[abi:ne200100](a2);
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
      std::__function::__value_func<double ()(void)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<double ()(void)>>::dispatch;
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
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<double ()(void)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_16,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_16>,double ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core14IOContext_Core11update_coreERNS_4Core13Operation_SetEE4$_16"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double AMCP::IO_Core::IOContext_Core::get_actual_sample_rate(AMCP::IO_Core::IOContext_Core *this)
{
  v34 = *MEMORY[0x1E69E9840];
  v1 = *(this + 16);
  if (!v1)
  {
    v8 = 0.0;
    goto LABEL_12;
  }

  v4 = *(v1 + 96);
  v3 = *(v1 + 104);
  if (!v3)
  {
    if (v4)
    {
      v6 = 0;
      goto LABEL_9;
    }

LABEL_13:
    v11 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v11 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v3);
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
      v26 = "IOContext_Core.cpp";
      v27 = 1024;
      v28 = 874;
      v29 = 2080;
      v30 = "not (m_inventory->get_master_timebase())";
      _os_log_error_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v24);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v16);
    std::logic_error::logic_error(&v17, &v16);
    v17.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v18, &v17);
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = -1;
    v18.__vftable = &unk_1F5991430;
    v19 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v18);
    v31 = "Sample_Rate AMCP::IO_Core::IOContext_Core::get_actual_sample_rate() const";
    v32 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/IOContext_Core.cpp";
    v33 = 874;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v15);
  }

  atomic_fetch_add_explicit(v3 + 1, 1uLL, memory_order_relaxed);
  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  if (!v4)
  {
    goto LABEL_13;
  }

  v5 = *(this + 16);
  v4 = *(v5 + 96);
  v6 = *(v5 + 104);
  if (v6)
  {
    v7 = 0;
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    goto LABEL_10;
  }

LABEL_9:
  v7 = 1;
LABEL_10:
  v8 = (*(*v4 + 152))(v4);
  if ((v7 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

LABEL_12:
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

void sub_1DE28B9BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, char a26)
{
  v28 = v26;
  if ((v28 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_16,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_16>,double ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5961948;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_setter<float>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_setter<float>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities27add_generic_property_setterIfEEvRNS0_9OperationEEUlRKNS_5ThingEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t AMCP::Core::Operation::call_function<void,float const&>(void *a1, uint64_t a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = AMCP::Implementation::get_type_marker<std::function<void ()(float const&)>>();
  v5 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(a1, v4);
  if (!v5)
  {
    v14 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v14 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
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
      v29 = 1024;
      v30 = 154;
      _os_log_error_impl(&dword_1DE1F9000, v17, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v27);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Operation does not have requested function", &v19);
    std::runtime_error::runtime_error(&v20, &v19);
    std::runtime_error::runtime_error(&v21, &v20);
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = -1;
    v21.__vftable = &unk_1F5992170;
    v22 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v21);
    v31 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = void, Argument_Types = <const float &>]";
    v32 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v33 = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v18);
  }

  v6 = v5;
  if (!*(v5 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<void ()(float const&)>>(), (v5 = (*(v6 + 7))(4, v6 + 24, 0, buf)) == 0))
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
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v29 = 1024;
      v30 = 161;
      _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v27);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Invalid cast", &v19);
    std::runtime_error::runtime_error(&v20, &v19);
    std::runtime_error::runtime_error(&v21, &v20);
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = -1;
    v21.__vftable = &unk_1F5992170;
    v22 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v21);
    v31 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = void, Argument_Types = <const float &>]";
    v32 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v33 = 161;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v18);
  }

  v7 = *(v5 + 3);
  if (!v7)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  result = (*(*v7 + 48))(v7, a2);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE28C01C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, std::runtime_error a22, char a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v25 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a23);
  std::runtime_error::~runtime_error(&a22);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (v24)
  {
    __cxa_free_exception(v23);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v25 - 129));
  _Unwind_Resume(a1);
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_setter<float>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_setter<float>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

double std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_setter<float>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_setter<float>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F598A008;
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(a2 + 8, a1 + 8);
  result = *(a1 + 48);
  *(a2 + 48) = result;
  *(a2 + 56) = *(a1 + 56);
  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_setter<float>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_setter<float>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::~__func(void *a1)
{
  *a1 = &unk_1F598A008;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_setter<float>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_setter<float>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::~__func(void *a1)
{
  *a1 = &unk_1F598A008;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));
  return a1;
}

uint64_t AMCP::Implementation::In_Place_Storage<std::function<void ()(float const&)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<void ()(float const&)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<void ()(float const&)>>())
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
      std::__function::__value_func<void ()(float const&)>::~__value_func[abi:ne200100](a2);
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
      std::__function::__value_func<void ()(float const&)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<void ()(float const&)>>::dispatch;
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
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<void ()(float const&)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_15,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_15>,void ()(float const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core14IOContext_Core11update_coreERNS_4Core13Operation_SetEE4$_15"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_15,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_15>,void ()(float const&)>::operator()(AMCP::Log::AMCP_Scope_Registry *a1, float *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  if (*a2 < 0.0 || v2 > 1.0)
  {
    v6 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v6 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v8 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v7 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      v9 = *v8;
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    else
    {
      v9 = *v8;
    }

    v10 = v2;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v22 = "IOContext_Core.cpp";
      v23 = 1024;
      v24 = 831;
      v25 = 2080;
      v26 = "not (cycle_usage >= 0 and cycle_usage <= 1.0)";
      v27 = 2048;
      *v28 = v10;
      _os_log_error_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Invalid cycle usage: %f", buf, 0x26u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v20);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Invalid cycle usage: %f", &v12, *&v10);
    std::logic_error::logic_error(&v13, &v12);
    v13.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v14, &v13);
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = -1;
    v14.__vftable = &unk_1F5991430;
    v15 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v14);
    *&v28[2] = "void AMCP::IO_Core::IOContext_Core::set_cycle_usage(float)";
    v29 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/IOContext_Core.cpp";
    v30 = 831;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(v11);
  }

  v4 = *(a1 + 1);
  v4[154] = v2;
  AMCP::IO_Core::IOContext_Core::maybe_enqueue_execution_context(v4);
  v5 = *MEMORY[0x1E69E9840];
}

uint64_t std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_15,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_15>,void ()(float const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F59618C8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<float>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<float>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities27add_generic_property_getterIfEEvRNS0_9OperationEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<float>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<float>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::operator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = AMCP::Core::Operation::call_function<float>((a1 + 8));
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *a2 = v4;
  *(a2 + 32) = AMCP::Implementation::In_Place_Storage<float>::dispatch;
  return result;
}

uint64_t AMCP::Core::Operation::call_function<float>(void *a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = AMCP::Implementation::get_type_marker<std::function<float ()(void)>>();
  v3 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(a1, v2);
  if (!v3)
  {
    v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v12 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
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
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v27 = 1024;
      v28 = 154;
      _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v25);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Operation does not have requested function", &v17);
    std::runtime_error::runtime_error(&v18, &v17);
    std::runtime_error::runtime_error(&v19, &v18);
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = -1;
    v19.__vftable = &unk_1F5992170;
    v20 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v19);
    v29 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = float, Argument_Types = <>]";
    v30 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v31 = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v16);
  }

  v4 = v3;
  if (!*(v3 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<float ()(void)>>(), (v3 = (*(v4 + 7))(4, v4 + 24, 0, buf)) == 0))
  {
    v8 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v8 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v3);
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
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v27 = 1024;
      v28 = 161;
      _os_log_error_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v25);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Invalid cast", &v17);
    std::runtime_error::runtime_error(&v18, &v17);
    std::runtime_error::runtime_error(&v19, &v18);
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = -1;
    v19.__vftable = &unk_1F5992170;
    v20 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v19);
    v29 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = float, Argument_Types = <>]";
    v30 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v31 = 161;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v16);
  }

  v5 = *(v3 + 3);
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  result = (*(*v5 + 48))(v5);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE28CDD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, std::runtime_error a22, char a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v25 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a23);
  std::runtime_error::~runtime_error(&a22);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (v24)
  {
    __cxa_free_exception(v23);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v25 - 129));
  _Unwind_Resume(a1);
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<float>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<float>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

double std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<float>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<float>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5989E88;
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(a2 + 8, a1 + 8);
  result = *(a1 + 48);
  *(a2 + 48) = result;
  *(a2 + 56) = *(a1 + 56);
  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<float>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<float>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5989E88;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<float>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<float>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5989E88;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));
  return a1;
}

uint64_t AMCP::Implementation::In_Place_Storage<std::function<float ()(void)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<float ()(void)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<float ()(void)>>())
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
      std::__function::__value_func<float ()(void)>::~__value_func[abi:ne200100](a2);
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
      std::__function::__value_func<float ()(void)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<float ()(void)>>::dispatch;
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
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<float ()(void)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_14,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_14>,float ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core14IOContext_Core11update_coreERNS_4Core13Operation_SetEE4$_14"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_14,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_14>,float ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5961848;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<std::tuple<unsigned int,unsigned int>>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<std::tuple<unsigned int,unsigned int>>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities27add_generic_property_getterINSt3__15tupleIJjjEEEEEvRNS0_9OperationEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<std::tuple<unsigned int,unsigned int>>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<std::tuple<unsigned int,unsigned int>>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::operator()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = AMCP::Core::Operation::call_function<std::tuple<unsigned int,unsigned int>>((a1 + 8));
  a2[2] = 0;
  a2[3] = 0;
  a2[1] = 0;
  *a2 = result;
  a2[4] = AMCP::Implementation::In_Place_Storage<std::tuple<unsigned int,unsigned int>>::dispatch;
  return result;
}

uint64_t AMCP::Core::Operation::call_function<std::tuple<unsigned int,unsigned int>>(void *a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = AMCP::Implementation::get_type_marker<std::function<std::tuple<unsigned int,unsigned int> ()(void)>>();
  v3 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(a1, v2);
  if (!v3)
  {
    v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v12 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
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
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v27 = 1024;
      v28 = 154;
      _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v25);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Operation does not have requested function", &v17);
    std::runtime_error::runtime_error(&v18, &v17);
    std::runtime_error::runtime_error(&v19, &v18);
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = -1;
    v19.__vftable = &unk_1F5992170;
    v20 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v19);
    v29 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = std::tuple<unsigned int, unsigned int>, Argument_Types = <>]";
    v30 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v31 = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v16);
  }

  v4 = v3;
  if (!*(v3 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<std::tuple<unsigned int,unsigned int> ()(void)>>(), (v3 = (*(v4 + 7))(4, v4 + 24, 0, buf)) == 0))
  {
    v8 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v8 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v3);
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
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v27 = 1024;
      v28 = 161;
      _os_log_error_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v25);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Invalid cast", &v17);
    std::runtime_error::runtime_error(&v18, &v17);
    std::runtime_error::runtime_error(&v19, &v18);
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = -1;
    v19.__vftable = &unk_1F5992170;
    v20 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v19);
    v29 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = std::tuple<unsigned int, unsigned int>, Argument_Types = <>]";
    v30 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v31 = 161;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v16);
  }

  v5 = *(v3 + 3);
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  result = (*(*v5 + 48))(v5);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE28D7FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, std::runtime_error a22, char a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v25 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a23);
  std::runtime_error::~runtime_error(&a22);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (v24)
  {
    __cxa_free_exception(v23);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v25 - 129));
  _Unwind_Resume(a1);
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<std::tuple<unsigned int,unsigned int>>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<std::tuple<unsigned int,unsigned int>>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

double std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<std::tuple<unsigned int,unsigned int>>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<std::tuple<unsigned int,unsigned int>>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5989C80;
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(a2 + 8, a1 + 8);
  result = *(a1 + 48);
  *(a2 + 48) = result;
  *(a2 + 56) = *(a1 + 56);
  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<std::tuple<unsigned int,unsigned int>>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<std::tuple<unsigned int,unsigned int>>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5989C80;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<std::tuple<unsigned int,unsigned int>>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<std::tuple<unsigned int,unsigned int>>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5989C80;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));
  return a1;
}

uint64_t AMCP::Implementation::In_Place_Storage<std::function<std::tuple<unsigned int,unsigned int> ()(void)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<std::tuple<unsigned int,unsigned int> ()(void)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<std::tuple<unsigned int,unsigned int> ()(void)>>())
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
      std::__function::__value_func<std::tuple<unsigned int,unsigned int> ()(void)>::~__value_func[abi:ne200100](a2);
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
      std::__function::__value_func<std::tuple<unsigned int,unsigned int> ()(void)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<std::tuple<unsigned int,unsigned int> ()(void)>>::dispatch;
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
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<std::tuple<unsigned int,unsigned int> ()(void)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_13,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_13>,std::tuple<unsigned int,unsigned int> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core14IOContext_Core11update_coreERNS_4Core13Operation_SetEE4$_13"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_13,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_13>,std::tuple<unsigned int,unsigned int> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F59617C8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_setter<unsigned int>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_setter<unsigned int>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities27add_generic_property_setterIjEEvRNS0_9OperationEEUlRKNS_5ThingEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t AMCP::Core::Operation::call_function<void,unsigned int const&>(void *a1, uint64_t a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = AMCP::Implementation::get_type_marker<std::function<void ()(unsigned int const&)>>();
  v5 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(a1, v4);
  if (!v5)
  {
    v14 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v14 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
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
      v29 = 1024;
      v30 = 154;
      _os_log_error_impl(&dword_1DE1F9000, v17, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v27);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Operation does not have requested function", &v19);
    std::runtime_error::runtime_error(&v20, &v19);
    std::runtime_error::runtime_error(&v21, &v20);
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = -1;
    v21.__vftable = &unk_1F5992170;
    v22 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v21);
    v31 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = void, Argument_Types = <const unsigned int &>]";
    v32 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v33 = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v18);
  }

  v6 = v5;
  if (!*(v5 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<void ()(unsigned int const&)>>(), (v5 = (*(v6 + 7))(4, v6 + 24, 0, buf)) == 0))
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
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v29 = 1024;
      v30 = 161;
      _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v27);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Invalid cast", &v19);
    std::runtime_error::runtime_error(&v20, &v19);
    std::runtime_error::runtime_error(&v21, &v20);
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = -1;
    v21.__vftable = &unk_1F5992170;
    v22 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v21);
    v31 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = void, Argument_Types = <const unsigned int &>]";
    v32 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v33 = 161;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v18);
  }

  v7 = *(v5 + 3);
  if (!v7)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  result = (*(*v7 + 48))(v7, a2);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE28E228(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, std::runtime_error a22, char a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v25 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a23);
  std::runtime_error::~runtime_error(&a22);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (v24)
  {
    __cxa_free_exception(v23);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v25 - 129));
  _Unwind_Resume(a1);
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_setter<unsigned int>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_setter<unsigned int>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

double std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_setter<unsigned int>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_setter<unsigned int>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F59899F8;
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(a2 + 8, a1 + 8);
  result = *(a1 + 48);
  *(a2 + 48) = result;
  *(a2 + 56) = *(a1 + 56);
  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_setter<unsigned int>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_setter<unsigned int>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::~__func(void *a1)
{
  *a1 = &unk_1F59899F8;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_setter<unsigned int>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_setter<unsigned int>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::~__func(void *a1)
{
  *a1 = &unk_1F59899F8;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));
  return a1;
}