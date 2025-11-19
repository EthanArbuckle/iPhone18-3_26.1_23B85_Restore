void sub_1DDD79AAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<__CFString const*>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1DDD79D28(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t applesauce::CF::details::find_at_key<BOOL,__CFString const* const&>(const __CFDictionary *a1, const void *a2)
{
  v2 = applesauce::CF::details::at_key<__CFString const* const&>(a1, a2);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::not_found(exception);
  }

  return applesauce::CF::convert_to<BOOL,0>(v2);
}

void AUSM::Properties::createFullPropertyDictionary(AUSM::Properties *this@<X0>, CFMutableDictionaryRef *a2@<X8>)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  cf[1] = Mutable;
  v5 = *(this + 5);
  v6 = this + 48;
  if (v5 != this + 48)
  {
    while (1)
    {
      (*(**(v5 + 5) + 88))(cf);
      if (cf[0])
      {
        break;
      }

LABEL_18:
      v10 = *(v5 + 1);
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = *(v5 + 2);
          v12 = *v11 == v5;
          v5 = v11;
        }

        while (!v12);
      }

      v5 = v11;
      if (v11 == v6)
      {
        goto LABEL_27;
      }
    }

    v7 = CFGetTypeID(cf[0]);
    if (v7 == CFURLGetTypeID())
    {
LABEL_16:
      if (cf[0])
      {
        CFRelease(cf[0]);
      }

      goto LABEL_18;
    }

    std::to_string(&__p, *(v5 + 8));
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if (p_p)
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      p_p = CFStringCreateWithBytes(0, p_p, size, 0x8000100u, 0);
      key = p_p;
      if (!p_p)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }

      if ((*(&__p.__r_.__value_.__s + 23) & 0x80) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      key = 0;
      if ((*(&__p.__r_.__value_.__s + 23) & 0x80) == 0)
      {
LABEL_14:
        CFDictionaryAddValue(Mutable, p_p, cf[0]);
        if (key)
        {
          CFRelease(key);
        }

        goto LABEL_16;
      }
    }

    operator delete(__p.__r_.__value_.__l.__data_);
    p_p = key;
    goto LABEL_14;
  }

LABEL_27:
  if (Mutable)
  {
    CFRetain(Mutable);
    v13 = CFGetTypeID(Mutable);
    if (v13 == CFDictionaryGetTypeID())
    {
      *a2 = Mutable;
    }

    else
    {
      *a2 = 0;
      CFRelease(Mutable);
    }

    CFRelease(Mutable);
  }

  else
  {
    *a2 = 0;
  }
}

void sub_1DDD79FE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, const void *a15, const void *a16, const void *a17)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  applesauce::CF::TypeRef::~TypeRef(&a16);
  applesauce::CF::ObjectRef<__CFDictionary *>::~ObjectRef(&a17);
  _Unwind_Resume(a1);
}

void AUSM::Properties::createPropertyDictionaryForSaveState(AUSM::Properties *this@<X0>, CFMutableDictionaryRef *a2@<X8>)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  cf[1] = Mutable;
  v5 = *(this + 5);
  if (v5 == (this + 48))
  {
    goto LABEL_34;
  }

  v6 = 0;
  do
  {
    v7 = *(v5 + 5);
    if (v7[16] != 1)
    {
      goto LABEL_21;
    }

    (*(*v7 + 88))(cf);
    if (!cf[0])
    {
      goto LABEL_21;
    }

    v8 = CFGetTypeID(cf[0]);
    if (v8 != CFURLGetTypeID())
    {
      std::to_string(&__p, *(v5 + 8));
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if (p_p)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = __p.__r_.__value_.__l.__size_;
        }

        p_p = CFStringCreateWithBytes(0, p_p, size, 0x8000100u, 0);
        key = p_p;
        if (!p_p)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
        }

        if ((*(&__p.__r_.__value_.__s + 23) & 0x80) == 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        key = 0;
        if ((*(&__p.__r_.__value_.__s + 23) & 0x80) == 0)
        {
          goto LABEL_16;
        }
      }

      operator delete(__p.__r_.__value_.__l.__data_);
      p_p = key;
LABEL_16:
      CFDictionaryAddValue(Mutable, p_p, cf[0]);
      if (key)
      {
        CFRelease(key);
      }

      v6 = 1;
    }

    if (cf[0])
    {
      CFRelease(cf[0]);
    }

LABEL_21:
    v11 = *(v5 + 1);
    if (v11)
    {
      do
      {
        v12 = v11;
        v11 = *v11;
      }

      while (v11);
    }

    else
    {
      do
      {
        v12 = *(v5 + 2);
        v13 = *v12 == v5;
        v5 = v12;
      }

      while (!v13);
    }

    v5 = v12;
  }

  while (v12 != (this + 48));
  if (((*(this + 8) == 1) & v6) != 0)
  {
    LODWORD(cf[0]) = *(this + 9);
    v14 = CFNumberCreate(0, kCFNumberIntType, cf);
    __p.__r_.__value_.__r.__words[0] = v14;
    if (!v14)
    {
      v17 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v17, "Could not construct");
    }

    CFDictionaryAddValue(Mutable, @"ElementNumber", v14);
    if (__p.__r_.__value_.__r.__words[0])
    {
      CFRelease(__p.__r_.__value_.__l.__data_);
    }
  }

LABEL_34:
  if (Mutable)
  {
    CFRetain(Mutable);
    v15 = CFGetTypeID(Mutable);
    if (v15 == CFDictionaryGetTypeID())
    {
      *a2 = Mutable;
    }

    else
    {
      *a2 = 0;
      CFRelease(Mutable);
    }

    CFRelease(Mutable);
  }

  else
  {
    *a2 = 0;
  }
}

void sub_1DDD7A31C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, int a20, const void *a21)
{
  applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(&__p);
  applesauce::CF::ObjectRef<__CFDictionary *>::~ObjectRef(&a21);
  _Unwind_Resume(a1);
}

uint64_t AUSM::Properties::setProperty(AUSM::Properties *this, uint64_t a2, CFTypeRef *a3, uint64_t a4, uint64_t a5)
{
  *&v97[5] = *MEMORY[0x1E69E9840];
  if (a2 == 5000)
  {
    if (a4 == 8)
    {
      v9 = *a3;
      if (*a3 && (CFRetain(*a3), v10 = CFGetTypeID(v9), v10 != CFDictionaryGetTypeID()))
      {
        *cf = 0;
        CFRelease(v9);
      }

      else
      {
        *cf = v9;
      }

      v17 = (*(*this + 40))(this, cf, a5);
      if (*cf)
      {
        CFRelease(*cf);
      }

      return v17;
    }

    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v18 = getAUSMV2Log(void)::gLog;
    if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      return 4294956445;
    }

    v46 = (this + 8);
    if (*(this + 31) < 0)
    {
      v46 = *v46;
    }

    v47 = *(this + 8);
    v48 = *(this + 9);
    *cf = 136316162;
    *&cf[4] = v46;
    v91 = 1024;
    v92 = v47;
    v93 = 1024;
    v94 = v48;
    v95 = 1024;
    *v96 = a4;
    *&v96[4] = 1024;
    *&v96[6] = 8;
    v49 = "[%s|setProperty] (scope=%u, element=%u): spatial mixer property dictionary: invalid size %u, expected %u";
    v50 = v18;
    v51 = 36;
LABEL_85:
    _os_log_error_impl(&dword_1DDB85000, v50, OS_LOG_TYPE_ERROR, v49, cf, v51);
    return 4294956445;
  }

  v11 = *(this + 6);
  if (!v11)
  {
    return 4294956417;
  }

  v13 = this + 48;
  do
  {
    v14 = *(v11 + 8);
    v15 = v14 >= a2;
    v16 = v14 < a2;
    if (v15)
    {
      v13 = v11;
    }

    v11 = *&v11[8 * v16];
  }

  while (v11);
  if (v13 == this + 48 || *(v13 + 8) > a2)
  {
    return 4294956417;
  }

  v19 = *(v13 + 5);
  v20 = (*(**(this + 8) + 8))(*(this + 8));
  v21 = (*(*v19 + 32))(v19, a3, a4, v20);
  v17 = 0;
  if (v21 <= 3)
  {
    if (v21 > 1)
    {
      if (v21 != 2)
      {
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v31 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEFAULT))
        {
          v32 = (this + 8);
          if (*(this + 31) < 0)
          {
            v32 = *v32;
          }

          v34 = *(this + 8);
          v33 = *(this + 9);
          v35 = (*(**(v13 + 5) + 80))(*(v13 + 5));
          if (*(v35 + 23) >= 0)
          {
            v36 = v35;
          }

          else
          {
            v36 = *v35;
          }

          *cf = 136315906;
          *&cf[4] = v32;
          v91 = 1024;
          v92 = v34;
          v93 = 1024;
          v94 = v33;
          v95 = 2080;
          *v96 = v36;
          _os_log_impl(&dword_1DDB85000, v31, OS_LOG_TYPE_DEFAULT, "[%s|setProperty] (scope=%u, element=%u): %s value out of range", cf, 0x22u);
        }

        return 4294956445;
      }
    }

    else if (v21)
    {
      if (v21 == 1)
      {
        if (*(*(v13 + 5) + 12) <= 2u)
        {
          if (getAUSMV2Log(void)::onceToken != -1)
          {
            dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
          }

          v24 = getAUSMV2Log(void)::gLog;
          if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEFAULT))
          {
            v25 = (this + 8);
            if (*(this + 31) < 0)
            {
              v25 = *v25;
            }

            v27 = *(this + 8);
            v26 = *(this + 9);
            v28 = (*(**(v13 + 5) + 80))(*(v13 + 5));
            if (*(v28 + 23) >= 0)
            {
              v29 = v28;
            }

            else
            {
              v29 = *v28;
            }

            (*(**(v13 + 5) + 96))(__p);
            if (v89 >= 0)
            {
              v30 = __p;
            }

            else
            {
              v30 = __p[0];
            }

            *cf = 136316162;
            *&cf[4] = v25;
            v91 = 1024;
            v92 = v27;
            v93 = 1024;
            v94 = v26;
            v95 = 2080;
            *v96 = v29;
            *&v96[8] = 2080;
            *v97 = v30;
            _os_log_impl(&dword_1DDB85000, v24, OS_LOG_TYPE_DEFAULT, "[%s|setProperty] (scope=%u, element=%u): %s = %s", cf, 0x2Cu);
            if (v89 < 0)
            {
              operator delete(__p[0]);
            }
          }
        }

        return (***(this + 8))(*(this + 8), a2);
      }

      return v17;
    }

    if ((a5 & 1) == 0)
    {
      v38 = *(*(v13 + 5) + 12);
      if (v38 == 1)
      {
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v66 = getAUSMV2Log(void)::gLog;
        if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
        {
          return 0;
        }

        v82 = (this + 8);
        if (*(this + 31) < 0)
        {
          v82 = *v82;
        }

        v84 = *(this + 8);
        v83 = *(this + 9);
        v85 = (*(**(v13 + 5) + 80))(*(v13 + 5));
        if (*(v85 + 23) >= 0)
        {
          v86 = v85;
        }

        else
        {
          v86 = *v85;
        }

        (*(**(v13 + 5) + 96))(__p);
        if (v89 >= 0)
        {
          v87 = __p;
        }

        else
        {
          v87 = __p[0];
        }

        *cf = 136316162;
        *&cf[4] = v82;
        v91 = 1024;
        v92 = v84;
        v93 = 1024;
        v94 = v83;
        v95 = 2080;
        *v96 = v86;
        *&v96[8] = 2080;
        *v97 = v87;
        _os_log_debug_impl(&dword_1DDB85000, v66, OS_LOG_TYPE_DEBUG, "[%s|setProperty] (scope=%u, element=%u): %s = %s (not changed)", cf, 0x2Cu);
      }

      else
      {
        if (v38)
        {
          return 0;
        }

        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v39 = getAUSMV2Log(void)::gLog;
        if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEFAULT))
        {
          return 0;
        }

        v40 = (this + 8);
        if (*(this + 31) < 0)
        {
          v40 = *v40;
        }

        v42 = *(this + 8);
        v41 = *(this + 9);
        v43 = (*(**(v13 + 5) + 80))(*(v13 + 5));
        if (*(v43 + 23) >= 0)
        {
          v44 = v43;
        }

        else
        {
          v44 = *v43;
        }

        (*(**(v13 + 5) + 96))(__p);
        if (v89 >= 0)
        {
          v45 = __p;
        }

        else
        {
          v45 = __p[0];
        }

        *cf = 136316162;
        *&cf[4] = v40;
        v91 = 1024;
        v92 = v42;
        v93 = 1024;
        v94 = v41;
        v95 = 2080;
        *v96 = v44;
        *&v96[8] = 2080;
        *v97 = v45;
        _os_log_impl(&dword_1DDB85000, v39, OS_LOG_TYPE_DEFAULT, "[%s|setProperty] (scope=%u, element=%u): %s = %s (not changed)", cf, 0x2Cu);
      }

      if (v89 < 0)
      {
        operator delete(__p[0]);
      }
    }

    return 0;
  }

  if (v21 <= 5)
  {
    if (v21 == 4)
    {
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v53 = getAUSMV2Log(void)::gLog;
      if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
      {
        return 4294956445;
      }

      v54 = (this + 8);
      if (*(this + 31) < 0)
      {
        v54 = *v54;
      }

      v56 = *(this + 8);
      v55 = *(this + 9);
      v57 = (*(**(v13 + 5) + 80))(*(v13 + 5));
      if (*(v57 + 23) >= 0)
      {
        v58 = v57;
      }

      else
      {
        v58 = *v57;
      }

      v59 = (*(**(v13 + 5) + 16))(*(v13 + 5));
      *cf = 136316418;
      *&cf[4] = v54;
      v91 = 1024;
      v92 = v56;
      v93 = 1024;
      v94 = v55;
      v95 = 2080;
      *v96 = v58;
      *&v96[8] = 1024;
      v97[0] = a4;
      LOWORD(v97[1]) = 1024;
      *(&v97[1] + 2) = v59;
      v49 = "[%s|setProperty] (scope=%u, element=%u): %s: invalid size %u, expected %u";
      v50 = v53;
      v51 = 46;
      goto LABEL_85;
    }

    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v37 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      v67 = (this + 8);
      if (*(this + 31) < 0)
      {
        v67 = *v67;
      }

      v69 = *(this + 8);
      v68 = *(this + 9);
      v70 = (*(**(v13 + 5) + 80))(*(v13 + 5));
      if (*(v70 + 23) >= 0)
      {
        v71 = v70;
      }

      else
      {
        v71 = *v70;
      }

      *cf = 136315906;
      *&cf[4] = v67;
      v91 = 1024;
      v92 = v69;
      v93 = 1024;
      v94 = v68;
      v95 = 2080;
      *v96 = v71;
      _os_log_error_impl(&dword_1DDB85000, v37, OS_LOG_TYPE_ERROR, "[%s|setProperty] (scope=%u, element=%u): %s not writable", cf, 0x22u);
    }

    return 4294956431;
  }

  else
  {
    switch(v21)
    {
      case 6:
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v52 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
        {
          v72 = (this + 8);
          if (*(this + 31) < 0)
          {
            v72 = *v72;
          }

          v74 = *(this + 8);
          v73 = *(this + 9);
          v75 = (*(**(v13 + 5) + 80))(*(v13 + 5));
          if (*(v75 + 23) >= 0)
          {
            v76 = v75;
          }

          else
          {
            v76 = *v75;
          }

          *cf = 136315906;
          *&cf[4] = v72;
          v91 = 1024;
          v92 = v74;
          v93 = 1024;
          v94 = v73;
          v95 = 2080;
          *v96 = v76;
          _os_log_error_impl(&dword_1DDB85000, v52, OS_LOG_TYPE_ERROR, "[%s|setProperty] (scope=%u, element=%u): %s not writable after the AU is initialized", cf, 0x22u);
        }

        return 4294956447;
      case 7:
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v60 = getAUSMV2Log(void)::gLog;
        if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
        {
          return 4294956445;
        }

        v61 = (this + 8);
        if (*(this + 31) < 0)
        {
          v61 = *v61;
        }

        v63 = *(this + 8);
        v62 = *(this + 9);
        v64 = (*(**(v13 + 5) + 80))(*(v13 + 5));
        if (*(v64 + 23) >= 0)
        {
          v65 = v64;
        }

        else
        {
          v65 = *v64;
        }

        *cf = 136315906;
        *&cf[4] = v61;
        v91 = 1024;
        v92 = v63;
        v93 = 1024;
        v94 = v62;
        v95 = 2080;
        *v96 = v65;
        v49 = "[%s|setProperty] (scope=%u, element=%u): %s: file not found";
        v50 = v60;
        v51 = 34;
        goto LABEL_85;
      case 8:
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v22 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
        {
          v77 = (this + 8);
          if (*(this + 31) < 0)
          {
            v77 = *v77;
          }

          v79 = *(this + 8);
          v78 = *(this + 9);
          v80 = (*(**(v13 + 5) + 80))(*(v13 + 5));
          if (*(v80 + 23) >= 0)
          {
            v81 = v80;
          }

          else
          {
            v81 = *v80;
          }

          *cf = 136315906;
          *&cf[4] = v77;
          v91 = 1024;
          v92 = v79;
          v93 = 1024;
          v94 = v78;
          v95 = 2080;
          *v96 = v81;
          _os_log_error_impl(&dword_1DDB85000, v22, OS_LOG_TYPE_ERROR, "[%s|setProperty] (scope=%u, element=%u): %s internal error: setter not implemented", cf, 0x22u);
        }

        return 4294956446;
    }
  }

  return v17;
}

uint64_t AUSM::Properties::getProperty(AUSM::Properties *this, unsigned int a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  if (a2 == 5000)
  {
    (*(*this + 32))(v23, this);
    result = 0;
    *a3 = *v23;
  }

  else
  {
    v6 = *(this + 6);
    if (!v6)
    {
      return 4294956417;
    }

    v7 = this + 48;
    do
    {
      v8 = *(v6 + 8);
      v9 = v8 >= a2;
      v10 = v8 < a2;
      if (v9)
      {
        v7 = v6;
      }

      v6 = *&v6[8 * v10];
    }

    while (v6);
    if (v7 != this + 48 && *(v7 + 8) <= a2)
    {
      if (a3)
      {
        if ((*(**(v7 + 5) + 24))(*(v7 + 5), a3) == 8)
        {
          if (getAUSMV2Log(void)::onceToken != -1)
          {
            dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
          }

          v11 = getAUSMV2Log(void)::gLog;
          if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
          {
            v18 = (this + 8);
            if (*(this + 31) < 0)
            {
              v18 = *v18;
            }

            v20 = *(this + 8);
            v19 = *(this + 9);
            v21 = (*(**(v7 + 5) + 80))(*(v7 + 5));
            if (*(v21 + 23) >= 0)
            {
              v22 = v21;
            }

            else
            {
              v22 = *v21;
            }

            *v23 = 136315906;
            *&v23[4] = v18;
            v24 = 1024;
            v25 = v20;
            v26 = 1024;
            v27 = v19;
            v28 = 2080;
            v29 = v22;
            _os_log_error_impl(&dword_1DDB85000, v11, OS_LOG_TYPE_ERROR, "[%s|getProperty] (scope=%u, element=%u): %s internal error: getter not implemented", v23, 0x22u);
          }

          return 4294956446;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v12 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
        {
          v13 = (this + 8);
          if (*(this + 31) < 0)
          {
            v13 = *v13;
          }

          v15 = *(this + 8);
          v14 = *(this + 9);
          v16 = (*(**(v7 + 5) + 80))(*(v7 + 5));
          if (*(v16 + 23) >= 0)
          {
            v17 = v16;
          }

          else
          {
            v17 = *v16;
          }

          *v23 = 136315906;
          *&v23[4] = v13;
          v24 = 1024;
          v25 = v15;
          v26 = 1024;
          v27 = v14;
          v28 = 2080;
          v29 = v17;
          _os_log_error_impl(&dword_1DDB85000, v12, OS_LOG_TYPE_ERROR, "[%s|getProperty] (scope=%u, element=%u): %s called with nullptr for output data", v23, 0x22u);
        }

        return 4294956445;
      }
    }

    else
    {
      return 4294956417;
    }
  }

  return result;
}

void sub_1DDD7B398(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t AUSM::Properties::getPropertyInfo(AUSM::Properties *this, unsigned int a2, unsigned int *a3, BOOL *a4)
{
  if (a2 == 5000)
  {
    *a3 = 8;
    v5 = 1;
LABEL_3:
    result = 0;
    *a4 = v5;
    return result;
  }

  v8 = *(this + 6);
  if (v8)
  {
    v9 = this + 48;
    do
    {
      v10 = *(v8 + 8);
      v11 = v10 >= a2;
      v12 = v10 < a2;
      if (v11)
      {
        v9 = v8;
      }

      v8 = *&v8[8 * v12];
    }

    while (v8);
    if (v9 != this + 48 && *(v9 + 8) <= a2)
    {
      *a3 = (*(**(v9 + 5) + 16))(*(v9 + 5));
      v13 = *(v9 + 5);
      v14 = (*(**(this + 8) + 8))(*(this + 8));
      v5 = (*(*v13 + 72))(v13, v14);
      goto LABEL_3;
    }
  }

  return 4294956417;
}

uint64_t AUSM::Properties::setMaxValue(AUSM::Properties *this, uint64_t a2, const void *a3)
{
  v5 = *(this + 6);
  result = this + 48;
  v4 = v5;
  if (v5)
  {
    v6 = result;
    do
    {
      v7 = *(v4 + 32);
      v8 = v7 >= 0xA;
      v9 = v7 < 0xA;
      if (v8)
      {
        v6 = v4;
      }

      v4 = *(v4 + 8 * v9);
    }

    while (v4);
    if (v6 != result && *(v6 + 32) <= 0xAu)
    {
      result = (*(**(v6 + 40) + 56))(*(v6 + 40), a2, a3);
      if (result)
      {
        v10 = *(**(v6 + 40) + 48);

        return v10();
      }
    }
  }

  return result;
}

void EndpointVAD2::~EndpointVAD2(EndpointVAD2 *this)
{
  EndpointVAD2::~EndpointVAD2(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5921518;
  *(this + 8) = 0;
  *(this + 304) = 0;
  *(this + 46) = *(this + 45);
  v2 = *(this + 18);
  if (v2)
  {
    CFRelease(v2);
    *(this + 18) = 0;
  }

  v3 = *(this + 19);
  if (v3)
  {
    CFRelease(v3);
    *(this + 19) = 0;
  }

  v4 = *(this + 20);
  if (v4)
  {
    CFRelease(v4);
    *(this + 20) = 0;
  }

  v5 = *(this + 21);
  if (v5)
  {
    CFRelease(v5);
    *(this + 21) = 0;
  }

  v6 = *(this + 22);
  if (v6)
  {
    CFRelease(v6);
    *(this + 22) = 0;
  }

  v7 = *(this + 45);
  if (v7)
  {
    *(this + 46) = v7;
    operator delete(v7);
  }

  v21 = (this + 336);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v21);
  v8 = *(this + 39);
  if (v8)
  {
    *(this + 40) = v8;
    operator delete(v8);
  }

  v9 = *(this + 37);
  *(this + 37) = 0;
  if (v9)
  {
    std::default_delete<std::vector<unsigned int>>::operator()[abi:ne200100](v9);
  }

  v10 = *(this + 35);
  *(this + 35) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = *(this + 34);
  *(this + 34) = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v12 = *(this + 33);
  *(this + 33) = 0;
  if (v12)
  {
    std::default_delete<std::vector<float>>::operator()[abi:ne200100](v12);
  }

  v13 = *(this + 32);
  *(this + 32) = 0;
  if (v13)
  {
    std::default_delete<std::vector<float>>::operator()[abi:ne200100](v13);
  }

  v14 = *(this + 31);
  *(this + 31) = 0;
  if (v14)
  {
    std::default_delete<std::vector<float>>::operator()[abi:ne200100](v14);
  }

  v15 = *(this + 30);
  *(this + 30) = 0;
  if (v15)
  {
    std::default_delete<std::vector<float>>::operator()[abi:ne200100](v15);
  }

  v16 = *(this + 26);
  if (v16)
  {
    *(this + 27) = v16;
    operator delete(v16);
  }

  v17 = *(this + 23);
  if (v17)
  {
    *(this + 24) = v17;
    operator delete(v17);
  }

  std::unique_ptr<EndpointDecisionLayerVAD2>::reset[abi:ne200100](this + 13, 0);
  std::unique_ptr<MixViterbiProd>::reset[abi:ne200100](this + 12, 0);
  v18 = *(this + 9);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  v19 = *(this + 7);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  v20 = *(this + 5);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }
}

void std::default_delete<std::vector<unsigned int>>::operator()[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1E12BD160);
}

void std::default_delete<std::vector<float>>::operator()[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1E12BD160);
}

void *std::unique_ptr<EndpointDecisionLayerVAD2>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[25];
    v2[25] = 0;
    if (v3)
    {
      std::default_delete<MRRingBuffer<DataTimeStamp>>::operator()[abi:ne200100](v3);
    }

    v4 = v2[24];
    v2[24] = 0;
    if (v4)
    {
      std::default_delete<MRRingBuffer<AUEndpointVAD3_Decision>>::operator()[abi:ne200100](v4);
    }

    v5 = v2[12];
    if (v5)
    {
      v2[13] = v5;
      operator delete(v5);
    }

    v6 = v2[2];
    if (v6)
    {
      v2[3] = v6;
      operator delete(v6);
    }

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

uint64_t *std::unique_ptr<MixViterbiProd>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 400);
    if (v3)
    {
      MEMORY[0x1E12BD160](v3, 0x1000C40504FFAC1);
    }

    v4 = *(v2 + 392);
    if (v4)
    {
      MEMORY[0x1E12BD160](v4, 0x1000C40504FFAC1);
    }

    v5 = *(v2 + 384);
    if (v5)
    {
      free(v5);
    }

    v6 = *(v2 + 368);
    if (v6)
    {
      free(v6);
    }

    v7 = *(v2 + 360);
    if (v7)
    {
      free(v7);
    }

    v8 = *(v2 + 344);
    if (v8)
    {
      free(v8);
    }

    v9 = *(v2 + 336);
    if (v9)
    {
      free(v9);
    }

    v10 = *(v2 + 328);
    if (v10)
    {
      free(v10);
    }

    v11 = *(v2 + 320);
    if (v11)
    {
      free(v11);
    }

    v12 = *(v2 + 312);
    if (v12)
    {
      free(v12);
    }

    v13 = *(v2 + 304);
    if (v13)
    {
      free(v13);
    }

    v14 = *(v2 + 296);
    if (v14)
    {
      free(v14);
    }

    v15 = *(v2 + 288);
    if (v15)
    {
      free(v15);
    }

    v16 = *(v2 + 280);
    if (v16)
    {
      free(v16);
    }

    v17 = *(v2 + 272);
    if (v17)
    {
      free(v17);
    }

    v18 = *(v2 + 264);
    if (v18)
    {
      free(v18);
    }

    v19 = *(v2 + 256);
    if (v19)
    {
      free(v19);
    }

    v20 = *(v2 + 248);
    if (v20)
    {
      free(v20);
    }

    v21 = *(v2 + 240);
    if (v21)
    {
      free(v21);
    }

    v22 = *(v2 + 208);
    if (v22)
    {
      if (*v22)
      {
        MEMORY[0x1E12BD130](*v22, 0x1000C8052888210);
      }

      MEMORY[0x1E12BD160](v22, 0x1080C40FC6463CFLL);
    }

    v23 = *(v2 + 200);
    if (v23)
    {
      if (*v23)
      {
        MEMORY[0x1E12BD130](*v23, 0x1000C8052888210);
      }

      MEMORY[0x1E12BD160](v23, 0x1080C40FC6463CFLL);
    }

    v24 = *(v2 + 184);
    if (v24)
    {
      if (*v24)
      {
        MEMORY[0x1E12BD130](*v24, 0x1000C8052888210);
      }

      MEMORY[0x1E12BD160](v24, 0x1010C40FDD9F14CLL);
    }

    v25 = *(v2 + 192);
    if (v25)
    {
      if (*v25)
      {
        MEMORY[0x1E12BD130](*v25, 0x1000C80451B5BE8);
      }

      MEMORY[0x1E12BD160](v25, 0x1020C40EDED9539);
    }

    v26 = *(v2 + 176);
    if (v26)
    {
      if (*v26)
      {
        MEMORY[0x1E12BD130](*v26, 0x1000C8052888210);
      }

      MEMORY[0x1E12BD160](v26, 0x1010C40FDD9F14CLL);
    }

    v27 = *(v2 + 112);
    if (v27)
    {
      MEMORY[0x1E12BD160](v27, 0x1000C4052888210);
    }

    v28 = *(v2 + 104);
    if (v28)
    {
      MEMORY[0x1E12BD160](v28, 0x1000C4052888210);
    }

    v29 = *(v2 + 96);
    if (v29)
    {
      MEMORY[0x1E12BD160](v29, 0x1000C4052888210);
    }

    v30 = *(v2 + 48);
    if (v30)
    {
      *(v2 + 56) = v30;
      operator delete(v30);
    }

    v31 = *(v2 + 24);
    if (v31)
    {
      *(v2 + 32) = v31;
      operator delete(v31);
    }

    v32 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v32;
      operator delete(v32);
    }

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

uint64_t *std::__shared_ptr_emplace<FeaturesDSPWrapper>::__on_zero_shared(uint64_t *a1)
{
  std::unique_ptr<CADeprecated::AUOutputBL>::reset[abi:ne200100](a1 + 17, 0);
  v2 = a1[14];
  if (v2)
  {
    a1[15] = v2;
    operator delete(v2);
  }

  v3 = a1[10];
  if (v3)
  {
    a1[11] = v3;
    operator delete(v3);
  }

  v4 = a1[8];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = a1[6];
  a1[6] = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = a1[5];
  a1[5] = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = a1[4];
  a1[4] = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  return std::unique_ptr<FeatureAudioAdaptor>::reset[abi:ne200100](a1 + 3, 0);
}

uint64_t *std::unique_ptr<CADeprecated::AUOutputBL>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 40);
    if (v3)
    {
      MEMORY[0x1E12BD130](v3, 0x1000C8077774924);
    }

    v4 = *(v2 + 48);
    if (v4)
    {
      MEMORY[0x1E12BD130](v4, 0x1000C8077774924);
    }

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

uint64_t *std::unique_ptr<FeatureAudioAdaptor>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    if (*(v2 + 112) == 1)
    {
      BlockBuffer::~BlockBuffer((v2 + 72));
      BlockBuffer::~BlockBuffer((v2 + 48));
    }

    v3 = *(v2 + 40);
    *(v2 + 40) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

void std::__shared_ptr_emplace<FeaturesDSPWrapper>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5932C18;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12BD160);
}

void FixedArray<unsigned int>::Allocate(uint64_t a1, std::vector<unsigned int>::size_type __n)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*a1)
  {
    if (__n != (*(a1 + 16) - *(a1 + 8)) >> 2)
    {
      if (EndpointVAD2LogScope(void)::once != -1)
      {
        dispatch_once(&EndpointVAD2LogScope(void)::once, &__block_literal_global_6);
      }

      if (EndpointVAD2LogScope(void)::scope)
      {
        v3 = *EndpointVAD2LogScope(void)::scope;
        if (!*EndpointVAD2LogScope(void)::scope)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v3 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        v5 = 136315394;
        v6 = "FeatureTimeSeries.h";
        v7 = 1024;
        v8 = 63;
        _os_log_impl(&dword_1DDB85000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d The FixedArray object cannot be re-allocated to a different length.", &v5, 0x12u);
      }

LABEL_12:
      abort();
    }
  }

  else
  {
    v4 = __n;
    std::vector<unsigned int>::reserve((a1 + 8), __n);
    std::vector<unsigned int>::resize((a1 + 8), v4);
    *a1 = 1;
  }
}

uint64_t EnsembleTimeSeriesEvent<float>::EnsembleTimeSeriesEvent(uint64_t a1, std::vector<unsigned int>::size_type a2, __int32 *a3)
{
  v4 = TimeSeriesEvent<float>::TimeSeriesEvent(a1, a2, a3);
  *v4 = &unk_1F5932C50;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  v5 = (v4 + 56);
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  v6 = *(v4 + 8);
  std::vector<DataTimeStamp>::reserve((v4 + 56), v6);
  std::vector<DataTimeStamp>::resize(v5, v6);
  *(a1 + 48) = 1;
  return a1;
}

void sub_1DDD7C020(_Unwind_Exception *exception_object)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    v1[8] = v5;
    operator delete(v5);
  }

  *v1 = &unk_1F5932C70;
  v6 = v1[3];
  if (v6)
  {
    v1[4] = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DDD7C32C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void **a9)
{
  v11 = *a9;
  if (*a9)
  {
    v9[3].__shared_weak_owners_ = v11;
    operator delete(v11);
  }

  std::__shared_weak_count::~__shared_weak_count(v9);
  operator delete(v12);
  _Unwind_Resume(a1);
}

void EnsembleTimeSeriesBuffer<float>::EnsembleTimeSeriesBuffer(uint64_t a1, int a2, int *a3)
{
  *(a1 + 8) = a2;
  v3 = *a3;
  *(a1 + 12) = *a3;
  *(a1 + 16) = v3 * a2;
  *a1 = &unk_1F5932CF0;
  operator new();
}

uint64_t TimeSeriesEvent<float>::TimeSeriesEvent(uint64_t a1, std::vector<unsigned int>::size_type __n, __int32 *a3)
{
  *a1 = &unk_1F5932C70;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v5 = (a1 + 24);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 8) = __n;
  v6 = __n;
  std::vector<unsigned int>::reserve((a1 + 24), __n);
  std::vector<float>::resize(v5, v6);
  *(a1 + 16) = 1;
  v9 = *(a1 + 24);
  v8 = *(a1 + 32);
  if (v9 != v8)
  {
    v7.i32[0] = *a3;
    v10 = (v8 - v9 - 4) >> 2;
    v11 = (v10 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v12 = vdupq_n_s64(v10);
    v13 = (v9 + 8);
    v14 = 1;
    do
    {
      v15 = vdupq_n_s64(v14 - 1);
      v16 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(v15, xmmword_1DE095160)));
      if (vuzp1_s16(v16, v7).u8[0])
      {
        *(v13 - 2) = v7.i32[0];
      }

      if (vuzp1_s16(v16, v7).i8[2])
      {
        *(v13 - 1) = v7.i32[0];
      }

      if (vuzp1_s16(v7, vmovn_s64(vcgeq_u64(v12, vorrq_s8(v15, xmmword_1DE095150)))).i32[1])
      {
        *v13 = v7.i32[0];
        v13[1] = v7.i32[0];
      }

      v14 += 4;
      v13 += 4;
      v11 -= 4;
    }

    while (v11);
  }

  return a1;
}

void sub_1DDD7C5D4(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TimeSeriesEvent<unsigned int>::TimeSeriesEvent(uint64_t a1, std::vector<unsigned int>::size_type a2, int *a3)
{
  *a1 = &unk_1F5932D58;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 8) = a2;
  FixedArray<unsigned int>::Allocate(a1 + 16, a2);
  v6 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (v6 != v5)
  {
    v7 = *a3;
    v8 = (v5 - v6 - 4) >> 2;
    v9 = (v8 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v10 = vdupq_n_s64(v8);
    v11 = (v6 + 8);
    v12 = 1;
    do
    {
      v13 = vdupq_n_s64(v12 - 1);
      v14 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(v13, xmmword_1DE095160)));
      if (vuzp1_s16(v14, *v10.i8).u8[0])
      {
        *(v11 - 2) = v7;
      }

      if (vuzp1_s16(v14, *&v10).i8[2])
      {
        *(v11 - 1) = v7;
      }

      if (vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, vorrq_s8(v13, xmmword_1DE095150)))).i32[1])
      {
        *v11 = v7;
        v11[1] = v7;
      }

      v12 += 4;
      v11 += 4;
      v9 -= 4;
    }

    while (v9);
  }

  return a1;
}

void sub_1DDD7C704(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<std::vector<unsigned int>>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    std::allocator<std::vector<unsigned int>>::allocate_at_least[abi:ne200100](a2);
  }

  return result;
}

void *std::vector<DataTimeStamp>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    std::allocator<DataTimeStamp>::allocate_at_least[abi:ne200100](a2);
  }

  return result;
}

void std::allocator<DataTimeStamp>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void VectorTimeSeriesEvent<unsigned int>::~VectorTimeSeriesEvent(void *a1)
{
  *a1 = &unk_1F5932D58;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1E12BD160);
}

void TimeSeriesEvent<unsigned int>::~TimeSeriesEvent(void *a1)
{
  *a1 = &unk_1F5932D58;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1E12BD160);
}

void *TimeSeriesEvent<unsigned int>::~TimeSeriesEvent(void *a1)
{
  *a1 = &unk_1F5932D58;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  return a1;
}

void *VectorTimeSeriesEvent<unsigned int>::~VectorTimeSeriesEvent(void *a1)
{
  *a1 = &unk_1F5932D58;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  return a1;
}

void VectorTimeSeriesEvent<float>::~VectorTimeSeriesEvent(void *a1)
{
  *a1 = &unk_1F5932C70;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1E12BD160);
}

void TimeSeriesEvent<float>::~TimeSeriesEvent(void *a1)
{
  *a1 = &unk_1F5932C70;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1E12BD160);
}

void *TimeSeriesEvent<float>::~TimeSeriesEvent(void *a1)
{
  *a1 = &unk_1F5932C70;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  return a1;
}

void *VectorTimeSeriesEvent<float>::~VectorTimeSeriesEvent(void *a1)
{
  *a1 = &unk_1F5932C70;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  return a1;
}

void EndpointVAD2::FloatVectorToUIntVector(uint64_t *a1, std::vector<unsigned int> *this)
{
  std::vector<unsigned int>::resize(this, (a1[1] - *a1) >> 2);
  v4 = *a1;
  v5 = a1[1];
  v6 = v5 - *a1;
  if (v5 != *a1)
  {
    v7 = 0;
    v8 = v6 >> 2;
    begin = this->__begin_;
    do
    {
      begin[v7] = (*(v4 + 4 * v7) + 0.5);
      ++v7;
    }

    while (v8 > v7);
  }
}

float EnsembleTimeSeriesBuffer<float>::GetDataValue(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v3 = *(a1 + 24);
  v4 = *a3 + *(a1 + 12) * *a2;
  v5 = *v3;
  if (v4 < 0)
  {
    v6 = *(v3 + 2) + ~((*(v3 + 2) - v4 + ~*(v3 + 3)) % *(v3 + 2));
  }

  else
  {
    v6 = (*(v3 + 3) + v4) % *(v3 + 2);
  }

  return *(v5 + 4 * v6);
}

void EnsembleTimeSeriesBuffer<float>::~EnsembleTimeSeriesBuffer(void *a1)
{
  EnsembleTimeSeriesBuffer<float>::~EnsembleTimeSeriesBuffer(a1);

  JUMPOUT(0x1E12BD160);
}

void *EnsembleTimeSeriesBuffer<float>::~EnsembleTimeSeriesBuffer(void *a1)
{
  *a1 = &unk_1F5932CF0;
  v2 = a1[3];
  if (v2)
  {
    if (*v2)
    {
      MEMORY[0x1E12BD130](*v2, 0x1000C8052888210);
    }

    MEMORY[0x1E12BD160](v2, 0x1080C40FC6463CFLL);
    a1[3] = 0;
  }

  v3 = a1[4];
  if (v3)
  {
    if (*v3)
    {
      MEMORY[0x1E12BD130](*v3, 0x1000C80451B5BE8);
    }

    MEMORY[0x1E12BD160](v3, 0x1020C40EDED9539);
    a1[4] = 0;
  }

  return a1;
}

float VectorTimeSeriesSynchronizer<float>::GetDataValue(uint64_t a1, _DWORD *a2, unsigned int *a3)
{
  SynchronizationDelay = VectorTimeSeriesSynchronizer<float>::GetSynchronizationDelay(a1, *a3);
  v7 = *(*(a1 + 24) + 8 * *a3);
  v8 = *v7;
  v9 = *a2 - SynchronizationDelay;
  if (v9 < 0)
  {
    v10 = *(v7 + 2) + ~((*(v7 + 2) - v9 + ~*(v7 + 3)) % *(v7 + 2));
  }

  else
  {
    v10 = (*(v7 + 3) + v9) % *(v7 + 2);
  }

  return *(v8 + 4 * v10);
}

uint64_t VectorTimeSeriesSynchronizer<float>::GetSynchronizationDelay(uint64_t a1, unsigned int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 56);
  if (a2 >= ((*(a1 + 64) - v2) >> 2))
  {
    __assert_rtn("ElementAt", "FeatureTimeSeries.h", 84, "index < mArray.size()");
  }

  v3 = *(v2 + 4 * a2);
  v4 = *(a1 + 88);
  result = (v3 - v4);
  if (v3 - v4 < 0)
  {
    if (EndpointVAD2LogScope(void)::once != -1)
    {
      dispatch_once(&EndpointVAD2LogScope(void)::once, &__block_literal_global_6);
    }

    if (EndpointVAD2LogScope(void)::scope)
    {
      v6 = *EndpointVAD2LogScope(void)::scope;
      if (!*EndpointVAD2LogScope(void)::scope)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "FeatureTimeSeries.h";
      v9 = 1024;
      v10 = 570;
      _os_log_impl(&dword_1DDB85000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d mNominalVectorNumber should be the minimum of the time-series counters!", &v7, 0x12u);
    }

LABEL_12:
    abort();
  }

  return result;
}

void VectorTimeSeriesSynchronizer<float>::~VectorTimeSeriesSynchronizer(uint64_t a1)
{
  VectorTimeSeriesSynchronizer<float>::~VectorTimeSeriesSynchronizer(a1);

  JUMPOUT(0x1E12BD160);
}

uint64_t VectorTimeSeriesSynchronizer<float>::~VectorTimeSeriesSynchronizer(uint64_t a1)
{
  *a1 = &unk_1F5932CC8;
  if (*(a1 + 12))
  {
    v2 = 0;
    do
    {
      v3 = *(*(a1 + 24) + 8 * v2);
      if (v3)
      {
        if (*v3)
        {
          MEMORY[0x1E12BD130](*v3, 0x1000C8052888210);
        }

        MEMORY[0x1E12BD160](v3, 0x1080C40FC6463CFLL);
      }

      v4 = *(*(a1 + 32) + 8 * v2);
      if (v4)
      {
        if (*v4)
        {
          MEMORY[0x1E12BD130](*v4, 0x1000C8000313F17);
        }

        MEMORY[0x1E12BD160](v4, 0x1080C40FC6463CFLL);
      }

      v5 = *(*(a1 + 40) + 8 * v2);
      if (v5)
      {
        if (*v5)
        {
          MEMORY[0x1E12BD130](*v5, 0x1000C8000313F17);
        }

        MEMORY[0x1E12BD160](v5, 0x1080C40FC6463CFLL);
      }

      ++v2;
    }

    while (v2 < *(a1 + 12));
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    MEMORY[0x1E12BD130](v6, 0x20C8093837F09);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    MEMORY[0x1E12BD130](v7, 0x20C8093837F09);
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    MEMORY[0x1E12BD130](v8, 0x20C8093837F09);
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v9 = *(a1 + 56);
  if (v9)
  {
    *(a1 + 64) = v9;
    operator delete(v9);
  }

  return a1;
}

void std::__shared_ptr_emplace<VectorTimeSeriesSynchronizer<float>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5932C90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12BD160);
}

void std::vector<DataTimeStamp>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 4;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 16 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 4)
    {
      if (!(a2 >> 60))
      {
        v8 = v7 - v3;
        v9 = v8 >> 3;
        if (v8 >> 3 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF0)
        {
          v10 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::allocator<DataTimeStamp>::allocate_at_least[abi:ne200100](v10);
      }

      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    bzero(a1[1], 16 * v6);
    v11 = v4 + 16 * v6;
  }

  a1[1] = v11;
}

void EnsembleTimeSeriesEvent<float>::~EnsembleTimeSeriesEvent(void *a1)
{
  EnsembleTimeSeriesEvent<float>::~EnsembleTimeSeriesEvent(a1);

  JUMPOUT(0x1E12BD160);
}

void *EnsembleTimeSeriesEvent<float>::~EnsembleTimeSeriesEvent(void *a1)
{
  *a1 = &unk_1F5932C50;
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  *a1 = &unk_1F5932C70;
  v3 = a1[3];
  if (v3)
  {
    a1[4] = v3;
    operator delete(v3);
  }

  return a1;
}

void std::vector<unsigned int>::reserve(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __n)
{
  if (__n > this->__end_cap_.__value_ - this->__begin_)
  {
    if (!(__n >> 62))
    {
      std::allocator<float>::allocate_at_least[abi:ne200100](this, __n);
    }

    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
  }
}

uint64_t FeaturesDSPWrapper::RebufferingProcessAdaptor(FeaturesDSPWrapper *this, void *a2, void *a3, const AudioBufferList **a4, AudioBufferList **a5)
{
  v5 = this;
  v86 = *MEMORY[0x1E69E9840];
  (*(**(this + 1) + 32))(*(this + 1), *a3, a2, v5 + 144, *a4, *(v5 + 2));
  v6 = *(v5 + 2);
  v7 = *(v5 + 3);
  v8 = *(v6 + 8);
  if (v8 != *(v7 + 12))
  {
    if (EndpointVAD2LogScope(void)::once != -1)
    {
      dispatch_once(&EndpointVAD2LogScope(void)::once, &__block_literal_global_6);
    }

    if (EndpointVAD2LogScope(void)::scope)
    {
      v71 = *EndpointVAD2LogScope(void)::scope;
      if (!*EndpointVAD2LogScope(void)::scope)
      {
        goto LABEL_79;
      }
    }

    else
    {
      v71 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
    {
      v73 = *(v7 + 12);
      *buf = 136315650;
      v81 = "FeatureTimeSeries.h";
      v82 = 1024;
      v83 = 398;
      v84 = 1024;
      v85 = v73;
      v74 = "%25s:%-5d Incorrect number of incoming samples for %d-dimensional EnsembleTimeSeriesBuffer";
      v75 = v71;
      v76 = 24;
LABEL_78:
      _os_log_impl(&dword_1DDB85000, v75, OS_LOG_TYPE_ERROR, v74, buf, v76);
    }

LABEL_79:
    abort();
  }

  if (v8)
  {
    v9 = 0;
    v10 = *(v6 + 24);
    v11 = (*(v6 + 32) - v10) >> 2;
    do
    {
      if (v11 == v9 || (v12 = *(v7 + 24), v13 = *(v12 + 12), *(*v12 + 4 * v13) = *(v10 + 4 * v9), *(v12 + 12) = (v13 + 1) % *(v12 + 8), v14 = *(v6 + 56), v9 >= (*(v6 + 64) - v14) >> 4))
      {
LABEL_62:
        __assert_rtn("ElementAt", "FeatureTimeSeries.h", 84, "index < mArray.size()");
      }

      v15 = *(v7 + 32);
      v16 = *(v15 + 12);
      *(*v15 + 16 * v16) = *(v14 + 16 * v9);
      *(v15 + 12) = (v16 + 1) % *(v15 + 8);
      ++v9;
    }

    while (v8 != v9);
  }

  ++*(v7 + 40);
  v17 = *(v5 + 7);
  v18 = *(v5 + 8) - v17;
  if ((v18 >> 2) != ((*(v5 + 12) - *(v5 + 11)) >> 2))
  {
    if (EndpointVAD2LogScope(void)::once != -1)
    {
      dispatch_once(&EndpointVAD2LogScope(void)::once, &__block_literal_global_6);
    }

    if (EndpointVAD2LogScope(void)::scope)
    {
      v72 = *EndpointVAD2LogScope(void)::scope;
      if (!*EndpointVAD2LogScope(void)::scope)
      {
        goto LABEL_79;
      }
    }

    else
    {
      v72 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v81 = "FeatureTimeSeries.h";
      v82 = 1024;
      v83 = 490;
      v74 = "%25s:%-5d The number of input and output indices must match.";
      v75 = v72;
      v76 = 18;
      goto LABEL_78;
    }

    goto LABEL_79;
  }

  v19 = *(v5 + 4);
  if ((v18 & 0x3FFFFFFFCLL) == 0)
  {
    goto LABEL_50;
  }

  v20 = 0;
  v21 = *(v5 + 41);
  v77 = v6;
  v78 = v5;
  do
  {
    if (v20 >= v18 >> 2)
    {
LABEL_63:
      __assert_rtn("operator[]", "FeatureTimeSeries.h", 98, "index < mArray.size()");
    }

    v22 = *(v17 + 4 * v20);
    v23 = *(v6 + 24);
    if (v22 >= (*(v6 + 32) - v23) >> 2)
    {
      goto LABEL_62;
    }

    v24 = *(v6 + 56);
    if (v22 >= (*(v6 + 64) - v24) >> 4)
    {
      goto LABEL_62;
    }

    v25 = *(v5 + 11);
    if (v20 >= (*(v5 + 12) - v25) >> 2)
    {
      goto LABEL_63;
    }

    v79 = v24 + 16 * v22;
    v26 = round(*v79);
    v27 = *(v19 + 80);
    v28 = vcvtpd_s64_f64(v27 * (v26 + -0.5) / v21);
    v29 = v28 & ~(v28 >> 31);
    v30 = vcvtmd_s64_f64(v27 * (v26 + 0.5) / v21);
    if (v29 > v30)
    {
      v30 = v29;
    }

    if (v30 <= v29)
    {
      v31 = v29;
    }

    else
    {
      v31 = v30;
    }

    do
    {
      if (v26 != round(v21 * v29 / *(v19 + 80)))
      {
        continue;
      }

      v32 = *(v25 + 4 * v20);
      v33 = *(v19 + 56);
      if (v32 >= (*(v19 + 64) - v33) >> 2)
      {
        goto LABEL_61;
      }

      v34 = *(v33 + 4 * v32);
      v35 = v29 - v34;
      if (v29 >= v34)
      {
        if (v29 <= v34)
        {
          goto LABEL_45;
        }

        if (EndpointVAD2LogScope(void)::once != -1)
        {
          dispatch_once(&EndpointVAD2LogScope(void)::once, &__block_literal_global_6);
        }

        if (EndpointVAD2LogScope(void)::scope)
        {
          v37 = *EndpointVAD2LogScope(void)::scope;
          if (!*EndpointVAD2LogScope(void)::scope)
          {
LABEL_39:
            v38 = *(v19 + 24);
            v39 = *(v19 + 32);
            if (v35 <= 1)
            {
              v40 = 1;
            }

            else
            {
              v40 = v29 - v34;
            }

            do
            {
              v41 = *(v38 + 8 * *(v25 + 4 * v20));
              v42 = *(v41 + 12);
              *(*v41 + 4 * v42) = 0;
              *(v41 + 12) = (v42 + 1) % *(v41 + 8);
              v43 = *(v39 + 8 * *(v25 + 4 * v20));
              v44 = *(v43 + 12);
              *(*v43 + 8 * v44) = v34;
              *(v43 + 12) = (v44 + 1) % *(v43 + 8);
              ++v34;
              --v40;
            }

            while (v40);
            v45 = *(v25 + 4 * v20);
            v46 = *(v19 + 56);
            if (v45 >= (*(v19 + 64) - v46) >> 2)
            {
              goto LABEL_61;
            }

            *(v46 + 4 * v45) += v35;
            goto LABEL_45;
          }
        }

        else
        {
          v37 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v81 = "FeatureTimeSeries.h";
          v82 = 1024;
          v83 = 629;
          _os_log_impl(&dword_1DDB85000, v37, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Gap detected in the input time series. Filling in zeros.", buf, 0x12u);
        }

        goto LABEL_39;
      }

      if (EndpointVAD2LogScope(void)::once != -1)
      {
        dispatch_once(&EndpointVAD2LogScope(void)::once, &__block_literal_global_6);
      }

      if (!EndpointVAD2LogScope(void)::scope)
      {
        v36 = MEMORY[0x1E69E9C10];
LABEL_34:
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v81 = "FeatureTimeSeries.h";
          v82 = 1024;
          v83 = 621;
          _os_log_impl(&dword_1DDB85000, v36, OS_LOG_TYPE_ERROR, "%25s:%-5d Input sample numbers cannot go backward in time!", buf, 0x12u);
        }

        goto LABEL_45;
      }

      v36 = *EndpointVAD2LogScope(void)::scope;
      if (*EndpointVAD2LogScope(void)::scope)
      {
        goto LABEL_34;
      }

LABEL_45:
      v47 = *(*(v19 + 24) + 8 * *(v25 + 4 * v20));
      v48 = *(v47 + 12);
      *(*v47 + 4 * v48) = *(v23 + 4 * v22);
      *(v47 + 12) = (v48 + 1) % *(v47 + 8);
      v49 = *(*(v19 + 40) + 8 * *(v25 + 4 * v20));
      v50 = *(v49 + 12);
      *(*v49 + 8 * v50) = *(v79 + 8);
      *(v49 + 12) = (v50 + 1) % *(v49 + 8);
      v51 = *(*(v19 + 32) + 8 * *(v25 + 4 * v20));
      v52 = *(v51 + 12);
      *(*v51 + 8 * v52) = v29;
      *(v51 + 12) = (v52 + 1) % *(v51 + 8);
      v53 = *(v25 + 4 * v20);
      v54 = *(v19 + 56);
      if (v53 >= (*(v19 + 64) - v54) >> 2)
      {
        goto LABEL_61;
      }

      ++*(v54 + 4 * v53);
    }

    while (v29++ != v31);
    ++v20;
    v6 = v77;
    v5 = v78;
    v17 = *(v78 + 7);
    v18 = *(v78 + 8) - v17;
  }

  while (v20 < (v18 >> 2));
LABEL_50:
  v57 = *(v19 + 56);
  v56 = *(v19 + 64);
  v58 = v56 - v57;
  if (v56 == v57)
  {
    goto LABEL_61;
  }

  v59 = *v57;
  *(v19 + 88) = *v57;
  v60 = *(v19 + 12);
  if (v60 >= 2)
  {
    v61 = v58 >> 2;
    if (v61 <= 1)
    {
      v62 = 1;
    }

    else
    {
      v62 = v61;
    }

    v63 = v60 - 1;
    v64 = (v57 + 4);
    v65 = v62 - 1;
    while (v65)
    {
      v67 = *v64++;
      v66 = v67;
      if (v67 < v59)
      {
        v59 = v66;
      }

      *(v19 + 88) = v59;
      --v65;
      if (!--v63)
      {
        goto LABEL_60;
      }
    }

LABEL_61:
    __assert_rtn("ElementAt", "FeatureTimeSeries.h", 77, "index < mArray.size()");
  }

LABEL_60:
  v68 = *v5;
  v69 = *(*v5 + 32) + *(v5 + 19);
  *(v5 + 19) = v69;
  *(v5 + 18) = v69 * *v68;
  return 0;
}

CFDictionaryRef EndpointVAD2::SetProperties(CFDictionaryRef theDict, CFTypeRef *a2, const __CFDictionary **a3)
{
  if (*a2)
  {
    CFRelease(*a2);
    *a2 = 0;
  }

  result = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], theDict);
  *a2 = result;
  return result;
}

uint64_t EndpointVAD2::UpdateAndDispatchDecisions(uint64_t result, void **a2, void *a3, uint64_t a4, uint64_t a5, int a6, _BYTE *a7)
{
  v145 = result;
  v157 = *MEMORY[0x1E69E9840];
  v147 = *a2;
  if (*a2 != a2[1])
  {
    v7 = a7;
    v8 = a6;
    v148 = *a3;
    v140 = (a5 + 184);
    do
    {
      if ((*v7 & 1) == 0)
      {
        v10 = a3[1];
        if (*a3 == v10)
        {
          v12 = 0.0;
        }

        else
        {
          v11 = 0;
          v12 = 0.0;
          v13 = *a3;
          do
          {
            if (v11)
            {
              if (*(v13 + 8) < v12)
              {
                v12 = *(v13 + 8);
              }
            }

            else
            {
              v12 = *(*a3 + 8);
            }

            v13 += 16;
            v11 -= 16;
          }

          while (v13 != v10);
        }

        v14 = *(a5 + 128) * v12;
        *(a5 + 144) = 0;
        *(a5 + 152) = v14;
        *(a5 + 160) = v12;
        *(a5 + 168) = *(a5 + 144);
        *(a5 + 184) = *(a5 + 160);
        *v7 = 1;
      }

      v153 = 0;
      v152 = 0uLL;
      v151 = 0uLL;
      std::string::basic_string[abi:ne200100]<0>(__p, "");
      if (v8 == 1)
      {
        std::string::basic_string[abi:ne200100]<0>(buf, "");
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        v15 = 1;
      }

      else
      {
        if (v8)
        {
          if (v155 < 0)
          {
            __p[1] = 16;
            v133 = __p[0];
          }

          else
          {
            v155 = 16;
            v133 = __p;
          }

          strcpy(v133, "Invalid VAD mode");
          if (EndpointVAD2LogScope(void)::once != -1)
          {
            dispatch_once(&EndpointVAD2LogScope(void)::once, &__block_literal_global_6);
          }

          if (EndpointVAD2LogScope(void)::scope)
          {
            v135 = *EndpointVAD2LogScope(void)::scope;
            if (!*EndpointVAD2LogScope(void)::scope)
            {
              goto LABEL_204;
            }
          }

          else
          {
            v135 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
          {
            v136 = __p;
            if (v155 < 0)
            {
              v136 = __p[0];
            }

            *buf = 136315650;
            *&buf[4] = "VAD2StateLabels.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 116;
            *&buf[18] = 2080;
            *&buf[20] = v136;
            v137 = "%25s:%-5d Fatal error: %s";
            v138 = v135;
            v139 = 28;
LABEL_203:
            _os_log_impl(&dword_1DDB85000, v138, OS_LOG_TYPE_ERROR, v137, buf, v139);
          }

LABEL_204:
          abort();
        }

        std::string::basic_string[abi:ne200100]<0>(buf, "");
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        v15 = 0;
      }

      if (v155 < 0)
      {
        operator delete(__p[0]);
      }

      if (v15 >= (v147[1] - *v147) >> 2)
      {
        std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
      }

      v16 = *(*v147 + 4 * v15);
      ++*(a5 + 220);
      *buf = v16;
      *&buf[8] = *v148;
      *(a5 + 104) = *(a5 + 96);
      v18 = *(a5 + 16);
      v17 = *(a5 + 24);
      v19 = v17 - v18;
      if (v17 == v18)
      {
        v21 = *(a5 + 24);
      }

      else
      {
        v20 = 0xAAAAAAAAAAAAAAABLL * (v19 >> 3);
        v21 = *(a5 + 16);
        do
        {
          v22 = v20 >> 1;
          v23 = &v21[24 * (v20 >> 1)];
          v24 = *(v23 + 2);
          v25 = v23 + 24;
          v20 += ~(v20 >> 1);
          if (*&buf[16] > v24)
          {
            v20 = v22;
          }

          else
          {
            v21 = v25;
          }
        }

        while (v20);
      }

      v26 = *(a5 + 32);
      if (v17 >= v26)
      {
        v29 = 1 - 0x5555555555555555 * (v19 >> 3);
        if (v29 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
        }

        if (0x5555555555555556 * ((v26 - v18) >> 3) > v29)
        {
          v29 = 0x5555555555555556 * ((v26 - v18) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v26 - v18) >> 3) >= 0x555555555555555)
        {
          v30 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v30 = v29;
        }

        if (v30)
        {
          std::allocator<TimeStampedEvent<unsigned int>>::allocate_at_least[abi:ne200100](v30);
        }

        v32 = 8 * ((v21 - v18) >> 3);
        v33 = v32;
        if (!(0xAAAAAAAAAAAAAAABLL * ((v21 - v18) >> 3)))
        {
          if (v21 - v18 < 1)
          {
            if (v21 == v18)
            {
              v38 = 1;
            }

            else
            {
              v38 = 0x5555555555555556 * ((v21 - v18) >> 3);
            }

            std::allocator<TimeStampedEvent<unsigned int>>::allocate_at_least[abi:ne200100](v38);
          }

          v32 = 8 * ((v21 - v18) >> 3) - 24 * ((1 - 0x5555555555555555 * ((8 * ((v21 - v18) >> 3)) >> 3) + ((1 - 0x5555555555555555 * ((8 * ((v21 - v18) >> 3)) >> 3)) >> 63)) >> 1);
          v33 = v32;
        }

        v39 = *buf;
        *(v32 + 16) = *&buf[16];
        *v32 = v39;
        v40 = v33 + 24;
        memcpy((v33 + 24), v21, *(a5 + 24) - v21);
        v41 = *(a5 + 16);
        v149 = v40 + *(a5 + 24) - v21;
        *(a5 + 24) = v21;
        v42 = (v32 - (v21 - v41));
        memcpy(v42, v41, v21 - v41);
        v43 = *(a5 + 16);
        *(a5 + 16) = v42;
        *(a5 + 24) = v149;
        if (v43)
        {
          operator delete(v43);
        }
      }

      else if (v21 == v17)
      {
        v31 = *buf;
        *(v17 + 16) = *&buf[16];
        *v17 = v31;
        *(a5 + 24) = v17 + 24;
      }

      else
      {
        if (v17 < 0x18)
        {
          v27 = *(a5 + 24);
        }

        else
        {
          v27 = v17 + 24;
          v28 = *(v17 - 24);
          *(v17 + 16) = *(v17 - 8);
          *v17 = v28;
        }

        *(a5 + 24) = v27;
        if (v17 != v21 + 24)
        {
          memmove(v21 + 24, v21, v17 - (v21 + 24));
          v27 = *(a5 + 24);
        }

        v34 = v27 <= buf || v21 > buf;
        if (v34)
        {
          v35 = 0;
        }

        else
        {
          v35 = 24;
        }

        v36 = &buf[v35];
        v37 = *v36;
        *(v21 + 2) = *(v36 + 2);
        *v21 = v37;
      }

      v44 = *&buf[16];
      v45 = *(a5 + 40);
      if (*&buf[16] > v45)
      {
        *(a5 + 40) = *&buf[16];
        v45 = v44;
      }

      v46 = *(a5 + 16);
      v47 = *(a5 + 24);
      v48 = -1431655765 * ((v47 - v46) >> 3);
      v49 = *a5;
      v50 = v45 - *a5;
      v51 = *(a5 + 8);
      v52 = *(v47 - 1);
      v53 = v51 < v48 || v52 < v50;
      v54 = *(a5 + 24);
      if (v53)
      {
        v55 = v48 - 1;
        v54 = *(a5 + 24);
        while (1)
        {
          v56 = v54;
          v54 -= 3;
          if (v54 == v46)
          {
            break;
          }

          v57 = v55 - 1;
          v34 = v55-- > v51;
          if (!v34)
          {
            v55 = v57;
            if (*(v56 - 4) >= v50)
            {
              goto LABEL_78;
            }
          }
        }

        v54 = *(a5 + 16);
      }

LABEL_78:
      v58 = *(a5 + 96);
      if (v47 != v54)
      {
        *(a5 + 104) = v58;
        v59 = v54;
        do
        {
          v60 = *(a5 + 112);
          if (v58 >= v60)
          {
            v62 = *(a5 + 96);
            v63 = 0xAAAAAAAAAAAAAAABLL * ((v58 - v62) >> 3);
            v64 = v63 + 1;
            if (v63 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
            }

            v65 = 0xAAAAAAAAAAAAAAABLL * ((v60 - v62) >> 3);
            if (2 * v65 > v64)
            {
              v64 = 2 * v65;
            }

            if (v65 >= 0x555555555555555)
            {
              v66 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v66 = v64;
            }

            if (v66)
            {
              std::allocator<TimeStampedEvent<unsigned int>>::allocate_at_least[abi:ne200100](v66);
            }

            v67 = 8 * ((v58 - v62) >> 3);
            v68 = *v59;
            *(v67 + 16) = v59[2];
            *v67 = v68;
            v58 = v67 + 24;
            v69 = *(a5 + 96);
            v70 = *(a5 + 104) - v69;
            v71 = (24 * v63 - v70);
            memcpy(v71, v69, v70);
            v72 = *(a5 + 96);
            *(a5 + 96) = v71;
            *(a5 + 104) = v58;
            *(a5 + 112) = 0;
            if (v72)
            {
              operator delete(v72);
            }
          }

          else
          {
            v61 = *v59;
            *(v58 + 16) = v59[2];
            *v58 = v61;
            v58 += 24;
          }

          *(a5 + 104) = v58;
          v59 += 3;
        }

        while (v59 != v47);
        v73 = *(a5 + 24);
        v74 = v73 - v47;
        if (v73 != v47)
        {
          memmove(v54, v47, v73 - v47);
        }

        v47 = (v54 + v74);
        *(a5 + 24) = v54 + v74;
        v52 = *(v54 + v74 - 8);
        v45 = *(a5 + 40);
        v49 = *a5;
        v58 = *(a5 + 96);
      }

      *(a5 + 48) = v52;
      v75 = *(a5 + 104);
      if (v58 != v75)
      {
        v76 = 0;
        v77 = 1;
        v78 = 0.0;
        do
        {
          v79 = v77 | (*(v58 + 16) > v78);
          v77 = 0;
          if (v79)
          {
            v76 = v58;
            v78 = *(v58 + 16);
          }

          v58 += 24;
        }

        while (v58 != v75);
        if (v76)
        {
          *(a5 + 136) = 0;
          v80 = *v76;
          *(a5 + 184) = *(v76 + 16);
          *(a5 + 168) = v80;
        }
      }

      if (v45 - *(a5 + 160) > v49)
      {
        *(a5 + 136) = 0;
      }

      v81 = 0;
      v82 = *(a5 + 120);
      if (v82 == 1)
      {
        v84 = 88;
      }

      else
      {
        v83 = 0.0;
        v84 = 88;
        if (v82)
        {
          goto LABEL_110;
        }

        v81 = 1;
        v84 = 92;
      }

      v83 = *(a5 + v84);
LABEL_110:
      v85 = *(a5 + 168);
      v86 = *(a5 + 16);
      if (v47 == v86)
      {
        v95 = 0.0;
        v90 = 0.0;
      }

      else
      {
        v87 = v45 - v49;
        if (*(a5 + 136))
        {
          v87 = *(a5 + 184);
        }

        v88 = *(v47 - 1) - v87;
        v89 = v88 + 0.0;
        if (v85 == v81)
        {
          v90 = v88 + 0.0;
        }

        else
        {
          v90 = 0.0;
        }

        v91 = v47;
        for (i = v47; ; v91 = i)
        {
          v94 = *(i - 6);
          i -= 3;
          v93 = v94;
          if (v86 == i)
          {
            break;
          }

          v88 = *(v91 - 4) - *(v91 - 1);
          v89 = v88 + v89;
          if (v93 == v81)
          {
            v90 = v88 + v90;
          }
        }

        v95 = v88 + v89;
        v96 = v88 + v90;
        if (v93 == v81)
        {
          v90 = v96;
        }
      }

      v97 = v90 / v95;
      v98 = v49 * *(a5 + v84);
      LOBYTE(v81) = v90 > v98 && v97 >= v83;
      if (v82)
      {
        if (v82 != 1)
        {
          if (EndpointVAD2LogScope(void)::once != -1)
          {
            dispatch_once(&EndpointVAD2LogScope(void)::once, &__block_literal_global_6);
          }

          if (EndpointVAD2LogScope(void)::scope)
          {
            v109 = *EndpointVAD2LogScope(void)::scope;
            if (!*EndpointVAD2LogScope(void)::scope)
            {
LABEL_153:
              v105 = 0;
              v106 = 0uLL;
              goto LABEL_163;
            }
          }

          else
          {
            v109 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "EndpointDecisionLayer.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 197;
            _os_log_impl(&dword_1DDB85000, v109, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid state value!", buf, 0x12u);
          }

          goto LABEL_153;
        }

        if ((v81 & 1) == 0)
        {
          goto LABEL_153;
        }

        __p[0] = 0;
        __p[1] = 0;
        v100 = *(a5 + 128);
        if (v85)
        {
          while (v47 != v86)
          {
            v101 = v47;
            v103 = *(v47 - 6);
            v47 -= 3;
            v102 = v103;
            if (!v103)
            {
              v104 = v101 - 1;
              v105 = 2;
              goto LABEL_156;
            }
          }

          v102 = 0;
          v105 = 2;
          v104 = &__p[1];
        }

        else
        {
          v102 = 0;
          v105 = 2;
          v104 = v140;
        }

LABEL_156:
        v110 = 80;
      }

      else
      {
        v106 = 0uLL;
        *__p = 0u;
        if ((v81 & 1) == 0)
        {
          v105 = v81;
          goto LABEL_163;
        }

        v100 = *(a5 + 128);
        if (v85 == 1)
        {
          v105 = 1;
          v104 = v140;
        }

        else
        {
          while (v47 != v86)
          {
            v107 = v47;
            v108 = *(v47 - 6);
            v47 -= 3;
            if (v108 == 1)
            {
              v104 = v107 - 1;
              v105 = 1;
              goto LABEL_158;
            }
          }

          v105 = 1;
          v104 = &__p[1];
        }

LABEL_158:
        v110 = 72;
        v102 = 1;
      }

      v111 = *(a5 + v110);
      v112 = *v104 + v111;
      *__p = v100 * *v104 + v100 * v111;
      __p[1] = *&v112;
      v114 = *(a5 + 192);
      v113 = *(a5 + 200);
      v115 = *(v114 + 8);
      if (v115 != *(v113 + 8))
      {
        if (EndpointVAD2LogScope(void)::once != -1)
        {
          dispatch_once(&EndpointVAD2LogScope(void)::once, &__block_literal_global_6);
        }

        if (!EndpointVAD2LogScope(void)::scope)
        {
          v134 = MEMORY[0x1E69E9C10];
          goto LABEL_201;
        }

        v134 = *EndpointVAD2LogScope(void)::scope;
        if (*EndpointVAD2LogScope(void)::scope)
        {
LABEL_201:
          if (os_log_type_enabled(v134, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "EndpointDecisionLayer.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 261;
            v137 = "%25s:%-5d Internal decision history buffers must have the same size";
            v138 = v134;
            v139 = 18;
            goto LABEL_203;
          }
        }

        goto LABEL_204;
      }

      v116 = *(v114 + 12);
      *(*v114 + 4 * v116) = v105;
      *(v114 + 12) = (v116 + 1) % v115;
      v117 = *(v113 + 12);
      v106 = *__p;
      *(*v113 + 16 * v117) = *__p;
      *(v113 + 12) = (v117 + 1) % v115;
      v118 = *(a5 + 208);
      if (v118 + 1 < v115)
      {
        v115 = v118 + 1;
      }

      *(a5 + 208) = v115;
      *(a5 + 120) = v102;
LABEL_163:
      LODWORD(v153) = 0;
      HIDWORD(v153) = v105;
      v152 = v106;
      v119 = *(a5 + 212);
      if (v119 == 1)
      {
        v120 = *(a5 + 192);
        v121 = *(a5 + 200);
        v122 = *v120;
        v123 = *(v120 + 2);
        v124 = v123 - *(v120 + 3);
        v125 = *(v122 + 4 * (v123 + ~(v124 % v123)));
        v126 = *(a5 + 208);
        v150 = *(*v121 + 16 * (*(v121 + 8) + ~((*(v121 + 8) - *(v121 + 12)) % *(v121 + 8))));
        if (v126 >= 2)
        {
          v127 = v124 + 1;
          v128 = v126 - 1;
          v129 = -2;
          do
          {
            *&v130 = MRRingBuffer<DataTimeStamp>::GetSample(v121, v129);
            if (v131 > *(&v150 + 1))
            {
              v125 = *(v122 + 4 * (v123 + ~(v127 % v123)));
              *(&v130 + 1) = v131;
              v150 = v130;
            }

            ++v127;
            --v129;
            --v128;
          }

          while (v128);
        }

        v7 = a7;
        v8 = a6;
        if (!v126)
        {
          goto LABEL_177;
        }

        if (v125 != 2)
        {
          goto LABEL_177;
        }

        v132 = *(v148 + 8);
        if (v132 - *(a5 + 160) < *(a5 + 56) || v132 - *(&v150 + 1) < *(a5 + 64))
        {
          goto LABEL_177;
        }

        *(a5 + 212) = 2;
        LODWORD(v153) = 4;
        v106 = v150;
      }

      else
      {
        if (v119 || v105 != 1)
        {
          goto LABEL_177;
        }

        *(a5 + 212) = 1;
        LODWORD(v153) = 3;
      }

      v151 = v106;
LABEL_177:
      EndpointVAD2::DispatchObservers(v145, &v153 + 1, &v152, a4);
      result = EndpointVAD2::DispatchObservers(v145, &v153, &v151, a4);
      v147 += 3;
      v148 += 16;
    }

    while (v147 != a2[1]);
  }

  return result;
}

void sub_1DDD7E868(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (v36)
  {
    operator delete(v36);
  }

  _Unwind_Resume(exception_object);
}

uint64_t EndpointVAD2::DispatchObservers(uint64_t result, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  if ((*a2 - 1) <= 3)
  {
    v4 = result;
    v5 = *(result + 360);
    if (v5 != *(result + 368))
    {
      do
      {
        v9 = *v5++;
        result = (*(*v9 + 16))(v9, a2, a3, a4, 0, 0);
      }

      while (v5 != *(v4 + 368));
    }
  }

  return result;
}

void FeaturesDSPWrapper::ProcessAudio(FeaturesDSPWrapper *this, const AudioBufferList *a2, double a3, uint64_t a4)
{
  v4 = a4;
  v20[1] = *MEMORY[0x1E69E9840];
  *(this + 17) = a3;
  v7 = *this;
  v6 = *(this + 1);
  v8 = **this * a3;
  *(this + 16) = v8;
  v9 = *(v6 + 12);
  if (!v9)
  {
    *(this + 18) = v8;
    *(this + 19) = a3;
  }

  v10 = *(*(this + 14) + 48);
  v16 = a4;
  mData = a2->mBuffers[0].mData;
  v12 = *(v10 + 16);
  if (*(*&v7 + 120))
  {
    v15 = a4;
    memcpy(v12, mData, 4 * a4);
  }

  else
  {
    v15 = (*(**(*&v7 + 40) + 144))(*(*&v7 + 40), a4);
    (*(**(*&v7 + 40) + 32))(*(*&v7 + 40), mData, 0, v12, 0, &v16, &v15, 1, 1);
    v4 = v15;
  }

  *buf = v10;
  v20[0] = v10;
  if (*(*&v7 + 121))
  {
    LODWORD(v13) = v16;
    if (*(*&v7 + 20) != (*(*&v7 + 8) * v13 / **&v7))
    {
      __assert_rtn("ResampleAndRebufferAudio", "FeatureAudioAdaptor.cpp", 93, "ConvertToResampledBlockSize(inputNumSamples) == mOutputBlockSize");
    }

    (*(*&v7 + 136))(*(*&v7 + 128), v4, buf, v20);
  }

  else
  {
    BlockProcessor::Process((*&v7 + 48), v4, buf, v20);
  }

  if (v4 <= *(this + 30))
  {
    *(*(*(this + 14) + 48) + 12) = 4 * v4;
  }

  else
  {
    if (EndpointVAD2LogScope(void)::once != -1)
    {
      dispatch_once(&EndpointVAD2LogScope(void)::once, &__block_literal_global_6);
    }

    if (EndpointVAD2LogScope(void)::scope)
    {
      v14 = *EndpointVAD2LogScope(void)::scope;
      if (!*EndpointVAD2LogScope(void)::scope)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v14 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "FeaturesDSPWrapper.h";
      v18 = 1024;
      v19 = 143;
      _os_log_impl(&dword_1DDB85000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d Number of processed samples exceeds allocated buffer size.", buf, 0x12u);
    }
  }

LABEL_20:
  *(this + 40) = *(*(this + 1) + 12) - v9;
}

void VectorTimeSeriesSynchronizer<float>::GetSynchronizedVector(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v28 = *MEMORY[0x1E69E9840];
  *buf = 0;
  SampleTime = VectorTimeSeriesSynchronizer<float>::GetSampleTime(a1, a2, buf);
  *buf = 0;
  OriginalTimeSeconds = VectorTimeSeriesSynchronizer<float>::GetOriginalTimeSeconds(a1, a2, buf);
  v17 = 0;
  if (*(a1 + 12))
  {
    v8 = 0;
    v9 = SampleTime;
    v10 = SampleTime;
    do
    {
      if (v8 && VectorTimeSeriesSynchronizer<float>::GetSampleTime(a1, a2, &v17) != v10)
      {
        if (EndpointVAD2LogScope(void)::once != -1)
        {
          dispatch_once(&EndpointVAD2LogScope(void)::once, &__block_literal_global_6);
        }

        if (!EndpointVAD2LogScope(void)::scope)
        {
          v11 = MEMORY[0x1E69E9C10];
LABEL_11:
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = v17;
            v13 = VectorTimeSeriesSynchronizer<float>::GetSampleTime(a1, a2, &v17);
            *buf = 136316162;
            v19 = "FeatureTimeSeries.h";
            v20 = 1024;
            v21 = 521;
            v22 = 1024;
            v23 = v12;
            v24 = 1024;
            v25 = v9;
            v26 = 1024;
            v27 = v13;
            _os_log_impl(&dword_1DDB85000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Synchronization failure! One time series has outpaced the others: timeSeriesNo %i, synchSampleTime %u, GetSampleTime(eventNo, timeSeriesNo) = %u", buf, 0x24u);
          }

          goto LABEL_13;
        }

        v11 = *EndpointVAD2LogScope(void)::scope;
        if (*EndpointVAD2LogScope(void)::scope)
        {
          goto LABEL_11;
        }
      }

LABEL_13:
      (*(*a1 + 16))(a1, a2, &v17);
      v15 = *(a3 + 24);
      if (v17 >= ((*(a3 + 32) - v15) >> 2))
      {
        __assert_rtn("ElementAt", "FeatureTimeSeries.h", 77, "index < mArray.size()");
      }

      *(v15 + 4 * v17) = v14;
      v16 = VectorTimeSeriesSynchronizer<float>::GetOriginalTimeSeconds(a1, a2, &v17);
      if (OriginalTimeSeconds >= v16)
      {
        OriginalTimeSeconds = v16;
      }

      v8 = v17 + 1;
      v17 = v8;
    }

    while (v8 < *(a1 + 12));
  }

  *(a3 + 56) = OriginalTimeSeconds;
  *(a3 + 48) = OriginalTimeSeconds * *(a1 + 80);
}

double VectorTimeSeriesSynchronizer<float>::GetSampleTime(uint64_t a1, _DWORD *a2, unsigned int *a3)
{
  SynchronizationDelay = VectorTimeSeriesSynchronizer<float>::GetSynchronizationDelay(a1, *a3);
  v7 = *(*(a1 + 32) + 8 * *a3);
  v8 = *v7;
  v9 = *a2 - SynchronizationDelay;
  if (v9 < 0)
  {
    v10 = *(v7 + 2) + ~((*(v7 + 2) - v9 + ~*(v7 + 3)) % *(v7 + 2));
  }

  else
  {
    v10 = (*(v7 + 3) + v9) % *(v7 + 2);
  }

  return *(v8 + 8 * v10);
}

double VectorTimeSeriesSynchronizer<float>::GetOriginalTimeSeconds(uint64_t a1, _DWORD *a2, unsigned int *a3)
{
  SynchronizationDelay = VectorTimeSeriesSynchronizer<float>::GetSynchronizationDelay(a1, *a3);
  v7 = *(*(a1 + 40) + 8 * *a3);
  v8 = *v7;
  v9 = *a2 - SynchronizationDelay;
  if (v9 < 0)
  {
    v10 = *(v7 + 2) + ~((*(v7 + 2) - v9 + ~*(v7 + 3)) % *(v7 + 2));
  }

  else
  {
    v10 = (*(v7 + 3) + v9) % *(v7 + 2);
  }

  return *(v8 + 8 * v10);
}

void EndpointVAD2::DoneProcessingAudio(EndpointVAD2 *this, double a2)
{
  v23 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(&v15, "");
  if (*(this + 7) != 1)
  {
    std::string::__assign_external(&v15, "DoneProcessingAudio() should not be called with real time operation mode or on the real time thread.", 0x64uLL);
    if (EndpointVAD2LogScope(void)::once != -1)
    {
      dispatch_once(&EndpointVAD2LogScope(void)::once, &__block_literal_global_6);
    }

    if (EndpointVAD2LogScope(void)::scope)
    {
      v13 = *EndpointVAD2LogScope(void)::scope;
      if (!*EndpointVAD2LogScope(void)::scope)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v13 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = &v15;
      if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v14 = v15.__r_.__value_.__r.__words[0];
      }

      *__p = 136315650;
      *&__p[4] = "EndpointVAD2.cpp";
      *&__p[12] = 1024;
      *&__p[14] = 434;
      *&__p[18] = 2080;
      *&__p[20] = v14;
      _os_log_impl(&dword_1DDB85000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", __p, 0x1Cu);
    }

LABEL_24:
    abort();
  }

  v19 = 0;
  v20 = 0;
  v21 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v4 = *(*(this + 12) + 236);
  std::vector<std::vector<unsigned int>>::resize(&v19, v4);
  std::vector<DataTimeStamp>::resize(&v16, v4);
  v5 = *(this + 12);
  memset(__p, 0, 24);
  MixViterbiProd::decodeRaw(v5, v4, __p);
  v6 = *__p;
  v7 = *&__p[8];
  if (*__p != *&__p[8])
  {
    v8 = *(v5 + 184);
    v9 = *v8;
    v10 = *(v8 + 3);
    do
    {
      v11 = *v6++;
      *(v9 + 4 * v10) = v11;
      v10 = (*(v8 + 3) + 1) % *(v8 + 2);
      *(v8 + 3) = v10;
    }

    while (v6 != v7);
  }

  MixViterbiProd::convertRawStateSequenceToProd(v5, __p, &v19);
  MixViterbiProd::retrieveTimeStamps(v5, 1 - v4, 0, &v16);
  if (*__p)
  {
    *&__p[8] = *__p;
    operator delete(*__p);
  }

  v12 = v16;
  if (v20 != v19 && v17 != v16)
  {
    *__p = *(this + 2) * a2;
    *&__p[8] = a2;
    EndpointVAD2::UpdateAndDispatchDecisions(this, &v19, &v16, __p, *(this + 13), *(this + 6), this + 304);
  }

  if (v12)
  {
    operator delete(v12);
  }

  *__p = &v19;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](__p);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }
}

void sub_1DDD7F1F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, char *a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  a22 = &a19;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a22);
  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

void EndpointVAD2::GetInterleavedFeaturesFromQueue(float **a1, int a2, int a3, uint64_t a4)
{
  std::vector<float>::resize(a1, (a3 * a2));
  if (a3)
  {
    v8 = 0;
    v9 = *a1;
    do
    {
      if (a2)
      {
        v10 = 0;
        do
        {
          v11 = v10;
          v12 = v8 - a3;
          *v9++ = (*(*a4 + 16))(a4, &v12, &v11);
          ++v10;
        }

        while (a2 != v10);
      }

      ++v8;
    }

    while (v8 != a3);
  }
}

uint64_t HRTFXTCSpatializer::getLatencyFrames(HRTFXTCSpatializer *this)
{
  v2 = *(this + 44);
  if (v2)
  {
    result = *v2;
  }

  else
  {
    v4 = *(this + 40);
    if (v4)
    {
      LODWORD(result) = (*(**(v4 + 24) + 80))(*(v4 + 24));
      if (*(v4 + 172))
      {
        result = (result + 5);
      }

      else
      {
        result = result;
      }
    }

    else
    {
      result = 0;
    }
  }

  v5 = *(this + 41);
  if (*(this + 42) != v5)
  {
    v6 = *v5;
    if (v6)
    {
      v7 = *(v6 + 4) - 1;
      if (v7 > 6)
      {
        v8 = 0;
      }

      else
      {
        v8 = dword_1DE0E9128[v7];
      }

      return (v8 + result);
    }
  }

  return result;
}

float SpatializerWithInHeadRendering::getDryMix(SpatializerWithInHeadRendering *this)
{
  v2 = (*(*this + 352))(this);
  v3 = *(*(this + 6) + 8);
  v5 = *(v2 + 4);
  v4 = *(v2 + 8);
  if (v5 >= v4)
  {
    v10 = v4 <= v3;
    result = 0.0;
    if (!v10)
    {
      return 1.0;
    }
  }

  else
  {
    v6 = (v3 - v5) / (v4 - v5);
    if (v6 <= 1.0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 1.0;
    }

    v8 = 1.0 - v7;
    if (v6 >= 0.0)
    {
      return v8;
    }

    else
    {
      return 1.0;
    }
  }

  return result;
}

uint64_t HRTFXTCSpatializer::processAccumulating(HRTFXTCSpatializer *this, const float *a2, float *const *a3, int a4, float *const *a5, int a6, vDSP_Length a7, __n128 a8, IR::ComplexDataCircBuffer *a9)
{
  v115 = *MEMORY[0x1E69E9840];
  if (a6 == a4)
  {
    if (*(this + 16))
    {
      v10 = a8.n128_f32[0];
      LODWORD(v12) = a6;
      if (*(this + 58))
      {
        v14 = atomic_load(this + 290);
        if (v14)
        {
          v15 = *(this + 4);
          if (v15)
          {
            if (applesauce::CF::details::has_key<__CFString const*&>(v15, kXTCSourceExtentIRCustomURLParamName))
            {
              v16 = *(this + 4);
              if (!v16)
              {
                exception = __cxa_allocate_exception(0x10uLL);
                applesauce::CF::construct_error(exception);
              }

              v17 = *(this + 58);
              v18 = *(this + 2);
              v19 = *(this + 3);
              applesauce::CF::details::find_at_key_or_optional<applesauce::CF::URLRef,__CFString const*&>(&__p, v16, kXTCSourceExtentIRCustomURLParamName);
              cf = __p.__r_.__value_.__r.__words[0];
              __p.__r_.__value_.__r.__words[0] = 0;
              v20 = (**v17)(v17, v19, 512, 512, &cf, 0, 0, v18);
              if (cf)
              {
                CFRelease(cf);
              }

              if (!v20)
              {
                *(this + 288) = 1;
              }

              atomic_store(0, this + 290);
            }
          }
        }
      }

      v21 = *(*(this + 40) + 24);
      v22 = v21[42];
      if (v22 >= v12)
      {
        v12 = v12;
      }

      else
      {
        v12 = v22;
      }

      v23 = *(this + 6);
      a8.n128_u32[0] = *v23;
      v24 = *(v23 + 1);
      v25 = *(v23 + 2);
      if ((*(this + 288) & 1) != 0 || *(this + 17) == 1)
      {
        *(this + 288) = 0;
        (*(*v21 + 48))(v21, 0, a8);
        (*(**(*(this + 40) + 24) + 48))(*(*(this + 40) + 24), 1, v24);
        (*(**(*(this + 40) + 24) + 48))(*(*(this + 40) + 24), 2, v25);
        (*(**(*(this + 40) + 24) + 48))(*(*(this + 40) + 24), 5, *(*(this + 6) + 132));
        (*(**(*(this + 40) + 24) + 48))(*(*(this + 40) + 24), 7, *(*(this + 6) + 136));
        v26 = *(this + 58);
        if (v26 && v26[208] == 1)
        {
          v27 = *(this + 6);
          v28 = fabsf(*(v27 + 12)) >= 0.00000011921 || fabsf(*(v27 + 16)) >= 0.00000011921;
          (*(*v26 + 56))(v26, v28);
          v39.n128_u64[0] = 0;
          if (*(*(this + 58) + 209) == 1)
          {
            v40 = *(this + 6);
            v39.n128_u32[0] = *(v40 + 12);
            if (v39.n128_f32[0] < *(v40 + 16))
            {
              v39.n128_u32[0] = *(v40 + 16);
            }
          }

          (*(**(*(this + 40) + 24) + 48))(*(*(this + 40) + 24), 8, v39);
          v41 = fabsf(*(this + 19)) >= 0.00000011921 || fabsf(*(this + 20)) >= 0.00000011921;
          SourceExtentProcessor::updateExtentParameters(*(this + 58), *(*(this + 6) + 12), *(*(this + 6) + 16));
          (*(**(this + 58) + 40))(*(this + 58), *(this + 17), v41);
        }

        else
        {
          (*(**(*(this + 40) + 24) + 48))(*(*(this + 40) + 24), 8, 0.0);
          v33 = *(this + 58);
          if (v33)
          {
            (*(*v33 + 56))(v33, 0);
          }
        }

        *(this + 76) = *(*(this + 6) + 12);
      }

      v42 = (*(*this + 352))(this);
      v43 = *(*(this + 6) + 8);
      v45 = *(v42 + 4);
      v44 = *(v42 + 8);
      if (v45 >= v44)
      {
        v50 = v44 <= v43;
        v49 = 0.0;
        if (!v50)
        {
          v49 = 1.0;
        }
      }

      else
      {
        v46 = (v43 - v45) / (v44 - v45);
        if (v46 <= 1.0)
        {
          v47 = v46;
        }

        else
        {
          v47 = 1.0;
        }

        v48 = 1.0 - v47;
        if (v46 >= 0.0)
        {
          v49 = v48;
        }

        else
        {
          v49 = 1.0;
        }
      }

      v104 = v49;
      v51 = (*(*this + 352))(this);
      v52.n128_u32[0] = *(*(this + 6) + 8);
      v53 = *v51;
      v54 = v51[1];
      if (*v51 <= v52.n128_f32[0])
      {
        v55 = 0.0;
      }

      else
      {
        v55 = 1.0;
      }

      v56 = (v52.n128_f32[0] - v53) / (v54 - v53);
      if (v56 <= 1.0)
      {
        v57 = v56;
      }

      else
      {
        v57 = 1.0;
      }

      v58 = 1.0 - v57;
      if (v56 >= 0.0)
      {
        v52.n128_f32[0] = v58;
      }

      else
      {
        v52.n128_f32[0] = 1.0;
      }

      if (v53 < v54)
      {
        v59 = v52.n128_f32[0];
      }

      else
      {
        v59 = v55;
      }

      v60 = (*(*this + 352))(this, v52);
      v61 = *(this + 6);
      v62 = *(v61 + 8);
      v63.n128_u32[0] = *v60;
      v64 = *(v60 + 8);
      if (v64 <= *v60)
      {
        if (v63.n128_f32[0] <= v62)
        {
          v67 = 1.0;
        }

        else
        {
          v67 = 0.0;
        }
      }

      else
      {
        v65 = (v62 - v63.n128_f32[0]) / (v64 - v63.n128_f32[0]);
        if (v65 <= 1.0)
        {
          v66 = v65;
        }

        else
        {
          v66 = 1.0;
        }

        if (v65 >= 0.0)
        {
          v67 = v66;
        }

        else
        {
          v67 = 0.0;
        }
      }

      v68 = (v67 + ((1.0 - v67) * *(v60 + 12))) * v10;
      v69 = 0.0;
      if (*(v61 + 82))
      {
        v69 = v68;
      }

      v102 = v69;
      v103 = (1.0 - v104) * v69;
      if (v59 >= 1.0 && v103 <= 0.0 && *(this + 97) <= 0.0 && *(this + 107) >= *(this + 5))
      {
        v71 = 0;
        v74 = 0;
        v101 = 0;
      }

      else
      {
        v70 = *(this + 58);
        if (v70 && *(v70 + 208) == 1)
        {
          if (*(v70 + 212))
          {
            v71 = 1;
          }

          else
          {
            v71 = *(v70 + 209);
          }
        }

        else
        {
          v71 = 0;
        }

        v72 = *(this + 40);
        v73 = 3000.0;
        if (*(this + 73))
        {
          v73 = -1.0;
        }

        v72[40] = v73;
        __p.__r_.__value_.__r.__words[0] = a2;
        v101 = IR::IRProcessor::processMultipleInputs(v72, &__p, a5, 1u, v12, a7, v103, 0);
        v74 = 1;
      }

      if (*(this + 44))
      {
        IR::FixedIntegerDelay<float>::process();
      }

      if (v12)
      {
        v75 = 0;
        v76 = v104 * v102;
        v63.n128_u64[0] = 1.0;
        do
        {
          v77 = a5[v75];
          if (v71)
          {
            v78 = *(this + 58);
            __p.__r_.__value_.__r.__words[0] = *(this + 59);
            v79 = -1.0;
            if (!*(this + 73))
            {
              v79 = 3000.0;
            }

            v80 = v78[20];
            v81 = v78[21];
            while (v80 != v81)
            {
              if (*v80)
              {
                *(*v80 + 160) = v79;
              }

              v80 += 8;
            }

            (*(*v78 + 8))(v78, v77, &__p, v75, 1, a7, 1.0, v63);
            (*(**(this + 58) + 24))(*(this + 58), v77, *(this + 59), v75, 0, a7);
            v77 = *(this + 59);
          }

          if (v76 <= 0.0 && (*(this + 98) * *(this + 96)) <= 0.0)
          {
            *(*(this + 45) + 4 * v75) = 0;
          }

          else
          {
            v82 = *(this + 55);
            if (*(this + 56) == v82)
            {
              v83 = ((1.0 - v59) * 0.70711) + (v59 * *(*(*(this + 6) + 144) + 4 * v75));
            }

            else
            {
              v83 = v59 * *(v82 + 4 * v75);
            }

            v84 = v76 * v83;
            *&__p.__r_.__value_.__l.__data_ = v84;
            if ((*(this + 17) & 1) != 0 || (v85 = (*(this + 45) + 4 * v75), v84 == *v85))
            {
              if (v74)
              {
                MEMORY[0x1E12BE8F0](a2, 1, &__p, v77, 1, v77, 1, a7);
              }

              else
              {
                MEMORY[0x1E12BE940](a2, 1, &__p, v77, 1, a7);
              }
            }

            else if (a7)
            {
              *&v109.__r_.__value_.__l.__data_ = (v84 - *v85) / a7;
              if (v74)
              {
                vDSP_vrampmuladd(a2, 1, v85, &v109, v77, 1, a7);
              }

              else
              {
                vDSP_vrampmul(a2, 1, v85, &v109, v77, 1, a7);
              }
            }

            *(*(this + 45) + 4 * v75) = __p.__r_.__value_.__l.__data_;
          }

          v86 = *(this + 40);
          if (*(*(v86 + 24) + 164))
          {
            v88 = v86 + 112;
            v87 = *(v86 + 112);
            v89 = 0.0;
            if (v75 < (*(v88 + 8) - v87) >> 2)
            {
              v89 = *(v87 + 4 * v75);
            }

            v90 = (1.0 - v59) * v89;
            v91 = *(*(this + 41) + 8 * v75);
            if (*(this + 73))
            {
              v92 = 1.0;
            }

            else
            {
              v92 = -0.00033333;
            }

            *(v91 + 96) = expf(v92);
            IR::DelayLine<float>::setDelay(v91, v90);
            v93 = *(*(this + 41) + 8 * v75);
            __p.__r_.__value_.__r.__words[0] = v77;
            IR::DelayLine<float>::process(v93, v77, &__p, a7);
          }

          MEMORY[0x1E12BE5D0](v77, 1, a3[v75], 1, a3[v75], 1, a7);
          ++v75;
        }

        while (v75 != v12);
      }

      if (v71)
      {
        (*(**(this + 58) + 48))(*(this + 58), a7);
      }

      *(this + 146) = *(*(this + 6) + 82);
      if (v104 >= 1.0 && *(this + 96) >= 1.0)
      {
        v94 = *(this + 107);
        v95 = *(this + 5);
        if (v94 < v95)
        {
          v96 = __CFADD__(v94, a7);
          v97 = v94 + a7;
          if (v96)
          {
            v97 = -1;
          }

          *(this + 107) = v97;
          if (v97 >= v95)
          {
            v98 = *(this + 58);
            if (v98)
            {
              (*(*v98 + 32))(v98, 0);
            }
          }
        }
      }

      else
      {
        *(this + 107) = 0;
      }

      *(this + 96) = v104;
      *(this + 97) = v103;
      *(this + 98) = v102;
      *(this + 17) = 0;
      return v101;
    }

    else
    {
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v32 = getAUSMV2Log(void)::gLog;
      if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
      {
        std::string::basic_string[abi:ne200100]<0>(&v108, "HRTFXTCSpatializer");
        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v109, &v108, "::");
        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, &v109, "processAccumulating");
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 136315138;
        v112 = p_p;
        _os_log_debug_impl(&dword_1DDB85000, v32, OS_LOG_TYPE_DEBUG, "%s: ERROR: not initialized", buf, 0xCu);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v109.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v108.__r_.__value_.__l.__data_);
        }
      }

      return 4294956429;
    }
  }

  else
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v30 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
    {
      std::string::basic_string[abi:ne200100]<0>(&v108, "HRTFXTCSpatializer");
      v34 = std::string::append(&v108, "::", 2uLL);
      v35 = *&v34->__r_.__value_.__l.__data_;
      v109.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
      *&v109.__r_.__value_.__l.__data_ = v35;
      v34->__r_.__value_.__l.__size_ = 0;
      v34->__r_.__value_.__r.__words[2] = 0;
      v34->__r_.__value_.__r.__words[0] = 0;
      v36 = std::string::append(&v109, "processAccumulating", 0x13uLL);
      v37 = *&v36->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v36->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v37;
      v36->__r_.__value_.__l.__size_ = 0;
      v36->__r_.__value_.__r.__words[2] = 0;
      v36->__r_.__value_.__r.__words[0] = 0;
      v38 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v38 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136315394;
      v112 = v38;
      v113 = 1024;
      v114 = a4;
      _os_log_debug_impl(&dword_1DDB85000, v30, OS_LOG_TYPE_DEBUG, "%s: ERROR: cannot process with %d output channels", buf, 0x12u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v109.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v108.__r_.__value_.__l.__data_);
      }
    }

    return 4294956445;
  }
}

BOOL applesauce::CF::details::has_key<__CFString const*&>(CFDictionaryRef theDict, const void *a2)
{
  result = 0;
  if (theDict)
  {
    if (a2)
    {
      return CFDictionaryContainsKey(theDict, a2) != 0;
    }
  }

  return result;
}

void *applesauce::CF::DictionaryRef_proxy::DictionaryRef_proxy(void *this, const applesauce::CF::DictionaryRef *a2)
{
  *this = a2;
  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  return this;
}

void applesauce::CF::details::find_at_key_or_optional<applesauce::CF::URLRef,__CFString const*&>(_BYTE *a1, CFDictionaryRef theDict, const void *a3)
{
  v4 = applesauce::CF::details::at_key<__CFString const*&>(theDict, a3);
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  CFRetain(v4);
  v6 = CFGetTypeID(v5);
  if (v6 != CFURLGetTypeID())
  {
    CFRelease(v5);
LABEL_5:
    v7 = 0;
    *a1 = 0;
    goto LABEL_6;
  }

  *a1 = v5;
  v7 = 1;
LABEL_6:
  a1[8] = v7;
}

uint64_t std::optional<applesauce::CF::URLRef>::~optional(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

IR::IRProcessor *HRTFXTCSpatializer::reset(IR::IRProcessor **this)
{
  IR::IRProcessor::reset(this[40]);
  v2 = this[58];
  if (v2)
  {
    (*(*v2 + 32))(v2, 1);
  }

  v3 = this[41];
  v4 = this[42];
  while (v3 != v4)
  {
    if (*v3)
    {
      IR::DelayLine<float>::reset(*v3);
    }

    ++v3;
  }

  result = this[44];
  if (result)
  {
    IR::FixedIntegerDelay<float>::reset();
  }

  *(this + 17) = 1;
  *(this + 146) = *(this[6] + 82);
  *(this + 107) = -1;
  return result;
}

uint64_t HRTFXTCSpatializer::initialize(HRTFXTCSpatializer *this, float a2, unsigned int a3, uint64_t a4)
{
  v85 = *MEMORY[0x1E69E9840];
  if (getAUSMV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
  }

  v8 = getAUSMV2Log(void)::gLog;
  if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
  {
    std::string::basic_string[abi:ne200100]<0>(&v78, "HRTFXTCSpatializer");
    v38 = std::string::append(&v78, "::", 2uLL);
    v39 = *&v38->__r_.__value_.__l.__data_;
    v79.__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
    *&v79.__r_.__value_.__l.__data_ = v39;
    v38->__r_.__value_.__l.__size_ = 0;
    v38->__r_.__value_.__r.__words[2] = 0;
    v38->__r_.__value_.__r.__words[0] = 0;
    v40 = std::string::append(&v79, "initialize", 0xAuLL);
    v41 = *&v40->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v40->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v41;
    v40->__r_.__value_.__l.__size_ = 0;
    v40->__r_.__value_.__r.__words[2] = 0;
    v40->__r_.__value_.__r.__words[0] = 0;
    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
    *(buf.__r_.__value_.__r.__words + 4) = p_p;
    _os_log_debug_impl(&dword_1DDB85000, v8, OS_LOG_TYPE_DEBUG, "%s: Initializing.", &buf, 0xCu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v79.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v78.__r_.__value_.__l.__data_);
    }
  }

  *(this + 2) = a2;
  *(this + 3) = a4;
  v10 = this + 328;
  v11 = *(this + 41);
  v12 = *(this + 42);
  v13 = v11;
  if (v12 != v11)
  {
    do
    {
      std::unique_ptr<IR::DelayLine<float>>::reset[abi:ne200100](--v12, 0);
    }

    while (v12 != v11);
    v13 = *v10;
  }

  *(this + 42) = v11;
  v14 = v11 - v13;
  if (a3 <= v14)
  {
    if (a3 < v14)
    {
      v20 = &v13[a3];
      while (v11 != v20)
      {
        std::unique_ptr<IR::DelayLine<float>>::reset[abi:ne200100](--v11, 0);
      }

      *(this + 42) = v20;
    }
  }

  else
  {
    v15 = a3 - v14;
    v16 = *(this + 43);
    if (v15 > (v16 - v11) >> 3)
    {
      v70 = this + 328;
      v17 = v16 - v13;
      v18 = v17 >> 2;
      if (v17 >> 2 <= a3)
      {
        v18 = a3;
      }

      if (v17 >= 0x7FFFFFFFFFFFFFF8)
      {
        v19 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v19 = v18;
      }

      std::allocator<std::complex<float> *>::allocate_at_least[abi:ne200100](v19);
    }

    bzero(v11, 8 * v15);
    *(this + 42) = &v11[v15];
  }

  LODWORD(__p.__r_.__value_.__l.__data_) = 0;
  std::vector<float>::assign(this + 45, a3, &__p, v9);
  if (*(this + 432))
  {
    v21 = 0x10000000080;
  }

  else
  {
    v21 = 128;
  }

  v22 = IR::IRProcessor::initialize(*(this + 40), a2, a4, v21);
  if (v22)
  {
    std::unique_ptr<SourceExtentProcessor>::reset[abi:ne200100](this + 58, 0);
    return v22;
  }

  (*(**(*(this + 40) + 24) + 64))(&cf);
  v23 = *(*(this + 40) + 24);
  if (!v23[41])
  {
    (*(*v23 + 72))(v23);
    if (cf)
    {
      v24 = applesauce::CF::details::at_key<__CFString const*>(cf, @"XTCModelingDelay");
      if (v24)
      {
        applesauce::CF::convert_as<float,0>(v24);
      }
    }

    (*(**(*(this + 40) + 24) + 80))(*(*(this + 40) + 24));
    operator new();
  }

  if (a3)
  {
    operator new();
  }

  std::unique_ptr<IR::FixedIntegerDelay<float>>::reset[abi:ne200100](this + 44, 0);
  std::vector<float>::resize(this + 50, a4);
  Spatializer::initialize(this, v25, 0);
  v26 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v76 = v26;
  std::string::basic_string[abi:ne200100]<0>(&__p, "CounteractRotationShader");
  *(this + 424) = IR::IRData::getBooleanFromDictionary();
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v76)
  {
    CFRelease(v76);
  }

  if (cf && applesauce::CF::details::has_key<__CFString const*>(cf, @"BypassMatrix"))
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v27 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
    {
      std::string::basic_string[abi:ne200100]<0>(&v78, "HRTFXTCSpatializer");
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v79, &v78, "::");
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, &v79, "initialize");
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v63 = &__p;
      }

      else
      {
        v63 = __p.__r_.__value_.__r.__words[0];
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
      *(buf.__r_.__value_.__r.__words + 4) = v63;
      _os_log_debug_impl(&dword_1DDB85000, v27, OS_LOG_TYPE_DEBUG, "%s: Custom Bypass Matrix found in IR file", &buf, 0xCu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v79.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v78.__r_.__value_.__l.__data_);
      }
    }

    Value = CFDictionaryGetValue(cf, @"BypassMatrix");
    v29 = Value;
    if (Value)
    {
      CFRetain(Value);
    }

    v75 = v29;
    applesauce::CF::TypeRef::operator applesauce::CF::DictionaryRef(&v74, &v75);
    if (!v74)
    {
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v43 = getAUSMV2Log(void)::gLog;
      if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
      {
        std::string::basic_string[abi:ne200100]<0>(&v78, "HRTFXTCSpatializer");
        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v79, &v78, "::");
        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, &v79, "initialize");
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v44 = &__p;
        }

        else
        {
          v44 = __p.__r_.__value_.__r.__words[0];
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
        *(buf.__r_.__value_.__r.__words + 4) = v44;
        _os_log_debug_impl(&dword_1DDB85000, v43, OS_LOG_TYPE_DEBUG, "%s: Custom Bypass Matrix was not loaded; invalid dictionary", &buf, 0xCu);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v79.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v78.__r_.__value_.__l.__data_);
        }
      }

      goto LABEL_116;
    }

    std::to_string(&v79, *(*(this + 6) + 136));
    v30 = std::string::insert(&v79, 0, "ID", 2uLL);
    v31 = *&v30->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v31;
    v30->__r_.__value_.__l.__size_ = 0;
    v30->__r_.__value_.__r.__words[2] = 0;
    v30->__r_.__value_.__r.__words[0] = 0;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v32 = &__p;
    }

    else
    {
      v32 = __p.__r_.__value_.__r.__words[0];
    }

    if (v32)
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      v73 = CFStringCreateWithBytes(0, v32, size, 0x8000100u, 0);
      if (!v73)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }

      if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v73 = 0;
      if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
      {
LABEL_57:
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v79.__r_.__value_.__l.__data_);
    }

    v34 = CFDictionaryGetValue(v74, v73);
    v35 = v34;
    if (v34)
    {
      CFRetain(v34);
      v72 = v35;
      v36 = CFGetTypeID(v35);
      if (v36 != CFArrayGetTypeID())
      {
        v37 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v37, "Could not construct");
      }
    }

    else
    {
      v72 = 0;
    }

    applesauce::CF::ArrayRef::from_get(&v71, v35);
    if (v71)
    {
      applesauce::CF::ArrayRef::from_get(&v79, v71);
      if (!v79.__r_.__value_.__r.__words[0])
      {
        v67 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v67, "Could not construct");
      }

      applesauce::CF::convert_as<std::vector<float>,0>(&__p, v79.__r_.__value_.__l.__data_);
      if (v79.__r_.__value_.__r.__words[0])
      {
        CFRelease(v79.__r_.__value_.__l.__data_);
      }

      if (v69 == 1)
      {
        v45 = (this + 440);
        v46 = *(this + 55);
        if (v46)
        {
          *(this + 56) = v46;
          operator delete(v46);
          *v45 = 0;
          *(this + 56) = 0;
          *(this + 57) = 0;
        }

        data = __p.__r_.__value_.__l.__data_;
        *v45 = *&__p.__r_.__value_.__l.__data_;
        *(this + 57) = *(&__p.__r_.__value_.__l + 2);
        memset(&__p, 0, sizeof(__p));
        LODWORD(v79.__r_.__value_.__l.__data_) = 0;
        std::vector<float>::resize(this + 55, a3, &v79, data);
        v48 = __p.__r_.__value_.__r.__words[0];
        if (!__p.__r_.__value_.__r.__words[0])
        {
          goto LABEL_110;
        }
      }

      else
      {
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v52 = getAUSMV2Log(void)::gLog;
        if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_110;
        }

        std::string::basic_string[abi:ne200100]<0>(&buf, "HRTFXTCSpatializer");
        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v78, &buf, "::");
        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v79, &v78, "initialize");
        if ((v79.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v64 = &v79;
        }

        else
        {
          v64 = v79.__r_.__value_.__r.__words[0];
        }

        v65 = *(*(this + 6) + 136);
        *v81 = 136315394;
        v82 = v64;
        v83 = 1024;
        v84 = v65;
        _os_log_debug_impl(&dword_1DDB85000, v52, OS_LOG_TYPE_DEBUG, "%s: Custom Bypass Matrix gain vector was not found for input channel label = %u", v81, 0x12u);
        if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v79.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v78.__r_.__value_.__l.__data_);
        }

        if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_110;
        }

        v48 = buf.__r_.__value_.__r.__words[0];
      }
    }

    else
    {
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v49 = getAUSMV2Log(void)::gLog;
      if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_110;
      }

      std::string::basic_string[abi:ne200100]<0>(&v78, "HRTFXTCSpatializer");
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v79, &v78, "::");
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, &v79, "initialize");
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v50 = &__p;
      }

      else
      {
        v50 = __p.__r_.__value_.__r.__words[0];
      }

      v51 = *(*(this + 6) + 136);
      LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
      *(buf.__r_.__value_.__r.__words + 4) = v50;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v51;
      _os_log_debug_impl(&dword_1DDB85000, v49, OS_LOG_TYPE_DEBUG, "%s: Custom Bypass Matrix was not found for input channel label = %u", &buf, 0x12u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v79.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v78.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_110;
      }

      v48 = v78.__r_.__value_.__r.__words[0];
    }

    operator delete(v48);
LABEL_110:
    if (v71)
    {
      CFRelease(v71);
    }

    if (v35)
    {
      CFRelease(v35);
    }

    if (v73)
    {
      CFRelease(v73);
    }

LABEL_116:
    if (v74)
    {
      CFRelease(v74);
    }

    if (v29)
    {
      CFRelease(v29);
    }
  }

  v53 = *(this + 5);
  if (v53)
  {
    v54 = applesauce::CF::details::find_at_key_or_optional<BOOL,__CFString const*&>(v53, kOptionalFeatureSourceExtent);
    v22 = 0;
    if (v54 >= 0x100u && (v54 & 1) != 0)
    {
      std::vector<float>::resize(this + 59, a4);
      IR::getPresetDataAttributes();
      v55 = *(this + 4);
      if (v55)
      {
        applesauce::CF::details::find_at_key_or_optional<applesauce::CF::URLRef,__CFString const*&>(&v79, v55, kXTCSourceExtentIRCustomURLParamName);
        if (v79.__r_.__value_.__s.__data_[8] == 1)
        {
          v56 = __p.__r_.__value_.__r.__words[0];
          __p.__r_.__value_.__r.__words[0] = v79.__r_.__value_.__r.__words[0];
          if (v79.__r_.__value_.__r.__words[0])
          {
            CFRetain(v79.__r_.__value_.__l.__data_);
          }

          if (v56)
          {
            CFRelease(v56);
          }

          if (v79.__r_.__value_.__r.__words[0])
          {
            CFRelease(v79.__r_.__value_.__l.__data_);
          }
        }
      }

      operator new();
    }
  }

  else
  {
    v22 = 0;
  }

  TailLength = IR::IRProcessor::getTailLength(*(this + 40));
  v58 = *(this + 58);
  if (v58)
  {
    LODWORD(v58) = BypassableIRProcessor::getTailLength(v58);
  }

  *(this + 5) = v58 + TailLength;
  v59 = *(*(*(this + 40) + 24) + 164);
  if (v59)
  {
    v60 = *(**v10 + 4) - 1;
    if (v60 > 6)
    {
      v61 = 0;
    }

    else
    {
      v61 = dword_1DE0E9128[v60];
    }

    *(this + 5) = v61 + v58 + TailLength + v59;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v22;
}

void sub_1DDD81334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, const void *a31, const void *a32, const void *a33, const void *a34, const void *a35, uint64_t a36, const void *a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a43 < 0)
  {
    operator delete(__p);
  }

  if (*(v43 - 153) < 0)
  {
    operator delete(*(v43 - 176));
  }

  applesauce::CF::ArrayRef::~ArrayRef(&a31);
  applesauce::CF::TypeRef::~TypeRef(&a32);
  applesauce::CF::StringRef::~StringRef(&a33);
  applesauce::CF::DictionaryRef::~DictionaryRef(&a34);
  applesauce::CF::TypeRef::~TypeRef(&a35);
  applesauce::CF::DictionaryRef::~DictionaryRef(&a37);
  _Unwind_Resume(a1);
}

const void *applesauce::CF::TypeRef::operator applesauce::CF::DictionaryRef(void *a1, const void **a2)
{
  result = *a2;
  if (!*a2)
  {
    goto LABEL_6;
  }

  v5 = CFGetTypeID(result);
  result = CFDictionaryGetTypeID();
  if (v5 != result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  v6 = *a2;
  if (v6)
  {
    CFRetain(v6);
    *a1 = v6;
    v7 = CFGetTypeID(v6);
    result = CFDictionaryGetTypeID();
    if (v7 != result)
    {
      v8 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v8, "Could not construct");
    }
  }

  else
  {
LABEL_6:
    *a1 = 0;
  }

  return result;
}

void sub_1DDD81758(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

void *applesauce::CF::ArrayRef::from_get(void *this, CFTypeRef cf)
{
  v2 = this;
  if (cf)
  {
    CFRetain(cf);
    *v2 = cf;
    v4 = CFGetTypeID(cf);
    this = CFArrayGetTypeID();
    if (v4 != this)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  else
  {
    *this = 0;
  }

  return this;
}

void sub_1DDD8182C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFArray const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<SourceExtentProcessor>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    *v2 = &unk_1F5931B68;
    v3 = (v2 + 184);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v3);
    v3 = (v2 + 160);
    std::vector<std::unique_ptr<IR::IRProcessor>>::__destroy_vector::operator()[abi:ne200100](&v3);
    IR::IRDataAttributes::~IRDataAttributes((v2 + 8));
    return MEMORY[0x1E12BD160](v2, 0x10E1C404CC6A523);
  }

  return result;
}

IR::IRProcessor *BypassableIRProcessor::getTailLength(BypassableIRProcessor *this)
{
  if (*(this + 208) != 1)
  {
    return 0;
  }

  result = **(this + 20);
  if (result)
  {
    return IR::IRProcessor::getTailLength(result);
  }

  return result;
}

uint64_t std::__split_buffer<std::unique_ptr<IR::DelayLine<float>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    std::unique_ptr<IR::DelayLine<float>>::reset[abi:ne200100]((i - 8), 0);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void HRTFXTCSpatializer::~HRTFXTCSpatializer(HRTFXTCSpatializer *this)
{
  HRTFXTCSpatializer::~HRTFXTCSpatializer(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5921538;
  v2 = *(this + 59);
  if (v2)
  {
    *(this + 60) = v2;
    operator delete(v2);
  }

  std::unique_ptr<SourceExtentProcessor>::reset[abi:ne200100](this + 58, 0);
  v3 = *(this + 55);
  if (v3)
  {
    *(this + 56) = v3;
    operator delete(v3);
  }

  v4 = *(this + 50);
  if (v4)
  {
    *(this + 51) = v4;
    operator delete(v4);
  }

  v5 = *(this + 45);
  if (v5)
  {
    *(this + 46) = v5;
    operator delete(v5);
  }

  std::unique_ptr<IR::FixedIntegerDelay<float>>::reset[abi:ne200100](this + 44, 0);
  v6 = (this + 328);
  std::vector<std::unique_ptr<IR::DelayLine<float>>>::__destroy_vector::operator()[abi:ne200100](&v6);
  std::unique_ptr<IR::IRProcessor>::reset[abi:ne200100](this + 40, 0);

  Spatializer::~Spatializer(this);
}

uint64_t SpatializerWithInHeadRendering::SpatializerWithInHeadRendering(uint64_t a1, uint64_t a2, std::__shared_weak_count *a3)
{
  v6[0] = a2;
  v6[1] = a3;
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
    Spatializer::Spatializer(a1, v6);
    std::__shared_weak_count::__release_shared[abi:ne200100](a3);
  }

  else
  {
    Spatializer::Spatializer(a1, v6);
  }

  *a1 = &unk_1F5935F38;
  *(a1 + 300) = xmmword_1DE09CC30;
  return a1;
}

void std::__shared_ptr_emplace<IR::DataLoaderSourceWithSizeAverage>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5923D50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12BD160);
}

void SpatializerWithInHeadRendering::~SpatializerWithInHeadRendering(SpatializerWithInHeadRendering *this)
{
  Spatializer::~Spatializer(this);

  JUMPOUT(0x1E12BD160);
}

void *std::vector<DSPComplex>::vector[abi:ne200100](void *result, unint64_t a2)
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

void sub_1DDD81C48(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MCLP_ORNLMS_BLAS::ProcessBufferList(MCLP_ORNLMS_BLAS *this, const AudioBufferList *a2, AudioBufferList *a3, char a4)
{
  if (*(this + 7))
  {
    v8 = 0;
    p_mData = &a2->mBuffers[0].mData;
    v10 = 0.0;
    do
    {
      v11 = *p_mData;
      p_mData += 2;
      v10 = cblas_sdsdot(2 * *(this + 8) - 2, v10, v11, 1, v11, 1);
      ++v8;
      v12 = *(this + 7);
    }

    while (v8 < v12);
    v13 = v12 == 0;
  }

  else
  {
    v10 = 0.0;
    v13 = 1;
  }

  v14 = *(this + 4);
  *(this + 336) = 0;
  if ((LODWORD(v10) & 0x7FFFFFFFu) > 0x7F7FFFFF || v10 <= v14)
  {
    if (!v13)
    {
      v16 = 0;
      v17 = &a2->mBuffers[0].mData;
      v18 = &a3->mBuffers[0].mData;
      do
      {
        v20 = *v18;
        v18 += 2;
        v19 = v20;
        v21 = *v17;
        v17 += 2;
        memcpy(v19, v21, 4 * (2 * *(this + 8) - 2));
        ++v16;
      }

      while (v16 < *(this + 7));
    }

    return;
  }

  LODWORD(v22) = *(this + 8);
  if (v22)
  {
    v23 = 0;
    v24 = &a2->mBuffers[0].mData;
    while (1)
    {
      memcpy((*(this + 15) + 8 * (*(this + 13) * *(this + 21) + *(this + 7) * v23)), (*(this + 12) + 8 * (*(this + 12) * v23 + (*(this + 9) - 1) * *(this + 7))), 8 * *(this + 7));
      v25 = *(this + 9);
      if (v25 >= 2)
      {
        memmove((*(this + 12) + 8 * (*(this + 12) * v23 + *(this + 7))), (*(this + 12) + 8 * (*(this + 12) * v23)), 8 * *(this + 7) * (v25 - 1));
      }

      v26 = *(this + 7);
      if (v26)
      {
        break;
      }

      v31 = *(this + 12);
      v36 = *(this + 12) * v23;
LABEL_29:
      cblas_csscal(v26, *(this + 19), (v31 + 8 * v36), 1);
      memcpy((*(this + 33) + 8 * (*(this + 7) * v23)), (*(this + 12) + 8 * (*(this + 12) * v23)), 8 * *(this + 7));
      ++v23;
      v22 = *(this + 8);
      if (v23 >= v22)
      {
        goto LABEL_30;
      }
    }

    v27 = 0;
    v28 = v24;
    while (v23)
    {
      v29 = *(this + 8);
      v30 = *(this + 12);
      v31 = *(this + 12);
      if (v23 == v29 - 1)
      {
        goto LABEL_25;
      }

      v32 = (*v28 + 4 * v23);
      v33 = v32[v29 - 1];
LABEL_26:
      v34 = *v32;
      v35 = (v31 + 8 * (v27 + v23 * v30));
      *v35 = v34;
      v35[1] = v33;
      ++v27;
      v28 += 2;
      if (v26 == v27)
      {
        v36 = v30 * v23;
        goto LABEL_29;
      }
    }

    v30 = *(this + 12);
    v31 = *(this + 12);
LABEL_25:
    v32 = (*v28 + 4 * v23);
    v33 = 0;
    goto LABEL_26;
  }

LABEL_30:
  v37 = *(this + 21);
  *(this + 22) = v37;
  if ((a4 & 1) == 0)
  {
    v45 = *(this + 13);
    v46 = v45 * v37;
    v47 = (*(this + 15) + 8 * (v45 * v37) + 4);
    __A.realp = (*(this + 15) + 8 * v46);
    __A.imagp = v47;
    vDSP_zvmags(&__A, 2, (*(this + 18) + 4 * v46), 1, v45);
    v48 = *(this + 10);
    if (v48)
    {
      for (i = 0; i < v48; ++i)
      {
        v50 = *(this + 21);
        v51 = v50 - i;
        if ((v50 - i) < 0)
        {
          v51 = v50 + v48 + i / v48 * v48 - i;
        }

        if (*(this + 8))
        {
          v52 = 0;
          v53 = v51 % v48;
          do
          {
            cblas_cgemv(CblasRowMajor, CblasNoTrans, *(this + 7), *(this + 7), this + 68, (*(this + 21) + 8 * (*(this + 15) * i + *(this + 14) * v52)), *(this + 7), (*(this + 15) + 8 * (*(this + 7) * v52 + *(this + 13) * v53)), 1, this + 68, (*(this + 33) + 8 * *(this + 7) * v52), 1);
            v54 = *(this + 16);
            v55 = (*(this + 33) + 8 * *(this + 7) * v52);
            v56 = cblas_sdot(*(this + 11), v55, 1, v55, 1);
            v57 = *(this + 7);
            v58 = v54 / fmaxf(v56 / v57, *(this + 4));
            catlas_saxpby(v57, v58, (*(this + 18) + 4 * (v57 * v52 + *(this + 13) * v53)), 1, *(this + 5), (*(this + 24) + 4 * (v57 * v52 + *(this + 13) * i)), 1);
            v59 = *(this + 7);
            v60 = (*(this + 24) + 4 * (*(this + 13) * i + v59 * v52));
            vDSP_vthr(v60, 1, this + 4, v60, 1, v59);
            v61 = *(this + 13);
            v62 = *(this + 7);
            v74.realp = (*(this + 15) + 8 * (v62 * v52 + v61 * v53));
            v74.imagp = v74.realp + 1;
            v63 = (*(this + 39) + 4);
            __C.realp = *(this + 39);
            __C.imagp = v63;
            vDSP_zrvdiv(&v74, 2, (*(this + 24) + 4 * (v62 * v52 + v61 * i)), 1, &__C, 2, v62);
            cblas_csscal(*(this + 7), -v58, *(this + 39), 1);
            cblas_cgerc(CblasRowMajor, *(this + 7), *(this + 7), this + 68, (*(this + 33) + 8 * *(this + 7) * v52), 1, *(this + 39), 1, (*(this + 21) + 8 * (*(this + 15) * i + *(this + 14) * v52)), *(this + 7));
            v64 = cblas_sdsdot(*(this + 11), *(this + 17), *(this + 39), 1, (*(this + 15) + 8 * (*(this + 13) * v53 + *(this + 7) * v52)), 1);
            cblas_csscal(*(this + 7), v64, (*(this + 33) + 8 * *(this + 7) * v52++), 1);
          }

          while (v52 < *(this + 8));
          v48 = *(this + 10);
        }
      }
    }

    v44 = (*(this + 21) + 1) % v48;
    goto LABEL_53;
  }

  v38 = *(this + 10);
  if (!v38)
  {
    goto LABEL_42;
  }

  for (j = 0; j < v38; ++j)
  {
    v40 = *(this + 21);
    v41 = v40 - j;
    if ((v40 - j) < 0)
    {
      v41 = v40 + v38 + j / v38 * v38 - j;
      if (!v22)
      {
        continue;
      }
    }

    else if (!v22)
    {
      continue;
    }

    v42 = 0;
    v43 = v41 % v38;
    do
    {
      cblas_cgemv(CblasRowMajor, CblasNoTrans, *(this + 7), *(this + 7), this + 68, (*(this + 21) + 8 * (*(this + 15) * j + *(this + 14) * v42)), *(this + 7), (*(this + 15) + 8 * (*(this + 7) * v42 + *(this + 13) * v43)), 1, this + 68, (*(this + 33) + 8 * *(this + 7) * v42), 1);
      ++v42;
      LODWORD(v22) = *(this + 8);
    }

    while (v42 < v22);
    v38 = *(this + 10);
  }

  v37 = *(this + 21);
LABEL_42:
  v44 = (v37 + 1) % v38;
LABEL_53:
  *(this + 21) = v44;
  *(this + 336) = 1;
  cblas_csscal(*(this + 13), *(this + 20), *(this + 33), 1);
  v65 = *(this + 7);
  if (v65)
  {
    v66 = 0;
    v67 = *(this + 8);
    do
    {
      if (v67)
      {
        v68 = 0;
        v69 = *(this + 33);
        mData = a3->mBuffers[v66].mData;
        v71 = v66;
        do
        {
          v72 = (v69 + 8 * v71);
          *&mData[v68] = *v72;
          if (v68)
          {
            if (4 * (v67 - 1) != v68)
            {
              *&mData[4 * v67 - 4 + v68] = v72[1];
            }
          }

          v68 += 4;
          v71 += v65;
        }

        while (4 * v67 != v68);
      }

      ++v66;
    }

    while (v66 != v65);
  }
}

void MCLP_ORNLMS_BLAS::ProcessEchoBufferList(MCLP_ORNLMS_BLAS *this, const AudioBufferList *a2, AudioBufferList *a3)
{
  if (*(this + 336))
  {
    LODWORD(v5) = *(this + 8);
    if (v5)
    {
      v6 = 0;
      p_mData = &a2->mBuffers[0].mData;
      while (1)
      {
        memcpy((*(this + 30) + 8 * (*(this + 13) * *(this + 22) + *(this + 7) * v6)), (*(this + 27) + 8 * (*(this + 12) * v6 + (*(this + 9) - 1) * *(this + 7))), 8 * *(this + 7));
        v8 = *(this + 9);
        if (v8 >= 2)
        {
          memmove((*(this + 27) + 8 * (*(this + 12) * v6 + *(this + 7))), (*(this + 27) + 8 * (*(this + 12) * v6)), 8 * *(this + 7) * (v8 - 1));
        }

        v9 = *(this + 7);
        if (v9)
        {
          break;
        }

        v14 = *(this + 27);
        v19 = *(this + 12) * v6;
LABEL_16:
        cblas_csscal(v9, *(this + 19), (v14 + 8 * v19), 1);
        memcpy((*(this + 36) + 8 * (*(this + 7) * v6)), (*(this + 27) + 8 * (*(this + 12) * v6)), 8 * *(this + 7));
        ++v6;
        v5 = *(this + 8);
        if (v6 >= v5)
        {
          goto LABEL_17;
        }
      }

      v10 = 0;
      v11 = p_mData;
      while (v6)
      {
        v12 = *(this + 8);
        v13 = *(this + 12);
        v14 = *(this + 27);
        if (v6 == v12 - 1)
        {
          goto LABEL_12;
        }

        v15 = (*v11 + 4 * v6);
        v16 = v15[v12 - 1];
LABEL_13:
        v17 = *v15;
        v18 = (v14 + 8 * (v10 + v6 * v13));
        *v18 = v17;
        v18[1] = v16;
        ++v10;
        v11 += 2;
        if (v9 == v10)
        {
          v19 = v13 * v6;
          goto LABEL_16;
        }
      }

      v13 = *(this + 12);
      v14 = *(this + 27);
LABEL_12:
      v15 = (*v11 + 4 * v6);
      v16 = 0;
      goto LABEL_13;
    }

LABEL_17:
    v20 = *(this + 10);
    if (v20)
    {
      for (i = 0; i < v20; ++i)
      {
        v22 = *(this + 22);
        v23 = v22 - i;
        if ((v22 - i) < 0)
        {
          v23 = v22 + v20 + i / v20 * v20 - i;
          if (v5)
          {
LABEL_23:
            v24 = 0;
            v25 = v23 % v20;
            do
            {
              cblas_cgemv(CblasRowMajor, CblasNoTrans, *(this + 7), *(this + 7), this + 68, (*(this + 21) + 8 * (*(this + 15) * i + *(this + 14) * v24)), *(this + 7), (*(this + 30) + 8 * (*(this + 7) * v24 + *(this + 13) * v25)), 1, this + 68, (*(this + 36) + 8 * *(this + 7) * v24), 1);
              ++v24;
              LODWORD(v5) = *(this + 8);
            }

            while (v24 < v5);
            v20 = *(this + 10);
          }
        }

        else if (v5)
        {
          goto LABEL_23;
        }
      }
    }

    cblas_csscal(*(this + 13), *(this + 20), *(this + 36), 1);
    v26 = *(this + 7);
    if (v26)
    {
      v27 = 0;
      v28 = *(this + 8);
      do
      {
        if (v28)
        {
          v29 = 0;
          v30 = *(this + 36);
          mData = a3->mBuffers[v27].mData;
          v32 = v27;
          do
          {
            v33 = (v30 + 8 * v32);
            *&mData[v29] = *v33;
            if (v29)
            {
              if (4 * (v28 - 1) != v29)
              {
                *&mData[4 * v28 - 4 + v29] = v33[1];
              }
            }

            v29 += 4;
            v32 += v26;
          }

          while (4 * v28 != v29);
        }

        ++v27;
      }

      while (v27 != v26);
    }
  }

  else if (*(this + 7))
  {
    v34 = 0;
    v35 = &a2->mBuffers[0].mData;
    v36 = &a3->mBuffers[0].mData;
    do
    {
      v38 = *v36;
      v36 += 2;
      v37 = v38;
      v39 = *v35;
      v35 += 2;
      memcpy(v37, v39, 4 * (2 * *(this + 8) - 2));
      ++v34;
    }

    while (v34 < *(this + 7));
  }
}

void AUSM::Messenger::instance(AUSM::Messenger *this)
{
  {
    if (v1)
    {
      AUSM::Messenger::Messenger(v1);
    }
  }
}

uint64_t AUSM::Messenger::Messenger(AUSM::Messenger *this)
{
  AUSM::Messenger::instance(void)::msgr = 0;
  qword_1ECDA8A98 = 0;
  return caulk::pooled_semaphore_mutex::pooled_semaphore_mutex(&unk_1ECDA8AA0);
}

void sub_1DDD826BC(_Unwind_Exception *exception_object)
{
  if (qword_1ECDA8A98)
  {
    std::__shared_weak_count::__release_weak(qword_1ECDA8A98);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AUSM::Messenger::get(AUSM::Messenger *this)
{
  caulk::pooled_semaphore_mutex::_lock(&unk_1ECDA8AA0);
  *this = 0;
  *(this + 1) = 0;
  v2 = qword_1ECDA8A98;
  if (!qword_1ECDA8A98 || (v2 = std::__shared_weak_count::lock(qword_1ECDA8A98), (*(this + 1) = v2) == 0) || (v3 = AUSM::Messenger::instance(void)::msgr, *this = AUSM::Messenger::instance(void)::msgr, !v3))
  {
    v10 = 1;
    v4 = caulk::concurrent::messenger::shared_high_priority(v2);
    std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&v7, v4);
    v5 = v4[2];
    *&v9[13] = *(v4 + 45);
    *v9 = v5;
    if (v8 == 1)
    {
      std::string::__assign_external(&v7, "ausm_messenger_for_buffer_disposal");
      std::allocate_shared[abi:ne200100]<caulk::concurrent::messenger,std::allocator<caulk::concurrent::messenger>,caulk::concurrent::messenger::thread_strategy &,caulk::thread::attributes &,0>();
    }

    operator new();
  }

  return caulk::pooled_semaphore_mutex::_unlock(&unk_1ECDA8AA0);
}

void sub_1DDD8286C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a18 == 1 && a17 < 0)
  {
    operator delete(__p);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  caulk::pooled_semaphore_mutex::_unlock(&unk_1ECDA8AA0);
  _Unwind_Resume(a1);
}

uint64_t AUSpatialCapture::SetAudioChannelLayout(AUSpatialCapture *this, int a2, int a3, const AudioChannelLayout *a4)
{
  if (a2 != 2)
  {
    return 4294956430;
  }

  if (a3)
  {
    return 4294956419;
  }

  if (a4)
  {
    mChannelLayoutTag = a4->mChannelLayoutTag;
    if (!ChannelLayoutTagIsSupportedHOA(a4->mChannelLayoutTag))
    {
      LOBYTE(v9) = 0;
      std::vector<char>::vector[abi:ne200100](&v11, 32);
    }

    HOA::HOA(&v9, mChannelLayoutTag, 0);
    HOA::createSphericalGridDecoder(&v9);
    v8 = v10;
    HOA::~HOA(&v9);
    if ((v8 - 1) > 0x7F)
    {
      return 4294956428;
    }

    else
    {
      result = 0;
      *(this + 204) = a4->mChannelLayoutTag;
    }
  }

  else
  {
    result = 0;
    *(this + 204) = 0;
  }

  return result;
}

void AUSpatialCapture::GetAudioChannelLayout(AUSpatialCapture *this, int a2, int a3, AudioChannelLayout *a4, BOOL *a5)
{
  if (!a3)
  {
    *a5 = a2 == 2;
    LOBYTE(v6) = 0;
    std::vector<char>::vector[abi:ne200100](&__p, 32);
  }

  ausdk::Throw(0xFFFFD583);
}

void sub_1DDD82DA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AUSpatialCapture::GetGraphInput(AUSpatialCapture *this, unsigned int a2)
{
  v3 = *(this + 103);
  if (!v3 || DSPGraph::Graph::numInputs(v3) <= a2)
  {
    return 0;
  }

  v4 = *(this + 103);

  return DSPGraph::Graph::in(v4);
}

uint64_t AUSpatialCapture::ValidFormat(AUSpatialCapture *this, int a2, unsigned int a3, const AudioStreamBasicDescription *a4)
{
  v48 = *MEMORY[0x1E69E9840];
  mFormatID = a4->mFormatID;
  v9 = mFormatID == 1819304813;
  if (mFormatID == 1819304813)
  {
    v10 = 32;
  }

  else
  {
    v10 = 64;
  }

  if (mFormatID == 1718773105)
  {
    v9 = 1;
  }

  if (a4->mBitsPerChannel != v10)
  {
    v9 = 0;
  }

  v11 = *&v9 & ((a4->mFormatFlags & 0x20) >> 5);
  if (a2 == 2)
  {
    if (!AUSpatialCapture::GetGraphOutput(this, a3))
    {
      goto LABEL_38;
    }

    GraphOutput = AUSpatialCapture::GetGraphOutput(this, a3);
    v13 = *(GraphOutput + 64);
    if (*(GraphOutput + 72) == v13)
    {
      std::string::basic_string[abi:ne200100]<0>(buf, "/AppleInternal/Library/BuildRoots/4~B_5OugCNKhS3Po__bFTpwhA5Rt2e-Vyc7sgRc5A/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(v31, "in");
      v30 = (GraphOutput + 32);
      if (*(GraphOutput + 55) < 0)
      {
        v30 = *v30;
      }

      DSPGraph::strprintf(__p, "Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v29, v30, (*(GraphOutput + 72) - *(GraphOutput + 64)) >> 5, 0);
      DSPGraph::ThrowException();
LABEL_55:
      __break(1u);
    }
  }

  else
  {
    if (a2 != 1 || !AUSpatialCapture::GetGraphInput(this, a3))
    {
      goto LABEL_38;
    }

    GraphInput = AUSpatialCapture::GetGraphInput(this, a3);
    v13 = *(GraphInput + 88);
    if (*(GraphInput + 96) == v13)
    {
      std::string::basic_string[abi:ne200100]<0>(buf, "/AppleInternal/Library/BuildRoots/4~B_5OugCNKhS3Po__bFTpwhA5Rt2e-Vyc7sgRc5A/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(v31, "out");
      v15 = (GraphInput + 32);
      if (*(GraphInput + 55) < 0)
      {
        v15 = *v15;
      }

      DSPGraph::strprintf(__p, "Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v14, v15, (*(GraphInput + 96) - *(GraphInput + 88)) >> 5, 0);
      DSPGraph::ThrowException();
      goto LABEL_55;
    }
  }

  v17 = (*(*v13 + 40))(v13);
  v19 = *(v17 + 120);
  if (!v19)
  {
    goto LABEL_38;
  }

  if (v19->mSampleRate == a4->mSampleRate && v19->mFormatID == a4->mFormatID && v19->mBytesPerPacket == a4->mBytesPerPacket && v19->mFramesPerPacket == a4->mFramesPerPacket && v19->mChannelsPerFrame == a4->mChannelsPerFrame && v19->mBitsPerChannel == a4->mBitsPerChannel && (v11 & CA::Implementation::EquivalentFormatFlags(*(v17 + 120), a4, v18) & 1) != 0)
  {
    v11 = 1;
    goto LABEL_38;
  }

  if (SCLogScope(void)::once != -1)
  {
    dispatch_once(&SCLogScope(void)::once, &__block_literal_global_19038);
  }

  if (SCLogScope(void)::scope)
  {
    v11 = *SCLogScope(void)::scope;
    if (!v11)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v11 = MEMORY[0x1E69E9C10];
    v20 = MEMORY[0x1E69E9C10];
  }

  v21 = v11;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    CAFormatter::CAFormatter(v31, a4);
    v22 = v31[0];
    CAFormatter::CAFormatter(__p, v19);
    *buf = 136316418;
    v37 = "AUSpatialCapture.mm";
    v38 = 1024;
    v39 = 599;
    v40 = 1024;
    v41 = a2;
    v42 = 1024;
    v43 = a3;
    v44 = 2080;
    v45 = v22;
    v46 = 2080;
    v47 = __p[0];
    _os_log_impl(&dword_1DDB85000, v21, OS_LOG_TYPE_INFO, "%25s:%-5d scope %u element %u: incoming (invalid) format %s. required fmt %s", buf, 0x32u);
    if (__p[0])
    {
      free(__p[0]);
    }

    if (v31[0])
    {
      free(v31[0]);
    }
  }

  v11 = 0;
LABEL_38:
  if (SCLogScope(void)::once != -1)
  {
    dispatch_once(&SCLogScope(void)::once, &__block_literal_global_19038);
  }

  if (SCLogScope(void)::scope)
  {
    v23 = *SCLogScope(void)::scope;
    if (!v23)
    {
      return v11;
    }
  }

  else
  {
    v23 = MEMORY[0x1E69E9C10];
    v24 = MEMORY[0x1E69E9C10];
  }

  v25 = v23;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    v26 = *&a4->mBytesPerPacket;
    *v31 = *&a4->mSampleRate;
    v32 = v26;
    v33 = *&a4->mBitsPerChannel;
    CA::StreamDescription::AsString(__p, v31, *v31, *&v26);
    v27 = v35 >= 0 ? __p : __p[0];
    *buf = 136316418;
    v37 = "AUSpatialCapture.mm";
    v38 = 1024;
    v39 = 601;
    v40 = 1024;
    v41 = a2;
    v42 = 1024;
    v43 = a3;
    v44 = 2080;
    v45 = v27;
    v46 = 1024;
    LODWORD(v47) = v11;
    _os_log_impl(&dword_1DDB85000, v25, OS_LOG_TYPE_DEBUG, "%25s:%-5d Format check for scope %i element %i: %s. Valid: %i", buf, 0x2Eu);
    if (v35 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v11;
}

void sub_1DDD8336C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a13)
  {
    free(a13);
  }

  _Unwind_Resume(a1);
}

uint64_t AUSpatialCapture::GetGraphOutput(AUSpatialCapture *this, unsigned int a2)
{
  v3 = *(this + 103);
  if (!v3 || DSPGraph::Graph::numOutputs(v3) <= a2)
  {
    return 0;
  }

  v4 = *(this + 103);

  return DSPGraph::Graph::out(v4);
}

uint64_t AUSpatialCapture::SupportedNumChannels(AUSpatialCapture *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUSpatialCapture::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 1;
}

double AUSpatialCapture::GetLatency(AUSpatialCapture *this)
{
  v26 = *MEMORY[0x1E69E9840];
  GraphOutput = AUSpatialCapture::GetGraphOutput(this, 0);
  if (GraphOutput)
  {
    v4 = GraphOutput;
    v5 = DSPGraph::Box::totalLatencyInSamples(GraphOutput);
    v6 = *(v4 + 8);
    if (*(v4 + 9) == v6)
    {
      std::string::basic_string[abi:ne200100]<0>(buf, "/AppleInternal/Library/BuildRoots/4~B_5OugCNKhS3Po__bFTpwhA5Rt2e-Vyc7sgRc5A/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(v19, "in");
      v17 = (v4 + 32);
      if (*(v4 + 55) < 0)
      {
        v17 = *v17;
      }

      DSPGraph::strprintf(v18, "Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v16, v17, (*(v4 + 9) - *(v4 + 8)) >> 5, 0);
      DSPGraph::ThrowException();
      __break(1u);
    }

    else
    {
      v1 = v5;
      v2 = **((*(*v6 + 40))(v6) + 120);
      if (SCLogScope(void)::once == -1)
      {
LABEL_4:
        v7 = v1 / v2;
        if (SCLogScope(void)::scope)
        {
          v8 = *SCLogScope(void)::scope;
          if (!v8)
          {
            return v7;
          }
        }

        else
        {
          v8 = MEMORY[0x1E69E9C10];
          v9 = MEMORY[0x1E69E9C10];
        }

        if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_19;
        }

        *buf = 136315650;
        v21 = "AUSpatialCapture.mm";
        v22 = 1024;
        v23 = 547;
        v24 = 2048;
        v25 = v7;
        v10 = "%25s:%-5d Latency is %f";
        v11 = v8;
        v12 = OS_LOG_TYPE_DEBUG;
        v13 = 28;
        goto LABEL_18;
      }
    }

    dispatch_once(&SCLogScope(void)::once, &__block_literal_global_19038);
    goto LABEL_4;
  }

  if (SCLogScope(void)::once != -1)
  {
    dispatch_once(&SCLogScope(void)::once, &__block_literal_global_19038);
  }

  if (!SCLogScope(void)::scope)
  {
    v8 = MEMORY[0x1E69E9C10];
    v14 = MEMORY[0x1E69E9C10];
    goto LABEL_16;
  }

  v8 = *SCLogScope(void)::scope;
  if (v8)
  {
LABEL_16:
    v7 = 0.0;
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
LABEL_19:

      return v7;
    }

    *buf = 136315394;
    v21 = "AUSpatialCapture.mm";
    v22 = 1024;
    v23 = 549;
    v10 = "%25s:%-5d The host requested latency before the real value is available!";
    v11 = v8;
    v12 = OS_LOG_TYPE_ERROR;
    v13 = 18;
LABEL_18:
    _os_log_impl(&dword_1DDB85000, v11, v12, v10, buf, v13);
    goto LABEL_19;
  }

  return 0.0;
}

void sub_1DDD83728(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AUSpatialCapture::GetParameterValueStrings(AUSpatialCapture *this, int a2, unsigned int a3, const __CFArray **a4)
{
  if (!a4)
  {
    return 0;
  }

  if (a2)
  {
    return 4294956430;
  }

  v5 = *(this + 73);
  if (!v5)
  {
    return 0;
  }

  v7 = this + 584;
  do
  {
    v8 = *(v5 + 8);
    v9 = v8 >= a3;
    v10 = v8 < a3;
    if (v9)
    {
      v7 = v5;
    }

    v5 = *&v5[8 * v10];
  }

  while (v5);
  if (v7 == this + 584 || *(v7 + 8) > a3 || *(v7 + 19) == *(v7 + 18))
  {
    return 0;
  }

  v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0xAAAAAAAAAAAAAAABLL * ((*(v7 + 19) - *(v7 + 18)) >> 3)];
  v12 = *(v7 + 18);
  for (i = *(v7 + 19); v12 != i; v12 += 3)
  {
    v14 = v12;
    if (*(v12 + 23) < 0)
    {
      v14 = *v12;
    }

    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v14];
    [v11 addObject:v15];
  }

  result = 0;
  *a4 = v11;
  return result;
}

uint64_t AUSpatialCapture::RestoreState(AUSpatialCapture *this, const void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 4294956445;
  }

  v4 = ausdk::AUBase::RestoreState(this, a2);
  if (!v4)
  {
    atomic_fetch_add(this + 152, 1u);
    v9 = a2;
    AUSpatialCapture::LoadZoomCurveFromDictionary(this, a2, "AU preset");
  }

  v5 = v4;
  if (SCLogScope(void)::once != -1)
  {
    dispatch_once(&SCLogScope(void)::once, &__block_literal_global_19038);
  }

  if (SCLogScope(void)::scope)
  {
    v6 = *SCLogScope(void)::scope;
    if (!v6)
    {
      return v5;
    }
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    buf[0] = 136315650;
    *&buf[1] = "AUSpatialCapture.mm";
    v11 = 1024;
    v12 = 477;
    v13 = 1024;
    v14 = v5;
    _os_log_impl(&dword_1DDB85000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d Error %i while restoring state", buf, 0x18u);
  }

  return v5;
}

void sub_1DDD83FFC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ZoomCurveValue::~ZoomCurveValue(va);
  _Unwind_Resume(a1);
}

void AUSpatialCapture::SetZoomCurve(AUSpatialCapture *this, ZoomCurveValue *a2)
{
  v4 = this + 920;
  if ((this + 920) != a2)
  {
    std::__tree<std::__value_type<std::string,PiecewiseLinearTransform>,std::__map_value_compare<std::string,std::__value_type<std::string,PiecewiseLinearTransform>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,PiecewiseLinearTransform>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,PiecewiseLinearTransform>,std::__tree_node<std::__value_type<std::string,PiecewiseLinearTransform>,void *> *,long>>(this + 115, *a2, a2 + 1);
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((this + 944), *(a2 + 3), *(a2 + 4), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 4) - *(a2 + 3)) >> 3));
  }

  std::string::operator=((this + 968), a2 + 2);
  ZoomCurveValue::ApplyToGraph(v4, this + 103);
  atomic_fetch_add(this + 152, 1u);
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void ZoomCurveValue::~ZoomCurveValue(void **this)
{
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  v2 = this + 3;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::destroy(this[1]);
}

void std::vector<std::string>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

uint64_t **std::__tree<std::__value_type<std::string,PiecewiseLinearTransform>,std::__map_value_compare<std::string,std::__value_type<std::string,PiecewiseLinearTransform>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,PiecewiseLinearTransform>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,PiecewiseLinearTransform>,std::__tree_node<std::__value_type<std::string,PiecewiseLinearTransform>,void *> *,long>>(uint64_t **result, uint64_t *a2, uint64_t *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v15 = result;
    v16 = v8;
    v17 = v8;
    if (v8)
    {
      v16 = std::__tree<std::__value_type<std::string,PiecewiseLinearTransform>,std::__map_value_compare<std::string,std::__value_type<std::string,PiecewiseLinearTransform>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,PiecewiseLinearTransform>>>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          std::string::operator=((v8 + 4), (v9 + 4));
          if (v8 != v9)
          {
            std::vector<std::pair<float,float>>::__assign_with_size[abi:ne200100]<std::pair<float,float>*,std::pair<float,float>*>(v8 + 7, v9[7], v9[8], (v9[8] - v9[7]) >> 3);
          }

          v10 = v17;
          leaf_high = std::__tree<std::__value_type<std::string,PiecewiseLinearTransform>,std::__map_value_compare<std::string,std::__value_type<std::string,PiecewiseLinearTransform>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,PiecewiseLinearTransform>>>::__find_leaf_high(v5, &v14, v17 + 4);
          std::__tree<std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>,std::__map_value_compare<AUSoundIsolation_v2::BoxTuningType,std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>,std::less<AUSoundIsolation_v2::BoxTuningType>,true>,std::allocator<std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>>>::__insert_node_at(v5, v14, leaf_high, v10);
          v8 = v16;
          v17 = v16;
          if (v16)
          {
            v16 = std::__tree<std::__value_type<std::string,PiecewiseLinearTransform>,std::__map_value_compare<std::string,std::__value_type<std::string,PiecewiseLinearTransform>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,PiecewiseLinearTransform>>>::_DetachedTreeCache::__detach_next(v16);
          }

          v12 = v9[1];
          if (v12)
          {
            do
            {
              a2 = v12;
              v12 = *v12;
            }

            while (v12);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v13 = *a2 == v9;
              v9 = a2;
            }

            while (!v13);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = std::__tree<std::__value_type<std::string,PiecewiseLinearTransform>,std::__map_value_compare<std::string,std::__value_type<std::string,PiecewiseLinearTransform>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,PiecewiseLinearTransform>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v15);
  }

  if (a2 != a3)
  {
    std::__tree<std::__value_type<std::string,PiecewiseLinearTransform>,std::__map_value_compare<std::string,std::__value_type<std::string,PiecewiseLinearTransform>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,PiecewiseLinearTransform>>>::__construct_node<std::pair<std::string const,PiecewiseLinearTransform> const&>();
  }

  return result;
}

void sub_1DDD84360(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__tree<std::__value_type<std::string,PiecewiseLinearTransform>,std::__map_value_compare<std::string,std::__value_type<std::string,PiecewiseLinearTransform>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,PiecewiseLinearTransform>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(std::vector<std::string> *this, std::string *__str, std::string *a3, unint64_t a4)
{
  v6 = __str;
  begin = this->__begin_;
  if (0xAAAAAAAAAAAAAAABLL * ((this->__end_cap_.__value_ - this->__begin_) >> 3) < a4)
  {
    std::vector<std::string>::__vdeallocate(this);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((this->__end_cap_.__value_ - this->__begin_) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((this->__end_cap_.__value_ - this->__begin_) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::string>::__vallocate[abi:ne200100](this, v10);
    }

    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
  }

  end = this->__end_;
  v12 = end - begin;
  if (0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3) >= a4)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(begin++, v6++);
      }

      while (v6 != a3);
      end = this->__end_;
    }

    while (end != begin)
    {
      v14 = SHIBYTE(end[-1].__r_.__value_.__r.__words[2]);
      --end;
      if (v14 < 0)
      {
        operator delete(end->__r_.__value_.__l.__data_);
      }
    }

    this->__end_ = begin;
  }

  else
  {
    if (end == begin)
    {
      v13 = __str;
    }

    else
    {
      v13 = (__str + v12);
      do
      {
        std::string::operator=(begin++, v6++);
        v12 -= 24;
      }

      while (v12);
      end = this->__end_;
    }

    this->__end_ = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(this, v13, a3, end);
  }
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v11 = this;
  v12 = this;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      v6 = (v6 + 24);
      v12 = ++v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

void std::vector<std::string>::__vdeallocate(std::vector<std::string> *this)
{
  if (this->__begin_)
  {
    std::vector<std::string>::clear[abi:ne200100](this);
    operator delete(this->__begin_);
    this->__begin_ = 0;
    this->__end_ = 0;
    this->__end_cap_.__value_ = 0;
  }
}

void std::vector<std::string>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::allocator<std::string>::allocate_at_least[abi:ne200100](a2);
  }

  std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
}

void std::allocator<std::string>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 1);
      v3 -= 3;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

void *std::__tree<std::__value_type<std::string,PiecewiseLinearTransform>,std::__map_value_compare<std::string,std::__value_type<std::string,PiecewiseLinearTransform>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,PiecewiseLinearTransform>>>::_DetachedTreeCache::__detach_next(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

void *std::__tree<std::__value_type<std::string,PiecewiseLinearTransform>,std::__map_value_compare<std::string,std::__value_type<std::string,PiecewiseLinearTransform>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,PiecewiseLinearTransform>>>::__find_leaf_high(uint64_t a1, void *a2, void *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v5 = v4;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, v4 + 4) & 0x80) == 0)
        {
          break;
        }

        v4 = *v5;
        result = v5;
        if (!*v5)
        {
          goto LABEL_8;
        }
      }

      v4 = v5[1];
    }

    while (v4);
    result = v5 + 1;
  }

  else
  {
    result = (a1 + 8);
  }

LABEL_8:
  *a2 = v5;
  return result;
}

uint64_t std::__tree<std::__value_type<std::string,PiecewiseLinearTransform>,std::__map_value_compare<std::string,std::__value_type<std::string,PiecewiseLinearTransform>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,PiecewiseLinearTransform>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::destroy(*(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::destroy(v2);
  }

  return a1;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,PiecewiseLinearTransform>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,PiecewiseLinearTransform>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<float>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

std::string *std::pair<std::string const,PiecewiseLinearTransform>::pair[abi:ne200100](std::string *this, __int128 *a2)
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

  this[1].__r_.__value_.__r.__words[0] = 0;
  this[1].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__r.__words[2] = 0;
  std::vector<std::pair<float,float>>::__init_with_size[abi:ne200100]<std::pair<float,float>*,std::pair<float,float>*>(&this[1], *(a2 + 3), *(a2 + 4), (*(a2 + 4) - *(a2 + 3)) >> 3);
  return this;
}

void sub_1DDD8496C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::pair<float,float>>::__init_with_size[abi:ne200100]<std::pair<float,float>*,std::pair<float,float>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DDD849E0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<std::pair<float,float>>::__assign_with_size[abi:ne200100]<std::pair<float,float>*,std::pair<float,float>*>(char **a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (a4 > (v7 - result) >> 3)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
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

      std::vector<long long>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1];
  v12 = v11 - result;
  if (a4 <= (v11 - result) >> 3)
  {
    while (v5 != a3)
    {
      v15 = *v5++;
      *result = v15;
      result += 8;
    }

    a1[1] = result;
  }

  else
  {
    if (v11 != result)
    {
      v13 = (a2 + v12);
      do
      {
        v14 = *v5++;
        *result = v14;
        result += 8;
        v12 -= 8;
      }

      while (v12);
      v5 = v13;
    }

    while (v5 != a3)
    {
      v16 = *v5++;
      *v11 = v16;
      v11 += 8;
    }

    a1[1] = v11;
  }

  return result;
}

uint64_t AUSpatialCapture::SaveState(AUSpatialCapture *this, ausdk **a2)
{
  v17 = *MEMORY[0x1E69E9840];
  ausdk::AUBase::SaveState(this, a2);
  v4 = *a2;
  if (!v4)
  {
    if (SCLogScope(void)::once != -1)
    {
      dispatch_once(&SCLogScope(void)::once, &__block_literal_global_19038);
    }

    if (SCLogScope(void)::scope)
    {
      v6 = *SCLogScope(void)::scope;
      if (!v6)
      {
        return 4294956445;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v8 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "AUSpatialCapture.mm";
      v15 = 1024;
      v16 = 532;
      _os_log_impl(&dword_1DDB85000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d AUBase::SaveState didn't produce valid dictionary?", buf, 0x12u);
    }

    v7 = 4294956445;
    goto LABEL_33;
  }

  if (*(this + 912) == 1)
  {
    ZoomCurveValue::SaveToDictionary((this + 920), v4);
  }

  if (*(this + 913) == 1)
  {
    if (SCLogScope(void)::once != -1)
    {
      dispatch_once(&SCLogScope(void)::once, &__block_literal_global_19038);
    }

    if (SCLogScope(void)::scope)
    {
      v5 = *SCLogScope(void)::scope;
      if (!v5)
      {
LABEL_24:
        v6 = v4;
        [v6 addEntriesFromDictionary:*(this + 75)];
        cf = 0;
        *buf = 0;
        v11 = 0;
        v12 = 0;
        (*(*this + 88))(this, 2004, 0, 0, buf);
        (*(*this + 88))(this, 2006, 0, 0, &cf);
        (*(*this + 88))(this, 2008, 0, 0, &v12);
        (*(*this + 88))(this, 2009, 0, 0, &v11);
        if (*buf)
        {
          [v6 setObject:*buf forKeyedSubscript:@"DebugDirectory"];
          CFRelease(*buf);
        }

        if (cf)
        {
          [v6 setObject:cf forKeyedSubscript:@"PlistPath"];
          CFRelease(cf);
        }

        if (v12)
        {
          [v6 setObject:v12 forKeyedSubscript:@"SaveZoomCurveInPreset"];
          CFRelease(v12);
        }

        if (v11)
        {
          [v6 setObject:v11 forKeyedSubscript:@"SavePlistAndPropertiesInPreset"];
          CFRelease(v11);
        }

        v7 = 0;
LABEL_33:

        return v7;
      }
    }

    else
    {
      v5 = MEMORY[0x1E69E9C10];
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "AUSpatialCapture.mm";
      v15 = 1024;
      v16 = 492;
      _os_log_impl(&dword_1DDB85000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d Saving plist and properties to AU preset", buf, 0x12u);
    }

    goto LABEL_24;
  }

  return 0;
}

__n128 AUSpatialCapture::GetParameterInfo(AUSpatialCapture *this, int a2, unsigned int a3, AudioUnitParameterInfo *a4)
{
  if (!a2)
  {
    v4 = *(this + 73);
    if (v4)
    {
      v5 = this + 584;
      do
      {
        v6 = *(v4 + 8);
        v7 = v6 >= a3;
        v8 = v6 < a3;
        if (v7)
        {
          v5 = v4;
        }

        v4 = *&v4[8 * v8];
      }

      while (v4);
      if (v5 != this + 584 && *(v5 + 8) <= a3)
      {
        v9 = *(v5 + 40);
        v10 = *(v5 + 72);
        *&a4->name[16] = *(v5 + 56);
        *&a4->name[32] = v10;
        *a4->name = v9;
        result = *(v5 + 88);
        v12 = *(v5 + 104);
        v13 = *(v5 + 120);
        *&a4->flags = *(v5 + 17);
        *&a4->clumpID = v12;
        *&a4->unit = v13;
        *&a4->name[48] = result;
      }
    }
  }

  return result;
}

uint64_t AUSpatialCapture::GetParameterList(AUSpatialCapture *this, int a2, unsigned int *a3, unsigned int *a4)
{
  *a4 = 0;
  if (!a2)
  {
    *a4 = *(this + 74);
    if (a3)
    {
      v5 = *(this + 72);
      if (v5 != (this + 584))
      {
        v6 = 0;
        do
        {
          a3[v6] = *(v5 + 8);
          v7 = *(v5 + 1);
          if (v7)
          {
            do
            {
              v8 = v7;
              v7 = *v7;
            }

            while (v7);
          }

          else
          {
            do
            {
              v8 = *(v5 + 2);
              v9 = *v8 == v5;
              v5 = v8;
            }

            while (!v9);
          }

          ++v6;
          v5 = v8;
        }

        while (v8 != (this + 584));
      }
    }
  }

  return 0;
}

uint64_t AUSpatialCapture::SetBusCount(AUSpatialCapture *this, int a2, int a3)
{
  if (((a3 - 1) & 0xFFFFFFFD) != 0)
  {
    v3 = -10868;
  }

  else
  {
    v3 = 0;
  }

  if (a2 == 1)
  {
    return v3;
  }

  else
  {
    return 4294956430;
  }
}

uint64_t AUSpatialCapture::BusCountWritable(AUSpatialCapture *this, int a2)
{
  if (a2 == 1)
  {
    v2 = *(this + 17) ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

ausdk::AUInputElement *AUSpatialCapture::Render(AUSpatialCapture *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  result = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, 0);
  if (v9)
  {
    result = ausdk::AUInputElement::PullInput(result, a2, a3, 0, a4);
  }

  if (!result)
  {
    Element = ausdk::AUScope::GetElement((this + 128), 0);
    if (Element)
    {
      if (!*(Element + 144))
      {
        goto LABEL_11;
      }

      v13 = *(Element + 152) + 48;
      v11 = ausdk::AUScope::GetElement((this + 80), 0);
      if (v11)
      {
        if (*(v11 + 144))
        {
          v12 = *(v11 + 152) + 48;
          return (*(*this + 184))(this, a2, a4, 1, &v12, 1, &v13);
        }

LABEL_11:
        ausdk::Throw(0xFFFFFFFFLL);
      }
    }

    ausdk::Throw(0xFFFFD583);
  }

  return result;
}

uint64_t AUSpatialCapture::ProcessMultipleBufferLists(AUSpatialCapture *this, unsigned int *a2, int a3, unsigned int a4, const AudioBufferList **a5, int a6, AudioBufferList **a7)
{
  v82 = *MEMORY[0x1E69E9840];
  v8 = *(this + 103);
  if (!v8)
  {
    if (SCLogScope(void)::once != -1)
    {
      dispatch_once(&SCLogScope(void)::once, &__block_literal_global_19038);
    }

    if (SCLogScope(void)::scope)
    {
      v22 = *SCLogScope(void)::scope;
      if (!v22)
      {
        return 0;
      }
    }

    else
    {
      v22 = MEMORY[0x1E69E9C10];
      v37 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "AUSpatialCapture.mm";
      v79 = 1024;
      v80 = 1338;
      _os_log_impl(&dword_1DDB85000, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d Process called without a graph!", buf, 0x12u);
    }

    return 0;
  }

  if (DSPGraph::Graph::numInputs(v8) > a4 || DSPGraph::Graph::numOutputs(*(this + 103)) != a6)
  {
    if (SCLogScope(void)::once != -1)
    {
      dispatch_once(&SCLogScope(void)::once, &__block_literal_global_19038);
    }

    if (SCLogScope(void)::scope)
    {
      v21 = *SCLogScope(void)::scope;
      if (!v21)
      {
        return 4294956428;
      }
    }

    else
    {
      v21 = MEMORY[0x1E69E9C10];
      v23 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "AUSpatialCapture.mm";
      v79 = 1024;
      v80 = 1284;
      _os_log_impl(&dword_1DDB85000, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d wrong number of buffer lists!", buf, 0x12u);
    }

    return 4294956428;
  }

  v13 = DSPGraph::Graph::numInputs(*(this + 103));
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v74[-2 * v15];
  if (v14)
  {
    bzero(v16, 80 * ((80 * v14 - 80) / 0x50) + 80);
  }

  v17 = 0;
  v18 = v16;
  while (v17 < DSPGraph::Graph::numInputs(*(this + 103)))
  {
    *v18 = a3;
    *(v18 + 1) = 0;
    v19 = *(this + 18);
    *(v18 + 1) = *(this + 17);
    *(v18 + 3) = v19;
    v20 = *(this + 20);
    *(v18 + 5) = *(this + 19);
    *(v18 + 7) = v20;
    v18[9] = a5[v17++];
    v18 += 10;
  }

  v25 = DSPGraph::Graph::numOutputs(*(this + 103));
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v74[-2 * v27];
  if (v26)
  {
    bzero(v28, 80 * ((80 * v26 - 80) / 0x50) + 80);
  }

  v29 = 0;
  v30 = v28;
  while (v29 < DSPGraph::Graph::numOutputs(*(this + 103)))
  {
    *v30 = a3;
    v30[1] = 0;
    v31 = *(this + 18);
    *(v30 + 2) = *(this + 17);
    *(v30 + 6) = v31;
    v32 = *(this + 20);
    *(v30 + 10) = *(this + 19);
    *(v30 + 14) = v32;
    *(v30 + 9) = a7[v29++];
    v30 += 20;
  }

  GraphOutput = AUSpatialCapture::GetGraphOutput(this, 0);
  v34 = *(GraphOutput + 64);
  if (*(GraphOutput + 72) != v34)
  {
    (*(*v34 + 40))(v34);
    v35 = atomic_exchange(this + 152, 0);
    v74[1] = v74;
    if (v35)
    {
      v36 = AUSpatialCapture::ApplyParametersToGraphAndGetDidCameraDirectionChange(this);
    }

    else
    {
      v36 = 0;
    }

    v38 = atomic_load(this + 155);
    v39 = atomic_load(this + 154);
    if (v38 == v39 || (v40 = *(this + 103)) == 0)
    {
      v47 = 0;
    }

    else
    {
      if (DSPGraph::Graph::hasParameter(v40))
      {
        (*(**(this + 103) + 40))(*(this + 103), 30, v39);
      }

      AUBox = AUSpatialCapture::GetAUBox(this, "doaBeamit");
      v42 = AUBox;
      if (AUBox)
      {
        v43 = *(this + 69);
        if (v39 >= (*(this + 70) - v43) >> 3 || ((*(*AUBox + 80))(AUBox, 4, 0, 0, 0, *(v43 + 8 * v39)), v44 = *(this + 69), v39 >= (*(this + 70) - v44) >> 3))
        {
          std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
        }

        (*(*v42 + 80))(v42, 5, 0, 0, 0, *(v44 + 8 * v39 + 4));
      }

      atomic_store(v39, this + 155);
      std::condition_variable::notify_one((this + 760));
      v45 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v46 & 1) == 0)
      {
        goto LABEL_105;
      }

      ausdk::AUElement::SetParameter(v45, 0x1Eu, v39);
      v47 = 1;
    }

    if (*(this + 1056) == 1)
    {
      *(this + 249) = ClampOrientation(v39);
    }

    if ((v47 | v36))
    {
      atomic_store(*(this + 35), this + 104);
    }

    if (*(this + 1056) == 1)
    {
      v48 = *(this + 103);
      v49 = AU::SpatialCapture::MicSelector::Get((this + 992), *(this + 250), *(this + 249));
      v50 = *(this + 248);
      if (v50)
      {
        v51 = v49;
        for (i = 0; i < v50; ++i)
        {
          if (i < (v51[1] - *v51) >> 2)
          {
            v53 = *(*v51 + 4 * i);
            if (DSPGraph::Graph::hasParameter(v48))
            {
              (*(*v48 + 40))(v48, i + 1667789676, v53);
            }

            *(*(this + 129) + 4 * i) = v53;
            v50 = *(this + 248);
          }
        }
      }

      if (DSPGraph::Graph::hasProperty(v48))
      {
        (*(*v48 + 56))(v48, 1667789676, (*(this + 260) - *(this + 129)) & 0xFFFFFFFC);
      }
    }

    DSPGraph::Graph::preflight();
    v74[0] = v16;
    v54 = 0;
    v24 = 0;
    v55 = MEMORY[0x1E69E9C10];
    *&v56 = 136315394;
    v75 = v56;
    while (v54 < DSPGraph::Graph::numOutputs(*(this + 103)))
    {
      if (*v28 == a3)
      {
        goto LABEL_76;
      }

      if (SCLogScope(void)::once != -1)
      {
        dispatch_once(&SCLogScope(void)::once, &__block_literal_global_19038);
      }

      if (!SCLogScope(void)::scope)
      {
        v58 = v55;
        v57 = v55;
LABEL_72:
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          *buf = v75;
          *&buf[4] = "AUSpatialCapture.mm";
          v79 = 1024;
          v80 = 1322;
          _os_log_impl(&dword_1DDB85000, v57, OS_LOG_TYPE_ERROR, "%25s:%-5d preflight gave invalid number of frames to process!", buf, 0x12u);
        }

        goto LABEL_75;
      }

      v57 = *SCLogScope(void)::scope;
      if (v57)
      {
        goto LABEL_72;
      }

LABEL_75:
      v24 = 4294956422;
LABEL_76:
      ++v54;
    }

    if (v24)
    {
      return v24;
    }

    DSPGraph::Graph::processMultiple();
    if (!*(this + 103))
    {
      return 0;
    }

    v59 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if (v60)
    {
      v61 = v59;
      if (v59)
      {
        if (*(this + 103))
        {
          v62 = 0;
          v63 = 0.0;
          while (1)
          {
            std::string::basic_string[abi:ne200100]<0>(buf, off_1E866ADB8[v62]);
            v64 = DSPGraph::Graph::box();
            v65 = v64;
            if (v81 < 0)
            {
              operator delete(*buf);
              if (v65)
              {
LABEL_87:
                v66 = (*(*v65 + 88))(v65, 28, 0, 0);
                if (v66 >= v63)
                {
                  v63 = v66;
                }
              }
            }

            else if (v64)
            {
              goto LABEL_87;
            }

            if (++v62 == 3)
            {
              goto LABEL_92;
            }
          }
        }

        v63 = 0.0;
LABEL_92:
        ausdk::AUElement::SetParameter(v61, 0x20u, v63);
        std::string::basic_string[abi:ne200100]<0>(buf, "wideVsSpatialMix");
        v67 = DSPGraph::Graph::box();
        if (v81 < 0)
        {
          operator delete(*buf);
        }

        if (v67)
        {
          v68 = (*(*v67 + 88))(v67, 0, 0, 0);
          ausdk::AUElement::SetParameter(v61, 0x2Fu, v68);
        }

        std::string::basic_string[abi:ne200100]<0>(buf, "focusedVsSpatialMix");
        v69 = DSPGraph::Graph::box();
        if (v81 < 0)
        {
          operator delete(*buf);
        }

        if (v69)
        {
          v70 = (*(*v69 + 88))(v69, 0, 0, 0);
          ausdk::AUElement::SetParameter(v61, 0x30u, v70);
        }
      }

      return 0;
    }

LABEL_105:
    abort();
  }

  std::string::basic_string[abi:ne200100]<0>(buf, "/AppleInternal/Library/BuildRoots/4~B_5OugCNKhS3Po__bFTpwhA5Rt2e-Vyc7sgRc5A/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
  std::string::basic_string[abi:ne200100]<0>(v77, "in");
  v73 = (GraphOutput + 32);
  if (*(GraphOutput + 55) < 0)
  {
    v73 = *v73;
  }

  DSPGraph::strprintf(v76, "Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v72, v73, (*(GraphOutput + 72) - *(GraphOutput + 64)) >> 5, 0);
  result = DSPGraph::ThrowException();
  __break(1u);
  return result;
}

void sub_1DDD85AF4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    if (*(v2 - 105) < 0)
    {
      operator delete(*(v2 - 128));
    }

    __cxa_begin_catch(exception_object);
    if (SCLogScope(void)::once != -1)
    {
      dispatch_once(&SCLogScope(void)::once, &__block_literal_global_19038);
    }

    v4 = CALog::LogObjIfEnabled(SCLogScope(void)::scope);
    v5 = v4;
    if (v4 && os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *(v2 - 160) = 136315394;
      *(v2 - 156) = "AUSpatialCapture.mm";
      *(v2 - 148) = 1024;
      *(v2 - 146) = 1332;
      _os_log_impl(&dword_1DDB85000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d exception!", (v2 - 160), 0x12u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1DDD859F4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AUSpatialCapture::ApplyParametersToGraphAndGetDidCameraDirectionChange(AUSpatialCapture *this)
{
  if (!*(this + 103) || (v2 = *(this + 72), v3 = this + 584, v2 == this + 584))
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    do
    {
      if (*(v2 + 8) != 30)
      {
        v5 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
        if ((v6 & 1) == 0)
        {
          abort();
        }

        Parameter = ausdk::AUElement::GetParameter(v5, *(v2 + 8));
        if (DSPGraph::Graph::hasParameter(*(this + 103)))
        {
          v8 = *(v2 + 8);
          if (!v8)
          {
            v4 |= vabds_f32((*(**(this + 103) + 48))(*(this + 103)), Parameter) < 0.00000011921;
            v8 = *(v2 + 8);
          }

          (*(**(this + 103) + 40))(*(this + 103), v8, Parameter);
        }

        if (*(this + 1056) == 1)
        {
          AU::SpatialCapture::MicSelector::SetParameter(this + 992, *(v2 + 8), Parameter);
        }
      }

      v9 = *(v2 + 1);
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
          v10 = *(v2 + 2);
          v11 = *v10 == v2;
          v2 = v10;
        }

        while (!v11);
      }

      v2 = v10;
    }

    while (v10 != v3);
  }

  return v4 & 1;
}

id CALog::LogObjIfEnabled(id *a1)
{
  if (a1)
  {
    v1 = *a1;
  }

  else
  {
    v1 = MEMORY[0x1E69E9C10];
    v2 = MEMORY[0x1E69E9C10];
  }

  return v1;
}

uint64_t AUSpatialCapture::GetAUBox(AUSpatialCapture *this, char *a2)
{
  if (!*(this + 103))
  {
    return 0;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v3 = DSPGraph::Graph::box();
  v4 = v3;
  if (v10 < 0)
  {
    operator delete(__p[0]);
    if (!v4)
    {
      return 0;
    }
  }

  else if (!v3)
  {
    return 0;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v5 = DSPGraph::Graph::box();
  v6 = (*(*v5 + 216))(v5);
  v7 = v6;
  if (v10 < 0)
  {
    operator delete(__p[0]);
    if (v7)
    {
      return v7;
    }

    return 0;
  }

  if (!v6)
  {
    return 0;
  }

  return v7;
}

void sub_1DDD85EC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AUSpatialCapture::SetParameter(AUSpatialCapture *this, AUSpatialCapture *a2, int a3, float a4)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    return 4294956430;
  }

  v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v9 & 1) == 0)
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v8, a2, a4);
  AUSpatialCapture::LogParameterValue(a2, "Set", a4, v10);
  if (a2 > 25)
  {
    result = 0;
    if (a2 != 26 && a2 != 30)
    {
      if (a2 == 54)
      {
        result = 0;
        if (a4)
        {
          v11 = 5;
        }

        else
        {
          v11 = 4;
        }

        kSpatialCapture_MaxOrientationOverride = v11;
        goto LABEL_22;
      }

LABEL_21:
      result = 0;
LABEL_22:
      atomic_fetch_add(this + 152, 1u);
      return result;
    }

    return result;
  }

  if (a2 == 1)
  {
    v12 = a4;
    if (a4 - 1 < kSpatialCapture_MaxOrientationOverride)
    {
      std::mutex::lock((this + 632));
      *(this + 156) = v12;
      if ((*(this + 628) & 1) == 0)
      {
        atomic_store(v12, this + 154);
      }

      std::mutex::unlock((this + 632));
      goto LABEL_21;
    }

    if (SCLogScope(void)::once != -1)
    {
      dispatch_once(&SCLogScope(void)::once, &__block_literal_global_19038);
    }

    if (SCLogScope(void)::scope)
    {
      result = *SCLogScope(void)::scope;
      v13 = result;
      if (!result)
      {
        return result;
      }
    }

    else
    {
      v13 = MEMORY[0x1E69E9C10];
      v14 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v15 = 136315650;
      v16 = "AUSpatialCapture.mm";
      v17 = 1024;
      v18 = 1164;
      v19 = 1024;
      v20 = a4;
      _os_log_impl(&dword_1DDB85000, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d Ignoring orientation update with unsupported value %u", &v15, 0x18u);
    }

    return 0;
  }

  if (a2 != 10)
  {
    goto LABEL_21;
  }

  result = AUSpatialCapture::GetAUBox(this, "spatialTimbreFilter");
  if (result)
  {
    (*(*result + 56))(result, a4 < 0.5);
    return 0;
  }

  return result;
}

void AUSpatialCapture::LogParameterValue(AUSpatialCapture *this, uint64_t a2, float a3, const char *a4)
{
  v6 = this;
  v34 = *MEMORY[0x1E69E9840];
  if (this > 29)
  {
    switch(this)
    {
      case 0x1E:
        return;
      case 0x2E:
        if (SCLogScope(void)::once != -1)
        {
          dispatch_once(&SCLogScope(void)::once, &__block_literal_global_19038);
        }

        if (SCLogScope(void)::scope)
        {
          v7 = *SCLogScope(void)::scope;
          if (!v7)
          {
            return;
          }
        }

        else
        {
          v7 = MEMORY[0x1E69E9C10];
          v12 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v22 = 136316162;
          v23 = "AUSpatialCapture.mm";
          v24 = 1024;
          v25 = 1108;
          v26 = 2080;
          v27 = a2;
          v28 = 1024;
          v29 = 46;
          v30 = 2048;
          v31 = a3;
          v13 = "%25s:%-5d %s camera FOV (%u): %f";
          v14 = v7;
          v15 = OS_LOG_TYPE_DEFAULT;
LABEL_57:
          v20 = 44;
          goto LABEL_58;
        }

        goto LABEL_59;
      case 0x36:
        if (SCLogScope(void)::once != -1)
        {
          dispatch_once(&SCLogScope(void)::once, &__block_literal_global_19038);
        }

        if (SCLogScope(void)::scope)
        {
          v7 = *SCLogScope(void)::scope;
          if (!v7)
          {
            return;
          }
        }

        else
        {
          v7 = MEMORY[0x1E69E9C10];
          v18 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          v22 = 136316162;
          v23 = "AUSpatialCapture.mm";
          v24 = 1024;
          v25 = 1100;
          v26 = 2080;
          v27 = a2;
          v28 = 1024;
          v29 = 54;
          v30 = 2048;
          v31 = a3;
          v13 = "%25s:%-5d %s UsesFaceUpOrientation (%u): %f";
LABEL_56:
          v14 = v7;
          v15 = OS_LOG_TYPE_DEBUG;
          goto LABEL_57;
        }

        goto LABEL_59;
    }

LABEL_27:
    if (SCLogScope(void)::once != -1)
    {
      dispatch_once(&SCLogScope(void)::once, &__block_literal_global_19038);
    }

    if (SCLogScope(void)::scope)
    {
      v7 = *SCLogScope(void)::scope;
      if (!v7)
      {
        return;
      }
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v21 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v22 = 136316162;
      v23 = "AUSpatialCapture.mm";
      v24 = 1024;
      v25 = 1112;
      v26 = 2080;
      v27 = a2;
      v28 = 1024;
      v29 = v6;
      v30 = 2048;
      v31 = a3;
      v13 = "%25s:%-5d %s param %u: val=%f";
      goto LABEL_56;
    }

LABEL_59:

    return;
  }

  if (!this)
  {
    v10 = a3;
    if (a3)
    {
      v11 = "?";
    }

    else
    {
      v11 = "Front";
    }

    if (SCLogScope(void)::once != -1)
    {
      dispatch_once(&SCLogScope(void)::once, &__block_literal_global_19038);
    }

    if (SCLogScope(void)::scope)
    {
      v7 = *SCLogScope(void)::scope;
      if (!v7)
      {
        return;
      }
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v16 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_59;
    }

    v23 = "AUSpatialCapture.mm";
    v17 = "Back";
    v22 = 136316418;
    v24 = 1024;
    if (v10 != 1)
    {
      v17 = v11;
    }

    v25 = 1090;
    v26 = 2080;
    v27 = a2;
    v28 = 1024;
    v29 = 0;
    v30 = 2080;
    v31 = *&v17;
    v32 = 2048;
    v33 = a3;
    v13 = "%25s:%-5d %s camera direction (%u): %s (%f)";
    v14 = v7;
    v15 = OS_LOG_TYPE_DEFAULT;
LABEL_52:
    v20 = 54;
LABEL_58:
    _os_log_impl(&dword_1DDB85000, v14, v15, v13, &v22, v20);
    goto LABEL_59;
  }

  if (this != 1)
  {
    goto LABEL_27;
  }

  v8 = a3 - 1;
  if (v8 > 4)
  {
    v9 = "?";
  }

  else
  {
    v9 = off_1E866AEC0[v8];
  }

  if (SCLogScope(void)::once != -1)
  {
    dispatch_once(&SCLogScope(void)::once, &__block_literal_global_19038);
  }

  if (!SCLogScope(void)::scope)
  {
    v7 = MEMORY[0x1E69E9C10];
    v19 = MEMORY[0x1E69E9C10];
    goto LABEL_50;
  }

  v7 = *SCLogScope(void)::scope;
  if (v7)
  {
LABEL_50:
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_59;
    }

    v22 = 136316418;
    v23 = "AUSpatialCapture.mm";
    v24 = 1024;
    v25 = 1096;
    v26 = 2080;
    v27 = a2;
    v28 = 1024;
    v29 = 1;
    v30 = 2080;
    v31 = *&v9;
    v32 = 2048;
    v33 = a3;
    v13 = "%25s:%-5d %s TargetUI orientation (%u): %s (%f)";
    v14 = v7;
    v15 = OS_LOG_TYPE_DEBUG;
    goto LABEL_52;
  }
}

uint64_t AUSpatialCapture::GetParameter(AUSpatialCapture *this, unsigned int a2, unsigned int a3, unsigned int a4, float *a5)
{
  Parameter = ausdk::AUBase::GetParameter(this, a2, a3, a4, a5);
  if (!a3)
  {
    if (a2 == 30)
    {
      v13 = atomic_load(this + 155);
      *a5 = v13;
    }

    else if (a2 == 1)
    {
      v12 = *(this + 156);
      *a5 = v12;
      AUSpatialCapture::LogParameterValue(1, "Get", v12, v9);
    }
  }

  return Parameter;
}

uint64_t AUSpatialCapture::SetProperty(AUSpatialCapture *this, int a2, int a3, unsigned int a4, const __CFDictionary **a5, int a6)
{
  v61 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    return 4294956417;
  }

  v6 = 4294956417;
  if (a2 <= 2008)
  {
    if (a2 > 2006)
    {
      if (a2 == 2007)
      {
        v6 = 4294956445;
        if (a6 == 8 && *a5)
        {
          ZoomCurveValue::LoadFromDictionary(buf, *a5);
        }
      }

      else
      {
        v6 = 0;
        *(this + 912) = CFEqual(*a5, *MEMORY[0x1E695E4D0]) != 0;
      }

      return v6;
    }

    if (a2 != 2004)
    {
      if (a2 != 2006)
      {
        return v6;
      }

      if (a5)
      {
        applesauce::CF::StringRef::from_get(&cf, *a5);
        if (cf.__r_.__value_.__r.__words[0])
        {
          v11 = applesauce::CF::StringRef::operator->(&cf);
          applesauce::CF::convert_to<std::string,0>(buf, *v11);
          v12 = (this + 888);
          if (*(this + 911) < 0)
          {
            operator delete(*v12);
          }

          *v12 = *buf;
          *(this + 113) = *&buf[16];
          if (cf.__r_.__value_.__r.__words[0])
          {
            CFRelease(cf.__r_.__value_.__l.__data_);
          }
        }

        return 4294956445;
      }

      if (SCLogScope(void)::once != -1)
      {
        dispatch_once(&SCLogScope(void)::once, &__block_literal_global_19038);
      }

      v25 = CALog::LogObjIfEnabled(SCLogScope(void)::scope);
      v26 = v25;
      if (v25 && os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "AUSpatialCapture.mm";
        *&buf[12] = 1024;
        *&buf[14] = 924;
        _os_log_impl(&dword_1DDB85000, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d The CFStringRef passed to SetProperty is null.", buf, 0x12u);
      }

LABEL_84:

      return 4294956445;
    }

    if (!a5)
    {
      if (SCLogScope(void)::once != -1)
      {
        dispatch_once(&SCLogScope(void)::once, &__block_literal_global_19038);
      }

      v27 = CALog::LogObjIfEnabled(SCLogScope(void)::scope);
      v26 = v27;
      if (v27 && os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "AUSpatialCapture.mm";
        *&buf[12] = 1024;
        *&buf[14] = 894;
        _os_log_impl(&dword_1DDB85000, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d The CFStringRef passed to SetProperty is null.", buf, 0x12u);
      }

      goto LABEL_84;
    }

    applesauce::CF::StringRef::from_get(&v57, *a5);
    if (!v57)
    {
      return v6;
    }

    v13 = applesauce::CF::StringRef::operator->(&v57);
    applesauce::CF::convert_to<std::string,0>(&cf, *v13);
    if ((cf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_cf = &cf;
    }

    else
    {
      p_cf = cf.__r_.__value_.__r.__words[0];
    }

    if ((cf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(cf.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = cf.__r_.__value_.__l.__size_;
    }

    v16 = p_cf + size;
    if ((cf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = &cf + HIBYTE(cf.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v17 = (cf.__r_.__value_.__r.__words[0] + cf.__r_.__value_.__l.__size_);
    }

    v18 = memchr(p_cf, 0, size);
    if (v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = v16;
    }

    std::string::erase(&cf, v19 - p_cf, v17 - v19);
    v20 = SHIBYTE(cf.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(cf.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      v20 = cf.__r_.__value_.__l.__size_;
      if (cf.__r_.__value_.__l.__size_)
      {
        v21 = cf.__r_.__value_.__r.__words[0];
LABEL_143:
        if (v21->__r_.__value_.__s.__data_[v20 - 1] != 47)
        {
          std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(buf, &cf.__r_.__value_.__l.__data_, "/");
          if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(cf.__r_.__value_.__l.__data_);
          }

          cf = *buf;
        }
      }
    }

    else if (*(&cf.__r_.__value_.__s + 23))
    {
      v21 = &cf;
      goto LABEL_143;
    }

    v48 = objc_alloc_init(MEMORY[0x1E696AC08]);
    v55 = 0;
    if ((cf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v49 = &cf;
    }

    else
    {
      v49 = cf.__r_.__value_.__r.__words[0];
    }

    v50 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v49];
    v51 = [v48 fileExistsAtPath:v50 isDirectory:&v55];

    if (v51 && v55 == 1)
    {
      std::string::operator=(this + 35, &cf);
      v6 = 0;
    }

    else
    {
      if (SCLogScope(void)::once != -1)
      {
        dispatch_once(&SCLogScope(void)::once, &__block_literal_global_19038);
      }

      v52 = CALog::LogObjIfEnabled(SCLogScope(void)::scope);
      v53 = v52;
      if (v52 && os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        v54 = &cf;
        if ((cf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v54 = cf.__r_.__value_.__r.__words[0];
        }

        *buf = 136315650;
        *&buf[4] = "AUSpatialCapture.mm";
        *&buf[12] = 1024;
        *&buf[14] = 915;
        *&buf[18] = 2080;
        *&buf[20] = v54;
        _os_log_impl(&dword_1DDB85000, v53, OS_LOG_TYPE_ERROR, "%25s:%-5d Directory does not exist %s", buf, 0x1Cu);
      }

      v6 = 4294956445;
    }

    if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(cf.__r_.__value_.__l.__data_);
    }

    if (v57)
    {
      CFRelease(v57);
    }

    return v6;
  }

  if (a2 <= 1818980209)
  {
    if (a2 == 2009)
    {
      v6 = 0;
      *(this + 913) = CFEqual(*a5, *MEMORY[0x1E695E4D0]) != 0;
    }

    else if (a2 == 3700)
    {
      v6 = 0;
      *(this + 376) = *a5 != 0;
    }

    return v6;
  }

  if (a2 != 1818980210)
  {
    if (a2 != 1970040690)
    {
      if (a2 != 1953263724)
      {
        return v6;
      }

      if (a5)
      {
        if (*a5)
        {
          Copy = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], *a5);
          applesauce::CF::DictionaryRef::DictionaryRef(buf, Copy);
          v10 = *(this + 75);
          *(this + 75) = *buf;
          *buf = v10;
          applesauce::CF::DictionaryRef::~DictionaryRef(buf);
          AUSpatialCapture::LoadZoomCurveFromDictionary(this, *(this + 75), "plist");
        }

        return v6;
      }

      if (SCLogScope(void)::once != -1)
      {
        dispatch_once(&SCLogScope(void)::once, &__block_literal_global_19038);
      }

      v32 = CALog::LogObjIfEnabled(SCLogScope(void)::scope);
      v26 = v32;
      if (v32 && os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "AUSpatialCapture.mm";
        *&buf[12] = 1024;
        *&buf[14] = 876;
        _os_log_impl(&dword_1DDB85000, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d The CFDictionaryRef passed to SetProperty is null.", buf, 0x12u);
      }

      goto LABEL_84;
    }

    if (SCLogScope(void)::once != -1)
    {
      dispatch_once(&SCLogScope(void)::once, &__block_literal_global_19038);
    }

    if (SCLogScope(void)::scope)
    {
      v24 = *SCLogScope(void)::scope;
      if (!v24)
      {
        goto LABEL_90;
      }
    }

    else
    {
      v24 = MEMORY[0x1E69E9C10];
      v33 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "AUSpatialCapture.mm";
      *&buf[12] = 1024;
      *&buf[14] = 970;
      _os_log_impl(&dword_1DDB85000, v24, OS_LOG_TYPE_DEBUG, "%25s:%-5d Unlocking orientation", buf, 0x12u);
    }

LABEL_90:
    std::mutex::lock((this + 632));
    if ((*(this + 628) & 1) == 0)
    {
      if (SCLogScope(void)::once != -1)
      {
        dispatch_once(&SCLogScope(void)::once, &__block_literal_global_19038);
      }

      if (SCLogScope(void)::scope)
      {
        v34 = *SCLogScope(void)::scope;
        if (!*SCLogScope(void)::scope)
        {
          goto LABEL_99;
        }
      }

      else
      {
        v34 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "SCOrientationManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 76;
        _os_log_impl(&dword_1DDB85000, v34, OS_LOG_TYPE_ERROR, "%25s:%-5d Unlock requested while already unlocked?!", buf, 0x12u);
      }
    }

LABEL_99:
    *(this + 628) = 0;
    atomic_store(*(this + 156), this + 154);
    std::mutex::unlock((this + 632));
    return 0;
  }

  v22 = ClampOrientation(*a5);
  if (SCLogScope(void)::once != -1)
  {
    dispatch_once(&SCLogScope(void)::once, &__block_literal_global_19038);
  }

  if (SCLogScope(void)::scope)
  {
    v23 = *SCLogScope(void)::scope;
    if (!v23)
    {
      goto LABEL_73;
    }
  }

  else
  {
    v23 = MEMORY[0x1E69E9C10];
    v28 = MEMORY[0x1E69E9C10];
  }

  v29 = v23;
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = off_1E866AEC0[v22 - 1];
    *buf = 136315906;
    *&buf[4] = "AUSpatialCapture.mm";
    *&buf[12] = 1024;
    *&buf[14] = 956;
    *&buf[18] = 2080;
    *&buf[20] = v30;
    v59 = 1024;
    v60 = v22;
    _os_log_impl(&dword_1DDB85000, v29, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Locking orientation at %s (%i)", buf, 0x22u);
  }

LABEL_73:
  cf.__r_.__value_.__r.__words[0] = this + 696;
  cf.__r_.__value_.__s.__data_[8] = 1;
  std::mutex::lock((this + 696));
  std::mutex::lock((this + 632));
  if (*(this + 628) == 1)
  {
    if (SCLogScope(void)::once != -1)
    {
      dispatch_once(&SCLogScope(void)::once, &__block_literal_global_19038);
    }

    if (SCLogScope(void)::scope)
    {
      v31 = *SCLogScope(void)::scope;
      if (!*SCLogScope(void)::scope)
      {
        goto LABEL_103;
      }
    }

    else
    {
      v31 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "SCOrientationManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 54;
      _os_log_impl(&dword_1DDB85000, v31, OS_LOG_TYPE_ERROR, "%25s:%-5d Lock requested while already locked?!", buf, 0x12u);
    }
  }

LABEL_103:
  *(this + 628) = 1;
  atomic_store(v22, this + 154);
  std::mutex::unlock((this + 632));
  v35 = atomic_load(this + 155);
  v36 = atomic_load(this + 154);
  if (v35 == v36)
  {
    v37 = 0;
    goto LABEL_118;
  }

  v38 = 0.0;
  while (1)
  {
    std::chrono::steady_clock::now();
    v39.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    if (!v39.__d_.__rep_)
    {
      v40.__d_.__rep_ = 0;
      goto LABEL_114;
    }

    if (v39.__d_.__rep_ < 1)
    {
      if (v39.__d_.__rep_ < 0xFFDF3B645A1CAC09)
      {
        v40.__d_.__rep_ = 0x8000000000000000;
        goto LABEL_114;
      }
    }

    else if (v39.__d_.__rep_ > 0x20C49BA5E353F7)
    {
      v40.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_114;
    }

    v40.__d_.__rep_ = 1000 * v39.__d_.__rep_;
LABEL_114:
    std::condition_variable::__do_timed_wait((this + 760), &cf, v40);
    std::chrono::steady_clock::now();
    v38 = v38 + 0.001;
    if (*(this + 202) <= v38)
    {
      break;
    }

    v41 = atomic_load(this + 155);
    v42 = atomic_load(this + 154);
    if (v41 == v42)
    {
      v37 = 1;
      goto LABEL_118;
    }
  }

  v37 = 2;
LABEL_118:
  if (cf.__r_.__value_.__s.__data_[8] == 1)
  {
    std::mutex::unlock(cf.__r_.__value_.__l.__data_);
  }

  if (!v37)
  {
    if (SCLogScope(void)::once != -1)
    {
      dispatch_once(&SCLogScope(void)::once, &__block_literal_global_19038);
    }

    v45 = CALog::LogObjIfEnabled(SCLogScope(void)::scope);
    v44 = v45;
    if (v45 && os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "AUSpatialCapture.mm";
      *&buf[12] = 1024;
      *&buf[14] = 965;
      _os_log_impl(&dword_1DDB85000, v44, OS_LOG_TYPE_DEBUG, "%25s:%-5d Orientation locked without waiting for IO thread", buf, 0x12u);
    }

LABEL_133:

    return 0;
  }

  if (v37 == 1)
  {
    if (SCLogScope(void)::once != -1)
    {
      dispatch_once(&SCLogScope(void)::once, &__block_literal_global_19038);
    }

    v43 = CALog::LogObjIfEnabled(SCLogScope(void)::scope);
    v44 = v43;
    if (v43 && os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "AUSpatialCapture.mm";
      *&buf[12] = 1024;
      *&buf[14] = 963;
      _os_log_impl(&dword_1DDB85000, v44, OS_LOG_TYPE_DEBUG, "%25s:%-5d Orientation locked after waiting for IO thread", buf, 0x12u);
    }

    goto LABEL_133;
  }

  if (SCLogScope(void)::once != -1)
  {
    dispatch_once(&SCLogScope(void)::once, &__block_literal_global_19038);
  }

  v46 = CALog::LogObjIfEnabled(SCLogScope(void)::scope);
  v47 = v46;
  if (v46 && os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "AUSpatialCapture.mm";
    *&buf[12] = 1024;
    *&buf[14] = 960;
    _os_log_impl(&dword_1DDB85000, v47, OS_LOG_TYPE_ERROR, "%25s:%-5d Orientation locked timed out! Is IO running?", buf, 0x12u);
  }

  return 4294900551;
}

void sub_1DDD873F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, const void *a17, __int16 a18, char a19, char a20)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  applesauce::CF::StringRef::~StringRef(&a17);
  _Unwind_Resume(a1);
}

void sub_1DDD8750C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

uint64_t AUSpatialCapture::GetProperty(AUSpatialCapture *this, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  v37 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    return 4294956417;
  }

  v8 = a2;
  v29 = 0;
  v28 = 0;
  (*(*this + 80))(this, a2, a3, a4, &v28, &v29);
  v27 = v28;
  v5 = 4294956417;
  if (v8 <= 2007)
  {
    if (v8 > 2003)
    {
      if (v8 > 2005)
      {
        if (v8 != 2006)
        {
          ZoomCurveValue::ZoomCurveValue(&v30);
        }

        v11 = *MEMORY[0x1E695E480];
        v12 = this + 888;
        if (*(this + 911) < 0)
        {
          v12 = *v12;
        }
      }

      else if (v8 == 2004)
      {
        v11 = *MEMORY[0x1E695E480];
        v12 = this + 840;
        if (*(this + 863) < 0)
        {
          v12 = *v12;
        }
      }

      else
      {
        v11 = *MEMORY[0x1E695E480];
        v12 = this + 864;
        if (*(this + 887) < 0)
        {
          v12 = *v12;
        }
      }

      Copy = CFStringCreateWithCString(v11, v12, 0x8000100u);
      if (Copy)
      {
        goto LABEL_45;
      }

      return 4294956433;
    }

    if (v8 == 2001)
    {
      if (AUSpatialCapture::GetAUBox(this, "doaBeamit"))
      {
        AUBox = AUSpatialCapture::GetAUBox(this, "doaBeamit");
        return (*(*AUBox + 304))(AUBox, 4632, 0, 0, &v27, a5);
      }
    }

    else
    {
      if (v8 != 2002)
      {
        if (v8 == 2003)
        {
          v5 = 0;
          *a5 = this;
        }

        return v5;
      }

      if (AUSpatialCapture::GetBox(this, v10))
      {
        Box = AUSpatialCapture::GetBox(this, v21);
        return (*(*Box + 304))(Box, 2002, 0, 0, &v27, a5);
      }
    }

    return 4294956421;
  }

  if (v8 > 1818980209)
  {
    if (v8 > 1953263723)
    {
      if (v8 != 1970040690)
      {
        if (v8 != 1953263724)
        {
          return v5;
        }

        v15 = *(this + 75);
        if (v15)
        {
          Copy = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], v15);
LABEL_45:
          v5 = 0;
          *a5 = Copy;
          return v5;
        }

        return 4294956433;
      }

      if (SCLogScope(void)::once != -1)
      {
        dispatch_once(&SCLogScope(void)::once, &__block_literal_global_19038);
      }

      if (SCLogScope(void)::scope)
      {
        v17 = *SCLogScope(void)::scope;
        if (!v17)
        {
          return 0;
        }
      }

      else
      {
        v17 = MEMORY[0x1E69E9C10];
        v25 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v31 = 136315394;
        v32 = "AUSpatialCapture.mm";
        v33 = 1024;
        v34 = 817;
        _os_log_impl(&dword_1DDB85000, v17, OS_LOG_TYPE_DEBUG, "%25s:%-5d Write-only property UnlockOrientation was read?", &v31, 0x12u);
      }
    }

    else
    {
      if (v8 != 1818980210)
      {
        if (v8 != 1819309428)
        {
          return v5;
        }

        v13 = atomic_load(this + 104);
        if (SCLogScope(void)::once != -1)
        {
          dispatch_once(&SCLogScope(void)::once, &__block_literal_global_19038);
        }

        if (SCLogScope(void)::scope)
        {
          v14 = *SCLogScope(void)::scope;
          if (!v14)
          {
LABEL_77:
            v5 = 0;
            *a5 = v13;
            return v5;
          }
        }

        else
        {
          v14 = MEMORY[0x1E69E9C10];
          v26 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          v31 = 136315650;
          v32 = "AUSpatialCapture.mm";
          v33 = 1024;
          v34 = 822;
          v35 = 2048;
          v36 = v13;
          _os_log_impl(&dword_1DDB85000, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d Last orientation / camera direction update mach absolute time was %llu", &v31, 0x1Cu);
        }

        goto LABEL_77;
      }

      if (SCLogScope(void)::once != -1)
      {
        dispatch_once(&SCLogScope(void)::once, &__block_literal_global_19038);
      }

      if (SCLogScope(void)::scope)
      {
        v17 = *SCLogScope(void)::scope;
        if (!v17)
        {
          return 0;
        }
      }

      else
      {
        v17 = MEMORY[0x1E69E9C10];
        v24 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v31 = 136315394;
        v32 = "AUSpatialCapture.mm";
        v33 = 1024;
        v34 = 813;
        _os_log_impl(&dword_1DDB85000, v17, OS_LOG_TYPE_DEBUG, "%25s:%-5d Write-only property LockOrientation was read?", &v31, 0x12u);
      }
    }

    return 0;
  }

  switch(v8)
  {
    case 2008:
      v5 = 0;
      v20 = *(this + 912);
LABEL_59:
      if (v20)
      {
        v23 = MEMORY[0x1E695E4D0];
      }

      else
      {
        v23 = MEMORY[0x1E695E4C0];
      }

      *a5 = *v23;
      return v5;
    case 2009:
      v5 = 0;
      v20 = *(this + 913);
      goto LABEL_59;
    case 3700:
      v5 = 0;
      *a5 = *(this + 376);
      break;
  }

  return v5;
}

uint64_t AUSpatialCapture::GetBox(AUSpatialCapture *this, const char *a2)
{
  if (!*(this + 103))
  {
    return 0;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "panner");
  v2 = DSPGraph::Graph::box();
  v3 = v2;
  if ((v7 & 0x80000000) == 0)
  {
    if (v2)
    {
      goto LABEL_4;
    }

    return 0;
  }

  operator delete(__p[0]);
  if (!v3)
  {
    return 0;
  }

LABEL_4:
  std::string::basic_string[abi:ne200100]<0>(__p, "panner");
  v4 = DSPGraph::Graph::box();
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

void sub_1DDD88084(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::map<std::string,PiecewiseLinearTransform>::map[abi:ne200100](void *a1, void *a2)
{
  a1[1] = 0;
  v3 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  v4 = a2 + 1;
  v5 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v6 = a1[1];
      v7 = v3;
      if (*a1 == v3)
      {
        goto LABEL_9;
      }

      v8 = a1[1];
      v9 = v3;
      if (v6)
      {
        do
        {
          v7 = v8;
          v8 = v8[1];
        }

        while (v8);
      }

      else
      {
        do
        {
          v7 = v9[2];
          v10 = *v7 == v9;
          v9 = v7;
        }

        while (v10);
      }

      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v7 + 4, v5 + 4) & 0x80) != 0)
      {
LABEL_9:
        if (!v6)
        {
          v15 = v3;
LABEL_14:
          std::__tree<std::__value_type<std::string,PiecewiseLinearTransform>,std::__map_value_compare<std::string,std::__value_type<std::string,PiecewiseLinearTransform>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,PiecewiseLinearTransform>>>::__construct_node<std::pair<std::string const,PiecewiseLinearTransform> const&>();
        }

        v15 = v7;
        v11 = v7 + 1;
      }

      else
      {
        v11 = std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__find_equal<std::string>(a1, &v15, v5 + 4);
      }

      if (!*v11)
      {
        goto LABEL_14;
      }

      v12 = v5[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v5[2];
          v10 = *v13 == v5;
          v5 = v13;
        }

        while (!v10);
      }

      v5 = v13;
    }

    while (v13 != v4);
  }

  return a1;
}

uint64_t std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DDD8826C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t AUSpatialCapture::GetPropertyInfo(AUSpatialCapture *this, const char *a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a3)
  {
    return 4294956417;
  }

  v10 = 1;
  LODWORD(v11) = 8;
  result = 4294956417;
  if (a2 <= 2006)
  {
    if (a2 > 2003)
    {
      if (a2 == 2004)
      {
        goto LABEL_26;
      }

LABEL_18:
      v10 = 0;
      LODWORD(v11) = 8;
      goto LABEL_26;
    }

    switch(a2)
    {
      case 0x7D1:
        *a5 = 0;
        if (AUSpatialCapture::GetAUBox(this, "doaBeamit"))
        {
          AUBox = AUSpatialCapture::GetAUBox(this, "doaBeamit");
          v11 = (*(*AUBox + 296))(AUBox, 4632, 0, 0);
          if ((v13 & 1) == 0)
          {
            return v11;
          }

LABEL_25:
          v10 = 0;
          goto LABEL_26;
        }

        break;
      case 0x7D2:
        *a5 = 0;
        if (AUSpatialCapture::GetBox(this, a2))
        {
          Box = AUSpatialCapture::GetBox(this, v14);
          v11 = (*(*Box + 296))(Box, 2002, 0, 0);
          if ((v16 & 1) == 0)
          {
            return v11;
          }

          goto LABEL_25;
        }

        break;
      case 0x7D3:
        goto LABEL_18;
      default:
        return result;
    }

    v10 = 0;
    goto LABEL_27;
  }

  if (a2 > 1818980209)
  {
    if (a2 > 1953263723)
    {
      if (a2 != 1953263724)
      {
        if (a2 != 1970040690)
        {
          return result;
        }

        LODWORD(v11) = 1;
      }

      goto LABEL_26;
    }

    if (a2 == 1818980210)
    {
      goto LABEL_22;
    }

    if (a2 != 1819309428)
    {
      return result;
    }

    goto LABEL_18;
  }

  if ((a2 - 2007) >= 3)
  {
    if (a2 != 3700)
    {
      return result;
    }

LABEL_22:
    LODWORD(v11) = 4;
  }

LABEL_26:
  *a5 = v11;
LABEL_27:
  result = 0;
  *a6 = v10;
  return result;
}

uint64_t AUSpatialCapture::Reset(AUSpatialCapture *this)
{
  v1 = *(this + 103);
  if (v1 && *(v1 + 762) == 1)
  {
    DSPGraph::Graph::reset(v1);
  }

  return 0;
}

uint64_t AUSpatialCapture::Cleanup(AUSpatialCapture *this)
{
  v9 = *MEMORY[0x1E69E9840];
  if (SCLogScope(void)::once != -1)
  {
    dispatch_once(&SCLogScope(void)::once, &__block_literal_global_19038);
  }

  if (SCLogScope(void)::scope)
  {
    v2 = *SCLogScope(void)::scope;
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
    v3 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315394;
    v6 = "AUSpatialCapture.mm";
    v7 = 1024;
    v8 = 420;
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d ----", &v5, 0x12u);
  }

LABEL_10:
  result = *(this + 103);
  *(this + 103) = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t AUSpatialCapture::Initialize(AUSpatialCapture *this)
{
  v109 = *MEMORY[0x1E69E9840];
  if (SCLogScope(void)::once != -1)
  {
    dispatch_once(&SCLogScope(void)::once, &__block_literal_global_19038);
  }

  if (SCLogScope(void)::scope)
  {
    v1 = *SCLogScope(void)::scope;
    if (!v1)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v1 = MEMORY[0x1E69E9C10];
    v2 = MEMORY[0x1E69E9C10];
  }

  v3 = v1;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    *&buf[4] = "AUSpatialCapture.mm";
    v105 = 1024;
    v106 = 247;
    _os_log_impl(&dword_1DDB85000, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d ---", buf, 0x12u);
  }

LABEL_10:
  v4 = *(this + 75);
  if (v4)
  {
    goto LABEL_41;
  }

  if (SCLogScope(void)::once != -1)
  {
    dispatch_once(&SCLogScope(void)::once, &__block_literal_global_19038);
  }

  if (SCLogScope(void)::scope)
  {
    v5 = *SCLogScope(void)::scope;
    if (!v5)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "AUSpatialCapture.mm";
    v105 = 1024;
    v106 = 162;
    _os_log_impl(&dword_1DDB85000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Initialize called without setting setting plist! Loading plist from path given by a defaults write", buf, 0x12u);
  }

LABEL_20:
  v7 = CFPreferencesCopyAppValue(@"auspatialcaptureplistpath", @"com.apple.coreaudio");
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

  if ((isKindOfClass & 1) == 0)
  {
    v7 = 0;
  }

  if (v7)
  {
    if (SCLogScope(void)::once != -1)
    {
      dispatch_once(&SCLogScope(void)::once, &__block_literal_global_19038);
    }

    if (SCLogScope(void)::scope)
    {
      v10 = *SCLogScope(void)::scope;
      if (!v10)
      {
LABEL_35:
        v15 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v7];
        v16 = v15;
        if (v15)
        {
          v17 = v15;
          CFRetain(v17);
          *buf = v17;
          v18 = CFGetTypeID(v17);
          if (v18 != CFDictionaryGetTypeID())
          {
            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Could not construct");
          }

          v19 = *(this + 75);
          *(this + 75) = v17;
          *buf = v19;
          if (v19)
          {
            CFRelease(v19);
          }
        }

        goto LABEL_40;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E9C10];
      v11 = MEMORY[0x1E69E9C10];
    }

    v12 = v10;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v7;
      v14 = [v7 UTF8String];
      *buf = 136315650;
      *&buf[4] = "AUSpatialCapture.mm";
      v105 = 1024;
      v106 = 165;
      v107 = 2080;
      v108 = v14;
      _os_log_impl(&dword_1DDB85000, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Plist path given as %s by defaults write value", buf, 0x1Cu);
    }

    goto LABEL_35;
  }

LABEL_40:

  v4 = *(this + 75);
  if (v4)
  {
LABEL_41:
    v82 = [v4 objectForKey:@"tuningName"];
    v20 = (this + 864);
    if (*(this + 887) < 0)
    {
      std::string::__init_copy_ctor_external(&v95, *(this + 108), *(this + 109));
    }

    else
    {
      *&v95.__r_.__value_.__l.__data_ = *&v20->__r_.__value_.__l.__data_;
      v95.__r_.__value_.__r.__words[2] = *(this + 110);
    }

    if (!v82)
    {
      if (*(this + 887) < 0)
      {
        *(this + 109) = 18;
        v22 = *(this + 108);
      }

      else
      {
        *(this + 887) = 18;
        v22 = this + 864;
      }

      strcpy(v22, "<anoynmous tuning>");
LABEL_60:
      if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v95.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v95.__r_.__value_.__l.__size_;
      }

      v29 = *(this + 887);
      v30 = v29;
      if ((v29 & 0x80u) != 0)
      {
        v29 = *(this + 109);
      }

      if (size != v29 || ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v31 = &v95) : (v31 = v95.__r_.__value_.__r.__words[0]), v30 >= 0 ? (v32 = this + 864) : (v32 = v20->__r_.__value_.__r.__words[0]), memcmp(v31, v32, size)))
      {
        (*(*this + 432))(this, 2005, 0, 0);
      }

      AUSpatialCapture::SetAudioChannelLayoutFromTuning(this, v4);
      v81 = v4;
      v33 = [(__CFDictionary *)v81 objectForKeyedSubscript:@"renderModes"];
      v84 = v33;
      if (!v33)
      {
        *buf = 0;
        std::allocator<int>::allocate_at_least[abi:ne200100](1uLL);
      }

      v103 = 0u;
      v102 = 0u;
      v101 = 0u;
      v89 = 0u;
      *__p = 0u;
      obj = v33;
      v34 = [obj countByEnumeratingWithState:__p objects:buf count:16];
      if (v34)
      {
        v35 = 0;
        v36 = *v101;
        v89 = 0u;
        v85 = *v101;
        while (1)
        {
          if (v36 != v85)
          {
            objc_enumerationMutation(obj);
          }

          *v87 = v35;
          v88 = v34;
          v37 = 0;
          v38 = *(__p[1] + v35);
          v39 = 1;
          do
          {
            v40 = v39;
            __s1 = 0uLL;
            v99 = 0;
            if (v39)
            {
              qmemcpy(&__s1, "Linear", 6);
              v41 = 6;
              v42 = 6;
            }

            else
            {
              qmemcpy(&__s1, "ZoomableLinear", 14);
              v42 = 14;
              v41 = 14;
            }

            HIBYTE(v99) = v41;
            v43 = v38;
            v44 = [v38 UTF8String];
            if (strlen(v44) == v42 && !memcmp(&__s1, v44, v42))
            {
              if (v89 >= *(&v89 + 1))
              {
                v46 = (v89 >> 2) + 1;
                if (v46 >> 62)
                {
                  std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
                }

                if (*(&v89 + 1) >> 1 > v46)
                {
                  v46 = *(&v89 + 1) >> 1;
                }

                if (*(&v89 + 1) >= 0x7FFFFFFFFFFFFFFCuLL)
                {
                  v47 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v47 = v46;
                }

                if (v47)
                {
                  std::allocator<int>::allocate_at_least[abi:ne200100](v47);
                }

                v48 = (4 * (v89 >> 2));
                *v48 = v37;
                v45 = v48 + 1;
                memcpy(0, 0, v89);
                v89 = v45;
              }

              else
              {
                *v89 = v37;
                v45 = (v89 + 4);
              }

              *(&v49 + 1) = *(&v89 + 1);
              *&v49 = v45;
              v89 = v49;
            }

            v39 = 0;
            v37 = 1;
          }

          while ((v40 & 1) != 0);
          v34 = v88;
          v35 = *v87 + 1;
          if (*v87 + 1 >= v88)
          {
            v34 = [obj countByEnumeratingWithState:__p objects:buf count:16];
            if (!v34)
            {
              break;
            }

            v35 = 0;
          }

          v36 = *v101;
        }
      }

      v50 = *(this + 66);
      if (v50)
      {
        *(this + 67) = v50;
        operator delete(v50);
        *(this + 66) = 0;
        *(this + 67) = 0;
        *(this + 68) = 0;
      }

      *(this + 66) = 0;
      *(this + 536) = v89;
      v93 = 0;
      v94 = 0;
      v92 = 0;
      std::vector<SCRenderModes>::__init_with_size[abi:ne200100]<SCRenderModes*,SCRenderModes*>(&v92, 0, v89, v89 >> 2);
      if (SCLogScope(void)::once != -1)
      {
        dispatch_once(&SCLogScope(void)::once, &__block_literal_global_19038);
      }

      if (SCLogScope(void)::scope)
      {
        if (*(SCLogScope(void)::scope + 8))
        {
          v51 = *SCLogScope(void)::scope;
          if (v51)
          {
            v52 = v51;
            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315394;
              *&buf[4] = "AUSpatialCapture.mm";
              v105 = 1024;
              v106 = 239;
              _os_log_impl(&dword_1DDB85000, v52, OS_LOG_TYPE_DEBUG, "%25s:%-5d Supported render modes:", buf, 0x12u);
            }
          }
        }
      }

      v53 = v92;
      v54 = v93;
      if (v92 != v93)
      {
        v55 = v92;
        do
        {
          v56 = *v55;
          if (SCLogScope(void)::once != -1)
          {
            dispatch_once(&SCLogScope(void)::once, &__block_literal_global_19038);
          }

          if (SCLogScope(void)::scope)
          {
            if (*(SCLogScope(void)::scope + 8))
            {
              v57 = *SCLogScope(void)::scope;
              if (v57)
              {
                v58 = v57;
                if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
                {
                  __p[1] = 0;
                  __p[0] = 0;
                  *&v101 = 0;
                  if (v56 == 1)
                  {
                    BYTE7(v101) = 14;
                    qmemcpy(__p, "ZoomableLinear", 14);
                  }

                  else if (!v56)
                  {
                    BYTE7(v101) = 6;
                    qmemcpy(__p, "Linear", 6);
                  }

                  *buf = 136315650;
                  *&buf[4] = "AUSpatialCapture.mm";
                  v105 = 1024;
                  v106 = 241;
                  v107 = 2080;
                  v108 = __p;
                  _os_log_impl(&dword_1DDB85000, v58, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s", buf, 0x1Cu);
                  if (SBYTE7(v101) < 0)
                  {
                    operator delete(__p[0]);
                  }
                }
              }
            }
          }

          ++v55;
        }

        while (v55 != v54);
      }

      if (v53)
      {
        v93 = v53;
        operator delete(v53);
      }

      Element = ausdk::AUScope::GetElement((this + 80), 0);
      if (!Element)
      {
        ausdk::Throw(0xFFFFD583);
      }

      v60 = *(Element + 96);
      *v96 = *(Element + 80);
      *&v96[16] = v60;
      v97 = *(Element + 112);
      if (SCLogScope(void)::once != -1)
      {
        dispatch_once(&SCLogScope(void)::once, &__block_literal_global_19038);
      }

      if (SCLogScope(void)::scope)
      {
        v61 = *SCLogScope(void)::scope;
        if (!v61)
        {
          goto LABEL_146;
        }
      }

      else
      {
        v61 = MEMORY[0x1E69E9C10];
        v62 = MEMORY[0x1E69E9C10];
      }

      v63 = v61;
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
      {
        CA::StreamDescription::AsString(__p, v96, v64, v65);
        v66 = (SBYTE7(v101) & 0x80u) == 0 ? __p : __p[0];
        *buf = 136315650;
        *&buf[4] = "AUSpatialCapture.mm";
        v105 = 1024;
        v106 = 278;
        v107 = 2080;
        v108 = v66;
        _os_log_impl(&dword_1DDB85000, v63, OS_LOG_TYPE_DEBUG, "%25s:%-5d Input format is %s", buf, 0x1Cu);
        if (SBYTE7(v101) < 0)
        {
          operator delete(__p[0]);
        }
      }

LABEL_146:
      v67 = ausdk::AUScope::GetElement((this + 128), 0);
      if (!v67)
      {
        ausdk::Throw(0xFFFFD583);
      }

      v68 = *(v67 + 96);
      v90[0] = *(v67 + 80);
      v90[1] = v68;
      v91 = *(v67 + 112);
      if (SCLogScope(void)::once != -1)
      {
        dispatch_once(&SCLogScope(void)::once, &__block_literal_global_19038);
      }

      if (SCLogScope(void)::scope)
      {
        v69 = *SCLogScope(void)::scope;
        if (!v69)
        {
          goto LABEL_160;
        }
      }

      else
      {
        v69 = MEMORY[0x1E69E9C10];
        v70 = MEMORY[0x1E69E9C10];
      }

      v71 = v69;
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
      {
        CA::StreamDescription::AsString(__p, v90, v72, v73);
        v74 = (SBYTE7(v101) & 0x80u) == 0 ? __p : __p[0];
        *buf = 136315650;
        *&buf[4] = "AUSpatialCapture.mm";
        v105 = 1024;
        v106 = 283;
        v107 = 2080;
        v108 = v74;
        _os_log_impl(&dword_1DDB85000, v71, OS_LOG_TYPE_DEBUG, "%25s:%-5d Output format is %s", buf, 0x1Cu);
        if (SBYTE7(v101) < 0)
        {
          operator delete(__p[0]);
        }
      }

LABEL_160:
      if (*(this + 1056) == 1)
      {
        v75 = *(this + 129);
        if (v75)
        {
          *(this + 130) = v75;
          operator delete(v75);
        }

        *buf = this + 1008;
        std::vector<std::vector<float *>>::__destroy_vector::operator()[abi:ne200100](buf);
        *(this + 1056) = 0;
      }

      LOBYTE(__p[0]) = 0;
      std::vector<char>::vector[abi:ne200100](buf, 32);
    }

    if (SCLogScope(void)::once != -1)
    {
      dispatch_once(&SCLogScope(void)::once, &__block_literal_global_19038);
    }

    if (SCLogScope(void)::scope)
    {
      v21 = *SCLogScope(void)::scope;
      if (!v21)
      {
LABEL_56:
        v27 = v82;
        std::string::__assign_external(v20, [v82 UTF8String]);
        goto LABEL_60;
      }
    }

    else
    {
      v21 = MEMORY[0x1E69E9C10];
      v23 = MEMORY[0x1E69E9C10];
    }

    v24 = v21;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v25 = v82;
      v26 = [v82 UTF8String];
      *buf = 136315650;
      *&buf[4] = "AUSpatialCapture.mm";
      v105 = 1024;
      v106 = 263;
      v107 = 2080;
      v108 = v26;
      _os_log_impl(&dword_1DDB85000, v24, OS_LOG_TYPE_DEBUG, "%25s:%-5d Tuning name '%s'", buf, 0x1Cu);
    }

    goto LABEL_56;
  }

  if (SCLogScope(void)::once != -1)
  {
    dispatch_once(&SCLogScope(void)::once, &__block_literal_global_19038);
  }

  if (SCLogScope(void)::scope)
  {
    v77 = *SCLogScope(void)::scope;
    if (!v77)
    {
      return 0;
    }
  }

  else
  {
    v77 = MEMORY[0x1E69E9C10];
    v78 = MEMORY[0x1E69E9C10];
  }

  v79 = v77;
  if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
  {
    *v96 = 136315650;
    *&v96[4] = "AUSpatialCapture.mm";
    *&v96[12] = 1024;
    *&v96[14] = 325;
    *&v96[18] = 1024;
    *&v96[20] = 0;
    _os_log_impl(&dword_1DDB85000, v79, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Done initializing result = %i", v96, 0x18u);
  }

  return 0;
}