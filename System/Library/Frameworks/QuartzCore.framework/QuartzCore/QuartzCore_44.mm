__CFString *NSStringFromCADisplayPowerAssertionReason(uint64_t a1)
{
  if (a1 <= 3)
  {
    if (a1 == 1)
    {
      return @"unblank";
    }

    if (a1 != 2)
    {
      if (a1 == 3)
      {
        return @"secure-indicator";
      }

      return @"unknown";
    }

    return @"audio";
  }

  else if (a1 > 65533)
  {
    if (a1 != 65534)
    {
      if (a1 == 0xFFFF)
      {
        return @"debug";
      }

      return @"unknown";
    }

    return @"bls-assertion";
  }

  else
  {
    if (a1 != 4)
    {
      if (a1 == 5)
      {
        return @"read-display-identifier";
      }

      return @"unknown";
    }

    return @"bim";
  }
}

void Transition::~Transition(Transition *this)
{
  os_unfair_lock_lock(&this->var6);
  _Block_release(this->var8);
  os_unfair_lock_unlock(&this->var6);
}

__CFString *NSStringFromCADisplayStateTransitionStatus(unint64_t a1)
{
  if (a1 > 5)
  {
    return @"unknown";
  }

  else
  {
    return off_1E6DF6218[a1];
  }
}

uint64_t cadisplay_cloning_state_to_string(unint64_t a1)
{
  if (a1 > 2)
  {
    v1 = @"unknown";
  }

  else
  {
    v1 = off_1E6DF6268[a1];
  }

  return [(__CFString *)v1 cStringUsingEncoding:4];
}

__CFString *NSStringFromCADisplayCloningState(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_1E6DF6268[a1];
  }
}

__CFString *NSStringFromCADisplayPowerState(uint64_t a1)
{
  v1 = @"unknown";
  if (a1 == 1)
  {
    v1 = @"on";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"off";
  }
}

void CADisplayCloningStateDidChange(int a1, unsigned int a2, uint64_t a3, unsigned int a4)
{
  v21 = *MEMORY[0x1E69E9840];
  if (x_log_get_display_state(void)::once != -1)
  {
    dispatch_once(&x_log_get_display_state(void)::once, &__block_literal_global_5_5120);
  }

  v8 = x_log_get_display_state(void)::log;
  if (os_log_type_enabled(x_log_get_display_state(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    if (a2 > 2)
    {
      v9 = @"unknown";
    }

    else
    {
      v9 = off_1E6DF6268[a2];
    }

    v10 = [(__CFString *)v9 cStringUsingEncoding:4];
    if (a4 > 5)
    {
      v11 = @"unknown";
    }

    else
    {
      v11 = off_1E6DF6218[a4];
    }

    v14[0] = 67109890;
    v14[1] = a1;
    v15 = 2080;
    v16 = v10;
    v17 = 1024;
    v18 = a3;
    v19 = 2080;
    v20 = [(__CFString *)v11 cStringUsingEncoding:4];
    _os_log_impl(&dword_183AA6000, v8, OS_LOG_TYPE_DEFAULT, "CADisplayCloningStateDidChange display_id=%u, state=%s, seed=%u, result=%s", v14, 0x22u);
  }

  os_unfair_lock_lock(&_controls_lock);
  v12 = _controls;
  v13 = qword_1EA84E7A8;
  if (_controls != qword_1EA84E7A8)
  {
    do
    {
      if (*(*v12 + 10) == a1)
      {
        [*v12 displayCloningStateDidChange:a2 seed:a3 result:a4];
      }

      ++v12;
    }

    while (v12 != v13);
  }

  os_unfair_lock_unlock(&_controls_lock);
}

void __CADeviceUseFramebufferCompression_block_invoke()
{
  v5 = *MEMORY[0x1E69E9840];
  if (CADeviceUseCompression::once[0] != -1)
  {
    dispatch_once(CADeviceUseCompression::once, &__block_literal_global_17_12639);
  }

  CADeviceUseFramebufferCompression::enable_compression = CADeviceUseCompression::enable_compression;
  if (CADeviceUseCIF10::once != -1)
  {
    dispatch_once(&CADeviceUseCIF10::once, &__block_literal_global_12623);
  }

  if (CADeviceUseCIF10::enable_cif10 == 1)
  {
    LOBYTE(v3) = 0;
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"CAEnableFramebufferCompression", *MEMORY[0x1E695E8A8], &v3);
    if (v3)
    {
      CADeviceUseFramebufferCompression::enable_compression = AppBooleanValue != 0;
    }
  }

  if (x_log_get_utilities::once != -1)
  {
    dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
  }

  v1 = x_log_get_utilities::log;
  if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_INFO))
  {
    if (CADeviceUseFramebufferCompression::enable_compression)
    {
      v2 = "YES";
    }

    else
    {
      v2 = "NO";
    }

    v3 = 136315138;
    v4 = v2;
    _os_log_impl(&dword_183AA6000, v1, OS_LOG_TYPE_INFO, "System UI Framebuffer Compression Enabled: %s\n", &v3, 0xCu);
  }
}

void __CADeviceNeedsP3ShapeTracking_block_invoke()
{
  v0 = getenv("CA_FORCE_P3_TRACKING");
  if (v0 && atoi(v0))
  {
    v1 = 1;
  }

  else
  {
    if (MGGetSInt64Answer() == 32785)
    {
      if (CADeviceUseCIF10::once != -1)
      {
        dispatch_once(&CADeviceUseCIF10::once, &__block_literal_global_12623);
      }

      v2 = CADeviceUseCIF10::enable_cif10;
    }

    else
    {
      v2 = 0;
    }

    v1 = v2 & 1;
  }

  CADeviceNeedsP3ShapeTracking::p3_tracking = v1;
}

uint64_t __CADeviceDisplaySupportsEDRFactor_block_invoke()
{
  v0 = getenv("CA_USE_IOMFB_EDRFACTOR");
  if (v0 && (result = atoi(v0), !result))
  {
    v2 = 0;
  }

  else
  {
    result = MGGetSInt64Answer();
    if (!result)
    {
      return result;
    }

    v2 = result != 33537;
    if (result == 28672)
    {
      v2 = 0;
    }
  }

  CADeviceDisplaySupportsEDRFactor::supports_edr = v2;
  return result;
}

void __CADeviceNeedsLumaBoost_block_invoke()
{
  v33 = *MEMORY[0x1E69E9840];
  v1 = xmmword_183E2FAEC;
  v2 = -61007701;
  v31 = xmmword_183E2FB00;
  v32 = -235416490;
  v29 = xmmword_183E2FB14;
  v30 = -820493242;
  v27 = xmmword_183E2FB28;
  v28 = -121925081;
  v26 = 1071957977;
  v25 = xmmword_183E2FB3C;
  v24 = 438437663;
  v23 = xmmword_183E2FB50;
  v22 = -382792827;
  v21 = xmmword_183E2FB64;
  v20 = 1575123478;
  v19 = xmmword_183E2FB78;
  v18 = 123138233;
  v17 = xmmword_183E2FB8C;
  v16 = 681511593;
  v15 = xmmword_183E2FBA0;
  v14 = 713503427;
  v13 = xmmword_183E2FBB4;
  v12 = -1632750650;
  v11 = xmmword_183E2FBC8;
  v10 = 533419158;
  v9 = xmmword_183E2FBDC;
  v8 = 1106979518;
  v7 = xmmword_183E2FBF0;
  v6 = -1820426635;
  v5 = xmmword_183E2FC04;
  v4 = -937652876;
  v3 = xmmword_183E2FC18;
  if (MGIsDeviceOneOfType())
  {
    CADeviceNeedsLumaBoost::needs_luma_bost = 1;
  }

  if (CADeviceHasInternalBuild::once != -1)
  {
    dispatch_once(&CADeviceHasInternalBuild::once, &__block_literal_global_171);
  }

  if (CADeviceHasInternalBuild::internal == 1)
  {
    CABootArgGetArray(&v1);
    Int = CABootArgGetInt(v1, *(&v1 + 1), 0, "iomfb_RuntimeProperty_TLStrength");
    *&v31 = &v1;
    std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v31);
    if (Int)
    {
      CADeviceNeedsLumaBoost::needs_luma_bost = 0;
    }
  }
}

uint64_t CABootArgGetArray(uint64_t a1)
{
  v16[1] = *MEMORY[0x1E69E9840];
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v2 = *MEMORY[0x1E696CD60];
  v3 = IOServiceMatching("IODTNVRAM");
  result = IOServiceGetMatchingService(v2, v3);
  if (result)
  {
    v5 = result;
    CFProperty = IORegistryEntryCreateCFProperty(result, @"boot-args", *MEMORY[0x1E695E480], 0);
    if (CFProperty)
    {
      v7 = CFProperty;
      v8 = CFGetTypeID(CFProperty);
      if (v8 == CFStringGetTypeID())
      {
        CStringPtr = CFStringGetCStringPtr(v7, 0x600u);
        if (CStringPtr)
        {
          v10 = CStringPtr;
          v11 = strlen(CStringPtr);
          if (v11 >= 0x7FFFFFFFFFFFFFF8)
          {
            std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
          }

          v12 = v11;
          if (v11 >= 0x17)
          {
            operator new();
          }

          *(&__dst.__r_.__value_.__s + 23) = v11;
          if (v11)
          {
            memmove(&__dst, v10, v11);
          }

          __dst.__r_.__value_.__s.__data_[v12] = 0;
          CABootArgSplit(&v14, &__dst, 0x20u);
          if (*a1)
          {
            std::vector<std::string>::clear[abi:nn200100](a1);
            operator delete(*a1);
          }

          *a1 = v14;
          *(a1 + 16) = v15;
          v15 = 0;
          v14 = 0uLL;
          v16[0] = &v14;
          std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](v16);
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }
        }
      }

      CFRelease(v7);
    }

    return IOObjectRelease(v5);
  }

  return result;
}

uint64_t CABootArgGetInt(const std::string *a1, const std::string *a2, uint64_t a3, const std::string::value_type *a4)
{
  v20[1] = *MEMORY[0x1E69E9840];
  if (a1 != a2)
  {
    v7 = a1;
    do
    {
      v17 = 0;
      v18 = 0;
      v19 = 0;
      CABootArgSplit(&v17, v7, 0x3Du);
      if (v18 - v17 == 48 && !std::string::compare(v17, a4))
      {
        v8 = v17 + 1;
        size = SHIBYTE(v17[1].__r_.__value_.__r.__words[2]);
        if (size < 0)
        {
          data = v17[1].__r_.__value_.__l.__data_;
          size = v17[1].__r_.__value_.__l.__size_;
        }

        else
        {
          data = v17 + 1;
        }

        if (size >= 2)
        {
          v11 = (data + size);
          v12 = data;
          do
          {
            v13 = memchr(v12, 48, size - 1);
            if (!v13)
            {
              break;
            }

            if (LOWORD(v13->__r_.__value_.__l.__data_) == 30768)
            {
              if (v13 == data)
              {
                v15 = 16;
              }

              else
              {
                v15 = 10;
              }

              if (v13 == v11)
              {
                v14 = 10;
              }

              else
              {
                v14 = v15;
              }

              goto LABEL_14;
            }

            v12 = (&v13->__r_.__value_.__l.__data_ + 1);
            size = v11 - v12;
          }

          while (v11 - v12 >= 2);
        }

        v14 = 10;
LABEL_14:
        a3 = std::stoi(v8, 0, v14);
      }

      v20[0] = &v17;
      std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](v20);
      ++v7;
    }

    while (v7 != a2);
  }

  return a3;
}

void std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::string>::clear[abi:nn200100](void ***a1)
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

uint64_t CABootArgSplit(uint64_t a1, const std::string *a2, unsigned __int8 a3)
{
  v64 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v39 = MEMORY[0x1E69E5560] + 24;
  v37 = MEMORY[0x1E69E5560] + 104;
  v63 = 0u;
  v62 = 0u;
  v61 = 0u;
  v60 = 0u;
  v59 = 0u;
  v58 = 0u;
  v57 = 0u;
  v56 = 0u;
  v55 = 0u;
  v53 = 0;
  v52 = 0u;
  __p = 0u;
  v50 = 0u;
  v48 = 0u;
  v49 = 0u;
  v45 = 0;
  v47 = 0u;
  v54 = MEMORY[0x1E69E5560] + 104;
  v5 = MEMORY[0x1E69E5560] + 64;
  v46 = MEMORY[0x1E69E5560] + 64;
  v6 = MEMORY[0x1E69E54D8];
  v7 = *(MEMORY[0x1E69E54D8] + 24);
  v44 = *(MEMORY[0x1E69E54D8] + 16);
  *(&v44 + *(v44 - 24)) = v7;
  v45 = 0;
  v8 = (&v44 + *(v44 - 24));
  std::ios_base::init(v8, &v47);
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v9 = v6[5];
  v46 = v6[4];
  *(&v46 + *(v46 - 24)) = v9;
  v44 = v6[1];
  *(&v44 + *(v44 - 24)) = v6[6];
  v54 = v37;
  v44 = v39;
  v40 = MEMORY[0x1E69E5538] + 16;
  v46 = v5;
  *&v47 = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x1865EA8F0](&v47 + 8);
  v50 = 0u;
  v48 = 0u;
  v49 = 0u;
  v38 = MEMORY[0x1E69E5548] + 16;
  *&v47 = MEMORY[0x1E69E5548] + 16;
  __p = 0u;
  v52 = 0u;
  LODWORD(v53) = 24;
  std::string::operator=(&__p, a2);
  *(&v52 + 1) = 0;
  if ((SBYTE7(v52) & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((SBYTE7(v52) & 0x80u) == 0)
  {
    v11 = BYTE7(v52);
  }

  else
  {
    v11 = *(&__p + 1);
  }

  if ((v53 & 8) != 0)
  {
    *&v48 = p_p;
    *(&v48 + 1) = p_p;
    *(&v52 + 1) = p_p + v11;
    *&v49 = p_p + v11;
  }

  if ((v53 & 0x10) != 0)
  {
    *(&v52 + 1) = p_p + v11;
    if ((SBYTE7(v52) & 0x80u) == 0)
    {
      v12 = 22;
    }

    else
    {
      v12 = (v52 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    std::string::resize(&__p, v12, 0);
    v13 = BYTE7(v52);
    if (SBYTE7(v52) < 0)
    {
      v13 = *(&__p + 1);
    }

    *(&v49 + 1) = p_p;
    *&v50 = p_p;
    *(&v50 + 1) = p_p + v13;
    if ((v53 & 3) != 0)
    {
      if (v11 >> 31)
      {
        v14 = ((v11 - 0x80000000) * 0x200000005uLL) >> 64;
        v15 = 0x7FFFFFFF * ((v14 + ((v11 - 0x80000000 - v14) >> 1)) >> 30);
        p_p = (p_p + v15 + 0x7FFFFFFF);
        v11 = v11 - v15 - 0x7FFFFFFF;
        *&v50 = p_p;
      }

      if (v11)
      {
        *&v50 = p_p + v11;
      }
    }
  }

  memset(&v42, 0, sizeof(v42));
  while (2)
  {
    LOBYTE(v43.__first_) = 0;
    MEMORY[0x1865EA7C0](&v43, &v44, 1);
    if (LOBYTE(v43.__first_) != 1)
    {
      goto LABEL_38;
    }

    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      *v42.__r_.__value_.__l.__data_ = 0;
      v42.__r_.__value_.__l.__size_ = 0;
    }

    else
    {
      v42.__r_.__value_.__s.__data_[0] = 0;
      *(&v42.__r_.__value_.__s + 23) = 0;
    }

    v16 = 0;
    while (1)
    {
      v17 = *(&v48 + *(v44 - 24));
      v18 = v17[3];
      if (v18 != v17[4])
      {
        v17[3] = v18 + 1;
        LOBYTE(v17) = *v18;
        goto LABEL_29;
      }

      LODWORD(v17) = (*(*v17 + 80))(v17);
      if (v17 == -1)
      {
        break;
      }

LABEL_29:
      if (v17 == a3)
      {
        v19 = 0;
        goto LABEL_37;
      }

      ++v16;
      std::string::push_back(&v42, v17);
      if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0 && v42.__r_.__value_.__l.__size_ == 0x7FFFFFFFFFFFFFF7)
      {
        v19 = 4;
        goto LABEL_37;
      }
    }

    if (v16)
    {
      v19 = 2;
    }

    else
    {
      v19 = 6;
    }

LABEL_37:
    std::ios_base::clear((&v44 + *(v44 - 24)), *(&v47 + *(v44 - 24) + 8) | v19);
LABEL_38:
    size = HIBYTE(v42.__r_.__value_.__r.__words[2]);
    if ((*(&v47 + *(v44 - 24) + 8) & 5) == 0)
    {
      if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v42.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        v22 = *(a1 + 8);
        v21 = *(a1 + 16);
        if (v22 >= v21)
        {
          v24 = 0xAAAAAAAAAAAAAAABLL * ((v22 - *a1) >> 3);
          v25 = v24 + 1;
          if (v24 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
          }

          v26 = 0xAAAAAAAAAAAAAAABLL * ((v21 - *a1) >> 3);
          if (2 * v26 > v25)
          {
            v25 = 2 * v26;
          }

          if (v26 >= 0x555555555555555)
          {
            v27 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v27 = v25;
          }

          v43.__end_cap_.__value_ = a1;
          if (v27)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(v27);
          }

          v29 = (24 * v24);
          if ((*(&v42.__r_.__value_.__s + 23) & 0x80) != 0)
          {
            std::string::__init_copy_ctor_external(v29, v42.__r_.__value_.__l.__data_, v42.__r_.__value_.__l.__size_);
          }

          else
          {
            v30 = *&v42.__r_.__value_.__l.__data_;
            v29->__r_.__value_.__r.__words[2] = v42.__r_.__value_.__r.__words[2];
            *&v29->__r_.__value_.__l.__data_ = v30;
          }

          v28 = v29 + 1;
          v31 = *(a1 + 8) - *a1;
          v32 = v29 - v31;
          memcpy(v29 - v31, *a1, v31);
          v33 = *a1;
          *a1 = v32;
          *(a1 + 8) = v29 + 1;
          v34 = *(a1 + 16);
          *(a1 + 16) = 0;
          v43.__end_ = v33;
          v43.__end_cap_.__value_ = v34;
          v43.__first_ = v33;
          v43.__begin_ = v33;
          std::__split_buffer<std::string>::~__split_buffer(&v43);
        }

        else
        {
          if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(*(a1 + 8), v42.__r_.__value_.__l.__data_, v42.__r_.__value_.__l.__size_);
          }

          else
          {
            v23 = *&v42.__r_.__value_.__l.__data_;
            *(v22 + 16) = *(&v42.__r_.__value_.__l + 2);
            *v22 = v23;
          }

          v28 = (v22 + 24);
        }

        *(a1 + 8) = v28;
      }

      continue;
    }

    break;
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  v44 = *MEMORY[0x1E69E54D8];
  v35 = *(MEMORY[0x1E69E54D8] + 72);
  *(&v44 + *(v44 - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v46 = v35;
  *&v47 = v38;
  if (SBYTE7(v52) < 0)
  {
    operator delete(__p);
  }

  *&v47 = v40;
  std::locale::~locale(&v47 + 1);
  std::iostream::~basic_iostream();
  return MEMORY[0x1865EA950](&v54);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  begin = this->__begin_;
  end = this->__end_;
  if (end != begin)
  {
    do
    {
      v4 = end - 1;
      this->__end_ = end - 1;
      if (SHIBYTE(end[-1].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v4->__r_.__value_.__l.__data_);
        v4 = this->__end_;
      }

      end = v4;
    }

    while (v4 != begin);
  }

  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

uint64_t __CADeviceSupportsHWGainMap_block_invoke()
{
  result = MGGetBoolAnswer();
  CADeviceSupportsHWGainMap::supports_gain_map = result;
  return result;
}

uint64_t __CADeviceNeedsSurfaceAlphaUnpremultiply_block_invoke()
{
  result = MGGetSInt64Answer();
  if (result == 32800)
  {
    v1 = 1;
  }

  else
  {
    v2 = -1;
    v3 = &qword_183E2FC38;
    while (v2 != 8)
    {
      v4 = *v3++;
      ++v2;
      if (v4 == result)
      {
        goto LABEL_8;
      }
    }

    v2 = 9;
LABEL_8:
    v1 = v2 < 9;
  }

  CADeviceNeedsSurfaceAlphaUnpremultiply::needs = v1;
  return result;
}

uint64_t __CADeviceSupportsAndromeda_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  CADeviceSupportsAndromeda::supports_andromeda = MGGetBoolAnswer();
  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppBooleanValue(@"CAEnableAndromeda", *MEMORY[0x1E695E8A8], &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    CADeviceSupportsAndromeda::supports_andromeda = result != 0;
  }

  return result;
}

uint64_t __CADeviceDisplayNeedsW40aWorkaround_block_invoke()
{
  result = MGGetSInt64Answer();
  v3 = result == 28672 || result == 32785 || result == 33537;
  CADeviceDisplayNeedsW40aWorkaround::workaround = v3;
  return result;
}

void __CADeviceHasLCDPanel_block_invoke()
{
  if (CADeviceHasBacklight::once != -1)
  {
    dispatch_once(&CADeviceHasBacklight::once, &__block_literal_global_132);
  }

  if (CADeviceHasBacklight::has_backlight == 1)
  {
    v0 = MGGetBoolAnswer() ^ 1;
  }

  else
  {
    v0 = 0;
  }

  CADeviceHasLCDPanel::has_lcd = v0;
}

uint64_t __CADeviceHasBacklight_block_invoke()
{
  values[1] = *MEMORY[0x1E69E9840];
  keys = @"backlight-control";
  v0 = MEMORY[0x1E695E9D8];
  v1 = MEMORY[0x1E695E9E8];
  values[0] = CFDictionaryCreate(0, &keys, MEMORY[0x1E695E4D0], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v4 = @"IOPropertyMatch";
  v2 = CFDictionaryCreate(0, &v4, values, 1, v0, v1);
  CFRelease(values[0]);
  result = IOServiceGetMatchingService(*MEMORY[0x1E696CD60], v2);
  if (result)
  {
    CADeviceHasBacklight::has_backlight = 1;
    return IOObjectRelease(result);
  }

  return result;
}

uint64_t __CADeviceNeedsISPWorkaround_block_invoke()
{
  result = MGIsDeviceOneOfType();
  if (result)
  {
    CADeviceNeedsISPWorkaround::isp_workaround = 1;
  }

  return result;
}

void __CADeviceSupportsBrightnessTransactions_block_invoke()
{
  v9 = *MEMORY[0x1E69E9840];
  if (MGGetBoolAnswer())
  {
    CADeviceSupportsBrightnessTransactions::supports_brightness_transaction = 1;
  }

  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"SynchronousBrightnessTransactions", *MEMORY[0x1E695E8A8], &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    CADeviceSupportsBrightnessTransactions::supports_brightness_transaction = AppBooleanValue != 0;
  }

  if (x_log_get_utilities::once != -1)
  {
    dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
  }

  v1 = x_log_get_utilities::log;
  if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_DEFAULT))
  {
    v2 = "NO";
    if (CADeviceSupportsBrightnessTransactions::supports_brightness_transaction)
    {
      v3 = "YES";
    }

    else
    {
      v3 = "NO";
    }

    if (keyExistsAndHasValidFormat)
    {
      v2 = "YES";
    }

    *buf = 136315394;
    v6 = v3;
    v7 = 2080;
    v8 = v2;
    _os_log_impl(&dword_183AA6000, v1, OS_LOG_TYPE_DEFAULT, "Brightness Transactions Enabled: %s, Overridden: %s\n", buf, 0x16u);
  }
}

uint64_t __CADeviceVertexCoordinateSubpixelBits_block_invoke()
{
  result = MGGetSInt64Answer();
  if (result == 32785 || result == 28672)
  {
    v2 = 4;
  }

  else
  {
    v2 = 8;
  }

  CADeviceVertexCoordinateSubpixelBits::bits = v2;
  return result;
}

BOOL __CADeviceHasHardwareAcceleratedHDR_block_invoke(uint64_t a1, const __CFString *a2)
{
  result = CA::ScalerUtil::has_capability(@"IOSurfaceAcceleratorCapabilitiesHDR", a2);
  CADeviceHasHardwareAcceleratedHDR::has_capability = result;
  return result;
}

uint64_t __CADeviceHasHeadroomDependentGamma_block_invoke()
{
  result = MGGetSInt64Answer();
  v1 = 0;
  if (result > 32784)
  {
    if (result == 32785 || result == 32807)
    {
      goto LABEL_10;
    }

    goto LABEL_4;
  }

  if (!result)
  {
    return result;
  }

  if (result != 28672)
  {
LABEL_4:
    v1 = 1;
  }

LABEL_10:
  CADeviceHasHeadroomDependentGamma::supports_hdr_gamma = v1;
  return result;
}

void __CADeviceDisableMinimumFrameDuration_block_invoke()
{
  MainBundle = CFBundleGetMainBundle();
  InfoDictionary = CFBundleGetInfoDictionary(MainBundle);
  v3 = InfoDictionary && (Value = CFDictionaryGetValue(InfoDictionary, @"CADisableMinimumFrameDuration")) != 0 && CA_CFBoolValue(Value);
  if (CADeviceIsAppleBundle::once != -1)
  {
    dispatch_once(&CADeviceIsAppleBundle::once, &__block_literal_global_404);
  }

  CADeviceDisableMinimumFrameDuration::disabled = (CADeviceIsAppleBundle::apple_bundle | v3) & 1;
}

uint64_t __CADeviceHasInternalDiagnostics_block_invoke()
{
  result = os_variant_has_internal_diagnostics();
  CADeviceHasInternalDiagnostics::internal = result;
  return result;
}

void __CADeviceHasNonUIBuild_block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    CADeviceHasNonUIBuild::nonui = CFEqual(v0, @"NonUI") != 0;

    CFRelease(v1);
  }
}

void __CADeviceSupportsHDRProcessing_block_invoke()
{
  if (hdrprocessing_init_once != -1)
  {
    dispatch_once_f(&hdrprocessing_init_once, 0, load_hdrprocessing_symbols);
  }

  CADeviceSupportsHDRProcessing::supports_hdr = hdr_handle != 0;
}

uint64_t __CADeviceSupportsFilmGrainScaling_block_invoke()
{
  v8 = *MEMORY[0x1E69E9840];
  if (CADeviceSupportsFilmGrain::once != -1)
  {
    dispatch_once(&CADeviceSupportsFilmGrain::once, &__block_literal_global_205);
  }

  CADeviceSupportsFilmGrainScaling::supports_film_grain_scaling = CADeviceSupportsFilmGrain::has_capability;
  result = MGGetSInt64Answer();
  if (result == 33058)
  {
    *buffer = 0;
    v1 = *MEMORY[0x1E696CD60];
    v2 = IOServiceNameMatching("arm-io");
    result = IOServiceGetMatchingService(v1, v2);
    if (!result)
    {
      goto LABEL_10;
    }

    v3 = result;
    CFProperty = IORegistryEntryCreateCFProperty(result, @"chip-revision", *MEMORY[0x1E695E480], 0);
    if (CFProperty)
    {
      v5 = CFProperty;
      v6 = CFGetTypeID(CFProperty);
      if (v6 == CFDataGetTypeID())
      {
        v9.location = 0;
        v9.length = 4;
        CFDataGetBytes(v5, v9, buffer);
      }

      CFRelease(v5);
    }

    result = IOObjectRelease(v3);
    if (!*buffer)
    {
LABEL_10:
      CADeviceSupportsFilmGrainScaling::supports_film_grain_scaling = 0;
    }
  }

  return result;
}

void __CADeviceFlickerHeadroomLimit_block_invoke()
{
  if (MGIsDeviceOneOfType())
  {
    CADeviceFlickerHeadroomLimit::headroom_limit = 1068708659;
  }

  v0 = CFPreferencesCopyAppValue(@"CAHeadroomLimit", @"com.apple.coreanimation");
  if (v0)
  {
    v1 = v0;
    CADeviceFlickerHeadroomLimit::headroom_limit = CA_CFFloatValue(v0);
    CFRelease(v1);
  }
}

uint64_t __CADeviceDisplaySupportsICC_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  keyExistsAndHasValidFormat = xmmword_183E31D40;
  v2 = 460218192;
  if (MGIsDeviceOneOfType())
  {
    CADeviceDisplaySupportsICC::supports_icc = 1;
  }

  LOBYTE(keyExistsAndHasValidFormat) = 0;
  result = CFPreferencesGetAppBooleanValue(@"CAEnableDisplayICC", @"com.apple.coreanimation", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    CADeviceDisplaySupportsICC::supports_icc = result != 0;
  }

  return result;
}

uint64_t __CADeviceSupportsReferenceMode_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  *keyExistsAndHasValidFormat = xmmword_183E31D40;
  v2 = 460218192;
  if (MGIsDeviceOneOfType())
  {
    CADeviceSupportsReferenceMode::supports_ref = 1;
  }

  keyExistsAndHasValidFormat[0] = 0;
  result = CFPreferencesGetAppBooleanValue(@"CAEnableDisplayReferenceMode", @"com.apple.coreanimation", keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat[0])
  {
    CADeviceSupportsReferenceMode::supports_ref = result != 0;
  }

  return result;
}

void __CADeviceSupportsDisplayToneMap_block_invoke()
{
  if (MGIsDeviceOneOfType())
  {
    CADeviceSupportsDisplayToneMap::display_tonemap = 1;
  }

  if (CADeviceIsVirtualized::once[0] != -1)
  {
    dispatch_once(CADeviceIsVirtualized::once, &__block_literal_global_323);
  }

  if (CADeviceIsVirtualized::is_virtualized == 1)
  {
    CADeviceSupportsDisplayToneMap::display_tonemap = 0;
  }
}

uint64_t __CADeviceSupportsToneMapAcceleratorSwitching_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  *keyExistsAndHasValidFormat = xmmword_183E2FD88;
  v2 = 802516499;
  if (MGIsDeviceOneOfType())
  {
    CADeviceSupportsToneMapAcceleratorSwitching::accelerator_switching = 1;
  }

  keyExistsAndHasValidFormat[0] = 0;
  result = CFPreferencesGetAppBooleanValue(@"CAEnableToneMapAcceleratorSwitching", @"com.apple.coreanimation", keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat[0])
  {
    CADeviceSupportsToneMapAcceleratorSwitching::accelerator_switching = result != 0;
  }

  return result;
}

void __CADeviceUseHarmonyXYZD50_block_invoke()
{
  v5 = *MEMORY[0x1E69E9840];
  if (CADeviceDisplaySupportsICC::once != -1)
  {
    dispatch_once(&CADeviceDisplaySupportsICC::once, &__block_literal_global_239);
  }

  if (CADeviceDisplaySupportsICC::supports_icc == 1)
  {
    LOBYTE(v3) = 0;
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"CAEnableHarmonyXYZ", @"com.apple.coreanimation", &v3);
    if (v3)
    {
      CADeviceUseHarmonyXYZD50::use_d50_xyz = AppBooleanValue != 0;
    }
  }

  if (x_log_get_utilities::once != -1)
  {
    dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
  }

  v1 = x_log_get_utilities::log;
  if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_INFO))
  {
    if (CADeviceUseHarmonyXYZD50::use_d50_xyz)
    {
      v2 = "YES";
    }

    else
    {
      v2 = "NO";
    }

    v3 = 136315138;
    v4 = v2;
    _os_log_impl(&dword_183AA6000, v1, OS_LOG_TYPE_INFO, "CADisplay Harmony Matrix is XYZ: %s\n", &v3, 0xCu);
  }
}

uint64_t __CADeviceInternalDisplayScale_block_invoke()
{
  result = MGGetFloat32Answer();
  CADeviceInternalDisplayScale::scale = v1;
  return result;
}

void __CADeviceHasNotch_block_invoke()
{
  if (MGGetBoolAnswer())
  {
    if (CADeviceIsPhone::once != -1)
    {
      dispatch_once(&CADeviceIsPhone::once, &__block_literal_global_227);
    }

    v0 = CADeviceIsPhone::phone;
  }

  else
  {
    v0 = 0;
  }

  CADeviceHasNotch::has_notch = v0 & 1;
}

uint64_t __CADeviceSupportsDCP_block_invoke()
{
  result = MGGetBoolAnswer();
  CADeviceSupportsDCP::has_dcp = result;
  return result;
}

void __CADeviceSupportsPulseWidthMaximization_block_invoke()
{
  v9 = *MEMORY[0x1E69E9840];
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"CAEnablePulseWidthMaximization", @"com.apple.coreanimation", &keyExistsAndHasValidFormat);
  CADeviceSupportsPulseWidthMaximization::has_pwm = MGGetBoolAnswer();
  if (keyExistsAndHasValidFormat)
  {
    CADeviceSupportsPulseWidthMaximization::has_pwm = AppBooleanValue != 0;
  }

  if (x_log_get_utilities::once != -1)
  {
    dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
  }

  v1 = x_log_get_utilities::log;
  if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_DEFAULT))
  {
    v2 = "NO";
    if (CADeviceSupportsPulseWidthMaximization::has_pwm)
    {
      v3 = "YES";
    }

    else
    {
      v3 = "NO";
    }

    if (keyExistsAndHasValidFormat)
    {
      v2 = "YES";
    }

    *buf = 136315394;
    v6 = v3;
    v7 = 2080;
    v8 = v2;
    _os_log_impl(&dword_183AA6000, v1, OS_LOG_TYPE_DEFAULT, "Pulse Width Maximization Supported: %s, Overridden: %s\n", buf, 0x16u);
  }
}

uint64_t __CADeviceSupportsRTPLC_block_invoke()
{
  result = MGGetSInt64Answer();
  if (result == 33056)
  {
    v1 = 1;
  }

  else
  {
    v2 = -1;
    v3 = &qword_183E2FCC0;
    while (v2 != 5)
    {
      v4 = *v3++;
      ++v2;
      if (v4 == result)
      {
        goto LABEL_8;
      }
    }

    v2 = 6;
LABEL_8:
    v1 = v2 < 6;
  }

  CADeviceSupportsRTPLC::rtplc = v1;
  return result;
}

void __CADeviceSupportsTwilight_block_invoke()
{
  v9 = *MEMORY[0x1E69E9840];
  keyExistsAndHasValidFormat = 0;
  v0 = CFPreferencesGetAppBooleanValue(@"CAEnableTwilight", @"com.apple.coreanimation", &keyExistsAndHasValidFormat) != 0;
  if (MGGetBoolAnswer())
  {
    CADeviceSupportsTwilight::twilight = 1;
  }

  if (keyExistsAndHasValidFormat)
  {
    CADeviceSupportsTwilight::twilight = v0;
  }

  if (x_log_get_utilities::once != -1)
  {
    dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
  }

  v1 = x_log_get_utilities::log;
  if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_DEFAULT))
  {
    v2 = "NO";
    if (CADeviceSupportsTwilight::twilight)
    {
      v3 = "YES";
    }

    else
    {
      v3 = "NO";
    }

    if (keyExistsAndHasValidFormat)
    {
      v2 = "YES";
    }

    *buf = 136315394;
    v6 = v3;
    v7 = 2080;
    v8 = v2;
    _os_log_impl(&dword_183AA6000, v1, OS_LOG_TYPE_DEFAULT, "Twilight Enabled: %s, Overridden: %s\n", buf, 0x16u);
  }
}

uint64_t __CADeviceSupportsMedina_block_invoke()
{
  v39 = *MEMORY[0x1E69E9840];
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"CAEnableMedina", @"com.apple.coreanimation", &keyExistsAndHasValidFormat);
  v37 = xmmword_183E2FD88;
  v38 = 802516499;
  v35 = xmmword_183E2FD9C;
  v36 = -1919324456;
  v33 = xmmword_183E2FDB0;
  v34 = 1127969586;
  v31 = xmmword_183E2FDC4;
  v32 = 1292009573;
  v30 = 1214880059;
  v29 = xmmword_183E2FD10;
  v28 = 426359977;
  v27 = xmmword_183E2FD24;
  v26 = 1223847566;
  v25 = xmmword_183E2FD38;
  v24 = 185580364;
  v23 = xmmword_183E2FD4C;
  v22 = -1354433901;
  v21 = xmmword_183E2FE28;
  v20 = 1021543808;
  v19 = xmmword_183E2FE3C;
  v18 = -1379821877;
  v17 = xmmword_183E2FE64;
  v16 = 1459208360;
  v15 = xmmword_183E2FE50;
  v14 = 1656760039;
  v13 = xmmword_183E2FDD8;
  v12 = -2071977621;
  v11 = xmmword_183E2FDEC;
  v10 = -543210860;
  v9 = xmmword_183E2FE00;
  v8 = -1597604211;
  v7 = xmmword_183E2FE14;
  result = MGIsDeviceOneOfType();
  if (result)
  {
    CADeviceSupportsMedina::medina = 1;
  }

  if (keyExistsAndHasValidFormat)
  {
    result = MGGetSInt64Answer();
    if (AppBooleanValue)
    {
      if (result == 33074)
      {
        v2 = 1;
      }

      else
      {
        v3 = -1;
        v4 = &qword_183E2FCF8;
        while (v3 != 2)
        {
          v5 = *v4++;
          ++v3;
          if (v5 == result)
          {
            goto LABEL_13;
          }
        }

        v3 = 3;
LABEL_13:
        v2 = v3 < 3;
      }
    }

    else
    {
      v2 = 0;
    }

    CADeviceSupportsMedina::medina = v2;
  }

  return result;
}

uint64_t __CADeviceSupportsBandwidthStatistics_block_invoke()
{
  result = MGGetSInt64Answer();
  if (result == 33027)
  {
    v1 = 1;
  }

  else
  {
    v2 = -1;
    v3 = &qword_183E2FD68;
    while (v2 != 3)
    {
      v4 = *v3++;
      ++v2;
      if (v4 == result)
      {
        goto LABEL_8;
      }
    }

    v2 = 4;
LABEL_8:
    v1 = v2 < 4;
  }

  CADeviceSupportsBandwidthStatistics::bw_stats = v1;
  return result;
}

void __CADeviceUseSharedEvents_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (x_log_get_sharedevent(void)::once != -1)
  {
    dispatch_once(&x_log_get_sharedevent(void)::once, &__block_literal_global_16251);
  }

  v2 = x_log_get_sharedevent(void)::log;
  if (os_log_type_enabled(x_log_get_sharedevent(void)::log, OS_LOG_TYPE_DEBUG))
  {
    if (*(a1 + 32))
    {
      v6 = "Enabled";
    }

    else
    {
      v6 = "Disabled";
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v6;
    _os_log_debug_impl(&dword_183AA6000, v2, OS_LOG_TYPE_DEBUG, "CA SharedEvent (default): %s\n", &buf, 0xCu);
  }

  CABootArgGetArray(&buf);
  CADeviceUseSharedEvents::ca_shared_event_enabled = CABootArgGetInt(buf, *(&buf + 1), *(a1 + 32) ^ 1u, "disable_ca_shared_event") == 0;
  p_buf = &buf;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&p_buf);
  if (x_log_get_sharedevent(void)::once != -1)
  {
    dispatch_once(&x_log_get_sharedevent(void)::once, &__block_literal_global_16251);
  }

  v3 = x_log_get_sharedevent(void)::log;
  if (os_log_type_enabled(x_log_get_sharedevent(void)::log, OS_LOG_TYPE_DEBUG))
  {
    v7 = CADeviceUseSharedEvents::ca_shared_event_enabled ? "Enabled" : "Disabled";
    LODWORD(buf) = 136315138;
    *(&buf + 4) = v7;
    _os_log_debug_impl(&dword_183AA6000, v3, OS_LOG_TYPE_DEBUG, "CA SharedEvent (boot-arg): %s\n", &buf, 0xCu);
    if (x_log_get_sharedevent(void)::once != -1)
    {
      dispatch_once(&x_log_get_sharedevent(void)::once, &__block_literal_global_16251);
    }
  }

  v4 = x_log_get_sharedevent(void)::log;
  if (os_log_type_enabled(x_log_get_sharedevent(void)::log, OS_LOG_TYPE_INFO))
  {
    if (CADeviceUseSharedEvents::ca_shared_event_enabled)
    {
      v5 = "Enabled";
    }

    else
    {
      v5 = "Disabled";
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v5;
    _os_log_impl(&dword_183AA6000, v4, OS_LOG_TYPE_INFO, "CA SharedEvent: %s\n", &buf, 0xCu);
  }
}

void __CADeviceSupportsNextSwapAnnouncement_block_invoke()
{
  if (CADeviceSupportsAPT::once != -1)
  {
    dispatch_once(&CADeviceSupportsAPT::once, &__block_literal_global_46);
  }

  if (CADeviceSupportsAPT::supports_apt != 1)
  {
    goto LABEL_7;
  }

  if (CADeviceIsPhone::once != -1)
  {
    dispatch_once(&CADeviceIsPhone::once, &__block_literal_global_227);
  }

  if ((CADeviceIsPhone::phone & 1) == 0)
  {
    if (CADeviceHasLCDPanel::once != -1)
    {
      dispatch_once(&CADeviceHasLCDPanel::once, &__block_literal_global_110);
    }

    v0 = CADeviceHasLCDPanel::has_lcd ^ 1;
  }

  else
  {
LABEL_7:
    v0 = 0;
  }

  CADeviceSupportsNextSwapAnnouncement::b = v0 & 1;
}

uint64_t __CADevicePrefersHDR444_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  CADevicePrefersHDR444::b = 1;
  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppBooleanValue(@"CAPrefersHDR444", @"com.apple.coreanimation", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    CADevicePrefersHDR444::b = result != 0;
  }

  return result;
}

uint64_t __CADevicePrefersHDR444Internal_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  *keyExistsAndHasValidFormat = xmmword_183E2FE28;
  v2 = -1354433901;
  CADevicePrefersHDR444Internal::b = MGIsDeviceOneOfType();
  keyExistsAndHasValidFormat[0] = 0;
  result = CFPreferencesGetAppBooleanValue(@"CAPrefersHDR444Internal", @"com.apple.coreanimation", keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat[0])
  {
    CADevicePrefersHDR444Internal::b = result != 0;
  }

  return result;
}

uint64_t __CADeviceSupportsWirelessNightShift_block_invoke()
{
  result = _os_feature_enabled_impl();
  CADeviceSupportsWirelessNightShift::enabled = result;
  return result;
}

uint64_t __CADeviceNeedsIRDCFlush_block_invoke()
{
  result = MGIsDeviceOneOfType();
  CADeviceNeedsIRDCFlush::b = result;
  return result;
}

void __CADeviceUseVirtualMainDisplay_block_invoke()
{
  v1[1] = *MEMORY[0x1E69E9840];
  if (CADeviceHasInternalBuild::once != -1)
  {
    dispatch_once(&CADeviceHasInternalBuild::once, &__block_literal_global_171);
  }

  if (CADeviceHasInternalBuild::internal)
  {
    CABootArgGetArray(v0);
    CADeviceUseVirtualMainDisplay::b = CABootArgGetInt(v0[0], v0[1], 0, "ca_virtual_main_display") != 0;
    v1[0] = v0;
    std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](v1);
  }

  else
  {
    CADeviceUseVirtualMainDisplay::b = 0;
  }
}

uint64_t __CADeviceSupportsExternalHighRefreshRateAndVRR_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  *keyExistsAndHasValidFormat = xmmword_183E2FDD8;
  v2 = 1656760039;
  CADeviceSupportsExternalHighRefreshRateAndVRR::b = MGIsDeviceOneOfType();
  keyExistsAndHasValidFormat[0] = 0;
  result = CFPreferencesGetAppBooleanValue(@"CAEnableExternalHighRefreshRateAndVRR", @"com.apple.coreanimation", keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat[0])
  {
    CADeviceSupportsExternalHighRefreshRateAndVRR::b = result != 0;
  }

  return result;
}

void __CADeviceNeedsDisplayStateControlDependencyWorkaround_block_invoke()
{
  v5 = *MEMORY[0x1E69E9840];
  if (CADeviceHasInternalBuild::once != -1)
  {
    dispatch_once(&CADeviceHasInternalBuild::once, &__block_literal_global_171);
  }

  if (CADeviceHasInternalBuild::internal == 1)
  {
    CABootArgGetArray(buf);
    Int = CABootArgGetInt(*buf, v4, 0, "ca_no_dsc_dependency");
    v2 = buf;
    std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v2);
    if (Int)
    {
      CADeviceNeedsDisplayStateControlDependencyWorkaround::b = 1;
      if (x_log_get_utilities::once != -1)
      {
        dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
      }

      v1 = x_log_get_utilities::log;
      if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_183AA6000, v1, OS_LOG_TYPE_DEFAULT, "Enabling display state control dependency workaround due to boot-arg.", buf, 2u);
      }
    }
  }
}

uint64_t __CADeviceSupportsGCP_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  if (MGGetBoolAnswer())
  {
    CADeviceSupportsGCP::b = 1;
  }

  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppBooleanValue(@"CASupportsGCP", @"com.apple.coreanimation", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    CADeviceSupportsGCP::b = result != 0;
  }

  return result;
}

BOOL __CADeviceSupportsVariableRateDirectionalScaling_block_invoke(uint64_t a1, const __CFString *a2)
{
  result = CA::ScalerUtil::has_capability(@"IOSurfaceAcceleratorCapabilitiesVariableRateDirectionalScaling", a2);
  CADeviceSupportsVariableRateDirectionalScaling::has_capability = result;
  return result;
}

uint64_t __CADeviceSupportsWorkgroupIntervals_block_invoke()
{
  result = MGIsDeviceOneOfType();
  CADeviceSupportsWorkgroupIntervals::b = result;
  return result;
}

void CA::CG::FillUnevenRoundedRect::draw_shape(CA::CG::FillUnevenRoundedRect *this, CA::OGL::Context **a2)
{
  v27 = *MEMORY[0x1E69E9840];
  if ((*(this + 100) & 1) != 0 && (*(*a2[1] + 232))(a2[1], 31))
  {
    v5 = *(this + 14);
    v4 = *(this + 15);
    v17 = v5;
    v18 = v4;
    v7 = *(this + 16);
    v6 = *(this + 17);
    v19 = v7;
    v20 = v6;
    if (v7 < 0.0)
    {
      v17 = v7 + v5;
      v19 = -v7;
    }

    if (v6 < 0.0)
    {
      v18 = v6 + v4;
      v20 = -v6;
    }

    v8 = 11;
    if ((*(this + 25) & 4) == 0)
    {
      v8 = 4;
    }

    v9 = &a2[v8];
    v10 = *v9;
    v11 = *(v9 + 1);
    v12 = *(v9 + 2);
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    memset(v21, 0, sizeof(v21));
    CA::Transform::set_affine(v21, *&v10, *(&v10 + 1), *&v11, *(&v11 + 1), *&v12, *(&v12 + 1));
    *(&v22 + 1) = &v17;
    *&v23 = v21;
    *(&v23 + 1) = 0xFF0020003FLL;
    v25 = 0;
    v24 = 0uLL;
    v13 = *(this + 10);
    v26[0] = *(this + 9);
    v26[1] = v13;
    v14 = *(this + 12);
    v26[2] = *(this + 11);
    v26[3] = v14;
    CA::OGL::fill_uneven_round_rect(a2[1], &v22 + 8, v26, 0);
  }

  else
  {
    v15 = CGPathCreateWithUnevenCornersRoundedRect();
    if (v15)
    {
      v16 = v15;
      CA::CG::fill_path(a2);

      CGPathRelease(v16);
    }
  }
}

void *CA::CG::FillUnevenRoundedRect::styled_op(uint64_t a1, const double *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v10 = malloc_type_zone_malloc(malloc_zone, 0xA0uLL, 0x165299FDuLL);
  if (v10)
  {
    v11 = *(a1 + 100) & 4;
    Color = CGStyleGetColor();
    CA::CG::DrawOp::DrawOp(v10, a2, a1, a4, a5, Color, v11 | 0x8C0);
    *v10 = &unk_1EF203CE0;
    v10[18] = a1;
    atomic_fetch_add((a3 + 8), 1u);
    v10[19] = a3;
    *v10 = &unk_1EF1FF828;
  }

  return v10;
}

void CA::CG::FillUnevenRoundedRectShadow::~FillUnevenRoundedRectShadow(CA::CG::FillUnevenRoundedRectShadow *this)
{
  *this = &unk_1EF203CE0;
  v2 = *(this + 19);
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v2 + 8))(v2);
  }

  CA::CG::DrawOp::~DrawOp(this);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, this);
}

{
  *this = &unk_1EF203CE0;
  v2 = *(this + 19);
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v2 + 8))(v2);
  }

  CA::CG::DrawOp::~DrawOp(this);
}

double CA::CG::FillUnevenRoundedRect::compute_dod(CA::CG::FillUnevenRoundedRect *this, float64x2_t *a2)
{
  result = CA::Rect::operator=(a2->f64, this + 14);
  if ((*(this + 100) & 4) == 0)
  {

    *&result = *&CA::Rect::apply_transform(a2, (this + 8));
  }

  return result;
}

void CA::CG::FillUnevenRoundedRect::~FillUnevenRoundedRect(CA::CG::FillUnevenRoundedRect *this)
{
  CA::CG::DrawOp::~DrawOp(this);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_zone;

  malloc_zone_free(v2, this);
}

char *CA::Render::CompressedImage::show(uint64_t a1, X::Stream *this, uint64_t a3, char a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 16);
  if (a4)
  {
    v17 = *(a1 + 172) - 1;
    if (v17 > 0x1B)
    {
      v18 = "UNKNOWN";
    }

    else
    {
      v18 = off_1E6DF6B30[v17];
    }

    X::Stream::printf(this, "<compressed-image [%d %d] [%s]", v6, *(a1 + 20), v18);
    v19 = (*(*a1 + 184))(a1);
    if (v19 >= 0x400)
    {
      v20 = 1.0;
      do
      {
        v20 = v20 * 0.0009765625;
      }

      while (v20 * v19 >= 1024.0);
    }

    return X::Stream::printf(this, " [%.2lf %s]>");
  }

  else
  {
    v7 = *(a1 + 172) - 1;
    if (v7 > 0x1B)
    {
      v8 = "UNKNOWN";
    }

    else
    {
      v8 = off_1E6DF6B30[v7];
    }

    X::Stream::printf(this, "(compressed-image [%d %d] [%d] %s", v6, *(a1 + 20), *(a1 + 168), v8);
    v9 = (*(*a1 + 184))(a1);
    v10 = v9;
    if (v9 >= 0x400)
    {
      v12 = 1.0;
      do
      {
        v12 = v12 * 0.0009765625;
        v11 = v12 * v10;
      }

      while (v12 * v10 >= 1024.0);
    }

    else
    {
      v11 = v9;
    }

    v13 = v9 > 0x3FF;
    if ((v9 & 0xFFFFFFFFFFF00000) != 0)
    {
      ++v13;
    }

    if ((v9 & 0xFFFFFFFFC0000000) != 0)
    {
      ++v13;
    }

    if (v9 >> 40)
    {
      ++v13;
    }

    if (v9 >> 50)
    {
      ++v13;
    }

    if (v9 >> 60)
    {
      ++v13;
    }

    X::Stream::printf(this, " (%.2lf %s)", v11, off_1E6DF9988[v13]);
    if (*(a1 + 56))
    {
      if ((*(a1 + 14) & 8) != 0)
      {
        X::Stream::printf(this, " colormatching-disabled");
      }

      v14 = CGColorSpaceCopyICCProfileDescription();
      if (v14)
      {
        v15 = v14;
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        *buffer = 0u;
        v22 = 0u;
        CFStringGetCString(v14, buffer, 127, 0x8000100u);
        if (buffer[0])
        {
          X::Stream::printf(this, " (colorspace %s)", buffer);
        }

        CFRelease(v15);
      }
    }

    return X::Stream::printf(this, ")");
  }
}

uint64_t CA::Render::release_deallocate(uint64_t a1, void *a2)
{
  v2 = a2[14];
  v3 = MEMORY[0x1E69E9AC8];
  v4 = -*MEMORY[0x1E69E9AC8];
  v5 = (*(*a2 + 184))(a2) + *v3 - 1;
  v6 = *MEMORY[0x1E69E9A60];
  v7 = v5 & -*v3;

  return mach_vm_deallocate(v6, v2 & v4, v7);
}

void CA::CG::MetalDataProvider::~MetalDataProvider(CA::CG::MetalDataProvider *this, uint64_t a2, void *a3)
{
  CA::CG::AccelDataProvider::~AccelDataProvider(this, a2, a3);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v4 = malloc_zone;

  malloc_zone_free(v4, this);
}

unint64_t CA::CG::MetalDataProvider::copy_data(CA::CG::MetalDataProvider *this)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = BYTE11(xmmword_1ED4E980C);
  if (BYTE11(xmmword_1ED4E980C) == 1)
  {
    kdebug_trace();
  }

  v3 = (*(**(this + 2) + 32))(*(this + 2));
  v6 = 0;
  v7[0] = 0;
  result = CAMetalTextureGetBytes(v3, v7, &v6);
  v5 = v6;
  *(this + 3) = v7[0];
  *(this + 5) = v5;
  if (v2)
  {

    return kdebug_trace();
  }

  return result;
}

void CA::CG::DrawPathShadow::draw_shadow(CA::CG::DrawPathShadow *this, CA::CG::Renderer *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 1);
  if (((*(**(this + 18) + 136))(*(this + 18)) & 5) != 0)
  {
    v6 = *(v4 + 16);
    v7 = v6[1];
    _H0 = *(*(this + 18) + 94);
    __asm { FCVT            S0, H0 }

    v13 = vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(v7), _S0));
    if (_ZF)
    {
      v14 = v6[1];
    }

    else
    {
      v14 = v13;
    }

    v6[1] = v14;
    v15 = 0uLL;
    v51 = 0u;
    memset(v50, 0, sizeof(v50));
    v16 = 88;
    if ((*(this + 100) & 4) == 0)
    {
      v16 = 32;
    }

    v17 = (a2 + v16);
    if (v17 == v50)
    {
      v20.f64[0] = 0.0;
      v18 = 0uLL;
      v19 = 0uLL;
      v21 = 0uLL;
      v22 = 0.0;
    }

    else
    {
      v19 = *v17;
      v18 = v17[1];
      v50[0] = v19;
      v50[1] = v18;
      v15 = v17[2];
      v20.f64[0] = v18.f64[1];
      v21 = *(v50 + 8);
      v22 = v19.f64[0];
    }

    v23 = *(this + 19);
    v24.f64[1] = v21.f64[1];
    v24.f64[0] = v20.f64[0];
    v25 = vdupq_lane_s64(*&v21.f64[0], 0);
    *&v5 = *(a2 + 10);
    v25.f64[0] = v22;
    v26 = vmulq_f64(v24, v25);
    *&v5 = *&v5;
    v46 = v5;
    v47 = v22;
    v27 = vcvtq_f64_f32(vmul_n_f32(v23[10], *&v5));
    v20.f64[1] = v22;
    v48 = v21;
    v28 = vmulq_f64(v21, v27);
    v29 = vmulq_n_f64(vmlaq_f64(vnegq_f64(vextq_s8(v28, v28, 8uLL)), v27, v20), 1.0 / vsubq_f64(v26, vdupq_laneq_s64(v26, 1)).f64[0]);
    v30 = v23[9].f32[1];
    v51 = vmlaq_laneq_f64(vmlaq_n_f64(v15, v19, v29.f64[0]), v18, v29, 1);
    v49 = 0uLL;
    v31 = (*(*this + 192))(this, a2, &v49);
    if (v31)
    {
      v33 = v31;
      v34 = vmulq_f64(v48, v48).f64[0] + v47 * v47;
      v36.n128_u64[1] = *(&v46 + 1);
      v35 = (v30 * *&v46) / sqrtf(v34);
      v51 = vmlaq_n_f64(vmlaq_n_f64(v51, v50[0], *&v49), v50[1], *(&v49 + 1));
      v36.n128_f64[0] = vaddvq_f64(vmulq_f64(v50[0], v50[0]));
      v37 = vmulq_f64(v50[1], v50[1]);
      v38 = vaddq_f64(vdupq_laneq_s64(v37, 1), v37);
      v39 = v36.n128_f64[0] != 1.0;
      if (v38.n128_f64[0] != 1.0)
      {
        v39 = 1;
      }

      v40 = sqrt(v36.n128_f64[0]);
      v41 = sqrt(v38.n128_f64[0]);
      if (v39)
      {
        v38.n128_f64[0] = v41;
        v36.n128_f64[0] = v40;
      }

      _ZF = v35 == 0.0 && (*(*(this + 18) + 100) & 0x400) == 0;
      if (!_ZF && (*(this + 100) & 0x80) != 0 && v36.n128_f64[0] < 3.0)
      {
        v38.n128_f64[0] = vabdd_f64(v36.n128_f64[0], v38.n128_f64[0]);
        v36.n128_u64[0] = 0x3F50624DD2F1A9FCLL;
        if (v38.n128_f64[0] < 0.001)
        {
          v43 = CA::Render::Path::new_path(v31, v32);
          if (v43)
          {
            v44 = v43;
            CA::Transform::set_affine(v52, v50[0].f64[0], v50[0].f64[1], v50[1].f64[0], v50[1].f64[1], v51.f64[0], v51.f64[1]);
            CA::OGL::emit_shadow_path(v4);
            if (atomic_fetch_add(v44 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v44 + 16))(v44);
            }

            CGPathRelease(v33);
            *(*(v4 + 16) + 8) = v7;
            return;
          }
        }
      }

      (*(*this + 200))(this, v38, v36);
      (*(*this + 208))(this);
      v45 = CA::CG::fill_path_blurred(a2);
      CGPathRelease(v33);
      *(*(v4 + 16) + 8) = v7;
      if (v45)
      {
        return;
      }
    }

    else
    {
      *(*(v4 + 16) + 8) = v7;
    }

    CA::CG::DrawShadow::draw_shadow(this, a2);
    return;
  }

  CA::CG::DrawShadow::draw_shadow(this, a2);
}

void CA::CG::FillPathShadow::~FillPathShadow(CA::CG::FillPathShadow *this)
{
  *this = &unk_1EF203CE0;
  v2 = *(this + 19);
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v2 + 8))(v2);
  }

  CA::CG::DrawOp::~DrawOp(this);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, this);
}

{
  *this = &unk_1EF203CE0;
  v2 = *(this + 19);
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v2 + 8))(v2);
  }

  CA::CG::DrawOp::~DrawOp(this);
}

uint64_t CA::CG::StrokePathShadow::retain_path(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 144);
  v2 = *(v1 + 112);
  v9 = *(v1 + 152);
  v3 = *(v1 + 168);
  v10 = v3;
  v4 = v1;
  if (v3)
  {
    CGDashRetain();
    v4 = *(a1 + 144);
  }

  v6 = *(v1 + 184);
  v11 = *(v1 + 176);
  v12 = v6;
  stroked_path = CA::CG::create_stroked_path(v2, (v1 + 8), &v9, (*(v4 + 100) & 4) != 0);
  if (v3)
  {
    CGDashRelease();
  }

  return stroked_path;
}

void CA::CG::StrokePathShadow::~StrokePathShadow(CA::CG::StrokePathShadow *this)
{
  *this = &unk_1EF203CE0;
  v2 = *(this + 19);
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v2 + 8))(v2);
  }

  CA::CG::DrawOp::~DrawOp(this);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, this);
}

{
  *this = &unk_1EF203CE0;
  v2 = *(this + 19);
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v2 + 8))(v2);
  }

  CA::CG::DrawOp::~DrawOp(this);
}

CGColorSpaceRef CACopyColorSpaceFromBulkAttachments(CGColorSpaceRef result)
{
  if (result)
  {
    return CA::Render::load_colorspace_from_bulk_attachments(*(result + 59), *(result + 60));
  }

  return result;
}

double CA::Render::TiledTexture::lod_scale(CA::Render::TiledTexture *this, int a2)
{
  result = 1.0;
  v3 = a2 - *(this + 31);
  if (v3)
  {
    result = 0.0;
    if ((a2 & 0x80000000) == 0 && *(this + 30) > a2)
    {
      v4 = *(this + 4);
      if (v3 >= 0)
      {
        v5 = v4 >> v3;
      }

      else
      {
        v5 = v4 << (*(this + 124) - a2);
      }

      return v5 / v4;
    }
  }

  return result;
}

uint64_t CA::Render::TiledTexture::set_fill_color(CA::Render::TiledTexture *this, int a2, Pattern *a3)
{
  *(this + 32) = a2;
  v4 = *(this + 17);
  if (v4 != a3)
  {
    v5 = a3;
    if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v4 + 16))(v4);
    }

    if (v5)
    {
      v6 = &v5[1];
      if (!atomic_fetch_add(&v5[1], 1u))
      {
        v5 = 0;
        atomic_fetch_add(v6, 0xFFFFFFFF);
      }
    }

    *(this + 17) = v5;
    v4 = v5;
  }

  if (v4)
  {
    v7 = *(v4 + 16);
    v8 = v7 && (*(v7 + 13) & 0x10) != 0 && *(v4 + 12) <= *(v4 + 10) && *(v4 + 13) <= *(v4 + 11);
  }

  else
  {
    v8 = *(this + 128) == 0xFF;
  }

  result = (*(*this + 120))(this);
  if ((result & v8) != 0)
  {
    v10 = 4096;
  }

  else
  {
    v10 = 0;
  }

  *(this + 3) = *(this + 3) & 0xFFFFEFFF | v10;
  return result;
}

CFTypeID CA::Layer::ensure_mipmaps(CFTypeID this)
{
  if ((*(this + 55) & 0x20) == 0)
  {
    v1 = this;
    this = [*(this + 16) contents];
    if (this)
    {
      v2 = CFGetTypeID(this);
      if (CABackingStoreGetTypeID::once[0] != -1)
      {
        dispatch_once(CABackingStoreGetTypeID::once, &__block_literal_global_1020);
      }

      if (v2 == CABackingStoreGetTypeID::type)
      {
        v3 = *(v1 + 16);

        return [v3 setNeedsDisplay];
      }

      else
      {
        this = CGImageGetTypeID();
        if (v2 == this)
        {
          v4 = *(v1 + 16);

          return [v4 setContentsChanged];
        }
      }
    }
  }

  return this;
}

uint64_t CA::Layer::fetch_defaults(CA::Layer *this)
{
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (!v2)
  {
    v2 = CA::Transaction::create(this);
  }

  v3 = CA::Layer::writable_state(this, v2);

  return CA::Layer::State::fetch_defaults(v3, v2, defaultValueForAtom, this);
}

atomic_uint **X::Ref<CA::Layer>::~Ref(atomic_uint **a1)
{
  v2 = *a1;
  if (*a1)
  {
    while (1)
    {
      v3 = *v2;
      if (!*v2)
      {
        break;
      }

      v4 = *v2;
      atomic_compare_exchange_strong(v2, &v4, v3 - 1);
      if (v4 == v3)
      {
        if (v3 == 1)
        {
          CA::Layer::destroy(v2);
          CA::Layer::~Layer(v2);
          if (x_malloc_get_zone::once != -1)
          {
            dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
          }

          malloc_zone_free(malloc_zone, v2);
        }

        return a1;
      }
    }
  }

  return a1;
}

void CA::Layer::update_if_needed_(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v33 = v1;
  v41[508] = *MEMORY[0x1E69E9840];
  if (CADeviceSupportsPreLayout::once != -1)
  {
    dispatch_once(&CADeviceSupportsPreLayout::once, &__block_literal_global_454);
  }

  if (CADeviceSupportsPreLayout::enabled)
  {
    v6 = 268435488;
  }

  else
  {
    v6 = 32;
  }

  v7 = &CADisplayTimerGetTypeID::type;
  if (BYTE12(xmmword_1ED4E980C) == 1)
  {
    ++*(v5 + 80);
    kdebug_trace();
  }

  v8 = *(v5 + 112);
  if ((v8 & 0x80000000) != 0 || (v9 = v33 + 4 * v8, (v10 = *(v9 + 68)) == 0))
  {
    v32 = CA::Layer::thread_flags_(v33, v5);
    v10 = *v32;
  }

  else
  {
    v32 = (v9 + 272);
  }

  v31 = v6 | 0x40;
  if ((v10 & (v6 | 0x40)) != 0)
  {
    kdebug_trace();
    kdebug_trace();
    v11 = *(v5 + 116);
    *(v5 + 116) = v11 + 1;
    if (!v11)
    {
      os_unfair_lock_lock(&CA::Transaction::transaction_lock);
    }

    if (CADeviceSupportsPreLayout::once != -1)
    {
      dispatch_once(&CADeviceSupportsPreLayout::once, &__block_literal_global_454);
    }

    if ((*v32 & v31) != 0)
    {
      v12 = 0;
      v13 = 0;
      v30 = (CADeviceSupportsPreLayout::enabled & 1) == 0;
      do
      {
        v39[0] = 0;
        v39[1] = v41;
        v40 = xmmword_183E214F0;
        v14 = dyld_program_sdk_at_least();
        v15 = v14;
        v35 = 0u;
        v36 = 0u;
        if (v14)
        {
          v16 = 0;
        }

        else
        {
          v16 = 128;
        }

        v34 = 0uLL;
        *(&v35 + 1) = v5;
        *&v36 = v39;
        *(&v36 + 1) = v6 | 0x4000000000;
        v37 = v16;
        v38 = v30;
        CA::Layer::collect_layers_(v33, &v34);
        v18 = *(&v34 + 1);
        v17 = v34;
        *&v36 = v15 ^ 1u;
        v19 = *(v5 + 72);
        *&v34 = v5;
        *(&v34 + 1) = v19;
        v35 = v17;
        *(v5 + 72) = &v34;
        CA::Transaction::unlock(v5);
        for (; v17; v17 = *(v17 + 8))
        {
          v20 = *v17;
          *(&v35 + 1) = v20;
          v21 = CA::Layer::layer_being_drawn(v20, v5, 0x1000000);
          if (BYTE8(xmmword_1ED4E982C) & 1) != 0 || (BYTE9(xmmword_1ED4E982C))
          {
            Current = CFAbsoluteTimeGetCurrent();
            v22 = CA::Layer::perform_update_(v20, v21, v6, v3, v5);
            [v21 _validateLayoutHashHasChangedWithLayoutTime:CFAbsoluteTimeGetCurrent() - Current];
          }

          else
          {
            v22 = CA::Layer::perform_update_(v20, v21, v6, v3, v5);
          }

          v12 += (v22 >> 5) & 1;
          v13 += v22 >> 28;
        }

        while (v18)
        {
          v24 = *v18;
          v25 = *(v5 + 112);
          if ((v25 & 0x80000000) != 0 || (v26 = v24 + 4 * v25, (v27 = *(v26 + 68)) == 0))
          {
            v28 = CA::Layer::thread_flags_(v24, v5);
            v27 = *v28;
          }

          else
          {
            v28 = (v26 + 272);
          }

          *v28 = v27 & 0xFFFFFF7F;
          v18 = *(v18 + 8);
        }

        x_heap_free(v39);
        v29 = *(v5 + 116);
        *(v5 + 116) = v29 + 1;
        if (!v29)
        {
          os_unfair_lock_lock(&CA::Transaction::transaction_lock);
        }

        *(v34 + 72) = *(&v34 + 1);
      }

      while ((*v32 & v31) != 0);
      v7 = &CADisplayTimerGetTypeID::type;
    }

    CA::Transaction::unlock(v5);
    kdebug_trace();
    kdebug_trace();
  }

  if (*(v7 + 2072) == 1)
  {
    --*(v5 + 80);

    kdebug_trace();
  }
}

void sub_183D531C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v20 = *(v18 + 29);
  *(v18 + 29) = v20 + 1;
  if (!v20)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  *(a17 + 72) = a18;
  CA::Transaction::unlock(v18);
  kdebug_trace();
  kdebug_trace();
  _Unwind_Resume(a1);
}

uint64_t CA::Layer::perform_update_(CA::Layer *this, void *a2, int a3, int a4, CA::Transaction *a5)
{
  if (CADeviceSupportsPreLayout::once != -1)
  {
    dispatch_once(&CADeviceSupportsPreLayout::once, &__block_literal_global_454);
  }

  if ((CADeviceSupportsPreLayout::enabled & 1) == 0)
  {
    [a2 layoutSublayers];
    return 32;
  }

  if ((a3 & 0x10000000) == 0)
  {
    goto LABEL_8;
  }

  v9 = *(a5 + 28);
  if ((v9 & 0x80000000) != 0 || (v10 = *(this + v9 + 68)) == 0)
  {
    if ((*CA::Layer::thread_flags_(this, a5) & 0x10000000) != 0)
    {
      goto LABEL_13;
    }

LABEL_8:
    v11 = 0;
    if ((a3 & 0x20) == 0)
    {
      return v11;
    }

    goto LABEL_16;
  }

  if ((v10 & 0x10000000) == 0)
  {
    goto LABEL_8;
  }

LABEL_13:
  v13 = CA::Layer::signpost_name(this);
  CA::Transaction::ktrace_value_from_string(a5, 348782628, v13, 0);
  kdebug_trace();
  CA::Layer::clear_flags_(this, 0x10000000, a5, v14);
  [a2 _performPreLayoutUpdate];
  if (BYTE13(xmmword_1ED4E980C) == 1)
  {
    getppid();
  }

  kdebug_trace();
  v11 = 0x10000000;
  if ((a3 & 0x20) != 0)
  {
LABEL_16:
    v15 = *(a5 + 28);
    if ((v15 & 0x80000000) != 0 || (v16 = *(this + v15 + 68)) == 0)
    {
      v16 = *CA::Layer::thread_flags_(this, a5);
    }

    if ((v16 & 0x20) != 0)
    {
      v17 = CA::Layer::signpost_name(this);
      CA::Transaction::ktrace_value_from_string(a5, 348782612, v17, 0);
      kdebug_trace();
      CA::Layer::clear_flags_(this, 0x20, a5, v18);
      [a2 layoutSublayers];
      v11 = v11 | 0x20;
      if (BYTE13(xmmword_1ED4E980C) == 1)
      {
        getppid();
      }

      kdebug_trace();
    }
  }

  return v11;
}

const char *CA::Layer::signpost_name(id *this)
{
  if (*(this + 136) == 1)
  {
    if (objc_loadWeak(this + 16))
    {
      goto LABEL_3;
    }
  }

  else if (this[16])
  {
LABEL_3:
    if (*(this + 136) == 1)
    {
      Weak = objc_loadWeak(this + 16);
    }

    else
    {
      Weak = this[16];
    }

    goto LABEL_10;
  }

  result = [objc_msgSend(this[2] "name")];
  if (result)
  {
    return result;
  }

  Weak = this[2];
LABEL_10:

  return object_getClassName(Weak);
}

id CA::Layer::layer_at_time(CA::Layer *this, CA::Transaction *a2, double a3, char a4, int a5)
{
  v39[1] = *MEMORY[0x1E69E9840];
  v39[0] = a3;
  v5 = *(this + 2);
  if (!*(this + 35))
  {
    return v5;
  }

  v10 = *(a2 + 29);
  *(a2 + 29) = v10 + 1;
  if (!v10)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  v33 = 0;
  v34 = &v33;
  v35 = 0x3052000000;
  v36 = __Block_byref_object_copy__13750;
  v37 = __Block_byref_object_dispose__13751;
  v38 = 0;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v26 = ___ZN2CA5Layer13layer_at_timeEPNS_11TransactionEdbb_block_invoke;
  v27 = &unk_1E6DF7430;
  v28 = v5;
  v29 = &v33;
  v32 = a5;
  v30 = this;
  v31 = a2;
  if ([*(this + 36) count])
  {
    if (((v26)(v25) & 1) == 0)
    {
      goto LABEL_41;
    }

    CA::Layer::apply_modifiers_to_layer(*(this + 36), v34[5]);
  }

  v12 = *(this + 35);
  if (!v12)
  {
LABEL_39:
    v22 = v34[5];
    if (v22)
    {
      atomic_fetch_or((*(v22 + 16) + 4), 0x8000u);
      v5 = v34[5];
      v34[5] = v5;
    }

    goto LABEL_41;
  }

  while (1)
  {
    if ((*(v12 + 58) & 1) != 0 || (*(v12 + 61) & 1) != 0 || a5 && *(v12 + 57) == 1 && *(v12 + 63) != 1)
    {
      goto LABEL_38;
    }

    v13 = v12[4];
    if (v13)
    {
      v14 = (v13 + 8);
      if (!atomic_fetch_add((v13 + 8), 1u))
      {
        v13 = 0;
        atomic_fetch_add(v14, 0xFFFFFFFF);
      }
    }

    if ((*(v12 + 57) & 1) == 0)
    {
      [v12[1] beginTime];
      v15 = v12[1];
      if (v16 == 0.0)
      {
        if ([objc_msgSend(v15 "beginTimeMode")])
        {
          CA::Transaction::Shared::time(*(a2 + 15));
          v24 = v17;
          CA::Layer::convert_time(a2, &v24, 0, *(this + 2), v18);
          v19 = v12[1];
          v19[4] &= ~1u;
          [v19 setBeginTime:v24];
          [v12[1] setBeginTimeMode:@"absolute"];
          v15 = v12[1];
          v15[4] |= 5u;
        }

        else
        {
          v15 = v12[1];
        }
      }

      if ([objc_msgSend(v15 "beginTimeMode")])
      {
        v20 = CAMediaTimingCopyRenderTiming(v12[1]);
        if (v13 && atomic_fetch_add((v13 + 8), 0xFFFFFFFF) == 1)
        {
          (*(*v13 + 16))(v13);
        }

        v13 = v20;
      }
    }

    if (!v13)
    {
      goto LABEL_38;
    }

    if ((a4 & 1) != 0 && !CA::Layer::convert_time(a2, v39, 0, *(this + 2), v11))
    {
      break;
    }

    v21 = v39[0];
    if ((v39[0] >= *(v13 + 40) || (*(v13 + 13) & 4) != 0) && (v21 <= CA::Render::Timing::end_time(v13) || (*(v13 + 13) & 2) != 0))
    {
      if (!(v26)(v25))
      {
        break;
      }

      [v12[1] applyForTime:v34[5] presentationObject:v5 modelObject:v39[0]];
    }

    if (atomic_fetch_add((v13 + 8), 0xFFFFFFFF) == 1)
    {
      (*(*v13 + 16))(v13);
    }

    a4 = 0;
LABEL_38:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_39;
    }
  }

  if (atomic_fetch_add((v13 + 8), 0xFFFFFFFF) == 1)
  {
    (*(*v13 + 16))(v13);
  }

LABEL_41:
  _Block_object_dispose(&v33, 8);
  CA::Transaction::unlock(a2);
  return v5;
}

void sub_183D5393C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  CA::Transaction::unlock(v12);
  _Unwind_Resume(a1);
}

BOOL ___ZN2CA5Layer13layer_at_timeEPNS_11TransactionEdbb_block_invoke(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    return 1;
  }

  v3 = *(a1 + 48);
  *(*(*(a1 + 40) + 8) + 40) = objc_alloc(objc_opt_class());
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    return 0;
  }

  v4 = *(v3 + 1);
  v5 = *(a1 + 64);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v6 = malloc_type_zone_malloc(malloc_zone, 0x128uLL, 0x165299FDuLL);
  if (v6)
  {
    v7 = v6;
    if (v5)
    {
      v8 = 0x40000;
    }

    else
    {
      v8 = 393216;
    }

    v9 = v8 | v4 & 0xFFEBFFFF;
    v10 = *(*(*(a1 + 40) + 8) + 40);
    v11 = *(a1 + 56);
    *v6 = 0;
    *(v6 + 1) = 0;
    *(v6 + 3) = 0;
    *(v6 + 4) = 0;
    *(v6 + 2) = v10;
    CA::Layer::State::State(v6 + 40, v3 + 40, v11);
    *(v7 + 19) = 0;
    *(v7 + 20) = 0;
    *(v7 + 44) = 0;
    *(v7 + 21) = 0;
    *(v7 + 184) = 0u;
    *(v7 + 200) = 0u;
    *(v7 + 216) = 0u;
    *(v7 + 232) = 0u;
    *(v7 + 248) = 0;
    *(v7 + 32) = 0;
    *(v7 + 33) = 0;
    *(v7 + 35) = 0;
    *(v7 + 36) = 0;
    *v7 = 1;
    *(v7 + 1) = v9;
    *(v7 + 34) = 0;
    *(v10 + 16) = v7;
    v12 = *(a1 + 56);
    v6 = v7;
  }

  else
  {
    v12 = *(a1 + 56);
  }

  CA::Layer::set_model_layer(v6, v12, v3);
  *(*(*(a1 + 40) + 8) + 40) = [*(*(*(a1 + 40) + 8) + 40) initWithLayer:*(a1 + 32)];
  return *(*(*(a1 + 40) + 8) + 40) != 0;
}

void CA::Layer::get_frame_transform(CA::Layer *this, CGAffineTransform *a2, char a3)
{
  v55 = *MEMORY[0x1E69E9840];
  v6 = *(this + 2);
  v8 = CA::Transaction::ensure_compat(this);
  v9 = *(v8 + 29);
  *(v8 + 29) = v9 + 1;
  if (!v9)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  v10 = *(this + 14);
  if ((v10 & 0x1000) != 0)
  {
    [v6 anchorPoint];
    v10 = *(this + 14);
    _Q0.f64[1] = v16;
  }

  else
  {
    __asm { FMOV            V0.2D, #0.5 }
  }

  v17 = vmulq_f64(*(this + 7), _Q0);
  if ((v10 & 0x20) != 0)
  {
    v38 = v17;
    if (v6)
    {
      [v6 transform];
    }

    else
    {
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v44 = 0u;
      memset(&v43, 0, sizeof(v43));
    }

    v51 = v45;
    v52 = v46;
    v53 = v47;
    v54 = v48;
    v49 = v43;
    v50 = v44;
    if (CA::Mat4Impl::mat4_is_affine(&v49, v7))
    {
      v19 = *&v49.a;
      v20 = *&v49.tx;
      *&a2->a = *&v49.a;
      *&a2->c = v20;
      v21 = v53;
      *&a2->tx = v53;
    }

    else
    {
      v23 = *(MEMORY[0x1E695EFD0] + 16);
      v22 = *(MEMORY[0x1E695EFD0] + 32);
      *&a2->a = *MEMORY[0x1E695EFD0];
      *&a2->c = v23;
      *&a2->tx = v22;
      v19 = *&a2->a;
      v20 = *&a2->c;
      v21 = *&a2->tx;
    }

    v18 = vaddq_f64(vsubq_f64(*(this + 5), vmlaq_n_f64(vmulq_laneq_f64(v20, v38, 1), v19, v38.f64[0])), v21);
  }

  else
  {
    a2->a = 1.0;
    a2->b = 0.0;
    a2->c = 0.0;
    a2->d = 1.0;
    v18 = vsubq_f64(*(this + 5), v17);
  }

  *&a2->tx = v18;
  if ((a3 & 1) == 0)
  {
    if (v6)
    {
      v24 = CA::Layer::superlayer(v6[2], v8);
      if (v24)
      {
        if (dyld_program_sdk_at_least())
        {
          layer = v24->_attr.layer;
          v26 = *(layer + 14);
          if ((v26 & 0x40) != 0)
          {
            if ((v26 & 0x1000) != 0)
            {
              [(CALayer *)v24 anchorPoint];
              _Q0.f64[1] = v28;
            }

            else
            {
              __asm { FMOV            V0.2D, #0.5 }
            }

            v39 = vmlaq_f64(*(layer + 6), _Q0, *(layer + 7));
            *&a2->tx = vsubq_f64(*&a2->tx, v39);
            [(CALayer *)v24 sublayerTransform];
            v51 = v45;
            v52 = v46;
            v53 = v47;
            v54 = v48;
            v49 = v43;
            v50 = v44;
            if (CA::Mat4Impl::mat4_is_affine(&v49, v29))
            {
              v30 = *&a2->c;
              *&t1.a = *&a2->a;
              *&t1.c = v30;
              *&t1.tx = *&a2->tx;
              *&t2.a = *&v49.a;
              *&t2.c = *&v49.tx;
              *&t2.tx = v53;
              CGAffineTransformConcat(&v43, &t1, &t2);
              v31 = *&v43.c;
              *&a2->a = *&v43.a;
              *&a2->c = v31;
              *&a2->tx = *&v43.tx;
            }

            *&a2->tx = vaddq_f64(*&a2->tx, v40);
          }
        }
      }
    }
  }

  if ((*(this + 49) & 0x20) != 0)
  {
    v32 = *(this + 15);
    t1.b = 0.0;
    t1.c = 0.0;
    t1.a = 1.0;
    *&t1.d = xmmword_183E20F00;
    t1.ty = v32;
    v33 = *&a2->c;
    *&t2.a = *&a2->a;
    *&t2.c = v33;
    *&t2.tx = *&a2->tx;
    CGAffineTransformConcat(&v43, &t1, &t2);
    v34 = *&v43.c;
    *&a2->a = *&v43.a;
    *&a2->c = v34;
    *&a2->tx = *&v43.tx;
  }

  if (*(this + 52))
  {
    v37 = *&a2->a;
    *&a2->tx = vmlaq_n_f64(*&a2->tx, *&a2->a, *(this + 14));
    *&a2->a = vnegq_f64(v37);
  }

  if ((*(this + 56) & 8) != 0)
  {
    v35 = *&a2->c;
    *&t1.a = *&a2->a;
    *&t1.c = v35;
    *&t1.tx = *&a2->tx;
    CGAffineTransformTranslate(&v43, &t1, -*(this + 12), -*(this + 13));
    v36 = *&v43.c;
    *&a2->a = *&v43.a;
    *&a2->c = v36;
    *&a2->tx = *&v43.tx;
  }

  CA::Transaction::unlock(v8);
}

void sub_183D543FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

BOOL backing_blame_callback(char *a1, size_t a2, id *a3)
{
  if (*(a3 + 96) == 1)
  {
    Weak = objc_loadWeak(a3 + 11);
    if (!Weak)
    {
      return Weak != 0;
    }

    goto LABEL_5;
  }

  Weak = a3[11];
  if (Weak)
  {
LABEL_5:
    Class = object_getClass(Weak);
    Name = class_getName(Class);
    snprintf(a1, a2, "%s (CALayer)", Name);
  }

  return Weak != 0;
}

CGImageRef create_tinted_contents(CGImage *a1, CGColor *a2, char a3)
{
  v87 = *MEMORY[0x1E69E9840];
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  BitmapInfo = CGImageGetBitmapInfo(a1);
  if ((BitmapInfo & 0x100) != 0)
  {
    v9 = 0;
    v84 = 0;
    v10 = 13;
    v11 = 8;
  }

  else
  {
    BitsPerComponent = CGImageGetBitsPerComponent(a1);
    v84 = BitsPerComponent == 16;
    v9 = BitsPerComponent != 16;
    if (BitsPerComponent == 16)
    {
      v10 = 21;
    }

    else
    {
      v10 = 1;
    }

    if (BitsPerComponent == 16)
    {
      v11 = 8;
    }

    else
    {
      v11 = 4;
    }
  }

  ColorSpace = CGImageGetColorSpace(a1);
  if (CGColorSpaceGetModel(ColorSpace) != kCGColorSpaceModelRGB)
  {
    if ((BitmapInfo & 0x100) != 0)
    {
      v13 = 35;
    }

    else
    {
      v13 = 36;
    }

    ColorSpace = CAGetColorSpace(v13);
  }

  v14 = (v11 * Width + 31) & 0xFFFFFFFFFFFFFFE0;
  v15 = malloc_type_calloc(v14 * Height, 1uLL, 0x13A290A6uLL);
  v16 = CAGetCachedCGBitmapContext_(v15, Width, Height, v10, v14, ColorSpace);
  if (v16)
  {
    v17 = *(v16 + 2);
  }

  else
  {
    v17 = 0;
  }

  if (CGImageIsMask(a1))
  {
    v88.origin.x = 0.0;
    v88.origin.y = 0.0;
    v88.size.width = Width;
    v88.size.height = Height;
    CGContextClipToMask(v17, v88, a1);
    CGContextSetFillColorWithColor(v17, a2);
    v89.origin.x = 0.0;
    v89.origin.y = 0.0;
    v89.size.width = Width;
    v89.size.height = Height;
    CGContextFillRect(v17, v89);
  }

  else
  {
    CGContextSetBlendMode(v17, kCGBlendModeCopy);
    v90.origin.x = 0.0;
    v90.origin.y = 0.0;
    v90.size.width = Width;
    v90.size.height = Height;
    CGContextDrawImage(v17, v90, a1);
    v86 = 0uLL;
    CA::Render::convert_cgcolor_to_float(a2, ColorSpace, &v86, 0, v20);
    v21 = v86;
    if (v9)
    {
      v22 = vdup_n_s32(0x437F0000u);
      v23 = vmla_f32(0x3F0000003F000000, v22, *v86.f32);
      v24 = vbsl_s8(vcgt_f32(v23, v22), v22, v23);
      v25 = vbic_s8(vshl_u32(vcvt_s32_f32(v24), 0x800000010), vcltz_f32(v24));
      v26 = vmla_f32(0x3F0000003F000000, v22, *&vextq_s8(v86, v86, 8uLL));
      v27 = vbsl_s8(vcgt_f32(v26, v22), v22, v26);
      v28 = vcltz_f32(v27);
      if (v28.i8[0])
      {
        v29 = 0;
      }

      else
      {
        v29 = v27.f32[0];
      }

      if (v28.i8[4])
      {
        v30 = 0;
      }

      else
      {
        v30 = v27.f32[1] << 24;
      }

      if (a3)
      {
        if (Height)
        {
          v31 = 0;
          v32 = vorr_s8(vdup_lane_s32(v25, 1), v25).u32[0];
          v33 = (v32 | v29 | v30 | ((v32 | v29 | v30) << 24)) & 0xFF00FF00FF00FFLL;
          v34 = v15;
          do
          {
            if (Width)
            {
              for (i = 0; i != Width; ++i)
              {
                v36 = v34 + 4 * i;
                v37 = ((v33 + v33 * v36[3]) >> 8) & 0xFF00FF00FF00FFLL;
                *v36 = (v37 >> 24) | v37;
              }
            }

            ++v31;
            v34 = (v34 + v14);
          }

          while (v31 != Height);
        }
      }

      else if (Height)
      {
        v53 = 0;
        v54 = v29 + 1;
        v55 = (v30 >> 8) + 0x10000;
        v56 = vsra_n_u32(0x100000100, v25, 8uLL);
        v57 = v15;
        do
        {
          if (Width)
          {
            for (j = 0; j != Width; ++j)
            {
              v59 = v57->u32[j];
              v60 = vand_s8(vmul_s32(v56, vand_s8(vshl_u32(vdup_n_s32(v59), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL)), 0x1FF0001FF0000);
              v57->i32[j] = (v55 * HIBYTE(v59)) & 0xFF000000 | ((v59 * v54) >> 8) | v60.i32[0] | v60.i32[1];
            }
          }

          ++v53;
          v57 = (v57 + v14);
        }

        while (v53 != Height);
      }
    }

    else if (v84)
    {
      v38 = vdupq_n_s32(0x477FFF00u);
      v39.i64[0] = 0x3F0000003F000000;
      v39.i64[1] = 0x3F0000003F000000;
      v40 = vmlaq_f32(v39, v38, v86);
      v41 = vbslq_s8(vcgtq_f32(v40, v38), v38, v40);
      v42 = vmovn_s32(vclezq_f32(v41));
      if (v42.i8[0])
      {
        v43 = 0;
      }

      else
      {
        v43 = v41.f32[0];
      }

      if (v42.i8[2])
      {
        v44 = 0;
      }

      else
      {
        v44 = v41.f32[1];
      }

      if (v42.i8[4])
      {
        v45 = 0;
      }

      else
      {
        v45 = v41.f32[2];
      }

      v46 = v41.f32[3];
      if (v42.i8[6])
      {
        v46 = 0;
      }

      if (a3)
      {
        if (Height)
        {
          v47 = 0;
          v48 = v46 << 32;
          v49 = v45 << 16;
          v50 = v15;
          do
          {
            if (Width)
            {
              for (k = 0; k != Width; ++k)
              {
                v52 = &v50[k];
                *v52 = (v48 * (*(v52 + 3) + 1)) & 0xFFFF000000000000 | (v49 * (*(v52 + 3) + 1)) & 0xFFFFFFFF00000000 | ((*(v52 + 3) + 1) * v44) & 0xFFFFFFFFFFFF0000 | (((*(v52 + 3) + 1) * v43) >> 16);
              }
            }

            ++v47;
            v50 = (v50 + v14);
          }

          while (v47 != Height);
        }
      }

      else if (Height)
      {
        v71 = 0;
        v72 = (v44 << 16) | (v45 << 32) | (v46 << 48) | v43;
        v73 = v72 >> 16;
        v74 = v43;
        v75 = WORD1(v72) + 1;
        v76 = v74 + 1;
        v77 = (v73 & 0xFFFF00000000) + 0x100000000;
        v78 = (v73 & 0xFFFF0000) + 0x10000;
        v79 = v15;
        do
        {
          if (Width)
          {
            for (m = 0; m != Width; ++m)
            {
              v79[m] = ((v77 * HIWORD(*&v79[m])) & 0xFFFF000000000000 | ((*&v79[m] * v76) >> 16) | (v78 * WORD2(*&v79[m])) & 0x1FFFF00000000 | (WORD1(*&v79[m]) * v75) & 0x1FFFF0000);
            }
          }

          ++v71;
          v79 = (v79 + v14);
        }

        while (v71 != Height);
      }
    }

    else if ((BitmapInfo & 0x100) != 0)
    {
      if (a3)
      {
        if (Height)
        {
          v61 = 0;
          v62 = v15;
          do
          {
            v63 = Width;
            for (n = v62; v63; --v63)
            {
              _H1 = n->i16[3];
              __asm { FCVT            S1, H1 }

              *n++ = vcvt_f16_f32(vmulq_n_f32(v21, _S1));
            }

            ++v61;
            v62 = (v62 + v14);
          }

          while (v61 != Height);
        }
      }

      else if (Height)
      {
        v81 = 0;
        v82 = v15;
        do
        {
          if (Width)
          {
            for (ii = 0; ii != Width; ++ii)
            {
              v82[ii] = vcvt_f16_f32(vmulq_f32(v21, vcvtq_f32_f16(v82[ii])));
            }
          }

          ++v81;
          v82 = (v82 + v14);
        }

        while (v81 != Height);
      }
    }
  }

  Image = CGBitmapContextCreateImage(v17);
  CAReleaseCachedCGContext(v17);
  free(v15);
  return Image;
}

void sub_183D57BC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, atomic_uint *a12)
{
  CA::Transaction::unlock(v12);
  X::Ref<CA::Layer>::~Ref(&a12);
  _Unwind_Resume(a1);
}

uint64_t hitTestSublayers(uint64_t a1, double *a2, uint64_t *a3)
{
  if (a3)
  {
    v5 = a3 + 1;
    v6 = a3[2];
    if (v6 == 1)
    {
      if (!a3[3])
      {
LABEL_7:
        while (1)
        {
          v7 = *v5;
          if ((*(*(*v5 + 16) + 4) & 0x10000) != 0)
          {
            break;
          }

          v8 = [v7 hitTest:{*a2, a2[1]}];
          if (v8)
          {
            v9 = x_list_prepend(a1, v8);
LABEL_11:
            a1 = v9;
          }

          ++v5;
          if (!--v6)
          {
            return a1;
          }
        }

        v9 = hitTestSublayers(a1, a2, [v7 sublayers]);
        goto LABEL_11;
      }

LABEL_6:
      v5 = *v5;
      goto LABEL_7;
    }

    if (v6)
    {
      goto LABEL_6;
    }
  }

  return a1;
}

float64_t computeZ(CALayer *a1, CALayer *a2, CA::Transaction *a3, __int128 *a4, double a5, float64_t a6, double a7)
{
  v8 = 0;
  v47 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v9 = a1;
    if (a2 != a1)
    {
      do
      {
        MEMORY[0x1EEE9AC00](a1);
        v8 = &v30 - 1;
        *(&v30 - 2) = v11;
        *(&v30 - 1) = v12;
        a1 = CA::Layer::superlayer(*(v11 + 16), a3);
        if (a1)
        {
          _ZF = a1 == v9;
        }

        else
        {
          _ZF = 1;
        }
      }

      while (!_ZF);
    }
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v14 = *v8;
  CA::Layer::get_frame_transform(*(*v8 + 16), &v39, 0, 0, 0, a6, a7);
  for (i = *(v8 + 1); i; i = i[1])
  {
    if ((*(*(v14 + 16) + 4) & 0x10000) == 0)
    {
      break;
    }

    v14 = *i;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    CA::Layer::get_frame_transform(*(v14 + 16), &v31, 0, 0, 0, v16, v17);
    CA::Mat4Impl::mat4_concat(&v39, v31.f64, v39.f64, v19);
  }

  is_affine = CA::Mat4Impl::mat4_is_affine(&v39, v15);
  _Q0.f64[0] = 0.0;
  if (!is_affine)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    CA::Mat4Impl::mat4_invert(&v31, &v39, v21);
    v30 = *a4;
    CA::Mat4Impl::mat4_unapply_inverse_to_point2(&v31, &v30, v23);
    _Q0 = vmlaq_n_f64(vmlaq_n_f64(v46, v40, *&v30), v42, *(&v30 + 1));
    _D1 = 0x7FF0000000000000;
    __asm { FMLA            D2, D1, V0.D[1] }

    if (_D2 <= 0.0)
    {
      _Q0.f64[0] = -INFINITY;
    }

    else if (_Q0.f64[1] != 1.0)
    {
      _Q0.f64[0] = _Q0.f64[0] / _Q0.f64[1];
    }
  }

  return _Q0.f64[0];
}

uint64_t add_animation(const void *a1, const void *a2, void *a3)
{
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {

    return [a3 addAnimation:a2 forKey:a1];
  }

  return result;
}

uint64_t appendLayerDescription(CALayer *a1, NSMutableString *a2, int a3)
{
  v16 = *MEMORY[0x1E69E9840];
  [(NSMutableString *)a2 appendFormat:@"%*s%@\n", (3 * a3), " ", [(CALayer *)a1 debugDescription]];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(CALayer *)a1 sublayers];
  result = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (result)
  {
    v8 = result;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        appendLayerDescription(*(*(&v12 + 1) + 8 * v10++), a2, a3 + 1);
      }

      while (v8 != v10);
      result = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v11 count:16];
      v8 = result;
    }

    while (result);
  }

  return result;
}

IMP cons_CALayer_kCAValueCornerRadii(int a1, int a2)
{
  block[5] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = block;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v3 = &__block_descriptor_36_e67__CACornerRadii__CGSize_dd__CGSize_dd__CGSize_dd__CGSize_dd__16__0_8l;
    v4 = ___ZL32cons_CALayer_kCAValueCornerRadiijb_block_invoke;
  }

  else
  {
    v2 = v6;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v3 = &__block_descriptor_36_e70_v80__0_8_CACornerRadii__CGSize_dd__CGSize_dd__CGSize_dd__CGSize_dd__16l;
    v4 = ___ZL32cons_CALayer_kCAValueCornerRadiijb_block_invoke_2;
  }

  v2[2] = v4;
  v2[3] = v3;
  *(v2 + 8) = a1;
  return imp_implementationWithBlock(v2);
}

void ___ZL32cons_CALayer_kCAValueCornerRadiijb_block_invoke(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 32);
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  CA::Layer::getter(*(a2 + 16), v4, 0x19, a3);
}

void ___ZL32cons_CALayer_kCAValueCornerRadiijb_block_invoke_2(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = a3[1];
  v6[0] = *a3;
  v6[1] = v4;
  v5 = a3[3];
  v6[2] = a3[2];
  v6[3] = v5;
  CA::Layer::setter(*(a2 + 16), v3, 0x19, v6);
}

IMP cons_CALayer_kCAValuePoint3D(int a1, int a2)
{
  block[5] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = block;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v3 = &__block_descriptor_36_e22__CAPoint3D_ddd_16__0_8l;
    v4 = ___ZL28cons_CALayer_kCAValuePoint3Djb_block_invoke;
  }

  else
  {
    v2 = v6;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v3 = &__block_descriptor_36_e25_v40__0_8_CAPoint3D_ddd_16l;
    v4 = ___ZL28cons_CALayer_kCAValuePoint3Djb_block_invoke_2;
  }

  v2[2] = v4;
  v2[3] = v3;
  *(v2 + 8) = a1;
  return imp_implementationWithBlock(v2);
}

double ___ZL28cons_CALayer_kCAValuePoint3Djb_block_invoke(uint64_t a1, uint64_t a2)
{
  v4[3] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  memset(v4, 0, 24);
  CA::Layer::getter(*(a2 + 16), v2, 0x18, v4);
  return *v4;
}

void ___ZL28cons_CALayer_kCAValuePoint3Djb_block_invoke_2(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  v6[3] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6[0] = a3;
  v6[1] = a4;
  v6[2] = a5;
  CA::Layer::setter(*(a2 + 16), v5, 0x18, v6);
}

IMP cons_CALayer_kCAValueAffineTransform(int a1, int a2)
{
  block[5] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = block;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v3 = &__block_descriptor_36_e33__CGAffineTransform_dddddd_16__0_8l;
    v4 = ___ZL36cons_CALayer_kCAValueAffineTransformjb_block_invoke;
  }

  else
  {
    v2 = v6;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v3 = &__block_descriptor_36_e36_v64__0_8_CGAffineTransform_dddddd_16l;
    v4 = ___ZL36cons_CALayer_kCAValueAffineTransformjb_block_invoke_2;
  }

  v2[2] = v4;
  v2[3] = v3;
  *(v2 + 8) = a1;
  return imp_implementationWithBlock(v2);
}

void ___ZL36cons_CALayer_kCAValueAffineTransformjb_block_invoke(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 32);
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  CA::Layer::getter(*(a2 + 16), v4, 0x17, a3);
}

void ___ZL36cons_CALayer_kCAValueAffineTransformjb_block_invoke_2(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = a3[1];
  v5[0] = *a3;
  v5[1] = v4;
  v5[2] = a3[2];
  CA::Layer::setter(*(a2 + 16), v3, 0x17, v5);
}

IMP cons_CALayer_kCAValueTransform(int a1, int a2)
{
  block[5] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = block;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v3 = &__block_descriptor_36_e39__CATransform3D_dddddddddddddddd_16__0_8l;
    v4 = ___ZL30cons_CALayer_kCAValueTransformjb_block_invoke;
  }

  else
  {
    v2 = v6;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v3 = &__block_descriptor_36_e43_v144__0_8_CATransform3D_dddddddddddddddd_16l;
    v4 = ___ZL30cons_CALayer_kCAValueTransformjb_block_invoke_2;
  }

  v2[2] = v4;
  v2[3] = v3;
  *(v2 + 8) = a1;
  return imp_implementationWithBlock(v2);
}

void ___ZL30cons_CALayer_kCAValueTransformjb_block_invoke(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 32);
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  CA::Layer::getter(*(a2 + 16), v4, 0x16, a3);
}

void ___ZL30cons_CALayer_kCAValueTransformjb_block_invoke_2(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = a3[5];
  v8[4] = a3[4];
  v8[5] = v4;
  v5 = a3[7];
  v8[6] = a3[6];
  v8[7] = v5;
  v6 = a3[1];
  v8[0] = *a3;
  v8[1] = v6;
  v7 = a3[3];
  v8[2] = a3[2];
  v8[3] = v7;
  CA::Layer::setter(*(a2 + 16), v3, 0x16, v8);
}

IMP cons_CALayer_kCAValueRect(int a1, int a2)
{
  block[5] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = block;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v3 = &__block_descriptor_36_e39__CGRect__CGPoint_dd__CGSize_dd__16__0_8l;
    v4 = ___ZL25cons_CALayer_kCAValueRectjb_block_invoke;
  }

  else
  {
    v2 = v6;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v3 = &__block_descriptor_36_e42_v48__0_8_CGRect__CGPoint_dd__CGSize_dd__16l;
    v4 = ___ZL25cons_CALayer_kCAValueRectjb_block_invoke_2;
  }

  v2[2] = v4;
  v2[3] = v3;
  *(v2 + 8) = a1;
  return imp_implementationWithBlock(v2);
}

double ___ZL25cons_CALayer_kCAValueRectjb_block_invoke(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  memset(v4, 0, sizeof(v4));
  CA::Layer::getter(*(a2 + 16), v2, 0x15, v4);
  return *v4;
}

void ___ZL25cons_CALayer_kCAValueRectjb_block_invoke_2(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v7[4] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7[0] = a3;
  v7[1] = a4;
  v7[2] = a5;
  v7[3] = a6;
  CA::Layer::setter(*(a2 + 16), v6, 0x15, v7);
}

IMP cons_CALayer_kCAValueSize(int a1, int a2)
{
  block[5] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = block;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v3 = &__block_descriptor_36_e18__CGSize_dd_16__0_8l;
    v4 = ___ZL25cons_CALayer_kCAValueSizejb_block_invoke;
  }

  else
  {
    v2 = v6;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v3 = &__block_descriptor_36_e21_v32__0_8_CGSize_dd_16l;
    v4 = ___ZL25cons_CALayer_kCAValueSizejb_block_invoke_2;
  }

  v2[2] = v4;
  v2[3] = v3;
  *(v2 + 8) = a1;
  return imp_implementationWithBlock(v2);
}

double ___ZL25cons_CALayer_kCAValueSizejb_block_invoke(uint64_t a1, uint64_t a2)
{
  v4[2] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v4[0] = 0;
  v4[1] = 0;
  CA::Layer::getter(*(a2 + 16), v2, 0x14, v4);
  return *v4;
}

void ___ZL25cons_CALayer_kCAValueSizejb_block_invoke_2(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5[0] = a3;
  v5[1] = a4;
  CA::Layer::setter(*(a2 + 16), v4, 0x14, v5);
}

IMP cons_CALayer_kCAValuePoint(int a1, int a2)
{
  block[5] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = block;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v3 = &__block_descriptor_36_e19__CGPoint_dd_16__0_8l;
    v4 = ___ZL26cons_CALayer_kCAValuePointjb_block_invoke;
  }

  else
  {
    v2 = v6;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v3 = &__block_descriptor_36_e22_v32__0_8_CGPoint_dd_16l;
    v4 = ___ZL26cons_CALayer_kCAValuePointjb_block_invoke_2;
  }

  v2[2] = v4;
  v2[3] = v3;
  *(v2 + 8) = a1;
  return imp_implementationWithBlock(v2);
}

double ___ZL26cons_CALayer_kCAValuePointjb_block_invoke(uint64_t a1, uint64_t a2)
{
  v4[2] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v4[0] = 0;
  v4[1] = 0;
  CA::Layer::getter(*(a2 + 16), v2, 0x13, v4);
  return *v4;
}

void ___ZL26cons_CALayer_kCAValuePointjb_block_invoke_2(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5[0] = a3;
  v5[1] = a4;
  CA::Layer::setter(*(a2 + 16), v4, 0x13, v5);
}

IMP cons_CALayer_kCAValueFloat(int a1, int a2)
{
  block[5] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = block;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v3 = &__block_descriptor_36_e8_f16__0_8l;
    v4 = ___ZL26cons_CALayer_kCAValueFloatjb_block_invoke;
  }

  else
  {
    v2 = v6;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v3 = &__block_descriptor_36_e11_v20__0_8f16l;
    v4 = ___ZL26cons_CALayer_kCAValueFloatjb_block_invoke_2;
  }

  v2[2] = v4;
  v2[3] = v3;
  *(v2 + 8) = a1;
  return imp_implementationWithBlock(v2);
}

float ___ZL26cons_CALayer_kCAValueFloatjb_block_invoke(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v4 = 0.0;
  CA::Layer::getter(*(a2 + 16), v2, 0x11, &v4);
  return v4;
}

void ___ZL26cons_CALayer_kCAValueFloatjb_block_invoke_2(uint64_t a1, uint64_t a2, float a3)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = a3;
  CA::Layer::setter(*(a2 + 16), v3, 0x11, &v4);
}

IMP cons_CALayer_kCAValueUnsignedLongLong(int a1, int a2)
{
  block[5] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = block;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v3 = &__block_descriptor_36_e8_Q16__0_8l;
    v4 = ___ZL37cons_CALayer_kCAValueUnsignedLongLongjb_block_invoke;
  }

  else
  {
    v2 = v6;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v3 = &__block_descriptor_36_e11_v24__0_8Q16l;
    v4 = ___ZL37cons_CALayer_kCAValueUnsignedLongLongjb_block_invoke_2;
  }

  v2[2] = v4;
  v2[3] = v3;
  *(v2 + 8) = a1;
  return imp_implementationWithBlock(v2);
}

id ___ZL37cons_CALayer_kCAValueUnsignedLongLongjb_block_invoke(uint64_t a1, uint64_t a2)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v4[0] = 0;
  CA::Layer::getter(*(a2 + 16), v2, 0x10, v4);
  return v4[0];
}

void ___ZL37cons_CALayer_kCAValueUnsignedLongLongjb_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  *&v4[0] = a3;
  CA::Layer::setter(*(a2 + 16), v3, 0x10, v4);
}

IMP cons_CALayer_kCAValueLongLong(int a1, int a2)
{
  block[5] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = block;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v3 = &__block_descriptor_36_e8_q16__0_8l;
    v4 = ___ZL29cons_CALayer_kCAValueLongLongjb_block_invoke;
  }

  else
  {
    v2 = v6;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v3 = &__block_descriptor_36_e11_v24__0_8q16l;
    v4 = ___ZL29cons_CALayer_kCAValueLongLongjb_block_invoke_2;
  }

  v2[2] = v4;
  v2[3] = v3;
  *(v2 + 8) = a1;
  return imp_implementationWithBlock(v2);
}

id ___ZL29cons_CALayer_kCAValueLongLongjb_block_invoke(uint64_t a1, uint64_t a2)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v4[0] = 0;
  CA::Layer::getter(*(a2 + 16), v2, 0xF, v4);
  return v4[0];
}

void ___ZL29cons_CALayer_kCAValueLongLongjb_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  *&v4[0] = a3;
  CA::Layer::setter(*(a2 + 16), v3, 0xF, v4);
}

IMP cons_CALayer_kCAValueUnsignedLong(int a1, int a2)
{
  block[5] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = block;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v3 = &__block_descriptor_36_e8_Q16__0_8l;
    v4 = ___ZL33cons_CALayer_kCAValueUnsignedLongjb_block_invoke;
  }

  else
  {
    v2 = v6;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v3 = &__block_descriptor_36_e11_v24__0_8Q16l;
    v4 = ___ZL33cons_CALayer_kCAValueUnsignedLongjb_block_invoke_2;
  }

  v2[2] = v4;
  v2[3] = v3;
  *(v2 + 8) = a1;
  return imp_implementationWithBlock(v2);
}

id ___ZL33cons_CALayer_kCAValueUnsignedLongjb_block_invoke(uint64_t a1, uint64_t a2)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v4[0] = 0;
  CA::Layer::getter(*(a2 + 16), v2, 0xE, v4);
  return v4[0];
}

void ___ZL33cons_CALayer_kCAValueUnsignedLongjb_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  *&v4[0] = a3;
  CA::Layer::setter(*(a2 + 16), v3, 0xE, v4);
}

IMP cons_CALayer_kCAValueLong(int a1, int a2)
{
  block[5] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = block;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v3 = &__block_descriptor_36_e8_q16__0_8l;
    v4 = ___ZL25cons_CALayer_kCAValueLongjb_block_invoke;
  }

  else
  {
    v2 = v6;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v3 = &__block_descriptor_36_e11_v24__0_8q16l;
    v4 = ___ZL25cons_CALayer_kCAValueLongjb_block_invoke_2;
  }

  v2[2] = v4;
  v2[3] = v3;
  *(v2 + 8) = a1;
  return imp_implementationWithBlock(v2);
}

id ___ZL25cons_CALayer_kCAValueLongjb_block_invoke(uint64_t a1, uint64_t a2)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v4[0] = 0;
  CA::Layer::getter(*(a2 + 16), v2, 0xD, v4);
  return v4[0];
}

void ___ZL25cons_CALayer_kCAValueLongjb_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  *&v4[0] = a3;
  CA::Layer::setter(*(a2 + 16), v3, 0xD, v4);
}

IMP cons_CALayer_kCAValueUnsignedInt(int a1, int a2)
{
  block[5] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = block;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v3 = &__block_descriptor_36_e8_I16__0_8l;
    v4 = ___ZL32cons_CALayer_kCAValueUnsignedIntjb_block_invoke;
  }

  else
  {
    v2 = v6;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v3 = &__block_descriptor_36_e11_v20__0_8I16l;
    v4 = ___ZL32cons_CALayer_kCAValueUnsignedIntjb_block_invoke_2;
  }

  v2[2] = v4;
  v2[3] = v3;
  *(v2 + 8) = a1;
  return imp_implementationWithBlock(v2);
}

uint64_t ___ZL32cons_CALayer_kCAValueUnsignedIntjb_block_invoke(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v4 = 0;
  CA::Layer::getter(*(a2 + 16), v2, 0xC, &v4);
  return v4;
}

void ___ZL32cons_CALayer_kCAValueUnsignedIntjb_block_invoke_2(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = a3;
  CA::Layer::setter(*(a2 + 16), v3, 0xC, &v4);
}

IMP cons_CALayer_kCAValueInt(int a1, int a2)
{
  block[5] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = block;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v3 = &__block_descriptor_36_e8_i16__0_8l;
    v4 = ___ZL24cons_CALayer_kCAValueIntjb_block_invoke;
  }

  else
  {
    v2 = v6;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v3 = &__block_descriptor_36_e11_v20__0_8i16l;
    v4 = ___ZL24cons_CALayer_kCAValueIntjb_block_invoke_2;
  }

  v2[2] = v4;
  v2[3] = v3;
  *(v2 + 8) = a1;
  return imp_implementationWithBlock(v2);
}

uint64_t ___ZL24cons_CALayer_kCAValueIntjb_block_invoke(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v4 = 0;
  CA::Layer::getter(*(a2 + 16), v2, 0xB, &v4);
  return v4;
}

void ___ZL24cons_CALayer_kCAValueIntjb_block_invoke_2(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = a3;
  CA::Layer::setter(*(a2 + 16), v3, 0xB, &v4);
}

IMP cons_CALayer_kCAValueUnsignedShort(int a1, int a2)
{
  block[5] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = block;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v3 = &__block_descriptor_36_e8_S16__0_8l;
    v4 = ___ZL34cons_CALayer_kCAValueUnsignedShortjb_block_invoke;
  }

  else
  {
    v2 = v6;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v3 = &__block_descriptor_36_e11_v20__0_8S16l;
    v4 = ___ZL34cons_CALayer_kCAValueUnsignedShortjb_block_invoke_2;
  }

  v2[2] = v4;
  v2[3] = v3;
  *(v2 + 8) = a1;
  return imp_implementationWithBlock(v2);
}

uint64_t ___ZL34cons_CALayer_kCAValueUnsignedShortjb_block_invoke(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v4 = 0;
  CA::Layer::getter(*(a2 + 16), v2, 0xA, &v4);
  return v4;
}

void ___ZL34cons_CALayer_kCAValueUnsignedShortjb_block_invoke_2(uint64_t a1, uint64_t a2, __int16 a3)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = a3;
  CA::Layer::setter(*(a2 + 16), v3, 0xA, &v4);
}

IMP cons_CALayer_kCAValueShort(int a1, int a2)
{
  block[5] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = block;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v3 = &__block_descriptor_36_e8_s16__0_8l;
    v4 = ___ZL26cons_CALayer_kCAValueShortjb_block_invoke;
  }

  else
  {
    v2 = v6;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v3 = &__block_descriptor_36_e11_v20__0_8s16l;
    v4 = ___ZL26cons_CALayer_kCAValueShortjb_block_invoke_2;
  }

  v2[2] = v4;
  v2[3] = v3;
  *(v2 + 8) = a1;
  return imp_implementationWithBlock(v2);
}

uint64_t ___ZL26cons_CALayer_kCAValueShortjb_block_invoke(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v4 = 0;
  CA::Layer::getter(*(a2 + 16), v2, 9, &v4);
  return v4;
}

void ___ZL26cons_CALayer_kCAValueShortjb_block_invoke_2(uint64_t a1, uint64_t a2, __int16 a3)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = a3;
  CA::Layer::setter(*(a2 + 16), v3, 9, &v4);
}

IMP cons_CALayer_kCAValueUnsignedChar(int a1, int a2)
{
  block[5] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = block;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v3 = &__block_descriptor_36_e8_C16__0_8l;
    v4 = ___ZL33cons_CALayer_kCAValueUnsignedCharjb_block_invoke;
  }

  else
  {
    v2 = v6;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v3 = &__block_descriptor_36_e11_v20__0_8C16l;
    v4 = ___ZL33cons_CALayer_kCAValueUnsignedCharjb_block_invoke_2;
  }

  v2[2] = v4;
  v2[3] = v3;
  *(v2 + 8) = a1;
  return imp_implementationWithBlock(v2);
}

uint64_t ___ZL33cons_CALayer_kCAValueUnsignedCharjb_block_invoke(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v4 = 0;
  CA::Layer::getter(*(a2 + 16), v2, 8, &v4);
  return v4;
}

void ___ZL33cons_CALayer_kCAValueUnsignedCharjb_block_invoke_2(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = a3;
  CA::Layer::setter(*(a2 + 16), v3, 8, &v4);
}

IMP cons_CALayer_kCAValueChar(int a1, int a2)
{
  block[5] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = block;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v3 = &__block_descriptor_36_e8_c16__0_8l;
    v4 = ___ZL25cons_CALayer_kCAValueCharjb_block_invoke;
  }

  else
  {
    v2 = v6;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v3 = &__block_descriptor_36_e11_v20__0_8c16l;
    v4 = ___ZL25cons_CALayer_kCAValueCharjb_block_invoke_2;
  }

  v2[2] = v4;
  v2[3] = v3;
  *(v2 + 8) = a1;
  return imp_implementationWithBlock(v2);
}

uint64_t ___ZL25cons_CALayer_kCAValueCharjb_block_invoke(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v4 = 0;
  CA::Layer::getter(*(a2 + 16), v2, 7, &v4);
  return v4;
}

void ___ZL25cons_CALayer_kCAValueCharjb_block_invoke_2(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = a3;
  CA::Layer::setter(*(a2 + 16), v3, 7, &v4);
}

uint64_t ___ZL25cons_CALayer_kCAValueBooljb_block_invoke(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v4 = 0;
  CA::Layer::getter(*(a2 + 16), v2, 6, &v4);
  return v4;
}

void ___ZL25cons_CALayer_kCAValueBooljb_block_invoke_2(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = a3;
  CA::Layer::setter(*(a2 + 16), v3, 6, &v4);
}

IMP cons_CALayer_kCAValueBlock(int a1, int a2)
{
  block[5] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = block;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v3 = &__block_descriptor_36_e10_r_v16__0_8l;
    v4 = ___ZL26cons_CALayer_kCAValueBlockjb_block_invoke;
  }

  else
  {
    v2 = v6;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v3 = &__block_descriptor_36_e13_v24__0_8r_v16l;
    v4 = ___ZL26cons_CALayer_kCAValueBlockjb_block_invoke_2;
  }

  v2[2] = v4;
  v2[3] = v3;
  *(v2 + 8) = a1;
  return imp_implementationWithBlock(v2);
}

id ___ZL26cons_CALayer_kCAValueBlockjb_block_invoke(uint64_t a1, uint64_t a2)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v4[0] = 0;
  CA::Layer::getter(*(a2 + 16), v2, 5, v4);
  return v4[0];
}

void ___ZL26cons_CALayer_kCAValueBlockjb_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  *&v4[0] = a3;
  CA::Layer::setter(*(a2 + 16), v3, 5, v4);
}

IMP cons_CALayer_kCAValueWeakPointer(int a1, int a2)
{
  block[5] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = block;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v3 = &__block_descriptor_36_e10_r_v16__0_8l;
    v4 = ___ZL32cons_CALayer_kCAValueWeakPointerjb_block_invoke;
  }

  else
  {
    v2 = v6;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v3 = &__block_descriptor_36_e13_v24__0_8r_v16l;
    v4 = ___ZL32cons_CALayer_kCAValueWeakPointerjb_block_invoke_2;
  }

  v2[2] = v4;
  v2[3] = v3;
  *(v2 + 8) = a1;
  return imp_implementationWithBlock(v2);
}

id ___ZL32cons_CALayer_kCAValueWeakPointerjb_block_invoke(uint64_t a1, uint64_t a2)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v4[0] = 0;
  CA::Layer::getter(*(a2 + 16), v2, 4, v4);
  return v4[0];
}

void ___ZL32cons_CALayer_kCAValueWeakPointerjb_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  *&v4[0] = a3;
  CA::Layer::setter(*(a2 + 16), v3, 4, v4);
}

IMP cons_CALayer_kCAValueAssignedPointer(int a1, int a2)
{
  block[5] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = block;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v3 = &__block_descriptor_36_e10_r_v16__0_8l;
    v4 = ___ZL36cons_CALayer_kCAValueAssignedPointerjb_block_invoke;
  }

  else
  {
    v2 = v6;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v3 = &__block_descriptor_36_e13_v24__0_8r_v16l;
    v4 = ___ZL36cons_CALayer_kCAValueAssignedPointerjb_block_invoke_2;
  }

  v2[2] = v4;
  v2[3] = v3;
  *(v2 + 8) = a1;
  return imp_implementationWithBlock(v2);
}

id ___ZL36cons_CALayer_kCAValueAssignedPointerjb_block_invoke(uint64_t a1, uint64_t a2)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v4[0] = 0;
  CA::Layer::getter(*(a2 + 16), v2, 1, v4);
  return v4[0];
}

void ___ZL36cons_CALayer_kCAValueAssignedPointerjb_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  *&v4[0] = a3;
  CA::Layer::setter(*(a2 + 16), v3, 1, v4);
}

void CALayerFrameAffineTransform(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  CA::Layer::get_frame_transform(*(a1 + 16), a2, 1);
}

double CALayerFrameTransform@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, float64_t a3@<D1>, double a4@<D2>)
{
  v20 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  CA::Layer::get_frame_transform(*(a1 + 16), &v12, 0, 0, 0, a3, a4);
  v5 = v13;
  v6 = v14;
  v7 = v15;
  *a2 = v12;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  result = *&v16;
  v9 = v17;
  v10 = v18;
  v11 = v19;
  *(a2 + 64) = v16;
  *(a2 + 80) = v9;
  *(a2 + 96) = v10;
  *(a2 + 112) = v11;
  return result;
}

void *CA::Layer::collect_all_layers(void *a1, uint64_t a2, uint64_t *a3)
{
  v5 = a1[2];
  if (!v5 || !CALayerRetain(v5))
  {
    return a2;
  }

  v7 = a1[3];
  if (v7)
  {
    v8 = v7 + 1;
    v9 = v7[2];
    if (v9 == 1)
    {
      if (!v7[3])
      {
        do
        {
LABEL_9:
          v10 = *v8++;
          a2 = CA::Layer::collect_all_layers(*(v10 + 16), a2, a3);
          --v9;
        }

        while (v9);
        goto LABEL_10;
      }

LABEL_8:
      v8 = *v8;
      goto LABEL_9;
    }

    if (v9)
    {
      goto LABEL_8;
    }
  }

LABEL_10:
  v11 = a1[4];
  if (v11)
  {
    a2 = CA::Layer::collect_all_layers(*(v11 + 16), a2, a3);
  }

  v12 = a3[2];
  v13 = v12 >= 0x10;
  v14 = v12 - 16;
  if (v13)
  {
    v15 = a3[1];
    a3[1] = (v15 + 2);
    a3[2] = v14;
  }

  else
  {
    v15 = x_heap_malloc_small_(a3, 0x10uLL);
  }

  *v15 = a1;
  v15[1] = a2;
  return v15;
}

void CA::Layer::perform_selector(CA::Layer *this, objc_selector *a2, objc_object *a3)
{
  MEMORY[0x1EEE9AC00](this);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v16[508] = *MEMORY[0x1E69E9840];
  v14[0] = 0;
  v14[1] = v16;
  v15 = xmmword_183E214F0;
  v9 = CA::Transaction::ensure_compat(v7);
  v10 = *(v9 + 29);
  *(v9 + 29) = v10 + 1;
  if (!v10)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  v11 = CA::Layer::collect_all_layers(v8, 0, v14);
  CA::Transaction::unlock(v9);
  for (; v11; v11 = v11[1])
  {
    v12 = *v11;
    [*(*v11 + 16) v6];
    v13 = *(v12 + 16);
    if (v13)
    {
      CALayerRelease(v13);
    }
  }

  x_heap_free(v14);
}

void run_animation_callbacks_compat(double a1, void *a2)
{
  v3 = objc_autoreleasePoolPush();
  run_animation_callbacks(a2);
  objc_autoreleasePoolPop(v3);
}

void *CALayerGetDelegate(void *result)
{
  if (result)
  {
    v1 = result[2];
    if (*(v1 + 136) == 1)
    {
      return objc_loadWeak((v1 + 128));
    }

    else
    {
      return *(v1 + 128);
    }
  }

  return result;
}

void ___Z10init_iomfbv_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  v0 = dlopen("/System/Library/PrivateFrameworks/IOMobileFramebuffer.framework/IOMobileFramebuffer", 2);
  init_iomfb(void)::iomfb_handle = v0;
  if (v0)
  {
    iomfb_get_pulse_width_maximization_f = dlsym(v0, "IOMobileFramebufferGetPulseWidthMaximization");
    iomfb_swap_set_pulse_width_maximization_f = dlsym(init_iomfb(void)::iomfb_handle, "IOMobileFramebufferSwapSetPulseWidthMaximization");
    iomfb_relbuf_info_f = dlsym(init_iomfb(void)::iomfb_handle, "IOMobileFramebufferRelbufInfo");
    iomfb_swap_set_contrast_preservation_f = dlsym(init_iomfb(void)::iomfb_handle, "IOMobileFrameBufferSwapSetContrastPreservationStrength");
    iomfb_swap_set_layer_edr_compensation_f = dlsym(init_iomfb(void)::iomfb_handle, "IOMobileFramebufferSwapSetLayerEDRCompensation");
  }

  else
  {
    if (x_log_get_windowserver(void)::once != -1)
    {
      dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
    }

    v1 = x_log_get_windowserver(void)::log;
    if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
    {
      *v2 = 0;
      _os_log_error_impl(&dword_183AA6000, v1, OS_LOG_TYPE_ERROR, "Unable to load IOMobileFramebuffer", v2, 2u);
    }
  }
}

void iomfb_swap_set_pulse_width_maximization(uint64_t a1, uint64_t a2)
{
  if (init_iomfb(void)::once != -1)
  {
    dispatch_once(&init_iomfb(void)::once, &__block_literal_global_14192);
  }

  v4 = iomfb_swap_set_pulse_width_maximization_f;
  if (iomfb_swap_set_pulse_width_maximization_f)
  {

    v4(a1, a2);
  }
}

uint64_t iomfb_relbuf_info(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (init_iomfb(void)::once != -1)
  {
    dispatch_once(&init_iomfb(void)::once, &__block_literal_global_14192);
  }

  v8 = iomfb_relbuf_info_f;
  if (!iomfb_relbuf_info_f)
  {
    return 3758097084;
  }

  return v8(a1, a2, a3, a4);
}

char *CA::IOMobileFramebuffer::print_icc_matrix_to_stream(X::Stream *a1, unsigned int a2, int a3, int a4, float *a5)
{
  if (a2 > 7)
  {
    v5 = "UNKNOWN";
  }

  else
  {
    v5 = off_1E6DF75C8[a2];
  }

  return X::Stream::printf(a1, "Display %u swap_set_icc_matrix %s layer: %u\n    {{%g, %g, %g},\n     {%g, %g, %g},\n     {%g, %g, %g}}\n", a3, v5, a4, a5[3], a5[4], a5[5], a5[6], a5[7], a5[8], a5[9], a5[10], a5[11]);
}

char *CA::IOMobileFramebuffer::print_icc_curve_to_stream(X::Stream *this, unsigned int a2, int a3, int a4, int a5, float *a6)
{
  v43 = *MEMORY[0x1E69E9840];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v38 = 0u;
  memset(__str, 0, sizeof(__str));
  switch(*a6)
  {
    case 0:
      strcpy(__str, "Y = X");
      goto LABEL_27;
    case 1:
      v25 = a6[2];
      v12 = "Y = X^%f";
      goto LABEL_26;
    case 2:
      v18 = a6[3];
      v19 = a6[4];
      v25 = v18;
      v26 = v19;
      v28 = (-v19 / v18);
      v29 = v28;
      v27 = a6[2];
      v12 = "Y = (%g*X+%g)^%g [X >= %g],  Y = 0 [X < %g]";
      goto LABEL_26;
    case 3:
      snprintf(__str, 0x80uLL, "Y = (%g*X+%g)^%g + %f [X >= %g],  Y = %g [X < %g]");
      goto LABEL_27;
    case 4:
      v13 = a6[3];
      v14 = a6[4];
      v15 = a6[2];
      v16 = a6[6];
      v34 = a6[7];
      v36 = a6[8];
      v30 = a6[5];
      v32 = v16;
      v17 = "Y = (%g*X+%g)^%g [X >= %g],  Y = %g*X [X < %g], Unused Params - e: %g, f: %g";
      goto LABEL_19;
    case 5:
      v13 = a6[3];
      v14 = a6[4];
      v15 = a6[2];
      v16 = a6[7];
      v34 = a6[8];
      v36 = a6[6];
      v30 = v36;
      v32 = a6[5];
      v17 = "Y = (%g*X+%g)^%g + %g [X >= %g], Y = %g*X + %g [X < %g]";
LABEL_19:
      snprintf(__str, 0x80uLL, v17, *&v13, *&v14, *&v15, *&v16, *&v30, *&v32, *&v34, *&v36, *__str, *&__str[8], *&__str[16], *&__str[32], v38, v39, v40, v41, v42);
      goto LABEL_27;
    case 6:
      strcpy(&__str[8], "ETF");
      v20 = "Y = PQ OETF";
      goto LABEL_22;
    case 7:
      strcpy(&__str[8], "OTF");
      v20 = "Y = PQ EOTF";
LABEL_22:
      *__str = *v20;
      goto LABEL_27;
    case 8:
      v26 = a6[3];
      *&v25 = *(a6 + 2);
      v12 = "Table: entries: %u, xMax: %f";
      goto LABEL_26;
    case 9:
      if (*(a6 + 2) >= 2u && *(a6 + 2) && *(a6 + 4))
      {
        snprintf(__str, 0x80uLL, "Table: entries: %u, xEntries [%f ... %f], xMax: %f, yEntries [%f ... %f] yMax: %f");
      }

      else
      {
        strcpy(__str, "Unexpected table count or missing samples");
      }

      goto LABEL_27;
    case 0xA:
      strcpy(__str, "Y = HLG Inverse OETF (Fixed)");
      goto LABEL_27;
    case 0xB:
      strcpy(__str, "Y = PQ EOTF (Fixed)");
      goto LABEL_27;
    case 0xC:
      *&v25 = *(a6 + 2);
      v12 = "%d segments";
      goto LABEL_26;
    case 0xD:
      *&v27 = *(a6 + 4);
      v25 = a6[3];
      v26 = a6[2];
      v12 = "Offset: %f, Slope: %f, MaxNits: %d";
      goto LABEL_26;
    case 0xE:
      v28 = a6[5];
      v29 = a6[6];
      v26 = a6[3];
      v27 = a6[4];
      v25 = a6[2];
      v12 = "c1: %f, c2: %f, c3: %f, m: %f, n: %f";
      goto LABEL_26;
    case 0xF:
      v28 = a6[3];
      v29 = a6[6];
      v26 = a6[5];
      v27 = a6[2];
      v25 = a6[4];
      v12 = "a: %f, b: %f, c0: %f, c1: %f, p: %f";
      goto LABEL_26;
    case 0x10:
      *&v25 = *(a6 + 2);
      v12 = "smaxnits: %d";
      goto LABEL_26;
    case 0x11:
      v27 = a6[4];
      v28 = a6[5];
      v25 = a6[2];
      v26 = a6[3];
      v12 = "alpha: %f, alphaPrime: %f, rangeMax: %f, gain %f";
      goto LABEL_26;
    default:
      *&v25 = *a6;
      v12 = "Curve Type %d unrecognized";
LABEL_26:
      snprintf(__str, 0x80uLL, v12, *&v25, *&v26, *&v27, *&v28, *&v29, v31, v33, v35, *__str, *&__str[8], *&__str[16], *&__str[32], v38, v39, v40, v41, v42);
LABEL_27:
      if (a2 > 0x11)
      {
        v21 = "UNKNOWN";
      }

      else
      {
        v21 = off_1E6DF7608[a2];
      }

      v22 = *a6;
      if (v22 > 0x11)
      {
        v23 = "UNKNOWN";
      }

      else
      {
        v23 = off_1E6DF7698[v22];
      }

      return X::Stream::printf(this, "Display %u swap_set_icc_curve %s layer: %u mask: %x type: %s %s\n", a3, v21, a4, a5, v23, __str);
  }
}

const char *___ZN2CA6RenderL29should_abort_on_send_failuresEv_block_invoke()
{
  result = getenv("CA_IGNORE_MACH_SEND_ERRORS");
  if (result)
  {
    result = atoi(result);
    if (result)
    {
      CA::Render::should_abort_on_send_failures(void)::ignore_mach_send_errors = 1;
    }
  }

  return result;
}

void *CA::Render::Encoder::encode_sanity_check(void *this)
{
  if ((this[8] & 8) != 0)
  {
    v1 = this;
    v2 = this[4];
    if ((v2 + 1) > this[5])
    {
      this = CA::Render::Encoder::grow(this, 4);
      v2 = v1[4];
    }

    *v2 = -557122643;
    v1[4] += 4;
  }

  return this;
}

uint64_t CA::Render::Encoder::retain_object(uint64_t this, const CA::Render::Object *a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = this;
    this = x_heap_malloc_small_(*(this + 8), 0x10uLL);
    v4 = (v2 + 8);
    if (!atomic_fetch_add(v2 + 2, 1u))
    {
      v2 = 0;
      atomic_fetch_add(v4, 0xFFFFFFFF);
    }

    v5 = *(v3 + 112);
    *this = v2;
    *(this + 8) = v5;
    *(v3 + 112) = this;
  }

  return this;
}

uint64_t CA::Render::encode_dictionary_item(CA::Render *this, const void *a2, CA::Render::Encoder *a3, void *a4)
{
  CA::Render::Encoder::encode_cfobject(a3, this);

  return CA::Render::Encoder::encode_cfobject(a3, a2);
}

void CA::Render::Decoder::set_fatal_error(CA::Render::Decoder *this, const char *a2, ...)
{
  va_start(va, a2);
  v21 = *MEMORY[0x1E69E9840];
  v2 = *(this + 4);
  if ((v2 & 0x10000) != 0)
  {
    return;
  }

  *(this + 4) = v2 & 0xFF00FFFF | 0x10000;
  v14 = 0;
  if (a2)
  {
    vasprintf(&v14, a2, va);
  }

  v4 = *(this + 9);
  if (v4 && (*(v4 + 584) |= 0x800u, (v5 = *(this + 9)) != 0))
  {
    v6 = atomic_load((v5 + 228));
    if (!v6)
    {
      if (*(v5 + 256))
      {
        v7 = 0;
      }

      else
      {
        v7 = getpid();
      }

      v9 = 0;
      atomic_compare_exchange_strong((v5 + 228), &v9, v7);
      if (v9)
      {
        v6 = v9;
      }

      else
      {
        v6 = v7;
      }
    }

    v10 = *(this + 9);
    if (v10)
    {
      v8 = (CA::Render::Context::process_path(v10) + 7);
      goto LABEL_17;
    }
  }

  else
  {
    v6 = 0;
  }

  v8 = "";
LABEL_17:
  if (CADeviceHasInternalBuild::once != -1)
  {
    dispatch_once(&CADeviceHasInternalBuild::once, &__block_literal_global_171);
  }

  v11 = CADeviceHasInternalBuild::internal;
  if (x_log_get_render(void)::once[0] != -1)
  {
    dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
  }

  v12 = x_log_get_render(void)::log;
  v13 = os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR);
  if (v11)
  {
    if (v13)
    {
      *buf = 136315650;
      v16 = v8;
      v17 = 1024;
      v18 = v6;
      v19 = 2080;
      v20 = v14;
      _os_log_error_impl(&dword_183AA6000, v12, OS_LOG_TYPE_ERROR, "CoreAnimation: %s (%u) : %s", buf, 0x1Cu);
    }

    abort();
  }

  if (v13)
  {
    *buf = 136315650;
    v16 = v8;
    v17 = 1024;
    v18 = v6;
    v19 = 2080;
    v20 = v14;
    _os_log_error_impl(&dword_183AA6000, v12, OS_LOG_TYPE_ERROR, "%s (%u) : %s", buf, 0x1Cu);
  }

  if (v14)
  {
    free(v14);
  }
}

void CA::Render::Decoder::decode_sanity_check(CA::Render::Decoder *this, const char *a2, int a3)
{
  if ((*(this + 64) & 8) != 0 && CA::Render::Decoder::decode_int32(this) != -557122643)
  {
    CA::Render::Decoder::set_fatal_error(this, "%s : %d", a2, a3);
  }
}

CA::Render::Object *CA::Render::CloningTerminatorLayer::CloningTerminatorLayer(CA::Render::CloningTerminatorLayer *this, CA::Render::Decoder *a2)
{
  result = CA::Render::Object::Object(this, a2);
  *(result + 12) = 8;
  ++dword_1ED4EAA58;
  *result = &unk_1EF1FFF78;
  return result;
}

CFTypeID ___ZN2CA6Render7Decoder17decode_colorspaceEv_block_invoke()
{
  CA::Render::Decoder::decode_colorspace(void)::types[0] = CFDataGetTypeID();
  qword_1EA84F920 = CFDictionaryGetTypeID();
  result = CFStringGetTypeID();
  qword_1EA84F928 = result;
  return result;
}

void *CA::Render::encode_request_server_glitch(CA::Render *this, CA::Render::Encoder *a2, double a3)
{
  v5 = *(this + 4);
  if ((v5 + 1) > *(this + 5))
  {
    CA::Render::Encoder::grow(this, 1);
    v5 = *(this + 4);
  }

  *(this + 4) = v5 + 1;
  *v5 = 36;
  v6 = *(this + 4);
  if ((v6 + 1) > *(this + 5))
  {
    CA::Render::Encoder::grow(this, 8);
    v6 = *(this + 4);
  }

  *v6 = a3;
  *(this + 4) += 8;

  return CA::Render::Encoder::encode_sanity_check(this);
}

char *CA::Render::CloningTerminatorLayer::show(int a1, X::Stream *this, uint64_t a3, char a4)
{
  if (a4)
  {
    return X::Stream::printf(this, "cloning-terminator-layer");
  }

  else
  {
    return X::Stream::printf(this, "(cloning-terminator-layer)");
  }
}

void CA::Render::CloningTerminatorLayer::~CloningTerminatorLayer(CA::Render::CloningTerminatorLayer *this, const CA::Render::Object *a2)
{
  --dword_1ED4EAA58;
  *this = &unk_1EF1F6D08;
  if ((*(this + 3) & 0x80000000) != 0)
  {
    CA::Render::Encoder::ObjectCache::invalidate(this, a2);
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, this);
}

{
  --dword_1ED4EAA58;
  *this = &unk_1EF1F6D08;
  if ((*(this + 3) & 0x80000000) != 0)
  {
    CA::Render::Encoder::ObjectCache::invalidate(this, a2);
  }
}

uint64_t draw_conic_gradient(double a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  Info = CGContextDelegateGetInfo();
  CGGStateGetStyle();
  Color = CGStyleGetColor();
  CompositeOperation = CGGStateGetCompositeOperation();
  CACGContextEvaluator::update_with_color(Info, Color, CompositeOperation, a6);
  CACGContextEvaluator::update_with_gradient(Info, a7, a6);
  *(Info + 78) |= CGGStateGetStyle() != 0;
  v16 = *(CGContextDelegateGetInfo() + 48);
  v17.n128_f64[0] = a1;
  v18.n128_f64[0] = a2;
  v19.n128_f64[0] = a3;

  return MEMORY[0x1EEDB9350](v16, a5, a6, a7, v17, v18, v19);
}

uint64_t CACGContextEvaluator::update_with_gradient(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 72) = 1;
  *(a1 + 77) = 1;
  if (!a3 || (CGGStateGetEDRTargetHeadroom(), v4 == 0.0))
  {
    CGGradientGetContentHeadroom();
  }

  if (v4 > *(a1 + 84))
  {
    *(a1 + 84) = v4;
  }

  ColorSpace = CGGradientGetColorSpace();
  CACGContextEvaluator::update_with_color_space(a1, ColorSpace, 0);
  return CGGradientApplyWithBlock();
}

CGImageRef create_image()
{
  Info = CGContextDelegateGetInfo();
  v1 = CACGContextEvaluator::suggested_format(Info, 0, 0, 0);
  v2 = v1;
  v3 = 0;
  v4 = *Info;
  if (v1 <= 0x25)
  {
    v3 = dword_183E22690[v1];
  }

  v5 = v4 * v3 + 31;
  v6 = *(Info + 2);
  v7 = CA::Render::format_default_colorspace(v1);
  v8 = CAGetCachedCGBitmapContext_(0, v4, v6, v2, v5 & 0xFFFFFFFFFFFFFFE0, v7);
  if (v8)
  {
    v9 = *(v8 + 2);
  }

  else
  {
    v9 = 0;
  }

  CGDisplayListDrawInContext();
  Image = CGBitmapContextCreateImage(v9);
  CGImageSetHeadroom();
  CAReleaseCachedCGContext(v9);
  return Image;
}

uint64_t draw_image_from_rect(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, uint64_t a9, uint64_t a10, uint64_t a11, CGImage *a12)
{
  Info = CGContextDelegateGetInfo();
  CGGStateGetStyle();
  Color = CGStyleGetColor();
  CompositeOperation = CGGStateGetCompositeOperation();
  CACGContextEvaluator::update_with_color(Info, Color, CompositeOperation, a11);
  CACGContextEvaluator::update_with_image(Info, a12, a11);
  *(Info + 78) |= CGGStateGetStyle() != 0;
  v26 = *(CGContextDelegateGetInfo() + 48);
  v27.n128_f64[0] = a1;
  v28.n128_f64[0] = a2;
  v29.n128_f64[0] = a3;
  v30.n128_f64[0] = a4;
  v31.n128_f64[0] = a5;
  v32.n128_f64[0] = a6;
  v33.n128_f64[0] = a7;
  v34.n128_f64[0] = a8;

  return MEMORY[0x1EEDB9370](v26, a10, a11, a12, v27, v28, v29, v30, v31, v32, v33, v34);
}

uint64_t draw_radial_gradient(double a1, double a2, double a3, double a4, double a5, double a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  Info = CGContextDelegateGetInfo();
  CGGStateGetStyle();
  Color = CGStyleGetColor();
  CompositeOperation = CGGStateGetCompositeOperation();
  CACGContextEvaluator::update_with_color(Info, Color, CompositeOperation, a9);
  CACGContextEvaluator::update_with_gradient(Info, a10, a9);
  *(Info + 78) |= CGGStateGetStyle() != 0;
  v24 = *(CGContextDelegateGetInfo() + 48);
  v25.n128_f64[0] = a1;
  v26.n128_f64[0] = a2;
  v27.n128_f64[0] = a3;
  v28.n128_f64[0] = a4;
  v29.n128_f64[0] = a5;
  v30.n128_f64[0] = a6;

  return MEMORY[0x1EEDB93A8](v24, a8, a9, a10, a11, v25, v26, v27, v28, v29, v30);
}

uint64_t draw_linear_gradient(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  Info = CGContextDelegateGetInfo();
  CGGStateGetStyle();
  Color = CGStyleGetColor();
  CompositeOperation = CGGStateGetCompositeOperation();
  CACGContextEvaluator::update_with_color(Info, Color, CompositeOperation, a7);
  CACGContextEvaluator::update_with_gradient(Info, a8, a7);
  *(Info + 78) |= CGGStateGetStyle() != 0;
  v20 = *(CGContextDelegateGetInfo() + 48);
  v21.n128_f64[0] = a1;
  v22.n128_f64[0] = a2;
  v23.n128_f64[0] = a3;
  v24.n128_f64[0] = a4;

  return MEMORY[0x1EEDB9388](v20, a6, a7, a8, a9, v21, v22, v23, v24);
}

uint64_t draw_layer(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  Info = CGContextDelegateGetInfo();
  *(Info + 72) = 1;
  *(Info + 79) = 257;
  *(Info + 81) = 1;
  *(Info + 74) = 16843009;
  *(Info + 78) |= CGGStateGetStyle() != 0;
  v16 = *(CGContextDelegateGetInfo() + 48);
  v17.n128_f64[0] = a1;
  v18.n128_f64[0] = a2;
  v19.n128_f64[0] = a3;
  v20.n128_f64[0] = a4;

  return MEMORY[0x1EEDB9380](v16, a6, a7, a8, v17, v18, v19, v20);
}

uint64_t get_layer(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *(CGContextDelegateGetInfo() + 48);
  v16.n128_f64[0] = a1;
  v17.n128_f64[0] = a2;
  v18.n128_f64[0] = a3;
  v19.n128_f64[0] = a4;

  return MEMORY[0x1EEDB93E8](v15, a6, a7, a8, v16, v17, v18, v19);
}

uint64_t operation(int a1, int a2, int a3, CFTypeRef cf1)
{
  if (CFEqual(cf1, *MEMORY[0x1E695F208]))
  {
    Info = CGContextDelegateGetInfo();
    CGColorRelease(*(Info + 64));
    *(Info + 64) = 0;
    *(Info + 72) = 256;
    *(Info + 79) = 0;
    *(Info + 81) = 0;
    *(Info + 74) = 0;
  }

  CGContextDelegateGetInfo();

  return CGContextDelegateOperation();
}

uint64_t draw_images(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CGImage **a5, uint64_t a6, uint64_t a7)
{
  Info = CGContextDelegateGetInfo();
  CGGStateGetStyle();
  Color = CGStyleGetColor();
  CompositeOperation = CGGStateGetCompositeOperation();
  CACGContextEvaluator::update_with_color(Info, Color, CompositeOperation, a3);
  if (a7)
  {
    v16 = a5;
    v17 = a7;
    do
    {
      v18 = *v16++;
      CACGContextEvaluator::update_with_image(Info, v18, a3);
      --v17;
    }

    while (v17);
  }

  *(Info + 78) |= CGGStateGetStyle() != 0;
  v19 = *(CGContextDelegateGetInfo() + 48);

  return MEMORY[0x1EEDB9378](v19, a2, a3, a4, a5, a6, a7);
}

uint64_t draw_display_list(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Info = CGContextDelegateGetInfo();
  *(Info + 72) = 1;
  *(Info + 79) = 257;
  *(Info + 81) = 1;
  *(Info + 74) = 16843009;
  v8 = *(CGContextDelegateGetInfo() + 48);

  return MEMORY[0x1EEDB9358](v8, a2, a3, a4);
}

uint64_t draw_shading(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Info = CGContextDelegateGetInfo();
  CGGStateGetStyle();
  Color = CGStyleGetColor();
  CompositeOperation = CGGStateGetCompositeOperation();
  CACGContextEvaluator::update_with_color(Info, Color, CompositeOperation, a3);
  Info[72] = 1;
  Info[77] = 1;
  ColorSpace = CGShadingGetColorSpace();
  CACGContextEvaluator::update_with_color_space(Info, ColorSpace, 1);
  Info[78] |= CGGStateGetStyle() != 0;
  v11 = *(CGContextDelegateGetInfo() + 48);

  return MEMORY[0x1EEDB93B8](v11, a2, a3, a4);
}

uint64_t draw_lines(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Info = CGContextDelegateGetInfo();
  CGGStateGetStyle();
  Color = CGStyleGetColor();
  CompositeOperation = CGGStateGetCompositeOperation();
  CACGContextEvaluator::update_with_color(Info, Color, CompositeOperation, a3);
  StrokeColor = CGGStateGetStrokeColor();
  v13 = CGGStateGetCompositeOperation();
  CACGContextEvaluator::update_with_color(Info, StrokeColor, v13, a3);
  *(Info + 78) |= CGGStateGetStyle() != 0;
  v14 = *(CGContextDelegateGetInfo() + 48);

  return MEMORY[0x1EEDB9390](v14, a2, a3, a4, a5);
}

uint64_t get_color_transform(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(CGContextDelegateGetInfo() + 48);

  return MEMORY[0x1EEDB93D8](v5, a2, a3);
}

void CA::CG::FillRoundedRect::draw_shape(CA::CG::FillRoundedRect *this, CA::OGL::Context **a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = *(this + 25);
  if (v3)
  {
    v7 = *(this + 14);
    v6 = *(this + 15);
    v18 = v7;
    v19 = v6;
    v9 = *(this + 16);
    v8 = *(this + 17);
    v20 = v9;
    v21 = v8;
    if (v9 < 0.0)
    {
      v18 = v9 + v7;
      v20 = -v9;
    }

    if (v8 < 0.0)
    {
      v19 = v8 + v6;
      v21 = -v8;
    }

    v10 = (v3 & 4) == 0;
    v11 = 11;
    if (v10)
    {
      v11 = 4;
    }

    v12 = &a2[v11];
    v13 = *v12;
    v14 = *(v12 + 1);
    v15 = *(v12 + 2);
    v16 = *(this + 18);
    v17 = *(this + 19);
    v24 = 0u;
    v25 = 0u;
    v23 = 0u;
    memset(v22, 0, sizeof(v22));
    v26 = 0;
    CA::Transform::set_affine(v22, *&v13, *(&v13 + 1), *&v14, *(&v14 + 1), *&v15, *(&v15 + 1));
    *(&v23 + 1) = &v18;
    *&v24 = v22;
    *(&v24 + 1) = 0xFF0020003FLL;
    v26 = 0;
    v25 = 0uLL;
    CA::OGL::fill_round_rect(a2[1], &v23 + 1, 0xF, 0, v16, v17);
  }

  else
  {
    v4 = CA::CG::Renderer::retain_simple_path(a2, (this + 112), this + 9);
    if (v4)
    {
      v5 = v4;
      CA::CG::fill_path(a2);

      CGPathRelease(v5);
    }
  }
}

void *CA::CG::FillRoundedRect::styled_op(uint64_t a1, const double *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 80))
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v10 = malloc_type_zone_malloc(malloc_zone, 0xA0uLL, 0x165299FDuLL);
    if (v10)
    {
      Color = CGStyleGetColor();
      CA::CG::DrawOp::DrawOp(v10, a2, a1, a4, a5, Color, 2048);
      *v10 = &unk_1EF1FED10;
      v10[14] = a1;
      atomic_fetch_add((a3 + 8), 1u);
      v10[15] = a3;
    }
  }

  else
  {
    BaseCTM = CGRenderingStateGetBaseCTM();
    v22 = BaseCTM[1];
    v23 = *BaseCTM;
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v13 = malloc_type_zone_malloc(malloc_zone, 0x60uLL, 0x165299FDuLL);
    v14 = v13;
    if (v13)
    {
      v15 = vaddvq_f64(vmulq_f64(vextq_s8(v22, v22, 8uLL), v23));
      if (v15 < 0.0)
      {
        v15 = -v15;
      }

      v16 = *(a3 + 80) * sqrtf(v15);
      *(v13 + 1) = 0;
      *(v13 + 2) = 0;
      *v13 = &unk_1EF201148;
      v18 = *(MEMORY[0x1E695EFD0] + 16);
      v17 = *(MEMORY[0x1E695EFD0] + 32);
      *(v13 + 24) = *MEMORY[0x1E695EFD0];
      *(v13 + 40) = v18;
      *(v13 + 56) = v17;
      *(v13 + 18) = 0;
      *(v13 + 2) = 1;
      *v13 = &unk_1EF2025C0;
      *&v16 = v16;
      *(v13 + 19) = LODWORD(v16);
      *(v13 + 10) = 0;
      *(v13 + 44) = 0;
    }

    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v19 = malloc_type_zone_malloc(malloc_zone, 0xA0uLL, 0x165299FDuLL);
    v10 = v19;
    if (v19)
    {
      CA::CG::FillRoundedRectShadow::FillRoundedRectShadow(v19, a2, a1, a4, a5, v14, 0);
    }

    v10[11] = *(a1 + 88);
    add = atomic_fetch_add(v14 + 2, 0xFFFFFFFF);
    if (v14 && add == 1)
    {
      (*(*v14 + 8))(v14);
    }
  }

  return v10;
}

{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  result = malloc_type_zone_malloc(malloc_zone, 0xA0uLL, 0x165299FDuLL);
  if (result)
  {
    return CA::CG::FillRoundedRectShadow::FillRoundedRectShadow(result, a2, a1, a4, a5, a3, *(a1 + 100) & 4);
  }

  return result;
}

uint64_t CA::CG::FillRoundedRectShadow::FillRoundedRectShadow(void *a1, const double *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  Color = CGStyleGetColor();
  result = CA::CG::DrawOp::DrawOp(a1, a2, a3, a4, a5, Color, a7 | 0x8C0u);
  *a1 = &unk_1EF203CE0;
  a1[18] = a3;
  atomic_fetch_add((a6 + 8), 1u);
  a1[19] = a6;
  *a1 = &unk_1EF200390;
  return result;
}

void CA::CG::FillRoundedRectShadow::draw_shadow(CA::CG::FillRoundedRectShadow *this, CA::CG::Renderer *a2)
{
  v81 = *MEMORY[0x1E69E9840];
  if (((*(**(this + 18) + 136))(*(this + 18)) & 5) != 0)
  {
    v4 = *(this + 18);
    v6 = *(v4 + 112);
    v5 = *(v4 + 120);
    v65.f64[0] = v6;
    v65.f64[1] = v5;
    v7 = *(v4 + 128);
    v8 = *(v4 + 136);
    v66 = v7;
    v67 = v8;
    if (v7 < 0.0)
    {
      v9 = v7 + v6;
      v7 = -v7;
      v65.f64[0] = v9;
      v66 = v7;
    }

    if (v8 < 0.0)
    {
      v10 = v8 + v5;
      v8 = -v8;
      v65.f64[1] = v10;
      v67 = v8;
    }

    v11 = *(v4 + 144);
    v12 = *(v4 + 152);
    v13 = 0uLL;
    v64 = 0u;
    memset(v63, 0, sizeof(v63));
    v14 = 88;
    if ((*(this + 100) & 4) == 0)
    {
      v14 = 32;
    }

    v15 = (a2 + v14);
    if (v15 == v63)
    {
      v18.f64[0] = 0.0;
      v16 = 0uLL;
      v17 = 0uLL;
      v19 = 0uLL;
      v20 = 0.0;
    }

    else
    {
      v17 = *v15;
      v16 = v15[1];
      v63[0] = v17;
      v63[1] = v16;
      v13 = v15[2];
      v18.f64[0] = v16.f64[1];
      v19 = *(v63 + 8);
      v20 = v17.f64[0];
    }

    v21 = *(this + 19);
    v22.f64[1] = v19.f64[1];
    v22.f64[0] = v18.f64[0];
    v23 = vdupq_lane_s64(*&v19.f64[0], 0);
    v24 = *(a2 + 10);
    v23.f64[0] = v20;
    v25 = vmulq_f64(v22, v23);
    v26 = vcvtq_f64_f32(vmul_n_f32(v21[10], v24));
    v18.f64[1] = v20;
    v27 = vmulq_f64(v19, v26);
    v28 = vmulq_n_f64(vmlaq_f64(vnegq_f64(vextq_s8(v27, v27, 8uLL)), v26, v18), 1.0 / vsubq_f64(v25, vdupq_laneq_s64(v25, 1)).f64[0]);
    v29 = v21[9].f32[1];
    v64 = vmlaq_laneq_f64(vmlaq_n_f64(v13, v17, v28.f64[0]), v16, v28, 1);
    v30 = *(a2 + 1);
    v31 = *(v30 + 2);
    v32 = v31[1];
    _H4 = *(v4 + 94);
    v34 = v32;
    if (_H4 != COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
    {
      __asm { FCVT            S4, H4 }

      v34 = vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(v32), _S4));
    }

    v31[1] = v34;
    v40 = *(this + 18);
    v41 = *(v40 + 100);
    if (*(*(this + 19) + 76) < 0.1 && (v41 & 0x400) == 0)
    {
      v80 = 0;
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      memset(&v69, 0, sizeof(v69));
      CA::Transform::set_affine(&v69, v63[0].f64[0], v63[0].f64[1], v63[1].f64[0], v63[1].f64[1], v64.f64[0], v64.f64[1]);
      *(&v77 + 1) = &v65;
      *&v78 = &v69;
      *(&v78 + 1) = 0xFF0020003FLL;
      v80 = 0;
      v79 = 0uLL;
      CA::OGL::fill_round_rect(*(a2 + 1), &v77 + 1, 0xF, 0, v11, v12);
LABEL_43:
      *(*(v30 + 2) + 8) = v32;
      return;
    }

    v42 = vmulq_f64(v19, v19).f64[0] + v20 * v20;
    v43 = (v29 * v24) / sqrtf(v42);
    if (v11 == v12)
    {
      v44 = v11 + v43 * 2.8 + v11 + v43 * 2.8;
      if (v44 <= v7 && v44 <= v8)
      {
        v68.width = 0.0;
        v62 = v34;
        CA::Transform::set_affine(&v69, v63[0].f64[0], v63[0].f64[1], v63[1].f64[0], v63[1].f64[1], v64.f64[0], v64.f64[1]);
        CA::OGL::emit_shadow_round_rect(v30, &v65, &v68, &v62, 255, (v41 >> 10) & 1, 0, 0, v11, v43, 15, &v69);
        goto LABEL_43;
      }
    }

    v46 = *(v40 + 128);
    v69.origin = *(v40 + 112);
    v69.size = v46;
    v68 = *(v40 + 144);
    origin = v69.origin;
    v69.origin.x = 0.0;
    v69.origin.y = 0.0;
    v47 = vdupq_n_s64(0x40F0000000000000uLL);
    v48 = vdupq_n_s64(0x3EF0000000000000uLL);
    v69.size = vmulq_f64(vrndaq_f64(vmulq_f64(v46, v47)), v48);
    v68 = vmulq_f64(vrndaq_f64(vmulq_f64(v68, v47)), v48);
    v49 = CA::CG::Renderer::retain_simple_path(a2, &v69, &v68);
    if (!v49)
    {
      goto LABEL_41;
    }

    v51 = v49;
    v64 = vmlaq_laneq_f64(vmlaq_n_f64(v64, v63[0], origin.x), v63[1], origin, 1);
    v52 = vmulq_f64(v63[1], v63[1]);
    v53 = vaddvq_f64(vmulq_f64(v63[0], v63[0]));
    v54 = vaddq_f64(vdupq_laneq_s64(v52, 1), v52).f64[0];
    v55 = v53 != 1.0;
    if (v54 != 1.0)
    {
      v55 = 1;
    }

    v56 = sqrt(v53);
    if (!v55)
    {
      v56 = v53;
    }

    if (v56 <= 2.0)
    {
      v57 = sqrt(v54);
      if (v55)
      {
        v54 = v57;
      }

      if (vabdd_f64(v56, v54) < 0.001 && *(*(this + 19) + 76) >= 1.5)
      {
        v58 = CA::Render::Path::new_path(v49, v50);
        if (v58)
        {
          v59 = v58;
          v68.width = 0.0;
          v62 = v34;
          CA::Transform::set_affine(&v69, v63[0].f64[0], v63[0].f64[1], v63[1].f64[0], v63[1].f64[1], v64.f64[0], v64.f64[1]);
          CA::OGL::emit_shadow_path(v30);
          if (atomic_fetch_add(v59 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v59 + 16))(v59);
          }

          CGPathRelease(v51);
          goto LABEL_43;
        }
      }
    }

    if ((v41 & 0x400) != 0)
    {
      CGPathRelease(v51);
LABEL_41:
      *(*(v30 + 2) + 8) = v32;
LABEL_42:
      CA::CG::DrawShadow::draw_shadow(this, a2);
      return;
    }

    v60 = CA::CG::fill_path_blurred(a2);
    CGPathRelease(v51);
    *(*(v30 + 2) + 8) = v32;
    if ((v60 & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  else
  {

    CA::CG::DrawShadow::draw_shadow(this, a2);
  }
}

void CA::CG::FillRoundedRectShadow::~FillRoundedRectShadow(CA::CG::FillRoundedRectShadow *this)
{
  *this = &unk_1EF203CE0;
  v2 = *(this + 19);
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v2 + 8))(v2);
  }

  CA::CG::DrawOp::~DrawOp(this);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, this);
}

{
  *this = &unk_1EF203CE0;
  v2 = *(this + 19);
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v2 + 8))(v2);
  }

  CA::CG::DrawOp::~DrawOp(this);
}

uint64_t CA::CG::FillRoundedRect::compute_dod_corners(uint64_t a1, float64x2_t *a2)
{
  v2 = *(a1 + 128);
  v3 = vcltzq_f64(v2);
  v4 = vbslq_s8(v3, vaddq_f64(v2, *(a1 + 112)), *(a1 + 112));
  v5 = vaddq_f64(vbslq_s8(v3, vnegq_f64(v2), v2), v4);
  v3.i64[0] = *&v5.f64[0];
  v3.i64[1] = *&v4.f64[1];
  *a2 = v4;
  a2[1] = v3;
  v4.f64[1] = v5.f64[1];
  a2[2] = v5;
  a2[3] = v4;
  if ((*(a1 + 100) & 4) == 0)
  {
    v6 = 0;
    v7 = (a1 + 48);
    v8 = (a1 + 32);
    v9 = (a1 + 16);
    v10 = (a1 + 40);
    v11 = (a1 + 24);
    v12 = (a1 + 8);
    v13 = vld1q_dup_f64(v12);
    v14 = vld1q_dup_f64(v11);
    v15 = vld1q_dup_f64(v10);
    v16 = vld1q_dup_f64(v9);
    v17 = vld1q_dup_f64(v8);
    v18 = vld1q_dup_f64(v7);
    do
    {
      f64 = a2[v6].f64;
      v21 = vld2q_f64(f64);
      v22.val[0] = vmlaq_f64(vmlaq_f64(v15, v21.val[0], v13), v21.val[1], v14);
      v22.val[1] = vmlaq_f64(vmlaq_f64(v18, v21.val[0], v16), v21.val[1], v17);
      vst2q_f64(f64, v22);
      v6 += 2;
    }

    while (v6 != 4);
  }

  return 1;
}

double CA::CG::FillRoundedRect::compute_dod(CA::CG::FillRoundedRect *this, float64x2_t *a2)
{
  result = CA::Rect::operator=(a2->f64, this + 14);
  if ((*(this + 100) & 4) == 0)
  {

    *&result = *&CA::Rect::apply_transform(a2, (this + 8));
  }

  return result;
}

void CA::CG::FillRoundedRect::~FillRoundedRect(CA::CG::FillRoundedRect *this)
{
  CA::CG::DrawOp::~DrawOp(this);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_zone;

  malloc_zone_free(v2, this);
}

void CA::CG::StrokeRoundedRect::draw_shape(CA::CG::StrokeRoundedRect *this, CA::CG::Renderer *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  if (*(this + 22))
  {
    goto LABEL_7;
  }

  v5 = *(this + 18);
  v4 = *(this + 19);
  v6 = v5 - v4;
  v7 = v4 - v5;
  if (v6 >= 0.0)
  {
    v7 = v6;
  }

  if (v7 <= 0.001 && (v8 = *(this + 25), (v8 & 1) != 0) && (CA::CG::DrawOp::shape_line_width(this, a2, *(this + 20)), v9 >= 0.0))
  {
    v11 = v9;
    if (v9 >= 0.001)
    {
      v12 = 88;
      if ((v8 & 4) == 0)
      {
        v12 = 32;
      }

      v14 = *(this + 14);
      v13 = *(this + 15);
      v27.f64[0] = v14;
      v27.f64[1] = v13;
      v16 = *(this + 16);
      v15 = *(this + 17);
      v28.f64[0] = v16;
      v28.f64[1] = v15;
      if (v16 < 0.0)
      {
        v27.f64[0] = v16 + v14;
        v28.f64[0] = -v16;
      }

      v17 = (a2 + v12);
      if (v15 < 0.0)
      {
        v27.f64[1] = v15 + v13;
        v28.f64[1] = -v15;
      }

      v18 = v11 * 0.5;
      v19 = v28.f64[1];
      if (v28.f64[0] > v28.f64[1])
      {
        v19 = v28.f64[0];
      }

      if (v19 < 1.79769313e308)
      {
        v10.i64[0] = 0;
        __asm { FMOV            V3.2D, #-2.0 }

        v25 = vmlsq_lane_f64(v28, _Q3, v18, 0);
        v26 = vclezq_f64(v25);
        v27 = vaddq_f64(v27, vdupq_lane_s64(COERCE__INT64(-v18), 0));
        v28 = vandq_s8(v25, vdupq_lane_s64(vmvnq_s8(vcgtq_s64(v10, vorrq_s8(vdupq_laneq_s64(v26, 1), v26))).i64[0], 0));
      }

      v33 = 0;
      v31 = 0u;
      v32 = 0u;
      v30 = 0u;
      memset(v29, 0, sizeof(v29));
      CA::Transform::set_affine(v29, *v17, v17[1], v17[2], v17[3], v17[4], v17[5]);
      *(&v30 + 1) = &v27;
      *&v31 = v29;
      *(&v31 + 1) = 0xFF0020003FLL;
      v33 = 0;
      v32 = 0uLL;
      CA::OGL::stroke_round_rect(*(a2 + 1), &v30 + 1, 0xF, 0, v5 + v11 * 0.5, v11);
    }
  }

  else
  {
LABEL_7:

    CA::CG::StrokeRoundedRect::draw_shape_as_path(this, a2);
  }
}

void CA::CG::StrokeRoundedRect::draw_shape_as_path(CA::CG::StrokeRoundedRect *this, CA::CG::Renderer *a2)
{
  Mutable = CGPathCreateMutable();
  CGPathAddRoundedRect(Mutable, 0, *(this + 112), *(this + 18), *(this + 19));
  CA::CG::stroke_path(a2, Mutable, 0, this + 8, this + 160);

  CFRelease(Mutable);
}

void *CA::CG::StrokeRoundedRect::styled_op(uint64_t a1, const double *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v10 = malloc_type_zone_malloc(malloc_zone, 0xA0uLL, 0x165299FDuLL);
  if (v10)
  {
    v11 = *(a1 + 100) & 4;
    Color = CGStyleGetColor();
    CA::CG::DrawOp::DrawOp(v10, a2, a1, a4, a5, Color, v11 | 0x8C0);
    *v10 = &unk_1EF203CE0;
    v10[18] = a1;
    atomic_fetch_add((a3 + 8), 1u);
    v10[19] = a3;
    *v10 = &unk_1EF200460;
  }

  return v10;
}

uint64_t CA::CG::StrokeRoundedRectShadow::retain_path(uint64_t a1, CA::CG::Renderer *this, CGPoint *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 144);
  v4 = *(v3 + 128);
  v13.origin = *(v3 + 112);
  v13.size = v4;
  v12 = *(v3 + 144);
  v5 = v4;
  *a3 = v13.origin;
  v13.origin.x = 0.0;
  v13.origin.y = 0.0;
  v6 = vdupq_n_s64(0x40F0000000000000uLL);
  v7 = vdupq_n_s64(0x3EF0000000000000uLL);
  v13.size = vmulq_f64(vrndaq_f64(vmulq_f64(v5, v6)), v7);
  v12 = vmulq_f64(vrndaq_f64(vmulq_f64(v12, v6)), v7);
  v8 = CA::CG::Renderer::retain_simple_path(this, &v13, &v12);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  stroked_path = CA::CG::create_stroked_path(v8, (v3 + 8), v3 + 160, (*(v3 + 100) & 4) != 0);
  CGPathRelease(v9);
  return stroked_path;
}

void CA::CG::StrokeRoundedRectShadow::~StrokeRoundedRectShadow(CA::CG::StrokeRoundedRectShadow *this)
{
  *this = &unk_1EF203CE0;
  v2 = *(this + 19);
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v2 + 8))(v2);
  }

  CA::CG::DrawOp::~DrawOp(this);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, this);
}

{
  *this = &unk_1EF203CE0;
  v2 = *(this + 19);
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v2 + 8))(v2);
  }

  CA::CG::DrawOp::~DrawOp(this);
}

float64x2_t CA::CG::StrokeRoundedRect::compute_dod(CA::CG::StrokeRoundedRect *this, float64x2_t *a2)
{
  CA::Rect::operator=(a2->f64, this + 14);
  if ((*(this + 100) & 4) == 0)
  {
    CA::Rect::apply_transform(a2, (this + 8));
  }

  result.f64[0] = a2[1].f64[1];
  if (a2[1].f64[0] > result.f64[0])
  {
    result.f64[0] = a2[1].f64[0];
  }

  if (result.f64[0] < 1.79769313e308)
  {
    v16 = a2[1];
    v5.f64[0] = CA::CG::stroke_radius(this + 160, *(this + 8), *(this + 24));
    v6.i64[0] = 0;
    v5.f64[1] = v7;
    v8 = vsubq_f64(*a2, v5);
    __asm { FMOV            V3.2D, #2.0 }

    v14 = vmlaq_f64(v16, _Q3, v5);
    v15 = vclezq_f64(v14);
    result = vandq_s8(v14, vdupq_lane_s64(vmvnq_s8(vcgtq_s64(v6, vorrq_s8(vdupq_laneq_s64(v15, 1), v15))).i64[0], 0));
    *a2 = v8;
    a2[1] = result;
  }

  return result;
}

void CA::CG::StrokeRoundedRect::~StrokeRoundedRect(CA::CG::StrokeRoundedRect *this)
{
  *this = &unk_1EF2002C8;
  if (*(this + 22))
  {
    CGDashRelease();
  }

  CA::CG::DrawOp::~DrawOp(this);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_zone;

  malloc_zone_free(v2, this);
}

{
  *this = &unk_1EF2002C8;
  if (*(this + 22))
  {
    CGDashRelease();
  }

  CA::CG::DrawOp::~DrawOp(this);
}

uint64_t CA::OGL::Context::draw_elements(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a8)
  {
    v9 = *(a1 + 1368);
    if (v9)
    {
      *(a1 + 1368) = 0;
      ++*(a1 + 664);
      v12 = &unk_1EF200578;
      v13 = a1;
      v14 = &v12;
      CA::OGL::clip_primitives(a2, a3, a4, a5, 0, a8, v9, 0, 0, &v12, 1u);
      result = std::__function::__value_func<BOOL ()(CA::OGL::Vertex *,unsigned int)>::~__value_func[abi:nn200100](&v12);
      *(a1 + 1368) = v9;
      ++*(a1 + 664);
    }

    else
    {
      v12 = &unk_1EF200578;
      v13 = a1;
      v14 = &v12;
      CA::OGL::clip_primitives(a2, a3, a4, a5, 0, a8, 0, 0, 0, &v12, 1u);
      return std::__function::__value_func<BOOL ()(CA::OGL::Vertex *,unsigned int)>::~__value_func[abi:nn200100](&v12);
    }
  }

  else
  {
    v11 = *(*a1 + 352);

    return v11();
  }

  return result;
}

uint64_t std::__function::__func<CA::OGL::Context::draw_elements(CA::OGL::PrimitiveMode,unsigned int,unsigned short const*,CA::OGL::Vertex const*,unsigned int,unsigned int,CA::OGL::ClipPlane const*)::$_0,std::allocator<CA::OGL::Context::draw_elements(CA::OGL::PrimitiveMode,unsigned int,unsigned short const*,CA::OGL::Vertex const*,unsigned int,unsigned int,CA::OGL::ClipPlane const*)::$_0>,BOOL ()(CA::OGL::Vertex*,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EF200578;
  a2[1] = v2;
  return result;
}

void *CA::OGL::Context::array_quad(void *result, float64x2_t a2, float64x2_t a3, float64x2_t a4, float64x2_t a5)
{
  v5 = result[18];
  v6 = (result[17] + 48 * v5);
  result[18] = v5 + 4;
  *v6 = vcvt_f32_f64(a2);
  v6[1] = 0x3F80000000000000;
  v6[6] = vcvt_f32_f64(a3);
  v6[7] = 0x3F80000000000000;
  v6[12] = vcvt_f32_f64(a4);
  v6[13] = 0x3F80000000000000;
  v6[18] = vcvt_f32_f64(a5);
  v6[19] = 0x3F80000000000000;
  if (result[14])
  {
    return CA::OGL::Context::array_indices(result, v5);
  }

  return result;
}

void *CA::OGL::Context::array_quad(void *result, float64x2_t *a2, float64x2_t *a3, float64x2_t *a4, float64x2_t *a5)
{
  v6 = result[18];
  v7 = result[17] + 48 * v6;
  result[18] = v6 + 4;
  v8 = vcvt_hight_f32_f64(vcvt_f32_f64(*a3), a3[1]);
  v9 = vcvt_hight_f32_f64(vcvt_f32_f64(*a4), a4[1]);
  v10 = vcvt_hight_f32_f64(vcvt_f32_f64(*a5), a5[1]);
  *v7 = vcvt_hight_f32_f64(vcvt_f32_f64(*a2), a2[1]);
  *(v7 + 48) = v8;
  *(v7 + 96) = v9;
  *(v7 + 144) = v10;
  if (result[14])
  {
    return CA::OGL::Context::array_indices(result, v6);
  }

  return result;
}

uint64_t CA::OGL::emit_shape(CA::OGL *this, CA::OGL::Context *a2, const CA::Shape *a3)
{
  v51 = *MEMORY[0x1E69E9840];
  *(*(this + 2) + 16) = 0;
  v5 = *(*(this + 82) + 8);
  v6 = *(this + 84);
  if (v6)
  {
    v7 = v6 + 6;
  }

  else
  {
    v7 = (this + 608);
  }

  v8 = CA::OGL::Context::need_transparent_source(this);
  v12 = v8;
  v13 = *(this + 64);
  if (v13 == 1)
  {
    *(this + 64) = 0;
  }

  *(this + 18) = 0;
  v14 = this + 1386;
  *(this + 14) = this + 1386;
  *(this + 120) = xmmword_183E20E50;
  if ((a2 & 1) == 0)
  {
    if (*(a2 + 1) == 6)
    {
      goto LABEL_8;
    }

LABEL_11:
    if (v5 == a2)
    {
      v15 = CA::Shape::ref(a2, v9);
    }

    else
    {
      v15 = CA::Shape::intersect(v5, a2);
    }

    v16 = v15;
    if (v15)
    {
      if (v15 == 1)
      {
        goto LABEL_32;
      }
    }

    else if (*(v15 + 4) == 6)
    {
      goto LABEL_32;
    }

    v17 = *(*(this + 2) + 8);
    v47 = 0uLL;
    v49 = 0;
    v50 = 0;
    v48 = v15;
    while (CA::ShapeIterator::iterate(&v48, &v47))
    {
      v18 = vclez_s32(*(&v47 + 8));
      if ((vpmax_u32(v18, v18).u32[0] & 0x80000000) == 0)
      {
        v19 = v7[1];
        v20 = vclez_s32(v19);
        if ((vpmax_u32(v20, v20).u32[0] & 0x80000000) != 0 || (v21 = vmax_s32(*&v47, *v7), v22 = vmin_s32(vadd_s32(*&v47, *(&v47 + 8)), vadd_s32(*v7, v19)), v23 = vsub_s32(v22, v21), v24 = vclez_s32(v23), (vpmax_u32(v24, v24).u32[0] & 0x80000000) != 0))
        {
          *(&v47 + 1) = 0;
        }

        else
        {
          *&v25 = v21;
          *(&v25 + 1) = v23;
          v47 = v25;
          if (*(this + 27))
          {
            v26 = 6;
          }

          else
          {
            v26 = 4;
          }

          if ((*(this + 18) + 4) > *(this + 19) || (v27 = *(this + 16)) != 0 && *(this + 15) + v26 > v27)
          {
            *(this + 692) |= 0x20u;
            v43 = v21;
            v45 = v22;
            CA::OGL::Context::array_flush(this);
            v21 = v43;
            v22 = v45;
            *(this + 18) = 0;
            *(this + 14) = v14;
            *(this + 120) = xmmword_183E20E50;
          }

          CA::OGL::Context::array_rect(this, v21.i32[0], v21.i32[1], v22.i32[0], v22.i32[1]);
          v28 = *(this + 17) + 48 * *(this + 18);
          *(v28 - 160) = v17;
          *(v28 - 112) = v17;
          *(v28 - 64) = v17;
          *(v28 - 16) = v17;
        }
      }
    }

LABEL_32:
    CA::Shape::unref(v16);
    if (!v12)
    {
      goto LABEL_52;
    }

LABEL_33:
    v29 = CA::Shape::subtract(v5, a2, v10, v11);
    v30 = v29;
    if (v29)
    {
      if (v29 == 1)
      {
LABEL_51:
        CA::Shape::unref(v30);
        goto LABEL_52;
      }
    }

    else if (*(v29 + 4) == 6)
    {
      goto LABEL_51;
    }

    v47 = 0uLL;
    v49 = 0;
    v50 = 0;
    v48 = v29;
    while (CA::ShapeIterator::iterate(&v48, &v47))
    {
      v31 = vclez_s32(*(&v47 + 8));
      if ((vpmax_u32(v31, v31).u32[0] & 0x80000000) == 0)
      {
        v32 = v7[1];
        v33 = vclez_s32(v32);
        if ((vpmax_u32(v33, v33).u32[0] & 0x80000000) != 0 || (v34 = vmax_s32(*&v47, *v7), v35 = vmin_s32(vadd_s32(*&v47, *(&v47 + 8)), vadd_s32(*v7, v32)), v36 = vsub_s32(v35, v34), v37 = vclez_s32(v36), (vpmax_u32(v37, v37).u32[0] & 0x80000000) != 0))
        {
          *(&v47 + 1) = 0;
        }

        else
        {
          *&v38 = v34;
          *(&v38 + 1) = v36;
          v47 = v38;
          if (*(this + 27))
          {
            v39 = 6;
          }

          else
          {
            v39 = 4;
          }

          if ((*(this + 18) + 4) > *(this + 19) || (v40 = *(this + 16)) != 0 && *(this + 15) + v39 > v40)
          {
            *(this + 692) |= 0x20u;
            v44 = v34;
            v46 = v35;
            CA::OGL::Context::array_flush(this);
            v34 = v44;
            v35 = v46;
            *(this + 18) = 0;
            *(this + 14) = v14;
            *(this + 120) = xmmword_183E20E50;
          }

          CA::OGL::Context::array_rect(this, v34.i32[0], v34.i32[1], v35.i32[0], v35.i32[1]);
          v41 = *(this + 17) + 48 * *(this + 18);
          *(v41 - 160) = 0;
          *(v41 - 112) = 0;
          *(v41 - 64) = 0;
          *(v41 - 16) = 0;
        }
      }
    }

    goto LABEL_51;
  }

  if (a2 != 1)
  {
    goto LABEL_11;
  }

LABEL_8:
  if (v8)
  {
    goto LABEL_33;
  }

LABEL_52:
  result = CA::OGL::Context::array_flush(this);
  if (v13)
  {
    *(this + 64) = 1;
  }

  *(*(this + 2) + 16) = 0;
  return result;
}

uint64_t CA::OGL::emit_bias(void *a1, int32x2_t *a2, float a3, float a4)
{
  CA::OGL::bind_filter_surface(a1, a2, 0, a4);
  *(a1[2] + 16) = 26;
  v8.i32[0] = 1000593162;
  if (a3 >= 0.005)
  {
    *v8.i32 = a3;
    if (a3 > 0.995)
    {
      v8.i32[0] = 1065269330;
    }
  }

  *v8.i32 = (1.0 / *v8.i32) + -2.0;
  *(a1[2] + 24) = vdupq_lane_s32(v8, 0);
  result = CA::OGL::emit_filter_quads(a1, a2, a4);
  if (a1[84] != a2)
  {
    result = CA::OGL::Context::unbind_surface(a1, a2, 0);
  }

  *(a1[2] + 16) = 0;
  *(a1[2] + 19) = 0;
  return result;
}

uint64_t CA::OGL::emit_sdr_normalize_filter(uint64_t a1, uint64_t a2, int32x2_t *a3, float a4)
{
  CA::OGL::bind_filter_surface(a1, a3, 0, a4);
  *(*(a1 + 16) + 16) = 90;
  v8 = *(a2 + 40);
  float_key = CA::Render::KeyValueArray::get_float_key(v8, 358, 1.0);
  v10 = powf(float_key, 1.0 / *(a1 + 576));
  v11 = CA::Render::KeyValueArray::get_float_key(v8, 359, 1.0);
  v12 = *(a1 + 16);
  *&v11 = v11;
  *(v12 + 24) = v10;
  *(v12 + 28) = LODWORD(v11);
  *(v12 + 32) = 0;
  result = CA::OGL::emit_filter_quads(a1, a3, a4);
  if (*(a1 + 672) != a3)
  {
    result = CA::OGL::Context::unbind_surface(a1, a3, 0);
  }

  *(*(a1 + 16) + 16) = 0;
  *(*(a1 + 16) + 19) = 0;
  return result;
}

uint64_t CA::OGL::emit_limit_apl_dimming(void *a1, int32x2_t *a2, uint64_t a3, float a4, float a5, float a6)
{
  v37 = *MEMORY[0x1E69E9840];
  CA::OGL::Context::bind_surface(a1, a2, 0, a4 != 1.0, a4 != 1.0, 0.0);
  *(a1[2] + 16) = 118;
  *(a1[2] + 497) |= 2u;
  *(a1[2] + 368) = 1065353216;
  v12 = a5 + a2[6].i32[0];
  v13 = a6 + a2[6].i32[1];
  v14 = vcvt_f32_s32(a2[7]);
  v23 = 0x3F80000000000000;
  v24 = 0u;
  v31 = 0u;
  v32 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v29 = 0u;
  v30 = 0u;
  v25 = 0u;
  v28 = 0x3F80000000000000;
  v26 = v12 * a4;
  v27 = v13 * a4;
  HIDWORD(v31) = 1065353216;
  v21 = v12 * a4;
  v22 = (v13 + v14.f32[1]) * a4;
  DWORD1(v24) = v14.i32[1];
  *&v31 = (v12 + v14.f32[0]) * a4;
  *(&v31 + 1) = v22;
  *&v32 = v14;
  *&v34 = *&v31;
  *(&v34 + 1) = v13 * a4;
  HIDWORD(v34) = 1065353216;
  LODWORD(v35) = v14.i32[0];
  v17 = 0u;
  v19 = 0u;
  v20 = 0u;
  v15 = *(a1[82] + 8);
  v18[0] = a1;
  v18[1] = v15;
  v18[2] = 0;
  WORD4(v19) = 0;
  CA::OGL::Context::ClippedArray::start(v18);
  while (CA::OGL::Context::ClippedArray::next_rect(v18, &v17))
  {
    (*(*a1 + 432))(a1, 4, &v21, a3);
  }

  *(a1[2] + 497) &= ~2u;
  result = CA::OGL::Context::unbind_surface(a1, a2, 0);
  *(a1[2] + 16) = 0;
  return result;
}

float CA::OGL::adjust_skipped_corner_vertices(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v7 = (a1 + 288 * a3);
  v8 = (a1 + 32 * a5);
  v9 = v7[1];
  *v8 = *v7;
  v8[1] = v9;
  v10 = 7 - a3;
  v11 = 7 - a3 + 8 * a3;
  v12 = (a1 + 32 * v11);
  v13 = (a1 + 32 * (a5 + 1));
  v14 = v12[1];
  *v13 = *v12;
  v13[1] = v14;
  v15 = (a1 + 288 * (7 - a3));
  v16 = a5 + 2;
  v17 = (a1 + 32 * (a5 + 2));
  v18 = v15[1];
  *v17 = *v15;
  v17[1] = v18;
  v19 = a3 + 8 * (7 - a3);
  v20 = (a1 + 32 * v19);
  v21 = a5 + 3;
  v22 = (a1 + 32 * (a5 + 3));
  v23 = v20[1];
  *v22 = *v20;
  v22[1] = v23;
  v24 = a2;
  v25 = a6;
  do
  {
    v26 = v24 + 48 * a5 + 112;
    *(v26 - 96) = *(v24 + 432 * a3 + 16);
    *(v26 - 48) = *(v24 + 336 * a3 + 352);
    *v26 = *(v24 + 3040 - 432 * a3);
    result = *(v24 + 2704 - 336 * a3);
    *(v26 + 48) = result;
    v24 += 4;
    --v25;
  }

  while (v25);
  if ((a7 & 0x400000) != 0)
  {
    v28 = 0;
    v29 = a2 + 384 * (a4 + a3);
    v30 = a2 + 432 * a3;
    v31 = (v30 + 64);
    v32 = (v30 + 400);
    do
    {
      if (a4 >= 2)
      {
        v33 = v32;
        v34 = v31;
        v35 = a4 - 1;
        do
        {
          *v33 = *(v29 + 48 * a3 + 4 * v28 + 16);
          *v34 = *(v30 + 48 * a4 + 4 * v28 + 16);
          v34 += 12;
          v33 += 96;
          --v35;
        }

        while (v35);
      }

      *(a2 + 432 * a3 + 4 * v28 + 16) = *(v29 + 48 * a3 + 4 * v28 + 16);
      result = *(v30 + 48 * a4 + 4 * v28 + 16);
      *(a2 + 48 * a5 + 4 * v28++ + 16) = result;
      ++v31;
      ++v32;
    }

    while (v28 != a6);
  }

  if ((a7 & 0x800000) != 0)
  {
    v36 = 0;
    v37 = v10 - a4;
    v38 = a2 + 384 * a3;
    v39 = a2 + 384 * (a4 + a3);
    v40 = a2 + 336 * a3;
    v41 = (v40 + 736);
    v42 = (v40 + 304);
    do
    {
      if (a4 >= 2)
      {
        v43 = v42;
        v44 = v41;
        v45 = a4 - 1;
        do
        {
          *v43 = *(v38 + 48 * v37 + 4 * v36 + 16);
          v43 -= 12;
          *v44 = *(v39 + 48 * v10 + 4 * v36 + 16);
          v44 += 96;
          --v45;
        }

        while (v45);
      }

      *(a2 + 48 * v11 + 4 * v36 + 16) = *(v38 + 48 * v37 + 4 * v36 + 16);
      result = *(v39 + 48 * v10 + 4 * v36 + 16);
      *(a2 + 48 * (a5 + 1) + 4 * v36++ + 16) = result;
      ++v41;
      ++v42;
    }

    while (v36 != a6);
  }

  if ((a7 & 0x2000000) != 0)
  {
    v46 = 0;
    v47 = v10 - a4;
    v48 = a2 + 384 * (v10 - a4);
    v49 = a2 + 384 * (7 - a3);
    v50 = a2 - 432 * a3;
    v51 = (v50 + 2656);
    v52 = (v50 + 2992);
    do
    {
      if (a4 >= 2)
      {
        v53 = v52;
        v54 = v51;
        v55 = a4 - 1;
        do
        {
          *v54 = *(v48 + 48 * v10 + 4 * v46 + 16);
          *v53 = *(v49 + 48 * v47 + 4 * v46 + 16);
          v53 -= 12;
          v54 -= 96;
          --v55;
        }

        while (v55);
      }

      *(a2 + 432 * (7 - a3) + 4 * v46 + 16) = *(v48 + 48 * v10 + 4 * v46 + 16);
      result = *(v49 + 48 * v47 + 4 * v46 + 16);
      *(a2 + 48 * v16 + 4 * v46++ + 16) = result;
      ++v51;
      ++v52;
    }

    while (v46 != a6);
  }

  if ((a7 & 0x1000000) != 0)
  {
    v56 = 0;
    v57 = a2 + 48 * v19;
    v58 = a2 + 384 * (v10 - a4);
    v59 = a2 - 336 * a3;
    v60 = (v59 + 2320);
    v61 = (v59 + 2752);
    do
    {
      if (a4 >= 2)
      {
        v62 = v61;
        v63 = v60;
        v64 = a4 - 1;
        do
        {
          *v62 = *(v57 + 48 * a4 + 4 * v56 + 16);
          v62 += 12;
          *v63 = *(v58 + 48 * a3 + 4 * v56 + 16);
          v63 -= 96;
          --v64;
        }

        while (v64);
      }

      *(a2 + 48 * v19 + 4 * v56 + 16) = *(v57 + 48 * a4 + 4 * v56 + 16);
      result = *(v58 + 48 * a3 + 4 * v56 + 16);
      *(a2 + 48 * v21 + 4 * v56++ + 16) = result;
      ++v60;
      ++v61;
    }

    while (v56 != a6);
  }

  return result;
}

void CA::OGL::emit_bounds_surround(uint64_t a1, const CA::Bounds *a2)
{
  __dst[63] = *MEMORY[0x1E69E9840];
  v4 = *(*(a1 + 656) + 8);
  if (!CA::Shape::equal(v4, a2))
  {
    v5 = CA::Shape::subtract(v4, a2);
    if (v5)
    {
      v6 = v5;
      if (v5)
      {
        if (v5 == 1)
        {
          return;
        }
      }

      else if (*(v5 + 4) == 6)
      {
        return;
      }

      v7 = *(a1 + 16);
      memcpy(__dst, v7, 0x1F8uLL);
      __dst[0] = v7;
      *(a1 + 16) = __dst;
      LOBYTE(__dst[2]) = 0;
      v8 = *(a1 + 64);
      if (v8 == 1)
      {
        *(a1 + 64) = 0;
      }

      *(a1 + 144) = 0;
      *(a1 + 112) = a1 + 1386;
      *(a1 + 120) = xmmword_183E20E50;
      v14[1] = 0;
      v14[2] = 0;
      v13 = 0;
      v14[0] = v6;
      v12 = 0;
      while (CA::ShapeIterator::iterate(v14, &v12))
      {
        if (*(a1 + 108))
        {
          v9 = 6;
        }

        else
        {
          v9 = 4;
        }

        if ((*(a1 + 144) + 4) > *(a1 + 152) || (v10 = *(a1 + 128)) != 0 && *(a1 + 120) + v9 > v10)
        {
          *(a1 + 1384) |= 0x20u;
          CA::OGL::Context::array_flush(a1);
          *(a1 + 144) = 0;
          *(a1 + 112) = a1 + 1386;
          *(a1 + 120) = xmmword_183E20E50;
        }

        CA::OGL::Context::array_rect(a1, v12, SHIDWORD(v12), (v13 + v12), (HIDWORD(v13) + HIDWORD(v12)));
        v11 = *(a1 + 136) + 48 * *(a1 + 144);
        *(v11 - 160) = 0;
        *(v11 - 112) = 0;
        *(v11 - 64) = 0;
        *(v11 - 16) = 0;
      }

      CA::OGL::Context::array_flush(a1);
      if (v8)
      {
        *(a1 + 64) = 1;
      }

      *(a1 + 16) = __dst[0];
      __dst[0] = 0;
      CA::Shape::unref(v6);
      if (__dst[0])
      {
        __assert_rtn("~ContextState", "ogl-context.h", 613, "!next && Imbalanced ContextState push/pop");
      }
    }
  }
}

void CA::OGL::emit_n_part_rect_large(uint64_t a1, uint64_t a2, int a3, int a4, void *a5, uint64_t a6, _DWORD *a7, uint64_t a8, _DWORD *a9, uint64_t a10, int a11)
{
  v124 = a5;
  v133 = a2;
  v143 = *MEMORY[0x1E69E9840];
  v128 = a3 + 1;
  v17 = *(a1 + 136);
  v18 = *(a1 + 152);
  v127 = a1;
  v132 = (2 * v128);
  if (2 * v128 <= v18)
  {
    v88 = v18;
    MEMORY[0x1EEE9AC00](a1);
    v24 = &v88 - v23;
    bzero(&v88 - v23, v25);
    v26 = (v24 + 15);
    v19 = v127;
    v27 = v26 & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x1EEE9AC00](v28);
    v131 = (&v88 - v29);
    bzero(&v88 - v29, v30);
    v89 = v17;
    v130 = v17;
    v22 = v27;
  }

  else
  {
    v19 = a1;
    v20 = (2 * v128);
    v21 = malloc_type_malloc(80 * v20 + 8 * a3, 0x10000403C748740uLL);
    if (!v21)
    {
      return;
    }

    v88 = v18;
    v89 = v17;
    v22 = &v21[3 * v20];
    v131 = &v22[2 * v20];
    v130 = v21;
    *(v19 + 17) = v21;
    *(v19 + 19) = v20;
  }

  v31 = CA::OGL::Context::need_transparent_source(v19);
  v125 = a11;
  v141 = 0u;
  v142 = 0u;
  v139 = 0u;
  v140 = 0u;
  v137 = 0u;
  v138 = 0u;
  v126 = v31 | ((a11 & 0x40000u) >> 18);
  v135 = 0u;
  v136 = 0u;
  v129 = (a4 - 1);
  if (a4 >= 1)
  {
    v32 = 0;
    v112 = a3 + 2;
    v111 = &v131->f64[1];
    v107 = 2 * a3;
    v106 = &v131[1];
    v113 = &v130[3 * v128];
    v110 = &v130[3 * a3];
    v109 = a3 - 1;
    v105 = &v130[3 * a3 - 3];
    v97 = &v139 + 1;
    v96 = &v140;
    v95 = &v140 + 1;
    v108 = v128 + a3;
    v94 = &v130[3 * v128 + 3 * a3];
    v93 = &v141;
    v92 = &v141 + 1;
    v91 = &v142;
    v90 = &v142 + 8;
    v104 = &v135 + 1;
    v103 = &v136;
    v102 = &v136 + 1;
    v101 = &v137;
    v33 = 32 * v128;
    v34 = xmmword_183E20E60;
    v100 = &v137 + 1;
    v99 = &v138;
    v98 = &v138 + 8;
    v35 = &v22->f64[1];
    v119 = a4;
    v36 = 48 * v128;
    v37 = &v130[1].i8[12];
    v38 = a3 - 2;
    v114 = v130 + 2;
    v39 = v128;
    v123 = v22;
    v122 = v33;
    v121 = xmmword_183E20E60;
    v120 = &v22->f64[1];
    v118 = v36;
    v117 = &v130[1].i8[12];
    v116 = a3 - 2;
    v115 = v128;
    do
    {
      v40 = 0;
      v41 = 1;
      v42 = v124;
      v44 = v132;
      v43 = v133;
      do
      {
        v45 = v41;
        if ((a3 & 0x80000000) == 0)
        {
          v46 = v40 + v32;
          v47 = v35 + v33 * v40;
          v48 = v42;
          v49 = a7;
          v50 = a9;
          v51 = v39;
          v52 = &v37[v36 * v40];
          do
          {
            *(v47 - 8) = *v48;
            *v47 = *(a6 + 8 * v46);
            *(v47 + 8) = v34;
            if (a7)
            {
              *(v52 - 3) = *v49;
              *(v52 - 2) = *(a8 + 4 * v46);
            }

            if (a9)
            {
              *(v52 - 1) = *v50;
              *v52 = *(a10 + 4 * v46);
            }

            ++v50;
            ++v49;
            ++v48;
            v47 += 32;
            v52 += 48;
            --v51;
          }

          while (v51);
        }

        v41 = 0;
        v40 = 1;
      }

      while ((v45 & 1) != 0);
      if (!v32 || v32 == v129)
      {
        v54 = v131;
        v55 = v131;
        v56 = v130;
        if (a3 < 1)
        {
          goto LABEL_30;
        }

        v58 = 0;
        v59 = v131;
        do
        {
          *v59 = v58;
          v59[1] = v58 + 1;
          v59[2] = a3 + v58 + 2;
          v55 = v59 + 4;
          v59[3] = a3 + v58++ + 1;
          v59 += 4;
        }

        while (a3 != v58);
      }

      else
      {
        v53 = v131;
        LODWORD(v131->f64[0]) = 0x10000;
        v53[2] = v112;
        v54 = v111;
        v55 = v111;
        v53[3] = v128;
        v56 = v130;
        if (a3 < 2)
        {
          goto LABEL_30;
        }

        v57 = v131;
        LOWORD(v131->f64[1]) = v109;
        v57[5] = a3;
        v57[6] = v108;
        v55 = v106;
        v57[7] = v107;
      }

      if (v32 && v32 < v129 && a3 >= 3)
      {
        v60 = 0;
        v54 = v55;
        do
        {
          *v54 = v60 + 1;
          v54[1] = v60 + 2;
          v54[2] = a3 + v60 + 3;
          v54[3] = a3 + v60 + 2;
          v54 += 4;
          ++v60;
        }

        while (v38 != v60);
      }

      else
      {
        v54 = v55;
      }

LABEL_30:
      if (v128)
      {
        v61 = *(*(v127 + 2) + 8);
        v62 = v114;
        v63 = v44;
        do
        {
          *v62 = v61;
          v62 += 6;
          v63 = (v63 - 1);
        }

        while (v63);
      }

      v64 = *(v43 + 24);
      if (v64)
      {
        v64();
        v56 = v130;
        v44 = v132;
        v43 = v133;
      }

      v65 = *(v43 + 8);
      v66 = v22;
      v67 = v56;
      CA::OGL::transform_vertices(v66, v56, v44, v65);
      v68 = v133;
      v69 = *(v133 + 32);
      if (v69)
      {
        v69(v133, v67, v132);
        v68 = v133;
      }

      v70 = *(v68 + 20);
      v22 = v123;
      if ((v70 & 0xF) != 0 && (*(v68 + 16) & 9) != 0)
      {
        if (!v32 && (v70 & 4) != 0)
        {
          CA::OGL::aa_adjust_vertices(v130, v113, 48, v128);
          v68 = v133;
          v70 = *(v133 + 20);
        }

        if (v32 == v129 && (v70 & 8) != 0)
        {
          CA::OGL::aa_adjust_vertices(v113, v130, 48, v128);
          v68 = v133;
          v70 = *(v133 + 20);
        }

        if (v70)
        {
          CA::OGL::aa_adjust_vertices(v130, v130 + 3, 0, 1);
          v68 = v133;
          v70 = *(v133 + 20);
        }

        if ((v70 & 2) != 0)
        {
          CA::OGL::aa_adjust_vertices(v110, v105, 0, 1);
          v68 = v133;
        }
      }

      if (!v126)
      {
        goto LABEL_55;
      }

      if (!v32)
      {
        v71 = v130;
        v72 = v104;
        v73 = v103;
        v74 = v102;
        v75 = v110;
        *&v135 = v130->f32[0];
        v76 = v101;
        v77 = v100;
        v78 = v99;
        v79 = &v131;
        goto LABEL_54;
      }

      if (v32 == v129)
      {
        v71 = v94;
        v72 = v97;
        v73 = v96;
        v74 = v95;
        v75 = v113;
        *&v139 = v94->f32[0];
        v76 = v93;
        v77 = v92;
        v78 = v91;
        v79 = &v122;
LABEL_54:
        v80 = *(v79 - 32);
        v81 = v71->f32[2];
        *v72 = v71->f32[1];
        *v73 = v81;
        *v74 = v71->f32[3];
        v82 = v75->f32[1];
        *v76 = v75->f32[0];
        *v77 = v82;
        v83 = v75->f32[3];
        *v78 = v75->f32[2];
        *v80 = v83;
      }

LABEL_55:
      v84 = v54 - v55;
      v19 = v127;
      CA::OGL::emit_mesh_with_center(v127, v68, v131, (v54 - v131) >> 1, v84, v132, v125);
      ++v32;
      v33 = v122;
      v34 = v121;
      v35 = v120;
      v36 = v118;
      v37 = v117;
      v38 = v116;
      v39 = v115;
    }

    while (v32 != v119);
  }

  v85 = v130;
  if (v130 != v89)
  {
    v86 = v88;
    *(v19 + 17) = v89;
    *(v19 + 19) = v86;
    free(v85);
  }

  if (v126)
  {
    if ((v125 & 0x40000) != 0)
    {
      v87 = *(*(v19 + 2) + 8);
    }

    else
    {
      v87 = 0;
    }

    v134 = v87;
    CA::OGL::emit_quad_surround(v19, &v135, &v134);
  }
}

void CA::OGL::emit_eight_part_rect(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  v57[78] = *MEMORY[0x1E69E9840];
  bzero(&v56, 0x280uLL);
  if ((a9 & 0x3C00000) != 0)
  {
    v17 = 20;
  }

  else
  {
    v17 = 16;
  }

  v53 = a1;
  if (v17 > *(a1 + 152))
  {
    return;
  }

  v18 = 0;
  v19 = *(a1 + 136);
  v20 = (v19 + 28);
  v21 = v57;
  v22 = xmmword_183E20E60;
  do
  {
    v23 = 0;
    v24 = *(a4 + 8 * v18);
    v25 = v21;
    v26 = v20;
    do
    {
      *(v25 - 2) = *(a3 + 8 * v23);
      *(v25 - 1) = v24;
      *(v26 - 3) = *(a5 + 4 * v23);
      *(v26 - 2) = *(a6 + 4 * v18);
      *(v26 - 1) = *(a7 + 4 * v23);
      v27 = *(a8 + 4 * v18);
      *v25 = xmmword_183E20E60;
      v25 += 2;
      *v26 = v27;
      v26 += 12;
      ++v23;
    }

    while (v23 != 4);
    ++v18;
    v20 += 48;
    v21 += 16;
  }

  while (v18 != 4);
  if ((a9 & 0x3C00000) != 0)
  {
    v22.n128_f32[0] = CA::OGL::adjust_skipped_corner_vertices_simple(&v56, v19, 4, 4uLL, a9);
  }

  v28 = *(*(v53 + 2) + 8);
  v29 = 32;
  v30 = v17;
  do
  {
    *(v19 + v29) = v28;
    v29 += 48;
    --v30;
  }

  while (v30);
  v31 = *(a2 + 24);
  if (v31)
  {
    v31(a2, &v56, v19, v17, v22);
  }

  CA::OGL::transform_vertices(&v56, v19, v17, *(a2 + 8));
  v32 = *(a2 + 32);
  if (v32)
  {
    v32(a2, v19, v17);
  }

  if ((*(a2 + 16) & 9) != 0)
  {
    v33 = *(a2 + 20);
    if ((v33 & 0xF) == 0)
    {
      goto LABEL_24;
    }

    if ((v33 & 4) != 0)
    {
      CA::OGL::aa_adjust_vertices(v19, (v19 + 192), 48, 4);
      v33 = *(a2 + 20);
      if ((v33 & 8) == 0)
      {
LABEL_21:
        if ((v33 & 1) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_42;
      }
    }

    else if ((v33 & 8) == 0)
    {
      goto LABEL_21;
    }

    CA::OGL::aa_adjust_vertices((v19 + 576), (v19 + 384), 48, 4);
    v33 = *(a2 + 20);
    if ((v33 & 1) == 0)
    {
LABEL_22:
      if ((v33 & 2) != 0)
      {
LABEL_23:
        CA::OGL::aa_adjust_vertices((v19 + 144), (v19 + 96), 192, 4);
      }

LABEL_24:
      CA::OGL::aa_adjust_vertices((v19 + 240), (v19 + 48), 48, 2);
      CA::OGL::aa_adjust_vertices((v19 + 432), (v19 + 624), 48, 2);
      CA::OGL::aa_adjust_vertices((v19 + 240), (v19 + 192), 192, 2);
      CA::OGL::aa_adjust_vertices((v19 + 288), (v19 + 336), 192, 2);
      goto LABEL_25;
    }

LABEL_42:
    CA::OGL::aa_adjust_vertices(v19, (v19 + 48), 192, 4);
    if ((*(a2 + 20) & 2) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_25:
  v34 = CA::OGL::Context::need_transparent_source(v53);
  if ((a9 & 0x3C00000) != 0)
  {
    v35 = &CA::OGL::emit_eight_part_rect(CA::OGL::Context &,CA::OGL::RectState const&,double const*,double const*,float const*,float const*,float const*,float const*,unsigned int)::skipped_corner_indices;
    v36 = v53;
    v37 = 32;
    v38 = 20;
  }

  else
  {
    v35 = &CA::OGL::emit_eight_part_rect(CA::OGL::Context &,CA::OGL::RectState const&,double const*,double const*,float const*,float const*,float const*,float const*,unsigned int)::corner_indices;
    v36 = v53;
    v37 = 16;
    v38 = 16;
  }

  CA::OGL::emit_quad_indices(v36, *(a2 + 40), v35, v37, v38);
  v39 = v34 | ((a9 & 0x40000) >> 18);
  v40 = (v19 + 28);
  v41 = v17;
  do
  {
    v42 = *(v40 - 2);
    *(v40 - 2) = *v40;
    *v40 = v42;
    v40 += 12;
    --v41;
  }

  while (v41);
  CA::OGL::emit_quad_indices(v53, *(a2 + 40), CA::OGL::emit_eight_part_rect(CA::OGL::Context &,CA::OGL::RectState const&,double const*,double const*,float const*,float const*,float const*,float const*,unsigned int)::edge0_indices, 8uLL, v17);
  v43 = 16;
  v44 = v17;
  do
  {
    *(v19 + v43) = vextq_s8(*(v19 + v43), *(v19 + v43), 8uLL);
    v43 += 48;
    --v44;
  }

  while (v44);
  CA::OGL::emit_quad_indices(v53, *(a2 + 40), CA::OGL::emit_eight_part_rect(CA::OGL::Context &,CA::OGL::RectState const&,double const*,double const*,float const*,float const*,float const*,float const*,unsigned int)::edge1_indices, 8uLL, v17);
  v45 = (v19 + 24);
  do
  {
    v46 = *(v45 - 2);
    *(v45 - 2) = *v45;
    *v45 = v46;
    v45 += 12;
    --v17;
  }

  while (v17);
  if (v39)
  {
    v47 = vcvtq_f64_f32(*(v19 + 8));
    v55[0] = vcvtq_f64_f32(*v19);
    v55[1] = v47;
    v48 = vcvtq_f64_f32(*(v19 + 152));
    v55[2] = vcvtq_f64_f32(*(v19 + 144));
    v55[3] = v48;
    v49 = vcvtq_f64_f32(*(v19 + 728));
    v55[4] = vcvtq_f64_f32(*(v19 + 720));
    v55[5] = v49;
    v50 = vcvtq_f64_f32(*(v19 + 584));
    v55[6] = vcvtq_f64_f32(*(v19 + 576));
    v55[7] = v50;
    if ((a9 & 0x40000) != 0)
    {
      v51 = v53;
      v52 = *(*(v53 + 2) + 8);
    }

    else
    {
      v52 = 0;
      v51 = v53;
    }

    v54 = v52;
    CA::OGL::emit_quad_surround(v51, v55, &v54);
  }
}

void CA::OGL::emit_twenty_four_part_rect(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  v56[158] = *MEMORY[0x1E69E9840];
  bzero(&v55, 0x500uLL);
  if ((a9 & 0x3C00000) != 0)
  {
    v17 = 40;
  }

  else
  {
    v17 = 36;
  }

  v52 = a1;
  if (v17 <= *(a1 + 152))
  {
    v18 = 0;
    v19 = *(a1 + 136);
    v20 = (v19 + 28);
    v21 = v56;
    v22 = xmmword_183E20E60;
    do
    {
      v23 = 0;
      v24 = *(a4 + 8 * v18);
      v25 = v21;
      v26 = v20;
      do
      {
        *(v25 - 2) = *(a3 + 8 * v23);
        *(v25 - 1) = v24;
        *(v26 - 3) = *(a5 + 4 * v23);
        *(v26 - 2) = *(a6 + 4 * v18);
        *(v26 - 1) = *(a7 + 4 * v23);
        v27 = *(a8 + 4 * v18);
        *v25 = xmmword_183E20E60;
        v25 += 2;
        *v26 = v27;
        v26 += 12;
        ++v23;
      }

      while (v23 != 6);
      ++v18;
      v20 += 72;
      v21 += 24;
    }

    while (v18 != 6);
    if ((a9 & 0x3C00000) != 0)
    {
      v22.n128_f32[0] = CA::OGL::adjust_skipped_corner_vertices_simple(&v55, v19, 6, 4uLL, a9);
    }

    v28 = *(*(v52 + 2) + 8);
    v29 = 32;
    v30 = v17;
    do
    {
      *(v19 + v29) = v28;
      v29 += 48;
      --v30;
    }

    while (v30);
    v31 = *(a2 + 24);
    if (v31)
    {
      v31(a2, &v55, v19, v17, v22);
    }

    CA::OGL::transform_vertices(&v55, v19, v17, *(a2 + 8));
    v32 = *(a2 + 32);
    if (v32)
    {
      v32(a2, v19, v17);
    }

    if ((*(a2 + 16) & 9) != 0)
    {
      CA::OGL::aa_adjust_vertices(v19, (v19 + 288), 48, 6);
      CA::OGL::aa_adjust_vertices((v19 + 1440), (v19 + 1152), 48, 6);
      CA::OGL::aa_adjust_vertices(v19, (v19 + 48), 288, 6);
      CA::OGL::aa_adjust_vertices((v19 + 240), (v19 + 192), 288, 6);
      CA::OGL::aa_adjust_vertices((v19 + 672), (v19 + 384), 48, 2);
      CA::OGL::aa_adjust_vertices((v19 + 960), (v19 + 1248), 48, 2);
      CA::OGL::aa_adjust_vertices((v19 + 672), (v19 + 624), 288, 2);
      CA::OGL::aa_adjust_vertices((v19 + 720), (v19 + 768), 288, 2);
    }

    v33 = CA::OGL::Context::need_transparent_source(v52);
    if ((a9 & 0x3C00000) != 0)
    {
      v34 = &CA::OGL::emit_twenty_four_part_rect(CA::OGL::Context &,CA::OGL::RectState const&,double const*,double const*,float const*,float const*,float const*,float const*,unsigned int)::corner_skipped_outer_indices;
      v35 = v52;
      v36 = 96;
      v37 = 40;
    }

    else
    {
      v34 = &CA::OGL::emit_twenty_four_part_rect(CA::OGL::Context &,CA::OGL::RectState const&,double const*,double const*,float const*,float const*,float const*,float const*,unsigned int)::outer_indices;
      v35 = v52;
      v36 = 80;
      v37 = 36;
    }

    CA::OGL::emit_quad_indices(v35, *(a2 + 40), v34, v36, v37);
    v38 = v33 | ((a9 & 0x40000) >> 18);
    v39 = (v19 + 28);
    v40 = v17;
    do
    {
      v41 = *(v39 - 2);
      *(v39 - 2) = *v39;
      *v39 = v41;
      v39 += 12;
      --v40;
    }

    while (v40);
    CA::OGL::emit_quad_indices(v52, *(a2 + 40), CA::OGL::emit_twenty_four_part_rect(CA::OGL::Context &,CA::OGL::RectState const&,double const*,double const*,float const*,float const*,float const*,float const*,unsigned int)::inner0_indices, 8uLL, v17);
    v42 = 16;
    v43 = v17;
    do
    {
      *(v19 + v42) = vextq_s8(*(v19 + v42), *(v19 + v42), 8uLL);
      v42 += 48;
      --v43;
    }

    while (v43);
    CA::OGL::emit_quad_indices(v52, *(a2 + 40), CA::OGL::emit_twenty_four_part_rect(CA::OGL::Context &,CA::OGL::RectState const&,double const*,double const*,float const*,float const*,float const*,float const*,unsigned int)::inner1_indices, 8uLL, v17);
    v44 = (v19 + 24);
    do
    {
      v45 = *(v44 - 2);
      *(v44 - 2) = *v44;
      *v44 = v45;
      v44 += 12;
      --v17;
    }

    while (v17);
    if (v38)
    {
      v46 = vcvtq_f64_f32(*(v19 + 8));
      v54[0] = vcvtq_f64_f32(*v19);
      v54[1] = v46;
      v47 = vcvtq_f64_f32(*(v19 + 248));
      v54[2] = vcvtq_f64_f32(*(v19 + 240));
      v54[3] = v47;
      v48 = vcvtq_f64_f32(*(v19 + 1688));
      v54[4] = vcvtq_f64_f32(*(v19 + 1680));
      v54[5] = v48;
      v49 = vcvtq_f64_f32(*(v19 + 1448));
      v54[6] = vcvtq_f64_f32(*(v19 + 1440));
      v54[7] = v49;
      if ((a9 & 0x40000) != 0)
      {
        v50 = v52;
        v51 = *(*(v52 + 2) + 8);
      }

      else
      {
        v51 = 0;
        v50 = v52;
      }

      v53 = v51;
      CA::OGL::emit_quad_surround(v50, v54, &v53);
    }
  }
}

uint64_t CA::OGL::anonymous namespace::prepare_9_slice_aa(CA::OGL::_anonymous_namespace_ *this, double a2, double a3, double a4, double a5, float64x2_t a6, const float *a7, const float *a8, const float *a9, double *a10, double *a11, float *a12, float *a13, double a14)
{
  *&a14 = *a8 + ((a8[1] - *a8) * 0.5);
  *a10 = a2;
  if (a4 > a2 || a5 < a3)
  {
    if (a3 < a4)
    {
      a4 = a3;
    }

    if (a4 >= a2)
    {
      v16 = a4;
    }

    else
    {
      v16 = a2;
    }

    v17 = a6.f64[0] + a2;
    a10[1] = a6.f64[0] + a2;
    a10[2] = v16;
    if (a3 >= a5)
    {
      v18 = a5;
    }

    else
    {
      v18 = a3;
    }

    if (v18 < a2)
    {
      v18 = a2;
    }

    v19 = a3 - a6.f64[0];
    a10[3] = v18;
    a10[4] = a3 - a6.f64[0];
    a10[5] = a3;
    v20 = a6.f64[0] / (v16 - a2);
    v21 = a6.f64[0] / (a3 - (v18 + a2));
    v22 = *this;
    *a11 = *this;
    v23 = *(this + 2);
    *(a11 + 5) = v23;
    v24 = *a7 * (v23 - v22);
    *(a11 + 2) = v24 + v22;
    v25 = v22 + (a7[2] * (v23 - v22));
    *(a11 + 1) = v22 + (v24 * v20);
    *(a11 + 3) = v25;
    *(a11 + 4) = v23 + ((v25 - v23) * v21);
    v26 = LODWORD(a14);
    if (a9)
    {
      v26 = *a8;
    }

    *a12 = v26;
    *(a12 + 1) = vdupq_lane_s32(*&a14, 0);
    if ((a9 & 2) != 0)
    {
      *&a14 = a8[1];
    }

    a12[5] = *&a14;
    if (v16 > v18)
    {
      v18 = (v18 + v16) * 0.5;
      a10[2] = v18;
      a10[3] = v18;
      v16 = v18;
    }

    if (v17 > v16)
    {
      a10[1] = v16;
      *(a11 + 1) = *(a11 + 2);
      a12[1] = a12[2];
    }

    if (v19 < v18)
    {
      a10[4] = v18;
      *(a11 + 4) = *(a11 + 3);
      a12[4] = a12[3];
    }

    return 5;
  }

  else
  {
    v28 = a6.f64[0] + a2;
    v29 = a3 - a6.f64[0];
    a10[1] = a6.f64[0] + a2;
    a10[2] = a3 - a6.f64[0];
    a10[3] = a3;
    v14.i32[0] = *this;
    *a11 = *this;
    v30 = *(this + 2);
    *(a11 + 3) = v30;
    a6.f64[1] = a3 - a6.f64[0] - a2;
    *(a11 + 4) = vmla_n_f32(vdup_lane_s32(v14, 0), vcvt_f32_f64(vmulq_n_f64(a6, 1.0 / (a3 - a2))), v30 - *v14.i32);
    v31 = LODWORD(a14);
    if (a9)
    {
      v31 = *a8;
    }

    *a12 = v31;
    a12[1] = *&a14;
    a12[2] = *&a14;
    if ((a9 & 2) != 0)
    {
      *&a14 = a8[1];
    }

    a12[3] = *&a14;
    if (v28 > v29)
    {
      v32 = (a3 + a2) * 0.5;
      a10[1] = v32;
      a10[2] = v32;
    }

    return 3;
  }
}

uint64_t CA::OGL::fill_corner_rect(uint64_t result, double **a2, double *a3, double *a4, int a5, int a6, int a7, double a8, double a9)
{
  v50 = *MEMORY[0x1E69E9840];
  v11 = (*a2)[2];
  if (v11 >= (*a2)[3])
  {
    v11 = (*a2)[3];
  }

  if (v11 > 0.0)
  {
    v12 = a7;
    v16 = result;
    v17 = a2[1];
    if ((v17[18] & 0x10) != 0)
    {
      v18 = vaddvq_f64(vmulq_f64(*v17, *v17));
      v19 = vaddvq_f64(vmulq_f64(*(v17 + 4), *(v17 + 4)));
      v20 = v17[15];
      if (v20 != 1.0)
      {
        v21 = 1.0 / (v20 * v20);
        v18 = v21 * v18;
        v19 = v21 * v19;
      }

      v22 = v18 != 1.0;
      if (v19 != 1.0)
      {
        v22 = 1;
      }

      v23 = sqrt(v18);
      v24 = sqrt(v19);
      if (v22)
      {
        v19 = v24;
        v18 = v23;
      }
    }

    else
    {
      v18 = v17[16];
      v19 = v18;
    }

    if (v18 * a8 < 1.0 || a7 == 0 || a3 == 0 || v19 * a9 < 1.0)
    {

      return CA::OGL::fill_rect(result, a2, a3);
    }

    else
    {
      v49 = 0uLL;
      if ((*(result + 872) & 2) != 0)
      {
        v28 = 2358;
      }

      else
      {
        v28 = 310;
      }

      if (a5)
      {
        v29 = v28 ^ 0x800;
      }

      else
      {
        v29 = v28;
      }

      v30 = *(result + 16);
      v31 = *(v30 + 16) & 0xFFFFFF00FF00FF00;
      if (*(v30 + 8) == 0x3C003C003C003C00)
      {
        v32 = 1;
      }

      else
      {
        v32 = 3;
      }

      *(v30 + 16) = v32 | v31;
      *(v30 + 20) = HIDWORD(v31);
      v33 = CA::OGL::Context::bind_image(result, 0, a3, v29, 1u, 1, 0, 0, 0.0, &v49, 0);
      if (v33)
      {
        v36 = v33;
        v45 = 0;
        v46 = 0;
        v44[0] = 0;
        v44[1] = 0;
        v37 = *a2;
        v38 = (*a2)[1];
        v48[0] = **a2;
        v48[1] = v48[0] + a8;
        v39 = v37[3];
        v40 = v37[2] + v48[0];
        v48[2] = v40 - a8;
        v48[3] = v40;
        v47[0] = v38;
        v47[1] = v38 + a9;
        v47[2] = v39 + v38 - a9;
        v47[3] = v39 + v38;
        if (a6)
        {
          v42 = 0x20000;
        }

        else
        {
          v42 = 134348800;
        }

        v43 = (v42 & 0xFC3FFFFF | ((v12 & 0xF) << 22)) ^ 0x3C00000;
        CA::OGL::emit_nine_part_rect(v16, a2, v48, v47, &v45, v44, 0, 0, v43);
        result = (*(*v16 + 560))(v16, v36, 0);
        *(v16[2] + 16) = 0;
      }

      else
      {
        return CA::OGL::fill_rect(v16, a2, v34);
      }
    }
  }

  return result;
}

unint64_t CA::OGL::stroke_rect(unint64_t result, const CA::Transform **a2, double *a3, double a4)
{
  v263 = *MEMORY[0x1E69E9840];
  if (a4 <= 0.001)
  {
    return result;
  }

  v4 = a4;
  v6 = result;
  v7 = *a2;
  v9 = *(*a2 + 2);
  v8 = *(*a2 + 3);
  if (v9 >= v8)
  {
    v10 = *(*a2 + 3);
  }

  else
  {
    v10 = *(*a2 + 2);
  }

  if (v10 * 0.5 <= v4)
  {

    return CA::OGL::fill_rect(result, a2, a3);
  }

  else
  {
    if (v10 <= 0.0)
    {
      return result;
    }

    v11 = a2[1];
    if ((*(v11 + 144) & 0x10) != 0 && (v229 = v4, result = CA::Mat4Impl::mat4_is_rectilinear(a2[1], a2), v4 = v229, !result) || a2[3] || a2[4])
    {
      v12 = v7[1];
      v13 = *v7 + v4;
      v238.f64[0] = *v7;
      v238.f64[1] = v13;
      v239 = v9 + v238.f64[0] - v4;
      v240 = v9 + v238.f64[0];
      v234 = v12;
      v235 = v12 + v4;
      v236 = v8 + v12 - v4;
      v237 = v8 + v12;
      if (*(a2 + 5) && ((a2[2] & 9) != 0 || vabdd_f64(v4, trunc(v4)) >= 0.001))
      {

        return CA::OGL::stroke_round_rect(v6, a2, 0xF, 0, 0.0, v4);
      }

      else
      {
        v261 = 0u;
        v262 = 0u;
        v259 = 0u;
        v260 = 0u;
        v257 = 0u;
        v258 = 0u;
        v255 = 0u;
        v256 = 0u;
        v253 = 0u;
        v254 = 0u;
        v251 = 0u;
        v252 = 0u;
        v249 = 0u;
        memset(v250, 0, sizeof(v250));
        if ((*(v6 + 152) & 0xFFFFFFF8) != 0)
        {
          v14 = 0;
          v15 = *(v6 + 136);
          v16 = 1;
          do
          {
            v17 = 0;
            v18 = 0;
            v19 = v16;
            do
            {
              if (v17 == 96 || v17 == 0)
              {
                v21 = v14;
              }

              else
              {
                v21 = v14 ^ 3;
              }

              if (v18 >= 2)
              {
                v22 = v14 ^ 3;
              }

              else
              {
                v22 = v14;
              }

              v23 = *&v238.f64[v21];
              v24 = &v249 + 128 * v14 + v17;
              v25 = *(&v234 + v22);
              *v24 = v23;
              *(v24 + 1) = v25;
              *(v24 + 1) = xmmword_183E20E60;
              ++v18;
              v17 += 32;
            }

            while (v17 != 128);
            v16 = 0;
            v14 = 1;
          }

          while ((v19 & 1) != 0);
          v26 = *(*(v6 + 16) + 8);
          for (i = 32; i != 416; i += 48)
          {
            *(v15 + i) = v26;
          }

          v28 = a2[3];
          if (v28)
          {
            (v28)(a2, &v249, v15, 8, xmmword_183E20E60);
          }

          CA::OGL::transform_vertices(&v249, v15, 8, a2[1]);
          v29 = a2[4];
          if (v29)
          {
            (v29)(a2, v15, 8);
          }

          v30 = CA::OGL::Context::need_transparent_source(v6);
          result = CA::OGL::emit_quad_indices(v6, a2[5], CA::OGL::emit_five_part_rect(CA::OGL::Context &,CA::OGL::RectState const&,double const*,double const*,float const*,float const*,float const*,float const*,unsigned int)::indices, 0x10uLL, 8u);
          if (v30)
          {
            v31 = vcvtq_f64_f32(*(v15 + 8));
            v241 = vcvtq_f64_f32(*v15);
            v242 = v31;
            v32 = vcvtq_f64_f32(*(v15 + 56));
            v243 = vcvtq_f64_f32(*(v15 + 48));
            v244 = v32;
            v33 = vcvtq_f64_f32(*(v15 + 104));
            v245 = vcvtq_f64_f32(*(v15 + 96));
            v246 = v33;
            v34 = vcvtq_f64_f32(*(v15 + 152));
            v247 = vcvtq_f64_f32(*(v15 + 144));
            v248 = v34;
            v233 = 0;
            return CA::OGL::emit_quad_surround(v6, v241.f64, &v233);
          }
        }
      }

      return result;
    }

    v35 = *(v7 + 1);
    v241.f64[0] = *v7;
    *&v241.f64[1] = v35;
    v242.f64[0] = v9;
    v242.f64[1] = v8;
    v238.f64[0] = v241.f64[0];
    *&v238.f64[1] = v35;
    v239 = v9;
    v240 = v8;
    if (v9 <= v8)
    {
      v36 = v8;
    }

    else
    {
      v36 = v9;
    }

    if (v36 < 1.79769313e308)
    {
      v238 = vaddq_f64(v238, vdupq_lane_s64(*&v4, 0));
      v239 = v4 * -2.0 + v9;
      v240 = v4 * -2.0 + v8;
      if (v239 <= 0.0 || v4 * -2.0 + v8 <= 0.0)
      {
        v239 = 0.0;
        v240 = 0.0;
      }
    }

    CA::Rect::apply_transform(&v241, v11, a3);
    CA::Rect::apply_transform(&v238, v11, v37);
    v38 = v238.f64[1];
    v39 = v239 + v238.f64[0];
    v41 = v241.f64[1];
    v40 = v241.f64[0];
    v42 = v242.f64[0] + v241.f64[0];
    v43 = v240 + v238.f64[1];
    v44 = v242.f64[1] + v241.f64[1];
    v45 = *(*(v6 + 16) + 8);
    v46 = *(a2 + 5);
    if (v46)
    {
      v230 = v238.f64[0];
      if (v241.f64[0] != trunc(v241.f64[0]) || v241.f64[1] != trunc(v241.f64[1]) || v242.f64[0] != trunc(v242.f64[0]) || v242.f64[1] != trunc(v242.f64[1]) || v238.f64[0] != trunc(v238.f64[0]) || v238.f64[1] != trunc(v238.f64[1]) || v239 != trunc(v239) || v240 != trunc(v240))
      {
        v47 = floor(v241.f64[0]);
        v48 = ceil(v241.f64[0]);
        v49 = round(v241.f64[0]);
        if ((v46 & 1) == 0)
        {
          v47 = v49;
        }

        v227 = v47;
        if (v46)
        {
          v50 = v48;
        }

        else
        {
          v50 = v49;
        }

        v209 = v50;
        v51 = floor(v238.f64[0]);
        v52 = ceil(v238.f64[0]);
        v53 = round(v238.f64[0]);
        if ((v46 & 0x20) == 0)
        {
          v51 = v53;
        }

        v190 = v51;
        if ((v46 & 0x20) != 0)
        {
          v54 = v52;
        }

        else
        {
          v54 = v53;
        }

        v223 = v54;
        v225 = v239 + v238.f64[0];
        v55 = floor(v39);
        v56 = ceil(v39);
        v57 = round(v39);
        if ((v46 & 0x20) == 0)
        {
          v55 = v57;
        }

        v217 = v242.f64[0] + v241.f64[0];
        v219 = v55;
        if ((v46 & 0x20) != 0)
        {
          v58 = v56;
        }

        else
        {
          v58 = v57;
        }

        v214 = v58;
        v59 = floor(v42);
        v60 = ceil(v42);
        v61 = round(v42);
        if ((v46 & 2) != 0)
        {
          v62 = v59;
        }

        else
        {
          v62 = v61;
        }

        if ((v46 & 2) != 0)
        {
          v63 = v60;
        }

        else
        {
          v63 = v61;
        }

        v198 = v63;
        v64 = floor(v241.f64[1]);
        v65 = ceil(v241.f64[1]);
        v66 = round(v241.f64[1]);
        if ((v46 & 4) != 0)
        {
          v67 = v64;
        }

        else
        {
          v67 = v66;
        }

        if ((v46 & 4) != 0)
        {
          v68 = v65;
        }

        else
        {
          v68 = v66;
        }

        v194 = v68;
        v69 = floor(v238.f64[1]);
        v70 = ceil(v238.f64[1]);
        v71 = round(v238.f64[1]);
        if ((v46 & 0x40) == 0)
        {
          v69 = v71;
        }

        v184 = v69;
        if ((v46 & 0x40) != 0)
        {
          v72 = v70;
        }

        else
        {
          v72 = v71;
        }

        v221 = v72;
        v73 = floor(v43);
        v74 = ceil(v43);
        v75 = round(v43);
        if ((v46 & 0x80) == 0)
        {
          v73 = v75;
        }

        v215 = v73;
        if ((v46 & 0x80) != 0)
        {
          v76 = v74;
        }

        else
        {
          v76 = v75;
        }

        v188 = v76;
        v77 = (*(a2 + 5) & 8) == 0;
        v78 = *(*(v6 + 656) + 8);
        *&v249.f64[0] = v6;
        v249.f64[1] = v78;
        v79 = floor(v44);
        v80 = ceil(v44);
        v81 = round(v44);
        memset(v250, 0, 40);
        v211 = v240 + v238.f64[1];
        if (v77)
        {
          v82 = v81;
        }

        else
        {
          v82 = v79;
        }

        LOWORD(v250[2]) = 256;
        if (v77)
        {
          v83 = v81;
        }

        else
        {
          v83 = v80;
        }

        CA::OGL::Context::ClippedArray::start(&v249);
        v234 = 0.0;
        v235 = 0.0;
        v84 = v209 > v227;
        if (v198 > v62)
        {
          v84 = 1;
        }

        v85 = v194;
        if (v194 > v67)
        {
          v84 = 1;
        }

        v86 = v83;
        v87 = v83 > v82 || v84;
        v88 = v6 + 1386;
        v89 = v227;
        v228 = v89;
        v90 = v67;
        v213 = v90;
        v91 = v209;
        v92 = v194;
        v93 = v209;
        v94 = v209 - v40;
        v95 = v194 - v41;
        v96 = v230 - v190;
        v97 = v38 - v184;
        v207 = v97;
        v208 = v96;
        v98 = 1.0 - v96;
        v99 = v97 - 1.0;
        v206 = (v99 * v98) + 1.0;
        v100 = v214 - v225;
        v205 = v100;
        v101 = 1.0 - v100;
        v204 = (v99 * v101) + 1.0;
        v102 = v188 - v211;
        v203 = v102;
        v103 = v102 - 1.0;
        v201 = (v103 * v101) + 1.0;
        v202 = (v103 * v98) + 1.0;
        v200 = v95 * v94;
        v104 = v62;
        v105 = v198;
        v226 = v105;
        v106 = v217 - v62;
        v210 = v95;
        v212 = v94;
        v197 = v95 * v106;
        v199 = v106;
        v107 = v190 > v93;
        v108 = v62 <= v214;
        v109 = v82;
        v110 = v86;
        v196 = v110;
        v111 = v44 - v82;
        if (!v108)
        {
          v107 = 1;
        }

        v193 = v111 * v94;
        v195 = v44 - v82;
        if (v184 > v85)
        {
          v107 = 1;
        }

        v192 = v111 * v106;
        v112 = v82 > v188 || v107;
        v113 = v223 > v190;
        if (v214 > v219)
        {
          v113 = 1;
        }

        v114 = v184;
        v218 = v114;
        v115 = v190;
        if (v221 > v184)
        {
          v113 = 1;
        }

        v116 = v188;
        v117 = v214;
        v118 = v188 > v215 || v113;
        v119 = v223;
        v224 = v119;
        v120 = v221;
        v222 = v120;
        v121 = v219;
        v220 = v121;
        v122 = v215;
        v216 = v122;
        v191 = v190;
        v187 = v109;
        v186 = v85;
        v185 = v188;
        while (1)
        {
          while (1)
          {
            result = CA::OGL::Context::ClippedArray::next_rect(&v249, &v234);
            if (!result)
            {
              return result;
            }

            if (!v87)
            {
              break;
            }

            if (*(v6 + 108))
            {
              v123 = 24;
            }

            else
            {
              v123 = 16;
            }

            if ((*(v6 + 144) + 16) > *(v6 + 152) || (v124 = *(v6 + 128)) != 0 && *(v6 + 120) + v123 > v124)
            {
              *(v6 + 1384) |= 0x20u;
              CA::OGL::Context::array_flush(v6);
              *(v6 + 144) = 0;
              *(v6 + 112) = v88;
              *(v6 + 120) = xmmword_183E20E50;
            }

            CA::OGL::Context::array_rect(v6, v228, v213, v91, v92);
            v231 = vcvtq_f32_f16(v45);
            v125 = vcvt_f16_f32(vmulq_n_f32(v231, v200));
            v126 = *(v6 + 136) + 48 * *(v6 + 144);
            *(v126 - 160) = v125;
            *(v126 - 112) = v125;
            *(v126 - 64) = v125;
            *(v126 - 16) = v125;
            CA::OGL::Context::array_rect(v6, v91, v213, v104, v92);
            v127 = vcvt_f16_f32(vmulq_n_f32(v231, v210));
            v128 = *(v6 + 136) + 48 * *(v6 + 144);
            *(v128 - 160) = v127;
            *(v128 - 112) = v127;
            *(v128 - 64) = v127;
            *(v128 - 16) = v127;
            CA::OGL::Context::array_rect(v6, v104, v213, v226, v92);
            v129 = vcvt_f16_f32(vmulq_n_f32(v231, v197));
            v130 = *(v6 + 136) + 48 * *(v6 + 144);
            *(v130 - 160) = v129;
            *(v130 - 112) = v129;
            *(v130 - 64) = v129;
            *(v130 - 16) = v129;
            CA::OGL::Context::array_rect(v6, v228, v92, v91, v109);
            v131 = vcvt_f16_f32(vmulq_n_f32(v231, v212));
            v132 = *(v6 + 136) + 48 * *(v6 + 144);
            *(v132 - 160) = v131;
            *(v132 - 112) = v131;
            *(v132 - 64) = v131;
            *(v132 - 16) = v131;
            if (*(v6 + 108))
            {
              v133 = 24;
            }

            else
            {
              v133 = 16;
            }

            if ((*(v6 + 144) + 16) > *(v6 + 152) || (v134 = *(v6 + 128)) != 0 && *(v6 + 120) + v133 > v134)
            {
              *(v6 + 1384) |= 0x20u;
              CA::OGL::Context::array_flush(v6);
              *(v6 + 144) = 0;
              *(v6 + 112) = v88;
              *(v6 + 120) = xmmword_183E20E50;
            }

            CA::OGL::Context::array_rect(v6, v104, v92, v226, v109);
            v135 = vcvt_f16_f32(vmulq_n_f32(v231, v199));
            v136 = *(v6 + 136) + 48 * *(v6 + 144);
            *(v136 - 160) = v135;
            *(v136 - 112) = v135;
            *(v136 - 64) = v135;
            *(v136 - 16) = v135;
            CA::OGL::Context::array_rect(v6, v228, v109, v91, v196);
            v137 = vcvt_f16_f32(vmulq_n_f32(v231, v193));
            v138 = *(v6 + 136) + 48 * *(v6 + 144);
            *(v138 - 160) = v137;
            *(v138 - 112) = v137;
            *(v138 - 64) = v137;
            *(v138 - 16) = v137;
            CA::OGL::Context::array_rect(v6, v91, v109, v104, v196);
            v139 = vcvt_f16_f32(vmulq_n_f32(v231, v195));
            v140 = *(v6 + 136) + 48 * *(v6 + 144);
            *(v140 - 160) = v139;
            *(v140 - 112) = v139;
            *(v140 - 64) = v139;
            *(v140 - 16) = v139;
            CA::OGL::Context::array_rect(v6, v104, v109, v226, v196);
            v141 = vcvt_f16_f32(vmulq_n_f32(v231, v192));
            v142 = *(v6 + 136) + 48 * *(v6 + 144);
            *(v142 - 160) = v141;
            *(v142 - 112) = v141;
            *(v142 - 64) = v141;
            *(v142 - 16) = v141;
            v115 = v191;
            v189 = v214;
            v117 = v189;
            if (!v112)
            {
              goto LABEL_127;
            }

LABEL_144:
            if (*(v6 + 108))
            {
              v143 = 24;
            }

            else
            {
              v143 = 16;
            }

            if ((*(v6 + 144) + 16) > *(v6 + 152) || (v144 = *(v6 + 128)) != 0 && *(v6 + 120) + v143 > v144)
            {
              *(v6 + 1384) |= 0x20u;
              CA::OGL::Context::array_flush(v6);
              *(v6 + 144) = 0;
              *(v6 + 112) = v88;
              *(v6 + 120) = xmmword_183E20E50;
            }

            CA::OGL::Context::array_rect(v6, v91, v92, v104, v218);
            v145 = *(v6 + 136) + 48 * *(v6 + 144);
            *(v145 - 160) = v45;
            *(v145 - 112) = v45;
            *(v145 - 64) = v45;
            *(v145 - 16) = v45;
            CA::OGL::Context::array_rect(v6, v91, v218, v115, v116);
            v146 = *(v6 + 136) + 48 * *(v6 + 144);
            *(v146 - 160) = v45;
            *(v146 - 112) = v45;
            *(v146 - 64) = v45;
            *(v146 - 16) = v45;
            CA::OGL::Context::array_rect(v6, v117, v218, v104, v116);
            v147 = *(v6 + 136) + 48 * *(v6 + 144);
            *(v147 - 160) = v45;
            *(v147 - 112) = v45;
            *(v147 - 64) = v45;
            *(v147 - 16) = v45;
            CA::OGL::Context::array_rect(v6, v91, v116, v104, v109);
            v148 = *(v6 + 136) + 48 * *(v6 + 144);
            *(v148 - 160) = v45;
            *(v148 - 112) = v45;
            *(v148 - 64) = v45;
            *(v148 - 16) = v45;
            if (v118)
            {
LABEL_152:
              if (*(v6 + 108))
              {
                v149 = 24;
              }

              else
              {
                v149 = 16;
              }

              if ((*(v6 + 144) + 16) > *(v6 + 152) || (v150 = *(v6 + 128)) != 0 && *(v6 + 120) + v149 > v150)
              {
                *(v6 + 1384) |= 0x20u;
                CA::OGL::Context::array_flush(v6);
                *(v6 + 144) = 0;
                *(v6 + 112) = v88;
                *(v6 + 120) = xmmword_183E20E50;
              }

              CA::OGL::Context::array_rect(v6, v115, v218, v224, v222);
              v232 = vcvtq_f32_f16(v45);
              v151 = vcvt_f16_f32(vmulq_n_f32(v232, v206));
              v152 = *(v6 + 136) + 48 * *(v6 + 144);
              *(v152 - 160) = v151;
              *(v152 - 112) = v151;
              *(v152 - 64) = v151;
              *(v152 - 16) = v151;
              CA::OGL::Context::array_rect(v6, v224, v218, v220, v222);
              v153 = vcvt_f16_f32(vmulq_n_f32(v232, v207));
              v154 = *(v6 + 136) + 48 * *(v6 + 144);
              *(v154 - 160) = v153;
              *(v154 - 112) = v153;
              *(v154 - 64) = v153;
              *(v154 - 16) = v153;
              CA::OGL::Context::array_rect(v6, v220, v218, v117, v222);
              v155 = vcvt_f16_f32(vmulq_n_f32(v232, v204));
              v156 = *(v6 + 136) + 48 * *(v6 + 144);
              *(v156 - 160) = v155;
              *(v156 - 112) = v155;
              *(v156 - 64) = v155;
              *(v156 - 16) = v155;
              CA::OGL::Context::array_rect(v6, v115, v222, v224, v216);
              v157 = vcvt_f16_f32(vmulq_n_f32(v232, v208));
              v158 = *(v6 + 136) + 48 * *(v6 + 144);
              *(v158 - 160) = v157;
              *(v158 - 112) = v157;
              *(v158 - 64) = v157;
              *(v158 - 16) = v157;
              if (*(v6 + 108))
              {
                v159 = 24;
              }

              else
              {
                v159 = 16;
              }

              if ((*(v6 + 144) + 16) > *(v6 + 152) || (v160 = *(v6 + 128)) != 0 && *(v6 + 120) + v159 > v160)
              {
                *(v6 + 1384) |= 0x20u;
                CA::OGL::Context::array_flush(v6);
                *(v6 + 144) = 0;
                *(v6 + 112) = v88;
                *(v6 + 120) = xmmword_183E20E50;
              }

              CA::OGL::Context::array_rect(v6, v220, v222, v117, v216);
              v161 = vcvt_f16_f32(vmulq_n_f32(v232, v205));
              v162 = *(v6 + 136) + 48 * *(v6 + 144);
              *(v162 - 160) = v161;
              *(v162 - 112) = v161;
              *(v162 - 64) = v161;
              *(v162 - 16) = v161;
              v116 = v185;
              CA::OGL::Context::array_rect(v6, v115, v216, v224, v185);
              v163 = vcvt_f16_f32(vmulq_n_f32(v232, v202));
              v164 = *(v6 + 136) + 48 * *(v6 + 144);
              *(v164 - 160) = v163;
              *(v164 - 112) = v163;
              *(v164 - 64) = v163;
              *(v164 - 16) = v163;
              CA::OGL::Context::array_rect(v6, v224, v216, v220, v185);
              v165 = vcvt_f16_f32(vmulq_n_f32(v232, v203));
              v166 = *(v6 + 136) + 48 * *(v6 + 144);
              *(v166 - 160) = v165;
              *(v166 - 112) = v165;
              *(v166 - 64) = v165;
              *(v166 - 16) = v165;
              CA::OGL::Context::array_rect(v6, v220, v216, v117, v185);
              v167 = vcvt_f16_f32(vmulq_n_f32(v232, v201));
              v168 = *(v6 + 136) + 48 * *(v6 + 144);
              *(v168 - 160) = v167;
              *(v168 - 112) = v167;
              *(v168 - 64) = v167;
              *(v168 - 16) = v167;
              v92 = v186;
              v109 = v187;
            }
          }

          if (v112)
          {
            goto LABEL_144;
          }

LABEL_127:
          if (v118)
          {
            goto LABEL_152;
          }
        }
      }
    }

    else if ((*(a2 + 18) & 0x10) != 0)
    {
      v40 = floor(v241.f64[0] + 0.001);
      v230 = ceil(v238.f64[0] + -0.001);
      v39 = floor(v39 + 0.001);
      v42 = ceil(v42 + -0.001);
      v41 = floor(v241.f64[1] + 0.001);
      v38 = ceil(v238.f64[1] + -0.001);
      v43 = floor(v43 + 0.001);
      v44 = ceil(v44 + -0.001);
    }

    else
    {
      v40 = round(v241.f64[0]);
      v230 = round(v238.f64[0]);
      v39 = round(v39);
      v42 = round(v42);
      v41 = round(v241.f64[1]);
      v38 = round(v238.f64[1]);
      v43 = round(v43);
      v44 = round(v44);
    }

    v169 = *(*(v6 + 656) + 8);
    *&v249.f64[0] = v6;
    v249.f64[1] = v169;
    memset(v250, 0, 40);
    LOWORD(v250[2]) = 256;
    CA::OGL::Context::ClippedArray::start(&v249);
    v234 = 0.0;
    v235 = 0.0;
    v170 = v40;
    v171 = v41;
    v172 = v42;
    v173 = v38;
    v175 = v43;
    v176 = v39;
    v177 = v44;
    while (1)
    {
      result = CA::OGL::Context::ClippedArray::next_rect(&v249, &v234);
      if (!result)
      {
        break;
      }

      if (*(v6 + 108))
      {
        v178 = 24;
      }

      else
      {
        v178 = 16;
      }

      if ((*(v6 + 144) + 16) > *(v6 + 152) || (v179 = *(v6 + 128)) != 0 && *(v6 + 120) + v178 > v179)
      {
        *(v6 + 1384) |= 0x20u;
        CA::OGL::Context::array_flush(v6);
        *(v6 + 144) = 0;
        *(v6 + 112) = v6 + 1386;
        *(v6 + 120) = xmmword_183E20E50;
      }

      CA::OGL::Context::array_rect(v6, v170, v171, v172, v173);
      v180 = *(v6 + 136) + 48 * *(v6 + 144);
      *(v180 - 160) = v45;
      *(v180 - 112) = v45;
      *(v180 - 64) = v45;
      *(v180 - 16) = v45;
      v174 = v230;
      CA::OGL::Context::array_rect(v6, v170, v173, v174, v175);
      v181 = *(v6 + 136) + 48 * *(v6 + 144);
      *(v181 - 160) = v45;
      *(v181 - 112) = v45;
      *(v181 - 64) = v45;
      *(v181 - 16) = v45;
      CA::OGL::Context::array_rect(v6, v176, v173, v172, v175);
      v182 = *(v6 + 136) + 48 * *(v6 + 144);
      *(v182 - 160) = v45;
      *(v182 - 112) = v45;
      *(v182 - 64) = v45;
      *(v182 - 16) = v45;
      CA::OGL::Context::array_rect(v6, v170, v175, v172, v177);
      v183 = *(v6 + 136) + 48 * *(v6 + 144);
      *(v183 - 160) = v45;
      *(v183 - 112) = v45;
      *(v183 - 64) = v45;
      *(v183 - 16) = v45;
    }
  }

  return result;
}

uint64_t CA::OGL::fill_pattern_rect(int32x2_t *a1, uint64_t a2, uint64_t a3, float64x2_t *a4, uint64_t a5, float64x2_t *a6, unsigned int a7, int a8, float a9, char a10, char a11)
{
  v185 = *MEMORY[0x1E69E9840];
  v184 = 0uLL;
  v182 = 0;
  v183 = 0;
  v180 = 0u;
  v181 = 0u;
  if (!*(a2 + 128))
  {
    *(*&a1[2] + 16) = 0;
    *&v154.f64[0] = a3;
    *&v154.f64[1] = a5;
    v155 = 0uLL;
    v156 = 0uLL;
    result = CA::OGL::emit_one_part_rect(a1, &v154, 0, 0, 0);
    goto LABEL_15;
  }

  v139 = 0uLL;
  result = CA::Shape::get_bounds(*(*&a1[82] + 8), &v139);
  v21 = a1[84];
  if (v21)
  {
    v22 = v21 + 6;
  }

  else
  {
    v22 = a1 + 76;
  }

  v23 = vclez_s32(*(&v139 + 8));
  if ((vpmax_u32(v23, v23).u32[0] & 0x80000000) != 0)
  {
    return result;
  }

  v24 = v22[1];
  v25 = vclez_s32(v24);
  if ((vpmax_u32(v25, v25).u32[0] & 0x80000000) != 0)
  {
    return result;
  }

  *&v26 = vmax_s32(*&v139, *v22);
  v27 = vsub_s32(vmin_s32(vadd_s32(*&v139, *(&v139 + 8)), vadd_s32(*v22, v24)), *&v26);
  v28 = vclez_s32(v27);
  if ((vpmax_u32(v28, v28).u32[0] & 0x80000000) != 0)
  {
    return result;
  }

  *(&v26 + 1) = v27;
  v139 = v26;
  v29 = *a6;
  v30 = a6[1];
  v142 = *a6;
  v143 = v30;
  v31 = v27.i32[1];
  if (v27.i32[0] > v27.i32[1])
  {
    v31 = v27.i32[0];
  }

  v32 = vclezq_f64(v30);
  if ((vorrq_s8(vdupq_laneq_s64(v32, 1), v32).u64[0] & 0x8000000000000000) == 0)
  {
    v33.i64[0] = v27.i32[0];
    v33.i64[1] = v27.i32[1];
    v34 = vcvtq_f64_s64(v33);
    v35 = vdup_n_s32(v31 > 1073741822);
    v33.i64[0] = v35.u32[0];
    v33.i64[1] = v35.u32[1];
    v36 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v33, 0x3FuLL)), vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL), v34);
    v37 = vclezq_f64(v36);
    v38 = vdupq_laneq_s64(v37, 1);
    v39 = vorrq_s8(v38, v37);
    if (v39.i64[0] < 0 || (v39.i32[0] = v31, v38.i32[0] = 1073741822, v40.i64[0] = v26, v40.i64[1] = SDWORD1(v26), v41 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v39, v38), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v40)), v42 = vaddq_f64(v41, v36), v43 = vmaxnmq_f64(v29, v41), v44 = vsubq_f64(vminnmq_f64(vaddq_f64(v29, v30), v42), v43), v45 = vclezq_f64(v44), (vorrq_s8(vdupq_laneq_s64(v45, 1), v45).u64[0] & 0x8000000000000000) != 0))
    {
      v143 = 0uLL;
    }

    else
    {
      v142 = v43;
      v143 = v44;
    }
  }

  v163 = 0;
  v153 = 0;
  v151 = 0u;
  v152 = 0u;
  v149 = 0u;
  v150 = 0u;
  v147 = 0u;
  v148 = 0u;
  v145 = 0u;
  v146 = 0u;
  v144 = 0u;
  CA::Transform::set_affine(&v144, *(a2 + 16), *(a2 + 24), *(a2 + 32), *(a2 + 40), *(a2 + 48), *(a2 + 56));
  v46.f64[0] = *(a2 + 64);
  CA::Transform::translate(&v144, v46, *(a2 + 72), 0.0);
  v47 = *(a5 + 16);
  v48 = *(a5 + 32);
  v49 = *(a5 + 48);
  v154 = *a5;
  v155 = v47;
  v156 = v48;
  v157 = v49;
  v50 = *(a5 + 80);
  v51 = *(a5 + 96);
  v52 = *(a5 + 112);
  v158 = *(a5 + 64);
  v159 = v50;
  v160 = v51;
  v161 = v52;
  v162 = *(a5 + 128);
  v53.f64[1] = *(&v162 + 1);
  LOBYTE(v163) = *(a5 + 144) & 0x1F;
  v53.f64[0] = a4->f64[0];
  CA::Transform::translate(&v154, v53, a4->f64[1], 0.0);
  CA::Transform::concat_left(&v154, &v144, v54, v55);
  CA::Rect::unapply_transform(&v142, &v154, v56);
  v57 = *(a3 + 16);
  v140 = vsubq_f64(*a3, *a4);
  v141 = v57;
  CA::Rect::unapply_transform(&v140, &v144, v58);
  v59.i64[0] = 1.0;
  v60.i64[0] = 1.0;
  result = CA::OGL::transform_filter_bits(&v154, v61, v59, v60, v62);
  v63 = v143;
  v64 = v143.f64[0] <= v143.f64[1] ? v143.f64[1] : v143.f64[0];
  if (v64 >= 2147483650.0)
  {
    return result;
  }

  v65 = a1[2];
  if (*(*&v65 + 497))
  {
    v66 = result | 0x100;
  }

  else
  {
    v66 = result;
  }

  v67 = (a1[109].i32[0] << 10) & 0x800 ^ v66;
  if (a10)
  {
    v68 = v67 ^ 0x800;
  }

  else
  {
    v68 = v67;
  }

  if ((*(a2 + 13) & 2) != 0)
  {
    v69 = 11;
  }

  else if (*(*&v65 + 8) == 0x3C003C003C003C00)
  {
    v69 = 1;
  }

  else
  {
    v69 = 3;
  }

  *(*&v65 + 16) = v69;
  result = CA::OGL::Context::bind_image(a1, 0, *(a2 + 128), v68, a7, a8, 0, 0, a9, &v184, 0);
  if (!result)
  {
LABEL_15:
    *(*&a1[2] + 16) = 0;
    return result;
  }

  v72 = fabs(*(a2 + 96));
  v73 = fabs(*(a2 + 104));
  if (v72 >= v73)
  {
    v74 = v73;
  }

  else
  {
    v74 = v72;
  }

  if (v74 > 0.0)
  {
    v75 = result;
    v76 = v140;
    v134 = *(&v141 + 1);
    v77 = *&v141;
    v78 = *&v141 + v140.f64[0];
    v136 = v140.f64[0];
    v138 = *&v141 + v140.f64[0];
    v79 = *&v141;
    if (v72 != 1.0)
    {
      v79 = *(a2 + 80);
      v136 = floor(v142.f64[0] / v72) * v72;
      v138 = ceil((v63.f64[0] + v142.f64[0]) / v72) * v72;
      v77 = v72;
    }

    v80 = *(&v141 + 1) + v140.f64[1];
    v133 = v140.f64[1];
    v135 = *(&v141 + 1) + v140.f64[1];
    v137 = *(&v141 + 1);
    if (v73 != 1.0)
    {
      v137 = *(a2 + 88);
      v133 = floor(v142.f64[1] / v73) * v73;
      v134 = v73;
      v135 = ceil((v63.f64[1] + v142.f64[1]) / v73) * v73;
    }

    if ((a11 & 1) == 0)
    {
      v82 = 0;
      v153 = 0;
      v151 = 0u;
      v152 = 0u;
      v149 = 0u;
      v150 = 0u;
      v147 = 0u;
      v148 = 0u;
      v145 = 0u;
      v146 = 0u;
      v144 = 0u;
      v81 = v163;
      goto LABEL_49;
    }

    v81 = v163;
    if ((v163 & 0x10) != 0)
    {
      is_rectilinear = CA::Mat4Impl::mat4_is_rectilinear(&v154, v70);
      v153 = 0;
      v151 = 0u;
      v152 = 0u;
      v149 = 0u;
      v150 = 0u;
      v147 = 0u;
      v148 = 0u;
      v145 = 0u;
      v146 = 0u;
      v144 = 0u;
      if (!is_rectilinear)
      {
        v82 = 0;
LABEL_49:
        v84 = *(*&a1[82] + 8);
        v85 = ((v81 >> 4) & 1) == 0;
        v177[0] = a1;
        v177[1] = v84;
        v178 = 0u;
        v179 = 0u;
        v177[2] = 0;
        BYTE8(v178) = v85;
        BYTE9(v178) = 1;
        CA::OGL::Context::ClippedArray::start(v177);
        while (CA::OGL::Context::ClippedArray::next_rect(v177, &v139))
        {
          if (v133 < v135)
          {
            v88 = v133;
            do
            {
              if (v136 < v138)
              {
                v89 = v136;
                do
                {
                  if (v82)
                  {
                    v164.f64[0] = v89;
                    v164.f64[1] = v88;
                    v165.f64[0] = v79;
                    v165.f64[1] = v137;
                    CA::Rect::apply_transform(&v164, &v154, v86);
                    v91 = v165.f64[1];
                    if (v165.f64[0] <= v165.f64[1])
                    {
                      v92 = v165.f64[1];
                    }

                    else
                    {
                      v92 = v165.f64[0];
                    }

                    if (v92 < 1.79769313e308)
                    {
                      if (v165.f64[0] < v165.f64[1])
                      {
                        v91 = v165.f64[0];
                      }

                      if (v91 > 0.0)
                      {
                        v93 = vrndaq_f64(v164);
                        v94 = vsubq_f64(vrndaq_f64(vaddq_f64(v164, v165)), v93);
                        v164 = v93;
                        v165 = v94;
                      }
                    }

                    CA::Rect::unapply_inverse_transform(&v164, &v144, v90);
                    v95 = v164.f64[1];
                    v96 = v164.f64[0];
                    v97 = v165.f64[0] + v164.f64[0];
                    v98 = v165.f64[1] + v164.f64[1];
                  }

                  else
                  {
                    v97 = v89 + v79;
                    v98 = v88 + v137;
                    v95 = v88;
                    v96 = v89;
                  }

                  if (v97 > v76.f64[0] && v96 < v78 && v98 > v76.f64[1] && v95 < v80)
                  {
                    v102 = v184.f32[2];
                    v103 = v184.f32[0];
                    v104 = v184.f32[2];
                    if (v96 < v76.f64[0])
                    {
                      v105 = (v76.f64[0] - v96) / (v97 - v96);
                      v103 = v103 + (v104 - v103) * v105;
                      v96 = v76.f64[0];
                    }

                    if (v97 > v78)
                    {
                      v106 = (v97 - v78) / (v97 - v96);
                      v102 = v104 + (v103 - v104) * v106;
                      v97 = v78;
                    }

                    v107 = v184.f32[3];
                    v108 = v184.f32[1];
                    v109 = v184.f32[3];
                    if (v95 < v76.f64[1])
                    {
                      v110 = (v76.f64[1] - v95) / (v98 - v95);
                      v108 = v108 + (v109 - v108) * v110;
                      v95 = v76.f64[1];
                    }

                    if (v98 > v80)
                    {
                      v111 = (v98 - v80) / (v98 - v95);
                      v107 = v109 + (v108 - v109) * v111;
                      v98 = v80;
                    }

                    *&v112 = v103;
                    *&v113 = v108;
                    v180.f64[0] = v96;
                    v180.f64[1] = v95;
                    v181.f64[0] = v97;
                    v181.f64[1] = v98;
                    v182 = __PAIR64__(v113, v112);
                    v183 = __PAIR64__(LODWORD(v107), LODWORD(v102));
                    CA::OGL::emit_quad(a1, &v180, &v139, &v154, &v182, 0, v87);
                  }

                  if (v77 <= 0.0)
                  {
                    break;
                  }

                  v89 = v89 + v77;
                }

                while (v89 < v138);
              }

              v88 = v88 + v134;
            }

            while (v134 > 0.0 && v88 < v135);
          }
        }

        if (v77 - v79 > 0.0 || v134 - v137 > 0.0)
        {
          v115 = *(*&a1[2] + 496);
          if (v115 <= 0xF && ((0x3ACCu >> v115) & 1) == 0)
          {
            v176 = 0u;
            v116 = *(*&a1[82] + 8);
            v174[0] = a1;
            v174[1] = v116;
            v175 = 0u;
            v174[2] = 0;
            BYTE8(v175) = v85;
            BYTE9(v175) = 1;
            CA::OGL::Context::ClippedArray::start(v174);
            *(*&a1[2] + 16) = 0;
            v117 = a1[2];
            v118 = *(*&v117 + 8);
            *(*&v117 + 8) = 0;
            while (CA::OGL::Context::ClippedArray::next_rect(v174, &v139))
            {
              if (v133 < v135)
              {
                v121 = v133;
                do
                {
                  if (v136 < v138)
                  {
                    v122 = v136;
                    do
                    {
                      v123 = 0;
                      v164.f64[0] = v122 + v79;
                      v164.f64[1] = v121;
                      v165.f64[0] = v77 - v79;
                      v165.f64[1] = v137;
                      v166 = v122;
                      v167 = v121 + v137;
                      v168 = v79;
                      v169 = v134 - v137;
                      v170 = v122 + v79;
                      v171 = v121 + v137;
                      v172 = v77 - v79;
                      v173 = v134 - v137;
                      do
                      {
                        v124 = (&v164 + v123);
                        if (v82)
                        {
                          CA::Rect::apply_transform((&v164 + v123), &v154, v119);
                          v126 = v124[1];
                          v127 = v124[1].f64[1];
                          if (v126.f64[0] <= v127)
                          {
                            v128 = v124[1].f64[1];
                          }

                          else
                          {
                            v128 = v124[1].f64[0];
                          }

                          if (v128 < 1.79769313e308)
                          {
                            if (v126.f64[0] < v127)
                            {
                              v127 = v124[1].f64[0];
                            }

                            if (v127 > 0.0)
                            {
                              v129 = vrndaq_f64(*v124);
                              v130 = vsubq_f64(vrndaq_f64(vaddq_f64(*v124, v126)), v129);
                              *v124 = v129;
                              v124[1] = v130;
                            }
                          }

                          CA::Rect::unapply_inverse_transform((&v164 + v123), &v144, v125);
                        }

                        v131 = vaddq_f64(v124[1], *v124);
                        v180 = *v124;
                        v181 = v131;
                        CA::OGL::emit_quad(a1, &v180, &v139, &v154, 0, 0, v120);
                        v123 += 32;
                      }

                      while (v123 != 96);
                      if (v77 <= 0.0)
                      {
                        break;
                      }

                      v122 = v122 + v77;
                    }

                    while (v122 < v138);
                  }

                  v121 = v121 + v134;
                }

                while (v134 > 0.0 && v121 < v135);
              }
            }

            *(*&a1[2] + 8) = v118;
          }
        }

        result = (*(*a1 + 560))(a1, v75, 0);
        goto LABEL_15;
      }
    }

    else
    {
      v153 = 0;
    }

    v144 = v154;
    v145 = v155;
    v146 = v156;
    v147 = v157;
    v148 = v158;
    v149 = v159;
    v150 = v160;
    v151 = v161;
    v152 = v162;
    LOBYTE(v153) = v81 & 0x1F;
    CA::Transform::invert(&v144, v70, v71);
    v82 = 1;
    goto LABEL_49;
  }

  return result;
}

void CA::OGL::fill_surface_rect(CA::OGL::Context *a1, uint64_t a2, float64x2_t *a3, uint64_t a4, float64x2_t a5, float64x2_t a6)
{
  v48[2] = *MEMORY[0x1E69E9840];
  v10 = *(a2 + 56);
  v11 = *(a2 + 60);
  if (v10 <= v11)
  {
    v12 = *(a2 + 60);
  }

  else
  {
    v12 = *(a2 + 56);
  }

  v13 = v10;
  v14 = *(a2 + 48);
  v15 = v11;
  if (v12 > 1073741822)
  {
    v13 = 1.79769313e308;
    v15 = 1.79769313e308;
  }

  v45.f64[0] = v13;
  v45.f64[1] = v15;
  v42 = a5;
  v43 = a6;
  CA::Rect::unapply_transform(&v42, a3, a3->f64);
  v18 = vclezq_f64(v45);
  if ((vorrq_s8(vdupq_laneq_s64(v18, 1), v18).u64[0] & 0x8000000000000000) == 0)
  {
    v19 = vclezq_f64(v43);
    v20 = vdupq_laneq_s64(v19, 1);
    v21 = vorrq_s8(v20, v19);
    if ((v21.i64[0] & 0x8000000000000000) == 0)
    {
      v21.i32[0] = 1073741822;
      v20.i32[0] = v12;
      v22 = vdupq_lane_s32(*&vcgtq_s32(v20, v21), 0);
      v23.i64[0] = v14;
      v23.i64[1] = SHIDWORD(v14);
      v24 = vcvtq_f64_s64(v23);
      v25 = vbslq_s8(v22, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), v24);
      v26 = vmaxnmq_f64(v25, v42);
      v27 = vsubq_f64(vminnmq_f64(vaddq_f64(v25, v45), vaddq_f64(v42, v43)), v26);
      v28 = vclezq_f64(v27);
      if ((vorrq_s8(vdupq_laneq_s64(v28, 1), v28).u64[0] & 0x8000000000000000) == 0)
      {
        v44 = v26;
        v45 = v27;
        v48[0] = vcvt_f32_f64(vsubq_f64(v26, v24));
        v48[1] = vcvt_f32_f64(vaddq_f64(v27, vcvtq_f64_f32(v48[0])));
        v47 = 0;
        v29 = *(a4 + 16);
        v30 = *(a4 + 32);
        v31 = *(a4 + 48);
        v46[0] = *a4;
        v46[1] = v29;
        v46[2] = v30;
        v46[3] = v31;
        v32 = *(a4 + 80);
        v33 = *(a4 + 96);
        v34 = *(a4 + 112);
        v46[4] = *(a4 + 64);
        v46[5] = v32;
        v46[6] = v33;
        v46[7] = v34;
        v46[8] = *(a4 + 128);
        LOBYTE(v47) = *(a4 + 144) & 0x1F;
        CA::Transform::concat_left(v46, a3, v16, v17);
        CA::OGL::Context::bind_surface(a1, a2, 0, 1u, 1, 0.0);
        if ((*(a1 + 218) & 8) != 0)
        {
          v35 = 0;
        }

        else
        {
          v35 = 15;
        }

        v36[0] = &v44;
        v36[1] = v46;
        v37 = 9;
        v38 = v35;
        v40 = 0;
        v41 = 0;
        v39 = 0;
        CA::OGL::fill_rect_tex(a1, v36, v48);
        CA::OGL::Context::unbind_surface(a1, a2, 0);
      }
    }
  }
}

void CA::OGL::anonymous namespace::MaskWithRect::draw(void (***a1)(void, int32x2_t *, __int128 *), int32x2_t *a2, float64x2_t **a3)
{
  __dst[63] = *MEMORY[0x1E69E9840];
  v6 = a2[82];
  v7 = a3[1];
  v8 = (*a3)[1];
  v39 = **a3;
  v40 = v8;
  CA::Rect::apply_transform(&v39, v7, a3);
  v9 = vceqzq_f64(v40);
  if ((vorrq_s8(vdupq_laneq_s64(v9, 1), v9).u64[0] & 0x8000000000000000) != 0 || (v10 = vceqq_f64(v40, v40), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v10), 1), v10).u64[0] & 0x8000000000000000) != 0))
  {
    v38 = 0uLL;
  }

  else
  {
    v11 = vcvtmq_s64_f64(vmaxnmq_f64(v39, vdupq_n_s64(0xC1BFFFFFFF000000)));
    v38 = vuzp1q_s32(v11, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v39, v40), vdupq_n_s64(0x41C0000000000000uLL))), v11));
  }

  v12 = CA::Shape::intersect(*(*&v6 + 8), &v38);
  CA::Shape::get_bounds(v12, &v38);
  v13 = a2[84];
  if (v13)
  {
    v14 = v13 + 6;
  }

  else
  {
    v14 = a2 + 76;
  }

  v15 = vclez_s32(v38.u64[1]);
  if ((vpmax_u32(v15, v15).u32[0] & 0x80000000) == 0)
  {
    v16 = v14[1];
    v17 = vclez_s32(v16);
    if ((vpmax_u32(v17, v17).u32[0] & 0x80000000) == 0)
    {
      *v18.i8 = vmax_s32(*v38.i8, *v14);
      v19 = vsub_s32(vmin_s32(vadd_s32(*v38.i8, v38.u64[1]), vadd_s32(*v14, v16)), *v18.i8);
      v20 = vclez_s32(v19);
      if ((vpmax_u32(v20, v20).u32[0] & 0x80000000) == 0)
      {
        v18.u64[1] = v19;
        v38 = v18;
        v21 = a2[2];
        memcpy(__dst, v21, 0x1F8uLL);
        __dst[0] = v21;
        a2[2] = __dst;
        v22 = (*(*a2 + 696))(a2, 1, &v38, 15, @"mask-with-rect-draw");
        v23 = __dst[0];
        a2[2] = __dst[0];
        __dst[0] = 0;
        if (v22)
        {
          v24 = v22;
          v48 = 0;
          v49 = 0;
          v43 = 0x3C003C003C003C00;
          v46 = 0;
          v47 = 0;
          v44 = 0;
          v45 = 0;
          v42 = *(*&v6 + 16);
          LODWORD(v47) = *(*&v6 + 64);
          LOWORD(v49) = *(*&v6 + 80) & 0x500 | 0xF;
          v41[0] = 0;
          v41[1] = v12;
          memcpy(__dst, v23, 0x1F8uLL);
          __dst[0] = v23;
          a2[2] = __dst;
          v41[0] = CA::OGL::Context::set_gstate(a2, v41);
          CA::OGL::Context::push_surface(a2, v24, 1u, 4, 0);
          v25 = *(a3 + 5);
          v26 = a3[2] & 0x3F;
          v32 = *a3;
          v33 = v26;
          v34 = v25;
          v36 = 0;
          v37 = 0;
          v35 = 0;
          *(*&a2[2] + 8) = 0x3C003C003C003C00;
          *(*&a2[2] + 497) &= ~1u;
          LOWORD(v49) = v49 & 0xFBFF;
          (**a1)(a1, a2, &v32);
          LOWORD(v49) = v49 | 0x400;
          *(*&a2[2] + 497) |= 1u;
          CA::OGL::fill_rect(a2, &v32, v27);
          CA::OGL::Context::pop_surface(a2);
          CA::OGL::Context::set_gstate(a2, **&a2[82]);
          a2[2] = __dst[0];
          __dst[0] = 0;
          v28 = *(*&v6 + 8);
          v31[0] = 0;
          v31[1] = 0;
          CA::OGL::emit_combine(a2, 3u, v24, 0, v28, v31);
          CA::OGL::Context::release_surface(a2, v24);
          if (BYTE1(xmmword_1ED4E97DC) == 1)
          {
            CA::OGL::fill_color_rect(a2, &v32, 0x80800080, v29, v30);
          }
        }

        CA::Shape::unref(v12);
        if (__dst[0])
        {
          __assert_rtn("~ContextState", "ogl-context.h", 613, "!next && Imbalanced ContextState push/pop");
        }
      }
    }
  }
}