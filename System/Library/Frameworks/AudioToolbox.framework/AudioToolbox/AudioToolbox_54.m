void sub_1DDF40DB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  std::ostringstream::~ostringstream(&STACK[0x210]);
  if (LOBYTE(STACK[0x208]) == 1)
  {
    STACK[0x210] = &a72;
    std::vector<std::unique_ptr<clsp::SpeakerCalibrationProperties>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x210]);
  }

  if (a46 < 0)
  {
    operator delete(__p);
  }

  if (a53 < 0)
  {
    operator delete(a48);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&STACK[0x320]);
  MEMORY[0x1E12BD050](&STACK[0x3A0]);
  if (a63 < 0)
  {
    operator delete(a58);
  }

  _Unwind_Resume(a1);
}

uint64_t GetPreference<long long>(uint64_t *a1, uint64_t *a2)
{
  v72 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 23);
  if (v4 >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if (v5)
  {
    if (v4 >= 0)
    {
      v6 = *(a1 + 23);
    }

    else
    {
      v6 = a1[1];
    }

    v5 = CFStringCreateWithBytes(0, v5, v6, 0x8000100u, 0);
    *valuePtr = v5;
    if (!v5)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  else
  {
    *valuePtr = 0;
  }

  v8 = *(a2 + 23);
  if (v8 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v9)
  {
    if (v8 >= 0)
    {
      v10 = *(a2 + 23);
    }

    else
    {
      v10 = a2[1];
    }

    v11 = CFStringCreateWithBytes(0, v9, v10, 0x8000100u, 0);
    *cf = v11;
    if (!v11)
    {
      v46 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v46, "Could not construct");
    }

    v5 = *valuePtr;
  }

  else
  {
    v11 = 0;
    *cf = 0;
  }

  v12 = CFPreferencesCopyAppValue(v11, v5);
  v48 = v12;
  if (*cf)
  {
    CFRelease(*cf);
  }

  if (*valuePtr)
  {
    CFRelease(*valuePtr);
  }

  if (v12)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(v12))
    {
      switch(CFNumberGetType(v12))
      {
        case kCFNumberSInt8Type:
          valuePtr[0] = 0;
          Value = CFNumberGetValue(v12, kCFNumberSInt8Type, valuePtr);
          goto LABEL_56;
        case kCFNumberSInt16Type:
          *valuePtr = 0;
          v21 = CFNumberGetValue(v12, kCFNumberSInt16Type, valuePtr);
          goto LABEL_51;
        case kCFNumberSInt32Type:
          *valuePtr = 0;
          v21 = CFNumberGetValue(v12, kCFNumberSInt32Type, valuePtr);
          goto LABEL_118;
        case kCFNumberSInt64Type:
          *valuePtr = 0;
          v19 = CFNumberGetValue(v12, kCFNumberSInt64Type, valuePtr);
          goto LABEL_65;
        case kCFNumberFloat32Type:
          *valuePtr = 0;
          v19 = CFNumberGetValue(v12, kCFNumberFloat32Type, valuePtr);
          goto LABEL_43;
        case kCFNumberFloat64Type:
          *valuePtr = 0;
          v19 = CFNumberGetValue(v12, kCFNumberFloat64Type, valuePtr);
          goto LABEL_53;
        case kCFNumberCharType:
          valuePtr[0] = 0;
          Value = CFNumberGetValue(v12, kCFNumberCharType, valuePtr);
LABEL_56:
          if (Value)
          {
            v24 = valuePtr[0];
          }

          else
          {
            v24 = 0;
          }

          v25 = valuePtr[0] < 0 && Value != 0;
          if (!Value)
          {
            goto LABEL_123;
          }

          v17 = v24 | (v25 << 63 >> 63 << 8);
          goto LABEL_70;
        case kCFNumberShortType:
          *valuePtr = 0;
          v21 = CFNumberGetValue(v12, kCFNumberShortType, valuePtr);
LABEL_51:
          v22 = valuePtr[0];
          v23 = *valuePtr;
          goto LABEL_119;
        case kCFNumberIntType:
          *valuePtr = 0;
          v21 = CFNumberGetValue(v12, kCFNumberIntType, valuePtr);
LABEL_118:
          v22 = valuePtr[0];
          v23 = *valuePtr;
LABEL_119:
          v44 = v23 & 0xFFFFFFFFFFFFFF00 | v22;
          if (v21)
          {
            v17 = v44;
          }

          else
          {
            v17 = 0;
          }

          if (!v21)
          {
            goto LABEL_123;
          }

          goto LABEL_70;
        case kCFNumberLongType:
          *valuePtr = 0;
          v19 = CFNumberGetValue(v12, kCFNumberLongType, valuePtr);
          goto LABEL_65;
        case kCFNumberLongLongType:
          *valuePtr = 0;
          v19 = CFNumberGetValue(v12, kCFNumberLongLongType, valuePtr);
          goto LABEL_65;
        case kCFNumberFloatType:
          *valuePtr = 0;
          v19 = CFNumberGetValue(v12, kCFNumberFloatType, valuePtr);
LABEL_43:
          v20 = *valuePtr;
          goto LABEL_66;
        case kCFNumberDoubleType:
          *valuePtr = 0;
          v19 = CFNumberGetValue(v12, kCFNumberDoubleType, valuePtr);
          goto LABEL_53;
        case kCFNumberCFIndexType:
          *valuePtr = 0;
          v19 = CFNumberGetValue(v12, kCFNumberCFIndexType, valuePtr);
          goto LABEL_65;
        case kCFNumberNSIntegerType:
          *valuePtr = 0;
          v19 = CFNumberGetValue(v12, kCFNumberNSIntegerType, valuePtr);
LABEL_65:
          v20 = *valuePtr;
          goto LABEL_66;
        case kCFNumberCGFloatType:
          *valuePtr = 0;
          v19 = CFNumberGetValue(v12, kCFNumberCGFloatType, valuePtr);
LABEL_53:
          v20 = *valuePtr;
LABEL_66:
          if (v19)
          {
            v17 = v20;
          }

          else
          {
            v17 = 0;
          }

          if (v19)
          {
            goto LABEL_70;
          }

          goto LABEL_123;
        default:
          goto LABEL_123;
      }
    }

    v18 = CFBooleanGetTypeID();
    if (v18 != CFGetTypeID(v12))
    {
LABEL_123:
      v45 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v45, "Could not convert");
    }

    v17 = CFBooleanGetValue(v12);
LABEL_70:
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_115;
    }

    if (*(a1 + 23) >= 0)
    {
      v26 = a1;
    }

    else
    {
      v26 = *a1;
    }

    if (*(a2 + 23) >= 0)
    {
      v27 = a2;
    }

    else
    {
      v27 = *a2;
    }

    memset(&v47, 0, sizeof(v47));
    v70 = &valuePtr[2];
    v71 = v69;
    if (v17 >= 0)
    {
      v28 = v17;
    }

    else
    {
      v28 = -v17;
    }

    MEMORY[0x1E12BCF50](&v52);
    v29 = std::locale::classic();
    if (std::locale::operator==(&v52, v29))
    {
      v30 = v69;
      do
      {
        *--v30 = (v28 % 0xA) | 0x30;
        v31 = v28 > 9;
        v28 /= 0xAuLL;
      }

      while (v31);
LABEL_108:
      std::locale::~locale(&v52);
      if (v17 < 0)
      {
        *--v30 = 45;
      }

      v70 = v30;
      v71 = v69;
      std::string::__assign_trivial[abi:ne200100]<char const*,char const*>(&v47, v30, v69, v69 - v30);
      if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v42 = &v47;
      }

      else
      {
        v42 = v47.__r_.__value_.__r.__words[0];
      }

      *cf = 136316162;
      *&cf[4] = "CFPrefHelper.h";
      v54 = 1024;
      v55 = 124;
      v56 = 2080;
      v57 = v26;
      v58 = 2080;
      v59 = v27;
      v60 = 2080;
      v61 = v42;
      _os_log_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d Preference '%s %s' retrieved as %s", cf, 0x30u);
      if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v47.__r_.__value_.__l.__data_);
      }

LABEL_115:
      CFRelease(v12);
      return v17;
    }

    v32 = std::locale::use_facet(&v52, MEMORY[0x1E69E5368]);
    (v32->__vftable[1].__on_zero_shared)(&__p);
    v33 = v51;
    if ((v51 & 0x8000000000000000) != 0)
    {
      v35 = v50;
      if (!v50)
      {
        goto LABEL_104;
      }

      p_p = __p;
    }

    else
    {
      if (!v51)
      {
        goto LABEL_104;
      }

      p_p = &__p;
      v35 = v51;
    }

    if (*p_p > 0)
    {
      v36 = (v32->__vftable[1].~facet_0)(v32);
      v37 = 0;
      if (v51 >= 0)
      {
        v38 = &__p;
      }

      else
      {
        v38 = __p;
      }

      LOBYTE(v39) = *v38;
      v30 = v69;
      v40 = *v38;
      do
      {
        if (!v40)
        {
          if (++v37 < v35)
          {
            v41 = v51 >= 0 ? &__p : __p;
            v39 = *(v41 + v37);
            if (v39 < 1)
            {
              LOBYTE(v39) = 127;
            }
          }

          *--v30 = v36;
          v40 = v39;
        }

        --v40;
        *--v30 = (v28 % 0xA) | 0x30;
        v31 = v28 > 9;
        v28 /= 0xAuLL;
      }

      while (v31);
      v33 = v51;
      goto LABEL_106;
    }

LABEL_104:
    v30 = v69;
    do
    {
      *--v30 = (v28 % 0xA) | 0x30;
      v31 = v28 > 9;
      v28 /= 0xAuLL;
    }

    while (v31);
LABEL_106:
    if (v33 < 0)
    {
      operator delete(__p);
    }

    goto LABEL_108;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    if (*(a1 + 23) >= 0)
    {
      v15 = a1;
    }

    else
    {
      v15 = *a1;
    }

    if (*(a2 + 23) >= 0)
    {
      v16 = a2;
    }

    else
    {
      v16 = *a2;
    }

    *valuePtr = 136315906;
    *&valuePtr[4] = "CFPrefHelper.h";
    v63 = 1024;
    v64 = 133;
    v65 = 2080;
    v66 = v15;
    v67 = 2080;
    v68 = v16;
    _os_log_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%25s:%-5d Preference: '%s %s' does not exist.", valuePtr, 0x26u);
  }

  return 0;
}

void sub_1DDF41AA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, std::locale a22, __int128 buf, __int128 a24)
{
  if (a2)
  {
    if (a21 < 0)
    {
      operator delete(__p);
    }

    std::locale::~locale(&a22);
    __cxa_begin_catch(exception_object);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      if (*(v25 + 23) >= 0)
      {
        v27 = v25;
      }

      else
      {
        v27 = *v25;
      }

      if (*(v24 + 23) >= 0)
      {
        v28 = v24;
      }

      else
      {
        v28 = *v24;
      }

      LODWORD(buf) = 136315906;
      *(&buf + 4) = "CFPrefHelper.h";
      WORD6(buf) = 1024;
      *(&buf + 14) = 128;
      WORD1(a24) = 2080;
      *(&a24 + 4) = v27;
      WORD6(a24) = 2080;
      *(&a24 + 14) = v28;
      _os_log_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to get Preference: '%s %s'. It exists, but is it the right type?", &buf, 0x26u);
    }

    __cxa_end_catch();
    if (!a15)
    {
      JUMPOUT(0x1DDF419BCLL);
    }

    JUMPOUT(0x1DDF419B4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::uniform_int_distribution<unsigned long>::operator()<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(uint64_t a1, void *a2)
{
  result = a2[1];
  v5 = result - *a2;
  if (result != *a2)
  {
    v6 = v5 + 1;
    if (v5 == -1)
    {
      std::__independent_bits_engine<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>,unsigned long>::__independent_bits_engine(v10, a1, 0x40uLL);
      return std::__independent_bits_engine<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>,unsigned long>::__eval(v10);
    }

    else
    {
      v7 = __clz(v6);
      v8 = 63;
      if (((v6 << v7) & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v8 = 64;
      }

      std::__independent_bits_engine<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>,unsigned long>::__independent_bits_engine(v10, a1, v8 - v7);
      do
      {
        v9 = std::__independent_bits_engine<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>,unsigned long>::__eval(v10);
      }

      while (v9 >= v6);
      return *a2 + v9;
    }
  }

  return result;
}

void *std::endl[abi:ne200100]<char,std::char_traits<char>>(void *a1)
{
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v2 = std::locale::use_facet(&v4, MEMORY[0x1E69E5318]);
  (v2->__vftable[2].~facet_0)(v2, 10);
  std::locale::~locale(&v4);
  std::ostream::put();
  std::ostream::flush();
  return a1;
}

char *std::vector<clsp::telemetry::Item>::__assign_with_size[abi:ne200100]<clsp::telemetry::Item*,clsp::telemetry::Item*>(char **a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
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

void *std::vector<clsp::telemetry::Item>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    std::allocator<std::complex<float>>::allocate_at_least[abi:ne200100](a2);
  }

  return result;
}

uint64_t std::vector<clsp::telemetry::Item>::__emplace_back_slow_path<clsp::telemetry::Item>(void *a1, void *a2)
{
  v2 = (a1[1] - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 2 > v3)
  {
    v3 = v5 >> 2;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    v6 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  v13 = a1;
  if (v6)
  {
    std::allocator<std::complex<float>>::allocate_at_least[abi:ne200100](v6);
  }

  __p = 0;
  v10 = (8 * v2);
  *v10 = *a2;
  v11 = 8 * v2 + 8;
  v12 = 0;
  std::vector<clsp::telemetry::Item>::__swap_out_circular_buffer(a1, &__p);
  v7 = a1[1];
  if (__p)
  {
    operator delete(__p);
  }

  return v7;
}

void SpeakerDefaultName(uint64_t a1, int a2, int a3)
{
  if (a2 >= a3)
  {
    __assert_rtn("SpeakerDefaultName", "AUSpeakerProtectionV3.cpp", 351, "index < numSpeakers");
  }

  if (a3 == 2)
  {
    if (a2 == 1)
    {
      v4 = "Right Speaker Settings";
      goto LABEL_12;
    }

    if (!a2)
    {
      v4 = "Left Speaker Settings";
      goto LABEL_12;
    }
  }

  else if (a3 == 1)
  {
    v4 = "Speaker settings";
LABEL_12:

    std::string::basic_string[abi:ne200100]<0>(a1, v4);
    return;
  }

  std::to_string(&v7, a2 + 1);
  v5 = std::string::insert(&v7, 0, "Speaker ", 8uLL);
  v6 = *&v5->__r_.__value_.__l.__data_;
  *(a1 + 16) = *(&v5->__r_.__value_.__l + 2);
  *a1 = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }
}

void sub_1DDF421CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void clsp::telemetry::utils::PrintNumericVector_impl<std::__wrap_iter<unsigned int const*>,std::__wrap_iter<unsigned int const*>>(std::string *retstr, unsigned int **a2, uint64_t *a3)
{
  v4 = *a2;
  if (*a2 == (*a3 - 4))
  {
    v13 = *v4;

    std::to_string(retstr, v13);
  }

  else
  {
    std::to_string(&v16, *v4);
    v7 = std::string::append(&v16, ", ", 2uLL);
    v8 = *&v7->__r_.__value_.__l.__data_;
    v17.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v17.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    v14 = *a2 + 1;
    clsp::telemetry::utils::PrintNumericVector_impl<std::__wrap_iter<unsigned int const*>,std::__wrap_iter<unsigned int const*>&>(&__p, &v14, *a3);
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

    v11 = std::string::append(&v17, p_p, size);
    v12 = *&v11->__r_.__value_.__l.__data_;
    retstr->__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&retstr->__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1DDF42320(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::vector<std::shared_ptr<clsp::CLSPKernel_v5>>>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  v6 = a2 - v5;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      v11 = (v3 + 24 * a2);
      while (v4 != v11)
      {
        v4 -= 3;
        v12 = v4;
        std::vector<std::shared_ptr<IR::SharedIRBuses::IRBus>>::__destroy_vector::operator()[abi:ne200100](&v12);
      }

      a1[1] = v11;
    }
  }

  else
  {
    v7 = a1[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v7 - v4) >> 3) < v6)
    {
      if (a2 <= 0xAAAAAAAAAAAAAAALL)
      {
        v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v3) >> 3);
        v9 = 2 * v8;
        if (2 * v8 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x555555555555555)
        {
          v10 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v10 = v9;
        }

        if (v10 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    bzero(a1[1], 24 * ((24 * v6 - 24) / 0x18) + 24);
    a1[1] = &v4[3 * ((24 * v6 - 24) / 0x18) + 3];
  }
}

uint64_t ThisDeviceUsesSpTSv1(PlatformUtilities_iOS *a1)
{
  ProductType = PlatformUtilities_iOS::GetProductType(a1);
  result = 1;
  if ((ProductType - 24) > 0x3C || ((1 << (ProductType - 24)) & 0x186300000040001BLL) == 0)
  {
    v4 = ProductType - 87;
    if (v4 > 0x26 || ((1 << v4) & 0x4000000603) == 0)
    {
      return 0;
    }
  }

  return result;
}

void FetchAndInterpretSpTS(uint64_t a1)
{
  v61[19] = *MEMORY[0x1E69E9840];
  v2 = MGCopyAnswer();
  __p = v2;
  if (!v2)
  {
    goto LABEL_46;
  }

  v3 = CFGetTypeID(v2);
  if (v3 != CFDataGetTypeID())
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v4 = __p;
  if (!__p)
  {
LABEL_46:
    v37 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v37, "Could not construct");
  }

  applesauce::CF::convert_as<std::vector<unsigned char>,0>(&v45, __p);
  CFRelease(v4);
  if (v47)
  {
    if (((v46 - v45) & 3) != 0)
    {
      v39 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v39, "de-serialization data size mismatch");
    }

    __p = 0;
    v57 = 0;
    v58[0].__locale_ = 0;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(&__p, v45, v46, (v46 - v45) >> 2);
    v6 = __p;
    v5 = v57;
    v57 = 0;
    v58[0].__locale_ = 0;
    __p = 0;
    v7 = v5 - v6;
    if (v5 != v6)
    {
      v8 = v7 >> 2;
      if ((v7 >> 2) <= 1)
      {
        v8 = 1;
      }

      v9 = v6;
      do
      {
        *v9 = bswap32(*v9);
        ++v9;
        --v8;
      }

      while (v8);
      if (__p)
      {
        v57 = __p;
        operator delete(__p);
      }
    }

    v10 = v6[2];
    v11 = v6[3];
    v12 = 20 * v11 + 4;
    if (v7 != v11 * v10 + 4 || v7 != v12)
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](&__p);
      v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Actual size of key structure (", 30);
      v15 = MEMORY[0x1E12BCC30](v14, v7);
      v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " bytes) is either not what it describes itself to be (", 54);
      v17 = MEMORY[0x1E12BCC30](v16, (v11 * v10 + 4));
      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " bytes), or what it ought to be (", 33);
      v19 = MEMORY[0x1E12BCC30](v18, v12);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, " bytes).\n", 9);
      v20 = spp3Subsystem();
      if (v20)
      {
        v21 = *v20;
        if (!*v20)
        {
LABEL_30:
          *a1 = 0;
          *(a1 + 24) = 0;
          __p = *MEMORY[0x1E69E54E8];
          *(&__p + *(__p - 3)) = *(MEMORY[0x1E69E54E8] + 24);
          v57 = (MEMORY[0x1E69E5548] + 16);
          if (v60 < 0)
          {
            operator delete(v59);
          }

          v57 = (MEMORY[0x1E69E5538] + 16);
          std::locale::~locale(v58);
          std::ostream::~ostream();
LABEL_45:
          MEMORY[0x1E12BD050](v61);
          operator delete(v6);
          goto LABEL_62;
        }
      }

      else
      {
        v21 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        std::stringbuf::str[abi:ne200100](buf, &v57);
        v33 = v49 >= 0 ? buf : *buf;
        *v50 = 136315650;
        *&v50[4] = "AUSpeakerProtectionV3.cpp";
        v51 = 1024;
        v52 = 301;
        v53 = 2080;
        v54 = v33;
        _os_log_impl(&dword_1DDB85000, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", v50, 0x1Cu);
        if (v49 < 0)
        {
          operator delete(*buf);
        }
      }

      goto LABEL_30;
    }

    v22 = *v6;
    std::ostringstream::basic_ostringstream[abi:ne200100](&__p);
    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "SpTSv", 5);
    v24 = MEMORY[0x1E12BCC10](v23, bswap32(v22) >> 16);
    v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, " key, describing ", 17);
    v26 = MEMORY[0x1E12BCC10](v25, v11);
    v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, ", ", 2);
    v28 = MEMORY[0x1E12BCC10](v27, v10);
    v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "-byte speaker structures.", 25);
    std::ios_base::getloc((v29 + *(*v29 - 24)));
    v30 = std::locale::use_facet(v50, MEMORY[0x1E69E5318]);
    (v30->__vftable[2].~facet_0)(v30, 10);
    std::locale::~locale(v50);
    std::ostream::put();
    std::ostream::flush();
    v31 = spp3Subsystem();
    if (v31)
    {
      v32 = *v31;
      if (!*v31)
      {
LABEL_40:
        v43 = 0uLL;
        v44 = 0;
        if (v11)
        {
          v55 = &v43;
          std::allocator<std::complex<float> *>::allocate_at_least[abi:ne200100](v11);
        }

        v35 = *MEMORY[0x1E69E54E8];
        v36 = *(MEMORY[0x1E69E54E8] + 24);
        *a1 = v43;
        *(a1 + 16) = v44;
        v44 = 0;
        v43 = 0uLL;
        *(a1 + 24) = 1;
        *v50 = &v43;
        std::vector<std::unique_ptr<clsp::SpeakerCalibrationProperties>>::__destroy_vector::operator()[abi:ne200100](v50);
        __p = v35;
        *(&__p + *(v35 - 3)) = v36;
        v57 = (MEMORY[0x1E69E5548] + 16);
        if (v60 < 0)
        {
          operator delete(v59);
        }

        v57 = (MEMORY[0x1E69E5538] + 16);
        std::locale::~locale(v58);
        std::ostream::~ostream();
        goto LABEL_45;
      }
    }

    else
    {
      v32 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      std::stringbuf::str[abi:ne200100](buf, &v57);
      v34 = v49 >= 0 ? buf : *buf;
      *v50 = 136315650;
      *&v50[4] = "AUSpeakerProtectionV3.cpp";
      v51 = 1024;
      v52 = 312;
      v53 = 2080;
      v54 = v34;
      _os_log_impl(&dword_1DDB85000, v32, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s", v50, 0x1Cu);
      if (v49 < 0)
      {
        operator delete(*buf);
      }
    }

    goto LABEL_40;
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](&__p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Failed to fetch MG data.\n", 25);
  v40 = spp3Subsystem();
  if (!v40)
  {
    v41 = MEMORY[0x1E69E9C10];
    goto LABEL_53;
  }

  v41 = *v40;
  if (*v40)
  {
LABEL_53:
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      std::stringbuf::str[abi:ne200100](buf, &v57);
      v42 = v49 >= 0 ? buf : *buf;
      *v50 = 136315650;
      *&v50[4] = "AUSpeakerProtectionV3.cpp";
      v51 = 1024;
      v52 = 266;
      v53 = 2080;
      v54 = v42;
      _os_log_impl(&dword_1DDB85000, v41, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", v50, 0x1Cu);
      if (v49 < 0)
      {
        operator delete(*buf);
      }
    }
  }

  *a1 = 0;
  *(a1 + 24) = 0;
  __p = *MEMORY[0x1E69E54E8];
  *(&__p + *(__p - 3)) = *(MEMORY[0x1E69E54E8] + 24);
  v57 = (MEMORY[0x1E69E5548] + 16);
  if (v60 < 0)
  {
    operator delete(v59);
  }

  v57 = (MEMORY[0x1E69E5538] + 16);
  std::locale::~locale(v58);
  std::ostream::~ostream();
  MEMORY[0x1E12BD050](v61);
LABEL_62:
  if (v47 == 1)
  {
    if (v45)
    {
      operator delete(v45);
    }
  }
}

void sub_1DDF43414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::ostringstream::~ostringstream(&a69);
  operator delete(v69);
  if (a30 == 1)
  {
    if (a27)
    {
      operator delete(a27);
    }
  }

  _Unwind_Resume(a1);
}

void sub_1DDF43424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void **a31)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  a31 = &a23;
  std::vector<std::unique_ptr<clsp::SpeakerCalibrationProperties>>::__destroy_vector::operator()[abi:ne200100](&a31);
  JUMPOUT(0x1DDF4346CLL);
}

void sub_1DDF43434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void **a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  std::unique_ptr<clsp::SpeakerCalibrationProperties>::~unique_ptr[abi:ne200100](&a35);
  a31 = &a23;
  std::vector<std::unique_ptr<clsp::SpeakerCalibrationProperties>>::__destroy_vector::operator()[abi:ne200100](&a31);
  JUMPOUT(0x1DDF4346CLL);
}

void sub_1DDF43444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void **a31)
{
  a31 = &a23;
  std::vector<std::unique_ptr<clsp::SpeakerCalibrationProperties>>::__destroy_vector::operator()[abi:ne200100](&a31);
  JUMPOUT(0x1DDF4346CLL);
}

void std::vector<std::unique_ptr<clsp::SpeakerCalibrationProperties>>::__vdeallocate(void **a1)
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
        v3 = std::unique_ptr<clsp::SpeakerCalibrationProperties>::~unique_ptr[abi:ne200100](v3 - 1);
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

void std::vector<std::unique_ptr<clsp::SpeakerCalibrationProperties>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 = std::unique_ptr<clsp::SpeakerCalibrationProperties>::~unique_ptr[abi:ne200100](v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void clsp::ThermalStateVector_v3_separate<clsp::CL>::SetNumChannels(unsigned int a1, int a2)
{
  clsp::ThermalStateVector_v3_separate<clsp::CL>::TheInstance();
  if (byte_1ECDA9B78 == 1)
  {
    std::vector<clsp::ThermalState_v3>::resize(&clsp::ThermalStateVector_v3_separate<clsp::CL>::TheInstance(void)::inst, a1);
    byte_1ECDA9B78 = 0;
  }

  if (a2 == 2)
  {
    std::vector<clsp::ThermalState_v3>::resize(&clsp::ThermalStateVector_v3_separate<clsp::CL>::TheInstance(void)::inst, a1);
    v13 = clsp::ThermalStateVector_v3_separate<clsp::CL>::TheInstance(void)::inst;
    for (i = qword_1ECDA9B68; v13 != i; v13 += 24)
    {
      *(v13 + 4) = xmmword_1DE097CE0;
      *(v13 + 20) = 1065353216;
      *v13 = 1;
    }
  }

  else if (a2 == 1)
  {
    std::vector<clsp::ThermalState_v3>::resize(&clsp::ThermalStateVector_v3_separate<clsp::CL>::TheInstance(void)::inst, a1);
    if (clsp::ThermalStateVector_v3_separate<clsp::CL>::TheInstance(void)::inst != qword_1ECDA9B68)
    {
      v4 = 0;
      v5 = qword_1ECDA9B68 - clsp::ThermalStateVector_v3_separate<clsp::CL>::TheInstance(void)::inst - 24;
      v6 = vdupq_n_s64(v5 / 0x18);
      v7 = (clsp::ThermalStateVector_v3_separate<clsp::CL>::TheInstance(void)::inst + 192);
      do
      {
        v8 = vdupq_n_s64(v4);
        v9 = vmovn_s64(vcgeq_u64(v6, vorrq_s8(v8, xmmword_1DE095160)));
        if (vuzp1_s8(vuzp1_s16(v9, 14), 14).u8[0])
        {
          *(v7 - 192) = 0;
        }

        if (vuzp1_s8(vuzp1_s16(v9, 14), 14).i8[1])
        {
          *(v7 - 168) = 0;
        }

        if (vuzp1_s8(vuzp1_s16(14, vmovn_s64(vcgeq_u64(v6, vorrq_s8(v8, xmmword_1DE095150)))), 14).i8[2])
        {
          *(v7 - 144) = 0;
          *(v7 - 120) = 0;
        }

        v10 = vmovn_s64(vcgeq_u64(v6, vorrq_s8(v8, xmmword_1DE095220)));
        if (vuzp1_s8(14, vuzp1_s16(v10, 14)).i32[1])
        {
          *(v7 - 96) = 0;
        }

        if (vuzp1_s8(14, vuzp1_s16(v10, 14)).i8[5])
        {
          *(v7 - 72) = 0;
        }

        if (vuzp1_s8(14, vuzp1_s16(14, vmovn_s64(vcgeq_u64(v6, vorrq_s8(v8, xmmword_1DE0952D0))))).i8[6])
        {
          *(v7 - 48) = 0;
          *(v7 - 24) = 0;
        }

        v11 = vmovn_s64(vcgeq_u64(v6, vorrq_s8(v8, xmmword_1DE0952C0)));
        if (vuzp1_s8(vuzp1_s16(v11, 14), 14).u8[0])
        {
          *v7 = 0;
        }

        if (vuzp1_s8(vuzp1_s16(v11, 14), 14).i8[1])
        {
          v7[24] = 0;
        }

        if (vuzp1_s8(vuzp1_s16(14, vmovn_s64(vcgeq_u64(v6, vorrq_s8(v8, xmmword_1DE0952B0)))), 14).i8[2])
        {
          v7[48] = 0;
          v7[72] = 0;
        }

        v12 = vmovn_s64(vcgeq_u64(v6, vorrq_s8(v8, xmmword_1DE0952A0)));
        if (vuzp1_s8(14, vuzp1_s16(v12, 14)).i32[1])
        {
          v7[96] = 0;
        }

        if (vuzp1_s8(14, vuzp1_s16(v12, 14)).i8[5])
        {
          v7[120] = 0;
        }

        if (vuzp1_s8(14, vuzp1_s16(14, vmovn_s64(vcgeq_u64(v6, vorrq_s8(v8, xmmword_1DE095290))))).i8[6])
        {
          v7[144] = 0;
          v7[168] = 0;
        }

        v4 += 16;
        v7 += 384;
      }

      while (((v5 / 0x18 + 16) & 0x1FFFFFFFFFFFFFF0) != v4);
    }
  }
}

void clsp::ThermalStateVector_v3_separate<clsp::OL>::SetNumChannels(unsigned int a1, int a2)
{
  clsp::ThermalStateVector_v3_separate<clsp::OL>::TheInstance();
  if (byte_1ECDA9BA8 == 1)
  {
    std::vector<clsp::ThermalState_v3>::resize(&clsp::ThermalStateVector_v3_separate<clsp::OL>::TheInstance(void)::inst, a1);
    byte_1ECDA9BA8 = 0;
  }

  if (a2 == 2)
  {
    std::vector<clsp::ThermalState_v3>::resize(&clsp::ThermalStateVector_v3_separate<clsp::OL>::TheInstance(void)::inst, a1);
    v13 = clsp::ThermalStateVector_v3_separate<clsp::OL>::TheInstance(void)::inst;
    for (i = qword_1ECDA9B98; v13 != i; v13 += 24)
    {
      *(v13 + 4) = xmmword_1DE097CE0;
      *(v13 + 20) = 1065353216;
      *v13 = 1;
    }
  }

  else if (a2 == 1)
  {
    std::vector<clsp::ThermalState_v3>::resize(&clsp::ThermalStateVector_v3_separate<clsp::OL>::TheInstance(void)::inst, a1);
    if (clsp::ThermalStateVector_v3_separate<clsp::OL>::TheInstance(void)::inst != qword_1ECDA9B98)
    {
      v4 = 0;
      v5 = qword_1ECDA9B98 - clsp::ThermalStateVector_v3_separate<clsp::OL>::TheInstance(void)::inst - 24;
      v6 = vdupq_n_s64(v5 / 0x18);
      v7 = (clsp::ThermalStateVector_v3_separate<clsp::OL>::TheInstance(void)::inst + 192);
      do
      {
        v8 = vdupq_n_s64(v4);
        v9 = vmovn_s64(vcgeq_u64(v6, vorrq_s8(v8, xmmword_1DE095160)));
        if (vuzp1_s8(vuzp1_s16(v9, 14), 14).u8[0])
        {
          *(v7 - 192) = 0;
        }

        if (vuzp1_s8(vuzp1_s16(v9, 14), 14).i8[1])
        {
          *(v7 - 168) = 0;
        }

        if (vuzp1_s8(vuzp1_s16(14, vmovn_s64(vcgeq_u64(v6, vorrq_s8(v8, xmmword_1DE095150)))), 14).i8[2])
        {
          *(v7 - 144) = 0;
          *(v7 - 120) = 0;
        }

        v10 = vmovn_s64(vcgeq_u64(v6, vorrq_s8(v8, xmmword_1DE095220)));
        if (vuzp1_s8(14, vuzp1_s16(v10, 14)).i32[1])
        {
          *(v7 - 96) = 0;
        }

        if (vuzp1_s8(14, vuzp1_s16(v10, 14)).i8[5])
        {
          *(v7 - 72) = 0;
        }

        if (vuzp1_s8(14, vuzp1_s16(14, vmovn_s64(vcgeq_u64(v6, vorrq_s8(v8, xmmword_1DE0952D0))))).i8[6])
        {
          *(v7 - 48) = 0;
          *(v7 - 24) = 0;
        }

        v11 = vmovn_s64(vcgeq_u64(v6, vorrq_s8(v8, xmmword_1DE0952C0)));
        if (vuzp1_s8(vuzp1_s16(v11, 14), 14).u8[0])
        {
          *v7 = 0;
        }

        if (vuzp1_s8(vuzp1_s16(v11, 14), 14).i8[1])
        {
          v7[24] = 0;
        }

        if (vuzp1_s8(vuzp1_s16(14, vmovn_s64(vcgeq_u64(v6, vorrq_s8(v8, xmmword_1DE0952B0)))), 14).i8[2])
        {
          v7[48] = 0;
          v7[72] = 0;
        }

        v12 = vmovn_s64(vcgeq_u64(v6, vorrq_s8(v8, xmmword_1DE0952A0)));
        if (vuzp1_s8(14, vuzp1_s16(v12, 14)).i32[1])
        {
          v7[96] = 0;
        }

        if (vuzp1_s8(14, vuzp1_s16(v12, 14)).i8[5])
        {
          v7[120] = 0;
        }

        if (vuzp1_s8(14, vuzp1_s16(14, vmovn_s64(vcgeq_u64(v6, vorrq_s8(v8, xmmword_1DE095290))))).i8[6])
        {
          v7[144] = 0;
          v7[168] = 0;
        }

        v4 += 16;
        v7 += 384;
      }

      while (((v5 / 0x18 + 16) & 0x1FFFFFFFFFFFFFF0) != v4);
    }
  }
}

void AUSpeakerProtectionV3::InitializeKernels(AUSpeakerProtectionV3 *this, double a2, uint64_t a3, BOOL *a4)
{
  v233[19] = *MEMORY[0x1E69E9840];
  __p[0] = 0;
  AppFloatValue = CACFPreferencesGetAppFloatValue(@"clsp_srdc", @"com.apple.coreaudio", __p);
  if (__p[0] == 1)
  {
    v8 = AppFloatValue;
    v9 = *(this + 87);
    if (*(this + 88) == v9)
    {
      operator new();
    }

    **v9 = v8;
    v10 = spp3Subsystem();
    if (v10)
    {
      v11 = *v10;
      if (!*v10)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v11 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf[0].__locale_) = 136315650;
      *(&buf[0].__locale_ + 4) = "AUSpeakerProtectionV3.cpp";
      WORD2(buf[1].__locale_) = 1024;
      *(&buf[1].__locale_ + 6) = 822;
      WORD1(buf[2].__locale_) = 2048;
      *(&buf[2].__locale_ + 4) = v8;
      _os_log_impl(&dword_1DDB85000, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d Override SpCl Property with defaults clsp_srdc %f", buf, 0x1Cu);
    }
  }

LABEL_10:
  __p[0] = 0;
  v12 = CACFPreferencesGetAppFloatValue(@"clsp_caltemp", @"com.apple.coreaudio", __p);
  if (__p[0] == 1)
  {
    v13 = *(this + 87);
    if (*(this + 88) != v13)
    {
      v14 = v12;
      *(*v13 + 4) = v14;
      v15 = spp3Subsystem();
      if (v15)
      {
        v16 = *v15;
        if (!*v15)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v16 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf[0].__locale_) = 136315650;
        *(&buf[0].__locale_ + 4) = "AUSpeakerProtectionV3.cpp";
        WORD2(buf[1].__locale_) = 1024;
        *(&buf[1].__locale_ + 6) = 837;
        WORD1(buf[2].__locale_) = 2048;
        *(&buf[2].__locale_ + 4) = v14;
        _os_log_impl(&dword_1DDB85000, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d Override SpCl Property with defaults clsp_caltemp %f", buf, 0x1Cu);
      }
    }
  }

LABEL_18:
  if (*(this + 158) < 2u)
  {
    goto LABEL_36;
  }

  __p[0] = 0;
  v17 = CACFPreferencesGetAppFloatValue(@"clsp_srdc_r", @"com.apple.coreaudio", __p);
  if (__p[0] == 1)
  {
    v18 = v17;
    v19 = *(this + 87);
    if ((*(this + 88) - v19) < 9)
    {
      operator new();
    }

    **(v19 + 8) = v18;
    v20 = spp3Subsystem();
    if (v20)
    {
      v21 = *v20;
      if (!*v20)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v21 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf[0].__locale_) = 136315650;
      *(&buf[0].__locale_ + 4) = "AUSpeakerProtectionV3.cpp";
      WORD2(buf[1].__locale_) = 1024;
      *(&buf[1].__locale_ + 6) = 846;
      WORD1(buf[2].__locale_) = 2048;
      *(&buf[2].__locale_ + 4) = v18;
      _os_log_impl(&dword_1DDB85000, v21, OS_LOG_TYPE_DEBUG, "%25s:%-5d Override SpCl Property with defaults clsp_srdc_r %f", buf, 0x1Cu);
    }
  }

LABEL_28:
  __p[0] = 0;
  v22 = CACFPreferencesGetAppFloatValue(@"clsp_caltemp_r", @"com.apple.coreaudio", __p);
  if (__p[0] == 1)
  {
    v23 = *(this + 87);
    if (*(this + 88) != v23)
    {
      v24 = v22;
      *(*(v23 + 8) + 4) = v24;
      v25 = spp3Subsystem();
      if (v25)
      {
        v26 = *v25;
        if (!*v25)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v26 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf[0].__locale_) = 136315650;
        *(&buf[0].__locale_ + 4) = "AUSpeakerProtectionV3.cpp";
        WORD2(buf[1].__locale_) = 1024;
        *(&buf[1].__locale_ + 6) = 861;
        WORD1(buf[2].__locale_) = 2048;
        *(&buf[2].__locale_ + 4) = v24;
        _os_log_impl(&dword_1DDB85000, v26, OS_LOG_TYPE_DEBUG, "%25s:%-5d Override SpCl Property with defaults clsp_caltemp_r %f", buf, 0x1Cu);
      }
    }
  }

LABEL_36:
  if (*(this + 533))
  {
    v27 = *(this + 529);
    *a4 = v27;
    if (a3 && (v27 & 1) != 0)
    {
      v28 = 0;
      v29 = *MEMORY[0x1E69E54E8];
      v30 = *(MEMORY[0x1E69E54E8] + 24);
      while (1)
      {
        v31 = *(this + 84);
        if (a3 == (*(this + 85) - v31) >> 3)
        {
          v32 = *(v31 + 8 * v28);
          if (v32)
          {
            v33 = *(this + 87);
            if (a3 == (*(this + 88) - v33) >> 3)
            {
              v34 = *(v33 + 8 * v28);
              if (*v34 >= v32[5] && *v34 <= v32[6])
              {
                v36 = v34[1];
                if (v36 >= v32[7] && v36 <= v32[8])
                {
                  v52 = spp3Subsystem();
                  if (v52)
                  {
                    if (*(v52 + 8))
                    {
                      v53 = *v52;
                      if (*v52)
                      {
                        if (os_log_type_enabled(*v52, OS_LOG_TYPE_DEBUG))
                        {
                          v54 = (*(this + 85) - *(this + 84)) >> 3;
                          v55 = (*(this + 88) - *(this + 87)) >> 3;
                          LODWORD(buf[0].__locale_) = 136316418;
                          *(&buf[0].__locale_ + 4) = "AUSpeakerProtectionV3.cpp";
                          WORD2(buf[1].__locale_) = 1024;
                          *(&buf[1].__locale_ + 6) = 888;
                          WORD1(buf[2].__locale_) = 1024;
                          HIDWORD(buf[2].__locale_) = v28;
                          LOWORD(buf[3].__locale_) = 1024;
                          *(&buf[3].__locale_ + 2) = v54;
                          HIWORD(buf[3].__locale_) = 1024;
                          LODWORD(buf[4].__locale_) = a3;
                          WORD2(buf[4].__locale_) = 1024;
                          *(&buf[4].__locale_ + 6) = v55;
                          _os_log_impl(&dword_1DDB85000, v53, OS_LOG_TYPE_DEBUG, "%25s:%-5d Closed loop checks Ch %d passed: mCLParams.size=%d, nKern=%d, SpClProps.size=%d", buf, 0x2Au);
                        }
                      }
                    }
                  }

                  goto LABEL_89;
                }
              }
            }
          }
        }

        v38 = spp3Subsystem();
        if (v38)
        {
          v39 = *v38;
          if (!*v38)
          {
            goto LABEL_58;
          }
        }

        else
        {
          v39 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          v40 = (*(this + 85) - *(this + 84)) >> 3;
          v41 = (*(this + 88) - *(this + 87)) >> 3;
          LODWORD(buf[0].__locale_) = 136316162;
          *(&buf[0].__locale_ + 4) = "AUSpeakerProtectionV3.cpp";
          WORD2(buf[1].__locale_) = 1024;
          *(&buf[1].__locale_ + 6) = 891;
          WORD1(buf[2].__locale_) = 1024;
          HIDWORD(buf[2].__locale_) = v40;
          LOWORD(buf[3].__locale_) = 1024;
          *(&buf[3].__locale_ + 2) = a3;
          HIWORD(buf[3].__locale_) = 1024;
          LODWORD(buf[4].__locale_) = v41;
          _os_log_impl(&dword_1DDB85000, v39, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Closed loop checks failed: mCLParams.size=%d, nKern=%d, SpClProps.size=%d", buf, 0x24u);
        }

LABEL_58:
        v42 = *(this + 84);
        if (a3 != (*(this + 85) - v42) >> 3 || !*(v42 + 8 * v28))
        {
          goto LABEL_73;
        }

        std::ostringstream::basic_ostringstream[abi:ne200100](buf);
        v43 = *(this + 84);
        if (v28 >= (*(this + 85) - v43) >> 3)
        {
          std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
        }

        clsp::ClosedLoopParameters::dump(*(v43 + 8 * v28), buf);
        v44 = spp3Subsystem();
        if (!v44)
        {
          v45 = MEMORY[0x1E69E9C10];
LABEL_65:
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
          {
            std::stringbuf::str[abi:ne200100](__p, &buf[1]);
            v46 = __p;
            if (v222 < 0)
            {
              v46 = *__p;
            }

            v225 = 136315906;
            *v226 = "AUSpeakerProtectionV3.cpp";
            *&v226[8] = 1024;
            *&v226[10] = 895;
            *&v226[14] = 1024;
            *&v226[16] = v28;
            LOWORD(v227) = 2080;
            *(&v227 + 2) = v46;
            _os_log_impl(&dword_1DDB85000, v45, OS_LOG_TYPE_DEBUG, "%25s:%-5d Ch %d, CLParams:\n%s", &v225, 0x22u);
            if (SHIBYTE(v222) < 0)
            {
              operator delete(*__p);
            }
          }

          goto LABEL_70;
        }

        v45 = *v44;
        if (*v44)
        {
          goto LABEL_65;
        }

LABEL_70:
        buf[0].__locale_ = v29;
        *(&buf[0].__locale_ + *(v29 - 3)) = v30;
        buf[1].__locale_ = (MEMORY[0x1E69E5548] + 16);
        if (v232 < 0)
        {
          operator delete(v231[1]);
        }

        buf[1].__locale_ = (MEMORY[0x1E69E5538] + 16);
        std::locale::~locale(&buf[2]);
        std::ostream::~ostream();
        MEMORY[0x1E12BD050](v233);
LABEL_73:
        v47 = *(this + 87);
        if (a3 == (*(this + 88) - v47) >> 3 && *(v47 + 8 * v28))
        {
          std::ostringstream::basic_ostringstream[abi:ne200100](buf);
          v48 = *(this + 87);
          if (v28 >= (*(this + 88) - v48) >> 3)
          {
            std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
          }

          clsp::SpeakerCalibrationProperties::dump(*(v48 + 8 * v28), buf);
          v49 = spp3Subsystem();
          if (v49)
          {
            v50 = *v49;
            if (!*v49)
            {
LABEL_85:
              buf[0].__locale_ = v29;
              *(&buf[0].__locale_ + *(v29 - 3)) = v30;
              buf[1].__locale_ = (MEMORY[0x1E69E5548] + 16);
              if (v232 < 0)
              {
                operator delete(v231[1]);
              }

              buf[1].__locale_ = (MEMORY[0x1E69E5538] + 16);
              std::locale::~locale(&buf[2]);
              std::ostream::~ostream();
              MEMORY[0x1E12BD050](v233);
              goto LABEL_88;
            }
          }

          else
          {
            v50 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
          {
            std::stringbuf::str[abi:ne200100](__p, &buf[1]);
            v51 = __p;
            if (v222 < 0)
            {
              v51 = *__p;
            }

            v225 = 136315906;
            *v226 = "AUSpeakerProtectionV3.cpp";
            *&v226[8] = 1024;
            *&v226[10] = 900;
            *&v226[14] = 1024;
            *&v226[16] = v28;
            LOWORD(v227) = 2080;
            *(&v227 + 2) = v51;
            _os_log_impl(&dword_1DDB85000, v50, OS_LOG_TYPE_DEBUG, "%25s:%-5d Ch %d, SpClProps:\n%s", &v225, 0x22u);
            if (SHIBYTE(v222) < 0)
            {
              operator delete(*__p);
            }
          }

          goto LABEL_85;
        }

LABEL_88:
        *a4 = 0;
LABEL_89:
        if (a3 == ++v28)
        {
          goto LABEL_98;
        }
      }
    }
  }

  else
  {
    *a4 = 0;
  }

  if (a3)
  {
LABEL_98:
    if (*a4)
    {
      v56 = **(this + 87);
      v58 = *v56;
      v57 = v56[1];
      v59 = **(this + 84);
      v60 = *(v59 + 12);
      v61 = *(v59 + 16);
      Element = ausdk::AUScope::GetElement((this + 792), 0);
      v63 = 1.0 / ((v57 + -20.0) * (v61 - v60) / 15.0 + v60);
      ausdk::AUElement::SetParameter(Element, 0x1Au, v63);
      v64 = spp3Subsystem();
      if (v64)
      {
        v65 = *v64;
        if (!*v64)
        {
          goto LABEL_123;
        }
      }

      else
      {
        v65 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
      {
        v110 = ausdk::AUScope::GetElement((this + 792), 0);
        Parameter = ausdk::AUElement::GetParameter(v110, 0x1Au);
        LODWORD(buf[0].__locale_) = 136316418;
        *(&buf[0].__locale_ + 4) = "AUSpeakerProtectionV3.cpp";
        WORD2(buf[1].__locale_) = 1024;
        *(&buf[1].__locale_ + 6) = 918;
        WORD1(buf[2].__locale_) = 1024;
        HIDWORD(buf[2].__locale_) = 0;
        LOWORD(buf[3].__locale_) = 2048;
        *(&buf[3].__locale_ + 2) = v57;
        WORD1(buf[4].__locale_) = 2048;
        *(&buf[4].__locale_ + 4) = Parameter;
        WORD2(buf[5].__locale_) = 2048;
        *(&buf[5].__locale_ + 6) = v58;
        _os_log_impl(&dword_1DDB85000, v65, OS_LOG_TYPE_DEBUG, "%25s:%-5d Ch %d, Using closed loop parameters refTemp=%f, invTempCo=%f, RebRef=%f", buf, 0x36u);
      }

LABEL_123:
      v112 = ausdk::AUScope::GetElement((this + 792), 0);
      ausdk::AUElement::GetParameter(v112, 0x14u);
      v113 = *(this + 84);
      v114 = ausdk::AUScope::GetElement((this + 792), 0);
      v115 = ausdk::AUElement::GetParameter(v114, 0x21u);
      v116 = ausdk::AUScope::GetElement((this + 792), 0);
      v117 = ausdk::AUElement::GetParameter(v116, 0x22u);
      v118 = ausdk::AUScope::GetElement((this + 792), 0);
      v119 = ausdk::AUElement::GetParameter(v118, 0x23u);
      v120 = ausdk::AUScope::GetElement((this + 792), 0);
      v121 = ausdk::AUElement::GetParameter(v120, 0x20u);
      v225 = 1;
      *&v226[4] = v121;
      *&v226[12] = 0x4059000000000000;
      *&v227 = v113;
      *(&v227 + 1) = v115;
      *&v228 = v117;
      *(&v228 + 1) = v119;
      v122 = ausdk::AUScope::GetElement((this + 792), 0);
      v123 = ausdk::AUElement::GetParameter(v122, 0x18u);
      v124 = ausdk::AUScope::GetElement((this + 792), 0);
      v125 = ausdk::AUElement::GetParameter(v124, 0x20u);
      v126 = ausdk::AUScope::GetElement((this + 792), 0);
      v127 = ausdk::AUElement::GetParameter(v126, 0x19u);
      v128 = **(this + 84);
      v217 = *(v128 + 20);
      v215 = *(v128 + 8);
      v129 = *(v128 + 44);
      v216 = *(v128 + 40);
      v130 = *(this + 84);
      v131 = ausdk::AUScope::GetElement((this + 792), 0);
      v132 = ausdk::AUElement::GetParameter(v131, 0x23u);
      *&buf[0].__locale_ = v123;
      *&buf[1].__locale_ = v125;
      *&buf[2].__locale_ = v127;
      *&buf[3].__locale_ = v58;
      *&v133 = v217;
      *(&v133 + 1) = __PAIR64__(v216, v215);
      *&buf[4].__locale_ = v133;
      LODWORD(buf[6].__locale_) = v129;
      v230 = v130;
      v231[0] = 0x4059000000000000;
      *&v231[1] = v132;
      if (*(this + 1328) == 1)
      {
        v134 = ausdk::AUScope::GetElement((this + 792), 0);
        v135 = ausdk::AUElement::GetParameter(v134, 0x2Au);
        if (v135)
        {
          v136 = spp3Subsystem();
          if (v136)
          {
            v137 = *v136;
            if (!*v136)
            {
LABEL_134:
              v140 = ausdk::AUScope::GetElement((this + 792), 0);
              ausdk::AUElement::SetParameter(v140, 0x2Au, 0.0);
              goto LABEL_135;
            }
          }

          else
          {
            v137 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v137, OS_LOG_TYPE_DEFAULT))
          {
            *__p = 136315906;
            *&__p[4] = "AUSpeakerProtectionV3.cpp";
            v219 = 1024;
            v220 = 949;
            v221 = 1024;
            v222 = v135;
            v223 = 1024;
            v224 = 0;
            _os_log_impl(&dword_1DDB85000, v137, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Using SpTS calibration: Requested displacement controller type (%u) for Ch %u is overridden to kOpenLoopDisplacement.\n", __p, 0x1Eu);
          }

          goto LABEL_134;
        }

        v138 = spp3Subsystem();
        if (v138)
        {
          v139 = *v138;
          if (!*v138)
          {
            goto LABEL_135;
          }
        }

        else
        {
          v139 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v139, OS_LOG_TYPE_DEBUG))
        {
          *__p = 136315650;
          *&__p[4] = "AUSpeakerProtectionV3.cpp";
          v219 = 1024;
          v220 = 952;
          v221 = 1024;
          v222 = 0;
          _os_log_impl(&dword_1DDB85000, v139, OS_LOG_TYPE_DEBUG, "%25s:%-5d Using SpTS calibration: Requested displacement controller for Ch %u was already kOpenLoopDisplacement, as needed.\n", __p, 0x18u);
        }
      }

LABEL_135:
      v141 = ausdk::AUScope::GetElement((this + 792), 0);
      v142 = ausdk::AUElement::GetParameter(v141, 0x2Au);
      if (v142 > 4 || ((1 << v142) & 0x16) == 0)
      {
        goto LABEL_147;
      }

      for (i = *(this + 87); ; i += 8)
      {
        if (i == *(this + 88))
        {
          goto LABEL_147;
        }

        if (*(*i + 16))
        {
          break;
        }
      }

      v144 = spp3Subsystem();
      if (v144)
      {
        v145 = *v144;
        if (!*v144)
        {
LABEL_147:
          v146 = **(this + 84);
          if (*(v146 + 48))
          {
            v147 = ausdk::AUScope::GetElement((this + 792), 0);
            *(*(v146 + 48) + 20) = ausdk::AUElement::GetParameter(v147, 0x2Fu);
            v148 = ausdk::AUScope::GetElement((this + 792), 0);
            *(*(v146 + 48) + 24) = ausdk::AUElement::GetParameter(v148, 0x30u);
            v149 = ausdk::AUScope::GetElement((this + 792), 0);
            *(*(v146 + 48) + 76) = ausdk::AUElement::GetParameter(v149, 0x31u);
            v150 = ausdk::AUScope::GetElement((this + 792), 0);
            *(*(v146 + 48) + 80) = ausdk::AUElement::GetParameter(v150, 0x32u);
            v151 = ausdk::AUScope::GetElement((this + 792), 0);
            *(*(v146 + 48) + 52) = ausdk::AUElement::GetParameter(v151, 0x33u);
            v152 = ausdk::AUScope::GetElement((this + 792), 0);
            *(*(v146 + 48) + 56) = ausdk::AUElement::GetParameter(v152, 0x34u);
            v153 = ausdk::AUScope::GetElement((this + 792), 0);
            *(*(v146 + 48) + 44) = ausdk::AUElement::GetParameter(v153, 0x35u);
            v154 = ausdk::AUScope::GetElement((this + 792), 0);
            *(*(v146 + 48) + 48) = ausdk::AUElement::GetParameter(v154, 0x36u);
            v155 = ausdk::AUScope::GetElement((this + 792), 0);
            *(*(v146 + 48) + 60) = ausdk::AUElement::GetParameter(v155, 0x37u);
            v156 = ausdk::AUScope::GetElement((this + 792), 0);
            *(*(v146 + 48) + 64) = ausdk::AUElement::GetParameter(v156, 0x38u);
            v157 = ausdk::AUScope::GetElement((this + 792), 0);
            *(*(v146 + 48) + 8) = ausdk::AUElement::GetParameter(v157, 0x3Au);
            v158 = ausdk::AUScope::GetElement((this + 792), 0);
            *(*(v146 + 48) + 4) = ausdk::AUElement::GetParameter(v158, 0x39u);
            v159 = ausdk::AUScope::GetElement((this + 792), 0);
            *(*(v146 + 48) + 28) = ausdk::AUElement::GetParameter(v159, 0x3Bu);
            v160 = ausdk::AUScope::GetElement((this + 792), 0);
            *(*(v146 + 48) + 36) = ausdk::AUElement::GetParameter(v160, 0x3Cu);
            v161 = ausdk::AUScope::GetElement((this + 792), 0);
            *(*(v146 + 48) + 84) = ausdk::AUElement::GetParameter(v161, 0x3Du);
            v162 = ausdk::AUScope::GetElement((this + 792), 0);
            *(*(v146 + 48) + 88) = ausdk::AUElement::GetParameter(v162, 0x3Eu);
            v163 = ausdk::AUScope::GetElement((this + 792), 0);
            *(*(v146 + 48) + 92) = ausdk::AUElement::GetParameter(v163, 0x3Fu);
          }

          v164 = ausdk::AUScope::GetElement((this + 792), 0);
          ausdk::AUElement::GetParameter(v164, 0);
          v165 = ausdk::AUScope::GetElement((this + 792), 0);
          ausdk::AUElement::GetParameter(v165, 1u);
          v166 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
          if (v167)
          {
            ausdk::AUElement::GetParameter(v166, 4u);
            v168 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
            if (v169)
            {
              ausdk::AUElement::GetParameter(v168, 5u);
              v170 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
              if (v171)
              {
                ausdk::AUElement::GetParameter(v170, 6u);
                v172 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                if (v173)
                {
                  ausdk::AUElement::GetParameter(v172, 7u);
                  v174 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                  if (v175)
                  {
                    ausdk::AUElement::GetParameter(v174, 2u);
                    v176 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                    if (v177)
                    {
                      ausdk::AUElement::GetParameter(v176, 3u);
                      v178 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                      if (v179)
                      {
                        ausdk::AUElement::GetParameter(v178, 9u);
                        v180 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                        if (v181)
                        {
                          ausdk::AUElement::GetParameter(v180, 0xAu);
                          v182 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                          if (v183)
                          {
                            ausdk::AUElement::GetParameter(v182, 0xBu);
                            v184 = ausdk::AUScope::GetElement((this + 792), 0);
                            ausdk::AUElement::GetParameter(v184, 9u);
                            v185 = ausdk::AUScope::GetElement((this + 792), 0);
                            ausdk::AUElement::GetParameter(v185, 0xAu);
                            v186 = ausdk::AUScope::GetElement((this + 792), 0);
                            ausdk::AUElement::GetParameter(v186, 0xBu);
                            v187 = ausdk::AUScope::GetElement((this + 792), 0);
                            ausdk::AUElement::GetParameter(v187, 0xCu);
                            v188 = ausdk::AUScope::GetElement((this + 792), 0);
                            ausdk::AUElement::GetParameter(v188, 0xDu);
                            v189 = ausdk::AUScope::GetElement((this + 792), 0);
                            ausdk::AUElement::GetParameter(v189, 0xEu);
                            v190 = ausdk::AUScope::GetElement((this + 792), 0);
                            ausdk::AUElement::GetParameter(v190, 0xFu);
                            v191 = ausdk::AUScope::GetElement((this + 792), 0);
                            ausdk::AUElement::GetParameter(v191, 0x10u);
                            v192 = ausdk::AUScope::GetElement((this + 792), 0);
                            ausdk::AUElement::GetParameter(v192, 0x11u);
                            v193 = ausdk::AUScope::GetElement((this + 792), 0);
                            ausdk::AUElement::GetParameter(v193, 0x12u);
                            v194 = ausdk::AUScope::GetElement((this + 792), 0);
                            ausdk::AUElement::GetParameter(v194, 0x13u);
                            v195 = ausdk::AUScope::GetElement((this + 792), 0);
                            ausdk::AUElement::GetParameter(v195, 2u);
                            v196 = ausdk::AUScope::GetElement((this + 792), 0);
                            ausdk::AUElement::GetParameter(v196, 3u);
                            v197 = ausdk::AUScope::GetElement((this + 792), 0);
                            ausdk::AUElement::GetParameter(v197, 4u);
                            v198 = ausdk::AUScope::GetElement((this + 792), 0);
                            ausdk::AUElement::GetParameter(v198, 5u);
                            v199 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                            if (v200)
                            {
                              ausdk::AUElement::GetParameter(v199, 8u);
                              v201 = ausdk::AUScope::GetElement((this + 792), 0);
                              ausdk::AUElement::GetParameter(v201, 6u);
                              v202 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                              if (v203)
                              {
                                ausdk::AUElement::GetParameter(v202, 0xEu);
                                v204 = ausdk::AUScope::GetElement((this + 792), 0);
                                ausdk::AUElement::GetParameter(v204, 0x1Au);
                                v205 = ausdk::AUScope::GetElement((this + 792), 0);
                                ausdk::AUElement::GetParameter(v205, 0x17u);
                                v206 = ausdk::AUScope::GetElement((this + 792), 0);
                                v207 = ausdk::AUElement::GetParameter(v206, 0x1Bu);
                                __exp10(v207 / 20.0);
                                v208 = ausdk::AUScope::GetElement((this + 792), 0);
                                v209 = ausdk::AUElement::GetParameter(v208, 0x1Cu);
                                __exp10(v209 / 20.0);
                                v210 = ausdk::AUScope::GetElement((this + 792), 0);
                                ausdk::AUElement::GetParameter(v210, 0x1Du);
                                v211 = ausdk::AUScope::GetElement((this + 792), 0);
                                ausdk::AUElement::GetParameter(v211, 0x1Eu);
                                v212 = ausdk::AUScope::GetElement((this + 792), 0);
                                ausdk::AUElement::GetParameter(v212, 0x1Fu);
                                v213 = ausdk::AUScope::GetElement((this + 792), 0);
                                ausdk::AUElement::GetParameter(v213, 0x43u);
                                v214 = ausdk::AUScope::GetElement((this + 792), 0);
                                ausdk::AUElement::GetParameter(v214, 0x44u);
                                clsp::CLSPKernel_v5PtrFactory();
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

          goto LABEL_164;
        }
      }

      else
      {
        v145 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v145, OS_LOG_TYPE_DEBUG))
      {
        *__p = 136315394;
        *&__p[4] = "AUSpeakerProtectionV3.cpp";
        v219 = 1024;
        v220 = 964;
        _os_log_impl(&dword_1DDB85000, v145, OS_LOG_TYPE_DEBUG, "%25s:%-5d Repair flag is true. Disable closed loop.", __p, 0x12u);
      }

      goto LABEL_147;
    }

    v66 = spp3Subsystem();
    if (v66)
    {
      v67 = *v66;
      if (!*v66)
      {
LABEL_108:
        v225 = 0;
        *&v226[4] = 0u;
        v227 = 0u;
        v228 = 0u;
        v68 = *(this + 84);
        memset(buf, 0, 52);
        v230 = v68;
        *v231 = xmmword_1DE09E130;
        v69 = ausdk::AUScope::GetElement((this + 792), 0);
        ausdk::AUElement::GetParameter(v69, 0);
        v70 = ausdk::AUScope::GetElement((this + 792), 0);
        ausdk::AUElement::GetParameter(v70, 1u);
        v71 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
        if (v72)
        {
          ausdk::AUElement::GetParameter(v71, 4u);
          v73 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
          if (v74)
          {
            ausdk::AUElement::GetParameter(v73, 5u);
            v75 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
            if (v76)
            {
              ausdk::AUElement::GetParameter(v75, 6u);
              v77 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
              if (v78)
              {
                ausdk::AUElement::GetParameter(v77, 7u);
                v79 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                if (v80)
                {
                  ausdk::AUElement::GetParameter(v79, 2u);
                  v81 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                  if (v82)
                  {
                    ausdk::AUElement::GetParameter(v81, 3u);
                    v83 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                    if (v84)
                    {
                      ausdk::AUElement::GetParameter(v83, 9u);
                      v85 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                      if (v86)
                      {
                        ausdk::AUElement::GetParameter(v85, 0xAu);
                        v87 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                        if (v88)
                        {
                          ausdk::AUElement::GetParameter(v87, 0xBu);
                          v89 = ausdk::AUScope::GetElement((this + 792), 0);
                          ausdk::AUElement::GetParameter(v89, 9u);
                          v90 = ausdk::AUScope::GetElement((this + 792), 0);
                          ausdk::AUElement::GetParameter(v90, 0xAu);
                          v91 = ausdk::AUScope::GetElement((this + 792), 0);
                          ausdk::AUElement::GetParameter(v91, 0xBu);
                          v92 = ausdk::AUScope::GetElement((this + 792), 0);
                          ausdk::AUElement::GetParameter(v92, 0xCu);
                          v93 = ausdk::AUScope::GetElement((this + 792), 0);
                          ausdk::AUElement::GetParameter(v93, 0xDu);
                          v94 = ausdk::AUScope::GetElement((this + 792), 0);
                          ausdk::AUElement::GetParameter(v94, 0xEu);
                          v95 = ausdk::AUScope::GetElement((this + 792), 0);
                          ausdk::AUElement::GetParameter(v95, 0xFu);
                          v96 = ausdk::AUScope::GetElement((this + 792), 0);
                          ausdk::AUElement::GetParameter(v96, 0x10u);
                          v97 = ausdk::AUScope::GetElement((this + 792), 0);
                          ausdk::AUElement::GetParameter(v97, 0x11u);
                          v98 = ausdk::AUScope::GetElement((this + 792), 0);
                          ausdk::AUElement::GetParameter(v98, 0x12u);
                          v99 = ausdk::AUScope::GetElement((this + 792), 0);
                          ausdk::AUElement::GetParameter(v99, 0x13u);
                          v100 = ausdk::AUScope::GetElement((this + 792), 0);
                          ausdk::AUElement::GetParameter(v100, 2u);
                          v101 = ausdk::AUScope::GetElement((this + 792), 0);
                          ausdk::AUElement::GetParameter(v101, 3u);
                          v102 = ausdk::AUScope::GetElement((this + 792), 0);
                          ausdk::AUElement::GetParameter(v102, 4u);
                          v103 = ausdk::AUScope::GetElement((this + 792), 0);
                          ausdk::AUElement::GetParameter(v103, 5u);
                          v104 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                          if (v105)
                          {
                            ausdk::AUElement::GetParameter(v104, 8u);
                            v106 = ausdk::AUScope::GetElement((this + 792), 0);
                            ausdk::AUElement::GetParameter(v106, 6u);
                            v107 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                            if (v108)
                            {
                              ausdk::AUElement::GetParameter(v107, 0xEu);
                              v109 = ausdk::AUScope::GetElement((this + 792), 0);
                              ausdk::AUElement::GetParameter(v109, 9u);
                              clsp::CLSPKernel_v5PtrFactory();
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

LABEL_164:
        abort();
      }
    }

    else
    {
      v67 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf[0].__locale_) = 136315650;
      *(&buf[0].__locale_ + 4) = "AUSpeakerProtectionV3.cpp";
      WORD2(buf[1].__locale_) = 1024;
      *(&buf[1].__locale_ + 6) = 1044;
      WORD1(buf[2].__locale_) = 1024;
      HIDWORD(buf[2].__locale_) = 0;
      _os_log_impl(&dword_1DDB85000, v67, OS_LOG_TYPE_DEBUG, "%25s:%-5d Ch %d, Using open loop kernel", buf, 0x18u);
    }

    goto LABEL_108;
  }
}

void sub_1DDF45B44(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void cpms::controllers::Power<float,cpms::smoothers::Exponential,clsp::AttackRelease>::Power(uint64_t a1, const char *a2, uint64_t *a3)
{
  *a1 = 1128792064;
  *(a1 + 4) = a2;
  *(a1 + 8) = 0;
  *(a1 + 12) = 0x3F8000003F000000;
  v5 = (a1 + 48);
  *(a1 + 24) = a1 + 48;
  v22 = (a1 + 24);
  v7 = *a3;
  v6 = a3[1];
  *(a1 + 32) = xmmword_1DE09E190;
  v8 = (v6 - v7) >> 5;
  if (v8 < 5)
  {
    if (v6 != v7)
    {
      v17 = (v6 - v7) >> 5;
      do
      {
        v18 = *v7;
        if (*v7)
        {
          CFRetain(*v7);
        }

        *v5 = v18;
        v19 = *(v7 + 8);
        *(v5 + 21) = *(v7 + 21);
        *(v5 + 8) = v19;
        v7 += 32;
        v5 += 32;
        --v17;
      }

      while (v17);
    }
  }

  else
  {
    if (v8 >> 58)
    {
      boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
    }

    v9 = operator new(v6 - v7);
    v10 = *v22;
    if (*v22)
    {
      v11 = *(a1 + 32);
      if (v11)
      {
        v12 = *v22;
        do
        {
          if (*v12)
          {
            CFRelease(*v12);
          }

          v12 += 4;
          --v11;
        }

        while (v11);
      }

      *(a1 + 32) = 0;
      if (v5 != v10)
      {
        operator delete(v10);
      }
    }

    *(a1 + 32) = 0;
    *(a1 + 40) = v8;
    *(a1 + 24) = v9;
    if (v7 == v6)
    {
      v16 = 0;
      v13 = v9;
    }

    else
    {
      v13 = v9;
      do
      {
        v14 = *v7;
        if (*v7)
        {
          CFRetain(*v7);
        }

        *v13 = v14;
        v15 = *(v7 + 8);
        *(v13 + 21) = *(v7 + 21);
        *(v13 + 8) = v15;
        v7 += 32;
        v13 += 32;
      }

      while (v7 != v6);
      v16 = *(a1 + 32);
    }

    v8 = v16 + ((v13 - v9) >> 5);
  }

  *(a1 + 32) = v8;
  v21 = *a3;
  v20 = a3[1];
  *(a1 + 176) = a1 + 200;
  v23 = 0;
  *(a1 + 184) = xmmword_1DE09E190;
  boost::container::vector<float,boost::container::small_vector_allocator<float,boost::container::new_allocator<void>,void>,void>::priv_resize<float,boost::move_detail::integral_constant<unsigned int,1u>>(a1 + 176, (v20 - v21) >> 5, &v23, 0);
  *(a1 + 216) = a1 + 240;
  *(a1 + 224) = xmmword_1DE09E190;
  *(a1 + 432) = a1 + 456;
  *(a1 + 440) = xmmword_1DE09E190;
  operator new();
}

void sub_1DDF45F1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void **a11, void *a12, void **a13, uint64_t a14)
{
  std::unique_ptr<clsp::CLSP_Log>::reset[abi:ne200100]((v14 + 568), 0);
  v17 = *(v14 + 560);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (*(v14 + 448) && a10 != *a13)
  {
    operator delete(*a13);
  }

  boost::container::vector<cpms::controllers::Power<float,cpms::smoothers::Exponential,clsp::AttackRelease>::GainGroup,boost::container::small_vector_allocator<cpms::controllers::Power<float,cpms::smoothers::Exponential,clsp::AttackRelease>::GainGroup,boost::container::new_allocator<void>,void>,void>::~vector(v15);
  if (*(v14 + 192))
  {
    if (a12 != *a11)
    {
      operator delete(*a11);
    }
  }

  boost::container::vector<cpms::TimeScale<float>,boost::container::small_vector_allocator<cpms::TimeScale<float>,boost::container::new_allocator<void>,void>,void>::~vector(a14);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<cpms::controllers::Power<float,cpms::smoothers::Exponential,clsp::AttackRelease>>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::unique_ptr<clsp::CLSP_Log>::reset[abi:ne200100]((v2 + 568), 0);
    v3 = *(v2 + 560);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    if (*(v2 + 448))
    {
      v4 = *(v2 + 432);
      if ((v2 + 456) != v4)
      {
        operator delete(v4);
      }
    }

    boost::container::vector<cpms::controllers::Power<float,cpms::smoothers::Exponential,clsp::AttackRelease>::GainGroup,boost::container::small_vector_allocator<cpms::controllers::Power<float,cpms::smoothers::Exponential,clsp::AttackRelease>::GainGroup,boost::container::new_allocator<void>,void>,void>::~vector(v2 + 216);
    if (*(v2 + 192))
    {
      v5 = *(v2 + 176);
      if ((v2 + 200) != v5)
      {
        operator delete(v5);
      }
    }

    boost::container::vector<cpms::TimeScale<float>,boost::container::small_vector_allocator<cpms::TimeScale<float>,boost::container::new_allocator<void>,void>,void>::~vector(v2 + 24);

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

void cpms::controllers::Power<float,cpms::smoothers::Exponential,clsp::AttackRelease>::AddGainGroup(uint64_t a1, void *a2, int a3)
{
  v18 = a3;
  v6 = *a2;
  v7 = a2[1];
  if (*a2 != v7)
  {
    do
    {
      v8 = *v6;
      if (v8 >= *(a1 + 4))
      {
        exception = __cxa_allocate_exception(0x10uLL);
        caulk::make_string("channel index %u is out of [0, %u) range", &v19, v8, *(a1 + 4));
        std::runtime_error::runtime_error(exception, &v19);
      }

      ++v6;
    }

    while (v6 != v7);
  }

  memset(v17, 0, sizeof(v17));
  v9 = a2[3];
  v10 = a2[4];
  while (v9 != v10)
  {
    v11 = *v9;
    if (*(a1 + 32) <= v11)
    {
      v15 = *v9;
      v16 = __cxa_allocate_exception(0x10uLL);
      caulk::make_string("time scale index %u is out of [0, %lu) range", &v19, v15, *(a1 + 32));
      std::runtime_error::runtime_error(v16, &v19);
    }

    std::vector<cpms::TimeScale<float>>::push_back[abi:ne200100](v17, *(a1 + 24) + 32 * v11);
    ++v9;
  }

  v12 = *(a1 + 216);
  v13 = *(a1 + 224);
  if (v13 == *(a1 + 232))
  {
    v19.__r_.__value_.__r.__words[0] = (a2 + 3);
    v19.__r_.__value_.__l.__size_ = v17;
    v19.__r_.__value_.__r.__words[2] = a2;
    v20 = &v18;
    v21 = a1;
    boost::container::vector<cpms::controllers::Power<float,cpms::smoothers::Exponential,clsp::AttackRelease>::GainGroup,boost::container::small_vector_allocator<cpms::controllers::Power<float,cpms::smoothers::Exponential,clsp::AttackRelease>::GainGroup,boost::container::new_allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<cpms::controllers::Power<float,cpms::smoothers::Exponential,clsp::AttackRelease>::GainGroup,boost::container::new_allocator<void>,void>,cpms::controllers::Power<float,cpms::smoothers::Exponential,clsp::AttackRelease>::GainGroup*,float const&,cpms::controllers::Power<float,cpms::smoothers::Exponential,clsp::AttackRelease>::SmoothingStrategy &,std::vector<unsigned int> const&,std::vector<cpms::TimeScale<float>> &,std::vector<unsigned int> const&>>(&v22, (a1 + 216), (v12 + 48 * v13), &v19);
    boost::container::vec_iterator<cpms::controllers::Power<float,cpms::smoothers::Exponential,clsp::AttackRelease>::GainGroup *,false>::operator*(v22);
  }

  else
  {
    cpms::controllers::Power<float,cpms::smoothers::Exponential,clsp::AttackRelease>::GainGroup::GainGroup(v12 + 48 * v13, a3, a2, v17, a2 + 3);
    ++*(a1 + 224);
  }

  v19.__r_.__value_.__r.__words[0] = v17;
  std::vector<cpms::TimeScale<float>>::__destroy_vector::operator()[abi:ne200100](&v19);
}

void sub_1DDF46294(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  *(v21 - 56) = &a12;
  std::vector<cpms::TimeScale<float>>::__destroy_vector::operator()[abi:ne200100]((v21 - 56));
  _Unwind_Resume(a1);
}

void sub_1DDF462D8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (v22)
  {
    __cxa_free_exception(v21);
  }

  JUMPOUT(0x1DDF462D0);
}

dispatch_object_t *std::unique_ptr<clsp::CLSP_Log>::reset[abi:ne200100](dispatch_object_t **a1, dispatch_object_t *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    clsp::CLSP_Log::~CLSP_Log(result);

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

BOOL AUSpeakerProtectionV3::CreateStreamLogs()
{
  v3 = *MEMORY[0x1E69E9840];
  AppBooleanValue = CACFPreferencesGetAppBooleanValue(@"clsp_log_input_stream", @"com.apple.coreaudio", 0);
  result = CACFPreferencesGetAppBooleanValue(@"clsp_log_output_stream", @"com.apple.coreaudio", 0);
  if (AppBooleanValue || result)
  {
    v2 = MGGetStringAnswer();
    CFStringGetCStringPtr(v2, 0x8000100u);
    operator new[]();
  }

  return result;
}

void sub_1DDF46A80(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, std::exception a37, uint64_t a38)
{
  if (a2 == 1)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    a37.__vftable = &unk_1F593AFC8;
    memcpy(&a38, exception_ptr + 8, 0x104uLL);
    __cxa_begin_catch(a1);
    operator new[]();
  }

  MEMORY[0x1E12BD130](v39, v38);
  _Unwind_Resume(a1);
}

void sub_1DDF46C1C(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1DDF46C14);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[18],double &>(applesauce::CF::TypeRef *a1, uint64_t *a2)
{
  applesauce::CF::TypeRef::TypeRef(a1, "sppv3_sample_rate");
  valuePtr = *a2;
  v4 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
  *(a1 + 1) = v4;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void sub_1DDF46CCC(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[27],unsigned int>(applesauce::CF::TypeRef *a1, int *a2)
{
  applesauce::CF::TypeRef::TypeRef(a1, "sppv3_max_frames_per_slice");
  valuePtr = *a2;
  v4 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  *(a1 + 1) = v4;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void sub_1DDF46DA0(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

void AUSpeakerProtectionV3::CAReportMessage(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  if (a1 == a2)
  {
    v9 = *a3;
    if (AudioStatisticsLibraryLoader(void)::once != -1)
    {
      dispatch_once(&AudioStatisticsLibraryLoader(void)::once, &__block_literal_global_21132);
    }

    if (AudioStatisticsLibraryLoader(void)::libSym)
    {
      v10 = AudioStatisticsLibraryLoader(void)::libSym;

      v10(v9, 0x10000000, 5);
    }
  }

  else
  {
    v5 = a1;
    v6 = AudioStatisticsLibraryLoader(void)::once;
    do
    {
      v7 = *v5;
      v8 = *a3;
      if (v6 != -1)
      {
        dispatch_once(&AudioStatisticsLibraryLoader(void)::once, &__block_literal_global_21132);
      }

      if (AudioStatisticsLibraryLoader(void)::libSym)
      {
        AudioStatisticsLibraryLoader(void)::libSym(v7, v8, 0x10000000, 5);
        v6 = AudioStatisticsLibraryLoader(void)::once;
      }

      else
      {
        v6 = -1;
      }

      ++v5;
    }

    while (v5 != a2);
  }
}

void *___Z28AudioStatisticsLibraryLoaderv_block_invoke_21136()
{
  result = dlopen("/usr/lib/libAudioStatistics.dylib", 1);
  if (result)
  {
    v1 = result;
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(result, "CreateSharedCAReportingClient");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientCreateReporterID");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientCreateReporterIDFromSessionID");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientCreatePerformanceReporterID");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientStartReporter");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientStopReporter");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientSetAudioServiceType");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientGetAudioServiceType");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientSetConfiguration");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientCopyConfiguration");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientSendMessage");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientSendSingleMessage");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientDestroyReporterID");
    result = dlsym(v1, "CAReportingClientRequestMessage");
    AudioStatisticsLibraryLoader(void)::libSym = result;
  }

  return result;
}

void std::__shared_ptr_emplace<clsp::CLSPKernel_Logs>::__on_zero_shared(void *a1)
{
  v2 = a1[26];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[24];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = a1[22];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = a1[20];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = a1[18];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = a1[16];
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = a1[14];
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v9 = a1[12];
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v10 = a1[10];
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v11 = a1[8];
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v12 = a1[6];
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v13 = a1[4];
  if (v13)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }
}

void std::__shared_ptr_emplace<clsp::CLSPKernel_Logs>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F592E440;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12BD160);
}

void CAExtAudioFile::Create(ExtAudioFileRef *this, const char *__s, const AudioStreamBasicDescription *a3, const AudioStreamBasicDescription *a4, const AudioChannelLayout *a5)
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = strlen(__s);
  v9 = CFURLCreateFromFileSystemRepresentation(0, __s, v8, 0);
  if (!v9)
  {
    if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
    {
      CAX4CCString::CAX4CCString(v13, 0xFFFFFFFF);
      *buf = 136315906;
      v15 = "CAExtAudioFile.h";
      v16 = 1024;
      v17 = 61;
      v18 = 2080;
      v19 = v13;
      v20 = 2080;
      v21 = "couldn't convert path to CFURLRef";
      _os_log_impl(&dword_1DDB85000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
    }

    exception = __cxa_allocate_exception(0x110uLL);
    CAXException::CAXException(exception, "couldn't convert path to CFURLRef", -1);
  }

  v10 = v9;
  CAExtAudioFile::Close(this);
  v11 = ExtAudioFileCreateWithURL(v10, 0x63616666u, a3, 0, 1u, this + 1);
  if (v11)
  {
    CFRelease(v10);
  }

  (*(*this + 2))(this, v11, "ExtAudioFileCreateWithURL");

  CFRelease(v10);
}

char *CAXException::FormatError(CAXException *this, char *a2, size_t a3)
{
  v7 = *MEMORY[0x1E69E9840];
  CAX4CCString::CAX4CCString(__source, this);
  strlcpy(a2, __source, a3);
  return a2;
}

uint64_t cpms::controllers::Power<float,cpms::smoothers::Exponential,clsp::AttackRelease>::GainGroup::GainGroup(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  *(result + 32) = 0;
  *result = 0u;
  *(result + 16) = 0u;
  *(result + 40) = 1065353216;
  if (a2 == 1)
  {
    operator new();
  }

  if (!a2)
  {
    operator new();
  }

  v6 = *a5;
  v5 = a5[1];
  if (v5 != *a5)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = *(v6 + 4 * v7);
      v10 = *(result + 16);
      if (!*&v10)
      {
        goto LABEL_23;
      }

      v11 = vcnt_s8(v10);
      v11.i16[0] = vaddlv_u8(v11);
      if (v11.u32[0] > 1uLL)
      {
        v12 = *(v6 + 4 * v7);
        if (*&v10 <= v9)
        {
          v12 = v9 % v10.i32[0];
        }
      }

      else
      {
        v12 = (v10.i32[0] - 1) & v9;
      }

      v13 = *(*(result + 8) + 8 * v12);
      if (!v13 || (v14 = *v13) == 0)
      {
LABEL_23:
        operator new();
      }

      while (1)
      {
        v15 = v14[1];
        if (v15 == v9)
        {
          break;
        }

        if (v11.u32[0] > 1uLL)
        {
          if (v15 >= *&v10)
          {
            v15 %= *&v10;
          }
        }

        else
        {
          v15 &= *&v10 - 1;
        }

        if (v15 != v12)
        {
          goto LABEL_23;
        }

LABEL_22:
        v14 = *v14;
        if (!v14)
        {
          goto LABEL_23;
        }
      }

      if (*(v14 + 4) != v9)
      {
        goto LABEL_22;
      }

      *(v14 + 5) = v8++;
      v7 = v8;
    }

    while (v8 < ((v5 - v6) >> 2));
  }

  return result;
}

void sub_1DDF47E38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void **a11, void **a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v26 = v23[11];
  if (v26)
  {
    v23[12] = v26;
    operator delete(v26);
  }

  v27 = *v24;
  if (*v24)
  {
    v23[9] = v27;
    operator delete(v27);
  }

  v28 = *a11;
  if (*a11)
  {
    v23[5] = v28;
    operator delete(v28);
  }

  v29 = *a12;
  if (*a12)
  {
    v23[2] = v29;
    operator delete(v29);
  }

  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x1E12BD160](v23, 0x10B1C40C9592582);
  std::__hash_table<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>>>::~__hash_table((v22 + 1));
  v30 = *v22;
  *v22 = 0;
  if (v30)
  {
    (*(*v30 + 8))(v30);
  }

  _Unwind_Resume(a1);
}

void boost::container::vector<cpms::controllers::Power<float,cpms::smoothers::Exponential,clsp::AttackRelease>::GainGroup,boost::container::small_vector_allocator<cpms::controllers::Power<float,cpms::smoothers::Exponential,clsp::AttackRelease>::GainGroup,boost::container::new_allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<cpms::controllers::Power<float,cpms::smoothers::Exponential,clsp::AttackRelease>::GainGroup,boost::container::new_allocator<void>,void>,cpms::controllers::Power<float,cpms::smoothers::Exponential,clsp::AttackRelease>::GainGroup*,float const&,cpms::controllers::Power<float,cpms::smoothers::Exponential,clsp::AttackRelease>::SmoothingStrategy &,std::vector<unsigned int> const&,std::vector<cpms::TimeScale<float>> &,std::vector<unsigned int> const&>>(void *a1, char *a2, uint64_t *a3, uint64_t a4)
{
  v4 = *(a2 + 2);
  if (v4 != *(a2 + 1))
  {
    __assert_rtn("next_capacity", "vector.hpp", 473, "additional_objects > size_type(this->m_capacity - this->m_size)");
  }

  if (v4 == 0x2AAAAAAAAAAAAAALL)
  {
    goto LABEL_31;
  }

  if (v4 >> 61 > 4)
  {
    v5 = -1;
  }

  else
  {
    v5 = 8 * v4;
  }

  if (v4 >> 61)
  {
    v6 = v5;
  }

  else
  {
    v6 = 8 * v4 / 5;
  }

  v7 = v4 + 1;
  if (v6 >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x2AAAAAAAAAAAAAALL;
  }

  v8 = v7 > v6 ? v4 + 1 : v6;
  if (v7 > 0x2AAAAAAAAAAAAAALL)
  {
LABEL_31:
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

  v33 = v8;
  v32 = *a2;
  v12 = operator new(48 * v8);
  v13 = *(a4 + 8);
  v35 = *a4;
  __p = v12;
  v14 = *(a4 + 16);
  v15 = *(a4 + 24);
  v16 = *a2;
  v17 = *(a2 + 1);
  v18 = v12;
  if (*a2 != a3)
  {
    v19 = *a2;
    v20 = v12;
    v18 = v12;
    do
    {
      v21 = v19 + 1;
      v22 = *v19;
      *v19 = 0;
      v19 += 6;
      *v18 = v22;
      v18 += 48;
      std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__hash_table((v20 + 8), v21);
      v20 = v18;
    }

    while (v19 != a3);
  }

  cpms::controllers::Power<float,cpms::smoothers::Exponential,clsp::AttackRelease>::GainGroup::GainGroup(v18, *v15, v14, v13, v35);
  v23 = &v16[6 * v17];
  if (v23 != a3)
  {
    v24 = (v18 + 56);
    v25 = a3;
    do
    {
      v26 = v25 + 1;
      v27 = *v25;
      *v25 = 0;
      v25 += 6;
      *(v24 - 8) = v27;
      v24 = std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__hash_table(v24, v26) + 48;
    }

    while (v25 != v23);
  }

  if (v16)
  {
    v28 = *(a2 + 1);
    if (v28)
    {
      v29 = (v16 + 1);
      do
      {
        std::__hash_table<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>>>::~__hash_table(v29);
        v30 = *(v29 - 8);
        *(v29 - 8) = 0;
        if (v30)
        {
          (*(*v30 + 8))(v30);
        }

        v29 += 48;
        --v28;
      }

      while (v28);
    }

    if (a2 + 24 != *a2)
    {
      operator delete(*a2);
    }
  }

  v31 = *(a2 + 1) + 1;
  *a2 = __p;
  *(a2 + 1) = v31;
  *(a2 + 2) = v33;
  *a1 = &__p[a3 - v32];
}

uint64_t boost::container::vec_iterator<cpms::controllers::Power<float,cpms::smoothers::Exponential,clsp::AttackRelease>::GainGroup *,false>::operator*(uint64_t result)
{
  if (!result)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__hash_table(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  v5 = a2[2];
  v3 = a2 + 2;
  v4 = v5;
  v6 = *(v3 - 1);
  *(result + 16) = v5;
  *(result + 8) = v6;
  *(v3 - 1) = 0;
  v7 = v3[1];
  *(result + 24) = v7;
  *(result + 32) = *(v3 + 4);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 16;
    *v3 = 0;
    v3[1] = 0;
  }

  return result;
}

uint64_t boost::container::allocator_traits<boost::container::small_vector_allocator<cpms::controllers::Power<float,cpms::smoothers::Exponential,clsp::AttackRelease>::GainGroup,boost::container::new_allocator<void>,void>>::destroy<cpms::controllers::Power<float,cpms::smoothers::Exponential,clsp::AttackRelease>::GainGroup>(uint64_t *a1)
{
  std::__hash_table<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>>>::~__hash_table((a1 + 1));
  result = *a1;
  *a1 = 0;
  if (result)
  {
    v3 = *(*result + 8);

    return v3();
  }

  return result;
}

void std::allocator<std::optional<cpms::smoothers::Exponential<float>>>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0xCCCCCCCCCCCCCCDLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

float cpms::controllers::Power<float,cpms::smoothers::Exponential,clsp::AttackRelease>::PostSmoothedGainModel::computePower(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a1 + 64);
  if (a3 >= ((*(a1 + 72) - v3) >> 2))
  {
    std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
  }

  return *(v3 + 4 * a3);
}

float cpms::controllers::Power<float,cpms::smoothers::Exponential,clsp::AttackRelease>::PostSmoothedGainModel::computeGain(uint64_t a1, float a2, uint64_t a3, unsigned int a4)
{
  v4 = *(a1 + 64);
  if (a4 >= ((*(a1 + 72) - v4) >> 2))
  {
    std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
  }

  return a2 / *(v4 + 4 * a4);
}

uint64_t cpms::controllers::Power<float,cpms::smoothers::Exponential,clsp::AttackRelease>::PostSmoothedGainModel::postProcess(uint64_t result, uint64_t a2, unsigned int a3)
{
  v3 = *(result + 56);
  v4 = *(result + 64);
  v5 = *(result + 88) + 20 * a3;
  if (*(v5 + 16) == 1)
  {
    if (*(v5 + 12) == 1)
    {
      *(v5 + 12) = 0;
    }

    else
    {
      v3 = (*(v5 + 4) * *v5) + ((1.0 - *(v5 + 4)) * v3);
    }

    *v5 = v3;
  }

  *(v4 + 4 * a3) = v3;
  return result;
}

void cpms::controllers::Power<float,cpms::smoothers::Exponential,clsp::AttackRelease>::PostSmoothedGainModel::preProcess(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = v4 - v3;
  if (v4 != v3)
  {
    v6 = 0;
    v7 = v5 >> 2;
    v8 = *(a1 + 32);
    do
    {
      *(v8 + 4 * v6) = fmaxf(*(a3 + 4 * *(v3 + 4 * v6)), 0.0);
      ++v6;
    }

    while (v7 > v6);
  }

  *(a1 + 56) = (*(*a2 + 16))(a2, a1 + 32);
}

void cpms::controllers::Power<float,cpms::smoothers::Exponential,clsp::AttackRelease>::PostSmoothedGainModel::~PostSmoothedGainModel(void *a1)
{
  *a1 = &unk_1F592E400;
  v2 = a1[11];
  if (v2)
  {
    a1[12] = v2;
    operator delete(v2);
  }

  v3 = a1[8];
  if (v3)
  {
    a1[9] = v3;
    operator delete(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  JUMPOUT(0x1E12BD160);
}

void *cpms::controllers::Power<float,cpms::smoothers::Exponential,clsp::AttackRelease>::PostSmoothedGainModel::~PostSmoothedGainModel(void *a1)
{
  *a1 = &unk_1F592E400;
  v2 = a1[11];
  if (v2)
  {
    a1[12] = v2;
    operator delete(v2);
  }

  v3 = a1[8];
  if (v3)
  {
    a1[9] = v3;
    operator delete(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void std::vector<std::optional<std::vector<cpms::smoothers::Exponential<float>>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4;
        v4 -= 4;
        if (*(v6 - 8) == 1)
        {
          v7 = *v4;
          if (*v4)
          {
            *(v6 - 3) = v7;
            operator delete(v7);
          }
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t cpms::controllers::Power<float,cpms::smoothers::Exponential,clsp::AttackRelease>::PreSmoothedGainModel::computePower(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = *(a1 + 32);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 40) - v4) >> 3) <= a3)
  {
    std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
  }

  v5 = v4 + 24 * a3;
  v6 = *(*a2 + 16);

  return v6(a2, v5);
}

uint64_t cpms::controllers::Power<float,cpms::smoothers::Exponential,clsp::AttackRelease>::PreSmoothedGainModel::computeGain(uint64_t a1, uint64_t a2, unsigned int a3, float a4)
{
  v6 = a4;
  v4 = *(a1 + 32);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 40) - v4) >> 3) <= a3)
  {
    std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
  }

  return (*(*a2 + 24))(a2, &v6, v4 + 24 * a3);
}

void *cpms::controllers::Power<float,cpms::smoothers::Exponential,clsp::AttackRelease>::PreSmoothedGainModel::postProcess(void *result, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v4 = result[1];
  v5 = result[2];
  v6 = v5 - v4;
  if (v5 != v4)
  {
    v7 = 0;
    v8 = v6 >> 2;
    v9 = *(result[4] + 24 * a3);
    v10 = result[7] + 32 * a3;
    v11 = *(v10 + 24);
    v12 = 1;
    do
    {
      v13 = fmaxf(*(a4 + 4 * *(v4 + 4 * v7)), 0.0);
      if (v11)
      {
        if (v7 >= (*(v10 + 8) - *v10) >> 4)
        {
          std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
        }

        v14 = *v10 + 16 * v7;
        if (*(v14 + 12) == 1)
        {
          *(v14 + 12) = 0;
        }

        else
        {
          v13 = (*(v14 + 4) * *v14) + ((1.0 - *(v14 + 4)) * v13);
        }

        *v14 = v13;
      }

      *(v9 + 4 * v7) = v13;
      v7 = v12;
    }

    while (v8 > v12++);
  }

  return result;
}

uint64_t cpms::controllers::Power<float,cpms::smoothers::Exponential,clsp::AttackRelease>::PreSmoothedGainModel::~PreSmoothedGainModel(uint64_t a1)
{
  v4 = (a1 + 56);
  std::vector<std::optional<std::vector<cpms::smoothers::Exponential<float>>>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = (a1 + 32);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  return MEMORY[0x1E12BD160](a1, 0xB1C402726C036);
}

{
  v4 = (a1 + 56);
  std::vector<std::optional<std::vector<cpms::smoothers::Exponential<float>>>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = (a1 + 32);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t boost::container::vector<cpms::controllers::Power<float,cpms::smoothers::Exponential,clsp::AttackRelease>::GainGroup,boost::container::small_vector_allocator<cpms::controllers::Power<float,cpms::smoothers::Exponential,clsp::AttackRelease>::GainGroup,boost::container::new_allocator<void>,void>,void>::~vector(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *a1 + 8;
    do
    {
      std::__hash_table<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>>>::~__hash_table(v3);
      v4 = *(v3 - 8);
      *(v3 - 8) = 0;
      if (v4)
      {
        (*(*v4 + 8))(v4);
      }

      v3 += 48;
      --v2;
    }

    while (v2);
  }

  if (*(a1 + 16) && a1 + 24 != *a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t boost::container::vector<cpms::TimeScale<float>,boost::container::small_vector_allocator<cpms::TimeScale<float>,boost::container::new_allocator<void>,void>,void>::~vector(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *a1;
    do
    {
      if (*v3)
      {
        CFRelease(*v3);
      }

      v3 += 4;
      --v2;
    }

    while (v2);
  }

  if (*(a1 + 16) && a1 + 24 != *a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void boost::container::vector<clsp::AttackRelease<float,float>,boost::container::small_vector_allocator<clsp::AttackRelease<float,float>,boost::container::new_allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<clsp::AttackRelease<float,float>,boost::container::new_allocator<void>,void>,clsp::AttackRelease<float,float>*>>(void *a1, char *a2, uint64_t *a3)
{
  v3 = *(a2 + 2);
  if (v3 != *(a2 + 1))
  {
    __assert_rtn("next_capacity", "vector.hpp", 473, "additional_objects > size_type(this->m_capacity - this->m_size)");
  }

  if (v3 == 0x555555555555555)
  {
    goto LABEL_26;
  }

  if (v3 >> 61 > 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = 8 * v3;
  }

  if (v3 >> 61)
  {
    v5 = v4;
  }

  else
  {
    v5 = 8 * v3 / 5;
  }

  v6 = v3 + 1;
  if (v5 >= 0x555555555555555)
  {
    v5 = 0x555555555555555;
  }

  v7 = v6 > v5 ? v3 + 1 : v5;
  if (v6 > 0x555555555555555)
  {
LABEL_26:
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

  v11 = *a2;
  v12 = operator new(24 * v7);
  v13 = v12;
  v14 = *a2;
  v15 = *(a2 + 1);
  v16 = v12;
  if (*a2)
  {
    v16 = v12;
    if (v14 != a3)
    {
      memmove(v12, *a2, a3 - v14);
      v16 = &v13[a3 - v14];
    }
  }

  *(v16 + 5) = 0;
  *v16 = 0;
  *(v16 + 1) = 0;
  if (a3)
  {
    v17 = &v14[3 * v15];
    if (v17 != a3)
    {
      memmove(v16 + 24, a3, v17 - a3);
    }
  }

  if (v14 && a2 + 24 != v14)
  {
    operator delete(v14);
    v15 = *(a2 + 1);
  }

  *a2 = v13;
  *(a2 + 1) = v15 + 1;
  *(a2 + 2) = v7;
  *a1 = &v13[a3 - v11];
}

uint64_t boost::container::vec_iterator<clsp::AttackRelease<float,float> *,false>::operator*(uint64_t result)
{
  if (!result)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<cpms::efficiency::Dummy<float> *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<cpms::efficiency::Dummy<float> *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12BD160);
}

void std::vector<std::shared_ptr<clsp::CLSPKernel_v5>>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = (v3 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = 16 * v7;
    v12 = *a2;
    *(16 * v7) = *a2;
    if (*(&v12 + 1))
    {
      atomic_fetch_add_explicit((*(&v12 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v6 = (v11 + 16);
    v13 = *a1;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    *a1 = v15;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    v5 = *(a2 + 1);
    *v3 = *a2;
    v3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v3 + 2;
  }

  *(a1 + 8) = v6;
}

void clsp::telemetry::utils::PrintNumericVector_impl<std::__wrap_iter<unsigned int const*>,std::__wrap_iter<unsigned int const*>&>(std::string *a1, unsigned int **a2, uint64_t a3)
{
  v4 = *a2;
  if (*a2 == (a3 - 4))
  {
    v13 = *v4;

    std::to_string(a1, v13);
  }

  else
  {
    std::to_string(&v17, *v4);
    v7 = std::string::append(&v17, ", ", 2uLL);
    v8 = *&v7->__r_.__value_.__l.__data_;
    v18.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v18.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    v14 = (*a2 + 1);
    clsp::telemetry::utils::PrintNumericVector_impl<std::__wrap_iter<unsigned int const*>,std::__wrap_iter<unsigned int const*>&>(__p, &v14, a3);
    if ((v16 & 0x80u) == 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    if ((v16 & 0x80u) == 0)
    {
      v10 = v16;
    }

    else
    {
      v10 = __p[1];
    }

    v11 = std::string::append(&v18, v9, v10);
    v12 = *&v11->__r_.__value_.__l.__data_;
    a1->__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&a1->__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1DDF48EA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<clsp::telemetry::Item>::__swap_out_circular_buffer(uint64_t result, void *a2)
{
  v2 = *result;
  v3 = *(result + 8);
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = (a2[1] + *result - v3);
    do
    {
      v6 = *v2++;
      *v5++ = v6;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  *(result + 8) = v2;
  a2[1] = v2;
  v7 = *(result + 8);
  *(result + 8) = a2[2];
  a2[2] = v7;
  v8 = *(result + 16);
  *(result + 16) = a2[3];
  a2[3] = v8;
  *a2 = a2[1];
  return result;
}

uint64_t std::__independent_bits_engine<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>,unsigned long>::__independent_bits_engine(uint64_t result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  if ((a3 & 0x1F) != 0)
  {
    v3 = (a3 >> 5) + 1;
  }

  else
  {
    v3 = a3 >> 5;
  }

  v4 = a3 / v3;
  *(result + 16) = a3 / v3;
  *(result + 24) = v3;
  v5 = (-1 << (a3 / v3)) & 0x100000000;
  if (a3 / v3 >= 0x40)
  {
    v5 = 0;
  }

  *(result + 40) = v5;
  if ((v5 ^ 0x100000000) > v5 / v3)
  {
    ++v3;
    v4 = a3 / v3;
    *(result + 16) = a3 / v3;
    *(result + 24) = v3;
    if (a3 / v3 > 0x3F)
    {
      *(result + 32) = v3 - a3 + (v3 << 6);
      *(result + 40) = 0;
      LOBYTE(v4) = 64;
      goto LABEL_15;
    }

    *(result + 40) = (-1 << v4) & 0x100000000;
  }

  *(result + 32) = v3 + a3 / v3 * v3 - a3;
  if (v4 >= 0x3F)
  {
LABEL_15:
    *(result + 48) = 0;
    v6 = -1;
    *(result + 56) = 0xFFFFFFFF >> -v4;
    goto LABEL_16;
  }

  *(result + 48) = 0x80000000uLL >> v4 << (v4 + 1);
  v6 = -1;
  v7 = 0xFFFFFFFF >> -v4;
  if (!v4)
  {
    v7 = 0;
  }

  *(result + 56) = v7;
  if (v4 <= 0x1E)
  {
    v6 = 0xFFFFFFFF >> ~v4;
  }

LABEL_16:
  *(result + 60) = v6;
  return result;
}

uint64_t std::__independent_bits_engine<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>,unsigned long>::__eval(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      do
      {
        v4 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(*a1);
      }

      while (*(a1 + 40) <= v4);
      v5 = *(a1 + 16);
      if (v5 >= 0x40)
      {
        v6 = 0;
      }

      else
      {
        v6 = v2 << v5;
      }

      v2 = v6 + (*(a1 + 56) & v4);
      ++v3;
      v7 = *(a1 + 32);
    }

    while (v3 < v7);
  }

  else
  {
    v2 = 0;
    v7 = 0;
  }

  for (; v7 < *(a1 + 24); ++v7)
  {
    do
    {
      v8 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(*a1);
    }

    while (*(a1 + 48) <= v8);
    v9 = *(a1 + 16);
    if (v9 >= 0x3F)
    {
      v10 = 0;
    }

    else
    {
      v10 = v2 << (v9 + 1);
    }

    v2 = v10 + (*(a1 + 60) & v8);
  }

  return v2;
}

uint64_t AUSpeakerProtectionV3::CreateExtendedElements(AUSpeakerProtectionV3 *this)
{
  ausdk::AUScope::Initialize((this + 792), this, 4, 8);
  for (i = 0; i != 8; ++i)
  {
    Element = ausdk::AUScope::GetElement((this + 792), i);
    result = (*(*Element + 40))(Element, 69);
  }

  return result;
}

void AUSpeakerProtectionV3::~AUSpeakerProtectionV3(uint64_t **this)
{
  AUSpeakerProtectionV3::~AUSpeakerProtectionV3(this);

  JUMPOUT(0x1E12BD160);
}

{
  v24 = *MEMORY[0x1E69E9840];
  *this = &unk_1F592DF58;
  v2 = spp3Subsystem();
  if (v2)
  {
    if (*(v2 + 8))
    {
      v3 = *v2;
      if (*v2)
      {
        if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
        {
          *v21 = 136315394;
          *&v21[4] = "AUSpeakerProtectionV3.cpp";
          v22 = 1024;
          v23 = 168;
          _os_log_impl(&dword_1DDB85000, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d AUSpeakerProtectionV3::~AUSpeakerProtectionV3", v21, 0x12u);
        }
      }
    }
  }

  ((*this)[8])(this);
  v4 = this[85];
  v5 = this[84];
  while (v4 != v5)
  {
    v4 = std::unique_ptr<clsp::ClosedLoopParameters>::~unique_ptr[abi:ne200100](v4 - 1);
  }

  this[85] = v5;
  v6 = this[88];
  v7 = this[87];
  while (v6 != v7)
  {
    v6 = std::unique_ptr<clsp::SpeakerCalibrationProperties>::~unique_ptr[abi:ne200100](v6 - 1);
  }

  this[88] = v7;
  v8 = this[171];
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v9 = this[167];
  if (v9)
  {
    this[168] = v9;
    operator delete(v9);
  }

  v10 = this[152];
  if (v10)
  {
    this[153] = v10;
    operator delete(v10);
  }

  v11 = this[149];
  if (v11)
  {
    this[150] = v11;
    operator delete(v11);
  }

  *v21 = this + 142;
  std::vector<std::shared_ptr<IR::SharedIRBuses::IRBus>>::__destroy_vector::operator()[abi:ne200100](v21);
  CAExtAudioFile::~CAExtAudioFile((this + 140));
  CAExtAudioFile::~CAExtAudioFile((this + 138));
  CAExtAudioFile::~CAExtAudioFile((this + 136));
  *v21 = this + 133;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v21);
  v12 = this[130];
  if (v12)
  {
    this[131] = v12;
    operator delete(v12);
  }

  v13 = this[127];
  if (v13)
  {
    this[128] = v13;
    operator delete(v13);
  }

  *v21 = this + 124;
  std::vector<cpms::TimeScale<float>>::__destroy_vector::operator()[abi:ne200100](v21);
  v14 = this[121];
  if (v14)
  {
    this[122] = v14;
    operator delete(v14);
  }

  if (*(this + 944) == 1)
  {
    *v21 = this + 115;
    std::vector<cpms::controllers::Power<float,cpms::smoothers::Exponential,clsp::AttackRelease>::GainGroupDescription,std::allocator<cpms::controllers::Power<float,cpms::smoothers::Exponential,clsp::AttackRelease>::GainGroupDescription>>::__destroy_vector::operator()[abi:ne200100](v21);
  }

  v15 = this[113];
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  std::unique_ptr<cpms::controllers::Power<float,cpms::smoothers::Exponential,clsp::AttackRelease>>::reset[abi:ne200100](this + 111, 0);
  *v21 = this + 108;
  std::vector<std::vector<std::shared_ptr<clsp::CLSPKernel_v5>>>::__destroy_vector::operator()[abi:ne200100](v21);
  *v21 = this + 105;
  std::vector<std::shared_ptr<IR::SharedIRBuses::IRBus>>::__destroy_vector::operator()[abi:ne200100](v21);
  *v21 = this + 101;
  std::vector<std::unique_ptr<ausdk::AUElement>>::__destroy_vector::operator()[abi:ne200100](v21);
  if (*(this + 776) == 1)
  {
    v16 = this[94];
    if (v16)
    {
      this[95] = v16;
      operator delete(v16);
    }
  }

  v17 = this[91];
  if (v17)
  {
    this[92] = v17;
    operator delete(v17);
  }

  *v21 = this + 87;
  std::vector<std::unique_ptr<clsp::SpeakerCalibrationProperties>>::__destroy_vector::operator()[abi:ne200100](v21);
  *v21 = this + 84;
  std::vector<std::unique_ptr<clsp::ClosedLoopParameters>>::__destroy_vector::operator()[abi:ne200100](v21);
  CACFDictionary::~CACFDictionary((this + 82));
  if (*(this + 616) == 1)
  {
    v18 = this[74];
    if (v18)
    {
      operator delete(v18);
    }
  }

  if (*(this + 584) == 1)
  {
    v19 = this[70];
    if (v19)
    {
      operator delete(v19);
    }
  }

  v20 = this[67];
  if (v20)
  {
    operator delete(v20);
  }

  ausdk::AUBase::~AUBase(this);
}

void sub_1DDF494D4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void CAExtAudioFile::~CAExtAudioFile(CAExtAudioFile *this)
{
  *this = &unk_1F592EA50;
  CAExtAudioFile::Close(this);
}

{
  CAExtAudioFile::~CAExtAudioFile(this);

  JUMPOUT(0x1E12BD160);
}

void std::vector<std::vector<std::shared_ptr<clsp::CLSPKernel_v5>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 3;
        v6 = v4;
        std::vector<std::shared_ptr<IR::SharedIRBuses::IRBus>>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::unique_ptr<clsp::ClosedLoopParameters>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 = std::unique_ptr<clsp::ClosedLoopParameters>::~unique_ptr[abi:ne200100](v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void CAExtAudioFile::CheckProperty(CAExtAudioFile *this, int a2, const char *a3, int a4)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v6[0] = HIBYTE(a4);
    v6[1] = BYTE2(a4);
    v6[2] = BYTE1(a4);
    v6[3] = a4;
    v6[4] = 0;
    snprintf(__str, 0x80uLL, "%s ('%s') failed", a3, v6);
    exception = __cxa_allocate_exception(0x110uLL);
    CAXException::CAXException(exception, __str, a2);
  }
}

void CAExtAudioFile::Check(CAExtAudioFile *this, int a2, const char *a3)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    snprintf(__str, 0x80uLL, "%s failed", a3);
    exception = __cxa_allocate_exception(0x110uLL);
    CAXException::CAXException(exception, __str, a2);
  }
}

uint64_t cpms::TimeScale<float>::TimeScale(uint64_t a1, char *__s)
{
  v4 = strlen(__s);
  if (__s)
  {
    v5 = CFStringCreateWithBytes(0, __s, v4, 0x8000100u, 0);
    *a1 = v5;
    if (!v5)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  else
  {
    *a1 = 0;
  }

  *(a1 + 8) = 0;
  *(a1 + 12) = 0;
  *(a1 + 16) = 0;
  *(a1 + 20) = 0;
  *(a1 + 24) = 0;
  *(a1 + 28) = 0;
  return a1;
}

uint64_t AUControlFreak::SupportedNumChannels(AUControlFreak *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUControlFreak::SupportedNumChannels(AUChannelInfo const**)::kSupportedNumChannels;
  }

  return 1;
}

uint64_t AUControlFreak::GetParameterValueStrings(AUControlFreak *this, unsigned int a2, unsigned int a3, const __CFArray **a4)
{
  if (!a4 || *(*(this + 211) + 4 * a3) != 12)
  {
    return 4294956418;
  }

  v5 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  for (i = 0; i != 5; ++i)
  {
    v8 = CFStringCreateWithCString(v5, _ZGRN6DspLib10SaturationL22kSaturationFlavorNamesE_[i], 0x8000100u);
    CFArrayAppendValue(Mutable, v8);
  }

  result = 0;
  *a4 = Mutable;
  return result;
}

uint64_t AUControlFreak::Reset(AUControlFreak *this)
{
  if (*(this + 17) == 1)
  {
    caulk::pooled_semaphore_mutex::_lock((this + 1824));
    for (i = 0; i != 1008; i += 56)
    {
      v3 = *(this + i + 528);
      if (v3)
      {
        DspLib::ControlFreak::Algorithm::clearAudioBuffers(v3);
      }
    }

    caulk::pooled_semaphore_mutex::_unlock((this + 1824));
  }

  return 0;
}

void AUControlFreak::~AUControlFreak(AUControlFreak *this)
{
  AUDspLib::~AUDspLib(this);

  JUMPOUT(0x1E12BD160);
}

void sub_1DDF49D10(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    if (a2 == 3)
    {
      v4 = __cxa_begin_catch(exception_object);
      v5 = (*(*v4 + 16))(v4);
      v6 = strlen(v5);
      v7 = _os_log_pack_size() + 88;
      message = caulk::deferred_logger::create_message(*(*(v2 + 32) + 152), v6 + v7 + 1, 16);
      if (message)
      {
        v9 = message;
        v10 = (message + v7);
        v11 = _os_log_pack_fill();
        v12 = *(v2 + 32);
        v13 = (*(*v4 + 16))(v4);
        stpcpy(v10, v13);
        v14 = v4[2];
        *v11 = 134218498;
        *(v11 + 4) = v12;
        *(v11 + 12) = 2080;
        *(v11 + 14) = v10;
        *(v11 + 22) = 1024;
        *(v11 + 24) = v14;
        caulk::concurrent::messenger::enqueue(*(*(*(v2 + 32) + 152) + 16), v9);
      }
    }

    else
    {
      v15 = __cxa_begin_catch(exception_object);
      if (a2 == 2)
      {
        v16 = v15;
        v17 = (*(*v15 + 16))(v15);
        v18 = strlen(v17);
        v19 = _os_log_pack_size() + 88;
        v20 = caulk::deferred_logger::create_message(*(*(v2 + 32) + 152), v18 + v19 + 1, 16);
        if (v20)
        {
          v21 = v20;
          v22 = (v20 + v19);
          v23 = _os_log_pack_fill();
          v24 = *(v2 + 32);
          v25 = (*(*v16 + 16))(v16);
          stpcpy(v22, v25);
          *v23 = 134218242;
          *(v23 + 4) = v24;
          *(v23 + 12) = 2080;
          *(v23 + 14) = v22;
          caulk::concurrent::messenger::enqueue(*(*(*(v2 + 32) + 152) + 16), v21);
        }
      }

      else
      {
        v26 = _os_log_pack_size();
        v27 = caulk::deferred_logger::create_message(*(*(v2 + 32) + 152), v26 + 88, 16);
        if (v27)
        {
          v28 = v27;
          v29 = _os_log_pack_fill();
          v30 = *(v2 + 32);
          *v29 = 134217984;
          *(v29 + 4) = v30;
          v31 = *(*(*(v2 + 32) + 152) + 16);
          v32 = v30;
          caulk::concurrent::messenger::enqueue(v31, v28);
        }
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x1DDF49CD8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DDF4A874(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1DDF4B71C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (*(v17 - 105) < 0)
  {
    operator delete(*(v17 - 128));
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  if ((*(v17 - 144) & 1) == 0)
  {
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted((v17 - 152));
  }

  _Unwind_Resume(a1);
}

void sub_1DDF4B810(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = AudioDSPUplinkSpeechMixer_v2;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t AudioDSPUplinkSpeechMixerLoadPropertyList(NSString *a1)
{
  v1 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:a1];
  v4 = 100;
  v2 = [MEMORY[0x1E696AE40] propertyListWithData:v1 options:0 format:&v4 error:0];

  return v2;
}

void sub_1DDF4C7D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

void sub_1DDF4C870(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_1DDF4C9D4(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_1DDF4CA90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void std::vector<CinematicAudioMetadata::KeyValuePair>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 3;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 8 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 3)
    {
      if (!(a2 >> 61))
      {
        v8 = v7 - v3;
        v9 = v8 >> 2;
        if (v8 >> 2 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        if (!(v10 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    bzero(a1[1], 8 * v6);
    v11 = v4 + 8 * v6;
  }

  a1[1] = v11;
}

uint64_t AUADAMSink::SupportedNumChannels(AUADAMSink *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUADAMSink::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannels;
  }

  return 1;
}

uint64_t AUADAMSink::SetBusCount(AUADAMSink *this, int a2, unsigned int a3)
{
  if (*(this + 17))
  {
    return 4294956447;
  }

  if (a2 != 2)
  {
    return 4294956430;
  }

  if (a3 > 1)
  {
    return 4294956445;
  }

  ausdk::AUScope::SetNumberOfElements((this + 128), a3);
  return 0;
}

uint64_t AUADAMSink::ProcessMultipleBufferLists(AUADAMSink *this, unsigned int *a2, uint64_t a3, unsigned int a4, const AudioBufferList **a5, int a6, AudioBufferList **a7)
{
  if (*(this + 84) < a3)
  {
    return 4294956422;
  }

  if (a6 == 1)
  {
    v12 = 0;
    for (i = 16; ; i += 16)
    {
      Element = ausdk::AUScope::GetElement((this + 80), 0);
      if (!Element)
      {
        ausdk::Throw(0xFFFFD583);
      }

      if (v12 >= *(Element + 108))
      {
        break;
      }

      v15 = *(&(*a5)->mNumberBuffers + i);
      v16 = *(&(*a7)->mNumberBuffers + i);
      if (v15 != v16)
      {
        memcpy(v16, v15, 4 * a3);
      }

      ++v12;
    }
  }

  if ((*(this + 552) & 1) != 0 || *(this + 540) != 1)
  {
    return 0;
  }

  v17 = *(this + 66);
  v18 = *(this + 134);
  v19 = *a5;
  if (AudioDataAnalysisManagerLibraryLoader(void)::once != -1)
  {
    dispatch_once(&AudioDataAnalysisManagerLibraryLoader(void)::once, &__block_literal_global_21548);
  }

  v20 = AudioDataAnalysisManagerLibraryLoader(void)::libSym;
  if (!AudioDataAnalysisManagerLibraryLoader(void)::libSym)
  {
    return 560033897;
  }

  return v20(v17, v18, v19, a3, this + 272);
}

void ___Z37AudioDataAnalysisManagerLibraryLoaderv_block_invoke()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = dlopen("/usr/lib/libAudioIssueDetector.dylib", 1);
  if (v0)
  {
    goto LABEL_5;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = 136315138;
    v4 = dlerror();
    _os_log_error_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "dlerror : libAudioIssueDetector ADAM: %s", &v3, 0xCu);
  }

  v0 = dlopen("/usr/local/lib/libAudioIssueDetector.dylib", 1);
  if (v0)
  {
LABEL_5:
    v1 = v0;
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v0, "AudioDataAnalysisManagerCreate");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerDispose");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerReset");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerUpdateReportingSessions");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerCreateNodePCM");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerCreateNodeSPL");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerRemoveNode");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerInitialize");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerIsSessionInitialized");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerProcessAudio");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerProcessSPL");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerCreateNodeEnvSPL");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerCreateNodeEnvSoundClass");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerCreateNodeMicLevel");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerProcessEnvSPL");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerProcessEnvSoundClass");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerProcessMicLevel");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerSetDeviceInfo");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerRegisterDeviceInfo");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerSetDeviceConnectionState");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerStartServices");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerConnectedWiredDeviceIsHeadphone");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerSetApplicationBundleID");
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = dlerror();
    v3 = 136315138;
    v4 = v2;
    _os_log_error_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "dlerror : libAudioIssueDetector ADAM: %s", &v3, 0xCu);
  }
}

uint64_t AUADAMSink::SetProperty(AUADAMSink *this, int a2, int a3, unsigned int a4, CFTypeRef *a5, int a6)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  if (a2 <= 1936158316)
  {
    if (a2 == 21)
    {
      if (a6 == 4)
      {
        result = 0;
        *(this + 552) = *a5 != 0;
        return result;
      }

      return 4294956445;
    }

    if (a2 != 1936157028)
    {
      return result;
    }

    if ((*(this + 17) & 1) == 0)
    {
      if (a6 == 4)
      {
        *(this + 134) = *a5;
        *(this + 540) = 1;
        log = AU::ADAMSink::get_log(0xFFFFD581);
        result = os_log_type_enabled(log, OS_LOG_TYPE_INFO);
        if (result)
        {
          if ((*(this + 540) & 1) == 0)
          {
            std::__throw_bad_optional_access[abi:ne200100]();
          }

          v9 = *(this + 134);
          *buf = 136315650;
          *&buf[4] = "AUADAMSink.cpp";
          v23 = 1024;
          v24 = 216;
          v25 = 1024;
          LODWORD(v26) = v9;
          v10 = "%s:%-5d Signal index set by user : %u";
          v11 = log;
          v12 = 24;
          goto LABEL_18;
        }

        return result;
      }

      return 4294956445;
    }

    return 4294956447;
  }

  if (a2 == 1936158317)
  {
    if ((*(this + 17) & 1) == 0)
    {
      result = 4294956445;
      if (a5)
      {
        if (a6 == 8)
        {
          v15 = *a5;
          applesauce::CF::details::Retain<__CFString const*>(*a5);
          applesauce::CF::StringRef::StringRef(buf, v15);
          v16 = *(this + 68);
          *(this + 68) = *buf;
          *buf = v16;
          applesauce::CF::StringRef::~StringRef(buf);
          v18 = AU::ADAMSink::get_log(v17);
          result = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
          if (result)
          {
            applesauce::CF::StringRef_proxy::StringRef_proxy(buf, (this + 544));
            applesauce::CF::convert_to<std::string,0>(__p, **buf);
            if (v21 >= 0)
            {
              v19 = __p;
            }

            else
            {
              v19 = __p[0];
            }

            *buf = 136315650;
            *&buf[4] = "AUADAMSink.cpp";
            v23 = 1024;
            v24 = 225;
            v25 = 2080;
            v26 = v19;
            _os_log_impl(&dword_1DDB85000, v18, OS_LOG_TYPE_INFO, "%s:%-5d Signal name set by user : %s", buf, 0x1Cu);
            if (v21 < 0)
            {
              operator delete(__p[0]);
            }

            return 0;
          }
        }
      }

      return result;
    }

    return 4294956447;
  }

  if (a2 != 1936943460)
  {
    return result;
  }

  if (*(this + 17))
  {
    return 4294956447;
  }

  if (a6 != 8)
  {
    return 4294956445;
  }

  *(this + 66) = *a5;
  v13 = AU::ADAMSink::get_log(0xFFFFD581);
  result = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
  if (result)
  {
    v14 = *(this + 66);
    *buf = 136315650;
    *&buf[4] = "AUADAMSink.cpp";
    v23 = 1024;
    v24 = 208;
    v25 = 2048;
    v26 = v14;
    v10 = "%s:%-5d Session ID set by user : %llu";
    v11 = v13;
    v12 = 28;
LABEL_18:
    _os_log_impl(&dword_1DDB85000, v11, OS_LOG_TYPE_INFO, v10, buf, v12);
    return 0;
  }

  return result;
}

uint64_t AU::ADAMSink::get_log(AU::ADAMSink *this)
{
  v1 = &xmmword_1ECDA9000;
  {
    v1 = &xmmword_1ECDA9000;
    if (v3)
    {
      AU::ADAMSink::get_log(void)::auadam_os_log = os_log_create("com.apple.coreaudio", "AUADAMSink");
      v1 = &xmmword_1ECDA9000;
    }
  }

  return *(v1 + 390);
}

uint64_t AUADAMSink::GetProperty(AUADAMSink *this, int a2, int a3, unsigned int a4, void *a5)
{
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  if (a2 > 1936158316)
  {
    if (a2 == 1936158317)
    {
      v9 = *(this + 68);
      if (v9)
      {
        CFRetain(*(this + 68));
      }

      result = 0;
      *a5 = v9;
    }

    else if (a2 == 1936943460)
    {
      result = 0;
      *a5 = *(this + 66);
    }
  }

  else
  {
    if (a2 == 21)
    {
      result = 0;
      v8 = *(this + 552);
LABEL_18:
      *a5 = v8;
      return result;
    }

    if (a2 == 1936157028)
    {
      if (*(this + 540) == 1)
      {
        v8 = *(this + 134);
      }

      else
      {
        v8 = 0;
      }

      result = 0;
      goto LABEL_18;
    }
  }

  return result;
}

uint64_t AUADAMSink::GetPropertyInfo(AUADAMSink *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  if (a2 <= 1936158316)
  {
    if (a2 == 21)
    {
      *a5 = 4;
      v9 = 1;
      goto LABEL_12;
    }

    if (a2 != 1936157028)
    {
      return result;
    }

    v8 = 4;
LABEL_10:
    *a5 = v8;
    v9 = *(this + 17) ^ 1;
LABEL_12:
    result = 0;
    *a6 = v9 & 1;
    return result;
  }

  if (a2 == 1936158317 || a2 == 1936943460)
  {
    v8 = 8;
    goto LABEL_10;
  }

  return result;
}

uint64_t AUADAMSink::Initialize(AUADAMSink *this)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = *(this + 21);
  if (v2)
  {
    LODWORD(v3) = (*(*v2 + 24))(v2);
  }

  else
  {
    v3 = (*(this + 19) - *(this + 18)) >> 3;
  }

  if (v3 != 1)
  {
    goto LABEL_14;
  }

  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element || (v5 = Element, (v6 = ausdk::AUScope::GetElement((this + 128), 0)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  if (v5[10] == v6[2].mSampleRate && *(v5 + 22) == v6[2].mFormatID && *(v5 + 24) == v6[2].mBytesPerPacket && *(v5 + 25) == v6[2].mFramesPerPacket && *(v5 + 27) == v6[2].mChannelsPerFrame && *(v5 + 28) == v6[2].mBitsPerChannel && CA::Implementation::EquivalentFormatFlags((v5 + 10), v6 + 2, v7))
  {
LABEL_14:
    v8 = *(this + 68);
    if (*(this + 540) == 1)
    {
      if (v8)
      {
        v9 = *(this + 66);
        v10 = *(this + 134);
        applesauce::CF::convert_to<std::string,0>(buf, v8);
        v11 = ausdk::AUScope::GetElement((this + 80), 0);
        if (!v11)
        {
          ausdk::Throw(0xFFFFD583);
        }

        if (AudioDataAnalysisManagerLibraryLoader(void)::once != -1)
        {
          v17 = v11;
          dispatch_once(&AudioDataAnalysisManagerLibraryLoader(void)::once, &__block_literal_global_21548);
          v11 = v17;
        }

        if (AudioDataAnalysisManagerLibraryLoader(void)::libSym)
        {
          v12 = AudioDataAnalysisManagerLibraryLoader(void)::libSym(v9, v10, buf, v11 + 80);
        }

        else
        {
          v12 = 560033897;
        }

        if (SBYTE3(v22) < 0)
        {
          operator delete(*buf);
        }

        if (v12)
        {
          {
            AU::ADAMSink::get_log(void)::auadam_os_log = os_log_create("com.apple.coreaudio", "AUADAMSink");
          }

          v14 = AU::ADAMSink::get_log(void)::auadam_os_log;
          if (os_log_type_enabled(AU::ADAMSink::get_log(void)::auadam_os_log, OS_LOG_TYPE_ERROR))
          {
            v15 = *(this + 66);
            *buf = 136315650;
            *&buf[4] = "AUADAMSink.cpp";
            v19 = 1024;
            v20 = 75;
            v21 = 2048;
            v22 = v15;
            _os_log_impl(&dword_1DDB85000, v14, OS_LOG_TYPE_ERROR, "%s:%-5d error creating PCM node with session ID: %llu", buf, 0x1Cu);
          }
        }

        return v12;
      }
    }

    else if (!v8)
    {
      return 0;
    }

    return 4294956445;
  }

  {
    AU::ADAMSink::get_log(void)::auadam_os_log = os_log_create("com.apple.coreaudio", "AUADAMSink");
  }

  v13 = AU::ADAMSink::get_log(void)::auadam_os_log;
  if (os_log_type_enabled(AU::ADAMSink::get_log(void)::auadam_os_log, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "AUADAMSink.cpp";
    v19 = 1024;
    v20 = 54;
    _os_log_impl(&dword_1DDB85000, v13, OS_LOG_TYPE_ERROR, "%s:%-5d input and output formats do not match", buf, 0x12u);
  }

  return 4294956428;
}

void AUADAMSink::~AUADAMSink(AUADAMSink *this)
{
  AUADAMSink::~AUADAMSink(this);

  JUMPOUT(0x1E12BD160);
}

{
  v8 = *MEMORY[0x1E69E9840];
  {
    AU::ADAMSink::get_log(void)::auadam_os_log = os_log_create("com.apple.coreaudio", "AUADAMSink");
  }

  v2 = AU::ADAMSink::get_log(void)::auadam_os_log;
  if (os_log_type_enabled(AU::ADAMSink::get_log(void)::auadam_os_log, OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "AUADAMSink.cpp";
    v6 = 1024;
    v7 = 36;
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_INFO, "%s:%-5d destroyed", &v4, 0x12u);
  }

  v3 = *(this + 68);
  if (v3)
  {
    CFRelease(v3);
  }

  ausdk::AUBase::~AUBase(this);
}

void sub_1DDF4DB14(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

AUSM::IRManager::ReverbBusConfig *AUSM::IRManager::ReverbBusConfig::ReverbBusConfig(AUSM::IRManager::ReverbBusConfig *this)
{
  IR::IRDataAttributes::IRDataAttributes(this, 0, 0, 0, 2, 0, 0.0);
  *(this + 38) = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *(this + 156) = _D0;
  *(this + 164) = 0;
  IR::IRDataAttributes::IRDataAttributes(this + 168, 0, 0, 0, 2, 0, 0.0);
  *(this + 80) = 0;
  *(this + 324) = 0x3F8000003F800000;
  *(this + 332) = 0;
  return this;
}

void sub_1DDF4DBB8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::URLRef::~URLRef(va);
  IR::IRDataAttributes::~IRDataAttributes(v2);
  _Unwind_Resume(a1);
}

void AUSM::IRManager::updateHRIRAttributes(AUSM::IRManager *this)
{
  v73 = *MEMORY[0x1E69E9840];
  std::mutex::lock((this + 1560));
  v2 = atomic_load((*this + 160));
  AUSM::AppleSauceCFWithMutex<__CFURL const*>::load(&cf, *this + 248);
  v3 = cf;
  if (cf)
  {
    CFRetain(cf);
    v59[2] = v3;
    IR::IRDataAttributes::IRDataAttributes(&v61, v3, 128, (v2 & 1) == 0, 2, 0, 0.0);
    v4 = *(this + 8);
    *(this + 8) = v61;
    v61 = v4;
    *(this + 72) = v62;
    *(this + 88) = v63;
    *(this + 104) = v64;
    *(this + 120) = v65;
    v5 = *(this + 16);
    *(this + 16) = v66;
    v66 = v5;
    *(this + 136) = v67;
    v6 = *(this + 19);
    *(this + 19) = v68;
    v68 = v6;
    v7 = v69[0];
    *(this + 169) = *(v69 + 9);
    *(this + 10) = v7;
    v8 = *(this + 24);
    *(this + 52) = v72;
    v9 = v70;
    v10 = v71;
    v70 = v8;
    *(this + 24) = v9;
    *(this + 25) = v10;
    if (v8)
    {
      CFRelease(v8);
      v6 = v68;
    }

    if (v6)
    {
      CFRelease(v6);
    }

    if (v66)
    {
      CFRelease(v66);
    }

    if (v61)
    {
      CFRelease(v61);
    }

    CFRelease(v3);
    goto LABEL_39;
  }

  v11 = atomic_load((*this + 1660));
  if (v11 == 2)
  {
    IR::getPresetDataAttributes();
    v20 = *(this + 8);
    *(this + 8) = v61;
    v61 = v20;
    *(this + 72) = v62;
    *(this + 88) = v63;
    *(this + 104) = v64;
    *(this + 120) = v65;
    v21 = *(this + 16);
    *(this + 16) = v66;
    v66 = v21;
    *(this + 136) = v67;
    v22 = *(this + 19);
    *(this + 19) = v68;
    v68 = v22;
    v23 = v69[0];
    *(this + 169) = *(v69 + 9);
    *(this + 10) = v23;
    v24 = *(this + 24);
    *(this + 52) = v72;
    v25 = v70;
    v26 = v71;
    v70 = v24;
    *(this + 24) = v25;
    *(this + 25) = v26;
    if (v24)
    {
      CFRelease(v24);
      v22 = v68;
    }

    if (v22)
    {
      CFRelease(v22);
    }

    if (v66)
    {
      CFRelease(v66);
    }

    v19 = v61;
    if (!v61)
    {
      goto LABEL_37;
    }
  }

  else if (v11 == 1)
  {
    IR::getPresetDataAttributes();
    v12 = *(this + 8);
    *(this + 8) = v61;
    v61 = v12;
    *(this + 72) = v62;
    *(this + 88) = v63;
    *(this + 104) = v64;
    *(this + 120) = v65;
    v13 = *(this + 16);
    *(this + 16) = v66;
    v66 = v13;
    *(this + 136) = v67;
    v14 = *(this + 19);
    *(this + 19) = v68;
    v68 = v14;
    v15 = v69[0];
    *(this + 169) = *(v69 + 9);
    *(this + 10) = v15;
    v16 = *(this + 24);
    *(this + 52) = v72;
    v17 = v70;
    v18 = v71;
    v70 = v16;
    *(this + 24) = v17;
    *(this + 25) = v18;
    if (v16)
    {
      CFRelease(v16);
      v14 = v68;
    }

    if (v14)
    {
      CFRelease(v14);
    }

    if (v66)
    {
      CFRelease(v66);
    }

    v19 = v61;
    if (!v61)
    {
      goto LABEL_37;
    }
  }

  else
  {
    IR::getPresetDataAttributes();
    v27 = *(this + 8);
    *(this + 8) = v61;
    v61 = v27;
    *(this + 72) = v62;
    *(this + 88) = v63;
    *(this + 104) = v64;
    *(this + 120) = v65;
    v28 = *(this + 16);
    *(this + 16) = v66;
    v66 = v28;
    *(this + 136) = v67;
    v29 = *(this + 19);
    *(this + 19) = v68;
    v68 = v29;
    v30 = v69[0];
    *(this + 169) = *(v69 + 9);
    *(this + 10) = v30;
    v31 = *(this + 24);
    *(this + 52) = v72;
    v32 = v70;
    v33 = v71;
    v70 = v31;
    *(this + 24) = v32;
    *(this + 25) = v33;
    if (v31)
    {
      CFRelease(v31);
      v29 = v68;
    }

    if (v29)
    {
      CFRelease(v29);
    }

    if (v66)
    {
      CFRelease(v66);
    }

    v19 = v61;
    if (!v61)
    {
      goto LABEL_37;
    }
  }

  CFRelease(v19);
LABEL_37:
  *(this + 80) = (v2 & 1) == 0;
  if (v2)
  {
    *(this + 19) = 128;
  }

LABEL_39:
  *(this + 18) = *(this + 8);
  isEnabledFeature = AUSM::GlobalProperties::isEnabledFeature(*this, @"SourceExtent");
  if (isEnabledFeature)
  {
    isEnabledFeature = _os_feature_enabled_impl();
    if (!isEnabledFeature)
    {
      v41 = 1;
      goto LABEL_61;
    }

    applesauce::CF::StringRef::from_get(&v58, @"sizes");
    AUSM::AppleSauceCFWithMutex<__CFArray const*>::load(&v57, *this + 2272);
    applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::ArrayRef>(&v61, v58, &v57);
    applesauce::CF::StringRef::from_get(&v56, @"orders");
    AUSM::AppleSauceCFWithMutex<__CFArray const*>::load(&v55, *this + 2344);
    applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::ArrayRef>(&v62 + 1, v56, &v55);
    applesauce::CF::StringRef::from_get(&v54, @"grid");
    v35 = atomic_load((*this + 2416));
    v53 = v35;
    applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,unsigned int>(&v63 + 1, v54, &v53);
    v59[0] = &v61;
    v59[1] = 3;
    CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(v59);
    v37 = *(this + 24);
    *(this + 24) = CFDictionaryRef;
    if (v37)
    {
      CFRelease(v37);
    }

    for (i = 0; i != -48; i -= 16)
    {
      v39 = *(&v64 + i);
      if (v39)
      {
        CFRelease(v39);
      }

      v40 = *(&v63 + i + 8);
      if (v40)
      {
        CFRelease(v40);
      }
    }

    if (v54)
    {
      CFRelease(v54);
    }

    if (v55)
    {
      CFRelease(v55);
    }

    if (v56)
    {
      CFRelease(v56);
    }

    if (v57)
    {
      CFRelease(v57);
    }

    isEnabledFeature = v58;
    if (v58)
    {
      CFRelease(v58);
    }
  }

  v41 = 0;
LABEL_61:
  *(this + 184) = v41;
  if (cf || (v42 = atomic_load((*this + 1656))) == 0)
  {
    atomic_store(0, (*this + 3056));
  }

  else
  {
    v43 = atomic_load((*this + 1660));
    if (v43 != 1)
    {
      v43 = 2;
    }

    atomic_store(v43, (*this + 3056));
  }

  v44 = atomic_load((*this + 3056));
  *(this + 28) = v44;
  LOBYTE(v44) = atomic_load((*this + 1649));
  *(this + 120) = (v44 & 1) == 0;
  atomic_store(0, this + 9);
  if (!atomic_load((*this + 3056)))
  {
    v46 = atomic_load((*this + 160));
    if (v46)
    {
      if (*(this + 19))
      {
        v47 = IR::IRDataLoader::instance(isEnabledFeature);
        FilterLength = IR::IRDataLoader::getFilterLength(v47, (this + 64));
        if (FilterLength)
        {
          v49 = *(this + 19);
          if (FilterLength < v49)
          {
            v50 = 1 << -__clz(FilterLength - 1);
            if (v50 <= 2)
            {
              v50 = 2;
            }

            v51 = v49 >= v50;
            v52 = v49 - v50;
            if (v52 != 0 && v51)
            {
              atomic_store(v52, this + 9);
              *(this + 19) = v50;
            }
          }
        }
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  std::mutex::unlock((this + 1560));
}

void sub_1DDF4E258(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, int a19, __int16 a20, char a21, char a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, char a29, int a30, __int16 a31, char a32, char a33, int a34, __int16 a35, char a36, char a37)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void AUSM::IRManager::updateXTCIRAttributes(AUSM::IRManager *this)
{
  std::mutex::lock((this + 1560));
  v2 = atomic_load((*this + 160));
  AUSM::AppleSauceCFWithMutex<__CFURL const*>::load(&v32, *this + 320);
  v3 = v32;
  if (v32)
  {
    CFRetain(v32);
    IR::IRDataAttributes::IRDataAttributes(&v20, v3, 128, (v2 & 1) == 0, 2, 0, *(this + 8));
    v4 = *(this + 27);
    *(this + 27) = v20;
    v5 = v22;
    *(this + 14) = v21;
    *(this + 15) = v5;
    *(this + 16) = v23;
    *(this + 272) = v24;
    v6 = *(this + 35);
    *(this + 35) = v25;
    v20 = v4;
    v25 = v6;
    *(this + 18) = v26;
    v7 = *(this + 38);
    *(this + 38) = cf;
    v8 = v28[0];
    *(this + 321) = *(v28 + 9);
    *(this + 312) = v8;
    v9 = *(this + 43);
    *(this + 90) = v31;
    v10 = v29;
    v11 = v30;
    cf = v7;
    v29 = v9;
    *(this + 43) = v10;
    *(this + 44) = v11;
    if (v9)
    {
      CFRelease(v9);
      v7 = cf;
    }

    if (v7)
    {
      CFRelease(v7);
    }

    if (v25)
    {
      CFRelease(v25);
    }

    if (v20)
    {
      CFRelease(v20);
    }

    CFRelease(v3);
  }

  else
  {
    IR::getPresetDataAttributes();
    v12 = *(this + 27);
    *(this + 27) = v20;
    v13 = v22;
    *(this + 14) = v21;
    *(this + 15) = v13;
    *(this + 16) = v23;
    *(this + 272) = v24;
    v14 = *(this + 35);
    *(this + 35) = v25;
    v20 = v12;
    v25 = v14;
    *(this + 18) = v26;
    v15 = *(this + 38);
    *(this + 38) = cf;
    v16 = v28[0];
    *(this + 321) = *(v28 + 9);
    *(this + 312) = v16;
    v17 = *(this + 43);
    *(this + 90) = v31;
    v18 = v29;
    v19 = v30;
    cf = v15;
    v29 = v17;
    *(this + 43) = v18;
    *(this + 44) = v19;
    if (v17)
    {
      CFRelease(v17);
      v15 = cf;
    }

    if (v15)
    {
      CFRelease(v15);
    }

    if (v25)
    {
      CFRelease(v25);
    }

    if (v20)
    {
      CFRelease(v20);
    }

    *(this + 232) = (v2 & 1) == 0;
    if (v2)
    {
      *(this + 57) = 128;
    }
  }

  *(this + 56) = *(this + 8);
  *(this + 336) = AUSM::GlobalProperties::isEnabledFeature(*this, @"SourceExtent");
  if (v3)
  {
    CFRelease(v3);
  }

  std::mutex::unlock((this + 1560));
}

void sub_1DDF4E61C(_Unwind_Exception *a1)
{
  applesauce::CF::URLRef::~URLRef((v2 - 40));
  std::mutex::unlock((v1 + 1560));
  _Unwind_Resume(a1);
}

void AUSM::IRManager::getHRIRAttributes(AUSM::IRManager *this, uint64_t a2)
{
  std::mutex::lock((a2 + 1560));
  IR::IRDataAttributes::IRDataAttributes(this, (a2 + 64));

  std::mutex::unlock((a2 + 1560));
}

void AUSM::IRManager::getXTCIRAttributes(AUSM::IRManager *this, uint64_t a2)
{
  std::mutex::lock((a2 + 1560));
  IR::IRDataAttributes::IRDataAttributes(this, (a2 + 216));

  std::mutex::unlock((a2 + 1560));
}

void AUSM::IRManager::getEarlyReverbAttributes(IR::IRDataAttributes *a1, uint64_t a2, int a3)
{
  std::mutex::lock((a2 + 1560));
  IR::IRDataAttributes::IRDataAttributes(a1, (a2 + qword_1DE0EEA18[a3]));

  std::mutex::unlock((a2 + 1560));
}

void AUSM::IRManager::getLateReverbAttributes(IR::IRDataAttributes *a1, uint64_t a2, int a3)
{
  std::mutex::lock((a2 + 1560));
  IR::IRDataAttributes::IRDataAttributes(a1, (a2 + qword_1DE0EEA30[a3]));

  std::mutex::unlock((a2 + 1560));
}

void AUSM::IRManager::setRoomCongruenceAttributes(uint64_t a1, unsigned __int8 *a2)
{
  std::mutex::lock((a1 + 1560));
  std::__optional_storage_base<IR::IRDataAttributes,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<IR::IRDataAttributes,false> const&>((a1 + 368), a2);
  if (*(a1 + 520) == 1)
  {
    *(a1 + 376) = *(a1 + 32);
  }

  std::mutex::unlock((a1 + 1560));
}

uint64_t AUSM::IRManager::getReverbModelingDelay(uint64_t a1, int a2)
{
  std::mutex::lock((a1 + 1560));
  v4 = 528;
  if (!a2)
  {
    v4 = 864;
  }

  v5 = a1 + v4;
  if (*v5)
  {
    v6 = *(v5 + 152);
  }

  else
  {
    v6 = 0;
  }

  std::mutex::unlock((a1 + 1560));
  return v6;
}

void AUSM::IRManager::updateReverbAttributes(uint64_t *a1, int a2)
{
  v174 = *MEMORY[0x1E69E9840];
  if (getAUSMV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
  }

  v4 = getAUSMV2Log(void)::gLog;
  if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
  {
    v70 = a1 + 1;
    if (*(a1 + 31) < 0)
    {
      v70 = *v70;
    }

    v71 = "scene";
    *cf1 = 136315650;
    *&cf1[4] = v70;
    *v137 = 2080;
    *&v137[2] = "updateReverbAttributes";
    if (!a2)
    {
      v71 = "post-processing";
    }

    v138 = 2080;
    v139 = v71;
    _os_log_debug_impl(&dword_1DDB85000, v4, OS_LOG_TYPE_DEBUG, "[%s|%s] Updating attributes for %s reverb", cf1, 0x20u);
  }

  AUSM::IRManager::ReverbBusConfig::ReverbBusConfig(cf1);
  if (a2)
  {
    v5 = 72;
  }

  else
  {
    if (*(a1 + 520) == 1)
    {
      std::mutex::lock((a1 + 195));
      if (*(a1 + 520) != 1 || (IR::IRDataAttributes::operator=(cf1, (a1 + 46)), (a1[65] & 1) == 0))
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      IR::IRDataAttributes::operator=(&cf2, (a1 + 46));
      std::mutex::unlock((a1 + 195));
      goto LABEL_48;
    }

    v5 = 76;
  }

  atomic_load((*a1 + v5));
  IR::getPresetDataAttributes();
  *&v164[8] = *(a1 + 8);
  v7 = atomic_load((*a1 + 96));
  *&v165[20] = v7;
  IR::IRDataAttributes::operator=(cf1, v164);
  IR::IRDataAttributes::operator=(&cf2, v164);
  v8 = atomic_load((*a1 + 88));
  v9 = atomic_load((*a1 + 160));
  if (v9)
  {
    if (v8 == 1 || v8 == 2 && ((*(*a1 + 3053) & 1) != 0 || (v10 = atomic_load((*a1 + 3054)), (v10 & 1) != 0)))
    {
      v137[4] = 0;
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v169)
  {
    CFRelease(v169);
  }

  if (v167)
  {
    CFRelease(v167);
  }

  if (*v164)
  {
    CFRelease(*v164);
  }

  v11 = *a1;
  if (a2)
  {
    AUSM::AppleSauceCFWithMutex<__CFURL const*>::load(v164, v11 + 680);
    v12 = *v164;
    if (!*v164)
    {
      v13 = 392;
LABEL_35:
      AUSM::AppleSauceCFWithMutex<__CFURL const*>::load(&v135, *a1 + v13);
      v16 = v135;
      if (v135)
      {
        v17 = *cf1;
        *cf1 = v135;
        CFRetain(v135);
        if (v17)
        {
          CFRelease(v17);
        }

        CFRelease(v16);
      }

      v18 = 536;
      if (!a2)
      {
        v18 = 608;
      }

      AUSM::AppleSauceCFWithMutex<__CFURL const*>::load(&v135, *a1 + v18);
      v19 = v135;
      if (v135)
      {
        v20 = cf2;
        cf2 = v135;
        CFRetain(v135);
        if (v20)
        {
          CFRelease(v20);
        }

        if (!v16)
        {
          v21 = *cf1;
          *cf1 = 0;
          if (v21)
          {
            CFRelease(v21);
          }
        }

        CFRelease(v19);
      }

      else if (v16)
      {
        v6 = cf2;
        cf2 = 0;
        if (v6)
        {
          CFRelease(v6);
        }
      }

      goto LABEL_48;
    }
  }

  else
  {
    AUSM::AppleSauceCFWithMutex<__CFURL const*>::load(v164, v11 + 752);
    v12 = *v164;
    if (!*v164)
    {
      v13 = 464;
      goto LABEL_35;
    }
  }

  v14 = *cf1;
  *cf1 = v12;
  CFRetain(v12);
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = cf2;
  cf2 = v12;
  CFRetain(v12);
  if (v15)
  {
    CFRelease(v15);
  }

  CFRelease(v12);
LABEL_48:
  if (*cf1)
  {
    v22 = IR::IRDataLoader::instance(v6);
    OriginalAudioChannelLayoutTag = IR::IRDataLoader::getOriginalAudioChannelLayoutTag(v22, cf1);
    IsSupportedHOA = ChannelLayoutTagIsSupportedHOA(OriginalAudioChannelLayoutTag);
  }

  else
  {
    IsSupportedHOA = 0;
  }

  v149[12] = IsSupportedHOA;
  if (cf2)
  {
    v25 = IR::IRDataLoader::instance(IsSupportedHOA);
    v26 = IR::IRDataLoader::getOriginalAudioChannelLayoutTag(v25, &cf2);
    v27 = ChannelLayoutTagIsSupportedHOA(v26);
  }

  else
  {
    v27 = 0;
  }

  v163[12] = v27;
  if (!*cf1)
  {
    goto LABEL_75;
  }

  v28 = IR::IRDataLoader::instance(v27);
  IR::IRDataLoader::getIRDataTypes(v164, v28, cf1);
  v27 = *v164;
  if (*&v164[8] != *v164)
  {
    v29 = *v164;
    while (*v29 != 3)
    {
      if (++v29 == *&v164[8])
      {
        goto LABEL_62;
      }
    }

    if (v29 != *&v164[8])
    {
      v142 = 3;
    }

LABEL_62:
    while (*v27 != 2)
    {
      v27 = (v27 + 4);
      if (v27 == *&v164[8])
      {
        goto LABEL_72;
      }
    }

    if (v27 == *&v164[8])
    {
      goto LABEL_72;
    }

    if (v142 != 3)
    {
      v142 = 2;
    }

    if (*cf1 && cf2)
    {
      if (!CFEqual(*cf1, cf2))
      {
LABEL_72:
        v27 = *v164;
        goto LABEL_73;
      }
    }

    else if (*cf1 | cf2)
    {
      goto LABEL_72;
    }

    v156 = 2;
    goto LABEL_72;
  }

LABEL_73:
  if (v27)
  {
    *&v164[8] = v27;
    operator delete(v27);
  }

LABEL_75:
  if (cf2 && v156 != 2)
  {
    v30 = IR::IRDataLoader::instance(v27);
    IR::IRDataLoader::getIRDataTypes(v164, v30, &cf2);
    v27 = *v164;
    if (*&v164[8] != *v164)
    {
      v31 = *v164;
      while (*v31 != 2)
      {
        if (++v31 == *&v164[8])
        {
          goto LABEL_87;
        }
      }

      if (v31 != *&v164[8])
      {
        v156 = 2;
      }
    }

LABEL_87:
    if (*v164)
    {
      *&v164[8] = *v164;
      operator delete(*v164);
    }
  }

  v135 = 0;
  if (!*cf1)
  {
    v34 = 0;
    v41 = 0;
    v42 = 0;
    goto LABEL_121;
  }

  v32 = IR::IRDataLoader::instance(v27);
  UserData = IR::IRDataLoader::getUserData(v164, v32, cf1);
  v34 = *v164;
  v135 = *v164;
  if (*v164)
  {
    v35 = applesauce::CF::details::at_key<char const(&)[14]>(*v164, "ModelingDelay");
    if (v35)
    {
      v35 = applesauce::CF::convert_as<unsigned int,0>(v35);
    }

    if ((v35 & 0x100000000) != 0)
    {
      v36 = v35;
    }

    else
    {
      v36 = 0;
    }

    *v149 = v36;
    v37 = applesauce::CF::details::at_key<__CFString const*>(v34, @"DiffuseFieldPowerRMS");
    if (!v37 || (v38 = applesauce::CF::convert_as<float,0>(v37), !HIDWORD(v38)))
    {
      LODWORD(v38) = 1065353216;
    }

    *&v149[4] = v38;
    v39 = applesauce::CF::details::at_key<__CFString const*>(v34, @"CriticalDistance");
    if (!v39 || (UserData = applesauce::CF::convert_as<float,0>(v39), !HIDWORD(UserData)))
    {
      UserData = 1065353216;
    }

    *&v149[8] = UserData;
    if (v142 == 3)
    {
      goto LABEL_112;
    }

    UserData = applesauce::CF::details::at_key<char const(&)[15]>(v34, "EarlyLateSplit");
    if (UserData)
    {
      UserData = applesauce::CF::convert_as<float,0>(UserData);
      if (HIDWORD(UserData))
      {
        v40 = *&UserData;
LABEL_111:
        v41 = llroundf(*(a1 + 8) * v40);
        goto LABEL_113;
      }
    }
  }

  else
  {
    *v149 = 0;
    __asm { FMOV            V0.2S, #1.0 }

    *&v149[4] = _D0;
    if (v142 == 3)
    {
      goto LABEL_112;
    }
  }

  if (v149[12])
  {
    v40 = 0.05;
    goto LABEL_111;
  }

LABEL_112:
  v48 = IR::IRDataLoader::instance(UserData);
  UserData = IR::IRDataLoader::getFilterLength(v48, cf1);
  v41 = UserData;
LABEL_113:
  if (cf2 && (v49 = IR::IRDataLoader::instance(UserData), IR::IRDataLoader::getFilterLength(v49, &cf2) > v41))
  {
    if (v41 >= 0x64)
    {
      v42 = 100;
    }

    else
    {
      v42 = v41;
    }

    v139 = 0;
    v140 = v41;
    v141 = v42;
  }

  else
  {
    v42 = 0;
  }

  *v137 = 128;
LABEL_121:
  if (getAUSMV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
  }

  v50 = getAUSMV2Log(void)::gLog;
  if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
  {
    v72 = a1 + 1;
    if (*(a1 + 31) < 0)
    {
      v72 = *v72;
    }

    *v164 = 136315650;
    *&v164[4] = v72;
    *&v164[12] = 2080;
    *&v164[14] = "configureIRWindowsAndUserDataParameters";
    *&v164[22] = 1024;
    *v165 = v41;
    _os_log_debug_impl(&dword_1DDB85000, v50, OS_LOG_TYPE_DEBUG, "[%s|%s] Early length = %u", v164, 0x1Cu);
  }

  if (cf2)
  {
    v51 = *cf1;
    if (!*cf1 || (v51 = CFEqual(*cf1, cf2), !v51) || v142 != v156)
    {
      v52 = IR::IRDataLoader::instance(v51);
      IR::IRDataLoader::getUserData(v164, v52, &cf2);
      v53 = *v164;
      v135 = *v164;
      *v164 = v34;
      if (v34)
      {
        CFRelease(v34);
      }

      v34 = v53;
    }

    if (v34)
    {
      v54 = applesauce::CF::details::at_key<char const(&)[14]>(v34, "ModelingDelay");
      if (v54)
      {
        v54 = applesauce::CF::convert_as<unsigned int,0>(v54);
      }

      if ((v54 & 0x100000000) != 0)
      {
        v55 = v54;
      }

      else
      {
        v55 = 0;
      }

      *v163 = v55;
      v34 = v135;
      if (!v135)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }

      v56 = applesauce::CF::details::at_key<__CFString const*>(v135, @"DiffuseFieldPowerRMS");
      if (!v56 || (v57 = applesauce::CF::convert_as<float,0>(v56), !HIDWORD(v57)))
      {
        LODWORD(v57) = 1065353216;
      }

      *&v163[4] = v57;
      v58 = applesauce::CF::details::at_key<__CFString const*>(v34, @"CriticalDistance");
      if (v58)
      {
        v59 = applesauce::CF::convert_as<float,0>(v58);
        if (HIDWORD(v59))
        {
          goto LABEL_146;
        }
      }
    }

    else
    {
      *v163 = 0x3F80000000000000;
    }

    LODWORD(v59) = 1065353216;
LABEL_146:
    *&v163[8] = v59;
    v155 = 0;
    v153 = v41 - v42;
    v154 = v42;
    v151 = 128;
  }

  if (v34)
  {
    CFRelease(v34);
  }

  if ((v149[12] & 1) == 0 && v163[12] != 1)
  {
    goto LABEL_213;
  }

  v135 = 0;
  v60 = atomic_load((*a1 + 88));
  if (v60 > 2)
  {
    if (v60 == 3)
    {
      v68 = v135;
      v135 = 0;
      v63 = a2;
      v69 = IR::IRDataLoader::instance(v68);
      v64 = IR::IRDataLoader::registerCustomLayoutIfNecessary(v69, a1[5]);
      goto LABEL_171;
    }

    if (v60 == 4)
    {
      v63 = a2;
      v65 = 0;
      v64 = *a1[5];
      goto LABEL_202;
    }
  }

  else
  {
    if (v60 == 1)
    {
      AUSM::AppleSauceCFWithMutex<__CFURL const*>::load(&v134, *a1 + 248);
      if (v134)
      {
        v67 = v135;
        v135 = v134;
        CFRetain(v134);
        if (v67)
        {
          CFRelease(v67);
        }
      }

      else
      {
        IR::getPresetDataAttributes();
        v74 = v135;
        v135 = *v164;
        *v164 = v74;
        if (cf)
        {
          CFRelease(cf);
        }

        if (v169)
        {
          CFRelease(v169);
        }

        if (v167)
        {
          CFRelease(v167);
        }

        if (*v164)
        {
          CFRelease(*v164);
        }
      }

      v63 = a2;
      v65 = atomic_load((*a1 + 3056));
      if (v134)
      {
        CFRelease(v134);
      }

      goto LABEL_201;
    }

    if (v60 == 2)
    {
      AUSM::AppleSauceCFWithMutex<__CFURL const*>::load(&v134, *a1 + 320);
      v61 = v134;
      if (v134)
      {
        v62 = v135;
        v135 = v134;
        CFRetain(v134);
        if (v62)
        {
          CFRelease(v62);
        }

        v63 = a2;
        CFRelease(v61);
      }

      else
      {
        if (*(*a1 + 3053) != 1)
        {
          v63 = a2;
          v64 = 6619138;
          v130 = v135;
          v135 = 0;
          if (v130)
          {
            CFRelease(v130);
          }

          goto LABEL_171;
        }

        IR::getPresetDataAttributes();
        v73 = v135;
        v135 = *v164;
        *v164 = v73;
        if (cf)
        {
          CFRelease(cf);
        }

        if (v169)
        {
          CFRelease(v169);
        }

        if (v167)
        {
          CFRelease(v167);
        }

        v63 = a2;
        if (*v164)
        {
          CFRelease(*v164);
        }
      }

      v64 = 0;
LABEL_171:
      v65 = 0;
      goto LABEL_202;
    }
  }

  if (getAUSMV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
  }

  v66 = getAUSMV2Log(void)::gLog;
  if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
  {
    v131 = a1 + 1;
    v63 = a2;
    if (*(a1 + 31) < 0)
    {
      v131 = *v131;
    }

    v132 = atomic_load((*a1 + 88));
    *v164 = 136315650;
    *&v164[4] = v131;
    *&v164[12] = 2080;
    *&v164[14] = "configureHOADecoder";
    *&v164[22] = 1024;
    *v165 = v132;
    _os_log_error_impl(&dword_1DDB85000, v66, OS_LOG_TYPE_ERROR, "[%s|%s] Unknown output type %d", v164, 0x1Cu);
  }

  else
  {
    v63 = a2;
  }

  v65 = 0;
LABEL_201:
  v64 = 0;
LABEL_202:
  v75 = 0;
  *v164 = cf1;
  *&v164[8] = &cf2;
  do
  {
    v76 = *&v164[v75];
    if (*(v76 + 164) == 1)
    {
      v77 = *(v76 + 88);
      v78 = v135;
      *(v76 + 88) = v135;
      if (v78)
      {
        CFRetain(v78);
      }

      if (v77)
      {
        CFRelease(v77);
      }

      *(v76 + 100) = v64;
      *(v76 + 104) = v65;
      v79 = atomic_load((*a1 + 1649));
      *(v76 + 112) = (v79 & 1) == 0;
    }

    v75 += 8;
  }

  while (v75 != 16);
  if (v135)
  {
    CFRelease(v135);
  }

  a2 = v63;
LABEL_213:
  AUSM::AppleSauceCFWithMutex<__CFDictionary const*>::load(v164, *a1 + 1984);
  v80 = *v164;
  if (*v164)
  {
    v81 = 0.0;
    if (applesauce::CF::details::has_key<char const(&)[20]>(*v164, "AbsoluteThresholdDb"))
    {
      v82 = applesauce::CF::details::find_at_key<float,char const(&)[20]>(v80, "AbsoluteThresholdDb");
      v81 = __exp10f(v82 / 20.0);
    }

    v83 = 0.0;
    if (applesauce::CF::details::has_key<char const(&)[20]>(v80, "RelativeThresholdDb"))
    {
      v84 = applesauce::CF::details::find_at_key<float,char const(&)[20]>(v80, "RelativeThresholdDb");
      v83 = __exp10f(v84 / 20.0);
    }

    v85 = applesauce::CF::details::at_key<char const(&)[19]>(v80, "MaximumFrequencyHz");
    if (v85 && (v86 = applesauce::CF::convert_as<float,0>(v85), HIDWORD(v86)))
    {
      v87 = *&v86 + *&v86;
    }

    else
    {
      v87 = 0.0;
    }

    v88 = vcvtps_u32_f32((v87 / *(a1 + 8)) * 128.0);
    if (v88 >= 0x80)
    {
      v88 = 128;
    }
  }

  else
  {
    v88 = 0;
    v81 = 0.0;
    v83 = 0.0;
  }

  v146 = v81;
  v147 = v83;
  v148 = v88;
  v160 = v81;
  v161 = v83;
  v162 = v88;
  if (v80)
  {
    CFRelease(v80);
  }

  v89 = *a1;
  v90 = 3072;
  if (a2)
  {
    v90 = 3068;
  }

  v91 = 3060;
  if (!a2)
  {
    v91 = 3064;
  }

  if (*cf1)
  {
    v92 = *&v149[4];
    atomic_store(*&v149[4], (v89 + v90));
    atomic_store(*&v149[8], (v89 + v91));
    if (cf2)
    {
      if (*&v163[4] != v92)
      {
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v93 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEFAULT))
        {
          v94 = a1 + 1;
          if (*(a1 + 31) < 0)
          {
            v94 = *v94;
          }

          v95 = "scene";
          if (!a2)
          {
            v95 = "post-processing";
          }

          *v164 = 136316162;
          *&v164[4] = v94;
          *&v164[12] = 2080;
          *&v164[14] = "updateReverbAttributes";
          *&v164[22] = 2080;
          *v165 = v95;
          *&v165[8] = 2048;
          *&v165[10] = *&v149[4];
          *&v165[18] = 2048;
          *&v165[20] = *&v163[4];
          _os_log_impl(&dword_1DDB85000, v93, OS_LOG_TYPE_DEFAULT, "[%s|%s] Mismatch in diffuse field power for %s reverb; early = %.1f, late = %.1f", v164, 0x34u);
        }
      }

      if (*&v149[8] != *&v163[8])
      {
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v96 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEFAULT))
        {
          v97 = a1 + 1;
          if (*(a1 + 31) < 0)
          {
            v97 = *v97;
          }

          v98 = "scene";
          if (!a2)
          {
            v98 = "post-processing";
          }

          *v164 = 136316162;
          *&v164[4] = v97;
          *&v164[12] = 2080;
          *&v164[14] = "updateReverbAttributes";
          *&v164[22] = 2080;
          *v165 = v98;
          *&v165[8] = 2048;
          *&v165[10] = *&v149[8];
          *&v165[18] = 2048;
          *&v165[20] = *&v163[8];
          _os_log_impl(&dword_1DDB85000, v96, OS_LOG_TYPE_DEFAULT, "[%s|%s] Mismatch in critical distance for %s reverb; early = %.1f, late = %.1f", v164, 0x34u);
        }
      }
    }
  }

  else if (cf2)
  {
    atomic_store(*&v163[4], (v89 + v90));
    atomic_store(*&v163[8], (v89 + v91));
  }

  v99 = *a1;
  v100 = atomic_load((*a1 + 1650));
  if ((v100 & 1) == 0)
  {
    goto LABEL_259;
  }

  v101 = atomic_load((v99 + 88));
  if (v101 == 1)
  {
    goto LABEL_255;
  }

  v103 = atomic_load((v99 + 88));
  if (v103 != 2)
  {
LABEL_259:
    v102 = 0;
    goto LABEL_260;
  }

  if ((*(v99 + 3053) & 1) == 0)
  {
    v102 = atomic_load((v99 + 3054));
    goto LABEL_260;
  }

LABEL_255:
  v102 = 1;
LABEL_260:
  v137[5] = v102 & 1;
  v104 = *a1;
  v105 = atomic_load((*a1 + 1650));
  if ((v105 & 1) == 0)
  {
    goto LABEL_266;
  }

  v106 = atomic_load((v104 + 88));
  if (v106 == 1)
  {
LABEL_262:
    v107 = 1;
    goto LABEL_267;
  }

  v108 = atomic_load((v104 + 88));
  if (v108 == 2)
  {
    if (*(v104 + 3053))
    {
      goto LABEL_262;
    }

    v107 = atomic_load((v104 + 3054));
  }

  else
  {
LABEL_266:
    v107 = 0;
  }

LABEL_267:
  v152 = v107 & 1;
  std::mutex::lock((a1 + 195));
  v109 = 66;
  if (a2)
  {
    v110 = 85;
  }

  else
  {
    v109 = 108;
    v110 = 127;
  }

  if (a2)
  {
    v111 = 87;
  }

  else
  {
    v111 = 129;
  }

  if (a2)
  {
    v112 = 106;
  }

  else
  {
    v112 = 148;
  }

  IR::IRDataAttributes::operator=(&a1[v109], cf1);
  v113 = &a1[v110];
  *v113 = *v149;
  *(v113 + 5) = *&v149[5];
  IR::IRDataAttributes::operator=(&a1[v111], &cf2);
  v114 = &a1[v112];
  *v114 = *v163;
  *(v114 + 5) = *&v163[5];
  AUSM::IRManager::updateCombinedReverbAttributes(void)::$_0::operator()(v164, a1, (a1 + 66), (a1 + 108));
  v115 = a1[150];
  a1[150] = *v164;
  *(a1 + 1256) = v166;
  v116 = *v165;
  *(a1 + 151) = *&v164[8];
  *(a1 + 153) = v116;
  *(a1 + 155) = *&v165[16];
  v117 = a1[158];
  v118 = v169;
  a1[158] = v167;
  *v164 = v115;
  v167 = v117;
  *(a1 + 159) = v168;
  v119 = a1[161];
  a1[161] = v118;
  v120 = v170[0];
  *(a1 + 1305) = *(v170 + 9);
  *(a1 + 81) = v120;
  v121 = a1[166];
  v122 = v172;
  a1[166] = cf;
  v169 = v119;
  cf = v121;
  *(a1 + 336) = v173;
  a1[167] = v122;
  if (v121)
  {
    CFRelease(v121);
    v119 = v169;
  }

  if (v119)
  {
    CFRelease(v119);
  }

  if (v167)
  {
    CFRelease(v167);
  }

  if (*v164)
  {
    CFRelease(*v164);
  }

  AUSM::IRManager::updateCombinedReverbAttributes(void)::$_0::operator()(v164, a1, (a1 + 87), (a1 + 129));
  v123 = a1[171];
  a1[171] = *v164;
  *(a1 + 1424) = v166;
  v124 = a1[179];
  v125 = v169;
  a1[179] = v167;
  *(a1 + 86) = *&v164[8];
  *(a1 + 87) = *v165;
  *(a1 + 88) = *&v165[16];
  *v164 = v123;
  v167 = v124;
  *(a1 + 90) = v168;
  v126 = a1[182];
  a1[182] = v125;
  v127 = v170[0];
  *(a1 + 1473) = *(v170 + 9);
  *(a1 + 183) = v127;
  v128 = a1[187];
  v129 = v172;
  a1[187] = cf;
  v169 = v126;
  cf = v128;
  *(a1 + 378) = v173;
  a1[188] = v129;
  if (v128)
  {
    CFRelease(v128);
    v126 = v169;
  }

  if (v126)
  {
    CFRelease(v126);
  }

  if (v167)
  {
    CFRelease(v167);
  }

  if (*v164)
  {
    CFRelease(*v164);
  }

  std::mutex::unlock((a1 + 195));
  if (v159)
  {
    CFRelease(v159);
  }

  if (v158)
  {
    CFRelease(v158);
  }

  if (v157)
  {
    CFRelease(v157);
  }

  if (cf2)
  {
    CFRelease(cf2);
  }

  if (v145)
  {
    CFRelease(v145);
  }

  if (v144)
  {
    CFRelease(v144);
  }

  if (v143)
  {
    CFRelease(v143);
  }

  if (*cf1)
  {
    CFRelease(*cf1);
  }
}

void sub_1DDF4FB18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void AUSM::IRManager::updateCombinedReverbAttributes(void)::$_0::operator()(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v20 = *MEMORY[0x1E69E9840];
  IR::IRDataAttributes::IRDataAttributes(a1, 0, 0, 0, 2, 0, 0.0);
  if (*a3)
  {
    v8 = *a4 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    if (*(a3 + 164) == 1)
    {
      IR::IRDataAttributes::operator=(a1, a3);
      v9 = *a4;
      if (*(a4 + 164) == 1)
      {
        v10 = *(a1 + 64);
        *(a1 + 64) = v9;
        if (v9)
        {
          CFRetain(v9);
        }

        if (v10)
        {
          CFRelease(v10);
        }

        *(a1 + 72) = *(a4 + 24);
      }

      else
      {
        v15 = *(a1 + 88);
        *(a1 + 88) = v9;
        if (v9)
        {
          CFRetain(v9);
        }

        if (v15)
        {
          CFRelease(v15);
        }

        *(a1 + 96) = *(a4 + 40);
        *(a1 + 104) = 0;
      }

      *(a1 + 100) = 0;
    }

    else
    {
      v11 = atomic_load((*a2 + 86));
      if (v11)
      {
        v12 = atomic_load((*a2 + 88));
        if (v12 == 1)
        {
          if (getAUSMV2Log(void)::onceToken != -1)
          {
            dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
          }

          v13 = getAUSMV2Log(void)::gLog;
          if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
          {
            v14 = a2 + 8;
            if (a2[31] < 0)
            {
              v14 = *v14;
            }

            *buf = 136315394;
            v17 = v14;
            v18 = 2080;
            v19 = "operator()";
            _os_log_error_impl(&dword_1DDB85000, v13, OS_LOG_TYPE_ERROR, "[%s|%s] Scene reverb IR is non-HOA, post-processing reverb will run in parallel.", buf, 0x16u);
          }
        }
      }
    }
  }
}

void sub_1DDF4FEAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL applesauce::CF::details::has_key<char const(&)[20]>(const __CFDictionary *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = CFStringCreateWithBytes(0, __s, v4, 0x8000100u, 0);
  cf = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v6 = CFDictionaryContainsKey(a1, v5);
  CFRelease(cf);
  return v6 != 0;
}

void sub_1DDF4FF94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

float applesauce::CF::details::find_at_key<float,char const(&)[20]>(const __CFDictionary *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = CFStringCreateWithBytes(0, __s, v4, 0x8000100u, 0);
  cf = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  Value = CFDictionaryGetValue(a1, v5);
  CFRelease(cf);
  if (!Value)
  {
    v9 = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::not_found(v9);
  }

  return applesauce::CF::convert_to<float,0>(Value);
}

uint64_t AU::ChannelSelector::ChannelMap::DescriptionOnly::snapshotCurrentState(AU::ChannelSelector::ChannelMap::DescriptionOnly *this)
{
  if (*(this + 40) == 1)
  {
    return *(this + 2);
  }

  else
  {
    return 0;
  }
}

uint64_t AU::ChannelSelector::ChannelMap::DescriptionOnly::read(uint64_t a1, void *__dst, int a3)
{
  if (*(a1 + 40) != 1)
  {
    return 0;
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  if (a3 != ((v4 - v3) >> 2))
  {
    return 0;
  }

  if (v4 != v3)
  {
    memmove(__dst, v3, v4 - v3);
  }

  return 1;
}

void AU::ChannelSelector::ChannelMap::DescriptionOnly::write(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3)
  {
    if (!(a3 >> 62))
    {
      std::allocator<int>::allocate_at_least[abi:ne200100](a3);
    }

    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
  }

  if (*(a1 + 40) == 1)
  {
    v5 = 0uLL;
    v6 = 0;
    std::vector<AU::ChannelSelector::Index::IndexNewtype<(AU::ChannelSelector::Index::Direction)0>>::__init_with_size[abi:ne200100]<AU::ChannelSelector::Index::IndexNewtype<(AU::ChannelSelector::Index::Direction)0>*,AU::ChannelSelector::Index::IndexNewtype<(AU::ChannelSelector::Index::Direction)0>*>(&v5, 0, 0, 0);
    v4 = *(a1 + 16);
    if (v4)
    {
      *(a1 + 24) = v4;
      operator delete(v4);
    }

    *(a1 + 16) = v5;
    *(a1 + 32) = v6;
  }

  else
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    std::vector<AU::ChannelSelector::Index::IndexNewtype<(AU::ChannelSelector::Index::Direction)0>>::__init_with_size[abi:ne200100]<AU::ChannelSelector::Index::IndexNewtype<(AU::ChannelSelector::Index::Direction)0>*,AU::ChannelSelector::Index::IndexNewtype<(AU::ChannelSelector::Index::Direction)0>*>(a1 + 16, 0, 0, 0);
    *(a1 + 40) = 1;
  }
}

uint64_t std::vector<AU::ChannelSelector::Index::IndexNewtype<(AU::ChannelSelector::Index::Direction)0>>::__init_with_size[abi:ne200100]<AU::ChannelSelector::Index::IndexNewtype<(AU::ChannelSelector::Index::Direction)0>*,AU::ChannelSelector::Index::IndexNewtype<(AU::ChannelSelector::Index::Direction)0>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DDF50330(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AU::ChannelSelector::ChannelMap::DescriptionOnly::size@<X0>(AU::ChannelSelector::ChannelMap::DescriptionOnly *this@<X0>, uint64_t a2@<X8>)
{
  if (*(this + 40) == 1)
  {
    return (*(this + 3) - *(this + 2)) >> 2;
  }

  return a2;
}

void AU::ChannelSelector::ChannelMap::DescriptionOnly::~DescriptionOnly(AU::ChannelSelector::ChannelMap::DescriptionOnly *this)
{
  *this = &unk_1F592EA00;
  if (*(this + 40) == 1)
  {
    v2 = *(this + 2);
    if (v2)
    {
      *(this + 3) = v2;
      operator delete(v2);
    }
  }

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F592EA00;
  if (*(this + 40) == 1)
  {
    v2 = *(this + 2);
    if (v2)
    {
      *(this + 3) = v2;
      operator delete(v2);
    }
  }
}

uint64_t Beamformer_BeamNF::CmhBEAM::initialize(int32x2_t *this, int a2, __int32 a3, __int32 a4)
{
  v8 = this[4];
  if (v8)
  {
    MEMORY[0x1E12BD130](*&v8, 0x80C80B8603338);
    this[4] = 0;
  }

  v9 = this[5];
  if (v9)
  {
    MEMORY[0x1E12BD130](*&v9, 0x80C80B8603338);
    this[5] = 0;
  }

  v10 = this[6];
  if (v10)
  {
    MEMORY[0x1E12BD130](*&v10, 0x80C80B8603338);
    this[6] = 0;
  }

  v11 = this[10];
  if (v11)
  {
    MEMORY[0x1E12BD130](*&v11, 0x1000C8052888210);
    this[10] = 0;
  }

  v12 = this[7];
  if (v12)
  {
    MEMORY[0x1E12BD130](*&v12, 0x80C80B8603338);
    this[7] = 0;
  }

  v13 = this[8];
  if (v13)
  {
    MEMORY[0x1E12BD130](*&v13, 0x80C80B8603338);
    this[8] = 0;
  }

  v14 = this[9];
  if (v14)
  {
    MEMORY[0x1E12BD130](*&v14, 0x80C80B8603338);
    this[9] = 0;
  }

  if (this[15].i32[1])
  {
    if (this[7])
    {
      v15 = this->i32[0];
      if (this->i32[0] >= 1)
      {
        v16 = 0;
        do
        {
          v17 = *(*&this[7] + 8 * v16);
          if (v17)
          {
            MEMORY[0x1E12BD130](v17, 0x1000C8052888210);
            v15 = this->i32[0];
          }

          ++v16;
        }

        while (v16 < v15);
      }
    }

    if (this[8])
    {
      v18 = this[1].i32[0];
      if (v18 >= 1)
      {
        for (i = 0; i < v18; ++i)
        {
          v20 = *(*&this[8] + 8 * i);
          if (v20)
          {
            MEMORY[0x1E12BD130](v20, 0x1000C8052888210);
            v18 = this[1].i32[0];
          }
        }
      }
    }

    if (this[9])
    {
      v21 = this->i32[1];
      if (v21 >= 1)
      {
        for (j = 0; j < v21; ++j)
        {
          v23 = *(*&this[9] + 8 * j);
          if (v23)
          {
            MEMORY[0x1E12BD130](v23, 0x1000C8052888210);
            v21 = this->i32[1];
          }
        }
      }
    }
  }

  v24 = this[7];
  if (v24)
  {
    MEMORY[0x1E12BD130](*&v24, 0x80C80B8603338);
    this[7] = 0;
  }

  v25 = this[8];
  if (v25)
  {
    MEMORY[0x1E12BD130](*&v25, 0x80C80B8603338);
    this[8] = 0;
  }

  if (this->i32[1] >= 1)
  {
    v26 = this[9];
    if (v26)
    {
      MEMORY[0x1E12BD130](*&v26, 0x80C80B8603338);
      this[9] = 0;
    }
  }

  if ((a4 - 3) < 0xFFFFFFFE)
  {
    return 5;
  }

  if ((a3 - 46) < 0xFFFFFFDC)
  {
    return 6;
  }

  if (a2 <= 23999)
  {
    if (a2 <= 11999)
    {
      if (a2 == 8000)
      {
        v28 = 0;
        v29 = 64;
        goto LABEL_65;
      }

      if (a2 != 11025)
      {
LABEL_187:
        this[13] = 0;
        return 1;
      }
    }

    else if (a2 != 12000 && a2 != 16000)
    {
      if (a2 == 22050)
      {
        goto LABEL_55;
      }

      goto LABEL_187;
    }

    v28 = 0;
    v29 = 128;
    goto LABEL_65;
  }

  if (a2 <= 47999)
  {
    if (a2 != 24000 && a2 != 32000)
    {
      if (a2 != 44100)
      {
        goto LABEL_187;
      }

      goto LABEL_63;
    }

LABEL_55:
    v28 = 0;
    v29 = 256;
    goto LABEL_65;
  }

  if (a2 == 48000)
  {
LABEL_63:
    v28 = 0;
    v29 = 512;
    goto LABEL_65;
  }

  if (a2 != 88200 && a2 != 96000)
  {
    goto LABEL_187;
  }

  v29 = 1024;
  v28 = 1;
LABEL_65:
  this[13].i32[0] = a2;
  this[13].i32[1] = v29;
  v30 = v29 >> 1;
  v31 = (5 * v29) >> 3;
  this[14].i32[1] = 0;
  this[16].i32[0] = 0;
  if (!v28)
  {
    if (((v30 - 1) & 0x100) != 0)
    {
      if (0x100 % v31)
      {
        return 2;
      }

      v32 = 4;
    }

    else
    {
      v32 = 3;
      v31 = v29 >> 1;
    }

    this[14].i32[1] = v31;
    this[15].i32[1] = 0;
    this[16].i32[0] = v32;
    v33 = 0x100 / v31;
    goto LABEL_77;
  }

  if ((v29 & 0x1C0) == 0)
  {
    v32 = 3;
    v31 = v29 >> 1;
    goto LABEL_74;
  }

  if (((5 * v29) & 0x7C0) != 0)
  {
    return 2;
  }

  v32 = 4;
LABEL_74:
  v33 = 0;
  this[14].i32[1] = v31;
  this[15].i32[1] = v31 >> 8;
  this[16].i32[0] = v32;
LABEL_77:
  this[15].i32[0] = v33;
  this[18].i32[1] = a3;
  this[17] = vadd_s32(vdup_n_s32(v30), 0x1FFFFFFFFLL);
  v34 = -1;
  LOWORD(v35) = v29;
  do
  {
    v35 = v35 >> 1;
    ++v34;
  }

  while (v35);
  this[14].i32[0] = v34;
  this[16].i32[1] = v32 * v29;
  CmhBEAMprocOpt::deallocate_memory(&this[11]);
  this[12].i32[1] = a4;
  v36 = this[14].i32[0];
  if (v36 < 1)
  {
    v38 = 1;
  }

  else
  {
    v37 = 1;
    do
    {
      v37 *= 2;
      --v36;
    }

    while (v36);
    v38 = v37;
  }

  v39 = this[13].i32[1];
  this[22].i32[0] = v39 != v38;
  if (this[11].i32[0])
  {
    LODWORD(v40) = this[18].i32[0];
    LODWORD(v41) = a4;
  }

  else
  {
    this[11].i32[0] = 1;
    v40 = this[18].i32[0];
    if (v40 < 0)
    {
      v64 = -1;
    }

    else
    {
      v64 = 8 * v40;
    }

    v65 = operator new[](v64, MEMORY[0x1E69E5398]);
    this[28] = v65;
    if (!v65)
    {
      return 4;
    }

    bzero(v65, 8 * v40);
    if (v40 >= 1)
    {
      v66 = 0;
      v67 = MEMORY[0x1E69E5398];
      while (1)
      {
        v68 = this[13].i32[1];
        v69 = 4 * v68;
        v70 = v68 < 0 ? -1 : 4 * v68;
        *(*&this[28] + 8 * v66) = operator new[](v70, v67);
        v71 = *(*&this[28] + 8 * v66);
        if (!v71)
        {
          return 4;
        }

        bzero(v71, v69);
        ++v66;
        v40 = this[18].i32[0];
        if (v66 >= v40)
        {
          v39 = this[13].i32[1];
          break;
        }
      }
    }

    v72 = 4 * v39;
    v73 = v39 < 0 ? -1 : 4 * v39;
    v74 = operator new[](v73, MEMORY[0x1E69E5398]);
    this[31] = v74;
    if (!v74)
    {
      return 4;
    }

    bzero(v74, v72);
    v75 = operator new[](v73, MEMORY[0x1E69E5398]);
    this[32] = v75;
    if (!v75)
    {
      return 4;
    }

    bzero(v75, v72);
    v41 = this[12].i32[1];
    v76 = v41 < 0 ? -1 : 8 * v41;
    v77 = operator new[](v76, MEMORY[0x1E69E5398]);
    this[27] = v77;
    if (!v77)
    {
      return 4;
    }

    bzero(v77, 8 * v41);
    if (v41 >= 1)
    {
      v78 = 0;
      v79 = MEMORY[0x1E69E5398];
      while (1)
      {
        v80 = this[13].i32[1];
        v81 = 4 * v80;
        v82 = v80 < 0 ? -1 : 4 * v80;
        *(*&this[27] + 8 * v78) = operator new[](v82, v79);
        v83 = *(*&this[27] + 8 * v78);
        if (!v83)
        {
          return 4;
        }

        bzero(v83, v81);
        if (++v78 >= this[12].i32[1])
        {
          LODWORD(v40) = this[18].i32[0];
          LODWORD(v41) = this[12].i32[1];
          break;
        }
      }
    }

    v84 = v40 + 1;
    v85 = v40 < -1 ? -1 : 16 * v84;
    v86 = operator new[](v85, MEMORY[0x1E69E5398]);
    this[30] = v86;
    if (!v86)
    {
      return 4;
    }

    v119 = v84;
    if ((v40 & 0x80000000) == 0)
    {
      v87 = this[13].i32[1];
      if (v87 < 0)
      {
        v88 = -1;
      }

      else
      {
        v88 = 4 * v87;
      }

      v89 = (v87 + (v87 >> 31)) >> 1;
      v90 = v119;
      v91 = v86 + 8;
      do
      {
        v92 = operator new[](v88, MEMORY[0x1E69E5398]);
        *(v91 - 1) = v92;
        if (!v92)
        {
          return 4;
        }

        *v91 = &v92[4 * v89];
        v91 += 2;
      }

      while (--v90);
    }

    v93 = v41 < 0 ? -1 : 16 * v41;
    v94 = operator new[](v93, MEMORY[0x1E69E5398]);
    this[29] = v94;
    if (!v94)
    {
      return 4;
    }

    v95 = this[13].i32[1];
    v96 = 4 * v95;
    if (v41 > 0)
    {
      v117 = 4 * v95;
      v118 = this[13].i32[1];
      if (v95 < 0)
      {
        v97 = -1;
      }

      else
      {
        v97 = 4 * v95;
      }

      v98 = (v95 + (v95 >> 31)) >> 1;
      v99 = v41;
      v100 = v94 + 8;
      while (1)
      {
        v101 = operator new[](v97, MEMORY[0x1E69E5398]);
        *(v100 - 1) = v101;
        if (!v101)
        {
          return 4;
        }

        *v100 = &v101[4 * v98];
        v100 += 2;
        if (!--v99)
        {
          v96 = v117;
          v95 = v118;
          break;
        }
      }
    }

    v102 = v95 < 0 ? -1 : v96;
    v103 = operator new[](v102, MEMORY[0x1E69E5398]);
    this[33] = v103;
    if (!v103)
    {
      return 4;
    }

    bzero(v103, v96);
    v104 = v40 < -1 ? -1 : 8 * v119;
    v105 = operator new[](v104, MEMORY[0x1E69E5398]);
    this[23] = v105;
    if (!v105)
    {
      return 4;
    }

    v106 = 8 * v40 + 8;
    bzero(v105, v106);
    v107 = operator new[](v104, MEMORY[0x1E69E5398]);
    this[24] = v107;
    if (!v107)
    {
      return 4;
    }

    bzero(v107, v106);
    if ((v40 & 0x80000000) == 0)
    {
      v108 = 0;
      do
      {
        *(*&this[23] + v108) = 0;
        *(*&this[24] + v108) = 0;
        v108 += 8;
      }

      while (8 * v119 != v108);
    }

    v109 = operator new[](v104, MEMORY[0x1E69E5398]);
    this[25] = v109;
    if (!v109)
    {
      return 4;
    }

    bzero(v109, v106);
    if ((v40 & 0x80000000) == 0)
    {
      v110 = 0;
      v111 = MEMORY[0x1E69E5398];
      while (1)
      {
        v112 = this[13].i32[1];
        v113 = 4 * v112;
        v114 = v112 < 0 ? -1 : 4 * v112;
        *(*&this[25] + 8 * v110) = operator new[](v114, v111);
        v115 = *(*&this[25] + 8 * v110);
        if (!v115)
        {
          return 4;
        }

        bzero(v115, v113);
        v40 = this[18].i32[0];
        if (v110++ >= v40)
        {
          LODWORD(v41) = this[12].i32[1];
          v39 = this[13].i32[1];
          goto LABEL_86;
        }
      }
    }

    v39 = v95;
  }

LABEL_86:
  if (LPFilterBank::Initialize(&this[189], v40 + 1, v41, v39, this[14].i32[1], this[16].i32[0]))
  {
    return 4;
  }

  if (Beamformer_BeamNF::CmhBEAM2NOpt::initialize(&this[34], this[13].i32[0], this[13].i32[1], this[14].i32[1], this[18].i32[1], this[12].i32[1]))
  {
    return 4;
  }

  v42 = this[12].i32[1];
  Cns::deallocate_memory(&this[147]);
  this[150].i32[1] = v42;
  if (Cns::init(&this[147]))
  {
    return 4;
  }

  v43 = this[14].i32[1];
  Cns::deallocate_memory(&this[147]);
  this[149].i32[1] = v43;
  if (Cns::init(&this[147]))
  {
    return 4;
  }

  v44 = this[13].i32[0];
  Cns::deallocate_memory(&this[147]);
  *this[149].i32 = v44;
  if (Cns::init(&this[147]))
  {
    return 4;
  }

  v45 = this[13].i32[1];
  Cns::deallocate_memory(&this[147]);
  this[150].i32[0] = v45;
  if (Cns::init(&this[147]))
  {
    return 4;
  }

  CmhBEAMprocOpt::init_dc_block(&this[11]);
  *this = 2;
  this[1].i32[0] = a4;
  this[1].i32[1] = a2;
  this[2].i32[0] = 256;
  this[2].i32[1] = a3;
  this[3].i32[0] = 0;
  v46 = operator new[](0x10uLL, MEMORY[0x1E69E5398]);
  this[4] = v46;
  if (v46)
  {
    v47 = (8 * a4);
    v48 = operator new[](v47, MEMORY[0x1E69E5398]);
    this[5] = v48;
    if (v48)
    {
      v49 = operator new[](0x800uLL, MEMORY[0x1E69E5398]);
      this[10] = v49;
      if (v49)
      {
        v50 = operator new[](0x10uLL, MEMORY[0x1E69E5398]);
        this[7] = v50;
        if (v50)
        {
          *v50 = 0;
          v50[1] = 0;
          v51 = operator new[](v47, MEMORY[0x1E69E5398]);
          this[8] = v51;
          if (v51)
          {
            bzero(v51, v47);
            if (!this[15].i32[1])
            {
LABEL_112:
              result = 0;
              this[3].i32[1] = 0;
              return result;
            }

            v52 = 0;
            v53 = this[14].i32[1];
            if (v53 < 0)
            {
              v54 = -1;
            }

            else
            {
              v54 = 4 * v53;
            }

            v55 = 4 * v53;
            v56 = MEMORY[0x1E69E5398];
            while (1)
            {
              *(*&this[7] + 8 * v52) = operator new[](v54, v56);
              v57 = *(*&this[7] + 8 * v52);
              if (!v57)
              {
                break;
              }

              bzero(v57, v55);
              if (++v52 >= this->i32[0])
              {
                if (this[1].i32[0] < 1)
                {
LABEL_108:
                  if (this->i32[1] < 1)
                  {
                    goto LABEL_112;
                  }

                  v61 = 0;
                  v62 = MEMORY[0x1E69E5398];
                  while (1)
                  {
                    *(*&this[9] + 8 * v61) = operator new[](v54, v62);
                    v63 = *(*&this[9] + 8 * v61);
                    if (!v63)
                    {
                      break;
                    }

                    bzero(v63, v55);
                    if (++v61 >= this->i32[1])
                    {
                      goto LABEL_112;
                    }
                  }
                }

                else
                {
                  v58 = 0;
                  v59 = MEMORY[0x1E69E5398];
                  while (1)
                  {
                    *(*&this[8] + 8 * v58) = operator new[](v54, v59);
                    v60 = *(*&this[8] + 8 * v58);
                    if (!v60)
                    {
                      break;
                    }

                    bzero(v60, v55);
                    if (++v58 >= this[1].i32[0])
                    {
                      goto LABEL_108;
                    }
                  }
                }

                return 4294967294;
              }
            }
          }
        }
      }
    }
  }

  return 4294967294;
}

int16x4_t Beamformer_BeamNF::CmhBEAM::setParameter(Beamformer_BeamNF::CmhBEAM *this, int a2, CmhBEAM2NOpt *a3, int16x4_t result)
{
  switch(a2)
  {
    case 3:
      *(*(this + 141) + 44) = *a3;
      return result;
    case 4:
      v50 = *a3;
      *(this + 133) = *a3;
      goto LABEL_134;
    case 5:
      *(this + 162) = *a3;
      return result;
    case 6:
      if (*(this + 295) + *(this + 301) >= 1)
      {
        v59 = 0;
        v60 = *a3;
        v61 = *(this + 148);
        do
        {
          *(v61 + 4 * v59++) = v60;
        }

        while (v59 < *(this + 295) + *(this + 301));
      }

      return result;
    case 7:
      v63 = *a3;
      v64 = this + 1176;

      Cns::setMinGain(v64, v63);
      return result;
    case 11:
      v48 = this + 272;

      CmhBEAM2NOpt::setSpatialFilterReal(v48, a3);
      return result;
    case 12:
      v51 = this + 272;

      CmhBEAM2NOpt::setSpatialFilterImag(v51, a3);
      return result;
    case 15:
      v52 = (this + 272);
      v53 = a3;
      v54 = 0;
      goto LABEL_97;
    case 16:
      v23 = (this + 272);
      v24 = a3;
      v25 = 0;
      goto LABEL_102;
    case 17:
      v52 = (this + 272);
      v53 = a3;
      v54 = 1;
LABEL_97:

      CmhBEAM2NOpt::setModelSpatialFilterReal(v52, v53, v54);
      return result;
    case 18:
      v23 = (this + 272);
      v24 = a3;
      v25 = 1;
LABEL_102:

      Beamformer_BeamNF::CmhBEAM2NOpt::setModelSpatialFilterImag(v23, v24, v25);
      return result;
    case 19:
      v49 = (this + 88);

      *result.i32 = CmhBEAMprocOpt::setModelFreqCompVector(v49, a3);
      return result;
    case 20:
      v37 = (this + 272);

      CmhBEAM2NOpt::setModelOmniEQVector(v37, a3);
      return result;
    case 21:
      v18 = (this + 272);
      v19 = a3;
      v20 = 0;
      goto LABEL_78;
    case 22:
      v56 = (this + 272);
      v57 = a3;
      v58 = 0;
      goto LABEL_108;
    case 23:
      v18 = (this + 272);
      v19 = a3;
      v20 = 1;
LABEL_78:

      *result.i32 = CmhBEAM2NOpt::setModelFreqCompVector(v18, v19, v20);
      return result;
    case 24:
      v56 = (this + 272);
      v57 = a3;
      v58 = 1;
LABEL_108:

      CmhBEAM2NOpt::setModelOmniEQVector(v56, v57, v58);
      return result;
    case 34:
      v68 = *a3;
      *result.i32 = v68;
      Beamformer_BeamNF::CmhBEAM2NOpt::setParameter((this + 272), 29, &v68, result);
      return result;
    case 35:
      v14 = __exp10(*a3 * 0.1);
      *(this + 138) = v14;

      CmhBEAM2NOpt::calc_wng_beta_bound(this + 34, v14);
      return result;
    case 36:
      v38 = (this + 88);

      CmhBEAMprocOpt::setModelFreqEQVector(v38, a3);
      return result;
    case 37:
      v15 = (this + 272);
      v16 = a3;
      v17 = 0;
      goto LABEL_116;
    case 38:
      v15 = (this + 272);
      v16 = a3;
      v17 = 1;
LABEL_116:

      CmhBEAM2NOpt::setModelFreqEQVector(v15, v16, v17);
      return result;
    case 39:
      v35 = *a3;
      v36 = *(this + 89);
      *(v36 + 108) = *a3;
      if (*(this + 70) >= 2)
      {
        *(v36 + 244) = v35;
      }

      return result;
    case 42:
      result.i32[0] = *a3;
      v22 = *(this + 89);
      *(v22 + 112) = *a3;
      if (*(this + 70) >= 2)
      {
        *(v22 + 248) = result.i32[0];
      }

      return result;
    case 43:
      *(this + 139) = *a3;
      return result;
    case 44:
      result.i32[0] = *a3;
      *(this + 140) = *a3;
      return result;
    case 45:
      v66 = *a3;
      if (*a3 <= 1u)
      {
        *(this + 69) = v66;
      }

      *(this + 23) = v66;
      return result;
    case 46:
      v65 = this + 272;

      Beamformer_BeamNF::CmhBEAM2NOpt::setABFVector(v65, a3);
      return result;
    case 47:
      v26 = *(this + 74);
      if (v26 >= 1)
      {
        v27 = *(this + 70);
        if (v27 >= 1)
        {
          v27 = 1;
        }

        v28 = *(this + 89) + 136 * v27;
        v29 = *(v28 - 88);
        v30 = (*(v28 - 80) + 4);
        v31 = (v29 + 4);
        do
        {
          v32 = *a3;
          a3 = (a3 + 4);
          *result.i32 = v32;
          *v31++ = v32;
          *v30++ = v32;
          --v26;
        }

        while (v26);
      }

      return result;
    case 48:
      v41 = *(this + 74);
      if (v41 >= 1)
      {
        v42 = *(this + 70);
        if (v42 >= 2)
        {
          v42 = 2;
        }

        v43 = *(this + 89) + 136 * v42;
        v44 = *(v43 - 88);
        v45 = (*(v43 - 80) + 4);
        v46 = (v44 + 4);
        do
        {
          v47 = *a3;
          a3 = (a3 + 4);
          *result.i32 = v47;
          *v46++ = v47;
          *v45++ = v47;
          --v41;
        }

        while (v41);
      }

      return result;
    case 51:
      *(this + 52) = *a3;
      return result;
    case 65:
      result.i32[0] = *a3;
      *(this + 100) = *a3;
      return result;
    case 66:
      *(this + 128) = *a3;
      return result;
    case 67:
      *(this + 201) = *a3;
      goto LABEL_143;
    case 68:
      *(this + 133) = *a3;
      return result;
    case 69:
      v50 = *a3;
LABEL_134:
      *(this + 134) = v50;
      return result;
    case 70:
      v10 = *a3;
      v11 = *(this + 148);
      v12 = (*(this + 301) + *(this + 295) - 1) & ((*(this + 301) + *(this + 295) - 1) >> 31);
      goto LABEL_95;
    case 71:
      v10 = *a3;
      v11 = *(this + 148);
      v12 = *(this + 301) + *(this + 295) - 1;
      if (v12 >= 1)
      {
        v12 = 1;
      }

LABEL_95:
      *(v11 + 4 * v12) = v10;
      return result;
    case 72:
      v7 = *a3;
      v8 = this + 1176;
      v9 = 0;
      goto LABEL_12;
    case 73:
      v7 = *a3;
      v8 = this + 1176;
      v9 = 1;
LABEL_12:

      Cns::setMinGain(v8, v7, v9);
      return result;
    case 74:
      v33 = *a3;
      v34 = *(this + 70);
      if (v34 >= 1)
      {
        v34 = 1;
      }

      goto LABEL_68;
    case 75:
      v33 = *a3;
      v34 = *(this + 70);
      if (v34 >= 2)
      {
        v34 = 2;
      }

LABEL_68:
      *(*(this + 89) + 136 * v34 - 28) = v33;
      return result;
    case 76:
      result.i32[0] = *a3;
      v6 = *(this + 70);
      if (v6 >= 1)
      {
        v6 = 1;
      }

      goto LABEL_114;
    case 77:
      result.i32[0] = *a3;
      v6 = *(this + 70);
      if (v6 >= 2)
      {
        v6 = 2;
      }

LABEL_114:
      *(*(this + 89) + 136 * v6 - 24) = result.i32[0];
      return result;
    case 78:
      *result.i32 = (*a3 / *(this + 71)) * *(this + 72);
      *(this + 76) = *a3;
      v13 = *(this + 74) - 1;
      if (v13 >= *result.i32)
      {
        v13 = *result.i32;
      }

      *(this + 132) = v13;
      return result;
    case 81:
      v55 = *a3;
      *(this + 102) = *a3;
      *(this + 219) = v55;
      goto LABEL_143;
    case 82:
      v62 = __exp10((*a3 / -20.0));
      *(this + 158) = v62;

      CmhBEAM2NOpt::loadRVSSSuppressionLimits((this + 272));
      return result;
    case 83:
      *(this + 202) = *a3;
      goto LABEL_143;
    case 84:
      *(this + 203) = *a3;
      goto LABEL_143;
    case 85:
      *(this + 204) = *a3;
      goto LABEL_143;
    case 86:
      *(this + 205) = *a3;
      goto LABEL_143;
    case 87:
      *(this + 206) = *a3;
      goto LABEL_143;
    case 88:
      *(this + 207) = *a3;
      goto LABEL_143;
    case 89:
      *(this + 208) = *a3;
      goto LABEL_143;
    case 90:
      *(this + 209) = *a3;
      goto LABEL_143;
    case 91:
      *(this + 210) = *a3;
      goto LABEL_143;
    case 92:
      *(this + 211) = *a3;
      goto LABEL_143;
    case 93:
      *(this + 212) = *a3;
      goto LABEL_143;
    case 94:
      *(this + 213) = *a3;
      goto LABEL_143;
    case 95:
      *(this + 214) = *a3;
      goto LABEL_143;
    case 96:
      *(this + 215) = *a3;
      goto LABEL_143;
    case 97:
      *(this + 216) = *a3;
      goto LABEL_143;
    case 98:
      *(this + 217) = *a3;
      goto LABEL_143;
    case 99:
      *(this + 218) = *a3;
      goto LABEL_143;
    case 100:
      v21 = 0;
      do
      {
        *(this + v21 + 804) = *(a3 + v21);
        v21 += 4;
      }

      while (v21 != 76);
LABEL_143:
      v67 = (this + 768);

      return CmhMicCheck::init_check_mics(v67);
    case 101:
      v5 = *a3;
      *(this + 78) = *a3;
      goto LABEL_131;
    case 102:
      v5 = *a3;
LABEL_131:
      *(this + 270) = v5;
      break;
    case 103:
    case 106:
      result.i32[0] = *a3;
      *(this + 163) = *a3;
      break;
    case 104:
      v39 = *a3;
      *(this + 103) = *a3;
      v40 = ((v39 / *(this + 71)) * *(this + 72));
      if (*(this + 74) - 1 < v40)
      {
        v40 = *(this + 74) - 1;
      }

      *result.i32 = v40;
      *(this + 164) = v40;
      break;
    case 105:
      result.i32[0] = *a3;
      *(this + 165) = *a3;
      break;
    case 107:
      *(this + 104) = *a3;
      break;
    default:
      return result;
  }

  return result;
}

void AllPassComb::AllPassComb(AllPassComb *this, unsigned int a2, double a3)
{
  *this = LODWORD(a3);
  v4 = 0uLL;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  if (a2)
  {
    v5 = a2;
    v10 = 0;
    std::vector<float>::resize(this + 1, a2, &v10, *&a3);
    v9 = 0;
    std::vector<float>::resize(this + 4, v5, &v9, v6);
    v4 = *(this + 8);
    LODWORD(a3) = *this;
  }

  v7 = v4;
  v8 = *(&v4 + 1) - v4;
  *(this + 15) = (ceilf(-5.2983 / logf(*&a3)) * ((*(&v4 + 1) - v4) >> 2));
  if (v8 >= 1)
  {
    bzero(v7, v8);
  }

  *(this + 14) = 0;
}

void sub_1DDF51874(_Unwind_Exception *exception_object)
{
  v4 = v1[4];
  if (v4)
  {
    v1[5] = v4;
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    v1[2] = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

float *AllPassComb::process(float *this, float *a2, float *a3, unsigned int a4)
{
  if (a4)
  {
    v4 = this;
    v5 = *(this + 1);
    v6 = *(this + 2);
    if (v5 == v6)
    {
      __assert_rtn("process", "AllPassComb.cpp", 47, "!mDelayBuf.empty()");
    }

    v7 = a4;
    v10 = v6 - v5;
    if ((v10 >> 2) > 7)
    {
      if (*(this + 5) - *(this + 4) != v10)
      {
        __assert_rtn("process", "AllPassComb.cpp", 58, "mScratchBuf.size() == mDelayBuf.size()");
      }

      v17 = *(this + 14);
      if (v10 >> 2 <= v17)
      {
        __assert_rtn("process", "AllPassComb.cpp", 59, "mCircularIndex < mDelayBuf.size()");
      }

      v18 = 0;
      v19 = v10 >> 2;
      v21 = -*this;
      do
      {
        if (v19 - v17 >= v7)
        {
          v20 = v7;
        }

        else
        {
          v20 = (v19 - v17);
        }

        MEMORY[0x1E12BE8F0](*(v4 + 1) + 4 * v17, 1, &v21, &a2[v18], 1, *(v4 + 4), 1, v20);
        MEMORY[0x1E12BE8F0](*(v4 + 4), 1, v4, *(v4 + 1) + 4 * *(v4 + 14), 1, &a3[v18], 1, v20);
        this = memmove((*(v4 + 1) + 4 * *(v4 + 14)), *(v4 + 4), 4 * v20);
        v18 += v20;
        LODWORD(v17) = *(v4 + 14) + v20;
        if (v17 >= v19)
        {
          LODWORD(v17) = 0;
        }

        *(v4 + 14) = v17;
        v7 -= v20;
      }

      while (v7);
    }

    else
    {
      v11 = v10 >> 2;
      v12 = *(this + 14);
      v13 = a4;
      do
      {
        v14 = *(v5 + 4 * v12);
        v15 = *a2++;
        v16 = v15 - (*this * v14);
        *(v5 + 4 * v12) = v16;
        if (v12 + 1 < v11)
        {
          ++v12;
        }

        else
        {
          v12 = 0;
        }

        *a3++ = v14 + (*this * v16);
        --v13;
      }

      while (v13);
      *(this + 14) = v12;
    }
  }

  return this;
}

BOOL applesauce::CF::details::has_key<__CFString const* const&>(CFDictionaryRef theDict, const void *a2)
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

void applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,__CFString const* const&>(_BYTE *a1, CFDictionaryRef theDict, const void *a3)
{
  v4 = applesauce::CF::details::at_key<__CFString const* const&>(theDict, a3);
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  CFRetain(v4);
  v6 = CFGetTypeID(v5);
  if (v6 != CFArrayGetTypeID())
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

uint64_t AUSM::RoomCongruence::isArrayOf<float>(const __CFArray *a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  result = CFArrayGetCount(a1);
  if (result)
  {
    result = CFArrayGetValueAtIndex(a1, 0);
    if (result)
    {
      return applesauce::CF::convert_as<float,0>(result) >> 32 != 0;
    }
  }

  return result;
}

BOOL AUSM::RoomCongruence::isTuningParametersDictionaryStructurallyValid(CFDictionaryRef *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  if (v2)
  {
    if (applesauce::CF::details::has_key<__CFString const* const&>(v2, @"k"))
    {
      if (!*a1)
      {
        goto LABEL_119;
      }

      if (!applesauce::CF::details::has_key<__CFString const* const&>(*a1, @"exp"))
      {
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v9 = getAUSMV2Log(void)::gLog;
        result = os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR);
        if (result)
        {
          v23 = 136315138;
          v24 = "isTuningParametersDictionaryStructurallyValid";
          v11 = "[Room Congruence] %s: Tuning Parameters invalid - missing exp.";
          goto LABEL_65;
        }

        return result;
      }

      if (!*a1)
      {
        goto LABEL_119;
      }

      if (!applesauce::CF::details::has_key<__CFString const* const&>(*a1, @"lowerVolumeLimit"))
      {
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v9 = getAUSMV2Log(void)::gLog;
        result = os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR);
        if (result)
        {
          v23 = 136315138;
          v24 = "isTuningParametersDictionaryStructurallyValid";
          v11 = "[Room Congruence] %s: Tuning Parameters invalid - missing lower volume limit.";
          goto LABEL_65;
        }

        return result;
      }

      if (!*a1)
      {
        goto LABEL_119;
      }

      if (!applesauce::CF::details::has_key<__CFString const* const&>(*a1, @"upperVolumeLimit"))
      {
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v9 = getAUSMV2Log(void)::gLog;
        result = os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR);
        if (result)
        {
          v23 = 136315138;
          v24 = "isTuningParametersDictionaryStructurallyValid";
          v11 = "[Room Congruence] %s: Tuning Parameters invalid - missing upper volume limit.";
          goto LABEL_65;
        }

        return result;
      }

      if (!*a1)
      {
LABEL_119:
        exception = __cxa_allocate_exception(0x10uLL);
        applesauce::CF::construct_error(exception);
      }

      if (applesauce::CF::details::has_key<__CFString const* const&>(*a1, @"alpha"))
      {
        v3 = applesauce::CF::DictionaryRef::operator->(a1);
        if (applesauce::CF::details::has_key<__CFString const* const&>(*v3, @"beta"))
        {
          v4 = applesauce::CF::DictionaryRef::operator->(a1);
          if (applesauce::CF::details::has_key<__CFString const* const&>(*v4, @"lowerReverbLevelLimit"))
          {
            v5 = applesauce::CF::DictionaryRef::operator->(a1);
            if (applesauce::CF::details::has_key<__CFString const* const&>(*v5, @"isWarpingEnabled"))
            {
              v6 = applesauce::CF::DictionaryRef::operator->(a1);
              if (applesauce::CF::details::has_key<__CFString const* const&>(*v6, @"useSpectralMatching"))
              {
                v7 = applesauce::CF::DictionaryRef::operator->(a1);
                if (applesauce::CF::details::has_key<__CFString const* const&>(*v7, @"isRoomCongruenceEnabled"))
                {
                  v8 = applesauce::CF::DictionaryRef::operator->(a1);
                  if (applesauce::CF::details::find_at_key_or_optional<float,__CFString const* const&>(*v8, @"k") >> 32)
                  {
                    v12 = applesauce::CF::DictionaryRef::operator->(a1);
                    if (applesauce::CF::details::find_at_key_or_optional<float,__CFString const* const&>(*v12, @"exp") >> 32)
                    {
                      v13 = applesauce::CF::DictionaryRef::operator->(a1);
                      if (applesauce::CF::details::find_at_key_or_optional<float,__CFString const* const&>(*v13, @"lowerVolumeLimit") >> 32)
                      {
                        v14 = applesauce::CF::DictionaryRef::operator->(a1);
                        if (applesauce::CF::details::find_at_key_or_optional<float,__CFString const* const&>(*v14, @"upperVolumeLimit") >> 32)
                        {
                          v15 = applesauce::CF::DictionaryRef::operator->(a1);
                          if (applesauce::CF::details::find_at_key_or_optional<float,__CFString const* const&>(*v15, @"alpha") >> 32)
                          {
                            v16 = applesauce::CF::DictionaryRef::operator->(a1);
                            if (applesauce::CF::details::find_at_key_or_optional<float,__CFString const* const&>(*v16, @"beta") >> 32)
                            {
                              v17 = applesauce::CF::DictionaryRef::operator->(a1);
                              if (applesauce::CF::details::find_at_key_or_optional<float,__CFString const* const&>(*v17, @"lowerReverbLevelLimit") >> 32)
                              {
                                v18 = applesauce::CF::DictionaryRef::operator->(a1);
                                if (applesauce::CF::details::find_at_key_or_optional<BOOL,__CFString const* const&>(*v18, @"isWarpingEnabled") > 0xFFu)
                                {
                                  v19 = applesauce::CF::DictionaryRef::operator->(a1);
                                  if (applesauce::CF::details::find_at_key_or_optional<BOOL,__CFString const* const&>(*v19, @"useSpectralMatching") > 0xFFu)
                                  {
                                    v20 = applesauce::CF::DictionaryRef::operator->(a1);
                                    if (applesauce::CF::details::find_at_key_or_optional<BOOL,__CFString const* const&>(*v20, @"useSpectralMatching") > 0xFFu)
                                    {
                                      v21 = applesauce::CF::DictionaryRef::operator->(a1);
                                      if ((applesauce::CF::details::find_at_key_or_optional<int,__CFString const* const&>(*v21) & 0x100000000) != 0)
                                      {
                                        return 1;
                                      }

                                      if (getAUSMV2Log(void)::onceToken != -1)
                                      {
                                        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                                      }

                                      v9 = getAUSMV2Log(void)::gLog;
                                      result = os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR);
                                      if (result)
                                      {
                                        v23 = 136315138;
                                        v24 = "isTuningParametersDictionaryStructurallyValid";
                                        v11 = "[Room Congruence] %s: Tuning Parameters invalid - mismatch between queried and actual type of the library room IR index.";
                                        goto LABEL_65;
                                      }
                                    }

                                    else
                                    {
                                      if (getAUSMV2Log(void)::onceToken != -1)
                                      {
                                        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                                      }

                                      v9 = getAUSMV2Log(void)::gLog;
                                      result = os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR);
                                      if (result)
                                      {
                                        v23 = 136315138;
                                        v24 = "isTuningParametersDictionaryStructurallyValid";
                                        v11 = "[Room Congruence] %s: Tuning Parameters invalid - mismatch between queried and actual type of the room congruence enablement flag.";
                                        goto LABEL_65;
                                      }
                                    }
                                  }

                                  else
                                  {
                                    if (getAUSMV2Log(void)::onceToken != -1)
                                    {
                                      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                                    }

                                    v9 = getAUSMV2Log(void)::gLog;
                                    result = os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR);
                                    if (result)
                                    {
                                      v23 = 136315138;
                                      v24 = "isTuningParametersDictionaryStructurallyValid";
                                      v11 = "[Room Congruence] %s: Tuning Parameters invalid - mismatch between queried and actual type of the spectral matching flag.";
                                      goto LABEL_65;
                                    }
                                  }
                                }

                                else
                                {
                                  if (getAUSMV2Log(void)::onceToken != -1)
                                  {
                                    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                                  }

                                  v9 = getAUSMV2Log(void)::gLog;
                                  result = os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR);
                                  if (result)
                                  {
                                    v23 = 136315138;
                                    v24 = "isTuningParametersDictionaryStructurallyValid";
                                    v11 = "[Room Congruence] %s: Tuning Parameters invalid - mismatch between queried and actual type of the warping enablement flag.";
                                    goto LABEL_65;
                                  }
                                }
                              }

                              else
                              {
                                if (getAUSMV2Log(void)::onceToken != -1)
                                {
                                  dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                                }

                                v9 = getAUSMV2Log(void)::gLog;
                                result = os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR);
                                if (result)
                                {
                                  v23 = 136315138;
                                  v24 = "isTuningParametersDictionaryStructurallyValid";
                                  v11 = "[Room Congruence] %s: Tuning Parameters invalid - mismatch between queried and actual type of lower reverb level limit.";
                                  goto LABEL_65;
                                }
                              }
                            }

                            else
                            {
                              if (getAUSMV2Log(void)::onceToken != -1)
                              {
                                dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                              }

                              v9 = getAUSMV2Log(void)::gLog;
                              result = os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR);
                              if (result)
                              {
                                v23 = 136315138;
                                v24 = "isTuningParametersDictionaryStructurallyValid";
                                v11 = "[Room Congruence] %s: Tuning Parameters invalid - mismatch between queried and actual type of beta.";
                                goto LABEL_65;
                              }
                            }
                          }

                          else
                          {
                            if (getAUSMV2Log(void)::onceToken != -1)
                            {
                              dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                            }

                            v9 = getAUSMV2Log(void)::gLog;
                            result = os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR);
                            if (result)
                            {
                              v23 = 136315138;
                              v24 = "isTuningParametersDictionaryStructurallyValid";
                              v11 = "[Room Congruence] %s: Tuning Parameters invalid - mismatch between queried and actual type of alpha.";
                              goto LABEL_65;
                            }
                          }
                        }

                        else
                        {
                          if (getAUSMV2Log(void)::onceToken != -1)
                          {
                            dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                          }

                          v9 = getAUSMV2Log(void)::gLog;
                          result = os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR);
                          if (result)
                          {
                            v23 = 136315138;
                            v24 = "isTuningParametersDictionaryStructurallyValid";
                            v11 = "[Room Congruence] %s: Tuning Parameters invalid - mismatch between queried and actual type of the upper volume limit.";
                            goto LABEL_65;
                          }
                        }
                      }

                      else
                      {
                        if (getAUSMV2Log(void)::onceToken != -1)
                        {
                          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                        }

                        v9 = getAUSMV2Log(void)::gLog;
                        result = os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR);
                        if (result)
                        {
                          v23 = 136315138;
                          v24 = "isTuningParametersDictionaryStructurallyValid";
                          v11 = "[Room Congruence] %s: Tuning Parameters invalid - mismatch between queried and actual type of lower volume limit.";
                          goto LABEL_65;
                        }
                      }
                    }

                    else
                    {
                      if (getAUSMV2Log(void)::onceToken != -1)
                      {
                        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                      }

                      v9 = getAUSMV2Log(void)::gLog;
                      result = os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR);
                      if (result)
                      {
                        v23 = 136315138;
                        v24 = "isTuningParametersDictionaryStructurallyValid";
                        v11 = "[Room Congruence] %s: Tuning Parameters invalid - mismatch between queried and actual type of exp.";
                        goto LABEL_65;
                      }
                    }
                  }

                  else
                  {
                    if (getAUSMV2Log(void)::onceToken != -1)
                    {
                      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                    }

                    v9 = getAUSMV2Log(void)::gLog;
                    result = os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR);
                    if (result)
                    {
                      v23 = 136315138;
                      v24 = "isTuningParametersDictionaryStructurallyValid";
                      v11 = "[Room Congruence] %s: Tuning Parameters invalid - mismatch between queried and actual type of k.";
LABEL_65:
                      _os_log_error_impl(&dword_1DDB85000, v9, OS_LOG_TYPE_ERROR, v11, &v23, 0xCu);
                      return 0;
                    }
                  }
                }

                else
                {
                  if (getAUSMV2Log(void)::onceToken != -1)
                  {
                    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                  }

                  v9 = getAUSMV2Log(void)::gLog;
                  result = os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR);
                  if (result)
                  {
                    v23 = 136315138;
                    v24 = "isTuningParametersDictionaryStructurallyValid";
                    v11 = "[Room Congruence] %s: Tuning Parameters invalid - missing room congruence enablement data.";
                    goto LABEL_65;
                  }
                }
              }

              else
              {
                if (getAUSMV2Log(void)::onceToken != -1)
                {
                  dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                }

                v9 = getAUSMV2Log(void)::gLog;
                result = os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR);
                if (result)
                {
                  v23 = 136315138;
                  v24 = "isTuningParametersDictionaryStructurallyValid";
                  v11 = "[Room Congruence] %s: Tuning Parameters invalid - missing spectral matching toggle data.";
                  goto LABEL_65;
                }
              }
            }

            else
            {
              if (getAUSMV2Log(void)::onceToken != -1)
              {
                dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
              }

              v9 = getAUSMV2Log(void)::gLog;
              result = os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR);
              if (result)
              {
                v23 = 136315138;
                v24 = "isTuningParametersDictionaryStructurallyValid";
                v11 = "[Room Congruence] %s: Tuning Parameters invalid - missing warping enablement data.";
                goto LABEL_65;
              }
            }
          }

          else
          {
            if (getAUSMV2Log(void)::onceToken != -1)
            {
              dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
            }

            v9 = getAUSMV2Log(void)::gLog;
            result = os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR);
            if (result)
            {
              v23 = 136315138;
              v24 = "isTuningParametersDictionaryStructurallyValid";
              v11 = "[Room Congruence] %s: Tuning Parameters invalid - missing lower reverb level limit.";
              goto LABEL_65;
            }
          }
        }

        else
        {
          if (getAUSMV2Log(void)::onceToken != -1)
          {
            dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
          }

          v9 = getAUSMV2Log(void)::gLog;
          result = os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR);
          if (result)
          {
            v23 = 136315138;
            v24 = "isTuningParametersDictionaryStructurallyValid";
            v11 = "[Room Congruence] %s: Tuning Parameters invalid - missing beta.";
            goto LABEL_65;
          }
        }
      }

      else
      {
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v9 = getAUSMV2Log(void)::gLog;
        result = os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR);
        if (result)
        {
          v23 = 136315138;
          v24 = "isTuningParametersDictionaryStructurallyValid";
          v11 = "[Room Congruence] %s: Tuning Parameters invalid - missing alpha.";
          goto LABEL_65;
        }
      }
    }

    else
    {
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v9 = getAUSMV2Log(void)::gLog;
      result = os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR);
      if (result)
      {
        v23 = 136315138;
        v24 = "isTuningParametersDictionaryStructurallyValid";
        v11 = "[Room Congruence] %s: Tuning Parameters invalid - missing  k.";
        goto LABEL_65;
      }
    }
  }

  else
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v9 = getAUSMV2Log(void)::gLog;
    result = os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v23 = 136315138;
      v24 = "isTuningParametersDictionaryStructurallyValid";
      v11 = "[Room Congruence] %s: Tuning Parameters dictionary invalid - underlying CF object is nil.";
      goto LABEL_65;
    }
  }

  return result;
}

const __CFNumber *applesauce::CF::details::find_at_key_or_optional<int,__CFString const* const&>(const __CFDictionary *a1)
{
  result = applesauce::CF::details::at_key<__CFString const* const&>(a1, @"libraryRoomIr");
  if (result)
  {

    return applesauce::CF::convert_as<int,0>(result);
  }

  return result;
}

void AUSM::RoomCongruence::findIndicesOfCenterFreqsWithinRange(void *a1, float *a2, float *a3, float a4, float a5)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2 != a3)
  {
    for (i = a2 + 1; i != a3; ++i)
    {
      v7 = *(i - 1);
      v6 = *i;
      if (v6 < v7)
      {
        return;
      }
    }

    v8 = a3 - a2;
    v9 = a2;
    v10 = v8;
    do
    {
      v11 = v10 >> 1;
      v12 = &v9[v10 >> 1];
      v14 = *v12;
      v13 = v12 + 1;
      v10 += ~(v10 >> 1);
      if (v14 < a4)
      {
        v9 = v13;
      }

      else
      {
        v10 = v11;
      }
    }

    while (v10);
    if (v9 != a3)
    {
      v15 = a2;
      do
      {
        v16 = v8 >> 1;
        v17 = &v15[v8 >> 1];
        v19 = *v17;
        v18 = v17 + 1;
        v8 += ~(v8 >> 1);
        if (v19 > a5)
        {
          v8 = v16;
        }

        else
        {
          v15 = v18;
        }
      }

      while (v8);
      if (v15 - 1 != a3)
      {
        v20 = v9 - a2;
        v21 = v15 - 1 - a2;
        if (v21 >= v20 >> 2)
        {
          v22 = v21 - (v20 >> 2);
          v23 = v22 + 1;
          if (v22 != -1)
          {
            if (!(v23 >> 61))
            {
              std::allocator<std::complex<float>>::allocate_at_least[abi:ne200100](v23);
            }

            std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
          }

          std::allocator<std::complex<float>>::allocate_at_least[abi:ne200100](1uLL);
        }
      }
    }
  }
}

void sub_1DDF52AE0(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AUSM::RoomCongruence::computeIdealRt60(AUSM::RoomCongruence *this, float a2, float a3, float a4)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a2 <= 0.0)
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v5 = getAUSMV2Log(void)::gLog;
    if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    v10 = 136315138;
    v11 = "computeIdealRt60";
    v6 = "[Room Congruence] %s: The input room volume must be greater than 0. Returning empty optional.";
    goto LABEL_22;
  }

  if (a3 <= 0.0)
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v5 = getAUSMV2Log(void)::gLog;
    if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    v10 = 136315138;
    v11 = "computeIdealRt60";
    v6 = "[Room Congruence] %s: The input k parameter must be greater than 0. Returning empty optional.";
    goto LABEL_22;
  }

  if (a4 > 0.0 && a4 < 1.0)
  {
    v8 = COERCE_UNSIGNED_INT(powf(a2 / 100.0, a4) * a3);
    v7 = 0x100000000;
    return v8 | v7;
  }

  if (getAUSMV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
  }

  v5 = getAUSMV2Log(void)::gLog;
  if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
  {
    v10 = 136315138;
    v11 = "computeIdealRt60";
    v6 = "[Room Congruence] %s: The input k parameter must be greater than 0 and smaller than 1. Returning empty optional.";
LABEL_22:
    _os_log_error_impl(&dword_1DDB85000, v5, OS_LOG_TYPE_ERROR, v6, &v10, 0xCu);
  }

LABEL_18:
  v7 = 0;
  v8 = 0;
  return v8 | v7;
}

void *CADeprecated::CABufferList::New(char a1, unsigned int a2)
{
  if ((a1 & 0x20) != 0)
  {
    v2 = a2;
  }

  else
  {
    v2 = 1;
  }

  if ((a1 & 0x20) != 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = a2;
  }

  result = operator new(16 * v2 + 32);
  *result = "";
  result[1] = 0;
  *(result + 4) = 0;
  *(result + 6) = v2;
  if (v2)
  {
    v5 = (result + 4);
    do
    {
      *v5 = v3;
      *(v5 + 1) = 0;
      *(v5 + 1) = 0;
      v5 += 16;
      --v2;
    }

    while (v2);
  }

  return result;
}

void std::default_delete<CADeprecated::CABufferList>::operator()[abi:ne200100](void *__p)
{
  v2 = __p[1];
  if (v2)
  {
    MEMORY[0x1E12BD130](v2, 0x1000C8077774924);
  }

  operator delete(__p);
}

void AUThermalSpeakerProtection::~AUThermalSpeakerProtection(AUThermalSpeakerProtection *this)
{
  AUDspLib::~AUDspLib(this);

  JUMPOUT(0x1E12BD160);
}

int *afSTFTinit(void *a1, int a2, int a3, int a4, int a5, int a6)
{
  result = malloc_type_malloc(0x78uLL, 0x1080040954E4962uLL);
  v13 = result;
  *a1 = result;
  if (a2 > 255)
  {
    switch(a2)
    {
      case 256:
        v14 = 9;
        break;
      case 512:
        v14 = 10;
        break;
      case 1024:
        v14 = 11;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(a2)
    {
      case 32:
        v14 = 6;
        break;
      case 64:
        v14 = 7;
        break;
      case 128:
        v14 = 8;
        break;
      default:
        return result;
    }
  }

  result[22] = v14;
  *result = a3;
  result[1] = a4;
  v15 = 0x400u / a2;
  result[3] = a2;
  result[4] = 0x2800 / v15;
  result[8] = 0;
  result[9] = 10;
  result[6] = a5;
  result[7] = 0;
  *(result + 5) = malloc_type_malloc(4 * (0x2800 / v15), 0x100004052888210uLL);
  *(v13 + 6) = malloc_type_malloc(4 * v13[4], 0x100004052888210uLL);
  *(v13 + 7) = malloc_type_malloc(8 * *v13, 0x80040B8603338uLL);
  *(v13 + 10) = malloc_type_malloc(8 * v13[1], 0x80040B8603338uLL);
  *(v13 + 8) = malloc_type_calloc(4uLL, 2 * v13[3], 0x100004052888210uLL);
  v16 = malloc_type_calloc(4uLL, 2 * v13[3], 0x100004052888210uLL);
  *(v13 + 9) = v16;
  v17 = *(v13 + 8);
  v18 = v13[22];
  v19 = malloc_type_malloc(0x30uLL, 0x10A004082EF2C97uLL);
  *(v13 + 12) = v19;
  *v19 = v17;
  v19[1] = v16;
  *(v19 + 4) = ldexpf(1.0, v18);
  *(v19 + 5) = v18;
  result = vDSP_create_fftsetup(v18, 0);
  v19[3] = result;
  v19[4] = v16;
  v19[5] = &v16[4 * (*(v19 + 4) / 2)];
  v20 = v13[3];
  v21 = v13[4];
  if (v13[6])
  {
    if (v21 >= 1)
    {
      v22 = 0;
      v23 = 1.0 / sqrtf(v20 * 4.5446);
      v24 = *(v13 + 6);
      v25 = 4 * v21;
      v26 = *(v13 + 5) - 4;
      do
      {
        v27 = v23 * protoFilter1024LD[v22 * v15];
        *(v26 + v25) = v27;
        *v24++ = v27;
        ++v22;
        v25 -= 4;
      }

      while (v25);
    }
  }

  else if (v21 >= 1)
  {
    v28 = 0;
    v29 = 1.0 / sqrtf(v20 * 5.4876);
    v30 = 4 * v21;
    v31 = *(v13 + 6) - 4;
    v32 = *(v13 + 5) - 4;
    do
    {
      v33 = v29 * protoFilter1024[v28 * v15];
      *(v32 + v30) = v33;
      *(v31 + v30) = v33;
      ++v28;
      v30 -= 4;
    }

    while (v30);
  }

  if (*v13 >= 1)
  {
    v34 = 0;
    do
    {
      result = malloc_type_calloc(v13[4], 4uLL, 0x100004052888210uLL);
      *(*(v13 + 7) + 8 * v34++) = result;
    }

    while (v34 < *v13);
  }

  LODWORD(v35) = v13[1];
  if (v35 >= 1)
  {
    v36 = 0;
    do
    {
      result = malloc_type_calloc(v13[4], 4uLL, 0x100004052888210uLL);
      *(*(v13 + 10) + 8 * v36++) = result;
      v35 = v13[1];
    }

    while (v36 < v35);
  }

  v13[28] = a6;
  if (a6)
  {
    v37 = v13[3];
    v38 = *v13;
    v39 = malloc_type_malloc(0x28uLL, 0x108004064FE8EA7uLL);
    *(v13 + 13) = v39;
    v39[1] = v35;
    v39[2] = v37;
    *v39 = v38;
    result = malloc_type_malloc(8 * v38, 0x2004093837F09uLL);
    *(v39 + 3) = result;
    v39[8] = 0;
    if (*v39 >= 1)
    {
      v40 = 0;
      do
      {
        v41 = 0;
        *(*(v39 + 3) + 8 * v40) = malloc_type_malloc(0x70uLL, 0x80040803F642BuLL);
        do
        {
          *(*(*(v39 + 3) + 8 * v40) + v41) = malloc_type_calloc(4uLL, v39[2] + 1, 0x100004052888210uLL);
          result = malloc_type_calloc(4uLL, v39[2] + 1, 0x100004052888210uLL);
          *(*(*(v39 + 3) + 8 * v40) + v41 + 8) = result;
          v41 += 16;
        }

        while (v41 != 112);
        ++v40;
      }

      while (v40 < *v39);
    }
  }

  return result;
}

void afSTFTreset(int *a1)
{
  v2 = *(a1 + 13);
  if (*a1 >= 1)
  {
    v3 = 0;
    do
    {
      bzero(*(*(a1 + 7) + 8 * v3++), 4 * a1[4]);
    }

    while (v3 < *a1);
  }

  if (a1[1] >= 1)
  {
    v4 = 0;
    do
    {
      bzero(*(*(a1 + 10) + 8 * v4++), 4 * a1[4]);
    }

    while (v4 < a1[1]);
  }

  if (a1[28] && *v2 >= 1)
  {
    v5 = 0;
    do
    {
      for (i = 0; i != 112; i += 16)
      {
        bzero(*(*(*(v2 + 3) + 8 * v5) + i), 4 * a1[3] + 4);
        bzero(*(*(*(v2 + 3) + 8 * v5) + i + 8), 4 * a1[3] + 4);
      }

      ++v5;
    }

    while (v5 < *v2);
  }
}

int *afSTFTforwardWithFrameOffset(int *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  v80 = *MEMORY[0x1E69E9840];
  if (*result >= 1)
  {
    v7 = 0;
    v8 = a3;
    do
    {
      v9 = v5[7];
      memcpy((*(*(v5 + 7) + 8 * v7) + 4 * v5[3] * v9), (*(a2 + 8 * v7) + 4 * v8), 4 * v5[3]);
      v10 = v5[9];
      vDSP_vclr(*(v5 + 8), 1, 2 * v5[3]);
      if (v5[9] >= 1)
      {
        v11 = 0;
        v12 = 0;
        if (v9 + 1 < v10)
        {
          v13 = v9 + 1;
        }

        else
        {
          v13 = 0;
        }

        do
        {
          if (v11)
          {
            v14 = v5[3];
          }

          else
          {
            v14 = 0;
          }

          v11 ^= 1u;
          MEMORY[0x1E12BE780](*(*(v5 + 7) + 8 * v7) + 4 * v5[3] * v13, 1, *(v5 + 5) + 4 * v5[3] * v12, 1, *(v5 + 8) + 4 * v14, 1, *(v5 + 8) + 4 * v14, 1, v5[3]);
          v15 = v5[9];
          if (v13 + 1 < v15)
          {
            ++v13;
          }

          else
          {
            v13 = 0;
          }

          ++v12;
        }

        while (v12 < v15);
      }

      vtRunFFT(*(v5 + 12), 1);
      v16 = *(v5 + 9);
      v17 = a4 + 16 * v7;
      v18 = *v17;
      v19 = *(v17 + 8);
      *v18 = *v16;
      *v19 = 0;
      v20 = v5[3];
      v18[v20] = v16[v20];
      v19[v20] = 0;
      v21 = &v16[v20 + 1];
      memcpy(v18 + 1, v16 + 1, 4 * v20 - 4);
      result = memcpy(v19 + 1, v21, 4 * v5[3] - 4);
      ++v7;
    }

    while (v7 < *v5);
  }

  v22 = v5[7];
  if (v22 + 1 < v5[9])
  {
    v23 = v22 + 1;
  }

  else
  {
    v23 = 0;
  }

  v5[7] = v23;
  if (v5[28])
  {
    v24 = *(v5 + 13);
    v25 = v24[8];
    v26 = v25 == 6 ? 0 : v25 + 1;
    v24[8] = v26;
    if (*v24 >= 1)
    {
      v27 = 0;
      v28 = *(v24 + 3);
      v75 = vdupq_n_s64(7uLL);
      do
      {
        v29 = a4 + 16 * v27;
        v31 = *(v29 + 8);
        v30 = (v29 + 8);
        v32 = *(v28 + 8 * v27) + 16 * v26;
        v33 = *(v32 + 8);
        memcpy(*v32, *v29, 4 * v24[2] + 4);
        memcpy(v33, v31, 4 * v24[2] + 4);
        v34 = v24[8];
        if (v34 >= 3)
        {
          v35 = -3;
        }

        else
        {
          v35 = 4;
        }

        v36 = v35 + v34;
        v37 = (*(*(v24 + 3) + 8 * v27) + 16 * v36);
        v38 = 1;
        v39 = (a4 + 16 * v27);
        do
        {
          v40 = v38;
          v41 = *v37;
          v42 = *v39;
          *v42 = *v41;
          v43 = *(v41 + 4) * 0.5;
          *(v42 + 4) = v43;
          *(v42 + 8) = v43;
          v44 = *(v41 + 8) * 0.5;
          *(v42 + 12) = v44;
          *(v42 + 16) = v44;
          v45 = *(v41 + 12) * 0.5;
          *(v42 + 20) = v45;
          *(v42 + 24) = v45;
          v46 = *(v41 + 16) * 0.5;
          *(v42 + 28) = v46;
          *(v42 + 32) = v46;
          memcpy((v42 + 36), (v41 + 20), 4 * v24[2] - 16);
          v38 = 0;
          v28 = *(v24 + 3);
          v48 = *(v28 + 8 * v27);
          v37 = (v48 + 16 * v36 + 8);
          v39 = (v29 + 8);
        }

        while ((v40 & 1) != 0);
        v26 = v24[8];
        v47.i32[0] = v26;
        v49.i64[0] = 0x100000001;
        v49.i64[1] = 0x100000001;
        v50 = vdupq_lane_s32(*&vaddq_s32(v47, v49), 0);
        v51 = 3;
        v52 = xmmword_1DE095160;
        v53 = xmmword_1DE095150;
        do
        {
          v54 = vaddq_s32(v50, vuzp1q_s32(v52, v53));
          if (vuzp1_s16(vmovn_s64(vcgtq_u64(v75, v52)), *v50.i8).u8[0])
          {
            v55 = v54.i32[0];
            if (v54.i32[0] > 6)
            {
              v55 = v54.i32[0] - 7;
            }

            v76[v51 - 3] = v55;
          }

          if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(7uLL), *&v52)), *&v50).i8[2])
          {
            v56 = v54.i32[1];
            if (v54.i32[1] > 6)
            {
              v56 = v54.i32[1] - 7;
            }

            v76[v51 - 2] = v56;
          }

          if (vuzp1_s16(*&v50, vmovn_s64(vcgtq_u64(vdupq_n_s64(7uLL), *&v53))).i32[1])
          {
            v57 = v54.i32[2];
            if (v54.i32[2] > 6)
            {
              v57 = v54.i32[2] - 7;
            }

            v76[v51 - 1] = v57;
          }

          if (vuzp1_s16(*&v50, vmovn_s64(vcgtq_u64(vdupq_n_s64(7uLL), *&v53))).i8[6])
          {
            v58 = v54.i32[3];
            if (v54.i32[3] > 6)
            {
              v58 = v54.i32[3] - 7;
            }

            v76[v51] = v58;
          }

          v59 = vdupq_n_s64(4uLL);
          v53 = vaddq_s64(v53, v59);
          v52 = vaddq_s64(v52, v59);
          v51 += 4;
        }

        while (v51 != 11);
        v60 = 0;
        v62 = *(v48 + 16 * v79);
        v61 = *(v48 + 16 * v79 + 8);
        v64 = *(v48 + 16 * v78);
        v63 = *(v48 + 16 * v78 + 8);
        v66 = *(v48 + 16 * v77);
        v65 = *(v48 + 16 * v77 + 8);
        result = *(v48 + 16 * v76[0]);
        v67 = *(v48 + 16 * v76[0] + 8);
        v68 = (*v29 + 4);
        for (i = 1; i != 5; ++i)
        {
          v70 = (((*(v61 + 4 * i) * -0.031273) + (*(v63 + 4 * i) * -0.28127)) + (*(v65 + 4 * i) * 0.28127)) + (*(v67 + 4 * i) * 0.031273);
          v71 = (((*(v62 + 4 * i) * 0.031273) + (*(v64 + 4 * i) * 0.28127)) + (*(v66 + 4 * i) * -0.28127)) + (*&result[i] * -0.031273);
          v72 = *v68;
          if ((i & 5) == 1)
          {
            *v68 = v72 - v70;
            v73 = *v30 + 4 * v60;
            *(v73 + 4) = *(v73 + 4) - v71;
            v68[1] = v70 + v68[1];
            v74 = v71 + *(v73 + 8);
          }

          else
          {
            *v68 = v70 + v72;
            v73 = *v30 + 4 * v60;
            *(v73 + 4) = v71 + *(v73 + 4);
            v68[1] = v68[1] - v70;
            v74 = *(v73 + 8) - v71;
          }

          *(v73 + 8) = v74;
          v60 += 2;
          v68 += 2;
        }

        ++v27;
      }

      while (v27 < *v24);
    }
  }

  return result;
}