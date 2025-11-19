void sub_1DE246944(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, const void *a26)
{
  __cxa_free_exception(v26);
  applesauce::CF::NumberRef::~NumberRef(&a26);
  applesauce::CF::NumberRef::~NumberRef((v27 - 96));
  __clang_call_terminate(a1);
}

double AMCP::Implementation::In_Place_Storage<applesauce::CF::DictionaryRef>::destruct(uint64_t a1)
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

uint64_t AMCP::Implementation::In_Place_Storage<applesauce::CF::DictionaryRef>::construct<applesauce::CF::DictionaryRef const&>(uint64_t a1, CFTypeRef *a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v3 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  *a1 = v3;
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<applesauce::CF::DictionaryRef>::dispatch;
  return a1;
}

CFTypeRef *AMCP::Thing::convert_to<applesauce::CF::DictionaryRef>(void *a1, uint64_t a2)
{
  if (!*(a2 + 32))
  {
    goto LABEL_16;
  }

  v4 = AMCP::Implementation::get_type_marker<applesauce::CF::DictionaryRef>();
  v5 = *(a2 + 32);
  v18 = 0;
  if (v5)
  {
    v5(3, a2, 0, &v18);
    v5 = v18;
  }

  if (v5 == v4)
  {
    *&v16[0] = v4;
    result = (*(a2 + 32))(4, a2, 0, v16);
    if (result)
    {
      v7 = *result;
      if (*result)
      {
        result = CFRetain(*result);
      }

      *a1 = v7;
      return result;
    }

LABEL_16:
    exception = __cxa_allocate_exception(8uLL);
    v10 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v10, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v15 = AMCP::Implementation::get_type_marker<applesauce::CF::DictionaryRef>();
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  (*(a2 + 32))(6, a2, v16, &v15);
  if (!v17)
  {
    v11 = __cxa_allocate_exception(8uLL);
    v12 = std::bad_cast::bad_cast(v11);
    __cxa_throw(v12, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v15 = v4;
  result = v17(4, v16, 0, &v15);
  if (!result)
  {
    v13 = __cxa_allocate_exception(8uLL);
    v14 = std::bad_cast::bad_cast(v13);
    __cxa_throw(v14, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v8 = *result;
  if (*result)
  {
    result = CFRetain(*result);
  }

  *a1 = v8;
  if (v17)
  {
    return v17(0, v16, 0, 0);
  }

  return result;
}

void sub_1DE246EE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

void applesauce::CF::DictionaryRef::~DictionaryRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

double AMCP::Implementation::create_acl_from<applesauce::CF::DictionaryRef>(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a3 != AMCP::Implementation::get_type_marker<CA::ChannelLayout>() && *a3 != AMCP::Implementation::get_type_marker<applesauce::CF::DictionaryRef>())
  {
    goto LABEL_91;
  }

  if (*(a2 + 32))
  {
    v84 = AMCP::Implementation::get_type_marker<applesauce::CF::DictionaryRef>();
    v5 = (*(a2 + 32))(4, a2, 0, &v84);
  }

  else
  {
    v5 = 0;
  }

  if (*a3 != AMCP::Implementation::get_type_marker<CA::ChannelLayout>())
  {
    if (*a3 == AMCP::Implementation::get_type_marker<applesauce::CF::DictionaryRef>())
    {
      if (v5)
      {
        *(a1 + 32) = 0;
        *a1 = 0u;
        *(a1 + 16) = 0u;
        AMCP::Implementation::In_Place_Storage<applesauce::CF::DictionaryRef>::construct<applesauce::CF::DictionaryRef const&>(a1, v5);
        return result;
      }

LABEL_98:
      __assert_rtn("create_acl_from", "Thing.h", 1632, "in_value_ptr != nullptr");
    }

LABEL_91:
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return result;
  }

  if (!v5)
  {
    goto LABEL_98;
  }

  if (!*v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v84 = CFStringCreateWithBytes(0, "channel layout tag", 18, 0x8000100u, 0);
  if (!v84)
  {
    v68 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v68, "Could not construct");
    __cxa_throw(v68, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  LODWORD(valuePtr) = 0;
  cf = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!cf)
  {
    v69 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v69, "Could not construct");
    __cxa_throw(v69, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::at_or<applesauce::CF::NumberRef,applesauce::CF::StringRef>(&v89, *v5, v84, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v84)
  {
    CFRelease(v84);
  }

  if (!*v5)
  {
    v70 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v70, "Could not construct");
    __cxa_throw(v70, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v84 = CFStringCreateWithBytes(0, "channel bitmap", 14, 0x8000100u, 0);
  if (!v84)
  {
    v71 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v71, "Could not construct");
    __cxa_throw(v71, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  LODWORD(v86) = 0;
  valuePtr = CFNumberCreate(0, kCFNumberIntType, &v86);
  if (!valuePtr)
  {
    v72 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v72, "Could not construct");
    __cxa_throw(v72, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::at_or<applesauce::CF::NumberRef,applesauce::CF::StringRef>(&cf, *v5, v84, &valuePtr);
  if (valuePtr)
  {
    CFRelease(valuePtr);
  }

  if (v84)
  {
    CFRelease(v84);
  }

  if (!*v5)
  {
    v73 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v73, "Could not construct");
    __cxa_throw(v73, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v6 = CFStringCreateWithBytes(0, "channel descriptions", 20, 0x8000100u, 0);
  v84 = v6;
  if (!v6)
  {
    v74 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v74, "Could not construct");
    __cxa_throw(v74, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v7 = CFArrayCreate(0, 0, 0, MEMORY[0x1E695E9C8]);
  v86 = v7;
  if (v7)
  {
    v8 = CFGetTypeID(v7);
    if (v8 != CFArrayGetTypeID())
    {
      v78 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v78, "Could not construct");
      __cxa_throw(v78, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  applesauce::CF::at_or<applesauce::CF::ArrayRef,applesauce::CF::StringRef>(&valuePtr, *v5, v6, &v86);
  if (v86)
  {
    CFRelease(v86);
  }

  CFRelease(v6);
  v9 = valuePtr;
  if (!valuePtr)
  {
    v75 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v75, "Could not construct");
    __cxa_throw(v75, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  Count = CFArrayGetCount(valuePtr);
  v11 = v89;
  if (!v89)
  {
    v76 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v76, "Could not construct");
    __cxa_throw(v76, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v12 = Count;
  v13 = applesauce::CF::convert_to<unsigned int,0>(v89);
  v14 = cf;
  if (!cf)
  {
    v77 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v77, "Could not construct");
    __cxa_throw(v77, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v15 = v13;
  v16 = applesauce::CF::convert_to<unsigned int,0>(cf);
  if (v12 <= 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = v12;
  }

  LOBYTE(v86) = 0;
  std::vector<char>::vector[abi:ne200100](&v84, 20 * v17 + 12);
  v18 = v84;
  *v84 = v15;
  v18[1] = v16;
  v18[2] = v12;
  if (v12)
  {
    v79 = v14;
    v19 = 0;
    v20 = 0;
    v21 = MEMORY[0x1E695E9C8];
    do
    {
      v22 = CFDictionaryCreate(0, 0, 0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
      v83 = v22;
      if (v22)
      {
        v23 = CFGetTypeID(v22);
        if (v23 != CFDictionaryGetTypeID())
        {
          v65 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v65, "Could not construct");
          __cxa_throw(v65, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }
      }

      applesauce::CF::at_or<applesauce::CF::DictionaryRef>(&v86, v9, v20, &v83);
      if (v83)
      {
        CFRelease(v83);
      }

      v24 = v86;
      if (!v86)
      {
        v47 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v47, "Could not construct");
        __cxa_throw(v47, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      v82 = CFStringCreateWithBytes(0, "channel label", 13, 0x8000100u, 0);
      if (!v82)
      {
        v48 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v48, "Could not construct");
        __cxa_throw(v48, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      v90 = -1;
      v81 = CFNumberCreate(0, kCFNumberIntType, &v90);
      if (!v81)
      {
        v45 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v45, "Could not construct");
        __cxa_throw(v45, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      applesauce::CF::at_or<applesauce::CF::NumberRef,applesauce::CF::StringRef>(&v83, v24, v82, &v81);
      v25 = v83;
      if (!v83)
      {
        v46 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v46, "Could not construct");
        __cxa_throw(v46, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      v26 = applesauce::CF::convert_to<unsigned int,0>(v83);
      v27 = *(v84 + 2);
      if (v27 > (v85 - v84 - 12) / 0x14uLL)
      {
        __assert_rtn("GetNumberChannelDescriptions", "CoreAudioBaseTypes.hpp", 2252, "GetAudioChannelLayout().mNumberChannelDescriptions <= (mStorage.size() - kHeaderSize) / sizeof(AudioChannelDescription)");
      }

      if (v20 >= v27)
      {
        v52 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v52, "accessing a CA::ChannelLayout with an out-of-range index");
        v52->__vftable = (MEMORY[0x1E69E55B8] + 16);
        __cxa_throw(v52, off_1E8672F68, MEMORY[0x1E69E5280]);
      }

      *(v84 + v19 + 12) = v26;
      CFRelease(v25);
      if (v81)
      {
        CFRelease(v81);
      }

      if (v82)
      {
        CFRelease(v82);
      }

      v82 = CFStringCreateWithBytes(0, "channel flags", 13, 0x8000100u, 0);
      if (!v82)
      {
        v50 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v50, "Could not construct");
        __cxa_throw(v50, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      v90 = 0;
      v81 = CFNumberCreate(0, kCFNumberIntType, &v90);
      if (!v81)
      {
        v51 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v51, "Could not construct");
        __cxa_throw(v51, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      applesauce::CF::at_or<applesauce::CF::NumberRef,applesauce::CF::StringRef>(&v83, v24, v82, &v81);
      v28 = v83;
      if (!v83)
      {
        v49 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v49, "Could not construct");
        __cxa_throw(v49, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      v29 = applesauce::CF::convert_to<unsigned int,0>(v83);
      v30 = *(v84 + 2);
      if (v30 > (v85 - v84 - 12) / 0x14uLL)
      {
        __assert_rtn("GetNumberChannelDescriptions", "CoreAudioBaseTypes.hpp", 2252, "GetAudioChannelLayout().mNumberChannelDescriptions <= (mStorage.size() - kHeaderSize) / sizeof(AudioChannelDescription)");
      }

      if (v20 >= v30)
      {
        v54 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v54, "accessing a CA::ChannelLayout with an out-of-range index");
        v54->__vftable = (MEMORY[0x1E69E55B8] + 16);
        __cxa_throw(v54, off_1E8672F68, MEMORY[0x1E69E5280]);
      }

      *(v84 + v19 + 16) = v29;
      CFRelease(v28);
      if (v81)
      {
        CFRelease(v81);
      }

      if (v82)
      {
        CFRelease(v82);
      }

      v31 = CFStringCreateWithBytes(0, "coordinates", 11, 0x8000100u, 0);
      v82 = v31;
      if (!v31)
      {
        v53 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v53, "Could not construct");
        __cxa_throw(v53, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      v32 = CFArrayCreate(0, 0, 0, v21);
      v81 = v32;
      if (v32)
      {
        v33 = CFGetTypeID(v32);
        if (v33 != CFArrayGetTypeID())
        {
          v66 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v66, "Could not construct");
          __cxa_throw(v66, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }
      }

      applesauce::CF::at_or<applesauce::CF::ArrayRef,applesauce::CF::StringRef>(&v83, v24, v31, &v81);
      if (v81)
      {
        CFRelease(v81);
      }

      CFRelease(v31);
      v34 = v83;
      if (!v83)
      {
        v57 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v57, "Could not construct");
        __cxa_throw(v57, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      v90 = 0;
      v81 = CFNumberCreate(0, kCFNumberIntType, &v90);
      if (!v81)
      {
        v56 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v56, "Could not construct");
        __cxa_throw(v56, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      applesauce::CF::at_or<applesauce::CF::NumberRef>(&v82, v34, 0, &v81);
      v35 = v82;
      if (!v82)
      {
        v55 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v55, "Could not construct");
        __cxa_throw(v55, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      v36 = applesauce::CF::convert_to<float,0>(v82);
      v37 = *(v84 + 2);
      if (v37 > (v85 - v84 - 12) / 0x14uLL)
      {
        __assert_rtn("GetNumberChannelDescriptions", "CoreAudioBaseTypes.hpp", 2252, "GetAudioChannelLayout().mNumberChannelDescriptions <= (mStorage.size() - kHeaderSize) / sizeof(AudioChannelDescription)");
      }

      if (v20 >= v37)
      {
        v60 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v60, "accessing a CA::ChannelLayout with an out-of-range index");
        v60->__vftable = (MEMORY[0x1E69E55B8] + 16);
        __cxa_throw(v60, off_1E8672F68, MEMORY[0x1E69E5280]);
      }

      *(v84 + v19 + 20) = v36;
      CFRelease(v35);
      if (v81)
      {
        CFRelease(v81);
      }

      v90 = 0;
      v81 = CFNumberCreate(0, kCFNumberIntType, &v90);
      if (!v81)
      {
        v58 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v58, "Could not construct");
        __cxa_throw(v58, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      applesauce::CF::at_or<applesauce::CF::NumberRef>(&v82, v34, 1uLL, &v81);
      v38 = v82;
      if (!v82)
      {
        v59 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v59, "Could not construct");
        __cxa_throw(v59, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      v39 = applesauce::CF::convert_to<float,0>(v82);
      v40 = *(v84 + 2);
      if (v40 > (v85 - v84 - 12) / 0x14uLL)
      {
        __assert_rtn("GetNumberChannelDescriptions", "CoreAudioBaseTypes.hpp", 2252, "GetAudioChannelLayout().mNumberChannelDescriptions <= (mStorage.size() - kHeaderSize) / sizeof(AudioChannelDescription)");
      }

      if (v20 >= v40)
      {
        v61 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v61, "accessing a CA::ChannelLayout with an out-of-range index");
        v61->__vftable = (MEMORY[0x1E69E55B8] + 16);
        __cxa_throw(v61, off_1E8672F68, MEMORY[0x1E69E5280]);
      }

      *(v84 + v19 + 24) = v39;
      CFRelease(v38);
      if (v81)
      {
        CFRelease(v81);
      }

      v90 = 0;
      v81 = CFNumberCreate(0, kCFNumberIntType, &v90);
      if (!v81)
      {
        v62 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v62, "Could not construct");
        __cxa_throw(v62, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      applesauce::CF::at_or<applesauce::CF::NumberRef>(&v82, v34, 2uLL, &v81);
      v41 = v82;
      if (!v82)
      {
        v63 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v63, "Could not construct");
        __cxa_throw(v63, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      v42 = applesauce::CF::convert_to<float,0>(v82);
      v43 = *(v84 + 2);
      if (v43 > (v85 - v84 - 12) / 0x14uLL)
      {
        __assert_rtn("GetNumberChannelDescriptions", "CoreAudioBaseTypes.hpp", 2252, "GetAudioChannelLayout().mNumberChannelDescriptions <= (mStorage.size() - kHeaderSize) / sizeof(AudioChannelDescription)");
      }

      if (v20 >= v43)
      {
        v64 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v64, "accessing a CA::ChannelLayout with an out-of-range index");
        v64->__vftable = (MEMORY[0x1E69E55B8] + 16);
        __cxa_throw(v64, off_1E8672F68, MEMORY[0x1E69E5280]);
      }

      *(v84 + v19 + 28) = v42;
      CFRelease(v41);
      if (v81)
      {
        CFRelease(v81);
      }

      CFRelease(v34);
      CFRelease(v24);
      ++v20;
      v19 += 20;
    }

    while (v12 != v20);
    v18 = v84;
    v14 = v79;
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>(a1, v18, v85, v85 - v18);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<CA::ChannelLayout>::dispatch;
  if (v84)
  {
    v85 = v84;
    operator delete(v84);
  }

  CFRelease(v9);
  CFRelease(v14);
  CFRelease(v11);
  return result;
}

void sub_1DE248000(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, uint64_t a23, const void *a24, __int16 a25, char a26, char a27, int a28, __int16 a29, char a30, char a31, int a32, __int16 a33, char a34, char a35)
{
  __cxa_free_exception(v35);
  applesauce::CF::ObjectRef<__CFArray const*>::~ObjectRef(&a24);
  __clang_call_terminate(a1);
}

uint64_t AMCP::Implementation::create_asbd_from<applesauce::CF::DictionaryRef>(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a3 != AMCP::Implementation::get_type_marker<AudioStreamBasicDescription>() && *a3 != AMCP::Implementation::get_type_marker<CA::StreamDescription>())
  {
    result = AMCP::Implementation::get_type_marker<applesauce::CF::DictionaryRef>();
    if (*a3 != result)
    {
      goto LABEL_144;
    }
  }

  if (*(a2 + 32))
  {
    v80 = AMCP::Implementation::get_type_marker<applesauce::CF::DictionaryRef>();
    v7 = (*(a2 + 32))(4, a2, 0, &v80);
  }

  else
  {
    v7 = 0;
  }

  if (*a3 == AMCP::Implementation::get_type_marker<AudioStreamBasicDescription>())
  {
    if (v7)
    {
      if (*v7)
      {
        v79 = CFStringCreateWithBytes(0, "sample rate", 11, 0x8000100u, 0);
        if (v79)
        {
          LODWORD(valuePtr) = 0;
          cf = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
          if (cf)
          {
            applesauce::CF::at_or<applesauce::CF::NumberRef,applesauce::CF::StringRef>(&v80, *v7, v79, &cf);
            if (cf)
            {
              CFRelease(cf);
            }

            if (v79)
            {
              CFRelease(v79);
            }

            if (*v7)
            {
              cf = CFStringCreateWithBytes(0, "format id", 9, 0x8000100u, 0);
              if (cf)
              {
                LODWORD(v76) = 0;
                valuePtr = CFNumberCreate(0, kCFNumberIntType, &v76);
                if (valuePtr)
                {
                  applesauce::CF::at_or<applesauce::CF::NumberRef,applesauce::CF::StringRef>(&v79, *v7, cf, &valuePtr);
                  if (valuePtr)
                  {
                    CFRelease(valuePtr);
                  }

                  if (cf)
                  {
                    CFRelease(cf);
                  }

                  if (*v7)
                  {
                    valuePtr = CFStringCreateWithBytes(0, "format flags", 12, 0x8000100u, 0);
                    if (valuePtr)
                    {
                      LODWORD(v75) = 0;
                      v76 = CFNumberCreate(0, kCFNumberIntType, &v75);
                      if (v76)
                      {
                        applesauce::CF::at_or<applesauce::CF::NumberRef,applesauce::CF::StringRef>(&cf, *v7, valuePtr, &v76);
                        if (v76)
                        {
                          CFRelease(v76);
                        }

                        if (valuePtr)
                        {
                          CFRelease(valuePtr);
                        }

                        if (*v7)
                        {
                          v76 = CFStringCreateWithBytes(0, "bytes per packet", 16, 0x8000100u, 0);
                          if (v76)
                          {
                            LODWORD(v74) = 0;
                            v75 = CFNumberCreate(0, kCFNumberIntType, &v74);
                            if (v75)
                            {
                              applesauce::CF::at_or<applesauce::CF::NumberRef,applesauce::CF::StringRef>(&valuePtr, *v7, v76, &v75);
                              if (v75)
                              {
                                CFRelease(v75);
                              }

                              if (v76)
                              {
                                CFRelease(v76);
                              }

                              if (*v7)
                              {
                                v75 = CFStringCreateWithBytes(0, "frames per packet", 17, 0x8000100u, 0);
                                if (v75)
                                {
                                  LODWORD(v73) = 0;
                                  v74 = CFNumberCreate(0, kCFNumberIntType, &v73);
                                  if (v74)
                                  {
                                    applesauce::CF::at_or<applesauce::CF::NumberRef,applesauce::CF::StringRef>(&v76, *v7, v75, &v74);
                                    if (v74)
                                    {
                                      CFRelease(v74);
                                    }

                                    if (v75)
                                    {
                                      CFRelease(v75);
                                    }

                                    if (*v7)
                                    {
                                      v74 = CFStringCreateWithBytes(0, "bytes per frame", 15, 0x8000100u, 0);
                                      if (v74)
                                      {
                                        LODWORD(v72) = 0;
                                        v73 = CFNumberCreate(0, kCFNumberIntType, &v72);
                                        if (v73)
                                        {
                                          applesauce::CF::at_or<applesauce::CF::NumberRef,applesauce::CF::StringRef>(&v75, *v7, v74, &v73);
                                          if (v73)
                                          {
                                            CFRelease(v73);
                                          }

                                          if (v74)
                                          {
                                            CFRelease(v74);
                                          }

                                          if (*v7)
                                          {
                                            v73 = CFStringCreateWithBytes(0, "channels per frame", 18, 0x8000100u, 0);
                                            if (v73)
                                            {
                                              LODWORD(v71) = 0;
                                              v72 = CFNumberCreate(0, kCFNumberIntType, &v71);
                                              if (v72)
                                              {
                                                applesauce::CF::at_or<applesauce::CF::NumberRef,applesauce::CF::StringRef>(&v74, *v7, v73, &v72);
                                                if (v72)
                                                {
                                                  CFRelease(v72);
                                                }

                                                if (v73)
                                                {
                                                  CFRelease(v73);
                                                }

                                                if (*v7)
                                                {
                                                  v72 = CFStringCreateWithBytes(0, "bits per channel", 16, 0x8000100u, 0);
                                                  if (v72)
                                                  {
                                                    v81 = 0;
                                                    v71 = CFNumberCreate(0, kCFNumberIntType, &v81);
                                                    if (v71)
                                                    {
                                                      applesauce::CF::at_or<applesauce::CF::NumberRef,applesauce::CF::StringRef>(&v73, *v7, v72, &v71);
                                                      if (v71)
                                                      {
                                                        CFRelease(v71);
                                                      }

                                                      if (v72)
                                                      {
                                                        CFRelease(v72);
                                                      }

                                                      if (v80)
                                                      {
                                                        applesauce::CF::convert_to<double,0>(v80);
                                                        if (v79)
                                                        {
                                                          applesauce::CF::convert_to<unsigned int,0>(v79);
                                                          if (cf)
                                                          {
                                                            applesauce::CF::convert_to<unsigned int,0>(cf);
                                                            if (valuePtr)
                                                            {
                                                              applesauce::CF::convert_to<unsigned int,0>(valuePtr);
                                                              if (v76)
                                                              {
                                                                applesauce::CF::convert_to<unsigned int,0>(v76);
                                                                if (v75)
                                                                {
                                                                  applesauce::CF::convert_to<unsigned int,0>(v75);
                                                                  if (v74)
                                                                  {
                                                                    applesauce::CF::convert_to<unsigned int,0>(v74);
                                                                    if (v73)
                                                                    {
                                                                      applesauce::CF::convert_to<unsigned int,0>(v73);
                                                                      *a1 = 0u;
                                                                      *(a1 + 16) = 0u;
                                                                      *(a1 + 32) = AMCP::Implementation::Outboard_Storage<AudioStreamBasicDescription>::dispatch;
                                                                      operator new();
                                                                    }

                                                                    exception = __cxa_allocate_exception(0x10uLL);
                                                                    std::runtime_error::runtime_error(exception, "Could not construct");
                                                                    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                                                                  }

                                                                  v37 = __cxa_allocate_exception(0x10uLL);
                                                                  std::runtime_error::runtime_error(v37, "Could not construct");
                                                                  __cxa_throw(v37, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                                                                }

                                                                v36 = __cxa_allocate_exception(0x10uLL);
                                                                std::runtime_error::runtime_error(v36, "Could not construct");
                                                                __cxa_throw(v36, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                                                              }

                                                              v35 = __cxa_allocate_exception(0x10uLL);
                                                              std::runtime_error::runtime_error(v35, "Could not construct");
                                                              __cxa_throw(v35, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                                                            }

                                                            v34 = __cxa_allocate_exception(0x10uLL);
                                                            std::runtime_error::runtime_error(v34, "Could not construct");
                                                            __cxa_throw(v34, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                                                          }

                                                          v33 = __cxa_allocate_exception(0x10uLL);
                                                          std::runtime_error::runtime_error(v33, "Could not construct");
                                                          __cxa_throw(v33, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                                                        }

                                                        v32 = __cxa_allocate_exception(0x10uLL);
                                                        std::runtime_error::runtime_error(v32, "Could not construct");
                                                        __cxa_throw(v32, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                                                      }

                                                      v31 = __cxa_allocate_exception(0x10uLL);
                                                      std::runtime_error::runtime_error(v31, "Could not construct");
                                                      __cxa_throw(v31, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                                                    }

                                                    v30 = __cxa_allocate_exception(0x10uLL);
                                                    std::runtime_error::runtime_error(v30, "Could not construct");
                                                    __cxa_throw(v30, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                                                  }

                                                  v29 = __cxa_allocate_exception(0x10uLL);
                                                  std::runtime_error::runtime_error(v29, "Could not construct");
                                                  __cxa_throw(v29, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                                                }

                                                v28 = __cxa_allocate_exception(0x10uLL);
                                                std::runtime_error::runtime_error(v28, "Could not construct");
                                                __cxa_throw(v28, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                                              }

                                              v27 = __cxa_allocate_exception(0x10uLL);
                                              std::runtime_error::runtime_error(v27, "Could not construct");
                                              __cxa_throw(v27, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                                            }

                                            v26 = __cxa_allocate_exception(0x10uLL);
                                            std::runtime_error::runtime_error(v26, "Could not construct");
                                            __cxa_throw(v26, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                                          }

                                          v25 = __cxa_allocate_exception(0x10uLL);
                                          std::runtime_error::runtime_error(v25, "Could not construct");
                                          __cxa_throw(v25, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                                        }

                                        v24 = __cxa_allocate_exception(0x10uLL);
                                        std::runtime_error::runtime_error(v24, "Could not construct");
                                        __cxa_throw(v24, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                                      }

                                      v23 = __cxa_allocate_exception(0x10uLL);
                                      std::runtime_error::runtime_error(v23, "Could not construct");
                                      __cxa_throw(v23, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                                    }

                                    v22 = __cxa_allocate_exception(0x10uLL);
                                    std::runtime_error::runtime_error(v22, "Could not construct");
                                    __cxa_throw(v22, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                                  }

                                  v21 = __cxa_allocate_exception(0x10uLL);
                                  std::runtime_error::runtime_error(v21, "Could not construct");
                                  __cxa_throw(v21, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                                }

                                v20 = __cxa_allocate_exception(0x10uLL);
                                std::runtime_error::runtime_error(v20, "Could not construct");
                                __cxa_throw(v20, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                              }

                              v19 = __cxa_allocate_exception(0x10uLL);
                              std::runtime_error::runtime_error(v19, "Could not construct");
                              __cxa_throw(v19, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                            }

                            v18 = __cxa_allocate_exception(0x10uLL);
                            std::runtime_error::runtime_error(v18, "Could not construct");
                            __cxa_throw(v18, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                          }

                          v17 = __cxa_allocate_exception(0x10uLL);
                          std::runtime_error::runtime_error(v17, "Could not construct");
                          __cxa_throw(v17, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                        }

                        v16 = __cxa_allocate_exception(0x10uLL);
                        std::runtime_error::runtime_error(v16, "Could not construct");
                        __cxa_throw(v16, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                      }

                      v15 = __cxa_allocate_exception(0x10uLL);
                      std::runtime_error::runtime_error(v15, "Could not construct");
                      __cxa_throw(v15, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                    }

                    v14 = __cxa_allocate_exception(0x10uLL);
                    std::runtime_error::runtime_error(v14, "Could not construct");
                    __cxa_throw(v14, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                  }

                  v13 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v13, "Could not construct");
                  __cxa_throw(v13, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                v12 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v12, "Could not construct");
                __cxa_throw(v12, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
              }

              v11 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v11, "Could not construct");
              __cxa_throw(v11, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }

            v10 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v10, "Could not construct");
            __cxa_throw(v10, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          v9 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v9, "Could not construct");
          __cxa_throw(v9, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        v8 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v8, "Could not construct");
        __cxa_throw(v8, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      goto LABEL_178;
    }

    goto LABEL_145;
  }

  if (*a3 == AMCP::Implementation::get_type_marker<CA::StreamDescription>())
  {
    if (v7)
    {
      if (*v7)
      {
        v79 = CFStringCreateWithBytes(0, "sample rate", 11, 0x8000100u, 0);
        if (v79)
        {
          LODWORD(valuePtr) = 0;
          cf = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
          if (cf)
          {
            applesauce::CF::at_or<applesauce::CF::NumberRef,applesauce::CF::StringRef>(&v80, *v7, v79, &cf);
            if (cf)
            {
              CFRelease(cf);
            }

            if (v79)
            {
              CFRelease(v79);
            }

            if (*v7)
            {
              cf = CFStringCreateWithBytes(0, "format id", 9, 0x8000100u, 0);
              if (cf)
              {
                LODWORD(v76) = 0;
                valuePtr = CFNumberCreate(0, kCFNumberIntType, &v76);
                if (valuePtr)
                {
                  applesauce::CF::at_or<applesauce::CF::NumberRef,applesauce::CF::StringRef>(&v79, *v7, cf, &valuePtr);
                  if (valuePtr)
                  {
                    CFRelease(valuePtr);
                  }

                  if (cf)
                  {
                    CFRelease(cf);
                  }

                  if (*v7)
                  {
                    valuePtr = CFStringCreateWithBytes(0, "format flags", 12, 0x8000100u, 0);
                    if (valuePtr)
                    {
                      LODWORD(v75) = 0;
                      v76 = CFNumberCreate(0, kCFNumberIntType, &v75);
                      if (v76)
                      {
                        applesauce::CF::at_or<applesauce::CF::NumberRef,applesauce::CF::StringRef>(&cf, *v7, valuePtr, &v76);
                        if (v76)
                        {
                          CFRelease(v76);
                        }

                        if (valuePtr)
                        {
                          CFRelease(valuePtr);
                        }

                        if (*v7)
                        {
                          v76 = CFStringCreateWithBytes(0, "bytes per packet", 16, 0x8000100u, 0);
                          if (v76)
                          {
                            LODWORD(v74) = 0;
                            v75 = CFNumberCreate(0, kCFNumberIntType, &v74);
                            if (v75)
                            {
                              applesauce::CF::at_or<applesauce::CF::NumberRef,applesauce::CF::StringRef>(&valuePtr, *v7, v76, &v75);
                              if (v75)
                              {
                                CFRelease(v75);
                              }

                              if (v76)
                              {
                                CFRelease(v76);
                              }

                              if (*v7)
                              {
                                v75 = CFStringCreateWithBytes(0, "frames per packet", 17, 0x8000100u, 0);
                                if (v75)
                                {
                                  LODWORD(v73) = 0;
                                  v74 = CFNumberCreate(0, kCFNumberIntType, &v73);
                                  if (v74)
                                  {
                                    applesauce::CF::at_or<applesauce::CF::NumberRef,applesauce::CF::StringRef>(&v76, *v7, v75, &v74);
                                    if (v74)
                                    {
                                      CFRelease(v74);
                                    }

                                    if (v75)
                                    {
                                      CFRelease(v75);
                                    }

                                    if (*v7)
                                    {
                                      v74 = CFStringCreateWithBytes(0, "bytes per frame", 15, 0x8000100u, 0);
                                      if (v74)
                                      {
                                        LODWORD(v72) = 0;
                                        v73 = CFNumberCreate(0, kCFNumberIntType, &v72);
                                        if (v73)
                                        {
                                          applesauce::CF::at_or<applesauce::CF::NumberRef,applesauce::CF::StringRef>(&v75, *v7, v74, &v73);
                                          if (v73)
                                          {
                                            CFRelease(v73);
                                          }

                                          if (v74)
                                          {
                                            CFRelease(v74);
                                          }

                                          if (*v7)
                                          {
                                            v73 = CFStringCreateWithBytes(0, "channels per frame", 18, 0x8000100u, 0);
                                            if (v73)
                                            {
                                              LODWORD(v71) = 0;
                                              v72 = CFNumberCreate(0, kCFNumberIntType, &v71);
                                              if (v72)
                                              {
                                                applesauce::CF::at_or<applesauce::CF::NumberRef,applesauce::CF::StringRef>(&v74, *v7, v73, &v72);
                                                if (v72)
                                                {
                                                  CFRelease(v72);
                                                }

                                                if (v73)
                                                {
                                                  CFRelease(v73);
                                                }

                                                if (*v7)
                                                {
                                                  v72 = CFStringCreateWithBytes(0, "bits per channel", 16, 0x8000100u, 0);
                                                  if (v72)
                                                  {
                                                    v81 = 0;
                                                    v71 = CFNumberCreate(0, kCFNumberIntType, &v81);
                                                    if (v71)
                                                    {
                                                      applesauce::CF::at_or<applesauce::CF::NumberRef,applesauce::CF::StringRef>(&v73, *v7, v72, &v71);
                                                      if (v71)
                                                      {
                                                        CFRelease(v71);
                                                      }

                                                      if (v72)
                                                      {
                                                        CFRelease(v72);
                                                      }

                                                      if (v80)
                                                      {
                                                        applesauce::CF::convert_to<double,0>(v80);
                                                        if (v79)
                                                        {
                                                          applesauce::CF::convert_to<unsigned int,0>(v79);
                                                          if (cf)
                                                          {
                                                            applesauce::CF::convert_to<unsigned int,0>(cf);
                                                            if (valuePtr)
                                                            {
                                                              applesauce::CF::convert_to<unsigned int,0>(valuePtr);
                                                              if (v76)
                                                              {
                                                                applesauce::CF::convert_to<unsigned int,0>(v76);
                                                                if (v75)
                                                                {
                                                                  applesauce::CF::convert_to<unsigned int,0>(v75);
                                                                  if (v74)
                                                                  {
                                                                    applesauce::CF::convert_to<unsigned int,0>(v74);
                                                                    if (v73)
                                                                    {
                                                                      applesauce::CF::convert_to<unsigned int,0>(v73);
                                                                      *a1 = 0u;
                                                                      *(a1 + 16) = 0u;
                                                                      *(a1 + 32) = AMCP::Implementation::Outboard_Storage<CA::StreamDescription>::dispatch;
                                                                      operator new();
                                                                    }

                                                                    v70 = __cxa_allocate_exception(0x10uLL);
                                                                    std::runtime_error::runtime_error(v70, "Could not construct");
                                                                    __cxa_throw(v70, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                                                                  }

                                                                  v69 = __cxa_allocate_exception(0x10uLL);
                                                                  std::runtime_error::runtime_error(v69, "Could not construct");
                                                                  __cxa_throw(v69, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                                                                }

                                                                v68 = __cxa_allocate_exception(0x10uLL);
                                                                std::runtime_error::runtime_error(v68, "Could not construct");
                                                                __cxa_throw(v68, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                                                              }

                                                              v67 = __cxa_allocate_exception(0x10uLL);
                                                              std::runtime_error::runtime_error(v67, "Could not construct");
                                                              __cxa_throw(v67, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                                                            }

                                                            v66 = __cxa_allocate_exception(0x10uLL);
                                                            std::runtime_error::runtime_error(v66, "Could not construct");
                                                            __cxa_throw(v66, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                                                          }

                                                          v65 = __cxa_allocate_exception(0x10uLL);
                                                          std::runtime_error::runtime_error(v65, "Could not construct");
                                                          __cxa_throw(v65, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                                                        }

                                                        v64 = __cxa_allocate_exception(0x10uLL);
                                                        std::runtime_error::runtime_error(v64, "Could not construct");
                                                        __cxa_throw(v64, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                                                      }

                                                      v63 = __cxa_allocate_exception(0x10uLL);
                                                      std::runtime_error::runtime_error(v63, "Could not construct");
                                                      __cxa_throw(v63, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                                                    }

                                                    v62 = __cxa_allocate_exception(0x10uLL);
                                                    std::runtime_error::runtime_error(v62, "Could not construct");
                                                    __cxa_throw(v62, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                                                  }

                                                  v61 = __cxa_allocate_exception(0x10uLL);
                                                  std::runtime_error::runtime_error(v61, "Could not construct");
                                                  __cxa_throw(v61, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                                                }

                                                v60 = __cxa_allocate_exception(0x10uLL);
                                                std::runtime_error::runtime_error(v60, "Could not construct");
                                                __cxa_throw(v60, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                                              }

                                              v59 = __cxa_allocate_exception(0x10uLL);
                                              std::runtime_error::runtime_error(v59, "Could not construct");
                                              __cxa_throw(v59, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                                            }

                                            v58 = __cxa_allocate_exception(0x10uLL);
                                            std::runtime_error::runtime_error(v58, "Could not construct");
                                            __cxa_throw(v58, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                                          }

                                          v57 = __cxa_allocate_exception(0x10uLL);
                                          std::runtime_error::runtime_error(v57, "Could not construct");
                                          __cxa_throw(v57, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                                        }

                                        v56 = __cxa_allocate_exception(0x10uLL);
                                        std::runtime_error::runtime_error(v56, "Could not construct");
                                        __cxa_throw(v56, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                                      }

                                      v55 = __cxa_allocate_exception(0x10uLL);
                                      std::runtime_error::runtime_error(v55, "Could not construct");
                                      __cxa_throw(v55, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                                    }

                                    v54 = __cxa_allocate_exception(0x10uLL);
                                    std::runtime_error::runtime_error(v54, "Could not construct");
                                    __cxa_throw(v54, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                                  }

                                  v53 = __cxa_allocate_exception(0x10uLL);
                                  std::runtime_error::runtime_error(v53, "Could not construct");
                                  __cxa_throw(v53, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                                }

                                v52 = __cxa_allocate_exception(0x10uLL);
                                std::runtime_error::runtime_error(v52, "Could not construct");
                                __cxa_throw(v52, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                              }

                              v51 = __cxa_allocate_exception(0x10uLL);
                              std::runtime_error::runtime_error(v51, "Could not construct");
                              __cxa_throw(v51, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                            }

                            v50 = __cxa_allocate_exception(0x10uLL);
                            std::runtime_error::runtime_error(v50, "Could not construct");
                            __cxa_throw(v50, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                          }

                          v49 = __cxa_allocate_exception(0x10uLL);
                          std::runtime_error::runtime_error(v49, "Could not construct");
                          __cxa_throw(v49, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                        }

                        v48 = __cxa_allocate_exception(0x10uLL);
                        std::runtime_error::runtime_error(v48, "Could not construct");
                        __cxa_throw(v48, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                      }

                      v47 = __cxa_allocate_exception(0x10uLL);
                      std::runtime_error::runtime_error(v47, "Could not construct");
                      __cxa_throw(v47, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                    }

                    v46 = __cxa_allocate_exception(0x10uLL);
                    std::runtime_error::runtime_error(v46, "Could not construct");
                    __cxa_throw(v46, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                  }

                  v45 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v45, "Could not construct");
                  __cxa_throw(v45, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                v44 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v44, "Could not construct");
                __cxa_throw(v44, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
              }

              v43 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v43, "Could not construct");
              __cxa_throw(v43, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }

            v42 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v42, "Could not construct");
            __cxa_throw(v42, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          v41 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v41, "Could not construct");
          __cxa_throw(v41, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        v40 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v40, "Could not construct");
        __cxa_throw(v40, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

LABEL_178:
      v39 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v39, "Could not construct");
      __cxa_throw(v39, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

LABEL_145:
    __assert_rtn("create_asbd_from", "Thing.h", 1718, "in_value_ptr != nullptr");
  }

  result = AMCP::Implementation::get_type_marker<applesauce::CF::DictionaryRef>();
  if (*a3 == result)
  {
    if (!v7)
    {
      goto LABEL_145;
    }

    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return AMCP::Implementation::In_Place_Storage<applesauce::CF::DictionaryRef>::construct<applesauce::CF::DictionaryRef const&>(a1, v7);
  }

  else
  {
LABEL_144:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

void sub_1DE249E24(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, int a15, __int16 a16, char a17, char a18, int a19, const void *a20, const void *a21, const void *a22, const void *a23, const void *a24, const void *a25, const void *a26, const void *a27)
{
  __cxa_free_exception(v27);
  applesauce::CF::NumberRef::~NumberRef(&a20);
  applesauce::CF::NumberRef::~NumberRef(&a21);
  applesauce::CF::NumberRef::~NumberRef(&a22);
  applesauce::CF::NumberRef::~NumberRef(&a23);
  applesauce::CF::NumberRef::~NumberRef(&a24);
  applesauce::CF::NumberRef::~NumberRef(&a25);
  applesauce::CF::NumberRef::~NumberRef(&a26);
  applesauce::CF::NumberRef::~NumberRef(&a27);
  __clang_call_terminate(a1);
}

double AMCP::Implementation::create_available_format_from<applesauce::CF::DictionaryRef>(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a3 != AMCP::Implementation::get_type_marker<std::tuple<CA::ValueRangeList,CA::StreamDescription>>() && *a3 != AMCP::Implementation::get_type_marker<applesauce::CF::DictionaryRef>())
  {
    goto LABEL_11;
  }

  if (*(a2 + 32))
  {
    v8 = AMCP::Implementation::get_type_marker<applesauce::CF::DictionaryRef>();
    v6 = (*(a2 + 32))(4, a2, 0, &v8);
  }

  else
  {
    v6 = 0;
  }

  if (*a3 == AMCP::Implementation::get_type_marker<std::tuple<CA::ValueRangeList,CA::StreamDescription>>())
  {
    AMCP::Implementation::create_available_format_from<applesauce::CF::DictionaryRef,std::tuple<CA::ValueRangeList,CA::StreamDescription>>(a1, v6);
  }

  if (*a3 == AMCP::Implementation::get_type_marker<applesauce::CF::DictionaryRef>())
  {
    if (!v6)
    {
      __assert_rtn("create_available_format_from", "Thing.h", 2115, "in_value_ptr != nullptr");
    }

    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    AMCP::Implementation::In_Place_Storage<applesauce::CF::DictionaryRef>::construct<applesauce::CF::DictionaryRef const&>(a1, v6);
  }

  else
  {
LABEL_11:
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t AMCP::Implementation::get_type_marker<std::tuple<CA::ValueRangeList,CA::StreamDescription>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[463];
}

void AMCP::Implementation::create_available_format_from<applesauce::CF::DictionaryRef,std::tuple<CA::ValueRangeList,CA::StreamDescription>>(uint64_t a1, const __CFDictionary **a2)
{
  if (a2)
  {
    v90 = 0;
    v91 = 0;
    v92 = 0;
    if (*a2)
    {
      v4 = CFStringCreateWithBytes(0, "sample rate range list", 22, 0x8000100u, 0);
      cf[0] = v4;
      if (v4)
      {
        v88 = 0;
        applesauce::CF::at_or<applesauce::CF::ArrayRef,applesauce::CF::StringRef>(&v89, *a2, v4, &v88);
        if (v88)
        {
          CFRelease(v88);
        }

        CFRelease(v4);
        theArray = v89;
        if (v89)
        {
          Count = CFArrayGetCount(v89);
          v6 = CFArrayGetCount(theArray);
          if (Count)
          {
            v7 = v6;
            for (i = 0; i != Count; ++i)
            {
              if (v7 == i)
              {
                break;
              }

              applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(&v88, theArray, i);
              if (!v88)
              {
                exception = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(exception, "Could not construct");
                __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
              }

              v87 = CFStringCreateWithBytes(0, "minimum", 7, 0x8000100u, 0);
              if (!v87)
              {
                v30 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v30, "Could not construct");
                __cxa_throw(v30, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
              }

              LODWORD(valuePtr) = 0;
              v86 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
              if (!v86)
              {
                v27 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v27, "Could not construct");
                __cxa_throw(v27, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
              }

              applesauce::CF::at_or<applesauce::CF::NumberRef,applesauce::CF::StringRef>(cf, v88, v87, &v86);
              v9 = cf[0];
              if (!cf[0])
              {
                v31 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v31, "Could not construct");
                __cxa_throw(v31, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
              }

              v10 = applesauce::CF::convert_to<double,0>(cf[0]);
              CFRelease(v9);
              if (v86)
              {
                CFRelease(v86);
              }

              if (v87)
              {
                CFRelease(v87);
              }

              if (!v88)
              {
                v28 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v28, "Could not construct");
                __cxa_throw(v28, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
              }

              v87 = CFStringCreateWithBytes(0, "maximum", 7, 0x8000100u, 0);
              if (!v87)
              {
                v32 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v32, "Could not construct");
                __cxa_throw(v32, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
              }

              LODWORD(valuePtr) = 0;
              v86 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
              if (!v86)
              {
                v29 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v29, "Could not construct");
                __cxa_throw(v29, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
              }

              applesauce::CF::at_or<applesauce::CF::NumberRef,applesauce::CF::StringRef>(cf, v88, v87, &v86);
              v11 = cf[0];
              if (!cf[0])
              {
                v33 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v33, "Could not construct");
                __cxa_throw(v33, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
              }

              v12 = applesauce::CF::convert_to<double,0>(cf[0]);
              CFRelease(v11);
              if (v86)
              {
                CFRelease(v86);
              }

              if (v87)
              {
                CFRelease(v87);
              }

              cf[0] = *&v10;
              cf[1] = *&v12;
              CA::ValueRangeList::AddRange(&v90, cf);
              if (v88)
              {
                CFRelease(v88);
              }
            }
          }
        }

        if (*a2)
        {
          v13 = CFStringCreateWithBytes(0, "format", 6, 0x8000100u, 0);
          cf[0] = v13;
          if (v13)
          {
            v87 = 0;
            applesauce::CF::at_or<applesauce::CF::DictionaryRef,applesauce::CF::StringRef>(&v88, *a2, v13, &v87);
            if (v87)
            {
              CFRelease(v87);
            }

            CFRelease(v13);
            v14 = v88;
            if (v88)
            {
              cf[0] = CFStringCreateWithBytes(0, "sample rate", 11, 0x8000100u, 0);
              if (cf[0])
              {
                LODWORD(valuePtr) = 0;
                v86 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
                if (v86)
                {
                  applesauce::CF::at_or<applesauce::CF::NumberRef,applesauce::CF::StringRef>(&v87, v14, cf[0], &v86);
                  if (v86)
                  {
                    CFRelease(v86);
                  }

                  if (cf[0])
                  {
                    CFRelease(cf[0]);
                  }

                  cf[0] = CFStringCreateWithBytes(0, "format id", 9, 0x8000100u, 0);
                  if (cf[0])
                  {
                    LODWORD(v84) = 0;
                    valuePtr = CFNumberCreate(0, kCFNumberIntType, &v84);
                    if (valuePtr)
                    {
                      applesauce::CF::at_or<applesauce::CF::NumberRef,applesauce::CF::StringRef>(&v86, v14, cf[0], &valuePtr);
                      if (valuePtr)
                      {
                        CFRelease(valuePtr);
                      }

                      if (cf[0])
                      {
                        CFRelease(cf[0]);
                      }

                      cf[0] = CFStringCreateWithBytes(0, "format flags", 12, 0x8000100u, 0);
                      if (cf[0])
                      {
                        LODWORD(v83) = 0;
                        v84 = CFNumberCreate(0, kCFNumberIntType, &v83);
                        if (v84)
                        {
                          applesauce::CF::at_or<applesauce::CF::NumberRef,applesauce::CF::StringRef>(&valuePtr, v14, cf[0], &v84);
                          if (v84)
                          {
                            CFRelease(v84);
                          }

                          if (cf[0])
                          {
                            CFRelease(cf[0]);
                          }

                          cf[0] = CFStringCreateWithBytes(0, "bytes per packet", 16, 0x8000100u, 0);
                          if (cf[0])
                          {
                            LODWORD(v82) = 0;
                            v83 = CFNumberCreate(0, kCFNumberIntType, &v82);
                            if (v83)
                            {
                              applesauce::CF::at_or<applesauce::CF::NumberRef,applesauce::CF::StringRef>(&v84, v14, cf[0], &v83);
                              if (v83)
                              {
                                CFRelease(v83);
                              }

                              if (cf[0])
                              {
                                CFRelease(cf[0]);
                              }

                              cf[0] = CFStringCreateWithBytes(0, "frames per packet", 17, 0x8000100u, 0);
                              if (cf[0])
                              {
                                LODWORD(v81) = 0;
                                v82 = CFNumberCreate(0, kCFNumberIntType, &v81);
                                if (v82)
                                {
                                  applesauce::CF::at_or<applesauce::CF::NumberRef,applesauce::CF::StringRef>(&v83, v14, cf[0], &v82);
                                  if (v82)
                                  {
                                    CFRelease(v82);
                                  }

                                  if (cf[0])
                                  {
                                    CFRelease(cf[0]);
                                  }

                                  cf[0] = CFStringCreateWithBytes(0, "bytes per frame", 15, 0x8000100u, 0);
                                  if (cf[0])
                                  {
                                    LODWORD(v80) = 0;
                                    v81 = CFNumberCreate(0, kCFNumberIntType, &v80);
                                    if (v81)
                                    {
                                      applesauce::CF::at_or<applesauce::CF::NumberRef,applesauce::CF::StringRef>(&v82, v14, cf[0], &v81);
                                      if (v81)
                                      {
                                        CFRelease(v81);
                                      }

                                      if (cf[0])
                                      {
                                        CFRelease(cf[0]);
                                      }

                                      cf[0] = CFStringCreateWithBytes(0, "channels per frame", 18, 0x8000100u, 0);
                                      if (cf[0])
                                      {
                                        LODWORD(v79) = 0;
                                        v80 = CFNumberCreate(0, kCFNumberIntType, &v79);
                                        if (v80)
                                        {
                                          applesauce::CF::at_or<applesauce::CF::NumberRef,applesauce::CF::StringRef>(&v81, v14, cf[0], &v80);
                                          if (v80)
                                          {
                                            CFRelease(v80);
                                          }

                                          if (cf[0])
                                          {
                                            CFRelease(cf[0]);
                                          }

                                          cf[0] = CFStringCreateWithBytes(0, "bits per channel", 16, 0x8000100u, 0);
                                          if (cf[0])
                                          {
                                            v93[0] = 0;
                                            v79 = CFNumberCreate(0, kCFNumberIntType, v93);
                                            if (v79)
                                            {
                                              applesauce::CF::at_or<applesauce::CF::NumberRef,applesauce::CF::StringRef>(&v80, v14, cf[0], &v79);
                                              if (v79)
                                              {
                                                CFRelease(v79);
                                              }

                                              if (cf[0])
                                              {
                                                CFRelease(cf[0]);
                                              }

                                              if (v87)
                                              {
                                                v15 = applesauce::CF::convert_to<double,0>(v87);
                                                if (v86)
                                                {
                                                  v16 = v15;
                                                  v17 = applesauce::CF::convert_to<unsigned int,0>(v86);
                                                  if (valuePtr)
                                                  {
                                                    v18 = v17;
                                                    v19 = applesauce::CF::convert_to<unsigned int,0>(valuePtr);
                                                    if (v84)
                                                    {
                                                      v20 = applesauce::CF::convert_to<unsigned int,0>(v84);
                                                      if (v83)
                                                      {
                                                        v64 = v20;
                                                        v65 = v19;
                                                        v66 = a1;
                                                        v63 = applesauce::CF::convert_to<unsigned int,0>(v83);
                                                        if (v82)
                                                        {
                                                          v21 = applesauce::CF::convert_to<unsigned int,0>(v82);
                                                          if (v81)
                                                          {
                                                            v22 = v21;
                                                            v23 = applesauce::CF::convert_to<unsigned int,0>(v81);
                                                            if (v80)
                                                            {
                                                              v24 = v23;
                                                              v25 = applesauce::CF::convert_to<unsigned int,0>(v80);
                                                              cf[0] = 0;
                                                              cf[1] = 0;
                                                              v69 = 0;
                                                              std::vector<CA::ValueRange>::__init_with_size[abi:ne200100]<CA::ValueRange*,CA::ValueRange*>(cf, v90, v91, (v91 - v90) >> 4);
                                                              v70 = v16;
                                                              v71 = v18;
                                                              v72 = v65;
                                                              v73 = v64;
                                                              v74 = v63;
                                                              v75 = v22;
                                                              v76 = v24;
                                                              v77 = v25;
                                                              v78 = 0;
                                                              *v66 = 0u;
                                                              *(v66 + 16) = 0u;
                                                              *(v66 + 32) = AMCP::Implementation::Outboard_Storage<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::dispatch;
                                                              operator new();
                                                            }

                                                            v62 = __cxa_allocate_exception(0x10uLL);
                                                            std::runtime_error::runtime_error(v62, "Could not construct");
                                                            __cxa_throw(v62, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                                                          }

                                                          v61 = __cxa_allocate_exception(0x10uLL);
                                                          std::runtime_error::runtime_error(v61, "Could not construct");
                                                          __cxa_throw(v61, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                                                        }

                                                        v60 = __cxa_allocate_exception(0x10uLL);
                                                        std::runtime_error::runtime_error(v60, "Could not construct");
                                                        __cxa_throw(v60, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                                                      }

                                                      v59 = __cxa_allocate_exception(0x10uLL);
                                                      std::runtime_error::runtime_error(v59, "Could not construct");
                                                      __cxa_throw(v59, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                                                    }

                                                    v58 = __cxa_allocate_exception(0x10uLL);
                                                    std::runtime_error::runtime_error(v58, "Could not construct");
                                                    __cxa_throw(v58, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                                                  }

                                                  v57 = __cxa_allocate_exception(0x10uLL);
                                                  std::runtime_error::runtime_error(v57, "Could not construct");
                                                  __cxa_throw(v57, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                                                }

                                                v56 = __cxa_allocate_exception(0x10uLL);
                                                std::runtime_error::runtime_error(v56, "Could not construct");
                                                __cxa_throw(v56, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                                              }

                                              v55 = __cxa_allocate_exception(0x10uLL);
                                              std::runtime_error::runtime_error(v55, "Could not construct");
                                              __cxa_throw(v55, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                                            }

                                            v54 = __cxa_allocate_exception(0x10uLL);
                                            std::runtime_error::runtime_error(v54, "Could not construct");
                                            __cxa_throw(v54, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                                          }

                                          v53 = __cxa_allocate_exception(0x10uLL);
                                          std::runtime_error::runtime_error(v53, "Could not construct");
                                          __cxa_throw(v53, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                                        }

                                        v52 = __cxa_allocate_exception(0x10uLL);
                                        std::runtime_error::runtime_error(v52, "Could not construct");
                                        __cxa_throw(v52, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                                      }

                                      v51 = __cxa_allocate_exception(0x10uLL);
                                      std::runtime_error::runtime_error(v51, "Could not construct");
                                      __cxa_throw(v51, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                                    }

                                    v50 = __cxa_allocate_exception(0x10uLL);
                                    std::runtime_error::runtime_error(v50, "Could not construct");
                                    __cxa_throw(v50, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                                  }

                                  v49 = __cxa_allocate_exception(0x10uLL);
                                  std::runtime_error::runtime_error(v49, "Could not construct");
                                  __cxa_throw(v49, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                                }

                                v48 = __cxa_allocate_exception(0x10uLL);
                                std::runtime_error::runtime_error(v48, "Could not construct");
                                __cxa_throw(v48, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                              }

                              v47 = __cxa_allocate_exception(0x10uLL);
                              std::runtime_error::runtime_error(v47, "Could not construct");
                              __cxa_throw(v47, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                            }

                            v46 = __cxa_allocate_exception(0x10uLL);
                            std::runtime_error::runtime_error(v46, "Could not construct");
                            __cxa_throw(v46, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                          }

                          v45 = __cxa_allocate_exception(0x10uLL);
                          std::runtime_error::runtime_error(v45, "Could not construct");
                          __cxa_throw(v45, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                        }

                        v44 = __cxa_allocate_exception(0x10uLL);
                        std::runtime_error::runtime_error(v44, "Could not construct");
                        __cxa_throw(v44, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                      }

                      v43 = __cxa_allocate_exception(0x10uLL);
                      std::runtime_error::runtime_error(v43, "Could not construct");
                      __cxa_throw(v43, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                    }

                    v42 = __cxa_allocate_exception(0x10uLL);
                    std::runtime_error::runtime_error(v42, "Could not construct");
                    __cxa_throw(v42, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                  }

                  v41 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v41, "Could not construct");
                  __cxa_throw(v41, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                v40 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v40, "Could not construct");
                __cxa_throw(v40, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
              }

              v39 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v39, "Could not construct");
              __cxa_throw(v39, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }

            v38 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v38, "Could not construct");
            __cxa_throw(v38, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          v37 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v37, "Could not construct");
          __cxa_throw(v37, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        v36 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v36, "Could not construct");
        __cxa_throw(v36, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      v35 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v35, "Could not construct");
      __cxa_throw(v35, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v34 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v34, "Could not construct");
    __cxa_throw(v34, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  __assert_rtn("create_available_format_from", "Thing.h", 2115, "in_value_ptr != nullptr");
}

void sub_1DE24B660(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, int a28, const void *a29, const void *a30, const void *a31, const void *a32, const void *a33)
{
  __cxa_free_exception(v33);
  applesauce::CF::NumberRef::~NumberRef(&a29);
  applesauce::CF::NumberRef::~NumberRef(&a30);
  applesauce::CF::NumberRef::~NumberRef(&a31);
  applesauce::CF::NumberRef::~NumberRef(&a32);
  applesauce::CF::NumberRef::~NumberRef(&a33);
  applesauce::CF::NumberRef::~NumberRef((v34 - 176));
  applesauce::CF::NumberRef::~NumberRef((v34 - 168));
  applesauce::CF::NumberRef::~NumberRef((v34 - 160));
  applesauce::CF::DictionaryRef::~DictionaryRef((v34 - 152));
  applesauce::CF::ArrayRef::~ArrayRef((v34 - 144));
  v36 = *(v34 - 136);
  if (v36)
  {
    operator delete(v36);
  }

  _Unwind_Resume(a1);
}

void applesauce::CF::at_or<applesauce::CF::ArrayRef,applesauce::CF::StringRef>(void *a1, const __CFDictionary *a2, const void *a3, void *a4)
{
  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,applesauce::CF::StringRef>(&cf, a2, a3);
  if (v8 == 1)
  {
    v6 = cf;
    if (cf)
    {
      CFRetain(cf);
      *a1 = v6;
      CFRelease(v6);
      return;
    }

    a4 = a1;
  }

  else
  {
    *a1 = *a4;
  }

  *a4 = 0;
}

void *applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(void *a1, CFArrayRef theArray, unint64_t a3)
{
  if (!theArray || CFArrayGetCount(theArray) <= a3 || (ValueAtIndex = CFArrayGetValueAtIndex(theArray, a3)) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::not_found(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return applesauce::CF::DictionaryRef::from_get(a1, ValueAtIndex);
}

void applesauce::CF::at_or<applesauce::CF::NumberRef,applesauce::CF::StringRef>(void *a1, const __CFDictionary *a2, const void *a3, void *a4)
{
  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::NumberRef,applesauce::CF::StringRef>(&cf, a2, a3);
  if (v8 == 1)
  {
    v6 = cf;
    if (cf)
    {
      CFRetain(cf);
      *a1 = v6;
      CFRelease(v6);
      return;
    }

    a4 = a1;
  }

  else
  {
    *a1 = *a4;
  }

  *a4 = 0;
}

double applesauce::CF::convert_to<double,0>(const __CFNumber *a1)
{
  v1 = COERCE_DOUBLE(applesauce::CF::convert_as<double,0>(a1));
  if ((v2 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::convert_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return v1;
}

void CA::ValueRangeList::AddRange(void *a1, double *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *a1;
  if (*a1 == v4)
  {
LABEL_62:
    v25 = a1[2];
    if (v4 >= v25)
    {
      v28 = ((v4 - v5) >> 4) + 1;
      if (v28 >> 60)
      {
        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v29 = v6 - v5;
      v30 = v25 - v5;
      if (v30 >> 3 > v28)
      {
        v28 = v30 >> 3;
      }

      if (v30 >= 0x7FFFFFFFFFFFFFF0)
      {
        v31 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v31 = v28;
      }

      v32 = v29 >> 4;
      if (v31)
      {
        std::allocator<CA::ValueRange>::allocate_at_least[abi:ne200100](v31);
      }

      v33 = (16 * v32);
      v34 = 16 * v32;
      if (!v32)
      {
        if (v29 < 1)
        {
          if (v6 == v5)
          {
            v38 = 1;
          }

          else
          {
            v38 = v29 >> 3;
          }

          std::allocator<CA::ValueRange>::allocate_at_least[abi:ne200100](v38);
        }

        v33 = (v33 - (((v29 >> 1) + 8) & 0xFFFFFFFFFFFFFFF0));
        v34 = v33;
      }

      *v33 = *a2;
      v39 = v34 + 16;
      memcpy((v34 + 16), v6, a1[1] - v6);
      v40 = *a1;
      v43 = (v39 + a1[1] - v6);
      a1[1] = v6;
      v41 = v33 - (v6 - v40);
      memcpy(v41, v40, v6 - v40);
      v42 = *a1;
      *a1 = v41;
      *(a1 + 1) = v43;
      if (v42)
      {

        operator delete(v42);
      }
    }

    else if (v6 == v4)
    {
      *v4 = *a2;
      v24 = v4 + 2;
LABEL_75:
      a1[1] = v24;
    }

    else
    {
      v26 = v6 + 2;
      if (v4 < 0x10)
      {
        v27 = a1[1];
      }

      else
      {
        v27 = v4 + 2;
        *v4 = *(v4 - 1);
      }

      a1[1] = v27;
      if (v4 != v26)
      {
        memmove(v6 + 2, v6, v4 - v26);
        v27 = a1[1];
      }

      v35 = v27 <= a2 || v6 > a2;
      v36 = 2;
      if (v35)
      {
        v36 = 0;
      }

      *v6 = *&a2[v36];
    }
  }

  else
  {
    v7 = *a2;
    v8 = a2[1];
    v9 = *a1;
    while (1)
    {
      v10 = *v9;
      if (v8 >= *v9)
      {
        v11 = v9[1];
        if (v7 < v10 && v8 <= v11)
        {
          break;
        }

        if (v7 < v10 && v8 > v11)
        {
          break;
        }

        v14 = v7 == v10 && v8 == v11;
        if (v14 || v7 > v10 && v8 < v11 || v7 >= v10 && v7 <= v11 && v8 > v11)
        {
          break;
        }
      }

      v9 += 2;
      if (v9 == v4)
      {
LABEL_59:
        while (v8 >= *v6)
        {
          v6 += 2;
          if (v6 == v4)
          {
            v6 = a1[1];
            goto LABEL_62;
          }
        }

        goto LABEL_62;
      }
    }

    if (v9 == v4)
    {
      goto LABEL_59;
    }

    v15 = v9 + 2;
    if (v9 + 2 == v4)
    {
LABEL_49:
      v16 = a1[1];
    }

    else
    {
      v16 = v9 + 2;
      while (1)
      {
        v17 = *v16;
        if (v8 < *v16)
        {
          break;
        }

        v18 = v16[1];
        if ((v7 >= v17 || v8 > v18) && (v7 >= v17 || v8 <= v18))
        {
          v21 = v7 == v17 && v8 == v18;
          if (!v21 && (v7 <= v17 || v8 >= v18) && (v7 < v17 || v7 > v18 || v8 <= v18))
          {
            break;
          }
        }

        v16 += 2;
        if (v16 == v4)
        {
          goto LABEL_49;
        }
      }
    }

    if (v7 >= v10)
    {
      v7 = *v9;
    }

    *v9 = v7;
    if (v9 != v16 - 2)
    {
      v22 = *(v16 - 1);
      if (v22 < a2[1])
      {
        v22 = a2[1];
      }

      v9[1] = v22;
      v23 = v4 - v16;
      if (v4 != v16)
      {
        memmove(v9 + 2, v16, v4 - v16);
      }

      v24 = (v15 + v23);
      goto LABEL_75;
    }

    v37 = a2[1];
    if (v11 >= v37)
    {
      v37 = v11;
    }

    v9[1] = v37;
  }
}

void sub_1DE24C1C8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void applesauce::CF::at_or<applesauce::CF::DictionaryRef,applesauce::CF::StringRef>(void *a1, const __CFDictionary *a2, const void *a3, void *a4)
{
  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::DictionaryRef,applesauce::CF::StringRef>(&cf, a2, a3);
  if (v8 == 1)
  {
    v6 = cf;
    if (cf)
    {
      CFRetain(cf);
      *a1 = v6;
      CFRelease(v6);
      return;
    }

    a4 = a1;
  }

  else
  {
    *a1 = *a4;
  }

  *a4 = 0;
}

uint64_t applesauce::CF::convert_to<unsigned int,0>(const __CFNumber *a1)
{
  result = applesauce::CF::convert_as<unsigned int,0>(a1);
  if ((result & 0x100000000) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::convert_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return result;
}

void std::vector<CA::ValueRange>::__init_with_size[abi:ne200100]<CA::ValueRange*,CA::ValueRange*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 60))
    {
      std::allocator<CA::ValueRange>::allocate_at_least[abi:ne200100](a4);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }
}

void sub_1DE24C340(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void applesauce::CF::ArrayRef::~ArrayRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t AMCP::Implementation::Outboard_Storage<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::dispatch(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (result > 2)
  {
    if (result <= 4)
    {
      if (result == 3)
      {
        v12 = AMCP::Implementation::get_type_marker<std::tuple<CA::ValueRangeList,CA::StreamDescription>>();
        result = 0;
        *a4 = v12;
      }

      else if (*a4 == AMCP::Implementation::get_type_marker<std::tuple<CA::ValueRangeList,CA::StreamDescription>>())
      {
        return *a2;
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

      if (*a4 != AMCP::Implementation::get_type_marker<std::tuple<CA::ValueRangeList,CA::StreamDescription>>() && *a4 != AMCP::Implementation::get_type_marker<applesauce::CF::DictionaryRef>())
      {
        goto LABEL_103;
      }

      if (*(a2 + 32))
      {
        valuePtr[0] = AMCP::Implementation::get_type_marker<std::tuple<CA::ValueRangeList,CA::StreamDescription>>();
        v11 = (*(a2 + 32))(4, a2, 0, valuePtr);
      }

      else
      {
        v11 = 0;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::tuple<CA::ValueRangeList,CA::StreamDescription>>())
      {
        if (v11)
        {
          *valuePtr = 0u;
          v66 = 0u;
          v67 = AMCP::Implementation::Outboard_Storage<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::dispatch;
          operator new();
        }

LABEL_111:
        __assert_rtn("create_available_format_from", "Thing.h", 2115, "in_value_ptr != nullptr");
      }

      if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::DictionaryRef>())
      {
        if (!v11)
        {
          goto LABEL_111;
        }

        Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
        v63 = v11;
        __p[0] = Mutable;
        v21 = *v11;
        v20 = *(v11 + 8);
        if (*v11 != v20)
        {
          v22 = MEMORY[0x1E695E9E0];
          v23 = MEMORY[0x1E695E9F0];
          do
          {
            v24 = CFDictionaryCreateMutable(0, 0, v22, v23);
            v70 = v24;
            v69 = CFStringCreateWithBytes(0, "minimum", 7, 0x8000100u, 0);
            if (!v69)
            {
              exception = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(exception, "Could not construct");
              __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }

            v25 = Mutable;
            valuePtr[0] = *v21;
            v26 = CFNumberCreate(0, kCFNumberDoubleType, valuePtr);
            v68 = v26;
            if (!v26)
            {
              v42 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v42, "Could not construct");
              __cxa_throw(v42, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }

            mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(v24, v69, v26);
            CFRelease(v26);
            if (v69)
            {
              CFRelease(v69);
            }

            v69 = CFStringCreateWithBytes(0, "maximum", 7, 0x8000100u, 0);
            if (!v69)
            {
              v43 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v43, "Could not construct");
              __cxa_throw(v43, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }

            valuePtr[0] = v21[1];
            v27 = CFNumberCreate(0, kCFNumberDoubleType, valuePtr);
            v68 = v27;
            if (!v27)
            {
              v44 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v44, "Could not construct");
              __cxa_throw(v44, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }

            mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(v24, v69, v27);
            CFRelease(v27);
            Mutable = v25;
            if (v69)
            {
              CFRelease(v69);
            }

            mcp_applesauce::CF::Dictionary_Builder::get_dictionary(valuePtr, v24);
            mcp_applesauce::CF::Array_Builder::append_value<applesauce::CF::DictionaryRef>(v25, valuePtr[0]);
            if (valuePtr[0])
            {
              CFRelease(valuePtr[0]);
            }

            if (v24)
            {
              CFRelease(v24);
            }

            v21 += 2;
          }

          while (v21 != v20);
        }

        v28 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
        v70 = v28;
        v69 = CFStringCreateWithBytes(0, "sample rate", 11, 0x8000100u, 0);
        if (!v69)
        {
          v45 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v45, "Could not construct");
          __cxa_throw(v45, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        valuePtr[0] = *(v63 + 24);
        v29 = CFNumberCreate(0, kCFNumberDoubleType, valuePtr);
        v68 = v29;
        if (!v29)
        {
          v46 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v46, "Could not construct");
          __cxa_throw(v46, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(v28, v69, v29);
        CFRelease(v29);
        if (v69)
        {
          CFRelease(v69);
        }

        valuePtr[0] = CFStringCreateWithBytes(0, "format id", 9, 0x8000100u, 0);
        if (!valuePtr[0])
        {
          v47 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v47, "Could not construct");
          __cxa_throw(v47, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        LODWORD(v68) = *(v63 + 32);
        v30 = CFNumberCreate(0, kCFNumberIntType, &v68);
        v69 = v30;
        if (!v30)
        {
          v48 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v48, "Could not construct");
          __cxa_throw(v48, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(v28, valuePtr[0], v30);
        CFRelease(v30);
        if (valuePtr[0])
        {
          CFRelease(valuePtr[0]);
        }

        valuePtr[0] = CFStringCreateWithBytes(0, "format flags", 12, 0x8000100u, 0);
        if (!valuePtr[0])
        {
          v49 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v49, "Could not construct");
          __cxa_throw(v49, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        LODWORD(v68) = *(v63 + 36);
        v31 = CFNumberCreate(0, kCFNumberIntType, &v68);
        v69 = v31;
        if (!v31)
        {
          v50 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v50, "Could not construct");
          __cxa_throw(v50, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(v28, valuePtr[0], v31);
        CFRelease(v31);
        if (valuePtr[0])
        {
          CFRelease(valuePtr[0]);
        }

        valuePtr[0] = CFStringCreateWithBytes(0, "bytes per packet", 16, 0x8000100u, 0);
        if (!valuePtr[0])
        {
          v51 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v51, "Could not construct");
          __cxa_throw(v51, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        LODWORD(v68) = *(v63 + 40);
        v32 = CFNumberCreate(0, kCFNumberIntType, &v68);
        v69 = v32;
        if (!v32)
        {
          v52 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v52, "Could not construct");
          __cxa_throw(v52, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(v28, valuePtr[0], v32);
        CFRelease(v32);
        if (valuePtr[0])
        {
          CFRelease(valuePtr[0]);
        }

        valuePtr[0] = CFStringCreateWithBytes(0, "frames per packet", 17, 0x8000100u, 0);
        if (!valuePtr[0])
        {
          v53 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v53, "Could not construct");
          __cxa_throw(v53, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        LODWORD(v68) = *(v63 + 44);
        v33 = CFNumberCreate(0, kCFNumberIntType, &v68);
        v69 = v33;
        if (!v33)
        {
          v54 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v54, "Could not construct");
          __cxa_throw(v54, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(v28, valuePtr[0], v33);
        CFRelease(v33);
        if (valuePtr[0])
        {
          CFRelease(valuePtr[0]);
        }

        valuePtr[0] = CFStringCreateWithBytes(0, "bytes per frame", 15, 0x8000100u, 0);
        if (!valuePtr[0])
        {
          v55 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v55, "Could not construct");
          __cxa_throw(v55, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        LODWORD(v68) = *(v63 + 48);
        v34 = CFNumberCreate(0, kCFNumberIntType, &v68);
        v69 = v34;
        if (!v34)
        {
          v56 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v56, "Could not construct");
          __cxa_throw(v56, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(v28, valuePtr[0], v34);
        CFRelease(v34);
        if (valuePtr[0])
        {
          CFRelease(valuePtr[0]);
        }

        valuePtr[0] = CFStringCreateWithBytes(0, "channels per frame", 18, 0x8000100u, 0);
        if (!valuePtr[0])
        {
          v57 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v57, "Could not construct");
          __cxa_throw(v57, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        LODWORD(v68) = *(v63 + 52);
        v35 = CFNumberCreate(0, kCFNumberIntType, &v68);
        v69 = v35;
        if (!v35)
        {
          v58 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v58, "Could not construct");
          __cxa_throw(v58, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(v28, valuePtr[0], v35);
        CFRelease(v35);
        if (valuePtr[0])
        {
          CFRelease(valuePtr[0]);
        }

        valuePtr[0] = CFStringCreateWithBytes(0, "bits per channel", 16, 0x8000100u, 0);
        if (!valuePtr[0])
        {
          v59 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v59, "Could not construct");
          __cxa_throw(v59, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        LODWORD(v68) = *(v63 + 56);
        v36 = CFNumberCreate(0, kCFNumberIntType, &v68);
        v69 = v36;
        if (!v36)
        {
          v60 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v60, "Could not construct");
          __cxa_throw(v60, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(v28, valuePtr[0], v36);
        CFRelease(v36);
        if (valuePtr[0])
        {
          CFRelease(valuePtr[0]);
        }

        v37 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
        v69 = v37;
        v38 = CFStringCreateWithBytes(0, "sample rate range list", 22, 0x8000100u, 0);
        valuePtr[0] = v38;
        if (!v38)
        {
          v61 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v61, "Could not construct");
          __cxa_throw(v61, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        mcp_applesauce::CF::Array_Builder::get_array(&v68, Mutable);
        mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::ArrayRef>(v37, v38, v68);
        if (v68)
        {
          CFRelease(v68);
        }

        CFRelease(v38);
        v39 = CFStringCreateWithBytes(0, "format", 6, 0x8000100u, 0);
        valuePtr[0] = v39;
        if (!v39)
        {
          v62 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v62, "Could not construct");
          __cxa_throw(v62, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        mcp_applesauce::CF::Dictionary_Builder::get_dictionary(&v68, v28);
        mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::DictionaryRef>(v37, v39, v68);
        if (v68)
        {
          CFRelease(v68);
        }

        CFRelease(v39);
        mcp_applesauce::CF::Dictionary_Builder::copy_dictionary(valuePtr, v37);
        valuePtr[1] = 0;
        v66 = 0uLL;
        v67 = AMCP::Implementation::In_Place_Storage<applesauce::CF::DictionaryRef>::dispatch;
        if (v37)
        {
          CFRelease(v37);
        }

        if (v28)
        {
          CFRelease(v28);
        }

        if (Mutable)
        {
          CFRelease(Mutable);
        }
      }

      else
      {
LABEL_103:
        v67 = 0;
        *valuePtr = 0u;
        v66 = 0u;
      }

      AMCP::swap(valuePtr, a3, v10);
      if (v67)
      {
        (v67)(0, valuePtr, 0, 0);
      }

      return 0;
    }

    v13 = AMCP::Implementation::get_type_marker<std::tuple<CA::ValueRangeList,CA::StreamDescription>>();
    v14 = *(a2 + 32);
    valuePtr[0] = 0;
    if (v14)
    {
      v14(3, a2, 0, valuePtr);
      v14 = valuePtr[0];
    }

    if (v14 != v13)
    {
      goto LABEL_32;
    }

    v15 = *(a3 + 32);
    __p[0] = 0;
    if (v15)
    {
      v15(3, a3, 0, __p);
      v15 = __p[0];
    }

    if (v15 == v13)
    {
      if (*(a2 + 32))
      {
        valuePtr[0] = AMCP::Implementation::get_type_marker<std::tuple<CA::ValueRangeList,CA::StreamDescription>>();
        v16 = (*(a2 + 32))(4, a2, 0, valuePtr);
      }

      else
      {
        v16 = 0;
      }

      valuePtr[0] = AMCP::Implementation::get_type_marker<std::tuple<CA::ValueRangeList,CA::StreamDescription>>();
      v40 = (*(a3 + 32))(4, a3, 0, valuePtr);
      if (!std::__tuple_equal<2ul>::operator()[abi:ne200100]<std::tuple<CA::ValueRangeList,CA::StreamDescription>,std::tuple<CA::ValueRangeList,CA::StreamDescription>>(v16, v40))
      {
        return 0;
      }
    }

    else
    {
LABEL_32:
      AMCP::Thing::convert_to<std::tuple<CA::ValueRangeList,CA::StreamDescription>>(valuePtr, a2);
      AMCP::Thing::convert_to<std::tuple<CA::ValueRangeList,CA::StreamDescription>>(__p, a3);
      v18 = std::__tuple_equal<2ul>::operator()[abi:ne200100]<std::tuple<CA::ValueRangeList,CA::StreamDescription>,std::tuple<CA::ValueRangeList,CA::StreamDescription>>(valuePtr, __p);
      if (__p[0])
      {
        operator delete(__p[0]);
      }

      if (valuePtr[0])
      {
        operator delete(valuePtr[0]);
      }

      if (!v18)
      {
        return 0;
      }
    }

    return 1;
  }

  switch(result)
  {
    case 0:
      goto LABEL_13;
    case 1:
      v17 = *a2;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 32) = AMCP::Implementation::Outboard_Storage<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::dispatch;
      operator new();
    case 2:
      v7 = *a2;
      *a2 = 0;
      v8 = *a3;
      *a3 = v7;
      if (v8)
      {
        std::default_delete<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::operator()[abi:ne200100](v8);
      }

      *(a3 + 32) = AMCP::Implementation::Outboard_Storage<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::dispatch;
LABEL_13:
      v9 = *a2;
      *a2 = 0;
      if (v9)
      {
        std::default_delete<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::operator()[abi:ne200100](v9);
      }

      result = 0;
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      break;
  }

  return result;
}

void sub_1DE24D2E4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, const void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&__p);
  mcp_applesauce::CF::Dictionary_Builder::~Dictionary_Builder((v19 - 104));
  mcp_applesauce::CF::Dictionary_Builder::~Dictionary_Builder((v19 - 96));
  mcp_applesauce::CF::Array_Builder::~Array_Builder(&a11);
  __clang_call_terminate(a1);
}

void std::default_delete<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::operator()[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1E12C1730);
}

BOOL std::__tuple_equal<2ul>::operator()[abi:ne200100]<std::tuple<CA::ValueRangeList,CA::StreamDescription>,std::tuple<CA::ValueRangeList,CA::StreamDescription>>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  if (*a1 == v5)
  {
    return *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32) && *(a1 + 36) == *(a2 + 36) && *(a1 + 40) == *(a2 + 40) && *(a1 + 44) == *(a2 + 44) && *(a1 + 48) == *(a2 + 48) && *(a1 + 52) == *(a2 + 52) && *(a1 + 56) == *(a2 + 56);
  }

  else
  {
    for (i = *a2; ; i += 2)
    {
      result = CA::operator==(*v4, v4[1], *i, i[1]);
      if (!result)
      {
        break;
      }

      v4 += 2;
      if (v4 == v5)
      {
        return *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32) && *(a1 + 36) == *(a2 + 36) && *(a1 + 40) == *(a2 + 40) && *(a1 + 44) == *(a2 + 44) && *(a1 + 48) == *(a2 + 48) && *(a1 + 52) == *(a2 + 52) && *(a1 + 56) == *(a2 + 56);
      }
    }
  }

  return result;
}

void AMCP::Thing::convert_to<std::tuple<CA::ValueRangeList,CA::StreamDescription>>(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 32))
  {
    goto LABEL_12;
  }

  v4 = AMCP::Implementation::get_type_marker<std::tuple<CA::ValueRangeList,CA::StreamDescription>>();
  v5 = *(a2 + 32);
  v19 = 0;
  if (v5)
  {
    v5(3, a2, 0, &v19);
    v5 = v19;
  }

  if (v5 == v4)
  {
    *&v17[0] = v4;
    v6 = (*(a2 + 32))(4, a2, 0, v17);
    if (v6)
    {
      v7 = v6;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      std::vector<CA::ValueRange>::__init_with_size[abi:ne200100]<CA::ValueRange*,CA::ValueRange*>(a1, *v6, v6[1], (v6[1] - *v6) >> 4);
      *(a1 + 24) = *(v7 + 3);
      *(a1 + 40) = *(v7 + 5);
      *(a1 + 56) = v7[7];
      return;
    }

LABEL_12:
    exception = __cxa_allocate_exception(8uLL);
    v11 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v11, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v16 = AMCP::Implementation::get_type_marker<std::tuple<CA::ValueRangeList,CA::StreamDescription>>();
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  (*(a2 + 32))(6, a2, v17, &v16);
  if (!v18)
  {
    v12 = __cxa_allocate_exception(8uLL);
    v13 = std::bad_cast::bad_cast(v12);
    __cxa_throw(v13, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v16 = v4;
  v8 = v18(4, v17, 0, &v16);
  v9 = v8;
  if (!v8)
  {
    v14 = __cxa_allocate_exception(8uLL);
    v15 = std::bad_cast::bad_cast(v14);
    __cxa_throw(v15, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  std::vector<CA::ValueRange>::__init_with_size[abi:ne200100]<CA::ValueRange*,CA::ValueRange*>(a1, *v8, v8[1], (v8[1] - *v8) >> 4);
  *(a1 + 24) = *(v9 + 3);
  *(a1 + 40) = *(v9 + 5);
  *(a1 + 56) = v9[7];
  if (v18)
  {
    v18(0, v17, 0, 0);
  }
}

void sub_1DE24D8D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

void mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(__CFDictionary *a1, const void *a2, const void *a3)
{
  if (a1)
  {
    CFDictionarySetValue(a1, a2, a3);
  }
}

void *mcp_applesauce::CF::Dictionary_Builder::get_dictionary(void *this, const void *a2)
{
  if (a2)
  {
    return applesauce::CF::DictionaryRef::from_get(this, a2);
  }

  *this = 0;
  return this;
}

void mcp_applesauce::CF::Array_Builder::append_value<applesauce::CF::DictionaryRef>(__CFArray *a1, const void *a2)
{
  if (a1)
  {
    CFArrayAppendValue(a1, a2);
  }
}

void mcp_applesauce::CF::Dictionary_Builder::~Dictionary_Builder(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void *mcp_applesauce::CF::Array_Builder::get_array(void *this, const void *a2)
{
  if (a2)
  {
    return applesauce::CF::ArrayRef::from_get(this, a2);
  }

  *this = 0;
  return this;
}

void mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::ArrayRef>(__CFDictionary *a1, const void *a2, const void *a3)
{
  if (a1)
  {
    CFDictionarySetValue(a1, a2, a3);
  }
}

void mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::DictionaryRef>(__CFDictionary *a1, const void *a2, const void *a3)
{
  if (a1)
  {
    CFDictionarySetValue(a1, a2, a3);
  }
}

void *mcp_applesauce::CF::Dictionary_Builder::copy_dictionary(void *this, const __CFDictionary *a2)
{
  v2 = this;
  if (a2)
  {
    this = CFDictionaryCreateCopy(0, a2);
    *v2 = this;
    if (this)
    {
      v3 = CFGetTypeID(this);
      this = CFDictionaryGetTypeID();
      if (v3 != this)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }
    }
  }

  else
  {
    *this = 0;
  }

  return this;
}

void sub_1DE24DA84(void *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(v1);
  __clang_call_terminate(a1);
}

void mcp_applesauce::CF::Array_Builder::~Array_Builder(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

const void **applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
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
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    *this = 0;
  }

  return this;
}

void sub_1DE24DBB0(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFArray const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

const void **applesauce::CF::ObjectRef<__CFArray const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void *applesauce::CF::DictionaryRef::from_get(void *this, CFTypeRef cf)
{
  v2 = this;
  if (cf)
  {
    CFRetain(cf);
    *v2 = cf;
    v4 = CFGetTypeID(cf);
    this = CFDictionaryGetTypeID();
    if (v4 != this)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    *this = 0;
  }

  return this;
}

void sub_1DE24DCA4(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

BOOL CA::operator==(double a1, double a2, double a3, double a4)
{
  if (a2 < a3)
  {
    return 0;
  }

  v4 = a1 >= a3 || a2 > a4;
  if (!v4 || a1 < a3 && a2 > a4)
  {
    return 0;
  }

  if (a2 == a4)
  {
    return a1 == a3;
  }

  return 0;
}

void std::allocator<CA::ValueRange>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void applesauce::CF::details::find_at_key_or_optional<applesauce::CF::DictionaryRef,applesauce::CF::StringRef>(_BYTE *a1, CFDictionaryRef theDict, const void *a3)
{
  v4 = applesauce::CF::details::at_key<applesauce::CF::StringRef>(theDict, a3);
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  CFRetain(v4);
  v6 = CFGetTypeID(v5);
  if (v6 != CFDictionaryGetTypeID())
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

const void *applesauce::CF::details::at_key<applesauce::CF::StringRef>(CFDictionaryRef theDict, const void *a2)
{
  result = 0;
  if (theDict)
  {
    if (a2)
    {
      return CFDictionaryGetValue(theDict, a2);
    }
  }

  return result;
}

void applesauce::CF::details::find_at_key_or_optional<applesauce::CF::NumberRef,applesauce::CF::StringRef>(_BYTE *a1, CFDictionaryRef theDict, const void *a3)
{
  v4 = applesauce::CF::details::at_key<applesauce::CF::StringRef>(theDict, a3);
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  CFRetain(v4);
  v6 = CFGetTypeID(v5);
  if (v6 != CFNumberGetTypeID())
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

void applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,applesauce::CF::StringRef>(_BYTE *a1, CFDictionaryRef theDict, const void *a3)
{
  v4 = applesauce::CF::details::at_key<applesauce::CF::StringRef>(theDict, a3);
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

uint64_t AMCP::Implementation::get_type_marker<AudioStreamBasicDescription>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[459];
}

uint64_t AMCP::Implementation::get_type_marker<CA::StreamDescription>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[461];
}

uint64_t AMCP::Implementation::Outboard_Storage<CA::StreamDescription>::dispatch(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (result > 2)
  {
    if (result <= 4)
    {
      if (result == 3)
      {
        v13 = AMCP::Implementation::get_type_marker<CA::StreamDescription>();
        result = 0;
        *a4 = v13;
      }

      else if (*a4 == AMCP::Implementation::get_type_marker<CA::StreamDescription>())
      {
        return *a2;
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

      if (*a4 != AMCP::Implementation::get_type_marker<AudioStreamBasicDescription>() && *a4 != AMCP::Implementation::get_type_marker<CA::StreamDescription>() && *a4 != AMCP::Implementation::get_type_marker<applesauce::CF::DictionaryRef>())
      {
        goto LABEL_83;
      }

      if (*(a2 + 32))
      {
        *&valuePtr = AMCP::Implementation::get_type_marker<CA::StreamDescription>();
        v11 = (*(a2 + 32))(4, a2, 0, &valuePtr);
      }

      else
      {
        v11 = 0;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<AudioStreamBasicDescription>())
      {
        if (v11)
        {
          valuePtr = *v11;
          v51 = *(v11 + 16);
          v52 = *(v11 + 32);
          v48 = 0uLL;
          cf[1] = 0;
          v49 = AMCP::Implementation::Outboard_Storage<AudioStreamBasicDescription>::dispatch;
          operator new();
        }

        goto LABEL_102;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<CA::StreamDescription>())
      {
        if (v11)
        {
          cf[1] = 0;
          v48 = 0uLL;
          v49 = AMCP::Implementation::Outboard_Storage<CA::StreamDescription>::dispatch;
          operator new();
        }

LABEL_102:
        __assert_rtn("create_asbd_from", "Thing.h", 1718, "in_value_ptr != nullptr");
      }

      if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::DictionaryRef>())
      {
        if (!v11)
        {
          goto LABEL_102;
        }

        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
        v53[1] = Mutable;
        cf[0] = CFStringCreateWithBytes(0, "sample rate", 11, 0x8000100u, 0);
        if (!cf[0])
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
          __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        *&valuePtr = *v11;
        v22 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
        v53[0] = v22;
        if (!v22)
        {
          v32 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v32, "Could not construct");
          __cxa_throw(v32, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(Mutable, cf[0], v22);
        CFRelease(v22);
        CFRelease(cf[0]);
        *&valuePtr = CFStringCreateWithBytes(0, "format id", 9, 0x8000100u, 0);
        if (!valuePtr)
        {
          v33 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v33, "Could not construct");
          __cxa_throw(v33, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        LODWORD(v53[0]) = *(v11 + 8);
        v23 = CFNumberCreate(0, kCFNumberIntType, v53);
        cf[0] = v23;
        if (!v23)
        {
          v34 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v34, "Could not construct");
          __cxa_throw(v34, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(Mutable, valuePtr, v23);
        CFRelease(v23);
        if (valuePtr)
        {
          CFRelease(valuePtr);
        }

        *&valuePtr = CFStringCreateWithBytes(0, "format flags", 12, 0x8000100u, 0);
        if (!valuePtr)
        {
          v35 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v35, "Could not construct");
          __cxa_throw(v35, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        LODWORD(v53[0]) = *(v11 + 12);
        v24 = CFNumberCreate(0, kCFNumberIntType, v53);
        cf[0] = v24;
        if (!v24)
        {
          v36 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v36, "Could not construct");
          __cxa_throw(v36, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(Mutable, valuePtr, v24);
        CFRelease(v24);
        if (valuePtr)
        {
          CFRelease(valuePtr);
        }

        *&valuePtr = CFStringCreateWithBytes(0, "bytes per packet", 16, 0x8000100u, 0);
        if (!valuePtr)
        {
          v37 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v37, "Could not construct");
          __cxa_throw(v37, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        LODWORD(v53[0]) = *(v11 + 16);
        v25 = CFNumberCreate(0, kCFNumberIntType, v53);
        cf[0] = v25;
        if (!v25)
        {
          v38 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v38, "Could not construct");
          __cxa_throw(v38, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(Mutable, valuePtr, v25);
        CFRelease(v25);
        if (valuePtr)
        {
          CFRelease(valuePtr);
        }

        *&valuePtr = CFStringCreateWithBytes(0, "frames per packet", 17, 0x8000100u, 0);
        if (!valuePtr)
        {
          v39 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v39, "Could not construct");
          __cxa_throw(v39, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        LODWORD(v53[0]) = *(v11 + 20);
        v26 = CFNumberCreate(0, kCFNumberIntType, v53);
        cf[0] = v26;
        if (!v26)
        {
          v40 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v40, "Could not construct");
          __cxa_throw(v40, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(Mutable, valuePtr, v26);
        CFRelease(v26);
        if (valuePtr)
        {
          CFRelease(valuePtr);
        }

        *&valuePtr = CFStringCreateWithBytes(0, "bytes per frame", 15, 0x8000100u, 0);
        if (!valuePtr)
        {
          v41 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v41, "Could not construct");
          __cxa_throw(v41, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        LODWORD(v53[0]) = *(v11 + 24);
        v27 = CFNumberCreate(0, kCFNumberIntType, v53);
        cf[0] = v27;
        if (!v27)
        {
          v42 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v42, "Could not construct");
          __cxa_throw(v42, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(Mutable, valuePtr, v27);
        CFRelease(v27);
        if (valuePtr)
        {
          CFRelease(valuePtr);
        }

        *&valuePtr = CFStringCreateWithBytes(0, "channels per frame", 18, 0x8000100u, 0);
        if (!valuePtr)
        {
          v43 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v43, "Could not construct");
          __cxa_throw(v43, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        LODWORD(v53[0]) = *(v11 + 28);
        v28 = CFNumberCreate(0, kCFNumberIntType, v53);
        cf[0] = v28;
        if (!v28)
        {
          v44 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v44, "Could not construct");
          __cxa_throw(v44, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(Mutable, valuePtr, v28);
        CFRelease(v28);
        if (valuePtr)
        {
          CFRelease(valuePtr);
        }

        *&valuePtr = CFStringCreateWithBytes(0, "bits per channel", 16, 0x8000100u, 0);
        if (!valuePtr)
        {
          v45 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v45, "Could not construct");
          __cxa_throw(v45, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        LODWORD(v53[0]) = *(v11 + 32);
        v29 = CFNumberCreate(0, kCFNumberIntType, v53);
        cf[0] = v29;
        if (!v29)
        {
          v46 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v46, "Could not construct");
          __cxa_throw(v46, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(Mutable, valuePtr, v29);
        CFRelease(v29);
        if (valuePtr)
        {
          CFRelease(valuePtr);
        }

        mcp_applesauce::CF::Dictionary_Builder::copy_dictionary(cf, Mutable);
        cf[1] = 0;
        v48 = 0uLL;
        v49 = AMCP::Implementation::In_Place_Storage<applesauce::CF::DictionaryRef>::dispatch;
        if (Mutable)
        {
          CFRelease(Mutable);
        }
      }

      else
      {
LABEL_83:
        v49 = 0;
        *cf = 0u;
        v48 = 0u;
      }

      AMCP::swap(cf, a3, v10);
      if (v49)
      {
        v49(0, cf, 0, 0);
      }

      return 0;
    }

    v14 = AMCP::Implementation::get_type_marker<CA::StreamDescription>();
    v15 = *(a2 + 32);
    *&valuePtr = 0;
    if (v15)
    {
      v15(3, a2, 0, &valuePtr);
      v15 = valuePtr;
    }

    if (v15 != v14)
    {
      goto LABEL_34;
    }

    v16 = *(a3 + 32);
    cf[0] = 0;
    if (v16)
    {
      v16(3, a3, 0, cf);
      v16 = cf[0];
    }

    if (v16 == v14)
    {
      if (*(a2 + 32))
      {
        *&valuePtr = AMCP::Implementation::get_type_marker<CA::StreamDescription>();
        v17 = (*(a2 + 32))(4, a2, 0, &valuePtr);
      }

      else
      {
        v17 = 0;
      }

      if (*(a3 + 32))
      {
        *&valuePtr = AMCP::Implementation::get_type_marker<CA::StreamDescription>();
        v30 = (*(a3 + 32))(4, a3, 0, &valuePtr);
      }

      else
      {
        v30 = 0;
      }

      if (*v17 != *v30 || *(v17 + 8) != *(v30 + 8) || *(v17 + 12) != *(v30 + 12) || *(v17 + 16) != *(v30 + 16) || *(v17 + 20) != *(v30 + 20) || *(v17 + 24) != *(v30 + 24) || *(v17 + 28) != *(v30 + 28))
      {
        return 0;
      }

      v19 = *(v17 + 32);
      v20 = *(v30 + 32);
    }

    else
    {
LABEL_34:
      AMCP::Thing::convert_to<CA::StreamDescription>(&valuePtr, a2);
      AMCP::Thing::convert_to<CA::StreamDescription>(cf, a3);
      if (*&valuePtr != *cf || *(&valuePtr + 1) != cf[1] || v51 != v48 || *(&v51 + 4) != *(&v48 + 4) || HIDWORD(v51) != HIDWORD(v48))
      {
        return 0;
      }

      v19 = v52;
      v20 = v49;
    }

    return v19 == v20;
  }

  switch(result)
  {
    case 0:
      v12 = *a2;
      *a2 = 0;
      if (!v12)
      {
LABEL_23:
        result = 0;
        *(a2 + 32) = 0;
        *a2 = 0u;
        *(a2 + 16) = 0u;
        return result;
      }

LABEL_22:
      MEMORY[0x1E12C1730]();
      goto LABEL_23;
    case 1:
      v18 = *a2;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 32) = AMCP::Implementation::Outboard_Storage<CA::StreamDescription>::dispatch;
      operator new();
    case 2:
      v7 = *a2;
      *a2 = 0;
      v8 = *a3;
      *a3 = v7;
      if (v8)
      {
        MEMORY[0x1E12C1730](v8, 0x1000C400A747E1ELL);
      }

      *(a3 + 32) = AMCP::Implementation::Outboard_Storage<CA::StreamDescription>::dispatch;
      v9 = *a2;
      *a2 = 0;
      if (!v9)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
  }

  return result;
}

void sub_1DE24EC98(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, const void *a15)
{
  applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(&a9);
  applesauce::CF::StringRef::~StringRef(&a15);
  mcp_applesauce::CF::Dictionary_Builder::~Dictionary_Builder((v15 - 40));
  __clang_call_terminate(a1);
}

uint64_t AMCP::Thing::convert_to<CA::StreamDescription>(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 32))
  {
    goto LABEL_12;
  }

  v4 = AMCP::Implementation::get_type_marker<CA::StreamDescription>();
  v5 = *(a2 + 32);
  v18 = 0;
  if (v5)
  {
    v5(3, a2, 0, &v18);
    v5 = v18;
  }

  if (v5 == v4)
  {
    *&v16[0] = v4;
    result = (*(a2 + 32))(4, a2, 0, v16);
    if (result)
    {
      v7 = *(result + 16);
      *a1 = *result;
      *(a1 + 16) = v7;
      *(a1 + 32) = *(result + 32);
      return result;
    }

LABEL_12:
    exception = __cxa_allocate_exception(8uLL);
    v10 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v10, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v15 = AMCP::Implementation::get_type_marker<CA::StreamDescription>();
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  (*(a2 + 32))(6, a2, v16, &v15);
  if (!v17)
  {
    v11 = __cxa_allocate_exception(8uLL);
    v12 = std::bad_cast::bad_cast(v11);
    __cxa_throw(v12, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v15 = v4;
  result = v17(4, v16, 0, &v15);
  if (!result)
  {
    v13 = __cxa_allocate_exception(8uLL);
    v14 = std::bad_cast::bad_cast(v13);
    __cxa_throw(v14, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v8 = *(result + 16);
  *a1 = *result;
  *(a1 + 16) = v8;
  *(a1 + 32) = *(result + 32);
  if (v17)
  {
    return v17(0, v16, 0, 0);
  }

  return result;
}

void sub_1DE24EFF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

uint64_t AMCP::Implementation::Outboard_Storage<AudioStreamBasicDescription>::dispatch(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (result > 2)
  {
    if (result <= 4)
    {
      if (result == 3)
      {
        type = AMCP::Implementation::get_type_marker<AudioStreamBasicDescription>();
        result = 0;
        *a4 = type;
      }

      else if (*a4 == AMCP::Implementation::get_type_marker<AudioStreamBasicDescription>())
      {
        return *a2;
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

      if (*a4 != AMCP::Implementation::get_type_marker<AudioStreamBasicDescription>() && *a4 != AMCP::Implementation::get_type_marker<CA::StreamDescription>() && *a4 != AMCP::Implementation::get_type_marker<applesauce::CF::DictionaryRef>())
      {
        goto LABEL_83;
      }

      if (*(a2 + 32))
      {
        *&valuePtr = AMCP::Implementation::get_type_marker<AudioStreamBasicDescription>();
        v11 = (*(a2 + 32))(4, a2, 0, &valuePtr);
      }

      else
      {
        v11 = 0;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<AudioStreamBasicDescription>())
      {
        if (v11)
        {
          cf[1] = 0;
          v48 = 0uLL;
          v49 = AMCP::Implementation::Outboard_Storage<AudioStreamBasicDescription>::dispatch;
          operator new();
        }

        goto LABEL_102;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<CA::StreamDescription>())
      {
        if (v11)
        {
          valuePtr = *v11;
          v51 = *(v11 + 16);
          v52 = *(v11 + 32);
          v48 = 0uLL;
          cf[1] = 0;
          v49 = AMCP::Implementation::Outboard_Storage<CA::StreamDescription>::dispatch;
          operator new();
        }

LABEL_102:
        __assert_rtn("create_asbd_from", "Thing.h", 1718, "in_value_ptr != nullptr");
      }

      if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::DictionaryRef>())
      {
        if (!v11)
        {
          goto LABEL_102;
        }

        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
        v53[1] = Mutable;
        cf[0] = CFStringCreateWithBytes(0, "sample rate", 11, 0x8000100u, 0);
        if (!cf[0])
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
          __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        *&valuePtr = *v11;
        v22 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
        v53[0] = v22;
        if (!v22)
        {
          v32 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v32, "Could not construct");
          __cxa_throw(v32, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(Mutable, cf[0], v22);
        CFRelease(v22);
        CFRelease(cf[0]);
        *&valuePtr = CFStringCreateWithBytes(0, "format id", 9, 0x8000100u, 0);
        if (!valuePtr)
        {
          v33 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v33, "Could not construct");
          __cxa_throw(v33, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        LODWORD(v53[0]) = *(v11 + 8);
        v23 = CFNumberCreate(0, kCFNumberIntType, v53);
        cf[0] = v23;
        if (!v23)
        {
          v34 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v34, "Could not construct");
          __cxa_throw(v34, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(Mutable, valuePtr, v23);
        CFRelease(v23);
        if (valuePtr)
        {
          CFRelease(valuePtr);
        }

        *&valuePtr = CFStringCreateWithBytes(0, "format flags", 12, 0x8000100u, 0);
        if (!valuePtr)
        {
          v35 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v35, "Could not construct");
          __cxa_throw(v35, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        LODWORD(v53[0]) = *(v11 + 12);
        v24 = CFNumberCreate(0, kCFNumberIntType, v53);
        cf[0] = v24;
        if (!v24)
        {
          v36 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v36, "Could not construct");
          __cxa_throw(v36, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(Mutable, valuePtr, v24);
        CFRelease(v24);
        if (valuePtr)
        {
          CFRelease(valuePtr);
        }

        *&valuePtr = CFStringCreateWithBytes(0, "bytes per packet", 16, 0x8000100u, 0);
        if (!valuePtr)
        {
          v37 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v37, "Could not construct");
          __cxa_throw(v37, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        LODWORD(v53[0]) = *(v11 + 16);
        v25 = CFNumberCreate(0, kCFNumberIntType, v53);
        cf[0] = v25;
        if (!v25)
        {
          v38 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v38, "Could not construct");
          __cxa_throw(v38, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(Mutable, valuePtr, v25);
        CFRelease(v25);
        if (valuePtr)
        {
          CFRelease(valuePtr);
        }

        *&valuePtr = CFStringCreateWithBytes(0, "frames per packet", 17, 0x8000100u, 0);
        if (!valuePtr)
        {
          v39 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v39, "Could not construct");
          __cxa_throw(v39, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        LODWORD(v53[0]) = *(v11 + 20);
        v26 = CFNumberCreate(0, kCFNumberIntType, v53);
        cf[0] = v26;
        if (!v26)
        {
          v40 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v40, "Could not construct");
          __cxa_throw(v40, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(Mutable, valuePtr, v26);
        CFRelease(v26);
        if (valuePtr)
        {
          CFRelease(valuePtr);
        }

        *&valuePtr = CFStringCreateWithBytes(0, "bytes per frame", 15, 0x8000100u, 0);
        if (!valuePtr)
        {
          v41 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v41, "Could not construct");
          __cxa_throw(v41, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        LODWORD(v53[0]) = *(v11 + 24);
        v27 = CFNumberCreate(0, kCFNumberIntType, v53);
        cf[0] = v27;
        if (!v27)
        {
          v42 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v42, "Could not construct");
          __cxa_throw(v42, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(Mutable, valuePtr, v27);
        CFRelease(v27);
        if (valuePtr)
        {
          CFRelease(valuePtr);
        }

        *&valuePtr = CFStringCreateWithBytes(0, "channels per frame", 18, 0x8000100u, 0);
        if (!valuePtr)
        {
          v43 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v43, "Could not construct");
          __cxa_throw(v43, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        LODWORD(v53[0]) = *(v11 + 28);
        v28 = CFNumberCreate(0, kCFNumberIntType, v53);
        cf[0] = v28;
        if (!v28)
        {
          v44 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v44, "Could not construct");
          __cxa_throw(v44, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(Mutable, valuePtr, v28);
        CFRelease(v28);
        if (valuePtr)
        {
          CFRelease(valuePtr);
        }

        *&valuePtr = CFStringCreateWithBytes(0, "bits per channel", 16, 0x8000100u, 0);
        if (!valuePtr)
        {
          v45 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v45, "Could not construct");
          __cxa_throw(v45, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        LODWORD(v53[0]) = *(v11 + 32);
        v29 = CFNumberCreate(0, kCFNumberIntType, v53);
        cf[0] = v29;
        if (!v29)
        {
          v46 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v46, "Could not construct");
          __cxa_throw(v46, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(Mutable, valuePtr, v29);
        CFRelease(v29);
        if (valuePtr)
        {
          CFRelease(valuePtr);
        }

        mcp_applesauce::CF::Dictionary_Builder::copy_dictionary(cf, Mutable);
        cf[1] = 0;
        v48 = 0uLL;
        v49 = AMCP::Implementation::In_Place_Storage<applesauce::CF::DictionaryRef>::dispatch;
        if (Mutable)
        {
          CFRelease(Mutable);
        }
      }

      else
      {
LABEL_83:
        v49 = 0;
        *cf = 0u;
        v48 = 0u;
      }

      AMCP::swap(cf, a3, v10);
      if (v49)
      {
        (v49)(0, cf, 0, 0);
      }

      return 0;
    }

    v14 = AMCP::Implementation::get_type_marker<AudioStreamBasicDescription>();
    v15 = *(a2 + 32);
    *&valuePtr = 0;
    if (v15)
    {
      v15(3, a2, 0, &valuePtr);
      v15 = valuePtr;
    }

    if (v15 != v14)
    {
      goto LABEL_34;
    }

    v16 = *(a3 + 32);
    cf[0] = 0;
    if (v16)
    {
      v16(3, a3, 0, cf);
      v16 = cf[0];
    }

    if (v16 == v14)
    {
      if (*(a2 + 32))
      {
        *&valuePtr = AMCP::Implementation::get_type_marker<AudioStreamBasicDescription>();
        v17 = (*(a2 + 32))(4, a2, 0, &valuePtr);
      }

      else
      {
        v17 = 0;
      }

      if (*(a3 + 32))
      {
        *&valuePtr = AMCP::Implementation::get_type_marker<AudioStreamBasicDescription>();
        v30 = (*(a3 + 32))(4, a3, 0, &valuePtr);
      }

      else
      {
        v30 = 0;
      }

      if (*v17 != *v30 || *(v17 + 8) != *(v30 + 8) || *(v17 + 12) != *(v30 + 12) || *(v17 + 16) != *(v30 + 16) || *(v17 + 20) != *(v30 + 20) || *(v17 + 24) != *(v30 + 24) || *(v17 + 28) != *(v30 + 28))
      {
        return 0;
      }

      v19 = *(v17 + 32);
      v20 = *(v30 + 32);
    }

    else
    {
LABEL_34:
      v52 = 0;
      valuePtr = 0u;
      v51 = 0u;
      AMCP::Thing::convert_to<AudioStreamBasicDescription>(&valuePtr, a2);
      v49 = 0;
      *cf = 0u;
      v48 = 0u;
      AMCP::Thing::convert_to<AudioStreamBasicDescription>(cf, a3);
      if (*&valuePtr != *cf || *(&valuePtr + 1) != cf[1] || v51 != v48 || *(&v51 + 4) != *(&v48 + 4) || HIDWORD(v51) != HIDWORD(v48))
      {
        return 0;
      }

      v19 = v52;
      v20 = v49;
    }

    return v19 == v20;
  }

  switch(result)
  {
    case 0:
      v12 = *a2;
      *a2 = 0;
      if (!v12)
      {
LABEL_23:
        result = 0;
        *(a2 + 32) = 0;
        *a2 = 0u;
        *(a2 + 16) = 0u;
        return result;
      }

LABEL_22:
      MEMORY[0x1E12C1730]();
      goto LABEL_23;
    case 1:
      v18 = *a2;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 32) = AMCP::Implementation::Outboard_Storage<AudioStreamBasicDescription>::dispatch;
      operator new();
    case 2:
      v7 = *a2;
      *a2 = 0;
      v8 = *a3;
      *a3 = v7;
      if (v8)
      {
        MEMORY[0x1E12C1730](v8, 0x1000C400A747E1ELL);
      }

      *(a3 + 32) = AMCP::Implementation::Outboard_Storage<AudioStreamBasicDescription>::dispatch;
      v9 = *a2;
      *a2 = 0;
      if (!v9)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
  }

  return result;
}

void sub_1DE24FCBC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, const void *a15)
{
  applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(&a9);
  applesauce::CF::StringRef::~StringRef(&a15);
  mcp_applesauce::CF::Dictionary_Builder::~Dictionary_Builder((v15 - 40));
  __clang_call_terminate(a1);
}

uint64_t AMCP::Thing::convert_to<AudioStreamBasicDescription>(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 32))
  {
    goto LABEL_12;
  }

  type = AMCP::Implementation::get_type_marker<AudioStreamBasicDescription>();
  v5 = *(a2 + 32);
  v18 = 0;
  if (v5)
  {
    v5(3, a2, 0, &v18);
    v5 = v18;
  }

  if (v5 == type)
  {
    *&v16[0] = type;
    result = (*(a2 + 32))(4, a2, 0, v16);
    if (result)
    {
      v7 = *(result + 16);
      *a1 = *result;
      *(a1 + 16) = v7;
      *(a1 + 32) = *(result + 32);
      return result;
    }

LABEL_12:
    exception = __cxa_allocate_exception(8uLL);
    v10 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v10, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v15 = AMCP::Implementation::get_type_marker<AudioStreamBasicDescription>();
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  (*(a2 + 32))(6, a2, v16, &v15);
  if (!v17)
  {
    v11 = __cxa_allocate_exception(8uLL);
    v12 = std::bad_cast::bad_cast(v11);
    __cxa_throw(v12, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v15 = type;
  result = v17(4, v16, 0, &v15);
  if (!result)
  {
    v13 = __cxa_allocate_exception(8uLL);
    v14 = std::bad_cast::bad_cast(v13);
    __cxa_throw(v14, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v8 = *(result + 16);
  *a1 = *result;
  *(a1 + 16) = v8;
  *(a1 + 32) = *(result + 32);
  if (v17)
  {
    return v17(0, v16, 0, 0);
  }

  return result;
}

void sub_1DE250014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

void sub_1DE250098(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void applesauce::CF::at_or<applesauce::CF::DictionaryRef>(void *a1, const __CFArray *a2, unint64_t a3, void *a4)
{
  applesauce::CF::details::at_as<applesauce::CF::DictionaryRef>(&cf, a2, a3);
  if (v8 == 1)
  {
    v6 = cf;
    if (cf)
    {
      CFRetain(cf);
      *a1 = v6;
      CFRelease(v6);
      return;
    }

    a4 = a1;
  }

  else
  {
    *a1 = *a4;
  }

  *a4 = 0;
}

void applesauce::CF::at_or<applesauce::CF::NumberRef>(void *a1, const __CFArray *a2, unint64_t a3, void *a4)
{
  applesauce::CF::details::at_as<applesauce::CF::NumberRef>(&cf, a2, a3);
  if (v8 == 1)
  {
    v6 = cf;
    if (cf)
    {
      CFRetain(cf);
      *a1 = v6;
      CFRelease(v6);
      return;
    }

    a4 = a1;
  }

  else
  {
    *a1 = *a4;
  }

  *a4 = 0;
}

float applesauce::CF::convert_to<float,0>(const __CFNumber *a1)
{
  TypeID = CFNumberGetTypeID();
  if (TypeID == CFGetTypeID(a1))
  {
    switch(CFNumberGetType(a1))
    {
      case kCFNumberSInt8Type:
        LOBYTE(valuePtr) = 0;
        Value = CFNumberGetValue(a1, kCFNumberSInt8Type, &valuePtr);
        goto LABEL_22;
      case kCFNumberSInt16Type:
        LOWORD(valuePtr) = 0;
        v12 = CFNumberGetValue(a1, kCFNumberSInt16Type, &valuePtr);
        goto LABEL_17;
      case kCFNumberSInt32Type:
        LODWORD(valuePtr) = 0;
        v11 = CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr);
        goto LABEL_27;
      case kCFNumberSInt64Type:
        valuePtr = 0.0;
        v6 = CFNumberGetValue(a1, kCFNumberSInt64Type, &valuePtr);
        goto LABEL_25;
      case kCFNumberFloat32Type:
        LODWORD(valuePtr) = 0;
        v7 = CFNumberGetValue(a1, kCFNumberFloat32Type, &valuePtr);
        goto LABEL_9;
      case kCFNumberFloat64Type:
        valuePtr = 0.0;
        v10 = CFNumberGetValue(a1, kCFNumberFloat64Type, &valuePtr);
        goto LABEL_19;
      case kCFNumberCharType:
        LOBYTE(valuePtr) = 0;
        Value = CFNumberGetValue(a1, kCFNumberCharType, &valuePtr);
LABEL_22:
        v8 = Value == 0;
        v13 = SLOBYTE(valuePtr);
        goto LABEL_23;
      case kCFNumberShortType:
        LOWORD(valuePtr) = 0;
        v12 = CFNumberGetValue(a1, kCFNumberShortType, &valuePtr);
LABEL_17:
        v8 = v12 == 0;
        v13 = SLOWORD(valuePtr);
LABEL_23:
        v14 = v13;
        goto LABEL_28;
      case kCFNumberIntType:
        LODWORD(valuePtr) = 0;
        v11 = CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
LABEL_27:
        v8 = v11 == 0;
        v14 = SLODWORD(valuePtr);
        goto LABEL_28;
      case kCFNumberLongType:
        valuePtr = 0.0;
        v6 = CFNumberGetValue(a1, kCFNumberLongType, &valuePtr);
        goto LABEL_25;
      case kCFNumberLongLongType:
        valuePtr = 0.0;
        v6 = CFNumberGetValue(a1, kCFNumberLongLongType, &valuePtr);
        goto LABEL_25;
      case kCFNumberFloatType:
        LODWORD(valuePtr) = 0;
        v7 = CFNumberGetValue(a1, kCFNumberFloatType, &valuePtr);
LABEL_9:
        v8 = v7 == 0;
        v9 = *&valuePtr;
        goto LABEL_29;
      case kCFNumberDoubleType:
        valuePtr = 0.0;
        v10 = CFNumberGetValue(a1, kCFNumberDoubleType, &valuePtr);
        goto LABEL_19;
      case kCFNumberCFIndexType:
        valuePtr = 0.0;
        v6 = CFNumberGetValue(a1, kCFNumberCFIndexType, &valuePtr);
        goto LABEL_25;
      case kCFNumberNSIntegerType:
        valuePtr = 0.0;
        v6 = CFNumberGetValue(a1, kCFNumberNSIntegerType, &valuePtr);
LABEL_25:
        v8 = v6 == 0;
        v14 = *&valuePtr;
        goto LABEL_28;
      case kCFNumberCGFloatType:
        valuePtr = 0.0;
        v10 = CFNumberGetValue(a1, kCFNumberCGFloatType, &valuePtr);
LABEL_19:
        v8 = v10 == 0;
        v14 = valuePtr;
LABEL_28:
        v9 = v14;
LABEL_29:
        v15 = LODWORD(v9) | 0x100000000;
        if (v8)
        {
          v5 = 0;
        }

        else
        {
          v5 = v15;
        }

        if ((v5 & 0x100000000) != 0)
        {
          return *&v5;
        }

        goto LABEL_34;
      default:
        goto LABEL_34;
    }
  }

  v4 = CFBooleanGetTypeID();
  if (v4 != CFGetTypeID(a1))
  {
LABEL_34:
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::convert_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  *&v5 = CFBooleanGetValue(a1);
  return *&v5;
}

uint64_t AMCP::Implementation::In_Place_Storage<CA::ChannelLayout>::dispatch(int a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      v13 = AMCP::Implementation::get_type_marker<CA::ChannelLayout>();
      result = 0;
      *a4 = v13;
      return result;
    }

    if (a1 == 4)
    {
      if (*a4 == AMCP::Implementation::get_type_marker<CA::ChannelLayout>())
      {
        return a2;
      }

      else
      {
        return 0;
      }
    }

    if (a1 != 6)
    {
      return result;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<CA::ChannelLayout>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::DictionaryRef>())
    {
      if (*(a2 + 32))
      {
        v54[0] = AMCP::Implementation::get_type_marker<CA::ChannelLayout>();
        v11 = (*(a2 + 32))(4, a2, 0, v54);
      }

      else
      {
        v11 = 0;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<CA::ChannelLayout>())
      {
        if (v11)
        {
          v56 = 0;
          *v54 = 0u;
          v55 = 0u;
          std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>(v54, *v11, v11[1], v11[1] - *v11);
          v56 = AMCP::Implementation::In_Place_Storage<CA::ChannelLayout>::dispatch;
LABEL_64:
          AMCP::swap(v54, a3, v10);
          if (v56)
          {
            (v56)(0, v54, 0, 0);
          }

          return 0;
        }

LABEL_88:
        __assert_rtn("create_acl_from", "Thing.h", 1632, "in_value_ptr != nullptr");
      }

      if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::DictionaryRef>())
      {
        if (v11)
        {
          Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
          v60 = Mutable;
          v15 = *(*v11 + 8);
          if (v15 > (v11[1] - *v11 - 12) / 0x14uLL)
          {
LABEL_62:
            __assert_rtn("GetNumberChannelDescriptions", "CoreAudioBaseTypes.hpp", 2252, "GetAudioChannelLayout().mNumberChannelDescriptions <= (mStorage.size() - kHeaderSize) / sizeof(AudioChannelDescription)");
          }

          v16 = 0;
          v17 = -1;
          while (1)
          {
            v18 = v17 + 1;
            if (v17 + 1 >= v15)
            {
              break;
            }

            v19 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
            v54[0] = v19;
            cf = CFStringCreateWithBytes(0, "channel label", 13, 0x8000100u, 0);
            if (!cf)
            {
              exception = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(exception, "Could not construct");
              __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }

            v20 = *(*v11 + 8);
            if (v20 > (v11[1] - *v11 - 12) / 0x14uLL)
            {
              __assert_rtn("GetNumberChannelDescriptions", "CoreAudioBaseTypes.hpp", 2252, "GetAudioChannelLayout().mNumberChannelDescriptions <= (mStorage.size() - kHeaderSize) / sizeof(AudioChannelDescription)");
            }

            if (v18 >= v20)
            {
              v39 = __cxa_allocate_exception(0x10uLL);
              std::logic_error::logic_error(v39, "accessing a CA::ChannelLayout with an out-of-range index");
              v39->__vftable = (MEMORY[0x1E69E55B8] + 16);
              __cxa_throw(v39, off_1E8672F68, MEMORY[0x1E69E5280]);
            }

            LODWORD(valuePtr) = *(*v11 + v16 + 12);
            v21 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
            v58 = v21;
            if (!v21)
            {
              v38 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v38, "Could not construct");
              __cxa_throw(v38, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }

            mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(v19, cf, v21);
            CFRelease(v21);
            if (cf)
            {
              CFRelease(cf);
            }

            cf = CFStringCreateWithBytes(0, "channel flags", 13, 0x8000100u, 0);
            if (!cf)
            {
              v37 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v37, "Could not construct");
              __cxa_throw(v37, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }

            v22 = *(*v11 + 8);
            if (v22 > (v11[1] - *v11 - 12) / 0x14uLL)
            {
              __assert_rtn("GetNumberChannelDescriptions", "CoreAudioBaseTypes.hpp", 2252, "GetAudioChannelLayout().mNumberChannelDescriptions <= (mStorage.size() - kHeaderSize) / sizeof(AudioChannelDescription)");
            }

            if (v18 >= v22)
            {
              v40 = __cxa_allocate_exception(0x10uLL);
              std::logic_error::logic_error(v40, "accessing a CA::ChannelLayout with an out-of-range index");
              v40->__vftable = (MEMORY[0x1E69E55B8] + 16);
              __cxa_throw(v40, off_1E8672F68, MEMORY[0x1E69E5280]);
            }

            LODWORD(valuePtr) = *(*v11 + v16 + 16);
            v23 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
            v58 = v23;
            if (!v23)
            {
              v41 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v41, "Could not construct");
              __cxa_throw(v41, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }

            mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(v19, cf, v23);
            CFRelease(v23);
            if (cf)
            {
              CFRelease(cf);
            }

            v24 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
            cf = v24;
            v25 = *(*v11 + 8);
            if (v25 > (v11[1] - *v11 - 12) / 0x14uLL)
            {
              __assert_rtn("GetNumberChannelDescriptions", "CoreAudioBaseTypes.hpp", 2252, "GetAudioChannelLayout().mNumberChannelDescriptions <= (mStorage.size() - kHeaderSize) / sizeof(AudioChannelDescription)");
            }

            if (v18 >= v25)
            {
              v42 = __cxa_allocate_exception(0x10uLL);
              std::logic_error::logic_error(v42, "accessing a CA::ChannelLayout with an out-of-range index");
              v42->__vftable = (MEMORY[0x1E69E55B8] + 16);
              __cxa_throw(v42, off_1E8672F68, MEMORY[0x1E69E5280]);
            }

            LODWORD(valuePtr) = *(*v11 + v16 + 20);
            v26 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
            v58 = v26;
            if (!v26)
            {
              v43 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v43, "Could not construct");
              __cxa_throw(v43, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }

            mcp_applesauce::CF::Array_Builder::append_value<applesauce::CF::NumberRef>(v24, v26);
            CFRelease(v26);
            v27 = *(*v11 + 8);
            if (v27 > (v11[1] - *v11 - 12) / 0x14uLL)
            {
              __assert_rtn("GetNumberChannelDescriptions", "CoreAudioBaseTypes.hpp", 2252, "GetAudioChannelLayout().mNumberChannelDescriptions <= (mStorage.size() - kHeaderSize) / sizeof(AudioChannelDescription)");
            }

            if (v18 >= v27)
            {
              v45 = __cxa_allocate_exception(0x10uLL);
              std::logic_error::logic_error(v45, "accessing a CA::ChannelLayout with an out-of-range index");
              v45->__vftable = (MEMORY[0x1E69E55B8] + 16);
              __cxa_throw(v45, off_1E8672F68, MEMORY[0x1E69E5280]);
            }

            LODWORD(valuePtr) = *(*v11 + v16 + 24);
            v28 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
            v58 = v28;
            if (!v28)
            {
              v44 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v44, "Could not construct");
              __cxa_throw(v44, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }

            mcp_applesauce::CF::Array_Builder::append_value<applesauce::CF::NumberRef>(v24, v28);
            CFRelease(v28);
            v29 = *(*v11 + 8);
            if (v29 > (v11[1] - *v11 - 12) / 0x14uLL)
            {
              __assert_rtn("GetNumberChannelDescriptions", "CoreAudioBaseTypes.hpp", 2252, "GetAudioChannelLayout().mNumberChannelDescriptions <= (mStorage.size() - kHeaderSize) / sizeof(AudioChannelDescription)");
            }

            if (++v17 >= v29)
            {
              v47 = __cxa_allocate_exception(0x10uLL);
              std::logic_error::logic_error(v47, "accessing a CA::ChannelLayout with an out-of-range index");
              v47->__vftable = (MEMORY[0x1E69E55B8] + 16);
              __cxa_throw(v47, off_1E8672F68, MEMORY[0x1E69E5280]);
            }

            LODWORD(valuePtr) = *(*v11 + v16 + 28);
            v30 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
            v58 = v30;
            if (!v30)
            {
              v48 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v48, "Could not construct");
              __cxa_throw(v48, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }

            mcp_applesauce::CF::Array_Builder::append_value<applesauce::CF::NumberRef>(v24, v30);
            CFRelease(v30);
            v31 = CFStringCreateWithBytes(0, "coordinates", 11, 0x8000100u, 0);
            v58 = v31;
            if (!v31)
            {
              v46 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v46, "Could not construct");
              __cxa_throw(v46, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }

            mcp_applesauce::CF::Array_Builder::copy_array(&valuePtr, v24);
            mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::ArrayRef>(v19, v31, valuePtr);
            if (valuePtr)
            {
              CFRelease(valuePtr);
            }

            CFRelease(v31);
            mcp_applesauce::CF::Dictionary_Builder::copy_dictionary(&v58, v19);
            mcp_applesauce::CF::Array_Builder::append_value<applesauce::CF::DictionaryRef>(Mutable, v58);
            if (v58)
            {
              CFRelease(v58);
            }

            if (v24)
            {
              CFRelease(v24);
            }

            if (v19)
            {
              CFRelease(v19);
            }

            v16 += 20;
            v15 = *(*v11 + 8);
            if (v15 > (v11[1] - *v11 - 12) / 0x14uLL)
            {
              goto LABEL_62;
            }
          }

          v32 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
          cf = v32;
          v54[0] = CFStringCreateWithBytes(0, "channel layout tag", 18, 0x8000100u, 0);
          if (!v54[0])
          {
            v49 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v49, "Could not construct");
            __cxa_throw(v49, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          LODWORD(valuePtr) = **v11;
          v33 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
          v58 = v33;
          if (!v33)
          {
            v50 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v50, "Could not construct");
            __cxa_throw(v50, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(v32, v54[0], v33);
          CFRelease(v33);
          if (v54[0])
          {
            CFRelease(v54[0]);
          }

          v54[0] = CFStringCreateWithBytes(0, "channel bitmap", 14, 0x8000100u, 0);
          if (!v54[0])
          {
            v51 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v51, "Could not construct");
            __cxa_throw(v51, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          LODWORD(valuePtr) = *(*v11 + 4);
          v34 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
          v58 = v34;
          if (!v34)
          {
            v52 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v52, "Could not construct");
            __cxa_throw(v52, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(v32, v54[0], v34);
          CFRelease(v34);
          if (v54[0])
          {
            CFRelease(v54[0]);
          }

          v35 = CFStringCreateWithBytes(0, "channel descriptions", 20, 0x8000100u, 0);
          v54[0] = v35;
          if (!v35)
          {
            v53 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v53, "Could not construct");
            __cxa_throw(v53, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          mcp_applesauce::CF::Array_Builder::copy_array(&v58, Mutable);
          mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::ArrayRef>(v32, v35, v58);
          if (v58)
          {
            CFRelease(v58);
          }

          CFRelease(v35);
          mcp_applesauce::CF::Dictionary_Builder::copy_dictionary(v54, v32);
          v54[1] = 0;
          v55 = 0uLL;
          v56 = AMCP::Implementation::In_Place_Storage<applesauce::CF::DictionaryRef>::dispatch;
          if (v32)
          {
            CFRelease(v32);
          }

          if (Mutable)
          {
            CFRelease(Mutable);
          }

          goto LABEL_64;
        }

        goto LABEL_88;
      }
    }

    v56 = 0;
    *v54 = 0u;
    v55 = 0u;
    goto LABEL_64;
  }

  switch(a1)
  {
    case 0:
      v12 = *a2;
      if (*a2)
      {
        *(a2 + 8) = v12;
        operator delete(v12);
      }

      result = 0;
      *(a2 + 32) = 0;
      v8 = 0uLL;
      goto LABEL_16;
    case 1:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>(a3, *a2, *(a2 + 8), *(a2 + 8) - *a2);
      result = 0;
      *(a3 + 32) = AMCP::Implementation::In_Place_Storage<CA::ChannelLayout>::dispatch;
      break;
    case 2:
      result = 0;
      v8 = 0uLL;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *a3 = *a2;
      *(a3 + 16) = *(a2 + 16);
      *(a3 + 32) = AMCP::Implementation::In_Place_Storage<CA::ChannelLayout>::dispatch;
      *(a2 + 32) = 0;
LABEL_16:
      *a2 = v8;
      *(a2 + 16) = v8;
      break;
  }

  return result;
}

void sub_1DE2511AC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, const void *a17, const void *a18)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a9);
  mcp_applesauce::CF::Dictionary_Builder::~Dictionary_Builder(&a17);
  mcp_applesauce::CF::Array_Builder::~Array_Builder(&a18);
  __clang_call_terminate(a1);
}

void mcp_applesauce::CF::Array_Builder::append_value<applesauce::CF::NumberRef>(__CFArray *a1, const void *a2)
{
  if (a1)
  {
    CFArrayAppendValue(a1, a2);
  }
}

void *mcp_applesauce::CF::Array_Builder::copy_array(void *this, const __CFArray *a2)
{
  v2 = this;
  if (a2)
  {
    this = CFArrayCreateCopy(0, a2);
    *v2 = this;
    if (this)
    {
      v3 = CFGetTypeID(this);
      this = CFArrayGetTypeID();
      if (v3 != this)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }
    }
  }

  else
  {
    *this = 0;
  }

  return this;
}

void sub_1DE251494(void *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFArray const*>::~ObjectRef(v1);
  __clang_call_terminate(a1);
}

void applesauce::CF::details::at_as<applesauce::CF::NumberRef>(_BYTE *a1, CFArrayRef theArray, unint64_t a3)
{
  if (!theArray)
  {
    goto LABEL_7;
  }

  if (CFArrayGetCount(theArray) <= a3)
  {
    goto LABEL_7;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(theArray, a3);
  v7 = ValueAtIndex;
  if (!ValueAtIndex)
  {
    goto LABEL_7;
  }

  CFRetain(ValueAtIndex);
  v8 = CFGetTypeID(v7);
  if (v8 != CFNumberGetTypeID())
  {
    CFRelease(v7);
LABEL_7:
    v9 = 0;
    *a1 = 0;
    goto LABEL_8;
  }

  *a1 = v7;
  v9 = 1;
LABEL_8:
  a1[8] = v9;
}

void applesauce::CF::details::at_as<applesauce::CF::DictionaryRef>(_BYTE *a1, CFArrayRef theArray, unint64_t a3)
{
  if (!theArray)
  {
    goto LABEL_7;
  }

  if (CFArrayGetCount(theArray) <= a3)
  {
    goto LABEL_7;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(theArray, a3);
  v7 = ValueAtIndex;
  if (!ValueAtIndex)
  {
    goto LABEL_7;
  }

  CFRetain(ValueAtIndex);
  v8 = CFGetTypeID(v7);
  if (v8 != CFDictionaryGetTypeID())
  {
    CFRelease(v7);
LABEL_7:
    v9 = 0;
    *a1 = 0;
    goto LABEL_8;
  }

  *a1 = v7;
  v9 = 1;
LABEL_8:
  a1[8] = v9;
}

uint64_t AMCP::Implementation::get_type_marker<AudioValueRange>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[453];
}

uint64_t AMCP::Implementation::get_type_marker<CA::ValueRange>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[455];
}

uint64_t AMCP::Implementation::In_Place_Storage<CA::ValueRange>::dispatch(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (result > 2)
  {
    if (result <= 4)
    {
      if (result == 3)
      {
        v10 = AMCP::Implementation::get_type_marker<CA::ValueRange>();
        result = 0;
        *a4 = v10;
      }

      else if (*a4 == AMCP::Implementation::get_type_marker<CA::ValueRange>())
      {
        return a2;
      }

      else
      {
        return 0;
      }

      return result;
    }

    if (result == 5)
    {
      v11 = AMCP::Implementation::get_type_marker<CA::ValueRange>();
      v12 = *(a2 + 32);
      *&v30 = 0;
      if (v12)
      {
        v12(3, a2, 0, &v30);
        v12 = v30;
      }

      if (v12 != v11)
      {
        goto LABEL_30;
      }

      v13 = *(a3 + 32);
      v35 = 0;
      if (v13)
      {
        (v13)(3, a3, 0, &v35);
        v13 = v35;
      }

      if (v13 == v11)
      {
        if (*(a2 + 32))
        {
          *&v30 = AMCP::Implementation::get_type_marker<CA::ValueRange>();
          v14 = (*(a2 + 32))(4, a2, 0, &v30);
        }

        else
        {
          v14 = 0;
        }

        *&v30 = AMCP::Implementation::get_type_marker<CA::ValueRange>();
        v25 = (*(a3 + 32))(4, a3, 0, &v30);
        if (!CA::operator==(*v14, v14[1], *v25, v25[1]))
        {
          return 0;
        }
      }

      else
      {
LABEL_30:
        v15 = AMCP::Thing::convert_to<CA::ValueRange>(a2);
        v17 = v16;
        v18 = AMCP::Thing::convert_to<CA::ValueRange>(a3);
        if (v17 < v18 || v15 < v18 && v17 <= v19)
        {
          return 0;
        }

        if (v15 < v18 && v17 > v19)
        {
          return 0;
        }

        if (v17 != v19 || v15 != v18)
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

    if (*a4 == AMCP::Implementation::get_type_marker<AudioValueRange>() || *a4 == AMCP::Implementation::get_type_marker<CA::ValueRange>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::DictionaryRef>())
    {
      if (*(a2 + 32))
      {
        *&v30 = AMCP::Implementation::get_type_marker<CA::ValueRange>();
        v9 = (*(a2 + 32))(4, a2, 0, &v30);
      }

      else
      {
        v9 = 0;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<AudioValueRange>())
      {
        if (v9)
        {
          v30 = *v9;
          v31 = 0uLL;
          v21 = AMCP::Implementation::In_Place_Storage<AudioValueRange>::dispatch;
LABEL_48:
          v32 = v21;
          goto LABEL_62;
        }

        goto LABEL_69;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<CA::ValueRange>())
      {
        if (v9)
        {
          v31 = 0uLL;
          v30 = *v9;
          v21 = AMCP::Implementation::In_Place_Storage<CA::ValueRange>::dispatch;
          goto LABEL_48;
        }

LABEL_69:
        __assert_rtn("create_value_range_from", "Thing.h", 1563, "in_value_ptr != nullptr");
      }

      if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::DictionaryRef>())
      {
        if (v9)
        {
          Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
          v35 = Mutable;
          cf = CFStringCreateWithBytes(0, "float minimum", 13, 0x8000100u, 0);
          if (!cf)
          {
            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Could not construct");
            __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          *&v30 = *v9;
          v23 = CFNumberCreate(0, kCFNumberDoubleType, &v30);
          v33 = v23;
          if (!v23)
          {
            v27 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v27, "Could not construct");
            __cxa_throw(v27, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(Mutable, cf, v23);
          CFRelease(v23);
          if (cf)
          {
            CFRelease(cf);
          }

          cf = CFStringCreateWithBytes(0, "float maximum", 13, 0x8000100u, 0);
          if (!cf)
          {
            v28 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v28, "Could not construct");
            __cxa_throw(v28, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          *&v30 = *(v9 + 8);
          v24 = CFNumberCreate(0, kCFNumberDoubleType, &v30);
          v33 = v24;
          if (!v24)
          {
            v29 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v29, "Could not construct");
            __cxa_throw(v29, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(Mutable, cf, v24);
          CFRelease(v24);
          if (cf)
          {
            CFRelease(cf);
          }

          mcp_applesauce::CF::Dictionary_Builder::copy_dictionary(&v30, Mutable);
          *(&v30 + 1) = 0;
          v31 = 0uLL;
          v32 = AMCP::Implementation::In_Place_Storage<applesauce::CF::DictionaryRef>::dispatch;
          if (Mutable)
          {
            CFRelease(Mutable);
          }

          goto LABEL_62;
        }

        goto LABEL_69;
      }
    }

    v32 = 0;
    v30 = 0u;
    v31 = 0u;
LABEL_62:
    AMCP::swap(&v30, a3, v8);
    if (v32)
    {
      (v32)(0, &v30, 0, 0);
    }

    return 0;
  }

  switch(result)
  {
    case 0:
      result = 0;
      *(a2 + 32) = 0;
      v7 = 0uLL;
      goto LABEL_19;
    case 1:
      result = 0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *a3 = *a2;
      *(a3 + 32) = AMCP::Implementation::In_Place_Storage<CA::ValueRange>::dispatch;
      return result;
    case 2:
      result = 0;
      v7 = 0uLL;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *a3 = *a2;
      *(a3 + 32) = AMCP::Implementation::In_Place_Storage<CA::ValueRange>::dispatch;
      *(a2 + 32) = 0;
LABEL_19:
      *a2 = v7;
      *(a2 + 16) = v7;
      break;
  }

  return result;
}

void sub_1DE251C94(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va2, a6);
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v9 = va_arg(va2, const void *);
  applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(va);
  applesauce::CF::StringRef::~StringRef(va1);
  mcp_applesauce::CF::Dictionary_Builder::~Dictionary_Builder(va2);
  __clang_call_terminate(a1);
}

double AMCP::Thing::convert_to<CA::ValueRange>(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    goto LABEL_12;
  }

  v2 = AMCP::Implementation::get_type_marker<CA::ValueRange>();
  v3 = *(a1 + 32);
  v19 = 0;
  if (v3)
  {
    v3(3, a1, 0, &v19);
    v3 = v19;
  }

  if (v3 == v2)
  {
    *&v17[0] = v2;
    v4 = (*(a1 + 32))(4, a1, 0, v17);
    if (v4)
    {
      v5 = *v4;
      v6 = *(v4 + 1);
      return v5;
    }

LABEL_12:
    exception = __cxa_allocate_exception(8uLL);
    v11 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v11, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v16 = AMCP::Implementation::get_type_marker<CA::ValueRange>();
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  (*(a1 + 32))(6, a1, v17, &v16);
  if (!v18)
  {
    v12 = __cxa_allocate_exception(8uLL);
    v13 = std::bad_cast::bad_cast(v12);
    __cxa_throw(v13, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v16 = v2;
  v7 = v18(4, v17, 0, &v16);
  if (!v7)
  {
    v14 = __cxa_allocate_exception(8uLL);
    v15 = std::bad_cast::bad_cast(v14);
    __cxa_throw(v15, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v5 = *v7;
  v8 = *(v7 + 1);
  if (v18)
  {
    v18(0, v17, 0, 0);
  }

  return v5;
}

void sub_1DE251EE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

uint64_t AMCP::Implementation::In_Place_Storage<AudioValueRange>::dispatch(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (result > 2)
  {
    if (result <= 4)
    {
      if (result == 3)
      {
        type = AMCP::Implementation::get_type_marker<AudioValueRange>();
        result = 0;
        *a4 = type;
      }

      else if (*a4 == AMCP::Implementation::get_type_marker<AudioValueRange>())
      {
        return a2;
      }

      else
      {
        return 0;
      }

      return result;
    }

    if (result == 5)
    {
      v11 = AMCP::Implementation::get_type_marker<AudioValueRange>();
      v12 = *(a2 + 32);
      *&v35 = 0;
      if (v12)
      {
        v12(3, a2, 0, &v35);
        v12 = v35;
      }

      if (v12 != v11)
      {
        goto LABEL_30;
      }

      v13 = *(a3 + 32);
      v40 = 0;
      if (v13)
      {
        (v13)(3, a3, 0, &v40);
        v13 = v40;
      }

      if (v13 == v11)
      {
        if (*(a2 + 32))
        {
          *&v35 = AMCP::Implementation::get_type_marker<AudioValueRange>();
          v14 = (*(a2 + 32))(4, a2, 0, &v35);
        }

        else
        {
          v14 = 0;
        }

        if (*(a3 + 32))
        {
          *&v35 = AMCP::Implementation::get_type_marker<AudioValueRange>();
          v25 = (*(a3 + 32))(4, a3, 0, &v35);
        }

        else
        {
          v25 = 0;
        }

        v26 = v14[1];
        v27 = *v25;
        if (v26 < *v25)
        {
          return 0;
        }

        v28 = *v14;
        v29 = v25[1];
        if (*v14 < v27 && v26 <= v29)
        {
          return 0;
        }

        if (v28 < v27 && v26 > v29)
        {
          return 0;
        }

        if (v26 != v29 || v28 != v27)
        {
          return 0;
        }
      }

      else
      {
LABEL_30:
        v15 = AMCP::Thing::convert_to<AudioValueRange>(a2);
        v17 = v16;
        v18 = AMCP::Thing::convert_to<AudioValueRange>(a3);
        if (v17 < v18 || v15 < v18 && v17 <= v19)
        {
          return 0;
        }

        if (v15 < v18 && v17 > v19)
        {
          return 0;
        }

        if (v17 != v19 || v15 != v18)
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

    if (*a4 == AMCP::Implementation::get_type_marker<AudioValueRange>() || *a4 == AMCP::Implementation::get_type_marker<CA::ValueRange>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::DictionaryRef>())
    {
      if (*(a2 + 32))
      {
        *&v35 = AMCP::Implementation::get_type_marker<AudioValueRange>();
        v9 = (*(a2 + 32))(4, a2, 0, &v35);
      }

      else
      {
        v9 = 0;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<AudioValueRange>())
      {
        if (v9)
        {
          v36 = 0uLL;
          v35 = *v9;
          v21 = AMCP::Implementation::In_Place_Storage<AudioValueRange>::dispatch;
LABEL_48:
          v37 = v21;
          goto LABEL_62;
        }

        goto LABEL_81;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<CA::ValueRange>())
      {
        if (v9)
        {
          v35 = *v9;
          v36 = 0uLL;
          v21 = AMCP::Implementation::In_Place_Storage<CA::ValueRange>::dispatch;
          goto LABEL_48;
        }

LABEL_81:
        __assert_rtn("create_value_range_from", "Thing.h", 1563, "in_value_ptr != nullptr");
      }

      if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::DictionaryRef>())
      {
        if (v9)
        {
          Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
          v40 = Mutable;
          cf = CFStringCreateWithBytes(0, "float minimum", 13, 0x8000100u, 0);
          if (!cf)
          {
            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Could not construct");
            __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          *&v35 = *v9;
          v23 = CFNumberCreate(0, kCFNumberDoubleType, &v35);
          v38 = v23;
          if (!v23)
          {
            v32 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v32, "Could not construct");
            __cxa_throw(v32, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(Mutable, cf, v23);
          CFRelease(v23);
          if (cf)
          {
            CFRelease(cf);
          }

          cf = CFStringCreateWithBytes(0, "float maximum", 13, 0x8000100u, 0);
          if (!cf)
          {
            v33 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v33, "Could not construct");
            __cxa_throw(v33, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          *&v35 = *(v9 + 8);
          v24 = CFNumberCreate(0, kCFNumberDoubleType, &v35);
          v38 = v24;
          if (!v24)
          {
            v34 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v34, "Could not construct");
            __cxa_throw(v34, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(Mutable, cf, v24);
          CFRelease(v24);
          if (cf)
          {
            CFRelease(cf);
          }

          mcp_applesauce::CF::Dictionary_Builder::copy_dictionary(&v35, Mutable);
          *(&v35 + 1) = 0;
          v36 = 0uLL;
          v37 = AMCP::Implementation::In_Place_Storage<applesauce::CF::DictionaryRef>::dispatch;
          if (Mutable)
          {
            CFRelease(Mutable);
          }

          goto LABEL_62;
        }

        goto LABEL_81;
      }
    }

    v37 = 0;
    v35 = 0u;
    v36 = 0u;
LABEL_62:
    AMCP::swap(&v35, a3, v8);
    if (v37)
    {
      (v37)(0, &v35, 0, 0);
    }

    return 0;
  }

  switch(result)
  {
    case 0:
      result = 0;
      *(a2 + 32) = 0;
      v7 = 0uLL;
      goto LABEL_19;
    case 1:
      result = 0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *a3 = *a2;
      *(a3 + 32) = AMCP::Implementation::In_Place_Storage<AudioValueRange>::dispatch;
      return result;
    case 2:
      result = 0;
      v7 = 0uLL;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *a3 = *a2;
      *(a3 + 32) = AMCP::Implementation::In_Place_Storage<AudioValueRange>::dispatch;
      *(a2 + 32) = 0;
LABEL_19:
      *a2 = v7;
      *(a2 + 16) = v7;
      break;
  }

  return result;
}

void sub_1DE2524E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va2, a6);
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v9 = va_arg(va2, const void *);
  applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(va);
  applesauce::CF::StringRef::~StringRef(va1);
  mcp_applesauce::CF::Dictionary_Builder::~Dictionary_Builder(va2);
  __clang_call_terminate(a1);
}

double AMCP::Thing::convert_to<AudioValueRange>(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    goto LABEL_12;
  }

  type = AMCP::Implementation::get_type_marker<AudioValueRange>();
  v3 = *(a1 + 32);
  v19 = 0;
  if (v3)
  {
    v3(3, a1, 0, &v19);
    v3 = v19;
  }

  if (v3 == type)
  {
    *&v17[0] = type;
    v4 = (*(a1 + 32))(4, a1, 0, v17);
    if (v4)
    {
      v5 = *v4;
      v6 = *(v4 + 1);
      return v5;
    }

LABEL_12:
    exception = __cxa_allocate_exception(8uLL);
    v11 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v11, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v16 = AMCP::Implementation::get_type_marker<AudioValueRange>();
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  (*(a1 + 32))(6, a1, v17, &v16);
  if (!v18)
  {
    v12 = __cxa_allocate_exception(8uLL);
    v13 = std::bad_cast::bad_cast(v12);
    __cxa_throw(v13, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v16 = type;
  v7 = v18(4, v17, 0, &v16);
  if (!v7)
  {
    v14 = __cxa_allocate_exception(8uLL);
    v15 = std::bad_cast::bad_cast(v14);
    __cxa_throw(v15, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v5 = *v7;
  v8 = *(v7 + 1);
  if (v18)
  {
    v18(0, v17, 0, 0);
  }

  return v5;
}

void sub_1DE252738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

uint64_t AMCP::Implementation::get_type_marker<std::tuple<unsigned int,unsigned int>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[451];
}

uint64_t AMCP::Implementation::In_Place_Storage<std::tuple<unsigned int,unsigned int>>::dispatch(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (result > 2)
  {
    if (result <= 4)
    {
      if (result == 3)
      {
        v10 = AMCP::Implementation::get_type_marker<std::tuple<unsigned int,unsigned int>>();
        result = 0;
        *a4 = v10;
      }

      else if (*a4 == AMCP::Implementation::get_type_marker<std::tuple<unsigned int,unsigned int>>())
      {
        return a2;
      }

      else
      {
        return 0;
      }

      return result;
    }

    if (result == 5)
    {
      v11 = AMCP::Implementation::get_type_marker<std::tuple<unsigned int,unsigned int>>();
      v12 = *(a2 + 32);
      cf[0] = 0;
      if (v12)
      {
        v12(3, a2, 0, cf);
        v12 = cf[0];
      }

      if (v12 != v11)
      {
        goto LABEL_29;
      }

      v13 = *(a3 + 32);
      v29 = 0;
      if (v13)
      {
        (v13)(3, a3, 0, &v29);
        v13 = v29;
      }

      if (v13 == v11)
      {
        if (*(a2 + 32))
        {
          cf[0] = AMCP::Implementation::get_type_marker<std::tuple<unsigned int,unsigned int>>();
          v14 = (*(a2 + 32))(4, a2, 0, cf);
        }

        else
        {
          v14 = 0;
        }

        cf[0] = AMCP::Implementation::get_type_marker<std::tuple<unsigned int,unsigned int>>();
        v19 = (*(a3 + 32))(4, a3, 0, cf);
        if (v14[1] != v19[1] || *v14 != *v19)
        {
          return 0;
        }
      }

      else
      {
LABEL_29:
        v15 = AMCP::Thing::convert_to<std::tuple<unsigned int,unsigned int>>(a2);
        if (v15 != AMCP::Thing::convert_to<std::tuple<unsigned int,unsigned int>>(a3))
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

    if (*a4 == AMCP::Implementation::get_type_marker<std::tuple<unsigned int,unsigned int>>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::DictionaryRef>())
    {
      if (*(a2 + 32))
      {
        cf[0] = AMCP::Implementation::get_type_marker<std::tuple<unsigned int,unsigned int>>();
        v9 = (*(a2 + 32))(4, a2, 0, cf);
      }

      else
      {
        v9 = 0;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::tuple<unsigned int,unsigned int>>())
      {
        if (v9)
        {
          cf[1] = 0;
          v26 = 0uLL;
          cf[0] = *v9;
          v27 = AMCP::Implementation::In_Place_Storage<std::tuple<unsigned int,unsigned int>>::dispatch;
          goto LABEL_48;
        }

LABEL_59:
        __assert_rtn("create_min_max_u32_from", "Thing.h", 1502, "in_value_ptr != nullptr");
      }

      if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::DictionaryRef>())
      {
        if (v9)
        {
          Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
          v29 = Mutable;
          cf[0] = CFStringCreateWithBytes(0, "u32 minimum", 11, 0x8000100u, 0);
          if (!cf[0])
          {
            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Could not construct");
            __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          valuePtr = *v9;
          v17 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
          v28 = v17;
          if (!v17)
          {
            v22 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v22, "Could not construct");
            __cxa_throw(v22, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(Mutable, cf[0], v17);
          CFRelease(v17);
          if (cf[0])
          {
            CFRelease(cf[0]);
          }

          cf[0] = CFStringCreateWithBytes(0, "u32 maximum", 11, 0x8000100u, 0);
          if (!cf[0])
          {
            v23 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v23, "Could not construct");
            __cxa_throw(v23, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          valuePtr = *(v9 + 4);
          v18 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
          v28 = v18;
          if (!v18)
          {
            v24 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v24, "Could not construct");
            __cxa_throw(v24, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(Mutable, cf[0], v18);
          CFRelease(v18);
          if (cf[0])
          {
            CFRelease(cf[0]);
          }

          mcp_applesauce::CF::Dictionary_Builder::copy_dictionary(cf, Mutable);
          cf[1] = 0;
          v26 = 0uLL;
          v27 = AMCP::Implementation::In_Place_Storage<applesauce::CF::DictionaryRef>::dispatch;
          if (Mutable)
          {
            CFRelease(Mutable);
          }

          goto LABEL_48;
        }

        goto LABEL_59;
      }
    }

    v27 = 0;
    *cf = 0u;
    v26 = 0u;
LABEL_48:
    AMCP::swap(cf, a3, v8);
    if (v27)
    {
      (v27)(0, cf, 0, 0);
    }

    return 0;
  }

  switch(result)
  {
    case 0:
      result = 0;
      *(a2 + 32) = 0;
      v7 = 0uLL;
      goto LABEL_18;
    case 1:
      result = 0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *a3 = *a2;
      *(a3 + 32) = AMCP::Implementation::In_Place_Storage<std::tuple<unsigned int,unsigned int>>::dispatch;
      return result;
    case 2:
      result = 0;
      v7 = 0uLL;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *a3 = *a2;
      *(a3 + 32) = AMCP::Implementation::In_Place_Storage<std::tuple<unsigned int,unsigned int>>::dispatch;
      *(a2 + 32) = 0;
LABEL_18:
      *a2 = v7;
      *(a2 + 16) = v7;
      break;
  }

  return result;
}

void sub_1DE252CE4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, const void *a14, const void *a15)
{
  applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(&a14);
  applesauce::CF::StringRef::~StringRef(&a9);
  mcp_applesauce::CF::Dictionary_Builder::~Dictionary_Builder(&a15);
  __clang_call_terminate(a1);
}

unint64_t AMCP::Thing::convert_to<std::tuple<unsigned int,unsigned int>>(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    goto LABEL_12;
  }

  v2 = AMCP::Implementation::get_type_marker<std::tuple<unsigned int,unsigned int>>();
  v3 = *(a1 + 32);
  v18 = 0;
  if (v3)
  {
    v3(3, a1, 0, &v18);
    v3 = v18;
  }

  if (v3 == v2)
  {
    *&v16[0] = v2;
    v4 = (*(a1 + 32))(4, a1, 0, v16);
    if (v4)
    {
      v6 = *v4;
      v5 = v4[1];
      return v6 | (v5 << 32);
    }

LABEL_12:
    exception = __cxa_allocate_exception(8uLL);
    v10 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v10, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v15 = AMCP::Implementation::get_type_marker<std::tuple<unsigned int,unsigned int>>();
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  (*(a1 + 32))(6, a1, v16, &v15);
  if (!v17)
  {
    v11 = __cxa_allocate_exception(8uLL);
    v12 = std::bad_cast::bad_cast(v11);
    __cxa_throw(v12, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v15 = v2;
  v7 = v17(4, v16, 0, &v15);
  if (!v7)
  {
    v13 = __cxa_allocate_exception(8uLL);
    v14 = std::bad_cast::bad_cast(v13);
    __cxa_throw(v14, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v6 = *v7;
  v5 = v7[1];
  if (v17)
  {
    v17(0, v16, 0, 0);
  }

  return v6 | (v5 << 32);
}

void sub_1DE252F2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

uint64_t AMCP::Implementation::get_type_marker<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[449];
}

void applesauce::CF::details::find_at_key_or_optional<applesauce::CF::StringRef,applesauce::CF::StringRef>(_BYTE *a1, CFDictionaryRef theDict, const void *a3)
{
  v4 = applesauce::CF::details::at_key<applesauce::CF::StringRef>(theDict, a3);
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  CFRetain(v4);
  v6 = CFGetTypeID(v5);
  if (v6 != CFStringGetTypeID())
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

uint64_t std::optional<applesauce::CF::StringRef>::~optional(uint64_t a1)
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

uint64_t std::optional<applesauce::CF::NumberRef>::~optional(uint64_t a1)
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

BOOL AMCP::Implementation::In_Place_Storage<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>::dispatch(_BOOL8 result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (result <= 2)
  {
    if (result)
    {
      if (result)
      {
        *a3 = 0u;
        *(a3 + 16) = 0u;
        *a3 = *a2;
        *(a3 + 4) = *(a2 + 4);
        std::__tuple_leaf<2ul,applesauce::CF::StringRef,false>::__tuple_leaf[abi:ne200100]((a3 + 8), *(a2 + 8));
        result = 0;
        *(a3 + 32) = AMCP::Implementation::In_Place_Storage<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>::dispatch;
        return result;
      }

      if (result != 2)
      {
        return result;
      }

      *a3 = 0u;
      *(a3 + 16) = 0u;
      *a3 = *a2;
      *(a3 + 4) = *(a2 + 4);
      *(a3 + 8) = *(a2 + 8);
      *(a2 + 8) = 0;
      *(a3 + 32) = AMCP::Implementation::In_Place_Storage<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>::dispatch;
    }

    AMCP::Implementation::In_Place_Storage<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>::destruct(a2);
    return 0;
  }

  if (result <= 4)
  {
    if (result == 3)
    {
      v9 = AMCP::Implementation::get_type_marker<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>();
      result = 0;
      *a4 = v9;
    }

    else if (*a4 == AMCP::Implementation::get_type_marker<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>())
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

    if (*a4 == AMCP::Implementation::get_type_marker<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::DictionaryRef>())
    {
      if (*(a2 + 32))
      {
        v25[0] = AMCP::Implementation::get_type_marker<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>();
        v8 = (*(a2 + 32))(4, a2, 0, v25);
      }

      else
      {
        v8 = 0;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>())
      {
        if (v8)
        {
          memset(&v25[1], 0, 32);
          v25[0] = *v8;
          std::__tuple_leaf<2ul,applesauce::CF::StringRef,false>::__tuple_leaf[abi:ne200100](&v25[1], *(v8 + 8));
          v25[4] = AMCP::Implementation::In_Place_Storage<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>::dispatch;
          goto LABEL_54;
        }

LABEL_65:
        __assert_rtn("create_selector_item_from", "Thing.h", 1366, "in_value_ptr != nullptr");
      }

      if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::DictionaryRef>())
      {
        if (v8)
        {
          Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
          v26 = Mutable;
          v25[0] = CFStringCreateWithBytes(0, "item id", 7, 0x8000100u, 0);
          if (!v25[0])
          {
            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Could not construct");
            __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          valuePtr = *v8;
          v16 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
          v28 = v16;
          if (!v16)
          {
            v21 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v21, "Could not construct");
            __cxa_throw(v21, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(Mutable, v25[0], v16);
          CFRelease(v16);
          if (v25[0])
          {
            CFRelease(v25[0]);
          }

          v25[0] = CFStringCreateWithBytes(0, "kind", 4, 0x8000100u, 0);
          if (!v25[0])
          {
            v22 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v22, "Could not construct");
            __cxa_throw(v22, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          valuePtr = *(v8 + 4);
          v17 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
          v28 = v17;
          if (!v17)
          {
            v23 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v23, "Could not construct");
            __cxa_throw(v23, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(Mutable, v25[0], v17);
          CFRelease(v17);
          if (v25[0])
          {
            CFRelease(v25[0]);
          }

          v18 = CFStringCreateWithBytes(0, "name", 4, 0x8000100u, 0);
          v25[0] = v18;
          if (!v18)
          {
            v24 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v24, "Could not construct");
            __cxa_throw(v24, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::StringRef>(Mutable, v18, *(v8 + 8));
          CFRelease(v18);
          mcp_applesauce::CF::Dictionary_Builder::copy_dictionary(v25, Mutable);
          memset(&v25[1], 0, 24);
          v25[4] = AMCP::Implementation::In_Place_Storage<applesauce::CF::DictionaryRef>::dispatch;
          if (Mutable)
          {
            CFRelease(Mutable);
          }

          goto LABEL_54;
        }

        goto LABEL_65;
      }
    }

    memset(v25, 0, 40);
LABEL_54:
    AMCP::swap(v25, a3, v7);
    if (v25[4])
    {
      (v25[4])(0, v25, 0, 0);
    }

    return 0;
  }

  v10 = AMCP::Implementation::get_type_marker<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>();
  v11 = *(a2 + 32);
  v25[0] = 0;
  if (v11)
  {
    v11(3, a2, 0, v25);
    v11 = v25[0];
  }

  if (v11 != v10)
  {
    goto LABEL_28;
  }

  v12 = *(a3 + 32);
  v26 = 0;
  if (v12)
  {
    (v12)(3, a3, 0, &v26);
    v12 = v26;
  }

  if (v12 != v10)
  {
LABEL_28:
    AMCP::Thing::convert_to<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>(v25, a2);
    AMCP::Thing::convert_to<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>(&v26, a3);
    v14 = 0;
    if (v25[0] == v26)
    {
      v14 = applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(v25[1], &cf) == kCFCompareEqualTo;
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v25[1])
    {
      CFRelease(v25[1]);
    }

    return v14;
  }

  if (*(a2 + 32))
  {
    v25[0] = AMCP::Implementation::get_type_marker<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>();
    v13 = (*(a2 + 32))(4, a2, 0, v25);
  }

  else
  {
    v13 = 0;
  }

  v19 = *(a3 + 32);
  if (v19)
  {
    v25[0] = AMCP::Implementation::get_type_marker<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>();
    v19 = (*(a3 + 32))(4, a3, 0, v25);
  }

  result = 0;
  if (*v13 == *v19 && *(v13 + 4) == *(v19 + 4))
  {
    return applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(*(v13 + 8), (v19 + 8)) == kCFCompareEqualTo;
  }

  return result;
}

void sub_1DE253708(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, const void *a15)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a9);
  mcp_applesauce::CF::Dictionary_Builder::~Dictionary_Builder(&a15);
  __clang_call_terminate(a1);
}

double AMCP::Implementation::In_Place_Storage<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>::destruct(uint64_t a1)
{
  v2 = *(a1 + 8);
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

void *std::__tuple_leaf<2ul,applesauce::CF::StringRef,false>::__tuple_leaf[abi:ne200100](void *a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *a1 = cf;
  return a1;
}

void *AMCP::Thing::convert_to<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 32))
  {
    goto LABEL_12;
  }

  v4 = AMCP::Implementation::get_type_marker<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>();
  v5 = *(a2 + 32);
  v18 = 0;
  if (v5)
  {
    v5(3, a2, 0, &v18);
    v5 = v18;
  }

  if (v5 == v4)
  {
    *&v16[0] = v4;
    v6 = (*(a2 + 32))(4, a2, 0, v16);
    if (v6)
    {
      *a1 = *v6;
      *(a1 + 4) = *(v6 + 4);
      return std::__tuple_leaf<2ul,applesauce::CF::StringRef,false>::__tuple_leaf[abi:ne200100]((a1 + 8), *(v6 + 8));
    }

LABEL_12:
    exception = __cxa_allocate_exception(8uLL);
    v10 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v10, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v15 = AMCP::Implementation::get_type_marker<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>();
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  (*(a2 + 32))(6, a2, v16, &v15);
  if (!v17)
  {
    v11 = __cxa_allocate_exception(8uLL);
    v12 = std::bad_cast::bad_cast(v11);
    __cxa_throw(v12, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v15 = v4;
  v8 = v17(4, v16, 0, &v15);
  if (!v8)
  {
    v13 = __cxa_allocate_exception(8uLL);
    v14 = std::bad_cast::bad_cast(v13);
    __cxa_throw(v14, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  *a1 = *v8;
  *(a1 + 4) = *(v8 + 4);
  result = std::__tuple_leaf<2ul,applesauce::CF::StringRef,false>::__tuple_leaf[abi:ne200100]<applesauce::CF::StringRef&,0>((a1 + 8), *(v8 + 8));
  if (v17)
  {
    return v17(0, v16, 0, 0);
  }

  return result;
}

void sub_1DE253A28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

uint64_t std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>::~tuple(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::StringRef>(__CFDictionary *a1, const void *a2, const void *a3)
{
  if (a1)
  {
    CFDictionarySetValue(a1, a2, a3);
  }
}

void *std::__tuple_leaf<2ul,applesauce::CF::StringRef,false>::__tuple_leaf[abi:ne200100]<applesauce::CF::StringRef&,0>(void *a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *a1 = cf;
  return a1;
}

uint64_t AMCP::Implementation::In_Place_Storage<applesauce::CF::ArrayRef>::construct<applesauce::CF::ArrayRef&>(uint64_t a1, CFTypeRef *a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v3 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  *a1 = v3;
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<applesauce::CF::ArrayRef>::dispatch;
  return a1;
}

BOOL AMCP::Implementation::In_Place_Storage<applesauce::CF::ArrayRef>::dispatch(_BOOL8 result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (result <= 2)
  {
    if (result)
    {
      if (result)
      {
        AMCP::Implementation::In_Place_Storage<applesauce::CF::ArrayRef>::construct<applesauce::CF::ArrayRef const&>(a3, a2);
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
      *(a3 + 32) = AMCP::Implementation::In_Place_Storage<applesauce::CF::ArrayRef>::dispatch;
    }

    AMCP::Implementation::In_Place_Storage<applesauce::CF::ArrayRef>::destruct(a2);
    return 0;
  }

  if (result > 4)
  {
    if (result != 5)
    {
      if (result != 6)
      {
        return result;
      }

      AMCP::Implementation::create_thing_from<applesauce::CF::ArrayRef>(cf1, a2, a4);
      AMCP::swap(cf1, a3, v7);
      if (v20)
      {
        v20(0, cf1, 0, 0);
      }

      return 0;
    }

    v9 = AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>();
    v10 = *(a2 + 32);
    cf1[0] = 0;
    if (v10)
    {
      v10(3, a2, 0, cf1);
      v10 = cf1[0];
    }

    if (v10 == v9)
    {
      v11 = *(a3 + 32);
      cf2 = 0;
      if (v11)
      {
        v11(3, a3, 0, &cf2);
        v11 = cf2;
      }

      if (v11 == v9)
      {
        if (*(a2 + 32))
        {
          cf1[0] = AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>();
          v12 = (*(a2 + 32))(4, a2, 0, cf1);
        }

        else
        {
          v12 = 0;
        }

        cf1[0] = AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>();
        v16 = (*(a3 + 32))(4, a3, 0, cf1);
        v17 = *v12;
        v18 = *v16;
        if (*v12 && v18)
        {
          return CFEqual(v17, v18) != 0;
        }

        return !(v17 | v18);
      }
    }

    AMCP::Thing::convert_to<applesauce::CF::ArrayRef>(cf1, a2);
    AMCP::Thing::convert_to<applesauce::CF::ArrayRef>(&cf2, a3);
    v13 = cf1[0];
    v14 = cf2;
    v15 = (cf1[0] | cf2) == 0;
    if (cf1[0] && cf2)
    {
      v15 = CFEqual(cf1[0], cf2) != 0;
    }

    else if (!cf2)
    {
      goto LABEL_31;
    }

    CFRelease(v14);
LABEL_31:
    if (v13)
    {
      CFRelease(v13);
    }

    return v15;
  }

  if (result == 3)
  {
    v8 = AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>();
    result = 0;
    *a4 = v8;
  }

  else if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>())
  {
    return a2;
  }

  else
  {
    return 0;
  }

  return result;
}

void sub_1DE253DC4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  applesauce::CF::ArrayRef::~ArrayRef(&a9);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE253D88);
}

double AMCP::Implementation::In_Place_Storage<applesauce::CF::ArrayRef>::destruct(uint64_t a1)
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

uint64_t AMCP::Implementation::In_Place_Storage<applesauce::CF::ArrayRef>::construct<applesauce::CF::ArrayRef const&>(uint64_t a1, CFTypeRef *a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v3 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  *a1 = v3;
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<applesauce::CF::ArrayRef>::dispatch;
  return a1;
}

CFTypeRef *AMCP::Thing::convert_to<applesauce::CF::ArrayRef>(void *a1, uint64_t a2)
{
  if (!*(a2 + 32))
  {
    goto LABEL_16;
  }

  v4 = AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>();
  v5 = *(a2 + 32);
  v18 = 0;
  if (v5)
  {
    v5(3, a2, 0, &v18);
    v5 = v18;
  }

  if (v5 == v4)
  {
    *&v16[0] = v4;
    result = (*(a2 + 32))(4, a2, 0, v16);
    if (result)
    {
      v7 = *result;
      if (*result)
      {
        result = CFRetain(*result);
      }

      *a1 = v7;
      return result;
    }

LABEL_16:
    exception = __cxa_allocate_exception(8uLL);
    v10 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v10, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v15 = AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>();
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  (*(a2 + 32))(6, a2, v16, &v15);
  if (!v17)
  {
    v11 = __cxa_allocate_exception(8uLL);
    v12 = std::bad_cast::bad_cast(v11);
    __cxa_throw(v12, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v15 = v4;
  result = v17(4, v16, 0, &v15);
  if (!result)
  {
    v13 = __cxa_allocate_exception(8uLL);
    v14 = std::bad_cast::bad_cast(v13);
    __cxa_throw(v14, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v8 = *result;
  if (*result)
  {
    result = CFRetain(*result);
  }

  *a1 = v8;
  if (v17)
  {
    return v17(0, v16, 0, 0);
  }

  return result;
}

void sub_1DE25402C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

void AMCP::Implementation::create_thing_from<applesauce::CF::ArrayRef>(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a3 != AMCP::Implementation::get_type_marker<mcp_applesauce::CF::PropertyListRef>() && *a3 != AMCP::Implementation::get_type_marker<applesauce::CF::StringRef>() && *a3 != AMCP::Implementation::get_type_marker<applesauce::CF::DataRef>() && *a3 != AMCP::Implementation::get_type_marker<applesauce::CF::NumberRef>() && *a3 != AMCP::Implementation::get_type_marker<applesauce::CF::BooleanRef>() && *a3 != AMCP::Implementation::get_type_marker<applesauce::CF::DateRef>() && *a3 != AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>() && *a3 != AMCP::Implementation::get_type_marker<applesauce::CF::DictionaryRef>() || *a3 != AMCP::Implementation::get_type_marker<mcp_applesauce::CF::PropertyListRef>())
  {
    goto LABEL_27;
  }

  if (*(a2 + 32))
  {
    v36.__first_ = AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>();
    v5 = (*(a2 + 32))(4, a2, 0, &v36);
  }

  else
  {
    v5 = 0;
  }

  if (*a3 != AMCP::Implementation::get_type_marker<mcp_applesauce::CF::PropertyListRef>())
  {
    if ((*a3 == AMCP::Implementation::get_type_marker<applesauce::CF::StringRef>() || *a3 == AMCP::Implementation::get_type_marker<applesauce::CF::DataRef>() || *a3 == AMCP::Implementation::get_type_marker<applesauce::CF::NumberRef>() || *a3 == AMCP::Implementation::get_type_marker<applesauce::CF::BooleanRef>() || *a3 == AMCP::Implementation::get_type_marker<applesauce::CF::DateRef>() || *a3 == AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>() || *a3 == AMCP::Implementation::get_type_marker<applesauce::CF::DictionaryRef>()) && !v5)
    {
LABEL_81:
      __assert_rtn("create_cf_plist_from", "Thing.h", 2434, "in_value_ptr != nullptr");
    }

LABEL_27:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    goto LABEL_28;
  }

  if (!v5)
  {
    goto LABEL_81;
  }

  mcp_applesauce::CF::PropertyListRef::from_get(&v36, *v5);
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  AMCP::Implementation::In_Place_Storage<mcp_applesauce::CF::PropertyListRef>::construct<mcp_applesauce::CF::PropertyListRef&>(a1, &v36);
  if (v36.__first_)
  {
    CFRelease(v36.__first_);
  }

  if (*(a1 + 32))
  {
    return;
  }

LABEL_28:
  if (!AMCP::is_one_of<std::vector<BOOL>,std::vector<char>,std::vector<signed char>,std::vector<unsigned char>,std::vector<short>,std::vector<unsigned short>,std::vector<int>,std::vector<unsigned int>,std::vector<long>,std::vector<unsigned long>,std::vector<long long>,std::vector<unsigned long long>,std::vector<float>,std::vector<double>,std::vector<long double>,applesauce::CF::ArrayRef>(a3))
  {
    goto LABEL_93;
  }

  if (*(a2 + 32))
  {
    v36.__first_ = AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>();
    v7 = (*(a2 + 32))(4, a2, 0, &v36);
  }

  else
  {
    v7 = 0;
  }

  if (*a3 == AMCP::Implementation::get_type_marker<std::vector<BOOL>>())
  {
    if (v7)
    {
      if (*v7)
      {
        Count = CFArrayGetCount(*v7);
        v34 = 0;
        v35 = 0uLL;
        std::vector<BOOL>::reserve(&v34, Count);
        if (Count)
        {
          for (i = 0; i != Count; ++i)
          {
            if (!*v7)
            {
              exception = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(exception, "Could not construct");
              __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }

            applesauce::CF::details::at_as<applesauce::CF::NumberRef>(&v36, *v7, i);
            if (LOBYTE(v36.__begin_) == 1)
            {
              first = v36.__first_;
              if (!v36.__first_)
              {
                v27 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v27, "Could not construct");
                __cxa_throw(v27, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
              }

              LOBYTE(__p[0]) = applesauce::CF::convert_to<BOOL,0>(v36.__first_);
              std::vector<BOOL>::push_back(&v34, __p);
              CFRelease(first);
            }
          }
        }

        memset(&v36, 0, sizeof(v36));
        std::vector<BOOL>::vector(&v36, &v34);
        v36.__end_cap_.__value_ = AMCP::Implementation::In_Place_Storage<std::vector<BOOL>>::dispatch;
        if (v34)
        {
          operator delete(v34);
        }

        goto LABEL_94;
      }

LABEL_157:
      v30 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v30, "Could not construct");
      __cxa_throw(v30, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

LABEL_84:
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  if (*a3 != AMCP::Implementation::get_type_marker<std::vector<char>>())
  {
    if (*a3 == AMCP::Implementation::get_type_marker<std::vector<signed char>>())
    {
      if (!v7)
      {
        goto LABEL_84;
      }

      if (!*v7)
      {
        goto LABEL_157;
      }

      v12 = CFArrayGetCount(*v7);
      v31 = a1;
      if (v12)
      {
        if ((v12 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      memset(&v36, 0, sizeof(v36));
      std::vector<signed char>::__init_with_size[abi:ne200100]<signed char *,signed char *>(&v36, 0, 0, 0);
      v14 = AMCP::Implementation::In_Place_Storage<std::vector<signed char>>::dispatch;
      goto LABEL_69;
    }

    if (*a3 == AMCP::Implementation::get_type_marker<std::vector<unsigned char>>())
    {
      if (!v7)
      {
        goto LABEL_84;
      }

      if (!*v7)
      {
        goto LABEL_157;
      }

      v13 = CFArrayGetCount(*v7);
      v31 = a1;
      if (v13)
      {
        if ((v13 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      memset(&v36, 0, sizeof(v36));
      std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v36, 0, 0, 0);
      v14 = AMCP::Implementation::In_Place_Storage<std::vector<unsigned char>>::dispatch;
LABEL_69:
      v36.__end_cap_.__value_ = v14;
      a1 = v31;
      goto LABEL_94;
    }

    if (*a3 == AMCP::Implementation::get_type_marker<std::vector<short>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<applesauce::CF::ArrayRef,std::vector<short>>(&v36, v7);
      goto LABEL_94;
    }

    if (*a3 == AMCP::Implementation::get_type_marker<std::vector<unsigned short>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<applesauce::CF::ArrayRef,std::vector<unsigned short>>(&v36, v7);
      goto LABEL_94;
    }

    if (*a3 == AMCP::Implementation::get_type_marker<std::vector<int>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<applesauce::CF::ArrayRef,std::vector<int>>(&v36, v7);
      goto LABEL_94;
    }

    if (*a3 == AMCP::Implementation::get_type_marker<std::vector<unsigned int>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<applesauce::CF::ArrayRef,std::vector<unsigned int>>(&v36, v7);
      goto LABEL_94;
    }

    if (*a3 == AMCP::Implementation::get_type_marker<std::vector<long>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<applesauce::CF::ArrayRef,std::vector<long>>(&v36, v7);
      goto LABEL_94;
    }

    if (*a3 == AMCP::Implementation::get_type_marker<std::vector<unsigned long>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<applesauce::CF::ArrayRef,std::vector<unsigned long>>(&v36, v7);
      goto LABEL_94;
    }

    if (*a3 == AMCP::Implementation::get_type_marker<std::vector<long long>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<applesauce::CF::ArrayRef,std::vector<long long>>(&v36, v7);
      goto LABEL_94;
    }

    if (*a3 == AMCP::Implementation::get_type_marker<std::vector<unsigned long long>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<applesauce::CF::ArrayRef,std::vector<unsigned long long>>(&v36, v7);
      goto LABEL_94;
    }

    if (*a3 == AMCP::Implementation::get_type_marker<std::vector<float>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<applesauce::CF::ArrayRef,std::vector<float>>(&v36, v7);
      goto LABEL_94;
    }

    if (*a3 == AMCP::Implementation::get_type_marker<std::vector<double>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<applesauce::CF::ArrayRef,std::vector<double>>(&v36, v7);
      goto LABEL_94;
    }

    if (*a3 == AMCP::Implementation::get_type_marker<std::vector<long double>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<applesauce::CF::ArrayRef,std::vector<long double>>(&v36, v7);
      goto LABEL_94;
    }

    if (*a3 == AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<applesauce::CF::ArrayRef,applesauce::CF::ArrayRef>(&v36, v7);
      goto LABEL_94;
    }

LABEL_93:
    memset(&v36, 0, sizeof(v36));
    goto LABEL_94;
  }

  if (!v7)
  {
    goto LABEL_84;
  }

  if (!*v7)
  {
    goto LABEL_157;
  }

  v11 = CFArrayGetCount(*v7);
  if (v11)
  {
    if ((v11 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  memset(&v36, 0, sizeof(v36));
  std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>(&v36, 0, 0, 0);
  v36.__end_cap_.__value_ = AMCP::Implementation::In_Place_Storage<std::vector<char>>::dispatch;
LABEL_94:
  AMCP::swap(&v36, a1, v6);
  if (v36.__end_cap_.__value_)
  {
    (v36.__end_cap_.__value_)(0, &v36, 0, 0);
  }

  if (*(a1 + 32))
  {
    return;
  }

  if (*a3 != AMCP::Implementation::get_type_marker<std::vector<std::string>>() && *a3 != AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>())
  {
    goto LABEL_111;
  }

  if (*(a2 + 32))
  {
    v36.__first_ = AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>();
    v16 = (*(a2 + 32))(4, a2, 0, &v36);
  }

  else
  {
    v16 = 0;
  }

  if (*a3 != AMCP::Implementation::get_type_marker<std::vector<std::string>>())
  {
    if (*a3 == AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>())
    {
      if (v16)
      {
        memset(&v36, 0, sizeof(v36));
        AMCP::Implementation::In_Place_Storage<applesauce::CF::ArrayRef>::construct<applesauce::CF::ArrayRef const&>(&v36, v16);
        goto LABEL_113;
      }

LABEL_144:
      __assert_rtn("create_vector_of_strings_from", "Thing.h", 1300, "in_value_ptr != nullptr");
    }

LABEL_111:
    memset(&v36, 0, sizeof(v36));
    goto LABEL_113;
  }

  if (!v16)
  {
    goto LABEL_144;
  }

  if (!*v16)
  {
    v28 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v28, "Could not construct");
    __cxa_throw(v28, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v17 = CFArrayGetCount(*v16);
  v34 = 0;
  v35 = 0uLL;
  if (v17)
  {
    if (v17 <= 0xAAAAAAAAAAAAAAALL)
    {
      v36.__end_cap_.__value_ = &v34;
      std::allocator<std::string>::allocate_at_least[abi:ne200100](v17);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  memset(&v36, 0, sizeof(v36));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v36, 0, 0, 0);
  v36.__end_cap_.__value_ = AMCP::Implementation::In_Place_Storage<std::vector<std::string>>::dispatch;
  __p[0] = &v34;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
LABEL_113:
  AMCP::swap(&v36, a1, v15);
  if (v36.__end_cap_.__value_)
  {
    (v36.__end_cap_.__value_)(0, &v36, 0, 0);
  }

  if (!*(a1 + 32))
  {
    if (*a3 != AMCP::Implementation::get_type_marker<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>() && *a3 != AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>())
    {
      goto LABEL_130;
    }

    if (*(a2 + 32))
    {
      v36.__first_ = AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>();
      v19 = (*(a2 + 32))(4, a2, 0, &v36);
    }

    else
    {
      v19 = 0;
    }

    if (*a3 == AMCP::Implementation::get_type_marker<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>())
    {
      if (v19)
      {
        if (!*v19)
        {
          v29 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v29, "Could not construct");
          __cxa_throw(v29, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        v20 = CFArrayGetCount(*v19);
        v34 = 0;
        v35 = 0uLL;
        if (v20)
        {
          if (!(v20 >> 60))
          {
            v36.__end_cap_.__value_ = &v34;
            std::allocator<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>::allocate_at_least[abi:ne200100](v20);
          }

          std::vector<void *>::__throw_length_error[abi:ne200100]();
        }

        memset(&v36, 0, sizeof(v36));
        std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>::__init_with_size[abi:ne200100]<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>*,std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>*>(&v36, 0, 0, 0);
        v36.__end_cap_.__value_ = AMCP::Implementation::In_Place_Storage<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>::dispatch;
        __p[0] = &v34;
        std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>::__destroy_vector::operator()[abi:ne200100](__p);
        goto LABEL_132;
      }

LABEL_145:
      __assert_rtn("create_vector_of_selector_items_from", "Thing.h", 1426, "in_value_ptr != nullptr");
    }

    if (*a3 == AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>())
    {
      if (!v19)
      {
        goto LABEL_145;
      }

      memset(&v36, 0, sizeof(v36));
      AMCP::Implementation::In_Place_Storage<applesauce::CF::ArrayRef>::construct<applesauce::CF::ArrayRef const&>(&v36, v19);
    }

    else
    {
LABEL_130:
      memset(&v36, 0, sizeof(v36));
    }

LABEL_132:
    AMCP::swap(&v36, a1, v18);
    if (v36.__end_cap_.__value_)
    {
      (v36.__end_cap_.__value_)(0, &v36, 0, 0);
    }

    if (!*(a1 + 32))
    {
      AMCP::Implementation::create_vector_of_asbds_from<applesauce::CF::ArrayRef>(&v36, a2, a3);
      AMCP::swap(&v36, a1, v21);
      if (v36.__end_cap_.__value_)
      {
        (v36.__end_cap_.__value_)(0, &v36, 0, 0);
      }

      if (!*(a1 + 32))
      {
        AMCP::Implementation::create_vector_of_asrds_from<applesauce::CF::ArrayRef>(&v36, a2, a3);
        AMCP::swap(&v36, a1, v22);
        if (v36.__end_cap_.__value_)
        {
          (v36.__end_cap_.__value_)(0, &v36, 0, 0);
        }

        if (!*(a1 + 32))
        {
          AMCP::Implementation::create_vector_of_available_formats_from<applesauce::CF::ArrayRef>(&v36, a2, a3);
          AMCP::swap(&v36, a1, v23);
          AMCP::Thing::~Thing(&v36);
          if (!*(a1 + 32))
          {
            AMCP::Implementation::create_value_range_list_from<applesauce::CF::ArrayRef>(v24, a2, a3);
            AMCP::swap(&v36, a1, v25);
            AMCP::Thing::~Thing(&v36);
          }
        }
      }
    }
  }
}

void AMCP::Implementation::create_vector_of_asbds_from<applesauce::CF::ArrayRef>(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a3 != AMCP::Implementation::get_type_marker<std::vector<AudioStreamBasicDescription>>() && *a3 != AMCP::Implementation::get_type_marker<std::vector<CA::StreamDescription>>() && *a3 != AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>())
  {
    goto LABEL_22;
  }

  if (*(a2 + 32))
  {
    v10 = AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>();
    v9 = (*(a2 + 32))(4, a2, 0, &v10);
  }

  else
  {
    v9 = 0;
  }

  if (*a3 == AMCP::Implementation::get_type_marker<std::vector<AudioStreamBasicDescription>>())
  {
    if (v9)
    {
      if (*v9)
      {
        Count = CFArrayGetCount(*v9);
        if (Count)
        {
          if (Count <= 0x666666666666666)
          {
            std::allocator<AudioStreamBasicDescription>::allocate_at_least[abi:ne200100](Count);
          }

          std::vector<void *>::__throw_length_error[abi:ne200100]();
        }

        *(a1 + 32) = 0;
        *a1 = 0u;
        *(a1 + 16) = 0u;
        std::vector<AudioStreamBasicDescription>::__init_with_size[abi:ne200100]<AudioStreamBasicDescription*,AudioStreamBasicDescription*>(a1, 0, 0, 0);
        *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<AudioStreamBasicDescription>>::dispatch;
        return;
      }

LABEL_28:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

LABEL_25:
    __assert_rtn("create_vector_of_asbds_from", "Thing.h", 1807, "in_value_ptr != nullptr");
  }

  if (*a3 != AMCP::Implementation::get_type_marker<std::vector<CA::StreamDescription>>())
  {
    if (*a3 == AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>())
    {
      if (v9)
      {
        *(a1 + 32) = 0;
        *a1 = 0u;
        *(a1 + 16) = 0u;
        AMCP::Implementation::In_Place_Storage<applesauce::CF::ArrayRef>::construct<applesauce::CF::ArrayRef const&>(a1, v9);
        return;
      }

      goto LABEL_25;
    }

LABEL_22:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return;
  }

  if (!v9)
  {
    goto LABEL_25;
  }

  if (!*v9)
  {
    goto LABEL_28;
  }

  v6 = CFArrayGetCount(*v9);
  if (v6)
  {
    if (v6 <= 0x666666666666666)
    {
      std::allocator<AudioStreamBasicDescription>::allocate_at_least[abi:ne200100](v6);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<CA::StreamDescription>::__init_with_size[abi:ne200100]<CA::StreamDescription*,CA::StreamDescription*>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<CA::StreamDescription>>::dispatch;
}

void AMCP::Implementation::create_vector_of_asrds_from<applesauce::CF::ArrayRef>(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a3 != AMCP::Implementation::get_type_marker<std::vector<AudioStreamRangedDescription>>() && *a3 != AMCP::Implementation::get_type_marker<std::vector<CA::RangedStreamDescription>>() && *a3 != AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>())
  {
    goto LABEL_22;
  }

  if (*(a2 + 32))
  {
    v10 = AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>();
    v9 = (*(a2 + 32))(4, a2, 0, &v10);
  }

  else
  {
    v9 = 0;
  }

  if (*a3 == AMCP::Implementation::get_type_marker<std::vector<AudioStreamRangedDescription>>())
  {
    if (v9)
    {
      if (*v9)
      {
        Count = CFArrayGetCount(*v9);
        if (Count)
        {
          if (Count <= 0x492492492492492)
          {
            std::allocator<AudioStreamRangedDescription>::allocate_at_least[abi:ne200100](Count);
          }

          std::vector<void *>::__throw_length_error[abi:ne200100]();
        }

        *(a1 + 32) = 0;
        *a1 = 0u;
        *(a1 + 16) = 0u;
        std::vector<AudioStreamRangedDescription>::__init_with_size[abi:ne200100]<AudioStreamRangedDescription*,AudioStreamRangedDescription*>(a1, 0, 0, 0);
        *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<AudioStreamRangedDescription>>::dispatch;
        return;
      }

LABEL_28:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

LABEL_25:
    __assert_rtn("create_vector_of_asrds_from", "Thing.h", 2005, "in_value_ptr != nullptr");
  }

  if (*a3 != AMCP::Implementation::get_type_marker<std::vector<CA::RangedStreamDescription>>())
  {
    if (*a3 == AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>())
    {
      if (v9)
      {
        *(a1 + 32) = 0;
        *a1 = 0u;
        *(a1 + 16) = 0u;
        AMCP::Implementation::In_Place_Storage<applesauce::CF::ArrayRef>::construct<applesauce::CF::ArrayRef const&>(a1, v9);
        return;
      }

      goto LABEL_25;
    }

LABEL_22:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return;
  }

  if (!v9)
  {
    goto LABEL_25;
  }

  if (!*v9)
  {
    goto LABEL_28;
  }

  v6 = CFArrayGetCount(*v9);
  if (v6)
  {
    if (v6 <= 0x492492492492492)
    {
      std::allocator<AudioStreamRangedDescription>::allocate_at_least[abi:ne200100](v6);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<CA::RangedStreamDescription>::__init_with_size[abi:ne200100]<CA::RangedStreamDescription*,CA::RangedStreamDescription*>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<CA::RangedStreamDescription>>::dispatch;
}

double AMCP::Implementation::create_vector_of_available_formats_from<applesauce::CF::ArrayRef>(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a3 != AMCP::Implementation::get_type_marker<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>() && *a3 != AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>())
  {
    goto LABEL_11;
  }

  if (*(a2 + 32))
  {
    v8 = AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>();
    v6 = (*(a2 + 32))(4, a2, 0, &v8);
  }

  else
  {
    v6 = 0;
  }

  if (*a3 == AMCP::Implementation::get_type_marker<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>())
  {
    AMCP::Implementation::create_vector_of_available_formats_from<applesauce::CF::ArrayRef,std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(a1, v6);
    return result;
  }

  if (*a3 == AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>())
  {
    if (!v6)
    {
      __assert_rtn("create_vector_of_available_formats_from", "Thing.h", 2208, "in_value_ptr != nullptr");
    }

    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    AMCP::Implementation::In_Place_Storage<applesauce::CF::ArrayRef>::construct<applesauce::CF::ArrayRef const&>(a1, v6);
  }

  else
  {
LABEL_11:
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

void AMCP::Implementation::create_value_range_list_from<applesauce::CF::ArrayRef>(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a3 != AMCP::Implementation::get_type_marker<CA::ValueRangeList>() && *a3 != AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>())
  {
    goto LABEL_37;
  }

  if (*(a2 + 32))
  {
    v30 = AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>();
    v6 = (*(a2 + 32))(4, a2, 0, &v30);
  }

  else
  {
    v6 = 0;
  }

  if (*a3 != AMCP::Implementation::get_type_marker<CA::ValueRangeList>())
  {
    if (*a3 == AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>())
    {
      if (v6)
      {
        *(a1 + 32) = 0;
        *a1 = 0u;
        *(a1 + 16) = 0u;
        AMCP::Implementation::In_Place_Storage<applesauce::CF::ArrayRef>::construct<applesauce::CF::ArrayRef const&>(a1, v6);
        return;
      }

LABEL_44:
      __assert_rtn("create_value_range_list_from", "Thing.h", 2316, "in_value_ptr != nullptr");
    }

LABEL_37:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return;
  }

  if (!v6)
  {
    goto LABEL_44;
  }

  v30 = 0;
  v31 = 0;
  v32 = 0;
  v7 = *v6;
  if (*v6)
  {
    Count = CFArrayGetCount(*v6);
    v9 = Count;
    v10 = *v6;
    if (v10)
    {
      v11 = CFArrayGetCount(v10);
      if (v9)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v11 = 0;
      if (Count)
      {
LABEL_11:
        v12 = 0;
        do
        {
          if (v7 == v10 && v11 == v12)
          {
            break;
          }

          applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(&v29, v7, v12);
          if (!v29)
          {
            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Could not construct");
            __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          v28 = CFStringCreateWithBytes(0, "minimum", 7, 0x8000100u, 0);
          if (!v28)
          {
            v22 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v22, "Could not construct");
            __cxa_throw(v22, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          valuePtr = 0;
          cf = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
          if (!cf)
          {
            v19 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v19, "Could not construct");
            __cxa_throw(v19, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          applesauce::CF::at_or<applesauce::CF::NumberRef,applesauce::CF::StringRef>(v26, v29, v28, &cf);
          v13 = v26[0];
          if (!v26[0])
          {
            v23 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v23, "Could not construct");
            __cxa_throw(v23, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          v14 = applesauce::CF::convert_to<double,0>(v26[0]);
          CFRelease(v13);
          if (cf)
          {
            CFRelease(cf);
          }

          if (v28)
          {
            CFRelease(v28);
          }

          if (!v29)
          {
            v20 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v20, "Could not construct");
            __cxa_throw(v20, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          v28 = CFStringCreateWithBytes(0, "maximum", 7, 0x8000100u, 0);
          if (!v28)
          {
            v24 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v24, "Could not construct");
            __cxa_throw(v24, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          valuePtr = 0;
          cf = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
          if (!cf)
          {
            v21 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v21, "Could not construct");
            __cxa_throw(v21, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          applesauce::CF::at_or<applesauce::CF::NumberRef,applesauce::CF::StringRef>(v26, v29, v28, &cf);
          v15 = v26[0];
          if (!v26[0])
          {
            v25 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v25, "Could not construct");
            __cxa_throw(v25, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          v16 = applesauce::CF::convert_to<double,0>(v26[0]);
          CFRelease(v15);
          if (cf)
          {
            CFRelease(cf);
          }

          if (v28)
          {
            CFRelease(v28);
          }

          v26[0] = *&v14;
          v26[1] = *&v16;
          CA::ValueRangeList::AddRange(&v30, v26);
          if (v29)
          {
            CFRelease(v29);
          }

          ++v12;
        }

        while (v9 != v12);
        v7 = v30;
        v17 = v31;
        goto LABEL_41;
      }
    }

    v17 = 0;
    v7 = 0;
  }

  else
  {
    v17 = 0;
  }

LABEL_41:
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<CA::ValueRange>::__init_with_size[abi:ne200100]<CA::ValueRange*,CA::ValueRange*>(a1, v7, v17, (v17 - v7) >> 4);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<CA::ValueRangeList>::dispatch;
  if (v7)
  {
    operator delete(v7);
  }
}

void sub_1DE25B064(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16, int a17, __int16 a18, char a19, char a20, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  __clang_call_terminate(a1);
}

uint64_t AMCP::Implementation::get_type_marker<CA::ValueRangeList>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[447];
}

uint64_t AMCP::Implementation::In_Place_Storage<CA::ValueRangeList>::dispatch(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  if (result <= 2)
  {
    if (result)
    {
      if (result == 1)
      {
        *a3 = 0u;
        *(a3 + 16) = 0u;
        std::vector<CA::ValueRange>::__init_with_size[abi:ne200100]<CA::ValueRange*,CA::ValueRange*>(a3, *a2, a2[1], (a2[1] - *a2) >> 4);
        result = 0;
        *(a3 + 32) = AMCP::Implementation::In_Place_Storage<CA::ValueRangeList>::dispatch;
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
      *(a3 + 16) = a2[2];
      *(a3 + 32) = AMCP::Implementation::In_Place_Storage<CA::ValueRangeList>::dispatch;
      a2[4] = 0;
    }

    else
    {
      v10 = *a2;
      if (*a2)
      {
        a2[1] = v10;
        operator delete(v10);
      }

      result = 0;
      a2[4] = 0;
      v7 = 0uLL;
    }

    *a2 = v7;
    *(a2 + 1) = v7;
    return result;
  }

  if (result > 4)
  {
    if (result == 5)
    {
      v12 = AMCP::Implementation::get_type_marker<CA::ValueRangeList>();
      v13 = a2[4];
      v38[0] = 0;
      if (v13)
      {
        v13(3, a2, 0, v38);
        v13 = v38[0];
      }

      if (v13 != v12)
      {
        goto LABEL_31;
      }

      v14 = *(a3 + 32);
      v41[0] = 0;
      if (v14)
      {
        v14(3, a3, 0, v41);
        v14 = v41[0];
      }

      if (v14 == v12)
      {
        if (a2[4])
        {
          v38[0] = AMCP::Implementation::get_type_marker<CA::ValueRangeList>();
          v15 = (a2[4])(4, a2, 0, v38);
        }

        else
        {
          v15 = 0;
        }

        v38[0] = AMCP::Implementation::get_type_marker<CA::ValueRangeList>();
        v30 = (*(a3 + 32))(4, a3, 0, v38);
        v31 = *v15;
        v32 = *(v15 + 8);
        if (v31 != v32)
        {
          for (i = *v30; CA::operator==(*v31, v31[1], *i, i[1]); i += 2)
          {
            v31 += 2;
            if (v31 == v32)
            {
              return 1;
            }
          }

          return 0;
        }
      }

      else
      {
LABEL_31:
        AMCP::Thing::convert_to<CA::ValueRangeList>(v38, a2);
        AMCP::Thing::convert_to<CA::ValueRangeList>(v41, a3);
        v16 = v38[0];
        v17 = v38[1];
        v18 = v41[0];
        if (v38[0] == v38[1])
        {
          v21 = 1;
        }

        else
        {
          v19 = v41[0];
          v20 = v38[0];
          do
          {
            v21 = CA::operator==(*v20, v20[1], *v19, v19[1]);
            if (!v21)
            {
              break;
            }

            v20 += 2;
            v19 += 2;
          }

          while (v20 != v17);
        }

        if (v18)
        {
          operator delete(v18);
        }

        if (v16)
        {
          operator delete(v16);
        }

        if (!v21)
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

    if (*a4 == AMCP::Implementation::get_type_marker<CA::ValueRangeList>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>())
    {
      if (a2[4])
      {
        v38[0] = AMCP::Implementation::get_type_marker<CA::ValueRangeList>();
        v9 = (a2[4])(4, a2, 0, v38);
      }

      else
      {
        v9 = 0;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<CA::ValueRangeList>())
      {
        if (v9)
        {
          v40 = 0;
          *v38 = 0u;
          v39 = 0u;
          std::vector<CA::ValueRange>::__init_with_size[abi:ne200100]<CA::ValueRange*,CA::ValueRange*>(v38, *v9, v9[1], (v9[1] - *v9) >> 4);
          v40 = AMCP::Implementation::In_Place_Storage<CA::ValueRangeList>::dispatch;
          goto LABEL_60;
        }

LABEL_75:
        __assert_rtn("create_value_range_list_from", "Thing.h", 2316, "in_value_ptr != nullptr");
      }

      if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>())
      {
        if (v9)
        {
          Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
          v41[0] = Mutable;
          v23 = *v9;
          v24 = v9[1];
          if (*v9 != v24)
          {
            v25 = MEMORY[0x1E695E9E0];
            v26 = MEMORY[0x1E695E9F0];
            do
            {
              v27 = CFDictionaryCreateMutable(0, 0, v25, v26);
              v44 = v27;
              cf = CFStringCreateWithBytes(0, "minimum", 7, 0x8000100u, 0);
              if (!cf)
              {
                exception = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(exception, "Could not construct");
                __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
              }

              v38[0] = *v23;
              v28 = CFNumberCreate(0, kCFNumberDoubleType, v38);
              v42 = v28;
              if (!v28)
              {
                v35 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v35, "Could not construct");
                __cxa_throw(v35, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
              }

              mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(v27, cf, v28);
              CFRelease(v28);
              if (cf)
              {
                CFRelease(cf);
              }

              cf = CFStringCreateWithBytes(0, "maximum", 7, 0x8000100u, 0);
              if (!cf)
              {
                v36 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v36, "Could not construct");
                __cxa_throw(v36, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
              }

              v38[0] = v23[1];
              v29 = CFNumberCreate(0, kCFNumberDoubleType, v38);
              v42 = v29;
              if (!v29)
              {
                v37 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v37, "Could not construct");
                __cxa_throw(v37, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
              }

              mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(v27, cf, v29);
              CFRelease(v29);
              if (cf)
              {
                CFRelease(cf);
              }

              mcp_applesauce::CF::Dictionary_Builder::get_dictionary(v38, v27);
              mcp_applesauce::CF::Array_Builder::append_value<applesauce::CF::DictionaryRef>(Mutable, v38[0]);
              if (v38[0])
              {
                CFRelease(v38[0]);
              }

              if (v27)
              {
                CFRelease(v27);
              }

              v23 += 2;
            }

            while (v23 != v24);
          }

          mcp_applesauce::CF::Array_Builder::copy_array(v38, Mutable);
          v38[1] = 0;
          v39 = 0uLL;
          v40 = AMCP::Implementation::In_Place_Storage<applesauce::CF::ArrayRef>::dispatch;
          if (Mutable)
          {
            CFRelease(Mutable);
          }

          goto LABEL_60;
        }

        goto LABEL_75;
      }
    }

    v40 = 0;
    *v38 = 0u;
    v39 = 0u;
LABEL_60:
    AMCP::swap(v38, a3, v8);
    if (v40)
    {
      (v40)(0, v38, 0, 0);
    }

    return 0;
  }

  if (result == 3)
  {
    v11 = AMCP::Implementation::get_type_marker<CA::ValueRangeList>();
    result = 0;
    *a4 = v11;
  }

  else if (*a4 == AMCP::Implementation::get_type_marker<CA::ValueRangeList>())
  {
    return a2;
  }

  else
  {
    return 0;
  }

  return result;
}

void sub_1DE25B880(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va3, a7);
  va_start(va2, a7);
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, const void *);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  va_copy(va2, va1);
  v12 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v14 = va_arg(va3, const void *);
  applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(va1);
  applesauce::CF::StringRef::~StringRef(va2);
  mcp_applesauce::CF::Dictionary_Builder::~Dictionary_Builder(va3);
  mcp_applesauce::CF::Array_Builder::~Array_Builder(va);
  __clang_call_terminate(a1);
}

void AMCP::Thing::convert_to<CA::ValueRangeList>(void *a1, uint64_t a2)
{
  if (!*(a2 + 32))
  {
    goto LABEL_12;
  }

  v4 = AMCP::Implementation::get_type_marker<CA::ValueRangeList>();
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
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      std::vector<CA::ValueRange>::__init_with_size[abi:ne200100]<CA::ValueRange*,CA::ValueRange*>(a1, *v6, v6[1], (v6[1] - *v6) >> 4);
      return;
    }

LABEL_12:
    exception = __cxa_allocate_exception(8uLL);
    v9 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v9, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v14 = AMCP::Implementation::get_type_marker<CA::ValueRangeList>();
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

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<CA::ValueRange>::__init_with_size[abi:ne200100]<CA::ValueRange*,CA::ValueRange*>(a1, *v7, v7[1], (v7[1] - *v7) >> 4);
  if (v16)
  {
    v16(0, v15, 0, 0);
  }
}

void sub_1DE25BAE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

uint64_t AMCP::Implementation::get_type_marker<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[445];
}

void AMCP::Implementation::create_vector_of_available_formats_from<applesauce::CF::ArrayRef,std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(uint64_t a1, CFArrayRef *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_available_formats_from", "Thing.h", 2208, "in_value_ptr != nullptr");
  }

  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  Count = CFArrayGetCount(*a2);
  memset(v5, 0, sizeof(v5));
  if (Count)
  {
    if (!(Count >> 58))
    {
      v6[4] = v5;
      std::allocator<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::allocate_at_least[abi:ne200100](Count);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__init_with_size[abi:ne200100]<std::tuple<CA::ValueRangeList,CA::StreamDescription>*,std::tuple<CA::ValueRangeList,CA::StreamDescription>*>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>::dispatch;
  v6[0] = v5;
  std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__destroy_vector::operator()[abi:ne200100](v6);
}

uint64_t std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__init_with_size[abi:ne200100]<std::tuple<CA::ValueRangeList,CA::StreamDescription>*,std::tuple<CA::ValueRangeList,CA::StreamDescription>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 64);
      v4 -= 64;
      v5 = v6;
      if (v6)
      {
        *(v2 - 56) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

uint64_t AMCP::Implementation::In_Place_Storage<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>::dispatch(int a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a1 > 2)
  {
    if (a1 <= 4)
    {
      if (a1 == 3)
      {
        v4 = 0;
        *a4 = AMCP::Implementation::get_type_marker<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>();
      }

      else if (*a4 == AMCP::Implementation::get_type_marker<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>())
      {
        return a2;
      }

      else
      {
        return 0;
      }

      return v4;
    }

    if (a1 == 5)
    {
      v10 = AMCP::Implementation::get_type_marker<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>();
      v11 = *(a2 + 32);
      *&valuePtr = 0;
      if (v11)
      {
        v11(3, a2, 0, &valuePtr);
        v11 = valuePtr;
      }

      if (v11 != v10)
      {
        goto LABEL_28;
      }

      v12 = *(a3 + 32);
      v71[0] = 0;
      if (v12)
      {
        (v12)(3, a3, 0, v71);
        v12 = v71[0];
      }

      if (v12 == v10)
      {
        if (*(a2 + 32))
        {
          *&valuePtr = AMCP::Implementation::get_type_marker<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>();
          v13 = (*(a2 + 32))(4, a2, 0, &valuePtr);
        }

        else
        {
          v13 = 0;
        }

        *&valuePtr = AMCP::Implementation::get_type_marker<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>();
        v39 = (*(a3 + 32))(4, a3, 0, &valuePtr);
        v40 = *v13;
        v41 = v13[1];
        v42 = v41 - *v13;
        v43 = *v39;
        if (v42 != v39[1] - *v39)
        {
          return 0;
        }

        if (v40 != v41)
        {
          v4 = 1;
          while (std::__tuple_equal<2ul>::operator()[abi:ne200100]<std::tuple<CA::ValueRangeList,CA::StreamDescription>,std::tuple<CA::ValueRangeList,CA::StreamDescription>>(v40, v43))
          {
            v40 += 64;
            v43 += 64;
            if (v40 == v41)
            {
              return v4;
            }
          }

          return 0;
        }
      }

      else
      {
LABEL_28:
        AMCP::Thing::convert_to<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(&valuePtr, a2);
        AMCP::Thing::convert_to<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(v71, a3);
        v15 = *(&valuePtr + 1);
        v14 = valuePtr;
        v16 = v71[0];
        if ((*(&valuePtr + 1) - valuePtr) != (v71[1] - v71[0]))
        {
LABEL_32:
          v75 = v71;
          std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__destroy_vector::operator()[abi:ne200100](&v75);
          v71[0] = &valuePtr;
          std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__destroy_vector::operator()[abi:ne200100](v71);
          return 0;
        }

        while (v14 != v15)
        {
          if (!std::__tuple_equal<2ul>::operator()[abi:ne200100]<std::tuple<CA::ValueRangeList,CA::StreamDescription>,std::tuple<CA::ValueRangeList,CA::StreamDescription>>(v14, v16))
          {
            goto LABEL_32;
          }

          v14 += 64;
          v16 += 8;
        }

        v75 = v71;
        std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__destroy_vector::operator()[abi:ne200100](&v75);
        v71[0] = &valuePtr;
        std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__destroy_vector::operator()[abi:ne200100](v71);
      }

      return 1;
    }

    if (a1 != 6)
    {
      return v4;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>())
    {
      if (*(a2 + 32))
      {
        *&valuePtr = AMCP::Implementation::get_type_marker<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>();
        v9 = (*(a2 + 32))(4, a2, 0, &valuePtr);
      }

      else
      {
        v9 = 0;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>())
      {
        if (v9)
        {
          v70 = 0;
          valuePtr = 0u;
          v69 = 0u;
          std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__init_with_size[abi:ne200100]<std::tuple<CA::ValueRangeList,CA::StreamDescription>*,std::tuple<CA::ValueRangeList,CA::StreamDescription>*>(&valuePtr, *v9, v9[1], (v9[1] - *v9) >> 6);
          v70 = AMCP::Implementation::In_Place_Storage<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>::dispatch;
          goto LABEL_106;
        }

LABEL_119:
        __assert_rtn("create_vector_of_available_formats_from", "Thing.h", 2208, "in_value_ptr != nullptr");
      }

      if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>())
      {
        if (v9)
        {
          v71[0] = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
          v17 = *v9;
          v66 = v9[1];
          v67 = v71[0];
          if (*v9 != v66)
          {
            v18 = MEMORY[0x1E695E9E0];
            v19 = MEMORY[0x1E695E9F0];
            do
            {
              Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
              v75 = Mutable;
              v22 = *v17;
              v21 = *(v17 + 8);
              while (v22 != v21)
              {
                v23 = CFDictionaryCreateMutable(0, 0, v18, v19);
                v74 = v23;
                cf = CFStringCreateWithBytes(0, "minimum", 7, 0x8000100u, 0);
                if (!cf)
                {
                  exception = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(exception, "Could not construct");
                  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                *&valuePtr = *v22;
                v24 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
                v72 = v24;
                if (!v24)
                {
                  v46 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v46, "Could not construct");
                  __cxa_throw(v46, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(v23, cf, v24);
                CFRelease(v24);
                if (cf)
                {
                  CFRelease(cf);
                }

                cf = CFStringCreateWithBytes(0, "maximum", 7, 0x8000100u, 0);
                if (!cf)
                {
                  v47 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v47, "Could not construct");
                  __cxa_throw(v47, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                *&valuePtr = v22[1];
                v25 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
                v72 = v25;
                if (!v25)
                {
                  v44 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v44, "Could not construct");
                  __cxa_throw(v44, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(v23, cf, v25);
                CFRelease(v25);
                if (cf)
                {
                  CFRelease(cf);
                }

                mcp_applesauce::CF::Dictionary_Builder::get_dictionary(&valuePtr, v23);
                mcp_applesauce::CF::Array_Builder::append_value<applesauce::CF::DictionaryRef>(Mutable, valuePtr);
                if (valuePtr)
                {
                  CFRelease(valuePtr);
                }

                if (v23)
                {
                  CFRelease(v23);
                }

                v22 += 2;
              }

              v26 = CFDictionaryCreateMutable(0, 0, v18, v19);
              v74 = v26;
              cf = CFStringCreateWithBytes(0, "sample rate", 11, 0x8000100u, 0);
              if (!cf)
              {
                v48 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v48, "Could not construct");
                __cxa_throw(v48, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
              }

              *&valuePtr = *(v17 + 24);
              v27 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
              v72 = v27;
              if (!v27)
              {
                v49 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v49, "Could not construct");
                __cxa_throw(v49, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
              }

              mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(v26, cf, v27);
              CFRelease(v27);
              if (cf)
              {
                CFRelease(cf);
              }

              *&valuePtr = CFStringCreateWithBytes(0, "format id", 9, 0x8000100u, 0);
              if (!valuePtr)
              {
                v50 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v50, "Could not construct");
                __cxa_throw(v50, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
              }

              LODWORD(v72) = *(v17 + 32);
              v28 = CFNumberCreate(0, kCFNumberIntType, &v72);
              cf = v28;
              if (!v28)
              {
                v51 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v51, "Could not construct");
                __cxa_throw(v51, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
              }

              mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(v26, valuePtr, v28);
              CFRelease(v28);
              if (valuePtr)
              {
                CFRelease(valuePtr);
              }

              *&valuePtr = CFStringCreateWithBytes(0, "format flags", 12, 0x8000100u, 0);
              if (!valuePtr)
              {
                v52 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v52, "Could not construct");
                __cxa_throw(v52, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
              }

              LODWORD(v72) = *(v17 + 36);
              v29 = CFNumberCreate(0, kCFNumberIntType, &v72);
              cf = v29;
              if (!v29)
              {
                v53 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v53, "Could not construct");
                __cxa_throw(v53, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
              }

              mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(v26, valuePtr, v29);
              CFRelease(v29);
              if (valuePtr)
              {
                CFRelease(valuePtr);
              }

              *&valuePtr = CFStringCreateWithBytes(0, "bytes per packet", 16, 0x8000100u, 0);
              if (!valuePtr)
              {
                v54 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v54, "Could not construct");
                __cxa_throw(v54, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
              }

              LODWORD(v72) = *(v17 + 40);
              v30 = CFNumberCreate(0, kCFNumberIntType, &v72);
              cf = v30;
              if (!v30)
              {
                v55 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v55, "Could not construct");
                __cxa_throw(v55, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
              }

              mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(v26, valuePtr, v30);
              CFRelease(v30);
              if (valuePtr)
              {
                CFRelease(valuePtr);
              }

              *&valuePtr = CFStringCreateWithBytes(0, "frames per packet", 17, 0x8000100u, 0);
              if (!valuePtr)
              {
                v56 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v56, "Could not construct");
                __cxa_throw(v56, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
              }

              LODWORD(v72) = *(v17 + 44);
              v31 = CFNumberCreate(0, kCFNumberIntType, &v72);
              cf = v31;
              if (!v31)
              {
                v57 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v57, "Could not construct");
                __cxa_throw(v57, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
              }

              mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(v26, valuePtr, v31);
              CFRelease(v31);
              if (valuePtr)
              {
                CFRelease(valuePtr);
              }

              *&valuePtr = CFStringCreateWithBytes(0, "bytes per frame", 15, 0x8000100u, 0);
              if (!valuePtr)
              {
                v58 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v58, "Could not construct");
                __cxa_throw(v58, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
              }

              LODWORD(v72) = *(v17 + 48);
              v32 = CFNumberCreate(0, kCFNumberIntType, &v72);
              cf = v32;
              if (!v32)
              {
                v59 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v59, "Could not construct");
                __cxa_throw(v59, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
              }

              mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(v26, valuePtr, v32);
              CFRelease(v32);
              if (valuePtr)
              {
                CFRelease(valuePtr);
              }

              *&valuePtr = CFStringCreateWithBytes(0, "channels per frame", 18, 0x8000100u, 0);
              if (!valuePtr)
              {
                v60 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v60, "Could not construct");
                __cxa_throw(v60, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
              }

              LODWORD(v72) = *(v17 + 52);
              v33 = CFNumberCreate(0, kCFNumberIntType, &v72);
              cf = v33;
              if (!v33)
              {
                v61 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v61, "Could not construct");
                __cxa_throw(v61, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
              }

              mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(v26, valuePtr, v33);
              CFRelease(v33);
              if (valuePtr)
              {
                CFRelease(valuePtr);
              }

              *&valuePtr = CFStringCreateWithBytes(0, "bits per channel", 16, 0x8000100u, 0);
              if (!valuePtr)
              {
                v62 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v62, "Could not construct");
                __cxa_throw(v62, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
              }

              LODWORD(v72) = *(v17 + 56);
              v34 = CFNumberCreate(0, kCFNumberIntType, &v72);
              cf = v34;
              if (!v34)
              {
                v63 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v63, "Could not construct");
                __cxa_throw(v63, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
              }

              mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(v26, valuePtr, v34);
              CFRelease(v34);
              if (valuePtr)
              {
                CFRelease(valuePtr);
              }

              v35 = CFDictionaryCreateMutable(0, 0, v18, v19);
              *&valuePtr = v35;
              v36 = CFStringCreateWithBytes(0, "sample rate range list", 22, 0x8000100u, 0);
              cf = v36;
              if (!v36)
              {
                v64 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v64, "Could not construct");
                __cxa_throw(v64, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
              }

              mcp_applesauce::CF::Array_Builder::get_array(&v72, Mutable);
              mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::ArrayRef>(v35, v36, v72);
              if (v72)
              {
                CFRelease(v72);
              }

              CFRelease(v36);
              v37 = CFStringCreateWithBytes(0, "format", 6, 0x8000100u, 0);
              cf = v37;
              if (!v37)
              {
                v65 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v65, "Could not construct");
                __cxa_throw(v65, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
              }

              mcp_applesauce::CF::Dictionary_Builder::get_dictionary(&v72, v26);
              mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::DictionaryRef>(v35, v37, v72);
              if (v72)
              {
                CFRelease(v72);
              }

              CFRelease(v37);
              mcp_applesauce::CF::Dictionary_Builder::get_dictionary(&cf, v35);
              mcp_applesauce::CF::Array_Builder::append_value<applesauce::CF::DictionaryRef>(v67, cf);
              if (cf)
              {
                CFRelease(cf);
              }

              if (v35)
              {
                CFRelease(v35);
              }

              if (v26)
              {
                CFRelease(v26);
              }

              if (Mutable)
              {
                CFRelease(Mutable);
              }

              v17 += 64;
            }

            while (v17 != v66);
          }

          mcp_applesauce::CF::Array_Builder::copy_array(&valuePtr, v67);
          *(&valuePtr + 1) = 0;
          v69 = 0uLL;
          v70 = AMCP::Implementation::In_Place_Storage<applesauce::CF::ArrayRef>::dispatch;
          if (v67)
          {
            CFRelease(v67);
          }

          goto LABEL_106;
        }

        goto LABEL_119;
      }
    }

    v70 = 0;
    valuePtr = 0u;
    v69 = 0u;
LABEL_106:
    AMCP::swap(&valuePtr, a3, v8);
    if (v70)
    {
      (v70)(0, &valuePtr, 0, 0);
    }

    return 0;
  }

  switch(a1)
  {
    case 0:
LABEL_11:
      *&valuePtr = a2;
      std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__destroy_vector::operator()[abi:ne200100](&valuePtr);
      v4 = 0;
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return v4;
    case 1:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__init_with_size[abi:ne200100]<std::tuple<CA::ValueRangeList,CA::StreamDescription>*,std::tuple<CA::ValueRangeList,CA::StreamDescription>*>(a3, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 6);
      v4 = 0;
      *(a3 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>::dispatch;
      return v4;
    case 2:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *a3 = *a2;
      *(a3 + 16) = *(a2 + 16);
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a3 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>::dispatch;
      goto LABEL_11;
  }

  return v4;
}

void sub_1DE25E554(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16)
{
  a16 = &a11;
  std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__destroy_vector::operator()[abi:ne200100](&a16);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE25DF30);
}

void sub_1DE25E580(void *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va3, a3);
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, const void *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  va_copy(va2, va1);
  v11 = va_arg(va2, const void *);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  va_copy(va3, va2);
  v16 = va_arg(va3, const void *);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va2);
  mcp_applesauce::CF::Dictionary_Builder::~Dictionary_Builder(va);
  mcp_applesauce::CF::Dictionary_Builder::~Dictionary_Builder(va3);
  mcp_applesauce::CF::Array_Builder::~Array_Builder((v3 - 88));
  mcp_applesauce::CF::Array_Builder::~Array_Builder(va1);
  __clang_call_terminate(a1);
}

uint64_t AMCP::Thing::convert_to<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(void *a1, uint64_t a2)
{
  if (!*(a2 + 32))
  {
    goto LABEL_12;
  }

  v4 = AMCP::Implementation::get_type_marker<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>();
  v5 = *(a2 + 32);
  v18 = 0;
  if (v5)
  {
    v5(3, a2, 0, &v18);
    v5 = v18;
  }

  if (v5 == v4)
  {
    *&v16[0] = v4;
    v6 = (*(a2 + 32))(4, a2, 0, v16);
    if (v6)
    {
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      return std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__init_with_size[abi:ne200100]<std::tuple<CA::ValueRangeList,CA::StreamDescription>*,std::tuple<CA::ValueRangeList,CA::StreamDescription>*>(a1, *v6, v6[1], (v6[1] - *v6) >> 6);
    }

LABEL_12:
    exception = __cxa_allocate_exception(8uLL);
    v10 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v10, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v15 = AMCP::Implementation::get_type_marker<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>();
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  (*(a2 + 32))(6, a2, v16, &v15);
  if (!v17)
  {
    v11 = __cxa_allocate_exception(8uLL);
    v12 = std::bad_cast::bad_cast(v11);
    __cxa_throw(v12, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v15 = v4;
  v8 = v17(4, v16, 0, &v15);
  if (!v8)
  {
    v13 = __cxa_allocate_exception(8uLL);
    v14 = std::bad_cast::bad_cast(v13);
    __cxa_throw(v14, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  result = std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__init_with_size[abi:ne200100]<std::tuple<CA::ValueRangeList,CA::StreamDescription>*,std::tuple<CA::ValueRangeList,CA::StreamDescription>*>(a1, *v8, v8[1], (v8[1] - *v8) >> 6);
  if (v17)
  {
    return v17(0, v16, 0, 0);
  }

  return result;
}

void sub_1DE25E990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

void std::allocator<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 58))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::tuple<CA::ValueRangeList,CA::StreamDescription>>,std::tuple<CA::ValueRangeList,CA::StreamDescription>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  v13 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  if (a2 == a3)
  {
    v12 = 1;
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
      *(a4 + 16) = *(v6 + 16);
      *v6 = 0;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      v7 = *(v6 + 24);
      v8 = *(v6 + 40);
      *(a4 + 56) = *(v6 + 56);
      *(a4 + 40) = v8;
      *(a4 + 24) = v7;
      v6 += 64;
      a4 += 64;
    }

    while (v6 != a3);
    v14 = a4;
    v12 = 1;
    do
    {
      v9 = *v5;
      if (*v5)
      {
        *(v5 + 8) = v9;
        operator delete(v9);
      }

      v5 += 64;
    }

    while (v5 != a3);
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::tuple<CA::ValueRangeList,CA::StreamDescription>>,std::tuple<CA::ValueRangeList,CA::StreamDescription>*>>::~__exception_guard_exceptions[abi:ne200100](v11);
}

uint64_t std::__split_buffer<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v4 = *(v2 - 64);
    *(a1 + 16) = v2 - 64;
    if (v4)
    {
      *(v2 - 56) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 64;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::tuple<CA::ValueRangeList,CA::StreamDescription>>,std::tuple<CA::ValueRangeList,CA::StreamDescription>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 16);
    v3 = **(a1 + 8);
    if (v2 != v3)
    {
      v4 = **(a1 + 16);
      do
      {
        v6 = *(v4 - 64);
        v4 -= 64;
        v5 = v6;
        if (v6)
        {
          *(v2 - 56) = v5;
          operator delete(v5);
        }

        v2 = v4;
      }

      while (v4 != v3);
    }
  }

  return a1;
}

void std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    std::allocator<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::allocate_at_least[abi:ne200100](a2);
  }

  std::vector<void *>::__throw_length_error[abi:ne200100]();
}

uint64_t AMCP::Implementation::get_type_marker<std::vector<AudioStreamRangedDescription>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[441];
}

uint64_t AMCP::Implementation::get_type_marker<std::vector<CA::RangedStreamDescription>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[443];
}

uint64_t std::vector<CA::RangedStreamDescription>::__init_with_size[abi:ne200100]<CA::RangedStreamDescription*,CA::RangedStreamDescription*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<AudioStreamRangedDescription>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DE25ED1C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL AMCP::Implementation::In_Place_Storage<std::vector<CA::RangedStreamDescription>>::dispatch(_BOOL8 result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (result > 2)
  {
    if (result <= 4)
    {
      if (result == 3)
      {
        v11 = AMCP::Implementation::get_type_marker<std::vector<CA::RangedStreamDescription>>();
        result = 0;
        *a4 = v11;
      }

      else if (*a4 == AMCP::Implementation::get_type_marker<std::vector<CA::RangedStreamDescription>>())
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

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<AudioStreamRangedDescription>>() || *a4 == AMCP::Implementation::get_type_marker<std::vector<CA::RangedStreamDescription>>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>())
      {
        if (*(a2 + 32))
        {
          v76[0] = AMCP::Implementation::get_type_marker<std::vector<CA::RangedStreamDescription>>();
          v9 = (*(a2 + 32))(4, a2, 0, v76);
        }

        else
        {
          v9 = 0;
        }

        if (*a4 == AMCP::Implementation::get_type_marker<std::vector<AudioStreamRangedDescription>>())
        {
          if (v9)
          {
            v27 = v9[1];
            v28 = v27 - *v9;
            if (v27 != *v9)
            {
              v29 = 0x6DB6DB6DB6DB6DB7 * (v28 >> 3);
              if (v29 < 0x492492492492493)
              {
                std::allocator<AudioStreamRangedDescription>::allocate_at_least[abi:ne200100](v29);
              }

              std::vector<void *>::__throw_length_error[abi:ne200100]();
            }

            *v76 = 0u;
            v77 = v28;
            v30 = AMCP::Implementation::In_Place_Storage<std::vector<AudioStreamRangedDescription>>::dispatch;
            goto LABEL_129;
          }

          goto LABEL_166;
        }

        if (*a4 == AMCP::Implementation::get_type_marker<std::vector<CA::RangedStreamDescription>>())
        {
          if (v9)
          {
            v78 = 0;
            *v76 = 0u;
            v77 = 0u;
            std::vector<CA::RangedStreamDescription>::__init_with_size[abi:ne200100]<CA::RangedStreamDescription*,CA::RangedStreamDescription*>(v76, *v9, v9[1], 0x6DB6DB6DB6DB6DB7 * ((v9[1] - *v9) >> 3));
            v30 = AMCP::Implementation::In_Place_Storage<std::vector<CA::RangedStreamDescription>>::dispatch;
LABEL_129:
            v78 = v30;
LABEL_130:
            AMCP::swap(v76, a3, v8);
            if (v78)
            {
              (v78)(0, v76, 0, 0);
            }

            return 0;
          }

LABEL_166:
          __assert_rtn("create_vector_of_asrds_from", "Thing.h", 2005, "in_value_ptr != nullptr");
        }

        if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>())
        {
          if (v9)
          {
            Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
            v79[0] = Mutable;
            v32 = *v9;
            v33 = v9[1];
            if (*v9 != v33)
            {
              do
              {
                v34 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
                v82 = v34;
                cf = CFStringCreateWithBytes(0, "sample rate", 11, 0x8000100u, 0);
                if (!cf)
                {
                  exception = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(exception, "Could not construct");
                  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                v76[0] = *v32;
                v35 = CFNumberCreate(0, kCFNumberDoubleType, v76);
                valuePtr = v35;
                if (!v35)
                {
                  v56 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v56, "Could not construct");
                  __cxa_throw(v56, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(v34, cf, v35);
                CFRelease(v35);
                if (cf)
                {
                  CFRelease(cf);
                }

                v76[0] = CFStringCreateWithBytes(0, "format id", 9, 0x8000100u, 0);
                if (!v76[0])
                {
                  v58 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v58, "Could not construct");
                  __cxa_throw(v58, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                LODWORD(valuePtr) = *(v32 + 8);
                v36 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
                cf = v36;
                if (!v36)
                {
                  v59 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v59, "Could not construct");
                  __cxa_throw(v59, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(v34, v76[0], v36);
                CFRelease(v36);
                if (v76[0])
                {
                  CFRelease(v76[0]);
                }

                v76[0] = CFStringCreateWithBytes(0, "format flags", 12, 0x8000100u, 0);
                if (!v76[0])
                {
                  v60 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v60, "Could not construct");
                  __cxa_throw(v60, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                LODWORD(valuePtr) = *(v32 + 12);
                v37 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
                cf = v37;
                if (!v37)
                {
                  v61 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v61, "Could not construct");
                  __cxa_throw(v61, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(v34, v76[0], v37);
                CFRelease(v37);
                if (v76[0])
                {
                  CFRelease(v76[0]);
                }

                v76[0] = CFStringCreateWithBytes(0, "bytes per packet", 16, 0x8000100u, 0);
                if (!v76[0])
                {
                  v62 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v62, "Could not construct");
                  __cxa_throw(v62, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                LODWORD(valuePtr) = *(v32 + 16);
                v38 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
                cf = v38;
                if (!v38)
                {
                  v63 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v63, "Could not construct");
                  __cxa_throw(v63, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(v34, v76[0], v38);
                CFRelease(v38);
                if (v76[0])
                {
                  CFRelease(v76[0]);
                }

                v76[0] = CFStringCreateWithBytes(0, "frames per packet", 17, 0x8000100u, 0);
                if (!v76[0])
                {
                  v64 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v64, "Could not construct");
                  __cxa_throw(v64, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                LODWORD(valuePtr) = *(v32 + 20);
                v39 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
                cf = v39;
                if (!v39)
                {
                  v65 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v65, "Could not construct");
                  __cxa_throw(v65, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(v34, v76[0], v39);
                CFRelease(v39);
                if (v76[0])
                {
                  CFRelease(v76[0]);
                }

                v76[0] = CFStringCreateWithBytes(0, "bytes per frame", 15, 0x8000100u, 0);
                if (!v76[0])
                {
                  v66 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v66, "Could not construct");
                  __cxa_throw(v66, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                LODWORD(valuePtr) = *(v32 + 24);
                v40 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
                cf = v40;
                if (!v40)
                {
                  v67 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v67, "Could not construct");
                  __cxa_throw(v67, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(v34, v76[0], v40);
                CFRelease(v40);
                if (v76[0])
                {
                  CFRelease(v76[0]);
                }

                v76[0] = CFStringCreateWithBytes(0, "channels per frame", 18, 0x8000100u, 0);
                if (!v76[0])
                {
                  v68 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v68, "Could not construct");
                  __cxa_throw(v68, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                LODWORD(valuePtr) = *(v32 + 28);
                v41 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
                cf = v41;
                if (!v41)
                {
                  v69 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v69, "Could not construct");
                  __cxa_throw(v69, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(v34, v76[0], v41);
                CFRelease(v41);
                if (v76[0])
                {
                  CFRelease(v76[0]);
                }

                v76[0] = CFStringCreateWithBytes(0, "bits per channel", 16, 0x8000100u, 0);
                if (!v76[0])
                {
                  v70 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v70, "Could not construct");
                  __cxa_throw(v70, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                LODWORD(valuePtr) = *(v32 + 32);
                v42 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
                cf = v42;
                if (!v42)
                {
                  v71 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v71, "Could not construct");
                  __cxa_throw(v71, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(v34, v76[0], v42);
                CFRelease(v42);
                if (v76[0])
                {
                  CFRelease(v76[0]);
                }

                cf = CFStringCreateWithBytes(0, "minimum", 7, 0x8000100u, 0);
                if (!cf)
                {
                  v72 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v72, "Could not construct");
                  __cxa_throw(v72, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                v76[0] = *(v32 + 40);
                v43 = CFNumberCreate(0, kCFNumberDoubleType, v76);
                valuePtr = v43;
                if (!v43)
                {
                  v73 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v73, "Could not construct");
                  __cxa_throw(v73, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(v34, cf, v43);
                CFRelease(v43);
                if (cf)
                {
                  CFRelease(cf);
                }

                cf = CFStringCreateWithBytes(0, "maximum", 7, 0x8000100u, 0);
                if (!cf)
                {
                  v74 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v74, "Could not construct");
                  __cxa_throw(v74, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                v76[0] = *(v32 + 48);
                v44 = CFNumberCreate(0, kCFNumberDoubleType, v76);
                valuePtr = v44;
                if (!v44)
                {
                  v75 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v75, "Could not construct");
                  __cxa_throw(v75, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(v34, cf, v44);
                CFRelease(v44);
                if (cf)
                {
                  CFRelease(cf);
                }

                mcp_applesauce::CF::Dictionary_Builder::copy_dictionary(v76, v34);
                mcp_applesauce::CF::Array_Builder::append_value<applesauce::CF::DictionaryRef>(Mutable, v76[0]);
                if (v76[0])
                {
                  CFRelease(v76[0]);
                }

                if (v34)
                {
                  CFRelease(v34);
                }

                v32 += 56;
              }

              while (v32 != v33);
            }

            mcp_applesauce::CF::Array_Builder::copy_array(v76, Mutable);
            v76[1] = 0;
            v77 = 0uLL;
            v78 = AMCP::Implementation::In_Place_Storage<applesauce::CF::ArrayRef>::dispatch;
            if (Mutable)
            {
              CFRelease(Mutable);
            }

            goto LABEL_130;
          }

          goto LABEL_166;
        }
      }

      v78 = 0;
      *v76 = 0u;
      v77 = 0u;
      goto LABEL_130;
    }

    v12 = AMCP::Implementation::get_type_marker<std::vector<CA::RangedStreamDescription>>();
    v13 = *(a2 + 32);
    v76[0] = 0;
    if (v13)
    {
      v13(3, a2, 0, v76);
      v13 = v76[0];
    }

    if (v13 == v12)
    {
      v14 = *(a3 + 32);
      v79[0] = 0;
      if (v14)
      {
        v14(3, a3, 0, v79);
        v14 = v79[0];
      }

      if (v14 == v12)
      {
        if (*(a2 + 32))
        {
          v76[0] = AMCP::Implementation::get_type_marker<std::vector<CA::RangedStreamDescription>>();
          v15 = (*(a2 + 32))(4, a2, 0, v76);
        }

        else
        {
          v15 = 0;
        }

        v76[0] = AMCP::Implementation::get_type_marker<std::vector<CA::RangedStreamDescription>>();
        v45 = (*(a3 + 32))(4, a3, 0, v76);
        v47 = *v15;
        v46 = v15[1];
        if (v46 - *v15 != v45[1] - *v45)
        {
          return 0;
        }

        if (v47 != v46)
        {
          for (i = *v45 + 24; ; i += 56)
          {
            v49 = *(v47 + 48);
            v50 = *(i + 16);
            if (v49 < v50)
            {
              break;
            }

            v51 = *(v47 + 40);
            v52 = *(i + 24);
            if (v51 < v50 && v49 <= v52)
            {
              break;
            }

            if (v51 < v50 && v49 > v52)
            {
              break;
            }

            v55 = v51 == v50 && v49 == v52;
            if (!v55 || *v47 != *(i - 24) || *(v47 + 8) != *(i - 16) || *(v47 + 12) != *(i - 12) || *(v47 + 16) != *(i - 8) || *(v47 + 20) != *(i - 4) || *(v47 + 24) != *i || *(v47 + 28) != *(i + 4) || *(v47 + 32) != *(i + 8))
            {
              break;
            }

            v47 += 56;
            if (v47 == v46)
            {
              return 1;
            }
          }

          return 0;
        }

        return 1;
      }
    }

    AMCP::Thing::convert_to<std::vector<CA::RangedStreamDescription>>(v76, a2);
    AMCP::Thing::convert_to<std::vector<CA::RangedStreamDescription>>(v79, a3);
    v16 = v76[0];
    if (v76[1] - v76[0] == v79[1] - v79[0])
    {
      if (v76[0] == v76[1])
      {
        v19 = 1;
        if (v79[0])
        {
LABEL_63:
          operator delete(v79[0]);
        }

LABEL_64:
        if (v16)
        {
          operator delete(v16);
        }

        return v19 != 0;
      }

      v17 = (v79[0] + 24);
      v18 = v76[0];
      v19 = 1;
      while (1)
      {
        v20 = v18[6];
        v21 = v17[2];
        if (v20 < v21)
        {
          break;
        }

        v22 = v18[5];
        v23 = v17[3];
        if (v22 < v21 && v20 <= v23)
        {
          break;
        }

        if (v22 < v21 && v20 > v23)
        {
          break;
        }

        v26 = v22 == v21 && v20 == v23;
        if (!v26 || *v18 != *(v17 - 3) || *(v18 + 2) != *(v17 - 4) || *(v18 + 3) != *(v17 - 3) || *(v18 + 4) != *(v17 - 2) || *(v18 + 5) != *(v17 - 1) || *(v18 + 6) != *v17 || *(v18 + 7) != *(v17 + 1) || *(v18 + 8) != *(v17 + 2))
        {
          break;
        }

        v18 += 7;
        v17 += 7;
        if (v18 == v76[1])
        {
          goto LABEL_62;
        }
      }
    }

    v19 = 0;
LABEL_62:
    if (v79[0])
    {
      goto LABEL_63;
    }

    goto LABEL_64;
  }

  if (!result)
  {
    v10 = *a2;
    if (*a2)
    {
      *(a2 + 8) = v10;
      operator delete(v10);
    }

    result = 0;
    *(a2 + 32) = 0;
    v7 = 0uLL;
    goto LABEL_21;
  }

  if (result)
  {
    *a3 = 0u;
    *(a3 + 16) = 0u;
    std::vector<CA::RangedStreamDescription>::__init_with_size[abi:ne200100]<CA::RangedStreamDescription*,CA::RangedStreamDescription*>(a3, *a2, *(a2 + 8), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 8) - *a2) >> 3));
    result = 0;
    *(a3 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<CA::RangedStreamDescription>>::dispatch;
    return result;
  }

  if (result == 2)
  {
    result = 0;
    v7 = 0uLL;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *a3 = *a2;
    *(a3 + 16) = *(a2 + 16);
    *(a3 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<CA::RangedStreamDescription>>::dispatch;
    *(a2 + 32) = 0;
LABEL_21:
    *a2 = v7;
    *(a2 + 16) = v7;
  }

  return result;
}